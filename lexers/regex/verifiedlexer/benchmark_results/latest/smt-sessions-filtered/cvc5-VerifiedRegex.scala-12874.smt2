; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710964 () Bool)

(assert start!710964)

(declare-fun b!7294445 () Bool)

(assert (=> b!7294445 true))

(declare-fun b!7294440 () Bool)

(declare-fun res!2950541 () Bool)

(declare-fun e!4369043 () Bool)

(assert (=> b!7294440 (=> res!2950541 e!4369043)))

(declare-datatypes ((C!37986 0))(
  ( (C!37987 (val!28941 Int)) )
))
(declare-datatypes ((Regex!18856 0))(
  ( (ElementMatch!18856 (c!1355549 C!37986)) (Concat!27701 (regOne!38224 Regex!18856) (regTwo!38224 Regex!18856)) (EmptyExpr!18856) (Star!18856 (reg!19185 Regex!18856)) (EmptyLang!18856) (Union!18856 (regOne!38225 Regex!18856) (regTwo!38225 Regex!18856)) )
))
(declare-datatypes ((List!71029 0))(
  ( (Nil!70905) (Cons!70905 (h!77353 Regex!18856) (t!385103 List!71029)) )
))
(declare-datatypes ((Context!15592 0))(
  ( (Context!15593 (exprs!8296 List!71029)) )
))
(declare-fun lt!2597433 () (Set Context!15592))

(declare-fun ct1!250 () Context!15592)

(declare-datatypes ((List!71030 0))(
  ( (Nil!70906) (Cons!70906 (h!77354 C!37986) (t!385104 List!71030)) )
))
(declare-fun s!7854 () List!71030)

(declare-fun lt!2597428 () Context!15592)

(declare-fun derivationStepZipperDown!2762 (Regex!18856 Context!15592 C!37986) (Set Context!15592))

(declare-fun derivationStepZipperUp!2606 (Context!15592 C!37986) (Set Context!15592))

(assert (=> b!7294440 (= res!2950541 (not (= lt!2597433 (set.union (derivationStepZipperDown!2762 (h!77353 (exprs!8296 ct1!250)) lt!2597428 (h!77354 s!7854)) (derivationStepZipperUp!2606 lt!2597428 (h!77354 s!7854))))))))

(declare-fun res!2950544 () Bool)

(declare-fun e!4369041 () Bool)

(assert (=> start!710964 (=> (not res!2950544) (not e!4369041))))

(declare-fun ct2!346 () Context!15592)

(declare-fun matchZipper!3760 ((Set Context!15592) List!71030) Bool)

(assert (=> start!710964 (= res!2950544 (matchZipper!3760 (set.insert ct2!346 (as set.empty (Set Context!15592))) s!7854))))

(assert (=> start!710964 e!4369041))

(declare-fun e!4369039 () Bool)

(declare-fun inv!90151 (Context!15592) Bool)

(assert (=> start!710964 (and (inv!90151 ct2!346) e!4369039)))

(declare-fun e!4369042 () Bool)

(assert (=> start!710964 e!4369042))

(declare-fun e!4369040 () Bool)

(assert (=> start!710964 (and (inv!90151 ct1!250) e!4369040)))

(declare-fun b!7294441 () Bool)

(declare-fun e!4369044 () Bool)

(assert (=> b!7294441 (= e!4369044 e!4369043)))

(declare-fun res!2950540 () Bool)

(assert (=> b!7294441 (=> res!2950540 e!4369043)))

(declare-fun nullable!8033 (Regex!18856) Bool)

(assert (=> b!7294441 (= res!2950540 (not (nullable!8033 (h!77353 (exprs!8296 ct1!250)))))))

(assert (=> b!7294441 (= lt!2597433 (derivationStepZipperUp!2606 ct1!250 (h!77354 s!7854)))))

(declare-fun lt!2597422 () List!71029)

(assert (=> b!7294441 (= lt!2597428 (Context!15593 lt!2597422))))

(declare-fun tail!14566 (List!71029) List!71029)

(assert (=> b!7294441 (= lt!2597422 (tail!14566 (exprs!8296 ct1!250)))))

(declare-fun b!7294442 () Bool)

(declare-fun tp!2062141 () Bool)

(assert (=> b!7294442 (= e!4369040 tp!2062141)))

(declare-fun b!7294443 () Bool)

(declare-fun ++!16746 (List!71029 List!71029) List!71029)

(assert (=> b!7294443 (= e!4369043 (inv!90151 (Context!15593 (++!16746 lt!2597422 (exprs!8296 ct2!346)))))))

(declare-datatypes ((Unit!164310 0))(
  ( (Unit!164311) )
))
(declare-fun lt!2597431 () Unit!164310)

(declare-fun lambda!450128 () Int)

(declare-fun lemmaConcatPreservesForall!1603 (List!71029 List!71029 Int) Unit!164310)

(assert (=> b!7294443 (= lt!2597431 (lemmaConcatPreservesForall!1603 lt!2597422 (exprs!8296 ct2!346) lambda!450128))))

(declare-fun lt!2597435 () Unit!164310)

(assert (=> b!7294443 (= lt!2597435 (lemmaConcatPreservesForall!1603 lt!2597422 (exprs!8296 ct2!346) lambda!450128))))

(declare-fun b!7294444 () Bool)

(declare-fun res!2950538 () Bool)

(assert (=> b!7294444 (=> (not res!2950538) (not e!4369041))))

(declare-fun nullableContext!346 (Context!15592) Bool)

(assert (=> b!7294444 (= res!2950538 (nullableContext!346 ct1!250))))

(assert (=> b!7294445 (= e!4369041 (not e!4369044))))

(declare-fun res!2950539 () Bool)

(assert (=> b!7294445 (=> res!2950539 e!4369044)))

(declare-fun lt!2597432 () (Set Context!15592))

(declare-fun lt!2597424 () (Set Context!15592))

(declare-fun derivationStepZipper!3589 ((Set Context!15592) C!37986) (Set Context!15592))

(assert (=> b!7294445 (= res!2950539 (not (= lt!2597424 (derivationStepZipper!3589 lt!2597432 (h!77354 s!7854)))))))

(declare-fun lt!2597434 () Unit!164310)

(assert (=> b!7294445 (= lt!2597434 (lemmaConcatPreservesForall!1603 (exprs!8296 ct1!250) (exprs!8296 ct2!346) lambda!450128))))

(declare-fun lambda!450129 () Int)

(declare-fun lt!2597436 () Context!15592)

(declare-fun flatMap!2951 ((Set Context!15592) Int) (Set Context!15592))

(assert (=> b!7294445 (= (flatMap!2951 lt!2597432 lambda!450129) (derivationStepZipperUp!2606 lt!2597436 (h!77354 s!7854)))))

(declare-fun lt!2597427 () Unit!164310)

(declare-fun lemmaFlatMapOnSingletonSet!2349 ((Set Context!15592) Context!15592 Int) Unit!164310)

(assert (=> b!7294445 (= lt!2597427 (lemmaFlatMapOnSingletonSet!2349 lt!2597432 lt!2597436 lambda!450129))))

(assert (=> b!7294445 (= lt!2597432 (set.insert lt!2597436 (as set.empty (Set Context!15592))))))

(declare-fun lt!2597430 () Unit!164310)

(assert (=> b!7294445 (= lt!2597430 (lemmaConcatPreservesForall!1603 (exprs!8296 ct1!250) (exprs!8296 ct2!346) lambda!450128))))

(declare-fun lt!2597425 () Unit!164310)

(assert (=> b!7294445 (= lt!2597425 (lemmaConcatPreservesForall!1603 (exprs!8296 ct1!250) (exprs!8296 ct2!346) lambda!450128))))

(declare-fun lt!2597426 () (Set Context!15592))

(assert (=> b!7294445 (= (flatMap!2951 lt!2597426 lambda!450129) (derivationStepZipperUp!2606 ct1!250 (h!77354 s!7854)))))

(declare-fun lt!2597423 () Unit!164310)

(assert (=> b!7294445 (= lt!2597423 (lemmaFlatMapOnSingletonSet!2349 lt!2597426 ct1!250 lambda!450129))))

(assert (=> b!7294445 (= lt!2597426 (set.insert ct1!250 (as set.empty (Set Context!15592))))))

(assert (=> b!7294445 (= lt!2597424 (derivationStepZipperUp!2606 lt!2597436 (h!77354 s!7854)))))

(assert (=> b!7294445 (= lt!2597436 (Context!15593 (++!16746 (exprs!8296 ct1!250) (exprs!8296 ct2!346))))))

(declare-fun lt!2597429 () Unit!164310)

(assert (=> b!7294445 (= lt!2597429 (lemmaConcatPreservesForall!1603 (exprs!8296 ct1!250) (exprs!8296 ct2!346) lambda!450128))))

(declare-fun b!7294446 () Bool)

(declare-fun tp_is_empty!47177 () Bool)

(declare-fun tp!2062139 () Bool)

(assert (=> b!7294446 (= e!4369042 (and tp_is_empty!47177 tp!2062139))))

(declare-fun b!7294447 () Bool)

(declare-fun res!2950543 () Bool)

(assert (=> b!7294447 (=> res!2950543 e!4369044)))

(declare-fun isEmpty!40783 (List!71029) Bool)

(assert (=> b!7294447 (= res!2950543 (isEmpty!40783 (exprs!8296 ct1!250)))))

(declare-fun b!7294448 () Bool)

(declare-fun res!2950542 () Bool)

(assert (=> b!7294448 (=> (not res!2950542) (not e!4369041))))

(assert (=> b!7294448 (= res!2950542 (is-Cons!70906 s!7854))))

(declare-fun b!7294449 () Bool)

(declare-fun res!2950545 () Bool)

(assert (=> b!7294449 (=> res!2950545 e!4369044)))

(assert (=> b!7294449 (= res!2950545 (not (is-Cons!70905 (exprs!8296 ct1!250))))))

(declare-fun b!7294450 () Bool)

(declare-fun tp!2062140 () Bool)

(assert (=> b!7294450 (= e!4369039 tp!2062140)))

(assert (= (and start!710964 res!2950544) b!7294444))

(assert (= (and b!7294444 res!2950538) b!7294448))

(assert (= (and b!7294448 res!2950542) b!7294445))

(assert (= (and b!7294445 (not res!2950539)) b!7294449))

(assert (= (and b!7294449 (not res!2950545)) b!7294447))

(assert (= (and b!7294447 (not res!2950543)) b!7294441))

(assert (= (and b!7294441 (not res!2950540)) b!7294440))

(assert (= (and b!7294440 (not res!2950541)) b!7294443))

(assert (= start!710964 b!7294450))

(assert (= (and start!710964 (is-Cons!70906 s!7854)) b!7294446))

(assert (= start!710964 b!7294442))

(declare-fun m!7965958 () Bool)

(assert (=> b!7294447 m!7965958))

(declare-fun m!7965960 () Bool)

(assert (=> b!7294444 m!7965960))

(declare-fun m!7965962 () Bool)

(assert (=> b!7294445 m!7965962))

(declare-fun m!7965964 () Bool)

(assert (=> b!7294445 m!7965964))

(declare-fun m!7965966 () Bool)

(assert (=> b!7294445 m!7965966))

(declare-fun m!7965968 () Bool)

(assert (=> b!7294445 m!7965968))

(declare-fun m!7965970 () Bool)

(assert (=> b!7294445 m!7965970))

(declare-fun m!7965972 () Bool)

(assert (=> b!7294445 m!7965972))

(declare-fun m!7965974 () Bool)

(assert (=> b!7294445 m!7965974))

(declare-fun m!7965976 () Bool)

(assert (=> b!7294445 m!7965976))

(declare-fun m!7965978 () Bool)

(assert (=> b!7294445 m!7965978))

(assert (=> b!7294445 m!7965964))

(assert (=> b!7294445 m!7965964))

(declare-fun m!7965980 () Bool)

(assert (=> b!7294445 m!7965980))

(assert (=> b!7294445 m!7965964))

(declare-fun m!7965982 () Bool)

(assert (=> b!7294445 m!7965982))

(declare-fun m!7965984 () Bool)

(assert (=> b!7294443 m!7965984))

(declare-fun m!7965986 () Bool)

(assert (=> b!7294443 m!7965986))

(declare-fun m!7965988 () Bool)

(assert (=> b!7294443 m!7965988))

(assert (=> b!7294443 m!7965988))

(declare-fun m!7965990 () Bool)

(assert (=> b!7294440 m!7965990))

(declare-fun m!7965992 () Bool)

(assert (=> b!7294440 m!7965992))

(declare-fun m!7965994 () Bool)

(assert (=> start!710964 m!7965994))

(assert (=> start!710964 m!7965994))

(declare-fun m!7965996 () Bool)

(assert (=> start!710964 m!7965996))

(declare-fun m!7965998 () Bool)

(assert (=> start!710964 m!7965998))

(declare-fun m!7966000 () Bool)

(assert (=> start!710964 m!7966000))

(declare-fun m!7966002 () Bool)

(assert (=> b!7294441 m!7966002))

(assert (=> b!7294441 m!7965968))

(declare-fun m!7966004 () Bool)

(assert (=> b!7294441 m!7966004))

(push 1)

(assert (not b!7294444))

(assert tp_is_empty!47177)

(assert (not b!7294441))

(assert (not b!7294446))

(assert (not b!7294442))

(assert (not b!7294440))

(assert (not start!710964))

(assert (not b!7294445))

(assert (not b!7294450))

(assert (not b!7294447))

(assert (not b!7294443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1912719 () Bool)

(declare-fun d!2266309 () Bool)

(assert (= bs!1912719 (and d!2266309 b!7294445)))

(declare-fun lambda!450150 () Int)

(assert (=> bs!1912719 (= lambda!450150 lambda!450128)))

(declare-fun forall!17681 (List!71029 Int) Bool)

(assert (=> d!2266309 (= (inv!90151 (Context!15593 (++!16746 lt!2597422 (exprs!8296 ct2!346)))) (forall!17681 (exprs!8296 (Context!15593 (++!16746 lt!2597422 (exprs!8296 ct2!346)))) lambda!450150))))

(declare-fun bs!1912720 () Bool)

(assert (= bs!1912720 d!2266309))

(declare-fun m!7966054 () Bool)

(assert (=> bs!1912720 m!7966054))

(assert (=> b!7294443 d!2266309))

(declare-fun b!7294497 () Bool)

(declare-fun e!4369068 () List!71029)

(assert (=> b!7294497 (= e!4369068 (Cons!70905 (h!77353 lt!2597422) (++!16746 (t!385103 lt!2597422) (exprs!8296 ct2!346))))))

(declare-fun b!7294499 () Bool)

(declare-fun e!4369067 () Bool)

(declare-fun lt!2597484 () List!71029)

(assert (=> b!7294499 (= e!4369067 (or (not (= (exprs!8296 ct2!346) Nil!70905)) (= lt!2597484 lt!2597422)))))

(declare-fun b!7294498 () Bool)

(declare-fun res!2950575 () Bool)

(assert (=> b!7294498 (=> (not res!2950575) (not e!4369067))))

(declare-fun size!41855 (List!71029) Int)

(assert (=> b!7294498 (= res!2950575 (= (size!41855 lt!2597484) (+ (size!41855 lt!2597422) (size!41855 (exprs!8296 ct2!346)))))))

(declare-fun d!2266311 () Bool)

(assert (=> d!2266311 e!4369067))

(declare-fun res!2950574 () Bool)

(assert (=> d!2266311 (=> (not res!2950574) (not e!4369067))))

(declare-fun content!14809 (List!71029) (Set Regex!18856))

(assert (=> d!2266311 (= res!2950574 (= (content!14809 lt!2597484) (set.union (content!14809 lt!2597422) (content!14809 (exprs!8296 ct2!346)))))))

(assert (=> d!2266311 (= lt!2597484 e!4369068)))

(declare-fun c!1355557 () Bool)

(assert (=> d!2266311 (= c!1355557 (is-Nil!70905 lt!2597422))))

(assert (=> d!2266311 (= (++!16746 lt!2597422 (exprs!8296 ct2!346)) lt!2597484)))

(declare-fun b!7294496 () Bool)

(assert (=> b!7294496 (= e!4369068 (exprs!8296 ct2!346))))

(assert (= (and d!2266311 c!1355557) b!7294496))

(assert (= (and d!2266311 (not c!1355557)) b!7294497))

(assert (= (and d!2266311 res!2950574) b!7294498))

(assert (= (and b!7294498 res!2950575) b!7294499))

(declare-fun m!7966056 () Bool)

(assert (=> b!7294497 m!7966056))

(declare-fun m!7966058 () Bool)

(assert (=> b!7294498 m!7966058))

(declare-fun m!7966060 () Bool)

(assert (=> b!7294498 m!7966060))

(declare-fun m!7966062 () Bool)

(assert (=> b!7294498 m!7966062))

(declare-fun m!7966064 () Bool)

(assert (=> d!2266311 m!7966064))

(declare-fun m!7966066 () Bool)

(assert (=> d!2266311 m!7966066))

(declare-fun m!7966068 () Bool)

(assert (=> d!2266311 m!7966068))

(assert (=> b!7294443 d!2266311))

(declare-fun d!2266315 () Bool)

(assert (=> d!2266315 (forall!17681 (++!16746 lt!2597422 (exprs!8296 ct2!346)) lambda!450128)))

(declare-fun lt!2597487 () Unit!164310)

(declare-fun choose!56515 (List!71029 List!71029 Int) Unit!164310)

(assert (=> d!2266315 (= lt!2597487 (choose!56515 lt!2597422 (exprs!8296 ct2!346) lambda!450128))))

(assert (=> d!2266315 (forall!17681 lt!2597422 lambda!450128)))

(assert (=> d!2266315 (= (lemmaConcatPreservesForall!1603 lt!2597422 (exprs!8296 ct2!346) lambda!450128) lt!2597487)))

(declare-fun bs!1912721 () Bool)

(assert (= bs!1912721 d!2266315))

(assert (=> bs!1912721 m!7965984))

(assert (=> bs!1912721 m!7965984))

(declare-fun m!7966070 () Bool)

(assert (=> bs!1912721 m!7966070))

(declare-fun m!7966072 () Bool)

(assert (=> bs!1912721 m!7966072))

(declare-fun m!7966074 () Bool)

(assert (=> bs!1912721 m!7966074))

(assert (=> b!7294443 d!2266315))

(declare-fun d!2266317 () Bool)

(declare-fun c!1355560 () Bool)

(declare-fun isEmpty!40785 (List!71030) Bool)

(assert (=> d!2266317 (= c!1355560 (isEmpty!40785 s!7854))))

(declare-fun e!4369071 () Bool)

(assert (=> d!2266317 (= (matchZipper!3760 (set.insert ct2!346 (as set.empty (Set Context!15592))) s!7854) e!4369071)))

(declare-fun b!7294504 () Bool)

(declare-fun nullableZipper!3053 ((Set Context!15592)) Bool)

(assert (=> b!7294504 (= e!4369071 (nullableZipper!3053 (set.insert ct2!346 (as set.empty (Set Context!15592)))))))

(declare-fun b!7294505 () Bool)

(declare-fun head!15051 (List!71030) C!37986)

(declare-fun tail!14568 (List!71030) List!71030)

(assert (=> b!7294505 (= e!4369071 (matchZipper!3760 (derivationStepZipper!3589 (set.insert ct2!346 (as set.empty (Set Context!15592))) (head!15051 s!7854)) (tail!14568 s!7854)))))

(assert (= (and d!2266317 c!1355560) b!7294504))

(assert (= (and d!2266317 (not c!1355560)) b!7294505))

(declare-fun m!7966076 () Bool)

(assert (=> d!2266317 m!7966076))

(assert (=> b!7294504 m!7965994))

(declare-fun m!7966078 () Bool)

(assert (=> b!7294504 m!7966078))

(declare-fun m!7966080 () Bool)

(assert (=> b!7294505 m!7966080))

(assert (=> b!7294505 m!7965994))

(assert (=> b!7294505 m!7966080))

(declare-fun m!7966082 () Bool)

(assert (=> b!7294505 m!7966082))

(declare-fun m!7966084 () Bool)

(assert (=> b!7294505 m!7966084))

(assert (=> b!7294505 m!7966082))

(assert (=> b!7294505 m!7966084))

(declare-fun m!7966086 () Bool)

(assert (=> b!7294505 m!7966086))

(assert (=> start!710964 d!2266317))

(declare-fun bs!1912722 () Bool)

(declare-fun d!2266319 () Bool)

(assert (= bs!1912722 (and d!2266319 b!7294445)))

(declare-fun lambda!450151 () Int)

(assert (=> bs!1912722 (= lambda!450151 lambda!450128)))

(declare-fun bs!1912723 () Bool)

(assert (= bs!1912723 (and d!2266319 d!2266309)))

(assert (=> bs!1912723 (= lambda!450151 lambda!450150)))

(assert (=> d!2266319 (= (inv!90151 ct2!346) (forall!17681 (exprs!8296 ct2!346) lambda!450151))))

(declare-fun bs!1912724 () Bool)

(assert (= bs!1912724 d!2266319))

(declare-fun m!7966088 () Bool)

(assert (=> bs!1912724 m!7966088))

(assert (=> start!710964 d!2266319))

(declare-fun bs!1912725 () Bool)

(declare-fun d!2266321 () Bool)

(assert (= bs!1912725 (and d!2266321 b!7294445)))

(declare-fun lambda!450152 () Int)

(assert (=> bs!1912725 (= lambda!450152 lambda!450128)))

(declare-fun bs!1912726 () Bool)

(assert (= bs!1912726 (and d!2266321 d!2266309)))

(assert (=> bs!1912726 (= lambda!450152 lambda!450150)))

(declare-fun bs!1912727 () Bool)

(assert (= bs!1912727 (and d!2266321 d!2266319)))

(assert (=> bs!1912727 (= lambda!450152 lambda!450151)))

(assert (=> d!2266321 (= (inv!90151 ct1!250) (forall!17681 (exprs!8296 ct1!250) lambda!450152))))

(declare-fun bs!1912728 () Bool)

(assert (= bs!1912728 d!2266321))

(declare-fun m!7966090 () Bool)

(assert (=> bs!1912728 m!7966090))

(assert (=> start!710964 d!2266321))

(declare-fun d!2266323 () Bool)

(assert (=> d!2266323 (= (isEmpty!40783 (exprs!8296 ct1!250)) (is-Nil!70905 (exprs!8296 ct1!250)))))

(assert (=> b!7294447 d!2266323))

(declare-fun d!2266325 () Bool)

(declare-fun nullableFct!3174 (Regex!18856) Bool)

(assert (=> d!2266325 (= (nullable!8033 (h!77353 (exprs!8296 ct1!250))) (nullableFct!3174 (h!77353 (exprs!8296 ct1!250))))))

(declare-fun bs!1912729 () Bool)

(assert (= bs!1912729 d!2266325))

(declare-fun m!7966092 () Bool)

(assert (=> bs!1912729 m!7966092))

(assert (=> b!7294441 d!2266325))

(declare-fun b!7294538 () Bool)

(declare-fun e!4369090 () (Set Context!15592))

(assert (=> b!7294538 (= e!4369090 (as set.empty (Set Context!15592)))))

(declare-fun b!7294539 () Bool)

(declare-fun e!4369091 () (Set Context!15592))

(assert (=> b!7294539 (= e!4369091 e!4369090)))

(declare-fun c!1355576 () Bool)

(assert (=> b!7294539 (= c!1355576 (is-Cons!70905 (exprs!8296 ct1!250)))))

(declare-fun b!7294540 () Bool)

(declare-fun e!4369092 () Bool)

(assert (=> b!7294540 (= e!4369092 (nullable!8033 (h!77353 (exprs!8296 ct1!250))))))

(declare-fun bm!664429 () Bool)

(declare-fun call!664436 () (Set Context!15592))

(assert (=> bm!664429 (= call!664436 (derivationStepZipperDown!2762 (h!77353 (exprs!8296 ct1!250)) (Context!15593 (t!385103 (exprs!8296 ct1!250))) (h!77354 s!7854)))))

(declare-fun d!2266327 () Bool)

(declare-fun c!1355575 () Bool)

(assert (=> d!2266327 (= c!1355575 e!4369092)))

(declare-fun res!2950580 () Bool)

(assert (=> d!2266327 (=> (not res!2950580) (not e!4369092))))

(assert (=> d!2266327 (= res!2950580 (is-Cons!70905 (exprs!8296 ct1!250)))))

(assert (=> d!2266327 (= (derivationStepZipperUp!2606 ct1!250 (h!77354 s!7854)) e!4369091)))

(declare-fun b!7294541 () Bool)

(assert (=> b!7294541 (= e!4369091 (set.union call!664436 (derivationStepZipperUp!2606 (Context!15593 (t!385103 (exprs!8296 ct1!250))) (h!77354 s!7854))))))

(declare-fun b!7294542 () Bool)

(assert (=> b!7294542 (= e!4369090 call!664436)))

(assert (= (and d!2266327 res!2950580) b!7294540))

(assert (= (and d!2266327 c!1355575) b!7294541))

(assert (= (and d!2266327 (not c!1355575)) b!7294539))

(assert (= (and b!7294539 c!1355576) b!7294542))

(assert (= (and b!7294539 (not c!1355576)) b!7294538))

(assert (= (or b!7294541 b!7294542) bm!664429))

(assert (=> b!7294540 m!7966002))

(declare-fun m!7966094 () Bool)

(assert (=> bm!664429 m!7966094))

(declare-fun m!7966096 () Bool)

(assert (=> b!7294541 m!7966096))

(assert (=> b!7294441 d!2266327))

(declare-fun d!2266329 () Bool)

(assert (=> d!2266329 (= (tail!14566 (exprs!8296 ct1!250)) (t!385103 (exprs!8296 ct1!250)))))

(assert (=> b!7294441 d!2266329))

(declare-fun bm!664452 () Bool)

(declare-fun call!664462 () List!71029)

(declare-fun call!664459 () List!71029)

(assert (=> bm!664452 (= call!664462 call!664459)))

(declare-fun b!7294565 () Bool)

(declare-fun e!4369108 () (Set Context!15592))

(declare-fun call!664460 () (Set Context!15592))

(declare-fun call!664457 () (Set Context!15592))

(assert (=> b!7294565 (= e!4369108 (set.union call!664460 call!664457))))

(declare-fun bm!664453 () Bool)

(declare-fun call!664458 () (Set Context!15592))

(assert (=> bm!664453 (= call!664458 call!664457)))

(declare-fun b!7294566 () Bool)

(declare-fun c!1355591 () Bool)

(declare-fun e!4369109 () Bool)

(assert (=> b!7294566 (= c!1355591 e!4369109)))

(declare-fun res!2950583 () Bool)

(assert (=> b!7294566 (=> (not res!2950583) (not e!4369109))))

(assert (=> b!7294566 (= res!2950583 (is-Concat!27701 (h!77353 (exprs!8296 ct1!250))))))

(declare-fun e!4369110 () (Set Context!15592))

(assert (=> b!7294566 (= e!4369108 e!4369110)))

(declare-fun b!7294567 () Bool)

(declare-fun c!1355590 () Bool)

(assert (=> b!7294567 (= c!1355590 (is-Star!18856 (h!77353 (exprs!8296 ct1!250))))))

(declare-fun e!4369107 () (Set Context!15592))

(declare-fun e!4369106 () (Set Context!15592))

(assert (=> b!7294567 (= e!4369107 e!4369106)))

(declare-fun b!7294569 () Bool)

(declare-fun call!664461 () (Set Context!15592))

(assert (=> b!7294569 (= e!4369106 call!664461)))

(declare-fun bm!664454 () Bool)

(assert (=> bm!664454 (= call!664461 call!664458)))

(declare-fun b!7294570 () Bool)

(assert (=> b!7294570 (= e!4369109 (nullable!8033 (regOne!38224 (h!77353 (exprs!8296 ct1!250)))))))

(declare-fun c!1355589 () Bool)

(declare-fun c!1355588 () Bool)

(declare-fun bm!664455 () Bool)

(assert (=> bm!664455 (= call!664457 (derivationStepZipperDown!2762 (ite c!1355589 (regTwo!38225 (h!77353 (exprs!8296 ct1!250))) (ite c!1355591 (regTwo!38224 (h!77353 (exprs!8296 ct1!250))) (ite c!1355588 (regOne!38224 (h!77353 (exprs!8296 ct1!250))) (reg!19185 (h!77353 (exprs!8296 ct1!250)))))) (ite (or c!1355589 c!1355591) lt!2597428 (Context!15593 call!664462)) (h!77354 s!7854)))))

(declare-fun b!7294571 () Bool)

(assert (=> b!7294571 (= e!4369110 e!4369107)))

(assert (=> b!7294571 (= c!1355588 (is-Concat!27701 (h!77353 (exprs!8296 ct1!250))))))

(declare-fun bm!664456 () Bool)

(declare-fun $colon$colon!2989 (List!71029 Regex!18856) List!71029)

(assert (=> bm!664456 (= call!664459 ($colon$colon!2989 (exprs!8296 lt!2597428) (ite (or c!1355591 c!1355588) (regTwo!38224 (h!77353 (exprs!8296 ct1!250))) (h!77353 (exprs!8296 ct1!250)))))))

(declare-fun b!7294572 () Bool)

(assert (=> b!7294572 (= e!4369107 call!664461)))

(declare-fun b!7294573 () Bool)

(declare-fun e!4369105 () (Set Context!15592))

(assert (=> b!7294573 (= e!4369105 (set.insert lt!2597428 (as set.empty (Set Context!15592))))))

(declare-fun b!7294574 () Bool)

(assert (=> b!7294574 (= e!4369106 (as set.empty (Set Context!15592)))))

(declare-fun bm!664457 () Bool)

(assert (=> bm!664457 (= call!664460 (derivationStepZipperDown!2762 (ite c!1355589 (regOne!38225 (h!77353 (exprs!8296 ct1!250))) (regOne!38224 (h!77353 (exprs!8296 ct1!250)))) (ite c!1355589 lt!2597428 (Context!15593 call!664459)) (h!77354 s!7854)))))

(declare-fun b!7294575 () Bool)

(assert (=> b!7294575 (= e!4369105 e!4369108)))

(assert (=> b!7294575 (= c!1355589 (is-Union!18856 (h!77353 (exprs!8296 ct1!250))))))

(declare-fun d!2266331 () Bool)

(declare-fun c!1355587 () Bool)

(assert (=> d!2266331 (= c!1355587 (and (is-ElementMatch!18856 (h!77353 (exprs!8296 ct1!250))) (= (c!1355549 (h!77353 (exprs!8296 ct1!250))) (h!77354 s!7854))))))

(assert (=> d!2266331 (= (derivationStepZipperDown!2762 (h!77353 (exprs!8296 ct1!250)) lt!2597428 (h!77354 s!7854)) e!4369105)))

(declare-fun b!7294568 () Bool)

(assert (=> b!7294568 (= e!4369110 (set.union call!664460 call!664458))))

(assert (= (and d!2266331 c!1355587) b!7294573))

(assert (= (and d!2266331 (not c!1355587)) b!7294575))

(assert (= (and b!7294575 c!1355589) b!7294565))

(assert (= (and b!7294575 (not c!1355589)) b!7294566))

(assert (= (and b!7294566 res!2950583) b!7294570))

(assert (= (and b!7294566 c!1355591) b!7294568))

(assert (= (and b!7294566 (not c!1355591)) b!7294571))

(assert (= (and b!7294571 c!1355588) b!7294572))

(assert (= (and b!7294571 (not c!1355588)) b!7294567))

(assert (= (and b!7294567 c!1355590) b!7294569))

(assert (= (and b!7294567 (not c!1355590)) b!7294574))

(assert (= (or b!7294572 b!7294569) bm!664452))

(assert (= (or b!7294572 b!7294569) bm!664454))

(assert (= (or b!7294568 bm!664452) bm!664456))

(assert (= (or b!7294568 bm!664454) bm!664453))

(assert (= (or b!7294565 b!7294568) bm!664457))

(assert (= (or b!7294565 bm!664453) bm!664455))

(declare-fun m!7966098 () Bool)

(assert (=> b!7294573 m!7966098))

(declare-fun m!7966100 () Bool)

(assert (=> bm!664456 m!7966100))

(declare-fun m!7966102 () Bool)

(assert (=> bm!664457 m!7966102))

(declare-fun m!7966104 () Bool)

(assert (=> bm!664455 m!7966104))

(declare-fun m!7966106 () Bool)

(assert (=> b!7294570 m!7966106))

(assert (=> b!7294440 d!2266331))

(declare-fun b!7294576 () Bool)

(declare-fun e!4369111 () (Set Context!15592))

(assert (=> b!7294576 (= e!4369111 (as set.empty (Set Context!15592)))))

(declare-fun b!7294577 () Bool)

(declare-fun e!4369112 () (Set Context!15592))

(assert (=> b!7294577 (= e!4369112 e!4369111)))

(declare-fun c!1355593 () Bool)

(assert (=> b!7294577 (= c!1355593 (is-Cons!70905 (exprs!8296 lt!2597428)))))

(declare-fun b!7294578 () Bool)

(declare-fun e!4369113 () Bool)

(assert (=> b!7294578 (= e!4369113 (nullable!8033 (h!77353 (exprs!8296 lt!2597428))))))

(declare-fun bm!664458 () Bool)

(declare-fun call!664463 () (Set Context!15592))

(assert (=> bm!664458 (= call!664463 (derivationStepZipperDown!2762 (h!77353 (exprs!8296 lt!2597428)) (Context!15593 (t!385103 (exprs!8296 lt!2597428))) (h!77354 s!7854)))))

(declare-fun d!2266333 () Bool)

(declare-fun c!1355592 () Bool)

(assert (=> d!2266333 (= c!1355592 e!4369113)))

(declare-fun res!2950584 () Bool)

(assert (=> d!2266333 (=> (not res!2950584) (not e!4369113))))

(assert (=> d!2266333 (= res!2950584 (is-Cons!70905 (exprs!8296 lt!2597428)))))

(assert (=> d!2266333 (= (derivationStepZipperUp!2606 lt!2597428 (h!77354 s!7854)) e!4369112)))

(declare-fun b!7294579 () Bool)

(assert (=> b!7294579 (= e!4369112 (set.union call!664463 (derivationStepZipperUp!2606 (Context!15593 (t!385103 (exprs!8296 lt!2597428))) (h!77354 s!7854))))))

(declare-fun b!7294580 () Bool)

(assert (=> b!7294580 (= e!4369111 call!664463)))

(assert (= (and d!2266333 res!2950584) b!7294578))

(assert (= (and d!2266333 c!1355592) b!7294579))

(assert (= (and d!2266333 (not c!1355592)) b!7294577))

(assert (= (and b!7294577 c!1355593) b!7294580))

(assert (= (and b!7294577 (not c!1355593)) b!7294576))

(assert (= (or b!7294579 b!7294580) bm!664458))

(declare-fun m!7966108 () Bool)

(assert (=> b!7294578 m!7966108))

(declare-fun m!7966110 () Bool)

(assert (=> bm!664458 m!7966110))

(declare-fun m!7966112 () Bool)

(assert (=> b!7294579 m!7966112))

(assert (=> b!7294440 d!2266333))

(assert (=> b!7294445 d!2266327))

(declare-fun d!2266335 () Bool)

(declare-fun dynLambda!28998 (Int Context!15592) (Set Context!15592))

(assert (=> d!2266335 (= (flatMap!2951 lt!2597426 lambda!450129) (dynLambda!28998 lambda!450129 ct1!250))))

(declare-fun lt!2597490 () Unit!164310)

(declare-fun choose!56516 ((Set Context!15592) Context!15592 Int) Unit!164310)

(assert (=> d!2266335 (= lt!2597490 (choose!56516 lt!2597426 ct1!250 lambda!450129))))

(assert (=> d!2266335 (= lt!2597426 (set.insert ct1!250 (as set.empty (Set Context!15592))))))

(assert (=> d!2266335 (= (lemmaFlatMapOnSingletonSet!2349 lt!2597426 ct1!250 lambda!450129) lt!2597490)))

(declare-fun b_lambda!281245 () Bool)

(assert (=> (not b_lambda!281245) (not d!2266335)))

(declare-fun bs!1912730 () Bool)

(assert (= bs!1912730 d!2266335))

(assert (=> bs!1912730 m!7965976))

(declare-fun m!7966114 () Bool)

(assert (=> bs!1912730 m!7966114))

(declare-fun m!7966116 () Bool)

(assert (=> bs!1912730 m!7966116))

(assert (=> bs!1912730 m!7965972))

(assert (=> b!7294445 d!2266335))

(declare-fun d!2266337 () Bool)

(declare-fun choose!56517 ((Set Context!15592) Int) (Set Context!15592))

(assert (=> d!2266337 (= (flatMap!2951 lt!2597432 lambda!450129) (choose!56517 lt!2597432 lambda!450129))))

(declare-fun bs!1912731 () Bool)

(assert (= bs!1912731 d!2266337))

(declare-fun m!7966118 () Bool)

(assert (=> bs!1912731 m!7966118))

(assert (=> b!7294445 d!2266337))

(declare-fun d!2266339 () Bool)

(assert (=> d!2266339 (= (flatMap!2951 lt!2597432 lambda!450129) (dynLambda!28998 lambda!450129 lt!2597436))))

(declare-fun lt!2597491 () Unit!164310)

(assert (=> d!2266339 (= lt!2597491 (choose!56516 lt!2597432 lt!2597436 lambda!450129))))

(assert (=> d!2266339 (= lt!2597432 (set.insert lt!2597436 (as set.empty (Set Context!15592))))))

(assert (=> d!2266339 (= (lemmaFlatMapOnSingletonSet!2349 lt!2597432 lt!2597436 lambda!450129) lt!2597491)))

(declare-fun b_lambda!281247 () Bool)

(assert (=> (not b_lambda!281247) (not d!2266339)))

(declare-fun bs!1912732 () Bool)

(assert (= bs!1912732 d!2266339))

(assert (=> bs!1912732 m!7965970))

(declare-fun m!7966120 () Bool)

(assert (=> bs!1912732 m!7966120))

(declare-fun m!7966122 () Bool)

(assert (=> bs!1912732 m!7966122))

(assert (=> bs!1912732 m!7965962))

(assert (=> b!7294445 d!2266339))

(declare-fun bs!1912733 () Bool)

(declare-fun d!2266341 () Bool)

(assert (= bs!1912733 (and d!2266341 b!7294445)))

(declare-fun lambda!450155 () Int)

(assert (=> bs!1912733 (= lambda!450155 lambda!450129)))

(assert (=> d!2266341 true))

(assert (=> d!2266341 (= (derivationStepZipper!3589 lt!2597432 (h!77354 s!7854)) (flatMap!2951 lt!2597432 lambda!450155))))

(declare-fun bs!1912734 () Bool)

(assert (= bs!1912734 d!2266341))

(declare-fun m!7966134 () Bool)

(assert (=> bs!1912734 m!7966134))

(assert (=> b!7294445 d!2266341))

(declare-fun d!2266345 () Bool)

(assert (=> d!2266345 (= (flatMap!2951 lt!2597426 lambda!450129) (choose!56517 lt!2597426 lambda!450129))))

(declare-fun bs!1912735 () Bool)

(assert (= bs!1912735 d!2266345))

(declare-fun m!7966136 () Bool)

(assert (=> bs!1912735 m!7966136))

(assert (=> b!7294445 d!2266345))

(declare-fun d!2266347 () Bool)

(assert (=> d!2266347 (forall!17681 (++!16746 (exprs!8296 ct1!250) (exprs!8296 ct2!346)) lambda!450128)))

(declare-fun lt!2597492 () Unit!164310)

(assert (=> d!2266347 (= lt!2597492 (choose!56515 (exprs!8296 ct1!250) (exprs!8296 ct2!346) lambda!450128))))

(assert (=> d!2266347 (forall!17681 (exprs!8296 ct1!250) lambda!450128)))

(assert (=> d!2266347 (= (lemmaConcatPreservesForall!1603 (exprs!8296 ct1!250) (exprs!8296 ct2!346) lambda!450128) lt!2597492)))

(declare-fun bs!1912736 () Bool)

(assert (= bs!1912736 d!2266347))

(assert (=> bs!1912736 m!7965978))

(assert (=> bs!1912736 m!7965978))

(declare-fun m!7966138 () Bool)

(assert (=> bs!1912736 m!7966138))

(declare-fun m!7966140 () Bool)

(assert (=> bs!1912736 m!7966140))

(declare-fun m!7966142 () Bool)

(assert (=> bs!1912736 m!7966142))

(assert (=> b!7294445 d!2266347))

(declare-fun b!7294594 () Bool)

(declare-fun e!4369120 () (Set Context!15592))

(assert (=> b!7294594 (= e!4369120 (as set.empty (Set Context!15592)))))

(declare-fun b!7294595 () Bool)

(declare-fun e!4369121 () (Set Context!15592))

(assert (=> b!7294595 (= e!4369121 e!4369120)))

(declare-fun c!1355602 () Bool)

(assert (=> b!7294595 (= c!1355602 (is-Cons!70905 (exprs!8296 lt!2597436)))))

(declare-fun b!7294596 () Bool)

(declare-fun e!4369122 () Bool)

(assert (=> b!7294596 (= e!4369122 (nullable!8033 (h!77353 (exprs!8296 lt!2597436))))))

(declare-fun bm!664465 () Bool)

(declare-fun call!664470 () (Set Context!15592))

(assert (=> bm!664465 (= call!664470 (derivationStepZipperDown!2762 (h!77353 (exprs!8296 lt!2597436)) (Context!15593 (t!385103 (exprs!8296 lt!2597436))) (h!77354 s!7854)))))

(declare-fun d!2266349 () Bool)

(declare-fun c!1355601 () Bool)

(assert (=> d!2266349 (= c!1355601 e!4369122)))

(declare-fun res!2950586 () Bool)

(assert (=> d!2266349 (=> (not res!2950586) (not e!4369122))))

(assert (=> d!2266349 (= res!2950586 (is-Cons!70905 (exprs!8296 lt!2597436)))))

(assert (=> d!2266349 (= (derivationStepZipperUp!2606 lt!2597436 (h!77354 s!7854)) e!4369121)))

(declare-fun b!7294597 () Bool)

(assert (=> b!7294597 (= e!4369121 (set.union call!664470 (derivationStepZipperUp!2606 (Context!15593 (t!385103 (exprs!8296 lt!2597436))) (h!77354 s!7854))))))

(declare-fun b!7294598 () Bool)

(assert (=> b!7294598 (= e!4369120 call!664470)))

(assert (= (and d!2266349 res!2950586) b!7294596))

(assert (= (and d!2266349 c!1355601) b!7294597))

(assert (= (and d!2266349 (not c!1355601)) b!7294595))

(assert (= (and b!7294595 c!1355602) b!7294598))

(assert (= (and b!7294595 (not c!1355602)) b!7294594))

(assert (= (or b!7294597 b!7294598) bm!664465))

(declare-fun m!7966144 () Bool)

(assert (=> b!7294596 m!7966144))

(declare-fun m!7966146 () Bool)

(assert (=> bm!664465 m!7966146))

(declare-fun m!7966148 () Bool)

(assert (=> b!7294597 m!7966148))

(assert (=> b!7294445 d!2266349))

(declare-fun b!7294600 () Bool)

(declare-fun e!4369124 () List!71029)

(assert (=> b!7294600 (= e!4369124 (Cons!70905 (h!77353 (exprs!8296 ct1!250)) (++!16746 (t!385103 (exprs!8296 ct1!250)) (exprs!8296 ct2!346))))))

(declare-fun b!7294602 () Bool)

(declare-fun lt!2597493 () List!71029)

(declare-fun e!4369123 () Bool)

(assert (=> b!7294602 (= e!4369123 (or (not (= (exprs!8296 ct2!346) Nil!70905)) (= lt!2597493 (exprs!8296 ct1!250))))))

(declare-fun b!7294601 () Bool)

(declare-fun res!2950588 () Bool)

(assert (=> b!7294601 (=> (not res!2950588) (not e!4369123))))

(assert (=> b!7294601 (= res!2950588 (= (size!41855 lt!2597493) (+ (size!41855 (exprs!8296 ct1!250)) (size!41855 (exprs!8296 ct2!346)))))))

(declare-fun d!2266351 () Bool)

(assert (=> d!2266351 e!4369123))

(declare-fun res!2950587 () Bool)

(assert (=> d!2266351 (=> (not res!2950587) (not e!4369123))))

(assert (=> d!2266351 (= res!2950587 (= (content!14809 lt!2597493) (set.union (content!14809 (exprs!8296 ct1!250)) (content!14809 (exprs!8296 ct2!346)))))))

(assert (=> d!2266351 (= lt!2597493 e!4369124)))

(declare-fun c!1355603 () Bool)

(assert (=> d!2266351 (= c!1355603 (is-Nil!70905 (exprs!8296 ct1!250)))))

(assert (=> d!2266351 (= (++!16746 (exprs!8296 ct1!250) (exprs!8296 ct2!346)) lt!2597493)))

(declare-fun b!7294599 () Bool)

(assert (=> b!7294599 (= e!4369124 (exprs!8296 ct2!346))))

(assert (= (and d!2266351 c!1355603) b!7294599))

(assert (= (and d!2266351 (not c!1355603)) b!7294600))

(assert (= (and d!2266351 res!2950587) b!7294601))

(assert (= (and b!7294601 res!2950588) b!7294602))

(declare-fun m!7966150 () Bool)

(assert (=> b!7294600 m!7966150))

(declare-fun m!7966152 () Bool)

(assert (=> b!7294601 m!7966152))

(declare-fun m!7966154 () Bool)

(assert (=> b!7294601 m!7966154))

(assert (=> b!7294601 m!7966062))

(declare-fun m!7966156 () Bool)

(assert (=> d!2266351 m!7966156))

(declare-fun m!7966158 () Bool)

(assert (=> d!2266351 m!7966158))

(assert (=> d!2266351 m!7966068))

(assert (=> b!7294445 d!2266351))

(declare-fun bs!1912737 () Bool)

(declare-fun d!2266353 () Bool)

(assert (= bs!1912737 (and d!2266353 b!7294445)))

(declare-fun lambda!450158 () Int)

(assert (=> bs!1912737 (not (= lambda!450158 lambda!450128))))

(declare-fun bs!1912738 () Bool)

(assert (= bs!1912738 (and d!2266353 d!2266309)))

(assert (=> bs!1912738 (not (= lambda!450158 lambda!450150))))

(declare-fun bs!1912739 () Bool)

(assert (= bs!1912739 (and d!2266353 d!2266319)))

(assert (=> bs!1912739 (not (= lambda!450158 lambda!450151))))

(declare-fun bs!1912740 () Bool)

(assert (= bs!1912740 (and d!2266353 d!2266321)))

(assert (=> bs!1912740 (not (= lambda!450158 lambda!450152))))

(assert (=> d!2266353 (= (nullableContext!346 ct1!250) (forall!17681 (exprs!8296 ct1!250) lambda!450158))))

(declare-fun bs!1912741 () Bool)

(assert (= bs!1912741 d!2266353))

(declare-fun m!7966160 () Bool)

(assert (=> bs!1912741 m!7966160))

(assert (=> b!7294444 d!2266353))

(declare-fun b!7294607 () Bool)

(declare-fun e!4369127 () Bool)

(declare-fun tp!2062155 () Bool)

(declare-fun tp!2062156 () Bool)

(assert (=> b!7294607 (= e!4369127 (and tp!2062155 tp!2062156))))

(assert (=> b!7294442 (= tp!2062141 e!4369127)))

(assert (= (and b!7294442 (is-Cons!70905 (exprs!8296 ct1!250))) b!7294607))

(declare-fun b!7294612 () Bool)

(declare-fun e!4369130 () Bool)

(declare-fun tp!2062159 () Bool)

(assert (=> b!7294612 (= e!4369130 (and tp_is_empty!47177 tp!2062159))))

(assert (=> b!7294446 (= tp!2062139 e!4369130)))

(assert (= (and b!7294446 (is-Cons!70906 (t!385104 s!7854))) b!7294612))

(declare-fun b!7294613 () Bool)

(declare-fun e!4369131 () Bool)

(declare-fun tp!2062160 () Bool)

(declare-fun tp!2062161 () Bool)

(assert (=> b!7294613 (= e!4369131 (and tp!2062160 tp!2062161))))

(assert (=> b!7294450 (= tp!2062140 e!4369131)))

(assert (= (and b!7294450 (is-Cons!70905 (exprs!8296 ct2!346))) b!7294613))

(declare-fun b_lambda!281249 () Bool)

(assert (= b_lambda!281247 (or b!7294445 b_lambda!281249)))

(declare-fun bs!1912742 () Bool)

(declare-fun d!2266355 () Bool)

(assert (= bs!1912742 (and d!2266355 b!7294445)))

(assert (=> bs!1912742 (= (dynLambda!28998 lambda!450129 lt!2597436) (derivationStepZipperUp!2606 lt!2597436 (h!77354 s!7854)))))

(assert (=> bs!1912742 m!7965982))

(assert (=> d!2266339 d!2266355))

(declare-fun b_lambda!281251 () Bool)

(assert (= b_lambda!281245 (or b!7294445 b_lambda!281251)))

(declare-fun bs!1912743 () Bool)

(declare-fun d!2266357 () Bool)

(assert (= bs!1912743 (and d!2266357 b!7294445)))

(assert (=> bs!1912743 (= (dynLambda!28998 lambda!450129 ct1!250) (derivationStepZipperUp!2606 ct1!250 (h!77354 s!7854)))))

(assert (=> bs!1912743 m!7965968))

(assert (=> d!2266335 d!2266357))

(push 1)

(assert (not d!2266319))

(assert (not b_lambda!281249))

(assert (not bm!664457))

(assert tp_is_empty!47177)

(assert (not b!7294505))

(assert (not d!2266341))

(assert (not b!7294600))

(assert (not d!2266315))

(assert (not d!2266347))

(assert (not bm!664458))

(assert (not b!7294570))

(assert (not bm!664456))

(assert (not b!7294498))

(assert (not b!7294504))

(assert (not b!7294596))

(assert (not d!2266309))

(assert (not b!7294613))

(assert (not b!7294541))

(assert (not d!2266311))

(assert (not b!7294597))

(assert (not b!7294578))

(assert (not bm!664455))

(assert (not b!7294601))

(assert (not d!2266321))

(assert (not bm!664429))

(assert (not d!2266337))

(assert (not b_lambda!281251))

(assert (not b!7294607))

(assert (not d!2266353))

(assert (not b!7294497))

(assert (not d!2266335))

(assert (not d!2266339))

(assert (not d!2266317))

(assert (not d!2266351))

(assert (not d!2266345))

(assert (not bm!664465))

(assert (not d!2266325))

(assert (not b!7294612))

(assert (not b!7294540))

(assert (not bs!1912742))

(assert (not bs!1912743))

(assert (not b!7294579))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

