; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710824 () Bool)

(assert start!710824)

(declare-fun b!7293885 () Bool)

(assert (=> b!7293885 true))

(declare-fun b!7293878 () Bool)

(declare-fun e!4368727 () Bool)

(declare-fun tp!2061995 () Bool)

(assert (=> b!7293878 (= e!4368727 tp!2061995)))

(declare-fun res!2950372 () Bool)

(declare-fun e!4368728 () Bool)

(assert (=> start!710824 (=> (not res!2950372) (not e!4368728))))

(declare-datatypes ((C!37978 0))(
  ( (C!37979 (val!28937 Int)) )
))
(declare-datatypes ((Regex!18852 0))(
  ( (ElementMatch!18852 (c!1355385 C!37978)) (Concat!27697 (regOne!38216 Regex!18852) (regTwo!38216 Regex!18852)) (EmptyExpr!18852) (Star!18852 (reg!19181 Regex!18852)) (EmptyLang!18852) (Union!18852 (regOne!38217 Regex!18852) (regTwo!38217 Regex!18852)) )
))
(declare-datatypes ((List!71021 0))(
  ( (Nil!70897) (Cons!70897 (h!77345 Regex!18852) (t!385095 List!71021)) )
))
(declare-datatypes ((Context!15584 0))(
  ( (Context!15585 (exprs!8292 List!71021)) )
))
(declare-fun ct2!346 () Context!15584)

(declare-datatypes ((List!71022 0))(
  ( (Nil!70898) (Cons!70898 (h!77346 C!37978) (t!385096 List!71022)) )
))
(declare-fun s!7854 () List!71022)

(declare-fun matchZipper!3756 ((Set Context!15584) List!71022) Bool)

(assert (=> start!710824 (= res!2950372 (matchZipper!3756 (set.insert ct2!346 (as set.empty (Set Context!15584))) s!7854))))

(assert (=> start!710824 e!4368728))

(declare-fun inv!90141 (Context!15584) Bool)

(assert (=> start!710824 (and (inv!90141 ct2!346) e!4368727)))

(declare-fun e!4368729 () Bool)

(assert (=> start!710824 e!4368729))

(declare-fun ct1!250 () Context!15584)

(declare-fun e!4368726 () Bool)

(assert (=> start!710824 (and (inv!90141 ct1!250) e!4368726)))

(declare-fun b!7293879 () Bool)

(declare-fun tp!2061994 () Bool)

(assert (=> b!7293879 (= e!4368726 tp!2061994)))

(declare-fun b!7293880 () Bool)

(declare-fun res!2950373 () Bool)

(declare-fun e!4368725 () Bool)

(assert (=> b!7293880 (=> res!2950373 e!4368725)))

(assert (=> b!7293880 (= res!2950373 (not (is-Cons!70897 (exprs!8292 ct1!250))))))

(declare-fun b!7293881 () Bool)

(declare-fun isEmpty!40775 (List!71021) Bool)

(assert (=> b!7293881 (= e!4368725 (not (isEmpty!40775 (exprs!8292 ct1!250))))))

(declare-fun b!7293882 () Bool)

(declare-fun tp_is_empty!47169 () Bool)

(declare-fun tp!2061993 () Bool)

(assert (=> b!7293882 (= e!4368729 (and tp_is_empty!47169 tp!2061993))))

(declare-fun b!7293883 () Bool)

(declare-fun res!2950371 () Bool)

(assert (=> b!7293883 (=> (not res!2950371) (not e!4368728))))

(declare-fun nullableContext!342 (Context!15584) Bool)

(assert (=> b!7293883 (= res!2950371 (nullableContext!342 ct1!250))))

(declare-fun b!7293884 () Bool)

(declare-fun res!2950374 () Bool)

(assert (=> b!7293884 (=> (not res!2950374) (not e!4368728))))

(assert (=> b!7293884 (= res!2950374 (is-Cons!70898 s!7854))))

(assert (=> b!7293885 (= e!4368728 (not e!4368725))))

(declare-fun res!2950370 () Bool)

(assert (=> b!7293885 (=> res!2950370 e!4368725)))

(declare-fun lt!2597248 () (Set Context!15584))

(declare-fun lt!2597245 () (Set Context!15584))

(declare-fun derivationStepZipper!3585 ((Set Context!15584) C!37978) (Set Context!15584))

(assert (=> b!7293885 (= res!2950370 (not (= lt!2597248 (derivationStepZipper!3585 lt!2597245 (h!77346 s!7854)))))))

(declare-fun lambda!450018 () Int)

(declare-datatypes ((Unit!164302 0))(
  ( (Unit!164303) )
))
(declare-fun lt!2597247 () Unit!164302)

(declare-fun lemmaConcatPreservesForall!1599 (List!71021 List!71021 Int) Unit!164302)

(assert (=> b!7293885 (= lt!2597247 (lemmaConcatPreservesForall!1599 (exprs!8292 ct1!250) (exprs!8292 ct2!346) lambda!450018))))

(declare-fun lambda!450019 () Int)

(declare-fun lt!2597249 () Context!15584)

(declare-fun flatMap!2947 ((Set Context!15584) Int) (Set Context!15584))

(declare-fun derivationStepZipperUp!2602 (Context!15584 C!37978) (Set Context!15584))

(assert (=> b!7293885 (= (flatMap!2947 lt!2597245 lambda!450019) (derivationStepZipperUp!2602 lt!2597249 (h!77346 s!7854)))))

(declare-fun lt!2597240 () Unit!164302)

(declare-fun lemmaFlatMapOnSingletonSet!2345 ((Set Context!15584) Context!15584 Int) Unit!164302)

(assert (=> b!7293885 (= lt!2597240 (lemmaFlatMapOnSingletonSet!2345 lt!2597245 lt!2597249 lambda!450019))))

(assert (=> b!7293885 (= lt!2597245 (set.insert lt!2597249 (as set.empty (Set Context!15584))))))

(declare-fun lt!2597242 () Unit!164302)

(assert (=> b!7293885 (= lt!2597242 (lemmaConcatPreservesForall!1599 (exprs!8292 ct1!250) (exprs!8292 ct2!346) lambda!450018))))

(declare-fun lt!2597244 () Unit!164302)

(assert (=> b!7293885 (= lt!2597244 (lemmaConcatPreservesForall!1599 (exprs!8292 ct1!250) (exprs!8292 ct2!346) lambda!450018))))

(declare-fun lt!2597246 () (Set Context!15584))

(assert (=> b!7293885 (= (flatMap!2947 lt!2597246 lambda!450019) (derivationStepZipperUp!2602 ct1!250 (h!77346 s!7854)))))

(declare-fun lt!2597241 () Unit!164302)

(assert (=> b!7293885 (= lt!2597241 (lemmaFlatMapOnSingletonSet!2345 lt!2597246 ct1!250 lambda!450019))))

(assert (=> b!7293885 (= lt!2597246 (set.insert ct1!250 (as set.empty (Set Context!15584))))))

(assert (=> b!7293885 (= lt!2597248 (derivationStepZipperUp!2602 lt!2597249 (h!77346 s!7854)))))

(declare-fun ++!16742 (List!71021 List!71021) List!71021)

(assert (=> b!7293885 (= lt!2597249 (Context!15585 (++!16742 (exprs!8292 ct1!250) (exprs!8292 ct2!346))))))

(declare-fun lt!2597243 () Unit!164302)

(assert (=> b!7293885 (= lt!2597243 (lemmaConcatPreservesForall!1599 (exprs!8292 ct1!250) (exprs!8292 ct2!346) lambda!450018))))

(assert (= (and start!710824 res!2950372) b!7293883))

(assert (= (and b!7293883 res!2950371) b!7293884))

(assert (= (and b!7293884 res!2950374) b!7293885))

(assert (= (and b!7293885 (not res!2950370)) b!7293880))

(assert (= (and b!7293880 (not res!2950373)) b!7293881))

(assert (= start!710824 b!7293878))

(assert (= (and start!710824 (is-Cons!70898 s!7854)) b!7293882))

(assert (= start!710824 b!7293879))

(declare-fun m!7965326 () Bool)

(assert (=> start!710824 m!7965326))

(assert (=> start!710824 m!7965326))

(declare-fun m!7965328 () Bool)

(assert (=> start!710824 m!7965328))

(declare-fun m!7965330 () Bool)

(assert (=> start!710824 m!7965330))

(declare-fun m!7965332 () Bool)

(assert (=> start!710824 m!7965332))

(declare-fun m!7965334 () Bool)

(assert (=> b!7293881 m!7965334))

(declare-fun m!7965336 () Bool)

(assert (=> b!7293883 m!7965336))

(declare-fun m!7965338 () Bool)

(assert (=> b!7293885 m!7965338))

(declare-fun m!7965340 () Bool)

(assert (=> b!7293885 m!7965340))

(declare-fun m!7965342 () Bool)

(assert (=> b!7293885 m!7965342))

(declare-fun m!7965344 () Bool)

(assert (=> b!7293885 m!7965344))

(declare-fun m!7965346 () Bool)

(assert (=> b!7293885 m!7965346))

(declare-fun m!7965348 () Bool)

(assert (=> b!7293885 m!7965348))

(assert (=> b!7293885 m!7965346))

(declare-fun m!7965350 () Bool)

(assert (=> b!7293885 m!7965350))

(declare-fun m!7965352 () Bool)

(assert (=> b!7293885 m!7965352))

(assert (=> b!7293885 m!7965346))

(assert (=> b!7293885 m!7965346))

(declare-fun m!7965354 () Bool)

(assert (=> b!7293885 m!7965354))

(declare-fun m!7965356 () Bool)

(assert (=> b!7293885 m!7965356))

(declare-fun m!7965358 () Bool)

(assert (=> b!7293885 m!7965358))

(push 1)

(assert (not start!710824))

(assert (not b!7293882))

(assert (not b!7293878))

(assert (not b!7293881))

(assert (not b!7293885))

(assert tp_is_empty!47169)

(assert (not b!7293883))

(assert (not b!7293879))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1912601 () Bool)

(declare-fun d!2266023 () Bool)

(assert (= bs!1912601 (and d!2266023 b!7293885)))

(declare-fun lambda!450036 () Int)

(assert (=> bs!1912601 (not (= lambda!450036 lambda!450018))))

(declare-fun forall!17677 (List!71021 Int) Bool)

(assert (=> d!2266023 (= (nullableContext!342 ct1!250) (forall!17677 (exprs!8292 ct1!250) lambda!450036))))

(declare-fun bs!1912602 () Bool)

(assert (= bs!1912602 d!2266023))

(declare-fun m!7965394 () Bool)

(assert (=> bs!1912602 m!7965394))

(assert (=> b!7293883 d!2266023))

(declare-fun d!2266025 () Bool)

(declare-fun c!1355394 () Bool)

(declare-fun isEmpty!40777 (List!71022) Bool)

(assert (=> d!2266025 (= c!1355394 (isEmpty!40777 s!7854))))

(declare-fun e!4368747 () Bool)

(assert (=> d!2266025 (= (matchZipper!3756 (set.insert ct2!346 (as set.empty (Set Context!15584))) s!7854) e!4368747)))

(declare-fun b!7293918 () Bool)

(declare-fun nullableZipper!3049 ((Set Context!15584)) Bool)

(assert (=> b!7293918 (= e!4368747 (nullableZipper!3049 (set.insert ct2!346 (as set.empty (Set Context!15584)))))))

(declare-fun b!7293919 () Bool)

(declare-fun head!15047 (List!71022) C!37978)

(declare-fun tail!14560 (List!71022) List!71022)

(assert (=> b!7293919 (= e!4368747 (matchZipper!3756 (derivationStepZipper!3585 (set.insert ct2!346 (as set.empty (Set Context!15584))) (head!15047 s!7854)) (tail!14560 s!7854)))))

(assert (= (and d!2266025 c!1355394) b!7293918))

(assert (= (and d!2266025 (not c!1355394)) b!7293919))

(declare-fun m!7965396 () Bool)

(assert (=> d!2266025 m!7965396))

(assert (=> b!7293918 m!7965326))

(declare-fun m!7965398 () Bool)

(assert (=> b!7293918 m!7965398))

(declare-fun m!7965400 () Bool)

(assert (=> b!7293919 m!7965400))

(assert (=> b!7293919 m!7965326))

(assert (=> b!7293919 m!7965400))

(declare-fun m!7965402 () Bool)

(assert (=> b!7293919 m!7965402))

(declare-fun m!7965404 () Bool)

(assert (=> b!7293919 m!7965404))

(assert (=> b!7293919 m!7965402))

(assert (=> b!7293919 m!7965404))

(declare-fun m!7965406 () Bool)

(assert (=> b!7293919 m!7965406))

(assert (=> start!710824 d!2266025))

(declare-fun bs!1912603 () Bool)

(declare-fun d!2266027 () Bool)

(assert (= bs!1912603 (and d!2266027 b!7293885)))

(declare-fun lambda!450039 () Int)

(assert (=> bs!1912603 (= lambda!450039 lambda!450018)))

(declare-fun bs!1912604 () Bool)

(assert (= bs!1912604 (and d!2266027 d!2266023)))

(assert (=> bs!1912604 (not (= lambda!450039 lambda!450036))))

(assert (=> d!2266027 (= (inv!90141 ct2!346) (forall!17677 (exprs!8292 ct2!346) lambda!450039))))

(declare-fun bs!1912605 () Bool)

(assert (= bs!1912605 d!2266027))

(declare-fun m!7965408 () Bool)

(assert (=> bs!1912605 m!7965408))

(assert (=> start!710824 d!2266027))

(declare-fun bs!1912606 () Bool)

(declare-fun d!2266029 () Bool)

(assert (= bs!1912606 (and d!2266029 b!7293885)))

(declare-fun lambda!450040 () Int)

(assert (=> bs!1912606 (= lambda!450040 lambda!450018)))

(declare-fun bs!1912607 () Bool)

(assert (= bs!1912607 (and d!2266029 d!2266023)))

(assert (=> bs!1912607 (not (= lambda!450040 lambda!450036))))

(declare-fun bs!1912608 () Bool)

(assert (= bs!1912608 (and d!2266029 d!2266027)))

(assert (=> bs!1912608 (= lambda!450040 lambda!450039)))

(assert (=> d!2266029 (= (inv!90141 ct1!250) (forall!17677 (exprs!8292 ct1!250) lambda!450040))))

(declare-fun bs!1912609 () Bool)

(assert (= bs!1912609 d!2266029))

(declare-fun m!7965410 () Bool)

(assert (=> bs!1912609 m!7965410))

(assert (=> start!710824 d!2266029))

(declare-fun bs!1912610 () Bool)

(declare-fun d!2266031 () Bool)

(assert (= bs!1912610 (and d!2266031 b!7293885)))

(declare-fun lambda!450043 () Int)

(assert (=> bs!1912610 (= lambda!450043 lambda!450019)))

(assert (=> d!2266031 true))

(assert (=> d!2266031 (= (derivationStepZipper!3585 lt!2597245 (h!77346 s!7854)) (flatMap!2947 lt!2597245 lambda!450043))))

(declare-fun bs!1912611 () Bool)

(assert (= bs!1912611 d!2266031))

(declare-fun m!7965412 () Bool)

(assert (=> bs!1912611 m!7965412))

(assert (=> b!7293885 d!2266031))

(declare-fun b!7293930 () Bool)

(declare-fun e!4368753 () List!71021)

(assert (=> b!7293930 (= e!4368753 (exprs!8292 ct2!346))))

(declare-fun e!4368752 () Bool)

(declare-fun b!7293933 () Bool)

(declare-fun lt!2597282 () List!71021)

(assert (=> b!7293933 (= e!4368752 (or (not (= (exprs!8292 ct2!346) Nil!70897)) (= lt!2597282 (exprs!8292 ct1!250))))))

(declare-fun d!2266033 () Bool)

(assert (=> d!2266033 e!4368752))

(declare-fun res!2950394 () Bool)

(assert (=> d!2266033 (=> (not res!2950394) (not e!4368752))))

(declare-fun content!14806 (List!71021) (Set Regex!18852))

(assert (=> d!2266033 (= res!2950394 (= (content!14806 lt!2597282) (set.union (content!14806 (exprs!8292 ct1!250)) (content!14806 (exprs!8292 ct2!346)))))))

(assert (=> d!2266033 (= lt!2597282 e!4368753)))

(declare-fun c!1355399 () Bool)

(assert (=> d!2266033 (= c!1355399 (is-Nil!70897 (exprs!8292 ct1!250)))))

(assert (=> d!2266033 (= (++!16742 (exprs!8292 ct1!250) (exprs!8292 ct2!346)) lt!2597282)))

(declare-fun b!7293932 () Bool)

(declare-fun res!2950395 () Bool)

(assert (=> b!7293932 (=> (not res!2950395) (not e!4368752))))

(declare-fun size!41852 (List!71021) Int)

(assert (=> b!7293932 (= res!2950395 (= (size!41852 lt!2597282) (+ (size!41852 (exprs!8292 ct1!250)) (size!41852 (exprs!8292 ct2!346)))))))

(declare-fun b!7293931 () Bool)

(assert (=> b!7293931 (= e!4368753 (Cons!70897 (h!77345 (exprs!8292 ct1!250)) (++!16742 (t!385095 (exprs!8292 ct1!250)) (exprs!8292 ct2!346))))))

(assert (= (and d!2266033 c!1355399) b!7293930))

(assert (= (and d!2266033 (not c!1355399)) b!7293931))

(assert (= (and d!2266033 res!2950394) b!7293932))

(assert (= (and b!7293932 res!2950395) b!7293933))

(declare-fun m!7965414 () Bool)

(assert (=> d!2266033 m!7965414))

(declare-fun m!7965416 () Bool)

(assert (=> d!2266033 m!7965416))

(declare-fun m!7965418 () Bool)

(assert (=> d!2266033 m!7965418))

(declare-fun m!7965420 () Bool)

(assert (=> b!7293932 m!7965420))

(declare-fun m!7965422 () Bool)

(assert (=> b!7293932 m!7965422))

(declare-fun m!7965424 () Bool)

(assert (=> b!7293932 m!7965424))

(declare-fun m!7965426 () Bool)

(assert (=> b!7293931 m!7965426))

(assert (=> b!7293885 d!2266033))

(declare-fun d!2266035 () Bool)

(declare-fun choose!56506 ((Set Context!15584) Int) (Set Context!15584))

(assert (=> d!2266035 (= (flatMap!2947 lt!2597245 lambda!450019) (choose!56506 lt!2597245 lambda!450019))))

(declare-fun bs!1912612 () Bool)

(assert (= bs!1912612 d!2266035))

(declare-fun m!7965428 () Bool)

(assert (=> bs!1912612 m!7965428))

(assert (=> b!7293885 d!2266035))

(declare-fun d!2266037 () Bool)

(declare-fun dynLambda!28993 (Int Context!15584) (Set Context!15584))

(assert (=> d!2266037 (= (flatMap!2947 lt!2597246 lambda!450019) (dynLambda!28993 lambda!450019 ct1!250))))

(declare-fun lt!2597285 () Unit!164302)

(declare-fun choose!56507 ((Set Context!15584) Context!15584 Int) Unit!164302)

(assert (=> d!2266037 (= lt!2597285 (choose!56507 lt!2597246 ct1!250 lambda!450019))))

(assert (=> d!2266037 (= lt!2597246 (set.insert ct1!250 (as set.empty (Set Context!15584))))))

(assert (=> d!2266037 (= (lemmaFlatMapOnSingletonSet!2345 lt!2597246 ct1!250 lambda!450019) lt!2597285)))

(declare-fun b_lambda!281149 () Bool)

(assert (=> (not b_lambda!281149) (not d!2266037)))

(declare-fun bs!1912613 () Bool)

(assert (= bs!1912613 d!2266037))

(assert (=> bs!1912613 m!7965358))

(declare-fun m!7965430 () Bool)

(assert (=> bs!1912613 m!7965430))

(declare-fun m!7965432 () Bool)

(assert (=> bs!1912613 m!7965432))

(assert (=> bs!1912613 m!7965348))

(assert (=> b!7293885 d!2266037))

(declare-fun d!2266041 () Bool)

(assert (=> d!2266041 (= (flatMap!2947 lt!2597245 lambda!450019) (dynLambda!28993 lambda!450019 lt!2597249))))

(declare-fun lt!2597286 () Unit!164302)

(assert (=> d!2266041 (= lt!2597286 (choose!56507 lt!2597245 lt!2597249 lambda!450019))))

(assert (=> d!2266041 (= lt!2597245 (set.insert lt!2597249 (as set.empty (Set Context!15584))))))

(assert (=> d!2266041 (= (lemmaFlatMapOnSingletonSet!2345 lt!2597245 lt!2597249 lambda!450019) lt!2597286)))

(declare-fun b_lambda!281151 () Bool)

(assert (=> (not b_lambda!281151) (not d!2266041)))

(declare-fun bs!1912614 () Bool)

(assert (= bs!1912614 d!2266041))

(assert (=> bs!1912614 m!7965354))

(declare-fun m!7965434 () Bool)

(assert (=> bs!1912614 m!7965434))

(declare-fun m!7965436 () Bool)

(assert (=> bs!1912614 m!7965436))

(assert (=> bs!1912614 m!7965338))

(assert (=> b!7293885 d!2266041))

(declare-fun d!2266043 () Bool)

(assert (=> d!2266043 (forall!17677 (++!16742 (exprs!8292 ct1!250) (exprs!8292 ct2!346)) lambda!450018)))

(declare-fun lt!2597289 () Unit!164302)

(declare-fun choose!56508 (List!71021 List!71021 Int) Unit!164302)

(assert (=> d!2266043 (= lt!2597289 (choose!56508 (exprs!8292 ct1!250) (exprs!8292 ct2!346) lambda!450018))))

(assert (=> d!2266043 (forall!17677 (exprs!8292 ct1!250) lambda!450018)))

(assert (=> d!2266043 (= (lemmaConcatPreservesForall!1599 (exprs!8292 ct1!250) (exprs!8292 ct2!346) lambda!450018) lt!2597289)))

(declare-fun bs!1912615 () Bool)

(assert (= bs!1912615 d!2266043))

(assert (=> bs!1912615 m!7965350))

(assert (=> bs!1912615 m!7965350))

(declare-fun m!7965438 () Bool)

(assert (=> bs!1912615 m!7965438))

(declare-fun m!7965440 () Bool)

(assert (=> bs!1912615 m!7965440))

(declare-fun m!7965442 () Bool)

(assert (=> bs!1912615 m!7965442))

(assert (=> b!7293885 d!2266043))

(declare-fun d!2266045 () Bool)

(assert (=> d!2266045 (= (flatMap!2947 lt!2597246 lambda!450019) (choose!56506 lt!2597246 lambda!450019))))

(declare-fun bs!1912616 () Bool)

(assert (= bs!1912616 d!2266045))

(declare-fun m!7965444 () Bool)

(assert (=> bs!1912616 m!7965444))

(assert (=> b!7293885 d!2266045))

(declare-fun b!7293948 () Bool)

(declare-fun call!664364 () (Set Context!15584))

(declare-fun e!4368762 () (Set Context!15584))

(assert (=> b!7293948 (= e!4368762 (set.union call!664364 (derivationStepZipperUp!2602 (Context!15585 (t!385095 (exprs!8292 lt!2597249))) (h!77346 s!7854))))))

(declare-fun b!7293949 () Bool)

(declare-fun e!4368763 () (Set Context!15584))

(assert (=> b!7293949 (= e!4368762 e!4368763)))

(declare-fun c!1355407 () Bool)

(assert (=> b!7293949 (= c!1355407 (is-Cons!70897 (exprs!8292 lt!2597249)))))

(declare-fun b!7293950 () Bool)

(declare-fun e!4368764 () Bool)

(declare-fun nullable!8030 (Regex!18852) Bool)

(assert (=> b!7293950 (= e!4368764 (nullable!8030 (h!77345 (exprs!8292 lt!2597249))))))

(declare-fun d!2266047 () Bool)

(declare-fun c!1355406 () Bool)

(assert (=> d!2266047 (= c!1355406 e!4368764)))

(declare-fun res!2950398 () Bool)

(assert (=> d!2266047 (=> (not res!2950398) (not e!4368764))))

(assert (=> d!2266047 (= res!2950398 (is-Cons!70897 (exprs!8292 lt!2597249)))))

(assert (=> d!2266047 (= (derivationStepZipperUp!2602 lt!2597249 (h!77346 s!7854)) e!4368762)))

(declare-fun b!7293951 () Bool)

(assert (=> b!7293951 (= e!4368763 call!664364)))

(declare-fun b!7293952 () Bool)

(assert (=> b!7293952 (= e!4368763 (as set.empty (Set Context!15584)))))

(declare-fun bm!664359 () Bool)

(declare-fun derivationStepZipperDown!2759 (Regex!18852 Context!15584 C!37978) (Set Context!15584))

(assert (=> bm!664359 (= call!664364 (derivationStepZipperDown!2759 (h!77345 (exprs!8292 lt!2597249)) (Context!15585 (t!385095 (exprs!8292 lt!2597249))) (h!77346 s!7854)))))

(assert (= (and d!2266047 res!2950398) b!7293950))

(assert (= (and d!2266047 c!1355406) b!7293948))

(assert (= (and d!2266047 (not c!1355406)) b!7293949))

(assert (= (and b!7293949 c!1355407) b!7293951))

(assert (= (and b!7293949 (not c!1355407)) b!7293952))

(assert (= (or b!7293948 b!7293951) bm!664359))

(declare-fun m!7965446 () Bool)

(assert (=> b!7293948 m!7965446))

(declare-fun m!7965448 () Bool)

(assert (=> b!7293950 m!7965448))

(declare-fun m!7965450 () Bool)

(assert (=> bm!664359 m!7965450))

(assert (=> b!7293885 d!2266047))

(declare-fun call!664365 () (Set Context!15584))

(declare-fun e!4368765 () (Set Context!15584))

(declare-fun b!7293953 () Bool)

(assert (=> b!7293953 (= e!4368765 (set.union call!664365 (derivationStepZipperUp!2602 (Context!15585 (t!385095 (exprs!8292 ct1!250))) (h!77346 s!7854))))))

(declare-fun b!7293954 () Bool)

(declare-fun e!4368766 () (Set Context!15584))

(assert (=> b!7293954 (= e!4368765 e!4368766)))

(declare-fun c!1355409 () Bool)

(assert (=> b!7293954 (= c!1355409 (is-Cons!70897 (exprs!8292 ct1!250)))))

(declare-fun b!7293955 () Bool)

(declare-fun e!4368767 () Bool)

(assert (=> b!7293955 (= e!4368767 (nullable!8030 (h!77345 (exprs!8292 ct1!250))))))

(declare-fun d!2266049 () Bool)

(declare-fun c!1355408 () Bool)

(assert (=> d!2266049 (= c!1355408 e!4368767)))

(declare-fun res!2950399 () Bool)

(assert (=> d!2266049 (=> (not res!2950399) (not e!4368767))))

(assert (=> d!2266049 (= res!2950399 (is-Cons!70897 (exprs!8292 ct1!250)))))

(assert (=> d!2266049 (= (derivationStepZipperUp!2602 ct1!250 (h!77346 s!7854)) e!4368765)))

(declare-fun b!7293956 () Bool)

(assert (=> b!7293956 (= e!4368766 call!664365)))

(declare-fun b!7293957 () Bool)

(assert (=> b!7293957 (= e!4368766 (as set.empty (Set Context!15584)))))

(declare-fun bm!664360 () Bool)

(assert (=> bm!664360 (= call!664365 (derivationStepZipperDown!2759 (h!77345 (exprs!8292 ct1!250)) (Context!15585 (t!385095 (exprs!8292 ct1!250))) (h!77346 s!7854)))))

(assert (= (and d!2266049 res!2950399) b!7293955))

(assert (= (and d!2266049 c!1355408) b!7293953))

(assert (= (and d!2266049 (not c!1355408)) b!7293954))

(assert (= (and b!7293954 c!1355409) b!7293956))

(assert (= (and b!7293954 (not c!1355409)) b!7293957))

(assert (= (or b!7293953 b!7293956) bm!664360))

(declare-fun m!7965452 () Bool)

(assert (=> b!7293953 m!7965452))

(declare-fun m!7965454 () Bool)

(assert (=> b!7293955 m!7965454))

(declare-fun m!7965456 () Bool)

(assert (=> bm!664360 m!7965456))

(assert (=> b!7293885 d!2266049))

(declare-fun d!2266051 () Bool)

(assert (=> d!2266051 (= (isEmpty!40775 (exprs!8292 ct1!250)) (is-Nil!70897 (exprs!8292 ct1!250)))))

(assert (=> b!7293881 d!2266051))

(declare-fun b!7293962 () Bool)

(declare-fun e!4368770 () Bool)

(declare-fun tp!2062009 () Bool)

(declare-fun tp!2062010 () Bool)

(assert (=> b!7293962 (= e!4368770 (and tp!2062009 tp!2062010))))

(assert (=> b!7293878 (= tp!2061995 e!4368770)))

(assert (= (and b!7293878 (is-Cons!70897 (exprs!8292 ct2!346))) b!7293962))

(declare-fun b!7293963 () Bool)

(declare-fun e!4368771 () Bool)

(declare-fun tp!2062011 () Bool)

(declare-fun tp!2062012 () Bool)

(assert (=> b!7293963 (= e!4368771 (and tp!2062011 tp!2062012))))

(assert (=> b!7293879 (= tp!2061994 e!4368771)))

(assert (= (and b!7293879 (is-Cons!70897 (exprs!8292 ct1!250))) b!7293963))

(declare-fun b!7293968 () Bool)

(declare-fun e!4368775 () Bool)

(declare-fun tp!2062015 () Bool)

(assert (=> b!7293968 (= e!4368775 (and tp_is_empty!47169 tp!2062015))))

(assert (=> b!7293882 (= tp!2061993 e!4368775)))

(assert (= (and b!7293882 (is-Cons!70898 (t!385096 s!7854))) b!7293968))

(declare-fun b_lambda!281153 () Bool)

(assert (= b_lambda!281151 (or b!7293885 b_lambda!281153)))

(declare-fun bs!1912617 () Bool)

(declare-fun d!2266053 () Bool)

(assert (= bs!1912617 (and d!2266053 b!7293885)))

(assert (=> bs!1912617 (= (dynLambda!28993 lambda!450019 lt!2597249) (derivationStepZipperUp!2602 lt!2597249 (h!77346 s!7854)))))

(assert (=> bs!1912617 m!7965352))

(assert (=> d!2266041 d!2266053))

(declare-fun b_lambda!281155 () Bool)

(assert (= b_lambda!281149 (or b!7293885 b_lambda!281155)))

(declare-fun bs!1912618 () Bool)

(declare-fun d!2266055 () Bool)

(assert (= bs!1912618 (and d!2266055 b!7293885)))

(assert (=> bs!1912618 (= (dynLambda!28993 lambda!450019 ct1!250) (derivationStepZipperUp!2602 ct1!250 (h!77346 s!7854)))))

(assert (=> bs!1912618 m!7965344))

(assert (=> d!2266037 d!2266055))

(push 1)

(assert (not d!2266035))

(assert (not bs!1912617))

(assert (not b!7293931))

(assert (not b_lambda!281155))

(assert (not bs!1912618))

(assert (not d!2266031))

(assert (not bm!664359))

(assert (not d!2266023))

(assert (not b!7293963))

(assert (not bm!664360))

(assert (not d!2266045))

(assert (not b!7293948))

(assert (not d!2266033))

(assert (not b!7293932))

(assert (not b!7293955))

(assert (not b!7293919))

(assert (not d!2266041))

(assert (not b!7293962))

(assert (not b!7293953))

(assert (not b!7293918))

(assert (not d!2266027))

(assert (not d!2266037))

(assert (not b_lambda!281153))

(assert (not b!7293950))

(assert tp_is_empty!47169)

(assert (not b!7293968))

(assert (not d!2266043))

(assert (not d!2266025))

(assert (not d!2266029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

