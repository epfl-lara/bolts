; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!715960 () Bool)

(assert start!715960)

(declare-fun b!7331259 () Bool)

(declare-fun e!4389972 () Bool)

(declare-fun tp!2081534 () Bool)

(assert (=> b!7331259 (= e!4389972 tp!2081534)))

(declare-fun b!7331260 () Bool)

(declare-fun e!4389971 () Bool)

(declare-fun tp!2081535 () Bool)

(assert (=> b!7331260 (= e!4389971 tp!2081535)))

(declare-fun b!7331261 () Bool)

(declare-fun res!2962815 () Bool)

(declare-fun e!4389967 () Bool)

(assert (=> b!7331261 (=> (not res!2962815) (not e!4389967))))

(declare-datatypes ((C!38372 0))(
  ( (C!38373 (val!29546 Int)) )
))
(declare-datatypes ((Regex!19049 0))(
  ( (ElementMatch!19049 (c!1361231 C!38372)) (Concat!27894 (regOne!38610 Regex!19049) (regTwo!38610 Regex!19049)) (EmptyExpr!19049) (Star!19049 (reg!19378 Regex!19049)) (EmptyLang!19049) (Union!19049 (regOne!38611 Regex!19049) (regTwo!38611 Regex!19049)) )
))
(declare-datatypes ((List!71545 0))(
  ( (Nil!71421) (Cons!71421 (h!77869 Regex!19049) (t!385932 List!71545)) )
))
(declare-fun lt!2608009 () List!71545)

(declare-fun isEmpty!40961 (List!71545) Bool)

(assert (=> b!7331261 (= res!2962815 (not (isEmpty!40961 lt!2608009)))))

(declare-fun b!7331262 () Bool)

(declare-fun res!2962819 () Bool)

(declare-fun e!4389970 () Bool)

(assert (=> b!7331262 (=> (not res!2962819) (not e!4389970))))

(declare-datatypes ((Context!15978 0))(
  ( (Context!15979 (exprs!8489 List!71545)) )
))
(declare-fun ct1!256 () Context!15978)

(assert (=> b!7331262 (= res!2962819 (not (isEmpty!40961 (exprs!8489 ct1!256))))))

(declare-fun b!7331263 () Bool)

(declare-fun e!4389969 () Bool)

(assert (=> b!7331263 (= e!4389970 e!4389969)))

(declare-fun res!2962817 () Bool)

(assert (=> b!7331263 (=> (not res!2962817) (not e!4389969))))

(declare-fun nullable!8150 (Regex!19049) Bool)

(assert (=> b!7331263 (= res!2962817 (nullable!8150 (h!77869 (exprs!8489 ct1!256))))))

(declare-fun c!10305 () C!38372)

(declare-fun lt!2608007 () Context!15978)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2608006 () (InoxSet Context!15978))

(declare-fun derivationStepZipperDown!2876 (Regex!19049 Context!15978 C!38372) (InoxSet Context!15978))

(assert (=> b!7331263 (= lt!2608006 (derivationStepZipperDown!2876 (h!77869 (exprs!8489 ct1!256)) lt!2608007 c!10305))))

(declare-fun tail!14730 (List!71545) List!71545)

(assert (=> b!7331263 (= lt!2608007 (Context!15979 (tail!14730 (exprs!8489 ct1!256))))))

(declare-fun b!7331264 () Bool)

(declare-fun e!4389966 () Bool)

(assert (=> b!7331264 (= e!4389966 e!4389970)))

(declare-fun res!2962818 () Bool)

(assert (=> b!7331264 (=> (not res!2962818) (not e!4389970))))

(get-info :version)

(assert (=> b!7331264 (= res!2962818 ((_ is Cons!71421) (exprs!8489 ct1!256)))))

(declare-fun ct2!352 () Context!15978)

(declare-fun ++!16871 (List!71545 List!71545) List!71545)

(assert (=> b!7331264 (= lt!2608009 (++!16871 (exprs!8489 ct1!256) (exprs!8489 ct2!352)))))

(declare-fun lambda!454747 () Int)

(declare-datatypes ((Unit!165059 0))(
  ( (Unit!165060) )
))
(declare-fun lt!2608005 () Unit!165059)

(declare-fun lemmaConcatPreservesForall!1728 (List!71545 List!71545 Int) Unit!165059)

(assert (=> b!7331264 (= lt!2608005 (lemmaConcatPreservesForall!1728 (exprs!8489 ct1!256) (exprs!8489 ct2!352) lambda!454747))))

(declare-fun res!2962820 () Bool)

(assert (=> start!715960 (=> (not res!2962820) (not e!4389966))))

(declare-fun cWitness!35 () Context!15978)

(declare-fun lt!2608008 () (InoxSet Context!15978))

(assert (=> start!715960 (= res!2962820 (select lt!2608008 cWitness!35))))

(declare-fun derivationStepZipperUp!2729 (Context!15978 C!38372) (InoxSet Context!15978))

(assert (=> start!715960 (= lt!2608008 (derivationStepZipperUp!2729 ct1!256 c!10305))))

(assert (=> start!715960 e!4389966))

(declare-fun tp_is_empty!48343 () Bool)

(assert (=> start!715960 tp_is_empty!48343))

(declare-fun e!4389968 () Bool)

(declare-fun inv!90962 (Context!15978) Bool)

(assert (=> start!715960 (and (inv!90962 cWitness!35) e!4389968)))

(assert (=> start!715960 (and (inv!90962 ct1!256) e!4389971)))

(assert (=> start!715960 (and (inv!90962 ct2!352) e!4389972)))

(declare-fun b!7331265 () Bool)

(assert (=> b!7331265 (= e!4389967 (not (inv!90962 (Context!15979 (tail!14730 lt!2608009)))))))

(declare-fun b!7331266 () Bool)

(declare-fun tp!2081533 () Bool)

(assert (=> b!7331266 (= e!4389968 tp!2081533)))

(declare-fun b!7331267 () Bool)

(assert (=> b!7331267 (= e!4389969 e!4389967)))

(declare-fun res!2962816 () Bool)

(assert (=> b!7331267 (=> (not res!2962816) (not e!4389967))))

(declare-fun lt!2608004 () (InoxSet Context!15978))

(assert (=> b!7331267 (= res!2962816 (and (= lt!2608008 ((_ map or) lt!2608006 lt!2608004)) (or (select lt!2608006 cWitness!35) (select lt!2608004 cWitness!35)) (not (select lt!2608004 cWitness!35))))))

(assert (=> b!7331267 (= lt!2608004 (derivationStepZipperUp!2729 lt!2608007 c!10305))))

(assert (= (and start!715960 res!2962820) b!7331264))

(assert (= (and b!7331264 res!2962818) b!7331262))

(assert (= (and b!7331262 res!2962819) b!7331263))

(assert (= (and b!7331263 res!2962817) b!7331267))

(assert (= (and b!7331267 res!2962816) b!7331261))

(assert (= (and b!7331261 res!2962815) b!7331265))

(assert (= start!715960 b!7331266))

(assert (= start!715960 b!7331260))

(assert (= start!715960 b!7331259))

(declare-fun m!7997368 () Bool)

(assert (=> b!7331267 m!7997368))

(declare-fun m!7997370 () Bool)

(assert (=> b!7331267 m!7997370))

(declare-fun m!7997372 () Bool)

(assert (=> b!7331267 m!7997372))

(declare-fun m!7997374 () Bool)

(assert (=> start!715960 m!7997374))

(declare-fun m!7997376 () Bool)

(assert (=> start!715960 m!7997376))

(declare-fun m!7997378 () Bool)

(assert (=> start!715960 m!7997378))

(declare-fun m!7997380 () Bool)

(assert (=> start!715960 m!7997380))

(declare-fun m!7997382 () Bool)

(assert (=> start!715960 m!7997382))

(declare-fun m!7997384 () Bool)

(assert (=> b!7331265 m!7997384))

(declare-fun m!7997386 () Bool)

(assert (=> b!7331265 m!7997386))

(declare-fun m!7997388 () Bool)

(assert (=> b!7331262 m!7997388))

(declare-fun m!7997390 () Bool)

(assert (=> b!7331264 m!7997390))

(declare-fun m!7997392 () Bool)

(assert (=> b!7331264 m!7997392))

(declare-fun m!7997394 () Bool)

(assert (=> b!7331261 m!7997394))

(declare-fun m!7997396 () Bool)

(assert (=> b!7331263 m!7997396))

(declare-fun m!7997398 () Bool)

(assert (=> b!7331263 m!7997398))

(declare-fun m!7997400 () Bool)

(assert (=> b!7331263 m!7997400))

(check-sat (not b!7331264) tp_is_empty!48343 (not b!7331266) (not b!7331262) (not start!715960) (not b!7331259) (not b!7331263) (not b!7331265) (not b!7331260) (not b!7331261) (not b!7331267))
(check-sat)
(get-model)

(declare-fun bm!667814 () Bool)

(declare-fun call!667819 () (InoxSet Context!15978))

(assert (=> bm!667814 (= call!667819 (derivationStepZipperDown!2876 (h!77869 (exprs!8489 ct1!256)) (Context!15979 (t!385932 (exprs!8489 ct1!256))) c!10305))))

(declare-fun b!7331315 () Bool)

(declare-fun e!4390000 () (InoxSet Context!15978))

(assert (=> b!7331315 (= e!4390000 ((as const (Array Context!15978 Bool)) false))))

(declare-fun b!7331316 () Bool)

(assert (=> b!7331316 (= e!4390000 call!667819)))

(declare-fun b!7331317 () Bool)

(declare-fun e!4390002 () Bool)

(assert (=> b!7331317 (= e!4390002 (nullable!8150 (h!77869 (exprs!8489 ct1!256))))))

(declare-fun e!4390001 () (InoxSet Context!15978))

(declare-fun b!7331318 () Bool)

(assert (=> b!7331318 (= e!4390001 ((_ map or) call!667819 (derivationStepZipperUp!2729 (Context!15979 (t!385932 (exprs!8489 ct1!256))) c!10305)))))

(declare-fun d!2276613 () Bool)

(declare-fun c!1361252 () Bool)

(assert (=> d!2276613 (= c!1361252 e!4390002)))

(declare-fun res!2962828 () Bool)

(assert (=> d!2276613 (=> (not res!2962828) (not e!4390002))))

(assert (=> d!2276613 (= res!2962828 ((_ is Cons!71421) (exprs!8489 ct1!256)))))

(assert (=> d!2276613 (= (derivationStepZipperUp!2729 ct1!256 c!10305) e!4390001)))

(declare-fun b!7331319 () Bool)

(assert (=> b!7331319 (= e!4390001 e!4390000)))

(declare-fun c!1361253 () Bool)

(assert (=> b!7331319 (= c!1361253 ((_ is Cons!71421) (exprs!8489 ct1!256)))))

(assert (= (and d!2276613 res!2962828) b!7331317))

(assert (= (and d!2276613 c!1361252) b!7331318))

(assert (= (and d!2276613 (not c!1361252)) b!7331319))

(assert (= (and b!7331319 c!1361253) b!7331316))

(assert (= (and b!7331319 (not c!1361253)) b!7331315))

(assert (= (or b!7331318 b!7331316) bm!667814))

(declare-fun m!7997416 () Bool)

(assert (=> bm!667814 m!7997416))

(assert (=> b!7331317 m!7997396))

(declare-fun m!7997418 () Bool)

(assert (=> b!7331318 m!7997418))

(assert (=> start!715960 d!2276613))

(declare-fun bs!1917445 () Bool)

(declare-fun d!2276625 () Bool)

(assert (= bs!1917445 (and d!2276625 b!7331264)))

(declare-fun lambda!454756 () Int)

(assert (=> bs!1917445 (= lambda!454756 lambda!454747)))

(declare-fun forall!17888 (List!71545 Int) Bool)

(assert (=> d!2276625 (= (inv!90962 cWitness!35) (forall!17888 (exprs!8489 cWitness!35) lambda!454756))))

(declare-fun bs!1917446 () Bool)

(assert (= bs!1917446 d!2276625))

(declare-fun m!7997430 () Bool)

(assert (=> bs!1917446 m!7997430))

(assert (=> start!715960 d!2276625))

(declare-fun bs!1917447 () Bool)

(declare-fun d!2276631 () Bool)

(assert (= bs!1917447 (and d!2276631 b!7331264)))

(declare-fun lambda!454757 () Int)

(assert (=> bs!1917447 (= lambda!454757 lambda!454747)))

(declare-fun bs!1917448 () Bool)

(assert (= bs!1917448 (and d!2276631 d!2276625)))

(assert (=> bs!1917448 (= lambda!454757 lambda!454756)))

(assert (=> d!2276631 (= (inv!90962 ct1!256) (forall!17888 (exprs!8489 ct1!256) lambda!454757))))

(declare-fun bs!1917449 () Bool)

(assert (= bs!1917449 d!2276631))

(declare-fun m!7997432 () Bool)

(assert (=> bs!1917449 m!7997432))

(assert (=> start!715960 d!2276631))

(declare-fun bs!1917450 () Bool)

(declare-fun d!2276633 () Bool)

(assert (= bs!1917450 (and d!2276633 b!7331264)))

(declare-fun lambda!454758 () Int)

(assert (=> bs!1917450 (= lambda!454758 lambda!454747)))

(declare-fun bs!1917451 () Bool)

(assert (= bs!1917451 (and d!2276633 d!2276625)))

(assert (=> bs!1917451 (= lambda!454758 lambda!454756)))

(declare-fun bs!1917452 () Bool)

(assert (= bs!1917452 (and d!2276633 d!2276631)))

(assert (=> bs!1917452 (= lambda!454758 lambda!454757)))

(assert (=> d!2276633 (= (inv!90962 ct2!352) (forall!17888 (exprs!8489 ct2!352) lambda!454758))))

(declare-fun bs!1917453 () Bool)

(assert (= bs!1917453 d!2276633))

(declare-fun m!7997434 () Bool)

(assert (=> bs!1917453 m!7997434))

(assert (=> start!715960 d!2276633))

(declare-fun bs!1917454 () Bool)

(declare-fun d!2276635 () Bool)

(assert (= bs!1917454 (and d!2276635 b!7331264)))

(declare-fun lambda!454759 () Int)

(assert (=> bs!1917454 (= lambda!454759 lambda!454747)))

(declare-fun bs!1917455 () Bool)

(assert (= bs!1917455 (and d!2276635 d!2276625)))

(assert (=> bs!1917455 (= lambda!454759 lambda!454756)))

(declare-fun bs!1917456 () Bool)

(assert (= bs!1917456 (and d!2276635 d!2276631)))

(assert (=> bs!1917456 (= lambda!454759 lambda!454757)))

(declare-fun bs!1917457 () Bool)

(assert (= bs!1917457 (and d!2276635 d!2276633)))

(assert (=> bs!1917457 (= lambda!454759 lambda!454758)))

(assert (=> d!2276635 (= (inv!90962 (Context!15979 (tail!14730 lt!2608009))) (forall!17888 (exprs!8489 (Context!15979 (tail!14730 lt!2608009))) lambda!454759))))

(declare-fun bs!1917458 () Bool)

(assert (= bs!1917458 d!2276635))

(declare-fun m!7997436 () Bool)

(assert (=> bs!1917458 m!7997436))

(assert (=> b!7331265 d!2276635))

(declare-fun d!2276637 () Bool)

(assert (=> d!2276637 (= (tail!14730 lt!2608009) (t!385932 lt!2608009))))

(assert (=> b!7331265 d!2276637))

(declare-fun d!2276641 () Bool)

(assert (=> d!2276641 (= (isEmpty!40961 lt!2608009) ((_ is Nil!71421) lt!2608009))))

(assert (=> b!7331261 d!2276641))

(declare-fun d!2276643 () Bool)

(assert (=> d!2276643 (= (isEmpty!40961 (exprs!8489 ct1!256)) ((_ is Nil!71421) (exprs!8489 ct1!256)))))

(assert (=> b!7331262 d!2276643))

(declare-fun bm!667821 () Bool)

(declare-fun call!667826 () (InoxSet Context!15978))

(assert (=> bm!667821 (= call!667826 (derivationStepZipperDown!2876 (h!77869 (exprs!8489 lt!2608007)) (Context!15979 (t!385932 (exprs!8489 lt!2608007))) c!10305))))

(declare-fun b!7331343 () Bool)

(declare-fun e!4390015 () (InoxSet Context!15978))

(assert (=> b!7331343 (= e!4390015 ((as const (Array Context!15978 Bool)) false))))

(declare-fun b!7331344 () Bool)

(assert (=> b!7331344 (= e!4390015 call!667826)))

(declare-fun b!7331345 () Bool)

(declare-fun e!4390017 () Bool)

(assert (=> b!7331345 (= e!4390017 (nullable!8150 (h!77869 (exprs!8489 lt!2608007))))))

(declare-fun b!7331346 () Bool)

(declare-fun e!4390016 () (InoxSet Context!15978))

(assert (=> b!7331346 (= e!4390016 ((_ map or) call!667826 (derivationStepZipperUp!2729 (Context!15979 (t!385932 (exprs!8489 lt!2608007))) c!10305)))))

(declare-fun d!2276645 () Bool)

(declare-fun c!1361262 () Bool)

(assert (=> d!2276645 (= c!1361262 e!4390017)))

(declare-fun res!2962836 () Bool)

(assert (=> d!2276645 (=> (not res!2962836) (not e!4390017))))

(assert (=> d!2276645 (= res!2962836 ((_ is Cons!71421) (exprs!8489 lt!2608007)))))

(assert (=> d!2276645 (= (derivationStepZipperUp!2729 lt!2608007 c!10305) e!4390016)))

(declare-fun b!7331347 () Bool)

(assert (=> b!7331347 (= e!4390016 e!4390015)))

(declare-fun c!1361263 () Bool)

(assert (=> b!7331347 (= c!1361263 ((_ is Cons!71421) (exprs!8489 lt!2608007)))))

(assert (= (and d!2276645 res!2962836) b!7331345))

(assert (= (and d!2276645 c!1361262) b!7331346))

(assert (= (and d!2276645 (not c!1361262)) b!7331347))

(assert (= (and b!7331347 c!1361263) b!7331344))

(assert (= (and b!7331347 (not c!1361263)) b!7331343))

(assert (= (or b!7331346 b!7331344) bm!667821))

(declare-fun m!7997464 () Bool)

(assert (=> bm!667821 m!7997464))

(declare-fun m!7997466 () Bool)

(assert (=> b!7331345 m!7997466))

(declare-fun m!7997468 () Bool)

(assert (=> b!7331346 m!7997468))

(assert (=> b!7331267 d!2276645))

(declare-fun b!7331369 () Bool)

(declare-fun e!4390031 () List!71545)

(assert (=> b!7331369 (= e!4390031 (Cons!71421 (h!77869 (exprs!8489 ct1!256)) (++!16871 (t!385932 (exprs!8489 ct1!256)) (exprs!8489 ct2!352))))))

(declare-fun d!2276651 () Bool)

(declare-fun e!4390030 () Bool)

(assert (=> d!2276651 e!4390030))

(declare-fun res!2962842 () Bool)

(assert (=> d!2276651 (=> (not res!2962842) (not e!4390030))))

(declare-fun lt!2608018 () List!71545)

(declare-fun content!14979 (List!71545) (InoxSet Regex!19049))

(assert (=> d!2276651 (= res!2962842 (= (content!14979 lt!2608018) ((_ map or) (content!14979 (exprs!8489 ct1!256)) (content!14979 (exprs!8489 ct2!352)))))))

(assert (=> d!2276651 (= lt!2608018 e!4390031)))

(declare-fun c!1361268 () Bool)

(assert (=> d!2276651 (= c!1361268 ((_ is Nil!71421) (exprs!8489 ct1!256)))))

(assert (=> d!2276651 (= (++!16871 (exprs!8489 ct1!256) (exprs!8489 ct2!352)) lt!2608018)))

(declare-fun b!7331371 () Bool)

(assert (=> b!7331371 (= e!4390030 (or (not (= (exprs!8489 ct2!352) Nil!71421)) (= lt!2608018 (exprs!8489 ct1!256))))))

(declare-fun b!7331370 () Bool)

(declare-fun res!2962843 () Bool)

(assert (=> b!7331370 (=> (not res!2962843) (not e!4390030))))

(declare-fun size!41958 (List!71545) Int)

(assert (=> b!7331370 (= res!2962843 (= (size!41958 lt!2608018) (+ (size!41958 (exprs!8489 ct1!256)) (size!41958 (exprs!8489 ct2!352)))))))

(declare-fun b!7331368 () Bool)

(assert (=> b!7331368 (= e!4390031 (exprs!8489 ct2!352))))

(assert (= (and d!2276651 c!1361268) b!7331368))

(assert (= (and d!2276651 (not c!1361268)) b!7331369))

(assert (= (and d!2276651 res!2962842) b!7331370))

(assert (= (and b!7331370 res!2962843) b!7331371))

(declare-fun m!7997470 () Bool)

(assert (=> b!7331369 m!7997470))

(declare-fun m!7997472 () Bool)

(assert (=> d!2276651 m!7997472))

(declare-fun m!7997474 () Bool)

(assert (=> d!2276651 m!7997474))

(declare-fun m!7997476 () Bool)

(assert (=> d!2276651 m!7997476))

(declare-fun m!7997478 () Bool)

(assert (=> b!7331370 m!7997478))

(declare-fun m!7997480 () Bool)

(assert (=> b!7331370 m!7997480))

(declare-fun m!7997482 () Bool)

(assert (=> b!7331370 m!7997482))

(assert (=> b!7331264 d!2276651))

(declare-fun d!2276653 () Bool)

(assert (=> d!2276653 (forall!17888 (++!16871 (exprs!8489 ct1!256) (exprs!8489 ct2!352)) lambda!454747)))

(declare-fun lt!2608021 () Unit!165059)

(declare-fun choose!57027 (List!71545 List!71545 Int) Unit!165059)

(assert (=> d!2276653 (= lt!2608021 (choose!57027 (exprs!8489 ct1!256) (exprs!8489 ct2!352) lambda!454747))))

(assert (=> d!2276653 (forall!17888 (exprs!8489 ct1!256) lambda!454747)))

(assert (=> d!2276653 (= (lemmaConcatPreservesForall!1728 (exprs!8489 ct1!256) (exprs!8489 ct2!352) lambda!454747) lt!2608021)))

(declare-fun bs!1917460 () Bool)

(assert (= bs!1917460 d!2276653))

(assert (=> bs!1917460 m!7997390))

(assert (=> bs!1917460 m!7997390))

(declare-fun m!7997484 () Bool)

(assert (=> bs!1917460 m!7997484))

(declare-fun m!7997486 () Bool)

(assert (=> bs!1917460 m!7997486))

(declare-fun m!7997488 () Bool)

(assert (=> bs!1917460 m!7997488))

(assert (=> b!7331264 d!2276653))

(declare-fun d!2276655 () Bool)

(declare-fun nullableFct!3244 (Regex!19049) Bool)

(assert (=> d!2276655 (= (nullable!8150 (h!77869 (exprs!8489 ct1!256))) (nullableFct!3244 (h!77869 (exprs!8489 ct1!256))))))

(declare-fun bs!1917461 () Bool)

(assert (= bs!1917461 d!2276655))

(declare-fun m!7997490 () Bool)

(assert (=> bs!1917461 m!7997490))

(assert (=> b!7331263 d!2276655))

(declare-fun b!7331394 () Bool)

(declare-fun e!4390044 () (InoxSet Context!15978))

(declare-fun call!667844 () (InoxSet Context!15978))

(assert (=> b!7331394 (= e!4390044 call!667844)))

(declare-fun d!2276657 () Bool)

(declare-fun c!1361283 () Bool)

(assert (=> d!2276657 (= c!1361283 (and ((_ is ElementMatch!19049) (h!77869 (exprs!8489 ct1!256))) (= (c!1361231 (h!77869 (exprs!8489 ct1!256))) c!10305)))))

(declare-fun e!4390046 () (InoxSet Context!15978))

(assert (=> d!2276657 (= (derivationStepZipperDown!2876 (h!77869 (exprs!8489 ct1!256)) lt!2608007 c!10305) e!4390046)))

(declare-fun b!7331395 () Bool)

(declare-fun e!4390047 () Bool)

(assert (=> b!7331395 (= e!4390047 (nullable!8150 (regOne!38610 (h!77869 (exprs!8489 ct1!256)))))))

(declare-fun b!7331396 () Bool)

(assert (=> b!7331396 (= e!4390044 ((as const (Array Context!15978 Bool)) false))))

(declare-fun bm!667835 () Bool)

(declare-fun call!667840 () List!71545)

(declare-fun call!667843 () List!71545)

(assert (=> bm!667835 (= call!667840 call!667843)))

(declare-fun b!7331397 () Bool)

(declare-fun c!1361281 () Bool)

(assert (=> b!7331397 (= c!1361281 ((_ is Star!19049) (h!77869 (exprs!8489 ct1!256))))))

(declare-fun e!4390049 () (InoxSet Context!15978))

(assert (=> b!7331397 (= e!4390049 e!4390044)))

(declare-fun b!7331398 () Bool)

(declare-fun e!4390048 () (InoxSet Context!15978))

(assert (=> b!7331398 (= e!4390048 e!4390049)))

(declare-fun c!1361282 () Bool)

(assert (=> b!7331398 (= c!1361282 ((_ is Concat!27894) (h!77869 (exprs!8489 ct1!256))))))

(declare-fun b!7331399 () Bool)

(declare-fun e!4390045 () (InoxSet Context!15978))

(assert (=> b!7331399 (= e!4390046 e!4390045)))

(declare-fun c!1361280 () Bool)

(assert (=> b!7331399 (= c!1361280 ((_ is Union!19049) (h!77869 (exprs!8489 ct1!256))))))

(declare-fun bm!667836 () Bool)

(declare-fun call!667841 () (InoxSet Context!15978))

(assert (=> bm!667836 (= call!667844 call!667841)))

(declare-fun b!7331400 () Bool)

(declare-fun c!1361279 () Bool)

(assert (=> b!7331400 (= c!1361279 e!4390047)))

(declare-fun res!2962846 () Bool)

(assert (=> b!7331400 (=> (not res!2962846) (not e!4390047))))

(assert (=> b!7331400 (= res!2962846 ((_ is Concat!27894) (h!77869 (exprs!8489 ct1!256))))))

(assert (=> b!7331400 (= e!4390045 e!4390048)))

(declare-fun bm!667837 () Bool)

(declare-fun call!667845 () (InoxSet Context!15978))

(assert (=> bm!667837 (= call!667841 call!667845)))

(declare-fun bm!667838 () Bool)

(declare-fun $colon$colon!3061 (List!71545 Regex!19049) List!71545)

(assert (=> bm!667838 (= call!667843 ($colon$colon!3061 (exprs!8489 lt!2608007) (ite (or c!1361279 c!1361282) (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (h!77869 (exprs!8489 ct1!256)))))))

(declare-fun b!7331401 () Bool)

(declare-fun call!667842 () (InoxSet Context!15978))

(assert (=> b!7331401 (= e!4390048 ((_ map or) call!667842 call!667841))))

(declare-fun bm!667839 () Bool)

(assert (=> bm!667839 (= call!667842 (derivationStepZipperDown!2876 (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256)))) (ite c!1361280 lt!2608007 (Context!15979 call!667843)) c!10305))))

(declare-fun b!7331402 () Bool)

(assert (=> b!7331402 (= e!4390045 ((_ map or) call!667842 call!667845))))

(declare-fun b!7331403 () Bool)

(assert (=> b!7331403 (= e!4390049 call!667844)))

(declare-fun b!7331404 () Bool)

(assert (=> b!7331404 (= e!4390046 (store ((as const (Array Context!15978 Bool)) false) lt!2608007 true))))

(declare-fun bm!667840 () Bool)

(assert (=> bm!667840 (= call!667845 (derivationStepZipperDown!2876 (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256)))))) (ite (or c!1361280 c!1361279) lt!2608007 (Context!15979 call!667840)) c!10305))))

(assert (= (and d!2276657 c!1361283) b!7331404))

(assert (= (and d!2276657 (not c!1361283)) b!7331399))

(assert (= (and b!7331399 c!1361280) b!7331402))

(assert (= (and b!7331399 (not c!1361280)) b!7331400))

(assert (= (and b!7331400 res!2962846) b!7331395))

(assert (= (and b!7331400 c!1361279) b!7331401))

(assert (= (and b!7331400 (not c!1361279)) b!7331398))

(assert (= (and b!7331398 c!1361282) b!7331403))

(assert (= (and b!7331398 (not c!1361282)) b!7331397))

(assert (= (and b!7331397 c!1361281) b!7331394))

(assert (= (and b!7331397 (not c!1361281)) b!7331396))

(assert (= (or b!7331403 b!7331394) bm!667835))

(assert (= (or b!7331403 b!7331394) bm!667836))

(assert (= (or b!7331401 bm!667836) bm!667837))

(assert (= (or b!7331401 bm!667835) bm!667838))

(assert (= (or b!7331402 bm!667837) bm!667840))

(assert (= (or b!7331402 b!7331401) bm!667839))

(declare-fun m!7997492 () Bool)

(assert (=> bm!667840 m!7997492))

(declare-fun m!7997494 () Bool)

(assert (=> b!7331404 m!7997494))

(declare-fun m!7997496 () Bool)

(assert (=> bm!667838 m!7997496))

(declare-fun m!7997498 () Bool)

(assert (=> b!7331395 m!7997498))

(declare-fun m!7997500 () Bool)

(assert (=> bm!667839 m!7997500))

(assert (=> b!7331263 d!2276657))

(declare-fun d!2276659 () Bool)

(assert (=> d!2276659 (= (tail!14730 (exprs!8489 ct1!256)) (t!385932 (exprs!8489 ct1!256)))))

(assert (=> b!7331263 d!2276659))

(declare-fun b!7331409 () Bool)

(declare-fun e!4390052 () Bool)

(declare-fun tp!2081550 () Bool)

(declare-fun tp!2081551 () Bool)

(assert (=> b!7331409 (= e!4390052 (and tp!2081550 tp!2081551))))

(assert (=> b!7331260 (= tp!2081535 e!4390052)))

(assert (= (and b!7331260 ((_ is Cons!71421) (exprs!8489 ct1!256))) b!7331409))

(declare-fun b!7331410 () Bool)

(declare-fun e!4390053 () Bool)

(declare-fun tp!2081552 () Bool)

(declare-fun tp!2081553 () Bool)

(assert (=> b!7331410 (= e!4390053 (and tp!2081552 tp!2081553))))

(assert (=> b!7331259 (= tp!2081534 e!4390053)))

(assert (= (and b!7331259 ((_ is Cons!71421) (exprs!8489 ct2!352))) b!7331410))

(declare-fun b!7331411 () Bool)

(declare-fun e!4390054 () Bool)

(declare-fun tp!2081554 () Bool)

(declare-fun tp!2081555 () Bool)

(assert (=> b!7331411 (= e!4390054 (and tp!2081554 tp!2081555))))

(assert (=> b!7331266 (= tp!2081533 e!4390054)))

(assert (= (and b!7331266 ((_ is Cons!71421) (exprs!8489 cWitness!35))) b!7331411))

(check-sat (not b!7331411) (not d!2276655) (not d!2276653) (not bm!667821) tp_is_empty!48343 (not d!2276625) (not b!7331409) (not d!2276635) (not b!7331317) (not b!7331395) (not b!7331346) (not b!7331369) (not bm!667814) (not d!2276633) (not b!7331345) (not b!7331318) (not b!7331370) (not d!2276631) (not bm!667839) (not d!2276651) (not bm!667840) (not bm!667838) (not b!7331410))
(check-sat)
(get-model)

(declare-fun d!2276721 () Bool)

(assert (=> d!2276721 (= ($colon$colon!3061 (exprs!8489 lt!2608007) (ite (or c!1361279 c!1361282) (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (h!77869 (exprs!8489 ct1!256)))) (Cons!71421 (ite (or c!1361279 c!1361282) (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (h!77869 (exprs!8489 ct1!256))) (exprs!8489 lt!2608007)))))

(assert (=> bm!667838 d!2276721))

(declare-fun d!2276723 () Bool)

(assert (=> d!2276723 (= (nullable!8150 (regOne!38610 (h!77869 (exprs!8489 ct1!256)))) (nullableFct!3244 (regOne!38610 (h!77869 (exprs!8489 ct1!256)))))))

(declare-fun bs!1917471 () Bool)

(assert (= bs!1917471 d!2276723))

(declare-fun m!7997618 () Bool)

(assert (=> bs!1917471 m!7997618))

(assert (=> b!7331395 d!2276723))

(declare-fun b!7331552 () Bool)

(declare-fun e!4390139 () (InoxSet Context!15978))

(declare-fun call!667882 () (InoxSet Context!15978))

(assert (=> b!7331552 (= e!4390139 call!667882)))

(declare-fun d!2276725 () Bool)

(declare-fun c!1361326 () Bool)

(assert (=> d!2276725 (= c!1361326 (and ((_ is ElementMatch!19049) (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256))))) (= (c!1361231 (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256))))) c!10305)))))

(declare-fun e!4390141 () (InoxSet Context!15978))

(assert (=> d!2276725 (= (derivationStepZipperDown!2876 (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256)))) (ite c!1361280 lt!2608007 (Context!15979 call!667843)) c!10305) e!4390141)))

(declare-fun b!7331553 () Bool)

(declare-fun e!4390142 () Bool)

(assert (=> b!7331553 (= e!4390142 (nullable!8150 (regOne!38610 (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256)))))))))

(declare-fun b!7331554 () Bool)

(assert (=> b!7331554 (= e!4390139 ((as const (Array Context!15978 Bool)) false))))

(declare-fun bm!667873 () Bool)

(declare-fun call!667878 () List!71545)

(declare-fun call!667881 () List!71545)

(assert (=> bm!667873 (= call!667878 call!667881)))

(declare-fun b!7331555 () Bool)

(declare-fun c!1361324 () Bool)

(assert (=> b!7331555 (= c!1361324 ((_ is Star!19049) (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256))))))))

(declare-fun e!4390144 () (InoxSet Context!15978))

(assert (=> b!7331555 (= e!4390144 e!4390139)))

(declare-fun b!7331556 () Bool)

(declare-fun e!4390143 () (InoxSet Context!15978))

(assert (=> b!7331556 (= e!4390143 e!4390144)))

(declare-fun c!1361325 () Bool)

(assert (=> b!7331556 (= c!1361325 ((_ is Concat!27894) (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256))))))))

(declare-fun b!7331557 () Bool)

(declare-fun e!4390140 () (InoxSet Context!15978))

(assert (=> b!7331557 (= e!4390141 e!4390140)))

(declare-fun c!1361323 () Bool)

(assert (=> b!7331557 (= c!1361323 ((_ is Union!19049) (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256))))))))

(declare-fun bm!667874 () Bool)

(declare-fun call!667879 () (InoxSet Context!15978))

(assert (=> bm!667874 (= call!667882 call!667879)))

(declare-fun b!7331558 () Bool)

(declare-fun c!1361322 () Bool)

(assert (=> b!7331558 (= c!1361322 e!4390142)))

(declare-fun res!2962886 () Bool)

(assert (=> b!7331558 (=> (not res!2962886) (not e!4390142))))

(assert (=> b!7331558 (= res!2962886 ((_ is Concat!27894) (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256))))))))

(assert (=> b!7331558 (= e!4390140 e!4390143)))

(declare-fun bm!667875 () Bool)

(declare-fun call!667883 () (InoxSet Context!15978))

(assert (=> bm!667875 (= call!667879 call!667883)))

(declare-fun bm!667876 () Bool)

(assert (=> bm!667876 (= call!667881 ($colon$colon!3061 (exprs!8489 (ite c!1361280 lt!2608007 (Context!15979 call!667843))) (ite (or c!1361322 c!1361325) (regTwo!38610 (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256))))) (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256)))))))))

(declare-fun b!7331559 () Bool)

(declare-fun call!667880 () (InoxSet Context!15978))

(assert (=> b!7331559 (= e!4390143 ((_ map or) call!667880 call!667879))))

(declare-fun bm!667877 () Bool)

(assert (=> bm!667877 (= call!667880 (derivationStepZipperDown!2876 (ite c!1361323 (regOne!38611 (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256))))) (regOne!38610 (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256)))))) (ite c!1361323 (ite c!1361280 lt!2608007 (Context!15979 call!667843)) (Context!15979 call!667881)) c!10305))))

(declare-fun b!7331560 () Bool)

(assert (=> b!7331560 (= e!4390140 ((_ map or) call!667880 call!667883))))

(declare-fun b!7331561 () Bool)

(assert (=> b!7331561 (= e!4390144 call!667882)))

(declare-fun b!7331562 () Bool)

(assert (=> b!7331562 (= e!4390141 (store ((as const (Array Context!15978 Bool)) false) (ite c!1361280 lt!2608007 (Context!15979 call!667843)) true))))

(declare-fun bm!667878 () Bool)

(assert (=> bm!667878 (= call!667883 (derivationStepZipperDown!2876 (ite c!1361323 (regTwo!38611 (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256))))) (ite c!1361322 (regTwo!38610 (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256))))) (ite c!1361325 (regOne!38610 (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256))))) (reg!19378 (ite c!1361280 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256)))))))) (ite (or c!1361323 c!1361322) (ite c!1361280 lt!2608007 (Context!15979 call!667843)) (Context!15979 call!667878)) c!10305))))

(assert (= (and d!2276725 c!1361326) b!7331562))

(assert (= (and d!2276725 (not c!1361326)) b!7331557))

(assert (= (and b!7331557 c!1361323) b!7331560))

(assert (= (and b!7331557 (not c!1361323)) b!7331558))

(assert (= (and b!7331558 res!2962886) b!7331553))

(assert (= (and b!7331558 c!1361322) b!7331559))

(assert (= (and b!7331558 (not c!1361322)) b!7331556))

(assert (= (and b!7331556 c!1361325) b!7331561))

(assert (= (and b!7331556 (not c!1361325)) b!7331555))

(assert (= (and b!7331555 c!1361324) b!7331552))

(assert (= (and b!7331555 (not c!1361324)) b!7331554))

(assert (= (or b!7331561 b!7331552) bm!667873))

(assert (= (or b!7331561 b!7331552) bm!667874))

(assert (= (or b!7331559 bm!667874) bm!667875))

(assert (= (or b!7331559 bm!667873) bm!667876))

(assert (= (or b!7331560 bm!667875) bm!667878))

(assert (= (or b!7331560 b!7331559) bm!667877))

(declare-fun m!7997620 () Bool)

(assert (=> bm!667878 m!7997620))

(declare-fun m!7997622 () Bool)

(assert (=> b!7331562 m!7997622))

(declare-fun m!7997624 () Bool)

(assert (=> bm!667876 m!7997624))

(declare-fun m!7997626 () Bool)

(assert (=> b!7331553 m!7997626))

(declare-fun m!7997628 () Bool)

(assert (=> bm!667877 m!7997628))

(assert (=> bm!667839 d!2276725))

(declare-fun d!2276727 () Bool)

(declare-fun res!2962891 () Bool)

(declare-fun e!4390149 () Bool)

(assert (=> d!2276727 (=> res!2962891 e!4390149)))

(assert (=> d!2276727 (= res!2962891 ((_ is Nil!71421) (exprs!8489 ct2!352)))))

(assert (=> d!2276727 (= (forall!17888 (exprs!8489 ct2!352) lambda!454758) e!4390149)))

(declare-fun b!7331567 () Bool)

(declare-fun e!4390150 () Bool)

(assert (=> b!7331567 (= e!4390149 e!4390150)))

(declare-fun res!2962892 () Bool)

(assert (=> b!7331567 (=> (not res!2962892) (not e!4390150))))

(declare-fun dynLambda!29424 (Int Regex!19049) Bool)

(assert (=> b!7331567 (= res!2962892 (dynLambda!29424 lambda!454758 (h!77869 (exprs!8489 ct2!352))))))

(declare-fun b!7331568 () Bool)

(assert (=> b!7331568 (= e!4390150 (forall!17888 (t!385932 (exprs!8489 ct2!352)) lambda!454758))))

(assert (= (and d!2276727 (not res!2962891)) b!7331567))

(assert (= (and b!7331567 res!2962892) b!7331568))

(declare-fun b_lambda!283563 () Bool)

(assert (=> (not b_lambda!283563) (not b!7331567)))

(declare-fun m!7997630 () Bool)

(assert (=> b!7331567 m!7997630))

(declare-fun m!7997632 () Bool)

(assert (=> b!7331568 m!7997632))

(assert (=> d!2276633 d!2276727))

(declare-fun bm!667879 () Bool)

(declare-fun call!667884 () (InoxSet Context!15978))

(assert (=> bm!667879 (= call!667884 (derivationStepZipperDown!2876 (h!77869 (exprs!8489 (Context!15979 (t!385932 (exprs!8489 ct1!256))))) (Context!15979 (t!385932 (exprs!8489 (Context!15979 (t!385932 (exprs!8489 ct1!256)))))) c!10305))))

(declare-fun b!7331569 () Bool)

(declare-fun e!4390151 () (InoxSet Context!15978))

(assert (=> b!7331569 (= e!4390151 ((as const (Array Context!15978 Bool)) false))))

(declare-fun b!7331570 () Bool)

(assert (=> b!7331570 (= e!4390151 call!667884)))

(declare-fun b!7331571 () Bool)

(declare-fun e!4390153 () Bool)

(assert (=> b!7331571 (= e!4390153 (nullable!8150 (h!77869 (exprs!8489 (Context!15979 (t!385932 (exprs!8489 ct1!256)))))))))

(declare-fun e!4390152 () (InoxSet Context!15978))

(declare-fun b!7331572 () Bool)

(assert (=> b!7331572 (= e!4390152 ((_ map or) call!667884 (derivationStepZipperUp!2729 (Context!15979 (t!385932 (exprs!8489 (Context!15979 (t!385932 (exprs!8489 ct1!256)))))) c!10305)))))

(declare-fun d!2276729 () Bool)

(declare-fun c!1361327 () Bool)

(assert (=> d!2276729 (= c!1361327 e!4390153)))

(declare-fun res!2962893 () Bool)

(assert (=> d!2276729 (=> (not res!2962893) (not e!4390153))))

(assert (=> d!2276729 (= res!2962893 ((_ is Cons!71421) (exprs!8489 (Context!15979 (t!385932 (exprs!8489 ct1!256))))))))

(assert (=> d!2276729 (= (derivationStepZipperUp!2729 (Context!15979 (t!385932 (exprs!8489 ct1!256))) c!10305) e!4390152)))

(declare-fun b!7331573 () Bool)

(assert (=> b!7331573 (= e!4390152 e!4390151)))

(declare-fun c!1361328 () Bool)

(assert (=> b!7331573 (= c!1361328 ((_ is Cons!71421) (exprs!8489 (Context!15979 (t!385932 (exprs!8489 ct1!256))))))))

(assert (= (and d!2276729 res!2962893) b!7331571))

(assert (= (and d!2276729 c!1361327) b!7331572))

(assert (= (and d!2276729 (not c!1361327)) b!7331573))

(assert (= (and b!7331573 c!1361328) b!7331570))

(assert (= (and b!7331573 (not c!1361328)) b!7331569))

(assert (= (or b!7331572 b!7331570) bm!667879))

(declare-fun m!7997634 () Bool)

(assert (=> bm!667879 m!7997634))

(declare-fun m!7997636 () Bool)

(assert (=> b!7331571 m!7997636))

(declare-fun m!7997638 () Bool)

(assert (=> b!7331572 m!7997638))

(assert (=> b!7331318 d!2276729))

(declare-fun b!7331575 () Bool)

(declare-fun e!4390155 () List!71545)

(assert (=> b!7331575 (= e!4390155 (Cons!71421 (h!77869 (t!385932 (exprs!8489 ct1!256))) (++!16871 (t!385932 (t!385932 (exprs!8489 ct1!256))) (exprs!8489 ct2!352))))))

(declare-fun d!2276731 () Bool)

(declare-fun e!4390154 () Bool)

(assert (=> d!2276731 e!4390154))

(declare-fun res!2962894 () Bool)

(assert (=> d!2276731 (=> (not res!2962894) (not e!4390154))))

(declare-fun lt!2608028 () List!71545)

(assert (=> d!2276731 (= res!2962894 (= (content!14979 lt!2608028) ((_ map or) (content!14979 (t!385932 (exprs!8489 ct1!256))) (content!14979 (exprs!8489 ct2!352)))))))

(assert (=> d!2276731 (= lt!2608028 e!4390155)))

(declare-fun c!1361329 () Bool)

(assert (=> d!2276731 (= c!1361329 ((_ is Nil!71421) (t!385932 (exprs!8489 ct1!256))))))

(assert (=> d!2276731 (= (++!16871 (t!385932 (exprs!8489 ct1!256)) (exprs!8489 ct2!352)) lt!2608028)))

(declare-fun b!7331577 () Bool)

(assert (=> b!7331577 (= e!4390154 (or (not (= (exprs!8489 ct2!352) Nil!71421)) (= lt!2608028 (t!385932 (exprs!8489 ct1!256)))))))

(declare-fun b!7331576 () Bool)

(declare-fun res!2962895 () Bool)

(assert (=> b!7331576 (=> (not res!2962895) (not e!4390154))))

(assert (=> b!7331576 (= res!2962895 (= (size!41958 lt!2608028) (+ (size!41958 (t!385932 (exprs!8489 ct1!256))) (size!41958 (exprs!8489 ct2!352)))))))

(declare-fun b!7331574 () Bool)

(assert (=> b!7331574 (= e!4390155 (exprs!8489 ct2!352))))

(assert (= (and d!2276731 c!1361329) b!7331574))

(assert (= (and d!2276731 (not c!1361329)) b!7331575))

(assert (= (and d!2276731 res!2962894) b!7331576))

(assert (= (and b!7331576 res!2962895) b!7331577))

(declare-fun m!7997640 () Bool)

(assert (=> b!7331575 m!7997640))

(declare-fun m!7997642 () Bool)

(assert (=> d!2276731 m!7997642))

(declare-fun m!7997644 () Bool)

(assert (=> d!2276731 m!7997644))

(assert (=> d!2276731 m!7997476))

(declare-fun m!7997646 () Bool)

(assert (=> b!7331576 m!7997646))

(declare-fun m!7997648 () Bool)

(assert (=> b!7331576 m!7997648))

(assert (=> b!7331576 m!7997482))

(assert (=> b!7331369 d!2276731))

(declare-fun d!2276733 () Bool)

(assert (=> d!2276733 (= (nullable!8150 (h!77869 (exprs!8489 lt!2608007))) (nullableFct!3244 (h!77869 (exprs!8489 lt!2608007))))))

(declare-fun bs!1917472 () Bool)

(assert (= bs!1917472 d!2276733))

(declare-fun m!7997650 () Bool)

(assert (=> bs!1917472 m!7997650))

(assert (=> b!7331345 d!2276733))

(declare-fun d!2276735 () Bool)

(declare-fun lt!2608031 () Int)

(assert (=> d!2276735 (>= lt!2608031 0)))

(declare-fun e!4390158 () Int)

(assert (=> d!2276735 (= lt!2608031 e!4390158)))

(declare-fun c!1361332 () Bool)

(assert (=> d!2276735 (= c!1361332 ((_ is Nil!71421) lt!2608018))))

(assert (=> d!2276735 (= (size!41958 lt!2608018) lt!2608031)))

(declare-fun b!7331582 () Bool)

(assert (=> b!7331582 (= e!4390158 0)))

(declare-fun b!7331583 () Bool)

(assert (=> b!7331583 (= e!4390158 (+ 1 (size!41958 (t!385932 lt!2608018))))))

(assert (= (and d!2276735 c!1361332) b!7331582))

(assert (= (and d!2276735 (not c!1361332)) b!7331583))

(declare-fun m!7997652 () Bool)

(assert (=> b!7331583 m!7997652))

(assert (=> b!7331370 d!2276735))

(declare-fun d!2276737 () Bool)

(declare-fun lt!2608032 () Int)

(assert (=> d!2276737 (>= lt!2608032 0)))

(declare-fun e!4390159 () Int)

(assert (=> d!2276737 (= lt!2608032 e!4390159)))

(declare-fun c!1361333 () Bool)

(assert (=> d!2276737 (= c!1361333 ((_ is Nil!71421) (exprs!8489 ct1!256)))))

(assert (=> d!2276737 (= (size!41958 (exprs!8489 ct1!256)) lt!2608032)))

(declare-fun b!7331584 () Bool)

(assert (=> b!7331584 (= e!4390159 0)))

(declare-fun b!7331585 () Bool)

(assert (=> b!7331585 (= e!4390159 (+ 1 (size!41958 (t!385932 (exprs!8489 ct1!256)))))))

(assert (= (and d!2276737 c!1361333) b!7331584))

(assert (= (and d!2276737 (not c!1361333)) b!7331585))

(assert (=> b!7331585 m!7997648))

(assert (=> b!7331370 d!2276737))

(declare-fun d!2276739 () Bool)

(declare-fun lt!2608033 () Int)

(assert (=> d!2276739 (>= lt!2608033 0)))

(declare-fun e!4390160 () Int)

(assert (=> d!2276739 (= lt!2608033 e!4390160)))

(declare-fun c!1361334 () Bool)

(assert (=> d!2276739 (= c!1361334 ((_ is Nil!71421) (exprs!8489 ct2!352)))))

(assert (=> d!2276739 (= (size!41958 (exprs!8489 ct2!352)) lt!2608033)))

(declare-fun b!7331586 () Bool)

(assert (=> b!7331586 (= e!4390160 0)))

(declare-fun b!7331587 () Bool)

(assert (=> b!7331587 (= e!4390160 (+ 1 (size!41958 (t!385932 (exprs!8489 ct2!352)))))))

(assert (= (and d!2276739 c!1361334) b!7331586))

(assert (= (and d!2276739 (not c!1361334)) b!7331587))

(declare-fun m!7997654 () Bool)

(assert (=> b!7331587 m!7997654))

(assert (=> b!7331370 d!2276739))

(declare-fun b!7331588 () Bool)

(declare-fun e!4390161 () (InoxSet Context!15978))

(declare-fun call!667889 () (InoxSet Context!15978))

(assert (=> b!7331588 (= e!4390161 call!667889)))

(declare-fun d!2276741 () Bool)

(declare-fun c!1361339 () Bool)

(assert (=> d!2276741 (= c!1361339 (and ((_ is ElementMatch!19049) (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256))))))) (= (c!1361231 (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256))))))) c!10305)))))

(declare-fun e!4390163 () (InoxSet Context!15978))

(assert (=> d!2276741 (= (derivationStepZipperDown!2876 (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256)))))) (ite (or c!1361280 c!1361279) lt!2608007 (Context!15979 call!667840)) c!10305) e!4390163)))

(declare-fun b!7331589 () Bool)

(declare-fun e!4390164 () Bool)

(assert (=> b!7331589 (= e!4390164 (nullable!8150 (regOne!38610 (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256)))))))))))

(declare-fun b!7331590 () Bool)

(assert (=> b!7331590 (= e!4390161 ((as const (Array Context!15978 Bool)) false))))

(declare-fun bm!667880 () Bool)

(declare-fun call!667885 () List!71545)

(declare-fun call!667888 () List!71545)

(assert (=> bm!667880 (= call!667885 call!667888)))

(declare-fun b!7331591 () Bool)

(declare-fun c!1361337 () Bool)

(assert (=> b!7331591 (= c!1361337 ((_ is Star!19049) (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256))))))))))

(declare-fun e!4390166 () (InoxSet Context!15978))

(assert (=> b!7331591 (= e!4390166 e!4390161)))

(declare-fun b!7331592 () Bool)

(declare-fun e!4390165 () (InoxSet Context!15978))

(assert (=> b!7331592 (= e!4390165 e!4390166)))

(declare-fun c!1361338 () Bool)

(assert (=> b!7331592 (= c!1361338 ((_ is Concat!27894) (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256))))))))))

(declare-fun b!7331593 () Bool)

(declare-fun e!4390162 () (InoxSet Context!15978))

(assert (=> b!7331593 (= e!4390163 e!4390162)))

(declare-fun c!1361336 () Bool)

(assert (=> b!7331593 (= c!1361336 ((_ is Union!19049) (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256))))))))))

(declare-fun bm!667881 () Bool)

(declare-fun call!667886 () (InoxSet Context!15978))

(assert (=> bm!667881 (= call!667889 call!667886)))

(declare-fun b!7331594 () Bool)

(declare-fun c!1361335 () Bool)

(assert (=> b!7331594 (= c!1361335 e!4390164)))

(declare-fun res!2962896 () Bool)

(assert (=> b!7331594 (=> (not res!2962896) (not e!4390164))))

(assert (=> b!7331594 (= res!2962896 ((_ is Concat!27894) (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256))))))))))

(assert (=> b!7331594 (= e!4390162 e!4390165)))

(declare-fun bm!667882 () Bool)

(declare-fun call!667890 () (InoxSet Context!15978))

(assert (=> bm!667882 (= call!667886 call!667890)))

(declare-fun bm!667883 () Bool)

(assert (=> bm!667883 (= call!667888 ($colon$colon!3061 (exprs!8489 (ite (or c!1361280 c!1361279) lt!2608007 (Context!15979 call!667840))) (ite (or c!1361335 c!1361338) (regTwo!38610 (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256))))))) (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256)))))))))))

(declare-fun b!7331595 () Bool)

(declare-fun call!667887 () (InoxSet Context!15978))

(assert (=> b!7331595 (= e!4390165 ((_ map or) call!667887 call!667886))))

(declare-fun bm!667884 () Bool)

(assert (=> bm!667884 (= call!667887 (derivationStepZipperDown!2876 (ite c!1361336 (regOne!38611 (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256))))))) (regOne!38610 (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256)))))))) (ite c!1361336 (ite (or c!1361280 c!1361279) lt!2608007 (Context!15979 call!667840)) (Context!15979 call!667888)) c!10305))))

(declare-fun b!7331596 () Bool)

(assert (=> b!7331596 (= e!4390162 ((_ map or) call!667887 call!667890))))

(declare-fun b!7331597 () Bool)

(assert (=> b!7331597 (= e!4390166 call!667889)))

(declare-fun b!7331598 () Bool)

(assert (=> b!7331598 (= e!4390163 (store ((as const (Array Context!15978 Bool)) false) (ite (or c!1361280 c!1361279) lt!2608007 (Context!15979 call!667840)) true))))

(declare-fun bm!667885 () Bool)

(assert (=> bm!667885 (= call!667890 (derivationStepZipperDown!2876 (ite c!1361336 (regTwo!38611 (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256))))))) (ite c!1361335 (regTwo!38610 (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256))))))) (ite c!1361338 (regOne!38610 (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256))))))) (reg!19378 (ite c!1361280 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361279 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361282 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256)))))))))) (ite (or c!1361336 c!1361335) (ite (or c!1361280 c!1361279) lt!2608007 (Context!15979 call!667840)) (Context!15979 call!667885)) c!10305))))

(assert (= (and d!2276741 c!1361339) b!7331598))

(assert (= (and d!2276741 (not c!1361339)) b!7331593))

(assert (= (and b!7331593 c!1361336) b!7331596))

(assert (= (and b!7331593 (not c!1361336)) b!7331594))

(assert (= (and b!7331594 res!2962896) b!7331589))

(assert (= (and b!7331594 c!1361335) b!7331595))

(assert (= (and b!7331594 (not c!1361335)) b!7331592))

(assert (= (and b!7331592 c!1361338) b!7331597))

(assert (= (and b!7331592 (not c!1361338)) b!7331591))

(assert (= (and b!7331591 c!1361337) b!7331588))

(assert (= (and b!7331591 (not c!1361337)) b!7331590))

(assert (= (or b!7331597 b!7331588) bm!667880))

(assert (= (or b!7331597 b!7331588) bm!667881))

(assert (= (or b!7331595 bm!667881) bm!667882))

(assert (= (or b!7331595 bm!667880) bm!667883))

(assert (= (or b!7331596 bm!667882) bm!667885))

(assert (= (or b!7331596 b!7331595) bm!667884))

(declare-fun m!7997656 () Bool)

(assert (=> bm!667885 m!7997656))

(declare-fun m!7997658 () Bool)

(assert (=> b!7331598 m!7997658))

(declare-fun m!7997660 () Bool)

(assert (=> bm!667883 m!7997660))

(declare-fun m!7997662 () Bool)

(assert (=> b!7331589 m!7997662))

(declare-fun m!7997664 () Bool)

(assert (=> bm!667884 m!7997664))

(assert (=> bm!667840 d!2276741))

(declare-fun b!7331599 () Bool)

(declare-fun e!4390167 () (InoxSet Context!15978))

(declare-fun call!667895 () (InoxSet Context!15978))

(assert (=> b!7331599 (= e!4390167 call!667895)))

(declare-fun d!2276743 () Bool)

(declare-fun c!1361344 () Bool)

(assert (=> d!2276743 (= c!1361344 (and ((_ is ElementMatch!19049) (h!77869 (exprs!8489 lt!2608007))) (= (c!1361231 (h!77869 (exprs!8489 lt!2608007))) c!10305)))))

(declare-fun e!4390169 () (InoxSet Context!15978))

(assert (=> d!2276743 (= (derivationStepZipperDown!2876 (h!77869 (exprs!8489 lt!2608007)) (Context!15979 (t!385932 (exprs!8489 lt!2608007))) c!10305) e!4390169)))

(declare-fun b!7331600 () Bool)

(declare-fun e!4390170 () Bool)

(assert (=> b!7331600 (= e!4390170 (nullable!8150 (regOne!38610 (h!77869 (exprs!8489 lt!2608007)))))))

(declare-fun b!7331601 () Bool)

(assert (=> b!7331601 (= e!4390167 ((as const (Array Context!15978 Bool)) false))))

(declare-fun bm!667886 () Bool)

(declare-fun call!667891 () List!71545)

(declare-fun call!667894 () List!71545)

(assert (=> bm!667886 (= call!667891 call!667894)))

(declare-fun b!7331602 () Bool)

(declare-fun c!1361342 () Bool)

(assert (=> b!7331602 (= c!1361342 ((_ is Star!19049) (h!77869 (exprs!8489 lt!2608007))))))

(declare-fun e!4390172 () (InoxSet Context!15978))

(assert (=> b!7331602 (= e!4390172 e!4390167)))

(declare-fun b!7331603 () Bool)

(declare-fun e!4390171 () (InoxSet Context!15978))

(assert (=> b!7331603 (= e!4390171 e!4390172)))

(declare-fun c!1361343 () Bool)

(assert (=> b!7331603 (= c!1361343 ((_ is Concat!27894) (h!77869 (exprs!8489 lt!2608007))))))

(declare-fun b!7331604 () Bool)

(declare-fun e!4390168 () (InoxSet Context!15978))

(assert (=> b!7331604 (= e!4390169 e!4390168)))

(declare-fun c!1361341 () Bool)

(assert (=> b!7331604 (= c!1361341 ((_ is Union!19049) (h!77869 (exprs!8489 lt!2608007))))))

(declare-fun bm!667887 () Bool)

(declare-fun call!667892 () (InoxSet Context!15978))

(assert (=> bm!667887 (= call!667895 call!667892)))

(declare-fun b!7331605 () Bool)

(declare-fun c!1361340 () Bool)

(assert (=> b!7331605 (= c!1361340 e!4390170)))

(declare-fun res!2962897 () Bool)

(assert (=> b!7331605 (=> (not res!2962897) (not e!4390170))))

(assert (=> b!7331605 (= res!2962897 ((_ is Concat!27894) (h!77869 (exprs!8489 lt!2608007))))))

(assert (=> b!7331605 (= e!4390168 e!4390171)))

(declare-fun bm!667888 () Bool)

(declare-fun call!667896 () (InoxSet Context!15978))

(assert (=> bm!667888 (= call!667892 call!667896)))

(declare-fun bm!667889 () Bool)

(assert (=> bm!667889 (= call!667894 ($colon$colon!3061 (exprs!8489 (Context!15979 (t!385932 (exprs!8489 lt!2608007)))) (ite (or c!1361340 c!1361343) (regTwo!38610 (h!77869 (exprs!8489 lt!2608007))) (h!77869 (exprs!8489 lt!2608007)))))))

(declare-fun b!7331606 () Bool)

(declare-fun call!667893 () (InoxSet Context!15978))

(assert (=> b!7331606 (= e!4390171 ((_ map or) call!667893 call!667892))))

(declare-fun bm!667890 () Bool)

(assert (=> bm!667890 (= call!667893 (derivationStepZipperDown!2876 (ite c!1361341 (regOne!38611 (h!77869 (exprs!8489 lt!2608007))) (regOne!38610 (h!77869 (exprs!8489 lt!2608007)))) (ite c!1361341 (Context!15979 (t!385932 (exprs!8489 lt!2608007))) (Context!15979 call!667894)) c!10305))))

(declare-fun b!7331607 () Bool)

(assert (=> b!7331607 (= e!4390168 ((_ map or) call!667893 call!667896))))

(declare-fun b!7331608 () Bool)

(assert (=> b!7331608 (= e!4390172 call!667895)))

(declare-fun b!7331609 () Bool)

(assert (=> b!7331609 (= e!4390169 (store ((as const (Array Context!15978 Bool)) false) (Context!15979 (t!385932 (exprs!8489 lt!2608007))) true))))

(declare-fun bm!667891 () Bool)

(assert (=> bm!667891 (= call!667896 (derivationStepZipperDown!2876 (ite c!1361341 (regTwo!38611 (h!77869 (exprs!8489 lt!2608007))) (ite c!1361340 (regTwo!38610 (h!77869 (exprs!8489 lt!2608007))) (ite c!1361343 (regOne!38610 (h!77869 (exprs!8489 lt!2608007))) (reg!19378 (h!77869 (exprs!8489 lt!2608007)))))) (ite (or c!1361341 c!1361340) (Context!15979 (t!385932 (exprs!8489 lt!2608007))) (Context!15979 call!667891)) c!10305))))

(assert (= (and d!2276743 c!1361344) b!7331609))

(assert (= (and d!2276743 (not c!1361344)) b!7331604))

(assert (= (and b!7331604 c!1361341) b!7331607))

(assert (= (and b!7331604 (not c!1361341)) b!7331605))

(assert (= (and b!7331605 res!2962897) b!7331600))

(assert (= (and b!7331605 c!1361340) b!7331606))

(assert (= (and b!7331605 (not c!1361340)) b!7331603))

(assert (= (and b!7331603 c!1361343) b!7331608))

(assert (= (and b!7331603 (not c!1361343)) b!7331602))

(assert (= (and b!7331602 c!1361342) b!7331599))

(assert (= (and b!7331602 (not c!1361342)) b!7331601))

(assert (= (or b!7331608 b!7331599) bm!667886))

(assert (= (or b!7331608 b!7331599) bm!667887))

(assert (= (or b!7331606 bm!667887) bm!667888))

(assert (= (or b!7331606 bm!667886) bm!667889))

(assert (= (or b!7331607 bm!667888) bm!667891))

(assert (= (or b!7331607 b!7331606) bm!667890))

(declare-fun m!7997666 () Bool)

(assert (=> bm!667891 m!7997666))

(declare-fun m!7997668 () Bool)

(assert (=> b!7331609 m!7997668))

(declare-fun m!7997670 () Bool)

(assert (=> bm!667889 m!7997670))

(declare-fun m!7997672 () Bool)

(assert (=> b!7331600 m!7997672))

(declare-fun m!7997674 () Bool)

(assert (=> bm!667890 m!7997674))

(assert (=> bm!667821 d!2276743))

(declare-fun d!2276745 () Bool)

(declare-fun res!2962898 () Bool)

(declare-fun e!4390173 () Bool)

(assert (=> d!2276745 (=> res!2962898 e!4390173)))

(assert (=> d!2276745 (= res!2962898 ((_ is Nil!71421) (exprs!8489 (Context!15979 (tail!14730 lt!2608009)))))))

(assert (=> d!2276745 (= (forall!17888 (exprs!8489 (Context!15979 (tail!14730 lt!2608009))) lambda!454759) e!4390173)))

(declare-fun b!7331610 () Bool)

(declare-fun e!4390174 () Bool)

(assert (=> b!7331610 (= e!4390173 e!4390174)))

(declare-fun res!2962899 () Bool)

(assert (=> b!7331610 (=> (not res!2962899) (not e!4390174))))

(assert (=> b!7331610 (= res!2962899 (dynLambda!29424 lambda!454759 (h!77869 (exprs!8489 (Context!15979 (tail!14730 lt!2608009))))))))

(declare-fun b!7331611 () Bool)

(assert (=> b!7331611 (= e!4390174 (forall!17888 (t!385932 (exprs!8489 (Context!15979 (tail!14730 lt!2608009)))) lambda!454759))))

(assert (= (and d!2276745 (not res!2962898)) b!7331610))

(assert (= (and b!7331610 res!2962899) b!7331611))

(declare-fun b_lambda!283565 () Bool)

(assert (=> (not b_lambda!283565) (not b!7331610)))

(declare-fun m!7997676 () Bool)

(assert (=> b!7331610 m!7997676))

(declare-fun m!7997678 () Bool)

(assert (=> b!7331611 m!7997678))

(assert (=> d!2276635 d!2276745))

(declare-fun d!2276747 () Bool)

(declare-fun c!1361347 () Bool)

(assert (=> d!2276747 (= c!1361347 ((_ is Nil!71421) lt!2608018))))

(declare-fun e!4390177 () (InoxSet Regex!19049))

(assert (=> d!2276747 (= (content!14979 lt!2608018) e!4390177)))

(declare-fun b!7331616 () Bool)

(assert (=> b!7331616 (= e!4390177 ((as const (Array Regex!19049 Bool)) false))))

(declare-fun b!7331617 () Bool)

(assert (=> b!7331617 (= e!4390177 ((_ map or) (store ((as const (Array Regex!19049 Bool)) false) (h!77869 lt!2608018) true) (content!14979 (t!385932 lt!2608018))))))

(assert (= (and d!2276747 c!1361347) b!7331616))

(assert (= (and d!2276747 (not c!1361347)) b!7331617))

(declare-fun m!7997680 () Bool)

(assert (=> b!7331617 m!7997680))

(declare-fun m!7997682 () Bool)

(assert (=> b!7331617 m!7997682))

(assert (=> d!2276651 d!2276747))

(declare-fun d!2276749 () Bool)

(declare-fun c!1361348 () Bool)

(assert (=> d!2276749 (= c!1361348 ((_ is Nil!71421) (exprs!8489 ct1!256)))))

(declare-fun e!4390178 () (InoxSet Regex!19049))

(assert (=> d!2276749 (= (content!14979 (exprs!8489 ct1!256)) e!4390178)))

(declare-fun b!7331618 () Bool)

(assert (=> b!7331618 (= e!4390178 ((as const (Array Regex!19049 Bool)) false))))

(declare-fun b!7331619 () Bool)

(assert (=> b!7331619 (= e!4390178 ((_ map or) (store ((as const (Array Regex!19049 Bool)) false) (h!77869 (exprs!8489 ct1!256)) true) (content!14979 (t!385932 (exprs!8489 ct1!256)))))))

(assert (= (and d!2276749 c!1361348) b!7331618))

(assert (= (and d!2276749 (not c!1361348)) b!7331619))

(declare-fun m!7997684 () Bool)

(assert (=> b!7331619 m!7997684))

(assert (=> b!7331619 m!7997644))

(assert (=> d!2276651 d!2276749))

(declare-fun d!2276751 () Bool)

(declare-fun c!1361349 () Bool)

(assert (=> d!2276751 (= c!1361349 ((_ is Nil!71421) (exprs!8489 ct2!352)))))

(declare-fun e!4390179 () (InoxSet Regex!19049))

(assert (=> d!2276751 (= (content!14979 (exprs!8489 ct2!352)) e!4390179)))

(declare-fun b!7331620 () Bool)

(assert (=> b!7331620 (= e!4390179 ((as const (Array Regex!19049 Bool)) false))))

(declare-fun b!7331621 () Bool)

(assert (=> b!7331621 (= e!4390179 ((_ map or) (store ((as const (Array Regex!19049 Bool)) false) (h!77869 (exprs!8489 ct2!352)) true) (content!14979 (t!385932 (exprs!8489 ct2!352)))))))

(assert (= (and d!2276751 c!1361349) b!7331620))

(assert (= (and d!2276751 (not c!1361349)) b!7331621))

(declare-fun m!7997686 () Bool)

(assert (=> b!7331621 m!7997686))

(declare-fun m!7997688 () Bool)

(assert (=> b!7331621 m!7997688))

(assert (=> d!2276651 d!2276751))

(assert (=> b!7331317 d!2276655))

(declare-fun bm!667892 () Bool)

(declare-fun call!667897 () (InoxSet Context!15978))

(assert (=> bm!667892 (= call!667897 (derivationStepZipperDown!2876 (h!77869 (exprs!8489 (Context!15979 (t!385932 (exprs!8489 lt!2608007))))) (Context!15979 (t!385932 (exprs!8489 (Context!15979 (t!385932 (exprs!8489 lt!2608007)))))) c!10305))))

(declare-fun b!7331622 () Bool)

(declare-fun e!4390180 () (InoxSet Context!15978))

(assert (=> b!7331622 (= e!4390180 ((as const (Array Context!15978 Bool)) false))))

(declare-fun b!7331623 () Bool)

(assert (=> b!7331623 (= e!4390180 call!667897)))

(declare-fun b!7331624 () Bool)

(declare-fun e!4390182 () Bool)

(assert (=> b!7331624 (= e!4390182 (nullable!8150 (h!77869 (exprs!8489 (Context!15979 (t!385932 (exprs!8489 lt!2608007)))))))))

(declare-fun b!7331625 () Bool)

(declare-fun e!4390181 () (InoxSet Context!15978))

(assert (=> b!7331625 (= e!4390181 ((_ map or) call!667897 (derivationStepZipperUp!2729 (Context!15979 (t!385932 (exprs!8489 (Context!15979 (t!385932 (exprs!8489 lt!2608007)))))) c!10305)))))

(declare-fun d!2276753 () Bool)

(declare-fun c!1361350 () Bool)

(assert (=> d!2276753 (= c!1361350 e!4390182)))

(declare-fun res!2962900 () Bool)

(assert (=> d!2276753 (=> (not res!2962900) (not e!4390182))))

(assert (=> d!2276753 (= res!2962900 ((_ is Cons!71421) (exprs!8489 (Context!15979 (t!385932 (exprs!8489 lt!2608007))))))))

(assert (=> d!2276753 (= (derivationStepZipperUp!2729 (Context!15979 (t!385932 (exprs!8489 lt!2608007))) c!10305) e!4390181)))

(declare-fun b!7331626 () Bool)

(assert (=> b!7331626 (= e!4390181 e!4390180)))

(declare-fun c!1361351 () Bool)

(assert (=> b!7331626 (= c!1361351 ((_ is Cons!71421) (exprs!8489 (Context!15979 (t!385932 (exprs!8489 lt!2608007))))))))

(assert (= (and d!2276753 res!2962900) b!7331624))

(assert (= (and d!2276753 c!1361350) b!7331625))

(assert (= (and d!2276753 (not c!1361350)) b!7331626))

(assert (= (and b!7331626 c!1361351) b!7331623))

(assert (= (and b!7331626 (not c!1361351)) b!7331622))

(assert (= (or b!7331625 b!7331623) bm!667892))

(declare-fun m!7997690 () Bool)

(assert (=> bm!667892 m!7997690))

(declare-fun m!7997692 () Bool)

(assert (=> b!7331624 m!7997692))

(declare-fun m!7997694 () Bool)

(assert (=> b!7331625 m!7997694))

(assert (=> b!7331346 d!2276753))

(declare-fun b!7331641 () Bool)

(declare-fun e!4390196 () Bool)

(declare-fun e!4390197 () Bool)

(assert (=> b!7331641 (= e!4390196 e!4390197)))

(declare-fun res!2962911 () Bool)

(declare-fun call!667903 () Bool)

(assert (=> b!7331641 (= res!2962911 call!667903)))

(assert (=> b!7331641 (=> (not res!2962911) (not e!4390197))))

(declare-fun b!7331642 () Bool)

(declare-fun e!4390199 () Bool)

(declare-fun e!4390195 () Bool)

(assert (=> b!7331642 (= e!4390199 e!4390195)))

(declare-fun res!2962913 () Bool)

(assert (=> b!7331642 (=> (not res!2962913) (not e!4390195))))

(assert (=> b!7331642 (= res!2962913 (and (not ((_ is EmptyLang!19049) (h!77869 (exprs!8489 ct1!256)))) (not ((_ is ElementMatch!19049) (h!77869 (exprs!8489 ct1!256))))))))

(declare-fun b!7331643 () Bool)

(declare-fun e!4390200 () Bool)

(assert (=> b!7331643 (= e!4390196 e!4390200)))

(declare-fun res!2962912 () Bool)

(declare-fun call!667902 () Bool)

(assert (=> b!7331643 (= res!2962912 call!667902)))

(assert (=> b!7331643 (=> res!2962912 e!4390200)))

(declare-fun bm!667897 () Bool)

(declare-fun c!1361354 () Bool)

(assert (=> bm!667897 (= call!667902 (nullable!8150 (ite c!1361354 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regTwo!38610 (h!77869 (exprs!8489 ct1!256))))))))

(declare-fun b!7331644 () Bool)

(assert (=> b!7331644 (= e!4390197 call!667902)))

(declare-fun b!7331645 () Bool)

(declare-fun e!4390198 () Bool)

(assert (=> b!7331645 (= e!4390198 e!4390196)))

(assert (=> b!7331645 (= c!1361354 ((_ is Union!19049) (h!77869 (exprs!8489 ct1!256))))))

(declare-fun bm!667898 () Bool)

(assert (=> bm!667898 (= call!667903 (nullable!8150 (ite c!1361354 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256))))))))

(declare-fun b!7331647 () Bool)

(assert (=> b!7331647 (= e!4390200 call!667903)))

(declare-fun b!7331646 () Bool)

(assert (=> b!7331646 (= e!4390195 e!4390198)))

(declare-fun res!2962915 () Bool)

(assert (=> b!7331646 (=> res!2962915 e!4390198)))

(assert (=> b!7331646 (= res!2962915 ((_ is Star!19049) (h!77869 (exprs!8489 ct1!256))))))

(declare-fun d!2276755 () Bool)

(declare-fun res!2962914 () Bool)

(assert (=> d!2276755 (=> res!2962914 e!4390199)))

(assert (=> d!2276755 (= res!2962914 ((_ is EmptyExpr!19049) (h!77869 (exprs!8489 ct1!256))))))

(assert (=> d!2276755 (= (nullableFct!3244 (h!77869 (exprs!8489 ct1!256))) e!4390199)))

(assert (= (and d!2276755 (not res!2962914)) b!7331642))

(assert (= (and b!7331642 res!2962913) b!7331646))

(assert (= (and b!7331646 (not res!2962915)) b!7331645))

(assert (= (and b!7331645 c!1361354) b!7331643))

(assert (= (and b!7331645 (not c!1361354)) b!7331641))

(assert (= (and b!7331643 (not res!2962912)) b!7331647))

(assert (= (and b!7331641 res!2962911) b!7331644))

(assert (= (or b!7331643 b!7331644) bm!667897))

(assert (= (or b!7331647 b!7331641) bm!667898))

(declare-fun m!7997696 () Bool)

(assert (=> bm!667897 m!7997696))

(declare-fun m!7997698 () Bool)

(assert (=> bm!667898 m!7997698))

(assert (=> d!2276655 d!2276755))

(declare-fun b!7331648 () Bool)

(declare-fun e!4390201 () (InoxSet Context!15978))

(declare-fun call!667908 () (InoxSet Context!15978))

(assert (=> b!7331648 (= e!4390201 call!667908)))

(declare-fun d!2276757 () Bool)

(declare-fun c!1361359 () Bool)

(assert (=> d!2276757 (= c!1361359 (and ((_ is ElementMatch!19049) (h!77869 (exprs!8489 ct1!256))) (= (c!1361231 (h!77869 (exprs!8489 ct1!256))) c!10305)))))

(declare-fun e!4390203 () (InoxSet Context!15978))

(assert (=> d!2276757 (= (derivationStepZipperDown!2876 (h!77869 (exprs!8489 ct1!256)) (Context!15979 (t!385932 (exprs!8489 ct1!256))) c!10305) e!4390203)))

(declare-fun b!7331649 () Bool)

(declare-fun e!4390204 () Bool)

(assert (=> b!7331649 (= e!4390204 (nullable!8150 (regOne!38610 (h!77869 (exprs!8489 ct1!256)))))))

(declare-fun b!7331650 () Bool)

(assert (=> b!7331650 (= e!4390201 ((as const (Array Context!15978 Bool)) false))))

(declare-fun bm!667899 () Bool)

(declare-fun call!667904 () List!71545)

(declare-fun call!667907 () List!71545)

(assert (=> bm!667899 (= call!667904 call!667907)))

(declare-fun b!7331651 () Bool)

(declare-fun c!1361357 () Bool)

(assert (=> b!7331651 (= c!1361357 ((_ is Star!19049) (h!77869 (exprs!8489 ct1!256))))))

(declare-fun e!4390206 () (InoxSet Context!15978))

(assert (=> b!7331651 (= e!4390206 e!4390201)))

(declare-fun b!7331652 () Bool)

(declare-fun e!4390205 () (InoxSet Context!15978))

(assert (=> b!7331652 (= e!4390205 e!4390206)))

(declare-fun c!1361358 () Bool)

(assert (=> b!7331652 (= c!1361358 ((_ is Concat!27894) (h!77869 (exprs!8489 ct1!256))))))

(declare-fun b!7331653 () Bool)

(declare-fun e!4390202 () (InoxSet Context!15978))

(assert (=> b!7331653 (= e!4390203 e!4390202)))

(declare-fun c!1361356 () Bool)

(assert (=> b!7331653 (= c!1361356 ((_ is Union!19049) (h!77869 (exprs!8489 ct1!256))))))

(declare-fun bm!667900 () Bool)

(declare-fun call!667905 () (InoxSet Context!15978))

(assert (=> bm!667900 (= call!667908 call!667905)))

(declare-fun b!7331654 () Bool)

(declare-fun c!1361355 () Bool)

(assert (=> b!7331654 (= c!1361355 e!4390204)))

(declare-fun res!2962916 () Bool)

(assert (=> b!7331654 (=> (not res!2962916) (not e!4390204))))

(assert (=> b!7331654 (= res!2962916 ((_ is Concat!27894) (h!77869 (exprs!8489 ct1!256))))))

(assert (=> b!7331654 (= e!4390202 e!4390205)))

(declare-fun bm!667901 () Bool)

(declare-fun call!667909 () (InoxSet Context!15978))

(assert (=> bm!667901 (= call!667905 call!667909)))

(declare-fun bm!667902 () Bool)

(assert (=> bm!667902 (= call!667907 ($colon$colon!3061 (exprs!8489 (Context!15979 (t!385932 (exprs!8489 ct1!256)))) (ite (or c!1361355 c!1361358) (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (h!77869 (exprs!8489 ct1!256)))))))

(declare-fun b!7331655 () Bool)

(declare-fun call!667906 () (InoxSet Context!15978))

(assert (=> b!7331655 (= e!4390205 ((_ map or) call!667906 call!667905))))

(declare-fun bm!667903 () Bool)

(assert (=> bm!667903 (= call!667906 (derivationStepZipperDown!2876 (ite c!1361356 (regOne!38611 (h!77869 (exprs!8489 ct1!256))) (regOne!38610 (h!77869 (exprs!8489 ct1!256)))) (ite c!1361356 (Context!15979 (t!385932 (exprs!8489 ct1!256))) (Context!15979 call!667907)) c!10305))))

(declare-fun b!7331656 () Bool)

(assert (=> b!7331656 (= e!4390202 ((_ map or) call!667906 call!667909))))

(declare-fun b!7331657 () Bool)

(assert (=> b!7331657 (= e!4390206 call!667908)))

(declare-fun b!7331658 () Bool)

(assert (=> b!7331658 (= e!4390203 (store ((as const (Array Context!15978 Bool)) false) (Context!15979 (t!385932 (exprs!8489 ct1!256))) true))))

(declare-fun bm!667904 () Bool)

(assert (=> bm!667904 (= call!667909 (derivationStepZipperDown!2876 (ite c!1361356 (regTwo!38611 (h!77869 (exprs!8489 ct1!256))) (ite c!1361355 (regTwo!38610 (h!77869 (exprs!8489 ct1!256))) (ite c!1361358 (regOne!38610 (h!77869 (exprs!8489 ct1!256))) (reg!19378 (h!77869 (exprs!8489 ct1!256)))))) (ite (or c!1361356 c!1361355) (Context!15979 (t!385932 (exprs!8489 ct1!256))) (Context!15979 call!667904)) c!10305))))

(assert (= (and d!2276757 c!1361359) b!7331658))

(assert (= (and d!2276757 (not c!1361359)) b!7331653))

(assert (= (and b!7331653 c!1361356) b!7331656))

(assert (= (and b!7331653 (not c!1361356)) b!7331654))

(assert (= (and b!7331654 res!2962916) b!7331649))

(assert (= (and b!7331654 c!1361355) b!7331655))

(assert (= (and b!7331654 (not c!1361355)) b!7331652))

(assert (= (and b!7331652 c!1361358) b!7331657))

(assert (= (and b!7331652 (not c!1361358)) b!7331651))

(assert (= (and b!7331651 c!1361357) b!7331648))

(assert (= (and b!7331651 (not c!1361357)) b!7331650))

(assert (= (or b!7331657 b!7331648) bm!667899))

(assert (= (or b!7331657 b!7331648) bm!667900))

(assert (= (or b!7331655 bm!667900) bm!667901))

(assert (= (or b!7331655 bm!667899) bm!667902))

(assert (= (or b!7331656 bm!667901) bm!667904))

(assert (= (or b!7331656 b!7331655) bm!667903))

(declare-fun m!7997700 () Bool)

(assert (=> bm!667904 m!7997700))

(declare-fun m!7997702 () Bool)

(assert (=> b!7331658 m!7997702))

(declare-fun m!7997704 () Bool)

(assert (=> bm!667902 m!7997704))

(assert (=> b!7331649 m!7997498))

(declare-fun m!7997706 () Bool)

(assert (=> bm!667903 m!7997706))

(assert (=> bm!667814 d!2276757))

(declare-fun d!2276759 () Bool)

(declare-fun res!2962917 () Bool)

(declare-fun e!4390207 () Bool)

(assert (=> d!2276759 (=> res!2962917 e!4390207)))

(assert (=> d!2276759 (= res!2962917 ((_ is Nil!71421) (exprs!8489 cWitness!35)))))

(assert (=> d!2276759 (= (forall!17888 (exprs!8489 cWitness!35) lambda!454756) e!4390207)))

(declare-fun b!7331659 () Bool)

(declare-fun e!4390208 () Bool)

(assert (=> b!7331659 (= e!4390207 e!4390208)))

(declare-fun res!2962918 () Bool)

(assert (=> b!7331659 (=> (not res!2962918) (not e!4390208))))

(assert (=> b!7331659 (= res!2962918 (dynLambda!29424 lambda!454756 (h!77869 (exprs!8489 cWitness!35))))))

(declare-fun b!7331660 () Bool)

(assert (=> b!7331660 (= e!4390208 (forall!17888 (t!385932 (exprs!8489 cWitness!35)) lambda!454756))))

(assert (= (and d!2276759 (not res!2962917)) b!7331659))

(assert (= (and b!7331659 res!2962918) b!7331660))

(declare-fun b_lambda!283567 () Bool)

(assert (=> (not b_lambda!283567) (not b!7331659)))

(declare-fun m!7997708 () Bool)

(assert (=> b!7331659 m!7997708))

(declare-fun m!7997710 () Bool)

(assert (=> b!7331660 m!7997710))

(assert (=> d!2276625 d!2276759))

(declare-fun d!2276761 () Bool)

(declare-fun res!2962919 () Bool)

(declare-fun e!4390209 () Bool)

(assert (=> d!2276761 (=> res!2962919 e!4390209)))

(assert (=> d!2276761 (= res!2962919 ((_ is Nil!71421) (++!16871 (exprs!8489 ct1!256) (exprs!8489 ct2!352))))))

(assert (=> d!2276761 (= (forall!17888 (++!16871 (exprs!8489 ct1!256) (exprs!8489 ct2!352)) lambda!454747) e!4390209)))

(declare-fun b!7331661 () Bool)

(declare-fun e!4390210 () Bool)

(assert (=> b!7331661 (= e!4390209 e!4390210)))

(declare-fun res!2962920 () Bool)

(assert (=> b!7331661 (=> (not res!2962920) (not e!4390210))))

(assert (=> b!7331661 (= res!2962920 (dynLambda!29424 lambda!454747 (h!77869 (++!16871 (exprs!8489 ct1!256) (exprs!8489 ct2!352)))))))

(declare-fun b!7331662 () Bool)

(assert (=> b!7331662 (= e!4390210 (forall!17888 (t!385932 (++!16871 (exprs!8489 ct1!256) (exprs!8489 ct2!352))) lambda!454747))))

(assert (= (and d!2276761 (not res!2962919)) b!7331661))

(assert (= (and b!7331661 res!2962920) b!7331662))

(declare-fun b_lambda!283569 () Bool)

(assert (=> (not b_lambda!283569) (not b!7331661)))

(declare-fun m!7997712 () Bool)

(assert (=> b!7331661 m!7997712))

(declare-fun m!7997714 () Bool)

(assert (=> b!7331662 m!7997714))

(assert (=> d!2276653 d!2276761))

(assert (=> d!2276653 d!2276651))

(declare-fun d!2276763 () Bool)

(assert (=> d!2276763 (forall!17888 (++!16871 (exprs!8489 ct1!256) (exprs!8489 ct2!352)) lambda!454747)))

(assert (=> d!2276763 true))

(declare-fun _$78!903 () Unit!165059)

(assert (=> d!2276763 (= (choose!57027 (exprs!8489 ct1!256) (exprs!8489 ct2!352) lambda!454747) _$78!903)))

(declare-fun bs!1917473 () Bool)

(assert (= bs!1917473 d!2276763))

(assert (=> bs!1917473 m!7997390))

(assert (=> bs!1917473 m!7997390))

(assert (=> bs!1917473 m!7997484))

(assert (=> d!2276653 d!2276763))

(declare-fun d!2276765 () Bool)

(declare-fun res!2962921 () Bool)

(declare-fun e!4390211 () Bool)

(assert (=> d!2276765 (=> res!2962921 e!4390211)))

(assert (=> d!2276765 (= res!2962921 ((_ is Nil!71421) (exprs!8489 ct1!256)))))

(assert (=> d!2276765 (= (forall!17888 (exprs!8489 ct1!256) lambda!454747) e!4390211)))

(declare-fun b!7331663 () Bool)

(declare-fun e!4390212 () Bool)

(assert (=> b!7331663 (= e!4390211 e!4390212)))

(declare-fun res!2962922 () Bool)

(assert (=> b!7331663 (=> (not res!2962922) (not e!4390212))))

(assert (=> b!7331663 (= res!2962922 (dynLambda!29424 lambda!454747 (h!77869 (exprs!8489 ct1!256))))))

(declare-fun b!7331664 () Bool)

(assert (=> b!7331664 (= e!4390212 (forall!17888 (t!385932 (exprs!8489 ct1!256)) lambda!454747))))

(assert (= (and d!2276765 (not res!2962921)) b!7331663))

(assert (= (and b!7331663 res!2962922) b!7331664))

(declare-fun b_lambda!283571 () Bool)

(assert (=> (not b_lambda!283571) (not b!7331663)))

(declare-fun m!7997716 () Bool)

(assert (=> b!7331663 m!7997716))

(declare-fun m!7997718 () Bool)

(assert (=> b!7331664 m!7997718))

(assert (=> d!2276653 d!2276765))

(declare-fun d!2276767 () Bool)

(declare-fun res!2962923 () Bool)

(declare-fun e!4390213 () Bool)

(assert (=> d!2276767 (=> res!2962923 e!4390213)))

(assert (=> d!2276767 (= res!2962923 ((_ is Nil!71421) (exprs!8489 ct1!256)))))

(assert (=> d!2276767 (= (forall!17888 (exprs!8489 ct1!256) lambda!454757) e!4390213)))

(declare-fun b!7331665 () Bool)

(declare-fun e!4390214 () Bool)

(assert (=> b!7331665 (= e!4390213 e!4390214)))

(declare-fun res!2962924 () Bool)

(assert (=> b!7331665 (=> (not res!2962924) (not e!4390214))))

(assert (=> b!7331665 (= res!2962924 (dynLambda!29424 lambda!454757 (h!77869 (exprs!8489 ct1!256))))))

(declare-fun b!7331666 () Bool)

(assert (=> b!7331666 (= e!4390214 (forall!17888 (t!385932 (exprs!8489 ct1!256)) lambda!454757))))

(assert (= (and d!2276767 (not res!2962923)) b!7331665))

(assert (= (and b!7331665 res!2962924) b!7331666))

(declare-fun b_lambda!283573 () Bool)

(assert (=> (not b_lambda!283573) (not b!7331665)))

(declare-fun m!7997720 () Bool)

(assert (=> b!7331665 m!7997720))

(declare-fun m!7997722 () Bool)

(assert (=> b!7331666 m!7997722))

(assert (=> d!2276631 d!2276767))

(declare-fun b!7331677 () Bool)

(declare-fun e!4390217 () Bool)

(assert (=> b!7331677 (= e!4390217 tp_is_empty!48343)))

(declare-fun b!7331678 () Bool)

(declare-fun tp!2081598 () Bool)

(declare-fun tp!2081600 () Bool)

(assert (=> b!7331678 (= e!4390217 (and tp!2081598 tp!2081600))))

(declare-fun b!7331679 () Bool)

(declare-fun tp!2081599 () Bool)

(assert (=> b!7331679 (= e!4390217 tp!2081599)))

(assert (=> b!7331411 (= tp!2081554 e!4390217)))

(declare-fun b!7331680 () Bool)

(declare-fun tp!2081601 () Bool)

(declare-fun tp!2081597 () Bool)

(assert (=> b!7331680 (= e!4390217 (and tp!2081601 tp!2081597))))

(assert (= (and b!7331411 ((_ is ElementMatch!19049) (h!77869 (exprs!8489 cWitness!35)))) b!7331677))

(assert (= (and b!7331411 ((_ is Concat!27894) (h!77869 (exprs!8489 cWitness!35)))) b!7331678))

(assert (= (and b!7331411 ((_ is Star!19049) (h!77869 (exprs!8489 cWitness!35)))) b!7331679))

(assert (= (and b!7331411 ((_ is Union!19049) (h!77869 (exprs!8489 cWitness!35)))) b!7331680))

(declare-fun b!7331681 () Bool)

(declare-fun e!4390218 () Bool)

(declare-fun tp!2081602 () Bool)

(declare-fun tp!2081603 () Bool)

(assert (=> b!7331681 (= e!4390218 (and tp!2081602 tp!2081603))))

(assert (=> b!7331411 (= tp!2081555 e!4390218)))

(assert (= (and b!7331411 ((_ is Cons!71421) (t!385932 (exprs!8489 cWitness!35)))) b!7331681))

(declare-fun b!7331682 () Bool)

(declare-fun e!4390219 () Bool)

(assert (=> b!7331682 (= e!4390219 tp_is_empty!48343)))

(declare-fun b!7331683 () Bool)

(declare-fun tp!2081605 () Bool)

(declare-fun tp!2081607 () Bool)

(assert (=> b!7331683 (= e!4390219 (and tp!2081605 tp!2081607))))

(declare-fun b!7331684 () Bool)

(declare-fun tp!2081606 () Bool)

(assert (=> b!7331684 (= e!4390219 tp!2081606)))

(assert (=> b!7331410 (= tp!2081552 e!4390219)))

(declare-fun b!7331685 () Bool)

(declare-fun tp!2081608 () Bool)

(declare-fun tp!2081604 () Bool)

(assert (=> b!7331685 (= e!4390219 (and tp!2081608 tp!2081604))))

(assert (= (and b!7331410 ((_ is ElementMatch!19049) (h!77869 (exprs!8489 ct2!352)))) b!7331682))

(assert (= (and b!7331410 ((_ is Concat!27894) (h!77869 (exprs!8489 ct2!352)))) b!7331683))

(assert (= (and b!7331410 ((_ is Star!19049) (h!77869 (exprs!8489 ct2!352)))) b!7331684))

(assert (= (and b!7331410 ((_ is Union!19049) (h!77869 (exprs!8489 ct2!352)))) b!7331685))

(declare-fun b!7331686 () Bool)

(declare-fun e!4390220 () Bool)

(declare-fun tp!2081609 () Bool)

(declare-fun tp!2081610 () Bool)

(assert (=> b!7331686 (= e!4390220 (and tp!2081609 tp!2081610))))

(assert (=> b!7331410 (= tp!2081553 e!4390220)))

(assert (= (and b!7331410 ((_ is Cons!71421) (t!385932 (exprs!8489 ct2!352)))) b!7331686))

(declare-fun b!7331687 () Bool)

(declare-fun e!4390221 () Bool)

(assert (=> b!7331687 (= e!4390221 tp_is_empty!48343)))

(declare-fun b!7331688 () Bool)

(declare-fun tp!2081612 () Bool)

(declare-fun tp!2081614 () Bool)

(assert (=> b!7331688 (= e!4390221 (and tp!2081612 tp!2081614))))

(declare-fun b!7331689 () Bool)

(declare-fun tp!2081613 () Bool)

(assert (=> b!7331689 (= e!4390221 tp!2081613)))

(assert (=> b!7331409 (= tp!2081550 e!4390221)))

(declare-fun b!7331690 () Bool)

(declare-fun tp!2081615 () Bool)

(declare-fun tp!2081611 () Bool)

(assert (=> b!7331690 (= e!4390221 (and tp!2081615 tp!2081611))))

(assert (= (and b!7331409 ((_ is ElementMatch!19049) (h!77869 (exprs!8489 ct1!256)))) b!7331687))

(assert (= (and b!7331409 ((_ is Concat!27894) (h!77869 (exprs!8489 ct1!256)))) b!7331688))

(assert (= (and b!7331409 ((_ is Star!19049) (h!77869 (exprs!8489 ct1!256)))) b!7331689))

(assert (= (and b!7331409 ((_ is Union!19049) (h!77869 (exprs!8489 ct1!256)))) b!7331690))

(declare-fun b!7331691 () Bool)

(declare-fun e!4390222 () Bool)

(declare-fun tp!2081616 () Bool)

(declare-fun tp!2081617 () Bool)

(assert (=> b!7331691 (= e!4390222 (and tp!2081616 tp!2081617))))

(assert (=> b!7331409 (= tp!2081551 e!4390222)))

(assert (= (and b!7331409 ((_ is Cons!71421) (t!385932 (exprs!8489 ct1!256)))) b!7331691))

(declare-fun b_lambda!283575 () Bool)

(assert (= b_lambda!283563 (or d!2276633 b_lambda!283575)))

(declare-fun bs!1917474 () Bool)

(declare-fun d!2276769 () Bool)

(assert (= bs!1917474 (and d!2276769 d!2276633)))

(declare-fun validRegex!9653 (Regex!19049) Bool)

(assert (=> bs!1917474 (= (dynLambda!29424 lambda!454758 (h!77869 (exprs!8489 ct2!352))) (validRegex!9653 (h!77869 (exprs!8489 ct2!352))))))

(declare-fun m!7997724 () Bool)

(assert (=> bs!1917474 m!7997724))

(assert (=> b!7331567 d!2276769))

(declare-fun b_lambda!283577 () Bool)

(assert (= b_lambda!283565 (or d!2276635 b_lambda!283577)))

(declare-fun bs!1917475 () Bool)

(declare-fun d!2276771 () Bool)

(assert (= bs!1917475 (and d!2276771 d!2276635)))

(assert (=> bs!1917475 (= (dynLambda!29424 lambda!454759 (h!77869 (exprs!8489 (Context!15979 (tail!14730 lt!2608009))))) (validRegex!9653 (h!77869 (exprs!8489 (Context!15979 (tail!14730 lt!2608009))))))))

(declare-fun m!7997726 () Bool)

(assert (=> bs!1917475 m!7997726))

(assert (=> b!7331610 d!2276771))

(declare-fun b_lambda!283579 () Bool)

(assert (= b_lambda!283571 (or b!7331264 b_lambda!283579)))

(declare-fun bs!1917476 () Bool)

(declare-fun d!2276773 () Bool)

(assert (= bs!1917476 (and d!2276773 b!7331264)))

(assert (=> bs!1917476 (= (dynLambda!29424 lambda!454747 (h!77869 (exprs!8489 ct1!256))) (validRegex!9653 (h!77869 (exprs!8489 ct1!256))))))

(declare-fun m!7997728 () Bool)

(assert (=> bs!1917476 m!7997728))

(assert (=> b!7331663 d!2276773))

(declare-fun b_lambda!283581 () Bool)

(assert (= b_lambda!283573 (or d!2276631 b_lambda!283581)))

(declare-fun bs!1917477 () Bool)

(declare-fun d!2276775 () Bool)

(assert (= bs!1917477 (and d!2276775 d!2276631)))

(assert (=> bs!1917477 (= (dynLambda!29424 lambda!454757 (h!77869 (exprs!8489 ct1!256))) (validRegex!9653 (h!77869 (exprs!8489 ct1!256))))))

(assert (=> bs!1917477 m!7997728))

(assert (=> b!7331665 d!2276775))

(declare-fun b_lambda!283583 () Bool)

(assert (= b_lambda!283569 (or b!7331264 b_lambda!283583)))

(declare-fun bs!1917478 () Bool)

(declare-fun d!2276777 () Bool)

(assert (= bs!1917478 (and d!2276777 b!7331264)))

(assert (=> bs!1917478 (= (dynLambda!29424 lambda!454747 (h!77869 (++!16871 (exprs!8489 ct1!256) (exprs!8489 ct2!352)))) (validRegex!9653 (h!77869 (++!16871 (exprs!8489 ct1!256) (exprs!8489 ct2!352)))))))

(declare-fun m!7997730 () Bool)

(assert (=> bs!1917478 m!7997730))

(assert (=> b!7331661 d!2276777))

(declare-fun b_lambda!283585 () Bool)

(assert (= b_lambda!283567 (or d!2276625 b_lambda!283585)))

(declare-fun bs!1917479 () Bool)

(declare-fun d!2276779 () Bool)

(assert (= bs!1917479 (and d!2276779 d!2276625)))

(assert (=> bs!1917479 (= (dynLambda!29424 lambda!454756 (h!77869 (exprs!8489 cWitness!35))) (validRegex!9653 (h!77869 (exprs!8489 cWitness!35))))))

(declare-fun m!7997732 () Bool)

(assert (=> bs!1917479 m!7997732))

(assert (=> b!7331659 d!2276779))

(check-sat (not b!7331660) (not bs!1917474) (not b!7331611) (not bm!667892) (not d!2276731) (not bm!667891) (not b!7331681) (not b!7331587) (not b!7331624) (not bm!667889) (not bm!667904) (not b!7331583) (not bm!667879) (not b!7331679) (not d!2276723) (not b_lambda!283583) (not bs!1917475) (not b!7331666) (not b!7331619) (not bm!667902) (not b!7331572) (not b!7331575) (not b!7331689) (not b!7331686) (not b!7331553) (not b_lambda!283585) (not b!7331625) (not bm!667884) (not b!7331683) (not bm!667878) (not bm!667890) (not b!7331680) tp_is_empty!48343 (not b!7331662) (not b!7331589) (not b!7331576) (not d!2276733) (not b!7331617) (not d!2276763) (not b!7331664) (not bm!667903) (not b!7331621) (not b!7331600) (not b!7331649) (not b!7331690) (not b_lambda!283581) (not bs!1917479) (not b!7331571) (not bm!667897) (not b_lambda!283577) (not bm!667883) (not bs!1917478) (not b!7331691) (not b!7331678) (not bs!1917476) (not b!7331568) (not b!7331688) (not b!7331685) (not bm!667877) (not bm!667885) (not b!7331585) (not b_lambda!283575) (not b!7331684) (not b_lambda!283579) (not bs!1917477) (not bm!667898) (not bm!667876))
(check-sat)
