; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692190 () Bool)

(assert start!692190)

(declare-fun b!7111196 () Bool)

(assert (=> b!7111196 true))

(declare-fun res!2901975 () Bool)

(declare-fun e!4273594 () Bool)

(assert (=> start!692190 (=> (not res!2901975) (not e!4273594))))

(declare-datatypes ((C!36142 0))(
  ( (C!36143 (val!27777 Int)) )
))
(declare-datatypes ((Regex!17936 0))(
  ( (ElementMatch!17936 (c!1327171 C!36142)) (Concat!26781 (regOne!36384 Regex!17936) (regTwo!36384 Regex!17936)) (EmptyExpr!17936) (Star!17936 (reg!18265 Regex!17936)) (EmptyLang!17936) (Union!17936 (regOne!36385 Regex!17936) (regTwo!36385 Regex!17936)) )
))
(declare-fun r!11554 () Regex!17936)

(declare-fun validRegex!9209 (Regex!17936) Bool)

(assert (=> start!692190 (= res!2901975 (validRegex!9209 r!11554))))

(assert (=> start!692190 e!4273594))

(declare-fun e!4273597 () Bool)

(assert (=> start!692190 e!4273597))

(declare-datatypes ((List!68897 0))(
  ( (Nil!68773) (Cons!68773 (h!75221 Regex!17936) (t!382730 List!68897)) )
))
(declare-datatypes ((Context!13860 0))(
  ( (Context!13861 (exprs!7430 List!68897)) )
))
(declare-fun c!9994 () Context!13860)

(declare-fun e!4273592 () Bool)

(declare-fun inv!87704 (Context!13860) Bool)

(assert (=> start!692190 (and (inv!87704 c!9994) e!4273592)))

(declare-fun tp_is_empty!45105 () Bool)

(assert (=> start!692190 tp_is_empty!45105))

(declare-fun auxCtx!45 () Context!13860)

(declare-fun e!4273598 () Bool)

(assert (=> start!692190 (and (inv!87704 auxCtx!45) e!4273598)))

(declare-fun b!7111191 () Bool)

(declare-fun tp!1956216 () Bool)

(declare-fun tp!1956218 () Bool)

(assert (=> b!7111191 (= e!4273597 (and tp!1956216 tp!1956218))))

(declare-fun b!7111192 () Bool)

(declare-fun tp!1956221 () Bool)

(assert (=> b!7111192 (= e!4273592 tp!1956221)))

(declare-fun b!7111193 () Bool)

(declare-fun e!4273591 () Bool)

(declare-fun e!4273596 () Bool)

(assert (=> b!7111193 (= e!4273591 (not e!4273596))))

(declare-fun res!2901974 () Bool)

(assert (=> b!7111193 (=> res!2901974 e!4273596)))

(declare-fun lt!2560010 () (Set Context!13860))

(declare-fun a!1901 () C!36142)

(declare-fun appendTo!935 ((Set Context!13860) Context!13860) (Set Context!13860))

(declare-fun derivationStepZipperDown!2451 (Regex!17936 Context!13860 C!36142) (Set Context!13860))

(assert (=> b!7111193 (= res!2901974 (not (= lt!2560010 (appendTo!935 (derivationStepZipperDown!2451 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lambda!432029 () Int)

(declare-datatypes ((Unit!162543 0))(
  ( (Unit!162544) )
))
(declare-fun lt!2560014 () Unit!162543)

(declare-fun lemmaConcatPreservesForall!1221 (List!68897 List!68897 Int) Unit!162543)

(assert (=> b!7111193 (= lt!2560014 (lemmaConcatPreservesForall!1221 (exprs!7430 c!9994) (exprs!7430 auxCtx!45) lambda!432029))))

(declare-fun lt!2560009 () (Set Context!13860))

(declare-fun lambda!432028 () Int)

(declare-fun lt!2560013 () (Set Context!13860))

(declare-fun map!16279 ((Set Context!13860) Int) (Set Context!13860))

(assert (=> b!7111193 (= (set.union (map!16279 lt!2560009 lambda!432028) (map!16279 lt!2560013 lambda!432028)) (map!16279 (set.union lt!2560009 lt!2560013) lambda!432028))))

(declare-fun lt!2560008 () Unit!162543)

(declare-fun lemmaMapAssociative!35 ((Set Context!13860) (Set Context!13860) Int) Unit!162543)

(assert (=> b!7111193 (= lt!2560008 (lemmaMapAssociative!35 lt!2560009 lt!2560013 lambda!432028))))

(declare-fun lt!2560004 () (Set Context!13860))

(assert (=> b!7111193 (= lt!2560004 (appendTo!935 lt!2560013 auxCtx!45))))

(assert (=> b!7111193 (= lt!2560013 (derivationStepZipperDown!2451 (regTwo!36384 r!11554) c!9994 a!1901))))

(declare-fun lt!2560021 () Unit!162543)

(assert (=> b!7111193 (= lt!2560021 (lemmaConcatPreservesForall!1221 (exprs!7430 c!9994) (exprs!7430 auxCtx!45) lambda!432029))))

(declare-fun lt!2560012 () Unit!162543)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!233 (Context!13860 Regex!17936 C!36142 Context!13860) Unit!162543)

(assert (=> b!7111193 (= lt!2560012 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!233 c!9994 (regTwo!36384 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2560015 () List!68897)

(assert (=> b!7111193 (= (derivationStepZipperDown!2451 (regOne!36384 r!11554) (Context!13861 lt!2560015) a!1901) (appendTo!935 lt!2560009 auxCtx!45))))

(declare-fun lt!2560022 () Context!13860)

(assert (=> b!7111193 (= lt!2560009 (derivationStepZipperDown!2451 (regOne!36384 r!11554) lt!2560022 a!1901))))

(declare-fun lt!2560005 () List!68897)

(declare-fun ++!16088 (List!68897 List!68897) List!68897)

(assert (=> b!7111193 (= lt!2560015 (++!16088 lt!2560005 (exprs!7430 auxCtx!45)))))

(declare-fun lt!2560006 () Unit!162543)

(assert (=> b!7111193 (= lt!2560006 (lemmaConcatPreservesForall!1221 lt!2560005 (exprs!7430 auxCtx!45) lambda!432029))))

(declare-fun lt!2560011 () Unit!162543)

(assert (=> b!7111193 (= lt!2560011 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!233 lt!2560022 (regOne!36384 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7111193 (= lt!2560022 (Context!13861 lt!2560005))))

(declare-fun $colon$colon!2794 (List!68897 Regex!17936) List!68897)

(assert (=> b!7111193 (= lt!2560005 ($colon$colon!2794 (exprs!7430 c!9994) (regTwo!36384 r!11554)))))

(declare-fun b!7111194 () Bool)

(declare-fun e!4273593 () Bool)

(declare-fun e!4273595 () Bool)

(assert (=> b!7111194 (= e!4273593 e!4273595)))

(declare-fun res!2901973 () Bool)

(assert (=> b!7111194 (=> (not res!2901973) (not e!4273595))))

(assert (=> b!7111194 (= res!2901973 (validRegex!9209 (regTwo!36384 r!11554)))))

(declare-fun lt!2560003 () Unit!162543)

(assert (=> b!7111194 (= lt!2560003 (lemmaConcatPreservesForall!1221 (exprs!7430 c!9994) (exprs!7430 auxCtx!45) lambda!432029))))

(declare-fun lt!2560018 () Context!13860)

(declare-fun lt!2560017 () List!68897)

(assert (=> b!7111194 (= lt!2560018 (Context!13861 lt!2560017))))

(assert (=> b!7111194 (= lt!2560017 (++!16088 (exprs!7430 c!9994) (exprs!7430 auxCtx!45)))))

(declare-fun lt!2560019 () Unit!162543)

(assert (=> b!7111194 (= lt!2560019 (lemmaConcatPreservesForall!1221 (exprs!7430 c!9994) (exprs!7430 auxCtx!45) lambda!432029))))

(declare-fun lt!2560007 () Unit!162543)

(assert (=> b!7111194 (= lt!2560007 (lemmaConcatPreservesForall!1221 (exprs!7430 c!9994) (exprs!7430 auxCtx!45) lambda!432029))))

(declare-fun b!7111195 () Bool)

(declare-fun tp!1956217 () Bool)

(assert (=> b!7111195 (= e!4273597 tp!1956217)))

(assert (=> b!7111196 (= e!4273594 e!4273593)))

(declare-fun res!2901977 () Bool)

(assert (=> b!7111196 (=> (not res!2901977) (not e!4273593))))

(assert (=> b!7111196 (= res!2901977 (and (or (not (is-ElementMatch!17936 r!11554)) (not (= (c!1327171 r!11554) a!1901))) (not (is-Union!17936 r!11554)) (is-Concat!26781 r!11554)))))

(declare-fun b!7111197 () Bool)

(assert (=> b!7111197 (= e!4273596 (inv!87704 lt!2560018))))

(declare-fun lt!2560020 () Unit!162543)

(assert (=> b!7111197 (= lt!2560020 (lemmaConcatPreservesForall!1221 (exprs!7430 c!9994) (exprs!7430 auxCtx!45) lambda!432029))))

(declare-fun b!7111198 () Bool)

(declare-fun tp!1956215 () Bool)

(declare-fun tp!1956219 () Bool)

(assert (=> b!7111198 (= e!4273597 (and tp!1956215 tp!1956219))))

(declare-fun b!7111199 () Bool)

(declare-fun tp!1956220 () Bool)

(assert (=> b!7111199 (= e!4273598 tp!1956220)))

(declare-fun b!7111200 () Bool)

(assert (=> b!7111200 (= e!4273595 e!4273591)))

(declare-fun res!2901976 () Bool)

(assert (=> b!7111200 (=> (not res!2901976) (not e!4273591))))

(declare-fun lt!2560016 () (Set Context!13860))

(assert (=> b!7111200 (= res!2901976 (= lt!2560010 (set.union lt!2560016 lt!2560004)))))

(assert (=> b!7111200 (= lt!2560010 (derivationStepZipperDown!2451 r!11554 lt!2560018 a!1901))))

(assert (=> b!7111200 (= lt!2560004 (derivationStepZipperDown!2451 (regTwo!36384 r!11554) lt!2560018 a!1901))))

(assert (=> b!7111200 (= lt!2560016 (derivationStepZipperDown!2451 (regOne!36384 r!11554) (Context!13861 ($colon$colon!2794 lt!2560017 (regTwo!36384 r!11554))) a!1901))))

(declare-fun b!7111201 () Bool)

(declare-fun res!2901978 () Bool)

(assert (=> b!7111201 (=> (not res!2901978) (not e!4273593))))

(declare-fun nullable!7573 (Regex!17936) Bool)

(assert (=> b!7111201 (= res!2901978 (nullable!7573 (regOne!36384 r!11554)))))

(declare-fun b!7111202 () Bool)

(assert (=> b!7111202 (= e!4273597 tp_is_empty!45105)))

(assert (= (and start!692190 res!2901975) b!7111196))

(assert (= (and b!7111196 res!2901977) b!7111201))

(assert (= (and b!7111201 res!2901978) b!7111194))

(assert (= (and b!7111194 res!2901973) b!7111200))

(assert (= (and b!7111200 res!2901976) b!7111193))

(assert (= (and b!7111193 (not res!2901974)) b!7111197))

(assert (= (and start!692190 (is-ElementMatch!17936 r!11554)) b!7111202))

(assert (= (and start!692190 (is-Concat!26781 r!11554)) b!7111191))

(assert (= (and start!692190 (is-Star!17936 r!11554)) b!7111195))

(assert (= (and start!692190 (is-Union!17936 r!11554)) b!7111198))

(assert (= start!692190 b!7111192))

(assert (= start!692190 b!7111199))

(declare-fun m!7832384 () Bool)

(assert (=> start!692190 m!7832384))

(declare-fun m!7832386 () Bool)

(assert (=> start!692190 m!7832386))

(declare-fun m!7832388 () Bool)

(assert (=> start!692190 m!7832388))

(declare-fun m!7832390 () Bool)

(assert (=> b!7111194 m!7832390))

(assert (=> b!7111194 m!7832390))

(assert (=> b!7111194 m!7832390))

(declare-fun m!7832392 () Bool)

(assert (=> b!7111194 m!7832392))

(declare-fun m!7832394 () Bool)

(assert (=> b!7111194 m!7832394))

(declare-fun m!7832396 () Bool)

(assert (=> b!7111201 m!7832396))

(declare-fun m!7832398 () Bool)

(assert (=> b!7111193 m!7832398))

(declare-fun m!7832400 () Bool)

(assert (=> b!7111193 m!7832400))

(declare-fun m!7832402 () Bool)

(assert (=> b!7111193 m!7832402))

(assert (=> b!7111193 m!7832390))

(declare-fun m!7832404 () Bool)

(assert (=> b!7111193 m!7832404))

(assert (=> b!7111193 m!7832398))

(declare-fun m!7832406 () Bool)

(assert (=> b!7111193 m!7832406))

(declare-fun m!7832408 () Bool)

(assert (=> b!7111193 m!7832408))

(declare-fun m!7832410 () Bool)

(assert (=> b!7111193 m!7832410))

(declare-fun m!7832412 () Bool)

(assert (=> b!7111193 m!7832412))

(declare-fun m!7832414 () Bool)

(assert (=> b!7111193 m!7832414))

(declare-fun m!7832416 () Bool)

(assert (=> b!7111193 m!7832416))

(declare-fun m!7832418 () Bool)

(assert (=> b!7111193 m!7832418))

(declare-fun m!7832420 () Bool)

(assert (=> b!7111193 m!7832420))

(declare-fun m!7832422 () Bool)

(assert (=> b!7111193 m!7832422))

(declare-fun m!7832424 () Bool)

(assert (=> b!7111193 m!7832424))

(declare-fun m!7832426 () Bool)

(assert (=> b!7111193 m!7832426))

(assert (=> b!7111193 m!7832390))

(declare-fun m!7832428 () Bool)

(assert (=> b!7111193 m!7832428))

(declare-fun m!7832430 () Bool)

(assert (=> b!7111200 m!7832430))

(declare-fun m!7832432 () Bool)

(assert (=> b!7111200 m!7832432))

(declare-fun m!7832434 () Bool)

(assert (=> b!7111200 m!7832434))

(declare-fun m!7832436 () Bool)

(assert (=> b!7111200 m!7832436))

(declare-fun m!7832438 () Bool)

(assert (=> b!7111197 m!7832438))

(assert (=> b!7111197 m!7832390))

(push 1)

(assert (not b!7111200))

(assert (not b!7111199))

(assert (not b!7111193))

(assert (not b!7111195))

(assert (not b!7111197))

(assert (not b!7111194))

(assert (not b!7111198))

(assert (not b!7111192))

(assert (not start!692190))

(assert (not b!7111191))

(assert (not b!7111201))

(assert tp_is_empty!45105)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2220286 () Bool)

(assert (=> d!2220286 (= (set.union (map!16279 lt!2560009 lambda!432028) (map!16279 lt!2560013 lambda!432028)) (map!16279 (set.union lt!2560009 lt!2560013) lambda!432028))))

(declare-fun lt!2560087 () Unit!162543)

(declare-fun choose!54859 ((Set Context!13860) (Set Context!13860) Int) Unit!162543)

(assert (=> d!2220286 (= lt!2560087 (choose!54859 lt!2560009 lt!2560013 lambda!432028))))

(assert (=> d!2220286 (= (lemmaMapAssociative!35 lt!2560009 lt!2560013 lambda!432028) lt!2560087)))

(declare-fun bs!1885169 () Bool)

(assert (= bs!1885169 d!2220286))

(assert (=> bs!1885169 m!7832426))

(assert (=> bs!1885169 m!7832414))

(assert (=> bs!1885169 m!7832410))

(declare-fun m!7832496 () Bool)

(assert (=> bs!1885169 m!7832496))

(assert (=> b!7111193 d!2220286))

(declare-fun d!2220288 () Bool)

(declare-fun forall!16836 (List!68897 Int) Bool)

(assert (=> d!2220288 (forall!16836 (++!16088 (exprs!7430 c!9994) (exprs!7430 auxCtx!45)) lambda!432029)))

(declare-fun lt!2560090 () Unit!162543)

(declare-fun choose!54860 (List!68897 List!68897 Int) Unit!162543)

(assert (=> d!2220288 (= lt!2560090 (choose!54860 (exprs!7430 c!9994) (exprs!7430 auxCtx!45) lambda!432029))))

(assert (=> d!2220288 (forall!16836 (exprs!7430 c!9994) lambda!432029)))

(assert (=> d!2220288 (= (lemmaConcatPreservesForall!1221 (exprs!7430 c!9994) (exprs!7430 auxCtx!45) lambda!432029) lt!2560090)))

(declare-fun bs!1885170 () Bool)

(assert (= bs!1885170 d!2220288))

(assert (=> bs!1885170 m!7832392))

(assert (=> bs!1885170 m!7832392))

(declare-fun m!7832498 () Bool)

(assert (=> bs!1885170 m!7832498))

(declare-fun m!7832500 () Bool)

(assert (=> bs!1885170 m!7832500))

(declare-fun m!7832502 () Bool)

(assert (=> bs!1885170 m!7832502))

(assert (=> b!7111193 d!2220288))

(declare-fun bs!1885171 () Bool)

(declare-fun d!2220290 () Bool)

(assert (= bs!1885171 (and d!2220290 b!7111194)))

(declare-fun lambda!432052 () Int)

(assert (=> bs!1885171 (= lambda!432052 lambda!432029)))

(assert (=> d!2220290 (= (derivationStepZipperDown!2451 (regOne!36384 r!11554) (Context!13861 (++!16088 (exprs!7430 lt!2560022) (exprs!7430 auxCtx!45))) a!1901) (appendTo!935 (derivationStepZipperDown!2451 (regOne!36384 r!11554) lt!2560022 a!1901) auxCtx!45))))

(declare-fun lt!2560096 () Unit!162543)

(assert (=> d!2220290 (= lt!2560096 (lemmaConcatPreservesForall!1221 (exprs!7430 lt!2560022) (exprs!7430 auxCtx!45) lambda!432052))))

(declare-fun lt!2560095 () Unit!162543)

(declare-fun choose!54861 (Context!13860 Regex!17936 C!36142 Context!13860) Unit!162543)

(assert (=> d!2220290 (= lt!2560095 (choose!54861 lt!2560022 (regOne!36384 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2220290 (validRegex!9209 (regOne!36384 r!11554))))

(assert (=> d!2220290 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!233 lt!2560022 (regOne!36384 r!11554) a!1901 auxCtx!45) lt!2560095)))

(declare-fun bs!1885172 () Bool)

(assert (= bs!1885172 d!2220290))

(declare-fun m!7832504 () Bool)

(assert (=> bs!1885172 m!7832504))

(assert (=> bs!1885172 m!7832424))

(declare-fun m!7832506 () Bool)

(assert (=> bs!1885172 m!7832506))

(declare-fun m!7832508 () Bool)

(assert (=> bs!1885172 m!7832508))

(assert (=> bs!1885172 m!7832424))

(declare-fun m!7832510 () Bool)

(assert (=> bs!1885172 m!7832510))

(declare-fun m!7832512 () Bool)

(assert (=> bs!1885172 m!7832512))

(declare-fun m!7832514 () Bool)

(assert (=> bs!1885172 m!7832514))

(assert (=> b!7111193 d!2220290))

(declare-fun b!7111265 () Bool)

(declare-fun e!4273637 () (Set Context!13860))

(declare-fun call!648949 () (Set Context!13860))

(declare-fun call!648948 () (Set Context!13860))

(assert (=> b!7111265 (= e!4273637 (set.union call!648949 call!648948))))

(declare-fun bm!648939 () Bool)

(declare-fun call!648947 () List!68897)

(declare-fun call!648944 () List!68897)

(assert (=> bm!648939 (= call!648947 call!648944)))

(declare-fun b!7111266 () Bool)

(declare-fun e!4273636 () (Set Context!13860))

(declare-fun call!648946 () (Set Context!13860))

(assert (=> b!7111266 (= e!4273636 call!648946)))

(declare-fun b!7111267 () Bool)

(declare-fun c!1327186 () Bool)

(assert (=> b!7111267 (= c!1327186 (is-Star!17936 (regOne!36384 r!11554)))))

(declare-fun e!4273640 () (Set Context!13860))

(assert (=> b!7111267 (= e!4273640 e!4273636)))

(declare-fun b!7111268 () Bool)

(declare-fun e!4273638 () (Set Context!13860))

(declare-fun call!648945 () (Set Context!13860))

(assert (=> b!7111268 (= e!4273638 (set.union call!648949 call!648945))))

(declare-fun b!7111269 () Bool)

(declare-fun e!4273639 () (Set Context!13860))

(assert (=> b!7111269 (= e!4273639 e!4273638)))

(declare-fun c!1327188 () Bool)

(assert (=> b!7111269 (= c!1327188 (is-Union!17936 (regOne!36384 r!11554)))))

(declare-fun d!2220292 () Bool)

(declare-fun c!1327187 () Bool)

(assert (=> d!2220292 (= c!1327187 (and (is-ElementMatch!17936 (regOne!36384 r!11554)) (= (c!1327171 (regOne!36384 r!11554)) a!1901)))))

(assert (=> d!2220292 (= (derivationStepZipperDown!2451 (regOne!36384 r!11554) lt!2560022 a!1901) e!4273639)))

(declare-fun b!7111270 () Bool)

(declare-fun c!1327184 () Bool)

(declare-fun e!4273635 () Bool)

(assert (=> b!7111270 (= c!1327184 e!4273635)))

(declare-fun res!2902001 () Bool)

(assert (=> b!7111270 (=> (not res!2902001) (not e!4273635))))

(assert (=> b!7111270 (= res!2902001 (is-Concat!26781 (regOne!36384 r!11554)))))

(assert (=> b!7111270 (= e!4273638 e!4273637)))

(declare-fun bm!648940 () Bool)

(assert (=> bm!648940 (= call!648948 call!648945)))

(declare-fun bm!648941 () Bool)

(assert (=> bm!648941 (= call!648949 (derivationStepZipperDown!2451 (ite c!1327188 (regOne!36385 (regOne!36384 r!11554)) (regOne!36384 (regOne!36384 r!11554))) (ite c!1327188 lt!2560022 (Context!13861 call!648944)) a!1901))))

(declare-fun b!7111271 () Bool)

(assert (=> b!7111271 (= e!4273635 (nullable!7573 (regOne!36384 (regOne!36384 r!11554))))))

(declare-fun b!7111272 () Bool)

(assert (=> b!7111272 (= e!4273639 (set.insert lt!2560022 (as set.empty (Set Context!13860))))))

(declare-fun b!7111273 () Bool)

(assert (=> b!7111273 (= e!4273636 (as set.empty (Set Context!13860)))))

(declare-fun c!1327185 () Bool)

(declare-fun bm!648942 () Bool)

(assert (=> bm!648942 (= call!648944 ($colon$colon!2794 (exprs!7430 lt!2560022) (ite (or c!1327184 c!1327185) (regTwo!36384 (regOne!36384 r!11554)) (regOne!36384 r!11554))))))

(declare-fun bm!648943 () Bool)

(assert (=> bm!648943 (= call!648946 call!648948)))

(declare-fun b!7111274 () Bool)

(assert (=> b!7111274 (= e!4273637 e!4273640)))

(assert (=> b!7111274 (= c!1327185 (is-Concat!26781 (regOne!36384 r!11554)))))

(declare-fun bm!648944 () Bool)

(assert (=> bm!648944 (= call!648945 (derivationStepZipperDown!2451 (ite c!1327188 (regTwo!36385 (regOne!36384 r!11554)) (ite c!1327184 (regTwo!36384 (regOne!36384 r!11554)) (ite c!1327185 (regOne!36384 (regOne!36384 r!11554)) (reg!18265 (regOne!36384 r!11554))))) (ite (or c!1327188 c!1327184) lt!2560022 (Context!13861 call!648947)) a!1901))))

(declare-fun b!7111275 () Bool)

(assert (=> b!7111275 (= e!4273640 call!648946)))

(assert (= (and d!2220292 c!1327187) b!7111272))

(assert (= (and d!2220292 (not c!1327187)) b!7111269))

(assert (= (and b!7111269 c!1327188) b!7111268))

(assert (= (and b!7111269 (not c!1327188)) b!7111270))

(assert (= (and b!7111270 res!2902001) b!7111271))

(assert (= (and b!7111270 c!1327184) b!7111265))

(assert (= (and b!7111270 (not c!1327184)) b!7111274))

(assert (= (and b!7111274 c!1327185) b!7111275))

(assert (= (and b!7111274 (not c!1327185)) b!7111267))

(assert (= (and b!7111267 c!1327186) b!7111266))

(assert (= (and b!7111267 (not c!1327186)) b!7111273))

(assert (= (or b!7111275 b!7111266) bm!648939))

(assert (= (or b!7111275 b!7111266) bm!648943))

(assert (= (or b!7111265 bm!648943) bm!648940))

(assert (= (or b!7111265 bm!648939) bm!648942))

(assert (= (or b!7111268 bm!648940) bm!648944))

(assert (= (or b!7111268 b!7111265) bm!648941))

(declare-fun m!7832516 () Bool)

(assert (=> bm!648941 m!7832516))

(declare-fun m!7832518 () Bool)

(assert (=> b!7111272 m!7832518))

(declare-fun m!7832520 () Bool)

(assert (=> bm!648944 m!7832520))

(declare-fun m!7832522 () Bool)

(assert (=> bm!648942 m!7832522))

(declare-fun m!7832524 () Bool)

(assert (=> b!7111271 m!7832524))

(assert (=> b!7111193 d!2220292))

(declare-fun bs!1885173 () Bool)

(declare-fun d!2220294 () Bool)

(assert (= bs!1885173 (and d!2220294 b!7111196)))

(declare-fun lambda!432057 () Int)

(assert (=> bs!1885173 (= lambda!432057 lambda!432028)))

(assert (=> d!2220294 true))

(assert (=> d!2220294 (= (appendTo!935 lt!2560009 auxCtx!45) (map!16279 lt!2560009 lambda!432057))))

(declare-fun bs!1885174 () Bool)

(assert (= bs!1885174 d!2220294))

(declare-fun m!7832526 () Bool)

(assert (=> bs!1885174 m!7832526))

(assert (=> b!7111193 d!2220294))

(declare-fun b!7111276 () Bool)

(declare-fun e!4273643 () (Set Context!13860))

(declare-fun call!648955 () (Set Context!13860))

(declare-fun call!648954 () (Set Context!13860))

(assert (=> b!7111276 (= e!4273643 (set.union call!648955 call!648954))))

(declare-fun bm!648945 () Bool)

(declare-fun call!648953 () List!68897)

(declare-fun call!648950 () List!68897)

(assert (=> bm!648945 (= call!648953 call!648950)))

(declare-fun b!7111277 () Bool)

(declare-fun e!4273642 () (Set Context!13860))

(declare-fun call!648952 () (Set Context!13860))

(assert (=> b!7111277 (= e!4273642 call!648952)))

(declare-fun b!7111278 () Bool)

(declare-fun c!1327192 () Bool)

(assert (=> b!7111278 (= c!1327192 (is-Star!17936 (regTwo!36384 r!11554)))))

(declare-fun e!4273646 () (Set Context!13860))

(assert (=> b!7111278 (= e!4273646 e!4273642)))

(declare-fun b!7111279 () Bool)

(declare-fun e!4273644 () (Set Context!13860))

(declare-fun call!648951 () (Set Context!13860))

(assert (=> b!7111279 (= e!4273644 (set.union call!648955 call!648951))))

(declare-fun b!7111280 () Bool)

(declare-fun e!4273645 () (Set Context!13860))

(assert (=> b!7111280 (= e!4273645 e!4273644)))

(declare-fun c!1327194 () Bool)

(assert (=> b!7111280 (= c!1327194 (is-Union!17936 (regTwo!36384 r!11554)))))

(declare-fun d!2220296 () Bool)

(declare-fun c!1327193 () Bool)

(assert (=> d!2220296 (= c!1327193 (and (is-ElementMatch!17936 (regTwo!36384 r!11554)) (= (c!1327171 (regTwo!36384 r!11554)) a!1901)))))

(assert (=> d!2220296 (= (derivationStepZipperDown!2451 (regTwo!36384 r!11554) c!9994 a!1901) e!4273645)))

(declare-fun b!7111281 () Bool)

(declare-fun c!1327190 () Bool)

(declare-fun e!4273641 () Bool)

(assert (=> b!7111281 (= c!1327190 e!4273641)))

(declare-fun res!2902002 () Bool)

(assert (=> b!7111281 (=> (not res!2902002) (not e!4273641))))

(assert (=> b!7111281 (= res!2902002 (is-Concat!26781 (regTwo!36384 r!11554)))))

(assert (=> b!7111281 (= e!4273644 e!4273643)))

(declare-fun bm!648946 () Bool)

(assert (=> bm!648946 (= call!648954 call!648951)))

(declare-fun bm!648947 () Bool)

(assert (=> bm!648947 (= call!648955 (derivationStepZipperDown!2451 (ite c!1327194 (regOne!36385 (regTwo!36384 r!11554)) (regOne!36384 (regTwo!36384 r!11554))) (ite c!1327194 c!9994 (Context!13861 call!648950)) a!1901))))

(declare-fun b!7111282 () Bool)

(assert (=> b!7111282 (= e!4273641 (nullable!7573 (regOne!36384 (regTwo!36384 r!11554))))))

(declare-fun b!7111283 () Bool)

(assert (=> b!7111283 (= e!4273645 (set.insert c!9994 (as set.empty (Set Context!13860))))))

(declare-fun b!7111284 () Bool)

(assert (=> b!7111284 (= e!4273642 (as set.empty (Set Context!13860)))))

(declare-fun c!1327191 () Bool)

(declare-fun bm!648948 () Bool)

(assert (=> bm!648948 (= call!648950 ($colon$colon!2794 (exprs!7430 c!9994) (ite (or c!1327190 c!1327191) (regTwo!36384 (regTwo!36384 r!11554)) (regTwo!36384 r!11554))))))

(declare-fun bm!648949 () Bool)

(assert (=> bm!648949 (= call!648952 call!648954)))

(declare-fun b!7111285 () Bool)

(assert (=> b!7111285 (= e!4273643 e!4273646)))

(assert (=> b!7111285 (= c!1327191 (is-Concat!26781 (regTwo!36384 r!11554)))))

(declare-fun bm!648950 () Bool)

(assert (=> bm!648950 (= call!648951 (derivationStepZipperDown!2451 (ite c!1327194 (regTwo!36385 (regTwo!36384 r!11554)) (ite c!1327190 (regTwo!36384 (regTwo!36384 r!11554)) (ite c!1327191 (regOne!36384 (regTwo!36384 r!11554)) (reg!18265 (regTwo!36384 r!11554))))) (ite (or c!1327194 c!1327190) c!9994 (Context!13861 call!648953)) a!1901))))

(declare-fun b!7111286 () Bool)

(assert (=> b!7111286 (= e!4273646 call!648952)))

(assert (= (and d!2220296 c!1327193) b!7111283))

(assert (= (and d!2220296 (not c!1327193)) b!7111280))

(assert (= (and b!7111280 c!1327194) b!7111279))

(assert (= (and b!7111280 (not c!1327194)) b!7111281))

(assert (= (and b!7111281 res!2902002) b!7111282))

(assert (= (and b!7111281 c!1327190) b!7111276))

(assert (= (and b!7111281 (not c!1327190)) b!7111285))

(assert (= (and b!7111285 c!1327191) b!7111286))

(assert (= (and b!7111285 (not c!1327191)) b!7111278))

(assert (= (and b!7111278 c!1327192) b!7111277))

(assert (= (and b!7111278 (not c!1327192)) b!7111284))

(assert (= (or b!7111286 b!7111277) bm!648945))

(assert (= (or b!7111286 b!7111277) bm!648949))

(assert (= (or b!7111276 bm!648949) bm!648946))

(assert (= (or b!7111276 bm!648945) bm!648948))

(assert (= (or b!7111279 bm!648946) bm!648950))

(assert (= (or b!7111279 b!7111276) bm!648947))

(declare-fun m!7832528 () Bool)

(assert (=> bm!648947 m!7832528))

(declare-fun m!7832530 () Bool)

(assert (=> b!7111283 m!7832530))

(declare-fun m!7832532 () Bool)

(assert (=> bm!648950 m!7832532))

(declare-fun m!7832534 () Bool)

(assert (=> bm!648948 m!7832534))

(declare-fun m!7832536 () Bool)

(assert (=> b!7111282 m!7832536))

(assert (=> b!7111193 d!2220296))

(declare-fun bs!1885175 () Bool)

(declare-fun d!2220298 () Bool)

(assert (= bs!1885175 (and d!2220298 b!7111194)))

(declare-fun lambda!432058 () Int)

(assert (=> bs!1885175 (= lambda!432058 lambda!432029)))

(declare-fun bs!1885176 () Bool)

(assert (= bs!1885176 (and d!2220298 d!2220290)))

(assert (=> bs!1885176 (= lambda!432058 lambda!432052)))

(assert (=> d!2220298 (= (derivationStepZipperDown!2451 (regTwo!36384 r!11554) (Context!13861 (++!16088 (exprs!7430 c!9994) (exprs!7430 auxCtx!45))) a!1901) (appendTo!935 (derivationStepZipperDown!2451 (regTwo!36384 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2560100 () Unit!162543)

(assert (=> d!2220298 (= lt!2560100 (lemmaConcatPreservesForall!1221 (exprs!7430 c!9994) (exprs!7430 auxCtx!45) lambda!432058))))

(declare-fun lt!2560099 () Unit!162543)

(assert (=> d!2220298 (= lt!2560099 (choose!54861 c!9994 (regTwo!36384 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2220298 (validRegex!9209 (regTwo!36384 r!11554))))

(assert (=> d!2220298 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!233 c!9994 (regTwo!36384 r!11554) a!1901 auxCtx!45) lt!2560099)))

(declare-fun bs!1885177 () Bool)

(assert (= bs!1885177 d!2220298))

(declare-fun m!7832538 () Bool)

(assert (=> bs!1885177 m!7832538))

(assert (=> bs!1885177 m!7832420))

(assert (=> bs!1885177 m!7832392))

(declare-fun m!7832540 () Bool)

(assert (=> bs!1885177 m!7832540))

(assert (=> bs!1885177 m!7832420))

(declare-fun m!7832542 () Bool)

(assert (=> bs!1885177 m!7832542))

(assert (=> bs!1885177 m!7832394))

(declare-fun m!7832544 () Bool)

(assert (=> bs!1885177 m!7832544))

(assert (=> b!7111193 d!2220298))

(declare-fun b!7111295 () Bool)

(declare-fun e!4273652 () List!68897)

(assert (=> b!7111295 (= e!4273652 (exprs!7430 auxCtx!45))))

(declare-fun e!4273651 () Bool)

(declare-fun b!7111298 () Bool)

(declare-fun lt!2560103 () List!68897)

(assert (=> b!7111298 (= e!4273651 (or (not (= (exprs!7430 auxCtx!45) Nil!68773)) (= lt!2560103 lt!2560005)))))

(declare-fun d!2220302 () Bool)

(assert (=> d!2220302 e!4273651))

(declare-fun res!2902008 () Bool)

(assert (=> d!2220302 (=> (not res!2902008) (not e!4273651))))

(declare-fun content!14021 (List!68897) (Set Regex!17936))

(assert (=> d!2220302 (= res!2902008 (= (content!14021 lt!2560103) (set.union (content!14021 lt!2560005) (content!14021 (exprs!7430 auxCtx!45)))))))

(assert (=> d!2220302 (= lt!2560103 e!4273652)))

(declare-fun c!1327197 () Bool)

(assert (=> d!2220302 (= c!1327197 (is-Nil!68773 lt!2560005))))

(assert (=> d!2220302 (= (++!16088 lt!2560005 (exprs!7430 auxCtx!45)) lt!2560103)))

(declare-fun b!7111296 () Bool)

(assert (=> b!7111296 (= e!4273652 (Cons!68773 (h!75221 lt!2560005) (++!16088 (t!382730 lt!2560005) (exprs!7430 auxCtx!45))))))

(declare-fun b!7111297 () Bool)

(declare-fun res!2902007 () Bool)

(assert (=> b!7111297 (=> (not res!2902007) (not e!4273651))))

(declare-fun size!41396 (List!68897) Int)

(assert (=> b!7111297 (= res!2902007 (= (size!41396 lt!2560103) (+ (size!41396 lt!2560005) (size!41396 (exprs!7430 auxCtx!45)))))))

(assert (= (and d!2220302 c!1327197) b!7111295))

(assert (= (and d!2220302 (not c!1327197)) b!7111296))

(assert (= (and d!2220302 res!2902008) b!7111297))

(assert (= (and b!7111297 res!2902007) b!7111298))

(declare-fun m!7832546 () Bool)

(assert (=> d!2220302 m!7832546))

(declare-fun m!7832548 () Bool)

(assert (=> d!2220302 m!7832548))

(declare-fun m!7832550 () Bool)

(assert (=> d!2220302 m!7832550))

(declare-fun m!7832552 () Bool)

(assert (=> b!7111296 m!7832552))

(declare-fun m!7832554 () Bool)

(assert (=> b!7111297 m!7832554))

(declare-fun m!7832556 () Bool)

(assert (=> b!7111297 m!7832556))

(declare-fun m!7832558 () Bool)

(assert (=> b!7111297 m!7832558))

(assert (=> b!7111193 d!2220302))

(declare-fun d!2220304 () Bool)

(assert (=> d!2220304 (forall!16836 (++!16088 lt!2560005 (exprs!7430 auxCtx!45)) lambda!432029)))

(declare-fun lt!2560104 () Unit!162543)

(assert (=> d!2220304 (= lt!2560104 (choose!54860 lt!2560005 (exprs!7430 auxCtx!45) lambda!432029))))

(assert (=> d!2220304 (forall!16836 lt!2560005 lambda!432029)))

(assert (=> d!2220304 (= (lemmaConcatPreservesForall!1221 lt!2560005 (exprs!7430 auxCtx!45) lambda!432029) lt!2560104)))

(declare-fun bs!1885178 () Bool)

(assert (= bs!1885178 d!2220304))

(assert (=> bs!1885178 m!7832412))

(assert (=> bs!1885178 m!7832412))

(declare-fun m!7832560 () Bool)

(assert (=> bs!1885178 m!7832560))

(declare-fun m!7832562 () Bool)

(assert (=> bs!1885178 m!7832562))

(declare-fun m!7832564 () Bool)

(assert (=> bs!1885178 m!7832564))

(assert (=> b!7111193 d!2220304))

(declare-fun d!2220306 () Bool)

(assert (=> d!2220306 (= ($colon$colon!2794 (exprs!7430 c!9994) (regTwo!36384 r!11554)) (Cons!68773 (regTwo!36384 r!11554) (exprs!7430 c!9994)))))

(assert (=> b!7111193 d!2220306))

(declare-fun d!2220308 () Bool)

(declare-fun choose!54862 ((Set Context!13860) Int) (Set Context!13860))

(assert (=> d!2220308 (= (map!16279 (set.union lt!2560009 lt!2560013) lambda!432028) (choose!54862 (set.union lt!2560009 lt!2560013) lambda!432028))))

(declare-fun bs!1885179 () Bool)

(assert (= bs!1885179 d!2220308))

(declare-fun m!7832566 () Bool)

(assert (=> bs!1885179 m!7832566))

(assert (=> b!7111193 d!2220308))

(declare-fun b!7111299 () Bool)

(declare-fun e!4273655 () (Set Context!13860))

(declare-fun call!648961 () (Set Context!13860))

(declare-fun call!648960 () (Set Context!13860))

(assert (=> b!7111299 (= e!4273655 (set.union call!648961 call!648960))))

(declare-fun bm!648951 () Bool)

(declare-fun call!648959 () List!68897)

(declare-fun call!648956 () List!68897)

(assert (=> bm!648951 (= call!648959 call!648956)))

(declare-fun b!7111300 () Bool)

(declare-fun e!4273654 () (Set Context!13860))

(declare-fun call!648958 () (Set Context!13860))

(assert (=> b!7111300 (= e!4273654 call!648958)))

(declare-fun b!7111301 () Bool)

(declare-fun c!1327200 () Bool)

(assert (=> b!7111301 (= c!1327200 (is-Star!17936 (regOne!36384 r!11554)))))

(declare-fun e!4273658 () (Set Context!13860))

(assert (=> b!7111301 (= e!4273658 e!4273654)))

(declare-fun b!7111302 () Bool)

(declare-fun e!4273656 () (Set Context!13860))

(declare-fun call!648957 () (Set Context!13860))

(assert (=> b!7111302 (= e!4273656 (set.union call!648961 call!648957))))

(declare-fun b!7111303 () Bool)

(declare-fun e!4273657 () (Set Context!13860))

(assert (=> b!7111303 (= e!4273657 e!4273656)))

(declare-fun c!1327202 () Bool)

(assert (=> b!7111303 (= c!1327202 (is-Union!17936 (regOne!36384 r!11554)))))

(declare-fun d!2220310 () Bool)

(declare-fun c!1327201 () Bool)

(assert (=> d!2220310 (= c!1327201 (and (is-ElementMatch!17936 (regOne!36384 r!11554)) (= (c!1327171 (regOne!36384 r!11554)) a!1901)))))

(assert (=> d!2220310 (= (derivationStepZipperDown!2451 (regOne!36384 r!11554) (Context!13861 lt!2560015) a!1901) e!4273657)))

(declare-fun b!7111304 () Bool)

(declare-fun c!1327198 () Bool)

(declare-fun e!4273653 () Bool)

(assert (=> b!7111304 (= c!1327198 e!4273653)))

(declare-fun res!2902009 () Bool)

(assert (=> b!7111304 (=> (not res!2902009) (not e!4273653))))

(assert (=> b!7111304 (= res!2902009 (is-Concat!26781 (regOne!36384 r!11554)))))

(assert (=> b!7111304 (= e!4273656 e!4273655)))

(declare-fun bm!648952 () Bool)

(assert (=> bm!648952 (= call!648960 call!648957)))

(declare-fun bm!648953 () Bool)

(assert (=> bm!648953 (= call!648961 (derivationStepZipperDown!2451 (ite c!1327202 (regOne!36385 (regOne!36384 r!11554)) (regOne!36384 (regOne!36384 r!11554))) (ite c!1327202 (Context!13861 lt!2560015) (Context!13861 call!648956)) a!1901))))

(declare-fun b!7111305 () Bool)

(assert (=> b!7111305 (= e!4273653 (nullable!7573 (regOne!36384 (regOne!36384 r!11554))))))

(declare-fun b!7111306 () Bool)

(assert (=> b!7111306 (= e!4273657 (set.insert (Context!13861 lt!2560015) (as set.empty (Set Context!13860))))))

(declare-fun b!7111307 () Bool)

(assert (=> b!7111307 (= e!4273654 (as set.empty (Set Context!13860)))))

(declare-fun c!1327199 () Bool)

(declare-fun bm!648954 () Bool)

(assert (=> bm!648954 (= call!648956 ($colon$colon!2794 (exprs!7430 (Context!13861 lt!2560015)) (ite (or c!1327198 c!1327199) (regTwo!36384 (regOne!36384 r!11554)) (regOne!36384 r!11554))))))

(declare-fun bm!648955 () Bool)

(assert (=> bm!648955 (= call!648958 call!648960)))

(declare-fun b!7111308 () Bool)

(assert (=> b!7111308 (= e!4273655 e!4273658)))

(assert (=> b!7111308 (= c!1327199 (is-Concat!26781 (regOne!36384 r!11554)))))

(declare-fun bm!648956 () Bool)

(assert (=> bm!648956 (= call!648957 (derivationStepZipperDown!2451 (ite c!1327202 (regTwo!36385 (regOne!36384 r!11554)) (ite c!1327198 (regTwo!36384 (regOne!36384 r!11554)) (ite c!1327199 (regOne!36384 (regOne!36384 r!11554)) (reg!18265 (regOne!36384 r!11554))))) (ite (or c!1327202 c!1327198) (Context!13861 lt!2560015) (Context!13861 call!648959)) a!1901))))

(declare-fun b!7111309 () Bool)

(assert (=> b!7111309 (= e!4273658 call!648958)))

(assert (= (and d!2220310 c!1327201) b!7111306))

(assert (= (and d!2220310 (not c!1327201)) b!7111303))

(assert (= (and b!7111303 c!1327202) b!7111302))

(assert (= (and b!7111303 (not c!1327202)) b!7111304))

(assert (= (and b!7111304 res!2902009) b!7111305))

(assert (= (and b!7111304 c!1327198) b!7111299))

(assert (= (and b!7111304 (not c!1327198)) b!7111308))

(assert (= (and b!7111308 c!1327199) b!7111309))

(assert (= (and b!7111308 (not c!1327199)) b!7111301))

(assert (= (and b!7111301 c!1327200) b!7111300))

(assert (= (and b!7111301 (not c!1327200)) b!7111307))

(assert (= (or b!7111309 b!7111300) bm!648951))

(assert (= (or b!7111309 b!7111300) bm!648955))

(assert (= (or b!7111299 bm!648955) bm!648952))

(assert (= (or b!7111299 bm!648951) bm!648954))

(assert (= (or b!7111302 bm!648952) bm!648956))

(assert (= (or b!7111302 b!7111299) bm!648953))

(declare-fun m!7832568 () Bool)

(assert (=> bm!648953 m!7832568))

(declare-fun m!7832570 () Bool)

(assert (=> b!7111306 m!7832570))

(declare-fun m!7832572 () Bool)

(assert (=> bm!648956 m!7832572))

(declare-fun m!7832574 () Bool)

(assert (=> bm!648954 m!7832574))

(assert (=> b!7111305 m!7832524))

(assert (=> b!7111193 d!2220310))

(declare-fun bs!1885180 () Bool)

(declare-fun d!2220312 () Bool)

(assert (= bs!1885180 (and d!2220312 b!7111196)))

(declare-fun lambda!432059 () Int)

(assert (=> bs!1885180 (= lambda!432059 lambda!432028)))

(declare-fun bs!1885181 () Bool)

(assert (= bs!1885181 (and d!2220312 d!2220294)))

(assert (=> bs!1885181 (= lambda!432059 lambda!432057)))

(assert (=> d!2220312 true))

(assert (=> d!2220312 (= (appendTo!935 lt!2560013 auxCtx!45) (map!16279 lt!2560013 lambda!432059))))

(declare-fun bs!1885182 () Bool)

(assert (= bs!1885182 d!2220312))

(declare-fun m!7832576 () Bool)

(assert (=> bs!1885182 m!7832576))

(assert (=> b!7111193 d!2220312))

(declare-fun d!2220314 () Bool)

(assert (=> d!2220314 (= (map!16279 lt!2560009 lambda!432028) (choose!54862 lt!2560009 lambda!432028))))

(declare-fun bs!1885183 () Bool)

(assert (= bs!1885183 d!2220314))

(declare-fun m!7832578 () Bool)

(assert (=> bs!1885183 m!7832578))

(assert (=> b!7111193 d!2220314))

(declare-fun bs!1885184 () Bool)

(declare-fun d!2220316 () Bool)

(assert (= bs!1885184 (and d!2220316 b!7111196)))

(declare-fun lambda!432060 () Int)

(assert (=> bs!1885184 (= lambda!432060 lambda!432028)))

(declare-fun bs!1885185 () Bool)

(assert (= bs!1885185 (and d!2220316 d!2220294)))

(assert (=> bs!1885185 (= lambda!432060 lambda!432057)))

(declare-fun bs!1885186 () Bool)

(assert (= bs!1885186 (and d!2220316 d!2220312)))

(assert (=> bs!1885186 (= lambda!432060 lambda!432059)))

(assert (=> d!2220316 true))

(assert (=> d!2220316 (= (appendTo!935 (derivationStepZipperDown!2451 r!11554 c!9994 a!1901) auxCtx!45) (map!16279 (derivationStepZipperDown!2451 r!11554 c!9994 a!1901) lambda!432060))))

(declare-fun bs!1885187 () Bool)

(assert (= bs!1885187 d!2220316))

(assert (=> bs!1885187 m!7832398))

(declare-fun m!7832580 () Bool)

(assert (=> bs!1885187 m!7832580))

(assert (=> b!7111193 d!2220316))

(declare-fun b!7111314 () Bool)

(declare-fun e!4273663 () (Set Context!13860))

(declare-fun call!648967 () (Set Context!13860))

(declare-fun call!648966 () (Set Context!13860))

(assert (=> b!7111314 (= e!4273663 (set.union call!648967 call!648966))))

(declare-fun bm!648957 () Bool)

(declare-fun call!648965 () List!68897)

(declare-fun call!648962 () List!68897)

(assert (=> bm!648957 (= call!648965 call!648962)))

(declare-fun b!7111315 () Bool)

(declare-fun e!4273662 () (Set Context!13860))

(declare-fun call!648964 () (Set Context!13860))

(assert (=> b!7111315 (= e!4273662 call!648964)))

(declare-fun b!7111316 () Bool)

(declare-fun c!1327207 () Bool)

(assert (=> b!7111316 (= c!1327207 (is-Star!17936 r!11554))))

(declare-fun e!4273666 () (Set Context!13860))

(assert (=> b!7111316 (= e!4273666 e!4273662)))

(declare-fun b!7111317 () Bool)

(declare-fun e!4273664 () (Set Context!13860))

(declare-fun call!648963 () (Set Context!13860))

(assert (=> b!7111317 (= e!4273664 (set.union call!648967 call!648963))))

(declare-fun b!7111318 () Bool)

(declare-fun e!4273665 () (Set Context!13860))

(assert (=> b!7111318 (= e!4273665 e!4273664)))

(declare-fun c!1327209 () Bool)

(assert (=> b!7111318 (= c!1327209 (is-Union!17936 r!11554))))

(declare-fun d!2220318 () Bool)

(declare-fun c!1327208 () Bool)

(assert (=> d!2220318 (= c!1327208 (and (is-ElementMatch!17936 r!11554) (= (c!1327171 r!11554) a!1901)))))

(assert (=> d!2220318 (= (derivationStepZipperDown!2451 r!11554 c!9994 a!1901) e!4273665)))

(declare-fun b!7111319 () Bool)

(declare-fun c!1327205 () Bool)

(declare-fun e!4273661 () Bool)

(assert (=> b!7111319 (= c!1327205 e!4273661)))

(declare-fun res!2902010 () Bool)

(assert (=> b!7111319 (=> (not res!2902010) (not e!4273661))))

(assert (=> b!7111319 (= res!2902010 (is-Concat!26781 r!11554))))

(assert (=> b!7111319 (= e!4273664 e!4273663)))

(declare-fun bm!648958 () Bool)

(assert (=> bm!648958 (= call!648966 call!648963)))

(declare-fun bm!648959 () Bool)

(assert (=> bm!648959 (= call!648967 (derivationStepZipperDown!2451 (ite c!1327209 (regOne!36385 r!11554) (regOne!36384 r!11554)) (ite c!1327209 c!9994 (Context!13861 call!648962)) a!1901))))

(declare-fun b!7111320 () Bool)

(assert (=> b!7111320 (= e!4273661 (nullable!7573 (regOne!36384 r!11554)))))

(declare-fun b!7111321 () Bool)

(assert (=> b!7111321 (= e!4273665 (set.insert c!9994 (as set.empty (Set Context!13860))))))

(declare-fun b!7111322 () Bool)

(assert (=> b!7111322 (= e!4273662 (as set.empty (Set Context!13860)))))

(declare-fun c!1327206 () Bool)

(declare-fun bm!648960 () Bool)

(assert (=> bm!648960 (= call!648962 ($colon$colon!2794 (exprs!7430 c!9994) (ite (or c!1327205 c!1327206) (regTwo!36384 r!11554) r!11554)))))

(declare-fun bm!648961 () Bool)

(assert (=> bm!648961 (= call!648964 call!648966)))

(declare-fun b!7111323 () Bool)

(assert (=> b!7111323 (= e!4273663 e!4273666)))

(assert (=> b!7111323 (= c!1327206 (is-Concat!26781 r!11554))))

(declare-fun bm!648962 () Bool)

(assert (=> bm!648962 (= call!648963 (derivationStepZipperDown!2451 (ite c!1327209 (regTwo!36385 r!11554) (ite c!1327205 (regTwo!36384 r!11554) (ite c!1327206 (regOne!36384 r!11554) (reg!18265 r!11554)))) (ite (or c!1327209 c!1327205) c!9994 (Context!13861 call!648965)) a!1901))))

(declare-fun b!7111324 () Bool)

(assert (=> b!7111324 (= e!4273666 call!648964)))

(assert (= (and d!2220318 c!1327208) b!7111321))

(assert (= (and d!2220318 (not c!1327208)) b!7111318))

(assert (= (and b!7111318 c!1327209) b!7111317))

(assert (= (and b!7111318 (not c!1327209)) b!7111319))

(assert (= (and b!7111319 res!2902010) b!7111320))

(assert (= (and b!7111319 c!1327205) b!7111314))

(assert (= (and b!7111319 (not c!1327205)) b!7111323))

(assert (= (and b!7111323 c!1327206) b!7111324))

(assert (= (and b!7111323 (not c!1327206)) b!7111316))

(assert (= (and b!7111316 c!1327207) b!7111315))

(assert (= (and b!7111316 (not c!1327207)) b!7111322))

(assert (= (or b!7111324 b!7111315) bm!648957))

(assert (= (or b!7111324 b!7111315) bm!648961))

(assert (= (or b!7111314 bm!648961) bm!648958))

(assert (= (or b!7111314 bm!648957) bm!648960))

(assert (= (or b!7111317 bm!648958) bm!648962))

(assert (= (or b!7111317 b!7111314) bm!648959))

(declare-fun m!7832582 () Bool)

(assert (=> bm!648959 m!7832582))

(assert (=> b!7111321 m!7832530))

(declare-fun m!7832584 () Bool)

(assert (=> bm!648962 m!7832584))

(declare-fun m!7832586 () Bool)

(assert (=> bm!648960 m!7832586))

(assert (=> b!7111320 m!7832396))

(assert (=> b!7111193 d!2220318))

(declare-fun d!2220320 () Bool)

(assert (=> d!2220320 (= (map!16279 lt!2560013 lambda!432028) (choose!54862 lt!2560013 lambda!432028))))

(declare-fun bs!1885188 () Bool)

(assert (= bs!1885188 d!2220320))

(declare-fun m!7832588 () Bool)

(assert (=> bs!1885188 m!7832588))

(assert (=> b!7111193 d!2220320))

(declare-fun bs!1885189 () Bool)

(declare-fun d!2220322 () Bool)

(assert (= bs!1885189 (and d!2220322 b!7111194)))

(declare-fun lambda!432063 () Int)

(assert (=> bs!1885189 (= lambda!432063 lambda!432029)))

(declare-fun bs!1885190 () Bool)

(assert (= bs!1885190 (and d!2220322 d!2220290)))

(assert (=> bs!1885190 (= lambda!432063 lambda!432052)))

(declare-fun bs!1885191 () Bool)

(assert (= bs!1885191 (and d!2220322 d!2220298)))

(assert (=> bs!1885191 (= lambda!432063 lambda!432058)))

(assert (=> d!2220322 (= (inv!87704 lt!2560018) (forall!16836 (exprs!7430 lt!2560018) lambda!432063))))

(declare-fun bs!1885192 () Bool)

(assert (= bs!1885192 d!2220322))

(declare-fun m!7832590 () Bool)

(assert (=> bs!1885192 m!7832590))

(assert (=> b!7111197 d!2220322))

(assert (=> b!7111197 d!2220288))

(declare-fun d!2220324 () Bool)

(declare-fun nullableFct!2927 (Regex!17936) Bool)

(assert (=> d!2220324 (= (nullable!7573 (regOne!36384 r!11554)) (nullableFct!2927 (regOne!36384 r!11554)))))

(declare-fun bs!1885193 () Bool)

(assert (= bs!1885193 d!2220324))

(declare-fun m!7832592 () Bool)

(assert (=> bs!1885193 m!7832592))

(assert (=> b!7111201 d!2220324))

(declare-fun b!7111343 () Bool)

(declare-fun e!4273679 () (Set Context!13860))

(declare-fun call!648977 () (Set Context!13860))

(declare-fun call!648976 () (Set Context!13860))

(assert (=> b!7111343 (= e!4273679 (set.union call!648977 call!648976))))

(declare-fun bm!648967 () Bool)

(declare-fun call!648975 () List!68897)

(declare-fun call!648972 () List!68897)

(assert (=> bm!648967 (= call!648975 call!648972)))

(declare-fun b!7111344 () Bool)

(declare-fun e!4273678 () (Set Context!13860))

(declare-fun call!648974 () (Set Context!13860))

(assert (=> b!7111344 (= e!4273678 call!648974)))

(declare-fun b!7111345 () Bool)

(declare-fun c!1327220 () Bool)

(assert (=> b!7111345 (= c!1327220 (is-Star!17936 r!11554))))

(declare-fun e!4273682 () (Set Context!13860))

(assert (=> b!7111345 (= e!4273682 e!4273678)))

(declare-fun b!7111346 () Bool)

(declare-fun e!4273680 () (Set Context!13860))

(declare-fun call!648973 () (Set Context!13860))

(assert (=> b!7111346 (= e!4273680 (set.union call!648977 call!648973))))

(declare-fun b!7111347 () Bool)

(declare-fun e!4273681 () (Set Context!13860))

(assert (=> b!7111347 (= e!4273681 e!4273680)))

(declare-fun c!1327222 () Bool)

(assert (=> b!7111347 (= c!1327222 (is-Union!17936 r!11554))))

(declare-fun d!2220326 () Bool)

(declare-fun c!1327221 () Bool)

(assert (=> d!2220326 (= c!1327221 (and (is-ElementMatch!17936 r!11554) (= (c!1327171 r!11554) a!1901)))))

(assert (=> d!2220326 (= (derivationStepZipperDown!2451 r!11554 lt!2560018 a!1901) e!4273681)))

(declare-fun b!7111348 () Bool)

(declare-fun c!1327218 () Bool)

(declare-fun e!4273677 () Bool)

(assert (=> b!7111348 (= c!1327218 e!4273677)))

(declare-fun res!2902013 () Bool)

(assert (=> b!7111348 (=> (not res!2902013) (not e!4273677))))

(assert (=> b!7111348 (= res!2902013 (is-Concat!26781 r!11554))))

(assert (=> b!7111348 (= e!4273680 e!4273679)))

(declare-fun bm!648968 () Bool)

(assert (=> bm!648968 (= call!648976 call!648973)))

(declare-fun bm!648969 () Bool)

(assert (=> bm!648969 (= call!648977 (derivationStepZipperDown!2451 (ite c!1327222 (regOne!36385 r!11554) (regOne!36384 r!11554)) (ite c!1327222 lt!2560018 (Context!13861 call!648972)) a!1901))))

(declare-fun b!7111349 () Bool)

(assert (=> b!7111349 (= e!4273677 (nullable!7573 (regOne!36384 r!11554)))))

(declare-fun b!7111350 () Bool)

(assert (=> b!7111350 (= e!4273681 (set.insert lt!2560018 (as set.empty (Set Context!13860))))))

(declare-fun b!7111351 () Bool)

(assert (=> b!7111351 (= e!4273678 (as set.empty (Set Context!13860)))))

(declare-fun bm!648970 () Bool)

(declare-fun c!1327219 () Bool)

(assert (=> bm!648970 (= call!648972 ($colon$colon!2794 (exprs!7430 lt!2560018) (ite (or c!1327218 c!1327219) (regTwo!36384 r!11554) r!11554)))))

(declare-fun bm!648971 () Bool)

(assert (=> bm!648971 (= call!648974 call!648976)))

(declare-fun b!7111352 () Bool)

(assert (=> b!7111352 (= e!4273679 e!4273682)))

(assert (=> b!7111352 (= c!1327219 (is-Concat!26781 r!11554))))

(declare-fun bm!648972 () Bool)

(assert (=> bm!648972 (= call!648973 (derivationStepZipperDown!2451 (ite c!1327222 (regTwo!36385 r!11554) (ite c!1327218 (regTwo!36384 r!11554) (ite c!1327219 (regOne!36384 r!11554) (reg!18265 r!11554)))) (ite (or c!1327222 c!1327218) lt!2560018 (Context!13861 call!648975)) a!1901))))

(declare-fun b!7111353 () Bool)

(assert (=> b!7111353 (= e!4273682 call!648974)))

(assert (= (and d!2220326 c!1327221) b!7111350))

(assert (= (and d!2220326 (not c!1327221)) b!7111347))

(assert (= (and b!7111347 c!1327222) b!7111346))

(assert (= (and b!7111347 (not c!1327222)) b!7111348))

(assert (= (and b!7111348 res!2902013) b!7111349))

(assert (= (and b!7111348 c!1327218) b!7111343))

(assert (= (and b!7111348 (not c!1327218)) b!7111352))

(assert (= (and b!7111352 c!1327219) b!7111353))

(assert (= (and b!7111352 (not c!1327219)) b!7111345))

(assert (= (and b!7111345 c!1327220) b!7111344))

(assert (= (and b!7111345 (not c!1327220)) b!7111351))

(assert (= (or b!7111353 b!7111344) bm!648967))

(assert (= (or b!7111353 b!7111344) bm!648971))

(assert (= (or b!7111343 bm!648971) bm!648968))

(assert (= (or b!7111343 bm!648967) bm!648970))

(assert (= (or b!7111346 bm!648968) bm!648972))

(assert (= (or b!7111346 b!7111343) bm!648969))

(declare-fun m!7832594 () Bool)

(assert (=> bm!648969 m!7832594))

(declare-fun m!7832596 () Bool)

(assert (=> b!7111350 m!7832596))

(declare-fun m!7832598 () Bool)

(assert (=> bm!648972 m!7832598))

(declare-fun m!7832600 () Bool)

(assert (=> bm!648970 m!7832600))

(assert (=> b!7111349 m!7832396))

(assert (=> b!7111200 d!2220326))

(declare-fun b!7111354 () Bool)

(declare-fun e!4273685 () (Set Context!13860))

(declare-fun call!648987 () (Set Context!13860))

(declare-fun call!648986 () (Set Context!13860))

(assert (=> b!7111354 (= e!4273685 (set.union call!648987 call!648986))))

(declare-fun bm!648977 () Bool)

(declare-fun call!648985 () List!68897)

(declare-fun call!648982 () List!68897)

(assert (=> bm!648977 (= call!648985 call!648982)))

(declare-fun b!7111355 () Bool)

(declare-fun e!4273684 () (Set Context!13860))

(declare-fun call!648984 () (Set Context!13860))

(assert (=> b!7111355 (= e!4273684 call!648984)))

(declare-fun b!7111356 () Bool)

(declare-fun c!1327225 () Bool)

(assert (=> b!7111356 (= c!1327225 (is-Star!17936 (regTwo!36384 r!11554)))))

(declare-fun e!4273688 () (Set Context!13860))

(assert (=> b!7111356 (= e!4273688 e!4273684)))

(declare-fun b!7111357 () Bool)

(declare-fun e!4273686 () (Set Context!13860))

(declare-fun call!648983 () (Set Context!13860))

(assert (=> b!7111357 (= e!4273686 (set.union call!648987 call!648983))))

(declare-fun b!7111358 () Bool)

(declare-fun e!4273687 () (Set Context!13860))

(assert (=> b!7111358 (= e!4273687 e!4273686)))

(declare-fun c!1327227 () Bool)

(assert (=> b!7111358 (= c!1327227 (is-Union!17936 (regTwo!36384 r!11554)))))

(declare-fun d!2220328 () Bool)

(declare-fun c!1327226 () Bool)

(assert (=> d!2220328 (= c!1327226 (and (is-ElementMatch!17936 (regTwo!36384 r!11554)) (= (c!1327171 (regTwo!36384 r!11554)) a!1901)))))

(assert (=> d!2220328 (= (derivationStepZipperDown!2451 (regTwo!36384 r!11554) lt!2560018 a!1901) e!4273687)))

(declare-fun b!7111359 () Bool)

(declare-fun c!1327223 () Bool)

(declare-fun e!4273683 () Bool)

(assert (=> b!7111359 (= c!1327223 e!4273683)))

(declare-fun res!2902014 () Bool)

(assert (=> b!7111359 (=> (not res!2902014) (not e!4273683))))

(assert (=> b!7111359 (= res!2902014 (is-Concat!26781 (regTwo!36384 r!11554)))))

(assert (=> b!7111359 (= e!4273686 e!4273685)))

(declare-fun bm!648978 () Bool)

(assert (=> bm!648978 (= call!648986 call!648983)))

(declare-fun bm!648979 () Bool)

(assert (=> bm!648979 (= call!648987 (derivationStepZipperDown!2451 (ite c!1327227 (regOne!36385 (regTwo!36384 r!11554)) (regOne!36384 (regTwo!36384 r!11554))) (ite c!1327227 lt!2560018 (Context!13861 call!648982)) a!1901))))

(declare-fun b!7111360 () Bool)

(assert (=> b!7111360 (= e!4273683 (nullable!7573 (regOne!36384 (regTwo!36384 r!11554))))))

(declare-fun b!7111361 () Bool)

(assert (=> b!7111361 (= e!4273687 (set.insert lt!2560018 (as set.empty (Set Context!13860))))))

(declare-fun b!7111362 () Bool)

(assert (=> b!7111362 (= e!4273684 (as set.empty (Set Context!13860)))))

(declare-fun bm!648980 () Bool)

(declare-fun c!1327224 () Bool)

(assert (=> bm!648980 (= call!648982 ($colon$colon!2794 (exprs!7430 lt!2560018) (ite (or c!1327223 c!1327224) (regTwo!36384 (regTwo!36384 r!11554)) (regTwo!36384 r!11554))))))

(declare-fun bm!648981 () Bool)

(assert (=> bm!648981 (= call!648984 call!648986)))

(declare-fun b!7111363 () Bool)

(assert (=> b!7111363 (= e!4273685 e!4273688)))

(assert (=> b!7111363 (= c!1327224 (is-Concat!26781 (regTwo!36384 r!11554)))))

(declare-fun bm!648982 () Bool)

(assert (=> bm!648982 (= call!648983 (derivationStepZipperDown!2451 (ite c!1327227 (regTwo!36385 (regTwo!36384 r!11554)) (ite c!1327223 (regTwo!36384 (regTwo!36384 r!11554)) (ite c!1327224 (regOne!36384 (regTwo!36384 r!11554)) (reg!18265 (regTwo!36384 r!11554))))) (ite (or c!1327227 c!1327223) lt!2560018 (Context!13861 call!648985)) a!1901))))

(declare-fun b!7111364 () Bool)

(assert (=> b!7111364 (= e!4273688 call!648984)))

(assert (= (and d!2220328 c!1327226) b!7111361))

(assert (= (and d!2220328 (not c!1327226)) b!7111358))

(assert (= (and b!7111358 c!1327227) b!7111357))

(assert (= (and b!7111358 (not c!1327227)) b!7111359))

(assert (= (and b!7111359 res!2902014) b!7111360))

(assert (= (and b!7111359 c!1327223) b!7111354))

(assert (= (and b!7111359 (not c!1327223)) b!7111363))

(assert (= (and b!7111363 c!1327224) b!7111364))

(assert (= (and b!7111363 (not c!1327224)) b!7111356))

(assert (= (and b!7111356 c!1327225) b!7111355))

(assert (= (and b!7111356 (not c!1327225)) b!7111362))

(assert (= (or b!7111364 b!7111355) bm!648977))

(assert (= (or b!7111364 b!7111355) bm!648981))

(assert (= (or b!7111354 bm!648981) bm!648978))

(assert (= (or b!7111354 bm!648977) bm!648980))

(assert (= (or b!7111357 bm!648978) bm!648982))

(assert (= (or b!7111357 b!7111354) bm!648979))

(declare-fun m!7832602 () Bool)

(assert (=> bm!648979 m!7832602))

(assert (=> b!7111361 m!7832596))

(declare-fun m!7832604 () Bool)

(assert (=> bm!648982 m!7832604))

(declare-fun m!7832606 () Bool)

(assert (=> bm!648980 m!7832606))

(assert (=> b!7111360 m!7832536))

(assert (=> b!7111200 d!2220328))

(declare-fun b!7111365 () Bool)

(declare-fun e!4273691 () (Set Context!13860))

(declare-fun call!648993 () (Set Context!13860))

(declare-fun call!648992 () (Set Context!13860))

(assert (=> b!7111365 (= e!4273691 (set.union call!648993 call!648992))))

(declare-fun bm!648983 () Bool)

(declare-fun call!648991 () List!68897)

(declare-fun call!648988 () List!68897)

(assert (=> bm!648983 (= call!648991 call!648988)))

(declare-fun b!7111366 () Bool)

(declare-fun e!4273690 () (Set Context!13860))

(declare-fun call!648990 () (Set Context!13860))

(assert (=> b!7111366 (= e!4273690 call!648990)))

(declare-fun b!7111367 () Bool)

(declare-fun c!1327230 () Bool)

(assert (=> b!7111367 (= c!1327230 (is-Star!17936 (regOne!36384 r!11554)))))

(declare-fun e!4273694 () (Set Context!13860))

(assert (=> b!7111367 (= e!4273694 e!4273690)))

(declare-fun b!7111368 () Bool)

(declare-fun e!4273692 () (Set Context!13860))

(declare-fun call!648989 () (Set Context!13860))

(assert (=> b!7111368 (= e!4273692 (set.union call!648993 call!648989))))

(declare-fun b!7111369 () Bool)

(declare-fun e!4273693 () (Set Context!13860))

(assert (=> b!7111369 (= e!4273693 e!4273692)))

(declare-fun c!1327232 () Bool)

(assert (=> b!7111369 (= c!1327232 (is-Union!17936 (regOne!36384 r!11554)))))

(declare-fun d!2220330 () Bool)

(declare-fun c!1327231 () Bool)

(assert (=> d!2220330 (= c!1327231 (and (is-ElementMatch!17936 (regOne!36384 r!11554)) (= (c!1327171 (regOne!36384 r!11554)) a!1901)))))

(assert (=> d!2220330 (= (derivationStepZipperDown!2451 (regOne!36384 r!11554) (Context!13861 ($colon$colon!2794 lt!2560017 (regTwo!36384 r!11554))) a!1901) e!4273693)))

(declare-fun b!7111370 () Bool)

(declare-fun c!1327228 () Bool)

(declare-fun e!4273689 () Bool)

(assert (=> b!7111370 (= c!1327228 e!4273689)))

(declare-fun res!2902015 () Bool)

(assert (=> b!7111370 (=> (not res!2902015) (not e!4273689))))

(assert (=> b!7111370 (= res!2902015 (is-Concat!26781 (regOne!36384 r!11554)))))

(assert (=> b!7111370 (= e!4273692 e!4273691)))

(declare-fun bm!648984 () Bool)

(assert (=> bm!648984 (= call!648992 call!648989)))

(declare-fun bm!648985 () Bool)

(assert (=> bm!648985 (= call!648993 (derivationStepZipperDown!2451 (ite c!1327232 (regOne!36385 (regOne!36384 r!11554)) (regOne!36384 (regOne!36384 r!11554))) (ite c!1327232 (Context!13861 ($colon$colon!2794 lt!2560017 (regTwo!36384 r!11554))) (Context!13861 call!648988)) a!1901))))

(declare-fun b!7111371 () Bool)

(assert (=> b!7111371 (= e!4273689 (nullable!7573 (regOne!36384 (regOne!36384 r!11554))))))

(declare-fun b!7111372 () Bool)

(assert (=> b!7111372 (= e!4273693 (set.insert (Context!13861 ($colon$colon!2794 lt!2560017 (regTwo!36384 r!11554))) (as set.empty (Set Context!13860))))))

(declare-fun b!7111373 () Bool)

(assert (=> b!7111373 (= e!4273690 (as set.empty (Set Context!13860)))))

(declare-fun c!1327229 () Bool)

(declare-fun bm!648986 () Bool)

(assert (=> bm!648986 (= call!648988 ($colon$colon!2794 (exprs!7430 (Context!13861 ($colon$colon!2794 lt!2560017 (regTwo!36384 r!11554)))) (ite (or c!1327228 c!1327229) (regTwo!36384 (regOne!36384 r!11554)) (regOne!36384 r!11554))))))

(declare-fun bm!648987 () Bool)

(assert (=> bm!648987 (= call!648990 call!648992)))

(declare-fun b!7111374 () Bool)

(assert (=> b!7111374 (= e!4273691 e!4273694)))

(assert (=> b!7111374 (= c!1327229 (is-Concat!26781 (regOne!36384 r!11554)))))

(declare-fun bm!648988 () Bool)

(assert (=> bm!648988 (= call!648989 (derivationStepZipperDown!2451 (ite c!1327232 (regTwo!36385 (regOne!36384 r!11554)) (ite c!1327228 (regTwo!36384 (regOne!36384 r!11554)) (ite c!1327229 (regOne!36384 (regOne!36384 r!11554)) (reg!18265 (regOne!36384 r!11554))))) (ite (or c!1327232 c!1327228) (Context!13861 ($colon$colon!2794 lt!2560017 (regTwo!36384 r!11554))) (Context!13861 call!648991)) a!1901))))

(declare-fun b!7111375 () Bool)

(assert (=> b!7111375 (= e!4273694 call!648990)))

(assert (= (and d!2220330 c!1327231) b!7111372))

(assert (= (and d!2220330 (not c!1327231)) b!7111369))

(assert (= (and b!7111369 c!1327232) b!7111368))

(assert (= (and b!7111369 (not c!1327232)) b!7111370))

(assert (= (and b!7111370 res!2902015) b!7111371))

(assert (= (and b!7111370 c!1327228) b!7111365))

(assert (= (and b!7111370 (not c!1327228)) b!7111374))

(assert (= (and b!7111374 c!1327229) b!7111375))

(assert (= (and b!7111374 (not c!1327229)) b!7111367))

(assert (= (and b!7111367 c!1327230) b!7111366))

(assert (= (and b!7111367 (not c!1327230)) b!7111373))

(assert (= (or b!7111375 b!7111366) bm!648983))

(assert (= (or b!7111375 b!7111366) bm!648987))

(assert (= (or b!7111365 bm!648987) bm!648984))

(assert (= (or b!7111365 bm!648983) bm!648986))

(assert (= (or b!7111368 bm!648984) bm!648988))

(assert (= (or b!7111368 b!7111365) bm!648985))

(declare-fun m!7832608 () Bool)

(assert (=> bm!648985 m!7832608))

(declare-fun m!7832610 () Bool)

(assert (=> b!7111372 m!7832610))

(declare-fun m!7832612 () Bool)

(assert (=> bm!648988 m!7832612))

(declare-fun m!7832614 () Bool)

(assert (=> bm!648986 m!7832614))

(assert (=> b!7111371 m!7832524))

(assert (=> b!7111200 d!2220330))

(declare-fun d!2220332 () Bool)

(assert (=> d!2220332 (= ($colon$colon!2794 lt!2560017 (regTwo!36384 r!11554)) (Cons!68773 (regTwo!36384 r!11554) lt!2560017))))

(assert (=> b!7111200 d!2220332))

(declare-fun b!7111394 () Bool)

(declare-fun e!4273715 () Bool)

(declare-fun call!649004 () Bool)

(assert (=> b!7111394 (= e!4273715 call!649004)))

(declare-fun b!7111395 () Bool)

(declare-fun e!4273714 () Bool)

(declare-fun e!4273709 () Bool)

(assert (=> b!7111395 (= e!4273714 e!4273709)))

(declare-fun res!2902027 () Bool)

(assert (=> b!7111395 (= res!2902027 (not (nullable!7573 (reg!18265 r!11554))))))

(assert (=> b!7111395 (=> (not res!2902027) (not e!4273709))))

(declare-fun call!649005 () Bool)

(declare-fun c!1327237 () Bool)

(declare-fun bm!648999 () Bool)

(declare-fun c!1327238 () Bool)

(assert (=> bm!648999 (= call!649005 (validRegex!9209 (ite c!1327237 (reg!18265 r!11554) (ite c!1327238 (regTwo!36385 r!11554) (regOne!36384 r!11554)))))))

(declare-fun b!7111396 () Bool)

(declare-fun res!2902026 () Bool)

(declare-fun e!4273711 () Bool)

(assert (=> b!7111396 (=> res!2902026 e!4273711)))

(assert (=> b!7111396 (= res!2902026 (not (is-Concat!26781 r!11554)))))

(declare-fun e!4273712 () Bool)

(assert (=> b!7111396 (= e!4273712 e!4273711)))

(declare-fun b!7111397 () Bool)

(declare-fun e!4273710 () Bool)

(declare-fun call!649006 () Bool)

(assert (=> b!7111397 (= e!4273710 call!649006)))

(declare-fun b!7111398 () Bool)

(declare-fun e!4273713 () Bool)

(assert (=> b!7111398 (= e!4273713 e!4273714)))

(assert (=> b!7111398 (= c!1327237 (is-Star!17936 r!11554))))

(declare-fun d!2220334 () Bool)

(declare-fun res!2902030 () Bool)

(assert (=> d!2220334 (=> res!2902030 e!4273713)))

(assert (=> d!2220334 (= res!2902030 (is-ElementMatch!17936 r!11554))))

(assert (=> d!2220334 (= (validRegex!9209 r!11554) e!4273713)))

(declare-fun b!7111399 () Bool)

(declare-fun res!2902029 () Bool)

(assert (=> b!7111399 (=> (not res!2902029) (not e!4273715))))

(assert (=> b!7111399 (= res!2902029 call!649006)))

(assert (=> b!7111399 (= e!4273712 e!4273715)))

(declare-fun bm!649000 () Bool)

(assert (=> bm!649000 (= call!649004 call!649005)))

(declare-fun b!7111400 () Bool)

(assert (=> b!7111400 (= e!4273711 e!4273710)))

(declare-fun res!2902028 () Bool)

(assert (=> b!7111400 (=> (not res!2902028) (not e!4273710))))

(assert (=> b!7111400 (= res!2902028 call!649004)))

(declare-fun b!7111401 () Bool)

(assert (=> b!7111401 (= e!4273709 call!649005)))

(declare-fun bm!649001 () Bool)

(assert (=> bm!649001 (= call!649006 (validRegex!9209 (ite c!1327238 (regOne!36385 r!11554) (regTwo!36384 r!11554))))))

(declare-fun b!7111402 () Bool)

(assert (=> b!7111402 (= e!4273714 e!4273712)))

(assert (=> b!7111402 (= c!1327238 (is-Union!17936 r!11554))))

(assert (= (and d!2220334 (not res!2902030)) b!7111398))

(assert (= (and b!7111398 c!1327237) b!7111395))

(assert (= (and b!7111398 (not c!1327237)) b!7111402))

(assert (= (and b!7111395 res!2902027) b!7111401))

(assert (= (and b!7111402 c!1327238) b!7111399))

(assert (= (and b!7111402 (not c!1327238)) b!7111396))

(assert (= (and b!7111399 res!2902029) b!7111394))

(assert (= (and b!7111396 (not res!2902026)) b!7111400))

(assert (= (and b!7111400 res!2902028) b!7111397))

(assert (= (or b!7111399 b!7111397) bm!649001))

(assert (= (or b!7111394 b!7111400) bm!649000))

(assert (= (or b!7111401 bm!649000) bm!648999))

(declare-fun m!7832616 () Bool)

(assert (=> b!7111395 m!7832616))

(declare-fun m!7832618 () Bool)

(assert (=> bm!648999 m!7832618))

(declare-fun m!7832620 () Bool)

(assert (=> bm!649001 m!7832620))

(assert (=> start!692190 d!2220334))

(declare-fun bs!1885194 () Bool)

(declare-fun d!2220336 () Bool)

(assert (= bs!1885194 (and d!2220336 b!7111194)))

(declare-fun lambda!432064 () Int)

(assert (=> bs!1885194 (= lambda!432064 lambda!432029)))

(declare-fun bs!1885195 () Bool)

(assert (= bs!1885195 (and d!2220336 d!2220290)))

(assert (=> bs!1885195 (= lambda!432064 lambda!432052)))

(declare-fun bs!1885196 () Bool)

(assert (= bs!1885196 (and d!2220336 d!2220298)))

(assert (=> bs!1885196 (= lambda!432064 lambda!432058)))

(declare-fun bs!1885197 () Bool)

(assert (= bs!1885197 (and d!2220336 d!2220322)))

(assert (=> bs!1885197 (= lambda!432064 lambda!432063)))

(assert (=> d!2220336 (= (inv!87704 c!9994) (forall!16836 (exprs!7430 c!9994) lambda!432064))))

(declare-fun bs!1885198 () Bool)

(assert (= bs!1885198 d!2220336))

(declare-fun m!7832622 () Bool)

(assert (=> bs!1885198 m!7832622))

(assert (=> start!692190 d!2220336))

(declare-fun bs!1885199 () Bool)

(declare-fun d!2220338 () Bool)

(assert (= bs!1885199 (and d!2220338 d!2220336)))

(declare-fun lambda!432065 () Int)

(assert (=> bs!1885199 (= lambda!432065 lambda!432064)))

(declare-fun bs!1885200 () Bool)

(assert (= bs!1885200 (and d!2220338 d!2220322)))

(assert (=> bs!1885200 (= lambda!432065 lambda!432063)))

(declare-fun bs!1885201 () Bool)

(assert (= bs!1885201 (and d!2220338 b!7111194)))

(assert (=> bs!1885201 (= lambda!432065 lambda!432029)))

(declare-fun bs!1885202 () Bool)

(assert (= bs!1885202 (and d!2220338 d!2220298)))

(assert (=> bs!1885202 (= lambda!432065 lambda!432058)))

(declare-fun bs!1885203 () Bool)

(assert (= bs!1885203 (and d!2220338 d!2220290)))

(assert (=> bs!1885203 (= lambda!432065 lambda!432052)))

(assert (=> d!2220338 (= (inv!87704 auxCtx!45) (forall!16836 (exprs!7430 auxCtx!45) lambda!432065))))

(declare-fun bs!1885204 () Bool)

(assert (= bs!1885204 d!2220338))

(declare-fun m!7832624 () Bool)

(assert (=> bs!1885204 m!7832624))

(assert (=> start!692190 d!2220338))

(declare-fun b!7111403 () Bool)

(declare-fun e!4273722 () Bool)

(declare-fun call!649007 () Bool)

(assert (=> b!7111403 (= e!4273722 call!649007)))

(declare-fun b!7111404 () Bool)

(declare-fun e!4273721 () Bool)

(declare-fun e!4273716 () Bool)

(assert (=> b!7111404 (= e!4273721 e!4273716)))

(declare-fun res!2902032 () Bool)

(assert (=> b!7111404 (= res!2902032 (not (nullable!7573 (reg!18265 (regTwo!36384 r!11554)))))))

(assert (=> b!7111404 (=> (not res!2902032) (not e!4273716))))

(declare-fun c!1327240 () Bool)

(declare-fun bm!649002 () Bool)

(declare-fun c!1327239 () Bool)

(declare-fun call!649008 () Bool)

(assert (=> bm!649002 (= call!649008 (validRegex!9209 (ite c!1327239 (reg!18265 (regTwo!36384 r!11554)) (ite c!1327240 (regTwo!36385 (regTwo!36384 r!11554)) (regOne!36384 (regTwo!36384 r!11554))))))))

(declare-fun b!7111405 () Bool)

(declare-fun res!2902031 () Bool)

(declare-fun e!4273718 () Bool)

(assert (=> b!7111405 (=> res!2902031 e!4273718)))

(assert (=> b!7111405 (= res!2902031 (not (is-Concat!26781 (regTwo!36384 r!11554))))))

(declare-fun e!4273719 () Bool)

(assert (=> b!7111405 (= e!4273719 e!4273718)))

(declare-fun b!7111406 () Bool)

(declare-fun e!4273717 () Bool)

(declare-fun call!649009 () Bool)

(assert (=> b!7111406 (= e!4273717 call!649009)))

(declare-fun b!7111407 () Bool)

(declare-fun e!4273720 () Bool)

(assert (=> b!7111407 (= e!4273720 e!4273721)))

(assert (=> b!7111407 (= c!1327239 (is-Star!17936 (regTwo!36384 r!11554)))))

(declare-fun d!2220340 () Bool)

(declare-fun res!2902035 () Bool)

(assert (=> d!2220340 (=> res!2902035 e!4273720)))

(assert (=> d!2220340 (= res!2902035 (is-ElementMatch!17936 (regTwo!36384 r!11554)))))

(assert (=> d!2220340 (= (validRegex!9209 (regTwo!36384 r!11554)) e!4273720)))

(declare-fun b!7111408 () Bool)

(declare-fun res!2902034 () Bool)

(assert (=> b!7111408 (=> (not res!2902034) (not e!4273722))))

(assert (=> b!7111408 (= res!2902034 call!649009)))

(assert (=> b!7111408 (= e!4273719 e!4273722)))

(declare-fun bm!649003 () Bool)

(assert (=> bm!649003 (= call!649007 call!649008)))

(declare-fun b!7111409 () Bool)

(assert (=> b!7111409 (= e!4273718 e!4273717)))

(declare-fun res!2902033 () Bool)

(assert (=> b!7111409 (=> (not res!2902033) (not e!4273717))))

(assert (=> b!7111409 (= res!2902033 call!649007)))

(declare-fun b!7111410 () Bool)

(assert (=> b!7111410 (= e!4273716 call!649008)))

(declare-fun bm!649004 () Bool)

(assert (=> bm!649004 (= call!649009 (validRegex!9209 (ite c!1327240 (regOne!36385 (regTwo!36384 r!11554)) (regTwo!36384 (regTwo!36384 r!11554)))))))

(declare-fun b!7111411 () Bool)

(assert (=> b!7111411 (= e!4273721 e!4273719)))

(assert (=> b!7111411 (= c!1327240 (is-Union!17936 (regTwo!36384 r!11554)))))

(assert (= (and d!2220340 (not res!2902035)) b!7111407))

(assert (= (and b!7111407 c!1327239) b!7111404))

(assert (= (and b!7111407 (not c!1327239)) b!7111411))

(assert (= (and b!7111404 res!2902032) b!7111410))

(assert (= (and b!7111411 c!1327240) b!7111408))

(assert (= (and b!7111411 (not c!1327240)) b!7111405))

(assert (= (and b!7111408 res!2902034) b!7111403))

(assert (= (and b!7111405 (not res!2902031)) b!7111409))

(assert (= (and b!7111409 res!2902033) b!7111406))

(assert (= (or b!7111408 b!7111406) bm!649004))

(assert (= (or b!7111403 b!7111409) bm!649003))

(assert (= (or b!7111410 bm!649003) bm!649002))

(declare-fun m!7832626 () Bool)

(assert (=> b!7111404 m!7832626))

(declare-fun m!7832628 () Bool)

(assert (=> bm!649002 m!7832628))

(declare-fun m!7832630 () Bool)

(assert (=> bm!649004 m!7832630))

(assert (=> b!7111194 d!2220340))

(assert (=> b!7111194 d!2220288))

(declare-fun b!7111412 () Bool)

(declare-fun e!4273724 () List!68897)

(assert (=> b!7111412 (= e!4273724 (exprs!7430 auxCtx!45))))

(declare-fun e!4273723 () Bool)

(declare-fun b!7111415 () Bool)

(declare-fun lt!2560105 () List!68897)

(assert (=> b!7111415 (= e!4273723 (or (not (= (exprs!7430 auxCtx!45) Nil!68773)) (= lt!2560105 (exprs!7430 c!9994))))))

(declare-fun d!2220342 () Bool)

(assert (=> d!2220342 e!4273723))

(declare-fun res!2902037 () Bool)

(assert (=> d!2220342 (=> (not res!2902037) (not e!4273723))))

(assert (=> d!2220342 (= res!2902037 (= (content!14021 lt!2560105) (set.union (content!14021 (exprs!7430 c!9994)) (content!14021 (exprs!7430 auxCtx!45)))))))

(assert (=> d!2220342 (= lt!2560105 e!4273724)))

(declare-fun c!1327241 () Bool)

(assert (=> d!2220342 (= c!1327241 (is-Nil!68773 (exprs!7430 c!9994)))))

(assert (=> d!2220342 (= (++!16088 (exprs!7430 c!9994) (exprs!7430 auxCtx!45)) lt!2560105)))

(declare-fun b!7111413 () Bool)

(assert (=> b!7111413 (= e!4273724 (Cons!68773 (h!75221 (exprs!7430 c!9994)) (++!16088 (t!382730 (exprs!7430 c!9994)) (exprs!7430 auxCtx!45))))))

(declare-fun b!7111414 () Bool)

(declare-fun res!2902036 () Bool)

(assert (=> b!7111414 (=> (not res!2902036) (not e!4273723))))

(assert (=> b!7111414 (= res!2902036 (= (size!41396 lt!2560105) (+ (size!41396 (exprs!7430 c!9994)) (size!41396 (exprs!7430 auxCtx!45)))))))

(assert (= (and d!2220342 c!1327241) b!7111412))

(assert (= (and d!2220342 (not c!1327241)) b!7111413))

(assert (= (and d!2220342 res!2902037) b!7111414))

(assert (= (and b!7111414 res!2902036) b!7111415))

(declare-fun m!7832632 () Bool)

(assert (=> d!2220342 m!7832632))

(declare-fun m!7832634 () Bool)

(assert (=> d!2220342 m!7832634))

(assert (=> d!2220342 m!7832550))

(declare-fun m!7832636 () Bool)

(assert (=> b!7111413 m!7832636))

(declare-fun m!7832638 () Bool)

(assert (=> b!7111414 m!7832638))

(declare-fun m!7832640 () Bool)

(assert (=> b!7111414 m!7832640))

(assert (=> b!7111414 m!7832558))

(assert (=> b!7111194 d!2220342))

(declare-fun e!4273728 () Bool)

(assert (=> b!7111198 (= tp!1956215 e!4273728)))

(declare-fun b!7111427 () Bool)

(declare-fun tp!1956254 () Bool)

(declare-fun tp!1956253 () Bool)

(assert (=> b!7111427 (= e!4273728 (and tp!1956254 tp!1956253))))

(declare-fun b!7111429 () Bool)

(declare-fun tp!1956257 () Bool)

(declare-fun tp!1956255 () Bool)

(assert (=> b!7111429 (= e!4273728 (and tp!1956257 tp!1956255))))

(declare-fun b!7111428 () Bool)

(declare-fun tp!1956256 () Bool)

(assert (=> b!7111428 (= e!4273728 tp!1956256)))

(declare-fun b!7111426 () Bool)

(assert (=> b!7111426 (= e!4273728 tp_is_empty!45105)))

(assert (= (and b!7111198 (is-ElementMatch!17936 (regOne!36385 r!11554))) b!7111426))

(assert (= (and b!7111198 (is-Concat!26781 (regOne!36385 r!11554))) b!7111427))

(assert (= (and b!7111198 (is-Star!17936 (regOne!36385 r!11554))) b!7111428))

(assert (= (and b!7111198 (is-Union!17936 (regOne!36385 r!11554))) b!7111429))

(declare-fun e!4273734 () Bool)

(assert (=> b!7111198 (= tp!1956219 e!4273734)))

(declare-fun b!7111442 () Bool)

(declare-fun tp!1956259 () Bool)

(declare-fun tp!1956258 () Bool)

(assert (=> b!7111442 (= e!4273734 (and tp!1956259 tp!1956258))))

(declare-fun b!7111444 () Bool)

(declare-fun tp!1956262 () Bool)

(declare-fun tp!1956260 () Bool)

(assert (=> b!7111444 (= e!4273734 (and tp!1956262 tp!1956260))))

(declare-fun b!7111443 () Bool)

(declare-fun tp!1956261 () Bool)

(assert (=> b!7111443 (= e!4273734 tp!1956261)))

(declare-fun b!7111441 () Bool)

(assert (=> b!7111441 (= e!4273734 tp_is_empty!45105)))

(assert (= (and b!7111198 (is-ElementMatch!17936 (regTwo!36385 r!11554))) b!7111441))

(assert (= (and b!7111198 (is-Concat!26781 (regTwo!36385 r!11554))) b!7111442))

(assert (= (and b!7111198 (is-Star!17936 (regTwo!36385 r!11554))) b!7111443))

(assert (= (and b!7111198 (is-Union!17936 (regTwo!36385 r!11554))) b!7111444))

(declare-fun b!7111449 () Bool)

(declare-fun e!4273737 () Bool)

(declare-fun tp!1956267 () Bool)

(declare-fun tp!1956268 () Bool)

(assert (=> b!7111449 (= e!4273737 (and tp!1956267 tp!1956268))))

(assert (=> b!7111192 (= tp!1956221 e!4273737)))

(assert (= (and b!7111192 (is-Cons!68773 (exprs!7430 c!9994))) b!7111449))

(declare-fun e!4273738 () Bool)

(assert (=> b!7111191 (= tp!1956216 e!4273738)))

(declare-fun b!7111451 () Bool)

(declare-fun tp!1956270 () Bool)

(declare-fun tp!1956269 () Bool)

(assert (=> b!7111451 (= e!4273738 (and tp!1956270 tp!1956269))))

(declare-fun b!7111453 () Bool)

(declare-fun tp!1956273 () Bool)

(declare-fun tp!1956271 () Bool)

(assert (=> b!7111453 (= e!4273738 (and tp!1956273 tp!1956271))))

(declare-fun b!7111452 () Bool)

(declare-fun tp!1956272 () Bool)

(assert (=> b!7111452 (= e!4273738 tp!1956272)))

(declare-fun b!7111450 () Bool)

(assert (=> b!7111450 (= e!4273738 tp_is_empty!45105)))

(assert (= (and b!7111191 (is-ElementMatch!17936 (regOne!36384 r!11554))) b!7111450))

(assert (= (and b!7111191 (is-Concat!26781 (regOne!36384 r!11554))) b!7111451))

(assert (= (and b!7111191 (is-Star!17936 (regOne!36384 r!11554))) b!7111452))

(assert (= (and b!7111191 (is-Union!17936 (regOne!36384 r!11554))) b!7111453))

(declare-fun e!4273739 () Bool)

(assert (=> b!7111191 (= tp!1956218 e!4273739)))

(declare-fun b!7111455 () Bool)

(declare-fun tp!1956275 () Bool)

(declare-fun tp!1956274 () Bool)

(assert (=> b!7111455 (= e!4273739 (and tp!1956275 tp!1956274))))

(declare-fun b!7111457 () Bool)

(declare-fun tp!1956278 () Bool)

(declare-fun tp!1956276 () Bool)

(assert (=> b!7111457 (= e!4273739 (and tp!1956278 tp!1956276))))

(declare-fun b!7111456 () Bool)

(declare-fun tp!1956277 () Bool)

(assert (=> b!7111456 (= e!4273739 tp!1956277)))

(declare-fun b!7111454 () Bool)

(assert (=> b!7111454 (= e!4273739 tp_is_empty!45105)))

(assert (= (and b!7111191 (is-ElementMatch!17936 (regTwo!36384 r!11554))) b!7111454))

(assert (= (and b!7111191 (is-Concat!26781 (regTwo!36384 r!11554))) b!7111455))

(assert (= (and b!7111191 (is-Star!17936 (regTwo!36384 r!11554))) b!7111456))

(assert (= (and b!7111191 (is-Union!17936 (regTwo!36384 r!11554))) b!7111457))

(declare-fun e!4273740 () Bool)

(assert (=> b!7111195 (= tp!1956217 e!4273740)))

(declare-fun b!7111459 () Bool)

(declare-fun tp!1956280 () Bool)

(declare-fun tp!1956279 () Bool)

(assert (=> b!7111459 (= e!4273740 (and tp!1956280 tp!1956279))))

(declare-fun b!7111461 () Bool)

(declare-fun tp!1956283 () Bool)

(declare-fun tp!1956281 () Bool)

(assert (=> b!7111461 (= e!4273740 (and tp!1956283 tp!1956281))))

(declare-fun b!7111460 () Bool)

(declare-fun tp!1956282 () Bool)

(assert (=> b!7111460 (= e!4273740 tp!1956282)))

(declare-fun b!7111458 () Bool)

(assert (=> b!7111458 (= e!4273740 tp_is_empty!45105)))

(assert (= (and b!7111195 (is-ElementMatch!17936 (reg!18265 r!11554))) b!7111458))

(assert (= (and b!7111195 (is-Concat!26781 (reg!18265 r!11554))) b!7111459))

(assert (= (and b!7111195 (is-Star!17936 (reg!18265 r!11554))) b!7111460))

(assert (= (and b!7111195 (is-Union!17936 (reg!18265 r!11554))) b!7111461))

(declare-fun b!7111462 () Bool)

(declare-fun e!4273741 () Bool)

(declare-fun tp!1956284 () Bool)

(declare-fun tp!1956285 () Bool)

(assert (=> b!7111462 (= e!4273741 (and tp!1956284 tp!1956285))))

(assert (=> b!7111199 (= tp!1956220 e!4273741)))

(assert (= (and b!7111199 (is-Cons!68773 (exprs!7430 auxCtx!45))) b!7111462))

(push 1)

(assert (not b!7111452))

(assert (not b!7111360))

(assert (not bm!648950))

(assert (not b!7111427))

(assert (not d!2220286))

(assert (not b!7111282))

(assert (not d!2220324))

(assert (not b!7111413))

(assert (not bm!648972))

(assert (not b!7111414))

(assert (not b!7111443))

(assert (not d!2220294))

(assert (not bm!648948))

(assert (not bm!648959))

(assert (not bm!648941))

(assert (not bm!649004))

(assert (not d!2220342))

(assert (not b!7111456))

(assert (not d!2220316))

(assert (not bm!648970))

(assert (not bm!648988))

(assert (not d!2220298))

(assert (not b!7111320))

(assert (not b!7111455))

(assert (not bm!649001))

(assert (not b!7111271))

(assert (not b!7111444))

(assert (not b!7111453))

(assert (not d!2220290))

(assert (not b!7111305))

(assert (not bm!648953))

(assert (not d!2220304))

(assert (not b!7111428))

(assert (not bm!648947))

(assert (not b!7111296))

(assert (not b!7111462))

(assert (not b!7111457))

(assert (not bm!648960))

(assert (not bm!648979))

(assert (not bm!648956))

(assert (not b!7111349))

(assert (not bm!648980))

(assert (not d!2220338))

(assert (not d!2220288))

(assert (not d!2220308))

(assert (not d!2220312))

(assert (not b!7111404))

(assert (not bm!648962))

(assert (not d!2220314))

(assert (not bm!648942))

(assert (not bm!648999))

(assert (not b!7111459))

(assert tp_is_empty!45105)

(assert (not b!7111451))

(assert (not b!7111429))

(assert (not bm!648985))

(assert (not b!7111371))

(assert (not bm!648954))

(assert (not b!7111461))

(assert (not bm!648969))

(assert (not d!2220302))

(assert (not b!7111449))

(assert (not b!7111442))

(assert (not d!2220322))

(assert (not b!7111297))

(assert (not d!2220320))

(assert (not bm!648982))

(assert (not bm!648986))

(assert (not d!2220336))

(assert (not b!7111460))

(assert (not bm!648944))

(assert (not b!7111395))

(assert (not bm!649002))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

