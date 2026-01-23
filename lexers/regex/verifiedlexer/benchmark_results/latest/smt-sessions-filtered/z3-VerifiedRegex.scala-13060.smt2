; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!715342 () Bool)

(assert start!715342)

(declare-fun b!7327732 () Bool)

(declare-fun e!4387705 () Bool)

(declare-fun tp!2080802 () Bool)

(assert (=> b!7327732 (= e!4387705 tp!2080802)))

(declare-fun b!7327733 () Bool)

(declare-fun e!4387702 () Bool)

(declare-fun tp!2080801 () Bool)

(assert (=> b!7327733 (= e!4387702 tp!2080801)))

(declare-fun b!7327734 () Bool)

(declare-fun e!4387703 () Bool)

(declare-datatypes ((C!38292 0))(
  ( (C!38293 (val!29506 Int)) )
))
(declare-datatypes ((Regex!19009 0))(
  ( (ElementMatch!19009 (c!1360282 C!38292)) (Concat!27854 (regOne!38530 Regex!19009) (regTwo!38530 Regex!19009)) (EmptyExpr!19009) (Star!19009 (reg!19338 Regex!19009)) (EmptyLang!19009) (Union!19009 (regOne!38531 Regex!19009) (regTwo!38531 Regex!19009)) )
))
(declare-datatypes ((List!71505 0))(
  ( (Nil!71381) (Cons!71381 (h!77829 Regex!19009) (t!385892 List!71505)) )
))
(declare-datatypes ((Context!15898 0))(
  ( (Context!15899 (exprs!8449 List!71505)) )
))
(declare-fun ct2!352 () Context!15898)

(declare-fun lambda!454252 () Int)

(declare-fun forall!17858 (List!71505 Int) Bool)

(assert (=> b!7327734 (= e!4387703 (forall!17858 (exprs!8449 ct2!352) lambda!454252))))

(declare-fun b!7327735 () Bool)

(declare-fun e!4387701 () Bool)

(declare-fun e!4387707 () Bool)

(assert (=> b!7327735 (= e!4387701 e!4387707)))

(declare-fun res!2961699 () Bool)

(assert (=> b!7327735 (=> (not res!2961699) (not e!4387707))))

(declare-fun ct1!256 () Context!15898)

(declare-fun nullable!8113 (Regex!19009) Bool)

(assert (=> b!7327735 (= res!2961699 (not (nullable!8113 (h!77829 (exprs!8449 ct1!256)))))))

(declare-fun c!10305 () C!38292)

(declare-fun lt!2606669 () Context!15898)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2606665 () (InoxSet Context!15898))

(declare-fun derivationStepZipperDown!2840 (Regex!19009 Context!15898 C!38292) (InoxSet Context!15898))

(assert (=> b!7327735 (= lt!2606665 (derivationStepZipperDown!2840 (h!77829 (exprs!8449 ct1!256)) lt!2606669 c!10305))))

(declare-fun lt!2606661 () List!71505)

(assert (=> b!7327735 (= lt!2606669 (Context!15899 lt!2606661))))

(declare-fun tail!14698 (List!71505) List!71505)

(assert (=> b!7327735 (= lt!2606661 (tail!14698 (exprs!8449 ct1!256)))))

(declare-fun b!7327736 () Bool)

(declare-fun e!4387706 () Bool)

(declare-fun tp!2080803 () Bool)

(assert (=> b!7327736 (= e!4387706 tp!2080803)))

(declare-fun b!7327737 () Bool)

(assert (=> b!7327737 (= e!4387707 (not e!4387703))))

(declare-fun res!2961695 () Bool)

(assert (=> b!7327737 (=> res!2961695 e!4387703)))

(declare-fun cWitness!35 () Context!15898)

(assert (=> b!7327737 (= res!2961695 (not (forall!17858 (exprs!8449 cWitness!35) lambda!454252)))))

(declare-fun ++!16833 (List!71505 List!71505) List!71505)

(assert (=> b!7327737 (select (derivationStepZipperDown!2840 (h!77829 (exprs!8449 ct1!256)) (Context!15899 (++!16833 lt!2606661 (exprs!8449 ct2!352))) c!10305) (Context!15899 (++!16833 (exprs!8449 cWitness!35) (exprs!8449 ct2!352))))))

(declare-datatypes ((Unit!164983 0))(
  ( (Unit!164984) )
))
(declare-fun lt!2606670 () Unit!164983)

(declare-fun lemmaConcatPreservesForall!1690 (List!71505 List!71505 Int) Unit!164983)

(assert (=> b!7327737 (= lt!2606670 (lemmaConcatPreservesForall!1690 lt!2606661 (exprs!8449 ct2!352) lambda!454252))))

(declare-fun lt!2606667 () Unit!164983)

(assert (=> b!7327737 (= lt!2606667 (lemmaConcatPreservesForall!1690 (exprs!8449 cWitness!35) (exprs!8449 ct2!352) lambda!454252))))

(declare-fun lt!2606668 () Unit!164983)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!16 (Regex!19009 Context!15898 Context!15898 Context!15898 C!38292) Unit!164983)

(assert (=> b!7327737 (= lt!2606668 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!16 (h!77829 (exprs!8449 ct1!256)) lt!2606669 ct2!352 cWitness!35 c!10305))))

(declare-fun lt!2606663 () List!71505)

(declare-fun lt!2606666 () (InoxSet Context!15898))

(assert (=> b!7327737 (= lt!2606666 (derivationStepZipperDown!2840 (h!77829 (exprs!8449 ct1!256)) (Context!15899 (tail!14698 lt!2606663)) c!10305))))

(declare-fun b!7327738 () Bool)

(declare-fun res!2961700 () Bool)

(assert (=> b!7327738 (=> (not res!2961700) (not e!4387701))))

(declare-fun isEmpty!40927 (List!71505) Bool)

(assert (=> b!7327738 (= res!2961700 (not (isEmpty!40927 (exprs!8449 ct1!256))))))

(declare-fun b!7327740 () Bool)

(declare-fun e!4387704 () Bool)

(assert (=> b!7327740 (= e!4387704 e!4387701)))

(declare-fun res!2961697 () Bool)

(assert (=> b!7327740 (=> (not res!2961697) (not e!4387701))))

(get-info :version)

(assert (=> b!7327740 (= res!2961697 ((_ is Cons!71381) (exprs!8449 ct1!256)))))

(assert (=> b!7327740 (= lt!2606663 (++!16833 (exprs!8449 ct1!256) (exprs!8449 ct2!352)))))

(declare-fun lt!2606664 () Unit!164983)

(assert (=> b!7327740 (= lt!2606664 (lemmaConcatPreservesForall!1690 (exprs!8449 ct1!256) (exprs!8449 ct2!352) lambda!454252))))

(declare-fun b!7327741 () Bool)

(declare-fun res!2961694 () Bool)

(assert (=> b!7327741 (=> (not res!2961694) (not e!4387707))))

(declare-fun lt!2606662 () (InoxSet Context!15898))

(assert (=> b!7327741 (= res!2961694 (and (= lt!2606662 lt!2606665) (select lt!2606665 cWitness!35)))))

(declare-fun res!2961698 () Bool)

(assert (=> start!715342 (=> (not res!2961698) (not e!4387704))))

(assert (=> start!715342 (= res!2961698 (select lt!2606662 cWitness!35))))

(declare-fun derivationStepZipperUp!2689 (Context!15898 C!38292) (InoxSet Context!15898))

(assert (=> start!715342 (= lt!2606662 (derivationStepZipperUp!2689 ct1!256 c!10305))))

(assert (=> start!715342 e!4387704))

(declare-fun tp_is_empty!48263 () Bool)

(assert (=> start!715342 tp_is_empty!48263))

(declare-fun inv!90862 (Context!15898) Bool)

(assert (=> start!715342 (and (inv!90862 cWitness!35) e!4387706)))

(assert (=> start!715342 (and (inv!90862 ct1!256) e!4387705)))

(assert (=> start!715342 (and (inv!90862 ct2!352) e!4387702)))

(declare-fun b!7327739 () Bool)

(declare-fun res!2961696 () Bool)

(assert (=> b!7327739 (=> (not res!2961696) (not e!4387707))))

(assert (=> b!7327739 (= res!2961696 (not (isEmpty!40927 lt!2606663)))))

(assert (= (and start!715342 res!2961698) b!7327740))

(assert (= (and b!7327740 res!2961697) b!7327738))

(assert (= (and b!7327738 res!2961700) b!7327735))

(assert (= (and b!7327735 res!2961699) b!7327741))

(assert (= (and b!7327741 res!2961694) b!7327739))

(assert (= (and b!7327739 res!2961696) b!7327737))

(assert (= (and b!7327737 (not res!2961695)) b!7327734))

(assert (= start!715342 b!7327736))

(assert (= start!715342 b!7327732))

(assert (= start!715342 b!7327733))

(declare-fun m!7993580 () Bool)

(assert (=> b!7327738 m!7993580))

(declare-fun m!7993582 () Bool)

(assert (=> b!7327734 m!7993582))

(declare-fun m!7993584 () Bool)

(assert (=> b!7327739 m!7993584))

(declare-fun m!7993586 () Bool)

(assert (=> b!7327737 m!7993586))

(declare-fun m!7993588 () Bool)

(assert (=> b!7327737 m!7993588))

(declare-fun m!7993590 () Bool)

(assert (=> b!7327737 m!7993590))

(declare-fun m!7993592 () Bool)

(assert (=> b!7327737 m!7993592))

(declare-fun m!7993594 () Bool)

(assert (=> b!7327737 m!7993594))

(declare-fun m!7993596 () Bool)

(assert (=> b!7327737 m!7993596))

(declare-fun m!7993598 () Bool)

(assert (=> b!7327737 m!7993598))

(declare-fun m!7993600 () Bool)

(assert (=> b!7327737 m!7993600))

(declare-fun m!7993602 () Bool)

(assert (=> b!7327737 m!7993602))

(declare-fun m!7993604 () Bool)

(assert (=> b!7327737 m!7993604))

(declare-fun m!7993606 () Bool)

(assert (=> b!7327740 m!7993606))

(declare-fun m!7993608 () Bool)

(assert (=> b!7327740 m!7993608))

(declare-fun m!7993610 () Bool)

(assert (=> b!7327741 m!7993610))

(declare-fun m!7993612 () Bool)

(assert (=> start!715342 m!7993612))

(declare-fun m!7993614 () Bool)

(assert (=> start!715342 m!7993614))

(declare-fun m!7993616 () Bool)

(assert (=> start!715342 m!7993616))

(declare-fun m!7993618 () Bool)

(assert (=> start!715342 m!7993618))

(declare-fun m!7993620 () Bool)

(assert (=> start!715342 m!7993620))

(declare-fun m!7993622 () Bool)

(assert (=> b!7327735 m!7993622))

(declare-fun m!7993624 () Bool)

(assert (=> b!7327735 m!7993624))

(declare-fun m!7993626 () Bool)

(assert (=> b!7327735 m!7993626))

(check-sat (not b!7327739) (not b!7327738) (not b!7327736) (not start!715342) tp_is_empty!48263 (not b!7327735) (not b!7327733) (not b!7327737) (not b!7327732) (not b!7327734) (not b!7327740))
(check-sat)
(get-model)

(declare-fun d!2275551 () Bool)

(assert (=> d!2275551 (forall!17858 (++!16833 (exprs!8449 cWitness!35) (exprs!8449 ct2!352)) lambda!454252)))

(declare-fun lt!2606673 () Unit!164983)

(declare-fun choose!56988 (List!71505 List!71505 Int) Unit!164983)

(assert (=> d!2275551 (= lt!2606673 (choose!56988 (exprs!8449 cWitness!35) (exprs!8449 ct2!352) lambda!454252))))

(assert (=> d!2275551 (forall!17858 (exprs!8449 cWitness!35) lambda!454252)))

(assert (=> d!2275551 (= (lemmaConcatPreservesForall!1690 (exprs!8449 cWitness!35) (exprs!8449 ct2!352) lambda!454252) lt!2606673)))

(declare-fun bs!1916882 () Bool)

(assert (= bs!1916882 d!2275551))

(assert (=> bs!1916882 m!7993592))

(assert (=> bs!1916882 m!7993592))

(declare-fun m!7993628 () Bool)

(assert (=> bs!1916882 m!7993628))

(declare-fun m!7993630 () Bool)

(assert (=> bs!1916882 m!7993630))

(assert (=> bs!1916882 m!7993598))

(assert (=> b!7327737 d!2275551))

(declare-fun d!2275553 () Bool)

(assert (=> d!2275553 (= (tail!14698 lt!2606663) (t!385892 lt!2606663))))

(assert (=> b!7327737 d!2275553))

(declare-fun b!7327764 () Bool)

(declare-fun c!1360296 () Bool)

(declare-fun e!4387722 () Bool)

(assert (=> b!7327764 (= c!1360296 e!4387722)))

(declare-fun res!2961703 () Bool)

(assert (=> b!7327764 (=> (not res!2961703) (not e!4387722))))

(assert (=> b!7327764 (= res!2961703 ((_ is Concat!27854) (h!77829 (exprs!8449 ct1!256))))))

(declare-fun e!4387725 () (InoxSet Context!15898))

(declare-fun e!4387721 () (InoxSet Context!15898))

(assert (=> b!7327764 (= e!4387725 e!4387721)))

(declare-fun b!7327765 () Bool)

(declare-fun e!4387724 () (InoxSet Context!15898))

(declare-fun call!667109 () (InoxSet Context!15898))

(assert (=> b!7327765 (= e!4387724 call!667109)))

(declare-fun bm!667101 () Bool)

(declare-fun call!667107 () (InoxSet Context!15898))

(assert (=> bm!667101 (= call!667109 call!667107)))

(declare-fun b!7327766 () Bool)

(declare-fun e!4387720 () (InoxSet Context!15898))

(assert (=> b!7327766 (= e!4387720 e!4387725)))

(declare-fun c!1360295 () Bool)

(assert (=> b!7327766 (= c!1360295 ((_ is Union!19009) (h!77829 (exprs!8449 ct1!256))))))

(declare-fun bm!667102 () Bool)

(declare-fun call!667108 () (InoxSet Context!15898))

(declare-fun call!667110 () List!71505)

(declare-fun c!1360294 () Bool)

(assert (=> bm!667102 (= call!667108 (derivationStepZipperDown!2840 (ite c!1360295 (regOne!38531 (h!77829 (exprs!8449 ct1!256))) (ite c!1360296 (regTwo!38530 (h!77829 (exprs!8449 ct1!256))) (ite c!1360294 (regOne!38530 (h!77829 (exprs!8449 ct1!256))) (reg!19338 (h!77829 (exprs!8449 ct1!256)))))) (ite (or c!1360295 c!1360296) (Context!15899 (tail!14698 lt!2606663)) (Context!15899 call!667110)) c!10305))))

(declare-fun bm!667103 () Bool)

(declare-fun call!667111 () List!71505)

(assert (=> bm!667103 (= call!667110 call!667111)))

(declare-fun b!7327767 () Bool)

(assert (=> b!7327767 (= e!4387724 ((as const (Array Context!15898 Bool)) false))))

(declare-fun bm!667104 () Bool)

(declare-fun call!667106 () (InoxSet Context!15898))

(assert (=> bm!667104 (= call!667106 (derivationStepZipperDown!2840 (ite c!1360295 (regTwo!38531 (h!77829 (exprs!8449 ct1!256))) (regOne!38530 (h!77829 (exprs!8449 ct1!256)))) (ite c!1360295 (Context!15899 (tail!14698 lt!2606663)) (Context!15899 call!667111)) c!10305))))

(declare-fun bm!667105 () Bool)

(assert (=> bm!667105 (= call!667107 call!667108)))

(declare-fun bm!667106 () Bool)

(declare-fun $colon$colon!3039 (List!71505 Regex!19009) List!71505)

(assert (=> bm!667106 (= call!667111 ($colon$colon!3039 (exprs!8449 (Context!15899 (tail!14698 lt!2606663))) (ite (or c!1360296 c!1360294) (regTwo!38530 (h!77829 (exprs!8449 ct1!256))) (h!77829 (exprs!8449 ct1!256)))))))

(declare-fun b!7327769 () Bool)

(assert (=> b!7327769 (= e!4387725 ((_ map or) call!667108 call!667106))))

(declare-fun b!7327770 () Bool)

(declare-fun e!4387723 () (InoxSet Context!15898))

(assert (=> b!7327770 (= e!4387723 call!667109)))

(declare-fun b!7327771 () Bool)

(assert (=> b!7327771 (= e!4387721 e!4387723)))

(assert (=> b!7327771 (= c!1360294 ((_ is Concat!27854) (h!77829 (exprs!8449 ct1!256))))))

(declare-fun b!7327772 () Bool)

(declare-fun c!1360298 () Bool)

(assert (=> b!7327772 (= c!1360298 ((_ is Star!19009) (h!77829 (exprs!8449 ct1!256))))))

(assert (=> b!7327772 (= e!4387723 e!4387724)))

(declare-fun b!7327773 () Bool)

(assert (=> b!7327773 (= e!4387720 (store ((as const (Array Context!15898 Bool)) false) (Context!15899 (tail!14698 lt!2606663)) true))))

(declare-fun b!7327774 () Bool)

(assert (=> b!7327774 (= e!4387722 (nullable!8113 (regOne!38530 (h!77829 (exprs!8449 ct1!256)))))))

(declare-fun b!7327768 () Bool)

(assert (=> b!7327768 (= e!4387721 ((_ map or) call!667106 call!667107))))

(declare-fun d!2275555 () Bool)

(declare-fun c!1360297 () Bool)

(assert (=> d!2275555 (= c!1360297 (and ((_ is ElementMatch!19009) (h!77829 (exprs!8449 ct1!256))) (= (c!1360282 (h!77829 (exprs!8449 ct1!256))) c!10305)))))

(assert (=> d!2275555 (= (derivationStepZipperDown!2840 (h!77829 (exprs!8449 ct1!256)) (Context!15899 (tail!14698 lt!2606663)) c!10305) e!4387720)))

(assert (= (and d!2275555 c!1360297) b!7327773))

(assert (= (and d!2275555 (not c!1360297)) b!7327766))

(assert (= (and b!7327766 c!1360295) b!7327769))

(assert (= (and b!7327766 (not c!1360295)) b!7327764))

(assert (= (and b!7327764 res!2961703) b!7327774))

(assert (= (and b!7327764 c!1360296) b!7327768))

(assert (= (and b!7327764 (not c!1360296)) b!7327771))

(assert (= (and b!7327771 c!1360294) b!7327770))

(assert (= (and b!7327771 (not c!1360294)) b!7327772))

(assert (= (and b!7327772 c!1360298) b!7327765))

(assert (= (and b!7327772 (not c!1360298)) b!7327767))

(assert (= (or b!7327770 b!7327765) bm!667103))

(assert (= (or b!7327770 b!7327765) bm!667101))

(assert (= (or b!7327768 bm!667101) bm!667105))

(assert (= (or b!7327768 bm!667103) bm!667106))

(assert (= (or b!7327769 b!7327768) bm!667104))

(assert (= (or b!7327769 bm!667105) bm!667102))

(declare-fun m!7993646 () Bool)

(assert (=> b!7327774 m!7993646))

(declare-fun m!7993648 () Bool)

(assert (=> bm!667104 m!7993648))

(declare-fun m!7993650 () Bool)

(assert (=> bm!667106 m!7993650))

(declare-fun m!7993652 () Bool)

(assert (=> b!7327773 m!7993652))

(declare-fun m!7993654 () Bool)

(assert (=> bm!667102 m!7993654))

(assert (=> b!7327737 d!2275555))

(declare-fun b!7327775 () Bool)

(declare-fun c!1360301 () Bool)

(declare-fun e!4387728 () Bool)

(assert (=> b!7327775 (= c!1360301 e!4387728)))

(declare-fun res!2961704 () Bool)

(assert (=> b!7327775 (=> (not res!2961704) (not e!4387728))))

(assert (=> b!7327775 (= res!2961704 ((_ is Concat!27854) (h!77829 (exprs!8449 ct1!256))))))

(declare-fun e!4387731 () (InoxSet Context!15898))

(declare-fun e!4387727 () (InoxSet Context!15898))

(assert (=> b!7327775 (= e!4387731 e!4387727)))

(declare-fun b!7327776 () Bool)

(declare-fun e!4387730 () (InoxSet Context!15898))

(declare-fun call!667115 () (InoxSet Context!15898))

(assert (=> b!7327776 (= e!4387730 call!667115)))

(declare-fun bm!667107 () Bool)

(declare-fun call!667113 () (InoxSet Context!15898))

(assert (=> bm!667107 (= call!667115 call!667113)))

(declare-fun b!7327777 () Bool)

(declare-fun e!4387726 () (InoxSet Context!15898))

(assert (=> b!7327777 (= e!4387726 e!4387731)))

(declare-fun c!1360300 () Bool)

(assert (=> b!7327777 (= c!1360300 ((_ is Union!19009) (h!77829 (exprs!8449 ct1!256))))))

(declare-fun call!667114 () (InoxSet Context!15898))

(declare-fun c!1360299 () Bool)

(declare-fun bm!667108 () Bool)

(declare-fun call!667116 () List!71505)

(assert (=> bm!667108 (= call!667114 (derivationStepZipperDown!2840 (ite c!1360300 (regOne!38531 (h!77829 (exprs!8449 ct1!256))) (ite c!1360301 (regTwo!38530 (h!77829 (exprs!8449 ct1!256))) (ite c!1360299 (regOne!38530 (h!77829 (exprs!8449 ct1!256))) (reg!19338 (h!77829 (exprs!8449 ct1!256)))))) (ite (or c!1360300 c!1360301) (Context!15899 (++!16833 lt!2606661 (exprs!8449 ct2!352))) (Context!15899 call!667116)) c!10305))))

(declare-fun bm!667109 () Bool)

(declare-fun call!667117 () List!71505)

(assert (=> bm!667109 (= call!667116 call!667117)))

(declare-fun b!7327778 () Bool)

(assert (=> b!7327778 (= e!4387730 ((as const (Array Context!15898 Bool)) false))))

(declare-fun bm!667110 () Bool)

(declare-fun call!667112 () (InoxSet Context!15898))

(assert (=> bm!667110 (= call!667112 (derivationStepZipperDown!2840 (ite c!1360300 (regTwo!38531 (h!77829 (exprs!8449 ct1!256))) (regOne!38530 (h!77829 (exprs!8449 ct1!256)))) (ite c!1360300 (Context!15899 (++!16833 lt!2606661 (exprs!8449 ct2!352))) (Context!15899 call!667117)) c!10305))))

(declare-fun bm!667111 () Bool)

(assert (=> bm!667111 (= call!667113 call!667114)))

(declare-fun bm!667112 () Bool)

(assert (=> bm!667112 (= call!667117 ($colon$colon!3039 (exprs!8449 (Context!15899 (++!16833 lt!2606661 (exprs!8449 ct2!352)))) (ite (or c!1360301 c!1360299) (regTwo!38530 (h!77829 (exprs!8449 ct1!256))) (h!77829 (exprs!8449 ct1!256)))))))

(declare-fun b!7327780 () Bool)

(assert (=> b!7327780 (= e!4387731 ((_ map or) call!667114 call!667112))))

(declare-fun b!7327781 () Bool)

(declare-fun e!4387729 () (InoxSet Context!15898))

(assert (=> b!7327781 (= e!4387729 call!667115)))

(declare-fun b!7327782 () Bool)

(assert (=> b!7327782 (= e!4387727 e!4387729)))

(assert (=> b!7327782 (= c!1360299 ((_ is Concat!27854) (h!77829 (exprs!8449 ct1!256))))))

(declare-fun b!7327783 () Bool)

(declare-fun c!1360303 () Bool)

(assert (=> b!7327783 (= c!1360303 ((_ is Star!19009) (h!77829 (exprs!8449 ct1!256))))))

(assert (=> b!7327783 (= e!4387729 e!4387730)))

(declare-fun b!7327784 () Bool)

(assert (=> b!7327784 (= e!4387726 (store ((as const (Array Context!15898 Bool)) false) (Context!15899 (++!16833 lt!2606661 (exprs!8449 ct2!352))) true))))

(declare-fun b!7327785 () Bool)

(assert (=> b!7327785 (= e!4387728 (nullable!8113 (regOne!38530 (h!77829 (exprs!8449 ct1!256)))))))

(declare-fun b!7327779 () Bool)

(assert (=> b!7327779 (= e!4387727 ((_ map or) call!667112 call!667113))))

(declare-fun d!2275565 () Bool)

(declare-fun c!1360302 () Bool)

(assert (=> d!2275565 (= c!1360302 (and ((_ is ElementMatch!19009) (h!77829 (exprs!8449 ct1!256))) (= (c!1360282 (h!77829 (exprs!8449 ct1!256))) c!10305)))))

(assert (=> d!2275565 (= (derivationStepZipperDown!2840 (h!77829 (exprs!8449 ct1!256)) (Context!15899 (++!16833 lt!2606661 (exprs!8449 ct2!352))) c!10305) e!4387726)))

(assert (= (and d!2275565 c!1360302) b!7327784))

(assert (= (and d!2275565 (not c!1360302)) b!7327777))

(assert (= (and b!7327777 c!1360300) b!7327780))

(assert (= (and b!7327777 (not c!1360300)) b!7327775))

(assert (= (and b!7327775 res!2961704) b!7327785))

(assert (= (and b!7327775 c!1360301) b!7327779))

(assert (= (and b!7327775 (not c!1360301)) b!7327782))

(assert (= (and b!7327782 c!1360299) b!7327781))

(assert (= (and b!7327782 (not c!1360299)) b!7327783))

(assert (= (and b!7327783 c!1360303) b!7327776))

(assert (= (and b!7327783 (not c!1360303)) b!7327778))

(assert (= (or b!7327781 b!7327776) bm!667109))

(assert (= (or b!7327781 b!7327776) bm!667107))

(assert (= (or b!7327779 bm!667107) bm!667111))

(assert (= (or b!7327779 bm!667109) bm!667112))

(assert (= (or b!7327780 b!7327779) bm!667110))

(assert (= (or b!7327780 bm!667111) bm!667108))

(assert (=> b!7327785 m!7993646))

(declare-fun m!7993656 () Bool)

(assert (=> bm!667110 m!7993656))

(declare-fun m!7993658 () Bool)

(assert (=> bm!667112 m!7993658))

(declare-fun m!7993660 () Bool)

(assert (=> b!7327784 m!7993660))

(declare-fun m!7993662 () Bool)

(assert (=> bm!667108 m!7993662))

(assert (=> b!7327737 d!2275565))

(declare-fun d!2275567 () Bool)

(declare-fun res!2961711 () Bool)

(declare-fun e!4387744 () Bool)

(assert (=> d!2275567 (=> res!2961711 e!4387744)))

(assert (=> d!2275567 (= res!2961711 ((_ is Nil!71381) (exprs!8449 cWitness!35)))))

(assert (=> d!2275567 (= (forall!17858 (exprs!8449 cWitness!35) lambda!454252) e!4387744)))

(declare-fun b!7327804 () Bool)

(declare-fun e!4387745 () Bool)

(assert (=> b!7327804 (= e!4387744 e!4387745)))

(declare-fun res!2961712 () Bool)

(assert (=> b!7327804 (=> (not res!2961712) (not e!4387745))))

(declare-fun dynLambda!29415 (Int Regex!19009) Bool)

(assert (=> b!7327804 (= res!2961712 (dynLambda!29415 lambda!454252 (h!77829 (exprs!8449 cWitness!35))))))

(declare-fun b!7327805 () Bool)

(assert (=> b!7327805 (= e!4387745 (forall!17858 (t!385892 (exprs!8449 cWitness!35)) lambda!454252))))

(assert (= (and d!2275567 (not res!2961711)) b!7327804))

(assert (= (and b!7327804 res!2961712) b!7327805))

(declare-fun b_lambda!283427 () Bool)

(assert (=> (not b_lambda!283427) (not b!7327804)))

(declare-fun m!7993664 () Bool)

(assert (=> b!7327804 m!7993664))

(declare-fun m!7993666 () Bool)

(assert (=> b!7327805 m!7993666))

(assert (=> b!7327737 d!2275567))

(declare-fun b!7327822 () Bool)

(declare-fun e!4387755 () List!71505)

(assert (=> b!7327822 (= e!4387755 (exprs!8449 ct2!352))))

(declare-fun b!7327823 () Bool)

(assert (=> b!7327823 (= e!4387755 (Cons!71381 (h!77829 (exprs!8449 cWitness!35)) (++!16833 (t!385892 (exprs!8449 cWitness!35)) (exprs!8449 ct2!352))))))

(declare-fun b!7327824 () Bool)

(declare-fun res!2961718 () Bool)

(declare-fun e!4387754 () Bool)

(assert (=> b!7327824 (=> (not res!2961718) (not e!4387754))))

(declare-fun lt!2606685 () List!71505)

(declare-fun size!41927 (List!71505) Int)

(assert (=> b!7327824 (= res!2961718 (= (size!41927 lt!2606685) (+ (size!41927 (exprs!8449 cWitness!35)) (size!41927 (exprs!8449 ct2!352)))))))

(declare-fun b!7327825 () Bool)

(assert (=> b!7327825 (= e!4387754 (or (not (= (exprs!8449 ct2!352) Nil!71381)) (= lt!2606685 (exprs!8449 cWitness!35))))))

(declare-fun d!2275569 () Bool)

(assert (=> d!2275569 e!4387754))

(declare-fun res!2961717 () Bool)

(assert (=> d!2275569 (=> (not res!2961717) (not e!4387754))))

(declare-fun content!14950 (List!71505) (InoxSet Regex!19009))

(assert (=> d!2275569 (= res!2961717 (= (content!14950 lt!2606685) ((_ map or) (content!14950 (exprs!8449 cWitness!35)) (content!14950 (exprs!8449 ct2!352)))))))

(assert (=> d!2275569 (= lt!2606685 e!4387755)))

(declare-fun c!1360316 () Bool)

(assert (=> d!2275569 (= c!1360316 ((_ is Nil!71381) (exprs!8449 cWitness!35)))))

(assert (=> d!2275569 (= (++!16833 (exprs!8449 cWitness!35) (exprs!8449 ct2!352)) lt!2606685)))

(assert (= (and d!2275569 c!1360316) b!7327822))

(assert (= (and d!2275569 (not c!1360316)) b!7327823))

(assert (= (and d!2275569 res!2961717) b!7327824))

(assert (= (and b!7327824 res!2961718) b!7327825))

(declare-fun m!7993668 () Bool)

(assert (=> b!7327823 m!7993668))

(declare-fun m!7993670 () Bool)

(assert (=> b!7327824 m!7993670))

(declare-fun m!7993672 () Bool)

(assert (=> b!7327824 m!7993672))

(declare-fun m!7993674 () Bool)

(assert (=> b!7327824 m!7993674))

(declare-fun m!7993676 () Bool)

(assert (=> d!2275569 m!7993676))

(declare-fun m!7993678 () Bool)

(assert (=> d!2275569 m!7993678))

(declare-fun m!7993680 () Bool)

(assert (=> d!2275569 m!7993680))

(assert (=> b!7327737 d!2275569))

(declare-fun b!7327826 () Bool)

(declare-fun e!4387757 () List!71505)

(assert (=> b!7327826 (= e!4387757 (exprs!8449 ct2!352))))

(declare-fun b!7327827 () Bool)

(assert (=> b!7327827 (= e!4387757 (Cons!71381 (h!77829 lt!2606661) (++!16833 (t!385892 lt!2606661) (exprs!8449 ct2!352))))))

(declare-fun b!7327828 () Bool)

(declare-fun res!2961720 () Bool)

(declare-fun e!4387756 () Bool)

(assert (=> b!7327828 (=> (not res!2961720) (not e!4387756))))

(declare-fun lt!2606686 () List!71505)

(assert (=> b!7327828 (= res!2961720 (= (size!41927 lt!2606686) (+ (size!41927 lt!2606661) (size!41927 (exprs!8449 ct2!352)))))))

(declare-fun b!7327829 () Bool)

(assert (=> b!7327829 (= e!4387756 (or (not (= (exprs!8449 ct2!352) Nil!71381)) (= lt!2606686 lt!2606661)))))

(declare-fun d!2275571 () Bool)

(assert (=> d!2275571 e!4387756))

(declare-fun res!2961719 () Bool)

(assert (=> d!2275571 (=> (not res!2961719) (not e!4387756))))

(assert (=> d!2275571 (= res!2961719 (= (content!14950 lt!2606686) ((_ map or) (content!14950 lt!2606661) (content!14950 (exprs!8449 ct2!352)))))))

(assert (=> d!2275571 (= lt!2606686 e!4387757)))

(declare-fun c!1360317 () Bool)

(assert (=> d!2275571 (= c!1360317 ((_ is Nil!71381) lt!2606661))))

(assert (=> d!2275571 (= (++!16833 lt!2606661 (exprs!8449 ct2!352)) lt!2606686)))

(assert (= (and d!2275571 c!1360317) b!7327826))

(assert (= (and d!2275571 (not c!1360317)) b!7327827))

(assert (= (and d!2275571 res!2961719) b!7327828))

(assert (= (and b!7327828 res!2961720) b!7327829))

(declare-fun m!7993682 () Bool)

(assert (=> b!7327827 m!7993682))

(declare-fun m!7993684 () Bool)

(assert (=> b!7327828 m!7993684))

(declare-fun m!7993686 () Bool)

(assert (=> b!7327828 m!7993686))

(assert (=> b!7327828 m!7993674))

(declare-fun m!7993688 () Bool)

(assert (=> d!2275571 m!7993688))

(declare-fun m!7993690 () Bool)

(assert (=> d!2275571 m!7993690))

(assert (=> d!2275571 m!7993680))

(assert (=> b!7327737 d!2275571))

(declare-fun bs!1916886 () Bool)

(declare-fun d!2275573 () Bool)

(assert (= bs!1916886 (and d!2275573 b!7327740)))

(declare-fun lambda!454262 () Int)

(assert (=> bs!1916886 (= lambda!454262 lambda!454252)))

(assert (=> d!2275573 (select (derivationStepZipperDown!2840 (h!77829 (exprs!8449 ct1!256)) (Context!15899 (++!16833 (exprs!8449 lt!2606669) (exprs!8449 ct2!352))) c!10305) (Context!15899 (++!16833 (exprs!8449 cWitness!35) (exprs!8449 ct2!352))))))

(declare-fun lt!2606698 () Unit!164983)

(assert (=> d!2275573 (= lt!2606698 (lemmaConcatPreservesForall!1690 (exprs!8449 lt!2606669) (exprs!8449 ct2!352) lambda!454262))))

(declare-fun lt!2606697 () Unit!164983)

(assert (=> d!2275573 (= lt!2606697 (lemmaConcatPreservesForall!1690 (exprs!8449 cWitness!35) (exprs!8449 ct2!352) lambda!454262))))

(declare-fun lt!2606696 () Unit!164983)

(declare-fun choose!56991 (Regex!19009 Context!15898 Context!15898 Context!15898 C!38292) Unit!164983)

(assert (=> d!2275573 (= lt!2606696 (choose!56991 (h!77829 (exprs!8449 ct1!256)) lt!2606669 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9644 (Regex!19009) Bool)

(assert (=> d!2275573 (validRegex!9644 (h!77829 (exprs!8449 ct1!256)))))

(assert (=> d!2275573 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!16 (h!77829 (exprs!8449 ct1!256)) lt!2606669 ct2!352 cWitness!35 c!10305) lt!2606696)))

(declare-fun bs!1916887 () Bool)

(assert (= bs!1916887 d!2275573))

(declare-fun m!7993710 () Bool)

(assert (=> bs!1916887 m!7993710))

(declare-fun m!7993712 () Bool)

(assert (=> bs!1916887 m!7993712))

(declare-fun m!7993714 () Bool)

(assert (=> bs!1916887 m!7993714))

(declare-fun m!7993716 () Bool)

(assert (=> bs!1916887 m!7993716))

(declare-fun m!7993718 () Bool)

(assert (=> bs!1916887 m!7993718))

(declare-fun m!7993720 () Bool)

(assert (=> bs!1916887 m!7993720))

(assert (=> bs!1916887 m!7993592))

(declare-fun m!7993722 () Bool)

(assert (=> bs!1916887 m!7993722))

(assert (=> b!7327737 d!2275573))

(declare-fun d!2275581 () Bool)

(assert (=> d!2275581 (forall!17858 (++!16833 lt!2606661 (exprs!8449 ct2!352)) lambda!454252)))

(declare-fun lt!2606699 () Unit!164983)

(assert (=> d!2275581 (= lt!2606699 (choose!56988 lt!2606661 (exprs!8449 ct2!352) lambda!454252))))

(assert (=> d!2275581 (forall!17858 lt!2606661 lambda!454252)))

(assert (=> d!2275581 (= (lemmaConcatPreservesForall!1690 lt!2606661 (exprs!8449 ct2!352) lambda!454252) lt!2606699)))

(declare-fun bs!1916888 () Bool)

(assert (= bs!1916888 d!2275581))

(assert (=> bs!1916888 m!7993588))

(assert (=> bs!1916888 m!7993588))

(declare-fun m!7993724 () Bool)

(assert (=> bs!1916888 m!7993724))

(declare-fun m!7993726 () Bool)

(assert (=> bs!1916888 m!7993726))

(declare-fun m!7993728 () Bool)

(assert (=> bs!1916888 m!7993728))

(assert (=> b!7327737 d!2275581))

(declare-fun d!2275583 () Bool)

(assert (=> d!2275583 (= (isEmpty!40927 (exprs!8449 ct1!256)) ((_ is Nil!71381) (exprs!8449 ct1!256)))))

(assert (=> b!7327738 d!2275583))

(declare-fun d!2275585 () Bool)

(assert (=> d!2275585 (= (isEmpty!40927 lt!2606663) ((_ is Nil!71381) lt!2606663))))

(assert (=> b!7327739 d!2275585))

(declare-fun d!2275587 () Bool)

(declare-fun res!2961728 () Bool)

(declare-fun e!4387772 () Bool)

(assert (=> d!2275587 (=> res!2961728 e!4387772)))

(assert (=> d!2275587 (= res!2961728 ((_ is Nil!71381) (exprs!8449 ct2!352)))))

(assert (=> d!2275587 (= (forall!17858 (exprs!8449 ct2!352) lambda!454252) e!4387772)))

(declare-fun b!7327851 () Bool)

(declare-fun e!4387773 () Bool)

(assert (=> b!7327851 (= e!4387772 e!4387773)))

(declare-fun res!2961729 () Bool)

(assert (=> b!7327851 (=> (not res!2961729) (not e!4387773))))

(assert (=> b!7327851 (= res!2961729 (dynLambda!29415 lambda!454252 (h!77829 (exprs!8449 ct2!352))))))

(declare-fun b!7327852 () Bool)

(assert (=> b!7327852 (= e!4387773 (forall!17858 (t!385892 (exprs!8449 ct2!352)) lambda!454252))))

(assert (= (and d!2275587 (not res!2961728)) b!7327851))

(assert (= (and b!7327851 res!2961729) b!7327852))

(declare-fun b_lambda!283431 () Bool)

(assert (=> (not b_lambda!283431) (not b!7327851)))

(declare-fun m!7993730 () Bool)

(assert (=> b!7327851 m!7993730))

(declare-fun m!7993732 () Bool)

(assert (=> b!7327852 m!7993732))

(assert (=> b!7327734 d!2275587))

(declare-fun b!7327857 () Bool)

(declare-fun e!4387777 () List!71505)

(assert (=> b!7327857 (= e!4387777 (exprs!8449 ct2!352))))

(declare-fun b!7327858 () Bool)

(assert (=> b!7327858 (= e!4387777 (Cons!71381 (h!77829 (exprs!8449 ct1!256)) (++!16833 (t!385892 (exprs!8449 ct1!256)) (exprs!8449 ct2!352))))))

(declare-fun b!7327859 () Bool)

(declare-fun res!2961735 () Bool)

(declare-fun e!4387776 () Bool)

(assert (=> b!7327859 (=> (not res!2961735) (not e!4387776))))

(declare-fun lt!2606702 () List!71505)

(assert (=> b!7327859 (= res!2961735 (= (size!41927 lt!2606702) (+ (size!41927 (exprs!8449 ct1!256)) (size!41927 (exprs!8449 ct2!352)))))))

(declare-fun b!7327860 () Bool)

(assert (=> b!7327860 (= e!4387776 (or (not (= (exprs!8449 ct2!352) Nil!71381)) (= lt!2606702 (exprs!8449 ct1!256))))))

(declare-fun d!2275589 () Bool)

(assert (=> d!2275589 e!4387776))

(declare-fun res!2961734 () Bool)

(assert (=> d!2275589 (=> (not res!2961734) (not e!4387776))))

(assert (=> d!2275589 (= res!2961734 (= (content!14950 lt!2606702) ((_ map or) (content!14950 (exprs!8449 ct1!256)) (content!14950 (exprs!8449 ct2!352)))))))

(assert (=> d!2275589 (= lt!2606702 e!4387777)))

(declare-fun c!1360326 () Bool)

(assert (=> d!2275589 (= c!1360326 ((_ is Nil!71381) (exprs!8449 ct1!256)))))

(assert (=> d!2275589 (= (++!16833 (exprs!8449 ct1!256) (exprs!8449 ct2!352)) lt!2606702)))

(assert (= (and d!2275589 c!1360326) b!7327857))

(assert (= (and d!2275589 (not c!1360326)) b!7327858))

(assert (= (and d!2275589 res!2961734) b!7327859))

(assert (= (and b!7327859 res!2961735) b!7327860))

(declare-fun m!7993734 () Bool)

(assert (=> b!7327858 m!7993734))

(declare-fun m!7993736 () Bool)

(assert (=> b!7327859 m!7993736))

(declare-fun m!7993738 () Bool)

(assert (=> b!7327859 m!7993738))

(assert (=> b!7327859 m!7993674))

(declare-fun m!7993740 () Bool)

(assert (=> d!2275589 m!7993740))

(declare-fun m!7993742 () Bool)

(assert (=> d!2275589 m!7993742))

(assert (=> d!2275589 m!7993680))

(assert (=> b!7327740 d!2275589))

(declare-fun d!2275591 () Bool)

(assert (=> d!2275591 (forall!17858 (++!16833 (exprs!8449 ct1!256) (exprs!8449 ct2!352)) lambda!454252)))

(declare-fun lt!2606703 () Unit!164983)

(assert (=> d!2275591 (= lt!2606703 (choose!56988 (exprs!8449 ct1!256) (exprs!8449 ct2!352) lambda!454252))))

(assert (=> d!2275591 (forall!17858 (exprs!8449 ct1!256) lambda!454252)))

(assert (=> d!2275591 (= (lemmaConcatPreservesForall!1690 (exprs!8449 ct1!256) (exprs!8449 ct2!352) lambda!454252) lt!2606703)))

(declare-fun bs!1916889 () Bool)

(assert (= bs!1916889 d!2275591))

(assert (=> bs!1916889 m!7993606))

(assert (=> bs!1916889 m!7993606))

(declare-fun m!7993744 () Bool)

(assert (=> bs!1916889 m!7993744))

(declare-fun m!7993746 () Bool)

(assert (=> bs!1916889 m!7993746))

(declare-fun m!7993748 () Bool)

(assert (=> bs!1916889 m!7993748))

(assert (=> b!7327740 d!2275591))

(declare-fun d!2275593 () Bool)

(declare-fun nullableFct!3223 (Regex!19009) Bool)

(assert (=> d!2275593 (= (nullable!8113 (h!77829 (exprs!8449 ct1!256))) (nullableFct!3223 (h!77829 (exprs!8449 ct1!256))))))

(declare-fun bs!1916890 () Bool)

(assert (= bs!1916890 d!2275593))

(declare-fun m!7993750 () Bool)

(assert (=> bs!1916890 m!7993750))

(assert (=> b!7327735 d!2275593))

(declare-fun b!7327865 () Bool)

(declare-fun c!1360330 () Bool)

(declare-fun e!4387782 () Bool)

(assert (=> b!7327865 (= c!1360330 e!4387782)))

(declare-fun res!2961738 () Bool)

(assert (=> b!7327865 (=> (not res!2961738) (not e!4387782))))

(assert (=> b!7327865 (= res!2961738 ((_ is Concat!27854) (h!77829 (exprs!8449 ct1!256))))))

(declare-fun e!4387785 () (InoxSet Context!15898))

(declare-fun e!4387781 () (InoxSet Context!15898))

(assert (=> b!7327865 (= e!4387785 e!4387781)))

(declare-fun b!7327866 () Bool)

(declare-fun e!4387784 () (InoxSet Context!15898))

(declare-fun call!667139 () (InoxSet Context!15898))

(assert (=> b!7327866 (= e!4387784 call!667139)))

(declare-fun bm!667131 () Bool)

(declare-fun call!667137 () (InoxSet Context!15898))

(assert (=> bm!667131 (= call!667139 call!667137)))

(declare-fun b!7327867 () Bool)

(declare-fun e!4387780 () (InoxSet Context!15898))

(assert (=> b!7327867 (= e!4387780 e!4387785)))

(declare-fun c!1360329 () Bool)

(assert (=> b!7327867 (= c!1360329 ((_ is Union!19009) (h!77829 (exprs!8449 ct1!256))))))

(declare-fun bm!667132 () Bool)

(declare-fun c!1360328 () Bool)

(declare-fun call!667140 () List!71505)

(declare-fun call!667138 () (InoxSet Context!15898))

(assert (=> bm!667132 (= call!667138 (derivationStepZipperDown!2840 (ite c!1360329 (regOne!38531 (h!77829 (exprs!8449 ct1!256))) (ite c!1360330 (regTwo!38530 (h!77829 (exprs!8449 ct1!256))) (ite c!1360328 (regOne!38530 (h!77829 (exprs!8449 ct1!256))) (reg!19338 (h!77829 (exprs!8449 ct1!256)))))) (ite (or c!1360329 c!1360330) lt!2606669 (Context!15899 call!667140)) c!10305))))

(declare-fun bm!667133 () Bool)

(declare-fun call!667141 () List!71505)

(assert (=> bm!667133 (= call!667140 call!667141)))

(declare-fun b!7327868 () Bool)

(assert (=> b!7327868 (= e!4387784 ((as const (Array Context!15898 Bool)) false))))

(declare-fun call!667136 () (InoxSet Context!15898))

(declare-fun bm!667134 () Bool)

(assert (=> bm!667134 (= call!667136 (derivationStepZipperDown!2840 (ite c!1360329 (regTwo!38531 (h!77829 (exprs!8449 ct1!256))) (regOne!38530 (h!77829 (exprs!8449 ct1!256)))) (ite c!1360329 lt!2606669 (Context!15899 call!667141)) c!10305))))

(declare-fun bm!667135 () Bool)

(assert (=> bm!667135 (= call!667137 call!667138)))

(declare-fun bm!667136 () Bool)

(assert (=> bm!667136 (= call!667141 ($colon$colon!3039 (exprs!8449 lt!2606669) (ite (or c!1360330 c!1360328) (regTwo!38530 (h!77829 (exprs!8449 ct1!256))) (h!77829 (exprs!8449 ct1!256)))))))

(declare-fun b!7327870 () Bool)

(assert (=> b!7327870 (= e!4387785 ((_ map or) call!667138 call!667136))))

(declare-fun b!7327871 () Bool)

(declare-fun e!4387783 () (InoxSet Context!15898))

(assert (=> b!7327871 (= e!4387783 call!667139)))

(declare-fun b!7327872 () Bool)

(assert (=> b!7327872 (= e!4387781 e!4387783)))

(assert (=> b!7327872 (= c!1360328 ((_ is Concat!27854) (h!77829 (exprs!8449 ct1!256))))))

(declare-fun b!7327873 () Bool)

(declare-fun c!1360332 () Bool)

(assert (=> b!7327873 (= c!1360332 ((_ is Star!19009) (h!77829 (exprs!8449 ct1!256))))))

(assert (=> b!7327873 (= e!4387783 e!4387784)))

(declare-fun b!7327874 () Bool)

(assert (=> b!7327874 (= e!4387780 (store ((as const (Array Context!15898 Bool)) false) lt!2606669 true))))

(declare-fun b!7327875 () Bool)

(assert (=> b!7327875 (= e!4387782 (nullable!8113 (regOne!38530 (h!77829 (exprs!8449 ct1!256)))))))

(declare-fun b!7327869 () Bool)

(assert (=> b!7327869 (= e!4387781 ((_ map or) call!667136 call!667137))))

(declare-fun d!2275595 () Bool)

(declare-fun c!1360331 () Bool)

(assert (=> d!2275595 (= c!1360331 (and ((_ is ElementMatch!19009) (h!77829 (exprs!8449 ct1!256))) (= (c!1360282 (h!77829 (exprs!8449 ct1!256))) c!10305)))))

(assert (=> d!2275595 (= (derivationStepZipperDown!2840 (h!77829 (exprs!8449 ct1!256)) lt!2606669 c!10305) e!4387780)))

(assert (= (and d!2275595 c!1360331) b!7327874))

(assert (= (and d!2275595 (not c!1360331)) b!7327867))

(assert (= (and b!7327867 c!1360329) b!7327870))

(assert (= (and b!7327867 (not c!1360329)) b!7327865))

(assert (= (and b!7327865 res!2961738) b!7327875))

(assert (= (and b!7327865 c!1360330) b!7327869))

(assert (= (and b!7327865 (not c!1360330)) b!7327872))

(assert (= (and b!7327872 c!1360328) b!7327871))

(assert (= (and b!7327872 (not c!1360328)) b!7327873))

(assert (= (and b!7327873 c!1360332) b!7327866))

(assert (= (and b!7327873 (not c!1360332)) b!7327868))

(assert (= (or b!7327871 b!7327866) bm!667133))

(assert (= (or b!7327871 b!7327866) bm!667131))

(assert (= (or b!7327869 bm!667131) bm!667135))

(assert (= (or b!7327869 bm!667133) bm!667136))

(assert (= (or b!7327870 b!7327869) bm!667134))

(assert (= (or b!7327870 bm!667135) bm!667132))

(assert (=> b!7327875 m!7993646))

(declare-fun m!7993766 () Bool)

(assert (=> bm!667134 m!7993766))

(declare-fun m!7993768 () Bool)

(assert (=> bm!667136 m!7993768))

(declare-fun m!7993770 () Bool)

(assert (=> b!7327874 m!7993770))

(declare-fun m!7993772 () Bool)

(assert (=> bm!667132 m!7993772))

(assert (=> b!7327735 d!2275595))

(declare-fun d!2275601 () Bool)

(assert (=> d!2275601 (= (tail!14698 (exprs!8449 ct1!256)) (t!385892 (exprs!8449 ct1!256)))))

(assert (=> b!7327735 d!2275601))

(declare-fun b!7327909 () Bool)

(declare-fun e!4387807 () (InoxSet Context!15898))

(assert (=> b!7327909 (= e!4387807 ((as const (Array Context!15898 Bool)) false))))

(declare-fun b!7327910 () Bool)

(declare-fun e!4387808 () (InoxSet Context!15898))

(assert (=> b!7327910 (= e!4387808 e!4387807)))

(declare-fun c!1360346 () Bool)

(assert (=> b!7327910 (= c!1360346 ((_ is Cons!71381) (exprs!8449 ct1!256)))))

(declare-fun b!7327911 () Bool)

(declare-fun call!667150 () (InoxSet Context!15898))

(assert (=> b!7327911 (= e!4387808 ((_ map or) call!667150 (derivationStepZipperUp!2689 (Context!15899 (t!385892 (exprs!8449 ct1!256))) c!10305)))))

(declare-fun b!7327912 () Bool)

(declare-fun e!4387806 () Bool)

(assert (=> b!7327912 (= e!4387806 (nullable!8113 (h!77829 (exprs!8449 ct1!256))))))

(declare-fun b!7327913 () Bool)

(assert (=> b!7327913 (= e!4387807 call!667150)))

(declare-fun d!2275603 () Bool)

(declare-fun c!1360345 () Bool)

(assert (=> d!2275603 (= c!1360345 e!4387806)))

(declare-fun res!2961748 () Bool)

(assert (=> d!2275603 (=> (not res!2961748) (not e!4387806))))

(assert (=> d!2275603 (= res!2961748 ((_ is Cons!71381) (exprs!8449 ct1!256)))))

(assert (=> d!2275603 (= (derivationStepZipperUp!2689 ct1!256 c!10305) e!4387808)))

(declare-fun bm!667145 () Bool)

(assert (=> bm!667145 (= call!667150 (derivationStepZipperDown!2840 (h!77829 (exprs!8449 ct1!256)) (Context!15899 (t!385892 (exprs!8449 ct1!256))) c!10305))))

(assert (= (and d!2275603 res!2961748) b!7327912))

(assert (= (and d!2275603 c!1360345) b!7327911))

(assert (= (and d!2275603 (not c!1360345)) b!7327910))

(assert (= (and b!7327910 c!1360346) b!7327913))

(assert (= (and b!7327910 (not c!1360346)) b!7327909))

(assert (= (or b!7327911 b!7327913) bm!667145))

(declare-fun m!7993802 () Bool)

(assert (=> b!7327911 m!7993802))

(assert (=> b!7327912 m!7993622))

(declare-fun m!7993804 () Bool)

(assert (=> bm!667145 m!7993804))

(assert (=> start!715342 d!2275603))

(declare-fun bs!1916892 () Bool)

(declare-fun d!2275613 () Bool)

(assert (= bs!1916892 (and d!2275613 b!7327740)))

(declare-fun lambda!454265 () Int)

(assert (=> bs!1916892 (= lambda!454265 lambda!454252)))

(declare-fun bs!1916893 () Bool)

(assert (= bs!1916893 (and d!2275613 d!2275573)))

(assert (=> bs!1916893 (= lambda!454265 lambda!454262)))

(assert (=> d!2275613 (= (inv!90862 cWitness!35) (forall!17858 (exprs!8449 cWitness!35) lambda!454265))))

(declare-fun bs!1916894 () Bool)

(assert (= bs!1916894 d!2275613))

(declare-fun m!7993806 () Bool)

(assert (=> bs!1916894 m!7993806))

(assert (=> start!715342 d!2275613))

(declare-fun bs!1916895 () Bool)

(declare-fun d!2275615 () Bool)

(assert (= bs!1916895 (and d!2275615 b!7327740)))

(declare-fun lambda!454266 () Int)

(assert (=> bs!1916895 (= lambda!454266 lambda!454252)))

(declare-fun bs!1916896 () Bool)

(assert (= bs!1916896 (and d!2275615 d!2275573)))

(assert (=> bs!1916896 (= lambda!454266 lambda!454262)))

(declare-fun bs!1916897 () Bool)

(assert (= bs!1916897 (and d!2275615 d!2275613)))

(assert (=> bs!1916897 (= lambda!454266 lambda!454265)))

(assert (=> d!2275615 (= (inv!90862 ct1!256) (forall!17858 (exprs!8449 ct1!256) lambda!454266))))

(declare-fun bs!1916898 () Bool)

(assert (= bs!1916898 d!2275615))

(declare-fun m!7993810 () Bool)

(assert (=> bs!1916898 m!7993810))

(assert (=> start!715342 d!2275615))

(declare-fun bs!1916899 () Bool)

(declare-fun d!2275619 () Bool)

(assert (= bs!1916899 (and d!2275619 b!7327740)))

(declare-fun lambda!454267 () Int)

(assert (=> bs!1916899 (= lambda!454267 lambda!454252)))

(declare-fun bs!1916900 () Bool)

(assert (= bs!1916900 (and d!2275619 d!2275573)))

(assert (=> bs!1916900 (= lambda!454267 lambda!454262)))

(declare-fun bs!1916901 () Bool)

(assert (= bs!1916901 (and d!2275619 d!2275613)))

(assert (=> bs!1916901 (= lambda!454267 lambda!454265)))

(declare-fun bs!1916902 () Bool)

(assert (= bs!1916902 (and d!2275619 d!2275615)))

(assert (=> bs!1916902 (= lambda!454267 lambda!454266)))

(assert (=> d!2275619 (= (inv!90862 ct2!352) (forall!17858 (exprs!8449 ct2!352) lambda!454267))))

(declare-fun bs!1916903 () Bool)

(assert (= bs!1916903 d!2275619))

(declare-fun m!7993814 () Bool)

(assert (=> bs!1916903 m!7993814))

(assert (=> start!715342 d!2275619))

(declare-fun b!7327927 () Bool)

(declare-fun e!4387816 () Bool)

(declare-fun tp!2080808 () Bool)

(declare-fun tp!2080809 () Bool)

(assert (=> b!7327927 (= e!4387816 (and tp!2080808 tp!2080809))))

(assert (=> b!7327732 (= tp!2080802 e!4387816)))

(assert (= (and b!7327732 ((_ is Cons!71381) (exprs!8449 ct1!256))) b!7327927))

(declare-fun b!7327928 () Bool)

(declare-fun e!4387817 () Bool)

(declare-fun tp!2080810 () Bool)

(declare-fun tp!2080811 () Bool)

(assert (=> b!7327928 (= e!4387817 (and tp!2080810 tp!2080811))))

(assert (=> b!7327733 (= tp!2080801 e!4387817)))

(assert (= (and b!7327733 ((_ is Cons!71381) (exprs!8449 ct2!352))) b!7327928))

(declare-fun b!7327929 () Bool)

(declare-fun e!4387818 () Bool)

(declare-fun tp!2080812 () Bool)

(declare-fun tp!2080813 () Bool)

(assert (=> b!7327929 (= e!4387818 (and tp!2080812 tp!2080813))))

(assert (=> b!7327736 (= tp!2080803 e!4387818)))

(assert (= (and b!7327736 ((_ is Cons!71381) (exprs!8449 cWitness!35))) b!7327929))

(declare-fun b_lambda!283435 () Bool)

(assert (= b_lambda!283427 (or b!7327740 b_lambda!283435)))

(declare-fun bs!1916905 () Bool)

(declare-fun d!2275621 () Bool)

(assert (= bs!1916905 (and d!2275621 b!7327740)))

(assert (=> bs!1916905 (= (dynLambda!29415 lambda!454252 (h!77829 (exprs!8449 cWitness!35))) (validRegex!9644 (h!77829 (exprs!8449 cWitness!35))))))

(declare-fun m!7993816 () Bool)

(assert (=> bs!1916905 m!7993816))

(assert (=> b!7327804 d!2275621))

(declare-fun b_lambda!283437 () Bool)

(assert (= b_lambda!283431 (or b!7327740 b_lambda!283437)))

(declare-fun bs!1916907 () Bool)

(declare-fun d!2275623 () Bool)

(assert (= bs!1916907 (and d!2275623 b!7327740)))

(assert (=> bs!1916907 (= (dynLambda!29415 lambda!454252 (h!77829 (exprs!8449 ct2!352))) (validRegex!9644 (h!77829 (exprs!8449 ct2!352))))))

(declare-fun m!7993818 () Bool)

(assert (=> bs!1916907 m!7993818))

(assert (=> b!7327851 d!2275623))

(check-sat (not b!7327912) (not bm!667104) tp_is_empty!48263 (not b!7327805) (not b!7327927) (not bs!1916907) (not b!7327823) (not b_lambda!283435) (not bm!667102) (not bm!667136) (not b!7327929) (not d!2275613) (not d!2275593) (not d!2275571) (not b!7327774) (not bm!667108) (not b!7327824) (not bm!667106) (not d!2275551) (not b!7327828) (not d!2275615) (not b!7327875) (not d!2275591) (not b!7327911) (not b!7327928) (not b!7327859) (not bm!667145) (not d!2275569) (not d!2275573) (not d!2275619) (not d!2275589) (not b_lambda!283437) (not bm!667110) (not b!7327785) (not bm!667132) (not b!7327852) (not d!2275581) (not bs!1916905) (not bm!667112) (not bm!667134) (not b!7327858) (not b!7327827))
(check-sat)
