; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717574 () Bool)

(assert start!717574)

(declare-fun b!7347908 () Bool)

(declare-fun e!4399726 () Bool)

(declare-fun tp_is_empty!48549 () Bool)

(assert (=> b!7347908 (= e!4399726 tp_is_empty!48549)))

(declare-fun b!7347909 () Bool)

(declare-fun tp!2086894 () Bool)

(declare-fun tp!2086895 () Bool)

(assert (=> b!7347909 (= e!4399726 (and tp!2086894 tp!2086895))))

(declare-fun res!2967674 () Bool)

(declare-fun e!4399725 () Bool)

(assert (=> start!717574 (=> (not res!2967674) (not e!4399725))))

(declare-datatypes ((C!38578 0))(
  ( (C!38579 (val!29649 Int)) )
))
(declare-datatypes ((Regex!19152 0))(
  ( (ElementMatch!19152 (c!1365030 C!38578)) (Concat!27997 (regOne!38816 Regex!19152) (regTwo!38816 Regex!19152)) (EmptyExpr!19152) (Star!19152 (reg!19481 Regex!19152)) (EmptyLang!19152) (Union!19152 (regOne!38817 Regex!19152) (regTwo!38817 Regex!19152)) )
))
(declare-fun r1!2370 () Regex!19152)

(declare-fun validRegex!9748 (Regex!19152) Bool)

(assert (=> start!717574 (= res!2967674 (validRegex!9748 r1!2370))))

(assert (=> start!717574 e!4399725))

(assert (=> start!717574 tp_is_empty!48549))

(declare-datatypes ((List!71648 0))(
  ( (Nil!71524) (Cons!71524 (h!77972 Regex!19152) (t!386055 List!71648)) )
))
(declare-datatypes ((Context!16184 0))(
  ( (Context!16185 (exprs!8592 List!71648)) )
))
(declare-fun cWitness!61 () Context!16184)

(declare-fun e!4399723 () Bool)

(declare-fun inv!91221 (Context!16184) Bool)

(assert (=> start!717574 (and (inv!91221 cWitness!61) e!4399723)))

(declare-fun ct1!282 () Context!16184)

(declare-fun e!4399727 () Bool)

(assert (=> start!717574 (and (inv!91221 ct1!282) e!4399727)))

(assert (=> start!717574 e!4399726))

(declare-fun ct2!378 () Context!16184)

(declare-fun e!4399728 () Bool)

(assert (=> start!717574 (and (inv!91221 ct2!378) e!4399728)))

(declare-fun b!7347910 () Bool)

(declare-fun res!2967677 () Bool)

(declare-fun e!4399722 () Bool)

(assert (=> b!7347910 (=> (not res!2967677) (not e!4399722))))

(declare-fun nullable!8243 (Regex!19152) Bool)

(assert (=> b!7347910 (= res!2967677 (nullable!8243 (regOne!38816 r1!2370)))))

(declare-fun b!7347911 () Bool)

(declare-fun e!4399721 () Bool)

(declare-fun lambda!456278 () Int)

(declare-fun forall!17976 (List!71648 Int) Bool)

(assert (=> b!7347911 (= e!4399721 (not (forall!17976 (exprs!8592 cWitness!61) lambda!456278)))))

(declare-fun c!10362 () C!38578)

(declare-fun lt!2611580 () Context!16184)

(declare-fun ++!16970 (List!71648 List!71648) List!71648)

(declare-fun derivationStepZipperDown!2978 (Regex!19152 Context!16184 C!38578) (Set Context!16184))

(assert (=> b!7347911 (set.member (Context!16185 (++!16970 (exprs!8592 cWitness!61) (exprs!8592 ct2!378))) (derivationStepZipperDown!2978 (regTwo!38816 r1!2370) lt!2611580 c!10362))))

(declare-datatypes ((Unit!165257 0))(
  ( (Unit!165258) )
))
(declare-fun lt!2611582 () Unit!165257)

(declare-fun lemmaConcatPreservesForall!1827 (List!71648 List!71648 Int) Unit!165257)

(assert (=> b!7347911 (= lt!2611582 (lemmaConcatPreservesForall!1827 (exprs!8592 ct1!282) (exprs!8592 ct2!378) lambda!456278))))

(declare-fun lt!2611584 () Unit!165257)

(assert (=> b!7347911 (= lt!2611584 (lemmaConcatPreservesForall!1827 (exprs!8592 cWitness!61) (exprs!8592 ct2!378) lambda!456278))))

(declare-fun lt!2611583 () Unit!165257)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!77 (Regex!19152 Context!16184 Context!16184 Context!16184 C!38578) Unit!165257)

(assert (=> b!7347911 (= lt!2611583 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!77 (regTwo!38816 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7347912 () Bool)

(declare-fun res!2967675 () Bool)

(assert (=> b!7347912 (=> (not res!2967675) (not e!4399721))))

(declare-fun lt!2611585 () (Set Context!16184))

(assert (=> b!7347912 (= res!2967675 (not (set.member cWitness!61 lt!2611585)))))

(declare-fun b!7347913 () Bool)

(declare-fun tp!2086893 () Bool)

(assert (=> b!7347913 (= e!4399728 tp!2086893)))

(declare-fun b!7347914 () Bool)

(declare-fun tp!2086890 () Bool)

(assert (=> b!7347914 (= e!4399727 tp!2086890)))

(declare-fun b!7347915 () Bool)

(assert (=> b!7347915 (= e!4399722 e!4399721)))

(declare-fun res!2967672 () Bool)

(assert (=> b!7347915 (=> (not res!2967672) (not e!4399721))))

(declare-fun lt!2611587 () (Set Context!16184))

(assert (=> b!7347915 (= res!2967672 (= lt!2611587 (set.union lt!2611585 (derivationStepZipperDown!2978 (regTwo!38816 r1!2370) ct1!282 c!10362))))))

(declare-fun $colon$colon!3150 (List!71648 Regex!19152) List!71648)

(assert (=> b!7347915 (= lt!2611585 (derivationStepZipperDown!2978 (regOne!38816 r1!2370) (Context!16185 ($colon$colon!3150 (exprs!8592 ct1!282) (regTwo!38816 r1!2370))) c!10362))))

(declare-fun b!7347916 () Bool)

(declare-fun e!4399724 () Bool)

(assert (=> b!7347916 (= e!4399724 e!4399722)))

(declare-fun res!2967671 () Bool)

(assert (=> b!7347916 (=> (not res!2967671) (not e!4399722))))

(assert (=> b!7347916 (= res!2967671 (and (or (not (is-ElementMatch!19152 r1!2370)) (not (= c!10362 (c!1365030 r1!2370)))) (not (is-Union!19152 r1!2370)) (is-Concat!27997 r1!2370)))))

(declare-fun lt!2611586 () (Set Context!16184))

(assert (=> b!7347916 (= lt!2611586 (derivationStepZipperDown!2978 r1!2370 lt!2611580 c!10362))))

(assert (=> b!7347916 (= lt!2611580 (Context!16185 (++!16970 (exprs!8592 ct1!282) (exprs!8592 ct2!378))))))

(declare-fun lt!2611581 () Unit!165257)

(assert (=> b!7347916 (= lt!2611581 (lemmaConcatPreservesForall!1827 (exprs!8592 ct1!282) (exprs!8592 ct2!378) lambda!456278))))

(declare-fun b!7347917 () Bool)

(assert (=> b!7347917 (= e!4399725 e!4399724)))

(declare-fun res!2967673 () Bool)

(assert (=> b!7347917 (=> (not res!2967673) (not e!4399724))))

(assert (=> b!7347917 (= res!2967673 (set.member cWitness!61 lt!2611587))))

(assert (=> b!7347917 (= lt!2611587 (derivationStepZipperDown!2978 r1!2370 ct1!282 c!10362))))

(declare-fun b!7347918 () Bool)

(declare-fun res!2967676 () Bool)

(assert (=> b!7347918 (=> (not res!2967676) (not e!4399722))))

(assert (=> b!7347918 (= res!2967676 (validRegex!9748 (regTwo!38816 r1!2370)))))

(declare-fun b!7347919 () Bool)

(declare-fun tp!2086891 () Bool)

(assert (=> b!7347919 (= e!4399726 tp!2086891)))

(declare-fun b!7347920 () Bool)

(declare-fun tp!2086888 () Bool)

(declare-fun tp!2086889 () Bool)

(assert (=> b!7347920 (= e!4399726 (and tp!2086888 tp!2086889))))

(declare-fun b!7347921 () Bool)

(declare-fun tp!2086892 () Bool)

(assert (=> b!7347921 (= e!4399723 tp!2086892)))

(assert (= (and start!717574 res!2967674) b!7347917))

(assert (= (and b!7347917 res!2967673) b!7347916))

(assert (= (and b!7347916 res!2967671) b!7347910))

(assert (= (and b!7347910 res!2967677) b!7347918))

(assert (= (and b!7347918 res!2967676) b!7347915))

(assert (= (and b!7347915 res!2967672) b!7347912))

(assert (= (and b!7347912 res!2967675) b!7347911))

(assert (= start!717574 b!7347921))

(assert (= start!717574 b!7347914))

(assert (= (and start!717574 (is-ElementMatch!19152 r1!2370)) b!7347908))

(assert (= (and start!717574 (is-Concat!27997 r1!2370)) b!7347920))

(assert (= (and start!717574 (is-Star!19152 r1!2370)) b!7347919))

(assert (= (and start!717574 (is-Union!19152 r1!2370)) b!7347909))

(assert (= start!717574 b!7347913))

(declare-fun m!8009898 () Bool)

(assert (=> b!7347916 m!8009898))

(declare-fun m!8009900 () Bool)

(assert (=> b!7347916 m!8009900))

(declare-fun m!8009902 () Bool)

(assert (=> b!7347916 m!8009902))

(declare-fun m!8009904 () Bool)

(assert (=> b!7347911 m!8009904))

(assert (=> b!7347911 m!8009902))

(declare-fun m!8009906 () Bool)

(assert (=> b!7347911 m!8009906))

(declare-fun m!8009908 () Bool)

(assert (=> b!7347911 m!8009908))

(declare-fun m!8009910 () Bool)

(assert (=> b!7347911 m!8009910))

(declare-fun m!8009912 () Bool)

(assert (=> b!7347911 m!8009912))

(declare-fun m!8009914 () Bool)

(assert (=> b!7347911 m!8009914))

(declare-fun m!8009916 () Bool)

(assert (=> b!7347918 m!8009916))

(declare-fun m!8009918 () Bool)

(assert (=> b!7347912 m!8009918))

(declare-fun m!8009920 () Bool)

(assert (=> b!7347915 m!8009920))

(declare-fun m!8009922 () Bool)

(assert (=> b!7347915 m!8009922))

(declare-fun m!8009924 () Bool)

(assert (=> b!7347915 m!8009924))

(declare-fun m!8009926 () Bool)

(assert (=> b!7347917 m!8009926))

(declare-fun m!8009928 () Bool)

(assert (=> b!7347917 m!8009928))

(declare-fun m!8009930 () Bool)

(assert (=> start!717574 m!8009930))

(declare-fun m!8009932 () Bool)

(assert (=> start!717574 m!8009932))

(declare-fun m!8009934 () Bool)

(assert (=> start!717574 m!8009934))

(declare-fun m!8009936 () Bool)

(assert (=> start!717574 m!8009936))

(declare-fun m!8009938 () Bool)

(assert (=> b!7347910 m!8009938))

(push 1)

(assert (not b!7347911))

(assert (not b!7347913))

(assert (not b!7347918))

(assert (not b!7347917))

(assert (not start!717574))

(assert (not b!7347909))

(assert (not b!7347915))

(assert (not b!7347919))

(assert (not b!7347914))

(assert (not b!7347910))

(assert tp_is_empty!48549)

(assert (not b!7347916))

(assert (not b!7347921))

(assert (not b!7347920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7347973 () Bool)

(declare-fun e!4399757 () List!71648)

(assert (=> b!7347973 (= e!4399757 (Cons!71524 (h!77972 (exprs!8592 cWitness!61)) (++!16970 (t!386055 (exprs!8592 cWitness!61)) (exprs!8592 ct2!378))))))

(declare-fun e!4399758 () Bool)

(declare-fun b!7347975 () Bool)

(declare-fun lt!2611614 () List!71648)

(assert (=> b!7347975 (= e!4399758 (or (not (= (exprs!8592 ct2!378) Nil!71524)) (= lt!2611614 (exprs!8592 cWitness!61))))))

(declare-fun b!7347972 () Bool)

(assert (=> b!7347972 (= e!4399757 (exprs!8592 ct2!378))))

(declare-fun d!2279987 () Bool)

(assert (=> d!2279987 e!4399758))

(declare-fun res!2967703 () Bool)

(assert (=> d!2279987 (=> (not res!2967703) (not e!4399758))))

(declare-fun content!15060 (List!71648) (Set Regex!19152))

(assert (=> d!2279987 (= res!2967703 (= (content!15060 lt!2611614) (set.union (content!15060 (exprs!8592 cWitness!61)) (content!15060 (exprs!8592 ct2!378)))))))

(assert (=> d!2279987 (= lt!2611614 e!4399757)))

(declare-fun c!1365034 () Bool)

(assert (=> d!2279987 (= c!1365034 (is-Nil!71524 (exprs!8592 cWitness!61)))))

(assert (=> d!2279987 (= (++!16970 (exprs!8592 cWitness!61) (exprs!8592 ct2!378)) lt!2611614)))

(declare-fun b!7347974 () Bool)

(declare-fun res!2967704 () Bool)

(assert (=> b!7347974 (=> (not res!2967704) (not e!4399758))))

(declare-fun size!42039 (List!71648) Int)

(assert (=> b!7347974 (= res!2967704 (= (size!42039 lt!2611614) (+ (size!42039 (exprs!8592 cWitness!61)) (size!42039 (exprs!8592 ct2!378)))))))

(assert (= (and d!2279987 c!1365034) b!7347972))

(assert (= (and d!2279987 (not c!1365034)) b!7347973))

(assert (= (and d!2279987 res!2967703) b!7347974))

(assert (= (and b!7347974 res!2967704) b!7347975))

(declare-fun m!8009982 () Bool)

(assert (=> b!7347973 m!8009982))

(declare-fun m!8009986 () Bool)

(assert (=> d!2279987 m!8009986))

(declare-fun m!8009988 () Bool)

(assert (=> d!2279987 m!8009988))

(declare-fun m!8009990 () Bool)

(assert (=> d!2279987 m!8009990))

(declare-fun m!8009992 () Bool)

(assert (=> b!7347974 m!8009992))

(declare-fun m!8009994 () Bool)

(assert (=> b!7347974 m!8009994))

(declare-fun m!8009996 () Bool)

(assert (=> b!7347974 m!8009996))

(assert (=> b!7347911 d!2279987))

(declare-fun d!2279993 () Bool)

(assert (=> d!2279993 (forall!17976 (++!16970 (exprs!8592 cWitness!61) (exprs!8592 ct2!378)) lambda!456278)))

(declare-fun lt!2611617 () Unit!165257)

(declare-fun choose!57156 (List!71648 List!71648 Int) Unit!165257)

(assert (=> d!2279993 (= lt!2611617 (choose!57156 (exprs!8592 cWitness!61) (exprs!8592 ct2!378) lambda!456278))))

(assert (=> d!2279993 (forall!17976 (exprs!8592 cWitness!61) lambda!456278)))

(assert (=> d!2279993 (= (lemmaConcatPreservesForall!1827 (exprs!8592 cWitness!61) (exprs!8592 ct2!378) lambda!456278) lt!2611617)))

(declare-fun bs!1919031 () Bool)

(assert (= bs!1919031 d!2279993))

(assert (=> bs!1919031 m!8009906))

(assert (=> bs!1919031 m!8009906))

(declare-fun m!8009998 () Bool)

(assert (=> bs!1919031 m!8009998))

(declare-fun m!8010000 () Bool)

(assert (=> bs!1919031 m!8010000))

(assert (=> bs!1919031 m!8009912))

(assert (=> b!7347911 d!2279993))

(declare-fun d!2279995 () Bool)

(declare-fun res!2967719 () Bool)

(declare-fun e!4399777 () Bool)

(assert (=> d!2279995 (=> res!2967719 e!4399777)))

(assert (=> d!2279995 (= res!2967719 (is-Nil!71524 (exprs!8592 cWitness!61)))))

(assert (=> d!2279995 (= (forall!17976 (exprs!8592 cWitness!61) lambda!456278) e!4399777)))

(declare-fun b!7347998 () Bool)

(declare-fun e!4399778 () Bool)

(assert (=> b!7347998 (= e!4399777 e!4399778)))

(declare-fun res!2967720 () Bool)

(assert (=> b!7347998 (=> (not res!2967720) (not e!4399778))))

(declare-fun dynLambda!29481 (Int Regex!19152) Bool)

(assert (=> b!7347998 (= res!2967720 (dynLambda!29481 lambda!456278 (h!77972 (exprs!8592 cWitness!61))))))

(declare-fun b!7347999 () Bool)

(assert (=> b!7347999 (= e!4399778 (forall!17976 (t!386055 (exprs!8592 cWitness!61)) lambda!456278))))

(assert (= (and d!2279995 (not res!2967719)) b!7347998))

(assert (= (and b!7347998 res!2967720) b!7347999))

(declare-fun b_lambda!284051 () Bool)

(assert (=> (not b_lambda!284051) (not b!7347998)))

(declare-fun m!8010002 () Bool)

(assert (=> b!7347998 m!8010002))

(declare-fun m!8010004 () Bool)

(assert (=> b!7347999 m!8010004))

(assert (=> b!7347911 d!2279995))

(declare-fun bs!1919032 () Bool)

(declare-fun d!2279997 () Bool)

(assert (= bs!1919032 (and d!2279997 b!7347916)))

(declare-fun lambda!456292 () Int)

(assert (=> bs!1919032 (= lambda!456292 lambda!456278)))

(assert (=> d!2279997 (set.member (Context!16185 (++!16970 (exprs!8592 cWitness!61) (exprs!8592 ct2!378))) (derivationStepZipperDown!2978 (regTwo!38816 r1!2370) (Context!16185 (++!16970 (exprs!8592 ct1!282) (exprs!8592 ct2!378))) c!10362))))

(declare-fun lt!2611626 () Unit!165257)

(assert (=> d!2279997 (= lt!2611626 (lemmaConcatPreservesForall!1827 (exprs!8592 ct1!282) (exprs!8592 ct2!378) lambda!456292))))

(declare-fun lt!2611625 () Unit!165257)

(assert (=> d!2279997 (= lt!2611625 (lemmaConcatPreservesForall!1827 (exprs!8592 cWitness!61) (exprs!8592 ct2!378) lambda!456292))))

(declare-fun lt!2611624 () Unit!165257)

(declare-fun choose!57157 (Regex!19152 Context!16184 Context!16184 Context!16184 C!38578) Unit!165257)

(assert (=> d!2279997 (= lt!2611624 (choose!57157 (regTwo!38816 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2279997 (validRegex!9748 (regTwo!38816 r1!2370))))

(assert (=> d!2279997 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!77 (regTwo!38816 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2611624)))

(declare-fun bs!1919033 () Bool)

(assert (= bs!1919033 d!2279997))

(declare-fun m!8010012 () Bool)

(assert (=> bs!1919033 m!8010012))

(declare-fun m!8010014 () Bool)

(assert (=> bs!1919033 m!8010014))

(assert (=> bs!1919033 m!8009916))

(declare-fun m!8010016 () Bool)

(assert (=> bs!1919033 m!8010016))

(declare-fun m!8010018 () Bool)

(assert (=> bs!1919033 m!8010018))

(assert (=> bs!1919033 m!8009900))

(declare-fun m!8010020 () Bool)

(assert (=> bs!1919033 m!8010020))

(assert (=> bs!1919033 m!8009906))

(assert (=> b!7347911 d!2279997))

(declare-fun b!7348031 () Bool)

(declare-fun e!4399801 () (Set Context!16184))

(declare-fun e!4399803 () (Set Context!16184))

(assert (=> b!7348031 (= e!4399801 e!4399803)))

(declare-fun c!1365055 () Bool)

(assert (=> b!7348031 (= c!1365055 (is-Union!19152 (regTwo!38816 r1!2370)))))

(declare-fun bm!671668 () Bool)

(declare-fun call!671673 () (Set Context!16184))

(declare-fun call!671674 () (Set Context!16184))

(assert (=> bm!671668 (= call!671673 call!671674)))

(declare-fun b!7348032 () Bool)

(declare-fun e!4399799 () (Set Context!16184))

(declare-fun call!671675 () (Set Context!16184))

(assert (=> b!7348032 (= e!4399799 call!671675)))

(declare-fun bm!671669 () Bool)

(declare-fun c!1365054 () Bool)

(declare-fun c!1365053 () Bool)

(declare-fun call!671677 () List!71648)

(assert (=> bm!671669 (= call!671677 ($colon$colon!3150 (exprs!8592 lt!2611580) (ite (or c!1365054 c!1365053) (regTwo!38816 (regTwo!38816 r1!2370)) (regTwo!38816 r1!2370))))))

(declare-fun b!7348033 () Bool)

(declare-fun e!4399798 () Bool)

(assert (=> b!7348033 (= c!1365054 e!4399798)))

(declare-fun res!2967728 () Bool)

(assert (=> b!7348033 (=> (not res!2967728) (not e!4399798))))

(assert (=> b!7348033 (= res!2967728 (is-Concat!27997 (regTwo!38816 r1!2370)))))

(declare-fun e!4399800 () (Set Context!16184))

(assert (=> b!7348033 (= e!4399803 e!4399800)))

(declare-fun b!7348034 () Bool)

(assert (=> b!7348034 (= e!4399798 (nullable!8243 (regOne!38816 (regTwo!38816 r1!2370))))))

(declare-fun b!7348035 () Bool)

(declare-fun call!671676 () (Set Context!16184))

(assert (=> b!7348035 (= e!4399803 (set.union call!671676 call!671674))))

(declare-fun b!7348036 () Bool)

(assert (=> b!7348036 (= e!4399800 (set.union call!671676 call!671673))))

(declare-fun bm!671670 () Bool)

(declare-fun call!671678 () List!71648)

(assert (=> bm!671670 (= call!671674 (derivationStepZipperDown!2978 (ite c!1365055 (regTwo!38817 (regTwo!38816 r1!2370)) (ite c!1365054 (regTwo!38816 (regTwo!38816 r1!2370)) (ite c!1365053 (regOne!38816 (regTwo!38816 r1!2370)) (reg!19481 (regTwo!38816 r1!2370))))) (ite (or c!1365055 c!1365054) lt!2611580 (Context!16185 call!671678)) c!10362))))

(declare-fun b!7348037 () Bool)

(assert (=> b!7348037 (= e!4399801 (set.insert lt!2611580 (as set.empty (Set Context!16184))))))

(declare-fun bm!671671 () Bool)

(assert (=> bm!671671 (= call!671676 (derivationStepZipperDown!2978 (ite c!1365055 (regOne!38817 (regTwo!38816 r1!2370)) (regOne!38816 (regTwo!38816 r1!2370))) (ite c!1365055 lt!2611580 (Context!16185 call!671677)) c!10362))))

(declare-fun d!2280001 () Bool)

(declare-fun c!1365056 () Bool)

(assert (=> d!2280001 (= c!1365056 (and (is-ElementMatch!19152 (regTwo!38816 r1!2370)) (= (c!1365030 (regTwo!38816 r1!2370)) c!10362)))))

(assert (=> d!2280001 (= (derivationStepZipperDown!2978 (regTwo!38816 r1!2370) lt!2611580 c!10362) e!4399801)))

(declare-fun b!7348038 () Bool)

(assert (=> b!7348038 (= e!4399800 e!4399799)))

(assert (=> b!7348038 (= c!1365053 (is-Concat!27997 (regTwo!38816 r1!2370)))))

(declare-fun bm!671672 () Bool)

(assert (=> bm!671672 (= call!671675 call!671673)))

(declare-fun b!7348039 () Bool)

(declare-fun e!4399802 () (Set Context!16184))

(assert (=> b!7348039 (= e!4399802 call!671675)))

(declare-fun b!7348040 () Bool)

(declare-fun c!1365052 () Bool)

(assert (=> b!7348040 (= c!1365052 (is-Star!19152 (regTwo!38816 r1!2370)))))

(assert (=> b!7348040 (= e!4399799 e!4399802)))

(declare-fun b!7348041 () Bool)

(assert (=> b!7348041 (= e!4399802 (as set.empty (Set Context!16184)))))

(declare-fun bm!671673 () Bool)

(assert (=> bm!671673 (= call!671678 call!671677)))

(assert (= (and d!2280001 c!1365056) b!7348037))

(assert (= (and d!2280001 (not c!1365056)) b!7348031))

(assert (= (and b!7348031 c!1365055) b!7348035))

(assert (= (and b!7348031 (not c!1365055)) b!7348033))

(assert (= (and b!7348033 res!2967728) b!7348034))

(assert (= (and b!7348033 c!1365054) b!7348036))

(assert (= (and b!7348033 (not c!1365054)) b!7348038))

(assert (= (and b!7348038 c!1365053) b!7348032))

(assert (= (and b!7348038 (not c!1365053)) b!7348040))

(assert (= (and b!7348040 c!1365052) b!7348039))

(assert (= (and b!7348040 (not c!1365052)) b!7348041))

(assert (= (or b!7348032 b!7348039) bm!671673))

(assert (= (or b!7348032 b!7348039) bm!671672))

(assert (= (or b!7348036 bm!671672) bm!671668))

(assert (= (or b!7348036 bm!671673) bm!671669))

(assert (= (or b!7348035 bm!671668) bm!671670))

(assert (= (or b!7348035 b!7348036) bm!671671))

(declare-fun m!8010028 () Bool)

(assert (=> b!7348034 m!8010028))

(declare-fun m!8010030 () Bool)

(assert (=> bm!671670 m!8010030))

(declare-fun m!8010032 () Bool)

(assert (=> b!7348037 m!8010032))

(declare-fun m!8010034 () Bool)

(assert (=> bm!671671 m!8010034))

(declare-fun m!8010036 () Bool)

(assert (=> bm!671669 m!8010036))

(assert (=> b!7347911 d!2280001))

(declare-fun d!2280009 () Bool)

(assert (=> d!2280009 (forall!17976 (++!16970 (exprs!8592 ct1!282) (exprs!8592 ct2!378)) lambda!456278)))

(declare-fun lt!2611627 () Unit!165257)

(assert (=> d!2280009 (= lt!2611627 (choose!57156 (exprs!8592 ct1!282) (exprs!8592 ct2!378) lambda!456278))))

(assert (=> d!2280009 (forall!17976 (exprs!8592 ct1!282) lambda!456278)))

(assert (=> d!2280009 (= (lemmaConcatPreservesForall!1827 (exprs!8592 ct1!282) (exprs!8592 ct2!378) lambda!456278) lt!2611627)))

(declare-fun bs!1919043 () Bool)

(assert (= bs!1919043 d!2280009))

(assert (=> bs!1919043 m!8009900))

(assert (=> bs!1919043 m!8009900))

(declare-fun m!8010038 () Bool)

(assert (=> bs!1919043 m!8010038))

(declare-fun m!8010040 () Bool)

(assert (=> bs!1919043 m!8010040))

(declare-fun m!8010042 () Bool)

(assert (=> bs!1919043 m!8010042))

(assert (=> b!7347911 d!2280009))

(declare-fun b!7348064 () Bool)

(declare-fun e!4399819 () (Set Context!16184))

(declare-fun e!4399821 () (Set Context!16184))

(assert (=> b!7348064 (= e!4399819 e!4399821)))

(declare-fun c!1365070 () Bool)

(assert (=> b!7348064 (= c!1365070 (is-Union!19152 r1!2370))))

(declare-fun bm!671674 () Bool)

(declare-fun call!671679 () (Set Context!16184))

(declare-fun call!671680 () (Set Context!16184))

(assert (=> bm!671674 (= call!671679 call!671680)))

(declare-fun b!7348065 () Bool)

(declare-fun e!4399817 () (Set Context!16184))

(declare-fun call!671681 () (Set Context!16184))

(assert (=> b!7348065 (= e!4399817 call!671681)))

(declare-fun call!671683 () List!71648)

(declare-fun c!1365068 () Bool)

(declare-fun c!1365069 () Bool)

(declare-fun bm!671675 () Bool)

(assert (=> bm!671675 (= call!671683 ($colon$colon!3150 (exprs!8592 lt!2611580) (ite (or c!1365069 c!1365068) (regTwo!38816 r1!2370) r1!2370)))))

(declare-fun b!7348066 () Bool)

(declare-fun e!4399816 () Bool)

(assert (=> b!7348066 (= c!1365069 e!4399816)))

(declare-fun res!2967731 () Bool)

(assert (=> b!7348066 (=> (not res!2967731) (not e!4399816))))

(assert (=> b!7348066 (= res!2967731 (is-Concat!27997 r1!2370))))

(declare-fun e!4399818 () (Set Context!16184))

(assert (=> b!7348066 (= e!4399821 e!4399818)))

(declare-fun b!7348067 () Bool)

(assert (=> b!7348067 (= e!4399816 (nullable!8243 (regOne!38816 r1!2370)))))

(declare-fun b!7348068 () Bool)

(declare-fun call!671682 () (Set Context!16184))

(assert (=> b!7348068 (= e!4399821 (set.union call!671682 call!671680))))

(declare-fun b!7348069 () Bool)

(assert (=> b!7348069 (= e!4399818 (set.union call!671682 call!671679))))

(declare-fun bm!671676 () Bool)

(declare-fun call!671684 () List!71648)

(assert (=> bm!671676 (= call!671680 (derivationStepZipperDown!2978 (ite c!1365070 (regTwo!38817 r1!2370) (ite c!1365069 (regTwo!38816 r1!2370) (ite c!1365068 (regOne!38816 r1!2370) (reg!19481 r1!2370)))) (ite (or c!1365070 c!1365069) lt!2611580 (Context!16185 call!671684)) c!10362))))

(declare-fun b!7348070 () Bool)

(assert (=> b!7348070 (= e!4399819 (set.insert lt!2611580 (as set.empty (Set Context!16184))))))

(declare-fun bm!671677 () Bool)

(assert (=> bm!671677 (= call!671682 (derivationStepZipperDown!2978 (ite c!1365070 (regOne!38817 r1!2370) (regOne!38816 r1!2370)) (ite c!1365070 lt!2611580 (Context!16185 call!671683)) c!10362))))

(declare-fun d!2280011 () Bool)

(declare-fun c!1365071 () Bool)

(assert (=> d!2280011 (= c!1365071 (and (is-ElementMatch!19152 r1!2370) (= (c!1365030 r1!2370) c!10362)))))

(assert (=> d!2280011 (= (derivationStepZipperDown!2978 r1!2370 lt!2611580 c!10362) e!4399819)))

(declare-fun b!7348071 () Bool)

(assert (=> b!7348071 (= e!4399818 e!4399817)))

(assert (=> b!7348071 (= c!1365068 (is-Concat!27997 r1!2370))))

(declare-fun bm!671678 () Bool)

(assert (=> bm!671678 (= call!671681 call!671679)))

(declare-fun b!7348072 () Bool)

(declare-fun e!4399820 () (Set Context!16184))

(assert (=> b!7348072 (= e!4399820 call!671681)))

(declare-fun b!7348073 () Bool)

(declare-fun c!1365067 () Bool)

(assert (=> b!7348073 (= c!1365067 (is-Star!19152 r1!2370))))

(assert (=> b!7348073 (= e!4399817 e!4399820)))

(declare-fun b!7348074 () Bool)

(assert (=> b!7348074 (= e!4399820 (as set.empty (Set Context!16184)))))

(declare-fun bm!671679 () Bool)

(assert (=> bm!671679 (= call!671684 call!671683)))

(assert (= (and d!2280011 c!1365071) b!7348070))

(assert (= (and d!2280011 (not c!1365071)) b!7348064))

(assert (= (and b!7348064 c!1365070) b!7348068))

(assert (= (and b!7348064 (not c!1365070)) b!7348066))

(assert (= (and b!7348066 res!2967731) b!7348067))

(assert (= (and b!7348066 c!1365069) b!7348069))

(assert (= (and b!7348066 (not c!1365069)) b!7348071))

(assert (= (and b!7348071 c!1365068) b!7348065))

(assert (= (and b!7348071 (not c!1365068)) b!7348073))

(assert (= (and b!7348073 c!1365067) b!7348072))

(assert (= (and b!7348073 (not c!1365067)) b!7348074))

(assert (= (or b!7348065 b!7348072) bm!671679))

(assert (= (or b!7348065 b!7348072) bm!671678))

(assert (= (or b!7348069 bm!671678) bm!671674))

(assert (= (or b!7348069 bm!671679) bm!671675))

(assert (= (or b!7348068 bm!671674) bm!671676))

(assert (= (or b!7348068 b!7348069) bm!671677))

(assert (=> b!7348067 m!8009938))

(declare-fun m!8010044 () Bool)

(assert (=> bm!671676 m!8010044))

(assert (=> b!7348070 m!8010032))

(declare-fun m!8010046 () Bool)

(assert (=> bm!671677 m!8010046))

(declare-fun m!8010048 () Bool)

(assert (=> bm!671675 m!8010048))

(assert (=> b!7347916 d!2280011))

(declare-fun b!7348076 () Bool)

(declare-fun e!4399822 () List!71648)

(assert (=> b!7348076 (= e!4399822 (Cons!71524 (h!77972 (exprs!8592 ct1!282)) (++!16970 (t!386055 (exprs!8592 ct1!282)) (exprs!8592 ct2!378))))))

(declare-fun e!4399823 () Bool)

(declare-fun b!7348078 () Bool)

(declare-fun lt!2611628 () List!71648)

(assert (=> b!7348078 (= e!4399823 (or (not (= (exprs!8592 ct2!378) Nil!71524)) (= lt!2611628 (exprs!8592 ct1!282))))))

(declare-fun b!7348075 () Bool)

(assert (=> b!7348075 (= e!4399822 (exprs!8592 ct2!378))))

(declare-fun d!2280013 () Bool)

(assert (=> d!2280013 e!4399823))

(declare-fun res!2967732 () Bool)

(assert (=> d!2280013 (=> (not res!2967732) (not e!4399823))))

(assert (=> d!2280013 (= res!2967732 (= (content!15060 lt!2611628) (set.union (content!15060 (exprs!8592 ct1!282)) (content!15060 (exprs!8592 ct2!378)))))))

(assert (=> d!2280013 (= lt!2611628 e!4399822)))

(declare-fun c!1365072 () Bool)

(assert (=> d!2280013 (= c!1365072 (is-Nil!71524 (exprs!8592 ct1!282)))))

(assert (=> d!2280013 (= (++!16970 (exprs!8592 ct1!282) (exprs!8592 ct2!378)) lt!2611628)))

(declare-fun b!7348077 () Bool)

(declare-fun res!2967733 () Bool)

(assert (=> b!7348077 (=> (not res!2967733) (not e!4399823))))

(assert (=> b!7348077 (= res!2967733 (= (size!42039 lt!2611628) (+ (size!42039 (exprs!8592 ct1!282)) (size!42039 (exprs!8592 ct2!378)))))))

(assert (= (and d!2280013 c!1365072) b!7348075))

(assert (= (and d!2280013 (not c!1365072)) b!7348076))

(assert (= (and d!2280013 res!2967732) b!7348077))

(assert (= (and b!7348077 res!2967733) b!7348078))

(declare-fun m!8010050 () Bool)

(assert (=> b!7348076 m!8010050))

(declare-fun m!8010052 () Bool)

(assert (=> d!2280013 m!8010052))

(declare-fun m!8010054 () Bool)

(assert (=> d!2280013 m!8010054))

(assert (=> d!2280013 m!8009990))

(declare-fun m!8010056 () Bool)

(assert (=> b!7348077 m!8010056))

(declare-fun m!8010058 () Bool)

(assert (=> b!7348077 m!8010058))

(assert (=> b!7348077 m!8009996))

(assert (=> b!7347916 d!2280013))

(assert (=> b!7347916 d!2280009))

(declare-fun b!7348097 () Bool)

(declare-fun e!4399841 () Bool)

(declare-fun call!671703 () Bool)

(assert (=> b!7348097 (= e!4399841 call!671703)))

(declare-fun call!671705 () Bool)

(declare-fun c!1365078 () Bool)

(declare-fun c!1365077 () Bool)

(declare-fun bm!671698 () Bool)

(assert (=> bm!671698 (= call!671705 (validRegex!9748 (ite c!1365077 (reg!19481 (regTwo!38816 r1!2370)) (ite c!1365078 (regTwo!38817 (regTwo!38816 r1!2370)) (regOne!38816 (regTwo!38816 r1!2370))))))))

(declare-fun bm!671699 () Bool)

(declare-fun call!671704 () Bool)

(assert (=> bm!671699 (= call!671704 (validRegex!9748 (ite c!1365078 (regOne!38817 (regTwo!38816 r1!2370)) (regTwo!38816 (regTwo!38816 r1!2370)))))))

(declare-fun b!7348098 () Bool)

(declare-fun res!2967748 () Bool)

(assert (=> b!7348098 (=> (not res!2967748) (not e!4399841))))

(assert (=> b!7348098 (= res!2967748 call!671704)))

(declare-fun e!4399840 () Bool)

(assert (=> b!7348098 (= e!4399840 e!4399841)))

(declare-fun b!7348099 () Bool)

(declare-fun e!4399842 () Bool)

(declare-fun e!4399838 () Bool)

(assert (=> b!7348099 (= e!4399842 e!4399838)))

(assert (=> b!7348099 (= c!1365077 (is-Star!19152 (regTwo!38816 r1!2370)))))

(declare-fun b!7348100 () Bool)

(declare-fun e!4399844 () Bool)

(assert (=> b!7348100 (= e!4399844 call!671705)))

(declare-fun b!7348101 () Bool)

(assert (=> b!7348101 (= e!4399838 e!4399840)))

(assert (=> b!7348101 (= c!1365078 (is-Union!19152 (regTwo!38816 r1!2370)))))

(declare-fun d!2280015 () Bool)

(declare-fun res!2967746 () Bool)

(assert (=> d!2280015 (=> res!2967746 e!4399842)))

(assert (=> d!2280015 (= res!2967746 (is-ElementMatch!19152 (regTwo!38816 r1!2370)))))

(assert (=> d!2280015 (= (validRegex!9748 (regTwo!38816 r1!2370)) e!4399842)))

(declare-fun b!7348102 () Bool)

(declare-fun e!4399843 () Bool)

(assert (=> b!7348102 (= e!4399843 call!671704)))

(declare-fun b!7348103 () Bool)

(declare-fun res!2967744 () Bool)

(declare-fun e!4399839 () Bool)

(assert (=> b!7348103 (=> res!2967744 e!4399839)))

(assert (=> b!7348103 (= res!2967744 (not (is-Concat!27997 (regTwo!38816 r1!2370))))))

(assert (=> b!7348103 (= e!4399840 e!4399839)))

(declare-fun b!7348104 () Bool)

(assert (=> b!7348104 (= e!4399839 e!4399843)))

(declare-fun res!2967745 () Bool)

(assert (=> b!7348104 (=> (not res!2967745) (not e!4399843))))

(assert (=> b!7348104 (= res!2967745 call!671703)))

(declare-fun b!7348105 () Bool)

(assert (=> b!7348105 (= e!4399838 e!4399844)))

(declare-fun res!2967747 () Bool)

(assert (=> b!7348105 (= res!2967747 (not (nullable!8243 (reg!19481 (regTwo!38816 r1!2370)))))))

(assert (=> b!7348105 (=> (not res!2967747) (not e!4399844))))

(declare-fun bm!671700 () Bool)

(assert (=> bm!671700 (= call!671703 call!671705)))

(assert (= (and d!2280015 (not res!2967746)) b!7348099))

(assert (= (and b!7348099 c!1365077) b!7348105))

(assert (= (and b!7348099 (not c!1365077)) b!7348101))

(assert (= (and b!7348105 res!2967747) b!7348100))

(assert (= (and b!7348101 c!1365078) b!7348098))

(assert (= (and b!7348101 (not c!1365078)) b!7348103))

(assert (= (and b!7348098 res!2967748) b!7348097))

(assert (= (and b!7348103 (not res!2967744)) b!7348104))

(assert (= (and b!7348104 res!2967745) b!7348102))

(assert (= (or b!7348098 b!7348102) bm!671699))

(assert (= (or b!7348097 b!7348104) bm!671700))

(assert (= (or b!7348100 bm!671700) bm!671698))

(declare-fun m!8010060 () Bool)

(assert (=> bm!671698 m!8010060))

(declare-fun m!8010062 () Bool)

(assert (=> bm!671699 m!8010062))

(declare-fun m!8010064 () Bool)

(assert (=> b!7348105 m!8010064))

(assert (=> b!7347918 d!2280015))

(declare-fun b!7348106 () Bool)

(declare-fun e!4399848 () (Set Context!16184))

(declare-fun e!4399850 () (Set Context!16184))

(assert (=> b!7348106 (= e!4399848 e!4399850)))

(declare-fun c!1365082 () Bool)

(assert (=> b!7348106 (= c!1365082 (is-Union!19152 r1!2370))))

(declare-fun bm!671701 () Bool)

(declare-fun call!671706 () (Set Context!16184))

(declare-fun call!671707 () (Set Context!16184))

(assert (=> bm!671701 (= call!671706 call!671707)))

(declare-fun b!7348107 () Bool)

(declare-fun e!4399846 () (Set Context!16184))

(declare-fun call!671708 () (Set Context!16184))

(assert (=> b!7348107 (= e!4399846 call!671708)))

(declare-fun c!1365081 () Bool)

(declare-fun c!1365080 () Bool)

(declare-fun call!671710 () List!71648)

(declare-fun bm!671702 () Bool)

(assert (=> bm!671702 (= call!671710 ($colon$colon!3150 (exprs!8592 ct1!282) (ite (or c!1365081 c!1365080) (regTwo!38816 r1!2370) r1!2370)))))

(declare-fun b!7348108 () Bool)

(declare-fun e!4399845 () Bool)

(assert (=> b!7348108 (= c!1365081 e!4399845)))

(declare-fun res!2967749 () Bool)

(assert (=> b!7348108 (=> (not res!2967749) (not e!4399845))))

(assert (=> b!7348108 (= res!2967749 (is-Concat!27997 r1!2370))))

(declare-fun e!4399847 () (Set Context!16184))

(assert (=> b!7348108 (= e!4399850 e!4399847)))

(declare-fun b!7348109 () Bool)

(assert (=> b!7348109 (= e!4399845 (nullable!8243 (regOne!38816 r1!2370)))))

(declare-fun b!7348110 () Bool)

(declare-fun call!671709 () (Set Context!16184))

(assert (=> b!7348110 (= e!4399850 (set.union call!671709 call!671707))))

(declare-fun b!7348111 () Bool)

(assert (=> b!7348111 (= e!4399847 (set.union call!671709 call!671706))))

(declare-fun bm!671703 () Bool)

(declare-fun call!671711 () List!71648)

(assert (=> bm!671703 (= call!671707 (derivationStepZipperDown!2978 (ite c!1365082 (regTwo!38817 r1!2370) (ite c!1365081 (regTwo!38816 r1!2370) (ite c!1365080 (regOne!38816 r1!2370) (reg!19481 r1!2370)))) (ite (or c!1365082 c!1365081) ct1!282 (Context!16185 call!671711)) c!10362))))

(declare-fun b!7348112 () Bool)

(assert (=> b!7348112 (= e!4399848 (set.insert ct1!282 (as set.empty (Set Context!16184))))))

(declare-fun bm!671704 () Bool)

(assert (=> bm!671704 (= call!671709 (derivationStepZipperDown!2978 (ite c!1365082 (regOne!38817 r1!2370) (regOne!38816 r1!2370)) (ite c!1365082 ct1!282 (Context!16185 call!671710)) c!10362))))

(declare-fun d!2280017 () Bool)

(declare-fun c!1365083 () Bool)

(assert (=> d!2280017 (= c!1365083 (and (is-ElementMatch!19152 r1!2370) (= (c!1365030 r1!2370) c!10362)))))

(assert (=> d!2280017 (= (derivationStepZipperDown!2978 r1!2370 ct1!282 c!10362) e!4399848)))

(declare-fun b!7348113 () Bool)

(assert (=> b!7348113 (= e!4399847 e!4399846)))

(assert (=> b!7348113 (= c!1365080 (is-Concat!27997 r1!2370))))

(declare-fun bm!671705 () Bool)

(assert (=> bm!671705 (= call!671708 call!671706)))

(declare-fun b!7348114 () Bool)

(declare-fun e!4399849 () (Set Context!16184))

(assert (=> b!7348114 (= e!4399849 call!671708)))

(declare-fun b!7348115 () Bool)

(declare-fun c!1365079 () Bool)

(assert (=> b!7348115 (= c!1365079 (is-Star!19152 r1!2370))))

(assert (=> b!7348115 (= e!4399846 e!4399849)))

(declare-fun b!7348116 () Bool)

(assert (=> b!7348116 (= e!4399849 (as set.empty (Set Context!16184)))))

(declare-fun bm!671706 () Bool)

(assert (=> bm!671706 (= call!671711 call!671710)))

(assert (= (and d!2280017 c!1365083) b!7348112))

(assert (= (and d!2280017 (not c!1365083)) b!7348106))

(assert (= (and b!7348106 c!1365082) b!7348110))

(assert (= (and b!7348106 (not c!1365082)) b!7348108))

(assert (= (and b!7348108 res!2967749) b!7348109))

(assert (= (and b!7348108 c!1365081) b!7348111))

(assert (= (and b!7348108 (not c!1365081)) b!7348113))

(assert (= (and b!7348113 c!1365080) b!7348107))

(assert (= (and b!7348113 (not c!1365080)) b!7348115))

(assert (= (and b!7348115 c!1365079) b!7348114))

(assert (= (and b!7348115 (not c!1365079)) b!7348116))

(assert (= (or b!7348107 b!7348114) bm!671706))

(assert (= (or b!7348107 b!7348114) bm!671705))

(assert (= (or b!7348111 bm!671705) bm!671701))

(assert (= (or b!7348111 bm!671706) bm!671702))

(assert (= (or b!7348110 bm!671701) bm!671703))

(assert (= (or b!7348110 b!7348111) bm!671704))

(assert (=> b!7348109 m!8009938))

(declare-fun m!8010066 () Bool)

(assert (=> bm!671703 m!8010066))

(declare-fun m!8010068 () Bool)

(assert (=> b!7348112 m!8010068))

(declare-fun m!8010070 () Bool)

(assert (=> bm!671704 m!8010070))

(declare-fun m!8010072 () Bool)

(assert (=> bm!671702 m!8010072))

(assert (=> b!7347917 d!2280017))

(declare-fun b!7348117 () Bool)

(declare-fun e!4399854 () Bool)

(declare-fun call!671712 () Bool)

(assert (=> b!7348117 (= e!4399854 call!671712)))

(declare-fun call!671714 () Bool)

(declare-fun c!1365085 () Bool)

(declare-fun bm!671707 () Bool)

(declare-fun c!1365084 () Bool)

(assert (=> bm!671707 (= call!671714 (validRegex!9748 (ite c!1365084 (reg!19481 r1!2370) (ite c!1365085 (regTwo!38817 r1!2370) (regOne!38816 r1!2370)))))))

(declare-fun bm!671708 () Bool)

(declare-fun call!671713 () Bool)

(assert (=> bm!671708 (= call!671713 (validRegex!9748 (ite c!1365085 (regOne!38817 r1!2370) (regTwo!38816 r1!2370))))))

(declare-fun b!7348118 () Bool)

(declare-fun res!2967754 () Bool)

(assert (=> b!7348118 (=> (not res!2967754) (not e!4399854))))

(assert (=> b!7348118 (= res!2967754 call!671713)))

(declare-fun e!4399853 () Bool)

(assert (=> b!7348118 (= e!4399853 e!4399854)))

(declare-fun b!7348119 () Bool)

(declare-fun e!4399855 () Bool)

(declare-fun e!4399851 () Bool)

(assert (=> b!7348119 (= e!4399855 e!4399851)))

(assert (=> b!7348119 (= c!1365084 (is-Star!19152 r1!2370))))

(declare-fun b!7348120 () Bool)

(declare-fun e!4399857 () Bool)

(assert (=> b!7348120 (= e!4399857 call!671714)))

(declare-fun b!7348121 () Bool)

(assert (=> b!7348121 (= e!4399851 e!4399853)))

(assert (=> b!7348121 (= c!1365085 (is-Union!19152 r1!2370))))

(declare-fun d!2280019 () Bool)

(declare-fun res!2967752 () Bool)

(assert (=> d!2280019 (=> res!2967752 e!4399855)))

(assert (=> d!2280019 (= res!2967752 (is-ElementMatch!19152 r1!2370))))

(assert (=> d!2280019 (= (validRegex!9748 r1!2370) e!4399855)))

(declare-fun b!7348122 () Bool)

(declare-fun e!4399856 () Bool)

(assert (=> b!7348122 (= e!4399856 call!671713)))

(declare-fun b!7348123 () Bool)

(declare-fun res!2967750 () Bool)

(declare-fun e!4399852 () Bool)

(assert (=> b!7348123 (=> res!2967750 e!4399852)))

(assert (=> b!7348123 (= res!2967750 (not (is-Concat!27997 r1!2370)))))

(assert (=> b!7348123 (= e!4399853 e!4399852)))

(declare-fun b!7348124 () Bool)

(assert (=> b!7348124 (= e!4399852 e!4399856)))

(declare-fun res!2967751 () Bool)

(assert (=> b!7348124 (=> (not res!2967751) (not e!4399856))))

(assert (=> b!7348124 (= res!2967751 call!671712)))

(declare-fun b!7348125 () Bool)

(assert (=> b!7348125 (= e!4399851 e!4399857)))

(declare-fun res!2967753 () Bool)

(assert (=> b!7348125 (= res!2967753 (not (nullable!8243 (reg!19481 r1!2370))))))

(assert (=> b!7348125 (=> (not res!2967753) (not e!4399857))))

(declare-fun bm!671709 () Bool)

(assert (=> bm!671709 (= call!671712 call!671714)))

(assert (= (and d!2280019 (not res!2967752)) b!7348119))

(assert (= (and b!7348119 c!1365084) b!7348125))

(assert (= (and b!7348119 (not c!1365084)) b!7348121))

(assert (= (and b!7348125 res!2967753) b!7348120))

(assert (= (and b!7348121 c!1365085) b!7348118))

(assert (= (and b!7348121 (not c!1365085)) b!7348123))

(assert (= (and b!7348118 res!2967754) b!7348117))

(assert (= (and b!7348123 (not res!2967750)) b!7348124))

(assert (= (and b!7348124 res!2967751) b!7348122))

(assert (= (or b!7348118 b!7348122) bm!671708))

(assert (= (or b!7348117 b!7348124) bm!671709))

(assert (= (or b!7348120 bm!671709) bm!671707))

(declare-fun m!8010074 () Bool)

(assert (=> bm!671707 m!8010074))

(declare-fun m!8010076 () Bool)

(assert (=> bm!671708 m!8010076))

(declare-fun m!8010078 () Bool)

(assert (=> b!7348125 m!8010078))

(assert (=> start!717574 d!2280019))

(declare-fun bs!1919044 () Bool)

(declare-fun d!2280021 () Bool)

(assert (= bs!1919044 (and d!2280021 b!7347916)))

(declare-fun lambda!456300 () Int)

(assert (=> bs!1919044 (= lambda!456300 lambda!456278)))

(declare-fun bs!1919045 () Bool)

(assert (= bs!1919045 (and d!2280021 d!2279997)))

(assert (=> bs!1919045 (= lambda!456300 lambda!456292)))

(assert (=> d!2280021 (= (inv!91221 cWitness!61) (forall!17976 (exprs!8592 cWitness!61) lambda!456300))))

(declare-fun bs!1919046 () Bool)

(assert (= bs!1919046 d!2280021))

(declare-fun m!8010080 () Bool)

(assert (=> bs!1919046 m!8010080))

(assert (=> start!717574 d!2280021))

(declare-fun bs!1919047 () Bool)

(declare-fun d!2280023 () Bool)

(assert (= bs!1919047 (and d!2280023 b!7347916)))

(declare-fun lambda!456301 () Int)

(assert (=> bs!1919047 (= lambda!456301 lambda!456278)))

(declare-fun bs!1919048 () Bool)

(assert (= bs!1919048 (and d!2280023 d!2279997)))

(assert (=> bs!1919048 (= lambda!456301 lambda!456292)))

(declare-fun bs!1919049 () Bool)

(assert (= bs!1919049 (and d!2280023 d!2280021)))

(assert (=> bs!1919049 (= lambda!456301 lambda!456300)))

(assert (=> d!2280023 (= (inv!91221 ct1!282) (forall!17976 (exprs!8592 ct1!282) lambda!456301))))

(declare-fun bs!1919050 () Bool)

(assert (= bs!1919050 d!2280023))

(declare-fun m!8010082 () Bool)

(assert (=> bs!1919050 m!8010082))

(assert (=> start!717574 d!2280023))

(declare-fun bs!1919051 () Bool)

(declare-fun d!2280025 () Bool)

(assert (= bs!1919051 (and d!2280025 b!7347916)))

(declare-fun lambda!456302 () Int)

(assert (=> bs!1919051 (= lambda!456302 lambda!456278)))

(declare-fun bs!1919052 () Bool)

(assert (= bs!1919052 (and d!2280025 d!2279997)))

(assert (=> bs!1919052 (= lambda!456302 lambda!456292)))

(declare-fun bs!1919053 () Bool)

(assert (= bs!1919053 (and d!2280025 d!2280021)))

(assert (=> bs!1919053 (= lambda!456302 lambda!456300)))

(declare-fun bs!1919054 () Bool)

(assert (= bs!1919054 (and d!2280025 d!2280023)))

(assert (=> bs!1919054 (= lambda!456302 lambda!456301)))

(assert (=> d!2280025 (= (inv!91221 ct2!378) (forall!17976 (exprs!8592 ct2!378) lambda!456302))))

(declare-fun bs!1919055 () Bool)

(assert (= bs!1919055 d!2280025))

(declare-fun m!8010084 () Bool)

(assert (=> bs!1919055 m!8010084))

(assert (=> start!717574 d!2280025))

(declare-fun d!2280027 () Bool)

(declare-fun nullableFct!3281 (Regex!19152) Bool)

(assert (=> d!2280027 (= (nullable!8243 (regOne!38816 r1!2370)) (nullableFct!3281 (regOne!38816 r1!2370)))))

(declare-fun bs!1919056 () Bool)

(assert (= bs!1919056 d!2280027))

(declare-fun m!8010086 () Bool)

(assert (=> bs!1919056 m!8010086))

(assert (=> b!7347910 d!2280027))

(declare-fun b!7348137 () Bool)

(declare-fun e!4399867 () (Set Context!16184))

(declare-fun e!4399869 () (Set Context!16184))

(assert (=> b!7348137 (= e!4399867 e!4399869)))

(declare-fun c!1365094 () Bool)

(assert (=> b!7348137 (= c!1365094 (is-Union!19152 (regTwo!38816 r1!2370)))))

(declare-fun bm!671716 () Bool)

(declare-fun call!671721 () (Set Context!16184))

(declare-fun call!671722 () (Set Context!16184))

(assert (=> bm!671716 (= call!671721 call!671722)))

(declare-fun b!7348138 () Bool)

(declare-fun e!4399865 () (Set Context!16184))

(declare-fun call!671723 () (Set Context!16184))

(assert (=> b!7348138 (= e!4399865 call!671723)))

(declare-fun c!1365092 () Bool)

(declare-fun bm!671717 () Bool)

(declare-fun call!671725 () List!71648)

(declare-fun c!1365093 () Bool)

(assert (=> bm!671717 (= call!671725 ($colon$colon!3150 (exprs!8592 ct1!282) (ite (or c!1365093 c!1365092) (regTwo!38816 (regTwo!38816 r1!2370)) (regTwo!38816 r1!2370))))))

(declare-fun b!7348139 () Bool)

(declare-fun e!4399864 () Bool)

(assert (=> b!7348139 (= c!1365093 e!4399864)))

(declare-fun res!2967756 () Bool)

(assert (=> b!7348139 (=> (not res!2967756) (not e!4399864))))

(assert (=> b!7348139 (= res!2967756 (is-Concat!27997 (regTwo!38816 r1!2370)))))

(declare-fun e!4399866 () (Set Context!16184))

(assert (=> b!7348139 (= e!4399869 e!4399866)))

(declare-fun b!7348140 () Bool)

(assert (=> b!7348140 (= e!4399864 (nullable!8243 (regOne!38816 (regTwo!38816 r1!2370))))))

(declare-fun b!7348141 () Bool)

(declare-fun call!671724 () (Set Context!16184))

(assert (=> b!7348141 (= e!4399869 (set.union call!671724 call!671722))))

(declare-fun b!7348142 () Bool)

(assert (=> b!7348142 (= e!4399866 (set.union call!671724 call!671721))))

(declare-fun bm!671718 () Bool)

(declare-fun call!671726 () List!71648)

(assert (=> bm!671718 (= call!671722 (derivationStepZipperDown!2978 (ite c!1365094 (regTwo!38817 (regTwo!38816 r1!2370)) (ite c!1365093 (regTwo!38816 (regTwo!38816 r1!2370)) (ite c!1365092 (regOne!38816 (regTwo!38816 r1!2370)) (reg!19481 (regTwo!38816 r1!2370))))) (ite (or c!1365094 c!1365093) ct1!282 (Context!16185 call!671726)) c!10362))))

(declare-fun b!7348143 () Bool)

(assert (=> b!7348143 (= e!4399867 (set.insert ct1!282 (as set.empty (Set Context!16184))))))

(declare-fun bm!671719 () Bool)

(assert (=> bm!671719 (= call!671724 (derivationStepZipperDown!2978 (ite c!1365094 (regOne!38817 (regTwo!38816 r1!2370)) (regOne!38816 (regTwo!38816 r1!2370))) (ite c!1365094 ct1!282 (Context!16185 call!671725)) c!10362))))

(declare-fun d!2280029 () Bool)

(declare-fun c!1365095 () Bool)

(assert (=> d!2280029 (= c!1365095 (and (is-ElementMatch!19152 (regTwo!38816 r1!2370)) (= (c!1365030 (regTwo!38816 r1!2370)) c!10362)))))

(assert (=> d!2280029 (= (derivationStepZipperDown!2978 (regTwo!38816 r1!2370) ct1!282 c!10362) e!4399867)))

(declare-fun b!7348144 () Bool)

(assert (=> b!7348144 (= e!4399866 e!4399865)))

(assert (=> b!7348144 (= c!1365092 (is-Concat!27997 (regTwo!38816 r1!2370)))))

(declare-fun bm!671720 () Bool)

(assert (=> bm!671720 (= call!671723 call!671721)))

(declare-fun b!7348145 () Bool)

(declare-fun e!4399868 () (Set Context!16184))

(assert (=> b!7348145 (= e!4399868 call!671723)))

(declare-fun b!7348146 () Bool)

(declare-fun c!1365091 () Bool)

(assert (=> b!7348146 (= c!1365091 (is-Star!19152 (regTwo!38816 r1!2370)))))

(assert (=> b!7348146 (= e!4399865 e!4399868)))

(declare-fun b!7348147 () Bool)

(assert (=> b!7348147 (= e!4399868 (as set.empty (Set Context!16184)))))

(declare-fun bm!671721 () Bool)

(assert (=> bm!671721 (= call!671726 call!671725)))

(assert (= (and d!2280029 c!1365095) b!7348143))

(assert (= (and d!2280029 (not c!1365095)) b!7348137))

(assert (= (and b!7348137 c!1365094) b!7348141))

(assert (= (and b!7348137 (not c!1365094)) b!7348139))

(assert (= (and b!7348139 res!2967756) b!7348140))

(assert (= (and b!7348139 c!1365093) b!7348142))

(assert (= (and b!7348139 (not c!1365093)) b!7348144))

(assert (= (and b!7348144 c!1365092) b!7348138))

(assert (= (and b!7348144 (not c!1365092)) b!7348146))

(assert (= (and b!7348146 c!1365091) b!7348145))

(assert (= (and b!7348146 (not c!1365091)) b!7348147))

(assert (= (or b!7348138 b!7348145) bm!671721))

(assert (= (or b!7348138 b!7348145) bm!671720))

(assert (= (or b!7348142 bm!671720) bm!671716))

(assert (= (or b!7348142 bm!671721) bm!671717))

(assert (= (or b!7348141 bm!671716) bm!671718))

(assert (= (or b!7348141 b!7348142) bm!671719))

(assert (=> b!7348140 m!8010028))

(declare-fun m!8010088 () Bool)

(assert (=> bm!671718 m!8010088))

(assert (=> b!7348143 m!8010068))

(declare-fun m!8010090 () Bool)

(assert (=> bm!671719 m!8010090))

(declare-fun m!8010092 () Bool)

(assert (=> bm!671717 m!8010092))

(assert (=> b!7347915 d!2280029))

(declare-fun b!7348148 () Bool)

(declare-fun e!4399873 () (Set Context!16184))

(declare-fun e!4399875 () (Set Context!16184))

(assert (=> b!7348148 (= e!4399873 e!4399875)))

(declare-fun c!1365099 () Bool)

(assert (=> b!7348148 (= c!1365099 (is-Union!19152 (regOne!38816 r1!2370)))))

(declare-fun bm!671722 () Bool)

(declare-fun call!671727 () (Set Context!16184))

(declare-fun call!671728 () (Set Context!16184))

(assert (=> bm!671722 (= call!671727 call!671728)))

(declare-fun b!7348149 () Bool)

(declare-fun e!4399871 () (Set Context!16184))

(declare-fun call!671729 () (Set Context!16184))

(assert (=> b!7348149 (= e!4399871 call!671729)))

(declare-fun c!1365098 () Bool)

(declare-fun bm!671723 () Bool)

(declare-fun c!1365097 () Bool)

(declare-fun call!671731 () List!71648)

(assert (=> bm!671723 (= call!671731 ($colon$colon!3150 (exprs!8592 (Context!16185 ($colon$colon!3150 (exprs!8592 ct1!282) (regTwo!38816 r1!2370)))) (ite (or c!1365098 c!1365097) (regTwo!38816 (regOne!38816 r1!2370)) (regOne!38816 r1!2370))))))

(declare-fun b!7348150 () Bool)

(declare-fun e!4399870 () Bool)

(assert (=> b!7348150 (= c!1365098 e!4399870)))

(declare-fun res!2967757 () Bool)

(assert (=> b!7348150 (=> (not res!2967757) (not e!4399870))))

(assert (=> b!7348150 (= res!2967757 (is-Concat!27997 (regOne!38816 r1!2370)))))

(declare-fun e!4399872 () (Set Context!16184))

(assert (=> b!7348150 (= e!4399875 e!4399872)))

(declare-fun b!7348151 () Bool)

(assert (=> b!7348151 (= e!4399870 (nullable!8243 (regOne!38816 (regOne!38816 r1!2370))))))

(declare-fun b!7348152 () Bool)

(declare-fun call!671730 () (Set Context!16184))

(assert (=> b!7348152 (= e!4399875 (set.union call!671730 call!671728))))

(declare-fun b!7348153 () Bool)

(assert (=> b!7348153 (= e!4399872 (set.union call!671730 call!671727))))

(declare-fun bm!671724 () Bool)

(declare-fun call!671732 () List!71648)

(assert (=> bm!671724 (= call!671728 (derivationStepZipperDown!2978 (ite c!1365099 (regTwo!38817 (regOne!38816 r1!2370)) (ite c!1365098 (regTwo!38816 (regOne!38816 r1!2370)) (ite c!1365097 (regOne!38816 (regOne!38816 r1!2370)) (reg!19481 (regOne!38816 r1!2370))))) (ite (or c!1365099 c!1365098) (Context!16185 ($colon$colon!3150 (exprs!8592 ct1!282) (regTwo!38816 r1!2370))) (Context!16185 call!671732)) c!10362))))

(declare-fun b!7348154 () Bool)

(assert (=> b!7348154 (= e!4399873 (set.insert (Context!16185 ($colon$colon!3150 (exprs!8592 ct1!282) (regTwo!38816 r1!2370))) (as set.empty (Set Context!16184))))))

(declare-fun bm!671725 () Bool)

(assert (=> bm!671725 (= call!671730 (derivationStepZipperDown!2978 (ite c!1365099 (regOne!38817 (regOne!38816 r1!2370)) (regOne!38816 (regOne!38816 r1!2370))) (ite c!1365099 (Context!16185 ($colon$colon!3150 (exprs!8592 ct1!282) (regTwo!38816 r1!2370))) (Context!16185 call!671731)) c!10362))))

(declare-fun d!2280031 () Bool)

(declare-fun c!1365100 () Bool)

(assert (=> d!2280031 (= c!1365100 (and (is-ElementMatch!19152 (regOne!38816 r1!2370)) (= (c!1365030 (regOne!38816 r1!2370)) c!10362)))))

(assert (=> d!2280031 (= (derivationStepZipperDown!2978 (regOne!38816 r1!2370) (Context!16185 ($colon$colon!3150 (exprs!8592 ct1!282) (regTwo!38816 r1!2370))) c!10362) e!4399873)))

(declare-fun b!7348155 () Bool)

(assert (=> b!7348155 (= e!4399872 e!4399871)))

(assert (=> b!7348155 (= c!1365097 (is-Concat!27997 (regOne!38816 r1!2370)))))

(declare-fun bm!671726 () Bool)

(assert (=> bm!671726 (= call!671729 call!671727)))

(declare-fun b!7348156 () Bool)

(declare-fun e!4399874 () (Set Context!16184))

(assert (=> b!7348156 (= e!4399874 call!671729)))

(declare-fun b!7348157 () Bool)

(declare-fun c!1365096 () Bool)

(assert (=> b!7348157 (= c!1365096 (is-Star!19152 (regOne!38816 r1!2370)))))

(assert (=> b!7348157 (= e!4399871 e!4399874)))

(declare-fun b!7348158 () Bool)

(assert (=> b!7348158 (= e!4399874 (as set.empty (Set Context!16184)))))

(declare-fun bm!671727 () Bool)

(assert (=> bm!671727 (= call!671732 call!671731)))

(assert (= (and d!2280031 c!1365100) b!7348154))

(assert (= (and d!2280031 (not c!1365100)) b!7348148))

(assert (= (and b!7348148 c!1365099) b!7348152))

(assert (= (and b!7348148 (not c!1365099)) b!7348150))

(assert (= (and b!7348150 res!2967757) b!7348151))

(assert (= (and b!7348150 c!1365098) b!7348153))

(assert (= (and b!7348150 (not c!1365098)) b!7348155))

(assert (= (and b!7348155 c!1365097) b!7348149))

(assert (= (and b!7348155 (not c!1365097)) b!7348157))

(assert (= (and b!7348157 c!1365096) b!7348156))

(assert (= (and b!7348157 (not c!1365096)) b!7348158))

(assert (= (or b!7348149 b!7348156) bm!671727))

(assert (= (or b!7348149 b!7348156) bm!671726))

(assert (= (or b!7348153 bm!671726) bm!671722))

(assert (= (or b!7348153 bm!671727) bm!671723))

(assert (= (or b!7348152 bm!671722) bm!671724))

(assert (= (or b!7348152 b!7348153) bm!671725))

(declare-fun m!8010098 () Bool)

(assert (=> b!7348151 m!8010098))

(declare-fun m!8010102 () Bool)

(assert (=> bm!671724 m!8010102))

(declare-fun m!8010104 () Bool)

(assert (=> b!7348154 m!8010104))

(declare-fun m!8010110 () Bool)

(assert (=> bm!671725 m!8010110))

(declare-fun m!8010112 () Bool)

(assert (=> bm!671723 m!8010112))

(assert (=> b!7347915 d!2280031))

(declare-fun d!2280035 () Bool)

(assert (=> d!2280035 (= ($colon$colon!3150 (exprs!8592 ct1!282) (regTwo!38816 r1!2370)) (Cons!71524 (regTwo!38816 r1!2370) (exprs!8592 ct1!282)))))

(assert (=> b!7347915 d!2280035))

(declare-fun b!7348174 () Bool)

(declare-fun e!4399884 () Bool)

(declare-fun tp!2086924 () Bool)

(declare-fun tp!2086925 () Bool)

(assert (=> b!7348174 (= e!4399884 (and tp!2086924 tp!2086925))))

(assert (=> b!7347921 (= tp!2086892 e!4399884)))

(assert (= (and b!7347921 (is-Cons!71524 (exprs!8592 cWitness!61))) b!7348174))

(declare-fun b!7348175 () Bool)

(declare-fun e!4399885 () Bool)

(declare-fun tp!2086926 () Bool)

(declare-fun tp!2086927 () Bool)

(assert (=> b!7348175 (= e!4399885 (and tp!2086926 tp!2086927))))

(assert (=> b!7347914 (= tp!2086890 e!4399885)))

(assert (= (and b!7347914 (is-Cons!71524 (exprs!8592 ct1!282))) b!7348175))

(declare-fun b!7348188 () Bool)

(declare-fun e!4399888 () Bool)

(declare-fun tp!2086940 () Bool)

(assert (=> b!7348188 (= e!4399888 tp!2086940)))

(declare-fun b!7348187 () Bool)

(declare-fun tp!2086942 () Bool)

(declare-fun tp!2086941 () Bool)

(assert (=> b!7348187 (= e!4399888 (and tp!2086942 tp!2086941))))

(assert (=> b!7347919 (= tp!2086891 e!4399888)))

(declare-fun b!7348189 () Bool)

(declare-fun tp!2086939 () Bool)

(declare-fun tp!2086938 () Bool)

(assert (=> b!7348189 (= e!4399888 (and tp!2086939 tp!2086938))))

(declare-fun b!7348186 () Bool)

(assert (=> b!7348186 (= e!4399888 tp_is_empty!48549)))

(assert (= (and b!7347919 (is-ElementMatch!19152 (reg!19481 r1!2370))) b!7348186))

(assert (= (and b!7347919 (is-Concat!27997 (reg!19481 r1!2370))) b!7348187))

(assert (= (and b!7347919 (is-Star!19152 (reg!19481 r1!2370))) b!7348188))

(assert (= (and b!7347919 (is-Union!19152 (reg!19481 r1!2370))) b!7348189))

(declare-fun b!7348190 () Bool)

(declare-fun e!4399889 () Bool)

(declare-fun tp!2086943 () Bool)

(declare-fun tp!2086944 () Bool)

(assert (=> b!7348190 (= e!4399889 (and tp!2086943 tp!2086944))))

(assert (=> b!7347913 (= tp!2086893 e!4399889)))

(assert (= (and b!7347913 (is-Cons!71524 (exprs!8592 ct2!378))) b!7348190))

(declare-fun b!7348193 () Bool)

(declare-fun e!4399890 () Bool)

(declare-fun tp!2086947 () Bool)

(assert (=> b!7348193 (= e!4399890 tp!2086947)))

(declare-fun b!7348192 () Bool)

(declare-fun tp!2086949 () Bool)

(declare-fun tp!2086948 () Bool)

(assert (=> b!7348192 (= e!4399890 (and tp!2086949 tp!2086948))))

(assert (=> b!7347920 (= tp!2086888 e!4399890)))

(declare-fun b!7348194 () Bool)

(declare-fun tp!2086946 () Bool)

(declare-fun tp!2086945 () Bool)

(assert (=> b!7348194 (= e!4399890 (and tp!2086946 tp!2086945))))

(declare-fun b!7348191 () Bool)

(assert (=> b!7348191 (= e!4399890 tp_is_empty!48549)))

(assert (= (and b!7347920 (is-ElementMatch!19152 (regOne!38816 r1!2370))) b!7348191))

(assert (= (and b!7347920 (is-Concat!27997 (regOne!38816 r1!2370))) b!7348192))

(assert (= (and b!7347920 (is-Star!19152 (regOne!38816 r1!2370))) b!7348193))

(assert (= (and b!7347920 (is-Union!19152 (regOne!38816 r1!2370))) b!7348194))

(declare-fun b!7348197 () Bool)

(declare-fun e!4399891 () Bool)

(declare-fun tp!2086952 () Bool)

(assert (=> b!7348197 (= e!4399891 tp!2086952)))

(declare-fun b!7348196 () Bool)

(declare-fun tp!2086954 () Bool)

(declare-fun tp!2086953 () Bool)

(assert (=> b!7348196 (= e!4399891 (and tp!2086954 tp!2086953))))

(assert (=> b!7347920 (= tp!2086889 e!4399891)))

(declare-fun b!7348198 () Bool)

(declare-fun tp!2086951 () Bool)

(declare-fun tp!2086950 () Bool)

(assert (=> b!7348198 (= e!4399891 (and tp!2086951 tp!2086950))))

(declare-fun b!7348195 () Bool)

(assert (=> b!7348195 (= e!4399891 tp_is_empty!48549)))

(assert (= (and b!7347920 (is-ElementMatch!19152 (regTwo!38816 r1!2370))) b!7348195))

(assert (= (and b!7347920 (is-Concat!27997 (regTwo!38816 r1!2370))) b!7348196))

(assert (= (and b!7347920 (is-Star!19152 (regTwo!38816 r1!2370))) b!7348197))

(assert (= (and b!7347920 (is-Union!19152 (regTwo!38816 r1!2370))) b!7348198))

(declare-fun b!7348201 () Bool)

(declare-fun e!4399892 () Bool)

(declare-fun tp!2086957 () Bool)

(assert (=> b!7348201 (= e!4399892 tp!2086957)))

(declare-fun b!7348200 () Bool)

(declare-fun tp!2086959 () Bool)

(declare-fun tp!2086958 () Bool)

(assert (=> b!7348200 (= e!4399892 (and tp!2086959 tp!2086958))))

(assert (=> b!7347909 (= tp!2086894 e!4399892)))

(declare-fun b!7348202 () Bool)

(declare-fun tp!2086956 () Bool)

(declare-fun tp!2086955 () Bool)

(assert (=> b!7348202 (= e!4399892 (and tp!2086956 tp!2086955))))

(declare-fun b!7348199 () Bool)

(assert (=> b!7348199 (= e!4399892 tp_is_empty!48549)))

(assert (= (and b!7347909 (is-ElementMatch!19152 (regOne!38817 r1!2370))) b!7348199))

(assert (= (and b!7347909 (is-Concat!27997 (regOne!38817 r1!2370))) b!7348200))

(assert (= (and b!7347909 (is-Star!19152 (regOne!38817 r1!2370))) b!7348201))

(assert (= (and b!7347909 (is-Union!19152 (regOne!38817 r1!2370))) b!7348202))

(declare-fun b!7348205 () Bool)

(declare-fun e!4399893 () Bool)

(declare-fun tp!2086962 () Bool)

(assert (=> b!7348205 (= e!4399893 tp!2086962)))

(declare-fun b!7348204 () Bool)

(declare-fun tp!2086964 () Bool)

(declare-fun tp!2086963 () Bool)

(assert (=> b!7348204 (= e!4399893 (and tp!2086964 tp!2086963))))

(assert (=> b!7347909 (= tp!2086895 e!4399893)))

(declare-fun b!7348206 () Bool)

(declare-fun tp!2086961 () Bool)

(declare-fun tp!2086960 () Bool)

(assert (=> b!7348206 (= e!4399893 (and tp!2086961 tp!2086960))))

(declare-fun b!7348203 () Bool)

(assert (=> b!7348203 (= e!4399893 tp_is_empty!48549)))

(assert (= (and b!7347909 (is-ElementMatch!19152 (regTwo!38817 r1!2370))) b!7348203))

(assert (= (and b!7347909 (is-Concat!27997 (regTwo!38817 r1!2370))) b!7348204))

(assert (= (and b!7347909 (is-Star!19152 (regTwo!38817 r1!2370))) b!7348205))

(assert (= (and b!7347909 (is-Union!19152 (regTwo!38817 r1!2370))) b!7348206))

(declare-fun b_lambda!284053 () Bool)

(assert (= b_lambda!284051 (or b!7347916 b_lambda!284053)))

(declare-fun bs!1919057 () Bool)

(declare-fun d!2280041 () Bool)

(assert (= bs!1919057 (and d!2280041 b!7347916)))

(assert (=> bs!1919057 (= (dynLambda!29481 lambda!456278 (h!77972 (exprs!8592 cWitness!61))) (validRegex!9748 (h!77972 (exprs!8592 cWitness!61))))))

(declare-fun m!8010124 () Bool)

(assert (=> bs!1919057 m!8010124))

(assert (=> b!7347998 d!2280041))

(push 1)

(assert (not b!7348202))

(assert (not b!7348190))

(assert (not b!7348067))

(assert (not bm!671707))

(assert (not d!2279993))

(assert (not bm!671676))

(assert (not d!2280027))

(assert (not bm!671670))

(assert (not b!7348193))

(assert (not d!2280023))

(assert (not b!7348076))

(assert (not d!2280013))

(assert (not b!7348187))

(assert (not bs!1919057))

(assert (not b!7348175))

(assert (not bm!671724))

(assert (not b!7348206))

(assert (not b!7348189))

(assert (not b!7348194))

(assert (not b!7348105))

(assert (not b!7348198))

(assert (not d!2279987))

(assert (not bm!671675))

(assert (not bm!671723))

(assert (not b!7347974))

(assert (not b!7348151))

(assert (not b!7348125))

(assert tp_is_empty!48549)

(assert (not d!2280025))

(assert (not b!7348204))

(assert (not bm!671703))

(assert (not b!7348200))

(assert (not bm!671717))

(assert (not bm!671669))

(assert (not b!7348109))

(assert (not b!7348205))

(assert (not d!2279997))

(assert (not b!7348201))

(assert (not bm!671699))

(assert (not bm!671698))

(assert (not b!7347999))

(assert (not b!7348140))

(assert (not b!7348174))

(assert (not d!2280021))

(assert (not b_lambda!284053))

(assert (not b!7348188))

(assert (not bm!671718))

(assert (not bm!671702))

(assert (not b!7348077))

(assert (not b!7347973))

(assert (not b!7348196))

(assert (not bm!671677))

(assert (not bm!671704))

(assert (not d!2280009))

(assert (not b!7348197))

(assert (not bm!671719))

(assert (not b!7348192))

(assert (not b!7348034))

(assert (not bm!671708))

(assert (not bm!671671))

(assert (not bm!671725))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

