; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718566 () Bool)

(assert start!718566)

(declare-datatypes ((C!38702 0))(
  ( (C!38703 (val!29711 Int)) )
))
(declare-datatypes ((Regex!19214 0))(
  ( (ElementMatch!19214 (c!1367282 C!38702)) (Concat!28059 (regOne!38940 Regex!19214) (regTwo!38940 Regex!19214)) (EmptyExpr!19214) (Star!19214 (reg!19543 Regex!19214)) (EmptyLang!19214) (Union!19214 (regOne!38941 Regex!19214) (regTwo!38941 Regex!19214)) )
))
(declare-fun r1!2370 () Regex!19214)

(declare-fun e!4406049 () Bool)

(declare-fun c!10362 () C!38702)

(declare-datatypes ((List!71710 0))(
  ( (Nil!71586) (Cons!71586 (h!78034 Regex!19214) (t!386153 List!71710)) )
))
(declare-datatypes ((Context!16308 0))(
  ( (Context!16309 (exprs!8654 List!71710)) )
))
(declare-fun lt!2613656 () (Set Context!16308))

(declare-fun b!7358966 () Bool)

(declare-fun ct1!282 () Context!16308)

(declare-fun derivationStepZipperDown!3040 (Regex!19214 Context!16308 C!38702) (Set Context!16308))

(declare-fun $colon$colon!3207 (List!71710 Regex!19214) List!71710)

(assert (=> b!7358966 (= e!4406049 (not (= lt!2613656 (set.union (derivationStepZipperDown!3040 (regOne!38940 r1!2370) (Context!16309 ($colon$colon!3207 (exprs!8654 ct1!282) (regTwo!38940 r1!2370))) c!10362) (derivationStepZipperDown!3040 (regTwo!38940 r1!2370) ct1!282 c!10362)))))))

(declare-fun b!7358967 () Bool)

(declare-fun e!4406051 () Bool)

(declare-fun tp!2090807 () Bool)

(assert (=> b!7358967 (= e!4406051 tp!2090807)))

(declare-fun b!7358968 () Bool)

(declare-fun e!4406048 () Bool)

(declare-fun tp_is_empty!48673 () Bool)

(assert (=> b!7358968 (= e!4406048 tp_is_empty!48673)))

(declare-fun b!7358969 () Bool)

(declare-fun e!4406047 () Bool)

(assert (=> b!7358969 (= e!4406047 e!4406049)))

(declare-fun res!2971121 () Bool)

(assert (=> b!7358969 (=> (not res!2971121) (not e!4406049))))

(assert (=> b!7358969 (= res!2971121 (and (or (not (is-ElementMatch!19214 r1!2370)) (not (= c!10362 (c!1367282 r1!2370)))) (not (is-Union!19214 r1!2370)) (is-Concat!28059 r1!2370)))))

(declare-fun ct2!378 () Context!16308)

(declare-fun lt!2613657 () (Set Context!16308))

(declare-fun ++!17032 (List!71710 List!71710) List!71710)

(assert (=> b!7358969 (= lt!2613657 (derivationStepZipperDown!3040 r1!2370 (Context!16309 (++!17032 (exprs!8654 ct1!282) (exprs!8654 ct2!378))) c!10362))))

(declare-fun lambda!457224 () Int)

(declare-datatypes ((Unit!165381 0))(
  ( (Unit!165382) )
))
(declare-fun lt!2613658 () Unit!165381)

(declare-fun lemmaConcatPreservesForall!1889 (List!71710 List!71710 Int) Unit!165381)

(assert (=> b!7358969 (= lt!2613658 (lemmaConcatPreservesForall!1889 (exprs!8654 ct1!282) (exprs!8654 ct2!378) lambda!457224))))

(declare-fun b!7358970 () Bool)

(declare-fun e!4406053 () Bool)

(assert (=> b!7358970 (= e!4406053 e!4406047)))

(declare-fun res!2971123 () Bool)

(assert (=> b!7358970 (=> (not res!2971123) (not e!4406047))))

(declare-fun cWitness!61 () Context!16308)

(assert (=> b!7358970 (= res!2971123 (set.member cWitness!61 lt!2613656))))

(assert (=> b!7358970 (= lt!2613656 (derivationStepZipperDown!3040 r1!2370 ct1!282 c!10362))))

(declare-fun b!7358971 () Bool)

(declare-fun tp!2090810 () Bool)

(declare-fun tp!2090811 () Bool)

(assert (=> b!7358971 (= e!4406048 (and tp!2090810 tp!2090811))))

(declare-fun res!2971124 () Bool)

(assert (=> start!718566 (=> (not res!2971124) (not e!4406053))))

(declare-fun validRegex!9810 (Regex!19214) Bool)

(assert (=> start!718566 (= res!2971124 (validRegex!9810 r1!2370))))

(assert (=> start!718566 e!4406053))

(assert (=> start!718566 tp_is_empty!48673))

(declare-fun e!4406052 () Bool)

(declare-fun inv!91376 (Context!16308) Bool)

(assert (=> start!718566 (and (inv!91376 cWitness!61) e!4406052)))

(assert (=> start!718566 (and (inv!91376 ct1!282) e!4406051)))

(assert (=> start!718566 e!4406048))

(declare-fun e!4406050 () Bool)

(assert (=> start!718566 (and (inv!91376 ct2!378) e!4406050)))

(declare-fun b!7358972 () Bool)

(declare-fun tp!2090813 () Bool)

(assert (=> b!7358972 (= e!4406048 tp!2090813)))

(declare-fun b!7358973 () Bool)

(declare-fun tp!2090808 () Bool)

(assert (=> b!7358973 (= e!4406052 tp!2090808)))

(declare-fun b!7358974 () Bool)

(declare-fun tp!2090806 () Bool)

(declare-fun tp!2090812 () Bool)

(assert (=> b!7358974 (= e!4406048 (and tp!2090806 tp!2090812))))

(declare-fun b!7358975 () Bool)

(declare-fun res!2971122 () Bool)

(assert (=> b!7358975 (=> (not res!2971122) (not e!4406049))))

(assert (=> b!7358975 (= res!2971122 (validRegex!9810 (regTwo!38940 r1!2370)))))

(declare-fun b!7358976 () Bool)

(declare-fun tp!2090809 () Bool)

(assert (=> b!7358976 (= e!4406050 tp!2090809)))

(declare-fun b!7358977 () Bool)

(declare-fun res!2971125 () Bool)

(assert (=> b!7358977 (=> (not res!2971125) (not e!4406049))))

(declare-fun nullable!8301 (Regex!19214) Bool)

(assert (=> b!7358977 (= res!2971125 (nullable!8301 (regOne!38940 r1!2370)))))

(assert (= (and start!718566 res!2971124) b!7358970))

(assert (= (and b!7358970 res!2971123) b!7358969))

(assert (= (and b!7358969 res!2971121) b!7358977))

(assert (= (and b!7358977 res!2971125) b!7358975))

(assert (= (and b!7358975 res!2971122) b!7358966))

(assert (= start!718566 b!7358973))

(assert (= start!718566 b!7358967))

(assert (= (and start!718566 (is-ElementMatch!19214 r1!2370)) b!7358968))

(assert (= (and start!718566 (is-Concat!28059 r1!2370)) b!7358974))

(assert (= (and start!718566 (is-Star!19214 r1!2370)) b!7358972))

(assert (= (and start!718566 (is-Union!19214 r1!2370)) b!7358971))

(assert (= start!718566 b!7358976))

(declare-fun m!8017574 () Bool)

(assert (=> b!7358970 m!8017574))

(declare-fun m!8017576 () Bool)

(assert (=> b!7358970 m!8017576))

(declare-fun m!8017578 () Bool)

(assert (=> b!7358966 m!8017578))

(declare-fun m!8017580 () Bool)

(assert (=> b!7358966 m!8017580))

(declare-fun m!8017582 () Bool)

(assert (=> b!7358966 m!8017582))

(declare-fun m!8017584 () Bool)

(assert (=> b!7358977 m!8017584))

(declare-fun m!8017586 () Bool)

(assert (=> b!7358969 m!8017586))

(declare-fun m!8017588 () Bool)

(assert (=> b!7358969 m!8017588))

(declare-fun m!8017590 () Bool)

(assert (=> b!7358969 m!8017590))

(declare-fun m!8017592 () Bool)

(assert (=> start!718566 m!8017592))

(declare-fun m!8017594 () Bool)

(assert (=> start!718566 m!8017594))

(declare-fun m!8017596 () Bool)

(assert (=> start!718566 m!8017596))

(declare-fun m!8017598 () Bool)

(assert (=> start!718566 m!8017598))

(declare-fun m!8017600 () Bool)

(assert (=> b!7358975 m!8017600))

(push 1)

(assert (not b!7358976))

(assert (not b!7358973))

(assert (not b!7358967))

(assert tp_is_empty!48673)

(assert (not b!7358977))

(assert (not start!718566))

(assert (not b!7358975))

(assert (not b!7358970))

(assert (not b!7358966))

(assert (not b!7358972))

(assert (not b!7358974))

(assert (not b!7358969))

(assert (not b!7358971))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7359058 () Bool)

(declare-fun e!4406103 () (Set Context!16308))

(declare-fun call!674118 () (Set Context!16308))

(assert (=> b!7359058 (= e!4406103 call!674118)))

(declare-fun b!7359059 () Bool)

(declare-fun e!4406104 () (Set Context!16308))

(assert (=> b!7359059 (= e!4406104 (set.insert (Context!16309 (++!17032 (exprs!8654 ct1!282) (exprs!8654 ct2!378))) (as set.empty (Set Context!16308))))))

(declare-fun b!7359060 () Bool)

(declare-fun c!1367306 () Bool)

(declare-fun e!4406100 () Bool)

(assert (=> b!7359060 (= c!1367306 e!4406100)))

(declare-fun res!2971145 () Bool)

(assert (=> b!7359060 (=> (not res!2971145) (not e!4406100))))

(assert (=> b!7359060 (= res!2971145 (is-Concat!28059 r1!2370))))

(declare-fun e!4406099 () (Set Context!16308))

(declare-fun e!4406102 () (Set Context!16308))

(assert (=> b!7359060 (= e!4406099 e!4406102)))

(declare-fun call!674114 () List!71710)

(declare-fun bm!674109 () Bool)

(declare-fun c!1367308 () Bool)

(declare-fun call!674115 () (Set Context!16308))

(declare-fun c!1367305 () Bool)

(assert (=> bm!674109 (= call!674115 (derivationStepZipperDown!3040 (ite c!1367305 (regTwo!38941 r1!2370) (ite c!1367306 (regTwo!38940 r1!2370) (ite c!1367308 (regOne!38940 r1!2370) (reg!19543 r1!2370)))) (ite (or c!1367305 c!1367306) (Context!16309 (++!17032 (exprs!8654 ct1!282) (exprs!8654 ct2!378))) (Context!16309 call!674114)) c!10362))))

(declare-fun b!7359061 () Bool)

(declare-fun call!674116 () (Set Context!16308))

(declare-fun call!674119 () (Set Context!16308))

(assert (=> b!7359061 (= e!4406102 (set.union call!674116 call!674119))))

(declare-fun call!674117 () List!71710)

(declare-fun bm!674110 () Bool)

(assert (=> bm!674110 (= call!674116 (derivationStepZipperDown!3040 (ite c!1367305 (regOne!38941 r1!2370) (regOne!38940 r1!2370)) (ite c!1367305 (Context!16309 (++!17032 (exprs!8654 ct1!282) (exprs!8654 ct2!378))) (Context!16309 call!674117)) c!10362))))

(declare-fun b!7359062 () Bool)

(assert (=> b!7359062 (= e!4406102 e!4406103)))

(assert (=> b!7359062 (= c!1367308 (is-Concat!28059 r1!2370))))

(declare-fun b!7359063 () Bool)

(assert (=> b!7359063 (= e!4406099 (set.union call!674116 call!674115))))

(declare-fun b!7359064 () Bool)

(assert (=> b!7359064 (= e!4406104 e!4406099)))

(assert (=> b!7359064 (= c!1367305 (is-Union!19214 r1!2370))))

(declare-fun b!7359065 () Bool)

(assert (=> b!7359065 (= e!4406100 (nullable!8301 (regOne!38940 r1!2370)))))

(declare-fun d!2281900 () Bool)

(declare-fun c!1367307 () Bool)

(assert (=> d!2281900 (= c!1367307 (and (is-ElementMatch!19214 r1!2370) (= (c!1367282 r1!2370) c!10362)))))

(assert (=> d!2281900 (= (derivationStepZipperDown!3040 r1!2370 (Context!16309 (++!17032 (exprs!8654 ct1!282) (exprs!8654 ct2!378))) c!10362) e!4406104)))

(declare-fun b!7359066 () Bool)

(declare-fun c!1367304 () Bool)

(assert (=> b!7359066 (= c!1367304 (is-Star!19214 r1!2370))))

(declare-fun e!4406101 () (Set Context!16308))

(assert (=> b!7359066 (= e!4406103 e!4406101)))

(declare-fun bm!674111 () Bool)

(assert (=> bm!674111 (= call!674118 call!674119)))

(declare-fun bm!674112 () Bool)

(assert (=> bm!674112 (= call!674117 ($colon$colon!3207 (exprs!8654 (Context!16309 (++!17032 (exprs!8654 ct1!282) (exprs!8654 ct2!378)))) (ite (or c!1367306 c!1367308) (regTwo!38940 r1!2370) r1!2370)))))

(declare-fun bm!674113 () Bool)

(assert (=> bm!674113 (= call!674119 call!674115)))

(declare-fun b!7359067 () Bool)

(assert (=> b!7359067 (= e!4406101 call!674118)))

(declare-fun b!7359068 () Bool)

(assert (=> b!7359068 (= e!4406101 (as set.empty (Set Context!16308)))))

(declare-fun bm!674114 () Bool)

(assert (=> bm!674114 (= call!674114 call!674117)))

(assert (= (and d!2281900 c!1367307) b!7359059))

(assert (= (and d!2281900 (not c!1367307)) b!7359064))

(assert (= (and b!7359064 c!1367305) b!7359063))

(assert (= (and b!7359064 (not c!1367305)) b!7359060))

(assert (= (and b!7359060 res!2971145) b!7359065))

(assert (= (and b!7359060 c!1367306) b!7359061))

(assert (= (and b!7359060 (not c!1367306)) b!7359062))

(assert (= (and b!7359062 c!1367308) b!7359058))

(assert (= (and b!7359062 (not c!1367308)) b!7359066))

(assert (= (and b!7359066 c!1367304) b!7359067))

(assert (= (and b!7359066 (not c!1367304)) b!7359068))

(assert (= (or b!7359058 b!7359067) bm!674114))

(assert (= (or b!7359058 b!7359067) bm!674111))

(assert (= (or b!7359061 bm!674111) bm!674113))

(assert (= (or b!7359061 bm!674114) bm!674112))

(assert (= (or b!7359063 bm!674113) bm!674109))

(assert (= (or b!7359063 b!7359061) bm!674110))

(declare-fun m!8017630 () Bool)

(assert (=> bm!674110 m!8017630))

(declare-fun m!8017632 () Bool)

(assert (=> bm!674109 m!8017632))

(declare-fun m!8017634 () Bool)

(assert (=> b!7359059 m!8017634))

(declare-fun m!8017636 () Bool)

(assert (=> bm!674112 m!8017636))

(assert (=> b!7359065 m!8017584))

(assert (=> b!7358969 d!2281900))

(declare-fun d!2281902 () Bool)

(declare-fun e!4406110 () Bool)

(assert (=> d!2281902 e!4406110))

(declare-fun res!2971150 () Bool)

(assert (=> d!2281902 (=> (not res!2971150) (not e!4406110))))

(declare-fun lt!2613670 () List!71710)

(declare-fun content!15111 (List!71710) (Set Regex!19214))

(assert (=> d!2281902 (= res!2971150 (= (content!15111 lt!2613670) (set.union (content!15111 (exprs!8654 ct1!282)) (content!15111 (exprs!8654 ct2!378)))))))

(declare-fun e!4406109 () List!71710)

(assert (=> d!2281902 (= lt!2613670 e!4406109)))

(declare-fun c!1367311 () Bool)

(assert (=> d!2281902 (= c!1367311 (is-Nil!71586 (exprs!8654 ct1!282)))))

(assert (=> d!2281902 (= (++!17032 (exprs!8654 ct1!282) (exprs!8654 ct2!378)) lt!2613670)))

(declare-fun b!7359078 () Bool)

(assert (=> b!7359078 (= e!4406109 (Cons!71586 (h!78034 (exprs!8654 ct1!282)) (++!17032 (t!386153 (exprs!8654 ct1!282)) (exprs!8654 ct2!378))))))

(declare-fun b!7359079 () Bool)

(declare-fun res!2971151 () Bool)

(assert (=> b!7359079 (=> (not res!2971151) (not e!4406110))))

(declare-fun size!42089 (List!71710) Int)

(assert (=> b!7359079 (= res!2971151 (= (size!42089 lt!2613670) (+ (size!42089 (exprs!8654 ct1!282)) (size!42089 (exprs!8654 ct2!378)))))))

(declare-fun b!7359077 () Bool)

(assert (=> b!7359077 (= e!4406109 (exprs!8654 ct2!378))))

(declare-fun b!7359080 () Bool)

(assert (=> b!7359080 (= e!4406110 (or (not (= (exprs!8654 ct2!378) Nil!71586)) (= lt!2613670 (exprs!8654 ct1!282))))))

(assert (= (and d!2281902 c!1367311) b!7359077))

(assert (= (and d!2281902 (not c!1367311)) b!7359078))

(assert (= (and d!2281902 res!2971150) b!7359079))

(assert (= (and b!7359079 res!2971151) b!7359080))

(declare-fun m!8017638 () Bool)

(assert (=> d!2281902 m!8017638))

(declare-fun m!8017640 () Bool)

(assert (=> d!2281902 m!8017640))

(declare-fun m!8017642 () Bool)

(assert (=> d!2281902 m!8017642))

(declare-fun m!8017644 () Bool)

(assert (=> b!7359078 m!8017644))

(declare-fun m!8017646 () Bool)

(assert (=> b!7359079 m!8017646))

(declare-fun m!8017648 () Bool)

(assert (=> b!7359079 m!8017648))

(declare-fun m!8017650 () Bool)

(assert (=> b!7359079 m!8017650))

(assert (=> b!7358969 d!2281902))

(declare-fun d!2281904 () Bool)

(declare-fun forall!18030 (List!71710 Int) Bool)

(assert (=> d!2281904 (forall!18030 (++!17032 (exprs!8654 ct1!282) (exprs!8654 ct2!378)) lambda!457224)))

(declare-fun lt!2613673 () Unit!165381)

(declare-fun choose!57241 (List!71710 List!71710 Int) Unit!165381)

(assert (=> d!2281904 (= lt!2613673 (choose!57241 (exprs!8654 ct1!282) (exprs!8654 ct2!378) lambda!457224))))

(assert (=> d!2281904 (forall!18030 (exprs!8654 ct1!282) lambda!457224)))

(assert (=> d!2281904 (= (lemmaConcatPreservesForall!1889 (exprs!8654 ct1!282) (exprs!8654 ct2!378) lambda!457224) lt!2613673)))

(declare-fun bs!1919990 () Bool)

(assert (= bs!1919990 d!2281904))

(assert (=> bs!1919990 m!8017586))

(assert (=> bs!1919990 m!8017586))

(declare-fun m!8017652 () Bool)

(assert (=> bs!1919990 m!8017652))

(declare-fun m!8017654 () Bool)

(assert (=> bs!1919990 m!8017654))

(declare-fun m!8017656 () Bool)

(assert (=> bs!1919990 m!8017656))

(assert (=> b!7358969 d!2281904))

(declare-fun b!7359110 () Bool)

(declare-fun e!4406132 () Bool)

(declare-fun e!4406133 () Bool)

(assert (=> b!7359110 (= e!4406132 e!4406133)))

(declare-fun res!2971165 () Bool)

(assert (=> b!7359110 (= res!2971165 (not (nullable!8301 (reg!19543 r1!2370))))))

(assert (=> b!7359110 (=> (not res!2971165) (not e!4406133))))

(declare-fun b!7359111 () Bool)

(declare-fun call!674136 () Bool)

(assert (=> b!7359111 (= e!4406133 call!674136)))

(declare-fun b!7359112 () Bool)

(declare-fun e!4406136 () Bool)

(declare-fun call!674138 () Bool)

(assert (=> b!7359112 (= e!4406136 call!674138)))

(declare-fun b!7359113 () Bool)

(declare-fun res!2971167 () Bool)

(assert (=> b!7359113 (=> (not res!2971167) (not e!4406136))))

(declare-fun call!674137 () Bool)

(assert (=> b!7359113 (= res!2971167 call!674137)))

(declare-fun e!4406131 () Bool)

(assert (=> b!7359113 (= e!4406131 e!4406136)))

(declare-fun b!7359114 () Bool)

(declare-fun e!4406135 () Bool)

(assert (=> b!7359114 (= e!4406135 call!674137)))

(declare-fun bm!674132 () Bool)

(declare-fun c!1367321 () Bool)

(declare-fun c!1367322 () Bool)

(assert (=> bm!674132 (= call!674136 (validRegex!9810 (ite c!1367322 (reg!19543 r1!2370) (ite c!1367321 (regOne!38941 r1!2370) (regTwo!38940 r1!2370)))))))

(declare-fun bm!674133 () Bool)

(assert (=> bm!674133 (= call!674138 (validRegex!9810 (ite c!1367321 (regTwo!38941 r1!2370) (regOne!38940 r1!2370))))))

(declare-fun d!2281906 () Bool)

(declare-fun res!2971166 () Bool)

(declare-fun e!4406134 () Bool)

(assert (=> d!2281906 (=> res!2971166 e!4406134)))

(assert (=> d!2281906 (= res!2971166 (is-ElementMatch!19214 r1!2370))))

(assert (=> d!2281906 (= (validRegex!9810 r1!2370) e!4406134)))

(declare-fun bm!674131 () Bool)

(assert (=> bm!674131 (= call!674137 call!674136)))

(declare-fun b!7359115 () Bool)

(assert (=> b!7359115 (= e!4406132 e!4406131)))

(assert (=> b!7359115 (= c!1367321 (is-Union!19214 r1!2370))))

(declare-fun b!7359116 () Bool)

(assert (=> b!7359116 (= e!4406134 e!4406132)))

(assert (=> b!7359116 (= c!1367322 (is-Star!19214 r1!2370))))

(declare-fun b!7359117 () Bool)

(declare-fun res!2971163 () Bool)

(declare-fun e!4406137 () Bool)

(assert (=> b!7359117 (=> res!2971163 e!4406137)))

(assert (=> b!7359117 (= res!2971163 (not (is-Concat!28059 r1!2370)))))

(assert (=> b!7359117 (= e!4406131 e!4406137)))

(declare-fun b!7359118 () Bool)

(assert (=> b!7359118 (= e!4406137 e!4406135)))

(declare-fun res!2971164 () Bool)

(assert (=> b!7359118 (=> (not res!2971164) (not e!4406135))))

(assert (=> b!7359118 (= res!2971164 call!674138)))

(assert (= (and d!2281906 (not res!2971166)) b!7359116))

(assert (= (and b!7359116 c!1367322) b!7359110))

(assert (= (and b!7359116 (not c!1367322)) b!7359115))

(assert (= (and b!7359110 res!2971165) b!7359111))

(assert (= (and b!7359115 c!1367321) b!7359113))

(assert (= (and b!7359115 (not c!1367321)) b!7359117))

(assert (= (and b!7359113 res!2971167) b!7359112))

(assert (= (and b!7359117 (not res!2971163)) b!7359118))

(assert (= (and b!7359118 res!2971164) b!7359114))

(assert (= (or b!7359113 b!7359114) bm!674131))

(assert (= (or b!7359112 b!7359118) bm!674133))

(assert (= (or b!7359111 bm!674131) bm!674132))

(declare-fun m!8017666 () Bool)

(assert (=> b!7359110 m!8017666))

(declare-fun m!8017668 () Bool)

(assert (=> bm!674132 m!8017668))

(declare-fun m!8017670 () Bool)

(assert (=> bm!674133 m!8017670))

(assert (=> start!718566 d!2281906))

(declare-fun bs!1919991 () Bool)

(declare-fun d!2281910 () Bool)

(assert (= bs!1919991 (and d!2281910 b!7358969)))

(declare-fun lambda!457230 () Int)

(assert (=> bs!1919991 (= lambda!457230 lambda!457224)))

(assert (=> d!2281910 (= (inv!91376 cWitness!61) (forall!18030 (exprs!8654 cWitness!61) lambda!457230))))

(declare-fun bs!1919992 () Bool)

(assert (= bs!1919992 d!2281910))

(declare-fun m!8017672 () Bool)

(assert (=> bs!1919992 m!8017672))

(assert (=> start!718566 d!2281910))

(declare-fun bs!1919993 () Bool)

(declare-fun d!2281912 () Bool)

(assert (= bs!1919993 (and d!2281912 b!7358969)))

(declare-fun lambda!457231 () Int)

(assert (=> bs!1919993 (= lambda!457231 lambda!457224)))

(declare-fun bs!1919994 () Bool)

(assert (= bs!1919994 (and d!2281912 d!2281910)))

(assert (=> bs!1919994 (= lambda!457231 lambda!457230)))

(assert (=> d!2281912 (= (inv!91376 ct1!282) (forall!18030 (exprs!8654 ct1!282) lambda!457231))))

(declare-fun bs!1919995 () Bool)

(assert (= bs!1919995 d!2281912))

(declare-fun m!8017674 () Bool)

(assert (=> bs!1919995 m!8017674))

(assert (=> start!718566 d!2281912))

(declare-fun bs!1919996 () Bool)

(declare-fun d!2281914 () Bool)

(assert (= bs!1919996 (and d!2281914 b!7358969)))

(declare-fun lambda!457232 () Int)

(assert (=> bs!1919996 (= lambda!457232 lambda!457224)))

(declare-fun bs!1919997 () Bool)

(assert (= bs!1919997 (and d!2281914 d!2281910)))

(assert (=> bs!1919997 (= lambda!457232 lambda!457230)))

(declare-fun bs!1919998 () Bool)

(assert (= bs!1919998 (and d!2281914 d!2281912)))

(assert (=> bs!1919998 (= lambda!457232 lambda!457231)))

(assert (=> d!2281914 (= (inv!91376 ct2!378) (forall!18030 (exprs!8654 ct2!378) lambda!457232))))

(declare-fun bs!1919999 () Bool)

(assert (= bs!1919999 d!2281914))

(declare-fun m!8017676 () Bool)

(assert (=> bs!1919999 m!8017676))

(assert (=> start!718566 d!2281914))

(declare-fun b!7359137 () Bool)

(declare-fun e!4406153 () Bool)

(declare-fun e!4406154 () Bool)

(assert (=> b!7359137 (= e!4406153 e!4406154)))

(declare-fun res!2971180 () Bool)

(assert (=> b!7359137 (= res!2971180 (not (nullable!8301 (reg!19543 (regTwo!38940 r1!2370)))))))

(assert (=> b!7359137 (=> (not res!2971180) (not e!4406154))))

(declare-fun b!7359138 () Bool)

(declare-fun call!674141 () Bool)

(assert (=> b!7359138 (= e!4406154 call!674141)))

(declare-fun b!7359139 () Bool)

(declare-fun e!4406157 () Bool)

(declare-fun call!674143 () Bool)

(assert (=> b!7359139 (= e!4406157 call!674143)))

(declare-fun b!7359140 () Bool)

(declare-fun res!2971182 () Bool)

(assert (=> b!7359140 (=> (not res!2971182) (not e!4406157))))

(declare-fun call!674142 () Bool)

(assert (=> b!7359140 (= res!2971182 call!674142)))

(declare-fun e!4406152 () Bool)

(assert (=> b!7359140 (= e!4406152 e!4406157)))

(declare-fun b!7359141 () Bool)

(declare-fun e!4406156 () Bool)

(assert (=> b!7359141 (= e!4406156 call!674142)))

(declare-fun c!1367327 () Bool)

(declare-fun c!1367328 () Bool)

(declare-fun bm!674137 () Bool)

(assert (=> bm!674137 (= call!674141 (validRegex!9810 (ite c!1367328 (reg!19543 (regTwo!38940 r1!2370)) (ite c!1367327 (regOne!38941 (regTwo!38940 r1!2370)) (regTwo!38940 (regTwo!38940 r1!2370))))))))

(declare-fun bm!674138 () Bool)

(assert (=> bm!674138 (= call!674143 (validRegex!9810 (ite c!1367327 (regTwo!38941 (regTwo!38940 r1!2370)) (regOne!38940 (regTwo!38940 r1!2370)))))))

(declare-fun d!2281916 () Bool)

(declare-fun res!2971181 () Bool)

(declare-fun e!4406155 () Bool)

(assert (=> d!2281916 (=> res!2971181 e!4406155)))

(assert (=> d!2281916 (= res!2971181 (is-ElementMatch!19214 (regTwo!38940 r1!2370)))))

(assert (=> d!2281916 (= (validRegex!9810 (regTwo!38940 r1!2370)) e!4406155)))

(declare-fun bm!674136 () Bool)

(assert (=> bm!674136 (= call!674142 call!674141)))

(declare-fun b!7359142 () Bool)

(assert (=> b!7359142 (= e!4406153 e!4406152)))

(assert (=> b!7359142 (= c!1367327 (is-Union!19214 (regTwo!38940 r1!2370)))))

(declare-fun b!7359143 () Bool)

(assert (=> b!7359143 (= e!4406155 e!4406153)))

(assert (=> b!7359143 (= c!1367328 (is-Star!19214 (regTwo!38940 r1!2370)))))

(declare-fun b!7359144 () Bool)

(declare-fun res!2971178 () Bool)

(declare-fun e!4406158 () Bool)

(assert (=> b!7359144 (=> res!2971178 e!4406158)))

(assert (=> b!7359144 (= res!2971178 (not (is-Concat!28059 (regTwo!38940 r1!2370))))))

(assert (=> b!7359144 (= e!4406152 e!4406158)))

(declare-fun b!7359145 () Bool)

(assert (=> b!7359145 (= e!4406158 e!4406156)))

(declare-fun res!2971179 () Bool)

(assert (=> b!7359145 (=> (not res!2971179) (not e!4406156))))

(assert (=> b!7359145 (= res!2971179 call!674143)))

(assert (= (and d!2281916 (not res!2971181)) b!7359143))

(assert (= (and b!7359143 c!1367328) b!7359137))

(assert (= (and b!7359143 (not c!1367328)) b!7359142))

(assert (= (and b!7359137 res!2971180) b!7359138))

(assert (= (and b!7359142 c!1367327) b!7359140))

(assert (= (and b!7359142 (not c!1367327)) b!7359144))

(assert (= (and b!7359140 res!2971182) b!7359139))

(assert (= (and b!7359144 (not res!2971178)) b!7359145))

(assert (= (and b!7359145 res!2971179) b!7359141))

(assert (= (or b!7359140 b!7359141) bm!674136))

(assert (= (or b!7359139 b!7359145) bm!674138))

(assert (= (or b!7359138 bm!674136) bm!674137))

(declare-fun m!8017678 () Bool)

(assert (=> b!7359137 m!8017678))

(declare-fun m!8017680 () Bool)

(assert (=> bm!674137 m!8017680))

(declare-fun m!8017682 () Bool)

(assert (=> bm!674138 m!8017682))

(assert (=> b!7358975 d!2281916))

(declare-fun b!7359146 () Bool)

(declare-fun e!4406163 () (Set Context!16308))

(declare-fun call!674150 () (Set Context!16308))

(assert (=> b!7359146 (= e!4406163 call!674150)))

(declare-fun b!7359147 () Bool)

(declare-fun e!4406164 () (Set Context!16308))

(assert (=> b!7359147 (= e!4406164 (set.insert ct1!282 (as set.empty (Set Context!16308))))))

(declare-fun b!7359148 () Bool)

(declare-fun c!1367331 () Bool)

(declare-fun e!4406160 () Bool)

(assert (=> b!7359148 (= c!1367331 e!4406160)))

(declare-fun res!2971183 () Bool)

(assert (=> b!7359148 (=> (not res!2971183) (not e!4406160))))

(assert (=> b!7359148 (= res!2971183 (is-Concat!28059 r1!2370))))

(declare-fun e!4406159 () (Set Context!16308))

(declare-fun e!4406162 () (Set Context!16308))

(assert (=> b!7359148 (= e!4406159 e!4406162)))

(declare-fun bm!674141 () Bool)

(declare-fun call!674147 () (Set Context!16308))

(declare-fun call!674146 () List!71710)

(declare-fun c!1367333 () Bool)

(declare-fun c!1367330 () Bool)

(assert (=> bm!674141 (= call!674147 (derivationStepZipperDown!3040 (ite c!1367330 (regTwo!38941 r1!2370) (ite c!1367331 (regTwo!38940 r1!2370) (ite c!1367333 (regOne!38940 r1!2370) (reg!19543 r1!2370)))) (ite (or c!1367330 c!1367331) ct1!282 (Context!16309 call!674146)) c!10362))))

(declare-fun b!7359149 () Bool)

(declare-fun call!674148 () (Set Context!16308))

(declare-fun call!674151 () (Set Context!16308))

(assert (=> b!7359149 (= e!4406162 (set.union call!674148 call!674151))))

(declare-fun call!674149 () List!71710)

(declare-fun bm!674142 () Bool)

(assert (=> bm!674142 (= call!674148 (derivationStepZipperDown!3040 (ite c!1367330 (regOne!38941 r1!2370) (regOne!38940 r1!2370)) (ite c!1367330 ct1!282 (Context!16309 call!674149)) c!10362))))

(declare-fun b!7359150 () Bool)

(assert (=> b!7359150 (= e!4406162 e!4406163)))

(assert (=> b!7359150 (= c!1367333 (is-Concat!28059 r1!2370))))

(declare-fun b!7359151 () Bool)

(assert (=> b!7359151 (= e!4406159 (set.union call!674148 call!674147))))

(declare-fun b!7359152 () Bool)

(assert (=> b!7359152 (= e!4406164 e!4406159)))

(assert (=> b!7359152 (= c!1367330 (is-Union!19214 r1!2370))))

(declare-fun b!7359153 () Bool)

(assert (=> b!7359153 (= e!4406160 (nullable!8301 (regOne!38940 r1!2370)))))

(declare-fun d!2281918 () Bool)

(declare-fun c!1367332 () Bool)

(assert (=> d!2281918 (= c!1367332 (and (is-ElementMatch!19214 r1!2370) (= (c!1367282 r1!2370) c!10362)))))

(assert (=> d!2281918 (= (derivationStepZipperDown!3040 r1!2370 ct1!282 c!10362) e!4406164)))

(declare-fun b!7359154 () Bool)

(declare-fun c!1367329 () Bool)

(assert (=> b!7359154 (= c!1367329 (is-Star!19214 r1!2370))))

(declare-fun e!4406161 () (Set Context!16308))

(assert (=> b!7359154 (= e!4406163 e!4406161)))

(declare-fun bm!674143 () Bool)

(assert (=> bm!674143 (= call!674150 call!674151)))

(declare-fun bm!674144 () Bool)

(assert (=> bm!674144 (= call!674149 ($colon$colon!3207 (exprs!8654 ct1!282) (ite (or c!1367331 c!1367333) (regTwo!38940 r1!2370) r1!2370)))))

(declare-fun bm!674145 () Bool)

(assert (=> bm!674145 (= call!674151 call!674147)))

(declare-fun b!7359155 () Bool)

(assert (=> b!7359155 (= e!4406161 call!674150)))

(declare-fun b!7359156 () Bool)

(assert (=> b!7359156 (= e!4406161 (as set.empty (Set Context!16308)))))

(declare-fun bm!674146 () Bool)

(assert (=> bm!674146 (= call!674146 call!674149)))

(assert (= (and d!2281918 c!1367332) b!7359147))

(assert (= (and d!2281918 (not c!1367332)) b!7359152))

(assert (= (and b!7359152 c!1367330) b!7359151))

(assert (= (and b!7359152 (not c!1367330)) b!7359148))

(assert (= (and b!7359148 res!2971183) b!7359153))

(assert (= (and b!7359148 c!1367331) b!7359149))

(assert (= (and b!7359148 (not c!1367331)) b!7359150))

(assert (= (and b!7359150 c!1367333) b!7359146))

(assert (= (and b!7359150 (not c!1367333)) b!7359154))

(assert (= (and b!7359154 c!1367329) b!7359155))

(assert (= (and b!7359154 (not c!1367329)) b!7359156))

(assert (= (or b!7359146 b!7359155) bm!674146))

(assert (= (or b!7359146 b!7359155) bm!674143))

(assert (= (or b!7359149 bm!674143) bm!674145))

(assert (= (or b!7359149 bm!674146) bm!674144))

(assert (= (or b!7359151 bm!674145) bm!674141))

(assert (= (or b!7359151 b!7359149) bm!674142))

(declare-fun m!8017684 () Bool)

(assert (=> bm!674142 m!8017684))

(declare-fun m!8017686 () Bool)

(assert (=> bm!674141 m!8017686))

(declare-fun m!8017688 () Bool)

(assert (=> b!7359147 m!8017688))

(declare-fun m!8017690 () Bool)

(assert (=> bm!674144 m!8017690))

(assert (=> b!7359153 m!8017584))

(assert (=> b!7358970 d!2281918))

(declare-fun d!2281920 () Bool)

(declare-fun nullableFct!3321 (Regex!19214) Bool)

(assert (=> d!2281920 (= (nullable!8301 (regOne!38940 r1!2370)) (nullableFct!3321 (regOne!38940 r1!2370)))))

(declare-fun bs!1920000 () Bool)

(assert (= bs!1920000 d!2281920))

(declare-fun m!8017692 () Bool)

(assert (=> bs!1920000 m!8017692))

(assert (=> b!7358977 d!2281920))

(declare-fun b!7359157 () Bool)

(declare-fun e!4406169 () (Set Context!16308))

(declare-fun call!674158 () (Set Context!16308))

(assert (=> b!7359157 (= e!4406169 call!674158)))

(declare-fun b!7359158 () Bool)

(declare-fun e!4406170 () (Set Context!16308))

(assert (=> b!7359158 (= e!4406170 (set.insert (Context!16309 ($colon$colon!3207 (exprs!8654 ct1!282) (regTwo!38940 r1!2370))) (as set.empty (Set Context!16308))))))

(declare-fun b!7359159 () Bool)

(declare-fun c!1367336 () Bool)

(declare-fun e!4406166 () Bool)

(assert (=> b!7359159 (= c!1367336 e!4406166)))

(declare-fun res!2971184 () Bool)

(assert (=> b!7359159 (=> (not res!2971184) (not e!4406166))))

(assert (=> b!7359159 (= res!2971184 (is-Concat!28059 (regOne!38940 r1!2370)))))

(declare-fun e!4406165 () (Set Context!16308))

(declare-fun e!4406168 () (Set Context!16308))

(assert (=> b!7359159 (= e!4406165 e!4406168)))

(declare-fun c!1367338 () Bool)

(declare-fun call!674154 () List!71710)

(declare-fun c!1367335 () Bool)

(declare-fun bm!674149 () Bool)

(declare-fun call!674155 () (Set Context!16308))

(assert (=> bm!674149 (= call!674155 (derivationStepZipperDown!3040 (ite c!1367335 (regTwo!38941 (regOne!38940 r1!2370)) (ite c!1367336 (regTwo!38940 (regOne!38940 r1!2370)) (ite c!1367338 (regOne!38940 (regOne!38940 r1!2370)) (reg!19543 (regOne!38940 r1!2370))))) (ite (or c!1367335 c!1367336) (Context!16309 ($colon$colon!3207 (exprs!8654 ct1!282) (regTwo!38940 r1!2370))) (Context!16309 call!674154)) c!10362))))

(declare-fun b!7359160 () Bool)

(declare-fun call!674156 () (Set Context!16308))

(declare-fun call!674159 () (Set Context!16308))

(assert (=> b!7359160 (= e!4406168 (set.union call!674156 call!674159))))

(declare-fun bm!674150 () Bool)

(declare-fun call!674157 () List!71710)

(assert (=> bm!674150 (= call!674156 (derivationStepZipperDown!3040 (ite c!1367335 (regOne!38941 (regOne!38940 r1!2370)) (regOne!38940 (regOne!38940 r1!2370))) (ite c!1367335 (Context!16309 ($colon$colon!3207 (exprs!8654 ct1!282) (regTwo!38940 r1!2370))) (Context!16309 call!674157)) c!10362))))

(declare-fun b!7359161 () Bool)

(assert (=> b!7359161 (= e!4406168 e!4406169)))

(assert (=> b!7359161 (= c!1367338 (is-Concat!28059 (regOne!38940 r1!2370)))))

(declare-fun b!7359162 () Bool)

(assert (=> b!7359162 (= e!4406165 (set.union call!674156 call!674155))))

(declare-fun b!7359163 () Bool)

(assert (=> b!7359163 (= e!4406170 e!4406165)))

(assert (=> b!7359163 (= c!1367335 (is-Union!19214 (regOne!38940 r1!2370)))))

(declare-fun b!7359164 () Bool)

(assert (=> b!7359164 (= e!4406166 (nullable!8301 (regOne!38940 (regOne!38940 r1!2370))))))

(declare-fun d!2281922 () Bool)

(declare-fun c!1367337 () Bool)

(assert (=> d!2281922 (= c!1367337 (and (is-ElementMatch!19214 (regOne!38940 r1!2370)) (= (c!1367282 (regOne!38940 r1!2370)) c!10362)))))

(assert (=> d!2281922 (= (derivationStepZipperDown!3040 (regOne!38940 r1!2370) (Context!16309 ($colon$colon!3207 (exprs!8654 ct1!282) (regTwo!38940 r1!2370))) c!10362) e!4406170)))

(declare-fun b!7359165 () Bool)

(declare-fun c!1367334 () Bool)

(assert (=> b!7359165 (= c!1367334 (is-Star!19214 (regOne!38940 r1!2370)))))

(declare-fun e!4406167 () (Set Context!16308))

(assert (=> b!7359165 (= e!4406169 e!4406167)))

(declare-fun bm!674151 () Bool)

(assert (=> bm!674151 (= call!674158 call!674159)))

(declare-fun bm!674152 () Bool)

(assert (=> bm!674152 (= call!674157 ($colon$colon!3207 (exprs!8654 (Context!16309 ($colon$colon!3207 (exprs!8654 ct1!282) (regTwo!38940 r1!2370)))) (ite (or c!1367336 c!1367338) (regTwo!38940 (regOne!38940 r1!2370)) (regOne!38940 r1!2370))))))

(declare-fun bm!674153 () Bool)

(assert (=> bm!674153 (= call!674159 call!674155)))

(declare-fun b!7359166 () Bool)

(assert (=> b!7359166 (= e!4406167 call!674158)))

(declare-fun b!7359167 () Bool)

(assert (=> b!7359167 (= e!4406167 (as set.empty (Set Context!16308)))))

(declare-fun bm!674154 () Bool)

(assert (=> bm!674154 (= call!674154 call!674157)))

(assert (= (and d!2281922 c!1367337) b!7359158))

(assert (= (and d!2281922 (not c!1367337)) b!7359163))

(assert (= (and b!7359163 c!1367335) b!7359162))

(assert (= (and b!7359163 (not c!1367335)) b!7359159))

(assert (= (and b!7359159 res!2971184) b!7359164))

(assert (= (and b!7359159 c!1367336) b!7359160))

(assert (= (and b!7359159 (not c!1367336)) b!7359161))

(assert (= (and b!7359161 c!1367338) b!7359157))

(assert (= (and b!7359161 (not c!1367338)) b!7359165))

(assert (= (and b!7359165 c!1367334) b!7359166))

(assert (= (and b!7359165 (not c!1367334)) b!7359167))

(assert (= (or b!7359157 b!7359166) bm!674154))

(assert (= (or b!7359157 b!7359166) bm!674151))

(assert (= (or b!7359160 bm!674151) bm!674153))

(assert (= (or b!7359160 bm!674154) bm!674152))

(assert (= (or b!7359162 bm!674153) bm!674149))

(assert (= (or b!7359162 b!7359160) bm!674150))

(declare-fun m!8017694 () Bool)

(assert (=> bm!674150 m!8017694))

(declare-fun m!8017696 () Bool)

(assert (=> bm!674149 m!8017696))

(declare-fun m!8017698 () Bool)

(assert (=> b!7359158 m!8017698))

(declare-fun m!8017700 () Bool)

(assert (=> bm!674152 m!8017700))

(declare-fun m!8017702 () Bool)

(assert (=> b!7359164 m!8017702))

(assert (=> b!7358966 d!2281922))

(declare-fun d!2281924 () Bool)

(assert (=> d!2281924 (= ($colon$colon!3207 (exprs!8654 ct1!282) (regTwo!38940 r1!2370)) (Cons!71586 (regTwo!38940 r1!2370) (exprs!8654 ct1!282)))))

(assert (=> b!7358966 d!2281924))

(declare-fun b!7359168 () Bool)

(declare-fun e!4406175 () (Set Context!16308))

(declare-fun call!674164 () (Set Context!16308))

(assert (=> b!7359168 (= e!4406175 call!674164)))

(declare-fun b!7359169 () Bool)

(declare-fun e!4406176 () (Set Context!16308))

(assert (=> b!7359169 (= e!4406176 (set.insert ct1!282 (as set.empty (Set Context!16308))))))

(declare-fun b!7359170 () Bool)

(declare-fun c!1367341 () Bool)

(declare-fun e!4406172 () Bool)

(assert (=> b!7359170 (= c!1367341 e!4406172)))

(declare-fun res!2971185 () Bool)

(assert (=> b!7359170 (=> (not res!2971185) (not e!4406172))))

(assert (=> b!7359170 (= res!2971185 (is-Concat!28059 (regTwo!38940 r1!2370)))))

(declare-fun e!4406171 () (Set Context!16308))

(declare-fun e!4406174 () (Set Context!16308))

(assert (=> b!7359170 (= e!4406171 e!4406174)))

(declare-fun call!674160 () List!71710)

(declare-fun c!1367343 () Bool)

(declare-fun bm!674155 () Bool)

(declare-fun c!1367340 () Bool)

(declare-fun call!674161 () (Set Context!16308))

(assert (=> bm!674155 (= call!674161 (derivationStepZipperDown!3040 (ite c!1367340 (regTwo!38941 (regTwo!38940 r1!2370)) (ite c!1367341 (regTwo!38940 (regTwo!38940 r1!2370)) (ite c!1367343 (regOne!38940 (regTwo!38940 r1!2370)) (reg!19543 (regTwo!38940 r1!2370))))) (ite (or c!1367340 c!1367341) ct1!282 (Context!16309 call!674160)) c!10362))))

(declare-fun b!7359171 () Bool)

(declare-fun call!674162 () (Set Context!16308))

(declare-fun call!674165 () (Set Context!16308))

(assert (=> b!7359171 (= e!4406174 (set.union call!674162 call!674165))))

(declare-fun call!674163 () List!71710)

(declare-fun bm!674156 () Bool)

(assert (=> bm!674156 (= call!674162 (derivationStepZipperDown!3040 (ite c!1367340 (regOne!38941 (regTwo!38940 r1!2370)) (regOne!38940 (regTwo!38940 r1!2370))) (ite c!1367340 ct1!282 (Context!16309 call!674163)) c!10362))))

(declare-fun b!7359172 () Bool)

(assert (=> b!7359172 (= e!4406174 e!4406175)))

(assert (=> b!7359172 (= c!1367343 (is-Concat!28059 (regTwo!38940 r1!2370)))))

(declare-fun b!7359173 () Bool)

(assert (=> b!7359173 (= e!4406171 (set.union call!674162 call!674161))))

(declare-fun b!7359174 () Bool)

(assert (=> b!7359174 (= e!4406176 e!4406171)))

(assert (=> b!7359174 (= c!1367340 (is-Union!19214 (regTwo!38940 r1!2370)))))

(declare-fun b!7359175 () Bool)

(assert (=> b!7359175 (= e!4406172 (nullable!8301 (regOne!38940 (regTwo!38940 r1!2370))))))

(declare-fun d!2281926 () Bool)

(declare-fun c!1367342 () Bool)

(assert (=> d!2281926 (= c!1367342 (and (is-ElementMatch!19214 (regTwo!38940 r1!2370)) (= (c!1367282 (regTwo!38940 r1!2370)) c!10362)))))

(assert (=> d!2281926 (= (derivationStepZipperDown!3040 (regTwo!38940 r1!2370) ct1!282 c!10362) e!4406176)))

(declare-fun b!7359176 () Bool)

(declare-fun c!1367339 () Bool)

(assert (=> b!7359176 (= c!1367339 (is-Star!19214 (regTwo!38940 r1!2370)))))

(declare-fun e!4406173 () (Set Context!16308))

(assert (=> b!7359176 (= e!4406175 e!4406173)))

(declare-fun bm!674157 () Bool)

(assert (=> bm!674157 (= call!674164 call!674165)))

(declare-fun bm!674158 () Bool)

(assert (=> bm!674158 (= call!674163 ($colon$colon!3207 (exprs!8654 ct1!282) (ite (or c!1367341 c!1367343) (regTwo!38940 (regTwo!38940 r1!2370)) (regTwo!38940 r1!2370))))))

(declare-fun bm!674159 () Bool)

(assert (=> bm!674159 (= call!674165 call!674161)))

(declare-fun b!7359177 () Bool)

(assert (=> b!7359177 (= e!4406173 call!674164)))

(declare-fun b!7359178 () Bool)

(assert (=> b!7359178 (= e!4406173 (as set.empty (Set Context!16308)))))

(declare-fun bm!674160 () Bool)

(assert (=> bm!674160 (= call!674160 call!674163)))

(assert (= (and d!2281926 c!1367342) b!7359169))

(assert (= (and d!2281926 (not c!1367342)) b!7359174))

(assert (= (and b!7359174 c!1367340) b!7359173))

(assert (= (and b!7359174 (not c!1367340)) b!7359170))

(assert (= (and b!7359170 res!2971185) b!7359175))

(assert (= (and b!7359170 c!1367341) b!7359171))

(assert (= (and b!7359170 (not c!1367341)) b!7359172))

(assert (= (and b!7359172 c!1367343) b!7359168))

(assert (= (and b!7359172 (not c!1367343)) b!7359176))

(assert (= (and b!7359176 c!1367339) b!7359177))

(assert (= (and b!7359176 (not c!1367339)) b!7359178))

(assert (= (or b!7359168 b!7359177) bm!674160))

(assert (= (or b!7359168 b!7359177) bm!674157))

(assert (= (or b!7359171 bm!674157) bm!674159))

(assert (= (or b!7359171 bm!674160) bm!674158))

(assert (= (or b!7359173 bm!674159) bm!674155))

(assert (= (or b!7359173 b!7359171) bm!674156))

(declare-fun m!8017704 () Bool)

(assert (=> bm!674156 m!8017704))

(declare-fun m!8017706 () Bool)

(assert (=> bm!674155 m!8017706))

(assert (=> b!7359169 m!8017688))

(declare-fun m!8017708 () Bool)

(assert (=> bm!674158 m!8017708))

(declare-fun m!8017710 () Bool)

(assert (=> b!7359175 m!8017710))

(assert (=> b!7358966 d!2281926))

(declare-fun b!7359183 () Bool)

(declare-fun e!4406179 () Bool)

(declare-fun tp!2090842 () Bool)

(declare-fun tp!2090843 () Bool)

(assert (=> b!7359183 (= e!4406179 (and tp!2090842 tp!2090843))))

(assert (=> b!7358967 (= tp!2090807 e!4406179)))

(assert (= (and b!7358967 (is-Cons!71586 (exprs!8654 ct1!282))) b!7359183))

(declare-fun b!7359206 () Bool)

(declare-fun e!4406189 () Bool)

(declare-fun tp!2090857 () Bool)

(declare-fun tp!2090856 () Bool)

(assert (=> b!7359206 (= e!4406189 (and tp!2090857 tp!2090856))))

(declare-fun b!7359205 () Bool)

(declare-fun tp!2090855 () Bool)

(assert (=> b!7359205 (= e!4406189 tp!2090855)))

(assert (=> b!7358972 (= tp!2090813 e!4406189)))

(declare-fun b!7359203 () Bool)

(assert (=> b!7359203 (= e!4406189 tp_is_empty!48673)))

(declare-fun b!7359204 () Bool)

(declare-fun tp!2090854 () Bool)

(declare-fun tp!2090858 () Bool)

(assert (=> b!7359204 (= e!4406189 (and tp!2090854 tp!2090858))))

(assert (= (and b!7358972 (is-ElementMatch!19214 (reg!19543 r1!2370))) b!7359203))

(assert (= (and b!7358972 (is-Concat!28059 (reg!19543 r1!2370))) b!7359204))

(assert (= (and b!7358972 (is-Star!19214 (reg!19543 r1!2370))) b!7359205))

(assert (= (and b!7358972 (is-Union!19214 (reg!19543 r1!2370))) b!7359206))

(declare-fun b!7359207 () Bool)

(declare-fun e!4406190 () Bool)

(declare-fun tp!2090859 () Bool)

(declare-fun tp!2090860 () Bool)

(assert (=> b!7359207 (= e!4406190 (and tp!2090859 tp!2090860))))

(assert (=> b!7358973 (= tp!2090808 e!4406190)))

(assert (= (and b!7358973 (is-Cons!71586 (exprs!8654 cWitness!61))) b!7359207))

(declare-fun b!7359211 () Bool)

(declare-fun e!4406191 () Bool)

(declare-fun tp!2090864 () Bool)

(declare-fun tp!2090863 () Bool)

(assert (=> b!7359211 (= e!4406191 (and tp!2090864 tp!2090863))))

(declare-fun b!7359210 () Bool)

(declare-fun tp!2090862 () Bool)

(assert (=> b!7359210 (= e!4406191 tp!2090862)))

(assert (=> b!7358974 (= tp!2090806 e!4406191)))

(declare-fun b!7359208 () Bool)

(assert (=> b!7359208 (= e!4406191 tp_is_empty!48673)))

(declare-fun b!7359209 () Bool)

(declare-fun tp!2090861 () Bool)

(declare-fun tp!2090865 () Bool)

(assert (=> b!7359209 (= e!4406191 (and tp!2090861 tp!2090865))))

(assert (= (and b!7358974 (is-ElementMatch!19214 (regOne!38940 r1!2370))) b!7359208))

(assert (= (and b!7358974 (is-Concat!28059 (regOne!38940 r1!2370))) b!7359209))

(assert (= (and b!7358974 (is-Star!19214 (regOne!38940 r1!2370))) b!7359210))

(assert (= (and b!7358974 (is-Union!19214 (regOne!38940 r1!2370))) b!7359211))

(declare-fun b!7359215 () Bool)

(declare-fun e!4406192 () Bool)

(declare-fun tp!2090869 () Bool)

(declare-fun tp!2090868 () Bool)

(assert (=> b!7359215 (= e!4406192 (and tp!2090869 tp!2090868))))

(declare-fun b!7359214 () Bool)

(declare-fun tp!2090867 () Bool)

(assert (=> b!7359214 (= e!4406192 tp!2090867)))

(assert (=> b!7358974 (= tp!2090812 e!4406192)))

(declare-fun b!7359212 () Bool)

(assert (=> b!7359212 (= e!4406192 tp_is_empty!48673)))

(declare-fun b!7359213 () Bool)

(declare-fun tp!2090866 () Bool)

(declare-fun tp!2090870 () Bool)

(assert (=> b!7359213 (= e!4406192 (and tp!2090866 tp!2090870))))

(assert (= (and b!7358974 (is-ElementMatch!19214 (regTwo!38940 r1!2370))) b!7359212))

(assert (= (and b!7358974 (is-Concat!28059 (regTwo!38940 r1!2370))) b!7359213))

(assert (= (and b!7358974 (is-Star!19214 (regTwo!38940 r1!2370))) b!7359214))

(assert (= (and b!7358974 (is-Union!19214 (regTwo!38940 r1!2370))) b!7359215))

(declare-fun b!7359219 () Bool)

(declare-fun e!4406193 () Bool)

(declare-fun tp!2090874 () Bool)

(declare-fun tp!2090873 () Bool)

(assert (=> b!7359219 (= e!4406193 (and tp!2090874 tp!2090873))))

(declare-fun b!7359218 () Bool)

(declare-fun tp!2090872 () Bool)

(assert (=> b!7359218 (= e!4406193 tp!2090872)))

(assert (=> b!7358971 (= tp!2090810 e!4406193)))

(declare-fun b!7359216 () Bool)

(assert (=> b!7359216 (= e!4406193 tp_is_empty!48673)))

(declare-fun b!7359217 () Bool)

(declare-fun tp!2090871 () Bool)

(declare-fun tp!2090875 () Bool)

(assert (=> b!7359217 (= e!4406193 (and tp!2090871 tp!2090875))))

(assert (= (and b!7358971 (is-ElementMatch!19214 (regOne!38941 r1!2370))) b!7359216))

(assert (= (and b!7358971 (is-Concat!28059 (regOne!38941 r1!2370))) b!7359217))

(assert (= (and b!7358971 (is-Star!19214 (regOne!38941 r1!2370))) b!7359218))

(assert (= (and b!7358971 (is-Union!19214 (regOne!38941 r1!2370))) b!7359219))

(declare-fun b!7359223 () Bool)

(declare-fun e!4406194 () Bool)

(declare-fun tp!2090879 () Bool)

(declare-fun tp!2090878 () Bool)

(assert (=> b!7359223 (= e!4406194 (and tp!2090879 tp!2090878))))

(declare-fun b!7359222 () Bool)

(declare-fun tp!2090877 () Bool)

(assert (=> b!7359222 (= e!4406194 tp!2090877)))

(assert (=> b!7358971 (= tp!2090811 e!4406194)))

(declare-fun b!7359220 () Bool)

(assert (=> b!7359220 (= e!4406194 tp_is_empty!48673)))

(declare-fun b!7359221 () Bool)

(declare-fun tp!2090876 () Bool)

(declare-fun tp!2090880 () Bool)

(assert (=> b!7359221 (= e!4406194 (and tp!2090876 tp!2090880))))

(assert (= (and b!7358971 (is-ElementMatch!19214 (regTwo!38941 r1!2370))) b!7359220))

(assert (= (and b!7358971 (is-Concat!28059 (regTwo!38941 r1!2370))) b!7359221))

(assert (= (and b!7358971 (is-Star!19214 (regTwo!38941 r1!2370))) b!7359222))

(assert (= (and b!7358971 (is-Union!19214 (regTwo!38941 r1!2370))) b!7359223))

(declare-fun b!7359224 () Bool)

(declare-fun e!4406195 () Bool)

(declare-fun tp!2090881 () Bool)

(declare-fun tp!2090882 () Bool)

(assert (=> b!7359224 (= e!4406195 (and tp!2090881 tp!2090882))))

(assert (=> b!7358976 (= tp!2090809 e!4406195)))

(assert (= (and b!7358976 (is-Cons!71586 (exprs!8654 ct2!378))) b!7359224))

(push 1)

(assert (not b!7359206))

(assert (not b!7359205))

(assert (not b!7359222))

(assert (not b!7359211))

(assert (not b!7359137))

(assert (not bm!674155))

(assert (not bm!674152))

(assert (not b!7359110))

(assert (not b!7359217))

(assert (not d!2281910))

(assert (not b!7359207))

(assert (not b!7359153))

(assert (not b!7359210))

(assert (not bm!674133))

(assert (not bm!674158))

(assert (not d!2281904))

(assert (not bm!674137))

(assert (not b!7359164))

(assert (not b!7359204))

(assert (not d!2281920))

(assert (not b!7359209))

(assert (not d!2281902))

(assert (not bm!674142))

(assert (not bm!674156))

(assert (not bm!674144))

(assert (not d!2281912))

(assert (not b!7359219))

(assert (not b!7359221))

(assert (not bm!674138))

(assert (not b!7359218))

(assert (not b!7359079))

(assert tp_is_empty!48673)

(assert (not b!7359175))

(assert (not b!7359223))

(assert (not b!7359183))

(assert (not bm!674110))

(assert (not bm!674132))

(assert (not bm!674141))

(assert (not b!7359215))

(assert (not bm!674149))

(assert (not bm!674112))

(assert (not b!7359213))

(assert (not d!2281914))

(assert (not b!7359065))

(assert (not b!7359078))

(assert (not b!7359214))

(assert (not bm!674150))

(assert (not b!7359224))

(assert (not bm!674109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

