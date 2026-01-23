; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!717200 () Bool)

(assert start!717200)

(declare-fun b!7343496 () Bool)

(declare-fun e!4397230 () Bool)

(declare-fun tp!2085389 () Bool)

(declare-fun tp!2085391 () Bool)

(assert (=> b!7343496 (= e!4397230 (and tp!2085389 tp!2085391))))

(declare-fun b!7343497 () Bool)

(declare-fun tp!2085392 () Bool)

(declare-fun tp!2085395 () Bool)

(assert (=> b!7343497 (= e!4397230 (and tp!2085392 tp!2085395))))

(declare-fun b!7343498 () Bool)

(declare-fun e!4397226 () Bool)

(declare-fun e!4397228 () Bool)

(assert (=> b!7343498 (= e!4397226 (not e!4397228))))

(declare-fun res!2966352 () Bool)

(assert (=> b!7343498 (=> res!2966352 e!4397228)))

(declare-datatypes ((C!38528 0))(
  ( (C!38529 (val!29624 Int)) )
))
(declare-datatypes ((Regex!19127 0))(
  ( (ElementMatch!19127 (c!1364075 C!38528)) (Concat!27972 (regOne!38766 Regex!19127) (regTwo!38766 Regex!19127)) (EmptyExpr!19127) (Star!19127 (reg!19456 Regex!19127)) (EmptyLang!19127) (Union!19127 (regOne!38767 Regex!19127) (regTwo!38767 Regex!19127)) )
))
(declare-datatypes ((List!71623 0))(
  ( (Nil!71499) (Cons!71499 (h!77947 Regex!19127) (t!386018 List!71623)) )
))
(declare-datatypes ((Context!16134 0))(
  ( (Context!16135 (exprs!8567 List!71623)) )
))
(declare-fun lt!2610630 () Context!16134)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2610632 () (InoxSet Context!16134))

(assert (=> b!7343498 (= res!2966352 (not (select lt!2610632 lt!2610630)))))

(declare-fun ct2!378 () Context!16134)

(declare-datatypes ((Unit!165207 0))(
  ( (Unit!165208) )
))
(declare-fun lt!2610637 () Unit!165207)

(declare-fun cWitness!61 () Context!16134)

(declare-fun lambda!455871 () Int)

(declare-fun lemmaConcatPreservesForall!1802 (List!71623 List!71623 Int) Unit!165207)

(assert (=> b!7343498 (= lt!2610637 (lemmaConcatPreservesForall!1802 (exprs!8567 cWitness!61) (exprs!8567 ct2!378) lambda!455871))))

(declare-fun r1!2370 () Regex!19127)

(declare-fun c!10362 () C!38528)

(declare-fun lt!2610635 () Context!16134)

(declare-fun derivationStepZipperDown!2953 (Regex!19127 Context!16134 C!38528) (InoxSet Context!16134))

(assert (=> b!7343498 (select (derivationStepZipperDown!2953 (regTwo!38767 r1!2370) lt!2610635 c!10362) lt!2610630)))

(declare-fun ++!16945 (List!71623 List!71623) List!71623)

(assert (=> b!7343498 (= lt!2610630 (Context!16135 (++!16945 (exprs!8567 cWitness!61) (exprs!8567 ct2!378))))))

(declare-fun ct1!282 () Context!16134)

(declare-fun lt!2610638 () Unit!165207)

(assert (=> b!7343498 (= lt!2610638 (lemmaConcatPreservesForall!1802 (exprs!8567 ct1!282) (exprs!8567 ct2!378) lambda!455871))))

(declare-fun lt!2610631 () Unit!165207)

(assert (=> b!7343498 (= lt!2610631 (lemmaConcatPreservesForall!1802 (exprs!8567 cWitness!61) (exprs!8567 ct2!378) lambda!455871))))

(declare-fun lt!2610639 () Unit!165207)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!60 (Regex!19127 Context!16134 Context!16134 Context!16134 C!38528) Unit!165207)

(assert (=> b!7343498 (= lt!2610639 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!60 (regTwo!38767 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7343499 () Bool)

(declare-fun e!4397223 () Bool)

(declare-fun e!4397231 () Bool)

(assert (=> b!7343499 (= e!4397223 e!4397231)))

(declare-fun res!2966354 () Bool)

(assert (=> b!7343499 (=> (not res!2966354) (not e!4397231))))

(get-info :version)

(assert (=> b!7343499 (= res!2966354 (and (or (not ((_ is ElementMatch!19127) r1!2370)) (not (= c!10362 (c!1364075 r1!2370)))) ((_ is Union!19127) r1!2370)))))

(assert (=> b!7343499 (= lt!2610632 (derivationStepZipperDown!2953 r1!2370 lt!2610635 c!10362))))

(assert (=> b!7343499 (= lt!2610635 (Context!16135 (++!16945 (exprs!8567 ct1!282) (exprs!8567 ct2!378))))))

(declare-fun lt!2610634 () Unit!165207)

(assert (=> b!7343499 (= lt!2610634 (lemmaConcatPreservesForall!1802 (exprs!8567 ct1!282) (exprs!8567 ct2!378) lambda!455871))))

(declare-fun b!7343500 () Bool)

(declare-fun e!4397229 () Bool)

(declare-fun tp!2085393 () Bool)

(assert (=> b!7343500 (= e!4397229 tp!2085393)))

(declare-fun b!7343501 () Bool)

(declare-fun e!4397227 () Bool)

(assert (=> b!7343501 (= e!4397227 e!4397223)))

(declare-fun res!2966351 () Bool)

(assert (=> b!7343501 (=> (not res!2966351) (not e!4397223))))

(declare-fun lt!2610633 () (InoxSet Context!16134))

(assert (=> b!7343501 (= res!2966351 (select lt!2610633 cWitness!61))))

(assert (=> b!7343501 (= lt!2610633 (derivationStepZipperDown!2953 r1!2370 ct1!282 c!10362))))

(declare-fun b!7343502 () Bool)

(declare-fun e!4397232 () Bool)

(declare-fun forall!17957 (List!71623 Int) Bool)

(assert (=> b!7343502 (= e!4397232 (forall!17957 (exprs!8567 ct2!378) lambda!455871))))

(declare-fun b!7343503 () Bool)

(declare-fun res!2966350 () Bool)

(assert (=> b!7343503 (=> (not res!2966350) (not e!4397226))))

(declare-fun lt!2610636 () (InoxSet Context!16134))

(assert (=> b!7343503 (= res!2966350 (not (select lt!2610636 cWitness!61)))))

(declare-fun b!7343504 () Bool)

(assert (=> b!7343504 (= e!4397231 e!4397226)))

(declare-fun res!2966349 () Bool)

(assert (=> b!7343504 (=> (not res!2966349) (not e!4397226))))

(assert (=> b!7343504 (= res!2966349 (= lt!2610633 ((_ map or) lt!2610636 (derivationStepZipperDown!2953 (regTwo!38767 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7343504 (= lt!2610636 (derivationStepZipperDown!2953 (regOne!38767 r1!2370) ct1!282 c!10362))))

(declare-fun res!2966353 () Bool)

(assert (=> start!717200 (=> (not res!2966353) (not e!4397227))))

(declare-fun validRegex!9723 (Regex!19127) Bool)

(assert (=> start!717200 (= res!2966353 (validRegex!9723 r1!2370))))

(assert (=> start!717200 e!4397227))

(declare-fun tp_is_empty!48499 () Bool)

(assert (=> start!717200 tp_is_empty!48499))

(declare-fun inv!91157 (Context!16134) Bool)

(assert (=> start!717200 (and (inv!91157 cWitness!61) e!4397229)))

(declare-fun e!4397225 () Bool)

(assert (=> start!717200 (and (inv!91157 ct1!282) e!4397225)))

(assert (=> start!717200 e!4397230))

(declare-fun e!4397224 () Bool)

(assert (=> start!717200 (and (inv!91157 ct2!378) e!4397224)))

(declare-fun b!7343505 () Bool)

(assert (=> b!7343505 (= e!4397230 tp_is_empty!48499)))

(declare-fun b!7343506 () Bool)

(declare-fun tp!2085390 () Bool)

(assert (=> b!7343506 (= e!4397230 tp!2085390)))

(declare-fun b!7343507 () Bool)

(assert (=> b!7343507 (= e!4397228 e!4397232)))

(declare-fun res!2966348 () Bool)

(assert (=> b!7343507 (=> res!2966348 e!4397232)))

(assert (=> b!7343507 (= res!2966348 (not (forall!17957 (exprs!8567 cWitness!61) lambda!455871)))))

(declare-fun b!7343508 () Bool)

(declare-fun tp!2085394 () Bool)

(assert (=> b!7343508 (= e!4397224 tp!2085394)))

(declare-fun b!7343509 () Bool)

(declare-fun tp!2085388 () Bool)

(assert (=> b!7343509 (= e!4397225 tp!2085388)))

(assert (= (and start!717200 res!2966353) b!7343501))

(assert (= (and b!7343501 res!2966351) b!7343499))

(assert (= (and b!7343499 res!2966354) b!7343504))

(assert (= (and b!7343504 res!2966349) b!7343503))

(assert (= (and b!7343503 res!2966350) b!7343498))

(assert (= (and b!7343498 (not res!2966352)) b!7343507))

(assert (= (and b!7343507 (not res!2966348)) b!7343502))

(assert (= start!717200 b!7343500))

(assert (= start!717200 b!7343509))

(assert (= (and start!717200 ((_ is ElementMatch!19127) r1!2370)) b!7343505))

(assert (= (and start!717200 ((_ is Concat!27972) r1!2370)) b!7343496))

(assert (= (and start!717200 ((_ is Star!19127) r1!2370)) b!7343506))

(assert (= (and start!717200 ((_ is Union!19127) r1!2370)) b!7343497))

(assert (= start!717200 b!7343508))

(declare-fun m!8006534 () Bool)

(assert (=> b!7343507 m!8006534))

(declare-fun m!8006536 () Bool)

(assert (=> b!7343499 m!8006536))

(declare-fun m!8006538 () Bool)

(assert (=> b!7343499 m!8006538))

(declare-fun m!8006540 () Bool)

(assert (=> b!7343499 m!8006540))

(declare-fun m!8006542 () Bool)

(assert (=> b!7343501 m!8006542))

(declare-fun m!8006544 () Bool)

(assert (=> b!7343501 m!8006544))

(declare-fun m!8006546 () Bool)

(assert (=> b!7343504 m!8006546))

(declare-fun m!8006548 () Bool)

(assert (=> b!7343504 m!8006548))

(declare-fun m!8006550 () Bool)

(assert (=> b!7343498 m!8006550))

(declare-fun m!8006552 () Bool)

(assert (=> b!7343498 m!8006552))

(assert (=> b!7343498 m!8006540))

(declare-fun m!8006554 () Bool)

(assert (=> b!7343498 m!8006554))

(declare-fun m!8006556 () Bool)

(assert (=> b!7343498 m!8006556))

(declare-fun m!8006558 () Bool)

(assert (=> b!7343498 m!8006558))

(declare-fun m!8006560 () Bool)

(assert (=> b!7343498 m!8006560))

(assert (=> b!7343498 m!8006550))

(declare-fun m!8006562 () Bool)

(assert (=> b!7343503 m!8006562))

(declare-fun m!8006564 () Bool)

(assert (=> start!717200 m!8006564))

(declare-fun m!8006566 () Bool)

(assert (=> start!717200 m!8006566))

(declare-fun m!8006568 () Bool)

(assert (=> start!717200 m!8006568))

(declare-fun m!8006570 () Bool)

(assert (=> start!717200 m!8006570))

(declare-fun m!8006572 () Bool)

(assert (=> b!7343502 m!8006572))

(check-sat (not b!7343497) (not b!7343506) (not b!7343498) (not b!7343499) (not b!7343496) (not start!717200) (not b!7343508) (not b!7343501) (not b!7343509) tp_is_empty!48499 (not b!7343502) (not b!7343500) (not b!7343507) (not b!7343504))
(check-sat)
(get-model)

(declare-fun bs!1918642 () Bool)

(declare-fun d!2279194 () Bool)

(assert (= bs!1918642 (and d!2279194 b!7343499)))

(declare-fun lambda!455876 () Int)

(assert (=> bs!1918642 (= lambda!455876 lambda!455871)))

(assert (=> d!2279194 (select (derivationStepZipperDown!2953 (regTwo!38767 r1!2370) (Context!16135 (++!16945 (exprs!8567 ct1!282) (exprs!8567 ct2!378))) c!10362) (Context!16135 (++!16945 (exprs!8567 cWitness!61) (exprs!8567 ct2!378))))))

(declare-fun lt!2610648 () Unit!165207)

(assert (=> d!2279194 (= lt!2610648 (lemmaConcatPreservesForall!1802 (exprs!8567 ct1!282) (exprs!8567 ct2!378) lambda!455876))))

(declare-fun lt!2610647 () Unit!165207)

(assert (=> d!2279194 (= lt!2610647 (lemmaConcatPreservesForall!1802 (exprs!8567 cWitness!61) (exprs!8567 ct2!378) lambda!455876))))

(declare-fun lt!2610646 () Unit!165207)

(declare-fun choose!57120 (Regex!19127 Context!16134 Context!16134 Context!16134 C!38528) Unit!165207)

(assert (=> d!2279194 (= lt!2610646 (choose!57120 (regTwo!38767 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2279194 (validRegex!9723 (regTwo!38767 r1!2370))))

(assert (=> d!2279194 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!60 (regTwo!38767 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2610646)))

(declare-fun bs!1918643 () Bool)

(assert (= bs!1918643 d!2279194))

(assert (=> bs!1918643 m!8006560))

(declare-fun m!8006574 () Bool)

(assert (=> bs!1918643 m!8006574))

(declare-fun m!8006576 () Bool)

(assert (=> bs!1918643 m!8006576))

(declare-fun m!8006578 () Bool)

(assert (=> bs!1918643 m!8006578))

(declare-fun m!8006580 () Bool)

(assert (=> bs!1918643 m!8006580))

(declare-fun m!8006582 () Bool)

(assert (=> bs!1918643 m!8006582))

(assert (=> bs!1918643 m!8006538))

(declare-fun m!8006584 () Bool)

(assert (=> bs!1918643 m!8006584))

(assert (=> b!7343498 d!2279194))

(declare-fun d!2279196 () Bool)

(assert (=> d!2279196 (forall!17957 (++!16945 (exprs!8567 ct1!282) (exprs!8567 ct2!378)) lambda!455871)))

(declare-fun lt!2610651 () Unit!165207)

(declare-fun choose!57121 (List!71623 List!71623 Int) Unit!165207)

(assert (=> d!2279196 (= lt!2610651 (choose!57121 (exprs!8567 ct1!282) (exprs!8567 ct2!378) lambda!455871))))

(assert (=> d!2279196 (forall!17957 (exprs!8567 ct1!282) lambda!455871)))

(assert (=> d!2279196 (= (lemmaConcatPreservesForall!1802 (exprs!8567 ct1!282) (exprs!8567 ct2!378) lambda!455871) lt!2610651)))

(declare-fun bs!1918644 () Bool)

(assert (= bs!1918644 d!2279196))

(assert (=> bs!1918644 m!8006538))

(assert (=> bs!1918644 m!8006538))

(declare-fun m!8006586 () Bool)

(assert (=> bs!1918644 m!8006586))

(declare-fun m!8006588 () Bool)

(assert (=> bs!1918644 m!8006588))

(declare-fun m!8006590 () Bool)

(assert (=> bs!1918644 m!8006590))

(assert (=> b!7343498 d!2279196))

(declare-fun b!7343520 () Bool)

(declare-fun res!2966360 () Bool)

(declare-fun e!4397238 () Bool)

(assert (=> b!7343520 (=> (not res!2966360) (not e!4397238))))

(declare-fun lt!2610654 () List!71623)

(declare-fun size!42020 (List!71623) Int)

(assert (=> b!7343520 (= res!2966360 (= (size!42020 lt!2610654) (+ (size!42020 (exprs!8567 cWitness!61)) (size!42020 (exprs!8567 ct2!378)))))))

(declare-fun b!7343521 () Bool)

(assert (=> b!7343521 (= e!4397238 (or (not (= (exprs!8567 ct2!378) Nil!71499)) (= lt!2610654 (exprs!8567 cWitness!61))))))

(declare-fun d!2279198 () Bool)

(assert (=> d!2279198 e!4397238))

(declare-fun res!2966359 () Bool)

(assert (=> d!2279198 (=> (not res!2966359) (not e!4397238))))

(declare-fun content!15041 (List!71623) (InoxSet Regex!19127))

(assert (=> d!2279198 (= res!2966359 (= (content!15041 lt!2610654) ((_ map or) (content!15041 (exprs!8567 cWitness!61)) (content!15041 (exprs!8567 ct2!378)))))))

(declare-fun e!4397237 () List!71623)

(assert (=> d!2279198 (= lt!2610654 e!4397237)))

(declare-fun c!1364079 () Bool)

(assert (=> d!2279198 (= c!1364079 ((_ is Nil!71499) (exprs!8567 cWitness!61)))))

(assert (=> d!2279198 (= (++!16945 (exprs!8567 cWitness!61) (exprs!8567 ct2!378)) lt!2610654)))

(declare-fun b!7343519 () Bool)

(assert (=> b!7343519 (= e!4397237 (Cons!71499 (h!77947 (exprs!8567 cWitness!61)) (++!16945 (t!386018 (exprs!8567 cWitness!61)) (exprs!8567 ct2!378))))))

(declare-fun b!7343518 () Bool)

(assert (=> b!7343518 (= e!4397237 (exprs!8567 ct2!378))))

(assert (= (and d!2279198 c!1364079) b!7343518))

(assert (= (and d!2279198 (not c!1364079)) b!7343519))

(assert (= (and d!2279198 res!2966359) b!7343520))

(assert (= (and b!7343520 res!2966360) b!7343521))

(declare-fun m!8006592 () Bool)

(assert (=> b!7343520 m!8006592))

(declare-fun m!8006594 () Bool)

(assert (=> b!7343520 m!8006594))

(declare-fun m!8006596 () Bool)

(assert (=> b!7343520 m!8006596))

(declare-fun m!8006598 () Bool)

(assert (=> d!2279198 m!8006598))

(declare-fun m!8006600 () Bool)

(assert (=> d!2279198 m!8006600))

(declare-fun m!8006602 () Bool)

(assert (=> d!2279198 m!8006602))

(declare-fun m!8006604 () Bool)

(assert (=> b!7343519 m!8006604))

(assert (=> b!7343498 d!2279198))

(declare-fun b!7343566 () Bool)

(declare-fun e!4397265 () (InoxSet Context!16134))

(assert (=> b!7343566 (= e!4397265 ((as const (Array Context!16134 Bool)) false))))

(declare-fun b!7343567 () Bool)

(declare-fun e!4397263 () (InoxSet Context!16134))

(declare-fun call!670638 () (InoxSet Context!16134))

(declare-fun call!670640 () (InoxSet Context!16134))

(assert (=> b!7343567 (= e!4397263 ((_ map or) call!670638 call!670640))))

(declare-fun bm!670631 () Bool)

(declare-fun call!670639 () List!71623)

(declare-fun call!670637 () List!71623)

(assert (=> bm!670631 (= call!670639 call!670637)))

(declare-fun b!7343568 () Bool)

(declare-fun call!670636 () (InoxSet Context!16134))

(assert (=> b!7343568 (= e!4397265 call!670636)))

(declare-fun b!7343569 () Bool)

(declare-fun c!1364104 () Bool)

(assert (=> b!7343569 (= c!1364104 ((_ is Star!19127) (regTwo!38767 r1!2370)))))

(declare-fun e!4397267 () (InoxSet Context!16134))

(assert (=> b!7343569 (= e!4397267 e!4397265)))

(declare-fun c!1364100 () Bool)

(declare-fun c!1364102 () Bool)

(declare-fun bm!670632 () Bool)

(declare-fun $colon$colon!3126 (List!71623 Regex!19127) List!71623)

(assert (=> bm!670632 (= call!670637 ($colon$colon!3126 (exprs!8567 lt!2610635) (ite (or c!1364100 c!1364102) (regTwo!38766 (regTwo!38767 r1!2370)) (regTwo!38767 r1!2370))))))

(declare-fun b!7343571 () Bool)

(declare-fun e!4397264 () (InoxSet Context!16134))

(declare-fun call!670641 () (InoxSet Context!16134))

(assert (=> b!7343571 (= e!4397264 ((_ map or) call!670638 call!670641))))

(declare-fun bm!670633 () Bool)

(assert (=> bm!670633 (= call!670640 call!670641)))

(declare-fun c!1364101 () Bool)

(declare-fun bm!670634 () Bool)

(assert (=> bm!670634 (= call!670638 (derivationStepZipperDown!2953 (ite c!1364101 (regOne!38767 (regTwo!38767 r1!2370)) (regOne!38766 (regTwo!38767 r1!2370))) (ite c!1364101 lt!2610635 (Context!16135 call!670637)) c!10362))))

(declare-fun bm!670635 () Bool)

(assert (=> bm!670635 (= call!670636 call!670640)))

(declare-fun bm!670636 () Bool)

(assert (=> bm!670636 (= call!670641 (derivationStepZipperDown!2953 (ite c!1364101 (regTwo!38767 (regTwo!38767 r1!2370)) (ite c!1364100 (regTwo!38766 (regTwo!38767 r1!2370)) (ite c!1364102 (regOne!38766 (regTwo!38767 r1!2370)) (reg!19456 (regTwo!38767 r1!2370))))) (ite (or c!1364101 c!1364100) lt!2610635 (Context!16135 call!670639)) c!10362))))

(declare-fun b!7343572 () Bool)

(assert (=> b!7343572 (= e!4397267 call!670636)))

(declare-fun b!7343573 () Bool)

(assert (=> b!7343573 (= e!4397263 e!4397267)))

(assert (=> b!7343573 (= c!1364102 ((_ is Concat!27972) (regTwo!38767 r1!2370)))))

(declare-fun b!7343574 () Bool)

(declare-fun e!4397266 () (InoxSet Context!16134))

(assert (=> b!7343574 (= e!4397266 (store ((as const (Array Context!16134 Bool)) false) lt!2610635 true))))

(declare-fun d!2279200 () Bool)

(declare-fun c!1364103 () Bool)

(assert (=> d!2279200 (= c!1364103 (and ((_ is ElementMatch!19127) (regTwo!38767 r1!2370)) (= (c!1364075 (regTwo!38767 r1!2370)) c!10362)))))

(assert (=> d!2279200 (= (derivationStepZipperDown!2953 (regTwo!38767 r1!2370) lt!2610635 c!10362) e!4397266)))

(declare-fun b!7343570 () Bool)

(assert (=> b!7343570 (= e!4397266 e!4397264)))

(assert (=> b!7343570 (= c!1364101 ((_ is Union!19127) (regTwo!38767 r1!2370)))))

(declare-fun b!7343575 () Bool)

(declare-fun e!4397268 () Bool)

(declare-fun nullable!8220 (Regex!19127) Bool)

(assert (=> b!7343575 (= e!4397268 (nullable!8220 (regOne!38766 (regTwo!38767 r1!2370))))))

(declare-fun b!7343576 () Bool)

(assert (=> b!7343576 (= c!1364100 e!4397268)))

(declare-fun res!2966365 () Bool)

(assert (=> b!7343576 (=> (not res!2966365) (not e!4397268))))

(assert (=> b!7343576 (= res!2966365 ((_ is Concat!27972) (regTwo!38767 r1!2370)))))

(assert (=> b!7343576 (= e!4397264 e!4397263)))

(assert (= (and d!2279200 c!1364103) b!7343574))

(assert (= (and d!2279200 (not c!1364103)) b!7343570))

(assert (= (and b!7343570 c!1364101) b!7343571))

(assert (= (and b!7343570 (not c!1364101)) b!7343576))

(assert (= (and b!7343576 res!2966365) b!7343575))

(assert (= (and b!7343576 c!1364100) b!7343567))

(assert (= (and b!7343576 (not c!1364100)) b!7343573))

(assert (= (and b!7343573 c!1364102) b!7343572))

(assert (= (and b!7343573 (not c!1364102)) b!7343569))

(assert (= (and b!7343569 c!1364104) b!7343568))

(assert (= (and b!7343569 (not c!1364104)) b!7343566))

(assert (= (or b!7343572 b!7343568) bm!670631))

(assert (= (or b!7343572 b!7343568) bm!670635))

(assert (= (or b!7343567 bm!670635) bm!670633))

(assert (= (or b!7343567 bm!670631) bm!670632))

(assert (= (or b!7343571 bm!670633) bm!670636))

(assert (= (or b!7343571 b!7343567) bm!670634))

(declare-fun m!8006606 () Bool)

(assert (=> bm!670634 m!8006606))

(declare-fun m!8006608 () Bool)

(assert (=> bm!670636 m!8006608))

(declare-fun m!8006610 () Bool)

(assert (=> b!7343574 m!8006610))

(declare-fun m!8006612 () Bool)

(assert (=> b!7343575 m!8006612))

(declare-fun m!8006614 () Bool)

(assert (=> bm!670632 m!8006614))

(assert (=> b!7343498 d!2279200))

(declare-fun d!2279204 () Bool)

(assert (=> d!2279204 (forall!17957 (++!16945 (exprs!8567 cWitness!61) (exprs!8567 ct2!378)) lambda!455871)))

(declare-fun lt!2610655 () Unit!165207)

(assert (=> d!2279204 (= lt!2610655 (choose!57121 (exprs!8567 cWitness!61) (exprs!8567 ct2!378) lambda!455871))))

(assert (=> d!2279204 (forall!17957 (exprs!8567 cWitness!61) lambda!455871)))

(assert (=> d!2279204 (= (lemmaConcatPreservesForall!1802 (exprs!8567 cWitness!61) (exprs!8567 ct2!378) lambda!455871) lt!2610655)))

(declare-fun bs!1918645 () Bool)

(assert (= bs!1918645 d!2279204))

(assert (=> bs!1918645 m!8006560))

(assert (=> bs!1918645 m!8006560))

(declare-fun m!8006616 () Bool)

(assert (=> bs!1918645 m!8006616))

(declare-fun m!8006618 () Bool)

(assert (=> bs!1918645 m!8006618))

(assert (=> bs!1918645 m!8006534))

(assert (=> b!7343498 d!2279204))

(declare-fun b!7343577 () Bool)

(declare-fun e!4397271 () (InoxSet Context!16134))

(assert (=> b!7343577 (= e!4397271 ((as const (Array Context!16134 Bool)) false))))

(declare-fun b!7343578 () Bool)

(declare-fun e!4397269 () (InoxSet Context!16134))

(declare-fun call!670652 () (InoxSet Context!16134))

(declare-fun call!670654 () (InoxSet Context!16134))

(assert (=> b!7343578 (= e!4397269 ((_ map or) call!670652 call!670654))))

(declare-fun bm!670645 () Bool)

(declare-fun call!670653 () List!71623)

(declare-fun call!670651 () List!71623)

(assert (=> bm!670645 (= call!670653 call!670651)))

(declare-fun b!7343579 () Bool)

(declare-fun call!670650 () (InoxSet Context!16134))

(assert (=> b!7343579 (= e!4397271 call!670650)))

(declare-fun b!7343580 () Bool)

(declare-fun c!1364109 () Bool)

(assert (=> b!7343580 (= c!1364109 ((_ is Star!19127) (regTwo!38767 r1!2370)))))

(declare-fun e!4397273 () (InoxSet Context!16134))

(assert (=> b!7343580 (= e!4397273 e!4397271)))

(declare-fun c!1364107 () Bool)

(declare-fun c!1364105 () Bool)

(declare-fun bm!670646 () Bool)

(assert (=> bm!670646 (= call!670651 ($colon$colon!3126 (exprs!8567 ct1!282) (ite (or c!1364105 c!1364107) (regTwo!38766 (regTwo!38767 r1!2370)) (regTwo!38767 r1!2370))))))

(declare-fun b!7343582 () Bool)

(declare-fun e!4397270 () (InoxSet Context!16134))

(declare-fun call!670655 () (InoxSet Context!16134))

(assert (=> b!7343582 (= e!4397270 ((_ map or) call!670652 call!670655))))

(declare-fun bm!670647 () Bool)

(assert (=> bm!670647 (= call!670654 call!670655)))

(declare-fun bm!670648 () Bool)

(declare-fun c!1364106 () Bool)

(assert (=> bm!670648 (= call!670652 (derivationStepZipperDown!2953 (ite c!1364106 (regOne!38767 (regTwo!38767 r1!2370)) (regOne!38766 (regTwo!38767 r1!2370))) (ite c!1364106 ct1!282 (Context!16135 call!670651)) c!10362))))

(declare-fun bm!670649 () Bool)

(assert (=> bm!670649 (= call!670650 call!670654)))

(declare-fun bm!670650 () Bool)

(assert (=> bm!670650 (= call!670655 (derivationStepZipperDown!2953 (ite c!1364106 (regTwo!38767 (regTwo!38767 r1!2370)) (ite c!1364105 (regTwo!38766 (regTwo!38767 r1!2370)) (ite c!1364107 (regOne!38766 (regTwo!38767 r1!2370)) (reg!19456 (regTwo!38767 r1!2370))))) (ite (or c!1364106 c!1364105) ct1!282 (Context!16135 call!670653)) c!10362))))

(declare-fun b!7343583 () Bool)

(assert (=> b!7343583 (= e!4397273 call!670650)))

(declare-fun b!7343584 () Bool)

(assert (=> b!7343584 (= e!4397269 e!4397273)))

(assert (=> b!7343584 (= c!1364107 ((_ is Concat!27972) (regTwo!38767 r1!2370)))))

(declare-fun b!7343585 () Bool)

(declare-fun e!4397272 () (InoxSet Context!16134))

(assert (=> b!7343585 (= e!4397272 (store ((as const (Array Context!16134 Bool)) false) ct1!282 true))))

(declare-fun d!2279206 () Bool)

(declare-fun c!1364108 () Bool)

(assert (=> d!2279206 (= c!1364108 (and ((_ is ElementMatch!19127) (regTwo!38767 r1!2370)) (= (c!1364075 (regTwo!38767 r1!2370)) c!10362)))))

(assert (=> d!2279206 (= (derivationStepZipperDown!2953 (regTwo!38767 r1!2370) ct1!282 c!10362) e!4397272)))

(declare-fun b!7343581 () Bool)

(assert (=> b!7343581 (= e!4397272 e!4397270)))

(assert (=> b!7343581 (= c!1364106 ((_ is Union!19127) (regTwo!38767 r1!2370)))))

(declare-fun b!7343586 () Bool)

(declare-fun e!4397274 () Bool)

(assert (=> b!7343586 (= e!4397274 (nullable!8220 (regOne!38766 (regTwo!38767 r1!2370))))))

(declare-fun b!7343587 () Bool)

(assert (=> b!7343587 (= c!1364105 e!4397274)))

(declare-fun res!2966366 () Bool)

(assert (=> b!7343587 (=> (not res!2966366) (not e!4397274))))

(assert (=> b!7343587 (= res!2966366 ((_ is Concat!27972) (regTwo!38767 r1!2370)))))

(assert (=> b!7343587 (= e!4397270 e!4397269)))

(assert (= (and d!2279206 c!1364108) b!7343585))

(assert (= (and d!2279206 (not c!1364108)) b!7343581))

(assert (= (and b!7343581 c!1364106) b!7343582))

(assert (= (and b!7343581 (not c!1364106)) b!7343587))

(assert (= (and b!7343587 res!2966366) b!7343586))

(assert (= (and b!7343587 c!1364105) b!7343578))

(assert (= (and b!7343587 (not c!1364105)) b!7343584))

(assert (= (and b!7343584 c!1364107) b!7343583))

(assert (= (and b!7343584 (not c!1364107)) b!7343580))

(assert (= (and b!7343580 c!1364109) b!7343579))

(assert (= (and b!7343580 (not c!1364109)) b!7343577))

(assert (= (or b!7343583 b!7343579) bm!670645))

(assert (= (or b!7343583 b!7343579) bm!670649))

(assert (= (or b!7343578 bm!670649) bm!670647))

(assert (= (or b!7343578 bm!670645) bm!670646))

(assert (= (or b!7343582 bm!670647) bm!670650))

(assert (= (or b!7343582 b!7343578) bm!670648))

(declare-fun m!8006620 () Bool)

(assert (=> bm!670648 m!8006620))

(declare-fun m!8006622 () Bool)

(assert (=> bm!670650 m!8006622))

(declare-fun m!8006624 () Bool)

(assert (=> b!7343585 m!8006624))

(assert (=> b!7343586 m!8006612))

(declare-fun m!8006626 () Bool)

(assert (=> bm!670646 m!8006626))

(assert (=> b!7343504 d!2279206))

(declare-fun b!7343588 () Bool)

(declare-fun e!4397277 () (InoxSet Context!16134))

(assert (=> b!7343588 (= e!4397277 ((as const (Array Context!16134 Bool)) false))))

(declare-fun b!7343589 () Bool)

(declare-fun e!4397275 () (InoxSet Context!16134))

(declare-fun call!670658 () (InoxSet Context!16134))

(declare-fun call!670660 () (InoxSet Context!16134))

(assert (=> b!7343589 (= e!4397275 ((_ map or) call!670658 call!670660))))

(declare-fun bm!670651 () Bool)

(declare-fun call!670659 () List!71623)

(declare-fun call!670657 () List!71623)

(assert (=> bm!670651 (= call!670659 call!670657)))

(declare-fun b!7343590 () Bool)

(declare-fun call!670656 () (InoxSet Context!16134))

(assert (=> b!7343590 (= e!4397277 call!670656)))

(declare-fun b!7343591 () Bool)

(declare-fun c!1364114 () Bool)

(assert (=> b!7343591 (= c!1364114 ((_ is Star!19127) (regOne!38767 r1!2370)))))

(declare-fun e!4397279 () (InoxSet Context!16134))

(assert (=> b!7343591 (= e!4397279 e!4397277)))

(declare-fun bm!670652 () Bool)

(declare-fun c!1364110 () Bool)

(declare-fun c!1364112 () Bool)

(assert (=> bm!670652 (= call!670657 ($colon$colon!3126 (exprs!8567 ct1!282) (ite (or c!1364110 c!1364112) (regTwo!38766 (regOne!38767 r1!2370)) (regOne!38767 r1!2370))))))

(declare-fun b!7343593 () Bool)

(declare-fun e!4397276 () (InoxSet Context!16134))

(declare-fun call!670661 () (InoxSet Context!16134))

(assert (=> b!7343593 (= e!4397276 ((_ map or) call!670658 call!670661))))

(declare-fun bm!670653 () Bool)

(assert (=> bm!670653 (= call!670660 call!670661)))

(declare-fun c!1364111 () Bool)

(declare-fun bm!670654 () Bool)

(assert (=> bm!670654 (= call!670658 (derivationStepZipperDown!2953 (ite c!1364111 (regOne!38767 (regOne!38767 r1!2370)) (regOne!38766 (regOne!38767 r1!2370))) (ite c!1364111 ct1!282 (Context!16135 call!670657)) c!10362))))

(declare-fun bm!670655 () Bool)

(assert (=> bm!670655 (= call!670656 call!670660)))

(declare-fun bm!670656 () Bool)

(assert (=> bm!670656 (= call!670661 (derivationStepZipperDown!2953 (ite c!1364111 (regTwo!38767 (regOne!38767 r1!2370)) (ite c!1364110 (regTwo!38766 (regOne!38767 r1!2370)) (ite c!1364112 (regOne!38766 (regOne!38767 r1!2370)) (reg!19456 (regOne!38767 r1!2370))))) (ite (or c!1364111 c!1364110) ct1!282 (Context!16135 call!670659)) c!10362))))

(declare-fun b!7343594 () Bool)

(assert (=> b!7343594 (= e!4397279 call!670656)))

(declare-fun b!7343595 () Bool)

(assert (=> b!7343595 (= e!4397275 e!4397279)))

(assert (=> b!7343595 (= c!1364112 ((_ is Concat!27972) (regOne!38767 r1!2370)))))

(declare-fun b!7343596 () Bool)

(declare-fun e!4397278 () (InoxSet Context!16134))

(assert (=> b!7343596 (= e!4397278 (store ((as const (Array Context!16134 Bool)) false) ct1!282 true))))

(declare-fun d!2279208 () Bool)

(declare-fun c!1364113 () Bool)

(assert (=> d!2279208 (= c!1364113 (and ((_ is ElementMatch!19127) (regOne!38767 r1!2370)) (= (c!1364075 (regOne!38767 r1!2370)) c!10362)))))

(assert (=> d!2279208 (= (derivationStepZipperDown!2953 (regOne!38767 r1!2370) ct1!282 c!10362) e!4397278)))

(declare-fun b!7343592 () Bool)

(assert (=> b!7343592 (= e!4397278 e!4397276)))

(assert (=> b!7343592 (= c!1364111 ((_ is Union!19127) (regOne!38767 r1!2370)))))

(declare-fun b!7343597 () Bool)

(declare-fun e!4397280 () Bool)

(assert (=> b!7343597 (= e!4397280 (nullable!8220 (regOne!38766 (regOne!38767 r1!2370))))))

(declare-fun b!7343598 () Bool)

(assert (=> b!7343598 (= c!1364110 e!4397280)))

(declare-fun res!2966367 () Bool)

(assert (=> b!7343598 (=> (not res!2966367) (not e!4397280))))

(assert (=> b!7343598 (= res!2966367 ((_ is Concat!27972) (regOne!38767 r1!2370)))))

(assert (=> b!7343598 (= e!4397276 e!4397275)))

(assert (= (and d!2279208 c!1364113) b!7343596))

(assert (= (and d!2279208 (not c!1364113)) b!7343592))

(assert (= (and b!7343592 c!1364111) b!7343593))

(assert (= (and b!7343592 (not c!1364111)) b!7343598))

(assert (= (and b!7343598 res!2966367) b!7343597))

(assert (= (and b!7343598 c!1364110) b!7343589))

(assert (= (and b!7343598 (not c!1364110)) b!7343595))

(assert (= (and b!7343595 c!1364112) b!7343594))

(assert (= (and b!7343595 (not c!1364112)) b!7343591))

(assert (= (and b!7343591 c!1364114) b!7343590))

(assert (= (and b!7343591 (not c!1364114)) b!7343588))

(assert (= (or b!7343594 b!7343590) bm!670651))

(assert (= (or b!7343594 b!7343590) bm!670655))

(assert (= (or b!7343589 bm!670655) bm!670653))

(assert (= (or b!7343589 bm!670651) bm!670652))

(assert (= (or b!7343593 bm!670653) bm!670656))

(assert (= (or b!7343593 b!7343589) bm!670654))

(declare-fun m!8006628 () Bool)

(assert (=> bm!670654 m!8006628))

(declare-fun m!8006630 () Bool)

(assert (=> bm!670656 m!8006630))

(assert (=> b!7343596 m!8006624))

(declare-fun m!8006632 () Bool)

(assert (=> b!7343597 m!8006632))

(declare-fun m!8006634 () Bool)

(assert (=> bm!670652 m!8006634))

(assert (=> b!7343504 d!2279208))

(declare-fun b!7343599 () Bool)

(declare-fun e!4397283 () (InoxSet Context!16134))

(assert (=> b!7343599 (= e!4397283 ((as const (Array Context!16134 Bool)) false))))

(declare-fun b!7343600 () Bool)

(declare-fun e!4397281 () (InoxSet Context!16134))

(declare-fun call!670664 () (InoxSet Context!16134))

(declare-fun call!670666 () (InoxSet Context!16134))

(assert (=> b!7343600 (= e!4397281 ((_ map or) call!670664 call!670666))))

(declare-fun bm!670657 () Bool)

(declare-fun call!670665 () List!71623)

(declare-fun call!670663 () List!71623)

(assert (=> bm!670657 (= call!670665 call!670663)))

(declare-fun b!7343601 () Bool)

(declare-fun call!670662 () (InoxSet Context!16134))

(assert (=> b!7343601 (= e!4397283 call!670662)))

(declare-fun b!7343602 () Bool)

(declare-fun c!1364119 () Bool)

(assert (=> b!7343602 (= c!1364119 ((_ is Star!19127) r1!2370))))

(declare-fun e!4397285 () (InoxSet Context!16134))

(assert (=> b!7343602 (= e!4397285 e!4397283)))

(declare-fun c!1364117 () Bool)

(declare-fun bm!670658 () Bool)

(declare-fun c!1364115 () Bool)

(assert (=> bm!670658 (= call!670663 ($colon$colon!3126 (exprs!8567 lt!2610635) (ite (or c!1364115 c!1364117) (regTwo!38766 r1!2370) r1!2370)))))

(declare-fun b!7343604 () Bool)

(declare-fun e!4397282 () (InoxSet Context!16134))

(declare-fun call!670667 () (InoxSet Context!16134))

(assert (=> b!7343604 (= e!4397282 ((_ map or) call!670664 call!670667))))

(declare-fun bm!670659 () Bool)

(assert (=> bm!670659 (= call!670666 call!670667)))

(declare-fun bm!670660 () Bool)

(declare-fun c!1364116 () Bool)

(assert (=> bm!670660 (= call!670664 (derivationStepZipperDown!2953 (ite c!1364116 (regOne!38767 r1!2370) (regOne!38766 r1!2370)) (ite c!1364116 lt!2610635 (Context!16135 call!670663)) c!10362))))

(declare-fun bm!670661 () Bool)

(assert (=> bm!670661 (= call!670662 call!670666)))

(declare-fun bm!670662 () Bool)

(assert (=> bm!670662 (= call!670667 (derivationStepZipperDown!2953 (ite c!1364116 (regTwo!38767 r1!2370) (ite c!1364115 (regTwo!38766 r1!2370) (ite c!1364117 (regOne!38766 r1!2370) (reg!19456 r1!2370)))) (ite (or c!1364116 c!1364115) lt!2610635 (Context!16135 call!670665)) c!10362))))

(declare-fun b!7343605 () Bool)

(assert (=> b!7343605 (= e!4397285 call!670662)))

(declare-fun b!7343606 () Bool)

(assert (=> b!7343606 (= e!4397281 e!4397285)))

(assert (=> b!7343606 (= c!1364117 ((_ is Concat!27972) r1!2370))))

(declare-fun b!7343607 () Bool)

(declare-fun e!4397284 () (InoxSet Context!16134))

(assert (=> b!7343607 (= e!4397284 (store ((as const (Array Context!16134 Bool)) false) lt!2610635 true))))

(declare-fun d!2279210 () Bool)

(declare-fun c!1364118 () Bool)

(assert (=> d!2279210 (= c!1364118 (and ((_ is ElementMatch!19127) r1!2370) (= (c!1364075 r1!2370) c!10362)))))

(assert (=> d!2279210 (= (derivationStepZipperDown!2953 r1!2370 lt!2610635 c!10362) e!4397284)))

(declare-fun b!7343603 () Bool)

(assert (=> b!7343603 (= e!4397284 e!4397282)))

(assert (=> b!7343603 (= c!1364116 ((_ is Union!19127) r1!2370))))

(declare-fun b!7343608 () Bool)

(declare-fun e!4397286 () Bool)

(assert (=> b!7343608 (= e!4397286 (nullable!8220 (regOne!38766 r1!2370)))))

(declare-fun b!7343609 () Bool)

(assert (=> b!7343609 (= c!1364115 e!4397286)))

(declare-fun res!2966368 () Bool)

(assert (=> b!7343609 (=> (not res!2966368) (not e!4397286))))

(assert (=> b!7343609 (= res!2966368 ((_ is Concat!27972) r1!2370))))

(assert (=> b!7343609 (= e!4397282 e!4397281)))

(assert (= (and d!2279210 c!1364118) b!7343607))

(assert (= (and d!2279210 (not c!1364118)) b!7343603))

(assert (= (and b!7343603 c!1364116) b!7343604))

(assert (= (and b!7343603 (not c!1364116)) b!7343609))

(assert (= (and b!7343609 res!2966368) b!7343608))

(assert (= (and b!7343609 c!1364115) b!7343600))

(assert (= (and b!7343609 (not c!1364115)) b!7343606))

(assert (= (and b!7343606 c!1364117) b!7343605))

(assert (= (and b!7343606 (not c!1364117)) b!7343602))

(assert (= (and b!7343602 c!1364119) b!7343601))

(assert (= (and b!7343602 (not c!1364119)) b!7343599))

(assert (= (or b!7343605 b!7343601) bm!670657))

(assert (= (or b!7343605 b!7343601) bm!670661))

(assert (= (or b!7343600 bm!670661) bm!670659))

(assert (= (or b!7343600 bm!670657) bm!670658))

(assert (= (or b!7343604 bm!670659) bm!670662))

(assert (= (or b!7343604 b!7343600) bm!670660))

(declare-fun m!8006636 () Bool)

(assert (=> bm!670660 m!8006636))

(declare-fun m!8006638 () Bool)

(assert (=> bm!670662 m!8006638))

(assert (=> b!7343607 m!8006610))

(declare-fun m!8006640 () Bool)

(assert (=> b!7343608 m!8006640))

(declare-fun m!8006642 () Bool)

(assert (=> bm!670658 m!8006642))

(assert (=> b!7343499 d!2279210))

(declare-fun b!7343612 () Bool)

(declare-fun res!2966370 () Bool)

(declare-fun e!4397288 () Bool)

(assert (=> b!7343612 (=> (not res!2966370) (not e!4397288))))

(declare-fun lt!2610656 () List!71623)

(assert (=> b!7343612 (= res!2966370 (= (size!42020 lt!2610656) (+ (size!42020 (exprs!8567 ct1!282)) (size!42020 (exprs!8567 ct2!378)))))))

(declare-fun b!7343613 () Bool)

(assert (=> b!7343613 (= e!4397288 (or (not (= (exprs!8567 ct2!378) Nil!71499)) (= lt!2610656 (exprs!8567 ct1!282))))))

(declare-fun d!2279212 () Bool)

(assert (=> d!2279212 e!4397288))

(declare-fun res!2966369 () Bool)

(assert (=> d!2279212 (=> (not res!2966369) (not e!4397288))))

(assert (=> d!2279212 (= res!2966369 (= (content!15041 lt!2610656) ((_ map or) (content!15041 (exprs!8567 ct1!282)) (content!15041 (exprs!8567 ct2!378)))))))

(declare-fun e!4397287 () List!71623)

(assert (=> d!2279212 (= lt!2610656 e!4397287)))

(declare-fun c!1364120 () Bool)

(assert (=> d!2279212 (= c!1364120 ((_ is Nil!71499) (exprs!8567 ct1!282)))))

(assert (=> d!2279212 (= (++!16945 (exprs!8567 ct1!282) (exprs!8567 ct2!378)) lt!2610656)))

(declare-fun b!7343611 () Bool)

(assert (=> b!7343611 (= e!4397287 (Cons!71499 (h!77947 (exprs!8567 ct1!282)) (++!16945 (t!386018 (exprs!8567 ct1!282)) (exprs!8567 ct2!378))))))

(declare-fun b!7343610 () Bool)

(assert (=> b!7343610 (= e!4397287 (exprs!8567 ct2!378))))

(assert (= (and d!2279212 c!1364120) b!7343610))

(assert (= (and d!2279212 (not c!1364120)) b!7343611))

(assert (= (and d!2279212 res!2966369) b!7343612))

(assert (= (and b!7343612 res!2966370) b!7343613))

(declare-fun m!8006644 () Bool)

(assert (=> b!7343612 m!8006644))

(declare-fun m!8006646 () Bool)

(assert (=> b!7343612 m!8006646))

(assert (=> b!7343612 m!8006596))

(declare-fun m!8006648 () Bool)

(assert (=> d!2279212 m!8006648))

(declare-fun m!8006650 () Bool)

(assert (=> d!2279212 m!8006650))

(assert (=> d!2279212 m!8006602))

(declare-fun m!8006652 () Bool)

(assert (=> b!7343611 m!8006652))

(assert (=> b!7343499 d!2279212))

(assert (=> b!7343499 d!2279196))

(declare-fun b!7343614 () Bool)

(declare-fun e!4397291 () (InoxSet Context!16134))

(assert (=> b!7343614 (= e!4397291 ((as const (Array Context!16134 Bool)) false))))

(declare-fun b!7343615 () Bool)

(declare-fun e!4397289 () (InoxSet Context!16134))

(declare-fun call!670670 () (InoxSet Context!16134))

(declare-fun call!670672 () (InoxSet Context!16134))

(assert (=> b!7343615 (= e!4397289 ((_ map or) call!670670 call!670672))))

(declare-fun bm!670663 () Bool)

(declare-fun call!670671 () List!71623)

(declare-fun call!670669 () List!71623)

(assert (=> bm!670663 (= call!670671 call!670669)))

(declare-fun b!7343616 () Bool)

(declare-fun call!670668 () (InoxSet Context!16134))

(assert (=> b!7343616 (= e!4397291 call!670668)))

(declare-fun b!7343617 () Bool)

(declare-fun c!1364125 () Bool)

(assert (=> b!7343617 (= c!1364125 ((_ is Star!19127) r1!2370))))

(declare-fun e!4397293 () (InoxSet Context!16134))

(assert (=> b!7343617 (= e!4397293 e!4397291)))

(declare-fun c!1364123 () Bool)

(declare-fun bm!670664 () Bool)

(declare-fun c!1364121 () Bool)

(assert (=> bm!670664 (= call!670669 ($colon$colon!3126 (exprs!8567 ct1!282) (ite (or c!1364121 c!1364123) (regTwo!38766 r1!2370) r1!2370)))))

(declare-fun b!7343619 () Bool)

(declare-fun e!4397290 () (InoxSet Context!16134))

(declare-fun call!670673 () (InoxSet Context!16134))

(assert (=> b!7343619 (= e!4397290 ((_ map or) call!670670 call!670673))))

(declare-fun bm!670665 () Bool)

(assert (=> bm!670665 (= call!670672 call!670673)))

(declare-fun bm!670666 () Bool)

(declare-fun c!1364122 () Bool)

(assert (=> bm!670666 (= call!670670 (derivationStepZipperDown!2953 (ite c!1364122 (regOne!38767 r1!2370) (regOne!38766 r1!2370)) (ite c!1364122 ct1!282 (Context!16135 call!670669)) c!10362))))

(declare-fun bm!670667 () Bool)

(assert (=> bm!670667 (= call!670668 call!670672)))

(declare-fun bm!670668 () Bool)

(assert (=> bm!670668 (= call!670673 (derivationStepZipperDown!2953 (ite c!1364122 (regTwo!38767 r1!2370) (ite c!1364121 (regTwo!38766 r1!2370) (ite c!1364123 (regOne!38766 r1!2370) (reg!19456 r1!2370)))) (ite (or c!1364122 c!1364121) ct1!282 (Context!16135 call!670671)) c!10362))))

(declare-fun b!7343620 () Bool)

(assert (=> b!7343620 (= e!4397293 call!670668)))

(declare-fun b!7343621 () Bool)

(assert (=> b!7343621 (= e!4397289 e!4397293)))

(assert (=> b!7343621 (= c!1364123 ((_ is Concat!27972) r1!2370))))

(declare-fun b!7343622 () Bool)

(declare-fun e!4397292 () (InoxSet Context!16134))

(assert (=> b!7343622 (= e!4397292 (store ((as const (Array Context!16134 Bool)) false) ct1!282 true))))

(declare-fun d!2279214 () Bool)

(declare-fun c!1364124 () Bool)

(assert (=> d!2279214 (= c!1364124 (and ((_ is ElementMatch!19127) r1!2370) (= (c!1364075 r1!2370) c!10362)))))

(assert (=> d!2279214 (= (derivationStepZipperDown!2953 r1!2370 ct1!282 c!10362) e!4397292)))

(declare-fun b!7343618 () Bool)

(assert (=> b!7343618 (= e!4397292 e!4397290)))

(assert (=> b!7343618 (= c!1364122 ((_ is Union!19127) r1!2370))))

(declare-fun b!7343623 () Bool)

(declare-fun e!4397294 () Bool)

(assert (=> b!7343623 (= e!4397294 (nullable!8220 (regOne!38766 r1!2370)))))

(declare-fun b!7343624 () Bool)

(assert (=> b!7343624 (= c!1364121 e!4397294)))

(declare-fun res!2966371 () Bool)

(assert (=> b!7343624 (=> (not res!2966371) (not e!4397294))))

(assert (=> b!7343624 (= res!2966371 ((_ is Concat!27972) r1!2370))))

(assert (=> b!7343624 (= e!4397290 e!4397289)))

(assert (= (and d!2279214 c!1364124) b!7343622))

(assert (= (and d!2279214 (not c!1364124)) b!7343618))

(assert (= (and b!7343618 c!1364122) b!7343619))

(assert (= (and b!7343618 (not c!1364122)) b!7343624))

(assert (= (and b!7343624 res!2966371) b!7343623))

(assert (= (and b!7343624 c!1364121) b!7343615))

(assert (= (and b!7343624 (not c!1364121)) b!7343621))

(assert (= (and b!7343621 c!1364123) b!7343620))

(assert (= (and b!7343621 (not c!1364123)) b!7343617))

(assert (= (and b!7343617 c!1364125) b!7343616))

(assert (= (and b!7343617 (not c!1364125)) b!7343614))

(assert (= (or b!7343620 b!7343616) bm!670663))

(assert (= (or b!7343620 b!7343616) bm!670667))

(assert (= (or b!7343615 bm!670667) bm!670665))

(assert (= (or b!7343615 bm!670663) bm!670664))

(assert (= (or b!7343619 bm!670665) bm!670668))

(assert (= (or b!7343619 b!7343615) bm!670666))

(declare-fun m!8006654 () Bool)

(assert (=> bm!670666 m!8006654))

(declare-fun m!8006656 () Bool)

(assert (=> bm!670668 m!8006656))

(assert (=> b!7343622 m!8006624))

(assert (=> b!7343623 m!8006640))

(declare-fun m!8006658 () Bool)

(assert (=> bm!670664 m!8006658))

(assert (=> b!7343501 d!2279214))

(declare-fun b!7343666 () Bool)

(declare-fun e!4397322 () Bool)

(declare-fun call!670686 () Bool)

(assert (=> b!7343666 (= e!4397322 call!670686)))

(declare-fun b!7343667 () Bool)

(declare-fun e!4397326 () Bool)

(declare-fun e!4397321 () Bool)

(assert (=> b!7343667 (= e!4397326 e!4397321)))

(declare-fun res!2966389 () Bool)

(assert (=> b!7343667 (=> (not res!2966389) (not e!4397321))))

(declare-fun call!670687 () Bool)

(assert (=> b!7343667 (= res!2966389 call!670687)))

(declare-fun bm!670681 () Bool)

(declare-fun call!670688 () Bool)

(assert (=> bm!670681 (= call!670688 call!670686)))

(declare-fun bm!670682 () Bool)

(declare-fun c!1364139 () Bool)

(assert (=> bm!670682 (= call!670687 (validRegex!9723 (ite c!1364139 (regTwo!38767 r1!2370) (regOne!38766 r1!2370))))))

(declare-fun b!7343668 () Bool)

(declare-fun e!4397323 () Bool)

(declare-fun e!4397324 () Bool)

(assert (=> b!7343668 (= e!4397323 e!4397324)))

(declare-fun c!1364138 () Bool)

(assert (=> b!7343668 (= c!1364138 ((_ is Star!19127) r1!2370))))

(declare-fun b!7343669 () Bool)

(declare-fun res!2966391 () Bool)

(declare-fun e!4397325 () Bool)

(assert (=> b!7343669 (=> (not res!2966391) (not e!4397325))))

(assert (=> b!7343669 (= res!2966391 call!670688)))

(declare-fun e!4397327 () Bool)

(assert (=> b!7343669 (= e!4397327 e!4397325)))

(declare-fun b!7343670 () Bool)

(assert (=> b!7343670 (= e!4397324 e!4397327)))

(assert (=> b!7343670 (= c!1364139 ((_ is Union!19127) r1!2370))))

(declare-fun b!7343671 () Bool)

(assert (=> b!7343671 (= e!4397321 call!670688)))

(declare-fun bm!670683 () Bool)

(assert (=> bm!670683 (= call!670686 (validRegex!9723 (ite c!1364138 (reg!19456 r1!2370) (ite c!1364139 (regOne!38767 r1!2370) (regTwo!38766 r1!2370)))))))

(declare-fun b!7343673 () Bool)

(assert (=> b!7343673 (= e!4397325 call!670687)))

(declare-fun b!7343674 () Bool)

(declare-fun res!2966392 () Bool)

(assert (=> b!7343674 (=> res!2966392 e!4397326)))

(assert (=> b!7343674 (= res!2966392 (not ((_ is Concat!27972) r1!2370)))))

(assert (=> b!7343674 (= e!4397327 e!4397326)))

(declare-fun b!7343672 () Bool)

(assert (=> b!7343672 (= e!4397324 e!4397322)))

(declare-fun res!2966390 () Bool)

(assert (=> b!7343672 (= res!2966390 (not (nullable!8220 (reg!19456 r1!2370))))))

(assert (=> b!7343672 (=> (not res!2966390) (not e!4397322))))

(declare-fun d!2279216 () Bool)

(declare-fun res!2966393 () Bool)

(assert (=> d!2279216 (=> res!2966393 e!4397323)))

(assert (=> d!2279216 (= res!2966393 ((_ is ElementMatch!19127) r1!2370))))

(assert (=> d!2279216 (= (validRegex!9723 r1!2370) e!4397323)))

(assert (= (and d!2279216 (not res!2966393)) b!7343668))

(assert (= (and b!7343668 c!1364138) b!7343672))

(assert (= (and b!7343668 (not c!1364138)) b!7343670))

(assert (= (and b!7343672 res!2966390) b!7343666))

(assert (= (and b!7343670 c!1364139) b!7343669))

(assert (= (and b!7343670 (not c!1364139)) b!7343674))

(assert (= (and b!7343669 res!2966391) b!7343673))

(assert (= (and b!7343674 (not res!2966392)) b!7343667))

(assert (= (and b!7343667 res!2966389) b!7343671))

(assert (= (or b!7343669 b!7343671) bm!670681))

(assert (= (or b!7343673 b!7343667) bm!670682))

(assert (= (or b!7343666 bm!670681) bm!670683))

(declare-fun m!8006684 () Bool)

(assert (=> bm!670682 m!8006684))

(declare-fun m!8006686 () Bool)

(assert (=> bm!670683 m!8006686))

(declare-fun m!8006688 () Bool)

(assert (=> b!7343672 m!8006688))

(assert (=> start!717200 d!2279216))

(declare-fun bs!1918647 () Bool)

(declare-fun d!2279222 () Bool)

(assert (= bs!1918647 (and d!2279222 b!7343499)))

(declare-fun lambda!455879 () Int)

(assert (=> bs!1918647 (= lambda!455879 lambda!455871)))

(declare-fun bs!1918648 () Bool)

(assert (= bs!1918648 (and d!2279222 d!2279194)))

(assert (=> bs!1918648 (= lambda!455879 lambda!455876)))

(assert (=> d!2279222 (= (inv!91157 cWitness!61) (forall!17957 (exprs!8567 cWitness!61) lambda!455879))))

(declare-fun bs!1918649 () Bool)

(assert (= bs!1918649 d!2279222))

(declare-fun m!8006696 () Bool)

(assert (=> bs!1918649 m!8006696))

(assert (=> start!717200 d!2279222))

(declare-fun bs!1918650 () Bool)

(declare-fun d!2279226 () Bool)

(assert (= bs!1918650 (and d!2279226 b!7343499)))

(declare-fun lambda!455880 () Int)

(assert (=> bs!1918650 (= lambda!455880 lambda!455871)))

(declare-fun bs!1918651 () Bool)

(assert (= bs!1918651 (and d!2279226 d!2279194)))

(assert (=> bs!1918651 (= lambda!455880 lambda!455876)))

(declare-fun bs!1918652 () Bool)

(assert (= bs!1918652 (and d!2279226 d!2279222)))

(assert (=> bs!1918652 (= lambda!455880 lambda!455879)))

(assert (=> d!2279226 (= (inv!91157 ct1!282) (forall!17957 (exprs!8567 ct1!282) lambda!455880))))

(declare-fun bs!1918653 () Bool)

(assert (= bs!1918653 d!2279226))

(declare-fun m!8006698 () Bool)

(assert (=> bs!1918653 m!8006698))

(assert (=> start!717200 d!2279226))

(declare-fun bs!1918654 () Bool)

(declare-fun d!2279228 () Bool)

(assert (= bs!1918654 (and d!2279228 b!7343499)))

(declare-fun lambda!455881 () Int)

(assert (=> bs!1918654 (= lambda!455881 lambda!455871)))

(declare-fun bs!1918655 () Bool)

(assert (= bs!1918655 (and d!2279228 d!2279194)))

(assert (=> bs!1918655 (= lambda!455881 lambda!455876)))

(declare-fun bs!1918656 () Bool)

(assert (= bs!1918656 (and d!2279228 d!2279222)))

(assert (=> bs!1918656 (= lambda!455881 lambda!455879)))

(declare-fun bs!1918657 () Bool)

(assert (= bs!1918657 (and d!2279228 d!2279226)))

(assert (=> bs!1918657 (= lambda!455881 lambda!455880)))

(assert (=> d!2279228 (= (inv!91157 ct2!378) (forall!17957 (exprs!8567 ct2!378) lambda!455881))))

(declare-fun bs!1918658 () Bool)

(assert (= bs!1918658 d!2279228))

(declare-fun m!8006700 () Bool)

(assert (=> bs!1918658 m!8006700))

(assert (=> start!717200 d!2279228))

(declare-fun d!2279230 () Bool)

(declare-fun res!2966406 () Bool)

(declare-fun e!4397350 () Bool)

(assert (=> d!2279230 (=> res!2966406 e!4397350)))

(assert (=> d!2279230 (= res!2966406 ((_ is Nil!71499) (exprs!8567 cWitness!61)))))

(assert (=> d!2279230 (= (forall!17957 (exprs!8567 cWitness!61) lambda!455871) e!4397350)))

(declare-fun b!7343707 () Bool)

(declare-fun e!4397351 () Bool)

(assert (=> b!7343707 (= e!4397350 e!4397351)))

(declare-fun res!2966407 () Bool)

(assert (=> b!7343707 (=> (not res!2966407) (not e!4397351))))

(declare-fun dynLambda!29464 (Int Regex!19127) Bool)

(assert (=> b!7343707 (= res!2966407 (dynLambda!29464 lambda!455871 (h!77947 (exprs!8567 cWitness!61))))))

(declare-fun b!7343708 () Bool)

(assert (=> b!7343708 (= e!4397351 (forall!17957 (t!386018 (exprs!8567 cWitness!61)) lambda!455871))))

(assert (= (and d!2279230 (not res!2966406)) b!7343707))

(assert (= (and b!7343707 res!2966407) b!7343708))

(declare-fun b_lambda!283941 () Bool)

(assert (=> (not b_lambda!283941) (not b!7343707)))

(declare-fun m!8006716 () Bool)

(assert (=> b!7343707 m!8006716))

(declare-fun m!8006718 () Bool)

(assert (=> b!7343708 m!8006718))

(assert (=> b!7343507 d!2279230))

(declare-fun d!2279236 () Bool)

(declare-fun res!2966408 () Bool)

(declare-fun e!4397352 () Bool)

(assert (=> d!2279236 (=> res!2966408 e!4397352)))

(assert (=> d!2279236 (= res!2966408 ((_ is Nil!71499) (exprs!8567 ct2!378)))))

(assert (=> d!2279236 (= (forall!17957 (exprs!8567 ct2!378) lambda!455871) e!4397352)))

(declare-fun b!7343709 () Bool)

(declare-fun e!4397353 () Bool)

(assert (=> b!7343709 (= e!4397352 e!4397353)))

(declare-fun res!2966409 () Bool)

(assert (=> b!7343709 (=> (not res!2966409) (not e!4397353))))

(assert (=> b!7343709 (= res!2966409 (dynLambda!29464 lambda!455871 (h!77947 (exprs!8567 ct2!378))))))

(declare-fun b!7343710 () Bool)

(assert (=> b!7343710 (= e!4397353 (forall!17957 (t!386018 (exprs!8567 ct2!378)) lambda!455871))))

(assert (= (and d!2279236 (not res!2966408)) b!7343709))

(assert (= (and b!7343709 res!2966409) b!7343710))

(declare-fun b_lambda!283943 () Bool)

(assert (=> (not b_lambda!283943) (not b!7343709)))

(declare-fun m!8006724 () Bool)

(assert (=> b!7343709 m!8006724))

(declare-fun m!8006726 () Bool)

(assert (=> b!7343710 m!8006726))

(assert (=> b!7343502 d!2279236))

(declare-fun b!7343715 () Bool)

(declare-fun e!4397356 () Bool)

(declare-fun tp!2085400 () Bool)

(declare-fun tp!2085401 () Bool)

(assert (=> b!7343715 (= e!4397356 (and tp!2085400 tp!2085401))))

(assert (=> b!7343509 (= tp!2085388 e!4397356)))

(assert (= (and b!7343509 ((_ is Cons!71499) (exprs!8567 ct1!282))) b!7343715))

(declare-fun b!7343716 () Bool)

(declare-fun e!4397357 () Bool)

(declare-fun tp!2085402 () Bool)

(declare-fun tp!2085403 () Bool)

(assert (=> b!7343716 (= e!4397357 (and tp!2085402 tp!2085403))))

(assert (=> b!7343500 (= tp!2085393 e!4397357)))

(assert (= (and b!7343500 ((_ is Cons!71499) (exprs!8567 cWitness!61))) b!7343716))

(declare-fun b!7343730 () Bool)

(declare-fun e!4397360 () Bool)

(declare-fun tp!2085416 () Bool)

(declare-fun tp!2085415 () Bool)

(assert (=> b!7343730 (= e!4397360 (and tp!2085416 tp!2085415))))

(declare-fun b!7343729 () Bool)

(declare-fun tp!2085417 () Bool)

(assert (=> b!7343729 (= e!4397360 tp!2085417)))

(declare-fun b!7343728 () Bool)

(declare-fun tp!2085414 () Bool)

(declare-fun tp!2085418 () Bool)

(assert (=> b!7343728 (= e!4397360 (and tp!2085414 tp!2085418))))

(assert (=> b!7343506 (= tp!2085390 e!4397360)))

(declare-fun b!7343727 () Bool)

(assert (=> b!7343727 (= e!4397360 tp_is_empty!48499)))

(assert (= (and b!7343506 ((_ is ElementMatch!19127) (reg!19456 r1!2370))) b!7343727))

(assert (= (and b!7343506 ((_ is Concat!27972) (reg!19456 r1!2370))) b!7343728))

(assert (= (and b!7343506 ((_ is Star!19127) (reg!19456 r1!2370))) b!7343729))

(assert (= (and b!7343506 ((_ is Union!19127) (reg!19456 r1!2370))) b!7343730))

(declare-fun b!7343734 () Bool)

(declare-fun e!4397361 () Bool)

(declare-fun tp!2085421 () Bool)

(declare-fun tp!2085420 () Bool)

(assert (=> b!7343734 (= e!4397361 (and tp!2085421 tp!2085420))))

(declare-fun b!7343733 () Bool)

(declare-fun tp!2085422 () Bool)

(assert (=> b!7343733 (= e!4397361 tp!2085422)))

(declare-fun b!7343732 () Bool)

(declare-fun tp!2085419 () Bool)

(declare-fun tp!2085423 () Bool)

(assert (=> b!7343732 (= e!4397361 (and tp!2085419 tp!2085423))))

(assert (=> b!7343496 (= tp!2085389 e!4397361)))

(declare-fun b!7343731 () Bool)

(assert (=> b!7343731 (= e!4397361 tp_is_empty!48499)))

(assert (= (and b!7343496 ((_ is ElementMatch!19127) (regOne!38766 r1!2370))) b!7343731))

(assert (= (and b!7343496 ((_ is Concat!27972) (regOne!38766 r1!2370))) b!7343732))

(assert (= (and b!7343496 ((_ is Star!19127) (regOne!38766 r1!2370))) b!7343733))

(assert (= (and b!7343496 ((_ is Union!19127) (regOne!38766 r1!2370))) b!7343734))

(declare-fun b!7343738 () Bool)

(declare-fun e!4397362 () Bool)

(declare-fun tp!2085426 () Bool)

(declare-fun tp!2085425 () Bool)

(assert (=> b!7343738 (= e!4397362 (and tp!2085426 tp!2085425))))

(declare-fun b!7343737 () Bool)

(declare-fun tp!2085427 () Bool)

(assert (=> b!7343737 (= e!4397362 tp!2085427)))

(declare-fun b!7343736 () Bool)

(declare-fun tp!2085424 () Bool)

(declare-fun tp!2085428 () Bool)

(assert (=> b!7343736 (= e!4397362 (and tp!2085424 tp!2085428))))

(assert (=> b!7343496 (= tp!2085391 e!4397362)))

(declare-fun b!7343735 () Bool)

(assert (=> b!7343735 (= e!4397362 tp_is_empty!48499)))

(assert (= (and b!7343496 ((_ is ElementMatch!19127) (regTwo!38766 r1!2370))) b!7343735))

(assert (= (and b!7343496 ((_ is Concat!27972) (regTwo!38766 r1!2370))) b!7343736))

(assert (= (and b!7343496 ((_ is Star!19127) (regTwo!38766 r1!2370))) b!7343737))

(assert (= (and b!7343496 ((_ is Union!19127) (regTwo!38766 r1!2370))) b!7343738))

(declare-fun b!7343742 () Bool)

(declare-fun e!4397363 () Bool)

(declare-fun tp!2085431 () Bool)

(declare-fun tp!2085430 () Bool)

(assert (=> b!7343742 (= e!4397363 (and tp!2085431 tp!2085430))))

(declare-fun b!7343741 () Bool)

(declare-fun tp!2085432 () Bool)

(assert (=> b!7343741 (= e!4397363 tp!2085432)))

(declare-fun b!7343740 () Bool)

(declare-fun tp!2085429 () Bool)

(declare-fun tp!2085433 () Bool)

(assert (=> b!7343740 (= e!4397363 (and tp!2085429 tp!2085433))))

(assert (=> b!7343497 (= tp!2085392 e!4397363)))

(declare-fun b!7343739 () Bool)

(assert (=> b!7343739 (= e!4397363 tp_is_empty!48499)))

(assert (= (and b!7343497 ((_ is ElementMatch!19127) (regOne!38767 r1!2370))) b!7343739))

(assert (= (and b!7343497 ((_ is Concat!27972) (regOne!38767 r1!2370))) b!7343740))

(assert (= (and b!7343497 ((_ is Star!19127) (regOne!38767 r1!2370))) b!7343741))

(assert (= (and b!7343497 ((_ is Union!19127) (regOne!38767 r1!2370))) b!7343742))

(declare-fun b!7343746 () Bool)

(declare-fun e!4397364 () Bool)

(declare-fun tp!2085436 () Bool)

(declare-fun tp!2085435 () Bool)

(assert (=> b!7343746 (= e!4397364 (and tp!2085436 tp!2085435))))

(declare-fun b!7343745 () Bool)

(declare-fun tp!2085437 () Bool)

(assert (=> b!7343745 (= e!4397364 tp!2085437)))

(declare-fun b!7343744 () Bool)

(declare-fun tp!2085434 () Bool)

(declare-fun tp!2085438 () Bool)

(assert (=> b!7343744 (= e!4397364 (and tp!2085434 tp!2085438))))

(assert (=> b!7343497 (= tp!2085395 e!4397364)))

(declare-fun b!7343743 () Bool)

(assert (=> b!7343743 (= e!4397364 tp_is_empty!48499)))

(assert (= (and b!7343497 ((_ is ElementMatch!19127) (regTwo!38767 r1!2370))) b!7343743))

(assert (= (and b!7343497 ((_ is Concat!27972) (regTwo!38767 r1!2370))) b!7343744))

(assert (= (and b!7343497 ((_ is Star!19127) (regTwo!38767 r1!2370))) b!7343745))

(assert (= (and b!7343497 ((_ is Union!19127) (regTwo!38767 r1!2370))) b!7343746))

(declare-fun b!7343747 () Bool)

(declare-fun e!4397365 () Bool)

(declare-fun tp!2085439 () Bool)

(declare-fun tp!2085440 () Bool)

(assert (=> b!7343747 (= e!4397365 (and tp!2085439 tp!2085440))))

(assert (=> b!7343508 (= tp!2085394 e!4397365)))

(assert (= (and b!7343508 ((_ is Cons!71499) (exprs!8567 ct2!378))) b!7343747))

(declare-fun b_lambda!283945 () Bool)

(assert (= b_lambda!283943 (or b!7343499 b_lambda!283945)))

(declare-fun bs!1918659 () Bool)

(declare-fun d!2279240 () Bool)

(assert (= bs!1918659 (and d!2279240 b!7343499)))

(assert (=> bs!1918659 (= (dynLambda!29464 lambda!455871 (h!77947 (exprs!8567 ct2!378))) (validRegex!9723 (h!77947 (exprs!8567 ct2!378))))))

(declare-fun m!8006732 () Bool)

(assert (=> bs!1918659 m!8006732))

(assert (=> b!7343709 d!2279240))

(declare-fun b_lambda!283947 () Bool)

(assert (= b_lambda!283941 (or b!7343499 b_lambda!283947)))

(declare-fun bs!1918660 () Bool)

(declare-fun d!2279242 () Bool)

(assert (= bs!1918660 (and d!2279242 b!7343499)))

(assert (=> bs!1918660 (= (dynLambda!29464 lambda!455871 (h!77947 (exprs!8567 cWitness!61))) (validRegex!9723 (h!77947 (exprs!8567 cWitness!61))))))

(declare-fun m!8006734 () Bool)

(assert (=> bs!1918660 m!8006734))

(assert (=> b!7343707 d!2279242))

(check-sat (not bm!670682) (not b!7343744) (not bm!670634) (not d!2279226) (not bm!670658) (not d!2279212) (not d!2279196) (not d!2279194) (not b!7343716) (not b!7343730) (not b!7343747) (not b!7343519) (not d!2279222) (not bm!670650) (not b!7343745) (not bm!670654) (not bm!670648) (not b!7343728) (not bm!670646) (not d!2279228) (not b!7343597) (not bs!1918660) (not b!7343520) (not b!7343708) (not b!7343710) (not b!7343586) (not bm!670662) (not b_lambda!283945) (not b!7343738) (not b_lambda!283947) (not b!7343715) (not b!7343623) (not bm!670664) (not b!7343611) (not b!7343612) (not bs!1918659) (not b!7343575) (not b!7343742) (not bm!670666) (not bm!670660) (not b!7343746) (not b!7343672) (not d!2279198) (not b!7343729) (not bm!670652) (not b!7343732) (not bm!670636) (not d!2279204) (not b!7343741) tp_is_empty!48499 (not bm!670632) (not b!7343740) (not b!7343733) (not b!7343734) (not bm!670656) (not b!7343737) (not bm!670668) (not b!7343608) (not bm!670683) (not b!7343736))
(check-sat)
