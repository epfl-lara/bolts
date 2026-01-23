; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!716088 () Bool)

(assert start!716088)

(declare-fun b!7332433 () Bool)

(declare-fun e!4390707 () Bool)

(declare-fun tp!2081753 () Bool)

(assert (=> b!7332433 (= e!4390707 tp!2081753)))

(declare-fun b!7332434 () Bool)

(declare-fun res!2963197 () Bool)

(declare-fun e!4390708 () Bool)

(assert (=> b!7332434 (=> (not res!2963197) (not e!4390708))))

(declare-datatypes ((C!38384 0))(
  ( (C!38385 (val!29552 Int)) )
))
(declare-datatypes ((Regex!19055 0))(
  ( (ElementMatch!19055 (c!1361543 C!38384)) (Concat!27900 (regOne!38622 Regex!19055) (regTwo!38622 Regex!19055)) (EmptyExpr!19055) (Star!19055 (reg!19384 Regex!19055)) (EmptyLang!19055) (Union!19055 (regOne!38623 Regex!19055) (regTwo!38623 Regex!19055)) )
))
(declare-datatypes ((List!71551 0))(
  ( (Nil!71427) (Cons!71427 (h!77875 Regex!19055) (t!385942 List!71551)) )
))
(declare-datatypes ((Context!15990 0))(
  ( (Context!15991 (exprs!8495 List!71551)) )
))
(declare-fun ct1!256 () Context!15990)

(declare-fun isEmpty!40967 (List!71551) Bool)

(assert (=> b!7332434 (= res!2963197 (not (isEmpty!40967 (exprs!8495 ct1!256))))))

(declare-fun b!7332435 () Bool)

(declare-fun e!4390709 () Bool)

(assert (=> b!7332435 (= e!4390709 e!4390708)))

(declare-fun res!2963199 () Bool)

(assert (=> b!7332435 (=> (not res!2963199) (not e!4390708))))

(get-info :version)

(assert (=> b!7332435 (= res!2963199 ((_ is Cons!71427) (exprs!8495 ct1!256)))))

(declare-fun lt!2608213 () List!71551)

(declare-fun ct2!352 () Context!15990)

(declare-fun ++!16877 (List!71551 List!71551) List!71551)

(assert (=> b!7332435 (= lt!2608213 (++!16877 (exprs!8495 ct1!256) (exprs!8495 ct2!352)))))

(declare-datatypes ((Unit!165071 0))(
  ( (Unit!165072) )
))
(declare-fun lt!2608220 () Unit!165071)

(declare-fun lambda!454799 () Int)

(declare-fun lemmaConcatPreservesForall!1734 (List!71551 List!71551 Int) Unit!165071)

(assert (=> b!7332435 (= lt!2608220 (lemmaConcatPreservesForall!1734 (exprs!8495 ct1!256) (exprs!8495 ct2!352) lambda!454799))))

(declare-fun b!7332436 () Bool)

(declare-fun e!4390710 () Bool)

(declare-fun tp!2081752 () Bool)

(assert (=> b!7332436 (= e!4390710 tp!2081752)))

(declare-fun b!7332437 () Bool)

(declare-fun e!4390706 () Bool)

(declare-fun tp!2081751 () Bool)

(assert (=> b!7332437 (= e!4390706 tp!2081751)))

(declare-fun b!7332438 () Bool)

(declare-fun res!2963198 () Bool)

(declare-fun e!4390711 () Bool)

(assert (=> b!7332438 (=> (not res!2963198) (not e!4390711))))

(assert (=> b!7332438 (= res!2963198 (not (isEmpty!40967 lt!2608213)))))

(declare-fun b!7332439 () Bool)

(declare-fun lt!2608224 () Context!15990)

(declare-fun inv!90977 (Context!15990) Bool)

(assert (=> b!7332439 (= e!4390711 (not (inv!90977 lt!2608224)))))

(declare-fun cWitness!35 () Context!15990)

(declare-fun lt!2608221 () Unit!165071)

(assert (=> b!7332439 (= lt!2608221 (lemmaConcatPreservesForall!1734 (exprs!8495 cWitness!35) (exprs!8495 ct2!352) lambda!454799))))

(declare-fun c!10305 () C!38384)

(declare-fun lt!2608222 () List!71551)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2882 (Regex!19055 Context!15990 C!38384) (InoxSet Context!15990))

(assert (=> b!7332439 (select (derivationStepZipperDown!2882 (h!77875 (exprs!8495 ct1!256)) (Context!15991 (++!16877 lt!2608222 (exprs!8495 ct2!352))) c!10305) lt!2608224)))

(assert (=> b!7332439 (= lt!2608224 (Context!15991 (++!16877 (exprs!8495 cWitness!35) (exprs!8495 ct2!352))))))

(declare-fun lt!2608217 () Unit!165071)

(assert (=> b!7332439 (= lt!2608217 (lemmaConcatPreservesForall!1734 lt!2608222 (exprs!8495 ct2!352) lambda!454799))))

(declare-fun lt!2608214 () Unit!165071)

(assert (=> b!7332439 (= lt!2608214 (lemmaConcatPreservesForall!1734 (exprs!8495 cWitness!35) (exprs!8495 ct2!352) lambda!454799))))

(declare-fun lt!2608218 () Context!15990)

(declare-fun lt!2608223 () Unit!165071)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!26 (Regex!19055 Context!15990 Context!15990 Context!15990 C!38384) Unit!165071)

(assert (=> b!7332439 (= lt!2608223 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!26 (h!77875 (exprs!8495 ct1!256)) lt!2608218 ct2!352 cWitness!35 c!10305))))

(declare-fun lt!2608225 () (InoxSet Context!15990))

(declare-fun tail!14736 (List!71551) List!71551)

(assert (=> b!7332439 (= lt!2608225 (derivationStepZipperDown!2882 (h!77875 (exprs!8495 ct1!256)) (Context!15991 (tail!14736 lt!2608213)) c!10305))))

(declare-fun b!7332440 () Bool)

(declare-fun e!4390712 () Bool)

(assert (=> b!7332440 (= e!4390712 e!4390711)))

(declare-fun res!2963196 () Bool)

(assert (=> b!7332440 (=> (not res!2963196) (not e!4390711))))

(declare-fun lt!2608216 () (InoxSet Context!15990))

(declare-fun lt!2608215 () (InoxSet Context!15990))

(declare-fun lt!2608219 () (InoxSet Context!15990))

(assert (=> b!7332440 (= res!2963196 (and (= lt!2608219 ((_ map or) lt!2608216 lt!2608215)) (or (select lt!2608216 cWitness!35) (select lt!2608215 cWitness!35)) (not (select lt!2608215 cWitness!35))))))

(declare-fun derivationStepZipperUp!2735 (Context!15990 C!38384) (InoxSet Context!15990))

(assert (=> b!7332440 (= lt!2608215 (derivationStepZipperUp!2735 lt!2608218 c!10305))))

(declare-fun res!2963195 () Bool)

(assert (=> start!716088 (=> (not res!2963195) (not e!4390709))))

(assert (=> start!716088 (= res!2963195 (select lt!2608219 cWitness!35))))

(assert (=> start!716088 (= lt!2608219 (derivationStepZipperUp!2735 ct1!256 c!10305))))

(assert (=> start!716088 e!4390709))

(declare-fun tp_is_empty!48355 () Bool)

(assert (=> start!716088 tp_is_empty!48355))

(assert (=> start!716088 (and (inv!90977 cWitness!35) e!4390706)))

(assert (=> start!716088 (and (inv!90977 ct1!256) e!4390710)))

(assert (=> start!716088 (and (inv!90977 ct2!352) e!4390707)))

(declare-fun b!7332441 () Bool)

(assert (=> b!7332441 (= e!4390708 e!4390712)))

(declare-fun res!2963200 () Bool)

(assert (=> b!7332441 (=> (not res!2963200) (not e!4390712))))

(declare-fun nullable!8156 (Regex!19055) Bool)

(assert (=> b!7332441 (= res!2963200 (nullable!8156 (h!77875 (exprs!8495 ct1!256))))))

(assert (=> b!7332441 (= lt!2608216 (derivationStepZipperDown!2882 (h!77875 (exprs!8495 ct1!256)) lt!2608218 c!10305))))

(assert (=> b!7332441 (= lt!2608218 (Context!15991 lt!2608222))))

(assert (=> b!7332441 (= lt!2608222 (tail!14736 (exprs!8495 ct1!256)))))

(assert (= (and start!716088 res!2963195) b!7332435))

(assert (= (and b!7332435 res!2963199) b!7332434))

(assert (= (and b!7332434 res!2963197) b!7332441))

(assert (= (and b!7332441 res!2963200) b!7332440))

(assert (= (and b!7332440 res!2963196) b!7332438))

(assert (= (and b!7332438 res!2963198) b!7332439))

(assert (= start!716088 b!7332437))

(assert (= start!716088 b!7332436))

(assert (= start!716088 b!7332433))

(declare-fun m!7998336 () Bool)

(assert (=> b!7332434 m!7998336))

(declare-fun m!7998338 () Bool)

(assert (=> start!716088 m!7998338))

(declare-fun m!7998340 () Bool)

(assert (=> start!716088 m!7998340))

(declare-fun m!7998342 () Bool)

(assert (=> start!716088 m!7998342))

(declare-fun m!7998344 () Bool)

(assert (=> start!716088 m!7998344))

(declare-fun m!7998346 () Bool)

(assert (=> start!716088 m!7998346))

(declare-fun m!7998348 () Bool)

(assert (=> b!7332439 m!7998348))

(declare-fun m!7998350 () Bool)

(assert (=> b!7332439 m!7998350))

(declare-fun m!7998352 () Bool)

(assert (=> b!7332439 m!7998352))

(declare-fun m!7998354 () Bool)

(assert (=> b!7332439 m!7998354))

(declare-fun m!7998356 () Bool)

(assert (=> b!7332439 m!7998356))

(declare-fun m!7998358 () Bool)

(assert (=> b!7332439 m!7998358))

(declare-fun m!7998360 () Bool)

(assert (=> b!7332439 m!7998360))

(declare-fun m!7998362 () Bool)

(assert (=> b!7332439 m!7998362))

(declare-fun m!7998364 () Bool)

(assert (=> b!7332439 m!7998364))

(declare-fun m!7998366 () Bool)

(assert (=> b!7332439 m!7998366))

(assert (=> b!7332439 m!7998348))

(declare-fun m!7998368 () Bool)

(assert (=> b!7332441 m!7998368))

(declare-fun m!7998370 () Bool)

(assert (=> b!7332441 m!7998370))

(declare-fun m!7998372 () Bool)

(assert (=> b!7332441 m!7998372))

(declare-fun m!7998374 () Bool)

(assert (=> b!7332440 m!7998374))

(declare-fun m!7998376 () Bool)

(assert (=> b!7332440 m!7998376))

(declare-fun m!7998378 () Bool)

(assert (=> b!7332440 m!7998378))

(declare-fun m!7998380 () Bool)

(assert (=> b!7332435 m!7998380))

(declare-fun m!7998382 () Bool)

(assert (=> b!7332435 m!7998382))

(declare-fun m!7998384 () Bool)

(assert (=> b!7332438 m!7998384))

(check-sat (not b!7332440) (not b!7332435) (not b!7332433) tp_is_empty!48355 (not start!716088) (not b!7332434) (not b!7332436) (not b!7332441) (not b!7332437) (not b!7332438) (not b!7332439))
(check-sat)
(get-model)

(declare-fun d!2276980 () Bool)

(declare-fun e!4390723 () Bool)

(assert (=> d!2276980 e!4390723))

(declare-fun res!2963208 () Bool)

(assert (=> d!2276980 (=> (not res!2963208) (not e!4390723))))

(declare-fun lt!2608228 () List!71551)

(declare-fun content!14982 (List!71551) (InoxSet Regex!19055))

(assert (=> d!2276980 (= res!2963208 (= (content!14982 lt!2608228) ((_ map or) (content!14982 (exprs!8495 ct1!256)) (content!14982 (exprs!8495 ct2!352)))))))

(declare-fun e!4390724 () List!71551)

(assert (=> d!2276980 (= lt!2608228 e!4390724)))

(declare-fun c!1361550 () Bool)

(assert (=> d!2276980 (= c!1361550 ((_ is Nil!71427) (exprs!8495 ct1!256)))))

(assert (=> d!2276980 (= (++!16877 (exprs!8495 ct1!256) (exprs!8495 ct2!352)) lt!2608228)))

(declare-fun b!7332463 () Bool)

(assert (=> b!7332463 (= e!4390723 (or (not (= (exprs!8495 ct2!352) Nil!71427)) (= lt!2608228 (exprs!8495 ct1!256))))))

(declare-fun b!7332461 () Bool)

(assert (=> b!7332461 (= e!4390724 (Cons!71427 (h!77875 (exprs!8495 ct1!256)) (++!16877 (t!385942 (exprs!8495 ct1!256)) (exprs!8495 ct2!352))))))

(declare-fun b!7332462 () Bool)

(declare-fun res!2963207 () Bool)

(assert (=> b!7332462 (=> (not res!2963207) (not e!4390723))))

(declare-fun size!41961 (List!71551) Int)

(assert (=> b!7332462 (= res!2963207 (= (size!41961 lt!2608228) (+ (size!41961 (exprs!8495 ct1!256)) (size!41961 (exprs!8495 ct2!352)))))))

(declare-fun b!7332460 () Bool)

(assert (=> b!7332460 (= e!4390724 (exprs!8495 ct2!352))))

(assert (= (and d!2276980 c!1361550) b!7332460))

(assert (= (and d!2276980 (not c!1361550)) b!7332461))

(assert (= (and d!2276980 res!2963208) b!7332462))

(assert (= (and b!7332462 res!2963207) b!7332463))

(declare-fun m!7998386 () Bool)

(assert (=> d!2276980 m!7998386))

(declare-fun m!7998388 () Bool)

(assert (=> d!2276980 m!7998388))

(declare-fun m!7998390 () Bool)

(assert (=> d!2276980 m!7998390))

(declare-fun m!7998392 () Bool)

(assert (=> b!7332461 m!7998392))

(declare-fun m!7998394 () Bool)

(assert (=> b!7332462 m!7998394))

(declare-fun m!7998396 () Bool)

(assert (=> b!7332462 m!7998396))

(declare-fun m!7998398 () Bool)

(assert (=> b!7332462 m!7998398))

(assert (=> b!7332435 d!2276980))

(declare-fun d!2276988 () Bool)

(declare-fun forall!17891 (List!71551 Int) Bool)

(assert (=> d!2276988 (forall!17891 (++!16877 (exprs!8495 ct1!256) (exprs!8495 ct2!352)) lambda!454799)))

(declare-fun lt!2608231 () Unit!165071)

(declare-fun choose!57030 (List!71551 List!71551 Int) Unit!165071)

(assert (=> d!2276988 (= lt!2608231 (choose!57030 (exprs!8495 ct1!256) (exprs!8495 ct2!352) lambda!454799))))

(assert (=> d!2276988 (forall!17891 (exprs!8495 ct1!256) lambda!454799)))

(assert (=> d!2276988 (= (lemmaConcatPreservesForall!1734 (exprs!8495 ct1!256) (exprs!8495 ct2!352) lambda!454799) lt!2608231)))

(declare-fun bs!1917526 () Bool)

(assert (= bs!1917526 d!2276988))

(assert (=> bs!1917526 m!7998380))

(assert (=> bs!1917526 m!7998380))

(declare-fun m!7998406 () Bool)

(assert (=> bs!1917526 m!7998406))

(declare-fun m!7998408 () Bool)

(assert (=> bs!1917526 m!7998408))

(declare-fun m!7998410 () Bool)

(assert (=> bs!1917526 m!7998410))

(assert (=> b!7332435 d!2276988))

(declare-fun b!7332487 () Bool)

(declare-fun e!4390740 () (InoxSet Context!15990))

(declare-fun e!4390738 () (InoxSet Context!15990))

(assert (=> b!7332487 (= e!4390740 e!4390738)))

(declare-fun c!1361559 () Bool)

(assert (=> b!7332487 (= c!1361559 ((_ is Cons!71427) (exprs!8495 lt!2608218)))))

(declare-fun b!7332488 () Bool)

(declare-fun call!668089 () (InoxSet Context!15990))

(assert (=> b!7332488 (= e!4390740 ((_ map or) call!668089 (derivationStepZipperUp!2735 (Context!15991 (t!385942 (exprs!8495 lt!2608218))) c!10305)))))

(declare-fun b!7332489 () Bool)

(assert (=> b!7332489 (= e!4390738 call!668089)))

(declare-fun b!7332490 () Bool)

(declare-fun e!4390739 () Bool)

(assert (=> b!7332490 (= e!4390739 (nullable!8156 (h!77875 (exprs!8495 lt!2608218))))))

(declare-fun b!7332491 () Bool)

(assert (=> b!7332491 (= e!4390738 ((as const (Array Context!15990 Bool)) false))))

(declare-fun d!2276992 () Bool)

(declare-fun c!1361560 () Bool)

(assert (=> d!2276992 (= c!1361560 e!4390739)))

(declare-fun res!2963216 () Bool)

(assert (=> d!2276992 (=> (not res!2963216) (not e!4390739))))

(assert (=> d!2276992 (= res!2963216 ((_ is Cons!71427) (exprs!8495 lt!2608218)))))

(assert (=> d!2276992 (= (derivationStepZipperUp!2735 lt!2608218 c!10305) e!4390740)))

(declare-fun bm!668084 () Bool)

(assert (=> bm!668084 (= call!668089 (derivationStepZipperDown!2882 (h!77875 (exprs!8495 lt!2608218)) (Context!15991 (t!385942 (exprs!8495 lt!2608218))) c!10305))))

(assert (= (and d!2276992 res!2963216) b!7332490))

(assert (= (and d!2276992 c!1361560) b!7332488))

(assert (= (and d!2276992 (not c!1361560)) b!7332487))

(assert (= (and b!7332487 c!1361559) b!7332489))

(assert (= (and b!7332487 (not c!1361559)) b!7332491))

(assert (= (or b!7332488 b!7332489) bm!668084))

(declare-fun m!7998414 () Bool)

(assert (=> b!7332488 m!7998414))

(declare-fun m!7998416 () Bool)

(assert (=> b!7332490 m!7998416))

(declare-fun m!7998418 () Bool)

(assert (=> bm!668084 m!7998418))

(assert (=> b!7332440 d!2276992))

(declare-fun d!2276998 () Bool)

(declare-fun nullableFct!3247 (Regex!19055) Bool)

(assert (=> d!2276998 (= (nullable!8156 (h!77875 (exprs!8495 ct1!256))) (nullableFct!3247 (h!77875 (exprs!8495 ct1!256))))))

(declare-fun bs!1917529 () Bool)

(assert (= bs!1917529 d!2276998))

(declare-fun m!7998420 () Bool)

(assert (=> bs!1917529 m!7998420))

(assert (=> b!7332441 d!2276998))

(declare-fun bm!668097 () Bool)

(declare-fun call!668102 () List!71551)

(declare-fun call!668106 () List!71551)

(assert (=> bm!668097 (= call!668102 call!668106)))

(declare-fun bm!668098 () Bool)

(declare-fun call!668107 () (InoxSet Context!15990))

(declare-fun call!668105 () (InoxSet Context!15990))

(assert (=> bm!668098 (= call!668107 call!668105)))

(declare-fun b!7332518 () Bool)

(declare-fun e!4390758 () (InoxSet Context!15990))

(declare-fun e!4390755 () (InoxSet Context!15990))

(assert (=> b!7332518 (= e!4390758 e!4390755)))

(declare-fun c!1361573 () Bool)

(assert (=> b!7332518 (= c!1361573 ((_ is Concat!27900) (h!77875 (exprs!8495 ct1!256))))))

(declare-fun b!7332519 () Bool)

(declare-fun e!4390759 () (InoxSet Context!15990))

(assert (=> b!7332519 (= e!4390759 (store ((as const (Array Context!15990 Bool)) false) lt!2608218 true))))

(declare-fun b!7332520 () Bool)

(declare-fun c!1361574 () Bool)

(declare-fun e!4390760 () Bool)

(assert (=> b!7332520 (= c!1361574 e!4390760)))

(declare-fun res!2963221 () Bool)

(assert (=> b!7332520 (=> (not res!2963221) (not e!4390760))))

(assert (=> b!7332520 (= res!2963221 ((_ is Concat!27900) (h!77875 (exprs!8495 ct1!256))))))

(declare-fun e!4390756 () (InoxSet Context!15990))

(assert (=> b!7332520 (= e!4390756 e!4390758)))

(declare-fun b!7332521 () Bool)

(declare-fun call!668103 () (InoxSet Context!15990))

(assert (=> b!7332521 (= e!4390758 ((_ map or) call!668103 call!668105))))

(declare-fun c!1361575 () Bool)

(declare-fun bm!668099 () Bool)

(assert (=> bm!668099 (= call!668103 (derivationStepZipperDown!2882 (ite c!1361575 (regOne!38623 (h!77875 (exprs!8495 ct1!256))) (regOne!38622 (h!77875 (exprs!8495 ct1!256)))) (ite c!1361575 lt!2608218 (Context!15991 call!668106)) c!10305))))

(declare-fun d!2277000 () Bool)

(declare-fun c!1361577 () Bool)

(assert (=> d!2277000 (= c!1361577 (and ((_ is ElementMatch!19055) (h!77875 (exprs!8495 ct1!256))) (= (c!1361543 (h!77875 (exprs!8495 ct1!256))) c!10305)))))

(assert (=> d!2277000 (= (derivationStepZipperDown!2882 (h!77875 (exprs!8495 ct1!256)) lt!2608218 c!10305) e!4390759)))

(declare-fun b!7332522 () Bool)

(declare-fun e!4390757 () (InoxSet Context!15990))

(assert (=> b!7332522 (= e!4390757 ((as const (Array Context!15990 Bool)) false))))

(declare-fun bm!668100 () Bool)

(declare-fun call!668104 () (InoxSet Context!15990))

(assert (=> bm!668100 (= call!668104 (derivationStepZipperDown!2882 (ite c!1361575 (regTwo!38623 (h!77875 (exprs!8495 ct1!256))) (ite c!1361574 (regTwo!38622 (h!77875 (exprs!8495 ct1!256))) (ite c!1361573 (regOne!38622 (h!77875 (exprs!8495 ct1!256))) (reg!19384 (h!77875 (exprs!8495 ct1!256)))))) (ite (or c!1361575 c!1361574) lt!2608218 (Context!15991 call!668102)) c!10305))))

(declare-fun bm!668101 () Bool)

(assert (=> bm!668101 (= call!668105 call!668104)))

(declare-fun b!7332523 () Bool)

(declare-fun c!1361576 () Bool)

(assert (=> b!7332523 (= c!1361576 ((_ is Star!19055) (h!77875 (exprs!8495 ct1!256))))))

(assert (=> b!7332523 (= e!4390755 e!4390757)))

(declare-fun b!7332524 () Bool)

(assert (=> b!7332524 (= e!4390760 (nullable!8156 (regOne!38622 (h!77875 (exprs!8495 ct1!256)))))))

(declare-fun b!7332525 () Bool)

(assert (=> b!7332525 (= e!4390755 call!668107)))

(declare-fun b!7332526 () Bool)

(assert (=> b!7332526 (= e!4390759 e!4390756)))

(assert (=> b!7332526 (= c!1361575 ((_ is Union!19055) (h!77875 (exprs!8495 ct1!256))))))

(declare-fun b!7332527 () Bool)

(assert (=> b!7332527 (= e!4390756 ((_ map or) call!668103 call!668104))))

(declare-fun b!7332528 () Bool)

(assert (=> b!7332528 (= e!4390757 call!668107)))

(declare-fun bm!668102 () Bool)

(declare-fun $colon$colon!3065 (List!71551 Regex!19055) List!71551)

(assert (=> bm!668102 (= call!668106 ($colon$colon!3065 (exprs!8495 lt!2608218) (ite (or c!1361574 c!1361573) (regTwo!38622 (h!77875 (exprs!8495 ct1!256))) (h!77875 (exprs!8495 ct1!256)))))))

(assert (= (and d!2277000 c!1361577) b!7332519))

(assert (= (and d!2277000 (not c!1361577)) b!7332526))

(assert (= (and b!7332526 c!1361575) b!7332527))

(assert (= (and b!7332526 (not c!1361575)) b!7332520))

(assert (= (and b!7332520 res!2963221) b!7332524))

(assert (= (and b!7332520 c!1361574) b!7332521))

(assert (= (and b!7332520 (not c!1361574)) b!7332518))

(assert (= (and b!7332518 c!1361573) b!7332525))

(assert (= (and b!7332518 (not c!1361573)) b!7332523))

(assert (= (and b!7332523 c!1361576) b!7332528))

(assert (= (and b!7332523 (not c!1361576)) b!7332522))

(assert (= (or b!7332525 b!7332528) bm!668097))

(assert (= (or b!7332525 b!7332528) bm!668098))

(assert (= (or b!7332521 bm!668098) bm!668101))

(assert (= (or b!7332521 bm!668097) bm!668102))

(assert (= (or b!7332527 bm!668101) bm!668100))

(assert (= (or b!7332527 b!7332521) bm!668099))

(declare-fun m!7998456 () Bool)

(assert (=> b!7332524 m!7998456))

(declare-fun m!7998458 () Bool)

(assert (=> bm!668102 m!7998458))

(declare-fun m!7998460 () Bool)

(assert (=> bm!668099 m!7998460))

(declare-fun m!7998462 () Bool)

(assert (=> bm!668100 m!7998462))

(declare-fun m!7998464 () Bool)

(assert (=> b!7332519 m!7998464))

(assert (=> b!7332441 d!2277000))

(declare-fun d!2277008 () Bool)

(assert (=> d!2277008 (= (tail!14736 (exprs!8495 ct1!256)) (t!385942 (exprs!8495 ct1!256)))))

(assert (=> b!7332441 d!2277008))

(declare-fun d!2277010 () Bool)

(assert (=> d!2277010 (forall!17891 (++!16877 lt!2608222 (exprs!8495 ct2!352)) lambda!454799)))

(declare-fun lt!2608247 () Unit!165071)

(assert (=> d!2277010 (= lt!2608247 (choose!57030 lt!2608222 (exprs!8495 ct2!352) lambda!454799))))

(assert (=> d!2277010 (forall!17891 lt!2608222 lambda!454799)))

(assert (=> d!2277010 (= (lemmaConcatPreservesForall!1734 lt!2608222 (exprs!8495 ct2!352) lambda!454799) lt!2608247)))

(declare-fun bs!1917534 () Bool)

(assert (= bs!1917534 d!2277010))

(assert (=> bs!1917534 m!7998358))

(assert (=> bs!1917534 m!7998358))

(declare-fun m!7998466 () Bool)

(assert (=> bs!1917534 m!7998466))

(declare-fun m!7998468 () Bool)

(assert (=> bs!1917534 m!7998468))

(declare-fun m!7998470 () Bool)

(assert (=> bs!1917534 m!7998470))

(assert (=> b!7332439 d!2277010))

(declare-fun d!2277012 () Bool)

(assert (=> d!2277012 (forall!17891 (++!16877 (exprs!8495 cWitness!35) (exprs!8495 ct2!352)) lambda!454799)))

(declare-fun lt!2608248 () Unit!165071)

(assert (=> d!2277012 (= lt!2608248 (choose!57030 (exprs!8495 cWitness!35) (exprs!8495 ct2!352) lambda!454799))))

(assert (=> d!2277012 (forall!17891 (exprs!8495 cWitness!35) lambda!454799)))

(assert (=> d!2277012 (= (lemmaConcatPreservesForall!1734 (exprs!8495 cWitness!35) (exprs!8495 ct2!352) lambda!454799) lt!2608248)))

(declare-fun bs!1917535 () Bool)

(assert (= bs!1917535 d!2277012))

(assert (=> bs!1917535 m!7998366))

(assert (=> bs!1917535 m!7998366))

(declare-fun m!7998472 () Bool)

(assert (=> bs!1917535 m!7998472))

(declare-fun m!7998474 () Bool)

(assert (=> bs!1917535 m!7998474))

(declare-fun m!7998476 () Bool)

(assert (=> bs!1917535 m!7998476))

(assert (=> b!7332439 d!2277012))

(declare-fun d!2277014 () Bool)

(declare-fun e!4390761 () Bool)

(assert (=> d!2277014 e!4390761))

(declare-fun res!2963223 () Bool)

(assert (=> d!2277014 (=> (not res!2963223) (not e!4390761))))

(declare-fun lt!2608249 () List!71551)

(assert (=> d!2277014 (= res!2963223 (= (content!14982 lt!2608249) ((_ map or) (content!14982 lt!2608222) (content!14982 (exprs!8495 ct2!352)))))))

(declare-fun e!4390762 () List!71551)

(assert (=> d!2277014 (= lt!2608249 e!4390762)))

(declare-fun c!1361578 () Bool)

(assert (=> d!2277014 (= c!1361578 ((_ is Nil!71427) lt!2608222))))

(assert (=> d!2277014 (= (++!16877 lt!2608222 (exprs!8495 ct2!352)) lt!2608249)))

(declare-fun b!7332532 () Bool)

(assert (=> b!7332532 (= e!4390761 (or (not (= (exprs!8495 ct2!352) Nil!71427)) (= lt!2608249 lt!2608222)))))

(declare-fun b!7332530 () Bool)

(assert (=> b!7332530 (= e!4390762 (Cons!71427 (h!77875 lt!2608222) (++!16877 (t!385942 lt!2608222) (exprs!8495 ct2!352))))))

(declare-fun b!7332531 () Bool)

(declare-fun res!2963222 () Bool)

(assert (=> b!7332531 (=> (not res!2963222) (not e!4390761))))

(assert (=> b!7332531 (= res!2963222 (= (size!41961 lt!2608249) (+ (size!41961 lt!2608222) (size!41961 (exprs!8495 ct2!352)))))))

(declare-fun b!7332529 () Bool)

(assert (=> b!7332529 (= e!4390762 (exprs!8495 ct2!352))))

(assert (= (and d!2277014 c!1361578) b!7332529))

(assert (= (and d!2277014 (not c!1361578)) b!7332530))

(assert (= (and d!2277014 res!2963223) b!7332531))

(assert (= (and b!7332531 res!2963222) b!7332532))

(declare-fun m!7998478 () Bool)

(assert (=> d!2277014 m!7998478))

(declare-fun m!7998480 () Bool)

(assert (=> d!2277014 m!7998480))

(assert (=> d!2277014 m!7998390))

(declare-fun m!7998482 () Bool)

(assert (=> b!7332530 m!7998482))

(declare-fun m!7998484 () Bool)

(assert (=> b!7332531 m!7998484))

(declare-fun m!7998486 () Bool)

(assert (=> b!7332531 m!7998486))

(assert (=> b!7332531 m!7998398))

(assert (=> b!7332439 d!2277014))

(declare-fun bs!1917536 () Bool)

(declare-fun d!2277016 () Bool)

(assert (= bs!1917536 (and d!2277016 b!7332435)))

(declare-fun lambda!454810 () Int)

(assert (=> bs!1917536 (= lambda!454810 lambda!454799)))

(assert (=> d!2277016 (= (inv!90977 lt!2608224) (forall!17891 (exprs!8495 lt!2608224) lambda!454810))))

(declare-fun bs!1917537 () Bool)

(assert (= bs!1917537 d!2277016))

(declare-fun m!7998488 () Bool)

(assert (=> bs!1917537 m!7998488))

(assert (=> b!7332439 d!2277016))

(declare-fun d!2277018 () Bool)

(assert (=> d!2277018 (= (tail!14736 lt!2608213) (t!385942 lt!2608213))))

(assert (=> b!7332439 d!2277018))

(declare-fun d!2277020 () Bool)

(declare-fun e!4390763 () Bool)

(assert (=> d!2277020 e!4390763))

(declare-fun res!2963225 () Bool)

(assert (=> d!2277020 (=> (not res!2963225) (not e!4390763))))

(declare-fun lt!2608250 () List!71551)

(assert (=> d!2277020 (= res!2963225 (= (content!14982 lt!2608250) ((_ map or) (content!14982 (exprs!8495 cWitness!35)) (content!14982 (exprs!8495 ct2!352)))))))

(declare-fun e!4390764 () List!71551)

(assert (=> d!2277020 (= lt!2608250 e!4390764)))

(declare-fun c!1361579 () Bool)

(assert (=> d!2277020 (= c!1361579 ((_ is Nil!71427) (exprs!8495 cWitness!35)))))

(assert (=> d!2277020 (= (++!16877 (exprs!8495 cWitness!35) (exprs!8495 ct2!352)) lt!2608250)))

(declare-fun b!7332538 () Bool)

(assert (=> b!7332538 (= e!4390763 (or (not (= (exprs!8495 ct2!352) Nil!71427)) (= lt!2608250 (exprs!8495 cWitness!35))))))

(declare-fun b!7332536 () Bool)

(assert (=> b!7332536 (= e!4390764 (Cons!71427 (h!77875 (exprs!8495 cWitness!35)) (++!16877 (t!385942 (exprs!8495 cWitness!35)) (exprs!8495 ct2!352))))))

(declare-fun b!7332537 () Bool)

(declare-fun res!2963224 () Bool)

(assert (=> b!7332537 (=> (not res!2963224) (not e!4390763))))

(assert (=> b!7332537 (= res!2963224 (= (size!41961 lt!2608250) (+ (size!41961 (exprs!8495 cWitness!35)) (size!41961 (exprs!8495 ct2!352)))))))

(declare-fun b!7332535 () Bool)

(assert (=> b!7332535 (= e!4390764 (exprs!8495 ct2!352))))

(assert (= (and d!2277020 c!1361579) b!7332535))

(assert (= (and d!2277020 (not c!1361579)) b!7332536))

(assert (= (and d!2277020 res!2963225) b!7332537))

(assert (= (and b!7332537 res!2963224) b!7332538))

(declare-fun m!7998490 () Bool)

(assert (=> d!2277020 m!7998490))

(declare-fun m!7998492 () Bool)

(assert (=> d!2277020 m!7998492))

(assert (=> d!2277020 m!7998390))

(declare-fun m!7998494 () Bool)

(assert (=> b!7332536 m!7998494))

(declare-fun m!7998496 () Bool)

(assert (=> b!7332537 m!7998496))

(declare-fun m!7998498 () Bool)

(assert (=> b!7332537 m!7998498))

(assert (=> b!7332537 m!7998398))

(assert (=> b!7332439 d!2277020))

(declare-fun bm!668103 () Bool)

(declare-fun call!668108 () List!71551)

(declare-fun call!668112 () List!71551)

(assert (=> bm!668103 (= call!668108 call!668112)))

(declare-fun bm!668104 () Bool)

(declare-fun call!668113 () (InoxSet Context!15990))

(declare-fun call!668111 () (InoxSet Context!15990))

(assert (=> bm!668104 (= call!668113 call!668111)))

(declare-fun b!7332559 () Bool)

(declare-fun e!4390780 () (InoxSet Context!15990))

(declare-fun e!4390777 () (InoxSet Context!15990))

(assert (=> b!7332559 (= e!4390780 e!4390777)))

(declare-fun c!1361590 () Bool)

(assert (=> b!7332559 (= c!1361590 ((_ is Concat!27900) (h!77875 (exprs!8495 ct1!256))))))

(declare-fun b!7332560 () Bool)

(declare-fun e!4390781 () (InoxSet Context!15990))

(assert (=> b!7332560 (= e!4390781 (store ((as const (Array Context!15990 Bool)) false) (Context!15991 (++!16877 lt!2608222 (exprs!8495 ct2!352))) true))))

(declare-fun b!7332561 () Bool)

(declare-fun c!1361591 () Bool)

(declare-fun e!4390782 () Bool)

(assert (=> b!7332561 (= c!1361591 e!4390782)))

(declare-fun res!2963228 () Bool)

(assert (=> b!7332561 (=> (not res!2963228) (not e!4390782))))

(assert (=> b!7332561 (= res!2963228 ((_ is Concat!27900) (h!77875 (exprs!8495 ct1!256))))))

(declare-fun e!4390778 () (InoxSet Context!15990))

(assert (=> b!7332561 (= e!4390778 e!4390780)))

(declare-fun b!7332562 () Bool)

(declare-fun call!668109 () (InoxSet Context!15990))

(assert (=> b!7332562 (= e!4390780 ((_ map or) call!668109 call!668111))))

(declare-fun bm!668105 () Bool)

(declare-fun c!1361592 () Bool)

(assert (=> bm!668105 (= call!668109 (derivationStepZipperDown!2882 (ite c!1361592 (regOne!38623 (h!77875 (exprs!8495 ct1!256))) (regOne!38622 (h!77875 (exprs!8495 ct1!256)))) (ite c!1361592 (Context!15991 (++!16877 lt!2608222 (exprs!8495 ct2!352))) (Context!15991 call!668112)) c!10305))))

(declare-fun d!2277022 () Bool)

(declare-fun c!1361594 () Bool)

(assert (=> d!2277022 (= c!1361594 (and ((_ is ElementMatch!19055) (h!77875 (exprs!8495 ct1!256))) (= (c!1361543 (h!77875 (exprs!8495 ct1!256))) c!10305)))))

(assert (=> d!2277022 (= (derivationStepZipperDown!2882 (h!77875 (exprs!8495 ct1!256)) (Context!15991 (++!16877 lt!2608222 (exprs!8495 ct2!352))) c!10305) e!4390781)))

(declare-fun b!7332563 () Bool)

(declare-fun e!4390779 () (InoxSet Context!15990))

(assert (=> b!7332563 (= e!4390779 ((as const (Array Context!15990 Bool)) false))))

(declare-fun bm!668106 () Bool)

(declare-fun call!668110 () (InoxSet Context!15990))

(assert (=> bm!668106 (= call!668110 (derivationStepZipperDown!2882 (ite c!1361592 (regTwo!38623 (h!77875 (exprs!8495 ct1!256))) (ite c!1361591 (regTwo!38622 (h!77875 (exprs!8495 ct1!256))) (ite c!1361590 (regOne!38622 (h!77875 (exprs!8495 ct1!256))) (reg!19384 (h!77875 (exprs!8495 ct1!256)))))) (ite (or c!1361592 c!1361591) (Context!15991 (++!16877 lt!2608222 (exprs!8495 ct2!352))) (Context!15991 call!668108)) c!10305))))

(declare-fun bm!668107 () Bool)

(assert (=> bm!668107 (= call!668111 call!668110)))

(declare-fun b!7332564 () Bool)

(declare-fun c!1361593 () Bool)

(assert (=> b!7332564 (= c!1361593 ((_ is Star!19055) (h!77875 (exprs!8495 ct1!256))))))

(assert (=> b!7332564 (= e!4390777 e!4390779)))

(declare-fun b!7332565 () Bool)

(assert (=> b!7332565 (= e!4390782 (nullable!8156 (regOne!38622 (h!77875 (exprs!8495 ct1!256)))))))

(declare-fun b!7332566 () Bool)

(assert (=> b!7332566 (= e!4390777 call!668113)))

(declare-fun b!7332567 () Bool)

(assert (=> b!7332567 (= e!4390781 e!4390778)))

(assert (=> b!7332567 (= c!1361592 ((_ is Union!19055) (h!77875 (exprs!8495 ct1!256))))))

(declare-fun b!7332568 () Bool)

(assert (=> b!7332568 (= e!4390778 ((_ map or) call!668109 call!668110))))

(declare-fun b!7332569 () Bool)

(assert (=> b!7332569 (= e!4390779 call!668113)))

(declare-fun bm!668108 () Bool)

(assert (=> bm!668108 (= call!668112 ($colon$colon!3065 (exprs!8495 (Context!15991 (++!16877 lt!2608222 (exprs!8495 ct2!352)))) (ite (or c!1361591 c!1361590) (regTwo!38622 (h!77875 (exprs!8495 ct1!256))) (h!77875 (exprs!8495 ct1!256)))))))

(assert (= (and d!2277022 c!1361594) b!7332560))

(assert (= (and d!2277022 (not c!1361594)) b!7332567))

(assert (= (and b!7332567 c!1361592) b!7332568))

(assert (= (and b!7332567 (not c!1361592)) b!7332561))

(assert (= (and b!7332561 res!2963228) b!7332565))

(assert (= (and b!7332561 c!1361591) b!7332562))

(assert (= (and b!7332561 (not c!1361591)) b!7332559))

(assert (= (and b!7332559 c!1361590) b!7332566))

(assert (= (and b!7332559 (not c!1361590)) b!7332564))

(assert (= (and b!7332564 c!1361593) b!7332569))

(assert (= (and b!7332564 (not c!1361593)) b!7332563))

(assert (= (or b!7332566 b!7332569) bm!668103))

(assert (= (or b!7332566 b!7332569) bm!668104))

(assert (= (or b!7332562 bm!668104) bm!668107))

(assert (= (or b!7332562 bm!668103) bm!668108))

(assert (= (or b!7332568 bm!668107) bm!668106))

(assert (= (or b!7332568 b!7332562) bm!668105))

(assert (=> b!7332565 m!7998456))

(declare-fun m!7998500 () Bool)

(assert (=> bm!668108 m!7998500))

(declare-fun m!7998502 () Bool)

(assert (=> bm!668105 m!7998502))

(declare-fun m!7998504 () Bool)

(assert (=> bm!668106 m!7998504))

(declare-fun m!7998506 () Bool)

(assert (=> b!7332560 m!7998506))

(assert (=> b!7332439 d!2277022))

(declare-fun bm!668117 () Bool)

(declare-fun call!668122 () List!71551)

(declare-fun call!668126 () List!71551)

(assert (=> bm!668117 (= call!668122 call!668126)))

(declare-fun bm!668118 () Bool)

(declare-fun call!668127 () (InoxSet Context!15990))

(declare-fun call!668125 () (InoxSet Context!15990))

(assert (=> bm!668118 (= call!668127 call!668125)))

(declare-fun b!7332570 () Bool)

(declare-fun e!4390786 () (InoxSet Context!15990))

(declare-fun e!4390783 () (InoxSet Context!15990))

(assert (=> b!7332570 (= e!4390786 e!4390783)))

(declare-fun c!1361595 () Bool)

(assert (=> b!7332570 (= c!1361595 ((_ is Concat!27900) (h!77875 (exprs!8495 ct1!256))))))

(declare-fun b!7332571 () Bool)

(declare-fun e!4390787 () (InoxSet Context!15990))

(assert (=> b!7332571 (= e!4390787 (store ((as const (Array Context!15990 Bool)) false) (Context!15991 (tail!14736 lt!2608213)) true))))

(declare-fun b!7332572 () Bool)

(declare-fun c!1361596 () Bool)

(declare-fun e!4390788 () Bool)

(assert (=> b!7332572 (= c!1361596 e!4390788)))

(declare-fun res!2963229 () Bool)

(assert (=> b!7332572 (=> (not res!2963229) (not e!4390788))))

(assert (=> b!7332572 (= res!2963229 ((_ is Concat!27900) (h!77875 (exprs!8495 ct1!256))))))

(declare-fun e!4390784 () (InoxSet Context!15990))

(assert (=> b!7332572 (= e!4390784 e!4390786)))

(declare-fun b!7332573 () Bool)

(declare-fun call!668123 () (InoxSet Context!15990))

(assert (=> b!7332573 (= e!4390786 ((_ map or) call!668123 call!668125))))

(declare-fun bm!668119 () Bool)

(declare-fun c!1361597 () Bool)

(assert (=> bm!668119 (= call!668123 (derivationStepZipperDown!2882 (ite c!1361597 (regOne!38623 (h!77875 (exprs!8495 ct1!256))) (regOne!38622 (h!77875 (exprs!8495 ct1!256)))) (ite c!1361597 (Context!15991 (tail!14736 lt!2608213)) (Context!15991 call!668126)) c!10305))))

(declare-fun d!2277024 () Bool)

(declare-fun c!1361599 () Bool)

(assert (=> d!2277024 (= c!1361599 (and ((_ is ElementMatch!19055) (h!77875 (exprs!8495 ct1!256))) (= (c!1361543 (h!77875 (exprs!8495 ct1!256))) c!10305)))))

(assert (=> d!2277024 (= (derivationStepZipperDown!2882 (h!77875 (exprs!8495 ct1!256)) (Context!15991 (tail!14736 lt!2608213)) c!10305) e!4390787)))

(declare-fun b!7332574 () Bool)

(declare-fun e!4390785 () (InoxSet Context!15990))

(assert (=> b!7332574 (= e!4390785 ((as const (Array Context!15990 Bool)) false))))

(declare-fun bm!668120 () Bool)

(declare-fun call!668124 () (InoxSet Context!15990))

(assert (=> bm!668120 (= call!668124 (derivationStepZipperDown!2882 (ite c!1361597 (regTwo!38623 (h!77875 (exprs!8495 ct1!256))) (ite c!1361596 (regTwo!38622 (h!77875 (exprs!8495 ct1!256))) (ite c!1361595 (regOne!38622 (h!77875 (exprs!8495 ct1!256))) (reg!19384 (h!77875 (exprs!8495 ct1!256)))))) (ite (or c!1361597 c!1361596) (Context!15991 (tail!14736 lt!2608213)) (Context!15991 call!668122)) c!10305))))

(declare-fun bm!668121 () Bool)

(assert (=> bm!668121 (= call!668125 call!668124)))

(declare-fun b!7332575 () Bool)

(declare-fun c!1361598 () Bool)

(assert (=> b!7332575 (= c!1361598 ((_ is Star!19055) (h!77875 (exprs!8495 ct1!256))))))

(assert (=> b!7332575 (= e!4390783 e!4390785)))

(declare-fun b!7332576 () Bool)

(assert (=> b!7332576 (= e!4390788 (nullable!8156 (regOne!38622 (h!77875 (exprs!8495 ct1!256)))))))

(declare-fun b!7332577 () Bool)

(assert (=> b!7332577 (= e!4390783 call!668127)))

(declare-fun b!7332578 () Bool)

(assert (=> b!7332578 (= e!4390787 e!4390784)))

(assert (=> b!7332578 (= c!1361597 ((_ is Union!19055) (h!77875 (exprs!8495 ct1!256))))))

(declare-fun b!7332579 () Bool)

(assert (=> b!7332579 (= e!4390784 ((_ map or) call!668123 call!668124))))

(declare-fun b!7332580 () Bool)

(assert (=> b!7332580 (= e!4390785 call!668127)))

(declare-fun bm!668122 () Bool)

(assert (=> bm!668122 (= call!668126 ($colon$colon!3065 (exprs!8495 (Context!15991 (tail!14736 lt!2608213))) (ite (or c!1361596 c!1361595) (regTwo!38622 (h!77875 (exprs!8495 ct1!256))) (h!77875 (exprs!8495 ct1!256)))))))

(assert (= (and d!2277024 c!1361599) b!7332571))

(assert (= (and d!2277024 (not c!1361599)) b!7332578))

(assert (= (and b!7332578 c!1361597) b!7332579))

(assert (= (and b!7332578 (not c!1361597)) b!7332572))

(assert (= (and b!7332572 res!2963229) b!7332576))

(assert (= (and b!7332572 c!1361596) b!7332573))

(assert (= (and b!7332572 (not c!1361596)) b!7332570))

(assert (= (and b!7332570 c!1361595) b!7332577))

(assert (= (and b!7332570 (not c!1361595)) b!7332575))

(assert (= (and b!7332575 c!1361598) b!7332580))

(assert (= (and b!7332575 (not c!1361598)) b!7332574))

(assert (= (or b!7332577 b!7332580) bm!668117))

(assert (= (or b!7332577 b!7332580) bm!668118))

(assert (= (or b!7332573 bm!668118) bm!668121))

(assert (= (or b!7332573 bm!668117) bm!668122))

(assert (= (or b!7332579 bm!668121) bm!668120))

(assert (= (or b!7332579 b!7332573) bm!668119))

(assert (=> b!7332576 m!7998456))

(declare-fun m!7998508 () Bool)

(assert (=> bm!668122 m!7998508))

(declare-fun m!7998510 () Bool)

(assert (=> bm!668119 m!7998510))

(declare-fun m!7998512 () Bool)

(assert (=> bm!668120 m!7998512))

(declare-fun m!7998514 () Bool)

(assert (=> b!7332571 m!7998514))

(assert (=> b!7332439 d!2277024))

(declare-fun bs!1917539 () Bool)

(declare-fun d!2277026 () Bool)

(assert (= bs!1917539 (and d!2277026 b!7332435)))

(declare-fun lambda!454815 () Int)

(assert (=> bs!1917539 (= lambda!454815 lambda!454799)))

(declare-fun bs!1917541 () Bool)

(assert (= bs!1917541 (and d!2277026 d!2277016)))

(assert (=> bs!1917541 (= lambda!454815 lambda!454810)))

(assert (=> d!2277026 (select (derivationStepZipperDown!2882 (h!77875 (exprs!8495 ct1!256)) (Context!15991 (++!16877 (exprs!8495 lt!2608218) (exprs!8495 ct2!352))) c!10305) (Context!15991 (++!16877 (exprs!8495 cWitness!35) (exprs!8495 ct2!352))))))

(declare-fun lt!2608261 () Unit!165071)

(assert (=> d!2277026 (= lt!2608261 (lemmaConcatPreservesForall!1734 (exprs!8495 lt!2608218) (exprs!8495 ct2!352) lambda!454815))))

(declare-fun lt!2608260 () Unit!165071)

(assert (=> d!2277026 (= lt!2608260 (lemmaConcatPreservesForall!1734 (exprs!8495 cWitness!35) (exprs!8495 ct2!352) lambda!454815))))

(declare-fun lt!2608259 () Unit!165071)

(declare-fun choose!57033 (Regex!19055 Context!15990 Context!15990 Context!15990 C!38384) Unit!165071)

(assert (=> d!2277026 (= lt!2608259 (choose!57033 (h!77875 (exprs!8495 ct1!256)) lt!2608218 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9659 (Regex!19055) Bool)

(assert (=> d!2277026 (validRegex!9659 (h!77875 (exprs!8495 ct1!256)))))

(assert (=> d!2277026 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!26 (h!77875 (exprs!8495 ct1!256)) lt!2608218 ct2!352 cWitness!35 c!10305) lt!2608259)))

(declare-fun bs!1917547 () Bool)

(assert (= bs!1917547 d!2277026))

(declare-fun m!7998556 () Bool)

(assert (=> bs!1917547 m!7998556))

(assert (=> bs!1917547 m!7998366))

(declare-fun m!7998558 () Bool)

(assert (=> bs!1917547 m!7998558))

(declare-fun m!7998560 () Bool)

(assert (=> bs!1917547 m!7998560))

(declare-fun m!7998562 () Bool)

(assert (=> bs!1917547 m!7998562))

(declare-fun m!7998564 () Bool)

(assert (=> bs!1917547 m!7998564))

(declare-fun m!7998568 () Bool)

(assert (=> bs!1917547 m!7998568))

(declare-fun m!7998570 () Bool)

(assert (=> bs!1917547 m!7998570))

(assert (=> b!7332439 d!2277026))

(declare-fun d!2277042 () Bool)

(assert (=> d!2277042 (= (isEmpty!40967 (exprs!8495 ct1!256)) ((_ is Nil!71427) (exprs!8495 ct1!256)))))

(assert (=> b!7332434 d!2277042))

(declare-fun b!7332612 () Bool)

(declare-fun e!4390808 () (InoxSet Context!15990))

(declare-fun e!4390806 () (InoxSet Context!15990))

(assert (=> b!7332612 (= e!4390808 e!4390806)))

(declare-fun c!1361614 () Bool)

(assert (=> b!7332612 (= c!1361614 ((_ is Cons!71427) (exprs!8495 ct1!256)))))

(declare-fun b!7332613 () Bool)

(declare-fun call!668145 () (InoxSet Context!15990))

(assert (=> b!7332613 (= e!4390808 ((_ map or) call!668145 (derivationStepZipperUp!2735 (Context!15991 (t!385942 (exprs!8495 ct1!256))) c!10305)))))

(declare-fun b!7332614 () Bool)

(assert (=> b!7332614 (= e!4390806 call!668145)))

(declare-fun b!7332615 () Bool)

(declare-fun e!4390807 () Bool)

(assert (=> b!7332615 (= e!4390807 (nullable!8156 (h!77875 (exprs!8495 ct1!256))))))

(declare-fun b!7332616 () Bool)

(assert (=> b!7332616 (= e!4390806 ((as const (Array Context!15990 Bool)) false))))

(declare-fun d!2277046 () Bool)

(declare-fun c!1361615 () Bool)

(assert (=> d!2277046 (= c!1361615 e!4390807)))

(declare-fun res!2963235 () Bool)

(assert (=> d!2277046 (=> (not res!2963235) (not e!4390807))))

(assert (=> d!2277046 (= res!2963235 ((_ is Cons!71427) (exprs!8495 ct1!256)))))

(assert (=> d!2277046 (= (derivationStepZipperUp!2735 ct1!256 c!10305) e!4390808)))

(declare-fun bm!668140 () Bool)

(assert (=> bm!668140 (= call!668145 (derivationStepZipperDown!2882 (h!77875 (exprs!8495 ct1!256)) (Context!15991 (t!385942 (exprs!8495 ct1!256))) c!10305))))

(assert (= (and d!2277046 res!2963235) b!7332615))

(assert (= (and d!2277046 c!1361615) b!7332613))

(assert (= (and d!2277046 (not c!1361615)) b!7332612))

(assert (= (and b!7332612 c!1361614) b!7332614))

(assert (= (and b!7332612 (not c!1361614)) b!7332616))

(assert (= (or b!7332613 b!7332614) bm!668140))

(declare-fun m!7998576 () Bool)

(assert (=> b!7332613 m!7998576))

(assert (=> b!7332615 m!7998368))

(declare-fun m!7998578 () Bool)

(assert (=> bm!668140 m!7998578))

(assert (=> start!716088 d!2277046))

(declare-fun bs!1917558 () Bool)

(declare-fun d!2277050 () Bool)

(assert (= bs!1917558 (and d!2277050 b!7332435)))

(declare-fun lambda!454819 () Int)

(assert (=> bs!1917558 (= lambda!454819 lambda!454799)))

(declare-fun bs!1917559 () Bool)

(assert (= bs!1917559 (and d!2277050 d!2277016)))

(assert (=> bs!1917559 (= lambda!454819 lambda!454810)))

(declare-fun bs!1917560 () Bool)

(assert (= bs!1917560 (and d!2277050 d!2277026)))

(assert (=> bs!1917560 (= lambda!454819 lambda!454815)))

(assert (=> d!2277050 (= (inv!90977 cWitness!35) (forall!17891 (exprs!8495 cWitness!35) lambda!454819))))

(declare-fun bs!1917561 () Bool)

(assert (= bs!1917561 d!2277050))

(declare-fun m!7998580 () Bool)

(assert (=> bs!1917561 m!7998580))

(assert (=> start!716088 d!2277050))

(declare-fun bs!1917562 () Bool)

(declare-fun d!2277052 () Bool)

(assert (= bs!1917562 (and d!2277052 b!7332435)))

(declare-fun lambda!454820 () Int)

(assert (=> bs!1917562 (= lambda!454820 lambda!454799)))

(declare-fun bs!1917563 () Bool)

(assert (= bs!1917563 (and d!2277052 d!2277016)))

(assert (=> bs!1917563 (= lambda!454820 lambda!454810)))

(declare-fun bs!1917564 () Bool)

(assert (= bs!1917564 (and d!2277052 d!2277026)))

(assert (=> bs!1917564 (= lambda!454820 lambda!454815)))

(declare-fun bs!1917565 () Bool)

(assert (= bs!1917565 (and d!2277052 d!2277050)))

(assert (=> bs!1917565 (= lambda!454820 lambda!454819)))

(assert (=> d!2277052 (= (inv!90977 ct1!256) (forall!17891 (exprs!8495 ct1!256) lambda!454820))))

(declare-fun bs!1917566 () Bool)

(assert (= bs!1917566 d!2277052))

(declare-fun m!7998584 () Bool)

(assert (=> bs!1917566 m!7998584))

(assert (=> start!716088 d!2277052))

(declare-fun bs!1917567 () Bool)

(declare-fun d!2277054 () Bool)

(assert (= bs!1917567 (and d!2277054 d!2277052)))

(declare-fun lambda!454821 () Int)

(assert (=> bs!1917567 (= lambda!454821 lambda!454820)))

(declare-fun bs!1917568 () Bool)

(assert (= bs!1917568 (and d!2277054 d!2277016)))

(assert (=> bs!1917568 (= lambda!454821 lambda!454810)))

(declare-fun bs!1917569 () Bool)

(assert (= bs!1917569 (and d!2277054 d!2277050)))

(assert (=> bs!1917569 (= lambda!454821 lambda!454819)))

(declare-fun bs!1917570 () Bool)

(assert (= bs!1917570 (and d!2277054 b!7332435)))

(assert (=> bs!1917570 (= lambda!454821 lambda!454799)))

(declare-fun bs!1917571 () Bool)

(assert (= bs!1917571 (and d!2277054 d!2277026)))

(assert (=> bs!1917571 (= lambda!454821 lambda!454815)))

(assert (=> d!2277054 (= (inv!90977 ct2!352) (forall!17891 (exprs!8495 ct2!352) lambda!454821))))

(declare-fun bs!1917572 () Bool)

(assert (= bs!1917572 d!2277054))

(declare-fun m!7998592 () Bool)

(assert (=> bs!1917572 m!7998592))

(assert (=> start!716088 d!2277054))

(declare-fun d!2277060 () Bool)

(assert (=> d!2277060 (= (isEmpty!40967 lt!2608213) ((_ is Nil!71427) lt!2608213))))

(assert (=> b!7332438 d!2277060))

(declare-fun b!7332636 () Bool)

(declare-fun e!4390819 () Bool)

(declare-fun tp!2081758 () Bool)

(declare-fun tp!2081759 () Bool)

(assert (=> b!7332636 (= e!4390819 (and tp!2081758 tp!2081759))))

(assert (=> b!7332436 (= tp!2081752 e!4390819)))

(assert (= (and b!7332436 ((_ is Cons!71427) (exprs!8495 ct1!256))) b!7332636))

(declare-fun b!7332639 () Bool)

(declare-fun e!4390820 () Bool)

(declare-fun tp!2081760 () Bool)

(declare-fun tp!2081761 () Bool)

(assert (=> b!7332639 (= e!4390820 (and tp!2081760 tp!2081761))))

(assert (=> b!7332437 (= tp!2081751 e!4390820)))

(assert (= (and b!7332437 ((_ is Cons!71427) (exprs!8495 cWitness!35))) b!7332639))

(declare-fun b!7332642 () Bool)

(declare-fun e!4390823 () Bool)

(declare-fun tp!2081764 () Bool)

(declare-fun tp!2081765 () Bool)

(assert (=> b!7332642 (= e!4390823 (and tp!2081764 tp!2081765))))

(assert (=> b!7332433 (= tp!2081753 e!4390823)))

(assert (= (and b!7332433 ((_ is Cons!71427) (exprs!8495 ct2!352))) b!7332642))

(check-sat (not d!2277016) (not b!7332490) (not b!7332639) (not d!2277052) (not b!7332524) (not d!2276998) (not b!7332642) (not b!7332615) (not bm!668140) (not d!2277014) (not bm!668119) (not bm!668105) (not d!2277050) (not b!7332565) (not bm!668100) (not b!7332576) (not b!7332536) (not d!2276980) (not b!7332461) (not b!7332488) (not d!2277010) tp_is_empty!48355 (not d!2277026) (not bm!668084) (not d!2277054) (not d!2277020) (not b!7332462) (not bm!668120) (not bm!668108) (not d!2277012) (not b!7332613) (not bm!668102) (not b!7332636) (not d!2276988) (not b!7332537) (not bm!668122) (not b!7332531) (not bm!668099) (not b!7332530) (not bm!668106))
(check-sat)
