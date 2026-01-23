; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!710394 () Bool)

(assert start!710394)

(declare-fun b!7274940 () Bool)

(assert (=> b!7274940 true))

(declare-fun b!7274936 () Bool)

(declare-fun res!2948975 () Bool)

(declare-fun e!4362545 () Bool)

(assert (=> b!7274936 (=> res!2948975 e!4362545)))

(declare-datatypes ((C!37948 0))(
  ( (C!37949 (val!28922 Int)) )
))
(declare-datatypes ((Regex!18837 0))(
  ( (ElementMatch!18837 (c!1354567 C!37948)) (Concat!27682 (regOne!38186 Regex!18837) (regTwo!38186 Regex!18837)) (EmptyExpr!18837) (Star!18837 (reg!19166 Regex!18837)) (EmptyLang!18837) (Union!18837 (regOne!38187 Regex!18837) (regTwo!38187 Regex!18837)) )
))
(declare-datatypes ((List!70989 0))(
  ( (Nil!70865) (Cons!70865 (h!77313 Regex!18837) (t!385061 List!70989)) )
))
(declare-datatypes ((Context!15554 0))(
  ( (Context!15555 (exprs!8277 List!70989)) )
))
(declare-fun ct1!250 () Context!15554)

(get-info :version)

(assert (=> b!7274936 (= res!2948975 (not ((_ is Cons!70865) (exprs!8277 ct1!250))))))

(declare-fun b!7274937 () Bool)

(declare-fun res!2948971 () Bool)

(assert (=> b!7274937 (=> res!2948971 e!4362545)))

(declare-fun isEmpty!40757 (List!70989) Bool)

(assert (=> b!7274937 (= res!2948971 (isEmpty!40757 (exprs!8277 ct1!250)))))

(declare-fun b!7274938 () Bool)

(declare-fun e!4362541 () Bool)

(declare-fun tp_is_empty!47139 () Bool)

(declare-fun tp!2041946 () Bool)

(assert (=> b!7274938 (= e!4362541 (and tp_is_empty!47139 tp!2041946))))

(declare-fun b!7274939 () Bool)

(declare-fun e!4362544 () Bool)

(declare-fun tp!2041945 () Bool)

(assert (=> b!7274939 (= e!4362544 tp!2041945)))

(declare-fun res!2948972 () Bool)

(declare-fun e!4362542 () Bool)

(assert (=> start!710394 (=> (not res!2948972) (not e!4362542))))

(declare-fun ct2!346 () Context!15554)

(declare-datatypes ((List!70990 0))(
  ( (Nil!70866) (Cons!70866 (h!77314 C!37948) (t!385062 List!70990)) )
))
(declare-fun s!7854 () List!70990)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3741 ((InoxSet Context!15554) List!70990) Bool)

(assert (=> start!710394 (= res!2948972 (matchZipper!3741 (store ((as const (Array Context!15554 Bool)) false) ct2!346 true) s!7854))))

(assert (=> start!710394 e!4362542))

(declare-fun e!4362543 () Bool)

(declare-fun inv!90102 (Context!15554) Bool)

(assert (=> start!710394 (and (inv!90102 ct2!346) e!4362543)))

(assert (=> start!710394 e!4362541))

(assert (=> start!710394 (and (inv!90102 ct1!250) e!4362544)))

(assert (=> b!7274940 (= e!4362542 (not e!4362545))))

(declare-fun res!2948970 () Bool)

(assert (=> b!7274940 (=> res!2948970 e!4362545)))

(declare-fun lt!2596660 () (InoxSet Context!15554))

(declare-fun lt!2596655 () (InoxSet Context!15554))

(declare-fun derivationStepZipper!3573 ((InoxSet Context!15554) C!37948) (InoxSet Context!15554))

(assert (=> b!7274940 (= res!2948970 (not (= lt!2596660 (derivationStepZipper!3573 lt!2596655 (h!77314 s!7854)))))))

(declare-fun lambda!449644 () Int)

(declare-datatypes ((Unit!164280 0))(
  ( (Unit!164281) )
))
(declare-fun lt!2596654 () Unit!164280)

(declare-fun lemmaConcatPreservesForall!1588 (List!70989 List!70989 Int) Unit!164280)

(assert (=> b!7274940 (= lt!2596654 (lemmaConcatPreservesForall!1588 (exprs!8277 ct1!250) (exprs!8277 ct2!346) lambda!449644))))

(declare-fun lambda!449645 () Int)

(declare-fun lt!2596659 () Context!15554)

(declare-fun flatMap!2936 ((InoxSet Context!15554) Int) (InoxSet Context!15554))

(declare-fun derivationStepZipperUp!2593 (Context!15554 C!37948) (InoxSet Context!15554))

(assert (=> b!7274940 (= (flatMap!2936 lt!2596655 lambda!449645) (derivationStepZipperUp!2593 lt!2596659 (h!77314 s!7854)))))

(declare-fun lt!2596663 () Unit!164280)

(declare-fun lemmaFlatMapOnSingletonSet!2336 ((InoxSet Context!15554) Context!15554 Int) Unit!164280)

(assert (=> b!7274940 (= lt!2596663 (lemmaFlatMapOnSingletonSet!2336 lt!2596655 lt!2596659 lambda!449645))))

(assert (=> b!7274940 (= lt!2596655 (store ((as const (Array Context!15554 Bool)) false) lt!2596659 true))))

(declare-fun lt!2596665 () Unit!164280)

(assert (=> b!7274940 (= lt!2596665 (lemmaConcatPreservesForall!1588 (exprs!8277 ct1!250) (exprs!8277 ct2!346) lambda!449644))))

(declare-fun lt!2596656 () Unit!164280)

(assert (=> b!7274940 (= lt!2596656 (lemmaConcatPreservesForall!1588 (exprs!8277 ct1!250) (exprs!8277 ct2!346) lambda!449644))))

(declare-fun lt!2596658 () (InoxSet Context!15554))

(assert (=> b!7274940 (= (flatMap!2936 lt!2596658 lambda!449645) (derivationStepZipperUp!2593 ct1!250 (h!77314 s!7854)))))

(declare-fun lt!2596661 () Unit!164280)

(assert (=> b!7274940 (= lt!2596661 (lemmaFlatMapOnSingletonSet!2336 lt!2596658 ct1!250 lambda!449645))))

(assert (=> b!7274940 (= lt!2596658 (store ((as const (Array Context!15554 Bool)) false) ct1!250 true))))

(assert (=> b!7274940 (= lt!2596660 (derivationStepZipperUp!2593 lt!2596659 (h!77314 s!7854)))))

(declare-fun ++!16731 (List!70989 List!70989) List!70989)

(assert (=> b!7274940 (= lt!2596659 (Context!15555 (++!16731 (exprs!8277 ct1!250) (exprs!8277 ct2!346))))))

(declare-fun lt!2596664 () Unit!164280)

(assert (=> b!7274940 (= lt!2596664 (lemmaConcatPreservesForall!1588 (exprs!8277 ct1!250) (exprs!8277 ct2!346) lambda!449644))))

(declare-fun b!7274941 () Bool)

(declare-fun e!4362540 () Bool)

(assert (=> b!7274941 (= e!4362545 e!4362540)))

(declare-fun res!2948973 () Bool)

(assert (=> b!7274941 (=> res!2948973 e!4362540)))

(declare-fun nullable!8020 (Regex!18837) Bool)

(assert (=> b!7274941 (= res!2948973 (not (nullable!8020 (h!77313 (exprs!8277 ct1!250)))))))

(declare-fun lt!2596657 () (InoxSet Context!15554))

(assert (=> b!7274941 (= lt!2596657 (derivationStepZipperUp!2593 ct1!250 (h!77314 s!7854)))))

(declare-fun lt!2596662 () Context!15554)

(declare-fun tail!14542 (List!70989) List!70989)

(assert (=> b!7274941 (= lt!2596662 (Context!15555 (tail!14542 (exprs!8277 ct1!250))))))

(declare-fun b!7274942 () Bool)

(declare-fun res!2948974 () Bool)

(assert (=> b!7274942 (=> (not res!2948974) (not e!4362542))))

(assert (=> b!7274942 (= res!2948974 ((_ is Cons!70866) s!7854))))

(declare-fun b!7274943 () Bool)

(declare-fun tp!2041944 () Bool)

(assert (=> b!7274943 (= e!4362543 tp!2041944)))

(declare-fun b!7274944 () Bool)

(declare-fun derivationStepZipperDown!2751 (Regex!18837 Context!15554 C!37948) (InoxSet Context!15554))

(assert (=> b!7274944 (= e!4362540 (= lt!2596657 ((_ map or) (derivationStepZipperDown!2751 (h!77313 (exprs!8277 ct1!250)) lt!2596662 (h!77314 s!7854)) (derivationStepZipperUp!2593 lt!2596662 (h!77314 s!7854)))))))

(declare-fun b!7274945 () Bool)

(declare-fun res!2948969 () Bool)

(assert (=> b!7274945 (=> (not res!2948969) (not e!4362542))))

(declare-fun nullableContext!327 (Context!15554) Bool)

(assert (=> b!7274945 (= res!2948969 (nullableContext!327 ct1!250))))

(assert (= (and start!710394 res!2948972) b!7274945))

(assert (= (and b!7274945 res!2948969) b!7274942))

(assert (= (and b!7274942 res!2948974) b!7274940))

(assert (= (and b!7274940 (not res!2948970)) b!7274936))

(assert (= (and b!7274936 (not res!2948975)) b!7274937))

(assert (= (and b!7274937 (not res!2948971)) b!7274941))

(assert (= (and b!7274941 (not res!2948973)) b!7274944))

(assert (= start!710394 b!7274943))

(assert (= (and start!710394 ((_ is Cons!70866) s!7854)) b!7274938))

(assert (= start!710394 b!7274939))

(declare-fun m!7961656 () Bool)

(assert (=> b!7274945 m!7961656))

(declare-fun m!7961658 () Bool)

(assert (=> start!710394 m!7961658))

(assert (=> start!710394 m!7961658))

(declare-fun m!7961660 () Bool)

(assert (=> start!710394 m!7961660))

(declare-fun m!7961662 () Bool)

(assert (=> start!710394 m!7961662))

(declare-fun m!7961664 () Bool)

(assert (=> start!710394 m!7961664))

(declare-fun m!7961666 () Bool)

(assert (=> b!7274940 m!7961666))

(declare-fun m!7961668 () Bool)

(assert (=> b!7274940 m!7961668))

(declare-fun m!7961670 () Bool)

(assert (=> b!7274940 m!7961670))

(declare-fun m!7961672 () Bool)

(assert (=> b!7274940 m!7961672))

(declare-fun m!7961674 () Bool)

(assert (=> b!7274940 m!7961674))

(assert (=> b!7274940 m!7961674))

(declare-fun m!7961676 () Bool)

(assert (=> b!7274940 m!7961676))

(declare-fun m!7961678 () Bool)

(assert (=> b!7274940 m!7961678))

(declare-fun m!7961680 () Bool)

(assert (=> b!7274940 m!7961680))

(declare-fun m!7961682 () Bool)

(assert (=> b!7274940 m!7961682))

(declare-fun m!7961684 () Bool)

(assert (=> b!7274940 m!7961684))

(assert (=> b!7274940 m!7961674))

(declare-fun m!7961686 () Bool)

(assert (=> b!7274940 m!7961686))

(assert (=> b!7274940 m!7961674))

(declare-fun m!7961688 () Bool)

(assert (=> b!7274937 m!7961688))

(declare-fun m!7961690 () Bool)

(assert (=> b!7274944 m!7961690))

(declare-fun m!7961692 () Bool)

(assert (=> b!7274944 m!7961692))

(declare-fun m!7961694 () Bool)

(assert (=> b!7274941 m!7961694))

(assert (=> b!7274941 m!7961682))

(declare-fun m!7961696 () Bool)

(assert (=> b!7274941 m!7961696))

(check-sat (not b!7274945) tp_is_empty!47139 (not b!7274937) (not start!710394) (not b!7274938) (not b!7274943) (not b!7274944) (not b!7274939) (not b!7274941) (not b!7274940))
(check-sat)
(get-model)

(declare-fun b!7275004 () Bool)

(declare-fun e!4362576 () (InoxSet Context!15554))

(assert (=> b!7275004 (= e!4362576 (store ((as const (Array Context!15554 Bool)) false) lt!2596662 true))))

(declare-fun b!7275005 () Bool)

(declare-fun e!4362580 () (InoxSet Context!15554))

(declare-fun e!4362579 () (InoxSet Context!15554))

(assert (=> b!7275005 (= e!4362580 e!4362579)))

(declare-fun c!1354591 () Bool)

(assert (=> b!7275005 (= c!1354591 ((_ is Concat!27682) (h!77313 (exprs!8277 ct1!250))))))

(declare-fun b!7275006 () Bool)

(declare-fun e!4362577 () (InoxSet Context!15554))

(declare-fun call!663677 () (InoxSet Context!15554))

(declare-fun call!663681 () (InoxSet Context!15554))

(assert (=> b!7275006 (= e!4362577 ((_ map or) call!663677 call!663681))))

(declare-fun b!7275007 () Bool)

(assert (=> b!7275007 (= e!4362576 e!4362577)))

(declare-fun c!1354593 () Bool)

(assert (=> b!7275007 (= c!1354593 ((_ is Union!18837) (h!77313 (exprs!8277 ct1!250))))))

(declare-fun b!7275008 () Bool)

(declare-fun c!1354595 () Bool)

(declare-fun e!4362578 () Bool)

(assert (=> b!7275008 (= c!1354595 e!4362578)))

(declare-fun res!2948988 () Bool)

(assert (=> b!7275008 (=> (not res!2948988) (not e!4362578))))

(assert (=> b!7275008 (= res!2948988 ((_ is Concat!27682) (h!77313 (exprs!8277 ct1!250))))))

(assert (=> b!7275008 (= e!4362577 e!4362580)))

(declare-fun b!7275009 () Bool)

(declare-fun call!663679 () (InoxSet Context!15554))

(assert (=> b!7275009 (= e!4362580 ((_ map or) call!663681 call!663679))))

(declare-fun b!7275010 () Bool)

(declare-fun e!4362581 () (InoxSet Context!15554))

(declare-fun call!663678 () (InoxSet Context!15554))

(assert (=> b!7275010 (= e!4362581 call!663678)))

(declare-fun call!663680 () List!70989)

(declare-fun bm!663671 () Bool)

(assert (=> bm!663671 (= call!663681 (derivationStepZipperDown!2751 (ite c!1354593 (regTwo!38187 (h!77313 (exprs!8277 ct1!250))) (regOne!38186 (h!77313 (exprs!8277 ct1!250)))) (ite c!1354593 lt!2596662 (Context!15555 call!663680)) (h!77314 s!7854)))))

(declare-fun d!2264365 () Bool)

(declare-fun c!1354592 () Bool)

(assert (=> d!2264365 (= c!1354592 (and ((_ is ElementMatch!18837) (h!77313 (exprs!8277 ct1!250))) (= (c!1354567 (h!77313 (exprs!8277 ct1!250))) (h!77314 s!7854))))))

(assert (=> d!2264365 (= (derivationStepZipperDown!2751 (h!77313 (exprs!8277 ct1!250)) lt!2596662 (h!77314 s!7854)) e!4362576)))

(declare-fun b!7275011 () Bool)

(assert (=> b!7275011 (= e!4362578 (nullable!8020 (regOne!38186 (h!77313 (exprs!8277 ct1!250)))))))

(declare-fun bm!663672 () Bool)

(assert (=> bm!663672 (= call!663679 call!663677)))

(declare-fun b!7275012 () Bool)

(assert (=> b!7275012 (= e!4362581 ((as const (Array Context!15554 Bool)) false))))

(declare-fun bm!663673 () Bool)

(declare-fun $colon$colon!2982 (List!70989 Regex!18837) List!70989)

(assert (=> bm!663673 (= call!663680 ($colon$colon!2982 (exprs!8277 lt!2596662) (ite (or c!1354595 c!1354591) (regTwo!38186 (h!77313 (exprs!8277 ct1!250))) (h!77313 (exprs!8277 ct1!250)))))))

(declare-fun bm!663674 () Bool)

(declare-fun call!663676 () List!70989)

(assert (=> bm!663674 (= call!663676 call!663680)))

(declare-fun b!7275013 () Bool)

(declare-fun c!1354594 () Bool)

(assert (=> b!7275013 (= c!1354594 ((_ is Star!18837) (h!77313 (exprs!8277 ct1!250))))))

(assert (=> b!7275013 (= e!4362579 e!4362581)))

(declare-fun bm!663675 () Bool)

(assert (=> bm!663675 (= call!663678 call!663679)))

(declare-fun bm!663676 () Bool)

(assert (=> bm!663676 (= call!663677 (derivationStepZipperDown!2751 (ite c!1354593 (regOne!38187 (h!77313 (exprs!8277 ct1!250))) (ite c!1354595 (regTwo!38186 (h!77313 (exprs!8277 ct1!250))) (ite c!1354591 (regOne!38186 (h!77313 (exprs!8277 ct1!250))) (reg!19166 (h!77313 (exprs!8277 ct1!250)))))) (ite (or c!1354593 c!1354595) lt!2596662 (Context!15555 call!663676)) (h!77314 s!7854)))))

(declare-fun b!7275014 () Bool)

(assert (=> b!7275014 (= e!4362579 call!663678)))

(assert (= (and d!2264365 c!1354592) b!7275004))

(assert (= (and d!2264365 (not c!1354592)) b!7275007))

(assert (= (and b!7275007 c!1354593) b!7275006))

(assert (= (and b!7275007 (not c!1354593)) b!7275008))

(assert (= (and b!7275008 res!2948988) b!7275011))

(assert (= (and b!7275008 c!1354595) b!7275009))

(assert (= (and b!7275008 (not c!1354595)) b!7275005))

(assert (= (and b!7275005 c!1354591) b!7275014))

(assert (= (and b!7275005 (not c!1354591)) b!7275013))

(assert (= (and b!7275013 c!1354594) b!7275010))

(assert (= (and b!7275013 (not c!1354594)) b!7275012))

(assert (= (or b!7275014 b!7275010) bm!663674))

(assert (= (or b!7275014 b!7275010) bm!663675))

(assert (= (or b!7275009 bm!663674) bm!663673))

(assert (= (or b!7275009 bm!663675) bm!663672))

(assert (= (or b!7275006 bm!663672) bm!663676))

(assert (= (or b!7275006 b!7275009) bm!663671))

(declare-fun m!7961744 () Bool)

(assert (=> b!7275004 m!7961744))

(declare-fun m!7961746 () Bool)

(assert (=> bm!663673 m!7961746))

(declare-fun m!7961748 () Bool)

(assert (=> bm!663671 m!7961748))

(declare-fun m!7961750 () Bool)

(assert (=> b!7275011 m!7961750))

(declare-fun m!7961752 () Bool)

(assert (=> bm!663676 m!7961752))

(assert (=> b!7274944 d!2264365))

(declare-fun b!7275031 () Bool)

(declare-fun e!4362592 () (InoxSet Context!15554))

(declare-fun call!663684 () (InoxSet Context!15554))

(assert (=> b!7275031 (= e!4362592 call!663684)))

(declare-fun bm!663679 () Bool)

(assert (=> bm!663679 (= call!663684 (derivationStepZipperDown!2751 (h!77313 (exprs!8277 lt!2596662)) (Context!15555 (t!385061 (exprs!8277 lt!2596662))) (h!77314 s!7854)))))

(declare-fun b!7275032 () Bool)

(declare-fun e!4362591 () (InoxSet Context!15554))

(assert (=> b!7275032 (= e!4362591 e!4362592)))

(declare-fun c!1354604 () Bool)

(assert (=> b!7275032 (= c!1354604 ((_ is Cons!70865) (exprs!8277 lt!2596662)))))

(declare-fun b!7275033 () Bool)

(assert (=> b!7275033 (= e!4362591 ((_ map or) call!663684 (derivationStepZipperUp!2593 (Context!15555 (t!385061 (exprs!8277 lt!2596662))) (h!77314 s!7854))))))

(declare-fun d!2264385 () Bool)

(declare-fun c!1354603 () Bool)

(declare-fun e!4362593 () Bool)

(assert (=> d!2264385 (= c!1354603 e!4362593)))

(declare-fun res!2948991 () Bool)

(assert (=> d!2264385 (=> (not res!2948991) (not e!4362593))))

(assert (=> d!2264385 (= res!2948991 ((_ is Cons!70865) (exprs!8277 lt!2596662)))))

(assert (=> d!2264385 (= (derivationStepZipperUp!2593 lt!2596662 (h!77314 s!7854)) e!4362591)))

(declare-fun b!7275034 () Bool)

(assert (=> b!7275034 (= e!4362592 ((as const (Array Context!15554 Bool)) false))))

(declare-fun b!7275035 () Bool)

(assert (=> b!7275035 (= e!4362593 (nullable!8020 (h!77313 (exprs!8277 lt!2596662))))))

(assert (= (and d!2264385 res!2948991) b!7275035))

(assert (= (and d!2264385 c!1354603) b!7275033))

(assert (= (and d!2264385 (not c!1354603)) b!7275032))

(assert (= (and b!7275032 c!1354604) b!7275031))

(assert (= (and b!7275032 (not c!1354604)) b!7275034))

(assert (= (or b!7275033 b!7275031) bm!663679))

(declare-fun m!7961768 () Bool)

(assert (=> bm!663679 m!7961768))

(declare-fun m!7961770 () Bool)

(assert (=> b!7275033 m!7961770))

(declare-fun m!7961772 () Bool)

(assert (=> b!7275035 m!7961772))

(assert (=> b!7274944 d!2264385))

(declare-fun d!2264391 () Bool)

(declare-fun c!1354608 () Bool)

(declare-fun isEmpty!40759 (List!70990) Bool)

(assert (=> d!2264391 (= c!1354608 (isEmpty!40759 s!7854))))

(declare-fun e!4362596 () Bool)

(assert (=> d!2264391 (= (matchZipper!3741 (store ((as const (Array Context!15554 Bool)) false) ct2!346 true) s!7854) e!4362596)))

(declare-fun b!7275040 () Bool)

(declare-fun nullableZipper!3037 ((InoxSet Context!15554)) Bool)

(assert (=> b!7275040 (= e!4362596 (nullableZipper!3037 (store ((as const (Array Context!15554 Bool)) false) ct2!346 true)))))

(declare-fun b!7275041 () Bool)

(declare-fun head!15035 (List!70990) C!37948)

(declare-fun tail!14544 (List!70990) List!70990)

(assert (=> b!7275041 (= e!4362596 (matchZipper!3741 (derivationStepZipper!3573 (store ((as const (Array Context!15554 Bool)) false) ct2!346 true) (head!15035 s!7854)) (tail!14544 s!7854)))))

(assert (= (and d!2264391 c!1354608) b!7275040))

(assert (= (and d!2264391 (not c!1354608)) b!7275041))

(declare-fun m!7961778 () Bool)

(assert (=> d!2264391 m!7961778))

(assert (=> b!7275040 m!7961658))

(declare-fun m!7961780 () Bool)

(assert (=> b!7275040 m!7961780))

(declare-fun m!7961782 () Bool)

(assert (=> b!7275041 m!7961782))

(assert (=> b!7275041 m!7961658))

(assert (=> b!7275041 m!7961782))

(declare-fun m!7961784 () Bool)

(assert (=> b!7275041 m!7961784))

(declare-fun m!7961786 () Bool)

(assert (=> b!7275041 m!7961786))

(assert (=> b!7275041 m!7961784))

(assert (=> b!7275041 m!7961786))

(declare-fun m!7961788 () Bool)

(assert (=> b!7275041 m!7961788))

(assert (=> start!710394 d!2264391))

(declare-fun bs!1911937 () Bool)

(declare-fun d!2264397 () Bool)

(assert (= bs!1911937 (and d!2264397 b!7274940)))

(declare-fun lambda!449658 () Int)

(assert (=> bs!1911937 (= lambda!449658 lambda!449644)))

(declare-fun forall!17662 (List!70989 Int) Bool)

(assert (=> d!2264397 (= (inv!90102 ct2!346) (forall!17662 (exprs!8277 ct2!346) lambda!449658))))

(declare-fun bs!1911938 () Bool)

(assert (= bs!1911938 d!2264397))

(declare-fun m!7961790 () Bool)

(assert (=> bs!1911938 m!7961790))

(assert (=> start!710394 d!2264397))

(declare-fun bs!1911939 () Bool)

(declare-fun d!2264399 () Bool)

(assert (= bs!1911939 (and d!2264399 b!7274940)))

(declare-fun lambda!449659 () Int)

(assert (=> bs!1911939 (= lambda!449659 lambda!449644)))

(declare-fun bs!1911940 () Bool)

(assert (= bs!1911940 (and d!2264399 d!2264397)))

(assert (=> bs!1911940 (= lambda!449659 lambda!449658)))

(assert (=> d!2264399 (= (inv!90102 ct1!250) (forall!17662 (exprs!8277 ct1!250) lambda!449659))))

(declare-fun bs!1911941 () Bool)

(assert (= bs!1911941 d!2264399))

(declare-fun m!7961792 () Bool)

(assert (=> bs!1911941 m!7961792))

(assert (=> start!710394 d!2264399))

(declare-fun d!2264401 () Bool)

(declare-fun dynLambda!28977 (Int Context!15554) (InoxSet Context!15554))

(assert (=> d!2264401 (= (flatMap!2936 lt!2596655 lambda!449645) (dynLambda!28977 lambda!449645 lt!2596659))))

(declare-fun lt!2596678 () Unit!164280)

(declare-fun choose!56475 ((InoxSet Context!15554) Context!15554 Int) Unit!164280)

(assert (=> d!2264401 (= lt!2596678 (choose!56475 lt!2596655 lt!2596659 lambda!449645))))

(assert (=> d!2264401 (= lt!2596655 (store ((as const (Array Context!15554 Bool)) false) lt!2596659 true))))

(assert (=> d!2264401 (= (lemmaFlatMapOnSingletonSet!2336 lt!2596655 lt!2596659 lambda!449645) lt!2596678)))

(declare-fun b_lambda!280785 () Bool)

(assert (=> (not b_lambda!280785) (not d!2264401)))

(declare-fun bs!1911942 () Bool)

(assert (= bs!1911942 d!2264401))

(assert (=> bs!1911942 m!7961670))

(declare-fun m!7961794 () Bool)

(assert (=> bs!1911942 m!7961794))

(declare-fun m!7961796 () Bool)

(assert (=> bs!1911942 m!7961796))

(assert (=> bs!1911942 m!7961666))

(assert (=> b!7274940 d!2264401))

(declare-fun d!2264403 () Bool)

(declare-fun choose!56476 ((InoxSet Context!15554) Int) (InoxSet Context!15554))

(assert (=> d!2264403 (= (flatMap!2936 lt!2596655 lambda!449645) (choose!56476 lt!2596655 lambda!449645))))

(declare-fun bs!1911943 () Bool)

(assert (= bs!1911943 d!2264403))

(declare-fun m!7961798 () Bool)

(assert (=> bs!1911943 m!7961798))

(assert (=> b!7274940 d!2264403))

(declare-fun d!2264405 () Bool)

(assert (=> d!2264405 (forall!17662 (++!16731 (exprs!8277 ct1!250) (exprs!8277 ct2!346)) lambda!449644)))

(declare-fun lt!2596681 () Unit!164280)

(declare-fun choose!56477 (List!70989 List!70989 Int) Unit!164280)

(assert (=> d!2264405 (= lt!2596681 (choose!56477 (exprs!8277 ct1!250) (exprs!8277 ct2!346) lambda!449644))))

(assert (=> d!2264405 (forall!17662 (exprs!8277 ct1!250) lambda!449644)))

(assert (=> d!2264405 (= (lemmaConcatPreservesForall!1588 (exprs!8277 ct1!250) (exprs!8277 ct2!346) lambda!449644) lt!2596681)))

(declare-fun bs!1911944 () Bool)

(assert (= bs!1911944 d!2264405))

(assert (=> bs!1911944 m!7961678))

(assert (=> bs!1911944 m!7961678))

(declare-fun m!7961800 () Bool)

(assert (=> bs!1911944 m!7961800))

(declare-fun m!7961802 () Bool)

(assert (=> bs!1911944 m!7961802))

(declare-fun m!7961804 () Bool)

(assert (=> bs!1911944 m!7961804))

(assert (=> b!7274940 d!2264405))

(declare-fun b!7275064 () Bool)

(declare-fun e!4362610 () (InoxSet Context!15554))

(declare-fun call!663697 () (InoxSet Context!15554))

(assert (=> b!7275064 (= e!4362610 call!663697)))

(declare-fun bm!663692 () Bool)

(assert (=> bm!663692 (= call!663697 (derivationStepZipperDown!2751 (h!77313 (exprs!8277 ct1!250)) (Context!15555 (t!385061 (exprs!8277 ct1!250))) (h!77314 s!7854)))))

(declare-fun b!7275065 () Bool)

(declare-fun e!4362609 () (InoxSet Context!15554))

(assert (=> b!7275065 (= e!4362609 e!4362610)))

(declare-fun c!1354620 () Bool)

(assert (=> b!7275065 (= c!1354620 ((_ is Cons!70865) (exprs!8277 ct1!250)))))

(declare-fun b!7275066 () Bool)

(assert (=> b!7275066 (= e!4362609 ((_ map or) call!663697 (derivationStepZipperUp!2593 (Context!15555 (t!385061 (exprs!8277 ct1!250))) (h!77314 s!7854))))))

(declare-fun d!2264407 () Bool)

(declare-fun c!1354619 () Bool)

(declare-fun e!4362611 () Bool)

(assert (=> d!2264407 (= c!1354619 e!4362611)))

(declare-fun res!2948994 () Bool)

(assert (=> d!2264407 (=> (not res!2948994) (not e!4362611))))

(assert (=> d!2264407 (= res!2948994 ((_ is Cons!70865) (exprs!8277 ct1!250)))))

(assert (=> d!2264407 (= (derivationStepZipperUp!2593 ct1!250 (h!77314 s!7854)) e!4362609)))

(declare-fun b!7275067 () Bool)

(assert (=> b!7275067 (= e!4362610 ((as const (Array Context!15554 Bool)) false))))

(declare-fun b!7275068 () Bool)

(assert (=> b!7275068 (= e!4362611 (nullable!8020 (h!77313 (exprs!8277 ct1!250))))))

(assert (= (and d!2264407 res!2948994) b!7275068))

(assert (= (and d!2264407 c!1354619) b!7275066))

(assert (= (and d!2264407 (not c!1354619)) b!7275065))

(assert (= (and b!7275065 c!1354620) b!7275064))

(assert (= (and b!7275065 (not c!1354620)) b!7275067))

(assert (= (or b!7275066 b!7275064) bm!663692))

(declare-fun m!7961806 () Bool)

(assert (=> bm!663692 m!7961806))

(declare-fun m!7961808 () Bool)

(assert (=> b!7275066 m!7961808))

(assert (=> b!7275068 m!7961694))

(assert (=> b!7274940 d!2264407))

(declare-fun bs!1911945 () Bool)

(declare-fun d!2264409 () Bool)

(assert (= bs!1911945 (and d!2264409 b!7274940)))

(declare-fun lambda!449662 () Int)

(assert (=> bs!1911945 (= lambda!449662 lambda!449645)))

(assert (=> d!2264409 true))

(assert (=> d!2264409 (= (derivationStepZipper!3573 lt!2596655 (h!77314 s!7854)) (flatMap!2936 lt!2596655 lambda!449662))))

(declare-fun bs!1911946 () Bool)

(assert (= bs!1911946 d!2264409))

(declare-fun m!7961826 () Bool)

(assert (=> bs!1911946 m!7961826))

(assert (=> b!7274940 d!2264409))

(declare-fun d!2264413 () Bool)

(declare-fun e!4362633 () Bool)

(assert (=> d!2264413 e!4362633))

(declare-fun res!2949001 () Bool)

(assert (=> d!2264413 (=> (not res!2949001) (not e!4362633))))

(declare-fun lt!2596684 () List!70989)

(declare-fun content!14796 (List!70989) (InoxSet Regex!18837))

(assert (=> d!2264413 (= res!2949001 (= (content!14796 lt!2596684) ((_ map or) (content!14796 (exprs!8277 ct1!250)) (content!14796 (exprs!8277 ct2!346)))))))

(declare-fun e!4362632 () List!70989)

(assert (=> d!2264413 (= lt!2596684 e!4362632)))

(declare-fun c!1354632 () Bool)

(assert (=> d!2264413 (= c!1354632 ((_ is Nil!70865) (exprs!8277 ct1!250)))))

(assert (=> d!2264413 (= (++!16731 (exprs!8277 ct1!250) (exprs!8277 ct2!346)) lt!2596684)))

(declare-fun b!7275107 () Bool)

(assert (=> b!7275107 (= e!4362632 (Cons!70865 (h!77313 (exprs!8277 ct1!250)) (++!16731 (t!385061 (exprs!8277 ct1!250)) (exprs!8277 ct2!346))))))

(declare-fun b!7275109 () Bool)

(assert (=> b!7275109 (= e!4362633 (or (not (= (exprs!8277 ct2!346) Nil!70865)) (= lt!2596684 (exprs!8277 ct1!250))))))

(declare-fun b!7275108 () Bool)

(declare-fun res!2949002 () Bool)

(assert (=> b!7275108 (=> (not res!2949002) (not e!4362633))))

(declare-fun size!41843 (List!70989) Int)

(assert (=> b!7275108 (= res!2949002 (= (size!41843 lt!2596684) (+ (size!41843 (exprs!8277 ct1!250)) (size!41843 (exprs!8277 ct2!346)))))))

(declare-fun b!7275106 () Bool)

(assert (=> b!7275106 (= e!4362632 (exprs!8277 ct2!346))))

(assert (= (and d!2264413 c!1354632) b!7275106))

(assert (= (and d!2264413 (not c!1354632)) b!7275107))

(assert (= (and d!2264413 res!2949001) b!7275108))

(assert (= (and b!7275108 res!2949002) b!7275109))

(declare-fun m!7961828 () Bool)

(assert (=> d!2264413 m!7961828))

(declare-fun m!7961830 () Bool)

(assert (=> d!2264413 m!7961830))

(declare-fun m!7961832 () Bool)

(assert (=> d!2264413 m!7961832))

(declare-fun m!7961834 () Bool)

(assert (=> b!7275107 m!7961834))

(declare-fun m!7961836 () Bool)

(assert (=> b!7275108 m!7961836))

(declare-fun m!7961838 () Bool)

(assert (=> b!7275108 m!7961838))

(declare-fun m!7961840 () Bool)

(assert (=> b!7275108 m!7961840))

(assert (=> b!7274940 d!2264413))

(declare-fun d!2264419 () Bool)

(assert (=> d!2264419 (= (flatMap!2936 lt!2596658 lambda!449645) (choose!56476 lt!2596658 lambda!449645))))

(declare-fun bs!1911949 () Bool)

(assert (= bs!1911949 d!2264419))

(declare-fun m!7961842 () Bool)

(assert (=> bs!1911949 m!7961842))

(assert (=> b!7274940 d!2264419))

(declare-fun d!2264421 () Bool)

(assert (=> d!2264421 (= (flatMap!2936 lt!2596658 lambda!449645) (dynLambda!28977 lambda!449645 ct1!250))))

(declare-fun lt!2596685 () Unit!164280)

(assert (=> d!2264421 (= lt!2596685 (choose!56475 lt!2596658 ct1!250 lambda!449645))))

(assert (=> d!2264421 (= lt!2596658 (store ((as const (Array Context!15554 Bool)) false) ct1!250 true))))

(assert (=> d!2264421 (= (lemmaFlatMapOnSingletonSet!2336 lt!2596658 ct1!250 lambda!449645) lt!2596685)))

(declare-fun b_lambda!280791 () Bool)

(assert (=> (not b_lambda!280791) (not d!2264421)))

(declare-fun bs!1911950 () Bool)

(assert (= bs!1911950 d!2264421))

(assert (=> bs!1911950 m!7961684))

(declare-fun m!7961844 () Bool)

(assert (=> bs!1911950 m!7961844))

(declare-fun m!7961846 () Bool)

(assert (=> bs!1911950 m!7961846))

(assert (=> bs!1911950 m!7961676))

(assert (=> b!7274940 d!2264421))

(declare-fun b!7275110 () Bool)

(declare-fun e!4362635 () (InoxSet Context!15554))

(declare-fun call!663705 () (InoxSet Context!15554))

(assert (=> b!7275110 (= e!4362635 call!663705)))

(declare-fun bm!663700 () Bool)

(assert (=> bm!663700 (= call!663705 (derivationStepZipperDown!2751 (h!77313 (exprs!8277 lt!2596659)) (Context!15555 (t!385061 (exprs!8277 lt!2596659))) (h!77314 s!7854)))))

(declare-fun b!7275111 () Bool)

(declare-fun e!4362634 () (InoxSet Context!15554))

(assert (=> b!7275111 (= e!4362634 e!4362635)))

(declare-fun c!1354634 () Bool)

(assert (=> b!7275111 (= c!1354634 ((_ is Cons!70865) (exprs!8277 lt!2596659)))))

(declare-fun b!7275112 () Bool)

(assert (=> b!7275112 (= e!4362634 ((_ map or) call!663705 (derivationStepZipperUp!2593 (Context!15555 (t!385061 (exprs!8277 lt!2596659))) (h!77314 s!7854))))))

(declare-fun d!2264423 () Bool)

(declare-fun c!1354633 () Bool)

(declare-fun e!4362636 () Bool)

(assert (=> d!2264423 (= c!1354633 e!4362636)))

(declare-fun res!2949003 () Bool)

(assert (=> d!2264423 (=> (not res!2949003) (not e!4362636))))

(assert (=> d!2264423 (= res!2949003 ((_ is Cons!70865) (exprs!8277 lt!2596659)))))

(assert (=> d!2264423 (= (derivationStepZipperUp!2593 lt!2596659 (h!77314 s!7854)) e!4362634)))

(declare-fun b!7275113 () Bool)

(assert (=> b!7275113 (= e!4362635 ((as const (Array Context!15554 Bool)) false))))

(declare-fun b!7275114 () Bool)

(assert (=> b!7275114 (= e!4362636 (nullable!8020 (h!77313 (exprs!8277 lt!2596659))))))

(assert (= (and d!2264423 res!2949003) b!7275114))

(assert (= (and d!2264423 c!1354633) b!7275112))

(assert (= (and d!2264423 (not c!1354633)) b!7275111))

(assert (= (and b!7275111 c!1354634) b!7275110))

(assert (= (and b!7275111 (not c!1354634)) b!7275113))

(assert (= (or b!7275112 b!7275110) bm!663700))

(declare-fun m!7961848 () Bool)

(assert (=> bm!663700 m!7961848))

(declare-fun m!7961850 () Bool)

(assert (=> b!7275112 m!7961850))

(declare-fun m!7961852 () Bool)

(assert (=> b!7275114 m!7961852))

(assert (=> b!7274940 d!2264423))

(declare-fun bs!1911951 () Bool)

(declare-fun d!2264425 () Bool)

(assert (= bs!1911951 (and d!2264425 b!7274940)))

(declare-fun lambda!449665 () Int)

(assert (=> bs!1911951 (not (= lambda!449665 lambda!449644))))

(declare-fun bs!1911952 () Bool)

(assert (= bs!1911952 (and d!2264425 d!2264397)))

(assert (=> bs!1911952 (not (= lambda!449665 lambda!449658))))

(declare-fun bs!1911953 () Bool)

(assert (= bs!1911953 (and d!2264425 d!2264399)))

(assert (=> bs!1911953 (not (= lambda!449665 lambda!449659))))

(assert (=> d!2264425 (= (nullableContext!327 ct1!250) (forall!17662 (exprs!8277 ct1!250) lambda!449665))))

(declare-fun bs!1911954 () Bool)

(assert (= bs!1911954 d!2264425))

(declare-fun m!7961854 () Bool)

(assert (=> bs!1911954 m!7961854))

(assert (=> b!7274945 d!2264425))

(declare-fun d!2264427 () Bool)

(declare-fun nullableFct!3166 (Regex!18837) Bool)

(assert (=> d!2264427 (= (nullable!8020 (h!77313 (exprs!8277 ct1!250))) (nullableFct!3166 (h!77313 (exprs!8277 ct1!250))))))

(declare-fun bs!1911955 () Bool)

(assert (= bs!1911955 d!2264427))

(declare-fun m!7961856 () Bool)

(assert (=> bs!1911955 m!7961856))

(assert (=> b!7274941 d!2264427))

(assert (=> b!7274941 d!2264407))

(declare-fun d!2264429 () Bool)

(assert (=> d!2264429 (= (tail!14542 (exprs!8277 ct1!250)) (t!385061 (exprs!8277 ct1!250)))))

(assert (=> b!7274941 d!2264429))

(declare-fun d!2264431 () Bool)

(assert (=> d!2264431 (= (isEmpty!40757 (exprs!8277 ct1!250)) ((_ is Nil!70865) (exprs!8277 ct1!250)))))

(assert (=> b!7274937 d!2264431))

(declare-fun b!7275119 () Bool)

(declare-fun e!4362639 () Bool)

(declare-fun tp!2041962 () Bool)

(declare-fun tp!2041963 () Bool)

(assert (=> b!7275119 (= e!4362639 (and tp!2041962 tp!2041963))))

(assert (=> b!7274939 (= tp!2041945 e!4362639)))

(assert (= (and b!7274939 ((_ is Cons!70865) (exprs!8277 ct1!250))) b!7275119))

(declare-fun b!7275124 () Bool)

(declare-fun e!4362642 () Bool)

(declare-fun tp!2041966 () Bool)

(assert (=> b!7275124 (= e!4362642 (and tp_is_empty!47139 tp!2041966))))

(assert (=> b!7274938 (= tp!2041946 e!4362642)))

(assert (= (and b!7274938 ((_ is Cons!70866) (t!385062 s!7854))) b!7275124))

(declare-fun b!7275125 () Bool)

(declare-fun e!4362643 () Bool)

(declare-fun tp!2041967 () Bool)

(declare-fun tp!2041968 () Bool)

(assert (=> b!7275125 (= e!4362643 (and tp!2041967 tp!2041968))))

(assert (=> b!7274943 (= tp!2041944 e!4362643)))

(assert (= (and b!7274943 ((_ is Cons!70865) (exprs!8277 ct2!346))) b!7275125))

(declare-fun b_lambda!280793 () Bool)

(assert (= b_lambda!280791 (or b!7274940 b_lambda!280793)))

(declare-fun bs!1911956 () Bool)

(declare-fun d!2264433 () Bool)

(assert (= bs!1911956 (and d!2264433 b!7274940)))

(assert (=> bs!1911956 (= (dynLambda!28977 lambda!449645 ct1!250) (derivationStepZipperUp!2593 ct1!250 (h!77314 s!7854)))))

(assert (=> bs!1911956 m!7961682))

(assert (=> d!2264421 d!2264433))

(declare-fun b_lambda!280795 () Bool)

(assert (= b_lambda!280785 (or b!7274940 b_lambda!280795)))

(declare-fun bs!1911957 () Bool)

(declare-fun d!2264435 () Bool)

(assert (= bs!1911957 (and d!2264435 b!7274940)))

(assert (=> bs!1911957 (= (dynLambda!28977 lambda!449645 lt!2596659) (derivationStepZipperUp!2593 lt!2596659 (h!77314 s!7854)))))

(assert (=> bs!1911957 m!7961680))

(assert (=> d!2264401 d!2264435))

(check-sat (not d!2264419) (not b!7275066) tp_is_empty!47139 (not b!7275114) (not d!2264405) (not b!7275068) (not d!2264425) (not d!2264421) (not bm!663673) (not d!2264403) (not b!7275124) (not bm!663676) (not d!2264427) (not d!2264391) (not d!2264399) (not bm!663692) (not b!7275033) (not d!2264397) (not bs!1911956) (not b!7275040) (not b!7275107) (not b!7275125) (not d!2264401) (not bm!663679) (not b_lambda!280793) (not bm!663700) (not bs!1911957) (not d!2264409) (not b!7275119) (not b!7275035) (not d!2264413) (not b!7275011) (not b_lambda!280795) (not b!7275041) (not b!7275112) (not bm!663671) (not b!7275108))
(check-sat)
