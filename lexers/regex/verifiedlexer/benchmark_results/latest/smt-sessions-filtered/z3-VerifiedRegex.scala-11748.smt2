; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663694 () Bool)

(assert start!663694)

(declare-fun b!6877476 () Bool)

(declare-fun e!4145014 () Bool)

(declare-datatypes ((C!33756 0))(
  ( (C!33757 (val!26580 Int)) )
))
(declare-datatypes ((Regex!16743 0))(
  ( (ElementMatch!16743 (c!1279623 C!33756)) (Concat!25588 (regOne!33998 Regex!16743) (regTwo!33998 Regex!16743)) (EmptyExpr!16743) (Star!16743 (reg!17072 Regex!16743)) (EmptyLang!16743) (Union!16743 (regOne!33999 Regex!16743) (regTwo!33999 Regex!16743)) )
))
(declare-datatypes ((List!66497 0))(
  ( (Nil!66373) (Cons!66373 (h!72821 Regex!16743) (t!380240 List!66497)) )
))
(declare-datatypes ((Context!12254 0))(
  ( (Context!12255 (exprs!6627 List!66497)) )
))
(declare-fun c!9978 () Context!12254)

(declare-datatypes ((List!66498 0))(
  ( (Nil!66374) (Cons!66374 (h!72822 Context!12254) (t!380241 List!66498)) )
))
(declare-fun zl!1632 () List!66498)

(declare-fun contextDepthTotal!432 (Context!12254) Int)

(declare-fun zipperDepthTotal!460 (List!66498) Int)

(assert (=> b!6877476 (= e!4145014 (>= (contextDepthTotal!432 c!9978) (zipperDepthTotal!460 zl!1632)))))

(declare-fun b!6877477 () Bool)

(declare-fun res!2804132 () Bool)

(assert (=> b!6877477 (=> (not res!2804132) (not e!4145014))))

(get-info :version)

(assert (=> b!6877477 (= res!2804132 ((_ is Cons!66374) zl!1632))))

(declare-fun e!4145015 () Bool)

(declare-fun b!6877478 () Bool)

(declare-fun e!4145016 () Bool)

(declare-fun tp!1890201 () Bool)

(declare-fun inv!85104 (Context!12254) Bool)

(assert (=> b!6877478 (= e!4145016 (and (inv!85104 (h!72822 zl!1632)) e!4145015 tp!1890201))))

(declare-fun b!6877479 () Bool)

(declare-fun res!2804131 () Bool)

(assert (=> b!6877479 (=> (not res!2804131) (not e!4145014))))

(declare-fun e!4145018 () Bool)

(assert (=> b!6877479 (= res!2804131 e!4145018)))

(declare-fun res!2804130 () Bool)

(assert (=> b!6877479 (=> res!2804130 e!4145018)))

(declare-fun contains!20399 (List!66498 Context!12254) Bool)

(assert (=> b!6877479 (= res!2804130 (not (contains!20399 (t!380241 zl!1632) c!9978)))))

(declare-fun b!6877480 () Bool)

(declare-fun res!2804133 () Bool)

(assert (=> b!6877480 (=> (not res!2804133) (not e!4145014))))

(declare-fun size!40733 (List!66498) Int)

(assert (=> b!6877480 (= res!2804133 (> (size!40733 zl!1632) 1))))

(declare-fun b!6877481 () Bool)

(declare-fun tp!1890199 () Bool)

(assert (=> b!6877481 (= e!4145015 tp!1890199)))

(declare-fun b!6877482 () Bool)

(assert (=> b!6877482 (= e!4145018 (<= (size!40733 (t!380241 zl!1632)) 1))))

(declare-fun b!6877483 () Bool)

(declare-fun e!4145017 () Bool)

(declare-fun tp!1890200 () Bool)

(assert (=> b!6877483 (= e!4145017 tp!1890200)))

(declare-fun res!2804134 () Bool)

(assert (=> start!663694 (=> (not res!2804134) (not e!4145014))))

(assert (=> start!663694 (= res!2804134 (contains!20399 zl!1632 c!9978))))

(assert (=> start!663694 e!4145014))

(assert (=> start!663694 e!4145016))

(assert (=> start!663694 (and (inv!85104 c!9978) e!4145017)))

(assert (= (and start!663694 res!2804134) b!6877480))

(assert (= (and b!6877480 res!2804133) b!6877477))

(assert (= (and b!6877477 res!2804132) b!6877479))

(assert (= (and b!6877479 (not res!2804130)) b!6877482))

(assert (= (and b!6877479 res!2804131) b!6877476))

(assert (= b!6877478 b!6877481))

(assert (= (and start!663694 ((_ is Cons!66374) zl!1632)) b!6877478))

(assert (= start!663694 b!6877483))

(declare-fun m!7604994 () Bool)

(assert (=> start!663694 m!7604994))

(declare-fun m!7604996 () Bool)

(assert (=> start!663694 m!7604996))

(declare-fun m!7604998 () Bool)

(assert (=> b!6877476 m!7604998))

(declare-fun m!7605000 () Bool)

(assert (=> b!6877476 m!7605000))

(declare-fun m!7605002 () Bool)

(assert (=> b!6877480 m!7605002))

(declare-fun m!7605004 () Bool)

(assert (=> b!6877479 m!7605004))

(declare-fun m!7605006 () Bool)

(assert (=> b!6877482 m!7605006))

(declare-fun m!7605008 () Bool)

(assert (=> b!6877478 m!7605008))

(check-sat (not b!6877481) (not start!663694) (not b!6877478) (not b!6877483) (not b!6877476) (not b!6877480) (not b!6877479) (not b!6877482))
(check-sat)
(get-model)

(declare-fun d!2159577 () Bool)

(declare-fun lt!2459304 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13038 (List!66498) (InoxSet Context!12254))

(assert (=> d!2159577 (= lt!2459304 (select (content!13038 (t!380241 zl!1632)) c!9978))))

(declare-fun e!4145026 () Bool)

(assert (=> d!2159577 (= lt!2459304 e!4145026)))

(declare-fun res!2804139 () Bool)

(assert (=> d!2159577 (=> (not res!2804139) (not e!4145026))))

(assert (=> d!2159577 (= res!2804139 ((_ is Cons!66374) (t!380241 zl!1632)))))

(assert (=> d!2159577 (= (contains!20399 (t!380241 zl!1632) c!9978) lt!2459304)))

(declare-fun b!6877492 () Bool)

(declare-fun e!4145025 () Bool)

(assert (=> b!6877492 (= e!4145026 e!4145025)))

(declare-fun res!2804140 () Bool)

(assert (=> b!6877492 (=> res!2804140 e!4145025)))

(assert (=> b!6877492 (= res!2804140 (= (h!72822 (t!380241 zl!1632)) c!9978))))

(declare-fun b!6877493 () Bool)

(assert (=> b!6877493 (= e!4145025 (contains!20399 (t!380241 (t!380241 zl!1632)) c!9978))))

(assert (= (and d!2159577 res!2804139) b!6877492))

(assert (= (and b!6877492 (not res!2804140)) b!6877493))

(declare-fun m!7605010 () Bool)

(assert (=> d!2159577 m!7605010))

(declare-fun m!7605012 () Bool)

(assert (=> d!2159577 m!7605012))

(declare-fun m!7605014 () Bool)

(assert (=> b!6877493 m!7605014))

(assert (=> b!6877479 d!2159577))

(declare-fun d!2159579 () Bool)

(declare-fun lt!2459308 () Int)

(assert (=> d!2159579 (>= lt!2459308 0)))

(declare-fun e!4145030 () Int)

(assert (=> d!2159579 (= lt!2459308 e!4145030)))

(declare-fun c!1279630 () Bool)

(assert (=> d!2159579 (= c!1279630 ((_ is Nil!66374) zl!1632))))

(assert (=> d!2159579 (= (size!40733 zl!1632) lt!2459308)))

(declare-fun b!6877500 () Bool)

(assert (=> b!6877500 (= e!4145030 0)))

(declare-fun b!6877501 () Bool)

(assert (=> b!6877501 (= e!4145030 (+ 1 (size!40733 (t!380241 zl!1632))))))

(assert (= (and d!2159579 c!1279630) b!6877500))

(assert (= (and d!2159579 (not c!1279630)) b!6877501))

(assert (=> b!6877501 m!7605006))

(assert (=> b!6877480 d!2159579))

(declare-fun d!2159583 () Bool)

(declare-fun lambda!389351 () Int)

(declare-fun forall!15934 (List!66497 Int) Bool)

(assert (=> d!2159583 (= (inv!85104 (h!72822 zl!1632)) (forall!15934 (exprs!6627 (h!72822 zl!1632)) lambda!389351))))

(declare-fun bs!1837912 () Bool)

(assert (= bs!1837912 d!2159583))

(declare-fun m!7605024 () Bool)

(assert (=> bs!1837912 m!7605024))

(assert (=> b!6877478 d!2159583))

(declare-fun d!2159587 () Bool)

(declare-fun lt!2459312 () Bool)

(assert (=> d!2159587 (= lt!2459312 (select (content!13038 zl!1632) c!9978))))

(declare-fun e!4145035 () Bool)

(assert (=> d!2159587 (= lt!2459312 e!4145035)))

(declare-fun res!2804141 () Bool)

(assert (=> d!2159587 (=> (not res!2804141) (not e!4145035))))

(assert (=> d!2159587 (= res!2804141 ((_ is Cons!66374) zl!1632))))

(assert (=> d!2159587 (= (contains!20399 zl!1632 c!9978) lt!2459312)))

(declare-fun b!6877508 () Bool)

(declare-fun e!4145034 () Bool)

(assert (=> b!6877508 (= e!4145035 e!4145034)))

(declare-fun res!2804142 () Bool)

(assert (=> b!6877508 (=> res!2804142 e!4145034)))

(assert (=> b!6877508 (= res!2804142 (= (h!72822 zl!1632) c!9978))))

(declare-fun b!6877509 () Bool)

(assert (=> b!6877509 (= e!4145034 (contains!20399 (t!380241 zl!1632) c!9978))))

(assert (= (and d!2159587 res!2804141) b!6877508))

(assert (= (and b!6877508 (not res!2804142)) b!6877509))

(declare-fun m!7605026 () Bool)

(assert (=> d!2159587 m!7605026))

(declare-fun m!7605028 () Bool)

(assert (=> d!2159587 m!7605028))

(assert (=> b!6877509 m!7605004))

(assert (=> start!663694 d!2159587))

(declare-fun bs!1837913 () Bool)

(declare-fun d!2159589 () Bool)

(assert (= bs!1837913 (and d!2159589 d!2159583)))

(declare-fun lambda!389352 () Int)

(assert (=> bs!1837913 (= lambda!389352 lambda!389351)))

(assert (=> d!2159589 (= (inv!85104 c!9978) (forall!15934 (exprs!6627 c!9978) lambda!389352))))

(declare-fun bs!1837914 () Bool)

(assert (= bs!1837914 d!2159589))

(declare-fun m!7605030 () Bool)

(assert (=> bs!1837914 m!7605030))

(assert (=> start!663694 d!2159589))

(declare-fun d!2159591 () Bool)

(declare-fun lt!2459313 () Int)

(assert (=> d!2159591 (>= lt!2459313 0)))

(declare-fun e!4145036 () Int)

(assert (=> d!2159591 (= lt!2459313 e!4145036)))

(declare-fun c!1279634 () Bool)

(assert (=> d!2159591 (= c!1279634 ((_ is Nil!66374) (t!380241 zl!1632)))))

(assert (=> d!2159591 (= (size!40733 (t!380241 zl!1632)) lt!2459313)))

(declare-fun b!6877510 () Bool)

(assert (=> b!6877510 (= e!4145036 0)))

(declare-fun b!6877511 () Bool)

(assert (=> b!6877511 (= e!4145036 (+ 1 (size!40733 (t!380241 (t!380241 zl!1632)))))))

(assert (= (and d!2159591 c!1279634) b!6877510))

(assert (= (and d!2159591 (not c!1279634)) b!6877511))

(declare-fun m!7605032 () Bool)

(assert (=> b!6877511 m!7605032))

(assert (=> b!6877482 d!2159591))

(declare-fun d!2159593 () Bool)

(declare-fun lt!2459316 () Int)

(assert (=> d!2159593 (>= lt!2459316 0)))

(declare-fun e!4145039 () Int)

(assert (=> d!2159593 (= lt!2459316 e!4145039)))

(declare-fun c!1279638 () Bool)

(assert (=> d!2159593 (= c!1279638 ((_ is Cons!66373) (exprs!6627 c!9978)))))

(assert (=> d!2159593 (= (contextDepthTotal!432 c!9978) lt!2459316)))

(declare-fun b!6877516 () Bool)

(declare-fun regexDepthTotal!270 (Regex!16743) Int)

(assert (=> b!6877516 (= e!4145039 (+ (regexDepthTotal!270 (h!72821 (exprs!6627 c!9978))) (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))

(declare-fun b!6877517 () Bool)

(assert (=> b!6877517 (= e!4145039 1)))

(assert (= (and d!2159593 c!1279638) b!6877516))

(assert (= (and d!2159593 (not c!1279638)) b!6877517))

(declare-fun m!7605036 () Bool)

(assert (=> b!6877516 m!7605036))

(declare-fun m!7605038 () Bool)

(assert (=> b!6877516 m!7605038))

(assert (=> b!6877476 d!2159593))

(declare-fun d!2159597 () Bool)

(declare-fun lt!2459322 () Int)

(assert (=> d!2159597 (>= lt!2459322 0)))

(declare-fun e!4145048 () Int)

(assert (=> d!2159597 (= lt!2459322 e!4145048)))

(declare-fun c!1279641 () Bool)

(assert (=> d!2159597 (= c!1279641 ((_ is Cons!66374) zl!1632))))

(assert (=> d!2159597 (= (zipperDepthTotal!460 zl!1632) lt!2459322)))

(declare-fun b!6877528 () Bool)

(assert (=> b!6877528 (= e!4145048 (+ (contextDepthTotal!432 (h!72822 zl!1632)) (zipperDepthTotal!460 (t!380241 zl!1632))))))

(declare-fun b!6877529 () Bool)

(assert (=> b!6877529 (= e!4145048 0)))

(assert (= (and d!2159597 c!1279641) b!6877528))

(assert (= (and d!2159597 (not c!1279641)) b!6877529))

(declare-fun m!7605046 () Bool)

(assert (=> b!6877528 m!7605046))

(declare-fun m!7605048 () Bool)

(assert (=> b!6877528 m!7605048))

(assert (=> b!6877476 d!2159597))

(declare-fun b!6877541 () Bool)

(declare-fun e!4145056 () Bool)

(declare-fun tp!1890206 () Bool)

(assert (=> b!6877541 (= e!4145056 tp!1890206)))

(declare-fun e!4145055 () Bool)

(declare-fun tp!1890207 () Bool)

(declare-fun b!6877540 () Bool)

(assert (=> b!6877540 (= e!4145055 (and (inv!85104 (h!72822 (t!380241 zl!1632))) e!4145056 tp!1890207))))

(assert (=> b!6877478 (= tp!1890201 e!4145055)))

(assert (= b!6877540 b!6877541))

(assert (= (and b!6877478 ((_ is Cons!66374) (t!380241 zl!1632))) b!6877540))

(declare-fun m!7605050 () Bool)

(assert (=> b!6877540 m!7605050))

(declare-fun b!6877546 () Bool)

(declare-fun e!4145059 () Bool)

(declare-fun tp!1890212 () Bool)

(declare-fun tp!1890213 () Bool)

(assert (=> b!6877546 (= e!4145059 (and tp!1890212 tp!1890213))))

(assert (=> b!6877483 (= tp!1890200 e!4145059)))

(assert (= (and b!6877483 ((_ is Cons!66373) (exprs!6627 c!9978))) b!6877546))

(declare-fun b!6877547 () Bool)

(declare-fun e!4145060 () Bool)

(declare-fun tp!1890214 () Bool)

(declare-fun tp!1890215 () Bool)

(assert (=> b!6877547 (= e!4145060 (and tp!1890214 tp!1890215))))

(assert (=> b!6877481 (= tp!1890199 e!4145060)))

(assert (= (and b!6877481 ((_ is Cons!66373) (exprs!6627 (h!72822 zl!1632)))) b!6877547))

(check-sat (not b!6877541) (not d!2159587) (not b!6877493) (not b!6877546) (not d!2159583) (not b!6877501) (not d!2159589) (not d!2159577) (not b!6877516) (not b!6877540) (not b!6877509) (not b!6877547) (not b!6877528) (not b!6877511))
(check-sat)
(get-model)

(declare-fun d!2159607 () Bool)

(declare-fun lt!2459328 () Bool)

(assert (=> d!2159607 (= lt!2459328 (select (content!13038 (t!380241 (t!380241 zl!1632))) c!9978))))

(declare-fun e!4145076 () Bool)

(assert (=> d!2159607 (= lt!2459328 e!4145076)))

(declare-fun res!2804151 () Bool)

(assert (=> d!2159607 (=> (not res!2804151) (not e!4145076))))

(assert (=> d!2159607 (= res!2804151 ((_ is Cons!66374) (t!380241 (t!380241 zl!1632))))))

(assert (=> d!2159607 (= (contains!20399 (t!380241 (t!380241 zl!1632)) c!9978) lt!2459328)))

(declare-fun b!6877568 () Bool)

(declare-fun e!4145075 () Bool)

(assert (=> b!6877568 (= e!4145076 e!4145075)))

(declare-fun res!2804152 () Bool)

(assert (=> b!6877568 (=> res!2804152 e!4145075)))

(assert (=> b!6877568 (= res!2804152 (= (h!72822 (t!380241 (t!380241 zl!1632))) c!9978))))

(declare-fun b!6877569 () Bool)

(assert (=> b!6877569 (= e!4145075 (contains!20399 (t!380241 (t!380241 (t!380241 zl!1632))) c!9978))))

(assert (= (and d!2159607 res!2804151) b!6877568))

(assert (= (and b!6877568 (not res!2804152)) b!6877569))

(declare-fun m!7605062 () Bool)

(assert (=> d!2159607 m!7605062))

(declare-fun m!7605064 () Bool)

(assert (=> d!2159607 m!7605064))

(declare-fun m!7605066 () Bool)

(assert (=> b!6877569 m!7605066))

(assert (=> b!6877493 d!2159607))

(declare-fun bs!1837918 () Bool)

(declare-fun d!2159609 () Bool)

(assert (= bs!1837918 (and d!2159609 d!2159583)))

(declare-fun lambda!389357 () Int)

(assert (=> bs!1837918 (= lambda!389357 lambda!389351)))

(declare-fun bs!1837919 () Bool)

(assert (= bs!1837919 (and d!2159609 d!2159589)))

(assert (=> bs!1837919 (= lambda!389357 lambda!389352)))

(assert (=> d!2159609 (= (inv!85104 (h!72822 (t!380241 zl!1632))) (forall!15934 (exprs!6627 (h!72822 (t!380241 zl!1632))) lambda!389357))))

(declare-fun bs!1837920 () Bool)

(assert (= bs!1837920 d!2159609))

(declare-fun m!7605068 () Bool)

(assert (=> bs!1837920 m!7605068))

(assert (=> b!6877540 d!2159609))

(declare-fun d!2159611 () Bool)

(declare-fun lt!2459329 () Int)

(assert (=> d!2159611 (>= lt!2459329 0)))

(declare-fun e!4145077 () Int)

(assert (=> d!2159611 (= lt!2459329 e!4145077)))

(declare-fun c!1279646 () Bool)

(assert (=> d!2159611 (= c!1279646 ((_ is Cons!66373) (exprs!6627 (h!72822 zl!1632))))))

(assert (=> d!2159611 (= (contextDepthTotal!432 (h!72822 zl!1632)) lt!2459329)))

(declare-fun b!6877570 () Bool)

(assert (=> b!6877570 (= e!4145077 (+ (regexDepthTotal!270 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632)))))))))

(declare-fun b!6877571 () Bool)

(assert (=> b!6877571 (= e!4145077 1)))

(assert (= (and d!2159611 c!1279646) b!6877570))

(assert (= (and d!2159611 (not c!1279646)) b!6877571))

(declare-fun m!7605070 () Bool)

(assert (=> b!6877570 m!7605070))

(declare-fun m!7605072 () Bool)

(assert (=> b!6877570 m!7605072))

(assert (=> b!6877528 d!2159611))

(declare-fun d!2159613 () Bool)

(declare-fun lt!2459330 () Int)

(assert (=> d!2159613 (>= lt!2459330 0)))

(declare-fun e!4145078 () Int)

(assert (=> d!2159613 (= lt!2459330 e!4145078)))

(declare-fun c!1279647 () Bool)

(assert (=> d!2159613 (= c!1279647 ((_ is Cons!66374) (t!380241 zl!1632)))))

(assert (=> d!2159613 (= (zipperDepthTotal!460 (t!380241 zl!1632)) lt!2459330)))

(declare-fun b!6877572 () Bool)

(assert (=> b!6877572 (= e!4145078 (+ (contextDepthTotal!432 (h!72822 (t!380241 zl!1632))) (zipperDepthTotal!460 (t!380241 (t!380241 zl!1632)))))))

(declare-fun b!6877573 () Bool)

(assert (=> b!6877573 (= e!4145078 0)))

(assert (= (and d!2159613 c!1279647) b!6877572))

(assert (= (and d!2159613 (not c!1279647)) b!6877573))

(declare-fun m!7605074 () Bool)

(assert (=> b!6877572 m!7605074))

(declare-fun m!7605076 () Bool)

(assert (=> b!6877572 m!7605076))

(assert (=> b!6877528 d!2159613))

(declare-fun b!6877590 () Bool)

(declare-fun e!4145087 () Int)

(assert (=> b!6877590 (= e!4145087 1)))

(declare-fun bm!626135 () Bool)

(declare-fun call!626141 () Int)

(declare-fun c!1279657 () Bool)

(assert (=> bm!626135 (= call!626141 (regexDepthTotal!270 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))

(declare-fun bm!626136 () Bool)

(declare-fun call!626142 () Int)

(declare-fun call!626140 () Int)

(assert (=> bm!626136 (= call!626142 call!626140)))

(declare-fun b!6877591 () Bool)

(declare-fun e!4145089 () Int)

(declare-fun e!4145090 () Int)

(assert (=> b!6877591 (= e!4145089 e!4145090)))

(declare-fun c!1279656 () Bool)

(assert (=> b!6877591 (= c!1279656 ((_ is Concat!25588) (h!72821 (exprs!6627 c!9978))))))

(declare-fun b!6877592 () Bool)

(assert (=> b!6877592 (= e!4145089 (+ 1 call!626141 call!626142))))

(declare-fun d!2159615 () Bool)

(declare-fun lt!2459333 () Int)

(assert (=> d!2159615 (> lt!2459333 0)))

(assert (=> d!2159615 (= lt!2459333 e!4145087)))

(declare-fun c!1279659 () Bool)

(assert (=> d!2159615 (= c!1279659 ((_ is ElementMatch!16743) (h!72821 (exprs!6627 c!9978))))))

(assert (=> d!2159615 (= (regexDepthTotal!270 (h!72821 (exprs!6627 c!9978))) lt!2459333)))

(declare-fun b!6877593 () Bool)

(declare-fun e!4145088 () Int)

(assert (=> b!6877593 (= e!4145088 (+ 1 call!626140))))

(declare-fun b!6877594 () Bool)

(assert (=> b!6877594 (= e!4145087 e!4145088)))

(declare-fun c!1279658 () Bool)

(assert (=> b!6877594 (= c!1279658 ((_ is Star!16743) (h!72821 (exprs!6627 c!9978))))))

(declare-fun b!6877595 () Bool)

(assert (=> b!6877595 (= c!1279657 ((_ is Union!16743) (h!72821 (exprs!6627 c!9978))))))

(assert (=> b!6877595 (= e!4145088 e!4145089)))

(declare-fun b!6877596 () Bool)

(assert (=> b!6877596 (= e!4145090 (+ 1 call!626142 call!626141))))

(declare-fun bm!626137 () Bool)

(assert (=> bm!626137 (= call!626140 (regexDepthTotal!270 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))

(declare-fun b!6877597 () Bool)

(assert (=> b!6877597 (= e!4145090 1)))

(assert (= (and d!2159615 c!1279659) b!6877590))

(assert (= (and d!2159615 (not c!1279659)) b!6877594))

(assert (= (and b!6877594 c!1279658) b!6877593))

(assert (= (and b!6877594 (not c!1279658)) b!6877595))

(assert (= (and b!6877595 c!1279657) b!6877592))

(assert (= (and b!6877595 (not c!1279657)) b!6877591))

(assert (= (and b!6877591 c!1279656) b!6877596))

(assert (= (and b!6877591 (not c!1279656)) b!6877597))

(assert (= (or b!6877592 b!6877596) bm!626135))

(assert (= (or b!6877592 b!6877596) bm!626136))

(assert (= (or b!6877593 bm!626136) bm!626137))

(declare-fun m!7605078 () Bool)

(assert (=> bm!626135 m!7605078))

(declare-fun m!7605080 () Bool)

(assert (=> bm!626137 m!7605080))

(assert (=> b!6877516 d!2159615))

(declare-fun d!2159617 () Bool)

(declare-fun lt!2459334 () Int)

(assert (=> d!2159617 (>= lt!2459334 0)))

(declare-fun e!4145091 () Int)

(assert (=> d!2159617 (= lt!2459334 e!4145091)))

(declare-fun c!1279660 () Bool)

(assert (=> d!2159617 (= c!1279660 ((_ is Cons!66373) (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))

(assert (=> d!2159617 (= (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 c!9978)))) lt!2459334)))

(declare-fun b!6877598 () Bool)

(assert (=> b!6877598 (= e!4145091 (+ (regexDepthTotal!270 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))))

(declare-fun b!6877599 () Bool)

(assert (=> b!6877599 (= e!4145091 1)))

(assert (= (and d!2159617 c!1279660) b!6877598))

(assert (= (and d!2159617 (not c!1279660)) b!6877599))

(declare-fun m!7605082 () Bool)

(assert (=> b!6877598 m!7605082))

(declare-fun m!7605084 () Bool)

(assert (=> b!6877598 m!7605084))

(assert (=> b!6877516 d!2159617))

(declare-fun d!2159619 () Bool)

(declare-fun res!2804157 () Bool)

(declare-fun e!4145096 () Bool)

(assert (=> d!2159619 (=> res!2804157 e!4145096)))

(assert (=> d!2159619 (= res!2804157 ((_ is Nil!66373) (exprs!6627 (h!72822 zl!1632))))))

(assert (=> d!2159619 (= (forall!15934 (exprs!6627 (h!72822 zl!1632)) lambda!389351) e!4145096)))

(declare-fun b!6877604 () Bool)

(declare-fun e!4145097 () Bool)

(assert (=> b!6877604 (= e!4145096 e!4145097)))

(declare-fun res!2804158 () Bool)

(assert (=> b!6877604 (=> (not res!2804158) (not e!4145097))))

(declare-fun dynLambda!26569 (Int Regex!16743) Bool)

(assert (=> b!6877604 (= res!2804158 (dynLambda!26569 lambda!389351 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))

(declare-fun b!6877605 () Bool)

(assert (=> b!6877605 (= e!4145097 (forall!15934 (t!380240 (exprs!6627 (h!72822 zl!1632))) lambda!389351))))

(assert (= (and d!2159619 (not res!2804157)) b!6877604))

(assert (= (and b!6877604 res!2804158) b!6877605))

(declare-fun b_lambda!260273 () Bool)

(assert (=> (not b_lambda!260273) (not b!6877604)))

(declare-fun m!7605086 () Bool)

(assert (=> b!6877604 m!7605086))

(declare-fun m!7605088 () Bool)

(assert (=> b!6877605 m!7605088))

(assert (=> d!2159583 d!2159619))

(assert (=> b!6877501 d!2159591))

(declare-fun d!2159621 () Bool)

(declare-fun c!1279663 () Bool)

(assert (=> d!2159621 (= c!1279663 ((_ is Nil!66374) zl!1632))))

(declare-fun e!4145100 () (InoxSet Context!12254))

(assert (=> d!2159621 (= (content!13038 zl!1632) e!4145100)))

(declare-fun b!6877610 () Bool)

(assert (=> b!6877610 (= e!4145100 ((as const (Array Context!12254 Bool)) false))))

(declare-fun b!6877611 () Bool)

(assert (=> b!6877611 (= e!4145100 ((_ map or) (store ((as const (Array Context!12254 Bool)) false) (h!72822 zl!1632) true) (content!13038 (t!380241 zl!1632))))))

(assert (= (and d!2159621 c!1279663) b!6877610))

(assert (= (and d!2159621 (not c!1279663)) b!6877611))

(declare-fun m!7605090 () Bool)

(assert (=> b!6877611 m!7605090))

(assert (=> b!6877611 m!7605010))

(assert (=> d!2159587 d!2159621))

(declare-fun d!2159623 () Bool)

(declare-fun c!1279664 () Bool)

(assert (=> d!2159623 (= c!1279664 ((_ is Nil!66374) (t!380241 zl!1632)))))

(declare-fun e!4145101 () (InoxSet Context!12254))

(assert (=> d!2159623 (= (content!13038 (t!380241 zl!1632)) e!4145101)))

(declare-fun b!6877612 () Bool)

(assert (=> b!6877612 (= e!4145101 ((as const (Array Context!12254 Bool)) false))))

(declare-fun b!6877613 () Bool)

(assert (=> b!6877613 (= e!4145101 ((_ map or) (store ((as const (Array Context!12254 Bool)) false) (h!72822 (t!380241 zl!1632)) true) (content!13038 (t!380241 (t!380241 zl!1632)))))))

(assert (= (and d!2159623 c!1279664) b!6877612))

(assert (= (and d!2159623 (not c!1279664)) b!6877613))

(declare-fun m!7605092 () Bool)

(assert (=> b!6877613 m!7605092))

(assert (=> b!6877613 m!7605062))

(assert (=> d!2159577 d!2159623))

(declare-fun d!2159625 () Bool)

(declare-fun lt!2459335 () Int)

(assert (=> d!2159625 (>= lt!2459335 0)))

(declare-fun e!4145102 () Int)

(assert (=> d!2159625 (= lt!2459335 e!4145102)))

(declare-fun c!1279665 () Bool)

(assert (=> d!2159625 (= c!1279665 ((_ is Nil!66374) (t!380241 (t!380241 zl!1632))))))

(assert (=> d!2159625 (= (size!40733 (t!380241 (t!380241 zl!1632))) lt!2459335)))

(declare-fun b!6877614 () Bool)

(assert (=> b!6877614 (= e!4145102 0)))

(declare-fun b!6877615 () Bool)

(assert (=> b!6877615 (= e!4145102 (+ 1 (size!40733 (t!380241 (t!380241 (t!380241 zl!1632))))))))

(assert (= (and d!2159625 c!1279665) b!6877614))

(assert (= (and d!2159625 (not c!1279665)) b!6877615))

(declare-fun m!7605094 () Bool)

(assert (=> b!6877615 m!7605094))

(assert (=> b!6877511 d!2159625))

(assert (=> b!6877509 d!2159577))

(declare-fun d!2159627 () Bool)

(declare-fun res!2804159 () Bool)

(declare-fun e!4145103 () Bool)

(assert (=> d!2159627 (=> res!2804159 e!4145103)))

(assert (=> d!2159627 (= res!2804159 ((_ is Nil!66373) (exprs!6627 c!9978)))))

(assert (=> d!2159627 (= (forall!15934 (exprs!6627 c!9978) lambda!389352) e!4145103)))

(declare-fun b!6877616 () Bool)

(declare-fun e!4145104 () Bool)

(assert (=> b!6877616 (= e!4145103 e!4145104)))

(declare-fun res!2804160 () Bool)

(assert (=> b!6877616 (=> (not res!2804160) (not e!4145104))))

(assert (=> b!6877616 (= res!2804160 (dynLambda!26569 lambda!389352 (h!72821 (exprs!6627 c!9978))))))

(declare-fun b!6877617 () Bool)

(assert (=> b!6877617 (= e!4145104 (forall!15934 (t!380240 (exprs!6627 c!9978)) lambda!389352))))

(assert (= (and d!2159627 (not res!2804159)) b!6877616))

(assert (= (and b!6877616 res!2804160) b!6877617))

(declare-fun b_lambda!260275 () Bool)

(assert (=> (not b_lambda!260275) (not b!6877616)))

(declare-fun m!7605096 () Bool)

(assert (=> b!6877616 m!7605096))

(declare-fun m!7605098 () Bool)

(assert (=> b!6877617 m!7605098))

(assert (=> d!2159589 d!2159627))

(declare-fun b!6877619 () Bool)

(declare-fun e!4145106 () Bool)

(declare-fun tp!1890230 () Bool)

(assert (=> b!6877619 (= e!4145106 tp!1890230)))

(declare-fun tp!1890231 () Bool)

(declare-fun b!6877618 () Bool)

(declare-fun e!4145105 () Bool)

(assert (=> b!6877618 (= e!4145105 (and (inv!85104 (h!72822 (t!380241 (t!380241 zl!1632)))) e!4145106 tp!1890231))))

(assert (=> b!6877540 (= tp!1890207 e!4145105)))

(assert (= b!6877618 b!6877619))

(assert (= (and b!6877540 ((_ is Cons!66374) (t!380241 (t!380241 zl!1632)))) b!6877618))

(declare-fun m!7605100 () Bool)

(assert (=> b!6877618 m!7605100))

(declare-fun e!4145109 () Bool)

(assert (=> b!6877546 (= tp!1890212 e!4145109)))

(declare-fun b!6877630 () Bool)

(declare-fun tp_is_empty!42717 () Bool)

(assert (=> b!6877630 (= e!4145109 tp_is_empty!42717)))

(declare-fun b!6877633 () Bool)

(declare-fun tp!1890242 () Bool)

(declare-fun tp!1890243 () Bool)

(assert (=> b!6877633 (= e!4145109 (and tp!1890242 tp!1890243))))

(declare-fun b!6877632 () Bool)

(declare-fun tp!1890245 () Bool)

(assert (=> b!6877632 (= e!4145109 tp!1890245)))

(declare-fun b!6877631 () Bool)

(declare-fun tp!1890244 () Bool)

(declare-fun tp!1890246 () Bool)

(assert (=> b!6877631 (= e!4145109 (and tp!1890244 tp!1890246))))

(assert (= (and b!6877546 ((_ is ElementMatch!16743) (h!72821 (exprs!6627 c!9978)))) b!6877630))

(assert (= (and b!6877546 ((_ is Concat!25588) (h!72821 (exprs!6627 c!9978)))) b!6877631))

(assert (= (and b!6877546 ((_ is Star!16743) (h!72821 (exprs!6627 c!9978)))) b!6877632))

(assert (= (and b!6877546 ((_ is Union!16743) (h!72821 (exprs!6627 c!9978)))) b!6877633))

(declare-fun b!6877634 () Bool)

(declare-fun e!4145110 () Bool)

(declare-fun tp!1890247 () Bool)

(declare-fun tp!1890248 () Bool)

(assert (=> b!6877634 (= e!4145110 (and tp!1890247 tp!1890248))))

(assert (=> b!6877546 (= tp!1890213 e!4145110)))

(assert (= (and b!6877546 ((_ is Cons!66373) (t!380240 (exprs!6627 c!9978)))) b!6877634))

(declare-fun e!4145111 () Bool)

(assert (=> b!6877547 (= tp!1890214 e!4145111)))

(declare-fun b!6877635 () Bool)

(assert (=> b!6877635 (= e!4145111 tp_is_empty!42717)))

(declare-fun b!6877638 () Bool)

(declare-fun tp!1890249 () Bool)

(declare-fun tp!1890250 () Bool)

(assert (=> b!6877638 (= e!4145111 (and tp!1890249 tp!1890250))))

(declare-fun b!6877637 () Bool)

(declare-fun tp!1890252 () Bool)

(assert (=> b!6877637 (= e!4145111 tp!1890252)))

(declare-fun b!6877636 () Bool)

(declare-fun tp!1890251 () Bool)

(declare-fun tp!1890253 () Bool)

(assert (=> b!6877636 (= e!4145111 (and tp!1890251 tp!1890253))))

(assert (= (and b!6877547 ((_ is ElementMatch!16743) (h!72821 (exprs!6627 (h!72822 zl!1632))))) b!6877635))

(assert (= (and b!6877547 ((_ is Concat!25588) (h!72821 (exprs!6627 (h!72822 zl!1632))))) b!6877636))

(assert (= (and b!6877547 ((_ is Star!16743) (h!72821 (exprs!6627 (h!72822 zl!1632))))) b!6877637))

(assert (= (and b!6877547 ((_ is Union!16743) (h!72821 (exprs!6627 (h!72822 zl!1632))))) b!6877638))

(declare-fun b!6877639 () Bool)

(declare-fun e!4145112 () Bool)

(declare-fun tp!1890254 () Bool)

(declare-fun tp!1890255 () Bool)

(assert (=> b!6877639 (= e!4145112 (and tp!1890254 tp!1890255))))

(assert (=> b!6877547 (= tp!1890215 e!4145112)))

(assert (= (and b!6877547 ((_ is Cons!66373) (t!380240 (exprs!6627 (h!72822 zl!1632))))) b!6877639))

(declare-fun b!6877640 () Bool)

(declare-fun e!4145113 () Bool)

(declare-fun tp!1890256 () Bool)

(declare-fun tp!1890257 () Bool)

(assert (=> b!6877640 (= e!4145113 (and tp!1890256 tp!1890257))))

(assert (=> b!6877541 (= tp!1890206 e!4145113)))

(assert (= (and b!6877541 ((_ is Cons!66373) (exprs!6627 (h!72822 (t!380241 zl!1632))))) b!6877640))

(declare-fun b_lambda!260277 () Bool)

(assert (= b_lambda!260273 (or d!2159583 b_lambda!260277)))

(declare-fun bs!1837921 () Bool)

(declare-fun d!2159629 () Bool)

(assert (= bs!1837921 (and d!2159629 d!2159583)))

(declare-fun validRegex!8456 (Regex!16743) Bool)

(assert (=> bs!1837921 (= (dynLambda!26569 lambda!389351 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (validRegex!8456 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))

(declare-fun m!7605102 () Bool)

(assert (=> bs!1837921 m!7605102))

(assert (=> b!6877604 d!2159629))

(declare-fun b_lambda!260279 () Bool)

(assert (= b_lambda!260275 (or d!2159589 b_lambda!260279)))

(declare-fun bs!1837922 () Bool)

(declare-fun d!2159631 () Bool)

(assert (= bs!1837922 (and d!2159631 d!2159589)))

(assert (=> bs!1837922 (= (dynLambda!26569 lambda!389352 (h!72821 (exprs!6627 c!9978))) (validRegex!8456 (h!72821 (exprs!6627 c!9978))))))

(declare-fun m!7605104 () Bool)

(assert (=> bs!1837922 m!7605104))

(assert (=> b!6877616 d!2159631))

(check-sat (not b!6877569) (not bm!626137) (not b_lambda!260279) (not b!6877570) (not b!6877638) (not b_lambda!260277) (not b!6877634) (not b!6877618) (not b!6877619) (not b!6877611) (not bs!1837922) (not b!6877605) (not bm!626135) (not d!2159609) (not b!6877633) (not b!6877639) (not b!6877598) (not b!6877640) (not b!6877572) (not bs!1837921) (not b!6877637) (not b!6877617) (not b!6877632) (not b!6877613) (not d!2159607) (not b!6877631) tp_is_empty!42717 (not b!6877636) (not b!6877615))
(check-sat)
(get-model)

(declare-fun d!2159659 () Bool)

(declare-fun c!1279686 () Bool)

(assert (=> d!2159659 (= c!1279686 ((_ is Nil!66374) (t!380241 (t!380241 zl!1632))))))

(declare-fun e!4145153 () (InoxSet Context!12254))

(assert (=> d!2159659 (= (content!13038 (t!380241 (t!380241 zl!1632))) e!4145153)))

(declare-fun b!6877714 () Bool)

(assert (=> b!6877714 (= e!4145153 ((as const (Array Context!12254 Bool)) false))))

(declare-fun b!6877715 () Bool)

(assert (=> b!6877715 (= e!4145153 ((_ map or) (store ((as const (Array Context!12254 Bool)) false) (h!72822 (t!380241 (t!380241 zl!1632))) true) (content!13038 (t!380241 (t!380241 (t!380241 zl!1632))))))))

(assert (= (and d!2159659 c!1279686) b!6877714))

(assert (= (and d!2159659 (not c!1279686)) b!6877715))

(declare-fun m!7605150 () Bool)

(assert (=> b!6877715 m!7605150))

(declare-fun m!7605152 () Bool)

(assert (=> b!6877715 m!7605152))

(assert (=> d!2159607 d!2159659))

(declare-fun b!6877716 () Bool)

(declare-fun e!4145154 () Int)

(assert (=> b!6877716 (= e!4145154 1)))

(declare-fun bm!626147 () Bool)

(declare-fun call!626153 () Int)

(declare-fun c!1279688 () Bool)

(assert (=> bm!626147 (= call!626153 (regexDepthTotal!270 (ite c!1279688 (regOne!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regTwo!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))))

(declare-fun bm!626148 () Bool)

(declare-fun call!626154 () Int)

(declare-fun call!626152 () Int)

(assert (=> bm!626148 (= call!626154 call!626152)))

(declare-fun b!6877717 () Bool)

(declare-fun e!4145156 () Int)

(declare-fun e!4145157 () Int)

(assert (=> b!6877717 (= e!4145156 e!4145157)))

(declare-fun c!1279687 () Bool)

(assert (=> b!6877717 (= c!1279687 ((_ is Concat!25588) (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))

(declare-fun b!6877718 () Bool)

(assert (=> b!6877718 (= e!4145156 (+ 1 call!626153 call!626154))))

(declare-fun d!2159661 () Bool)

(declare-fun lt!2459344 () Int)

(assert (=> d!2159661 (> lt!2459344 0)))

(assert (=> d!2159661 (= lt!2459344 e!4145154)))

(declare-fun c!1279690 () Bool)

(assert (=> d!2159661 (= c!1279690 ((_ is ElementMatch!16743) (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))

(assert (=> d!2159661 (= (regexDepthTotal!270 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) lt!2459344)))

(declare-fun b!6877719 () Bool)

(declare-fun e!4145155 () Int)

(assert (=> b!6877719 (= e!4145155 (+ 1 call!626152))))

(declare-fun b!6877720 () Bool)

(assert (=> b!6877720 (= e!4145154 e!4145155)))

(declare-fun c!1279689 () Bool)

(assert (=> b!6877720 (= c!1279689 ((_ is Star!16743) (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))

(declare-fun b!6877721 () Bool)

(assert (=> b!6877721 (= c!1279688 ((_ is Union!16743) (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))

(assert (=> b!6877721 (= e!4145155 e!4145156)))

(declare-fun b!6877722 () Bool)

(assert (=> b!6877722 (= e!4145157 (+ 1 call!626154 call!626153))))

(declare-fun bm!626149 () Bool)

(assert (=> bm!626149 (= call!626152 (regexDepthTotal!270 (ite c!1279689 (reg!17072 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (ite c!1279688 (regTwo!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regOne!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))

(declare-fun b!6877723 () Bool)

(assert (=> b!6877723 (= e!4145157 1)))

(assert (= (and d!2159661 c!1279690) b!6877716))

(assert (= (and d!2159661 (not c!1279690)) b!6877720))

(assert (= (and b!6877720 c!1279689) b!6877719))

(assert (= (and b!6877720 (not c!1279689)) b!6877721))

(assert (= (and b!6877721 c!1279688) b!6877718))

(assert (= (and b!6877721 (not c!1279688)) b!6877717))

(assert (= (and b!6877717 c!1279687) b!6877722))

(assert (= (and b!6877717 (not c!1279687)) b!6877723))

(assert (= (or b!6877718 b!6877722) bm!626147))

(assert (= (or b!6877718 b!6877722) bm!626148))

(assert (= (or b!6877719 bm!626148) bm!626149))

(declare-fun m!7605154 () Bool)

(assert (=> bm!626147 m!7605154))

(declare-fun m!7605156 () Bool)

(assert (=> bm!626149 m!7605156))

(assert (=> b!6877598 d!2159661))

(declare-fun d!2159663 () Bool)

(declare-fun lt!2459345 () Int)

(assert (=> d!2159663 (>= lt!2459345 0)))

(declare-fun e!4145158 () Int)

(assert (=> d!2159663 (= lt!2459345 e!4145158)))

(declare-fun c!1279691 () Bool)

(assert (=> d!2159663 (= c!1279691 ((_ is Cons!66373) (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))))

(assert (=> d!2159663 (= (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))) lt!2459345)))

(declare-fun b!6877724 () Bool)

(assert (=> b!6877724 (= e!4145158 (+ (regexDepthTotal!270 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))) (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))))

(declare-fun b!6877725 () Bool)

(assert (=> b!6877725 (= e!4145158 1)))

(assert (= (and d!2159663 c!1279691) b!6877724))

(assert (= (and d!2159663 (not c!1279691)) b!6877725))

(declare-fun m!7605158 () Bool)

(assert (=> b!6877724 m!7605158))

(declare-fun m!7605160 () Bool)

(assert (=> b!6877724 m!7605160))

(assert (=> b!6877598 d!2159663))

(declare-fun b!6877726 () Bool)

(declare-fun e!4145159 () Int)

(assert (=> b!6877726 (= e!4145159 1)))

(declare-fun call!626156 () Int)

(declare-fun bm!626150 () Bool)

(declare-fun c!1279693 () Bool)

(assert (=> bm!626150 (= call!626156 (regexDepthTotal!270 (ite c!1279693 (regOne!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regTwo!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))))

(declare-fun bm!626151 () Bool)

(declare-fun call!626157 () Int)

(declare-fun call!626155 () Int)

(assert (=> bm!626151 (= call!626157 call!626155)))

(declare-fun b!6877727 () Bool)

(declare-fun e!4145161 () Int)

(declare-fun e!4145162 () Int)

(assert (=> b!6877727 (= e!4145161 e!4145162)))

(declare-fun c!1279692 () Bool)

(assert (=> b!6877727 (= c!1279692 ((_ is Concat!25588) (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))

(declare-fun b!6877728 () Bool)

(assert (=> b!6877728 (= e!4145161 (+ 1 call!626156 call!626157))))

(declare-fun d!2159665 () Bool)

(declare-fun lt!2459346 () Int)

(assert (=> d!2159665 (> lt!2459346 0)))

(assert (=> d!2159665 (= lt!2459346 e!4145159)))

(declare-fun c!1279695 () Bool)

(assert (=> d!2159665 (= c!1279695 ((_ is ElementMatch!16743) (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))

(assert (=> d!2159665 (= (regexDepthTotal!270 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) lt!2459346)))

(declare-fun b!6877729 () Bool)

(declare-fun e!4145160 () Int)

(assert (=> b!6877729 (= e!4145160 (+ 1 call!626155))))

(declare-fun b!6877730 () Bool)

(assert (=> b!6877730 (= e!4145159 e!4145160)))

(declare-fun c!1279694 () Bool)

(assert (=> b!6877730 (= c!1279694 ((_ is Star!16743) (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))

(declare-fun b!6877731 () Bool)

(assert (=> b!6877731 (= c!1279693 ((_ is Union!16743) (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))

(assert (=> b!6877731 (= e!4145160 e!4145161)))

(declare-fun b!6877732 () Bool)

(assert (=> b!6877732 (= e!4145162 (+ 1 call!626157 call!626156))))

(declare-fun bm!626152 () Bool)

(assert (=> bm!626152 (= call!626155 (regexDepthTotal!270 (ite c!1279694 (reg!17072 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (ite c!1279693 (regTwo!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regOne!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978))))))))))))

(declare-fun b!6877733 () Bool)

(assert (=> b!6877733 (= e!4145162 1)))

(assert (= (and d!2159665 c!1279695) b!6877726))

(assert (= (and d!2159665 (not c!1279695)) b!6877730))

(assert (= (and b!6877730 c!1279694) b!6877729))

(assert (= (and b!6877730 (not c!1279694)) b!6877731))

(assert (= (and b!6877731 c!1279693) b!6877728))

(assert (= (and b!6877731 (not c!1279693)) b!6877727))

(assert (= (and b!6877727 c!1279692) b!6877732))

(assert (= (and b!6877727 (not c!1279692)) b!6877733))

(assert (= (or b!6877728 b!6877732) bm!626150))

(assert (= (or b!6877728 b!6877732) bm!626151))

(assert (= (or b!6877729 bm!626151) bm!626152))

(declare-fun m!7605162 () Bool)

(assert (=> bm!626150 m!7605162))

(declare-fun m!7605164 () Bool)

(assert (=> bm!626152 m!7605164))

(assert (=> bm!626137 d!2159665))

(declare-fun b!6877752 () Bool)

(declare-fun e!4145180 () Bool)

(declare-fun call!626165 () Bool)

(assert (=> b!6877752 (= e!4145180 call!626165)))

(declare-fun bm!626159 () Bool)

(declare-fun call!626166 () Bool)

(declare-fun call!626164 () Bool)

(assert (=> bm!626159 (= call!626166 call!626164)))

(declare-fun b!6877753 () Bool)

(declare-fun res!2804181 () Bool)

(declare-fun e!4145178 () Bool)

(assert (=> b!6877753 (=> (not res!2804181) (not e!4145178))))

(assert (=> b!6877753 (= res!2804181 call!626166)))

(declare-fun e!4145182 () Bool)

(assert (=> b!6877753 (= e!4145182 e!4145178)))

(declare-fun b!6877754 () Bool)

(declare-fun e!4145177 () Bool)

(assert (=> b!6877754 (= e!4145177 call!626164)))

(declare-fun b!6877755 () Bool)

(declare-fun e!4145181 () Bool)

(declare-fun e!4145179 () Bool)

(assert (=> b!6877755 (= e!4145181 e!4145179)))

(declare-fun c!1279701 () Bool)

(assert (=> b!6877755 (= c!1279701 ((_ is Star!16743) (h!72821 (exprs!6627 (h!72822 zl!1632)))))))

(declare-fun b!6877756 () Bool)

(declare-fun res!2804184 () Bool)

(declare-fun e!4145183 () Bool)

(assert (=> b!6877756 (=> res!2804184 e!4145183)))

(assert (=> b!6877756 (= res!2804184 (not ((_ is Concat!25588) (h!72821 (exprs!6627 (h!72822 zl!1632))))))))

(assert (=> b!6877756 (= e!4145182 e!4145183)))

(declare-fun bm!626160 () Bool)

(declare-fun c!1279700 () Bool)

(assert (=> bm!626160 (= call!626164 (validRegex!8456 (ite c!1279701 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279700 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))

(declare-fun bm!626161 () Bool)

(assert (=> bm!626161 (= call!626165 (validRegex!8456 (ite c!1279700 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))

(declare-fun b!6877757 () Bool)

(assert (=> b!6877757 (= e!4145179 e!4145177)))

(declare-fun res!2804183 () Bool)

(declare-fun nullable!6667 (Regex!16743) Bool)

(assert (=> b!6877757 (= res!2804183 (not (nullable!6667 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))

(assert (=> b!6877757 (=> (not res!2804183) (not e!4145177))))

(declare-fun d!2159667 () Bool)

(declare-fun res!2804185 () Bool)

(assert (=> d!2159667 (=> res!2804185 e!4145181)))

(assert (=> d!2159667 (= res!2804185 ((_ is ElementMatch!16743) (h!72821 (exprs!6627 (h!72822 zl!1632)))))))

(assert (=> d!2159667 (= (validRegex!8456 (h!72821 (exprs!6627 (h!72822 zl!1632)))) e!4145181)))

(declare-fun b!6877758 () Bool)

(assert (=> b!6877758 (= e!4145179 e!4145182)))

(assert (=> b!6877758 (= c!1279700 ((_ is Union!16743) (h!72821 (exprs!6627 (h!72822 zl!1632)))))))

(declare-fun b!6877759 () Bool)

(assert (=> b!6877759 (= e!4145183 e!4145180)))

(declare-fun res!2804182 () Bool)

(assert (=> b!6877759 (=> (not res!2804182) (not e!4145180))))

(assert (=> b!6877759 (= res!2804182 call!626166)))

(declare-fun b!6877760 () Bool)

(assert (=> b!6877760 (= e!4145178 call!626165)))

(assert (= (and d!2159667 (not res!2804185)) b!6877755))

(assert (= (and b!6877755 c!1279701) b!6877757))

(assert (= (and b!6877755 (not c!1279701)) b!6877758))

(assert (= (and b!6877757 res!2804183) b!6877754))

(assert (= (and b!6877758 c!1279700) b!6877753))

(assert (= (and b!6877758 (not c!1279700)) b!6877756))

(assert (= (and b!6877753 res!2804181) b!6877760))

(assert (= (and b!6877756 (not res!2804184)) b!6877759))

(assert (= (and b!6877759 res!2804182) b!6877752))

(assert (= (or b!6877760 b!6877752) bm!626161))

(assert (= (or b!6877753 b!6877759) bm!626159))

(assert (= (or b!6877754 bm!626159) bm!626160))

(declare-fun m!7605166 () Bool)

(assert (=> bm!626160 m!7605166))

(declare-fun m!7605168 () Bool)

(assert (=> bm!626161 m!7605168))

(declare-fun m!7605170 () Bool)

(assert (=> b!6877757 m!7605170))

(assert (=> bs!1837921 d!2159667))

(assert (=> b!6877611 d!2159623))

(declare-fun d!2159669 () Bool)

(declare-fun lt!2459347 () Bool)

(assert (=> d!2159669 (= lt!2459347 (select (content!13038 (t!380241 (t!380241 (t!380241 zl!1632)))) c!9978))))

(declare-fun e!4145185 () Bool)

(assert (=> d!2159669 (= lt!2459347 e!4145185)))

(declare-fun res!2804186 () Bool)

(assert (=> d!2159669 (=> (not res!2804186) (not e!4145185))))

(assert (=> d!2159669 (= res!2804186 ((_ is Cons!66374) (t!380241 (t!380241 (t!380241 zl!1632)))))))

(assert (=> d!2159669 (= (contains!20399 (t!380241 (t!380241 (t!380241 zl!1632))) c!9978) lt!2459347)))

(declare-fun b!6877761 () Bool)

(declare-fun e!4145184 () Bool)

(assert (=> b!6877761 (= e!4145185 e!4145184)))

(declare-fun res!2804187 () Bool)

(assert (=> b!6877761 (=> res!2804187 e!4145184)))

(assert (=> b!6877761 (= res!2804187 (= (h!72822 (t!380241 (t!380241 (t!380241 zl!1632)))) c!9978))))

(declare-fun b!6877762 () Bool)

(assert (=> b!6877762 (= e!4145184 (contains!20399 (t!380241 (t!380241 (t!380241 (t!380241 zl!1632)))) c!9978))))

(assert (= (and d!2159669 res!2804186) b!6877761))

(assert (= (and b!6877761 (not res!2804187)) b!6877762))

(assert (=> d!2159669 m!7605152))

(declare-fun m!7605172 () Bool)

(assert (=> d!2159669 m!7605172))

(declare-fun m!7605174 () Bool)

(assert (=> b!6877762 m!7605174))

(assert (=> b!6877569 d!2159669))

(declare-fun d!2159671 () Bool)

(declare-fun res!2804188 () Bool)

(declare-fun e!4145186 () Bool)

(assert (=> d!2159671 (=> res!2804188 e!4145186)))

(assert (=> d!2159671 (= res!2804188 ((_ is Nil!66373) (t!380240 (exprs!6627 (h!72822 zl!1632)))))))

(assert (=> d!2159671 (= (forall!15934 (t!380240 (exprs!6627 (h!72822 zl!1632))) lambda!389351) e!4145186)))

(declare-fun b!6877763 () Bool)

(declare-fun e!4145187 () Bool)

(assert (=> b!6877763 (= e!4145186 e!4145187)))

(declare-fun res!2804189 () Bool)

(assert (=> b!6877763 (=> (not res!2804189) (not e!4145187))))

(assert (=> b!6877763 (= res!2804189 (dynLambda!26569 lambda!389351 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))

(declare-fun b!6877764 () Bool)

(assert (=> b!6877764 (= e!4145187 (forall!15934 (t!380240 (t!380240 (exprs!6627 (h!72822 zl!1632)))) lambda!389351))))

(assert (= (and d!2159671 (not res!2804188)) b!6877763))

(assert (= (and b!6877763 res!2804189) b!6877764))

(declare-fun b_lambda!260289 () Bool)

(assert (=> (not b_lambda!260289) (not b!6877763)))

(declare-fun m!7605176 () Bool)

(assert (=> b!6877763 m!7605176))

(declare-fun m!7605178 () Bool)

(assert (=> b!6877764 m!7605178))

(assert (=> b!6877605 d!2159671))

(declare-fun b!6877765 () Bool)

(declare-fun e!4145188 () Int)

(assert (=> b!6877765 (= e!4145188 1)))

(declare-fun bm!626162 () Bool)

(declare-fun call!626168 () Int)

(declare-fun c!1279703 () Bool)

(assert (=> bm!626162 (= call!626168 (regexDepthTotal!270 (ite c!1279703 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))

(declare-fun bm!626163 () Bool)

(declare-fun call!626169 () Int)

(declare-fun call!626167 () Int)

(assert (=> bm!626163 (= call!626169 call!626167)))

(declare-fun b!6877766 () Bool)

(declare-fun e!4145190 () Int)

(declare-fun e!4145191 () Int)

(assert (=> b!6877766 (= e!4145190 e!4145191)))

(declare-fun c!1279702 () Bool)

(assert (=> b!6877766 (= c!1279702 ((_ is Concat!25588) (h!72821 (exprs!6627 (h!72822 zl!1632)))))))

(declare-fun b!6877767 () Bool)

(assert (=> b!6877767 (= e!4145190 (+ 1 call!626168 call!626169))))

(declare-fun d!2159673 () Bool)

(declare-fun lt!2459348 () Int)

(assert (=> d!2159673 (> lt!2459348 0)))

(assert (=> d!2159673 (= lt!2459348 e!4145188)))

(declare-fun c!1279705 () Bool)

(assert (=> d!2159673 (= c!1279705 ((_ is ElementMatch!16743) (h!72821 (exprs!6627 (h!72822 zl!1632)))))))

(assert (=> d!2159673 (= (regexDepthTotal!270 (h!72821 (exprs!6627 (h!72822 zl!1632)))) lt!2459348)))

(declare-fun b!6877768 () Bool)

(declare-fun e!4145189 () Int)

(assert (=> b!6877768 (= e!4145189 (+ 1 call!626167))))

(declare-fun b!6877769 () Bool)

(assert (=> b!6877769 (= e!4145188 e!4145189)))

(declare-fun c!1279704 () Bool)

(assert (=> b!6877769 (= c!1279704 ((_ is Star!16743) (h!72821 (exprs!6627 (h!72822 zl!1632)))))))

(declare-fun b!6877770 () Bool)

(assert (=> b!6877770 (= c!1279703 ((_ is Union!16743) (h!72821 (exprs!6627 (h!72822 zl!1632)))))))

(assert (=> b!6877770 (= e!4145189 e!4145190)))

(declare-fun b!6877771 () Bool)

(assert (=> b!6877771 (= e!4145191 (+ 1 call!626169 call!626168))))

(declare-fun bm!626164 () Bool)

(assert (=> bm!626164 (= call!626167 (regexDepthTotal!270 (ite c!1279704 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279703 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))

(declare-fun b!6877772 () Bool)

(assert (=> b!6877772 (= e!4145191 1)))

(assert (= (and d!2159673 c!1279705) b!6877765))

(assert (= (and d!2159673 (not c!1279705)) b!6877769))

(assert (= (and b!6877769 c!1279704) b!6877768))

(assert (= (and b!6877769 (not c!1279704)) b!6877770))

(assert (= (and b!6877770 c!1279703) b!6877767))

(assert (= (and b!6877770 (not c!1279703)) b!6877766))

(assert (= (and b!6877766 c!1279702) b!6877771))

(assert (= (and b!6877766 (not c!1279702)) b!6877772))

(assert (= (or b!6877767 b!6877771) bm!626162))

(assert (= (or b!6877767 b!6877771) bm!626163))

(assert (= (or b!6877768 bm!626163) bm!626164))

(declare-fun m!7605180 () Bool)

(assert (=> bm!626162 m!7605180))

(declare-fun m!7605182 () Bool)

(assert (=> bm!626164 m!7605182))

(assert (=> b!6877570 d!2159673))

(declare-fun d!2159675 () Bool)

(declare-fun lt!2459349 () Int)

(assert (=> d!2159675 (>= lt!2459349 0)))

(declare-fun e!4145192 () Int)

(assert (=> d!2159675 (= lt!2459349 e!4145192)))

(declare-fun c!1279706 () Bool)

(assert (=> d!2159675 (= c!1279706 ((_ is Cons!66373) (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632)))))))))

(assert (=> d!2159675 (= (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632))))) lt!2459349)))

(declare-fun b!6877773 () Bool)

(assert (=> b!6877773 (= e!4145192 (+ (regexDepthTotal!270 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))))))

(declare-fun b!6877774 () Bool)

(assert (=> b!6877774 (= e!4145192 1)))

(assert (= (and d!2159675 c!1279706) b!6877773))

(assert (= (and d!2159675 (not c!1279706)) b!6877774))

(declare-fun m!7605184 () Bool)

(assert (=> b!6877773 m!7605184))

(declare-fun m!7605186 () Bool)

(assert (=> b!6877773 m!7605186))

(assert (=> b!6877570 d!2159675))

(assert (=> b!6877613 d!2159659))

(declare-fun d!2159677 () Bool)

(declare-fun lt!2459350 () Int)

(assert (=> d!2159677 (>= lt!2459350 0)))

(declare-fun e!4145193 () Int)

(assert (=> d!2159677 (= lt!2459350 e!4145193)))

(declare-fun c!1279707 () Bool)

(assert (=> d!2159677 (= c!1279707 ((_ is Cons!66373) (exprs!6627 (h!72822 (t!380241 zl!1632)))))))

(assert (=> d!2159677 (= (contextDepthTotal!432 (h!72822 (t!380241 zl!1632))) lt!2459350)))

(declare-fun b!6877775 () Bool)

(assert (=> b!6877775 (= e!4145193 (+ (regexDepthTotal!270 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))) (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))))

(declare-fun b!6877776 () Bool)

(assert (=> b!6877776 (= e!4145193 1)))

(assert (= (and d!2159677 c!1279707) b!6877775))

(assert (= (and d!2159677 (not c!1279707)) b!6877776))

(declare-fun m!7605188 () Bool)

(assert (=> b!6877775 m!7605188))

(declare-fun m!7605190 () Bool)

(assert (=> b!6877775 m!7605190))

(assert (=> b!6877572 d!2159677))

(declare-fun d!2159679 () Bool)

(declare-fun lt!2459351 () Int)

(assert (=> d!2159679 (>= lt!2459351 0)))

(declare-fun e!4145194 () Int)

(assert (=> d!2159679 (= lt!2459351 e!4145194)))

(declare-fun c!1279708 () Bool)

(assert (=> d!2159679 (= c!1279708 ((_ is Cons!66374) (t!380241 (t!380241 zl!1632))))))

(assert (=> d!2159679 (= (zipperDepthTotal!460 (t!380241 (t!380241 zl!1632))) lt!2459351)))

(declare-fun b!6877777 () Bool)

(assert (=> b!6877777 (= e!4145194 (+ (contextDepthTotal!432 (h!72822 (t!380241 (t!380241 zl!1632)))) (zipperDepthTotal!460 (t!380241 (t!380241 (t!380241 zl!1632))))))))

(declare-fun b!6877778 () Bool)

(assert (=> b!6877778 (= e!4145194 0)))

(assert (= (and d!2159679 c!1279708) b!6877777))

(assert (= (and d!2159679 (not c!1279708)) b!6877778))

(declare-fun m!7605192 () Bool)

(assert (=> b!6877777 m!7605192))

(declare-fun m!7605194 () Bool)

(assert (=> b!6877777 m!7605194))

(assert (=> b!6877572 d!2159679))

(declare-fun d!2159681 () Bool)

(declare-fun res!2804190 () Bool)

(declare-fun e!4145195 () Bool)

(assert (=> d!2159681 (=> res!2804190 e!4145195)))

(assert (=> d!2159681 (= res!2804190 ((_ is Nil!66373) (exprs!6627 (h!72822 (t!380241 zl!1632)))))))

(assert (=> d!2159681 (= (forall!15934 (exprs!6627 (h!72822 (t!380241 zl!1632))) lambda!389357) e!4145195)))

(declare-fun b!6877779 () Bool)

(declare-fun e!4145196 () Bool)

(assert (=> b!6877779 (= e!4145195 e!4145196)))

(declare-fun res!2804191 () Bool)

(assert (=> b!6877779 (=> (not res!2804191) (not e!4145196))))

(assert (=> b!6877779 (= res!2804191 (dynLambda!26569 lambda!389357 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))

(declare-fun b!6877780 () Bool)

(assert (=> b!6877780 (= e!4145196 (forall!15934 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632)))) lambda!389357))))

(assert (= (and d!2159681 (not res!2804190)) b!6877779))

(assert (= (and b!6877779 res!2804191) b!6877780))

(declare-fun b_lambda!260291 () Bool)

(assert (=> (not b_lambda!260291) (not b!6877779)))

(declare-fun m!7605196 () Bool)

(assert (=> b!6877779 m!7605196))

(declare-fun m!7605198 () Bool)

(assert (=> b!6877780 m!7605198))

(assert (=> d!2159609 d!2159681))

(declare-fun d!2159683 () Bool)

(declare-fun lt!2459352 () Int)

(assert (=> d!2159683 (>= lt!2459352 0)))

(declare-fun e!4145197 () Int)

(assert (=> d!2159683 (= lt!2459352 e!4145197)))

(declare-fun c!1279709 () Bool)

(assert (=> d!2159683 (= c!1279709 ((_ is Nil!66374) (t!380241 (t!380241 (t!380241 zl!1632)))))))

(assert (=> d!2159683 (= (size!40733 (t!380241 (t!380241 (t!380241 zl!1632)))) lt!2459352)))

(declare-fun b!6877781 () Bool)

(assert (=> b!6877781 (= e!4145197 0)))

(declare-fun b!6877782 () Bool)

(assert (=> b!6877782 (= e!4145197 (+ 1 (size!40733 (t!380241 (t!380241 (t!380241 (t!380241 zl!1632)))))))))

(assert (= (and d!2159683 c!1279709) b!6877781))

(assert (= (and d!2159683 (not c!1279709)) b!6877782))

(declare-fun m!7605200 () Bool)

(assert (=> b!6877782 m!7605200))

(assert (=> b!6877615 d!2159683))

(declare-fun b!6877783 () Bool)

(declare-fun e!4145201 () Bool)

(declare-fun call!626171 () Bool)

(assert (=> b!6877783 (= e!4145201 call!626171)))

(declare-fun bm!626165 () Bool)

(declare-fun call!626172 () Bool)

(declare-fun call!626170 () Bool)

(assert (=> bm!626165 (= call!626172 call!626170)))

(declare-fun b!6877784 () Bool)

(declare-fun res!2804192 () Bool)

(declare-fun e!4145199 () Bool)

(assert (=> b!6877784 (=> (not res!2804192) (not e!4145199))))

(assert (=> b!6877784 (= res!2804192 call!626172)))

(declare-fun e!4145203 () Bool)

(assert (=> b!6877784 (= e!4145203 e!4145199)))

(declare-fun b!6877785 () Bool)

(declare-fun e!4145198 () Bool)

(assert (=> b!6877785 (= e!4145198 call!626170)))

(declare-fun b!6877786 () Bool)

(declare-fun e!4145202 () Bool)

(declare-fun e!4145200 () Bool)

(assert (=> b!6877786 (= e!4145202 e!4145200)))

(declare-fun c!1279711 () Bool)

(assert (=> b!6877786 (= c!1279711 ((_ is Star!16743) (h!72821 (exprs!6627 c!9978))))))

(declare-fun b!6877787 () Bool)

(declare-fun res!2804195 () Bool)

(declare-fun e!4145204 () Bool)

(assert (=> b!6877787 (=> res!2804195 e!4145204)))

(assert (=> b!6877787 (= res!2804195 (not ((_ is Concat!25588) (h!72821 (exprs!6627 c!9978)))))))

(assert (=> b!6877787 (= e!4145203 e!4145204)))

(declare-fun bm!626166 () Bool)

(declare-fun c!1279710 () Bool)

(assert (=> bm!626166 (= call!626170 (validRegex!8456 (ite c!1279711 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279710 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))

(declare-fun bm!626167 () Bool)

(assert (=> bm!626167 (= call!626171 (validRegex!8456 (ite c!1279710 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))

(declare-fun b!6877788 () Bool)

(assert (=> b!6877788 (= e!4145200 e!4145198)))

(declare-fun res!2804194 () Bool)

(assert (=> b!6877788 (= res!2804194 (not (nullable!6667 (reg!17072 (h!72821 (exprs!6627 c!9978))))))))

(assert (=> b!6877788 (=> (not res!2804194) (not e!4145198))))

(declare-fun d!2159685 () Bool)

(declare-fun res!2804196 () Bool)

(assert (=> d!2159685 (=> res!2804196 e!4145202)))

(assert (=> d!2159685 (= res!2804196 ((_ is ElementMatch!16743) (h!72821 (exprs!6627 c!9978))))))

(assert (=> d!2159685 (= (validRegex!8456 (h!72821 (exprs!6627 c!9978))) e!4145202)))

(declare-fun b!6877789 () Bool)

(assert (=> b!6877789 (= e!4145200 e!4145203)))

(assert (=> b!6877789 (= c!1279710 ((_ is Union!16743) (h!72821 (exprs!6627 c!9978))))))

(declare-fun b!6877790 () Bool)

(assert (=> b!6877790 (= e!4145204 e!4145201)))

(declare-fun res!2804193 () Bool)

(assert (=> b!6877790 (=> (not res!2804193) (not e!4145201))))

(assert (=> b!6877790 (= res!2804193 call!626172)))

(declare-fun b!6877791 () Bool)

(assert (=> b!6877791 (= e!4145199 call!626171)))

(assert (= (and d!2159685 (not res!2804196)) b!6877786))

(assert (= (and b!6877786 c!1279711) b!6877788))

(assert (= (and b!6877786 (not c!1279711)) b!6877789))

(assert (= (and b!6877788 res!2804194) b!6877785))

(assert (= (and b!6877789 c!1279710) b!6877784))

(assert (= (and b!6877789 (not c!1279710)) b!6877787))

(assert (= (and b!6877784 res!2804192) b!6877791))

(assert (= (and b!6877787 (not res!2804195)) b!6877790))

(assert (= (and b!6877790 res!2804193) b!6877783))

(assert (= (or b!6877791 b!6877783) bm!626167))

(assert (= (or b!6877784 b!6877790) bm!626165))

(assert (= (or b!6877785 bm!626165) bm!626166))

(declare-fun m!7605202 () Bool)

(assert (=> bm!626166 m!7605202))

(declare-fun m!7605204 () Bool)

(assert (=> bm!626167 m!7605204))

(declare-fun m!7605206 () Bool)

(assert (=> b!6877788 m!7605206))

(assert (=> bs!1837922 d!2159685))

(declare-fun d!2159687 () Bool)

(declare-fun res!2804197 () Bool)

(declare-fun e!4145205 () Bool)

(assert (=> d!2159687 (=> res!2804197 e!4145205)))

(assert (=> d!2159687 (= res!2804197 ((_ is Nil!66373) (t!380240 (exprs!6627 c!9978))))))

(assert (=> d!2159687 (= (forall!15934 (t!380240 (exprs!6627 c!9978)) lambda!389352) e!4145205)))

(declare-fun b!6877792 () Bool)

(declare-fun e!4145206 () Bool)

(assert (=> b!6877792 (= e!4145205 e!4145206)))

(declare-fun res!2804198 () Bool)

(assert (=> b!6877792 (=> (not res!2804198) (not e!4145206))))

(assert (=> b!6877792 (= res!2804198 (dynLambda!26569 lambda!389352 (h!72821 (t!380240 (exprs!6627 c!9978)))))))

(declare-fun b!6877793 () Bool)

(assert (=> b!6877793 (= e!4145206 (forall!15934 (t!380240 (t!380240 (exprs!6627 c!9978))) lambda!389352))))

(assert (= (and d!2159687 (not res!2804197)) b!6877792))

(assert (= (and b!6877792 res!2804198) b!6877793))

(declare-fun b_lambda!260293 () Bool)

(assert (=> (not b_lambda!260293) (not b!6877792)))

(declare-fun m!7605208 () Bool)

(assert (=> b!6877792 m!7605208))

(declare-fun m!7605210 () Bool)

(assert (=> b!6877793 m!7605210))

(assert (=> b!6877617 d!2159687))

(declare-fun bs!1837928 () Bool)

(declare-fun d!2159689 () Bool)

(assert (= bs!1837928 (and d!2159689 d!2159583)))

(declare-fun lambda!389359 () Int)

(assert (=> bs!1837928 (= lambda!389359 lambda!389351)))

(declare-fun bs!1837929 () Bool)

(assert (= bs!1837929 (and d!2159689 d!2159589)))

(assert (=> bs!1837929 (= lambda!389359 lambda!389352)))

(declare-fun bs!1837930 () Bool)

(assert (= bs!1837930 (and d!2159689 d!2159609)))

(assert (=> bs!1837930 (= lambda!389359 lambda!389357)))

(assert (=> d!2159689 (= (inv!85104 (h!72822 (t!380241 (t!380241 zl!1632)))) (forall!15934 (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632)))) lambda!389359))))

(declare-fun bs!1837931 () Bool)

(assert (= bs!1837931 d!2159689))

(declare-fun m!7605212 () Bool)

(assert (=> bs!1837931 m!7605212))

(assert (=> b!6877618 d!2159689))

(declare-fun b!6877794 () Bool)

(declare-fun e!4145207 () Int)

(assert (=> b!6877794 (= e!4145207 1)))

(declare-fun c!1279713 () Bool)

(declare-fun bm!626168 () Bool)

(declare-fun call!626174 () Int)

(assert (=> bm!626168 (= call!626174 (regexDepthTotal!270 (ite c!1279713 (regOne!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regTwo!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))))

(declare-fun bm!626169 () Bool)

(declare-fun call!626175 () Int)

(declare-fun call!626173 () Int)

(assert (=> bm!626169 (= call!626175 call!626173)))

(declare-fun b!6877795 () Bool)

(declare-fun e!4145209 () Int)

(declare-fun e!4145210 () Int)

(assert (=> b!6877795 (= e!4145209 e!4145210)))

(declare-fun c!1279712 () Bool)

(assert (=> b!6877795 (= c!1279712 ((_ is Concat!25588) (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))

(declare-fun b!6877796 () Bool)

(assert (=> b!6877796 (= e!4145209 (+ 1 call!626174 call!626175))))

(declare-fun d!2159691 () Bool)

(declare-fun lt!2459353 () Int)

(assert (=> d!2159691 (> lt!2459353 0)))

(assert (=> d!2159691 (= lt!2459353 e!4145207)))

(declare-fun c!1279715 () Bool)

(assert (=> d!2159691 (= c!1279715 ((_ is ElementMatch!16743) (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))

(assert (=> d!2159691 (= (regexDepthTotal!270 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) lt!2459353)))

(declare-fun b!6877797 () Bool)

(declare-fun e!4145208 () Int)

(assert (=> b!6877797 (= e!4145208 (+ 1 call!626173))))

(declare-fun b!6877798 () Bool)

(assert (=> b!6877798 (= e!4145207 e!4145208)))

(declare-fun c!1279714 () Bool)

(assert (=> b!6877798 (= c!1279714 ((_ is Star!16743) (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))

(declare-fun b!6877799 () Bool)

(assert (=> b!6877799 (= c!1279713 ((_ is Union!16743) (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))

(assert (=> b!6877799 (= e!4145208 e!4145209)))

(declare-fun b!6877800 () Bool)

(assert (=> b!6877800 (= e!4145210 (+ 1 call!626175 call!626174))))

(declare-fun bm!626170 () Bool)

(assert (=> bm!626170 (= call!626173 (regexDepthTotal!270 (ite c!1279714 (reg!17072 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (ite c!1279713 (regTwo!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regOne!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))))))))

(declare-fun b!6877801 () Bool)

(assert (=> b!6877801 (= e!4145210 1)))

(assert (= (and d!2159691 c!1279715) b!6877794))

(assert (= (and d!2159691 (not c!1279715)) b!6877798))

(assert (= (and b!6877798 c!1279714) b!6877797))

(assert (= (and b!6877798 (not c!1279714)) b!6877799))

(assert (= (and b!6877799 c!1279713) b!6877796))

(assert (= (and b!6877799 (not c!1279713)) b!6877795))

(assert (= (and b!6877795 c!1279712) b!6877800))

(assert (= (and b!6877795 (not c!1279712)) b!6877801))

(assert (= (or b!6877796 b!6877800) bm!626168))

(assert (= (or b!6877796 b!6877800) bm!626169))

(assert (= (or b!6877797 bm!626169) bm!626170))

(declare-fun m!7605214 () Bool)

(assert (=> bm!626168 m!7605214))

(declare-fun m!7605216 () Bool)

(assert (=> bm!626170 m!7605216))

(assert (=> bm!626135 d!2159691))

(declare-fun e!4145211 () Bool)

(assert (=> b!6877631 (= tp!1890244 e!4145211)))

(declare-fun b!6877802 () Bool)

(assert (=> b!6877802 (= e!4145211 tp_is_empty!42717)))

(declare-fun b!6877805 () Bool)

(declare-fun tp!1890286 () Bool)

(declare-fun tp!1890287 () Bool)

(assert (=> b!6877805 (= e!4145211 (and tp!1890286 tp!1890287))))

(declare-fun b!6877804 () Bool)

(declare-fun tp!1890289 () Bool)

(assert (=> b!6877804 (= e!4145211 tp!1890289)))

(declare-fun b!6877803 () Bool)

(declare-fun tp!1890288 () Bool)

(declare-fun tp!1890290 () Bool)

(assert (=> b!6877803 (= e!4145211 (and tp!1890288 tp!1890290))))

(assert (= (and b!6877631 ((_ is ElementMatch!16743) (regOne!33998 (h!72821 (exprs!6627 c!9978))))) b!6877802))

(assert (= (and b!6877631 ((_ is Concat!25588) (regOne!33998 (h!72821 (exprs!6627 c!9978))))) b!6877803))

(assert (= (and b!6877631 ((_ is Star!16743) (regOne!33998 (h!72821 (exprs!6627 c!9978))))) b!6877804))

(assert (= (and b!6877631 ((_ is Union!16743) (regOne!33998 (h!72821 (exprs!6627 c!9978))))) b!6877805))

(declare-fun e!4145212 () Bool)

(assert (=> b!6877631 (= tp!1890246 e!4145212)))

(declare-fun b!6877806 () Bool)

(assert (=> b!6877806 (= e!4145212 tp_is_empty!42717)))

(declare-fun b!6877809 () Bool)

(declare-fun tp!1890291 () Bool)

(declare-fun tp!1890292 () Bool)

(assert (=> b!6877809 (= e!4145212 (and tp!1890291 tp!1890292))))

(declare-fun b!6877808 () Bool)

(declare-fun tp!1890294 () Bool)

(assert (=> b!6877808 (= e!4145212 tp!1890294)))

(declare-fun b!6877807 () Bool)

(declare-fun tp!1890293 () Bool)

(declare-fun tp!1890295 () Bool)

(assert (=> b!6877807 (= e!4145212 (and tp!1890293 tp!1890295))))

(assert (= (and b!6877631 ((_ is ElementMatch!16743) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) b!6877806))

(assert (= (and b!6877631 ((_ is Concat!25588) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) b!6877807))

(assert (= (and b!6877631 ((_ is Star!16743) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) b!6877808))

(assert (= (and b!6877631 ((_ is Union!16743) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) b!6877809))

(declare-fun e!4145213 () Bool)

(assert (=> b!6877632 (= tp!1890245 e!4145213)))

(declare-fun b!6877810 () Bool)

(assert (=> b!6877810 (= e!4145213 tp_is_empty!42717)))

(declare-fun b!6877813 () Bool)

(declare-fun tp!1890296 () Bool)

(declare-fun tp!1890297 () Bool)

(assert (=> b!6877813 (= e!4145213 (and tp!1890296 tp!1890297))))

(declare-fun b!6877812 () Bool)

(declare-fun tp!1890299 () Bool)

(assert (=> b!6877812 (= e!4145213 tp!1890299)))

(declare-fun b!6877811 () Bool)

(declare-fun tp!1890298 () Bool)

(declare-fun tp!1890300 () Bool)

(assert (=> b!6877811 (= e!4145213 (and tp!1890298 tp!1890300))))

(assert (= (and b!6877632 ((_ is ElementMatch!16743) (reg!17072 (h!72821 (exprs!6627 c!9978))))) b!6877810))

(assert (= (and b!6877632 ((_ is Concat!25588) (reg!17072 (h!72821 (exprs!6627 c!9978))))) b!6877811))

(assert (= (and b!6877632 ((_ is Star!16743) (reg!17072 (h!72821 (exprs!6627 c!9978))))) b!6877812))

(assert (= (and b!6877632 ((_ is Union!16743) (reg!17072 (h!72821 (exprs!6627 c!9978))))) b!6877813))

(declare-fun e!4145214 () Bool)

(assert (=> b!6877639 (= tp!1890254 e!4145214)))

(declare-fun b!6877814 () Bool)

(assert (=> b!6877814 (= e!4145214 tp_is_empty!42717)))

(declare-fun b!6877817 () Bool)

(declare-fun tp!1890301 () Bool)

(declare-fun tp!1890302 () Bool)

(assert (=> b!6877817 (= e!4145214 (and tp!1890301 tp!1890302))))

(declare-fun b!6877816 () Bool)

(declare-fun tp!1890304 () Bool)

(assert (=> b!6877816 (= e!4145214 tp!1890304)))

(declare-fun b!6877815 () Bool)

(declare-fun tp!1890303 () Bool)

(declare-fun tp!1890305 () Bool)

(assert (=> b!6877815 (= e!4145214 (and tp!1890303 tp!1890305))))

(assert (= (and b!6877639 ((_ is ElementMatch!16743) (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632)))))) b!6877814))

(assert (= (and b!6877639 ((_ is Concat!25588) (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632)))))) b!6877815))

(assert (= (and b!6877639 ((_ is Star!16743) (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632)))))) b!6877816))

(assert (= (and b!6877639 ((_ is Union!16743) (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632)))))) b!6877817))

(declare-fun b!6877818 () Bool)

(declare-fun e!4145215 () Bool)

(declare-fun tp!1890306 () Bool)

(declare-fun tp!1890307 () Bool)

(assert (=> b!6877818 (= e!4145215 (and tp!1890306 tp!1890307))))

(assert (=> b!6877639 (= tp!1890255 e!4145215)))

(assert (= (and b!6877639 ((_ is Cons!66373) (t!380240 (t!380240 (exprs!6627 (h!72822 zl!1632)))))) b!6877818))

(declare-fun e!4145216 () Bool)

(assert (=> b!6877638 (= tp!1890249 e!4145216)))

(declare-fun b!6877819 () Bool)

(assert (=> b!6877819 (= e!4145216 tp_is_empty!42717)))

(declare-fun b!6877822 () Bool)

(declare-fun tp!1890308 () Bool)

(declare-fun tp!1890309 () Bool)

(assert (=> b!6877822 (= e!4145216 (and tp!1890308 tp!1890309))))

(declare-fun b!6877821 () Bool)

(declare-fun tp!1890311 () Bool)

(assert (=> b!6877821 (= e!4145216 tp!1890311)))

(declare-fun b!6877820 () Bool)

(declare-fun tp!1890310 () Bool)

(declare-fun tp!1890312 () Bool)

(assert (=> b!6877820 (= e!4145216 (and tp!1890310 tp!1890312))))

(assert (= (and b!6877638 ((_ is ElementMatch!16743) (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877819))

(assert (= (and b!6877638 ((_ is Concat!25588) (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877820))

(assert (= (and b!6877638 ((_ is Star!16743) (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877821))

(assert (= (and b!6877638 ((_ is Union!16743) (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877822))

(declare-fun e!4145217 () Bool)

(assert (=> b!6877638 (= tp!1890250 e!4145217)))

(declare-fun b!6877823 () Bool)

(assert (=> b!6877823 (= e!4145217 tp_is_empty!42717)))

(declare-fun b!6877826 () Bool)

(declare-fun tp!1890313 () Bool)

(declare-fun tp!1890314 () Bool)

(assert (=> b!6877826 (= e!4145217 (and tp!1890313 tp!1890314))))

(declare-fun b!6877825 () Bool)

(declare-fun tp!1890316 () Bool)

(assert (=> b!6877825 (= e!4145217 tp!1890316)))

(declare-fun b!6877824 () Bool)

(declare-fun tp!1890315 () Bool)

(declare-fun tp!1890317 () Bool)

(assert (=> b!6877824 (= e!4145217 (and tp!1890315 tp!1890317))))

(assert (= (and b!6877638 ((_ is ElementMatch!16743) (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877823))

(assert (= (and b!6877638 ((_ is Concat!25588) (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877824))

(assert (= (and b!6877638 ((_ is Star!16743) (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877825))

(assert (= (and b!6877638 ((_ is Union!16743) (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877826))

(declare-fun e!4145218 () Bool)

(assert (=> b!6877634 (= tp!1890247 e!4145218)))

(declare-fun b!6877827 () Bool)

(assert (=> b!6877827 (= e!4145218 tp_is_empty!42717)))

(declare-fun b!6877830 () Bool)

(declare-fun tp!1890318 () Bool)

(declare-fun tp!1890319 () Bool)

(assert (=> b!6877830 (= e!4145218 (and tp!1890318 tp!1890319))))

(declare-fun b!6877829 () Bool)

(declare-fun tp!1890321 () Bool)

(assert (=> b!6877829 (= e!4145218 tp!1890321)))

(declare-fun b!6877828 () Bool)

(declare-fun tp!1890320 () Bool)

(declare-fun tp!1890322 () Bool)

(assert (=> b!6877828 (= e!4145218 (and tp!1890320 tp!1890322))))

(assert (= (and b!6877634 ((_ is ElementMatch!16743) (h!72821 (t!380240 (exprs!6627 c!9978))))) b!6877827))

(assert (= (and b!6877634 ((_ is Concat!25588) (h!72821 (t!380240 (exprs!6627 c!9978))))) b!6877828))

(assert (= (and b!6877634 ((_ is Star!16743) (h!72821 (t!380240 (exprs!6627 c!9978))))) b!6877829))

(assert (= (and b!6877634 ((_ is Union!16743) (h!72821 (t!380240 (exprs!6627 c!9978))))) b!6877830))

(declare-fun b!6877831 () Bool)

(declare-fun e!4145219 () Bool)

(declare-fun tp!1890323 () Bool)

(declare-fun tp!1890324 () Bool)

(assert (=> b!6877831 (= e!4145219 (and tp!1890323 tp!1890324))))

(assert (=> b!6877634 (= tp!1890248 e!4145219)))

(assert (= (and b!6877634 ((_ is Cons!66373) (t!380240 (t!380240 (exprs!6627 c!9978))))) b!6877831))

(declare-fun e!4145220 () Bool)

(assert (=> b!6877637 (= tp!1890252 e!4145220)))

(declare-fun b!6877832 () Bool)

(assert (=> b!6877832 (= e!4145220 tp_is_empty!42717)))

(declare-fun b!6877835 () Bool)

(declare-fun tp!1890325 () Bool)

(declare-fun tp!1890326 () Bool)

(assert (=> b!6877835 (= e!4145220 (and tp!1890325 tp!1890326))))

(declare-fun b!6877834 () Bool)

(declare-fun tp!1890328 () Bool)

(assert (=> b!6877834 (= e!4145220 tp!1890328)))

(declare-fun b!6877833 () Bool)

(declare-fun tp!1890327 () Bool)

(declare-fun tp!1890329 () Bool)

(assert (=> b!6877833 (= e!4145220 (and tp!1890327 tp!1890329))))

(assert (= (and b!6877637 ((_ is ElementMatch!16743) (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877832))

(assert (= (and b!6877637 ((_ is Concat!25588) (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877833))

(assert (= (and b!6877637 ((_ is Star!16743) (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877834))

(assert (= (and b!6877637 ((_ is Union!16743) (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877835))

(declare-fun b!6877836 () Bool)

(declare-fun e!4145221 () Bool)

(declare-fun tp!1890330 () Bool)

(declare-fun tp!1890331 () Bool)

(assert (=> b!6877836 (= e!4145221 (and tp!1890330 tp!1890331))))

(assert (=> b!6877619 (= tp!1890230 e!4145221)))

(assert (= (and b!6877619 ((_ is Cons!66373) (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632)))))) b!6877836))

(declare-fun e!4145222 () Bool)

(assert (=> b!6877640 (= tp!1890256 e!4145222)))

(declare-fun b!6877837 () Bool)

(assert (=> b!6877837 (= e!4145222 tp_is_empty!42717)))

(declare-fun b!6877840 () Bool)

(declare-fun tp!1890332 () Bool)

(declare-fun tp!1890333 () Bool)

(assert (=> b!6877840 (= e!4145222 (and tp!1890332 tp!1890333))))

(declare-fun b!6877839 () Bool)

(declare-fun tp!1890335 () Bool)

(assert (=> b!6877839 (= e!4145222 tp!1890335)))

(declare-fun b!6877838 () Bool)

(declare-fun tp!1890334 () Bool)

(declare-fun tp!1890336 () Bool)

(assert (=> b!6877838 (= e!4145222 (and tp!1890334 tp!1890336))))

(assert (= (and b!6877640 ((_ is ElementMatch!16743) (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632)))))) b!6877837))

(assert (= (and b!6877640 ((_ is Concat!25588) (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632)))))) b!6877838))

(assert (= (and b!6877640 ((_ is Star!16743) (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632)))))) b!6877839))

(assert (= (and b!6877640 ((_ is Union!16743) (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632)))))) b!6877840))

(declare-fun b!6877841 () Bool)

(declare-fun e!4145223 () Bool)

(declare-fun tp!1890337 () Bool)

(declare-fun tp!1890338 () Bool)

(assert (=> b!6877841 (= e!4145223 (and tp!1890337 tp!1890338))))

(assert (=> b!6877640 (= tp!1890257 e!4145223)))

(assert (= (and b!6877640 ((_ is Cons!66373) (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632)))))) b!6877841))

(declare-fun e!4145224 () Bool)

(assert (=> b!6877636 (= tp!1890251 e!4145224)))

(declare-fun b!6877842 () Bool)

(assert (=> b!6877842 (= e!4145224 tp_is_empty!42717)))

(declare-fun b!6877845 () Bool)

(declare-fun tp!1890339 () Bool)

(declare-fun tp!1890340 () Bool)

(assert (=> b!6877845 (= e!4145224 (and tp!1890339 tp!1890340))))

(declare-fun b!6877844 () Bool)

(declare-fun tp!1890342 () Bool)

(assert (=> b!6877844 (= e!4145224 tp!1890342)))

(declare-fun b!6877843 () Bool)

(declare-fun tp!1890341 () Bool)

(declare-fun tp!1890343 () Bool)

(assert (=> b!6877843 (= e!4145224 (and tp!1890341 tp!1890343))))

(assert (= (and b!6877636 ((_ is ElementMatch!16743) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877842))

(assert (= (and b!6877636 ((_ is Concat!25588) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877843))

(assert (= (and b!6877636 ((_ is Star!16743) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877844))

(assert (= (and b!6877636 ((_ is Union!16743) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877845))

(declare-fun e!4145225 () Bool)

(assert (=> b!6877636 (= tp!1890253 e!4145225)))

(declare-fun b!6877846 () Bool)

(assert (=> b!6877846 (= e!4145225 tp_is_empty!42717)))

(declare-fun b!6877849 () Bool)

(declare-fun tp!1890344 () Bool)

(declare-fun tp!1890345 () Bool)

(assert (=> b!6877849 (= e!4145225 (and tp!1890344 tp!1890345))))

(declare-fun b!6877848 () Bool)

(declare-fun tp!1890347 () Bool)

(assert (=> b!6877848 (= e!4145225 tp!1890347)))

(declare-fun b!6877847 () Bool)

(declare-fun tp!1890346 () Bool)

(declare-fun tp!1890348 () Bool)

(assert (=> b!6877847 (= e!4145225 (and tp!1890346 tp!1890348))))

(assert (= (and b!6877636 ((_ is ElementMatch!16743) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877846))

(assert (= (and b!6877636 ((_ is Concat!25588) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877847))

(assert (= (and b!6877636 ((_ is Star!16743) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877848))

(assert (= (and b!6877636 ((_ is Union!16743) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) b!6877849))

(declare-fun b!6877851 () Bool)

(declare-fun e!4145227 () Bool)

(declare-fun tp!1890349 () Bool)

(assert (=> b!6877851 (= e!4145227 tp!1890349)))

(declare-fun tp!1890350 () Bool)

(declare-fun e!4145226 () Bool)

(declare-fun b!6877850 () Bool)

(assert (=> b!6877850 (= e!4145226 (and (inv!85104 (h!72822 (t!380241 (t!380241 (t!380241 zl!1632))))) e!4145227 tp!1890350))))

(assert (=> b!6877618 (= tp!1890231 e!4145226)))

(assert (= b!6877850 b!6877851))

(assert (= (and b!6877618 ((_ is Cons!66374) (t!380241 (t!380241 (t!380241 zl!1632))))) b!6877850))

(declare-fun m!7605218 () Bool)

(assert (=> b!6877850 m!7605218))

(declare-fun e!4145228 () Bool)

(assert (=> b!6877633 (= tp!1890242 e!4145228)))

(declare-fun b!6877852 () Bool)

(assert (=> b!6877852 (= e!4145228 tp_is_empty!42717)))

(declare-fun b!6877855 () Bool)

(declare-fun tp!1890351 () Bool)

(declare-fun tp!1890352 () Bool)

(assert (=> b!6877855 (= e!4145228 (and tp!1890351 tp!1890352))))

(declare-fun b!6877854 () Bool)

(declare-fun tp!1890354 () Bool)

(assert (=> b!6877854 (= e!4145228 tp!1890354)))

(declare-fun b!6877853 () Bool)

(declare-fun tp!1890353 () Bool)

(declare-fun tp!1890355 () Bool)

(assert (=> b!6877853 (= e!4145228 (and tp!1890353 tp!1890355))))

(assert (= (and b!6877633 ((_ is ElementMatch!16743) (regOne!33999 (h!72821 (exprs!6627 c!9978))))) b!6877852))

(assert (= (and b!6877633 ((_ is Concat!25588) (regOne!33999 (h!72821 (exprs!6627 c!9978))))) b!6877853))

(assert (= (and b!6877633 ((_ is Star!16743) (regOne!33999 (h!72821 (exprs!6627 c!9978))))) b!6877854))

(assert (= (and b!6877633 ((_ is Union!16743) (regOne!33999 (h!72821 (exprs!6627 c!9978))))) b!6877855))

(declare-fun e!4145229 () Bool)

(assert (=> b!6877633 (= tp!1890243 e!4145229)))

(declare-fun b!6877856 () Bool)

(assert (=> b!6877856 (= e!4145229 tp_is_empty!42717)))

(declare-fun b!6877859 () Bool)

(declare-fun tp!1890356 () Bool)

(declare-fun tp!1890357 () Bool)

(assert (=> b!6877859 (= e!4145229 (and tp!1890356 tp!1890357))))

(declare-fun b!6877858 () Bool)

(declare-fun tp!1890359 () Bool)

(assert (=> b!6877858 (= e!4145229 tp!1890359)))

(declare-fun b!6877857 () Bool)

(declare-fun tp!1890358 () Bool)

(declare-fun tp!1890360 () Bool)

(assert (=> b!6877857 (= e!4145229 (and tp!1890358 tp!1890360))))

(assert (= (and b!6877633 ((_ is ElementMatch!16743) (regTwo!33999 (h!72821 (exprs!6627 c!9978))))) b!6877856))

(assert (= (and b!6877633 ((_ is Concat!25588) (regTwo!33999 (h!72821 (exprs!6627 c!9978))))) b!6877857))

(assert (= (and b!6877633 ((_ is Star!16743) (regTwo!33999 (h!72821 (exprs!6627 c!9978))))) b!6877858))

(assert (= (and b!6877633 ((_ is Union!16743) (regTwo!33999 (h!72821 (exprs!6627 c!9978))))) b!6877859))

(declare-fun b_lambda!260295 () Bool)

(assert (= b_lambda!260289 (or d!2159583 b_lambda!260295)))

(declare-fun bs!1837932 () Bool)

(declare-fun d!2159693 () Bool)

(assert (= bs!1837932 (and d!2159693 d!2159583)))

(assert (=> bs!1837932 (= (dynLambda!26569 lambda!389351 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))) (validRegex!8456 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))

(declare-fun m!7605220 () Bool)

(assert (=> bs!1837932 m!7605220))

(assert (=> b!6877763 d!2159693))

(declare-fun b_lambda!260297 () Bool)

(assert (= b_lambda!260291 (or d!2159609 b_lambda!260297)))

(declare-fun bs!1837933 () Bool)

(declare-fun d!2159695 () Bool)

(assert (= bs!1837933 (and d!2159695 d!2159609)))

(assert (=> bs!1837933 (= (dynLambda!26569 lambda!389357 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))) (validRegex!8456 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))

(declare-fun m!7605222 () Bool)

(assert (=> bs!1837933 m!7605222))

(assert (=> b!6877779 d!2159695))

(declare-fun b_lambda!260299 () Bool)

(assert (= b_lambda!260293 (or d!2159589 b_lambda!260299)))

(declare-fun bs!1837934 () Bool)

(declare-fun d!2159697 () Bool)

(assert (= bs!1837934 (and d!2159697 d!2159589)))

(assert (=> bs!1837934 (= (dynLambda!26569 lambda!389352 (h!72821 (t!380240 (exprs!6627 c!9978)))) (validRegex!8456 (h!72821 (t!380240 (exprs!6627 c!9978)))))))

(declare-fun m!7605224 () Bool)

(assert (=> bs!1837934 m!7605224))

(assert (=> b!6877792 d!2159697))

(check-sat (not b!6877821) (not b!6877805) (not b!6877833) (not bm!626152) (not bs!1837934) (not bm!626150) (not b_lambda!260295) (not b!6877807) (not b!6877829) (not bm!626168) (not b!6877808) (not b_lambda!260297) (not b!6877851) (not b!6877809) (not b!6877853) (not b!6877780) (not b!6877831) (not b!6877813) (not b!6877834) (not b!6877757) (not d!2159689) (not b_lambda!260299) (not bm!626164) (not b!6877816) (not b!6877724) (not b!6877843) (not b!6877857) (not b!6877822) (not b!6877812) (not b!6877824) (not b_lambda!260279) (not b!6877847) (not bm!626166) (not b!6877715) (not bm!626149) (not b!6877838) (not b!6877835) (not b!6877762) (not b!6877775) (not b!6877788) (not b!6877793) (not bm!626161) (not b!6877815) (not b!6877836) (not b!6877811) (not b!6877773) (not b!6877764) (not bm!626170) (not b!6877803) (not bs!1837932) (not b!6877841) (not bm!626162) (not b_lambda!260277) (not bm!626147) (not b!6877858) (not b!6877830) (not b!6877782) (not bm!626160) (not b!6877825) (not b!6877817) (not bs!1837933) (not b!6877845) (not b!6877849) (not b!6877839) (not b!6877828) (not b!6877804) (not b!6877854) (not b!6877840) (not b!6877826) (not b!6877820) (not b!6877855) tp_is_empty!42717 (not bm!626167) (not b!6877850) (not b!6877859) (not b!6877848) (not b!6877818) (not b!6877844) (not d!2159669) (not b!6877777))
(check-sat)
(get-model)

(declare-fun b!6878006 () Bool)

(declare-fun e!4145307 () Int)

(assert (=> b!6878006 (= e!4145307 1)))

(declare-fun bm!626195 () Bool)

(declare-fun call!626201 () Int)

(declare-fun c!1279747 () Bool)

(assert (=> bm!626195 (= call!626201 (regexDepthTotal!270 (ite c!1279747 (regOne!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) (regTwo!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))))))

(declare-fun bm!626196 () Bool)

(declare-fun call!626202 () Int)

(declare-fun call!626200 () Int)

(assert (=> bm!626196 (= call!626202 call!626200)))

(declare-fun b!6878007 () Bool)

(declare-fun e!4145309 () Int)

(declare-fun e!4145310 () Int)

(assert (=> b!6878007 (= e!4145309 e!4145310)))

(declare-fun c!1279746 () Bool)

(assert (=> b!6878007 (= c!1279746 ((_ is Concat!25588) (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))))

(declare-fun b!6878008 () Bool)

(assert (=> b!6878008 (= e!4145309 (+ 1 call!626201 call!626202))))

(declare-fun d!2159739 () Bool)

(declare-fun lt!2459364 () Int)

(assert (=> d!2159739 (> lt!2459364 0)))

(assert (=> d!2159739 (= lt!2459364 e!4145307)))

(declare-fun c!1279749 () Bool)

(assert (=> d!2159739 (= c!1279749 ((_ is ElementMatch!16743) (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))))

(assert (=> d!2159739 (= (regexDepthTotal!270 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) lt!2459364)))

(declare-fun b!6878009 () Bool)

(declare-fun e!4145308 () Int)

(assert (=> b!6878009 (= e!4145308 (+ 1 call!626200))))

(declare-fun b!6878010 () Bool)

(assert (=> b!6878010 (= e!4145307 e!4145308)))

(declare-fun c!1279748 () Bool)

(assert (=> b!6878010 (= c!1279748 ((_ is Star!16743) (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))))

(declare-fun b!6878011 () Bool)

(assert (=> b!6878011 (= c!1279747 ((_ is Union!16743) (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))))

(assert (=> b!6878011 (= e!4145308 e!4145309)))

(declare-fun b!6878012 () Bool)

(assert (=> b!6878012 (= e!4145310 (+ 1 call!626202 call!626201))))

(declare-fun bm!626197 () Bool)

(assert (=> bm!626197 (= call!626200 (regexDepthTotal!270 (ite c!1279748 (reg!17072 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) (ite c!1279747 (regTwo!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) (regOne!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632)))))))))))))

(declare-fun b!6878013 () Bool)

(assert (=> b!6878013 (= e!4145310 1)))

(assert (= (and d!2159739 c!1279749) b!6878006))

(assert (= (and d!2159739 (not c!1279749)) b!6878010))

(assert (= (and b!6878010 c!1279748) b!6878009))

(assert (= (and b!6878010 (not c!1279748)) b!6878011))

(assert (= (and b!6878011 c!1279747) b!6878008))

(assert (= (and b!6878011 (not c!1279747)) b!6878007))

(assert (= (and b!6878007 c!1279746) b!6878012))

(assert (= (and b!6878007 (not c!1279746)) b!6878013))

(assert (= (or b!6878008 b!6878012) bm!626195))

(assert (= (or b!6878008 b!6878012) bm!626196))

(assert (= (or b!6878009 bm!626196) bm!626197))

(declare-fun m!7605302 () Bool)

(assert (=> bm!626195 m!7605302))

(declare-fun m!7605304 () Bool)

(assert (=> bm!626197 m!7605304))

(assert (=> b!6877773 d!2159739))

(declare-fun d!2159741 () Bool)

(declare-fun lt!2459365 () Int)

(assert (=> d!2159741 (>= lt!2459365 0)))

(declare-fun e!4145311 () Int)

(assert (=> d!2159741 (= lt!2459365 e!4145311)))

(declare-fun c!1279750 () Bool)

(assert (=> d!2159741 (= c!1279750 ((_ is Cons!66373) (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))))))

(assert (=> d!2159741 (= (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632)))))))) lt!2459365)))

(declare-fun b!6878014 () Bool)

(assert (=> b!6878014 (= e!4145311 (+ (regexDepthTotal!270 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632)))))))))) (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 zl!1632)))))))))))))))

(declare-fun b!6878015 () Bool)

(assert (=> b!6878015 (= e!4145311 1)))

(assert (= (and d!2159741 c!1279750) b!6878014))

(assert (= (and d!2159741 (not c!1279750)) b!6878015))

(declare-fun m!7605306 () Bool)

(assert (=> b!6878014 m!7605306))

(declare-fun m!7605308 () Bool)

(assert (=> b!6878014 m!7605308))

(assert (=> b!6877773 d!2159741))

(declare-fun b!6878016 () Bool)

(declare-fun e!4145312 () Int)

(assert (=> b!6878016 (= e!4145312 1)))

(declare-fun call!626204 () Int)

(declare-fun c!1279752 () Bool)

(declare-fun bm!626198 () Bool)

(assert (=> bm!626198 (= call!626204 (regexDepthTotal!270 (ite c!1279752 (regOne!33999 (ite c!1279688 (regOne!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regTwo!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))) (regTwo!33998 (ite c!1279688 (regOne!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regTwo!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))))))

(declare-fun bm!626199 () Bool)

(declare-fun call!626205 () Int)

(declare-fun call!626203 () Int)

(assert (=> bm!626199 (= call!626205 call!626203)))

(declare-fun b!6878017 () Bool)

(declare-fun e!4145314 () Int)

(declare-fun e!4145315 () Int)

(assert (=> b!6878017 (= e!4145314 e!4145315)))

(declare-fun c!1279751 () Bool)

(assert (=> b!6878017 (= c!1279751 ((_ is Concat!25588) (ite c!1279688 (regOne!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regTwo!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))))

(declare-fun b!6878018 () Bool)

(assert (=> b!6878018 (= e!4145314 (+ 1 call!626204 call!626205))))

(declare-fun d!2159743 () Bool)

(declare-fun lt!2459366 () Int)

(assert (=> d!2159743 (> lt!2459366 0)))

(assert (=> d!2159743 (= lt!2459366 e!4145312)))

(declare-fun c!1279754 () Bool)

(assert (=> d!2159743 (= c!1279754 ((_ is ElementMatch!16743) (ite c!1279688 (regOne!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regTwo!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))))

(assert (=> d!2159743 (= (regexDepthTotal!270 (ite c!1279688 (regOne!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regTwo!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))) lt!2459366)))

(declare-fun b!6878019 () Bool)

(declare-fun e!4145313 () Int)

(assert (=> b!6878019 (= e!4145313 (+ 1 call!626203))))

(declare-fun b!6878020 () Bool)

(assert (=> b!6878020 (= e!4145312 e!4145313)))

(declare-fun c!1279753 () Bool)

(assert (=> b!6878020 (= c!1279753 ((_ is Star!16743) (ite c!1279688 (regOne!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regTwo!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))))

(declare-fun b!6878021 () Bool)

(assert (=> b!6878021 (= c!1279752 ((_ is Union!16743) (ite c!1279688 (regOne!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regTwo!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))))

(assert (=> b!6878021 (= e!4145313 e!4145314)))

(declare-fun b!6878022 () Bool)

(assert (=> b!6878022 (= e!4145315 (+ 1 call!626205 call!626204))))

(declare-fun bm!626200 () Bool)

(assert (=> bm!626200 (= call!626203 (regexDepthTotal!270 (ite c!1279753 (reg!17072 (ite c!1279688 (regOne!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regTwo!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))) (ite c!1279752 (regTwo!33999 (ite c!1279688 (regOne!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regTwo!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))) (regOne!33998 (ite c!1279688 (regOne!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regTwo!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))))

(declare-fun b!6878023 () Bool)

(assert (=> b!6878023 (= e!4145315 1)))

(assert (= (and d!2159743 c!1279754) b!6878016))

(assert (= (and d!2159743 (not c!1279754)) b!6878020))

(assert (= (and b!6878020 c!1279753) b!6878019))

(assert (= (and b!6878020 (not c!1279753)) b!6878021))

(assert (= (and b!6878021 c!1279752) b!6878018))

(assert (= (and b!6878021 (not c!1279752)) b!6878017))

(assert (= (and b!6878017 c!1279751) b!6878022))

(assert (= (and b!6878017 (not c!1279751)) b!6878023))

(assert (= (or b!6878018 b!6878022) bm!626198))

(assert (= (or b!6878018 b!6878022) bm!626199))

(assert (= (or b!6878019 bm!626199) bm!626200))

(declare-fun m!7605310 () Bool)

(assert (=> bm!626198 m!7605310))

(declare-fun m!7605312 () Bool)

(assert (=> bm!626200 m!7605312))

(assert (=> bm!626147 d!2159743))

(declare-fun b!6878024 () Bool)

(declare-fun e!4145316 () Int)

(assert (=> b!6878024 (= e!4145316 1)))

(declare-fun c!1279756 () Bool)

(declare-fun call!626207 () Int)

(declare-fun bm!626201 () Bool)

(assert (=> bm!626201 (= call!626207 (regexDepthTotal!270 (ite c!1279756 (regOne!33999 (ite c!1279713 (regOne!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regTwo!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))) (regTwo!33998 (ite c!1279713 (regOne!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regTwo!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))))))

(declare-fun bm!626202 () Bool)

(declare-fun call!626208 () Int)

(declare-fun call!626206 () Int)

(assert (=> bm!626202 (= call!626208 call!626206)))

(declare-fun b!6878025 () Bool)

(declare-fun e!4145318 () Int)

(declare-fun e!4145319 () Int)

(assert (=> b!6878025 (= e!4145318 e!4145319)))

(declare-fun c!1279755 () Bool)

(assert (=> b!6878025 (= c!1279755 ((_ is Concat!25588) (ite c!1279713 (regOne!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regTwo!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))))

(declare-fun b!6878026 () Bool)

(assert (=> b!6878026 (= e!4145318 (+ 1 call!626207 call!626208))))

(declare-fun d!2159745 () Bool)

(declare-fun lt!2459367 () Int)

(assert (=> d!2159745 (> lt!2459367 0)))

(assert (=> d!2159745 (= lt!2459367 e!4145316)))

(declare-fun c!1279758 () Bool)

(assert (=> d!2159745 (= c!1279758 ((_ is ElementMatch!16743) (ite c!1279713 (regOne!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regTwo!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))))

(assert (=> d!2159745 (= (regexDepthTotal!270 (ite c!1279713 (regOne!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regTwo!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))) lt!2459367)))

(declare-fun b!6878027 () Bool)

(declare-fun e!4145317 () Int)

(assert (=> b!6878027 (= e!4145317 (+ 1 call!626206))))

(declare-fun b!6878028 () Bool)

(assert (=> b!6878028 (= e!4145316 e!4145317)))

(declare-fun c!1279757 () Bool)

(assert (=> b!6878028 (= c!1279757 ((_ is Star!16743) (ite c!1279713 (regOne!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regTwo!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))))

(declare-fun b!6878029 () Bool)

(assert (=> b!6878029 (= c!1279756 ((_ is Union!16743) (ite c!1279713 (regOne!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regTwo!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))))

(assert (=> b!6878029 (= e!4145317 e!4145318)))

(declare-fun b!6878030 () Bool)

(assert (=> b!6878030 (= e!4145319 (+ 1 call!626208 call!626207))))

(declare-fun bm!626203 () Bool)

(assert (=> bm!626203 (= call!626206 (regexDepthTotal!270 (ite c!1279757 (reg!17072 (ite c!1279713 (regOne!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regTwo!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))) (ite c!1279756 (regTwo!33999 (ite c!1279713 (regOne!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regTwo!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))) (regOne!33998 (ite c!1279713 (regOne!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regTwo!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))))))))))

(declare-fun b!6878031 () Bool)

(assert (=> b!6878031 (= e!4145319 1)))

(assert (= (and d!2159745 c!1279758) b!6878024))

(assert (= (and d!2159745 (not c!1279758)) b!6878028))

(assert (= (and b!6878028 c!1279757) b!6878027))

(assert (= (and b!6878028 (not c!1279757)) b!6878029))

(assert (= (and b!6878029 c!1279756) b!6878026))

(assert (= (and b!6878029 (not c!1279756)) b!6878025))

(assert (= (and b!6878025 c!1279755) b!6878030))

(assert (= (and b!6878025 (not c!1279755)) b!6878031))

(assert (= (or b!6878026 b!6878030) bm!626201))

(assert (= (or b!6878026 b!6878030) bm!626202))

(assert (= (or b!6878027 bm!626202) bm!626203))

(declare-fun m!7605314 () Bool)

(assert (=> bm!626201 m!7605314))

(declare-fun m!7605316 () Bool)

(assert (=> bm!626203 m!7605316))

(assert (=> bm!626168 d!2159745))

(declare-fun b!6878032 () Bool)

(declare-fun e!4145320 () Int)

(assert (=> b!6878032 (= e!4145320 1)))

(declare-fun bm!626204 () Bool)

(declare-fun call!626210 () Int)

(declare-fun c!1279760 () Bool)

(assert (=> bm!626204 (= call!626210 (regexDepthTotal!270 (ite c!1279760 (regOne!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))) (regTwo!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))))

(declare-fun bm!626205 () Bool)

(declare-fun call!626211 () Int)

(declare-fun call!626209 () Int)

(assert (=> bm!626205 (= call!626211 call!626209)))

(declare-fun b!6878033 () Bool)

(declare-fun e!4145322 () Int)

(declare-fun e!4145323 () Int)

(assert (=> b!6878033 (= e!4145322 e!4145323)))

(declare-fun c!1279759 () Bool)

(assert (=> b!6878033 (= c!1279759 ((_ is Concat!25588) (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))

(declare-fun b!6878034 () Bool)

(assert (=> b!6878034 (= e!4145322 (+ 1 call!626210 call!626211))))

(declare-fun d!2159747 () Bool)

(declare-fun lt!2459368 () Int)

(assert (=> d!2159747 (> lt!2459368 0)))

(assert (=> d!2159747 (= lt!2459368 e!4145320)))

(declare-fun c!1279762 () Bool)

(assert (=> d!2159747 (= c!1279762 ((_ is ElementMatch!16743) (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))

(assert (=> d!2159747 (= (regexDepthTotal!270 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))) lt!2459368)))

(declare-fun b!6878035 () Bool)

(declare-fun e!4145321 () Int)

(assert (=> b!6878035 (= e!4145321 (+ 1 call!626209))))

(declare-fun b!6878036 () Bool)

(assert (=> b!6878036 (= e!4145320 e!4145321)))

(declare-fun c!1279761 () Bool)

(assert (=> b!6878036 (= c!1279761 ((_ is Star!16743) (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))

(declare-fun b!6878037 () Bool)

(assert (=> b!6878037 (= c!1279760 ((_ is Union!16743) (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))

(assert (=> b!6878037 (= e!4145321 e!4145322)))

(declare-fun b!6878038 () Bool)

(assert (=> b!6878038 (= e!4145323 (+ 1 call!626211 call!626210))))

(declare-fun bm!626206 () Bool)

(assert (=> bm!626206 (= call!626209 (regexDepthTotal!270 (ite c!1279761 (reg!17072 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))) (ite c!1279760 (regTwo!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))) (regOne!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))))))))

(declare-fun b!6878039 () Bool)

(assert (=> b!6878039 (= e!4145323 1)))

(assert (= (and d!2159747 c!1279762) b!6878032))

(assert (= (and d!2159747 (not c!1279762)) b!6878036))

(assert (= (and b!6878036 c!1279761) b!6878035))

(assert (= (and b!6878036 (not c!1279761)) b!6878037))

(assert (= (and b!6878037 c!1279760) b!6878034))

(assert (= (and b!6878037 (not c!1279760)) b!6878033))

(assert (= (and b!6878033 c!1279759) b!6878038))

(assert (= (and b!6878033 (not c!1279759)) b!6878039))

(assert (= (or b!6878034 b!6878038) bm!626204))

(assert (= (or b!6878034 b!6878038) bm!626205))

(assert (= (or b!6878035 bm!626205) bm!626206))

(declare-fun m!7605318 () Bool)

(assert (=> bm!626204 m!7605318))

(declare-fun m!7605320 () Bool)

(assert (=> bm!626206 m!7605320))

(assert (=> b!6877724 d!2159747))

(declare-fun d!2159749 () Bool)

(declare-fun lt!2459369 () Int)

(assert (=> d!2159749 (>= lt!2459369 0)))

(declare-fun e!4145324 () Int)

(assert (=> d!2159749 (= lt!2459369 e!4145324)))

(declare-fun c!1279763 () Bool)

(assert (=> d!2159749 (= c!1279763 ((_ is Cons!66373) (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))))

(assert (=> d!2159749 (= (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))) lt!2459369)))

(declare-fun b!6878040 () Bool)

(assert (=> b!6878040 (= e!4145324 (+ (regexDepthTotal!270 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))))) (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))))))))))

(declare-fun b!6878041 () Bool)

(assert (=> b!6878041 (= e!4145324 1)))

(assert (= (and d!2159749 c!1279763) b!6878040))

(assert (= (and d!2159749 (not c!1279763)) b!6878041))

(declare-fun m!7605322 () Bool)

(assert (=> b!6878040 m!7605322))

(declare-fun m!7605324 () Bool)

(assert (=> b!6878040 m!7605324))

(assert (=> b!6877724 d!2159749))

(declare-fun b!6878042 () Bool)

(declare-fun e!4145325 () Int)

(assert (=> b!6878042 (= e!4145325 1)))

(declare-fun call!626213 () Int)

(declare-fun c!1279765 () Bool)

(declare-fun bm!626207 () Bool)

(assert (=> bm!626207 (= call!626213 (regexDepthTotal!270 (ite c!1279765 (regOne!33999 (ite c!1279693 (regOne!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regTwo!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))) (regTwo!33998 (ite c!1279693 (regOne!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regTwo!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))))))

(declare-fun bm!626208 () Bool)

(declare-fun call!626214 () Int)

(declare-fun call!626212 () Int)

(assert (=> bm!626208 (= call!626214 call!626212)))

(declare-fun b!6878043 () Bool)

(declare-fun e!4145327 () Int)

(declare-fun e!4145328 () Int)

(assert (=> b!6878043 (= e!4145327 e!4145328)))

(declare-fun c!1279764 () Bool)

(assert (=> b!6878043 (= c!1279764 ((_ is Concat!25588) (ite c!1279693 (regOne!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regTwo!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))))

(declare-fun b!6878044 () Bool)

(assert (=> b!6878044 (= e!4145327 (+ 1 call!626213 call!626214))))

(declare-fun d!2159751 () Bool)

(declare-fun lt!2459370 () Int)

(assert (=> d!2159751 (> lt!2459370 0)))

(assert (=> d!2159751 (= lt!2459370 e!4145325)))

(declare-fun c!1279767 () Bool)

(assert (=> d!2159751 (= c!1279767 ((_ is ElementMatch!16743) (ite c!1279693 (regOne!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regTwo!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))))

(assert (=> d!2159751 (= (regexDepthTotal!270 (ite c!1279693 (regOne!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regTwo!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))) lt!2459370)))

(declare-fun b!6878045 () Bool)

(declare-fun e!4145326 () Int)

(assert (=> b!6878045 (= e!4145326 (+ 1 call!626212))))

(declare-fun b!6878046 () Bool)

(assert (=> b!6878046 (= e!4145325 e!4145326)))

(declare-fun c!1279766 () Bool)

(assert (=> b!6878046 (= c!1279766 ((_ is Star!16743) (ite c!1279693 (regOne!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regTwo!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))))

(declare-fun b!6878047 () Bool)

(assert (=> b!6878047 (= c!1279765 ((_ is Union!16743) (ite c!1279693 (regOne!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regTwo!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))))

(assert (=> b!6878047 (= e!4145326 e!4145327)))

(declare-fun b!6878048 () Bool)

(assert (=> b!6878048 (= e!4145328 (+ 1 call!626214 call!626213))))

(declare-fun bm!626209 () Bool)

(assert (=> bm!626209 (= call!626212 (regexDepthTotal!270 (ite c!1279766 (reg!17072 (ite c!1279693 (regOne!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regTwo!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))) (ite c!1279765 (regTwo!33999 (ite c!1279693 (regOne!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regTwo!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))) (regOne!33998 (ite c!1279693 (regOne!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regTwo!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978))))))))))))))

(declare-fun b!6878049 () Bool)

(assert (=> b!6878049 (= e!4145328 1)))

(assert (= (and d!2159751 c!1279767) b!6878042))

(assert (= (and d!2159751 (not c!1279767)) b!6878046))

(assert (= (and b!6878046 c!1279766) b!6878045))

(assert (= (and b!6878046 (not c!1279766)) b!6878047))

(assert (= (and b!6878047 c!1279765) b!6878044))

(assert (= (and b!6878047 (not c!1279765)) b!6878043))

(assert (= (and b!6878043 c!1279764) b!6878048))

(assert (= (and b!6878043 (not c!1279764)) b!6878049))

(assert (= (or b!6878044 b!6878048) bm!626207))

(assert (= (or b!6878044 b!6878048) bm!626208))

(assert (= (or b!6878045 bm!626208) bm!626209))

(declare-fun m!7605326 () Bool)

(assert (=> bm!626207 m!7605326))

(declare-fun m!7605328 () Bool)

(assert (=> bm!626209 m!7605328))

(assert (=> bm!626150 d!2159751))

(declare-fun d!2159753 () Bool)

(declare-fun res!2804227 () Bool)

(declare-fun e!4145329 () Bool)

(assert (=> d!2159753 (=> res!2804227 e!4145329)))

(assert (=> d!2159753 (= res!2804227 ((_ is Nil!66373) (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632))))))))

(assert (=> d!2159753 (= (forall!15934 (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632)))) lambda!389359) e!4145329)))

(declare-fun b!6878050 () Bool)

(declare-fun e!4145330 () Bool)

(assert (=> b!6878050 (= e!4145329 e!4145330)))

(declare-fun res!2804228 () Bool)

(assert (=> b!6878050 (=> (not res!2804228) (not e!4145330))))

(assert (=> b!6878050 (= res!2804228 (dynLambda!26569 lambda!389359 (h!72821 (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632)))))))))

(declare-fun b!6878051 () Bool)

(assert (=> b!6878051 (= e!4145330 (forall!15934 (t!380240 (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632))))) lambda!389359))))

(assert (= (and d!2159753 (not res!2804227)) b!6878050))

(assert (= (and b!6878050 res!2804228) b!6878051))

(declare-fun b_lambda!260313 () Bool)

(assert (=> (not b_lambda!260313) (not b!6878050)))

(declare-fun m!7605330 () Bool)

(assert (=> b!6878050 m!7605330))

(declare-fun m!7605332 () Bool)

(assert (=> b!6878051 m!7605332))

(assert (=> d!2159689 d!2159753))

(declare-fun d!2159755 () Bool)

(declare-fun nullableFct!2535 (Regex!16743) Bool)

(assert (=> d!2159755 (= (nullable!6667 (reg!17072 (h!72821 (exprs!6627 c!9978)))) (nullableFct!2535 (reg!17072 (h!72821 (exprs!6627 c!9978)))))))

(declare-fun bs!1837942 () Bool)

(assert (= bs!1837942 d!2159755))

(declare-fun m!7605334 () Bool)

(assert (=> bs!1837942 m!7605334))

(assert (=> b!6877788 d!2159755))

(declare-fun bs!1837943 () Bool)

(declare-fun d!2159757 () Bool)

(assert (= bs!1837943 (and d!2159757 d!2159583)))

(declare-fun lambda!389361 () Int)

(assert (=> bs!1837943 (= lambda!389361 lambda!389351)))

(declare-fun bs!1837944 () Bool)

(assert (= bs!1837944 (and d!2159757 d!2159589)))

(assert (=> bs!1837944 (= lambda!389361 lambda!389352)))

(declare-fun bs!1837945 () Bool)

(assert (= bs!1837945 (and d!2159757 d!2159609)))

(assert (=> bs!1837945 (= lambda!389361 lambda!389357)))

(declare-fun bs!1837946 () Bool)

(assert (= bs!1837946 (and d!2159757 d!2159689)))

(assert (=> bs!1837946 (= lambda!389361 lambda!389359)))

(assert (=> d!2159757 (= (inv!85104 (h!72822 (t!380241 (t!380241 (t!380241 zl!1632))))) (forall!15934 (exprs!6627 (h!72822 (t!380241 (t!380241 (t!380241 zl!1632))))) lambda!389361))))

(declare-fun bs!1837947 () Bool)

(assert (= bs!1837947 d!2159757))

(declare-fun m!7605336 () Bool)

(assert (=> bs!1837947 m!7605336))

(assert (=> b!6877850 d!2159757))

(declare-fun d!2159759 () Bool)

(assert (=> d!2159759 (= (nullable!6667 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))) (nullableFct!2535 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))

(declare-fun bs!1837948 () Bool)

(assert (= bs!1837948 d!2159759))

(declare-fun m!7605338 () Bool)

(assert (=> bs!1837948 m!7605338))

(assert (=> b!6877757 d!2159759))

(declare-fun b!6878052 () Bool)

(declare-fun e!4145334 () Bool)

(declare-fun call!626216 () Bool)

(assert (=> b!6878052 (= e!4145334 call!626216)))

(declare-fun bm!626210 () Bool)

(declare-fun call!626217 () Bool)

(declare-fun call!626215 () Bool)

(assert (=> bm!626210 (= call!626217 call!626215)))

(declare-fun b!6878053 () Bool)

(declare-fun res!2804229 () Bool)

(declare-fun e!4145332 () Bool)

(assert (=> b!6878053 (=> (not res!2804229) (not e!4145332))))

(assert (=> b!6878053 (= res!2804229 call!626217)))

(declare-fun e!4145336 () Bool)

(assert (=> b!6878053 (= e!4145336 e!4145332)))

(declare-fun b!6878054 () Bool)

(declare-fun e!4145331 () Bool)

(assert (=> b!6878054 (= e!4145331 call!626215)))

(declare-fun b!6878055 () Bool)

(declare-fun e!4145335 () Bool)

(declare-fun e!4145333 () Bool)

(assert (=> b!6878055 (= e!4145335 e!4145333)))

(declare-fun c!1279769 () Bool)

(assert (=> b!6878055 (= c!1279769 ((_ is Star!16743) (ite c!1279710 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))

(declare-fun b!6878056 () Bool)

(declare-fun res!2804232 () Bool)

(declare-fun e!4145337 () Bool)

(assert (=> b!6878056 (=> res!2804232 e!4145337)))

(assert (=> b!6878056 (= res!2804232 (not ((_ is Concat!25588) (ite c!1279710 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))))))

(assert (=> b!6878056 (= e!4145336 e!4145337)))

(declare-fun bm!626211 () Bool)

(declare-fun c!1279768 () Bool)

(assert (=> bm!626211 (= call!626215 (validRegex!8456 (ite c!1279769 (reg!17072 (ite c!1279710 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (ite c!1279768 (regOne!33999 (ite c!1279710 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regOne!33998 (ite c!1279710 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))))))))

(declare-fun bm!626212 () Bool)

(assert (=> bm!626212 (= call!626216 (validRegex!8456 (ite c!1279768 (regTwo!33999 (ite c!1279710 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regTwo!33998 (ite c!1279710 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))))

(declare-fun b!6878057 () Bool)

(assert (=> b!6878057 (= e!4145333 e!4145331)))

(declare-fun res!2804231 () Bool)

(assert (=> b!6878057 (= res!2804231 (not (nullable!6667 (reg!17072 (ite c!1279710 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))))

(assert (=> b!6878057 (=> (not res!2804231) (not e!4145331))))

(declare-fun d!2159761 () Bool)

(declare-fun res!2804233 () Bool)

(assert (=> d!2159761 (=> res!2804233 e!4145335)))

(assert (=> d!2159761 (= res!2804233 ((_ is ElementMatch!16743) (ite c!1279710 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))

(assert (=> d!2159761 (= (validRegex!8456 (ite c!1279710 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) e!4145335)))

(declare-fun b!6878058 () Bool)

(assert (=> b!6878058 (= e!4145333 e!4145336)))

(assert (=> b!6878058 (= c!1279768 ((_ is Union!16743) (ite c!1279710 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))

(declare-fun b!6878059 () Bool)

(assert (=> b!6878059 (= e!4145337 e!4145334)))

(declare-fun res!2804230 () Bool)

(assert (=> b!6878059 (=> (not res!2804230) (not e!4145334))))

(assert (=> b!6878059 (= res!2804230 call!626217)))

(declare-fun b!6878060 () Bool)

(assert (=> b!6878060 (= e!4145332 call!626216)))

(assert (= (and d!2159761 (not res!2804233)) b!6878055))

(assert (= (and b!6878055 c!1279769) b!6878057))

(assert (= (and b!6878055 (not c!1279769)) b!6878058))

(assert (= (and b!6878057 res!2804231) b!6878054))

(assert (= (and b!6878058 c!1279768) b!6878053))

(assert (= (and b!6878058 (not c!1279768)) b!6878056))

(assert (= (and b!6878053 res!2804229) b!6878060))

(assert (= (and b!6878056 (not res!2804232)) b!6878059))

(assert (= (and b!6878059 res!2804230) b!6878052))

(assert (= (or b!6878060 b!6878052) bm!626212))

(assert (= (or b!6878053 b!6878059) bm!626210))

(assert (= (or b!6878054 bm!626210) bm!626211))

(declare-fun m!7605340 () Bool)

(assert (=> bm!626211 m!7605340))

(declare-fun m!7605342 () Bool)

(assert (=> bm!626212 m!7605342))

(declare-fun m!7605344 () Bool)

(assert (=> b!6878057 m!7605344))

(assert (=> bm!626167 d!2159761))

(declare-fun b!6878061 () Bool)

(declare-fun e!4145341 () Bool)

(declare-fun call!626219 () Bool)

(assert (=> b!6878061 (= e!4145341 call!626219)))

(declare-fun bm!626213 () Bool)

(declare-fun call!626220 () Bool)

(declare-fun call!626218 () Bool)

(assert (=> bm!626213 (= call!626220 call!626218)))

(declare-fun b!6878062 () Bool)

(declare-fun res!2804234 () Bool)

(declare-fun e!4145339 () Bool)

(assert (=> b!6878062 (=> (not res!2804234) (not e!4145339))))

(assert (=> b!6878062 (= res!2804234 call!626220)))

(declare-fun e!4145343 () Bool)

(assert (=> b!6878062 (= e!4145343 e!4145339)))

(declare-fun b!6878063 () Bool)

(declare-fun e!4145338 () Bool)

(assert (=> b!6878063 (= e!4145338 call!626218)))

(declare-fun b!6878064 () Bool)

(declare-fun e!4145342 () Bool)

(declare-fun e!4145340 () Bool)

(assert (=> b!6878064 (= e!4145342 e!4145340)))

(declare-fun c!1279771 () Bool)

(assert (=> b!6878064 (= c!1279771 ((_ is Star!16743) (ite c!1279700 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))

(declare-fun b!6878065 () Bool)

(declare-fun res!2804237 () Bool)

(declare-fun e!4145344 () Bool)

(assert (=> b!6878065 (=> res!2804237 e!4145344)))

(assert (=> b!6878065 (= res!2804237 (not ((_ is Concat!25588) (ite c!1279700 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))

(assert (=> b!6878065 (= e!4145343 e!4145344)))

(declare-fun bm!626214 () Bool)

(declare-fun c!1279770 () Bool)

(assert (=> bm!626214 (= call!626218 (validRegex!8456 (ite c!1279771 (reg!17072 (ite c!1279700 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) (ite c!1279770 (regOne!33999 (ite c!1279700 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) (regOne!33998 (ite c!1279700 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))))

(declare-fun bm!626215 () Bool)

(assert (=> bm!626215 (= call!626219 (validRegex!8456 (ite c!1279770 (regTwo!33999 (ite c!1279700 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) (regTwo!33998 (ite c!1279700 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))))

(declare-fun b!6878066 () Bool)

(assert (=> b!6878066 (= e!4145340 e!4145338)))

(declare-fun res!2804236 () Bool)

(assert (=> b!6878066 (= res!2804236 (not (nullable!6667 (reg!17072 (ite c!1279700 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))))

(assert (=> b!6878066 (=> (not res!2804236) (not e!4145338))))

(declare-fun d!2159763 () Bool)

(declare-fun res!2804238 () Bool)

(assert (=> d!2159763 (=> res!2804238 e!4145342)))

(assert (=> d!2159763 (= res!2804238 ((_ is ElementMatch!16743) (ite c!1279700 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))

(assert (=> d!2159763 (= (validRegex!8456 (ite c!1279700 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) e!4145342)))

(declare-fun b!6878067 () Bool)

(assert (=> b!6878067 (= e!4145340 e!4145343)))

(assert (=> b!6878067 (= c!1279770 ((_ is Union!16743) (ite c!1279700 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))

(declare-fun b!6878068 () Bool)

(assert (=> b!6878068 (= e!4145344 e!4145341)))

(declare-fun res!2804235 () Bool)

(assert (=> b!6878068 (=> (not res!2804235) (not e!4145341))))

(assert (=> b!6878068 (= res!2804235 call!626220)))

(declare-fun b!6878069 () Bool)

(assert (=> b!6878069 (= e!4145339 call!626219)))

(assert (= (and d!2159763 (not res!2804238)) b!6878064))

(assert (= (and b!6878064 c!1279771) b!6878066))

(assert (= (and b!6878064 (not c!1279771)) b!6878067))

(assert (= (and b!6878066 res!2804236) b!6878063))

(assert (= (and b!6878067 c!1279770) b!6878062))

(assert (= (and b!6878067 (not c!1279770)) b!6878065))

(assert (= (and b!6878062 res!2804234) b!6878069))

(assert (= (and b!6878065 (not res!2804237)) b!6878068))

(assert (= (and b!6878068 res!2804235) b!6878061))

(assert (= (or b!6878069 b!6878061) bm!626215))

(assert (= (or b!6878062 b!6878068) bm!626213))

(assert (= (or b!6878063 bm!626213) bm!626214))

(declare-fun m!7605346 () Bool)

(assert (=> bm!626214 m!7605346))

(declare-fun m!7605348 () Bool)

(assert (=> bm!626215 m!7605348))

(declare-fun m!7605350 () Bool)

(assert (=> b!6878066 m!7605350))

(assert (=> bm!626161 d!2159763))

(declare-fun b!6878070 () Bool)

(declare-fun e!4145348 () Bool)

(declare-fun call!626222 () Bool)

(assert (=> b!6878070 (= e!4145348 call!626222)))

(declare-fun bm!626216 () Bool)

(declare-fun call!626223 () Bool)

(declare-fun call!626221 () Bool)

(assert (=> bm!626216 (= call!626223 call!626221)))

(declare-fun b!6878071 () Bool)

(declare-fun res!2804239 () Bool)

(declare-fun e!4145346 () Bool)

(assert (=> b!6878071 (=> (not res!2804239) (not e!4145346))))

(assert (=> b!6878071 (= res!2804239 call!626223)))

(declare-fun e!4145350 () Bool)

(assert (=> b!6878071 (= e!4145350 e!4145346)))

(declare-fun b!6878072 () Bool)

(declare-fun e!4145345 () Bool)

(assert (=> b!6878072 (= e!4145345 call!626221)))

(declare-fun b!6878073 () Bool)

(declare-fun e!4145349 () Bool)

(declare-fun e!4145347 () Bool)

(assert (=> b!6878073 (= e!4145349 e!4145347)))

(declare-fun c!1279773 () Bool)

(assert (=> b!6878073 (= c!1279773 ((_ is Star!16743) (h!72821 (t!380240 (exprs!6627 c!9978)))))))

(declare-fun b!6878074 () Bool)

(declare-fun res!2804242 () Bool)

(declare-fun e!4145351 () Bool)

(assert (=> b!6878074 (=> res!2804242 e!4145351)))

(assert (=> b!6878074 (= res!2804242 (not ((_ is Concat!25588) (h!72821 (t!380240 (exprs!6627 c!9978))))))))

(assert (=> b!6878074 (= e!4145350 e!4145351)))

(declare-fun bm!626217 () Bool)

(declare-fun c!1279772 () Bool)

(assert (=> bm!626217 (= call!626221 (validRegex!8456 (ite c!1279773 (reg!17072 (h!72821 (t!380240 (exprs!6627 c!9978)))) (ite c!1279772 (regOne!33999 (h!72821 (t!380240 (exprs!6627 c!9978)))) (regOne!33998 (h!72821 (t!380240 (exprs!6627 c!9978))))))))))

(declare-fun bm!626218 () Bool)

(assert (=> bm!626218 (= call!626222 (validRegex!8456 (ite c!1279772 (regTwo!33999 (h!72821 (t!380240 (exprs!6627 c!9978)))) (regTwo!33998 (h!72821 (t!380240 (exprs!6627 c!9978)))))))))

(declare-fun b!6878075 () Bool)

(assert (=> b!6878075 (= e!4145347 e!4145345)))

(declare-fun res!2804241 () Bool)

(assert (=> b!6878075 (= res!2804241 (not (nullable!6667 (reg!17072 (h!72821 (t!380240 (exprs!6627 c!9978)))))))))

(assert (=> b!6878075 (=> (not res!2804241) (not e!4145345))))

(declare-fun d!2159765 () Bool)

(declare-fun res!2804243 () Bool)

(assert (=> d!2159765 (=> res!2804243 e!4145349)))

(assert (=> d!2159765 (= res!2804243 ((_ is ElementMatch!16743) (h!72821 (t!380240 (exprs!6627 c!9978)))))))

(assert (=> d!2159765 (= (validRegex!8456 (h!72821 (t!380240 (exprs!6627 c!9978)))) e!4145349)))

(declare-fun b!6878076 () Bool)

(assert (=> b!6878076 (= e!4145347 e!4145350)))

(assert (=> b!6878076 (= c!1279772 ((_ is Union!16743) (h!72821 (t!380240 (exprs!6627 c!9978)))))))

(declare-fun b!6878077 () Bool)

(assert (=> b!6878077 (= e!4145351 e!4145348)))

(declare-fun res!2804240 () Bool)

(assert (=> b!6878077 (=> (not res!2804240) (not e!4145348))))

(assert (=> b!6878077 (= res!2804240 call!626223)))

(declare-fun b!6878078 () Bool)

(assert (=> b!6878078 (= e!4145346 call!626222)))

(assert (= (and d!2159765 (not res!2804243)) b!6878073))

(assert (= (and b!6878073 c!1279773) b!6878075))

(assert (= (and b!6878073 (not c!1279773)) b!6878076))

(assert (= (and b!6878075 res!2804241) b!6878072))

(assert (= (and b!6878076 c!1279772) b!6878071))

(assert (= (and b!6878076 (not c!1279772)) b!6878074))

(assert (= (and b!6878071 res!2804239) b!6878078))

(assert (= (and b!6878074 (not res!2804242)) b!6878077))

(assert (= (and b!6878077 res!2804240) b!6878070))

(assert (= (or b!6878078 b!6878070) bm!626218))

(assert (= (or b!6878071 b!6878077) bm!626216))

(assert (= (or b!6878072 bm!626216) bm!626217))

(declare-fun m!7605352 () Bool)

(assert (=> bm!626217 m!7605352))

(declare-fun m!7605354 () Bool)

(assert (=> bm!626218 m!7605354))

(declare-fun m!7605356 () Bool)

(assert (=> b!6878075 m!7605356))

(assert (=> bs!1837934 d!2159765))

(declare-fun d!2159767 () Bool)

(declare-fun res!2804244 () Bool)

(declare-fun e!4145352 () Bool)

(assert (=> d!2159767 (=> res!2804244 e!4145352)))

(assert (=> d!2159767 (= res!2804244 ((_ is Nil!66373) (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))

(assert (=> d!2159767 (= (forall!15934 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632)))) lambda!389357) e!4145352)))

(declare-fun b!6878079 () Bool)

(declare-fun e!4145353 () Bool)

(assert (=> b!6878079 (= e!4145352 e!4145353)))

(declare-fun res!2804245 () Bool)

(assert (=> b!6878079 (=> (not res!2804245) (not e!4145353))))

(assert (=> b!6878079 (= res!2804245 (dynLambda!26569 lambda!389357 (h!72821 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632)))))))))

(declare-fun b!6878080 () Bool)

(assert (=> b!6878080 (= e!4145353 (forall!15934 (t!380240 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632))))) lambda!389357))))

(assert (= (and d!2159767 (not res!2804244)) b!6878079))

(assert (= (and b!6878079 res!2804245) b!6878080))

(declare-fun b_lambda!260315 () Bool)

(assert (=> (not b_lambda!260315) (not b!6878079)))

(declare-fun m!7605358 () Bool)

(assert (=> b!6878079 m!7605358))

(declare-fun m!7605360 () Bool)

(assert (=> b!6878080 m!7605360))

(assert (=> b!6877780 d!2159767))

(declare-fun b!6878081 () Bool)

(declare-fun e!4145357 () Bool)

(declare-fun call!626225 () Bool)

(assert (=> b!6878081 (= e!4145357 call!626225)))

(declare-fun bm!626219 () Bool)

(declare-fun call!626226 () Bool)

(declare-fun call!626224 () Bool)

(assert (=> bm!626219 (= call!626226 call!626224)))

(declare-fun b!6878082 () Bool)

(declare-fun res!2804246 () Bool)

(declare-fun e!4145355 () Bool)

(assert (=> b!6878082 (=> (not res!2804246) (not e!4145355))))

(assert (=> b!6878082 (= res!2804246 call!626226)))

(declare-fun e!4145359 () Bool)

(assert (=> b!6878082 (= e!4145359 e!4145355)))

(declare-fun b!6878083 () Bool)

(declare-fun e!4145354 () Bool)

(assert (=> b!6878083 (= e!4145354 call!626224)))

(declare-fun b!6878084 () Bool)

(declare-fun e!4145358 () Bool)

(declare-fun e!4145356 () Bool)

(assert (=> b!6878084 (= e!4145358 e!4145356)))

(declare-fun c!1279775 () Bool)

(assert (=> b!6878084 (= c!1279775 ((_ is Star!16743) (ite c!1279711 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279710 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))

(declare-fun b!6878085 () Bool)

(declare-fun res!2804249 () Bool)

(declare-fun e!4145360 () Bool)

(assert (=> b!6878085 (=> res!2804249 e!4145360)))

(assert (=> b!6878085 (= res!2804249 (not ((_ is Concat!25588) (ite c!1279711 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279710 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978))))))))))

(assert (=> b!6878085 (= e!4145359 e!4145360)))

(declare-fun bm!626220 () Bool)

(declare-fun c!1279774 () Bool)

(assert (=> bm!626220 (= call!626224 (validRegex!8456 (ite c!1279775 (reg!17072 (ite c!1279711 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279710 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (ite c!1279774 (regOne!33999 (ite c!1279711 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279710 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regOne!33998 (ite c!1279711 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279710 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978))))))))))))

(declare-fun bm!626221 () Bool)

(assert (=> bm!626221 (= call!626225 (validRegex!8456 (ite c!1279774 (regTwo!33999 (ite c!1279711 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279710 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regTwo!33998 (ite c!1279711 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279710 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))))

(declare-fun b!6878086 () Bool)

(assert (=> b!6878086 (= e!4145356 e!4145354)))

(declare-fun res!2804248 () Bool)

(assert (=> b!6878086 (= res!2804248 (not (nullable!6667 (reg!17072 (ite c!1279711 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279710 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))))

(assert (=> b!6878086 (=> (not res!2804248) (not e!4145354))))

(declare-fun d!2159769 () Bool)

(declare-fun res!2804250 () Bool)

(assert (=> d!2159769 (=> res!2804250 e!4145358)))

(assert (=> d!2159769 (= res!2804250 ((_ is ElementMatch!16743) (ite c!1279711 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279710 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))

(assert (=> d!2159769 (= (validRegex!8456 (ite c!1279711 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279710 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) e!4145358)))

(declare-fun b!6878087 () Bool)

(assert (=> b!6878087 (= e!4145356 e!4145359)))

(assert (=> b!6878087 (= c!1279774 ((_ is Union!16743) (ite c!1279711 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279710 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))

(declare-fun b!6878088 () Bool)

(assert (=> b!6878088 (= e!4145360 e!4145357)))

(declare-fun res!2804247 () Bool)

(assert (=> b!6878088 (=> (not res!2804247) (not e!4145357))))

(assert (=> b!6878088 (= res!2804247 call!626226)))

(declare-fun b!6878089 () Bool)

(assert (=> b!6878089 (= e!4145355 call!626225)))

(assert (= (and d!2159769 (not res!2804250)) b!6878084))

(assert (= (and b!6878084 c!1279775) b!6878086))

(assert (= (and b!6878084 (not c!1279775)) b!6878087))

(assert (= (and b!6878086 res!2804248) b!6878083))

(assert (= (and b!6878087 c!1279774) b!6878082))

(assert (= (and b!6878087 (not c!1279774)) b!6878085))

(assert (= (and b!6878082 res!2804246) b!6878089))

(assert (= (and b!6878085 (not res!2804249)) b!6878088))

(assert (= (and b!6878088 res!2804247) b!6878081))

(assert (= (or b!6878089 b!6878081) bm!626221))

(assert (= (or b!6878082 b!6878088) bm!626219))

(assert (= (or b!6878083 bm!626219) bm!626220))

(declare-fun m!7605362 () Bool)

(assert (=> bm!626220 m!7605362))

(declare-fun m!7605364 () Bool)

(assert (=> bm!626221 m!7605364))

(declare-fun m!7605366 () Bool)

(assert (=> b!6878086 m!7605366))

(assert (=> bm!626166 d!2159769))

(declare-fun b!6878090 () Bool)

(declare-fun e!4145364 () Bool)

(declare-fun call!626228 () Bool)

(assert (=> b!6878090 (= e!4145364 call!626228)))

(declare-fun bm!626222 () Bool)

(declare-fun call!626229 () Bool)

(declare-fun call!626227 () Bool)

(assert (=> bm!626222 (= call!626229 call!626227)))

(declare-fun b!6878091 () Bool)

(declare-fun res!2804251 () Bool)

(declare-fun e!4145362 () Bool)

(assert (=> b!6878091 (=> (not res!2804251) (not e!4145362))))

(assert (=> b!6878091 (= res!2804251 call!626229)))

(declare-fun e!4145366 () Bool)

(assert (=> b!6878091 (= e!4145366 e!4145362)))

(declare-fun b!6878092 () Bool)

(declare-fun e!4145361 () Bool)

(assert (=> b!6878092 (= e!4145361 call!626227)))

(declare-fun b!6878093 () Bool)

(declare-fun e!4145365 () Bool)

(declare-fun e!4145363 () Bool)

(assert (=> b!6878093 (= e!4145365 e!4145363)))

(declare-fun c!1279777 () Bool)

(assert (=> b!6878093 (= c!1279777 ((_ is Star!16743) (ite c!1279701 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279700 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))

(declare-fun b!6878094 () Bool)

(declare-fun res!2804254 () Bool)

(declare-fun e!4145367 () Bool)

(assert (=> b!6878094 (=> res!2804254 e!4145367)))

(assert (=> b!6878094 (= res!2804254 (not ((_ is Concat!25588) (ite c!1279701 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279700 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))))

(assert (=> b!6878094 (= e!4145366 e!4145367)))

(declare-fun c!1279776 () Bool)

(declare-fun bm!626223 () Bool)

(assert (=> bm!626223 (= call!626227 (validRegex!8456 (ite c!1279777 (reg!17072 (ite c!1279701 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279700 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) (ite c!1279776 (regOne!33999 (ite c!1279701 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279700 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) (regOne!33998 (ite c!1279701 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279700 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))))))

(declare-fun bm!626224 () Bool)

(assert (=> bm!626224 (= call!626228 (validRegex!8456 (ite c!1279776 (regTwo!33999 (ite c!1279701 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279700 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) (regTwo!33998 (ite c!1279701 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279700 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))))

(declare-fun b!6878095 () Bool)

(assert (=> b!6878095 (= e!4145363 e!4145361)))

(declare-fun res!2804253 () Bool)

(assert (=> b!6878095 (= res!2804253 (not (nullable!6667 (reg!17072 (ite c!1279701 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279700 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))))

(assert (=> b!6878095 (=> (not res!2804253) (not e!4145361))))

(declare-fun d!2159771 () Bool)

(declare-fun res!2804255 () Bool)

(assert (=> d!2159771 (=> res!2804255 e!4145365)))

(assert (=> d!2159771 (= res!2804255 ((_ is ElementMatch!16743) (ite c!1279701 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279700 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))

(assert (=> d!2159771 (= (validRegex!8456 (ite c!1279701 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279700 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) e!4145365)))

(declare-fun b!6878096 () Bool)

(assert (=> b!6878096 (= e!4145363 e!4145366)))

(assert (=> b!6878096 (= c!1279776 ((_ is Union!16743) (ite c!1279701 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279700 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))

(declare-fun b!6878097 () Bool)

(assert (=> b!6878097 (= e!4145367 e!4145364)))

(declare-fun res!2804252 () Bool)

(assert (=> b!6878097 (=> (not res!2804252) (not e!4145364))))

(assert (=> b!6878097 (= res!2804252 call!626229)))

(declare-fun b!6878098 () Bool)

(assert (=> b!6878098 (= e!4145362 call!626228)))

(assert (= (and d!2159771 (not res!2804255)) b!6878093))

(assert (= (and b!6878093 c!1279777) b!6878095))

(assert (= (and b!6878093 (not c!1279777)) b!6878096))

(assert (= (and b!6878095 res!2804253) b!6878092))

(assert (= (and b!6878096 c!1279776) b!6878091))

(assert (= (and b!6878096 (not c!1279776)) b!6878094))

(assert (= (and b!6878091 res!2804251) b!6878098))

(assert (= (and b!6878094 (not res!2804254)) b!6878097))

(assert (= (and b!6878097 res!2804252) b!6878090))

(assert (= (or b!6878098 b!6878090) bm!626224))

(assert (= (or b!6878091 b!6878097) bm!626222))

(assert (= (or b!6878092 bm!626222) bm!626223))

(declare-fun m!7605368 () Bool)

(assert (=> bm!626223 m!7605368))

(declare-fun m!7605370 () Bool)

(assert (=> bm!626224 m!7605370))

(declare-fun m!7605372 () Bool)

(assert (=> b!6878095 m!7605372))

(assert (=> bm!626160 d!2159771))

(declare-fun b!6878099 () Bool)

(declare-fun e!4145368 () Int)

(assert (=> b!6878099 (= e!4145368 1)))

(declare-fun call!626231 () Int)

(declare-fun bm!626225 () Bool)

(declare-fun c!1279779 () Bool)

(assert (=> bm!626225 (= call!626231 (regexDepthTotal!270 (ite c!1279779 (regOne!33999 (ite c!1279704 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279703 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) (regTwo!33998 (ite c!1279704 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279703 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))))

(declare-fun bm!626226 () Bool)

(declare-fun call!626232 () Int)

(declare-fun call!626230 () Int)

(assert (=> bm!626226 (= call!626232 call!626230)))

(declare-fun b!6878100 () Bool)

(declare-fun e!4145370 () Int)

(declare-fun e!4145371 () Int)

(assert (=> b!6878100 (= e!4145370 e!4145371)))

(declare-fun c!1279778 () Bool)

(assert (=> b!6878100 (= c!1279778 ((_ is Concat!25588) (ite c!1279704 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279703 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))

(declare-fun b!6878101 () Bool)

(assert (=> b!6878101 (= e!4145370 (+ 1 call!626231 call!626232))))

(declare-fun d!2159773 () Bool)

(declare-fun lt!2459371 () Int)

(assert (=> d!2159773 (> lt!2459371 0)))

(assert (=> d!2159773 (= lt!2459371 e!4145368)))

(declare-fun c!1279781 () Bool)

(assert (=> d!2159773 (= c!1279781 ((_ is ElementMatch!16743) (ite c!1279704 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279703 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))

(assert (=> d!2159773 (= (regexDepthTotal!270 (ite c!1279704 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279703 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) lt!2459371)))

(declare-fun b!6878102 () Bool)

(declare-fun e!4145369 () Int)

(assert (=> b!6878102 (= e!4145369 (+ 1 call!626230))))

(declare-fun b!6878103 () Bool)

(assert (=> b!6878103 (= e!4145368 e!4145369)))

(declare-fun c!1279780 () Bool)

(assert (=> b!6878103 (= c!1279780 ((_ is Star!16743) (ite c!1279704 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279703 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))

(declare-fun b!6878104 () Bool)

(assert (=> b!6878104 (= c!1279779 ((_ is Union!16743) (ite c!1279704 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279703 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))

(assert (=> b!6878104 (= e!4145369 e!4145370)))

(declare-fun b!6878105 () Bool)

(assert (=> b!6878105 (= e!4145371 (+ 1 call!626232 call!626231))))

(declare-fun bm!626227 () Bool)

(assert (=> bm!626227 (= call!626230 (regexDepthTotal!270 (ite c!1279780 (reg!17072 (ite c!1279704 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279703 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) (ite c!1279779 (regTwo!33999 (ite c!1279704 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279703 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) (regOne!33998 (ite c!1279704 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (ite c!1279703 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))))))

(declare-fun b!6878106 () Bool)

(assert (=> b!6878106 (= e!4145371 1)))

(assert (= (and d!2159773 c!1279781) b!6878099))

(assert (= (and d!2159773 (not c!1279781)) b!6878103))

(assert (= (and b!6878103 c!1279780) b!6878102))

(assert (= (and b!6878103 (not c!1279780)) b!6878104))

(assert (= (and b!6878104 c!1279779) b!6878101))

(assert (= (and b!6878104 (not c!1279779)) b!6878100))

(assert (= (and b!6878100 c!1279778) b!6878105))

(assert (= (and b!6878100 (not c!1279778)) b!6878106))

(assert (= (or b!6878101 b!6878105) bm!626225))

(assert (= (or b!6878101 b!6878105) bm!626226))

(assert (= (or b!6878102 bm!626226) bm!626227))

(declare-fun m!7605374 () Bool)

(assert (=> bm!626225 m!7605374))

(declare-fun m!7605376 () Bool)

(assert (=> bm!626227 m!7605376))

(assert (=> bm!626164 d!2159773))

(declare-fun d!2159775 () Bool)

(declare-fun lt!2459372 () Bool)

(assert (=> d!2159775 (= lt!2459372 (select (content!13038 (t!380241 (t!380241 (t!380241 (t!380241 zl!1632))))) c!9978))))

(declare-fun e!4145373 () Bool)

(assert (=> d!2159775 (= lt!2459372 e!4145373)))

(declare-fun res!2804256 () Bool)

(assert (=> d!2159775 (=> (not res!2804256) (not e!4145373))))

(assert (=> d!2159775 (= res!2804256 ((_ is Cons!66374) (t!380241 (t!380241 (t!380241 (t!380241 zl!1632))))))))

(assert (=> d!2159775 (= (contains!20399 (t!380241 (t!380241 (t!380241 (t!380241 zl!1632)))) c!9978) lt!2459372)))

(declare-fun b!6878107 () Bool)

(declare-fun e!4145372 () Bool)

(assert (=> b!6878107 (= e!4145373 e!4145372)))

(declare-fun res!2804257 () Bool)

(assert (=> b!6878107 (=> res!2804257 e!4145372)))

(assert (=> b!6878107 (= res!2804257 (= (h!72822 (t!380241 (t!380241 (t!380241 (t!380241 zl!1632))))) c!9978))))

(declare-fun b!6878108 () Bool)

(assert (=> b!6878108 (= e!4145372 (contains!20399 (t!380241 (t!380241 (t!380241 (t!380241 (t!380241 zl!1632))))) c!9978))))

(assert (= (and d!2159775 res!2804256) b!6878107))

(assert (= (and b!6878107 (not res!2804257)) b!6878108))

(declare-fun m!7605378 () Bool)

(assert (=> d!2159775 m!7605378))

(declare-fun m!7605380 () Bool)

(assert (=> d!2159775 m!7605380))

(declare-fun m!7605382 () Bool)

(assert (=> b!6878108 m!7605382))

(assert (=> b!6877762 d!2159775))

(declare-fun b!6878109 () Bool)

(declare-fun e!4145374 () Int)

(assert (=> b!6878109 (= e!4145374 1)))

(declare-fun bm!626228 () Bool)

(declare-fun call!626234 () Int)

(declare-fun c!1279783 () Bool)

(assert (=> bm!626228 (= call!626234 (regexDepthTotal!270 (ite c!1279783 (regOne!33999 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))))

(declare-fun bm!626229 () Bool)

(declare-fun call!626235 () Int)

(declare-fun call!626233 () Int)

(assert (=> bm!626229 (= call!626235 call!626233)))

(declare-fun b!6878110 () Bool)

(declare-fun e!4145376 () Int)

(declare-fun e!4145377 () Int)

(assert (=> b!6878110 (= e!4145376 e!4145377)))

(declare-fun c!1279782 () Bool)

(assert (=> b!6878110 (= c!1279782 ((_ is Concat!25588) (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))

(declare-fun b!6878111 () Bool)

(assert (=> b!6878111 (= e!4145376 (+ 1 call!626234 call!626235))))

(declare-fun d!2159777 () Bool)

(declare-fun lt!2459373 () Int)

(assert (=> d!2159777 (> lt!2459373 0)))

(assert (=> d!2159777 (= lt!2459373 e!4145374)))

(declare-fun c!1279785 () Bool)

(assert (=> d!2159777 (= c!1279785 ((_ is ElementMatch!16743) (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))

(assert (=> d!2159777 (= (regexDepthTotal!270 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))) lt!2459373)))

(declare-fun b!6878112 () Bool)

(declare-fun e!4145375 () Int)

(assert (=> b!6878112 (= e!4145375 (+ 1 call!626233))))

(declare-fun b!6878113 () Bool)

(assert (=> b!6878113 (= e!4145374 e!4145375)))

(declare-fun c!1279784 () Bool)

(assert (=> b!6878113 (= c!1279784 ((_ is Star!16743) (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))

(declare-fun b!6878114 () Bool)

(assert (=> b!6878114 (= c!1279783 ((_ is Union!16743) (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))

(assert (=> b!6878114 (= e!4145375 e!4145376)))

(declare-fun b!6878115 () Bool)

(assert (=> b!6878115 (= e!4145377 (+ 1 call!626235 call!626234))))

(declare-fun bm!626230 () Bool)

(assert (=> bm!626230 (= call!626233 (regexDepthTotal!270 (ite c!1279784 (reg!17072 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))) (ite c!1279783 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632)))))))))))

(declare-fun b!6878116 () Bool)

(assert (=> b!6878116 (= e!4145377 1)))

(assert (= (and d!2159777 c!1279785) b!6878109))

(assert (= (and d!2159777 (not c!1279785)) b!6878113))

(assert (= (and b!6878113 c!1279784) b!6878112))

(assert (= (and b!6878113 (not c!1279784)) b!6878114))

(assert (= (and b!6878114 c!1279783) b!6878111))

(assert (= (and b!6878114 (not c!1279783)) b!6878110))

(assert (= (and b!6878110 c!1279782) b!6878115))

(assert (= (and b!6878110 (not c!1279782)) b!6878116))

(assert (= (or b!6878111 b!6878115) bm!626228))

(assert (= (or b!6878111 b!6878115) bm!626229))

(assert (= (or b!6878112 bm!626229) bm!626230))

(declare-fun m!7605384 () Bool)

(assert (=> bm!626228 m!7605384))

(declare-fun m!7605386 () Bool)

(assert (=> bm!626230 m!7605386))

(assert (=> b!6877775 d!2159777))

(declare-fun d!2159779 () Bool)

(declare-fun lt!2459374 () Int)

(assert (=> d!2159779 (>= lt!2459374 0)))

(declare-fun e!4145378 () Int)

(assert (=> d!2159779 (= lt!2459374 e!4145378)))

(declare-fun c!1279786 () Bool)

(assert (=> d!2159779 (= c!1279786 ((_ is Cons!66373) (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))))

(assert (=> d!2159779 (= (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632)))))) lt!2459374)))

(declare-fun b!6878117 () Bool)

(assert (=> b!6878117 (= e!4145378 (+ (regexDepthTotal!270 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632)))))))) (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632)))))))))))))

(declare-fun b!6878118 () Bool)

(assert (=> b!6878118 (= e!4145378 1)))

(assert (= (and d!2159779 c!1279786) b!6878117))

(assert (= (and d!2159779 (not c!1279786)) b!6878118))

(declare-fun m!7605388 () Bool)

(assert (=> b!6878117 m!7605388))

(declare-fun m!7605390 () Bool)

(assert (=> b!6878117 m!7605390))

(assert (=> b!6877775 d!2159779))

(declare-fun d!2159781 () Bool)

(declare-fun res!2804258 () Bool)

(declare-fun e!4145379 () Bool)

(assert (=> d!2159781 (=> res!2804258 e!4145379)))

(assert (=> d!2159781 (= res!2804258 ((_ is Nil!66373) (t!380240 (t!380240 (exprs!6627 c!9978)))))))

(assert (=> d!2159781 (= (forall!15934 (t!380240 (t!380240 (exprs!6627 c!9978))) lambda!389352) e!4145379)))

(declare-fun b!6878119 () Bool)

(declare-fun e!4145380 () Bool)

(assert (=> b!6878119 (= e!4145379 e!4145380)))

(declare-fun res!2804259 () Bool)

(assert (=> b!6878119 (=> (not res!2804259) (not e!4145380))))

(assert (=> b!6878119 (= res!2804259 (dynLambda!26569 lambda!389352 (h!72821 (t!380240 (t!380240 (exprs!6627 c!9978))))))))

(declare-fun b!6878120 () Bool)

(assert (=> b!6878120 (= e!4145380 (forall!15934 (t!380240 (t!380240 (t!380240 (exprs!6627 c!9978)))) lambda!389352))))

(assert (= (and d!2159781 (not res!2804258)) b!6878119))

(assert (= (and b!6878119 res!2804259) b!6878120))

(declare-fun b_lambda!260317 () Bool)

(assert (=> (not b_lambda!260317) (not b!6878119)))

(declare-fun m!7605392 () Bool)

(assert (=> b!6878119 m!7605392))

(declare-fun m!7605394 () Bool)

(assert (=> b!6878120 m!7605394))

(assert (=> b!6877793 d!2159781))

(declare-fun b!6878121 () Bool)

(declare-fun e!4145384 () Bool)

(declare-fun call!626237 () Bool)

(assert (=> b!6878121 (= e!4145384 call!626237)))

(declare-fun bm!626231 () Bool)

(declare-fun call!626238 () Bool)

(declare-fun call!626236 () Bool)

(assert (=> bm!626231 (= call!626238 call!626236)))

(declare-fun b!6878122 () Bool)

(declare-fun res!2804260 () Bool)

(declare-fun e!4145382 () Bool)

(assert (=> b!6878122 (=> (not res!2804260) (not e!4145382))))

(assert (=> b!6878122 (= res!2804260 call!626238)))

(declare-fun e!4145386 () Bool)

(assert (=> b!6878122 (= e!4145386 e!4145382)))

(declare-fun b!6878123 () Bool)

(declare-fun e!4145381 () Bool)

(assert (=> b!6878123 (= e!4145381 call!626236)))

(declare-fun b!6878124 () Bool)

(declare-fun e!4145385 () Bool)

(declare-fun e!4145383 () Bool)

(assert (=> b!6878124 (= e!4145385 e!4145383)))

(declare-fun c!1279788 () Bool)

(assert (=> b!6878124 (= c!1279788 ((_ is Star!16743) (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))

(declare-fun b!6878125 () Bool)

(declare-fun res!2804263 () Bool)

(declare-fun e!4145387 () Bool)

(assert (=> b!6878125 (=> res!2804263 e!4145387)))

(assert (=> b!6878125 (= res!2804263 (not ((_ is Concat!25588) (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632)))))))))

(assert (=> b!6878125 (= e!4145386 e!4145387)))

(declare-fun bm!626232 () Bool)

(declare-fun c!1279787 () Bool)

(assert (=> bm!626232 (= call!626236 (validRegex!8456 (ite c!1279788 (reg!17072 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))) (ite c!1279787 (regOne!33999 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))) (regOne!33998 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632)))))))))))

(declare-fun bm!626233 () Bool)

(assert (=> bm!626233 (= call!626237 (validRegex!8456 (ite c!1279787 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))))

(declare-fun b!6878126 () Bool)

(assert (=> b!6878126 (= e!4145383 e!4145381)))

(declare-fun res!2804262 () Bool)

(assert (=> b!6878126 (= res!2804262 (not (nullable!6667 (reg!17072 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))))

(assert (=> b!6878126 (=> (not res!2804262) (not e!4145381))))

(declare-fun d!2159783 () Bool)

(declare-fun res!2804264 () Bool)

(assert (=> d!2159783 (=> res!2804264 e!4145385)))

(assert (=> d!2159783 (= res!2804264 ((_ is ElementMatch!16743) (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))

(assert (=> d!2159783 (= (validRegex!8456 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))) e!4145385)))

(declare-fun b!6878127 () Bool)

(assert (=> b!6878127 (= e!4145383 e!4145386)))

(assert (=> b!6878127 (= c!1279787 ((_ is Union!16743) (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))))

(declare-fun b!6878128 () Bool)

(assert (=> b!6878128 (= e!4145387 e!4145384)))

(declare-fun res!2804261 () Bool)

(assert (=> b!6878128 (=> (not res!2804261) (not e!4145384))))

(assert (=> b!6878128 (= res!2804261 call!626238)))

(declare-fun b!6878129 () Bool)

(assert (=> b!6878129 (= e!4145382 call!626237)))

(assert (= (and d!2159783 (not res!2804264)) b!6878124))

(assert (= (and b!6878124 c!1279788) b!6878126))

(assert (= (and b!6878124 (not c!1279788)) b!6878127))

(assert (= (and b!6878126 res!2804262) b!6878123))

(assert (= (and b!6878127 c!1279787) b!6878122))

(assert (= (and b!6878127 (not c!1279787)) b!6878125))

(assert (= (and b!6878122 res!2804260) b!6878129))

(assert (= (and b!6878125 (not res!2804263)) b!6878128))

(assert (= (and b!6878128 res!2804261) b!6878121))

(assert (= (or b!6878129 b!6878121) bm!626233))

(assert (= (or b!6878122 b!6878128) bm!626231))

(assert (= (or b!6878123 bm!626231) bm!626232))

(declare-fun m!7605396 () Bool)

(assert (=> bm!626232 m!7605396))

(declare-fun m!7605398 () Bool)

(assert (=> bm!626233 m!7605398))

(declare-fun m!7605400 () Bool)

(assert (=> b!6878126 m!7605400))

(assert (=> bs!1837933 d!2159783))

(declare-fun b!6878130 () Bool)

(declare-fun e!4145388 () Int)

(assert (=> b!6878130 (= e!4145388 1)))

(declare-fun bm!626234 () Bool)

(declare-fun call!626240 () Int)

(declare-fun c!1279790 () Bool)

(assert (=> bm!626234 (= call!626240 (regexDepthTotal!270 (ite c!1279790 (regOne!33999 (ite c!1279689 (reg!17072 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (ite c!1279688 (regTwo!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regOne!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))) (regTwo!33998 (ite c!1279689 (reg!17072 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (ite c!1279688 (regTwo!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regOne!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))))

(declare-fun bm!626235 () Bool)

(declare-fun call!626241 () Int)

(declare-fun call!626239 () Int)

(assert (=> bm!626235 (= call!626241 call!626239)))

(declare-fun b!6878131 () Bool)

(declare-fun e!4145390 () Int)

(declare-fun e!4145391 () Int)

(assert (=> b!6878131 (= e!4145390 e!4145391)))

(declare-fun c!1279789 () Bool)

(assert (=> b!6878131 (= c!1279789 ((_ is Concat!25588) (ite c!1279689 (reg!17072 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (ite c!1279688 (regTwo!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regOne!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))

(declare-fun b!6878132 () Bool)

(assert (=> b!6878132 (= e!4145390 (+ 1 call!626240 call!626241))))

(declare-fun d!2159785 () Bool)

(declare-fun lt!2459375 () Int)

(assert (=> d!2159785 (> lt!2459375 0)))

(assert (=> d!2159785 (= lt!2459375 e!4145388)))

(declare-fun c!1279792 () Bool)

(assert (=> d!2159785 (= c!1279792 ((_ is ElementMatch!16743) (ite c!1279689 (reg!17072 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (ite c!1279688 (regTwo!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regOne!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))

(assert (=> d!2159785 (= (regexDepthTotal!270 (ite c!1279689 (reg!17072 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (ite c!1279688 (regTwo!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regOne!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))) lt!2459375)))

(declare-fun b!6878133 () Bool)

(declare-fun e!4145389 () Int)

(assert (=> b!6878133 (= e!4145389 (+ 1 call!626239))))

(declare-fun b!6878134 () Bool)

(assert (=> b!6878134 (= e!4145388 e!4145389)))

(declare-fun c!1279791 () Bool)

(assert (=> b!6878134 (= c!1279791 ((_ is Star!16743) (ite c!1279689 (reg!17072 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (ite c!1279688 (regTwo!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regOne!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))

(declare-fun b!6878135 () Bool)

(assert (=> b!6878135 (= c!1279790 ((_ is Union!16743) (ite c!1279689 (reg!17072 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (ite c!1279688 (regTwo!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regOne!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))))))

(assert (=> b!6878135 (= e!4145389 e!4145390)))

(declare-fun b!6878136 () Bool)

(assert (=> b!6878136 (= e!4145391 (+ 1 call!626241 call!626240))))

(declare-fun bm!626236 () Bool)

(assert (=> bm!626236 (= call!626239 (regexDepthTotal!270 (ite c!1279791 (reg!17072 (ite c!1279689 (reg!17072 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (ite c!1279688 (regTwo!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regOne!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))) (ite c!1279790 (regTwo!33999 (ite c!1279689 (reg!17072 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (ite c!1279688 (regTwo!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regOne!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978))))))))) (regOne!33998 (ite c!1279689 (reg!17072 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (ite c!1279688 (regTwo!33999 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))) (regOne!33998 (h!72821 (exprs!6627 (Context!12255 (t!380240 (exprs!6627 c!9978)))))))))))))))

(declare-fun b!6878137 () Bool)

(assert (=> b!6878137 (= e!4145391 1)))

(assert (= (and d!2159785 c!1279792) b!6878130))

(assert (= (and d!2159785 (not c!1279792)) b!6878134))

(assert (= (and b!6878134 c!1279791) b!6878133))

(assert (= (and b!6878134 (not c!1279791)) b!6878135))

(assert (= (and b!6878135 c!1279790) b!6878132))

(assert (= (and b!6878135 (not c!1279790)) b!6878131))

(assert (= (and b!6878131 c!1279789) b!6878136))

(assert (= (and b!6878131 (not c!1279789)) b!6878137))

(assert (= (or b!6878132 b!6878136) bm!626234))

(assert (= (or b!6878132 b!6878136) bm!626235))

(assert (= (or b!6878133 bm!626235) bm!626236))

(declare-fun m!7605402 () Bool)

(assert (=> bm!626234 m!7605402))

(declare-fun m!7605404 () Bool)

(assert (=> bm!626236 m!7605404))

(assert (=> bm!626149 d!2159785))

(declare-fun b!6878138 () Bool)

(declare-fun e!4145392 () Int)

(assert (=> b!6878138 (= e!4145392 1)))

(declare-fun bm!626237 () Bool)

(declare-fun call!626243 () Int)

(declare-fun c!1279794 () Bool)

(assert (=> bm!626237 (= call!626243 (regexDepthTotal!270 (ite c!1279794 (regOne!33999 (ite c!1279714 (reg!17072 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (ite c!1279713 (regTwo!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regOne!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))))) (regTwo!33998 (ite c!1279714 (reg!17072 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (ite c!1279713 (regTwo!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regOne!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))))))))))

(declare-fun bm!626238 () Bool)

(declare-fun call!626244 () Int)

(declare-fun call!626242 () Int)

(assert (=> bm!626238 (= call!626244 call!626242)))

(declare-fun b!6878139 () Bool)

(declare-fun e!4145394 () Int)

(declare-fun e!4145395 () Int)

(assert (=> b!6878139 (= e!4145394 e!4145395)))

(declare-fun c!1279793 () Bool)

(assert (=> b!6878139 (= c!1279793 ((_ is Concat!25588) (ite c!1279714 (reg!17072 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (ite c!1279713 (regTwo!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regOne!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))))))))

(declare-fun b!6878140 () Bool)

(assert (=> b!6878140 (= e!4145394 (+ 1 call!626243 call!626244))))

(declare-fun d!2159787 () Bool)

(declare-fun lt!2459376 () Int)

(assert (=> d!2159787 (> lt!2459376 0)))

(assert (=> d!2159787 (= lt!2459376 e!4145392)))

(declare-fun c!1279796 () Bool)

(assert (=> d!2159787 (= c!1279796 ((_ is ElementMatch!16743) (ite c!1279714 (reg!17072 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (ite c!1279713 (regTwo!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regOne!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))))))))

(assert (=> d!2159787 (= (regexDepthTotal!270 (ite c!1279714 (reg!17072 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (ite c!1279713 (regTwo!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regOne!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))))) lt!2459376)))

(declare-fun b!6878141 () Bool)

(declare-fun e!4145393 () Int)

(assert (=> b!6878141 (= e!4145393 (+ 1 call!626242))))

(declare-fun b!6878142 () Bool)

(assert (=> b!6878142 (= e!4145392 e!4145393)))

(declare-fun c!1279795 () Bool)

(assert (=> b!6878142 (= c!1279795 ((_ is Star!16743) (ite c!1279714 (reg!17072 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (ite c!1279713 (regTwo!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regOne!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))))))))

(declare-fun b!6878143 () Bool)

(assert (=> b!6878143 (= c!1279794 ((_ is Union!16743) (ite c!1279714 (reg!17072 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (ite c!1279713 (regTwo!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regOne!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))))))))

(assert (=> b!6878143 (= e!4145393 e!4145394)))

(declare-fun b!6878144 () Bool)

(assert (=> b!6878144 (= e!4145395 (+ 1 call!626244 call!626243))))

(declare-fun bm!626239 () Bool)

(assert (=> bm!626239 (= call!626242 (regexDepthTotal!270 (ite c!1279795 (reg!17072 (ite c!1279714 (reg!17072 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (ite c!1279713 (regTwo!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regOne!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))))) (ite c!1279794 (regTwo!33999 (ite c!1279714 (reg!17072 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (ite c!1279713 (regTwo!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regOne!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))))) (regOne!33998 (ite c!1279714 (reg!17072 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (ite c!1279713 (regTwo!33999 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))) (regOne!33998 (ite c!1279657 (regOne!33999 (h!72821 (exprs!6627 c!9978))) (regTwo!33998 (h!72821 (exprs!6627 c!9978))))))))))))))

(declare-fun b!6878145 () Bool)

(assert (=> b!6878145 (= e!4145395 1)))

(assert (= (and d!2159787 c!1279796) b!6878138))

(assert (= (and d!2159787 (not c!1279796)) b!6878142))

(assert (= (and b!6878142 c!1279795) b!6878141))

(assert (= (and b!6878142 (not c!1279795)) b!6878143))

(assert (= (and b!6878143 c!1279794) b!6878140))

(assert (= (and b!6878143 (not c!1279794)) b!6878139))

(assert (= (and b!6878139 c!1279793) b!6878144))

(assert (= (and b!6878139 (not c!1279793)) b!6878145))

(assert (= (or b!6878140 b!6878144) bm!626237))

(assert (= (or b!6878140 b!6878144) bm!626238))

(assert (= (or b!6878141 bm!626238) bm!626239))

(declare-fun m!7605406 () Bool)

(assert (=> bm!626237 m!7605406))

(declare-fun m!7605408 () Bool)

(assert (=> bm!626239 m!7605408))

(assert (=> bm!626170 d!2159787))

(declare-fun d!2159789 () Bool)

(declare-fun lt!2459377 () Int)

(assert (=> d!2159789 (>= lt!2459377 0)))

(declare-fun e!4145396 () Int)

(assert (=> d!2159789 (= lt!2459377 e!4145396)))

(declare-fun c!1279797 () Bool)

(assert (=> d!2159789 (= c!1279797 ((_ is Nil!66374) (t!380241 (t!380241 (t!380241 (t!380241 zl!1632))))))))

(assert (=> d!2159789 (= (size!40733 (t!380241 (t!380241 (t!380241 (t!380241 zl!1632))))) lt!2459377)))

(declare-fun b!6878146 () Bool)

(assert (=> b!6878146 (= e!4145396 0)))

(declare-fun b!6878147 () Bool)

(assert (=> b!6878147 (= e!4145396 (+ 1 (size!40733 (t!380241 (t!380241 (t!380241 (t!380241 (t!380241 zl!1632))))))))))

(assert (= (and d!2159789 c!1279797) b!6878146))

(assert (= (and d!2159789 (not c!1279797)) b!6878147))

(declare-fun m!7605410 () Bool)

(assert (=> b!6878147 m!7605410))

(assert (=> b!6877782 d!2159789))

(declare-fun b!6878148 () Bool)

(declare-fun e!4145397 () Int)

(assert (=> b!6878148 (= e!4145397 1)))

(declare-fun call!626246 () Int)

(declare-fun c!1279799 () Bool)

(declare-fun bm!626240 () Bool)

(assert (=> bm!626240 (= call!626246 (regexDepthTotal!270 (ite c!1279799 (regOne!33999 (ite c!1279694 (reg!17072 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (ite c!1279693 (regTwo!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regOne!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978))))))))) (regTwo!33998 (ite c!1279694 (reg!17072 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (ite c!1279693 (regTwo!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regOne!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978))))))))))))))

(declare-fun bm!626241 () Bool)

(declare-fun call!626247 () Int)

(declare-fun call!626245 () Int)

(assert (=> bm!626241 (= call!626247 call!626245)))

(declare-fun b!6878149 () Bool)

(declare-fun e!4145399 () Int)

(declare-fun e!4145400 () Int)

(assert (=> b!6878149 (= e!4145399 e!4145400)))

(declare-fun c!1279798 () Bool)

(assert (=> b!6878149 (= c!1279798 ((_ is Concat!25588) (ite c!1279694 (reg!17072 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (ite c!1279693 (regTwo!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regOne!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978))))))))))))

(declare-fun b!6878150 () Bool)

(assert (=> b!6878150 (= e!4145399 (+ 1 call!626246 call!626247))))

(declare-fun d!2159791 () Bool)

(declare-fun lt!2459378 () Int)

(assert (=> d!2159791 (> lt!2459378 0)))

(assert (=> d!2159791 (= lt!2459378 e!4145397)))

(declare-fun c!1279801 () Bool)

(assert (=> d!2159791 (= c!1279801 ((_ is ElementMatch!16743) (ite c!1279694 (reg!17072 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (ite c!1279693 (regTwo!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regOne!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978))))))))))))

(assert (=> d!2159791 (= (regexDepthTotal!270 (ite c!1279694 (reg!17072 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (ite c!1279693 (regTwo!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regOne!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978))))))))) lt!2459378)))

(declare-fun b!6878151 () Bool)

(declare-fun e!4145398 () Int)

(assert (=> b!6878151 (= e!4145398 (+ 1 call!626245))))

(declare-fun b!6878152 () Bool)

(assert (=> b!6878152 (= e!4145397 e!4145398)))

(declare-fun c!1279800 () Bool)

(assert (=> b!6878152 (= c!1279800 ((_ is Star!16743) (ite c!1279694 (reg!17072 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (ite c!1279693 (regTwo!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regOne!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978))))))))))))

(declare-fun b!6878153 () Bool)

(assert (=> b!6878153 (= c!1279799 ((_ is Union!16743) (ite c!1279694 (reg!17072 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (ite c!1279693 (regTwo!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regOne!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978))))))))))))

(assert (=> b!6878153 (= e!4145398 e!4145399)))

(declare-fun b!6878154 () Bool)

(assert (=> b!6878154 (= e!4145400 (+ 1 call!626247 call!626246))))

(declare-fun bm!626242 () Bool)

(assert (=> bm!626242 (= call!626245 (regexDepthTotal!270 (ite c!1279800 (reg!17072 (ite c!1279694 (reg!17072 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (ite c!1279693 (regTwo!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regOne!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978))))))))) (ite c!1279799 (regTwo!33999 (ite c!1279694 (reg!17072 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (ite c!1279693 (regTwo!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regOne!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978))))))))) (regOne!33998 (ite c!1279694 (reg!17072 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (ite c!1279693 (regTwo!33999 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) (regOne!33998 (ite c!1279658 (reg!17072 (h!72821 (exprs!6627 c!9978))) (ite c!1279657 (regTwo!33999 (h!72821 (exprs!6627 c!9978))) (regOne!33998 (h!72821 (exprs!6627 c!9978)))))))))))))))

(declare-fun b!6878155 () Bool)

(assert (=> b!6878155 (= e!4145400 1)))

(assert (= (and d!2159791 c!1279801) b!6878148))

(assert (= (and d!2159791 (not c!1279801)) b!6878152))

(assert (= (and b!6878152 c!1279800) b!6878151))

(assert (= (and b!6878152 (not c!1279800)) b!6878153))

(assert (= (and b!6878153 c!1279799) b!6878150))

(assert (= (and b!6878153 (not c!1279799)) b!6878149))

(assert (= (and b!6878149 c!1279798) b!6878154))

(assert (= (and b!6878149 (not c!1279798)) b!6878155))

(assert (= (or b!6878150 b!6878154) bm!626240))

(assert (= (or b!6878150 b!6878154) bm!626241))

(assert (= (or b!6878151 bm!626241) bm!626242))

(declare-fun m!7605412 () Bool)

(assert (=> bm!626240 m!7605412))

(declare-fun m!7605414 () Bool)

(assert (=> bm!626242 m!7605414))

(assert (=> bm!626152 d!2159791))

(declare-fun b!6878156 () Bool)

(declare-fun e!4145404 () Bool)

(declare-fun call!626249 () Bool)

(assert (=> b!6878156 (= e!4145404 call!626249)))

(declare-fun bm!626243 () Bool)

(declare-fun call!626250 () Bool)

(declare-fun call!626248 () Bool)

(assert (=> bm!626243 (= call!626250 call!626248)))

(declare-fun b!6878157 () Bool)

(declare-fun res!2804265 () Bool)

(declare-fun e!4145402 () Bool)

(assert (=> b!6878157 (=> (not res!2804265) (not e!4145402))))

(assert (=> b!6878157 (= res!2804265 call!626250)))

(declare-fun e!4145406 () Bool)

(assert (=> b!6878157 (= e!4145406 e!4145402)))

(declare-fun b!6878158 () Bool)

(declare-fun e!4145401 () Bool)

(assert (=> b!6878158 (= e!4145401 call!626248)))

(declare-fun b!6878159 () Bool)

(declare-fun e!4145405 () Bool)

(declare-fun e!4145403 () Bool)

(assert (=> b!6878159 (= e!4145405 e!4145403)))

(declare-fun c!1279803 () Bool)

(assert (=> b!6878159 (= c!1279803 ((_ is Star!16743) (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))

(declare-fun b!6878160 () Bool)

(declare-fun res!2804268 () Bool)

(declare-fun e!4145407 () Bool)

(assert (=> b!6878160 (=> res!2804268 e!4145407)))

(assert (=> b!6878160 (= res!2804268 (not ((_ is Concat!25588) (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632)))))))))

(assert (=> b!6878160 (= e!4145406 e!4145407)))

(declare-fun bm!626244 () Bool)

(declare-fun c!1279802 () Bool)

(assert (=> bm!626244 (= call!626248 (validRegex!8456 (ite c!1279803 (reg!17072 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))) (ite c!1279802 (regOne!33999 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))) (regOne!33998 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632)))))))))))

(declare-fun bm!626245 () Bool)

(assert (=> bm!626245 (= call!626249 (validRegex!8456 (ite c!1279802 (regTwo!33999 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))) (regTwo!33998 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))))

(declare-fun b!6878161 () Bool)

(assert (=> b!6878161 (= e!4145403 e!4145401)))

(declare-fun res!2804267 () Bool)

(assert (=> b!6878161 (= res!2804267 (not (nullable!6667 (reg!17072 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))))

(assert (=> b!6878161 (=> (not res!2804267) (not e!4145401))))

(declare-fun d!2159793 () Bool)

(declare-fun res!2804269 () Bool)

(assert (=> d!2159793 (=> res!2804269 e!4145405)))

(assert (=> d!2159793 (= res!2804269 ((_ is ElementMatch!16743) (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))

(assert (=> d!2159793 (= (validRegex!8456 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))) e!4145405)))

(declare-fun b!6878162 () Bool)

(assert (=> b!6878162 (= e!4145403 e!4145406)))

(assert (=> b!6878162 (= c!1279802 ((_ is Union!16743) (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))

(declare-fun b!6878163 () Bool)

(assert (=> b!6878163 (= e!4145407 e!4145404)))

(declare-fun res!2804266 () Bool)

(assert (=> b!6878163 (=> (not res!2804266) (not e!4145404))))

(assert (=> b!6878163 (= res!2804266 call!626250)))

(declare-fun b!6878164 () Bool)

(assert (=> b!6878164 (= e!4145402 call!626249)))

(assert (= (and d!2159793 (not res!2804269)) b!6878159))

(assert (= (and b!6878159 c!1279803) b!6878161))

(assert (= (and b!6878159 (not c!1279803)) b!6878162))

(assert (= (and b!6878161 res!2804267) b!6878158))

(assert (= (and b!6878162 c!1279802) b!6878157))

(assert (= (and b!6878162 (not c!1279802)) b!6878160))

(assert (= (and b!6878157 res!2804265) b!6878164))

(assert (= (and b!6878160 (not res!2804268)) b!6878163))

(assert (= (and b!6878163 res!2804266) b!6878156))

(assert (= (or b!6878164 b!6878156) bm!626245))

(assert (= (or b!6878157 b!6878163) bm!626243))

(assert (= (or b!6878158 bm!626243) bm!626244))

(declare-fun m!7605416 () Bool)

(assert (=> bm!626244 m!7605416))

(declare-fun m!7605418 () Bool)

(assert (=> bm!626245 m!7605418))

(declare-fun m!7605420 () Bool)

(assert (=> b!6878161 m!7605420))

(assert (=> bs!1837932 d!2159793))

(declare-fun d!2159795 () Bool)

(declare-fun c!1279804 () Bool)

(assert (=> d!2159795 (= c!1279804 ((_ is Nil!66374) (t!380241 (t!380241 (t!380241 zl!1632)))))))

(declare-fun e!4145408 () (InoxSet Context!12254))

(assert (=> d!2159795 (= (content!13038 (t!380241 (t!380241 (t!380241 zl!1632)))) e!4145408)))

(declare-fun b!6878165 () Bool)

(assert (=> b!6878165 (= e!4145408 ((as const (Array Context!12254 Bool)) false))))

(declare-fun b!6878166 () Bool)

(assert (=> b!6878166 (= e!4145408 ((_ map or) (store ((as const (Array Context!12254 Bool)) false) (h!72822 (t!380241 (t!380241 (t!380241 zl!1632)))) true) (content!13038 (t!380241 (t!380241 (t!380241 (t!380241 zl!1632)))))))))

(assert (= (and d!2159795 c!1279804) b!6878165))

(assert (= (and d!2159795 (not c!1279804)) b!6878166))

(declare-fun m!7605422 () Bool)

(assert (=> b!6878166 m!7605422))

(assert (=> b!6878166 m!7605378))

(assert (=> d!2159669 d!2159795))

(declare-fun b!6878167 () Bool)

(declare-fun e!4145409 () Int)

(assert (=> b!6878167 (= e!4145409 1)))

(declare-fun bm!626246 () Bool)

(declare-fun c!1279806 () Bool)

(declare-fun call!626252 () Int)

(assert (=> bm!626246 (= call!626252 (regexDepthTotal!270 (ite c!1279806 (regOne!33999 (ite c!1279703 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) (regTwo!33998 (ite c!1279703 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))))

(declare-fun bm!626247 () Bool)

(declare-fun call!626253 () Int)

(declare-fun call!626251 () Int)

(assert (=> bm!626247 (= call!626253 call!626251)))

(declare-fun b!6878168 () Bool)

(declare-fun e!4145411 () Int)

(declare-fun e!4145412 () Int)

(assert (=> b!6878168 (= e!4145411 e!4145412)))

(declare-fun c!1279805 () Bool)

(assert (=> b!6878168 (= c!1279805 ((_ is Concat!25588) (ite c!1279703 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))

(declare-fun b!6878169 () Bool)

(assert (=> b!6878169 (= e!4145411 (+ 1 call!626252 call!626253))))

(declare-fun d!2159797 () Bool)

(declare-fun lt!2459379 () Int)

(assert (=> d!2159797 (> lt!2459379 0)))

(assert (=> d!2159797 (= lt!2459379 e!4145409)))

(declare-fun c!1279808 () Bool)

(assert (=> d!2159797 (= c!1279808 ((_ is ElementMatch!16743) (ite c!1279703 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))

(assert (=> d!2159797 (= (regexDepthTotal!270 (ite c!1279703 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) lt!2459379)))

(declare-fun b!6878170 () Bool)

(declare-fun e!4145410 () Int)

(assert (=> b!6878170 (= e!4145410 (+ 1 call!626251))))

(declare-fun b!6878171 () Bool)

(assert (=> b!6878171 (= e!4145409 e!4145410)))

(declare-fun c!1279807 () Bool)

(assert (=> b!6878171 (= c!1279807 ((_ is Star!16743) (ite c!1279703 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))

(declare-fun b!6878172 () Bool)

(assert (=> b!6878172 (= c!1279806 ((_ is Union!16743) (ite c!1279703 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))))))

(assert (=> b!6878172 (= e!4145410 e!4145411)))

(declare-fun b!6878173 () Bool)

(assert (=> b!6878173 (= e!4145412 (+ 1 call!626253 call!626252))))

(declare-fun bm!626248 () Bool)

(assert (=> bm!626248 (= call!626251 (regexDepthTotal!270 (ite c!1279807 (reg!17072 (ite c!1279703 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) (ite c!1279806 (regTwo!33999 (ite c!1279703 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632)))))) (regOne!33998 (ite c!1279703 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632)))) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))))))))

(declare-fun b!6878174 () Bool)

(assert (=> b!6878174 (= e!4145412 1)))

(assert (= (and d!2159797 c!1279808) b!6878167))

(assert (= (and d!2159797 (not c!1279808)) b!6878171))

(assert (= (and b!6878171 c!1279807) b!6878170))

(assert (= (and b!6878171 (not c!1279807)) b!6878172))

(assert (= (and b!6878172 c!1279806) b!6878169))

(assert (= (and b!6878172 (not c!1279806)) b!6878168))

(assert (= (and b!6878168 c!1279805) b!6878173))

(assert (= (and b!6878168 (not c!1279805)) b!6878174))

(assert (= (or b!6878169 b!6878173) bm!626246))

(assert (= (or b!6878169 b!6878173) bm!626247))

(assert (= (or b!6878170 bm!626247) bm!626248))

(declare-fun m!7605424 () Bool)

(assert (=> bm!626246 m!7605424))

(declare-fun m!7605426 () Bool)

(assert (=> bm!626248 m!7605426))

(assert (=> bm!626162 d!2159797))

(declare-fun d!2159799 () Bool)

(declare-fun lt!2459380 () Int)

(assert (=> d!2159799 (>= lt!2459380 0)))

(declare-fun e!4145413 () Int)

(assert (=> d!2159799 (= lt!2459380 e!4145413)))

(declare-fun c!1279809 () Bool)

(assert (=> d!2159799 (= c!1279809 ((_ is Cons!66373) (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632))))))))

(assert (=> d!2159799 (= (contextDepthTotal!432 (h!72822 (t!380241 (t!380241 zl!1632)))) lt!2459380)))

(declare-fun b!6878175 () Bool)

(assert (=> b!6878175 (= e!4145413 (+ (regexDepthTotal!270 (h!72821 (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632)))))) (contextDepthTotal!432 (Context!12255 (t!380240 (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632)))))))))))

(declare-fun b!6878176 () Bool)

(assert (=> b!6878176 (= e!4145413 1)))

(assert (= (and d!2159799 c!1279809) b!6878175))

(assert (= (and d!2159799 (not c!1279809)) b!6878176))

(declare-fun m!7605428 () Bool)

(assert (=> b!6878175 m!7605428))

(declare-fun m!7605430 () Bool)

(assert (=> b!6878175 m!7605430))

(assert (=> b!6877777 d!2159799))

(declare-fun d!2159801 () Bool)

(declare-fun lt!2459381 () Int)

(assert (=> d!2159801 (>= lt!2459381 0)))

(declare-fun e!4145414 () Int)

(assert (=> d!2159801 (= lt!2459381 e!4145414)))

(declare-fun c!1279810 () Bool)

(assert (=> d!2159801 (= c!1279810 ((_ is Cons!66374) (t!380241 (t!380241 (t!380241 zl!1632)))))))

(assert (=> d!2159801 (= (zipperDepthTotal!460 (t!380241 (t!380241 (t!380241 zl!1632)))) lt!2459381)))

(declare-fun b!6878177 () Bool)

(assert (=> b!6878177 (= e!4145414 (+ (contextDepthTotal!432 (h!72822 (t!380241 (t!380241 (t!380241 zl!1632))))) (zipperDepthTotal!460 (t!380241 (t!380241 (t!380241 (t!380241 zl!1632)))))))))

(declare-fun b!6878178 () Bool)

(assert (=> b!6878178 (= e!4145414 0)))

(assert (= (and d!2159801 c!1279810) b!6878177))

(assert (= (and d!2159801 (not c!1279810)) b!6878178))

(declare-fun m!7605432 () Bool)

(assert (=> b!6878177 m!7605432))

(declare-fun m!7605434 () Bool)

(assert (=> b!6878177 m!7605434))

(assert (=> b!6877777 d!2159801))

(declare-fun d!2159803 () Bool)

(declare-fun res!2804270 () Bool)

(declare-fun e!4145415 () Bool)

(assert (=> d!2159803 (=> res!2804270 e!4145415)))

(assert (=> d!2159803 (= res!2804270 ((_ is Nil!66373) (t!380240 (t!380240 (exprs!6627 (h!72822 zl!1632))))))))

(assert (=> d!2159803 (= (forall!15934 (t!380240 (t!380240 (exprs!6627 (h!72822 zl!1632)))) lambda!389351) e!4145415)))

(declare-fun b!6878179 () Bool)

(declare-fun e!4145416 () Bool)

(assert (=> b!6878179 (= e!4145415 e!4145416)))

(declare-fun res!2804271 () Bool)

(assert (=> b!6878179 (=> (not res!2804271) (not e!4145416))))

(assert (=> b!6878179 (= res!2804271 (dynLambda!26569 lambda!389351 (h!72821 (t!380240 (t!380240 (exprs!6627 (h!72822 zl!1632)))))))))

(declare-fun b!6878180 () Bool)

(assert (=> b!6878180 (= e!4145416 (forall!15934 (t!380240 (t!380240 (t!380240 (exprs!6627 (h!72822 zl!1632))))) lambda!389351))))

(assert (= (and d!2159803 (not res!2804270)) b!6878179))

(assert (= (and b!6878179 res!2804271) b!6878180))

(declare-fun b_lambda!260319 () Bool)

(assert (=> (not b_lambda!260319) (not b!6878179)))

(declare-fun m!7605436 () Bool)

(assert (=> b!6878179 m!7605436))

(declare-fun m!7605438 () Bool)

(assert (=> b!6878180 m!7605438))

(assert (=> b!6877764 d!2159803))

(assert (=> b!6877715 d!2159795))

(declare-fun e!4145417 () Bool)

(assert (=> b!6877805 (= tp!1890286 e!4145417)))

(declare-fun b!6878181 () Bool)

(assert (=> b!6878181 (= e!4145417 tp_is_empty!42717)))

(declare-fun b!6878184 () Bool)

(declare-fun tp!1890436 () Bool)

(declare-fun tp!1890437 () Bool)

(assert (=> b!6878184 (= e!4145417 (and tp!1890436 tp!1890437))))

(declare-fun b!6878183 () Bool)

(declare-fun tp!1890439 () Bool)

(assert (=> b!6878183 (= e!4145417 tp!1890439)))

(declare-fun b!6878182 () Bool)

(declare-fun tp!1890438 () Bool)

(declare-fun tp!1890440 () Bool)

(assert (=> b!6878182 (= e!4145417 (and tp!1890438 tp!1890440))))

(assert (= (and b!6877805 ((_ is ElementMatch!16743) (regOne!33999 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878181))

(assert (= (and b!6877805 ((_ is Concat!25588) (regOne!33999 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878182))

(assert (= (and b!6877805 ((_ is Star!16743) (regOne!33999 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878183))

(assert (= (and b!6877805 ((_ is Union!16743) (regOne!33999 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878184))

(declare-fun e!4145418 () Bool)

(assert (=> b!6877805 (= tp!1890287 e!4145418)))

(declare-fun b!6878185 () Bool)

(assert (=> b!6878185 (= e!4145418 tp_is_empty!42717)))

(declare-fun b!6878188 () Bool)

(declare-fun tp!1890441 () Bool)

(declare-fun tp!1890442 () Bool)

(assert (=> b!6878188 (= e!4145418 (and tp!1890441 tp!1890442))))

(declare-fun b!6878187 () Bool)

(declare-fun tp!1890444 () Bool)

(assert (=> b!6878187 (= e!4145418 tp!1890444)))

(declare-fun b!6878186 () Bool)

(declare-fun tp!1890443 () Bool)

(declare-fun tp!1890445 () Bool)

(assert (=> b!6878186 (= e!4145418 (and tp!1890443 tp!1890445))))

(assert (= (and b!6877805 ((_ is ElementMatch!16743) (regTwo!33999 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878185))

(assert (= (and b!6877805 ((_ is Concat!25588) (regTwo!33999 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878186))

(assert (= (and b!6877805 ((_ is Star!16743) (regTwo!33999 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878187))

(assert (= (and b!6877805 ((_ is Union!16743) (regTwo!33999 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878188))

(declare-fun e!4145419 () Bool)

(assert (=> b!6877830 (= tp!1890318 e!4145419)))

(declare-fun b!6878189 () Bool)

(assert (=> b!6878189 (= e!4145419 tp_is_empty!42717)))

(declare-fun b!6878192 () Bool)

(declare-fun tp!1890446 () Bool)

(declare-fun tp!1890447 () Bool)

(assert (=> b!6878192 (= e!4145419 (and tp!1890446 tp!1890447))))

(declare-fun b!6878191 () Bool)

(declare-fun tp!1890449 () Bool)

(assert (=> b!6878191 (= e!4145419 tp!1890449)))

(declare-fun b!6878190 () Bool)

(declare-fun tp!1890448 () Bool)

(declare-fun tp!1890450 () Bool)

(assert (=> b!6878190 (= e!4145419 (and tp!1890448 tp!1890450))))

(assert (= (and b!6877830 ((_ is ElementMatch!16743) (regOne!33999 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878189))

(assert (= (and b!6877830 ((_ is Concat!25588) (regOne!33999 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878190))

(assert (= (and b!6877830 ((_ is Star!16743) (regOne!33999 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878191))

(assert (= (and b!6877830 ((_ is Union!16743) (regOne!33999 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878192))

(declare-fun e!4145420 () Bool)

(assert (=> b!6877830 (= tp!1890319 e!4145420)))

(declare-fun b!6878193 () Bool)

(assert (=> b!6878193 (= e!4145420 tp_is_empty!42717)))

(declare-fun b!6878196 () Bool)

(declare-fun tp!1890451 () Bool)

(declare-fun tp!1890452 () Bool)

(assert (=> b!6878196 (= e!4145420 (and tp!1890451 tp!1890452))))

(declare-fun b!6878195 () Bool)

(declare-fun tp!1890454 () Bool)

(assert (=> b!6878195 (= e!4145420 tp!1890454)))

(declare-fun b!6878194 () Bool)

(declare-fun tp!1890453 () Bool)

(declare-fun tp!1890455 () Bool)

(assert (=> b!6878194 (= e!4145420 (and tp!1890453 tp!1890455))))

(assert (= (and b!6877830 ((_ is ElementMatch!16743) (regTwo!33999 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878193))

(assert (= (and b!6877830 ((_ is Concat!25588) (regTwo!33999 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878194))

(assert (= (and b!6877830 ((_ is Star!16743) (regTwo!33999 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878195))

(assert (= (and b!6877830 ((_ is Union!16743) (regTwo!33999 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878196))

(declare-fun e!4145421 () Bool)

(assert (=> b!6877821 (= tp!1890311 e!4145421)))

(declare-fun b!6878197 () Bool)

(assert (=> b!6878197 (= e!4145421 tp_is_empty!42717)))

(declare-fun b!6878200 () Bool)

(declare-fun tp!1890456 () Bool)

(declare-fun tp!1890457 () Bool)

(assert (=> b!6878200 (= e!4145421 (and tp!1890456 tp!1890457))))

(declare-fun b!6878199 () Bool)

(declare-fun tp!1890459 () Bool)

(assert (=> b!6878199 (= e!4145421 tp!1890459)))

(declare-fun b!6878198 () Bool)

(declare-fun tp!1890458 () Bool)

(declare-fun tp!1890460 () Bool)

(assert (=> b!6878198 (= e!4145421 (and tp!1890458 tp!1890460))))

(assert (= (and b!6877821 ((_ is ElementMatch!16743) (reg!17072 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878197))

(assert (= (and b!6877821 ((_ is Concat!25588) (reg!17072 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878198))

(assert (= (and b!6877821 ((_ is Star!16743) (reg!17072 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878199))

(assert (= (and b!6877821 ((_ is Union!16743) (reg!17072 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878200))

(declare-fun e!4145422 () Bool)

(assert (=> b!6877844 (= tp!1890342 e!4145422)))

(declare-fun b!6878201 () Bool)

(assert (=> b!6878201 (= e!4145422 tp_is_empty!42717)))

(declare-fun b!6878204 () Bool)

(declare-fun tp!1890461 () Bool)

(declare-fun tp!1890462 () Bool)

(assert (=> b!6878204 (= e!4145422 (and tp!1890461 tp!1890462))))

(declare-fun b!6878203 () Bool)

(declare-fun tp!1890464 () Bool)

(assert (=> b!6878203 (= e!4145422 tp!1890464)))

(declare-fun b!6878202 () Bool)

(declare-fun tp!1890463 () Bool)

(declare-fun tp!1890465 () Bool)

(assert (=> b!6878202 (= e!4145422 (and tp!1890463 tp!1890465))))

(assert (= (and b!6877844 ((_ is ElementMatch!16743) (reg!17072 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878201))

(assert (= (and b!6877844 ((_ is Concat!25588) (reg!17072 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878202))

(assert (= (and b!6877844 ((_ is Star!16743) (reg!17072 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878203))

(assert (= (and b!6877844 ((_ is Union!16743) (reg!17072 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878204))

(declare-fun e!4145423 () Bool)

(assert (=> b!6877813 (= tp!1890296 e!4145423)))

(declare-fun b!6878205 () Bool)

(assert (=> b!6878205 (= e!4145423 tp_is_empty!42717)))

(declare-fun b!6878208 () Bool)

(declare-fun tp!1890466 () Bool)

(declare-fun tp!1890467 () Bool)

(assert (=> b!6878208 (= e!4145423 (and tp!1890466 tp!1890467))))

(declare-fun b!6878207 () Bool)

(declare-fun tp!1890469 () Bool)

(assert (=> b!6878207 (= e!4145423 tp!1890469)))

(declare-fun b!6878206 () Bool)

(declare-fun tp!1890468 () Bool)

(declare-fun tp!1890470 () Bool)

(assert (=> b!6878206 (= e!4145423 (and tp!1890468 tp!1890470))))

(assert (= (and b!6877813 ((_ is ElementMatch!16743) (regOne!33999 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878205))

(assert (= (and b!6877813 ((_ is Concat!25588) (regOne!33999 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878206))

(assert (= (and b!6877813 ((_ is Star!16743) (regOne!33999 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878207))

(assert (= (and b!6877813 ((_ is Union!16743) (regOne!33999 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878208))

(declare-fun e!4145424 () Bool)

(assert (=> b!6877813 (= tp!1890297 e!4145424)))

(declare-fun b!6878209 () Bool)

(assert (=> b!6878209 (= e!4145424 tp_is_empty!42717)))

(declare-fun b!6878212 () Bool)

(declare-fun tp!1890471 () Bool)

(declare-fun tp!1890472 () Bool)

(assert (=> b!6878212 (= e!4145424 (and tp!1890471 tp!1890472))))

(declare-fun b!6878211 () Bool)

(declare-fun tp!1890474 () Bool)

(assert (=> b!6878211 (= e!4145424 tp!1890474)))

(declare-fun b!6878210 () Bool)

(declare-fun tp!1890473 () Bool)

(declare-fun tp!1890475 () Bool)

(assert (=> b!6878210 (= e!4145424 (and tp!1890473 tp!1890475))))

(assert (= (and b!6877813 ((_ is ElementMatch!16743) (regTwo!33999 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878209))

(assert (= (and b!6877813 ((_ is Concat!25588) (regTwo!33999 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878210))

(assert (= (and b!6877813 ((_ is Star!16743) (regTwo!33999 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878211))

(assert (= (and b!6877813 ((_ is Union!16743) (regTwo!33999 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878212))

(declare-fun e!4145425 () Bool)

(assert (=> b!6877804 (= tp!1890289 e!4145425)))

(declare-fun b!6878213 () Bool)

(assert (=> b!6878213 (= e!4145425 tp_is_empty!42717)))

(declare-fun b!6878216 () Bool)

(declare-fun tp!1890476 () Bool)

(declare-fun tp!1890477 () Bool)

(assert (=> b!6878216 (= e!4145425 (and tp!1890476 tp!1890477))))

(declare-fun b!6878215 () Bool)

(declare-fun tp!1890479 () Bool)

(assert (=> b!6878215 (= e!4145425 tp!1890479)))

(declare-fun b!6878214 () Bool)

(declare-fun tp!1890478 () Bool)

(declare-fun tp!1890480 () Bool)

(assert (=> b!6878214 (= e!4145425 (and tp!1890478 tp!1890480))))

(assert (= (and b!6877804 ((_ is ElementMatch!16743) (reg!17072 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878213))

(assert (= (and b!6877804 ((_ is Concat!25588) (reg!17072 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878214))

(assert (= (and b!6877804 ((_ is Star!16743) (reg!17072 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878215))

(assert (= (and b!6877804 ((_ is Union!16743) (reg!17072 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878216))

(declare-fun e!4145426 () Bool)

(assert (=> b!6877829 (= tp!1890321 e!4145426)))

(declare-fun b!6878217 () Bool)

(assert (=> b!6878217 (= e!4145426 tp_is_empty!42717)))

(declare-fun b!6878220 () Bool)

(declare-fun tp!1890481 () Bool)

(declare-fun tp!1890482 () Bool)

(assert (=> b!6878220 (= e!4145426 (and tp!1890481 tp!1890482))))

(declare-fun b!6878219 () Bool)

(declare-fun tp!1890484 () Bool)

(assert (=> b!6878219 (= e!4145426 tp!1890484)))

(declare-fun b!6878218 () Bool)

(declare-fun tp!1890483 () Bool)

(declare-fun tp!1890485 () Bool)

(assert (=> b!6878218 (= e!4145426 (and tp!1890483 tp!1890485))))

(assert (= (and b!6877829 ((_ is ElementMatch!16743) (reg!17072 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878217))

(assert (= (and b!6877829 ((_ is Concat!25588) (reg!17072 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878218))

(assert (= (and b!6877829 ((_ is Star!16743) (reg!17072 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878219))

(assert (= (and b!6877829 ((_ is Union!16743) (reg!17072 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878220))

(declare-fun e!4145427 () Bool)

(assert (=> b!6877820 (= tp!1890310 e!4145427)))

(declare-fun b!6878221 () Bool)

(assert (=> b!6878221 (= e!4145427 tp_is_empty!42717)))

(declare-fun b!6878224 () Bool)

(declare-fun tp!1890486 () Bool)

(declare-fun tp!1890487 () Bool)

(assert (=> b!6878224 (= e!4145427 (and tp!1890486 tp!1890487))))

(declare-fun b!6878223 () Bool)

(declare-fun tp!1890489 () Bool)

(assert (=> b!6878223 (= e!4145427 tp!1890489)))

(declare-fun b!6878222 () Bool)

(declare-fun tp!1890488 () Bool)

(declare-fun tp!1890490 () Bool)

(assert (=> b!6878222 (= e!4145427 (and tp!1890488 tp!1890490))))

(assert (= (and b!6877820 ((_ is ElementMatch!16743) (regOne!33998 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878221))

(assert (= (and b!6877820 ((_ is Concat!25588) (regOne!33998 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878222))

(assert (= (and b!6877820 ((_ is Star!16743) (regOne!33998 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878223))

(assert (= (and b!6877820 ((_ is Union!16743) (regOne!33998 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878224))

(declare-fun e!4145428 () Bool)

(assert (=> b!6877820 (= tp!1890312 e!4145428)))

(declare-fun b!6878225 () Bool)

(assert (=> b!6878225 (= e!4145428 tp_is_empty!42717)))

(declare-fun b!6878228 () Bool)

(declare-fun tp!1890491 () Bool)

(declare-fun tp!1890492 () Bool)

(assert (=> b!6878228 (= e!4145428 (and tp!1890491 tp!1890492))))

(declare-fun b!6878227 () Bool)

(declare-fun tp!1890494 () Bool)

(assert (=> b!6878227 (= e!4145428 tp!1890494)))

(declare-fun b!6878226 () Bool)

(declare-fun tp!1890493 () Bool)

(declare-fun tp!1890495 () Bool)

(assert (=> b!6878226 (= e!4145428 (and tp!1890493 tp!1890495))))

(assert (= (and b!6877820 ((_ is ElementMatch!16743) (regTwo!33998 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878225))

(assert (= (and b!6877820 ((_ is Concat!25588) (regTwo!33998 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878226))

(assert (= (and b!6877820 ((_ is Star!16743) (regTwo!33998 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878227))

(assert (= (and b!6877820 ((_ is Union!16743) (regTwo!33998 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878228))

(declare-fun e!4145429 () Bool)

(assert (=> b!6877845 (= tp!1890339 e!4145429)))

(declare-fun b!6878229 () Bool)

(assert (=> b!6878229 (= e!4145429 tp_is_empty!42717)))

(declare-fun b!6878232 () Bool)

(declare-fun tp!1890496 () Bool)

(declare-fun tp!1890497 () Bool)

(assert (=> b!6878232 (= e!4145429 (and tp!1890496 tp!1890497))))

(declare-fun b!6878231 () Bool)

(declare-fun tp!1890499 () Bool)

(assert (=> b!6878231 (= e!4145429 tp!1890499)))

(declare-fun b!6878230 () Bool)

(declare-fun tp!1890498 () Bool)

(declare-fun tp!1890500 () Bool)

(assert (=> b!6878230 (= e!4145429 (and tp!1890498 tp!1890500))))

(assert (= (and b!6877845 ((_ is ElementMatch!16743) (regOne!33999 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878229))

(assert (= (and b!6877845 ((_ is Concat!25588) (regOne!33999 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878230))

(assert (= (and b!6877845 ((_ is Star!16743) (regOne!33999 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878231))

(assert (= (and b!6877845 ((_ is Union!16743) (regOne!33999 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878232))

(declare-fun e!4145430 () Bool)

(assert (=> b!6877845 (= tp!1890340 e!4145430)))

(declare-fun b!6878233 () Bool)

(assert (=> b!6878233 (= e!4145430 tp_is_empty!42717)))

(declare-fun b!6878236 () Bool)

(declare-fun tp!1890501 () Bool)

(declare-fun tp!1890502 () Bool)

(assert (=> b!6878236 (= e!4145430 (and tp!1890501 tp!1890502))))

(declare-fun b!6878235 () Bool)

(declare-fun tp!1890504 () Bool)

(assert (=> b!6878235 (= e!4145430 tp!1890504)))

(declare-fun b!6878234 () Bool)

(declare-fun tp!1890503 () Bool)

(declare-fun tp!1890505 () Bool)

(assert (=> b!6878234 (= e!4145430 (and tp!1890503 tp!1890505))))

(assert (= (and b!6877845 ((_ is ElementMatch!16743) (regTwo!33999 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878233))

(assert (= (and b!6877845 ((_ is Concat!25588) (regTwo!33999 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878234))

(assert (= (and b!6877845 ((_ is Star!16743) (regTwo!33999 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878235))

(assert (= (and b!6877845 ((_ is Union!16743) (regTwo!33999 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878236))

(declare-fun e!4145431 () Bool)

(assert (=> b!6877843 (= tp!1890341 e!4145431)))

(declare-fun b!6878237 () Bool)

(assert (=> b!6878237 (= e!4145431 tp_is_empty!42717)))

(declare-fun b!6878240 () Bool)

(declare-fun tp!1890506 () Bool)

(declare-fun tp!1890507 () Bool)

(assert (=> b!6878240 (= e!4145431 (and tp!1890506 tp!1890507))))

(declare-fun b!6878239 () Bool)

(declare-fun tp!1890509 () Bool)

(assert (=> b!6878239 (= e!4145431 tp!1890509)))

(declare-fun b!6878238 () Bool)

(declare-fun tp!1890508 () Bool)

(declare-fun tp!1890510 () Bool)

(assert (=> b!6878238 (= e!4145431 (and tp!1890508 tp!1890510))))

(assert (= (and b!6877843 ((_ is ElementMatch!16743) (regOne!33998 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878237))

(assert (= (and b!6877843 ((_ is Concat!25588) (regOne!33998 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878238))

(assert (= (and b!6877843 ((_ is Star!16743) (regOne!33998 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878239))

(assert (= (and b!6877843 ((_ is Union!16743) (regOne!33998 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878240))

(declare-fun e!4145432 () Bool)

(assert (=> b!6877843 (= tp!1890343 e!4145432)))

(declare-fun b!6878241 () Bool)

(assert (=> b!6878241 (= e!4145432 tp_is_empty!42717)))

(declare-fun b!6878244 () Bool)

(declare-fun tp!1890511 () Bool)

(declare-fun tp!1890512 () Bool)

(assert (=> b!6878244 (= e!4145432 (and tp!1890511 tp!1890512))))

(declare-fun b!6878243 () Bool)

(declare-fun tp!1890514 () Bool)

(assert (=> b!6878243 (= e!4145432 tp!1890514)))

(declare-fun b!6878242 () Bool)

(declare-fun tp!1890513 () Bool)

(declare-fun tp!1890515 () Bool)

(assert (=> b!6878242 (= e!4145432 (and tp!1890513 tp!1890515))))

(assert (= (and b!6877843 ((_ is ElementMatch!16743) (regTwo!33998 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878241))

(assert (= (and b!6877843 ((_ is Concat!25588) (regTwo!33998 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878242))

(assert (= (and b!6877843 ((_ is Star!16743) (regTwo!33998 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878243))

(assert (= (and b!6877843 ((_ is Union!16743) (regTwo!33998 (regOne!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878244))

(declare-fun e!4145433 () Bool)

(assert (=> b!6877812 (= tp!1890299 e!4145433)))

(declare-fun b!6878245 () Bool)

(assert (=> b!6878245 (= e!4145433 tp_is_empty!42717)))

(declare-fun b!6878248 () Bool)

(declare-fun tp!1890516 () Bool)

(declare-fun tp!1890517 () Bool)

(assert (=> b!6878248 (= e!4145433 (and tp!1890516 tp!1890517))))

(declare-fun b!6878247 () Bool)

(declare-fun tp!1890519 () Bool)

(assert (=> b!6878247 (= e!4145433 tp!1890519)))

(declare-fun b!6878246 () Bool)

(declare-fun tp!1890518 () Bool)

(declare-fun tp!1890520 () Bool)

(assert (=> b!6878246 (= e!4145433 (and tp!1890518 tp!1890520))))

(assert (= (and b!6877812 ((_ is ElementMatch!16743) (reg!17072 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878245))

(assert (= (and b!6877812 ((_ is Concat!25588) (reg!17072 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878246))

(assert (= (and b!6877812 ((_ is Star!16743) (reg!17072 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878247))

(assert (= (and b!6877812 ((_ is Union!16743) (reg!17072 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878248))

(declare-fun e!4145434 () Bool)

(assert (=> b!6877803 (= tp!1890288 e!4145434)))

(declare-fun b!6878249 () Bool)

(assert (=> b!6878249 (= e!4145434 tp_is_empty!42717)))

(declare-fun b!6878252 () Bool)

(declare-fun tp!1890521 () Bool)

(declare-fun tp!1890522 () Bool)

(assert (=> b!6878252 (= e!4145434 (and tp!1890521 tp!1890522))))

(declare-fun b!6878251 () Bool)

(declare-fun tp!1890524 () Bool)

(assert (=> b!6878251 (= e!4145434 tp!1890524)))

(declare-fun b!6878250 () Bool)

(declare-fun tp!1890523 () Bool)

(declare-fun tp!1890525 () Bool)

(assert (=> b!6878250 (= e!4145434 (and tp!1890523 tp!1890525))))

(assert (= (and b!6877803 ((_ is ElementMatch!16743) (regOne!33998 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878249))

(assert (= (and b!6877803 ((_ is Concat!25588) (regOne!33998 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878250))

(assert (= (and b!6877803 ((_ is Star!16743) (regOne!33998 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878251))

(assert (= (and b!6877803 ((_ is Union!16743) (regOne!33998 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878252))

(declare-fun e!4145435 () Bool)

(assert (=> b!6877803 (= tp!1890290 e!4145435)))

(declare-fun b!6878253 () Bool)

(assert (=> b!6878253 (= e!4145435 tp_is_empty!42717)))

(declare-fun b!6878256 () Bool)

(declare-fun tp!1890526 () Bool)

(declare-fun tp!1890527 () Bool)

(assert (=> b!6878256 (= e!4145435 (and tp!1890526 tp!1890527))))

(declare-fun b!6878255 () Bool)

(declare-fun tp!1890529 () Bool)

(assert (=> b!6878255 (= e!4145435 tp!1890529)))

(declare-fun b!6878254 () Bool)

(declare-fun tp!1890528 () Bool)

(declare-fun tp!1890530 () Bool)

(assert (=> b!6878254 (= e!4145435 (and tp!1890528 tp!1890530))))

(assert (= (and b!6877803 ((_ is ElementMatch!16743) (regTwo!33998 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878253))

(assert (= (and b!6877803 ((_ is Concat!25588) (regTwo!33998 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878254))

(assert (= (and b!6877803 ((_ is Star!16743) (regTwo!33998 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878255))

(assert (= (and b!6877803 ((_ is Union!16743) (regTwo!33998 (regOne!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878256))

(declare-fun e!4145436 () Bool)

(assert (=> b!6877828 (= tp!1890320 e!4145436)))

(declare-fun b!6878257 () Bool)

(assert (=> b!6878257 (= e!4145436 tp_is_empty!42717)))

(declare-fun b!6878260 () Bool)

(declare-fun tp!1890531 () Bool)

(declare-fun tp!1890532 () Bool)

(assert (=> b!6878260 (= e!4145436 (and tp!1890531 tp!1890532))))

(declare-fun b!6878259 () Bool)

(declare-fun tp!1890534 () Bool)

(assert (=> b!6878259 (= e!4145436 tp!1890534)))

(declare-fun b!6878258 () Bool)

(declare-fun tp!1890533 () Bool)

(declare-fun tp!1890535 () Bool)

(assert (=> b!6878258 (= e!4145436 (and tp!1890533 tp!1890535))))

(assert (= (and b!6877828 ((_ is ElementMatch!16743) (regOne!33998 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878257))

(assert (= (and b!6877828 ((_ is Concat!25588) (regOne!33998 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878258))

(assert (= (and b!6877828 ((_ is Star!16743) (regOne!33998 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878259))

(assert (= (and b!6877828 ((_ is Union!16743) (regOne!33998 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878260))

(declare-fun e!4145437 () Bool)

(assert (=> b!6877828 (= tp!1890322 e!4145437)))

(declare-fun b!6878261 () Bool)

(assert (=> b!6878261 (= e!4145437 tp_is_empty!42717)))

(declare-fun b!6878264 () Bool)

(declare-fun tp!1890536 () Bool)

(declare-fun tp!1890537 () Bool)

(assert (=> b!6878264 (= e!4145437 (and tp!1890536 tp!1890537))))

(declare-fun b!6878263 () Bool)

(declare-fun tp!1890539 () Bool)

(assert (=> b!6878263 (= e!4145437 tp!1890539)))

(declare-fun b!6878262 () Bool)

(declare-fun tp!1890538 () Bool)

(declare-fun tp!1890540 () Bool)

(assert (=> b!6878262 (= e!4145437 (and tp!1890538 tp!1890540))))

(assert (= (and b!6877828 ((_ is ElementMatch!16743) (regTwo!33998 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878261))

(assert (= (and b!6877828 ((_ is Concat!25588) (regTwo!33998 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878262))

(assert (= (and b!6877828 ((_ is Star!16743) (regTwo!33998 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878263))

(assert (= (and b!6877828 ((_ is Union!16743) (regTwo!33998 (h!72821 (t!380240 (exprs!6627 c!9978)))))) b!6878264))

(declare-fun e!4145438 () Bool)

(assert (=> b!6877811 (= tp!1890298 e!4145438)))

(declare-fun b!6878265 () Bool)

(assert (=> b!6878265 (= e!4145438 tp_is_empty!42717)))

(declare-fun b!6878268 () Bool)

(declare-fun tp!1890541 () Bool)

(declare-fun tp!1890542 () Bool)

(assert (=> b!6878268 (= e!4145438 (and tp!1890541 tp!1890542))))

(declare-fun b!6878267 () Bool)

(declare-fun tp!1890544 () Bool)

(assert (=> b!6878267 (= e!4145438 tp!1890544)))

(declare-fun b!6878266 () Bool)

(declare-fun tp!1890543 () Bool)

(declare-fun tp!1890545 () Bool)

(assert (=> b!6878266 (= e!4145438 (and tp!1890543 tp!1890545))))

(assert (= (and b!6877811 ((_ is ElementMatch!16743) (regOne!33998 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878265))

(assert (= (and b!6877811 ((_ is Concat!25588) (regOne!33998 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878266))

(assert (= (and b!6877811 ((_ is Star!16743) (regOne!33998 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878267))

(assert (= (and b!6877811 ((_ is Union!16743) (regOne!33998 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878268))

(declare-fun e!4145439 () Bool)

(assert (=> b!6877811 (= tp!1890300 e!4145439)))

(declare-fun b!6878269 () Bool)

(assert (=> b!6878269 (= e!4145439 tp_is_empty!42717)))

(declare-fun b!6878272 () Bool)

(declare-fun tp!1890546 () Bool)

(declare-fun tp!1890547 () Bool)

(assert (=> b!6878272 (= e!4145439 (and tp!1890546 tp!1890547))))

(declare-fun b!6878271 () Bool)

(declare-fun tp!1890549 () Bool)

(assert (=> b!6878271 (= e!4145439 tp!1890549)))

(declare-fun b!6878270 () Bool)

(declare-fun tp!1890548 () Bool)

(declare-fun tp!1890550 () Bool)

(assert (=> b!6878270 (= e!4145439 (and tp!1890548 tp!1890550))))

(assert (= (and b!6877811 ((_ is ElementMatch!16743) (regTwo!33998 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878269))

(assert (= (and b!6877811 ((_ is Concat!25588) (regTwo!33998 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878270))

(assert (= (and b!6877811 ((_ is Star!16743) (regTwo!33998 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878271))

(assert (= (and b!6877811 ((_ is Union!16743) (regTwo!33998 (reg!17072 (h!72821 (exprs!6627 c!9978)))))) b!6878272))

(declare-fun e!4145440 () Bool)

(assert (=> b!6877836 (= tp!1890330 e!4145440)))

(declare-fun b!6878273 () Bool)

(assert (=> b!6878273 (= e!4145440 tp_is_empty!42717)))

(declare-fun b!6878276 () Bool)

(declare-fun tp!1890551 () Bool)

(declare-fun tp!1890552 () Bool)

(assert (=> b!6878276 (= e!4145440 (and tp!1890551 tp!1890552))))

(declare-fun b!6878275 () Bool)

(declare-fun tp!1890554 () Bool)

(assert (=> b!6878275 (= e!4145440 tp!1890554)))

(declare-fun b!6878274 () Bool)

(declare-fun tp!1890553 () Bool)

(declare-fun tp!1890555 () Bool)

(assert (=> b!6878274 (= e!4145440 (and tp!1890553 tp!1890555))))

(assert (= (and b!6877836 ((_ is ElementMatch!16743) (h!72821 (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632))))))) b!6878273))

(assert (= (and b!6877836 ((_ is Concat!25588) (h!72821 (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632))))))) b!6878274))

(assert (= (and b!6877836 ((_ is Star!16743) (h!72821 (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632))))))) b!6878275))

(assert (= (and b!6877836 ((_ is Union!16743) (h!72821 (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632))))))) b!6878276))

(declare-fun b!6878277 () Bool)

(declare-fun e!4145441 () Bool)

(declare-fun tp!1890556 () Bool)

(declare-fun tp!1890557 () Bool)

(assert (=> b!6878277 (= e!4145441 (and tp!1890556 tp!1890557))))

(assert (=> b!6877836 (= tp!1890331 e!4145441)))

(assert (= (and b!6877836 ((_ is Cons!66373) (t!380240 (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632))))))) b!6878277))

(declare-fun e!4145442 () Bool)

(assert (=> b!6877859 (= tp!1890356 e!4145442)))

(declare-fun b!6878278 () Bool)

(assert (=> b!6878278 (= e!4145442 tp_is_empty!42717)))

(declare-fun b!6878281 () Bool)

(declare-fun tp!1890558 () Bool)

(declare-fun tp!1890559 () Bool)

(assert (=> b!6878281 (= e!4145442 (and tp!1890558 tp!1890559))))

(declare-fun b!6878280 () Bool)

(declare-fun tp!1890561 () Bool)

(assert (=> b!6878280 (= e!4145442 tp!1890561)))

(declare-fun b!6878279 () Bool)

(declare-fun tp!1890560 () Bool)

(declare-fun tp!1890562 () Bool)

(assert (=> b!6878279 (= e!4145442 (and tp!1890560 tp!1890562))))

(assert (= (and b!6877859 ((_ is ElementMatch!16743) (regOne!33999 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878278))

(assert (= (and b!6877859 ((_ is Concat!25588) (regOne!33999 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878279))

(assert (= (and b!6877859 ((_ is Star!16743) (regOne!33999 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878280))

(assert (= (and b!6877859 ((_ is Union!16743) (regOne!33999 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878281))

(declare-fun e!4145443 () Bool)

(assert (=> b!6877859 (= tp!1890357 e!4145443)))

(declare-fun b!6878282 () Bool)

(assert (=> b!6878282 (= e!4145443 tp_is_empty!42717)))

(declare-fun b!6878285 () Bool)

(declare-fun tp!1890563 () Bool)

(declare-fun tp!1890564 () Bool)

(assert (=> b!6878285 (= e!4145443 (and tp!1890563 tp!1890564))))

(declare-fun b!6878284 () Bool)

(declare-fun tp!1890566 () Bool)

(assert (=> b!6878284 (= e!4145443 tp!1890566)))

(declare-fun b!6878283 () Bool)

(declare-fun tp!1890565 () Bool)

(declare-fun tp!1890567 () Bool)

(assert (=> b!6878283 (= e!4145443 (and tp!1890565 tp!1890567))))

(assert (= (and b!6877859 ((_ is ElementMatch!16743) (regTwo!33999 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878282))

(assert (= (and b!6877859 ((_ is Concat!25588) (regTwo!33999 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878283))

(assert (= (and b!6877859 ((_ is Star!16743) (regTwo!33999 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878284))

(assert (= (and b!6877859 ((_ is Union!16743) (regTwo!33999 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878285))

(declare-fun b!6878287 () Bool)

(declare-fun e!4145445 () Bool)

(declare-fun tp!1890568 () Bool)

(assert (=> b!6878287 (= e!4145445 tp!1890568)))

(declare-fun b!6878286 () Bool)

(declare-fun e!4145444 () Bool)

(declare-fun tp!1890569 () Bool)

(assert (=> b!6878286 (= e!4145444 (and (inv!85104 (h!72822 (t!380241 (t!380241 (t!380241 (t!380241 zl!1632)))))) e!4145445 tp!1890569))))

(assert (=> b!6877850 (= tp!1890350 e!4145444)))

(assert (= b!6878286 b!6878287))

(assert (= (and b!6877850 ((_ is Cons!66374) (t!380241 (t!380241 (t!380241 (t!380241 zl!1632)))))) b!6878286))

(declare-fun m!7605440 () Bool)

(assert (=> b!6878286 m!7605440))

(declare-fun e!4145446 () Bool)

(assert (=> b!6877858 (= tp!1890359 e!4145446)))

(declare-fun b!6878288 () Bool)

(assert (=> b!6878288 (= e!4145446 tp_is_empty!42717)))

(declare-fun b!6878291 () Bool)

(declare-fun tp!1890570 () Bool)

(declare-fun tp!1890571 () Bool)

(assert (=> b!6878291 (= e!4145446 (and tp!1890570 tp!1890571))))

(declare-fun b!6878290 () Bool)

(declare-fun tp!1890573 () Bool)

(assert (=> b!6878290 (= e!4145446 tp!1890573)))

(declare-fun b!6878289 () Bool)

(declare-fun tp!1890572 () Bool)

(declare-fun tp!1890574 () Bool)

(assert (=> b!6878289 (= e!4145446 (and tp!1890572 tp!1890574))))

(assert (= (and b!6877858 ((_ is ElementMatch!16743) (reg!17072 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878288))

(assert (= (and b!6877858 ((_ is Concat!25588) (reg!17072 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878289))

(assert (= (and b!6877858 ((_ is Star!16743) (reg!17072 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878290))

(assert (= (and b!6877858 ((_ is Union!16743) (reg!17072 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878291))

(declare-fun b!6878292 () Bool)

(declare-fun e!4145447 () Bool)

(declare-fun tp!1890575 () Bool)

(declare-fun tp!1890576 () Bool)

(assert (=> b!6878292 (= e!4145447 (and tp!1890575 tp!1890576))))

(assert (=> b!6877851 (= tp!1890349 e!4145447)))

(assert (= (and b!6877851 ((_ is Cons!66373) (exprs!6627 (h!72822 (t!380241 (t!380241 (t!380241 zl!1632))))))) b!6878292))

(declare-fun e!4145448 () Bool)

(assert (=> b!6877834 (= tp!1890328 e!4145448)))

(declare-fun b!6878293 () Bool)

(assert (=> b!6878293 (= e!4145448 tp_is_empty!42717)))

(declare-fun b!6878296 () Bool)

(declare-fun tp!1890577 () Bool)

(declare-fun tp!1890578 () Bool)

(assert (=> b!6878296 (= e!4145448 (and tp!1890577 tp!1890578))))

(declare-fun b!6878295 () Bool)

(declare-fun tp!1890580 () Bool)

(assert (=> b!6878295 (= e!4145448 tp!1890580)))

(declare-fun b!6878294 () Bool)

(declare-fun tp!1890579 () Bool)

(declare-fun tp!1890581 () Bool)

(assert (=> b!6878294 (= e!4145448 (and tp!1890579 tp!1890581))))

(assert (= (and b!6877834 ((_ is ElementMatch!16743) (reg!17072 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878293))

(assert (= (and b!6877834 ((_ is Concat!25588) (reg!17072 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878294))

(assert (= (and b!6877834 ((_ is Star!16743) (reg!17072 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878295))

(assert (= (and b!6877834 ((_ is Union!16743) (reg!17072 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878296))

(declare-fun e!4145449 () Bool)

(assert (=> b!6877835 (= tp!1890325 e!4145449)))

(declare-fun b!6878297 () Bool)

(assert (=> b!6878297 (= e!4145449 tp_is_empty!42717)))

(declare-fun b!6878300 () Bool)

(declare-fun tp!1890582 () Bool)

(declare-fun tp!1890583 () Bool)

(assert (=> b!6878300 (= e!4145449 (and tp!1890582 tp!1890583))))

(declare-fun b!6878299 () Bool)

(declare-fun tp!1890585 () Bool)

(assert (=> b!6878299 (= e!4145449 tp!1890585)))

(declare-fun b!6878298 () Bool)

(declare-fun tp!1890584 () Bool)

(declare-fun tp!1890586 () Bool)

(assert (=> b!6878298 (= e!4145449 (and tp!1890584 tp!1890586))))

(assert (= (and b!6877835 ((_ is ElementMatch!16743) (regOne!33999 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878297))

(assert (= (and b!6877835 ((_ is Concat!25588) (regOne!33999 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878298))

(assert (= (and b!6877835 ((_ is Star!16743) (regOne!33999 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878299))

(assert (= (and b!6877835 ((_ is Union!16743) (regOne!33999 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878300))

(declare-fun e!4145450 () Bool)

(assert (=> b!6877835 (= tp!1890326 e!4145450)))

(declare-fun b!6878301 () Bool)

(assert (=> b!6878301 (= e!4145450 tp_is_empty!42717)))

(declare-fun b!6878304 () Bool)

(declare-fun tp!1890587 () Bool)

(declare-fun tp!1890588 () Bool)

(assert (=> b!6878304 (= e!4145450 (and tp!1890587 tp!1890588))))

(declare-fun b!6878303 () Bool)

(declare-fun tp!1890590 () Bool)

(assert (=> b!6878303 (= e!4145450 tp!1890590)))

(declare-fun b!6878302 () Bool)

(declare-fun tp!1890589 () Bool)

(declare-fun tp!1890591 () Bool)

(assert (=> b!6878302 (= e!4145450 (and tp!1890589 tp!1890591))))

(assert (= (and b!6877835 ((_ is ElementMatch!16743) (regTwo!33999 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878301))

(assert (= (and b!6877835 ((_ is Concat!25588) (regTwo!33999 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878302))

(assert (= (and b!6877835 ((_ is Star!16743) (regTwo!33999 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878303))

(assert (= (and b!6877835 ((_ is Union!16743) (regTwo!33999 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878304))

(declare-fun e!4145451 () Bool)

(assert (=> b!6877857 (= tp!1890358 e!4145451)))

(declare-fun b!6878305 () Bool)

(assert (=> b!6878305 (= e!4145451 tp_is_empty!42717)))

(declare-fun b!6878308 () Bool)

(declare-fun tp!1890592 () Bool)

(declare-fun tp!1890593 () Bool)

(assert (=> b!6878308 (= e!4145451 (and tp!1890592 tp!1890593))))

(declare-fun b!6878307 () Bool)

(declare-fun tp!1890595 () Bool)

(assert (=> b!6878307 (= e!4145451 tp!1890595)))

(declare-fun b!6878306 () Bool)

(declare-fun tp!1890594 () Bool)

(declare-fun tp!1890596 () Bool)

(assert (=> b!6878306 (= e!4145451 (and tp!1890594 tp!1890596))))

(assert (= (and b!6877857 ((_ is ElementMatch!16743) (regOne!33998 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878305))

(assert (= (and b!6877857 ((_ is Concat!25588) (regOne!33998 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878306))

(assert (= (and b!6877857 ((_ is Star!16743) (regOne!33998 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878307))

(assert (= (and b!6877857 ((_ is Union!16743) (regOne!33998 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878308))

(declare-fun e!4145452 () Bool)

(assert (=> b!6877857 (= tp!1890360 e!4145452)))

(declare-fun b!6878309 () Bool)

(assert (=> b!6878309 (= e!4145452 tp_is_empty!42717)))

(declare-fun b!6878312 () Bool)

(declare-fun tp!1890597 () Bool)

(declare-fun tp!1890598 () Bool)

(assert (=> b!6878312 (= e!4145452 (and tp!1890597 tp!1890598))))

(declare-fun b!6878311 () Bool)

(declare-fun tp!1890600 () Bool)

(assert (=> b!6878311 (= e!4145452 tp!1890600)))

(declare-fun b!6878310 () Bool)

(declare-fun tp!1890599 () Bool)

(declare-fun tp!1890601 () Bool)

(assert (=> b!6878310 (= e!4145452 (and tp!1890599 tp!1890601))))

(assert (= (and b!6877857 ((_ is ElementMatch!16743) (regTwo!33998 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878309))

(assert (= (and b!6877857 ((_ is Concat!25588) (regTwo!33998 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878310))

(assert (= (and b!6877857 ((_ is Star!16743) (regTwo!33998 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878311))

(assert (= (and b!6877857 ((_ is Union!16743) (regTwo!33998 (regTwo!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878312))

(declare-fun e!4145453 () Bool)

(assert (=> b!6877833 (= tp!1890327 e!4145453)))

(declare-fun b!6878313 () Bool)

(assert (=> b!6878313 (= e!4145453 tp_is_empty!42717)))

(declare-fun b!6878316 () Bool)

(declare-fun tp!1890602 () Bool)

(declare-fun tp!1890603 () Bool)

(assert (=> b!6878316 (= e!4145453 (and tp!1890602 tp!1890603))))

(declare-fun b!6878315 () Bool)

(declare-fun tp!1890605 () Bool)

(assert (=> b!6878315 (= e!4145453 tp!1890605)))

(declare-fun b!6878314 () Bool)

(declare-fun tp!1890604 () Bool)

(declare-fun tp!1890606 () Bool)

(assert (=> b!6878314 (= e!4145453 (and tp!1890604 tp!1890606))))

(assert (= (and b!6877833 ((_ is ElementMatch!16743) (regOne!33998 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878313))

(assert (= (and b!6877833 ((_ is Concat!25588) (regOne!33998 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878314))

(assert (= (and b!6877833 ((_ is Star!16743) (regOne!33998 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878315))

(assert (= (and b!6877833 ((_ is Union!16743) (regOne!33998 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878316))

(declare-fun e!4145454 () Bool)

(assert (=> b!6877833 (= tp!1890329 e!4145454)))

(declare-fun b!6878317 () Bool)

(assert (=> b!6878317 (= e!4145454 tp_is_empty!42717)))

(declare-fun b!6878320 () Bool)

(declare-fun tp!1890607 () Bool)

(declare-fun tp!1890608 () Bool)

(assert (=> b!6878320 (= e!4145454 (and tp!1890607 tp!1890608))))

(declare-fun b!6878319 () Bool)

(declare-fun tp!1890610 () Bool)

(assert (=> b!6878319 (= e!4145454 tp!1890610)))

(declare-fun b!6878318 () Bool)

(declare-fun tp!1890609 () Bool)

(declare-fun tp!1890611 () Bool)

(assert (=> b!6878318 (= e!4145454 (and tp!1890609 tp!1890611))))

(assert (= (and b!6877833 ((_ is ElementMatch!16743) (regTwo!33998 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878317))

(assert (= (and b!6877833 ((_ is Concat!25588) (regTwo!33998 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878318))

(assert (= (and b!6877833 ((_ is Star!16743) (regTwo!33998 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878319))

(assert (= (and b!6877833 ((_ is Union!16743) (regTwo!33998 (reg!17072 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878320))

(declare-fun e!4145455 () Bool)

(assert (=> b!6877818 (= tp!1890306 e!4145455)))

(declare-fun b!6878321 () Bool)

(assert (=> b!6878321 (= e!4145455 tp_is_empty!42717)))

(declare-fun b!6878324 () Bool)

(declare-fun tp!1890612 () Bool)

(declare-fun tp!1890613 () Bool)

(assert (=> b!6878324 (= e!4145455 (and tp!1890612 tp!1890613))))

(declare-fun b!6878323 () Bool)

(declare-fun tp!1890615 () Bool)

(assert (=> b!6878323 (= e!4145455 tp!1890615)))

(declare-fun b!6878322 () Bool)

(declare-fun tp!1890614 () Bool)

(declare-fun tp!1890616 () Bool)

(assert (=> b!6878322 (= e!4145455 (and tp!1890614 tp!1890616))))

(assert (= (and b!6877818 ((_ is ElementMatch!16743) (h!72821 (t!380240 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878321))

(assert (= (and b!6877818 ((_ is Concat!25588) (h!72821 (t!380240 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878322))

(assert (= (and b!6877818 ((_ is Star!16743) (h!72821 (t!380240 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878323))

(assert (= (and b!6877818 ((_ is Union!16743) (h!72821 (t!380240 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878324))

(declare-fun b!6878325 () Bool)

(declare-fun e!4145456 () Bool)

(declare-fun tp!1890617 () Bool)

(declare-fun tp!1890618 () Bool)

(assert (=> b!6878325 (= e!4145456 (and tp!1890617 tp!1890618))))

(assert (=> b!6877818 (= tp!1890307 e!4145456)))

(assert (= (and b!6877818 ((_ is Cons!66373) (t!380240 (t!380240 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878325))

(declare-fun e!4145457 () Bool)

(assert (=> b!6877825 (= tp!1890316 e!4145457)))

(declare-fun b!6878326 () Bool)

(assert (=> b!6878326 (= e!4145457 tp_is_empty!42717)))

(declare-fun b!6878329 () Bool)

(declare-fun tp!1890619 () Bool)

(declare-fun tp!1890620 () Bool)

(assert (=> b!6878329 (= e!4145457 (and tp!1890619 tp!1890620))))

(declare-fun b!6878328 () Bool)

(declare-fun tp!1890622 () Bool)

(assert (=> b!6878328 (= e!4145457 tp!1890622)))

(declare-fun b!6878327 () Bool)

(declare-fun tp!1890621 () Bool)

(declare-fun tp!1890623 () Bool)

(assert (=> b!6878327 (= e!4145457 (and tp!1890621 tp!1890623))))

(assert (= (and b!6877825 ((_ is ElementMatch!16743) (reg!17072 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878326))

(assert (= (and b!6877825 ((_ is Concat!25588) (reg!17072 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878327))

(assert (= (and b!6877825 ((_ is Star!16743) (reg!17072 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878328))

(assert (= (and b!6877825 ((_ is Union!16743) (reg!17072 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878329))

(declare-fun e!4145458 () Bool)

(assert (=> b!6877841 (= tp!1890337 e!4145458)))

(declare-fun b!6878330 () Bool)

(assert (=> b!6878330 (= e!4145458 tp_is_empty!42717)))

(declare-fun b!6878333 () Bool)

(declare-fun tp!1890624 () Bool)

(declare-fun tp!1890625 () Bool)

(assert (=> b!6878333 (= e!4145458 (and tp!1890624 tp!1890625))))

(declare-fun b!6878332 () Bool)

(declare-fun tp!1890627 () Bool)

(assert (=> b!6878332 (= e!4145458 tp!1890627)))

(declare-fun b!6878331 () Bool)

(declare-fun tp!1890626 () Bool)

(declare-fun tp!1890628 () Bool)

(assert (=> b!6878331 (= e!4145458 (and tp!1890626 tp!1890628))))

(assert (= (and b!6877841 ((_ is ElementMatch!16743) (h!72821 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878330))

(assert (= (and b!6877841 ((_ is Concat!25588) (h!72821 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878331))

(assert (= (and b!6877841 ((_ is Star!16743) (h!72821 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878332))

(assert (= (and b!6877841 ((_ is Union!16743) (h!72821 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878333))

(declare-fun b!6878334 () Bool)

(declare-fun e!4145459 () Bool)

(declare-fun tp!1890629 () Bool)

(declare-fun tp!1890630 () Bool)

(assert (=> b!6878334 (= e!4145459 (and tp!1890629 tp!1890630))))

(assert (=> b!6877841 (= tp!1890338 e!4145459)))

(assert (= (and b!6877841 ((_ is Cons!66373) (t!380240 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878334))

(declare-fun e!4145460 () Bool)

(assert (=> b!6877826 (= tp!1890313 e!4145460)))

(declare-fun b!6878335 () Bool)

(assert (=> b!6878335 (= e!4145460 tp_is_empty!42717)))

(declare-fun b!6878338 () Bool)

(declare-fun tp!1890631 () Bool)

(declare-fun tp!1890632 () Bool)

(assert (=> b!6878338 (= e!4145460 (and tp!1890631 tp!1890632))))

(declare-fun b!6878337 () Bool)

(declare-fun tp!1890634 () Bool)

(assert (=> b!6878337 (= e!4145460 tp!1890634)))

(declare-fun b!6878336 () Bool)

(declare-fun tp!1890633 () Bool)

(declare-fun tp!1890635 () Bool)

(assert (=> b!6878336 (= e!4145460 (and tp!1890633 tp!1890635))))

(assert (= (and b!6877826 ((_ is ElementMatch!16743) (regOne!33999 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878335))

(assert (= (and b!6877826 ((_ is Concat!25588) (regOne!33999 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878336))

(assert (= (and b!6877826 ((_ is Star!16743) (regOne!33999 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878337))

(assert (= (and b!6877826 ((_ is Union!16743) (regOne!33999 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878338))

(declare-fun e!4145461 () Bool)

(assert (=> b!6877826 (= tp!1890314 e!4145461)))

(declare-fun b!6878339 () Bool)

(assert (=> b!6878339 (= e!4145461 tp_is_empty!42717)))

(declare-fun b!6878342 () Bool)

(declare-fun tp!1890636 () Bool)

(declare-fun tp!1890637 () Bool)

(assert (=> b!6878342 (= e!4145461 (and tp!1890636 tp!1890637))))

(declare-fun b!6878341 () Bool)

(declare-fun tp!1890639 () Bool)

(assert (=> b!6878341 (= e!4145461 tp!1890639)))

(declare-fun b!6878340 () Bool)

(declare-fun tp!1890638 () Bool)

(declare-fun tp!1890640 () Bool)

(assert (=> b!6878340 (= e!4145461 (and tp!1890638 tp!1890640))))

(assert (= (and b!6877826 ((_ is ElementMatch!16743) (regTwo!33999 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878339))

(assert (= (and b!6877826 ((_ is Concat!25588) (regTwo!33999 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878340))

(assert (= (and b!6877826 ((_ is Star!16743) (regTwo!33999 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878341))

(assert (= (and b!6877826 ((_ is Union!16743) (regTwo!33999 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878342))

(declare-fun e!4145462 () Bool)

(assert (=> b!6877808 (= tp!1890294 e!4145462)))

(declare-fun b!6878343 () Bool)

(assert (=> b!6878343 (= e!4145462 tp_is_empty!42717)))

(declare-fun b!6878346 () Bool)

(declare-fun tp!1890641 () Bool)

(declare-fun tp!1890642 () Bool)

(assert (=> b!6878346 (= e!4145462 (and tp!1890641 tp!1890642))))

(declare-fun b!6878345 () Bool)

(declare-fun tp!1890644 () Bool)

(assert (=> b!6878345 (= e!4145462 tp!1890644)))

(declare-fun b!6878344 () Bool)

(declare-fun tp!1890643 () Bool)

(declare-fun tp!1890645 () Bool)

(assert (=> b!6878344 (= e!4145462 (and tp!1890643 tp!1890645))))

(assert (= (and b!6877808 ((_ is ElementMatch!16743) (reg!17072 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878343))

(assert (= (and b!6877808 ((_ is Concat!25588) (reg!17072 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878344))

(assert (= (and b!6877808 ((_ is Star!16743) (reg!17072 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878345))

(assert (= (and b!6877808 ((_ is Union!16743) (reg!17072 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878346))

(declare-fun e!4145463 () Bool)

(assert (=> b!6877824 (= tp!1890315 e!4145463)))

(declare-fun b!6878347 () Bool)

(assert (=> b!6878347 (= e!4145463 tp_is_empty!42717)))

(declare-fun b!6878350 () Bool)

(declare-fun tp!1890646 () Bool)

(declare-fun tp!1890647 () Bool)

(assert (=> b!6878350 (= e!4145463 (and tp!1890646 tp!1890647))))

(declare-fun b!6878349 () Bool)

(declare-fun tp!1890649 () Bool)

(assert (=> b!6878349 (= e!4145463 tp!1890649)))

(declare-fun b!6878348 () Bool)

(declare-fun tp!1890648 () Bool)

(declare-fun tp!1890650 () Bool)

(assert (=> b!6878348 (= e!4145463 (and tp!1890648 tp!1890650))))

(assert (= (and b!6877824 ((_ is ElementMatch!16743) (regOne!33998 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878347))

(assert (= (and b!6877824 ((_ is Concat!25588) (regOne!33998 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878348))

(assert (= (and b!6877824 ((_ is Star!16743) (regOne!33998 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878349))

(assert (= (and b!6877824 ((_ is Union!16743) (regOne!33998 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878350))

(declare-fun e!4145464 () Bool)

(assert (=> b!6877824 (= tp!1890317 e!4145464)))

(declare-fun b!6878351 () Bool)

(assert (=> b!6878351 (= e!4145464 tp_is_empty!42717)))

(declare-fun b!6878354 () Bool)

(declare-fun tp!1890651 () Bool)

(declare-fun tp!1890652 () Bool)

(assert (=> b!6878354 (= e!4145464 (and tp!1890651 tp!1890652))))

(declare-fun b!6878353 () Bool)

(declare-fun tp!1890654 () Bool)

(assert (=> b!6878353 (= e!4145464 tp!1890654)))

(declare-fun b!6878352 () Bool)

(declare-fun tp!1890653 () Bool)

(declare-fun tp!1890655 () Bool)

(assert (=> b!6878352 (= e!4145464 (and tp!1890653 tp!1890655))))

(assert (= (and b!6877824 ((_ is ElementMatch!16743) (regTwo!33998 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878351))

(assert (= (and b!6877824 ((_ is Concat!25588) (regTwo!33998 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878352))

(assert (= (and b!6877824 ((_ is Star!16743) (regTwo!33998 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878353))

(assert (= (and b!6877824 ((_ is Union!16743) (regTwo!33998 (regTwo!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878354))

(declare-fun e!4145465 () Bool)

(assert (=> b!6877849 (= tp!1890344 e!4145465)))

(declare-fun b!6878355 () Bool)

(assert (=> b!6878355 (= e!4145465 tp_is_empty!42717)))

(declare-fun b!6878358 () Bool)

(declare-fun tp!1890656 () Bool)

(declare-fun tp!1890657 () Bool)

(assert (=> b!6878358 (= e!4145465 (and tp!1890656 tp!1890657))))

(declare-fun b!6878357 () Bool)

(declare-fun tp!1890659 () Bool)

(assert (=> b!6878357 (= e!4145465 tp!1890659)))

(declare-fun b!6878356 () Bool)

(declare-fun tp!1890658 () Bool)

(declare-fun tp!1890660 () Bool)

(assert (=> b!6878356 (= e!4145465 (and tp!1890658 tp!1890660))))

(assert (= (and b!6877849 ((_ is ElementMatch!16743) (regOne!33999 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878355))

(assert (= (and b!6877849 ((_ is Concat!25588) (regOne!33999 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878356))

(assert (= (and b!6877849 ((_ is Star!16743) (regOne!33999 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878357))

(assert (= (and b!6877849 ((_ is Union!16743) (regOne!33999 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878358))

(declare-fun e!4145466 () Bool)

(assert (=> b!6877849 (= tp!1890345 e!4145466)))

(declare-fun b!6878359 () Bool)

(assert (=> b!6878359 (= e!4145466 tp_is_empty!42717)))

(declare-fun b!6878362 () Bool)

(declare-fun tp!1890661 () Bool)

(declare-fun tp!1890662 () Bool)

(assert (=> b!6878362 (= e!4145466 (and tp!1890661 tp!1890662))))

(declare-fun b!6878361 () Bool)

(declare-fun tp!1890664 () Bool)

(assert (=> b!6878361 (= e!4145466 tp!1890664)))

(declare-fun b!6878360 () Bool)

(declare-fun tp!1890663 () Bool)

(declare-fun tp!1890665 () Bool)

(assert (=> b!6878360 (= e!4145466 (and tp!1890663 tp!1890665))))

(assert (= (and b!6877849 ((_ is ElementMatch!16743) (regTwo!33999 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878359))

(assert (= (and b!6877849 ((_ is Concat!25588) (regTwo!33999 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878360))

(assert (= (and b!6877849 ((_ is Star!16743) (regTwo!33999 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878361))

(assert (= (and b!6877849 ((_ is Union!16743) (regTwo!33999 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878362))

(declare-fun e!4145467 () Bool)

(assert (=> b!6877809 (= tp!1890291 e!4145467)))

(declare-fun b!6878363 () Bool)

(assert (=> b!6878363 (= e!4145467 tp_is_empty!42717)))

(declare-fun b!6878366 () Bool)

(declare-fun tp!1890666 () Bool)

(declare-fun tp!1890667 () Bool)

(assert (=> b!6878366 (= e!4145467 (and tp!1890666 tp!1890667))))

(declare-fun b!6878365 () Bool)

(declare-fun tp!1890669 () Bool)

(assert (=> b!6878365 (= e!4145467 tp!1890669)))

(declare-fun b!6878364 () Bool)

(declare-fun tp!1890668 () Bool)

(declare-fun tp!1890670 () Bool)

(assert (=> b!6878364 (= e!4145467 (and tp!1890668 tp!1890670))))

(assert (= (and b!6877809 ((_ is ElementMatch!16743) (regOne!33999 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878363))

(assert (= (and b!6877809 ((_ is Concat!25588) (regOne!33999 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878364))

(assert (= (and b!6877809 ((_ is Star!16743) (regOne!33999 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878365))

(assert (= (and b!6877809 ((_ is Union!16743) (regOne!33999 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878366))

(declare-fun e!4145468 () Bool)

(assert (=> b!6877809 (= tp!1890292 e!4145468)))

(declare-fun b!6878367 () Bool)

(assert (=> b!6878367 (= e!4145468 tp_is_empty!42717)))

(declare-fun b!6878370 () Bool)

(declare-fun tp!1890671 () Bool)

(declare-fun tp!1890672 () Bool)

(assert (=> b!6878370 (= e!4145468 (and tp!1890671 tp!1890672))))

(declare-fun b!6878369 () Bool)

(declare-fun tp!1890674 () Bool)

(assert (=> b!6878369 (= e!4145468 tp!1890674)))

(declare-fun b!6878368 () Bool)

(declare-fun tp!1890673 () Bool)

(declare-fun tp!1890675 () Bool)

(assert (=> b!6878368 (= e!4145468 (and tp!1890673 tp!1890675))))

(assert (= (and b!6877809 ((_ is ElementMatch!16743) (regTwo!33999 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878367))

(assert (= (and b!6877809 ((_ is Concat!25588) (regTwo!33999 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878368))

(assert (= (and b!6877809 ((_ is Star!16743) (regTwo!33999 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878369))

(assert (= (and b!6877809 ((_ is Union!16743) (regTwo!33999 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878370))

(declare-fun e!4145469 () Bool)

(assert (=> b!6877816 (= tp!1890304 e!4145469)))

(declare-fun b!6878371 () Bool)

(assert (=> b!6878371 (= e!4145469 tp_is_empty!42717)))

(declare-fun b!6878374 () Bool)

(declare-fun tp!1890676 () Bool)

(declare-fun tp!1890677 () Bool)

(assert (=> b!6878374 (= e!4145469 (and tp!1890676 tp!1890677))))

(declare-fun b!6878373 () Bool)

(declare-fun tp!1890679 () Bool)

(assert (=> b!6878373 (= e!4145469 tp!1890679)))

(declare-fun b!6878372 () Bool)

(declare-fun tp!1890678 () Bool)

(declare-fun tp!1890680 () Bool)

(assert (=> b!6878372 (= e!4145469 (and tp!1890678 tp!1890680))))

(assert (= (and b!6877816 ((_ is ElementMatch!16743) (reg!17072 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878371))

(assert (= (and b!6877816 ((_ is Concat!25588) (reg!17072 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878372))

(assert (= (and b!6877816 ((_ is Star!16743) (reg!17072 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878373))

(assert (= (and b!6877816 ((_ is Union!16743) (reg!17072 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878374))

(declare-fun e!4145470 () Bool)

(assert (=> b!6877807 (= tp!1890293 e!4145470)))

(declare-fun b!6878375 () Bool)

(assert (=> b!6878375 (= e!4145470 tp_is_empty!42717)))

(declare-fun b!6878378 () Bool)

(declare-fun tp!1890681 () Bool)

(declare-fun tp!1890682 () Bool)

(assert (=> b!6878378 (= e!4145470 (and tp!1890681 tp!1890682))))

(declare-fun b!6878377 () Bool)

(declare-fun tp!1890684 () Bool)

(assert (=> b!6878377 (= e!4145470 tp!1890684)))

(declare-fun b!6878376 () Bool)

(declare-fun tp!1890683 () Bool)

(declare-fun tp!1890685 () Bool)

(assert (=> b!6878376 (= e!4145470 (and tp!1890683 tp!1890685))))

(assert (= (and b!6877807 ((_ is ElementMatch!16743) (regOne!33998 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878375))

(assert (= (and b!6877807 ((_ is Concat!25588) (regOne!33998 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878376))

(assert (= (and b!6877807 ((_ is Star!16743) (regOne!33998 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878377))

(assert (= (and b!6877807 ((_ is Union!16743) (regOne!33998 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878378))

(declare-fun e!4145471 () Bool)

(assert (=> b!6877807 (= tp!1890295 e!4145471)))

(declare-fun b!6878379 () Bool)

(assert (=> b!6878379 (= e!4145471 tp_is_empty!42717)))

(declare-fun b!6878382 () Bool)

(declare-fun tp!1890686 () Bool)

(declare-fun tp!1890687 () Bool)

(assert (=> b!6878382 (= e!4145471 (and tp!1890686 tp!1890687))))

(declare-fun b!6878381 () Bool)

(declare-fun tp!1890689 () Bool)

(assert (=> b!6878381 (= e!4145471 tp!1890689)))

(declare-fun b!6878380 () Bool)

(declare-fun tp!1890688 () Bool)

(declare-fun tp!1890690 () Bool)

(assert (=> b!6878380 (= e!4145471 (and tp!1890688 tp!1890690))))

(assert (= (and b!6877807 ((_ is ElementMatch!16743) (regTwo!33998 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878379))

(assert (= (and b!6877807 ((_ is Concat!25588) (regTwo!33998 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878380))

(assert (= (and b!6877807 ((_ is Star!16743) (regTwo!33998 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878381))

(assert (= (and b!6877807 ((_ is Union!16743) (regTwo!33998 (regTwo!33998 (h!72821 (exprs!6627 c!9978)))))) b!6878382))

(declare-fun e!4145472 () Bool)

(assert (=> b!6877848 (= tp!1890347 e!4145472)))

(declare-fun b!6878383 () Bool)

(assert (=> b!6878383 (= e!4145472 tp_is_empty!42717)))

(declare-fun b!6878386 () Bool)

(declare-fun tp!1890691 () Bool)

(declare-fun tp!1890692 () Bool)

(assert (=> b!6878386 (= e!4145472 (and tp!1890691 tp!1890692))))

(declare-fun b!6878385 () Bool)

(declare-fun tp!1890694 () Bool)

(assert (=> b!6878385 (= e!4145472 tp!1890694)))

(declare-fun b!6878384 () Bool)

(declare-fun tp!1890693 () Bool)

(declare-fun tp!1890695 () Bool)

(assert (=> b!6878384 (= e!4145472 (and tp!1890693 tp!1890695))))

(assert (= (and b!6877848 ((_ is ElementMatch!16743) (reg!17072 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878383))

(assert (= (and b!6877848 ((_ is Concat!25588) (reg!17072 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878384))

(assert (= (and b!6877848 ((_ is Star!16743) (reg!17072 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878385))

(assert (= (and b!6877848 ((_ is Union!16743) (reg!17072 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878386))

(declare-fun e!4145473 () Bool)

(assert (=> b!6877817 (= tp!1890301 e!4145473)))

(declare-fun b!6878387 () Bool)

(assert (=> b!6878387 (= e!4145473 tp_is_empty!42717)))

(declare-fun b!6878390 () Bool)

(declare-fun tp!1890696 () Bool)

(declare-fun tp!1890697 () Bool)

(assert (=> b!6878390 (= e!4145473 (and tp!1890696 tp!1890697))))

(declare-fun b!6878389 () Bool)

(declare-fun tp!1890699 () Bool)

(assert (=> b!6878389 (= e!4145473 tp!1890699)))

(declare-fun b!6878388 () Bool)

(declare-fun tp!1890698 () Bool)

(declare-fun tp!1890700 () Bool)

(assert (=> b!6878388 (= e!4145473 (and tp!1890698 tp!1890700))))

(assert (= (and b!6877817 ((_ is ElementMatch!16743) (regOne!33999 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878387))

(assert (= (and b!6877817 ((_ is Concat!25588) (regOne!33999 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878388))

(assert (= (and b!6877817 ((_ is Star!16743) (regOne!33999 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878389))

(assert (= (and b!6877817 ((_ is Union!16743) (regOne!33999 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878390))

(declare-fun e!4145474 () Bool)

(assert (=> b!6877817 (= tp!1890302 e!4145474)))

(declare-fun b!6878391 () Bool)

(assert (=> b!6878391 (= e!4145474 tp_is_empty!42717)))

(declare-fun b!6878394 () Bool)

(declare-fun tp!1890701 () Bool)

(declare-fun tp!1890702 () Bool)

(assert (=> b!6878394 (= e!4145474 (and tp!1890701 tp!1890702))))

(declare-fun b!6878393 () Bool)

(declare-fun tp!1890704 () Bool)

(assert (=> b!6878393 (= e!4145474 tp!1890704)))

(declare-fun b!6878392 () Bool)

(declare-fun tp!1890703 () Bool)

(declare-fun tp!1890705 () Bool)

(assert (=> b!6878392 (= e!4145474 (and tp!1890703 tp!1890705))))

(assert (= (and b!6877817 ((_ is ElementMatch!16743) (regTwo!33999 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878391))

(assert (= (and b!6877817 ((_ is Concat!25588) (regTwo!33999 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878392))

(assert (= (and b!6877817 ((_ is Star!16743) (regTwo!33999 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878393))

(assert (= (and b!6877817 ((_ is Union!16743) (regTwo!33999 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878394))

(declare-fun e!4145475 () Bool)

(assert (=> b!6877815 (= tp!1890303 e!4145475)))

(declare-fun b!6878395 () Bool)

(assert (=> b!6878395 (= e!4145475 tp_is_empty!42717)))

(declare-fun b!6878398 () Bool)

(declare-fun tp!1890706 () Bool)

(declare-fun tp!1890707 () Bool)

(assert (=> b!6878398 (= e!4145475 (and tp!1890706 tp!1890707))))

(declare-fun b!6878397 () Bool)

(declare-fun tp!1890709 () Bool)

(assert (=> b!6878397 (= e!4145475 tp!1890709)))

(declare-fun b!6878396 () Bool)

(declare-fun tp!1890708 () Bool)

(declare-fun tp!1890710 () Bool)

(assert (=> b!6878396 (= e!4145475 (and tp!1890708 tp!1890710))))

(assert (= (and b!6877815 ((_ is ElementMatch!16743) (regOne!33998 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878395))

(assert (= (and b!6877815 ((_ is Concat!25588) (regOne!33998 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878396))

(assert (= (and b!6877815 ((_ is Star!16743) (regOne!33998 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878397))

(assert (= (and b!6877815 ((_ is Union!16743) (regOne!33998 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878398))

(declare-fun e!4145476 () Bool)

(assert (=> b!6877815 (= tp!1890305 e!4145476)))

(declare-fun b!6878399 () Bool)

(assert (=> b!6878399 (= e!4145476 tp_is_empty!42717)))

(declare-fun b!6878402 () Bool)

(declare-fun tp!1890711 () Bool)

(declare-fun tp!1890712 () Bool)

(assert (=> b!6878402 (= e!4145476 (and tp!1890711 tp!1890712))))

(declare-fun b!6878401 () Bool)

(declare-fun tp!1890714 () Bool)

(assert (=> b!6878401 (= e!4145476 tp!1890714)))

(declare-fun b!6878400 () Bool)

(declare-fun tp!1890713 () Bool)

(declare-fun tp!1890715 () Bool)

(assert (=> b!6878400 (= e!4145476 (and tp!1890713 tp!1890715))))

(assert (= (and b!6877815 ((_ is ElementMatch!16743) (regTwo!33998 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878399))

(assert (= (and b!6877815 ((_ is Concat!25588) (regTwo!33998 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878400))

(assert (= (and b!6877815 ((_ is Star!16743) (regTwo!33998 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878401))

(assert (= (and b!6877815 ((_ is Union!16743) (regTwo!33998 (h!72821 (t!380240 (exprs!6627 (h!72822 zl!1632))))))) b!6878402))

(declare-fun e!4145477 () Bool)

(assert (=> b!6877840 (= tp!1890332 e!4145477)))

(declare-fun b!6878403 () Bool)

(assert (=> b!6878403 (= e!4145477 tp_is_empty!42717)))

(declare-fun b!6878406 () Bool)

(declare-fun tp!1890716 () Bool)

(declare-fun tp!1890717 () Bool)

(assert (=> b!6878406 (= e!4145477 (and tp!1890716 tp!1890717))))

(declare-fun b!6878405 () Bool)

(declare-fun tp!1890719 () Bool)

(assert (=> b!6878405 (= e!4145477 tp!1890719)))

(declare-fun b!6878404 () Bool)

(declare-fun tp!1890718 () Bool)

(declare-fun tp!1890720 () Bool)

(assert (=> b!6878404 (= e!4145477 (and tp!1890718 tp!1890720))))

(assert (= (and b!6877840 ((_ is ElementMatch!16743) (regOne!33999 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878403))

(assert (= (and b!6877840 ((_ is Concat!25588) (regOne!33999 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878404))

(assert (= (and b!6877840 ((_ is Star!16743) (regOne!33999 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878405))

(assert (= (and b!6877840 ((_ is Union!16743) (regOne!33999 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878406))

(declare-fun e!4145478 () Bool)

(assert (=> b!6877840 (= tp!1890333 e!4145478)))

(declare-fun b!6878407 () Bool)

(assert (=> b!6878407 (= e!4145478 tp_is_empty!42717)))

(declare-fun b!6878410 () Bool)

(declare-fun tp!1890721 () Bool)

(declare-fun tp!1890722 () Bool)

(assert (=> b!6878410 (= e!4145478 (and tp!1890721 tp!1890722))))

(declare-fun b!6878409 () Bool)

(declare-fun tp!1890724 () Bool)

(assert (=> b!6878409 (= e!4145478 tp!1890724)))

(declare-fun b!6878408 () Bool)

(declare-fun tp!1890723 () Bool)

(declare-fun tp!1890725 () Bool)

(assert (=> b!6878408 (= e!4145478 (and tp!1890723 tp!1890725))))

(assert (= (and b!6877840 ((_ is ElementMatch!16743) (regTwo!33999 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878407))

(assert (= (and b!6877840 ((_ is Concat!25588) (regTwo!33999 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878408))

(assert (= (and b!6877840 ((_ is Star!16743) (regTwo!33999 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878409))

(assert (= (and b!6877840 ((_ is Union!16743) (regTwo!33999 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878410))

(declare-fun e!4145479 () Bool)

(assert (=> b!6877847 (= tp!1890346 e!4145479)))

(declare-fun b!6878411 () Bool)

(assert (=> b!6878411 (= e!4145479 tp_is_empty!42717)))

(declare-fun b!6878414 () Bool)

(declare-fun tp!1890726 () Bool)

(declare-fun tp!1890727 () Bool)

(assert (=> b!6878414 (= e!4145479 (and tp!1890726 tp!1890727))))

(declare-fun b!6878413 () Bool)

(declare-fun tp!1890729 () Bool)

(assert (=> b!6878413 (= e!4145479 tp!1890729)))

(declare-fun b!6878412 () Bool)

(declare-fun tp!1890728 () Bool)

(declare-fun tp!1890730 () Bool)

(assert (=> b!6878412 (= e!4145479 (and tp!1890728 tp!1890730))))

(assert (= (and b!6877847 ((_ is ElementMatch!16743) (regOne!33998 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878411))

(assert (= (and b!6877847 ((_ is Concat!25588) (regOne!33998 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878412))

(assert (= (and b!6877847 ((_ is Star!16743) (regOne!33998 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878413))

(assert (= (and b!6877847 ((_ is Union!16743) (regOne!33998 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878414))

(declare-fun e!4145480 () Bool)

(assert (=> b!6877847 (= tp!1890348 e!4145480)))

(declare-fun b!6878415 () Bool)

(assert (=> b!6878415 (= e!4145480 tp_is_empty!42717)))

(declare-fun b!6878418 () Bool)

(declare-fun tp!1890731 () Bool)

(declare-fun tp!1890732 () Bool)

(assert (=> b!6878418 (= e!4145480 (and tp!1890731 tp!1890732))))

(declare-fun b!6878417 () Bool)

(declare-fun tp!1890734 () Bool)

(assert (=> b!6878417 (= e!4145480 tp!1890734)))

(declare-fun b!6878416 () Bool)

(declare-fun tp!1890733 () Bool)

(declare-fun tp!1890735 () Bool)

(assert (=> b!6878416 (= e!4145480 (and tp!1890733 tp!1890735))))

(assert (= (and b!6877847 ((_ is ElementMatch!16743) (regTwo!33998 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878415))

(assert (= (and b!6877847 ((_ is Concat!25588) (regTwo!33998 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878416))

(assert (= (and b!6877847 ((_ is Star!16743) (regTwo!33998 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878417))

(assert (= (and b!6877847 ((_ is Union!16743) (regTwo!33998 (regTwo!33998 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878418))

(declare-fun e!4145481 () Bool)

(assert (=> b!6877854 (= tp!1890354 e!4145481)))

(declare-fun b!6878419 () Bool)

(assert (=> b!6878419 (= e!4145481 tp_is_empty!42717)))

(declare-fun b!6878422 () Bool)

(declare-fun tp!1890736 () Bool)

(declare-fun tp!1890737 () Bool)

(assert (=> b!6878422 (= e!4145481 (and tp!1890736 tp!1890737))))

(declare-fun b!6878421 () Bool)

(declare-fun tp!1890739 () Bool)

(assert (=> b!6878421 (= e!4145481 tp!1890739)))

(declare-fun b!6878420 () Bool)

(declare-fun tp!1890738 () Bool)

(declare-fun tp!1890740 () Bool)

(assert (=> b!6878420 (= e!4145481 (and tp!1890738 tp!1890740))))

(assert (= (and b!6877854 ((_ is ElementMatch!16743) (reg!17072 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878419))

(assert (= (and b!6877854 ((_ is Concat!25588) (reg!17072 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878420))

(assert (= (and b!6877854 ((_ is Star!16743) (reg!17072 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878421))

(assert (= (and b!6877854 ((_ is Union!16743) (reg!17072 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878422))

(declare-fun e!4145482 () Bool)

(assert (=> b!6877839 (= tp!1890335 e!4145482)))

(declare-fun b!6878423 () Bool)

(assert (=> b!6878423 (= e!4145482 tp_is_empty!42717)))

(declare-fun b!6878426 () Bool)

(declare-fun tp!1890741 () Bool)

(declare-fun tp!1890742 () Bool)

(assert (=> b!6878426 (= e!4145482 (and tp!1890741 tp!1890742))))

(declare-fun b!6878425 () Bool)

(declare-fun tp!1890744 () Bool)

(assert (=> b!6878425 (= e!4145482 tp!1890744)))

(declare-fun b!6878424 () Bool)

(declare-fun tp!1890743 () Bool)

(declare-fun tp!1890745 () Bool)

(assert (=> b!6878424 (= e!4145482 (and tp!1890743 tp!1890745))))

(assert (= (and b!6877839 ((_ is ElementMatch!16743) (reg!17072 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878423))

(assert (= (and b!6877839 ((_ is Concat!25588) (reg!17072 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878424))

(assert (= (and b!6877839 ((_ is Star!16743) (reg!17072 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878425))

(assert (= (and b!6877839 ((_ is Union!16743) (reg!17072 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878426))

(declare-fun e!4145483 () Bool)

(assert (=> b!6877855 (= tp!1890351 e!4145483)))

(declare-fun b!6878427 () Bool)

(assert (=> b!6878427 (= e!4145483 tp_is_empty!42717)))

(declare-fun b!6878430 () Bool)

(declare-fun tp!1890746 () Bool)

(declare-fun tp!1890747 () Bool)

(assert (=> b!6878430 (= e!4145483 (and tp!1890746 tp!1890747))))

(declare-fun b!6878429 () Bool)

(declare-fun tp!1890749 () Bool)

(assert (=> b!6878429 (= e!4145483 tp!1890749)))

(declare-fun b!6878428 () Bool)

(declare-fun tp!1890748 () Bool)

(declare-fun tp!1890750 () Bool)

(assert (=> b!6878428 (= e!4145483 (and tp!1890748 tp!1890750))))

(assert (= (and b!6877855 ((_ is ElementMatch!16743) (regOne!33999 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878427))

(assert (= (and b!6877855 ((_ is Concat!25588) (regOne!33999 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878428))

(assert (= (and b!6877855 ((_ is Star!16743) (regOne!33999 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878429))

(assert (= (and b!6877855 ((_ is Union!16743) (regOne!33999 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878430))

(declare-fun e!4145484 () Bool)

(assert (=> b!6877855 (= tp!1890352 e!4145484)))

(declare-fun b!6878431 () Bool)

(assert (=> b!6878431 (= e!4145484 tp_is_empty!42717)))

(declare-fun b!6878434 () Bool)

(declare-fun tp!1890751 () Bool)

(declare-fun tp!1890752 () Bool)

(assert (=> b!6878434 (= e!4145484 (and tp!1890751 tp!1890752))))

(declare-fun b!6878433 () Bool)

(declare-fun tp!1890754 () Bool)

(assert (=> b!6878433 (= e!4145484 tp!1890754)))

(declare-fun b!6878432 () Bool)

(declare-fun tp!1890753 () Bool)

(declare-fun tp!1890755 () Bool)

(assert (=> b!6878432 (= e!4145484 (and tp!1890753 tp!1890755))))

(assert (= (and b!6877855 ((_ is ElementMatch!16743) (regTwo!33999 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878431))

(assert (= (and b!6877855 ((_ is Concat!25588) (regTwo!33999 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878432))

(assert (= (and b!6877855 ((_ is Star!16743) (regTwo!33999 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878433))

(assert (= (and b!6877855 ((_ is Union!16743) (regTwo!33999 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878434))

(declare-fun e!4145485 () Bool)

(assert (=> b!6877831 (= tp!1890323 e!4145485)))

(declare-fun b!6878435 () Bool)

(assert (=> b!6878435 (= e!4145485 tp_is_empty!42717)))

(declare-fun b!6878438 () Bool)

(declare-fun tp!1890756 () Bool)

(declare-fun tp!1890757 () Bool)

(assert (=> b!6878438 (= e!4145485 (and tp!1890756 tp!1890757))))

(declare-fun b!6878437 () Bool)

(declare-fun tp!1890759 () Bool)

(assert (=> b!6878437 (= e!4145485 tp!1890759)))

(declare-fun b!6878436 () Bool)

(declare-fun tp!1890758 () Bool)

(declare-fun tp!1890760 () Bool)

(assert (=> b!6878436 (= e!4145485 (and tp!1890758 tp!1890760))))

(assert (= (and b!6877831 ((_ is ElementMatch!16743) (h!72821 (t!380240 (t!380240 (exprs!6627 c!9978)))))) b!6878435))

(assert (= (and b!6877831 ((_ is Concat!25588) (h!72821 (t!380240 (t!380240 (exprs!6627 c!9978)))))) b!6878436))

(assert (= (and b!6877831 ((_ is Star!16743) (h!72821 (t!380240 (t!380240 (exprs!6627 c!9978)))))) b!6878437))

(assert (= (and b!6877831 ((_ is Union!16743) (h!72821 (t!380240 (t!380240 (exprs!6627 c!9978)))))) b!6878438))

(declare-fun b!6878439 () Bool)

(declare-fun e!4145486 () Bool)

(declare-fun tp!1890761 () Bool)

(declare-fun tp!1890762 () Bool)

(assert (=> b!6878439 (= e!4145486 (and tp!1890761 tp!1890762))))

(assert (=> b!6877831 (= tp!1890324 e!4145486)))

(assert (= (and b!6877831 ((_ is Cons!66373) (t!380240 (t!380240 (t!380240 (exprs!6627 c!9978)))))) b!6878439))

(declare-fun e!4145487 () Bool)

(assert (=> b!6877853 (= tp!1890353 e!4145487)))

(declare-fun b!6878440 () Bool)

(assert (=> b!6878440 (= e!4145487 tp_is_empty!42717)))

(declare-fun b!6878443 () Bool)

(declare-fun tp!1890763 () Bool)

(declare-fun tp!1890764 () Bool)

(assert (=> b!6878443 (= e!4145487 (and tp!1890763 tp!1890764))))

(declare-fun b!6878442 () Bool)

(declare-fun tp!1890766 () Bool)

(assert (=> b!6878442 (= e!4145487 tp!1890766)))

(declare-fun b!6878441 () Bool)

(declare-fun tp!1890765 () Bool)

(declare-fun tp!1890767 () Bool)

(assert (=> b!6878441 (= e!4145487 (and tp!1890765 tp!1890767))))

(assert (= (and b!6877853 ((_ is ElementMatch!16743) (regOne!33998 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878440))

(assert (= (and b!6877853 ((_ is Concat!25588) (regOne!33998 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878441))

(assert (= (and b!6877853 ((_ is Star!16743) (regOne!33998 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878442))

(assert (= (and b!6877853 ((_ is Union!16743) (regOne!33998 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878443))

(declare-fun e!4145488 () Bool)

(assert (=> b!6877853 (= tp!1890355 e!4145488)))

(declare-fun b!6878444 () Bool)

(assert (=> b!6878444 (= e!4145488 tp_is_empty!42717)))

(declare-fun b!6878447 () Bool)

(declare-fun tp!1890768 () Bool)

(declare-fun tp!1890769 () Bool)

(assert (=> b!6878447 (= e!4145488 (and tp!1890768 tp!1890769))))

(declare-fun b!6878446 () Bool)

(declare-fun tp!1890771 () Bool)

(assert (=> b!6878446 (= e!4145488 tp!1890771)))

(declare-fun b!6878445 () Bool)

(declare-fun tp!1890770 () Bool)

(declare-fun tp!1890772 () Bool)

(assert (=> b!6878445 (= e!4145488 (and tp!1890770 tp!1890772))))

(assert (= (and b!6877853 ((_ is ElementMatch!16743) (regTwo!33998 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878444))

(assert (= (and b!6877853 ((_ is Concat!25588) (regTwo!33998 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878445))

(assert (= (and b!6877853 ((_ is Star!16743) (regTwo!33998 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878446))

(assert (= (and b!6877853 ((_ is Union!16743) (regTwo!33998 (regOne!33999 (h!72821 (exprs!6627 c!9978)))))) b!6878447))

(declare-fun e!4145489 () Bool)

(assert (=> b!6877838 (= tp!1890334 e!4145489)))

(declare-fun b!6878448 () Bool)

(assert (=> b!6878448 (= e!4145489 tp_is_empty!42717)))

(declare-fun b!6878451 () Bool)

(declare-fun tp!1890773 () Bool)

(declare-fun tp!1890774 () Bool)

(assert (=> b!6878451 (= e!4145489 (and tp!1890773 tp!1890774))))

(declare-fun b!6878450 () Bool)

(declare-fun tp!1890776 () Bool)

(assert (=> b!6878450 (= e!4145489 tp!1890776)))

(declare-fun b!6878449 () Bool)

(declare-fun tp!1890775 () Bool)

(declare-fun tp!1890777 () Bool)

(assert (=> b!6878449 (= e!4145489 (and tp!1890775 tp!1890777))))

(assert (= (and b!6877838 ((_ is ElementMatch!16743) (regOne!33998 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878448))

(assert (= (and b!6877838 ((_ is Concat!25588) (regOne!33998 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878449))

(assert (= (and b!6877838 ((_ is Star!16743) (regOne!33998 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878450))

(assert (= (and b!6877838 ((_ is Union!16743) (regOne!33998 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878451))

(declare-fun e!4145490 () Bool)

(assert (=> b!6877838 (= tp!1890336 e!4145490)))

(declare-fun b!6878452 () Bool)

(assert (=> b!6878452 (= e!4145490 tp_is_empty!42717)))

(declare-fun b!6878455 () Bool)

(declare-fun tp!1890778 () Bool)

(declare-fun tp!1890779 () Bool)

(assert (=> b!6878455 (= e!4145490 (and tp!1890778 tp!1890779))))

(declare-fun b!6878454 () Bool)

(declare-fun tp!1890781 () Bool)

(assert (=> b!6878454 (= e!4145490 tp!1890781)))

(declare-fun b!6878453 () Bool)

(declare-fun tp!1890780 () Bool)

(declare-fun tp!1890782 () Bool)

(assert (=> b!6878453 (= e!4145490 (and tp!1890780 tp!1890782))))

(assert (= (and b!6877838 ((_ is ElementMatch!16743) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878452))

(assert (= (and b!6877838 ((_ is Concat!25588) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878453))

(assert (= (and b!6877838 ((_ is Star!16743) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878454))

(assert (= (and b!6877838 ((_ is Union!16743) (regTwo!33998 (h!72821 (exprs!6627 (h!72822 (t!380241 zl!1632))))))) b!6878455))

(declare-fun e!4145491 () Bool)

(assert (=> b!6877822 (= tp!1890308 e!4145491)))

(declare-fun b!6878456 () Bool)

(assert (=> b!6878456 (= e!4145491 tp_is_empty!42717)))

(declare-fun b!6878459 () Bool)

(declare-fun tp!1890783 () Bool)

(declare-fun tp!1890784 () Bool)

(assert (=> b!6878459 (= e!4145491 (and tp!1890783 tp!1890784))))

(declare-fun b!6878458 () Bool)

(declare-fun tp!1890786 () Bool)

(assert (=> b!6878458 (= e!4145491 tp!1890786)))

(declare-fun b!6878457 () Bool)

(declare-fun tp!1890785 () Bool)

(declare-fun tp!1890787 () Bool)

(assert (=> b!6878457 (= e!4145491 (and tp!1890785 tp!1890787))))

(assert (= (and b!6877822 ((_ is ElementMatch!16743) (regOne!33999 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878456))

(assert (= (and b!6877822 ((_ is Concat!25588) (regOne!33999 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878457))

(assert (= (and b!6877822 ((_ is Star!16743) (regOne!33999 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878458))

(assert (= (and b!6877822 ((_ is Union!16743) (regOne!33999 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878459))

(declare-fun e!4145492 () Bool)

(assert (=> b!6877822 (= tp!1890309 e!4145492)))

(declare-fun b!6878460 () Bool)

(assert (=> b!6878460 (= e!4145492 tp_is_empty!42717)))

(declare-fun b!6878463 () Bool)

(declare-fun tp!1890788 () Bool)

(declare-fun tp!1890789 () Bool)

(assert (=> b!6878463 (= e!4145492 (and tp!1890788 tp!1890789))))

(declare-fun b!6878462 () Bool)

(declare-fun tp!1890791 () Bool)

(assert (=> b!6878462 (= e!4145492 tp!1890791)))

(declare-fun b!6878461 () Bool)

(declare-fun tp!1890790 () Bool)

(declare-fun tp!1890792 () Bool)

(assert (=> b!6878461 (= e!4145492 (and tp!1890790 tp!1890792))))

(assert (= (and b!6877822 ((_ is ElementMatch!16743) (regTwo!33999 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878460))

(assert (= (and b!6877822 ((_ is Concat!25588) (regTwo!33999 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878461))

(assert (= (and b!6877822 ((_ is Star!16743) (regTwo!33999 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878462))

(assert (= (and b!6877822 ((_ is Union!16743) (regTwo!33999 (regOne!33999 (h!72821 (exprs!6627 (h!72822 zl!1632))))))) b!6878463))

(declare-fun b_lambda!260321 () Bool)

(assert (= b_lambda!260317 (or d!2159589 b_lambda!260321)))

(declare-fun bs!1837949 () Bool)

(declare-fun d!2159805 () Bool)

(assert (= bs!1837949 (and d!2159805 d!2159589)))

(assert (=> bs!1837949 (= (dynLambda!26569 lambda!389352 (h!72821 (t!380240 (t!380240 (exprs!6627 c!9978))))) (validRegex!8456 (h!72821 (t!380240 (t!380240 (exprs!6627 c!9978))))))))

(declare-fun m!7605442 () Bool)

(assert (=> bs!1837949 m!7605442))

(assert (=> b!6878119 d!2159805))

(declare-fun b_lambda!260323 () Bool)

(assert (= b_lambda!260315 (or d!2159609 b_lambda!260323)))

(declare-fun bs!1837950 () Bool)

(declare-fun d!2159807 () Bool)

(assert (= bs!1837950 (and d!2159807 d!2159609)))

(assert (=> bs!1837950 (= (dynLambda!26569 lambda!389357 (h!72821 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632)))))) (validRegex!8456 (h!72821 (t!380240 (exprs!6627 (h!72822 (t!380241 zl!1632)))))))))

(declare-fun m!7605444 () Bool)

(assert (=> bs!1837950 m!7605444))

(assert (=> b!6878079 d!2159807))

(declare-fun b_lambda!260325 () Bool)

(assert (= b_lambda!260319 (or d!2159583 b_lambda!260325)))

(declare-fun bs!1837951 () Bool)

(declare-fun d!2159809 () Bool)

(assert (= bs!1837951 (and d!2159809 d!2159583)))

(assert (=> bs!1837951 (= (dynLambda!26569 lambda!389351 (h!72821 (t!380240 (t!380240 (exprs!6627 (h!72822 zl!1632)))))) (validRegex!8456 (h!72821 (t!380240 (t!380240 (exprs!6627 (h!72822 zl!1632)))))))))

(declare-fun m!7605446 () Bool)

(assert (=> bs!1837951 m!7605446))

(assert (=> b!6878179 d!2159809))

(declare-fun b_lambda!260327 () Bool)

(assert (= b_lambda!260313 (or d!2159689 b_lambda!260327)))

(declare-fun bs!1837952 () Bool)

(declare-fun d!2159811 () Bool)

(assert (= bs!1837952 (and d!2159811 d!2159689)))

(assert (=> bs!1837952 (= (dynLambda!26569 lambda!389359 (h!72821 (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632)))))) (validRegex!8456 (h!72821 (exprs!6627 (h!72822 (t!380241 (t!380241 zl!1632)))))))))

(declare-fun m!7605448 () Bool)

(assert (=> bs!1837952 m!7605448))

(assert (=> b!6878050 d!2159811))

(check-sat (not b!6878364) (not b!6878306) (not b_lambda!260295) (not b!6878222) (not b!6878066) (not bm!626198) (not b!6878240) (not bm!626200) (not b!6878302) (not bm!626234) (not b!6878228) (not b!6878199) (not b!6878210) (not b!6878214) (not b!6878259) (not b!6878188) (not b!6878357) (not b!6878463) (not b!6878333) (not bm!626195) (not b!6878080) (not b!6878445) (not b!6878274) (not b!6878291) (not b!6878234) (not b!6878404) (not b!6878226) (not b!6878192) (not b!6878256) (not b!6878381) (not b!6878202) (not b!6878086) (not b!6878310) (not b!6878195) (not b_lambda!260323) (not b!6878451) (not b!6878311) (not b!6878402) (not b_lambda!260297) (not b!6878203) (not b!6878191) (not b!6878393) (not b!6878316) (not b!6878350) (not b!6878262) (not b!6878177) (not b!6878345) (not b!6878246) (not b!6878461) (not b!6878366) (not b!6878236) (not b!6878434) (not b!6878211) (not b!6878238) (not b!6878388) (not b!6878373) (not b!6878430) (not bm!626218) (not b!6878198) (not b!6878304) (not b!6878230) (not b!6878268) (not b!6878270) (not b!6878283) (not b!6878248) (not bm!626207) (not b!6878378) (not b!6878057) (not b!6878239) (not b!6878271) (not b!6878299) (not bm!626209) (not b!6878436) (not b_lambda!260299) (not b!6878231) (not b!6878287) (not b_lambda!260325) (not b!6878315) (not b!6878272) (not b!6878219) (not b!6878446) (not b!6878327) (not bm!626248) (not b!6878206) (not b!6878417) (not b!6878386) (not b!6878410) (not b!6878389) (not b!6878368) (not b!6878247) (not bm!626217) (not b!6878420) (not b!6878416) (not b!6878331) (not b!6878336) (not b!6878441) (not bm!626215) (not b!6878390) (not b!6878462) (not b!6878338) (not b!6878289) (not b!6878349) (not b!6878392) (not b!6878200) (not bm!626201) (not d!2159755) (not b!6878422) (not b!6878340) (not bs!1837949) (not b!6878251) (not b!6878280) (not b!6878449) (not bm!626246) (not b!6878040) (not b_lambda!260279) (not b!6878296) (not b!6878405) (not b!6878314) (not b!6878341) (not b!6878207) (not b!6878424) (not b!6878380) (not b!6878328) (not b!6878450) (not b!6878412) (not b!6878275) (not b!6878215) (not b!6878348) (not b!6878406) (not b!6878161) (not b!6878396) (not bm!626203) (not bs!1837950) (not bm!626197) (not b!6878014) (not b!6878075) (not b!6878362) (not b!6878095) (not b!6878400) (not bm!626237) (not b!6878372) (not b!6878166) (not b!6878267) (not b!6878360) (not b!6878286) (not b!6878409) (not b!6878377) (not bm!626227) (not b!6878361) (not b!6878260) (not bm!626228) (not b!6878398) (not b!6878352) (not b!6878322) (not b!6878344) (not b!6878208) (not b!6878356) (not b!6878384) (not b!6878455) (not b!6878183) (not b!6878180) (not b!6878385) (not bm!626206) (not b!6878284) (not b!6878186) (not b!6878190) (not bm!626240) (not b!6878223) (not b!6878425) (not b!6878243) (not b!6878442) (not b!6878224) (not b!6878175) (not b!6878218) (not b!6878252) (not d!2159757) (not bm!626204) (not bm!626230) (not b_lambda!260277) (not b!6878438) (not b!6878194) (not b!6878429) (not b!6878312) (not b!6878443) (not b!6878264) (not b!6878408) (not b!6878414) (not bm!626232) (not b!6878437) (not b!6878401) (not d!2159775) (not b!6878459) (not b!6878382) (not b!6878108) (not b!6878394) (not b!6878323) (not b!6878187) (not b!6878290) (not b!6878120) (not b!6878300) (not bm!626233) (not b!6878374) (not b!6878369) (not b!6878212) (not b!6878258) (not bm!626220) (not b!6878117) (not b!6878303) (not bm!626242) (not bm!626214) (not bs!1837951) (not d!2159759) (not b!6878332) (not b!6878254) (not b!6878126) (not b!6878370) (not b!6878334) (not b!6878413) (not b!6878337) (not b!6878244) (not bm!626212) (not bm!626225) (not b!6878242) (not b!6878397) (not b!6878458) (not b!6878325) (not b!6878418) (not bm!626239) (not bm!626245) (not b!6878263) (not b!6878227) (not b!6878376) (not b!6878266) (not b!6878329) (not bs!1837952) (not b!6878255) (not b!6878285) (not bm!626224) (not b!6878428) (not b!6878279) (not b!6878051) (not b_lambda!260321) (not b!6878295) (not b!6878433) tp_is_empty!42717 (not b!6878294) (not b!6878220) (not b!6878439) (not b!6878281) (not b!6878276) (not b!6878453) (not b!6878365) (not b!6878457) (not b!6878307) (not b!6878346) (not b!6878426) (not b!6878235) (not b!6878232) (not b!6878324) (not b!6878421) (not b!6878358) (not b!6878342) (not b!6878318) (not b!6878182) (not b!6878432) (not bm!626221) (not b!6878319) (not b!6878447) (not b!6878250) (not b!6878216) (not bm!626236) (not b!6878354) (not b!6878320) (not b!6878147) (not b!6878277) (not bm!626223) (not b!6878298) (not b!6878292) (not b!6878196) (not b!6878454) (not b!6878353) (not bm!626211) (not b!6878204) (not b_lambda!260327) (not bm!626244) (not b!6878184) (not b!6878308))
(check-sat)
