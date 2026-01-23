; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714652 () Bool)

(assert start!714652)

(declare-fun b!7323182 () Bool)

(declare-fun e!4384797 () Bool)

(declare-fun tp!2080063 () Bool)

(assert (=> b!7323182 (= e!4384797 tp!2080063)))

(declare-fun b!7323183 () Bool)

(declare-fun e!4384798 () Bool)

(declare-datatypes ((C!38222 0))(
  ( (C!38223 (val!29471 Int)) )
))
(declare-datatypes ((Regex!18974 0))(
  ( (ElementMatch!18974 (c!1359063 C!38222)) (Concat!27819 (regOne!38460 Regex!18974) (regTwo!38460 Regex!18974)) (EmptyExpr!18974) (Star!18974 (reg!19303 Regex!18974)) (EmptyLang!18974) (Union!18974 (regOne!38461 Regex!18974) (regTwo!38461 Regex!18974)) )
))
(declare-datatypes ((List!71470 0))(
  ( (Nil!71346) (Cons!71346 (h!77794 Regex!18974) (t!385853 List!71470)) )
))
(declare-datatypes ((Context!15828 0))(
  ( (Context!15829 (exprs!8414 List!71470)) )
))
(declare-fun cWitness!35 () Context!15828)

(declare-fun lambda!453703 () Int)

(declare-fun forall!17828 (List!71470 Int) Bool)

(assert (=> b!7323183 (= e!4384798 (forall!17828 (exprs!8414 cWitness!35) lambda!453703))))

(declare-fun b!7323184 () Bool)

(declare-fun e!4384800 () Bool)

(declare-fun tp!2080062 () Bool)

(assert (=> b!7323184 (= e!4384800 tp!2080062)))

(declare-fun res!2960095 () Bool)

(declare-fun e!4384799 () Bool)

(assert (=> start!714652 (=> (not res!2960095) (not e!4384799))))

(declare-fun lt!2605141 () (Set Context!15828))

(assert (=> start!714652 (= res!2960095 (set.member cWitness!35 lt!2605141))))

(declare-fun ct1!256 () Context!15828)

(declare-fun c!10305 () C!38222)

(declare-fun derivationStepZipperUp!2654 (Context!15828 C!38222) (Set Context!15828))

(assert (=> start!714652 (= lt!2605141 (derivationStepZipperUp!2654 ct1!256 c!10305))))

(assert (=> start!714652 e!4384799))

(declare-fun tp_is_empty!48193 () Bool)

(assert (=> start!714652 tp_is_empty!48193))

(declare-fun inv!90776 (Context!15828) Bool)

(assert (=> start!714652 (and (inv!90776 cWitness!35) e!4384797)))

(assert (=> start!714652 (and (inv!90776 ct1!256) e!4384800)))

(declare-fun ct2!352 () Context!15828)

(declare-fun e!4384803 () Bool)

(assert (=> start!714652 (and (inv!90776 ct2!352) e!4384803)))

(declare-fun b!7323185 () Bool)

(declare-fun e!4384801 () Bool)

(declare-fun e!4384802 () Bool)

(assert (=> b!7323185 (= e!4384801 e!4384802)))

(declare-fun res!2960094 () Bool)

(assert (=> b!7323185 (=> (not res!2960094) (not e!4384802))))

(declare-fun nullable!8078 (Regex!18974) Bool)

(assert (=> b!7323185 (= res!2960094 (nullable!8078 (h!77794 (exprs!8414 ct1!256))))))

(declare-fun lt!2605143 () Context!15828)

(declare-fun lt!2605137 () (Set Context!15828))

(declare-fun derivationStepZipperDown!2805 (Regex!18974 Context!15828 C!38222) (Set Context!15828))

(assert (=> b!7323185 (= lt!2605137 (derivationStepZipperDown!2805 (h!77794 (exprs!8414 ct1!256)) lt!2605143 c!10305))))

(declare-fun lt!2605138 () List!71470)

(assert (=> b!7323185 (= lt!2605143 (Context!15829 lt!2605138))))

(declare-fun tail!14663 (List!71470) List!71470)

(assert (=> b!7323185 (= lt!2605138 (tail!14663 (exprs!8414 ct1!256)))))

(declare-fun b!7323186 () Bool)

(declare-fun tp!2080064 () Bool)

(assert (=> b!7323186 (= e!4384803 tp!2080064)))

(declare-fun b!7323187 () Bool)

(declare-fun res!2960097 () Bool)

(assert (=> b!7323187 (=> (not res!2960097) (not e!4384801))))

(declare-fun isEmpty!40892 (List!71470) Bool)

(assert (=> b!7323187 (= res!2960097 (not (isEmpty!40892 (exprs!8414 ct1!256))))))

(declare-fun b!7323188 () Bool)

(declare-fun e!4384796 () Bool)

(assert (=> b!7323188 (= e!4384802 e!4384796)))

(declare-fun res!2960093 () Bool)

(assert (=> b!7323188 (=> (not res!2960093) (not e!4384796))))

(declare-fun lt!2605148 () (Set Context!15828))

(assert (=> b!7323188 (= res!2960093 (and (= lt!2605141 (set.union lt!2605137 lt!2605148)) (or (set.member cWitness!35 lt!2605137) (set.member cWitness!35 lt!2605148)) (set.member cWitness!35 lt!2605148)))))

(assert (=> b!7323188 (= lt!2605148 (derivationStepZipperUp!2654 lt!2605143 c!10305))))

(declare-fun b!7323189 () Bool)

(assert (=> b!7323189 (= e!4384796 (not e!4384798))))

(declare-fun res!2960096 () Bool)

(assert (=> b!7323189 (=> res!2960096 e!4384798)))

(declare-fun lt!2605147 () Context!15828)

(declare-fun lt!2605140 () List!71470)

(assert (=> b!7323189 (= res!2960096 (not (set.member lt!2605147 (derivationStepZipperUp!2654 (Context!15829 lt!2605140) c!10305))))))

(declare-datatypes ((Unit!164913 0))(
  ( (Unit!164914) )
))
(declare-fun lt!2605139 () Unit!164913)

(declare-fun lemmaConcatPreservesForall!1655 (List!71470 List!71470 Int) Unit!164913)

(assert (=> b!7323189 (= lt!2605139 (lemmaConcatPreservesForall!1655 (exprs!8414 cWitness!35) (exprs!8414 ct2!352) lambda!453703))))

(declare-fun ++!16798 (List!71470 List!71470) List!71470)

(assert (=> b!7323189 (set.member lt!2605147 (derivationStepZipperUp!2654 (Context!15829 (++!16798 lt!2605138 (exprs!8414 ct2!352))) c!10305))))

(assert (=> b!7323189 (= lt!2605147 (Context!15829 (++!16798 (exprs!8414 cWitness!35) (exprs!8414 ct2!352))))))

(declare-fun lt!2605142 () Unit!164913)

(assert (=> b!7323189 (= lt!2605142 (lemmaConcatPreservesForall!1655 lt!2605138 (exprs!8414 ct2!352) lambda!453703))))

(declare-fun lt!2605146 () Unit!164913)

(assert (=> b!7323189 (= lt!2605146 (lemmaConcatPreservesForall!1655 (exprs!8414 cWitness!35) (exprs!8414 ct2!352) lambda!453703))))

(declare-fun lt!2605144 () Unit!164913)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!45 (Context!15828 Context!15828 Context!15828 C!38222) Unit!164913)

(assert (=> b!7323189 (= lt!2605144 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!45 lt!2605143 ct2!352 cWitness!35 c!10305))))

(declare-fun b!7323190 () Bool)

(assert (=> b!7323190 (= e!4384799 e!4384801)))

(declare-fun res!2960098 () Bool)

(assert (=> b!7323190 (=> (not res!2960098) (not e!4384801))))

(assert (=> b!7323190 (= res!2960098 (is-Cons!71346 (exprs!8414 ct1!256)))))

(assert (=> b!7323190 (= lt!2605140 (++!16798 (exprs!8414 ct1!256) (exprs!8414 ct2!352)))))

(declare-fun lt!2605145 () Unit!164913)

(assert (=> b!7323190 (= lt!2605145 (lemmaConcatPreservesForall!1655 (exprs!8414 ct1!256) (exprs!8414 ct2!352) lambda!453703))))

(assert (= (and start!714652 res!2960095) b!7323190))

(assert (= (and b!7323190 res!2960098) b!7323187))

(assert (= (and b!7323187 res!2960097) b!7323185))

(assert (= (and b!7323185 res!2960094) b!7323188))

(assert (= (and b!7323188 res!2960093) b!7323189))

(assert (= (and b!7323189 (not res!2960096)) b!7323183))

(assert (= start!714652 b!7323182))

(assert (= start!714652 b!7323184))

(assert (= start!714652 b!7323186))

(declare-fun m!7988732 () Bool)

(assert (=> start!714652 m!7988732))

(declare-fun m!7988734 () Bool)

(assert (=> start!714652 m!7988734))

(declare-fun m!7988736 () Bool)

(assert (=> start!714652 m!7988736))

(declare-fun m!7988738 () Bool)

(assert (=> start!714652 m!7988738))

(declare-fun m!7988740 () Bool)

(assert (=> start!714652 m!7988740))

(declare-fun m!7988742 () Bool)

(assert (=> b!7323187 m!7988742))

(declare-fun m!7988744 () Bool)

(assert (=> b!7323185 m!7988744))

(declare-fun m!7988746 () Bool)

(assert (=> b!7323185 m!7988746))

(declare-fun m!7988748 () Bool)

(assert (=> b!7323185 m!7988748))

(declare-fun m!7988750 () Bool)

(assert (=> b!7323189 m!7988750))

(declare-fun m!7988752 () Bool)

(assert (=> b!7323189 m!7988752))

(declare-fun m!7988754 () Bool)

(assert (=> b!7323189 m!7988754))

(declare-fun m!7988756 () Bool)

(assert (=> b!7323189 m!7988756))

(declare-fun m!7988758 () Bool)

(assert (=> b!7323189 m!7988758))

(declare-fun m!7988760 () Bool)

(assert (=> b!7323189 m!7988760))

(declare-fun m!7988762 () Bool)

(assert (=> b!7323189 m!7988762))

(declare-fun m!7988764 () Bool)

(assert (=> b!7323189 m!7988764))

(assert (=> b!7323189 m!7988764))

(declare-fun m!7988766 () Bool)

(assert (=> b!7323189 m!7988766))

(declare-fun m!7988768 () Bool)

(assert (=> b!7323188 m!7988768))

(declare-fun m!7988770 () Bool)

(assert (=> b!7323188 m!7988770))

(declare-fun m!7988772 () Bool)

(assert (=> b!7323188 m!7988772))

(declare-fun m!7988774 () Bool)

(assert (=> b!7323190 m!7988774))

(declare-fun m!7988776 () Bool)

(assert (=> b!7323190 m!7988776))

(declare-fun m!7988778 () Bool)

(assert (=> b!7323183 m!7988778))

(push 1)

(assert (not b!7323186))

(assert (not b!7323184))

(assert (not b!7323188))

(assert (not b!7323182))

(assert tp_is_empty!48193)

(assert (not b!7323187))

(assert (not b!7323185))

(assert (not b!7323189))

(assert (not start!714652))

(assert (not b!7323190))

(assert (not b!7323183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7323228 () Bool)

(declare-fun res!2960122 () Bool)

(declare-fun e!4384833 () Bool)

(assert (=> b!7323228 (=> (not res!2960122) (not e!4384833))))

(declare-fun lt!2605187 () List!71470)

(declare-fun size!41900 (List!71470) Int)

(assert (=> b!7323228 (= res!2960122 (= (size!41900 lt!2605187) (+ (size!41900 (exprs!8414 ct1!256)) (size!41900 (exprs!8414 ct2!352)))))))

(declare-fun b!7323227 () Bool)

(declare-fun e!4384832 () List!71470)

(assert (=> b!7323227 (= e!4384832 (Cons!71346 (h!77794 (exprs!8414 ct1!256)) (++!16798 (t!385853 (exprs!8414 ct1!256)) (exprs!8414 ct2!352))))))

(declare-fun b!7323229 () Bool)

(assert (=> b!7323229 (= e!4384833 (or (not (= (exprs!8414 ct2!352) Nil!71346)) (= lt!2605187 (exprs!8414 ct1!256))))))

(declare-fun b!7323226 () Bool)

(assert (=> b!7323226 (= e!4384832 (exprs!8414 ct2!352))))

(declare-fun d!2274142 () Bool)

(assert (=> d!2274142 e!4384833))

(declare-fun res!2960121 () Bool)

(assert (=> d!2274142 (=> (not res!2960121) (not e!4384833))))

(declare-fun content!14923 (List!71470) (Set Regex!18974))

(assert (=> d!2274142 (= res!2960121 (= (content!14923 lt!2605187) (set.union (content!14923 (exprs!8414 ct1!256)) (content!14923 (exprs!8414 ct2!352)))))))

(assert (=> d!2274142 (= lt!2605187 e!4384832)))

(declare-fun c!1359067 () Bool)

(assert (=> d!2274142 (= c!1359067 (is-Nil!71346 (exprs!8414 ct1!256)))))

(assert (=> d!2274142 (= (++!16798 (exprs!8414 ct1!256) (exprs!8414 ct2!352)) lt!2605187)))

(assert (= (and d!2274142 c!1359067) b!7323226))

(assert (= (and d!2274142 (not c!1359067)) b!7323227))

(assert (= (and d!2274142 res!2960121) b!7323228))

(assert (= (and b!7323228 res!2960122) b!7323229))

(declare-fun m!7988828 () Bool)

(assert (=> b!7323228 m!7988828))

(declare-fun m!7988830 () Bool)

(assert (=> b!7323228 m!7988830))

(declare-fun m!7988832 () Bool)

(assert (=> b!7323228 m!7988832))

(declare-fun m!7988834 () Bool)

(assert (=> b!7323227 m!7988834))

(declare-fun m!7988836 () Bool)

(assert (=> d!2274142 m!7988836))

(declare-fun m!7988838 () Bool)

(assert (=> d!2274142 m!7988838))

(declare-fun m!7988840 () Bool)

(assert (=> d!2274142 m!7988840))

(assert (=> b!7323190 d!2274142))

(declare-fun d!2274144 () Bool)

(assert (=> d!2274144 (forall!17828 (++!16798 (exprs!8414 ct1!256) (exprs!8414 ct2!352)) lambda!453703)))

(declare-fun lt!2605190 () Unit!164913)

(declare-fun choose!56944 (List!71470 List!71470 Int) Unit!164913)

(assert (=> d!2274144 (= lt!2605190 (choose!56944 (exprs!8414 ct1!256) (exprs!8414 ct2!352) lambda!453703))))

(assert (=> d!2274144 (forall!17828 (exprs!8414 ct1!256) lambda!453703)))

(assert (=> d!2274144 (= (lemmaConcatPreservesForall!1655 (exprs!8414 ct1!256) (exprs!8414 ct2!352) lambda!453703) lt!2605190)))

(declare-fun bs!1916300 () Bool)

(assert (= bs!1916300 d!2274144))

(assert (=> bs!1916300 m!7988774))

(assert (=> bs!1916300 m!7988774))

(declare-fun m!7988842 () Bool)

(assert (=> bs!1916300 m!7988842))

(declare-fun m!7988844 () Bool)

(assert (=> bs!1916300 m!7988844))

(declare-fun m!7988846 () Bool)

(assert (=> bs!1916300 m!7988846))

(assert (=> b!7323190 d!2274144))

(declare-fun d!2274146 () Bool)

(declare-fun nullableFct!3196 (Regex!18974) Bool)

(assert (=> d!2274146 (= (nullable!8078 (h!77794 (exprs!8414 ct1!256))) (nullableFct!3196 (h!77794 (exprs!8414 ct1!256))))))

(declare-fun bs!1916301 () Bool)

(assert (= bs!1916301 d!2274146))

(declare-fun m!7988848 () Bool)

(assert (=> bs!1916301 m!7988848))

(assert (=> b!7323185 d!2274146))

(declare-fun bm!666091 () Bool)

(declare-fun call!666100 () List!71470)

(declare-fun call!666097 () List!71470)

(assert (=> bm!666091 (= call!666100 call!666097)))

(declare-fun b!7323262 () Bool)

(declare-fun e!4384857 () (Set Context!15828))

(declare-fun call!666098 () (Set Context!15828))

(declare-fun call!666096 () (Set Context!15828))

(assert (=> b!7323262 (= e!4384857 (set.union call!666098 call!666096))))

(declare-fun c!1359086 () Bool)

(declare-fun bm!666092 () Bool)

(declare-fun c!1359082 () Bool)

(declare-fun call!666099 () (Set Context!15828))

(declare-fun c!1359085 () Bool)

(assert (=> bm!666092 (= call!666099 (derivationStepZipperDown!2805 (ite c!1359085 (regTwo!38461 (h!77794 (exprs!8414 ct1!256))) (ite c!1359086 (regTwo!38460 (h!77794 (exprs!8414 ct1!256))) (ite c!1359082 (regOne!38460 (h!77794 (exprs!8414 ct1!256))) (reg!19303 (h!77794 (exprs!8414 ct1!256)))))) (ite (or c!1359085 c!1359086) lt!2605143 (Context!15829 call!666100)) c!10305))))

(declare-fun b!7323263 () Bool)

(declare-fun e!4384856 () (Set Context!15828))

(declare-fun e!4384854 () (Set Context!15828))

(assert (=> b!7323263 (= e!4384856 e!4384854)))

(assert (=> b!7323263 (= c!1359085 (is-Union!18974 (h!77794 (exprs!8414 ct1!256))))))

(declare-fun bm!666093 () Bool)

(declare-fun call!666101 () (Set Context!15828))

(assert (=> bm!666093 (= call!666101 call!666096)))

(declare-fun bm!666094 () Bool)

(declare-fun $colon$colon!3012 (List!71470 Regex!18974) List!71470)

(assert (=> bm!666094 (= call!666097 ($colon$colon!3012 (exprs!8414 lt!2605143) (ite (or c!1359086 c!1359082) (regTwo!38460 (h!77794 (exprs!8414 ct1!256))) (h!77794 (exprs!8414 ct1!256)))))))

(declare-fun b!7323265 () Bool)

(declare-fun c!1359084 () Bool)

(assert (=> b!7323265 (= c!1359084 (is-Star!18974 (h!77794 (exprs!8414 ct1!256))))))

(declare-fun e!4384853 () (Set Context!15828))

(declare-fun e!4384855 () (Set Context!15828))

(assert (=> b!7323265 (= e!4384853 e!4384855)))

(declare-fun b!7323266 () Bool)

(assert (=> b!7323266 (= e!4384857 e!4384853)))

(assert (=> b!7323266 (= c!1359082 (is-Concat!27819 (h!77794 (exprs!8414 ct1!256))))))

(declare-fun b!7323267 () Bool)

(declare-fun e!4384852 () Bool)

(assert (=> b!7323267 (= e!4384852 (nullable!8078 (regOne!38460 (h!77794 (exprs!8414 ct1!256)))))))

(declare-fun b!7323268 () Bool)

(assert (=> b!7323268 (= e!4384856 (set.insert lt!2605143 (as set.empty (Set Context!15828))))))

(declare-fun b!7323269 () Bool)

(assert (=> b!7323269 (= e!4384853 call!666101)))

(declare-fun b!7323270 () Bool)

(assert (=> b!7323270 (= e!4384855 (as set.empty (Set Context!15828)))))

(declare-fun bm!666095 () Bool)

(assert (=> bm!666095 (= call!666096 call!666099)))

(declare-fun b!7323271 () Bool)

(assert (=> b!7323271 (= c!1359086 e!4384852)))

(declare-fun res!2960127 () Bool)

(assert (=> b!7323271 (=> (not res!2960127) (not e!4384852))))

(assert (=> b!7323271 (= res!2960127 (is-Concat!27819 (h!77794 (exprs!8414 ct1!256))))))

(assert (=> b!7323271 (= e!4384854 e!4384857)))

(declare-fun b!7323264 () Bool)

(assert (=> b!7323264 (= e!4384855 call!666101)))

(declare-fun d!2274148 () Bool)

(declare-fun c!1359083 () Bool)

(assert (=> d!2274148 (= c!1359083 (and (is-ElementMatch!18974 (h!77794 (exprs!8414 ct1!256))) (= (c!1359063 (h!77794 (exprs!8414 ct1!256))) c!10305)))))

(assert (=> d!2274148 (= (derivationStepZipperDown!2805 (h!77794 (exprs!8414 ct1!256)) lt!2605143 c!10305) e!4384856)))

(declare-fun bm!666096 () Bool)

(assert (=> bm!666096 (= call!666098 (derivationStepZipperDown!2805 (ite c!1359085 (regOne!38461 (h!77794 (exprs!8414 ct1!256))) (regOne!38460 (h!77794 (exprs!8414 ct1!256)))) (ite c!1359085 lt!2605143 (Context!15829 call!666097)) c!10305))))

(declare-fun b!7323272 () Bool)

(assert (=> b!7323272 (= e!4384854 (set.union call!666098 call!666099))))

(assert (= (and d!2274148 c!1359083) b!7323268))

(assert (= (and d!2274148 (not c!1359083)) b!7323263))

(assert (= (and b!7323263 c!1359085) b!7323272))

(assert (= (and b!7323263 (not c!1359085)) b!7323271))

(assert (= (and b!7323271 res!2960127) b!7323267))

(assert (= (and b!7323271 c!1359086) b!7323262))

(assert (= (and b!7323271 (not c!1359086)) b!7323266))

(assert (= (and b!7323266 c!1359082) b!7323269))

(assert (= (and b!7323266 (not c!1359082)) b!7323265))

(assert (= (and b!7323265 c!1359084) b!7323264))

(assert (= (and b!7323265 (not c!1359084)) b!7323270))

(assert (= (or b!7323269 b!7323264) bm!666091))

(assert (= (or b!7323269 b!7323264) bm!666093))

(assert (= (or b!7323262 bm!666093) bm!666095))

(assert (= (or b!7323262 bm!666091) bm!666094))

(assert (= (or b!7323272 bm!666095) bm!666092))

(assert (= (or b!7323272 b!7323262) bm!666096))

(declare-fun m!7988850 () Bool)

(assert (=> bm!666092 m!7988850))

(declare-fun m!7988852 () Bool)

(assert (=> b!7323267 m!7988852))

(declare-fun m!7988854 () Bool)

(assert (=> bm!666094 m!7988854))

(declare-fun m!7988856 () Bool)

(assert (=> bm!666096 m!7988856))

(declare-fun m!7988858 () Bool)

(assert (=> b!7323268 m!7988858))

(assert (=> b!7323185 d!2274148))

(declare-fun d!2274152 () Bool)

(assert (=> d!2274152 (= (tail!14663 (exprs!8414 ct1!256)) (t!385853 (exprs!8414 ct1!256)))))

(assert (=> b!7323185 d!2274152))

(declare-fun d!2274154 () Bool)

(assert (=> d!2274154 (= (isEmpty!40892 (exprs!8414 ct1!256)) (is-Nil!71346 (exprs!8414 ct1!256)))))

(assert (=> b!7323187 d!2274154))

(declare-fun b!7323288 () Bool)

(declare-fun e!4384869 () (Set Context!15828))

(declare-fun e!4384867 () (Set Context!15828))

(assert (=> b!7323288 (= e!4384869 e!4384867)))

(declare-fun c!1359094 () Bool)

(assert (=> b!7323288 (= c!1359094 (is-Cons!71346 (exprs!8414 lt!2605143)))))

(declare-fun b!7323289 () Bool)

(declare-fun call!666105 () (Set Context!15828))

(assert (=> b!7323289 (= e!4384867 call!666105)))

(declare-fun d!2274156 () Bool)

(declare-fun c!1359093 () Bool)

(declare-fun e!4384868 () Bool)

(assert (=> d!2274156 (= c!1359093 e!4384868)))

(declare-fun res!2960131 () Bool)

(assert (=> d!2274156 (=> (not res!2960131) (not e!4384868))))

(assert (=> d!2274156 (= res!2960131 (is-Cons!71346 (exprs!8414 lt!2605143)))))

(assert (=> d!2274156 (= (derivationStepZipperUp!2654 lt!2605143 c!10305) e!4384869)))

(declare-fun b!7323290 () Bool)

(assert (=> b!7323290 (= e!4384867 (as set.empty (Set Context!15828)))))

(declare-fun b!7323291 () Bool)

(assert (=> b!7323291 (= e!4384868 (nullable!8078 (h!77794 (exprs!8414 lt!2605143))))))

(declare-fun bm!666100 () Bool)

(assert (=> bm!666100 (= call!666105 (derivationStepZipperDown!2805 (h!77794 (exprs!8414 lt!2605143)) (Context!15829 (t!385853 (exprs!8414 lt!2605143))) c!10305))))

(declare-fun b!7323292 () Bool)

(assert (=> b!7323292 (= e!4384869 (set.union call!666105 (derivationStepZipperUp!2654 (Context!15829 (t!385853 (exprs!8414 lt!2605143))) c!10305)))))

(assert (= (and d!2274156 res!2960131) b!7323291))

(assert (= (and d!2274156 c!1359093) b!7323292))

(assert (= (and d!2274156 (not c!1359093)) b!7323288))

(assert (= (and b!7323288 c!1359094) b!7323289))

(assert (= (and b!7323288 (not c!1359094)) b!7323290))

(assert (= (or b!7323292 b!7323289) bm!666100))

(declare-fun m!7988866 () Bool)

(assert (=> b!7323291 m!7988866))

(declare-fun m!7988868 () Bool)

(assert (=> bm!666100 m!7988868))

(declare-fun m!7988870 () Bool)

(assert (=> b!7323292 m!7988870))

(assert (=> b!7323188 d!2274156))

(declare-fun b!7323293 () Bool)

(declare-fun e!4384872 () (Set Context!15828))

(declare-fun e!4384870 () (Set Context!15828))

(assert (=> b!7323293 (= e!4384872 e!4384870)))

(declare-fun c!1359096 () Bool)

(assert (=> b!7323293 (= c!1359096 (is-Cons!71346 (exprs!8414 ct1!256)))))

(declare-fun b!7323294 () Bool)

(declare-fun call!666106 () (Set Context!15828))

(assert (=> b!7323294 (= e!4384870 call!666106)))

(declare-fun d!2274162 () Bool)

(declare-fun c!1359095 () Bool)

(declare-fun e!4384871 () Bool)

(assert (=> d!2274162 (= c!1359095 e!4384871)))

(declare-fun res!2960132 () Bool)

(assert (=> d!2274162 (=> (not res!2960132) (not e!4384871))))

(assert (=> d!2274162 (= res!2960132 (is-Cons!71346 (exprs!8414 ct1!256)))))

(assert (=> d!2274162 (= (derivationStepZipperUp!2654 ct1!256 c!10305) e!4384872)))

(declare-fun b!7323295 () Bool)

(assert (=> b!7323295 (= e!4384870 (as set.empty (Set Context!15828)))))

(declare-fun b!7323296 () Bool)

(assert (=> b!7323296 (= e!4384871 (nullable!8078 (h!77794 (exprs!8414 ct1!256))))))

(declare-fun bm!666101 () Bool)

(assert (=> bm!666101 (= call!666106 (derivationStepZipperDown!2805 (h!77794 (exprs!8414 ct1!256)) (Context!15829 (t!385853 (exprs!8414 ct1!256))) c!10305))))

(declare-fun b!7323297 () Bool)

(assert (=> b!7323297 (= e!4384872 (set.union call!666106 (derivationStepZipperUp!2654 (Context!15829 (t!385853 (exprs!8414 ct1!256))) c!10305)))))

(assert (= (and d!2274162 res!2960132) b!7323296))

(assert (= (and d!2274162 c!1359095) b!7323297))

(assert (= (and d!2274162 (not c!1359095)) b!7323293))

(assert (= (and b!7323293 c!1359096) b!7323294))

(assert (= (and b!7323293 (not c!1359096)) b!7323295))

(assert (= (or b!7323297 b!7323294) bm!666101))

(assert (=> b!7323296 m!7988744))

(declare-fun m!7988872 () Bool)

(assert (=> bm!666101 m!7988872))

(declare-fun m!7988874 () Bool)

(assert (=> b!7323297 m!7988874))

(assert (=> start!714652 d!2274162))

(declare-fun bs!1916302 () Bool)

(declare-fun d!2274164 () Bool)

(assert (= bs!1916302 (and d!2274164 b!7323190)))

(declare-fun lambda!453717 () Int)

(assert (=> bs!1916302 (= lambda!453717 lambda!453703)))

(assert (=> d!2274164 (= (inv!90776 cWitness!35) (forall!17828 (exprs!8414 cWitness!35) lambda!453717))))

(declare-fun bs!1916303 () Bool)

(assert (= bs!1916303 d!2274164))

(declare-fun m!7988876 () Bool)

(assert (=> bs!1916303 m!7988876))

(assert (=> start!714652 d!2274164))

(declare-fun bs!1916304 () Bool)

(declare-fun d!2274166 () Bool)

(assert (= bs!1916304 (and d!2274166 b!7323190)))

(declare-fun lambda!453718 () Int)

(assert (=> bs!1916304 (= lambda!453718 lambda!453703)))

(declare-fun bs!1916305 () Bool)

(assert (= bs!1916305 (and d!2274166 d!2274164)))

(assert (=> bs!1916305 (= lambda!453718 lambda!453717)))

(assert (=> d!2274166 (= (inv!90776 ct1!256) (forall!17828 (exprs!8414 ct1!256) lambda!453718))))

(declare-fun bs!1916306 () Bool)

(assert (= bs!1916306 d!2274166))

(declare-fun m!7988878 () Bool)

(assert (=> bs!1916306 m!7988878))

(assert (=> start!714652 d!2274166))

(declare-fun bs!1916307 () Bool)

(declare-fun d!2274168 () Bool)

(assert (= bs!1916307 (and d!2274168 b!7323190)))

(declare-fun lambda!453719 () Int)

(assert (=> bs!1916307 (= lambda!453719 lambda!453703)))

(declare-fun bs!1916308 () Bool)

(assert (= bs!1916308 (and d!2274168 d!2274164)))

(assert (=> bs!1916308 (= lambda!453719 lambda!453717)))

(declare-fun bs!1916309 () Bool)

(assert (= bs!1916309 (and d!2274168 d!2274166)))

(assert (=> bs!1916309 (= lambda!453719 lambda!453718)))

(assert (=> d!2274168 (= (inv!90776 ct2!352) (forall!17828 (exprs!8414 ct2!352) lambda!453719))))

(declare-fun bs!1916310 () Bool)

(assert (= bs!1916310 d!2274168))

(declare-fun m!7988880 () Bool)

(assert (=> bs!1916310 m!7988880))

(assert (=> start!714652 d!2274168))

(declare-fun d!2274170 () Bool)

(declare-fun res!2960137 () Bool)

(declare-fun e!4384877 () Bool)

(assert (=> d!2274170 (=> res!2960137 e!4384877)))

(assert (=> d!2274170 (= res!2960137 (is-Nil!71346 (exprs!8414 cWitness!35)))))

(assert (=> d!2274170 (= (forall!17828 (exprs!8414 cWitness!35) lambda!453703) e!4384877)))

(declare-fun b!7323302 () Bool)

(declare-fun e!4384878 () Bool)

(assert (=> b!7323302 (= e!4384877 e!4384878)))

(declare-fun res!2960138 () Bool)

(assert (=> b!7323302 (=> (not res!2960138) (not e!4384878))))

(declare-fun dynLambda!29391 (Int Regex!18974) Bool)

(assert (=> b!7323302 (= res!2960138 (dynLambda!29391 lambda!453703 (h!77794 (exprs!8414 cWitness!35))))))

(declare-fun b!7323303 () Bool)

(assert (=> b!7323303 (= e!4384878 (forall!17828 (t!385853 (exprs!8414 cWitness!35)) lambda!453703))))

(assert (= (and d!2274170 (not res!2960137)) b!7323302))

(assert (= (and b!7323302 res!2960138) b!7323303))

(declare-fun b_lambda!283219 () Bool)

(assert (=> (not b_lambda!283219) (not b!7323302)))

(declare-fun m!7988882 () Bool)

(assert (=> b!7323302 m!7988882))

(declare-fun m!7988884 () Bool)

(assert (=> b!7323303 m!7988884))

(assert (=> b!7323183 d!2274170))

(declare-fun b!7323306 () Bool)

(declare-fun res!2960140 () Bool)

(declare-fun e!4384880 () Bool)

(assert (=> b!7323306 (=> (not res!2960140) (not e!4384880))))

(declare-fun lt!2605191 () List!71470)

(assert (=> b!7323306 (= res!2960140 (= (size!41900 lt!2605191) (+ (size!41900 lt!2605138) (size!41900 (exprs!8414 ct2!352)))))))

(declare-fun b!7323305 () Bool)

(declare-fun e!4384879 () List!71470)

(assert (=> b!7323305 (= e!4384879 (Cons!71346 (h!77794 lt!2605138) (++!16798 (t!385853 lt!2605138) (exprs!8414 ct2!352))))))

(declare-fun b!7323307 () Bool)

(assert (=> b!7323307 (= e!4384880 (or (not (= (exprs!8414 ct2!352) Nil!71346)) (= lt!2605191 lt!2605138)))))

(declare-fun b!7323304 () Bool)

(assert (=> b!7323304 (= e!4384879 (exprs!8414 ct2!352))))

(declare-fun d!2274172 () Bool)

(assert (=> d!2274172 e!4384880))

(declare-fun res!2960139 () Bool)

(assert (=> d!2274172 (=> (not res!2960139) (not e!4384880))))

(assert (=> d!2274172 (= res!2960139 (= (content!14923 lt!2605191) (set.union (content!14923 lt!2605138) (content!14923 (exprs!8414 ct2!352)))))))

(assert (=> d!2274172 (= lt!2605191 e!4384879)))

(declare-fun c!1359097 () Bool)

(assert (=> d!2274172 (= c!1359097 (is-Nil!71346 lt!2605138))))

(assert (=> d!2274172 (= (++!16798 lt!2605138 (exprs!8414 ct2!352)) lt!2605191)))

(assert (= (and d!2274172 c!1359097) b!7323304))

(assert (= (and d!2274172 (not c!1359097)) b!7323305))

(assert (= (and d!2274172 res!2960139) b!7323306))

(assert (= (and b!7323306 res!2960140) b!7323307))

(declare-fun m!7988886 () Bool)

(assert (=> b!7323306 m!7988886))

(declare-fun m!7988888 () Bool)

(assert (=> b!7323306 m!7988888))

(assert (=> b!7323306 m!7988832))

(declare-fun m!7988890 () Bool)

(assert (=> b!7323305 m!7988890))

(declare-fun m!7988892 () Bool)

(assert (=> d!2274172 m!7988892))

(declare-fun m!7988894 () Bool)

(assert (=> d!2274172 m!7988894))

(assert (=> d!2274172 m!7988840))

(assert (=> b!7323189 d!2274172))

(declare-fun b!7323312 () Bool)

(declare-fun e!4384885 () (Set Context!15828))

(declare-fun e!4384883 () (Set Context!15828))

(assert (=> b!7323312 (= e!4384885 e!4384883)))

(declare-fun c!1359101 () Bool)

(assert (=> b!7323312 (= c!1359101 (is-Cons!71346 (exprs!8414 (Context!15829 (++!16798 lt!2605138 (exprs!8414 ct2!352))))))))

(declare-fun b!7323313 () Bool)

(declare-fun call!666107 () (Set Context!15828))

(assert (=> b!7323313 (= e!4384883 call!666107)))

(declare-fun d!2274174 () Bool)

(declare-fun c!1359100 () Bool)

(declare-fun e!4384884 () Bool)

(assert (=> d!2274174 (= c!1359100 e!4384884)))

(declare-fun res!2960141 () Bool)

(assert (=> d!2274174 (=> (not res!2960141) (not e!4384884))))

(assert (=> d!2274174 (= res!2960141 (is-Cons!71346 (exprs!8414 (Context!15829 (++!16798 lt!2605138 (exprs!8414 ct2!352))))))))

(assert (=> d!2274174 (= (derivationStepZipperUp!2654 (Context!15829 (++!16798 lt!2605138 (exprs!8414 ct2!352))) c!10305) e!4384885)))

(declare-fun b!7323314 () Bool)

(assert (=> b!7323314 (= e!4384883 (as set.empty (Set Context!15828)))))

(declare-fun b!7323315 () Bool)

(assert (=> b!7323315 (= e!4384884 (nullable!8078 (h!77794 (exprs!8414 (Context!15829 (++!16798 lt!2605138 (exprs!8414 ct2!352)))))))))

(declare-fun bm!666102 () Bool)

(assert (=> bm!666102 (= call!666107 (derivationStepZipperDown!2805 (h!77794 (exprs!8414 (Context!15829 (++!16798 lt!2605138 (exprs!8414 ct2!352))))) (Context!15829 (t!385853 (exprs!8414 (Context!15829 (++!16798 lt!2605138 (exprs!8414 ct2!352)))))) c!10305))))

(declare-fun b!7323316 () Bool)

(assert (=> b!7323316 (= e!4384885 (set.union call!666107 (derivationStepZipperUp!2654 (Context!15829 (t!385853 (exprs!8414 (Context!15829 (++!16798 lt!2605138 (exprs!8414 ct2!352)))))) c!10305)))))

(assert (= (and d!2274174 res!2960141) b!7323315))

(assert (= (and d!2274174 c!1359100) b!7323316))

(assert (= (and d!2274174 (not c!1359100)) b!7323312))

(assert (= (and b!7323312 c!1359101) b!7323313))

(assert (= (and b!7323312 (not c!1359101)) b!7323314))

(assert (= (or b!7323316 b!7323313) bm!666102))

(declare-fun m!7988896 () Bool)

(assert (=> b!7323315 m!7988896))

(declare-fun m!7988898 () Bool)

(assert (=> bm!666102 m!7988898))

(declare-fun m!7988900 () Bool)

(assert (=> b!7323316 m!7988900))

(assert (=> b!7323189 d!2274174))

(declare-fun d!2274176 () Bool)

(assert (=> d!2274176 (forall!17828 (++!16798 (exprs!8414 cWitness!35) (exprs!8414 ct2!352)) lambda!453703)))

(declare-fun lt!2605194 () Unit!164913)

(assert (=> d!2274176 (= lt!2605194 (choose!56944 (exprs!8414 cWitness!35) (exprs!8414 ct2!352) lambda!453703))))

(assert (=> d!2274176 (forall!17828 (exprs!8414 cWitness!35) lambda!453703)))

(assert (=> d!2274176 (= (lemmaConcatPreservesForall!1655 (exprs!8414 cWitness!35) (exprs!8414 ct2!352) lambda!453703) lt!2605194)))

(declare-fun bs!1916311 () Bool)

(assert (= bs!1916311 d!2274176))

(assert (=> bs!1916311 m!7988754))

(assert (=> bs!1916311 m!7988754))

(declare-fun m!7988902 () Bool)

(assert (=> bs!1916311 m!7988902))

(declare-fun m!7988904 () Bool)

(assert (=> bs!1916311 m!7988904))

(assert (=> bs!1916311 m!7988778))

(assert (=> b!7323189 d!2274176))

(declare-fun b!7323323 () Bool)

(declare-fun res!2960147 () Bool)

(declare-fun e!4384889 () Bool)

(assert (=> b!7323323 (=> (not res!2960147) (not e!4384889))))

(declare-fun lt!2605195 () List!71470)

(assert (=> b!7323323 (= res!2960147 (= (size!41900 lt!2605195) (+ (size!41900 (exprs!8414 cWitness!35)) (size!41900 (exprs!8414 ct2!352)))))))

(declare-fun b!7323322 () Bool)

(declare-fun e!4384888 () List!71470)

(assert (=> b!7323322 (= e!4384888 (Cons!71346 (h!77794 (exprs!8414 cWitness!35)) (++!16798 (t!385853 (exprs!8414 cWitness!35)) (exprs!8414 ct2!352))))))

(declare-fun b!7323324 () Bool)

(assert (=> b!7323324 (= e!4384889 (or (not (= (exprs!8414 ct2!352) Nil!71346)) (= lt!2605195 (exprs!8414 cWitness!35))))))

(declare-fun b!7323321 () Bool)

(assert (=> b!7323321 (= e!4384888 (exprs!8414 ct2!352))))

(declare-fun d!2274178 () Bool)

(assert (=> d!2274178 e!4384889))

(declare-fun res!2960146 () Bool)

(assert (=> d!2274178 (=> (not res!2960146) (not e!4384889))))

(assert (=> d!2274178 (= res!2960146 (= (content!14923 lt!2605195) (set.union (content!14923 (exprs!8414 cWitness!35)) (content!14923 (exprs!8414 ct2!352)))))))

(assert (=> d!2274178 (= lt!2605195 e!4384888)))

(declare-fun c!1359102 () Bool)

(assert (=> d!2274178 (= c!1359102 (is-Nil!71346 (exprs!8414 cWitness!35)))))

(assert (=> d!2274178 (= (++!16798 (exprs!8414 cWitness!35) (exprs!8414 ct2!352)) lt!2605195)))

(assert (= (and d!2274178 c!1359102) b!7323321))

(assert (= (and d!2274178 (not c!1359102)) b!7323322))

(assert (= (and d!2274178 res!2960146) b!7323323))

(assert (= (and b!7323323 res!2960147) b!7323324))

(declare-fun m!7988906 () Bool)

(assert (=> b!7323323 m!7988906))

(declare-fun m!7988908 () Bool)

(assert (=> b!7323323 m!7988908))

(assert (=> b!7323323 m!7988832))

(declare-fun m!7988910 () Bool)

(assert (=> b!7323322 m!7988910))

(declare-fun m!7988912 () Bool)

(assert (=> d!2274178 m!7988912))

(declare-fun m!7988914 () Bool)

(assert (=> d!2274178 m!7988914))

(assert (=> d!2274178 m!7988840))

(assert (=> b!7323189 d!2274178))

(declare-fun b!7323325 () Bool)

(declare-fun e!4384892 () (Set Context!15828))

(declare-fun e!4384890 () (Set Context!15828))

(assert (=> b!7323325 (= e!4384892 e!4384890)))

(declare-fun c!1359104 () Bool)

(assert (=> b!7323325 (= c!1359104 (is-Cons!71346 (exprs!8414 (Context!15829 lt!2605140))))))

(declare-fun b!7323326 () Bool)

(declare-fun call!666108 () (Set Context!15828))

(assert (=> b!7323326 (= e!4384890 call!666108)))

(declare-fun d!2274180 () Bool)

(declare-fun c!1359103 () Bool)

(declare-fun e!4384891 () Bool)

(assert (=> d!2274180 (= c!1359103 e!4384891)))

(declare-fun res!2960148 () Bool)

(assert (=> d!2274180 (=> (not res!2960148) (not e!4384891))))

(assert (=> d!2274180 (= res!2960148 (is-Cons!71346 (exprs!8414 (Context!15829 lt!2605140))))))

(assert (=> d!2274180 (= (derivationStepZipperUp!2654 (Context!15829 lt!2605140) c!10305) e!4384892)))

(declare-fun b!7323327 () Bool)

(assert (=> b!7323327 (= e!4384890 (as set.empty (Set Context!15828)))))

(declare-fun b!7323328 () Bool)

(assert (=> b!7323328 (= e!4384891 (nullable!8078 (h!77794 (exprs!8414 (Context!15829 lt!2605140)))))))

(declare-fun bm!666103 () Bool)

(assert (=> bm!666103 (= call!666108 (derivationStepZipperDown!2805 (h!77794 (exprs!8414 (Context!15829 lt!2605140))) (Context!15829 (t!385853 (exprs!8414 (Context!15829 lt!2605140)))) c!10305))))

(declare-fun b!7323329 () Bool)

(assert (=> b!7323329 (= e!4384892 (set.union call!666108 (derivationStepZipperUp!2654 (Context!15829 (t!385853 (exprs!8414 (Context!15829 lt!2605140)))) c!10305)))))

(assert (= (and d!2274180 res!2960148) b!7323328))

(assert (= (and d!2274180 c!1359103) b!7323329))

(assert (= (and d!2274180 (not c!1359103)) b!7323325))

(assert (= (and b!7323325 c!1359104) b!7323326))

(assert (= (and b!7323325 (not c!1359104)) b!7323327))

(assert (= (or b!7323329 b!7323326) bm!666103))

(declare-fun m!7988916 () Bool)

(assert (=> b!7323328 m!7988916))

(declare-fun m!7988918 () Bool)

(assert (=> bm!666103 m!7988918))

(declare-fun m!7988920 () Bool)

(assert (=> b!7323329 m!7988920))

(assert (=> b!7323189 d!2274180))

(declare-fun bs!1916312 () Bool)

(declare-fun d!2274182 () Bool)

(assert (= bs!1916312 (and d!2274182 b!7323190)))

(declare-fun lambda!453724 () Int)

(assert (=> bs!1916312 (= lambda!453724 lambda!453703)))

(declare-fun bs!1916313 () Bool)

(assert (= bs!1916313 (and d!2274182 d!2274164)))

(assert (=> bs!1916313 (= lambda!453724 lambda!453717)))

(declare-fun bs!1916314 () Bool)

(assert (= bs!1916314 (and d!2274182 d!2274166)))

(assert (=> bs!1916314 (= lambda!453724 lambda!453718)))

(declare-fun bs!1916315 () Bool)

(assert (= bs!1916315 (and d!2274182 d!2274168)))

(assert (=> bs!1916315 (= lambda!453724 lambda!453719)))

(assert (=> d!2274182 (set.member (Context!15829 (++!16798 (exprs!8414 cWitness!35) (exprs!8414 ct2!352))) (derivationStepZipperUp!2654 (Context!15829 (++!16798 (exprs!8414 lt!2605143) (exprs!8414 ct2!352))) c!10305))))

(declare-fun lt!2605205 () Unit!164913)

(assert (=> d!2274182 (= lt!2605205 (lemmaConcatPreservesForall!1655 (exprs!8414 lt!2605143) (exprs!8414 ct2!352) lambda!453724))))

(declare-fun lt!2605204 () Unit!164913)

(assert (=> d!2274182 (= lt!2605204 (lemmaConcatPreservesForall!1655 (exprs!8414 cWitness!35) (exprs!8414 ct2!352) lambda!453724))))

(declare-fun lt!2605203 () Unit!164913)

(declare-fun choose!56945 (Context!15828 Context!15828 Context!15828 C!38222) Unit!164913)

(assert (=> d!2274182 (= lt!2605203 (choose!56945 lt!2605143 ct2!352 cWitness!35 c!10305))))

(assert (=> d!2274182 (set.member cWitness!35 (derivationStepZipperUp!2654 lt!2605143 c!10305))))

(assert (=> d!2274182 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!45 lt!2605143 ct2!352 cWitness!35 c!10305) lt!2605203)))

(declare-fun bs!1916316 () Bool)

(assert (= bs!1916316 d!2274182))

(assert (=> bs!1916316 m!7988754))

(declare-fun m!7988936 () Bool)

(assert (=> bs!1916316 m!7988936))

(declare-fun m!7988938 () Bool)

(assert (=> bs!1916316 m!7988938))

(declare-fun m!7988940 () Bool)

(assert (=> bs!1916316 m!7988940))

(declare-fun m!7988942 () Bool)

(assert (=> bs!1916316 m!7988942))

(declare-fun m!7988944 () Bool)

(assert (=> bs!1916316 m!7988944))

(assert (=> bs!1916316 m!7988772))

(declare-fun m!7988946 () Bool)

(assert (=> bs!1916316 m!7988946))

(declare-fun m!7988948 () Bool)

(assert (=> bs!1916316 m!7988948))

(assert (=> b!7323189 d!2274182))

(declare-fun d!2274186 () Bool)

(assert (=> d!2274186 (forall!17828 (++!16798 lt!2605138 (exprs!8414 ct2!352)) lambda!453703)))

(declare-fun lt!2605206 () Unit!164913)

(assert (=> d!2274186 (= lt!2605206 (choose!56944 lt!2605138 (exprs!8414 ct2!352) lambda!453703))))

(assert (=> d!2274186 (forall!17828 lt!2605138 lambda!453703)))

(assert (=> d!2274186 (= (lemmaConcatPreservesForall!1655 lt!2605138 (exprs!8414 ct2!352) lambda!453703) lt!2605206)))

(declare-fun bs!1916317 () Bool)

(assert (= bs!1916317 d!2274186))

(assert (=> bs!1916317 m!7988756))

(assert (=> bs!1916317 m!7988756))

(declare-fun m!7988950 () Bool)

(assert (=> bs!1916317 m!7988950))

(declare-fun m!7988952 () Bool)

(assert (=> bs!1916317 m!7988952))

(declare-fun m!7988954 () Bool)

(assert (=> bs!1916317 m!7988954))

(assert (=> b!7323189 d!2274186))

(declare-fun b!7323338 () Bool)

(declare-fun e!4384897 () Bool)

(declare-fun tp!2080078 () Bool)

(declare-fun tp!2080079 () Bool)

(assert (=> b!7323338 (= e!4384897 (and tp!2080078 tp!2080079))))

(assert (=> b!7323186 (= tp!2080064 e!4384897)))

(assert (= (and b!7323186 (is-Cons!71346 (exprs!8414 ct2!352))) b!7323338))

(declare-fun b!7323339 () Bool)

(declare-fun e!4384898 () Bool)

(declare-fun tp!2080080 () Bool)

(declare-fun tp!2080081 () Bool)

(assert (=> b!7323339 (= e!4384898 (and tp!2080080 tp!2080081))))

(assert (=> b!7323182 (= tp!2080063 e!4384898)))

(assert (= (and b!7323182 (is-Cons!71346 (exprs!8414 cWitness!35))) b!7323339))

(declare-fun b!7323340 () Bool)

(declare-fun e!4384899 () Bool)

(declare-fun tp!2080082 () Bool)

(declare-fun tp!2080083 () Bool)

(assert (=> b!7323340 (= e!4384899 (and tp!2080082 tp!2080083))))

(assert (=> b!7323184 (= tp!2080062 e!4384899)))

(assert (= (and b!7323184 (is-Cons!71346 (exprs!8414 ct1!256))) b!7323340))

(declare-fun b_lambda!283221 () Bool)

(assert (= b_lambda!283219 (or b!7323190 b_lambda!283221)))

(declare-fun bs!1916318 () Bool)

(declare-fun d!2274188 () Bool)

(assert (= bs!1916318 (and d!2274188 b!7323190)))

(declare-fun validRegex!9621 (Regex!18974) Bool)

(assert (=> bs!1916318 (= (dynLambda!29391 lambda!453703 (h!77794 (exprs!8414 cWitness!35))) (validRegex!9621 (h!77794 (exprs!8414 cWitness!35))))))

(declare-fun m!7988956 () Bool)

(assert (=> bs!1916318 m!7988956))

(assert (=> b!7323302 d!2274188))

(push 1)

(assert (not b!7323339))

(assert (not b!7323338))

(assert (not d!2274176))

(assert (not b!7323227))

(assert (not b!7323322))

(assert (not d!2274172))

(assert (not d!2274168))

(assert (not d!2274182))

(assert tp_is_empty!48193)

(assert (not d!2274146))

(assert (not b!7323316))

(assert (not d!2274186))

(assert (not bm!666102))

(assert (not d!2274178))

(assert (not b!7323328))

(assert (not d!2274166))

(assert (not bm!666103))

(assert (not b!7323297))

(assert (not b!7323296))

(assert (not d!2274142))

(assert (not d!2274164))

(assert (not bm!666101))

(assert (not b!7323305))

(assert (not bm!666092))

(assert (not b!7323228))

(assert (not b!7323306))

(assert (not b!7323291))

(assert (not bs!1916318))

(assert (not bm!666094))

(assert (not b!7323340))

(assert (not d!2274144))

(assert (not bm!666096))

(assert (not b!7323303))

(assert (not b_lambda!283221))

(assert (not b!7323267))

(assert (not b!7323315))

(assert (not bm!666100))

(assert (not b!7323329))

(assert (not b!7323292))

(assert (not b!7323323))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

