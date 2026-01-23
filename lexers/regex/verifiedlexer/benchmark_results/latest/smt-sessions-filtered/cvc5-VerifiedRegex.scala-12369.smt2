; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692870 () Bool)

(assert start!692870)

(declare-fun b!7119151 () Bool)

(declare-fun e!4277681 () Bool)

(declare-fun e!4277683 () Bool)

(assert (=> b!7119151 (= e!4277681 e!4277683)))

(declare-fun res!2904286 () Bool)

(assert (=> b!7119151 (=> (not res!2904286) (not e!4277683))))

(declare-datatypes ((C!36230 0))(
  ( (C!36231 (val!27821 Int)) )
))
(declare-datatypes ((Regex!17980 0))(
  ( (ElementMatch!17980 (c!1328567 C!36230)) (Concat!26825 (regOne!36472 Regex!17980) (regTwo!36472 Regex!17980)) (EmptyExpr!17980) (Star!17980 (reg!18309 Regex!17980)) (EmptyLang!17980) (Union!17980 (regOne!36473 Regex!17980) (regTwo!36473 Regex!17980)) )
))
(declare-fun r!11554 () Regex!17980)

(declare-fun validRegex!9253 (Regex!17980) Bool)

(assert (=> b!7119151 (= res!2904286 (validRegex!9253 r!11554))))

(declare-datatypes ((List!68941 0))(
  ( (Nil!68817) (Cons!68817 (h!75265 Regex!17980) (t!382800 List!68941)) )
))
(declare-fun lt!2561039 () List!68941)

(declare-datatypes ((Context!13948 0))(
  ( (Context!13949 (exprs!7474 List!68941)) )
))
(declare-fun c!9994 () Context!13948)

(declare-fun auxCtx!45 () Context!13948)

(declare-fun ++!16132 (List!68941 List!68941) List!68941)

(assert (=> b!7119151 (= lt!2561039 (++!16132 (exprs!7474 c!9994) (exprs!7474 auxCtx!45)))))

(declare-fun lambda!432562 () Int)

(declare-datatypes ((Unit!162631 0))(
  ( (Unit!162632) )
))
(declare-fun lt!2561041 () Unit!162631)

(declare-fun lemmaConcatPreservesForall!1265 (List!68941 List!68941 Int) Unit!162631)

(assert (=> b!7119151 (= lt!2561041 (lemmaConcatPreservesForall!1265 (exprs!7474 c!9994) (exprs!7474 auxCtx!45) lambda!432562))))

(declare-fun lt!2561045 () Unit!162631)

(assert (=> b!7119151 (= lt!2561045 (lemmaConcatPreservesForall!1265 (exprs!7474 c!9994) (exprs!7474 auxCtx!45) lambda!432562))))

(declare-fun b!7119152 () Bool)

(declare-fun res!2904285 () Bool)

(assert (=> b!7119152 (=> (not res!2904285) (not e!4277681))))

(declare-fun a!1901 () C!36230)

(assert (=> b!7119152 (= res!2904285 (and (or (not (is-ElementMatch!17980 r!11554)) (not (= (c!1328567 r!11554) a!1901))) (not (is-Union!17980 r!11554))))))

(declare-fun b!7119153 () Bool)

(declare-fun res!2904289 () Bool)

(assert (=> b!7119153 (=> (not res!2904289) (not e!4277681))))

(declare-fun e!4277687 () Bool)

(assert (=> b!7119153 (= res!2904289 e!4277687)))

(declare-fun res!2904288 () Bool)

(assert (=> b!7119153 (=> res!2904288 e!4277687)))

(assert (=> b!7119153 (= res!2904288 (not (is-Concat!26825 r!11554)))))

(declare-fun lt!2561042 () (Set Context!13948))

(declare-fun e!4277686 () Bool)

(declare-fun b!7119154 () Bool)

(declare-fun appendTo!945 ((Set Context!13948) Context!13948) (Set Context!13948))

(declare-fun derivationStepZipperDown!2477 (Regex!17980 Context!13948 C!36230) (Set Context!13948))

(assert (=> b!7119154 (= e!4277686 (not (= lt!2561042 (appendTo!945 (derivationStepZipperDown!2477 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2561047 () Unit!162631)

(assert (=> b!7119154 (= lt!2561047 (lemmaConcatPreservesForall!1265 (exprs!7474 c!9994) (exprs!7474 auxCtx!45) lambda!432562))))

(declare-fun lt!2561044 () List!68941)

(declare-fun lt!2561043 () Context!13948)

(assert (=> b!7119154 (= (derivationStepZipperDown!2477 (reg!18309 r!11554) (Context!13949 (++!16132 lt!2561044 (exprs!7474 auxCtx!45))) a!1901) (appendTo!945 (derivationStepZipperDown!2477 (reg!18309 r!11554) lt!2561043 a!1901) auxCtx!45))))

(declare-fun lt!2561040 () Unit!162631)

(assert (=> b!7119154 (= lt!2561040 (lemmaConcatPreservesForall!1265 lt!2561044 (exprs!7474 auxCtx!45) lambda!432562))))

(declare-fun lt!2561046 () Unit!162631)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!243 (Context!13948 Regex!17980 C!36230 Context!13948) Unit!162631)

(assert (=> b!7119154 (= lt!2561046 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!243 lt!2561043 (reg!18309 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7119154 (= lt!2561043 (Context!13949 lt!2561044))))

(declare-fun $colon$colon!2824 (List!68941 Regex!17980) List!68941)

(assert (=> b!7119154 (= lt!2561044 ($colon$colon!2824 (exprs!7474 c!9994) r!11554))))

(declare-fun b!7119155 () Bool)

(declare-fun res!2904283 () Bool)

(assert (=> b!7119155 (=> (not res!2904283) (not e!4277681))))

(assert (=> b!7119155 (= res!2904283 (and (not (is-Concat!26825 r!11554)) (is-Star!17980 r!11554)))))

(declare-fun res!2904287 () Bool)

(assert (=> start!692870 (=> (not res!2904287) (not e!4277681))))

(assert (=> start!692870 (= res!2904287 (validRegex!9253 r!11554))))

(assert (=> start!692870 e!4277681))

(declare-fun e!4277684 () Bool)

(assert (=> start!692870 e!4277684))

(declare-fun tp_is_empty!45193 () Bool)

(assert (=> start!692870 tp_is_empty!45193))

(declare-fun e!4277685 () Bool)

(declare-fun inv!87814 (Context!13948) Bool)

(assert (=> start!692870 (and (inv!87814 c!9994) e!4277685)))

(declare-fun e!4277682 () Bool)

(assert (=> start!692870 (and (inv!87814 auxCtx!45) e!4277682)))

(declare-fun b!7119156 () Bool)

(declare-fun nullable!7617 (Regex!17980) Bool)

(assert (=> b!7119156 (= e!4277687 (not (nullable!7617 (regOne!36472 r!11554))))))

(declare-fun b!7119157 () Bool)

(declare-fun tp!1959803 () Bool)

(declare-fun tp!1959804 () Bool)

(assert (=> b!7119157 (= e!4277684 (and tp!1959803 tp!1959804))))

(declare-fun b!7119158 () Bool)

(assert (=> b!7119158 (= e!4277683 e!4277686)))

(declare-fun res!2904284 () Bool)

(assert (=> b!7119158 (=> (not res!2904284) (not e!4277686))))

(assert (=> b!7119158 (= res!2904284 (= lt!2561042 (derivationStepZipperDown!2477 (reg!18309 r!11554) (Context!13949 ($colon$colon!2824 lt!2561039 r!11554)) a!1901)))))

(assert (=> b!7119158 (= lt!2561042 (derivationStepZipperDown!2477 r!11554 (Context!13949 lt!2561039) a!1901))))

(declare-fun b!7119159 () Bool)

(declare-fun tp!1959802 () Bool)

(declare-fun tp!1959799 () Bool)

(assert (=> b!7119159 (= e!4277684 (and tp!1959802 tp!1959799))))

(declare-fun b!7119160 () Bool)

(declare-fun tp!1959801 () Bool)

(assert (=> b!7119160 (= e!4277682 tp!1959801)))

(declare-fun b!7119161 () Bool)

(assert (=> b!7119161 (= e!4277684 tp_is_empty!45193)))

(declare-fun b!7119162 () Bool)

(declare-fun tp!1959805 () Bool)

(assert (=> b!7119162 (= e!4277685 tp!1959805)))

(declare-fun b!7119163 () Bool)

(declare-fun tp!1959800 () Bool)

(assert (=> b!7119163 (= e!4277684 tp!1959800)))

(assert (= (and start!692870 res!2904287) b!7119152))

(assert (= (and b!7119152 res!2904285) b!7119153))

(assert (= (and b!7119153 (not res!2904288)) b!7119156))

(assert (= (and b!7119153 res!2904289) b!7119155))

(assert (= (and b!7119155 res!2904283) b!7119151))

(assert (= (and b!7119151 res!2904286) b!7119158))

(assert (= (and b!7119158 res!2904284) b!7119154))

(assert (= (and start!692870 (is-ElementMatch!17980 r!11554)) b!7119161))

(assert (= (and start!692870 (is-Concat!26825 r!11554)) b!7119157))

(assert (= (and start!692870 (is-Star!17980 r!11554)) b!7119163))

(assert (= (and start!692870 (is-Union!17980 r!11554)) b!7119159))

(assert (= start!692870 b!7119162))

(assert (= start!692870 b!7119160))

(declare-fun m!7836600 () Bool)

(assert (=> b!7119154 m!7836600))

(declare-fun m!7836602 () Bool)

(assert (=> b!7119154 m!7836602))

(declare-fun m!7836604 () Bool)

(assert (=> b!7119154 m!7836604))

(declare-fun m!7836606 () Bool)

(assert (=> b!7119154 m!7836606))

(declare-fun m!7836608 () Bool)

(assert (=> b!7119154 m!7836608))

(assert (=> b!7119154 m!7836604))

(declare-fun m!7836610 () Bool)

(assert (=> b!7119154 m!7836610))

(declare-fun m!7836612 () Bool)

(assert (=> b!7119154 m!7836612))

(declare-fun m!7836614 () Bool)

(assert (=> b!7119154 m!7836614))

(assert (=> b!7119154 m!7836600))

(declare-fun m!7836616 () Bool)

(assert (=> b!7119154 m!7836616))

(declare-fun m!7836618 () Bool)

(assert (=> b!7119154 m!7836618))

(declare-fun m!7836620 () Bool)

(assert (=> start!692870 m!7836620))

(declare-fun m!7836622 () Bool)

(assert (=> start!692870 m!7836622))

(declare-fun m!7836624 () Bool)

(assert (=> start!692870 m!7836624))

(declare-fun m!7836626 () Bool)

(assert (=> b!7119156 m!7836626))

(assert (=> b!7119151 m!7836620))

(declare-fun m!7836628 () Bool)

(assert (=> b!7119151 m!7836628))

(assert (=> b!7119151 m!7836602))

(assert (=> b!7119151 m!7836602))

(declare-fun m!7836630 () Bool)

(assert (=> b!7119158 m!7836630))

(declare-fun m!7836632 () Bool)

(assert (=> b!7119158 m!7836632))

(declare-fun m!7836634 () Bool)

(assert (=> b!7119158 m!7836634))

(push 1)

(assert (not b!7119157))

(assert (not b!7119159))

(assert (not b!7119162))

(assert (not b!7119156))

(assert (not b!7119158))

(assert (not b!7119151))

(assert tp_is_empty!45193)

(assert (not b!7119160))

(assert (not b!7119163))

(assert (not start!692870))

(assert (not b!7119154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2221636 () Bool)

(declare-fun e!4277724 () Bool)

(assert (=> d!2221636 e!4277724))

(declare-fun res!2904322 () Bool)

(assert (=> d!2221636 (=> (not res!2904322) (not e!4277724))))

(declare-fun lt!2561077 () List!68941)

(declare-fun content!14052 (List!68941) (Set Regex!17980))

(assert (=> d!2221636 (= res!2904322 (= (content!14052 lt!2561077) (set.union (content!14052 lt!2561044) (content!14052 (exprs!7474 auxCtx!45)))))))

(declare-fun e!4277723 () List!68941)

(assert (=> d!2221636 (= lt!2561077 e!4277723)))

(declare-fun c!1328575 () Bool)

(assert (=> d!2221636 (= c!1328575 (is-Nil!68817 lt!2561044))))

(assert (=> d!2221636 (= (++!16132 lt!2561044 (exprs!7474 auxCtx!45)) lt!2561077)))

(declare-fun b!7119225 () Bool)

(assert (=> b!7119225 (= e!4277723 (exprs!7474 auxCtx!45))))

(declare-fun b!7119227 () Bool)

(declare-fun res!2904321 () Bool)

(assert (=> b!7119227 (=> (not res!2904321) (not e!4277724))))

(declare-fun size!41427 (List!68941) Int)

(assert (=> b!7119227 (= res!2904321 (= (size!41427 lt!2561077) (+ (size!41427 lt!2561044) (size!41427 (exprs!7474 auxCtx!45)))))))

(declare-fun b!7119228 () Bool)

(assert (=> b!7119228 (= e!4277724 (or (not (= (exprs!7474 auxCtx!45) Nil!68817)) (= lt!2561077 lt!2561044)))))

(declare-fun b!7119226 () Bool)

(assert (=> b!7119226 (= e!4277723 (Cons!68817 (h!75265 lt!2561044) (++!16132 (t!382800 lt!2561044) (exprs!7474 auxCtx!45))))))

(assert (= (and d!2221636 c!1328575) b!7119225))

(assert (= (and d!2221636 (not c!1328575)) b!7119226))

(assert (= (and d!2221636 res!2904322) b!7119227))

(assert (= (and b!7119227 res!2904321) b!7119228))

(declare-fun m!7836672 () Bool)

(assert (=> d!2221636 m!7836672))

(declare-fun m!7836674 () Bool)

(assert (=> d!2221636 m!7836674))

(declare-fun m!7836676 () Bool)

(assert (=> d!2221636 m!7836676))

(declare-fun m!7836678 () Bool)

(assert (=> b!7119227 m!7836678))

(declare-fun m!7836680 () Bool)

(assert (=> b!7119227 m!7836680))

(declare-fun m!7836682 () Bool)

(assert (=> b!7119227 m!7836682))

(declare-fun m!7836684 () Bool)

(assert (=> b!7119226 m!7836684))

(assert (=> b!7119154 d!2221636))

(declare-fun b!7119264 () Bool)

(declare-fun e!4277753 () (Set Context!13948))

(declare-fun call!650398 () (Set Context!13948))

(assert (=> b!7119264 (= e!4277753 call!650398)))

(declare-fun b!7119265 () Bool)

(declare-fun e!4277748 () (Set Context!13948))

(declare-fun e!4277751 () (Set Context!13948))

(assert (=> b!7119265 (= e!4277748 e!4277751)))

(declare-fun c!1328592 () Bool)

(assert (=> b!7119265 (= c!1328592 (is-Concat!26825 (reg!18309 r!11554)))))

(declare-fun bm!650392 () Bool)

(declare-fun call!650400 () (Set Context!13948))

(declare-fun call!650402 () (Set Context!13948))

(assert (=> bm!650392 (= call!650400 call!650402)))

(declare-fun b!7119266 () Bool)

(declare-fun e!4277749 () (Set Context!13948))

(declare-fun e!4277750 () (Set Context!13948))

(assert (=> b!7119266 (= e!4277749 e!4277750)))

(declare-fun c!1328590 () Bool)

(assert (=> b!7119266 (= c!1328590 (is-Union!17980 (reg!18309 r!11554)))))

(declare-fun d!2221640 () Bool)

(declare-fun c!1328591 () Bool)

(assert (=> d!2221640 (= c!1328591 (and (is-ElementMatch!17980 (reg!18309 r!11554)) (= (c!1328567 (reg!18309 r!11554)) a!1901)))))

(assert (=> d!2221640 (= (derivationStepZipperDown!2477 (reg!18309 r!11554) lt!2561043 a!1901) e!4277749)))

(declare-fun b!7119267 () Bool)

(assert (=> b!7119267 (= e!4277749 (set.insert lt!2561043 (as set.empty (Set Context!13948))))))

(declare-fun call!650401 () (Set Context!13948))

(declare-fun bm!650393 () Bool)

(declare-fun call!650397 () List!68941)

(assert (=> bm!650393 (= call!650401 (derivationStepZipperDown!2477 (ite c!1328590 (regOne!36473 (reg!18309 r!11554)) (regOne!36472 (reg!18309 r!11554))) (ite c!1328590 lt!2561043 (Context!13949 call!650397)) a!1901))))

(declare-fun b!7119268 () Bool)

(declare-fun e!4277752 () Bool)

(assert (=> b!7119268 (= e!4277752 (nullable!7617 (regOne!36472 (reg!18309 r!11554))))))

(declare-fun c!1328589 () Bool)

(declare-fun call!650399 () List!68941)

(declare-fun bm!650394 () Bool)

(assert (=> bm!650394 (= call!650402 (derivationStepZipperDown!2477 (ite c!1328590 (regTwo!36473 (reg!18309 r!11554)) (ite c!1328589 (regTwo!36472 (reg!18309 r!11554)) (ite c!1328592 (regOne!36472 (reg!18309 r!11554)) (reg!18309 (reg!18309 r!11554))))) (ite (or c!1328590 c!1328589) lt!2561043 (Context!13949 call!650399)) a!1901))))

(declare-fun b!7119269 () Bool)

(assert (=> b!7119269 (= e!4277748 (set.union call!650401 call!650400))))

(declare-fun bm!650395 () Bool)

(assert (=> bm!650395 (= call!650399 call!650397)))

(declare-fun b!7119270 () Bool)

(assert (=> b!7119270 (= c!1328589 e!4277752)))

(declare-fun res!2904334 () Bool)

(assert (=> b!7119270 (=> (not res!2904334) (not e!4277752))))

(assert (=> b!7119270 (= res!2904334 (is-Concat!26825 (reg!18309 r!11554)))))

(assert (=> b!7119270 (= e!4277750 e!4277748)))

(declare-fun b!7119271 () Bool)

(declare-fun c!1328588 () Bool)

(assert (=> b!7119271 (= c!1328588 (is-Star!17980 (reg!18309 r!11554)))))

(assert (=> b!7119271 (= e!4277751 e!4277753)))

(declare-fun b!7119272 () Bool)

(assert (=> b!7119272 (= e!4277750 (set.union call!650401 call!650402))))

(declare-fun b!7119273 () Bool)

(assert (=> b!7119273 (= e!4277751 call!650398)))

(declare-fun bm!650396 () Bool)

(assert (=> bm!650396 (= call!650397 ($colon$colon!2824 (exprs!7474 lt!2561043) (ite (or c!1328589 c!1328592) (regTwo!36472 (reg!18309 r!11554)) (reg!18309 r!11554))))))

(declare-fun bm!650397 () Bool)

(assert (=> bm!650397 (= call!650398 call!650400)))

(declare-fun b!7119274 () Bool)

(assert (=> b!7119274 (= e!4277753 (as set.empty (Set Context!13948)))))

(assert (= (and d!2221640 c!1328591) b!7119267))

(assert (= (and d!2221640 (not c!1328591)) b!7119266))

(assert (= (and b!7119266 c!1328590) b!7119272))

(assert (= (and b!7119266 (not c!1328590)) b!7119270))

(assert (= (and b!7119270 res!2904334) b!7119268))

(assert (= (and b!7119270 c!1328589) b!7119269))

(assert (= (and b!7119270 (not c!1328589)) b!7119265))

(assert (= (and b!7119265 c!1328592) b!7119273))

(assert (= (and b!7119265 (not c!1328592)) b!7119271))

(assert (= (and b!7119271 c!1328588) b!7119264))

(assert (= (and b!7119271 (not c!1328588)) b!7119274))

(assert (= (or b!7119273 b!7119264) bm!650395))

(assert (= (or b!7119273 b!7119264) bm!650397))

(assert (= (or b!7119269 bm!650397) bm!650392))

(assert (= (or b!7119269 bm!650395) bm!650396))

(assert (= (or b!7119272 bm!650392) bm!650394))

(assert (= (or b!7119272 b!7119269) bm!650393))

(declare-fun m!7836692 () Bool)

(assert (=> b!7119267 m!7836692))

(declare-fun m!7836694 () Bool)

(assert (=> bm!650396 m!7836694))

(declare-fun m!7836696 () Bool)

(assert (=> bm!650394 m!7836696))

(declare-fun m!7836698 () Bool)

(assert (=> b!7119268 m!7836698))

(declare-fun m!7836700 () Bool)

(assert (=> bm!650393 m!7836700))

(assert (=> b!7119154 d!2221640))

(declare-fun b!7119275 () Bool)

(declare-fun e!4277759 () (Set Context!13948))

(declare-fun call!650404 () (Set Context!13948))

(assert (=> b!7119275 (= e!4277759 call!650404)))

(declare-fun b!7119276 () Bool)

(declare-fun e!4277754 () (Set Context!13948))

(declare-fun e!4277757 () (Set Context!13948))

(assert (=> b!7119276 (= e!4277754 e!4277757)))

(declare-fun c!1328597 () Bool)

(assert (=> b!7119276 (= c!1328597 (is-Concat!26825 (reg!18309 r!11554)))))

(declare-fun bm!650398 () Bool)

(declare-fun call!650406 () (Set Context!13948))

(declare-fun call!650408 () (Set Context!13948))

(assert (=> bm!650398 (= call!650406 call!650408)))

(declare-fun b!7119277 () Bool)

(declare-fun e!4277755 () (Set Context!13948))

(declare-fun e!4277756 () (Set Context!13948))

(assert (=> b!7119277 (= e!4277755 e!4277756)))

(declare-fun c!1328595 () Bool)

(assert (=> b!7119277 (= c!1328595 (is-Union!17980 (reg!18309 r!11554)))))

(declare-fun d!2221644 () Bool)

(declare-fun c!1328596 () Bool)

(assert (=> d!2221644 (= c!1328596 (and (is-ElementMatch!17980 (reg!18309 r!11554)) (= (c!1328567 (reg!18309 r!11554)) a!1901)))))

(assert (=> d!2221644 (= (derivationStepZipperDown!2477 (reg!18309 r!11554) (Context!13949 (++!16132 lt!2561044 (exprs!7474 auxCtx!45))) a!1901) e!4277755)))

(declare-fun b!7119278 () Bool)

(assert (=> b!7119278 (= e!4277755 (set.insert (Context!13949 (++!16132 lt!2561044 (exprs!7474 auxCtx!45))) (as set.empty (Set Context!13948))))))

(declare-fun bm!650399 () Bool)

(declare-fun call!650403 () List!68941)

(declare-fun call!650407 () (Set Context!13948))

(assert (=> bm!650399 (= call!650407 (derivationStepZipperDown!2477 (ite c!1328595 (regOne!36473 (reg!18309 r!11554)) (regOne!36472 (reg!18309 r!11554))) (ite c!1328595 (Context!13949 (++!16132 lt!2561044 (exprs!7474 auxCtx!45))) (Context!13949 call!650403)) a!1901))))

(declare-fun b!7119279 () Bool)

(declare-fun e!4277758 () Bool)

(assert (=> b!7119279 (= e!4277758 (nullable!7617 (regOne!36472 (reg!18309 r!11554))))))

(declare-fun call!650405 () List!68941)

(declare-fun bm!650400 () Bool)

(declare-fun c!1328594 () Bool)

(assert (=> bm!650400 (= call!650408 (derivationStepZipperDown!2477 (ite c!1328595 (regTwo!36473 (reg!18309 r!11554)) (ite c!1328594 (regTwo!36472 (reg!18309 r!11554)) (ite c!1328597 (regOne!36472 (reg!18309 r!11554)) (reg!18309 (reg!18309 r!11554))))) (ite (or c!1328595 c!1328594) (Context!13949 (++!16132 lt!2561044 (exprs!7474 auxCtx!45))) (Context!13949 call!650405)) a!1901))))

(declare-fun b!7119280 () Bool)

(assert (=> b!7119280 (= e!4277754 (set.union call!650407 call!650406))))

(declare-fun bm!650401 () Bool)

(assert (=> bm!650401 (= call!650405 call!650403)))

(declare-fun b!7119281 () Bool)

(assert (=> b!7119281 (= c!1328594 e!4277758)))

(declare-fun res!2904335 () Bool)

(assert (=> b!7119281 (=> (not res!2904335) (not e!4277758))))

(assert (=> b!7119281 (= res!2904335 (is-Concat!26825 (reg!18309 r!11554)))))

(assert (=> b!7119281 (= e!4277756 e!4277754)))

(declare-fun b!7119282 () Bool)

(declare-fun c!1328593 () Bool)

(assert (=> b!7119282 (= c!1328593 (is-Star!17980 (reg!18309 r!11554)))))

(assert (=> b!7119282 (= e!4277757 e!4277759)))

(declare-fun b!7119283 () Bool)

(assert (=> b!7119283 (= e!4277756 (set.union call!650407 call!650408))))

(declare-fun b!7119284 () Bool)

(assert (=> b!7119284 (= e!4277757 call!650404)))

(declare-fun bm!650402 () Bool)

(assert (=> bm!650402 (= call!650403 ($colon$colon!2824 (exprs!7474 (Context!13949 (++!16132 lt!2561044 (exprs!7474 auxCtx!45)))) (ite (or c!1328594 c!1328597) (regTwo!36472 (reg!18309 r!11554)) (reg!18309 r!11554))))))

(declare-fun bm!650403 () Bool)

(assert (=> bm!650403 (= call!650404 call!650406)))

(declare-fun b!7119285 () Bool)

(assert (=> b!7119285 (= e!4277759 (as set.empty (Set Context!13948)))))

(assert (= (and d!2221644 c!1328596) b!7119278))

(assert (= (and d!2221644 (not c!1328596)) b!7119277))

(assert (= (and b!7119277 c!1328595) b!7119283))

(assert (= (and b!7119277 (not c!1328595)) b!7119281))

(assert (= (and b!7119281 res!2904335) b!7119279))

(assert (= (and b!7119281 c!1328594) b!7119280))

(assert (= (and b!7119281 (not c!1328594)) b!7119276))

(assert (= (and b!7119276 c!1328597) b!7119284))

(assert (= (and b!7119276 (not c!1328597)) b!7119282))

(assert (= (and b!7119282 c!1328593) b!7119275))

(assert (= (and b!7119282 (not c!1328593)) b!7119285))

(assert (= (or b!7119284 b!7119275) bm!650401))

(assert (= (or b!7119284 b!7119275) bm!650403))

(assert (= (or b!7119280 bm!650403) bm!650398))

(assert (= (or b!7119280 bm!650401) bm!650402))

(assert (= (or b!7119283 bm!650398) bm!650400))

(assert (= (or b!7119283 b!7119280) bm!650399))

(declare-fun m!7836702 () Bool)

(assert (=> b!7119278 m!7836702))

(declare-fun m!7836704 () Bool)

(assert (=> bm!650402 m!7836704))

(declare-fun m!7836706 () Bool)

(assert (=> bm!650400 m!7836706))

(assert (=> b!7119279 m!7836698))

(declare-fun m!7836708 () Bool)

(assert (=> bm!650399 m!7836708))

(assert (=> b!7119154 d!2221644))

(declare-fun b!7119286 () Bool)

(declare-fun e!4277765 () (Set Context!13948))

(declare-fun call!650410 () (Set Context!13948))

(assert (=> b!7119286 (= e!4277765 call!650410)))

(declare-fun b!7119287 () Bool)

(declare-fun e!4277760 () (Set Context!13948))

(declare-fun e!4277763 () (Set Context!13948))

(assert (=> b!7119287 (= e!4277760 e!4277763)))

(declare-fun c!1328602 () Bool)

(assert (=> b!7119287 (= c!1328602 (is-Concat!26825 r!11554))))

(declare-fun bm!650404 () Bool)

(declare-fun call!650412 () (Set Context!13948))

(declare-fun call!650414 () (Set Context!13948))

(assert (=> bm!650404 (= call!650412 call!650414)))

(declare-fun b!7119288 () Bool)

(declare-fun e!4277761 () (Set Context!13948))

(declare-fun e!4277762 () (Set Context!13948))

(assert (=> b!7119288 (= e!4277761 e!4277762)))

(declare-fun c!1328600 () Bool)

(assert (=> b!7119288 (= c!1328600 (is-Union!17980 r!11554))))

(declare-fun d!2221646 () Bool)

(declare-fun c!1328601 () Bool)

(assert (=> d!2221646 (= c!1328601 (and (is-ElementMatch!17980 r!11554) (= (c!1328567 r!11554) a!1901)))))

(assert (=> d!2221646 (= (derivationStepZipperDown!2477 r!11554 c!9994 a!1901) e!4277761)))

(declare-fun b!7119289 () Bool)

(assert (=> b!7119289 (= e!4277761 (set.insert c!9994 (as set.empty (Set Context!13948))))))

(declare-fun bm!650405 () Bool)

(declare-fun call!650409 () List!68941)

(declare-fun call!650413 () (Set Context!13948))

(assert (=> bm!650405 (= call!650413 (derivationStepZipperDown!2477 (ite c!1328600 (regOne!36473 r!11554) (regOne!36472 r!11554)) (ite c!1328600 c!9994 (Context!13949 call!650409)) a!1901))))

(declare-fun b!7119290 () Bool)

(declare-fun e!4277764 () Bool)

(assert (=> b!7119290 (= e!4277764 (nullable!7617 (regOne!36472 r!11554)))))

(declare-fun bm!650406 () Bool)

(declare-fun call!650411 () List!68941)

(declare-fun c!1328599 () Bool)

(assert (=> bm!650406 (= call!650414 (derivationStepZipperDown!2477 (ite c!1328600 (regTwo!36473 r!11554) (ite c!1328599 (regTwo!36472 r!11554) (ite c!1328602 (regOne!36472 r!11554) (reg!18309 r!11554)))) (ite (or c!1328600 c!1328599) c!9994 (Context!13949 call!650411)) a!1901))))

(declare-fun b!7119291 () Bool)

(assert (=> b!7119291 (= e!4277760 (set.union call!650413 call!650412))))

(declare-fun bm!650407 () Bool)

(assert (=> bm!650407 (= call!650411 call!650409)))

(declare-fun b!7119292 () Bool)

(assert (=> b!7119292 (= c!1328599 e!4277764)))

(declare-fun res!2904336 () Bool)

(assert (=> b!7119292 (=> (not res!2904336) (not e!4277764))))

(assert (=> b!7119292 (= res!2904336 (is-Concat!26825 r!11554))))

(assert (=> b!7119292 (= e!4277762 e!4277760)))

(declare-fun b!7119293 () Bool)

(declare-fun c!1328598 () Bool)

(assert (=> b!7119293 (= c!1328598 (is-Star!17980 r!11554))))

(assert (=> b!7119293 (= e!4277763 e!4277765)))

(declare-fun b!7119294 () Bool)

(assert (=> b!7119294 (= e!4277762 (set.union call!650413 call!650414))))

(declare-fun b!7119295 () Bool)

(assert (=> b!7119295 (= e!4277763 call!650410)))

(declare-fun bm!650408 () Bool)

(assert (=> bm!650408 (= call!650409 ($colon$colon!2824 (exprs!7474 c!9994) (ite (or c!1328599 c!1328602) (regTwo!36472 r!11554) r!11554)))))

(declare-fun bm!650409 () Bool)

(assert (=> bm!650409 (= call!650410 call!650412)))

(declare-fun b!7119296 () Bool)

(assert (=> b!7119296 (= e!4277765 (as set.empty (Set Context!13948)))))

(assert (= (and d!2221646 c!1328601) b!7119289))

(assert (= (and d!2221646 (not c!1328601)) b!7119288))

(assert (= (and b!7119288 c!1328600) b!7119294))

(assert (= (and b!7119288 (not c!1328600)) b!7119292))

(assert (= (and b!7119292 res!2904336) b!7119290))

(assert (= (and b!7119292 c!1328599) b!7119291))

(assert (= (and b!7119292 (not c!1328599)) b!7119287))

(assert (= (and b!7119287 c!1328602) b!7119295))

(assert (= (and b!7119287 (not c!1328602)) b!7119293))

(assert (= (and b!7119293 c!1328598) b!7119286))

(assert (= (and b!7119293 (not c!1328598)) b!7119296))

(assert (= (or b!7119295 b!7119286) bm!650407))

(assert (= (or b!7119295 b!7119286) bm!650409))

(assert (= (or b!7119291 bm!650409) bm!650404))

(assert (= (or b!7119291 bm!650407) bm!650408))

(assert (= (or b!7119294 bm!650404) bm!650406))

(assert (= (or b!7119294 b!7119291) bm!650405))

(declare-fun m!7836710 () Bool)

(assert (=> b!7119289 m!7836710))

(declare-fun m!7836712 () Bool)

(assert (=> bm!650408 m!7836712))

(declare-fun m!7836714 () Bool)

(assert (=> bm!650406 m!7836714))

(assert (=> b!7119290 m!7836626))

(declare-fun m!7836716 () Bool)

(assert (=> bm!650405 m!7836716))

(assert (=> b!7119154 d!2221646))

(declare-fun d!2221648 () Bool)

(assert (=> d!2221648 (= ($colon$colon!2824 (exprs!7474 c!9994) r!11554) (Cons!68817 r!11554 (exprs!7474 c!9994)))))

(assert (=> b!7119154 d!2221648))

(declare-fun d!2221650 () Bool)

(assert (=> d!2221650 true))

(declare-fun lambda!432576 () Int)

(declare-fun map!16311 ((Set Context!13948) Int) (Set Context!13948))

(assert (=> d!2221650 (= (appendTo!945 (derivationStepZipperDown!2477 (reg!18309 r!11554) lt!2561043 a!1901) auxCtx!45) (map!16311 (derivationStepZipperDown!2477 (reg!18309 r!11554) lt!2561043 a!1901) lambda!432576))))

(declare-fun bs!1885737 () Bool)

(assert (= bs!1885737 d!2221650))

(assert (=> bs!1885737 m!7836600))

(declare-fun m!7836718 () Bool)

(assert (=> bs!1885737 m!7836718))

(assert (=> b!7119154 d!2221650))

(declare-fun d!2221652 () Bool)

(declare-fun forall!16868 (List!68941 Int) Bool)

(assert (=> d!2221652 (forall!16868 (++!16132 lt!2561044 (exprs!7474 auxCtx!45)) lambda!432562)))

(declare-fun lt!2561085 () Unit!162631)

(declare-fun choose!54904 (List!68941 List!68941 Int) Unit!162631)

(assert (=> d!2221652 (= lt!2561085 (choose!54904 lt!2561044 (exprs!7474 auxCtx!45) lambda!432562))))

(assert (=> d!2221652 (forall!16868 lt!2561044 lambda!432562)))

(assert (=> d!2221652 (= (lemmaConcatPreservesForall!1265 lt!2561044 (exprs!7474 auxCtx!45) lambda!432562) lt!2561085)))

(declare-fun bs!1885738 () Bool)

(assert (= bs!1885738 d!2221652))

(assert (=> bs!1885738 m!7836612))

(assert (=> bs!1885738 m!7836612))

(declare-fun m!7836734 () Bool)

(assert (=> bs!1885738 m!7836734))

(declare-fun m!7836736 () Bool)

(assert (=> bs!1885738 m!7836736))

(declare-fun m!7836738 () Bool)

(assert (=> bs!1885738 m!7836738))

(assert (=> b!7119154 d!2221652))

(declare-fun d!2221656 () Bool)

(assert (=> d!2221656 (forall!16868 (++!16132 (exprs!7474 c!9994) (exprs!7474 auxCtx!45)) lambda!432562)))

(declare-fun lt!2561086 () Unit!162631)

(assert (=> d!2221656 (= lt!2561086 (choose!54904 (exprs!7474 c!9994) (exprs!7474 auxCtx!45) lambda!432562))))

(assert (=> d!2221656 (forall!16868 (exprs!7474 c!9994) lambda!432562)))

(assert (=> d!2221656 (= (lemmaConcatPreservesForall!1265 (exprs!7474 c!9994) (exprs!7474 auxCtx!45) lambda!432562) lt!2561086)))

(declare-fun bs!1885739 () Bool)

(assert (= bs!1885739 d!2221656))

(assert (=> bs!1885739 m!7836628))

(assert (=> bs!1885739 m!7836628))

(declare-fun m!7836740 () Bool)

(assert (=> bs!1885739 m!7836740))

(declare-fun m!7836742 () Bool)

(assert (=> bs!1885739 m!7836742))

(declare-fun m!7836744 () Bool)

(assert (=> bs!1885739 m!7836744))

(assert (=> b!7119154 d!2221656))

(declare-fun bs!1885741 () Bool)

(declare-fun d!2221658 () Bool)

(assert (= bs!1885741 (and d!2221658 b!7119151)))

(declare-fun lambda!432579 () Int)

(assert (=> bs!1885741 (= lambda!432579 lambda!432562)))

(assert (=> d!2221658 (= (derivationStepZipperDown!2477 (reg!18309 r!11554) (Context!13949 (++!16132 (exprs!7474 lt!2561043) (exprs!7474 auxCtx!45))) a!1901) (appendTo!945 (derivationStepZipperDown!2477 (reg!18309 r!11554) lt!2561043 a!1901) auxCtx!45))))

(declare-fun lt!2561095 () Unit!162631)

(assert (=> d!2221658 (= lt!2561095 (lemmaConcatPreservesForall!1265 (exprs!7474 lt!2561043) (exprs!7474 auxCtx!45) lambda!432579))))

(declare-fun lt!2561094 () Unit!162631)

(declare-fun choose!54905 (Context!13948 Regex!17980 C!36230 Context!13948) Unit!162631)

(assert (=> d!2221658 (= lt!2561094 (choose!54905 lt!2561043 (reg!18309 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2221658 (validRegex!9253 (reg!18309 r!11554))))

(assert (=> d!2221658 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!243 lt!2561043 (reg!18309 r!11554) a!1901 auxCtx!45) lt!2561094)))

(declare-fun bs!1885742 () Bool)

(assert (= bs!1885742 d!2221658))

(assert (=> bs!1885742 m!7836600))

(declare-fun m!7836752 () Bool)

(assert (=> bs!1885742 m!7836752))

(declare-fun m!7836756 () Bool)

(assert (=> bs!1885742 m!7836756))

(declare-fun m!7836758 () Bool)

(assert (=> bs!1885742 m!7836758))

(declare-fun m!7836760 () Bool)

(assert (=> bs!1885742 m!7836760))

(assert (=> bs!1885742 m!7836600))

(assert (=> bs!1885742 m!7836616))

(declare-fun m!7836762 () Bool)

(assert (=> bs!1885742 m!7836762))

(assert (=> b!7119154 d!2221658))

(declare-fun bs!1885744 () Bool)

(declare-fun d!2221664 () Bool)

(assert (= bs!1885744 (and d!2221664 d!2221650)))

(declare-fun lambda!432580 () Int)

(assert (=> bs!1885744 (= lambda!432580 lambda!432576)))

(assert (=> d!2221664 true))

(assert (=> d!2221664 (= (appendTo!945 (derivationStepZipperDown!2477 r!11554 c!9994 a!1901) auxCtx!45) (map!16311 (derivationStepZipperDown!2477 r!11554 c!9994 a!1901) lambda!432580))))

(declare-fun bs!1885745 () Bool)

(assert (= bs!1885745 d!2221664))

(assert (=> bs!1885745 m!7836604))

(declare-fun m!7836764 () Bool)

(assert (=> bs!1885745 m!7836764))

(assert (=> b!7119154 d!2221664))

(declare-fun b!7119311 () Bool)

(declare-fun e!4277777 () (Set Context!13948))

(declare-fun call!650416 () (Set Context!13948))

(assert (=> b!7119311 (= e!4277777 call!650416)))

(declare-fun b!7119312 () Bool)

(declare-fun e!4277772 () (Set Context!13948))

(declare-fun e!4277775 () (Set Context!13948))

(assert (=> b!7119312 (= e!4277772 e!4277775)))

(declare-fun c!1328612 () Bool)

(assert (=> b!7119312 (= c!1328612 (is-Concat!26825 (reg!18309 r!11554)))))

(declare-fun bm!650410 () Bool)

(declare-fun call!650418 () (Set Context!13948))

(declare-fun call!650420 () (Set Context!13948))

(assert (=> bm!650410 (= call!650418 call!650420)))

(declare-fun b!7119313 () Bool)

(declare-fun e!4277773 () (Set Context!13948))

(declare-fun e!4277774 () (Set Context!13948))

(assert (=> b!7119313 (= e!4277773 e!4277774)))

(declare-fun c!1328610 () Bool)

(assert (=> b!7119313 (= c!1328610 (is-Union!17980 (reg!18309 r!11554)))))

(declare-fun d!2221666 () Bool)

(declare-fun c!1328611 () Bool)

(assert (=> d!2221666 (= c!1328611 (and (is-ElementMatch!17980 (reg!18309 r!11554)) (= (c!1328567 (reg!18309 r!11554)) a!1901)))))

(assert (=> d!2221666 (= (derivationStepZipperDown!2477 (reg!18309 r!11554) (Context!13949 ($colon$colon!2824 lt!2561039 r!11554)) a!1901) e!4277773)))

(declare-fun b!7119314 () Bool)

(assert (=> b!7119314 (= e!4277773 (set.insert (Context!13949 ($colon$colon!2824 lt!2561039 r!11554)) (as set.empty (Set Context!13948))))))

(declare-fun call!650419 () (Set Context!13948))

(declare-fun call!650415 () List!68941)

(declare-fun bm!650411 () Bool)

(assert (=> bm!650411 (= call!650419 (derivationStepZipperDown!2477 (ite c!1328610 (regOne!36473 (reg!18309 r!11554)) (regOne!36472 (reg!18309 r!11554))) (ite c!1328610 (Context!13949 ($colon$colon!2824 lt!2561039 r!11554)) (Context!13949 call!650415)) a!1901))))

(declare-fun b!7119315 () Bool)

(declare-fun e!4277776 () Bool)

(assert (=> b!7119315 (= e!4277776 (nullable!7617 (regOne!36472 (reg!18309 r!11554))))))

(declare-fun bm!650412 () Bool)

(declare-fun call!650417 () List!68941)

(declare-fun c!1328609 () Bool)

(assert (=> bm!650412 (= call!650420 (derivationStepZipperDown!2477 (ite c!1328610 (regTwo!36473 (reg!18309 r!11554)) (ite c!1328609 (regTwo!36472 (reg!18309 r!11554)) (ite c!1328612 (regOne!36472 (reg!18309 r!11554)) (reg!18309 (reg!18309 r!11554))))) (ite (or c!1328610 c!1328609) (Context!13949 ($colon$colon!2824 lt!2561039 r!11554)) (Context!13949 call!650417)) a!1901))))

(declare-fun b!7119316 () Bool)

(assert (=> b!7119316 (= e!4277772 (set.union call!650419 call!650418))))

(declare-fun bm!650413 () Bool)

(assert (=> bm!650413 (= call!650417 call!650415)))

(declare-fun b!7119317 () Bool)

(assert (=> b!7119317 (= c!1328609 e!4277776)))

(declare-fun res!2904343 () Bool)

(assert (=> b!7119317 (=> (not res!2904343) (not e!4277776))))

(assert (=> b!7119317 (= res!2904343 (is-Concat!26825 (reg!18309 r!11554)))))

(assert (=> b!7119317 (= e!4277774 e!4277772)))

(declare-fun b!7119318 () Bool)

(declare-fun c!1328608 () Bool)

(assert (=> b!7119318 (= c!1328608 (is-Star!17980 (reg!18309 r!11554)))))

(assert (=> b!7119318 (= e!4277775 e!4277777)))

(declare-fun b!7119319 () Bool)

(assert (=> b!7119319 (= e!4277774 (set.union call!650419 call!650420))))

(declare-fun b!7119320 () Bool)

(assert (=> b!7119320 (= e!4277775 call!650416)))

(declare-fun bm!650414 () Bool)

(assert (=> bm!650414 (= call!650415 ($colon$colon!2824 (exprs!7474 (Context!13949 ($colon$colon!2824 lt!2561039 r!11554))) (ite (or c!1328609 c!1328612) (regTwo!36472 (reg!18309 r!11554)) (reg!18309 r!11554))))))

(declare-fun bm!650415 () Bool)

(assert (=> bm!650415 (= call!650416 call!650418)))

(declare-fun b!7119321 () Bool)

(assert (=> b!7119321 (= e!4277777 (as set.empty (Set Context!13948)))))

(assert (= (and d!2221666 c!1328611) b!7119314))

(assert (= (and d!2221666 (not c!1328611)) b!7119313))

(assert (= (and b!7119313 c!1328610) b!7119319))

(assert (= (and b!7119313 (not c!1328610)) b!7119317))

(assert (= (and b!7119317 res!2904343) b!7119315))

(assert (= (and b!7119317 c!1328609) b!7119316))

(assert (= (and b!7119317 (not c!1328609)) b!7119312))

(assert (= (and b!7119312 c!1328612) b!7119320))

(assert (= (and b!7119312 (not c!1328612)) b!7119318))

(assert (= (and b!7119318 c!1328608) b!7119311))

(assert (= (and b!7119318 (not c!1328608)) b!7119321))

(assert (= (or b!7119320 b!7119311) bm!650413))

(assert (= (or b!7119320 b!7119311) bm!650415))

(assert (= (or b!7119316 bm!650415) bm!650410))

(assert (= (or b!7119316 bm!650413) bm!650414))

(assert (= (or b!7119319 bm!650410) bm!650412))

(assert (= (or b!7119319 b!7119316) bm!650411))

(declare-fun m!7836766 () Bool)

(assert (=> b!7119314 m!7836766))

(declare-fun m!7836768 () Bool)

(assert (=> bm!650414 m!7836768))

(declare-fun m!7836770 () Bool)

(assert (=> bm!650412 m!7836770))

(assert (=> b!7119315 m!7836698))

(declare-fun m!7836772 () Bool)

(assert (=> bm!650411 m!7836772))

(assert (=> b!7119158 d!2221666))

(declare-fun d!2221668 () Bool)

(assert (=> d!2221668 (= ($colon$colon!2824 lt!2561039 r!11554) (Cons!68817 r!11554 lt!2561039))))

(assert (=> b!7119158 d!2221668))

(declare-fun b!7119322 () Bool)

(declare-fun e!4277783 () (Set Context!13948))

(declare-fun call!650422 () (Set Context!13948))

(assert (=> b!7119322 (= e!4277783 call!650422)))

(declare-fun b!7119323 () Bool)

(declare-fun e!4277778 () (Set Context!13948))

(declare-fun e!4277781 () (Set Context!13948))

(assert (=> b!7119323 (= e!4277778 e!4277781)))

(declare-fun c!1328617 () Bool)

(assert (=> b!7119323 (= c!1328617 (is-Concat!26825 r!11554))))

(declare-fun bm!650416 () Bool)

(declare-fun call!650424 () (Set Context!13948))

(declare-fun call!650426 () (Set Context!13948))

(assert (=> bm!650416 (= call!650424 call!650426)))

(declare-fun b!7119324 () Bool)

(declare-fun e!4277779 () (Set Context!13948))

(declare-fun e!4277780 () (Set Context!13948))

(assert (=> b!7119324 (= e!4277779 e!4277780)))

(declare-fun c!1328615 () Bool)

(assert (=> b!7119324 (= c!1328615 (is-Union!17980 r!11554))))

(declare-fun d!2221670 () Bool)

(declare-fun c!1328616 () Bool)

(assert (=> d!2221670 (= c!1328616 (and (is-ElementMatch!17980 r!11554) (= (c!1328567 r!11554) a!1901)))))

(assert (=> d!2221670 (= (derivationStepZipperDown!2477 r!11554 (Context!13949 lt!2561039) a!1901) e!4277779)))

(declare-fun b!7119325 () Bool)

(assert (=> b!7119325 (= e!4277779 (set.insert (Context!13949 lt!2561039) (as set.empty (Set Context!13948))))))

(declare-fun call!650425 () (Set Context!13948))

(declare-fun call!650421 () List!68941)

(declare-fun bm!650417 () Bool)

(assert (=> bm!650417 (= call!650425 (derivationStepZipperDown!2477 (ite c!1328615 (regOne!36473 r!11554) (regOne!36472 r!11554)) (ite c!1328615 (Context!13949 lt!2561039) (Context!13949 call!650421)) a!1901))))

(declare-fun b!7119326 () Bool)

(declare-fun e!4277782 () Bool)

(assert (=> b!7119326 (= e!4277782 (nullable!7617 (regOne!36472 r!11554)))))

(declare-fun call!650423 () List!68941)

(declare-fun c!1328614 () Bool)

(declare-fun bm!650418 () Bool)

(assert (=> bm!650418 (= call!650426 (derivationStepZipperDown!2477 (ite c!1328615 (regTwo!36473 r!11554) (ite c!1328614 (regTwo!36472 r!11554) (ite c!1328617 (regOne!36472 r!11554) (reg!18309 r!11554)))) (ite (or c!1328615 c!1328614) (Context!13949 lt!2561039) (Context!13949 call!650423)) a!1901))))

(declare-fun b!7119327 () Bool)

(assert (=> b!7119327 (= e!4277778 (set.union call!650425 call!650424))))

(declare-fun bm!650419 () Bool)

(assert (=> bm!650419 (= call!650423 call!650421)))

(declare-fun b!7119328 () Bool)

(assert (=> b!7119328 (= c!1328614 e!4277782)))

(declare-fun res!2904344 () Bool)

(assert (=> b!7119328 (=> (not res!2904344) (not e!4277782))))

(assert (=> b!7119328 (= res!2904344 (is-Concat!26825 r!11554))))

(assert (=> b!7119328 (= e!4277780 e!4277778)))

(declare-fun b!7119329 () Bool)

(declare-fun c!1328613 () Bool)

(assert (=> b!7119329 (= c!1328613 (is-Star!17980 r!11554))))

(assert (=> b!7119329 (= e!4277781 e!4277783)))

(declare-fun b!7119330 () Bool)

(assert (=> b!7119330 (= e!4277780 (set.union call!650425 call!650426))))

(declare-fun b!7119331 () Bool)

(assert (=> b!7119331 (= e!4277781 call!650422)))

(declare-fun bm!650420 () Bool)

(assert (=> bm!650420 (= call!650421 ($colon$colon!2824 (exprs!7474 (Context!13949 lt!2561039)) (ite (or c!1328614 c!1328617) (regTwo!36472 r!11554) r!11554)))))

(declare-fun bm!650421 () Bool)

(assert (=> bm!650421 (= call!650422 call!650424)))

(declare-fun b!7119332 () Bool)

(assert (=> b!7119332 (= e!4277783 (as set.empty (Set Context!13948)))))

(assert (= (and d!2221670 c!1328616) b!7119325))

(assert (= (and d!2221670 (not c!1328616)) b!7119324))

(assert (= (and b!7119324 c!1328615) b!7119330))

(assert (= (and b!7119324 (not c!1328615)) b!7119328))

(assert (= (and b!7119328 res!2904344) b!7119326))

(assert (= (and b!7119328 c!1328614) b!7119327))

(assert (= (and b!7119328 (not c!1328614)) b!7119323))

(assert (= (and b!7119323 c!1328617) b!7119331))

(assert (= (and b!7119323 (not c!1328617)) b!7119329))

(assert (= (and b!7119329 c!1328613) b!7119322))

(assert (= (and b!7119329 (not c!1328613)) b!7119332))

(assert (= (or b!7119331 b!7119322) bm!650419))

(assert (= (or b!7119331 b!7119322) bm!650421))

(assert (= (or b!7119327 bm!650421) bm!650416))

(assert (= (or b!7119327 bm!650419) bm!650420))

(assert (= (or b!7119330 bm!650416) bm!650418))

(assert (= (or b!7119330 b!7119327) bm!650417))

(declare-fun m!7836774 () Bool)

(assert (=> b!7119325 m!7836774))

(declare-fun m!7836776 () Bool)

(assert (=> bm!650420 m!7836776))

(declare-fun m!7836778 () Bool)

(assert (=> bm!650418 m!7836778))

(assert (=> b!7119326 m!7836626))

(declare-fun m!7836780 () Bool)

(assert (=> bm!650417 m!7836780))

(assert (=> b!7119158 d!2221670))

(declare-fun bm!650428 () Bool)

(declare-fun call!650433 () Bool)

(declare-fun call!650435 () Bool)

(assert (=> bm!650428 (= call!650433 call!650435)))

(declare-fun d!2221672 () Bool)

(declare-fun res!2904359 () Bool)

(declare-fun e!4277798 () Bool)

(assert (=> d!2221672 (=> res!2904359 e!4277798)))

(assert (=> d!2221672 (= res!2904359 (is-ElementMatch!17980 r!11554))))

(assert (=> d!2221672 (= (validRegex!9253 r!11554) e!4277798)))

(declare-fun b!7119351 () Bool)

(declare-fun e!4277802 () Bool)

(assert (=> b!7119351 (= e!4277802 call!650433)))

(declare-fun b!7119352 () Bool)

(declare-fun res!2904356 () Bool)

(assert (=> b!7119352 (=> (not res!2904356) (not e!4277802))))

(declare-fun call!650434 () Bool)

(assert (=> b!7119352 (= res!2904356 call!650434)))

(declare-fun e!4277804 () Bool)

(assert (=> b!7119352 (= e!4277804 e!4277802)))

(declare-fun b!7119353 () Bool)

(declare-fun e!4277803 () Bool)

(assert (=> b!7119353 (= e!4277803 call!650435)))

(declare-fun c!1328622 () Bool)

(declare-fun c!1328623 () Bool)

(declare-fun bm!650429 () Bool)

(assert (=> bm!650429 (= call!650435 (validRegex!9253 (ite c!1328622 (reg!18309 r!11554) (ite c!1328623 (regTwo!36473 r!11554) (regOne!36472 r!11554)))))))

(declare-fun b!7119354 () Bool)

(declare-fun e!4277801 () Bool)

(assert (=> b!7119354 (= e!4277801 e!4277803)))

(declare-fun res!2904355 () Bool)

(assert (=> b!7119354 (= res!2904355 (not (nullable!7617 (reg!18309 r!11554))))))

(assert (=> b!7119354 (=> (not res!2904355) (not e!4277803))))

(declare-fun b!7119355 () Bool)

(assert (=> b!7119355 (= e!4277798 e!4277801)))

(assert (=> b!7119355 (= c!1328622 (is-Star!17980 r!11554))))

(declare-fun b!7119356 () Bool)

(declare-fun e!4277799 () Bool)

(declare-fun e!4277800 () Bool)

(assert (=> b!7119356 (= e!4277799 e!4277800)))

(declare-fun res!2904357 () Bool)

(assert (=> b!7119356 (=> (not res!2904357) (not e!4277800))))

(assert (=> b!7119356 (= res!2904357 call!650433)))

(declare-fun b!7119357 () Bool)

(assert (=> b!7119357 (= e!4277800 call!650434)))

(declare-fun b!7119358 () Bool)

(assert (=> b!7119358 (= e!4277801 e!4277804)))

(assert (=> b!7119358 (= c!1328623 (is-Union!17980 r!11554))))

(declare-fun b!7119359 () Bool)

(declare-fun res!2904358 () Bool)

(assert (=> b!7119359 (=> res!2904358 e!4277799)))

(assert (=> b!7119359 (= res!2904358 (not (is-Concat!26825 r!11554)))))

(assert (=> b!7119359 (= e!4277804 e!4277799)))

(declare-fun bm!650430 () Bool)

(assert (=> bm!650430 (= call!650434 (validRegex!9253 (ite c!1328623 (regOne!36473 r!11554) (regTwo!36472 r!11554))))))

(assert (= (and d!2221672 (not res!2904359)) b!7119355))

(assert (= (and b!7119355 c!1328622) b!7119354))

(assert (= (and b!7119355 (not c!1328622)) b!7119358))

(assert (= (and b!7119354 res!2904355) b!7119353))

(assert (= (and b!7119358 c!1328623) b!7119352))

(assert (= (and b!7119358 (not c!1328623)) b!7119359))

(assert (= (and b!7119352 res!2904356) b!7119351))

(assert (= (and b!7119359 (not res!2904358)) b!7119356))

(assert (= (and b!7119356 res!2904357) b!7119357))

(assert (= (or b!7119352 b!7119357) bm!650430))

(assert (= (or b!7119351 b!7119356) bm!650428))

(assert (= (or b!7119353 bm!650428) bm!650429))

(declare-fun m!7836786 () Bool)

(assert (=> bm!650429 m!7836786))

(declare-fun m!7836788 () Bool)

(assert (=> b!7119354 m!7836788))

(declare-fun m!7836790 () Bool)

(assert (=> bm!650430 m!7836790))

(assert (=> b!7119151 d!2221672))

(declare-fun d!2221678 () Bool)

(declare-fun e!4277806 () Bool)

(assert (=> d!2221678 e!4277806))

(declare-fun res!2904361 () Bool)

(assert (=> d!2221678 (=> (not res!2904361) (not e!4277806))))

(declare-fun lt!2561096 () List!68941)

(assert (=> d!2221678 (= res!2904361 (= (content!14052 lt!2561096) (set.union (content!14052 (exprs!7474 c!9994)) (content!14052 (exprs!7474 auxCtx!45)))))))

(declare-fun e!4277805 () List!68941)

(assert (=> d!2221678 (= lt!2561096 e!4277805)))

(declare-fun c!1328624 () Bool)

(assert (=> d!2221678 (= c!1328624 (is-Nil!68817 (exprs!7474 c!9994)))))

(assert (=> d!2221678 (= (++!16132 (exprs!7474 c!9994) (exprs!7474 auxCtx!45)) lt!2561096)))

(declare-fun b!7119360 () Bool)

(assert (=> b!7119360 (= e!4277805 (exprs!7474 auxCtx!45))))

(declare-fun b!7119362 () Bool)

(declare-fun res!2904360 () Bool)

(assert (=> b!7119362 (=> (not res!2904360) (not e!4277806))))

(assert (=> b!7119362 (= res!2904360 (= (size!41427 lt!2561096) (+ (size!41427 (exprs!7474 c!9994)) (size!41427 (exprs!7474 auxCtx!45)))))))

(declare-fun b!7119363 () Bool)

(assert (=> b!7119363 (= e!4277806 (or (not (= (exprs!7474 auxCtx!45) Nil!68817)) (= lt!2561096 (exprs!7474 c!9994))))))

(declare-fun b!7119361 () Bool)

(assert (=> b!7119361 (= e!4277805 (Cons!68817 (h!75265 (exprs!7474 c!9994)) (++!16132 (t!382800 (exprs!7474 c!9994)) (exprs!7474 auxCtx!45))))))

(assert (= (and d!2221678 c!1328624) b!7119360))

(assert (= (and d!2221678 (not c!1328624)) b!7119361))

(assert (= (and d!2221678 res!2904361) b!7119362))

(assert (= (and b!7119362 res!2904360) b!7119363))

(declare-fun m!7836792 () Bool)

(assert (=> d!2221678 m!7836792))

(declare-fun m!7836794 () Bool)

(assert (=> d!2221678 m!7836794))

(assert (=> d!2221678 m!7836676))

(declare-fun m!7836796 () Bool)

(assert (=> b!7119362 m!7836796))

(declare-fun m!7836798 () Bool)

(assert (=> b!7119362 m!7836798))

(assert (=> b!7119362 m!7836682))

(declare-fun m!7836800 () Bool)

(assert (=> b!7119361 m!7836800))

(assert (=> b!7119151 d!2221678))

(assert (=> b!7119151 d!2221656))

(assert (=> start!692870 d!2221672))

(declare-fun bs!1885751 () Bool)

(declare-fun d!2221680 () Bool)

(assert (= bs!1885751 (and d!2221680 b!7119151)))

(declare-fun lambda!432587 () Int)

(assert (=> bs!1885751 (= lambda!432587 lambda!432562)))

(declare-fun bs!1885752 () Bool)

(assert (= bs!1885752 (and d!2221680 d!2221658)))

(assert (=> bs!1885752 (= lambda!432587 lambda!432579)))

(assert (=> d!2221680 (= (inv!87814 c!9994) (forall!16868 (exprs!7474 c!9994) lambda!432587))))

(declare-fun bs!1885753 () Bool)

(assert (= bs!1885753 d!2221680))

(declare-fun m!7836802 () Bool)

(assert (=> bs!1885753 m!7836802))

(assert (=> start!692870 d!2221680))

(declare-fun bs!1885754 () Bool)

(declare-fun d!2221682 () Bool)

(assert (= bs!1885754 (and d!2221682 b!7119151)))

(declare-fun lambda!432588 () Int)

(assert (=> bs!1885754 (= lambda!432588 lambda!432562)))

(declare-fun bs!1885755 () Bool)

(assert (= bs!1885755 (and d!2221682 d!2221658)))

(assert (=> bs!1885755 (= lambda!432588 lambda!432579)))

(declare-fun bs!1885756 () Bool)

(assert (= bs!1885756 (and d!2221682 d!2221680)))

(assert (=> bs!1885756 (= lambda!432588 lambda!432587)))

(assert (=> d!2221682 (= (inv!87814 auxCtx!45) (forall!16868 (exprs!7474 auxCtx!45) lambda!432588))))

(declare-fun bs!1885757 () Bool)

(assert (= bs!1885757 d!2221682))

(declare-fun m!7836804 () Bool)

(assert (=> bs!1885757 m!7836804))

(assert (=> start!692870 d!2221682))

(declare-fun d!2221684 () Bool)

(declare-fun nullableFct!2958 (Regex!17980) Bool)

(assert (=> d!2221684 (= (nullable!7617 (regOne!36472 r!11554)) (nullableFct!2958 (regOne!36472 r!11554)))))

(declare-fun bs!1885758 () Bool)

(assert (= bs!1885758 d!2221684))

(declare-fun m!7836806 () Bool)

(assert (=> bs!1885758 m!7836806))

(assert (=> b!7119156 d!2221684))

(declare-fun b!7119372 () Bool)

(declare-fun e!4277811 () Bool)

(declare-fun tp!1959831 () Bool)

(declare-fun tp!1959832 () Bool)

(assert (=> b!7119372 (= e!4277811 (and tp!1959831 tp!1959832))))

(assert (=> b!7119160 (= tp!1959801 e!4277811)))

(assert (= (and b!7119160 (is-Cons!68817 (exprs!7474 auxCtx!45))) b!7119372))

(declare-fun b!7119402 () Bool)

(declare-fun e!4277824 () Bool)

(declare-fun tp!1959843 () Bool)

(declare-fun tp!1959847 () Bool)

(assert (=> b!7119402 (= e!4277824 (and tp!1959843 tp!1959847))))

(declare-fun b!7119403 () Bool)

(declare-fun tp!1959844 () Bool)

(assert (=> b!7119403 (= e!4277824 tp!1959844)))

(declare-fun b!7119401 () Bool)

(assert (=> b!7119401 (= e!4277824 tp_is_empty!45193)))

(declare-fun b!7119404 () Bool)

(declare-fun tp!1959845 () Bool)

(declare-fun tp!1959846 () Bool)

(assert (=> b!7119404 (= e!4277824 (and tp!1959845 tp!1959846))))

(assert (=> b!7119159 (= tp!1959802 e!4277824)))

(assert (= (and b!7119159 (is-ElementMatch!17980 (regOne!36473 r!11554))) b!7119401))

(assert (= (and b!7119159 (is-Concat!26825 (regOne!36473 r!11554))) b!7119402))

(assert (= (and b!7119159 (is-Star!17980 (regOne!36473 r!11554))) b!7119403))

(assert (= (and b!7119159 (is-Union!17980 (regOne!36473 r!11554))) b!7119404))

(declare-fun b!7119406 () Bool)

(declare-fun e!4277825 () Bool)

(declare-fun tp!1959848 () Bool)

(declare-fun tp!1959852 () Bool)

(assert (=> b!7119406 (= e!4277825 (and tp!1959848 tp!1959852))))

(declare-fun b!7119407 () Bool)

(declare-fun tp!1959849 () Bool)

(assert (=> b!7119407 (= e!4277825 tp!1959849)))

(declare-fun b!7119405 () Bool)

(assert (=> b!7119405 (= e!4277825 tp_is_empty!45193)))

(declare-fun b!7119408 () Bool)

(declare-fun tp!1959850 () Bool)

(declare-fun tp!1959851 () Bool)

(assert (=> b!7119408 (= e!4277825 (and tp!1959850 tp!1959851))))

(assert (=> b!7119159 (= tp!1959799 e!4277825)))

(assert (= (and b!7119159 (is-ElementMatch!17980 (regTwo!36473 r!11554))) b!7119405))

(assert (= (and b!7119159 (is-Concat!26825 (regTwo!36473 r!11554))) b!7119406))

(assert (= (and b!7119159 (is-Star!17980 (regTwo!36473 r!11554))) b!7119407))

(assert (= (and b!7119159 (is-Union!17980 (regTwo!36473 r!11554))) b!7119408))

(declare-fun b!7119410 () Bool)

(declare-fun e!4277826 () Bool)

(declare-fun tp!1959853 () Bool)

(declare-fun tp!1959857 () Bool)

(assert (=> b!7119410 (= e!4277826 (and tp!1959853 tp!1959857))))

(declare-fun b!7119411 () Bool)

(declare-fun tp!1959854 () Bool)

(assert (=> b!7119411 (= e!4277826 tp!1959854)))

(declare-fun b!7119409 () Bool)

(assert (=> b!7119409 (= e!4277826 tp_is_empty!45193)))

(declare-fun b!7119412 () Bool)

(declare-fun tp!1959855 () Bool)

(declare-fun tp!1959856 () Bool)

(assert (=> b!7119412 (= e!4277826 (and tp!1959855 tp!1959856))))

(assert (=> b!7119157 (= tp!1959803 e!4277826)))

(assert (= (and b!7119157 (is-ElementMatch!17980 (regOne!36472 r!11554))) b!7119409))

(assert (= (and b!7119157 (is-Concat!26825 (regOne!36472 r!11554))) b!7119410))

(assert (= (and b!7119157 (is-Star!17980 (regOne!36472 r!11554))) b!7119411))

(assert (= (and b!7119157 (is-Union!17980 (regOne!36472 r!11554))) b!7119412))

(declare-fun b!7119414 () Bool)

(declare-fun e!4277827 () Bool)

(declare-fun tp!1959858 () Bool)

(declare-fun tp!1959862 () Bool)

(assert (=> b!7119414 (= e!4277827 (and tp!1959858 tp!1959862))))

(declare-fun b!7119415 () Bool)

(declare-fun tp!1959859 () Bool)

(assert (=> b!7119415 (= e!4277827 tp!1959859)))

(declare-fun b!7119413 () Bool)

(assert (=> b!7119413 (= e!4277827 tp_is_empty!45193)))

(declare-fun b!7119416 () Bool)

(declare-fun tp!1959860 () Bool)

(declare-fun tp!1959861 () Bool)

(assert (=> b!7119416 (= e!4277827 (and tp!1959860 tp!1959861))))

(assert (=> b!7119157 (= tp!1959804 e!4277827)))

(assert (= (and b!7119157 (is-ElementMatch!17980 (regTwo!36472 r!11554))) b!7119413))

(assert (= (and b!7119157 (is-Concat!26825 (regTwo!36472 r!11554))) b!7119414))

(assert (= (and b!7119157 (is-Star!17980 (regTwo!36472 r!11554))) b!7119415))

(assert (= (and b!7119157 (is-Union!17980 (regTwo!36472 r!11554))) b!7119416))

(declare-fun b!7119417 () Bool)

(declare-fun e!4277828 () Bool)

(declare-fun tp!1959863 () Bool)

(declare-fun tp!1959864 () Bool)

(assert (=> b!7119417 (= e!4277828 (and tp!1959863 tp!1959864))))

(assert (=> b!7119162 (= tp!1959805 e!4277828)))

(assert (= (and b!7119162 (is-Cons!68817 (exprs!7474 c!9994))) b!7119417))

(declare-fun b!7119419 () Bool)

(declare-fun e!4277829 () Bool)

(declare-fun tp!1959865 () Bool)

(declare-fun tp!1959869 () Bool)

(assert (=> b!7119419 (= e!4277829 (and tp!1959865 tp!1959869))))

(declare-fun b!7119420 () Bool)

(declare-fun tp!1959866 () Bool)

(assert (=> b!7119420 (= e!4277829 tp!1959866)))

(declare-fun b!7119418 () Bool)

(assert (=> b!7119418 (= e!4277829 tp_is_empty!45193)))

(declare-fun b!7119421 () Bool)

(declare-fun tp!1959867 () Bool)

(declare-fun tp!1959868 () Bool)

(assert (=> b!7119421 (= e!4277829 (and tp!1959867 tp!1959868))))

(assert (=> b!7119163 (= tp!1959800 e!4277829)))

(assert (= (and b!7119163 (is-ElementMatch!17980 (reg!18309 r!11554))) b!7119418))

(assert (= (and b!7119163 (is-Concat!26825 (reg!18309 r!11554))) b!7119419))

(assert (= (and b!7119163 (is-Star!17980 (reg!18309 r!11554))) b!7119420))

(assert (= (and b!7119163 (is-Union!17980 (reg!18309 r!11554))) b!7119421))

(push 1)

(assert (not b!7119417))

(assert (not b!7119362))

(assert (not b!7119326))

(assert (not bm!650417))

(assert (not b!7119403))

(assert (not b!7119227))

(assert (not b!7119361))

(assert (not d!2221680))

(assert (not d!2221682))

(assert (not d!2221658))

(assert (not b!7119226))

(assert (not b!7119279))

(assert (not b!7119406))

(assert (not b!7119410))

(assert (not b!7119407))

(assert tp_is_empty!45193)

(assert (not bm!650399))

(assert (not d!2221656))

(assert (not b!7119290))

(assert (not bm!650414))

(assert (not bm!650429))

(assert (not b!7119315))

(assert (not bm!650411))

(assert (not b!7119372))

(assert (not b!7119354))

(assert (not bm!650430))

(assert (not d!2221650))

(assert (not b!7119411))

(assert (not b!7119412))

(assert (not b!7119419))

(assert (not b!7119420))

(assert (not bm!650394))

(assert (not bm!650393))

(assert (not d!2221652))

(assert (not d!2221636))

(assert (not bm!650420))

(assert (not bm!650418))

(assert (not d!2221664))

(assert (not bm!650405))

(assert (not bm!650412))

(assert (not b!7119408))

(assert (not bm!650402))

(assert (not b!7119415))

(assert (not bm!650400))

(assert (not b!7119421))

(assert (not bm!650408))

(assert (not d!2221678))

(assert (not b!7119416))

(assert (not b!7119268))

(assert (not bm!650406))

(assert (not b!7119404))

(assert (not b!7119414))

(assert (not b!7119402))

(assert (not bm!650396))

(assert (not d!2221684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

