; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!711494 () Bool)

(assert start!711494)

(declare-fun b!7297431 () Bool)

(assert (=> b!7297431 true))

(declare-fun res!2951518 () Bool)

(declare-fun e!4370708 () Bool)

(assert (=> start!711494 (=> (not res!2951518) (not e!4370708))))

(declare-datatypes ((C!38028 0))(
  ( (C!38029 (val!28962 Int)) )
))
(declare-datatypes ((Regex!18877 0))(
  ( (ElementMatch!18877 (c!1356483 C!38028)) (Concat!27722 (regOne!38266 Regex!18877) (regTwo!38266 Regex!18877)) (EmptyExpr!18877) (Star!18877 (reg!19206 Regex!18877)) (EmptyLang!18877) (Union!18877 (regOne!38267 Regex!18877) (regTwo!38267 Regex!18877)) )
))
(declare-datatypes ((List!71071 0))(
  ( (Nil!70947) (Cons!70947 (h!77395 Regex!18877) (t!385147 List!71071)) )
))
(declare-datatypes ((Context!15634 0))(
  ( (Context!15635 (exprs!8317 List!71071)) )
))
(declare-fun ct2!346 () Context!15634)

(declare-datatypes ((List!71072 0))(
  ( (Nil!70948) (Cons!70948 (h!77396 C!38028) (t!385148 List!71072)) )
))
(declare-fun s!7854 () List!71072)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3781 ((InoxSet Context!15634) List!71072) Bool)

(assert (=> start!711494 (= res!2951518 (matchZipper!3781 (store ((as const (Array Context!15634 Bool)) false) ct2!346 true) s!7854))))

(assert (=> start!711494 e!4370708))

(declare-fun e!4370711 () Bool)

(declare-fun inv!90202 (Context!15634) Bool)

(assert (=> start!711494 (and (inv!90202 ct2!346) e!4370711)))

(declare-fun e!4370710 () Bool)

(assert (=> start!711494 e!4370710))

(declare-fun ct1!250 () Context!15634)

(declare-fun e!4370707 () Bool)

(assert (=> start!711494 (and (inv!90202 ct1!250) e!4370707)))

(declare-fun b!7297421 () Bool)

(declare-fun res!2951521 () Bool)

(declare-fun e!4370705 () Bool)

(assert (=> b!7297421 (=> res!2951521 e!4370705)))

(declare-fun lt!2599113 () Context!15634)

(declare-fun lt!2599106 () (InoxSet Context!15634))

(declare-fun derivationStepZipperDown!2783 (Regex!18877 Context!15634 C!38028) (InoxSet Context!15634))

(declare-fun derivationStepZipperUp!2627 (Context!15634 C!38028) (InoxSet Context!15634))

(assert (=> b!7297421 (= res!2951521 (not (= lt!2599106 ((_ map or) (derivationStepZipperDown!2783 (h!77395 (exprs!8317 ct1!250)) lt!2599113 (h!77396 s!7854)) (derivationStepZipperUp!2627 lt!2599113 (h!77396 s!7854))))))))

(declare-fun b!7297422 () Bool)

(declare-fun e!4370706 () Bool)

(declare-fun lt!2599082 () (InoxSet Context!15634))

(assert (=> b!7297422 (= e!4370706 (matchZipper!3781 lt!2599082 s!7854))))

(declare-fun lambda!450874 () Int)

(declare-datatypes ((Unit!164352 0))(
  ( (Unit!164353) )
))
(declare-fun lt!2599090 () Unit!164352)

(declare-fun lemmaConcatPreservesForall!1624 (List!71071 List!71071 Int) Unit!164352)

(assert (=> b!7297422 (= lt!2599090 (lemmaConcatPreservesForall!1624 (exprs!8317 ct1!250) (exprs!8317 ct2!346) lambda!450874))))

(declare-fun lt!2599112 () (InoxSet Context!15634))

(assert (=> b!7297422 (matchZipper!3781 lt!2599112 (t!385148 s!7854))))

(declare-fun lt!2599105 () Bool)

(declare-fun lt!2599095 () (InoxSet Context!15634))

(assert (=> b!7297422 (= lt!2599105 (matchZipper!3781 lt!2599095 (t!385148 s!7854)))))

(declare-fun lt!2599088 () (InoxSet Context!15634))

(declare-fun lt!2599109 () Unit!164352)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1784 ((InoxSet Context!15634) (InoxSet Context!15634) List!71072) Unit!164352)

(assert (=> b!7297422 (= lt!2599109 (lemmaZipperConcatMatchesSameAsBothZippers!1784 lt!2599095 lt!2599088 (t!385148 s!7854)))))

(declare-fun lt!2599083 () Unit!164352)

(declare-fun lt!2599085 () List!71071)

(assert (=> b!7297422 (= lt!2599083 (lemmaConcatPreservesForall!1624 lt!2599085 (exprs!8317 ct2!346) lambda!450874))))

(declare-fun lt!2599111 () Unit!164352)

(assert (=> b!7297422 (= lt!2599111 (lemmaConcatPreservesForall!1624 lt!2599085 (exprs!8317 ct2!346) lambda!450874))))

(declare-fun b!7297423 () Bool)

(declare-fun res!2951516 () Bool)

(assert (=> b!7297423 (=> (not res!2951516) (not e!4370708))))

(declare-fun nullableContext!367 (Context!15634) Bool)

(assert (=> b!7297423 (= res!2951516 (nullableContext!367 ct1!250))))

(declare-fun b!7297424 () Bool)

(declare-fun tp_is_empty!47219 () Bool)

(declare-fun tp!2062570 () Bool)

(assert (=> b!7297424 (= e!4370710 (and tp_is_empty!47219 tp!2062570))))

(declare-fun b!7297425 () Bool)

(declare-fun res!2951520 () Bool)

(declare-fun e!4370704 () Bool)

(assert (=> b!7297425 (=> res!2951520 e!4370704)))

(declare-fun isEmpty!40816 (List!71071) Bool)

(assert (=> b!7297425 (= res!2951520 (isEmpty!40816 (exprs!8317 ct1!250)))))

(declare-fun b!7297426 () Bool)

(assert (=> b!7297426 (= e!4370704 e!4370705)))

(declare-fun res!2951517 () Bool)

(assert (=> b!7297426 (=> res!2951517 e!4370705)))

(declare-fun nullable!8054 (Regex!18877) Bool)

(assert (=> b!7297426 (= res!2951517 (not (nullable!8054 (h!77395 (exprs!8317 ct1!250)))))))

(assert (=> b!7297426 (= lt!2599106 (derivationStepZipperUp!2627 ct1!250 (h!77396 s!7854)))))

(assert (=> b!7297426 (= lt!2599113 (Context!15635 lt!2599085))))

(declare-fun tail!14599 (List!71071) List!71071)

(assert (=> b!7297426 (= lt!2599085 (tail!14599 (exprs!8317 ct1!250)))))

(declare-fun b!7297427 () Bool)

(declare-fun e!4370709 () Bool)

(assert (=> b!7297427 (= e!4370705 e!4370709)))

(declare-fun res!2951522 () Bool)

(assert (=> b!7297427 (=> res!2951522 e!4370709)))

(declare-fun lt!2599110 () (InoxSet Context!15634))

(assert (=> b!7297427 (= res!2951522 (not (= lt!2599110 lt!2599112)))))

(assert (=> b!7297427 (= lt!2599112 ((_ map or) lt!2599095 lt!2599088))))

(declare-fun lt!2599097 () Context!15634)

(assert (=> b!7297427 (= lt!2599088 (derivationStepZipperUp!2627 lt!2599097 (h!77396 s!7854)))))

(assert (=> b!7297427 (= lt!2599095 (derivationStepZipperDown!2783 (h!77395 (exprs!8317 ct1!250)) lt!2599097 (h!77396 s!7854)))))

(declare-fun ++!16767 (List!71071 List!71071) List!71071)

(assert (=> b!7297427 (= lt!2599097 (Context!15635 (++!16767 lt!2599085 (exprs!8317 ct2!346))))))

(declare-fun lt!2599098 () Unit!164352)

(assert (=> b!7297427 (= lt!2599098 (lemmaConcatPreservesForall!1624 lt!2599085 (exprs!8317 ct2!346) lambda!450874))))

(declare-fun lt!2599096 () Unit!164352)

(assert (=> b!7297427 (= lt!2599096 (lemmaConcatPreservesForall!1624 lt!2599085 (exprs!8317 ct2!346) lambda!450874))))

(declare-fun b!7297428 () Bool)

(declare-fun res!2951519 () Bool)

(assert (=> b!7297428 (=> res!2951519 e!4370704)))

(get-info :version)

(assert (=> b!7297428 (= res!2951519 (not ((_ is Cons!70947) (exprs!8317 ct1!250))))))

(declare-fun b!7297429 () Bool)

(declare-fun tp!2062571 () Bool)

(assert (=> b!7297429 (= e!4370711 tp!2062571)))

(declare-fun b!7297430 () Bool)

(assert (=> b!7297430 (= e!4370709 e!4370706)))

(declare-fun res!2951523 () Bool)

(assert (=> b!7297430 (=> res!2951523 e!4370706)))

(assert (=> b!7297430 (= res!2951523 (not (matchZipper!3781 lt!2599088 (t!385148 s!7854))))))

(declare-fun lt!2599100 () Unit!164352)

(assert (=> b!7297430 (= lt!2599100 (lemmaConcatPreservesForall!1624 lt!2599085 (exprs!8317 ct2!346) lambda!450874))))

(declare-fun lambda!450875 () Int)

(declare-fun lt!2599089 () (InoxSet Context!15634))

(declare-fun flatMap!2972 ((InoxSet Context!15634) Int) (InoxSet Context!15634))

(assert (=> b!7297430 (= (flatMap!2972 lt!2599089 lambda!450875) (derivationStepZipperUp!2627 lt!2599097 (h!77396 s!7854)))))

(declare-fun lt!2599108 () Unit!164352)

(declare-fun lemmaFlatMapOnSingletonSet!2370 ((InoxSet Context!15634) Context!15634 Int) Unit!164352)

(assert (=> b!7297430 (= lt!2599108 (lemmaFlatMapOnSingletonSet!2370 lt!2599089 lt!2599097 lambda!450875))))

(declare-fun lt!2599093 () Unit!164352)

(assert (=> b!7297430 (= lt!2599093 (lemmaConcatPreservesForall!1624 lt!2599085 (exprs!8317 ct2!346) lambda!450874))))

(declare-fun lt!2599084 () Unit!164352)

(assert (=> b!7297430 (= lt!2599084 (lemmaConcatPreservesForall!1624 lt!2599085 (exprs!8317 ct2!346) lambda!450874))))

(declare-fun lt!2599101 () Unit!164352)

(assert (=> b!7297430 (= lt!2599101 (lemmaConcatPreservesForall!1624 lt!2599085 (exprs!8317 ct2!346) lambda!450874))))

(assert (=> b!7297430 (matchZipper!3781 lt!2599089 s!7854)))

(assert (=> b!7297430 (= lt!2599089 (store ((as const (Array Context!15634 Bool)) false) lt!2599097 true))))

(declare-fun lt!2599091 () Unit!164352)

(assert (=> b!7297430 (= lt!2599091 (lemmaConcatPreservesForall!1624 lt!2599085 (exprs!8317 ct2!346) lambda!450874))))

(declare-fun lt!2599086 () Unit!164352)

(declare-fun lemmaPrependingNullableCtxStillMatches!60 (Context!15634 Context!15634 List!71072) Unit!164352)

(assert (=> b!7297430 (= lt!2599086 (lemmaPrependingNullableCtxStillMatches!60 lt!2599113 ct2!346 s!7854))))

(assert (=> b!7297431 (= e!4370708 (not e!4370704))))

(declare-fun res!2951515 () Bool)

(assert (=> b!7297431 (=> res!2951515 e!4370704)))

(declare-fun derivationStepZipper!3610 ((InoxSet Context!15634) C!38028) (InoxSet Context!15634))

(assert (=> b!7297431 (= res!2951515 (not (= lt!2599110 (derivationStepZipper!3610 lt!2599082 (h!77396 s!7854)))))))

(declare-fun lt!2599107 () Unit!164352)

(assert (=> b!7297431 (= lt!2599107 (lemmaConcatPreservesForall!1624 (exprs!8317 ct1!250) (exprs!8317 ct2!346) lambda!450874))))

(declare-fun lt!2599094 () Context!15634)

(assert (=> b!7297431 (= (flatMap!2972 lt!2599082 lambda!450875) (derivationStepZipperUp!2627 lt!2599094 (h!77396 s!7854)))))

(declare-fun lt!2599103 () Unit!164352)

(assert (=> b!7297431 (= lt!2599103 (lemmaFlatMapOnSingletonSet!2370 lt!2599082 lt!2599094 lambda!450875))))

(assert (=> b!7297431 (= lt!2599082 (store ((as const (Array Context!15634 Bool)) false) lt!2599094 true))))

(declare-fun lt!2599102 () Unit!164352)

(assert (=> b!7297431 (= lt!2599102 (lemmaConcatPreservesForall!1624 (exprs!8317 ct1!250) (exprs!8317 ct2!346) lambda!450874))))

(declare-fun lt!2599087 () Unit!164352)

(assert (=> b!7297431 (= lt!2599087 (lemmaConcatPreservesForall!1624 (exprs!8317 ct1!250) (exprs!8317 ct2!346) lambda!450874))))

(declare-fun lt!2599099 () (InoxSet Context!15634))

(assert (=> b!7297431 (= (flatMap!2972 lt!2599099 lambda!450875) (derivationStepZipperUp!2627 ct1!250 (h!77396 s!7854)))))

(declare-fun lt!2599104 () Unit!164352)

(assert (=> b!7297431 (= lt!2599104 (lemmaFlatMapOnSingletonSet!2370 lt!2599099 ct1!250 lambda!450875))))

(assert (=> b!7297431 (= lt!2599099 (store ((as const (Array Context!15634 Bool)) false) ct1!250 true))))

(assert (=> b!7297431 (= lt!2599110 (derivationStepZipperUp!2627 lt!2599094 (h!77396 s!7854)))))

(assert (=> b!7297431 (= lt!2599094 (Context!15635 (++!16767 (exprs!8317 ct1!250) (exprs!8317 ct2!346))))))

(declare-fun lt!2599092 () Unit!164352)

(assert (=> b!7297431 (= lt!2599092 (lemmaConcatPreservesForall!1624 (exprs!8317 ct1!250) (exprs!8317 ct2!346) lambda!450874))))

(declare-fun b!7297432 () Bool)

(declare-fun tp!2062572 () Bool)

(assert (=> b!7297432 (= e!4370707 tp!2062572)))

(declare-fun b!7297433 () Bool)

(declare-fun res!2951514 () Bool)

(assert (=> b!7297433 (=> (not res!2951514) (not e!4370708))))

(assert (=> b!7297433 (= res!2951514 ((_ is Cons!70948) s!7854))))

(assert (= (and start!711494 res!2951518) b!7297423))

(assert (= (and b!7297423 res!2951516) b!7297433))

(assert (= (and b!7297433 res!2951514) b!7297431))

(assert (= (and b!7297431 (not res!2951515)) b!7297428))

(assert (= (and b!7297428 (not res!2951519)) b!7297425))

(assert (= (and b!7297425 (not res!2951520)) b!7297426))

(assert (= (and b!7297426 (not res!2951517)) b!7297421))

(assert (= (and b!7297421 (not res!2951521)) b!7297427))

(assert (= (and b!7297427 (not res!2951522)) b!7297430))

(assert (= (and b!7297430 (not res!2951523)) b!7297422))

(assert (= start!711494 b!7297429))

(assert (= (and start!711494 ((_ is Cons!70948) s!7854)) b!7297424))

(assert (= start!711494 b!7297432))

(declare-fun m!7969580 () Bool)

(assert (=> b!7297425 m!7969580))

(declare-fun m!7969582 () Bool)

(assert (=> b!7297427 m!7969582))

(declare-fun m!7969584 () Bool)

(assert (=> b!7297427 m!7969584))

(declare-fun m!7969586 () Bool)

(assert (=> b!7297427 m!7969586))

(assert (=> b!7297427 m!7969586))

(declare-fun m!7969588 () Bool)

(assert (=> b!7297427 m!7969588))

(declare-fun m!7969590 () Bool)

(assert (=> b!7297423 m!7969590))

(declare-fun m!7969592 () Bool)

(assert (=> b!7297431 m!7969592))

(declare-fun m!7969594 () Bool)

(assert (=> b!7297431 m!7969594))

(declare-fun m!7969596 () Bool)

(assert (=> b!7297431 m!7969596))

(assert (=> b!7297431 m!7969594))

(declare-fun m!7969598 () Bool)

(assert (=> b!7297431 m!7969598))

(assert (=> b!7297431 m!7969594))

(declare-fun m!7969600 () Bool)

(assert (=> b!7297431 m!7969600))

(declare-fun m!7969602 () Bool)

(assert (=> b!7297431 m!7969602))

(declare-fun m!7969604 () Bool)

(assert (=> b!7297431 m!7969604))

(declare-fun m!7969606 () Bool)

(assert (=> b!7297431 m!7969606))

(declare-fun m!7969608 () Bool)

(assert (=> b!7297431 m!7969608))

(declare-fun m!7969610 () Bool)

(assert (=> b!7297431 m!7969610))

(assert (=> b!7297431 m!7969594))

(declare-fun m!7969612 () Bool)

(assert (=> b!7297431 m!7969612))

(declare-fun m!7969614 () Bool)

(assert (=> start!711494 m!7969614))

(assert (=> start!711494 m!7969614))

(declare-fun m!7969616 () Bool)

(assert (=> start!711494 m!7969616))

(declare-fun m!7969618 () Bool)

(assert (=> start!711494 m!7969618))

(declare-fun m!7969620 () Bool)

(assert (=> start!711494 m!7969620))

(declare-fun m!7969622 () Bool)

(assert (=> b!7297422 m!7969622))

(assert (=> b!7297422 m!7969594))

(declare-fun m!7969624 () Bool)

(assert (=> b!7297422 m!7969624))

(declare-fun m!7969626 () Bool)

(assert (=> b!7297422 m!7969626))

(declare-fun m!7969628 () Bool)

(assert (=> b!7297422 m!7969628))

(assert (=> b!7297422 m!7969586))

(assert (=> b!7297422 m!7969586))

(declare-fun m!7969630 () Bool)

(assert (=> b!7297426 m!7969630))

(assert (=> b!7297426 m!7969596))

(declare-fun m!7969632 () Bool)

(assert (=> b!7297426 m!7969632))

(declare-fun m!7969634 () Bool)

(assert (=> b!7297430 m!7969634))

(declare-fun m!7969636 () Bool)

(assert (=> b!7297430 m!7969636))

(declare-fun m!7969638 () Bool)

(assert (=> b!7297430 m!7969638))

(declare-fun m!7969640 () Bool)

(assert (=> b!7297430 m!7969640))

(assert (=> b!7297430 m!7969586))

(assert (=> b!7297430 m!7969586))

(assert (=> b!7297430 m!7969586))

(declare-fun m!7969642 () Bool)

(assert (=> b!7297430 m!7969642))

(assert (=> b!7297430 m!7969586))

(assert (=> b!7297430 m!7969588))

(declare-fun m!7969644 () Bool)

(assert (=> b!7297430 m!7969644))

(assert (=> b!7297430 m!7969586))

(declare-fun m!7969646 () Bool)

(assert (=> b!7297421 m!7969646))

(declare-fun m!7969648 () Bool)

(assert (=> b!7297421 m!7969648))

(check-sat (not b!7297430) (not start!711494) (not b!7297421) tp_is_empty!47219 (not b!7297432) (not b!7297429) (not b!7297423) (not b!7297424) (not b!7297427) (not b!7297431) (not b!7297422) (not b!7297425) (not b!7297426))
(check-sat)
(get-model)

(declare-fun d!2267493 () Bool)

(assert (=> d!2267493 (= (isEmpty!40816 (exprs!8317 ct1!250)) ((_ is Nil!70947) (exprs!8317 ct1!250)))))

(assert (=> b!7297425 d!2267493))

(declare-fun d!2267501 () Bool)

(declare-fun choose!56564 ((InoxSet Context!15634) Int) (InoxSet Context!15634))

(assert (=> d!2267501 (= (flatMap!2972 lt!2599089 lambda!450875) (choose!56564 lt!2599089 lambda!450875))))

(declare-fun bs!1913271 () Bool)

(assert (= bs!1913271 d!2267501))

(declare-fun m!7969814 () Bool)

(assert (=> bs!1913271 m!7969814))

(assert (=> b!7297430 d!2267501))

(declare-fun d!2267503 () Bool)

(declare-fun c!1356533 () Bool)

(declare-fun isEmpty!40818 (List!71072) Bool)

(assert (=> d!2267503 (= c!1356533 (isEmpty!40818 (t!385148 s!7854)))))

(declare-fun e!4370782 () Bool)

(assert (=> d!2267503 (= (matchZipper!3781 lt!2599088 (t!385148 s!7854)) e!4370782)))

(declare-fun b!7297562 () Bool)

(declare-fun nullableZipper!3066 ((InoxSet Context!15634)) Bool)

(assert (=> b!7297562 (= e!4370782 (nullableZipper!3066 lt!2599088))))

(declare-fun b!7297563 () Bool)

(declare-fun head!15064 (List!71072) C!38028)

(declare-fun tail!14601 (List!71072) List!71072)

(assert (=> b!7297563 (= e!4370782 (matchZipper!3781 (derivationStepZipper!3610 lt!2599088 (head!15064 (t!385148 s!7854))) (tail!14601 (t!385148 s!7854))))))

(assert (= (and d!2267503 c!1356533) b!7297562))

(assert (= (and d!2267503 (not c!1356533)) b!7297563))

(declare-fun m!7969816 () Bool)

(assert (=> d!2267503 m!7969816))

(declare-fun m!7969818 () Bool)

(assert (=> b!7297562 m!7969818))

(declare-fun m!7969820 () Bool)

(assert (=> b!7297563 m!7969820))

(assert (=> b!7297563 m!7969820))

(declare-fun m!7969822 () Bool)

(assert (=> b!7297563 m!7969822))

(declare-fun m!7969824 () Bool)

(assert (=> b!7297563 m!7969824))

(assert (=> b!7297563 m!7969822))

(assert (=> b!7297563 m!7969824))

(declare-fun m!7969826 () Bool)

(assert (=> b!7297563 m!7969826))

(assert (=> b!7297430 d!2267503))

(declare-fun d!2267505 () Bool)

(declare-fun forall!17697 (List!71071 Int) Bool)

(assert (=> d!2267505 (forall!17697 (++!16767 lt!2599085 (exprs!8317 ct2!346)) lambda!450874)))

(declare-fun lt!2599138 () Unit!164352)

(declare-fun choose!56565 (List!71071 List!71071 Int) Unit!164352)

(assert (=> d!2267505 (= lt!2599138 (choose!56565 lt!2599085 (exprs!8317 ct2!346) lambda!450874))))

(assert (=> d!2267505 (forall!17697 lt!2599085 lambda!450874)))

(assert (=> d!2267505 (= (lemmaConcatPreservesForall!1624 lt!2599085 (exprs!8317 ct2!346) lambda!450874) lt!2599138)))

(declare-fun bs!1913272 () Bool)

(assert (= bs!1913272 d!2267505))

(assert (=> bs!1913272 m!7969582))

(assert (=> bs!1913272 m!7969582))

(declare-fun m!7969828 () Bool)

(assert (=> bs!1913272 m!7969828))

(declare-fun m!7969830 () Bool)

(assert (=> bs!1913272 m!7969830))

(declare-fun m!7969832 () Bool)

(assert (=> bs!1913272 m!7969832))

(assert (=> b!7297430 d!2267505))

(declare-fun bs!1913273 () Bool)

(declare-fun d!2267507 () Bool)

(assert (= bs!1913273 (and d!2267507 b!7297431)))

(declare-fun lambda!450891 () Int)

(assert (=> bs!1913273 (= lambda!450891 lambda!450874)))

(assert (=> d!2267507 (matchZipper!3781 (store ((as const (Array Context!15634 Bool)) false) (Context!15635 (++!16767 (exprs!8317 lt!2599113) (exprs!8317 ct2!346))) true) s!7854)))

(declare-fun lt!2599144 () Unit!164352)

(assert (=> d!2267507 (= lt!2599144 (lemmaConcatPreservesForall!1624 (exprs!8317 lt!2599113) (exprs!8317 ct2!346) lambda!450891))))

(declare-fun lt!2599143 () Unit!164352)

(declare-fun choose!56566 (Context!15634 Context!15634 List!71072) Unit!164352)

(assert (=> d!2267507 (= lt!2599143 (choose!56566 lt!2599113 ct2!346 s!7854))))

(assert (=> d!2267507 (matchZipper!3781 (store ((as const (Array Context!15634 Bool)) false) ct2!346 true) s!7854)))

(assert (=> d!2267507 (= (lemmaPrependingNullableCtxStillMatches!60 lt!2599113 ct2!346 s!7854) lt!2599143)))

(declare-fun bs!1913274 () Bool)

(assert (= bs!1913274 d!2267507))

(declare-fun m!7969834 () Bool)

(assert (=> bs!1913274 m!7969834))

(declare-fun m!7969836 () Bool)

(assert (=> bs!1913274 m!7969836))

(assert (=> bs!1913274 m!7969614))

(assert (=> bs!1913274 m!7969616))

(assert (=> bs!1913274 m!7969614))

(declare-fun m!7969838 () Bool)

(assert (=> bs!1913274 m!7969838))

(assert (=> bs!1913274 m!7969834))

(declare-fun m!7969840 () Bool)

(assert (=> bs!1913274 m!7969840))

(declare-fun m!7969842 () Bool)

(assert (=> bs!1913274 m!7969842))

(assert (=> b!7297430 d!2267507))

(declare-fun d!2267509 () Bool)

(declare-fun dynLambda!29012 (Int Context!15634) (InoxSet Context!15634))

(assert (=> d!2267509 (= (flatMap!2972 lt!2599089 lambda!450875) (dynLambda!29012 lambda!450875 lt!2599097))))

(declare-fun lt!2599147 () Unit!164352)

(declare-fun choose!56567 ((InoxSet Context!15634) Context!15634 Int) Unit!164352)

(assert (=> d!2267509 (= lt!2599147 (choose!56567 lt!2599089 lt!2599097 lambda!450875))))

(assert (=> d!2267509 (= lt!2599089 (store ((as const (Array Context!15634 Bool)) false) lt!2599097 true))))

(assert (=> d!2267509 (= (lemmaFlatMapOnSingletonSet!2370 lt!2599089 lt!2599097 lambda!450875) lt!2599147)))

(declare-fun b_lambda!281485 () Bool)

(assert (=> (not b_lambda!281485) (not d!2267509)))

(declare-fun bs!1913275 () Bool)

(assert (= bs!1913275 d!2267509))

(assert (=> bs!1913275 m!7969640))

(declare-fun m!7969844 () Bool)

(assert (=> bs!1913275 m!7969844))

(declare-fun m!7969846 () Bool)

(assert (=> bs!1913275 m!7969846))

(assert (=> bs!1913275 m!7969636))

(assert (=> b!7297430 d!2267509))

(declare-fun d!2267511 () Bool)

(declare-fun c!1356534 () Bool)

(assert (=> d!2267511 (= c!1356534 (isEmpty!40818 s!7854))))

(declare-fun e!4370783 () Bool)

(assert (=> d!2267511 (= (matchZipper!3781 lt!2599089 s!7854) e!4370783)))

(declare-fun b!7297564 () Bool)

(assert (=> b!7297564 (= e!4370783 (nullableZipper!3066 lt!2599089))))

(declare-fun b!7297565 () Bool)

(assert (=> b!7297565 (= e!4370783 (matchZipper!3781 (derivationStepZipper!3610 lt!2599089 (head!15064 s!7854)) (tail!14601 s!7854)))))

(assert (= (and d!2267511 c!1356534) b!7297564))

(assert (= (and d!2267511 (not c!1356534)) b!7297565))

(declare-fun m!7969848 () Bool)

(assert (=> d!2267511 m!7969848))

(declare-fun m!7969850 () Bool)

(assert (=> b!7297564 m!7969850))

(declare-fun m!7969852 () Bool)

(assert (=> b!7297565 m!7969852))

(assert (=> b!7297565 m!7969852))

(declare-fun m!7969854 () Bool)

(assert (=> b!7297565 m!7969854))

(declare-fun m!7969856 () Bool)

(assert (=> b!7297565 m!7969856))

(assert (=> b!7297565 m!7969854))

(assert (=> b!7297565 m!7969856))

(declare-fun m!7969858 () Bool)

(assert (=> b!7297565 m!7969858))

(assert (=> b!7297430 d!2267511))

(declare-fun b!7297576 () Bool)

(declare-fun e!4370792 () (InoxSet Context!15634))

(declare-fun e!4370790 () (InoxSet Context!15634))

(assert (=> b!7297576 (= e!4370792 e!4370790)))

(declare-fun c!1356539 () Bool)

(assert (=> b!7297576 (= c!1356539 ((_ is Cons!70947) (exprs!8317 lt!2599097)))))

(declare-fun bm!665032 () Bool)

(declare-fun call!665037 () (InoxSet Context!15634))

(assert (=> bm!665032 (= call!665037 (derivationStepZipperDown!2783 (h!77395 (exprs!8317 lt!2599097)) (Context!15635 (t!385147 (exprs!8317 lt!2599097))) (h!77396 s!7854)))))

(declare-fun b!7297577 () Bool)

(assert (=> b!7297577 (= e!4370792 ((_ map or) call!665037 (derivationStepZipperUp!2627 (Context!15635 (t!385147 (exprs!8317 lt!2599097))) (h!77396 s!7854))))))

(declare-fun b!7297578 () Bool)

(assert (=> b!7297578 (= e!4370790 ((as const (Array Context!15634 Bool)) false))))

(declare-fun d!2267513 () Bool)

(declare-fun c!1356540 () Bool)

(declare-fun e!4370791 () Bool)

(assert (=> d!2267513 (= c!1356540 e!4370791)))

(declare-fun res!2951547 () Bool)

(assert (=> d!2267513 (=> (not res!2951547) (not e!4370791))))

(assert (=> d!2267513 (= res!2951547 ((_ is Cons!70947) (exprs!8317 lt!2599097)))))

(assert (=> d!2267513 (= (derivationStepZipperUp!2627 lt!2599097 (h!77396 s!7854)) e!4370792)))

(declare-fun b!7297579 () Bool)

(assert (=> b!7297579 (= e!4370791 (nullable!8054 (h!77395 (exprs!8317 lt!2599097))))))

(declare-fun b!7297580 () Bool)

(assert (=> b!7297580 (= e!4370790 call!665037)))

(assert (= (and d!2267513 res!2951547) b!7297579))

(assert (= (and d!2267513 c!1356540) b!7297577))

(assert (= (and d!2267513 (not c!1356540)) b!7297576))

(assert (= (and b!7297576 c!1356539) b!7297580))

(assert (= (and b!7297576 (not c!1356539)) b!7297578))

(assert (= (or b!7297577 b!7297580) bm!665032))

(declare-fun m!7969860 () Bool)

(assert (=> bm!665032 m!7969860))

(declare-fun m!7969862 () Bool)

(assert (=> b!7297577 m!7969862))

(declare-fun m!7969864 () Bool)

(assert (=> b!7297579 m!7969864))

(assert (=> b!7297430 d!2267513))

(declare-fun b!7297603 () Bool)

(declare-fun e!4370806 () (InoxSet Context!15634))

(assert (=> b!7297603 (= e!4370806 (store ((as const (Array Context!15634 Bool)) false) lt!2599113 true))))

(declare-fun b!7297604 () Bool)

(declare-fun e!4370805 () (InoxSet Context!15634))

(assert (=> b!7297604 (= e!4370806 e!4370805)))

(declare-fun c!1356553 () Bool)

(assert (=> b!7297604 (= c!1356553 ((_ is Union!18877) (h!77395 (exprs!8317 ct1!250))))))

(declare-fun b!7297605 () Bool)

(declare-fun e!4370809 () Bool)

(assert (=> b!7297605 (= e!4370809 (nullable!8054 (regOne!38266 (h!77395 (exprs!8317 ct1!250)))))))

(declare-fun bm!665045 () Bool)

(declare-fun call!665050 () List!71071)

(declare-fun call!665054 () List!71071)

(assert (=> bm!665045 (= call!665050 call!665054)))

(declare-fun bm!665046 () Bool)

(declare-fun call!665055 () (InoxSet Context!15634))

(declare-fun call!665052 () (InoxSet Context!15634))

(assert (=> bm!665046 (= call!665055 call!665052)))

(declare-fun d!2267515 () Bool)

(declare-fun c!1356554 () Bool)

(assert (=> d!2267515 (= c!1356554 (and ((_ is ElementMatch!18877) (h!77395 (exprs!8317 ct1!250))) (= (c!1356483 (h!77395 (exprs!8317 ct1!250))) (h!77396 s!7854))))))

(assert (=> d!2267515 (= (derivationStepZipperDown!2783 (h!77395 (exprs!8317 ct1!250)) lt!2599113 (h!77396 s!7854)) e!4370806)))

(declare-fun b!7297606 () Bool)

(declare-fun call!665051 () (InoxSet Context!15634))

(assert (=> b!7297606 (= e!4370805 ((_ map or) call!665051 call!665052))))

(declare-fun c!1356551 () Bool)

(declare-fun bm!665047 () Bool)

(declare-fun c!1356555 () Bool)

(declare-fun $colon$colon!3005 (List!71071 Regex!18877) List!71071)

(assert (=> bm!665047 (= call!665054 ($colon$colon!3005 (exprs!8317 lt!2599113) (ite (or c!1356555 c!1356551) (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (h!77395 (exprs!8317 ct1!250)))))))

(declare-fun b!7297607 () Bool)

(declare-fun e!4370807 () (InoxSet Context!15634))

(declare-fun e!4370808 () (InoxSet Context!15634))

(assert (=> b!7297607 (= e!4370807 e!4370808)))

(assert (=> b!7297607 (= c!1356551 ((_ is Concat!27722) (h!77395 (exprs!8317 ct1!250))))))

(declare-fun b!7297608 () Bool)

(assert (=> b!7297608 (= c!1356555 e!4370809)))

(declare-fun res!2951550 () Bool)

(assert (=> b!7297608 (=> (not res!2951550) (not e!4370809))))

(assert (=> b!7297608 (= res!2951550 ((_ is Concat!27722) (h!77395 (exprs!8317 ct1!250))))))

(assert (=> b!7297608 (= e!4370805 e!4370807)))

(declare-fun b!7297609 () Bool)

(assert (=> b!7297609 (= e!4370807 ((_ map or) call!665051 call!665055))))

(declare-fun bm!665048 () Bool)

(assert (=> bm!665048 (= call!665051 (derivationStepZipperDown!2783 (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250)))) (ite c!1356553 lt!2599113 (Context!15635 call!665054)) (h!77396 s!7854)))))

(declare-fun b!7297610 () Bool)

(declare-fun e!4370810 () (InoxSet Context!15634))

(assert (=> b!7297610 (= e!4370810 ((as const (Array Context!15634 Bool)) false))))

(declare-fun b!7297611 () Bool)

(declare-fun c!1356552 () Bool)

(assert (=> b!7297611 (= c!1356552 ((_ is Star!18877) (h!77395 (exprs!8317 ct1!250))))))

(assert (=> b!7297611 (= e!4370808 e!4370810)))

(declare-fun bm!665049 () Bool)

(declare-fun call!665053 () (InoxSet Context!15634))

(assert (=> bm!665049 (= call!665053 call!665055)))

(declare-fun b!7297612 () Bool)

(assert (=> b!7297612 (= e!4370808 call!665053)))

(declare-fun bm!665050 () Bool)

(assert (=> bm!665050 (= call!665052 (derivationStepZipperDown!2783 (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250)))))) (ite (or c!1356553 c!1356555) lt!2599113 (Context!15635 call!665050)) (h!77396 s!7854)))))

(declare-fun b!7297613 () Bool)

(assert (=> b!7297613 (= e!4370810 call!665053)))

(assert (= (and d!2267515 c!1356554) b!7297603))

(assert (= (and d!2267515 (not c!1356554)) b!7297604))

(assert (= (and b!7297604 c!1356553) b!7297606))

(assert (= (and b!7297604 (not c!1356553)) b!7297608))

(assert (= (and b!7297608 res!2951550) b!7297605))

(assert (= (and b!7297608 c!1356555) b!7297609))

(assert (= (and b!7297608 (not c!1356555)) b!7297607))

(assert (= (and b!7297607 c!1356551) b!7297612))

(assert (= (and b!7297607 (not c!1356551)) b!7297611))

(assert (= (and b!7297611 c!1356552) b!7297613))

(assert (= (and b!7297611 (not c!1356552)) b!7297610))

(assert (= (or b!7297612 b!7297613) bm!665045))

(assert (= (or b!7297612 b!7297613) bm!665049))

(assert (= (or b!7297609 bm!665045) bm!665047))

(assert (= (or b!7297609 bm!665049) bm!665046))

(assert (= (or b!7297606 b!7297609) bm!665048))

(assert (= (or b!7297606 bm!665046) bm!665050))

(declare-fun m!7969866 () Bool)

(assert (=> bm!665050 m!7969866))

(declare-fun m!7969868 () Bool)

(assert (=> b!7297605 m!7969868))

(declare-fun m!7969870 () Bool)

(assert (=> b!7297603 m!7969870))

(declare-fun m!7969872 () Bool)

(assert (=> bm!665047 m!7969872))

(declare-fun m!7969874 () Bool)

(assert (=> bm!665048 m!7969874))

(assert (=> b!7297421 d!2267515))

(declare-fun b!7297614 () Bool)

(declare-fun e!4370813 () (InoxSet Context!15634))

(declare-fun e!4370811 () (InoxSet Context!15634))

(assert (=> b!7297614 (= e!4370813 e!4370811)))

(declare-fun c!1356556 () Bool)

(assert (=> b!7297614 (= c!1356556 ((_ is Cons!70947) (exprs!8317 lt!2599113)))))

(declare-fun bm!665051 () Bool)

(declare-fun call!665056 () (InoxSet Context!15634))

(assert (=> bm!665051 (= call!665056 (derivationStepZipperDown!2783 (h!77395 (exprs!8317 lt!2599113)) (Context!15635 (t!385147 (exprs!8317 lt!2599113))) (h!77396 s!7854)))))

(declare-fun b!7297615 () Bool)

(assert (=> b!7297615 (= e!4370813 ((_ map or) call!665056 (derivationStepZipperUp!2627 (Context!15635 (t!385147 (exprs!8317 lt!2599113))) (h!77396 s!7854))))))

(declare-fun b!7297616 () Bool)

(assert (=> b!7297616 (= e!4370811 ((as const (Array Context!15634 Bool)) false))))

(declare-fun d!2267517 () Bool)

(declare-fun c!1356557 () Bool)

(declare-fun e!4370812 () Bool)

(assert (=> d!2267517 (= c!1356557 e!4370812)))

(declare-fun res!2951551 () Bool)

(assert (=> d!2267517 (=> (not res!2951551) (not e!4370812))))

(assert (=> d!2267517 (= res!2951551 ((_ is Cons!70947) (exprs!8317 lt!2599113)))))

(assert (=> d!2267517 (= (derivationStepZipperUp!2627 lt!2599113 (h!77396 s!7854)) e!4370813)))

(declare-fun b!7297617 () Bool)

(assert (=> b!7297617 (= e!4370812 (nullable!8054 (h!77395 (exprs!8317 lt!2599113))))))

(declare-fun b!7297618 () Bool)

(assert (=> b!7297618 (= e!4370811 call!665056)))

(assert (= (and d!2267517 res!2951551) b!7297617))

(assert (= (and d!2267517 c!1356557) b!7297615))

(assert (= (and d!2267517 (not c!1356557)) b!7297614))

(assert (= (and b!7297614 c!1356556) b!7297618))

(assert (= (and b!7297614 (not c!1356556)) b!7297616))

(assert (= (or b!7297615 b!7297618) bm!665051))

(declare-fun m!7969876 () Bool)

(assert (=> bm!665051 m!7969876))

(declare-fun m!7969878 () Bool)

(assert (=> b!7297615 m!7969878))

(declare-fun m!7969880 () Bool)

(assert (=> b!7297617 m!7969880))

(assert (=> b!7297421 d!2267517))

(declare-fun d!2267519 () Bool)

(declare-fun c!1356558 () Bool)

(assert (=> d!2267519 (= c!1356558 (isEmpty!40818 s!7854))))

(declare-fun e!4370814 () Bool)

(assert (=> d!2267519 (= (matchZipper!3781 (store ((as const (Array Context!15634 Bool)) false) ct2!346 true) s!7854) e!4370814)))

(declare-fun b!7297619 () Bool)

(assert (=> b!7297619 (= e!4370814 (nullableZipper!3066 (store ((as const (Array Context!15634 Bool)) false) ct2!346 true)))))

(declare-fun b!7297620 () Bool)

(assert (=> b!7297620 (= e!4370814 (matchZipper!3781 (derivationStepZipper!3610 (store ((as const (Array Context!15634 Bool)) false) ct2!346 true) (head!15064 s!7854)) (tail!14601 s!7854)))))

(assert (= (and d!2267519 c!1356558) b!7297619))

(assert (= (and d!2267519 (not c!1356558)) b!7297620))

(assert (=> d!2267519 m!7969848))

(assert (=> b!7297619 m!7969614))

(declare-fun m!7969882 () Bool)

(assert (=> b!7297619 m!7969882))

(assert (=> b!7297620 m!7969852))

(assert (=> b!7297620 m!7969614))

(assert (=> b!7297620 m!7969852))

(declare-fun m!7969884 () Bool)

(assert (=> b!7297620 m!7969884))

(assert (=> b!7297620 m!7969856))

(assert (=> b!7297620 m!7969884))

(assert (=> b!7297620 m!7969856))

(declare-fun m!7969886 () Bool)

(assert (=> b!7297620 m!7969886))

(assert (=> start!711494 d!2267519))

(declare-fun bs!1913276 () Bool)

(declare-fun d!2267521 () Bool)

(assert (= bs!1913276 (and d!2267521 b!7297431)))

(declare-fun lambda!450894 () Int)

(assert (=> bs!1913276 (= lambda!450894 lambda!450874)))

(declare-fun bs!1913277 () Bool)

(assert (= bs!1913277 (and d!2267521 d!2267507)))

(assert (=> bs!1913277 (= lambda!450894 lambda!450891)))

(assert (=> d!2267521 (= (inv!90202 ct2!346) (forall!17697 (exprs!8317 ct2!346) lambda!450894))))

(declare-fun bs!1913278 () Bool)

(assert (= bs!1913278 d!2267521))

(declare-fun m!7969888 () Bool)

(assert (=> bs!1913278 m!7969888))

(assert (=> start!711494 d!2267521))

(declare-fun bs!1913279 () Bool)

(declare-fun d!2267523 () Bool)

(assert (= bs!1913279 (and d!2267523 b!7297431)))

(declare-fun lambda!450895 () Int)

(assert (=> bs!1913279 (= lambda!450895 lambda!450874)))

(declare-fun bs!1913280 () Bool)

(assert (= bs!1913280 (and d!2267523 d!2267507)))

(assert (=> bs!1913280 (= lambda!450895 lambda!450891)))

(declare-fun bs!1913281 () Bool)

(assert (= bs!1913281 (and d!2267523 d!2267521)))

(assert (=> bs!1913281 (= lambda!450895 lambda!450894)))

(assert (=> d!2267523 (= (inv!90202 ct1!250) (forall!17697 (exprs!8317 ct1!250) lambda!450895))))

(declare-fun bs!1913282 () Bool)

(assert (= bs!1913282 d!2267523))

(declare-fun m!7969890 () Bool)

(assert (=> bs!1913282 m!7969890))

(assert (=> start!711494 d!2267523))

(declare-fun d!2267525 () Bool)

(declare-fun nullableFct!3187 (Regex!18877) Bool)

(assert (=> d!2267525 (= (nullable!8054 (h!77395 (exprs!8317 ct1!250))) (nullableFct!3187 (h!77395 (exprs!8317 ct1!250))))))

(declare-fun bs!1913283 () Bool)

(assert (= bs!1913283 d!2267525))

(declare-fun m!7969892 () Bool)

(assert (=> bs!1913283 m!7969892))

(assert (=> b!7297426 d!2267525))

(declare-fun b!7297621 () Bool)

(declare-fun e!4370817 () (InoxSet Context!15634))

(declare-fun e!4370815 () (InoxSet Context!15634))

(assert (=> b!7297621 (= e!4370817 e!4370815)))

(declare-fun c!1356559 () Bool)

(assert (=> b!7297621 (= c!1356559 ((_ is Cons!70947) (exprs!8317 ct1!250)))))

(declare-fun bm!665052 () Bool)

(declare-fun call!665057 () (InoxSet Context!15634))

(assert (=> bm!665052 (= call!665057 (derivationStepZipperDown!2783 (h!77395 (exprs!8317 ct1!250)) (Context!15635 (t!385147 (exprs!8317 ct1!250))) (h!77396 s!7854)))))

(declare-fun b!7297622 () Bool)

(assert (=> b!7297622 (= e!4370817 ((_ map or) call!665057 (derivationStepZipperUp!2627 (Context!15635 (t!385147 (exprs!8317 ct1!250))) (h!77396 s!7854))))))

(declare-fun b!7297623 () Bool)

(assert (=> b!7297623 (= e!4370815 ((as const (Array Context!15634 Bool)) false))))

(declare-fun d!2267527 () Bool)

(declare-fun c!1356560 () Bool)

(declare-fun e!4370816 () Bool)

(assert (=> d!2267527 (= c!1356560 e!4370816)))

(declare-fun res!2951552 () Bool)

(assert (=> d!2267527 (=> (not res!2951552) (not e!4370816))))

(assert (=> d!2267527 (= res!2951552 ((_ is Cons!70947) (exprs!8317 ct1!250)))))

(assert (=> d!2267527 (= (derivationStepZipperUp!2627 ct1!250 (h!77396 s!7854)) e!4370817)))

(declare-fun b!7297624 () Bool)

(assert (=> b!7297624 (= e!4370816 (nullable!8054 (h!77395 (exprs!8317 ct1!250))))))

(declare-fun b!7297625 () Bool)

(assert (=> b!7297625 (= e!4370815 call!665057)))

(assert (= (and d!2267527 res!2951552) b!7297624))

(assert (= (and d!2267527 c!1356560) b!7297622))

(assert (= (and d!2267527 (not c!1356560)) b!7297621))

(assert (= (and b!7297621 c!1356559) b!7297625))

(assert (= (and b!7297621 (not c!1356559)) b!7297623))

(assert (= (or b!7297622 b!7297625) bm!665052))

(declare-fun m!7969894 () Bool)

(assert (=> bm!665052 m!7969894))

(declare-fun m!7969896 () Bool)

(assert (=> b!7297622 m!7969896))

(assert (=> b!7297624 m!7969630))

(assert (=> b!7297426 d!2267527))

(declare-fun d!2267529 () Bool)

(assert (=> d!2267529 (= (tail!14599 (exprs!8317 ct1!250)) (t!385147 (exprs!8317 ct1!250)))))

(assert (=> b!7297426 d!2267529))

(assert (=> b!7297431 d!2267527))

(declare-fun d!2267531 () Bool)

(assert (=> d!2267531 (forall!17697 (++!16767 (exprs!8317 ct1!250) (exprs!8317 ct2!346)) lambda!450874)))

(declare-fun lt!2599148 () Unit!164352)

(assert (=> d!2267531 (= lt!2599148 (choose!56565 (exprs!8317 ct1!250) (exprs!8317 ct2!346) lambda!450874))))

(assert (=> d!2267531 (forall!17697 (exprs!8317 ct1!250) lambda!450874)))

(assert (=> d!2267531 (= (lemmaConcatPreservesForall!1624 (exprs!8317 ct1!250) (exprs!8317 ct2!346) lambda!450874) lt!2599148)))

(declare-fun bs!1913284 () Bool)

(assert (= bs!1913284 d!2267531))

(assert (=> bs!1913284 m!7969610))

(assert (=> bs!1913284 m!7969610))

(declare-fun m!7969898 () Bool)

(assert (=> bs!1913284 m!7969898))

(declare-fun m!7969900 () Bool)

(assert (=> bs!1913284 m!7969900))

(declare-fun m!7969902 () Bool)

(assert (=> bs!1913284 m!7969902))

(assert (=> b!7297431 d!2267531))

(declare-fun d!2267533 () Bool)

(assert (=> d!2267533 (= (flatMap!2972 lt!2599099 lambda!450875) (choose!56564 lt!2599099 lambda!450875))))

(declare-fun bs!1913285 () Bool)

(assert (= bs!1913285 d!2267533))

(declare-fun m!7969904 () Bool)

(assert (=> bs!1913285 m!7969904))

(assert (=> b!7297431 d!2267533))

(declare-fun bs!1913286 () Bool)

(declare-fun d!2267535 () Bool)

(assert (= bs!1913286 (and d!2267535 b!7297431)))

(declare-fun lambda!450898 () Int)

(assert (=> bs!1913286 (= lambda!450898 lambda!450875)))

(assert (=> d!2267535 true))

(assert (=> d!2267535 (= (derivationStepZipper!3610 lt!2599082 (h!77396 s!7854)) (flatMap!2972 lt!2599082 lambda!450898))))

(declare-fun bs!1913287 () Bool)

(assert (= bs!1913287 d!2267535))

(declare-fun m!7969906 () Bool)

(assert (=> bs!1913287 m!7969906))

(assert (=> b!7297431 d!2267535))

(declare-fun b!7297628 () Bool)

(declare-fun e!4370820 () (InoxSet Context!15634))

(declare-fun e!4370818 () (InoxSet Context!15634))

(assert (=> b!7297628 (= e!4370820 e!4370818)))

(declare-fun c!1356563 () Bool)

(assert (=> b!7297628 (= c!1356563 ((_ is Cons!70947) (exprs!8317 lt!2599094)))))

(declare-fun bm!665053 () Bool)

(declare-fun call!665058 () (InoxSet Context!15634))

(assert (=> bm!665053 (= call!665058 (derivationStepZipperDown!2783 (h!77395 (exprs!8317 lt!2599094)) (Context!15635 (t!385147 (exprs!8317 lt!2599094))) (h!77396 s!7854)))))

(declare-fun b!7297629 () Bool)

(assert (=> b!7297629 (= e!4370820 ((_ map or) call!665058 (derivationStepZipperUp!2627 (Context!15635 (t!385147 (exprs!8317 lt!2599094))) (h!77396 s!7854))))))

(declare-fun b!7297630 () Bool)

(assert (=> b!7297630 (= e!4370818 ((as const (Array Context!15634 Bool)) false))))

(declare-fun d!2267537 () Bool)

(declare-fun c!1356564 () Bool)

(declare-fun e!4370819 () Bool)

(assert (=> d!2267537 (= c!1356564 e!4370819)))

(declare-fun res!2951553 () Bool)

(assert (=> d!2267537 (=> (not res!2951553) (not e!4370819))))

(assert (=> d!2267537 (= res!2951553 ((_ is Cons!70947) (exprs!8317 lt!2599094)))))

(assert (=> d!2267537 (= (derivationStepZipperUp!2627 lt!2599094 (h!77396 s!7854)) e!4370820)))

(declare-fun b!7297631 () Bool)

(assert (=> b!7297631 (= e!4370819 (nullable!8054 (h!77395 (exprs!8317 lt!2599094))))))

(declare-fun b!7297632 () Bool)

(assert (=> b!7297632 (= e!4370818 call!665058)))

(assert (= (and d!2267537 res!2951553) b!7297631))

(assert (= (and d!2267537 c!1356564) b!7297629))

(assert (= (and d!2267537 (not c!1356564)) b!7297628))

(assert (= (and b!7297628 c!1356563) b!7297632))

(assert (= (and b!7297628 (not c!1356563)) b!7297630))

(assert (= (or b!7297629 b!7297632) bm!665053))

(declare-fun m!7969908 () Bool)

(assert (=> bm!665053 m!7969908))

(declare-fun m!7969910 () Bool)

(assert (=> b!7297629 m!7969910))

(declare-fun m!7969912 () Bool)

(assert (=> b!7297631 m!7969912))

(assert (=> b!7297431 d!2267537))

(declare-fun b!7297644 () Bool)

(declare-fun lt!2599151 () List!71071)

(declare-fun e!4370826 () Bool)

(assert (=> b!7297644 (= e!4370826 (or (not (= (exprs!8317 ct2!346) Nil!70947)) (= lt!2599151 (exprs!8317 ct1!250))))))

(declare-fun b!7297642 () Bool)

(declare-fun e!4370825 () List!71071)

(assert (=> b!7297642 (= e!4370825 (Cons!70947 (h!77395 (exprs!8317 ct1!250)) (++!16767 (t!385147 (exprs!8317 ct1!250)) (exprs!8317 ct2!346))))))

(declare-fun d!2267539 () Bool)

(assert (=> d!2267539 e!4370826))

(declare-fun res!2951559 () Bool)

(assert (=> d!2267539 (=> (not res!2951559) (not e!4370826))))

(declare-fun content!14824 (List!71071) (InoxSet Regex!18877))

(assert (=> d!2267539 (= res!2951559 (= (content!14824 lt!2599151) ((_ map or) (content!14824 (exprs!8317 ct1!250)) (content!14824 (exprs!8317 ct2!346)))))))

(assert (=> d!2267539 (= lt!2599151 e!4370825)))

(declare-fun c!1356567 () Bool)

(assert (=> d!2267539 (= c!1356567 ((_ is Nil!70947) (exprs!8317 ct1!250)))))

(assert (=> d!2267539 (= (++!16767 (exprs!8317 ct1!250) (exprs!8317 ct2!346)) lt!2599151)))

(declare-fun b!7297643 () Bool)

(declare-fun res!2951558 () Bool)

(assert (=> b!7297643 (=> (not res!2951558) (not e!4370826))))

(declare-fun size!41870 (List!71071) Int)

(assert (=> b!7297643 (= res!2951558 (= (size!41870 lt!2599151) (+ (size!41870 (exprs!8317 ct1!250)) (size!41870 (exprs!8317 ct2!346)))))))

(declare-fun b!7297641 () Bool)

(assert (=> b!7297641 (= e!4370825 (exprs!8317 ct2!346))))

(assert (= (and d!2267539 c!1356567) b!7297641))

(assert (= (and d!2267539 (not c!1356567)) b!7297642))

(assert (= (and d!2267539 res!2951559) b!7297643))

(assert (= (and b!7297643 res!2951558) b!7297644))

(declare-fun m!7969914 () Bool)

(assert (=> b!7297642 m!7969914))

(declare-fun m!7969916 () Bool)

(assert (=> d!2267539 m!7969916))

(declare-fun m!7969918 () Bool)

(assert (=> d!2267539 m!7969918))

(declare-fun m!7969920 () Bool)

(assert (=> d!2267539 m!7969920))

(declare-fun m!7969922 () Bool)

(assert (=> b!7297643 m!7969922))

(declare-fun m!7969924 () Bool)

(assert (=> b!7297643 m!7969924))

(declare-fun m!7969926 () Bool)

(assert (=> b!7297643 m!7969926))

(assert (=> b!7297431 d!2267539))

(declare-fun d!2267541 () Bool)

(assert (=> d!2267541 (= (flatMap!2972 lt!2599082 lambda!450875) (dynLambda!29012 lambda!450875 lt!2599094))))

(declare-fun lt!2599152 () Unit!164352)

(assert (=> d!2267541 (= lt!2599152 (choose!56567 lt!2599082 lt!2599094 lambda!450875))))

(assert (=> d!2267541 (= lt!2599082 (store ((as const (Array Context!15634 Bool)) false) lt!2599094 true))))

(assert (=> d!2267541 (= (lemmaFlatMapOnSingletonSet!2370 lt!2599082 lt!2599094 lambda!450875) lt!2599152)))

(declare-fun b_lambda!281487 () Bool)

(assert (=> (not b_lambda!281487) (not d!2267541)))

(declare-fun bs!1913288 () Bool)

(assert (= bs!1913288 d!2267541))

(assert (=> bs!1913288 m!7969612))

(declare-fun m!7969928 () Bool)

(assert (=> bs!1913288 m!7969928))

(declare-fun m!7969930 () Bool)

(assert (=> bs!1913288 m!7969930))

(assert (=> bs!1913288 m!7969598))

(assert (=> b!7297431 d!2267541))

(declare-fun d!2267543 () Bool)

(assert (=> d!2267543 (= (flatMap!2972 lt!2599099 lambda!450875) (dynLambda!29012 lambda!450875 ct1!250))))

(declare-fun lt!2599153 () Unit!164352)

(assert (=> d!2267543 (= lt!2599153 (choose!56567 lt!2599099 ct1!250 lambda!450875))))

(assert (=> d!2267543 (= lt!2599099 (store ((as const (Array Context!15634 Bool)) false) ct1!250 true))))

(assert (=> d!2267543 (= (lemmaFlatMapOnSingletonSet!2370 lt!2599099 ct1!250 lambda!450875) lt!2599153)))

(declare-fun b_lambda!281489 () Bool)

(assert (=> (not b_lambda!281489) (not d!2267543)))

(declare-fun bs!1913289 () Bool)

(assert (= bs!1913289 d!2267543))

(assert (=> bs!1913289 m!7969604))

(declare-fun m!7969932 () Bool)

(assert (=> bs!1913289 m!7969932))

(declare-fun m!7969934 () Bool)

(assert (=> bs!1913289 m!7969934))

(assert (=> bs!1913289 m!7969606))

(assert (=> b!7297431 d!2267543))

(declare-fun d!2267545 () Bool)

(assert (=> d!2267545 (= (flatMap!2972 lt!2599082 lambda!450875) (choose!56564 lt!2599082 lambda!450875))))

(declare-fun bs!1913290 () Bool)

(assert (= bs!1913290 d!2267545))

(declare-fun m!7969936 () Bool)

(assert (=> bs!1913290 m!7969936))

(assert (=> b!7297431 d!2267545))

(declare-fun d!2267547 () Bool)

(declare-fun c!1356568 () Bool)

(assert (=> d!2267547 (= c!1356568 (isEmpty!40818 s!7854))))

(declare-fun e!4370827 () Bool)

(assert (=> d!2267547 (= (matchZipper!3781 lt!2599082 s!7854) e!4370827)))

(declare-fun b!7297645 () Bool)

(assert (=> b!7297645 (= e!4370827 (nullableZipper!3066 lt!2599082))))

(declare-fun b!7297646 () Bool)

(assert (=> b!7297646 (= e!4370827 (matchZipper!3781 (derivationStepZipper!3610 lt!2599082 (head!15064 s!7854)) (tail!14601 s!7854)))))

(assert (= (and d!2267547 c!1356568) b!7297645))

(assert (= (and d!2267547 (not c!1356568)) b!7297646))

(assert (=> d!2267547 m!7969848))

(declare-fun m!7969938 () Bool)

(assert (=> b!7297645 m!7969938))

(assert (=> b!7297646 m!7969852))

(assert (=> b!7297646 m!7969852))

(declare-fun m!7969940 () Bool)

(assert (=> b!7297646 m!7969940))

(assert (=> b!7297646 m!7969856))

(assert (=> b!7297646 m!7969940))

(assert (=> b!7297646 m!7969856))

(declare-fun m!7969942 () Bool)

(assert (=> b!7297646 m!7969942))

(assert (=> b!7297422 d!2267547))

(assert (=> b!7297422 d!2267505))

(assert (=> b!7297422 d!2267531))

(declare-fun d!2267549 () Bool)

(declare-fun c!1356569 () Bool)

(assert (=> d!2267549 (= c!1356569 (isEmpty!40818 (t!385148 s!7854)))))

(declare-fun e!4370828 () Bool)

(assert (=> d!2267549 (= (matchZipper!3781 lt!2599112 (t!385148 s!7854)) e!4370828)))

(declare-fun b!7297647 () Bool)

(assert (=> b!7297647 (= e!4370828 (nullableZipper!3066 lt!2599112))))

(declare-fun b!7297648 () Bool)

(assert (=> b!7297648 (= e!4370828 (matchZipper!3781 (derivationStepZipper!3610 lt!2599112 (head!15064 (t!385148 s!7854))) (tail!14601 (t!385148 s!7854))))))

(assert (= (and d!2267549 c!1356569) b!7297647))

(assert (= (and d!2267549 (not c!1356569)) b!7297648))

(assert (=> d!2267549 m!7969816))

(declare-fun m!7969944 () Bool)

(assert (=> b!7297647 m!7969944))

(assert (=> b!7297648 m!7969820))

(assert (=> b!7297648 m!7969820))

(declare-fun m!7969946 () Bool)

(assert (=> b!7297648 m!7969946))

(assert (=> b!7297648 m!7969824))

(assert (=> b!7297648 m!7969946))

(assert (=> b!7297648 m!7969824))

(declare-fun m!7969948 () Bool)

(assert (=> b!7297648 m!7969948))

(assert (=> b!7297422 d!2267549))

(declare-fun d!2267551 () Bool)

(declare-fun c!1356570 () Bool)

(assert (=> d!2267551 (= c!1356570 (isEmpty!40818 (t!385148 s!7854)))))

(declare-fun e!4370829 () Bool)

(assert (=> d!2267551 (= (matchZipper!3781 lt!2599095 (t!385148 s!7854)) e!4370829)))

(declare-fun b!7297649 () Bool)

(assert (=> b!7297649 (= e!4370829 (nullableZipper!3066 lt!2599095))))

(declare-fun b!7297650 () Bool)

(assert (=> b!7297650 (= e!4370829 (matchZipper!3781 (derivationStepZipper!3610 lt!2599095 (head!15064 (t!385148 s!7854))) (tail!14601 (t!385148 s!7854))))))

(assert (= (and d!2267551 c!1356570) b!7297649))

(assert (= (and d!2267551 (not c!1356570)) b!7297650))

(assert (=> d!2267551 m!7969816))

(declare-fun m!7969950 () Bool)

(assert (=> b!7297649 m!7969950))

(assert (=> b!7297650 m!7969820))

(assert (=> b!7297650 m!7969820))

(declare-fun m!7969952 () Bool)

(assert (=> b!7297650 m!7969952))

(assert (=> b!7297650 m!7969824))

(assert (=> b!7297650 m!7969952))

(assert (=> b!7297650 m!7969824))

(declare-fun m!7969954 () Bool)

(assert (=> b!7297650 m!7969954))

(assert (=> b!7297422 d!2267551))

(declare-fun d!2267553 () Bool)

(declare-fun e!4370832 () Bool)

(assert (=> d!2267553 (= (matchZipper!3781 ((_ map or) lt!2599095 lt!2599088) (t!385148 s!7854)) e!4370832)))

(declare-fun res!2951562 () Bool)

(assert (=> d!2267553 (=> res!2951562 e!4370832)))

(assert (=> d!2267553 (= res!2951562 (matchZipper!3781 lt!2599095 (t!385148 s!7854)))))

(declare-fun lt!2599156 () Unit!164352)

(declare-fun choose!56568 ((InoxSet Context!15634) (InoxSet Context!15634) List!71072) Unit!164352)

(assert (=> d!2267553 (= lt!2599156 (choose!56568 lt!2599095 lt!2599088 (t!385148 s!7854)))))

(assert (=> d!2267553 (= (lemmaZipperConcatMatchesSameAsBothZippers!1784 lt!2599095 lt!2599088 (t!385148 s!7854)) lt!2599156)))

(declare-fun b!7297653 () Bool)

(assert (=> b!7297653 (= e!4370832 (matchZipper!3781 lt!2599088 (t!385148 s!7854)))))

(assert (= (and d!2267553 (not res!2951562)) b!7297653))

(declare-fun m!7969956 () Bool)

(assert (=> d!2267553 m!7969956))

(assert (=> d!2267553 m!7969624))

(declare-fun m!7969958 () Bool)

(assert (=> d!2267553 m!7969958))

(assert (=> b!7297653 m!7969638))

(assert (=> b!7297422 d!2267553))

(assert (=> b!7297427 d!2267505))

(assert (=> b!7297427 d!2267513))

(declare-fun e!4370834 () Bool)

(declare-fun lt!2599157 () List!71071)

(declare-fun b!7297657 () Bool)

(assert (=> b!7297657 (= e!4370834 (or (not (= (exprs!8317 ct2!346) Nil!70947)) (= lt!2599157 lt!2599085)))))

(declare-fun b!7297655 () Bool)

(declare-fun e!4370833 () List!71071)

(assert (=> b!7297655 (= e!4370833 (Cons!70947 (h!77395 lt!2599085) (++!16767 (t!385147 lt!2599085) (exprs!8317 ct2!346))))))

(declare-fun d!2267555 () Bool)

(assert (=> d!2267555 e!4370834))

(declare-fun res!2951564 () Bool)

(assert (=> d!2267555 (=> (not res!2951564) (not e!4370834))))

(assert (=> d!2267555 (= res!2951564 (= (content!14824 lt!2599157) ((_ map or) (content!14824 lt!2599085) (content!14824 (exprs!8317 ct2!346)))))))

(assert (=> d!2267555 (= lt!2599157 e!4370833)))

(declare-fun c!1356571 () Bool)

(assert (=> d!2267555 (= c!1356571 ((_ is Nil!70947) lt!2599085))))

(assert (=> d!2267555 (= (++!16767 lt!2599085 (exprs!8317 ct2!346)) lt!2599157)))

(declare-fun b!7297656 () Bool)

(declare-fun res!2951563 () Bool)

(assert (=> b!7297656 (=> (not res!2951563) (not e!4370834))))

(assert (=> b!7297656 (= res!2951563 (= (size!41870 lt!2599157) (+ (size!41870 lt!2599085) (size!41870 (exprs!8317 ct2!346)))))))

(declare-fun b!7297654 () Bool)

(assert (=> b!7297654 (= e!4370833 (exprs!8317 ct2!346))))

(assert (= (and d!2267555 c!1356571) b!7297654))

(assert (= (and d!2267555 (not c!1356571)) b!7297655))

(assert (= (and d!2267555 res!2951564) b!7297656))

(assert (= (and b!7297656 res!2951563) b!7297657))

(declare-fun m!7969960 () Bool)

(assert (=> b!7297655 m!7969960))

(declare-fun m!7969962 () Bool)

(assert (=> d!2267555 m!7969962))

(declare-fun m!7969964 () Bool)

(assert (=> d!2267555 m!7969964))

(assert (=> d!2267555 m!7969920))

(declare-fun m!7969966 () Bool)

(assert (=> b!7297656 m!7969966))

(declare-fun m!7969968 () Bool)

(assert (=> b!7297656 m!7969968))

(assert (=> b!7297656 m!7969926))

(assert (=> b!7297427 d!2267555))

(declare-fun b!7297658 () Bool)

(declare-fun e!4370836 () (InoxSet Context!15634))

(assert (=> b!7297658 (= e!4370836 (store ((as const (Array Context!15634 Bool)) false) lt!2599097 true))))

(declare-fun b!7297659 () Bool)

(declare-fun e!4370835 () (InoxSet Context!15634))

(assert (=> b!7297659 (= e!4370836 e!4370835)))

(declare-fun c!1356574 () Bool)

(assert (=> b!7297659 (= c!1356574 ((_ is Union!18877) (h!77395 (exprs!8317 ct1!250))))))

(declare-fun b!7297660 () Bool)

(declare-fun e!4370839 () Bool)

(assert (=> b!7297660 (= e!4370839 (nullable!8054 (regOne!38266 (h!77395 (exprs!8317 ct1!250)))))))

(declare-fun bm!665054 () Bool)

(declare-fun call!665059 () List!71071)

(declare-fun call!665063 () List!71071)

(assert (=> bm!665054 (= call!665059 call!665063)))

(declare-fun bm!665055 () Bool)

(declare-fun call!665064 () (InoxSet Context!15634))

(declare-fun call!665061 () (InoxSet Context!15634))

(assert (=> bm!665055 (= call!665064 call!665061)))

(declare-fun d!2267557 () Bool)

(declare-fun c!1356575 () Bool)

(assert (=> d!2267557 (= c!1356575 (and ((_ is ElementMatch!18877) (h!77395 (exprs!8317 ct1!250))) (= (c!1356483 (h!77395 (exprs!8317 ct1!250))) (h!77396 s!7854))))))

(assert (=> d!2267557 (= (derivationStepZipperDown!2783 (h!77395 (exprs!8317 ct1!250)) lt!2599097 (h!77396 s!7854)) e!4370836)))

(declare-fun b!7297661 () Bool)

(declare-fun call!665060 () (InoxSet Context!15634))

(assert (=> b!7297661 (= e!4370835 ((_ map or) call!665060 call!665061))))

(declare-fun bm!665056 () Bool)

(declare-fun c!1356572 () Bool)

(declare-fun c!1356576 () Bool)

(assert (=> bm!665056 (= call!665063 ($colon$colon!3005 (exprs!8317 lt!2599097) (ite (or c!1356576 c!1356572) (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (h!77395 (exprs!8317 ct1!250)))))))

(declare-fun b!7297662 () Bool)

(declare-fun e!4370837 () (InoxSet Context!15634))

(declare-fun e!4370838 () (InoxSet Context!15634))

(assert (=> b!7297662 (= e!4370837 e!4370838)))

(assert (=> b!7297662 (= c!1356572 ((_ is Concat!27722) (h!77395 (exprs!8317 ct1!250))))))

(declare-fun b!7297663 () Bool)

(assert (=> b!7297663 (= c!1356576 e!4370839)))

(declare-fun res!2951565 () Bool)

(assert (=> b!7297663 (=> (not res!2951565) (not e!4370839))))

(assert (=> b!7297663 (= res!2951565 ((_ is Concat!27722) (h!77395 (exprs!8317 ct1!250))))))

(assert (=> b!7297663 (= e!4370835 e!4370837)))

(declare-fun b!7297664 () Bool)

(assert (=> b!7297664 (= e!4370837 ((_ map or) call!665060 call!665064))))

(declare-fun bm!665057 () Bool)

(assert (=> bm!665057 (= call!665060 (derivationStepZipperDown!2783 (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250)))) (ite c!1356574 lt!2599097 (Context!15635 call!665063)) (h!77396 s!7854)))))

(declare-fun b!7297665 () Bool)

(declare-fun e!4370840 () (InoxSet Context!15634))

(assert (=> b!7297665 (= e!4370840 ((as const (Array Context!15634 Bool)) false))))

(declare-fun b!7297666 () Bool)

(declare-fun c!1356573 () Bool)

(assert (=> b!7297666 (= c!1356573 ((_ is Star!18877) (h!77395 (exprs!8317 ct1!250))))))

(assert (=> b!7297666 (= e!4370838 e!4370840)))

(declare-fun bm!665058 () Bool)

(declare-fun call!665062 () (InoxSet Context!15634))

(assert (=> bm!665058 (= call!665062 call!665064)))

(declare-fun b!7297667 () Bool)

(assert (=> b!7297667 (= e!4370838 call!665062)))

(declare-fun bm!665059 () Bool)

(assert (=> bm!665059 (= call!665061 (derivationStepZipperDown!2783 (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250)))))) (ite (or c!1356574 c!1356576) lt!2599097 (Context!15635 call!665059)) (h!77396 s!7854)))))

(declare-fun b!7297668 () Bool)

(assert (=> b!7297668 (= e!4370840 call!665062)))

(assert (= (and d!2267557 c!1356575) b!7297658))

(assert (= (and d!2267557 (not c!1356575)) b!7297659))

(assert (= (and b!7297659 c!1356574) b!7297661))

(assert (= (and b!7297659 (not c!1356574)) b!7297663))

(assert (= (and b!7297663 res!2951565) b!7297660))

(assert (= (and b!7297663 c!1356576) b!7297664))

(assert (= (and b!7297663 (not c!1356576)) b!7297662))

(assert (= (and b!7297662 c!1356572) b!7297667))

(assert (= (and b!7297662 (not c!1356572)) b!7297666))

(assert (= (and b!7297666 c!1356573) b!7297668))

(assert (= (and b!7297666 (not c!1356573)) b!7297665))

(assert (= (or b!7297667 b!7297668) bm!665054))

(assert (= (or b!7297667 b!7297668) bm!665058))

(assert (= (or b!7297664 bm!665054) bm!665056))

(assert (= (or b!7297664 bm!665058) bm!665055))

(assert (= (or b!7297661 b!7297664) bm!665057))

(assert (= (or b!7297661 bm!665055) bm!665059))

(declare-fun m!7969970 () Bool)

(assert (=> bm!665059 m!7969970))

(assert (=> b!7297660 m!7969868))

(assert (=> b!7297658 m!7969636))

(declare-fun m!7969972 () Bool)

(assert (=> bm!665056 m!7969972))

(declare-fun m!7969974 () Bool)

(assert (=> bm!665057 m!7969974))

(assert (=> b!7297427 d!2267557))

(declare-fun bs!1913291 () Bool)

(declare-fun d!2267559 () Bool)

(assert (= bs!1913291 (and d!2267559 b!7297431)))

(declare-fun lambda!450901 () Int)

(assert (=> bs!1913291 (not (= lambda!450901 lambda!450874))))

(declare-fun bs!1913292 () Bool)

(assert (= bs!1913292 (and d!2267559 d!2267507)))

(assert (=> bs!1913292 (not (= lambda!450901 lambda!450891))))

(declare-fun bs!1913293 () Bool)

(assert (= bs!1913293 (and d!2267559 d!2267521)))

(assert (=> bs!1913293 (not (= lambda!450901 lambda!450894))))

(declare-fun bs!1913294 () Bool)

(assert (= bs!1913294 (and d!2267559 d!2267523)))

(assert (=> bs!1913294 (not (= lambda!450901 lambda!450895))))

(assert (=> d!2267559 (= (nullableContext!367 ct1!250) (forall!17697 (exprs!8317 ct1!250) lambda!450901))))

(declare-fun bs!1913295 () Bool)

(assert (= bs!1913295 d!2267559))

(declare-fun m!7969976 () Bool)

(assert (=> bs!1913295 m!7969976))

(assert (=> b!7297423 d!2267559))

(declare-fun b!7297673 () Bool)

(declare-fun e!4370843 () Bool)

(declare-fun tp!2062588 () Bool)

(declare-fun tp!2062589 () Bool)

(assert (=> b!7297673 (= e!4370843 (and tp!2062588 tp!2062589))))

(assert (=> b!7297432 (= tp!2062572 e!4370843)))

(assert (= (and b!7297432 ((_ is Cons!70947) (exprs!8317 ct1!250))) b!7297673))

(declare-fun b!7297678 () Bool)

(declare-fun e!4370846 () Bool)

(declare-fun tp!2062592 () Bool)

(assert (=> b!7297678 (= e!4370846 (and tp_is_empty!47219 tp!2062592))))

(assert (=> b!7297424 (= tp!2062570 e!4370846)))

(assert (= (and b!7297424 ((_ is Cons!70948) (t!385148 s!7854))) b!7297678))

(declare-fun b!7297679 () Bool)

(declare-fun e!4370847 () Bool)

(declare-fun tp!2062593 () Bool)

(declare-fun tp!2062594 () Bool)

(assert (=> b!7297679 (= e!4370847 (and tp!2062593 tp!2062594))))

(assert (=> b!7297429 (= tp!2062571 e!4370847)))

(assert (= (and b!7297429 ((_ is Cons!70947) (exprs!8317 ct2!346))) b!7297679))

(declare-fun b_lambda!281491 () Bool)

(assert (= b_lambda!281487 (or b!7297431 b_lambda!281491)))

(declare-fun bs!1913296 () Bool)

(declare-fun d!2267561 () Bool)

(assert (= bs!1913296 (and d!2267561 b!7297431)))

(assert (=> bs!1913296 (= (dynLambda!29012 lambda!450875 lt!2599094) (derivationStepZipperUp!2627 lt!2599094 (h!77396 s!7854)))))

(assert (=> bs!1913296 m!7969608))

(assert (=> d!2267541 d!2267561))

(declare-fun b_lambda!281493 () Bool)

(assert (= b_lambda!281485 (or b!7297431 b_lambda!281493)))

(declare-fun bs!1913297 () Bool)

(declare-fun d!2267563 () Bool)

(assert (= bs!1913297 (and d!2267563 b!7297431)))

(assert (=> bs!1913297 (= (dynLambda!29012 lambda!450875 lt!2599097) (derivationStepZipperUp!2627 lt!2599097 (h!77396 s!7854)))))

(assert (=> bs!1913297 m!7969588))

(assert (=> d!2267509 d!2267563))

(declare-fun b_lambda!281495 () Bool)

(assert (= b_lambda!281489 (or b!7297431 b_lambda!281495)))

(declare-fun bs!1913298 () Bool)

(declare-fun d!2267565 () Bool)

(assert (= bs!1913298 (and d!2267565 b!7297431)))

(assert (=> bs!1913298 (= (dynLambda!29012 lambda!450875 ct1!250) (derivationStepZipperUp!2627 ct1!250 (h!77396 s!7854)))))

(assert (=> bs!1913298 m!7969596))

(assert (=> d!2267543 d!2267565))

(check-sat (not b_lambda!281493) (not b!7297564) tp_is_empty!47219 (not b!7297629) (not b!7297605) (not b!7297579) (not bm!665052) (not b!7297660) (not b_lambda!281495) (not d!2267551) (not d!2267533) (not bm!665053) (not bm!665032) (not d!2267507) (not d!2267523) (not b!7297642) (not d!2267503) (not b!7297648) (not bm!665057) (not bs!1913297) (not b!7297622) (not d!2267501) (not bm!665050) (not d!2267539) (not b!7297643) (not b!7297631) (not b!7297615) (not b!7297673) (not d!2267521) (not b!7297624) (not b!7297647) (not d!2267545) (not bs!1913298) (not d!2267559) (not d!2267525) (not d!2267549) (not b!7297655) (not bm!665051) (not d!2267519) (not d!2267541) (not b!7297617) (not d!2267535) (not b!7297679) (not bm!665056) (not b!7297565) (not d!2267505) (not b!7297619) (not bm!665059) (not d!2267509) (not b!7297678) (not d!2267543) (not b_lambda!281491) (not bs!1913296) (not d!2267547) (not b!7297645) (not b!7297650) (not d!2267553) (not bm!665048) (not b!7297649) (not b!7297653) (not bm!665047) (not b!7297562) (not b!7297646) (not d!2267511) (not b!7297620) (not b!7297577) (not d!2267531) (not d!2267555) (not b!7297656) (not b!7297563))
(check-sat)
(get-model)

(declare-fun d!2267735 () Bool)

(assert (=> d!2267735 (= (nullable!8054 (regOne!38266 (h!77395 (exprs!8317 ct1!250)))) (nullableFct!3187 (regOne!38266 (h!77395 (exprs!8317 ct1!250)))))))

(declare-fun bs!1913377 () Bool)

(assert (= bs!1913377 d!2267735))

(declare-fun m!7970282 () Bool)

(assert (=> bs!1913377 m!7970282))

(assert (=> b!7297660 d!2267735))

(assert (=> bs!1913297 d!2267513))

(declare-fun b!7297912 () Bool)

(declare-fun e!4370988 () (InoxSet Context!15634))

(assert (=> b!7297912 (= e!4370988 (store ((as const (Array Context!15634 Bool)) false) (Context!15635 (t!385147 (exprs!8317 lt!2599113))) true))))

(declare-fun b!7297913 () Bool)

(declare-fun e!4370987 () (InoxSet Context!15634))

(assert (=> b!7297913 (= e!4370988 e!4370987)))

(declare-fun c!1356658 () Bool)

(assert (=> b!7297913 (= c!1356658 ((_ is Union!18877) (h!77395 (exprs!8317 lt!2599113))))))

(declare-fun b!7297914 () Bool)

(declare-fun e!4370991 () Bool)

(assert (=> b!7297914 (= e!4370991 (nullable!8054 (regOne!38266 (h!77395 (exprs!8317 lt!2599113)))))))

(declare-fun bm!665118 () Bool)

(declare-fun call!665123 () List!71071)

(declare-fun call!665127 () List!71071)

(assert (=> bm!665118 (= call!665123 call!665127)))

(declare-fun bm!665119 () Bool)

(declare-fun call!665128 () (InoxSet Context!15634))

(declare-fun call!665125 () (InoxSet Context!15634))

(assert (=> bm!665119 (= call!665128 call!665125)))

(declare-fun d!2267737 () Bool)

(declare-fun c!1356659 () Bool)

(assert (=> d!2267737 (= c!1356659 (and ((_ is ElementMatch!18877) (h!77395 (exprs!8317 lt!2599113))) (= (c!1356483 (h!77395 (exprs!8317 lt!2599113))) (h!77396 s!7854))))))

(assert (=> d!2267737 (= (derivationStepZipperDown!2783 (h!77395 (exprs!8317 lt!2599113)) (Context!15635 (t!385147 (exprs!8317 lt!2599113))) (h!77396 s!7854)) e!4370988)))

(declare-fun b!7297915 () Bool)

(declare-fun call!665124 () (InoxSet Context!15634))

(assert (=> b!7297915 (= e!4370987 ((_ map or) call!665124 call!665125))))

(declare-fun c!1356656 () Bool)

(declare-fun bm!665120 () Bool)

(declare-fun c!1356660 () Bool)

(assert (=> bm!665120 (= call!665127 ($colon$colon!3005 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599113)))) (ite (or c!1356660 c!1356656) (regTwo!38266 (h!77395 (exprs!8317 lt!2599113))) (h!77395 (exprs!8317 lt!2599113)))))))

(declare-fun b!7297916 () Bool)

(declare-fun e!4370989 () (InoxSet Context!15634))

(declare-fun e!4370990 () (InoxSet Context!15634))

(assert (=> b!7297916 (= e!4370989 e!4370990)))

(assert (=> b!7297916 (= c!1356656 ((_ is Concat!27722) (h!77395 (exprs!8317 lt!2599113))))))

(declare-fun b!7297917 () Bool)

(assert (=> b!7297917 (= c!1356660 e!4370991)))

(declare-fun res!2951625 () Bool)

(assert (=> b!7297917 (=> (not res!2951625) (not e!4370991))))

(assert (=> b!7297917 (= res!2951625 ((_ is Concat!27722) (h!77395 (exprs!8317 lt!2599113))))))

(assert (=> b!7297917 (= e!4370987 e!4370989)))

(declare-fun b!7297918 () Bool)

(assert (=> b!7297918 (= e!4370989 ((_ map or) call!665124 call!665128))))

(declare-fun bm!665121 () Bool)

(assert (=> bm!665121 (= call!665124 (derivationStepZipperDown!2783 (ite c!1356658 (regOne!38267 (h!77395 (exprs!8317 lt!2599113))) (regOne!38266 (h!77395 (exprs!8317 lt!2599113)))) (ite c!1356658 (Context!15635 (t!385147 (exprs!8317 lt!2599113))) (Context!15635 call!665127)) (h!77396 s!7854)))))

(declare-fun b!7297919 () Bool)

(declare-fun e!4370992 () (InoxSet Context!15634))

(assert (=> b!7297919 (= e!4370992 ((as const (Array Context!15634 Bool)) false))))

(declare-fun b!7297920 () Bool)

(declare-fun c!1356657 () Bool)

(assert (=> b!7297920 (= c!1356657 ((_ is Star!18877) (h!77395 (exprs!8317 lt!2599113))))))

(assert (=> b!7297920 (= e!4370990 e!4370992)))

(declare-fun bm!665122 () Bool)

(declare-fun call!665126 () (InoxSet Context!15634))

(assert (=> bm!665122 (= call!665126 call!665128)))

(declare-fun b!7297921 () Bool)

(assert (=> b!7297921 (= e!4370990 call!665126)))

(declare-fun bm!665123 () Bool)

(assert (=> bm!665123 (= call!665125 (derivationStepZipperDown!2783 (ite c!1356658 (regTwo!38267 (h!77395 (exprs!8317 lt!2599113))) (ite c!1356660 (regTwo!38266 (h!77395 (exprs!8317 lt!2599113))) (ite c!1356656 (regOne!38266 (h!77395 (exprs!8317 lt!2599113))) (reg!19206 (h!77395 (exprs!8317 lt!2599113)))))) (ite (or c!1356658 c!1356660) (Context!15635 (t!385147 (exprs!8317 lt!2599113))) (Context!15635 call!665123)) (h!77396 s!7854)))))

(declare-fun b!7297922 () Bool)

(assert (=> b!7297922 (= e!4370992 call!665126)))

(assert (= (and d!2267737 c!1356659) b!7297912))

(assert (= (and d!2267737 (not c!1356659)) b!7297913))

(assert (= (and b!7297913 c!1356658) b!7297915))

(assert (= (and b!7297913 (not c!1356658)) b!7297917))

(assert (= (and b!7297917 res!2951625) b!7297914))

(assert (= (and b!7297917 c!1356660) b!7297918))

(assert (= (and b!7297917 (not c!1356660)) b!7297916))

(assert (= (and b!7297916 c!1356656) b!7297921))

(assert (= (and b!7297916 (not c!1356656)) b!7297920))

(assert (= (and b!7297920 c!1356657) b!7297922))

(assert (= (and b!7297920 (not c!1356657)) b!7297919))

(assert (= (or b!7297921 b!7297922) bm!665118))

(assert (= (or b!7297921 b!7297922) bm!665122))

(assert (= (or b!7297918 bm!665118) bm!665120))

(assert (= (or b!7297918 bm!665122) bm!665119))

(assert (= (or b!7297915 b!7297918) bm!665121))

(assert (= (or b!7297915 bm!665119) bm!665123))

(declare-fun m!7970284 () Bool)

(assert (=> bm!665123 m!7970284))

(declare-fun m!7970286 () Bool)

(assert (=> b!7297914 m!7970286))

(declare-fun m!7970288 () Bool)

(assert (=> b!7297912 m!7970288))

(declare-fun m!7970290 () Bool)

(assert (=> bm!665120 m!7970290))

(declare-fun m!7970292 () Bool)

(assert (=> bm!665121 m!7970292))

(assert (=> bm!665051 d!2267737))

(declare-fun b!7297923 () Bool)

(declare-fun e!4370995 () (InoxSet Context!15634))

(declare-fun e!4370993 () (InoxSet Context!15634))

(assert (=> b!7297923 (= e!4370995 e!4370993)))

(declare-fun c!1356661 () Bool)

(assert (=> b!7297923 (= c!1356661 ((_ is Cons!70947) (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599094))))))))

(declare-fun bm!665124 () Bool)

(declare-fun call!665129 () (InoxSet Context!15634))

(assert (=> bm!665124 (= call!665129 (derivationStepZipperDown!2783 (h!77395 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599094))))) (Context!15635 (t!385147 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599094)))))) (h!77396 s!7854)))))

(declare-fun b!7297924 () Bool)

(assert (=> b!7297924 (= e!4370995 ((_ map or) call!665129 (derivationStepZipperUp!2627 (Context!15635 (t!385147 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599094)))))) (h!77396 s!7854))))))

(declare-fun b!7297925 () Bool)

(assert (=> b!7297925 (= e!4370993 ((as const (Array Context!15634 Bool)) false))))

(declare-fun d!2267739 () Bool)

(declare-fun c!1356662 () Bool)

(declare-fun e!4370994 () Bool)

(assert (=> d!2267739 (= c!1356662 e!4370994)))

(declare-fun res!2951626 () Bool)

(assert (=> d!2267739 (=> (not res!2951626) (not e!4370994))))

(assert (=> d!2267739 (= res!2951626 ((_ is Cons!70947) (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599094))))))))

(assert (=> d!2267739 (= (derivationStepZipperUp!2627 (Context!15635 (t!385147 (exprs!8317 lt!2599094))) (h!77396 s!7854)) e!4370995)))

(declare-fun b!7297926 () Bool)

(assert (=> b!7297926 (= e!4370994 (nullable!8054 (h!77395 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599094)))))))))

(declare-fun b!7297927 () Bool)

(assert (=> b!7297927 (= e!4370993 call!665129)))

(assert (= (and d!2267739 res!2951626) b!7297926))

(assert (= (and d!2267739 c!1356662) b!7297924))

(assert (= (and d!2267739 (not c!1356662)) b!7297923))

(assert (= (and b!7297923 c!1356661) b!7297927))

(assert (= (and b!7297923 (not c!1356661)) b!7297925))

(assert (= (or b!7297924 b!7297927) bm!665124))

(declare-fun m!7970294 () Bool)

(assert (=> bm!665124 m!7970294))

(declare-fun m!7970296 () Bool)

(assert (=> b!7297924 m!7970296))

(declare-fun m!7970298 () Bool)

(assert (=> b!7297926 m!7970298))

(assert (=> b!7297629 d!2267739))

(declare-fun b!7297931 () Bool)

(declare-fun e!4370997 () Bool)

(declare-fun lt!2599172 () List!71071)

(assert (=> b!7297931 (= e!4370997 (or (not (= (exprs!8317 ct2!346) Nil!70947)) (= lt!2599172 (t!385147 (exprs!8317 ct1!250)))))))

(declare-fun b!7297929 () Bool)

(declare-fun e!4370996 () List!71071)

(assert (=> b!7297929 (= e!4370996 (Cons!70947 (h!77395 (t!385147 (exprs!8317 ct1!250))) (++!16767 (t!385147 (t!385147 (exprs!8317 ct1!250))) (exprs!8317 ct2!346))))))

(declare-fun d!2267741 () Bool)

(assert (=> d!2267741 e!4370997))

(declare-fun res!2951628 () Bool)

(assert (=> d!2267741 (=> (not res!2951628) (not e!4370997))))

(assert (=> d!2267741 (= res!2951628 (= (content!14824 lt!2599172) ((_ map or) (content!14824 (t!385147 (exprs!8317 ct1!250))) (content!14824 (exprs!8317 ct2!346)))))))

(assert (=> d!2267741 (= lt!2599172 e!4370996)))

(declare-fun c!1356663 () Bool)

(assert (=> d!2267741 (= c!1356663 ((_ is Nil!70947) (t!385147 (exprs!8317 ct1!250))))))

(assert (=> d!2267741 (= (++!16767 (t!385147 (exprs!8317 ct1!250)) (exprs!8317 ct2!346)) lt!2599172)))

(declare-fun b!7297930 () Bool)

(declare-fun res!2951627 () Bool)

(assert (=> b!7297930 (=> (not res!2951627) (not e!4370997))))

(assert (=> b!7297930 (= res!2951627 (= (size!41870 lt!2599172) (+ (size!41870 (t!385147 (exprs!8317 ct1!250))) (size!41870 (exprs!8317 ct2!346)))))))

(declare-fun b!7297928 () Bool)

(assert (=> b!7297928 (= e!4370996 (exprs!8317 ct2!346))))

(assert (= (and d!2267741 c!1356663) b!7297928))

(assert (= (and d!2267741 (not c!1356663)) b!7297929))

(assert (= (and d!2267741 res!2951628) b!7297930))

(assert (= (and b!7297930 res!2951627) b!7297931))

(declare-fun m!7970300 () Bool)

(assert (=> b!7297929 m!7970300))

(declare-fun m!7970302 () Bool)

(assert (=> d!2267741 m!7970302))

(declare-fun m!7970304 () Bool)

(assert (=> d!2267741 m!7970304))

(assert (=> d!2267741 m!7969920))

(declare-fun m!7970306 () Bool)

(assert (=> b!7297930 m!7970306))

(declare-fun m!7970308 () Bool)

(assert (=> b!7297930 m!7970308))

(assert (=> b!7297930 m!7969926))

(assert (=> b!7297642 d!2267741))

(declare-fun d!2267743 () Bool)

(assert (=> d!2267743 (= ($colon$colon!3005 (exprs!8317 lt!2599097) (ite (or c!1356576 c!1356572) (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (h!77395 (exprs!8317 ct1!250)))) (Cons!70947 (ite (or c!1356576 c!1356572) (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (h!77395 (exprs!8317 ct1!250))) (exprs!8317 lt!2599097)))))

(assert (=> bm!665056 d!2267743))

(declare-fun d!2267745 () Bool)

(assert (=> d!2267745 (= (nullable!8054 (h!77395 (exprs!8317 lt!2599094))) (nullableFct!3187 (h!77395 (exprs!8317 lt!2599094))))))

(declare-fun bs!1913378 () Bool)

(assert (= bs!1913378 d!2267745))

(declare-fun m!7970310 () Bool)

(assert (=> bs!1913378 m!7970310))

(assert (=> b!7297631 d!2267745))

(declare-fun b!7297932 () Bool)

(declare-fun e!4371000 () (InoxSet Context!15634))

(declare-fun e!4370998 () (InoxSet Context!15634))

(assert (=> b!7297932 (= e!4371000 e!4370998)))

(declare-fun c!1356664 () Bool)

(assert (=> b!7297932 (= c!1356664 ((_ is Cons!70947) (exprs!8317 (Context!15635 (t!385147 (exprs!8317 ct1!250))))))))

(declare-fun bm!665125 () Bool)

(declare-fun call!665130 () (InoxSet Context!15634))

(assert (=> bm!665125 (= call!665130 (derivationStepZipperDown!2783 (h!77395 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 ct1!250))))) (Context!15635 (t!385147 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 ct1!250)))))) (h!77396 s!7854)))))

(declare-fun b!7297933 () Bool)

(assert (=> b!7297933 (= e!4371000 ((_ map or) call!665130 (derivationStepZipperUp!2627 (Context!15635 (t!385147 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 ct1!250)))))) (h!77396 s!7854))))))

(declare-fun b!7297934 () Bool)

(assert (=> b!7297934 (= e!4370998 ((as const (Array Context!15634 Bool)) false))))

(declare-fun d!2267747 () Bool)

(declare-fun c!1356665 () Bool)

(declare-fun e!4370999 () Bool)

(assert (=> d!2267747 (= c!1356665 e!4370999)))

(declare-fun res!2951629 () Bool)

(assert (=> d!2267747 (=> (not res!2951629) (not e!4370999))))

(assert (=> d!2267747 (= res!2951629 ((_ is Cons!70947) (exprs!8317 (Context!15635 (t!385147 (exprs!8317 ct1!250))))))))

(assert (=> d!2267747 (= (derivationStepZipperUp!2627 (Context!15635 (t!385147 (exprs!8317 ct1!250))) (h!77396 s!7854)) e!4371000)))

(declare-fun b!7297935 () Bool)

(assert (=> b!7297935 (= e!4370999 (nullable!8054 (h!77395 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 ct1!250)))))))))

(declare-fun b!7297936 () Bool)

(assert (=> b!7297936 (= e!4370998 call!665130)))

(assert (= (and d!2267747 res!2951629) b!7297935))

(assert (= (and d!2267747 c!1356665) b!7297933))

(assert (= (and d!2267747 (not c!1356665)) b!7297932))

(assert (= (and b!7297932 c!1356664) b!7297936))

(assert (= (and b!7297932 (not c!1356664)) b!7297934))

(assert (= (or b!7297933 b!7297936) bm!665125))

(declare-fun m!7970312 () Bool)

(assert (=> bm!665125 m!7970312))

(declare-fun m!7970314 () Bool)

(assert (=> b!7297933 m!7970314))

(declare-fun m!7970316 () Bool)

(assert (=> b!7297935 m!7970316))

(assert (=> b!7297622 d!2267747))

(declare-fun b!7297937 () Bool)

(declare-fun e!4371003 () (InoxSet Context!15634))

(declare-fun e!4371001 () (InoxSet Context!15634))

(assert (=> b!7297937 (= e!4371003 e!4371001)))

(declare-fun c!1356666 () Bool)

(assert (=> b!7297937 (= c!1356666 ((_ is Cons!70947) (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599097))))))))

(declare-fun bm!665126 () Bool)

(declare-fun call!665131 () (InoxSet Context!15634))

(assert (=> bm!665126 (= call!665131 (derivationStepZipperDown!2783 (h!77395 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599097))))) (Context!15635 (t!385147 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599097)))))) (h!77396 s!7854)))))

(declare-fun b!7297938 () Bool)

(assert (=> b!7297938 (= e!4371003 ((_ map or) call!665131 (derivationStepZipperUp!2627 (Context!15635 (t!385147 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599097)))))) (h!77396 s!7854))))))

(declare-fun b!7297939 () Bool)

(assert (=> b!7297939 (= e!4371001 ((as const (Array Context!15634 Bool)) false))))

(declare-fun d!2267749 () Bool)

(declare-fun c!1356667 () Bool)

(declare-fun e!4371002 () Bool)

(assert (=> d!2267749 (= c!1356667 e!4371002)))

(declare-fun res!2951630 () Bool)

(assert (=> d!2267749 (=> (not res!2951630) (not e!4371002))))

(assert (=> d!2267749 (= res!2951630 ((_ is Cons!70947) (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599097))))))))

(assert (=> d!2267749 (= (derivationStepZipperUp!2627 (Context!15635 (t!385147 (exprs!8317 lt!2599097))) (h!77396 s!7854)) e!4371003)))

(declare-fun b!7297940 () Bool)

(assert (=> b!7297940 (= e!4371002 (nullable!8054 (h!77395 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599097)))))))))

(declare-fun b!7297941 () Bool)

(assert (=> b!7297941 (= e!4371001 call!665131)))

(assert (= (and d!2267749 res!2951630) b!7297940))

(assert (= (and d!2267749 c!1356667) b!7297938))

(assert (= (and d!2267749 (not c!1356667)) b!7297937))

(assert (= (and b!7297937 c!1356666) b!7297941))

(assert (= (and b!7297937 (not c!1356666)) b!7297939))

(assert (= (or b!7297938 b!7297941) bm!665126))

(declare-fun m!7970318 () Bool)

(assert (=> bm!665126 m!7970318))

(declare-fun m!7970320 () Bool)

(assert (=> b!7297938 m!7970320))

(declare-fun m!7970322 () Bool)

(assert (=> b!7297940 m!7970322))

(assert (=> b!7297577 d!2267749))

(declare-fun d!2267751 () Bool)

(declare-fun lambda!450921 () Int)

(declare-fun exists!4504 ((InoxSet Context!15634) Int) Bool)

(assert (=> d!2267751 (= (nullableZipper!3066 lt!2599082) (exists!4504 lt!2599082 lambda!450921))))

(declare-fun bs!1913379 () Bool)

(assert (= bs!1913379 d!2267751))

(declare-fun m!7970324 () Bool)

(assert (=> bs!1913379 m!7970324))

(assert (=> b!7297645 d!2267751))

(declare-fun d!2267753 () Bool)

(assert (=> d!2267753 (= (isEmpty!40818 (t!385148 s!7854)) ((_ is Nil!70948) (t!385148 s!7854)))))

(assert (=> d!2267551 d!2267753))

(declare-fun bm!665131 () Bool)

(declare-fun call!665136 () Bool)

(declare-fun c!1356672 () Bool)

(assert (=> bm!665131 (= call!665136 (nullable!8054 (ite c!1356672 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))))))

(declare-fun b!7297956 () Bool)

(declare-fun e!4371019 () Bool)

(declare-fun e!4371018 () Bool)

(assert (=> b!7297956 (= e!4371019 e!4371018)))

(declare-fun res!2951644 () Bool)

(declare-fun call!665137 () Bool)

(assert (=> b!7297956 (= res!2951644 call!665137)))

(assert (=> b!7297956 (=> res!2951644 e!4371018)))

(declare-fun b!7297957 () Bool)

(declare-fun e!4371020 () Bool)

(assert (=> b!7297957 (= e!4371020 call!665137)))

(declare-fun b!7297958 () Bool)

(assert (=> b!7297958 (= e!4371019 e!4371020)))

(declare-fun res!2951642 () Bool)

(assert (=> b!7297958 (= res!2951642 call!665136)))

(assert (=> b!7297958 (=> (not res!2951642) (not e!4371020))))

(declare-fun b!7297959 () Bool)

(declare-fun e!4371021 () Bool)

(declare-fun e!4371017 () Bool)

(assert (=> b!7297959 (= e!4371021 e!4371017)))

(declare-fun res!2951641 () Bool)

(assert (=> b!7297959 (=> (not res!2951641) (not e!4371017))))

(assert (=> b!7297959 (= res!2951641 (and (not ((_ is EmptyLang!18877) (h!77395 (exprs!8317 ct1!250)))) (not ((_ is ElementMatch!18877) (h!77395 (exprs!8317 ct1!250))))))))

(declare-fun b!7297960 () Bool)

(declare-fun e!4371016 () Bool)

(assert (=> b!7297960 (= e!4371017 e!4371016)))

(declare-fun res!2951645 () Bool)

(assert (=> b!7297960 (=> res!2951645 e!4371016)))

(assert (=> b!7297960 (= res!2951645 ((_ is Star!18877) (h!77395 (exprs!8317 ct1!250))))))

(declare-fun bm!665132 () Bool)

(assert (=> bm!665132 (= call!665137 (nullable!8054 (ite c!1356672 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regTwo!38266 (h!77395 (exprs!8317 ct1!250))))))))

(declare-fun b!7297962 () Bool)

(assert (=> b!7297962 (= e!4371018 call!665136)))

(declare-fun b!7297961 () Bool)

(assert (=> b!7297961 (= e!4371016 e!4371019)))

(assert (=> b!7297961 (= c!1356672 ((_ is Union!18877) (h!77395 (exprs!8317 ct1!250))))))

(declare-fun d!2267755 () Bool)

(declare-fun res!2951643 () Bool)

(assert (=> d!2267755 (=> res!2951643 e!4371021)))

(assert (=> d!2267755 (= res!2951643 ((_ is EmptyExpr!18877) (h!77395 (exprs!8317 ct1!250))))))

(assert (=> d!2267755 (= (nullableFct!3187 (h!77395 (exprs!8317 ct1!250))) e!4371021)))

(assert (= (and d!2267755 (not res!2951643)) b!7297959))

(assert (= (and b!7297959 res!2951641) b!7297960))

(assert (= (and b!7297960 (not res!2951645)) b!7297961))

(assert (= (and b!7297961 c!1356672) b!7297956))

(assert (= (and b!7297961 (not c!1356672)) b!7297958))

(assert (= (and b!7297956 (not res!2951644)) b!7297962))

(assert (= (and b!7297958 res!2951642) b!7297957))

(assert (= (or b!7297956 b!7297957) bm!665132))

(assert (= (or b!7297962 b!7297958) bm!665131))

(declare-fun m!7970326 () Bool)

(assert (=> bm!665131 m!7970326))

(declare-fun m!7970328 () Bool)

(assert (=> bm!665132 m!7970328))

(assert (=> d!2267525 d!2267755))

(assert (=> b!7297624 d!2267525))

(declare-fun e!4371023 () (InoxSet Context!15634))

(declare-fun b!7297963 () Bool)

(assert (=> b!7297963 (= e!4371023 (store ((as const (Array Context!15634 Bool)) false) (ite c!1356574 lt!2599097 (Context!15635 call!665063)) true))))

(declare-fun b!7297964 () Bool)

(declare-fun e!4371022 () (InoxSet Context!15634))

(assert (=> b!7297964 (= e!4371023 e!4371022)))

(declare-fun c!1356675 () Bool)

(assert (=> b!7297964 (= c!1356675 ((_ is Union!18877) (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))))))

(declare-fun b!7297965 () Bool)

(declare-fun e!4371026 () Bool)

(assert (=> b!7297965 (= e!4371026 (nullable!8054 (regOne!38266 (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250)))))))))

(declare-fun bm!665133 () Bool)

(declare-fun call!665138 () List!71071)

(declare-fun call!665142 () List!71071)

(assert (=> bm!665133 (= call!665138 call!665142)))

(declare-fun bm!665134 () Bool)

(declare-fun call!665143 () (InoxSet Context!15634))

(declare-fun call!665140 () (InoxSet Context!15634))

(assert (=> bm!665134 (= call!665143 call!665140)))

(declare-fun c!1356676 () Bool)

(declare-fun d!2267757 () Bool)

(assert (=> d!2267757 (= c!1356676 (and ((_ is ElementMatch!18877) (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (= (c!1356483 (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (h!77396 s!7854))))))

(assert (=> d!2267757 (= (derivationStepZipperDown!2783 (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250)))) (ite c!1356574 lt!2599097 (Context!15635 call!665063)) (h!77396 s!7854)) e!4371023)))

(declare-fun b!7297966 () Bool)

(declare-fun call!665139 () (InoxSet Context!15634))

(assert (=> b!7297966 (= e!4371022 ((_ map or) call!665139 call!665140))))

(declare-fun c!1356673 () Bool)

(declare-fun c!1356677 () Bool)

(declare-fun bm!665135 () Bool)

(assert (=> bm!665135 (= call!665142 ($colon$colon!3005 (exprs!8317 (ite c!1356574 lt!2599097 (Context!15635 call!665063))) (ite (or c!1356677 c!1356673) (regTwo!38266 (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250)))))))))

(declare-fun b!7297967 () Bool)

(declare-fun e!4371024 () (InoxSet Context!15634))

(declare-fun e!4371025 () (InoxSet Context!15634))

(assert (=> b!7297967 (= e!4371024 e!4371025)))

(assert (=> b!7297967 (= c!1356673 ((_ is Concat!27722) (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))))))

(declare-fun b!7297968 () Bool)

(assert (=> b!7297968 (= c!1356677 e!4371026)))

(declare-fun res!2951646 () Bool)

(assert (=> b!7297968 (=> (not res!2951646) (not e!4371026))))

(assert (=> b!7297968 (= res!2951646 ((_ is Concat!27722) (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))))))

(assert (=> b!7297968 (= e!4371022 e!4371024)))

(declare-fun b!7297969 () Bool)

(assert (=> b!7297969 (= e!4371024 ((_ map or) call!665139 call!665143))))

(declare-fun bm!665136 () Bool)

(assert (=> bm!665136 (= call!665139 (derivationStepZipperDown!2783 (ite c!1356675 (regOne!38267 (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (regOne!38266 (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250)))))) (ite c!1356675 (ite c!1356574 lt!2599097 (Context!15635 call!665063)) (Context!15635 call!665142)) (h!77396 s!7854)))))

(declare-fun b!7297970 () Bool)

(declare-fun e!4371027 () (InoxSet Context!15634))

(assert (=> b!7297970 (= e!4371027 ((as const (Array Context!15634 Bool)) false))))

(declare-fun b!7297971 () Bool)

(declare-fun c!1356674 () Bool)

(assert (=> b!7297971 (= c!1356674 ((_ is Star!18877) (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))))))

(assert (=> b!7297971 (= e!4371025 e!4371027)))

(declare-fun bm!665137 () Bool)

(declare-fun call!665141 () (InoxSet Context!15634))

(assert (=> bm!665137 (= call!665141 call!665143)))

(declare-fun b!7297972 () Bool)

(assert (=> b!7297972 (= e!4371025 call!665141)))

(declare-fun bm!665138 () Bool)

(assert (=> bm!665138 (= call!665140 (derivationStepZipperDown!2783 (ite c!1356675 (regTwo!38267 (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (ite c!1356677 (regTwo!38266 (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (ite c!1356673 (regOne!38266 (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (reg!19206 (ite c!1356574 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250)))))))) (ite (or c!1356675 c!1356677) (ite c!1356574 lt!2599097 (Context!15635 call!665063)) (Context!15635 call!665138)) (h!77396 s!7854)))))

(declare-fun b!7297973 () Bool)

(assert (=> b!7297973 (= e!4371027 call!665141)))

(assert (= (and d!2267757 c!1356676) b!7297963))

(assert (= (and d!2267757 (not c!1356676)) b!7297964))

(assert (= (and b!7297964 c!1356675) b!7297966))

(assert (= (and b!7297964 (not c!1356675)) b!7297968))

(assert (= (and b!7297968 res!2951646) b!7297965))

(assert (= (and b!7297968 c!1356677) b!7297969))

(assert (= (and b!7297968 (not c!1356677)) b!7297967))

(assert (= (and b!7297967 c!1356673) b!7297972))

(assert (= (and b!7297967 (not c!1356673)) b!7297971))

(assert (= (and b!7297971 c!1356674) b!7297973))

(assert (= (and b!7297971 (not c!1356674)) b!7297970))

(assert (= (or b!7297972 b!7297973) bm!665133))

(assert (= (or b!7297972 b!7297973) bm!665137))

(assert (= (or b!7297969 bm!665133) bm!665135))

(assert (= (or b!7297969 bm!665137) bm!665134))

(assert (= (or b!7297966 b!7297969) bm!665136))

(assert (= (or b!7297966 bm!665134) bm!665138))

(declare-fun m!7970330 () Bool)

(assert (=> bm!665138 m!7970330))

(declare-fun m!7970332 () Bool)

(assert (=> b!7297965 m!7970332))

(declare-fun m!7970334 () Bool)

(assert (=> b!7297963 m!7970334))

(declare-fun m!7970336 () Bool)

(assert (=> bm!665135 m!7970336))

(declare-fun m!7970338 () Bool)

(assert (=> bm!665136 m!7970338))

(assert (=> bm!665057 d!2267757))

(declare-fun d!2267759 () Bool)

(declare-fun lt!2599175 () Int)

(assert (=> d!2267759 (>= lt!2599175 0)))

(declare-fun e!4371030 () Int)

(assert (=> d!2267759 (= lt!2599175 e!4371030)))

(declare-fun c!1356680 () Bool)

(assert (=> d!2267759 (= c!1356680 ((_ is Nil!70947) lt!2599157))))

(assert (=> d!2267759 (= (size!41870 lt!2599157) lt!2599175)))

(declare-fun b!7297978 () Bool)

(assert (=> b!7297978 (= e!4371030 0)))

(declare-fun b!7297979 () Bool)

(assert (=> b!7297979 (= e!4371030 (+ 1 (size!41870 (t!385147 lt!2599157))))))

(assert (= (and d!2267759 c!1356680) b!7297978))

(assert (= (and d!2267759 (not c!1356680)) b!7297979))

(declare-fun m!7970340 () Bool)

(assert (=> b!7297979 m!7970340))

(assert (=> b!7297656 d!2267759))

(declare-fun d!2267761 () Bool)

(declare-fun lt!2599176 () Int)

(assert (=> d!2267761 (>= lt!2599176 0)))

(declare-fun e!4371031 () Int)

(assert (=> d!2267761 (= lt!2599176 e!4371031)))

(declare-fun c!1356681 () Bool)

(assert (=> d!2267761 (= c!1356681 ((_ is Nil!70947) lt!2599085))))

(assert (=> d!2267761 (= (size!41870 lt!2599085) lt!2599176)))

(declare-fun b!7297980 () Bool)

(assert (=> b!7297980 (= e!4371031 0)))

(declare-fun b!7297981 () Bool)

(assert (=> b!7297981 (= e!4371031 (+ 1 (size!41870 (t!385147 lt!2599085))))))

(assert (= (and d!2267761 c!1356681) b!7297980))

(assert (= (and d!2267761 (not c!1356681)) b!7297981))

(declare-fun m!7970342 () Bool)

(assert (=> b!7297981 m!7970342))

(assert (=> b!7297656 d!2267761))

(declare-fun d!2267763 () Bool)

(declare-fun lt!2599177 () Int)

(assert (=> d!2267763 (>= lt!2599177 0)))

(declare-fun e!4371032 () Int)

(assert (=> d!2267763 (= lt!2599177 e!4371032)))

(declare-fun c!1356682 () Bool)

(assert (=> d!2267763 (= c!1356682 ((_ is Nil!70947) (exprs!8317 ct2!346)))))

(assert (=> d!2267763 (= (size!41870 (exprs!8317 ct2!346)) lt!2599177)))

(declare-fun b!7297982 () Bool)

(assert (=> b!7297982 (= e!4371032 0)))

(declare-fun b!7297983 () Bool)

(assert (=> b!7297983 (= e!4371032 (+ 1 (size!41870 (t!385147 (exprs!8317 ct2!346)))))))

(assert (= (and d!2267763 c!1356682) b!7297982))

(assert (= (and d!2267763 (not c!1356682)) b!7297983))

(declare-fun m!7970344 () Bool)

(assert (=> b!7297983 m!7970344))

(assert (=> b!7297656 d!2267763))

(declare-fun d!2267765 () Bool)

(assert (=> d!2267765 (= (nullable!8054 (h!77395 (exprs!8317 lt!2599097))) (nullableFct!3187 (h!77395 (exprs!8317 lt!2599097))))))

(declare-fun bs!1913380 () Bool)

(assert (= bs!1913380 d!2267765))

(declare-fun m!7970346 () Bool)

(assert (=> bs!1913380 m!7970346))

(assert (=> b!7297579 d!2267765))

(declare-fun d!2267767 () Bool)

(declare-fun c!1356683 () Bool)

(assert (=> d!2267767 (= c!1356683 (isEmpty!40818 (tail!14601 (t!385148 s!7854))))))

(declare-fun e!4371033 () Bool)

(assert (=> d!2267767 (= (matchZipper!3781 (derivationStepZipper!3610 lt!2599095 (head!15064 (t!385148 s!7854))) (tail!14601 (t!385148 s!7854))) e!4371033)))

(declare-fun b!7297984 () Bool)

(assert (=> b!7297984 (= e!4371033 (nullableZipper!3066 (derivationStepZipper!3610 lt!2599095 (head!15064 (t!385148 s!7854)))))))

(declare-fun b!7297985 () Bool)

(assert (=> b!7297985 (= e!4371033 (matchZipper!3781 (derivationStepZipper!3610 (derivationStepZipper!3610 lt!2599095 (head!15064 (t!385148 s!7854))) (head!15064 (tail!14601 (t!385148 s!7854)))) (tail!14601 (tail!14601 (t!385148 s!7854)))))))

(assert (= (and d!2267767 c!1356683) b!7297984))

(assert (= (and d!2267767 (not c!1356683)) b!7297985))

(assert (=> d!2267767 m!7969824))

(declare-fun m!7970348 () Bool)

(assert (=> d!2267767 m!7970348))

(assert (=> b!7297984 m!7969952))

(declare-fun m!7970350 () Bool)

(assert (=> b!7297984 m!7970350))

(assert (=> b!7297985 m!7969824))

(declare-fun m!7970352 () Bool)

(assert (=> b!7297985 m!7970352))

(assert (=> b!7297985 m!7969952))

(assert (=> b!7297985 m!7970352))

(declare-fun m!7970354 () Bool)

(assert (=> b!7297985 m!7970354))

(assert (=> b!7297985 m!7969824))

(declare-fun m!7970356 () Bool)

(assert (=> b!7297985 m!7970356))

(assert (=> b!7297985 m!7970354))

(assert (=> b!7297985 m!7970356))

(declare-fun m!7970358 () Bool)

(assert (=> b!7297985 m!7970358))

(assert (=> b!7297650 d!2267767))

(declare-fun bs!1913381 () Bool)

(declare-fun d!2267769 () Bool)

(assert (= bs!1913381 (and d!2267769 b!7297431)))

(declare-fun lambda!450922 () Int)

(assert (=> bs!1913381 (= (= (head!15064 (t!385148 s!7854)) (h!77396 s!7854)) (= lambda!450922 lambda!450875))))

(declare-fun bs!1913382 () Bool)

(assert (= bs!1913382 (and d!2267769 d!2267535)))

(assert (=> bs!1913382 (= (= (head!15064 (t!385148 s!7854)) (h!77396 s!7854)) (= lambda!450922 lambda!450898))))

(assert (=> d!2267769 true))

(assert (=> d!2267769 (= (derivationStepZipper!3610 lt!2599095 (head!15064 (t!385148 s!7854))) (flatMap!2972 lt!2599095 lambda!450922))))

(declare-fun bs!1913383 () Bool)

(assert (= bs!1913383 d!2267769))

(declare-fun m!7970360 () Bool)

(assert (=> bs!1913383 m!7970360))

(assert (=> b!7297650 d!2267769))

(declare-fun d!2267771 () Bool)

(assert (=> d!2267771 (= (head!15064 (t!385148 s!7854)) (h!77396 (t!385148 s!7854)))))

(assert (=> b!7297650 d!2267771))

(declare-fun d!2267773 () Bool)

(assert (=> d!2267773 (= (tail!14601 (t!385148 s!7854)) (t!385148 (t!385148 s!7854)))))

(assert (=> b!7297650 d!2267773))

(declare-fun d!2267775 () Bool)

(assert (=> d!2267775 (= (flatMap!2972 lt!2599082 lambda!450898) (choose!56564 lt!2599082 lambda!450898))))

(declare-fun bs!1913384 () Bool)

(assert (= bs!1913384 d!2267775))

(declare-fun m!7970362 () Bool)

(assert (=> bs!1913384 m!7970362))

(assert (=> d!2267535 d!2267775))

(declare-fun d!2267777 () Bool)

(assert (=> d!2267777 (= (isEmpty!40818 s!7854) ((_ is Nil!70948) s!7854))))

(assert (=> d!2267519 d!2267777))

(assert (=> b!7297653 d!2267503))

(declare-fun d!2267779 () Bool)

(declare-fun c!1356684 () Bool)

(assert (=> d!2267779 (= c!1356684 (isEmpty!40818 (tail!14601 (t!385148 s!7854))))))

(declare-fun e!4371034 () Bool)

(assert (=> d!2267779 (= (matchZipper!3781 (derivationStepZipper!3610 lt!2599088 (head!15064 (t!385148 s!7854))) (tail!14601 (t!385148 s!7854))) e!4371034)))

(declare-fun b!7297986 () Bool)

(assert (=> b!7297986 (= e!4371034 (nullableZipper!3066 (derivationStepZipper!3610 lt!2599088 (head!15064 (t!385148 s!7854)))))))

(declare-fun b!7297987 () Bool)

(assert (=> b!7297987 (= e!4371034 (matchZipper!3781 (derivationStepZipper!3610 (derivationStepZipper!3610 lt!2599088 (head!15064 (t!385148 s!7854))) (head!15064 (tail!14601 (t!385148 s!7854)))) (tail!14601 (tail!14601 (t!385148 s!7854)))))))

(assert (= (and d!2267779 c!1356684) b!7297986))

(assert (= (and d!2267779 (not c!1356684)) b!7297987))

(assert (=> d!2267779 m!7969824))

(assert (=> d!2267779 m!7970348))

(assert (=> b!7297986 m!7969822))

(declare-fun m!7970364 () Bool)

(assert (=> b!7297986 m!7970364))

(assert (=> b!7297987 m!7969824))

(assert (=> b!7297987 m!7970352))

(assert (=> b!7297987 m!7969822))

(assert (=> b!7297987 m!7970352))

(declare-fun m!7970366 () Bool)

(assert (=> b!7297987 m!7970366))

(assert (=> b!7297987 m!7969824))

(assert (=> b!7297987 m!7970356))

(assert (=> b!7297987 m!7970366))

(assert (=> b!7297987 m!7970356))

(declare-fun m!7970368 () Bool)

(assert (=> b!7297987 m!7970368))

(assert (=> b!7297563 d!2267779))

(declare-fun bs!1913385 () Bool)

(declare-fun d!2267781 () Bool)

(assert (= bs!1913385 (and d!2267781 b!7297431)))

(declare-fun lambda!450923 () Int)

(assert (=> bs!1913385 (= (= (head!15064 (t!385148 s!7854)) (h!77396 s!7854)) (= lambda!450923 lambda!450875))))

(declare-fun bs!1913386 () Bool)

(assert (= bs!1913386 (and d!2267781 d!2267535)))

(assert (=> bs!1913386 (= (= (head!15064 (t!385148 s!7854)) (h!77396 s!7854)) (= lambda!450923 lambda!450898))))

(declare-fun bs!1913387 () Bool)

(assert (= bs!1913387 (and d!2267781 d!2267769)))

(assert (=> bs!1913387 (= lambda!450923 lambda!450922)))

(assert (=> d!2267781 true))

(assert (=> d!2267781 (= (derivationStepZipper!3610 lt!2599088 (head!15064 (t!385148 s!7854))) (flatMap!2972 lt!2599088 lambda!450923))))

(declare-fun bs!1913388 () Bool)

(assert (= bs!1913388 d!2267781))

(declare-fun m!7970370 () Bool)

(assert (=> bs!1913388 m!7970370))

(assert (=> b!7297563 d!2267781))

(assert (=> b!7297563 d!2267771))

(assert (=> b!7297563 d!2267773))

(declare-fun bs!1913389 () Bool)

(declare-fun d!2267783 () Bool)

(assert (= bs!1913389 (and d!2267783 d!2267751)))

(declare-fun lambda!450924 () Int)

(assert (=> bs!1913389 (= lambda!450924 lambda!450921)))

(assert (=> d!2267783 (= (nullableZipper!3066 lt!2599089) (exists!4504 lt!2599089 lambda!450924))))

(declare-fun bs!1913390 () Bool)

(assert (= bs!1913390 d!2267783))

(declare-fun m!7970372 () Bool)

(assert (=> bs!1913390 m!7970372))

(assert (=> b!7297564 d!2267783))

(declare-fun d!2267785 () Bool)

(declare-fun c!1356685 () Bool)

(assert (=> d!2267785 (= c!1356685 (isEmpty!40818 (tail!14601 s!7854)))))

(declare-fun e!4371035 () Bool)

(assert (=> d!2267785 (= (matchZipper!3781 (derivationStepZipper!3610 (store ((as const (Array Context!15634 Bool)) false) ct2!346 true) (head!15064 s!7854)) (tail!14601 s!7854)) e!4371035)))

(declare-fun b!7297988 () Bool)

(assert (=> b!7297988 (= e!4371035 (nullableZipper!3066 (derivationStepZipper!3610 (store ((as const (Array Context!15634 Bool)) false) ct2!346 true) (head!15064 s!7854))))))

(declare-fun b!7297989 () Bool)

(assert (=> b!7297989 (= e!4371035 (matchZipper!3781 (derivationStepZipper!3610 (derivationStepZipper!3610 (store ((as const (Array Context!15634 Bool)) false) ct2!346 true) (head!15064 s!7854)) (head!15064 (tail!14601 s!7854))) (tail!14601 (tail!14601 s!7854))))))

(assert (= (and d!2267785 c!1356685) b!7297988))

(assert (= (and d!2267785 (not c!1356685)) b!7297989))

(assert (=> d!2267785 m!7969856))

(declare-fun m!7970374 () Bool)

(assert (=> d!2267785 m!7970374))

(assert (=> b!7297988 m!7969884))

(declare-fun m!7970376 () Bool)

(assert (=> b!7297988 m!7970376))

(assert (=> b!7297989 m!7969856))

(declare-fun m!7970378 () Bool)

(assert (=> b!7297989 m!7970378))

(assert (=> b!7297989 m!7969884))

(assert (=> b!7297989 m!7970378))

(declare-fun m!7970380 () Bool)

(assert (=> b!7297989 m!7970380))

(assert (=> b!7297989 m!7969856))

(declare-fun m!7970382 () Bool)

(assert (=> b!7297989 m!7970382))

(assert (=> b!7297989 m!7970380))

(assert (=> b!7297989 m!7970382))

(declare-fun m!7970384 () Bool)

(assert (=> b!7297989 m!7970384))

(assert (=> b!7297620 d!2267785))

(declare-fun bs!1913391 () Bool)

(declare-fun d!2267787 () Bool)

(assert (= bs!1913391 (and d!2267787 b!7297431)))

(declare-fun lambda!450925 () Int)

(assert (=> bs!1913391 (= (= (head!15064 s!7854) (h!77396 s!7854)) (= lambda!450925 lambda!450875))))

(declare-fun bs!1913392 () Bool)

(assert (= bs!1913392 (and d!2267787 d!2267535)))

(assert (=> bs!1913392 (= (= (head!15064 s!7854) (h!77396 s!7854)) (= lambda!450925 lambda!450898))))

(declare-fun bs!1913393 () Bool)

(assert (= bs!1913393 (and d!2267787 d!2267769)))

(assert (=> bs!1913393 (= (= (head!15064 s!7854) (head!15064 (t!385148 s!7854))) (= lambda!450925 lambda!450922))))

(declare-fun bs!1913394 () Bool)

(assert (= bs!1913394 (and d!2267787 d!2267781)))

(assert (=> bs!1913394 (= (= (head!15064 s!7854) (head!15064 (t!385148 s!7854))) (= lambda!450925 lambda!450923))))

(assert (=> d!2267787 true))

(assert (=> d!2267787 (= (derivationStepZipper!3610 (store ((as const (Array Context!15634 Bool)) false) ct2!346 true) (head!15064 s!7854)) (flatMap!2972 (store ((as const (Array Context!15634 Bool)) false) ct2!346 true) lambda!450925))))

(declare-fun bs!1913395 () Bool)

(assert (= bs!1913395 d!2267787))

(assert (=> bs!1913395 m!7969614))

(declare-fun m!7970386 () Bool)

(assert (=> bs!1913395 m!7970386))

(assert (=> b!7297620 d!2267787))

(declare-fun d!2267789 () Bool)

(assert (=> d!2267789 (= (head!15064 s!7854) (h!77396 s!7854))))

(assert (=> b!7297620 d!2267789))

(declare-fun d!2267791 () Bool)

(assert (=> d!2267791 (= (tail!14601 s!7854) (t!385148 s!7854))))

(assert (=> b!7297620 d!2267791))

(assert (=> bs!1913296 d!2267537))

(declare-fun bs!1913396 () Bool)

(declare-fun d!2267793 () Bool)

(assert (= bs!1913396 (and d!2267793 d!2267751)))

(declare-fun lambda!450926 () Int)

(assert (=> bs!1913396 (= lambda!450926 lambda!450921)))

(declare-fun bs!1913397 () Bool)

(assert (= bs!1913397 (and d!2267793 d!2267783)))

(assert (=> bs!1913397 (= lambda!450926 lambda!450924)))

(assert (=> d!2267793 (= (nullableZipper!3066 lt!2599112) (exists!4504 lt!2599112 lambda!450926))))

(declare-fun bs!1913398 () Bool)

(assert (= bs!1913398 d!2267793))

(declare-fun m!7970388 () Bool)

(assert (=> bs!1913398 m!7970388))

(assert (=> b!7297647 d!2267793))

(declare-fun d!2267795 () Bool)

(declare-fun c!1356686 () Bool)

(assert (=> d!2267795 (= c!1356686 (isEmpty!40818 (t!385148 s!7854)))))

(declare-fun e!4371036 () Bool)

(assert (=> d!2267795 (= (matchZipper!3781 ((_ map or) lt!2599095 lt!2599088) (t!385148 s!7854)) e!4371036)))

(declare-fun b!7297990 () Bool)

(assert (=> b!7297990 (= e!4371036 (nullableZipper!3066 ((_ map or) lt!2599095 lt!2599088)))))

(declare-fun b!7297991 () Bool)

(assert (=> b!7297991 (= e!4371036 (matchZipper!3781 (derivationStepZipper!3610 ((_ map or) lt!2599095 lt!2599088) (head!15064 (t!385148 s!7854))) (tail!14601 (t!385148 s!7854))))))

(assert (= (and d!2267795 c!1356686) b!7297990))

(assert (= (and d!2267795 (not c!1356686)) b!7297991))

(assert (=> d!2267795 m!7969816))

(declare-fun m!7970390 () Bool)

(assert (=> b!7297990 m!7970390))

(assert (=> b!7297991 m!7969820))

(assert (=> b!7297991 m!7969820))

(declare-fun m!7970392 () Bool)

(assert (=> b!7297991 m!7970392))

(assert (=> b!7297991 m!7969824))

(assert (=> b!7297991 m!7970392))

(assert (=> b!7297991 m!7969824))

(declare-fun m!7970394 () Bool)

(assert (=> b!7297991 m!7970394))

(assert (=> d!2267553 d!2267795))

(assert (=> d!2267553 d!2267551))

(declare-fun d!2267797 () Bool)

(declare-fun e!4371039 () Bool)

(assert (=> d!2267797 (= (matchZipper!3781 ((_ map or) lt!2599095 lt!2599088) (t!385148 s!7854)) e!4371039)))

(declare-fun res!2951649 () Bool)

(assert (=> d!2267797 (=> res!2951649 e!4371039)))

(assert (=> d!2267797 (= res!2951649 (matchZipper!3781 lt!2599095 (t!385148 s!7854)))))

(assert (=> d!2267797 true))

(declare-fun _$48!2573 () Unit!164352)

(assert (=> d!2267797 (= (choose!56568 lt!2599095 lt!2599088 (t!385148 s!7854)) _$48!2573)))

(declare-fun b!7297994 () Bool)

(assert (=> b!7297994 (= e!4371039 (matchZipper!3781 lt!2599088 (t!385148 s!7854)))))

(assert (= (and d!2267797 (not res!2951649)) b!7297994))

(assert (=> d!2267797 m!7969956))

(assert (=> d!2267797 m!7969624))

(assert (=> b!7297994 m!7969638))

(assert (=> d!2267553 d!2267797))

(declare-fun d!2267799 () Bool)

(declare-fun res!2951654 () Bool)

(declare-fun e!4371044 () Bool)

(assert (=> d!2267799 (=> res!2951654 e!4371044)))

(assert (=> d!2267799 (= res!2951654 ((_ is Nil!70947) (++!16767 (exprs!8317 ct1!250) (exprs!8317 ct2!346))))))

(assert (=> d!2267799 (= (forall!17697 (++!16767 (exprs!8317 ct1!250) (exprs!8317 ct2!346)) lambda!450874) e!4371044)))

(declare-fun b!7297999 () Bool)

(declare-fun e!4371045 () Bool)

(assert (=> b!7297999 (= e!4371044 e!4371045)))

(declare-fun res!2951655 () Bool)

(assert (=> b!7297999 (=> (not res!2951655) (not e!4371045))))

(declare-fun dynLambda!29014 (Int Regex!18877) Bool)

(assert (=> b!7297999 (= res!2951655 (dynLambda!29014 lambda!450874 (h!77395 (++!16767 (exprs!8317 ct1!250) (exprs!8317 ct2!346)))))))

(declare-fun b!7298000 () Bool)

(assert (=> b!7298000 (= e!4371045 (forall!17697 (t!385147 (++!16767 (exprs!8317 ct1!250) (exprs!8317 ct2!346))) lambda!450874))))

(assert (= (and d!2267799 (not res!2951654)) b!7297999))

(assert (= (and b!7297999 res!2951655) b!7298000))

(declare-fun b_lambda!281537 () Bool)

(assert (=> (not b_lambda!281537) (not b!7297999)))

(declare-fun m!7970396 () Bool)

(assert (=> b!7297999 m!7970396))

(declare-fun m!7970398 () Bool)

(assert (=> b!7298000 m!7970398))

(assert (=> d!2267531 d!2267799))

(assert (=> d!2267531 d!2267539))

(declare-fun d!2267801 () Bool)

(assert (=> d!2267801 (forall!17697 (++!16767 (exprs!8317 ct1!250) (exprs!8317 ct2!346)) lambda!450874)))

(assert (=> d!2267801 true))

(declare-fun _$78!864 () Unit!164352)

(assert (=> d!2267801 (= (choose!56565 (exprs!8317 ct1!250) (exprs!8317 ct2!346) lambda!450874) _$78!864)))

(declare-fun bs!1913399 () Bool)

(assert (= bs!1913399 d!2267801))

(assert (=> bs!1913399 m!7969610))

(assert (=> bs!1913399 m!7969610))

(assert (=> bs!1913399 m!7969898))

(assert (=> d!2267531 d!2267801))

(declare-fun d!2267803 () Bool)

(declare-fun res!2951656 () Bool)

(declare-fun e!4371046 () Bool)

(assert (=> d!2267803 (=> res!2951656 e!4371046)))

(assert (=> d!2267803 (= res!2951656 ((_ is Nil!70947) (exprs!8317 ct1!250)))))

(assert (=> d!2267803 (= (forall!17697 (exprs!8317 ct1!250) lambda!450874) e!4371046)))

(declare-fun b!7298001 () Bool)

(declare-fun e!4371047 () Bool)

(assert (=> b!7298001 (= e!4371046 e!4371047)))

(declare-fun res!2951657 () Bool)

(assert (=> b!7298001 (=> (not res!2951657) (not e!4371047))))

(assert (=> b!7298001 (= res!2951657 (dynLambda!29014 lambda!450874 (h!77395 (exprs!8317 ct1!250))))))

(declare-fun b!7298002 () Bool)

(assert (=> b!7298002 (= e!4371047 (forall!17697 (t!385147 (exprs!8317 ct1!250)) lambda!450874))))

(assert (= (and d!2267803 (not res!2951656)) b!7298001))

(assert (= (and b!7298001 res!2951657) b!7298002))

(declare-fun b_lambda!281539 () Bool)

(assert (=> (not b_lambda!281539) (not b!7298001)))

(declare-fun m!7970400 () Bool)

(assert (=> b!7298001 m!7970400))

(declare-fun m!7970402 () Bool)

(assert (=> b!7298002 m!7970402))

(assert (=> d!2267531 d!2267803))

(declare-fun d!2267805 () Bool)

(declare-fun c!1356689 () Bool)

(assert (=> d!2267805 (= c!1356689 ((_ is Nil!70947) lt!2599157))))

(declare-fun e!4371050 () (InoxSet Regex!18877))

(assert (=> d!2267805 (= (content!14824 lt!2599157) e!4371050)))

(declare-fun b!7298007 () Bool)

(assert (=> b!7298007 (= e!4371050 ((as const (Array Regex!18877 Bool)) false))))

(declare-fun b!7298008 () Bool)

(assert (=> b!7298008 (= e!4371050 ((_ map or) (store ((as const (Array Regex!18877 Bool)) false) (h!77395 lt!2599157) true) (content!14824 (t!385147 lt!2599157))))))

(assert (= (and d!2267805 c!1356689) b!7298007))

(assert (= (and d!2267805 (not c!1356689)) b!7298008))

(declare-fun m!7970404 () Bool)

(assert (=> b!7298008 m!7970404))

(declare-fun m!7970406 () Bool)

(assert (=> b!7298008 m!7970406))

(assert (=> d!2267555 d!2267805))

(declare-fun d!2267807 () Bool)

(declare-fun c!1356690 () Bool)

(assert (=> d!2267807 (= c!1356690 ((_ is Nil!70947) lt!2599085))))

(declare-fun e!4371051 () (InoxSet Regex!18877))

(assert (=> d!2267807 (= (content!14824 lt!2599085) e!4371051)))

(declare-fun b!7298009 () Bool)

(assert (=> b!7298009 (= e!4371051 ((as const (Array Regex!18877 Bool)) false))))

(declare-fun b!7298010 () Bool)

(assert (=> b!7298010 (= e!4371051 ((_ map or) (store ((as const (Array Regex!18877 Bool)) false) (h!77395 lt!2599085) true) (content!14824 (t!385147 lt!2599085))))))

(assert (= (and d!2267807 c!1356690) b!7298009))

(assert (= (and d!2267807 (not c!1356690)) b!7298010))

(declare-fun m!7970408 () Bool)

(assert (=> b!7298010 m!7970408))

(declare-fun m!7970410 () Bool)

(assert (=> b!7298010 m!7970410))

(assert (=> d!2267555 d!2267807))

(declare-fun d!2267809 () Bool)

(declare-fun c!1356691 () Bool)

(assert (=> d!2267809 (= c!1356691 ((_ is Nil!70947) (exprs!8317 ct2!346)))))

(declare-fun e!4371052 () (InoxSet Regex!18877))

(assert (=> d!2267809 (= (content!14824 (exprs!8317 ct2!346)) e!4371052)))

(declare-fun b!7298011 () Bool)

(assert (=> b!7298011 (= e!4371052 ((as const (Array Regex!18877 Bool)) false))))

(declare-fun b!7298012 () Bool)

(assert (=> b!7298012 (= e!4371052 ((_ map or) (store ((as const (Array Regex!18877 Bool)) false) (h!77395 (exprs!8317 ct2!346)) true) (content!14824 (t!385147 (exprs!8317 ct2!346)))))))

(assert (= (and d!2267809 c!1356691) b!7298011))

(assert (= (and d!2267809 (not c!1356691)) b!7298012))

(declare-fun m!7970412 () Bool)

(assert (=> b!7298012 m!7970412))

(declare-fun m!7970414 () Bool)

(assert (=> b!7298012 m!7970414))

(assert (=> d!2267555 d!2267809))

(declare-fun d!2267811 () Bool)

(declare-fun res!2951658 () Bool)

(declare-fun e!4371053 () Bool)

(assert (=> d!2267811 (=> res!2951658 e!4371053)))

(assert (=> d!2267811 (= res!2951658 ((_ is Nil!70947) (exprs!8317 ct1!250)))))

(assert (=> d!2267811 (= (forall!17697 (exprs!8317 ct1!250) lambda!450895) e!4371053)))

(declare-fun b!7298013 () Bool)

(declare-fun e!4371054 () Bool)

(assert (=> b!7298013 (= e!4371053 e!4371054)))

(declare-fun res!2951659 () Bool)

(assert (=> b!7298013 (=> (not res!2951659) (not e!4371054))))

(assert (=> b!7298013 (= res!2951659 (dynLambda!29014 lambda!450895 (h!77395 (exprs!8317 ct1!250))))))

(declare-fun b!7298014 () Bool)

(assert (=> b!7298014 (= e!4371054 (forall!17697 (t!385147 (exprs!8317 ct1!250)) lambda!450895))))

(assert (= (and d!2267811 (not res!2951658)) b!7298013))

(assert (= (and b!7298013 res!2951659) b!7298014))

(declare-fun b_lambda!281541 () Bool)

(assert (=> (not b_lambda!281541) (not b!7298013)))

(declare-fun m!7970416 () Bool)

(assert (=> b!7298013 m!7970416))

(declare-fun m!7970418 () Bool)

(assert (=> b!7298014 m!7970418))

(assert (=> d!2267523 d!2267811))

(assert (=> d!2267541 d!2267545))

(declare-fun d!2267813 () Bool)

(assert (=> d!2267813 (= (flatMap!2972 lt!2599082 lambda!450875) (dynLambda!29012 lambda!450875 lt!2599094))))

(assert (=> d!2267813 true))

(declare-fun _$13!4685 () Unit!164352)

(assert (=> d!2267813 (= (choose!56567 lt!2599082 lt!2599094 lambda!450875) _$13!4685)))

(declare-fun b_lambda!281543 () Bool)

(assert (=> (not b_lambda!281543) (not d!2267813)))

(declare-fun bs!1913400 () Bool)

(assert (= bs!1913400 d!2267813))

(assert (=> bs!1913400 m!7969612))

(assert (=> bs!1913400 m!7969928))

(assert (=> d!2267541 d!2267813))

(declare-fun d!2267815 () Bool)

(declare-fun res!2951660 () Bool)

(declare-fun e!4371055 () Bool)

(assert (=> d!2267815 (=> res!2951660 e!4371055)))

(assert (=> d!2267815 (= res!2951660 ((_ is Nil!70947) (exprs!8317 ct1!250)))))

(assert (=> d!2267815 (= (forall!17697 (exprs!8317 ct1!250) lambda!450901) e!4371055)))

(declare-fun b!7298015 () Bool)

(declare-fun e!4371056 () Bool)

(assert (=> b!7298015 (= e!4371055 e!4371056)))

(declare-fun res!2951661 () Bool)

(assert (=> b!7298015 (=> (not res!2951661) (not e!4371056))))

(assert (=> b!7298015 (= res!2951661 (dynLambda!29014 lambda!450901 (h!77395 (exprs!8317 ct1!250))))))

(declare-fun b!7298016 () Bool)

(assert (=> b!7298016 (= e!4371056 (forall!17697 (t!385147 (exprs!8317 ct1!250)) lambda!450901))))

(assert (= (and d!2267815 (not res!2951660)) b!7298015))

(assert (= (and b!7298015 res!2951661) b!7298016))

(declare-fun b_lambda!281545 () Bool)

(assert (=> (not b_lambda!281545) (not b!7298015)))

(declare-fun m!7970420 () Bool)

(assert (=> b!7298015 m!7970420))

(declare-fun m!7970422 () Bool)

(assert (=> b!7298016 m!7970422))

(assert (=> d!2267559 d!2267815))

(declare-fun b!7298017 () Bool)

(declare-fun e!4371058 () (InoxSet Context!15634))

(assert (=> b!7298017 (= e!4371058 (store ((as const (Array Context!15634 Bool)) false) (ite (or c!1356553 c!1356555) lt!2599113 (Context!15635 call!665050)) true))))

(declare-fun b!7298018 () Bool)

(declare-fun e!4371057 () (InoxSet Context!15634))

(assert (=> b!7298018 (= e!4371058 e!4371057)))

(declare-fun c!1356694 () Bool)

(assert (=> b!7298018 (= c!1356694 ((_ is Union!18877) (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))))))

(declare-fun b!7298019 () Bool)

(declare-fun e!4371061 () Bool)

(assert (=> b!7298019 (= e!4371061 (nullable!8054 (regOne!38266 (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250)))))))))))

(declare-fun bm!665139 () Bool)

(declare-fun call!665144 () List!71071)

(declare-fun call!665148 () List!71071)

(assert (=> bm!665139 (= call!665144 call!665148)))

(declare-fun bm!665140 () Bool)

(declare-fun call!665149 () (InoxSet Context!15634))

(declare-fun call!665146 () (InoxSet Context!15634))

(assert (=> bm!665140 (= call!665149 call!665146)))

(declare-fun d!2267817 () Bool)

(declare-fun c!1356695 () Bool)

(assert (=> d!2267817 (= c!1356695 (and ((_ is ElementMatch!18877) (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (= (c!1356483 (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (h!77396 s!7854))))))

(assert (=> d!2267817 (= (derivationStepZipperDown!2783 (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250)))))) (ite (or c!1356553 c!1356555) lt!2599113 (Context!15635 call!665050)) (h!77396 s!7854)) e!4371058)))

(declare-fun b!7298020 () Bool)

(declare-fun call!665145 () (InoxSet Context!15634))

(assert (=> b!7298020 (= e!4371057 ((_ map or) call!665145 call!665146))))

(declare-fun c!1356692 () Bool)

(declare-fun bm!665141 () Bool)

(declare-fun c!1356696 () Bool)

(assert (=> bm!665141 (= call!665148 ($colon$colon!3005 (exprs!8317 (ite (or c!1356553 c!1356555) lt!2599113 (Context!15635 call!665050))) (ite (or c!1356696 c!1356692) (regTwo!38266 (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250)))))))))))

(declare-fun b!7298021 () Bool)

(declare-fun e!4371059 () (InoxSet Context!15634))

(declare-fun e!4371060 () (InoxSet Context!15634))

(assert (=> b!7298021 (= e!4371059 e!4371060)))

(assert (=> b!7298021 (= c!1356692 ((_ is Concat!27722) (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))))))

(declare-fun b!7298022 () Bool)

(assert (=> b!7298022 (= c!1356696 e!4371061)))

(declare-fun res!2951662 () Bool)

(assert (=> b!7298022 (=> (not res!2951662) (not e!4371061))))

(assert (=> b!7298022 (= res!2951662 ((_ is Concat!27722) (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))))))

(assert (=> b!7298022 (= e!4371057 e!4371059)))

(declare-fun b!7298023 () Bool)

(assert (=> b!7298023 (= e!4371059 ((_ map or) call!665145 call!665149))))

(declare-fun bm!665142 () Bool)

(assert (=> bm!665142 (= call!665145 (derivationStepZipperDown!2783 (ite c!1356694 (regOne!38267 (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (regOne!38266 (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250)))))))) (ite c!1356694 (ite (or c!1356553 c!1356555) lt!2599113 (Context!15635 call!665050)) (Context!15635 call!665148)) (h!77396 s!7854)))))

(declare-fun b!7298024 () Bool)

(declare-fun e!4371062 () (InoxSet Context!15634))

(assert (=> b!7298024 (= e!4371062 ((as const (Array Context!15634 Bool)) false))))

(declare-fun b!7298025 () Bool)

(declare-fun c!1356693 () Bool)

(assert (=> b!7298025 (= c!1356693 ((_ is Star!18877) (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))))))

(assert (=> b!7298025 (= e!4371060 e!4371062)))

(declare-fun bm!665143 () Bool)

(declare-fun call!665147 () (InoxSet Context!15634))

(assert (=> bm!665143 (= call!665147 call!665149)))

(declare-fun b!7298026 () Bool)

(assert (=> b!7298026 (= e!4371060 call!665147)))

(declare-fun bm!665144 () Bool)

(assert (=> bm!665144 (= call!665146 (derivationStepZipperDown!2783 (ite c!1356694 (regTwo!38267 (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (ite c!1356696 (regTwo!38266 (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (ite c!1356692 (regOne!38266 (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (reg!19206 (ite c!1356553 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356555 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356551 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250)))))))))) (ite (or c!1356694 c!1356696) (ite (or c!1356553 c!1356555) lt!2599113 (Context!15635 call!665050)) (Context!15635 call!665144)) (h!77396 s!7854)))))

(declare-fun b!7298027 () Bool)

(assert (=> b!7298027 (= e!4371062 call!665147)))

(assert (= (and d!2267817 c!1356695) b!7298017))

(assert (= (and d!2267817 (not c!1356695)) b!7298018))

(assert (= (and b!7298018 c!1356694) b!7298020))

(assert (= (and b!7298018 (not c!1356694)) b!7298022))

(assert (= (and b!7298022 res!2951662) b!7298019))

(assert (= (and b!7298022 c!1356696) b!7298023))

(assert (= (and b!7298022 (not c!1356696)) b!7298021))

(assert (= (and b!7298021 c!1356692) b!7298026))

(assert (= (and b!7298021 (not c!1356692)) b!7298025))

(assert (= (and b!7298025 c!1356693) b!7298027))

(assert (= (and b!7298025 (not c!1356693)) b!7298024))

(assert (= (or b!7298026 b!7298027) bm!665139))

(assert (= (or b!7298026 b!7298027) bm!665143))

(assert (= (or b!7298023 bm!665139) bm!665141))

(assert (= (or b!7298023 bm!665143) bm!665140))

(assert (= (or b!7298020 b!7298023) bm!665142))

(assert (= (or b!7298020 bm!665140) bm!665144))

(declare-fun m!7970424 () Bool)

(assert (=> bm!665144 m!7970424))

(declare-fun m!7970426 () Bool)

(assert (=> b!7298019 m!7970426))

(declare-fun m!7970428 () Bool)

(assert (=> b!7298017 m!7970428))

(declare-fun m!7970430 () Bool)

(assert (=> bm!665141 m!7970430))

(declare-fun m!7970432 () Bool)

(assert (=> bm!665142 m!7970432))

(assert (=> bm!665050 d!2267817))

(declare-fun b!7298028 () Bool)

(declare-fun e!4371064 () (InoxSet Context!15634))

(assert (=> b!7298028 (= e!4371064 (store ((as const (Array Context!15634 Bool)) false) (Context!15635 (t!385147 (exprs!8317 lt!2599094))) true))))

(declare-fun b!7298029 () Bool)

(declare-fun e!4371063 () (InoxSet Context!15634))

(assert (=> b!7298029 (= e!4371064 e!4371063)))

(declare-fun c!1356699 () Bool)

(assert (=> b!7298029 (= c!1356699 ((_ is Union!18877) (h!77395 (exprs!8317 lt!2599094))))))

(declare-fun b!7298030 () Bool)

(declare-fun e!4371067 () Bool)

(assert (=> b!7298030 (= e!4371067 (nullable!8054 (regOne!38266 (h!77395 (exprs!8317 lt!2599094)))))))

(declare-fun bm!665145 () Bool)

(declare-fun call!665150 () List!71071)

(declare-fun call!665154 () List!71071)

(assert (=> bm!665145 (= call!665150 call!665154)))

(declare-fun bm!665146 () Bool)

(declare-fun call!665155 () (InoxSet Context!15634))

(declare-fun call!665152 () (InoxSet Context!15634))

(assert (=> bm!665146 (= call!665155 call!665152)))

(declare-fun d!2267819 () Bool)

(declare-fun c!1356700 () Bool)

(assert (=> d!2267819 (= c!1356700 (and ((_ is ElementMatch!18877) (h!77395 (exprs!8317 lt!2599094))) (= (c!1356483 (h!77395 (exprs!8317 lt!2599094))) (h!77396 s!7854))))))

(assert (=> d!2267819 (= (derivationStepZipperDown!2783 (h!77395 (exprs!8317 lt!2599094)) (Context!15635 (t!385147 (exprs!8317 lt!2599094))) (h!77396 s!7854)) e!4371064)))

(declare-fun b!7298031 () Bool)

(declare-fun call!665151 () (InoxSet Context!15634))

(assert (=> b!7298031 (= e!4371063 ((_ map or) call!665151 call!665152))))

(declare-fun bm!665147 () Bool)

(declare-fun c!1356701 () Bool)

(declare-fun c!1356697 () Bool)

(assert (=> bm!665147 (= call!665154 ($colon$colon!3005 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599094)))) (ite (or c!1356701 c!1356697) (regTwo!38266 (h!77395 (exprs!8317 lt!2599094))) (h!77395 (exprs!8317 lt!2599094)))))))

(declare-fun b!7298032 () Bool)

(declare-fun e!4371065 () (InoxSet Context!15634))

(declare-fun e!4371066 () (InoxSet Context!15634))

(assert (=> b!7298032 (= e!4371065 e!4371066)))

(assert (=> b!7298032 (= c!1356697 ((_ is Concat!27722) (h!77395 (exprs!8317 lt!2599094))))))

(declare-fun b!7298033 () Bool)

(assert (=> b!7298033 (= c!1356701 e!4371067)))

(declare-fun res!2951663 () Bool)

(assert (=> b!7298033 (=> (not res!2951663) (not e!4371067))))

(assert (=> b!7298033 (= res!2951663 ((_ is Concat!27722) (h!77395 (exprs!8317 lt!2599094))))))

(assert (=> b!7298033 (= e!4371063 e!4371065)))

(declare-fun b!7298034 () Bool)

(assert (=> b!7298034 (= e!4371065 ((_ map or) call!665151 call!665155))))

(declare-fun bm!665148 () Bool)

(assert (=> bm!665148 (= call!665151 (derivationStepZipperDown!2783 (ite c!1356699 (regOne!38267 (h!77395 (exprs!8317 lt!2599094))) (regOne!38266 (h!77395 (exprs!8317 lt!2599094)))) (ite c!1356699 (Context!15635 (t!385147 (exprs!8317 lt!2599094))) (Context!15635 call!665154)) (h!77396 s!7854)))))

(declare-fun b!7298035 () Bool)

(declare-fun e!4371068 () (InoxSet Context!15634))

(assert (=> b!7298035 (= e!4371068 ((as const (Array Context!15634 Bool)) false))))

(declare-fun b!7298036 () Bool)

(declare-fun c!1356698 () Bool)

(assert (=> b!7298036 (= c!1356698 ((_ is Star!18877) (h!77395 (exprs!8317 lt!2599094))))))

(assert (=> b!7298036 (= e!4371066 e!4371068)))

(declare-fun bm!665149 () Bool)

(declare-fun call!665153 () (InoxSet Context!15634))

(assert (=> bm!665149 (= call!665153 call!665155)))

(declare-fun b!7298037 () Bool)

(assert (=> b!7298037 (= e!4371066 call!665153)))

(declare-fun bm!665150 () Bool)

(assert (=> bm!665150 (= call!665152 (derivationStepZipperDown!2783 (ite c!1356699 (regTwo!38267 (h!77395 (exprs!8317 lt!2599094))) (ite c!1356701 (regTwo!38266 (h!77395 (exprs!8317 lt!2599094))) (ite c!1356697 (regOne!38266 (h!77395 (exprs!8317 lt!2599094))) (reg!19206 (h!77395 (exprs!8317 lt!2599094)))))) (ite (or c!1356699 c!1356701) (Context!15635 (t!385147 (exprs!8317 lt!2599094))) (Context!15635 call!665150)) (h!77396 s!7854)))))

(declare-fun b!7298038 () Bool)

(assert (=> b!7298038 (= e!4371068 call!665153)))

(assert (= (and d!2267819 c!1356700) b!7298028))

(assert (= (and d!2267819 (not c!1356700)) b!7298029))

(assert (= (and b!7298029 c!1356699) b!7298031))

(assert (= (and b!7298029 (not c!1356699)) b!7298033))

(assert (= (and b!7298033 res!2951663) b!7298030))

(assert (= (and b!7298033 c!1356701) b!7298034))

(assert (= (and b!7298033 (not c!1356701)) b!7298032))

(assert (= (and b!7298032 c!1356697) b!7298037))

(assert (= (and b!7298032 (not c!1356697)) b!7298036))

(assert (= (and b!7298036 c!1356698) b!7298038))

(assert (= (and b!7298036 (not c!1356698)) b!7298035))

(assert (= (or b!7298037 b!7298038) bm!665145))

(assert (= (or b!7298037 b!7298038) bm!665149))

(assert (= (or b!7298034 bm!665145) bm!665147))

(assert (= (or b!7298034 bm!665149) bm!665146))

(assert (= (or b!7298031 b!7298034) bm!665148))

(assert (= (or b!7298031 bm!665146) bm!665150))

(declare-fun m!7970434 () Bool)

(assert (=> bm!665150 m!7970434))

(declare-fun m!7970436 () Bool)

(assert (=> b!7298030 m!7970436))

(declare-fun m!7970438 () Bool)

(assert (=> b!7298028 m!7970438))

(declare-fun m!7970440 () Bool)

(assert (=> bm!665147 m!7970440))

(declare-fun m!7970442 () Bool)

(assert (=> bm!665148 m!7970442))

(assert (=> bm!665053 d!2267819))

(assert (=> bs!1913298 d!2267527))

(declare-fun b!7298039 () Bool)

(declare-fun e!4371071 () (InoxSet Context!15634))

(declare-fun e!4371069 () (InoxSet Context!15634))

(assert (=> b!7298039 (= e!4371071 e!4371069)))

(declare-fun c!1356702 () Bool)

(assert (=> b!7298039 (= c!1356702 ((_ is Cons!70947) (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599113))))))))

(declare-fun bm!665151 () Bool)

(declare-fun call!665156 () (InoxSet Context!15634))

(assert (=> bm!665151 (= call!665156 (derivationStepZipperDown!2783 (h!77395 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599113))))) (Context!15635 (t!385147 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599113)))))) (h!77396 s!7854)))))

(declare-fun b!7298040 () Bool)

(assert (=> b!7298040 (= e!4371071 ((_ map or) call!665156 (derivationStepZipperUp!2627 (Context!15635 (t!385147 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599113)))))) (h!77396 s!7854))))))

(declare-fun b!7298041 () Bool)

(assert (=> b!7298041 (= e!4371069 ((as const (Array Context!15634 Bool)) false))))

(declare-fun d!2267821 () Bool)

(declare-fun c!1356703 () Bool)

(declare-fun e!4371070 () Bool)

(assert (=> d!2267821 (= c!1356703 e!4371070)))

(declare-fun res!2951664 () Bool)

(assert (=> d!2267821 (=> (not res!2951664) (not e!4371070))))

(assert (=> d!2267821 (= res!2951664 ((_ is Cons!70947) (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599113))))))))

(assert (=> d!2267821 (= (derivationStepZipperUp!2627 (Context!15635 (t!385147 (exprs!8317 lt!2599113))) (h!77396 s!7854)) e!4371071)))

(declare-fun b!7298042 () Bool)

(assert (=> b!7298042 (= e!4371070 (nullable!8054 (h!77395 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599113)))))))))

(declare-fun b!7298043 () Bool)

(assert (=> b!7298043 (= e!4371069 call!665156)))

(assert (= (and d!2267821 res!2951664) b!7298042))

(assert (= (and d!2267821 c!1356703) b!7298040))

(assert (= (and d!2267821 (not c!1356703)) b!7298039))

(assert (= (and b!7298039 c!1356702) b!7298043))

(assert (= (and b!7298039 (not c!1356702)) b!7298041))

(assert (= (or b!7298040 b!7298043) bm!665151))

(declare-fun m!7970444 () Bool)

(assert (=> bm!665151 m!7970444))

(declare-fun m!7970446 () Bool)

(assert (=> b!7298040 m!7970446))

(declare-fun m!7970448 () Bool)

(assert (=> b!7298042 m!7970448))

(assert (=> b!7297615 d!2267821))

(declare-fun b!7298044 () Bool)

(declare-fun e!4371073 () (InoxSet Context!15634))

(assert (=> b!7298044 (= e!4371073 (store ((as const (Array Context!15634 Bool)) false) (Context!15635 (t!385147 (exprs!8317 ct1!250))) true))))

(declare-fun b!7298045 () Bool)

(declare-fun e!4371072 () (InoxSet Context!15634))

(assert (=> b!7298045 (= e!4371073 e!4371072)))

(declare-fun c!1356706 () Bool)

(assert (=> b!7298045 (= c!1356706 ((_ is Union!18877) (h!77395 (exprs!8317 ct1!250))))))

(declare-fun b!7298046 () Bool)

(declare-fun e!4371076 () Bool)

(assert (=> b!7298046 (= e!4371076 (nullable!8054 (regOne!38266 (h!77395 (exprs!8317 ct1!250)))))))

(declare-fun bm!665152 () Bool)

(declare-fun call!665157 () List!71071)

(declare-fun call!665161 () List!71071)

(assert (=> bm!665152 (= call!665157 call!665161)))

(declare-fun bm!665153 () Bool)

(declare-fun call!665162 () (InoxSet Context!15634))

(declare-fun call!665159 () (InoxSet Context!15634))

(assert (=> bm!665153 (= call!665162 call!665159)))

(declare-fun d!2267823 () Bool)

(declare-fun c!1356707 () Bool)

(assert (=> d!2267823 (= c!1356707 (and ((_ is ElementMatch!18877) (h!77395 (exprs!8317 ct1!250))) (= (c!1356483 (h!77395 (exprs!8317 ct1!250))) (h!77396 s!7854))))))

(assert (=> d!2267823 (= (derivationStepZipperDown!2783 (h!77395 (exprs!8317 ct1!250)) (Context!15635 (t!385147 (exprs!8317 ct1!250))) (h!77396 s!7854)) e!4371073)))

(declare-fun b!7298047 () Bool)

(declare-fun call!665158 () (InoxSet Context!15634))

(assert (=> b!7298047 (= e!4371072 ((_ map or) call!665158 call!665159))))

(declare-fun c!1356708 () Bool)

(declare-fun bm!665154 () Bool)

(declare-fun c!1356704 () Bool)

(assert (=> bm!665154 (= call!665161 ($colon$colon!3005 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 ct1!250)))) (ite (or c!1356708 c!1356704) (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (h!77395 (exprs!8317 ct1!250)))))))

(declare-fun b!7298048 () Bool)

(declare-fun e!4371074 () (InoxSet Context!15634))

(declare-fun e!4371075 () (InoxSet Context!15634))

(assert (=> b!7298048 (= e!4371074 e!4371075)))

(assert (=> b!7298048 (= c!1356704 ((_ is Concat!27722) (h!77395 (exprs!8317 ct1!250))))))

(declare-fun b!7298049 () Bool)

(assert (=> b!7298049 (= c!1356708 e!4371076)))

(declare-fun res!2951665 () Bool)

(assert (=> b!7298049 (=> (not res!2951665) (not e!4371076))))

(assert (=> b!7298049 (= res!2951665 ((_ is Concat!27722) (h!77395 (exprs!8317 ct1!250))))))

(assert (=> b!7298049 (= e!4371072 e!4371074)))

(declare-fun b!7298050 () Bool)

(assert (=> b!7298050 (= e!4371074 ((_ map or) call!665158 call!665162))))

(declare-fun bm!665155 () Bool)

(assert (=> bm!665155 (= call!665158 (derivationStepZipperDown!2783 (ite c!1356706 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250)))) (ite c!1356706 (Context!15635 (t!385147 (exprs!8317 ct1!250))) (Context!15635 call!665161)) (h!77396 s!7854)))))

(declare-fun b!7298051 () Bool)

(declare-fun e!4371077 () (InoxSet Context!15634))

(assert (=> b!7298051 (= e!4371077 ((as const (Array Context!15634 Bool)) false))))

(declare-fun b!7298052 () Bool)

(declare-fun c!1356705 () Bool)

(assert (=> b!7298052 (= c!1356705 ((_ is Star!18877) (h!77395 (exprs!8317 ct1!250))))))

(assert (=> b!7298052 (= e!4371075 e!4371077)))

(declare-fun bm!665156 () Bool)

(declare-fun call!665160 () (InoxSet Context!15634))

(assert (=> bm!665156 (= call!665160 call!665162)))

(declare-fun b!7298053 () Bool)

(assert (=> b!7298053 (= e!4371075 call!665160)))

(declare-fun bm!665157 () Bool)

(assert (=> bm!665157 (= call!665159 (derivationStepZipperDown!2783 (ite c!1356706 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356708 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356704 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250)))))) (ite (or c!1356706 c!1356708) (Context!15635 (t!385147 (exprs!8317 ct1!250))) (Context!15635 call!665157)) (h!77396 s!7854)))))

(declare-fun b!7298054 () Bool)

(assert (=> b!7298054 (= e!4371077 call!665160)))

(assert (= (and d!2267823 c!1356707) b!7298044))

(assert (= (and d!2267823 (not c!1356707)) b!7298045))

(assert (= (and b!7298045 c!1356706) b!7298047))

(assert (= (and b!7298045 (not c!1356706)) b!7298049))

(assert (= (and b!7298049 res!2951665) b!7298046))

(assert (= (and b!7298049 c!1356708) b!7298050))

(assert (= (and b!7298049 (not c!1356708)) b!7298048))

(assert (= (and b!7298048 c!1356704) b!7298053))

(assert (= (and b!7298048 (not c!1356704)) b!7298052))

(assert (= (and b!7298052 c!1356705) b!7298054))

(assert (= (and b!7298052 (not c!1356705)) b!7298051))

(assert (= (or b!7298053 b!7298054) bm!665152))

(assert (= (or b!7298053 b!7298054) bm!665156))

(assert (= (or b!7298050 bm!665152) bm!665154))

(assert (= (or b!7298050 bm!665156) bm!665153))

(assert (= (or b!7298047 b!7298050) bm!665155))

(assert (= (or b!7298047 bm!665153) bm!665157))

(declare-fun m!7970450 () Bool)

(assert (=> bm!665157 m!7970450))

(assert (=> b!7298046 m!7969868))

(declare-fun m!7970452 () Bool)

(assert (=> b!7298044 m!7970452))

(declare-fun m!7970454 () Bool)

(assert (=> bm!665154 m!7970454))

(declare-fun m!7970456 () Bool)

(assert (=> bm!665155 m!7970456))

(assert (=> bm!665052 d!2267823))

(assert (=> d!2267547 d!2267777))

(declare-fun d!2267825 () Bool)

(declare-fun c!1356709 () Bool)

(assert (=> d!2267825 (= c!1356709 (isEmpty!40818 s!7854))))

(declare-fun e!4371078 () Bool)

(assert (=> d!2267825 (= (matchZipper!3781 (store ((as const (Array Context!15634 Bool)) false) (Context!15635 (++!16767 (exprs!8317 lt!2599113) (exprs!8317 ct2!346))) true) s!7854) e!4371078)))

(declare-fun b!7298055 () Bool)

(assert (=> b!7298055 (= e!4371078 (nullableZipper!3066 (store ((as const (Array Context!15634 Bool)) false) (Context!15635 (++!16767 (exprs!8317 lt!2599113) (exprs!8317 ct2!346))) true)))))

(declare-fun b!7298056 () Bool)

(assert (=> b!7298056 (= e!4371078 (matchZipper!3781 (derivationStepZipper!3610 (store ((as const (Array Context!15634 Bool)) false) (Context!15635 (++!16767 (exprs!8317 lt!2599113) (exprs!8317 ct2!346))) true) (head!15064 s!7854)) (tail!14601 s!7854)))))

(assert (= (and d!2267825 c!1356709) b!7298055))

(assert (= (and d!2267825 (not c!1356709)) b!7298056))

(assert (=> d!2267825 m!7969848))

(assert (=> b!7298055 m!7969834))

(declare-fun m!7970458 () Bool)

(assert (=> b!7298055 m!7970458))

(assert (=> b!7298056 m!7969852))

(assert (=> b!7298056 m!7969834))

(assert (=> b!7298056 m!7969852))

(declare-fun m!7970460 () Bool)

(assert (=> b!7298056 m!7970460))

(assert (=> b!7298056 m!7969856))

(assert (=> b!7298056 m!7970460))

(assert (=> b!7298056 m!7969856))

(declare-fun m!7970462 () Bool)

(assert (=> b!7298056 m!7970462))

(assert (=> d!2267507 d!2267825))

(declare-fun e!4371080 () Bool)

(declare-fun lt!2599178 () List!71071)

(declare-fun b!7298060 () Bool)

(assert (=> b!7298060 (= e!4371080 (or (not (= (exprs!8317 ct2!346) Nil!70947)) (= lt!2599178 (exprs!8317 lt!2599113))))))

(declare-fun b!7298058 () Bool)

(declare-fun e!4371079 () List!71071)

(assert (=> b!7298058 (= e!4371079 (Cons!70947 (h!77395 (exprs!8317 lt!2599113)) (++!16767 (t!385147 (exprs!8317 lt!2599113)) (exprs!8317 ct2!346))))))

(declare-fun d!2267827 () Bool)

(assert (=> d!2267827 e!4371080))

(declare-fun res!2951667 () Bool)

(assert (=> d!2267827 (=> (not res!2951667) (not e!4371080))))

(assert (=> d!2267827 (= res!2951667 (= (content!14824 lt!2599178) ((_ map or) (content!14824 (exprs!8317 lt!2599113)) (content!14824 (exprs!8317 ct2!346)))))))

(assert (=> d!2267827 (= lt!2599178 e!4371079)))

(declare-fun c!1356710 () Bool)

(assert (=> d!2267827 (= c!1356710 ((_ is Nil!70947) (exprs!8317 lt!2599113)))))

(assert (=> d!2267827 (= (++!16767 (exprs!8317 lt!2599113) (exprs!8317 ct2!346)) lt!2599178)))

(declare-fun b!7298059 () Bool)

(declare-fun res!2951666 () Bool)

(assert (=> b!7298059 (=> (not res!2951666) (not e!4371080))))

(assert (=> b!7298059 (= res!2951666 (= (size!41870 lt!2599178) (+ (size!41870 (exprs!8317 lt!2599113)) (size!41870 (exprs!8317 ct2!346)))))))

(declare-fun b!7298057 () Bool)

(assert (=> b!7298057 (= e!4371079 (exprs!8317 ct2!346))))

(assert (= (and d!2267827 c!1356710) b!7298057))

(assert (= (and d!2267827 (not c!1356710)) b!7298058))

(assert (= (and d!2267827 res!2951667) b!7298059))

(assert (= (and b!7298059 res!2951666) b!7298060))

(declare-fun m!7970464 () Bool)

(assert (=> b!7298058 m!7970464))

(declare-fun m!7970466 () Bool)

(assert (=> d!2267827 m!7970466))

(declare-fun m!7970468 () Bool)

(assert (=> d!2267827 m!7970468))

(assert (=> d!2267827 m!7969920))

(declare-fun m!7970470 () Bool)

(assert (=> b!7298059 m!7970470))

(declare-fun m!7970472 () Bool)

(assert (=> b!7298059 m!7970472))

(assert (=> b!7298059 m!7969926))

(assert (=> d!2267507 d!2267827))

(assert (=> d!2267507 d!2267519))

(declare-fun bs!1913401 () Bool)

(declare-fun d!2267829 () Bool)

(assert (= bs!1913401 (and d!2267829 d!2267521)))

(declare-fun lambda!450929 () Int)

(assert (=> bs!1913401 (= lambda!450929 lambda!450894)))

(declare-fun bs!1913402 () Bool)

(assert (= bs!1913402 (and d!2267829 b!7297431)))

(assert (=> bs!1913402 (= lambda!450929 lambda!450874)))

(declare-fun bs!1913403 () Bool)

(assert (= bs!1913403 (and d!2267829 d!2267507)))

(assert (=> bs!1913403 (= lambda!450929 lambda!450891)))

(declare-fun bs!1913404 () Bool)

(assert (= bs!1913404 (and d!2267829 d!2267559)))

(assert (=> bs!1913404 (not (= lambda!450929 lambda!450901))))

(declare-fun bs!1913405 () Bool)

(assert (= bs!1913405 (and d!2267829 d!2267523)))

(assert (=> bs!1913405 (= lambda!450929 lambda!450895)))

(assert (=> d!2267829 (matchZipper!3781 (store ((as const (Array Context!15634 Bool)) false) (Context!15635 (++!16767 (exprs!8317 lt!2599113) (exprs!8317 ct2!346))) true) s!7854)))

(declare-fun lt!2599181 () Unit!164352)

(assert (=> d!2267829 (= lt!2599181 (lemmaConcatPreservesForall!1624 (exprs!8317 lt!2599113) (exprs!8317 ct2!346) lambda!450929))))

(assert (=> d!2267829 true))

(declare-fun _$57!155 () Unit!164352)

(assert (=> d!2267829 (= (choose!56566 lt!2599113 ct2!346 s!7854) _$57!155)))

(declare-fun bs!1913406 () Bool)

(assert (= bs!1913406 d!2267829))

(assert (=> bs!1913406 m!7969840))

(assert (=> bs!1913406 m!7969834))

(assert (=> bs!1913406 m!7969834))

(assert (=> bs!1913406 m!7969836))

(declare-fun m!7970474 () Bool)

(assert (=> bs!1913406 m!7970474))

(assert (=> d!2267507 d!2267829))

(declare-fun d!2267831 () Bool)

(assert (=> d!2267831 (forall!17697 (++!16767 (exprs!8317 lt!2599113) (exprs!8317 ct2!346)) lambda!450891)))

(declare-fun lt!2599182 () Unit!164352)

(assert (=> d!2267831 (= lt!2599182 (choose!56565 (exprs!8317 lt!2599113) (exprs!8317 ct2!346) lambda!450891))))

(assert (=> d!2267831 (forall!17697 (exprs!8317 lt!2599113) lambda!450891)))

(assert (=> d!2267831 (= (lemmaConcatPreservesForall!1624 (exprs!8317 lt!2599113) (exprs!8317 ct2!346) lambda!450891) lt!2599182)))

(declare-fun bs!1913407 () Bool)

(assert (= bs!1913407 d!2267831))

(assert (=> bs!1913407 m!7969840))

(assert (=> bs!1913407 m!7969840))

(declare-fun m!7970476 () Bool)

(assert (=> bs!1913407 m!7970476))

(declare-fun m!7970478 () Bool)

(assert (=> bs!1913407 m!7970478))

(declare-fun m!7970480 () Bool)

(assert (=> bs!1913407 m!7970480))

(assert (=> d!2267507 d!2267831))

(declare-fun d!2267833 () Bool)

(declare-fun res!2951668 () Bool)

(declare-fun e!4371081 () Bool)

(assert (=> d!2267833 (=> res!2951668 e!4371081)))

(assert (=> d!2267833 (= res!2951668 ((_ is Nil!70947) (exprs!8317 ct2!346)))))

(assert (=> d!2267833 (= (forall!17697 (exprs!8317 ct2!346) lambda!450894) e!4371081)))

(declare-fun b!7298061 () Bool)

(declare-fun e!4371082 () Bool)

(assert (=> b!7298061 (= e!4371081 e!4371082)))

(declare-fun res!2951669 () Bool)

(assert (=> b!7298061 (=> (not res!2951669) (not e!4371082))))

(assert (=> b!7298061 (= res!2951669 (dynLambda!29014 lambda!450894 (h!77395 (exprs!8317 ct2!346))))))

(declare-fun b!7298062 () Bool)

(assert (=> b!7298062 (= e!4371082 (forall!17697 (t!385147 (exprs!8317 ct2!346)) lambda!450894))))

(assert (= (and d!2267833 (not res!2951668)) b!7298061))

(assert (= (and b!7298061 res!2951669) b!7298062))

(declare-fun b_lambda!281547 () Bool)

(assert (=> (not b_lambda!281547) (not b!7298061)))

(declare-fun m!7970482 () Bool)

(assert (=> b!7298061 m!7970482))

(declare-fun m!7970484 () Bool)

(assert (=> b!7298062 m!7970484))

(assert (=> d!2267521 d!2267833))

(declare-fun b!7298063 () Bool)

(declare-fun e!4371084 () (InoxSet Context!15634))

(assert (=> b!7298063 (= e!4371084 (store ((as const (Array Context!15634 Bool)) false) (Context!15635 (t!385147 (exprs!8317 lt!2599097))) true))))

(declare-fun b!7298064 () Bool)

(declare-fun e!4371083 () (InoxSet Context!15634))

(assert (=> b!7298064 (= e!4371084 e!4371083)))

(declare-fun c!1356713 () Bool)

(assert (=> b!7298064 (= c!1356713 ((_ is Union!18877) (h!77395 (exprs!8317 lt!2599097))))))

(declare-fun b!7298065 () Bool)

(declare-fun e!4371087 () Bool)

(assert (=> b!7298065 (= e!4371087 (nullable!8054 (regOne!38266 (h!77395 (exprs!8317 lt!2599097)))))))

(declare-fun bm!665158 () Bool)

(declare-fun call!665163 () List!71071)

(declare-fun call!665167 () List!71071)

(assert (=> bm!665158 (= call!665163 call!665167)))

(declare-fun bm!665159 () Bool)

(declare-fun call!665168 () (InoxSet Context!15634))

(declare-fun call!665165 () (InoxSet Context!15634))

(assert (=> bm!665159 (= call!665168 call!665165)))

(declare-fun d!2267835 () Bool)

(declare-fun c!1356714 () Bool)

(assert (=> d!2267835 (= c!1356714 (and ((_ is ElementMatch!18877) (h!77395 (exprs!8317 lt!2599097))) (= (c!1356483 (h!77395 (exprs!8317 lt!2599097))) (h!77396 s!7854))))))

(assert (=> d!2267835 (= (derivationStepZipperDown!2783 (h!77395 (exprs!8317 lt!2599097)) (Context!15635 (t!385147 (exprs!8317 lt!2599097))) (h!77396 s!7854)) e!4371084)))

(declare-fun b!7298066 () Bool)

(declare-fun call!665164 () (InoxSet Context!15634))

(assert (=> b!7298066 (= e!4371083 ((_ map or) call!665164 call!665165))))

(declare-fun c!1356711 () Bool)

(declare-fun bm!665160 () Bool)

(declare-fun c!1356715 () Bool)

(assert (=> bm!665160 (= call!665167 ($colon$colon!3005 (exprs!8317 (Context!15635 (t!385147 (exprs!8317 lt!2599097)))) (ite (or c!1356715 c!1356711) (regTwo!38266 (h!77395 (exprs!8317 lt!2599097))) (h!77395 (exprs!8317 lt!2599097)))))))

(declare-fun b!7298067 () Bool)

(declare-fun e!4371085 () (InoxSet Context!15634))

(declare-fun e!4371086 () (InoxSet Context!15634))

(assert (=> b!7298067 (= e!4371085 e!4371086)))

(assert (=> b!7298067 (= c!1356711 ((_ is Concat!27722) (h!77395 (exprs!8317 lt!2599097))))))

(declare-fun b!7298068 () Bool)

(assert (=> b!7298068 (= c!1356715 e!4371087)))

(declare-fun res!2951670 () Bool)

(assert (=> b!7298068 (=> (not res!2951670) (not e!4371087))))

(assert (=> b!7298068 (= res!2951670 ((_ is Concat!27722) (h!77395 (exprs!8317 lt!2599097))))))

(assert (=> b!7298068 (= e!4371083 e!4371085)))

(declare-fun b!7298069 () Bool)

(assert (=> b!7298069 (= e!4371085 ((_ map or) call!665164 call!665168))))

(declare-fun bm!665161 () Bool)

(assert (=> bm!665161 (= call!665164 (derivationStepZipperDown!2783 (ite c!1356713 (regOne!38267 (h!77395 (exprs!8317 lt!2599097))) (regOne!38266 (h!77395 (exprs!8317 lt!2599097)))) (ite c!1356713 (Context!15635 (t!385147 (exprs!8317 lt!2599097))) (Context!15635 call!665167)) (h!77396 s!7854)))))

(declare-fun b!7298070 () Bool)

(declare-fun e!4371088 () (InoxSet Context!15634))

(assert (=> b!7298070 (= e!4371088 ((as const (Array Context!15634 Bool)) false))))

(declare-fun b!7298071 () Bool)

(declare-fun c!1356712 () Bool)

(assert (=> b!7298071 (= c!1356712 ((_ is Star!18877) (h!77395 (exprs!8317 lt!2599097))))))

(assert (=> b!7298071 (= e!4371086 e!4371088)))

(declare-fun bm!665162 () Bool)

(declare-fun call!665166 () (InoxSet Context!15634))

(assert (=> bm!665162 (= call!665166 call!665168)))

(declare-fun b!7298072 () Bool)

(assert (=> b!7298072 (= e!4371086 call!665166)))

(declare-fun bm!665163 () Bool)

(assert (=> bm!665163 (= call!665165 (derivationStepZipperDown!2783 (ite c!1356713 (regTwo!38267 (h!77395 (exprs!8317 lt!2599097))) (ite c!1356715 (regTwo!38266 (h!77395 (exprs!8317 lt!2599097))) (ite c!1356711 (regOne!38266 (h!77395 (exprs!8317 lt!2599097))) (reg!19206 (h!77395 (exprs!8317 lt!2599097)))))) (ite (or c!1356713 c!1356715) (Context!15635 (t!385147 (exprs!8317 lt!2599097))) (Context!15635 call!665163)) (h!77396 s!7854)))))

(declare-fun b!7298073 () Bool)

(assert (=> b!7298073 (= e!4371088 call!665166)))

(assert (= (and d!2267835 c!1356714) b!7298063))

(assert (= (and d!2267835 (not c!1356714)) b!7298064))

(assert (= (and b!7298064 c!1356713) b!7298066))

(assert (= (and b!7298064 (not c!1356713)) b!7298068))

(assert (= (and b!7298068 res!2951670) b!7298065))

(assert (= (and b!7298068 c!1356715) b!7298069))

(assert (= (and b!7298068 (not c!1356715)) b!7298067))

(assert (= (and b!7298067 c!1356711) b!7298072))

(assert (= (and b!7298067 (not c!1356711)) b!7298071))

(assert (= (and b!7298071 c!1356712) b!7298073))

(assert (= (and b!7298071 (not c!1356712)) b!7298070))

(assert (= (or b!7298072 b!7298073) bm!665158))

(assert (= (or b!7298072 b!7298073) bm!665162))

(assert (= (or b!7298069 bm!665158) bm!665160))

(assert (= (or b!7298069 bm!665162) bm!665159))

(assert (= (or b!7298066 b!7298069) bm!665161))

(assert (= (or b!7298066 bm!665159) bm!665163))

(declare-fun m!7970486 () Bool)

(assert (=> bm!665163 m!7970486))

(declare-fun m!7970488 () Bool)

(assert (=> b!7298065 m!7970488))

(declare-fun m!7970490 () Bool)

(assert (=> b!7298063 m!7970490))

(declare-fun m!7970492 () Bool)

(assert (=> bm!665160 m!7970492))

(declare-fun m!7970494 () Bool)

(assert (=> bm!665161 m!7970494))

(assert (=> bm!665032 d!2267835))

(declare-fun d!2267837 () Bool)

(declare-fun lt!2599183 () Int)

(assert (=> d!2267837 (>= lt!2599183 0)))

(declare-fun e!4371089 () Int)

(assert (=> d!2267837 (= lt!2599183 e!4371089)))

(declare-fun c!1356716 () Bool)

(assert (=> d!2267837 (= c!1356716 ((_ is Nil!70947) lt!2599151))))

(assert (=> d!2267837 (= (size!41870 lt!2599151) lt!2599183)))

(declare-fun b!7298074 () Bool)

(assert (=> b!7298074 (= e!4371089 0)))

(declare-fun b!7298075 () Bool)

(assert (=> b!7298075 (= e!4371089 (+ 1 (size!41870 (t!385147 lt!2599151))))))

(assert (= (and d!2267837 c!1356716) b!7298074))

(assert (= (and d!2267837 (not c!1356716)) b!7298075))

(declare-fun m!7970496 () Bool)

(assert (=> b!7298075 m!7970496))

(assert (=> b!7297643 d!2267837))

(declare-fun d!2267839 () Bool)

(declare-fun lt!2599184 () Int)

(assert (=> d!2267839 (>= lt!2599184 0)))

(declare-fun e!4371090 () Int)

(assert (=> d!2267839 (= lt!2599184 e!4371090)))

(declare-fun c!1356717 () Bool)

(assert (=> d!2267839 (= c!1356717 ((_ is Nil!70947) (exprs!8317 ct1!250)))))

(assert (=> d!2267839 (= (size!41870 (exprs!8317 ct1!250)) lt!2599184)))

(declare-fun b!7298076 () Bool)

(assert (=> b!7298076 (= e!4371090 0)))

(declare-fun b!7298077 () Bool)

(assert (=> b!7298077 (= e!4371090 (+ 1 (size!41870 (t!385147 (exprs!8317 ct1!250)))))))

(assert (= (and d!2267839 c!1356717) b!7298076))

(assert (= (and d!2267839 (not c!1356717)) b!7298077))

(assert (=> b!7298077 m!7970308))

(assert (=> b!7297643 d!2267839))

(assert (=> b!7297643 d!2267763))

(declare-fun d!2267841 () Bool)

(assert (=> d!2267841 (= (nullable!8054 (h!77395 (exprs!8317 lt!2599113))) (nullableFct!3187 (h!77395 (exprs!8317 lt!2599113))))))

(declare-fun bs!1913408 () Bool)

(assert (= bs!1913408 d!2267841))

(declare-fun m!7970498 () Bool)

(assert (=> bs!1913408 m!7970498))

(assert (=> b!7297617 d!2267841))

(declare-fun lt!2599185 () List!71071)

(declare-fun b!7298081 () Bool)

(declare-fun e!4371092 () Bool)

(assert (=> b!7298081 (= e!4371092 (or (not (= (exprs!8317 ct2!346) Nil!70947)) (= lt!2599185 (t!385147 lt!2599085))))))

(declare-fun b!7298079 () Bool)

(declare-fun e!4371091 () List!71071)

(assert (=> b!7298079 (= e!4371091 (Cons!70947 (h!77395 (t!385147 lt!2599085)) (++!16767 (t!385147 (t!385147 lt!2599085)) (exprs!8317 ct2!346))))))

(declare-fun d!2267843 () Bool)

(assert (=> d!2267843 e!4371092))

(declare-fun res!2951672 () Bool)

(assert (=> d!2267843 (=> (not res!2951672) (not e!4371092))))

(assert (=> d!2267843 (= res!2951672 (= (content!14824 lt!2599185) ((_ map or) (content!14824 (t!385147 lt!2599085)) (content!14824 (exprs!8317 ct2!346)))))))

(assert (=> d!2267843 (= lt!2599185 e!4371091)))

(declare-fun c!1356718 () Bool)

(assert (=> d!2267843 (= c!1356718 ((_ is Nil!70947) (t!385147 lt!2599085)))))

(assert (=> d!2267843 (= (++!16767 (t!385147 lt!2599085) (exprs!8317 ct2!346)) lt!2599185)))

(declare-fun b!7298080 () Bool)

(declare-fun res!2951671 () Bool)

(assert (=> b!7298080 (=> (not res!2951671) (not e!4371092))))

(assert (=> b!7298080 (= res!2951671 (= (size!41870 lt!2599185) (+ (size!41870 (t!385147 lt!2599085)) (size!41870 (exprs!8317 ct2!346)))))))

(declare-fun b!7298078 () Bool)

(assert (=> b!7298078 (= e!4371091 (exprs!8317 ct2!346))))

(assert (= (and d!2267843 c!1356718) b!7298078))

(assert (= (and d!2267843 (not c!1356718)) b!7298079))

(assert (= (and d!2267843 res!2951672) b!7298080))

(assert (= (and b!7298080 res!2951671) b!7298081))

(declare-fun m!7970500 () Bool)

(assert (=> b!7298079 m!7970500))

(declare-fun m!7970502 () Bool)

(assert (=> d!2267843 m!7970502))

(assert (=> d!2267843 m!7970410))

(assert (=> d!2267843 m!7969920))

(declare-fun m!7970504 () Bool)

(assert (=> b!7298080 m!7970504))

(assert (=> b!7298080 m!7970342))

(assert (=> b!7298080 m!7969926))

(assert (=> b!7297655 d!2267843))

(declare-fun d!2267845 () Bool)

(assert (=> d!2267845 true))

(declare-fun setRes!53707 () Bool)

(assert (=> d!2267845 setRes!53707))

(declare-fun condSetEmpty!53707 () Bool)

(declare-fun res!2951675 () (InoxSet Context!15634))

(assert (=> d!2267845 (= condSetEmpty!53707 (= res!2951675 ((as const (Array Context!15634 Bool)) false)))))

(assert (=> d!2267845 (= (choose!56564 lt!2599089 lambda!450875) res!2951675)))

(declare-fun setIsEmpty!53707 () Bool)

(assert (=> setIsEmpty!53707 setRes!53707))

(declare-fun setElem!53707 () Context!15634)

(declare-fun e!4371095 () Bool)

(declare-fun setNonEmpty!53707 () Bool)

(declare-fun tp!2062635 () Bool)

(assert (=> setNonEmpty!53707 (= setRes!53707 (and tp!2062635 (inv!90202 setElem!53707) e!4371095))))

(declare-fun setRest!53707 () (InoxSet Context!15634))

(assert (=> setNonEmpty!53707 (= res!2951675 ((_ map or) (store ((as const (Array Context!15634 Bool)) false) setElem!53707 true) setRest!53707))))

(declare-fun b!7298084 () Bool)

(declare-fun tp!2062634 () Bool)

(assert (=> b!7298084 (= e!4371095 tp!2062634)))

(assert (= (and d!2267845 condSetEmpty!53707) setIsEmpty!53707))

(assert (= (and d!2267845 (not condSetEmpty!53707)) setNonEmpty!53707))

(assert (= setNonEmpty!53707 b!7298084))

(declare-fun m!7970506 () Bool)

(assert (=> setNonEmpty!53707 m!7970506))

(assert (=> d!2267501 d!2267845))

(declare-fun d!2267847 () Bool)

(declare-fun res!2951676 () Bool)

(declare-fun e!4371096 () Bool)

(assert (=> d!2267847 (=> res!2951676 e!4371096)))

(assert (=> d!2267847 (= res!2951676 ((_ is Nil!70947) (++!16767 lt!2599085 (exprs!8317 ct2!346))))))

(assert (=> d!2267847 (= (forall!17697 (++!16767 lt!2599085 (exprs!8317 ct2!346)) lambda!450874) e!4371096)))

(declare-fun b!7298085 () Bool)

(declare-fun e!4371097 () Bool)

(assert (=> b!7298085 (= e!4371096 e!4371097)))

(declare-fun res!2951677 () Bool)

(assert (=> b!7298085 (=> (not res!2951677) (not e!4371097))))

(assert (=> b!7298085 (= res!2951677 (dynLambda!29014 lambda!450874 (h!77395 (++!16767 lt!2599085 (exprs!8317 ct2!346)))))))

(declare-fun b!7298086 () Bool)

(assert (=> b!7298086 (= e!4371097 (forall!17697 (t!385147 (++!16767 lt!2599085 (exprs!8317 ct2!346))) lambda!450874))))

(assert (= (and d!2267847 (not res!2951676)) b!7298085))

(assert (= (and b!7298085 res!2951677) b!7298086))

(declare-fun b_lambda!281549 () Bool)

(assert (=> (not b_lambda!281549) (not b!7298085)))

(declare-fun m!7970508 () Bool)

(assert (=> b!7298085 m!7970508))

(declare-fun m!7970510 () Bool)

(assert (=> b!7298086 m!7970510))

(assert (=> d!2267505 d!2267847))

(assert (=> d!2267505 d!2267555))

(declare-fun d!2267849 () Bool)

(assert (=> d!2267849 (forall!17697 (++!16767 lt!2599085 (exprs!8317 ct2!346)) lambda!450874)))

(assert (=> d!2267849 true))

(declare-fun _$78!865 () Unit!164352)

(assert (=> d!2267849 (= (choose!56565 lt!2599085 (exprs!8317 ct2!346) lambda!450874) _$78!865)))

(declare-fun bs!1913409 () Bool)

(assert (= bs!1913409 d!2267849))

(assert (=> bs!1913409 m!7969582))

(assert (=> bs!1913409 m!7969582))

(assert (=> bs!1913409 m!7969828))

(assert (=> d!2267505 d!2267849))

(declare-fun d!2267851 () Bool)

(declare-fun res!2951678 () Bool)

(declare-fun e!4371098 () Bool)

(assert (=> d!2267851 (=> res!2951678 e!4371098)))

(assert (=> d!2267851 (= res!2951678 ((_ is Nil!70947) lt!2599085))))

(assert (=> d!2267851 (= (forall!17697 lt!2599085 lambda!450874) e!4371098)))

(declare-fun b!7298087 () Bool)

(declare-fun e!4371099 () Bool)

(assert (=> b!7298087 (= e!4371098 e!4371099)))

(declare-fun res!2951679 () Bool)

(assert (=> b!7298087 (=> (not res!2951679) (not e!4371099))))

(assert (=> b!7298087 (= res!2951679 (dynLambda!29014 lambda!450874 (h!77395 lt!2599085)))))

(declare-fun b!7298088 () Bool)

(assert (=> b!7298088 (= e!4371099 (forall!17697 (t!385147 lt!2599085) lambda!450874))))

(assert (= (and d!2267851 (not res!2951678)) b!7298087))

(assert (= (and b!7298087 res!2951679) b!7298088))

(declare-fun b_lambda!281551 () Bool)

(assert (=> (not b_lambda!281551) (not b!7298087)))

(declare-fun m!7970512 () Bool)

(assert (=> b!7298087 m!7970512))

(declare-fun m!7970514 () Bool)

(assert (=> b!7298088 m!7970514))

(assert (=> d!2267505 d!2267851))

(declare-fun d!2267853 () Bool)

(assert (=> d!2267853 true))

(declare-fun setRes!53708 () Bool)

(assert (=> d!2267853 setRes!53708))

(declare-fun condSetEmpty!53708 () Bool)

(declare-fun res!2951680 () (InoxSet Context!15634))

(assert (=> d!2267853 (= condSetEmpty!53708 (= res!2951680 ((as const (Array Context!15634 Bool)) false)))))

(assert (=> d!2267853 (= (choose!56564 lt!2599099 lambda!450875) res!2951680)))

(declare-fun setIsEmpty!53708 () Bool)

(assert (=> setIsEmpty!53708 setRes!53708))

(declare-fun setNonEmpty!53708 () Bool)

(declare-fun tp!2062637 () Bool)

(declare-fun setElem!53708 () Context!15634)

(declare-fun e!4371100 () Bool)

(assert (=> setNonEmpty!53708 (= setRes!53708 (and tp!2062637 (inv!90202 setElem!53708) e!4371100))))

(declare-fun setRest!53708 () (InoxSet Context!15634))

(assert (=> setNonEmpty!53708 (= res!2951680 ((_ map or) (store ((as const (Array Context!15634 Bool)) false) setElem!53708 true) setRest!53708))))

(declare-fun b!7298089 () Bool)

(declare-fun tp!2062636 () Bool)

(assert (=> b!7298089 (= e!4371100 tp!2062636)))

(assert (= (and d!2267853 condSetEmpty!53708) setIsEmpty!53708))

(assert (= (and d!2267853 (not condSetEmpty!53708)) setNonEmpty!53708))

(assert (= setNonEmpty!53708 b!7298089))

(declare-fun m!7970516 () Bool)

(assert (=> setNonEmpty!53708 m!7970516))

(assert (=> d!2267533 d!2267853))

(declare-fun d!2267855 () Bool)

(declare-fun c!1356719 () Bool)

(assert (=> d!2267855 (= c!1356719 (isEmpty!40818 (tail!14601 s!7854)))))

(declare-fun e!4371101 () Bool)

(assert (=> d!2267855 (= (matchZipper!3781 (derivationStepZipper!3610 lt!2599082 (head!15064 s!7854)) (tail!14601 s!7854)) e!4371101)))

(declare-fun b!7298090 () Bool)

(assert (=> b!7298090 (= e!4371101 (nullableZipper!3066 (derivationStepZipper!3610 lt!2599082 (head!15064 s!7854))))))

(declare-fun b!7298091 () Bool)

(assert (=> b!7298091 (= e!4371101 (matchZipper!3781 (derivationStepZipper!3610 (derivationStepZipper!3610 lt!2599082 (head!15064 s!7854)) (head!15064 (tail!14601 s!7854))) (tail!14601 (tail!14601 s!7854))))))

(assert (= (and d!2267855 c!1356719) b!7298090))

(assert (= (and d!2267855 (not c!1356719)) b!7298091))

(assert (=> d!2267855 m!7969856))

(assert (=> d!2267855 m!7970374))

(assert (=> b!7298090 m!7969940))

(declare-fun m!7970518 () Bool)

(assert (=> b!7298090 m!7970518))

(assert (=> b!7298091 m!7969856))

(assert (=> b!7298091 m!7970378))

(assert (=> b!7298091 m!7969940))

(assert (=> b!7298091 m!7970378))

(declare-fun m!7970520 () Bool)

(assert (=> b!7298091 m!7970520))

(assert (=> b!7298091 m!7969856))

(assert (=> b!7298091 m!7970382))

(assert (=> b!7298091 m!7970520))

(assert (=> b!7298091 m!7970382))

(declare-fun m!7970522 () Bool)

(assert (=> b!7298091 m!7970522))

(assert (=> b!7297646 d!2267855))

(declare-fun bs!1913410 () Bool)

(declare-fun d!2267857 () Bool)

(assert (= bs!1913410 (and d!2267857 d!2267787)))

(declare-fun lambda!450930 () Int)

(assert (=> bs!1913410 (= lambda!450930 lambda!450925)))

(declare-fun bs!1913411 () Bool)

(assert (= bs!1913411 (and d!2267857 d!2267769)))

(assert (=> bs!1913411 (= (= (head!15064 s!7854) (head!15064 (t!385148 s!7854))) (= lambda!450930 lambda!450922))))

(declare-fun bs!1913412 () Bool)

(assert (= bs!1913412 (and d!2267857 b!7297431)))

(assert (=> bs!1913412 (= (= (head!15064 s!7854) (h!77396 s!7854)) (= lambda!450930 lambda!450875))))

(declare-fun bs!1913413 () Bool)

(assert (= bs!1913413 (and d!2267857 d!2267781)))

(assert (=> bs!1913413 (= (= (head!15064 s!7854) (head!15064 (t!385148 s!7854))) (= lambda!450930 lambda!450923))))

(declare-fun bs!1913414 () Bool)

(assert (= bs!1913414 (and d!2267857 d!2267535)))

(assert (=> bs!1913414 (= (= (head!15064 s!7854) (h!77396 s!7854)) (= lambda!450930 lambda!450898))))

(assert (=> d!2267857 true))

(assert (=> d!2267857 (= (derivationStepZipper!3610 lt!2599082 (head!15064 s!7854)) (flatMap!2972 lt!2599082 lambda!450930))))

(declare-fun bs!1913415 () Bool)

(assert (= bs!1913415 d!2267857))

(declare-fun m!7970524 () Bool)

(assert (=> bs!1913415 m!7970524))

(assert (=> b!7297646 d!2267857))

(assert (=> b!7297646 d!2267789))

(assert (=> b!7297646 d!2267791))

(declare-fun bs!1913416 () Bool)

(declare-fun d!2267859 () Bool)

(assert (= bs!1913416 (and d!2267859 d!2267751)))

(declare-fun lambda!450931 () Int)

(assert (=> bs!1913416 (= lambda!450931 lambda!450921)))

(declare-fun bs!1913417 () Bool)

(assert (= bs!1913417 (and d!2267859 d!2267783)))

(assert (=> bs!1913417 (= lambda!450931 lambda!450924)))

(declare-fun bs!1913418 () Bool)

(assert (= bs!1913418 (and d!2267859 d!2267793)))

(assert (=> bs!1913418 (= lambda!450931 lambda!450926)))

(assert (=> d!2267859 (= (nullableZipper!3066 lt!2599095) (exists!4504 lt!2599095 lambda!450931))))

(declare-fun bs!1913419 () Bool)

(assert (= bs!1913419 d!2267859))

(declare-fun m!7970526 () Bool)

(assert (=> bs!1913419 m!7970526))

(assert (=> b!7297649 d!2267859))

(assert (=> d!2267543 d!2267533))

(declare-fun d!2267861 () Bool)

(assert (=> d!2267861 (= (flatMap!2972 lt!2599099 lambda!450875) (dynLambda!29012 lambda!450875 ct1!250))))

(assert (=> d!2267861 true))

(declare-fun _$13!4686 () Unit!164352)

(assert (=> d!2267861 (= (choose!56567 lt!2599099 ct1!250 lambda!450875) _$13!4686)))

(declare-fun b_lambda!281553 () Bool)

(assert (=> (not b_lambda!281553) (not d!2267861)))

(declare-fun bs!1913420 () Bool)

(assert (= bs!1913420 d!2267861))

(assert (=> bs!1913420 m!7969604))

(assert (=> bs!1913420 m!7969932))

(assert (=> d!2267543 d!2267861))

(assert (=> b!7297605 d!2267735))

(declare-fun b!7298092 () Bool)

(declare-fun e!4371103 () (InoxSet Context!15634))

(assert (=> b!7298092 (= e!4371103 (store ((as const (Array Context!15634 Bool)) false) (ite (or c!1356574 c!1356576) lt!2599097 (Context!15635 call!665059)) true))))

(declare-fun b!7298093 () Bool)

(declare-fun e!4371102 () (InoxSet Context!15634))

(assert (=> b!7298093 (= e!4371103 e!4371102)))

(declare-fun c!1356722 () Bool)

(assert (=> b!7298093 (= c!1356722 ((_ is Union!18877) (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))))))

(declare-fun b!7298094 () Bool)

(declare-fun e!4371106 () Bool)

(assert (=> b!7298094 (= e!4371106 (nullable!8054 (regOne!38266 (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250)))))))))))

(declare-fun bm!665164 () Bool)

(declare-fun call!665169 () List!71071)

(declare-fun call!665173 () List!71071)

(assert (=> bm!665164 (= call!665169 call!665173)))

(declare-fun bm!665165 () Bool)

(declare-fun call!665174 () (InoxSet Context!15634))

(declare-fun call!665171 () (InoxSet Context!15634))

(assert (=> bm!665165 (= call!665174 call!665171)))

(declare-fun d!2267863 () Bool)

(declare-fun c!1356723 () Bool)

(assert (=> d!2267863 (= c!1356723 (and ((_ is ElementMatch!18877) (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (= (c!1356483 (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (h!77396 s!7854))))))

(assert (=> d!2267863 (= (derivationStepZipperDown!2783 (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250)))))) (ite (or c!1356574 c!1356576) lt!2599097 (Context!15635 call!665059)) (h!77396 s!7854)) e!4371103)))

(declare-fun b!7298095 () Bool)

(declare-fun call!665170 () (InoxSet Context!15634))

(assert (=> b!7298095 (= e!4371102 ((_ map or) call!665170 call!665171))))

(declare-fun c!1356724 () Bool)

(declare-fun c!1356720 () Bool)

(declare-fun bm!665166 () Bool)

(assert (=> bm!665166 (= call!665173 ($colon$colon!3005 (exprs!8317 (ite (or c!1356574 c!1356576) lt!2599097 (Context!15635 call!665059))) (ite (or c!1356724 c!1356720) (regTwo!38266 (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250)))))))))))

(declare-fun b!7298096 () Bool)

(declare-fun e!4371104 () (InoxSet Context!15634))

(declare-fun e!4371105 () (InoxSet Context!15634))

(assert (=> b!7298096 (= e!4371104 e!4371105)))

(assert (=> b!7298096 (= c!1356720 ((_ is Concat!27722) (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))))))

(declare-fun b!7298097 () Bool)

(assert (=> b!7298097 (= c!1356724 e!4371106)))

(declare-fun res!2951681 () Bool)

(assert (=> b!7298097 (=> (not res!2951681) (not e!4371106))))

(assert (=> b!7298097 (= res!2951681 ((_ is Concat!27722) (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))))))

(assert (=> b!7298097 (= e!4371102 e!4371104)))

(declare-fun b!7298098 () Bool)

(assert (=> b!7298098 (= e!4371104 ((_ map or) call!665170 call!665174))))

(declare-fun bm!665167 () Bool)

(assert (=> bm!665167 (= call!665170 (derivationStepZipperDown!2783 (ite c!1356722 (regOne!38267 (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (regOne!38266 (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250)))))))) (ite c!1356722 (ite (or c!1356574 c!1356576) lt!2599097 (Context!15635 call!665059)) (Context!15635 call!665173)) (h!77396 s!7854)))))

(declare-fun b!7298099 () Bool)

(declare-fun e!4371107 () (InoxSet Context!15634))

(assert (=> b!7298099 (= e!4371107 ((as const (Array Context!15634 Bool)) false))))

(declare-fun c!1356721 () Bool)

(declare-fun b!7298100 () Bool)

(assert (=> b!7298100 (= c!1356721 ((_ is Star!18877) (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))))))

(assert (=> b!7298100 (= e!4371105 e!4371107)))

(declare-fun bm!665168 () Bool)

(declare-fun call!665172 () (InoxSet Context!15634))

(assert (=> bm!665168 (= call!665172 call!665174)))

(declare-fun b!7298101 () Bool)

(assert (=> b!7298101 (= e!4371105 call!665172)))

(declare-fun bm!665169 () Bool)

(assert (=> bm!665169 (= call!665171 (derivationStepZipperDown!2783 (ite c!1356722 (regTwo!38267 (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (ite c!1356724 (regTwo!38266 (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (ite c!1356720 (regOne!38266 (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250))))))) (reg!19206 (ite c!1356574 (regTwo!38267 (h!77395 (exprs!8317 ct1!250))) (ite c!1356576 (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (ite c!1356572 (regOne!38266 (h!77395 (exprs!8317 ct1!250))) (reg!19206 (h!77395 (exprs!8317 ct1!250)))))))))) (ite (or c!1356722 c!1356724) (ite (or c!1356574 c!1356576) lt!2599097 (Context!15635 call!665059)) (Context!15635 call!665169)) (h!77396 s!7854)))))

(declare-fun b!7298102 () Bool)

(assert (=> b!7298102 (= e!4371107 call!665172)))

(assert (= (and d!2267863 c!1356723) b!7298092))

(assert (= (and d!2267863 (not c!1356723)) b!7298093))

(assert (= (and b!7298093 c!1356722) b!7298095))

(assert (= (and b!7298093 (not c!1356722)) b!7298097))

(assert (= (and b!7298097 res!2951681) b!7298094))

(assert (= (and b!7298097 c!1356724) b!7298098))

(assert (= (and b!7298097 (not c!1356724)) b!7298096))

(assert (= (and b!7298096 c!1356720) b!7298101))

(assert (= (and b!7298096 (not c!1356720)) b!7298100))

(assert (= (and b!7298100 c!1356721) b!7298102))

(assert (= (and b!7298100 (not c!1356721)) b!7298099))

(assert (= (or b!7298101 b!7298102) bm!665164))

(assert (= (or b!7298101 b!7298102) bm!665168))

(assert (= (or b!7298098 bm!665164) bm!665166))

(assert (= (or b!7298098 bm!665168) bm!665165))

(assert (= (or b!7298095 b!7298098) bm!665167))

(assert (= (or b!7298095 bm!665165) bm!665169))

(declare-fun m!7970528 () Bool)

(assert (=> bm!665169 m!7970528))

(declare-fun m!7970530 () Bool)

(assert (=> b!7298094 m!7970530))

(declare-fun m!7970532 () Bool)

(assert (=> b!7298092 m!7970532))

(declare-fun m!7970534 () Bool)

(assert (=> bm!665166 m!7970534))

(declare-fun m!7970536 () Bool)

(assert (=> bm!665167 m!7970536))

(assert (=> bm!665059 d!2267863))

(assert (=> d!2267511 d!2267777))

(declare-fun d!2267865 () Bool)

(declare-fun c!1356725 () Bool)

(assert (=> d!2267865 (= c!1356725 ((_ is Nil!70947) lt!2599151))))

(declare-fun e!4371108 () (InoxSet Regex!18877))

(assert (=> d!2267865 (= (content!14824 lt!2599151) e!4371108)))

(declare-fun b!7298103 () Bool)

(assert (=> b!7298103 (= e!4371108 ((as const (Array Regex!18877 Bool)) false))))

(declare-fun b!7298104 () Bool)

(assert (=> b!7298104 (= e!4371108 ((_ map or) (store ((as const (Array Regex!18877 Bool)) false) (h!77395 lt!2599151) true) (content!14824 (t!385147 lt!2599151))))))

(assert (= (and d!2267865 c!1356725) b!7298103))

(assert (= (and d!2267865 (not c!1356725)) b!7298104))

(declare-fun m!7970538 () Bool)

(assert (=> b!7298104 m!7970538))

(declare-fun m!7970540 () Bool)

(assert (=> b!7298104 m!7970540))

(assert (=> d!2267539 d!2267865))

(declare-fun d!2267867 () Bool)

(declare-fun c!1356726 () Bool)

(assert (=> d!2267867 (= c!1356726 ((_ is Nil!70947) (exprs!8317 ct1!250)))))

(declare-fun e!4371109 () (InoxSet Regex!18877))

(assert (=> d!2267867 (= (content!14824 (exprs!8317 ct1!250)) e!4371109)))

(declare-fun b!7298105 () Bool)

(assert (=> b!7298105 (= e!4371109 ((as const (Array Regex!18877 Bool)) false))))

(declare-fun b!7298106 () Bool)

(assert (=> b!7298106 (= e!4371109 ((_ map or) (store ((as const (Array Regex!18877 Bool)) false) (h!77395 (exprs!8317 ct1!250)) true) (content!14824 (t!385147 (exprs!8317 ct1!250)))))))

(assert (= (and d!2267867 c!1356726) b!7298105))

(assert (= (and d!2267867 (not c!1356726)) b!7298106))

(declare-fun m!7970542 () Bool)

(assert (=> b!7298106 m!7970542))

(assert (=> b!7298106 m!7970304))

(assert (=> d!2267539 d!2267867))

(assert (=> d!2267539 d!2267809))

(declare-fun d!2267869 () Bool)

(assert (=> d!2267869 (= ($colon$colon!3005 (exprs!8317 lt!2599113) (ite (or c!1356555 c!1356551) (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (h!77395 (exprs!8317 ct1!250)))) (Cons!70947 (ite (or c!1356555 c!1356551) (regTwo!38266 (h!77395 (exprs!8317 ct1!250))) (h!77395 (exprs!8317 ct1!250))) (exprs!8317 lt!2599113)))))

(assert (=> bm!665047 d!2267869))

(declare-fun bs!1913421 () Bool)

(declare-fun d!2267871 () Bool)

(assert (= bs!1913421 (and d!2267871 d!2267751)))

(declare-fun lambda!450932 () Int)

(assert (=> bs!1913421 (= lambda!450932 lambda!450921)))

(declare-fun bs!1913422 () Bool)

(assert (= bs!1913422 (and d!2267871 d!2267783)))

(assert (=> bs!1913422 (= lambda!450932 lambda!450924)))

(declare-fun bs!1913423 () Bool)

(assert (= bs!1913423 (and d!2267871 d!2267793)))

(assert (=> bs!1913423 (= lambda!450932 lambda!450926)))

(declare-fun bs!1913424 () Bool)

(assert (= bs!1913424 (and d!2267871 d!2267859)))

(assert (=> bs!1913424 (= lambda!450932 lambda!450931)))

(assert (=> d!2267871 (= (nullableZipper!3066 lt!2599088) (exists!4504 lt!2599088 lambda!450932))))

(declare-fun bs!1913425 () Bool)

(assert (= bs!1913425 d!2267871))

(declare-fun m!7970544 () Bool)

(assert (=> bs!1913425 m!7970544))

(assert (=> b!7297562 d!2267871))

(assert (=> d!2267503 d!2267753))

(assert (=> d!2267549 d!2267753))

(declare-fun d!2267873 () Bool)

(declare-fun c!1356727 () Bool)

(assert (=> d!2267873 (= c!1356727 (isEmpty!40818 (tail!14601 s!7854)))))

(declare-fun e!4371110 () Bool)

(assert (=> d!2267873 (= (matchZipper!3781 (derivationStepZipper!3610 lt!2599089 (head!15064 s!7854)) (tail!14601 s!7854)) e!4371110)))

(declare-fun b!7298107 () Bool)

(assert (=> b!7298107 (= e!4371110 (nullableZipper!3066 (derivationStepZipper!3610 lt!2599089 (head!15064 s!7854))))))

(declare-fun b!7298108 () Bool)

(assert (=> b!7298108 (= e!4371110 (matchZipper!3781 (derivationStepZipper!3610 (derivationStepZipper!3610 lt!2599089 (head!15064 s!7854)) (head!15064 (tail!14601 s!7854))) (tail!14601 (tail!14601 s!7854))))))

(assert (= (and d!2267873 c!1356727) b!7298107))

(assert (= (and d!2267873 (not c!1356727)) b!7298108))

(assert (=> d!2267873 m!7969856))

(assert (=> d!2267873 m!7970374))

(assert (=> b!7298107 m!7969854))

(declare-fun m!7970546 () Bool)

(assert (=> b!7298107 m!7970546))

(assert (=> b!7298108 m!7969856))

(assert (=> b!7298108 m!7970378))

(assert (=> b!7298108 m!7969854))

(assert (=> b!7298108 m!7970378))

(declare-fun m!7970548 () Bool)

(assert (=> b!7298108 m!7970548))

(assert (=> b!7298108 m!7969856))

(assert (=> b!7298108 m!7970382))

(assert (=> b!7298108 m!7970548))

(assert (=> b!7298108 m!7970382))

(declare-fun m!7970550 () Bool)

(assert (=> b!7298108 m!7970550))

(assert (=> b!7297565 d!2267873))

(declare-fun bs!1913426 () Bool)

(declare-fun d!2267875 () Bool)

(assert (= bs!1913426 (and d!2267875 d!2267787)))

(declare-fun lambda!450933 () Int)

(assert (=> bs!1913426 (= lambda!450933 lambda!450925)))

(declare-fun bs!1913427 () Bool)

(assert (= bs!1913427 (and d!2267875 d!2267857)))

(assert (=> bs!1913427 (= lambda!450933 lambda!450930)))

(declare-fun bs!1913428 () Bool)

(assert (= bs!1913428 (and d!2267875 d!2267769)))

(assert (=> bs!1913428 (= (= (head!15064 s!7854) (head!15064 (t!385148 s!7854))) (= lambda!450933 lambda!450922))))

(declare-fun bs!1913429 () Bool)

(assert (= bs!1913429 (and d!2267875 b!7297431)))

(assert (=> bs!1913429 (= (= (head!15064 s!7854) (h!77396 s!7854)) (= lambda!450933 lambda!450875))))

(declare-fun bs!1913430 () Bool)

(assert (= bs!1913430 (and d!2267875 d!2267781)))

(assert (=> bs!1913430 (= (= (head!15064 s!7854) (head!15064 (t!385148 s!7854))) (= lambda!450933 lambda!450923))))

(declare-fun bs!1913431 () Bool)

(assert (= bs!1913431 (and d!2267875 d!2267535)))

(assert (=> bs!1913431 (= (= (head!15064 s!7854) (h!77396 s!7854)) (= lambda!450933 lambda!450898))))

(assert (=> d!2267875 true))

(assert (=> d!2267875 (= (derivationStepZipper!3610 lt!2599089 (head!15064 s!7854)) (flatMap!2972 lt!2599089 lambda!450933))))

(declare-fun bs!1913432 () Bool)

(assert (= bs!1913432 d!2267875))

(declare-fun m!7970552 () Bool)

(assert (=> bs!1913432 m!7970552))

(assert (=> b!7297565 d!2267875))

(assert (=> b!7297565 d!2267789))

(assert (=> b!7297565 d!2267791))

(assert (=> d!2267509 d!2267501))

(declare-fun d!2267877 () Bool)

(assert (=> d!2267877 (= (flatMap!2972 lt!2599089 lambda!450875) (dynLambda!29012 lambda!450875 lt!2599097))))

(assert (=> d!2267877 true))

(declare-fun _$13!4687 () Unit!164352)

(assert (=> d!2267877 (= (choose!56567 lt!2599089 lt!2599097 lambda!450875) _$13!4687)))

(declare-fun b_lambda!281555 () Bool)

(assert (=> (not b_lambda!281555) (not d!2267877)))

(declare-fun bs!1913433 () Bool)

(assert (= bs!1913433 d!2267877))

(assert (=> bs!1913433 m!7969640))

(assert (=> bs!1913433 m!7969844))

(assert (=> d!2267509 d!2267877))

(declare-fun bs!1913434 () Bool)

(declare-fun d!2267879 () Bool)

(assert (= bs!1913434 (and d!2267879 d!2267871)))

(declare-fun lambda!450934 () Int)

(assert (=> bs!1913434 (= lambda!450934 lambda!450932)))

(declare-fun bs!1913435 () Bool)

(assert (= bs!1913435 (and d!2267879 d!2267751)))

(assert (=> bs!1913435 (= lambda!450934 lambda!450921)))

(declare-fun bs!1913436 () Bool)

(assert (= bs!1913436 (and d!2267879 d!2267793)))

(assert (=> bs!1913436 (= lambda!450934 lambda!450926)))

(declare-fun bs!1913437 () Bool)

(assert (= bs!1913437 (and d!2267879 d!2267859)))

(assert (=> bs!1913437 (= lambda!450934 lambda!450931)))

(declare-fun bs!1913438 () Bool)

(assert (= bs!1913438 (and d!2267879 d!2267783)))

(assert (=> bs!1913438 (= lambda!450934 lambda!450924)))

(assert (=> d!2267879 (= (nullableZipper!3066 (store ((as const (Array Context!15634 Bool)) false) ct2!346 true)) (exists!4504 (store ((as const (Array Context!15634 Bool)) false) ct2!346 true) lambda!450934))))

(declare-fun bs!1913439 () Bool)

(assert (= bs!1913439 d!2267879))

(assert (=> bs!1913439 m!7969614))

(declare-fun m!7970554 () Bool)

(assert (=> bs!1913439 m!7970554))

(assert (=> b!7297619 d!2267879))

(declare-fun b!7298109 () Bool)

(declare-fun e!4371112 () (InoxSet Context!15634))

(assert (=> b!7298109 (= e!4371112 (store ((as const (Array Context!15634 Bool)) false) (ite c!1356553 lt!2599113 (Context!15635 call!665054)) true))))

(declare-fun b!7298110 () Bool)

(declare-fun e!4371111 () (InoxSet Context!15634))

(assert (=> b!7298110 (= e!4371112 e!4371111)))

(declare-fun c!1356730 () Bool)

(assert (=> b!7298110 (= c!1356730 ((_ is Union!18877) (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))))))

(declare-fun b!7298111 () Bool)

(declare-fun e!4371115 () Bool)

(assert (=> b!7298111 (= e!4371115 (nullable!8054 (regOne!38266 (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250)))))))))

(declare-fun bm!665170 () Bool)

(declare-fun call!665175 () List!71071)

(declare-fun call!665179 () List!71071)

(assert (=> bm!665170 (= call!665175 call!665179)))

(declare-fun bm!665171 () Bool)

(declare-fun call!665180 () (InoxSet Context!15634))

(declare-fun call!665177 () (InoxSet Context!15634))

(assert (=> bm!665171 (= call!665180 call!665177)))

(declare-fun d!2267881 () Bool)

(declare-fun c!1356731 () Bool)

(assert (=> d!2267881 (= c!1356731 (and ((_ is ElementMatch!18877) (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (= (c!1356483 (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (h!77396 s!7854))))))

(assert (=> d!2267881 (= (derivationStepZipperDown!2783 (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250)))) (ite c!1356553 lt!2599113 (Context!15635 call!665054)) (h!77396 s!7854)) e!4371112)))

(declare-fun b!7298112 () Bool)

(declare-fun call!665176 () (InoxSet Context!15634))

(assert (=> b!7298112 (= e!4371111 ((_ map or) call!665176 call!665177))))

(declare-fun bm!665172 () Bool)

(declare-fun c!1356732 () Bool)

(declare-fun c!1356728 () Bool)

(assert (=> bm!665172 (= call!665179 ($colon$colon!3005 (exprs!8317 (ite c!1356553 lt!2599113 (Context!15635 call!665054))) (ite (or c!1356732 c!1356728) (regTwo!38266 (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250)))))))))

(declare-fun b!7298113 () Bool)

(declare-fun e!4371113 () (InoxSet Context!15634))

(declare-fun e!4371114 () (InoxSet Context!15634))

(assert (=> b!7298113 (= e!4371113 e!4371114)))

(assert (=> b!7298113 (= c!1356728 ((_ is Concat!27722) (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))))))

(declare-fun b!7298114 () Bool)

(assert (=> b!7298114 (= c!1356732 e!4371115)))

(declare-fun res!2951682 () Bool)

(assert (=> b!7298114 (=> (not res!2951682) (not e!4371115))))

(assert (=> b!7298114 (= res!2951682 ((_ is Concat!27722) (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))))))

(assert (=> b!7298114 (= e!4371111 e!4371113)))

(declare-fun b!7298115 () Bool)

(assert (=> b!7298115 (= e!4371113 ((_ map or) call!665176 call!665180))))

(declare-fun bm!665173 () Bool)

(assert (=> bm!665173 (= call!665176 (derivationStepZipperDown!2783 (ite c!1356730 (regOne!38267 (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (regOne!38266 (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250)))))) (ite c!1356730 (ite c!1356553 lt!2599113 (Context!15635 call!665054)) (Context!15635 call!665179)) (h!77396 s!7854)))))

(declare-fun b!7298116 () Bool)

(declare-fun e!4371116 () (InoxSet Context!15634))

(assert (=> b!7298116 (= e!4371116 ((as const (Array Context!15634 Bool)) false))))

(declare-fun b!7298117 () Bool)

(declare-fun c!1356729 () Bool)

(assert (=> b!7298117 (= c!1356729 ((_ is Star!18877) (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))))))

(assert (=> b!7298117 (= e!4371114 e!4371116)))

(declare-fun bm!665174 () Bool)

(declare-fun call!665178 () (InoxSet Context!15634))

(assert (=> bm!665174 (= call!665178 call!665180)))

(declare-fun b!7298118 () Bool)

(assert (=> b!7298118 (= e!4371114 call!665178)))

(declare-fun bm!665175 () Bool)

(assert (=> bm!665175 (= call!665177 (derivationStepZipperDown!2783 (ite c!1356730 (regTwo!38267 (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (ite c!1356732 (regTwo!38266 (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (ite c!1356728 (regOne!38266 (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250))))) (reg!19206 (ite c!1356553 (regOne!38267 (h!77395 (exprs!8317 ct1!250))) (regOne!38266 (h!77395 (exprs!8317 ct1!250)))))))) (ite (or c!1356730 c!1356732) (ite c!1356553 lt!2599113 (Context!15635 call!665054)) (Context!15635 call!665175)) (h!77396 s!7854)))))

(declare-fun b!7298119 () Bool)

(assert (=> b!7298119 (= e!4371116 call!665178)))

(assert (= (and d!2267881 c!1356731) b!7298109))

(assert (= (and d!2267881 (not c!1356731)) b!7298110))

(assert (= (and b!7298110 c!1356730) b!7298112))

(assert (= (and b!7298110 (not c!1356730)) b!7298114))

(assert (= (and b!7298114 res!2951682) b!7298111))

(assert (= (and b!7298114 c!1356732) b!7298115))

(assert (= (and b!7298114 (not c!1356732)) b!7298113))

(assert (= (and b!7298113 c!1356728) b!7298118))

(assert (= (and b!7298113 (not c!1356728)) b!7298117))

(assert (= (and b!7298117 c!1356729) b!7298119))

(assert (= (and b!7298117 (not c!1356729)) b!7298116))

(assert (= (or b!7298118 b!7298119) bm!665170))

(assert (= (or b!7298118 b!7298119) bm!665174))

(assert (= (or b!7298115 bm!665170) bm!665172))

(assert (= (or b!7298115 bm!665174) bm!665171))

(assert (= (or b!7298112 b!7298115) bm!665173))

(assert (= (or b!7298112 bm!665171) bm!665175))

(declare-fun m!7970556 () Bool)

(assert (=> bm!665175 m!7970556))

(declare-fun m!7970558 () Bool)

(assert (=> b!7298111 m!7970558))

(declare-fun m!7970560 () Bool)

(assert (=> b!7298109 m!7970560))

(declare-fun m!7970562 () Bool)

(assert (=> bm!665172 m!7970562))

(declare-fun m!7970564 () Bool)

(assert (=> bm!665173 m!7970564))

(assert (=> bm!665048 d!2267881))

(declare-fun d!2267883 () Bool)

(assert (=> d!2267883 true))

(declare-fun setRes!53709 () Bool)

(assert (=> d!2267883 setRes!53709))

(declare-fun condSetEmpty!53709 () Bool)

(declare-fun res!2951683 () (InoxSet Context!15634))

(assert (=> d!2267883 (= condSetEmpty!53709 (= res!2951683 ((as const (Array Context!15634 Bool)) false)))))

(assert (=> d!2267883 (= (choose!56564 lt!2599082 lambda!450875) res!2951683)))

(declare-fun setIsEmpty!53709 () Bool)

(assert (=> setIsEmpty!53709 setRes!53709))

(declare-fun e!4371117 () Bool)

(declare-fun setNonEmpty!53709 () Bool)

(declare-fun setElem!53709 () Context!15634)

(declare-fun tp!2062639 () Bool)

(assert (=> setNonEmpty!53709 (= setRes!53709 (and tp!2062639 (inv!90202 setElem!53709) e!4371117))))

(declare-fun setRest!53709 () (InoxSet Context!15634))

(assert (=> setNonEmpty!53709 (= res!2951683 ((_ map or) (store ((as const (Array Context!15634 Bool)) false) setElem!53709 true) setRest!53709))))

(declare-fun b!7298120 () Bool)

(declare-fun tp!2062638 () Bool)

(assert (=> b!7298120 (= e!4371117 tp!2062638)))

(assert (= (and d!2267883 condSetEmpty!53709) setIsEmpty!53709))

(assert (= (and d!2267883 (not condSetEmpty!53709)) setNonEmpty!53709))

(assert (= setNonEmpty!53709 b!7298120))

(declare-fun m!7970566 () Bool)

(assert (=> setNonEmpty!53709 m!7970566))

(assert (=> d!2267545 d!2267883))

(declare-fun d!2267885 () Bool)

(declare-fun c!1356733 () Bool)

(assert (=> d!2267885 (= c!1356733 (isEmpty!40818 (tail!14601 (t!385148 s!7854))))))

(declare-fun e!4371118 () Bool)

(assert (=> d!2267885 (= (matchZipper!3781 (derivationStepZipper!3610 lt!2599112 (head!15064 (t!385148 s!7854))) (tail!14601 (t!385148 s!7854))) e!4371118)))

(declare-fun b!7298121 () Bool)

(assert (=> b!7298121 (= e!4371118 (nullableZipper!3066 (derivationStepZipper!3610 lt!2599112 (head!15064 (t!385148 s!7854)))))))

(declare-fun b!7298122 () Bool)

(assert (=> b!7298122 (= e!4371118 (matchZipper!3781 (derivationStepZipper!3610 (derivationStepZipper!3610 lt!2599112 (head!15064 (t!385148 s!7854))) (head!15064 (tail!14601 (t!385148 s!7854)))) (tail!14601 (tail!14601 (t!385148 s!7854)))))))

(assert (= (and d!2267885 c!1356733) b!7298121))

(assert (= (and d!2267885 (not c!1356733)) b!7298122))

(assert (=> d!2267885 m!7969824))

(assert (=> d!2267885 m!7970348))

(assert (=> b!7298121 m!7969946))

(declare-fun m!7970568 () Bool)

(assert (=> b!7298121 m!7970568))

(assert (=> b!7298122 m!7969824))

(assert (=> b!7298122 m!7970352))

(assert (=> b!7298122 m!7969946))

(assert (=> b!7298122 m!7970352))

(declare-fun m!7970570 () Bool)

(assert (=> b!7298122 m!7970570))

(assert (=> b!7298122 m!7969824))

(assert (=> b!7298122 m!7970356))

(assert (=> b!7298122 m!7970570))

(assert (=> b!7298122 m!7970356))

(declare-fun m!7970572 () Bool)

(assert (=> b!7298122 m!7970572))

(assert (=> b!7297648 d!2267885))

(declare-fun bs!1913440 () Bool)

(declare-fun d!2267887 () Bool)

(assert (= bs!1913440 (and d!2267887 d!2267787)))

(declare-fun lambda!450935 () Int)

(assert (=> bs!1913440 (= (= (head!15064 (t!385148 s!7854)) (head!15064 s!7854)) (= lambda!450935 lambda!450925))))

(declare-fun bs!1913441 () Bool)

(assert (= bs!1913441 (and d!2267887 d!2267875)))

(assert (=> bs!1913441 (= (= (head!15064 (t!385148 s!7854)) (head!15064 s!7854)) (= lambda!450935 lambda!450933))))

(declare-fun bs!1913442 () Bool)

(assert (= bs!1913442 (and d!2267887 d!2267857)))

(assert (=> bs!1913442 (= (= (head!15064 (t!385148 s!7854)) (head!15064 s!7854)) (= lambda!450935 lambda!450930))))

(declare-fun bs!1913443 () Bool)

(assert (= bs!1913443 (and d!2267887 d!2267769)))

(assert (=> bs!1913443 (= lambda!450935 lambda!450922)))

(declare-fun bs!1913444 () Bool)

(assert (= bs!1913444 (and d!2267887 b!7297431)))

(assert (=> bs!1913444 (= (= (head!15064 (t!385148 s!7854)) (h!77396 s!7854)) (= lambda!450935 lambda!450875))))

(declare-fun bs!1913445 () Bool)

(assert (= bs!1913445 (and d!2267887 d!2267781)))

(assert (=> bs!1913445 (= lambda!450935 lambda!450923)))

(declare-fun bs!1913446 () Bool)

(assert (= bs!1913446 (and d!2267887 d!2267535)))

(assert (=> bs!1913446 (= (= (head!15064 (t!385148 s!7854)) (h!77396 s!7854)) (= lambda!450935 lambda!450898))))

(assert (=> d!2267887 true))

(assert (=> d!2267887 (= (derivationStepZipper!3610 lt!2599112 (head!15064 (t!385148 s!7854))) (flatMap!2972 lt!2599112 lambda!450935))))

(declare-fun bs!1913447 () Bool)

(assert (= bs!1913447 d!2267887))

(declare-fun m!7970574 () Bool)

(assert (=> bs!1913447 m!7970574))

(assert (=> b!7297648 d!2267887))

(assert (=> b!7297648 d!2267771))

(assert (=> b!7297648 d!2267773))

(declare-fun b!7298123 () Bool)

(declare-fun e!4371119 () Bool)

(declare-fun tp!2062640 () Bool)

(assert (=> b!7298123 (= e!4371119 (and tp_is_empty!47219 tp!2062640))))

(assert (=> b!7297678 (= tp!2062592 e!4371119)))

(assert (= (and b!7297678 ((_ is Cons!70948) (t!385148 (t!385148 s!7854)))) b!7298123))

(declare-fun b!7298136 () Bool)

(declare-fun e!4371122 () Bool)

(declare-fun tp!2062652 () Bool)

(assert (=> b!7298136 (= e!4371122 tp!2062652)))

(assert (=> b!7297673 (= tp!2062588 e!4371122)))

(declare-fun b!7298134 () Bool)

(assert (=> b!7298134 (= e!4371122 tp_is_empty!47219)))

(declare-fun b!7298135 () Bool)

(declare-fun tp!2062651 () Bool)

(declare-fun tp!2062655 () Bool)

(assert (=> b!7298135 (= e!4371122 (and tp!2062651 tp!2062655))))

(declare-fun b!7298137 () Bool)

(declare-fun tp!2062653 () Bool)

(declare-fun tp!2062654 () Bool)

(assert (=> b!7298137 (= e!4371122 (and tp!2062653 tp!2062654))))

(assert (= (and b!7297673 ((_ is ElementMatch!18877) (h!77395 (exprs!8317 ct1!250)))) b!7298134))

(assert (= (and b!7297673 ((_ is Concat!27722) (h!77395 (exprs!8317 ct1!250)))) b!7298135))

(assert (= (and b!7297673 ((_ is Star!18877) (h!77395 (exprs!8317 ct1!250)))) b!7298136))

(assert (= (and b!7297673 ((_ is Union!18877) (h!77395 (exprs!8317 ct1!250)))) b!7298137))

(declare-fun b!7298138 () Bool)

(declare-fun e!4371123 () Bool)

(declare-fun tp!2062656 () Bool)

(declare-fun tp!2062657 () Bool)

(assert (=> b!7298138 (= e!4371123 (and tp!2062656 tp!2062657))))

(assert (=> b!7297673 (= tp!2062589 e!4371123)))

(assert (= (and b!7297673 ((_ is Cons!70947) (t!385147 (exprs!8317 ct1!250)))) b!7298138))

(declare-fun b!7298141 () Bool)

(declare-fun e!4371124 () Bool)

(declare-fun tp!2062659 () Bool)

(assert (=> b!7298141 (= e!4371124 tp!2062659)))

(assert (=> b!7297679 (= tp!2062593 e!4371124)))

(declare-fun b!7298139 () Bool)

(assert (=> b!7298139 (= e!4371124 tp_is_empty!47219)))

(declare-fun b!7298140 () Bool)

(declare-fun tp!2062658 () Bool)

(declare-fun tp!2062662 () Bool)

(assert (=> b!7298140 (= e!4371124 (and tp!2062658 tp!2062662))))

(declare-fun b!7298142 () Bool)

(declare-fun tp!2062660 () Bool)

(declare-fun tp!2062661 () Bool)

(assert (=> b!7298142 (= e!4371124 (and tp!2062660 tp!2062661))))

(assert (= (and b!7297679 ((_ is ElementMatch!18877) (h!77395 (exprs!8317 ct2!346)))) b!7298139))

(assert (= (and b!7297679 ((_ is Concat!27722) (h!77395 (exprs!8317 ct2!346)))) b!7298140))

(assert (= (and b!7297679 ((_ is Star!18877) (h!77395 (exprs!8317 ct2!346)))) b!7298141))

(assert (= (and b!7297679 ((_ is Union!18877) (h!77395 (exprs!8317 ct2!346)))) b!7298142))

(declare-fun b!7298143 () Bool)

(declare-fun e!4371125 () Bool)

(declare-fun tp!2062663 () Bool)

(declare-fun tp!2062664 () Bool)

(assert (=> b!7298143 (= e!4371125 (and tp!2062663 tp!2062664))))

(assert (=> b!7297679 (= tp!2062594 e!4371125)))

(assert (= (and b!7297679 ((_ is Cons!70947) (t!385147 (exprs!8317 ct2!346)))) b!7298143))

(declare-fun b_lambda!281557 () Bool)

(assert (= b_lambda!281539 (or b!7297431 b_lambda!281557)))

(declare-fun bs!1913448 () Bool)

(declare-fun d!2267889 () Bool)

(assert (= bs!1913448 (and d!2267889 b!7297431)))

(declare-fun validRegex!9608 (Regex!18877) Bool)

(assert (=> bs!1913448 (= (dynLambda!29014 lambda!450874 (h!77395 (exprs!8317 ct1!250))) (validRegex!9608 (h!77395 (exprs!8317 ct1!250))))))

(declare-fun m!7970576 () Bool)

(assert (=> bs!1913448 m!7970576))

(assert (=> b!7298001 d!2267889))

(declare-fun b_lambda!281559 () Bool)

(assert (= b_lambda!281537 (or b!7297431 b_lambda!281559)))

(declare-fun bs!1913449 () Bool)

(declare-fun d!2267891 () Bool)

(assert (= bs!1913449 (and d!2267891 b!7297431)))

(assert (=> bs!1913449 (= (dynLambda!29014 lambda!450874 (h!77395 (++!16767 (exprs!8317 ct1!250) (exprs!8317 ct2!346)))) (validRegex!9608 (h!77395 (++!16767 (exprs!8317 ct1!250) (exprs!8317 ct2!346)))))))

(declare-fun m!7970578 () Bool)

(assert (=> bs!1913449 m!7970578))

(assert (=> b!7297999 d!2267891))

(declare-fun b_lambda!281561 () Bool)

(assert (= b_lambda!281545 (or d!2267559 b_lambda!281561)))

(declare-fun bs!1913450 () Bool)

(declare-fun d!2267893 () Bool)

(assert (= bs!1913450 (and d!2267893 d!2267559)))

(assert (=> bs!1913450 (= (dynLambda!29014 lambda!450901 (h!77395 (exprs!8317 ct1!250))) (nullable!8054 (h!77395 (exprs!8317 ct1!250))))))

(assert (=> bs!1913450 m!7969630))

(assert (=> b!7298015 d!2267893))

(declare-fun b_lambda!281563 () Bool)

(assert (= b_lambda!281555 (or b!7297431 b_lambda!281563)))

(assert (=> d!2267877 d!2267563))

(declare-fun b_lambda!281565 () Bool)

(assert (= b_lambda!281541 (or d!2267523 b_lambda!281565)))

(declare-fun bs!1913451 () Bool)

(declare-fun d!2267895 () Bool)

(assert (= bs!1913451 (and d!2267895 d!2267523)))

(assert (=> bs!1913451 (= (dynLambda!29014 lambda!450895 (h!77395 (exprs!8317 ct1!250))) (validRegex!9608 (h!77395 (exprs!8317 ct1!250))))))

(assert (=> bs!1913451 m!7970576))

(assert (=> b!7298013 d!2267895))

(declare-fun b_lambda!281567 () Bool)

(assert (= b_lambda!281547 (or d!2267521 b_lambda!281567)))

(declare-fun bs!1913452 () Bool)

(declare-fun d!2267897 () Bool)

(assert (= bs!1913452 (and d!2267897 d!2267521)))

(assert (=> bs!1913452 (= (dynLambda!29014 lambda!450894 (h!77395 (exprs!8317 ct2!346))) (validRegex!9608 (h!77395 (exprs!8317 ct2!346))))))

(declare-fun m!7970580 () Bool)

(assert (=> bs!1913452 m!7970580))

(assert (=> b!7298061 d!2267897))

(declare-fun b_lambda!281569 () Bool)

(assert (= b_lambda!281543 (or b!7297431 b_lambda!281569)))

(assert (=> d!2267813 d!2267561))

(declare-fun b_lambda!281571 () Bool)

(assert (= b_lambda!281553 (or b!7297431 b_lambda!281571)))

(assert (=> d!2267861 d!2267565))

(declare-fun b_lambda!281573 () Bool)

(assert (= b_lambda!281549 (or b!7297431 b_lambda!281573)))

(declare-fun bs!1913453 () Bool)

(declare-fun d!2267899 () Bool)

(assert (= bs!1913453 (and d!2267899 b!7297431)))

(assert (=> bs!1913453 (= (dynLambda!29014 lambda!450874 (h!77395 (++!16767 lt!2599085 (exprs!8317 ct2!346)))) (validRegex!9608 (h!77395 (++!16767 lt!2599085 (exprs!8317 ct2!346)))))))

(declare-fun m!7970582 () Bool)

(assert (=> bs!1913453 m!7970582))

(assert (=> b!7298085 d!2267899))

(declare-fun b_lambda!281575 () Bool)

(assert (= b_lambda!281551 (or b!7297431 b_lambda!281575)))

(declare-fun bs!1913454 () Bool)

(declare-fun d!2267901 () Bool)

(assert (= bs!1913454 (and d!2267901 b!7297431)))

(assert (=> bs!1913454 (= (dynLambda!29014 lambda!450874 (h!77395 lt!2599085)) (validRegex!9608 (h!77395 lt!2599085)))))

(declare-fun m!7970584 () Bool)

(assert (=> bs!1913454 m!7970584))

(assert (=> b!7298087 d!2267901))

(check-sat (not b_lambda!281569) (not b!7297989) (not b_lambda!281565) (not b!7297981) (not bm!665141) (not b!7298084) (not d!2267831) (not bm!665155) (not d!2267861) (not b!7298136) (not b_lambda!281563) (not b!7298042) (not b!7298040) (not b!7298094) (not bm!665161) (not b!7298030) (not b_lambda!281493) (not b!7298002) (not d!2267795) (not bm!665142) (not b!7298075) (not d!2267787) (not bm!665147) (not b!7297990) (not d!2267785) (not d!2267741) (not b!7297984) (not b!7298091) (not b!7298090) (not b_lambda!281567) (not b!7298143) (not bs!1913451) (not b_lambda!281571) (not d!2267825) (not b!7298135) (not b!7298046) (not b!7297914) (not d!2267827) (not b!7298019) (not b!7298056) (not b_lambda!281561) (not bs!1913453) (not bm!665167) (not bs!1913449) (not bm!665154) (not bm!665120) (not b!7298107) (not d!2267813) (not bm!665144) (not d!2267843) (not b!7298055) (not bm!665135) (not bm!665166) (not b!7297988) (not b!7297983) (not b!7298058) (not d!2267879) (not d!2267775) tp_is_empty!47219 (not d!2267877) (not bm!665131) (not b!7298140) (not bm!665151) (not b!7297929) (not d!2267779) (not bs!1913452) (not bm!665175) (not b!7297940) (not bm!665163) (not d!2267797) (not b!7297924) (not bm!665150) (not bm!665173) (not b_lambda!281491) (not bm!665121) (not d!2267855) (not b!7298089) (not bm!665132) (not bs!1913450) (not d!2267857) (not b!7297930) (not d!2267783) (not bs!1913448) (not d!2267751) (not b!7298016) (not d!2267781) (not bm!665124) (not d!2267769) (not b!7297933) (not b_lambda!281557) (not b!7298059) (not bm!665148) (not b!7298079) (not b!7297994) (not d!2267875) (not bm!665157) (not b!7298012) (not setNonEmpty!53709) (not b!7298000) (not bm!665126) (not bm!665169) (not bm!665125) (not d!2267829) (not d!2267735) (not b!7298062) (not b!7297991) (not b!7298088) (not bm!665172) (not bs!1913454) (not b!7298111) (not bm!665123) (not b!7298138) (not b!7297985) (not b!7297926) (not b!7298108) (not b!7298137) (not d!2267887) (not setNonEmpty!53708) (not bm!665136) (not b!7298121) (not b!7298080) (not b!7297938) (not b!7297965) (not b!7297987) (not b!7297986) (not d!2267745) (not b!7298122) (not bm!665160) (not b_lambda!281573) (not d!2267767) (not b!7298086) (not b_lambda!281495) (not d!2267885) (not b!7298106) (not b!7298014) (not d!2267841) (not b!7298008) (not b!7298065) (not d!2267793) (not b!7298077) (not b!7298123) (not b!7298120) (not bm!665138) (not b_lambda!281559) (not b!7298010) (not b_lambda!281575) (not d!2267801) (not d!2267765) (not d!2267873) (not setNonEmpty!53707) (not d!2267871) (not d!2267849) (not b!7298141) (not b!7297979) (not b!7298142) (not d!2267859) (not b!7297935) (not b!7298104))
(check-sat)
