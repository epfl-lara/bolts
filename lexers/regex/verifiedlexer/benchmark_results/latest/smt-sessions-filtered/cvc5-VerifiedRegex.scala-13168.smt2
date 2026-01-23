; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718706 () Bool)

(assert start!718706)

(declare-fun b!7360680 () Bool)

(declare-fun e!4406995 () Bool)

(declare-fun tp!2091487 () Bool)

(assert (=> b!7360680 (= e!4406995 tp!2091487)))

(declare-fun res!2971549 () Bool)

(declare-fun e!4406991 () Bool)

(assert (=> start!718706 (=> (not res!2971549) (not e!4406991))))

(declare-datatypes ((C!38722 0))(
  ( (C!38723 (val!29721 Int)) )
))
(declare-datatypes ((Regex!19224 0))(
  ( (ElementMatch!19224 (c!1367650 C!38722)) (Concat!28069 (regOne!38960 Regex!19224) (regTwo!38960 Regex!19224)) (EmptyExpr!19224) (Star!19224 (reg!19553 Regex!19224)) (EmptyLang!19224) (Union!19224 (regOne!38961 Regex!19224) (regTwo!38961 Regex!19224)) )
))
(declare-fun r1!2370 () Regex!19224)

(declare-fun validRegex!9820 (Regex!19224) Bool)

(assert (=> start!718706 (= res!2971549 (validRegex!9820 r1!2370))))

(assert (=> start!718706 e!4406991))

(declare-fun tp_is_empty!48693 () Bool)

(assert (=> start!718706 tp_is_empty!48693))

(declare-datatypes ((List!71720 0))(
  ( (Nil!71596) (Cons!71596 (h!78044 Regex!19224) (t!386169 List!71720)) )
))
(declare-datatypes ((Context!16328 0))(
  ( (Context!16329 (exprs!8664 List!71720)) )
))
(declare-fun cWitness!61 () Context!16328)

(declare-fun e!4406989 () Bool)

(declare-fun inv!91401 (Context!16328) Bool)

(assert (=> start!718706 (and (inv!91401 cWitness!61) e!4406989)))

(declare-fun ct1!282 () Context!16328)

(declare-fun e!4406992 () Bool)

(assert (=> start!718706 (and (inv!91401 ct1!282) e!4406992)))

(assert (=> start!718706 e!4406995))

(declare-fun ct2!378 () Context!16328)

(declare-fun e!4406996 () Bool)

(assert (=> start!718706 (and (inv!91401 ct2!378) e!4406996)))

(declare-fun b!7360681 () Bool)

(declare-fun e!4406993 () Bool)

(assert (=> b!7360681 (= e!4406991 e!4406993)))

(declare-fun res!2971548 () Bool)

(assert (=> b!7360681 (=> (not res!2971548) (not e!4406993))))

(declare-fun lt!2613786 () (Set Context!16328))

(assert (=> b!7360681 (= res!2971548 (set.member cWitness!61 lt!2613786))))

(declare-fun c!10362 () C!38722)

(declare-fun derivationStepZipperDown!3050 (Regex!19224 Context!16328 C!38722) (Set Context!16328))

(assert (=> b!7360681 (= lt!2613786 (derivationStepZipperDown!3050 r1!2370 ct1!282 c!10362))))

(declare-fun b!7360682 () Bool)

(declare-fun e!4406994 () Bool)

(assert (=> b!7360682 (= e!4406993 e!4406994)))

(declare-fun res!2971547 () Bool)

(assert (=> b!7360682 (=> (not res!2971547) (not e!4406994))))

(assert (=> b!7360682 (= res!2971547 (and (is-ElementMatch!19224 r1!2370) (= c!10362 (c!1367650 r1!2370))))))

(declare-fun lt!2613782 () Context!16328)

(declare-fun lt!2613787 () (Set Context!16328))

(assert (=> b!7360682 (= lt!2613787 (derivationStepZipperDown!3050 r1!2370 lt!2613782 c!10362))))

(declare-fun ++!17040 (List!71720 List!71720) List!71720)

(assert (=> b!7360682 (= lt!2613782 (Context!16329 (++!17040 (exprs!8664 ct1!282) (exprs!8664 ct2!378))))))

(declare-fun lambda!457300 () Int)

(declare-datatypes ((Unit!165397 0))(
  ( (Unit!165398) )
))
(declare-fun lt!2613783 () Unit!165397)

(declare-fun lemmaConcatPreservesForall!1897 (List!71720 List!71720 Int) Unit!165397)

(assert (=> b!7360682 (= lt!2613783 (lemmaConcatPreservesForall!1897 (exprs!8664 ct1!282) (exprs!8664 ct2!378) lambda!457300))))

(declare-fun b!7360683 () Bool)

(declare-fun tp!2091489 () Bool)

(assert (=> b!7360683 (= e!4406992 tp!2091489)))

(declare-fun b!7360684 () Bool)

(declare-fun tp!2091491 () Bool)

(declare-fun tp!2091492 () Bool)

(assert (=> b!7360684 (= e!4406995 (and tp!2091491 tp!2091492))))

(declare-fun b!7360685 () Bool)

(declare-fun e!4406990 () Bool)

(assert (=> b!7360685 (= e!4406994 e!4406990)))

(declare-fun res!2971550 () Bool)

(assert (=> b!7360685 (=> (not res!2971550) (not e!4406990))))

(declare-fun lt!2613785 () (Set Context!16328))

(assert (=> b!7360685 (= res!2971550 (and (= lt!2613786 lt!2613785) (set.member cWitness!61 lt!2613785) (= cWitness!61 ct1!282)))))

(assert (=> b!7360685 (= lt!2613785 (set.insert ct1!282 (as set.empty (Set Context!16328))))))

(declare-fun b!7360686 () Bool)

(declare-fun tp!2091493 () Bool)

(assert (=> b!7360686 (= e!4406996 tp!2091493)))

(declare-fun b!7360687 () Bool)

(assert (=> b!7360687 (= e!4406995 tp_is_empty!48693)))

(declare-fun b!7360688 () Bool)

(declare-fun tp!2091488 () Bool)

(declare-fun tp!2091490 () Bool)

(assert (=> b!7360688 (= e!4406995 (and tp!2091488 tp!2091490))))

(declare-fun b!7360689 () Bool)

(assert (=> b!7360689 (= e!4406990 (not (inv!91401 lt!2613782)))))

(declare-fun lt!2613784 () Unit!165397)

(assert (=> b!7360689 (= lt!2613784 (lemmaConcatPreservesForall!1897 (exprs!8664 ct1!282) (exprs!8664 ct2!378) lambda!457300))))

(declare-fun b!7360690 () Bool)

(declare-fun tp!2091486 () Bool)

(assert (=> b!7360690 (= e!4406989 tp!2091486)))

(assert (= (and start!718706 res!2971549) b!7360681))

(assert (= (and b!7360681 res!2971548) b!7360682))

(assert (= (and b!7360682 res!2971547) b!7360685))

(assert (= (and b!7360685 res!2971550) b!7360689))

(assert (= start!718706 b!7360690))

(assert (= start!718706 b!7360683))

(assert (= (and start!718706 (is-ElementMatch!19224 r1!2370)) b!7360687))

(assert (= (and start!718706 (is-Concat!28069 r1!2370)) b!7360688))

(assert (= (and start!718706 (is-Star!19224 r1!2370)) b!7360680))

(assert (= (and start!718706 (is-Union!19224 r1!2370)) b!7360684))

(assert (= start!718706 b!7360686))

(declare-fun m!8018354 () Bool)

(assert (=> start!718706 m!8018354))

(declare-fun m!8018356 () Bool)

(assert (=> start!718706 m!8018356))

(declare-fun m!8018358 () Bool)

(assert (=> start!718706 m!8018358))

(declare-fun m!8018360 () Bool)

(assert (=> start!718706 m!8018360))

(declare-fun m!8018362 () Bool)

(assert (=> b!7360685 m!8018362))

(declare-fun m!8018364 () Bool)

(assert (=> b!7360685 m!8018364))

(declare-fun m!8018366 () Bool)

(assert (=> b!7360689 m!8018366))

(declare-fun m!8018368 () Bool)

(assert (=> b!7360689 m!8018368))

(declare-fun m!8018370 () Bool)

(assert (=> b!7360681 m!8018370))

(declare-fun m!8018372 () Bool)

(assert (=> b!7360681 m!8018372))

(declare-fun m!8018374 () Bool)

(assert (=> b!7360682 m!8018374))

(declare-fun m!8018376 () Bool)

(assert (=> b!7360682 m!8018376))

(assert (=> b!7360682 m!8018368))

(push 1)

(assert (not b!7360689))

(assert (not b!7360684))

(assert (not b!7360682))

(assert (not start!718706))

(assert tp_is_empty!48693)

(assert (not b!7360681))

(assert (not b!7360686))

(assert (not b!7360683))

(assert (not b!7360680))

(assert (not b!7360690))

(assert (not b!7360688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7360746 () Bool)

(declare-fun e!4407036 () (Set Context!16328))

(declare-fun call!674523 () (Set Context!16328))

(declare-fun call!674521 () (Set Context!16328))

(assert (=> b!7360746 (= e!4407036 (set.union call!674523 call!674521))))

(declare-fun bm!674515 () Bool)

(declare-fun call!674522 () (Set Context!16328))

(assert (=> bm!674515 (= call!674522 call!674521)))

(declare-fun b!7360747 () Bool)

(declare-fun c!1367664 () Bool)

(assert (=> b!7360747 (= c!1367664 (is-Star!19224 r1!2370))))

(declare-fun e!4407037 () (Set Context!16328))

(declare-fun e!4407035 () (Set Context!16328))

(assert (=> b!7360747 (= e!4407037 e!4407035)))

(declare-fun b!7360748 () Bool)

(declare-fun e!4407034 () (Set Context!16328))

(assert (=> b!7360748 (= e!4407034 (set.union call!674523 call!674522))))

(declare-fun b!7360749 () Bool)

(declare-fun e!4407038 () Bool)

(declare-fun nullable!8310 (Regex!19224) Bool)

(assert (=> b!7360749 (= e!4407038 (nullable!8310 (regOne!38960 r1!2370)))))

(declare-fun b!7360751 () Bool)

(assert (=> b!7360751 (= e!4407035 (as set.empty (Set Context!16328)))))

(declare-fun b!7360752 () Bool)

(declare-fun call!674520 () (Set Context!16328))

(assert (=> b!7360752 (= e!4407035 call!674520)))

(declare-fun bm!674516 () Bool)

(declare-fun call!674525 () List!71720)

(declare-fun call!674524 () List!71720)

(assert (=> bm!674516 (= call!674525 call!674524)))

(declare-fun c!1367663 () Bool)

(declare-fun bm!674517 () Bool)

(declare-fun c!1367666 () Bool)

(declare-fun c!1367662 () Bool)

(assert (=> bm!674517 (= call!674521 (derivationStepZipperDown!3050 (ite c!1367663 (regTwo!38961 r1!2370) (ite c!1367662 (regTwo!38960 r1!2370) (ite c!1367666 (regOne!38960 r1!2370) (reg!19553 r1!2370)))) (ite (or c!1367663 c!1367662) ct1!282 (Context!16329 call!674525)) c!10362))))

(declare-fun bm!674518 () Bool)

(declare-fun $colon$colon!3216 (List!71720 Regex!19224) List!71720)

(assert (=> bm!674518 (= call!674524 ($colon$colon!3216 (exprs!8664 ct1!282) (ite (or c!1367662 c!1367666) (regTwo!38960 r1!2370) r1!2370)))))

(declare-fun b!7360750 () Bool)

(assert (=> b!7360750 (= c!1367662 e!4407038)))

(declare-fun res!2971565 () Bool)

(assert (=> b!7360750 (=> (not res!2971565) (not e!4407038))))

(assert (=> b!7360750 (= res!2971565 (is-Concat!28069 r1!2370))))

(assert (=> b!7360750 (= e!4407036 e!4407034)))

(declare-fun d!2282103 () Bool)

(declare-fun c!1367665 () Bool)

(assert (=> d!2282103 (= c!1367665 (and (is-ElementMatch!19224 r1!2370) (= (c!1367650 r1!2370) c!10362)))))

(declare-fun e!4407033 () (Set Context!16328))

(assert (=> d!2282103 (= (derivationStepZipperDown!3050 r1!2370 ct1!282 c!10362) e!4407033)))

(declare-fun b!7360753 () Bool)

(assert (=> b!7360753 (= e!4407033 (set.insert ct1!282 (as set.empty (Set Context!16328))))))

(declare-fun bm!674519 () Bool)

(assert (=> bm!674519 (= call!674523 (derivationStepZipperDown!3050 (ite c!1367663 (regOne!38961 r1!2370) (regOne!38960 r1!2370)) (ite c!1367663 ct1!282 (Context!16329 call!674524)) c!10362))))

(declare-fun b!7360754 () Bool)

(assert (=> b!7360754 (= e!4407034 e!4407037)))

(assert (=> b!7360754 (= c!1367666 (is-Concat!28069 r1!2370))))

(declare-fun b!7360755 () Bool)

(assert (=> b!7360755 (= e!4407037 call!674520)))

(declare-fun b!7360756 () Bool)

(assert (=> b!7360756 (= e!4407033 e!4407036)))

(assert (=> b!7360756 (= c!1367663 (is-Union!19224 r1!2370))))

(declare-fun bm!674520 () Bool)

(assert (=> bm!674520 (= call!674520 call!674522)))

(assert (= (and d!2282103 c!1367665) b!7360753))

(assert (= (and d!2282103 (not c!1367665)) b!7360756))

(assert (= (and b!7360756 c!1367663) b!7360746))

(assert (= (and b!7360756 (not c!1367663)) b!7360750))

(assert (= (and b!7360750 res!2971565) b!7360749))

(assert (= (and b!7360750 c!1367662) b!7360748))

(assert (= (and b!7360750 (not c!1367662)) b!7360754))

(assert (= (and b!7360754 c!1367666) b!7360755))

(assert (= (and b!7360754 (not c!1367666)) b!7360747))

(assert (= (and b!7360747 c!1367664) b!7360752))

(assert (= (and b!7360747 (not c!1367664)) b!7360751))

(assert (= (or b!7360755 b!7360752) bm!674516))

(assert (= (or b!7360755 b!7360752) bm!674520))

(assert (= (or b!7360748 bm!674520) bm!674515))

(assert (= (or b!7360748 bm!674516) bm!674518))

(assert (= (or b!7360746 bm!674515) bm!674517))

(assert (= (or b!7360746 b!7360748) bm!674519))

(assert (=> b!7360753 m!8018364))

(declare-fun m!8018402 () Bool)

(assert (=> b!7360749 m!8018402))

(declare-fun m!8018404 () Bool)

(assert (=> bm!674518 m!8018404))

(declare-fun m!8018406 () Bool)

(assert (=> bm!674519 m!8018406))

(declare-fun m!8018408 () Bool)

(assert (=> bm!674517 m!8018408))

(assert (=> b!7360681 d!2282103))

(declare-fun b!7360775 () Bool)

(declare-fun res!2971578 () Bool)

(declare-fun e!4407053 () Bool)

(assert (=> b!7360775 (=> res!2971578 e!4407053)))

(assert (=> b!7360775 (= res!2971578 (not (is-Concat!28069 r1!2370)))))

(declare-fun e!4407057 () Bool)

(assert (=> b!7360775 (= e!4407057 e!4407053)))

(declare-fun b!7360776 () Bool)

(declare-fun e!4407059 () Bool)

(declare-fun e!4407055 () Bool)

(assert (=> b!7360776 (= e!4407059 e!4407055)))

(declare-fun res!2971580 () Bool)

(assert (=> b!7360776 (= res!2971580 (not (nullable!8310 (reg!19553 r1!2370))))))

(assert (=> b!7360776 (=> (not res!2971580) (not e!4407055))))

(declare-fun b!7360777 () Bool)

(declare-fun e!4407058 () Bool)

(assert (=> b!7360777 (= e!4407053 e!4407058)))

(declare-fun res!2971579 () Bool)

(assert (=> b!7360777 (=> (not res!2971579) (not e!4407058))))

(declare-fun call!674532 () Bool)

(assert (=> b!7360777 (= res!2971579 call!674532)))

(declare-fun d!2282107 () Bool)

(declare-fun res!2971576 () Bool)

(declare-fun e!4407056 () Bool)

(assert (=> d!2282107 (=> res!2971576 e!4407056)))

(assert (=> d!2282107 (= res!2971576 (is-ElementMatch!19224 r1!2370))))

(assert (=> d!2282107 (= (validRegex!9820 r1!2370) e!4407056)))

(declare-fun b!7360778 () Bool)

(declare-fun call!674533 () Bool)

(assert (=> b!7360778 (= e!4407055 call!674533)))

(declare-fun b!7360779 () Bool)

(assert (=> b!7360779 (= e!4407056 e!4407059)))

(declare-fun c!1367672 () Bool)

(assert (=> b!7360779 (= c!1367672 (is-Star!19224 r1!2370))))

(declare-fun bm!674527 () Bool)

(assert (=> bm!674527 (= call!674532 call!674533)))

(declare-fun b!7360780 () Bool)

(declare-fun call!674534 () Bool)

(assert (=> b!7360780 (= e!4407058 call!674534)))

(declare-fun bm!674528 () Bool)

(declare-fun c!1367671 () Bool)

(assert (=> bm!674528 (= call!674534 (validRegex!9820 (ite c!1367671 (regOne!38961 r1!2370) (regTwo!38960 r1!2370))))))

(declare-fun b!7360781 () Bool)

(declare-fun e!4407054 () Bool)

(assert (=> b!7360781 (= e!4407054 call!674532)))

(declare-fun b!7360782 () Bool)

(assert (=> b!7360782 (= e!4407059 e!4407057)))

(assert (=> b!7360782 (= c!1367671 (is-Union!19224 r1!2370))))

(declare-fun b!7360783 () Bool)

(declare-fun res!2971577 () Bool)

(assert (=> b!7360783 (=> (not res!2971577) (not e!4407054))))

(assert (=> b!7360783 (= res!2971577 call!674534)))

(assert (=> b!7360783 (= e!4407057 e!4407054)))

(declare-fun bm!674529 () Bool)

(assert (=> bm!674529 (= call!674533 (validRegex!9820 (ite c!1367672 (reg!19553 r1!2370) (ite c!1367671 (regTwo!38961 r1!2370) (regOne!38960 r1!2370)))))))

(assert (= (and d!2282107 (not res!2971576)) b!7360779))

(assert (= (and b!7360779 c!1367672) b!7360776))

(assert (= (and b!7360779 (not c!1367672)) b!7360782))

(assert (= (and b!7360776 res!2971580) b!7360778))

(assert (= (and b!7360782 c!1367671) b!7360783))

(assert (= (and b!7360782 (not c!1367671)) b!7360775))

(assert (= (and b!7360783 res!2971577) b!7360781))

(assert (= (and b!7360775 (not res!2971578)) b!7360777))

(assert (= (and b!7360777 res!2971579) b!7360780))

(assert (= (or b!7360783 b!7360780) bm!674528))

(assert (= (or b!7360781 b!7360777) bm!674527))

(assert (= (or b!7360778 bm!674527) bm!674529))

(declare-fun m!8018410 () Bool)

(assert (=> b!7360776 m!8018410))

(declare-fun m!8018412 () Bool)

(assert (=> bm!674528 m!8018412))

(declare-fun m!8018414 () Bool)

(assert (=> bm!674529 m!8018414))

(assert (=> start!718706 d!2282107))

(declare-fun bs!1920102 () Bool)

(declare-fun d!2282109 () Bool)

(assert (= bs!1920102 (and d!2282109 b!7360682)))

(declare-fun lambda!457308 () Int)

(assert (=> bs!1920102 (= lambda!457308 lambda!457300)))

(declare-fun forall!18040 (List!71720 Int) Bool)

(assert (=> d!2282109 (= (inv!91401 cWitness!61) (forall!18040 (exprs!8664 cWitness!61) lambda!457308))))

(declare-fun bs!1920103 () Bool)

(assert (= bs!1920103 d!2282109))

(declare-fun m!8018416 () Bool)

(assert (=> bs!1920103 m!8018416))

(assert (=> start!718706 d!2282109))

(declare-fun bs!1920104 () Bool)

(declare-fun d!2282111 () Bool)

(assert (= bs!1920104 (and d!2282111 b!7360682)))

(declare-fun lambda!457309 () Int)

(assert (=> bs!1920104 (= lambda!457309 lambda!457300)))

(declare-fun bs!1920105 () Bool)

(assert (= bs!1920105 (and d!2282111 d!2282109)))

(assert (=> bs!1920105 (= lambda!457309 lambda!457308)))

(assert (=> d!2282111 (= (inv!91401 ct1!282) (forall!18040 (exprs!8664 ct1!282) lambda!457309))))

(declare-fun bs!1920106 () Bool)

(assert (= bs!1920106 d!2282111))

(declare-fun m!8018418 () Bool)

(assert (=> bs!1920106 m!8018418))

(assert (=> start!718706 d!2282111))

(declare-fun bs!1920107 () Bool)

(declare-fun d!2282113 () Bool)

(assert (= bs!1920107 (and d!2282113 b!7360682)))

(declare-fun lambda!457310 () Int)

(assert (=> bs!1920107 (= lambda!457310 lambda!457300)))

(declare-fun bs!1920108 () Bool)

(assert (= bs!1920108 (and d!2282113 d!2282109)))

(assert (=> bs!1920108 (= lambda!457310 lambda!457308)))

(declare-fun bs!1920109 () Bool)

(assert (= bs!1920109 (and d!2282113 d!2282111)))

(assert (=> bs!1920109 (= lambda!457310 lambda!457309)))

(assert (=> d!2282113 (= (inv!91401 ct2!378) (forall!18040 (exprs!8664 ct2!378) lambda!457310))))

(declare-fun bs!1920110 () Bool)

(assert (= bs!1920110 d!2282113))

(declare-fun m!8018420 () Bool)

(assert (=> bs!1920110 m!8018420))

(assert (=> start!718706 d!2282113))

(declare-fun b!7360806 () Bool)

(declare-fun e!4407075 () (Set Context!16328))

(declare-fun call!674538 () (Set Context!16328))

(declare-fun call!674536 () (Set Context!16328))

(assert (=> b!7360806 (= e!4407075 (set.union call!674538 call!674536))))

(declare-fun bm!674530 () Bool)

(declare-fun call!674537 () (Set Context!16328))

(assert (=> bm!674530 (= call!674537 call!674536)))

(declare-fun b!7360807 () Bool)

(declare-fun c!1367685 () Bool)

(assert (=> b!7360807 (= c!1367685 (is-Star!19224 r1!2370))))

(declare-fun e!4407076 () (Set Context!16328))

(declare-fun e!4407073 () (Set Context!16328))

(assert (=> b!7360807 (= e!4407076 e!4407073)))

(declare-fun b!7360808 () Bool)

(declare-fun e!4407071 () (Set Context!16328))

(assert (=> b!7360808 (= e!4407071 (set.union call!674538 call!674537))))

(declare-fun b!7360809 () Bool)

(declare-fun e!4407077 () Bool)

(assert (=> b!7360809 (= e!4407077 (nullable!8310 (regOne!38960 r1!2370)))))

(declare-fun b!7360811 () Bool)

(assert (=> b!7360811 (= e!4407073 (as set.empty (Set Context!16328)))))

(declare-fun b!7360812 () Bool)

(declare-fun call!674535 () (Set Context!16328))

(assert (=> b!7360812 (= e!4407073 call!674535)))

(declare-fun bm!674531 () Bool)

(declare-fun call!674540 () List!71720)

(declare-fun call!674539 () List!71720)

(assert (=> bm!674531 (= call!674540 call!674539)))

(declare-fun c!1367687 () Bool)

(declare-fun c!1367682 () Bool)

(declare-fun c!1367681 () Bool)

(declare-fun bm!674532 () Bool)

(assert (=> bm!674532 (= call!674536 (derivationStepZipperDown!3050 (ite c!1367682 (regTwo!38961 r1!2370) (ite c!1367681 (regTwo!38960 r1!2370) (ite c!1367687 (regOne!38960 r1!2370) (reg!19553 r1!2370)))) (ite (or c!1367682 c!1367681) lt!2613782 (Context!16329 call!674540)) c!10362))))

(declare-fun bm!674533 () Bool)

(assert (=> bm!674533 (= call!674539 ($colon$colon!3216 (exprs!8664 lt!2613782) (ite (or c!1367681 c!1367687) (regTwo!38960 r1!2370) r1!2370)))))

(declare-fun b!7360810 () Bool)

(assert (=> b!7360810 (= c!1367681 e!4407077)))

(declare-fun res!2971583 () Bool)

(assert (=> b!7360810 (=> (not res!2971583) (not e!4407077))))

(assert (=> b!7360810 (= res!2971583 (is-Concat!28069 r1!2370))))

(assert (=> b!7360810 (= e!4407075 e!4407071)))

(declare-fun d!2282115 () Bool)

(declare-fun c!1367686 () Bool)

(assert (=> d!2282115 (= c!1367686 (and (is-ElementMatch!19224 r1!2370) (= (c!1367650 r1!2370) c!10362)))))

(declare-fun e!4407070 () (Set Context!16328))

(assert (=> d!2282115 (= (derivationStepZipperDown!3050 r1!2370 lt!2613782 c!10362) e!4407070)))

(declare-fun b!7360813 () Bool)

(assert (=> b!7360813 (= e!4407070 (set.insert lt!2613782 (as set.empty (Set Context!16328))))))

(declare-fun bm!674534 () Bool)

(assert (=> bm!674534 (= call!674538 (derivationStepZipperDown!3050 (ite c!1367682 (regOne!38961 r1!2370) (regOne!38960 r1!2370)) (ite c!1367682 lt!2613782 (Context!16329 call!674539)) c!10362))))

(declare-fun b!7360814 () Bool)

(assert (=> b!7360814 (= e!4407071 e!4407076)))

(assert (=> b!7360814 (= c!1367687 (is-Concat!28069 r1!2370))))

(declare-fun b!7360815 () Bool)

(assert (=> b!7360815 (= e!4407076 call!674535)))

(declare-fun b!7360816 () Bool)

(assert (=> b!7360816 (= e!4407070 e!4407075)))

(assert (=> b!7360816 (= c!1367682 (is-Union!19224 r1!2370))))

(declare-fun bm!674535 () Bool)

(assert (=> bm!674535 (= call!674535 call!674537)))

(assert (= (and d!2282115 c!1367686) b!7360813))

(assert (= (and d!2282115 (not c!1367686)) b!7360816))

(assert (= (and b!7360816 c!1367682) b!7360806))

(assert (= (and b!7360816 (not c!1367682)) b!7360810))

(assert (= (and b!7360810 res!2971583) b!7360809))

(assert (= (and b!7360810 c!1367681) b!7360808))

(assert (= (and b!7360810 (not c!1367681)) b!7360814))

(assert (= (and b!7360814 c!1367687) b!7360815))

(assert (= (and b!7360814 (not c!1367687)) b!7360807))

(assert (= (and b!7360807 c!1367685) b!7360812))

(assert (= (and b!7360807 (not c!1367685)) b!7360811))

(assert (= (or b!7360815 b!7360812) bm!674531))

(assert (= (or b!7360815 b!7360812) bm!674535))

(assert (= (or b!7360808 bm!674535) bm!674530))

(assert (= (or b!7360808 bm!674531) bm!674533))

(assert (= (or b!7360806 bm!674530) bm!674532))

(assert (= (or b!7360806 b!7360808) bm!674534))

(declare-fun m!8018422 () Bool)

(assert (=> b!7360813 m!8018422))

(assert (=> b!7360809 m!8018402))

(declare-fun m!8018424 () Bool)

(assert (=> bm!674533 m!8018424))

(declare-fun m!8018426 () Bool)

(assert (=> bm!674534 m!8018426))

(declare-fun m!8018428 () Bool)

(assert (=> bm!674532 m!8018428))

(assert (=> b!7360682 d!2282115))

(declare-fun b!7360827 () Bool)

(declare-fun res!2971589 () Bool)

(declare-fun e!4407083 () Bool)

(assert (=> b!7360827 (=> (not res!2971589) (not e!4407083))))

(declare-fun lt!2613808 () List!71720)

(declare-fun size!42095 (List!71720) Int)

(assert (=> b!7360827 (= res!2971589 (= (size!42095 lt!2613808) (+ (size!42095 (exprs!8664 ct1!282)) (size!42095 (exprs!8664 ct2!378)))))))

(declare-fun d!2282117 () Bool)

(assert (=> d!2282117 e!4407083))

(declare-fun res!2971588 () Bool)

(assert (=> d!2282117 (=> (not res!2971588) (not e!4407083))))

(declare-fun content!15117 (List!71720) (Set Regex!19224))

(assert (=> d!2282117 (= res!2971588 (= (content!15117 lt!2613808) (set.union (content!15117 (exprs!8664 ct1!282)) (content!15117 (exprs!8664 ct2!378)))))))

(declare-fun e!4407082 () List!71720)

(assert (=> d!2282117 (= lt!2613808 e!4407082)))

(declare-fun c!1367690 () Bool)

(assert (=> d!2282117 (= c!1367690 (is-Nil!71596 (exprs!8664 ct1!282)))))

(assert (=> d!2282117 (= (++!17040 (exprs!8664 ct1!282) (exprs!8664 ct2!378)) lt!2613808)))

(declare-fun b!7360825 () Bool)

(assert (=> b!7360825 (= e!4407082 (exprs!8664 ct2!378))))

(declare-fun b!7360826 () Bool)

(assert (=> b!7360826 (= e!4407082 (Cons!71596 (h!78044 (exprs!8664 ct1!282)) (++!17040 (t!386169 (exprs!8664 ct1!282)) (exprs!8664 ct2!378))))))

(declare-fun b!7360828 () Bool)

(assert (=> b!7360828 (= e!4407083 (or (not (= (exprs!8664 ct2!378) Nil!71596)) (= lt!2613808 (exprs!8664 ct1!282))))))

(assert (= (and d!2282117 c!1367690) b!7360825))

(assert (= (and d!2282117 (not c!1367690)) b!7360826))

(assert (= (and d!2282117 res!2971588) b!7360827))

(assert (= (and b!7360827 res!2971589) b!7360828))

(declare-fun m!8018430 () Bool)

(assert (=> b!7360827 m!8018430))

(declare-fun m!8018432 () Bool)

(assert (=> b!7360827 m!8018432))

(declare-fun m!8018434 () Bool)

(assert (=> b!7360827 m!8018434))

(declare-fun m!8018436 () Bool)

(assert (=> d!2282117 m!8018436))

(declare-fun m!8018438 () Bool)

(assert (=> d!2282117 m!8018438))

(declare-fun m!8018440 () Bool)

(assert (=> d!2282117 m!8018440))

(declare-fun m!8018442 () Bool)

(assert (=> b!7360826 m!8018442))

(assert (=> b!7360682 d!2282117))

(declare-fun d!2282119 () Bool)

(assert (=> d!2282119 (forall!18040 (++!17040 (exprs!8664 ct1!282) (exprs!8664 ct2!378)) lambda!457300)))

(declare-fun lt!2613811 () Unit!165397)

(declare-fun choose!57247 (List!71720 List!71720 Int) Unit!165397)

(assert (=> d!2282119 (= lt!2613811 (choose!57247 (exprs!8664 ct1!282) (exprs!8664 ct2!378) lambda!457300))))

(assert (=> d!2282119 (forall!18040 (exprs!8664 ct1!282) lambda!457300)))

(assert (=> d!2282119 (= (lemmaConcatPreservesForall!1897 (exprs!8664 ct1!282) (exprs!8664 ct2!378) lambda!457300) lt!2613811)))

(declare-fun bs!1920111 () Bool)

(assert (= bs!1920111 d!2282119))

(assert (=> bs!1920111 m!8018376))

(assert (=> bs!1920111 m!8018376))

(declare-fun m!8018444 () Bool)

(assert (=> bs!1920111 m!8018444))

(declare-fun m!8018446 () Bool)

(assert (=> bs!1920111 m!8018446))

(declare-fun m!8018448 () Bool)

(assert (=> bs!1920111 m!8018448))

(assert (=> b!7360682 d!2282119))

(declare-fun bs!1920112 () Bool)

(declare-fun d!2282121 () Bool)

(assert (= bs!1920112 (and d!2282121 b!7360682)))

(declare-fun lambda!457311 () Int)

(assert (=> bs!1920112 (= lambda!457311 lambda!457300)))

(declare-fun bs!1920113 () Bool)

(assert (= bs!1920113 (and d!2282121 d!2282109)))

(assert (=> bs!1920113 (= lambda!457311 lambda!457308)))

(declare-fun bs!1920114 () Bool)

(assert (= bs!1920114 (and d!2282121 d!2282111)))

(assert (=> bs!1920114 (= lambda!457311 lambda!457309)))

(declare-fun bs!1920115 () Bool)

(assert (= bs!1920115 (and d!2282121 d!2282113)))

(assert (=> bs!1920115 (= lambda!457311 lambda!457310)))

(assert (=> d!2282121 (= (inv!91401 lt!2613782) (forall!18040 (exprs!8664 lt!2613782) lambda!457311))))

(declare-fun bs!1920116 () Bool)

(assert (= bs!1920116 d!2282121))

(declare-fun m!8018450 () Bool)

(assert (=> bs!1920116 m!8018450))

(assert (=> b!7360689 d!2282121))

(assert (=> b!7360689 d!2282119))

(declare-fun b!7360839 () Bool)

(declare-fun e!4407086 () Bool)

(assert (=> b!7360839 (= e!4407086 tp_is_empty!48693)))

(declare-fun b!7360841 () Bool)

(declare-fun tp!2091531 () Bool)

(assert (=> b!7360841 (= e!4407086 tp!2091531)))

(assert (=> b!7360680 (= tp!2091487 e!4407086)))

(declare-fun b!7360840 () Bool)

(declare-fun tp!2091528 () Bool)

(declare-fun tp!2091529 () Bool)

(assert (=> b!7360840 (= e!4407086 (and tp!2091528 tp!2091529))))

(declare-fun b!7360842 () Bool)

(declare-fun tp!2091532 () Bool)

(declare-fun tp!2091530 () Bool)

(assert (=> b!7360842 (= e!4407086 (and tp!2091532 tp!2091530))))

(assert (= (and b!7360680 (is-ElementMatch!19224 (reg!19553 r1!2370))) b!7360839))

(assert (= (and b!7360680 (is-Concat!28069 (reg!19553 r1!2370))) b!7360840))

(assert (= (and b!7360680 (is-Star!19224 (reg!19553 r1!2370))) b!7360841))

(assert (= (and b!7360680 (is-Union!19224 (reg!19553 r1!2370))) b!7360842))

(declare-fun b!7360847 () Bool)

(declare-fun e!4407089 () Bool)

(declare-fun tp!2091537 () Bool)

(declare-fun tp!2091538 () Bool)

(assert (=> b!7360847 (= e!4407089 (and tp!2091537 tp!2091538))))

(assert (=> b!7360690 (= tp!2091486 e!4407089)))

(assert (= (and b!7360690 (is-Cons!71596 (exprs!8664 cWitness!61))) b!7360847))

(declare-fun b!7360848 () Bool)

(declare-fun e!4407090 () Bool)

(declare-fun tp!2091539 () Bool)

(declare-fun tp!2091540 () Bool)

(assert (=> b!7360848 (= e!4407090 (and tp!2091539 tp!2091540))))

(assert (=> b!7360686 (= tp!2091493 e!4407090)))

(assert (= (and b!7360686 (is-Cons!71596 (exprs!8664 ct2!378))) b!7360848))

(declare-fun b!7360849 () Bool)

(declare-fun e!4407091 () Bool)

(assert (=> b!7360849 (= e!4407091 tp_is_empty!48693)))

(declare-fun b!7360851 () Bool)

(declare-fun tp!2091544 () Bool)

(assert (=> b!7360851 (= e!4407091 tp!2091544)))

(assert (=> b!7360688 (= tp!2091488 e!4407091)))

(declare-fun b!7360850 () Bool)

(declare-fun tp!2091541 () Bool)

(declare-fun tp!2091542 () Bool)

(assert (=> b!7360850 (= e!4407091 (and tp!2091541 tp!2091542))))

(declare-fun b!7360852 () Bool)

(declare-fun tp!2091545 () Bool)

(declare-fun tp!2091543 () Bool)

(assert (=> b!7360852 (= e!4407091 (and tp!2091545 tp!2091543))))

(assert (= (and b!7360688 (is-ElementMatch!19224 (regOne!38960 r1!2370))) b!7360849))

(assert (= (and b!7360688 (is-Concat!28069 (regOne!38960 r1!2370))) b!7360850))

(assert (= (and b!7360688 (is-Star!19224 (regOne!38960 r1!2370))) b!7360851))

(assert (= (and b!7360688 (is-Union!19224 (regOne!38960 r1!2370))) b!7360852))

(declare-fun b!7360853 () Bool)

(declare-fun e!4407092 () Bool)

(assert (=> b!7360853 (= e!4407092 tp_is_empty!48693)))

(declare-fun b!7360855 () Bool)

(declare-fun tp!2091549 () Bool)

(assert (=> b!7360855 (= e!4407092 tp!2091549)))

(assert (=> b!7360688 (= tp!2091490 e!4407092)))

(declare-fun b!7360854 () Bool)

(declare-fun tp!2091546 () Bool)

(declare-fun tp!2091547 () Bool)

(assert (=> b!7360854 (= e!4407092 (and tp!2091546 tp!2091547))))

(declare-fun b!7360856 () Bool)

(declare-fun tp!2091550 () Bool)

(declare-fun tp!2091548 () Bool)

(assert (=> b!7360856 (= e!4407092 (and tp!2091550 tp!2091548))))

(assert (= (and b!7360688 (is-ElementMatch!19224 (regTwo!38960 r1!2370))) b!7360853))

(assert (= (and b!7360688 (is-Concat!28069 (regTwo!38960 r1!2370))) b!7360854))

(assert (= (and b!7360688 (is-Star!19224 (regTwo!38960 r1!2370))) b!7360855))

(assert (= (and b!7360688 (is-Union!19224 (regTwo!38960 r1!2370))) b!7360856))

(declare-fun b!7360857 () Bool)

(declare-fun e!4407093 () Bool)

(assert (=> b!7360857 (= e!4407093 tp_is_empty!48693)))

(declare-fun b!7360859 () Bool)

(declare-fun tp!2091554 () Bool)

(assert (=> b!7360859 (= e!4407093 tp!2091554)))

(assert (=> b!7360684 (= tp!2091491 e!4407093)))

(declare-fun b!7360858 () Bool)

(declare-fun tp!2091551 () Bool)

(declare-fun tp!2091552 () Bool)

(assert (=> b!7360858 (= e!4407093 (and tp!2091551 tp!2091552))))

(declare-fun b!7360860 () Bool)

(declare-fun tp!2091555 () Bool)

(declare-fun tp!2091553 () Bool)

(assert (=> b!7360860 (= e!4407093 (and tp!2091555 tp!2091553))))

(assert (= (and b!7360684 (is-ElementMatch!19224 (regOne!38961 r1!2370))) b!7360857))

(assert (= (and b!7360684 (is-Concat!28069 (regOne!38961 r1!2370))) b!7360858))

(assert (= (and b!7360684 (is-Star!19224 (regOne!38961 r1!2370))) b!7360859))

(assert (= (and b!7360684 (is-Union!19224 (regOne!38961 r1!2370))) b!7360860))

(declare-fun b!7360861 () Bool)

(declare-fun e!4407094 () Bool)

(assert (=> b!7360861 (= e!4407094 tp_is_empty!48693)))

(declare-fun b!7360863 () Bool)

(declare-fun tp!2091559 () Bool)

(assert (=> b!7360863 (= e!4407094 tp!2091559)))

(assert (=> b!7360684 (= tp!2091492 e!4407094)))

(declare-fun b!7360862 () Bool)

(declare-fun tp!2091556 () Bool)

(declare-fun tp!2091557 () Bool)

(assert (=> b!7360862 (= e!4407094 (and tp!2091556 tp!2091557))))

(declare-fun b!7360864 () Bool)

(declare-fun tp!2091560 () Bool)

(declare-fun tp!2091558 () Bool)

(assert (=> b!7360864 (= e!4407094 (and tp!2091560 tp!2091558))))

(assert (= (and b!7360684 (is-ElementMatch!19224 (regTwo!38961 r1!2370))) b!7360861))

(assert (= (and b!7360684 (is-Concat!28069 (regTwo!38961 r1!2370))) b!7360862))

(assert (= (and b!7360684 (is-Star!19224 (regTwo!38961 r1!2370))) b!7360863))

(assert (= (and b!7360684 (is-Union!19224 (regTwo!38961 r1!2370))) b!7360864))

(declare-fun b!7360865 () Bool)

(declare-fun e!4407095 () Bool)

(declare-fun tp!2091561 () Bool)

(declare-fun tp!2091562 () Bool)

(assert (=> b!7360865 (= e!4407095 (and tp!2091561 tp!2091562))))

(assert (=> b!7360683 (= tp!2091489 e!4407095)))

(assert (= (and b!7360683 (is-Cons!71596 (exprs!8664 ct1!282))) b!7360865))

(push 1)

(assert (not b!7360860))

(assert (not b!7360862))

(assert (not b!7360863))

(assert (not b!7360850))

(assert (not b!7360864))

(assert (not b!7360749))

(assert (not bm!674534))

(assert (not d!2282111))

(assert (not b!7360842))

(assert (not bm!674519))

(assert (not d!2282109))

(assert (not b!7360851))

(assert (not bm!674529))

(assert (not d!2282119))

(assert (not b!7360847))

(assert (not d!2282113))

(assert (not b!7360865))

(assert (not b!7360855))

(assert (not b!7360854))

(assert (not b!7360859))

(assert tp_is_empty!48693)

(assert (not b!7360809))

(assert (not b!7360840))

(assert (not d!2282117))

(assert (not bm!674528))

(assert (not d!2282121))

(assert (not b!7360848))

(assert (not b!7360827))

(assert (not b!7360856))

(assert (not bm!674517))

(assert (not b!7360852))

(assert (not b!7360858))

(assert (not bm!674532))

(assert (not b!7360826))

(assert (not b!7360776))

(assert (not bm!674533))

(assert (not bm!674518))

(assert (not b!7360841))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

