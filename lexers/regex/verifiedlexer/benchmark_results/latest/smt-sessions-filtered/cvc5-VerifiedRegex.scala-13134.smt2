; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717654 () Bool)

(assert start!717654)

(declare-fun b!7348776 () Bool)

(declare-fun e!4400217 () Bool)

(declare-fun tp_is_empty!48557 () Bool)

(assert (=> b!7348776 (= e!4400217 tp_is_empty!48557)))

(declare-fun res!2967931 () Bool)

(declare-fun e!4400214 () Bool)

(assert (=> start!717654 (=> (not res!2967931) (not e!4400214))))

(declare-datatypes ((C!38586 0))(
  ( (C!38587 (val!29653 Int)) )
))
(declare-datatypes ((Regex!19156 0))(
  ( (ElementMatch!19156 (c!1365226 C!38586)) (Concat!28001 (regOne!38824 Regex!19156) (regTwo!38824 Regex!19156)) (EmptyExpr!19156) (Star!19156 (reg!19485 Regex!19156)) (EmptyLang!19156) (Union!19156 (regOne!38825 Regex!19156) (regTwo!38825 Regex!19156)) )
))
(declare-fun r1!2370 () Regex!19156)

(declare-fun validRegex!9752 (Regex!19156) Bool)

(assert (=> start!717654 (= res!2967931 (validRegex!9752 r1!2370))))

(assert (=> start!717654 e!4400214))

(assert (=> start!717654 tp_is_empty!48557))

(declare-datatypes ((List!71652 0))(
  ( (Nil!71528) (Cons!71528 (h!77976 Regex!19156) (t!386063 List!71652)) )
))
(declare-datatypes ((Context!16192 0))(
  ( (Context!16193 (exprs!8596 List!71652)) )
))
(declare-fun cWitness!61 () Context!16192)

(declare-fun e!4400216 () Bool)

(declare-fun inv!91231 (Context!16192) Bool)

(assert (=> start!717654 (and (inv!91231 cWitness!61) e!4400216)))

(declare-fun ct1!282 () Context!16192)

(declare-fun e!4400221 () Bool)

(assert (=> start!717654 (and (inv!91231 ct1!282) e!4400221)))

(assert (=> start!717654 e!4400217))

(declare-fun ct2!378 () Context!16192)

(declare-fun e!4400218 () Bool)

(assert (=> start!717654 (and (inv!91231 ct2!378) e!4400218)))

(declare-fun b!7348777 () Bool)

(declare-fun e!4400213 () Bool)

(declare-fun lambda!456356 () Int)

(declare-fun forall!17980 (List!71652 Int) Bool)

(assert (=> b!7348777 (= e!4400213 (forall!17980 (exprs!8596 cWitness!61) lambda!456356))))

(declare-fun b!7348778 () Bool)

(declare-fun res!2967937 () Bool)

(declare-fun e!4400215 () Bool)

(assert (=> b!7348778 (=> (not res!2967937) (not e!4400215))))

(declare-fun lt!2611755 () (Set Context!16192))

(assert (=> b!7348778 (= res!2967937 (not (set.member cWitness!61 lt!2611755)))))

(declare-fun b!7348779 () Bool)

(assert (=> b!7348779 (= e!4400215 (not e!4400213))))

(declare-fun res!2967938 () Bool)

(assert (=> b!7348779 (=> res!2967938 e!4400213)))

(declare-fun lt!2611748 () Context!16192)

(declare-fun lt!2611751 () (Set Context!16192))

(assert (=> b!7348779 (= res!2967938 (not (set.member lt!2611748 lt!2611751)))))

(declare-datatypes ((Unit!165265 0))(
  ( (Unit!165266) )
))
(declare-fun lt!2611750 () Unit!165265)

(declare-fun lemmaConcatPreservesForall!1831 (List!71652 List!71652 Int) Unit!165265)

(assert (=> b!7348779 (= lt!2611750 (lemmaConcatPreservesForall!1831 (exprs!8596 cWitness!61) (exprs!8596 ct2!378) lambda!456356))))

(declare-fun lt!2611754 () Context!16192)

(declare-fun c!10362 () C!38586)

(declare-fun derivationStepZipperDown!2982 (Regex!19156 Context!16192 C!38586) (Set Context!16192))

(assert (=> b!7348779 (set.member lt!2611748 (derivationStepZipperDown!2982 (regTwo!38824 r1!2370) lt!2611754 c!10362))))

(declare-fun ++!16974 (List!71652 List!71652) List!71652)

(assert (=> b!7348779 (= lt!2611748 (Context!16193 (++!16974 (exprs!8596 cWitness!61) (exprs!8596 ct2!378))))))

(declare-fun lt!2611749 () Unit!165265)

(assert (=> b!7348779 (= lt!2611749 (lemmaConcatPreservesForall!1831 (exprs!8596 ct1!282) (exprs!8596 ct2!378) lambda!456356))))

(declare-fun lt!2611756 () Unit!165265)

(assert (=> b!7348779 (= lt!2611756 (lemmaConcatPreservesForall!1831 (exprs!8596 cWitness!61) (exprs!8596 ct2!378) lambda!456356))))

(declare-fun lt!2611753 () Unit!165265)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!81 (Regex!19156 Context!16192 Context!16192 Context!16192 C!38586) Unit!165265)

(assert (=> b!7348779 (= lt!2611753 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!81 (regTwo!38824 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7348780 () Bool)

(declare-fun tp!2087170 () Bool)

(assert (=> b!7348780 (= e!4400217 tp!2087170)))

(declare-fun b!7348781 () Bool)

(declare-fun tp!2087164 () Bool)

(assert (=> b!7348781 (= e!4400216 tp!2087164)))

(declare-fun b!7348782 () Bool)

(declare-fun e!4400220 () Bool)

(declare-fun e!4400219 () Bool)

(assert (=> b!7348782 (= e!4400220 e!4400219)))

(declare-fun res!2967935 () Bool)

(assert (=> b!7348782 (=> (not res!2967935) (not e!4400219))))

(assert (=> b!7348782 (= res!2967935 (and (or (not (is-ElementMatch!19156 r1!2370)) (not (= c!10362 (c!1365226 r1!2370)))) (not (is-Union!19156 r1!2370)) (is-Concat!28001 r1!2370)))))

(assert (=> b!7348782 (= lt!2611751 (derivationStepZipperDown!2982 r1!2370 lt!2611754 c!10362))))

(assert (=> b!7348782 (= lt!2611754 (Context!16193 (++!16974 (exprs!8596 ct1!282) (exprs!8596 ct2!378))))))

(declare-fun lt!2611752 () Unit!165265)

(assert (=> b!7348782 (= lt!2611752 (lemmaConcatPreservesForall!1831 (exprs!8596 ct1!282) (exprs!8596 ct2!378) lambda!456356))))

(declare-fun b!7348783 () Bool)

(assert (=> b!7348783 (= e!4400219 e!4400215)))

(declare-fun res!2967933 () Bool)

(assert (=> b!7348783 (=> (not res!2967933) (not e!4400215))))

(declare-fun lt!2611757 () (Set Context!16192))

(assert (=> b!7348783 (= res!2967933 (= lt!2611757 (set.union lt!2611755 (derivationStepZipperDown!2982 (regTwo!38824 r1!2370) ct1!282 c!10362))))))

(declare-fun $colon$colon!3154 (List!71652 Regex!19156) List!71652)

(assert (=> b!7348783 (= lt!2611755 (derivationStepZipperDown!2982 (regOne!38824 r1!2370) (Context!16193 ($colon$colon!3154 (exprs!8596 ct1!282) (regTwo!38824 r1!2370))) c!10362))))

(declare-fun b!7348784 () Bool)

(declare-fun res!2967936 () Bool)

(assert (=> b!7348784 (=> (not res!2967936) (not e!4400219))))

(declare-fun nullable!8247 (Regex!19156) Bool)

(assert (=> b!7348784 (= res!2967936 (nullable!8247 (regOne!38824 r1!2370)))))

(declare-fun b!7348785 () Bool)

(declare-fun tp!2087169 () Bool)

(assert (=> b!7348785 (= e!4400221 tp!2087169)))

(declare-fun b!7348786 () Bool)

(declare-fun res!2967932 () Bool)

(assert (=> b!7348786 (=> (not res!2967932) (not e!4400219))))

(assert (=> b!7348786 (= res!2967932 (validRegex!9752 (regTwo!38824 r1!2370)))))

(declare-fun b!7348787 () Bool)

(declare-fun tp!2087171 () Bool)

(assert (=> b!7348787 (= e!4400218 tp!2087171)))

(declare-fun b!7348788 () Bool)

(declare-fun tp!2087167 () Bool)

(declare-fun tp!2087168 () Bool)

(assert (=> b!7348788 (= e!4400217 (and tp!2087167 tp!2087168))))

(declare-fun b!7348789 () Bool)

(declare-fun tp!2087166 () Bool)

(declare-fun tp!2087165 () Bool)

(assert (=> b!7348789 (= e!4400217 (and tp!2087166 tp!2087165))))

(declare-fun b!7348790 () Bool)

(assert (=> b!7348790 (= e!4400214 e!4400220)))

(declare-fun res!2967934 () Bool)

(assert (=> b!7348790 (=> (not res!2967934) (not e!4400220))))

(assert (=> b!7348790 (= res!2967934 (set.member cWitness!61 lt!2611757))))

(assert (=> b!7348790 (= lt!2611757 (derivationStepZipperDown!2982 r1!2370 ct1!282 c!10362))))

(assert (= (and start!717654 res!2967931) b!7348790))

(assert (= (and b!7348790 res!2967934) b!7348782))

(assert (= (and b!7348782 res!2967935) b!7348784))

(assert (= (and b!7348784 res!2967936) b!7348786))

(assert (= (and b!7348786 res!2967932) b!7348783))

(assert (= (and b!7348783 res!2967933) b!7348778))

(assert (= (and b!7348778 res!2967937) b!7348779))

(assert (= (and b!7348779 (not res!2967938)) b!7348777))

(assert (= start!717654 b!7348781))

(assert (= start!717654 b!7348785))

(assert (= (and start!717654 (is-ElementMatch!19156 r1!2370)) b!7348776))

(assert (= (and start!717654 (is-Concat!28001 r1!2370)) b!7348788))

(assert (= (and start!717654 (is-Star!19156 r1!2370)) b!7348780))

(assert (= (and start!717654 (is-Union!19156 r1!2370)) b!7348789))

(assert (= start!717654 b!7348787))

(declare-fun m!8010522 () Bool)

(assert (=> b!7348779 m!8010522))

(declare-fun m!8010524 () Bool)

(assert (=> b!7348779 m!8010524))

(declare-fun m!8010526 () Bool)

(assert (=> b!7348779 m!8010526))

(declare-fun m!8010528 () Bool)

(assert (=> b!7348779 m!8010528))

(declare-fun m!8010530 () Bool)

(assert (=> b!7348779 m!8010530))

(assert (=> b!7348779 m!8010522))

(declare-fun m!8010532 () Bool)

(assert (=> b!7348779 m!8010532))

(declare-fun m!8010534 () Bool)

(assert (=> b!7348779 m!8010534))

(declare-fun m!8010536 () Bool)

(assert (=> b!7348782 m!8010536))

(declare-fun m!8010538 () Bool)

(assert (=> b!7348782 m!8010538))

(assert (=> b!7348782 m!8010534))

(declare-fun m!8010540 () Bool)

(assert (=> b!7348777 m!8010540))

(declare-fun m!8010542 () Bool)

(assert (=> b!7348784 m!8010542))

(declare-fun m!8010544 () Bool)

(assert (=> b!7348786 m!8010544))

(declare-fun m!8010546 () Bool)

(assert (=> b!7348778 m!8010546))

(declare-fun m!8010548 () Bool)

(assert (=> b!7348790 m!8010548))

(declare-fun m!8010550 () Bool)

(assert (=> b!7348790 m!8010550))

(declare-fun m!8010552 () Bool)

(assert (=> start!717654 m!8010552))

(declare-fun m!8010554 () Bool)

(assert (=> start!717654 m!8010554))

(declare-fun m!8010556 () Bool)

(assert (=> start!717654 m!8010556))

(declare-fun m!8010558 () Bool)

(assert (=> start!717654 m!8010558))

(declare-fun m!8010560 () Bool)

(assert (=> b!7348783 m!8010560))

(declare-fun m!8010562 () Bool)

(assert (=> b!7348783 m!8010562))

(declare-fun m!8010564 () Bool)

(assert (=> b!7348783 m!8010564))

(push 1)

(assert (not b!7348783))

(assert (not start!717654))

(assert (not b!7348785))

(assert tp_is_empty!48557)

(assert (not b!7348779))

(assert (not b!7348789))

(assert (not b!7348790))

(assert (not b!7348780))

(assert (not b!7348784))

(assert (not b!7348777))

(assert (not b!7348781))

(assert (not b!7348786))

(assert (not b!7348787))

(assert (not b!7348788))

(assert (not b!7348782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2280151 () Bool)

(declare-fun res!2967977 () Bool)

(declare-fun e!4400267 () Bool)

(assert (=> d!2280151 (=> res!2967977 e!4400267)))

(assert (=> d!2280151 (= res!2967977 (is-Nil!71528 (exprs!8596 cWitness!61)))))

(assert (=> d!2280151 (= (forall!17980 (exprs!8596 cWitness!61) lambda!456356) e!4400267)))

(declare-fun b!7348858 () Bool)

(declare-fun e!4400268 () Bool)

(assert (=> b!7348858 (= e!4400267 e!4400268)))

(declare-fun res!2967978 () Bool)

(assert (=> b!7348858 (=> (not res!2967978) (not e!4400268))))

(declare-fun dynLambda!29485 (Int Regex!19156) Bool)

(assert (=> b!7348858 (= res!2967978 (dynLambda!29485 lambda!456356 (h!77976 (exprs!8596 cWitness!61))))))

(declare-fun b!7348859 () Bool)

(assert (=> b!7348859 (= e!4400268 (forall!17980 (t!386063 (exprs!8596 cWitness!61)) lambda!456356))))

(assert (= (and d!2280151 (not res!2967977)) b!7348858))

(assert (= (and b!7348858 res!2967978) b!7348859))

(declare-fun b_lambda!284075 () Bool)

(assert (=> (not b_lambda!284075) (not b!7348858)))

(declare-fun m!8010610 () Bool)

(assert (=> b!7348858 m!8010610))

(declare-fun m!8010612 () Bool)

(assert (=> b!7348859 m!8010612))

(assert (=> b!7348777 d!2280151))

(declare-fun b!7348891 () Bool)

(declare-fun c!1365246 () Bool)

(declare-fun e!4400292 () Bool)

(assert (=> b!7348891 (= c!1365246 e!4400292)))

(declare-fun res!2967986 () Bool)

(assert (=> b!7348891 (=> (not res!2967986) (not e!4400292))))

(assert (=> b!7348891 (= res!2967986 (is-Concat!28001 r1!2370))))

(declare-fun e!4400289 () (Set Context!16192))

(declare-fun e!4400291 () (Set Context!16192))

(assert (=> b!7348891 (= e!4400289 e!4400291)))

(declare-fun c!1365248 () Bool)

(declare-fun call!671889 () (Set Context!16192))

(declare-fun c!1365245 () Bool)

(declare-fun bm!671884 () Bool)

(declare-fun call!671892 () List!71652)

(assert (=> bm!671884 (= call!671889 (derivationStepZipperDown!2982 (ite c!1365245 (regTwo!38825 r1!2370) (ite c!1365246 (regTwo!38824 r1!2370) (ite c!1365248 (regOne!38824 r1!2370) (reg!19485 r1!2370)))) (ite (or c!1365245 c!1365246) lt!2611754 (Context!16193 call!671892)) c!10362))))

(declare-fun d!2280153 () Bool)

(declare-fun c!1365247 () Bool)

(assert (=> d!2280153 (= c!1365247 (and (is-ElementMatch!19156 r1!2370) (= (c!1365226 r1!2370) c!10362)))))

(declare-fun e!4400288 () (Set Context!16192))

(assert (=> d!2280153 (= (derivationStepZipperDown!2982 r1!2370 lt!2611754 c!10362) e!4400288)))

(declare-fun b!7348892 () Bool)

(assert (=> b!7348892 (= e!4400288 (set.insert lt!2611754 (as set.empty (Set Context!16192))))))

(declare-fun b!7348893 () Bool)

(declare-fun e!4400290 () (Set Context!16192))

(assert (=> b!7348893 (= e!4400290 (as set.empty (Set Context!16192)))))

(declare-fun bm!671885 () Bool)

(declare-fun call!671894 () List!71652)

(assert (=> bm!671885 (= call!671894 ($colon$colon!3154 (exprs!8596 lt!2611754) (ite (or c!1365246 c!1365248) (regTwo!38824 r1!2370) r1!2370)))))

(declare-fun b!7348894 () Bool)

(declare-fun c!1365244 () Bool)

(assert (=> b!7348894 (= c!1365244 (is-Star!19156 r1!2370))))

(declare-fun e!4400293 () (Set Context!16192))

(assert (=> b!7348894 (= e!4400293 e!4400290)))

(declare-fun bm!671886 () Bool)

(declare-fun call!671893 () (Set Context!16192))

(declare-fun call!671891 () (Set Context!16192))

(assert (=> bm!671886 (= call!671893 call!671891)))

(declare-fun b!7348895 () Bool)

(declare-fun call!671890 () (Set Context!16192))

(assert (=> b!7348895 (= e!4400291 (set.union call!671890 call!671891))))

(declare-fun bm!671887 () Bool)

(assert (=> bm!671887 (= call!671891 call!671889)))

(declare-fun b!7348896 () Bool)

(assert (=> b!7348896 (= e!4400293 call!671893)))

(declare-fun b!7348897 () Bool)

(assert (=> b!7348897 (= e!4400291 e!4400293)))

(assert (=> b!7348897 (= c!1365248 (is-Concat!28001 r1!2370))))

(declare-fun b!7348898 () Bool)

(assert (=> b!7348898 (= e!4400288 e!4400289)))

(assert (=> b!7348898 (= c!1365245 (is-Union!19156 r1!2370))))

(declare-fun b!7348899 () Bool)

(assert (=> b!7348899 (= e!4400290 call!671893)))

(declare-fun bm!671888 () Bool)

(assert (=> bm!671888 (= call!671892 call!671894)))

(declare-fun bm!671889 () Bool)

(assert (=> bm!671889 (= call!671890 (derivationStepZipperDown!2982 (ite c!1365245 (regOne!38825 r1!2370) (regOne!38824 r1!2370)) (ite c!1365245 lt!2611754 (Context!16193 call!671894)) c!10362))))

(declare-fun b!7348900 () Bool)

(assert (=> b!7348900 (= e!4400292 (nullable!8247 (regOne!38824 r1!2370)))))

(declare-fun b!7348901 () Bool)

(assert (=> b!7348901 (= e!4400289 (set.union call!671890 call!671889))))

(assert (= (and d!2280153 c!1365247) b!7348892))

(assert (= (and d!2280153 (not c!1365247)) b!7348898))

(assert (= (and b!7348898 c!1365245) b!7348901))

(assert (= (and b!7348898 (not c!1365245)) b!7348891))

(assert (= (and b!7348891 res!2967986) b!7348900))

(assert (= (and b!7348891 c!1365246) b!7348895))

(assert (= (and b!7348891 (not c!1365246)) b!7348897))

(assert (= (and b!7348897 c!1365248) b!7348896))

(assert (= (and b!7348897 (not c!1365248)) b!7348894))

(assert (= (and b!7348894 c!1365244) b!7348899))

(assert (= (and b!7348894 (not c!1365244)) b!7348893))

(assert (= (or b!7348896 b!7348899) bm!671888))

(assert (= (or b!7348896 b!7348899) bm!671886))

(assert (= (or b!7348895 bm!671886) bm!671887))

(assert (= (or b!7348895 bm!671888) bm!671885))

(assert (= (or b!7348901 bm!671887) bm!671884))

(assert (= (or b!7348901 b!7348895) bm!671889))

(declare-fun m!8010620 () Bool)

(assert (=> bm!671885 m!8010620))

(assert (=> b!7348900 m!8010542))

(declare-fun m!8010622 () Bool)

(assert (=> bm!671884 m!8010622))

(declare-fun m!8010624 () Bool)

(assert (=> b!7348892 m!8010624))

(declare-fun m!8010626 () Bool)

(assert (=> bm!671889 m!8010626))

(assert (=> b!7348782 d!2280153))

(declare-fun b!7348932 () Bool)

(declare-fun e!4400311 () List!71652)

(assert (=> b!7348932 (= e!4400311 (exprs!8596 ct2!378))))

(declare-fun b!7348933 () Bool)

(assert (=> b!7348933 (= e!4400311 (Cons!71528 (h!77976 (exprs!8596 ct1!282)) (++!16974 (t!386063 (exprs!8596 ct1!282)) (exprs!8596 ct2!378))))))

(declare-fun b!7348934 () Bool)

(declare-fun res!2967993 () Bool)

(declare-fun e!4400310 () Bool)

(assert (=> b!7348934 (=> (not res!2967993) (not e!4400310))))

(declare-fun lt!2611790 () List!71652)

(declare-fun size!42043 (List!71652) Int)

(assert (=> b!7348934 (= res!2967993 (= (size!42043 lt!2611790) (+ (size!42043 (exprs!8596 ct1!282)) (size!42043 (exprs!8596 ct2!378)))))))

(declare-fun b!7348935 () Bool)

(assert (=> b!7348935 (= e!4400310 (or (not (= (exprs!8596 ct2!378) Nil!71528)) (= lt!2611790 (exprs!8596 ct1!282))))))

(declare-fun d!2280157 () Bool)

(assert (=> d!2280157 e!4400310))

(declare-fun res!2967994 () Bool)

(assert (=> d!2280157 (=> (not res!2967994) (not e!4400310))))

(declare-fun content!15064 (List!71652) (Set Regex!19156))

(assert (=> d!2280157 (= res!2967994 (= (content!15064 lt!2611790) (set.union (content!15064 (exprs!8596 ct1!282)) (content!15064 (exprs!8596 ct2!378)))))))

(assert (=> d!2280157 (= lt!2611790 e!4400311)))

(declare-fun c!1365261 () Bool)

(assert (=> d!2280157 (= c!1365261 (is-Nil!71528 (exprs!8596 ct1!282)))))

(assert (=> d!2280157 (= (++!16974 (exprs!8596 ct1!282) (exprs!8596 ct2!378)) lt!2611790)))

(assert (= (and d!2280157 c!1365261) b!7348932))

(assert (= (and d!2280157 (not c!1365261)) b!7348933))

(assert (= (and d!2280157 res!2967994) b!7348934))

(assert (= (and b!7348934 res!2967993) b!7348935))

(declare-fun m!8010628 () Bool)

(assert (=> b!7348933 m!8010628))

(declare-fun m!8010630 () Bool)

(assert (=> b!7348934 m!8010630))

(declare-fun m!8010632 () Bool)

(assert (=> b!7348934 m!8010632))

(declare-fun m!8010634 () Bool)

(assert (=> b!7348934 m!8010634))

(declare-fun m!8010636 () Bool)

(assert (=> d!2280157 m!8010636))

(declare-fun m!8010638 () Bool)

(assert (=> d!2280157 m!8010638))

(declare-fun m!8010640 () Bool)

(assert (=> d!2280157 m!8010640))

(assert (=> b!7348782 d!2280157))

(declare-fun d!2280159 () Bool)

(assert (=> d!2280159 (forall!17980 (++!16974 (exprs!8596 ct1!282) (exprs!8596 ct2!378)) lambda!456356)))

(declare-fun lt!2611793 () Unit!165265)

(declare-fun choose!57164 (List!71652 List!71652 Int) Unit!165265)

(assert (=> d!2280159 (= lt!2611793 (choose!57164 (exprs!8596 ct1!282) (exprs!8596 ct2!378) lambda!456356))))

(assert (=> d!2280159 (forall!17980 (exprs!8596 ct1!282) lambda!456356)))

(assert (=> d!2280159 (= (lemmaConcatPreservesForall!1831 (exprs!8596 ct1!282) (exprs!8596 ct2!378) lambda!456356) lt!2611793)))

(declare-fun bs!1919108 () Bool)

(assert (= bs!1919108 d!2280159))

(assert (=> bs!1919108 m!8010538))

(assert (=> bs!1919108 m!8010538))

(declare-fun m!8010642 () Bool)

(assert (=> bs!1919108 m!8010642))

(declare-fun m!8010644 () Bool)

(assert (=> bs!1919108 m!8010644))

(declare-fun m!8010646 () Bool)

(assert (=> bs!1919108 m!8010646))

(assert (=> b!7348782 d!2280159))

(declare-fun b!7348954 () Bool)

(declare-fun e!4400326 () Bool)

(declare-fun call!671915 () Bool)

(assert (=> b!7348954 (= e!4400326 call!671915)))

(declare-fun bm!671908 () Bool)

(declare-fun call!671913 () Bool)

(assert (=> bm!671908 (= call!671913 call!671915)))

(declare-fun c!1365266 () Bool)

(declare-fun bm!671909 () Bool)

(declare-fun c!1365267 () Bool)

(assert (=> bm!671909 (= call!671915 (validRegex!9752 (ite c!1365267 (reg!19485 (regTwo!38824 r1!2370)) (ite c!1365266 (regOne!38825 (regTwo!38824 r1!2370)) (regTwo!38824 (regTwo!38824 r1!2370))))))))

(declare-fun b!7348955 () Bool)

(declare-fun res!2968007 () Bool)

(declare-fun e!4400328 () Bool)

(assert (=> b!7348955 (=> res!2968007 e!4400328)))

(assert (=> b!7348955 (= res!2968007 (not (is-Concat!28001 (regTwo!38824 r1!2370))))))

(declare-fun e!4400331 () Bool)

(assert (=> b!7348955 (= e!4400331 e!4400328)))

(declare-fun bm!671910 () Bool)

(declare-fun call!671914 () Bool)

(assert (=> bm!671910 (= call!671914 (validRegex!9752 (ite c!1365266 (regTwo!38825 (regTwo!38824 r1!2370)) (regOne!38824 (regTwo!38824 r1!2370)))))))

(declare-fun b!7348956 () Bool)

(declare-fun e!4400332 () Bool)

(assert (=> b!7348956 (= e!4400332 call!671913)))

(declare-fun b!7348958 () Bool)

(declare-fun res!2968008 () Bool)

(declare-fun e!4400327 () Bool)

(assert (=> b!7348958 (=> (not res!2968008) (not e!4400327))))

(assert (=> b!7348958 (= res!2968008 call!671913)))

(assert (=> b!7348958 (= e!4400331 e!4400327)))

(declare-fun b!7348959 () Bool)

(assert (=> b!7348959 (= e!4400328 e!4400332)))

(declare-fun res!2968009 () Bool)

(assert (=> b!7348959 (=> (not res!2968009) (not e!4400332))))

(assert (=> b!7348959 (= res!2968009 call!671914)))

(declare-fun b!7348960 () Bool)

(assert (=> b!7348960 (= e!4400327 call!671914)))

(declare-fun b!7348961 () Bool)

(declare-fun e!4400329 () Bool)

(declare-fun e!4400330 () Bool)

(assert (=> b!7348961 (= e!4400329 e!4400330)))

(assert (=> b!7348961 (= c!1365267 (is-Star!19156 (regTwo!38824 r1!2370)))))

(declare-fun b!7348962 () Bool)

(assert (=> b!7348962 (= e!4400330 e!4400326)))

(declare-fun res!2968005 () Bool)

(assert (=> b!7348962 (= res!2968005 (not (nullable!8247 (reg!19485 (regTwo!38824 r1!2370)))))))

(assert (=> b!7348962 (=> (not res!2968005) (not e!4400326))))

(declare-fun b!7348957 () Bool)

(assert (=> b!7348957 (= e!4400330 e!4400331)))

(assert (=> b!7348957 (= c!1365266 (is-Union!19156 (regTwo!38824 r1!2370)))))

(declare-fun d!2280161 () Bool)

(declare-fun res!2968006 () Bool)

(assert (=> d!2280161 (=> res!2968006 e!4400329)))

(assert (=> d!2280161 (= res!2968006 (is-ElementMatch!19156 (regTwo!38824 r1!2370)))))

(assert (=> d!2280161 (= (validRegex!9752 (regTwo!38824 r1!2370)) e!4400329)))

(assert (= (and d!2280161 (not res!2968006)) b!7348961))

(assert (= (and b!7348961 c!1365267) b!7348962))

(assert (= (and b!7348961 (not c!1365267)) b!7348957))

(assert (= (and b!7348962 res!2968005) b!7348954))

(assert (= (and b!7348957 c!1365266) b!7348958))

(assert (= (and b!7348957 (not c!1365266)) b!7348955))

(assert (= (and b!7348958 res!2968008) b!7348960))

(assert (= (and b!7348955 (not res!2968007)) b!7348959))

(assert (= (and b!7348959 res!2968009) b!7348956))

(assert (= (or b!7348958 b!7348956) bm!671908))

(assert (= (or b!7348960 b!7348959) bm!671910))

(assert (= (or b!7348954 bm!671908) bm!671909))

(declare-fun m!8010648 () Bool)

(assert (=> bm!671909 m!8010648))

(declare-fun m!8010650 () Bool)

(assert (=> bm!671910 m!8010650))

(declare-fun m!8010652 () Bool)

(assert (=> b!7348962 m!8010652))

(assert (=> b!7348786 d!2280161))

(declare-fun b!7348963 () Bool)

(declare-fun e!4400333 () Bool)

(declare-fun call!671918 () Bool)

(assert (=> b!7348963 (= e!4400333 call!671918)))

(declare-fun bm!671911 () Bool)

(declare-fun call!671916 () Bool)

(assert (=> bm!671911 (= call!671916 call!671918)))

(declare-fun bm!671912 () Bool)

(declare-fun c!1365268 () Bool)

(declare-fun c!1365269 () Bool)

(assert (=> bm!671912 (= call!671918 (validRegex!9752 (ite c!1365269 (reg!19485 r1!2370) (ite c!1365268 (regOne!38825 r1!2370) (regTwo!38824 r1!2370)))))))

(declare-fun b!7348964 () Bool)

(declare-fun res!2968012 () Bool)

(declare-fun e!4400335 () Bool)

(assert (=> b!7348964 (=> res!2968012 e!4400335)))

(assert (=> b!7348964 (= res!2968012 (not (is-Concat!28001 r1!2370)))))

(declare-fun e!4400338 () Bool)

(assert (=> b!7348964 (= e!4400338 e!4400335)))

(declare-fun bm!671913 () Bool)

(declare-fun call!671917 () Bool)

(assert (=> bm!671913 (= call!671917 (validRegex!9752 (ite c!1365268 (regTwo!38825 r1!2370) (regOne!38824 r1!2370))))))

(declare-fun b!7348965 () Bool)

(declare-fun e!4400339 () Bool)

(assert (=> b!7348965 (= e!4400339 call!671916)))

(declare-fun b!7348967 () Bool)

(declare-fun res!2968013 () Bool)

(declare-fun e!4400334 () Bool)

(assert (=> b!7348967 (=> (not res!2968013) (not e!4400334))))

(assert (=> b!7348967 (= res!2968013 call!671916)))

(assert (=> b!7348967 (= e!4400338 e!4400334)))

(declare-fun b!7348968 () Bool)

(assert (=> b!7348968 (= e!4400335 e!4400339)))

(declare-fun res!2968014 () Bool)

(assert (=> b!7348968 (=> (not res!2968014) (not e!4400339))))

(assert (=> b!7348968 (= res!2968014 call!671917)))

(declare-fun b!7348969 () Bool)

(assert (=> b!7348969 (= e!4400334 call!671917)))

(declare-fun b!7348970 () Bool)

(declare-fun e!4400336 () Bool)

(declare-fun e!4400337 () Bool)

(assert (=> b!7348970 (= e!4400336 e!4400337)))

(assert (=> b!7348970 (= c!1365269 (is-Star!19156 r1!2370))))

(declare-fun b!7348971 () Bool)

(assert (=> b!7348971 (= e!4400337 e!4400333)))

(declare-fun res!2968010 () Bool)

(assert (=> b!7348971 (= res!2968010 (not (nullable!8247 (reg!19485 r1!2370))))))

(assert (=> b!7348971 (=> (not res!2968010) (not e!4400333))))

(declare-fun b!7348966 () Bool)

(assert (=> b!7348966 (= e!4400337 e!4400338)))

(assert (=> b!7348966 (= c!1365268 (is-Union!19156 r1!2370))))

(declare-fun d!2280163 () Bool)

(declare-fun res!2968011 () Bool)

(assert (=> d!2280163 (=> res!2968011 e!4400336)))

(assert (=> d!2280163 (= res!2968011 (is-ElementMatch!19156 r1!2370))))

(assert (=> d!2280163 (= (validRegex!9752 r1!2370) e!4400336)))

(assert (= (and d!2280163 (not res!2968011)) b!7348970))

(assert (= (and b!7348970 c!1365269) b!7348971))

(assert (= (and b!7348970 (not c!1365269)) b!7348966))

(assert (= (and b!7348971 res!2968010) b!7348963))

(assert (= (and b!7348966 c!1365268) b!7348967))

(assert (= (and b!7348966 (not c!1365268)) b!7348964))

(assert (= (and b!7348967 res!2968013) b!7348969))

(assert (= (and b!7348964 (not res!2968012)) b!7348968))

(assert (= (and b!7348968 res!2968014) b!7348965))

(assert (= (or b!7348967 b!7348965) bm!671911))

(assert (= (or b!7348969 b!7348968) bm!671913))

(assert (= (or b!7348963 bm!671911) bm!671912))

(declare-fun m!8010654 () Bool)

(assert (=> bm!671912 m!8010654))

(declare-fun m!8010656 () Bool)

(assert (=> bm!671913 m!8010656))

(declare-fun m!8010658 () Bool)

(assert (=> b!7348971 m!8010658))

(assert (=> start!717654 d!2280163))

(declare-fun bs!1919109 () Bool)

(declare-fun d!2280165 () Bool)

(assert (= bs!1919109 (and d!2280165 b!7348782)))

(declare-fun lambda!456370 () Int)

(assert (=> bs!1919109 (= lambda!456370 lambda!456356)))

(assert (=> d!2280165 (= (inv!91231 cWitness!61) (forall!17980 (exprs!8596 cWitness!61) lambda!456370))))

(declare-fun bs!1919110 () Bool)

(assert (= bs!1919110 d!2280165))

(declare-fun m!8010660 () Bool)

(assert (=> bs!1919110 m!8010660))

(assert (=> start!717654 d!2280165))

(declare-fun bs!1919111 () Bool)

(declare-fun d!2280167 () Bool)

(assert (= bs!1919111 (and d!2280167 b!7348782)))

(declare-fun lambda!456371 () Int)

(assert (=> bs!1919111 (= lambda!456371 lambda!456356)))

(declare-fun bs!1919112 () Bool)

(assert (= bs!1919112 (and d!2280167 d!2280165)))

(assert (=> bs!1919112 (= lambda!456371 lambda!456370)))

(assert (=> d!2280167 (= (inv!91231 ct1!282) (forall!17980 (exprs!8596 ct1!282) lambda!456371))))

(declare-fun bs!1919113 () Bool)

(assert (= bs!1919113 d!2280167))

(declare-fun m!8010662 () Bool)

(assert (=> bs!1919113 m!8010662))

(assert (=> start!717654 d!2280167))

(declare-fun bs!1919114 () Bool)

(declare-fun d!2280169 () Bool)

(assert (= bs!1919114 (and d!2280169 b!7348782)))

(declare-fun lambda!456372 () Int)

(assert (=> bs!1919114 (= lambda!456372 lambda!456356)))

(declare-fun bs!1919115 () Bool)

(assert (= bs!1919115 (and d!2280169 d!2280165)))

(assert (=> bs!1919115 (= lambda!456372 lambda!456370)))

(declare-fun bs!1919116 () Bool)

(assert (= bs!1919116 (and d!2280169 d!2280167)))

(assert (=> bs!1919116 (= lambda!456372 lambda!456371)))

(assert (=> d!2280169 (= (inv!91231 ct2!378) (forall!17980 (exprs!8596 ct2!378) lambda!456372))))

(declare-fun bs!1919117 () Bool)

(assert (= bs!1919117 d!2280169))

(declare-fun m!8010664 () Bool)

(assert (=> bs!1919117 m!8010664))

(assert (=> start!717654 d!2280169))

(declare-fun b!7348972 () Bool)

(declare-fun c!1365272 () Bool)

(declare-fun e!4400344 () Bool)

(assert (=> b!7348972 (= c!1365272 e!4400344)))

(declare-fun res!2968015 () Bool)

(assert (=> b!7348972 (=> (not res!2968015) (not e!4400344))))

(assert (=> b!7348972 (= res!2968015 (is-Concat!28001 r1!2370))))

(declare-fun e!4400341 () (Set Context!16192))

(declare-fun e!4400343 () (Set Context!16192))

(assert (=> b!7348972 (= e!4400341 e!4400343)))

(declare-fun c!1365271 () Bool)

(declare-fun call!671919 () (Set Context!16192))

(declare-fun c!1365274 () Bool)

(declare-fun call!671922 () List!71652)

(declare-fun bm!671914 () Bool)

(assert (=> bm!671914 (= call!671919 (derivationStepZipperDown!2982 (ite c!1365271 (regTwo!38825 r1!2370) (ite c!1365272 (regTwo!38824 r1!2370) (ite c!1365274 (regOne!38824 r1!2370) (reg!19485 r1!2370)))) (ite (or c!1365271 c!1365272) ct1!282 (Context!16193 call!671922)) c!10362))))

(declare-fun d!2280171 () Bool)

(declare-fun c!1365273 () Bool)

(assert (=> d!2280171 (= c!1365273 (and (is-ElementMatch!19156 r1!2370) (= (c!1365226 r1!2370) c!10362)))))

(declare-fun e!4400340 () (Set Context!16192))

(assert (=> d!2280171 (= (derivationStepZipperDown!2982 r1!2370 ct1!282 c!10362) e!4400340)))

(declare-fun b!7348973 () Bool)

(assert (=> b!7348973 (= e!4400340 (set.insert ct1!282 (as set.empty (Set Context!16192))))))

(declare-fun b!7348974 () Bool)

(declare-fun e!4400342 () (Set Context!16192))

(assert (=> b!7348974 (= e!4400342 (as set.empty (Set Context!16192)))))

(declare-fun bm!671915 () Bool)

(declare-fun call!671924 () List!71652)

(assert (=> bm!671915 (= call!671924 ($colon$colon!3154 (exprs!8596 ct1!282) (ite (or c!1365272 c!1365274) (regTwo!38824 r1!2370) r1!2370)))))

(declare-fun b!7348975 () Bool)

(declare-fun c!1365270 () Bool)

(assert (=> b!7348975 (= c!1365270 (is-Star!19156 r1!2370))))

(declare-fun e!4400345 () (Set Context!16192))

(assert (=> b!7348975 (= e!4400345 e!4400342)))

(declare-fun bm!671916 () Bool)

(declare-fun call!671923 () (Set Context!16192))

(declare-fun call!671921 () (Set Context!16192))

(assert (=> bm!671916 (= call!671923 call!671921)))

(declare-fun b!7348976 () Bool)

(declare-fun call!671920 () (Set Context!16192))

(assert (=> b!7348976 (= e!4400343 (set.union call!671920 call!671921))))

(declare-fun bm!671917 () Bool)

(assert (=> bm!671917 (= call!671921 call!671919)))

(declare-fun b!7348977 () Bool)

(assert (=> b!7348977 (= e!4400345 call!671923)))

(declare-fun b!7348978 () Bool)

(assert (=> b!7348978 (= e!4400343 e!4400345)))

(assert (=> b!7348978 (= c!1365274 (is-Concat!28001 r1!2370))))

(declare-fun b!7348979 () Bool)

(assert (=> b!7348979 (= e!4400340 e!4400341)))

(assert (=> b!7348979 (= c!1365271 (is-Union!19156 r1!2370))))

(declare-fun b!7348980 () Bool)

(assert (=> b!7348980 (= e!4400342 call!671923)))

(declare-fun bm!671918 () Bool)

(assert (=> bm!671918 (= call!671922 call!671924)))

(declare-fun bm!671919 () Bool)

(assert (=> bm!671919 (= call!671920 (derivationStepZipperDown!2982 (ite c!1365271 (regOne!38825 r1!2370) (regOne!38824 r1!2370)) (ite c!1365271 ct1!282 (Context!16193 call!671924)) c!10362))))

(declare-fun b!7348981 () Bool)

(assert (=> b!7348981 (= e!4400344 (nullable!8247 (regOne!38824 r1!2370)))))

(declare-fun b!7348982 () Bool)

(assert (=> b!7348982 (= e!4400341 (set.union call!671920 call!671919))))

(assert (= (and d!2280171 c!1365273) b!7348973))

(assert (= (and d!2280171 (not c!1365273)) b!7348979))

(assert (= (and b!7348979 c!1365271) b!7348982))

(assert (= (and b!7348979 (not c!1365271)) b!7348972))

(assert (= (and b!7348972 res!2968015) b!7348981))

(assert (= (and b!7348972 c!1365272) b!7348976))

(assert (= (and b!7348972 (not c!1365272)) b!7348978))

(assert (= (and b!7348978 c!1365274) b!7348977))

(assert (= (and b!7348978 (not c!1365274)) b!7348975))

(assert (= (and b!7348975 c!1365270) b!7348980))

(assert (= (and b!7348975 (not c!1365270)) b!7348974))

(assert (= (or b!7348977 b!7348980) bm!671918))

(assert (= (or b!7348977 b!7348980) bm!671916))

(assert (= (or b!7348976 bm!671916) bm!671917))

(assert (= (or b!7348976 bm!671918) bm!671915))

(assert (= (or b!7348982 bm!671917) bm!671914))

(assert (= (or b!7348982 b!7348976) bm!671919))

(declare-fun m!8010666 () Bool)

(assert (=> bm!671915 m!8010666))

(assert (=> b!7348981 m!8010542))

(declare-fun m!8010668 () Bool)

(assert (=> bm!671914 m!8010668))

(declare-fun m!8010670 () Bool)

(assert (=> b!7348973 m!8010670))

(declare-fun m!8010672 () Bool)

(assert (=> bm!671919 m!8010672))

(assert (=> b!7348790 d!2280171))

(declare-fun d!2280173 () Bool)

(assert (=> d!2280173 (forall!17980 (++!16974 (exprs!8596 cWitness!61) (exprs!8596 ct2!378)) lambda!456356)))

(declare-fun lt!2611794 () Unit!165265)

(assert (=> d!2280173 (= lt!2611794 (choose!57164 (exprs!8596 cWitness!61) (exprs!8596 ct2!378) lambda!456356))))

(assert (=> d!2280173 (forall!17980 (exprs!8596 cWitness!61) lambda!456356)))

(assert (=> d!2280173 (= (lemmaConcatPreservesForall!1831 (exprs!8596 cWitness!61) (exprs!8596 ct2!378) lambda!456356) lt!2611794)))

(declare-fun bs!1919118 () Bool)

(assert (= bs!1919118 d!2280173))

(assert (=> bs!1919118 m!8010526))

(assert (=> bs!1919118 m!8010526))

(declare-fun m!8010674 () Bool)

(assert (=> bs!1919118 m!8010674))

(declare-fun m!8010676 () Bool)

(assert (=> bs!1919118 m!8010676))

(assert (=> bs!1919118 m!8010540))

(assert (=> b!7348779 d!2280173))

(declare-fun b!7348994 () Bool)

(declare-fun e!4400353 () List!71652)

(assert (=> b!7348994 (= e!4400353 (exprs!8596 ct2!378))))

(declare-fun b!7348995 () Bool)

(assert (=> b!7348995 (= e!4400353 (Cons!71528 (h!77976 (exprs!8596 cWitness!61)) (++!16974 (t!386063 (exprs!8596 cWitness!61)) (exprs!8596 ct2!378))))))

(declare-fun b!7348996 () Bool)

(declare-fun res!2968017 () Bool)

(declare-fun e!4400352 () Bool)

(assert (=> b!7348996 (=> (not res!2968017) (not e!4400352))))

(declare-fun lt!2611795 () List!71652)

(assert (=> b!7348996 (= res!2968017 (= (size!42043 lt!2611795) (+ (size!42043 (exprs!8596 cWitness!61)) (size!42043 (exprs!8596 ct2!378)))))))

(declare-fun b!7348997 () Bool)

(assert (=> b!7348997 (= e!4400352 (or (not (= (exprs!8596 ct2!378) Nil!71528)) (= lt!2611795 (exprs!8596 cWitness!61))))))

(declare-fun d!2280175 () Bool)

(assert (=> d!2280175 e!4400352))

(declare-fun res!2968018 () Bool)

(assert (=> d!2280175 (=> (not res!2968018) (not e!4400352))))

(assert (=> d!2280175 (= res!2968018 (= (content!15064 lt!2611795) (set.union (content!15064 (exprs!8596 cWitness!61)) (content!15064 (exprs!8596 ct2!378)))))))

(assert (=> d!2280175 (= lt!2611795 e!4400353)))

(declare-fun c!1365280 () Bool)

(assert (=> d!2280175 (= c!1365280 (is-Nil!71528 (exprs!8596 cWitness!61)))))

(assert (=> d!2280175 (= (++!16974 (exprs!8596 cWitness!61) (exprs!8596 ct2!378)) lt!2611795)))

(assert (= (and d!2280175 c!1365280) b!7348994))

(assert (= (and d!2280175 (not c!1365280)) b!7348995))

(assert (= (and d!2280175 res!2968018) b!7348996))

(assert (= (and b!7348996 res!2968017) b!7348997))

(declare-fun m!8010678 () Bool)

(assert (=> b!7348995 m!8010678))

(declare-fun m!8010680 () Bool)

(assert (=> b!7348996 m!8010680))

(declare-fun m!8010682 () Bool)

(assert (=> b!7348996 m!8010682))

(assert (=> b!7348996 m!8010634))

(declare-fun m!8010684 () Bool)

(assert (=> d!2280175 m!8010684))

(declare-fun m!8010686 () Bool)

(assert (=> d!2280175 m!8010686))

(assert (=> d!2280175 m!8010640))

(assert (=> b!7348779 d!2280175))

(assert (=> b!7348779 d!2280159))

(declare-fun bs!1919119 () Bool)

(declare-fun d!2280177 () Bool)

(assert (= bs!1919119 (and d!2280177 b!7348782)))

(declare-fun lambda!456377 () Int)

(assert (=> bs!1919119 (= lambda!456377 lambda!456356)))

(declare-fun bs!1919120 () Bool)

(assert (= bs!1919120 (and d!2280177 d!2280165)))

(assert (=> bs!1919120 (= lambda!456377 lambda!456370)))

(declare-fun bs!1919121 () Bool)

(assert (= bs!1919121 (and d!2280177 d!2280167)))

(assert (=> bs!1919121 (= lambda!456377 lambda!456371)))

(declare-fun bs!1919122 () Bool)

(assert (= bs!1919122 (and d!2280177 d!2280169)))

(assert (=> bs!1919122 (= lambda!456377 lambda!456372)))

(assert (=> d!2280177 (set.member (Context!16193 (++!16974 (exprs!8596 cWitness!61) (exprs!8596 ct2!378))) (derivationStepZipperDown!2982 (regTwo!38824 r1!2370) (Context!16193 (++!16974 (exprs!8596 ct1!282) (exprs!8596 ct2!378))) c!10362))))

(declare-fun lt!2611804 () Unit!165265)

(assert (=> d!2280177 (= lt!2611804 (lemmaConcatPreservesForall!1831 (exprs!8596 ct1!282) (exprs!8596 ct2!378) lambda!456377))))

(declare-fun lt!2611803 () Unit!165265)

(assert (=> d!2280177 (= lt!2611803 (lemmaConcatPreservesForall!1831 (exprs!8596 cWitness!61) (exprs!8596 ct2!378) lambda!456377))))

(declare-fun lt!2611802 () Unit!165265)

(declare-fun choose!57165 (Regex!19156 Context!16192 Context!16192 Context!16192 C!38586) Unit!165265)

(assert (=> d!2280177 (= lt!2611802 (choose!57165 (regTwo!38824 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2280177 (validRegex!9752 (regTwo!38824 r1!2370))))

(assert (=> d!2280177 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!81 (regTwo!38824 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2611802)))

(declare-fun bs!1919123 () Bool)

(assert (= bs!1919123 d!2280177))

(assert (=> bs!1919123 m!8010526))

(declare-fun m!8010714 () Bool)

(assert (=> bs!1919123 m!8010714))

(assert (=> bs!1919123 m!8010544))

(declare-fun m!8010716 () Bool)

(assert (=> bs!1919123 m!8010716))

(declare-fun m!8010718 () Bool)

(assert (=> bs!1919123 m!8010718))

(assert (=> bs!1919123 m!8010538))

(declare-fun m!8010720 () Bool)

(assert (=> bs!1919123 m!8010720))

(declare-fun m!8010722 () Bool)

(assert (=> bs!1919123 m!8010722))

(assert (=> b!7348779 d!2280177))

(declare-fun b!7349018 () Bool)

(declare-fun c!1365291 () Bool)

(declare-fun e!4400371 () Bool)

(assert (=> b!7349018 (= c!1365291 e!4400371)))

(declare-fun res!2968025 () Bool)

(assert (=> b!7349018 (=> (not res!2968025) (not e!4400371))))

(assert (=> b!7349018 (= res!2968025 (is-Concat!28001 (regTwo!38824 r1!2370)))))

(declare-fun e!4400368 () (Set Context!16192))

(declare-fun e!4400370 () (Set Context!16192))

(assert (=> b!7349018 (= e!4400368 e!4400370)))

(declare-fun call!671943 () List!71652)

(declare-fun c!1365290 () Bool)

(declare-fun call!671940 () (Set Context!16192))

(declare-fun c!1365293 () Bool)

(declare-fun bm!671935 () Bool)

(assert (=> bm!671935 (= call!671940 (derivationStepZipperDown!2982 (ite c!1365290 (regTwo!38825 (regTwo!38824 r1!2370)) (ite c!1365291 (regTwo!38824 (regTwo!38824 r1!2370)) (ite c!1365293 (regOne!38824 (regTwo!38824 r1!2370)) (reg!19485 (regTwo!38824 r1!2370))))) (ite (or c!1365290 c!1365291) lt!2611754 (Context!16193 call!671943)) c!10362))))

(declare-fun d!2280187 () Bool)

(declare-fun c!1365292 () Bool)

(assert (=> d!2280187 (= c!1365292 (and (is-ElementMatch!19156 (regTwo!38824 r1!2370)) (= (c!1365226 (regTwo!38824 r1!2370)) c!10362)))))

(declare-fun e!4400367 () (Set Context!16192))

(assert (=> d!2280187 (= (derivationStepZipperDown!2982 (regTwo!38824 r1!2370) lt!2611754 c!10362) e!4400367)))

(declare-fun b!7349019 () Bool)

(assert (=> b!7349019 (= e!4400367 (set.insert lt!2611754 (as set.empty (Set Context!16192))))))

(declare-fun b!7349020 () Bool)

(declare-fun e!4400369 () (Set Context!16192))

(assert (=> b!7349020 (= e!4400369 (as set.empty (Set Context!16192)))))

(declare-fun call!671945 () List!71652)

(declare-fun bm!671936 () Bool)

(assert (=> bm!671936 (= call!671945 ($colon$colon!3154 (exprs!8596 lt!2611754) (ite (or c!1365291 c!1365293) (regTwo!38824 (regTwo!38824 r1!2370)) (regTwo!38824 r1!2370))))))

(declare-fun b!7349021 () Bool)

(declare-fun c!1365289 () Bool)

(assert (=> b!7349021 (= c!1365289 (is-Star!19156 (regTwo!38824 r1!2370)))))

(declare-fun e!4400372 () (Set Context!16192))

(assert (=> b!7349021 (= e!4400372 e!4400369)))

(declare-fun bm!671937 () Bool)

(declare-fun call!671944 () (Set Context!16192))

(declare-fun call!671942 () (Set Context!16192))

(assert (=> bm!671937 (= call!671944 call!671942)))

(declare-fun b!7349022 () Bool)

(declare-fun call!671941 () (Set Context!16192))

(assert (=> b!7349022 (= e!4400370 (set.union call!671941 call!671942))))

(declare-fun bm!671938 () Bool)

(assert (=> bm!671938 (= call!671942 call!671940)))

(declare-fun b!7349023 () Bool)

(assert (=> b!7349023 (= e!4400372 call!671944)))

(declare-fun b!7349024 () Bool)

(assert (=> b!7349024 (= e!4400370 e!4400372)))

(assert (=> b!7349024 (= c!1365293 (is-Concat!28001 (regTwo!38824 r1!2370)))))

(declare-fun b!7349025 () Bool)

(assert (=> b!7349025 (= e!4400367 e!4400368)))

(assert (=> b!7349025 (= c!1365290 (is-Union!19156 (regTwo!38824 r1!2370)))))

(declare-fun b!7349026 () Bool)

(assert (=> b!7349026 (= e!4400369 call!671944)))

(declare-fun bm!671939 () Bool)

(assert (=> bm!671939 (= call!671943 call!671945)))

(declare-fun bm!671940 () Bool)

(assert (=> bm!671940 (= call!671941 (derivationStepZipperDown!2982 (ite c!1365290 (regOne!38825 (regTwo!38824 r1!2370)) (regOne!38824 (regTwo!38824 r1!2370))) (ite c!1365290 lt!2611754 (Context!16193 call!671945)) c!10362))))

(declare-fun b!7349027 () Bool)

(assert (=> b!7349027 (= e!4400371 (nullable!8247 (regOne!38824 (regTwo!38824 r1!2370))))))

(declare-fun b!7349028 () Bool)

(assert (=> b!7349028 (= e!4400368 (set.union call!671941 call!671940))))

(assert (= (and d!2280187 c!1365292) b!7349019))

(assert (= (and d!2280187 (not c!1365292)) b!7349025))

(assert (= (and b!7349025 c!1365290) b!7349028))

(assert (= (and b!7349025 (not c!1365290)) b!7349018))

(assert (= (and b!7349018 res!2968025) b!7349027))

(assert (= (and b!7349018 c!1365291) b!7349022))

(assert (= (and b!7349018 (not c!1365291)) b!7349024))

(assert (= (and b!7349024 c!1365293) b!7349023))

(assert (= (and b!7349024 (not c!1365293)) b!7349021))

(assert (= (and b!7349021 c!1365289) b!7349026))

(assert (= (and b!7349021 (not c!1365289)) b!7349020))

(assert (= (or b!7349023 b!7349026) bm!671939))

(assert (= (or b!7349023 b!7349026) bm!671937))

(assert (= (or b!7349022 bm!671937) bm!671938))

(assert (= (or b!7349022 bm!671939) bm!671936))

(assert (= (or b!7349028 bm!671938) bm!671935))

(assert (= (or b!7349028 b!7349022) bm!671940))

(declare-fun m!8010724 () Bool)

(assert (=> bm!671936 m!8010724))

(declare-fun m!8010726 () Bool)

(assert (=> b!7349027 m!8010726))

(declare-fun m!8010728 () Bool)

(assert (=> bm!671935 m!8010728))

(assert (=> b!7349019 m!8010624))

(declare-fun m!8010730 () Bool)

(assert (=> bm!671940 m!8010730))

(assert (=> b!7348779 d!2280187))

(declare-fun d!2280189 () Bool)

(declare-fun nullableFct!3284 (Regex!19156) Bool)

(assert (=> d!2280189 (= (nullable!8247 (regOne!38824 r1!2370)) (nullableFct!3284 (regOne!38824 r1!2370)))))

(declare-fun bs!1919126 () Bool)

(assert (= bs!1919126 d!2280189))

(declare-fun m!8010734 () Bool)

(assert (=> bs!1919126 m!8010734))

(assert (=> b!7348784 d!2280189))

(declare-fun b!7349029 () Bool)

(declare-fun c!1365296 () Bool)

(declare-fun e!4400377 () Bool)

(assert (=> b!7349029 (= c!1365296 e!4400377)))

(declare-fun res!2968026 () Bool)

(assert (=> b!7349029 (=> (not res!2968026) (not e!4400377))))

(assert (=> b!7349029 (= res!2968026 (is-Concat!28001 (regTwo!38824 r1!2370)))))

(declare-fun e!4400374 () (Set Context!16192))

(declare-fun e!4400376 () (Set Context!16192))

(assert (=> b!7349029 (= e!4400374 e!4400376)))

(declare-fun bm!671941 () Bool)

(declare-fun call!671949 () List!71652)

(declare-fun c!1365295 () Bool)

(declare-fun c!1365298 () Bool)

(declare-fun call!671946 () (Set Context!16192))

(assert (=> bm!671941 (= call!671946 (derivationStepZipperDown!2982 (ite c!1365295 (regTwo!38825 (regTwo!38824 r1!2370)) (ite c!1365296 (regTwo!38824 (regTwo!38824 r1!2370)) (ite c!1365298 (regOne!38824 (regTwo!38824 r1!2370)) (reg!19485 (regTwo!38824 r1!2370))))) (ite (or c!1365295 c!1365296) ct1!282 (Context!16193 call!671949)) c!10362))))

(declare-fun d!2280193 () Bool)

(declare-fun c!1365297 () Bool)

(assert (=> d!2280193 (= c!1365297 (and (is-ElementMatch!19156 (regTwo!38824 r1!2370)) (= (c!1365226 (regTwo!38824 r1!2370)) c!10362)))))

(declare-fun e!4400373 () (Set Context!16192))

(assert (=> d!2280193 (= (derivationStepZipperDown!2982 (regTwo!38824 r1!2370) ct1!282 c!10362) e!4400373)))

(declare-fun b!7349030 () Bool)

(assert (=> b!7349030 (= e!4400373 (set.insert ct1!282 (as set.empty (Set Context!16192))))))

(declare-fun b!7349031 () Bool)

(declare-fun e!4400375 () (Set Context!16192))

(assert (=> b!7349031 (= e!4400375 (as set.empty (Set Context!16192)))))

(declare-fun call!671951 () List!71652)

(declare-fun bm!671942 () Bool)

(assert (=> bm!671942 (= call!671951 ($colon$colon!3154 (exprs!8596 ct1!282) (ite (or c!1365296 c!1365298) (regTwo!38824 (regTwo!38824 r1!2370)) (regTwo!38824 r1!2370))))))

(declare-fun b!7349032 () Bool)

(declare-fun c!1365294 () Bool)

(assert (=> b!7349032 (= c!1365294 (is-Star!19156 (regTwo!38824 r1!2370)))))

(declare-fun e!4400378 () (Set Context!16192))

(assert (=> b!7349032 (= e!4400378 e!4400375)))

(declare-fun bm!671943 () Bool)

(declare-fun call!671950 () (Set Context!16192))

(declare-fun call!671948 () (Set Context!16192))

(assert (=> bm!671943 (= call!671950 call!671948)))

(declare-fun b!7349033 () Bool)

(declare-fun call!671947 () (Set Context!16192))

(assert (=> b!7349033 (= e!4400376 (set.union call!671947 call!671948))))

(declare-fun bm!671944 () Bool)

(assert (=> bm!671944 (= call!671948 call!671946)))

(declare-fun b!7349034 () Bool)

(assert (=> b!7349034 (= e!4400378 call!671950)))

(declare-fun b!7349035 () Bool)

(assert (=> b!7349035 (= e!4400376 e!4400378)))

(assert (=> b!7349035 (= c!1365298 (is-Concat!28001 (regTwo!38824 r1!2370)))))

(declare-fun b!7349036 () Bool)

(assert (=> b!7349036 (= e!4400373 e!4400374)))

(assert (=> b!7349036 (= c!1365295 (is-Union!19156 (regTwo!38824 r1!2370)))))

(declare-fun b!7349037 () Bool)

(assert (=> b!7349037 (= e!4400375 call!671950)))

(declare-fun bm!671945 () Bool)

(assert (=> bm!671945 (= call!671949 call!671951)))

(declare-fun bm!671946 () Bool)

(assert (=> bm!671946 (= call!671947 (derivationStepZipperDown!2982 (ite c!1365295 (regOne!38825 (regTwo!38824 r1!2370)) (regOne!38824 (regTwo!38824 r1!2370))) (ite c!1365295 ct1!282 (Context!16193 call!671951)) c!10362))))

(declare-fun b!7349038 () Bool)

(assert (=> b!7349038 (= e!4400377 (nullable!8247 (regOne!38824 (regTwo!38824 r1!2370))))))

(declare-fun b!7349039 () Bool)

(assert (=> b!7349039 (= e!4400374 (set.union call!671947 call!671946))))

(assert (= (and d!2280193 c!1365297) b!7349030))

(assert (= (and d!2280193 (not c!1365297)) b!7349036))

(assert (= (and b!7349036 c!1365295) b!7349039))

(assert (= (and b!7349036 (not c!1365295)) b!7349029))

(assert (= (and b!7349029 res!2968026) b!7349038))

(assert (= (and b!7349029 c!1365296) b!7349033))

(assert (= (and b!7349029 (not c!1365296)) b!7349035))

(assert (= (and b!7349035 c!1365298) b!7349034))

(assert (= (and b!7349035 (not c!1365298)) b!7349032))

(assert (= (and b!7349032 c!1365294) b!7349037))

(assert (= (and b!7349032 (not c!1365294)) b!7349031))

(assert (= (or b!7349034 b!7349037) bm!671945))

(assert (= (or b!7349034 b!7349037) bm!671943))

(assert (= (or b!7349033 bm!671943) bm!671944))

(assert (= (or b!7349033 bm!671945) bm!671942))

(assert (= (or b!7349039 bm!671944) bm!671941))

(assert (= (or b!7349039 b!7349033) bm!671946))

(declare-fun m!8010738 () Bool)

(assert (=> bm!671942 m!8010738))

(assert (=> b!7349038 m!8010726))

(declare-fun m!8010740 () Bool)

(assert (=> bm!671941 m!8010740))

(assert (=> b!7349030 m!8010670))

(declare-fun m!8010742 () Bool)

(assert (=> bm!671946 m!8010742))

(assert (=> b!7348783 d!2280193))

(declare-fun b!7349040 () Bool)

(declare-fun c!1365301 () Bool)

(declare-fun e!4400383 () Bool)

(assert (=> b!7349040 (= c!1365301 e!4400383)))

(declare-fun res!2968027 () Bool)

(assert (=> b!7349040 (=> (not res!2968027) (not e!4400383))))

(assert (=> b!7349040 (= res!2968027 (is-Concat!28001 (regOne!38824 r1!2370)))))

(declare-fun e!4400380 () (Set Context!16192))

(declare-fun e!4400382 () (Set Context!16192))

(assert (=> b!7349040 (= e!4400380 e!4400382)))

(declare-fun call!671952 () (Set Context!16192))

(declare-fun c!1365303 () Bool)

(declare-fun call!671955 () List!71652)

(declare-fun bm!671947 () Bool)

(declare-fun c!1365300 () Bool)

(assert (=> bm!671947 (= call!671952 (derivationStepZipperDown!2982 (ite c!1365300 (regTwo!38825 (regOne!38824 r1!2370)) (ite c!1365301 (regTwo!38824 (regOne!38824 r1!2370)) (ite c!1365303 (regOne!38824 (regOne!38824 r1!2370)) (reg!19485 (regOne!38824 r1!2370))))) (ite (or c!1365300 c!1365301) (Context!16193 ($colon$colon!3154 (exprs!8596 ct1!282) (regTwo!38824 r1!2370))) (Context!16193 call!671955)) c!10362))))

(declare-fun d!2280197 () Bool)

(declare-fun c!1365302 () Bool)

(assert (=> d!2280197 (= c!1365302 (and (is-ElementMatch!19156 (regOne!38824 r1!2370)) (= (c!1365226 (regOne!38824 r1!2370)) c!10362)))))

(declare-fun e!4400379 () (Set Context!16192))

(assert (=> d!2280197 (= (derivationStepZipperDown!2982 (regOne!38824 r1!2370) (Context!16193 ($colon$colon!3154 (exprs!8596 ct1!282) (regTwo!38824 r1!2370))) c!10362) e!4400379)))

(declare-fun b!7349041 () Bool)

(assert (=> b!7349041 (= e!4400379 (set.insert (Context!16193 ($colon$colon!3154 (exprs!8596 ct1!282) (regTwo!38824 r1!2370))) (as set.empty (Set Context!16192))))))

(declare-fun b!7349042 () Bool)

(declare-fun e!4400381 () (Set Context!16192))

(assert (=> b!7349042 (= e!4400381 (as set.empty (Set Context!16192)))))

(declare-fun bm!671948 () Bool)

(declare-fun call!671957 () List!71652)

(assert (=> bm!671948 (= call!671957 ($colon$colon!3154 (exprs!8596 (Context!16193 ($colon$colon!3154 (exprs!8596 ct1!282) (regTwo!38824 r1!2370)))) (ite (or c!1365301 c!1365303) (regTwo!38824 (regOne!38824 r1!2370)) (regOne!38824 r1!2370))))))

(declare-fun b!7349043 () Bool)

(declare-fun c!1365299 () Bool)

(assert (=> b!7349043 (= c!1365299 (is-Star!19156 (regOne!38824 r1!2370)))))

(declare-fun e!4400384 () (Set Context!16192))

(assert (=> b!7349043 (= e!4400384 e!4400381)))

(declare-fun bm!671949 () Bool)

(declare-fun call!671956 () (Set Context!16192))

(declare-fun call!671954 () (Set Context!16192))

(assert (=> bm!671949 (= call!671956 call!671954)))

(declare-fun b!7349044 () Bool)

(declare-fun call!671953 () (Set Context!16192))

(assert (=> b!7349044 (= e!4400382 (set.union call!671953 call!671954))))

(declare-fun bm!671950 () Bool)

(assert (=> bm!671950 (= call!671954 call!671952)))

(declare-fun b!7349045 () Bool)

(assert (=> b!7349045 (= e!4400384 call!671956)))

(declare-fun b!7349046 () Bool)

(assert (=> b!7349046 (= e!4400382 e!4400384)))

(assert (=> b!7349046 (= c!1365303 (is-Concat!28001 (regOne!38824 r1!2370)))))

(declare-fun b!7349047 () Bool)

(assert (=> b!7349047 (= e!4400379 e!4400380)))

(assert (=> b!7349047 (= c!1365300 (is-Union!19156 (regOne!38824 r1!2370)))))

(declare-fun b!7349048 () Bool)

(assert (=> b!7349048 (= e!4400381 call!671956)))

(declare-fun bm!671951 () Bool)

(assert (=> bm!671951 (= call!671955 call!671957)))

(declare-fun bm!671952 () Bool)

(assert (=> bm!671952 (= call!671953 (derivationStepZipperDown!2982 (ite c!1365300 (regOne!38825 (regOne!38824 r1!2370)) (regOne!38824 (regOne!38824 r1!2370))) (ite c!1365300 (Context!16193 ($colon$colon!3154 (exprs!8596 ct1!282) (regTwo!38824 r1!2370))) (Context!16193 call!671957)) c!10362))))

(declare-fun b!7349049 () Bool)

(assert (=> b!7349049 (= e!4400383 (nullable!8247 (regOne!38824 (regOne!38824 r1!2370))))))

(declare-fun b!7349050 () Bool)

(assert (=> b!7349050 (= e!4400380 (set.union call!671953 call!671952))))

(assert (= (and d!2280197 c!1365302) b!7349041))

(assert (= (and d!2280197 (not c!1365302)) b!7349047))

(assert (= (and b!7349047 c!1365300) b!7349050))

(assert (= (and b!7349047 (not c!1365300)) b!7349040))

(assert (= (and b!7349040 res!2968027) b!7349049))

(assert (= (and b!7349040 c!1365301) b!7349044))

(assert (= (and b!7349040 (not c!1365301)) b!7349046))

(assert (= (and b!7349046 c!1365303) b!7349045))

(assert (= (and b!7349046 (not c!1365303)) b!7349043))

(assert (= (and b!7349043 c!1365299) b!7349048))

(assert (= (and b!7349043 (not c!1365299)) b!7349042))

(assert (= (or b!7349045 b!7349048) bm!671951))

(assert (= (or b!7349045 b!7349048) bm!671949))

(assert (= (or b!7349044 bm!671949) bm!671950))

(assert (= (or b!7349044 bm!671951) bm!671948))

(assert (= (or b!7349050 bm!671950) bm!671947))

(assert (= (or b!7349050 b!7349044) bm!671952))

(declare-fun m!8010746 () Bool)

(assert (=> bm!671948 m!8010746))

(declare-fun m!8010748 () Bool)

(assert (=> b!7349049 m!8010748))

(declare-fun m!8010750 () Bool)

(assert (=> bm!671947 m!8010750))

(declare-fun m!8010752 () Bool)

(assert (=> b!7349041 m!8010752))

(declare-fun m!8010754 () Bool)

(assert (=> bm!671952 m!8010754))

(assert (=> b!7348783 d!2280197))

(declare-fun d!2280201 () Bool)

(assert (=> d!2280201 (= ($colon$colon!3154 (exprs!8596 ct1!282) (regTwo!38824 r1!2370)) (Cons!71528 (regTwo!38824 r1!2370) (exprs!8596 ct1!282)))))

(assert (=> b!7348783 d!2280201))

(declare-fun b!7349066 () Bool)

(declare-fun e!4400393 () Bool)

(declare-fun tp!2087200 () Bool)

(declare-fun tp!2087201 () Bool)

(assert (=> b!7349066 (= e!4400393 (and tp!2087200 tp!2087201))))

(assert (=> b!7348787 (= tp!2087171 e!4400393)))

(assert (= (and b!7348787 (is-Cons!71528 (exprs!8596 ct2!378))) b!7349066))

(declare-fun b!7349067 () Bool)

(declare-fun e!4400394 () Bool)

(declare-fun tp!2087202 () Bool)

(declare-fun tp!2087203 () Bool)

(assert (=> b!7349067 (= e!4400394 (and tp!2087202 tp!2087203))))

(assert (=> b!7348781 (= tp!2087164 e!4400394)))

(assert (= (and b!7348781 (is-Cons!71528 (exprs!8596 cWitness!61))) b!7349067))

(declare-fun b!7349079 () Bool)

(declare-fun e!4400397 () Bool)

(declare-fun tp!2087216 () Bool)

(declare-fun tp!2087215 () Bool)

(assert (=> b!7349079 (= e!4400397 (and tp!2087216 tp!2087215))))

(declare-fun b!7349081 () Bool)

(declare-fun tp!2087214 () Bool)

(declare-fun tp!2087217 () Bool)

(assert (=> b!7349081 (= e!4400397 (and tp!2087214 tp!2087217))))

(assert (=> b!7348780 (= tp!2087170 e!4400397)))

(declare-fun b!7349080 () Bool)

(declare-fun tp!2087218 () Bool)

(assert (=> b!7349080 (= e!4400397 tp!2087218)))

(declare-fun b!7349078 () Bool)

(assert (=> b!7349078 (= e!4400397 tp_is_empty!48557)))

(assert (= (and b!7348780 (is-ElementMatch!19156 (reg!19485 r1!2370))) b!7349078))

(assert (= (and b!7348780 (is-Concat!28001 (reg!19485 r1!2370))) b!7349079))

(assert (= (and b!7348780 (is-Star!19156 (reg!19485 r1!2370))) b!7349080))

(assert (= (and b!7348780 (is-Union!19156 (reg!19485 r1!2370))) b!7349081))

(declare-fun b!7349082 () Bool)

(declare-fun e!4400398 () Bool)

(declare-fun tp!2087219 () Bool)

(declare-fun tp!2087220 () Bool)

(assert (=> b!7349082 (= e!4400398 (and tp!2087219 tp!2087220))))

(assert (=> b!7348785 (= tp!2087169 e!4400398)))

(assert (= (and b!7348785 (is-Cons!71528 (exprs!8596 ct1!282))) b!7349082))

(declare-fun b!7349084 () Bool)

(declare-fun e!4400399 () Bool)

(declare-fun tp!2087223 () Bool)

(declare-fun tp!2087222 () Bool)

(assert (=> b!7349084 (= e!4400399 (and tp!2087223 tp!2087222))))

(declare-fun b!7349086 () Bool)

(declare-fun tp!2087221 () Bool)

(declare-fun tp!2087224 () Bool)

(assert (=> b!7349086 (= e!4400399 (and tp!2087221 tp!2087224))))

(assert (=> b!7348789 (= tp!2087166 e!4400399)))

(declare-fun b!7349085 () Bool)

(declare-fun tp!2087225 () Bool)

(assert (=> b!7349085 (= e!4400399 tp!2087225)))

(declare-fun b!7349083 () Bool)

(assert (=> b!7349083 (= e!4400399 tp_is_empty!48557)))

(assert (= (and b!7348789 (is-ElementMatch!19156 (regOne!38825 r1!2370))) b!7349083))

(assert (= (and b!7348789 (is-Concat!28001 (regOne!38825 r1!2370))) b!7349084))

(assert (= (and b!7348789 (is-Star!19156 (regOne!38825 r1!2370))) b!7349085))

(assert (= (and b!7348789 (is-Union!19156 (regOne!38825 r1!2370))) b!7349086))

(declare-fun b!7349088 () Bool)

(declare-fun e!4400400 () Bool)

(declare-fun tp!2087228 () Bool)

(declare-fun tp!2087227 () Bool)

(assert (=> b!7349088 (= e!4400400 (and tp!2087228 tp!2087227))))

(declare-fun b!7349090 () Bool)

(declare-fun tp!2087226 () Bool)

(declare-fun tp!2087229 () Bool)

(assert (=> b!7349090 (= e!4400400 (and tp!2087226 tp!2087229))))

(assert (=> b!7348789 (= tp!2087165 e!4400400)))

(declare-fun b!7349089 () Bool)

(declare-fun tp!2087230 () Bool)

(assert (=> b!7349089 (= e!4400400 tp!2087230)))

(declare-fun b!7349087 () Bool)

(assert (=> b!7349087 (= e!4400400 tp_is_empty!48557)))

(assert (= (and b!7348789 (is-ElementMatch!19156 (regTwo!38825 r1!2370))) b!7349087))

(assert (= (and b!7348789 (is-Concat!28001 (regTwo!38825 r1!2370))) b!7349088))

(assert (= (and b!7348789 (is-Star!19156 (regTwo!38825 r1!2370))) b!7349089))

(assert (= (and b!7348789 (is-Union!19156 (regTwo!38825 r1!2370))) b!7349090))

(declare-fun b!7349092 () Bool)

(declare-fun e!4400401 () Bool)

(declare-fun tp!2087233 () Bool)

(declare-fun tp!2087232 () Bool)

(assert (=> b!7349092 (= e!4400401 (and tp!2087233 tp!2087232))))

(declare-fun b!7349094 () Bool)

(declare-fun tp!2087231 () Bool)

(declare-fun tp!2087234 () Bool)

(assert (=> b!7349094 (= e!4400401 (and tp!2087231 tp!2087234))))

(assert (=> b!7348788 (= tp!2087167 e!4400401)))

(declare-fun b!7349093 () Bool)

(declare-fun tp!2087235 () Bool)

(assert (=> b!7349093 (= e!4400401 tp!2087235)))

(declare-fun b!7349091 () Bool)

(assert (=> b!7349091 (= e!4400401 tp_is_empty!48557)))

(assert (= (and b!7348788 (is-ElementMatch!19156 (regOne!38824 r1!2370))) b!7349091))

(assert (= (and b!7348788 (is-Concat!28001 (regOne!38824 r1!2370))) b!7349092))

(assert (= (and b!7348788 (is-Star!19156 (regOne!38824 r1!2370))) b!7349093))

(assert (= (and b!7348788 (is-Union!19156 (regOne!38824 r1!2370))) b!7349094))

(declare-fun b!7349096 () Bool)

(declare-fun e!4400402 () Bool)

(declare-fun tp!2087238 () Bool)

(declare-fun tp!2087237 () Bool)

(assert (=> b!7349096 (= e!4400402 (and tp!2087238 tp!2087237))))

(declare-fun b!7349098 () Bool)

(declare-fun tp!2087236 () Bool)

(declare-fun tp!2087239 () Bool)

(assert (=> b!7349098 (= e!4400402 (and tp!2087236 tp!2087239))))

(assert (=> b!7348788 (= tp!2087168 e!4400402)))

(declare-fun b!7349097 () Bool)

(declare-fun tp!2087240 () Bool)

(assert (=> b!7349097 (= e!4400402 tp!2087240)))

(declare-fun b!7349095 () Bool)

(assert (=> b!7349095 (= e!4400402 tp_is_empty!48557)))

(assert (= (and b!7348788 (is-ElementMatch!19156 (regTwo!38824 r1!2370))) b!7349095))

(assert (= (and b!7348788 (is-Concat!28001 (regTwo!38824 r1!2370))) b!7349096))

(assert (= (and b!7348788 (is-Star!19156 (regTwo!38824 r1!2370))) b!7349097))

(assert (= (and b!7348788 (is-Union!19156 (regTwo!38824 r1!2370))) b!7349098))

(declare-fun b_lambda!284077 () Bool)

(assert (= b_lambda!284075 (or b!7348782 b_lambda!284077)))

(declare-fun bs!1919134 () Bool)

(declare-fun d!2280205 () Bool)

(assert (= bs!1919134 (and d!2280205 b!7348782)))

(assert (=> bs!1919134 (= (dynLambda!29485 lambda!456356 (h!77976 (exprs!8596 cWitness!61))) (validRegex!9752 (h!77976 (exprs!8596 cWitness!61))))))

(declare-fun m!8010762 () Bool)

(assert (=> bs!1919134 m!8010762))

(assert (=> b!7348858 d!2280205))

(push 1)

(assert (not b!7348995))

(assert (not bm!671935))

(assert (not b!7348859))

(assert (not bm!671941))

(assert (not b!7349098))

(assert (not b!7349086))

(assert (not bm!671947))

(assert (not b!7349079))

(assert (not b!7348962))

(assert (not b!7349088))

(assert (not d!2280173))

(assert (not bm!671936))

(assert (not b!7349080))

(assert (not bm!671913))

(assert (not bm!671914))

(assert (not b!7349081))

(assert (not b!7349092))

(assert (not b!7349085))

(assert (not d!2280169))

(assert (not d!2280159))

(assert (not b!7349049))

(assert (not bm!671919))

(assert (not b!7349097))

(assert (not d!2280175))

(assert (not b!7348971))

(assert (not d!2280177))

(assert (not b!7349066))

(assert (not b!7349090))

(assert (not bm!671940))

(assert (not bs!1919134))

(assert (not bm!671912))

(assert (not b!7349067))

(assert (not bm!671942))

(assert (not bm!671909))

(assert (not b!7349084))

(assert (not bm!671946))

(assert (not b!7348934))

(assert (not b!7348981))

(assert (not b!7349082))

(assert (not b!7348996))

(assert (not d!2280167))

(assert tp_is_empty!48557)

(assert (not b!7349038))

(assert (not d!2280157))

(assert (not bm!671884))

(assert (not b_lambda!284077))

(assert (not b!7348933))

(assert (not bm!671889))

(assert (not b!7349094))

(assert (not d!2280189))

(assert (not b!7349027))

(assert (not b!7349089))

(assert (not bm!671915))

(assert (not b!7349096))

(assert (not b!7349093))

(assert (not bm!671910))

(assert (not d!2280165))

(assert (not bm!671948))

(assert (not bm!671885))

(assert (not b!7348900))

(assert (not bm!671952))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

