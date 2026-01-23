; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719010 () Bool)

(assert start!719010)

(declare-fun b!7365264 () Bool)

(declare-fun e!4409628 () Bool)

(declare-fun tp!2093196 () Bool)

(declare-fun tp!2093203 () Bool)

(assert (=> b!7365264 (= e!4409628 (and tp!2093196 tp!2093203))))

(declare-fun b!7365265 () Bool)

(declare-fun e!4409627 () Bool)

(declare-fun e!4409629 () Bool)

(assert (=> b!7365265 (= e!4409627 e!4409629)))

(declare-fun res!2972734 () Bool)

(assert (=> b!7365265 (=> (not res!2972734) (not e!4409629))))

(declare-datatypes ((C!38782 0))(
  ( (C!38783 (val!29751 Int)) )
))
(declare-datatypes ((Regex!19254 0))(
  ( (ElementMatch!19254 (c!1368666 C!38782)) (Concat!28099 (regOne!39020 Regex!19254) (regTwo!39020 Regex!19254)) (EmptyExpr!19254) (Star!19254 (reg!19583 Regex!19254)) (EmptyLang!19254) (Union!19254 (regOne!39021 Regex!19254) (regTwo!39021 Regex!19254)) )
))
(declare-fun r1!2370 () Regex!19254)

(declare-fun c!10362 () C!38782)

(assert (=> b!7365265 (= res!2972734 (and (or (not (is-ElementMatch!19254 r1!2370)) (not (= c!10362 (c!1368666 r1!2370)))) (is-Union!19254 r1!2370)))))

(declare-datatypes ((List!71750 0))(
  ( (Nil!71626) (Cons!71626 (h!78074 Regex!19254) (t!386199 List!71750)) )
))
(declare-datatypes ((Context!16388 0))(
  ( (Context!16389 (exprs!8694 List!71750)) )
))
(declare-fun lt!2614727 () Context!16388)

(declare-fun lt!2614728 () (Set Context!16388))

(declare-fun derivationStepZipperDown!3080 (Regex!19254 Context!16388 C!38782) (Set Context!16388))

(assert (=> b!7365265 (= lt!2614728 (derivationStepZipperDown!3080 r1!2370 lt!2614727 c!10362))))

(declare-fun ct1!282 () Context!16388)

(declare-fun ct2!378 () Context!16388)

(declare-fun ++!17070 (List!71750 List!71750) List!71750)

(assert (=> b!7365265 (= lt!2614727 (Context!16389 (++!17070 (exprs!8694 ct1!282) (exprs!8694 ct2!378))))))

(declare-datatypes ((Unit!165457 0))(
  ( (Unit!165458) )
))
(declare-fun lt!2614726 () Unit!165457)

(declare-fun lambda!457684 () Int)

(declare-fun lemmaConcatPreservesForall!1927 (List!71750 List!71750 Int) Unit!165457)

(assert (=> b!7365265 (= lt!2614726 (lemmaConcatPreservesForall!1927 (exprs!8694 ct1!282) (exprs!8694 ct2!378) lambda!457684))))

(declare-fun b!7365266 () Bool)

(declare-fun e!4409625 () Bool)

(declare-fun lt!2614730 () Context!16388)

(assert (=> b!7365266 (= e!4409625 (not (set.member lt!2614730 lt!2614728)))))

(declare-fun cWitness!61 () Context!16388)

(declare-fun lt!2614729 () Unit!165457)

(assert (=> b!7365266 (= lt!2614729 (lemmaConcatPreservesForall!1927 (exprs!8694 cWitness!61) (exprs!8694 ct2!378) lambda!457684))))

(assert (=> b!7365266 (set.member lt!2614730 (derivationStepZipperDown!3080 (regTwo!39021 r1!2370) lt!2614727 c!10362))))

(assert (=> b!7365266 (= lt!2614730 (Context!16389 (++!17070 (exprs!8694 cWitness!61) (exprs!8694 ct2!378))))))

(declare-fun lt!2614733 () Unit!165457)

(assert (=> b!7365266 (= lt!2614733 (lemmaConcatPreservesForall!1927 (exprs!8694 ct1!282) (exprs!8694 ct2!378) lambda!457684))))

(declare-fun lt!2614731 () Unit!165457)

(assert (=> b!7365266 (= lt!2614731 (lemmaConcatPreservesForall!1927 (exprs!8694 cWitness!61) (exprs!8694 ct2!378) lambda!457684))))

(declare-fun lt!2614732 () Unit!165457)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!123 (Regex!19254 Context!16388 Context!16388 Context!16388 C!38782) Unit!165457)

(assert (=> b!7365266 (= lt!2614732 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!123 (regTwo!39021 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7365267 () Bool)

(declare-fun e!4409626 () Bool)

(assert (=> b!7365267 (= e!4409626 e!4409627)))

(declare-fun res!2972731 () Bool)

(assert (=> b!7365267 (=> (not res!2972731) (not e!4409627))))

(declare-fun lt!2614724 () (Set Context!16388))

(assert (=> b!7365267 (= res!2972731 (set.member cWitness!61 lt!2614724))))

(assert (=> b!7365267 (= lt!2614724 (derivationStepZipperDown!3080 r1!2370 ct1!282 c!10362))))

(declare-fun b!7365268 () Bool)

(declare-fun tp!2093202 () Bool)

(declare-fun tp!2093200 () Bool)

(assert (=> b!7365268 (= e!4409628 (and tp!2093202 tp!2093200))))

(declare-fun b!7365269 () Bool)

(assert (=> b!7365269 (= e!4409629 e!4409625)))

(declare-fun res!2972735 () Bool)

(assert (=> b!7365269 (=> (not res!2972735) (not e!4409625))))

(declare-fun lt!2614725 () (Set Context!16388))

(assert (=> b!7365269 (= res!2972735 (= lt!2614724 (set.union lt!2614725 (derivationStepZipperDown!3080 (regTwo!39021 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7365269 (= lt!2614725 (derivationStepZipperDown!3080 (regOne!39021 r1!2370) ct1!282 c!10362))))

(declare-fun b!7365270 () Bool)

(declare-fun e!4409630 () Bool)

(declare-fun tp!2093201 () Bool)

(assert (=> b!7365270 (= e!4409630 tp!2093201)))

(declare-fun b!7365271 () Bool)

(declare-fun tp_is_empty!48753 () Bool)

(assert (=> b!7365271 (= e!4409628 tp_is_empty!48753)))

(declare-fun res!2972733 () Bool)

(assert (=> start!719010 (=> (not res!2972733) (not e!4409626))))

(declare-fun validRegex!9850 (Regex!19254) Bool)

(assert (=> start!719010 (= res!2972733 (validRegex!9850 r1!2370))))

(assert (=> start!719010 e!4409626))

(assert (=> start!719010 tp_is_empty!48753))

(declare-fun e!4409623 () Bool)

(declare-fun inv!91476 (Context!16388) Bool)

(assert (=> start!719010 (and (inv!91476 cWitness!61) e!4409623)))

(assert (=> start!719010 (and (inv!91476 ct1!282) e!4409630)))

(assert (=> start!719010 e!4409628))

(declare-fun e!4409624 () Bool)

(assert (=> start!719010 (and (inv!91476 ct2!378) e!4409624)))

(declare-fun b!7365272 () Bool)

(declare-fun res!2972732 () Bool)

(assert (=> b!7365272 (=> (not res!2972732) (not e!4409625))))

(assert (=> b!7365272 (= res!2972732 (not (set.member cWitness!61 lt!2614725)))))

(declare-fun b!7365273 () Bool)

(declare-fun tp!2093197 () Bool)

(assert (=> b!7365273 (= e!4409628 tp!2093197)))

(declare-fun b!7365274 () Bool)

(declare-fun tp!2093199 () Bool)

(assert (=> b!7365274 (= e!4409624 tp!2093199)))

(declare-fun b!7365275 () Bool)

(declare-fun tp!2093198 () Bool)

(assert (=> b!7365275 (= e!4409623 tp!2093198)))

(assert (= (and start!719010 res!2972733) b!7365267))

(assert (= (and b!7365267 res!2972731) b!7365265))

(assert (= (and b!7365265 res!2972734) b!7365269))

(assert (= (and b!7365269 res!2972735) b!7365272))

(assert (= (and b!7365272 res!2972732) b!7365266))

(assert (= start!719010 b!7365275))

(assert (= start!719010 b!7365270))

(assert (= (and start!719010 (is-ElementMatch!19254 r1!2370)) b!7365271))

(assert (= (and start!719010 (is-Concat!28099 r1!2370)) b!7365264))

(assert (= (and start!719010 (is-Star!19254 r1!2370)) b!7365273))

(assert (= (and start!719010 (is-Union!19254 r1!2370)) b!7365268))

(assert (= start!719010 b!7365274))

(declare-fun m!8021118 () Bool)

(assert (=> b!7365266 m!8021118))

(declare-fun m!8021120 () Bool)

(assert (=> b!7365266 m!8021120))

(declare-fun m!8021122 () Bool)

(assert (=> b!7365266 m!8021122))

(declare-fun m!8021124 () Bool)

(assert (=> b!7365266 m!8021124))

(declare-fun m!8021126 () Bool)

(assert (=> b!7365266 m!8021126))

(declare-fun m!8021128 () Bool)

(assert (=> b!7365266 m!8021128))

(declare-fun m!8021130 () Bool)

(assert (=> b!7365266 m!8021130))

(assert (=> b!7365266 m!8021118))

(declare-fun m!8021132 () Bool)

(assert (=> b!7365267 m!8021132))

(declare-fun m!8021134 () Bool)

(assert (=> b!7365267 m!8021134))

(declare-fun m!8021136 () Bool)

(assert (=> start!719010 m!8021136))

(declare-fun m!8021138 () Bool)

(assert (=> start!719010 m!8021138))

(declare-fun m!8021140 () Bool)

(assert (=> start!719010 m!8021140))

(declare-fun m!8021142 () Bool)

(assert (=> start!719010 m!8021142))

(declare-fun m!8021144 () Bool)

(assert (=> b!7365265 m!8021144))

(declare-fun m!8021146 () Bool)

(assert (=> b!7365265 m!8021146))

(assert (=> b!7365265 m!8021128))

(declare-fun m!8021148 () Bool)

(assert (=> b!7365269 m!8021148))

(declare-fun m!8021150 () Bool)

(assert (=> b!7365269 m!8021150))

(declare-fun m!8021152 () Bool)

(assert (=> b!7365272 m!8021152))

(push 1)

(assert (not b!7365273))

(assert (not b!7365269))

(assert (not b!7365268))

(assert (not b!7365266))

(assert (not b!7365274))

(assert (not b!7365265))

(assert (not b!7365275))

(assert tp_is_empty!48753)

(assert (not b!7365264))

(assert (not b!7365267))

(assert (not b!7365270))

(assert (not start!719010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7365334 () Bool)

(declare-fun c!1368681 () Bool)

(declare-fun e!4409671 () Bool)

(assert (=> b!7365334 (= c!1368681 e!4409671)))

(declare-fun res!2972753 () Bool)

(assert (=> b!7365334 (=> (not res!2972753) (not e!4409671))))

(assert (=> b!7365334 (= res!2972753 (is-Concat!28099 r1!2370))))

(declare-fun e!4409667 () (Set Context!16388))

(declare-fun e!4409670 () (Set Context!16388))

(assert (=> b!7365334 (= e!4409667 e!4409670)))

(declare-fun b!7365335 () Bool)

(declare-fun e!4409668 () (Set Context!16388))

(assert (=> b!7365335 (= e!4409668 (set.insert ct1!282 (as set.empty (Set Context!16388))))))

(declare-fun b!7365336 () Bool)

(declare-fun nullable!8332 (Regex!19254) Bool)

(assert (=> b!7365336 (= e!4409671 (nullable!8332 (regOne!39020 r1!2370)))))

(declare-fun b!7365337 () Bool)

(declare-fun e!4409672 () (Set Context!16388))

(declare-fun call!675626 () (Set Context!16388))

(assert (=> b!7365337 (= e!4409672 call!675626)))

(declare-fun b!7365338 () Bool)

(declare-fun e!4409669 () (Set Context!16388))

(assert (=> b!7365338 (= e!4409669 (as set.empty (Set Context!16388)))))

(declare-fun b!7365339 () Bool)

(assert (=> b!7365339 (= e!4409669 call!675626)))

(declare-fun b!7365340 () Bool)

(assert (=> b!7365340 (= e!4409670 e!4409672)))

(declare-fun c!1368679 () Bool)

(assert (=> b!7365340 (= c!1368679 (is-Concat!28099 r1!2370))))

(declare-fun b!7365341 () Bool)

(declare-fun call!675624 () (Set Context!16388))

(declare-fun call!675625 () (Set Context!16388))

(assert (=> b!7365341 (= e!4409667 (set.union call!675624 call!675625))))

(declare-fun bm!675617 () Bool)

(declare-fun call!675627 () (Set Context!16388))

(assert (=> bm!675617 (= call!675626 call!675627)))

(declare-fun b!7365342 () Bool)

(assert (=> b!7365342 (= e!4409668 e!4409667)))

(declare-fun c!1368682 () Bool)

(assert (=> b!7365342 (= c!1368682 (is-Union!19254 r1!2370))))

(declare-fun bm!675618 () Bool)

(assert (=> bm!675618 (= call!675627 call!675624)))

(declare-fun b!7365343 () Bool)

(declare-fun c!1368678 () Bool)

(assert (=> b!7365343 (= c!1368678 (is-Star!19254 r1!2370))))

(assert (=> b!7365343 (= e!4409672 e!4409669)))

(declare-fun bm!675620 () Bool)

(declare-fun call!675622 () List!71750)

(declare-fun $colon$colon!3238 (List!71750 Regex!19254) List!71750)

(assert (=> bm!675620 (= call!675622 ($colon$colon!3238 (exprs!8694 ct1!282) (ite (or c!1368681 c!1368679) (regTwo!39020 r1!2370) r1!2370)))))

(declare-fun bm!675621 () Bool)

(assert (=> bm!675621 (= call!675625 (derivationStepZipperDown!3080 (ite c!1368682 (regTwo!39021 r1!2370) (regOne!39020 r1!2370)) (ite c!1368682 ct1!282 (Context!16389 call!675622)) c!10362))))

(declare-fun b!7365344 () Bool)

(assert (=> b!7365344 (= e!4409670 (set.union call!675625 call!675627))))

(declare-fun call!675623 () List!71750)

(declare-fun bm!675622 () Bool)

(assert (=> bm!675622 (= call!675624 (derivationStepZipperDown!3080 (ite c!1368682 (regOne!39021 r1!2370) (ite c!1368681 (regTwo!39020 r1!2370) (ite c!1368679 (regOne!39020 r1!2370) (reg!19583 r1!2370)))) (ite (or c!1368682 c!1368681) ct1!282 (Context!16389 call!675623)) c!10362))))

(declare-fun d!2282670 () Bool)

(declare-fun c!1368680 () Bool)

(assert (=> d!2282670 (= c!1368680 (and (is-ElementMatch!19254 r1!2370) (= (c!1368666 r1!2370) c!10362)))))

(assert (=> d!2282670 (= (derivationStepZipperDown!3080 r1!2370 ct1!282 c!10362) e!4409668)))

(declare-fun bm!675619 () Bool)

(assert (=> bm!675619 (= call!675623 call!675622)))

(assert (= (and d!2282670 c!1368680) b!7365335))

(assert (= (and d!2282670 (not c!1368680)) b!7365342))

(assert (= (and b!7365342 c!1368682) b!7365341))

(assert (= (and b!7365342 (not c!1368682)) b!7365334))

(assert (= (and b!7365334 res!2972753) b!7365336))

(assert (= (and b!7365334 c!1368681) b!7365344))

(assert (= (and b!7365334 (not c!1368681)) b!7365340))

(assert (= (and b!7365340 c!1368679) b!7365337))

(assert (= (and b!7365340 (not c!1368679)) b!7365343))

(assert (= (and b!7365343 c!1368678) b!7365339))

(assert (= (and b!7365343 (not c!1368678)) b!7365338))

(assert (= (or b!7365337 b!7365339) bm!675619))

(assert (= (or b!7365337 b!7365339) bm!675617))

(assert (= (or b!7365344 bm!675617) bm!675618))

(assert (= (or b!7365344 bm!675619) bm!675620))

(assert (= (or b!7365341 b!7365344) bm!675621))

(assert (= (or b!7365341 bm!675618) bm!675622))

(declare-fun m!8021190 () Bool)

(assert (=> b!7365335 m!8021190))

(declare-fun m!8021192 () Bool)

(assert (=> bm!675621 m!8021192))

(declare-fun m!8021194 () Bool)

(assert (=> bm!675620 m!8021194))

(declare-fun m!8021196 () Bool)

(assert (=> b!7365336 m!8021196))

(declare-fun m!8021198 () Bool)

(assert (=> bm!675622 m!8021198))

(assert (=> b!7365267 d!2282670))

(declare-fun bs!1920470 () Bool)

(declare-fun d!2282672 () Bool)

(assert (= bs!1920470 (and d!2282672 b!7365265)))

(declare-fun lambda!457698 () Int)

(assert (=> bs!1920470 (= lambda!457698 lambda!457684)))

(assert (=> d!2282672 (set.member (Context!16389 (++!17070 (exprs!8694 cWitness!61) (exprs!8694 ct2!378))) (derivationStepZipperDown!3080 (regTwo!39021 r1!2370) (Context!16389 (++!17070 (exprs!8694 ct1!282) (exprs!8694 ct2!378))) c!10362))))

(declare-fun lt!2614772 () Unit!165457)

(assert (=> d!2282672 (= lt!2614772 (lemmaConcatPreservesForall!1927 (exprs!8694 ct1!282) (exprs!8694 ct2!378) lambda!457698))))

(declare-fun lt!2614771 () Unit!165457)

(assert (=> d!2282672 (= lt!2614771 (lemmaConcatPreservesForall!1927 (exprs!8694 cWitness!61) (exprs!8694 ct2!378) lambda!457698))))

(declare-fun lt!2614770 () Unit!165457)

(declare-fun choose!57277 (Regex!19254 Context!16388 Context!16388 Context!16388 C!38782) Unit!165457)

(assert (=> d!2282672 (= lt!2614770 (choose!57277 (regTwo!39021 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2282672 (validRegex!9850 (regTwo!39021 r1!2370))))

(assert (=> d!2282672 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!123 (regTwo!39021 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2614770)))

(declare-fun bs!1920471 () Bool)

(assert (= bs!1920471 d!2282672))

(assert (=> bs!1920471 m!8021126))

(declare-fun m!8021200 () Bool)

(assert (=> bs!1920471 m!8021200))

(declare-fun m!8021202 () Bool)

(assert (=> bs!1920471 m!8021202))

(declare-fun m!8021204 () Bool)

(assert (=> bs!1920471 m!8021204))

(declare-fun m!8021206 () Bool)

(assert (=> bs!1920471 m!8021206))

(declare-fun m!8021208 () Bool)

(assert (=> bs!1920471 m!8021208))

(assert (=> bs!1920471 m!8021146))

(declare-fun m!8021210 () Bool)

(assert (=> bs!1920471 m!8021210))

(assert (=> b!7365266 d!2282672))

(declare-fun b!7365373 () Bool)

(declare-fun res!2972768 () Bool)

(declare-fun e!4409692 () Bool)

(assert (=> b!7365373 (=> (not res!2972768) (not e!4409692))))

(declare-fun lt!2614775 () List!71750)

(declare-fun size!42116 (List!71750) Int)

(assert (=> b!7365373 (= res!2972768 (= (size!42116 lt!2614775) (+ (size!42116 (exprs!8694 cWitness!61)) (size!42116 (exprs!8694 ct2!378)))))))

(declare-fun d!2282676 () Bool)

(assert (=> d!2282676 e!4409692))

(declare-fun res!2972769 () Bool)

(assert (=> d!2282676 (=> (not res!2972769) (not e!4409692))))

(declare-fun content!15138 (List!71750) (Set Regex!19254))

(assert (=> d!2282676 (= res!2972769 (= (content!15138 lt!2614775) (set.union (content!15138 (exprs!8694 cWitness!61)) (content!15138 (exprs!8694 ct2!378)))))))

(declare-fun e!4409691 () List!71750)

(assert (=> d!2282676 (= lt!2614775 e!4409691)))

(declare-fun c!1368690 () Bool)

(assert (=> d!2282676 (= c!1368690 (is-Nil!71626 (exprs!8694 cWitness!61)))))

(assert (=> d!2282676 (= (++!17070 (exprs!8694 cWitness!61) (exprs!8694 ct2!378)) lt!2614775)))

(declare-fun b!7365372 () Bool)

(assert (=> b!7365372 (= e!4409691 (Cons!71626 (h!78074 (exprs!8694 cWitness!61)) (++!17070 (t!386199 (exprs!8694 cWitness!61)) (exprs!8694 ct2!378))))))

(declare-fun b!7365374 () Bool)

(assert (=> b!7365374 (= e!4409692 (or (not (= (exprs!8694 ct2!378) Nil!71626)) (= lt!2614775 (exprs!8694 cWitness!61))))))

(declare-fun b!7365371 () Bool)

(assert (=> b!7365371 (= e!4409691 (exprs!8694 ct2!378))))

(assert (= (and d!2282676 c!1368690) b!7365371))

(assert (= (and d!2282676 (not c!1368690)) b!7365372))

(assert (= (and d!2282676 res!2972769) b!7365373))

(assert (= (and b!7365373 res!2972768) b!7365374))

(declare-fun m!8021212 () Bool)

(assert (=> b!7365373 m!8021212))

(declare-fun m!8021214 () Bool)

(assert (=> b!7365373 m!8021214))

(declare-fun m!8021216 () Bool)

(assert (=> b!7365373 m!8021216))

(declare-fun m!8021218 () Bool)

(assert (=> d!2282676 m!8021218))

(declare-fun m!8021220 () Bool)

(assert (=> d!2282676 m!8021220))

(declare-fun m!8021222 () Bool)

(assert (=> d!2282676 m!8021222))

(declare-fun m!8021224 () Bool)

(assert (=> b!7365372 m!8021224))

(assert (=> b!7365266 d!2282676))

(declare-fun b!7365375 () Bool)

(declare-fun c!1368694 () Bool)

(declare-fun e!4409697 () Bool)

(assert (=> b!7365375 (= c!1368694 e!4409697)))

(declare-fun res!2972770 () Bool)

(assert (=> b!7365375 (=> (not res!2972770) (not e!4409697))))

(assert (=> b!7365375 (= res!2972770 (is-Concat!28099 (regTwo!39021 r1!2370)))))

(declare-fun e!4409693 () (Set Context!16388))

(declare-fun e!4409696 () (Set Context!16388))

(assert (=> b!7365375 (= e!4409693 e!4409696)))

(declare-fun b!7365376 () Bool)

(declare-fun e!4409694 () (Set Context!16388))

(assert (=> b!7365376 (= e!4409694 (set.insert lt!2614727 (as set.empty (Set Context!16388))))))

(declare-fun b!7365377 () Bool)

(assert (=> b!7365377 (= e!4409697 (nullable!8332 (regOne!39020 (regTwo!39021 r1!2370))))))

(declare-fun b!7365378 () Bool)

(declare-fun e!4409698 () (Set Context!16388))

(declare-fun call!675638 () (Set Context!16388))

(assert (=> b!7365378 (= e!4409698 call!675638)))

(declare-fun b!7365379 () Bool)

(declare-fun e!4409695 () (Set Context!16388))

(assert (=> b!7365379 (= e!4409695 (as set.empty (Set Context!16388)))))

(declare-fun b!7365380 () Bool)

(assert (=> b!7365380 (= e!4409695 call!675638)))

(declare-fun b!7365381 () Bool)

(assert (=> b!7365381 (= e!4409696 e!4409698)))

(declare-fun c!1368692 () Bool)

(assert (=> b!7365381 (= c!1368692 (is-Concat!28099 (regTwo!39021 r1!2370)))))

(declare-fun b!7365382 () Bool)

(declare-fun call!675636 () (Set Context!16388))

(declare-fun call!675637 () (Set Context!16388))

(assert (=> b!7365382 (= e!4409693 (set.union call!675636 call!675637))))

(declare-fun bm!675629 () Bool)

(declare-fun call!675639 () (Set Context!16388))

(assert (=> bm!675629 (= call!675638 call!675639)))

(declare-fun b!7365383 () Bool)

(assert (=> b!7365383 (= e!4409694 e!4409693)))

(declare-fun c!1368695 () Bool)

(assert (=> b!7365383 (= c!1368695 (is-Union!19254 (regTwo!39021 r1!2370)))))

(declare-fun bm!675630 () Bool)

(assert (=> bm!675630 (= call!675639 call!675636)))

(declare-fun b!7365384 () Bool)

(declare-fun c!1368691 () Bool)

(assert (=> b!7365384 (= c!1368691 (is-Star!19254 (regTwo!39021 r1!2370)))))

(assert (=> b!7365384 (= e!4409698 e!4409695)))

(declare-fun call!675634 () List!71750)

(declare-fun bm!675632 () Bool)

(assert (=> bm!675632 (= call!675634 ($colon$colon!3238 (exprs!8694 lt!2614727) (ite (or c!1368694 c!1368692) (regTwo!39020 (regTwo!39021 r1!2370)) (regTwo!39021 r1!2370))))))

(declare-fun bm!675633 () Bool)

(assert (=> bm!675633 (= call!675637 (derivationStepZipperDown!3080 (ite c!1368695 (regTwo!39021 (regTwo!39021 r1!2370)) (regOne!39020 (regTwo!39021 r1!2370))) (ite c!1368695 lt!2614727 (Context!16389 call!675634)) c!10362))))

(declare-fun b!7365385 () Bool)

(assert (=> b!7365385 (= e!4409696 (set.union call!675637 call!675639))))

(declare-fun call!675635 () List!71750)

(declare-fun bm!675634 () Bool)

(assert (=> bm!675634 (= call!675636 (derivationStepZipperDown!3080 (ite c!1368695 (regOne!39021 (regTwo!39021 r1!2370)) (ite c!1368694 (regTwo!39020 (regTwo!39021 r1!2370)) (ite c!1368692 (regOne!39020 (regTwo!39021 r1!2370)) (reg!19583 (regTwo!39021 r1!2370))))) (ite (or c!1368695 c!1368694) lt!2614727 (Context!16389 call!675635)) c!10362))))

(declare-fun d!2282678 () Bool)

(declare-fun c!1368693 () Bool)

(assert (=> d!2282678 (= c!1368693 (and (is-ElementMatch!19254 (regTwo!39021 r1!2370)) (= (c!1368666 (regTwo!39021 r1!2370)) c!10362)))))

(assert (=> d!2282678 (= (derivationStepZipperDown!3080 (regTwo!39021 r1!2370) lt!2614727 c!10362) e!4409694)))

(declare-fun bm!675631 () Bool)

(assert (=> bm!675631 (= call!675635 call!675634)))

(assert (= (and d!2282678 c!1368693) b!7365376))

(assert (= (and d!2282678 (not c!1368693)) b!7365383))

(assert (= (and b!7365383 c!1368695) b!7365382))

(assert (= (and b!7365383 (not c!1368695)) b!7365375))

(assert (= (and b!7365375 res!2972770) b!7365377))

(assert (= (and b!7365375 c!1368694) b!7365385))

(assert (= (and b!7365375 (not c!1368694)) b!7365381))

(assert (= (and b!7365381 c!1368692) b!7365378))

(assert (= (and b!7365381 (not c!1368692)) b!7365384))

(assert (= (and b!7365384 c!1368691) b!7365380))

(assert (= (and b!7365384 (not c!1368691)) b!7365379))

(assert (= (or b!7365378 b!7365380) bm!675631))

(assert (= (or b!7365378 b!7365380) bm!675629))

(assert (= (or b!7365385 bm!675629) bm!675630))

(assert (= (or b!7365385 bm!675631) bm!675632))

(assert (= (or b!7365382 b!7365385) bm!675633))

(assert (= (or b!7365382 bm!675630) bm!675634))

(declare-fun m!8021226 () Bool)

(assert (=> b!7365376 m!8021226))

(declare-fun m!8021228 () Bool)

(assert (=> bm!675633 m!8021228))

(declare-fun m!8021230 () Bool)

(assert (=> bm!675632 m!8021230))

(declare-fun m!8021232 () Bool)

(assert (=> b!7365377 m!8021232))

(declare-fun m!8021234 () Bool)

(assert (=> bm!675634 m!8021234))

(assert (=> b!7365266 d!2282678))

(declare-fun d!2282680 () Bool)

(declare-fun forall!18062 (List!71750 Int) Bool)

(assert (=> d!2282680 (forall!18062 (++!17070 (exprs!8694 cWitness!61) (exprs!8694 ct2!378)) lambda!457684)))

(declare-fun lt!2614778 () Unit!165457)

(declare-fun choose!57278 (List!71750 List!71750 Int) Unit!165457)

(assert (=> d!2282680 (= lt!2614778 (choose!57278 (exprs!8694 cWitness!61) (exprs!8694 ct2!378) lambda!457684))))

(assert (=> d!2282680 (forall!18062 (exprs!8694 cWitness!61) lambda!457684)))

(assert (=> d!2282680 (= (lemmaConcatPreservesForall!1927 (exprs!8694 cWitness!61) (exprs!8694 ct2!378) lambda!457684) lt!2614778)))

(declare-fun bs!1920472 () Bool)

(assert (= bs!1920472 d!2282680))

(assert (=> bs!1920472 m!8021126))

(assert (=> bs!1920472 m!8021126))

(declare-fun m!8021236 () Bool)

(assert (=> bs!1920472 m!8021236))

(declare-fun m!8021238 () Bool)

(assert (=> bs!1920472 m!8021238))

(declare-fun m!8021240 () Bool)

(assert (=> bs!1920472 m!8021240))

(assert (=> b!7365266 d!2282680))

(declare-fun d!2282682 () Bool)

(assert (=> d!2282682 (forall!18062 (++!17070 (exprs!8694 ct1!282) (exprs!8694 ct2!378)) lambda!457684)))

(declare-fun lt!2614779 () Unit!165457)

(assert (=> d!2282682 (= lt!2614779 (choose!57278 (exprs!8694 ct1!282) (exprs!8694 ct2!378) lambda!457684))))

(assert (=> d!2282682 (forall!18062 (exprs!8694 ct1!282) lambda!457684)))

(assert (=> d!2282682 (= (lemmaConcatPreservesForall!1927 (exprs!8694 ct1!282) (exprs!8694 ct2!378) lambda!457684) lt!2614779)))

(declare-fun bs!1920473 () Bool)

(assert (= bs!1920473 d!2282682))

(assert (=> bs!1920473 m!8021146))

(assert (=> bs!1920473 m!8021146))

(declare-fun m!8021242 () Bool)

(assert (=> bs!1920473 m!8021242))

(declare-fun m!8021244 () Bool)

(assert (=> bs!1920473 m!8021244))

(declare-fun m!8021246 () Bool)

(assert (=> bs!1920473 m!8021246))

(assert (=> b!7365266 d!2282682))

(declare-fun b!7365386 () Bool)

(declare-fun c!1368699 () Bool)

(declare-fun e!4409703 () Bool)

(assert (=> b!7365386 (= c!1368699 e!4409703)))

(declare-fun res!2972771 () Bool)

(assert (=> b!7365386 (=> (not res!2972771) (not e!4409703))))

(assert (=> b!7365386 (= res!2972771 (is-Concat!28099 r1!2370))))

(declare-fun e!4409699 () (Set Context!16388))

(declare-fun e!4409702 () (Set Context!16388))

(assert (=> b!7365386 (= e!4409699 e!4409702)))

(declare-fun b!7365387 () Bool)

(declare-fun e!4409700 () (Set Context!16388))

(assert (=> b!7365387 (= e!4409700 (set.insert lt!2614727 (as set.empty (Set Context!16388))))))

(declare-fun b!7365388 () Bool)

(assert (=> b!7365388 (= e!4409703 (nullable!8332 (regOne!39020 r1!2370)))))

(declare-fun b!7365389 () Bool)

(declare-fun e!4409704 () (Set Context!16388))

(declare-fun call!675644 () (Set Context!16388))

(assert (=> b!7365389 (= e!4409704 call!675644)))

(declare-fun b!7365390 () Bool)

(declare-fun e!4409701 () (Set Context!16388))

(assert (=> b!7365390 (= e!4409701 (as set.empty (Set Context!16388)))))

(declare-fun b!7365391 () Bool)

(assert (=> b!7365391 (= e!4409701 call!675644)))

(declare-fun b!7365392 () Bool)

(assert (=> b!7365392 (= e!4409702 e!4409704)))

(declare-fun c!1368697 () Bool)

(assert (=> b!7365392 (= c!1368697 (is-Concat!28099 r1!2370))))

(declare-fun b!7365393 () Bool)

(declare-fun call!675642 () (Set Context!16388))

(declare-fun call!675643 () (Set Context!16388))

(assert (=> b!7365393 (= e!4409699 (set.union call!675642 call!675643))))

(declare-fun bm!675635 () Bool)

(declare-fun call!675645 () (Set Context!16388))

(assert (=> bm!675635 (= call!675644 call!675645)))

(declare-fun b!7365394 () Bool)

(assert (=> b!7365394 (= e!4409700 e!4409699)))

(declare-fun c!1368700 () Bool)

(assert (=> b!7365394 (= c!1368700 (is-Union!19254 r1!2370))))

(declare-fun bm!675636 () Bool)

(assert (=> bm!675636 (= call!675645 call!675642)))

(declare-fun b!7365395 () Bool)

(declare-fun c!1368696 () Bool)

(assert (=> b!7365395 (= c!1368696 (is-Star!19254 r1!2370))))

(assert (=> b!7365395 (= e!4409704 e!4409701)))

(declare-fun bm!675638 () Bool)

(declare-fun call!675640 () List!71750)

(assert (=> bm!675638 (= call!675640 ($colon$colon!3238 (exprs!8694 lt!2614727) (ite (or c!1368699 c!1368697) (regTwo!39020 r1!2370) r1!2370)))))

(declare-fun bm!675639 () Bool)

(assert (=> bm!675639 (= call!675643 (derivationStepZipperDown!3080 (ite c!1368700 (regTwo!39021 r1!2370) (regOne!39020 r1!2370)) (ite c!1368700 lt!2614727 (Context!16389 call!675640)) c!10362))))

(declare-fun b!7365396 () Bool)

(assert (=> b!7365396 (= e!4409702 (set.union call!675643 call!675645))))

(declare-fun bm!675640 () Bool)

(declare-fun call!675641 () List!71750)

(assert (=> bm!675640 (= call!675642 (derivationStepZipperDown!3080 (ite c!1368700 (regOne!39021 r1!2370) (ite c!1368699 (regTwo!39020 r1!2370) (ite c!1368697 (regOne!39020 r1!2370) (reg!19583 r1!2370)))) (ite (or c!1368700 c!1368699) lt!2614727 (Context!16389 call!675641)) c!10362))))

(declare-fun d!2282684 () Bool)

(declare-fun c!1368698 () Bool)

(assert (=> d!2282684 (= c!1368698 (and (is-ElementMatch!19254 r1!2370) (= (c!1368666 r1!2370) c!10362)))))

(assert (=> d!2282684 (= (derivationStepZipperDown!3080 r1!2370 lt!2614727 c!10362) e!4409700)))

(declare-fun bm!675637 () Bool)

(assert (=> bm!675637 (= call!675641 call!675640)))

(assert (= (and d!2282684 c!1368698) b!7365387))

(assert (= (and d!2282684 (not c!1368698)) b!7365394))

(assert (= (and b!7365394 c!1368700) b!7365393))

(assert (= (and b!7365394 (not c!1368700)) b!7365386))

(assert (= (and b!7365386 res!2972771) b!7365388))

(assert (= (and b!7365386 c!1368699) b!7365396))

(assert (= (and b!7365386 (not c!1368699)) b!7365392))

(assert (= (and b!7365392 c!1368697) b!7365389))

(assert (= (and b!7365392 (not c!1368697)) b!7365395))

(assert (= (and b!7365395 c!1368696) b!7365391))

(assert (= (and b!7365395 (not c!1368696)) b!7365390))

(assert (= (or b!7365389 b!7365391) bm!675637))

(assert (= (or b!7365389 b!7365391) bm!675635))

(assert (= (or b!7365396 bm!675635) bm!675636))

(assert (= (or b!7365396 bm!675637) bm!675638))

(assert (= (or b!7365393 b!7365396) bm!675639))

(assert (= (or b!7365393 bm!675636) bm!675640))

(assert (=> b!7365387 m!8021226))

(declare-fun m!8021248 () Bool)

(assert (=> bm!675639 m!8021248))

(declare-fun m!8021250 () Bool)

(assert (=> bm!675638 m!8021250))

(assert (=> b!7365388 m!8021196))

(declare-fun m!8021252 () Bool)

(assert (=> bm!675640 m!8021252))

(assert (=> b!7365265 d!2282684))

(declare-fun b!7365408 () Bool)

(declare-fun res!2972777 () Bool)

(declare-fun e!4409713 () Bool)

(assert (=> b!7365408 (=> (not res!2972777) (not e!4409713))))

(declare-fun lt!2614780 () List!71750)

(assert (=> b!7365408 (= res!2972777 (= (size!42116 lt!2614780) (+ (size!42116 (exprs!8694 ct1!282)) (size!42116 (exprs!8694 ct2!378)))))))

(declare-fun d!2282686 () Bool)

(assert (=> d!2282686 e!4409713))

(declare-fun res!2972778 () Bool)

(assert (=> d!2282686 (=> (not res!2972778) (not e!4409713))))

(assert (=> d!2282686 (= res!2972778 (= (content!15138 lt!2614780) (set.union (content!15138 (exprs!8694 ct1!282)) (content!15138 (exprs!8694 ct2!378)))))))

(declare-fun e!4409712 () List!71750)

(assert (=> d!2282686 (= lt!2614780 e!4409712)))

(declare-fun c!1368703 () Bool)

(assert (=> d!2282686 (= c!1368703 (is-Nil!71626 (exprs!8694 ct1!282)))))

(assert (=> d!2282686 (= (++!17070 (exprs!8694 ct1!282) (exprs!8694 ct2!378)) lt!2614780)))

(declare-fun b!7365407 () Bool)

(assert (=> b!7365407 (= e!4409712 (Cons!71626 (h!78074 (exprs!8694 ct1!282)) (++!17070 (t!386199 (exprs!8694 ct1!282)) (exprs!8694 ct2!378))))))

(declare-fun b!7365409 () Bool)

(assert (=> b!7365409 (= e!4409713 (or (not (= (exprs!8694 ct2!378) Nil!71626)) (= lt!2614780 (exprs!8694 ct1!282))))))

(declare-fun b!7365406 () Bool)

(assert (=> b!7365406 (= e!4409712 (exprs!8694 ct2!378))))

(assert (= (and d!2282686 c!1368703) b!7365406))

(assert (= (and d!2282686 (not c!1368703)) b!7365407))

(assert (= (and d!2282686 res!2972778) b!7365408))

(assert (= (and b!7365408 res!2972777) b!7365409))

(declare-fun m!8021254 () Bool)

(assert (=> b!7365408 m!8021254))

(declare-fun m!8021256 () Bool)

(assert (=> b!7365408 m!8021256))

(assert (=> b!7365408 m!8021216))

(declare-fun m!8021258 () Bool)

(assert (=> d!2282686 m!8021258))

(declare-fun m!8021260 () Bool)

(assert (=> d!2282686 m!8021260))

(assert (=> d!2282686 m!8021222))

(declare-fun m!8021264 () Bool)

(assert (=> b!7365407 m!8021264))

(assert (=> b!7365265 d!2282686))

(assert (=> b!7365265 d!2282682))

(declare-fun b!7365410 () Bool)

(declare-fun c!1368707 () Bool)

(declare-fun e!4409718 () Bool)

(assert (=> b!7365410 (= c!1368707 e!4409718)))

(declare-fun res!2972779 () Bool)

(assert (=> b!7365410 (=> (not res!2972779) (not e!4409718))))

(assert (=> b!7365410 (= res!2972779 (is-Concat!28099 (regTwo!39021 r1!2370)))))

(declare-fun e!4409714 () (Set Context!16388))

(declare-fun e!4409717 () (Set Context!16388))

(assert (=> b!7365410 (= e!4409714 e!4409717)))

(declare-fun b!7365411 () Bool)

(declare-fun e!4409715 () (Set Context!16388))

(assert (=> b!7365411 (= e!4409715 (set.insert ct1!282 (as set.empty (Set Context!16388))))))

(declare-fun b!7365412 () Bool)

(assert (=> b!7365412 (= e!4409718 (nullable!8332 (regOne!39020 (regTwo!39021 r1!2370))))))

(declare-fun b!7365413 () Bool)

(declare-fun e!4409719 () (Set Context!16388))

(declare-fun call!675653 () (Set Context!16388))

(assert (=> b!7365413 (= e!4409719 call!675653)))

(declare-fun b!7365414 () Bool)

(declare-fun e!4409716 () (Set Context!16388))

(assert (=> b!7365414 (= e!4409716 (as set.empty (Set Context!16388)))))

(declare-fun b!7365415 () Bool)

(assert (=> b!7365415 (= e!4409716 call!675653)))

(declare-fun b!7365416 () Bool)

(assert (=> b!7365416 (= e!4409717 e!4409719)))

(declare-fun c!1368705 () Bool)

(assert (=> b!7365416 (= c!1368705 (is-Concat!28099 (regTwo!39021 r1!2370)))))

(declare-fun b!7365417 () Bool)

(declare-fun call!675651 () (Set Context!16388))

(declare-fun call!675652 () (Set Context!16388))

(assert (=> b!7365417 (= e!4409714 (set.union call!675651 call!675652))))

(declare-fun bm!675644 () Bool)

(declare-fun call!675654 () (Set Context!16388))

(assert (=> bm!675644 (= call!675653 call!675654)))

(declare-fun b!7365418 () Bool)

(assert (=> b!7365418 (= e!4409715 e!4409714)))

(declare-fun c!1368708 () Bool)

(assert (=> b!7365418 (= c!1368708 (is-Union!19254 (regTwo!39021 r1!2370)))))

(declare-fun bm!675645 () Bool)

(assert (=> bm!675645 (= call!675654 call!675651)))

(declare-fun b!7365419 () Bool)

(declare-fun c!1368704 () Bool)

(assert (=> b!7365419 (= c!1368704 (is-Star!19254 (regTwo!39021 r1!2370)))))

(assert (=> b!7365419 (= e!4409719 e!4409716)))

(declare-fun call!675649 () List!71750)

(declare-fun bm!675647 () Bool)

(assert (=> bm!675647 (= call!675649 ($colon$colon!3238 (exprs!8694 ct1!282) (ite (or c!1368707 c!1368705) (regTwo!39020 (regTwo!39021 r1!2370)) (regTwo!39021 r1!2370))))))

(declare-fun bm!675648 () Bool)

(assert (=> bm!675648 (= call!675652 (derivationStepZipperDown!3080 (ite c!1368708 (regTwo!39021 (regTwo!39021 r1!2370)) (regOne!39020 (regTwo!39021 r1!2370))) (ite c!1368708 ct1!282 (Context!16389 call!675649)) c!10362))))

(declare-fun b!7365420 () Bool)

(assert (=> b!7365420 (= e!4409717 (set.union call!675652 call!675654))))

(declare-fun bm!675649 () Bool)

(declare-fun call!675650 () List!71750)

(assert (=> bm!675649 (= call!675651 (derivationStepZipperDown!3080 (ite c!1368708 (regOne!39021 (regTwo!39021 r1!2370)) (ite c!1368707 (regTwo!39020 (regTwo!39021 r1!2370)) (ite c!1368705 (regOne!39020 (regTwo!39021 r1!2370)) (reg!19583 (regTwo!39021 r1!2370))))) (ite (or c!1368708 c!1368707) ct1!282 (Context!16389 call!675650)) c!10362))))

(declare-fun d!2282688 () Bool)

(declare-fun c!1368706 () Bool)

(assert (=> d!2282688 (= c!1368706 (and (is-ElementMatch!19254 (regTwo!39021 r1!2370)) (= (c!1368666 (regTwo!39021 r1!2370)) c!10362)))))

(assert (=> d!2282688 (= (derivationStepZipperDown!3080 (regTwo!39021 r1!2370) ct1!282 c!10362) e!4409715)))

(declare-fun bm!675646 () Bool)

(assert (=> bm!675646 (= call!675650 call!675649)))

(assert (= (and d!2282688 c!1368706) b!7365411))

(assert (= (and d!2282688 (not c!1368706)) b!7365418))

(assert (= (and b!7365418 c!1368708) b!7365417))

(assert (= (and b!7365418 (not c!1368708)) b!7365410))

(assert (= (and b!7365410 res!2972779) b!7365412))

(assert (= (and b!7365410 c!1368707) b!7365420))

(assert (= (and b!7365410 (not c!1368707)) b!7365416))

(assert (= (and b!7365416 c!1368705) b!7365413))

(assert (= (and b!7365416 (not c!1368705)) b!7365419))

(assert (= (and b!7365419 c!1368704) b!7365415))

(assert (= (and b!7365419 (not c!1368704)) b!7365414))

(assert (= (or b!7365413 b!7365415) bm!675646))

(assert (= (or b!7365413 b!7365415) bm!675644))

(assert (= (or b!7365420 bm!675644) bm!675645))

(assert (= (or b!7365420 bm!675646) bm!675647))

(assert (= (or b!7365417 b!7365420) bm!675648))

(assert (= (or b!7365417 bm!675645) bm!675649))

(assert (=> b!7365411 m!8021190))

(declare-fun m!8021270 () Bool)

(assert (=> bm!675648 m!8021270))

(declare-fun m!8021272 () Bool)

(assert (=> bm!675647 m!8021272))

(assert (=> b!7365412 m!8021232))

(declare-fun m!8021274 () Bool)

(assert (=> bm!675649 m!8021274))

(assert (=> b!7365269 d!2282688))

(declare-fun b!7365421 () Bool)

(declare-fun c!1368712 () Bool)

(declare-fun e!4409724 () Bool)

(assert (=> b!7365421 (= c!1368712 e!4409724)))

(declare-fun res!2972780 () Bool)

(assert (=> b!7365421 (=> (not res!2972780) (not e!4409724))))

(assert (=> b!7365421 (= res!2972780 (is-Concat!28099 (regOne!39021 r1!2370)))))

(declare-fun e!4409720 () (Set Context!16388))

(declare-fun e!4409723 () (Set Context!16388))

(assert (=> b!7365421 (= e!4409720 e!4409723)))

(declare-fun b!7365422 () Bool)

(declare-fun e!4409721 () (Set Context!16388))

(assert (=> b!7365422 (= e!4409721 (set.insert ct1!282 (as set.empty (Set Context!16388))))))

(declare-fun b!7365423 () Bool)

(assert (=> b!7365423 (= e!4409724 (nullable!8332 (regOne!39020 (regOne!39021 r1!2370))))))

(declare-fun b!7365424 () Bool)

(declare-fun e!4409725 () (Set Context!16388))

(declare-fun call!675659 () (Set Context!16388))

(assert (=> b!7365424 (= e!4409725 call!675659)))

(declare-fun b!7365425 () Bool)

(declare-fun e!4409722 () (Set Context!16388))

(assert (=> b!7365425 (= e!4409722 (as set.empty (Set Context!16388)))))

(declare-fun b!7365426 () Bool)

(assert (=> b!7365426 (= e!4409722 call!675659)))

(declare-fun b!7365427 () Bool)

(assert (=> b!7365427 (= e!4409723 e!4409725)))

(declare-fun c!1368710 () Bool)

(assert (=> b!7365427 (= c!1368710 (is-Concat!28099 (regOne!39021 r1!2370)))))

(declare-fun b!7365428 () Bool)

(declare-fun call!675657 () (Set Context!16388))

(declare-fun call!675658 () (Set Context!16388))

(assert (=> b!7365428 (= e!4409720 (set.union call!675657 call!675658))))

(declare-fun bm!675650 () Bool)

(declare-fun call!675660 () (Set Context!16388))

(assert (=> bm!675650 (= call!675659 call!675660)))

(declare-fun b!7365429 () Bool)

(assert (=> b!7365429 (= e!4409721 e!4409720)))

(declare-fun c!1368713 () Bool)

(assert (=> b!7365429 (= c!1368713 (is-Union!19254 (regOne!39021 r1!2370)))))

(declare-fun bm!675651 () Bool)

(assert (=> bm!675651 (= call!675660 call!675657)))

(declare-fun b!7365430 () Bool)

(declare-fun c!1368709 () Bool)

(assert (=> b!7365430 (= c!1368709 (is-Star!19254 (regOne!39021 r1!2370)))))

(assert (=> b!7365430 (= e!4409725 e!4409722)))

(declare-fun bm!675653 () Bool)

(declare-fun call!675655 () List!71750)

(assert (=> bm!675653 (= call!675655 ($colon$colon!3238 (exprs!8694 ct1!282) (ite (or c!1368712 c!1368710) (regTwo!39020 (regOne!39021 r1!2370)) (regOne!39021 r1!2370))))))

(declare-fun bm!675654 () Bool)

(assert (=> bm!675654 (= call!675658 (derivationStepZipperDown!3080 (ite c!1368713 (regTwo!39021 (regOne!39021 r1!2370)) (regOne!39020 (regOne!39021 r1!2370))) (ite c!1368713 ct1!282 (Context!16389 call!675655)) c!10362))))

(declare-fun b!7365431 () Bool)

(assert (=> b!7365431 (= e!4409723 (set.union call!675658 call!675660))))

(declare-fun bm!675655 () Bool)

(declare-fun call!675656 () List!71750)

(assert (=> bm!675655 (= call!675657 (derivationStepZipperDown!3080 (ite c!1368713 (regOne!39021 (regOne!39021 r1!2370)) (ite c!1368712 (regTwo!39020 (regOne!39021 r1!2370)) (ite c!1368710 (regOne!39020 (regOne!39021 r1!2370)) (reg!19583 (regOne!39021 r1!2370))))) (ite (or c!1368713 c!1368712) ct1!282 (Context!16389 call!675656)) c!10362))))

(declare-fun d!2282692 () Bool)

(declare-fun c!1368711 () Bool)

(assert (=> d!2282692 (= c!1368711 (and (is-ElementMatch!19254 (regOne!39021 r1!2370)) (= (c!1368666 (regOne!39021 r1!2370)) c!10362)))))

(assert (=> d!2282692 (= (derivationStepZipperDown!3080 (regOne!39021 r1!2370) ct1!282 c!10362) e!4409721)))

(declare-fun bm!675652 () Bool)

(assert (=> bm!675652 (= call!675656 call!675655)))

(assert (= (and d!2282692 c!1368711) b!7365422))

(assert (= (and d!2282692 (not c!1368711)) b!7365429))

(assert (= (and b!7365429 c!1368713) b!7365428))

(assert (= (and b!7365429 (not c!1368713)) b!7365421))

(assert (= (and b!7365421 res!2972780) b!7365423))

(assert (= (and b!7365421 c!1368712) b!7365431))

(assert (= (and b!7365421 (not c!1368712)) b!7365427))

(assert (= (and b!7365427 c!1368710) b!7365424))

(assert (= (and b!7365427 (not c!1368710)) b!7365430))

(assert (= (and b!7365430 c!1368709) b!7365426))

(assert (= (and b!7365430 (not c!1368709)) b!7365425))

(assert (= (or b!7365424 b!7365426) bm!675652))

(assert (= (or b!7365424 b!7365426) bm!675650))

(assert (= (or b!7365431 bm!675650) bm!675651))

(assert (= (or b!7365431 bm!675652) bm!675653))

(assert (= (or b!7365428 b!7365431) bm!675654))

(assert (= (or b!7365428 bm!675651) bm!675655))

(assert (=> b!7365422 m!8021190))

(declare-fun m!8021276 () Bool)

(assert (=> bm!675654 m!8021276))

(declare-fun m!8021278 () Bool)

(assert (=> bm!675653 m!8021278))

(declare-fun m!8021280 () Bool)

(assert (=> b!7365423 m!8021280))

(declare-fun m!8021282 () Bool)

(assert (=> bm!675655 m!8021282))

(assert (=> b!7365269 d!2282692))

(declare-fun d!2282694 () Bool)

(declare-fun res!2972795 () Bool)

(declare-fun e!4409743 () Bool)

(assert (=> d!2282694 (=> res!2972795 e!4409743)))

(assert (=> d!2282694 (= res!2972795 (is-ElementMatch!19254 r1!2370))))

(assert (=> d!2282694 (= (validRegex!9850 r1!2370) e!4409743)))

(declare-fun b!7365450 () Bool)

(declare-fun e!4409741 () Bool)

(declare-fun e!4409742 () Bool)

(assert (=> b!7365450 (= e!4409741 e!4409742)))

(declare-fun c!1368719 () Bool)

(assert (=> b!7365450 (= c!1368719 (is-Union!19254 r1!2370))))

(declare-fun b!7365451 () Bool)

(assert (=> b!7365451 (= e!4409743 e!4409741)))

(declare-fun c!1368718 () Bool)

(assert (=> b!7365451 (= c!1368718 (is-Star!19254 r1!2370))))

(declare-fun call!675669 () Bool)

(declare-fun bm!675662 () Bool)

(assert (=> bm!675662 (= call!675669 (validRegex!9850 (ite c!1368718 (reg!19583 r1!2370) (ite c!1368719 (regTwo!39021 r1!2370) (regOne!39020 r1!2370)))))))

(declare-fun b!7365452 () Bool)

(declare-fun res!2972793 () Bool)

(declare-fun e!4409740 () Bool)

(assert (=> b!7365452 (=> (not res!2972793) (not e!4409740))))

(declare-fun call!675667 () Bool)

(assert (=> b!7365452 (= res!2972793 call!675667)))

(assert (=> b!7365452 (= e!4409742 e!4409740)))

(declare-fun b!7365453 () Bool)

(declare-fun res!2972792 () Bool)

(declare-fun e!4409744 () Bool)

(assert (=> b!7365453 (=> res!2972792 e!4409744)))

(assert (=> b!7365453 (= res!2972792 (not (is-Concat!28099 r1!2370)))))

(assert (=> b!7365453 (= e!4409742 e!4409744)))

(declare-fun bm!675663 () Bool)

(assert (=> bm!675663 (= call!675667 (validRegex!9850 (ite c!1368719 (regOne!39021 r1!2370) (regTwo!39020 r1!2370))))))

(declare-fun b!7365454 () Bool)

(declare-fun e!4409745 () Bool)

(assert (=> b!7365454 (= e!4409744 e!4409745)))

(declare-fun res!2972791 () Bool)

(assert (=> b!7365454 (=> (not res!2972791) (not e!4409745))))

(declare-fun call!675668 () Bool)

(assert (=> b!7365454 (= res!2972791 call!675668)))

(declare-fun b!7365455 () Bool)

(declare-fun e!4409746 () Bool)

(assert (=> b!7365455 (= e!4409741 e!4409746)))

(declare-fun res!2972794 () Bool)

(assert (=> b!7365455 (= res!2972794 (not (nullable!8332 (reg!19583 r1!2370))))))

(assert (=> b!7365455 (=> (not res!2972794) (not e!4409746))))

(declare-fun b!7365456 () Bool)

(assert (=> b!7365456 (= e!4409746 call!675669)))

(declare-fun b!7365457 () Bool)

(assert (=> b!7365457 (= e!4409745 call!675667)))

(declare-fun b!7365458 () Bool)

(assert (=> b!7365458 (= e!4409740 call!675668)))

(declare-fun bm!675664 () Bool)

(assert (=> bm!675664 (= call!675668 call!675669)))

(assert (= (and d!2282694 (not res!2972795)) b!7365451))

(assert (= (and b!7365451 c!1368718) b!7365455))

(assert (= (and b!7365451 (not c!1368718)) b!7365450))

(assert (= (and b!7365455 res!2972794) b!7365456))

(assert (= (and b!7365450 c!1368719) b!7365452))

(assert (= (and b!7365450 (not c!1368719)) b!7365453))

(assert (= (and b!7365452 res!2972793) b!7365458))

(assert (= (and b!7365453 (not res!2972792)) b!7365454))

(assert (= (and b!7365454 res!2972791) b!7365457))

(assert (= (or b!7365452 b!7365457) bm!675663))

(assert (= (or b!7365458 b!7365454) bm!675664))

(assert (= (or b!7365456 bm!675664) bm!675662))

(declare-fun m!8021290 () Bool)

(assert (=> bm!675662 m!8021290))

(declare-fun m!8021292 () Bool)

(assert (=> bm!675663 m!8021292))

(declare-fun m!8021294 () Bool)

(assert (=> b!7365455 m!8021294))

(assert (=> start!719010 d!2282694))

(declare-fun bs!1920483 () Bool)

(declare-fun d!2282702 () Bool)

(assert (= bs!1920483 (and d!2282702 b!7365265)))

(declare-fun lambda!457706 () Int)

(assert (=> bs!1920483 (= lambda!457706 lambda!457684)))

(declare-fun bs!1920484 () Bool)

(assert (= bs!1920484 (and d!2282702 d!2282672)))

(assert (=> bs!1920484 (= lambda!457706 lambda!457698)))

(assert (=> d!2282702 (= (inv!91476 cWitness!61) (forall!18062 (exprs!8694 cWitness!61) lambda!457706))))

(declare-fun bs!1920485 () Bool)

(assert (= bs!1920485 d!2282702))

(declare-fun m!8021296 () Bool)

(assert (=> bs!1920485 m!8021296))

(assert (=> start!719010 d!2282702))

(declare-fun bs!1920486 () Bool)

(declare-fun d!2282704 () Bool)

(assert (= bs!1920486 (and d!2282704 b!7365265)))

(declare-fun lambda!457707 () Int)

(assert (=> bs!1920486 (= lambda!457707 lambda!457684)))

(declare-fun bs!1920487 () Bool)

(assert (= bs!1920487 (and d!2282704 d!2282672)))

(assert (=> bs!1920487 (= lambda!457707 lambda!457698)))

(declare-fun bs!1920488 () Bool)

(assert (= bs!1920488 (and d!2282704 d!2282702)))

(assert (=> bs!1920488 (= lambda!457707 lambda!457706)))

(assert (=> d!2282704 (= (inv!91476 ct1!282) (forall!18062 (exprs!8694 ct1!282) lambda!457707))))

(declare-fun bs!1920489 () Bool)

(assert (= bs!1920489 d!2282704))

(declare-fun m!8021298 () Bool)

(assert (=> bs!1920489 m!8021298))

(assert (=> start!719010 d!2282704))

(declare-fun bs!1920490 () Bool)

(declare-fun d!2282706 () Bool)

(assert (= bs!1920490 (and d!2282706 b!7365265)))

(declare-fun lambda!457708 () Int)

(assert (=> bs!1920490 (= lambda!457708 lambda!457684)))

(declare-fun bs!1920491 () Bool)

(assert (= bs!1920491 (and d!2282706 d!2282672)))

(assert (=> bs!1920491 (= lambda!457708 lambda!457698)))

(declare-fun bs!1920492 () Bool)

(assert (= bs!1920492 (and d!2282706 d!2282702)))

(assert (=> bs!1920492 (= lambda!457708 lambda!457706)))

(declare-fun bs!1920493 () Bool)

(assert (= bs!1920493 (and d!2282706 d!2282704)))

(assert (=> bs!1920493 (= lambda!457708 lambda!457707)))

(assert (=> d!2282706 (= (inv!91476 ct2!378) (forall!18062 (exprs!8694 ct2!378) lambda!457708))))

(declare-fun bs!1920494 () Bool)

(assert (= bs!1920494 d!2282706))

(declare-fun m!8021300 () Bool)

(assert (=> bs!1920494 m!8021300))

(assert (=> start!719010 d!2282706))

(declare-fun b!7365463 () Bool)

(declare-fun e!4409749 () Bool)

(declare-fun tp!2093232 () Bool)

(declare-fun tp!2093233 () Bool)

(assert (=> b!7365463 (= e!4409749 (and tp!2093232 tp!2093233))))

(assert (=> b!7365270 (= tp!2093201 e!4409749)))

(assert (= (and b!7365270 (is-Cons!71626 (exprs!8694 ct1!282))) b!7365463))

(declare-fun b!7365475 () Bool)

(declare-fun e!4409752 () Bool)

(declare-fun tp!2093246 () Bool)

(declare-fun tp!2093248 () Bool)

(assert (=> b!7365475 (= e!4409752 (and tp!2093246 tp!2093248))))

(assert (=> b!7365264 (= tp!2093196 e!4409752)))

(declare-fun b!7365474 () Bool)

(assert (=> b!7365474 (= e!4409752 tp_is_empty!48753)))

(declare-fun b!7365477 () Bool)

(declare-fun tp!2093244 () Bool)

(declare-fun tp!2093247 () Bool)

(assert (=> b!7365477 (= e!4409752 (and tp!2093244 tp!2093247))))

(declare-fun b!7365476 () Bool)

(declare-fun tp!2093245 () Bool)

(assert (=> b!7365476 (= e!4409752 tp!2093245)))

(assert (= (and b!7365264 (is-ElementMatch!19254 (regOne!39020 r1!2370))) b!7365474))

(assert (= (and b!7365264 (is-Concat!28099 (regOne!39020 r1!2370))) b!7365475))

(assert (= (and b!7365264 (is-Star!19254 (regOne!39020 r1!2370))) b!7365476))

(assert (= (and b!7365264 (is-Union!19254 (regOne!39020 r1!2370))) b!7365477))

(declare-fun b!7365479 () Bool)

(declare-fun e!4409753 () Bool)

(declare-fun tp!2093251 () Bool)

(declare-fun tp!2093253 () Bool)

(assert (=> b!7365479 (= e!4409753 (and tp!2093251 tp!2093253))))

(assert (=> b!7365264 (= tp!2093203 e!4409753)))

(declare-fun b!7365478 () Bool)

(assert (=> b!7365478 (= e!4409753 tp_is_empty!48753)))

(declare-fun b!7365481 () Bool)

(declare-fun tp!2093249 () Bool)

(declare-fun tp!2093252 () Bool)

(assert (=> b!7365481 (= e!4409753 (and tp!2093249 tp!2093252))))

(declare-fun b!7365480 () Bool)

(declare-fun tp!2093250 () Bool)

(assert (=> b!7365480 (= e!4409753 tp!2093250)))

(assert (= (and b!7365264 (is-ElementMatch!19254 (regTwo!39020 r1!2370))) b!7365478))

(assert (= (and b!7365264 (is-Concat!28099 (regTwo!39020 r1!2370))) b!7365479))

(assert (= (and b!7365264 (is-Star!19254 (regTwo!39020 r1!2370))) b!7365480))

(assert (= (and b!7365264 (is-Union!19254 (regTwo!39020 r1!2370))) b!7365481))

(declare-fun b!7365482 () Bool)

(declare-fun e!4409754 () Bool)

(declare-fun tp!2093254 () Bool)

(declare-fun tp!2093255 () Bool)

(assert (=> b!7365482 (= e!4409754 (and tp!2093254 tp!2093255))))

(assert (=> b!7365275 (= tp!2093198 e!4409754)))

(assert (= (and b!7365275 (is-Cons!71626 (exprs!8694 cWitness!61))) b!7365482))

(declare-fun b!7365483 () Bool)

(declare-fun e!4409755 () Bool)

(declare-fun tp!2093256 () Bool)

(declare-fun tp!2093257 () Bool)

(assert (=> b!7365483 (= e!4409755 (and tp!2093256 tp!2093257))))

(assert (=> b!7365274 (= tp!2093199 e!4409755)))

(assert (= (and b!7365274 (is-Cons!71626 (exprs!8694 ct2!378))) b!7365483))

(declare-fun b!7365485 () Bool)

(declare-fun e!4409756 () Bool)

(declare-fun tp!2093260 () Bool)

(declare-fun tp!2093262 () Bool)

(assert (=> b!7365485 (= e!4409756 (and tp!2093260 tp!2093262))))

(assert (=> b!7365268 (= tp!2093202 e!4409756)))

(declare-fun b!7365484 () Bool)

(assert (=> b!7365484 (= e!4409756 tp_is_empty!48753)))

(declare-fun b!7365487 () Bool)

(declare-fun tp!2093258 () Bool)

(declare-fun tp!2093261 () Bool)

(assert (=> b!7365487 (= e!4409756 (and tp!2093258 tp!2093261))))

(declare-fun b!7365486 () Bool)

(declare-fun tp!2093259 () Bool)

(assert (=> b!7365486 (= e!4409756 tp!2093259)))

(assert (= (and b!7365268 (is-ElementMatch!19254 (regOne!39021 r1!2370))) b!7365484))

(assert (= (and b!7365268 (is-Concat!28099 (regOne!39021 r1!2370))) b!7365485))

(assert (= (and b!7365268 (is-Star!19254 (regOne!39021 r1!2370))) b!7365486))

(assert (= (and b!7365268 (is-Union!19254 (regOne!39021 r1!2370))) b!7365487))

(declare-fun b!7365489 () Bool)

(declare-fun e!4409757 () Bool)

(declare-fun tp!2093265 () Bool)

(declare-fun tp!2093267 () Bool)

(assert (=> b!7365489 (= e!4409757 (and tp!2093265 tp!2093267))))

(assert (=> b!7365268 (= tp!2093200 e!4409757)))

(declare-fun b!7365488 () Bool)

(assert (=> b!7365488 (= e!4409757 tp_is_empty!48753)))

(declare-fun b!7365491 () Bool)

(declare-fun tp!2093263 () Bool)

(declare-fun tp!2093266 () Bool)

(assert (=> b!7365491 (= e!4409757 (and tp!2093263 tp!2093266))))

(declare-fun b!7365490 () Bool)

(declare-fun tp!2093264 () Bool)

(assert (=> b!7365490 (= e!4409757 tp!2093264)))

(assert (= (and b!7365268 (is-ElementMatch!19254 (regTwo!39021 r1!2370))) b!7365488))

(assert (= (and b!7365268 (is-Concat!28099 (regTwo!39021 r1!2370))) b!7365489))

(assert (= (and b!7365268 (is-Star!19254 (regTwo!39021 r1!2370))) b!7365490))

(assert (= (and b!7365268 (is-Union!19254 (regTwo!39021 r1!2370))) b!7365491))

(declare-fun b!7365493 () Bool)

(declare-fun e!4409758 () Bool)

(declare-fun tp!2093270 () Bool)

(declare-fun tp!2093272 () Bool)

(assert (=> b!7365493 (= e!4409758 (and tp!2093270 tp!2093272))))

(assert (=> b!7365273 (= tp!2093197 e!4409758)))

(declare-fun b!7365492 () Bool)

(assert (=> b!7365492 (= e!4409758 tp_is_empty!48753)))

(declare-fun b!7365495 () Bool)

(declare-fun tp!2093268 () Bool)

(declare-fun tp!2093271 () Bool)

(assert (=> b!7365495 (= e!4409758 (and tp!2093268 tp!2093271))))

(declare-fun b!7365494 () Bool)

(declare-fun tp!2093269 () Bool)

(assert (=> b!7365494 (= e!4409758 tp!2093269)))

(assert (= (and b!7365273 (is-ElementMatch!19254 (reg!19583 r1!2370))) b!7365492))

(assert (= (and b!7365273 (is-Concat!28099 (reg!19583 r1!2370))) b!7365493))

(assert (= (and b!7365273 (is-Star!19254 (reg!19583 r1!2370))) b!7365494))

(assert (= (and b!7365273 (is-Union!19254 (reg!19583 r1!2370))) b!7365495))

(push 1)

(assert (not b!7365489))

(assert (not bm!675662))

(assert (not d!2282680))

(assert (not b!7365388))

(assert (not b!7365476))

(assert (not d!2282702))

(assert (not b!7365372))

(assert (not bm!675648))

(assert (not b!7365480))

(assert (not b!7365486))

(assert (not b!7365412))

(assert (not d!2282672))

(assert (not bm!675620))

(assert (not bm!675639))

(assert (not b!7365373))

(assert (not d!2282706))

(assert (not b!7365483))

(assert (not b!7365491))

(assert (not b!7365479))

(assert (not b!7365407))

(assert (not b!7365490))

(assert (not b!7365463))

(assert (not b!7365377))

(assert (not b!7365408))

(assert (not bm!675663))

(assert (not b!7365487))

(assert (not b!7365493))

(assert (not d!2282676))

(assert (not bm!675654))

(assert (not bm!675634))

(assert (not bm!675621))

(assert (not d!2282704))

(assert (not bm!675655))

(assert tp_is_empty!48753)

(assert (not b!7365495))

(assert (not d!2282686))

(assert (not bm!675632))

(assert (not bm!675633))

(assert (not bm!675622))

(assert (not bm!675638))

(assert (not b!7365494))

(assert (not b!7365455))

(assert (not b!7365477))

(assert (not bm!675653))

(assert (not b!7365485))

(assert (not b!7365481))

(assert (not b!7365482))

(assert (not b!7365475))

(assert (not d!2282682))

(assert (not bm!675647))

(assert (not b!7365336))

(assert (not b!7365423))

(assert (not bm!675649))

(assert (not bm!675640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

