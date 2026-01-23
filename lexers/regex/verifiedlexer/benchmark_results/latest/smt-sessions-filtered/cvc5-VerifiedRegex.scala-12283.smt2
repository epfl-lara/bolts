; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690442 () Bool)

(assert start!690442)

(declare-fun b!7093074 () Bool)

(assert (=> b!7093074 true))

(declare-fun b!7093065 () Bool)

(declare-fun e!4263907 () Bool)

(declare-fun e!4263905 () Bool)

(assert (=> b!7093065 (= e!4263907 (not e!4263905))))

(declare-fun res!2896677 () Bool)

(assert (=> b!7093065 (=> res!2896677 e!4263905)))

(declare-datatypes ((C!35886 0))(
  ( (C!35887 (val!27649 Int)) )
))
(declare-datatypes ((Regex!17808 0))(
  ( (ElementMatch!17808 (c!1323751 C!35886)) (Concat!26653 (regOne!36128 Regex!17808) (regTwo!36128 Regex!17808)) (EmptyExpr!17808) (Star!17808 (reg!18137 Regex!17808)) (EmptyLang!17808) (Union!17808 (regOne!36129 Regex!17808) (regTwo!36129 Regex!17808)) )
))
(declare-datatypes ((List!68771 0))(
  ( (Nil!68647) (Cons!68647 (h!75095 Regex!17808) (t!382564 List!68771)) )
))
(declare-datatypes ((Context!13608 0))(
  ( (Context!13609 (exprs!7304 List!68771)) )
))
(declare-fun c!9994 () Context!13608)

(declare-fun a!1901 () C!35886)

(declare-fun r!11554 () Regex!17808)

(declare-fun lt!2556688 () (Set Context!13608))

(declare-fun auxCtx!45 () Context!13608)

(declare-fun appendTo!879 ((Set Context!13608) Context!13608) (Set Context!13608))

(declare-fun derivationStepZipperDown!2371 (Regex!17808 Context!13608 C!35886) (Set Context!13608))

(assert (=> b!7093065 (= res!2896677 (not (= lt!2556688 (appendTo!879 (derivationStepZipperDown!2371 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lambda!430135 () Int)

(declare-datatypes ((Unit!162307 0))(
  ( (Unit!162308) )
))
(declare-fun lt!2556696 () Unit!162307)

(declare-fun lemmaConcatPreservesForall!1107 (List!68771 List!68771 Int) Unit!162307)

(assert (=> b!7093065 (= lt!2556696 (lemmaConcatPreservesForall!1107 (exprs!7304 c!9994) (exprs!7304 auxCtx!45) lambda!430135))))

(declare-fun lt!2556691 () (Set Context!13608))

(declare-fun lambda!430134 () Int)

(declare-fun lt!2556683 () (Set Context!13608))

(declare-fun map!16159 ((Set Context!13608) Int) (Set Context!13608))

(assert (=> b!7093065 (= (set.union (map!16159 lt!2556691 lambda!430134) (map!16159 lt!2556683 lambda!430134)) (map!16159 (set.union lt!2556691 lt!2556683) lambda!430134))))

(declare-fun lt!2556680 () Unit!162307)

(declare-fun lemmaMapAssociative!21 ((Set Context!13608) (Set Context!13608) Int) Unit!162307)

(assert (=> b!7093065 (= lt!2556680 (lemmaMapAssociative!21 lt!2556691 lt!2556683 lambda!430134))))

(declare-fun lt!2556692 () (Set Context!13608))

(assert (=> b!7093065 (= lt!2556692 (appendTo!879 lt!2556683 auxCtx!45))))

(assert (=> b!7093065 (= lt!2556683 (derivationStepZipperDown!2371 (regTwo!36128 r!11554) c!9994 a!1901))))

(declare-fun lt!2556695 () Unit!162307)

(assert (=> b!7093065 (= lt!2556695 (lemmaConcatPreservesForall!1107 (exprs!7304 c!9994) (exprs!7304 auxCtx!45) lambda!430135))))

(declare-fun lt!2556684 () Unit!162307)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!187 (Context!13608 Regex!17808 C!35886 Context!13608) Unit!162307)

(assert (=> b!7093065 (= lt!2556684 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!187 c!9994 (regTwo!36128 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2556679 () List!68771)

(assert (=> b!7093065 (= (derivationStepZipperDown!2371 (regOne!36128 r!11554) (Context!13609 lt!2556679) a!1901) (appendTo!879 lt!2556691 auxCtx!45))))

(declare-fun lt!2556693 () Context!13608)

(assert (=> b!7093065 (= lt!2556691 (derivationStepZipperDown!2371 (regOne!36128 r!11554) lt!2556693 a!1901))))

(declare-fun lt!2556689 () List!68771)

(declare-fun ++!15977 (List!68771 List!68771) List!68771)

(assert (=> b!7093065 (= lt!2556679 (++!15977 lt!2556689 (exprs!7304 auxCtx!45)))))

(declare-fun lt!2556687 () Unit!162307)

(assert (=> b!7093065 (= lt!2556687 (lemmaConcatPreservesForall!1107 lt!2556689 (exprs!7304 auxCtx!45) lambda!430135))))

(declare-fun lt!2556694 () Unit!162307)

(assert (=> b!7093065 (= lt!2556694 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!187 lt!2556693 (regOne!36128 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7093065 (= lt!2556693 (Context!13609 lt!2556689))))

(declare-fun $colon$colon!2715 (List!68771 Regex!17808) List!68771)

(assert (=> b!7093065 (= lt!2556689 ($colon$colon!2715 (exprs!7304 c!9994) (regTwo!36128 r!11554)))))

(declare-fun res!2896681 () Bool)

(declare-fun e!4263909 () Bool)

(assert (=> start!690442 (=> (not res!2896681) (not e!4263909))))

(declare-fun validRegex!9083 (Regex!17808) Bool)

(assert (=> start!690442 (= res!2896681 (validRegex!9083 r!11554))))

(assert (=> start!690442 e!4263909))

(declare-fun e!4263906 () Bool)

(assert (=> start!690442 e!4263906))

(declare-fun e!4263904 () Bool)

(declare-fun inv!87386 (Context!13608) Bool)

(assert (=> start!690442 (and (inv!87386 c!9994) e!4263904)))

(declare-fun tp_is_empty!44849 () Bool)

(assert (=> start!690442 tp_is_empty!44849))

(declare-fun e!4263908 () Bool)

(assert (=> start!690442 (and (inv!87386 auxCtx!45) e!4263908)))

(declare-fun b!7093066 () Bool)

(declare-fun e!4263911 () Bool)

(assert (=> b!7093066 (= e!4263911 e!4263907)))

(declare-fun res!2896678 () Bool)

(assert (=> b!7093066 (=> (not res!2896678) (not e!4263907))))

(declare-fun lt!2556686 () (Set Context!13608))

(assert (=> b!7093066 (= res!2896678 (= lt!2556688 (set.union lt!2556686 lt!2556692)))))

(declare-fun lt!2556697 () Context!13608)

(assert (=> b!7093066 (= lt!2556688 (derivationStepZipperDown!2371 r!11554 lt!2556697 a!1901))))

(assert (=> b!7093066 (= lt!2556692 (derivationStepZipperDown!2371 (regTwo!36128 r!11554) lt!2556697 a!1901))))

(declare-fun lt!2556690 () List!68771)

(assert (=> b!7093066 (= lt!2556686 (derivationStepZipperDown!2371 (regOne!36128 r!11554) (Context!13609 ($colon$colon!2715 lt!2556690 (regTwo!36128 r!11554))) a!1901))))

(declare-fun b!7093067 () Bool)

(assert (=> b!7093067 (= e!4263906 tp_is_empty!44849)))

(declare-fun b!7093068 () Bool)

(declare-fun tp!1948705 () Bool)

(assert (=> b!7093068 (= e!4263906 tp!1948705)))

(declare-fun b!7093069 () Bool)

(declare-fun tp!1948706 () Bool)

(assert (=> b!7093069 (= e!4263904 tp!1948706)))

(declare-fun b!7093070 () Bool)

(declare-fun e!4263903 () Bool)

(assert (=> b!7093070 (= e!4263903 e!4263911)))

(declare-fun res!2896679 () Bool)

(assert (=> b!7093070 (=> (not res!2896679) (not e!4263911))))

(assert (=> b!7093070 (= res!2896679 (validRegex!9083 (regTwo!36128 r!11554)))))

(declare-fun lt!2556685 () Unit!162307)

(assert (=> b!7093070 (= lt!2556685 (lemmaConcatPreservesForall!1107 (exprs!7304 c!9994) (exprs!7304 auxCtx!45) lambda!430135))))

(assert (=> b!7093070 (= lt!2556697 (Context!13609 lt!2556690))))

(assert (=> b!7093070 (= lt!2556690 (++!15977 (exprs!7304 c!9994) (exprs!7304 auxCtx!45)))))

(declare-fun lt!2556682 () Unit!162307)

(assert (=> b!7093070 (= lt!2556682 (lemmaConcatPreservesForall!1107 (exprs!7304 c!9994) (exprs!7304 auxCtx!45) lambda!430135))))

(declare-fun lt!2556681 () Unit!162307)

(assert (=> b!7093070 (= lt!2556681 (lemmaConcatPreservesForall!1107 (exprs!7304 c!9994) (exprs!7304 auxCtx!45) lambda!430135))))

(declare-fun b!7093071 () Bool)

(declare-fun e!4263910 () Bool)

(assert (=> b!7093071 (= e!4263905 e!4263910)))

(declare-fun res!2896682 () Bool)

(assert (=> b!7093071 (=> res!2896682 e!4263910)))

(declare-fun forall!16738 (List!68771 Int) Bool)

(assert (=> b!7093071 (= res!2896682 (not (forall!16738 (exprs!7304 c!9994) lambda!430135)))))

(declare-fun b!7093072 () Bool)

(declare-fun tp!1948707 () Bool)

(assert (=> b!7093072 (= e!4263908 tp!1948707)))

(declare-fun b!7093073 () Bool)

(declare-fun tp!1948709 () Bool)

(declare-fun tp!1948703 () Bool)

(assert (=> b!7093073 (= e!4263906 (and tp!1948709 tp!1948703))))

(assert (=> b!7093074 (= e!4263909 e!4263903)))

(declare-fun res!2896683 () Bool)

(assert (=> b!7093074 (=> (not res!2896683) (not e!4263903))))

(assert (=> b!7093074 (= res!2896683 (and (or (not (is-ElementMatch!17808 r!11554)) (not (= (c!1323751 r!11554) a!1901))) (not (is-Union!17808 r!11554)) (is-Concat!26653 r!11554)))))

(declare-fun b!7093075 () Bool)

(assert (=> b!7093075 (= e!4263910 (forall!16738 (exprs!7304 auxCtx!45) lambda!430135))))

(declare-fun b!7093076 () Bool)

(declare-fun tp!1948708 () Bool)

(declare-fun tp!1948704 () Bool)

(assert (=> b!7093076 (= e!4263906 (and tp!1948708 tp!1948704))))

(declare-fun b!7093077 () Bool)

(declare-fun res!2896680 () Bool)

(assert (=> b!7093077 (=> (not res!2896680) (not e!4263903))))

(declare-fun nullable!7448 (Regex!17808) Bool)

(assert (=> b!7093077 (= res!2896680 (nullable!7448 (regOne!36128 r!11554)))))

(assert (= (and start!690442 res!2896681) b!7093074))

(assert (= (and b!7093074 res!2896683) b!7093077))

(assert (= (and b!7093077 res!2896680) b!7093070))

(assert (= (and b!7093070 res!2896679) b!7093066))

(assert (= (and b!7093066 res!2896678) b!7093065))

(assert (= (and b!7093065 (not res!2896677)) b!7093071))

(assert (= (and b!7093071 (not res!2896682)) b!7093075))

(assert (= (and start!690442 (is-ElementMatch!17808 r!11554)) b!7093067))

(assert (= (and start!690442 (is-Concat!26653 r!11554)) b!7093073))

(assert (= (and start!690442 (is-Star!17808 r!11554)) b!7093068))

(assert (= (and start!690442 (is-Union!17808 r!11554)) b!7093076))

(assert (= start!690442 b!7093069))

(assert (= start!690442 b!7093072))

(declare-fun m!7821748 () Bool)

(assert (=> b!7093075 m!7821748))

(declare-fun m!7821750 () Bool)

(assert (=> b!7093077 m!7821750))

(declare-fun m!7821752 () Bool)

(assert (=> b!7093070 m!7821752))

(assert (=> b!7093070 m!7821752))

(declare-fun m!7821754 () Bool)

(assert (=> b!7093070 m!7821754))

(declare-fun m!7821756 () Bool)

(assert (=> b!7093070 m!7821756))

(assert (=> b!7093070 m!7821752))

(declare-fun m!7821758 () Bool)

(assert (=> b!7093066 m!7821758))

(declare-fun m!7821760 () Bool)

(assert (=> b!7093066 m!7821760))

(declare-fun m!7821762 () Bool)

(assert (=> b!7093066 m!7821762))

(declare-fun m!7821764 () Bool)

(assert (=> b!7093066 m!7821764))

(declare-fun m!7821766 () Bool)

(assert (=> b!7093065 m!7821766))

(declare-fun m!7821768 () Bool)

(assert (=> b!7093065 m!7821768))

(declare-fun m!7821770 () Bool)

(assert (=> b!7093065 m!7821770))

(declare-fun m!7821772 () Bool)

(assert (=> b!7093065 m!7821772))

(declare-fun m!7821774 () Bool)

(assert (=> b!7093065 m!7821774))

(declare-fun m!7821776 () Bool)

(assert (=> b!7093065 m!7821776))

(declare-fun m!7821778 () Bool)

(assert (=> b!7093065 m!7821778))

(assert (=> b!7093065 m!7821752))

(declare-fun m!7821780 () Bool)

(assert (=> b!7093065 m!7821780))

(declare-fun m!7821782 () Bool)

(assert (=> b!7093065 m!7821782))

(declare-fun m!7821784 () Bool)

(assert (=> b!7093065 m!7821784))

(declare-fun m!7821786 () Bool)

(assert (=> b!7093065 m!7821786))

(declare-fun m!7821788 () Bool)

(assert (=> b!7093065 m!7821788))

(declare-fun m!7821790 () Bool)

(assert (=> b!7093065 m!7821790))

(declare-fun m!7821792 () Bool)

(assert (=> b!7093065 m!7821792))

(assert (=> b!7093065 m!7821752))

(assert (=> b!7093065 m!7821772))

(declare-fun m!7821794 () Bool)

(assert (=> b!7093065 m!7821794))

(declare-fun m!7821796 () Bool)

(assert (=> b!7093065 m!7821796))

(declare-fun m!7821798 () Bool)

(assert (=> start!690442 m!7821798))

(declare-fun m!7821800 () Bool)

(assert (=> start!690442 m!7821800))

(declare-fun m!7821802 () Bool)

(assert (=> start!690442 m!7821802))

(declare-fun m!7821804 () Bool)

(assert (=> b!7093071 m!7821804))

(push 1)

(assert (not b!7093069))

(assert (not b!7093070))

(assert (not b!7093077))

(assert tp_is_empty!44849)

(assert (not b!7093071))

(assert (not b!7093075))

(assert (not b!7093068))

(assert (not b!7093065))

(assert (not start!690442))

(assert (not b!7093073))

(assert (not b!7093076))

(assert (not b!7093072))

(assert (not b!7093066))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2217310 () Bool)

(declare-fun nullableFct!2857 (Regex!17808) Bool)

(assert (=> d!2217310 (= (nullable!7448 (regOne!36128 r!11554)) (nullableFct!2857 (regOne!36128 r!11554)))))

(declare-fun bs!1883683 () Bool)

(assert (= bs!1883683 d!2217310))

(declare-fun m!7821864 () Bool)

(assert (=> bs!1883683 m!7821864))

(assert (=> b!7093077 d!2217310))

(declare-fun b!7093139 () Bool)

(declare-fun e!4263959 () Bool)

(declare-fun call!645271 () Bool)

(assert (=> b!7093139 (= e!4263959 call!645271)))

(declare-fun b!7093140 () Bool)

(declare-fun e!4263955 () Bool)

(declare-fun e!4263954 () Bool)

(assert (=> b!7093140 (= e!4263955 e!4263954)))

(declare-fun c!1323757 () Bool)

(assert (=> b!7093140 (= c!1323757 (is-Star!17808 r!11554))))

(declare-fun b!7093141 () Bool)

(declare-fun e!4263956 () Bool)

(declare-fun call!645272 () Bool)

(assert (=> b!7093141 (= e!4263956 call!645272)))

(declare-fun b!7093142 () Bool)

(declare-fun res!2896719 () Bool)

(assert (=> b!7093142 (=> (not res!2896719) (not e!4263956))))

(assert (=> b!7093142 (= res!2896719 call!645271)))

(declare-fun e!4263958 () Bool)

(assert (=> b!7093142 (= e!4263958 e!4263956)))

(declare-fun bm!645265 () Bool)

(declare-fun c!1323758 () Bool)

(assert (=> bm!645265 (= call!645271 (validRegex!9083 (ite c!1323758 (regOne!36129 r!11554) (regTwo!36128 r!11554))))))

(declare-fun d!2217312 () Bool)

(declare-fun res!2896716 () Bool)

(assert (=> d!2217312 (=> res!2896716 e!4263955)))

(assert (=> d!2217312 (= res!2896716 (is-ElementMatch!17808 r!11554))))

(assert (=> d!2217312 (= (validRegex!9083 r!11554) e!4263955)))

(declare-fun b!7093143 () Bool)

(declare-fun e!4263957 () Bool)

(declare-fun call!645270 () Bool)

(assert (=> b!7093143 (= e!4263957 call!645270)))

(declare-fun b!7093144 () Bool)

(declare-fun res!2896717 () Bool)

(declare-fun e!4263953 () Bool)

(assert (=> b!7093144 (=> res!2896717 e!4263953)))

(assert (=> b!7093144 (= res!2896717 (not (is-Concat!26653 r!11554)))))

(assert (=> b!7093144 (= e!4263958 e!4263953)))

(declare-fun b!7093145 () Bool)

(assert (=> b!7093145 (= e!4263954 e!4263957)))

(declare-fun res!2896720 () Bool)

(assert (=> b!7093145 (= res!2896720 (not (nullable!7448 (reg!18137 r!11554))))))

(assert (=> b!7093145 (=> (not res!2896720) (not e!4263957))))

(declare-fun bm!645266 () Bool)

(assert (=> bm!645266 (= call!645272 call!645270)))

(declare-fun b!7093146 () Bool)

(assert (=> b!7093146 (= e!4263953 e!4263959)))

(declare-fun res!2896718 () Bool)

(assert (=> b!7093146 (=> (not res!2896718) (not e!4263959))))

(assert (=> b!7093146 (= res!2896718 call!645272)))

(declare-fun b!7093147 () Bool)

(assert (=> b!7093147 (= e!4263954 e!4263958)))

(assert (=> b!7093147 (= c!1323758 (is-Union!17808 r!11554))))

(declare-fun bm!645267 () Bool)

(assert (=> bm!645267 (= call!645270 (validRegex!9083 (ite c!1323757 (reg!18137 r!11554) (ite c!1323758 (regTwo!36129 r!11554) (regOne!36128 r!11554)))))))

(assert (= (and d!2217312 (not res!2896716)) b!7093140))

(assert (= (and b!7093140 c!1323757) b!7093145))

(assert (= (and b!7093140 (not c!1323757)) b!7093147))

(assert (= (and b!7093145 res!2896720) b!7093143))

(assert (= (and b!7093147 c!1323758) b!7093142))

(assert (= (and b!7093147 (not c!1323758)) b!7093144))

(assert (= (and b!7093142 res!2896719) b!7093141))

(assert (= (and b!7093144 (not res!2896717)) b!7093146))

(assert (= (and b!7093146 res!2896718) b!7093139))

(assert (= (or b!7093142 b!7093139) bm!645265))

(assert (= (or b!7093141 b!7093146) bm!645266))

(assert (= (or b!7093143 bm!645266) bm!645267))

(declare-fun m!7821866 () Bool)

(assert (=> bm!645265 m!7821866))

(declare-fun m!7821868 () Bool)

(assert (=> b!7093145 m!7821868))

(declare-fun m!7821870 () Bool)

(assert (=> bm!645267 m!7821870))

(assert (=> start!690442 d!2217312))

(declare-fun bs!1883684 () Bool)

(declare-fun d!2217314 () Bool)

(assert (= bs!1883684 (and d!2217314 b!7093070)))

(declare-fun lambda!430158 () Int)

(assert (=> bs!1883684 (= lambda!430158 lambda!430135)))

(assert (=> d!2217314 (= (inv!87386 c!9994) (forall!16738 (exprs!7304 c!9994) lambda!430158))))

(declare-fun bs!1883685 () Bool)

(assert (= bs!1883685 d!2217314))

(declare-fun m!7821872 () Bool)

(assert (=> bs!1883685 m!7821872))

(assert (=> start!690442 d!2217314))

(declare-fun bs!1883686 () Bool)

(declare-fun d!2217316 () Bool)

(assert (= bs!1883686 (and d!2217316 b!7093070)))

(declare-fun lambda!430159 () Int)

(assert (=> bs!1883686 (= lambda!430159 lambda!430135)))

(declare-fun bs!1883687 () Bool)

(assert (= bs!1883687 (and d!2217316 d!2217314)))

(assert (=> bs!1883687 (= lambda!430159 lambda!430158)))

(assert (=> d!2217316 (= (inv!87386 auxCtx!45) (forall!16738 (exprs!7304 auxCtx!45) lambda!430159))))

(declare-fun bs!1883688 () Bool)

(assert (= bs!1883688 d!2217316))

(declare-fun m!7821874 () Bool)

(assert (=> bs!1883688 m!7821874))

(assert (=> start!690442 d!2217316))

(declare-fun d!2217318 () Bool)

(declare-fun res!2896725 () Bool)

(declare-fun e!4263964 () Bool)

(assert (=> d!2217318 (=> res!2896725 e!4263964)))

(assert (=> d!2217318 (= res!2896725 (is-Nil!68647 (exprs!7304 auxCtx!45)))))

(assert (=> d!2217318 (= (forall!16738 (exprs!7304 auxCtx!45) lambda!430135) e!4263964)))

(declare-fun b!7093152 () Bool)

(declare-fun e!4263965 () Bool)

(assert (=> b!7093152 (= e!4263964 e!4263965)))

(declare-fun res!2896726 () Bool)

(assert (=> b!7093152 (=> (not res!2896726) (not e!4263965))))

(declare-fun dynLambda!28006 (Int Regex!17808) Bool)

(assert (=> b!7093152 (= res!2896726 (dynLambda!28006 lambda!430135 (h!75095 (exprs!7304 auxCtx!45))))))

(declare-fun b!7093153 () Bool)

(assert (=> b!7093153 (= e!4263965 (forall!16738 (t!382564 (exprs!7304 auxCtx!45)) lambda!430135))))

(assert (= (and d!2217318 (not res!2896725)) b!7093152))

(assert (= (and b!7093152 res!2896726) b!7093153))

(declare-fun b_lambda!271057 () Bool)

(assert (=> (not b_lambda!271057) (not b!7093152)))

(declare-fun m!7821876 () Bool)

(assert (=> b!7093152 m!7821876))

(declare-fun m!7821878 () Bool)

(assert (=> b!7093153 m!7821878))

(assert (=> b!7093075 d!2217318))

(declare-fun b!7093154 () Bool)

(declare-fun e!4263972 () Bool)

(declare-fun call!645274 () Bool)

(assert (=> b!7093154 (= e!4263972 call!645274)))

(declare-fun b!7093155 () Bool)

(declare-fun e!4263968 () Bool)

(declare-fun e!4263967 () Bool)

(assert (=> b!7093155 (= e!4263968 e!4263967)))

(declare-fun c!1323759 () Bool)

(assert (=> b!7093155 (= c!1323759 (is-Star!17808 (regTwo!36128 r!11554)))))

(declare-fun b!7093156 () Bool)

(declare-fun e!4263969 () Bool)

(declare-fun call!645275 () Bool)

(assert (=> b!7093156 (= e!4263969 call!645275)))

(declare-fun b!7093157 () Bool)

(declare-fun res!2896730 () Bool)

(assert (=> b!7093157 (=> (not res!2896730) (not e!4263969))))

(assert (=> b!7093157 (= res!2896730 call!645274)))

(declare-fun e!4263971 () Bool)

(assert (=> b!7093157 (= e!4263971 e!4263969)))

(declare-fun bm!645268 () Bool)

(declare-fun c!1323760 () Bool)

(assert (=> bm!645268 (= call!645274 (validRegex!9083 (ite c!1323760 (regOne!36129 (regTwo!36128 r!11554)) (regTwo!36128 (regTwo!36128 r!11554)))))))

(declare-fun d!2217320 () Bool)

(declare-fun res!2896727 () Bool)

(assert (=> d!2217320 (=> res!2896727 e!4263968)))

(assert (=> d!2217320 (= res!2896727 (is-ElementMatch!17808 (regTwo!36128 r!11554)))))

(assert (=> d!2217320 (= (validRegex!9083 (regTwo!36128 r!11554)) e!4263968)))

(declare-fun b!7093158 () Bool)

(declare-fun e!4263970 () Bool)

(declare-fun call!645273 () Bool)

(assert (=> b!7093158 (= e!4263970 call!645273)))

(declare-fun b!7093159 () Bool)

(declare-fun res!2896728 () Bool)

(declare-fun e!4263966 () Bool)

(assert (=> b!7093159 (=> res!2896728 e!4263966)))

(assert (=> b!7093159 (= res!2896728 (not (is-Concat!26653 (regTwo!36128 r!11554))))))

(assert (=> b!7093159 (= e!4263971 e!4263966)))

(declare-fun b!7093160 () Bool)

(assert (=> b!7093160 (= e!4263967 e!4263970)))

(declare-fun res!2896731 () Bool)

(assert (=> b!7093160 (= res!2896731 (not (nullable!7448 (reg!18137 (regTwo!36128 r!11554)))))))

(assert (=> b!7093160 (=> (not res!2896731) (not e!4263970))))

(declare-fun bm!645269 () Bool)

(assert (=> bm!645269 (= call!645275 call!645273)))

(declare-fun b!7093161 () Bool)

(assert (=> b!7093161 (= e!4263966 e!4263972)))

(declare-fun res!2896729 () Bool)

(assert (=> b!7093161 (=> (not res!2896729) (not e!4263972))))

(assert (=> b!7093161 (= res!2896729 call!645275)))

(declare-fun b!7093162 () Bool)

(assert (=> b!7093162 (= e!4263967 e!4263971)))

(assert (=> b!7093162 (= c!1323760 (is-Union!17808 (regTwo!36128 r!11554)))))

(declare-fun bm!645270 () Bool)

(assert (=> bm!645270 (= call!645273 (validRegex!9083 (ite c!1323759 (reg!18137 (regTwo!36128 r!11554)) (ite c!1323760 (regTwo!36129 (regTwo!36128 r!11554)) (regOne!36128 (regTwo!36128 r!11554))))))))

(assert (= (and d!2217320 (not res!2896727)) b!7093155))

(assert (= (and b!7093155 c!1323759) b!7093160))

(assert (= (and b!7093155 (not c!1323759)) b!7093162))

(assert (= (and b!7093160 res!2896731) b!7093158))

(assert (= (and b!7093162 c!1323760) b!7093157))

(assert (= (and b!7093162 (not c!1323760)) b!7093159))

(assert (= (and b!7093157 res!2896730) b!7093156))

(assert (= (and b!7093159 (not res!2896728)) b!7093161))

(assert (= (and b!7093161 res!2896729) b!7093154))

(assert (= (or b!7093157 b!7093154) bm!645268))

(assert (= (or b!7093156 b!7093161) bm!645269))

(assert (= (or b!7093158 bm!645269) bm!645270))

(declare-fun m!7821880 () Bool)

(assert (=> bm!645268 m!7821880))

(declare-fun m!7821882 () Bool)

(assert (=> b!7093160 m!7821882))

(declare-fun m!7821884 () Bool)

(assert (=> bm!645270 m!7821884))

(assert (=> b!7093070 d!2217320))

(declare-fun d!2217322 () Bool)

(assert (=> d!2217322 (forall!16738 (++!15977 (exprs!7304 c!9994) (exprs!7304 auxCtx!45)) lambda!430135)))

(declare-fun lt!2556759 () Unit!162307)

(declare-fun choose!54695 (List!68771 List!68771 Int) Unit!162307)

(assert (=> d!2217322 (= lt!2556759 (choose!54695 (exprs!7304 c!9994) (exprs!7304 auxCtx!45) lambda!430135))))

(assert (=> d!2217322 (forall!16738 (exprs!7304 c!9994) lambda!430135)))

(assert (=> d!2217322 (= (lemmaConcatPreservesForall!1107 (exprs!7304 c!9994) (exprs!7304 auxCtx!45) lambda!430135) lt!2556759)))

(declare-fun bs!1883689 () Bool)

(assert (= bs!1883689 d!2217322))

(assert (=> bs!1883689 m!7821754))

(assert (=> bs!1883689 m!7821754))

(declare-fun m!7821886 () Bool)

(assert (=> bs!1883689 m!7821886))

(declare-fun m!7821888 () Bool)

(assert (=> bs!1883689 m!7821888))

(assert (=> bs!1883689 m!7821804))

(assert (=> b!7093070 d!2217322))

(declare-fun b!7093172 () Bool)

(declare-fun e!4263978 () List!68771)

(assert (=> b!7093172 (= e!4263978 (Cons!68647 (h!75095 (exprs!7304 c!9994)) (++!15977 (t!382564 (exprs!7304 c!9994)) (exprs!7304 auxCtx!45))))))

(declare-fun b!7093173 () Bool)

(declare-fun res!2896736 () Bool)

(declare-fun e!4263977 () Bool)

(assert (=> b!7093173 (=> (not res!2896736) (not e!4263977))))

(declare-fun lt!2556762 () List!68771)

(declare-fun size!41320 (List!68771) Int)

(assert (=> b!7093173 (= res!2896736 (= (size!41320 lt!2556762) (+ (size!41320 (exprs!7304 c!9994)) (size!41320 (exprs!7304 auxCtx!45)))))))

(declare-fun b!7093171 () Bool)

(assert (=> b!7093171 (= e!4263978 (exprs!7304 auxCtx!45))))

(declare-fun b!7093174 () Bool)

(assert (=> b!7093174 (= e!4263977 (or (not (= (exprs!7304 auxCtx!45) Nil!68647)) (= lt!2556762 (exprs!7304 c!9994))))))

(declare-fun d!2217324 () Bool)

(assert (=> d!2217324 e!4263977))

(declare-fun res!2896737 () Bool)

(assert (=> d!2217324 (=> (not res!2896737) (not e!4263977))))

(declare-fun content!13945 (List!68771) (Set Regex!17808))

(assert (=> d!2217324 (= res!2896737 (= (content!13945 lt!2556762) (set.union (content!13945 (exprs!7304 c!9994)) (content!13945 (exprs!7304 auxCtx!45)))))))

(assert (=> d!2217324 (= lt!2556762 e!4263978)))

(declare-fun c!1323763 () Bool)

(assert (=> d!2217324 (= c!1323763 (is-Nil!68647 (exprs!7304 c!9994)))))

(assert (=> d!2217324 (= (++!15977 (exprs!7304 c!9994) (exprs!7304 auxCtx!45)) lt!2556762)))

(assert (= (and d!2217324 c!1323763) b!7093171))

(assert (= (and d!2217324 (not c!1323763)) b!7093172))

(assert (= (and d!2217324 res!2896737) b!7093173))

(assert (= (and b!7093173 res!2896736) b!7093174))

(declare-fun m!7821890 () Bool)

(assert (=> b!7093172 m!7821890))

(declare-fun m!7821892 () Bool)

(assert (=> b!7093173 m!7821892))

(declare-fun m!7821894 () Bool)

(assert (=> b!7093173 m!7821894))

(declare-fun m!7821896 () Bool)

(assert (=> b!7093173 m!7821896))

(declare-fun m!7821898 () Bool)

(assert (=> d!2217324 m!7821898))

(declare-fun m!7821900 () Bool)

(assert (=> d!2217324 m!7821900))

(declare-fun m!7821902 () Bool)

(assert (=> d!2217324 m!7821902))

(assert (=> b!7093070 d!2217324))

(declare-fun d!2217326 () Bool)

(declare-fun res!2896738 () Bool)

(declare-fun e!4263979 () Bool)

(assert (=> d!2217326 (=> res!2896738 e!4263979)))

(assert (=> d!2217326 (= res!2896738 (is-Nil!68647 (exprs!7304 c!9994)))))

(assert (=> d!2217326 (= (forall!16738 (exprs!7304 c!9994) lambda!430135) e!4263979)))

(declare-fun b!7093175 () Bool)

(declare-fun e!4263980 () Bool)

(assert (=> b!7093175 (= e!4263979 e!4263980)))

(declare-fun res!2896739 () Bool)

(assert (=> b!7093175 (=> (not res!2896739) (not e!4263980))))

(assert (=> b!7093175 (= res!2896739 (dynLambda!28006 lambda!430135 (h!75095 (exprs!7304 c!9994))))))

(declare-fun b!7093176 () Bool)

(assert (=> b!7093176 (= e!4263980 (forall!16738 (t!382564 (exprs!7304 c!9994)) lambda!430135))))

(assert (= (and d!2217326 (not res!2896738)) b!7093175))

(assert (= (and b!7093175 res!2896739) b!7093176))

(declare-fun b_lambda!271059 () Bool)

(assert (=> (not b_lambda!271059) (not b!7093175)))

(declare-fun m!7821904 () Bool)

(assert (=> b!7093175 m!7821904))

(declare-fun m!7821906 () Bool)

(assert (=> b!7093176 m!7821906))

(assert (=> b!7093071 d!2217326))

(declare-fun b!7093199 () Bool)

(declare-fun e!4263994 () (Set Context!13608))

(declare-fun call!645290 () (Set Context!13608))

(assert (=> b!7093199 (= e!4263994 call!645290)))

(declare-fun b!7093200 () Bool)

(declare-fun e!4263995 () (Set Context!13608))

(declare-fun call!645288 () (Set Context!13608))

(declare-fun call!645293 () (Set Context!13608))

(assert (=> b!7093200 (= e!4263995 (set.union call!645288 call!645293))))

(declare-fun bm!645283 () Bool)

(declare-fun call!645289 () (Set Context!13608))

(assert (=> bm!645283 (= call!645289 call!645293)))

(declare-fun b!7093202 () Bool)

(declare-fun c!1323775 () Bool)

(assert (=> b!7093202 (= c!1323775 (is-Star!17808 r!11554))))

(declare-fun e!4263997 () (Set Context!13608))

(assert (=> b!7093202 (= e!4263994 e!4263997)))

(declare-fun bm!645284 () Bool)

(declare-fun call!645292 () List!68771)

(declare-fun call!645291 () List!68771)

(assert (=> bm!645284 (= call!645292 call!645291)))

(declare-fun b!7093203 () Bool)

(declare-fun e!4263998 () (Set Context!13608))

(assert (=> b!7093203 (= e!4263998 (set.union call!645288 call!645289))))

(declare-fun bm!645285 () Bool)

(assert (=> bm!645285 (= call!645290 call!645289)))

(declare-fun b!7093204 () Bool)

(assert (=> b!7093204 (= e!4263998 e!4263994)))

(declare-fun c!1323777 () Bool)

(assert (=> b!7093204 (= c!1323777 (is-Concat!26653 r!11554))))

(declare-fun c!1323776 () Bool)

(declare-fun bm!645286 () Bool)

(assert (=> bm!645286 (= call!645291 ($colon$colon!2715 (exprs!7304 lt!2556697) (ite (or c!1323776 c!1323777) (regTwo!36128 r!11554) r!11554)))))

(declare-fun c!1323774 () Bool)

(declare-fun bm!645287 () Bool)

(assert (=> bm!645287 (= call!645293 (derivationStepZipperDown!2371 (ite c!1323774 (regTwo!36129 r!11554) (ite c!1323776 (regTwo!36128 r!11554) (ite c!1323777 (regOne!36128 r!11554) (reg!18137 r!11554)))) (ite (or c!1323774 c!1323776) lt!2556697 (Context!13609 call!645292)) a!1901))))

(declare-fun b!7093205 () Bool)

(declare-fun e!4263996 () (Set Context!13608))

(assert (=> b!7093205 (= e!4263996 e!4263995)))

(assert (=> b!7093205 (= c!1323774 (is-Union!17808 r!11554))))

(declare-fun b!7093206 () Bool)

(declare-fun e!4263993 () Bool)

(assert (=> b!7093206 (= c!1323776 e!4263993)))

(declare-fun res!2896743 () Bool)

(assert (=> b!7093206 (=> (not res!2896743) (not e!4263993))))

(assert (=> b!7093206 (= res!2896743 (is-Concat!26653 r!11554))))

(assert (=> b!7093206 (= e!4263995 e!4263998)))

(declare-fun d!2217328 () Bool)

(declare-fun c!1323778 () Bool)

(assert (=> d!2217328 (= c!1323778 (and (is-ElementMatch!17808 r!11554) (= (c!1323751 r!11554) a!1901)))))

(assert (=> d!2217328 (= (derivationStepZipperDown!2371 r!11554 lt!2556697 a!1901) e!4263996)))

(declare-fun b!7093201 () Bool)

(assert (=> b!7093201 (= e!4263996 (set.insert lt!2556697 (as set.empty (Set Context!13608))))))

(declare-fun bm!645288 () Bool)

(assert (=> bm!645288 (= call!645288 (derivationStepZipperDown!2371 (ite c!1323774 (regOne!36129 r!11554) (regOne!36128 r!11554)) (ite c!1323774 lt!2556697 (Context!13609 call!645291)) a!1901))))

(declare-fun b!7093207 () Bool)

(assert (=> b!7093207 (= e!4263997 (as set.empty (Set Context!13608)))))

(declare-fun b!7093208 () Bool)

(assert (=> b!7093208 (= e!4263993 (nullable!7448 (regOne!36128 r!11554)))))

(declare-fun b!7093209 () Bool)

(assert (=> b!7093209 (= e!4263997 call!645290)))

(assert (= (and d!2217328 c!1323778) b!7093201))

(assert (= (and d!2217328 (not c!1323778)) b!7093205))

(assert (= (and b!7093205 c!1323774) b!7093200))

(assert (= (and b!7093205 (not c!1323774)) b!7093206))

(assert (= (and b!7093206 res!2896743) b!7093208))

(assert (= (and b!7093206 c!1323776) b!7093203))

(assert (= (and b!7093206 (not c!1323776)) b!7093204))

(assert (= (and b!7093204 c!1323777) b!7093199))

(assert (= (and b!7093204 (not c!1323777)) b!7093202))

(assert (= (and b!7093202 c!1323775) b!7093209))

(assert (= (and b!7093202 (not c!1323775)) b!7093207))

(assert (= (or b!7093199 b!7093209) bm!645284))

(assert (= (or b!7093199 b!7093209) bm!645285))

(assert (= (or b!7093203 bm!645285) bm!645283))

(assert (= (or b!7093203 bm!645284) bm!645286))

(assert (= (or b!7093200 bm!645283) bm!645287))

(assert (= (or b!7093200 b!7093203) bm!645288))

(declare-fun m!7821908 () Bool)

(assert (=> bm!645288 m!7821908))

(declare-fun m!7821910 () Bool)

(assert (=> b!7093201 m!7821910))

(declare-fun m!7821912 () Bool)

(assert (=> bm!645287 m!7821912))

(declare-fun m!7821914 () Bool)

(assert (=> bm!645286 m!7821914))

(assert (=> b!7093208 m!7821750))

(assert (=> b!7093066 d!2217328))

(declare-fun b!7093210 () Bool)

(declare-fun e!4264000 () (Set Context!13608))

(declare-fun call!645296 () (Set Context!13608))

(assert (=> b!7093210 (= e!4264000 call!645296)))

(declare-fun b!7093211 () Bool)

(declare-fun e!4264001 () (Set Context!13608))

(declare-fun call!645294 () (Set Context!13608))

(declare-fun call!645299 () (Set Context!13608))

(assert (=> b!7093211 (= e!4264001 (set.union call!645294 call!645299))))

(declare-fun bm!645289 () Bool)

(declare-fun call!645295 () (Set Context!13608))

(assert (=> bm!645289 (= call!645295 call!645299)))

(declare-fun b!7093213 () Bool)

(declare-fun c!1323780 () Bool)

(assert (=> b!7093213 (= c!1323780 (is-Star!17808 (regTwo!36128 r!11554)))))

(declare-fun e!4264003 () (Set Context!13608))

(assert (=> b!7093213 (= e!4264000 e!4264003)))

(declare-fun bm!645290 () Bool)

(declare-fun call!645298 () List!68771)

(declare-fun call!645297 () List!68771)

(assert (=> bm!645290 (= call!645298 call!645297)))

(declare-fun b!7093214 () Bool)

(declare-fun e!4264004 () (Set Context!13608))

(assert (=> b!7093214 (= e!4264004 (set.union call!645294 call!645295))))

(declare-fun bm!645291 () Bool)

(assert (=> bm!645291 (= call!645296 call!645295)))

(declare-fun b!7093215 () Bool)

(assert (=> b!7093215 (= e!4264004 e!4264000)))

(declare-fun c!1323782 () Bool)

(assert (=> b!7093215 (= c!1323782 (is-Concat!26653 (regTwo!36128 r!11554)))))

(declare-fun c!1323781 () Bool)

(declare-fun bm!645292 () Bool)

(assert (=> bm!645292 (= call!645297 ($colon$colon!2715 (exprs!7304 lt!2556697) (ite (or c!1323781 c!1323782) (regTwo!36128 (regTwo!36128 r!11554)) (regTwo!36128 r!11554))))))

(declare-fun c!1323779 () Bool)

(declare-fun bm!645293 () Bool)

(assert (=> bm!645293 (= call!645299 (derivationStepZipperDown!2371 (ite c!1323779 (regTwo!36129 (regTwo!36128 r!11554)) (ite c!1323781 (regTwo!36128 (regTwo!36128 r!11554)) (ite c!1323782 (regOne!36128 (regTwo!36128 r!11554)) (reg!18137 (regTwo!36128 r!11554))))) (ite (or c!1323779 c!1323781) lt!2556697 (Context!13609 call!645298)) a!1901))))

(declare-fun b!7093216 () Bool)

(declare-fun e!4264002 () (Set Context!13608))

(assert (=> b!7093216 (= e!4264002 e!4264001)))

(assert (=> b!7093216 (= c!1323779 (is-Union!17808 (regTwo!36128 r!11554)))))

(declare-fun b!7093217 () Bool)

(declare-fun e!4263999 () Bool)

(assert (=> b!7093217 (= c!1323781 e!4263999)))

(declare-fun res!2896744 () Bool)

(assert (=> b!7093217 (=> (not res!2896744) (not e!4263999))))

(assert (=> b!7093217 (= res!2896744 (is-Concat!26653 (regTwo!36128 r!11554)))))

(assert (=> b!7093217 (= e!4264001 e!4264004)))

(declare-fun d!2217330 () Bool)

(declare-fun c!1323783 () Bool)

(assert (=> d!2217330 (= c!1323783 (and (is-ElementMatch!17808 (regTwo!36128 r!11554)) (= (c!1323751 (regTwo!36128 r!11554)) a!1901)))))

(assert (=> d!2217330 (= (derivationStepZipperDown!2371 (regTwo!36128 r!11554) lt!2556697 a!1901) e!4264002)))

(declare-fun b!7093212 () Bool)

(assert (=> b!7093212 (= e!4264002 (set.insert lt!2556697 (as set.empty (Set Context!13608))))))

(declare-fun bm!645294 () Bool)

(assert (=> bm!645294 (= call!645294 (derivationStepZipperDown!2371 (ite c!1323779 (regOne!36129 (regTwo!36128 r!11554)) (regOne!36128 (regTwo!36128 r!11554))) (ite c!1323779 lt!2556697 (Context!13609 call!645297)) a!1901))))

(declare-fun b!7093218 () Bool)

(assert (=> b!7093218 (= e!4264003 (as set.empty (Set Context!13608)))))

(declare-fun b!7093219 () Bool)

(assert (=> b!7093219 (= e!4263999 (nullable!7448 (regOne!36128 (regTwo!36128 r!11554))))))

(declare-fun b!7093220 () Bool)

(assert (=> b!7093220 (= e!4264003 call!645296)))

(assert (= (and d!2217330 c!1323783) b!7093212))

(assert (= (and d!2217330 (not c!1323783)) b!7093216))

(assert (= (and b!7093216 c!1323779) b!7093211))

(assert (= (and b!7093216 (not c!1323779)) b!7093217))

(assert (= (and b!7093217 res!2896744) b!7093219))

(assert (= (and b!7093217 c!1323781) b!7093214))

(assert (= (and b!7093217 (not c!1323781)) b!7093215))

(assert (= (and b!7093215 c!1323782) b!7093210))

(assert (= (and b!7093215 (not c!1323782)) b!7093213))

(assert (= (and b!7093213 c!1323780) b!7093220))

(assert (= (and b!7093213 (not c!1323780)) b!7093218))

(assert (= (or b!7093210 b!7093220) bm!645290))

(assert (= (or b!7093210 b!7093220) bm!645291))

(assert (= (or b!7093214 bm!645291) bm!645289))

(assert (= (or b!7093214 bm!645290) bm!645292))

(assert (= (or b!7093211 bm!645289) bm!645293))

(assert (= (or b!7093211 b!7093214) bm!645294))

(declare-fun m!7821916 () Bool)

(assert (=> bm!645294 m!7821916))

(assert (=> b!7093212 m!7821910))

(declare-fun m!7821918 () Bool)

(assert (=> bm!645293 m!7821918))

(declare-fun m!7821920 () Bool)

(assert (=> bm!645292 m!7821920))

(declare-fun m!7821922 () Bool)

(assert (=> b!7093219 m!7821922))

(assert (=> b!7093066 d!2217330))

(declare-fun b!7093221 () Bool)

(declare-fun e!4264006 () (Set Context!13608))

(declare-fun call!645302 () (Set Context!13608))

(assert (=> b!7093221 (= e!4264006 call!645302)))

(declare-fun b!7093222 () Bool)

(declare-fun e!4264007 () (Set Context!13608))

(declare-fun call!645300 () (Set Context!13608))

(declare-fun call!645305 () (Set Context!13608))

(assert (=> b!7093222 (= e!4264007 (set.union call!645300 call!645305))))

(declare-fun bm!645295 () Bool)

(declare-fun call!645301 () (Set Context!13608))

(assert (=> bm!645295 (= call!645301 call!645305)))

(declare-fun b!7093224 () Bool)

(declare-fun c!1323785 () Bool)

(assert (=> b!7093224 (= c!1323785 (is-Star!17808 (regOne!36128 r!11554)))))

(declare-fun e!4264009 () (Set Context!13608))

(assert (=> b!7093224 (= e!4264006 e!4264009)))

(declare-fun bm!645296 () Bool)

(declare-fun call!645304 () List!68771)

(declare-fun call!645303 () List!68771)

(assert (=> bm!645296 (= call!645304 call!645303)))

(declare-fun b!7093225 () Bool)

(declare-fun e!4264010 () (Set Context!13608))

(assert (=> b!7093225 (= e!4264010 (set.union call!645300 call!645301))))

(declare-fun bm!645297 () Bool)

(assert (=> bm!645297 (= call!645302 call!645301)))

(declare-fun b!7093226 () Bool)

(assert (=> b!7093226 (= e!4264010 e!4264006)))

(declare-fun c!1323787 () Bool)

(assert (=> b!7093226 (= c!1323787 (is-Concat!26653 (regOne!36128 r!11554)))))

(declare-fun bm!645298 () Bool)

(declare-fun c!1323786 () Bool)

(assert (=> bm!645298 (= call!645303 ($colon$colon!2715 (exprs!7304 (Context!13609 ($colon$colon!2715 lt!2556690 (regTwo!36128 r!11554)))) (ite (or c!1323786 c!1323787) (regTwo!36128 (regOne!36128 r!11554)) (regOne!36128 r!11554))))))

(declare-fun bm!645299 () Bool)

(declare-fun c!1323784 () Bool)

(assert (=> bm!645299 (= call!645305 (derivationStepZipperDown!2371 (ite c!1323784 (regTwo!36129 (regOne!36128 r!11554)) (ite c!1323786 (regTwo!36128 (regOne!36128 r!11554)) (ite c!1323787 (regOne!36128 (regOne!36128 r!11554)) (reg!18137 (regOne!36128 r!11554))))) (ite (or c!1323784 c!1323786) (Context!13609 ($colon$colon!2715 lt!2556690 (regTwo!36128 r!11554))) (Context!13609 call!645304)) a!1901))))

(declare-fun b!7093227 () Bool)

(declare-fun e!4264008 () (Set Context!13608))

(assert (=> b!7093227 (= e!4264008 e!4264007)))

(assert (=> b!7093227 (= c!1323784 (is-Union!17808 (regOne!36128 r!11554)))))

(declare-fun b!7093228 () Bool)

(declare-fun e!4264005 () Bool)

(assert (=> b!7093228 (= c!1323786 e!4264005)))

(declare-fun res!2896745 () Bool)

(assert (=> b!7093228 (=> (not res!2896745) (not e!4264005))))

(assert (=> b!7093228 (= res!2896745 (is-Concat!26653 (regOne!36128 r!11554)))))

(assert (=> b!7093228 (= e!4264007 e!4264010)))

(declare-fun d!2217332 () Bool)

(declare-fun c!1323788 () Bool)

(assert (=> d!2217332 (= c!1323788 (and (is-ElementMatch!17808 (regOne!36128 r!11554)) (= (c!1323751 (regOne!36128 r!11554)) a!1901)))))

(assert (=> d!2217332 (= (derivationStepZipperDown!2371 (regOne!36128 r!11554) (Context!13609 ($colon$colon!2715 lt!2556690 (regTwo!36128 r!11554))) a!1901) e!4264008)))

(declare-fun b!7093223 () Bool)

(assert (=> b!7093223 (= e!4264008 (set.insert (Context!13609 ($colon$colon!2715 lt!2556690 (regTwo!36128 r!11554))) (as set.empty (Set Context!13608))))))

(declare-fun bm!645300 () Bool)

(assert (=> bm!645300 (= call!645300 (derivationStepZipperDown!2371 (ite c!1323784 (regOne!36129 (regOne!36128 r!11554)) (regOne!36128 (regOne!36128 r!11554))) (ite c!1323784 (Context!13609 ($colon$colon!2715 lt!2556690 (regTwo!36128 r!11554))) (Context!13609 call!645303)) a!1901))))

(declare-fun b!7093229 () Bool)

(assert (=> b!7093229 (= e!4264009 (as set.empty (Set Context!13608)))))

(declare-fun b!7093230 () Bool)

(assert (=> b!7093230 (= e!4264005 (nullable!7448 (regOne!36128 (regOne!36128 r!11554))))))

(declare-fun b!7093231 () Bool)

(assert (=> b!7093231 (= e!4264009 call!645302)))

(assert (= (and d!2217332 c!1323788) b!7093223))

(assert (= (and d!2217332 (not c!1323788)) b!7093227))

(assert (= (and b!7093227 c!1323784) b!7093222))

(assert (= (and b!7093227 (not c!1323784)) b!7093228))

(assert (= (and b!7093228 res!2896745) b!7093230))

(assert (= (and b!7093228 c!1323786) b!7093225))

(assert (= (and b!7093228 (not c!1323786)) b!7093226))

(assert (= (and b!7093226 c!1323787) b!7093221))

(assert (= (and b!7093226 (not c!1323787)) b!7093224))

(assert (= (and b!7093224 c!1323785) b!7093231))

(assert (= (and b!7093224 (not c!1323785)) b!7093229))

(assert (= (or b!7093221 b!7093231) bm!645296))

(assert (= (or b!7093221 b!7093231) bm!645297))

(assert (= (or b!7093225 bm!645297) bm!645295))

(assert (= (or b!7093225 bm!645296) bm!645298))

(assert (= (or b!7093222 bm!645295) bm!645299))

(assert (= (or b!7093222 b!7093225) bm!645300))

(declare-fun m!7821924 () Bool)

(assert (=> bm!645300 m!7821924))

(declare-fun m!7821926 () Bool)

(assert (=> b!7093223 m!7821926))

(declare-fun m!7821928 () Bool)

(assert (=> bm!645299 m!7821928))

(declare-fun m!7821930 () Bool)

(assert (=> bm!645298 m!7821930))

(declare-fun m!7821932 () Bool)

(assert (=> b!7093230 m!7821932))

(assert (=> b!7093066 d!2217332))

(declare-fun d!2217334 () Bool)

(assert (=> d!2217334 (= ($colon$colon!2715 lt!2556690 (regTwo!36128 r!11554)) (Cons!68647 (regTwo!36128 r!11554) lt!2556690))))

(assert (=> b!7093066 d!2217334))

(declare-fun bs!1883690 () Bool)

(declare-fun d!2217336 () Bool)

(assert (= bs!1883690 (and d!2217336 b!7093074)))

(declare-fun lambda!430164 () Int)

(assert (=> bs!1883690 (= lambda!430164 lambda!430134)))

(assert (=> d!2217336 true))

(assert (=> d!2217336 (= (appendTo!879 lt!2556683 auxCtx!45) (map!16159 lt!2556683 lambda!430164))))

(declare-fun bs!1883691 () Bool)

(assert (= bs!1883691 d!2217336))

(declare-fun m!7821934 () Bool)

(assert (=> bs!1883691 m!7821934))

(assert (=> b!7093065 d!2217336))

(declare-fun d!2217338 () Bool)

(declare-fun choose!54696 ((Set Context!13608) Int) (Set Context!13608))

(assert (=> d!2217338 (= (map!16159 lt!2556691 lambda!430134) (choose!54696 lt!2556691 lambda!430134))))

(declare-fun bs!1883692 () Bool)

(assert (= bs!1883692 d!2217338))

(declare-fun m!7821936 () Bool)

(assert (=> bs!1883692 m!7821936))

(assert (=> b!7093065 d!2217338))

(declare-fun b!7093232 () Bool)

(declare-fun e!4264012 () (Set Context!13608))

(declare-fun call!645308 () (Set Context!13608))

(assert (=> b!7093232 (= e!4264012 call!645308)))

(declare-fun b!7093233 () Bool)

(declare-fun e!4264013 () (Set Context!13608))

(declare-fun call!645306 () (Set Context!13608))

(declare-fun call!645311 () (Set Context!13608))

(assert (=> b!7093233 (= e!4264013 (set.union call!645306 call!645311))))

(declare-fun bm!645301 () Bool)

(declare-fun call!645307 () (Set Context!13608))

(assert (=> bm!645301 (= call!645307 call!645311)))

(declare-fun b!7093235 () Bool)

(declare-fun c!1323791 () Bool)

(assert (=> b!7093235 (= c!1323791 (is-Star!17808 (regTwo!36128 r!11554)))))

(declare-fun e!4264015 () (Set Context!13608))

(assert (=> b!7093235 (= e!4264012 e!4264015)))

(declare-fun bm!645302 () Bool)

(declare-fun call!645310 () List!68771)

(declare-fun call!645309 () List!68771)

(assert (=> bm!645302 (= call!645310 call!645309)))

(declare-fun b!7093236 () Bool)

(declare-fun e!4264016 () (Set Context!13608))

(assert (=> b!7093236 (= e!4264016 (set.union call!645306 call!645307))))

(declare-fun bm!645303 () Bool)

(assert (=> bm!645303 (= call!645308 call!645307)))

(declare-fun b!7093237 () Bool)

(assert (=> b!7093237 (= e!4264016 e!4264012)))

(declare-fun c!1323793 () Bool)

(assert (=> b!7093237 (= c!1323793 (is-Concat!26653 (regTwo!36128 r!11554)))))

(declare-fun c!1323792 () Bool)

(declare-fun bm!645304 () Bool)

(assert (=> bm!645304 (= call!645309 ($colon$colon!2715 (exprs!7304 c!9994) (ite (or c!1323792 c!1323793) (regTwo!36128 (regTwo!36128 r!11554)) (regTwo!36128 r!11554))))))

(declare-fun c!1323790 () Bool)

(declare-fun bm!645305 () Bool)

(assert (=> bm!645305 (= call!645311 (derivationStepZipperDown!2371 (ite c!1323790 (regTwo!36129 (regTwo!36128 r!11554)) (ite c!1323792 (regTwo!36128 (regTwo!36128 r!11554)) (ite c!1323793 (regOne!36128 (regTwo!36128 r!11554)) (reg!18137 (regTwo!36128 r!11554))))) (ite (or c!1323790 c!1323792) c!9994 (Context!13609 call!645310)) a!1901))))

(declare-fun b!7093238 () Bool)

(declare-fun e!4264014 () (Set Context!13608))

(assert (=> b!7093238 (= e!4264014 e!4264013)))

(assert (=> b!7093238 (= c!1323790 (is-Union!17808 (regTwo!36128 r!11554)))))

(declare-fun b!7093239 () Bool)

(declare-fun e!4264011 () Bool)

(assert (=> b!7093239 (= c!1323792 e!4264011)))

(declare-fun res!2896746 () Bool)

(assert (=> b!7093239 (=> (not res!2896746) (not e!4264011))))

(assert (=> b!7093239 (= res!2896746 (is-Concat!26653 (regTwo!36128 r!11554)))))

(assert (=> b!7093239 (= e!4264013 e!4264016)))

(declare-fun d!2217340 () Bool)

(declare-fun c!1323794 () Bool)

(assert (=> d!2217340 (= c!1323794 (and (is-ElementMatch!17808 (regTwo!36128 r!11554)) (= (c!1323751 (regTwo!36128 r!11554)) a!1901)))))

(assert (=> d!2217340 (= (derivationStepZipperDown!2371 (regTwo!36128 r!11554) c!9994 a!1901) e!4264014)))

(declare-fun b!7093234 () Bool)

(assert (=> b!7093234 (= e!4264014 (set.insert c!9994 (as set.empty (Set Context!13608))))))

(declare-fun bm!645306 () Bool)

(assert (=> bm!645306 (= call!645306 (derivationStepZipperDown!2371 (ite c!1323790 (regOne!36129 (regTwo!36128 r!11554)) (regOne!36128 (regTwo!36128 r!11554))) (ite c!1323790 c!9994 (Context!13609 call!645309)) a!1901))))

(declare-fun b!7093240 () Bool)

(assert (=> b!7093240 (= e!4264015 (as set.empty (Set Context!13608)))))

(declare-fun b!7093241 () Bool)

(assert (=> b!7093241 (= e!4264011 (nullable!7448 (regOne!36128 (regTwo!36128 r!11554))))))

(declare-fun b!7093242 () Bool)

(assert (=> b!7093242 (= e!4264015 call!645308)))

(assert (= (and d!2217340 c!1323794) b!7093234))

(assert (= (and d!2217340 (not c!1323794)) b!7093238))

(assert (= (and b!7093238 c!1323790) b!7093233))

(assert (= (and b!7093238 (not c!1323790)) b!7093239))

(assert (= (and b!7093239 res!2896746) b!7093241))

(assert (= (and b!7093239 c!1323792) b!7093236))

(assert (= (and b!7093239 (not c!1323792)) b!7093237))

(assert (= (and b!7093237 c!1323793) b!7093232))

(assert (= (and b!7093237 (not c!1323793)) b!7093235))

(assert (= (and b!7093235 c!1323791) b!7093242))

(assert (= (and b!7093235 (not c!1323791)) b!7093240))

(assert (= (or b!7093232 b!7093242) bm!645302))

(assert (= (or b!7093232 b!7093242) bm!645303))

(assert (= (or b!7093236 bm!645303) bm!645301))

(assert (= (or b!7093236 bm!645302) bm!645304))

(assert (= (or b!7093233 bm!645301) bm!645305))

(assert (= (or b!7093233 b!7093236) bm!645306))

(declare-fun m!7821938 () Bool)

(assert (=> bm!645306 m!7821938))

(declare-fun m!7821940 () Bool)

(assert (=> b!7093234 m!7821940))

(declare-fun m!7821942 () Bool)

(assert (=> bm!645305 m!7821942))

(declare-fun m!7821944 () Bool)

(assert (=> bm!645304 m!7821944))

(assert (=> b!7093241 m!7821922))

(assert (=> b!7093065 d!2217340))

(declare-fun bs!1883693 () Bool)

(declare-fun d!2217342 () Bool)

(assert (= bs!1883693 (and d!2217342 b!7093070)))

(declare-fun lambda!430167 () Int)

(assert (=> bs!1883693 (= lambda!430167 lambda!430135)))

(declare-fun bs!1883694 () Bool)

(assert (= bs!1883694 (and d!2217342 d!2217314)))

(assert (=> bs!1883694 (= lambda!430167 lambda!430158)))

(declare-fun bs!1883695 () Bool)

(assert (= bs!1883695 (and d!2217342 d!2217316)))

(assert (=> bs!1883695 (= lambda!430167 lambda!430159)))

(assert (=> d!2217342 (= (derivationStepZipperDown!2371 (regTwo!36128 r!11554) (Context!13609 (++!15977 (exprs!7304 c!9994) (exprs!7304 auxCtx!45))) a!1901) (appendTo!879 (derivationStepZipperDown!2371 (regTwo!36128 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2556770 () Unit!162307)

(assert (=> d!2217342 (= lt!2556770 (lemmaConcatPreservesForall!1107 (exprs!7304 c!9994) (exprs!7304 auxCtx!45) lambda!430167))))

(declare-fun lt!2556769 () Unit!162307)

(declare-fun choose!54697 (Context!13608 Regex!17808 C!35886 Context!13608) Unit!162307)

(assert (=> d!2217342 (= lt!2556769 (choose!54697 c!9994 (regTwo!36128 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2217342 (validRegex!9083 (regTwo!36128 r!11554))))

(assert (=> d!2217342 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!187 c!9994 (regTwo!36128 r!11554) a!1901 auxCtx!45) lt!2556769)))

(declare-fun bs!1883696 () Bool)

(assert (= bs!1883696 d!2217342))

(assert (=> bs!1883696 m!7821794))

(declare-fun m!7821946 () Bool)

(assert (=> bs!1883696 m!7821946))

(declare-fun m!7821948 () Bool)

(assert (=> bs!1883696 m!7821948))

(assert (=> bs!1883696 m!7821756))

(declare-fun m!7821950 () Bool)

(assert (=> bs!1883696 m!7821950))

(assert (=> bs!1883696 m!7821794))

(declare-fun m!7821952 () Bool)

(assert (=> bs!1883696 m!7821952))

(assert (=> bs!1883696 m!7821754))

(assert (=> b!7093065 d!2217342))

(declare-fun b!7093243 () Bool)

(declare-fun e!4264018 () (Set Context!13608))

(declare-fun call!645314 () (Set Context!13608))

(assert (=> b!7093243 (= e!4264018 call!645314)))

(declare-fun b!7093244 () Bool)

(declare-fun e!4264019 () (Set Context!13608))

(declare-fun call!645312 () (Set Context!13608))

(declare-fun call!645317 () (Set Context!13608))

(assert (=> b!7093244 (= e!4264019 (set.union call!645312 call!645317))))

(declare-fun bm!645307 () Bool)

(declare-fun call!645313 () (Set Context!13608))

(assert (=> bm!645307 (= call!645313 call!645317)))

(declare-fun b!7093246 () Bool)

(declare-fun c!1323797 () Bool)

(assert (=> b!7093246 (= c!1323797 (is-Star!17808 r!11554))))

(declare-fun e!4264021 () (Set Context!13608))

(assert (=> b!7093246 (= e!4264018 e!4264021)))

(declare-fun bm!645308 () Bool)

(declare-fun call!645316 () List!68771)

(declare-fun call!645315 () List!68771)

(assert (=> bm!645308 (= call!645316 call!645315)))

(declare-fun b!7093247 () Bool)

(declare-fun e!4264022 () (Set Context!13608))

(assert (=> b!7093247 (= e!4264022 (set.union call!645312 call!645313))))

(declare-fun bm!645309 () Bool)

(assert (=> bm!645309 (= call!645314 call!645313)))

(declare-fun b!7093248 () Bool)

(assert (=> b!7093248 (= e!4264022 e!4264018)))

(declare-fun c!1323799 () Bool)

(assert (=> b!7093248 (= c!1323799 (is-Concat!26653 r!11554))))

(declare-fun bm!645310 () Bool)

(declare-fun c!1323798 () Bool)

(assert (=> bm!645310 (= call!645315 ($colon$colon!2715 (exprs!7304 c!9994) (ite (or c!1323798 c!1323799) (regTwo!36128 r!11554) r!11554)))))

(declare-fun c!1323796 () Bool)

(declare-fun bm!645311 () Bool)

(assert (=> bm!645311 (= call!645317 (derivationStepZipperDown!2371 (ite c!1323796 (regTwo!36129 r!11554) (ite c!1323798 (regTwo!36128 r!11554) (ite c!1323799 (regOne!36128 r!11554) (reg!18137 r!11554)))) (ite (or c!1323796 c!1323798) c!9994 (Context!13609 call!645316)) a!1901))))

(declare-fun b!7093249 () Bool)

(declare-fun e!4264020 () (Set Context!13608))

(assert (=> b!7093249 (= e!4264020 e!4264019)))

(assert (=> b!7093249 (= c!1323796 (is-Union!17808 r!11554))))

(declare-fun b!7093250 () Bool)

(declare-fun e!4264017 () Bool)

(assert (=> b!7093250 (= c!1323798 e!4264017)))

(declare-fun res!2896747 () Bool)

(assert (=> b!7093250 (=> (not res!2896747) (not e!4264017))))

(assert (=> b!7093250 (= res!2896747 (is-Concat!26653 r!11554))))

(assert (=> b!7093250 (= e!4264019 e!4264022)))

(declare-fun d!2217346 () Bool)

(declare-fun c!1323800 () Bool)

(assert (=> d!2217346 (= c!1323800 (and (is-ElementMatch!17808 r!11554) (= (c!1323751 r!11554) a!1901)))))

(assert (=> d!2217346 (= (derivationStepZipperDown!2371 r!11554 c!9994 a!1901) e!4264020)))

(declare-fun b!7093245 () Bool)

(assert (=> b!7093245 (= e!4264020 (set.insert c!9994 (as set.empty (Set Context!13608))))))

(declare-fun bm!645312 () Bool)

(assert (=> bm!645312 (= call!645312 (derivationStepZipperDown!2371 (ite c!1323796 (regOne!36129 r!11554) (regOne!36128 r!11554)) (ite c!1323796 c!9994 (Context!13609 call!645315)) a!1901))))

(declare-fun b!7093251 () Bool)

(assert (=> b!7093251 (= e!4264021 (as set.empty (Set Context!13608)))))

(declare-fun b!7093252 () Bool)

(assert (=> b!7093252 (= e!4264017 (nullable!7448 (regOne!36128 r!11554)))))

(declare-fun b!7093253 () Bool)

(assert (=> b!7093253 (= e!4264021 call!645314)))

(assert (= (and d!2217346 c!1323800) b!7093245))

(assert (= (and d!2217346 (not c!1323800)) b!7093249))

(assert (= (and b!7093249 c!1323796) b!7093244))

(assert (= (and b!7093249 (not c!1323796)) b!7093250))

(assert (= (and b!7093250 res!2896747) b!7093252))

(assert (= (and b!7093250 c!1323798) b!7093247))

(assert (= (and b!7093250 (not c!1323798)) b!7093248))

(assert (= (and b!7093248 c!1323799) b!7093243))

(assert (= (and b!7093248 (not c!1323799)) b!7093246))

(assert (= (and b!7093246 c!1323797) b!7093253))

(assert (= (and b!7093246 (not c!1323797)) b!7093251))

(assert (= (or b!7093243 b!7093253) bm!645308))

(assert (= (or b!7093243 b!7093253) bm!645309))

(assert (= (or b!7093247 bm!645309) bm!645307))

(assert (= (or b!7093247 bm!645308) bm!645310))

(assert (= (or b!7093244 bm!645307) bm!645311))

(assert (= (or b!7093244 b!7093247) bm!645312))

(declare-fun m!7821954 () Bool)

(assert (=> bm!645312 m!7821954))

(assert (=> b!7093245 m!7821940))

(declare-fun m!7821956 () Bool)

(assert (=> bm!645311 m!7821956))

(declare-fun m!7821958 () Bool)

(assert (=> bm!645310 m!7821958))

(assert (=> b!7093252 m!7821750))

(assert (=> b!7093065 d!2217346))

(declare-fun d!2217348 () Bool)

(assert (=> d!2217348 (= (map!16159 lt!2556683 lambda!430134) (choose!54696 lt!2556683 lambda!430134))))

(declare-fun bs!1883697 () Bool)

(assert (= bs!1883697 d!2217348))

(declare-fun m!7821960 () Bool)

(assert (=> bs!1883697 m!7821960))

(assert (=> b!7093065 d!2217348))

(declare-fun b!7093259 () Bool)

(declare-fun e!4264028 () List!68771)

(assert (=> b!7093259 (= e!4264028 (Cons!68647 (h!75095 lt!2556689) (++!15977 (t!382564 lt!2556689) (exprs!7304 auxCtx!45))))))

(declare-fun b!7093260 () Bool)

(declare-fun res!2896752 () Bool)

(declare-fun e!4264027 () Bool)

(assert (=> b!7093260 (=> (not res!2896752) (not e!4264027))))

(declare-fun lt!2556771 () List!68771)

(assert (=> b!7093260 (= res!2896752 (= (size!41320 lt!2556771) (+ (size!41320 lt!2556689) (size!41320 (exprs!7304 auxCtx!45)))))))

(declare-fun b!7093258 () Bool)

(assert (=> b!7093258 (= e!4264028 (exprs!7304 auxCtx!45))))

(declare-fun b!7093261 () Bool)

(assert (=> b!7093261 (= e!4264027 (or (not (= (exprs!7304 auxCtx!45) Nil!68647)) (= lt!2556771 lt!2556689)))))

(declare-fun d!2217350 () Bool)

(assert (=> d!2217350 e!4264027))

(declare-fun res!2896753 () Bool)

(assert (=> d!2217350 (=> (not res!2896753) (not e!4264027))))

(assert (=> d!2217350 (= res!2896753 (= (content!13945 lt!2556771) (set.union (content!13945 lt!2556689) (content!13945 (exprs!7304 auxCtx!45)))))))

(assert (=> d!2217350 (= lt!2556771 e!4264028)))

(declare-fun c!1323801 () Bool)

(assert (=> d!2217350 (= c!1323801 (is-Nil!68647 lt!2556689))))

(assert (=> d!2217350 (= (++!15977 lt!2556689 (exprs!7304 auxCtx!45)) lt!2556771)))

(assert (= (and d!2217350 c!1323801) b!7093258))

(assert (= (and d!2217350 (not c!1323801)) b!7093259))

(assert (= (and d!2217350 res!2896753) b!7093260))

(assert (= (and b!7093260 res!2896752) b!7093261))

(declare-fun m!7821962 () Bool)

(assert (=> b!7093259 m!7821962))

(declare-fun m!7821964 () Bool)

(assert (=> b!7093260 m!7821964))

(declare-fun m!7821966 () Bool)

(assert (=> b!7093260 m!7821966))

(assert (=> b!7093260 m!7821896))

(declare-fun m!7821968 () Bool)

(assert (=> d!2217350 m!7821968))

(declare-fun m!7821970 () Bool)

(assert (=> d!2217350 m!7821970))

(assert (=> d!2217350 m!7821902))

(assert (=> b!7093065 d!2217350))

(declare-fun d!2217352 () Bool)

(assert (=> d!2217352 (= ($colon$colon!2715 (exprs!7304 c!9994) (regTwo!36128 r!11554)) (Cons!68647 (regTwo!36128 r!11554) (exprs!7304 c!9994)))))

(assert (=> b!7093065 d!2217352))

(declare-fun bs!1883698 () Bool)

(declare-fun d!2217354 () Bool)

(assert (= bs!1883698 (and d!2217354 b!7093074)))

(declare-fun lambda!430168 () Int)

(assert (=> bs!1883698 (= lambda!430168 lambda!430134)))

(declare-fun bs!1883699 () Bool)

(assert (= bs!1883699 (and d!2217354 d!2217336)))

(assert (=> bs!1883699 (= lambda!430168 lambda!430164)))

(assert (=> d!2217354 true))

(assert (=> d!2217354 (= (appendTo!879 lt!2556691 auxCtx!45) (map!16159 lt!2556691 lambda!430168))))

(declare-fun bs!1883700 () Bool)

(assert (= bs!1883700 d!2217354))

(declare-fun m!7821972 () Bool)

(assert (=> bs!1883700 m!7821972))

(assert (=> b!7093065 d!2217354))

(declare-fun d!2217356 () Bool)

(assert (=> d!2217356 (forall!16738 (++!15977 lt!2556689 (exprs!7304 auxCtx!45)) lambda!430135)))

(declare-fun lt!2556772 () Unit!162307)

(assert (=> d!2217356 (= lt!2556772 (choose!54695 lt!2556689 (exprs!7304 auxCtx!45) lambda!430135))))

(assert (=> d!2217356 (forall!16738 lt!2556689 lambda!430135)))

(assert (=> d!2217356 (= (lemmaConcatPreservesForall!1107 lt!2556689 (exprs!7304 auxCtx!45) lambda!430135) lt!2556772)))

(declare-fun bs!1883701 () Bool)

(assert (= bs!1883701 d!2217356))

(assert (=> bs!1883701 m!7821776))

(assert (=> bs!1883701 m!7821776))

(declare-fun m!7821974 () Bool)

(assert (=> bs!1883701 m!7821974))

(declare-fun m!7821976 () Bool)

(assert (=> bs!1883701 m!7821976))

(declare-fun m!7821978 () Bool)

(assert (=> bs!1883701 m!7821978))

(assert (=> b!7093065 d!2217356))

(declare-fun b!7093262 () Bool)

(declare-fun e!4264030 () (Set Context!13608))

(declare-fun call!645320 () (Set Context!13608))

(assert (=> b!7093262 (= e!4264030 call!645320)))

(declare-fun b!7093263 () Bool)

(declare-fun e!4264031 () (Set Context!13608))

(declare-fun call!645318 () (Set Context!13608))

(declare-fun call!645323 () (Set Context!13608))

(assert (=> b!7093263 (= e!4264031 (set.union call!645318 call!645323))))

(declare-fun bm!645313 () Bool)

(declare-fun call!645319 () (Set Context!13608))

(assert (=> bm!645313 (= call!645319 call!645323)))

(declare-fun b!7093265 () Bool)

(declare-fun c!1323803 () Bool)

(assert (=> b!7093265 (= c!1323803 (is-Star!17808 (regOne!36128 r!11554)))))

(declare-fun e!4264033 () (Set Context!13608))

(assert (=> b!7093265 (= e!4264030 e!4264033)))

(declare-fun bm!645314 () Bool)

(declare-fun call!645322 () List!68771)

(declare-fun call!645321 () List!68771)

(assert (=> bm!645314 (= call!645322 call!645321)))

(declare-fun b!7093266 () Bool)

(declare-fun e!4264034 () (Set Context!13608))

(assert (=> b!7093266 (= e!4264034 (set.union call!645318 call!645319))))

(declare-fun bm!645315 () Bool)

(assert (=> bm!645315 (= call!645320 call!645319)))

(declare-fun b!7093267 () Bool)

(assert (=> b!7093267 (= e!4264034 e!4264030)))

(declare-fun c!1323805 () Bool)

(assert (=> b!7093267 (= c!1323805 (is-Concat!26653 (regOne!36128 r!11554)))))

(declare-fun c!1323804 () Bool)

(declare-fun bm!645316 () Bool)

(assert (=> bm!645316 (= call!645321 ($colon$colon!2715 (exprs!7304 lt!2556693) (ite (or c!1323804 c!1323805) (regTwo!36128 (regOne!36128 r!11554)) (regOne!36128 r!11554))))))

(declare-fun bm!645317 () Bool)

(declare-fun c!1323802 () Bool)

(assert (=> bm!645317 (= call!645323 (derivationStepZipperDown!2371 (ite c!1323802 (regTwo!36129 (regOne!36128 r!11554)) (ite c!1323804 (regTwo!36128 (regOne!36128 r!11554)) (ite c!1323805 (regOne!36128 (regOne!36128 r!11554)) (reg!18137 (regOne!36128 r!11554))))) (ite (or c!1323802 c!1323804) lt!2556693 (Context!13609 call!645322)) a!1901))))

(declare-fun b!7093268 () Bool)

(declare-fun e!4264032 () (Set Context!13608))

(assert (=> b!7093268 (= e!4264032 e!4264031)))

(assert (=> b!7093268 (= c!1323802 (is-Union!17808 (regOne!36128 r!11554)))))

(declare-fun b!7093269 () Bool)

(declare-fun e!4264029 () Bool)

(assert (=> b!7093269 (= c!1323804 e!4264029)))

(declare-fun res!2896754 () Bool)

(assert (=> b!7093269 (=> (not res!2896754) (not e!4264029))))

(assert (=> b!7093269 (= res!2896754 (is-Concat!26653 (regOne!36128 r!11554)))))

(assert (=> b!7093269 (= e!4264031 e!4264034)))

(declare-fun d!2217358 () Bool)

(declare-fun c!1323806 () Bool)

(assert (=> d!2217358 (= c!1323806 (and (is-ElementMatch!17808 (regOne!36128 r!11554)) (= (c!1323751 (regOne!36128 r!11554)) a!1901)))))

(assert (=> d!2217358 (= (derivationStepZipperDown!2371 (regOne!36128 r!11554) lt!2556693 a!1901) e!4264032)))

(declare-fun b!7093264 () Bool)

(assert (=> b!7093264 (= e!4264032 (set.insert lt!2556693 (as set.empty (Set Context!13608))))))

(declare-fun bm!645318 () Bool)

(assert (=> bm!645318 (= call!645318 (derivationStepZipperDown!2371 (ite c!1323802 (regOne!36129 (regOne!36128 r!11554)) (regOne!36128 (regOne!36128 r!11554))) (ite c!1323802 lt!2556693 (Context!13609 call!645321)) a!1901))))

(declare-fun b!7093270 () Bool)

(assert (=> b!7093270 (= e!4264033 (as set.empty (Set Context!13608)))))

(declare-fun b!7093271 () Bool)

(assert (=> b!7093271 (= e!4264029 (nullable!7448 (regOne!36128 (regOne!36128 r!11554))))))

(declare-fun b!7093272 () Bool)

(assert (=> b!7093272 (= e!4264033 call!645320)))

(assert (= (and d!2217358 c!1323806) b!7093264))

(assert (= (and d!2217358 (not c!1323806)) b!7093268))

(assert (= (and b!7093268 c!1323802) b!7093263))

(assert (= (and b!7093268 (not c!1323802)) b!7093269))

(assert (= (and b!7093269 res!2896754) b!7093271))

(assert (= (and b!7093269 c!1323804) b!7093266))

(assert (= (and b!7093269 (not c!1323804)) b!7093267))

(assert (= (and b!7093267 c!1323805) b!7093262))

(assert (= (and b!7093267 (not c!1323805)) b!7093265))

(assert (= (and b!7093265 c!1323803) b!7093272))

(assert (= (and b!7093265 (not c!1323803)) b!7093270))

(assert (= (or b!7093262 b!7093272) bm!645314))

(assert (= (or b!7093262 b!7093272) bm!645315))

(assert (= (or b!7093266 bm!645315) bm!645313))

(assert (= (or b!7093266 bm!645314) bm!645316))

(assert (= (or b!7093263 bm!645313) bm!645317))

(assert (= (or b!7093263 b!7093266) bm!645318))

(declare-fun m!7821982 () Bool)

(assert (=> bm!645318 m!7821982))

(declare-fun m!7821984 () Bool)

(assert (=> b!7093264 m!7821984))

(declare-fun m!7821988 () Bool)

(assert (=> bm!645317 m!7821988))

(declare-fun m!7821990 () Bool)

(assert (=> bm!645316 m!7821990))

(assert (=> b!7093271 m!7821932))

(assert (=> b!7093065 d!2217358))

(declare-fun b!7093277 () Bool)

(declare-fun e!4264040 () (Set Context!13608))

(declare-fun call!645326 () (Set Context!13608))

(assert (=> b!7093277 (= e!4264040 call!645326)))

(declare-fun b!7093278 () Bool)

(declare-fun e!4264041 () (Set Context!13608))

(declare-fun call!645324 () (Set Context!13608))

(declare-fun call!645329 () (Set Context!13608))

(assert (=> b!7093278 (= e!4264041 (set.union call!645324 call!645329))))

(declare-fun bm!645319 () Bool)

(declare-fun call!645325 () (Set Context!13608))

(assert (=> bm!645319 (= call!645325 call!645329)))

(declare-fun b!7093280 () Bool)

(declare-fun c!1323808 () Bool)

(assert (=> b!7093280 (= c!1323808 (is-Star!17808 (regOne!36128 r!11554)))))

(declare-fun e!4264043 () (Set Context!13608))

(assert (=> b!7093280 (= e!4264040 e!4264043)))

(declare-fun bm!645320 () Bool)

(declare-fun call!645328 () List!68771)

(declare-fun call!645327 () List!68771)

(assert (=> bm!645320 (= call!645328 call!645327)))

(declare-fun b!7093281 () Bool)

(declare-fun e!4264044 () (Set Context!13608))

(assert (=> b!7093281 (= e!4264044 (set.union call!645324 call!645325))))

(declare-fun bm!645321 () Bool)

(assert (=> bm!645321 (= call!645326 call!645325)))

(declare-fun b!7093282 () Bool)

(assert (=> b!7093282 (= e!4264044 e!4264040)))

(declare-fun c!1323810 () Bool)

(assert (=> b!7093282 (= c!1323810 (is-Concat!26653 (regOne!36128 r!11554)))))

(declare-fun bm!645322 () Bool)

(declare-fun c!1323809 () Bool)

(assert (=> bm!645322 (= call!645327 ($colon$colon!2715 (exprs!7304 (Context!13609 lt!2556679)) (ite (or c!1323809 c!1323810) (regTwo!36128 (regOne!36128 r!11554)) (regOne!36128 r!11554))))))

(declare-fun bm!645323 () Bool)

(declare-fun c!1323807 () Bool)

(assert (=> bm!645323 (= call!645329 (derivationStepZipperDown!2371 (ite c!1323807 (regTwo!36129 (regOne!36128 r!11554)) (ite c!1323809 (regTwo!36128 (regOne!36128 r!11554)) (ite c!1323810 (regOne!36128 (regOne!36128 r!11554)) (reg!18137 (regOne!36128 r!11554))))) (ite (or c!1323807 c!1323809) (Context!13609 lt!2556679) (Context!13609 call!645328)) a!1901))))

(declare-fun b!7093283 () Bool)

(declare-fun e!4264042 () (Set Context!13608))

(assert (=> b!7093283 (= e!4264042 e!4264041)))

(assert (=> b!7093283 (= c!1323807 (is-Union!17808 (regOne!36128 r!11554)))))

(declare-fun b!7093284 () Bool)

(declare-fun e!4264039 () Bool)

(assert (=> b!7093284 (= c!1323809 e!4264039)))

(declare-fun res!2896759 () Bool)

(assert (=> b!7093284 (=> (not res!2896759) (not e!4264039))))

(assert (=> b!7093284 (= res!2896759 (is-Concat!26653 (regOne!36128 r!11554)))))

(assert (=> b!7093284 (= e!4264041 e!4264044)))

(declare-fun d!2217362 () Bool)

(declare-fun c!1323811 () Bool)

(assert (=> d!2217362 (= c!1323811 (and (is-ElementMatch!17808 (regOne!36128 r!11554)) (= (c!1323751 (regOne!36128 r!11554)) a!1901)))))

(assert (=> d!2217362 (= (derivationStepZipperDown!2371 (regOne!36128 r!11554) (Context!13609 lt!2556679) a!1901) e!4264042)))

(declare-fun b!7093279 () Bool)

(assert (=> b!7093279 (= e!4264042 (set.insert (Context!13609 lt!2556679) (as set.empty (Set Context!13608))))))

(declare-fun bm!645324 () Bool)

(assert (=> bm!645324 (= call!645324 (derivationStepZipperDown!2371 (ite c!1323807 (regOne!36129 (regOne!36128 r!11554)) (regOne!36128 (regOne!36128 r!11554))) (ite c!1323807 (Context!13609 lt!2556679) (Context!13609 call!645327)) a!1901))))

(declare-fun b!7093285 () Bool)

(assert (=> b!7093285 (= e!4264043 (as set.empty (Set Context!13608)))))

(declare-fun b!7093286 () Bool)

(assert (=> b!7093286 (= e!4264039 (nullable!7448 (regOne!36128 (regOne!36128 r!11554))))))

(declare-fun b!7093287 () Bool)

(assert (=> b!7093287 (= e!4264043 call!645326)))

(assert (= (and d!2217362 c!1323811) b!7093279))

(assert (= (and d!2217362 (not c!1323811)) b!7093283))

(assert (= (and b!7093283 c!1323807) b!7093278))

(assert (= (and b!7093283 (not c!1323807)) b!7093284))

(assert (= (and b!7093284 res!2896759) b!7093286))

(assert (= (and b!7093284 c!1323809) b!7093281))

(assert (= (and b!7093284 (not c!1323809)) b!7093282))

(assert (= (and b!7093282 c!1323810) b!7093277))

(assert (= (and b!7093282 (not c!1323810)) b!7093280))

(assert (= (and b!7093280 c!1323808) b!7093287))

(assert (= (and b!7093280 (not c!1323808)) b!7093285))

(assert (= (or b!7093277 b!7093287) bm!645320))

(assert (= (or b!7093277 b!7093287) bm!645321))

(assert (= (or b!7093281 bm!645321) bm!645319))

(assert (= (or b!7093281 bm!645320) bm!645322))

(assert (= (or b!7093278 bm!645319) bm!645323))

(assert (= (or b!7093278 b!7093281) bm!645324))

(declare-fun m!7821996 () Bool)

(assert (=> bm!645324 m!7821996))

(declare-fun m!7821998 () Bool)

(assert (=> b!7093279 m!7821998))

(declare-fun m!7822000 () Bool)

(assert (=> bm!645323 m!7822000))

(declare-fun m!7822002 () Bool)

(assert (=> bm!645322 m!7822002))

(assert (=> b!7093286 m!7821932))

(assert (=> b!7093065 d!2217362))

(declare-fun bs!1883702 () Bool)

(declare-fun d!2217366 () Bool)

(assert (= bs!1883702 (and d!2217366 b!7093074)))

(declare-fun lambda!430169 () Int)

(assert (=> bs!1883702 (= lambda!430169 lambda!430134)))

(declare-fun bs!1883703 () Bool)

(assert (= bs!1883703 (and d!2217366 d!2217336)))

(assert (=> bs!1883703 (= lambda!430169 lambda!430164)))

(declare-fun bs!1883704 () Bool)

(assert (= bs!1883704 (and d!2217366 d!2217354)))

(assert (=> bs!1883704 (= lambda!430169 lambda!430168)))

(assert (=> d!2217366 true))

(assert (=> d!2217366 (= (appendTo!879 (derivationStepZipperDown!2371 r!11554 c!9994 a!1901) auxCtx!45) (map!16159 (derivationStepZipperDown!2371 r!11554 c!9994 a!1901) lambda!430169))))

(declare-fun bs!1883705 () Bool)

(assert (= bs!1883705 d!2217366))

(assert (=> bs!1883705 m!7821772))

(declare-fun m!7822004 () Bool)

(assert (=> bs!1883705 m!7822004))

(assert (=> b!7093065 d!2217366))

(declare-fun d!2217368 () Bool)

(assert (=> d!2217368 (= (map!16159 (set.union lt!2556691 lt!2556683) lambda!430134) (choose!54696 (set.union lt!2556691 lt!2556683) lambda!430134))))

(declare-fun bs!1883706 () Bool)

(assert (= bs!1883706 d!2217368))

(declare-fun m!7822006 () Bool)

(assert (=> bs!1883706 m!7822006))

(assert (=> b!7093065 d!2217368))

(assert (=> b!7093065 d!2217322))

(declare-fun bs!1883707 () Bool)

(declare-fun d!2217370 () Bool)

(assert (= bs!1883707 (and d!2217370 b!7093070)))

(declare-fun lambda!430170 () Int)

(assert (=> bs!1883707 (= lambda!430170 lambda!430135)))

(declare-fun bs!1883708 () Bool)

(assert (= bs!1883708 (and d!2217370 d!2217314)))

(assert (=> bs!1883708 (= lambda!430170 lambda!430158)))

(declare-fun bs!1883709 () Bool)

(assert (= bs!1883709 (and d!2217370 d!2217316)))

(assert (=> bs!1883709 (= lambda!430170 lambda!430159)))

(declare-fun bs!1883710 () Bool)

(assert (= bs!1883710 (and d!2217370 d!2217342)))

(assert (=> bs!1883710 (= lambda!430170 lambda!430167)))

(assert (=> d!2217370 (= (derivationStepZipperDown!2371 (regOne!36128 r!11554) (Context!13609 (++!15977 (exprs!7304 lt!2556693) (exprs!7304 auxCtx!45))) a!1901) (appendTo!879 (derivationStepZipperDown!2371 (regOne!36128 r!11554) lt!2556693 a!1901) auxCtx!45))))

(declare-fun lt!2556774 () Unit!162307)

(assert (=> d!2217370 (= lt!2556774 (lemmaConcatPreservesForall!1107 (exprs!7304 lt!2556693) (exprs!7304 auxCtx!45) lambda!430170))))

(declare-fun lt!2556773 () Unit!162307)

(assert (=> d!2217370 (= lt!2556773 (choose!54697 lt!2556693 (regOne!36128 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2217370 (validRegex!9083 (regOne!36128 r!11554))))

(assert (=> d!2217370 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!187 lt!2556693 (regOne!36128 r!11554) a!1901 auxCtx!45) lt!2556773)))

(declare-fun bs!1883711 () Bool)

(assert (= bs!1883711 d!2217370))

(assert (=> bs!1883711 m!7821778))

(declare-fun m!7822008 () Bool)

(assert (=> bs!1883711 m!7822008))

(declare-fun m!7822010 () Bool)

(assert (=> bs!1883711 m!7822010))

(declare-fun m!7822012 () Bool)

(assert (=> bs!1883711 m!7822012))

(declare-fun m!7822014 () Bool)

(assert (=> bs!1883711 m!7822014))

(assert (=> bs!1883711 m!7821778))

(declare-fun m!7822016 () Bool)

(assert (=> bs!1883711 m!7822016))

(declare-fun m!7822018 () Bool)

(assert (=> bs!1883711 m!7822018))

(assert (=> b!7093065 d!2217370))

(declare-fun d!2217372 () Bool)

(assert (=> d!2217372 (= (set.union (map!16159 lt!2556691 lambda!430134) (map!16159 lt!2556683 lambda!430134)) (map!16159 (set.union lt!2556691 lt!2556683) lambda!430134))))

(declare-fun lt!2556777 () Unit!162307)

(declare-fun choose!54698 ((Set Context!13608) (Set Context!13608) Int) Unit!162307)

(assert (=> d!2217372 (= lt!2556777 (choose!54698 lt!2556691 lt!2556683 lambda!430134))))

(assert (=> d!2217372 (= (lemmaMapAssociative!21 lt!2556691 lt!2556683 lambda!430134) lt!2556777)))

(declare-fun bs!1883712 () Bool)

(assert (= bs!1883712 d!2217372))

(assert (=> bs!1883712 m!7821770))

(assert (=> bs!1883712 m!7821766))

(assert (=> bs!1883712 m!7821792))

(declare-fun m!7822020 () Bool)

(assert (=> bs!1883712 m!7822020))

(assert (=> b!7093065 d!2217372))

(declare-fun b!7093310 () Bool)

(declare-fun e!4264061 () Bool)

(declare-fun tp!1948735 () Bool)

(declare-fun tp!1948736 () Bool)

(assert (=> b!7093310 (= e!4264061 (and tp!1948735 tp!1948736))))

(assert (=> b!7093072 (= tp!1948707 e!4264061)))

(assert (= (and b!7093072 (is-Cons!68647 (exprs!7304 auxCtx!45))) b!7093310))

(declare-fun b!7093323 () Bool)

(declare-fun e!4264064 () Bool)

(declare-fun tp!1948747 () Bool)

(assert (=> b!7093323 (= e!4264064 tp!1948747)))

(assert (=> b!7093073 (= tp!1948709 e!4264064)))

(declare-fun b!7093322 () Bool)

(declare-fun tp!1948748 () Bool)

(declare-fun tp!1948751 () Bool)

(assert (=> b!7093322 (= e!4264064 (and tp!1948748 tp!1948751))))

(declare-fun b!7093324 () Bool)

(declare-fun tp!1948749 () Bool)

(declare-fun tp!1948750 () Bool)

(assert (=> b!7093324 (= e!4264064 (and tp!1948749 tp!1948750))))

(declare-fun b!7093321 () Bool)

(assert (=> b!7093321 (= e!4264064 tp_is_empty!44849)))

(assert (= (and b!7093073 (is-ElementMatch!17808 (regOne!36128 r!11554))) b!7093321))

(assert (= (and b!7093073 (is-Concat!26653 (regOne!36128 r!11554))) b!7093322))

(assert (= (and b!7093073 (is-Star!17808 (regOne!36128 r!11554))) b!7093323))

(assert (= (and b!7093073 (is-Union!17808 (regOne!36128 r!11554))) b!7093324))

(declare-fun b!7093327 () Bool)

(declare-fun e!4264065 () Bool)

(declare-fun tp!1948752 () Bool)

(assert (=> b!7093327 (= e!4264065 tp!1948752)))

(assert (=> b!7093073 (= tp!1948703 e!4264065)))

(declare-fun b!7093326 () Bool)

(declare-fun tp!1948753 () Bool)

(declare-fun tp!1948756 () Bool)

(assert (=> b!7093326 (= e!4264065 (and tp!1948753 tp!1948756))))

(declare-fun b!7093328 () Bool)

(declare-fun tp!1948754 () Bool)

(declare-fun tp!1948755 () Bool)

(assert (=> b!7093328 (= e!4264065 (and tp!1948754 tp!1948755))))

(declare-fun b!7093325 () Bool)

(assert (=> b!7093325 (= e!4264065 tp_is_empty!44849)))

(assert (= (and b!7093073 (is-ElementMatch!17808 (regTwo!36128 r!11554))) b!7093325))

(assert (= (and b!7093073 (is-Concat!26653 (regTwo!36128 r!11554))) b!7093326))

(assert (= (and b!7093073 (is-Star!17808 (regTwo!36128 r!11554))) b!7093327))

(assert (= (and b!7093073 (is-Union!17808 (regTwo!36128 r!11554))) b!7093328))

(declare-fun b!7093331 () Bool)

(declare-fun e!4264066 () Bool)

(declare-fun tp!1948757 () Bool)

(assert (=> b!7093331 (= e!4264066 tp!1948757)))

(assert (=> b!7093068 (= tp!1948705 e!4264066)))

(declare-fun b!7093330 () Bool)

(declare-fun tp!1948758 () Bool)

(declare-fun tp!1948761 () Bool)

(assert (=> b!7093330 (= e!4264066 (and tp!1948758 tp!1948761))))

(declare-fun b!7093332 () Bool)

(declare-fun tp!1948759 () Bool)

(declare-fun tp!1948760 () Bool)

(assert (=> b!7093332 (= e!4264066 (and tp!1948759 tp!1948760))))

(declare-fun b!7093329 () Bool)

(assert (=> b!7093329 (= e!4264066 tp_is_empty!44849)))

(assert (= (and b!7093068 (is-ElementMatch!17808 (reg!18137 r!11554))) b!7093329))

(assert (= (and b!7093068 (is-Concat!26653 (reg!18137 r!11554))) b!7093330))

(assert (= (and b!7093068 (is-Star!17808 (reg!18137 r!11554))) b!7093331))

(assert (= (and b!7093068 (is-Union!17808 (reg!18137 r!11554))) b!7093332))

(declare-fun b!7093333 () Bool)

(declare-fun e!4264067 () Bool)

(declare-fun tp!1948762 () Bool)

(declare-fun tp!1948763 () Bool)

(assert (=> b!7093333 (= e!4264067 (and tp!1948762 tp!1948763))))

(assert (=> b!7093069 (= tp!1948706 e!4264067)))

(assert (= (and b!7093069 (is-Cons!68647 (exprs!7304 c!9994))) b!7093333))

(declare-fun b!7093336 () Bool)

(declare-fun e!4264068 () Bool)

(declare-fun tp!1948764 () Bool)

(assert (=> b!7093336 (= e!4264068 tp!1948764)))

(assert (=> b!7093076 (= tp!1948708 e!4264068)))

(declare-fun b!7093335 () Bool)

(declare-fun tp!1948765 () Bool)

(declare-fun tp!1948768 () Bool)

(assert (=> b!7093335 (= e!4264068 (and tp!1948765 tp!1948768))))

(declare-fun b!7093337 () Bool)

(declare-fun tp!1948766 () Bool)

(declare-fun tp!1948767 () Bool)

(assert (=> b!7093337 (= e!4264068 (and tp!1948766 tp!1948767))))

(declare-fun b!7093334 () Bool)

(assert (=> b!7093334 (= e!4264068 tp_is_empty!44849)))

(assert (= (and b!7093076 (is-ElementMatch!17808 (regOne!36129 r!11554))) b!7093334))

(assert (= (and b!7093076 (is-Concat!26653 (regOne!36129 r!11554))) b!7093335))

(assert (= (and b!7093076 (is-Star!17808 (regOne!36129 r!11554))) b!7093336))

(assert (= (and b!7093076 (is-Union!17808 (regOne!36129 r!11554))) b!7093337))

(declare-fun b!7093340 () Bool)

(declare-fun e!4264069 () Bool)

(declare-fun tp!1948769 () Bool)

(assert (=> b!7093340 (= e!4264069 tp!1948769)))

(assert (=> b!7093076 (= tp!1948704 e!4264069)))

(declare-fun b!7093339 () Bool)

(declare-fun tp!1948770 () Bool)

(declare-fun tp!1948773 () Bool)

(assert (=> b!7093339 (= e!4264069 (and tp!1948770 tp!1948773))))

(declare-fun b!7093341 () Bool)

(declare-fun tp!1948771 () Bool)

(declare-fun tp!1948772 () Bool)

(assert (=> b!7093341 (= e!4264069 (and tp!1948771 tp!1948772))))

(declare-fun b!7093338 () Bool)

(assert (=> b!7093338 (= e!4264069 tp_is_empty!44849)))

(assert (= (and b!7093076 (is-ElementMatch!17808 (regTwo!36129 r!11554))) b!7093338))

(assert (= (and b!7093076 (is-Concat!26653 (regTwo!36129 r!11554))) b!7093339))

(assert (= (and b!7093076 (is-Star!17808 (regTwo!36129 r!11554))) b!7093340))

(assert (= (and b!7093076 (is-Union!17808 (regTwo!36129 r!11554))) b!7093341))

(declare-fun b_lambda!271065 () Bool)

(assert (= b_lambda!271059 (or b!7093070 b_lambda!271065)))

(declare-fun bs!1883713 () Bool)

(declare-fun d!2217374 () Bool)

(assert (= bs!1883713 (and d!2217374 b!7093070)))

(assert (=> bs!1883713 (= (dynLambda!28006 lambda!430135 (h!75095 (exprs!7304 c!9994))) (validRegex!9083 (h!75095 (exprs!7304 c!9994))))))

(declare-fun m!7822022 () Bool)

(assert (=> bs!1883713 m!7822022))

(assert (=> b!7093175 d!2217374))

(declare-fun b_lambda!271067 () Bool)

(assert (= b_lambda!271057 (or b!7093070 b_lambda!271067)))

(declare-fun bs!1883714 () Bool)

(declare-fun d!2217376 () Bool)

(assert (= bs!1883714 (and d!2217376 b!7093070)))

(assert (=> bs!1883714 (= (dynLambda!28006 lambda!430135 (h!75095 (exprs!7304 auxCtx!45))) (validRegex!9083 (h!75095 (exprs!7304 auxCtx!45))))))

(declare-fun m!7822024 () Bool)

(assert (=> bs!1883714 m!7822024))

(assert (=> b!7093152 d!2217376))

(push 1)

(assert (not bm!645306))

(assert (not b!7093219))

(assert (not b!7093160))

(assert (not d!2217324))

(assert (not bm!645322))

(assert (not b!7093241))

(assert (not b!7093341))

(assert (not b!7093322))

(assert (not b_lambda!271067))

(assert (not bm!645287))

(assert (not bm!645292))

(assert (not d!2217342))

(assert (not bm!645318))

(assert (not b!7093324))

(assert (not bm!645304))

(assert (not bm!645312))

(assert (not d!2217316))

(assert (not bm!645293))

(assert tp_is_empty!44849)

(assert (not b!7093271))

(assert (not b!7093172))

(assert (not d!2217350))

(assert (not b!7093328))

(assert (not b!7093323))

(assert (not bm!645310))

(assert (not bm!645323))

(assert (not d!2217310))

(assert (not b!7093337))

(assert (not b!7093252))

(assert (not b!7093331))

(assert (not b!7093173))

(assert (not bm!645267))

(assert (not bm!645317))

(assert (not bs!1883714))

(assert (not d!2217366))

(assert (not b!7093260))

(assert (not d!2217322))

(assert (not bm!645300))

(assert (not b!7093339))

(assert (not b!7093336))

(assert (not b!7093330))

(assert (not bs!1883713))

(assert (not d!2217314))

(assert (not b!7093176))

(assert (not d!2217336))

(assert (not bm!645294))

(assert (not d!2217348))

(assert (not bm!645265))

(assert (not b!7093208))

(assert (not d!2217370))

(assert (not bm!645268))

(assert (not bm!645286))

(assert (not b!7093327))

(assert (not bm!645299))

(assert (not bm!645324))

(assert (not b!7093286))

(assert (not d!2217356))

(assert (not b!7093259))

(assert (not d!2217354))

(assert (not bm!645316))

(assert (not b_lambda!271065))

(assert (not b!7093153))

(assert (not b!7093335))

(assert (not d!2217368))

(assert (not bm!645270))

(assert (not b!7093333))

(assert (not bm!645305))

(assert (not b!7093230))

(assert (not d!2217372))

(assert (not b!7093310))

(assert (not d!2217338))

(assert (not b!7093332))

(assert (not b!7093145))

(assert (not bm!645298))

(assert (not bm!645288))

(assert (not b!7093326))

(assert (not bm!645311))

(assert (not b!7093340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

