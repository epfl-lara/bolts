; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710296 () Bool)

(assert start!710296)

(declare-fun b!7274469 () Bool)

(assert (=> b!7274469 true))

(declare-fun b!7274462 () Bool)

(declare-fun e!4362263 () Bool)

(declare-fun tp!2041831 () Bool)

(assert (=> b!7274462 (= e!4362263 tp!2041831)))

(declare-fun b!7274463 () Bool)

(declare-fun res!2948811 () Bool)

(declare-fun e!4362262 () Bool)

(assert (=> b!7274463 (=> res!2948811 e!4362262)))

(declare-datatypes ((C!37942 0))(
  ( (C!37943 (val!28919 Int)) )
))
(declare-datatypes ((Regex!18834 0))(
  ( (ElementMatch!18834 (c!1354436 C!37942)) (Concat!27679 (regOne!38180 Regex!18834) (regTwo!38180 Regex!18834)) (EmptyExpr!18834) (Star!18834 (reg!19163 Regex!18834)) (EmptyLang!18834) (Union!18834 (regOne!38181 Regex!18834) (regTwo!38181 Regex!18834)) )
))
(declare-datatypes ((List!70983 0))(
  ( (Nil!70859) (Cons!70859 (h!77307 Regex!18834) (t!385055 List!70983)) )
))
(declare-datatypes ((Context!15548 0))(
  ( (Context!15549 (exprs!8274 List!70983)) )
))
(declare-fun ct1!250 () Context!15548)

(assert (=> b!7274463 (= res!2948811 (not (is-Cons!70859 (exprs!8274 ct1!250))))))

(declare-fun b!7274464 () Bool)

(declare-fun nullable!8017 (Regex!18834) Bool)

(assert (=> b!7274464 (= e!4362262 (nullable!8017 (h!77307 (exprs!8274 ct1!250))))))

(declare-fun lt!2596522 () (Set Context!15548))

(declare-datatypes ((List!70984 0))(
  ( (Nil!70860) (Cons!70860 (h!77308 C!37942) (t!385056 List!70984)) )
))
(declare-fun s!7854 () List!70984)

(declare-fun derivationStepZipperUp!2590 (Context!15548 C!37942) (Set Context!15548))

(assert (=> b!7274464 (= lt!2596522 (derivationStepZipperUp!2590 ct1!250 (h!77308 s!7854)))))

(declare-fun res!2948808 () Bool)

(declare-fun e!4362266 () Bool)

(assert (=> start!710296 (=> (not res!2948808) (not e!4362266))))

(declare-fun ct2!346 () Context!15548)

(declare-fun matchZipper!3738 ((Set Context!15548) List!70984) Bool)

(assert (=> start!710296 (= res!2948808 (matchZipper!3738 (set.insert ct2!346 (as set.empty (Set Context!15548))) s!7854))))

(assert (=> start!710296 e!4362266))

(declare-fun e!4362265 () Bool)

(declare-fun inv!90096 (Context!15548) Bool)

(assert (=> start!710296 (and (inv!90096 ct2!346) e!4362265)))

(declare-fun e!4362264 () Bool)

(assert (=> start!710296 e!4362264))

(assert (=> start!710296 (and (inv!90096 ct1!250) e!4362263)))

(declare-fun b!7274465 () Bool)

(declare-fun res!2948809 () Bool)

(assert (=> b!7274465 (=> (not res!2948809) (not e!4362266))))

(declare-fun nullableContext!324 (Context!15548) Bool)

(assert (=> b!7274465 (= res!2948809 (nullableContext!324 ct1!250))))

(declare-fun b!7274466 () Bool)

(declare-fun res!2948810 () Bool)

(assert (=> b!7274466 (=> res!2948810 e!4362262)))

(declare-fun isEmpty!40752 (List!70983) Bool)

(assert (=> b!7274466 (= res!2948810 (isEmpty!40752 (exprs!8274 ct1!250)))))

(declare-fun b!7274467 () Bool)

(declare-fun res!2948812 () Bool)

(assert (=> b!7274467 (=> (not res!2948812) (not e!4362266))))

(assert (=> b!7274467 (= res!2948812 (is-Cons!70860 s!7854))))

(declare-fun b!7274468 () Bool)

(declare-fun tp_is_empty!47133 () Bool)

(declare-fun tp!2041830 () Bool)

(assert (=> b!7274468 (= e!4362264 (and tp_is_empty!47133 tp!2041830))))

(assert (=> b!7274469 (= e!4362266 (not e!4362262))))

(declare-fun res!2948813 () Bool)

(assert (=> b!7274469 (=> res!2948813 e!4362262)))

(declare-fun lt!2596519 () (Set Context!15548))

(declare-fun lt!2596520 () (Set Context!15548))

(declare-fun derivationStepZipper!3570 ((Set Context!15548) C!37942) (Set Context!15548))

(assert (=> b!7274469 (= res!2948813 (not (= lt!2596519 (derivationStepZipper!3570 lt!2596520 (h!77308 s!7854)))))))

(declare-datatypes ((Unit!164274 0))(
  ( (Unit!164275) )
))
(declare-fun lt!2596518 () Unit!164274)

(declare-fun lambda!449574 () Int)

(declare-fun lemmaConcatPreservesForall!1585 (List!70983 List!70983 Int) Unit!164274)

(assert (=> b!7274469 (= lt!2596518 (lemmaConcatPreservesForall!1585 (exprs!8274 ct1!250) (exprs!8274 ct2!346) lambda!449574))))

(declare-fun lambda!449575 () Int)

(declare-fun lt!2596525 () Context!15548)

(declare-fun flatMap!2933 ((Set Context!15548) Int) (Set Context!15548))

(assert (=> b!7274469 (= (flatMap!2933 lt!2596520 lambda!449575) (derivationStepZipperUp!2590 lt!2596525 (h!77308 s!7854)))))

(declare-fun lt!2596521 () Unit!164274)

(declare-fun lemmaFlatMapOnSingletonSet!2333 ((Set Context!15548) Context!15548 Int) Unit!164274)

(assert (=> b!7274469 (= lt!2596521 (lemmaFlatMapOnSingletonSet!2333 lt!2596520 lt!2596525 lambda!449575))))

(assert (=> b!7274469 (= lt!2596520 (set.insert lt!2596525 (as set.empty (Set Context!15548))))))

(declare-fun lt!2596523 () Unit!164274)

(assert (=> b!7274469 (= lt!2596523 (lemmaConcatPreservesForall!1585 (exprs!8274 ct1!250) (exprs!8274 ct2!346) lambda!449574))))

(declare-fun lt!2596524 () Unit!164274)

(assert (=> b!7274469 (= lt!2596524 (lemmaConcatPreservesForall!1585 (exprs!8274 ct1!250) (exprs!8274 ct2!346) lambda!449574))))

(declare-fun lt!2596527 () (Set Context!15548))

(assert (=> b!7274469 (= (flatMap!2933 lt!2596527 lambda!449575) (derivationStepZipperUp!2590 ct1!250 (h!77308 s!7854)))))

(declare-fun lt!2596528 () Unit!164274)

(assert (=> b!7274469 (= lt!2596528 (lemmaFlatMapOnSingletonSet!2333 lt!2596527 ct1!250 lambda!449575))))

(assert (=> b!7274469 (= lt!2596527 (set.insert ct1!250 (as set.empty (Set Context!15548))))))

(assert (=> b!7274469 (= lt!2596519 (derivationStepZipperUp!2590 lt!2596525 (h!77308 s!7854)))))

(declare-fun ++!16728 (List!70983 List!70983) List!70983)

(assert (=> b!7274469 (= lt!2596525 (Context!15549 (++!16728 (exprs!8274 ct1!250) (exprs!8274 ct2!346))))))

(declare-fun lt!2596526 () Unit!164274)

(assert (=> b!7274469 (= lt!2596526 (lemmaConcatPreservesForall!1585 (exprs!8274 ct1!250) (exprs!8274 ct2!346) lambda!449574))))

(declare-fun b!7274470 () Bool)

(declare-fun tp!2041829 () Bool)

(assert (=> b!7274470 (= e!4362265 tp!2041829)))

(assert (= (and start!710296 res!2948808) b!7274465))

(assert (= (and b!7274465 res!2948809) b!7274467))

(assert (= (and b!7274467 res!2948812) b!7274469))

(assert (= (and b!7274469 (not res!2948813)) b!7274463))

(assert (= (and b!7274463 (not res!2948811)) b!7274466))

(assert (= (and b!7274466 (not res!2948810)) b!7274464))

(assert (= start!710296 b!7274470))

(assert (= (and start!710296 (is-Cons!70860 s!7854)) b!7274468))

(assert (= start!710296 b!7274462))

(declare-fun m!7961194 () Bool)

(assert (=> b!7274464 m!7961194))

(declare-fun m!7961196 () Bool)

(assert (=> b!7274464 m!7961196))

(declare-fun m!7961198 () Bool)

(assert (=> b!7274465 m!7961198))

(declare-fun m!7961200 () Bool)

(assert (=> start!710296 m!7961200))

(assert (=> start!710296 m!7961200))

(declare-fun m!7961202 () Bool)

(assert (=> start!710296 m!7961202))

(declare-fun m!7961204 () Bool)

(assert (=> start!710296 m!7961204))

(declare-fun m!7961206 () Bool)

(assert (=> start!710296 m!7961206))

(declare-fun m!7961208 () Bool)

(assert (=> b!7274466 m!7961208))

(declare-fun m!7961210 () Bool)

(assert (=> b!7274469 m!7961210))

(declare-fun m!7961212 () Bool)

(assert (=> b!7274469 m!7961212))

(assert (=> b!7274469 m!7961196))

(declare-fun m!7961214 () Bool)

(assert (=> b!7274469 m!7961214))

(declare-fun m!7961216 () Bool)

(assert (=> b!7274469 m!7961216))

(declare-fun m!7961218 () Bool)

(assert (=> b!7274469 m!7961218))

(assert (=> b!7274469 m!7961216))

(assert (=> b!7274469 m!7961216))

(declare-fun m!7961220 () Bool)

(assert (=> b!7274469 m!7961220))

(declare-fun m!7961222 () Bool)

(assert (=> b!7274469 m!7961222))

(assert (=> b!7274469 m!7961216))

(declare-fun m!7961224 () Bool)

(assert (=> b!7274469 m!7961224))

(declare-fun m!7961226 () Bool)

(assert (=> b!7274469 m!7961226))

(declare-fun m!7961228 () Bool)

(assert (=> b!7274469 m!7961228))

(push 1)

(assert (not b!7274469))

(assert (not b!7274462))

(assert (not b!7274466))

(assert (not b!7274468))

(assert (not start!710296))

(assert (not b!7274470))

(assert tp_is_empty!47133)

(assert (not b!7274465))

(assert (not b!7274464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2264148 () Bool)

(declare-fun c!1354444 () Bool)

(declare-fun isEmpty!40754 (List!70984) Bool)

(assert (=> d!2264148 (= c!1354444 (isEmpty!40754 s!7854))))

(declare-fun e!4362284 () Bool)

(assert (=> d!2264148 (= (matchZipper!3738 (set.insert ct2!346 (as set.empty (Set Context!15548))) s!7854) e!4362284)))

(declare-fun b!7274506 () Bool)

(declare-fun nullableZipper!3034 ((Set Context!15548)) Bool)

(assert (=> b!7274506 (= e!4362284 (nullableZipper!3034 (set.insert ct2!346 (as set.empty (Set Context!15548)))))))

(declare-fun b!7274507 () Bool)

(declare-fun head!15032 (List!70984) C!37942)

(declare-fun tail!14539 (List!70984) List!70984)

(assert (=> b!7274507 (= e!4362284 (matchZipper!3738 (derivationStepZipper!3570 (set.insert ct2!346 (as set.empty (Set Context!15548))) (head!15032 s!7854)) (tail!14539 s!7854)))))

(assert (= (and d!2264148 c!1354444) b!7274506))

(assert (= (and d!2264148 (not c!1354444)) b!7274507))

(declare-fun m!7961266 () Bool)

(assert (=> d!2264148 m!7961266))

(assert (=> b!7274506 m!7961200))

(declare-fun m!7961268 () Bool)

(assert (=> b!7274506 m!7961268))

(declare-fun m!7961270 () Bool)

(assert (=> b!7274507 m!7961270))

(assert (=> b!7274507 m!7961200))

(assert (=> b!7274507 m!7961270))

(declare-fun m!7961272 () Bool)

(assert (=> b!7274507 m!7961272))

(declare-fun m!7961274 () Bool)

(assert (=> b!7274507 m!7961274))

(assert (=> b!7274507 m!7961272))

(assert (=> b!7274507 m!7961274))

(declare-fun m!7961276 () Bool)

(assert (=> b!7274507 m!7961276))

(assert (=> start!710296 d!2264148))

(declare-fun bs!1911852 () Bool)

(declare-fun d!2264150 () Bool)

(assert (= bs!1911852 (and d!2264150 b!7274469)))

(declare-fun lambda!449592 () Int)

(assert (=> bs!1911852 (= lambda!449592 lambda!449574)))

(declare-fun forall!17659 (List!70983 Int) Bool)

(assert (=> d!2264150 (= (inv!90096 ct2!346) (forall!17659 (exprs!8274 ct2!346) lambda!449592))))

(declare-fun bs!1911853 () Bool)

(assert (= bs!1911853 d!2264150))

(declare-fun m!7961278 () Bool)

(assert (=> bs!1911853 m!7961278))

(assert (=> start!710296 d!2264150))

(declare-fun bs!1911854 () Bool)

(declare-fun d!2264154 () Bool)

(assert (= bs!1911854 (and d!2264154 b!7274469)))

(declare-fun lambda!449593 () Int)

(assert (=> bs!1911854 (= lambda!449593 lambda!449574)))

(declare-fun bs!1911855 () Bool)

(assert (= bs!1911855 (and d!2264154 d!2264150)))

(assert (=> bs!1911855 (= lambda!449593 lambda!449592)))

(assert (=> d!2264154 (= (inv!90096 ct1!250) (forall!17659 (exprs!8274 ct1!250) lambda!449593))))

(declare-fun bs!1911856 () Bool)

(assert (= bs!1911856 d!2264154))

(declare-fun m!7961282 () Bool)

(assert (=> bs!1911856 m!7961282))

(assert (=> start!710296 d!2264154))

(declare-fun d!2264156 () Bool)

(assert (=> d!2264156 (= (isEmpty!40752 (exprs!8274 ct1!250)) (is-Nil!70859 (exprs!8274 ct1!250)))))

(assert (=> b!7274466 d!2264156))

(declare-fun d!2264160 () Bool)

(declare-fun nullableFct!3163 (Regex!18834) Bool)

(assert (=> d!2264160 (= (nullable!8017 (h!77307 (exprs!8274 ct1!250))) (nullableFct!3163 (h!77307 (exprs!8274 ct1!250))))))

(declare-fun bs!1911858 () Bool)

(assert (= bs!1911858 d!2264160))

(declare-fun m!7961284 () Bool)

(assert (=> bs!1911858 m!7961284))

(assert (=> b!7274464 d!2264160))

(declare-fun bm!663585 () Bool)

(declare-fun call!663590 () (Set Context!15548))

(declare-fun derivationStepZipperDown!2748 (Regex!18834 Context!15548 C!37942) (Set Context!15548))

(assert (=> bm!663585 (= call!663590 (derivationStepZipperDown!2748 (h!77307 (exprs!8274 ct1!250)) (Context!15549 (t!385055 (exprs!8274 ct1!250))) (h!77308 s!7854)))))

(declare-fun b!7274525 () Bool)

(declare-fun e!4362296 () Bool)

(assert (=> b!7274525 (= e!4362296 (nullable!8017 (h!77307 (exprs!8274 ct1!250))))))

(declare-fun b!7274526 () Bool)

(declare-fun e!4362295 () (Set Context!15548))

(assert (=> b!7274526 (= e!4362295 call!663590)))

(declare-fun b!7274527 () Bool)

(assert (=> b!7274527 (= e!4362295 (as set.empty (Set Context!15548)))))

(declare-fun b!7274528 () Bool)

(declare-fun e!4362297 () (Set Context!15548))

(assert (=> b!7274528 (= e!4362297 e!4362295)))

(declare-fun c!1354452 () Bool)

(assert (=> b!7274528 (= c!1354452 (is-Cons!70859 (exprs!8274 ct1!250)))))

(declare-fun b!7274524 () Bool)

(assert (=> b!7274524 (= e!4362297 (set.union call!663590 (derivationStepZipperUp!2590 (Context!15549 (t!385055 (exprs!8274 ct1!250))) (h!77308 s!7854))))))

(declare-fun d!2264162 () Bool)

(declare-fun c!1354451 () Bool)

(assert (=> d!2264162 (= c!1354451 e!4362296)))

(declare-fun res!2948836 () Bool)

(assert (=> d!2264162 (=> (not res!2948836) (not e!4362296))))

(assert (=> d!2264162 (= res!2948836 (is-Cons!70859 (exprs!8274 ct1!250)))))

(assert (=> d!2264162 (= (derivationStepZipperUp!2590 ct1!250 (h!77308 s!7854)) e!4362297)))

(assert (= (and d!2264162 res!2948836) b!7274525))

(assert (= (and d!2264162 c!1354451) b!7274524))

(assert (= (and d!2264162 (not c!1354451)) b!7274528))

(assert (= (and b!7274528 c!1354452) b!7274526))

(assert (= (and b!7274528 (not c!1354452)) b!7274527))

(assert (= (or b!7274524 b!7274526) bm!663585))

(declare-fun m!7961286 () Bool)

(assert (=> bm!663585 m!7961286))

(assert (=> b!7274525 m!7961194))

(declare-fun m!7961288 () Bool)

(assert (=> b!7274524 m!7961288))

(assert (=> b!7274464 d!2264162))

(declare-fun bs!1911859 () Bool)

(declare-fun d!2264164 () Bool)

(assert (= bs!1911859 (and d!2264164 b!7274469)))

(declare-fun lambda!449596 () Int)

(assert (=> bs!1911859 (not (= lambda!449596 lambda!449574))))

(declare-fun bs!1911860 () Bool)

(assert (= bs!1911860 (and d!2264164 d!2264150)))

(assert (=> bs!1911860 (not (= lambda!449596 lambda!449592))))

(declare-fun bs!1911861 () Bool)

(assert (= bs!1911861 (and d!2264164 d!2264154)))

(assert (=> bs!1911861 (not (= lambda!449596 lambda!449593))))

(assert (=> d!2264164 (= (nullableContext!324 ct1!250) (forall!17659 (exprs!8274 ct1!250) lambda!449596))))

(declare-fun bs!1911862 () Bool)

(assert (= bs!1911862 d!2264164))

(declare-fun m!7961290 () Bool)

(assert (=> bs!1911862 m!7961290))

(assert (=> b!7274465 d!2264164))

(declare-fun d!2264166 () Bool)

(declare-fun choose!56466 ((Set Context!15548) Int) (Set Context!15548))

(assert (=> d!2264166 (= (flatMap!2933 lt!2596520 lambda!449575) (choose!56466 lt!2596520 lambda!449575))))

(declare-fun bs!1911863 () Bool)

(assert (= bs!1911863 d!2264166))

(declare-fun m!7961292 () Bool)

(assert (=> bs!1911863 m!7961292))

(assert (=> b!7274469 d!2264166))

(assert (=> b!7274469 d!2264162))

(declare-fun d!2264168 () Bool)

(assert (=> d!2264168 (= (flatMap!2933 lt!2596527 lambda!449575) (choose!56466 lt!2596527 lambda!449575))))

(declare-fun bs!1911864 () Bool)

(assert (= bs!1911864 d!2264168))

(declare-fun m!7961294 () Bool)

(assert (=> bs!1911864 m!7961294))

(assert (=> b!7274469 d!2264168))

(declare-fun bm!663588 () Bool)

(declare-fun call!663593 () (Set Context!15548))

(assert (=> bm!663588 (= call!663593 (derivationStepZipperDown!2748 (h!77307 (exprs!8274 lt!2596525)) (Context!15549 (t!385055 (exprs!8274 lt!2596525))) (h!77308 s!7854)))))

(declare-fun b!7274534 () Bool)

(declare-fun e!4362301 () Bool)

(assert (=> b!7274534 (= e!4362301 (nullable!8017 (h!77307 (exprs!8274 lt!2596525))))))

(declare-fun b!7274535 () Bool)

(declare-fun e!4362300 () (Set Context!15548))

(assert (=> b!7274535 (= e!4362300 call!663593)))

(declare-fun b!7274536 () Bool)

(assert (=> b!7274536 (= e!4362300 (as set.empty (Set Context!15548)))))

(declare-fun b!7274537 () Bool)

(declare-fun e!4362302 () (Set Context!15548))

(assert (=> b!7274537 (= e!4362302 e!4362300)))

(declare-fun c!1354457 () Bool)

(assert (=> b!7274537 (= c!1354457 (is-Cons!70859 (exprs!8274 lt!2596525)))))

(declare-fun b!7274533 () Bool)

(assert (=> b!7274533 (= e!4362302 (set.union call!663593 (derivationStepZipperUp!2590 (Context!15549 (t!385055 (exprs!8274 lt!2596525))) (h!77308 s!7854))))))

(declare-fun d!2264170 () Bool)

(declare-fun c!1354456 () Bool)

(assert (=> d!2264170 (= c!1354456 e!4362301)))

(declare-fun res!2948837 () Bool)

(assert (=> d!2264170 (=> (not res!2948837) (not e!4362301))))

(assert (=> d!2264170 (= res!2948837 (is-Cons!70859 (exprs!8274 lt!2596525)))))

(assert (=> d!2264170 (= (derivationStepZipperUp!2590 lt!2596525 (h!77308 s!7854)) e!4362302)))

(assert (= (and d!2264170 res!2948837) b!7274534))

(assert (= (and d!2264170 c!1354456) b!7274533))

(assert (= (and d!2264170 (not c!1354456)) b!7274537))

(assert (= (and b!7274537 c!1354457) b!7274535))

(assert (= (and b!7274537 (not c!1354457)) b!7274536))

(assert (= (or b!7274533 b!7274535) bm!663588))

(declare-fun m!7961296 () Bool)

(assert (=> bm!663588 m!7961296))

(declare-fun m!7961298 () Bool)

(assert (=> b!7274534 m!7961298))

(declare-fun m!7961300 () Bool)

(assert (=> b!7274533 m!7961300))

(assert (=> b!7274469 d!2264170))

(declare-fun b!7274552 () Bool)

(declare-fun e!4362311 () List!70983)

(assert (=> b!7274552 (= e!4362311 (Cons!70859 (h!77307 (exprs!8274 ct1!250)) (++!16728 (t!385055 (exprs!8274 ct1!250)) (exprs!8274 ct2!346))))))

(declare-fun b!7274553 () Bool)

(declare-fun res!2948844 () Bool)

(declare-fun e!4362310 () Bool)

(assert (=> b!7274553 (=> (not res!2948844) (not e!4362310))))

(declare-fun lt!2596564 () List!70983)

(declare-fun size!41840 (List!70983) Int)

(assert (=> b!7274553 (= res!2948844 (= (size!41840 lt!2596564) (+ (size!41840 (exprs!8274 ct1!250)) (size!41840 (exprs!8274 ct2!346)))))))

(declare-fun b!7274554 () Bool)

(assert (=> b!7274554 (= e!4362310 (or (not (= (exprs!8274 ct2!346) Nil!70859)) (= lt!2596564 (exprs!8274 ct1!250))))))

(declare-fun b!7274551 () Bool)

(assert (=> b!7274551 (= e!4362311 (exprs!8274 ct2!346))))

(declare-fun d!2264172 () Bool)

(assert (=> d!2264172 e!4362310))

(declare-fun res!2948843 () Bool)

(assert (=> d!2264172 (=> (not res!2948843) (not e!4362310))))

(declare-fun content!14793 (List!70983) (Set Regex!18834))

(assert (=> d!2264172 (= res!2948843 (= (content!14793 lt!2596564) (set.union (content!14793 (exprs!8274 ct1!250)) (content!14793 (exprs!8274 ct2!346)))))))

(assert (=> d!2264172 (= lt!2596564 e!4362311)))

(declare-fun c!1354462 () Bool)

(assert (=> d!2264172 (= c!1354462 (is-Nil!70859 (exprs!8274 ct1!250)))))

(assert (=> d!2264172 (= (++!16728 (exprs!8274 ct1!250) (exprs!8274 ct2!346)) lt!2596564)))

(assert (= (and d!2264172 c!1354462) b!7274551))

(assert (= (and d!2264172 (not c!1354462)) b!7274552))

(assert (= (and d!2264172 res!2948843) b!7274553))

(assert (= (and b!7274553 res!2948844) b!7274554))

(declare-fun m!7961306 () Bool)

(assert (=> b!7274552 m!7961306))

(declare-fun m!7961308 () Bool)

(assert (=> b!7274553 m!7961308))

(declare-fun m!7961310 () Bool)

(assert (=> b!7274553 m!7961310))

(declare-fun m!7961312 () Bool)

(assert (=> b!7274553 m!7961312))

(declare-fun m!7961314 () Bool)

(assert (=> d!2264172 m!7961314))

(declare-fun m!7961316 () Bool)

(assert (=> d!2264172 m!7961316))

(declare-fun m!7961318 () Bool)

(assert (=> d!2264172 m!7961318))

(assert (=> b!7274469 d!2264172))

(declare-fun d!2264176 () Bool)

(declare-fun dynLambda!28972 (Int Context!15548) (Set Context!15548))

(assert (=> d!2264176 (= (flatMap!2933 lt!2596527 lambda!449575) (dynLambda!28972 lambda!449575 ct1!250))))

(declare-fun lt!2596567 () Unit!164274)

(declare-fun choose!56467 ((Set Context!15548) Context!15548 Int) Unit!164274)

(assert (=> d!2264176 (= lt!2596567 (choose!56467 lt!2596527 ct1!250 lambda!449575))))

(assert (=> d!2264176 (= lt!2596527 (set.insert ct1!250 (as set.empty (Set Context!15548))))))

(assert (=> d!2264176 (= (lemmaFlatMapOnSingletonSet!2333 lt!2596527 ct1!250 lambda!449575) lt!2596567)))

(declare-fun b_lambda!280709 () Bool)

(assert (=> (not b_lambda!280709) (not d!2264176)))

(declare-fun bs!1911865 () Bool)

(assert (= bs!1911865 d!2264176))

(assert (=> bs!1911865 m!7961218))

(declare-fun m!7961320 () Bool)

(assert (=> bs!1911865 m!7961320))

(declare-fun m!7961322 () Bool)

(assert (=> bs!1911865 m!7961322))

(assert (=> bs!1911865 m!7961228))

(assert (=> b!7274469 d!2264176))

(declare-fun d!2264178 () Bool)

(assert (=> d!2264178 (forall!17659 (++!16728 (exprs!8274 ct1!250) (exprs!8274 ct2!346)) lambda!449574)))

(declare-fun lt!2596570 () Unit!164274)

(declare-fun choose!56468 (List!70983 List!70983 Int) Unit!164274)

(assert (=> d!2264178 (= lt!2596570 (choose!56468 (exprs!8274 ct1!250) (exprs!8274 ct2!346) lambda!449574))))

(assert (=> d!2264178 (forall!17659 (exprs!8274 ct1!250) lambda!449574)))

(assert (=> d!2264178 (= (lemmaConcatPreservesForall!1585 (exprs!8274 ct1!250) (exprs!8274 ct2!346) lambda!449574) lt!2596570)))

(declare-fun bs!1911866 () Bool)

(assert (= bs!1911866 d!2264178))

(assert (=> bs!1911866 m!7961222))

(assert (=> bs!1911866 m!7961222))

(declare-fun m!7961324 () Bool)

(assert (=> bs!1911866 m!7961324))

(declare-fun m!7961326 () Bool)

(assert (=> bs!1911866 m!7961326))

(declare-fun m!7961328 () Bool)

(assert (=> bs!1911866 m!7961328))

(assert (=> b!7274469 d!2264178))

(declare-fun d!2264180 () Bool)

(assert (=> d!2264180 (= (flatMap!2933 lt!2596520 lambda!449575) (dynLambda!28972 lambda!449575 lt!2596525))))

(declare-fun lt!2596571 () Unit!164274)

(assert (=> d!2264180 (= lt!2596571 (choose!56467 lt!2596520 lt!2596525 lambda!449575))))

(assert (=> d!2264180 (= lt!2596520 (set.insert lt!2596525 (as set.empty (Set Context!15548))))))

(assert (=> d!2264180 (= (lemmaFlatMapOnSingletonSet!2333 lt!2596520 lt!2596525 lambda!449575) lt!2596571)))

(declare-fun b_lambda!280711 () Bool)

(assert (=> (not b_lambda!280711) (not d!2264180)))

(declare-fun bs!1911867 () Bool)

(assert (= bs!1911867 d!2264180))

(assert (=> bs!1911867 m!7961224))

(declare-fun m!7961330 () Bool)

(assert (=> bs!1911867 m!7961330))

(declare-fun m!7961332 () Bool)

(assert (=> bs!1911867 m!7961332))

(assert (=> bs!1911867 m!7961226))

(assert (=> b!7274469 d!2264180))

(declare-fun bs!1911868 () Bool)

(declare-fun d!2264182 () Bool)

(assert (= bs!1911868 (and d!2264182 b!7274469)))

(declare-fun lambda!449599 () Int)

(assert (=> bs!1911868 (= lambda!449599 lambda!449575)))

(assert (=> d!2264182 true))

(assert (=> d!2264182 (= (derivationStepZipper!3570 lt!2596520 (h!77308 s!7854)) (flatMap!2933 lt!2596520 lambda!449599))))

(declare-fun bs!1911869 () Bool)

(assert (= bs!1911869 d!2264182))

(declare-fun m!7961344 () Bool)

(assert (=> bs!1911869 m!7961344))

(assert (=> b!7274469 d!2264182))

(declare-fun b!7274567 () Bool)

(declare-fun e!4362317 () Bool)

(declare-fun tp!2041845 () Bool)

(declare-fun tp!2041846 () Bool)

(assert (=> b!7274567 (= e!4362317 (and tp!2041845 tp!2041846))))

(assert (=> b!7274462 (= tp!2041831 e!4362317)))

(assert (= (and b!7274462 (is-Cons!70859 (exprs!8274 ct1!250))) b!7274567))

(declare-fun b!7274568 () Bool)

(declare-fun e!4362318 () Bool)

(declare-fun tp!2041847 () Bool)

(declare-fun tp!2041848 () Bool)

(assert (=> b!7274568 (= e!4362318 (and tp!2041847 tp!2041848))))

(assert (=> b!7274470 (= tp!2041829 e!4362318)))

(assert (= (and b!7274470 (is-Cons!70859 (exprs!8274 ct2!346))) b!7274568))

(declare-fun b!7274573 () Bool)

(declare-fun e!4362321 () Bool)

(declare-fun tp!2041851 () Bool)

(assert (=> b!7274573 (= e!4362321 (and tp_is_empty!47133 tp!2041851))))

(assert (=> b!7274468 (= tp!2041830 e!4362321)))

(assert (= (and b!7274468 (is-Cons!70860 (t!385056 s!7854))) b!7274573))

(declare-fun b_lambda!280713 () Bool)

(assert (= b_lambda!280711 (or b!7274469 b_lambda!280713)))

(declare-fun bs!1911870 () Bool)

(declare-fun d!2264186 () Bool)

(assert (= bs!1911870 (and d!2264186 b!7274469)))

(assert (=> bs!1911870 (= (dynLambda!28972 lambda!449575 lt!2596525) (derivationStepZipperUp!2590 lt!2596525 (h!77308 s!7854)))))

(assert (=> bs!1911870 m!7961210))

(assert (=> d!2264180 d!2264186))

(declare-fun b_lambda!280715 () Bool)

(assert (= b_lambda!280709 (or b!7274469 b_lambda!280715)))

(declare-fun bs!1911871 () Bool)

(declare-fun d!2264188 () Bool)

(assert (= bs!1911871 (and d!2264188 b!7274469)))

(assert (=> bs!1911871 (= (dynLambda!28972 lambda!449575 ct1!250) (derivationStepZipperUp!2590 ct1!250 (h!77308 s!7854)))))

(assert (=> bs!1911871 m!7961196))

(assert (=> d!2264176 d!2264188))

(push 1)

(assert (not b!7274533))

(assert (not d!2264166))

(assert (not d!2264182))

(assert (not d!2264150))

(assert (not d!2264176))

(assert (not b!7274553))

(assert (not b!7274524))

(assert (not b!7274525))

(assert (not bm!663585))

(assert (not d!2264178))

(assert (not b!7274552))

(assert (not b!7274568))

(assert (not d!2264160))

(assert (not b_lambda!280715))

(assert (not d!2264168))

(assert (not b!7274573))

(assert (not bm!663588))

(assert (not d!2264172))

(assert (not d!2264148))

(assert (not d!2264180))

(assert (not d!2264154))

(assert (not b!7274506))

(assert (not b_lambda!280713))

(assert (not bs!1911871))

(assert tp_is_empty!47133)

(assert (not b!7274534))

(assert (not b!7274507))

(assert (not b!7274567))

(assert (not d!2264164))

(assert (not bs!1911870))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2264216 () Bool)

(declare-fun res!2948856 () Bool)

(declare-fun e!4362342 () Bool)

(assert (=> d!2264216 (=> res!2948856 e!4362342)))

(assert (=> d!2264216 (= res!2948856 (is-Nil!70859 (exprs!8274 ct2!346)))))

(assert (=> d!2264216 (= (forall!17659 (exprs!8274 ct2!346) lambda!449592) e!4362342)))

(declare-fun b!7274608 () Bool)

(declare-fun e!4362343 () Bool)

(assert (=> b!7274608 (= e!4362342 e!4362343)))

(declare-fun res!2948857 () Bool)

(assert (=> b!7274608 (=> (not res!2948857) (not e!4362343))))

(declare-fun dynLambda!28974 (Int Regex!18834) Bool)

(assert (=> b!7274608 (= res!2948857 (dynLambda!28974 lambda!449592 (h!77307 (exprs!8274 ct2!346))))))

(declare-fun b!7274609 () Bool)

(assert (=> b!7274609 (= e!4362343 (forall!17659 (t!385055 (exprs!8274 ct2!346)) lambda!449592))))

(assert (= (and d!2264216 (not res!2948856)) b!7274608))

(assert (= (and b!7274608 res!2948857) b!7274609))

(declare-fun b_lambda!280725 () Bool)

(assert (=> (not b_lambda!280725) (not b!7274608)))

(declare-fun m!7961394 () Bool)

(assert (=> b!7274608 m!7961394))

(declare-fun m!7961396 () Bool)

(assert (=> b!7274609 m!7961396))

(assert (=> d!2264150 d!2264216))

(assert (=> bs!1911870 d!2264170))

(declare-fun d!2264218 () Bool)

(assert (=> d!2264218 true))

(declare-fun setRes!53648 () Bool)

(assert (=> d!2264218 setRes!53648))

(declare-fun condSetEmpty!53648 () Bool)

(declare-fun res!2948860 () (Set Context!15548))

(assert (=> d!2264218 (= condSetEmpty!53648 (= res!2948860 (as set.empty (Set Context!15548))))))

(assert (=> d!2264218 (= (choose!56466 lt!2596527 lambda!449575) res!2948860)))

(declare-fun setIsEmpty!53648 () Bool)

(assert (=> setIsEmpty!53648 setRes!53648))

(declare-fun setNonEmpty!53648 () Bool)

(declare-fun tp!2041867 () Bool)

(declare-fun setElem!53648 () Context!15548)

(declare-fun e!4362346 () Bool)

(assert (=> setNonEmpty!53648 (= setRes!53648 (and tp!2041867 (inv!90096 setElem!53648) e!4362346))))

(declare-fun setRest!53648 () (Set Context!15548))

(assert (=> setNonEmpty!53648 (= res!2948860 (set.union (set.insert setElem!53648 (as set.empty (Set Context!15548))) setRest!53648))))

(declare-fun b!7274612 () Bool)

(declare-fun tp!2041868 () Bool)

(assert (=> b!7274612 (= e!4362346 tp!2041868)))

(assert (= (and d!2264218 condSetEmpty!53648) setIsEmpty!53648))

(assert (= (and d!2264218 (not condSetEmpty!53648)) setNonEmpty!53648))

(assert (= setNonEmpty!53648 b!7274612))

(declare-fun m!7961398 () Bool)

(assert (=> setNonEmpty!53648 m!7961398))

(assert (=> d!2264168 d!2264218))

(declare-fun d!2264220 () Bool)

(assert (=> d!2264220 (= (flatMap!2933 lt!2596520 lambda!449599) (choose!56466 lt!2596520 lambda!449599))))

(declare-fun bs!1911890 () Bool)

(assert (= bs!1911890 d!2264220))

(declare-fun m!7961400 () Bool)

(assert (=> bs!1911890 m!7961400))

(assert (=> d!2264182 d!2264220))

(assert (=> bs!1911871 d!2264162))

(declare-fun b!7274627 () Bool)

(declare-fun e!4362361 () Bool)

(declare-fun e!4362360 () Bool)

(assert (=> b!7274627 (= e!4362361 e!4362360)))

(declare-fun c!1354478 () Bool)

(assert (=> b!7274627 (= c!1354478 (is-Union!18834 (h!77307 (exprs!8274 ct1!250))))))

(declare-fun b!7274628 () Bool)

(declare-fun e!4362362 () Bool)

(assert (=> b!7274628 (= e!4362360 e!4362362)))

(declare-fun res!2948875 () Bool)

(declare-fun call!663601 () Bool)

(assert (=> b!7274628 (= res!2948875 call!663601)))

(assert (=> b!7274628 (=> res!2948875 e!4362362)))

(declare-fun bm!663595 () Bool)

(assert (=> bm!663595 (= call!663601 (nullable!8017 (ite c!1354478 (regOne!38181 (h!77307 (exprs!8274 ct1!250))) (regTwo!38180 (h!77307 (exprs!8274 ct1!250))))))))

(declare-fun b!7274629 () Bool)

(declare-fun e!4362363 () Bool)

(assert (=> b!7274629 (= e!4362360 e!4362363)))

(declare-fun res!2948874 () Bool)

(declare-fun call!663600 () Bool)

(assert (=> b!7274629 (= res!2948874 call!663600)))

(assert (=> b!7274629 (=> (not res!2948874) (not e!4362363))))

(declare-fun b!7274630 () Bool)

(declare-fun e!4362359 () Bool)

(declare-fun e!4362364 () Bool)

(assert (=> b!7274630 (= e!4362359 e!4362364)))

(declare-fun res!2948872 () Bool)

(assert (=> b!7274630 (=> (not res!2948872) (not e!4362364))))

(assert (=> b!7274630 (= res!2948872 (and (not (is-EmptyLang!18834 (h!77307 (exprs!8274 ct1!250)))) (not (is-ElementMatch!18834 (h!77307 (exprs!8274 ct1!250))))))))

(declare-fun d!2264222 () Bool)

(declare-fun res!2948873 () Bool)

(assert (=> d!2264222 (=> res!2948873 e!4362359)))

(assert (=> d!2264222 (= res!2948873 (is-EmptyExpr!18834 (h!77307 (exprs!8274 ct1!250))))))

(assert (=> d!2264222 (= (nullableFct!3163 (h!77307 (exprs!8274 ct1!250))) e!4362359)))

(declare-fun b!7274631 () Bool)

(assert (=> b!7274631 (= e!4362364 e!4362361)))

(declare-fun res!2948871 () Bool)

(assert (=> b!7274631 (=> res!2948871 e!4362361)))

(assert (=> b!7274631 (= res!2948871 (is-Star!18834 (h!77307 (exprs!8274 ct1!250))))))

(declare-fun b!7274632 () Bool)

(assert (=> b!7274632 (= e!4362362 call!663600)))

(declare-fun b!7274633 () Bool)

(assert (=> b!7274633 (= e!4362363 call!663601)))

(declare-fun bm!663596 () Bool)

(assert (=> bm!663596 (= call!663600 (nullable!8017 (ite c!1354478 (regTwo!38181 (h!77307 (exprs!8274 ct1!250))) (regOne!38180 (h!77307 (exprs!8274 ct1!250))))))))

(assert (= (and d!2264222 (not res!2948873)) b!7274630))

(assert (= (and b!7274630 res!2948872) b!7274631))

(assert (= (and b!7274631 (not res!2948871)) b!7274627))

(assert (= (and b!7274627 c!1354478) b!7274628))

(assert (= (and b!7274627 (not c!1354478)) b!7274629))

(assert (= (and b!7274628 (not res!2948875)) b!7274632))

(assert (= (and b!7274629 res!2948874) b!7274633))

(assert (= (or b!7274628 b!7274633) bm!663595))

(assert (= (or b!7274632 b!7274629) bm!663596))

(declare-fun m!7961402 () Bool)

(assert (=> bm!663595 m!7961402))

(declare-fun m!7961404 () Bool)

(assert (=> bm!663596 m!7961404))

(assert (=> d!2264160 d!2264222))

(declare-fun d!2264224 () Bool)

(assert (=> d!2264224 (= (nullable!8017 (h!77307 (exprs!8274 lt!2596525))) (nullableFct!3163 (h!77307 (exprs!8274 lt!2596525))))))

(declare-fun bs!1911891 () Bool)

(assert (= bs!1911891 d!2264224))

(declare-fun m!7961406 () Bool)

(assert (=> bs!1911891 m!7961406))

(assert (=> b!7274534 d!2264224))

(declare-fun call!663616 () (Set Context!15548))

(declare-fun bm!663609 () Bool)

(declare-fun c!1354492 () Bool)

(declare-fun call!663615 () List!70983)

(assert (=> bm!663609 (= call!663616 (derivationStepZipperDown!2748 (ite c!1354492 (regOne!38181 (h!77307 (exprs!8274 ct1!250))) (regOne!38180 (h!77307 (exprs!8274 ct1!250)))) (ite c!1354492 (Context!15549 (t!385055 (exprs!8274 ct1!250))) (Context!15549 call!663615)) (h!77308 s!7854)))))

(declare-fun b!7274657 () Bool)

(declare-fun e!4362377 () (Set Context!15548))

(declare-fun call!663619 () (Set Context!15548))

(assert (=> b!7274657 (= e!4362377 call!663619)))

(declare-fun b!7274658 () Bool)

(declare-fun e!4362380 () (Set Context!15548))

(declare-fun e!4362378 () (Set Context!15548))

(assert (=> b!7274658 (= e!4362380 e!4362378)))

(assert (=> b!7274658 (= c!1354492 (is-Union!18834 (h!77307 (exprs!8274 ct1!250))))))

(declare-fun c!1354490 () Bool)

(declare-fun call!663617 () (Set Context!15548))

(declare-fun call!663618 () List!70983)

(declare-fun c!1354491 () Bool)

(declare-fun bm!663610 () Bool)

(assert (=> bm!663610 (= call!663617 (derivationStepZipperDown!2748 (ite c!1354492 (regTwo!38181 (h!77307 (exprs!8274 ct1!250))) (ite c!1354490 (regTwo!38180 (h!77307 (exprs!8274 ct1!250))) (ite c!1354491 (regOne!38180 (h!77307 (exprs!8274 ct1!250))) (reg!19163 (h!77307 (exprs!8274 ct1!250)))))) (ite (or c!1354492 c!1354490) (Context!15549 (t!385055 (exprs!8274 ct1!250))) (Context!15549 call!663618)) (h!77308 s!7854)))))

(declare-fun b!7274659 () Bool)

(assert (=> b!7274659 (= e!4362377 (as set.empty (Set Context!15548)))))

(declare-fun bm!663611 () Bool)

(declare-fun call!663614 () (Set Context!15548))

(assert (=> bm!663611 (= call!663619 call!663614)))

(declare-fun bm!663612 () Bool)

(declare-fun $colon$colon!2980 (List!70983 Regex!18834) List!70983)

(assert (=> bm!663612 (= call!663615 ($colon$colon!2980 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 ct1!250)))) (ite (or c!1354490 c!1354491) (regTwo!38180 (h!77307 (exprs!8274 ct1!250))) (h!77307 (exprs!8274 ct1!250)))))))

(declare-fun d!2264226 () Bool)

(declare-fun c!1354489 () Bool)

(assert (=> d!2264226 (= c!1354489 (and (is-ElementMatch!18834 (h!77307 (exprs!8274 ct1!250))) (= (c!1354436 (h!77307 (exprs!8274 ct1!250))) (h!77308 s!7854))))))

(assert (=> d!2264226 (= (derivationStepZipperDown!2748 (h!77307 (exprs!8274 ct1!250)) (Context!15549 (t!385055 (exprs!8274 ct1!250))) (h!77308 s!7854)) e!4362380)))

(declare-fun b!7274656 () Bool)

(declare-fun e!4362382 () Bool)

(assert (=> b!7274656 (= c!1354490 e!4362382)))

(declare-fun res!2948878 () Bool)

(assert (=> b!7274656 (=> (not res!2948878) (not e!4362382))))

(assert (=> b!7274656 (= res!2948878 (is-Concat!27679 (h!77307 (exprs!8274 ct1!250))))))

(declare-fun e!4362381 () (Set Context!15548))

(assert (=> b!7274656 (= e!4362378 e!4362381)))

(declare-fun b!7274660 () Bool)

(declare-fun e!4362379 () (Set Context!15548))

(assert (=> b!7274660 (= e!4362379 call!663619)))

(declare-fun b!7274661 () Bool)

(assert (=> b!7274661 (= e!4362378 (set.union call!663616 call!663617))))

(declare-fun b!7274662 () Bool)

(assert (=> b!7274662 (= e!4362380 (set.insert (Context!15549 (t!385055 (exprs!8274 ct1!250))) (as set.empty (Set Context!15548))))))

(declare-fun b!7274663 () Bool)

(assert (=> b!7274663 (= e!4362381 e!4362379)))

(assert (=> b!7274663 (= c!1354491 (is-Concat!27679 (h!77307 (exprs!8274 ct1!250))))))

(declare-fun b!7274664 () Bool)

(assert (=> b!7274664 (= e!4362382 (nullable!8017 (regOne!38180 (h!77307 (exprs!8274 ct1!250)))))))

(declare-fun bm!663613 () Bool)

(assert (=> bm!663613 (= call!663618 call!663615)))

(declare-fun b!7274665 () Bool)

(declare-fun c!1354493 () Bool)

(assert (=> b!7274665 (= c!1354493 (is-Star!18834 (h!77307 (exprs!8274 ct1!250))))))

(assert (=> b!7274665 (= e!4362379 e!4362377)))

(declare-fun bm!663614 () Bool)

(assert (=> bm!663614 (= call!663614 call!663617)))

(declare-fun b!7274666 () Bool)

(assert (=> b!7274666 (= e!4362381 (set.union call!663616 call!663614))))

(assert (= (and d!2264226 c!1354489) b!7274662))

(assert (= (and d!2264226 (not c!1354489)) b!7274658))

(assert (= (and b!7274658 c!1354492) b!7274661))

(assert (= (and b!7274658 (not c!1354492)) b!7274656))

(assert (= (and b!7274656 res!2948878) b!7274664))

(assert (= (and b!7274656 c!1354490) b!7274666))

(assert (= (and b!7274656 (not c!1354490)) b!7274663))

(assert (= (and b!7274663 c!1354491) b!7274660))

(assert (= (and b!7274663 (not c!1354491)) b!7274665))

(assert (= (and b!7274665 c!1354493) b!7274657))

(assert (= (and b!7274665 (not c!1354493)) b!7274659))

(assert (= (or b!7274660 b!7274657) bm!663613))

(assert (= (or b!7274660 b!7274657) bm!663611))

(assert (= (or b!7274666 bm!663613) bm!663612))

(assert (= (or b!7274666 bm!663611) bm!663614))

(assert (= (or b!7274661 b!7274666) bm!663609))

(assert (= (or b!7274661 bm!663614) bm!663610))

(declare-fun m!7961408 () Bool)

(assert (=> bm!663609 m!7961408))

(declare-fun m!7961410 () Bool)

(assert (=> bm!663612 m!7961410))

(declare-fun m!7961412 () Bool)

(assert (=> b!7274664 m!7961412))

(declare-fun m!7961414 () Bool)

(assert (=> bm!663610 m!7961414))

(declare-fun m!7961416 () Bool)

(assert (=> b!7274662 m!7961416))

(assert (=> bm!663585 d!2264226))

(assert (=> b!7274525 d!2264160))

(declare-fun d!2264228 () Bool)

(declare-fun res!2948879 () Bool)

(declare-fun e!4362383 () Bool)

(assert (=> d!2264228 (=> res!2948879 e!4362383)))

(assert (=> d!2264228 (= res!2948879 (is-Nil!70859 (exprs!8274 ct1!250)))))

(assert (=> d!2264228 (= (forall!17659 (exprs!8274 ct1!250) lambda!449593) e!4362383)))

(declare-fun b!7274667 () Bool)

(declare-fun e!4362384 () Bool)

(assert (=> b!7274667 (= e!4362383 e!4362384)))

(declare-fun res!2948880 () Bool)

(assert (=> b!7274667 (=> (not res!2948880) (not e!4362384))))

(assert (=> b!7274667 (= res!2948880 (dynLambda!28974 lambda!449593 (h!77307 (exprs!8274 ct1!250))))))

(declare-fun b!7274668 () Bool)

(assert (=> b!7274668 (= e!4362384 (forall!17659 (t!385055 (exprs!8274 ct1!250)) lambda!449593))))

(assert (= (and d!2264228 (not res!2948879)) b!7274667))

(assert (= (and b!7274667 res!2948880) b!7274668))

(declare-fun b_lambda!280727 () Bool)

(assert (=> (not b_lambda!280727) (not b!7274667)))

(declare-fun m!7961418 () Bool)

(assert (=> b!7274667 m!7961418))

(declare-fun m!7961420 () Bool)

(assert (=> b!7274668 m!7961420))

(assert (=> d!2264154 d!2264228))

(declare-fun bm!663615 () Bool)

(declare-fun call!663620 () (Set Context!15548))

(assert (=> bm!663615 (= call!663620 (derivationStepZipperDown!2748 (h!77307 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 ct1!250))))) (Context!15549 (t!385055 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 ct1!250)))))) (h!77308 s!7854)))))

(declare-fun b!7274670 () Bool)

(declare-fun e!4362386 () Bool)

(assert (=> b!7274670 (= e!4362386 (nullable!8017 (h!77307 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 ct1!250)))))))))

(declare-fun b!7274671 () Bool)

(declare-fun e!4362385 () (Set Context!15548))

(assert (=> b!7274671 (= e!4362385 call!663620)))

(declare-fun b!7274672 () Bool)

(assert (=> b!7274672 (= e!4362385 (as set.empty (Set Context!15548)))))

(declare-fun b!7274673 () Bool)

(declare-fun e!4362387 () (Set Context!15548))

(assert (=> b!7274673 (= e!4362387 e!4362385)))

(declare-fun c!1354495 () Bool)

(assert (=> b!7274673 (= c!1354495 (is-Cons!70859 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 ct1!250))))))))

(declare-fun b!7274669 () Bool)

(assert (=> b!7274669 (= e!4362387 (set.union call!663620 (derivationStepZipperUp!2590 (Context!15549 (t!385055 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 ct1!250)))))) (h!77308 s!7854))))))

(declare-fun d!2264230 () Bool)

(declare-fun c!1354494 () Bool)

(assert (=> d!2264230 (= c!1354494 e!4362386)))

(declare-fun res!2948881 () Bool)

(assert (=> d!2264230 (=> (not res!2948881) (not e!4362386))))

(assert (=> d!2264230 (= res!2948881 (is-Cons!70859 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 ct1!250))))))))

(assert (=> d!2264230 (= (derivationStepZipperUp!2590 (Context!15549 (t!385055 (exprs!8274 ct1!250))) (h!77308 s!7854)) e!4362387)))

(assert (= (and d!2264230 res!2948881) b!7274670))

(assert (= (and d!2264230 c!1354494) b!7274669))

(assert (= (and d!2264230 (not c!1354494)) b!7274673))

(assert (= (and b!7274673 c!1354495) b!7274671))

(assert (= (and b!7274673 (not c!1354495)) b!7274672))

(assert (= (or b!7274669 b!7274671) bm!663615))

(declare-fun m!7961422 () Bool)

(assert (=> bm!663615 m!7961422))

(declare-fun m!7961424 () Bool)

(assert (=> b!7274670 m!7961424))

(declare-fun m!7961426 () Bool)

(assert (=> b!7274669 m!7961426))

(assert (=> b!7274524 d!2264230))

(assert (=> d!2264176 d!2264168))

(declare-fun d!2264232 () Bool)

(assert (=> d!2264232 (= (flatMap!2933 lt!2596527 lambda!449575) (dynLambda!28972 lambda!449575 ct1!250))))

(assert (=> d!2264232 true))

(declare-fun _$13!4646 () Unit!164274)

(assert (=> d!2264232 (= (choose!56467 lt!2596527 ct1!250 lambda!449575) _$13!4646)))

(declare-fun b_lambda!280729 () Bool)

(assert (=> (not b_lambda!280729) (not d!2264232)))

(declare-fun bs!1911892 () Bool)

(assert (= bs!1911892 d!2264232))

(assert (=> bs!1911892 m!7961218))

(assert (=> bs!1911892 m!7961320))

(assert (=> d!2264176 d!2264232))

(declare-fun d!2264234 () Bool)

(assert (=> d!2264234 true))

(declare-fun setRes!53649 () Bool)

(assert (=> d!2264234 setRes!53649))

(declare-fun condSetEmpty!53649 () Bool)

(declare-fun res!2948882 () (Set Context!15548))

(assert (=> d!2264234 (= condSetEmpty!53649 (= res!2948882 (as set.empty (Set Context!15548))))))

(assert (=> d!2264234 (= (choose!56466 lt!2596520 lambda!449575) res!2948882)))

(declare-fun setIsEmpty!53649 () Bool)

(assert (=> setIsEmpty!53649 setRes!53649))

(declare-fun e!4362388 () Bool)

(declare-fun tp!2041869 () Bool)

(declare-fun setElem!53649 () Context!15548)

(declare-fun setNonEmpty!53649 () Bool)

(assert (=> setNonEmpty!53649 (= setRes!53649 (and tp!2041869 (inv!90096 setElem!53649) e!4362388))))

(declare-fun setRest!53649 () (Set Context!15548))

(assert (=> setNonEmpty!53649 (= res!2948882 (set.union (set.insert setElem!53649 (as set.empty (Set Context!15548))) setRest!53649))))

(declare-fun b!7274674 () Bool)

(declare-fun tp!2041870 () Bool)

(assert (=> b!7274674 (= e!4362388 tp!2041870)))

(assert (= (and d!2264234 condSetEmpty!53649) setIsEmpty!53649))

(assert (= (and d!2264234 (not condSetEmpty!53649)) setNonEmpty!53649))

(assert (= setNonEmpty!53649 b!7274674))

(declare-fun m!7961428 () Bool)

(assert (=> setNonEmpty!53649 m!7961428))

(assert (=> d!2264166 d!2264234))

(declare-fun bm!663616 () Bool)

(declare-fun call!663621 () (Set Context!15548))

(assert (=> bm!663616 (= call!663621 (derivationStepZipperDown!2748 (h!77307 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 lt!2596525))))) (Context!15549 (t!385055 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 lt!2596525)))))) (h!77308 s!7854)))))

(declare-fun b!7274676 () Bool)

(declare-fun e!4362390 () Bool)

(assert (=> b!7274676 (= e!4362390 (nullable!8017 (h!77307 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 lt!2596525)))))))))

(declare-fun b!7274677 () Bool)

(declare-fun e!4362389 () (Set Context!15548))

(assert (=> b!7274677 (= e!4362389 call!663621)))

(declare-fun b!7274678 () Bool)

(assert (=> b!7274678 (= e!4362389 (as set.empty (Set Context!15548)))))

(declare-fun b!7274679 () Bool)

(declare-fun e!4362391 () (Set Context!15548))

(assert (=> b!7274679 (= e!4362391 e!4362389)))

(declare-fun c!1354497 () Bool)

(assert (=> b!7274679 (= c!1354497 (is-Cons!70859 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 lt!2596525))))))))

(declare-fun b!7274675 () Bool)

(assert (=> b!7274675 (= e!4362391 (set.union call!663621 (derivationStepZipperUp!2590 (Context!15549 (t!385055 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 lt!2596525)))))) (h!77308 s!7854))))))

(declare-fun d!2264236 () Bool)

(declare-fun c!1354496 () Bool)

(assert (=> d!2264236 (= c!1354496 e!4362390)))

(declare-fun res!2948883 () Bool)

(assert (=> d!2264236 (=> (not res!2948883) (not e!4362390))))

(assert (=> d!2264236 (= res!2948883 (is-Cons!70859 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 lt!2596525))))))))

(assert (=> d!2264236 (= (derivationStepZipperUp!2590 (Context!15549 (t!385055 (exprs!8274 lt!2596525))) (h!77308 s!7854)) e!4362391)))

(assert (= (and d!2264236 res!2948883) b!7274676))

(assert (= (and d!2264236 c!1354496) b!7274675))

(assert (= (and d!2264236 (not c!1354496)) b!7274679))

(assert (= (and b!7274679 c!1354497) b!7274677))

(assert (= (and b!7274679 (not c!1354497)) b!7274678))

(assert (= (or b!7274675 b!7274677) bm!663616))

(declare-fun m!7961430 () Bool)

(assert (=> bm!663616 m!7961430))

(declare-fun m!7961432 () Bool)

(assert (=> b!7274676 m!7961432))

(declare-fun m!7961434 () Bool)

(assert (=> b!7274675 m!7961434))

(assert (=> b!7274533 d!2264236))

(declare-fun d!2264238 () Bool)

(declare-fun lt!2596584 () Int)

(assert (=> d!2264238 (>= lt!2596584 0)))

(declare-fun e!4362394 () Int)

(assert (=> d!2264238 (= lt!2596584 e!4362394)))

(declare-fun c!1354500 () Bool)

(assert (=> d!2264238 (= c!1354500 (is-Nil!70859 lt!2596564))))

(assert (=> d!2264238 (= (size!41840 lt!2596564) lt!2596584)))

(declare-fun b!7274684 () Bool)

(assert (=> b!7274684 (= e!4362394 0)))

(declare-fun b!7274685 () Bool)

(assert (=> b!7274685 (= e!4362394 (+ 1 (size!41840 (t!385055 lt!2596564))))))

(assert (= (and d!2264238 c!1354500) b!7274684))

(assert (= (and d!2264238 (not c!1354500)) b!7274685))

(declare-fun m!7961436 () Bool)

(assert (=> b!7274685 m!7961436))

(assert (=> b!7274553 d!2264238))

(declare-fun d!2264240 () Bool)

(declare-fun lt!2596585 () Int)

(assert (=> d!2264240 (>= lt!2596585 0)))

(declare-fun e!4362395 () Int)

(assert (=> d!2264240 (= lt!2596585 e!4362395)))

(declare-fun c!1354501 () Bool)

(assert (=> d!2264240 (= c!1354501 (is-Nil!70859 (exprs!8274 ct1!250)))))

(assert (=> d!2264240 (= (size!41840 (exprs!8274 ct1!250)) lt!2596585)))

(declare-fun b!7274686 () Bool)

(assert (=> b!7274686 (= e!4362395 0)))

(declare-fun b!7274687 () Bool)

(assert (=> b!7274687 (= e!4362395 (+ 1 (size!41840 (t!385055 (exprs!8274 ct1!250)))))))

(assert (= (and d!2264240 c!1354501) b!7274686))

(assert (= (and d!2264240 (not c!1354501)) b!7274687))

(declare-fun m!7961438 () Bool)

(assert (=> b!7274687 m!7961438))

(assert (=> b!7274553 d!2264240))

(declare-fun d!2264242 () Bool)

(declare-fun lt!2596586 () Int)

(assert (=> d!2264242 (>= lt!2596586 0)))

(declare-fun e!4362396 () Int)

(assert (=> d!2264242 (= lt!2596586 e!4362396)))

(declare-fun c!1354502 () Bool)

(assert (=> d!2264242 (= c!1354502 (is-Nil!70859 (exprs!8274 ct2!346)))))

(assert (=> d!2264242 (= (size!41840 (exprs!8274 ct2!346)) lt!2596586)))

(declare-fun b!7274688 () Bool)

(assert (=> b!7274688 (= e!4362396 0)))

(declare-fun b!7274689 () Bool)

(assert (=> b!7274689 (= e!4362396 (+ 1 (size!41840 (t!385055 (exprs!8274 ct2!346)))))))

(assert (= (and d!2264242 c!1354502) b!7274688))

(assert (= (and d!2264242 (not c!1354502)) b!7274689))

(declare-fun m!7961440 () Bool)

(assert (=> b!7274689 m!7961440))

(assert (=> b!7274553 d!2264242))

(declare-fun d!2264244 () Bool)

(declare-fun res!2948884 () Bool)

(declare-fun e!4362397 () Bool)

(assert (=> d!2264244 (=> res!2948884 e!4362397)))

(assert (=> d!2264244 (= res!2948884 (is-Nil!70859 (exprs!8274 ct1!250)))))

(assert (=> d!2264244 (= (forall!17659 (exprs!8274 ct1!250) lambda!449596) e!4362397)))

(declare-fun b!7274690 () Bool)

(declare-fun e!4362398 () Bool)

(assert (=> b!7274690 (= e!4362397 e!4362398)))

(declare-fun res!2948885 () Bool)

(assert (=> b!7274690 (=> (not res!2948885) (not e!4362398))))

(assert (=> b!7274690 (= res!2948885 (dynLambda!28974 lambda!449596 (h!77307 (exprs!8274 ct1!250))))))

(declare-fun b!7274691 () Bool)

(assert (=> b!7274691 (= e!4362398 (forall!17659 (t!385055 (exprs!8274 ct1!250)) lambda!449596))))

(assert (= (and d!2264244 (not res!2948884)) b!7274690))

(assert (= (and b!7274690 res!2948885) b!7274691))

(declare-fun b_lambda!280731 () Bool)

(assert (=> (not b_lambda!280731) (not b!7274690)))

(declare-fun m!7961442 () Bool)

(assert (=> b!7274690 m!7961442))

(declare-fun m!7961444 () Bool)

(assert (=> b!7274691 m!7961444))

(assert (=> d!2264164 d!2264244))

(declare-fun call!663623 () List!70983)

(declare-fun bm!663617 () Bool)

(declare-fun call!663624 () (Set Context!15548))

(declare-fun c!1354506 () Bool)

(assert (=> bm!663617 (= call!663624 (derivationStepZipperDown!2748 (ite c!1354506 (regOne!38181 (h!77307 (exprs!8274 lt!2596525))) (regOne!38180 (h!77307 (exprs!8274 lt!2596525)))) (ite c!1354506 (Context!15549 (t!385055 (exprs!8274 lt!2596525))) (Context!15549 call!663623)) (h!77308 s!7854)))))

(declare-fun b!7274693 () Bool)

(declare-fun e!4362399 () (Set Context!15548))

(declare-fun call!663627 () (Set Context!15548))

(assert (=> b!7274693 (= e!4362399 call!663627)))

(declare-fun b!7274694 () Bool)

(declare-fun e!4362402 () (Set Context!15548))

(declare-fun e!4362400 () (Set Context!15548))

(assert (=> b!7274694 (= e!4362402 e!4362400)))

(assert (=> b!7274694 (= c!1354506 (is-Union!18834 (h!77307 (exprs!8274 lt!2596525))))))

(declare-fun c!1354504 () Bool)

(declare-fun call!663625 () (Set Context!15548))

(declare-fun bm!663618 () Bool)

(declare-fun c!1354505 () Bool)

(declare-fun call!663626 () List!70983)

(assert (=> bm!663618 (= call!663625 (derivationStepZipperDown!2748 (ite c!1354506 (regTwo!38181 (h!77307 (exprs!8274 lt!2596525))) (ite c!1354504 (regTwo!38180 (h!77307 (exprs!8274 lt!2596525))) (ite c!1354505 (regOne!38180 (h!77307 (exprs!8274 lt!2596525))) (reg!19163 (h!77307 (exprs!8274 lt!2596525)))))) (ite (or c!1354506 c!1354504) (Context!15549 (t!385055 (exprs!8274 lt!2596525))) (Context!15549 call!663626)) (h!77308 s!7854)))))

(declare-fun b!7274695 () Bool)

(assert (=> b!7274695 (= e!4362399 (as set.empty (Set Context!15548)))))

(declare-fun bm!663619 () Bool)

(declare-fun call!663622 () (Set Context!15548))

(assert (=> bm!663619 (= call!663627 call!663622)))

(declare-fun bm!663620 () Bool)

(assert (=> bm!663620 (= call!663623 ($colon$colon!2980 (exprs!8274 (Context!15549 (t!385055 (exprs!8274 lt!2596525)))) (ite (or c!1354504 c!1354505) (regTwo!38180 (h!77307 (exprs!8274 lt!2596525))) (h!77307 (exprs!8274 lt!2596525)))))))

(declare-fun d!2264246 () Bool)

(declare-fun c!1354503 () Bool)

(assert (=> d!2264246 (= c!1354503 (and (is-ElementMatch!18834 (h!77307 (exprs!8274 lt!2596525))) (= (c!1354436 (h!77307 (exprs!8274 lt!2596525))) (h!77308 s!7854))))))

(assert (=> d!2264246 (= (derivationStepZipperDown!2748 (h!77307 (exprs!8274 lt!2596525)) (Context!15549 (t!385055 (exprs!8274 lt!2596525))) (h!77308 s!7854)) e!4362402)))

(declare-fun b!7274692 () Bool)

(declare-fun e!4362404 () Bool)

(assert (=> b!7274692 (= c!1354504 e!4362404)))

(declare-fun res!2948886 () Bool)

(assert (=> b!7274692 (=> (not res!2948886) (not e!4362404))))

(assert (=> b!7274692 (= res!2948886 (is-Concat!27679 (h!77307 (exprs!8274 lt!2596525))))))

(declare-fun e!4362403 () (Set Context!15548))

(assert (=> b!7274692 (= e!4362400 e!4362403)))

(declare-fun b!7274696 () Bool)

(declare-fun e!4362401 () (Set Context!15548))

(assert (=> b!7274696 (= e!4362401 call!663627)))

(declare-fun b!7274697 () Bool)

(assert (=> b!7274697 (= e!4362400 (set.union call!663624 call!663625))))

(declare-fun b!7274698 () Bool)

(assert (=> b!7274698 (= e!4362402 (set.insert (Context!15549 (t!385055 (exprs!8274 lt!2596525))) (as set.empty (Set Context!15548))))))

(declare-fun b!7274699 () Bool)

(assert (=> b!7274699 (= e!4362403 e!4362401)))

(assert (=> b!7274699 (= c!1354505 (is-Concat!27679 (h!77307 (exprs!8274 lt!2596525))))))

(declare-fun b!7274700 () Bool)

(assert (=> b!7274700 (= e!4362404 (nullable!8017 (regOne!38180 (h!77307 (exprs!8274 lt!2596525)))))))

(declare-fun bm!663621 () Bool)

(assert (=> bm!663621 (= call!663626 call!663623)))

(declare-fun b!7274701 () Bool)

(declare-fun c!1354507 () Bool)

(assert (=> b!7274701 (= c!1354507 (is-Star!18834 (h!77307 (exprs!8274 lt!2596525))))))

(assert (=> b!7274701 (= e!4362401 e!4362399)))

(declare-fun bm!663622 () Bool)

(assert (=> bm!663622 (= call!663622 call!663625)))

(declare-fun b!7274702 () Bool)

(assert (=> b!7274702 (= e!4362403 (set.union call!663624 call!663622))))

(assert (= (and d!2264246 c!1354503) b!7274698))

(assert (= (and d!2264246 (not c!1354503)) b!7274694))

(assert (= (and b!7274694 c!1354506) b!7274697))

(assert (= (and b!7274694 (not c!1354506)) b!7274692))

(assert (= (and b!7274692 res!2948886) b!7274700))

(assert (= (and b!7274692 c!1354504) b!7274702))

(assert (= (and b!7274692 (not c!1354504)) b!7274699))

(assert (= (and b!7274699 c!1354505) b!7274696))

(assert (= (and b!7274699 (not c!1354505)) b!7274701))

(assert (= (and b!7274701 c!1354507) b!7274693))

(assert (= (and b!7274701 (not c!1354507)) b!7274695))

(assert (= (or b!7274696 b!7274693) bm!663621))

(assert (= (or b!7274696 b!7274693) bm!663619))

(assert (= (or b!7274702 bm!663621) bm!663620))

(assert (= (or b!7274702 bm!663619) bm!663622))

(assert (= (or b!7274697 b!7274702) bm!663617))

(assert (= (or b!7274697 bm!663622) bm!663618))

(declare-fun m!7961446 () Bool)

(assert (=> bm!663617 m!7961446))

(declare-fun m!7961448 () Bool)

(assert (=> bm!663620 m!7961448))

(declare-fun m!7961450 () Bool)

(assert (=> b!7274700 m!7961450))

(declare-fun m!7961452 () Bool)

(assert (=> bm!663618 m!7961452))

(declare-fun m!7961454 () Bool)

(assert (=> b!7274698 m!7961454))

(assert (=> bm!663588 d!2264246))

(declare-fun b!7274704 () Bool)

(declare-fun e!4362406 () List!70983)

(assert (=> b!7274704 (= e!4362406 (Cons!70859 (h!77307 (t!385055 (exprs!8274 ct1!250))) (++!16728 (t!385055 (t!385055 (exprs!8274 ct1!250))) (exprs!8274 ct2!346))))))

(declare-fun b!7274705 () Bool)

(declare-fun res!2948888 () Bool)

(declare-fun e!4362405 () Bool)

(assert (=> b!7274705 (=> (not res!2948888) (not e!4362405))))

(declare-fun lt!2596587 () List!70983)

(assert (=> b!7274705 (= res!2948888 (= (size!41840 lt!2596587) (+ (size!41840 (t!385055 (exprs!8274 ct1!250))) (size!41840 (exprs!8274 ct2!346)))))))

(declare-fun b!7274706 () Bool)

(assert (=> b!7274706 (= e!4362405 (or (not (= (exprs!8274 ct2!346) Nil!70859)) (= lt!2596587 (t!385055 (exprs!8274 ct1!250)))))))

(declare-fun b!7274703 () Bool)

(assert (=> b!7274703 (= e!4362406 (exprs!8274 ct2!346))))

(declare-fun d!2264248 () Bool)

(assert (=> d!2264248 e!4362405))

(declare-fun res!2948887 () Bool)

(assert (=> d!2264248 (=> (not res!2948887) (not e!4362405))))

(assert (=> d!2264248 (= res!2948887 (= (content!14793 lt!2596587) (set.union (content!14793 (t!385055 (exprs!8274 ct1!250))) (content!14793 (exprs!8274 ct2!346)))))))

(assert (=> d!2264248 (= lt!2596587 e!4362406)))

(declare-fun c!1354508 () Bool)

(assert (=> d!2264248 (= c!1354508 (is-Nil!70859 (t!385055 (exprs!8274 ct1!250))))))

(assert (=> d!2264248 (= (++!16728 (t!385055 (exprs!8274 ct1!250)) (exprs!8274 ct2!346)) lt!2596587)))

(assert (= (and d!2264248 c!1354508) b!7274703))

(assert (= (and d!2264248 (not c!1354508)) b!7274704))

(assert (= (and d!2264248 res!2948887) b!7274705))

(assert (= (and b!7274705 res!2948888) b!7274706))

(declare-fun m!7961456 () Bool)

(assert (=> b!7274704 m!7961456))

(declare-fun m!7961458 () Bool)

(assert (=> b!7274705 m!7961458))

(assert (=> b!7274705 m!7961438))

(assert (=> b!7274705 m!7961312))

(declare-fun m!7961460 () Bool)

(assert (=> d!2264248 m!7961460))

(declare-fun m!7961462 () Bool)

(assert (=> d!2264248 m!7961462))

(assert (=> d!2264248 m!7961318))

(assert (=> b!7274552 d!2264248))

(assert (=> d!2264180 d!2264166))

(declare-fun d!2264250 () Bool)

(assert (=> d!2264250 (= (flatMap!2933 lt!2596520 lambda!449575) (dynLambda!28972 lambda!449575 lt!2596525))))

(assert (=> d!2264250 true))

(declare-fun _$13!4647 () Unit!164274)

(assert (=> d!2264250 (= (choose!56467 lt!2596520 lt!2596525 lambda!449575) _$13!4647)))

(declare-fun b_lambda!280733 () Bool)

(assert (=> (not b_lambda!280733) (not d!2264250)))

(declare-fun bs!1911893 () Bool)

(assert (= bs!1911893 d!2264250))

(assert (=> bs!1911893 m!7961224))

(assert (=> bs!1911893 m!7961330))

(assert (=> d!2264180 d!2264250))

(declare-fun d!2264252 () Bool)

(assert (=> d!2264252 (= (isEmpty!40754 s!7854) (is-Nil!70860 s!7854))))

(assert (=> d!2264148 d!2264252))

(declare-fun d!2264254 () Bool)

(declare-fun c!1354511 () Bool)

(assert (=> d!2264254 (= c!1354511 (is-Nil!70859 lt!2596564))))

(declare-fun e!4362409 () (Set Regex!18834))

(assert (=> d!2264254 (= (content!14793 lt!2596564) e!4362409)))

(declare-fun b!7274711 () Bool)

(assert (=> b!7274711 (= e!4362409 (as set.empty (Set Regex!18834)))))

(declare-fun b!7274712 () Bool)

(assert (=> b!7274712 (= e!4362409 (set.union (set.insert (h!77307 lt!2596564) (as set.empty (Set Regex!18834))) (content!14793 (t!385055 lt!2596564))))))

(assert (= (and d!2264254 c!1354511) b!7274711))

(assert (= (and d!2264254 (not c!1354511)) b!7274712))

(declare-fun m!7961464 () Bool)

(assert (=> b!7274712 m!7961464))

(declare-fun m!7961466 () Bool)

(assert (=> b!7274712 m!7961466))

(assert (=> d!2264172 d!2264254))

(declare-fun d!2264256 () Bool)

(declare-fun c!1354512 () Bool)

(assert (=> d!2264256 (= c!1354512 (is-Nil!70859 (exprs!8274 ct1!250)))))

(declare-fun e!4362410 () (Set Regex!18834))

(assert (=> d!2264256 (= (content!14793 (exprs!8274 ct1!250)) e!4362410)))

(declare-fun b!7274713 () Bool)

(assert (=> b!7274713 (= e!4362410 (as set.empty (Set Regex!18834)))))

(declare-fun b!7274714 () Bool)

(assert (=> b!7274714 (= e!4362410 (set.union (set.insert (h!77307 (exprs!8274 ct1!250)) (as set.empty (Set Regex!18834))) (content!14793 (t!385055 (exprs!8274 ct1!250)))))))

(assert (= (and d!2264256 c!1354512) b!7274713))

(assert (= (and d!2264256 (not c!1354512)) b!7274714))

(declare-fun m!7961468 () Bool)

(assert (=> b!7274714 m!7961468))

(assert (=> b!7274714 m!7961462))

(assert (=> d!2264172 d!2264256))

(declare-fun d!2264258 () Bool)

(declare-fun c!1354513 () Bool)

(assert (=> d!2264258 (= c!1354513 (is-Nil!70859 (exprs!8274 ct2!346)))))

(declare-fun e!4362411 () (Set Regex!18834))

(assert (=> d!2264258 (= (content!14793 (exprs!8274 ct2!346)) e!4362411)))

(declare-fun b!7274715 () Bool)

(assert (=> b!7274715 (= e!4362411 (as set.empty (Set Regex!18834)))))

(declare-fun b!7274716 () Bool)

(assert (=> b!7274716 (= e!4362411 (set.union (set.insert (h!77307 (exprs!8274 ct2!346)) (as set.empty (Set Regex!18834))) (content!14793 (t!385055 (exprs!8274 ct2!346)))))))

(assert (= (and d!2264258 c!1354513) b!7274715))

(assert (= (and d!2264258 (not c!1354513)) b!7274716))

(declare-fun m!7961470 () Bool)

(assert (=> b!7274716 m!7961470))

(declare-fun m!7961472 () Bool)

(assert (=> b!7274716 m!7961472))

(assert (=> d!2264172 d!2264258))

(declare-fun d!2264260 () Bool)

(declare-fun res!2948889 () Bool)

(declare-fun e!4362412 () Bool)

(assert (=> d!2264260 (=> res!2948889 e!4362412)))

(assert (=> d!2264260 (= res!2948889 (is-Nil!70859 (++!16728 (exprs!8274 ct1!250) (exprs!8274 ct2!346))))))

(assert (=> d!2264260 (= (forall!17659 (++!16728 (exprs!8274 ct1!250) (exprs!8274 ct2!346)) lambda!449574) e!4362412)))

(declare-fun b!7274717 () Bool)

(declare-fun e!4362413 () Bool)

(assert (=> b!7274717 (= e!4362412 e!4362413)))

(declare-fun res!2948890 () Bool)

(assert (=> b!7274717 (=> (not res!2948890) (not e!4362413))))

(assert (=> b!7274717 (= res!2948890 (dynLambda!28974 lambda!449574 (h!77307 (++!16728 (exprs!8274 ct1!250) (exprs!8274 ct2!346)))))))

(declare-fun b!7274718 () Bool)

(assert (=> b!7274718 (= e!4362413 (forall!17659 (t!385055 (++!16728 (exprs!8274 ct1!250) (exprs!8274 ct2!346))) lambda!449574))))

(assert (= (and d!2264260 (not res!2948889)) b!7274717))

(assert (= (and b!7274717 res!2948890) b!7274718))

(declare-fun b_lambda!280735 () Bool)

(assert (=> (not b_lambda!280735) (not b!7274717)))

(declare-fun m!7961474 () Bool)

(assert (=> b!7274717 m!7961474))

(declare-fun m!7961476 () Bool)

(assert (=> b!7274718 m!7961476))

(assert (=> d!2264178 d!2264260))

(assert (=> d!2264178 d!2264172))

(declare-fun d!2264262 () Bool)

(assert (=> d!2264262 (forall!17659 (++!16728 (exprs!8274 ct1!250) (exprs!8274 ct2!346)) lambda!449574)))

(assert (=> d!2264262 true))

(declare-fun _$78!832 () Unit!164274)

(assert (=> d!2264262 (= (choose!56468 (exprs!8274 ct1!250) (exprs!8274 ct2!346) lambda!449574) _$78!832)))

(declare-fun bs!1911894 () Bool)

(assert (= bs!1911894 d!2264262))

(assert (=> bs!1911894 m!7961222))

(assert (=> bs!1911894 m!7961222))

(assert (=> bs!1911894 m!7961324))

(assert (=> d!2264178 d!2264262))

(declare-fun d!2264264 () Bool)

(declare-fun res!2948891 () Bool)

(declare-fun e!4362414 () Bool)

(assert (=> d!2264264 (=> res!2948891 e!4362414)))

(assert (=> d!2264264 (= res!2948891 (is-Nil!70859 (exprs!8274 ct1!250)))))

(assert (=> d!2264264 (= (forall!17659 (exprs!8274 ct1!250) lambda!449574) e!4362414)))

(declare-fun b!7274719 () Bool)

(declare-fun e!4362415 () Bool)

(assert (=> b!7274719 (= e!4362414 e!4362415)))

(declare-fun res!2948892 () Bool)

(assert (=> b!7274719 (=> (not res!2948892) (not e!4362415))))

(assert (=> b!7274719 (= res!2948892 (dynLambda!28974 lambda!449574 (h!77307 (exprs!8274 ct1!250))))))

(declare-fun b!7274720 () Bool)

(assert (=> b!7274720 (= e!4362415 (forall!17659 (t!385055 (exprs!8274 ct1!250)) lambda!449574))))

(assert (= (and d!2264264 (not res!2948891)) b!7274719))

(assert (= (and b!7274719 res!2948892) b!7274720))

(declare-fun b_lambda!280737 () Bool)

(assert (=> (not b_lambda!280737) (not b!7274719)))

(declare-fun m!7961478 () Bool)

(assert (=> b!7274719 m!7961478))

(declare-fun m!7961480 () Bool)

(assert (=> b!7274720 m!7961480))

(assert (=> d!2264178 d!2264264))

(declare-fun d!2264266 () Bool)

(declare-fun c!1354514 () Bool)

(assert (=> d!2264266 (= c!1354514 (isEmpty!40754 (tail!14539 s!7854)))))

(declare-fun e!4362416 () Bool)

(assert (=> d!2264266 (= (matchZipper!3738 (derivationStepZipper!3570 (set.insert ct2!346 (as set.empty (Set Context!15548))) (head!15032 s!7854)) (tail!14539 s!7854)) e!4362416)))

(declare-fun b!7274721 () Bool)

(assert (=> b!7274721 (= e!4362416 (nullableZipper!3034 (derivationStepZipper!3570 (set.insert ct2!346 (as set.empty (Set Context!15548))) (head!15032 s!7854))))))

(declare-fun b!7274722 () Bool)

(assert (=> b!7274722 (= e!4362416 (matchZipper!3738 (derivationStepZipper!3570 (derivationStepZipper!3570 (set.insert ct2!346 (as set.empty (Set Context!15548))) (head!15032 s!7854)) (head!15032 (tail!14539 s!7854))) (tail!14539 (tail!14539 s!7854))))))

(assert (= (and d!2264266 c!1354514) b!7274721))

(assert (= (and d!2264266 (not c!1354514)) b!7274722))

(assert (=> d!2264266 m!7961274))

(declare-fun m!7961482 () Bool)

(assert (=> d!2264266 m!7961482))

(assert (=> b!7274721 m!7961272))

(declare-fun m!7961484 () Bool)

(assert (=> b!7274721 m!7961484))

(assert (=> b!7274722 m!7961274))

(declare-fun m!7961486 () Bool)

(assert (=> b!7274722 m!7961486))

(assert (=> b!7274722 m!7961272))

(assert (=> b!7274722 m!7961486))

(declare-fun m!7961488 () Bool)

(assert (=> b!7274722 m!7961488))

(assert (=> b!7274722 m!7961274))

(declare-fun m!7961490 () Bool)

(assert (=> b!7274722 m!7961490))

(assert (=> b!7274722 m!7961488))

(assert (=> b!7274722 m!7961490))

(declare-fun m!7961492 () Bool)

(assert (=> b!7274722 m!7961492))

(assert (=> b!7274507 d!2264266))

(declare-fun bs!1911895 () Bool)

(declare-fun d!2264268 () Bool)

(assert (= bs!1911895 (and d!2264268 b!7274469)))

(declare-fun lambda!449610 () Int)

(assert (=> bs!1911895 (= (= (head!15032 s!7854) (h!77308 s!7854)) (= lambda!449610 lambda!449575))))

(declare-fun bs!1911896 () Bool)

(assert (= bs!1911896 (and d!2264268 d!2264182)))

(assert (=> bs!1911896 (= (= (head!15032 s!7854) (h!77308 s!7854)) (= lambda!449610 lambda!449599))))

(assert (=> d!2264268 true))

(assert (=> d!2264268 (= (derivationStepZipper!3570 (set.insert ct2!346 (as set.empty (Set Context!15548))) (head!15032 s!7854)) (flatMap!2933 (set.insert ct2!346 (as set.empty (Set Context!15548))) lambda!449610))))

(declare-fun bs!1911897 () Bool)

(assert (= bs!1911897 d!2264268))

(assert (=> bs!1911897 m!7961200))

(declare-fun m!7961494 () Bool)

(assert (=> bs!1911897 m!7961494))

(assert (=> b!7274507 d!2264268))

(declare-fun d!2264270 () Bool)

(assert (=> d!2264270 (= (head!15032 s!7854) (h!77308 s!7854))))

(assert (=> b!7274507 d!2264270))

(declare-fun d!2264272 () Bool)

(assert (=> d!2264272 (= (tail!14539 s!7854) (t!385056 s!7854))))

(assert (=> b!7274507 d!2264272))

(declare-fun d!2264274 () Bool)

(declare-fun lambda!449613 () Int)

(declare-fun exists!4492 ((Set Context!15548) Int) Bool)

(assert (=> d!2264274 (= (nullableZipper!3034 (set.insert ct2!346 (as set.empty (Set Context!15548)))) (exists!4492 (set.insert ct2!346 (as set.empty (Set Context!15548))) lambda!449613))))

(declare-fun bs!1911898 () Bool)

(assert (= bs!1911898 d!2264274))

(assert (=> bs!1911898 m!7961200))

(declare-fun m!7961496 () Bool)

(assert (=> bs!1911898 m!7961496))

(assert (=> b!7274506 d!2264274))

(declare-fun e!4362419 () Bool)

(assert (=> b!7274567 (= tp!2041845 e!4362419)))

(declare-fun b!7274733 () Bool)

(assert (=> b!7274733 (= e!4362419 tp_is_empty!47133)))

(declare-fun b!7274734 () Bool)

(declare-fun tp!2041884 () Bool)

(declare-fun tp!2041885 () Bool)

(assert (=> b!7274734 (= e!4362419 (and tp!2041884 tp!2041885))))

(declare-fun b!7274736 () Bool)

(declare-fun tp!2041883 () Bool)

(declare-fun tp!2041881 () Bool)

(assert (=> b!7274736 (= e!4362419 (and tp!2041883 tp!2041881))))

(declare-fun b!7274735 () Bool)

(declare-fun tp!2041882 () Bool)

(assert (=> b!7274735 (= e!4362419 tp!2041882)))

(assert (= (and b!7274567 (is-ElementMatch!18834 (h!77307 (exprs!8274 ct1!250)))) b!7274733))

(assert (= (and b!7274567 (is-Concat!27679 (h!77307 (exprs!8274 ct1!250)))) b!7274734))

(assert (= (and b!7274567 (is-Star!18834 (h!77307 (exprs!8274 ct1!250)))) b!7274735))

(assert (= (and b!7274567 (is-Union!18834 (h!77307 (exprs!8274 ct1!250)))) b!7274736))

(declare-fun b!7274737 () Bool)

(declare-fun e!4362420 () Bool)

(declare-fun tp!2041886 () Bool)

(declare-fun tp!2041887 () Bool)

(assert (=> b!7274737 (= e!4362420 (and tp!2041886 tp!2041887))))

(assert (=> b!7274567 (= tp!2041846 e!4362420)))

(assert (= (and b!7274567 (is-Cons!70859 (t!385055 (exprs!8274 ct1!250)))) b!7274737))

(declare-fun b!7274738 () Bool)

(declare-fun e!4362421 () Bool)

(declare-fun tp!2041888 () Bool)

(assert (=> b!7274738 (= e!4362421 (and tp_is_empty!47133 tp!2041888))))

(assert (=> b!7274573 (= tp!2041851 e!4362421)))

(assert (= (and b!7274573 (is-Cons!70860 (t!385056 (t!385056 s!7854)))) b!7274738))

(declare-fun e!4362422 () Bool)

(assert (=> b!7274568 (= tp!2041847 e!4362422)))

(declare-fun b!7274739 () Bool)

(assert (=> b!7274739 (= e!4362422 tp_is_empty!47133)))

(declare-fun b!7274740 () Bool)

(declare-fun tp!2041892 () Bool)

(declare-fun tp!2041893 () Bool)

(assert (=> b!7274740 (= e!4362422 (and tp!2041892 tp!2041893))))

(declare-fun b!7274742 () Bool)

(declare-fun tp!2041891 () Bool)

(declare-fun tp!2041889 () Bool)

(assert (=> b!7274742 (= e!4362422 (and tp!2041891 tp!2041889))))

(declare-fun b!7274741 () Bool)

(declare-fun tp!2041890 () Bool)

(assert (=> b!7274741 (= e!4362422 tp!2041890)))

(assert (= (and b!7274568 (is-ElementMatch!18834 (h!77307 (exprs!8274 ct2!346)))) b!7274739))

(assert (= (and b!7274568 (is-Concat!27679 (h!77307 (exprs!8274 ct2!346)))) b!7274740))

(assert (= (and b!7274568 (is-Star!18834 (h!77307 (exprs!8274 ct2!346)))) b!7274741))

(assert (= (and b!7274568 (is-Union!18834 (h!77307 (exprs!8274 ct2!346)))) b!7274742))

(declare-fun b!7274743 () Bool)

(declare-fun e!4362423 () Bool)

(declare-fun tp!2041894 () Bool)

(declare-fun tp!2041895 () Bool)

(assert (=> b!7274743 (= e!4362423 (and tp!2041894 tp!2041895))))

(assert (=> b!7274568 (= tp!2041848 e!4362423)))

(assert (= (and b!7274568 (is-Cons!70859 (t!385055 (exprs!8274 ct2!346)))) b!7274743))

(declare-fun b_lambda!280739 () Bool)

(assert (= b_lambda!280729 (or b!7274469 b_lambda!280739)))

(assert (=> d!2264232 d!2264188))

(declare-fun b_lambda!280741 () Bool)

(assert (= b_lambda!280737 (or b!7274469 b_lambda!280741)))

(declare-fun bs!1911899 () Bool)

(declare-fun d!2264276 () Bool)

(assert (= bs!1911899 (and d!2264276 b!7274469)))

(declare-fun validRegex!9599 (Regex!18834) Bool)

(assert (=> bs!1911899 (= (dynLambda!28974 lambda!449574 (h!77307 (exprs!8274 ct1!250))) (validRegex!9599 (h!77307 (exprs!8274 ct1!250))))))

(declare-fun m!7961498 () Bool)

(assert (=> bs!1911899 m!7961498))

(assert (=> b!7274719 d!2264276))

(declare-fun b_lambda!280743 () Bool)

(assert (= b_lambda!280731 (or d!2264164 b_lambda!280743)))

(declare-fun bs!1911900 () Bool)

(declare-fun d!2264278 () Bool)

(assert (= bs!1911900 (and d!2264278 d!2264164)))

(assert (=> bs!1911900 (= (dynLambda!28974 lambda!449596 (h!77307 (exprs!8274 ct1!250))) (nullable!8017 (h!77307 (exprs!8274 ct1!250))))))

(assert (=> bs!1911900 m!7961194))

(assert (=> b!7274690 d!2264278))

(declare-fun b_lambda!280745 () Bool)

(assert (= b_lambda!280725 (or d!2264150 b_lambda!280745)))

(declare-fun bs!1911901 () Bool)

(declare-fun d!2264280 () Bool)

(assert (= bs!1911901 (and d!2264280 d!2264150)))

(assert (=> bs!1911901 (= (dynLambda!28974 lambda!449592 (h!77307 (exprs!8274 ct2!346))) (validRegex!9599 (h!77307 (exprs!8274 ct2!346))))))

(declare-fun m!7961500 () Bool)

(assert (=> bs!1911901 m!7961500))

(assert (=> b!7274608 d!2264280))

(declare-fun b_lambda!280747 () Bool)

(assert (= b_lambda!280733 (or b!7274469 b_lambda!280747)))

(assert (=> d!2264250 d!2264186))

(declare-fun b_lambda!280749 () Bool)

(assert (= b_lambda!280727 (or d!2264154 b_lambda!280749)))

(declare-fun bs!1911902 () Bool)

(declare-fun d!2264282 () Bool)

(assert (= bs!1911902 (and d!2264282 d!2264154)))

(assert (=> bs!1911902 (= (dynLambda!28974 lambda!449593 (h!77307 (exprs!8274 ct1!250))) (validRegex!9599 (h!77307 (exprs!8274 ct1!250))))))

(assert (=> bs!1911902 m!7961498))

(assert (=> b!7274667 d!2264282))

(declare-fun b_lambda!280751 () Bool)

(assert (= b_lambda!280735 (or b!7274469 b_lambda!280751)))

(declare-fun bs!1911903 () Bool)

(declare-fun d!2264284 () Bool)

(assert (= bs!1911903 (and d!2264284 b!7274469)))

(assert (=> bs!1911903 (= (dynLambda!28974 lambda!449574 (h!77307 (++!16728 (exprs!8274 ct1!250) (exprs!8274 ct2!346)))) (validRegex!9599 (h!77307 (++!16728 (exprs!8274 ct1!250) (exprs!8274 ct2!346)))))))

(declare-fun m!7961502 () Bool)

(assert (=> bs!1911903 m!7961502))

(assert (=> b!7274717 d!2264284))

(push 1)

(assert (not b!7274675))

(assert (not b!7274712))

(assert (not b!7274720))

(assert (not bs!1911902))

(assert (not b!7274721))

(assert (not b!7274704))

(assert (not b_lambda!280747))

(assert (not b_lambda!280743))

(assert (not b!7274738))

(assert (not bm!663612))

(assert (not b!7274740))

(assert (not bm!663609))

(assert (not d!2264248))

(assert (not b_lambda!280749))

(assert (not bm!663616))

(assert (not b_lambda!280745))

(assert (not b!7274714))

(assert (not b!7274705))

(assert (not setNonEmpty!53648))

(assert (not bs!1911901))

(assert (not bm!663610))

(assert (not bs!1911903))

(assert (not d!2264274))

(assert (not d!2264220))

(assert (not b!7274664))

(assert (not bm!663595))

(assert (not d!2264250))

(assert (not d!2264232))

(assert (not bm!663620))

(assert (not b!7274685))

(assert (not b_lambda!280741))

(assert (not b!7274737))

(assert (not b!7274716))

(assert (not b!7274670))

(assert (not bm!663617))

(assert (not d!2264224))

(assert (not b!7274676))

(assert (not b!7274743))

(assert (not b!7274689))

(assert (not bs!1911900))

(assert (not b!7274735))

(assert (not b_lambda!280739))

(assert (not b!7274741))

(assert (not b!7274612))

(assert (not b!7274674))

(assert (not b!7274609))

(assert (not b_lambda!280713))

(assert (not b_lambda!280751))

(assert (not b!7274700))

(assert (not d!2264268))

(assert (not bm!663596))

(assert (not b!7274691))

(assert (not b!7274668))

(assert (not b!7274718))

(assert tp_is_empty!47133)

(assert (not setNonEmpty!53649))

(assert (not b!7274669))

(assert (not b!7274687))

(assert (not b_lambda!280715))

(assert (not b!7274736))

(assert (not bm!663618))

(assert (not bs!1911899))

(assert (not d!2264262))

(assert (not b!7274742))

(assert (not d!2264266))

(assert (not b!7274722))

(assert (not b!7274734))

(assert (not bm!663615))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

