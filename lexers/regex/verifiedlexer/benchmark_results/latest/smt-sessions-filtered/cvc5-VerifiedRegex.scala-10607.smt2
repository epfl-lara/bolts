; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!545208 () Bool)

(assert start!545208)

(declare-fun b!5151854 () Bool)

(declare-fun e!3211663 () Bool)

(declare-fun e!3211665 () Bool)

(assert (=> b!5151854 (= e!3211663 e!3211665)))

(declare-fun res!2192105 () Bool)

(assert (=> b!5151854 (=> res!2192105 e!3211665)))

(declare-datatypes ((C!29274 0))(
  ( (C!29275 (val!24289 Int)) )
))
(declare-datatypes ((Regex!14504 0))(
  ( (ElementMatch!14504 (c!886915 C!29274)) (Concat!23349 (regOne!29520 Regex!14504) (regTwo!29520 Regex!14504)) (EmptyExpr!14504) (Star!14504 (reg!14833 Regex!14504)) (EmptyLang!14504) (Union!14504 (regOne!29521 Regex!14504) (regTwo!29521 Regex!14504)) )
))
(declare-datatypes ((List!59928 0))(
  ( (Nil!59804) (Cons!59804 (h!66252 Regex!14504) (t!372979 List!59928)) )
))
(declare-datatypes ((Context!7776 0))(
  ( (Context!7777 (exprs!4388 List!59928)) )
))
(declare-fun lt!2121673 () (Set Context!7776))

(declare-fun lambda!257218 () Int)

(declare-fun forall!13988 ((Set Context!7776) Int) Bool)

(assert (=> b!5151854 (= res!2192105 (not (forall!13988 lt!2121673 lambda!257218)))))

(declare-fun lt!2121672 () (Set Context!7776))

(declare-fun lostCauseZipper!1290 ((Set Context!7776)) Bool)

(assert (=> b!5151854 (lostCauseZipper!1290 lt!2121672)))

(declare-fun ctx!100 () Context!7776)

(declare-fun expr!117 () Regex!14504)

(declare-fun a!1296 () C!29274)

(declare-fun derivationStepZipperDown!171 (Regex!14504 Context!7776 C!29274) (Set Context!7776))

(assert (=> b!5151854 (= lt!2121672 (derivationStepZipperDown!171 (regTwo!29520 expr!117) ctx!100 a!1296))))

(declare-datatypes ((Unit!151233 0))(
  ( (Unit!151234) )
))
(declare-fun lt!2121674 () Unit!151233)

(declare-fun lemmaLostCauseFixPointDerivDown!61 (Regex!14504 Context!7776 C!29274) Unit!151233)

(assert (=> b!5151854 (= lt!2121674 (lemmaLostCauseFixPointDerivDown!61 (regTwo!29520 expr!117) ctx!100 a!1296))))

(assert (=> b!5151854 (lostCauseZipper!1290 lt!2121673)))

(declare-fun lt!2121675 () Context!7776)

(assert (=> b!5151854 (= lt!2121673 (derivationStepZipperDown!171 (regOne!29520 expr!117) lt!2121675 a!1296))))

(declare-fun lt!2121671 () Unit!151233)

(assert (=> b!5151854 (= lt!2121671 (lemmaLostCauseFixPointDerivDown!61 (regOne!29520 expr!117) lt!2121675 a!1296))))

(declare-fun $colon$colon!1226 (List!59928 Regex!14504) List!59928)

(assert (=> b!5151854 (= lt!2121675 (Context!7777 ($colon$colon!1226 (exprs!4388 ctx!100) (regTwo!29520 expr!117))))))

(declare-fun b!5151855 () Bool)

(declare-fun res!2192107 () Bool)

(declare-fun e!3211668 () Bool)

(assert (=> b!5151855 (=> (not res!2192107) (not e!3211668))))

(declare-fun nullable!4860 (Regex!14504) Bool)

(assert (=> b!5151855 (= res!2192107 (nullable!4860 (regOne!29520 expr!117)))))

(declare-fun b!5151856 () Bool)

(declare-fun e!3211666 () Bool)

(declare-fun tp!1440776 () Bool)

(assert (=> b!5151856 (= e!3211666 tp!1440776)))

(declare-fun b!5151857 () Bool)

(assert (=> b!5151857 (= e!3211665 (forall!13988 lt!2121672 lambda!257218))))

(declare-fun b!5151858 () Bool)

(declare-fun e!3211667 () Bool)

(declare-fun tp!1440775 () Bool)

(assert (=> b!5151858 (= e!3211667 tp!1440775)))

(declare-fun b!5151859 () Bool)

(declare-fun tp_is_empty!38157 () Bool)

(assert (=> b!5151859 (= e!3211667 tp_is_empty!38157)))

(declare-fun b!5151860 () Bool)

(assert (=> b!5151860 (= e!3211668 (not e!3211663))))

(declare-fun res!2192109 () Bool)

(assert (=> b!5151860 (=> res!2192109 e!3211663)))

(declare-fun validRegex!6359 (Regex!14504) Bool)

(assert (=> b!5151860 (= res!2192109 (not (validRegex!6359 (regTwo!29520 expr!117))))))

(declare-fun lostCause!1560 (Regex!14504) Bool)

(assert (=> b!5151860 (not (lostCause!1560 (regOne!29520 expr!117)))))

(declare-fun lt!2121670 () Unit!151233)

(declare-fun lemmaNullableThenNotLostCause!93 (Regex!14504) Unit!151233)

(assert (=> b!5151860 (= lt!2121670 (lemmaNullableThenNotLostCause!93 (regOne!29520 expr!117)))))

(declare-fun b!5151861 () Bool)

(declare-fun res!2192103 () Bool)

(assert (=> b!5151861 (=> (not res!2192103) (not e!3211668))))

(assert (=> b!5151861 (= res!2192103 (and (or (not (is-ElementMatch!14504 expr!117)) (not (= (c!886915 expr!117) a!1296))) (not (is-Union!14504 expr!117)) (is-Concat!23349 expr!117)))))

(declare-fun b!5151862 () Bool)

(declare-fun tp!1440777 () Bool)

(declare-fun tp!1440772 () Bool)

(assert (=> b!5151862 (= e!3211667 (and tp!1440777 tp!1440772))))

(declare-fun b!5151863 () Bool)

(declare-fun e!3211664 () Bool)

(declare-fun lostCause!1561 (Context!7776) Bool)

(assert (=> b!5151863 (= e!3211664 (lostCause!1561 ctx!100))))

(declare-fun res!2192104 () Bool)

(assert (=> start!545208 (=> (not res!2192104) (not e!3211668))))

(assert (=> start!545208 (= res!2192104 (validRegex!6359 expr!117))))

(assert (=> start!545208 e!3211668))

(assert (=> start!545208 e!3211667))

(declare-fun inv!79442 (Context!7776) Bool)

(assert (=> start!545208 (and (inv!79442 ctx!100) e!3211666)))

(assert (=> start!545208 tp_is_empty!38157))

(declare-fun b!5151864 () Bool)

(declare-fun res!2192108 () Bool)

(assert (=> b!5151864 (=> (not res!2192108) (not e!3211668))))

(assert (=> b!5151864 (= res!2192108 e!3211664)))

(declare-fun res!2192106 () Bool)

(assert (=> b!5151864 (=> res!2192106 e!3211664)))

(assert (=> b!5151864 (= res!2192106 (lostCause!1560 expr!117))))

(declare-fun b!5151865 () Bool)

(declare-fun tp!1440773 () Bool)

(declare-fun tp!1440774 () Bool)

(assert (=> b!5151865 (= e!3211667 (and tp!1440773 tp!1440774))))

(assert (= (and start!545208 res!2192104) b!5151864))

(assert (= (and b!5151864 (not res!2192106)) b!5151863))

(assert (= (and b!5151864 res!2192108) b!5151861))

(assert (= (and b!5151861 res!2192103) b!5151855))

(assert (= (and b!5151855 res!2192107) b!5151860))

(assert (= (and b!5151860 (not res!2192109)) b!5151854))

(assert (= (and b!5151854 (not res!2192105)) b!5151857))

(assert (= (and start!545208 (is-ElementMatch!14504 expr!117)) b!5151859))

(assert (= (and start!545208 (is-Concat!23349 expr!117)) b!5151865))

(assert (= (and start!545208 (is-Star!14504 expr!117)) b!5151858))

(assert (= (and start!545208 (is-Union!14504 expr!117)) b!5151862))

(assert (= start!545208 b!5151856))

(declare-fun m!6209152 () Bool)

(assert (=> b!5151863 m!6209152))

(declare-fun m!6209154 () Bool)

(assert (=> b!5151857 m!6209154))

(declare-fun m!6209156 () Bool)

(assert (=> b!5151860 m!6209156))

(declare-fun m!6209158 () Bool)

(assert (=> b!5151860 m!6209158))

(declare-fun m!6209160 () Bool)

(assert (=> b!5151860 m!6209160))

(declare-fun m!6209162 () Bool)

(assert (=> b!5151854 m!6209162))

(declare-fun m!6209164 () Bool)

(assert (=> b!5151854 m!6209164))

(declare-fun m!6209166 () Bool)

(assert (=> b!5151854 m!6209166))

(declare-fun m!6209168 () Bool)

(assert (=> b!5151854 m!6209168))

(declare-fun m!6209170 () Bool)

(assert (=> b!5151854 m!6209170))

(declare-fun m!6209172 () Bool)

(assert (=> b!5151854 m!6209172))

(declare-fun m!6209174 () Bool)

(assert (=> b!5151854 m!6209174))

(declare-fun m!6209176 () Bool)

(assert (=> b!5151854 m!6209176))

(declare-fun m!6209178 () Bool)

(assert (=> start!545208 m!6209178))

(declare-fun m!6209180 () Bool)

(assert (=> start!545208 m!6209180))

(declare-fun m!6209182 () Bool)

(assert (=> b!5151864 m!6209182))

(declare-fun m!6209184 () Bool)

(assert (=> b!5151855 m!6209184))

(push 1)

(assert (not b!5151860))

(assert (not start!545208))

(assert (not b!5151855))

(assert (not b!5151858))

(assert (not b!5151857))

(assert (not b!5151862))

(assert tp_is_empty!38157)

(assert (not b!5151854))

(assert (not b!5151865))

(assert (not b!5151864))

(assert (not b!5151863))

(assert (not b!5151856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1664412 () Bool)

(declare-fun lostCauseFct!379 (Regex!14504) Bool)

(assert (=> d!1664412 (= (lostCause!1560 expr!117) (lostCauseFct!379 expr!117))))

(declare-fun bs!1201847 () Bool)

(assert (= bs!1201847 d!1664412))

(declare-fun m!6209220 () Bool)

(assert (=> bs!1201847 m!6209220))

(assert (=> b!5151864 d!1664412))

(declare-fun bm!360695 () Bool)

(declare-fun call!360702 () Bool)

(declare-fun call!360700 () Bool)

(assert (=> bm!360695 (= call!360702 call!360700)))

(declare-fun b!5151920 () Bool)

(declare-fun e!3211702 () Bool)

(declare-fun e!3211706 () Bool)

(assert (=> b!5151920 (= e!3211702 e!3211706)))

(declare-fun res!2192145 () Bool)

(assert (=> b!5151920 (= res!2192145 (not (nullable!4860 (reg!14833 (regTwo!29520 expr!117)))))))

(assert (=> b!5151920 (=> (not res!2192145) (not e!3211706))))

(declare-fun b!5151921 () Bool)

(declare-fun e!3211704 () Bool)

(assert (=> b!5151921 (= e!3211702 e!3211704)))

(declare-fun c!886923 () Bool)

(assert (=> b!5151921 (= c!886923 (is-Union!14504 (regTwo!29520 expr!117)))))

(declare-fun b!5151922 () Bool)

(declare-fun e!3211707 () Bool)

(declare-fun call!360701 () Bool)

(assert (=> b!5151922 (= e!3211707 call!360701)))

(declare-fun b!5151923 () Bool)

(declare-fun e!3211705 () Bool)

(assert (=> b!5151923 (= e!3211705 call!360701)))

(declare-fun b!5151924 () Bool)

(declare-fun res!2192142 () Bool)

(assert (=> b!5151924 (=> (not res!2192142) (not e!3211707))))

(assert (=> b!5151924 (= res!2192142 call!360702)))

(assert (=> b!5151924 (= e!3211704 e!3211707)))

(declare-fun b!5151925 () Bool)

(declare-fun res!2192144 () Bool)

(declare-fun e!3211701 () Bool)

(assert (=> b!5151925 (=> res!2192144 e!3211701)))

(assert (=> b!5151925 (= res!2192144 (not (is-Concat!23349 (regTwo!29520 expr!117))))))

(assert (=> b!5151925 (= e!3211704 e!3211701)))

(declare-fun b!5151926 () Bool)

(declare-fun e!3211703 () Bool)

(assert (=> b!5151926 (= e!3211703 e!3211702)))

(declare-fun c!886924 () Bool)

(assert (=> b!5151926 (= c!886924 (is-Star!14504 (regTwo!29520 expr!117)))))

(declare-fun b!5151927 () Bool)

(assert (=> b!5151927 (= e!3211701 e!3211705)))

(declare-fun res!2192141 () Bool)

(assert (=> b!5151927 (=> (not res!2192141) (not e!3211705))))

(assert (=> b!5151927 (= res!2192141 call!360702)))

(declare-fun b!5151928 () Bool)

(assert (=> b!5151928 (= e!3211706 call!360700)))

(declare-fun bm!360696 () Bool)

(assert (=> bm!360696 (= call!360700 (validRegex!6359 (ite c!886924 (reg!14833 (regTwo!29520 expr!117)) (ite c!886923 (regOne!29521 (regTwo!29520 expr!117)) (regOne!29520 (regTwo!29520 expr!117))))))))

(declare-fun d!1664414 () Bool)

(declare-fun res!2192143 () Bool)

(assert (=> d!1664414 (=> res!2192143 e!3211703)))

(assert (=> d!1664414 (= res!2192143 (is-ElementMatch!14504 (regTwo!29520 expr!117)))))

(assert (=> d!1664414 (= (validRegex!6359 (regTwo!29520 expr!117)) e!3211703)))

(declare-fun bm!360697 () Bool)

(assert (=> bm!360697 (= call!360701 (validRegex!6359 (ite c!886923 (regTwo!29521 (regTwo!29520 expr!117)) (regTwo!29520 (regTwo!29520 expr!117)))))))

(assert (= (and d!1664414 (not res!2192143)) b!5151926))

(assert (= (and b!5151926 c!886924) b!5151920))

(assert (= (and b!5151926 (not c!886924)) b!5151921))

(assert (= (and b!5151920 res!2192145) b!5151928))

(assert (= (and b!5151921 c!886923) b!5151924))

(assert (= (and b!5151921 (not c!886923)) b!5151925))

(assert (= (and b!5151924 res!2192142) b!5151922))

(assert (= (and b!5151925 (not res!2192144)) b!5151927))

(assert (= (and b!5151927 res!2192141) b!5151923))

(assert (= (or b!5151922 b!5151923) bm!360697))

(assert (= (or b!5151924 b!5151927) bm!360695))

(assert (= (or b!5151928 bm!360695) bm!360696))

(declare-fun m!6209222 () Bool)

(assert (=> b!5151920 m!6209222))

(declare-fun m!6209224 () Bool)

(assert (=> bm!360696 m!6209224))

(declare-fun m!6209226 () Bool)

(assert (=> bm!360697 m!6209226))

(assert (=> b!5151860 d!1664414))

(declare-fun d!1664416 () Bool)

(assert (=> d!1664416 (= (lostCause!1560 (regOne!29520 expr!117)) (lostCauseFct!379 (regOne!29520 expr!117)))))

(declare-fun bs!1201848 () Bool)

(assert (= bs!1201848 d!1664416))

(declare-fun m!6209228 () Bool)

(assert (=> bs!1201848 m!6209228))

(assert (=> b!5151860 d!1664416))

(declare-fun d!1664418 () Bool)

(assert (=> d!1664418 (not (lostCause!1560 (regOne!29520 expr!117)))))

(declare-fun lt!2121696 () Unit!151233)

(declare-fun choose!38116 (Regex!14504) Unit!151233)

(assert (=> d!1664418 (= lt!2121696 (choose!38116 (regOne!29520 expr!117)))))

(assert (=> d!1664418 (validRegex!6359 (regOne!29520 expr!117))))

(assert (=> d!1664418 (= (lemmaNullableThenNotLostCause!93 (regOne!29520 expr!117)) lt!2121696)))

(declare-fun bs!1201849 () Bool)

(assert (= bs!1201849 d!1664418))

(assert (=> bs!1201849 m!6209158))

(declare-fun m!6209230 () Bool)

(assert (=> bs!1201849 m!6209230))

(declare-fun m!6209232 () Bool)

(assert (=> bs!1201849 m!6209232))

(assert (=> b!5151860 d!1664418))

(declare-fun d!1664420 () Bool)

(declare-fun nullableFct!1338 (Regex!14504) Bool)

(assert (=> d!1664420 (= (nullable!4860 (regOne!29520 expr!117)) (nullableFct!1338 (regOne!29520 expr!117)))))

(declare-fun bs!1201850 () Bool)

(assert (= bs!1201850 d!1664420))

(declare-fun m!6209234 () Bool)

(assert (=> bs!1201850 m!6209234))

(assert (=> b!5151855 d!1664420))

(declare-fun b!5151951 () Bool)

(declare-fun e!3211723 () (Set Context!7776))

(declare-fun e!3211725 () (Set Context!7776))

(assert (=> b!5151951 (= e!3211723 e!3211725)))

(declare-fun c!886935 () Bool)

(assert (=> b!5151951 (= c!886935 (is-Union!14504 (regTwo!29520 expr!117)))))

(declare-fun b!5151952 () Bool)

(declare-fun call!360719 () (Set Context!7776))

(declare-fun call!360717 () (Set Context!7776))

(assert (=> b!5151952 (= e!3211725 (set.union call!360719 call!360717))))

(declare-fun b!5151953 () Bool)

(assert (=> b!5151953 (= e!3211723 (set.insert ctx!100 (as set.empty (Set Context!7776))))))

(declare-fun b!5151954 () Bool)

(declare-fun e!3211724 () (Set Context!7776))

(assert (=> b!5151954 (= e!3211724 (as set.empty (Set Context!7776)))))

(declare-fun bm!360710 () Bool)

(declare-fun c!886937 () Bool)

(declare-fun call!360716 () List!59928)

(declare-fun c!886938 () Bool)

(assert (=> bm!360710 (= call!360719 (derivationStepZipperDown!171 (ite c!886935 (regOne!29521 (regTwo!29520 expr!117)) (ite c!886937 (regTwo!29520 (regTwo!29520 expr!117)) (ite c!886938 (regOne!29520 (regTwo!29520 expr!117)) (reg!14833 (regTwo!29520 expr!117))))) (ite (or c!886935 c!886937) ctx!100 (Context!7777 call!360716)) a!1296))))

(declare-fun call!360720 () List!59928)

(declare-fun bm!360711 () Bool)

(assert (=> bm!360711 (= call!360720 ($colon$colon!1226 (exprs!4388 ctx!100) (ite (or c!886937 c!886938) (regTwo!29520 (regTwo!29520 expr!117)) (regTwo!29520 expr!117))))))

(declare-fun bm!360712 () Bool)

(declare-fun call!360718 () (Set Context!7776))

(assert (=> bm!360712 (= call!360718 call!360719)))

(declare-fun b!5151955 () Bool)

(declare-fun call!360715 () (Set Context!7776))

(assert (=> b!5151955 (= e!3211724 call!360715)))

(declare-fun d!1664422 () Bool)

(declare-fun c!886936 () Bool)

(assert (=> d!1664422 (= c!886936 (and (is-ElementMatch!14504 (regTwo!29520 expr!117)) (= (c!886915 (regTwo!29520 expr!117)) a!1296)))))

(assert (=> d!1664422 (= (derivationStepZipperDown!171 (regTwo!29520 expr!117) ctx!100 a!1296) e!3211723)))

(declare-fun b!5151956 () Bool)

(declare-fun e!3211720 () (Set Context!7776))

(assert (=> b!5151956 (= e!3211720 (set.union call!360717 call!360718))))

(declare-fun bm!360713 () Bool)

(assert (=> bm!360713 (= call!360715 call!360718)))

(declare-fun b!5151957 () Bool)

(declare-fun e!3211722 () (Set Context!7776))

(assert (=> b!5151957 (= e!3211720 e!3211722)))

(assert (=> b!5151957 (= c!886938 (is-Concat!23349 (regTwo!29520 expr!117)))))

(declare-fun b!5151958 () Bool)

(assert (=> b!5151958 (= e!3211722 call!360715)))

(declare-fun b!5151959 () Bool)

(declare-fun c!886939 () Bool)

(assert (=> b!5151959 (= c!886939 (is-Star!14504 (regTwo!29520 expr!117)))))

(assert (=> b!5151959 (= e!3211722 e!3211724)))

(declare-fun b!5151960 () Bool)

(declare-fun e!3211721 () Bool)

(assert (=> b!5151960 (= e!3211721 (nullable!4860 (regOne!29520 (regTwo!29520 expr!117))))))

(declare-fun b!5151961 () Bool)

(assert (=> b!5151961 (= c!886937 e!3211721)))

(declare-fun res!2192148 () Bool)

(assert (=> b!5151961 (=> (not res!2192148) (not e!3211721))))

(assert (=> b!5151961 (= res!2192148 (is-Concat!23349 (regTwo!29520 expr!117)))))

(assert (=> b!5151961 (= e!3211725 e!3211720)))

(declare-fun bm!360714 () Bool)

(assert (=> bm!360714 (= call!360716 call!360720)))

(declare-fun bm!360715 () Bool)

(assert (=> bm!360715 (= call!360717 (derivationStepZipperDown!171 (ite c!886935 (regTwo!29521 (regTwo!29520 expr!117)) (regOne!29520 (regTwo!29520 expr!117))) (ite c!886935 ctx!100 (Context!7777 call!360720)) a!1296))))

(assert (= (and d!1664422 c!886936) b!5151953))

(assert (= (and d!1664422 (not c!886936)) b!5151951))

(assert (= (and b!5151951 c!886935) b!5151952))

(assert (= (and b!5151951 (not c!886935)) b!5151961))

(assert (= (and b!5151961 res!2192148) b!5151960))

(assert (= (and b!5151961 c!886937) b!5151956))

(assert (= (and b!5151961 (not c!886937)) b!5151957))

(assert (= (and b!5151957 c!886938) b!5151958))

(assert (= (and b!5151957 (not c!886938)) b!5151959))

(assert (= (and b!5151959 c!886939) b!5151955))

(assert (= (and b!5151959 (not c!886939)) b!5151954))

(assert (= (or b!5151958 b!5151955) bm!360714))

(assert (= (or b!5151958 b!5151955) bm!360713))

(assert (= (or b!5151956 bm!360714) bm!360711))

(assert (= (or b!5151956 bm!360713) bm!360712))

(assert (= (or b!5151952 b!5151956) bm!360715))

(assert (= (or b!5151952 bm!360712) bm!360710))

(declare-fun m!6209238 () Bool)

(assert (=> bm!360711 m!6209238))

(declare-fun m!6209240 () Bool)

(assert (=> bm!360715 m!6209240))

(declare-fun m!6209242 () Bool)

(assert (=> bm!360710 m!6209242))

(declare-fun m!6209244 () Bool)

(assert (=> b!5151953 m!6209244))

(declare-fun m!6209246 () Bool)

(assert (=> b!5151960 m!6209246))

(assert (=> b!5151854 d!1664422))

(declare-fun bs!1201852 () Bool)

(declare-fun d!1664428 () Bool)

(assert (= bs!1201852 (and d!1664428 b!5151854)))

(declare-fun lambda!257234 () Int)

(assert (=> bs!1201852 (= lambda!257234 lambda!257218)))

(declare-fun bs!1201853 () Bool)

(declare-fun b!5151993 () Bool)

(assert (= bs!1201853 (and b!5151993 b!5151854)))

(declare-fun lambda!257235 () Int)

(assert (=> bs!1201853 (not (= lambda!257235 lambda!257218))))

(declare-fun bs!1201854 () Bool)

(assert (= bs!1201854 (and b!5151993 d!1664428)))

(assert (=> bs!1201854 (not (= lambda!257235 lambda!257234))))

(declare-fun bs!1201855 () Bool)

(declare-fun b!5151994 () Bool)

(assert (= bs!1201855 (and b!5151994 b!5151854)))

(declare-fun lambda!257236 () Int)

(assert (=> bs!1201855 (not (= lambda!257236 lambda!257218))))

(declare-fun bs!1201856 () Bool)

(assert (= bs!1201856 (and b!5151994 d!1664428)))

(assert (=> bs!1201856 (not (= lambda!257236 lambda!257234))))

(declare-fun bs!1201857 () Bool)

(assert (= bs!1201857 (and b!5151994 b!5151993)))

(assert (=> bs!1201857 (= lambda!257236 lambda!257235)))

(declare-fun e!3211753 () Unit!151233)

(declare-fun Unit!151237 () Unit!151233)

(assert (=> b!5151994 (= e!3211753 Unit!151237)))

(declare-datatypes ((List!59930 0))(
  ( (Nil!59806) (Cons!59806 (h!66254 Context!7776) (t!372982 List!59930)) )
))
(declare-fun lt!2121715 () List!59930)

(declare-fun call!360735 () List!59930)

(assert (=> b!5151994 (= lt!2121715 call!360735)))

(declare-fun lt!2121714 () Unit!151233)

(declare-fun lemmaForallThenNotExists!418 (List!59930 Int) Unit!151233)

(assert (=> b!5151994 (= lt!2121714 (lemmaForallThenNotExists!418 lt!2121715 lambda!257234))))

(declare-fun call!360734 () Bool)

(assert (=> b!5151994 (not call!360734)))

(declare-fun lt!2121719 () Unit!151233)

(assert (=> b!5151994 (= lt!2121719 lt!2121714)))

(declare-fun bm!360730 () Bool)

(declare-fun toList!8404 ((Set Context!7776)) List!59930)

(assert (=> bm!360730 (= call!360735 (toList!8404 lt!2121673))))

(declare-fun lt!2121717 () List!59930)

(declare-fun bm!360729 () Bool)

(declare-fun c!886956 () Bool)

(declare-fun exists!1842 (List!59930 Int) Bool)

(assert (=> bm!360729 (= call!360734 (exists!1842 (ite c!886956 lt!2121717 lt!2121715) (ite c!886956 lambda!257235 lambda!257236)))))

(declare-fun Unit!151238 () Unit!151233)

(assert (=> b!5151993 (= e!3211753 Unit!151238)))

(assert (=> b!5151993 (= lt!2121717 call!360735)))

(declare-fun lt!2121716 () Unit!151233)

(declare-fun lemmaNotForallThenExists!451 (List!59930 Int) Unit!151233)

(assert (=> b!5151993 (= lt!2121716 (lemmaNotForallThenExists!451 lt!2121717 lambda!257234))))

(assert (=> b!5151993 call!360734))

(declare-fun lt!2121718 () Unit!151233)

(assert (=> b!5151993 (= lt!2121718 lt!2121716)))

(declare-fun lt!2121713 () Bool)

(declare-datatypes ((List!59931 0))(
  ( (Nil!59807) (Cons!59807 (h!66255 C!29274) (t!372983 List!59931)) )
))
(declare-datatypes ((Option!14808 0))(
  ( (None!14807) (Some!14807 (v!50836 List!59931)) )
))
(declare-fun isEmpty!32069 (Option!14808) Bool)

(declare-fun getLanguageWitness!973 ((Set Context!7776)) Option!14808)

(assert (=> d!1664428 (= lt!2121713 (isEmpty!32069 (getLanguageWitness!973 lt!2121673)))))

(assert (=> d!1664428 (= lt!2121713 (forall!13988 lt!2121673 lambda!257234))))

(declare-fun lt!2121720 () Unit!151233)

(assert (=> d!1664428 (= lt!2121720 e!3211753)))

(assert (=> d!1664428 (= c!886956 (not (forall!13988 lt!2121673 lambda!257234)))))

(assert (=> d!1664428 (= (lostCauseZipper!1290 lt!2121673) lt!2121713)))

(assert (= (and d!1664428 c!886956) b!5151993))

(assert (= (and d!1664428 (not c!886956)) b!5151994))

(assert (= (or b!5151993 b!5151994) bm!360729))

(assert (= (or b!5151993 b!5151994) bm!360730))

(declare-fun m!6209254 () Bool)

(assert (=> b!5151994 m!6209254))

(declare-fun m!6209256 () Bool)

(assert (=> d!1664428 m!6209256))

(assert (=> d!1664428 m!6209256))

(declare-fun m!6209258 () Bool)

(assert (=> d!1664428 m!6209258))

(declare-fun m!6209260 () Bool)

(assert (=> d!1664428 m!6209260))

(assert (=> d!1664428 m!6209260))

(declare-fun m!6209262 () Bool)

(assert (=> bm!360729 m!6209262))

(declare-fun m!6209264 () Bool)

(assert (=> b!5151993 m!6209264))

(declare-fun m!6209266 () Bool)

(assert (=> bm!360730 m!6209266))

(assert (=> b!5151854 d!1664428))

(declare-fun d!1664432 () Bool)

(declare-fun lt!2121723 () Bool)

(declare-fun forall!13990 (List!59930 Int) Bool)

(assert (=> d!1664432 (= lt!2121723 (forall!13990 (toList!8404 lt!2121673) lambda!257218))))

(declare-fun choose!38117 ((Set Context!7776) Int) Bool)

(assert (=> d!1664432 (= lt!2121723 (choose!38117 lt!2121673 lambda!257218))))

(assert (=> d!1664432 (= (forall!13988 lt!2121673 lambda!257218) lt!2121723)))

(declare-fun bs!1201859 () Bool)

(assert (= bs!1201859 d!1664432))

(assert (=> bs!1201859 m!6209266))

(assert (=> bs!1201859 m!6209266))

(declare-fun m!6209270 () Bool)

(assert (=> bs!1201859 m!6209270))

(declare-fun m!6209272 () Bool)

(assert (=> bs!1201859 m!6209272))

(assert (=> b!5151854 d!1664432))

(declare-fun b!5152004 () Bool)

(declare-fun e!3211764 () (Set Context!7776))

(declare-fun e!3211766 () (Set Context!7776))

(assert (=> b!5152004 (= e!3211764 e!3211766)))

(declare-fun c!886959 () Bool)

(assert (=> b!5152004 (= c!886959 (is-Union!14504 (regOne!29520 expr!117)))))

(declare-fun b!5152005 () Bool)

(declare-fun call!360743 () (Set Context!7776))

(declare-fun call!360741 () (Set Context!7776))

(assert (=> b!5152005 (= e!3211766 (set.union call!360743 call!360741))))

(declare-fun b!5152006 () Bool)

(assert (=> b!5152006 (= e!3211764 (set.insert lt!2121675 (as set.empty (Set Context!7776))))))

(declare-fun b!5152007 () Bool)

(declare-fun e!3211765 () (Set Context!7776))

(assert (=> b!5152007 (= e!3211765 (as set.empty (Set Context!7776)))))

(declare-fun bm!360734 () Bool)

(declare-fun c!886961 () Bool)

(declare-fun c!886962 () Bool)

(declare-fun call!360740 () List!59928)

(assert (=> bm!360734 (= call!360743 (derivationStepZipperDown!171 (ite c!886959 (regOne!29521 (regOne!29520 expr!117)) (ite c!886961 (regTwo!29520 (regOne!29520 expr!117)) (ite c!886962 (regOne!29520 (regOne!29520 expr!117)) (reg!14833 (regOne!29520 expr!117))))) (ite (or c!886959 c!886961) lt!2121675 (Context!7777 call!360740)) a!1296))))

(declare-fun call!360744 () List!59928)

(declare-fun bm!360735 () Bool)

(assert (=> bm!360735 (= call!360744 ($colon$colon!1226 (exprs!4388 lt!2121675) (ite (or c!886961 c!886962) (regTwo!29520 (regOne!29520 expr!117)) (regOne!29520 expr!117))))))

(declare-fun bm!360736 () Bool)

(declare-fun call!360742 () (Set Context!7776))

(assert (=> bm!360736 (= call!360742 call!360743)))

(declare-fun b!5152008 () Bool)

(declare-fun call!360739 () (Set Context!7776))

(assert (=> b!5152008 (= e!3211765 call!360739)))

(declare-fun d!1664436 () Bool)

(declare-fun c!886960 () Bool)

(assert (=> d!1664436 (= c!886960 (and (is-ElementMatch!14504 (regOne!29520 expr!117)) (= (c!886915 (regOne!29520 expr!117)) a!1296)))))

(assert (=> d!1664436 (= (derivationStepZipperDown!171 (regOne!29520 expr!117) lt!2121675 a!1296) e!3211764)))

(declare-fun b!5152009 () Bool)

(declare-fun e!3211761 () (Set Context!7776))

(assert (=> b!5152009 (= e!3211761 (set.union call!360741 call!360742))))

(declare-fun bm!360737 () Bool)

(assert (=> bm!360737 (= call!360739 call!360742)))

(declare-fun b!5152010 () Bool)

(declare-fun e!3211763 () (Set Context!7776))

(assert (=> b!5152010 (= e!3211761 e!3211763)))

(assert (=> b!5152010 (= c!886962 (is-Concat!23349 (regOne!29520 expr!117)))))

(declare-fun b!5152011 () Bool)

(assert (=> b!5152011 (= e!3211763 call!360739)))

(declare-fun b!5152012 () Bool)

(declare-fun c!886963 () Bool)

(assert (=> b!5152012 (= c!886963 (is-Star!14504 (regOne!29520 expr!117)))))

(assert (=> b!5152012 (= e!3211763 e!3211765)))

(declare-fun b!5152013 () Bool)

(declare-fun e!3211762 () Bool)

(assert (=> b!5152013 (= e!3211762 (nullable!4860 (regOne!29520 (regOne!29520 expr!117))))))

(declare-fun b!5152014 () Bool)

(assert (=> b!5152014 (= c!886961 e!3211762)))

(declare-fun res!2192169 () Bool)

(assert (=> b!5152014 (=> (not res!2192169) (not e!3211762))))

(assert (=> b!5152014 (= res!2192169 (is-Concat!23349 (regOne!29520 expr!117)))))

(assert (=> b!5152014 (= e!3211766 e!3211761)))

(declare-fun bm!360738 () Bool)

(assert (=> bm!360738 (= call!360740 call!360744)))

(declare-fun bm!360739 () Bool)

(assert (=> bm!360739 (= call!360741 (derivationStepZipperDown!171 (ite c!886959 (regTwo!29521 (regOne!29520 expr!117)) (regOne!29520 (regOne!29520 expr!117))) (ite c!886959 lt!2121675 (Context!7777 call!360744)) a!1296))))

(assert (= (and d!1664436 c!886960) b!5152006))

(assert (= (and d!1664436 (not c!886960)) b!5152004))

(assert (= (and b!5152004 c!886959) b!5152005))

(assert (= (and b!5152004 (not c!886959)) b!5152014))

(assert (= (and b!5152014 res!2192169) b!5152013))

(assert (= (and b!5152014 c!886961) b!5152009))

(assert (= (and b!5152014 (not c!886961)) b!5152010))

(assert (= (and b!5152010 c!886962) b!5152011))

(assert (= (and b!5152010 (not c!886962)) b!5152012))

(assert (= (and b!5152012 c!886963) b!5152008))

(assert (= (and b!5152012 (not c!886963)) b!5152007))

(assert (= (or b!5152011 b!5152008) bm!360738))

(assert (= (or b!5152011 b!5152008) bm!360737))

(assert (= (or b!5152009 bm!360738) bm!360735))

(assert (= (or b!5152009 bm!360737) bm!360736))

(assert (= (or b!5152005 b!5152009) bm!360739))

(assert (= (or b!5152005 bm!360736) bm!360734))

(declare-fun m!6209274 () Bool)

(assert (=> bm!360735 m!6209274))

(declare-fun m!6209276 () Bool)

(assert (=> bm!360739 m!6209276))

(declare-fun m!6209278 () Bool)

(assert (=> bm!360734 m!6209278))

(declare-fun m!6209280 () Bool)

(assert (=> b!5152006 m!6209280))

(declare-fun m!6209282 () Bool)

(assert (=> b!5152013 m!6209282))

(assert (=> b!5151854 d!1664436))

(declare-fun d!1664438 () Bool)

(assert (=> d!1664438 (lostCauseZipper!1290 (derivationStepZipperDown!171 (regOne!29520 expr!117) lt!2121675 a!1296))))

(declare-fun lt!2121728 () Unit!151233)

(declare-fun choose!38118 (Regex!14504 Context!7776 C!29274) Unit!151233)

(assert (=> d!1664438 (= lt!2121728 (choose!38118 (regOne!29520 expr!117) lt!2121675 a!1296))))

(assert (=> d!1664438 (validRegex!6359 (regOne!29520 expr!117))))

(assert (=> d!1664438 (= (lemmaLostCauseFixPointDerivDown!61 (regOne!29520 expr!117) lt!2121675 a!1296) lt!2121728)))

(declare-fun bs!1201861 () Bool)

(assert (= bs!1201861 d!1664438))

(assert (=> bs!1201861 m!6209164))

(assert (=> bs!1201861 m!6209164))

(declare-fun m!6209292 () Bool)

(assert (=> bs!1201861 m!6209292))

(declare-fun m!6209294 () Bool)

(assert (=> bs!1201861 m!6209294))

(assert (=> bs!1201861 m!6209232))

(assert (=> b!5151854 d!1664438))

(declare-fun bs!1201862 () Bool)

(declare-fun d!1664444 () Bool)

(assert (= bs!1201862 (and d!1664444 b!5151854)))

(declare-fun lambda!257240 () Int)

(assert (=> bs!1201862 (= lambda!257240 lambda!257218)))

(declare-fun bs!1201863 () Bool)

(assert (= bs!1201863 (and d!1664444 d!1664428)))

(assert (=> bs!1201863 (= lambda!257240 lambda!257234)))

(declare-fun bs!1201864 () Bool)

(assert (= bs!1201864 (and d!1664444 b!5151993)))

(assert (=> bs!1201864 (not (= lambda!257240 lambda!257235))))

(declare-fun bs!1201865 () Bool)

(assert (= bs!1201865 (and d!1664444 b!5151994)))

(assert (=> bs!1201865 (not (= lambda!257240 lambda!257236))))

(declare-fun bs!1201866 () Bool)

(declare-fun b!5152015 () Bool)

(assert (= bs!1201866 (and b!5152015 d!1664444)))

(declare-fun lambda!257241 () Int)

(assert (=> bs!1201866 (not (= lambda!257241 lambda!257240))))

(declare-fun bs!1201867 () Bool)

(assert (= bs!1201867 (and b!5152015 b!5151994)))

(assert (=> bs!1201867 (= lambda!257241 lambda!257236)))

(declare-fun bs!1201869 () Bool)

(assert (= bs!1201869 (and b!5152015 d!1664428)))

(assert (=> bs!1201869 (not (= lambda!257241 lambda!257234))))

(declare-fun bs!1201870 () Bool)

(assert (= bs!1201870 (and b!5152015 b!5151854)))

(assert (=> bs!1201870 (not (= lambda!257241 lambda!257218))))

(declare-fun bs!1201871 () Bool)

(assert (= bs!1201871 (and b!5152015 b!5151993)))

(assert (=> bs!1201871 (= lambda!257241 lambda!257235)))

(declare-fun bs!1201872 () Bool)

(declare-fun b!5152016 () Bool)

(assert (= bs!1201872 (and b!5152016 d!1664444)))

(declare-fun lambda!257242 () Int)

(assert (=> bs!1201872 (not (= lambda!257242 lambda!257240))))

(declare-fun bs!1201873 () Bool)

(assert (= bs!1201873 (and b!5152016 b!5152015)))

(assert (=> bs!1201873 (= lambda!257242 lambda!257241)))

(declare-fun bs!1201874 () Bool)

(assert (= bs!1201874 (and b!5152016 b!5151994)))

(assert (=> bs!1201874 (= lambda!257242 lambda!257236)))

(declare-fun bs!1201875 () Bool)

(assert (= bs!1201875 (and b!5152016 d!1664428)))

(assert (=> bs!1201875 (not (= lambda!257242 lambda!257234))))

(declare-fun bs!1201876 () Bool)

(assert (= bs!1201876 (and b!5152016 b!5151854)))

(assert (=> bs!1201876 (not (= lambda!257242 lambda!257218))))

(declare-fun bs!1201877 () Bool)

(assert (= bs!1201877 (and b!5152016 b!5151993)))

(assert (=> bs!1201877 (= lambda!257242 lambda!257235)))

(declare-fun e!3211767 () Unit!151233)

(declare-fun Unit!151239 () Unit!151233)

(assert (=> b!5152016 (= e!3211767 Unit!151239)))

(declare-fun lt!2121731 () List!59930)

(declare-fun call!360746 () List!59930)

(assert (=> b!5152016 (= lt!2121731 call!360746)))

(declare-fun lt!2121730 () Unit!151233)

(assert (=> b!5152016 (= lt!2121730 (lemmaForallThenNotExists!418 lt!2121731 lambda!257240))))

(declare-fun call!360745 () Bool)

(assert (=> b!5152016 (not call!360745)))

(declare-fun lt!2121735 () Unit!151233)

(assert (=> b!5152016 (= lt!2121735 lt!2121730)))

(declare-fun bm!360741 () Bool)

(assert (=> bm!360741 (= call!360746 (toList!8404 lt!2121672))))

(declare-fun lt!2121733 () List!59930)

(declare-fun bm!360740 () Bool)

(declare-fun c!886964 () Bool)

(assert (=> bm!360740 (= call!360745 (exists!1842 (ite c!886964 lt!2121733 lt!2121731) (ite c!886964 lambda!257241 lambda!257242)))))

(declare-fun Unit!151240 () Unit!151233)

(assert (=> b!5152015 (= e!3211767 Unit!151240)))

(assert (=> b!5152015 (= lt!2121733 call!360746)))

(declare-fun lt!2121732 () Unit!151233)

(assert (=> b!5152015 (= lt!2121732 (lemmaNotForallThenExists!451 lt!2121733 lambda!257240))))

(assert (=> b!5152015 call!360745))

(declare-fun lt!2121734 () Unit!151233)

(assert (=> b!5152015 (= lt!2121734 lt!2121732)))

(declare-fun lt!2121729 () Bool)

(assert (=> d!1664444 (= lt!2121729 (isEmpty!32069 (getLanguageWitness!973 lt!2121672)))))

(assert (=> d!1664444 (= lt!2121729 (forall!13988 lt!2121672 lambda!257240))))

(declare-fun lt!2121736 () Unit!151233)

(assert (=> d!1664444 (= lt!2121736 e!3211767)))

(assert (=> d!1664444 (= c!886964 (not (forall!13988 lt!2121672 lambda!257240)))))

(assert (=> d!1664444 (= (lostCauseZipper!1290 lt!2121672) lt!2121729)))

(assert (= (and d!1664444 c!886964) b!5152015))

(assert (= (and d!1664444 (not c!886964)) b!5152016))

(assert (= (or b!5152015 b!5152016) bm!360740))

(assert (= (or b!5152015 b!5152016) bm!360741))

(declare-fun m!6209300 () Bool)

(assert (=> b!5152016 m!6209300))

(declare-fun m!6209302 () Bool)

(assert (=> d!1664444 m!6209302))

(assert (=> d!1664444 m!6209302))

(declare-fun m!6209304 () Bool)

(assert (=> d!1664444 m!6209304))

(declare-fun m!6209306 () Bool)

(assert (=> d!1664444 m!6209306))

(assert (=> d!1664444 m!6209306))

(declare-fun m!6209308 () Bool)

(assert (=> bm!360740 m!6209308))

(declare-fun m!6209310 () Bool)

(assert (=> b!5152015 m!6209310))

(declare-fun m!6209312 () Bool)

(assert (=> bm!360741 m!6209312))

(assert (=> b!5151854 d!1664444))

(declare-fun d!1664448 () Bool)

(assert (=> d!1664448 (lostCauseZipper!1290 (derivationStepZipperDown!171 (regTwo!29520 expr!117) ctx!100 a!1296))))

(declare-fun lt!2121738 () Unit!151233)

(assert (=> d!1664448 (= lt!2121738 (choose!38118 (regTwo!29520 expr!117) ctx!100 a!1296))))

(assert (=> d!1664448 (validRegex!6359 (regTwo!29520 expr!117))))

(assert (=> d!1664448 (= (lemmaLostCauseFixPointDerivDown!61 (regTwo!29520 expr!117) ctx!100 a!1296) lt!2121738)))

(declare-fun bs!1201879 () Bool)

(assert (= bs!1201879 d!1664448))

(assert (=> bs!1201879 m!6209174))

(assert (=> bs!1201879 m!6209174))

(declare-fun m!6209316 () Bool)

(assert (=> bs!1201879 m!6209316))

(declare-fun m!6209318 () Bool)

(assert (=> bs!1201879 m!6209318))

(assert (=> bs!1201879 m!6209156))

(assert (=> b!5151854 d!1664448))

(declare-fun d!1664452 () Bool)

(assert (=> d!1664452 (= ($colon$colon!1226 (exprs!4388 ctx!100) (regTwo!29520 expr!117)) (Cons!59804 (regTwo!29520 expr!117) (exprs!4388 ctx!100)))))

(assert (=> b!5151854 d!1664452))

(declare-fun bm!360742 () Bool)

(declare-fun call!360749 () Bool)

(declare-fun call!360747 () Bool)

(assert (=> bm!360742 (= call!360749 call!360747)))

(declare-fun b!5152017 () Bool)

(declare-fun e!3211769 () Bool)

(declare-fun e!3211773 () Bool)

(assert (=> b!5152017 (= e!3211769 e!3211773)))

(declare-fun res!2192174 () Bool)

(assert (=> b!5152017 (= res!2192174 (not (nullable!4860 (reg!14833 expr!117))))))

(assert (=> b!5152017 (=> (not res!2192174) (not e!3211773))))

(declare-fun b!5152018 () Bool)

(declare-fun e!3211771 () Bool)

(assert (=> b!5152018 (= e!3211769 e!3211771)))

(declare-fun c!886965 () Bool)

(assert (=> b!5152018 (= c!886965 (is-Union!14504 expr!117))))

(declare-fun b!5152019 () Bool)

(declare-fun e!3211774 () Bool)

(declare-fun call!360748 () Bool)

(assert (=> b!5152019 (= e!3211774 call!360748)))

(declare-fun b!5152020 () Bool)

(declare-fun e!3211772 () Bool)

(assert (=> b!5152020 (= e!3211772 call!360748)))

(declare-fun b!5152021 () Bool)

(declare-fun res!2192171 () Bool)

(assert (=> b!5152021 (=> (not res!2192171) (not e!3211774))))

(assert (=> b!5152021 (= res!2192171 call!360749)))

(assert (=> b!5152021 (= e!3211771 e!3211774)))

(declare-fun b!5152022 () Bool)

(declare-fun res!2192173 () Bool)

(declare-fun e!3211768 () Bool)

(assert (=> b!5152022 (=> res!2192173 e!3211768)))

(assert (=> b!5152022 (= res!2192173 (not (is-Concat!23349 expr!117)))))

(assert (=> b!5152022 (= e!3211771 e!3211768)))

(declare-fun b!5152023 () Bool)

(declare-fun e!3211770 () Bool)

(assert (=> b!5152023 (= e!3211770 e!3211769)))

(declare-fun c!886966 () Bool)

(assert (=> b!5152023 (= c!886966 (is-Star!14504 expr!117))))

(declare-fun b!5152024 () Bool)

(assert (=> b!5152024 (= e!3211768 e!3211772)))

(declare-fun res!2192170 () Bool)

(assert (=> b!5152024 (=> (not res!2192170) (not e!3211772))))

(assert (=> b!5152024 (= res!2192170 call!360749)))

(declare-fun b!5152025 () Bool)

(assert (=> b!5152025 (= e!3211773 call!360747)))

(declare-fun bm!360743 () Bool)

(assert (=> bm!360743 (= call!360747 (validRegex!6359 (ite c!886966 (reg!14833 expr!117) (ite c!886965 (regOne!29521 expr!117) (regOne!29520 expr!117)))))))

(declare-fun d!1664454 () Bool)

(declare-fun res!2192172 () Bool)

(assert (=> d!1664454 (=> res!2192172 e!3211770)))

(assert (=> d!1664454 (= res!2192172 (is-ElementMatch!14504 expr!117))))

(assert (=> d!1664454 (= (validRegex!6359 expr!117) e!3211770)))

(declare-fun bm!360744 () Bool)

(assert (=> bm!360744 (= call!360748 (validRegex!6359 (ite c!886965 (regTwo!29521 expr!117) (regTwo!29520 expr!117))))))

(assert (= (and d!1664454 (not res!2192172)) b!5152023))

(assert (= (and b!5152023 c!886966) b!5152017))

(assert (= (and b!5152023 (not c!886966)) b!5152018))

(assert (= (and b!5152017 res!2192174) b!5152025))

(assert (= (and b!5152018 c!886965) b!5152021))

(assert (= (and b!5152018 (not c!886965)) b!5152022))

(assert (= (and b!5152021 res!2192171) b!5152019))

(assert (= (and b!5152022 (not res!2192173)) b!5152024))

(assert (= (and b!5152024 res!2192170) b!5152020))

(assert (= (or b!5152019 b!5152020) bm!360744))

(assert (= (or b!5152021 b!5152024) bm!360742))

(assert (= (or b!5152025 bm!360742) bm!360743))

(declare-fun m!6209320 () Bool)

(assert (=> b!5152017 m!6209320))

(declare-fun m!6209322 () Bool)

(assert (=> bm!360743 m!6209322))

(declare-fun m!6209324 () Bool)

(assert (=> bm!360744 m!6209324))

(assert (=> start!545208 d!1664454))

(declare-fun d!1664456 () Bool)

(declare-fun lambda!257245 () Int)

(declare-fun forall!13991 (List!59928 Int) Bool)

(assert (=> d!1664456 (= (inv!79442 ctx!100) (forall!13991 (exprs!4388 ctx!100) lambda!257245))))

(declare-fun bs!1201880 () Bool)

(assert (= bs!1201880 d!1664456))

(declare-fun m!6209326 () Bool)

(assert (=> bs!1201880 m!6209326))

(assert (=> start!545208 d!1664456))

(declare-fun bs!1201882 () Bool)

(declare-fun d!1664458 () Bool)

(assert (= bs!1201882 (and d!1664458 d!1664456)))

(declare-fun lambda!257248 () Int)

(assert (=> bs!1201882 (not (= lambda!257248 lambda!257245))))

(declare-fun exists!1843 (List!59928 Int) Bool)

(assert (=> d!1664458 (= (lostCause!1561 ctx!100) (exists!1843 (exprs!4388 ctx!100) lambda!257248))))

(declare-fun bs!1201883 () Bool)

(assert (= bs!1201883 d!1664458))

(declare-fun m!6209334 () Bool)

(assert (=> bs!1201883 m!6209334))

(assert (=> b!5151863 d!1664458))

(declare-fun d!1664462 () Bool)

(declare-fun lt!2121742 () Bool)

(assert (=> d!1664462 (= lt!2121742 (forall!13990 (toList!8404 lt!2121672) lambda!257218))))

(assert (=> d!1664462 (= lt!2121742 (choose!38117 lt!2121672 lambda!257218))))

(assert (=> d!1664462 (= (forall!13988 lt!2121672 lambda!257218) lt!2121742)))

(declare-fun bs!1201884 () Bool)

(assert (= bs!1201884 d!1664462))

(assert (=> bs!1201884 m!6209312))

(assert (=> bs!1201884 m!6209312))

(declare-fun m!6209336 () Bool)

(assert (=> bs!1201884 m!6209336))

(declare-fun m!6209338 () Bool)

(assert (=> bs!1201884 m!6209338))

(assert (=> b!5151857 d!1664462))

(declare-fun b!5152039 () Bool)

(declare-fun e!3211777 () Bool)

(declare-fun tp!1440807 () Bool)

(declare-fun tp!1440810 () Bool)

(assert (=> b!5152039 (= e!3211777 (and tp!1440807 tp!1440810))))

(declare-fun b!5152037 () Bool)

(declare-fun tp!1440809 () Bool)

(declare-fun tp!1440808 () Bool)

(assert (=> b!5152037 (= e!3211777 (and tp!1440809 tp!1440808))))

(declare-fun b!5152038 () Bool)

(declare-fun tp!1440806 () Bool)

(assert (=> b!5152038 (= e!3211777 tp!1440806)))

(declare-fun b!5152036 () Bool)

(assert (=> b!5152036 (= e!3211777 tp_is_empty!38157)))

(assert (=> b!5151858 (= tp!1440775 e!3211777)))

(assert (= (and b!5151858 (is-ElementMatch!14504 (reg!14833 expr!117))) b!5152036))

(assert (= (and b!5151858 (is-Concat!23349 (reg!14833 expr!117))) b!5152037))

(assert (= (and b!5151858 (is-Star!14504 (reg!14833 expr!117))) b!5152038))

(assert (= (and b!5151858 (is-Union!14504 (reg!14833 expr!117))) b!5152039))

(declare-fun b!5152043 () Bool)

(declare-fun e!3211778 () Bool)

(declare-fun tp!1440812 () Bool)

(declare-fun tp!1440815 () Bool)

(assert (=> b!5152043 (= e!3211778 (and tp!1440812 tp!1440815))))

(declare-fun b!5152041 () Bool)

(declare-fun tp!1440814 () Bool)

(declare-fun tp!1440813 () Bool)

(assert (=> b!5152041 (= e!3211778 (and tp!1440814 tp!1440813))))

(declare-fun b!5152042 () Bool)

(declare-fun tp!1440811 () Bool)

(assert (=> b!5152042 (= e!3211778 tp!1440811)))

(declare-fun b!5152040 () Bool)

(assert (=> b!5152040 (= e!3211778 tp_is_empty!38157)))

(assert (=> b!5151865 (= tp!1440773 e!3211778)))

(assert (= (and b!5151865 (is-ElementMatch!14504 (regOne!29520 expr!117))) b!5152040))

(assert (= (and b!5151865 (is-Concat!23349 (regOne!29520 expr!117))) b!5152041))

(assert (= (and b!5151865 (is-Star!14504 (regOne!29520 expr!117))) b!5152042))

(assert (= (and b!5151865 (is-Union!14504 (regOne!29520 expr!117))) b!5152043))

(declare-fun b!5152047 () Bool)

(declare-fun e!3211779 () Bool)

(declare-fun tp!1440817 () Bool)

(declare-fun tp!1440820 () Bool)

(assert (=> b!5152047 (= e!3211779 (and tp!1440817 tp!1440820))))

(declare-fun b!5152045 () Bool)

(declare-fun tp!1440819 () Bool)

(declare-fun tp!1440818 () Bool)

(assert (=> b!5152045 (= e!3211779 (and tp!1440819 tp!1440818))))

(declare-fun b!5152046 () Bool)

(declare-fun tp!1440816 () Bool)

(assert (=> b!5152046 (= e!3211779 tp!1440816)))

(declare-fun b!5152044 () Bool)

(assert (=> b!5152044 (= e!3211779 tp_is_empty!38157)))

(assert (=> b!5151865 (= tp!1440774 e!3211779)))

(assert (= (and b!5151865 (is-ElementMatch!14504 (regTwo!29520 expr!117))) b!5152044))

(assert (= (and b!5151865 (is-Concat!23349 (regTwo!29520 expr!117))) b!5152045))

(assert (= (and b!5151865 (is-Star!14504 (regTwo!29520 expr!117))) b!5152046))

(assert (= (and b!5151865 (is-Union!14504 (regTwo!29520 expr!117))) b!5152047))

(declare-fun b!5152052 () Bool)

(declare-fun e!3211782 () Bool)

(declare-fun tp!1440825 () Bool)

(declare-fun tp!1440826 () Bool)

(assert (=> b!5152052 (= e!3211782 (and tp!1440825 tp!1440826))))

(assert (=> b!5151856 (= tp!1440776 e!3211782)))

(assert (= (and b!5151856 (is-Cons!59804 (exprs!4388 ctx!100))) b!5152052))

(declare-fun b!5152056 () Bool)

(declare-fun e!3211783 () Bool)

(declare-fun tp!1440828 () Bool)

(declare-fun tp!1440831 () Bool)

(assert (=> b!5152056 (= e!3211783 (and tp!1440828 tp!1440831))))

(declare-fun b!5152054 () Bool)

(declare-fun tp!1440830 () Bool)

(declare-fun tp!1440829 () Bool)

(assert (=> b!5152054 (= e!3211783 (and tp!1440830 tp!1440829))))

(declare-fun b!5152055 () Bool)

(declare-fun tp!1440827 () Bool)

(assert (=> b!5152055 (= e!3211783 tp!1440827)))

(declare-fun b!5152053 () Bool)

(assert (=> b!5152053 (= e!3211783 tp_is_empty!38157)))

(assert (=> b!5151862 (= tp!1440777 e!3211783)))

(assert (= (and b!5151862 (is-ElementMatch!14504 (regOne!29521 expr!117))) b!5152053))

(assert (= (and b!5151862 (is-Concat!23349 (regOne!29521 expr!117))) b!5152054))

(assert (= (and b!5151862 (is-Star!14504 (regOne!29521 expr!117))) b!5152055))

(assert (= (and b!5151862 (is-Union!14504 (regOne!29521 expr!117))) b!5152056))

(declare-fun b!5152060 () Bool)

(declare-fun e!3211784 () Bool)

(declare-fun tp!1440833 () Bool)

(declare-fun tp!1440836 () Bool)

(assert (=> b!5152060 (= e!3211784 (and tp!1440833 tp!1440836))))

(declare-fun b!5152058 () Bool)

(declare-fun tp!1440835 () Bool)

(declare-fun tp!1440834 () Bool)

(assert (=> b!5152058 (= e!3211784 (and tp!1440835 tp!1440834))))

(declare-fun b!5152059 () Bool)

(declare-fun tp!1440832 () Bool)

(assert (=> b!5152059 (= e!3211784 tp!1440832)))

(declare-fun b!5152057 () Bool)

(assert (=> b!5152057 (= e!3211784 tp_is_empty!38157)))

(assert (=> b!5151862 (= tp!1440772 e!3211784)))

(assert (= (and b!5151862 (is-ElementMatch!14504 (regTwo!29521 expr!117))) b!5152057))

(assert (= (and b!5151862 (is-Concat!23349 (regTwo!29521 expr!117))) b!5152058))

(assert (= (and b!5151862 (is-Star!14504 (regTwo!29521 expr!117))) b!5152059))

(assert (= (and b!5151862 (is-Union!14504 (regTwo!29521 expr!117))) b!5152060))

(push 1)

(assert (not b!5152037))

(assert (not d!1664458))

(assert (not bm!360739))

(assert (not bm!360743))

(assert (not b!5152047))

(assert tp_is_empty!38157)

(assert (not d!1664428))

(assert (not b!5151960))

(assert (not bm!360697))

(assert (not b!5152015))

(assert (not d!1664432))

(assert (not b!5151994))

(assert (not d!1664444))

(assert (not b!5152046))

(assert (not d!1664438))

(assert (not b!5152043))

(assert (not b!5152052))

(assert (not d!1664448))

(assert (not b!5152038))

(assert (not d!1664412))

(assert (not b!5152041))

(assert (not bm!360696))

(assert (not b!5151920))

(assert (not b!5152058))

(assert (not b!5152045))

(assert (not b!5152060))

(assert (not b!5152039))

(assert (not b!5152016))

(assert (not bm!360715))

(assert (not bm!360741))

(assert (not b!5151993))

(assert (not d!1664456))

(assert (not b!5152059))

(assert (not b!5152017))

(assert (not b!5152013))

(assert (not d!1664420))

(assert (not bm!360711))

(assert (not b!5152054))

(assert (not d!1664418))

(assert (not bm!360734))

(assert (not bm!360744))

(assert (not b!5152056))

(assert (not d!1664462))

(assert (not bm!360735))

(assert (not bm!360710))

(assert (not b!5152042))

(assert (not b!5152055))

(assert (not bm!360740))

(assert (not bm!360729))

(assert (not d!1664416))

(assert (not bm!360730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

