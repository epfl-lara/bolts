; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716126 () Bool)

(assert start!716126)

(declare-fun b!7332664 () Bool)

(declare-fun e!4390841 () Bool)

(declare-fun e!4390844 () Bool)

(assert (=> b!7332664 (= e!4390841 e!4390844)))

(declare-fun res!2963254 () Bool)

(assert (=> b!7332664 (=> (not res!2963254) (not e!4390844))))

(declare-datatypes ((C!38386 0))(
  ( (C!38387 (val!29553 Int)) )
))
(declare-datatypes ((Regex!19056 0))(
  ( (ElementMatch!19056 (c!1361622 C!38386)) (Concat!27901 (regOne!38624 Regex!19056) (regTwo!38624 Regex!19056)) (EmptyExpr!19056) (Star!19056 (reg!19385 Regex!19056)) (EmptyLang!19056) (Union!19056 (regOne!38625 Regex!19056) (regTwo!38625 Regex!19056)) )
))
(declare-datatypes ((List!71552 0))(
  ( (Nil!71428) (Cons!71428 (h!77876 Regex!19056) (t!385943 List!71552)) )
))
(declare-datatypes ((Context!15992 0))(
  ( (Context!15993 (exprs!8496 List!71552)) )
))
(declare-fun ct1!256 () Context!15992)

(assert (=> b!7332664 (= res!2963254 (is-Cons!71428 (exprs!8496 ct1!256)))))

(declare-fun lt!2608297 () List!71552)

(declare-fun ct2!352 () Context!15992)

(declare-fun ++!16878 (List!71552 List!71552) List!71552)

(assert (=> b!7332664 (= lt!2608297 (++!16878 (exprs!8496 ct1!256) (exprs!8496 ct2!352)))))

(declare-fun lambda!454830 () Int)

(declare-datatypes ((Unit!165073 0))(
  ( (Unit!165074) )
))
(declare-fun lt!2608296 () Unit!165073)

(declare-fun lemmaConcatPreservesForall!1735 (List!71552 List!71552 Int) Unit!165073)

(assert (=> b!7332664 (= lt!2608296 (lemmaConcatPreservesForall!1735 (exprs!8496 ct1!256) (exprs!8496 ct2!352) lambda!454830))))

(declare-fun res!2963253 () Bool)

(assert (=> start!716126 (=> (not res!2963253) (not e!4390841))))

(declare-fun cWitness!35 () Context!15992)

(declare-fun lt!2608290 () (Set Context!15992))

(assert (=> start!716126 (= res!2963253 (set.member cWitness!35 lt!2608290))))

(declare-fun c!10305 () C!38386)

(declare-fun derivationStepZipperUp!2736 (Context!15992 C!38386) (Set Context!15992))

(assert (=> start!716126 (= lt!2608290 (derivationStepZipperUp!2736 ct1!256 c!10305))))

(assert (=> start!716126 e!4390841))

(declare-fun tp_is_empty!48357 () Bool)

(assert (=> start!716126 tp_is_empty!48357))

(declare-fun e!4390843 () Bool)

(declare-fun inv!90981 (Context!15992) Bool)

(assert (=> start!716126 (and (inv!90981 cWitness!35) e!4390843)))

(declare-fun e!4390847 () Bool)

(assert (=> start!716126 (and (inv!90981 ct1!256) e!4390847)))

(declare-fun e!4390842 () Bool)

(assert (=> start!716126 (and (inv!90981 ct2!352) e!4390842)))

(declare-fun b!7332665 () Bool)

(declare-fun res!2963252 () Bool)

(declare-fun e!4390846 () Bool)

(assert (=> b!7332665 (=> (not res!2963252) (not e!4390846))))

(declare-fun isEmpty!40968 (List!71552) Bool)

(assert (=> b!7332665 (= res!2963252 (not (isEmpty!40968 lt!2608297)))))

(declare-fun b!7332666 () Bool)

(declare-fun e!4390845 () Bool)

(assert (=> b!7332666 (= e!4390844 e!4390845)))

(declare-fun res!2963251 () Bool)

(assert (=> b!7332666 (=> (not res!2963251) (not e!4390845))))

(declare-fun nullable!8157 (Regex!19056) Bool)

(assert (=> b!7332666 (= res!2963251 (nullable!8157 (h!77876 (exprs!8496 ct1!256))))))

(declare-fun lt!2608298 () Context!15992)

(declare-fun lt!2608302 () (Set Context!15992))

(declare-fun derivationStepZipperDown!2883 (Regex!19056 Context!15992 C!38386) (Set Context!15992))

(assert (=> b!7332666 (= lt!2608302 (derivationStepZipperDown!2883 (h!77876 (exprs!8496 ct1!256)) lt!2608298 c!10305))))

(declare-fun lt!2608291 () List!71552)

(assert (=> b!7332666 (= lt!2608298 (Context!15993 lt!2608291))))

(declare-fun tail!14737 (List!71552) List!71552)

(assert (=> b!7332666 (= lt!2608291 (tail!14737 (exprs!8496 ct1!256)))))

(declare-fun b!7332667 () Bool)

(declare-fun tp!2081780 () Bool)

(assert (=> b!7332667 (= e!4390842 tp!2081780)))

(declare-fun b!7332668 () Bool)

(declare-fun lt!2608295 () Context!15992)

(declare-fun lt!2608299 () (Set Context!15992))

(assert (=> b!7332668 (= e!4390846 (not (set.member lt!2608295 lt!2608299)))))

(declare-fun lt!2608300 () Unit!165073)

(assert (=> b!7332668 (= lt!2608300 (lemmaConcatPreservesForall!1735 (exprs!8496 cWitness!35) (exprs!8496 ct2!352) lambda!454830))))

(assert (=> b!7332668 (set.member lt!2608295 (derivationStepZipperDown!2883 (h!77876 (exprs!8496 ct1!256)) (Context!15993 (++!16878 lt!2608291 (exprs!8496 ct2!352))) c!10305))))

(assert (=> b!7332668 (= lt!2608295 (Context!15993 (++!16878 (exprs!8496 cWitness!35) (exprs!8496 ct2!352))))))

(declare-fun lt!2608293 () Unit!165073)

(assert (=> b!7332668 (= lt!2608293 (lemmaConcatPreservesForall!1735 lt!2608291 (exprs!8496 ct2!352) lambda!454830))))

(declare-fun lt!2608301 () Unit!165073)

(assert (=> b!7332668 (= lt!2608301 (lemmaConcatPreservesForall!1735 (exprs!8496 cWitness!35) (exprs!8496 ct2!352) lambda!454830))))

(declare-fun lt!2608292 () Unit!165073)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!27 (Regex!19056 Context!15992 Context!15992 Context!15992 C!38386) Unit!165073)

(assert (=> b!7332668 (= lt!2608292 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!27 (h!77876 (exprs!8496 ct1!256)) lt!2608298 ct2!352 cWitness!35 c!10305))))

(assert (=> b!7332668 (= lt!2608299 (derivationStepZipperDown!2883 (h!77876 (exprs!8496 ct1!256)) (Context!15993 (tail!14737 lt!2608297)) c!10305))))

(declare-fun b!7332669 () Bool)

(declare-fun tp!2081782 () Bool)

(assert (=> b!7332669 (= e!4390843 tp!2081782)))

(declare-fun b!7332670 () Bool)

(assert (=> b!7332670 (= e!4390845 e!4390846)))

(declare-fun res!2963256 () Bool)

(assert (=> b!7332670 (=> (not res!2963256) (not e!4390846))))

(declare-fun lt!2608294 () (Set Context!15992))

(assert (=> b!7332670 (= res!2963256 (and (= lt!2608290 (set.union lt!2608302 lt!2608294)) (or (set.member cWitness!35 lt!2608302) (set.member cWitness!35 lt!2608294)) (not (set.member cWitness!35 lt!2608294))))))

(assert (=> b!7332670 (= lt!2608294 (derivationStepZipperUp!2736 lt!2608298 c!10305))))

(declare-fun b!7332671 () Bool)

(declare-fun res!2963255 () Bool)

(assert (=> b!7332671 (=> (not res!2963255) (not e!4390844))))

(assert (=> b!7332671 (= res!2963255 (not (isEmpty!40968 (exprs!8496 ct1!256))))))

(declare-fun b!7332672 () Bool)

(declare-fun tp!2081781 () Bool)

(assert (=> b!7332672 (= e!4390847 tp!2081781)))

(assert (= (and start!716126 res!2963253) b!7332664))

(assert (= (and b!7332664 res!2963254) b!7332671))

(assert (= (and b!7332671 res!2963255) b!7332666))

(assert (= (and b!7332666 res!2963251) b!7332670))

(assert (= (and b!7332670 res!2963256) b!7332665))

(assert (= (and b!7332665 res!2963252) b!7332668))

(assert (= start!716126 b!7332669))

(assert (= start!716126 b!7332672))

(assert (= start!716126 b!7332667))

(declare-fun m!7998610 () Bool)

(assert (=> b!7332666 m!7998610))

(declare-fun m!7998612 () Bool)

(assert (=> b!7332666 m!7998612))

(declare-fun m!7998614 () Bool)

(assert (=> b!7332666 m!7998614))

(declare-fun m!7998616 () Bool)

(assert (=> start!716126 m!7998616))

(declare-fun m!7998618 () Bool)

(assert (=> start!716126 m!7998618))

(declare-fun m!7998620 () Bool)

(assert (=> start!716126 m!7998620))

(declare-fun m!7998622 () Bool)

(assert (=> start!716126 m!7998622))

(declare-fun m!7998624 () Bool)

(assert (=> start!716126 m!7998624))

(declare-fun m!7998626 () Bool)

(assert (=> b!7332671 m!7998626))

(declare-fun m!7998628 () Bool)

(assert (=> b!7332664 m!7998628))

(declare-fun m!7998630 () Bool)

(assert (=> b!7332664 m!7998630))

(declare-fun m!7998632 () Bool)

(assert (=> b!7332668 m!7998632))

(declare-fun m!7998634 () Bool)

(assert (=> b!7332668 m!7998634))

(declare-fun m!7998636 () Bool)

(assert (=> b!7332668 m!7998636))

(declare-fun m!7998638 () Bool)

(assert (=> b!7332668 m!7998638))

(declare-fun m!7998640 () Bool)

(assert (=> b!7332668 m!7998640))

(declare-fun m!7998642 () Bool)

(assert (=> b!7332668 m!7998642))

(declare-fun m!7998644 () Bool)

(assert (=> b!7332668 m!7998644))

(declare-fun m!7998646 () Bool)

(assert (=> b!7332668 m!7998646))

(declare-fun m!7998648 () Bool)

(assert (=> b!7332668 m!7998648))

(declare-fun m!7998650 () Bool)

(assert (=> b!7332668 m!7998650))

(assert (=> b!7332668 m!7998646))

(declare-fun m!7998652 () Bool)

(assert (=> b!7332665 m!7998652))

(declare-fun m!7998654 () Bool)

(assert (=> b!7332670 m!7998654))

(declare-fun m!7998656 () Bool)

(assert (=> b!7332670 m!7998656))

(declare-fun m!7998658 () Bool)

(assert (=> b!7332670 m!7998658))

(push 1)

(assert (not b!7332666))

(assert (not b!7332668))

(assert (not b!7332667))

(assert (not start!716126))

(assert (not b!7332665))

(assert (not b!7332664))

(assert (not b!7332672))

(assert (not b!7332670))

(assert (not b!7332671))

(assert (not b!7332669))

(assert tp_is_empty!48357)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2277071 () Bool)

(assert (=> d!2277071 (= (isEmpty!40968 (exprs!8496 ct1!256)) (is-Nil!71428 (exprs!8496 ct1!256)))))

(assert (=> b!7332671 d!2277071))

(declare-fun d!2277073 () Bool)

(declare-fun nullableFct!3249 (Regex!19056) Bool)

(assert (=> d!2277073 (= (nullable!8157 (h!77876 (exprs!8496 ct1!256))) (nullableFct!3249 (h!77876 (exprs!8496 ct1!256))))))

(declare-fun bs!1917576 () Bool)

(assert (= bs!1917576 d!2277073))

(declare-fun m!7998716 () Bool)

(assert (=> bs!1917576 m!7998716))

(assert (=> b!7332666 d!2277073))

(declare-fun b!7332749 () Bool)

(declare-fun e!4390898 () Bool)

(assert (=> b!7332749 (= e!4390898 (nullable!8157 (regOne!38624 (h!77876 (exprs!8496 ct1!256)))))))

(declare-fun b!7332750 () Bool)

(declare-fun e!4390896 () (Set Context!15992))

(declare-fun call!668167 () (Set Context!15992))

(assert (=> b!7332750 (= e!4390896 call!668167)))

(declare-fun b!7332751 () Bool)

(declare-fun e!4390900 () (Set Context!15992))

(declare-fun call!668169 () (Set Context!15992))

(declare-fun call!668172 () (Set Context!15992))

(assert (=> b!7332751 (= e!4390900 (set.union call!668169 call!668172))))

(declare-fun b!7332753 () Bool)

(assert (=> b!7332753 (= e!4390896 (as set.empty (Set Context!15992)))))

(declare-fun c!1361643 () Bool)

(declare-fun c!1361646 () Bool)

(declare-fun call!668171 () List!71552)

(declare-fun c!1361644 () Bool)

(declare-fun bm!668162 () Bool)

(assert (=> bm!668162 (= call!668172 (derivationStepZipperDown!2883 (ite c!1361643 (regTwo!38625 (h!77876 (exprs!8496 ct1!256))) (ite c!1361644 (regTwo!38624 (h!77876 (exprs!8496 ct1!256))) (ite c!1361646 (regOne!38624 (h!77876 (exprs!8496 ct1!256))) (reg!19385 (h!77876 (exprs!8496 ct1!256)))))) (ite (or c!1361643 c!1361644) lt!2608298 (Context!15993 call!668171)) c!10305))))

(declare-fun bm!668163 () Bool)

(declare-fun call!668170 () List!71552)

(assert (=> bm!668163 (= call!668171 call!668170)))

(declare-fun bm!668164 () Bool)

(declare-fun call!668168 () (Set Context!15992))

(assert (=> bm!668164 (= call!668168 call!668172)))

(declare-fun b!7332754 () Bool)

(declare-fun e!4390899 () (Set Context!15992))

(assert (=> b!7332754 (= e!4390899 (set.union call!668169 call!668168))))

(declare-fun b!7332755 () Bool)

(assert (=> b!7332755 (= c!1361644 e!4390898)))

(declare-fun res!2963286 () Bool)

(assert (=> b!7332755 (=> (not res!2963286) (not e!4390898))))

(assert (=> b!7332755 (= res!2963286 (is-Concat!27901 (h!77876 (exprs!8496 ct1!256))))))

(assert (=> b!7332755 (= e!4390900 e!4390899)))

(declare-fun bm!668165 () Bool)

(assert (=> bm!668165 (= call!668169 (derivationStepZipperDown!2883 (ite c!1361643 (regOne!38625 (h!77876 (exprs!8496 ct1!256))) (regOne!38624 (h!77876 (exprs!8496 ct1!256)))) (ite c!1361643 lt!2608298 (Context!15993 call!668170)) c!10305))))

(declare-fun b!7332756 () Bool)

(declare-fun e!4390897 () (Set Context!15992))

(assert (=> b!7332756 (= e!4390899 e!4390897)))

(assert (=> b!7332756 (= c!1361646 (is-Concat!27901 (h!77876 (exprs!8496 ct1!256))))))

(declare-fun d!2277075 () Bool)

(declare-fun c!1361647 () Bool)

(assert (=> d!2277075 (= c!1361647 (and (is-ElementMatch!19056 (h!77876 (exprs!8496 ct1!256))) (= (c!1361622 (h!77876 (exprs!8496 ct1!256))) c!10305)))))

(declare-fun e!4390901 () (Set Context!15992))

(assert (=> d!2277075 (= (derivationStepZipperDown!2883 (h!77876 (exprs!8496 ct1!256)) lt!2608298 c!10305) e!4390901)))

(declare-fun b!7332752 () Bool)

(assert (=> b!7332752 (= e!4390901 e!4390900)))

(assert (=> b!7332752 (= c!1361643 (is-Union!19056 (h!77876 (exprs!8496 ct1!256))))))

(declare-fun b!7332757 () Bool)

(assert (=> b!7332757 (= e!4390897 call!668167)))

(declare-fun bm!668166 () Bool)

(assert (=> bm!668166 (= call!668167 call!668168)))

(declare-fun bm!668167 () Bool)

(declare-fun $colon$colon!3066 (List!71552 Regex!19056) List!71552)

(assert (=> bm!668167 (= call!668170 ($colon$colon!3066 (exprs!8496 lt!2608298) (ite (or c!1361644 c!1361646) (regTwo!38624 (h!77876 (exprs!8496 ct1!256))) (h!77876 (exprs!8496 ct1!256)))))))

(declare-fun b!7332758 () Bool)

(assert (=> b!7332758 (= e!4390901 (set.insert lt!2608298 (as set.empty (Set Context!15992))))))

(declare-fun b!7332759 () Bool)

(declare-fun c!1361645 () Bool)

(assert (=> b!7332759 (= c!1361645 (is-Star!19056 (h!77876 (exprs!8496 ct1!256))))))

(assert (=> b!7332759 (= e!4390897 e!4390896)))

(assert (= (and d!2277075 c!1361647) b!7332758))

(assert (= (and d!2277075 (not c!1361647)) b!7332752))

(assert (= (and b!7332752 c!1361643) b!7332751))

(assert (= (and b!7332752 (not c!1361643)) b!7332755))

(assert (= (and b!7332755 res!2963286) b!7332749))

(assert (= (and b!7332755 c!1361644) b!7332754))

(assert (= (and b!7332755 (not c!1361644)) b!7332756))

(assert (= (and b!7332756 c!1361646) b!7332757))

(assert (= (and b!7332756 (not c!1361646)) b!7332759))

(assert (= (and b!7332759 c!1361645) b!7332750))

(assert (= (and b!7332759 (not c!1361645)) b!7332753))

(assert (= (or b!7332757 b!7332750) bm!668163))

(assert (= (or b!7332757 b!7332750) bm!668166))

(assert (= (or b!7332754 bm!668166) bm!668164))

(assert (= (or b!7332754 bm!668163) bm!668167))

(assert (= (or b!7332751 bm!668164) bm!668162))

(assert (= (or b!7332751 b!7332754) bm!668165))

(declare-fun m!7998732 () Bool)

(assert (=> b!7332758 m!7998732))

(declare-fun m!7998734 () Bool)

(assert (=> bm!668162 m!7998734))

(declare-fun m!7998736 () Bool)

(assert (=> bm!668167 m!7998736))

(declare-fun m!7998738 () Bool)

(assert (=> b!7332749 m!7998738))

(declare-fun m!7998740 () Bool)

(assert (=> bm!668165 m!7998740))

(assert (=> b!7332666 d!2277075))

(declare-fun d!2277079 () Bool)

(assert (=> d!2277079 (= (tail!14737 (exprs!8496 ct1!256)) (t!385943 (exprs!8496 ct1!256)))))

(assert (=> b!7332666 d!2277079))

(declare-fun d!2277081 () Bool)

(declare-fun c!1361655 () Bool)

(declare-fun e!4390911 () Bool)

(assert (=> d!2277081 (= c!1361655 e!4390911)))

(declare-fun res!2963290 () Bool)

(assert (=> d!2277081 (=> (not res!2963290) (not e!4390911))))

(assert (=> d!2277081 (= res!2963290 (is-Cons!71428 (exprs!8496 ct1!256)))))

(declare-fun e!4390913 () (Set Context!15992))

(assert (=> d!2277081 (= (derivationStepZipperUp!2736 ct1!256 c!10305) e!4390913)))

(declare-fun b!7332775 () Bool)

(declare-fun e!4390912 () (Set Context!15992))

(declare-fun call!668176 () (Set Context!15992))

(assert (=> b!7332775 (= e!4390912 call!668176)))

(declare-fun b!7332776 () Bool)

(assert (=> b!7332776 (= e!4390912 (as set.empty (Set Context!15992)))))

(declare-fun b!7332777 () Bool)

(assert (=> b!7332777 (= e!4390913 e!4390912)))

(declare-fun c!1361654 () Bool)

(assert (=> b!7332777 (= c!1361654 (is-Cons!71428 (exprs!8496 ct1!256)))))

(declare-fun bm!668171 () Bool)

(assert (=> bm!668171 (= call!668176 (derivationStepZipperDown!2883 (h!77876 (exprs!8496 ct1!256)) (Context!15993 (t!385943 (exprs!8496 ct1!256))) c!10305))))

(declare-fun b!7332778 () Bool)

(assert (=> b!7332778 (= e!4390911 (nullable!8157 (h!77876 (exprs!8496 ct1!256))))))

(declare-fun b!7332779 () Bool)

(assert (=> b!7332779 (= e!4390913 (set.union call!668176 (derivationStepZipperUp!2736 (Context!15993 (t!385943 (exprs!8496 ct1!256))) c!10305)))))

(assert (= (and d!2277081 res!2963290) b!7332778))

(assert (= (and d!2277081 c!1361655) b!7332779))

(assert (= (and d!2277081 (not c!1361655)) b!7332777))

(assert (= (and b!7332777 c!1361654) b!7332775))

(assert (= (and b!7332777 (not c!1361654)) b!7332776))

(assert (= (or b!7332779 b!7332775) bm!668171))

(declare-fun m!7998752 () Bool)

(assert (=> bm!668171 m!7998752))

(assert (=> b!7332778 m!7998610))

(declare-fun m!7998754 () Bool)

(assert (=> b!7332779 m!7998754))

(assert (=> start!716126 d!2277081))

(declare-fun bs!1917578 () Bool)

(declare-fun d!2277087 () Bool)

(assert (= bs!1917578 (and d!2277087 b!7332664)))

(declare-fun lambda!454844 () Int)

(assert (=> bs!1917578 (= lambda!454844 lambda!454830)))

(declare-fun forall!17893 (List!71552 Int) Bool)

(assert (=> d!2277087 (= (inv!90981 cWitness!35) (forall!17893 (exprs!8496 cWitness!35) lambda!454844))))

(declare-fun bs!1917579 () Bool)

(assert (= bs!1917579 d!2277087))

(declare-fun m!7998756 () Bool)

(assert (=> bs!1917579 m!7998756))

(assert (=> start!716126 d!2277087))

(declare-fun bs!1917580 () Bool)

(declare-fun d!2277089 () Bool)

(assert (= bs!1917580 (and d!2277089 b!7332664)))

(declare-fun lambda!454845 () Int)

(assert (=> bs!1917580 (= lambda!454845 lambda!454830)))

(declare-fun bs!1917581 () Bool)

(assert (= bs!1917581 (and d!2277089 d!2277087)))

(assert (=> bs!1917581 (= lambda!454845 lambda!454844)))

(assert (=> d!2277089 (= (inv!90981 ct1!256) (forall!17893 (exprs!8496 ct1!256) lambda!454845))))

(declare-fun bs!1917582 () Bool)

(assert (= bs!1917582 d!2277089))

(declare-fun m!7998758 () Bool)

(assert (=> bs!1917582 m!7998758))

(assert (=> start!716126 d!2277089))

(declare-fun bs!1917583 () Bool)

(declare-fun d!2277091 () Bool)

(assert (= bs!1917583 (and d!2277091 b!7332664)))

(declare-fun lambda!454846 () Int)

(assert (=> bs!1917583 (= lambda!454846 lambda!454830)))

(declare-fun bs!1917584 () Bool)

(assert (= bs!1917584 (and d!2277091 d!2277087)))

(assert (=> bs!1917584 (= lambda!454846 lambda!454844)))

(declare-fun bs!1917585 () Bool)

(assert (= bs!1917585 (and d!2277091 d!2277089)))

(assert (=> bs!1917585 (= lambda!454846 lambda!454845)))

(assert (=> d!2277091 (= (inv!90981 ct2!352) (forall!17893 (exprs!8496 ct2!352) lambda!454846))))

(declare-fun bs!1917587 () Bool)

(assert (= bs!1917587 d!2277091))

(declare-fun m!7998760 () Bool)

(assert (=> bs!1917587 m!7998760))

(assert (=> start!716126 d!2277091))

(declare-fun d!2277093 () Bool)

(declare-fun e!4390919 () Bool)

(assert (=> d!2277093 e!4390919))

(declare-fun res!2963296 () Bool)

(assert (=> d!2277093 (=> (not res!2963296) (not e!4390919))))

(declare-fun lt!2608350 () List!71552)

(declare-fun content!14984 (List!71552) (Set Regex!19056))

(assert (=> d!2277093 (= res!2963296 (= (content!14984 lt!2608350) (set.union (content!14984 (exprs!8496 ct1!256)) (content!14984 (exprs!8496 ct2!352)))))))

(declare-fun e!4390918 () List!71552)

(assert (=> d!2277093 (= lt!2608350 e!4390918)))

(declare-fun c!1361658 () Bool)

(assert (=> d!2277093 (= c!1361658 (is-Nil!71428 (exprs!8496 ct1!256)))))

(assert (=> d!2277093 (= (++!16878 (exprs!8496 ct1!256) (exprs!8496 ct2!352)) lt!2608350)))

(declare-fun b!7332789 () Bool)

(assert (=> b!7332789 (= e!4390918 (Cons!71428 (h!77876 (exprs!8496 ct1!256)) (++!16878 (t!385943 (exprs!8496 ct1!256)) (exprs!8496 ct2!352))))))

(declare-fun b!7332788 () Bool)

(assert (=> b!7332788 (= e!4390918 (exprs!8496 ct2!352))))

(declare-fun b!7332790 () Bool)

(declare-fun res!2963295 () Bool)

(assert (=> b!7332790 (=> (not res!2963295) (not e!4390919))))

(declare-fun size!41963 (List!71552) Int)

(assert (=> b!7332790 (= res!2963295 (= (size!41963 lt!2608350) (+ (size!41963 (exprs!8496 ct1!256)) (size!41963 (exprs!8496 ct2!352)))))))

(declare-fun b!7332791 () Bool)

(assert (=> b!7332791 (= e!4390919 (or (not (= (exprs!8496 ct2!352) Nil!71428)) (= lt!2608350 (exprs!8496 ct1!256))))))

(assert (= (and d!2277093 c!1361658) b!7332788))

(assert (= (and d!2277093 (not c!1361658)) b!7332789))

(assert (= (and d!2277093 res!2963296) b!7332790))

(assert (= (and b!7332790 res!2963295) b!7332791))

(declare-fun m!7998770 () Bool)

(assert (=> d!2277093 m!7998770))

(declare-fun m!7998772 () Bool)

(assert (=> d!2277093 m!7998772))

(declare-fun m!7998774 () Bool)

(assert (=> d!2277093 m!7998774))

(declare-fun m!7998776 () Bool)

(assert (=> b!7332789 m!7998776))

(declare-fun m!7998778 () Bool)

(assert (=> b!7332790 m!7998778))

(declare-fun m!7998780 () Bool)

(assert (=> b!7332790 m!7998780))

(declare-fun m!7998782 () Bool)

(assert (=> b!7332790 m!7998782))

(assert (=> b!7332664 d!2277093))

(declare-fun d!2277103 () Bool)

(assert (=> d!2277103 (forall!17893 (++!16878 (exprs!8496 ct1!256) (exprs!8496 ct2!352)) lambda!454830)))

(declare-fun lt!2608353 () Unit!165073)

(declare-fun choose!57034 (List!71552 List!71552 Int) Unit!165073)

(assert (=> d!2277103 (= lt!2608353 (choose!57034 (exprs!8496 ct1!256) (exprs!8496 ct2!352) lambda!454830))))

(assert (=> d!2277103 (forall!17893 (exprs!8496 ct1!256) lambda!454830)))

(assert (=> d!2277103 (= (lemmaConcatPreservesForall!1735 (exprs!8496 ct1!256) (exprs!8496 ct2!352) lambda!454830) lt!2608353)))

(declare-fun bs!1917597 () Bool)

(assert (= bs!1917597 d!2277103))

(assert (=> bs!1917597 m!7998628))

(assert (=> bs!1917597 m!7998628))

(declare-fun m!7998784 () Bool)

(assert (=> bs!1917597 m!7998784))

(declare-fun m!7998786 () Bool)

(assert (=> bs!1917597 m!7998786))

(declare-fun m!7998788 () Bool)

(assert (=> bs!1917597 m!7998788))

(assert (=> b!7332664 d!2277103))

(declare-fun d!2277105 () Bool)

(declare-fun c!1361660 () Bool)

(declare-fun e!4390920 () Bool)

(assert (=> d!2277105 (= c!1361660 e!4390920)))

(declare-fun res!2963297 () Bool)

(assert (=> d!2277105 (=> (not res!2963297) (not e!4390920))))

(assert (=> d!2277105 (= res!2963297 (is-Cons!71428 (exprs!8496 lt!2608298)))))

(declare-fun e!4390922 () (Set Context!15992))

(assert (=> d!2277105 (= (derivationStepZipperUp!2736 lt!2608298 c!10305) e!4390922)))

(declare-fun b!7332792 () Bool)

(declare-fun e!4390921 () (Set Context!15992))

(declare-fun call!668177 () (Set Context!15992))

(assert (=> b!7332792 (= e!4390921 call!668177)))

(declare-fun b!7332793 () Bool)

(assert (=> b!7332793 (= e!4390921 (as set.empty (Set Context!15992)))))

(declare-fun b!7332794 () Bool)

(assert (=> b!7332794 (= e!4390922 e!4390921)))

(declare-fun c!1361659 () Bool)

(assert (=> b!7332794 (= c!1361659 (is-Cons!71428 (exprs!8496 lt!2608298)))))

(declare-fun bm!668172 () Bool)

(assert (=> bm!668172 (= call!668177 (derivationStepZipperDown!2883 (h!77876 (exprs!8496 lt!2608298)) (Context!15993 (t!385943 (exprs!8496 lt!2608298))) c!10305))))

(declare-fun b!7332795 () Bool)

(assert (=> b!7332795 (= e!4390920 (nullable!8157 (h!77876 (exprs!8496 lt!2608298))))))

(declare-fun b!7332796 () Bool)

(assert (=> b!7332796 (= e!4390922 (set.union call!668177 (derivationStepZipperUp!2736 (Context!15993 (t!385943 (exprs!8496 lt!2608298))) c!10305)))))

(assert (= (and d!2277105 res!2963297) b!7332795))

(assert (= (and d!2277105 c!1361660) b!7332796))

(assert (= (and d!2277105 (not c!1361660)) b!7332794))

(assert (= (and b!7332794 c!1361659) b!7332792))

(assert (= (and b!7332794 (not c!1361659)) b!7332793))

(assert (= (or b!7332796 b!7332792) bm!668172))

(declare-fun m!7998790 () Bool)

(assert (=> bm!668172 m!7998790))

(declare-fun m!7998792 () Bool)

(assert (=> b!7332795 m!7998792))

(declare-fun m!7998794 () Bool)

(assert (=> b!7332796 m!7998794))

(assert (=> b!7332670 d!2277105))

(declare-fun d!2277107 () Bool)

(assert (=> d!2277107 (= (isEmpty!40968 lt!2608297) (is-Nil!71428 lt!2608297))))

(assert (=> b!7332665 d!2277107))

(declare-fun b!7332797 () Bool)

(declare-fun e!4390925 () Bool)

(assert (=> b!7332797 (= e!4390925 (nullable!8157 (regOne!38624 (h!77876 (exprs!8496 ct1!256)))))))

(declare-fun b!7332798 () Bool)

(declare-fun e!4390923 () (Set Context!15992))

(declare-fun call!668178 () (Set Context!15992))

(assert (=> b!7332798 (= e!4390923 call!668178)))

(declare-fun b!7332799 () Bool)

(declare-fun e!4390927 () (Set Context!15992))

(declare-fun call!668180 () (Set Context!15992))

(declare-fun call!668183 () (Set Context!15992))

(assert (=> b!7332799 (= e!4390927 (set.union call!668180 call!668183))))

(declare-fun b!7332801 () Bool)

(assert (=> b!7332801 (= e!4390923 (as set.empty (Set Context!15992)))))

(declare-fun call!668182 () List!71552)

(declare-fun c!1361664 () Bool)

(declare-fun c!1361662 () Bool)

(declare-fun c!1361661 () Bool)

(declare-fun bm!668173 () Bool)

(assert (=> bm!668173 (= call!668183 (derivationStepZipperDown!2883 (ite c!1361661 (regTwo!38625 (h!77876 (exprs!8496 ct1!256))) (ite c!1361662 (regTwo!38624 (h!77876 (exprs!8496 ct1!256))) (ite c!1361664 (regOne!38624 (h!77876 (exprs!8496 ct1!256))) (reg!19385 (h!77876 (exprs!8496 ct1!256)))))) (ite (or c!1361661 c!1361662) (Context!15993 (++!16878 lt!2608291 (exprs!8496 ct2!352))) (Context!15993 call!668182)) c!10305))))

(declare-fun bm!668174 () Bool)

(declare-fun call!668181 () List!71552)

(assert (=> bm!668174 (= call!668182 call!668181)))

(declare-fun bm!668175 () Bool)

(declare-fun call!668179 () (Set Context!15992))

(assert (=> bm!668175 (= call!668179 call!668183)))

(declare-fun b!7332802 () Bool)

(declare-fun e!4390926 () (Set Context!15992))

(assert (=> b!7332802 (= e!4390926 (set.union call!668180 call!668179))))

(declare-fun b!7332803 () Bool)

(assert (=> b!7332803 (= c!1361662 e!4390925)))

(declare-fun res!2963298 () Bool)

(assert (=> b!7332803 (=> (not res!2963298) (not e!4390925))))

(assert (=> b!7332803 (= res!2963298 (is-Concat!27901 (h!77876 (exprs!8496 ct1!256))))))

(assert (=> b!7332803 (= e!4390927 e!4390926)))

(declare-fun bm!668176 () Bool)

(assert (=> bm!668176 (= call!668180 (derivationStepZipperDown!2883 (ite c!1361661 (regOne!38625 (h!77876 (exprs!8496 ct1!256))) (regOne!38624 (h!77876 (exprs!8496 ct1!256)))) (ite c!1361661 (Context!15993 (++!16878 lt!2608291 (exprs!8496 ct2!352))) (Context!15993 call!668181)) c!10305))))

(declare-fun b!7332804 () Bool)

(declare-fun e!4390924 () (Set Context!15992))

(assert (=> b!7332804 (= e!4390926 e!4390924)))

(assert (=> b!7332804 (= c!1361664 (is-Concat!27901 (h!77876 (exprs!8496 ct1!256))))))

(declare-fun d!2277109 () Bool)

(declare-fun c!1361665 () Bool)

(assert (=> d!2277109 (= c!1361665 (and (is-ElementMatch!19056 (h!77876 (exprs!8496 ct1!256))) (= (c!1361622 (h!77876 (exprs!8496 ct1!256))) c!10305)))))

(declare-fun e!4390928 () (Set Context!15992))

(assert (=> d!2277109 (= (derivationStepZipperDown!2883 (h!77876 (exprs!8496 ct1!256)) (Context!15993 (++!16878 lt!2608291 (exprs!8496 ct2!352))) c!10305) e!4390928)))

(declare-fun b!7332800 () Bool)

(assert (=> b!7332800 (= e!4390928 e!4390927)))

(assert (=> b!7332800 (= c!1361661 (is-Union!19056 (h!77876 (exprs!8496 ct1!256))))))

(declare-fun b!7332805 () Bool)

(assert (=> b!7332805 (= e!4390924 call!668178)))

(declare-fun bm!668177 () Bool)

(assert (=> bm!668177 (= call!668178 call!668179)))

(declare-fun bm!668178 () Bool)

(assert (=> bm!668178 (= call!668181 ($colon$colon!3066 (exprs!8496 (Context!15993 (++!16878 lt!2608291 (exprs!8496 ct2!352)))) (ite (or c!1361662 c!1361664) (regTwo!38624 (h!77876 (exprs!8496 ct1!256))) (h!77876 (exprs!8496 ct1!256)))))))

(declare-fun b!7332806 () Bool)

(assert (=> b!7332806 (= e!4390928 (set.insert (Context!15993 (++!16878 lt!2608291 (exprs!8496 ct2!352))) (as set.empty (Set Context!15992))))))

(declare-fun b!7332807 () Bool)

(declare-fun c!1361663 () Bool)

(assert (=> b!7332807 (= c!1361663 (is-Star!19056 (h!77876 (exprs!8496 ct1!256))))))

(assert (=> b!7332807 (= e!4390924 e!4390923)))

(assert (= (and d!2277109 c!1361665) b!7332806))

(assert (= (and d!2277109 (not c!1361665)) b!7332800))

(assert (= (and b!7332800 c!1361661) b!7332799))

(assert (= (and b!7332800 (not c!1361661)) b!7332803))

(assert (= (and b!7332803 res!2963298) b!7332797))

(assert (= (and b!7332803 c!1361662) b!7332802))

(assert (= (and b!7332803 (not c!1361662)) b!7332804))

(assert (= (and b!7332804 c!1361664) b!7332805))

(assert (= (and b!7332804 (not c!1361664)) b!7332807))

(assert (= (and b!7332807 c!1361663) b!7332798))

(assert (= (and b!7332807 (not c!1361663)) b!7332801))

(assert (= (or b!7332805 b!7332798) bm!668174))

(assert (= (or b!7332805 b!7332798) bm!668177))

(assert (= (or b!7332802 bm!668177) bm!668175))

(assert (= (or b!7332802 bm!668174) bm!668178))

(assert (= (or b!7332799 bm!668175) bm!668173))

(assert (= (or b!7332799 b!7332802) bm!668176))

(declare-fun m!7998796 () Bool)

(assert (=> b!7332806 m!7998796))

(declare-fun m!7998798 () Bool)

(assert (=> bm!668173 m!7998798))

(declare-fun m!7998800 () Bool)

(assert (=> bm!668178 m!7998800))

(assert (=> b!7332797 m!7998738))

(declare-fun m!7998802 () Bool)

(assert (=> bm!668176 m!7998802))

(assert (=> b!7332668 d!2277109))

(declare-fun d!2277111 () Bool)

(assert (=> d!2277111 (= (tail!14737 lt!2608297) (t!385943 lt!2608297))))

(assert (=> b!7332668 d!2277111))

(declare-fun d!2277113 () Bool)

(assert (=> d!2277113 (forall!17893 (++!16878 (exprs!8496 cWitness!35) (exprs!8496 ct2!352)) lambda!454830)))

(declare-fun lt!2608354 () Unit!165073)

(assert (=> d!2277113 (= lt!2608354 (choose!57034 (exprs!8496 cWitness!35) (exprs!8496 ct2!352) lambda!454830))))

(assert (=> d!2277113 (forall!17893 (exprs!8496 cWitness!35) lambda!454830)))

(assert (=> d!2277113 (= (lemmaConcatPreservesForall!1735 (exprs!8496 cWitness!35) (exprs!8496 ct2!352) lambda!454830) lt!2608354)))

(declare-fun bs!1917598 () Bool)

(assert (= bs!1917598 d!2277113))

(assert (=> bs!1917598 m!7998638))

(assert (=> bs!1917598 m!7998638))

(declare-fun m!7998804 () Bool)

(assert (=> bs!1917598 m!7998804))

(declare-fun m!7998806 () Bool)

(assert (=> bs!1917598 m!7998806))

(declare-fun m!7998808 () Bool)

(assert (=> bs!1917598 m!7998808))

(assert (=> b!7332668 d!2277113))

(declare-fun bs!1917599 () Bool)

(declare-fun d!2277115 () Bool)

(assert (= bs!1917599 (and d!2277115 b!7332664)))

(declare-fun lambda!454854 () Int)

(assert (=> bs!1917599 (= lambda!454854 lambda!454830)))

(declare-fun bs!1917600 () Bool)

(assert (= bs!1917600 (and d!2277115 d!2277087)))

(assert (=> bs!1917600 (= lambda!454854 lambda!454844)))

(declare-fun bs!1917601 () Bool)

(assert (= bs!1917601 (and d!2277115 d!2277089)))

(assert (=> bs!1917601 (= lambda!454854 lambda!454845)))

(declare-fun bs!1917602 () Bool)

(assert (= bs!1917602 (and d!2277115 d!2277091)))

(assert (=> bs!1917602 (= lambda!454854 lambda!454846)))

(assert (=> d!2277115 (set.member (Context!15993 (++!16878 (exprs!8496 cWitness!35) (exprs!8496 ct2!352))) (derivationStepZipperDown!2883 (h!77876 (exprs!8496 ct1!256)) (Context!15993 (++!16878 (exprs!8496 lt!2608298) (exprs!8496 ct2!352))) c!10305))))

(declare-fun lt!2608363 () Unit!165073)

(assert (=> d!2277115 (= lt!2608363 (lemmaConcatPreservesForall!1735 (exprs!8496 lt!2608298) (exprs!8496 ct2!352) lambda!454854))))

(declare-fun lt!2608362 () Unit!165073)

(assert (=> d!2277115 (= lt!2608362 (lemmaConcatPreservesForall!1735 (exprs!8496 cWitness!35) (exprs!8496 ct2!352) lambda!454854))))

(declare-fun lt!2608361 () Unit!165073)

(declare-fun choose!57035 (Regex!19056 Context!15992 Context!15992 Context!15992 C!38386) Unit!165073)

(assert (=> d!2277115 (= lt!2608361 (choose!57035 (h!77876 (exprs!8496 ct1!256)) lt!2608298 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9660 (Regex!19056) Bool)

(assert (=> d!2277115 (validRegex!9660 (h!77876 (exprs!8496 ct1!256)))))

(assert (=> d!2277115 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!27 (h!77876 (exprs!8496 ct1!256)) lt!2608298 ct2!352 cWitness!35 c!10305) lt!2608361)))

(declare-fun bs!1917603 () Bool)

(assert (= bs!1917603 d!2277115))

(declare-fun m!7998810 () Bool)

(assert (=> bs!1917603 m!7998810))

(declare-fun m!7998812 () Bool)

(assert (=> bs!1917603 m!7998812))

(declare-fun m!7998814 () Bool)

(assert (=> bs!1917603 m!7998814))

(declare-fun m!7998816 () Bool)

(assert (=> bs!1917603 m!7998816))

(declare-fun m!7998818 () Bool)

(assert (=> bs!1917603 m!7998818))

(declare-fun m!7998820 () Bool)

(assert (=> bs!1917603 m!7998820))

(assert (=> bs!1917603 m!7998638))

(declare-fun m!7998822 () Bool)

(assert (=> bs!1917603 m!7998822))

(assert (=> b!7332668 d!2277115))

(declare-fun d!2277117 () Bool)

(declare-fun e!4390942 () Bool)

(assert (=> d!2277117 e!4390942))

(declare-fun res!2963302 () Bool)

(assert (=> d!2277117 (=> (not res!2963302) (not e!4390942))))

(declare-fun lt!2608364 () List!71552)

(assert (=> d!2277117 (= res!2963302 (= (content!14984 lt!2608364) (set.union (content!14984 (exprs!8496 cWitness!35)) (content!14984 (exprs!8496 ct2!352)))))))

(declare-fun e!4390941 () List!71552)

(assert (=> d!2277117 (= lt!2608364 e!4390941)))

(declare-fun c!1361677 () Bool)

(assert (=> d!2277117 (= c!1361677 (is-Nil!71428 (exprs!8496 cWitness!35)))))

(assert (=> d!2277117 (= (++!16878 (exprs!8496 cWitness!35) (exprs!8496 ct2!352)) lt!2608364)))

(declare-fun b!7332831 () Bool)

(assert (=> b!7332831 (= e!4390941 (Cons!71428 (h!77876 (exprs!8496 cWitness!35)) (++!16878 (t!385943 (exprs!8496 cWitness!35)) (exprs!8496 ct2!352))))))

(declare-fun b!7332830 () Bool)

(assert (=> b!7332830 (= e!4390941 (exprs!8496 ct2!352))))

(declare-fun b!7332832 () Bool)

(declare-fun res!2963301 () Bool)

(assert (=> b!7332832 (=> (not res!2963301) (not e!4390942))))

(assert (=> b!7332832 (= res!2963301 (= (size!41963 lt!2608364) (+ (size!41963 (exprs!8496 cWitness!35)) (size!41963 (exprs!8496 ct2!352)))))))

(declare-fun b!7332833 () Bool)

(assert (=> b!7332833 (= e!4390942 (or (not (= (exprs!8496 ct2!352) Nil!71428)) (= lt!2608364 (exprs!8496 cWitness!35))))))

(assert (= (and d!2277117 c!1361677) b!7332830))

(assert (= (and d!2277117 (not c!1361677)) b!7332831))

(assert (= (and d!2277117 res!2963302) b!7332832))

(assert (= (and b!7332832 res!2963301) b!7332833))

(declare-fun m!7998824 () Bool)

(assert (=> d!2277117 m!7998824))

(declare-fun m!7998826 () Bool)

(assert (=> d!2277117 m!7998826))

(assert (=> d!2277117 m!7998774))

(declare-fun m!7998828 () Bool)

(assert (=> b!7332831 m!7998828))

(declare-fun m!7998830 () Bool)

(assert (=> b!7332832 m!7998830))

(declare-fun m!7998832 () Bool)

(assert (=> b!7332832 m!7998832))

(assert (=> b!7332832 m!7998782))

(assert (=> b!7332668 d!2277117))

(declare-fun d!2277119 () Bool)

(assert (=> d!2277119 (forall!17893 (++!16878 lt!2608291 (exprs!8496 ct2!352)) lambda!454830)))

(declare-fun lt!2608365 () Unit!165073)

(assert (=> d!2277119 (= lt!2608365 (choose!57034 lt!2608291 (exprs!8496 ct2!352) lambda!454830))))

(assert (=> d!2277119 (forall!17893 lt!2608291 lambda!454830)))

(assert (=> d!2277119 (= (lemmaConcatPreservesForall!1735 lt!2608291 (exprs!8496 ct2!352) lambda!454830) lt!2608365)))

(declare-fun bs!1917604 () Bool)

(assert (= bs!1917604 d!2277119))

(assert (=> bs!1917604 m!7998636))

(assert (=> bs!1917604 m!7998636))

(declare-fun m!7998834 () Bool)

(assert (=> bs!1917604 m!7998834))

(declare-fun m!7998836 () Bool)

(assert (=> bs!1917604 m!7998836))

(declare-fun m!7998838 () Bool)

(assert (=> bs!1917604 m!7998838))

(assert (=> b!7332668 d!2277119))

(declare-fun d!2277121 () Bool)

(declare-fun e!4390944 () Bool)

(assert (=> d!2277121 e!4390944))

(declare-fun res!2963304 () Bool)

(assert (=> d!2277121 (=> (not res!2963304) (not e!4390944))))

(declare-fun lt!2608366 () List!71552)

(assert (=> d!2277121 (= res!2963304 (= (content!14984 lt!2608366) (set.union (content!14984 lt!2608291) (content!14984 (exprs!8496 ct2!352)))))))

(declare-fun e!4390943 () List!71552)

(assert (=> d!2277121 (= lt!2608366 e!4390943)))

(declare-fun c!1361678 () Bool)

(assert (=> d!2277121 (= c!1361678 (is-Nil!71428 lt!2608291))))

(assert (=> d!2277121 (= (++!16878 lt!2608291 (exprs!8496 ct2!352)) lt!2608366)))

(declare-fun b!7332835 () Bool)

(assert (=> b!7332835 (= e!4390943 (Cons!71428 (h!77876 lt!2608291) (++!16878 (t!385943 lt!2608291) (exprs!8496 ct2!352))))))

(declare-fun b!7332834 () Bool)

(assert (=> b!7332834 (= e!4390943 (exprs!8496 ct2!352))))

(declare-fun b!7332836 () Bool)

(declare-fun res!2963303 () Bool)

(assert (=> b!7332836 (=> (not res!2963303) (not e!4390944))))

(assert (=> b!7332836 (= res!2963303 (= (size!41963 lt!2608366) (+ (size!41963 lt!2608291) (size!41963 (exprs!8496 ct2!352)))))))

(declare-fun b!7332837 () Bool)

(assert (=> b!7332837 (= e!4390944 (or (not (= (exprs!8496 ct2!352) Nil!71428)) (= lt!2608366 lt!2608291)))))

(assert (= (and d!2277121 c!1361678) b!7332834))

(assert (= (and d!2277121 (not c!1361678)) b!7332835))

(assert (= (and d!2277121 res!2963304) b!7332836))

(assert (= (and b!7332836 res!2963303) b!7332837))

(declare-fun m!7998840 () Bool)

(assert (=> d!2277121 m!7998840))

(declare-fun m!7998842 () Bool)

(assert (=> d!2277121 m!7998842))

(assert (=> d!2277121 m!7998774))

(declare-fun m!7998844 () Bool)

(assert (=> b!7332835 m!7998844))

(declare-fun m!7998846 () Bool)

(assert (=> b!7332836 m!7998846))

(declare-fun m!7998848 () Bool)

(assert (=> b!7332836 m!7998848))

(assert (=> b!7332836 m!7998782))

(assert (=> b!7332668 d!2277121))

(declare-fun b!7332838 () Bool)

(declare-fun e!4390947 () Bool)

(assert (=> b!7332838 (= e!4390947 (nullable!8157 (regOne!38624 (h!77876 (exprs!8496 ct1!256)))))))

(declare-fun b!7332839 () Bool)

(declare-fun e!4390945 () (Set Context!15992))

(declare-fun call!668194 () (Set Context!15992))

(assert (=> b!7332839 (= e!4390945 call!668194)))

(declare-fun b!7332840 () Bool)

(declare-fun e!4390949 () (Set Context!15992))

(declare-fun call!668196 () (Set Context!15992))

(declare-fun call!668199 () (Set Context!15992))

(assert (=> b!7332840 (= e!4390949 (set.union call!668196 call!668199))))

(declare-fun b!7332842 () Bool)

(assert (=> b!7332842 (= e!4390945 (as set.empty (Set Context!15992)))))

(declare-fun c!1361682 () Bool)

(declare-fun c!1361679 () Bool)

(declare-fun c!1361680 () Bool)

(declare-fun call!668198 () List!71552)

(declare-fun bm!668189 () Bool)

(assert (=> bm!668189 (= call!668199 (derivationStepZipperDown!2883 (ite c!1361679 (regTwo!38625 (h!77876 (exprs!8496 ct1!256))) (ite c!1361680 (regTwo!38624 (h!77876 (exprs!8496 ct1!256))) (ite c!1361682 (regOne!38624 (h!77876 (exprs!8496 ct1!256))) (reg!19385 (h!77876 (exprs!8496 ct1!256)))))) (ite (or c!1361679 c!1361680) (Context!15993 (tail!14737 lt!2608297)) (Context!15993 call!668198)) c!10305))))

(declare-fun bm!668190 () Bool)

(declare-fun call!668197 () List!71552)

(assert (=> bm!668190 (= call!668198 call!668197)))

(declare-fun bm!668191 () Bool)

(declare-fun call!668195 () (Set Context!15992))

(assert (=> bm!668191 (= call!668195 call!668199)))

(declare-fun b!7332843 () Bool)

(declare-fun e!4390948 () (Set Context!15992))

(assert (=> b!7332843 (= e!4390948 (set.union call!668196 call!668195))))

(declare-fun b!7332844 () Bool)

(assert (=> b!7332844 (= c!1361680 e!4390947)))

(declare-fun res!2963305 () Bool)

(assert (=> b!7332844 (=> (not res!2963305) (not e!4390947))))

(assert (=> b!7332844 (= res!2963305 (is-Concat!27901 (h!77876 (exprs!8496 ct1!256))))))

(assert (=> b!7332844 (= e!4390949 e!4390948)))

(declare-fun bm!668192 () Bool)

(assert (=> bm!668192 (= call!668196 (derivationStepZipperDown!2883 (ite c!1361679 (regOne!38625 (h!77876 (exprs!8496 ct1!256))) (regOne!38624 (h!77876 (exprs!8496 ct1!256)))) (ite c!1361679 (Context!15993 (tail!14737 lt!2608297)) (Context!15993 call!668197)) c!10305))))

(declare-fun b!7332845 () Bool)

(declare-fun e!4390946 () (Set Context!15992))

(assert (=> b!7332845 (= e!4390948 e!4390946)))

(assert (=> b!7332845 (= c!1361682 (is-Concat!27901 (h!77876 (exprs!8496 ct1!256))))))

(declare-fun d!2277123 () Bool)

(declare-fun c!1361683 () Bool)

(assert (=> d!2277123 (= c!1361683 (and (is-ElementMatch!19056 (h!77876 (exprs!8496 ct1!256))) (= (c!1361622 (h!77876 (exprs!8496 ct1!256))) c!10305)))))

(declare-fun e!4390950 () (Set Context!15992))

(assert (=> d!2277123 (= (derivationStepZipperDown!2883 (h!77876 (exprs!8496 ct1!256)) (Context!15993 (tail!14737 lt!2608297)) c!10305) e!4390950)))

(declare-fun b!7332841 () Bool)

(assert (=> b!7332841 (= e!4390950 e!4390949)))

(assert (=> b!7332841 (= c!1361679 (is-Union!19056 (h!77876 (exprs!8496 ct1!256))))))

(declare-fun b!7332846 () Bool)

(assert (=> b!7332846 (= e!4390946 call!668194)))

(declare-fun bm!668193 () Bool)

(assert (=> bm!668193 (= call!668194 call!668195)))

(declare-fun bm!668194 () Bool)

(assert (=> bm!668194 (= call!668197 ($colon$colon!3066 (exprs!8496 (Context!15993 (tail!14737 lt!2608297))) (ite (or c!1361680 c!1361682) (regTwo!38624 (h!77876 (exprs!8496 ct1!256))) (h!77876 (exprs!8496 ct1!256)))))))

(declare-fun b!7332847 () Bool)

(assert (=> b!7332847 (= e!4390950 (set.insert (Context!15993 (tail!14737 lt!2608297)) (as set.empty (Set Context!15992))))))

(declare-fun b!7332848 () Bool)

(declare-fun c!1361681 () Bool)

(assert (=> b!7332848 (= c!1361681 (is-Star!19056 (h!77876 (exprs!8496 ct1!256))))))

(assert (=> b!7332848 (= e!4390946 e!4390945)))

(assert (= (and d!2277123 c!1361683) b!7332847))

(assert (= (and d!2277123 (not c!1361683)) b!7332841))

(assert (= (and b!7332841 c!1361679) b!7332840))

(assert (= (and b!7332841 (not c!1361679)) b!7332844))

(assert (= (and b!7332844 res!2963305) b!7332838))

(assert (= (and b!7332844 c!1361680) b!7332843))

(assert (= (and b!7332844 (not c!1361680)) b!7332845))

(assert (= (and b!7332845 c!1361682) b!7332846))

(assert (= (and b!7332845 (not c!1361682)) b!7332848))

(assert (= (and b!7332848 c!1361681) b!7332839))

(assert (= (and b!7332848 (not c!1361681)) b!7332842))

(assert (= (or b!7332846 b!7332839) bm!668190))

(assert (= (or b!7332846 b!7332839) bm!668193))

(assert (= (or b!7332843 bm!668193) bm!668191))

(assert (= (or b!7332843 bm!668190) bm!668194))

(assert (= (or b!7332840 bm!668191) bm!668189))

(assert (= (or b!7332840 b!7332843) bm!668192))

(declare-fun m!7998850 () Bool)

(assert (=> b!7332847 m!7998850))

(declare-fun m!7998852 () Bool)

(assert (=> bm!668189 m!7998852))

(declare-fun m!7998854 () Bool)

(assert (=> bm!668194 m!7998854))

(assert (=> b!7332838 m!7998738))

(declare-fun m!7998856 () Bool)

(assert (=> bm!668192 m!7998856))

(assert (=> b!7332668 d!2277123))

(declare-fun b!7332853 () Bool)

(declare-fun e!4390953 () Bool)

(declare-fun tp!2081796 () Bool)

(declare-fun tp!2081797 () Bool)

(assert (=> b!7332853 (= e!4390953 (and tp!2081796 tp!2081797))))

(assert (=> b!7332672 (= tp!2081781 e!4390953)))

(assert (= (and b!7332672 (is-Cons!71428 (exprs!8496 ct1!256))) b!7332853))

(declare-fun b!7332854 () Bool)

(declare-fun e!4390954 () Bool)

(declare-fun tp!2081798 () Bool)

(declare-fun tp!2081799 () Bool)

(assert (=> b!7332854 (= e!4390954 (and tp!2081798 tp!2081799))))

(assert (=> b!7332667 (= tp!2081780 e!4390954)))

(assert (= (and b!7332667 (is-Cons!71428 (exprs!8496 ct2!352))) b!7332854))

(declare-fun b!7332855 () Bool)

(declare-fun e!4390955 () Bool)

(declare-fun tp!2081800 () Bool)

(declare-fun tp!2081801 () Bool)

(assert (=> b!7332855 (= e!4390955 (and tp!2081800 tp!2081801))))

(assert (=> b!7332669 (= tp!2081782 e!4390955)))

(assert (= (and b!7332669 (is-Cons!71428 (exprs!8496 cWitness!35))) b!7332855))

(push 1)

(assert (not b!7332835))

(assert (not d!2277113))

(assert (not b!7332832))

(assert (not b!7332795))

(assert (not d!2277089))

(assert (not d!2277119))

(assert (not d!2277115))

(assert (not bm!668178))

(assert (not bm!668194))

(assert (not b!7332778))

(assert (not bm!668172))

(assert (not b!7332853))

(assert (not d!2277073))

(assert (not b!7332789))

(assert (not bm!668165))

(assert (not d!2277121))

(assert (not b!7332838))

(assert (not b!7332855))

(assert (not bm!668162))

(assert (not d!2277087))

(assert (not d!2277117))

(assert (not bm!668173))

(assert (not bm!668192))

(assert (not b!7332836))

(assert (not b!7332749))

(assert (not b!7332797))

(assert (not b!7332831))

(assert tp_is_empty!48357)

(assert (not bm!668189))

(assert (not d!2277091))

(assert (not bm!668167))

(assert (not b!7332790))

(assert (not b!7332796))

(assert (not bm!668171))

(assert (not b!7332854))

(assert (not b!7332779))

(assert (not bm!668176))

(assert (not d!2277093))

(assert (not d!2277103))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

