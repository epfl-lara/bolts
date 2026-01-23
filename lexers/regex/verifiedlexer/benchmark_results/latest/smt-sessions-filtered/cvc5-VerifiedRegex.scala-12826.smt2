; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708368 () Bool)

(assert start!708368)

(declare-fun b!7264638 () Bool)

(assert (=> b!7264638 true))

(declare-fun b!7264630 () Bool)

(declare-fun e!4356451 () Bool)

(declare-fun tp_is_empty!46985 () Bool)

(declare-fun tp!2040237 () Bool)

(assert (=> b!7264630 (= e!4356451 (and tp_is_empty!46985 tp!2040237))))

(declare-fun b!7264631 () Bool)

(declare-fun e!4356449 () Bool)

(declare-fun tp!2040236 () Bool)

(assert (=> b!7264631 (= e!4356449 tp!2040236)))

(declare-fun b!7264632 () Bool)

(declare-fun e!4356450 () Bool)

(declare-fun e!4356448 () Bool)

(assert (=> b!7264632 (= e!4356450 e!4356448)))

(declare-fun res!2945320 () Bool)

(assert (=> b!7264632 (=> res!2945320 e!4356448)))

(declare-datatypes ((C!37794 0))(
  ( (C!37795 (val!28845 Int)) )
))
(declare-datatypes ((Regex!18760 0))(
  ( (ElementMatch!18760 (c!1351596 C!37794)) (Concat!27605 (regOne!38032 Regex!18760) (regTwo!38032 Regex!18760)) (EmptyExpr!18760) (Star!18760 (reg!19089 Regex!18760)) (EmptyLang!18760) (Union!18760 (regOne!38033 Regex!18760) (regTwo!38033 Regex!18760)) )
))
(declare-datatypes ((List!70835 0))(
  ( (Nil!70711) (Cons!70711 (h!77159 Regex!18760) (t!384901 List!70835)) )
))
(declare-datatypes ((Context!15400 0))(
  ( (Context!15401 (exprs!8200 List!70835)) )
))
(declare-fun ct1!250 () Context!15400)

(declare-fun nullable!7960 (Regex!18760) Bool)

(assert (=> b!7264632 (= res!2945320 (not (nullable!7960 (h!77159 (exprs!8200 ct1!250)))))))

(declare-fun lt!2591983 () (Set Context!15400))

(declare-datatypes ((List!70836 0))(
  ( (Nil!70712) (Cons!70712 (h!77160 C!37794) (t!384902 List!70836)) )
))
(declare-fun s!7854 () List!70836)

(declare-fun derivationStepZipperUp!2530 (Context!15400 C!37794) (Set Context!15400))

(assert (=> b!7264632 (= lt!2591983 (derivationStepZipperUp!2530 ct1!250 (h!77160 s!7854)))))

(declare-fun lt!2591986 () Context!15400)

(declare-fun lt!2591991 () List!70835)

(assert (=> b!7264632 (= lt!2591986 (Context!15401 lt!2591991))))

(declare-fun tail!14430 (List!70835) List!70835)

(assert (=> b!7264632 (= lt!2591991 (tail!14430 (exprs!8200 ct1!250)))))

(declare-fun b!7264633 () Bool)

(declare-fun res!2945321 () Bool)

(assert (=> b!7264633 (=> res!2945321 e!4356450)))

(assert (=> b!7264633 (= res!2945321 (not (is-Cons!70711 (exprs!8200 ct1!250))))))

(declare-fun b!7264634 () Bool)

(declare-fun e!4356446 () Bool)

(declare-fun tp!2040235 () Bool)

(assert (=> b!7264634 (= e!4356446 tp!2040235)))

(declare-fun b!7264636 () Bool)

(declare-fun res!2945319 () Bool)

(assert (=> b!7264636 (=> res!2945319 e!4356450)))

(declare-fun isEmpty!40642 (List!70835) Bool)

(assert (=> b!7264636 (= res!2945319 (isEmpty!40642 (exprs!8200 ct1!250)))))

(declare-fun b!7264637 () Bool)

(declare-fun res!2945315 () Bool)

(assert (=> b!7264637 (=> res!2945315 e!4356448)))

(declare-fun derivationStepZipperDown!2694 (Regex!18760 Context!15400 C!37794) (Set Context!15400))

(assert (=> b!7264637 (= res!2945315 (not (= lt!2591983 (set.union (derivationStepZipperDown!2694 (h!77159 (exprs!8200 ct1!250)) lt!2591986 (h!77160 s!7854)) (derivationStepZipperUp!2530 lt!2591986 (h!77160 s!7854))))))))

(declare-fun e!4356447 () Bool)

(assert (=> b!7264638 (= e!4356447 (not e!4356450))))

(declare-fun res!2945317 () Bool)

(assert (=> b!7264638 (=> res!2945317 e!4356450)))

(declare-fun lt!2591993 () (Set Context!15400))

(declare-fun lt!2591994 () (Set Context!15400))

(declare-fun derivationStepZipper!3500 ((Set Context!15400) C!37794) (Set Context!15400))

(assert (=> b!7264638 (= res!2945317 (not (= lt!2591993 (derivationStepZipper!3500 lt!2591994 (h!77160 s!7854)))))))

(declare-datatypes ((Unit!164138 0))(
  ( (Unit!164139) )
))
(declare-fun lt!2591984 () Unit!164138)

(declare-fun lambda!447244 () Int)

(declare-fun ct2!346 () Context!15400)

(declare-fun lemmaConcatPreservesForall!1517 (List!70835 List!70835 Int) Unit!164138)

(assert (=> b!7264638 (= lt!2591984 (lemmaConcatPreservesForall!1517 (exprs!8200 ct1!250) (exprs!8200 ct2!346) lambda!447244))))

(declare-fun lt!2591988 () Context!15400)

(declare-fun lambda!447245 () Int)

(declare-fun flatMap!2873 ((Set Context!15400) Int) (Set Context!15400))

(assert (=> b!7264638 (= (flatMap!2873 lt!2591994 lambda!447245) (derivationStepZipperUp!2530 lt!2591988 (h!77160 s!7854)))))

(declare-fun lt!2591982 () Unit!164138)

(declare-fun lemmaFlatMapOnSingletonSet!2273 ((Set Context!15400) Context!15400 Int) Unit!164138)

(assert (=> b!7264638 (= lt!2591982 (lemmaFlatMapOnSingletonSet!2273 lt!2591994 lt!2591988 lambda!447245))))

(assert (=> b!7264638 (= lt!2591994 (set.insert lt!2591988 (as set.empty (Set Context!15400))))))

(declare-fun lt!2591990 () Unit!164138)

(assert (=> b!7264638 (= lt!2591990 (lemmaConcatPreservesForall!1517 (exprs!8200 ct1!250) (exprs!8200 ct2!346) lambda!447244))))

(declare-fun lt!2591989 () Unit!164138)

(assert (=> b!7264638 (= lt!2591989 (lemmaConcatPreservesForall!1517 (exprs!8200 ct1!250) (exprs!8200 ct2!346) lambda!447244))))

(declare-fun lt!2591987 () (Set Context!15400))

(assert (=> b!7264638 (= (flatMap!2873 lt!2591987 lambda!447245) (derivationStepZipperUp!2530 ct1!250 (h!77160 s!7854)))))

(declare-fun lt!2591992 () Unit!164138)

(assert (=> b!7264638 (= lt!2591992 (lemmaFlatMapOnSingletonSet!2273 lt!2591987 ct1!250 lambda!447245))))

(assert (=> b!7264638 (= lt!2591987 (set.insert ct1!250 (as set.empty (Set Context!15400))))))

(assert (=> b!7264638 (= lt!2591993 (derivationStepZipperUp!2530 lt!2591988 (h!77160 s!7854)))))

(declare-fun ++!16660 (List!70835 List!70835) List!70835)

(assert (=> b!7264638 (= lt!2591988 (Context!15401 (++!16660 (exprs!8200 ct1!250) (exprs!8200 ct2!346))))))

(declare-fun lt!2591985 () Unit!164138)

(assert (=> b!7264638 (= lt!2591985 (lemmaConcatPreservesForall!1517 (exprs!8200 ct1!250) (exprs!8200 ct2!346) lambda!447244))))

(declare-fun b!7264639 () Bool)

(declare-fun forall!17593 (List!70835 Int) Bool)

(assert (=> b!7264639 (= e!4356448 (forall!17593 lt!2591991 lambda!447244))))

(declare-fun b!7264640 () Bool)

(declare-fun res!2945318 () Bool)

(assert (=> b!7264640 (=> (not res!2945318) (not e!4356447))))

(declare-fun nullableContext!250 (Context!15400) Bool)

(assert (=> b!7264640 (= res!2945318 (nullableContext!250 ct1!250))))

(declare-fun b!7264635 () Bool)

(declare-fun res!2945314 () Bool)

(assert (=> b!7264635 (=> (not res!2945314) (not e!4356447))))

(assert (=> b!7264635 (= res!2945314 (is-Cons!70712 s!7854))))

(declare-fun res!2945316 () Bool)

(assert (=> start!708368 (=> (not res!2945316) (not e!4356447))))

(declare-fun matchZipper!3664 ((Set Context!15400) List!70836) Bool)

(assert (=> start!708368 (= res!2945316 (matchZipper!3664 (set.insert ct2!346 (as set.empty (Set Context!15400))) s!7854))))

(assert (=> start!708368 e!4356447))

(declare-fun inv!89911 (Context!15400) Bool)

(assert (=> start!708368 (and (inv!89911 ct2!346) e!4356446)))

(assert (=> start!708368 e!4356451))

(assert (=> start!708368 (and (inv!89911 ct1!250) e!4356449)))

(assert (= (and start!708368 res!2945316) b!7264640))

(assert (= (and b!7264640 res!2945318) b!7264635))

(assert (= (and b!7264635 res!2945314) b!7264638))

(assert (= (and b!7264638 (not res!2945317)) b!7264633))

(assert (= (and b!7264633 (not res!2945321)) b!7264636))

(assert (= (and b!7264636 (not res!2945319)) b!7264632))

(assert (= (and b!7264632 (not res!2945320)) b!7264637))

(assert (= (and b!7264637 (not res!2945315)) b!7264639))

(assert (= start!708368 b!7264634))

(assert (= (and start!708368 (is-Cons!70712 s!7854)) b!7264630))

(assert (= start!708368 b!7264631))

(declare-fun m!7949306 () Bool)

(assert (=> b!7264636 m!7949306))

(declare-fun m!7949308 () Bool)

(assert (=> b!7264638 m!7949308))

(declare-fun m!7949310 () Bool)

(assert (=> b!7264638 m!7949310))

(declare-fun m!7949312 () Bool)

(assert (=> b!7264638 m!7949312))

(declare-fun m!7949314 () Bool)

(assert (=> b!7264638 m!7949314))

(assert (=> b!7264638 m!7949314))

(declare-fun m!7949316 () Bool)

(assert (=> b!7264638 m!7949316))

(declare-fun m!7949318 () Bool)

(assert (=> b!7264638 m!7949318))

(assert (=> b!7264638 m!7949314))

(declare-fun m!7949320 () Bool)

(assert (=> b!7264638 m!7949320))

(declare-fun m!7949322 () Bool)

(assert (=> b!7264638 m!7949322))

(declare-fun m!7949324 () Bool)

(assert (=> b!7264638 m!7949324))

(declare-fun m!7949326 () Bool)

(assert (=> b!7264638 m!7949326))

(assert (=> b!7264638 m!7949314))

(declare-fun m!7949328 () Bool)

(assert (=> b!7264638 m!7949328))

(declare-fun m!7949330 () Bool)

(assert (=> b!7264632 m!7949330))

(assert (=> b!7264632 m!7949312))

(declare-fun m!7949332 () Bool)

(assert (=> b!7264632 m!7949332))

(declare-fun m!7949334 () Bool)

(assert (=> b!7264639 m!7949334))

(declare-fun m!7949336 () Bool)

(assert (=> b!7264637 m!7949336))

(declare-fun m!7949338 () Bool)

(assert (=> b!7264637 m!7949338))

(declare-fun m!7949340 () Bool)

(assert (=> b!7264640 m!7949340))

(declare-fun m!7949342 () Bool)

(assert (=> start!708368 m!7949342))

(assert (=> start!708368 m!7949342))

(declare-fun m!7949344 () Bool)

(assert (=> start!708368 m!7949344))

(declare-fun m!7949346 () Bool)

(assert (=> start!708368 m!7949346))

(declare-fun m!7949348 () Bool)

(assert (=> start!708368 m!7949348))

(push 1)

(assert (not b!7264639))

(assert (not b!7264638))

(assert (not b!7264636))

(assert tp_is_empty!46985)

(assert (not b!7264637))

(assert (not b!7264632))

(assert (not b!7264631))

(assert (not b!7264630))

(assert (not b!7264634))

(assert (not start!708368))

(assert (not b!7264640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2260179 () Bool)

(assert (=> d!2260179 (forall!17593 (++!16660 (exprs!8200 ct1!250) (exprs!8200 ct2!346)) lambda!447244)))

(declare-fun lt!2592036 () Unit!164138)

(declare-fun choose!56293 (List!70835 List!70835 Int) Unit!164138)

(assert (=> d!2260179 (= lt!2592036 (choose!56293 (exprs!8200 ct1!250) (exprs!8200 ct2!346) lambda!447244))))

(assert (=> d!2260179 (forall!17593 (exprs!8200 ct1!250) lambda!447244)))

(assert (=> d!2260179 (= (lemmaConcatPreservesForall!1517 (exprs!8200 ct1!250) (exprs!8200 ct2!346) lambda!447244) lt!2592036)))

(declare-fun bs!1910065 () Bool)

(assert (= bs!1910065 d!2260179))

(assert (=> bs!1910065 m!7949322))

(assert (=> bs!1910065 m!7949322))

(declare-fun m!7949394 () Bool)

(assert (=> bs!1910065 m!7949394))

(declare-fun m!7949396 () Bool)

(assert (=> bs!1910065 m!7949396))

(declare-fun m!7949398 () Bool)

(assert (=> bs!1910065 m!7949398))

(assert (=> b!7264638 d!2260179))

(declare-fun d!2260181 () Bool)

(declare-fun choose!56294 ((Set Context!15400) Int) (Set Context!15400))

(assert (=> d!2260181 (= (flatMap!2873 lt!2591994 lambda!447245) (choose!56294 lt!2591994 lambda!447245))))

(declare-fun bs!1910066 () Bool)

(assert (= bs!1910066 d!2260181))

(declare-fun m!7949400 () Bool)

(assert (=> bs!1910066 m!7949400))

(assert (=> b!7264638 d!2260181))

(declare-fun d!2260183 () Bool)

(declare-fun e!4356475 () Bool)

(assert (=> d!2260183 e!4356475))

(declare-fun res!2945351 () Bool)

(assert (=> d!2260183 (=> (not res!2945351) (not e!4356475))))

(declare-fun lt!2592039 () List!70835)

(declare-fun content!14744 (List!70835) (Set Regex!18760))

(assert (=> d!2260183 (= res!2945351 (= (content!14744 lt!2592039) (set.union (content!14744 (exprs!8200 ct1!250)) (content!14744 (exprs!8200 ct2!346)))))))

(declare-fun e!4356474 () List!70835)

(assert (=> d!2260183 (= lt!2592039 e!4356474)))

(declare-fun c!1351604 () Bool)

(assert (=> d!2260183 (= c!1351604 (is-Nil!70711 (exprs!8200 ct1!250)))))

(assert (=> d!2260183 (= (++!16660 (exprs!8200 ct1!250) (exprs!8200 ct2!346)) lt!2592039)))

(declare-fun b!7264689 () Bool)

(assert (=> b!7264689 (= e!4356475 (or (not (= (exprs!8200 ct2!346) Nil!70711)) (= lt!2592039 (exprs!8200 ct1!250))))))

(declare-fun b!7264686 () Bool)

(assert (=> b!7264686 (= e!4356474 (exprs!8200 ct2!346))))

(declare-fun b!7264687 () Bool)

(assert (=> b!7264687 (= e!4356474 (Cons!70711 (h!77159 (exprs!8200 ct1!250)) (++!16660 (t!384901 (exprs!8200 ct1!250)) (exprs!8200 ct2!346))))))

(declare-fun b!7264688 () Bool)

(declare-fun res!2945350 () Bool)

(assert (=> b!7264688 (=> (not res!2945350) (not e!4356475))))

(declare-fun size!41792 (List!70835) Int)

(assert (=> b!7264688 (= res!2945350 (= (size!41792 lt!2592039) (+ (size!41792 (exprs!8200 ct1!250)) (size!41792 (exprs!8200 ct2!346)))))))

(assert (= (and d!2260183 c!1351604) b!7264686))

(assert (= (and d!2260183 (not c!1351604)) b!7264687))

(assert (= (and d!2260183 res!2945351) b!7264688))

(assert (= (and b!7264688 res!2945350) b!7264689))

(declare-fun m!7949402 () Bool)

(assert (=> d!2260183 m!7949402))

(declare-fun m!7949404 () Bool)

(assert (=> d!2260183 m!7949404))

(declare-fun m!7949406 () Bool)

(assert (=> d!2260183 m!7949406))

(declare-fun m!7949408 () Bool)

(assert (=> b!7264687 m!7949408))

(declare-fun m!7949410 () Bool)

(assert (=> b!7264688 m!7949410))

(declare-fun m!7949412 () Bool)

(assert (=> b!7264688 m!7949412))

(declare-fun m!7949414 () Bool)

(assert (=> b!7264688 m!7949414))

(assert (=> b!7264638 d!2260183))

(declare-fun d!2260185 () Bool)

(declare-fun dynLambda!28872 (Int Context!15400) (Set Context!15400))

(assert (=> d!2260185 (= (flatMap!2873 lt!2591994 lambda!447245) (dynLambda!28872 lambda!447245 lt!2591988))))

(declare-fun lt!2592042 () Unit!164138)

(declare-fun choose!56295 ((Set Context!15400) Context!15400 Int) Unit!164138)

(assert (=> d!2260185 (= lt!2592042 (choose!56295 lt!2591994 lt!2591988 lambda!447245))))

(assert (=> d!2260185 (= lt!2591994 (set.insert lt!2591988 (as set.empty (Set Context!15400))))))

(assert (=> d!2260185 (= (lemmaFlatMapOnSingletonSet!2273 lt!2591994 lt!2591988 lambda!447245) lt!2592042)))

(declare-fun b_lambda!279613 () Bool)

(assert (=> (not b_lambda!279613) (not d!2260185)))

(declare-fun bs!1910067 () Bool)

(assert (= bs!1910067 d!2260185))

(assert (=> bs!1910067 m!7949318))

(declare-fun m!7949416 () Bool)

(assert (=> bs!1910067 m!7949416))

(declare-fun m!7949418 () Bool)

(assert (=> bs!1910067 m!7949418))

(assert (=> bs!1910067 m!7949310))

(assert (=> b!7264638 d!2260185))

(declare-fun b!7264700 () Bool)

(declare-fun e!4356484 () (Set Context!15400))

(declare-fun call!661950 () (Set Context!15400))

(assert (=> b!7264700 (= e!4356484 call!661950)))

(declare-fun b!7264701 () Bool)

(declare-fun e!4356482 () Bool)

(assert (=> b!7264701 (= e!4356482 (nullable!7960 (h!77159 (exprs!8200 lt!2591988))))))

(declare-fun b!7264702 () Bool)

(assert (=> b!7264702 (= e!4356484 (as set.empty (Set Context!15400)))))

(declare-fun b!7264703 () Bool)

(declare-fun e!4356483 () (Set Context!15400))

(assert (=> b!7264703 (= e!4356483 e!4356484)))

(declare-fun c!1351609 () Bool)

(assert (=> b!7264703 (= c!1351609 (is-Cons!70711 (exprs!8200 lt!2591988)))))

(declare-fun b!7264704 () Bool)

(assert (=> b!7264704 (= e!4356483 (set.union call!661950 (derivationStepZipperUp!2530 (Context!15401 (t!384901 (exprs!8200 lt!2591988))) (h!77160 s!7854))))))

(declare-fun bm!661945 () Bool)

(assert (=> bm!661945 (= call!661950 (derivationStepZipperDown!2694 (h!77159 (exprs!8200 lt!2591988)) (Context!15401 (t!384901 (exprs!8200 lt!2591988))) (h!77160 s!7854)))))

(declare-fun d!2260187 () Bool)

(declare-fun c!1351610 () Bool)

(assert (=> d!2260187 (= c!1351610 e!4356482)))

(declare-fun res!2945354 () Bool)

(assert (=> d!2260187 (=> (not res!2945354) (not e!4356482))))

(assert (=> d!2260187 (= res!2945354 (is-Cons!70711 (exprs!8200 lt!2591988)))))

(assert (=> d!2260187 (= (derivationStepZipperUp!2530 lt!2591988 (h!77160 s!7854)) e!4356483)))

(assert (= (and d!2260187 res!2945354) b!7264701))

(assert (= (and d!2260187 c!1351610) b!7264704))

(assert (= (and d!2260187 (not c!1351610)) b!7264703))

(assert (= (and b!7264703 c!1351609) b!7264700))

(assert (= (and b!7264703 (not c!1351609)) b!7264702))

(assert (= (or b!7264704 b!7264700) bm!661945))

(declare-fun m!7949420 () Bool)

(assert (=> b!7264701 m!7949420))

(declare-fun m!7949422 () Bool)

(assert (=> b!7264704 m!7949422))

(declare-fun m!7949424 () Bool)

(assert (=> bm!661945 m!7949424))

(assert (=> b!7264638 d!2260187))

(declare-fun d!2260189 () Bool)

(assert (=> d!2260189 (= (flatMap!2873 lt!2591987 lambda!447245) (choose!56294 lt!2591987 lambda!447245))))

(declare-fun bs!1910068 () Bool)

(assert (= bs!1910068 d!2260189))

(declare-fun m!7949426 () Bool)

(assert (=> bs!1910068 m!7949426))

(assert (=> b!7264638 d!2260189))

(declare-fun bs!1910069 () Bool)

(declare-fun d!2260191 () Bool)

(assert (= bs!1910069 (and d!2260191 b!7264638)))

(declare-fun lambda!447264 () Int)

(assert (=> bs!1910069 (= lambda!447264 lambda!447245)))

(assert (=> d!2260191 true))

(assert (=> d!2260191 (= (derivationStepZipper!3500 lt!2591994 (h!77160 s!7854)) (flatMap!2873 lt!2591994 lambda!447264))))

(declare-fun bs!1910070 () Bool)

(assert (= bs!1910070 d!2260191))

(declare-fun m!7949428 () Bool)

(assert (=> bs!1910070 m!7949428))

(assert (=> b!7264638 d!2260191))

(declare-fun d!2260193 () Bool)

(assert (=> d!2260193 (= (flatMap!2873 lt!2591987 lambda!447245) (dynLambda!28872 lambda!447245 ct1!250))))

(declare-fun lt!2592043 () Unit!164138)

(assert (=> d!2260193 (= lt!2592043 (choose!56295 lt!2591987 ct1!250 lambda!447245))))

(assert (=> d!2260193 (= lt!2591987 (set.insert ct1!250 (as set.empty (Set Context!15400))))))

(assert (=> d!2260193 (= (lemmaFlatMapOnSingletonSet!2273 lt!2591987 ct1!250 lambda!447245) lt!2592043)))

(declare-fun b_lambda!279615 () Bool)

(assert (=> (not b_lambda!279615) (not d!2260193)))

(declare-fun bs!1910071 () Bool)

(assert (= bs!1910071 d!2260193))

(assert (=> bs!1910071 m!7949324))

(declare-fun m!7949430 () Bool)

(assert (=> bs!1910071 m!7949430))

(declare-fun m!7949432 () Bool)

(assert (=> bs!1910071 m!7949432))

(assert (=> bs!1910071 m!7949320))

(assert (=> b!7264638 d!2260193))

(declare-fun b!7264707 () Bool)

(declare-fun e!4356487 () (Set Context!15400))

(declare-fun call!661951 () (Set Context!15400))

(assert (=> b!7264707 (= e!4356487 call!661951)))

(declare-fun b!7264708 () Bool)

(declare-fun e!4356485 () Bool)

(assert (=> b!7264708 (= e!4356485 (nullable!7960 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun b!7264709 () Bool)

(assert (=> b!7264709 (= e!4356487 (as set.empty (Set Context!15400)))))

(declare-fun b!7264710 () Bool)

(declare-fun e!4356486 () (Set Context!15400))

(assert (=> b!7264710 (= e!4356486 e!4356487)))

(declare-fun c!1351613 () Bool)

(assert (=> b!7264710 (= c!1351613 (is-Cons!70711 (exprs!8200 ct1!250)))))

(declare-fun b!7264711 () Bool)

(assert (=> b!7264711 (= e!4356486 (set.union call!661951 (derivationStepZipperUp!2530 (Context!15401 (t!384901 (exprs!8200 ct1!250))) (h!77160 s!7854))))))

(declare-fun bm!661946 () Bool)

(assert (=> bm!661946 (= call!661951 (derivationStepZipperDown!2694 (h!77159 (exprs!8200 ct1!250)) (Context!15401 (t!384901 (exprs!8200 ct1!250))) (h!77160 s!7854)))))

(declare-fun d!2260195 () Bool)

(declare-fun c!1351614 () Bool)

(assert (=> d!2260195 (= c!1351614 e!4356485)))

(declare-fun res!2945355 () Bool)

(assert (=> d!2260195 (=> (not res!2945355) (not e!4356485))))

(assert (=> d!2260195 (= res!2945355 (is-Cons!70711 (exprs!8200 ct1!250)))))

(assert (=> d!2260195 (= (derivationStepZipperUp!2530 ct1!250 (h!77160 s!7854)) e!4356486)))

(assert (= (and d!2260195 res!2945355) b!7264708))

(assert (= (and d!2260195 c!1351614) b!7264711))

(assert (= (and d!2260195 (not c!1351614)) b!7264710))

(assert (= (and b!7264710 c!1351613) b!7264707))

(assert (= (and b!7264710 (not c!1351613)) b!7264709))

(assert (= (or b!7264711 b!7264707) bm!661946))

(assert (=> b!7264708 m!7949330))

(declare-fun m!7949434 () Bool)

(assert (=> b!7264711 m!7949434))

(declare-fun m!7949436 () Bool)

(assert (=> bm!661946 m!7949436))

(assert (=> b!7264638 d!2260195))

(declare-fun d!2260197 () Bool)

(declare-fun nullableFct!3127 (Regex!18760) Bool)

(assert (=> d!2260197 (= (nullable!7960 (h!77159 (exprs!8200 ct1!250))) (nullableFct!3127 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun bs!1910072 () Bool)

(assert (= bs!1910072 d!2260197))

(declare-fun m!7949438 () Bool)

(assert (=> bs!1910072 m!7949438))

(assert (=> b!7264632 d!2260197))

(assert (=> b!7264632 d!2260195))

(declare-fun d!2260199 () Bool)

(assert (=> d!2260199 (= (tail!14430 (exprs!8200 ct1!250)) (t!384901 (exprs!8200 ct1!250)))))

(assert (=> b!7264632 d!2260199))

(declare-fun d!2260203 () Bool)

(declare-fun res!2945360 () Bool)

(declare-fun e!4356492 () Bool)

(assert (=> d!2260203 (=> res!2945360 e!4356492)))

(assert (=> d!2260203 (= res!2945360 (is-Nil!70711 lt!2591991))))

(assert (=> d!2260203 (= (forall!17593 lt!2591991 lambda!447244) e!4356492)))

(declare-fun b!7264716 () Bool)

(declare-fun e!4356493 () Bool)

(assert (=> b!7264716 (= e!4356492 e!4356493)))

(declare-fun res!2945361 () Bool)

(assert (=> b!7264716 (=> (not res!2945361) (not e!4356493))))

(declare-fun dynLambda!28873 (Int Regex!18760) Bool)

(assert (=> b!7264716 (= res!2945361 (dynLambda!28873 lambda!447244 (h!77159 lt!2591991)))))

(declare-fun b!7264717 () Bool)

(assert (=> b!7264717 (= e!4356493 (forall!17593 (t!384901 lt!2591991) lambda!447244))))

(assert (= (and d!2260203 (not res!2945360)) b!7264716))

(assert (= (and b!7264716 res!2945361) b!7264717))

(declare-fun b_lambda!279617 () Bool)

(assert (=> (not b_lambda!279617) (not b!7264716)))

(declare-fun m!7949440 () Bool)

(assert (=> b!7264716 m!7949440))

(declare-fun m!7949442 () Bool)

(assert (=> b!7264717 m!7949442))

(assert (=> b!7264639 d!2260203))

(declare-fun bs!1910073 () Bool)

(declare-fun d!2260205 () Bool)

(assert (= bs!1910073 (and d!2260205 b!7264638)))

(declare-fun lambda!447267 () Int)

(assert (=> bs!1910073 (not (= lambda!447267 lambda!447244))))

(assert (=> d!2260205 (= (nullableContext!250 ct1!250) (forall!17593 (exprs!8200 ct1!250) lambda!447267))))

(declare-fun bs!1910074 () Bool)

(assert (= bs!1910074 d!2260205))

(declare-fun m!7949444 () Bool)

(assert (=> bs!1910074 m!7949444))

(assert (=> b!7264640 d!2260205))

(declare-fun d!2260207 () Bool)

(declare-fun c!1351618 () Bool)

(declare-fun isEmpty!40644 (List!70836) Bool)

(assert (=> d!2260207 (= c!1351618 (isEmpty!40644 s!7854))))

(declare-fun e!4356502 () Bool)

(assert (=> d!2260207 (= (matchZipper!3664 (set.insert ct2!346 (as set.empty (Set Context!15400))) s!7854) e!4356502)))

(declare-fun b!7264728 () Bool)

(declare-fun nullableZipper!2972 ((Set Context!15400)) Bool)

(assert (=> b!7264728 (= e!4356502 (nullableZipper!2972 (set.insert ct2!346 (as set.empty (Set Context!15400)))))))

(declare-fun b!7264729 () Bool)

(declare-fun head!14971 (List!70836) C!37794)

(declare-fun tail!14432 (List!70836) List!70836)

(assert (=> b!7264729 (= e!4356502 (matchZipper!3664 (derivationStepZipper!3500 (set.insert ct2!346 (as set.empty (Set Context!15400))) (head!14971 s!7854)) (tail!14432 s!7854)))))

(assert (= (and d!2260207 c!1351618) b!7264728))

(assert (= (and d!2260207 (not c!1351618)) b!7264729))

(declare-fun m!7949450 () Bool)

(assert (=> d!2260207 m!7949450))

(assert (=> b!7264728 m!7949342))

(declare-fun m!7949452 () Bool)

(assert (=> b!7264728 m!7949452))

(declare-fun m!7949454 () Bool)

(assert (=> b!7264729 m!7949454))

(assert (=> b!7264729 m!7949342))

(assert (=> b!7264729 m!7949454))

(declare-fun m!7949456 () Bool)

(assert (=> b!7264729 m!7949456))

(declare-fun m!7949458 () Bool)

(assert (=> b!7264729 m!7949458))

(assert (=> b!7264729 m!7949456))

(assert (=> b!7264729 m!7949458))

(declare-fun m!7949460 () Bool)

(assert (=> b!7264729 m!7949460))

(assert (=> start!708368 d!2260207))

(declare-fun bs!1910075 () Bool)

(declare-fun d!2260211 () Bool)

(assert (= bs!1910075 (and d!2260211 b!7264638)))

(declare-fun lambda!447272 () Int)

(assert (=> bs!1910075 (= lambda!447272 lambda!447244)))

(declare-fun bs!1910076 () Bool)

(assert (= bs!1910076 (and d!2260211 d!2260205)))

(assert (=> bs!1910076 (not (= lambda!447272 lambda!447267))))

(assert (=> d!2260211 (= (inv!89911 ct2!346) (forall!17593 (exprs!8200 ct2!346) lambda!447272))))

(declare-fun bs!1910077 () Bool)

(assert (= bs!1910077 d!2260211))

(declare-fun m!7949462 () Bool)

(assert (=> bs!1910077 m!7949462))

(assert (=> start!708368 d!2260211))

(declare-fun bs!1910078 () Bool)

(declare-fun d!2260213 () Bool)

(assert (= bs!1910078 (and d!2260213 b!7264638)))

(declare-fun lambda!447273 () Int)

(assert (=> bs!1910078 (= lambda!447273 lambda!447244)))

(declare-fun bs!1910079 () Bool)

(assert (= bs!1910079 (and d!2260213 d!2260205)))

(assert (=> bs!1910079 (not (= lambda!447273 lambda!447267))))

(declare-fun bs!1910080 () Bool)

(assert (= bs!1910080 (and d!2260213 d!2260211)))

(assert (=> bs!1910080 (= lambda!447273 lambda!447272)))

(assert (=> d!2260213 (= (inv!89911 ct1!250) (forall!17593 (exprs!8200 ct1!250) lambda!447273))))

(declare-fun bs!1910081 () Bool)

(assert (= bs!1910081 d!2260213))

(declare-fun m!7949464 () Bool)

(assert (=> bs!1910081 m!7949464))

(assert (=> start!708368 d!2260213))

(declare-fun b!7264774 () Bool)

(declare-fun e!4356529 () (Set Context!15400))

(assert (=> b!7264774 (= e!4356529 (as set.empty (Set Context!15400)))))

(declare-fun b!7264775 () Bool)

(declare-fun e!4356531 () (Set Context!15400))

(declare-fun e!4356532 () (Set Context!15400))

(assert (=> b!7264775 (= e!4356531 e!4356532)))

(declare-fun c!1351642 () Bool)

(assert (=> b!7264775 (= c!1351642 (is-Union!18760 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun b!7264776 () Bool)

(declare-fun c!1351644 () Bool)

(assert (=> b!7264776 (= c!1351644 (is-Star!18760 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun e!4356528 () (Set Context!15400))

(assert (=> b!7264776 (= e!4356528 e!4356529)))

(declare-fun bm!661959 () Bool)

(declare-fun call!661969 () List!70835)

(declare-fun call!661968 () List!70835)

(assert (=> bm!661959 (= call!661969 call!661968)))

(declare-fun bm!661960 () Bool)

(declare-fun call!661966 () (Set Context!15400))

(assert (=> bm!661960 (= call!661966 (derivationStepZipperDown!2694 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250)))) (ite c!1351642 lt!2591986 (Context!15401 call!661968)) (h!77160 s!7854)))))

(declare-fun b!7264778 () Bool)

(declare-fun e!4356527 () Bool)

(assert (=> b!7264778 (= e!4356527 (nullable!7960 (regOne!38032 (h!77159 (exprs!8200 ct1!250)))))))

(declare-fun bm!661961 () Bool)

(declare-fun call!661964 () (Set Context!15400))

(declare-fun call!661967 () (Set Context!15400))

(assert (=> bm!661961 (= call!661964 call!661967)))

(declare-fun bm!661962 () Bool)

(declare-fun call!661965 () (Set Context!15400))

(assert (=> bm!661962 (= call!661965 call!661964)))

(declare-fun b!7264779 () Bool)

(assert (=> b!7264779 (= e!4356529 call!661965)))

(declare-fun b!7264780 () Bool)

(assert (=> b!7264780 (= e!4356532 (set.union call!661967 call!661966))))

(declare-fun bm!661963 () Bool)

(declare-fun c!1351640 () Bool)

(declare-fun c!1351643 () Bool)

(assert (=> bm!661963 (= call!661967 (derivationStepZipperDown!2694 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250)))))) (ite (or c!1351642 c!1351643) lt!2591986 (Context!15401 call!661969)) (h!77160 s!7854)))))

(declare-fun d!2260215 () Bool)

(declare-fun c!1351641 () Bool)

(assert (=> d!2260215 (= c!1351641 (and (is-ElementMatch!18760 (h!77159 (exprs!8200 ct1!250))) (= (c!1351596 (h!77159 (exprs!8200 ct1!250))) (h!77160 s!7854))))))

(assert (=> d!2260215 (= (derivationStepZipperDown!2694 (h!77159 (exprs!8200 ct1!250)) lt!2591986 (h!77160 s!7854)) e!4356531)))

(declare-fun b!7264777 () Bool)

(assert (=> b!7264777 (= e!4356528 call!661965)))

(declare-fun b!7264781 () Bool)

(declare-fun e!4356530 () (Set Context!15400))

(assert (=> b!7264781 (= e!4356530 e!4356528)))

(assert (=> b!7264781 (= c!1351640 (is-Concat!27605 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun bm!661964 () Bool)

(declare-fun $colon$colon!2942 (List!70835 Regex!18760) List!70835)

(assert (=> bm!661964 (= call!661968 ($colon$colon!2942 (exprs!8200 lt!2591986) (ite (or c!1351643 c!1351640) (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (h!77159 (exprs!8200 ct1!250)))))))

(declare-fun b!7264782 () Bool)

(assert (=> b!7264782 (= e!4356531 (set.insert lt!2591986 (as set.empty (Set Context!15400))))))

(declare-fun b!7264783 () Bool)

(assert (=> b!7264783 (= c!1351643 e!4356527)))

(declare-fun res!2945372 () Bool)

(assert (=> b!7264783 (=> (not res!2945372) (not e!4356527))))

(assert (=> b!7264783 (= res!2945372 (is-Concat!27605 (h!77159 (exprs!8200 ct1!250))))))

(assert (=> b!7264783 (= e!4356532 e!4356530)))

(declare-fun b!7264784 () Bool)

(assert (=> b!7264784 (= e!4356530 (set.union call!661966 call!661964))))

(assert (= (and d!2260215 c!1351641) b!7264782))

(assert (= (and d!2260215 (not c!1351641)) b!7264775))

(assert (= (and b!7264775 c!1351642) b!7264780))

(assert (= (and b!7264775 (not c!1351642)) b!7264783))

(assert (= (and b!7264783 res!2945372) b!7264778))

(assert (= (and b!7264783 c!1351643) b!7264784))

(assert (= (and b!7264783 (not c!1351643)) b!7264781))

(assert (= (and b!7264781 c!1351640) b!7264777))

(assert (= (and b!7264781 (not c!1351640)) b!7264776))

(assert (= (and b!7264776 c!1351644) b!7264779))

(assert (= (and b!7264776 (not c!1351644)) b!7264774))

(assert (= (or b!7264777 b!7264779) bm!661959))

(assert (= (or b!7264777 b!7264779) bm!661962))

(assert (= (or b!7264784 bm!661959) bm!661964))

(assert (= (or b!7264784 bm!661962) bm!661961))

(assert (= (or b!7264780 bm!661961) bm!661963))

(assert (= (or b!7264780 b!7264784) bm!661960))

(declare-fun m!7949468 () Bool)

(assert (=> b!7264782 m!7949468))

(declare-fun m!7949470 () Bool)

(assert (=> bm!661964 m!7949470))

(declare-fun m!7949472 () Bool)

(assert (=> bm!661960 m!7949472))

(declare-fun m!7949474 () Bool)

(assert (=> bm!661963 m!7949474))

(declare-fun m!7949476 () Bool)

(assert (=> b!7264778 m!7949476))

(assert (=> b!7264637 d!2260215))

(declare-fun b!7264785 () Bool)

(declare-fun e!4356535 () (Set Context!15400))

(declare-fun call!661972 () (Set Context!15400))

(assert (=> b!7264785 (= e!4356535 call!661972)))

(declare-fun b!7264786 () Bool)

(declare-fun e!4356533 () Bool)

(assert (=> b!7264786 (= e!4356533 (nullable!7960 (h!77159 (exprs!8200 lt!2591986))))))

(declare-fun b!7264787 () Bool)

(assert (=> b!7264787 (= e!4356535 (as set.empty (Set Context!15400)))))

(declare-fun b!7264788 () Bool)

(declare-fun e!4356534 () (Set Context!15400))

(assert (=> b!7264788 (= e!4356534 e!4356535)))

(declare-fun c!1351645 () Bool)

(assert (=> b!7264788 (= c!1351645 (is-Cons!70711 (exprs!8200 lt!2591986)))))

(declare-fun b!7264789 () Bool)

(assert (=> b!7264789 (= e!4356534 (set.union call!661972 (derivationStepZipperUp!2530 (Context!15401 (t!384901 (exprs!8200 lt!2591986))) (h!77160 s!7854))))))

(declare-fun bm!661967 () Bool)

(assert (=> bm!661967 (= call!661972 (derivationStepZipperDown!2694 (h!77159 (exprs!8200 lt!2591986)) (Context!15401 (t!384901 (exprs!8200 lt!2591986))) (h!77160 s!7854)))))

(declare-fun d!2260219 () Bool)

(declare-fun c!1351646 () Bool)

(assert (=> d!2260219 (= c!1351646 e!4356533)))

(declare-fun res!2945373 () Bool)

(assert (=> d!2260219 (=> (not res!2945373) (not e!4356533))))

(assert (=> d!2260219 (= res!2945373 (is-Cons!70711 (exprs!8200 lt!2591986)))))

(assert (=> d!2260219 (= (derivationStepZipperUp!2530 lt!2591986 (h!77160 s!7854)) e!4356534)))

(assert (= (and d!2260219 res!2945373) b!7264786))

(assert (= (and d!2260219 c!1351646) b!7264789))

(assert (= (and d!2260219 (not c!1351646)) b!7264788))

(assert (= (and b!7264788 c!1351645) b!7264785))

(assert (= (and b!7264788 (not c!1351645)) b!7264787))

(assert (= (or b!7264789 b!7264785) bm!661967))

(declare-fun m!7949478 () Bool)

(assert (=> b!7264786 m!7949478))

(declare-fun m!7949480 () Bool)

(assert (=> b!7264789 m!7949480))

(declare-fun m!7949482 () Bool)

(assert (=> bm!661967 m!7949482))

(assert (=> b!7264637 d!2260219))

(declare-fun d!2260221 () Bool)

(assert (=> d!2260221 (= (isEmpty!40642 (exprs!8200 ct1!250)) (is-Nil!70711 (exprs!8200 ct1!250)))))

(assert (=> b!7264636 d!2260221))

(declare-fun b!7264794 () Bool)

(declare-fun e!4356538 () Bool)

(declare-fun tp!2040251 () Bool)

(declare-fun tp!2040252 () Bool)

(assert (=> b!7264794 (= e!4356538 (and tp!2040251 tp!2040252))))

(assert (=> b!7264634 (= tp!2040235 e!4356538)))

(assert (= (and b!7264634 (is-Cons!70711 (exprs!8200 ct2!346))) b!7264794))

(declare-fun b!7264799 () Bool)

(declare-fun e!4356541 () Bool)

(declare-fun tp!2040255 () Bool)

(assert (=> b!7264799 (= e!4356541 (and tp_is_empty!46985 tp!2040255))))

(assert (=> b!7264630 (= tp!2040237 e!4356541)))

(assert (= (and b!7264630 (is-Cons!70712 (t!384902 s!7854))) b!7264799))

(declare-fun b!7264800 () Bool)

(declare-fun e!4356542 () Bool)

(declare-fun tp!2040256 () Bool)

(declare-fun tp!2040257 () Bool)

(assert (=> b!7264800 (= e!4356542 (and tp!2040256 tp!2040257))))

(assert (=> b!7264631 (= tp!2040236 e!4356542)))

(assert (= (and b!7264631 (is-Cons!70711 (exprs!8200 ct1!250))) b!7264800))

(declare-fun b_lambda!279621 () Bool)

(assert (= b_lambda!279617 (or b!7264638 b_lambda!279621)))

(declare-fun bs!1910084 () Bool)

(declare-fun d!2260223 () Bool)

(assert (= bs!1910084 (and d!2260223 b!7264638)))

(declare-fun validRegex!9565 (Regex!18760) Bool)

(assert (=> bs!1910084 (= (dynLambda!28873 lambda!447244 (h!77159 lt!2591991)) (validRegex!9565 (h!77159 lt!2591991)))))

(declare-fun m!7949484 () Bool)

(assert (=> bs!1910084 m!7949484))

(assert (=> b!7264716 d!2260223))

(declare-fun b_lambda!279623 () Bool)

(assert (= b_lambda!279615 (or b!7264638 b_lambda!279623)))

(declare-fun bs!1910085 () Bool)

(declare-fun d!2260225 () Bool)

(assert (= bs!1910085 (and d!2260225 b!7264638)))

(assert (=> bs!1910085 (= (dynLambda!28872 lambda!447245 ct1!250) (derivationStepZipperUp!2530 ct1!250 (h!77160 s!7854)))))

(assert (=> bs!1910085 m!7949312))

(assert (=> d!2260193 d!2260225))

(declare-fun b_lambda!279625 () Bool)

(assert (= b_lambda!279613 (or b!7264638 b_lambda!279625)))

(declare-fun bs!1910086 () Bool)

(declare-fun d!2260227 () Bool)

(assert (= bs!1910086 (and d!2260227 b!7264638)))

(assert (=> bs!1910086 (= (dynLambda!28872 lambda!447245 lt!2591988) (derivationStepZipperUp!2530 lt!2591988 (h!77160 s!7854)))))

(assert (=> bs!1910086 m!7949326))

(assert (=> d!2260185 d!2260227))

(push 1)

(assert (not b!7264717))

(assert (not b!7264778))

(assert (not d!2260193))

(assert tp_is_empty!46985)

(assert (not d!2260189))

(assert (not d!2260179))

(assert (not b!7264704))

(assert (not d!2260185))

(assert (not d!2260211))

(assert (not bs!1910086))

(assert (not b!7264728))

(assert (not b_lambda!279621))

(assert (not b!7264688))

(assert (not b!7264800))

(assert (not d!2260213))

(assert (not b_lambda!279625))

(assert (not bm!661963))

(assert (not d!2260207))

(assert (not b!7264799))

(assert (not d!2260191))

(assert (not d!2260181))

(assert (not d!2260197))

(assert (not b!7264729))

(assert (not bm!661967))

(assert (not b!7264794))

(assert (not b!7264789))

(assert (not bs!1910084))

(assert (not b!7264708))

(assert (not d!2260205))

(assert (not b!7264786))

(assert (not bm!661960))

(assert (not bm!661945))

(assert (not b!7264711))

(assert (not bm!661964))

(assert (not b_lambda!279623))

(assert (not bs!1910085))

(assert (not b!7264701))

(assert (not d!2260183))

(assert (not bm!661946))

(assert (not b!7264687))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2260267 () Bool)

(assert (=> d!2260267 (= (flatMap!2873 lt!2591994 lambda!447264) (choose!56294 lt!2591994 lambda!447264))))

(declare-fun bs!1910105 () Bool)

(assert (= bs!1910105 d!2260267))

(declare-fun m!7949566 () Bool)

(assert (=> bs!1910105 m!7949566))

(assert (=> d!2260191 d!2260267))

(declare-fun d!2260269 () Bool)

(assert (=> d!2260269 (= (nullable!7960 (h!77159 (exprs!8200 lt!2591988))) (nullableFct!3127 (h!77159 (exprs!8200 lt!2591988))))))

(declare-fun bs!1910106 () Bool)

(assert (= bs!1910106 d!2260269))

(declare-fun m!7949568 () Bool)

(assert (=> bs!1910106 m!7949568))

(assert (=> b!7264701 d!2260269))

(declare-fun d!2260271 () Bool)

(assert (=> d!2260271 (= (nullable!7960 (regOne!38032 (h!77159 (exprs!8200 ct1!250)))) (nullableFct!3127 (regOne!38032 (h!77159 (exprs!8200 ct1!250)))))))

(declare-fun bs!1910107 () Bool)

(assert (= bs!1910107 d!2260271))

(declare-fun m!7949570 () Bool)

(assert (=> bs!1910107 m!7949570))

(assert (=> b!7264778 d!2260271))

(declare-fun b!7264868 () Bool)

(declare-fun e!4356582 () (Set Context!15400))

(assert (=> b!7264868 (= e!4356582 (as set.empty (Set Context!15400)))))

(declare-fun b!7264869 () Bool)

(declare-fun e!4356584 () (Set Context!15400))

(declare-fun e!4356585 () (Set Context!15400))

(assert (=> b!7264869 (= e!4356584 e!4356585)))

(declare-fun c!1351672 () Bool)

(assert (=> b!7264869 (= c!1351672 (is-Union!18760 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250))))))))

(declare-fun b!7264870 () Bool)

(declare-fun c!1351674 () Bool)

(assert (=> b!7264870 (= c!1351674 (is-Star!18760 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250))))))))

(declare-fun e!4356581 () (Set Context!15400))

(assert (=> b!7264870 (= e!4356581 e!4356582)))

(declare-fun bm!661989 () Bool)

(declare-fun call!661999 () List!70835)

(declare-fun call!661998 () List!70835)

(assert (=> bm!661989 (= call!661999 call!661998)))

(declare-fun call!661996 () (Set Context!15400))

(declare-fun bm!661990 () Bool)

(assert (=> bm!661990 (= call!661996 (derivationStepZipperDown!2694 (ite c!1351672 (regTwo!38033 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250))))) (regOne!38032 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250)))))) (ite c!1351672 (ite c!1351642 lt!2591986 (Context!15401 call!661968)) (Context!15401 call!661998)) (h!77160 s!7854)))))

(declare-fun b!7264872 () Bool)

(declare-fun e!4356580 () Bool)

(assert (=> b!7264872 (= e!4356580 (nullable!7960 (regOne!38032 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250)))))))))

(declare-fun bm!661991 () Bool)

(declare-fun call!661994 () (Set Context!15400))

(declare-fun call!661997 () (Set Context!15400))

(assert (=> bm!661991 (= call!661994 call!661997)))

(declare-fun bm!661992 () Bool)

(declare-fun call!661995 () (Set Context!15400))

(assert (=> bm!661992 (= call!661995 call!661994)))

(declare-fun b!7264873 () Bool)

(assert (=> b!7264873 (= e!4356582 call!661995)))

(declare-fun b!7264874 () Bool)

(assert (=> b!7264874 (= e!4356585 (set.union call!661997 call!661996))))

(declare-fun c!1351670 () Bool)

(declare-fun bm!661993 () Bool)

(declare-fun c!1351673 () Bool)

(assert (=> bm!661993 (= call!661997 (derivationStepZipperDown!2694 (ite c!1351672 (regOne!38033 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250))))) (ite c!1351673 (regTwo!38032 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250))))) (ite c!1351670 (regOne!38032 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250))))) (reg!19089 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250)))))))) (ite (or c!1351672 c!1351673) (ite c!1351642 lt!2591986 (Context!15401 call!661968)) (Context!15401 call!661999)) (h!77160 s!7854)))))

(declare-fun c!1351671 () Bool)

(declare-fun d!2260273 () Bool)

(assert (=> d!2260273 (= c!1351671 (and (is-ElementMatch!18760 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250))))) (= (c!1351596 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250))))) (h!77160 s!7854))))))

(assert (=> d!2260273 (= (derivationStepZipperDown!2694 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250)))) (ite c!1351642 lt!2591986 (Context!15401 call!661968)) (h!77160 s!7854)) e!4356584)))

(declare-fun b!7264871 () Bool)

(assert (=> b!7264871 (= e!4356581 call!661995)))

(declare-fun b!7264875 () Bool)

(declare-fun e!4356583 () (Set Context!15400))

(assert (=> b!7264875 (= e!4356583 e!4356581)))

(assert (=> b!7264875 (= c!1351670 (is-Concat!27605 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250))))))))

(declare-fun bm!661994 () Bool)

(assert (=> bm!661994 (= call!661998 ($colon$colon!2942 (exprs!8200 (ite c!1351642 lt!2591986 (Context!15401 call!661968))) (ite (or c!1351673 c!1351670) (regTwo!38032 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250))))) (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250)))))))))

(declare-fun b!7264876 () Bool)

(assert (=> b!7264876 (= e!4356584 (set.insert (ite c!1351642 lt!2591986 (Context!15401 call!661968)) (as set.empty (Set Context!15400))))))

(declare-fun b!7264877 () Bool)

(assert (=> b!7264877 (= c!1351673 e!4356580)))

(declare-fun res!2945386 () Bool)

(assert (=> b!7264877 (=> (not res!2945386) (not e!4356580))))

(assert (=> b!7264877 (= res!2945386 (is-Concat!27605 (ite c!1351642 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250))))))))

(assert (=> b!7264877 (= e!4356585 e!4356583)))

(declare-fun b!7264878 () Bool)

(assert (=> b!7264878 (= e!4356583 (set.union call!661996 call!661994))))

(assert (= (and d!2260273 c!1351671) b!7264876))

(assert (= (and d!2260273 (not c!1351671)) b!7264869))

(assert (= (and b!7264869 c!1351672) b!7264874))

(assert (= (and b!7264869 (not c!1351672)) b!7264877))

(assert (= (and b!7264877 res!2945386) b!7264872))

(assert (= (and b!7264877 c!1351673) b!7264878))

(assert (= (and b!7264877 (not c!1351673)) b!7264875))

(assert (= (and b!7264875 c!1351670) b!7264871))

(assert (= (and b!7264875 (not c!1351670)) b!7264870))

(assert (= (and b!7264870 c!1351674) b!7264873))

(assert (= (and b!7264870 (not c!1351674)) b!7264868))

(assert (= (or b!7264871 b!7264873) bm!661989))

(assert (= (or b!7264871 b!7264873) bm!661992))

(assert (= (or b!7264878 bm!661989) bm!661994))

(assert (= (or b!7264878 bm!661992) bm!661991))

(assert (= (or b!7264874 bm!661991) bm!661993))

(assert (= (or b!7264874 b!7264878) bm!661990))

(declare-fun m!7949572 () Bool)

(assert (=> b!7264876 m!7949572))

(declare-fun m!7949574 () Bool)

(assert (=> bm!661994 m!7949574))

(declare-fun m!7949576 () Bool)

(assert (=> bm!661990 m!7949576))

(declare-fun m!7949578 () Bool)

(assert (=> bm!661993 m!7949578))

(declare-fun m!7949580 () Bool)

(assert (=> b!7264872 m!7949580))

(assert (=> bm!661960 d!2260273))

(declare-fun b!7264897 () Bool)

(declare-fun e!4356600 () Bool)

(declare-fun e!4356606 () Bool)

(assert (=> b!7264897 (= e!4356600 e!4356606)))

(declare-fun c!1351679 () Bool)

(assert (=> b!7264897 (= c!1351679 (is-Union!18760 (h!77159 lt!2591991)))))

(declare-fun b!7264898 () Bool)

(declare-fun res!2945399 () Bool)

(declare-fun e!4356602 () Bool)

(assert (=> b!7264898 (=> (not res!2945399) (not e!4356602))))

(declare-fun call!662006 () Bool)

(assert (=> b!7264898 (= res!2945399 call!662006)))

(assert (=> b!7264898 (= e!4356606 e!4356602)))

(declare-fun b!7264899 () Bool)

(declare-fun e!4356603 () Bool)

(declare-fun e!4356605 () Bool)

(assert (=> b!7264899 (= e!4356603 e!4356605)))

(declare-fun res!2945397 () Bool)

(assert (=> b!7264899 (=> (not res!2945397) (not e!4356605))))

(assert (=> b!7264899 (= res!2945397 call!662006)))

(declare-fun b!7264900 () Bool)

(declare-fun call!662007 () Bool)

(assert (=> b!7264900 (= e!4356602 call!662007)))

(declare-fun b!7264901 () Bool)

(declare-fun e!4356601 () Bool)

(declare-fun call!662008 () Bool)

(assert (=> b!7264901 (= e!4356601 call!662008)))

(declare-fun b!7264902 () Bool)

(declare-fun e!4356604 () Bool)

(assert (=> b!7264902 (= e!4356604 e!4356600)))

(declare-fun c!1351680 () Bool)

(assert (=> b!7264902 (= c!1351680 (is-Star!18760 (h!77159 lt!2591991)))))

(declare-fun b!7264903 () Bool)

(declare-fun res!2945400 () Bool)

(assert (=> b!7264903 (=> res!2945400 e!4356603)))

(assert (=> b!7264903 (= res!2945400 (not (is-Concat!27605 (h!77159 lt!2591991))))))

(assert (=> b!7264903 (= e!4356606 e!4356603)))

(declare-fun bm!662001 () Bool)

(assert (=> bm!662001 (= call!662007 call!662008)))

(declare-fun b!7264904 () Bool)

(assert (=> b!7264904 (= e!4356605 call!662007)))

(declare-fun bm!662002 () Bool)

(assert (=> bm!662002 (= call!662008 (validRegex!9565 (ite c!1351680 (reg!19089 (h!77159 lt!2591991)) (ite c!1351679 (regTwo!38033 (h!77159 lt!2591991)) (regTwo!38032 (h!77159 lt!2591991))))))))

(declare-fun bm!662003 () Bool)

(assert (=> bm!662003 (= call!662006 (validRegex!9565 (ite c!1351679 (regOne!38033 (h!77159 lt!2591991)) (regOne!38032 (h!77159 lt!2591991)))))))

(declare-fun b!7264905 () Bool)

(assert (=> b!7264905 (= e!4356600 e!4356601)))

(declare-fun res!2945401 () Bool)

(assert (=> b!7264905 (= res!2945401 (not (nullable!7960 (reg!19089 (h!77159 lt!2591991)))))))

(assert (=> b!7264905 (=> (not res!2945401) (not e!4356601))))

(declare-fun d!2260275 () Bool)

(declare-fun res!2945398 () Bool)

(assert (=> d!2260275 (=> res!2945398 e!4356604)))

(assert (=> d!2260275 (= res!2945398 (is-ElementMatch!18760 (h!77159 lt!2591991)))))

(assert (=> d!2260275 (= (validRegex!9565 (h!77159 lt!2591991)) e!4356604)))

(assert (= (and d!2260275 (not res!2945398)) b!7264902))

(assert (= (and b!7264902 c!1351680) b!7264905))

(assert (= (and b!7264902 (not c!1351680)) b!7264897))

(assert (= (and b!7264905 res!2945401) b!7264901))

(assert (= (and b!7264897 c!1351679) b!7264898))

(assert (= (and b!7264897 (not c!1351679)) b!7264903))

(assert (= (and b!7264898 res!2945399) b!7264900))

(assert (= (and b!7264903 (not res!2945400)) b!7264899))

(assert (= (and b!7264899 res!2945397) b!7264904))

(assert (= (or b!7264898 b!7264899) bm!662003))

(assert (= (or b!7264900 b!7264904) bm!662001))

(assert (= (or b!7264901 bm!662001) bm!662002))

(declare-fun m!7949582 () Bool)

(assert (=> bm!662002 m!7949582))

(declare-fun m!7949584 () Bool)

(assert (=> bm!662003 m!7949584))

(declare-fun m!7949586 () Bool)

(assert (=> b!7264905 m!7949586))

(assert (=> bs!1910084 d!2260275))

(declare-fun b!7264906 () Bool)

(declare-fun e!4356609 () (Set Context!15400))

(assert (=> b!7264906 (= e!4356609 (as set.empty (Set Context!15400)))))

(declare-fun b!7264907 () Bool)

(declare-fun e!4356611 () (Set Context!15400))

(declare-fun e!4356612 () (Set Context!15400))

(assert (=> b!7264907 (= e!4356611 e!4356612)))

(declare-fun c!1351683 () Bool)

(assert (=> b!7264907 (= c!1351683 (is-Union!18760 (h!77159 (exprs!8200 lt!2591988))))))

(declare-fun b!7264908 () Bool)

(declare-fun c!1351685 () Bool)

(assert (=> b!7264908 (= c!1351685 (is-Star!18760 (h!77159 (exprs!8200 lt!2591988))))))

(declare-fun e!4356608 () (Set Context!15400))

(assert (=> b!7264908 (= e!4356608 e!4356609)))

(declare-fun bm!662004 () Bool)

(declare-fun call!662014 () List!70835)

(declare-fun call!662013 () List!70835)

(assert (=> bm!662004 (= call!662014 call!662013)))

(declare-fun bm!662005 () Bool)

(declare-fun call!662011 () (Set Context!15400))

(assert (=> bm!662005 (= call!662011 (derivationStepZipperDown!2694 (ite c!1351683 (regTwo!38033 (h!77159 (exprs!8200 lt!2591988))) (regOne!38032 (h!77159 (exprs!8200 lt!2591988)))) (ite c!1351683 (Context!15401 (t!384901 (exprs!8200 lt!2591988))) (Context!15401 call!662013)) (h!77160 s!7854)))))

(declare-fun b!7264910 () Bool)

(declare-fun e!4356607 () Bool)

(assert (=> b!7264910 (= e!4356607 (nullable!7960 (regOne!38032 (h!77159 (exprs!8200 lt!2591988)))))))

(declare-fun bm!662006 () Bool)

(declare-fun call!662009 () (Set Context!15400))

(declare-fun call!662012 () (Set Context!15400))

(assert (=> bm!662006 (= call!662009 call!662012)))

(declare-fun bm!662007 () Bool)

(declare-fun call!662010 () (Set Context!15400))

(assert (=> bm!662007 (= call!662010 call!662009)))

(declare-fun b!7264911 () Bool)

(assert (=> b!7264911 (= e!4356609 call!662010)))

(declare-fun b!7264912 () Bool)

(assert (=> b!7264912 (= e!4356612 (set.union call!662012 call!662011))))

(declare-fun c!1351684 () Bool)

(declare-fun c!1351681 () Bool)

(declare-fun bm!662008 () Bool)

(assert (=> bm!662008 (= call!662012 (derivationStepZipperDown!2694 (ite c!1351683 (regOne!38033 (h!77159 (exprs!8200 lt!2591988))) (ite c!1351684 (regTwo!38032 (h!77159 (exprs!8200 lt!2591988))) (ite c!1351681 (regOne!38032 (h!77159 (exprs!8200 lt!2591988))) (reg!19089 (h!77159 (exprs!8200 lt!2591988)))))) (ite (or c!1351683 c!1351684) (Context!15401 (t!384901 (exprs!8200 lt!2591988))) (Context!15401 call!662014)) (h!77160 s!7854)))))

(declare-fun d!2260277 () Bool)

(declare-fun c!1351682 () Bool)

(assert (=> d!2260277 (= c!1351682 (and (is-ElementMatch!18760 (h!77159 (exprs!8200 lt!2591988))) (= (c!1351596 (h!77159 (exprs!8200 lt!2591988))) (h!77160 s!7854))))))

(assert (=> d!2260277 (= (derivationStepZipperDown!2694 (h!77159 (exprs!8200 lt!2591988)) (Context!15401 (t!384901 (exprs!8200 lt!2591988))) (h!77160 s!7854)) e!4356611)))

(declare-fun b!7264909 () Bool)

(assert (=> b!7264909 (= e!4356608 call!662010)))

(declare-fun b!7264913 () Bool)

(declare-fun e!4356610 () (Set Context!15400))

(assert (=> b!7264913 (= e!4356610 e!4356608)))

(assert (=> b!7264913 (= c!1351681 (is-Concat!27605 (h!77159 (exprs!8200 lt!2591988))))))

(declare-fun bm!662009 () Bool)

(assert (=> bm!662009 (= call!662013 ($colon$colon!2942 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591988)))) (ite (or c!1351684 c!1351681) (regTwo!38032 (h!77159 (exprs!8200 lt!2591988))) (h!77159 (exprs!8200 lt!2591988)))))))

(declare-fun b!7264914 () Bool)

(assert (=> b!7264914 (= e!4356611 (set.insert (Context!15401 (t!384901 (exprs!8200 lt!2591988))) (as set.empty (Set Context!15400))))))

(declare-fun b!7264915 () Bool)

(assert (=> b!7264915 (= c!1351684 e!4356607)))

(declare-fun res!2945402 () Bool)

(assert (=> b!7264915 (=> (not res!2945402) (not e!4356607))))

(assert (=> b!7264915 (= res!2945402 (is-Concat!27605 (h!77159 (exprs!8200 lt!2591988))))))

(assert (=> b!7264915 (= e!4356612 e!4356610)))

(declare-fun b!7264916 () Bool)

(assert (=> b!7264916 (= e!4356610 (set.union call!662011 call!662009))))

(assert (= (and d!2260277 c!1351682) b!7264914))

(assert (= (and d!2260277 (not c!1351682)) b!7264907))

(assert (= (and b!7264907 c!1351683) b!7264912))

(assert (= (and b!7264907 (not c!1351683)) b!7264915))

(assert (= (and b!7264915 res!2945402) b!7264910))

(assert (= (and b!7264915 c!1351684) b!7264916))

(assert (= (and b!7264915 (not c!1351684)) b!7264913))

(assert (= (and b!7264913 c!1351681) b!7264909))

(assert (= (and b!7264913 (not c!1351681)) b!7264908))

(assert (= (and b!7264908 c!1351685) b!7264911))

(assert (= (and b!7264908 (not c!1351685)) b!7264906))

(assert (= (or b!7264909 b!7264911) bm!662004))

(assert (= (or b!7264909 b!7264911) bm!662007))

(assert (= (or b!7264916 bm!662004) bm!662009))

(assert (= (or b!7264916 bm!662007) bm!662006))

(assert (= (or b!7264912 bm!662006) bm!662008))

(assert (= (or b!7264912 b!7264916) bm!662005))

(declare-fun m!7949588 () Bool)

(assert (=> b!7264914 m!7949588))

(declare-fun m!7949590 () Bool)

(assert (=> bm!662009 m!7949590))

(declare-fun m!7949592 () Bool)

(assert (=> bm!662005 m!7949592))

(declare-fun m!7949594 () Bool)

(assert (=> bm!662008 m!7949594))

(declare-fun m!7949596 () Bool)

(assert (=> b!7264910 m!7949596))

(assert (=> bm!661945 d!2260277))

(assert (=> d!2260193 d!2260189))

(declare-fun d!2260279 () Bool)

(assert (=> d!2260279 (= (flatMap!2873 lt!2591987 lambda!447245) (dynLambda!28872 lambda!447245 ct1!250))))

(assert (=> d!2260279 true))

(declare-fun _$13!4620 () Unit!164138)

(assert (=> d!2260279 (= (choose!56295 lt!2591987 ct1!250 lambda!447245) _$13!4620)))

(declare-fun b_lambda!279637 () Bool)

(assert (=> (not b_lambda!279637) (not d!2260279)))

(declare-fun bs!1910108 () Bool)

(assert (= bs!1910108 d!2260279))

(assert (=> bs!1910108 m!7949324))

(assert (=> bs!1910108 m!7949430))

(assert (=> d!2260193 d!2260279))

(assert (=> b!7264708 d!2260197))

(declare-fun d!2260281 () Bool)

(assert (=> d!2260281 (= (isEmpty!40644 s!7854) (is-Nil!70712 s!7854))))

(assert (=> d!2260207 d!2260281))

(declare-fun d!2260283 () Bool)

(declare-fun res!2945403 () Bool)

(declare-fun e!4356613 () Bool)

(assert (=> d!2260283 (=> res!2945403 e!4356613)))

(assert (=> d!2260283 (= res!2945403 (is-Nil!70711 (exprs!8200 ct1!250)))))

(assert (=> d!2260283 (= (forall!17593 (exprs!8200 ct1!250) lambda!447267) e!4356613)))

(declare-fun b!7264917 () Bool)

(declare-fun e!4356614 () Bool)

(assert (=> b!7264917 (= e!4356613 e!4356614)))

(declare-fun res!2945404 () Bool)

(assert (=> b!7264917 (=> (not res!2945404) (not e!4356614))))

(assert (=> b!7264917 (= res!2945404 (dynLambda!28873 lambda!447267 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun b!7264918 () Bool)

(assert (=> b!7264918 (= e!4356614 (forall!17593 (t!384901 (exprs!8200 ct1!250)) lambda!447267))))

(assert (= (and d!2260283 (not res!2945403)) b!7264917))

(assert (= (and b!7264917 res!2945404) b!7264918))

(declare-fun b_lambda!279639 () Bool)

(assert (=> (not b_lambda!279639) (not b!7264917)))

(declare-fun m!7949598 () Bool)

(assert (=> b!7264917 m!7949598))

(declare-fun m!7949600 () Bool)

(assert (=> b!7264918 m!7949600))

(assert (=> d!2260205 d!2260283))

(declare-fun b!7264919 () Bool)

(declare-fun e!4356617 () (Set Context!15400))

(assert (=> b!7264919 (= e!4356617 (as set.empty (Set Context!15400)))))

(declare-fun b!7264920 () Bool)

(declare-fun e!4356619 () (Set Context!15400))

(declare-fun e!4356620 () (Set Context!15400))

(assert (=> b!7264920 (= e!4356619 e!4356620)))

(declare-fun c!1351688 () Bool)

(assert (=> b!7264920 (= c!1351688 (is-Union!18760 (h!77159 (exprs!8200 lt!2591986))))))

(declare-fun b!7264921 () Bool)

(declare-fun c!1351690 () Bool)

(assert (=> b!7264921 (= c!1351690 (is-Star!18760 (h!77159 (exprs!8200 lt!2591986))))))

(declare-fun e!4356616 () (Set Context!15400))

(assert (=> b!7264921 (= e!4356616 e!4356617)))

(declare-fun bm!662010 () Bool)

(declare-fun call!662020 () List!70835)

(declare-fun call!662019 () List!70835)

(assert (=> bm!662010 (= call!662020 call!662019)))

(declare-fun call!662017 () (Set Context!15400))

(declare-fun bm!662011 () Bool)

(assert (=> bm!662011 (= call!662017 (derivationStepZipperDown!2694 (ite c!1351688 (regTwo!38033 (h!77159 (exprs!8200 lt!2591986))) (regOne!38032 (h!77159 (exprs!8200 lt!2591986)))) (ite c!1351688 (Context!15401 (t!384901 (exprs!8200 lt!2591986))) (Context!15401 call!662019)) (h!77160 s!7854)))))

(declare-fun b!7264923 () Bool)

(declare-fun e!4356615 () Bool)

(assert (=> b!7264923 (= e!4356615 (nullable!7960 (regOne!38032 (h!77159 (exprs!8200 lt!2591986)))))))

(declare-fun bm!662012 () Bool)

(declare-fun call!662015 () (Set Context!15400))

(declare-fun call!662018 () (Set Context!15400))

(assert (=> bm!662012 (= call!662015 call!662018)))

(declare-fun bm!662013 () Bool)

(declare-fun call!662016 () (Set Context!15400))

(assert (=> bm!662013 (= call!662016 call!662015)))

(declare-fun b!7264924 () Bool)

(assert (=> b!7264924 (= e!4356617 call!662016)))

(declare-fun b!7264925 () Bool)

(assert (=> b!7264925 (= e!4356620 (set.union call!662018 call!662017))))

(declare-fun c!1351686 () Bool)

(declare-fun c!1351689 () Bool)

(declare-fun bm!662014 () Bool)

(assert (=> bm!662014 (= call!662018 (derivationStepZipperDown!2694 (ite c!1351688 (regOne!38033 (h!77159 (exprs!8200 lt!2591986))) (ite c!1351689 (regTwo!38032 (h!77159 (exprs!8200 lt!2591986))) (ite c!1351686 (regOne!38032 (h!77159 (exprs!8200 lt!2591986))) (reg!19089 (h!77159 (exprs!8200 lt!2591986)))))) (ite (or c!1351688 c!1351689) (Context!15401 (t!384901 (exprs!8200 lt!2591986))) (Context!15401 call!662020)) (h!77160 s!7854)))))

(declare-fun d!2260285 () Bool)

(declare-fun c!1351687 () Bool)

(assert (=> d!2260285 (= c!1351687 (and (is-ElementMatch!18760 (h!77159 (exprs!8200 lt!2591986))) (= (c!1351596 (h!77159 (exprs!8200 lt!2591986))) (h!77160 s!7854))))))

(assert (=> d!2260285 (= (derivationStepZipperDown!2694 (h!77159 (exprs!8200 lt!2591986)) (Context!15401 (t!384901 (exprs!8200 lt!2591986))) (h!77160 s!7854)) e!4356619)))

(declare-fun b!7264922 () Bool)

(assert (=> b!7264922 (= e!4356616 call!662016)))

(declare-fun b!7264926 () Bool)

(declare-fun e!4356618 () (Set Context!15400))

(assert (=> b!7264926 (= e!4356618 e!4356616)))

(assert (=> b!7264926 (= c!1351686 (is-Concat!27605 (h!77159 (exprs!8200 lt!2591986))))))

(declare-fun bm!662015 () Bool)

(assert (=> bm!662015 (= call!662019 ($colon$colon!2942 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591986)))) (ite (or c!1351689 c!1351686) (regTwo!38032 (h!77159 (exprs!8200 lt!2591986))) (h!77159 (exprs!8200 lt!2591986)))))))

(declare-fun b!7264927 () Bool)

(assert (=> b!7264927 (= e!4356619 (set.insert (Context!15401 (t!384901 (exprs!8200 lt!2591986))) (as set.empty (Set Context!15400))))))

(declare-fun b!7264928 () Bool)

(assert (=> b!7264928 (= c!1351689 e!4356615)))

(declare-fun res!2945405 () Bool)

(assert (=> b!7264928 (=> (not res!2945405) (not e!4356615))))

(assert (=> b!7264928 (= res!2945405 (is-Concat!27605 (h!77159 (exprs!8200 lt!2591986))))))

(assert (=> b!7264928 (= e!4356620 e!4356618)))

(declare-fun b!7264929 () Bool)

(assert (=> b!7264929 (= e!4356618 (set.union call!662017 call!662015))))

(assert (= (and d!2260285 c!1351687) b!7264927))

(assert (= (and d!2260285 (not c!1351687)) b!7264920))

(assert (= (and b!7264920 c!1351688) b!7264925))

(assert (= (and b!7264920 (not c!1351688)) b!7264928))

(assert (= (and b!7264928 res!2945405) b!7264923))

(assert (= (and b!7264928 c!1351689) b!7264929))

(assert (= (and b!7264928 (not c!1351689)) b!7264926))

(assert (= (and b!7264926 c!1351686) b!7264922))

(assert (= (and b!7264926 (not c!1351686)) b!7264921))

(assert (= (and b!7264921 c!1351690) b!7264924))

(assert (= (and b!7264921 (not c!1351690)) b!7264919))

(assert (= (or b!7264922 b!7264924) bm!662010))

(assert (= (or b!7264922 b!7264924) bm!662013))

(assert (= (or b!7264929 bm!662010) bm!662015))

(assert (= (or b!7264929 bm!662013) bm!662012))

(assert (= (or b!7264925 bm!662012) bm!662014))

(assert (= (or b!7264925 b!7264929) bm!662011))

(declare-fun m!7949602 () Bool)

(assert (=> b!7264927 m!7949602))

(declare-fun m!7949604 () Bool)

(assert (=> bm!662015 m!7949604))

(declare-fun m!7949606 () Bool)

(assert (=> bm!662011 m!7949606))

(declare-fun m!7949608 () Bool)

(assert (=> bm!662014 m!7949608))

(declare-fun m!7949610 () Bool)

(assert (=> b!7264923 m!7949610))

(assert (=> bm!661967 d!2260285))

(declare-fun d!2260287 () Bool)

(declare-fun c!1351693 () Bool)

(assert (=> d!2260287 (= c!1351693 (is-Nil!70711 lt!2592039))))

(declare-fun e!4356623 () (Set Regex!18760))

(assert (=> d!2260287 (= (content!14744 lt!2592039) e!4356623)))

(declare-fun b!7264934 () Bool)

(assert (=> b!7264934 (= e!4356623 (as set.empty (Set Regex!18760)))))

(declare-fun b!7264935 () Bool)

(assert (=> b!7264935 (= e!4356623 (set.union (set.insert (h!77159 lt!2592039) (as set.empty (Set Regex!18760))) (content!14744 (t!384901 lt!2592039))))))

(assert (= (and d!2260287 c!1351693) b!7264934))

(assert (= (and d!2260287 (not c!1351693)) b!7264935))

(declare-fun m!7949612 () Bool)

(assert (=> b!7264935 m!7949612))

(declare-fun m!7949614 () Bool)

(assert (=> b!7264935 m!7949614))

(assert (=> d!2260183 d!2260287))

(declare-fun d!2260289 () Bool)

(declare-fun c!1351694 () Bool)

(assert (=> d!2260289 (= c!1351694 (is-Nil!70711 (exprs!8200 ct1!250)))))

(declare-fun e!4356624 () (Set Regex!18760))

(assert (=> d!2260289 (= (content!14744 (exprs!8200 ct1!250)) e!4356624)))

(declare-fun b!7264936 () Bool)

(assert (=> b!7264936 (= e!4356624 (as set.empty (Set Regex!18760)))))

(declare-fun b!7264937 () Bool)

(assert (=> b!7264937 (= e!4356624 (set.union (set.insert (h!77159 (exprs!8200 ct1!250)) (as set.empty (Set Regex!18760))) (content!14744 (t!384901 (exprs!8200 ct1!250)))))))

(assert (= (and d!2260289 c!1351694) b!7264936))

(assert (= (and d!2260289 (not c!1351694)) b!7264937))

(declare-fun m!7949616 () Bool)

(assert (=> b!7264937 m!7949616))

(declare-fun m!7949618 () Bool)

(assert (=> b!7264937 m!7949618))

(assert (=> d!2260183 d!2260289))

(declare-fun d!2260291 () Bool)

(declare-fun c!1351695 () Bool)

(assert (=> d!2260291 (= c!1351695 (is-Nil!70711 (exprs!8200 ct2!346)))))

(declare-fun e!4356625 () (Set Regex!18760))

(assert (=> d!2260291 (= (content!14744 (exprs!8200 ct2!346)) e!4356625)))

(declare-fun b!7264938 () Bool)

(assert (=> b!7264938 (= e!4356625 (as set.empty (Set Regex!18760)))))

(declare-fun b!7264939 () Bool)

(assert (=> b!7264939 (= e!4356625 (set.union (set.insert (h!77159 (exprs!8200 ct2!346)) (as set.empty (Set Regex!18760))) (content!14744 (t!384901 (exprs!8200 ct2!346)))))))

(assert (= (and d!2260291 c!1351695) b!7264938))

(assert (= (and d!2260291 (not c!1351695)) b!7264939))

(declare-fun m!7949620 () Bool)

(assert (=> b!7264939 m!7949620))

(declare-fun m!7949622 () Bool)

(assert (=> b!7264939 m!7949622))

(assert (=> d!2260183 d!2260291))

(declare-fun d!2260293 () Bool)

(assert (=> d!2260293 true))

(declare-fun setRes!53622 () Bool)

(assert (=> d!2260293 setRes!53622))

(declare-fun condSetEmpty!53622 () Bool)

(declare-fun res!2945408 () (Set Context!15400))

(assert (=> d!2260293 (= condSetEmpty!53622 (= res!2945408 (as set.empty (Set Context!15400))))))

(assert (=> d!2260293 (= (choose!56294 lt!2591987 lambda!447245) res!2945408)))

(declare-fun setIsEmpty!53622 () Bool)

(assert (=> setIsEmpty!53622 setRes!53622))

(declare-fun setNonEmpty!53622 () Bool)

(declare-fun tp!2040273 () Bool)

(declare-fun setElem!53622 () Context!15400)

(declare-fun e!4356628 () Bool)

(assert (=> setNonEmpty!53622 (= setRes!53622 (and tp!2040273 (inv!89911 setElem!53622) e!4356628))))

(declare-fun setRest!53622 () (Set Context!15400))

(assert (=> setNonEmpty!53622 (= res!2945408 (set.union (set.insert setElem!53622 (as set.empty (Set Context!15400))) setRest!53622))))

(declare-fun b!7264942 () Bool)

(declare-fun tp!2040274 () Bool)

(assert (=> b!7264942 (= e!4356628 tp!2040274)))

(assert (= (and d!2260293 condSetEmpty!53622) setIsEmpty!53622))

(assert (= (and d!2260293 (not condSetEmpty!53622)) setNonEmpty!53622))

(assert (= setNonEmpty!53622 b!7264942))

(declare-fun m!7949624 () Bool)

(assert (=> setNonEmpty!53622 m!7949624))

(assert (=> d!2260189 d!2260293))

(declare-fun d!2260295 () Bool)

(assert (=> d!2260295 (= (nullable!7960 (h!77159 (exprs!8200 lt!2591986))) (nullableFct!3127 (h!77159 (exprs!8200 lt!2591986))))))

(declare-fun bs!1910109 () Bool)

(assert (= bs!1910109 d!2260295))

(declare-fun m!7949626 () Bool)

(assert (=> bs!1910109 m!7949626))

(assert (=> b!7264786 d!2260295))

(declare-fun b!7264943 () Bool)

(declare-fun e!4356631 () (Set Context!15400))

(declare-fun call!662021 () (Set Context!15400))

(assert (=> b!7264943 (= e!4356631 call!662021)))

(declare-fun b!7264944 () Bool)

(declare-fun e!4356629 () Bool)

(assert (=> b!7264944 (= e!4356629 (nullable!7960 (h!77159 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591986)))))))))

(declare-fun b!7264945 () Bool)

(assert (=> b!7264945 (= e!4356631 (as set.empty (Set Context!15400)))))

(declare-fun b!7264946 () Bool)

(declare-fun e!4356630 () (Set Context!15400))

(assert (=> b!7264946 (= e!4356630 e!4356631)))

(declare-fun c!1351696 () Bool)

(assert (=> b!7264946 (= c!1351696 (is-Cons!70711 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591986))))))))

(declare-fun b!7264947 () Bool)

(assert (=> b!7264947 (= e!4356630 (set.union call!662021 (derivationStepZipperUp!2530 (Context!15401 (t!384901 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591986)))))) (h!77160 s!7854))))))

(declare-fun bm!662016 () Bool)

(assert (=> bm!662016 (= call!662021 (derivationStepZipperDown!2694 (h!77159 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591986))))) (Context!15401 (t!384901 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591986)))))) (h!77160 s!7854)))))

(declare-fun d!2260297 () Bool)

(declare-fun c!1351697 () Bool)

(assert (=> d!2260297 (= c!1351697 e!4356629)))

(declare-fun res!2945409 () Bool)

(assert (=> d!2260297 (=> (not res!2945409) (not e!4356629))))

(assert (=> d!2260297 (= res!2945409 (is-Cons!70711 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591986))))))))

(assert (=> d!2260297 (= (derivationStepZipperUp!2530 (Context!15401 (t!384901 (exprs!8200 lt!2591986))) (h!77160 s!7854)) e!4356630)))

(assert (= (and d!2260297 res!2945409) b!7264944))

(assert (= (and d!2260297 c!1351697) b!7264947))

(assert (= (and d!2260297 (not c!1351697)) b!7264946))

(assert (= (and b!7264946 c!1351696) b!7264943))

(assert (= (and b!7264946 (not c!1351696)) b!7264945))

(assert (= (or b!7264947 b!7264943) bm!662016))

(declare-fun m!7949628 () Bool)

(assert (=> b!7264944 m!7949628))

(declare-fun m!7949630 () Bool)

(assert (=> b!7264947 m!7949630))

(declare-fun m!7949632 () Bool)

(assert (=> bm!662016 m!7949632))

(assert (=> b!7264789 d!2260297))

(declare-fun d!2260299 () Bool)

(declare-fun res!2945410 () Bool)

(declare-fun e!4356632 () Bool)

(assert (=> d!2260299 (=> res!2945410 e!4356632)))

(assert (=> d!2260299 (= res!2945410 (is-Nil!70711 (++!16660 (exprs!8200 ct1!250) (exprs!8200 ct2!346))))))

(assert (=> d!2260299 (= (forall!17593 (++!16660 (exprs!8200 ct1!250) (exprs!8200 ct2!346)) lambda!447244) e!4356632)))

(declare-fun b!7264948 () Bool)

(declare-fun e!4356633 () Bool)

(assert (=> b!7264948 (= e!4356632 e!4356633)))

(declare-fun res!2945411 () Bool)

(assert (=> b!7264948 (=> (not res!2945411) (not e!4356633))))

(assert (=> b!7264948 (= res!2945411 (dynLambda!28873 lambda!447244 (h!77159 (++!16660 (exprs!8200 ct1!250) (exprs!8200 ct2!346)))))))

(declare-fun b!7264949 () Bool)

(assert (=> b!7264949 (= e!4356633 (forall!17593 (t!384901 (++!16660 (exprs!8200 ct1!250) (exprs!8200 ct2!346))) lambda!447244))))

(assert (= (and d!2260299 (not res!2945410)) b!7264948))

(assert (= (and b!7264948 res!2945411) b!7264949))

(declare-fun b_lambda!279641 () Bool)

(assert (=> (not b_lambda!279641) (not b!7264948)))

(declare-fun m!7949634 () Bool)

(assert (=> b!7264948 m!7949634))

(declare-fun m!7949636 () Bool)

(assert (=> b!7264949 m!7949636))

(assert (=> d!2260179 d!2260299))

(assert (=> d!2260179 d!2260183))

(declare-fun d!2260301 () Bool)

(assert (=> d!2260301 (forall!17593 (++!16660 (exprs!8200 ct1!250) (exprs!8200 ct2!346)) lambda!447244)))

(assert (=> d!2260301 true))

(declare-fun _$78!810 () Unit!164138)

(assert (=> d!2260301 (= (choose!56293 (exprs!8200 ct1!250) (exprs!8200 ct2!346) lambda!447244) _$78!810)))

(declare-fun bs!1910110 () Bool)

(assert (= bs!1910110 d!2260301))

(assert (=> bs!1910110 m!7949322))

(assert (=> bs!1910110 m!7949322))

(assert (=> bs!1910110 m!7949394))

(assert (=> d!2260179 d!2260301))

(declare-fun d!2260303 () Bool)

(declare-fun res!2945412 () Bool)

(declare-fun e!4356634 () Bool)

(assert (=> d!2260303 (=> res!2945412 e!4356634)))

(assert (=> d!2260303 (= res!2945412 (is-Nil!70711 (exprs!8200 ct1!250)))))

(assert (=> d!2260303 (= (forall!17593 (exprs!8200 ct1!250) lambda!447244) e!4356634)))

(declare-fun b!7264950 () Bool)

(declare-fun e!4356635 () Bool)

(assert (=> b!7264950 (= e!4356634 e!4356635)))

(declare-fun res!2945413 () Bool)

(assert (=> b!7264950 (=> (not res!2945413) (not e!4356635))))

(assert (=> b!7264950 (= res!2945413 (dynLambda!28873 lambda!447244 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun b!7264951 () Bool)

(assert (=> b!7264951 (= e!4356635 (forall!17593 (t!384901 (exprs!8200 ct1!250)) lambda!447244))))

(assert (= (and d!2260303 (not res!2945412)) b!7264950))

(assert (= (and b!7264950 res!2945413) b!7264951))

(declare-fun b_lambda!279643 () Bool)

(assert (=> (not b_lambda!279643) (not b!7264950)))

(declare-fun m!7949638 () Bool)

(assert (=> b!7264950 m!7949638))

(declare-fun m!7949640 () Bool)

(assert (=> b!7264951 m!7949640))

(assert (=> d!2260179 d!2260303))

(declare-fun d!2260305 () Bool)

(declare-fun lambda!447284 () Int)

(declare-fun exists!4487 ((Set Context!15400) Int) Bool)

(assert (=> d!2260305 (= (nullableZipper!2972 (set.insert ct2!346 (as set.empty (Set Context!15400)))) (exists!4487 (set.insert ct2!346 (as set.empty (Set Context!15400))) lambda!447284))))

(declare-fun bs!1910111 () Bool)

(assert (= bs!1910111 d!2260305))

(assert (=> bs!1910111 m!7949342))

(declare-fun m!7949642 () Bool)

(assert (=> bs!1910111 m!7949642))

(assert (=> b!7264728 d!2260305))

(assert (=> bs!1910086 d!2260187))

(declare-fun d!2260307 () Bool)

(declare-fun c!1351700 () Bool)

(assert (=> d!2260307 (= c!1351700 (isEmpty!40644 (tail!14432 s!7854)))))

(declare-fun e!4356636 () Bool)

(assert (=> d!2260307 (= (matchZipper!3664 (derivationStepZipper!3500 (set.insert ct2!346 (as set.empty (Set Context!15400))) (head!14971 s!7854)) (tail!14432 s!7854)) e!4356636)))

(declare-fun b!7264952 () Bool)

(assert (=> b!7264952 (= e!4356636 (nullableZipper!2972 (derivationStepZipper!3500 (set.insert ct2!346 (as set.empty (Set Context!15400))) (head!14971 s!7854))))))

(declare-fun b!7264953 () Bool)

(assert (=> b!7264953 (= e!4356636 (matchZipper!3664 (derivationStepZipper!3500 (derivationStepZipper!3500 (set.insert ct2!346 (as set.empty (Set Context!15400))) (head!14971 s!7854)) (head!14971 (tail!14432 s!7854))) (tail!14432 (tail!14432 s!7854))))))

(assert (= (and d!2260307 c!1351700) b!7264952))

(assert (= (and d!2260307 (not c!1351700)) b!7264953))

(assert (=> d!2260307 m!7949458))

(declare-fun m!7949644 () Bool)

(assert (=> d!2260307 m!7949644))

(assert (=> b!7264952 m!7949456))

(declare-fun m!7949646 () Bool)

(assert (=> b!7264952 m!7949646))

(assert (=> b!7264953 m!7949458))

(declare-fun m!7949648 () Bool)

(assert (=> b!7264953 m!7949648))

(assert (=> b!7264953 m!7949456))

(assert (=> b!7264953 m!7949648))

(declare-fun m!7949650 () Bool)

(assert (=> b!7264953 m!7949650))

(assert (=> b!7264953 m!7949458))

(declare-fun m!7949652 () Bool)

(assert (=> b!7264953 m!7949652))

(assert (=> b!7264953 m!7949650))

(assert (=> b!7264953 m!7949652))

(declare-fun m!7949654 () Bool)

(assert (=> b!7264953 m!7949654))

(assert (=> b!7264729 d!2260307))

(declare-fun bs!1910112 () Bool)

(declare-fun d!2260309 () Bool)

(assert (= bs!1910112 (and d!2260309 b!7264638)))

(declare-fun lambda!447285 () Int)

(assert (=> bs!1910112 (= (= (head!14971 s!7854) (h!77160 s!7854)) (= lambda!447285 lambda!447245))))

(declare-fun bs!1910113 () Bool)

(assert (= bs!1910113 (and d!2260309 d!2260191)))

(assert (=> bs!1910113 (= (= (head!14971 s!7854) (h!77160 s!7854)) (= lambda!447285 lambda!447264))))

(assert (=> d!2260309 true))

(assert (=> d!2260309 (= (derivationStepZipper!3500 (set.insert ct2!346 (as set.empty (Set Context!15400))) (head!14971 s!7854)) (flatMap!2873 (set.insert ct2!346 (as set.empty (Set Context!15400))) lambda!447285))))

(declare-fun bs!1910114 () Bool)

(assert (= bs!1910114 d!2260309))

(assert (=> bs!1910114 m!7949342))

(declare-fun m!7949656 () Bool)

(assert (=> bs!1910114 m!7949656))

(assert (=> b!7264729 d!2260309))

(declare-fun d!2260311 () Bool)

(assert (=> d!2260311 (= (head!14971 s!7854) (h!77160 s!7854))))

(assert (=> b!7264729 d!2260311))

(declare-fun d!2260313 () Bool)

(assert (=> d!2260313 (= (tail!14432 s!7854) (t!384902 s!7854))))

(assert (=> b!7264729 d!2260313))

(declare-fun bm!662021 () Bool)

(declare-fun call!662026 () Bool)

(declare-fun c!1351703 () Bool)

(assert (=> bm!662021 (= call!662026 (nullable!7960 (ite c!1351703 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250))))))))

(declare-fun b!7264968 () Bool)

(declare-fun e!4356650 () Bool)

(assert (=> b!7264968 (= e!4356650 call!662026)))

(declare-fun b!7264969 () Bool)

(declare-fun e!4356654 () Bool)

(declare-fun call!662027 () Bool)

(assert (=> b!7264969 (= e!4356654 call!662027)))

(declare-fun b!7264970 () Bool)

(declare-fun e!4356651 () Bool)

(assert (=> b!7264970 (= e!4356651 e!4356654)))

(declare-fun res!2945426 () Bool)

(assert (=> b!7264970 (= res!2945426 call!662026)))

(assert (=> b!7264970 (=> (not res!2945426) (not e!4356654))))

(declare-fun b!7264971 () Bool)

(declare-fun e!4356653 () Bool)

(assert (=> b!7264971 (= e!4356653 e!4356651)))

(assert (=> b!7264971 (= c!1351703 (is-Union!18760 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun b!7264972 () Bool)

(declare-fun e!4356652 () Bool)

(assert (=> b!7264972 (= e!4356652 e!4356653)))

(declare-fun res!2945428 () Bool)

(assert (=> b!7264972 (=> res!2945428 e!4356653)))

(assert (=> b!7264972 (= res!2945428 (is-Star!18760 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun bm!662022 () Bool)

(assert (=> bm!662022 (= call!662027 (nullable!7960 (ite c!1351703 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (regTwo!38032 (h!77159 (exprs!8200 ct1!250))))))))

(declare-fun d!2260315 () Bool)

(declare-fun res!2945427 () Bool)

(declare-fun e!4356649 () Bool)

(assert (=> d!2260315 (=> res!2945427 e!4356649)))

(assert (=> d!2260315 (= res!2945427 (is-EmptyExpr!18760 (h!77159 (exprs!8200 ct1!250))))))

(assert (=> d!2260315 (= (nullableFct!3127 (h!77159 (exprs!8200 ct1!250))) e!4356649)))

(declare-fun b!7264973 () Bool)

(assert (=> b!7264973 (= e!4356651 e!4356650)))

(declare-fun res!2945424 () Bool)

(assert (=> b!7264973 (= res!2945424 call!662027)))

(assert (=> b!7264973 (=> res!2945424 e!4356650)))

(declare-fun b!7264974 () Bool)

(assert (=> b!7264974 (= e!4356649 e!4356652)))

(declare-fun res!2945425 () Bool)

(assert (=> b!7264974 (=> (not res!2945425) (not e!4356652))))

(assert (=> b!7264974 (= res!2945425 (and (not (is-EmptyLang!18760 (h!77159 (exprs!8200 ct1!250)))) (not (is-ElementMatch!18760 (h!77159 (exprs!8200 ct1!250))))))))

(assert (= (and d!2260315 (not res!2945427)) b!7264974))

(assert (= (and b!7264974 res!2945425) b!7264972))

(assert (= (and b!7264972 (not res!2945428)) b!7264971))

(assert (= (and b!7264971 c!1351703) b!7264973))

(assert (= (and b!7264971 (not c!1351703)) b!7264970))

(assert (= (and b!7264973 (not res!2945424)) b!7264968))

(assert (= (and b!7264970 res!2945426) b!7264969))

(assert (= (or b!7264973 b!7264969) bm!662022))

(assert (= (or b!7264968 b!7264970) bm!662021))

(declare-fun m!7949658 () Bool)

(assert (=> bm!662021 m!7949658))

(declare-fun m!7949660 () Bool)

(assert (=> bm!662022 m!7949660))

(assert (=> d!2260197 d!2260315))

(assert (=> d!2260185 d!2260181))

(declare-fun d!2260317 () Bool)

(assert (=> d!2260317 (= (flatMap!2873 lt!2591994 lambda!447245) (dynLambda!28872 lambda!447245 lt!2591988))))

(assert (=> d!2260317 true))

(declare-fun _$13!4621 () Unit!164138)

(assert (=> d!2260317 (= (choose!56295 lt!2591994 lt!2591988 lambda!447245) _$13!4621)))

(declare-fun b_lambda!279645 () Bool)

(assert (=> (not b_lambda!279645) (not d!2260317)))

(declare-fun bs!1910115 () Bool)

(assert (= bs!1910115 d!2260317))

(assert (=> bs!1910115 m!7949318))

(assert (=> bs!1910115 m!7949416))

(assert (=> d!2260185 d!2260317))

(declare-fun b!7264975 () Bool)

(declare-fun e!4356657 () (Set Context!15400))

(declare-fun call!662028 () (Set Context!15400))

(assert (=> b!7264975 (= e!4356657 call!662028)))

(declare-fun b!7264976 () Bool)

(declare-fun e!4356655 () Bool)

(assert (=> b!7264976 (= e!4356655 (nullable!7960 (h!77159 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591988)))))))))

(declare-fun b!7264977 () Bool)

(assert (=> b!7264977 (= e!4356657 (as set.empty (Set Context!15400)))))

(declare-fun b!7264978 () Bool)

(declare-fun e!4356656 () (Set Context!15400))

(assert (=> b!7264978 (= e!4356656 e!4356657)))

(declare-fun c!1351704 () Bool)

(assert (=> b!7264978 (= c!1351704 (is-Cons!70711 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591988))))))))

(declare-fun b!7264979 () Bool)

(assert (=> b!7264979 (= e!4356656 (set.union call!662028 (derivationStepZipperUp!2530 (Context!15401 (t!384901 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591988)))))) (h!77160 s!7854))))))

(declare-fun bm!662023 () Bool)

(assert (=> bm!662023 (= call!662028 (derivationStepZipperDown!2694 (h!77159 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591988))))) (Context!15401 (t!384901 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591988)))))) (h!77160 s!7854)))))

(declare-fun d!2260319 () Bool)

(declare-fun c!1351705 () Bool)

(assert (=> d!2260319 (= c!1351705 e!4356655)))

(declare-fun res!2945429 () Bool)

(assert (=> d!2260319 (=> (not res!2945429) (not e!4356655))))

(assert (=> d!2260319 (= res!2945429 (is-Cons!70711 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 lt!2591988))))))))

(assert (=> d!2260319 (= (derivationStepZipperUp!2530 (Context!15401 (t!384901 (exprs!8200 lt!2591988))) (h!77160 s!7854)) e!4356656)))

(assert (= (and d!2260319 res!2945429) b!7264976))

(assert (= (and d!2260319 c!1351705) b!7264979))

(assert (= (and d!2260319 (not c!1351705)) b!7264978))

(assert (= (and b!7264978 c!1351704) b!7264975))

(assert (= (and b!7264978 (not c!1351704)) b!7264977))

(assert (= (or b!7264979 b!7264975) bm!662023))

(declare-fun m!7949662 () Bool)

(assert (=> b!7264976 m!7949662))

(declare-fun m!7949664 () Bool)

(assert (=> b!7264979 m!7949664))

(declare-fun m!7949666 () Bool)

(assert (=> bm!662023 m!7949666))

(assert (=> b!7264704 d!2260319))

(declare-fun d!2260321 () Bool)

(declare-fun res!2945430 () Bool)

(declare-fun e!4356658 () Bool)

(assert (=> d!2260321 (=> res!2945430 e!4356658)))

(assert (=> d!2260321 (= res!2945430 (is-Nil!70711 (exprs!8200 ct1!250)))))

(assert (=> d!2260321 (= (forall!17593 (exprs!8200 ct1!250) lambda!447273) e!4356658)))

(declare-fun b!7264980 () Bool)

(declare-fun e!4356659 () Bool)

(assert (=> b!7264980 (= e!4356658 e!4356659)))

(declare-fun res!2945431 () Bool)

(assert (=> b!7264980 (=> (not res!2945431) (not e!4356659))))

(assert (=> b!7264980 (= res!2945431 (dynLambda!28873 lambda!447273 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun b!7264981 () Bool)

(assert (=> b!7264981 (= e!4356659 (forall!17593 (t!384901 (exprs!8200 ct1!250)) lambda!447273))))

(assert (= (and d!2260321 (not res!2945430)) b!7264980))

(assert (= (and b!7264980 res!2945431) b!7264981))

(declare-fun b_lambda!279647 () Bool)

(assert (=> (not b_lambda!279647) (not b!7264980)))

(declare-fun m!7949668 () Bool)

(assert (=> b!7264980 m!7949668))

(declare-fun m!7949670 () Bool)

(assert (=> b!7264981 m!7949670))

(assert (=> d!2260213 d!2260321))

(declare-fun d!2260323 () Bool)

(declare-fun res!2945432 () Bool)

(declare-fun e!4356660 () Bool)

(assert (=> d!2260323 (=> res!2945432 e!4356660)))

(assert (=> d!2260323 (= res!2945432 (is-Nil!70711 (exprs!8200 ct2!346)))))

(assert (=> d!2260323 (= (forall!17593 (exprs!8200 ct2!346) lambda!447272) e!4356660)))

(declare-fun b!7264982 () Bool)

(declare-fun e!4356661 () Bool)

(assert (=> b!7264982 (= e!4356660 e!4356661)))

(declare-fun res!2945433 () Bool)

(assert (=> b!7264982 (=> (not res!2945433) (not e!4356661))))

(assert (=> b!7264982 (= res!2945433 (dynLambda!28873 lambda!447272 (h!77159 (exprs!8200 ct2!346))))))

(declare-fun b!7264983 () Bool)

(assert (=> b!7264983 (= e!4356661 (forall!17593 (t!384901 (exprs!8200 ct2!346)) lambda!447272))))

(assert (= (and d!2260323 (not res!2945432)) b!7264982))

(assert (= (and b!7264982 res!2945433) b!7264983))

(declare-fun b_lambda!279649 () Bool)

(assert (=> (not b_lambda!279649) (not b!7264982)))

(declare-fun m!7949672 () Bool)

(assert (=> b!7264982 m!7949672))

(declare-fun m!7949674 () Bool)

(assert (=> b!7264983 m!7949674))

(assert (=> d!2260211 d!2260323))

(declare-fun b!7264984 () Bool)

(declare-fun e!4356664 () (Set Context!15400))

(assert (=> b!7264984 (= e!4356664 (as set.empty (Set Context!15400)))))

(declare-fun b!7264985 () Bool)

(declare-fun e!4356666 () (Set Context!15400))

(declare-fun e!4356667 () (Set Context!15400))

(assert (=> b!7264985 (= e!4356666 e!4356667)))

(declare-fun c!1351708 () Bool)

(assert (=> b!7264985 (= c!1351708 (is-Union!18760 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun b!7264986 () Bool)

(declare-fun c!1351710 () Bool)

(assert (=> b!7264986 (= c!1351710 (is-Star!18760 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun e!4356663 () (Set Context!15400))

(assert (=> b!7264986 (= e!4356663 e!4356664)))

(declare-fun bm!662024 () Bool)

(declare-fun call!662034 () List!70835)

(declare-fun call!662033 () List!70835)

(assert (=> bm!662024 (= call!662034 call!662033)))

(declare-fun call!662031 () (Set Context!15400))

(declare-fun bm!662025 () Bool)

(assert (=> bm!662025 (= call!662031 (derivationStepZipperDown!2694 (ite c!1351708 (regTwo!38033 (h!77159 (exprs!8200 ct1!250))) (regOne!38032 (h!77159 (exprs!8200 ct1!250)))) (ite c!1351708 (Context!15401 (t!384901 (exprs!8200 ct1!250))) (Context!15401 call!662033)) (h!77160 s!7854)))))

(declare-fun b!7264988 () Bool)

(declare-fun e!4356662 () Bool)

(assert (=> b!7264988 (= e!4356662 (nullable!7960 (regOne!38032 (h!77159 (exprs!8200 ct1!250)))))))

(declare-fun bm!662026 () Bool)

(declare-fun call!662029 () (Set Context!15400))

(declare-fun call!662032 () (Set Context!15400))

(assert (=> bm!662026 (= call!662029 call!662032)))

(declare-fun bm!662027 () Bool)

(declare-fun call!662030 () (Set Context!15400))

(assert (=> bm!662027 (= call!662030 call!662029)))

(declare-fun b!7264989 () Bool)

(assert (=> b!7264989 (= e!4356664 call!662030)))

(declare-fun b!7264990 () Bool)

(assert (=> b!7264990 (= e!4356667 (set.union call!662032 call!662031))))

(declare-fun c!1351706 () Bool)

(declare-fun bm!662028 () Bool)

(declare-fun c!1351709 () Bool)

(assert (=> bm!662028 (= call!662032 (derivationStepZipperDown!2694 (ite c!1351708 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351709 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351706 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250)))))) (ite (or c!1351708 c!1351709) (Context!15401 (t!384901 (exprs!8200 ct1!250))) (Context!15401 call!662034)) (h!77160 s!7854)))))

(declare-fun d!2260325 () Bool)

(declare-fun c!1351707 () Bool)

(assert (=> d!2260325 (= c!1351707 (and (is-ElementMatch!18760 (h!77159 (exprs!8200 ct1!250))) (= (c!1351596 (h!77159 (exprs!8200 ct1!250))) (h!77160 s!7854))))))

(assert (=> d!2260325 (= (derivationStepZipperDown!2694 (h!77159 (exprs!8200 ct1!250)) (Context!15401 (t!384901 (exprs!8200 ct1!250))) (h!77160 s!7854)) e!4356666)))

(declare-fun b!7264987 () Bool)

(assert (=> b!7264987 (= e!4356663 call!662030)))

(declare-fun b!7264991 () Bool)

(declare-fun e!4356665 () (Set Context!15400))

(assert (=> b!7264991 (= e!4356665 e!4356663)))

(assert (=> b!7264991 (= c!1351706 (is-Concat!27605 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun bm!662029 () Bool)

(assert (=> bm!662029 (= call!662033 ($colon$colon!2942 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 ct1!250)))) (ite (or c!1351709 c!1351706) (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (h!77159 (exprs!8200 ct1!250)))))))

(declare-fun b!7264992 () Bool)

(assert (=> b!7264992 (= e!4356666 (set.insert (Context!15401 (t!384901 (exprs!8200 ct1!250))) (as set.empty (Set Context!15400))))))

(declare-fun b!7264993 () Bool)

(assert (=> b!7264993 (= c!1351709 e!4356662)))

(declare-fun res!2945434 () Bool)

(assert (=> b!7264993 (=> (not res!2945434) (not e!4356662))))

(assert (=> b!7264993 (= res!2945434 (is-Concat!27605 (h!77159 (exprs!8200 ct1!250))))))

(assert (=> b!7264993 (= e!4356667 e!4356665)))

(declare-fun b!7264994 () Bool)

(assert (=> b!7264994 (= e!4356665 (set.union call!662031 call!662029))))

(assert (= (and d!2260325 c!1351707) b!7264992))

(assert (= (and d!2260325 (not c!1351707)) b!7264985))

(assert (= (and b!7264985 c!1351708) b!7264990))

(assert (= (and b!7264985 (not c!1351708)) b!7264993))

(assert (= (and b!7264993 res!2945434) b!7264988))

(assert (= (and b!7264993 c!1351709) b!7264994))

(assert (= (and b!7264993 (not c!1351709)) b!7264991))

(assert (= (and b!7264991 c!1351706) b!7264987))

(assert (= (and b!7264991 (not c!1351706)) b!7264986))

(assert (= (and b!7264986 c!1351710) b!7264989))

(assert (= (and b!7264986 (not c!1351710)) b!7264984))

(assert (= (or b!7264987 b!7264989) bm!662024))

(assert (= (or b!7264987 b!7264989) bm!662027))

(assert (= (or b!7264994 bm!662024) bm!662029))

(assert (= (or b!7264994 bm!662027) bm!662026))

(assert (= (or b!7264990 bm!662026) bm!662028))

(assert (= (or b!7264990 b!7264994) bm!662025))

(declare-fun m!7949676 () Bool)

(assert (=> b!7264992 m!7949676))

(declare-fun m!7949678 () Bool)

(assert (=> bm!662029 m!7949678))

(declare-fun m!7949680 () Bool)

(assert (=> bm!662025 m!7949680))

(declare-fun m!7949682 () Bool)

(assert (=> bm!662028 m!7949682))

(assert (=> b!7264988 m!7949476))

(assert (=> bm!661946 d!2260325))

(declare-fun d!2260327 () Bool)

(declare-fun e!4356669 () Bool)

(assert (=> d!2260327 e!4356669))

(declare-fun res!2945436 () Bool)

(assert (=> d!2260327 (=> (not res!2945436) (not e!4356669))))

(declare-fun lt!2592054 () List!70835)

(assert (=> d!2260327 (= res!2945436 (= (content!14744 lt!2592054) (set.union (content!14744 (t!384901 (exprs!8200 ct1!250))) (content!14744 (exprs!8200 ct2!346)))))))

(declare-fun e!4356668 () List!70835)

(assert (=> d!2260327 (= lt!2592054 e!4356668)))

(declare-fun c!1351711 () Bool)

(assert (=> d!2260327 (= c!1351711 (is-Nil!70711 (t!384901 (exprs!8200 ct1!250))))))

(assert (=> d!2260327 (= (++!16660 (t!384901 (exprs!8200 ct1!250)) (exprs!8200 ct2!346)) lt!2592054)))

(declare-fun b!7264998 () Bool)

(assert (=> b!7264998 (= e!4356669 (or (not (= (exprs!8200 ct2!346) Nil!70711)) (= lt!2592054 (t!384901 (exprs!8200 ct1!250)))))))

(declare-fun b!7264995 () Bool)

(assert (=> b!7264995 (= e!4356668 (exprs!8200 ct2!346))))

(declare-fun b!7264996 () Bool)

(assert (=> b!7264996 (= e!4356668 (Cons!70711 (h!77159 (t!384901 (exprs!8200 ct1!250))) (++!16660 (t!384901 (t!384901 (exprs!8200 ct1!250))) (exprs!8200 ct2!346))))))

(declare-fun b!7264997 () Bool)

(declare-fun res!2945435 () Bool)

(assert (=> b!7264997 (=> (not res!2945435) (not e!4356669))))

(assert (=> b!7264997 (= res!2945435 (= (size!41792 lt!2592054) (+ (size!41792 (t!384901 (exprs!8200 ct1!250))) (size!41792 (exprs!8200 ct2!346)))))))

(assert (= (and d!2260327 c!1351711) b!7264995))

(assert (= (and d!2260327 (not c!1351711)) b!7264996))

(assert (= (and d!2260327 res!2945436) b!7264997))

(assert (= (and b!7264997 res!2945435) b!7264998))

(declare-fun m!7949684 () Bool)

(assert (=> d!2260327 m!7949684))

(assert (=> d!2260327 m!7949618))

(assert (=> d!2260327 m!7949406))

(declare-fun m!7949686 () Bool)

(assert (=> b!7264996 m!7949686))

(declare-fun m!7949688 () Bool)

(assert (=> b!7264997 m!7949688))

(declare-fun m!7949690 () Bool)

(assert (=> b!7264997 m!7949690))

(assert (=> b!7264997 m!7949414))

(assert (=> b!7264687 d!2260327))

(declare-fun b!7264999 () Bool)

(declare-fun e!4356672 () (Set Context!15400))

(assert (=> b!7264999 (= e!4356672 (as set.empty (Set Context!15400)))))

(declare-fun b!7265000 () Bool)

(declare-fun e!4356674 () (Set Context!15400))

(declare-fun e!4356675 () (Set Context!15400))

(assert (=> b!7265000 (= e!4356674 e!4356675)))

(declare-fun c!1351714 () Bool)

(assert (=> b!7265000 (= c!1351714 (is-Union!18760 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250))))))))))

(declare-fun c!1351716 () Bool)

(declare-fun b!7265001 () Bool)

(assert (=> b!7265001 (= c!1351716 (is-Star!18760 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250))))))))))

(declare-fun e!4356671 () (Set Context!15400))

(assert (=> b!7265001 (= e!4356671 e!4356672)))

(declare-fun bm!662030 () Bool)

(declare-fun call!662040 () List!70835)

(declare-fun call!662039 () List!70835)

(assert (=> bm!662030 (= call!662040 call!662039)))

(declare-fun call!662037 () (Set Context!15400))

(declare-fun bm!662031 () Bool)

(assert (=> bm!662031 (= call!662037 (derivationStepZipperDown!2694 (ite c!1351714 (regTwo!38033 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250))))))) (regOne!38032 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250)))))))) (ite c!1351714 (ite (or c!1351642 c!1351643) lt!2591986 (Context!15401 call!661969)) (Context!15401 call!662039)) (h!77160 s!7854)))))

(declare-fun b!7265003 () Bool)

(declare-fun e!4356670 () Bool)

(assert (=> b!7265003 (= e!4356670 (nullable!7960 (regOne!38032 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250)))))))))))

(declare-fun bm!662032 () Bool)

(declare-fun call!662035 () (Set Context!15400))

(declare-fun call!662038 () (Set Context!15400))

(assert (=> bm!662032 (= call!662035 call!662038)))

(declare-fun bm!662033 () Bool)

(declare-fun call!662036 () (Set Context!15400))

(assert (=> bm!662033 (= call!662036 call!662035)))

(declare-fun b!7265004 () Bool)

(assert (=> b!7265004 (= e!4356672 call!662036)))

(declare-fun b!7265005 () Bool)

(assert (=> b!7265005 (= e!4356675 (set.union call!662038 call!662037))))

(declare-fun c!1351712 () Bool)

(declare-fun bm!662034 () Bool)

(declare-fun c!1351715 () Bool)

(assert (=> bm!662034 (= call!662038 (derivationStepZipperDown!2694 (ite c!1351714 (regOne!38033 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250))))))) (ite c!1351715 (regTwo!38032 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250))))))) (ite c!1351712 (regOne!38032 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250))))))) (reg!19089 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250)))))))))) (ite (or c!1351714 c!1351715) (ite (or c!1351642 c!1351643) lt!2591986 (Context!15401 call!661969)) (Context!15401 call!662040)) (h!77160 s!7854)))))

(declare-fun c!1351713 () Bool)

(declare-fun d!2260329 () Bool)

(assert (=> d!2260329 (= c!1351713 (and (is-ElementMatch!18760 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250))))))) (= (c!1351596 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250))))))) (h!77160 s!7854))))))

(assert (=> d!2260329 (= (derivationStepZipperDown!2694 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250)))))) (ite (or c!1351642 c!1351643) lt!2591986 (Context!15401 call!661969)) (h!77160 s!7854)) e!4356674)))

(declare-fun b!7265002 () Bool)

(assert (=> b!7265002 (= e!4356671 call!662036)))

(declare-fun b!7265006 () Bool)

(declare-fun e!4356673 () (Set Context!15400))

(assert (=> b!7265006 (= e!4356673 e!4356671)))

(assert (=> b!7265006 (= c!1351712 (is-Concat!27605 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250))))))))))

(declare-fun bm!662035 () Bool)

(assert (=> bm!662035 (= call!662039 ($colon$colon!2942 (exprs!8200 (ite (or c!1351642 c!1351643) lt!2591986 (Context!15401 call!661969))) (ite (or c!1351715 c!1351712) (regTwo!38032 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250))))))) (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250)))))))))))

(declare-fun b!7265007 () Bool)

(assert (=> b!7265007 (= e!4356674 (set.insert (ite (or c!1351642 c!1351643) lt!2591986 (Context!15401 call!661969)) (as set.empty (Set Context!15400))))))

(declare-fun b!7265008 () Bool)

(assert (=> b!7265008 (= c!1351715 e!4356670)))

(declare-fun res!2945437 () Bool)

(assert (=> b!7265008 (=> (not res!2945437) (not e!4356670))))

(assert (=> b!7265008 (= res!2945437 (is-Concat!27605 (ite c!1351642 (regOne!38033 (h!77159 (exprs!8200 ct1!250))) (ite c!1351643 (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (ite c!1351640 (regOne!38032 (h!77159 (exprs!8200 ct1!250))) (reg!19089 (h!77159 (exprs!8200 ct1!250))))))))))

(assert (=> b!7265008 (= e!4356675 e!4356673)))

(declare-fun b!7265009 () Bool)

(assert (=> b!7265009 (= e!4356673 (set.union call!662037 call!662035))))

(assert (= (and d!2260329 c!1351713) b!7265007))

(assert (= (and d!2260329 (not c!1351713)) b!7265000))

(assert (= (and b!7265000 c!1351714) b!7265005))

(assert (= (and b!7265000 (not c!1351714)) b!7265008))

(assert (= (and b!7265008 res!2945437) b!7265003))

(assert (= (and b!7265008 c!1351715) b!7265009))

(assert (= (and b!7265008 (not c!1351715)) b!7265006))

(assert (= (and b!7265006 c!1351712) b!7265002))

(assert (= (and b!7265006 (not c!1351712)) b!7265001))

(assert (= (and b!7265001 c!1351716) b!7265004))

(assert (= (and b!7265001 (not c!1351716)) b!7264999))

(assert (= (or b!7265002 b!7265004) bm!662030))

(assert (= (or b!7265002 b!7265004) bm!662033))

(assert (= (or b!7265009 bm!662030) bm!662035))

(assert (= (or b!7265009 bm!662033) bm!662032))

(assert (= (or b!7265005 bm!662032) bm!662034))

(assert (= (or b!7265005 b!7265009) bm!662031))

(declare-fun m!7949692 () Bool)

(assert (=> b!7265007 m!7949692))

(declare-fun m!7949694 () Bool)

(assert (=> bm!662035 m!7949694))

(declare-fun m!7949696 () Bool)

(assert (=> bm!662031 m!7949696))

(declare-fun m!7949698 () Bool)

(assert (=> bm!662034 m!7949698))

(declare-fun m!7949700 () Bool)

(assert (=> b!7265003 m!7949700))

(assert (=> bm!661963 d!2260329))

(declare-fun d!2260331 () Bool)

(assert (=> d!2260331 true))

(declare-fun setRes!53623 () Bool)

(assert (=> d!2260331 setRes!53623))

(declare-fun condSetEmpty!53623 () Bool)

(declare-fun res!2945438 () (Set Context!15400))

(assert (=> d!2260331 (= condSetEmpty!53623 (= res!2945438 (as set.empty (Set Context!15400))))))

(assert (=> d!2260331 (= (choose!56294 lt!2591994 lambda!447245) res!2945438)))

(declare-fun setIsEmpty!53623 () Bool)

(assert (=> setIsEmpty!53623 setRes!53623))

(declare-fun setElem!53623 () Context!15400)

(declare-fun tp!2040275 () Bool)

(declare-fun e!4356676 () Bool)

(declare-fun setNonEmpty!53623 () Bool)

(assert (=> setNonEmpty!53623 (= setRes!53623 (and tp!2040275 (inv!89911 setElem!53623) e!4356676))))

(declare-fun setRest!53623 () (Set Context!15400))

(assert (=> setNonEmpty!53623 (= res!2945438 (set.union (set.insert setElem!53623 (as set.empty (Set Context!15400))) setRest!53623))))

(declare-fun b!7265010 () Bool)

(declare-fun tp!2040276 () Bool)

(assert (=> b!7265010 (= e!4356676 tp!2040276)))

(assert (= (and d!2260331 condSetEmpty!53623) setIsEmpty!53623))

(assert (= (and d!2260331 (not condSetEmpty!53623)) setNonEmpty!53623))

(assert (= setNonEmpty!53623 b!7265010))

(declare-fun m!7949702 () Bool)

(assert (=> setNonEmpty!53623 m!7949702))

(assert (=> d!2260181 d!2260331))

(assert (=> bs!1910085 d!2260195))

(declare-fun d!2260333 () Bool)

(declare-fun lt!2592057 () Int)

(assert (=> d!2260333 (>= lt!2592057 0)))

(declare-fun e!4356679 () Int)

(assert (=> d!2260333 (= lt!2592057 e!4356679)))

(declare-fun c!1351719 () Bool)

(assert (=> d!2260333 (= c!1351719 (is-Nil!70711 lt!2592039))))

(assert (=> d!2260333 (= (size!41792 lt!2592039) lt!2592057)))

(declare-fun b!7265015 () Bool)

(assert (=> b!7265015 (= e!4356679 0)))

(declare-fun b!7265016 () Bool)

(assert (=> b!7265016 (= e!4356679 (+ 1 (size!41792 (t!384901 lt!2592039))))))

(assert (= (and d!2260333 c!1351719) b!7265015))

(assert (= (and d!2260333 (not c!1351719)) b!7265016))

(declare-fun m!7949704 () Bool)

(assert (=> b!7265016 m!7949704))

(assert (=> b!7264688 d!2260333))

(declare-fun d!2260335 () Bool)

(declare-fun lt!2592058 () Int)

(assert (=> d!2260335 (>= lt!2592058 0)))

(declare-fun e!4356680 () Int)

(assert (=> d!2260335 (= lt!2592058 e!4356680)))

(declare-fun c!1351720 () Bool)

(assert (=> d!2260335 (= c!1351720 (is-Nil!70711 (exprs!8200 ct1!250)))))

(assert (=> d!2260335 (= (size!41792 (exprs!8200 ct1!250)) lt!2592058)))

(declare-fun b!7265017 () Bool)

(assert (=> b!7265017 (= e!4356680 0)))

(declare-fun b!7265018 () Bool)

(assert (=> b!7265018 (= e!4356680 (+ 1 (size!41792 (t!384901 (exprs!8200 ct1!250)))))))

(assert (= (and d!2260335 c!1351720) b!7265017))

(assert (= (and d!2260335 (not c!1351720)) b!7265018))

(assert (=> b!7265018 m!7949690))

(assert (=> b!7264688 d!2260335))

(declare-fun d!2260337 () Bool)

(declare-fun lt!2592059 () Int)

(assert (=> d!2260337 (>= lt!2592059 0)))

(declare-fun e!4356681 () Int)

(assert (=> d!2260337 (= lt!2592059 e!4356681)))

(declare-fun c!1351721 () Bool)

(assert (=> d!2260337 (= c!1351721 (is-Nil!70711 (exprs!8200 ct2!346)))))

(assert (=> d!2260337 (= (size!41792 (exprs!8200 ct2!346)) lt!2592059)))

(declare-fun b!7265019 () Bool)

(assert (=> b!7265019 (= e!4356681 0)))

(declare-fun b!7265020 () Bool)

(assert (=> b!7265020 (= e!4356681 (+ 1 (size!41792 (t!384901 (exprs!8200 ct2!346)))))))

(assert (= (and d!2260337 c!1351721) b!7265019))

(assert (= (and d!2260337 (not c!1351721)) b!7265020))

(declare-fun m!7949706 () Bool)

(assert (=> b!7265020 m!7949706))

(assert (=> b!7264688 d!2260337))

(declare-fun d!2260339 () Bool)

(declare-fun res!2945439 () Bool)

(declare-fun e!4356682 () Bool)

(assert (=> d!2260339 (=> res!2945439 e!4356682)))

(assert (=> d!2260339 (= res!2945439 (is-Nil!70711 (t!384901 lt!2591991)))))

(assert (=> d!2260339 (= (forall!17593 (t!384901 lt!2591991) lambda!447244) e!4356682)))

(declare-fun b!7265021 () Bool)

(declare-fun e!4356683 () Bool)

(assert (=> b!7265021 (= e!4356682 e!4356683)))

(declare-fun res!2945440 () Bool)

(assert (=> b!7265021 (=> (not res!2945440) (not e!4356683))))

(assert (=> b!7265021 (= res!2945440 (dynLambda!28873 lambda!447244 (h!77159 (t!384901 lt!2591991))))))

(declare-fun b!7265022 () Bool)

(assert (=> b!7265022 (= e!4356683 (forall!17593 (t!384901 (t!384901 lt!2591991)) lambda!447244))))

(assert (= (and d!2260339 (not res!2945439)) b!7265021))

(assert (= (and b!7265021 res!2945440) b!7265022))

(declare-fun b_lambda!279651 () Bool)

(assert (=> (not b_lambda!279651) (not b!7265021)))

(declare-fun m!7949708 () Bool)

(assert (=> b!7265021 m!7949708))

(declare-fun m!7949710 () Bool)

(assert (=> b!7265022 m!7949710))

(assert (=> b!7264717 d!2260339))

(declare-fun b!7265023 () Bool)

(declare-fun e!4356686 () (Set Context!15400))

(declare-fun call!662041 () (Set Context!15400))

(assert (=> b!7265023 (= e!4356686 call!662041)))

(declare-fun b!7265024 () Bool)

(declare-fun e!4356684 () Bool)

(assert (=> b!7265024 (= e!4356684 (nullable!7960 (h!77159 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 ct1!250)))))))))

(declare-fun b!7265025 () Bool)

(assert (=> b!7265025 (= e!4356686 (as set.empty (Set Context!15400)))))

(declare-fun b!7265026 () Bool)

(declare-fun e!4356685 () (Set Context!15400))

(assert (=> b!7265026 (= e!4356685 e!4356686)))

(declare-fun c!1351722 () Bool)

(assert (=> b!7265026 (= c!1351722 (is-Cons!70711 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 ct1!250))))))))

(declare-fun b!7265027 () Bool)

(assert (=> b!7265027 (= e!4356685 (set.union call!662041 (derivationStepZipperUp!2530 (Context!15401 (t!384901 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 ct1!250)))))) (h!77160 s!7854))))))

(declare-fun bm!662036 () Bool)

(assert (=> bm!662036 (= call!662041 (derivationStepZipperDown!2694 (h!77159 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 ct1!250))))) (Context!15401 (t!384901 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 ct1!250)))))) (h!77160 s!7854)))))

(declare-fun d!2260341 () Bool)

(declare-fun c!1351723 () Bool)

(assert (=> d!2260341 (= c!1351723 e!4356684)))

(declare-fun res!2945441 () Bool)

(assert (=> d!2260341 (=> (not res!2945441) (not e!4356684))))

(assert (=> d!2260341 (= res!2945441 (is-Cons!70711 (exprs!8200 (Context!15401 (t!384901 (exprs!8200 ct1!250))))))))

(assert (=> d!2260341 (= (derivationStepZipperUp!2530 (Context!15401 (t!384901 (exprs!8200 ct1!250))) (h!77160 s!7854)) e!4356685)))

(assert (= (and d!2260341 res!2945441) b!7265024))

(assert (= (and d!2260341 c!1351723) b!7265027))

(assert (= (and d!2260341 (not c!1351723)) b!7265026))

(assert (= (and b!7265026 c!1351722) b!7265023))

(assert (= (and b!7265026 (not c!1351722)) b!7265025))

(assert (= (or b!7265027 b!7265023) bm!662036))

(declare-fun m!7949712 () Bool)

(assert (=> b!7265024 m!7949712))

(declare-fun m!7949714 () Bool)

(assert (=> b!7265027 m!7949714))

(declare-fun m!7949716 () Bool)

(assert (=> bm!662036 m!7949716))

(assert (=> b!7264711 d!2260341))

(declare-fun d!2260343 () Bool)

(assert (=> d!2260343 (= ($colon$colon!2942 (exprs!8200 lt!2591986) (ite (or c!1351643 c!1351640) (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (h!77159 (exprs!8200 ct1!250)))) (Cons!70711 (ite (or c!1351643 c!1351640) (regTwo!38032 (h!77159 (exprs!8200 ct1!250))) (h!77159 (exprs!8200 ct1!250))) (exprs!8200 lt!2591986)))))

(assert (=> bm!661964 d!2260343))

(declare-fun e!4356689 () Bool)

(assert (=> b!7264800 (= tp!2040256 e!4356689)))

(declare-fun b!7265038 () Bool)

(assert (=> b!7265038 (= e!4356689 tp_is_empty!46985)))

(declare-fun b!7265041 () Bool)

(declare-fun tp!2040289 () Bool)

(declare-fun tp!2040290 () Bool)

(assert (=> b!7265041 (= e!4356689 (and tp!2040289 tp!2040290))))

(declare-fun b!7265040 () Bool)

(declare-fun tp!2040291 () Bool)

(assert (=> b!7265040 (= e!4356689 tp!2040291)))

(declare-fun b!7265039 () Bool)

(declare-fun tp!2040288 () Bool)

(declare-fun tp!2040287 () Bool)

(assert (=> b!7265039 (= e!4356689 (and tp!2040288 tp!2040287))))

(assert (= (and b!7264800 (is-ElementMatch!18760 (h!77159 (exprs!8200 ct1!250)))) b!7265038))

(assert (= (and b!7264800 (is-Concat!27605 (h!77159 (exprs!8200 ct1!250)))) b!7265039))

(assert (= (and b!7264800 (is-Star!18760 (h!77159 (exprs!8200 ct1!250)))) b!7265040))

(assert (= (and b!7264800 (is-Union!18760 (h!77159 (exprs!8200 ct1!250)))) b!7265041))

(declare-fun b!7265042 () Bool)

(declare-fun e!4356690 () Bool)

(declare-fun tp!2040292 () Bool)

(declare-fun tp!2040293 () Bool)

(assert (=> b!7265042 (= e!4356690 (and tp!2040292 tp!2040293))))

(assert (=> b!7264800 (= tp!2040257 e!4356690)))

(assert (= (and b!7264800 (is-Cons!70711 (t!384901 (exprs!8200 ct1!250)))) b!7265042))

(declare-fun b!7265043 () Bool)

(declare-fun e!4356691 () Bool)

(declare-fun tp!2040294 () Bool)

(assert (=> b!7265043 (= e!4356691 (and tp_is_empty!46985 tp!2040294))))

(assert (=> b!7264799 (= tp!2040255 e!4356691)))

(assert (= (and b!7264799 (is-Cons!70712 (t!384902 (t!384902 s!7854)))) b!7265043))

(declare-fun e!4356692 () Bool)

(assert (=> b!7264794 (= tp!2040251 e!4356692)))

(declare-fun b!7265044 () Bool)

(assert (=> b!7265044 (= e!4356692 tp_is_empty!46985)))

(declare-fun b!7265047 () Bool)

(declare-fun tp!2040297 () Bool)

(declare-fun tp!2040298 () Bool)

(assert (=> b!7265047 (= e!4356692 (and tp!2040297 tp!2040298))))

(declare-fun b!7265046 () Bool)

(declare-fun tp!2040299 () Bool)

(assert (=> b!7265046 (= e!4356692 tp!2040299)))

(declare-fun b!7265045 () Bool)

(declare-fun tp!2040296 () Bool)

(declare-fun tp!2040295 () Bool)

(assert (=> b!7265045 (= e!4356692 (and tp!2040296 tp!2040295))))

(assert (= (and b!7264794 (is-ElementMatch!18760 (h!77159 (exprs!8200 ct2!346)))) b!7265044))

(assert (= (and b!7264794 (is-Concat!27605 (h!77159 (exprs!8200 ct2!346)))) b!7265045))

(assert (= (and b!7264794 (is-Star!18760 (h!77159 (exprs!8200 ct2!346)))) b!7265046))

(assert (= (and b!7264794 (is-Union!18760 (h!77159 (exprs!8200 ct2!346)))) b!7265047))

(declare-fun b!7265048 () Bool)

(declare-fun e!4356693 () Bool)

(declare-fun tp!2040300 () Bool)

(declare-fun tp!2040301 () Bool)

(assert (=> b!7265048 (= e!4356693 (and tp!2040300 tp!2040301))))

(assert (=> b!7264794 (= tp!2040252 e!4356693)))

(assert (= (and b!7264794 (is-Cons!70711 (t!384901 (exprs!8200 ct2!346)))) b!7265048))

(declare-fun b_lambda!279653 () Bool)

(assert (= b_lambda!279647 (or d!2260213 b_lambda!279653)))

(declare-fun bs!1910116 () Bool)

(declare-fun d!2260345 () Bool)

(assert (= bs!1910116 (and d!2260345 d!2260213)))

(assert (=> bs!1910116 (= (dynLambda!28873 lambda!447273 (h!77159 (exprs!8200 ct1!250))) (validRegex!9565 (h!77159 (exprs!8200 ct1!250))))))

(declare-fun m!7949718 () Bool)

(assert (=> bs!1910116 m!7949718))

(assert (=> b!7264980 d!2260345))

(declare-fun b_lambda!279655 () Bool)

(assert (= b_lambda!279641 (or b!7264638 b_lambda!279655)))

(declare-fun bs!1910117 () Bool)

(declare-fun d!2260347 () Bool)

(assert (= bs!1910117 (and d!2260347 b!7264638)))

(assert (=> bs!1910117 (= (dynLambda!28873 lambda!447244 (h!77159 (++!16660 (exprs!8200 ct1!250) (exprs!8200 ct2!346)))) (validRegex!9565 (h!77159 (++!16660 (exprs!8200 ct1!250) (exprs!8200 ct2!346)))))))

(declare-fun m!7949720 () Bool)

(assert (=> bs!1910117 m!7949720))

(assert (=> b!7264948 d!2260347))

(declare-fun b_lambda!279657 () Bool)

(assert (= b_lambda!279637 (or b!7264638 b_lambda!279657)))

(assert (=> d!2260279 d!2260225))

(declare-fun b_lambda!279659 () Bool)

(assert (= b_lambda!279651 (or b!7264638 b_lambda!279659)))

(declare-fun bs!1910118 () Bool)

(declare-fun d!2260349 () Bool)

(assert (= bs!1910118 (and d!2260349 b!7264638)))

(assert (=> bs!1910118 (= (dynLambda!28873 lambda!447244 (h!77159 (t!384901 lt!2591991))) (validRegex!9565 (h!77159 (t!384901 lt!2591991))))))

(declare-fun m!7949722 () Bool)

(assert (=> bs!1910118 m!7949722))

(assert (=> b!7265021 d!2260349))

(declare-fun b_lambda!279661 () Bool)

(assert (= b_lambda!279639 (or d!2260205 b_lambda!279661)))

(declare-fun bs!1910119 () Bool)

(declare-fun d!2260351 () Bool)

(assert (= bs!1910119 (and d!2260351 d!2260205)))

(assert (=> bs!1910119 (= (dynLambda!28873 lambda!447267 (h!77159 (exprs!8200 ct1!250))) (nullable!7960 (h!77159 (exprs!8200 ct1!250))))))

(assert (=> bs!1910119 m!7949330))

(assert (=> b!7264917 d!2260351))

(declare-fun b_lambda!279663 () Bool)

(assert (= b_lambda!279649 (or d!2260211 b_lambda!279663)))

(declare-fun bs!1910120 () Bool)

(declare-fun d!2260353 () Bool)

(assert (= bs!1910120 (and d!2260353 d!2260211)))

(assert (=> bs!1910120 (= (dynLambda!28873 lambda!447272 (h!77159 (exprs!8200 ct2!346))) (validRegex!9565 (h!77159 (exprs!8200 ct2!346))))))

(declare-fun m!7949724 () Bool)

(assert (=> bs!1910120 m!7949724))

(assert (=> b!7264982 d!2260353))

(declare-fun b_lambda!279665 () Bool)

(assert (= b_lambda!279643 (or b!7264638 b_lambda!279665)))

(declare-fun bs!1910121 () Bool)

(declare-fun d!2260355 () Bool)

(assert (= bs!1910121 (and d!2260355 b!7264638)))

(assert (=> bs!1910121 (= (dynLambda!28873 lambda!447244 (h!77159 (exprs!8200 ct1!250))) (validRegex!9565 (h!77159 (exprs!8200 ct1!250))))))

(assert (=> bs!1910121 m!7949718))

(assert (=> b!7264950 d!2260355))

(declare-fun b_lambda!279667 () Bool)

(assert (= b_lambda!279645 (or b!7264638 b_lambda!279667)))

(assert (=> d!2260317 d!2260227))

(push 1)

(assert (not bm!662031))

(assert (not b!7264979))

(assert (not b!7264910))

(assert (not b!7264996))

(assert (not b!7265043))

(assert (not bs!1910119))

(assert (not b!7265010))

(assert (not b!7264935))

(assert (not b!7265040))

(assert (not b!7265027))

(assert (not b_lambda!279625))

(assert (not b!7264952))

(assert (not bm!662029))

(assert (not bm!662025))

(assert (not bm!661990))

(assert (not bm!662002))

(assert (not d!2260279))

(assert tp_is_empty!46985)

(assert (not b!7264923))

(assert (not b_lambda!279663))

(assert (not bs!1910120))

(assert (not b_lambda!279657))

(assert (not bm!662034))

(assert (not b!7265022))

(assert (not d!2260305))

(assert (not bm!661993))

(assert (not b!7264983))

(assert (not bm!662015))

(assert (not d!2260327))

(assert (not bm!662009))

(assert (not bm!661994))

(assert (not bm!662005))

(assert (not bm!662028))

(assert (not bm!662016))

(assert (not bs!1910116))

(assert (not setNonEmpty!53623))

(assert (not bm!662022))

(assert (not b!7265048))

(assert (not b!7265047))

(assert (not d!2260269))

(assert (not bm!662021))

(assert (not b!7264918))

(assert (not b!7264949))

(assert (not d!2260295))

(assert (not b!7264872))

(assert (not bs!1910121))

(assert (not bs!1910118))

(assert (not setNonEmpty!53622))

(assert (not b!7265042))

(assert (not b_lambda!279665))

(assert (not b!7264937))

(assert (not b_lambda!279653))

(assert (not b!7265003))

(assert (not bm!662011))

(assert (not bm!662014))

(assert (not b!7264988))

(assert (not b!7264944))

(assert (not b!7265016))

(assert (not d!2260271))

(assert (not b_lambda!279623))

(assert (not d!2260309))

(assert (not b!7264947))

(assert (not d!2260307))

(assert (not b_lambda!279667))

(assert (not bm!662008))

(assert (not b!7265039))

(assert (not d!2260301))

(assert (not b!7264942))

(assert (not b!7265024))

(assert (not b!7264939))

(assert (not b_lambda!279655))

(assert (not b!7264953))

(assert (not b!7265018))

(assert (not b!7264905))

(assert (not b!7264997))

(assert (not d!2260267))

(assert (not bm!662003))

(assert (not b!7265020))

(assert (not b_lambda!279661))

(assert (not b!7264976))

(assert (not b_lambda!279659))

(assert (not b!7265041))

(assert (not bs!1910117))

(assert (not bm!662036))

(assert (not bm!662023))

(assert (not b!7264951))

(assert (not b!7264981))

(assert (not b!7265045))

(assert (not b_lambda!279621))

(assert (not b!7265046))

(assert (not d!2260317))

(assert (not bm!662035))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

