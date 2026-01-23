; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716526 () Bool)

(assert start!716526)

(declare-fun b!7335418 () Bool)

(declare-fun e!4392506 () Bool)

(declare-fun tp!2082248 () Bool)

(assert (=> b!7335418 (= e!4392506 tp!2082248)))

(declare-fun b!7335419 () Bool)

(declare-fun res!2964088 () Bool)

(declare-fun e!4392504 () Bool)

(assert (=> b!7335419 (=> (not res!2964088) (not e!4392504))))

(declare-datatypes ((C!38422 0))(
  ( (C!38423 (val!29571 Int)) )
))
(declare-datatypes ((Regex!19074 0))(
  ( (ElementMatch!19074 (c!1362418 C!38422)) (Concat!27919 (regOne!38660 Regex!19074) (regTwo!38660 Regex!19074)) (EmptyExpr!19074) (Star!19074 (reg!19403 Regex!19074)) (EmptyLang!19074) (Union!19074 (regOne!38661 Regex!19074) (regTwo!38661 Regex!19074)) )
))
(declare-datatypes ((List!71570 0))(
  ( (Nil!71446) (Cons!71446 (h!77894 Regex!19074) (t!385965 List!71570)) )
))
(declare-datatypes ((Context!16028 0))(
  ( (Context!16029 (exprs!8514 List!71570)) )
))
(declare-fun ct1!256 () Context!16028)

(declare-fun isEmpty!40986 (List!71570) Bool)

(assert (=> b!7335419 (= res!2964088 (not (isEmpty!40986 (exprs!8514 ct1!256))))))

(declare-fun b!7335420 () Bool)

(declare-fun e!4392505 () Bool)

(assert (=> b!7335420 (= e!4392505 e!4392504)))

(declare-fun res!2964090 () Bool)

(assert (=> b!7335420 (=> (not res!2964090) (not e!4392504))))

(assert (=> b!7335420 (= res!2964090 (is-Cons!71446 (exprs!8514 ct1!256)))))

(declare-fun lt!2609149 () List!71570)

(declare-fun ct2!352 () Context!16028)

(declare-fun ++!16896 (List!71570 List!71570) List!71570)

(assert (=> b!7335420 (= lt!2609149 (++!16896 (exprs!8514 ct1!256) (exprs!8514 ct2!352)))))

(declare-fun lambda!455142 () Int)

(declare-datatypes ((Unit!165109 0))(
  ( (Unit!165110) )
))
(declare-fun lt!2609154 () Unit!165109)

(declare-fun lemmaConcatPreservesForall!1753 (List!71570 List!71570 Int) Unit!165109)

(assert (=> b!7335420 (= lt!2609154 (lemmaConcatPreservesForall!1753 (exprs!8514 ct1!256) (exprs!8514 ct2!352) lambda!455142))))

(declare-fun b!7335421 () Bool)

(declare-fun res!2964086 () Bool)

(declare-fun e!4392508 () Bool)

(assert (=> b!7335421 (=> (not res!2964086) (not e!4392508))))

(assert (=> b!7335421 (= res!2964086 (not (isEmpty!40986 lt!2609149)))))

(declare-fun b!7335422 () Bool)

(declare-fun e!4392507 () Bool)

(assert (=> b!7335422 (= e!4392508 (not e!4392507))))

(declare-fun res!2964089 () Bool)

(assert (=> b!7335422 (=> res!2964089 e!4392507)))

(declare-fun lt!2609155 () Context!16028)

(declare-fun lt!2609145 () (Set Context!16028))

(assert (=> b!7335422 (= res!2964089 (not (set.member lt!2609155 lt!2609145)))))

(declare-fun cWitness!35 () Context!16028)

(declare-fun lt!2609152 () Unit!165109)

(assert (=> b!7335422 (= lt!2609152 (lemmaConcatPreservesForall!1753 (exprs!8514 cWitness!35) (exprs!8514 ct2!352) lambda!455142))))

(declare-fun c!10305 () C!38422)

(declare-fun lt!2609147 () List!71570)

(declare-fun derivationStepZipperDown!2901 (Regex!19074 Context!16028 C!38422) (Set Context!16028))

(assert (=> b!7335422 (set.member lt!2609155 (derivationStepZipperDown!2901 (h!77894 (exprs!8514 ct1!256)) (Context!16029 (++!16896 lt!2609147 (exprs!8514 ct2!352))) c!10305))))

(assert (=> b!7335422 (= lt!2609155 (Context!16029 (++!16896 (exprs!8514 cWitness!35) (exprs!8514 ct2!352))))))

(declare-fun lt!2609146 () Unit!165109)

(assert (=> b!7335422 (= lt!2609146 (lemmaConcatPreservesForall!1753 lt!2609147 (exprs!8514 ct2!352) lambda!455142))))

(declare-fun lt!2609157 () Unit!165109)

(assert (=> b!7335422 (= lt!2609157 (lemmaConcatPreservesForall!1753 (exprs!8514 cWitness!35) (exprs!8514 ct2!352) lambda!455142))))

(declare-fun lt!2609151 () Context!16028)

(declare-fun lt!2609148 () Unit!165109)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!39 (Regex!19074 Context!16028 Context!16028 Context!16028 C!38422) Unit!165109)

(assert (=> b!7335422 (= lt!2609148 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!39 (h!77894 (exprs!8514 ct1!256)) lt!2609151 ct2!352 cWitness!35 c!10305))))

(declare-fun tail!14755 (List!71570) List!71570)

(assert (=> b!7335422 (= lt!2609145 (derivationStepZipperDown!2901 (h!77894 (exprs!8514 ct1!256)) (Context!16029 (tail!14755 lt!2609149)) c!10305))))

(declare-fun b!7335423 () Bool)

(declare-fun e!4392509 () Bool)

(declare-fun tp!2082246 () Bool)

(assert (=> b!7335423 (= e!4392509 tp!2082246)))

(declare-fun b!7335424 () Bool)

(declare-fun derivationStepZipperUp!2754 (Context!16028 C!38422) (Set Context!16028))

(assert (=> b!7335424 (= e!4392507 (set.member lt!2609155 (derivationStepZipperUp!2754 (Context!16029 lt!2609149) c!10305)))))

(declare-fun lt!2609156 () Unit!165109)

(assert (=> b!7335424 (= lt!2609156 (lemmaConcatPreservesForall!1753 (exprs!8514 ct1!256) (exprs!8514 ct2!352) lambda!455142))))

(declare-fun lt!2609144 () Unit!165109)

(assert (=> b!7335424 (= lt!2609144 (lemmaConcatPreservesForall!1753 (exprs!8514 cWitness!35) (exprs!8514 ct2!352) lambda!455142))))

(declare-fun b!7335426 () Bool)

(declare-fun res!2964085 () Bool)

(assert (=> b!7335426 (=> (not res!2964085) (not e!4392508))))

(declare-fun lt!2609153 () (Set Context!16028))

(declare-fun lt!2609150 () (Set Context!16028))

(assert (=> b!7335426 (= res!2964085 (and (= lt!2609150 lt!2609153) (set.member cWitness!35 lt!2609153)))))

(declare-fun b!7335427 () Bool)

(declare-fun e!4392503 () Bool)

(declare-fun tp!2082247 () Bool)

(assert (=> b!7335427 (= e!4392503 tp!2082247)))

(declare-fun res!2964091 () Bool)

(assert (=> start!716526 (=> (not res!2964091) (not e!4392505))))

(assert (=> start!716526 (= res!2964091 (set.member cWitness!35 lt!2609150))))

(assert (=> start!716526 (= lt!2609150 (derivationStepZipperUp!2754 ct1!256 c!10305))))

(assert (=> start!716526 e!4392505))

(declare-fun tp_is_empty!48393 () Bool)

(assert (=> start!716526 tp_is_empty!48393))

(declare-fun inv!91026 (Context!16028) Bool)

(assert (=> start!716526 (and (inv!91026 cWitness!35) e!4392503)))

(assert (=> start!716526 (and (inv!91026 ct1!256) e!4392509)))

(assert (=> start!716526 (and (inv!91026 ct2!352) e!4392506)))

(declare-fun b!7335425 () Bool)

(assert (=> b!7335425 (= e!4392504 e!4392508)))

(declare-fun res!2964087 () Bool)

(assert (=> b!7335425 (=> (not res!2964087) (not e!4392508))))

(declare-fun nullable!8175 (Regex!19074) Bool)

(assert (=> b!7335425 (= res!2964087 (not (nullable!8175 (h!77894 (exprs!8514 ct1!256)))))))

(assert (=> b!7335425 (= lt!2609153 (derivationStepZipperDown!2901 (h!77894 (exprs!8514 ct1!256)) lt!2609151 c!10305))))

(assert (=> b!7335425 (= lt!2609151 (Context!16029 lt!2609147))))

(assert (=> b!7335425 (= lt!2609147 (tail!14755 (exprs!8514 ct1!256)))))

(assert (= (and start!716526 res!2964091) b!7335420))

(assert (= (and b!7335420 res!2964090) b!7335419))

(assert (= (and b!7335419 res!2964088) b!7335425))

(assert (= (and b!7335425 res!2964087) b!7335426))

(assert (= (and b!7335426 res!2964085) b!7335421))

(assert (= (and b!7335421 res!2964086) b!7335422))

(assert (= (and b!7335422 (not res!2964089)) b!7335424))

(assert (= start!716526 b!7335427))

(assert (= start!716526 b!7335423))

(assert (= start!716526 b!7335418))

(declare-fun m!8001414 () Bool)

(assert (=> b!7335425 m!8001414))

(declare-fun m!8001416 () Bool)

(assert (=> b!7335425 m!8001416))

(declare-fun m!8001418 () Bool)

(assert (=> b!7335425 m!8001418))

(declare-fun m!8001420 () Bool)

(assert (=> start!716526 m!8001420))

(declare-fun m!8001422 () Bool)

(assert (=> start!716526 m!8001422))

(declare-fun m!8001424 () Bool)

(assert (=> start!716526 m!8001424))

(declare-fun m!8001426 () Bool)

(assert (=> start!716526 m!8001426))

(declare-fun m!8001428 () Bool)

(assert (=> start!716526 m!8001428))

(declare-fun m!8001430 () Bool)

(assert (=> b!7335426 m!8001430))

(declare-fun m!8001432 () Bool)

(assert (=> b!7335424 m!8001432))

(declare-fun m!8001434 () Bool)

(assert (=> b!7335424 m!8001434))

(declare-fun m!8001436 () Bool)

(assert (=> b!7335424 m!8001436))

(declare-fun m!8001438 () Bool)

(assert (=> b!7335424 m!8001438))

(declare-fun m!8001440 () Bool)

(assert (=> b!7335421 m!8001440))

(declare-fun m!8001442 () Bool)

(assert (=> b!7335420 m!8001442))

(assert (=> b!7335420 m!8001436))

(declare-fun m!8001444 () Bool)

(assert (=> b!7335419 m!8001444))

(declare-fun m!8001446 () Bool)

(assert (=> b!7335422 m!8001446))

(declare-fun m!8001448 () Bool)

(assert (=> b!7335422 m!8001448))

(declare-fun m!8001450 () Bool)

(assert (=> b!7335422 m!8001450))

(assert (=> b!7335422 m!8001438))

(declare-fun m!8001452 () Bool)

(assert (=> b!7335422 m!8001452))

(declare-fun m!8001454 () Bool)

(assert (=> b!7335422 m!8001454))

(declare-fun m!8001456 () Bool)

(assert (=> b!7335422 m!8001456))

(declare-fun m!8001458 () Bool)

(assert (=> b!7335422 m!8001458))

(declare-fun m!8001460 () Bool)

(assert (=> b!7335422 m!8001460))

(assert (=> b!7335422 m!8001438))

(declare-fun m!8001462 () Bool)

(assert (=> b!7335422 m!8001462))

(push 1)

(assert (not b!7335420))

(assert (not b!7335425))

(assert (not b!7335421))

(assert (not b!7335418))

(assert (not b!7335427))

(assert (not b!7335424))

(assert (not start!716526))

(assert (not b!7335423))

(assert (not b!7335419))

(assert (not b!7335422))

(assert tp_is_empty!48393)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2277940 () Bool)

(assert (=> d!2277940 (= (isEmpty!40986 (exprs!8514 ct1!256)) (is-Nil!71446 (exprs!8514 ct1!256)))))

(assert (=> b!7335419 d!2277940))

(declare-fun d!2277942 () Bool)

(declare-fun c!1362424 () Bool)

(declare-fun e!4392539 () Bool)

(assert (=> d!2277942 (= c!1362424 e!4392539)))

(declare-fun res!2964115 () Bool)

(assert (=> d!2277942 (=> (not res!2964115) (not e!4392539))))

(assert (=> d!2277942 (= res!2964115 (is-Cons!71446 (exprs!8514 (Context!16029 lt!2609149))))))

(declare-fun e!4392537 () (Set Context!16028))

(assert (=> d!2277942 (= (derivationStepZipperUp!2754 (Context!16029 lt!2609149) c!10305) e!4392537)))

(declare-fun b!7335468 () Bool)

(declare-fun e!4392538 () (Set Context!16028))

(assert (=> b!7335468 (= e!4392537 e!4392538)))

(declare-fun c!1362425 () Bool)

(assert (=> b!7335468 (= c!1362425 (is-Cons!71446 (exprs!8514 (Context!16029 lt!2609149))))))

(declare-fun bm!668845 () Bool)

(declare-fun call!668850 () (Set Context!16028))

(assert (=> bm!668845 (= call!668850 (derivationStepZipperDown!2901 (h!77894 (exprs!8514 (Context!16029 lt!2609149))) (Context!16029 (t!385965 (exprs!8514 (Context!16029 lt!2609149)))) c!10305))))

(declare-fun b!7335469 () Bool)

(assert (=> b!7335469 (= e!4392539 (nullable!8175 (h!77894 (exprs!8514 (Context!16029 lt!2609149)))))))

(declare-fun b!7335470 () Bool)

(assert (=> b!7335470 (= e!4392537 (set.union call!668850 (derivationStepZipperUp!2754 (Context!16029 (t!385965 (exprs!8514 (Context!16029 lt!2609149)))) c!10305)))))

(declare-fun b!7335471 () Bool)

(assert (=> b!7335471 (= e!4392538 (as set.empty (Set Context!16028)))))

(declare-fun b!7335472 () Bool)

(assert (=> b!7335472 (= e!4392538 call!668850)))

(assert (= (and d!2277942 res!2964115) b!7335469))

(assert (= (and d!2277942 c!1362424) b!7335470))

(assert (= (and d!2277942 (not c!1362424)) b!7335468))

(assert (= (and b!7335468 c!1362425) b!7335472))

(assert (= (and b!7335468 (not c!1362425)) b!7335471))

(assert (= (or b!7335470 b!7335472) bm!668845))

(declare-fun m!8001514 () Bool)

(assert (=> bm!668845 m!8001514))

(declare-fun m!8001516 () Bool)

(assert (=> b!7335469 m!8001516))

(declare-fun m!8001518 () Bool)

(assert (=> b!7335470 m!8001518))

(assert (=> b!7335424 d!2277942))

(declare-fun d!2277946 () Bool)

(declare-fun forall!17910 (List!71570 Int) Bool)

(assert (=> d!2277946 (forall!17910 (++!16896 (exprs!8514 ct1!256) (exprs!8514 ct2!352)) lambda!455142)))

(declare-fun lt!2609202 () Unit!165109)

(declare-fun choose!57061 (List!71570 List!71570 Int) Unit!165109)

(assert (=> d!2277946 (= lt!2609202 (choose!57061 (exprs!8514 ct1!256) (exprs!8514 ct2!352) lambda!455142))))

(assert (=> d!2277946 (forall!17910 (exprs!8514 ct1!256) lambda!455142)))

(assert (=> d!2277946 (= (lemmaConcatPreservesForall!1753 (exprs!8514 ct1!256) (exprs!8514 ct2!352) lambda!455142) lt!2609202)))

(declare-fun bs!1917954 () Bool)

(assert (= bs!1917954 d!2277946))

(assert (=> bs!1917954 m!8001442))

(assert (=> bs!1917954 m!8001442))

(declare-fun m!8001520 () Bool)

(assert (=> bs!1917954 m!8001520))

(declare-fun m!8001522 () Bool)

(assert (=> bs!1917954 m!8001522))

(declare-fun m!8001524 () Bool)

(assert (=> bs!1917954 m!8001524))

(assert (=> b!7335424 d!2277946))

(declare-fun d!2277948 () Bool)

(assert (=> d!2277948 (forall!17910 (++!16896 (exprs!8514 cWitness!35) (exprs!8514 ct2!352)) lambda!455142)))

(declare-fun lt!2609203 () Unit!165109)

(assert (=> d!2277948 (= lt!2609203 (choose!57061 (exprs!8514 cWitness!35) (exprs!8514 ct2!352) lambda!455142))))

(assert (=> d!2277948 (forall!17910 (exprs!8514 cWitness!35) lambda!455142)))

(assert (=> d!2277948 (= (lemmaConcatPreservesForall!1753 (exprs!8514 cWitness!35) (exprs!8514 ct2!352) lambda!455142) lt!2609203)))

(declare-fun bs!1917955 () Bool)

(assert (= bs!1917955 d!2277948))

(assert (=> bs!1917955 m!8001452))

(assert (=> bs!1917955 m!8001452))

(declare-fun m!8001526 () Bool)

(assert (=> bs!1917955 m!8001526))

(declare-fun m!8001528 () Bool)

(assert (=> bs!1917955 m!8001528))

(declare-fun m!8001530 () Bool)

(assert (=> bs!1917955 m!8001530))

(assert (=> b!7335424 d!2277948))

(declare-fun d!2277950 () Bool)

(declare-fun nullableFct!3265 (Regex!19074) Bool)

(assert (=> d!2277950 (= (nullable!8175 (h!77894 (exprs!8514 ct1!256))) (nullableFct!3265 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun bs!1917956 () Bool)

(assert (= bs!1917956 d!2277950))

(declare-fun m!8001532 () Bool)

(assert (=> bs!1917956 m!8001532))

(assert (=> b!7335425 d!2277950))

(declare-fun c!1362443 () Bool)

(declare-fun c!1362446 () Bool)

(declare-fun bm!668861 () Bool)

(declare-fun c!1362442 () Bool)

(declare-fun call!668868 () List!71570)

(declare-fun call!668869 () (Set Context!16028))

(assert (=> bm!668861 (= call!668869 (derivationStepZipperDown!2901 (ite c!1362443 (regOne!38661 (h!77894 (exprs!8514 ct1!256))) (ite c!1362442 (regTwo!38660 (h!77894 (exprs!8514 ct1!256))) (ite c!1362446 (regOne!38660 (h!77894 (exprs!8514 ct1!256))) (reg!19403 (h!77894 (exprs!8514 ct1!256)))))) (ite (or c!1362443 c!1362442) lt!2609151 (Context!16029 call!668868)) c!10305))))

(declare-fun b!7335510 () Bool)

(declare-fun c!1362444 () Bool)

(assert (=> b!7335510 (= c!1362444 (is-Star!19074 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun e!4392564 () (Set Context!16028))

(declare-fun e!4392562 () (Set Context!16028))

(assert (=> b!7335510 (= e!4392564 e!4392562)))

(declare-fun b!7335511 () Bool)

(declare-fun e!4392566 () (Set Context!16028))

(assert (=> b!7335511 (= e!4392566 (set.insert lt!2609151 (as set.empty (Set Context!16028))))))

(declare-fun b!7335512 () Bool)

(declare-fun e!4392565 () Bool)

(assert (=> b!7335512 (= c!1362442 e!4392565)))

(declare-fun res!2964121 () Bool)

(assert (=> b!7335512 (=> (not res!2964121) (not e!4392565))))

(assert (=> b!7335512 (= res!2964121 (is-Concat!27919 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun e!4392563 () (Set Context!16028))

(declare-fun e!4392561 () (Set Context!16028))

(assert (=> b!7335512 (= e!4392563 e!4392561)))

(declare-fun b!7335513 () Bool)

(declare-fun call!668871 () (Set Context!16028))

(assert (=> b!7335513 (= e!4392562 call!668871)))

(declare-fun b!7335514 () Bool)

(assert (=> b!7335514 (= e!4392562 (as set.empty (Set Context!16028)))))

(declare-fun b!7335515 () Bool)

(assert (=> b!7335515 (= e!4392561 e!4392564)))

(assert (=> b!7335515 (= c!1362446 (is-Concat!27919 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun b!7335516 () Bool)

(assert (=> b!7335516 (= e!4392565 (nullable!8175 (regOne!38660 (h!77894 (exprs!8514 ct1!256)))))))

(declare-fun bm!668863 () Bool)

(declare-fun call!668870 () List!71570)

(assert (=> bm!668863 (= call!668868 call!668870)))

(declare-fun bm!668864 () Bool)

(declare-fun call!668867 () (Set Context!16028))

(assert (=> bm!668864 (= call!668867 call!668869)))

(declare-fun bm!668865 () Bool)

(assert (=> bm!668865 (= call!668871 call!668867)))

(declare-fun b!7335517 () Bool)

(declare-fun call!668866 () (Set Context!16028))

(assert (=> b!7335517 (= e!4392561 (set.union call!668866 call!668867))))

(declare-fun b!7335518 () Bool)

(assert (=> b!7335518 (= e!4392566 e!4392563)))

(assert (=> b!7335518 (= c!1362443 (is-Union!19074 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun b!7335519 () Bool)

(assert (=> b!7335519 (= e!4392563 (set.union call!668869 call!668866))))

(declare-fun b!7335520 () Bool)

(assert (=> b!7335520 (= e!4392564 call!668871)))

(declare-fun bm!668866 () Bool)

(declare-fun $colon$colon!3083 (List!71570 Regex!19074) List!71570)

(assert (=> bm!668866 (= call!668870 ($colon$colon!3083 (exprs!8514 lt!2609151) (ite (or c!1362442 c!1362446) (regTwo!38660 (h!77894 (exprs!8514 ct1!256))) (h!77894 (exprs!8514 ct1!256)))))))

(declare-fun bm!668862 () Bool)

(assert (=> bm!668862 (= call!668866 (derivationStepZipperDown!2901 (ite c!1362443 (regTwo!38661 (h!77894 (exprs!8514 ct1!256))) (regOne!38660 (h!77894 (exprs!8514 ct1!256)))) (ite c!1362443 lt!2609151 (Context!16029 call!668870)) c!10305))))

(declare-fun d!2277952 () Bool)

(declare-fun c!1362445 () Bool)

(assert (=> d!2277952 (= c!1362445 (and (is-ElementMatch!19074 (h!77894 (exprs!8514 ct1!256))) (= (c!1362418 (h!77894 (exprs!8514 ct1!256))) c!10305)))))

(assert (=> d!2277952 (= (derivationStepZipperDown!2901 (h!77894 (exprs!8514 ct1!256)) lt!2609151 c!10305) e!4392566)))

(assert (= (and d!2277952 c!1362445) b!7335511))

(assert (= (and d!2277952 (not c!1362445)) b!7335518))

(assert (= (and b!7335518 c!1362443) b!7335519))

(assert (= (and b!7335518 (not c!1362443)) b!7335512))

(assert (= (and b!7335512 res!2964121) b!7335516))

(assert (= (and b!7335512 c!1362442) b!7335517))

(assert (= (and b!7335512 (not c!1362442)) b!7335515))

(assert (= (and b!7335515 c!1362446) b!7335520))

(assert (= (and b!7335515 (not c!1362446)) b!7335510))

(assert (= (and b!7335510 c!1362444) b!7335513))

(assert (= (and b!7335510 (not c!1362444)) b!7335514))

(assert (= (or b!7335520 b!7335513) bm!668863))

(assert (= (or b!7335520 b!7335513) bm!668865))

(assert (= (or b!7335517 bm!668865) bm!668864))

(assert (= (or b!7335517 bm!668863) bm!668866))

(assert (= (or b!7335519 b!7335517) bm!668862))

(assert (= (or b!7335519 bm!668864) bm!668861))

(declare-fun m!8001544 () Bool)

(assert (=> bm!668866 m!8001544))

(declare-fun m!8001546 () Bool)

(assert (=> bm!668862 m!8001546))

(declare-fun m!8001548 () Bool)

(assert (=> b!7335516 m!8001548))

(declare-fun m!8001550 () Bool)

(assert (=> bm!668861 m!8001550))

(declare-fun m!8001552 () Bool)

(assert (=> b!7335511 m!8001552))

(assert (=> b!7335425 d!2277952))

(declare-fun d!2277964 () Bool)

(assert (=> d!2277964 (= (tail!14755 (exprs!8514 ct1!256)) (t!385965 (exprs!8514 ct1!256)))))

(assert (=> b!7335425 d!2277964))

(declare-fun d!2277966 () Bool)

(declare-fun c!1362447 () Bool)

(declare-fun e!4392569 () Bool)

(assert (=> d!2277966 (= c!1362447 e!4392569)))

(declare-fun res!2964122 () Bool)

(assert (=> d!2277966 (=> (not res!2964122) (not e!4392569))))

(assert (=> d!2277966 (= res!2964122 (is-Cons!71446 (exprs!8514 ct1!256)))))

(declare-fun e!4392567 () (Set Context!16028))

(assert (=> d!2277966 (= (derivationStepZipperUp!2754 ct1!256 c!10305) e!4392567)))

(declare-fun b!7335521 () Bool)

(declare-fun e!4392568 () (Set Context!16028))

(assert (=> b!7335521 (= e!4392567 e!4392568)))

(declare-fun c!1362448 () Bool)

(assert (=> b!7335521 (= c!1362448 (is-Cons!71446 (exprs!8514 ct1!256)))))

(declare-fun bm!668867 () Bool)

(declare-fun call!668872 () (Set Context!16028))

(assert (=> bm!668867 (= call!668872 (derivationStepZipperDown!2901 (h!77894 (exprs!8514 ct1!256)) (Context!16029 (t!385965 (exprs!8514 ct1!256))) c!10305))))

(declare-fun b!7335522 () Bool)

(assert (=> b!7335522 (= e!4392569 (nullable!8175 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun b!7335523 () Bool)

(assert (=> b!7335523 (= e!4392567 (set.union call!668872 (derivationStepZipperUp!2754 (Context!16029 (t!385965 (exprs!8514 ct1!256))) c!10305)))))

(declare-fun b!7335524 () Bool)

(assert (=> b!7335524 (= e!4392568 (as set.empty (Set Context!16028)))))

(declare-fun b!7335525 () Bool)

(assert (=> b!7335525 (= e!4392568 call!668872)))

(assert (= (and d!2277966 res!2964122) b!7335522))

(assert (= (and d!2277966 c!1362447) b!7335523))

(assert (= (and d!2277966 (not c!1362447)) b!7335521))

(assert (= (and b!7335521 c!1362448) b!7335525))

(assert (= (and b!7335521 (not c!1362448)) b!7335524))

(assert (= (or b!7335523 b!7335525) bm!668867))

(declare-fun m!8001554 () Bool)

(assert (=> bm!668867 m!8001554))

(assert (=> b!7335522 m!8001414))

(declare-fun m!8001556 () Bool)

(assert (=> b!7335523 m!8001556))

(assert (=> start!716526 d!2277966))

(declare-fun bs!1917966 () Bool)

(declare-fun d!2277968 () Bool)

(assert (= bs!1917966 (and d!2277968 b!7335420)))

(declare-fun lambda!455163 () Int)

(assert (=> bs!1917966 (= lambda!455163 lambda!455142)))

(assert (=> d!2277968 (= (inv!91026 cWitness!35) (forall!17910 (exprs!8514 cWitness!35) lambda!455163))))

(declare-fun bs!1917967 () Bool)

(assert (= bs!1917967 d!2277968))

(declare-fun m!8001558 () Bool)

(assert (=> bs!1917967 m!8001558))

(assert (=> start!716526 d!2277968))

(declare-fun bs!1917968 () Bool)

(declare-fun d!2277970 () Bool)

(assert (= bs!1917968 (and d!2277970 b!7335420)))

(declare-fun lambda!455164 () Int)

(assert (=> bs!1917968 (= lambda!455164 lambda!455142)))

(declare-fun bs!1917969 () Bool)

(assert (= bs!1917969 (and d!2277970 d!2277968)))

(assert (=> bs!1917969 (= lambda!455164 lambda!455163)))

(assert (=> d!2277970 (= (inv!91026 ct1!256) (forall!17910 (exprs!8514 ct1!256) lambda!455164))))

(declare-fun bs!1917970 () Bool)

(assert (= bs!1917970 d!2277970))

(declare-fun m!8001560 () Bool)

(assert (=> bs!1917970 m!8001560))

(assert (=> start!716526 d!2277970))

(declare-fun bs!1917971 () Bool)

(declare-fun d!2277972 () Bool)

(assert (= bs!1917971 (and d!2277972 b!7335420)))

(declare-fun lambda!455165 () Int)

(assert (=> bs!1917971 (= lambda!455165 lambda!455142)))

(declare-fun bs!1917972 () Bool)

(assert (= bs!1917972 (and d!2277972 d!2277968)))

(assert (=> bs!1917972 (= lambda!455165 lambda!455163)))

(declare-fun bs!1917973 () Bool)

(assert (= bs!1917973 (and d!2277972 d!2277970)))

(assert (=> bs!1917973 (= lambda!455165 lambda!455164)))

(assert (=> d!2277972 (= (inv!91026 ct2!352) (forall!17910 (exprs!8514 ct2!352) lambda!455165))))

(declare-fun bs!1917974 () Bool)

(assert (= bs!1917974 d!2277972))

(declare-fun m!8001562 () Bool)

(assert (=> bs!1917974 m!8001562))

(assert (=> start!716526 d!2277972))

(declare-fun d!2277974 () Bool)

(assert (=> d!2277974 (= (tail!14755 lt!2609149) (t!385965 lt!2609149))))

(assert (=> b!7335422 d!2277974))

(declare-fun c!1362450 () Bool)

(declare-fun bm!668868 () Bool)

(declare-fun c!1362453 () Bool)

(declare-fun c!1362449 () Bool)

(declare-fun call!668875 () List!71570)

(declare-fun call!668876 () (Set Context!16028))

(assert (=> bm!668868 (= call!668876 (derivationStepZipperDown!2901 (ite c!1362450 (regOne!38661 (h!77894 (exprs!8514 ct1!256))) (ite c!1362449 (regTwo!38660 (h!77894 (exprs!8514 ct1!256))) (ite c!1362453 (regOne!38660 (h!77894 (exprs!8514 ct1!256))) (reg!19403 (h!77894 (exprs!8514 ct1!256)))))) (ite (or c!1362450 c!1362449) (Context!16029 (tail!14755 lt!2609149)) (Context!16029 call!668875)) c!10305))))

(declare-fun b!7335526 () Bool)

(declare-fun c!1362451 () Bool)

(assert (=> b!7335526 (= c!1362451 (is-Star!19074 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun e!4392573 () (Set Context!16028))

(declare-fun e!4392571 () (Set Context!16028))

(assert (=> b!7335526 (= e!4392573 e!4392571)))

(declare-fun b!7335527 () Bool)

(declare-fun e!4392575 () (Set Context!16028))

(assert (=> b!7335527 (= e!4392575 (set.insert (Context!16029 (tail!14755 lt!2609149)) (as set.empty (Set Context!16028))))))

(declare-fun b!7335528 () Bool)

(declare-fun e!4392574 () Bool)

(assert (=> b!7335528 (= c!1362449 e!4392574)))

(declare-fun res!2964123 () Bool)

(assert (=> b!7335528 (=> (not res!2964123) (not e!4392574))))

(assert (=> b!7335528 (= res!2964123 (is-Concat!27919 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun e!4392572 () (Set Context!16028))

(declare-fun e!4392570 () (Set Context!16028))

(assert (=> b!7335528 (= e!4392572 e!4392570)))

(declare-fun b!7335529 () Bool)

(declare-fun call!668878 () (Set Context!16028))

(assert (=> b!7335529 (= e!4392571 call!668878)))

(declare-fun b!7335530 () Bool)

(assert (=> b!7335530 (= e!4392571 (as set.empty (Set Context!16028)))))

(declare-fun b!7335531 () Bool)

(assert (=> b!7335531 (= e!4392570 e!4392573)))

(assert (=> b!7335531 (= c!1362453 (is-Concat!27919 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun b!7335532 () Bool)

(assert (=> b!7335532 (= e!4392574 (nullable!8175 (regOne!38660 (h!77894 (exprs!8514 ct1!256)))))))

(declare-fun bm!668870 () Bool)

(declare-fun call!668877 () List!71570)

(assert (=> bm!668870 (= call!668875 call!668877)))

(declare-fun bm!668871 () Bool)

(declare-fun call!668874 () (Set Context!16028))

(assert (=> bm!668871 (= call!668874 call!668876)))

(declare-fun bm!668872 () Bool)

(assert (=> bm!668872 (= call!668878 call!668874)))

(declare-fun b!7335533 () Bool)

(declare-fun call!668873 () (Set Context!16028))

(assert (=> b!7335533 (= e!4392570 (set.union call!668873 call!668874))))

(declare-fun b!7335534 () Bool)

(assert (=> b!7335534 (= e!4392575 e!4392572)))

(assert (=> b!7335534 (= c!1362450 (is-Union!19074 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun b!7335535 () Bool)

(assert (=> b!7335535 (= e!4392572 (set.union call!668876 call!668873))))

(declare-fun b!7335536 () Bool)

(assert (=> b!7335536 (= e!4392573 call!668878)))

(declare-fun bm!668873 () Bool)

(assert (=> bm!668873 (= call!668877 ($colon$colon!3083 (exprs!8514 (Context!16029 (tail!14755 lt!2609149))) (ite (or c!1362449 c!1362453) (regTwo!38660 (h!77894 (exprs!8514 ct1!256))) (h!77894 (exprs!8514 ct1!256)))))))

(declare-fun bm!668869 () Bool)

(assert (=> bm!668869 (= call!668873 (derivationStepZipperDown!2901 (ite c!1362450 (regTwo!38661 (h!77894 (exprs!8514 ct1!256))) (regOne!38660 (h!77894 (exprs!8514 ct1!256)))) (ite c!1362450 (Context!16029 (tail!14755 lt!2609149)) (Context!16029 call!668877)) c!10305))))

(declare-fun d!2277976 () Bool)

(declare-fun c!1362452 () Bool)

(assert (=> d!2277976 (= c!1362452 (and (is-ElementMatch!19074 (h!77894 (exprs!8514 ct1!256))) (= (c!1362418 (h!77894 (exprs!8514 ct1!256))) c!10305)))))

(assert (=> d!2277976 (= (derivationStepZipperDown!2901 (h!77894 (exprs!8514 ct1!256)) (Context!16029 (tail!14755 lt!2609149)) c!10305) e!4392575)))

(assert (= (and d!2277976 c!1362452) b!7335527))

(assert (= (and d!2277976 (not c!1362452)) b!7335534))

(assert (= (and b!7335534 c!1362450) b!7335535))

(assert (= (and b!7335534 (not c!1362450)) b!7335528))

(assert (= (and b!7335528 res!2964123) b!7335532))

(assert (= (and b!7335528 c!1362449) b!7335533))

(assert (= (and b!7335528 (not c!1362449)) b!7335531))

(assert (= (and b!7335531 c!1362453) b!7335536))

(assert (= (and b!7335531 (not c!1362453)) b!7335526))

(assert (= (and b!7335526 c!1362451) b!7335529))

(assert (= (and b!7335526 (not c!1362451)) b!7335530))

(assert (= (or b!7335536 b!7335529) bm!668870))

(assert (= (or b!7335536 b!7335529) bm!668872))

(assert (= (or b!7335533 bm!668872) bm!668871))

(assert (= (or b!7335533 bm!668870) bm!668873))

(assert (= (or b!7335535 b!7335533) bm!668869))

(assert (= (or b!7335535 bm!668871) bm!668868))

(declare-fun m!8001564 () Bool)

(assert (=> bm!668873 m!8001564))

(declare-fun m!8001566 () Bool)

(assert (=> bm!668869 m!8001566))

(assert (=> b!7335532 m!8001548))

(declare-fun m!8001568 () Bool)

(assert (=> bm!668868 m!8001568))

(declare-fun m!8001570 () Bool)

(assert (=> b!7335527 m!8001570))

(assert (=> b!7335422 d!2277976))

(declare-fun bm!668874 () Bool)

(declare-fun c!1362455 () Bool)

(declare-fun call!668882 () (Set Context!16028))

(declare-fun c!1362454 () Bool)

(declare-fun call!668881 () List!71570)

(declare-fun c!1362458 () Bool)

(assert (=> bm!668874 (= call!668882 (derivationStepZipperDown!2901 (ite c!1362455 (regOne!38661 (h!77894 (exprs!8514 ct1!256))) (ite c!1362454 (regTwo!38660 (h!77894 (exprs!8514 ct1!256))) (ite c!1362458 (regOne!38660 (h!77894 (exprs!8514 ct1!256))) (reg!19403 (h!77894 (exprs!8514 ct1!256)))))) (ite (or c!1362455 c!1362454) (Context!16029 (++!16896 lt!2609147 (exprs!8514 ct2!352))) (Context!16029 call!668881)) c!10305))))

(declare-fun b!7335537 () Bool)

(declare-fun c!1362456 () Bool)

(assert (=> b!7335537 (= c!1362456 (is-Star!19074 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun e!4392579 () (Set Context!16028))

(declare-fun e!4392577 () (Set Context!16028))

(assert (=> b!7335537 (= e!4392579 e!4392577)))

(declare-fun b!7335538 () Bool)

(declare-fun e!4392581 () (Set Context!16028))

(assert (=> b!7335538 (= e!4392581 (set.insert (Context!16029 (++!16896 lt!2609147 (exprs!8514 ct2!352))) (as set.empty (Set Context!16028))))))

(declare-fun b!7335539 () Bool)

(declare-fun e!4392580 () Bool)

(assert (=> b!7335539 (= c!1362454 e!4392580)))

(declare-fun res!2964124 () Bool)

(assert (=> b!7335539 (=> (not res!2964124) (not e!4392580))))

(assert (=> b!7335539 (= res!2964124 (is-Concat!27919 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun e!4392578 () (Set Context!16028))

(declare-fun e!4392576 () (Set Context!16028))

(assert (=> b!7335539 (= e!4392578 e!4392576)))

(declare-fun b!7335540 () Bool)

(declare-fun call!668884 () (Set Context!16028))

(assert (=> b!7335540 (= e!4392577 call!668884)))

(declare-fun b!7335541 () Bool)

(assert (=> b!7335541 (= e!4392577 (as set.empty (Set Context!16028)))))

(declare-fun b!7335542 () Bool)

(assert (=> b!7335542 (= e!4392576 e!4392579)))

(assert (=> b!7335542 (= c!1362458 (is-Concat!27919 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun b!7335543 () Bool)

(assert (=> b!7335543 (= e!4392580 (nullable!8175 (regOne!38660 (h!77894 (exprs!8514 ct1!256)))))))

(declare-fun bm!668876 () Bool)

(declare-fun call!668883 () List!71570)

(assert (=> bm!668876 (= call!668881 call!668883)))

(declare-fun bm!668877 () Bool)

(declare-fun call!668880 () (Set Context!16028))

(assert (=> bm!668877 (= call!668880 call!668882)))

(declare-fun bm!668878 () Bool)

(assert (=> bm!668878 (= call!668884 call!668880)))

(declare-fun b!7335544 () Bool)

(declare-fun call!668879 () (Set Context!16028))

(assert (=> b!7335544 (= e!4392576 (set.union call!668879 call!668880))))

(declare-fun b!7335545 () Bool)

(assert (=> b!7335545 (= e!4392581 e!4392578)))

(assert (=> b!7335545 (= c!1362455 (is-Union!19074 (h!77894 (exprs!8514 ct1!256))))))

(declare-fun b!7335546 () Bool)

(assert (=> b!7335546 (= e!4392578 (set.union call!668882 call!668879))))

(declare-fun b!7335547 () Bool)

(assert (=> b!7335547 (= e!4392579 call!668884)))

(declare-fun bm!668879 () Bool)

(assert (=> bm!668879 (= call!668883 ($colon$colon!3083 (exprs!8514 (Context!16029 (++!16896 lt!2609147 (exprs!8514 ct2!352)))) (ite (or c!1362454 c!1362458) (regTwo!38660 (h!77894 (exprs!8514 ct1!256))) (h!77894 (exprs!8514 ct1!256)))))))

(declare-fun bm!668875 () Bool)

(assert (=> bm!668875 (= call!668879 (derivationStepZipperDown!2901 (ite c!1362455 (regTwo!38661 (h!77894 (exprs!8514 ct1!256))) (regOne!38660 (h!77894 (exprs!8514 ct1!256)))) (ite c!1362455 (Context!16029 (++!16896 lt!2609147 (exprs!8514 ct2!352))) (Context!16029 call!668883)) c!10305))))

(declare-fun d!2277978 () Bool)

(declare-fun c!1362457 () Bool)

(assert (=> d!2277978 (= c!1362457 (and (is-ElementMatch!19074 (h!77894 (exprs!8514 ct1!256))) (= (c!1362418 (h!77894 (exprs!8514 ct1!256))) c!10305)))))

(assert (=> d!2277978 (= (derivationStepZipperDown!2901 (h!77894 (exprs!8514 ct1!256)) (Context!16029 (++!16896 lt!2609147 (exprs!8514 ct2!352))) c!10305) e!4392581)))

(assert (= (and d!2277978 c!1362457) b!7335538))

(assert (= (and d!2277978 (not c!1362457)) b!7335545))

(assert (= (and b!7335545 c!1362455) b!7335546))

(assert (= (and b!7335545 (not c!1362455)) b!7335539))

(assert (= (and b!7335539 res!2964124) b!7335543))

(assert (= (and b!7335539 c!1362454) b!7335544))

(assert (= (and b!7335539 (not c!1362454)) b!7335542))

(assert (= (and b!7335542 c!1362458) b!7335547))

(assert (= (and b!7335542 (not c!1362458)) b!7335537))

(assert (= (and b!7335537 c!1362456) b!7335540))

(assert (= (and b!7335537 (not c!1362456)) b!7335541))

(assert (= (or b!7335547 b!7335540) bm!668876))

(assert (= (or b!7335547 b!7335540) bm!668878))

(assert (= (or b!7335544 bm!668878) bm!668877))

(assert (= (or b!7335544 bm!668876) bm!668879))

(assert (= (or b!7335546 b!7335544) bm!668875))

(assert (= (or b!7335546 bm!668877) bm!668874))

(declare-fun m!8001572 () Bool)

(assert (=> bm!668879 m!8001572))

(declare-fun m!8001574 () Bool)

(assert (=> bm!668875 m!8001574))

(assert (=> b!7335543 m!8001548))

(declare-fun m!8001576 () Bool)

(assert (=> bm!668874 m!8001576))

(declare-fun m!8001578 () Bool)

(assert (=> b!7335538 m!8001578))

(assert (=> b!7335422 d!2277978))

(declare-fun d!2277980 () Bool)

(assert (=> d!2277980 (forall!17910 (++!16896 lt!2609147 (exprs!8514 ct2!352)) lambda!455142)))

(declare-fun lt!2609206 () Unit!165109)

(assert (=> d!2277980 (= lt!2609206 (choose!57061 lt!2609147 (exprs!8514 ct2!352) lambda!455142))))

(assert (=> d!2277980 (forall!17910 lt!2609147 lambda!455142)))

(assert (=> d!2277980 (= (lemmaConcatPreservesForall!1753 lt!2609147 (exprs!8514 ct2!352) lambda!455142) lt!2609206)))

(declare-fun bs!1917975 () Bool)

(assert (= bs!1917975 d!2277980))

(assert (=> bs!1917975 m!8001450))

(assert (=> bs!1917975 m!8001450))

(declare-fun m!8001580 () Bool)

(assert (=> bs!1917975 m!8001580))

(declare-fun m!8001582 () Bool)

(assert (=> bs!1917975 m!8001582))

(declare-fun m!8001584 () Bool)

(assert (=> bs!1917975 m!8001584))

(assert (=> b!7335422 d!2277980))

(assert (=> b!7335422 d!2277948))

(declare-fun bs!1917976 () Bool)

(declare-fun d!2277982 () Bool)

(assert (= bs!1917976 (and d!2277982 b!7335420)))

(declare-fun lambda!455170 () Int)

(assert (=> bs!1917976 (= lambda!455170 lambda!455142)))

(declare-fun bs!1917977 () Bool)

(assert (= bs!1917977 (and d!2277982 d!2277968)))

(assert (=> bs!1917977 (= lambda!455170 lambda!455163)))

(declare-fun bs!1917978 () Bool)

(assert (= bs!1917978 (and d!2277982 d!2277970)))

(assert (=> bs!1917978 (= lambda!455170 lambda!455164)))

(declare-fun bs!1917979 () Bool)

(assert (= bs!1917979 (and d!2277982 d!2277972)))

(assert (=> bs!1917979 (= lambda!455170 lambda!455165)))

(assert (=> d!2277982 (set.member (Context!16029 (++!16896 (exprs!8514 cWitness!35) (exprs!8514 ct2!352))) (derivationStepZipperDown!2901 (h!77894 (exprs!8514 ct1!256)) (Context!16029 (++!16896 (exprs!8514 lt!2609151) (exprs!8514 ct2!352))) c!10305))))

(declare-fun lt!2609216 () Unit!165109)

(assert (=> d!2277982 (= lt!2609216 (lemmaConcatPreservesForall!1753 (exprs!8514 lt!2609151) (exprs!8514 ct2!352) lambda!455170))))

(declare-fun lt!2609215 () Unit!165109)

(assert (=> d!2277982 (= lt!2609215 (lemmaConcatPreservesForall!1753 (exprs!8514 cWitness!35) (exprs!8514 ct2!352) lambda!455170))))

(declare-fun lt!2609214 () Unit!165109)

(declare-fun choose!57062 (Regex!19074 Context!16028 Context!16028 Context!16028 C!38422) Unit!165109)

(assert (=> d!2277982 (= lt!2609214 (choose!57062 (h!77894 (exprs!8514 ct1!256)) lt!2609151 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9672 (Regex!19074) Bool)

(assert (=> d!2277982 (validRegex!9672 (h!77894 (exprs!8514 ct1!256)))))

(assert (=> d!2277982 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!39 (h!77894 (exprs!8514 ct1!256)) lt!2609151 ct2!352 cWitness!35 c!10305) lt!2609214)))

(declare-fun bs!1917980 () Bool)

(assert (= bs!1917980 d!2277982))

(declare-fun m!8001600 () Bool)

(assert (=> bs!1917980 m!8001600))

(declare-fun m!8001602 () Bool)

(assert (=> bs!1917980 m!8001602))

(declare-fun m!8001604 () Bool)

(assert (=> bs!1917980 m!8001604))

(declare-fun m!8001606 () Bool)

(assert (=> bs!1917980 m!8001606))

(declare-fun m!8001608 () Bool)

(assert (=> bs!1917980 m!8001608))

(declare-fun m!8001610 () Bool)

(assert (=> bs!1917980 m!8001610))

(declare-fun m!8001612 () Bool)

(assert (=> bs!1917980 m!8001612))

(assert (=> bs!1917980 m!8001452))

(assert (=> b!7335422 d!2277982))

(declare-fun b!7335571 () Bool)

(declare-fun lt!2609219 () List!71570)

(declare-fun e!4392593 () Bool)

(assert (=> b!7335571 (= e!4392593 (or (not (= (exprs!8514 ct2!352) Nil!71446)) (= lt!2609219 (exprs!8514 cWitness!35))))))

(declare-fun d!2277986 () Bool)

(assert (=> d!2277986 e!4392593))

(declare-fun res!2964136 () Bool)

(assert (=> d!2277986 (=> (not res!2964136) (not e!4392593))))

(declare-fun content!15001 (List!71570) (Set Regex!19074))

(assert (=> d!2277986 (= res!2964136 (= (content!15001 lt!2609219) (set.union (content!15001 (exprs!8514 cWitness!35)) (content!15001 (exprs!8514 ct2!352)))))))

(declare-fun e!4392592 () List!71570)

(assert (=> d!2277986 (= lt!2609219 e!4392592)))

(declare-fun c!1362465 () Bool)

(assert (=> d!2277986 (= c!1362465 (is-Nil!71446 (exprs!8514 cWitness!35)))))

(assert (=> d!2277986 (= (++!16896 (exprs!8514 cWitness!35) (exprs!8514 ct2!352)) lt!2609219)))

(declare-fun b!7335570 () Bool)

(declare-fun res!2964135 () Bool)

(assert (=> b!7335570 (=> (not res!2964135) (not e!4392593))))

(declare-fun size!41980 (List!71570) Int)

(assert (=> b!7335570 (= res!2964135 (= (size!41980 lt!2609219) (+ (size!41980 (exprs!8514 cWitness!35)) (size!41980 (exprs!8514 ct2!352)))))))

(declare-fun b!7335568 () Bool)

(assert (=> b!7335568 (= e!4392592 (exprs!8514 ct2!352))))

(declare-fun b!7335569 () Bool)

(assert (=> b!7335569 (= e!4392592 (Cons!71446 (h!77894 (exprs!8514 cWitness!35)) (++!16896 (t!385965 (exprs!8514 cWitness!35)) (exprs!8514 ct2!352))))))

(assert (= (and d!2277986 c!1362465) b!7335568))

(assert (= (and d!2277986 (not c!1362465)) b!7335569))

(assert (= (and d!2277986 res!2964136) b!7335570))

(assert (= (and b!7335570 res!2964135) b!7335571))

(declare-fun m!8001614 () Bool)

(assert (=> d!2277986 m!8001614))

(declare-fun m!8001616 () Bool)

(assert (=> d!2277986 m!8001616))

(declare-fun m!8001618 () Bool)

(assert (=> d!2277986 m!8001618))

(declare-fun m!8001620 () Bool)

(assert (=> b!7335570 m!8001620))

(declare-fun m!8001622 () Bool)

(assert (=> b!7335570 m!8001622))

(declare-fun m!8001624 () Bool)

(assert (=> b!7335570 m!8001624))

(declare-fun m!8001626 () Bool)

(assert (=> b!7335569 m!8001626))

(assert (=> b!7335422 d!2277986))

(declare-fun b!7335575 () Bool)

(declare-fun e!4392595 () Bool)

(declare-fun lt!2609220 () List!71570)

(assert (=> b!7335575 (= e!4392595 (or (not (= (exprs!8514 ct2!352) Nil!71446)) (= lt!2609220 lt!2609147)))))

(declare-fun d!2277988 () Bool)

(assert (=> d!2277988 e!4392595))

(declare-fun res!2964138 () Bool)

(assert (=> d!2277988 (=> (not res!2964138) (not e!4392595))))

(assert (=> d!2277988 (= res!2964138 (= (content!15001 lt!2609220) (set.union (content!15001 lt!2609147) (content!15001 (exprs!8514 ct2!352)))))))

(declare-fun e!4392594 () List!71570)

(assert (=> d!2277988 (= lt!2609220 e!4392594)))

(declare-fun c!1362466 () Bool)

(assert (=> d!2277988 (= c!1362466 (is-Nil!71446 lt!2609147))))

(assert (=> d!2277988 (= (++!16896 lt!2609147 (exprs!8514 ct2!352)) lt!2609220)))

(declare-fun b!7335574 () Bool)

(declare-fun res!2964137 () Bool)

(assert (=> b!7335574 (=> (not res!2964137) (not e!4392595))))

(assert (=> b!7335574 (= res!2964137 (= (size!41980 lt!2609220) (+ (size!41980 lt!2609147) (size!41980 (exprs!8514 ct2!352)))))))

(declare-fun b!7335572 () Bool)

(assert (=> b!7335572 (= e!4392594 (exprs!8514 ct2!352))))

(declare-fun b!7335573 () Bool)

(assert (=> b!7335573 (= e!4392594 (Cons!71446 (h!77894 lt!2609147) (++!16896 (t!385965 lt!2609147) (exprs!8514 ct2!352))))))

(assert (= (and d!2277988 c!1362466) b!7335572))

(assert (= (and d!2277988 (not c!1362466)) b!7335573))

(assert (= (and d!2277988 res!2964138) b!7335574))

(assert (= (and b!7335574 res!2964137) b!7335575))

(declare-fun m!8001628 () Bool)

(assert (=> d!2277988 m!8001628))

(declare-fun m!8001630 () Bool)

(assert (=> d!2277988 m!8001630))

(assert (=> d!2277988 m!8001618))

(declare-fun m!8001632 () Bool)

(assert (=> b!7335574 m!8001632))

(declare-fun m!8001634 () Bool)

(assert (=> b!7335574 m!8001634))

(assert (=> b!7335574 m!8001624))

(declare-fun m!8001636 () Bool)

(assert (=> b!7335573 m!8001636))

(assert (=> b!7335422 d!2277988))

(declare-fun lt!2609221 () List!71570)

(declare-fun e!4392597 () Bool)

(declare-fun b!7335581 () Bool)

(assert (=> b!7335581 (= e!4392597 (or (not (= (exprs!8514 ct2!352) Nil!71446)) (= lt!2609221 (exprs!8514 ct1!256))))))

(declare-fun d!2277990 () Bool)

(assert (=> d!2277990 e!4392597))

(declare-fun res!2964140 () Bool)

(assert (=> d!2277990 (=> (not res!2964140) (not e!4392597))))

(assert (=> d!2277990 (= res!2964140 (= (content!15001 lt!2609221) (set.union (content!15001 (exprs!8514 ct1!256)) (content!15001 (exprs!8514 ct2!352)))))))

(declare-fun e!4392596 () List!71570)

(assert (=> d!2277990 (= lt!2609221 e!4392596)))

(declare-fun c!1362467 () Bool)

(assert (=> d!2277990 (= c!1362467 (is-Nil!71446 (exprs!8514 ct1!256)))))

(assert (=> d!2277990 (= (++!16896 (exprs!8514 ct1!256) (exprs!8514 ct2!352)) lt!2609221)))

(declare-fun b!7335580 () Bool)

(declare-fun res!2964139 () Bool)

(assert (=> b!7335580 (=> (not res!2964139) (not e!4392597))))

(assert (=> b!7335580 (= res!2964139 (= (size!41980 lt!2609221) (+ (size!41980 (exprs!8514 ct1!256)) (size!41980 (exprs!8514 ct2!352)))))))

(declare-fun b!7335578 () Bool)

(assert (=> b!7335578 (= e!4392596 (exprs!8514 ct2!352))))

(declare-fun b!7335579 () Bool)

(assert (=> b!7335579 (= e!4392596 (Cons!71446 (h!77894 (exprs!8514 ct1!256)) (++!16896 (t!385965 (exprs!8514 ct1!256)) (exprs!8514 ct2!352))))))

(assert (= (and d!2277990 c!1362467) b!7335578))

(assert (= (and d!2277990 (not c!1362467)) b!7335579))

(assert (= (and d!2277990 res!2964140) b!7335580))

(assert (= (and b!7335580 res!2964139) b!7335581))

(declare-fun m!8001638 () Bool)

(assert (=> d!2277990 m!8001638))

(declare-fun m!8001640 () Bool)

(assert (=> d!2277990 m!8001640))

(assert (=> d!2277990 m!8001618))

(declare-fun m!8001642 () Bool)

(assert (=> b!7335580 m!8001642))

(declare-fun m!8001644 () Bool)

(assert (=> b!7335580 m!8001644))

(assert (=> b!7335580 m!8001624))

(declare-fun m!8001646 () Bool)

(assert (=> b!7335579 m!8001646))

(assert (=> b!7335420 d!2277990))

(assert (=> b!7335420 d!2277946))

(declare-fun d!2277992 () Bool)

(assert (=> d!2277992 (= (isEmpty!40986 lt!2609149) (is-Nil!71446 lt!2609149))))

(assert (=> b!7335421 d!2277992))

(declare-fun b!7335604 () Bool)

(declare-fun e!4392610 () Bool)

(declare-fun tp!2082262 () Bool)

(declare-fun tp!2082263 () Bool)

(assert (=> b!7335604 (= e!4392610 (and tp!2082262 tp!2082263))))

(assert (=> b!7335423 (= tp!2082246 e!4392610)))

(assert (= (and b!7335423 (is-Cons!71446 (exprs!8514 ct1!256))) b!7335604))

(declare-fun b!7335607 () Bool)

(declare-fun e!4392613 () Bool)

(declare-fun tp!2082264 () Bool)

(declare-fun tp!2082265 () Bool)

(assert (=> b!7335607 (= e!4392613 (and tp!2082264 tp!2082265))))

(assert (=> b!7335418 (= tp!2082248 e!4392613)))

(assert (= (and b!7335418 (is-Cons!71446 (exprs!8514 ct2!352))) b!7335607))

(declare-fun b!7335608 () Bool)

(declare-fun e!4392614 () Bool)

(declare-fun tp!2082266 () Bool)

(declare-fun tp!2082267 () Bool)

(assert (=> b!7335608 (= e!4392614 (and tp!2082266 tp!2082267))))

(assert (=> b!7335427 (= tp!2082247 e!4392614)))

(assert (= (and b!7335427 (is-Cons!71446 (exprs!8514 cWitness!35))) b!7335608))

(push 1)

(assert (not bm!668869))

(assert tp_is_empty!48393)

(assert (not bm!668873))

(assert (not bm!668874))

(assert (not d!2277990))

(assert (not bm!668879))

(assert (not bm!668875))

(assert (not d!2277972))

(assert (not b!7335523))

(assert (not b!7335574))

(assert (not d!2277968))

(assert (not b!7335580))

(assert (not bm!668866))

(assert (not b!7335543))

(assert (not d!2277980))

(assert (not d!2277970))

(assert (not bm!668861))

(assert (not d!2277950))

(assert (not b!7335573))

(assert (not b!7335608))

(assert (not b!7335570))

(assert (not bm!668868))

(assert (not d!2277982))

(assert (not b!7335469))

(assert (not b!7335607))

(assert (not bm!668862))

(assert (not b!7335470))

(assert (not b!7335532))

(assert (not d!2277988))

(assert (not d!2277946))

(assert (not bm!668867))

(assert (not bm!668845))

(assert (not d!2277986))

(assert (not b!7335522))

(assert (not b!7335516))

(assert (not b!7335604))

(assert (not b!7335569))

(assert (not d!2277948))

(assert (not b!7335579))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

