; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718486 () Bool)

(assert start!718486)

(declare-fun b!7357908 () Bool)

(declare-fun e!4405448 () Bool)

(declare-fun tp!2090303 () Bool)

(assert (=> b!7357908 (= e!4405448 tp!2090303)))

(declare-fun b!7357909 () Bool)

(declare-fun e!4405449 () Bool)

(declare-fun tp!2090301 () Bool)

(assert (=> b!7357909 (= e!4405449 tp!2090301)))

(declare-fun b!7357910 () Bool)

(declare-fun e!4405445 () Bool)

(declare-fun tp!2090298 () Bool)

(assert (=> b!7357910 (= e!4405445 tp!2090298)))

(declare-datatypes ((C!38682 0))(
  ( (C!38683 (val!29701 Int)) )
))
(declare-datatypes ((Regex!19204 0))(
  ( (ElementMatch!19204 (c!1367078 C!38682)) (Concat!28049 (regOne!38920 Regex!19204) (regTwo!38920 Regex!19204)) (EmptyExpr!19204) (Star!19204 (reg!19533 Regex!19204)) (EmptyLang!19204) (Union!19204 (regOne!38921 Regex!19204) (regTwo!38921 Regex!19204)) )
))
(declare-fun r1!2370 () Regex!19204)

(declare-fun b!7357911 () Bool)

(declare-fun c!10362 () C!38682)

(declare-fun e!4405447 () Bool)

(declare-datatypes ((List!71700 0))(
  ( (Nil!71576) (Cons!71576 (h!78024 Regex!19204) (t!386143 List!71700)) )
))
(declare-datatypes ((Context!16288 0))(
  ( (Context!16289 (exprs!8644 List!71700)) )
))
(declare-fun lt!2613513 () (Set Context!16288))

(declare-fun ct1!282 () Context!16288)

(assert (=> b!7357911 (= e!4405447 (and (is-ElementMatch!19204 r1!2370) (= c!10362 (c!1367078 r1!2370)) (not (= lt!2613513 (set.insert ct1!282 (as set.empty (Set Context!16288)))))))))

(declare-fun lt!2613514 () (Set Context!16288))

(declare-fun ct2!378 () Context!16288)

(declare-fun derivationStepZipperDown!3030 (Regex!19204 Context!16288 C!38682) (Set Context!16288))

(declare-fun ++!17022 (List!71700 List!71700) List!71700)

(assert (=> b!7357911 (= lt!2613514 (derivationStepZipperDown!3030 r1!2370 (Context!16289 (++!17022 (exprs!8644 ct1!282) (exprs!8644 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165361 0))(
  ( (Unit!165362) )
))
(declare-fun lt!2613512 () Unit!165361)

(declare-fun lambda!457160 () Int)

(declare-fun lemmaConcatPreservesForall!1879 (List!71700 List!71700 Int) Unit!165361)

(assert (=> b!7357911 (= lt!2613512 (lemmaConcatPreservesForall!1879 (exprs!8644 ct1!282) (exprs!8644 ct2!378) lambda!457160))))

(declare-fun b!7357912 () Bool)

(declare-fun tp!2090300 () Bool)

(declare-fun tp!2090297 () Bool)

(assert (=> b!7357912 (= e!4405448 (and tp!2090300 tp!2090297))))

(declare-fun b!7357913 () Bool)

(declare-fun e!4405450 () Bool)

(declare-fun tp!2090299 () Bool)

(assert (=> b!7357913 (= e!4405450 tp!2090299)))

(declare-fun b!7357915 () Bool)

(declare-fun tp!2090302 () Bool)

(declare-fun tp!2090296 () Bool)

(assert (=> b!7357915 (= e!4405448 (and tp!2090302 tp!2090296))))

(declare-fun b!7357916 () Bool)

(declare-fun tp_is_empty!48653 () Bool)

(assert (=> b!7357916 (= e!4405448 tp_is_empty!48653)))

(declare-fun b!7357914 () Bool)

(declare-fun e!4405446 () Bool)

(assert (=> b!7357914 (= e!4405446 e!4405447)))

(declare-fun res!2970884 () Bool)

(assert (=> b!7357914 (=> (not res!2970884) (not e!4405447))))

(declare-fun cWitness!61 () Context!16288)

(assert (=> b!7357914 (= res!2970884 (set.member cWitness!61 lt!2613513))))

(assert (=> b!7357914 (= lt!2613513 (derivationStepZipperDown!3030 r1!2370 ct1!282 c!10362))))

(declare-fun res!2970883 () Bool)

(assert (=> start!718486 (=> (not res!2970883) (not e!4405446))))

(declare-fun validRegex!9800 (Regex!19204) Bool)

(assert (=> start!718486 (= res!2970883 (validRegex!9800 r1!2370))))

(assert (=> start!718486 e!4405446))

(assert (=> start!718486 tp_is_empty!48653))

(declare-fun inv!91351 (Context!16288) Bool)

(assert (=> start!718486 (and (inv!91351 cWitness!61) e!4405445)))

(assert (=> start!718486 (and (inv!91351 ct1!282) e!4405450)))

(assert (=> start!718486 e!4405448))

(assert (=> start!718486 (and (inv!91351 ct2!378) e!4405449)))

(assert (= (and start!718486 res!2970883) b!7357914))

(assert (= (and b!7357914 res!2970884) b!7357911))

(assert (= start!718486 b!7357910))

(assert (= start!718486 b!7357913))

(assert (= (and start!718486 (is-ElementMatch!19204 r1!2370)) b!7357916))

(assert (= (and start!718486 (is-Concat!28049 r1!2370)) b!7357915))

(assert (= (and start!718486 (is-Star!19204 r1!2370)) b!7357908))

(assert (= (and start!718486 (is-Union!19204 r1!2370)) b!7357912))

(assert (= start!718486 b!7357909))

(declare-fun m!8017034 () Bool)

(assert (=> b!7357911 m!8017034))

(declare-fun m!8017036 () Bool)

(assert (=> b!7357911 m!8017036))

(declare-fun m!8017038 () Bool)

(assert (=> b!7357911 m!8017038))

(declare-fun m!8017040 () Bool)

(assert (=> b!7357911 m!8017040))

(declare-fun m!8017042 () Bool)

(assert (=> b!7357914 m!8017042))

(declare-fun m!8017044 () Bool)

(assert (=> b!7357914 m!8017044))

(declare-fun m!8017046 () Bool)

(assert (=> start!718486 m!8017046))

(declare-fun m!8017048 () Bool)

(assert (=> start!718486 m!8017048))

(declare-fun m!8017050 () Bool)

(assert (=> start!718486 m!8017050))

(declare-fun m!8017052 () Bool)

(assert (=> start!718486 m!8017052))

(push 1)

(assert (not b!7357909))

(assert (not b!7357910))

(assert (not b!7357915))

(assert (not b!7357913))

(assert (not b!7357908))

(assert (not b!7357912))

(assert (not b!7357914))

(assert (not b!7357911))

(assert tp_is_empty!48653)

(assert (not start!718486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7357988 () Bool)

(declare-fun e!4405495 () (Set Context!16288))

(declare-fun call!673895 () (Set Context!16288))

(assert (=> b!7357988 (= e!4405495 call!673895)))

(declare-fun d!2281789 () Bool)

(declare-fun c!1367103 () Bool)

(assert (=> d!2281789 (= c!1367103 (and (is-ElementMatch!19204 r1!2370) (= (c!1367078 r1!2370) c!10362)))))

(declare-fun e!4405493 () (Set Context!16288))

(assert (=> d!2281789 (= (derivationStepZipperDown!3030 r1!2370 ct1!282 c!10362) e!4405493)))

(declare-fun bm!673887 () Bool)

(declare-fun c!1367104 () Bool)

(declare-fun call!673896 () List!71700)

(declare-fun call!673894 () (Set Context!16288))

(assert (=> bm!673887 (= call!673894 (derivationStepZipperDown!3030 (ite c!1367104 (regOne!38921 r1!2370) (regOne!38920 r1!2370)) (ite c!1367104 ct1!282 (Context!16289 call!673896)) c!10362))))

(declare-fun b!7357989 () Bool)

(declare-fun e!4405497 () (Set Context!16288))

(assert (=> b!7357989 (= e!4405497 (as set.empty (Set Context!16288)))))

(declare-fun bm!673888 () Bool)

(declare-fun call!673897 () (Set Context!16288))

(assert (=> bm!673888 (= call!673895 call!673897)))

(declare-fun b!7357990 () Bool)

(assert (=> b!7357990 (= e!4405493 (set.insert ct1!282 (as set.empty (Set Context!16288))))))

(declare-fun b!7357991 () Bool)

(declare-fun e!4405496 () (Set Context!16288))

(assert (=> b!7357991 (= e!4405496 (set.union call!673894 call!673897))))

(declare-fun bm!673889 () Bool)

(declare-fun call!673893 () (Set Context!16288))

(assert (=> bm!673889 (= call!673897 call!673893)))

(declare-fun c!1367101 () Bool)

(declare-fun c!1367100 () Bool)

(declare-fun bm!673890 () Bool)

(declare-fun $colon$colon!3201 (List!71700 Regex!19204) List!71700)

(assert (=> bm!673890 (= call!673896 ($colon$colon!3201 (exprs!8644 ct1!282) (ite (or c!1367101 c!1367100) (regTwo!38920 r1!2370) r1!2370)))))

(declare-fun b!7357992 () Bool)

(declare-fun e!4405498 () Bool)

(assert (=> b!7357992 (= c!1367101 e!4405498)))

(declare-fun res!2970895 () Bool)

(assert (=> b!7357992 (=> (not res!2970895) (not e!4405498))))

(assert (=> b!7357992 (= res!2970895 (is-Concat!28049 r1!2370))))

(declare-fun e!4405494 () (Set Context!16288))

(assert (=> b!7357992 (= e!4405494 e!4405496)))

(declare-fun b!7357993 () Bool)

(declare-fun nullable!8295 (Regex!19204) Bool)

(assert (=> b!7357993 (= e!4405498 (nullable!8295 (regOne!38920 r1!2370)))))

(declare-fun b!7357994 () Bool)

(assert (=> b!7357994 (= e!4405497 call!673895)))

(declare-fun call!673892 () List!71700)

(declare-fun bm!673891 () Bool)

(assert (=> bm!673891 (= call!673893 (derivationStepZipperDown!3030 (ite c!1367104 (regTwo!38921 r1!2370) (ite c!1367101 (regTwo!38920 r1!2370) (ite c!1367100 (regOne!38920 r1!2370) (reg!19533 r1!2370)))) (ite (or c!1367104 c!1367101) ct1!282 (Context!16289 call!673892)) c!10362))))

(declare-fun b!7357995 () Bool)

(assert (=> b!7357995 (= e!4405493 e!4405494)))

(assert (=> b!7357995 (= c!1367104 (is-Union!19204 r1!2370))))

(declare-fun b!7357996 () Bool)

(assert (=> b!7357996 (= e!4405496 e!4405495)))

(assert (=> b!7357996 (= c!1367100 (is-Concat!28049 r1!2370))))

(declare-fun b!7357997 () Bool)

(assert (=> b!7357997 (= e!4405494 (set.union call!673894 call!673893))))

(declare-fun bm!673892 () Bool)

(assert (=> bm!673892 (= call!673892 call!673896)))

(declare-fun b!7357998 () Bool)

(declare-fun c!1367102 () Bool)

(assert (=> b!7357998 (= c!1367102 (is-Star!19204 r1!2370))))

(assert (=> b!7357998 (= e!4405495 e!4405497)))

(assert (= (and d!2281789 c!1367103) b!7357990))

(assert (= (and d!2281789 (not c!1367103)) b!7357995))

(assert (= (and b!7357995 c!1367104) b!7357997))

(assert (= (and b!7357995 (not c!1367104)) b!7357992))

(assert (= (and b!7357992 res!2970895) b!7357993))

(assert (= (and b!7357992 c!1367101) b!7357991))

(assert (= (and b!7357992 (not c!1367101)) b!7357996))

(assert (= (and b!7357996 c!1367100) b!7357988))

(assert (= (and b!7357996 (not c!1367100)) b!7357998))

(assert (= (and b!7357998 c!1367102) b!7357994))

(assert (= (and b!7357998 (not c!1367102)) b!7357989))

(assert (= (or b!7357988 b!7357994) bm!673892))

(assert (= (or b!7357988 b!7357994) bm!673888))

(assert (= (or b!7357991 bm!673888) bm!673889))

(assert (= (or b!7357991 bm!673892) bm!673890))

(assert (= (or b!7357997 bm!673889) bm!673891))

(assert (= (or b!7357997 b!7357991) bm!673887))

(assert (=> b!7357990 m!8017034))

(declare-fun m!8017074 () Bool)

(assert (=> bm!673887 m!8017074))

(declare-fun m!8017076 () Bool)

(assert (=> bm!673891 m!8017076))

(declare-fun m!8017078 () Bool)

(assert (=> bm!673890 m!8017078))

(declare-fun m!8017080 () Bool)

(assert (=> b!7357993 m!8017080))

(assert (=> b!7357914 d!2281789))

(declare-fun b!7358039 () Bool)

(declare-fun e!4405528 () Bool)

(declare-fun call!673922 () Bool)

(assert (=> b!7358039 (= e!4405528 call!673922)))

(declare-fun b!7358040 () Bool)

(declare-fun e!4405531 () Bool)

(declare-fun call!673921 () Bool)

(assert (=> b!7358040 (= e!4405531 call!673921)))

(declare-fun c!1367119 () Bool)

(declare-fun c!1367120 () Bool)

(declare-fun bm!673915 () Bool)

(assert (=> bm!673915 (= call!673922 (validRegex!9800 (ite c!1367119 (reg!19533 r1!2370) (ite c!1367120 (regTwo!38921 r1!2370) (regOne!38920 r1!2370)))))))

(declare-fun b!7358041 () Bool)

(declare-fun res!2970910 () Bool)

(declare-fun e!4405525 () Bool)

(assert (=> b!7358041 (=> (not res!2970910) (not e!4405525))))

(assert (=> b!7358041 (= res!2970910 call!673921)))

(declare-fun e!4405529 () Bool)

(assert (=> b!7358041 (= e!4405529 e!4405525)))

(declare-fun b!7358042 () Bool)

(declare-fun e!4405527 () Bool)

(declare-fun e!4405530 () Bool)

(assert (=> b!7358042 (= e!4405527 e!4405530)))

(assert (=> b!7358042 (= c!1367119 (is-Star!19204 r1!2370))))

(declare-fun b!7358043 () Bool)

(declare-fun res!2970909 () Bool)

(declare-fun e!4405526 () Bool)

(assert (=> b!7358043 (=> res!2970909 e!4405526)))

(assert (=> b!7358043 (= res!2970909 (not (is-Concat!28049 r1!2370)))))

(assert (=> b!7358043 (= e!4405529 e!4405526)))

(declare-fun bm!673916 () Bool)

(assert (=> bm!673916 (= call!673921 (validRegex!9800 (ite c!1367120 (regOne!38921 r1!2370) (regTwo!38920 r1!2370))))))

(declare-fun b!7358044 () Bool)

(assert (=> b!7358044 (= e!4405526 e!4405531)))

(declare-fun res!2970911 () Bool)

(assert (=> b!7358044 (=> (not res!2970911) (not e!4405531))))

(declare-fun call!673920 () Bool)

(assert (=> b!7358044 (= res!2970911 call!673920)))

(declare-fun b!7358045 () Bool)

(assert (=> b!7358045 (= e!4405530 e!4405528)))

(declare-fun res!2970912 () Bool)

(assert (=> b!7358045 (= res!2970912 (not (nullable!8295 (reg!19533 r1!2370))))))

(assert (=> b!7358045 (=> (not res!2970912) (not e!4405528))))

(declare-fun d!2281793 () Bool)

(declare-fun res!2970908 () Bool)

(assert (=> d!2281793 (=> res!2970908 e!4405527)))

(assert (=> d!2281793 (= res!2970908 (is-ElementMatch!19204 r1!2370))))

(assert (=> d!2281793 (= (validRegex!9800 r1!2370) e!4405527)))

(declare-fun b!7358046 () Bool)

(assert (=> b!7358046 (= e!4405525 call!673920)))

(declare-fun b!7358047 () Bool)

(assert (=> b!7358047 (= e!4405530 e!4405529)))

(assert (=> b!7358047 (= c!1367120 (is-Union!19204 r1!2370))))

(declare-fun bm!673917 () Bool)

(assert (=> bm!673917 (= call!673920 call!673922)))

(assert (= (and d!2281793 (not res!2970908)) b!7358042))

(assert (= (and b!7358042 c!1367119) b!7358045))

(assert (= (and b!7358042 (not c!1367119)) b!7358047))

(assert (= (and b!7358045 res!2970912) b!7358039))

(assert (= (and b!7358047 c!1367120) b!7358041))

(assert (= (and b!7358047 (not c!1367120)) b!7358043))

(assert (= (and b!7358041 res!2970910) b!7358046))

(assert (= (and b!7358043 (not res!2970909)) b!7358044))

(assert (= (and b!7358044 res!2970911) b!7358040))

(assert (= (or b!7358041 b!7358040) bm!673916))

(assert (= (or b!7358046 b!7358044) bm!673917))

(assert (= (or b!7358039 bm!673917) bm!673915))

(declare-fun m!8017096 () Bool)

(assert (=> bm!673915 m!8017096))

(declare-fun m!8017098 () Bool)

(assert (=> bm!673916 m!8017098))

(declare-fun m!8017100 () Bool)

(assert (=> b!7358045 m!8017100))

(assert (=> start!718486 d!2281793))

(declare-fun bs!1919920 () Bool)

(declare-fun d!2281797 () Bool)

(assert (= bs!1919920 (and d!2281797 b!7357911)))

(declare-fun lambda!457166 () Int)

(assert (=> bs!1919920 (= lambda!457166 lambda!457160)))

(declare-fun forall!18024 (List!71700 Int) Bool)

(assert (=> d!2281797 (= (inv!91351 cWitness!61) (forall!18024 (exprs!8644 cWitness!61) lambda!457166))))

(declare-fun bs!1919921 () Bool)

(assert (= bs!1919921 d!2281797))

(declare-fun m!8017104 () Bool)

(assert (=> bs!1919921 m!8017104))

(assert (=> start!718486 d!2281797))

(declare-fun bs!1919922 () Bool)

(declare-fun d!2281801 () Bool)

(assert (= bs!1919922 (and d!2281801 b!7357911)))

(declare-fun lambda!457167 () Int)

(assert (=> bs!1919922 (= lambda!457167 lambda!457160)))

(declare-fun bs!1919923 () Bool)

(assert (= bs!1919923 (and d!2281801 d!2281797)))

(assert (=> bs!1919923 (= lambda!457167 lambda!457166)))

(assert (=> d!2281801 (= (inv!91351 ct1!282) (forall!18024 (exprs!8644 ct1!282) lambda!457167))))

(declare-fun bs!1919924 () Bool)

(assert (= bs!1919924 d!2281801))

(declare-fun m!8017106 () Bool)

(assert (=> bs!1919924 m!8017106))

(assert (=> start!718486 d!2281801))

(declare-fun bs!1919925 () Bool)

(declare-fun d!2281803 () Bool)

(assert (= bs!1919925 (and d!2281803 b!7357911)))

(declare-fun lambda!457168 () Int)

(assert (=> bs!1919925 (= lambda!457168 lambda!457160)))

(declare-fun bs!1919926 () Bool)

(assert (= bs!1919926 (and d!2281803 d!2281797)))

(assert (=> bs!1919926 (= lambda!457168 lambda!457166)))

(declare-fun bs!1919927 () Bool)

(assert (= bs!1919927 (and d!2281803 d!2281801)))

(assert (=> bs!1919927 (= lambda!457168 lambda!457167)))

(assert (=> d!2281803 (= (inv!91351 ct2!378) (forall!18024 (exprs!8644 ct2!378) lambda!457168))))

(declare-fun bs!1919928 () Bool)

(assert (= bs!1919928 d!2281803))

(declare-fun m!8017108 () Bool)

(assert (=> bs!1919928 m!8017108))

(assert (=> start!718486 d!2281803))

(declare-fun b!7358048 () Bool)

(declare-fun e!4405534 () (Set Context!16288))

(declare-fun call!673926 () (Set Context!16288))

(assert (=> b!7358048 (= e!4405534 call!673926)))

(declare-fun d!2281805 () Bool)

(declare-fun c!1367124 () Bool)

(assert (=> d!2281805 (= c!1367124 (and (is-ElementMatch!19204 r1!2370) (= (c!1367078 r1!2370) c!10362)))))

(declare-fun e!4405532 () (Set Context!16288))

(assert (=> d!2281805 (= (derivationStepZipperDown!3030 r1!2370 (Context!16289 (++!17022 (exprs!8644 ct1!282) (exprs!8644 ct2!378))) c!10362) e!4405532)))

(declare-fun call!673925 () (Set Context!16288))

(declare-fun c!1367125 () Bool)

(declare-fun bm!673918 () Bool)

(declare-fun call!673927 () List!71700)

(assert (=> bm!673918 (= call!673925 (derivationStepZipperDown!3030 (ite c!1367125 (regOne!38921 r1!2370) (regOne!38920 r1!2370)) (ite c!1367125 (Context!16289 (++!17022 (exprs!8644 ct1!282) (exprs!8644 ct2!378))) (Context!16289 call!673927)) c!10362))))

(declare-fun b!7358049 () Bool)

(declare-fun e!4405536 () (Set Context!16288))

(assert (=> b!7358049 (= e!4405536 (as set.empty (Set Context!16288)))))

(declare-fun bm!673919 () Bool)

(declare-fun call!673928 () (Set Context!16288))

(assert (=> bm!673919 (= call!673926 call!673928)))

(declare-fun b!7358050 () Bool)

(assert (=> b!7358050 (= e!4405532 (set.insert (Context!16289 (++!17022 (exprs!8644 ct1!282) (exprs!8644 ct2!378))) (as set.empty (Set Context!16288))))))

(declare-fun b!7358051 () Bool)

(declare-fun e!4405535 () (Set Context!16288))

(assert (=> b!7358051 (= e!4405535 (set.union call!673925 call!673928))))

(declare-fun bm!673920 () Bool)

(declare-fun call!673924 () (Set Context!16288))

(assert (=> bm!673920 (= call!673928 call!673924)))

(declare-fun c!1367122 () Bool)

(declare-fun c!1367121 () Bool)

(declare-fun bm!673921 () Bool)

(assert (=> bm!673921 (= call!673927 ($colon$colon!3201 (exprs!8644 (Context!16289 (++!17022 (exprs!8644 ct1!282) (exprs!8644 ct2!378)))) (ite (or c!1367122 c!1367121) (regTwo!38920 r1!2370) r1!2370)))))

(declare-fun b!7358052 () Bool)

(declare-fun e!4405537 () Bool)

(assert (=> b!7358052 (= c!1367122 e!4405537)))

(declare-fun res!2970913 () Bool)

(assert (=> b!7358052 (=> (not res!2970913) (not e!4405537))))

(assert (=> b!7358052 (= res!2970913 (is-Concat!28049 r1!2370))))

(declare-fun e!4405533 () (Set Context!16288))

(assert (=> b!7358052 (= e!4405533 e!4405535)))

(declare-fun b!7358053 () Bool)

(assert (=> b!7358053 (= e!4405537 (nullable!8295 (regOne!38920 r1!2370)))))

(declare-fun b!7358054 () Bool)

(assert (=> b!7358054 (= e!4405536 call!673926)))

(declare-fun bm!673922 () Bool)

(declare-fun call!673923 () List!71700)

(assert (=> bm!673922 (= call!673924 (derivationStepZipperDown!3030 (ite c!1367125 (regTwo!38921 r1!2370) (ite c!1367122 (regTwo!38920 r1!2370) (ite c!1367121 (regOne!38920 r1!2370) (reg!19533 r1!2370)))) (ite (or c!1367125 c!1367122) (Context!16289 (++!17022 (exprs!8644 ct1!282) (exprs!8644 ct2!378))) (Context!16289 call!673923)) c!10362))))

(declare-fun b!7358055 () Bool)

(assert (=> b!7358055 (= e!4405532 e!4405533)))

(assert (=> b!7358055 (= c!1367125 (is-Union!19204 r1!2370))))

(declare-fun b!7358056 () Bool)

(assert (=> b!7358056 (= e!4405535 e!4405534)))

(assert (=> b!7358056 (= c!1367121 (is-Concat!28049 r1!2370))))

(declare-fun b!7358057 () Bool)

(assert (=> b!7358057 (= e!4405533 (set.union call!673925 call!673924))))

(declare-fun bm!673923 () Bool)

(assert (=> bm!673923 (= call!673923 call!673927)))

(declare-fun b!7358058 () Bool)

(declare-fun c!1367123 () Bool)

(assert (=> b!7358058 (= c!1367123 (is-Star!19204 r1!2370))))

(assert (=> b!7358058 (= e!4405534 e!4405536)))

(assert (= (and d!2281805 c!1367124) b!7358050))

(assert (= (and d!2281805 (not c!1367124)) b!7358055))

(assert (= (and b!7358055 c!1367125) b!7358057))

(assert (= (and b!7358055 (not c!1367125)) b!7358052))

(assert (= (and b!7358052 res!2970913) b!7358053))

(assert (= (and b!7358052 c!1367122) b!7358051))

(assert (= (and b!7358052 (not c!1367122)) b!7358056))

(assert (= (and b!7358056 c!1367121) b!7358048))

(assert (= (and b!7358056 (not c!1367121)) b!7358058))

(assert (= (and b!7358058 c!1367123) b!7358054))

(assert (= (and b!7358058 (not c!1367123)) b!7358049))

(assert (= (or b!7358048 b!7358054) bm!673923))

(assert (= (or b!7358048 b!7358054) bm!673919))

(assert (= (or b!7358051 bm!673919) bm!673920))

(assert (= (or b!7358051 bm!673923) bm!673921))

(assert (= (or b!7358057 bm!673920) bm!673922))

(assert (= (or b!7358057 b!7358051) bm!673918))

(declare-fun m!8017110 () Bool)

(assert (=> b!7358050 m!8017110))

(declare-fun m!8017112 () Bool)

(assert (=> bm!673918 m!8017112))

(declare-fun m!8017114 () Bool)

(assert (=> bm!673922 m!8017114))

(declare-fun m!8017116 () Bool)

(assert (=> bm!673921 m!8017116))

(assert (=> b!7358053 m!8017080))

(assert (=> b!7357911 d!2281805))

(declare-fun b!7358080 () Bool)

(declare-fun e!4405548 () List!71700)

(assert (=> b!7358080 (= e!4405548 (Cons!71576 (h!78024 (exprs!8644 ct1!282)) (++!17022 (t!386143 (exprs!8644 ct1!282)) (exprs!8644 ct2!378))))))

(declare-fun b!7358081 () Bool)

(declare-fun res!2970925 () Bool)

(declare-fun e!4405549 () Bool)

(assert (=> b!7358081 (=> (not res!2970925) (not e!4405549))))

(declare-fun lt!2613532 () List!71700)

(declare-fun size!42084 (List!71700) Int)

(assert (=> b!7358081 (= res!2970925 (= (size!42084 lt!2613532) (+ (size!42084 (exprs!8644 ct1!282)) (size!42084 (exprs!8644 ct2!378)))))))

(declare-fun b!7358082 () Bool)

(assert (=> b!7358082 (= e!4405549 (or (not (= (exprs!8644 ct2!378) Nil!71576)) (= lt!2613532 (exprs!8644 ct1!282))))))

(declare-fun d!2281807 () Bool)

(assert (=> d!2281807 e!4405549))

(declare-fun res!2970924 () Bool)

(assert (=> d!2281807 (=> (not res!2970924) (not e!4405549))))

(declare-fun content!15106 (List!71700) (Set Regex!19204))

(assert (=> d!2281807 (= res!2970924 (= (content!15106 lt!2613532) (set.union (content!15106 (exprs!8644 ct1!282)) (content!15106 (exprs!8644 ct2!378)))))))

(assert (=> d!2281807 (= lt!2613532 e!4405548)))

(declare-fun c!1367131 () Bool)

(assert (=> d!2281807 (= c!1367131 (is-Nil!71576 (exprs!8644 ct1!282)))))

(assert (=> d!2281807 (= (++!17022 (exprs!8644 ct1!282) (exprs!8644 ct2!378)) lt!2613532)))

(declare-fun b!7358079 () Bool)

(assert (=> b!7358079 (= e!4405548 (exprs!8644 ct2!378))))

(assert (= (and d!2281807 c!1367131) b!7358079))

(assert (= (and d!2281807 (not c!1367131)) b!7358080))

(assert (= (and d!2281807 res!2970924) b!7358081))

(assert (= (and b!7358081 res!2970925) b!7358082))

(declare-fun m!8017138 () Bool)

(assert (=> b!7358080 m!8017138))

(declare-fun m!8017140 () Bool)

(assert (=> b!7358081 m!8017140))

(declare-fun m!8017142 () Bool)

(assert (=> b!7358081 m!8017142))

(declare-fun m!8017144 () Bool)

(assert (=> b!7358081 m!8017144))

(declare-fun m!8017146 () Bool)

(assert (=> d!2281807 m!8017146))

(declare-fun m!8017148 () Bool)

(assert (=> d!2281807 m!8017148))

(declare-fun m!8017150 () Bool)

(assert (=> d!2281807 m!8017150))

(assert (=> b!7357911 d!2281807))

(declare-fun d!2281813 () Bool)

(assert (=> d!2281813 (forall!18024 (++!17022 (exprs!8644 ct1!282) (exprs!8644 ct2!378)) lambda!457160)))

(declare-fun lt!2613535 () Unit!165361)

(declare-fun choose!57235 (List!71700 List!71700 Int) Unit!165361)

(assert (=> d!2281813 (= lt!2613535 (choose!57235 (exprs!8644 ct1!282) (exprs!8644 ct2!378) lambda!457160))))

(assert (=> d!2281813 (forall!18024 (exprs!8644 ct1!282) lambda!457160)))

(assert (=> d!2281813 (= (lemmaConcatPreservesForall!1879 (exprs!8644 ct1!282) (exprs!8644 ct2!378) lambda!457160) lt!2613535)))

(declare-fun bs!1919930 () Bool)

(assert (= bs!1919930 d!2281813))

(assert (=> bs!1919930 m!8017036))

(assert (=> bs!1919930 m!8017036))

(declare-fun m!8017152 () Bool)

(assert (=> bs!1919930 m!8017152))

(declare-fun m!8017154 () Bool)

(assert (=> bs!1919930 m!8017154))

(declare-fun m!8017156 () Bool)

(assert (=> bs!1919930 m!8017156))

(assert (=> b!7357911 d!2281813))

(declare-fun b!7358105 () Bool)

(declare-fun e!4405566 () Bool)

(declare-fun tp!2090332 () Bool)

(declare-fun tp!2090333 () Bool)

(assert (=> b!7358105 (= e!4405566 (and tp!2090332 tp!2090333))))

(assert (=> b!7357909 (= tp!2090301 e!4405566)))

(assert (= (and b!7357909 (is-Cons!71576 (exprs!8644 ct2!378))) b!7358105))

(declare-fun b!7358117 () Bool)

(declare-fun e!4405569 () Bool)

(declare-fun tp!2090347 () Bool)

(declare-fun tp!2090348 () Bool)

(assert (=> b!7358117 (= e!4405569 (and tp!2090347 tp!2090348))))

(declare-fun b!7358116 () Bool)

(assert (=> b!7358116 (= e!4405569 tp_is_empty!48653)))

(declare-fun b!7358118 () Bool)

(declare-fun tp!2090346 () Bool)

(assert (=> b!7358118 (= e!4405569 tp!2090346)))

(declare-fun b!7358119 () Bool)

(declare-fun tp!2090345 () Bool)

(declare-fun tp!2090344 () Bool)

(assert (=> b!7358119 (= e!4405569 (and tp!2090345 tp!2090344))))

(assert (=> b!7357908 (= tp!2090303 e!4405569)))

(assert (= (and b!7357908 (is-ElementMatch!19204 (reg!19533 r1!2370))) b!7358116))

(assert (= (and b!7357908 (is-Concat!28049 (reg!19533 r1!2370))) b!7358117))

(assert (= (and b!7357908 (is-Star!19204 (reg!19533 r1!2370))) b!7358118))

(assert (= (and b!7357908 (is-Union!19204 (reg!19533 r1!2370))) b!7358119))

(declare-fun b!7358120 () Bool)

(declare-fun e!4405570 () Bool)

(declare-fun tp!2090349 () Bool)

(declare-fun tp!2090350 () Bool)

(assert (=> b!7358120 (= e!4405570 (and tp!2090349 tp!2090350))))

(assert (=> b!7357913 (= tp!2090299 e!4405570)))

(assert (= (and b!7357913 (is-Cons!71576 (exprs!8644 ct1!282))) b!7358120))

(declare-fun b!7358122 () Bool)

(declare-fun e!4405571 () Bool)

(declare-fun tp!2090354 () Bool)

(declare-fun tp!2090355 () Bool)

(assert (=> b!7358122 (= e!4405571 (and tp!2090354 tp!2090355))))

(declare-fun b!7358121 () Bool)

(assert (=> b!7358121 (= e!4405571 tp_is_empty!48653)))

(declare-fun b!7358123 () Bool)

(declare-fun tp!2090353 () Bool)

(assert (=> b!7358123 (= e!4405571 tp!2090353)))

(declare-fun b!7358124 () Bool)

(declare-fun tp!2090352 () Bool)

(declare-fun tp!2090351 () Bool)

(assert (=> b!7358124 (= e!4405571 (and tp!2090352 tp!2090351))))

(assert (=> b!7357912 (= tp!2090300 e!4405571)))

(assert (= (and b!7357912 (is-ElementMatch!19204 (regOne!38921 r1!2370))) b!7358121))

(assert (= (and b!7357912 (is-Concat!28049 (regOne!38921 r1!2370))) b!7358122))

(assert (= (and b!7357912 (is-Star!19204 (regOne!38921 r1!2370))) b!7358123))

(assert (= (and b!7357912 (is-Union!19204 (regOne!38921 r1!2370))) b!7358124))

(declare-fun b!7358126 () Bool)

(declare-fun e!4405572 () Bool)

(declare-fun tp!2090359 () Bool)

(declare-fun tp!2090360 () Bool)

(assert (=> b!7358126 (= e!4405572 (and tp!2090359 tp!2090360))))

(declare-fun b!7358125 () Bool)

(assert (=> b!7358125 (= e!4405572 tp_is_empty!48653)))

(declare-fun b!7358127 () Bool)

(declare-fun tp!2090358 () Bool)

(assert (=> b!7358127 (= e!4405572 tp!2090358)))

(declare-fun b!7358128 () Bool)

(declare-fun tp!2090357 () Bool)

(declare-fun tp!2090356 () Bool)

(assert (=> b!7358128 (= e!4405572 (and tp!2090357 tp!2090356))))

(assert (=> b!7357912 (= tp!2090297 e!4405572)))

(assert (= (and b!7357912 (is-ElementMatch!19204 (regTwo!38921 r1!2370))) b!7358125))

(assert (= (and b!7357912 (is-Concat!28049 (regTwo!38921 r1!2370))) b!7358126))

(assert (= (and b!7357912 (is-Star!19204 (regTwo!38921 r1!2370))) b!7358127))

(assert (= (and b!7357912 (is-Union!19204 (regTwo!38921 r1!2370))) b!7358128))

(declare-fun b!7358129 () Bool)

(declare-fun e!4405573 () Bool)

(declare-fun tp!2090361 () Bool)

(declare-fun tp!2090362 () Bool)

(assert (=> b!7358129 (= e!4405573 (and tp!2090361 tp!2090362))))

(assert (=> b!7357910 (= tp!2090298 e!4405573)))

(assert (= (and b!7357910 (is-Cons!71576 (exprs!8644 cWitness!61))) b!7358129))

(declare-fun b!7358131 () Bool)

(declare-fun e!4405574 () Bool)

(declare-fun tp!2090366 () Bool)

(declare-fun tp!2090367 () Bool)

(assert (=> b!7358131 (= e!4405574 (and tp!2090366 tp!2090367))))

(declare-fun b!7358130 () Bool)

(assert (=> b!7358130 (= e!4405574 tp_is_empty!48653)))

(declare-fun b!7358132 () Bool)

(declare-fun tp!2090365 () Bool)

(assert (=> b!7358132 (= e!4405574 tp!2090365)))

(declare-fun b!7358133 () Bool)

(declare-fun tp!2090364 () Bool)

(declare-fun tp!2090363 () Bool)

(assert (=> b!7358133 (= e!4405574 (and tp!2090364 tp!2090363))))

(assert (=> b!7357915 (= tp!2090302 e!4405574)))

(assert (= (and b!7357915 (is-ElementMatch!19204 (regOne!38920 r1!2370))) b!7358130))

(assert (= (and b!7357915 (is-Concat!28049 (regOne!38920 r1!2370))) b!7358131))

(assert (= (and b!7357915 (is-Star!19204 (regOne!38920 r1!2370))) b!7358132))

(assert (= (and b!7357915 (is-Union!19204 (regOne!38920 r1!2370))) b!7358133))

(declare-fun b!7358144 () Bool)

(declare-fun e!4405582 () Bool)

(declare-fun tp!2090371 () Bool)

(declare-fun tp!2090372 () Bool)

(assert (=> b!7358144 (= e!4405582 (and tp!2090371 tp!2090372))))

(declare-fun b!7358143 () Bool)

(assert (=> b!7358143 (= e!4405582 tp_is_empty!48653)))

(declare-fun b!7358145 () Bool)

(declare-fun tp!2090370 () Bool)

(assert (=> b!7358145 (= e!4405582 tp!2090370)))

(declare-fun b!7358146 () Bool)

(declare-fun tp!2090369 () Bool)

(declare-fun tp!2090368 () Bool)

(assert (=> b!7358146 (= e!4405582 (and tp!2090369 tp!2090368))))

(assert (=> b!7357915 (= tp!2090296 e!4405582)))

(assert (= (and b!7357915 (is-ElementMatch!19204 (regTwo!38920 r1!2370))) b!7358143))

(assert (= (and b!7357915 (is-Concat!28049 (regTwo!38920 r1!2370))) b!7358144))

(assert (= (and b!7357915 (is-Star!19204 (regTwo!38920 r1!2370))) b!7358145))

(assert (= (and b!7357915 (is-Union!19204 (regTwo!38920 r1!2370))) b!7358146))

(push 1)

(assert (not b!7358118))

(assert (not d!2281801))

(assert (not b!7358080))

(assert (not b!7358132))

(assert (not b!7358120))

(assert (not b!7358146))

(assert (not d!2281813))

(assert (not b!7358045))

(assert (not b!7358053))

(assert (not d!2281803))

(assert (not bm!673918))

(assert (not bm!673891))

(assert (not b!7358122))

(assert (not bm!673922))

(assert (not b!7358105))

(assert (not bm!673915))

(assert (not b!7358119))

(assert (not b!7358123))

(assert (not bm!673890))

(assert (not b!7358124))

(assert (not b!7358129))

(assert (not bm!673921))

(assert (not b!7358126))

(assert (not b!7358145))

(assert (not b!7358131))

(assert (not b!7357993))

(assert (not b!7358117))

(assert (not b!7358128))

(assert (not d!2281797))

(assert (not b!7358127))

(assert (not b!7358081))

(assert (not b!7358144))

(assert (not d!2281807))

(assert tp_is_empty!48653)

(assert (not bm!673916))

(assert (not b!7358133))

(assert (not bm!673887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

