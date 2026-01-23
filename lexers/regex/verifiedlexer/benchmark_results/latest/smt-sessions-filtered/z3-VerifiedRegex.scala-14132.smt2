; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742854 () Bool)

(assert start!742854)

(declare-fun res!3119672 () Bool)

(declare-fun e!4637471 () Bool)

(assert (=> start!742854 (=> (not res!3119672) (not e!4637471))))

(declare-datatypes ((C!42400 0))(
  ( (C!42401 (val!31662 Int)) )
))
(declare-datatypes ((Regex!21037 0))(
  ( (ElementMatch!21037 (c!1441841 C!42400)) (Concat!29882 (regOne!42586 Regex!21037) (regTwo!42586 Regex!21037)) (EmptyExpr!21037) (Star!21037 (reg!21366 Regex!21037)) (EmptyLang!21037) (Union!21037 (regOne!42587 Regex!21037) (regTwo!42587 Regex!21037)) )
))
(declare-fun r!27161 () Regex!21037)

(assert (=> start!742854 (= res!3119672 (= r!27161 EmptyLang!21037))))

(assert (=> start!742854 e!4637471))

(declare-fun e!4637473 () Bool)

(assert (=> start!742854 e!4637473))

(declare-fun e!4637472 () Bool)

(assert (=> start!742854 e!4637472))

(declare-fun b!7843565 () Bool)

(declare-fun tp!2321654 () Bool)

(declare-fun tp!2321653 () Bool)

(assert (=> b!7843565 (= e!4637473 (and tp!2321654 tp!2321653))))

(declare-fun b!7843566 () Bool)

(declare-fun tp_is_empty!52473 () Bool)

(assert (=> b!7843566 (= e!4637473 tp_is_empty!52473)))

(declare-fun b!7843567 () Bool)

(declare-datatypes ((List!73896 0))(
  ( (Nil!73772) (Cons!73772 (h!80220 C!42400) (t!388631 List!73896)) )
))
(declare-fun s!15118 () List!73896)

(declare-fun ListPrimitiveSize!460 (List!73896) Int)

(assert (=> b!7843567 (= e!4637471 (< (ListPrimitiveSize!460 s!15118) 0))))

(declare-fun b!7843568 () Bool)

(declare-fun tp!2321652 () Bool)

(declare-fun tp!2321651 () Bool)

(assert (=> b!7843568 (= e!4637473 (and tp!2321652 tp!2321651))))

(declare-fun b!7843569 () Bool)

(declare-fun tp!2321649 () Bool)

(assert (=> b!7843569 (= e!4637472 (and tp_is_empty!52473 tp!2321649))))

(declare-fun b!7843570 () Bool)

(declare-fun tp!2321650 () Bool)

(assert (=> b!7843570 (= e!4637473 tp!2321650)))

(assert (= (and start!742854 res!3119672) b!7843567))

(get-info :version)

(assert (= (and start!742854 ((_ is ElementMatch!21037) r!27161)) b!7843566))

(assert (= (and start!742854 ((_ is Concat!29882) r!27161)) b!7843565))

(assert (= (and start!742854 ((_ is Star!21037) r!27161)) b!7843570))

(assert (= (and start!742854 ((_ is Union!21037) r!27161)) b!7843568))

(assert (= (and start!742854 ((_ is Cons!73772) s!15118)) b!7843569))

(declare-fun m!8255142 () Bool)

(assert (=> b!7843567 m!8255142))

(check-sat (not b!7843565) tp_is_empty!52473 (not b!7843569) (not b!7843567) (not b!7843568) (not b!7843570))
(check-sat)
(get-model)

(declare-fun d!2352659 () Bool)

(declare-fun lt!2678909 () Int)

(assert (=> d!2352659 (>= lt!2678909 0)))

(declare-fun e!4637481 () Int)

(assert (=> d!2352659 (= lt!2678909 e!4637481)))

(declare-fun c!1441847 () Bool)

(assert (=> d!2352659 (= c!1441847 ((_ is Nil!73772) s!15118))))

(assert (=> d!2352659 (= (ListPrimitiveSize!460 s!15118) lt!2678909)))

(declare-fun b!7843591 () Bool)

(assert (=> b!7843591 (= e!4637481 0)))

(declare-fun b!7843592 () Bool)

(assert (=> b!7843592 (= e!4637481 (+ 1 (ListPrimitiveSize!460 (t!388631 s!15118))))))

(assert (= (and d!2352659 c!1441847) b!7843591))

(assert (= (and d!2352659 (not c!1441847)) b!7843592))

(declare-fun m!8255146 () Bool)

(assert (=> b!7843592 m!8255146))

(assert (=> b!7843567 d!2352659))

(declare-fun b!7843605 () Bool)

(declare-fun e!4637486 () Bool)

(declare-fun tp!2321677 () Bool)

(assert (=> b!7843605 (= e!4637486 (and tp_is_empty!52473 tp!2321677))))

(assert (=> b!7843569 (= tp!2321649 e!4637486)))

(assert (= (and b!7843569 ((_ is Cons!73772) (t!388631 s!15118))) b!7843605))

(declare-fun e!4637495 () Bool)

(assert (=> b!7843570 (= tp!2321650 e!4637495)))

(declare-fun b!7843636 () Bool)

(declare-fun tp!2321708 () Bool)

(declare-fun tp!2321707 () Bool)

(assert (=> b!7843636 (= e!4637495 (and tp!2321708 tp!2321707))))

(declare-fun b!7843635 () Bool)

(declare-fun tp!2321709 () Bool)

(assert (=> b!7843635 (= e!4637495 tp!2321709)))

(declare-fun b!7843634 () Bool)

(declare-fun tp!2321710 () Bool)

(declare-fun tp!2321706 () Bool)

(assert (=> b!7843634 (= e!4637495 (and tp!2321710 tp!2321706))))

(declare-fun b!7843633 () Bool)

(assert (=> b!7843633 (= e!4637495 tp_is_empty!52473)))

(assert (= (and b!7843570 ((_ is ElementMatch!21037) (reg!21366 r!27161))) b!7843633))

(assert (= (and b!7843570 ((_ is Concat!29882) (reg!21366 r!27161))) b!7843634))

(assert (= (and b!7843570 ((_ is Star!21037) (reg!21366 r!27161))) b!7843635))

(assert (= (and b!7843570 ((_ is Union!21037) (reg!21366 r!27161))) b!7843636))

(declare-fun e!4637496 () Bool)

(assert (=> b!7843565 (= tp!2321654 e!4637496)))

(declare-fun b!7843640 () Bool)

(declare-fun tp!2321713 () Bool)

(declare-fun tp!2321712 () Bool)

(assert (=> b!7843640 (= e!4637496 (and tp!2321713 tp!2321712))))

(declare-fun b!7843639 () Bool)

(declare-fun tp!2321714 () Bool)

(assert (=> b!7843639 (= e!4637496 tp!2321714)))

(declare-fun b!7843638 () Bool)

(declare-fun tp!2321715 () Bool)

(declare-fun tp!2321711 () Bool)

(assert (=> b!7843638 (= e!4637496 (and tp!2321715 tp!2321711))))

(declare-fun b!7843637 () Bool)

(assert (=> b!7843637 (= e!4637496 tp_is_empty!52473)))

(assert (= (and b!7843565 ((_ is ElementMatch!21037) (regOne!42586 r!27161))) b!7843637))

(assert (= (and b!7843565 ((_ is Concat!29882) (regOne!42586 r!27161))) b!7843638))

(assert (= (and b!7843565 ((_ is Star!21037) (regOne!42586 r!27161))) b!7843639))

(assert (= (and b!7843565 ((_ is Union!21037) (regOne!42586 r!27161))) b!7843640))

(declare-fun e!4637497 () Bool)

(assert (=> b!7843565 (= tp!2321653 e!4637497)))

(declare-fun b!7843644 () Bool)

(declare-fun tp!2321718 () Bool)

(declare-fun tp!2321717 () Bool)

(assert (=> b!7843644 (= e!4637497 (and tp!2321718 tp!2321717))))

(declare-fun b!7843643 () Bool)

(declare-fun tp!2321719 () Bool)

(assert (=> b!7843643 (= e!4637497 tp!2321719)))

(declare-fun b!7843642 () Bool)

(declare-fun tp!2321720 () Bool)

(declare-fun tp!2321716 () Bool)

(assert (=> b!7843642 (= e!4637497 (and tp!2321720 tp!2321716))))

(declare-fun b!7843641 () Bool)

(assert (=> b!7843641 (= e!4637497 tp_is_empty!52473)))

(assert (= (and b!7843565 ((_ is ElementMatch!21037) (regTwo!42586 r!27161))) b!7843641))

(assert (= (and b!7843565 ((_ is Concat!29882) (regTwo!42586 r!27161))) b!7843642))

(assert (= (and b!7843565 ((_ is Star!21037) (regTwo!42586 r!27161))) b!7843643))

(assert (= (and b!7843565 ((_ is Union!21037) (regTwo!42586 r!27161))) b!7843644))

(declare-fun e!4637498 () Bool)

(assert (=> b!7843568 (= tp!2321652 e!4637498)))

(declare-fun b!7843648 () Bool)

(declare-fun tp!2321723 () Bool)

(declare-fun tp!2321722 () Bool)

(assert (=> b!7843648 (= e!4637498 (and tp!2321723 tp!2321722))))

(declare-fun b!7843647 () Bool)

(declare-fun tp!2321724 () Bool)

(assert (=> b!7843647 (= e!4637498 tp!2321724)))

(declare-fun b!7843646 () Bool)

(declare-fun tp!2321725 () Bool)

(declare-fun tp!2321721 () Bool)

(assert (=> b!7843646 (= e!4637498 (and tp!2321725 tp!2321721))))

(declare-fun b!7843645 () Bool)

(assert (=> b!7843645 (= e!4637498 tp_is_empty!52473)))

(assert (= (and b!7843568 ((_ is ElementMatch!21037) (regOne!42587 r!27161))) b!7843645))

(assert (= (and b!7843568 ((_ is Concat!29882) (regOne!42587 r!27161))) b!7843646))

(assert (= (and b!7843568 ((_ is Star!21037) (regOne!42587 r!27161))) b!7843647))

(assert (= (and b!7843568 ((_ is Union!21037) (regOne!42587 r!27161))) b!7843648))

(declare-fun e!4637499 () Bool)

(assert (=> b!7843568 (= tp!2321651 e!4637499)))

(declare-fun b!7843652 () Bool)

(declare-fun tp!2321728 () Bool)

(declare-fun tp!2321727 () Bool)

(assert (=> b!7843652 (= e!4637499 (and tp!2321728 tp!2321727))))

(declare-fun b!7843651 () Bool)

(declare-fun tp!2321729 () Bool)

(assert (=> b!7843651 (= e!4637499 tp!2321729)))

(declare-fun b!7843650 () Bool)

(declare-fun tp!2321730 () Bool)

(declare-fun tp!2321726 () Bool)

(assert (=> b!7843650 (= e!4637499 (and tp!2321730 tp!2321726))))

(declare-fun b!7843649 () Bool)

(assert (=> b!7843649 (= e!4637499 tp_is_empty!52473)))

(assert (= (and b!7843568 ((_ is ElementMatch!21037) (regTwo!42587 r!27161))) b!7843649))

(assert (= (and b!7843568 ((_ is Concat!29882) (regTwo!42587 r!27161))) b!7843650))

(assert (= (and b!7843568 ((_ is Star!21037) (regTwo!42587 r!27161))) b!7843651))

(assert (= (and b!7843568 ((_ is Union!21037) (regTwo!42587 r!27161))) b!7843652))

(check-sat (not b!7843636) (not b!7843605) (not b!7843644) (not b!7843638) (not b!7843650) (not b!7843652) (not b!7843647) (not b!7843635) (not b!7843640) (not b!7843639) (not b!7843592) (not b!7843643) (not b!7843646) (not b!7843651) (not b!7843634) tp_is_empty!52473 (not b!7843642) (not b!7843648))
(check-sat)
