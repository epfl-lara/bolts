; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717066 () Bool)

(assert start!717066)

(declare-fun b!7341764 () Bool)

(declare-fun e!4396222 () Bool)

(declare-fun tp!2084768 () Bool)

(assert (=> b!7341764 (= e!4396222 tp!2084768)))

(declare-fun res!2965867 () Bool)

(declare-fun e!4396217 () Bool)

(assert (=> start!717066 (=> (not res!2965867) (not e!4396217))))

(declare-datatypes ((C!38506 0))(
  ( (C!38507 (val!29613 Int)) )
))
(declare-datatypes ((Regex!19116 0))(
  ( (ElementMatch!19116 (c!1363696 C!38506)) (Concat!27961 (regOne!38744 Regex!19116) (regTwo!38744 Regex!19116)) (EmptyExpr!19116) (Star!19116 (reg!19445 Regex!19116)) (EmptyLang!19116) (Union!19116 (regOne!38745 Regex!19116) (regTwo!38745 Regex!19116)) )
))
(declare-fun r1!2370 () Regex!19116)

(declare-fun validRegex!9712 (Regex!19116) Bool)

(assert (=> start!717066 (= res!2965867 (validRegex!9712 r1!2370))))

(assert (=> start!717066 e!4396217))

(declare-fun tp_is_empty!48477 () Bool)

(assert (=> start!717066 tp_is_empty!48477))

(declare-datatypes ((List!71612 0))(
  ( (Nil!71488) (Cons!71488 (h!77936 Regex!19116) (t!386007 List!71612)) )
))
(declare-datatypes ((Context!16112 0))(
  ( (Context!16113 (exprs!8556 List!71612)) )
))
(declare-fun cWitness!61 () Context!16112)

(declare-fun inv!91131 (Context!16112) Bool)

(assert (=> start!717066 (and (inv!91131 cWitness!61) e!4396222)))

(declare-fun ct1!282 () Context!16112)

(declare-fun e!4396218 () Bool)

(assert (=> start!717066 (and (inv!91131 ct1!282) e!4396218)))

(declare-fun e!4396219 () Bool)

(assert (=> start!717066 e!4396219))

(declare-fun ct2!378 () Context!16112)

(declare-fun e!4396220 () Bool)

(assert (=> start!717066 (and (inv!91131 ct2!378) e!4396220)))

(declare-fun b!7341765 () Bool)

(declare-fun tp!2084770 () Bool)

(assert (=> b!7341765 (= e!4396220 tp!2084770)))

(declare-fun b!7341766 () Bool)

(declare-fun e!4396216 () Bool)

(declare-fun lambda!455692 () Int)

(declare-fun forall!17948 (List!71612 Int) Bool)

(assert (=> b!7341766 (= e!4396216 (forall!17948 (exprs!8556 ct2!378) lambda!455692))))

(declare-fun b!7341767 () Bool)

(declare-fun e!4396223 () Bool)

(assert (=> b!7341767 (= e!4396217 e!4396223)))

(declare-fun res!2965865 () Bool)

(assert (=> b!7341767 (=> (not res!2965865) (not e!4396223))))

(declare-fun lt!2610234 () (Set Context!16112))

(assert (=> b!7341767 (= res!2965865 (set.member cWitness!61 lt!2610234))))

(declare-fun c!10362 () C!38506)

(declare-fun derivationStepZipperDown!2942 (Regex!19116 Context!16112 C!38506) (Set Context!16112))

(assert (=> b!7341767 (= lt!2610234 (derivationStepZipperDown!2942 r1!2370 ct1!282 c!10362))))

(declare-fun b!7341768 () Bool)

(declare-fun e!4396215 () Bool)

(assert (=> b!7341768 (= e!4396215 e!4396216)))

(declare-fun res!2965866 () Bool)

(assert (=> b!7341768 (=> res!2965866 e!4396216)))

(assert (=> b!7341768 (= res!2965866 (not (forall!17948 (exprs!8556 ct1!282) lambda!455692)))))

(declare-datatypes ((Unit!165185 0))(
  ( (Unit!165186) )
))
(declare-fun lt!2610227 () Unit!165185)

(declare-fun lemmaConcatPreservesForall!1791 (List!71612 List!71612 Int) Unit!165185)

(assert (=> b!7341768 (= lt!2610227 (lemmaConcatPreservesForall!1791 (exprs!8556 cWitness!61) (exprs!8556 ct2!378) lambda!455692))))

(declare-fun b!7341769 () Bool)

(declare-fun tp!2084766 () Bool)

(assert (=> b!7341769 (= e!4396219 tp!2084766)))

(declare-fun b!7341770 () Bool)

(assert (=> b!7341770 (= e!4396219 tp_is_empty!48477)))

(declare-fun b!7341771 () Bool)

(declare-fun e!4396221 () Bool)

(assert (=> b!7341771 (= e!4396223 e!4396221)))

(declare-fun res!2965863 () Bool)

(assert (=> b!7341771 (=> (not res!2965863) (not e!4396221))))

(assert (=> b!7341771 (= res!2965863 (and (or (not (is-ElementMatch!19116 r1!2370)) (not (= c!10362 (c!1363696 r1!2370)))) (is-Union!19116 r1!2370)))))

(declare-fun lt!2610230 () (Set Context!16112))

(declare-fun lt!2610226 () Context!16112)

(assert (=> b!7341771 (= lt!2610230 (derivationStepZipperDown!2942 r1!2370 lt!2610226 c!10362))))

(declare-fun ++!16934 (List!71612 List!71612) List!71612)

(assert (=> b!7341771 (= lt!2610226 (Context!16113 (++!16934 (exprs!8556 ct1!282) (exprs!8556 ct2!378))))))

(declare-fun lt!2610236 () Unit!165185)

(assert (=> b!7341771 (= lt!2610236 (lemmaConcatPreservesForall!1791 (exprs!8556 ct1!282) (exprs!8556 ct2!378) lambda!455692))))

(declare-fun b!7341772 () Bool)

(declare-fun tp!2084767 () Bool)

(assert (=> b!7341772 (= e!4396218 tp!2084767)))

(declare-fun b!7341773 () Bool)

(declare-fun e!4396224 () Bool)

(assert (=> b!7341773 (= e!4396221 e!4396224)))

(declare-fun res!2965868 () Bool)

(assert (=> b!7341773 (=> (not res!2965868) (not e!4396224))))

(declare-fun lt!2610233 () (Set Context!16112))

(assert (=> b!7341773 (= res!2965868 (= lt!2610234 (set.union lt!2610233 (derivationStepZipperDown!2942 (regTwo!38745 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7341773 (= lt!2610233 (derivationStepZipperDown!2942 (regOne!38745 r1!2370) ct1!282 c!10362))))

(declare-fun b!7341774 () Bool)

(assert (=> b!7341774 (= e!4396224 (not e!4396215))))

(declare-fun res!2965869 () Bool)

(assert (=> b!7341774 (=> res!2965869 e!4396215)))

(declare-fun lt!2610231 () Context!16112)

(assert (=> b!7341774 (= res!2965869 (not (set.member lt!2610231 lt!2610230)))))

(declare-fun lt!2610228 () Unit!165185)

(assert (=> b!7341774 (= lt!2610228 (lemmaConcatPreservesForall!1791 (exprs!8556 cWitness!61) (exprs!8556 ct2!378) lambda!455692))))

(assert (=> b!7341774 (set.member lt!2610231 (derivationStepZipperDown!2942 (regOne!38745 r1!2370) lt!2610226 c!10362))))

(assert (=> b!7341774 (= lt!2610231 (Context!16113 (++!16934 (exprs!8556 cWitness!61) (exprs!8556 ct2!378))))))

(declare-fun lt!2610232 () Unit!165185)

(assert (=> b!7341774 (= lt!2610232 (lemmaConcatPreservesForall!1791 (exprs!8556 ct1!282) (exprs!8556 ct2!378) lambda!455692))))

(declare-fun lt!2610235 () Unit!165185)

(assert (=> b!7341774 (= lt!2610235 (lemmaConcatPreservesForall!1791 (exprs!8556 cWitness!61) (exprs!8556 ct2!378) lambda!455692))))

(declare-fun lt!2610229 () Unit!165185)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!51 (Regex!19116 Context!16112 Context!16112 Context!16112 C!38506) Unit!165185)

(assert (=> b!7341774 (= lt!2610229 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!51 (regOne!38745 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7341775 () Bool)

(declare-fun tp!2084771 () Bool)

(declare-fun tp!2084764 () Bool)

(assert (=> b!7341775 (= e!4396219 (and tp!2084771 tp!2084764))))

(declare-fun b!7341776 () Bool)

(declare-fun res!2965864 () Bool)

(assert (=> b!7341776 (=> (not res!2965864) (not e!4396224))))

(assert (=> b!7341776 (= res!2965864 (set.member cWitness!61 lt!2610233))))

(declare-fun b!7341777 () Bool)

(declare-fun tp!2084769 () Bool)

(declare-fun tp!2084765 () Bool)

(assert (=> b!7341777 (= e!4396219 (and tp!2084769 tp!2084765))))

(assert (= (and start!717066 res!2965867) b!7341767))

(assert (= (and b!7341767 res!2965865) b!7341771))

(assert (= (and b!7341771 res!2965863) b!7341773))

(assert (= (and b!7341773 res!2965868) b!7341776))

(assert (= (and b!7341776 res!2965864) b!7341774))

(assert (= (and b!7341774 (not res!2965869)) b!7341768))

(assert (= (and b!7341768 (not res!2965866)) b!7341766))

(assert (= start!717066 b!7341764))

(assert (= start!717066 b!7341772))

(assert (= (and start!717066 (is-ElementMatch!19116 r1!2370)) b!7341770))

(assert (= (and start!717066 (is-Concat!27961 r1!2370)) b!7341777))

(assert (= (and start!717066 (is-Star!19116 r1!2370)) b!7341769))

(assert (= (and start!717066 (is-Union!19116 r1!2370)) b!7341775))

(assert (= start!717066 b!7341765))

(declare-fun m!8005290 () Bool)

(assert (=> b!7341766 m!8005290))

(declare-fun m!8005292 () Bool)

(assert (=> start!717066 m!8005292))

(declare-fun m!8005294 () Bool)

(assert (=> start!717066 m!8005294))

(declare-fun m!8005296 () Bool)

(assert (=> start!717066 m!8005296))

(declare-fun m!8005298 () Bool)

(assert (=> start!717066 m!8005298))

(declare-fun m!8005300 () Bool)

(assert (=> b!7341767 m!8005300))

(declare-fun m!8005302 () Bool)

(assert (=> b!7341767 m!8005302))

(declare-fun m!8005304 () Bool)

(assert (=> b!7341776 m!8005304))

(declare-fun m!8005306 () Bool)

(assert (=> b!7341771 m!8005306))

(declare-fun m!8005308 () Bool)

(assert (=> b!7341771 m!8005308))

(declare-fun m!8005310 () Bool)

(assert (=> b!7341771 m!8005310))

(declare-fun m!8005312 () Bool)

(assert (=> b!7341768 m!8005312))

(declare-fun m!8005314 () Bool)

(assert (=> b!7341768 m!8005314))

(declare-fun m!8005316 () Bool)

(assert (=> b!7341773 m!8005316))

(declare-fun m!8005318 () Bool)

(assert (=> b!7341773 m!8005318))

(assert (=> b!7341774 m!8005314))

(declare-fun m!8005320 () Bool)

(assert (=> b!7341774 m!8005320))

(declare-fun m!8005322 () Bool)

(assert (=> b!7341774 m!8005322))

(declare-fun m!8005324 () Bool)

(assert (=> b!7341774 m!8005324))

(assert (=> b!7341774 m!8005314))

(declare-fun m!8005326 () Bool)

(assert (=> b!7341774 m!8005326))

(declare-fun m!8005328 () Bool)

(assert (=> b!7341774 m!8005328))

(assert (=> b!7341774 m!8005310))

(push 1)

(assert (not start!717066))

(assert tp_is_empty!48477)

(assert (not b!7341772))

(assert (not b!7341768))

(assert (not b!7341766))

(assert (not b!7341765))

(assert (not b!7341774))

(assert (not b!7341775))

(assert (not b!7341771))

(assert (not b!7341764))

(assert (not b!7341769))

(assert (not b!7341773))

(assert (not b!7341777))

(assert (not b!7341767))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!670225 () List!71612)

(declare-fun bm!670219 () Bool)

(declare-fun call!670226 () (Set Context!16112))

(declare-fun c!1363709 () Bool)

(assert (=> bm!670219 (= call!670226 (derivationStepZipperDown!2942 (ite c!1363709 (regOne!38745 r1!2370) (regOne!38744 r1!2370)) (ite c!1363709 lt!2610226 (Context!16113 call!670225)) c!10362))))

(declare-fun b!7341842 () Bool)

(declare-fun e!4396272 () (Set Context!16112))

(declare-fun call!670228 () (Set Context!16112))

(assert (=> b!7341842 (= e!4396272 (set.union call!670226 call!670228))))

(declare-fun b!7341843 () Bool)

(declare-fun e!4396270 () (Set Context!16112))

(declare-fun call!670227 () (Set Context!16112))

(assert (=> b!7341843 (= e!4396270 call!670227)))

(declare-fun b!7341844 () Bool)

(declare-fun e!4396268 () Bool)

(declare-fun nullable!8211 (Regex!19116) Bool)

(assert (=> b!7341844 (= e!4396268 (nullable!8211 (regOne!38744 r1!2370)))))

(declare-fun c!1363712 () Bool)

(declare-fun bm!670220 () Bool)

(declare-fun call!670224 () (Set Context!16112))

(declare-fun c!1363710 () Bool)

(declare-fun call!670229 () List!71612)

(assert (=> bm!670220 (= call!670224 (derivationStepZipperDown!2942 (ite c!1363709 (regTwo!38745 r1!2370) (ite c!1363710 (regTwo!38744 r1!2370) (ite c!1363712 (regOne!38744 r1!2370) (reg!19445 r1!2370)))) (ite (or c!1363709 c!1363710) lt!2610226 (Context!16113 call!670229)) c!10362))))

(declare-fun bm!670221 () Bool)

(assert (=> bm!670221 (= call!670229 call!670225)))

(declare-fun d!2278917 () Bool)

(declare-fun c!1363708 () Bool)

(assert (=> d!2278917 (= c!1363708 (and (is-ElementMatch!19116 r1!2370) (= (c!1363696 r1!2370) c!10362)))))

(declare-fun e!4396269 () (Set Context!16112))

(assert (=> d!2278917 (= (derivationStepZipperDown!2942 r1!2370 lt!2610226 c!10362) e!4396269)))

(declare-fun bm!670222 () Bool)

(declare-fun $colon$colon!3118 (List!71612 Regex!19116) List!71612)

(assert (=> bm!670222 (= call!670225 ($colon$colon!3118 (exprs!8556 lt!2610226) (ite (or c!1363710 c!1363712) (regTwo!38744 r1!2370) r1!2370)))))

(declare-fun bm!670223 () Bool)

(assert (=> bm!670223 (= call!670228 call!670224)))

(declare-fun b!7341845 () Bool)

(declare-fun e!4396267 () (Set Context!16112))

(assert (=> b!7341845 (= e!4396267 (set.union call!670226 call!670224))))

(declare-fun b!7341846 () Bool)

(assert (=> b!7341846 (= c!1363710 e!4396268)))

(declare-fun res!2965893 () Bool)

(assert (=> b!7341846 (=> (not res!2965893) (not e!4396268))))

(assert (=> b!7341846 (= res!2965893 (is-Concat!27961 r1!2370))))

(assert (=> b!7341846 (= e!4396267 e!4396272)))

(declare-fun b!7341847 () Bool)

(assert (=> b!7341847 (= e!4396269 (set.insert lt!2610226 (as set.empty (Set Context!16112))))))

(declare-fun b!7341848 () Bool)

(assert (=> b!7341848 (= e!4396272 e!4396270)))

(assert (=> b!7341848 (= c!1363712 (is-Concat!27961 r1!2370))))

(declare-fun bm!670224 () Bool)

(assert (=> bm!670224 (= call!670227 call!670228)))

(declare-fun b!7341849 () Bool)

(declare-fun e!4396271 () (Set Context!16112))

(assert (=> b!7341849 (= e!4396271 (as set.empty (Set Context!16112)))))

(declare-fun b!7341850 () Bool)

(assert (=> b!7341850 (= e!4396271 call!670227)))

(declare-fun b!7341851 () Bool)

(assert (=> b!7341851 (= e!4396269 e!4396267)))

(assert (=> b!7341851 (= c!1363709 (is-Union!19116 r1!2370))))

(declare-fun b!7341852 () Bool)

(declare-fun c!1363711 () Bool)

(assert (=> b!7341852 (= c!1363711 (is-Star!19116 r1!2370))))

(assert (=> b!7341852 (= e!4396270 e!4396271)))

(assert (= (and d!2278917 c!1363708) b!7341847))

(assert (= (and d!2278917 (not c!1363708)) b!7341851))

(assert (= (and b!7341851 c!1363709) b!7341845))

(assert (= (and b!7341851 (not c!1363709)) b!7341846))

(assert (= (and b!7341846 res!2965893) b!7341844))

(assert (= (and b!7341846 c!1363710) b!7341842))

(assert (= (and b!7341846 (not c!1363710)) b!7341848))

(assert (= (and b!7341848 c!1363712) b!7341843))

(assert (= (and b!7341848 (not c!1363712)) b!7341852))

(assert (= (and b!7341852 c!1363711) b!7341850))

(assert (= (and b!7341852 (not c!1363711)) b!7341849))

(assert (= (or b!7341843 b!7341850) bm!670221))

(assert (= (or b!7341843 b!7341850) bm!670224))

(assert (= (or b!7341842 bm!670224) bm!670223))

(assert (= (or b!7341842 bm!670221) bm!670222))

(assert (= (or b!7341845 bm!670223) bm!670220))

(assert (= (or b!7341845 b!7341842) bm!670219))

(declare-fun m!8005370 () Bool)

(assert (=> bm!670219 m!8005370))

(declare-fun m!8005372 () Bool)

(assert (=> b!7341844 m!8005372))

(declare-fun m!8005374 () Bool)

(assert (=> b!7341847 m!8005374))

(declare-fun m!8005376 () Bool)

(assert (=> bm!670220 m!8005376))

(declare-fun m!8005378 () Bool)

(assert (=> bm!670222 m!8005378))

(assert (=> b!7341771 d!2278917))

(declare-fun b!7341866 () Bool)

(declare-fun e!4396281 () List!71612)

(assert (=> b!7341866 (= e!4396281 (Cons!71488 (h!77936 (exprs!8556 ct1!282)) (++!16934 (t!386007 (exprs!8556 ct1!282)) (exprs!8556 ct2!378))))))

(declare-fun lt!2610272 () List!71612)

(declare-fun e!4396282 () Bool)

(declare-fun b!7341868 () Bool)

(assert (=> b!7341868 (= e!4396282 (or (not (= (exprs!8556 ct2!378) Nil!71488)) (= lt!2610272 (exprs!8556 ct1!282))))))

(declare-fun b!7341867 () Bool)

(declare-fun res!2965903 () Bool)

(assert (=> b!7341867 (=> (not res!2965903) (not e!4396282))))

(declare-fun size!42012 (List!71612) Int)

(assert (=> b!7341867 (= res!2965903 (= (size!42012 lt!2610272) (+ (size!42012 (exprs!8556 ct1!282)) (size!42012 (exprs!8556 ct2!378)))))))

(declare-fun d!2278919 () Bool)

(assert (=> d!2278919 e!4396282))

(declare-fun res!2965902 () Bool)

(assert (=> d!2278919 (=> (not res!2965902) (not e!4396282))))

(declare-fun content!15033 (List!71612) (Set Regex!19116))

(assert (=> d!2278919 (= res!2965902 (= (content!15033 lt!2610272) (set.union (content!15033 (exprs!8556 ct1!282)) (content!15033 (exprs!8556 ct2!378)))))))

(assert (=> d!2278919 (= lt!2610272 e!4396281)))

(declare-fun c!1363715 () Bool)

(assert (=> d!2278919 (= c!1363715 (is-Nil!71488 (exprs!8556 ct1!282)))))

(assert (=> d!2278919 (= (++!16934 (exprs!8556 ct1!282) (exprs!8556 ct2!378)) lt!2610272)))

(declare-fun b!7341865 () Bool)

(assert (=> b!7341865 (= e!4396281 (exprs!8556 ct2!378))))

(assert (= (and d!2278919 c!1363715) b!7341865))

(assert (= (and d!2278919 (not c!1363715)) b!7341866))

(assert (= (and d!2278919 res!2965902) b!7341867))

(assert (= (and b!7341867 res!2965903) b!7341868))

(declare-fun m!8005380 () Bool)

(assert (=> b!7341866 m!8005380))

(declare-fun m!8005382 () Bool)

(assert (=> b!7341867 m!8005382))

(declare-fun m!8005384 () Bool)

(assert (=> b!7341867 m!8005384))

(declare-fun m!8005386 () Bool)

(assert (=> b!7341867 m!8005386))

(declare-fun m!8005388 () Bool)

(assert (=> d!2278919 m!8005388))

(declare-fun m!8005390 () Bool)

(assert (=> d!2278919 m!8005390))

(declare-fun m!8005392 () Bool)

(assert (=> d!2278919 m!8005392))

(assert (=> b!7341771 d!2278919))

(declare-fun d!2278923 () Bool)

(assert (=> d!2278923 (forall!17948 (++!16934 (exprs!8556 ct1!282) (exprs!8556 ct2!378)) lambda!455692)))

(declare-fun lt!2610275 () Unit!165185)

(declare-fun choose!57105 (List!71612 List!71612 Int) Unit!165185)

(assert (=> d!2278923 (= lt!2610275 (choose!57105 (exprs!8556 ct1!282) (exprs!8556 ct2!378) lambda!455692))))

(assert (=> d!2278923 (forall!17948 (exprs!8556 ct1!282) lambda!455692)))

(assert (=> d!2278923 (= (lemmaConcatPreservesForall!1791 (exprs!8556 ct1!282) (exprs!8556 ct2!378) lambda!455692) lt!2610275)))

(declare-fun bs!1918492 () Bool)

(assert (= bs!1918492 d!2278923))

(assert (=> bs!1918492 m!8005308))

(assert (=> bs!1918492 m!8005308))

(declare-fun m!8005398 () Bool)

(assert (=> bs!1918492 m!8005398))

(declare-fun m!8005400 () Bool)

(assert (=> bs!1918492 m!8005400))

(assert (=> bs!1918492 m!8005312))

(assert (=> b!7341771 d!2278923))

(declare-fun d!2278927 () Bool)

(declare-fun res!2965910 () Bool)

(declare-fun e!4396289 () Bool)

(assert (=> d!2278927 (=> res!2965910 e!4396289)))

(assert (=> d!2278927 (= res!2965910 (is-Nil!71488 (exprs!8556 ct2!378)))))

(assert (=> d!2278927 (= (forall!17948 (exprs!8556 ct2!378) lambda!455692) e!4396289)))

(declare-fun b!7341875 () Bool)

(declare-fun e!4396290 () Bool)

(assert (=> b!7341875 (= e!4396289 e!4396290)))

(declare-fun res!2965911 () Bool)

(assert (=> b!7341875 (=> (not res!2965911) (not e!4396290))))

(declare-fun dynLambda!29455 (Int Regex!19116) Bool)

(assert (=> b!7341875 (= res!2965911 (dynLambda!29455 lambda!455692 (h!77936 (exprs!8556 ct2!378))))))

(declare-fun b!7341876 () Bool)

(assert (=> b!7341876 (= e!4396290 (forall!17948 (t!386007 (exprs!8556 ct2!378)) lambda!455692))))

(assert (= (and d!2278927 (not res!2965910)) b!7341875))

(assert (= (and b!7341875 res!2965911) b!7341876))

(declare-fun b_lambda!283893 () Bool)

(assert (=> (not b_lambda!283893) (not b!7341875)))

(declare-fun m!8005402 () Bool)

(assert (=> b!7341875 m!8005402))

(declare-fun m!8005404 () Bool)

(assert (=> b!7341876 m!8005404))

(assert (=> b!7341766 d!2278927))

(declare-fun bm!670225 () Bool)

(declare-fun call!670231 () List!71612)

(declare-fun c!1363717 () Bool)

(declare-fun call!670232 () (Set Context!16112))

(assert (=> bm!670225 (= call!670232 (derivationStepZipperDown!2942 (ite c!1363717 (regOne!38745 r1!2370) (regOne!38744 r1!2370)) (ite c!1363717 ct1!282 (Context!16113 call!670231)) c!10362))))

(declare-fun b!7341877 () Bool)

(declare-fun e!4396296 () (Set Context!16112))

(declare-fun call!670234 () (Set Context!16112))

(assert (=> b!7341877 (= e!4396296 (set.union call!670232 call!670234))))

(declare-fun b!7341878 () Bool)

(declare-fun e!4396294 () (Set Context!16112))

(declare-fun call!670233 () (Set Context!16112))

(assert (=> b!7341878 (= e!4396294 call!670233)))

(declare-fun b!7341879 () Bool)

(declare-fun e!4396292 () Bool)

(assert (=> b!7341879 (= e!4396292 (nullable!8211 (regOne!38744 r1!2370)))))

(declare-fun bm!670226 () Bool)

(declare-fun call!670235 () List!71612)

(declare-fun call!670230 () (Set Context!16112))

(declare-fun c!1363718 () Bool)

(declare-fun c!1363720 () Bool)

(assert (=> bm!670226 (= call!670230 (derivationStepZipperDown!2942 (ite c!1363717 (regTwo!38745 r1!2370) (ite c!1363718 (regTwo!38744 r1!2370) (ite c!1363720 (regOne!38744 r1!2370) (reg!19445 r1!2370)))) (ite (or c!1363717 c!1363718) ct1!282 (Context!16113 call!670235)) c!10362))))

(declare-fun bm!670227 () Bool)

(assert (=> bm!670227 (= call!670235 call!670231)))

(declare-fun d!2278929 () Bool)

(declare-fun c!1363716 () Bool)

(assert (=> d!2278929 (= c!1363716 (and (is-ElementMatch!19116 r1!2370) (= (c!1363696 r1!2370) c!10362)))))

(declare-fun e!4396293 () (Set Context!16112))

(assert (=> d!2278929 (= (derivationStepZipperDown!2942 r1!2370 ct1!282 c!10362) e!4396293)))

(declare-fun bm!670228 () Bool)

(assert (=> bm!670228 (= call!670231 ($colon$colon!3118 (exprs!8556 ct1!282) (ite (or c!1363718 c!1363720) (regTwo!38744 r1!2370) r1!2370)))))

(declare-fun bm!670229 () Bool)

(assert (=> bm!670229 (= call!670234 call!670230)))

(declare-fun b!7341880 () Bool)

(declare-fun e!4396291 () (Set Context!16112))

(assert (=> b!7341880 (= e!4396291 (set.union call!670232 call!670230))))

(declare-fun b!7341881 () Bool)

(assert (=> b!7341881 (= c!1363718 e!4396292)))

(declare-fun res!2965912 () Bool)

(assert (=> b!7341881 (=> (not res!2965912) (not e!4396292))))

(assert (=> b!7341881 (= res!2965912 (is-Concat!27961 r1!2370))))

(assert (=> b!7341881 (= e!4396291 e!4396296)))

(declare-fun b!7341882 () Bool)

(assert (=> b!7341882 (= e!4396293 (set.insert ct1!282 (as set.empty (Set Context!16112))))))

(declare-fun b!7341883 () Bool)

(assert (=> b!7341883 (= e!4396296 e!4396294)))

(assert (=> b!7341883 (= c!1363720 (is-Concat!27961 r1!2370))))

(declare-fun bm!670230 () Bool)

(assert (=> bm!670230 (= call!670233 call!670234)))

(declare-fun b!7341884 () Bool)

(declare-fun e!4396295 () (Set Context!16112))

(assert (=> b!7341884 (= e!4396295 (as set.empty (Set Context!16112)))))

(declare-fun b!7341885 () Bool)

(assert (=> b!7341885 (= e!4396295 call!670233)))

(declare-fun b!7341886 () Bool)

(assert (=> b!7341886 (= e!4396293 e!4396291)))

(assert (=> b!7341886 (= c!1363717 (is-Union!19116 r1!2370))))

(declare-fun b!7341887 () Bool)

(declare-fun c!1363719 () Bool)

(assert (=> b!7341887 (= c!1363719 (is-Star!19116 r1!2370))))

(assert (=> b!7341887 (= e!4396294 e!4396295)))

(assert (= (and d!2278929 c!1363716) b!7341882))

(assert (= (and d!2278929 (not c!1363716)) b!7341886))

(assert (= (and b!7341886 c!1363717) b!7341880))

(assert (= (and b!7341886 (not c!1363717)) b!7341881))

(assert (= (and b!7341881 res!2965912) b!7341879))

(assert (= (and b!7341881 c!1363718) b!7341877))

(assert (= (and b!7341881 (not c!1363718)) b!7341883))

(assert (= (and b!7341883 c!1363720) b!7341878))

(assert (= (and b!7341883 (not c!1363720)) b!7341887))

(assert (= (and b!7341887 c!1363719) b!7341885))

(assert (= (and b!7341887 (not c!1363719)) b!7341884))

(assert (= (or b!7341878 b!7341885) bm!670227))

(assert (= (or b!7341878 b!7341885) bm!670230))

(assert (= (or b!7341877 bm!670230) bm!670229))

(assert (= (or b!7341877 bm!670227) bm!670228))

(assert (= (or b!7341880 bm!670229) bm!670226))

(assert (= (or b!7341880 b!7341877) bm!670225))

(declare-fun m!8005406 () Bool)

(assert (=> bm!670225 m!8005406))

(assert (=> b!7341879 m!8005372))

(declare-fun m!8005408 () Bool)

(assert (=> b!7341882 m!8005408))

(declare-fun m!8005410 () Bool)

(assert (=> bm!670226 m!8005410))

(declare-fun m!8005412 () Bool)

(assert (=> bm!670228 m!8005412))

(assert (=> b!7341767 d!2278929))

(declare-fun c!1363725 () Bool)

(declare-fun bm!670237 () Bool)

(declare-fun c!1363726 () Bool)

(declare-fun call!670243 () Bool)

(assert (=> bm!670237 (= call!670243 (validRegex!9712 (ite c!1363725 (reg!19445 r1!2370) (ite c!1363726 (regTwo!38745 r1!2370) (regOne!38744 r1!2370)))))))

(declare-fun b!7341906 () Bool)

(declare-fun e!4396317 () Bool)

(declare-fun e!4396315 () Bool)

(assert (=> b!7341906 (= e!4396317 e!4396315)))

(assert (=> b!7341906 (= c!1363725 (is-Star!19116 r1!2370))))

(declare-fun bm!670238 () Bool)

(declare-fun call!670244 () Bool)

(assert (=> bm!670238 (= call!670244 call!670243)))

(declare-fun b!7341907 () Bool)

(declare-fun e!4396316 () Bool)

(declare-fun e!4396311 () Bool)

(assert (=> b!7341907 (= e!4396316 e!4396311)))

(declare-fun res!2965923 () Bool)

(assert (=> b!7341907 (=> (not res!2965923) (not e!4396311))))

(assert (=> b!7341907 (= res!2965923 call!670244)))

(declare-fun b!7341908 () Bool)

(declare-fun e!4396312 () Bool)

(assert (=> b!7341908 (= e!4396315 e!4396312)))

(declare-fun res!2965924 () Bool)

(assert (=> b!7341908 (= res!2965924 (not (nullable!8211 (reg!19445 r1!2370))))))

(assert (=> b!7341908 (=> (not res!2965924) (not e!4396312))))

(declare-fun b!7341909 () Bool)

(declare-fun call!670242 () Bool)

(assert (=> b!7341909 (= e!4396311 call!670242)))

(declare-fun b!7341910 () Bool)

(assert (=> b!7341910 (= e!4396312 call!670243)))

(declare-fun bm!670239 () Bool)

(assert (=> bm!670239 (= call!670242 (validRegex!9712 (ite c!1363726 (regOne!38745 r1!2370) (regTwo!38744 r1!2370))))))

(declare-fun d!2278931 () Bool)

(declare-fun res!2965926 () Bool)

(assert (=> d!2278931 (=> res!2965926 e!4396317)))

(assert (=> d!2278931 (= res!2965926 (is-ElementMatch!19116 r1!2370))))

(assert (=> d!2278931 (= (validRegex!9712 r1!2370) e!4396317)))

(declare-fun b!7341911 () Bool)

(declare-fun e!4396314 () Bool)

(assert (=> b!7341911 (= e!4396314 call!670244)))

(declare-fun b!7341912 () Bool)

(declare-fun res!2965927 () Bool)

(assert (=> b!7341912 (=> res!2965927 e!4396316)))

(assert (=> b!7341912 (= res!2965927 (not (is-Concat!27961 r1!2370)))))

(declare-fun e!4396313 () Bool)

(assert (=> b!7341912 (= e!4396313 e!4396316)))

(declare-fun b!7341913 () Bool)

(declare-fun res!2965925 () Bool)

(assert (=> b!7341913 (=> (not res!2965925) (not e!4396314))))

(assert (=> b!7341913 (= res!2965925 call!670242)))

(assert (=> b!7341913 (= e!4396313 e!4396314)))

(declare-fun b!7341914 () Bool)

(assert (=> b!7341914 (= e!4396315 e!4396313)))

(assert (=> b!7341914 (= c!1363726 (is-Union!19116 r1!2370))))

(assert (= (and d!2278931 (not res!2965926)) b!7341906))

(assert (= (and b!7341906 c!1363725) b!7341908))

(assert (= (and b!7341906 (not c!1363725)) b!7341914))

(assert (= (and b!7341908 res!2965924) b!7341910))

(assert (= (and b!7341914 c!1363726) b!7341913))

(assert (= (and b!7341914 (not c!1363726)) b!7341912))

(assert (= (and b!7341913 res!2965925) b!7341911))

(assert (= (and b!7341912 (not res!2965927)) b!7341907))

(assert (= (and b!7341907 res!2965923) b!7341909))

(assert (= (or b!7341913 b!7341909) bm!670239))

(assert (= (or b!7341911 b!7341907) bm!670238))

(assert (= (or b!7341910 bm!670238) bm!670237))

(declare-fun m!8005420 () Bool)

(assert (=> bm!670237 m!8005420))

(declare-fun m!8005422 () Bool)

(assert (=> b!7341908 m!8005422))

(declare-fun m!8005424 () Bool)

(assert (=> bm!670239 m!8005424))

(assert (=> start!717066 d!2278931))

(declare-fun bs!1918494 () Bool)

(declare-fun d!2278935 () Bool)

(assert (= bs!1918494 (and d!2278935 b!7341771)))

(declare-fun lambda!455708 () Int)

(assert (=> bs!1918494 (= lambda!455708 lambda!455692)))

(assert (=> d!2278935 (= (inv!91131 cWitness!61) (forall!17948 (exprs!8556 cWitness!61) lambda!455708))))

(declare-fun bs!1918495 () Bool)

(assert (= bs!1918495 d!2278935))

(declare-fun m!8005426 () Bool)

(assert (=> bs!1918495 m!8005426))

(assert (=> start!717066 d!2278935))

(declare-fun bs!1918496 () Bool)

(declare-fun d!2278937 () Bool)

(assert (= bs!1918496 (and d!2278937 b!7341771)))

(declare-fun lambda!455709 () Int)

(assert (=> bs!1918496 (= lambda!455709 lambda!455692)))

(declare-fun bs!1918497 () Bool)

(assert (= bs!1918497 (and d!2278937 d!2278935)))

(assert (=> bs!1918497 (= lambda!455709 lambda!455708)))

(assert (=> d!2278937 (= (inv!91131 ct1!282) (forall!17948 (exprs!8556 ct1!282) lambda!455709))))

(declare-fun bs!1918498 () Bool)

(assert (= bs!1918498 d!2278937))

(declare-fun m!8005428 () Bool)

(assert (=> bs!1918498 m!8005428))

(assert (=> start!717066 d!2278937))

(declare-fun bs!1918499 () Bool)

(declare-fun d!2278939 () Bool)

(assert (= bs!1918499 (and d!2278939 b!7341771)))

(declare-fun lambda!455710 () Int)

(assert (=> bs!1918499 (= lambda!455710 lambda!455692)))

(declare-fun bs!1918500 () Bool)

(assert (= bs!1918500 (and d!2278939 d!2278935)))

(assert (=> bs!1918500 (= lambda!455710 lambda!455708)))

(declare-fun bs!1918501 () Bool)

(assert (= bs!1918501 (and d!2278939 d!2278937)))

(assert (=> bs!1918501 (= lambda!455710 lambda!455709)))

(assert (=> d!2278939 (= (inv!91131 ct2!378) (forall!17948 (exprs!8556 ct2!378) lambda!455710))))

(declare-fun bs!1918502 () Bool)

(assert (= bs!1918502 d!2278939))

(declare-fun m!8005430 () Bool)

(assert (=> bs!1918502 m!8005430))

(assert (=> start!717066 d!2278939))

(declare-fun call!670247 () (Set Context!16112))

(declare-fun bm!670240 () Bool)

(declare-fun call!670246 () List!71612)

(declare-fun c!1363728 () Bool)

(assert (=> bm!670240 (= call!670247 (derivationStepZipperDown!2942 (ite c!1363728 (regOne!38745 (regTwo!38745 r1!2370)) (regOne!38744 (regTwo!38745 r1!2370))) (ite c!1363728 ct1!282 (Context!16113 call!670246)) c!10362))))

(declare-fun b!7341915 () Bool)

(declare-fun e!4396323 () (Set Context!16112))

(declare-fun call!670249 () (Set Context!16112))

(assert (=> b!7341915 (= e!4396323 (set.union call!670247 call!670249))))

(declare-fun b!7341916 () Bool)

(declare-fun e!4396321 () (Set Context!16112))

(declare-fun call!670248 () (Set Context!16112))

(assert (=> b!7341916 (= e!4396321 call!670248)))

(declare-fun b!7341917 () Bool)

(declare-fun e!4396319 () Bool)

(assert (=> b!7341917 (= e!4396319 (nullable!8211 (regOne!38744 (regTwo!38745 r1!2370))))))

(declare-fun bm!670241 () Bool)

(declare-fun call!670245 () (Set Context!16112))

(declare-fun call!670250 () List!71612)

(declare-fun c!1363731 () Bool)

(declare-fun c!1363729 () Bool)

(assert (=> bm!670241 (= call!670245 (derivationStepZipperDown!2942 (ite c!1363728 (regTwo!38745 (regTwo!38745 r1!2370)) (ite c!1363729 (regTwo!38744 (regTwo!38745 r1!2370)) (ite c!1363731 (regOne!38744 (regTwo!38745 r1!2370)) (reg!19445 (regTwo!38745 r1!2370))))) (ite (or c!1363728 c!1363729) ct1!282 (Context!16113 call!670250)) c!10362))))

(declare-fun bm!670242 () Bool)

(assert (=> bm!670242 (= call!670250 call!670246)))

(declare-fun d!2278941 () Bool)

(declare-fun c!1363727 () Bool)

(assert (=> d!2278941 (= c!1363727 (and (is-ElementMatch!19116 (regTwo!38745 r1!2370)) (= (c!1363696 (regTwo!38745 r1!2370)) c!10362)))))

(declare-fun e!4396320 () (Set Context!16112))

(assert (=> d!2278941 (= (derivationStepZipperDown!2942 (regTwo!38745 r1!2370) ct1!282 c!10362) e!4396320)))

(declare-fun bm!670243 () Bool)

(assert (=> bm!670243 (= call!670246 ($colon$colon!3118 (exprs!8556 ct1!282) (ite (or c!1363729 c!1363731) (regTwo!38744 (regTwo!38745 r1!2370)) (regTwo!38745 r1!2370))))))

(declare-fun bm!670244 () Bool)

(assert (=> bm!670244 (= call!670249 call!670245)))

(declare-fun b!7341918 () Bool)

(declare-fun e!4396318 () (Set Context!16112))

(assert (=> b!7341918 (= e!4396318 (set.union call!670247 call!670245))))

(declare-fun b!7341919 () Bool)

(assert (=> b!7341919 (= c!1363729 e!4396319)))

(declare-fun res!2965928 () Bool)

(assert (=> b!7341919 (=> (not res!2965928) (not e!4396319))))

(assert (=> b!7341919 (= res!2965928 (is-Concat!27961 (regTwo!38745 r1!2370)))))

(assert (=> b!7341919 (= e!4396318 e!4396323)))

(declare-fun b!7341920 () Bool)

(assert (=> b!7341920 (= e!4396320 (set.insert ct1!282 (as set.empty (Set Context!16112))))))

(declare-fun b!7341921 () Bool)

(assert (=> b!7341921 (= e!4396323 e!4396321)))

(assert (=> b!7341921 (= c!1363731 (is-Concat!27961 (regTwo!38745 r1!2370)))))

(declare-fun bm!670245 () Bool)

(assert (=> bm!670245 (= call!670248 call!670249)))

(declare-fun b!7341922 () Bool)

(declare-fun e!4396322 () (Set Context!16112))

(assert (=> b!7341922 (= e!4396322 (as set.empty (Set Context!16112)))))

(declare-fun b!7341923 () Bool)

(assert (=> b!7341923 (= e!4396322 call!670248)))

(declare-fun b!7341924 () Bool)

(assert (=> b!7341924 (= e!4396320 e!4396318)))

(assert (=> b!7341924 (= c!1363728 (is-Union!19116 (regTwo!38745 r1!2370)))))

(declare-fun b!7341925 () Bool)

(declare-fun c!1363730 () Bool)

(assert (=> b!7341925 (= c!1363730 (is-Star!19116 (regTwo!38745 r1!2370)))))

(assert (=> b!7341925 (= e!4396321 e!4396322)))

(assert (= (and d!2278941 c!1363727) b!7341920))

(assert (= (and d!2278941 (not c!1363727)) b!7341924))

(assert (= (and b!7341924 c!1363728) b!7341918))

(assert (= (and b!7341924 (not c!1363728)) b!7341919))

(assert (= (and b!7341919 res!2965928) b!7341917))

(assert (= (and b!7341919 c!1363729) b!7341915))

(assert (= (and b!7341919 (not c!1363729)) b!7341921))

(assert (= (and b!7341921 c!1363731) b!7341916))

(assert (= (and b!7341921 (not c!1363731)) b!7341925))

(assert (= (and b!7341925 c!1363730) b!7341923))

(assert (= (and b!7341925 (not c!1363730)) b!7341922))

(assert (= (or b!7341916 b!7341923) bm!670242))

(assert (= (or b!7341916 b!7341923) bm!670245))

(assert (= (or b!7341915 bm!670245) bm!670244))

(assert (= (or b!7341915 bm!670242) bm!670243))

(assert (= (or b!7341918 bm!670244) bm!670241))

(assert (= (or b!7341918 b!7341915) bm!670240))

(declare-fun m!8005432 () Bool)

(assert (=> bm!670240 m!8005432))

(declare-fun m!8005434 () Bool)

(assert (=> b!7341917 m!8005434))

(assert (=> b!7341920 m!8005408))

(declare-fun m!8005436 () Bool)

(assert (=> bm!670241 m!8005436))

(declare-fun m!8005438 () Bool)

(assert (=> bm!670243 m!8005438))

(assert (=> b!7341773 d!2278941))

(declare-fun bm!670246 () Bool)

(declare-fun call!670253 () (Set Context!16112))

(declare-fun call!670252 () List!71612)

(declare-fun c!1363733 () Bool)

(assert (=> bm!670246 (= call!670253 (derivationStepZipperDown!2942 (ite c!1363733 (regOne!38745 (regOne!38745 r1!2370)) (regOne!38744 (regOne!38745 r1!2370))) (ite c!1363733 ct1!282 (Context!16113 call!670252)) c!10362))))

(declare-fun b!7341926 () Bool)

(declare-fun e!4396329 () (Set Context!16112))

(declare-fun call!670255 () (Set Context!16112))

(assert (=> b!7341926 (= e!4396329 (set.union call!670253 call!670255))))

(declare-fun b!7341927 () Bool)

(declare-fun e!4396327 () (Set Context!16112))

(declare-fun call!670254 () (Set Context!16112))

(assert (=> b!7341927 (= e!4396327 call!670254)))

(declare-fun b!7341928 () Bool)

(declare-fun e!4396325 () Bool)

(assert (=> b!7341928 (= e!4396325 (nullable!8211 (regOne!38744 (regOne!38745 r1!2370))))))

(declare-fun call!670256 () List!71612)

(declare-fun c!1363736 () Bool)

(declare-fun c!1363734 () Bool)

(declare-fun call!670251 () (Set Context!16112))

(declare-fun bm!670247 () Bool)

(assert (=> bm!670247 (= call!670251 (derivationStepZipperDown!2942 (ite c!1363733 (regTwo!38745 (regOne!38745 r1!2370)) (ite c!1363734 (regTwo!38744 (regOne!38745 r1!2370)) (ite c!1363736 (regOne!38744 (regOne!38745 r1!2370)) (reg!19445 (regOne!38745 r1!2370))))) (ite (or c!1363733 c!1363734) ct1!282 (Context!16113 call!670256)) c!10362))))

(declare-fun bm!670248 () Bool)

(assert (=> bm!670248 (= call!670256 call!670252)))

(declare-fun d!2278943 () Bool)

(declare-fun c!1363732 () Bool)

(assert (=> d!2278943 (= c!1363732 (and (is-ElementMatch!19116 (regOne!38745 r1!2370)) (= (c!1363696 (regOne!38745 r1!2370)) c!10362)))))

(declare-fun e!4396326 () (Set Context!16112))

(assert (=> d!2278943 (= (derivationStepZipperDown!2942 (regOne!38745 r1!2370) ct1!282 c!10362) e!4396326)))

(declare-fun bm!670249 () Bool)

(assert (=> bm!670249 (= call!670252 ($colon$colon!3118 (exprs!8556 ct1!282) (ite (or c!1363734 c!1363736) (regTwo!38744 (regOne!38745 r1!2370)) (regOne!38745 r1!2370))))))

(declare-fun bm!670250 () Bool)

(assert (=> bm!670250 (= call!670255 call!670251)))

(declare-fun b!7341929 () Bool)

(declare-fun e!4396324 () (Set Context!16112))

(assert (=> b!7341929 (= e!4396324 (set.union call!670253 call!670251))))

(declare-fun b!7341930 () Bool)

(assert (=> b!7341930 (= c!1363734 e!4396325)))

(declare-fun res!2965929 () Bool)

(assert (=> b!7341930 (=> (not res!2965929) (not e!4396325))))

(assert (=> b!7341930 (= res!2965929 (is-Concat!27961 (regOne!38745 r1!2370)))))

(assert (=> b!7341930 (= e!4396324 e!4396329)))

(declare-fun b!7341931 () Bool)

(assert (=> b!7341931 (= e!4396326 (set.insert ct1!282 (as set.empty (Set Context!16112))))))

(declare-fun b!7341932 () Bool)

(assert (=> b!7341932 (= e!4396329 e!4396327)))

(assert (=> b!7341932 (= c!1363736 (is-Concat!27961 (regOne!38745 r1!2370)))))

(declare-fun bm!670251 () Bool)

(assert (=> bm!670251 (= call!670254 call!670255)))

(declare-fun b!7341933 () Bool)

(declare-fun e!4396328 () (Set Context!16112))

(assert (=> b!7341933 (= e!4396328 (as set.empty (Set Context!16112)))))

(declare-fun b!7341934 () Bool)

(assert (=> b!7341934 (= e!4396328 call!670254)))

(declare-fun b!7341935 () Bool)

(assert (=> b!7341935 (= e!4396326 e!4396324)))

(assert (=> b!7341935 (= c!1363733 (is-Union!19116 (regOne!38745 r1!2370)))))

(declare-fun b!7341936 () Bool)

(declare-fun c!1363735 () Bool)

(assert (=> b!7341936 (= c!1363735 (is-Star!19116 (regOne!38745 r1!2370)))))

(assert (=> b!7341936 (= e!4396327 e!4396328)))

(assert (= (and d!2278943 c!1363732) b!7341931))

(assert (= (and d!2278943 (not c!1363732)) b!7341935))

(assert (= (and b!7341935 c!1363733) b!7341929))

(assert (= (and b!7341935 (not c!1363733)) b!7341930))

(assert (= (and b!7341930 res!2965929) b!7341928))

(assert (= (and b!7341930 c!1363734) b!7341926))

(assert (= (and b!7341930 (not c!1363734)) b!7341932))

(assert (= (and b!7341932 c!1363736) b!7341927))

(assert (= (and b!7341932 (not c!1363736)) b!7341936))

(assert (= (and b!7341936 c!1363735) b!7341934))

(assert (= (and b!7341936 (not c!1363735)) b!7341933))

(assert (= (or b!7341927 b!7341934) bm!670248))

(assert (= (or b!7341927 b!7341934) bm!670251))

(assert (= (or b!7341926 bm!670251) bm!670250))

(assert (= (or b!7341926 bm!670248) bm!670249))

(assert (= (or b!7341929 bm!670250) bm!670247))

(assert (= (or b!7341929 b!7341926) bm!670246))

(declare-fun m!8005440 () Bool)

(assert (=> bm!670246 m!8005440))

(declare-fun m!8005442 () Bool)

(assert (=> b!7341928 m!8005442))

(assert (=> b!7341931 m!8005408))

(declare-fun m!8005444 () Bool)

(assert (=> bm!670247 m!8005444))

(declare-fun m!8005446 () Bool)

(assert (=> bm!670249 m!8005446))

(assert (=> b!7341773 d!2278943))

(declare-fun d!2278945 () Bool)

(declare-fun res!2965930 () Bool)

(declare-fun e!4396330 () Bool)

(assert (=> d!2278945 (=> res!2965930 e!4396330)))

(assert (=> d!2278945 (= res!2965930 (is-Nil!71488 (exprs!8556 ct1!282)))))

(assert (=> d!2278945 (= (forall!17948 (exprs!8556 ct1!282) lambda!455692) e!4396330)))

(declare-fun b!7341939 () Bool)

(declare-fun e!4396331 () Bool)

(assert (=> b!7341939 (= e!4396330 e!4396331)))

(declare-fun res!2965931 () Bool)

(assert (=> b!7341939 (=> (not res!2965931) (not e!4396331))))

(assert (=> b!7341939 (= res!2965931 (dynLambda!29455 lambda!455692 (h!77936 (exprs!8556 ct1!282))))))

(declare-fun b!7341940 () Bool)

(assert (=> b!7341940 (= e!4396331 (forall!17948 (t!386007 (exprs!8556 ct1!282)) lambda!455692))))

(assert (= (and d!2278945 (not res!2965930)) b!7341939))

(assert (= (and b!7341939 res!2965931) b!7341940))

(declare-fun b_lambda!283895 () Bool)

(assert (=> (not b_lambda!283895) (not b!7341939)))

(declare-fun m!8005448 () Bool)

(assert (=> b!7341939 m!8005448))

(declare-fun m!8005450 () Bool)

(assert (=> b!7341940 m!8005450))

(assert (=> b!7341768 d!2278945))

(declare-fun d!2278947 () Bool)

(assert (=> d!2278947 (forall!17948 (++!16934 (exprs!8556 cWitness!61) (exprs!8556 ct2!378)) lambda!455692)))

(declare-fun lt!2610279 () Unit!165185)

(assert (=> d!2278947 (= lt!2610279 (choose!57105 (exprs!8556 cWitness!61) (exprs!8556 ct2!378) lambda!455692))))

(assert (=> d!2278947 (forall!17948 (exprs!8556 cWitness!61) lambda!455692)))

(assert (=> d!2278947 (= (lemmaConcatPreservesForall!1791 (exprs!8556 cWitness!61) (exprs!8556 ct2!378) lambda!455692) lt!2610279)))

(declare-fun bs!1918503 () Bool)

(assert (= bs!1918503 d!2278947))

(assert (=> bs!1918503 m!8005324))

(assert (=> bs!1918503 m!8005324))

(declare-fun m!8005452 () Bool)

(assert (=> bs!1918503 m!8005452))

(declare-fun m!8005454 () Bool)

(assert (=> bs!1918503 m!8005454))

(declare-fun m!8005456 () Bool)

(assert (=> bs!1918503 m!8005456))

(assert (=> b!7341768 d!2278947))

(declare-fun bs!1918504 () Bool)

(declare-fun d!2278949 () Bool)

(assert (= bs!1918504 (and d!2278949 b!7341771)))

(declare-fun lambda!455715 () Int)

(assert (=> bs!1918504 (= lambda!455715 lambda!455692)))

(declare-fun bs!1918505 () Bool)

(assert (= bs!1918505 (and d!2278949 d!2278935)))

(assert (=> bs!1918505 (= lambda!455715 lambda!455708)))

(declare-fun bs!1918506 () Bool)

(assert (= bs!1918506 (and d!2278949 d!2278937)))

(assert (=> bs!1918506 (= lambda!455715 lambda!455709)))

(declare-fun bs!1918507 () Bool)

(assert (= bs!1918507 (and d!2278949 d!2278939)))

(assert (=> bs!1918507 (= lambda!455715 lambda!455710)))

(assert (=> d!2278949 (set.member (Context!16113 (++!16934 (exprs!8556 cWitness!61) (exprs!8556 ct2!378))) (derivationStepZipperDown!2942 (regOne!38745 r1!2370) (Context!16113 (++!16934 (exprs!8556 ct1!282) (exprs!8556 ct2!378))) c!10362))))

(declare-fun lt!2610288 () Unit!165185)

(assert (=> d!2278949 (= lt!2610288 (lemmaConcatPreservesForall!1791 (exprs!8556 ct1!282) (exprs!8556 ct2!378) lambda!455715))))

(declare-fun lt!2610287 () Unit!165185)

(assert (=> d!2278949 (= lt!2610287 (lemmaConcatPreservesForall!1791 (exprs!8556 cWitness!61) (exprs!8556 ct2!378) lambda!455715))))

(declare-fun lt!2610286 () Unit!165185)

(declare-fun choose!57107 (Regex!19116 Context!16112 Context!16112 Context!16112 C!38506) Unit!165185)

(assert (=> d!2278949 (= lt!2610286 (choose!57107 (regOne!38745 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2278949 (validRegex!9712 (regOne!38745 r1!2370))))

(assert (=> d!2278949 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!51 (regOne!38745 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2610286)))

(declare-fun bs!1918508 () Bool)

(assert (= bs!1918508 d!2278949))

(declare-fun m!8005458 () Bool)

(assert (=> bs!1918508 m!8005458))

(declare-fun m!8005460 () Bool)

(assert (=> bs!1918508 m!8005460))

(assert (=> bs!1918508 m!8005308))

(declare-fun m!8005462 () Bool)

(assert (=> bs!1918508 m!8005462))

(assert (=> bs!1918508 m!8005324))

(declare-fun m!8005464 () Bool)

(assert (=> bs!1918508 m!8005464))

(declare-fun m!8005466 () Bool)

(assert (=> bs!1918508 m!8005466))

(declare-fun m!8005468 () Bool)

(assert (=> bs!1918508 m!8005468))

(assert (=> b!7341774 d!2278949))

(declare-fun b!7341962 () Bool)

(declare-fun e!4396344 () List!71612)

(assert (=> b!7341962 (= e!4396344 (Cons!71488 (h!77936 (exprs!8556 cWitness!61)) (++!16934 (t!386007 (exprs!8556 cWitness!61)) (exprs!8556 ct2!378))))))

(declare-fun e!4396345 () Bool)

(declare-fun lt!2610289 () List!71612)

(declare-fun b!7341964 () Bool)

(assert (=> b!7341964 (= e!4396345 (or (not (= (exprs!8556 ct2!378) Nil!71488)) (= lt!2610289 (exprs!8556 cWitness!61))))))

(declare-fun b!7341963 () Bool)

(declare-fun res!2965935 () Bool)

(assert (=> b!7341963 (=> (not res!2965935) (not e!4396345))))

(assert (=> b!7341963 (= res!2965935 (= (size!42012 lt!2610289) (+ (size!42012 (exprs!8556 cWitness!61)) (size!42012 (exprs!8556 ct2!378)))))))

(declare-fun d!2278951 () Bool)

(assert (=> d!2278951 e!4396345))

(declare-fun res!2965934 () Bool)

(assert (=> d!2278951 (=> (not res!2965934) (not e!4396345))))

(assert (=> d!2278951 (= res!2965934 (= (content!15033 lt!2610289) (set.union (content!15033 (exprs!8556 cWitness!61)) (content!15033 (exprs!8556 ct2!378)))))))

(assert (=> d!2278951 (= lt!2610289 e!4396344)))

(declare-fun c!1363748 () Bool)

(assert (=> d!2278951 (= c!1363748 (is-Nil!71488 (exprs!8556 cWitness!61)))))

(assert (=> d!2278951 (= (++!16934 (exprs!8556 cWitness!61) (exprs!8556 ct2!378)) lt!2610289)))

(declare-fun b!7341961 () Bool)

(assert (=> b!7341961 (= e!4396344 (exprs!8556 ct2!378))))

(assert (= (and d!2278951 c!1363748) b!7341961))

(assert (= (and d!2278951 (not c!1363748)) b!7341962))

(assert (= (and d!2278951 res!2965934) b!7341963))

(assert (= (and b!7341963 res!2965935) b!7341964))

(declare-fun m!8005470 () Bool)

(assert (=> b!7341962 m!8005470))

(declare-fun m!8005472 () Bool)

(assert (=> b!7341963 m!8005472))

(declare-fun m!8005474 () Bool)

(assert (=> b!7341963 m!8005474))

(assert (=> b!7341963 m!8005386))

(declare-fun m!8005476 () Bool)

(assert (=> d!2278951 m!8005476))

(declare-fun m!8005478 () Bool)

(assert (=> d!2278951 m!8005478))

(assert (=> d!2278951 m!8005392))

(assert (=> b!7341774 d!2278951))

(assert (=> b!7341774 d!2278947))

(declare-fun call!670271 () (Set Context!16112))

(declare-fun bm!670264 () Bool)

(declare-fun c!1363750 () Bool)

(declare-fun call!670270 () List!71612)

(assert (=> bm!670264 (= call!670271 (derivationStepZipperDown!2942 (ite c!1363750 (regOne!38745 (regOne!38745 r1!2370)) (regOne!38744 (regOne!38745 r1!2370))) (ite c!1363750 lt!2610226 (Context!16113 call!670270)) c!10362))))

(declare-fun b!7341965 () Bool)

(declare-fun e!4396351 () (Set Context!16112))

(declare-fun call!670273 () (Set Context!16112))

(assert (=> b!7341965 (= e!4396351 (set.union call!670271 call!670273))))

(declare-fun b!7341966 () Bool)

(declare-fun e!4396349 () (Set Context!16112))

(declare-fun call!670272 () (Set Context!16112))

(assert (=> b!7341966 (= e!4396349 call!670272)))

(declare-fun b!7341967 () Bool)

(declare-fun e!4396347 () Bool)

(assert (=> b!7341967 (= e!4396347 (nullable!8211 (regOne!38744 (regOne!38745 r1!2370))))))

(declare-fun c!1363753 () Bool)

(declare-fun c!1363751 () Bool)

(declare-fun call!670269 () (Set Context!16112))

(declare-fun bm!670265 () Bool)

(declare-fun call!670274 () List!71612)

(assert (=> bm!670265 (= call!670269 (derivationStepZipperDown!2942 (ite c!1363750 (regTwo!38745 (regOne!38745 r1!2370)) (ite c!1363751 (regTwo!38744 (regOne!38745 r1!2370)) (ite c!1363753 (regOne!38744 (regOne!38745 r1!2370)) (reg!19445 (regOne!38745 r1!2370))))) (ite (or c!1363750 c!1363751) lt!2610226 (Context!16113 call!670274)) c!10362))))

(declare-fun bm!670266 () Bool)

(assert (=> bm!670266 (= call!670274 call!670270)))

(declare-fun d!2278953 () Bool)

(declare-fun c!1363749 () Bool)

(assert (=> d!2278953 (= c!1363749 (and (is-ElementMatch!19116 (regOne!38745 r1!2370)) (= (c!1363696 (regOne!38745 r1!2370)) c!10362)))))

(declare-fun e!4396348 () (Set Context!16112))

(assert (=> d!2278953 (= (derivationStepZipperDown!2942 (regOne!38745 r1!2370) lt!2610226 c!10362) e!4396348)))

(declare-fun bm!670267 () Bool)

(assert (=> bm!670267 (= call!670270 ($colon$colon!3118 (exprs!8556 lt!2610226) (ite (or c!1363751 c!1363753) (regTwo!38744 (regOne!38745 r1!2370)) (regOne!38745 r1!2370))))))

(declare-fun bm!670268 () Bool)

(assert (=> bm!670268 (= call!670273 call!670269)))

(declare-fun b!7341968 () Bool)

(declare-fun e!4396346 () (Set Context!16112))

(assert (=> b!7341968 (= e!4396346 (set.union call!670271 call!670269))))

(declare-fun b!7341969 () Bool)

(assert (=> b!7341969 (= c!1363751 e!4396347)))

(declare-fun res!2965936 () Bool)

(assert (=> b!7341969 (=> (not res!2965936) (not e!4396347))))

(assert (=> b!7341969 (= res!2965936 (is-Concat!27961 (regOne!38745 r1!2370)))))

(assert (=> b!7341969 (= e!4396346 e!4396351)))

(declare-fun b!7341970 () Bool)

(assert (=> b!7341970 (= e!4396348 (set.insert lt!2610226 (as set.empty (Set Context!16112))))))

(declare-fun b!7341971 () Bool)

(assert (=> b!7341971 (= e!4396351 e!4396349)))

(assert (=> b!7341971 (= c!1363753 (is-Concat!27961 (regOne!38745 r1!2370)))))

(declare-fun bm!670269 () Bool)

(assert (=> bm!670269 (= call!670272 call!670273)))

(declare-fun b!7341972 () Bool)

(declare-fun e!4396350 () (Set Context!16112))

(assert (=> b!7341972 (= e!4396350 (as set.empty (Set Context!16112)))))

(declare-fun b!7341973 () Bool)

(assert (=> b!7341973 (= e!4396350 call!670272)))

(declare-fun b!7341974 () Bool)

(assert (=> b!7341974 (= e!4396348 e!4396346)))

(assert (=> b!7341974 (= c!1363750 (is-Union!19116 (regOne!38745 r1!2370)))))

(declare-fun b!7341975 () Bool)

(declare-fun c!1363752 () Bool)

(assert (=> b!7341975 (= c!1363752 (is-Star!19116 (regOne!38745 r1!2370)))))

(assert (=> b!7341975 (= e!4396349 e!4396350)))

(assert (= (and d!2278953 c!1363749) b!7341970))

(assert (= (and d!2278953 (not c!1363749)) b!7341974))

(assert (= (and b!7341974 c!1363750) b!7341968))

(assert (= (and b!7341974 (not c!1363750)) b!7341969))

(assert (= (and b!7341969 res!2965936) b!7341967))

(assert (= (and b!7341969 c!1363751) b!7341965))

(assert (= (and b!7341969 (not c!1363751)) b!7341971))

(assert (= (and b!7341971 c!1363753) b!7341966))

(assert (= (and b!7341971 (not c!1363753)) b!7341975))

(assert (= (and b!7341975 c!1363752) b!7341973))

(assert (= (and b!7341975 (not c!1363752)) b!7341972))

(assert (= (or b!7341966 b!7341973) bm!670266))

(assert (= (or b!7341966 b!7341973) bm!670269))

(assert (= (or b!7341965 bm!670269) bm!670268))

(assert (= (or b!7341965 bm!670266) bm!670267))

(assert (= (or b!7341968 bm!670268) bm!670265))

(assert (= (or b!7341968 b!7341965) bm!670264))

(declare-fun m!8005480 () Bool)

(assert (=> bm!670264 m!8005480))

(assert (=> b!7341967 m!8005442))

(assert (=> b!7341970 m!8005374))

(declare-fun m!8005482 () Bool)

(assert (=> bm!670265 m!8005482))

(declare-fun m!8005484 () Bool)

(assert (=> bm!670267 m!8005484))

(assert (=> b!7341774 d!2278953))

(assert (=> b!7341774 d!2278923))

(declare-fun b!7341986 () Bool)

(declare-fun e!4396354 () Bool)

(assert (=> b!7341986 (= e!4396354 tp_is_empty!48477)))

(assert (=> b!7341777 (= tp!2084769 e!4396354)))

(declare-fun b!7341987 () Bool)

(declare-fun tp!2084806 () Bool)

(declare-fun tp!2084807 () Bool)

(assert (=> b!7341987 (= e!4396354 (and tp!2084806 tp!2084807))))

(declare-fun b!7341989 () Bool)

(declare-fun tp!2084810 () Bool)

(declare-fun tp!2084809 () Bool)

(assert (=> b!7341989 (= e!4396354 (and tp!2084810 tp!2084809))))

(declare-fun b!7341988 () Bool)

(declare-fun tp!2084808 () Bool)

(assert (=> b!7341988 (= e!4396354 tp!2084808)))

(assert (= (and b!7341777 (is-ElementMatch!19116 (regOne!38744 r1!2370))) b!7341986))

(assert (= (and b!7341777 (is-Concat!27961 (regOne!38744 r1!2370))) b!7341987))

(assert (= (and b!7341777 (is-Star!19116 (regOne!38744 r1!2370))) b!7341988))

(assert (= (and b!7341777 (is-Union!19116 (regOne!38744 r1!2370))) b!7341989))

(declare-fun b!7341990 () Bool)

(declare-fun e!4396355 () Bool)

(assert (=> b!7341990 (= e!4396355 tp_is_empty!48477)))

(assert (=> b!7341777 (= tp!2084765 e!4396355)))

(declare-fun b!7341991 () Bool)

(declare-fun tp!2084811 () Bool)

(declare-fun tp!2084812 () Bool)

(assert (=> b!7341991 (= e!4396355 (and tp!2084811 tp!2084812))))

(declare-fun b!7341993 () Bool)

(declare-fun tp!2084815 () Bool)

(declare-fun tp!2084814 () Bool)

(assert (=> b!7341993 (= e!4396355 (and tp!2084815 tp!2084814))))

(declare-fun b!7341992 () Bool)

(declare-fun tp!2084813 () Bool)

(assert (=> b!7341992 (= e!4396355 tp!2084813)))

(assert (= (and b!7341777 (is-ElementMatch!19116 (regTwo!38744 r1!2370))) b!7341990))

(assert (= (and b!7341777 (is-Concat!27961 (regTwo!38744 r1!2370))) b!7341991))

(assert (= (and b!7341777 (is-Star!19116 (regTwo!38744 r1!2370))) b!7341992))

(assert (= (and b!7341777 (is-Union!19116 (regTwo!38744 r1!2370))) b!7341993))

(declare-fun b!7341998 () Bool)

(declare-fun e!4396358 () Bool)

(declare-fun tp!2084820 () Bool)

(declare-fun tp!2084821 () Bool)

(assert (=> b!7341998 (= e!4396358 (and tp!2084820 tp!2084821))))

(assert (=> b!7341772 (= tp!2084767 e!4396358)))

(assert (= (and b!7341772 (is-Cons!71488 (exprs!8556 ct1!282))) b!7341998))

(declare-fun b!7341999 () Bool)

(declare-fun e!4396359 () Bool)

(assert (=> b!7341999 (= e!4396359 tp_is_empty!48477)))

(assert (=> b!7341769 (= tp!2084766 e!4396359)))

(declare-fun b!7342000 () Bool)

(declare-fun tp!2084822 () Bool)

(declare-fun tp!2084823 () Bool)

(assert (=> b!7342000 (= e!4396359 (and tp!2084822 tp!2084823))))

(declare-fun b!7342002 () Bool)

(declare-fun tp!2084826 () Bool)

(declare-fun tp!2084825 () Bool)

(assert (=> b!7342002 (= e!4396359 (and tp!2084826 tp!2084825))))

(declare-fun b!7342001 () Bool)

(declare-fun tp!2084824 () Bool)

(assert (=> b!7342001 (= e!4396359 tp!2084824)))

(assert (= (and b!7341769 (is-ElementMatch!19116 (reg!19445 r1!2370))) b!7341999))

(assert (= (and b!7341769 (is-Concat!27961 (reg!19445 r1!2370))) b!7342000))

(assert (= (and b!7341769 (is-Star!19116 (reg!19445 r1!2370))) b!7342001))

(assert (= (and b!7341769 (is-Union!19116 (reg!19445 r1!2370))) b!7342002))

(declare-fun b!7342003 () Bool)

(declare-fun e!4396360 () Bool)

(declare-fun tp!2084827 () Bool)

(declare-fun tp!2084828 () Bool)

(assert (=> b!7342003 (= e!4396360 (and tp!2084827 tp!2084828))))

(assert (=> b!7341764 (= tp!2084768 e!4396360)))

(assert (= (and b!7341764 (is-Cons!71488 (exprs!8556 cWitness!61))) b!7342003))

(declare-fun b!7342004 () Bool)

(declare-fun e!4396361 () Bool)

(assert (=> b!7342004 (= e!4396361 tp_is_empty!48477)))

(assert (=> b!7341775 (= tp!2084771 e!4396361)))

(declare-fun b!7342005 () Bool)

(declare-fun tp!2084829 () Bool)

(declare-fun tp!2084830 () Bool)

(assert (=> b!7342005 (= e!4396361 (and tp!2084829 tp!2084830))))

(declare-fun b!7342007 () Bool)

(declare-fun tp!2084833 () Bool)

(declare-fun tp!2084832 () Bool)

(assert (=> b!7342007 (= e!4396361 (and tp!2084833 tp!2084832))))

(declare-fun b!7342006 () Bool)

(declare-fun tp!2084831 () Bool)

(assert (=> b!7342006 (= e!4396361 tp!2084831)))

(assert (= (and b!7341775 (is-ElementMatch!19116 (regOne!38745 r1!2370))) b!7342004))

(assert (= (and b!7341775 (is-Concat!27961 (regOne!38745 r1!2370))) b!7342005))

(assert (= (and b!7341775 (is-Star!19116 (regOne!38745 r1!2370))) b!7342006))

(assert (= (and b!7341775 (is-Union!19116 (regOne!38745 r1!2370))) b!7342007))

(declare-fun b!7342008 () Bool)

(declare-fun e!4396362 () Bool)

(assert (=> b!7342008 (= e!4396362 tp_is_empty!48477)))

(assert (=> b!7341775 (= tp!2084764 e!4396362)))

(declare-fun b!7342009 () Bool)

(declare-fun tp!2084834 () Bool)

(declare-fun tp!2084835 () Bool)

(assert (=> b!7342009 (= e!4396362 (and tp!2084834 tp!2084835))))

(declare-fun b!7342011 () Bool)

(declare-fun tp!2084838 () Bool)

(declare-fun tp!2084837 () Bool)

(assert (=> b!7342011 (= e!4396362 (and tp!2084838 tp!2084837))))

(declare-fun b!7342010 () Bool)

(declare-fun tp!2084836 () Bool)

(assert (=> b!7342010 (= e!4396362 tp!2084836)))

(assert (= (and b!7341775 (is-ElementMatch!19116 (regTwo!38745 r1!2370))) b!7342008))

(assert (= (and b!7341775 (is-Concat!27961 (regTwo!38745 r1!2370))) b!7342009))

(assert (= (and b!7341775 (is-Star!19116 (regTwo!38745 r1!2370))) b!7342010))

(assert (= (and b!7341775 (is-Union!19116 (regTwo!38745 r1!2370))) b!7342011))

(declare-fun b!7342012 () Bool)

(declare-fun e!4396363 () Bool)

(declare-fun tp!2084839 () Bool)

(declare-fun tp!2084840 () Bool)

(assert (=> b!7342012 (= e!4396363 (and tp!2084839 tp!2084840))))

(assert (=> b!7341765 (= tp!2084770 e!4396363)))

(assert (= (and b!7341765 (is-Cons!71488 (exprs!8556 ct2!378))) b!7342012))

(declare-fun b_lambda!283897 () Bool)

(assert (= b_lambda!283895 (or b!7341771 b_lambda!283897)))

(declare-fun bs!1918509 () Bool)

(declare-fun d!2278955 () Bool)

(assert (= bs!1918509 (and d!2278955 b!7341771)))

(assert (=> bs!1918509 (= (dynLambda!29455 lambda!455692 (h!77936 (exprs!8556 ct1!282))) (validRegex!9712 (h!77936 (exprs!8556 ct1!282))))))

(declare-fun m!8005486 () Bool)

(assert (=> bs!1918509 m!8005486))

(assert (=> b!7341939 d!2278955))

(declare-fun b_lambda!283899 () Bool)

(assert (= b_lambda!283893 (or b!7341771 b_lambda!283899)))

(declare-fun bs!1918510 () Bool)

(declare-fun d!2278957 () Bool)

(assert (= bs!1918510 (and d!2278957 b!7341771)))

(assert (=> bs!1918510 (= (dynLambda!29455 lambda!455692 (h!77936 (exprs!8556 ct2!378))) (validRegex!9712 (h!77936 (exprs!8556 ct2!378))))))

(declare-fun m!8005488 () Bool)

(assert (=> bs!1918510 m!8005488))

(assert (=> b!7341875 d!2278957))

(push 1)

(assert (not b!7342003))

(assert (not b!7342012))

(assert (not b!7341992))

(assert (not b!7342010))

(assert (not b!7341989))

(assert (not b!7341866))

(assert (not d!2278937))

(assert (not b!7341876))

(assert (not b!7341987))

(assert (not bm!670246))

(assert (not b!7341993))

(assert (not bm!670239))

(assert (not bm!670247))

(assert (not bs!1918509))

(assert (not bm!670226))

(assert (not bm!670225))

(assert tp_is_empty!48477)

(assert (not b!7342000))

(assert (not b!7342009))

(assert (not b!7341940))

(assert (not bm!670264))

(assert (not b!7342005))

(assert (not b!7341988))

(assert (not b!7342001))

(assert (not b!7341917))

(assert (not bs!1918510))

(assert (not d!2278919))

(assert (not b!7342007))

(assert (not d!2278923))

(assert (not b!7341963))

(assert (not b!7341879))

(assert (not b_lambda!283899))

(assert (not b!7341967))

(assert (not b_lambda!283897))

(assert (not b!7341998))

(assert (not d!2278939))

(assert (not d!2278935))

(assert (not b!7341962))

(assert (not d!2278947))

(assert (not bm!670241))

(assert (not b!7341928))

(assert (not b!7341867))

(assert (not bm!670265))

(assert (not bm!670237))

(assert (not bm!670240))

(assert (not d!2278949))

(assert (not d!2278951))

(assert (not bm!670220))

(assert (not bm!670249))

(assert (not bm!670219))

(assert (not bm!670228))

(assert (not b!7342006))

(assert (not bm!670222))

(assert (not b!7342002))

(assert (not bm!670243))

(assert (not b!7341908))

(assert (not b!7341991))

(assert (not b!7341844))

(assert (not bm!670267))

(assert (not b!7342011))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

