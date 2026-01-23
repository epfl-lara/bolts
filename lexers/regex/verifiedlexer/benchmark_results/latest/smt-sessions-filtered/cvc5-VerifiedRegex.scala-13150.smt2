; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718198 () Bool)

(assert start!718198)

(declare-fun b!7354858 () Bool)

(declare-fun e!4403698 () Bool)

(declare-fun tp!2089192 () Bool)

(assert (=> b!7354858 (= e!4403698 tp!2089192)))

(declare-fun b!7354859 () Bool)

(declare-fun e!4403702 () Bool)

(declare-fun tp_is_empty!48621 () Bool)

(assert (=> b!7354859 (= e!4403702 tp_is_empty!48621)))

(declare-fun res!2969921 () Bool)

(declare-fun e!4403699 () Bool)

(assert (=> start!718198 (=> (not res!2969921) (not e!4403699))))

(declare-datatypes ((C!38650 0))(
  ( (C!38651 (val!29685 Int)) )
))
(declare-datatypes ((Regex!19188 0))(
  ( (ElementMatch!19188 (c!1366478 C!38650)) (Concat!28033 (regOne!38888 Regex!19188) (regTwo!38888 Regex!19188)) (EmptyExpr!19188) (Star!19188 (reg!19517 Regex!19188)) (EmptyLang!19188) (Union!19188 (regOne!38889 Regex!19188) (regTwo!38889 Regex!19188)) )
))
(declare-fun r1!2370 () Regex!19188)

(declare-fun validRegex!9784 (Regex!19188) Bool)

(assert (=> start!718198 (= res!2969921 (validRegex!9784 r1!2370))))

(assert (=> start!718198 e!4403699))

(assert (=> start!718198 tp_is_empty!48621))

(declare-datatypes ((List!71684 0))(
  ( (Nil!71560) (Cons!71560 (h!78008 Regex!19188) (t!386119 List!71684)) )
))
(declare-datatypes ((Context!16256 0))(
  ( (Context!16257 (exprs!8628 List!71684)) )
))
(declare-fun cWitness!61 () Context!16256)

(declare-fun inv!91311 (Context!16256) Bool)

(assert (=> start!718198 (and (inv!91311 cWitness!61) e!4403698)))

(declare-fun ct1!282 () Context!16256)

(declare-fun e!4403703 () Bool)

(assert (=> start!718198 (and (inv!91311 ct1!282) e!4403703)))

(assert (=> start!718198 e!4403702))

(declare-fun ct2!378 () Context!16256)

(declare-fun e!4403701 () Bool)

(assert (=> start!718198 (and (inv!91311 ct2!378) e!4403701)))

(declare-fun b!7354860 () Bool)

(declare-fun e!4403700 () Bool)

(assert (=> b!7354860 (= e!4403699 e!4403700)))

(declare-fun res!2969913 () Bool)

(assert (=> b!7354860 (=> (not res!2969913) (not e!4403700))))

(declare-fun lt!2612988 () (Set Context!16256))

(assert (=> b!7354860 (= res!2969913 (set.member cWitness!61 lt!2612988))))

(declare-fun c!10362 () C!38650)

(declare-fun derivationStepZipperDown!3014 (Regex!19188 Context!16256 C!38650) (Set Context!16256))

(assert (=> b!7354860 (= lt!2612988 (derivationStepZipperDown!3014 r1!2370 ct1!282 c!10362))))

(declare-fun b!7354861 () Bool)

(declare-fun tp!2089199 () Bool)

(declare-fun tp!2089195 () Bool)

(assert (=> b!7354861 (= e!4403702 (and tp!2089199 tp!2089195))))

(declare-fun b!7354862 () Bool)

(declare-fun e!4403704 () Bool)

(declare-fun e!4403696 () Bool)

(assert (=> b!7354862 (= e!4403704 e!4403696)))

(declare-fun res!2969918 () Bool)

(assert (=> b!7354862 (=> (not res!2969918) (not e!4403696))))

(declare-fun lt!2612991 () Regex!19188)

(assert (=> b!7354862 (= res!2969918 (validRegex!9784 lt!2612991))))

(assert (=> b!7354862 (= lt!2612991 (Star!19188 (reg!19517 r1!2370)))))

(declare-fun b!7354863 () Bool)

(declare-fun res!2969917 () Bool)

(assert (=> b!7354863 (=> (not res!2969917) (not e!4403704))))

(declare-fun e!4403705 () Bool)

(assert (=> b!7354863 (= res!2969917 e!4403705)))

(declare-fun res!2969914 () Bool)

(assert (=> b!7354863 (=> res!2969914 e!4403705)))

(assert (=> b!7354863 (= res!2969914 (not (is-Concat!28033 r1!2370)))))

(declare-fun b!7354864 () Bool)

(declare-fun nullable!8279 (Regex!19188) Bool)

(assert (=> b!7354864 (= e!4403705 (not (nullable!8279 (regOne!38888 r1!2370))))))

(declare-fun b!7354865 () Bool)

(declare-fun tp!2089196 () Bool)

(assert (=> b!7354865 (= e!4403701 tp!2089196)))

(declare-fun b!7354866 () Bool)

(declare-fun e!4403695 () Bool)

(declare-fun lambda!456904 () Int)

(declare-fun forall!18008 (List!71684 Int) Bool)

(assert (=> b!7354866 (= e!4403695 (forall!18008 (exprs!8628 cWitness!61) lambda!456904))))

(declare-fun b!7354867 () Bool)

(declare-fun e!4403697 () Bool)

(assert (=> b!7354867 (= e!4403696 e!4403697)))

(declare-fun res!2969915 () Bool)

(assert (=> b!7354867 (=> (not res!2969915) (not e!4403697))))

(declare-fun lt!2612994 () Context!16256)

(assert (=> b!7354867 (= res!2969915 (= lt!2612988 (derivationStepZipperDown!3014 (reg!19517 r1!2370) lt!2612994 c!10362)))))

(declare-fun lt!2612997 () List!71684)

(assert (=> b!7354867 (= lt!2612994 (Context!16257 lt!2612997))))

(declare-fun $colon$colon!3185 (List!71684 Regex!19188) List!71684)

(assert (=> b!7354867 (= lt!2612997 ($colon$colon!3185 (exprs!8628 ct1!282) lt!2612991))))

(declare-fun b!7354868 () Bool)

(declare-fun tp!2089194 () Bool)

(assert (=> b!7354868 (= e!4403703 tp!2089194)))

(declare-fun b!7354869 () Bool)

(declare-fun tp!2089198 () Bool)

(assert (=> b!7354869 (= e!4403702 tp!2089198)))

(declare-fun b!7354870 () Bool)

(declare-fun res!2969919 () Bool)

(assert (=> b!7354870 (=> (not res!2969919) (not e!4403704))))

(assert (=> b!7354870 (= res!2969919 (and (not (is-Concat!28033 r1!2370)) (is-Star!19188 r1!2370)))))

(declare-fun b!7354871 () Bool)

(assert (=> b!7354871 (= e!4403697 (not e!4403695))))

(declare-fun res!2969920 () Bool)

(assert (=> b!7354871 (=> res!2969920 e!4403695)))

(declare-fun lt!2612992 () Context!16256)

(declare-fun lt!2612998 () (Set Context!16256))

(assert (=> b!7354871 (= res!2969920 (not (set.member lt!2612992 lt!2612998)))))

(declare-datatypes ((Unit!165329 0))(
  ( (Unit!165330) )
))
(declare-fun lt!2612990 () Unit!165329)

(declare-fun lemmaConcatPreservesForall!1863 (List!71684 List!71684 Int) Unit!165329)

(assert (=> b!7354871 (= lt!2612990 (lemmaConcatPreservesForall!1863 (exprs!8628 cWitness!61) (exprs!8628 ct2!378) lambda!456904))))

(declare-fun ++!17006 (List!71684 List!71684) List!71684)

(assert (=> b!7354871 (set.member lt!2612992 (derivationStepZipperDown!3014 (reg!19517 r1!2370) (Context!16257 (++!17006 lt!2612997 (exprs!8628 ct2!378))) c!10362))))

(assert (=> b!7354871 (= lt!2612992 (Context!16257 (++!17006 (exprs!8628 cWitness!61) (exprs!8628 ct2!378))))))

(declare-fun lt!2612996 () Unit!165329)

(assert (=> b!7354871 (= lt!2612996 (lemmaConcatPreservesForall!1863 lt!2612997 (exprs!8628 ct2!378) lambda!456904))))

(declare-fun lt!2612995 () Unit!165329)

(assert (=> b!7354871 (= lt!2612995 (lemmaConcatPreservesForall!1863 (exprs!8628 cWitness!61) (exprs!8628 ct2!378) lambda!456904))))

(declare-fun lt!2612993 () Unit!165329)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!105 (Regex!19188 Context!16256 Context!16256 Context!16256 C!38650) Unit!165329)

(assert (=> b!7354871 (= lt!2612993 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!105 (reg!19517 r1!2370) lt!2612994 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7354872 () Bool)

(declare-fun tp!2089197 () Bool)

(declare-fun tp!2089193 () Bool)

(assert (=> b!7354872 (= e!4403702 (and tp!2089197 tp!2089193))))

(declare-fun b!7354873 () Bool)

(assert (=> b!7354873 (= e!4403700 e!4403704)))

(declare-fun res!2969916 () Bool)

(assert (=> b!7354873 (=> (not res!2969916) (not e!4403704))))

(assert (=> b!7354873 (= res!2969916 (and (or (not (is-ElementMatch!19188 r1!2370)) (not (= c!10362 (c!1366478 r1!2370)))) (not (is-Union!19188 r1!2370))))))

(assert (=> b!7354873 (= lt!2612998 (derivationStepZipperDown!3014 r1!2370 (Context!16257 (++!17006 (exprs!8628 ct1!282) (exprs!8628 ct2!378))) c!10362))))

(declare-fun lt!2612989 () Unit!165329)

(assert (=> b!7354873 (= lt!2612989 (lemmaConcatPreservesForall!1863 (exprs!8628 ct1!282) (exprs!8628 ct2!378) lambda!456904))))

(assert (= (and start!718198 res!2969921) b!7354860))

(assert (= (and b!7354860 res!2969913) b!7354873))

(assert (= (and b!7354873 res!2969916) b!7354863))

(assert (= (and b!7354863 (not res!2969914)) b!7354864))

(assert (= (and b!7354863 res!2969917) b!7354870))

(assert (= (and b!7354870 res!2969919) b!7354862))

(assert (= (and b!7354862 res!2969918) b!7354867))

(assert (= (and b!7354867 res!2969915) b!7354871))

(assert (= (and b!7354871 (not res!2969920)) b!7354866))

(assert (= start!718198 b!7354858))

(assert (= start!718198 b!7354868))

(assert (= (and start!718198 (is-ElementMatch!19188 r1!2370)) b!7354859))

(assert (= (and start!718198 (is-Concat!28033 r1!2370)) b!7354861))

(assert (= (and start!718198 (is-Star!19188 r1!2370)) b!7354869))

(assert (= (and start!718198 (is-Union!19188 r1!2370)) b!7354872))

(assert (= start!718198 b!7354865))

(declare-fun m!8014970 () Bool)

(assert (=> b!7354866 m!8014970))

(declare-fun m!8014972 () Bool)

(assert (=> b!7354862 m!8014972))

(declare-fun m!8014974 () Bool)

(assert (=> b!7354873 m!8014974))

(declare-fun m!8014976 () Bool)

(assert (=> b!7354873 m!8014976))

(declare-fun m!8014978 () Bool)

(assert (=> b!7354873 m!8014978))

(declare-fun m!8014980 () Bool)

(assert (=> b!7354860 m!8014980))

(declare-fun m!8014982 () Bool)

(assert (=> b!7354860 m!8014982))

(declare-fun m!8014984 () Bool)

(assert (=> start!718198 m!8014984))

(declare-fun m!8014986 () Bool)

(assert (=> start!718198 m!8014986))

(declare-fun m!8014988 () Bool)

(assert (=> start!718198 m!8014988))

(declare-fun m!8014990 () Bool)

(assert (=> start!718198 m!8014990))

(declare-fun m!8014992 () Bool)

(assert (=> b!7354871 m!8014992))

(declare-fun m!8014994 () Bool)

(assert (=> b!7354871 m!8014994))

(declare-fun m!8014996 () Bool)

(assert (=> b!7354871 m!8014996))

(declare-fun m!8014998 () Bool)

(assert (=> b!7354871 m!8014998))

(declare-fun m!8015000 () Bool)

(assert (=> b!7354871 m!8015000))

(declare-fun m!8015002 () Bool)

(assert (=> b!7354871 m!8015002))

(declare-fun m!8015004 () Bool)

(assert (=> b!7354871 m!8015004))

(assert (=> b!7354871 m!8015002))

(declare-fun m!8015006 () Bool)

(assert (=> b!7354871 m!8015006))

(declare-fun m!8015008 () Bool)

(assert (=> b!7354864 m!8015008))

(declare-fun m!8015010 () Bool)

(assert (=> b!7354867 m!8015010))

(declare-fun m!8015012 () Bool)

(assert (=> b!7354867 m!8015012))

(push 1)

(assert (not b!7354864))

(assert (not b!7354868))

(assert (not b!7354862))

(assert (not b!7354861))

(assert (not b!7354860))

(assert tp_is_empty!48621)

(assert (not start!718198))

(assert (not b!7354872))

(assert (not b!7354871))

(assert (not b!7354866))

(assert (not b!7354865))

(assert (not b!7354867))

(assert (not b!7354869))

(assert (not b!7354858))

(assert (not b!7354873))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7354944 () Bool)

(declare-fun e!4403755 () (Set Context!16256))

(declare-fun call!673240 () (Set Context!16256))

(declare-fun call!673241 () (Set Context!16256))

(assert (=> b!7354944 (= e!4403755 (set.union call!673240 call!673241))))

(declare-fun bm!673231 () Bool)

(declare-fun call!673237 () (Set Context!16256))

(declare-fun call!673239 () (Set Context!16256))

(assert (=> bm!673231 (= call!673237 call!673239)))

(declare-fun b!7354945 () Bool)

(declare-fun e!4403753 () (Set Context!16256))

(assert (=> b!7354945 (= e!4403753 (set.union call!673240 call!673239))))

(declare-fun b!7354946 () Bool)

(declare-fun e!4403751 () (Set Context!16256))

(assert (=> b!7354946 (= e!4403753 e!4403751)))

(declare-fun c!1366493 () Bool)

(assert (=> b!7354946 (= c!1366493 (is-Concat!28033 r1!2370))))

(declare-fun d!2281245 () Bool)

(declare-fun c!1366490 () Bool)

(assert (=> d!2281245 (= c!1366490 (and (is-ElementMatch!19188 r1!2370) (= (c!1366478 r1!2370) c!10362)))))

(declare-fun e!4403752 () (Set Context!16256))

(assert (=> d!2281245 (= (derivationStepZipperDown!3014 r1!2370 (Context!16257 (++!17006 (exprs!8628 ct1!282) (exprs!8628 ct2!378))) c!10362) e!4403752)))

(declare-fun b!7354947 () Bool)

(declare-fun e!4403754 () (Set Context!16256))

(assert (=> b!7354947 (= e!4403754 call!673237)))

(declare-fun b!7354948 () Bool)

(assert (=> b!7354948 (= e!4403752 (set.insert (Context!16257 (++!17006 (exprs!8628 ct1!282) (exprs!8628 ct2!378))) (as set.empty (Set Context!16256))))))

(declare-fun b!7354949 () Bool)

(assert (=> b!7354949 (= e!4403751 call!673237)))

(declare-fun b!7354950 () Bool)

(declare-fun c!1366491 () Bool)

(assert (=> b!7354950 (= c!1366491 (is-Star!19188 r1!2370))))

(assert (=> b!7354950 (= e!4403751 e!4403754)))

(declare-fun b!7354951 () Bool)

(assert (=> b!7354951 (= e!4403752 e!4403755)))

(declare-fun c!1366494 () Bool)

(assert (=> b!7354951 (= c!1366494 (is-Union!19188 r1!2370))))

(declare-fun call!673236 () List!71684)

(declare-fun bm!673232 () Bool)

(declare-fun c!1366492 () Bool)

(assert (=> bm!673232 (= call!673236 ($colon$colon!3185 (exprs!8628 (Context!16257 (++!17006 (exprs!8628 ct1!282) (exprs!8628 ct2!378)))) (ite (or c!1366492 c!1366493) (regTwo!38888 r1!2370) r1!2370)))))

(declare-fun b!7354952 () Bool)

(declare-fun e!4403756 () Bool)

(assert (=> b!7354952 (= c!1366492 e!4403756)))

(declare-fun res!2969951 () Bool)

(assert (=> b!7354952 (=> (not res!2969951) (not e!4403756))))

(assert (=> b!7354952 (= res!2969951 (is-Concat!28033 r1!2370))))

(assert (=> b!7354952 (= e!4403755 e!4403753)))

(declare-fun bm!673233 () Bool)

(declare-fun call!673238 () List!71684)

(assert (=> bm!673233 (= call!673238 call!673236)))

(declare-fun b!7354953 () Bool)

(assert (=> b!7354953 (= e!4403756 (nullable!8279 (regOne!38888 r1!2370)))))

(declare-fun bm!673234 () Bool)

(assert (=> bm!673234 (= call!673240 (derivationStepZipperDown!3014 (ite c!1366494 (regOne!38889 r1!2370) (regOne!38888 r1!2370)) (ite c!1366494 (Context!16257 (++!17006 (exprs!8628 ct1!282) (exprs!8628 ct2!378))) (Context!16257 call!673236)) c!10362))))

(declare-fun bm!673235 () Bool)

(assert (=> bm!673235 (= call!673241 (derivationStepZipperDown!3014 (ite c!1366494 (regTwo!38889 r1!2370) (ite c!1366492 (regTwo!38888 r1!2370) (ite c!1366493 (regOne!38888 r1!2370) (reg!19517 r1!2370)))) (ite (or c!1366494 c!1366492) (Context!16257 (++!17006 (exprs!8628 ct1!282) (exprs!8628 ct2!378))) (Context!16257 call!673238)) c!10362))))

(declare-fun bm!673236 () Bool)

(assert (=> bm!673236 (= call!673239 call!673241)))

(declare-fun b!7354954 () Bool)

(assert (=> b!7354954 (= e!4403754 (as set.empty (Set Context!16256)))))

(assert (= (and d!2281245 c!1366490) b!7354948))

(assert (= (and d!2281245 (not c!1366490)) b!7354951))

(assert (= (and b!7354951 c!1366494) b!7354944))

(assert (= (and b!7354951 (not c!1366494)) b!7354952))

(assert (= (and b!7354952 res!2969951) b!7354953))

(assert (= (and b!7354952 c!1366492) b!7354945))

(assert (= (and b!7354952 (not c!1366492)) b!7354946))

(assert (= (and b!7354946 c!1366493) b!7354949))

(assert (= (and b!7354946 (not c!1366493)) b!7354950))

(assert (= (and b!7354950 c!1366491) b!7354947))

(assert (= (and b!7354950 (not c!1366491)) b!7354954))

(assert (= (or b!7354949 b!7354947) bm!673233))

(assert (= (or b!7354949 b!7354947) bm!673231))

(assert (= (or b!7354945 bm!673231) bm!673236))

(assert (= (or b!7354945 bm!673233) bm!673232))

(assert (= (or b!7354944 bm!673236) bm!673235))

(assert (= (or b!7354944 b!7354945) bm!673234))

(declare-fun m!8015058 () Bool)

(assert (=> b!7354948 m!8015058))

(declare-fun m!8015060 () Bool)

(assert (=> bm!673235 m!8015060))

(declare-fun m!8015062 () Bool)

(assert (=> bm!673234 m!8015062))

(declare-fun m!8015064 () Bool)

(assert (=> bm!673232 m!8015064))

(assert (=> b!7354953 m!8015008))

(assert (=> b!7354873 d!2281245))

(declare-fun e!4403762 () Bool)

(declare-fun b!7354966 () Bool)

(declare-fun lt!2613034 () List!71684)

(assert (=> b!7354966 (= e!4403762 (or (not (= (exprs!8628 ct2!378) Nil!71560)) (= lt!2613034 (exprs!8628 ct1!282))))))

(declare-fun b!7354965 () Bool)

(declare-fun res!2969956 () Bool)

(assert (=> b!7354965 (=> (not res!2969956) (not e!4403762))))

(declare-fun size!42069 (List!71684) Int)

(assert (=> b!7354965 (= res!2969956 (= (size!42069 lt!2613034) (+ (size!42069 (exprs!8628 ct1!282)) (size!42069 (exprs!8628 ct2!378)))))))

(declare-fun b!7354964 () Bool)

(declare-fun e!4403761 () List!71684)

(assert (=> b!7354964 (= e!4403761 (Cons!71560 (h!78008 (exprs!8628 ct1!282)) (++!17006 (t!386119 (exprs!8628 ct1!282)) (exprs!8628 ct2!378))))))

(declare-fun b!7354963 () Bool)

(assert (=> b!7354963 (= e!4403761 (exprs!8628 ct2!378))))

(declare-fun d!2281249 () Bool)

(assert (=> d!2281249 e!4403762))

(declare-fun res!2969957 () Bool)

(assert (=> d!2281249 (=> (not res!2969957) (not e!4403762))))

(declare-fun content!15091 (List!71684) (Set Regex!19188))

(assert (=> d!2281249 (= res!2969957 (= (content!15091 lt!2613034) (set.union (content!15091 (exprs!8628 ct1!282)) (content!15091 (exprs!8628 ct2!378)))))))

(assert (=> d!2281249 (= lt!2613034 e!4403761)))

(declare-fun c!1366497 () Bool)

(assert (=> d!2281249 (= c!1366497 (is-Nil!71560 (exprs!8628 ct1!282)))))

(assert (=> d!2281249 (= (++!17006 (exprs!8628 ct1!282) (exprs!8628 ct2!378)) lt!2613034)))

(assert (= (and d!2281249 c!1366497) b!7354963))

(assert (= (and d!2281249 (not c!1366497)) b!7354964))

(assert (= (and d!2281249 res!2969957) b!7354965))

(assert (= (and b!7354965 res!2969956) b!7354966))

(declare-fun m!8015068 () Bool)

(assert (=> b!7354965 m!8015068))

(declare-fun m!8015070 () Bool)

(assert (=> b!7354965 m!8015070))

(declare-fun m!8015072 () Bool)

(assert (=> b!7354965 m!8015072))

(declare-fun m!8015074 () Bool)

(assert (=> b!7354964 m!8015074))

(declare-fun m!8015076 () Bool)

(assert (=> d!2281249 m!8015076))

(declare-fun m!8015078 () Bool)

(assert (=> d!2281249 m!8015078))

(declare-fun m!8015080 () Bool)

(assert (=> d!2281249 m!8015080))

(assert (=> b!7354873 d!2281249))

(declare-fun d!2281253 () Bool)

(assert (=> d!2281253 (forall!18008 (++!17006 (exprs!8628 ct1!282) (exprs!8628 ct2!378)) lambda!456904)))

(declare-fun lt!2613037 () Unit!165329)

(declare-fun choose!57212 (List!71684 List!71684 Int) Unit!165329)

(assert (=> d!2281253 (= lt!2613037 (choose!57212 (exprs!8628 ct1!282) (exprs!8628 ct2!378) lambda!456904))))

(assert (=> d!2281253 (forall!18008 (exprs!8628 ct1!282) lambda!456904)))

(assert (=> d!2281253 (= (lemmaConcatPreservesForall!1863 (exprs!8628 ct1!282) (exprs!8628 ct2!378) lambda!456904) lt!2613037)))

(declare-fun bs!1919645 () Bool)

(assert (= bs!1919645 d!2281253))

(assert (=> bs!1919645 m!8014974))

(assert (=> bs!1919645 m!8014974))

(declare-fun m!8015082 () Bool)

(assert (=> bs!1919645 m!8015082))

(declare-fun m!8015084 () Bool)

(assert (=> bs!1919645 m!8015084))

(declare-fun m!8015086 () Bool)

(assert (=> bs!1919645 m!8015086))

(assert (=> b!7354873 d!2281253))

(declare-fun bm!673247 () Bool)

(declare-fun call!673252 () Bool)

(declare-fun call!673253 () Bool)

(assert (=> bm!673247 (= call!673252 call!673253)))

(declare-fun b!7355007 () Bool)

(declare-fun e!4403793 () Bool)

(declare-fun e!4403789 () Bool)

(assert (=> b!7355007 (= e!4403793 e!4403789)))

(declare-fun c!1366512 () Bool)

(assert (=> b!7355007 (= c!1366512 (is-Star!19188 lt!2612991))))

(declare-fun b!7355008 () Bool)

(declare-fun e!4403792 () Bool)

(declare-fun e!4403794 () Bool)

(assert (=> b!7355008 (= e!4403792 e!4403794)))

(declare-fun res!2969970 () Bool)

(assert (=> b!7355008 (=> (not res!2969970) (not e!4403794))))

(declare-fun call!673254 () Bool)

(assert (=> b!7355008 (= res!2969970 call!673254)))

(declare-fun b!7355009 () Bool)

(declare-fun e!4403791 () Bool)

(assert (=> b!7355009 (= e!4403791 call!673253)))

(declare-fun b!7355010 () Bool)

(declare-fun res!2969972 () Bool)

(assert (=> b!7355010 (=> res!2969972 e!4403792)))

(assert (=> b!7355010 (= res!2969972 (not (is-Concat!28033 lt!2612991)))))

(declare-fun e!4403790 () Bool)

(assert (=> b!7355010 (= e!4403790 e!4403792)))

(declare-fun bm!673248 () Bool)

(declare-fun c!1366513 () Bool)

(assert (=> bm!673248 (= call!673254 (validRegex!9784 (ite c!1366513 (regTwo!38889 lt!2612991) (regOne!38888 lt!2612991))))))

(declare-fun b!7355011 () Bool)

(assert (=> b!7355011 (= e!4403789 e!4403790)))

(assert (=> b!7355011 (= c!1366513 (is-Union!19188 lt!2612991))))

(declare-fun b!7355012 () Bool)

(assert (=> b!7355012 (= e!4403794 call!673252)))

(declare-fun d!2281255 () Bool)

(declare-fun res!2969974 () Bool)

(assert (=> d!2281255 (=> res!2969974 e!4403793)))

(assert (=> d!2281255 (= res!2969974 (is-ElementMatch!19188 lt!2612991))))

(assert (=> d!2281255 (= (validRegex!9784 lt!2612991) e!4403793)))

(declare-fun b!7355013 () Bool)

(declare-fun e!4403795 () Bool)

(assert (=> b!7355013 (= e!4403795 call!673254)))

(declare-fun bm!673249 () Bool)

(assert (=> bm!673249 (= call!673253 (validRegex!9784 (ite c!1366512 (reg!19517 lt!2612991) (ite c!1366513 (regOne!38889 lt!2612991) (regTwo!38888 lt!2612991)))))))

(declare-fun b!7355014 () Bool)

(declare-fun res!2969973 () Bool)

(assert (=> b!7355014 (=> (not res!2969973) (not e!4403795))))

(assert (=> b!7355014 (= res!2969973 call!673252)))

(assert (=> b!7355014 (= e!4403790 e!4403795)))

(declare-fun b!7355015 () Bool)

(assert (=> b!7355015 (= e!4403789 e!4403791)))

(declare-fun res!2969971 () Bool)

(assert (=> b!7355015 (= res!2969971 (not (nullable!8279 (reg!19517 lt!2612991))))))

(assert (=> b!7355015 (=> (not res!2969971) (not e!4403791))))

(assert (= (and d!2281255 (not res!2969974)) b!7355007))

(assert (= (and b!7355007 c!1366512) b!7355015))

(assert (= (and b!7355007 (not c!1366512)) b!7355011))

(assert (= (and b!7355015 res!2969971) b!7355009))

(assert (= (and b!7355011 c!1366513) b!7355014))

(assert (= (and b!7355011 (not c!1366513)) b!7355010))

(assert (= (and b!7355014 res!2969973) b!7355013))

(assert (= (and b!7355010 (not res!2969972)) b!7355008))

(assert (= (and b!7355008 res!2969970) b!7355012))

(assert (= (or b!7355014 b!7355012) bm!673247))

(assert (= (or b!7355013 b!7355008) bm!673248))

(assert (= (or b!7355009 bm!673247) bm!673249))

(declare-fun m!8015088 () Bool)

(assert (=> bm!673248 m!8015088))

(declare-fun m!8015090 () Bool)

(assert (=> bm!673249 m!8015090))

(declare-fun m!8015092 () Bool)

(assert (=> b!7355015 m!8015092))

(assert (=> b!7354862 d!2281255))

(declare-fun bm!673250 () Bool)

(declare-fun call!673255 () Bool)

(declare-fun call!673256 () Bool)

(assert (=> bm!673250 (= call!673255 call!673256)))

(declare-fun b!7355016 () Bool)

(declare-fun e!4403800 () Bool)

(declare-fun e!4403796 () Bool)

(assert (=> b!7355016 (= e!4403800 e!4403796)))

(declare-fun c!1366514 () Bool)

(assert (=> b!7355016 (= c!1366514 (is-Star!19188 r1!2370))))

(declare-fun b!7355017 () Bool)

(declare-fun e!4403799 () Bool)

(declare-fun e!4403801 () Bool)

(assert (=> b!7355017 (= e!4403799 e!4403801)))

(declare-fun res!2969975 () Bool)

(assert (=> b!7355017 (=> (not res!2969975) (not e!4403801))))

(declare-fun call!673257 () Bool)

(assert (=> b!7355017 (= res!2969975 call!673257)))

(declare-fun b!7355018 () Bool)

(declare-fun e!4403798 () Bool)

(assert (=> b!7355018 (= e!4403798 call!673256)))

(declare-fun b!7355019 () Bool)

(declare-fun res!2969977 () Bool)

(assert (=> b!7355019 (=> res!2969977 e!4403799)))

(assert (=> b!7355019 (= res!2969977 (not (is-Concat!28033 r1!2370)))))

(declare-fun e!4403797 () Bool)

(assert (=> b!7355019 (= e!4403797 e!4403799)))

(declare-fun bm!673251 () Bool)

(declare-fun c!1366515 () Bool)

(assert (=> bm!673251 (= call!673257 (validRegex!9784 (ite c!1366515 (regTwo!38889 r1!2370) (regOne!38888 r1!2370))))))

(declare-fun b!7355020 () Bool)

(assert (=> b!7355020 (= e!4403796 e!4403797)))

(assert (=> b!7355020 (= c!1366515 (is-Union!19188 r1!2370))))

(declare-fun b!7355021 () Bool)

(assert (=> b!7355021 (= e!4403801 call!673255)))

(declare-fun d!2281257 () Bool)

(declare-fun res!2969979 () Bool)

(assert (=> d!2281257 (=> res!2969979 e!4403800)))

(assert (=> d!2281257 (= res!2969979 (is-ElementMatch!19188 r1!2370))))

(assert (=> d!2281257 (= (validRegex!9784 r1!2370) e!4403800)))

(declare-fun b!7355022 () Bool)

(declare-fun e!4403802 () Bool)

(assert (=> b!7355022 (= e!4403802 call!673257)))

(declare-fun bm!673252 () Bool)

(assert (=> bm!673252 (= call!673256 (validRegex!9784 (ite c!1366514 (reg!19517 r1!2370) (ite c!1366515 (regOne!38889 r1!2370) (regTwo!38888 r1!2370)))))))

(declare-fun b!7355023 () Bool)

(declare-fun res!2969978 () Bool)

(assert (=> b!7355023 (=> (not res!2969978) (not e!4403802))))

(assert (=> b!7355023 (= res!2969978 call!673255)))

(assert (=> b!7355023 (= e!4403797 e!4403802)))

(declare-fun b!7355024 () Bool)

(assert (=> b!7355024 (= e!4403796 e!4403798)))

(declare-fun res!2969976 () Bool)

(assert (=> b!7355024 (= res!2969976 (not (nullable!8279 (reg!19517 r1!2370))))))

(assert (=> b!7355024 (=> (not res!2969976) (not e!4403798))))

(assert (= (and d!2281257 (not res!2969979)) b!7355016))

(assert (= (and b!7355016 c!1366514) b!7355024))

(assert (= (and b!7355016 (not c!1366514)) b!7355020))

(assert (= (and b!7355024 res!2969976) b!7355018))

(assert (= (and b!7355020 c!1366515) b!7355023))

(assert (= (and b!7355020 (not c!1366515)) b!7355019))

(assert (= (and b!7355023 res!2969978) b!7355022))

(assert (= (and b!7355019 (not res!2969977)) b!7355017))

(assert (= (and b!7355017 res!2969975) b!7355021))

(assert (= (or b!7355023 b!7355021) bm!673250))

(assert (= (or b!7355022 b!7355017) bm!673251))

(assert (= (or b!7355018 bm!673250) bm!673252))

(declare-fun m!8015094 () Bool)

(assert (=> bm!673251 m!8015094))

(declare-fun m!8015096 () Bool)

(assert (=> bm!673252 m!8015096))

(declare-fun m!8015098 () Bool)

(assert (=> b!7355024 m!8015098))

(assert (=> start!718198 d!2281257))

(declare-fun bs!1919646 () Bool)

(declare-fun d!2281259 () Bool)

(assert (= bs!1919646 (and d!2281259 b!7354873)))

(declare-fun lambda!456918 () Int)

(assert (=> bs!1919646 (= lambda!456918 lambda!456904)))

(assert (=> d!2281259 (= (inv!91311 cWitness!61) (forall!18008 (exprs!8628 cWitness!61) lambda!456918))))

(declare-fun bs!1919647 () Bool)

(assert (= bs!1919647 d!2281259))

(declare-fun m!8015100 () Bool)

(assert (=> bs!1919647 m!8015100))

(assert (=> start!718198 d!2281259))

(declare-fun bs!1919648 () Bool)

(declare-fun d!2281261 () Bool)

(assert (= bs!1919648 (and d!2281261 b!7354873)))

(declare-fun lambda!456919 () Int)

(assert (=> bs!1919648 (= lambda!456919 lambda!456904)))

(declare-fun bs!1919649 () Bool)

(assert (= bs!1919649 (and d!2281261 d!2281259)))

(assert (=> bs!1919649 (= lambda!456919 lambda!456918)))

(assert (=> d!2281261 (= (inv!91311 ct1!282) (forall!18008 (exprs!8628 ct1!282) lambda!456919))))

(declare-fun bs!1919650 () Bool)

(assert (= bs!1919650 d!2281261))

(declare-fun m!8015102 () Bool)

(assert (=> bs!1919650 m!8015102))

(assert (=> start!718198 d!2281261))

(declare-fun bs!1919651 () Bool)

(declare-fun d!2281263 () Bool)

(assert (= bs!1919651 (and d!2281263 b!7354873)))

(declare-fun lambda!456920 () Int)

(assert (=> bs!1919651 (= lambda!456920 lambda!456904)))

(declare-fun bs!1919652 () Bool)

(assert (= bs!1919652 (and d!2281263 d!2281259)))

(assert (=> bs!1919652 (= lambda!456920 lambda!456918)))

(declare-fun bs!1919653 () Bool)

(assert (= bs!1919653 (and d!2281263 d!2281261)))

(assert (=> bs!1919653 (= lambda!456920 lambda!456919)))

(assert (=> d!2281263 (= (inv!91311 ct2!378) (forall!18008 (exprs!8628 ct2!378) lambda!456920))))

(declare-fun bs!1919654 () Bool)

(assert (= bs!1919654 d!2281263))

(declare-fun m!8015104 () Bool)

(assert (=> bs!1919654 m!8015104))

(assert (=> start!718198 d!2281263))

(declare-fun b!7355025 () Bool)

(declare-fun e!4403807 () (Set Context!16256))

(declare-fun call!673268 () (Set Context!16256))

(declare-fun call!673269 () (Set Context!16256))

(assert (=> b!7355025 (= e!4403807 (set.union call!673268 call!673269))))

(declare-fun bm!673259 () Bool)

(declare-fun call!673265 () (Set Context!16256))

(declare-fun call!673267 () (Set Context!16256))

(assert (=> bm!673259 (= call!673265 call!673267)))

(declare-fun b!7355026 () Bool)

(declare-fun e!4403805 () (Set Context!16256))

(assert (=> b!7355026 (= e!4403805 (set.union call!673268 call!673267))))

(declare-fun b!7355027 () Bool)

(declare-fun e!4403803 () (Set Context!16256))

(assert (=> b!7355027 (= e!4403805 e!4403803)))

(declare-fun c!1366519 () Bool)

(assert (=> b!7355027 (= c!1366519 (is-Concat!28033 (reg!19517 r1!2370)))))

(declare-fun d!2281265 () Bool)

(declare-fun c!1366516 () Bool)

(assert (=> d!2281265 (= c!1366516 (and (is-ElementMatch!19188 (reg!19517 r1!2370)) (= (c!1366478 (reg!19517 r1!2370)) c!10362)))))

(declare-fun e!4403804 () (Set Context!16256))

(assert (=> d!2281265 (= (derivationStepZipperDown!3014 (reg!19517 r1!2370) lt!2612994 c!10362) e!4403804)))

(declare-fun b!7355028 () Bool)

(declare-fun e!4403806 () (Set Context!16256))

(assert (=> b!7355028 (= e!4403806 call!673265)))

(declare-fun b!7355029 () Bool)

(assert (=> b!7355029 (= e!4403804 (set.insert lt!2612994 (as set.empty (Set Context!16256))))))

(declare-fun b!7355030 () Bool)

(assert (=> b!7355030 (= e!4403803 call!673265)))

(declare-fun b!7355031 () Bool)

(declare-fun c!1366517 () Bool)

(assert (=> b!7355031 (= c!1366517 (is-Star!19188 (reg!19517 r1!2370)))))

(assert (=> b!7355031 (= e!4403803 e!4403806)))

(declare-fun b!7355032 () Bool)

(assert (=> b!7355032 (= e!4403804 e!4403807)))

(declare-fun c!1366520 () Bool)

(assert (=> b!7355032 (= c!1366520 (is-Union!19188 (reg!19517 r1!2370)))))

(declare-fun bm!673260 () Bool)

(declare-fun c!1366518 () Bool)

(declare-fun call!673264 () List!71684)

(assert (=> bm!673260 (= call!673264 ($colon$colon!3185 (exprs!8628 lt!2612994) (ite (or c!1366518 c!1366519) (regTwo!38888 (reg!19517 r1!2370)) (reg!19517 r1!2370))))))

(declare-fun b!7355033 () Bool)

(declare-fun e!4403808 () Bool)

(assert (=> b!7355033 (= c!1366518 e!4403808)))

(declare-fun res!2969980 () Bool)

(assert (=> b!7355033 (=> (not res!2969980) (not e!4403808))))

(assert (=> b!7355033 (= res!2969980 (is-Concat!28033 (reg!19517 r1!2370)))))

(assert (=> b!7355033 (= e!4403807 e!4403805)))

(declare-fun bm!673261 () Bool)

(declare-fun call!673266 () List!71684)

(assert (=> bm!673261 (= call!673266 call!673264)))

(declare-fun b!7355034 () Bool)

(assert (=> b!7355034 (= e!4403808 (nullable!8279 (regOne!38888 (reg!19517 r1!2370))))))

(declare-fun bm!673262 () Bool)

(assert (=> bm!673262 (= call!673268 (derivationStepZipperDown!3014 (ite c!1366520 (regOne!38889 (reg!19517 r1!2370)) (regOne!38888 (reg!19517 r1!2370))) (ite c!1366520 lt!2612994 (Context!16257 call!673264)) c!10362))))

(declare-fun bm!673263 () Bool)

(assert (=> bm!673263 (= call!673269 (derivationStepZipperDown!3014 (ite c!1366520 (regTwo!38889 (reg!19517 r1!2370)) (ite c!1366518 (regTwo!38888 (reg!19517 r1!2370)) (ite c!1366519 (regOne!38888 (reg!19517 r1!2370)) (reg!19517 (reg!19517 r1!2370))))) (ite (or c!1366520 c!1366518) lt!2612994 (Context!16257 call!673266)) c!10362))))

(declare-fun bm!673264 () Bool)

(assert (=> bm!673264 (= call!673267 call!673269)))

(declare-fun b!7355035 () Bool)

(assert (=> b!7355035 (= e!4403806 (as set.empty (Set Context!16256)))))

(assert (= (and d!2281265 c!1366516) b!7355029))

(assert (= (and d!2281265 (not c!1366516)) b!7355032))

(assert (= (and b!7355032 c!1366520) b!7355025))

(assert (= (and b!7355032 (not c!1366520)) b!7355033))

(assert (= (and b!7355033 res!2969980) b!7355034))

(assert (= (and b!7355033 c!1366518) b!7355026))

(assert (= (and b!7355033 (not c!1366518)) b!7355027))

(assert (= (and b!7355027 c!1366519) b!7355030))

(assert (= (and b!7355027 (not c!1366519)) b!7355031))

(assert (= (and b!7355031 c!1366517) b!7355028))

(assert (= (and b!7355031 (not c!1366517)) b!7355035))

(assert (= (or b!7355030 b!7355028) bm!673261))

(assert (= (or b!7355030 b!7355028) bm!673259))

(assert (= (or b!7355026 bm!673259) bm!673264))

(assert (= (or b!7355026 bm!673261) bm!673260))

(assert (= (or b!7355025 bm!673264) bm!673263))

(assert (= (or b!7355025 b!7355026) bm!673262))

(declare-fun m!8015106 () Bool)

(assert (=> b!7355029 m!8015106))

(declare-fun m!8015108 () Bool)

(assert (=> bm!673263 m!8015108))

(declare-fun m!8015110 () Bool)

(assert (=> bm!673262 m!8015110))

(declare-fun m!8015112 () Bool)

(assert (=> bm!673260 m!8015112))

(declare-fun m!8015114 () Bool)

(assert (=> b!7355034 m!8015114))

(assert (=> b!7354867 d!2281265))

(declare-fun d!2281267 () Bool)

(assert (=> d!2281267 (= ($colon$colon!3185 (exprs!8628 ct1!282) lt!2612991) (Cons!71560 lt!2612991 (exprs!8628 ct1!282)))))

(assert (=> b!7354867 d!2281267))

(declare-fun d!2281269 () Bool)

(declare-fun nullableFct!3307 (Regex!19188) Bool)

(assert (=> d!2281269 (= (nullable!8279 (regOne!38888 r1!2370)) (nullableFct!3307 (regOne!38888 r1!2370)))))

(declare-fun bs!1919655 () Bool)

(assert (= bs!1919655 d!2281269))

(declare-fun m!8015116 () Bool)

(assert (=> bs!1919655 m!8015116))

(assert (=> b!7354864 d!2281269))

(declare-fun d!2281271 () Bool)

(declare-fun res!2969985 () Bool)

(declare-fun e!4403813 () Bool)

(assert (=> d!2281271 (=> res!2969985 e!4403813)))

(assert (=> d!2281271 (= res!2969985 (is-Nil!71560 (exprs!8628 cWitness!61)))))

(assert (=> d!2281271 (= (forall!18008 (exprs!8628 cWitness!61) lambda!456904) e!4403813)))

(declare-fun b!7355040 () Bool)

(declare-fun e!4403814 () Bool)

(assert (=> b!7355040 (= e!4403813 e!4403814)))

(declare-fun res!2969986 () Bool)

(assert (=> b!7355040 (=> (not res!2969986) (not e!4403814))))

(declare-fun dynLambda!29507 (Int Regex!19188) Bool)

(assert (=> b!7355040 (= res!2969986 (dynLambda!29507 lambda!456904 (h!78008 (exprs!8628 cWitness!61))))))

(declare-fun b!7355041 () Bool)

(assert (=> b!7355041 (= e!4403814 (forall!18008 (t!386119 (exprs!8628 cWitness!61)) lambda!456904))))

(assert (= (and d!2281271 (not res!2969985)) b!7355040))

(assert (= (and b!7355040 res!2969986) b!7355041))

(declare-fun b_lambda!284219 () Bool)

(assert (=> (not b_lambda!284219) (not b!7355040)))

(declare-fun m!8015118 () Bool)

(assert (=> b!7355040 m!8015118))

(declare-fun m!8015120 () Bool)

(assert (=> b!7355041 m!8015120))

(assert (=> b!7354866 d!2281271))

(declare-fun d!2281273 () Bool)

(assert (=> d!2281273 (forall!18008 (++!17006 lt!2612997 (exprs!8628 ct2!378)) lambda!456904)))

(declare-fun lt!2613038 () Unit!165329)

(assert (=> d!2281273 (= lt!2613038 (choose!57212 lt!2612997 (exprs!8628 ct2!378) lambda!456904))))

(assert (=> d!2281273 (forall!18008 lt!2612997 lambda!456904)))

(assert (=> d!2281273 (= (lemmaConcatPreservesForall!1863 lt!2612997 (exprs!8628 ct2!378) lambda!456904) lt!2613038)))

(declare-fun bs!1919656 () Bool)

(assert (= bs!1919656 d!2281273))

(assert (=> bs!1919656 m!8014996))

(assert (=> bs!1919656 m!8014996))

(declare-fun m!8015122 () Bool)

(assert (=> bs!1919656 m!8015122))

(declare-fun m!8015124 () Bool)

(assert (=> bs!1919656 m!8015124))

(declare-fun m!8015126 () Bool)

(assert (=> bs!1919656 m!8015126))

(assert (=> b!7354871 d!2281273))

(declare-fun bs!1919657 () Bool)

(declare-fun d!2281275 () Bool)

(assert (= bs!1919657 (and d!2281275 b!7354873)))

(declare-fun lambda!456925 () Int)

(assert (=> bs!1919657 (= lambda!456925 lambda!456904)))

(declare-fun bs!1919658 () Bool)

(assert (= bs!1919658 (and d!2281275 d!2281259)))

(assert (=> bs!1919658 (= lambda!456925 lambda!456918)))

(declare-fun bs!1919659 () Bool)

(assert (= bs!1919659 (and d!2281275 d!2281261)))

(assert (=> bs!1919659 (= lambda!456925 lambda!456919)))

(declare-fun bs!1919660 () Bool)

(assert (= bs!1919660 (and d!2281275 d!2281263)))

(assert (=> bs!1919660 (= lambda!456925 lambda!456920)))

(assert (=> d!2281275 (set.member (Context!16257 (++!17006 (exprs!8628 cWitness!61) (exprs!8628 ct2!378))) (derivationStepZipperDown!3014 (reg!19517 r1!2370) (Context!16257 (++!17006 (exprs!8628 lt!2612994) (exprs!8628 ct2!378))) c!10362))))

(declare-fun lt!2613047 () Unit!165329)

(assert (=> d!2281275 (= lt!2613047 (lemmaConcatPreservesForall!1863 (exprs!8628 lt!2612994) (exprs!8628 ct2!378) lambda!456925))))

(declare-fun lt!2613046 () Unit!165329)

(assert (=> d!2281275 (= lt!2613046 (lemmaConcatPreservesForall!1863 (exprs!8628 cWitness!61) (exprs!8628 ct2!378) lambda!456925))))

(declare-fun lt!2613045 () Unit!165329)

(declare-fun choose!57213 (Regex!19188 Context!16256 Context!16256 Context!16256 C!38650) Unit!165329)

(assert (=> d!2281275 (= lt!2613045 (choose!57213 (reg!19517 r1!2370) lt!2612994 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2281275 (validRegex!9784 (reg!19517 r1!2370))))

(assert (=> d!2281275 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!105 (reg!19517 r1!2370) lt!2612994 ct2!378 cWitness!61 c!10362) lt!2613045)))

(declare-fun bs!1919661 () Bool)

(assert (= bs!1919661 d!2281275))

(declare-fun m!8015136 () Bool)

(assert (=> bs!1919661 m!8015136))

(declare-fun m!8015138 () Bool)

(assert (=> bs!1919661 m!8015138))

(declare-fun m!8015140 () Bool)

(assert (=> bs!1919661 m!8015140))

(declare-fun m!8015142 () Bool)

(assert (=> bs!1919661 m!8015142))

(assert (=> bs!1919661 m!8015000))

(declare-fun m!8015144 () Bool)

(assert (=> bs!1919661 m!8015144))

(declare-fun m!8015146 () Bool)

(assert (=> bs!1919661 m!8015146))

(declare-fun m!8015148 () Bool)

(assert (=> bs!1919661 m!8015148))

(assert (=> b!7354871 d!2281275))

(declare-fun b!7355056 () Bool)

(declare-fun lt!2613048 () List!71684)

(declare-fun e!4403822 () Bool)

(assert (=> b!7355056 (= e!4403822 (or (not (= (exprs!8628 ct2!378) Nil!71560)) (= lt!2613048 (exprs!8628 cWitness!61))))))

(declare-fun b!7355055 () Bool)

(declare-fun res!2969988 () Bool)

(assert (=> b!7355055 (=> (not res!2969988) (not e!4403822))))

(assert (=> b!7355055 (= res!2969988 (= (size!42069 lt!2613048) (+ (size!42069 (exprs!8628 cWitness!61)) (size!42069 (exprs!8628 ct2!378)))))))

(declare-fun b!7355054 () Bool)

(declare-fun e!4403821 () List!71684)

(assert (=> b!7355054 (= e!4403821 (Cons!71560 (h!78008 (exprs!8628 cWitness!61)) (++!17006 (t!386119 (exprs!8628 cWitness!61)) (exprs!8628 ct2!378))))))

(declare-fun b!7355053 () Bool)

(assert (=> b!7355053 (= e!4403821 (exprs!8628 ct2!378))))

(declare-fun d!2281279 () Bool)

(assert (=> d!2281279 e!4403822))

(declare-fun res!2969989 () Bool)

(assert (=> d!2281279 (=> (not res!2969989) (not e!4403822))))

(assert (=> d!2281279 (= res!2969989 (= (content!15091 lt!2613048) (set.union (content!15091 (exprs!8628 cWitness!61)) (content!15091 (exprs!8628 ct2!378)))))))

(assert (=> d!2281279 (= lt!2613048 e!4403821)))

(declare-fun c!1366527 () Bool)

(assert (=> d!2281279 (= c!1366527 (is-Nil!71560 (exprs!8628 cWitness!61)))))

(assert (=> d!2281279 (= (++!17006 (exprs!8628 cWitness!61) (exprs!8628 ct2!378)) lt!2613048)))

(assert (= (and d!2281279 c!1366527) b!7355053))

(assert (= (and d!2281279 (not c!1366527)) b!7355054))

(assert (= (and d!2281279 res!2969989) b!7355055))

(assert (= (and b!7355055 res!2969988) b!7355056))

(declare-fun m!8015150 () Bool)

(assert (=> b!7355055 m!8015150))

(declare-fun m!8015152 () Bool)

(assert (=> b!7355055 m!8015152))

(assert (=> b!7355055 m!8015072))

(declare-fun m!8015154 () Bool)

(assert (=> b!7355054 m!8015154))

(declare-fun m!8015156 () Bool)

(assert (=> d!2281279 m!8015156))

(declare-fun m!8015158 () Bool)

(assert (=> d!2281279 m!8015158))

(assert (=> d!2281279 m!8015080))

(assert (=> b!7354871 d!2281279))

(declare-fun b!7355057 () Bool)

(declare-fun e!4403827 () (Set Context!16256))

(declare-fun call!673282 () (Set Context!16256))

(declare-fun call!673283 () (Set Context!16256))

(assert (=> b!7355057 (= e!4403827 (set.union call!673282 call!673283))))

(declare-fun bm!673273 () Bool)

(declare-fun call!673279 () (Set Context!16256))

(declare-fun call!673281 () (Set Context!16256))

(assert (=> bm!673273 (= call!673279 call!673281)))

(declare-fun b!7355058 () Bool)

(declare-fun e!4403825 () (Set Context!16256))

(assert (=> b!7355058 (= e!4403825 (set.union call!673282 call!673281))))

(declare-fun b!7355059 () Bool)

(declare-fun e!4403823 () (Set Context!16256))

(assert (=> b!7355059 (= e!4403825 e!4403823)))

(declare-fun c!1366531 () Bool)

(assert (=> b!7355059 (= c!1366531 (is-Concat!28033 (reg!19517 r1!2370)))))

(declare-fun d!2281281 () Bool)

(declare-fun c!1366528 () Bool)

(assert (=> d!2281281 (= c!1366528 (and (is-ElementMatch!19188 (reg!19517 r1!2370)) (= (c!1366478 (reg!19517 r1!2370)) c!10362)))))

(declare-fun e!4403824 () (Set Context!16256))

(assert (=> d!2281281 (= (derivationStepZipperDown!3014 (reg!19517 r1!2370) (Context!16257 (++!17006 lt!2612997 (exprs!8628 ct2!378))) c!10362) e!4403824)))

(declare-fun b!7355060 () Bool)

(declare-fun e!4403826 () (Set Context!16256))

(assert (=> b!7355060 (= e!4403826 call!673279)))

(declare-fun b!7355061 () Bool)

(assert (=> b!7355061 (= e!4403824 (set.insert (Context!16257 (++!17006 lt!2612997 (exprs!8628 ct2!378))) (as set.empty (Set Context!16256))))))

(declare-fun b!7355062 () Bool)

(assert (=> b!7355062 (= e!4403823 call!673279)))

(declare-fun b!7355063 () Bool)

(declare-fun c!1366529 () Bool)

(assert (=> b!7355063 (= c!1366529 (is-Star!19188 (reg!19517 r1!2370)))))

(assert (=> b!7355063 (= e!4403823 e!4403826)))

(declare-fun b!7355064 () Bool)

(assert (=> b!7355064 (= e!4403824 e!4403827)))

(declare-fun c!1366532 () Bool)

(assert (=> b!7355064 (= c!1366532 (is-Union!19188 (reg!19517 r1!2370)))))

(declare-fun call!673278 () List!71684)

(declare-fun c!1366530 () Bool)

(declare-fun bm!673274 () Bool)

(assert (=> bm!673274 (= call!673278 ($colon$colon!3185 (exprs!8628 (Context!16257 (++!17006 lt!2612997 (exprs!8628 ct2!378)))) (ite (or c!1366530 c!1366531) (regTwo!38888 (reg!19517 r1!2370)) (reg!19517 r1!2370))))))

(declare-fun b!7355065 () Bool)

(declare-fun e!4403828 () Bool)

(assert (=> b!7355065 (= c!1366530 e!4403828)))

(declare-fun res!2969990 () Bool)

(assert (=> b!7355065 (=> (not res!2969990) (not e!4403828))))

(assert (=> b!7355065 (= res!2969990 (is-Concat!28033 (reg!19517 r1!2370)))))

(assert (=> b!7355065 (= e!4403827 e!4403825)))

(declare-fun bm!673275 () Bool)

(declare-fun call!673280 () List!71684)

(assert (=> bm!673275 (= call!673280 call!673278)))

(declare-fun b!7355066 () Bool)

(assert (=> b!7355066 (= e!4403828 (nullable!8279 (regOne!38888 (reg!19517 r1!2370))))))

(declare-fun bm!673276 () Bool)

(assert (=> bm!673276 (= call!673282 (derivationStepZipperDown!3014 (ite c!1366532 (regOne!38889 (reg!19517 r1!2370)) (regOne!38888 (reg!19517 r1!2370))) (ite c!1366532 (Context!16257 (++!17006 lt!2612997 (exprs!8628 ct2!378))) (Context!16257 call!673278)) c!10362))))

(declare-fun bm!673277 () Bool)

(assert (=> bm!673277 (= call!673283 (derivationStepZipperDown!3014 (ite c!1366532 (regTwo!38889 (reg!19517 r1!2370)) (ite c!1366530 (regTwo!38888 (reg!19517 r1!2370)) (ite c!1366531 (regOne!38888 (reg!19517 r1!2370)) (reg!19517 (reg!19517 r1!2370))))) (ite (or c!1366532 c!1366530) (Context!16257 (++!17006 lt!2612997 (exprs!8628 ct2!378))) (Context!16257 call!673280)) c!10362))))

(declare-fun bm!673278 () Bool)

(assert (=> bm!673278 (= call!673281 call!673283)))

(declare-fun b!7355067 () Bool)

(assert (=> b!7355067 (= e!4403826 (as set.empty (Set Context!16256)))))

(assert (= (and d!2281281 c!1366528) b!7355061))

(assert (= (and d!2281281 (not c!1366528)) b!7355064))

(assert (= (and b!7355064 c!1366532) b!7355057))

(assert (= (and b!7355064 (not c!1366532)) b!7355065))

(assert (= (and b!7355065 res!2969990) b!7355066))

(assert (= (and b!7355065 c!1366530) b!7355058))

(assert (= (and b!7355065 (not c!1366530)) b!7355059))

(assert (= (and b!7355059 c!1366531) b!7355062))

(assert (= (and b!7355059 (not c!1366531)) b!7355063))

(assert (= (and b!7355063 c!1366529) b!7355060))

(assert (= (and b!7355063 (not c!1366529)) b!7355067))

(assert (= (or b!7355062 b!7355060) bm!673275))

(assert (= (or b!7355062 b!7355060) bm!673273))

(assert (= (or b!7355058 bm!673273) bm!673278))

(assert (= (or b!7355058 bm!673275) bm!673274))

(assert (= (or b!7355057 bm!673278) bm!673277))

(assert (= (or b!7355057 b!7355058) bm!673276))

(declare-fun m!8015160 () Bool)

(assert (=> b!7355061 m!8015160))

(declare-fun m!8015162 () Bool)

(assert (=> bm!673277 m!8015162))

(declare-fun m!8015164 () Bool)

(assert (=> bm!673276 m!8015164))

(declare-fun m!8015166 () Bool)

(assert (=> bm!673274 m!8015166))

(assert (=> b!7355066 m!8015114))

(assert (=> b!7354871 d!2281281))

(declare-fun d!2281283 () Bool)

(assert (=> d!2281283 (forall!18008 (++!17006 (exprs!8628 cWitness!61) (exprs!8628 ct2!378)) lambda!456904)))

(declare-fun lt!2613049 () Unit!165329)

(assert (=> d!2281283 (= lt!2613049 (choose!57212 (exprs!8628 cWitness!61) (exprs!8628 ct2!378) lambda!456904))))

(assert (=> d!2281283 (forall!18008 (exprs!8628 cWitness!61) lambda!456904)))

(assert (=> d!2281283 (= (lemmaConcatPreservesForall!1863 (exprs!8628 cWitness!61) (exprs!8628 ct2!378) lambda!456904) lt!2613049)))

(declare-fun bs!1919662 () Bool)

(assert (= bs!1919662 d!2281283))

(assert (=> bs!1919662 m!8015000))

(assert (=> bs!1919662 m!8015000))

(declare-fun m!8015168 () Bool)

(assert (=> bs!1919662 m!8015168))

(declare-fun m!8015170 () Bool)

(assert (=> bs!1919662 m!8015170))

(assert (=> bs!1919662 m!8014970))

(assert (=> b!7354871 d!2281283))

(declare-fun lt!2613050 () List!71684)

(declare-fun e!4403830 () Bool)

(declare-fun b!7355071 () Bool)

(assert (=> b!7355071 (= e!4403830 (or (not (= (exprs!8628 ct2!378) Nil!71560)) (= lt!2613050 lt!2612997)))))

(declare-fun b!7355070 () Bool)

(declare-fun res!2969991 () Bool)

(assert (=> b!7355070 (=> (not res!2969991) (not e!4403830))))

(assert (=> b!7355070 (= res!2969991 (= (size!42069 lt!2613050) (+ (size!42069 lt!2612997) (size!42069 (exprs!8628 ct2!378)))))))

(declare-fun b!7355069 () Bool)

(declare-fun e!4403829 () List!71684)

(assert (=> b!7355069 (= e!4403829 (Cons!71560 (h!78008 lt!2612997) (++!17006 (t!386119 lt!2612997) (exprs!8628 ct2!378))))))

(declare-fun b!7355068 () Bool)

(assert (=> b!7355068 (= e!4403829 (exprs!8628 ct2!378))))

(declare-fun d!2281285 () Bool)

(assert (=> d!2281285 e!4403830))

(declare-fun res!2969992 () Bool)

(assert (=> d!2281285 (=> (not res!2969992) (not e!4403830))))

(assert (=> d!2281285 (= res!2969992 (= (content!15091 lt!2613050) (set.union (content!15091 lt!2612997) (content!15091 (exprs!8628 ct2!378)))))))

(assert (=> d!2281285 (= lt!2613050 e!4403829)))

(declare-fun c!1366533 () Bool)

(assert (=> d!2281285 (= c!1366533 (is-Nil!71560 lt!2612997))))

(assert (=> d!2281285 (= (++!17006 lt!2612997 (exprs!8628 ct2!378)) lt!2613050)))

(assert (= (and d!2281285 c!1366533) b!7355068))

(assert (= (and d!2281285 (not c!1366533)) b!7355069))

(assert (= (and d!2281285 res!2969992) b!7355070))

(assert (= (and b!7355070 res!2969991) b!7355071))

(declare-fun m!8015172 () Bool)

(assert (=> b!7355070 m!8015172))

(declare-fun m!8015174 () Bool)

(assert (=> b!7355070 m!8015174))

(assert (=> b!7355070 m!8015072))

(declare-fun m!8015176 () Bool)

(assert (=> b!7355069 m!8015176))

(declare-fun m!8015178 () Bool)

(assert (=> d!2281285 m!8015178))

(declare-fun m!8015180 () Bool)

(assert (=> d!2281285 m!8015180))

(assert (=> d!2281285 m!8015080))

(assert (=> b!7354871 d!2281285))

(declare-fun b!7355072 () Bool)

(declare-fun e!4403835 () (Set Context!16256))

(declare-fun call!673288 () (Set Context!16256))

(declare-fun call!673289 () (Set Context!16256))

(assert (=> b!7355072 (= e!4403835 (set.union call!673288 call!673289))))

(declare-fun bm!673279 () Bool)

(declare-fun call!673285 () (Set Context!16256))

(declare-fun call!673287 () (Set Context!16256))

(assert (=> bm!673279 (= call!673285 call!673287)))

(declare-fun b!7355073 () Bool)

(declare-fun e!4403833 () (Set Context!16256))

(assert (=> b!7355073 (= e!4403833 (set.union call!673288 call!673287))))

(declare-fun b!7355074 () Bool)

(declare-fun e!4403831 () (Set Context!16256))

(assert (=> b!7355074 (= e!4403833 e!4403831)))

(declare-fun c!1366537 () Bool)

(assert (=> b!7355074 (= c!1366537 (is-Concat!28033 r1!2370))))

(declare-fun d!2281287 () Bool)

(declare-fun c!1366534 () Bool)

(assert (=> d!2281287 (= c!1366534 (and (is-ElementMatch!19188 r1!2370) (= (c!1366478 r1!2370) c!10362)))))

(declare-fun e!4403832 () (Set Context!16256))

(assert (=> d!2281287 (= (derivationStepZipperDown!3014 r1!2370 ct1!282 c!10362) e!4403832)))

(declare-fun b!7355075 () Bool)

(declare-fun e!4403834 () (Set Context!16256))

(assert (=> b!7355075 (= e!4403834 call!673285)))

(declare-fun b!7355076 () Bool)

(assert (=> b!7355076 (= e!4403832 (set.insert ct1!282 (as set.empty (Set Context!16256))))))

(declare-fun b!7355077 () Bool)

(assert (=> b!7355077 (= e!4403831 call!673285)))

(declare-fun b!7355078 () Bool)

(declare-fun c!1366535 () Bool)

(assert (=> b!7355078 (= c!1366535 (is-Star!19188 r1!2370))))

(assert (=> b!7355078 (= e!4403831 e!4403834)))

(declare-fun b!7355079 () Bool)

(assert (=> b!7355079 (= e!4403832 e!4403835)))

(declare-fun c!1366538 () Bool)

(assert (=> b!7355079 (= c!1366538 (is-Union!19188 r1!2370))))

(declare-fun bm!673280 () Bool)

(declare-fun call!673284 () List!71684)

(declare-fun c!1366536 () Bool)

(assert (=> bm!673280 (= call!673284 ($colon$colon!3185 (exprs!8628 ct1!282) (ite (or c!1366536 c!1366537) (regTwo!38888 r1!2370) r1!2370)))))

(declare-fun b!7355080 () Bool)

(declare-fun e!4403836 () Bool)

(assert (=> b!7355080 (= c!1366536 e!4403836)))

(declare-fun res!2969993 () Bool)

(assert (=> b!7355080 (=> (not res!2969993) (not e!4403836))))

(assert (=> b!7355080 (= res!2969993 (is-Concat!28033 r1!2370))))

(assert (=> b!7355080 (= e!4403835 e!4403833)))

(declare-fun bm!673281 () Bool)

(declare-fun call!673286 () List!71684)

(assert (=> bm!673281 (= call!673286 call!673284)))

(declare-fun b!7355081 () Bool)

(assert (=> b!7355081 (= e!4403836 (nullable!8279 (regOne!38888 r1!2370)))))

(declare-fun bm!673282 () Bool)

(assert (=> bm!673282 (= call!673288 (derivationStepZipperDown!3014 (ite c!1366538 (regOne!38889 r1!2370) (regOne!38888 r1!2370)) (ite c!1366538 ct1!282 (Context!16257 call!673284)) c!10362))))

(declare-fun bm!673283 () Bool)

(assert (=> bm!673283 (= call!673289 (derivationStepZipperDown!3014 (ite c!1366538 (regTwo!38889 r1!2370) (ite c!1366536 (regTwo!38888 r1!2370) (ite c!1366537 (regOne!38888 r1!2370) (reg!19517 r1!2370)))) (ite (or c!1366538 c!1366536) ct1!282 (Context!16257 call!673286)) c!10362))))

(declare-fun bm!673284 () Bool)

(assert (=> bm!673284 (= call!673287 call!673289)))

(declare-fun b!7355082 () Bool)

(assert (=> b!7355082 (= e!4403834 (as set.empty (Set Context!16256)))))

(assert (= (and d!2281287 c!1366534) b!7355076))

(assert (= (and d!2281287 (not c!1366534)) b!7355079))

(assert (= (and b!7355079 c!1366538) b!7355072))

(assert (= (and b!7355079 (not c!1366538)) b!7355080))

(assert (= (and b!7355080 res!2969993) b!7355081))

(assert (= (and b!7355080 c!1366536) b!7355073))

(assert (= (and b!7355080 (not c!1366536)) b!7355074))

(assert (= (and b!7355074 c!1366537) b!7355077))

(assert (= (and b!7355074 (not c!1366537)) b!7355078))

(assert (= (and b!7355078 c!1366535) b!7355075))

(assert (= (and b!7355078 (not c!1366535)) b!7355082))

(assert (= (or b!7355077 b!7355075) bm!673281))

(assert (= (or b!7355077 b!7355075) bm!673279))

(assert (= (or b!7355073 bm!673279) bm!673284))

(assert (= (or b!7355073 bm!673281) bm!673280))

(assert (= (or b!7355072 bm!673284) bm!673283))

(assert (= (or b!7355072 b!7355073) bm!673282))

(declare-fun m!8015182 () Bool)

(assert (=> b!7355076 m!8015182))

(declare-fun m!8015184 () Bool)

(assert (=> bm!673283 m!8015184))

(declare-fun m!8015186 () Bool)

(assert (=> bm!673282 m!8015186))

(declare-fun m!8015188 () Bool)

(assert (=> bm!673280 m!8015188))

(assert (=> b!7355081 m!8015008))

(assert (=> b!7354860 d!2281287))

(declare-fun b!7355095 () Bool)

(declare-fun e!4403839 () Bool)

(declare-fun tp!2089237 () Bool)

(assert (=> b!7355095 (= e!4403839 tp!2089237)))

(declare-fun b!7355096 () Bool)

(declare-fun tp!2089235 () Bool)

(declare-fun tp!2089238 () Bool)

(assert (=> b!7355096 (= e!4403839 (and tp!2089235 tp!2089238))))

(declare-fun b!7355093 () Bool)

(assert (=> b!7355093 (= e!4403839 tp_is_empty!48621)))

(declare-fun b!7355094 () Bool)

(declare-fun tp!2089234 () Bool)

(declare-fun tp!2089236 () Bool)

(assert (=> b!7355094 (= e!4403839 (and tp!2089234 tp!2089236))))

(assert (=> b!7354872 (= tp!2089197 e!4403839)))

(assert (= (and b!7354872 (is-ElementMatch!19188 (regOne!38889 r1!2370))) b!7355093))

(assert (= (and b!7354872 (is-Concat!28033 (regOne!38889 r1!2370))) b!7355094))

(assert (= (and b!7354872 (is-Star!19188 (regOne!38889 r1!2370))) b!7355095))

(assert (= (and b!7354872 (is-Union!19188 (regOne!38889 r1!2370))) b!7355096))

(declare-fun b!7355099 () Bool)

(declare-fun e!4403840 () Bool)

(declare-fun tp!2089242 () Bool)

(assert (=> b!7355099 (= e!4403840 tp!2089242)))

(declare-fun b!7355100 () Bool)

(declare-fun tp!2089240 () Bool)

(declare-fun tp!2089243 () Bool)

(assert (=> b!7355100 (= e!4403840 (and tp!2089240 tp!2089243))))

(declare-fun b!7355097 () Bool)

(assert (=> b!7355097 (= e!4403840 tp_is_empty!48621)))

(declare-fun b!7355098 () Bool)

(declare-fun tp!2089239 () Bool)

(declare-fun tp!2089241 () Bool)

(assert (=> b!7355098 (= e!4403840 (and tp!2089239 tp!2089241))))

(assert (=> b!7354872 (= tp!2089193 e!4403840)))

(assert (= (and b!7354872 (is-ElementMatch!19188 (regTwo!38889 r1!2370))) b!7355097))

(assert (= (and b!7354872 (is-Concat!28033 (regTwo!38889 r1!2370))) b!7355098))

(assert (= (and b!7354872 (is-Star!19188 (regTwo!38889 r1!2370))) b!7355099))

(assert (= (and b!7354872 (is-Union!19188 (regTwo!38889 r1!2370))) b!7355100))

(declare-fun b!7355103 () Bool)

(declare-fun e!4403841 () Bool)

(declare-fun tp!2089247 () Bool)

(assert (=> b!7355103 (= e!4403841 tp!2089247)))

(declare-fun b!7355104 () Bool)

(declare-fun tp!2089245 () Bool)

(declare-fun tp!2089248 () Bool)

(assert (=> b!7355104 (= e!4403841 (and tp!2089245 tp!2089248))))

(declare-fun b!7355101 () Bool)

(assert (=> b!7355101 (= e!4403841 tp_is_empty!48621)))

(declare-fun b!7355102 () Bool)

(declare-fun tp!2089244 () Bool)

(declare-fun tp!2089246 () Bool)

(assert (=> b!7355102 (= e!4403841 (and tp!2089244 tp!2089246))))

(assert (=> b!7354869 (= tp!2089198 e!4403841)))

(assert (= (and b!7354869 (is-ElementMatch!19188 (reg!19517 r1!2370))) b!7355101))

(assert (= (and b!7354869 (is-Concat!28033 (reg!19517 r1!2370))) b!7355102))

(assert (= (and b!7354869 (is-Star!19188 (reg!19517 r1!2370))) b!7355103))

(assert (= (and b!7354869 (is-Union!19188 (reg!19517 r1!2370))) b!7355104))

(declare-fun b!7355113 () Bool)

(declare-fun e!4403846 () Bool)

(declare-fun tp!2089253 () Bool)

(declare-fun tp!2089254 () Bool)

(assert (=> b!7355113 (= e!4403846 (and tp!2089253 tp!2089254))))

(assert (=> b!7354858 (= tp!2089192 e!4403846)))

(assert (= (and b!7354858 (is-Cons!71560 (exprs!8628 cWitness!61))) b!7355113))

(declare-fun b!7355114 () Bool)

(declare-fun e!4403847 () Bool)

(declare-fun tp!2089255 () Bool)

(declare-fun tp!2089256 () Bool)

(assert (=> b!7355114 (= e!4403847 (and tp!2089255 tp!2089256))))

(assert (=> b!7354868 (= tp!2089194 e!4403847)))

(assert (= (and b!7354868 (is-Cons!71560 (exprs!8628 ct1!282))) b!7355114))

(declare-fun b!7355115 () Bool)

(declare-fun e!4403848 () Bool)

(declare-fun tp!2089257 () Bool)

(declare-fun tp!2089258 () Bool)

(assert (=> b!7355115 (= e!4403848 (and tp!2089257 tp!2089258))))

(assert (=> b!7354865 (= tp!2089196 e!4403848)))

(assert (= (and b!7354865 (is-Cons!71560 (exprs!8628 ct2!378))) b!7355115))

(declare-fun b!7355118 () Bool)

(declare-fun e!4403849 () Bool)

(declare-fun tp!2089262 () Bool)

(assert (=> b!7355118 (= e!4403849 tp!2089262)))

(declare-fun b!7355119 () Bool)

(declare-fun tp!2089260 () Bool)

(declare-fun tp!2089263 () Bool)

(assert (=> b!7355119 (= e!4403849 (and tp!2089260 tp!2089263))))

(declare-fun b!7355116 () Bool)

(assert (=> b!7355116 (= e!4403849 tp_is_empty!48621)))

(declare-fun b!7355117 () Bool)

(declare-fun tp!2089259 () Bool)

(declare-fun tp!2089261 () Bool)

(assert (=> b!7355117 (= e!4403849 (and tp!2089259 tp!2089261))))

(assert (=> b!7354861 (= tp!2089199 e!4403849)))

(assert (= (and b!7354861 (is-ElementMatch!19188 (regOne!38888 r1!2370))) b!7355116))

(assert (= (and b!7354861 (is-Concat!28033 (regOne!38888 r1!2370))) b!7355117))

(assert (= (and b!7354861 (is-Star!19188 (regOne!38888 r1!2370))) b!7355118))

(assert (= (and b!7354861 (is-Union!19188 (regOne!38888 r1!2370))) b!7355119))

(declare-fun b!7355124 () Bool)

(declare-fun e!4403852 () Bool)

(declare-fun tp!2089267 () Bool)

(assert (=> b!7355124 (= e!4403852 tp!2089267)))

(declare-fun b!7355125 () Bool)

(declare-fun tp!2089265 () Bool)

(declare-fun tp!2089268 () Bool)

(assert (=> b!7355125 (= e!4403852 (and tp!2089265 tp!2089268))))

(declare-fun b!7355122 () Bool)

(assert (=> b!7355122 (= e!4403852 tp_is_empty!48621)))

(declare-fun b!7355123 () Bool)

(declare-fun tp!2089264 () Bool)

(declare-fun tp!2089266 () Bool)

(assert (=> b!7355123 (= e!4403852 (and tp!2089264 tp!2089266))))

(assert (=> b!7354861 (= tp!2089195 e!4403852)))

(assert (= (and b!7354861 (is-ElementMatch!19188 (regTwo!38888 r1!2370))) b!7355122))

(assert (= (and b!7354861 (is-Concat!28033 (regTwo!38888 r1!2370))) b!7355123))

(assert (= (and b!7354861 (is-Star!19188 (regTwo!38888 r1!2370))) b!7355124))

(assert (= (and b!7354861 (is-Union!19188 (regTwo!38888 r1!2370))) b!7355125))

(declare-fun b_lambda!284221 () Bool)

(assert (= b_lambda!284219 (or b!7354873 b_lambda!284221)))

(declare-fun bs!1919663 () Bool)

(declare-fun d!2281289 () Bool)

(assert (= bs!1919663 (and d!2281289 b!7354873)))

(assert (=> bs!1919663 (= (dynLambda!29507 lambda!456904 (h!78008 (exprs!8628 cWitness!61))) (validRegex!9784 (h!78008 (exprs!8628 cWitness!61))))))

(declare-fun m!8015190 () Bool)

(assert (=> bs!1919663 m!8015190))

(assert (=> b!7355040 d!2281289))

(push 1)

(assert (not bm!673280))

(assert (not bm!673248))

(assert (not b!7355118))

(assert (not b!7355100))

(assert (not bm!673235))

(assert (not b!7355096))

(assert (not b!7355113))

(assert (not b!7354953))

(assert (not b!7354965))

(assert (not d!2281249))

(assert (not b!7355055))

(assert (not b!7355103))

(assert (not b!7355069))

(assert (not bm!673260))

(assert (not d!2281283))

(assert (not bm!673277))

(assert (not b!7355115))

(assert (not b!7355124))

(assert (not b!7355094))

(assert (not bm!673283))

(assert (not bm!673276))

(assert (not d!2281279))

(assert (not b!7355102))

(assert (not b!7354964))

(assert (not b!7355125))

(assert (not b!7355119))

(assert (not bm!673249))

(assert (not d!2281261))

(assert (not b!7355095))

(assert (not b!7355070))

(assert (not b!7355114))

(assert (not b_lambda!284221))

(assert (not d!2281259))

(assert (not d!2281263))

(assert (not d!2281275))

(assert (not bm!673234))

(assert (not b!7355117))

(assert (not bm!673274))

(assert (not bm!673282))

(assert (not bm!673251))

(assert tp_is_empty!48621)

(assert (not b!7355066))

(assert (not b!7355123))

(assert (not bm!673252))

(assert (not d!2281285))

(assert (not bm!673232))

(assert (not b!7355015))

(assert (not b!7355098))

(assert (not b!7355054))

(assert (not bm!673263))

(assert (not bs!1919663))

(assert (not d!2281269))

(assert (not b!7355099))

(assert (not d!2281273))

(assert (not d!2281253))

(assert (not b!7355034))

(assert (not b!7355041))

(assert (not b!7355104))

(assert (not bm!673262))

(assert (not b!7355081))

(assert (not b!7355024))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

