; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544920 () Bool)

(assert start!544920)

(declare-fun b!5149476 () Bool)

(declare-fun e!3210343 () Bool)

(declare-fun tp!1439772 () Bool)

(declare-fun tp!1439775 () Bool)

(assert (=> b!5149476 (= e!3210343 (and tp!1439772 tp!1439775))))

(declare-fun b!5149477 () Bool)

(declare-fun res!2191429 () Bool)

(declare-fun e!3210345 () Bool)

(assert (=> b!5149477 (=> (not res!2191429) (not e!3210345))))

(declare-fun e!3210344 () Bool)

(assert (=> b!5149477 (= res!2191429 e!3210344)))

(declare-fun res!2191425 () Bool)

(assert (=> b!5149477 (=> res!2191425 e!3210344)))

(declare-datatypes ((C!29258 0))(
  ( (C!29259 (val!24281 Int)) )
))
(declare-datatypes ((Regex!14496 0))(
  ( (ElementMatch!14496 (c!886381 C!29258)) (Concat!23341 (regOne!29504 Regex!14496) (regTwo!29504 Regex!14496)) (EmptyExpr!14496) (Star!14496 (reg!14825 Regex!14496)) (EmptyLang!14496) (Union!14496 (regOne!29505 Regex!14496) (regTwo!29505 Regex!14496)) )
))
(declare-fun expr!117 () Regex!14496)

(declare-fun lostCause!1544 (Regex!14496) Bool)

(assert (=> b!5149477 (= res!2191425 (lostCause!1544 expr!117))))

(declare-fun b!5149478 () Bool)

(declare-fun res!2191430 () Bool)

(assert (=> b!5149478 (=> (not res!2191430) (not e!3210345))))

(declare-fun nullable!4852 (Regex!14496) Bool)

(assert (=> b!5149478 (= res!2191430 (nullable!4852 (regOne!29504 expr!117)))))

(declare-fun b!5149479 () Bool)

(declare-fun res!2191427 () Bool)

(assert (=> b!5149479 (=> (not res!2191427) (not e!3210345))))

(declare-fun a!1296 () C!29258)

(assert (=> b!5149479 (= res!2191427 (and (or (not (is-ElementMatch!14496 expr!117)) (not (= (c!886381 expr!117) a!1296))) (not (is-Union!14496 expr!117)) (is-Concat!23341 expr!117)))))

(declare-fun b!5149480 () Bool)

(declare-fun e!3210341 () Bool)

(declare-fun tp!1439774 () Bool)

(assert (=> b!5149480 (= e!3210341 tp!1439774)))

(declare-fun b!5149481 () Bool)

(declare-fun e!3210342 () Bool)

(declare-datatypes ((List!59904 0))(
  ( (Nil!59780) (Cons!59780 (h!66228 Regex!14496) (t!372947 List!59904)) )
))
(declare-datatypes ((Context!7760 0))(
  ( (Context!7761 (exprs!4380 List!59904)) )
))
(declare-fun ctx!100 () Context!7760)

(declare-fun lostCause!1545 (Context!7760) Bool)

(assert (=> b!5149481 (= e!3210342 (lostCause!1545 ctx!100))))

(declare-fun b!5149483 () Bool)

(declare-fun tp!1439773 () Bool)

(assert (=> b!5149483 (= e!3210343 tp!1439773)))

(declare-fun b!5149484 () Bool)

(declare-fun tp_is_empty!38141 () Bool)

(assert (=> b!5149484 (= e!3210343 tp_is_empty!38141)))

(declare-fun b!5149485 () Bool)

(declare-fun tp!1439776 () Bool)

(declare-fun tp!1439777 () Bool)

(assert (=> b!5149485 (= e!3210343 (and tp!1439776 tp!1439777))))

(declare-fun b!5149486 () Bool)

(declare-fun e!3210346 () Bool)

(assert (=> b!5149486 (= e!3210346 e!3210342)))

(declare-fun res!2191428 () Bool)

(assert (=> b!5149486 (=> res!2191428 e!3210342)))

(assert (=> b!5149486 (= res!2191428 (lostCause!1544 (regTwo!29504 expr!117)))))

(declare-fun lt!2121196 () Context!7760)

(declare-fun lostCauseZipper!1282 ((Set Context!7760)) Bool)

(declare-fun derivationStepZipperDown!163 (Regex!14496 Context!7760 C!29258) (Set Context!7760))

(assert (=> b!5149486 (lostCauseZipper!1282 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296))))

(declare-datatypes ((Unit!151195 0))(
  ( (Unit!151196) )
))
(declare-fun lt!2121197 () Unit!151195)

(declare-fun lemmaLostCauseFixPointDerivDown!53 (Regex!14496 Context!7760 C!29258) Unit!151195)

(assert (=> b!5149486 (= lt!2121197 (lemmaLostCauseFixPointDerivDown!53 (regOne!29504 expr!117) lt!2121196 a!1296))))

(declare-fun $colon$colon!1218 (List!59904 Regex!14496) List!59904)

(assert (=> b!5149486 (= lt!2121196 (Context!7761 ($colon$colon!1218 (exprs!4380 ctx!100) (regTwo!29504 expr!117))))))

(declare-fun b!5149487 () Bool)

(assert (=> b!5149487 (= e!3210345 (not e!3210346))))

(declare-fun res!2191426 () Bool)

(assert (=> b!5149487 (=> res!2191426 e!3210346)))

(declare-fun validRegex!6351 (Regex!14496) Bool)

(assert (=> b!5149487 (= res!2191426 (not (validRegex!6351 (regTwo!29504 expr!117))))))

(assert (=> b!5149487 (not (lostCause!1544 (regOne!29504 expr!117)))))

(declare-fun lt!2121198 () Unit!151195)

(declare-fun lemmaNullableThenNotLostCause!85 (Regex!14496) Unit!151195)

(assert (=> b!5149487 (= lt!2121198 (lemmaNullableThenNotLostCause!85 (regOne!29504 expr!117)))))

(declare-fun res!2191431 () Bool)

(assert (=> start!544920 (=> (not res!2191431) (not e!3210345))))

(assert (=> start!544920 (= res!2191431 (validRegex!6351 expr!117))))

(assert (=> start!544920 e!3210345))

(assert (=> start!544920 e!3210343))

(declare-fun inv!79422 (Context!7760) Bool)

(assert (=> start!544920 (and (inv!79422 ctx!100) e!3210341)))

(assert (=> start!544920 tp_is_empty!38141))

(declare-fun b!5149482 () Bool)

(assert (=> b!5149482 (= e!3210344 (lostCause!1545 ctx!100))))

(assert (= (and start!544920 res!2191431) b!5149477))

(assert (= (and b!5149477 (not res!2191425)) b!5149482))

(assert (= (and b!5149477 res!2191429) b!5149479))

(assert (= (and b!5149479 res!2191427) b!5149478))

(assert (= (and b!5149478 res!2191430) b!5149487))

(assert (= (and b!5149487 (not res!2191426)) b!5149486))

(assert (= (and b!5149486 (not res!2191428)) b!5149481))

(assert (= (and start!544920 (is-ElementMatch!14496 expr!117)) b!5149484))

(assert (= (and start!544920 (is-Concat!23341 expr!117)) b!5149476))

(assert (= (and start!544920 (is-Star!14496 expr!117)) b!5149483))

(assert (= (and start!544920 (is-Union!14496 expr!117)) b!5149485))

(assert (= start!544920 b!5149480))

(declare-fun m!6207728 () Bool)

(assert (=> b!5149477 m!6207728))

(declare-fun m!6207730 () Bool)

(assert (=> b!5149486 m!6207730))

(declare-fun m!6207732 () Bool)

(assert (=> b!5149486 m!6207732))

(declare-fun m!6207734 () Bool)

(assert (=> b!5149486 m!6207734))

(declare-fun m!6207736 () Bool)

(assert (=> b!5149486 m!6207736))

(assert (=> b!5149486 m!6207734))

(declare-fun m!6207738 () Bool)

(assert (=> b!5149486 m!6207738))

(declare-fun m!6207740 () Bool)

(assert (=> start!544920 m!6207740))

(declare-fun m!6207742 () Bool)

(assert (=> start!544920 m!6207742))

(declare-fun m!6207744 () Bool)

(assert (=> b!5149478 m!6207744))

(declare-fun m!6207746 () Bool)

(assert (=> b!5149487 m!6207746))

(declare-fun m!6207748 () Bool)

(assert (=> b!5149487 m!6207748))

(declare-fun m!6207750 () Bool)

(assert (=> b!5149487 m!6207750))

(declare-fun m!6207752 () Bool)

(assert (=> b!5149481 m!6207752))

(assert (=> b!5149482 m!6207752))

(push 1)

(assert (not b!5149478))

(assert (not b!5149483))

(assert (not b!5149476))

(assert (not b!5149480))

(assert (not b!5149477))

(assert (not b!5149481))

(assert (not b!5149485))

(assert tp_is_empty!38141)

(assert (not start!544920))

(assert (not b!5149486))

(assert (not b!5149482))

(assert (not b!5149487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!360127 () Bool)

(declare-fun call!360134 () Bool)

(declare-fun call!360133 () Bool)

(assert (=> bm!360127 (= call!360134 call!360133)))

(declare-fun bm!360128 () Bool)

(declare-fun call!360132 () Bool)

(declare-fun c!886387 () Bool)

(assert (=> bm!360128 (= call!360132 (validRegex!6351 (ite c!886387 (regOne!29505 expr!117) (regOne!29504 expr!117))))))

(declare-fun b!5149542 () Bool)

(declare-fun e!3210379 () Bool)

(declare-fun e!3210382 () Bool)

(assert (=> b!5149542 (= e!3210379 e!3210382)))

(assert (=> b!5149542 (= c!886387 (is-Union!14496 expr!117))))

(declare-fun b!5149543 () Bool)

(declare-fun e!3210380 () Bool)

(assert (=> b!5149543 (= e!3210380 call!360134)))

(declare-fun b!5149544 () Bool)

(declare-fun res!2191465 () Bool)

(declare-fun e!3210384 () Bool)

(assert (=> b!5149544 (=> res!2191465 e!3210384)))

(assert (=> b!5149544 (= res!2191465 (not (is-Concat!23341 expr!117)))))

(assert (=> b!5149544 (= e!3210382 e!3210384)))

(declare-fun b!5149545 () Bool)

(declare-fun e!3210381 () Bool)

(assert (=> b!5149545 (= e!3210381 call!360133)))

(declare-fun d!1663900 () Bool)

(declare-fun res!2191466 () Bool)

(declare-fun e!3210385 () Bool)

(assert (=> d!1663900 (=> res!2191466 e!3210385)))

(assert (=> d!1663900 (= res!2191466 (is-ElementMatch!14496 expr!117))))

(assert (=> d!1663900 (= (validRegex!6351 expr!117) e!3210385)))

(declare-fun c!886388 () Bool)

(declare-fun bm!360129 () Bool)

(assert (=> bm!360129 (= call!360133 (validRegex!6351 (ite c!886388 (reg!14825 expr!117) (ite c!886387 (regTwo!29505 expr!117) (regTwo!29504 expr!117)))))))

(declare-fun b!5149546 () Bool)

(declare-fun e!3210383 () Bool)

(assert (=> b!5149546 (= e!3210383 call!360134)))

(declare-fun b!5149547 () Bool)

(assert (=> b!5149547 (= e!3210379 e!3210381)))

(declare-fun res!2191467 () Bool)

(assert (=> b!5149547 (= res!2191467 (not (nullable!4852 (reg!14825 expr!117))))))

(assert (=> b!5149547 (=> (not res!2191467) (not e!3210381))))

(declare-fun b!5149548 () Bool)

(declare-fun res!2191464 () Bool)

(assert (=> b!5149548 (=> (not res!2191464) (not e!3210380))))

(assert (=> b!5149548 (= res!2191464 call!360132)))

(assert (=> b!5149548 (= e!3210382 e!3210380)))

(declare-fun b!5149549 () Bool)

(assert (=> b!5149549 (= e!3210385 e!3210379)))

(assert (=> b!5149549 (= c!886388 (is-Star!14496 expr!117))))

(declare-fun b!5149550 () Bool)

(assert (=> b!5149550 (= e!3210384 e!3210383)))

(declare-fun res!2191463 () Bool)

(assert (=> b!5149550 (=> (not res!2191463) (not e!3210383))))

(assert (=> b!5149550 (= res!2191463 call!360132)))

(assert (= (and d!1663900 (not res!2191466)) b!5149549))

(assert (= (and b!5149549 c!886388) b!5149547))

(assert (= (and b!5149549 (not c!886388)) b!5149542))

(assert (= (and b!5149547 res!2191467) b!5149545))

(assert (= (and b!5149542 c!886387) b!5149548))

(assert (= (and b!5149542 (not c!886387)) b!5149544))

(assert (= (and b!5149548 res!2191464) b!5149543))

(assert (= (and b!5149544 (not res!2191465)) b!5149550))

(assert (= (and b!5149550 res!2191463) b!5149546))

(assert (= (or b!5149543 b!5149546) bm!360127))

(assert (= (or b!5149548 b!5149550) bm!360128))

(assert (= (or b!5149545 bm!360127) bm!360129))

(declare-fun m!6207780 () Bool)

(assert (=> bm!360128 m!6207780))

(declare-fun m!6207782 () Bool)

(assert (=> bm!360129 m!6207782))

(declare-fun m!6207784 () Bool)

(assert (=> b!5149547 m!6207784))

(assert (=> start!544920 d!1663900))

(declare-fun d!1663904 () Bool)

(declare-fun lambda!256946 () Int)

(declare-fun forall!13967 (List!59904 Int) Bool)

(assert (=> d!1663904 (= (inv!79422 ctx!100) (forall!13967 (exprs!4380 ctx!100) lambda!256946))))

(declare-fun bs!1201419 () Bool)

(assert (= bs!1201419 d!1663904))

(declare-fun m!6207786 () Bool)

(assert (=> bs!1201419 m!6207786))

(assert (=> start!544920 d!1663904))

(declare-fun d!1663906 () Bool)

(declare-fun nullableFct!1331 (Regex!14496) Bool)

(assert (=> d!1663906 (= (nullable!4852 (regOne!29504 expr!117)) (nullableFct!1331 (regOne!29504 expr!117)))))

(declare-fun bs!1201420 () Bool)

(assert (= bs!1201420 d!1663906))

(declare-fun m!6207788 () Bool)

(assert (=> bs!1201420 m!6207788))

(assert (=> b!5149478 d!1663906))

(declare-fun bm!360130 () Bool)

(declare-fun call!360137 () Bool)

(declare-fun call!360136 () Bool)

(assert (=> bm!360130 (= call!360137 call!360136)))

(declare-fun bm!360131 () Bool)

(declare-fun call!360135 () Bool)

(declare-fun c!886389 () Bool)

(assert (=> bm!360131 (= call!360135 (validRegex!6351 (ite c!886389 (regOne!29505 (regTwo!29504 expr!117)) (regOne!29504 (regTwo!29504 expr!117)))))))

(declare-fun b!5149551 () Bool)

(declare-fun e!3210386 () Bool)

(declare-fun e!3210389 () Bool)

(assert (=> b!5149551 (= e!3210386 e!3210389)))

(assert (=> b!5149551 (= c!886389 (is-Union!14496 (regTwo!29504 expr!117)))))

(declare-fun b!5149552 () Bool)

(declare-fun e!3210387 () Bool)

(assert (=> b!5149552 (= e!3210387 call!360137)))

(declare-fun b!5149553 () Bool)

(declare-fun res!2191470 () Bool)

(declare-fun e!3210391 () Bool)

(assert (=> b!5149553 (=> res!2191470 e!3210391)))

(assert (=> b!5149553 (= res!2191470 (not (is-Concat!23341 (regTwo!29504 expr!117))))))

(assert (=> b!5149553 (= e!3210389 e!3210391)))

(declare-fun b!5149554 () Bool)

(declare-fun e!3210388 () Bool)

(assert (=> b!5149554 (= e!3210388 call!360136)))

(declare-fun d!1663908 () Bool)

(declare-fun res!2191471 () Bool)

(declare-fun e!3210392 () Bool)

(assert (=> d!1663908 (=> res!2191471 e!3210392)))

(assert (=> d!1663908 (= res!2191471 (is-ElementMatch!14496 (regTwo!29504 expr!117)))))

(assert (=> d!1663908 (= (validRegex!6351 (regTwo!29504 expr!117)) e!3210392)))

(declare-fun bm!360132 () Bool)

(declare-fun c!886390 () Bool)

(assert (=> bm!360132 (= call!360136 (validRegex!6351 (ite c!886390 (reg!14825 (regTwo!29504 expr!117)) (ite c!886389 (regTwo!29505 (regTwo!29504 expr!117)) (regTwo!29504 (regTwo!29504 expr!117))))))))

(declare-fun b!5149555 () Bool)

(declare-fun e!3210390 () Bool)

(assert (=> b!5149555 (= e!3210390 call!360137)))

(declare-fun b!5149556 () Bool)

(assert (=> b!5149556 (= e!3210386 e!3210388)))

(declare-fun res!2191472 () Bool)

(assert (=> b!5149556 (= res!2191472 (not (nullable!4852 (reg!14825 (regTwo!29504 expr!117)))))))

(assert (=> b!5149556 (=> (not res!2191472) (not e!3210388))))

(declare-fun b!5149557 () Bool)

(declare-fun res!2191469 () Bool)

(assert (=> b!5149557 (=> (not res!2191469) (not e!3210387))))

(assert (=> b!5149557 (= res!2191469 call!360135)))

(assert (=> b!5149557 (= e!3210389 e!3210387)))

(declare-fun b!5149558 () Bool)

(assert (=> b!5149558 (= e!3210392 e!3210386)))

(assert (=> b!5149558 (= c!886390 (is-Star!14496 (regTwo!29504 expr!117)))))

(declare-fun b!5149559 () Bool)

(assert (=> b!5149559 (= e!3210391 e!3210390)))

(declare-fun res!2191468 () Bool)

(assert (=> b!5149559 (=> (not res!2191468) (not e!3210390))))

(assert (=> b!5149559 (= res!2191468 call!360135)))

(assert (= (and d!1663908 (not res!2191471)) b!5149558))

(assert (= (and b!5149558 c!886390) b!5149556))

(assert (= (and b!5149558 (not c!886390)) b!5149551))

(assert (= (and b!5149556 res!2191472) b!5149554))

(assert (= (and b!5149551 c!886389) b!5149557))

(assert (= (and b!5149551 (not c!886389)) b!5149553))

(assert (= (and b!5149557 res!2191469) b!5149552))

(assert (= (and b!5149553 (not res!2191470)) b!5149559))

(assert (= (and b!5149559 res!2191468) b!5149555))

(assert (= (or b!5149552 b!5149555) bm!360130))

(assert (= (or b!5149557 b!5149559) bm!360131))

(assert (= (or b!5149554 bm!360130) bm!360132))

(declare-fun m!6207790 () Bool)

(assert (=> bm!360131 m!6207790))

(declare-fun m!6207792 () Bool)

(assert (=> bm!360132 m!6207792))

(declare-fun m!6207794 () Bool)

(assert (=> b!5149556 m!6207794))

(assert (=> b!5149487 d!1663908))

(declare-fun d!1663910 () Bool)

(declare-fun lostCauseFct!372 (Regex!14496) Bool)

(assert (=> d!1663910 (= (lostCause!1544 (regOne!29504 expr!117)) (lostCauseFct!372 (regOne!29504 expr!117)))))

(declare-fun bs!1201421 () Bool)

(assert (= bs!1201421 d!1663910))

(declare-fun m!6207796 () Bool)

(assert (=> bs!1201421 m!6207796))

(assert (=> b!5149487 d!1663910))

(declare-fun d!1663912 () Bool)

(assert (=> d!1663912 (not (lostCause!1544 (regOne!29504 expr!117)))))

(declare-fun lt!2121210 () Unit!151195)

(declare-fun choose!38084 (Regex!14496) Unit!151195)

(assert (=> d!1663912 (= lt!2121210 (choose!38084 (regOne!29504 expr!117)))))

(assert (=> d!1663912 (validRegex!6351 (regOne!29504 expr!117))))

(assert (=> d!1663912 (= (lemmaNullableThenNotLostCause!85 (regOne!29504 expr!117)) lt!2121210)))

(declare-fun bs!1201422 () Bool)

(assert (= bs!1201422 d!1663912))

(assert (=> bs!1201422 m!6207748))

(declare-fun m!6207798 () Bool)

(assert (=> bs!1201422 m!6207798))

(declare-fun m!6207800 () Bool)

(assert (=> bs!1201422 m!6207800))

(assert (=> b!5149487 d!1663912))

(declare-fun d!1663914 () Bool)

(assert (=> d!1663914 (= (lostCause!1544 expr!117) (lostCauseFct!372 expr!117))))

(declare-fun bs!1201423 () Bool)

(assert (= bs!1201423 d!1663914))

(declare-fun m!6207802 () Bool)

(assert (=> bs!1201423 m!6207802))

(assert (=> b!5149477 d!1663914))

(declare-fun bs!1201424 () Bool)

(declare-fun d!1663916 () Bool)

(assert (= bs!1201424 (and d!1663916 d!1663904)))

(declare-fun lambda!256949 () Int)

(assert (=> bs!1201424 (not (= lambda!256949 lambda!256946))))

(declare-fun exists!1823 (List!59904 Int) Bool)

(assert (=> d!1663916 (= (lostCause!1545 ctx!100) (exists!1823 (exprs!4380 ctx!100) lambda!256949))))

(declare-fun bs!1201425 () Bool)

(assert (= bs!1201425 d!1663916))

(declare-fun m!6207804 () Bool)

(assert (=> bs!1201425 m!6207804))

(assert (=> b!5149482 d!1663916))

(assert (=> b!5149481 d!1663916))

(declare-fun d!1663918 () Bool)

(assert (=> d!1663918 (lostCauseZipper!1282 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296))))

(declare-fun lt!2121213 () Unit!151195)

(declare-fun choose!38085 (Regex!14496 Context!7760 C!29258) Unit!151195)

(assert (=> d!1663918 (= lt!2121213 (choose!38085 (regOne!29504 expr!117) lt!2121196 a!1296))))

(assert (=> d!1663918 (validRegex!6351 (regOne!29504 expr!117))))

(assert (=> d!1663918 (= (lemmaLostCauseFixPointDerivDown!53 (regOne!29504 expr!117) lt!2121196 a!1296) lt!2121213)))

(declare-fun bs!1201426 () Bool)

(assert (= bs!1201426 d!1663918))

(assert (=> bs!1201426 m!6207734))

(assert (=> bs!1201426 m!6207734))

(assert (=> bs!1201426 m!6207738))

(declare-fun m!6207806 () Bool)

(assert (=> bs!1201426 m!6207806))

(assert (=> bs!1201426 m!6207800))

(assert (=> b!5149486 d!1663918))

(declare-fun d!1663920 () Bool)

(assert (=> d!1663920 (= ($colon$colon!1218 (exprs!4380 ctx!100) (regTwo!29504 expr!117)) (Cons!59780 (regTwo!29504 expr!117) (exprs!4380 ctx!100)))))

(assert (=> b!5149486 d!1663920))

(declare-fun b!5149582 () Bool)

(declare-fun e!3210405 () (Set Context!7760))

(declare-fun call!360150 () (Set Context!7760))

(assert (=> b!5149582 (= e!3210405 call!360150)))

(declare-fun b!5149583 () Bool)

(assert (=> b!5149583 (= e!3210405 (as set.empty (Set Context!7760)))))

(declare-fun b!5149584 () Bool)

(declare-fun e!3210406 () (Set Context!7760))

(declare-fun e!3210407 () (Set Context!7760))

(assert (=> b!5149584 (= e!3210406 e!3210407)))

(declare-fun c!886403 () Bool)

(assert (=> b!5149584 (= c!886403 (is-Concat!23341 (regOne!29504 expr!117)))))

(declare-fun bm!360145 () Bool)

(declare-fun call!360155 () (Set Context!7760))

(declare-fun call!360151 () (Set Context!7760))

(assert (=> bm!360145 (= call!360155 call!360151)))

(declare-fun bm!360146 () Bool)

(declare-fun c!886401 () Bool)

(declare-fun c!886404 () Bool)

(declare-fun call!360154 () List!59904)

(assert (=> bm!360146 (= call!360151 (derivationStepZipperDown!163 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117))))) (ite (or c!886401 c!886404) lt!2121196 (Context!7761 call!360154)) a!1296))))

(declare-fun b!5149585 () Bool)

(declare-fun e!3210409 () Bool)

(assert (=> b!5149585 (= e!3210409 (nullable!4852 (regOne!29504 (regOne!29504 expr!117))))))

(declare-fun bm!360147 () Bool)

(declare-fun call!360153 () (Set Context!7760))

(declare-fun call!360152 () List!59904)

(assert (=> bm!360147 (= call!360153 (derivationStepZipperDown!163 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117))) (ite c!886401 lt!2121196 (Context!7761 call!360152)) a!1296))))

(declare-fun b!5149586 () Bool)

(declare-fun c!886405 () Bool)

(assert (=> b!5149586 (= c!886405 (is-Star!14496 (regOne!29504 expr!117)))))

(assert (=> b!5149586 (= e!3210407 e!3210405)))

(declare-fun b!5149587 () Bool)

(declare-fun e!3210408 () (Set Context!7760))

(assert (=> b!5149587 (= e!3210408 (set.union call!360153 call!360151))))

(declare-fun d!1663922 () Bool)

(declare-fun c!886402 () Bool)

(assert (=> d!1663922 (= c!886402 (and (is-ElementMatch!14496 (regOne!29504 expr!117)) (= (c!886381 (regOne!29504 expr!117)) a!1296)))))

(declare-fun e!3210410 () (Set Context!7760))

(assert (=> d!1663922 (= (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296) e!3210410)))

(declare-fun bm!360148 () Bool)

(assert (=> bm!360148 (= call!360152 ($colon$colon!1218 (exprs!4380 lt!2121196) (ite (or c!886404 c!886403) (regTwo!29504 (regOne!29504 expr!117)) (regOne!29504 expr!117))))))

(declare-fun b!5149588 () Bool)

(assert (=> b!5149588 (= e!3210407 call!360150)))

(declare-fun b!5149589 () Bool)

(assert (=> b!5149589 (= c!886404 e!3210409)))

(declare-fun res!2191475 () Bool)

(assert (=> b!5149589 (=> (not res!2191475) (not e!3210409))))

(assert (=> b!5149589 (= res!2191475 (is-Concat!23341 (regOne!29504 expr!117)))))

(assert (=> b!5149589 (= e!3210408 e!3210406)))

(declare-fun bm!360149 () Bool)

(assert (=> bm!360149 (= call!360154 call!360152)))

(declare-fun b!5149590 () Bool)

(assert (=> b!5149590 (= e!3210410 e!3210408)))

(assert (=> b!5149590 (= c!886401 (is-Union!14496 (regOne!29504 expr!117)))))

(declare-fun b!5149591 () Bool)

(assert (=> b!5149591 (= e!3210410 (set.insert lt!2121196 (as set.empty (Set Context!7760))))))

(declare-fun bm!360150 () Bool)

(assert (=> bm!360150 (= call!360150 call!360155)))

(declare-fun b!5149592 () Bool)

(assert (=> b!5149592 (= e!3210406 (set.union call!360153 call!360155))))

(assert (= (and d!1663922 c!886402) b!5149591))

(assert (= (and d!1663922 (not c!886402)) b!5149590))

(assert (= (and b!5149590 c!886401) b!5149587))

(assert (= (and b!5149590 (not c!886401)) b!5149589))

(assert (= (and b!5149589 res!2191475) b!5149585))

(assert (= (and b!5149589 c!886404) b!5149592))

(assert (= (and b!5149589 (not c!886404)) b!5149584))

(assert (= (and b!5149584 c!886403) b!5149588))

(assert (= (and b!5149584 (not c!886403)) b!5149586))

(assert (= (and b!5149586 c!886405) b!5149582))

(assert (= (and b!5149586 (not c!886405)) b!5149583))

(assert (= (or b!5149588 b!5149582) bm!360149))

(assert (= (or b!5149588 b!5149582) bm!360150))

(assert (= (or b!5149592 bm!360149) bm!360148))

(assert (= (or b!5149592 bm!360150) bm!360145))

(assert (= (or b!5149587 bm!360145) bm!360146))

(assert (= (or b!5149587 b!5149592) bm!360147))

(declare-fun m!6207808 () Bool)

(assert (=> b!5149585 m!6207808))

(declare-fun m!6207810 () Bool)

(assert (=> bm!360146 m!6207810))

(declare-fun m!6207812 () Bool)

(assert (=> b!5149591 m!6207812))

(declare-fun m!6207814 () Bool)

(assert (=> bm!360148 m!6207814))

(declare-fun m!6207816 () Bool)

(assert (=> bm!360147 m!6207816))

(assert (=> b!5149486 d!1663922))

(declare-fun bs!1201427 () Bool)

(declare-fun b!5149597 () Bool)

(declare-fun d!1663924 () Bool)

(assert (= bs!1201427 (and b!5149597 d!1663924)))

(declare-fun lambda!256963 () Int)

(declare-fun lambda!256962 () Int)

(assert (=> bs!1201427 (not (= lambda!256963 lambda!256962))))

(declare-fun bs!1201428 () Bool)

(declare-fun b!5149598 () Bool)

(assert (= bs!1201428 (and b!5149598 d!1663924)))

(declare-fun lambda!256964 () Int)

(assert (=> bs!1201428 (not (= lambda!256964 lambda!256962))))

(declare-fun bs!1201429 () Bool)

(assert (= bs!1201429 (and b!5149598 b!5149597)))

(assert (=> bs!1201429 (= lambda!256964 lambda!256963)))

(declare-fun c!886416 () Bool)

(declare-datatypes ((List!59906 0))(
  ( (Nil!59782) (Cons!59782 (h!66230 Context!7760) (t!372950 List!59906)) )
))
(declare-fun lt!2121236 () List!59906)

(declare-fun lt!2121234 () List!59906)

(declare-fun bm!360155 () Bool)

(declare-fun call!360160 () Bool)

(declare-fun exists!1824 (List!59906 Int) Bool)

(assert (=> bm!360155 (= call!360160 (exists!1824 (ite c!886416 lt!2121236 lt!2121234) (ite c!886416 lambda!256963 lambda!256964)))))

(declare-fun e!3210417 () Unit!151195)

(declare-fun Unit!151199 () Unit!151195)

(assert (=> b!5149597 (= e!3210417 Unit!151199)))

(declare-fun call!360161 () List!59906)

(assert (=> b!5149597 (= lt!2121236 call!360161)))

(declare-fun lt!2121233 () Unit!151195)

(declare-fun lemmaNotForallThenExists!443 (List!59906 Int) Unit!151195)

(assert (=> b!5149597 (= lt!2121233 (lemmaNotForallThenExists!443 lt!2121236 lambda!256962))))

(assert (=> b!5149597 call!360160))

(declare-fun lt!2121237 () Unit!151195)

(assert (=> b!5149597 (= lt!2121237 lt!2121233)))

(declare-fun Unit!151200 () Unit!151195)

(assert (=> b!5149598 (= e!3210417 Unit!151200)))

(assert (=> b!5149598 (= lt!2121234 call!360161)))

(declare-fun lt!2121232 () Unit!151195)

(declare-fun lemmaForallThenNotExists!410 (List!59906 Int) Unit!151195)

(assert (=> b!5149598 (= lt!2121232 (lemmaForallThenNotExists!410 lt!2121234 lambda!256962))))

(assert (=> b!5149598 (not call!360160)))

(declare-fun lt!2121231 () Unit!151195)

(assert (=> b!5149598 (= lt!2121231 lt!2121232)))

(declare-fun bm!360156 () Bool)

(declare-fun toList!8396 ((Set Context!7760)) List!59906)

(assert (=> bm!360156 (= call!360161 (toList!8396 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296)))))

(declare-fun lt!2121235 () Bool)

(declare-datatypes ((List!59907 0))(
  ( (Nil!59783) (Cons!59783 (h!66231 C!29258) (t!372951 List!59907)) )
))
(declare-datatypes ((Option!14800 0))(
  ( (None!14799) (Some!14799 (v!50828 List!59907)) )
))
(declare-fun isEmpty!32061 (Option!14800) Bool)

(declare-fun getLanguageWitness!957 ((Set Context!7760)) Option!14800)

(assert (=> d!1663924 (= lt!2121235 (isEmpty!32061 (getLanguageWitness!957 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296))))))

(declare-fun forall!13968 ((Set Context!7760) Int) Bool)

(assert (=> d!1663924 (= lt!2121235 (forall!13968 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296) lambda!256962))))

(declare-fun lt!2121230 () Unit!151195)

(assert (=> d!1663924 (= lt!2121230 e!3210417)))

(assert (=> d!1663924 (= c!886416 (not (forall!13968 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296) lambda!256962)))))

(assert (=> d!1663924 (= (lostCauseZipper!1282 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296)) lt!2121235)))

(assert (= (and d!1663924 c!886416) b!5149597))

(assert (= (and d!1663924 (not c!886416)) b!5149598))

(assert (= (or b!5149597 b!5149598) bm!360155))

(assert (= (or b!5149597 b!5149598) bm!360156))

(declare-fun m!6207818 () Bool)

(assert (=> b!5149598 m!6207818))

(declare-fun m!6207820 () Bool)

(assert (=> b!5149597 m!6207820))

(declare-fun m!6207822 () Bool)

(assert (=> bm!360155 m!6207822))

(assert (=> bm!360156 m!6207734))

(declare-fun m!6207824 () Bool)

(assert (=> bm!360156 m!6207824))

(assert (=> d!1663924 m!6207734))

(declare-fun m!6207826 () Bool)

(assert (=> d!1663924 m!6207826))

(assert (=> d!1663924 m!6207826))

(declare-fun m!6207828 () Bool)

(assert (=> d!1663924 m!6207828))

(assert (=> d!1663924 m!6207734))

(declare-fun m!6207830 () Bool)

(assert (=> d!1663924 m!6207830))

(assert (=> d!1663924 m!6207734))

(assert (=> d!1663924 m!6207830))

(assert (=> b!5149486 d!1663924))

(declare-fun d!1663926 () Bool)

(assert (=> d!1663926 (= (lostCause!1544 (regTwo!29504 expr!117)) (lostCauseFct!372 (regTwo!29504 expr!117)))))

(declare-fun bs!1201430 () Bool)

(assert (= bs!1201430 d!1663926))

(declare-fun m!6207832 () Bool)

(assert (=> bs!1201430 m!6207832))

(assert (=> b!5149486 d!1663926))

(declare-fun b!5149609 () Bool)

(declare-fun e!3210420 () Bool)

(assert (=> b!5149609 (= e!3210420 tp_is_empty!38141)))

(declare-fun b!5149611 () Bool)

(declare-fun tp!1439807 () Bool)

(assert (=> b!5149611 (= e!3210420 tp!1439807)))

(declare-fun b!5149610 () Bool)

(declare-fun tp!1439810 () Bool)

(declare-fun tp!1439808 () Bool)

(assert (=> b!5149610 (= e!3210420 (and tp!1439810 tp!1439808))))

(assert (=> b!5149485 (= tp!1439776 e!3210420)))

(declare-fun b!5149612 () Bool)

(declare-fun tp!1439806 () Bool)

(declare-fun tp!1439809 () Bool)

(assert (=> b!5149612 (= e!3210420 (and tp!1439806 tp!1439809))))

(assert (= (and b!5149485 (is-ElementMatch!14496 (regOne!29505 expr!117))) b!5149609))

(assert (= (and b!5149485 (is-Concat!23341 (regOne!29505 expr!117))) b!5149610))

(assert (= (and b!5149485 (is-Star!14496 (regOne!29505 expr!117))) b!5149611))

(assert (= (and b!5149485 (is-Union!14496 (regOne!29505 expr!117))) b!5149612))

(declare-fun b!5149613 () Bool)

(declare-fun e!3210421 () Bool)

(assert (=> b!5149613 (= e!3210421 tp_is_empty!38141)))

(declare-fun b!5149615 () Bool)

(declare-fun tp!1439812 () Bool)

(assert (=> b!5149615 (= e!3210421 tp!1439812)))

(declare-fun b!5149614 () Bool)

(declare-fun tp!1439815 () Bool)

(declare-fun tp!1439813 () Bool)

(assert (=> b!5149614 (= e!3210421 (and tp!1439815 tp!1439813))))

(assert (=> b!5149485 (= tp!1439777 e!3210421)))

(declare-fun b!5149616 () Bool)

(declare-fun tp!1439811 () Bool)

(declare-fun tp!1439814 () Bool)

(assert (=> b!5149616 (= e!3210421 (and tp!1439811 tp!1439814))))

(assert (= (and b!5149485 (is-ElementMatch!14496 (regTwo!29505 expr!117))) b!5149613))

(assert (= (and b!5149485 (is-Concat!23341 (regTwo!29505 expr!117))) b!5149614))

(assert (= (and b!5149485 (is-Star!14496 (regTwo!29505 expr!117))) b!5149615))

(assert (= (and b!5149485 (is-Union!14496 (regTwo!29505 expr!117))) b!5149616))

(declare-fun b!5149617 () Bool)

(declare-fun e!3210422 () Bool)

(assert (=> b!5149617 (= e!3210422 tp_is_empty!38141)))

(declare-fun b!5149619 () Bool)

(declare-fun tp!1439817 () Bool)

(assert (=> b!5149619 (= e!3210422 tp!1439817)))

(declare-fun b!5149618 () Bool)

(declare-fun tp!1439820 () Bool)

(declare-fun tp!1439818 () Bool)

(assert (=> b!5149618 (= e!3210422 (and tp!1439820 tp!1439818))))

(assert (=> b!5149483 (= tp!1439773 e!3210422)))

(declare-fun b!5149620 () Bool)

(declare-fun tp!1439816 () Bool)

(declare-fun tp!1439819 () Bool)

(assert (=> b!5149620 (= e!3210422 (and tp!1439816 tp!1439819))))

(assert (= (and b!5149483 (is-ElementMatch!14496 (reg!14825 expr!117))) b!5149617))

(assert (= (and b!5149483 (is-Concat!23341 (reg!14825 expr!117))) b!5149618))

(assert (= (and b!5149483 (is-Star!14496 (reg!14825 expr!117))) b!5149619))

(assert (= (and b!5149483 (is-Union!14496 (reg!14825 expr!117))) b!5149620))

(declare-fun b!5149621 () Bool)

(declare-fun e!3210423 () Bool)

(assert (=> b!5149621 (= e!3210423 tp_is_empty!38141)))

(declare-fun b!5149623 () Bool)

(declare-fun tp!1439822 () Bool)

(assert (=> b!5149623 (= e!3210423 tp!1439822)))

(declare-fun b!5149622 () Bool)

(declare-fun tp!1439825 () Bool)

(declare-fun tp!1439823 () Bool)

(assert (=> b!5149622 (= e!3210423 (and tp!1439825 tp!1439823))))

(assert (=> b!5149476 (= tp!1439772 e!3210423)))

(declare-fun b!5149624 () Bool)

(declare-fun tp!1439821 () Bool)

(declare-fun tp!1439824 () Bool)

(assert (=> b!5149624 (= e!3210423 (and tp!1439821 tp!1439824))))

(assert (= (and b!5149476 (is-ElementMatch!14496 (regOne!29504 expr!117))) b!5149621))

(assert (= (and b!5149476 (is-Concat!23341 (regOne!29504 expr!117))) b!5149622))

(assert (= (and b!5149476 (is-Star!14496 (regOne!29504 expr!117))) b!5149623))

(assert (= (and b!5149476 (is-Union!14496 (regOne!29504 expr!117))) b!5149624))

(declare-fun b!5149625 () Bool)

(declare-fun e!3210424 () Bool)

(assert (=> b!5149625 (= e!3210424 tp_is_empty!38141)))

(declare-fun b!5149627 () Bool)

(declare-fun tp!1439827 () Bool)

(assert (=> b!5149627 (= e!3210424 tp!1439827)))

(declare-fun b!5149626 () Bool)

(declare-fun tp!1439830 () Bool)

(declare-fun tp!1439828 () Bool)

(assert (=> b!5149626 (= e!3210424 (and tp!1439830 tp!1439828))))

(assert (=> b!5149476 (= tp!1439775 e!3210424)))

(declare-fun b!5149628 () Bool)

(declare-fun tp!1439826 () Bool)

(declare-fun tp!1439829 () Bool)

(assert (=> b!5149628 (= e!3210424 (and tp!1439826 tp!1439829))))

(assert (= (and b!5149476 (is-ElementMatch!14496 (regTwo!29504 expr!117))) b!5149625))

(assert (= (and b!5149476 (is-Concat!23341 (regTwo!29504 expr!117))) b!5149626))

(assert (= (and b!5149476 (is-Star!14496 (regTwo!29504 expr!117))) b!5149627))

(assert (= (and b!5149476 (is-Union!14496 (regTwo!29504 expr!117))) b!5149628))

(declare-fun b!5149633 () Bool)

(declare-fun e!3210427 () Bool)

(declare-fun tp!1439835 () Bool)

(declare-fun tp!1439836 () Bool)

(assert (=> b!5149633 (= e!3210427 (and tp!1439835 tp!1439836))))

(assert (=> b!5149480 (= tp!1439774 e!3210427)))

(assert (= (and b!5149480 (is-Cons!59780 (exprs!4380 ctx!100))) b!5149633))

(push 1)

(assert (not bm!360131))

(assert (not bm!360147))

(assert (not b!5149624))

(assert (not b!5149614))

(assert (not b!5149610))

(assert (not b!5149612))

(assert (not bm!360155))

(assert (not b!5149620))

(assert (not bm!360128))

(assert (not b!5149618))

(assert (not b!5149598))

(assert (not d!1663926))

(assert (not d!1663904))

(assert (not d!1663924))

(assert (not b!5149611))

(assert (not d!1663918))

(assert (not b!5149623))

(assert (not d!1663906))

(assert (not d!1663916))

(assert (not b!5149556))

(assert (not b!5149585))

(assert (not b!5149597))

(assert (not d!1663910))

(assert (not bm!360148))

(assert (not b!5149628))

(assert (not b!5149626))

(assert (not bm!360132))

(assert (not b!5149619))

(assert tp_is_empty!38141)

(assert (not bm!360146))

(assert (not bm!360156))

(assert (not b!5149622))

(assert (not d!1663914))

(assert (not d!1663912))

(assert (not bm!360129))

(assert (not b!5149616))

(assert (not b!5149627))

(assert (not b!5149633))

(assert (not b!5149547))

(assert (not b!5149615))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1663952 () Bool)

(assert (=> d!1663952 (= (nullable!4852 (regOne!29504 (regOne!29504 expr!117))) (nullableFct!1331 (regOne!29504 (regOne!29504 expr!117))))))

(declare-fun bs!1201443 () Bool)

(assert (= bs!1201443 d!1663952))

(declare-fun m!6207888 () Bool)

(assert (=> bs!1201443 m!6207888))

(assert (=> b!5149585 d!1663952))

(declare-fun b!5149744 () Bool)

(declare-fun e!3210491 () (Set Context!7760))

(declare-fun call!360198 () (Set Context!7760))

(assert (=> b!5149744 (= e!3210491 call!360198)))

(declare-fun b!5149745 () Bool)

(assert (=> b!5149745 (= e!3210491 (as set.empty (Set Context!7760)))))

(declare-fun b!5149746 () Bool)

(declare-fun e!3210492 () (Set Context!7760))

(declare-fun e!3210493 () (Set Context!7760))

(assert (=> b!5149746 (= e!3210492 e!3210493)))

(declare-fun c!886453 () Bool)

(assert (=> b!5149746 (= c!886453 (is-Concat!23341 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))))))

(declare-fun bm!360193 () Bool)

(declare-fun call!360203 () (Set Context!7760))

(declare-fun call!360199 () (Set Context!7760))

(assert (=> bm!360193 (= call!360203 call!360199)))

(declare-fun c!886451 () Bool)

(declare-fun c!886454 () Bool)

(declare-fun call!360202 () List!59904)

(declare-fun bm!360194 () Bool)

(assert (=> bm!360194 (= call!360199 (derivationStepZipperDown!163 (ite c!886451 (regTwo!29505 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))) (ite c!886454 (regTwo!29504 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))) (ite c!886453 (regOne!29504 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))) (reg!14825 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117))))))) (ite (or c!886451 c!886454) (ite c!886401 lt!2121196 (Context!7761 call!360152)) (Context!7761 call!360202)) a!1296))))

(declare-fun b!5149747 () Bool)

(declare-fun e!3210495 () Bool)

(assert (=> b!5149747 (= e!3210495 (nullable!4852 (regOne!29504 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117))))))))

(declare-fun call!360200 () List!59904)

(declare-fun call!360201 () (Set Context!7760))

(declare-fun bm!360195 () Bool)

(assert (=> bm!360195 (= call!360201 (derivationStepZipperDown!163 (ite c!886451 (regOne!29505 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))) (regOne!29504 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117))))) (ite c!886451 (ite c!886401 lt!2121196 (Context!7761 call!360152)) (Context!7761 call!360200)) a!1296))))

(declare-fun b!5149748 () Bool)

(declare-fun c!886455 () Bool)

(assert (=> b!5149748 (= c!886455 (is-Star!14496 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))))))

(assert (=> b!5149748 (= e!3210493 e!3210491)))

(declare-fun b!5149749 () Bool)

(declare-fun e!3210494 () (Set Context!7760))

(assert (=> b!5149749 (= e!3210494 (set.union call!360201 call!360199))))

(declare-fun d!1663954 () Bool)

(declare-fun c!886452 () Bool)

(assert (=> d!1663954 (= c!886452 (and (is-ElementMatch!14496 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))) (= (c!886381 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))) a!1296)))))

(declare-fun e!3210496 () (Set Context!7760))

(assert (=> d!1663954 (= (derivationStepZipperDown!163 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117))) (ite c!886401 lt!2121196 (Context!7761 call!360152)) a!1296) e!3210496)))

(declare-fun bm!360196 () Bool)

(assert (=> bm!360196 (= call!360200 ($colon$colon!1218 (exprs!4380 (ite c!886401 lt!2121196 (Context!7761 call!360152))) (ite (or c!886454 c!886453) (regTwo!29504 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))) (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117))))))))

(declare-fun b!5149750 () Bool)

(assert (=> b!5149750 (= e!3210493 call!360198)))

(declare-fun b!5149751 () Bool)

(assert (=> b!5149751 (= c!886454 e!3210495)))

(declare-fun res!2191499 () Bool)

(assert (=> b!5149751 (=> (not res!2191499) (not e!3210495))))

(assert (=> b!5149751 (= res!2191499 (is-Concat!23341 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))))))

(assert (=> b!5149751 (= e!3210494 e!3210492)))

(declare-fun bm!360197 () Bool)

(assert (=> bm!360197 (= call!360202 call!360200)))

(declare-fun b!5149752 () Bool)

(assert (=> b!5149752 (= e!3210496 e!3210494)))

(assert (=> b!5149752 (= c!886451 (is-Union!14496 (ite c!886401 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))))))

(declare-fun b!5149753 () Bool)

(assert (=> b!5149753 (= e!3210496 (set.insert (ite c!886401 lt!2121196 (Context!7761 call!360152)) (as set.empty (Set Context!7760))))))

(declare-fun bm!360198 () Bool)

(assert (=> bm!360198 (= call!360198 call!360203)))

(declare-fun b!5149754 () Bool)

(assert (=> b!5149754 (= e!3210492 (set.union call!360201 call!360203))))

(assert (= (and d!1663954 c!886452) b!5149753))

(assert (= (and d!1663954 (not c!886452)) b!5149752))

(assert (= (and b!5149752 c!886451) b!5149749))

(assert (= (and b!5149752 (not c!886451)) b!5149751))

(assert (= (and b!5149751 res!2191499) b!5149747))

(assert (= (and b!5149751 c!886454) b!5149754))

(assert (= (and b!5149751 (not c!886454)) b!5149746))

(assert (= (and b!5149746 c!886453) b!5149750))

(assert (= (and b!5149746 (not c!886453)) b!5149748))

(assert (= (and b!5149748 c!886455) b!5149744))

(assert (= (and b!5149748 (not c!886455)) b!5149745))

(assert (= (or b!5149750 b!5149744) bm!360197))

(assert (= (or b!5149750 b!5149744) bm!360198))

(assert (= (or b!5149754 bm!360197) bm!360196))

(assert (= (or b!5149754 bm!360198) bm!360193))

(assert (= (or b!5149749 bm!360193) bm!360194))

(assert (= (or b!5149749 b!5149754) bm!360195))

(declare-fun m!6207890 () Bool)

(assert (=> b!5149747 m!6207890))

(declare-fun m!6207892 () Bool)

(assert (=> bm!360194 m!6207892))

(declare-fun m!6207894 () Bool)

(assert (=> b!5149753 m!6207894))

(declare-fun m!6207896 () Bool)

(assert (=> bm!360196 m!6207896))

(declare-fun m!6207898 () Bool)

(assert (=> bm!360195 m!6207898))

(assert (=> bm!360147 d!1663954))

(declare-fun b!5149755 () Bool)

(declare-fun e!3210497 () (Set Context!7760))

(declare-fun call!360204 () (Set Context!7760))

(assert (=> b!5149755 (= e!3210497 call!360204)))

(declare-fun b!5149756 () Bool)

(assert (=> b!5149756 (= e!3210497 (as set.empty (Set Context!7760)))))

(declare-fun b!5149757 () Bool)

(declare-fun e!3210498 () (Set Context!7760))

(declare-fun e!3210499 () (Set Context!7760))

(assert (=> b!5149757 (= e!3210498 e!3210499)))

(declare-fun c!886458 () Bool)

(assert (=> b!5149757 (= c!886458 (is-Concat!23341 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117)))))))))

(declare-fun bm!360199 () Bool)

(declare-fun call!360209 () (Set Context!7760))

(declare-fun call!360205 () (Set Context!7760))

(assert (=> bm!360199 (= call!360209 call!360205)))

(declare-fun bm!360200 () Bool)

(declare-fun c!886456 () Bool)

(declare-fun c!886459 () Bool)

(declare-fun call!360208 () List!59904)

(assert (=> bm!360200 (= call!360205 (derivationStepZipperDown!163 (ite c!886456 (regTwo!29505 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117)))))) (ite c!886459 (regTwo!29504 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117)))))) (ite c!886458 (regOne!29504 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117)))))) (reg!14825 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117))))))))) (ite (or c!886456 c!886459) (ite (or c!886401 c!886404) lt!2121196 (Context!7761 call!360154)) (Context!7761 call!360208)) a!1296))))

(declare-fun e!3210501 () Bool)

(declare-fun b!5149758 () Bool)

(assert (=> b!5149758 (= e!3210501 (nullable!4852 (regOne!29504 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117))))))))))

(declare-fun call!360206 () List!59904)

(declare-fun call!360207 () (Set Context!7760))

(declare-fun bm!360201 () Bool)

(assert (=> bm!360201 (= call!360207 (derivationStepZipperDown!163 (ite c!886456 (regOne!29505 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117)))))) (regOne!29504 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117))))))) (ite c!886456 (ite (or c!886401 c!886404) lt!2121196 (Context!7761 call!360154)) (Context!7761 call!360206)) a!1296))))

(declare-fun b!5149759 () Bool)

(declare-fun c!886460 () Bool)

(assert (=> b!5149759 (= c!886460 (is-Star!14496 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117)))))))))

(assert (=> b!5149759 (= e!3210499 e!3210497)))

(declare-fun b!5149760 () Bool)

(declare-fun e!3210500 () (Set Context!7760))

(assert (=> b!5149760 (= e!3210500 (set.union call!360207 call!360205))))

(declare-fun d!1663956 () Bool)

(declare-fun c!886457 () Bool)

(assert (=> d!1663956 (= c!886457 (and (is-ElementMatch!14496 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117)))))) (= (c!886381 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117)))))) a!1296)))))

(declare-fun e!3210502 () (Set Context!7760))

(assert (=> d!1663956 (= (derivationStepZipperDown!163 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117))))) (ite (or c!886401 c!886404) lt!2121196 (Context!7761 call!360154)) a!1296) e!3210502)))

(declare-fun bm!360202 () Bool)

(assert (=> bm!360202 (= call!360206 ($colon$colon!1218 (exprs!4380 (ite (or c!886401 c!886404) lt!2121196 (Context!7761 call!360154))) (ite (or c!886459 c!886458) (regTwo!29504 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117)))))) (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117))))))))))

(declare-fun b!5149761 () Bool)

(assert (=> b!5149761 (= e!3210499 call!360204)))

(declare-fun b!5149762 () Bool)

(assert (=> b!5149762 (= c!886459 e!3210501)))

(declare-fun res!2191500 () Bool)

(assert (=> b!5149762 (=> (not res!2191500) (not e!3210501))))

(assert (=> b!5149762 (= res!2191500 (is-Concat!23341 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117)))))))))

(assert (=> b!5149762 (= e!3210500 e!3210498)))

(declare-fun bm!360203 () Bool)

(assert (=> bm!360203 (= call!360208 call!360206)))

(declare-fun b!5149763 () Bool)

(assert (=> b!5149763 (= e!3210502 e!3210500)))

(assert (=> b!5149763 (= c!886456 (is-Union!14496 (ite c!886401 (regTwo!29505 (regOne!29504 expr!117)) (ite c!886404 (regTwo!29504 (regOne!29504 expr!117)) (ite c!886403 (regOne!29504 (regOne!29504 expr!117)) (reg!14825 (regOne!29504 expr!117)))))))))

(declare-fun b!5149764 () Bool)

(assert (=> b!5149764 (= e!3210502 (set.insert (ite (or c!886401 c!886404) lt!2121196 (Context!7761 call!360154)) (as set.empty (Set Context!7760))))))

(declare-fun bm!360204 () Bool)

(assert (=> bm!360204 (= call!360204 call!360209)))

(declare-fun b!5149765 () Bool)

(assert (=> b!5149765 (= e!3210498 (set.union call!360207 call!360209))))

(assert (= (and d!1663956 c!886457) b!5149764))

(assert (= (and d!1663956 (not c!886457)) b!5149763))

(assert (= (and b!5149763 c!886456) b!5149760))

(assert (= (and b!5149763 (not c!886456)) b!5149762))

(assert (= (and b!5149762 res!2191500) b!5149758))

(assert (= (and b!5149762 c!886459) b!5149765))

(assert (= (and b!5149762 (not c!886459)) b!5149757))

(assert (= (and b!5149757 c!886458) b!5149761))

(assert (= (and b!5149757 (not c!886458)) b!5149759))

(assert (= (and b!5149759 c!886460) b!5149755))

(assert (= (and b!5149759 (not c!886460)) b!5149756))

(assert (= (or b!5149761 b!5149755) bm!360203))

(assert (= (or b!5149761 b!5149755) bm!360204))

(assert (= (or b!5149765 bm!360203) bm!360202))

(assert (= (or b!5149765 bm!360204) bm!360199))

(assert (= (or b!5149760 bm!360199) bm!360200))

(assert (= (or b!5149760 b!5149765) bm!360201))

(declare-fun m!6207900 () Bool)

(assert (=> b!5149758 m!6207900))

(declare-fun m!6207902 () Bool)

(assert (=> bm!360200 m!6207902))

(declare-fun m!6207904 () Bool)

(assert (=> b!5149764 m!6207904))

(declare-fun m!6207906 () Bool)

(assert (=> bm!360202 m!6207906))

(declare-fun m!6207908 () Bool)

(assert (=> bm!360201 m!6207908))

(assert (=> bm!360146 d!1663956))

(declare-fun b!5149780 () Bool)

(declare-fun e!3210517 () Bool)

(declare-fun call!360215 () Bool)

(assert (=> b!5149780 (= e!3210517 call!360215)))

(declare-fun b!5149781 () Bool)

(declare-fun e!3210516 () Bool)

(assert (=> b!5149781 (= e!3210516 e!3210517)))

(declare-fun res!2191514 () Bool)

(declare-fun call!360214 () Bool)

(assert (=> b!5149781 (= res!2191514 call!360214)))

(assert (=> b!5149781 (=> res!2191514 e!3210517)))

(declare-fun b!5149783 () Bool)

(declare-fun e!3210520 () Bool)

(declare-fun e!3210519 () Bool)

(assert (=> b!5149783 (= e!3210520 e!3210519)))

(declare-fun res!2191511 () Bool)

(assert (=> b!5149783 (=> (not res!2191511) (not e!3210519))))

(assert (=> b!5149783 (= res!2191511 (and (not (is-EmptyLang!14496 (regOne!29504 expr!117))) (not (is-ElementMatch!14496 (regOne!29504 expr!117)))))))

(declare-fun b!5149784 () Bool)

(declare-fun e!3210518 () Bool)

(assert (=> b!5149784 (= e!3210518 e!3210516)))

(declare-fun c!886463 () Bool)

(assert (=> b!5149784 (= c!886463 (is-Union!14496 (regOne!29504 expr!117)))))

(declare-fun b!5149785 () Bool)

(declare-fun e!3210515 () Bool)

(assert (=> b!5149785 (= e!3210515 call!360214)))

(declare-fun bm!360209 () Bool)

(assert (=> bm!360209 (= call!360214 (nullable!4852 (ite c!886463 (regOne!29505 (regOne!29504 expr!117)) (regTwo!29504 (regOne!29504 expr!117)))))))

(declare-fun b!5149786 () Bool)

(assert (=> b!5149786 (= e!3210516 e!3210515)))

(declare-fun res!2191513 () Bool)

(assert (=> b!5149786 (= res!2191513 call!360215)))

(assert (=> b!5149786 (=> (not res!2191513) (not e!3210515))))

(declare-fun bm!360210 () Bool)

(assert (=> bm!360210 (= call!360215 (nullable!4852 (ite c!886463 (regTwo!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))))))

(declare-fun b!5149782 () Bool)

(assert (=> b!5149782 (= e!3210519 e!3210518)))

(declare-fun res!2191512 () Bool)

(assert (=> b!5149782 (=> res!2191512 e!3210518)))

(assert (=> b!5149782 (= res!2191512 (is-Star!14496 (regOne!29504 expr!117)))))

(declare-fun d!1663958 () Bool)

(declare-fun res!2191515 () Bool)

(assert (=> d!1663958 (=> res!2191515 e!3210520)))

(assert (=> d!1663958 (= res!2191515 (is-EmptyExpr!14496 (regOne!29504 expr!117)))))

(assert (=> d!1663958 (= (nullableFct!1331 (regOne!29504 expr!117)) e!3210520)))

(assert (= (and d!1663958 (not res!2191515)) b!5149783))

(assert (= (and b!5149783 res!2191511) b!5149782))

(assert (= (and b!5149782 (not res!2191512)) b!5149784))

(assert (= (and b!5149784 c!886463) b!5149781))

(assert (= (and b!5149784 (not c!886463)) b!5149786))

(assert (= (and b!5149781 (not res!2191514)) b!5149780))

(assert (= (and b!5149786 res!2191513) b!5149785))

(assert (= (or b!5149780 b!5149786) bm!360210))

(assert (= (or b!5149781 b!5149785) bm!360209))

(declare-fun m!6207910 () Bool)

(assert (=> bm!360209 m!6207910))

(declare-fun m!6207912 () Bool)

(assert (=> bm!360210 m!6207912))

(assert (=> d!1663906 d!1663958))

(declare-fun bm!360211 () Bool)

(declare-fun call!360218 () Bool)

(declare-fun call!360217 () Bool)

(assert (=> bm!360211 (= call!360218 call!360217)))

(declare-fun bm!360212 () Bool)

(declare-fun c!886464 () Bool)

(declare-fun call!360216 () Bool)

(assert (=> bm!360212 (= call!360216 (validRegex!6351 (ite c!886464 (regOne!29505 (ite c!886390 (reg!14825 (regTwo!29504 expr!117)) (ite c!886389 (regTwo!29505 (regTwo!29504 expr!117)) (regTwo!29504 (regTwo!29504 expr!117))))) (regOne!29504 (ite c!886390 (reg!14825 (regTwo!29504 expr!117)) (ite c!886389 (regTwo!29505 (regTwo!29504 expr!117)) (regTwo!29504 (regTwo!29504 expr!117))))))))))

(declare-fun b!5149787 () Bool)

(declare-fun e!3210521 () Bool)

(declare-fun e!3210524 () Bool)

(assert (=> b!5149787 (= e!3210521 e!3210524)))

(assert (=> b!5149787 (= c!886464 (is-Union!14496 (ite c!886390 (reg!14825 (regTwo!29504 expr!117)) (ite c!886389 (regTwo!29505 (regTwo!29504 expr!117)) (regTwo!29504 (regTwo!29504 expr!117))))))))

(declare-fun b!5149788 () Bool)

(declare-fun e!3210522 () Bool)

(assert (=> b!5149788 (= e!3210522 call!360218)))

(declare-fun b!5149789 () Bool)

(declare-fun res!2191518 () Bool)

(declare-fun e!3210526 () Bool)

(assert (=> b!5149789 (=> res!2191518 e!3210526)))

(assert (=> b!5149789 (= res!2191518 (not (is-Concat!23341 (ite c!886390 (reg!14825 (regTwo!29504 expr!117)) (ite c!886389 (regTwo!29505 (regTwo!29504 expr!117)) (regTwo!29504 (regTwo!29504 expr!117)))))))))

(assert (=> b!5149789 (= e!3210524 e!3210526)))

(declare-fun b!5149790 () Bool)

(declare-fun e!3210523 () Bool)

(assert (=> b!5149790 (= e!3210523 call!360217)))

(declare-fun d!1663960 () Bool)

(declare-fun res!2191519 () Bool)

(declare-fun e!3210527 () Bool)

(assert (=> d!1663960 (=> res!2191519 e!3210527)))

(assert (=> d!1663960 (= res!2191519 (is-ElementMatch!14496 (ite c!886390 (reg!14825 (regTwo!29504 expr!117)) (ite c!886389 (regTwo!29505 (regTwo!29504 expr!117)) (regTwo!29504 (regTwo!29504 expr!117))))))))

(assert (=> d!1663960 (= (validRegex!6351 (ite c!886390 (reg!14825 (regTwo!29504 expr!117)) (ite c!886389 (regTwo!29505 (regTwo!29504 expr!117)) (regTwo!29504 (regTwo!29504 expr!117))))) e!3210527)))

(declare-fun c!886465 () Bool)

(declare-fun bm!360213 () Bool)

(assert (=> bm!360213 (= call!360217 (validRegex!6351 (ite c!886465 (reg!14825 (ite c!886390 (reg!14825 (regTwo!29504 expr!117)) (ite c!886389 (regTwo!29505 (regTwo!29504 expr!117)) (regTwo!29504 (regTwo!29504 expr!117))))) (ite c!886464 (regTwo!29505 (ite c!886390 (reg!14825 (regTwo!29504 expr!117)) (ite c!886389 (regTwo!29505 (regTwo!29504 expr!117)) (regTwo!29504 (regTwo!29504 expr!117))))) (regTwo!29504 (ite c!886390 (reg!14825 (regTwo!29504 expr!117)) (ite c!886389 (regTwo!29505 (regTwo!29504 expr!117)) (regTwo!29504 (regTwo!29504 expr!117)))))))))))

(declare-fun b!5149791 () Bool)

(declare-fun e!3210525 () Bool)

(assert (=> b!5149791 (= e!3210525 call!360218)))

(declare-fun b!5149792 () Bool)

(assert (=> b!5149792 (= e!3210521 e!3210523)))

(declare-fun res!2191520 () Bool)

(assert (=> b!5149792 (= res!2191520 (not (nullable!4852 (reg!14825 (ite c!886390 (reg!14825 (regTwo!29504 expr!117)) (ite c!886389 (regTwo!29505 (regTwo!29504 expr!117)) (regTwo!29504 (regTwo!29504 expr!117))))))))))

(assert (=> b!5149792 (=> (not res!2191520) (not e!3210523))))

(declare-fun b!5149793 () Bool)

(declare-fun res!2191517 () Bool)

(assert (=> b!5149793 (=> (not res!2191517) (not e!3210522))))

(assert (=> b!5149793 (= res!2191517 call!360216)))

(assert (=> b!5149793 (= e!3210524 e!3210522)))

(declare-fun b!5149794 () Bool)

(assert (=> b!5149794 (= e!3210527 e!3210521)))

(assert (=> b!5149794 (= c!886465 (is-Star!14496 (ite c!886390 (reg!14825 (regTwo!29504 expr!117)) (ite c!886389 (regTwo!29505 (regTwo!29504 expr!117)) (regTwo!29504 (regTwo!29504 expr!117))))))))

(declare-fun b!5149795 () Bool)

(assert (=> b!5149795 (= e!3210526 e!3210525)))

(declare-fun res!2191516 () Bool)

(assert (=> b!5149795 (=> (not res!2191516) (not e!3210525))))

(assert (=> b!5149795 (= res!2191516 call!360216)))

(assert (= (and d!1663960 (not res!2191519)) b!5149794))

(assert (= (and b!5149794 c!886465) b!5149792))

(assert (= (and b!5149794 (not c!886465)) b!5149787))

(assert (= (and b!5149792 res!2191520) b!5149790))

(assert (= (and b!5149787 c!886464) b!5149793))

(assert (= (and b!5149787 (not c!886464)) b!5149789))

(assert (= (and b!5149793 res!2191517) b!5149788))

(assert (= (and b!5149789 (not res!2191518)) b!5149795))

(assert (= (and b!5149795 res!2191516) b!5149791))

(assert (= (or b!5149788 b!5149791) bm!360211))

(assert (= (or b!5149793 b!5149795) bm!360212))

(assert (= (or b!5149790 bm!360211) bm!360213))

(declare-fun m!6207914 () Bool)

(assert (=> bm!360212 m!6207914))

(declare-fun m!6207916 () Bool)

(assert (=> bm!360213 m!6207916))

(declare-fun m!6207918 () Bool)

(assert (=> b!5149792 m!6207918))

(assert (=> bm!360132 d!1663960))

(assert (=> d!1663912 d!1663910))

(declare-fun d!1663962 () Bool)

(assert (=> d!1663962 (not (lostCause!1544 (regOne!29504 expr!117)))))

(assert (=> d!1663962 true))

(declare-fun _$98!276 () Unit!151195)

(assert (=> d!1663962 (= (choose!38084 (regOne!29504 expr!117)) _$98!276)))

(declare-fun bs!1201444 () Bool)

(assert (= bs!1201444 d!1663962))

(assert (=> bs!1201444 m!6207748))

(assert (=> d!1663912 d!1663962))

(declare-fun bm!360214 () Bool)

(declare-fun call!360221 () Bool)

(declare-fun call!360220 () Bool)

(assert (=> bm!360214 (= call!360221 call!360220)))

(declare-fun bm!360215 () Bool)

(declare-fun call!360219 () Bool)

(declare-fun c!886466 () Bool)

(assert (=> bm!360215 (= call!360219 (validRegex!6351 (ite c!886466 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))))))

(declare-fun b!5149796 () Bool)

(declare-fun e!3210528 () Bool)

(declare-fun e!3210531 () Bool)

(assert (=> b!5149796 (= e!3210528 e!3210531)))

(assert (=> b!5149796 (= c!886466 (is-Union!14496 (regOne!29504 expr!117)))))

(declare-fun b!5149797 () Bool)

(declare-fun e!3210529 () Bool)

(assert (=> b!5149797 (= e!3210529 call!360221)))

(declare-fun b!5149798 () Bool)

(declare-fun res!2191523 () Bool)

(declare-fun e!3210533 () Bool)

(assert (=> b!5149798 (=> res!2191523 e!3210533)))

(assert (=> b!5149798 (= res!2191523 (not (is-Concat!23341 (regOne!29504 expr!117))))))

(assert (=> b!5149798 (= e!3210531 e!3210533)))

(declare-fun b!5149799 () Bool)

(declare-fun e!3210530 () Bool)

(assert (=> b!5149799 (= e!3210530 call!360220)))

(declare-fun d!1663964 () Bool)

(declare-fun res!2191524 () Bool)

(declare-fun e!3210534 () Bool)

(assert (=> d!1663964 (=> res!2191524 e!3210534)))

(assert (=> d!1663964 (= res!2191524 (is-ElementMatch!14496 (regOne!29504 expr!117)))))

(assert (=> d!1663964 (= (validRegex!6351 (regOne!29504 expr!117)) e!3210534)))

(declare-fun c!886467 () Bool)

(declare-fun bm!360216 () Bool)

(assert (=> bm!360216 (= call!360220 (validRegex!6351 (ite c!886467 (reg!14825 (regOne!29504 expr!117)) (ite c!886466 (regTwo!29505 (regOne!29504 expr!117)) (regTwo!29504 (regOne!29504 expr!117))))))))

(declare-fun b!5149800 () Bool)

(declare-fun e!3210532 () Bool)

(assert (=> b!5149800 (= e!3210532 call!360221)))

(declare-fun b!5149801 () Bool)

(assert (=> b!5149801 (= e!3210528 e!3210530)))

(declare-fun res!2191525 () Bool)

(assert (=> b!5149801 (= res!2191525 (not (nullable!4852 (reg!14825 (regOne!29504 expr!117)))))))

(assert (=> b!5149801 (=> (not res!2191525) (not e!3210530))))

(declare-fun b!5149802 () Bool)

(declare-fun res!2191522 () Bool)

(assert (=> b!5149802 (=> (not res!2191522) (not e!3210529))))

(assert (=> b!5149802 (= res!2191522 call!360219)))

(assert (=> b!5149802 (= e!3210531 e!3210529)))

(declare-fun b!5149803 () Bool)

(assert (=> b!5149803 (= e!3210534 e!3210528)))

(assert (=> b!5149803 (= c!886467 (is-Star!14496 (regOne!29504 expr!117)))))

(declare-fun b!5149804 () Bool)

(assert (=> b!5149804 (= e!3210533 e!3210532)))

(declare-fun res!2191521 () Bool)

(assert (=> b!5149804 (=> (not res!2191521) (not e!3210532))))

(assert (=> b!5149804 (= res!2191521 call!360219)))

(assert (= (and d!1663964 (not res!2191524)) b!5149803))

(assert (= (and b!5149803 c!886467) b!5149801))

(assert (= (and b!5149803 (not c!886467)) b!5149796))

(assert (= (and b!5149801 res!2191525) b!5149799))

(assert (= (and b!5149796 c!886466) b!5149802))

(assert (= (and b!5149796 (not c!886466)) b!5149798))

(assert (= (and b!5149802 res!2191522) b!5149797))

(assert (= (and b!5149798 (not res!2191523)) b!5149804))

(assert (= (and b!5149804 res!2191521) b!5149800))

(assert (= (or b!5149797 b!5149800) bm!360214))

(assert (= (or b!5149802 b!5149804) bm!360215))

(assert (= (or b!5149799 bm!360214) bm!360216))

(declare-fun m!6207920 () Bool)

(assert (=> bm!360215 m!6207920))

(declare-fun m!6207922 () Bool)

(assert (=> bm!360216 m!6207922))

(declare-fun m!6207924 () Bool)

(assert (=> b!5149801 m!6207924))

(assert (=> d!1663912 d!1663964))

(assert (=> d!1663918 d!1663924))

(assert (=> d!1663918 d!1663922))

(declare-fun d!1663966 () Bool)

(assert (=> d!1663966 (lostCauseZipper!1282 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296))))

(assert (=> d!1663966 true))

(declare-fun _$39!538 () Unit!151195)

(assert (=> d!1663966 (= (choose!38085 (regOne!29504 expr!117) lt!2121196 a!1296) _$39!538)))

(declare-fun bs!1201445 () Bool)

(assert (= bs!1201445 d!1663966))

(assert (=> bs!1201445 m!6207734))

(assert (=> bs!1201445 m!6207734))

(assert (=> bs!1201445 m!6207738))

(assert (=> d!1663918 d!1663966))

(assert (=> d!1663918 d!1663964))

(declare-fun b!5149819 () Bool)

(declare-fun e!3210547 () Bool)

(declare-fun call!360226 () Bool)

(assert (=> b!5149819 (= e!3210547 call!360226)))

(declare-fun b!5149820 () Bool)

(declare-fun e!3210551 () Bool)

(assert (=> b!5149820 (= e!3210551 e!3210547)))

(declare-fun res!2191540 () Bool)

(declare-fun call!360227 () Bool)

(assert (=> b!5149820 (= res!2191540 call!360227)))

(assert (=> b!5149820 (=> res!2191540 e!3210547)))

(declare-fun b!5149821 () Bool)

(declare-fun e!3210548 () Bool)

(declare-fun e!3210550 () Bool)

(assert (=> b!5149821 (= e!3210548 e!3210550)))

(declare-fun res!2191537 () Bool)

(assert (=> b!5149821 (=> (not res!2191537) (not e!3210550))))

(assert (=> b!5149821 (= res!2191537 (and (not (is-ElementMatch!14496 (regTwo!29504 expr!117))) (not (is-Star!14496 (regTwo!29504 expr!117)))))))

(declare-fun bm!360221 () Bool)

(declare-fun c!886470 () Bool)

(assert (=> bm!360221 (= call!360227 (lostCause!1544 (ite c!886470 (regOne!29505 (regTwo!29504 expr!117)) (regOne!29504 (regTwo!29504 expr!117)))))))

(declare-fun b!5149822 () Bool)

(declare-fun e!3210552 () Bool)

(assert (=> b!5149822 (= e!3210552 call!360226)))

(declare-fun b!5149823 () Bool)

(declare-fun e!3210549 () Bool)

(assert (=> b!5149823 (= e!3210549 e!3210548)))

(declare-fun res!2191536 () Bool)

(assert (=> b!5149823 (=> res!2191536 e!3210548)))

(assert (=> b!5149823 (= res!2191536 (is-EmptyLang!14496 (regTwo!29504 expr!117)))))

(declare-fun d!1663968 () Bool)

(declare-fun lt!2121270 () Bool)

(declare-fun getLanguageWitness!959 (Regex!14496) Option!14800)

(assert (=> d!1663968 (= lt!2121270 (isEmpty!32061 (getLanguageWitness!959 (regTwo!29504 expr!117))))))

(assert (=> d!1663968 (= lt!2121270 e!3210549)))

(declare-fun res!2191539 () Bool)

(assert (=> d!1663968 (=> (not res!2191539) (not e!3210549))))

(assert (=> d!1663968 (= res!2191539 (not (is-EmptyExpr!14496 (regTwo!29504 expr!117))))))

(assert (=> d!1663968 (= (lostCauseFct!372 (regTwo!29504 expr!117)) lt!2121270)))

(declare-fun b!5149824 () Bool)

(assert (=> b!5149824 (= e!3210550 e!3210551)))

(assert (=> b!5149824 (= c!886470 (is-Union!14496 (regTwo!29504 expr!117)))))

(declare-fun bm!360222 () Bool)

(assert (=> bm!360222 (= call!360226 (lostCause!1544 (ite c!886470 (regTwo!29505 (regTwo!29504 expr!117)) (regTwo!29504 (regTwo!29504 expr!117)))))))

(declare-fun b!5149825 () Bool)

(assert (=> b!5149825 (= e!3210551 e!3210552)))

(declare-fun res!2191538 () Bool)

(assert (=> b!5149825 (= res!2191538 call!360227)))

(assert (=> b!5149825 (=> (not res!2191538) (not e!3210552))))

(assert (= (and d!1663968 res!2191539) b!5149823))

(assert (= (and b!5149823 (not res!2191536)) b!5149821))

(assert (= (and b!5149821 res!2191537) b!5149824))

(assert (= (and b!5149824 c!886470) b!5149825))

(assert (= (and b!5149824 (not c!886470)) b!5149820))

(assert (= (and b!5149825 res!2191538) b!5149822))

(assert (= (and b!5149820 (not res!2191540)) b!5149819))

(assert (= (or b!5149825 b!5149820) bm!360221))

(assert (= (or b!5149822 b!5149819) bm!360222))

(declare-fun m!6207926 () Bool)

(assert (=> bm!360221 m!6207926))

(declare-fun m!6207928 () Bool)

(assert (=> d!1663968 m!6207928))

(assert (=> d!1663968 m!6207928))

(declare-fun m!6207930 () Bool)

(assert (=> d!1663968 m!6207930))

(declare-fun m!6207932 () Bool)

(assert (=> bm!360222 m!6207932))

(assert (=> d!1663926 d!1663968))

(declare-fun bs!1201446 () Bool)

(declare-fun d!1663970 () Bool)

(assert (= bs!1201446 (and d!1663970 d!1663904)))

(declare-fun lambda!256988 () Int)

(assert (=> bs!1201446 (not (= lambda!256988 lambda!256946))))

(declare-fun bs!1201447 () Bool)

(assert (= bs!1201447 (and d!1663970 d!1663916)))

(assert (=> bs!1201447 (not (= lambda!256988 lambda!256949))))

(assert (=> d!1663970 true))

(declare-fun order!26975 () Int)

(declare-fun dynLambda!23789 (Int Int) Int)

(assert (=> d!1663970 (< (dynLambda!23789 order!26975 lambda!256949) (dynLambda!23789 order!26975 lambda!256988))))

(assert (=> d!1663970 (= (exists!1823 (exprs!4380 ctx!100) lambda!256949) (not (forall!13967 (exprs!4380 ctx!100) lambda!256988)))))

(declare-fun bs!1201448 () Bool)

(assert (= bs!1201448 d!1663970))

(declare-fun m!6207934 () Bool)

(assert (=> bs!1201448 m!6207934))

(assert (=> d!1663916 d!1663970))

(declare-fun bm!360223 () Bool)

(declare-fun call!360230 () Bool)

(declare-fun call!360229 () Bool)

(assert (=> bm!360223 (= call!360230 call!360229)))

(declare-fun bm!360224 () Bool)

(declare-fun c!886471 () Bool)

(declare-fun call!360228 () Bool)

(assert (=> bm!360224 (= call!360228 (validRegex!6351 (ite c!886471 (regOne!29505 (ite c!886387 (regOne!29505 expr!117) (regOne!29504 expr!117))) (regOne!29504 (ite c!886387 (regOne!29505 expr!117) (regOne!29504 expr!117))))))))

(declare-fun b!5149828 () Bool)

(declare-fun e!3210553 () Bool)

(declare-fun e!3210556 () Bool)

(assert (=> b!5149828 (= e!3210553 e!3210556)))

(assert (=> b!5149828 (= c!886471 (is-Union!14496 (ite c!886387 (regOne!29505 expr!117) (regOne!29504 expr!117))))))

(declare-fun b!5149829 () Bool)

(declare-fun e!3210554 () Bool)

(assert (=> b!5149829 (= e!3210554 call!360230)))

(declare-fun b!5149830 () Bool)

(declare-fun res!2191543 () Bool)

(declare-fun e!3210558 () Bool)

(assert (=> b!5149830 (=> res!2191543 e!3210558)))

(assert (=> b!5149830 (= res!2191543 (not (is-Concat!23341 (ite c!886387 (regOne!29505 expr!117) (regOne!29504 expr!117)))))))

(assert (=> b!5149830 (= e!3210556 e!3210558)))

(declare-fun b!5149831 () Bool)

(declare-fun e!3210555 () Bool)

(assert (=> b!5149831 (= e!3210555 call!360229)))

(declare-fun d!1663972 () Bool)

(declare-fun res!2191544 () Bool)

(declare-fun e!3210559 () Bool)

(assert (=> d!1663972 (=> res!2191544 e!3210559)))

(assert (=> d!1663972 (= res!2191544 (is-ElementMatch!14496 (ite c!886387 (regOne!29505 expr!117) (regOne!29504 expr!117))))))

(assert (=> d!1663972 (= (validRegex!6351 (ite c!886387 (regOne!29505 expr!117) (regOne!29504 expr!117))) e!3210559)))

(declare-fun bm!360225 () Bool)

(declare-fun c!886472 () Bool)

(assert (=> bm!360225 (= call!360229 (validRegex!6351 (ite c!886472 (reg!14825 (ite c!886387 (regOne!29505 expr!117) (regOne!29504 expr!117))) (ite c!886471 (regTwo!29505 (ite c!886387 (regOne!29505 expr!117) (regOne!29504 expr!117))) (regTwo!29504 (ite c!886387 (regOne!29505 expr!117) (regOne!29504 expr!117)))))))))

(declare-fun b!5149832 () Bool)

(declare-fun e!3210557 () Bool)

(assert (=> b!5149832 (= e!3210557 call!360230)))

(declare-fun b!5149833 () Bool)

(assert (=> b!5149833 (= e!3210553 e!3210555)))

(declare-fun res!2191545 () Bool)

(assert (=> b!5149833 (= res!2191545 (not (nullable!4852 (reg!14825 (ite c!886387 (regOne!29505 expr!117) (regOne!29504 expr!117))))))))

(assert (=> b!5149833 (=> (not res!2191545) (not e!3210555))))

(declare-fun b!5149834 () Bool)

(declare-fun res!2191542 () Bool)

(assert (=> b!5149834 (=> (not res!2191542) (not e!3210554))))

(assert (=> b!5149834 (= res!2191542 call!360228)))

(assert (=> b!5149834 (= e!3210556 e!3210554)))

(declare-fun b!5149835 () Bool)

(assert (=> b!5149835 (= e!3210559 e!3210553)))

(assert (=> b!5149835 (= c!886472 (is-Star!14496 (ite c!886387 (regOne!29505 expr!117) (regOne!29504 expr!117))))))

(declare-fun b!5149836 () Bool)

(assert (=> b!5149836 (= e!3210558 e!3210557)))

(declare-fun res!2191541 () Bool)

(assert (=> b!5149836 (=> (not res!2191541) (not e!3210557))))

(assert (=> b!5149836 (= res!2191541 call!360228)))

(assert (= (and d!1663972 (not res!2191544)) b!5149835))

(assert (= (and b!5149835 c!886472) b!5149833))

(assert (= (and b!5149835 (not c!886472)) b!5149828))

(assert (= (and b!5149833 res!2191545) b!5149831))

(assert (= (and b!5149828 c!886471) b!5149834))

(assert (= (and b!5149828 (not c!886471)) b!5149830))

(assert (= (and b!5149834 res!2191542) b!5149829))

(assert (= (and b!5149830 (not res!2191543)) b!5149836))

(assert (= (and b!5149836 res!2191541) b!5149832))

(assert (= (or b!5149829 b!5149832) bm!360223))

(assert (= (or b!5149834 b!5149836) bm!360224))

(assert (= (or b!5149831 bm!360223) bm!360225))

(declare-fun m!6207936 () Bool)

(assert (=> bm!360224 m!6207936))

(declare-fun m!6207938 () Bool)

(assert (=> bm!360225 m!6207938))

(declare-fun m!6207940 () Bool)

(assert (=> b!5149833 m!6207940))

(assert (=> bm!360128 d!1663972))

(declare-fun bm!360226 () Bool)

(declare-fun call!360233 () Bool)

(declare-fun call!360232 () Bool)

(assert (=> bm!360226 (= call!360233 call!360232)))

(declare-fun bm!360227 () Bool)

(declare-fun c!886473 () Bool)

(declare-fun call!360231 () Bool)

(assert (=> bm!360227 (= call!360231 (validRegex!6351 (ite c!886473 (regOne!29505 (ite c!886389 (regOne!29505 (regTwo!29504 expr!117)) (regOne!29504 (regTwo!29504 expr!117)))) (regOne!29504 (ite c!886389 (regOne!29505 (regTwo!29504 expr!117)) (regOne!29504 (regTwo!29504 expr!117)))))))))

(declare-fun b!5149837 () Bool)

(declare-fun e!3210560 () Bool)

(declare-fun e!3210563 () Bool)

(assert (=> b!5149837 (= e!3210560 e!3210563)))

(assert (=> b!5149837 (= c!886473 (is-Union!14496 (ite c!886389 (regOne!29505 (regTwo!29504 expr!117)) (regOne!29504 (regTwo!29504 expr!117)))))))

(declare-fun b!5149838 () Bool)

(declare-fun e!3210561 () Bool)

(assert (=> b!5149838 (= e!3210561 call!360233)))

(declare-fun b!5149839 () Bool)

(declare-fun res!2191548 () Bool)

(declare-fun e!3210565 () Bool)

(assert (=> b!5149839 (=> res!2191548 e!3210565)))

(assert (=> b!5149839 (= res!2191548 (not (is-Concat!23341 (ite c!886389 (regOne!29505 (regTwo!29504 expr!117)) (regOne!29504 (regTwo!29504 expr!117))))))))

(assert (=> b!5149839 (= e!3210563 e!3210565)))

(declare-fun b!5149840 () Bool)

(declare-fun e!3210562 () Bool)

(assert (=> b!5149840 (= e!3210562 call!360232)))

(declare-fun d!1663974 () Bool)

(declare-fun res!2191549 () Bool)

(declare-fun e!3210566 () Bool)

(assert (=> d!1663974 (=> res!2191549 e!3210566)))

(assert (=> d!1663974 (= res!2191549 (is-ElementMatch!14496 (ite c!886389 (regOne!29505 (regTwo!29504 expr!117)) (regOne!29504 (regTwo!29504 expr!117)))))))

(assert (=> d!1663974 (= (validRegex!6351 (ite c!886389 (regOne!29505 (regTwo!29504 expr!117)) (regOne!29504 (regTwo!29504 expr!117)))) e!3210566)))

(declare-fun c!886474 () Bool)

(declare-fun bm!360228 () Bool)

(assert (=> bm!360228 (= call!360232 (validRegex!6351 (ite c!886474 (reg!14825 (ite c!886389 (regOne!29505 (regTwo!29504 expr!117)) (regOne!29504 (regTwo!29504 expr!117)))) (ite c!886473 (regTwo!29505 (ite c!886389 (regOne!29505 (regTwo!29504 expr!117)) (regOne!29504 (regTwo!29504 expr!117)))) (regTwo!29504 (ite c!886389 (regOne!29505 (regTwo!29504 expr!117)) (regOne!29504 (regTwo!29504 expr!117))))))))))

(declare-fun b!5149841 () Bool)

(declare-fun e!3210564 () Bool)

(assert (=> b!5149841 (= e!3210564 call!360233)))

(declare-fun b!5149842 () Bool)

(assert (=> b!5149842 (= e!3210560 e!3210562)))

(declare-fun res!2191550 () Bool)

(assert (=> b!5149842 (= res!2191550 (not (nullable!4852 (reg!14825 (ite c!886389 (regOne!29505 (regTwo!29504 expr!117)) (regOne!29504 (regTwo!29504 expr!117)))))))))

(assert (=> b!5149842 (=> (not res!2191550) (not e!3210562))))

(declare-fun b!5149843 () Bool)

(declare-fun res!2191547 () Bool)

(assert (=> b!5149843 (=> (not res!2191547) (not e!3210561))))

(assert (=> b!5149843 (= res!2191547 call!360231)))

(assert (=> b!5149843 (= e!3210563 e!3210561)))

(declare-fun b!5149844 () Bool)

(assert (=> b!5149844 (= e!3210566 e!3210560)))

(assert (=> b!5149844 (= c!886474 (is-Star!14496 (ite c!886389 (regOne!29505 (regTwo!29504 expr!117)) (regOne!29504 (regTwo!29504 expr!117)))))))

(declare-fun b!5149845 () Bool)

(assert (=> b!5149845 (= e!3210565 e!3210564)))

(declare-fun res!2191546 () Bool)

(assert (=> b!5149845 (=> (not res!2191546) (not e!3210564))))

(assert (=> b!5149845 (= res!2191546 call!360231)))

(assert (= (and d!1663974 (not res!2191549)) b!5149844))

(assert (= (and b!5149844 c!886474) b!5149842))

(assert (= (and b!5149844 (not c!886474)) b!5149837))

(assert (= (and b!5149842 res!2191550) b!5149840))

(assert (= (and b!5149837 c!886473) b!5149843))

(assert (= (and b!5149837 (not c!886473)) b!5149839))

(assert (= (and b!5149843 res!2191547) b!5149838))

(assert (= (and b!5149839 (not res!2191548)) b!5149845))

(assert (= (and b!5149845 res!2191546) b!5149841))

(assert (= (or b!5149838 b!5149841) bm!360226))

(assert (= (or b!5149843 b!5149845) bm!360227))

(assert (= (or b!5149840 bm!360226) bm!360228))

(declare-fun m!6207942 () Bool)

(assert (=> bm!360227 m!6207942))

(declare-fun m!6207944 () Bool)

(assert (=> bm!360228 m!6207944))

(declare-fun m!6207946 () Bool)

(assert (=> b!5149842 m!6207946))

(assert (=> bm!360131 d!1663974))

(declare-fun d!1663976 () Bool)

(declare-fun e!3210569 () Bool)

(assert (=> d!1663976 e!3210569))

(declare-fun res!2191553 () Bool)

(assert (=> d!1663976 (=> (not res!2191553) (not e!3210569))))

(declare-fun lt!2121273 () List!59906)

(declare-fun noDuplicate!1113 (List!59906) Bool)

(assert (=> d!1663976 (= res!2191553 (noDuplicate!1113 lt!2121273))))

(declare-fun choose!38088 ((Set Context!7760)) List!59906)

(assert (=> d!1663976 (= lt!2121273 (choose!38088 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296)))))

(assert (=> d!1663976 (= (toList!8396 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296)) lt!2121273)))

(declare-fun b!5149848 () Bool)

(declare-fun content!10590 (List!59906) (Set Context!7760))

(assert (=> b!5149848 (= e!3210569 (= (content!10590 lt!2121273) (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296)))))

(assert (= (and d!1663976 res!2191553) b!5149848))

(declare-fun m!6207948 () Bool)

(assert (=> d!1663976 m!6207948))

(assert (=> d!1663976 m!6207734))

(declare-fun m!6207950 () Bool)

(assert (=> d!1663976 m!6207950))

(declare-fun m!6207952 () Bool)

(assert (=> b!5149848 m!6207952))

(assert (=> bm!360156 d!1663976))

(declare-fun bs!1201449 () Bool)

(declare-fun d!1663978 () Bool)

(assert (= bs!1201449 (and d!1663978 d!1663924)))

(declare-fun lambda!256991 () Int)

(assert (=> bs!1201449 (not (= lambda!256991 lambda!256962))))

(declare-fun bs!1201450 () Bool)

(assert (= bs!1201450 (and d!1663978 b!5149597)))

(assert (=> bs!1201450 (not (= lambda!256991 lambda!256963))))

(declare-fun bs!1201451 () Bool)

(assert (= bs!1201451 (and d!1663978 b!5149598)))

(assert (=> bs!1201451 (not (= lambda!256991 lambda!256964))))

(assert (=> d!1663978 true))

(declare-fun order!26977 () Int)

(declare-fun dynLambda!23790 (Int Int) Int)

(assert (=> d!1663978 (< (dynLambda!23790 order!26977 lambda!256962) (dynLambda!23790 order!26977 lambda!256991))))

(assert (=> d!1663978 (not (exists!1824 lt!2121234 lambda!256991))))

(declare-fun lt!2121276 () Unit!151195)

(declare-fun choose!38089 (List!59906 Int) Unit!151195)

(assert (=> d!1663978 (= lt!2121276 (choose!38089 lt!2121234 lambda!256962))))

(declare-fun forall!13971 (List!59906 Int) Bool)

(assert (=> d!1663978 (forall!13971 lt!2121234 lambda!256962)))

(assert (=> d!1663978 (= (lemmaForallThenNotExists!410 lt!2121234 lambda!256962) lt!2121276)))

(declare-fun bs!1201452 () Bool)

(assert (= bs!1201452 d!1663978))

(declare-fun m!6207954 () Bool)

(assert (=> bs!1201452 m!6207954))

(declare-fun m!6207956 () Bool)

(assert (=> bs!1201452 m!6207956))

(declare-fun m!6207958 () Bool)

(assert (=> bs!1201452 m!6207958))

(assert (=> b!5149598 d!1663978))

(declare-fun d!1663980 () Bool)

(assert (=> d!1663980 (= ($colon$colon!1218 (exprs!4380 lt!2121196) (ite (or c!886404 c!886403) (regTwo!29504 (regOne!29504 expr!117)) (regOne!29504 expr!117))) (Cons!59780 (ite (or c!886404 c!886403) (regTwo!29504 (regOne!29504 expr!117)) (regOne!29504 expr!117)) (exprs!4380 lt!2121196)))))

(assert (=> bm!360148 d!1663980))

(declare-fun d!1663982 () Bool)

(declare-fun res!2191558 () Bool)

(declare-fun e!3210576 () Bool)

(assert (=> d!1663982 (=> res!2191558 e!3210576)))

(assert (=> d!1663982 (= res!2191558 (is-Nil!59780 (exprs!4380 ctx!100)))))

(assert (=> d!1663982 (= (forall!13967 (exprs!4380 ctx!100) lambda!256946) e!3210576)))

(declare-fun b!5149855 () Bool)

(declare-fun e!3210577 () Bool)

(assert (=> b!5149855 (= e!3210576 e!3210577)))

(declare-fun res!2191559 () Bool)

(assert (=> b!5149855 (=> (not res!2191559) (not e!3210577))))

(declare-fun dynLambda!23791 (Int Regex!14496) Bool)

(assert (=> b!5149855 (= res!2191559 (dynLambda!23791 lambda!256946 (h!66228 (exprs!4380 ctx!100))))))

(declare-fun b!5149856 () Bool)

(assert (=> b!5149856 (= e!3210577 (forall!13967 (t!372947 (exprs!4380 ctx!100)) lambda!256946))))

(assert (= (and d!1663982 (not res!2191558)) b!5149855))

(assert (= (and b!5149855 res!2191559) b!5149856))

(declare-fun b_lambda!200377 () Bool)

(assert (=> (not b_lambda!200377) (not b!5149855)))

(declare-fun m!6207960 () Bool)

(assert (=> b!5149855 m!6207960))

(declare-fun m!6207962 () Bool)

(assert (=> b!5149856 m!6207962))

(assert (=> d!1663904 d!1663982))

(declare-fun bs!1201453 () Bool)

(declare-fun d!1663984 () Bool)

(assert (= bs!1201453 (and d!1663984 d!1663924)))

(declare-fun lambda!256994 () Int)

(assert (=> bs!1201453 (not (= lambda!256994 lambda!256962))))

(declare-fun bs!1201454 () Bool)

(assert (= bs!1201454 (and d!1663984 b!5149597)))

(assert (=> bs!1201454 (not (= lambda!256994 lambda!256963))))

(declare-fun bs!1201455 () Bool)

(assert (= bs!1201455 (and d!1663984 b!5149598)))

(assert (=> bs!1201455 (not (= lambda!256994 lambda!256964))))

(declare-fun bs!1201456 () Bool)

(assert (= bs!1201456 (and d!1663984 d!1663978)))

(assert (=> bs!1201456 (= (= (ite c!886416 lambda!256963 lambda!256964) lambda!256962) (= lambda!256994 lambda!256991))))

(assert (=> d!1663984 true))

(assert (=> d!1663984 (< (dynLambda!23790 order!26977 (ite c!886416 lambda!256963 lambda!256964)) (dynLambda!23790 order!26977 lambda!256994))))

(assert (=> d!1663984 (= (exists!1824 (ite c!886416 lt!2121236 lt!2121234) (ite c!886416 lambda!256963 lambda!256964)) (not (forall!13971 (ite c!886416 lt!2121236 lt!2121234) lambda!256994)))))

(declare-fun bs!1201457 () Bool)

(assert (= bs!1201457 d!1663984))

(declare-fun m!6207964 () Bool)

(assert (=> bs!1201457 m!6207964))

(assert (=> bm!360155 d!1663984))

(declare-fun bs!1201458 () Bool)

(declare-fun d!1663986 () Bool)

(assert (= bs!1201458 (and d!1663986 b!5149598)))

(declare-fun lambda!256997 () Int)

(assert (=> bs!1201458 (not (= lambda!256997 lambda!256964))))

(declare-fun bs!1201459 () Bool)

(assert (= bs!1201459 (and d!1663986 d!1663924)))

(assert (=> bs!1201459 (not (= lambda!256997 lambda!256962))))

(declare-fun bs!1201460 () Bool)

(assert (= bs!1201460 (and d!1663986 d!1663978)))

(assert (=> bs!1201460 (= lambda!256997 lambda!256991)))

(declare-fun bs!1201461 () Bool)

(assert (= bs!1201461 (and d!1663986 b!5149597)))

(assert (=> bs!1201461 (not (= lambda!256997 lambda!256963))))

(declare-fun bs!1201462 () Bool)

(assert (= bs!1201462 (and d!1663986 d!1663984)))

(assert (=> bs!1201462 (= (= lambda!256962 (ite c!886416 lambda!256963 lambda!256964)) (= lambda!256997 lambda!256994))))

(assert (=> d!1663986 true))

(assert (=> d!1663986 (< (dynLambda!23790 order!26977 lambda!256962) (dynLambda!23790 order!26977 lambda!256997))))

(assert (=> d!1663986 (exists!1824 lt!2121236 lambda!256997)))

(declare-fun lt!2121279 () Unit!151195)

(declare-fun choose!38090 (List!59906 Int) Unit!151195)

(assert (=> d!1663986 (= lt!2121279 (choose!38090 lt!2121236 lambda!256962))))

(assert (=> d!1663986 (not (forall!13971 lt!2121236 lambda!256962))))

(assert (=> d!1663986 (= (lemmaNotForallThenExists!443 lt!2121236 lambda!256962) lt!2121279)))

(declare-fun bs!1201463 () Bool)

(assert (= bs!1201463 d!1663986))

(declare-fun m!6207966 () Bool)

(assert (=> bs!1201463 m!6207966))

(declare-fun m!6207968 () Bool)

(assert (=> bs!1201463 m!6207968))

(declare-fun m!6207970 () Bool)

(assert (=> bs!1201463 m!6207970))

(assert (=> b!5149597 d!1663986))

(declare-fun d!1663988 () Bool)

(assert (=> d!1663988 (= (nullable!4852 (reg!14825 expr!117)) (nullableFct!1331 (reg!14825 expr!117)))))

(declare-fun bs!1201464 () Bool)

(assert (= bs!1201464 d!1663988))

(declare-fun m!6207972 () Bool)

(assert (=> bs!1201464 m!6207972))

(assert (=> b!5149547 d!1663988))

(declare-fun d!1663990 () Bool)

(assert (=> d!1663990 (= (isEmpty!32061 (getLanguageWitness!957 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296))) (not (is-Some!14799 (getLanguageWitness!957 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296)))))))

(assert (=> d!1663924 d!1663990))

(declare-fun bs!1201465 () Bool)

(declare-fun d!1663992 () Bool)

(assert (= bs!1201465 (and d!1663992 d!1663986)))

(declare-fun lambda!257004 () Int)

(assert (=> bs!1201465 (not (= lambda!257004 lambda!256997))))

(declare-fun bs!1201466 () Bool)

(assert (= bs!1201466 (and d!1663992 b!5149598)))

(assert (=> bs!1201466 (= lambda!257004 lambda!256964)))

(declare-fun bs!1201467 () Bool)

(assert (= bs!1201467 (and d!1663992 d!1663924)))

(assert (=> bs!1201467 (not (= lambda!257004 lambda!256962))))

(declare-fun bs!1201468 () Bool)

(assert (= bs!1201468 (and d!1663992 d!1663978)))

(assert (=> bs!1201468 (not (= lambda!257004 lambda!256991))))

(declare-fun bs!1201469 () Bool)

(assert (= bs!1201469 (and d!1663992 b!5149597)))

(assert (=> bs!1201469 (= lambda!257004 lambda!256963)))

(declare-fun bs!1201470 () Bool)

(assert (= bs!1201470 (and d!1663992 d!1663984)))

(assert (=> bs!1201470 (not (= lambda!257004 lambda!256994))))

(declare-fun lt!2121282 () Option!14800)

(declare-fun isDefined!11537 (Option!14800) Bool)

(declare-fun exists!1827 ((Set Context!7760) Int) Bool)

(assert (=> d!1663992 (= (isDefined!11537 lt!2121282) (exists!1827 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296) lambda!257004))))

(declare-fun e!3210582 () Option!14800)

(assert (=> d!1663992 (= lt!2121282 e!3210582)))

(declare-fun c!886483 () Bool)

(assert (=> d!1663992 (= c!886483 (exists!1827 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296) lambda!257004))))

(assert (=> d!1663992 (= (getLanguageWitness!957 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296)) lt!2121282)))

(declare-fun b!5149861 () Bool)

(declare-fun getLanguageWitness!960 (Context!7760) Option!14800)

(declare-fun getWitness!844 ((Set Context!7760) Int) Context!7760)

(assert (=> b!5149861 (= e!3210582 (getLanguageWitness!960 (getWitness!844 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296) lambda!257004)))))

(declare-fun b!5149862 () Bool)

(assert (=> b!5149862 (= e!3210582 None!14799)))

(assert (= (and d!1663992 c!886483) b!5149861))

(assert (= (and d!1663992 (not c!886483)) b!5149862))

(declare-fun m!6207974 () Bool)

(assert (=> d!1663992 m!6207974))

(assert (=> d!1663992 m!6207734))

(declare-fun m!6207976 () Bool)

(assert (=> d!1663992 m!6207976))

(assert (=> d!1663992 m!6207734))

(assert (=> d!1663992 m!6207976))

(assert (=> b!5149861 m!6207734))

(declare-fun m!6207978 () Bool)

(assert (=> b!5149861 m!6207978))

(assert (=> b!5149861 m!6207978))

(declare-fun m!6207980 () Bool)

(assert (=> b!5149861 m!6207980))

(assert (=> d!1663924 d!1663992))

(declare-fun d!1663994 () Bool)

(declare-fun lt!2121285 () Bool)

(assert (=> d!1663994 (= lt!2121285 (forall!13971 (toList!8396 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296)) lambda!256962))))

(declare-fun choose!38091 ((Set Context!7760) Int) Bool)

(assert (=> d!1663994 (= lt!2121285 (choose!38091 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296) lambda!256962))))

(assert (=> d!1663994 (= (forall!13968 (derivationStepZipperDown!163 (regOne!29504 expr!117) lt!2121196 a!1296) lambda!256962) lt!2121285)))

(declare-fun bs!1201471 () Bool)

(assert (= bs!1201471 d!1663994))

(assert (=> bs!1201471 m!6207734))

(assert (=> bs!1201471 m!6207824))

(assert (=> bs!1201471 m!6207824))

(declare-fun m!6207982 () Bool)

(assert (=> bs!1201471 m!6207982))

(assert (=> bs!1201471 m!6207734))

(declare-fun m!6207984 () Bool)

(assert (=> bs!1201471 m!6207984))

(assert (=> d!1663924 d!1663994))

(declare-fun bm!360229 () Bool)

(declare-fun call!360236 () Bool)

(declare-fun call!360235 () Bool)

(assert (=> bm!360229 (= call!360236 call!360235)))

(declare-fun call!360234 () Bool)

(declare-fun bm!360230 () Bool)

(declare-fun c!886484 () Bool)

(assert (=> bm!360230 (= call!360234 (validRegex!6351 (ite c!886484 (regOne!29505 (ite c!886388 (reg!14825 expr!117) (ite c!886387 (regTwo!29505 expr!117) (regTwo!29504 expr!117)))) (regOne!29504 (ite c!886388 (reg!14825 expr!117) (ite c!886387 (regTwo!29505 expr!117) (regTwo!29504 expr!117)))))))))

(declare-fun b!5149863 () Bool)

(declare-fun e!3210583 () Bool)

(declare-fun e!3210586 () Bool)

(assert (=> b!5149863 (= e!3210583 e!3210586)))

(assert (=> b!5149863 (= c!886484 (is-Union!14496 (ite c!886388 (reg!14825 expr!117) (ite c!886387 (regTwo!29505 expr!117) (regTwo!29504 expr!117)))))))

(declare-fun b!5149864 () Bool)

(declare-fun e!3210584 () Bool)

(assert (=> b!5149864 (= e!3210584 call!360236)))

(declare-fun b!5149865 () Bool)

(declare-fun res!2191562 () Bool)

(declare-fun e!3210588 () Bool)

(assert (=> b!5149865 (=> res!2191562 e!3210588)))

(assert (=> b!5149865 (= res!2191562 (not (is-Concat!23341 (ite c!886388 (reg!14825 expr!117) (ite c!886387 (regTwo!29505 expr!117) (regTwo!29504 expr!117))))))))

(assert (=> b!5149865 (= e!3210586 e!3210588)))

(declare-fun b!5149866 () Bool)

(declare-fun e!3210585 () Bool)

(assert (=> b!5149866 (= e!3210585 call!360235)))

(declare-fun d!1663996 () Bool)

(declare-fun res!2191563 () Bool)

(declare-fun e!3210589 () Bool)

(assert (=> d!1663996 (=> res!2191563 e!3210589)))

(assert (=> d!1663996 (= res!2191563 (is-ElementMatch!14496 (ite c!886388 (reg!14825 expr!117) (ite c!886387 (regTwo!29505 expr!117) (regTwo!29504 expr!117)))))))

(assert (=> d!1663996 (= (validRegex!6351 (ite c!886388 (reg!14825 expr!117) (ite c!886387 (regTwo!29505 expr!117) (regTwo!29504 expr!117)))) e!3210589)))

(declare-fun bm!360231 () Bool)

(declare-fun c!886485 () Bool)

(assert (=> bm!360231 (= call!360235 (validRegex!6351 (ite c!886485 (reg!14825 (ite c!886388 (reg!14825 expr!117) (ite c!886387 (regTwo!29505 expr!117) (regTwo!29504 expr!117)))) (ite c!886484 (regTwo!29505 (ite c!886388 (reg!14825 expr!117) (ite c!886387 (regTwo!29505 expr!117) (regTwo!29504 expr!117)))) (regTwo!29504 (ite c!886388 (reg!14825 expr!117) (ite c!886387 (regTwo!29505 expr!117) (regTwo!29504 expr!117))))))))))

(declare-fun b!5149867 () Bool)

(declare-fun e!3210587 () Bool)

(assert (=> b!5149867 (= e!3210587 call!360236)))

(declare-fun b!5149868 () Bool)

(assert (=> b!5149868 (= e!3210583 e!3210585)))

(declare-fun res!2191564 () Bool)

(assert (=> b!5149868 (= res!2191564 (not (nullable!4852 (reg!14825 (ite c!886388 (reg!14825 expr!117) (ite c!886387 (regTwo!29505 expr!117) (regTwo!29504 expr!117)))))))))

(assert (=> b!5149868 (=> (not res!2191564) (not e!3210585))))

(declare-fun b!5149869 () Bool)

(declare-fun res!2191561 () Bool)

(assert (=> b!5149869 (=> (not res!2191561) (not e!3210584))))

(assert (=> b!5149869 (= res!2191561 call!360234)))

(assert (=> b!5149869 (= e!3210586 e!3210584)))

(declare-fun b!5149870 () Bool)

(assert (=> b!5149870 (= e!3210589 e!3210583)))

(assert (=> b!5149870 (= c!886485 (is-Star!14496 (ite c!886388 (reg!14825 expr!117) (ite c!886387 (regTwo!29505 expr!117) (regTwo!29504 expr!117)))))))

(declare-fun b!5149871 () Bool)

(assert (=> b!5149871 (= e!3210588 e!3210587)))

(declare-fun res!2191560 () Bool)

(assert (=> b!5149871 (=> (not res!2191560) (not e!3210587))))

(assert (=> b!5149871 (= res!2191560 call!360234)))

(assert (= (and d!1663996 (not res!2191563)) b!5149870))

(assert (= (and b!5149870 c!886485) b!5149868))

(assert (= (and b!5149870 (not c!886485)) b!5149863))

(assert (= (and b!5149868 res!2191564) b!5149866))

(assert (= (and b!5149863 c!886484) b!5149869))

(assert (= (and b!5149863 (not c!886484)) b!5149865))

(assert (= (and b!5149869 res!2191561) b!5149864))

(assert (= (and b!5149865 (not res!2191562)) b!5149871))

(assert (= (and b!5149871 res!2191560) b!5149867))

(assert (= (or b!5149864 b!5149867) bm!360229))

(assert (= (or b!5149869 b!5149871) bm!360230))

(assert (= (or b!5149866 bm!360229) bm!360231))

(declare-fun m!6207986 () Bool)

(assert (=> bm!360230 m!6207986))

(declare-fun m!6207988 () Bool)

(assert (=> bm!360231 m!6207988))

(declare-fun m!6207990 () Bool)

(assert (=> b!5149868 m!6207990))

(assert (=> bm!360129 d!1663996))

(declare-fun d!1663998 () Bool)

(assert (=> d!1663998 (= (nullable!4852 (reg!14825 (regTwo!29504 expr!117))) (nullableFct!1331 (reg!14825 (regTwo!29504 expr!117))))))

(declare-fun bs!1201472 () Bool)

(assert (= bs!1201472 d!1663998))

(declare-fun m!6207992 () Bool)

(assert (=> bs!1201472 m!6207992))

(assert (=> b!5149556 d!1663998))

(declare-fun b!5149872 () Bool)

(declare-fun e!3210590 () Bool)

(declare-fun call!360237 () Bool)

(assert (=> b!5149872 (= e!3210590 call!360237)))

(declare-fun b!5149873 () Bool)

(declare-fun e!3210594 () Bool)

(assert (=> b!5149873 (= e!3210594 e!3210590)))

(declare-fun res!2191569 () Bool)

(declare-fun call!360238 () Bool)

(assert (=> b!5149873 (= res!2191569 call!360238)))

(assert (=> b!5149873 (=> res!2191569 e!3210590)))

(declare-fun b!5149874 () Bool)

(declare-fun e!3210591 () Bool)

(declare-fun e!3210593 () Bool)

(assert (=> b!5149874 (= e!3210591 e!3210593)))

(declare-fun res!2191566 () Bool)

(assert (=> b!5149874 (=> (not res!2191566) (not e!3210593))))

(assert (=> b!5149874 (= res!2191566 (and (not (is-ElementMatch!14496 expr!117)) (not (is-Star!14496 expr!117))))))

(declare-fun bm!360232 () Bool)

(declare-fun c!886486 () Bool)

(assert (=> bm!360232 (= call!360238 (lostCause!1544 (ite c!886486 (regOne!29505 expr!117) (regOne!29504 expr!117))))))

(declare-fun b!5149875 () Bool)

(declare-fun e!3210595 () Bool)

(assert (=> b!5149875 (= e!3210595 call!360237)))

(declare-fun b!5149876 () Bool)

(declare-fun e!3210592 () Bool)

(assert (=> b!5149876 (= e!3210592 e!3210591)))

(declare-fun res!2191565 () Bool)

(assert (=> b!5149876 (=> res!2191565 e!3210591)))

(assert (=> b!5149876 (= res!2191565 (is-EmptyLang!14496 expr!117))))

(declare-fun d!1664000 () Bool)

(declare-fun lt!2121286 () Bool)

(assert (=> d!1664000 (= lt!2121286 (isEmpty!32061 (getLanguageWitness!959 expr!117)))))

(assert (=> d!1664000 (= lt!2121286 e!3210592)))

(declare-fun res!2191568 () Bool)

(assert (=> d!1664000 (=> (not res!2191568) (not e!3210592))))

(assert (=> d!1664000 (= res!2191568 (not (is-EmptyExpr!14496 expr!117)))))

(assert (=> d!1664000 (= (lostCauseFct!372 expr!117) lt!2121286)))

(declare-fun b!5149877 () Bool)

(assert (=> b!5149877 (= e!3210593 e!3210594)))

(assert (=> b!5149877 (= c!886486 (is-Union!14496 expr!117))))

(declare-fun bm!360233 () Bool)

(assert (=> bm!360233 (= call!360237 (lostCause!1544 (ite c!886486 (regTwo!29505 expr!117) (regTwo!29504 expr!117))))))

(declare-fun b!5149878 () Bool)

(assert (=> b!5149878 (= e!3210594 e!3210595)))

(declare-fun res!2191567 () Bool)

(assert (=> b!5149878 (= res!2191567 call!360238)))

(assert (=> b!5149878 (=> (not res!2191567) (not e!3210595))))

(assert (= (and d!1664000 res!2191568) b!5149876))

(assert (= (and b!5149876 (not res!2191565)) b!5149874))

(assert (= (and b!5149874 res!2191566) b!5149877))

(assert (= (and b!5149877 c!886486) b!5149878))

(assert (= (and b!5149877 (not c!886486)) b!5149873))

(assert (= (and b!5149878 res!2191567) b!5149875))

(assert (= (and b!5149873 (not res!2191569)) b!5149872))

(assert (= (or b!5149878 b!5149873) bm!360232))

(assert (= (or b!5149875 b!5149872) bm!360233))

(declare-fun m!6207994 () Bool)

(assert (=> bm!360232 m!6207994))

(declare-fun m!6207996 () Bool)

(assert (=> d!1664000 m!6207996))

(assert (=> d!1664000 m!6207996))

(declare-fun m!6207998 () Bool)

(assert (=> d!1664000 m!6207998))

(declare-fun m!6208000 () Bool)

(assert (=> bm!360233 m!6208000))

(assert (=> d!1663914 d!1664000))

(declare-fun b!5149879 () Bool)

(declare-fun e!3210596 () Bool)

(declare-fun call!360239 () Bool)

(assert (=> b!5149879 (= e!3210596 call!360239)))

(declare-fun b!5149880 () Bool)

(declare-fun e!3210600 () Bool)

(assert (=> b!5149880 (= e!3210600 e!3210596)))

(declare-fun res!2191574 () Bool)

(declare-fun call!360240 () Bool)

(assert (=> b!5149880 (= res!2191574 call!360240)))

(assert (=> b!5149880 (=> res!2191574 e!3210596)))

(declare-fun b!5149881 () Bool)

(declare-fun e!3210597 () Bool)

(declare-fun e!3210599 () Bool)

(assert (=> b!5149881 (= e!3210597 e!3210599)))

(declare-fun res!2191571 () Bool)

(assert (=> b!5149881 (=> (not res!2191571) (not e!3210599))))

(assert (=> b!5149881 (= res!2191571 (and (not (is-ElementMatch!14496 (regOne!29504 expr!117))) (not (is-Star!14496 (regOne!29504 expr!117)))))))

(declare-fun bm!360234 () Bool)

(declare-fun c!886487 () Bool)

(assert (=> bm!360234 (= call!360240 (lostCause!1544 (ite c!886487 (regOne!29505 (regOne!29504 expr!117)) (regOne!29504 (regOne!29504 expr!117)))))))

(declare-fun b!5149882 () Bool)

(declare-fun e!3210601 () Bool)

(assert (=> b!5149882 (= e!3210601 call!360239)))

(declare-fun b!5149883 () Bool)

(declare-fun e!3210598 () Bool)

(assert (=> b!5149883 (= e!3210598 e!3210597)))

(declare-fun res!2191570 () Bool)

(assert (=> b!5149883 (=> res!2191570 e!3210597)))

(assert (=> b!5149883 (= res!2191570 (is-EmptyLang!14496 (regOne!29504 expr!117)))))

(declare-fun d!1664002 () Bool)

(declare-fun lt!2121287 () Bool)

(assert (=> d!1664002 (= lt!2121287 (isEmpty!32061 (getLanguageWitness!959 (regOne!29504 expr!117))))))

(assert (=> d!1664002 (= lt!2121287 e!3210598)))

(declare-fun res!2191573 () Bool)

(assert (=> d!1664002 (=> (not res!2191573) (not e!3210598))))

(assert (=> d!1664002 (= res!2191573 (not (is-EmptyExpr!14496 (regOne!29504 expr!117))))))

(assert (=> d!1664002 (= (lostCauseFct!372 (regOne!29504 expr!117)) lt!2121287)))

(declare-fun b!5149884 () Bool)

(assert (=> b!5149884 (= e!3210599 e!3210600)))

(assert (=> b!5149884 (= c!886487 (is-Union!14496 (regOne!29504 expr!117)))))

(declare-fun bm!360235 () Bool)

(assert (=> bm!360235 (= call!360239 (lostCause!1544 (ite c!886487 (regTwo!29505 (regOne!29504 expr!117)) (regTwo!29504 (regOne!29504 expr!117)))))))

(declare-fun b!5149885 () Bool)

(assert (=> b!5149885 (= e!3210600 e!3210601)))

(declare-fun res!2191572 () Bool)

(assert (=> b!5149885 (= res!2191572 call!360240)))

(assert (=> b!5149885 (=> (not res!2191572) (not e!3210601))))

(assert (= (and d!1664002 res!2191573) b!5149883))

(assert (= (and b!5149883 (not res!2191570)) b!5149881))

(assert (= (and b!5149881 res!2191571) b!5149884))

(assert (= (and b!5149884 c!886487) b!5149885))

(assert (= (and b!5149884 (not c!886487)) b!5149880))

(assert (= (and b!5149885 res!2191572) b!5149882))

(assert (= (and b!5149880 (not res!2191574)) b!5149879))

(assert (= (or b!5149885 b!5149880) bm!360234))

(assert (= (or b!5149882 b!5149879) bm!360235))

(declare-fun m!6208002 () Bool)

(assert (=> bm!360234 m!6208002))

(declare-fun m!6208004 () Bool)

(assert (=> d!1664002 m!6208004))

(assert (=> d!1664002 m!6208004))

(declare-fun m!6208006 () Bool)

(assert (=> d!1664002 m!6208006))

(declare-fun m!6208008 () Bool)

(assert (=> bm!360235 m!6208008))

(assert (=> d!1663910 d!1664002))

(declare-fun b!5149886 () Bool)

(declare-fun e!3210602 () Bool)

(assert (=> b!5149886 (= e!3210602 tp_is_empty!38141)))

(declare-fun b!5149888 () Bool)

(declare-fun tp!1439879 () Bool)

(assert (=> b!5149888 (= e!3210602 tp!1439879)))

(declare-fun b!5149887 () Bool)

(declare-fun tp!1439882 () Bool)

(declare-fun tp!1439880 () Bool)

(assert (=> b!5149887 (= e!3210602 (and tp!1439882 tp!1439880))))

(assert (=> b!5149623 (= tp!1439822 e!3210602)))

(declare-fun b!5149889 () Bool)

(declare-fun tp!1439878 () Bool)

(declare-fun tp!1439881 () Bool)

(assert (=> b!5149889 (= e!3210602 (and tp!1439878 tp!1439881))))

(assert (= (and b!5149623 (is-ElementMatch!14496 (reg!14825 (regOne!29504 expr!117)))) b!5149886))

(assert (= (and b!5149623 (is-Concat!23341 (reg!14825 (regOne!29504 expr!117)))) b!5149887))

(assert (= (and b!5149623 (is-Star!14496 (reg!14825 (regOne!29504 expr!117)))) b!5149888))

(assert (= (and b!5149623 (is-Union!14496 (reg!14825 (regOne!29504 expr!117)))) b!5149889))

(declare-fun b!5149890 () Bool)

(declare-fun e!3210603 () Bool)

(assert (=> b!5149890 (= e!3210603 tp_is_empty!38141)))

(declare-fun b!5149892 () Bool)

(declare-fun tp!1439884 () Bool)

(assert (=> b!5149892 (= e!3210603 tp!1439884)))

(declare-fun b!5149891 () Bool)

(declare-fun tp!1439887 () Bool)

(declare-fun tp!1439885 () Bool)

(assert (=> b!5149891 (= e!3210603 (and tp!1439887 tp!1439885))))

(assert (=> b!5149614 (= tp!1439815 e!3210603)))

(declare-fun b!5149893 () Bool)

(declare-fun tp!1439883 () Bool)

(declare-fun tp!1439886 () Bool)

(assert (=> b!5149893 (= e!3210603 (and tp!1439883 tp!1439886))))

(assert (= (and b!5149614 (is-ElementMatch!14496 (regOne!29504 (regTwo!29505 expr!117)))) b!5149890))

(assert (= (and b!5149614 (is-Concat!23341 (regOne!29504 (regTwo!29505 expr!117)))) b!5149891))

(assert (= (and b!5149614 (is-Star!14496 (regOne!29504 (regTwo!29505 expr!117)))) b!5149892))

(assert (= (and b!5149614 (is-Union!14496 (regOne!29504 (regTwo!29505 expr!117)))) b!5149893))

(declare-fun b!5149894 () Bool)

(declare-fun e!3210604 () Bool)

(assert (=> b!5149894 (= e!3210604 tp_is_empty!38141)))

(declare-fun b!5149896 () Bool)

(declare-fun tp!1439889 () Bool)

(assert (=> b!5149896 (= e!3210604 tp!1439889)))

(declare-fun b!5149895 () Bool)

(declare-fun tp!1439892 () Bool)

(declare-fun tp!1439890 () Bool)

(assert (=> b!5149895 (= e!3210604 (and tp!1439892 tp!1439890))))

(assert (=> b!5149614 (= tp!1439813 e!3210604)))

(declare-fun b!5149897 () Bool)

(declare-fun tp!1439888 () Bool)

(declare-fun tp!1439891 () Bool)

(assert (=> b!5149897 (= e!3210604 (and tp!1439888 tp!1439891))))

(assert (= (and b!5149614 (is-ElementMatch!14496 (regTwo!29504 (regTwo!29505 expr!117)))) b!5149894))

(assert (= (and b!5149614 (is-Concat!23341 (regTwo!29504 (regTwo!29505 expr!117)))) b!5149895))

(assert (= (and b!5149614 (is-Star!14496 (regTwo!29504 (regTwo!29505 expr!117)))) b!5149896))

(assert (= (and b!5149614 (is-Union!14496 (regTwo!29504 (regTwo!29505 expr!117)))) b!5149897))

(declare-fun b!5149898 () Bool)

(declare-fun e!3210605 () Bool)

(assert (=> b!5149898 (= e!3210605 tp_is_empty!38141)))

(declare-fun b!5149900 () Bool)

(declare-fun tp!1439894 () Bool)

(assert (=> b!5149900 (= e!3210605 tp!1439894)))

(declare-fun b!5149899 () Bool)

(declare-fun tp!1439897 () Bool)

(declare-fun tp!1439895 () Bool)

(assert (=> b!5149899 (= e!3210605 (and tp!1439897 tp!1439895))))

(assert (=> b!5149628 (= tp!1439826 e!3210605)))

(declare-fun b!5149901 () Bool)

(declare-fun tp!1439893 () Bool)

(declare-fun tp!1439896 () Bool)

(assert (=> b!5149901 (= e!3210605 (and tp!1439893 tp!1439896))))

(assert (= (and b!5149628 (is-ElementMatch!14496 (regOne!29505 (regTwo!29504 expr!117)))) b!5149898))

(assert (= (and b!5149628 (is-Concat!23341 (regOne!29505 (regTwo!29504 expr!117)))) b!5149899))

(assert (= (and b!5149628 (is-Star!14496 (regOne!29505 (regTwo!29504 expr!117)))) b!5149900))

(assert (= (and b!5149628 (is-Union!14496 (regOne!29505 (regTwo!29504 expr!117)))) b!5149901))

(declare-fun b!5149902 () Bool)

(declare-fun e!3210606 () Bool)

(assert (=> b!5149902 (= e!3210606 tp_is_empty!38141)))

(declare-fun b!5149904 () Bool)

(declare-fun tp!1439899 () Bool)

(assert (=> b!5149904 (= e!3210606 tp!1439899)))

(declare-fun b!5149903 () Bool)

(declare-fun tp!1439902 () Bool)

(declare-fun tp!1439900 () Bool)

(assert (=> b!5149903 (= e!3210606 (and tp!1439902 tp!1439900))))

(assert (=> b!5149628 (= tp!1439829 e!3210606)))

(declare-fun b!5149905 () Bool)

(declare-fun tp!1439898 () Bool)

(declare-fun tp!1439901 () Bool)

(assert (=> b!5149905 (= e!3210606 (and tp!1439898 tp!1439901))))

(assert (= (and b!5149628 (is-ElementMatch!14496 (regTwo!29505 (regTwo!29504 expr!117)))) b!5149902))

(assert (= (and b!5149628 (is-Concat!23341 (regTwo!29505 (regTwo!29504 expr!117)))) b!5149903))

(assert (= (and b!5149628 (is-Star!14496 (regTwo!29505 (regTwo!29504 expr!117)))) b!5149904))

(assert (= (and b!5149628 (is-Union!14496 (regTwo!29505 (regTwo!29504 expr!117)))) b!5149905))

(declare-fun b!5149906 () Bool)

(declare-fun e!3210607 () Bool)

(assert (=> b!5149906 (= e!3210607 tp_is_empty!38141)))

(declare-fun b!5149908 () Bool)

(declare-fun tp!1439904 () Bool)

(assert (=> b!5149908 (= e!3210607 tp!1439904)))

(declare-fun b!5149907 () Bool)

(declare-fun tp!1439907 () Bool)

(declare-fun tp!1439905 () Bool)

(assert (=> b!5149907 (= e!3210607 (and tp!1439907 tp!1439905))))

(assert (=> b!5149610 (= tp!1439810 e!3210607)))

(declare-fun b!5149909 () Bool)

(declare-fun tp!1439903 () Bool)

(declare-fun tp!1439906 () Bool)

(assert (=> b!5149909 (= e!3210607 (and tp!1439903 tp!1439906))))

(assert (= (and b!5149610 (is-ElementMatch!14496 (regOne!29504 (regOne!29505 expr!117)))) b!5149906))

(assert (= (and b!5149610 (is-Concat!23341 (regOne!29504 (regOne!29505 expr!117)))) b!5149907))

(assert (= (and b!5149610 (is-Star!14496 (regOne!29504 (regOne!29505 expr!117)))) b!5149908))

(assert (= (and b!5149610 (is-Union!14496 (regOne!29504 (regOne!29505 expr!117)))) b!5149909))

(declare-fun b!5149910 () Bool)

(declare-fun e!3210608 () Bool)

(assert (=> b!5149910 (= e!3210608 tp_is_empty!38141)))

(declare-fun b!5149912 () Bool)

(declare-fun tp!1439909 () Bool)

(assert (=> b!5149912 (= e!3210608 tp!1439909)))

(declare-fun b!5149911 () Bool)

(declare-fun tp!1439912 () Bool)

(declare-fun tp!1439910 () Bool)

(assert (=> b!5149911 (= e!3210608 (and tp!1439912 tp!1439910))))

(assert (=> b!5149610 (= tp!1439808 e!3210608)))

(declare-fun b!5149913 () Bool)

(declare-fun tp!1439908 () Bool)

(declare-fun tp!1439911 () Bool)

(assert (=> b!5149913 (= e!3210608 (and tp!1439908 tp!1439911))))

(assert (= (and b!5149610 (is-ElementMatch!14496 (regTwo!29504 (regOne!29505 expr!117)))) b!5149910))

(assert (= (and b!5149610 (is-Concat!23341 (regTwo!29504 (regOne!29505 expr!117)))) b!5149911))

(assert (= (and b!5149610 (is-Star!14496 (regTwo!29504 (regOne!29505 expr!117)))) b!5149912))

(assert (= (and b!5149610 (is-Union!14496 (regTwo!29504 (regOne!29505 expr!117)))) b!5149913))

(declare-fun b!5149914 () Bool)

(declare-fun e!3210609 () Bool)

(assert (=> b!5149914 (= e!3210609 tp_is_empty!38141)))

(declare-fun b!5149916 () Bool)

(declare-fun tp!1439914 () Bool)

(assert (=> b!5149916 (= e!3210609 tp!1439914)))

(declare-fun b!5149915 () Bool)

(declare-fun tp!1439917 () Bool)

(declare-fun tp!1439915 () Bool)

(assert (=> b!5149915 (= e!3210609 (and tp!1439917 tp!1439915))))

(assert (=> b!5149619 (= tp!1439817 e!3210609)))

(declare-fun b!5149917 () Bool)

(declare-fun tp!1439913 () Bool)

(declare-fun tp!1439916 () Bool)

(assert (=> b!5149917 (= e!3210609 (and tp!1439913 tp!1439916))))

(assert (= (and b!5149619 (is-ElementMatch!14496 (reg!14825 (reg!14825 expr!117)))) b!5149914))

(assert (= (and b!5149619 (is-Concat!23341 (reg!14825 (reg!14825 expr!117)))) b!5149915))

(assert (= (and b!5149619 (is-Star!14496 (reg!14825 (reg!14825 expr!117)))) b!5149916))

(assert (= (and b!5149619 (is-Union!14496 (reg!14825 (reg!14825 expr!117)))) b!5149917))

(declare-fun b!5149918 () Bool)

(declare-fun e!3210610 () Bool)

(assert (=> b!5149918 (= e!3210610 tp_is_empty!38141)))

(declare-fun b!5149920 () Bool)

(declare-fun tp!1439919 () Bool)

(assert (=> b!5149920 (= e!3210610 tp!1439919)))

(declare-fun b!5149919 () Bool)

(declare-fun tp!1439922 () Bool)

(declare-fun tp!1439920 () Bool)

(assert (=> b!5149919 (= e!3210610 (and tp!1439922 tp!1439920))))

(assert (=> b!5149624 (= tp!1439821 e!3210610)))

(declare-fun b!5149921 () Bool)

(declare-fun tp!1439918 () Bool)

(declare-fun tp!1439921 () Bool)

(assert (=> b!5149921 (= e!3210610 (and tp!1439918 tp!1439921))))

(assert (= (and b!5149624 (is-ElementMatch!14496 (regOne!29505 (regOne!29504 expr!117)))) b!5149918))

(assert (= (and b!5149624 (is-Concat!23341 (regOne!29505 (regOne!29504 expr!117)))) b!5149919))

(assert (= (and b!5149624 (is-Star!14496 (regOne!29505 (regOne!29504 expr!117)))) b!5149920))

(assert (= (and b!5149624 (is-Union!14496 (regOne!29505 (regOne!29504 expr!117)))) b!5149921))

(declare-fun b!5149922 () Bool)

(declare-fun e!3210611 () Bool)

(assert (=> b!5149922 (= e!3210611 tp_is_empty!38141)))

(declare-fun b!5149924 () Bool)

(declare-fun tp!1439924 () Bool)

(assert (=> b!5149924 (= e!3210611 tp!1439924)))

(declare-fun b!5149923 () Bool)

(declare-fun tp!1439927 () Bool)

(declare-fun tp!1439925 () Bool)

(assert (=> b!5149923 (= e!3210611 (and tp!1439927 tp!1439925))))

(assert (=> b!5149624 (= tp!1439824 e!3210611)))

(declare-fun b!5149925 () Bool)

(declare-fun tp!1439923 () Bool)

(declare-fun tp!1439926 () Bool)

(assert (=> b!5149925 (= e!3210611 (and tp!1439923 tp!1439926))))

(assert (= (and b!5149624 (is-ElementMatch!14496 (regTwo!29505 (regOne!29504 expr!117)))) b!5149922))

(assert (= (and b!5149624 (is-Concat!23341 (regTwo!29505 (regOne!29504 expr!117)))) b!5149923))

(assert (= (and b!5149624 (is-Star!14496 (regTwo!29505 (regOne!29504 expr!117)))) b!5149924))

(assert (= (and b!5149624 (is-Union!14496 (regTwo!29505 (regOne!29504 expr!117)))) b!5149925))

(declare-fun b!5149926 () Bool)

(declare-fun e!3210612 () Bool)

(assert (=> b!5149926 (= e!3210612 tp_is_empty!38141)))

(declare-fun b!5149928 () Bool)

(declare-fun tp!1439929 () Bool)

(assert (=> b!5149928 (= e!3210612 tp!1439929)))

(declare-fun b!5149927 () Bool)

(declare-fun tp!1439932 () Bool)

(declare-fun tp!1439930 () Bool)

(assert (=> b!5149927 (= e!3210612 (and tp!1439932 tp!1439930))))

(assert (=> b!5149622 (= tp!1439825 e!3210612)))

(declare-fun b!5149929 () Bool)

(declare-fun tp!1439928 () Bool)

(declare-fun tp!1439931 () Bool)

(assert (=> b!5149929 (= e!3210612 (and tp!1439928 tp!1439931))))

(assert (= (and b!5149622 (is-ElementMatch!14496 (regOne!29504 (regOne!29504 expr!117)))) b!5149926))

(assert (= (and b!5149622 (is-Concat!23341 (regOne!29504 (regOne!29504 expr!117)))) b!5149927))

(assert (= (and b!5149622 (is-Star!14496 (regOne!29504 (regOne!29504 expr!117)))) b!5149928))

(assert (= (and b!5149622 (is-Union!14496 (regOne!29504 (regOne!29504 expr!117)))) b!5149929))

(declare-fun b!5149930 () Bool)

(declare-fun e!3210613 () Bool)

(assert (=> b!5149930 (= e!3210613 tp_is_empty!38141)))

(declare-fun b!5149932 () Bool)

(declare-fun tp!1439934 () Bool)

(assert (=> b!5149932 (= e!3210613 tp!1439934)))

(declare-fun b!5149931 () Bool)

(declare-fun tp!1439937 () Bool)

(declare-fun tp!1439935 () Bool)

(assert (=> b!5149931 (= e!3210613 (and tp!1439937 tp!1439935))))

(assert (=> b!5149622 (= tp!1439823 e!3210613)))

(declare-fun b!5149933 () Bool)

(declare-fun tp!1439933 () Bool)

(declare-fun tp!1439936 () Bool)

(assert (=> b!5149933 (= e!3210613 (and tp!1439933 tp!1439936))))

(assert (= (and b!5149622 (is-ElementMatch!14496 (regTwo!29504 (regOne!29504 expr!117)))) b!5149930))

(assert (= (and b!5149622 (is-Concat!23341 (regTwo!29504 (regOne!29504 expr!117)))) b!5149931))

(assert (= (and b!5149622 (is-Star!14496 (regTwo!29504 (regOne!29504 expr!117)))) b!5149932))

(assert (= (and b!5149622 (is-Union!14496 (regTwo!29504 (regOne!29504 expr!117)))) b!5149933))

(declare-fun b!5149934 () Bool)

(declare-fun e!3210614 () Bool)

(assert (=> b!5149934 (= e!3210614 tp_is_empty!38141)))

(declare-fun b!5149936 () Bool)

(declare-fun tp!1439939 () Bool)

(assert (=> b!5149936 (= e!3210614 tp!1439939)))

(declare-fun b!5149935 () Bool)

(declare-fun tp!1439942 () Bool)

(declare-fun tp!1439940 () Bool)

(assert (=> b!5149935 (= e!3210614 (and tp!1439942 tp!1439940))))

(assert (=> b!5149627 (= tp!1439827 e!3210614)))

(declare-fun b!5149937 () Bool)

(declare-fun tp!1439938 () Bool)

(declare-fun tp!1439941 () Bool)

(assert (=> b!5149937 (= e!3210614 (and tp!1439938 tp!1439941))))

(assert (= (and b!5149627 (is-ElementMatch!14496 (reg!14825 (regTwo!29504 expr!117)))) b!5149934))

(assert (= (and b!5149627 (is-Concat!23341 (reg!14825 (regTwo!29504 expr!117)))) b!5149935))

(assert (= (and b!5149627 (is-Star!14496 (reg!14825 (regTwo!29504 expr!117)))) b!5149936))

(assert (= (and b!5149627 (is-Union!14496 (reg!14825 (regTwo!29504 expr!117)))) b!5149937))

(declare-fun b!5149938 () Bool)

(declare-fun e!3210615 () Bool)

(assert (=> b!5149938 (= e!3210615 tp_is_empty!38141)))

(declare-fun b!5149940 () Bool)

(declare-fun tp!1439944 () Bool)

(assert (=> b!5149940 (= e!3210615 tp!1439944)))

(declare-fun b!5149939 () Bool)

(declare-fun tp!1439947 () Bool)

(declare-fun tp!1439945 () Bool)

(assert (=> b!5149939 (= e!3210615 (and tp!1439947 tp!1439945))))

(assert (=> b!5149618 (= tp!1439820 e!3210615)))

(declare-fun b!5149941 () Bool)

(declare-fun tp!1439943 () Bool)

(declare-fun tp!1439946 () Bool)

(assert (=> b!5149941 (= e!3210615 (and tp!1439943 tp!1439946))))

(assert (= (and b!5149618 (is-ElementMatch!14496 (regOne!29504 (reg!14825 expr!117)))) b!5149938))

(assert (= (and b!5149618 (is-Concat!23341 (regOne!29504 (reg!14825 expr!117)))) b!5149939))

(assert (= (and b!5149618 (is-Star!14496 (regOne!29504 (reg!14825 expr!117)))) b!5149940))

(assert (= (and b!5149618 (is-Union!14496 (regOne!29504 (reg!14825 expr!117)))) b!5149941))

(declare-fun b!5149942 () Bool)

(declare-fun e!3210616 () Bool)

(assert (=> b!5149942 (= e!3210616 tp_is_empty!38141)))

(declare-fun b!5149944 () Bool)

(declare-fun tp!1439949 () Bool)

(assert (=> b!5149944 (= e!3210616 tp!1439949)))

(declare-fun b!5149943 () Bool)

(declare-fun tp!1439952 () Bool)

(declare-fun tp!1439950 () Bool)

(assert (=> b!5149943 (= e!3210616 (and tp!1439952 tp!1439950))))

(assert (=> b!5149618 (= tp!1439818 e!3210616)))

(declare-fun b!5149945 () Bool)

(declare-fun tp!1439948 () Bool)

(declare-fun tp!1439951 () Bool)

(assert (=> b!5149945 (= e!3210616 (and tp!1439948 tp!1439951))))

(assert (= (and b!5149618 (is-ElementMatch!14496 (regTwo!29504 (reg!14825 expr!117)))) b!5149942))

(assert (= (and b!5149618 (is-Concat!23341 (regTwo!29504 (reg!14825 expr!117)))) b!5149943))

(assert (= (and b!5149618 (is-Star!14496 (regTwo!29504 (reg!14825 expr!117)))) b!5149944))

(assert (= (and b!5149618 (is-Union!14496 (regTwo!29504 (reg!14825 expr!117)))) b!5149945))

(declare-fun b!5149946 () Bool)

(declare-fun e!3210617 () Bool)

(assert (=> b!5149946 (= e!3210617 tp_is_empty!38141)))

(declare-fun b!5149948 () Bool)

(declare-fun tp!1439954 () Bool)

(assert (=> b!5149948 (= e!3210617 tp!1439954)))

(declare-fun b!5149947 () Bool)

(declare-fun tp!1439957 () Bool)

(declare-fun tp!1439955 () Bool)

(assert (=> b!5149947 (= e!3210617 (and tp!1439957 tp!1439955))))

(assert (=> b!5149626 (= tp!1439830 e!3210617)))

(declare-fun b!5149949 () Bool)

(declare-fun tp!1439953 () Bool)

(declare-fun tp!1439956 () Bool)

(assert (=> b!5149949 (= e!3210617 (and tp!1439953 tp!1439956))))

(assert (= (and b!5149626 (is-ElementMatch!14496 (regOne!29504 (regTwo!29504 expr!117)))) b!5149946))

(assert (= (and b!5149626 (is-Concat!23341 (regOne!29504 (regTwo!29504 expr!117)))) b!5149947))

(assert (= (and b!5149626 (is-Star!14496 (regOne!29504 (regTwo!29504 expr!117)))) b!5149948))

(assert (= (and b!5149626 (is-Union!14496 (regOne!29504 (regTwo!29504 expr!117)))) b!5149949))

(declare-fun b!5149950 () Bool)

(declare-fun e!3210618 () Bool)

(assert (=> b!5149950 (= e!3210618 tp_is_empty!38141)))

(declare-fun b!5149952 () Bool)

(declare-fun tp!1439959 () Bool)

(assert (=> b!5149952 (= e!3210618 tp!1439959)))

(declare-fun b!5149951 () Bool)

(declare-fun tp!1439962 () Bool)

(declare-fun tp!1439960 () Bool)

(assert (=> b!5149951 (= e!3210618 (and tp!1439962 tp!1439960))))

(assert (=> b!5149626 (= tp!1439828 e!3210618)))

(declare-fun b!5149953 () Bool)

(declare-fun tp!1439958 () Bool)

(declare-fun tp!1439961 () Bool)

(assert (=> b!5149953 (= e!3210618 (and tp!1439958 tp!1439961))))

(assert (= (and b!5149626 (is-ElementMatch!14496 (regTwo!29504 (regTwo!29504 expr!117)))) b!5149950))

(assert (= (and b!5149626 (is-Concat!23341 (regTwo!29504 (regTwo!29504 expr!117)))) b!5149951))

(assert (= (and b!5149626 (is-Star!14496 (regTwo!29504 (regTwo!29504 expr!117)))) b!5149952))

(assert (= (and b!5149626 (is-Union!14496 (regTwo!29504 (regTwo!29504 expr!117)))) b!5149953))

(declare-fun b!5149954 () Bool)

(declare-fun e!3210619 () Bool)

(assert (=> b!5149954 (= e!3210619 tp_is_empty!38141)))

(declare-fun b!5149956 () Bool)

(declare-fun tp!1439964 () Bool)

(assert (=> b!5149956 (= e!3210619 tp!1439964)))

(declare-fun b!5149955 () Bool)

(declare-fun tp!1439967 () Bool)

(declare-fun tp!1439965 () Bool)

(assert (=> b!5149955 (= e!3210619 (and tp!1439967 tp!1439965))))

(assert (=> b!5149633 (= tp!1439835 e!3210619)))

(declare-fun b!5149957 () Bool)

(declare-fun tp!1439963 () Bool)

(declare-fun tp!1439966 () Bool)

(assert (=> b!5149957 (= e!3210619 (and tp!1439963 tp!1439966))))

(assert (= (and b!5149633 (is-ElementMatch!14496 (h!66228 (exprs!4380 ctx!100)))) b!5149954))

(assert (= (and b!5149633 (is-Concat!23341 (h!66228 (exprs!4380 ctx!100)))) b!5149955))

(assert (= (and b!5149633 (is-Star!14496 (h!66228 (exprs!4380 ctx!100)))) b!5149956))

(assert (= (and b!5149633 (is-Union!14496 (h!66228 (exprs!4380 ctx!100)))) b!5149957))

(declare-fun b!5149958 () Bool)

(declare-fun e!3210620 () Bool)

(declare-fun tp!1439968 () Bool)

(declare-fun tp!1439969 () Bool)

(assert (=> b!5149958 (= e!3210620 (and tp!1439968 tp!1439969))))

(assert (=> b!5149633 (= tp!1439836 e!3210620)))

(assert (= (and b!5149633 (is-Cons!59780 (t!372947 (exprs!4380 ctx!100)))) b!5149958))

(declare-fun b!5149959 () Bool)

(declare-fun e!3210621 () Bool)

(assert (=> b!5149959 (= e!3210621 tp_is_empty!38141)))

(declare-fun b!5149961 () Bool)

(declare-fun tp!1439971 () Bool)

(assert (=> b!5149961 (= e!3210621 tp!1439971)))

(declare-fun b!5149960 () Bool)

(declare-fun tp!1439974 () Bool)

(declare-fun tp!1439972 () Bool)

(assert (=> b!5149960 (= e!3210621 (and tp!1439974 tp!1439972))))

(assert (=> b!5149612 (= tp!1439806 e!3210621)))

(declare-fun b!5149962 () Bool)

(declare-fun tp!1439970 () Bool)

(declare-fun tp!1439973 () Bool)

(assert (=> b!5149962 (= e!3210621 (and tp!1439970 tp!1439973))))

(assert (= (and b!5149612 (is-ElementMatch!14496 (regOne!29505 (regOne!29505 expr!117)))) b!5149959))

(assert (= (and b!5149612 (is-Concat!23341 (regOne!29505 (regOne!29505 expr!117)))) b!5149960))

(assert (= (and b!5149612 (is-Star!14496 (regOne!29505 (regOne!29505 expr!117)))) b!5149961))

(assert (= (and b!5149612 (is-Union!14496 (regOne!29505 (regOne!29505 expr!117)))) b!5149962))

(declare-fun b!5149963 () Bool)

(declare-fun e!3210622 () Bool)

(assert (=> b!5149963 (= e!3210622 tp_is_empty!38141)))

(declare-fun b!5149965 () Bool)

(declare-fun tp!1439976 () Bool)

(assert (=> b!5149965 (= e!3210622 tp!1439976)))

(declare-fun b!5149964 () Bool)

(declare-fun tp!1439979 () Bool)

(declare-fun tp!1439977 () Bool)

(assert (=> b!5149964 (= e!3210622 (and tp!1439979 tp!1439977))))

(assert (=> b!5149612 (= tp!1439809 e!3210622)))

(declare-fun b!5149966 () Bool)

(declare-fun tp!1439975 () Bool)

(declare-fun tp!1439978 () Bool)

(assert (=> b!5149966 (= e!3210622 (and tp!1439975 tp!1439978))))

(assert (= (and b!5149612 (is-ElementMatch!14496 (regTwo!29505 (regOne!29505 expr!117)))) b!5149963))

(assert (= (and b!5149612 (is-Concat!23341 (regTwo!29505 (regOne!29505 expr!117)))) b!5149964))

(assert (= (and b!5149612 (is-Star!14496 (regTwo!29505 (regOne!29505 expr!117)))) b!5149965))

(assert (= (and b!5149612 (is-Union!14496 (regTwo!29505 (regOne!29505 expr!117)))) b!5149966))

(declare-fun b!5149967 () Bool)

(declare-fun e!3210623 () Bool)

(assert (=> b!5149967 (= e!3210623 tp_is_empty!38141)))

(declare-fun b!5149969 () Bool)

(declare-fun tp!1439981 () Bool)

(assert (=> b!5149969 (= e!3210623 tp!1439981)))

(declare-fun b!5149968 () Bool)

(declare-fun tp!1439984 () Bool)

(declare-fun tp!1439982 () Bool)

(assert (=> b!5149968 (= e!3210623 (and tp!1439984 tp!1439982))))

(assert (=> b!5149615 (= tp!1439812 e!3210623)))

(declare-fun b!5149970 () Bool)

(declare-fun tp!1439980 () Bool)

(declare-fun tp!1439983 () Bool)

(assert (=> b!5149970 (= e!3210623 (and tp!1439980 tp!1439983))))

(assert (= (and b!5149615 (is-ElementMatch!14496 (reg!14825 (regTwo!29505 expr!117)))) b!5149967))

(assert (= (and b!5149615 (is-Concat!23341 (reg!14825 (regTwo!29505 expr!117)))) b!5149968))

(assert (= (and b!5149615 (is-Star!14496 (reg!14825 (regTwo!29505 expr!117)))) b!5149969))

(assert (= (and b!5149615 (is-Union!14496 (reg!14825 (regTwo!29505 expr!117)))) b!5149970))

(declare-fun b!5149971 () Bool)

(declare-fun e!3210624 () Bool)

(assert (=> b!5149971 (= e!3210624 tp_is_empty!38141)))

(declare-fun b!5149973 () Bool)

(declare-fun tp!1439986 () Bool)

(assert (=> b!5149973 (= e!3210624 tp!1439986)))

(declare-fun b!5149972 () Bool)

(declare-fun tp!1439989 () Bool)

(declare-fun tp!1439987 () Bool)

(assert (=> b!5149972 (= e!3210624 (and tp!1439989 tp!1439987))))

(assert (=> b!5149620 (= tp!1439816 e!3210624)))

(declare-fun b!5149974 () Bool)

(declare-fun tp!1439985 () Bool)

(declare-fun tp!1439988 () Bool)

(assert (=> b!5149974 (= e!3210624 (and tp!1439985 tp!1439988))))

(assert (= (and b!5149620 (is-ElementMatch!14496 (regOne!29505 (reg!14825 expr!117)))) b!5149971))

(assert (= (and b!5149620 (is-Concat!23341 (regOne!29505 (reg!14825 expr!117)))) b!5149972))

(assert (= (and b!5149620 (is-Star!14496 (regOne!29505 (reg!14825 expr!117)))) b!5149973))

(assert (= (and b!5149620 (is-Union!14496 (regOne!29505 (reg!14825 expr!117)))) b!5149974))

(declare-fun b!5149975 () Bool)

(declare-fun e!3210625 () Bool)

(assert (=> b!5149975 (= e!3210625 tp_is_empty!38141)))

(declare-fun b!5149977 () Bool)

(declare-fun tp!1439991 () Bool)

(assert (=> b!5149977 (= e!3210625 tp!1439991)))

(declare-fun b!5149976 () Bool)

(declare-fun tp!1439994 () Bool)

(declare-fun tp!1439992 () Bool)

(assert (=> b!5149976 (= e!3210625 (and tp!1439994 tp!1439992))))

(assert (=> b!5149620 (= tp!1439819 e!3210625)))

(declare-fun b!5149978 () Bool)

(declare-fun tp!1439990 () Bool)

(declare-fun tp!1439993 () Bool)

(assert (=> b!5149978 (= e!3210625 (and tp!1439990 tp!1439993))))

(assert (= (and b!5149620 (is-ElementMatch!14496 (regTwo!29505 (reg!14825 expr!117)))) b!5149975))

(assert (= (and b!5149620 (is-Concat!23341 (regTwo!29505 (reg!14825 expr!117)))) b!5149976))

(assert (= (and b!5149620 (is-Star!14496 (regTwo!29505 (reg!14825 expr!117)))) b!5149977))

(assert (= (and b!5149620 (is-Union!14496 (regTwo!29505 (reg!14825 expr!117)))) b!5149978))

(declare-fun b!5149979 () Bool)

(declare-fun e!3210626 () Bool)

(assert (=> b!5149979 (= e!3210626 tp_is_empty!38141)))

(declare-fun b!5149981 () Bool)

(declare-fun tp!1439996 () Bool)

(assert (=> b!5149981 (= e!3210626 tp!1439996)))

(declare-fun b!5149980 () Bool)

(declare-fun tp!1439999 () Bool)

(declare-fun tp!1439997 () Bool)

(assert (=> b!5149980 (= e!3210626 (and tp!1439999 tp!1439997))))

(assert (=> b!5149611 (= tp!1439807 e!3210626)))

(declare-fun b!5149982 () Bool)

(declare-fun tp!1439995 () Bool)

(declare-fun tp!1439998 () Bool)

(assert (=> b!5149982 (= e!3210626 (and tp!1439995 tp!1439998))))

(assert (= (and b!5149611 (is-ElementMatch!14496 (reg!14825 (regOne!29505 expr!117)))) b!5149979))

(assert (= (and b!5149611 (is-Concat!23341 (reg!14825 (regOne!29505 expr!117)))) b!5149980))

(assert (= (and b!5149611 (is-Star!14496 (reg!14825 (regOne!29505 expr!117)))) b!5149981))

(assert (= (and b!5149611 (is-Union!14496 (reg!14825 (regOne!29505 expr!117)))) b!5149982))

(declare-fun b!5149983 () Bool)

(declare-fun e!3210627 () Bool)

(assert (=> b!5149983 (= e!3210627 tp_is_empty!38141)))

(declare-fun b!5149985 () Bool)

(declare-fun tp!1440001 () Bool)

(assert (=> b!5149985 (= e!3210627 tp!1440001)))

(declare-fun b!5149984 () Bool)

(declare-fun tp!1440004 () Bool)

(declare-fun tp!1440002 () Bool)

(assert (=> b!5149984 (= e!3210627 (and tp!1440004 tp!1440002))))

(assert (=> b!5149616 (= tp!1439811 e!3210627)))

(declare-fun b!5149986 () Bool)

(declare-fun tp!1440000 () Bool)

(declare-fun tp!1440003 () Bool)

(assert (=> b!5149986 (= e!3210627 (and tp!1440000 tp!1440003))))

(assert (= (and b!5149616 (is-ElementMatch!14496 (regOne!29505 (regTwo!29505 expr!117)))) b!5149983))

(assert (= (and b!5149616 (is-Concat!23341 (regOne!29505 (regTwo!29505 expr!117)))) b!5149984))

(assert (= (and b!5149616 (is-Star!14496 (regOne!29505 (regTwo!29505 expr!117)))) b!5149985))

(assert (= (and b!5149616 (is-Union!14496 (regOne!29505 (regTwo!29505 expr!117)))) b!5149986))

(declare-fun b!5149987 () Bool)

(declare-fun e!3210628 () Bool)

(assert (=> b!5149987 (= e!3210628 tp_is_empty!38141)))

(declare-fun b!5149989 () Bool)

(declare-fun tp!1440006 () Bool)

(assert (=> b!5149989 (= e!3210628 tp!1440006)))

(declare-fun b!5149988 () Bool)

(declare-fun tp!1440009 () Bool)

(declare-fun tp!1440007 () Bool)

(assert (=> b!5149988 (= e!3210628 (and tp!1440009 tp!1440007))))

(assert (=> b!5149616 (= tp!1439814 e!3210628)))

(declare-fun b!5149990 () Bool)

(declare-fun tp!1440005 () Bool)

(declare-fun tp!1440008 () Bool)

(assert (=> b!5149990 (= e!3210628 (and tp!1440005 tp!1440008))))

(assert (= (and b!5149616 (is-ElementMatch!14496 (regTwo!29505 (regTwo!29505 expr!117)))) b!5149987))

(assert (= (and b!5149616 (is-Concat!23341 (regTwo!29505 (regTwo!29505 expr!117)))) b!5149988))

(assert (= (and b!5149616 (is-Star!14496 (regTwo!29505 (regTwo!29505 expr!117)))) b!5149989))

(assert (= (and b!5149616 (is-Union!14496 (regTwo!29505 (regTwo!29505 expr!117)))) b!5149990))

(declare-fun b_lambda!200379 () Bool)

(assert (= b_lambda!200377 (or d!1663904 b_lambda!200379)))

(declare-fun bs!1201473 () Bool)

(declare-fun d!1664004 () Bool)

(assert (= bs!1201473 (and d!1664004 d!1663904)))

(assert (=> bs!1201473 (= (dynLambda!23791 lambda!256946 (h!66228 (exprs!4380 ctx!100))) (validRegex!6351 (h!66228 (exprs!4380 ctx!100))))))

(declare-fun m!6208010 () Bool)

(assert (=> bs!1201473 m!6208010))

(assert (=> b!5149855 d!1664004))

(push 1)

(assert (not b!5149897))

(assert (not b!5149891))

(assert (not b!5149965))

(assert (not b!5149900))

(assert (not b!5149911))

(assert (not b!5149945))

(assert (not b!5149868))

(assert (not b!5149944))

(assert (not b!5149895))

(assert (not b!5149842))

(assert (not b!5149955))

(assert (not b!5149970))

(assert (not bm!360200))

(assert (not bm!360235))

(assert (not b!5149966))

(assert (not b!5149980))

(assert (not bm!360196))

(assert (not b!5149952))

(assert (not b!5149892))

(assert (not b!5149948))

(assert (not b!5149958))

(assert (not bm!360221))

(assert (not bm!360230))

(assert (not b!5149889))

(assert (not b!5149939))

(assert (not b!5149960))

(assert (not bm!360234))

(assert (not bm!360232))

(assert (not bm!360212))

(assert (not b!5149747))

(assert (not b!5149917))

(assert (not b!5149848))

(assert (not b!5149936))

(assert (not b!5149978))

(assert (not bm!360216))

(assert (not b!5149901))

(assert (not b!5149861))

(assert (not d!1663966))

(assert (not b!5149904))

(assert (not bm!360195))

(assert (not bm!360225))

(assert (not b!5149951))

(assert (not b!5149973))

(assert (not b!5149988))

(assert (not b!5149856))

(assert (not bs!1201473))

(assert (not b!5149919))

(assert (not d!1663986))

(assert (not b!5149887))

(assert (not d!1664000))

(assert (not d!1663994))

(assert (not b!5149947))

(assert (not b!5149912))

(assert (not d!1663978))

(assert (not b!5149833))

(assert (not bm!360202))

(assert (not bm!360194))

(assert (not b!5149943))

(assert (not b!5149974))

(assert (not b!5149907))

(assert (not b!5149986))

(assert (not b!5149972))

(assert (not b!5149928))

(assert (not d!1663952))

(assert (not b!5149931))

(assert (not d!1663992))

(assert (not b!5149984))

(assert (not b!5149981))

(assert (not b!5149929))

(assert (not b_lambda!200379))

(assert (not b!5149949))

(assert (not b!5149977))

(assert (not bm!360201))

(assert (not b!5149909))

(assert (not b!5149962))

(assert (not b!5149940))

(assert (not bm!360224))

(assert (not d!1664002))

(assert (not b!5149937))

(assert (not b!5149957))

(assert (not bm!360231))

(assert (not bm!360233))

(assert (not b!5149925))

(assert (not b!5149982))

(assert (not b!5149953))

(assert (not d!1663970))

(assert (not d!1663962))

(assert (not b!5149792))

(assert (not bm!360210))

(assert (not d!1663976))

(assert (not b!5149933))

(assert (not b!5149916))

(assert (not b!5149921))

(assert (not b!5149896))

(assert tp_is_empty!38141)

(assert (not b!5149927))

(assert (not bm!360227))

(assert (not b!5149758))

(assert (not b!5149941))

(assert (not b!5149989))

(assert (not b!5149915))

(assert (not b!5149905))

(assert (not b!5149920))

(assert (not b!5149899))

(assert (not b!5149985))

(assert (not b!5149908))

(assert (not b!5149893))

(assert (not b!5149990))

(assert (not b!5149956))

(assert (not d!1663984))

(assert (not bm!360209))

(assert (not bm!360215))

(assert (not b!5149923))

(assert (not b!5149964))

(assert (not b!5149924))

(assert (not b!5149903))

(assert (not d!1663988))

(assert (not d!1663968))

(assert (not bm!360228))

(assert (not b!5149913))

(assert (not b!5149888))

(assert (not b!5149932))

(assert (not b!5149935))

(assert (not b!5149801))

(assert (not b!5149969))

(assert (not b!5149976))

(assert (not b!5149961))

(assert (not bm!360222))

(assert (not b!5149968))

(assert (not bm!360213))

(assert (not d!1663998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

