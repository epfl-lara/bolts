; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!628114 () Bool)

(assert start!628114)

(declare-fun b!6339529 () Bool)

(assert (=> b!6339529 true))

(assert (=> b!6339529 true))

(declare-fun lambda!348200 () Int)

(declare-fun lambda!348199 () Int)

(assert (=> b!6339529 (not (= lambda!348200 lambda!348199))))

(assert (=> b!6339529 true))

(assert (=> b!6339529 true))

(declare-fun b!6339546 () Bool)

(assert (=> b!6339546 true))

(declare-fun b!6339522 () Bool)

(declare-fun e!3850726 () Bool)

(declare-fun e!3850723 () Bool)

(assert (=> b!6339522 (= e!3850726 e!3850723)))

(declare-fun res!2608938 () Bool)

(assert (=> b!6339522 (=> res!2608938 e!3850723)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32756 0))(
  ( (C!32757 (val!26080 Int)) )
))
(declare-datatypes ((Regex!16243 0))(
  ( (ElementMatch!16243 (c!1152474 C!32756)) (Concat!25088 (regOne!32998 Regex!16243) (regTwo!32998 Regex!16243)) (EmptyExpr!16243) (Star!16243 (reg!16572 Regex!16243)) (EmptyLang!16243) (Union!16243 (regOne!32999 Regex!16243) (regTwo!32999 Regex!16243)) )
))
(declare-datatypes ((List!65028 0))(
  ( (Nil!64904) (Cons!64904 (h!71352 Regex!16243) (t!378614 List!65028)) )
))
(declare-datatypes ((Context!11254 0))(
  ( (Context!11255 (exprs!6127 List!65028)) )
))
(declare-fun lt!2362112 () (InoxSet Context!11254))

(declare-fun lt!2362121 () (InoxSet Context!11254))

(assert (=> b!6339522 (= res!2608938 (not (= lt!2362112 lt!2362121)))))

(declare-fun r!7292 () Regex!16243)

(declare-datatypes ((List!65029 0))(
  ( (Nil!64905) (Cons!64905 (h!71353 C!32756) (t!378615 List!65029)) )
))
(declare-fun s!2326 () List!65029)

(declare-fun lt!2362113 () List!65028)

(declare-fun derivationStepZipperDown!1491 (Regex!16243 Context!11254 C!32756) (InoxSet Context!11254))

(assert (=> b!6339522 (= lt!2362121 (derivationStepZipperDown!1491 (regOne!32998 (regOne!32998 r!7292)) (Context!11255 lt!2362113) (h!71353 s!2326)))))

(declare-datatypes ((List!65030 0))(
  ( (Nil!64906) (Cons!64906 (h!71354 Context!11254) (t!378616 List!65030)) )
))
(declare-fun zl!343 () List!65030)

(assert (=> b!6339522 (= lt!2362113 (Cons!64904 (regTwo!32998 (regOne!32998 r!7292)) (t!378614 (exprs!6127 (h!71354 zl!343)))))))

(declare-fun b!6339523 () Bool)

(declare-fun res!2608943 () Bool)

(declare-fun e!3850715 () Bool)

(assert (=> b!6339523 (=> res!2608943 e!3850715)))

(declare-fun lt!2362111 () (InoxSet Context!11254))

(declare-fun lt!2362114 () Bool)

(declare-fun matchZipper!2255 ((InoxSet Context!11254) List!65029) Bool)

(assert (=> b!6339523 (= res!2608943 (not (= lt!2362114 (matchZipper!2255 lt!2362111 (t!378615 s!2326)))))))

(declare-fun b!6339524 () Bool)

(declare-fun e!3850711 () Bool)

(declare-fun tp!1768114 () Bool)

(assert (=> b!6339524 (= e!3850711 tp!1768114)))

(declare-fun tp!1768119 () Bool)

(declare-fun b!6339525 () Bool)

(declare-fun e!3850719 () Bool)

(declare-fun inv!83854 (Context!11254) Bool)

(assert (=> b!6339525 (= e!3850719 (and (inv!83854 (h!71354 zl!343)) e!3850711 tp!1768119))))

(declare-fun res!2608946 () Bool)

(declare-fun e!3850724 () Bool)

(assert (=> start!628114 (=> (not res!2608946) (not e!3850724))))

(declare-fun validRegex!7979 (Regex!16243) Bool)

(assert (=> start!628114 (= res!2608946 (validRegex!7979 r!7292))))

(assert (=> start!628114 e!3850724))

(declare-fun e!3850712 () Bool)

(assert (=> start!628114 e!3850712))

(declare-fun condSetEmpty!43142 () Bool)

(declare-fun z!1189 () (InoxSet Context!11254))

(assert (=> start!628114 (= condSetEmpty!43142 (= z!1189 ((as const (Array Context!11254 Bool)) false)))))

(declare-fun setRes!43142 () Bool)

(assert (=> start!628114 setRes!43142))

(assert (=> start!628114 e!3850719))

(declare-fun e!3850714 () Bool)

(assert (=> start!628114 e!3850714))

(declare-fun b!6339526 () Bool)

(declare-datatypes ((Unit!158303 0))(
  ( (Unit!158304) )
))
(declare-fun e!3850720 () Unit!158303)

(declare-fun Unit!158305 () Unit!158303)

(assert (=> b!6339526 (= e!3850720 Unit!158305)))

(declare-fun lt!2362115 () Unit!158303)

(declare-fun lt!2362128 () (InoxSet Context!11254))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1074 ((InoxSet Context!11254) (InoxSet Context!11254) List!65029) Unit!158303)

(assert (=> b!6339526 (= lt!2362115 (lemmaZipperConcatMatchesSameAsBothZippers!1074 lt!2362112 lt!2362128 (t!378615 s!2326)))))

(declare-fun res!2608932 () Bool)

(assert (=> b!6339526 (= res!2608932 (matchZipper!2255 lt!2362112 (t!378615 s!2326)))))

(declare-fun e!3850716 () Bool)

(assert (=> b!6339526 (=> res!2608932 e!3850716)))

(assert (=> b!6339526 (= (matchZipper!2255 ((_ map or) lt!2362112 lt!2362128) (t!378615 s!2326)) e!3850716)))

(declare-fun b!6339527 () Bool)

(declare-fun res!2608939 () Bool)

(declare-fun e!3850718 () Bool)

(assert (=> b!6339527 (=> res!2608939 e!3850718)))

(declare-fun generalisedUnion!2087 (List!65028) Regex!16243)

(declare-fun unfocusZipperList!1664 (List!65030) List!65028)

(assert (=> b!6339527 (= res!2608939 (not (= r!7292 (generalisedUnion!2087 (unfocusZipperList!1664 zl!343)))))))

(declare-fun b!6339528 () Bool)

(declare-fun e!3850725 () Bool)

(assert (=> b!6339528 (= e!3850723 e!3850725)))

(declare-fun res!2608953 () Bool)

(assert (=> b!6339528 (=> res!2608953 e!3850725)))

(assert (=> b!6339528 (= res!2608953 (not (= lt!2362114 (matchZipper!2255 lt!2362121 (t!378615 s!2326)))))))

(assert (=> b!6339528 (= lt!2362114 (matchZipper!2255 lt!2362112 (t!378615 s!2326)))))

(declare-fun e!3850721 () Bool)

(assert (=> b!6339529 (= e!3850718 e!3850721)))

(declare-fun res!2608951 () Bool)

(assert (=> b!6339529 (=> res!2608951 e!3850721)))

(declare-fun lt!2362120 () Bool)

(declare-fun lt!2362127 () Bool)

(get-info :version)

(assert (=> b!6339529 (= res!2608951 (or (not (= lt!2362127 lt!2362120)) ((_ is Nil!64905) s!2326)))))

(declare-fun Exists!3313 (Int) Bool)

(assert (=> b!6339529 (= (Exists!3313 lambda!348199) (Exists!3313 lambda!348200))))

(declare-fun lt!2362123 () Unit!158303)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1850 (Regex!16243 Regex!16243 List!65029) Unit!158303)

(assert (=> b!6339529 (= lt!2362123 (lemmaExistCutMatchRandMatchRSpecEquivalent!1850 (regOne!32998 r!7292) (regTwo!32998 r!7292) s!2326))))

(assert (=> b!6339529 (= lt!2362120 (Exists!3313 lambda!348199))))

(declare-datatypes ((tuple2!66444 0))(
  ( (tuple2!66445 (_1!36525 List!65029) (_2!36525 List!65029)) )
))
(declare-datatypes ((Option!16134 0))(
  ( (None!16133) (Some!16133 (v!52302 tuple2!66444)) )
))
(declare-fun isDefined!12837 (Option!16134) Bool)

(declare-fun findConcatSeparation!2548 (Regex!16243 Regex!16243 List!65029 List!65029 List!65029) Option!16134)

(assert (=> b!6339529 (= lt!2362120 (isDefined!12837 (findConcatSeparation!2548 (regOne!32998 r!7292) (regTwo!32998 r!7292) Nil!64905 s!2326 s!2326)))))

(declare-fun lt!2362108 () Unit!158303)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2312 (Regex!16243 Regex!16243 List!65029) Unit!158303)

(assert (=> b!6339529 (= lt!2362108 (lemmaFindConcatSeparationEquivalentToExists!2312 (regOne!32998 r!7292) (regTwo!32998 r!7292) s!2326))))

(declare-fun setIsEmpty!43142 () Bool)

(assert (=> setIsEmpty!43142 setRes!43142))

(declare-fun b!6339530 () Bool)

(declare-fun res!2608949 () Bool)

(assert (=> b!6339530 (=> res!2608949 e!3850726)))

(assert (=> b!6339530 (= res!2608949 (not ((_ is Concat!25088) (regOne!32998 r!7292))))))

(declare-fun b!6339531 () Bool)

(declare-fun res!2608942 () Bool)

(assert (=> b!6339531 (=> res!2608942 e!3850718)))

(assert (=> b!6339531 (= res!2608942 (not ((_ is Cons!64904) (exprs!6127 (h!71354 zl!343)))))))

(declare-fun b!6339532 () Bool)

(declare-fun e!3850722 () Bool)

(declare-fun nullable!6236 (Regex!16243) Bool)

(assert (=> b!6339532 (= e!3850722 (nullable!6236 (regOne!32998 (regOne!32998 r!7292))))))

(declare-fun b!6339533 () Bool)

(assert (=> b!6339533 (= e!3850724 (not e!3850718))))

(declare-fun res!2608931 () Bool)

(assert (=> b!6339533 (=> res!2608931 e!3850718)))

(assert (=> b!6339533 (= res!2608931 (not ((_ is Cons!64906) zl!343)))))

(declare-fun matchRSpec!3344 (Regex!16243 List!65029) Bool)

(assert (=> b!6339533 (= lt!2362127 (matchRSpec!3344 r!7292 s!2326))))

(declare-fun matchR!8426 (Regex!16243 List!65029) Bool)

(assert (=> b!6339533 (= lt!2362127 (matchR!8426 r!7292 s!2326))))

(declare-fun lt!2362122 () Unit!158303)

(declare-fun mainMatchTheorem!3344 (Regex!16243 List!65029) Unit!158303)

(assert (=> b!6339533 (= lt!2362122 (mainMatchTheorem!3344 r!7292 s!2326))))

(declare-fun b!6339534 () Bool)

(declare-fun res!2608954 () Bool)

(assert (=> b!6339534 (=> res!2608954 e!3850726)))

(assert (=> b!6339534 (= res!2608954 e!3850722)))

(declare-fun res!2608941 () Bool)

(assert (=> b!6339534 (=> (not res!2608941) (not e!3850722))))

(assert (=> b!6339534 (= res!2608941 ((_ is Concat!25088) (regOne!32998 r!7292)))))

(declare-fun b!6339535 () Bool)

(declare-fun res!2608944 () Bool)

(assert (=> b!6339535 (=> res!2608944 e!3850721)))

(declare-fun isEmpty!36981 (List!65028) Bool)

(assert (=> b!6339535 (= res!2608944 (isEmpty!36981 (t!378614 (exprs!6127 (h!71354 zl!343)))))))

(declare-fun b!6339536 () Bool)

(declare-fun res!2608948 () Bool)

(assert (=> b!6339536 (=> res!2608948 e!3850715)))

(declare-fun lt!2362117 () Context!11254)

(declare-fun contextDepthTotal!352 (Context!11254) Int)

(assert (=> b!6339536 (= res!2608948 (>= (contextDepthTotal!352 lt!2362117) (contextDepthTotal!352 (h!71354 zl!343))))))

(declare-fun b!6339537 () Bool)

(declare-fun Unit!158306 () Unit!158303)

(assert (=> b!6339537 (= e!3850720 Unit!158306)))

(declare-fun b!6339538 () Bool)

(declare-fun tp_is_empty!41739 () Bool)

(declare-fun tp!1768120 () Bool)

(assert (=> b!6339538 (= e!3850714 (and tp_is_empty!41739 tp!1768120))))

(declare-fun b!6339539 () Bool)

(declare-fun e!3850713 () Bool)

(declare-fun lt!2362125 () Regex!16243)

(assert (=> b!6339539 (= e!3850713 (validRegex!7979 lt!2362125))))

(declare-fun lt!2362130 () (InoxSet Context!11254))

(assert (=> b!6339539 (= (matchR!8426 lt!2362125 s!2326) (matchZipper!2255 lt!2362130 s!2326))))

(declare-fun lt!2362109 () Unit!158303)

(declare-fun lt!2362129 () List!65030)

(declare-fun theoremZipperRegexEquiv!785 ((InoxSet Context!11254) List!65030 Regex!16243 List!65029) Unit!158303)

(assert (=> b!6339539 (= lt!2362109 (theoremZipperRegexEquiv!785 lt!2362130 lt!2362129 lt!2362125 s!2326))))

(declare-fun lt!2362118 () List!65028)

(declare-fun generalisedConcat!1840 (List!65028) Regex!16243)

(assert (=> b!6339539 (= lt!2362125 (generalisedConcat!1840 lt!2362118))))

(declare-fun b!6339540 () Bool)

(declare-fun res!2608934 () Bool)

(assert (=> b!6339540 (=> res!2608934 e!3850718)))

(declare-fun isEmpty!36982 (List!65030) Bool)

(assert (=> b!6339540 (= res!2608934 (not (isEmpty!36982 (t!378616 zl!343))))))

(declare-fun b!6339541 () Bool)

(declare-fun res!2608940 () Bool)

(assert (=> b!6339541 (=> res!2608940 e!3850713)))

(declare-fun zipperDepth!350 (List!65030) Int)

(assert (=> b!6339541 (= res!2608940 (> (zipperDepth!350 lt!2362129) (zipperDepth!350 zl!343)))))

(declare-fun b!6339542 () Bool)

(assert (=> b!6339542 (= e!3850716 (matchZipper!2255 lt!2362128 (t!378615 s!2326)))))

(declare-fun setNonEmpty!43142 () Bool)

(declare-fun e!3850717 () Bool)

(declare-fun setElem!43142 () Context!11254)

(declare-fun tp!1768122 () Bool)

(assert (=> setNonEmpty!43142 (= setRes!43142 (and tp!1768122 (inv!83854 setElem!43142) e!3850717))))

(declare-fun setRest!43142 () (InoxSet Context!11254))

(assert (=> setNonEmpty!43142 (= z!1189 ((_ map or) (store ((as const (Array Context!11254 Bool)) false) setElem!43142 true) setRest!43142))))

(declare-fun b!6339543 () Bool)

(assert (=> b!6339543 (= e!3850715 e!3850713)))

(declare-fun res!2608952 () Bool)

(assert (=> b!6339543 (=> res!2608952 e!3850713)))

(declare-fun zipperDepthTotal!380 (List!65030) Int)

(assert (=> b!6339543 (= res!2608952 (>= (zipperDepthTotal!380 lt!2362129) (zipperDepthTotal!380 zl!343)))))

(assert (=> b!6339543 (= lt!2362129 (Cons!64906 lt!2362117 Nil!64906))))

(declare-fun b!6339544 () Bool)

(declare-fun res!2608933 () Bool)

(assert (=> b!6339544 (=> (not res!2608933) (not e!3850724))))

(declare-fun toList!10027 ((InoxSet Context!11254)) List!65030)

(assert (=> b!6339544 (= res!2608933 (= (toList!10027 z!1189) zl!343))))

(declare-fun b!6339545 () Bool)

(declare-fun tp!1768115 () Bool)

(declare-fun tp!1768116 () Bool)

(assert (=> b!6339545 (= e!3850712 (and tp!1768115 tp!1768116))))

(assert (=> b!6339546 (= e!3850721 e!3850726)))

(declare-fun res!2608937 () Bool)

(assert (=> b!6339546 (=> res!2608937 e!3850726)))

(assert (=> b!6339546 (= res!2608937 (or (and ((_ is ElementMatch!16243) (regOne!32998 r!7292)) (= (c!1152474 (regOne!32998 r!7292)) (h!71353 s!2326))) ((_ is Union!16243) (regOne!32998 r!7292))))))

(declare-fun lt!2362107 () Unit!158303)

(assert (=> b!6339546 (= lt!2362107 e!3850720)))

(declare-fun c!1152473 () Bool)

(assert (=> b!6339546 (= c!1152473 (nullable!6236 (h!71352 (exprs!6127 (h!71354 zl!343)))))))

(declare-fun lambda!348201 () Int)

(declare-fun flatMap!1748 ((InoxSet Context!11254) Int) (InoxSet Context!11254))

(declare-fun derivationStepZipperUp!1417 (Context!11254 C!32756) (InoxSet Context!11254))

(assert (=> b!6339546 (= (flatMap!1748 z!1189 lambda!348201) (derivationStepZipperUp!1417 (h!71354 zl!343) (h!71353 s!2326)))))

(declare-fun lt!2362116 () Unit!158303)

(declare-fun lemmaFlatMapOnSingletonSet!1274 ((InoxSet Context!11254) Context!11254 Int) Unit!158303)

(assert (=> b!6339546 (= lt!2362116 (lemmaFlatMapOnSingletonSet!1274 z!1189 (h!71354 zl!343) lambda!348201))))

(declare-fun lt!2362119 () Context!11254)

(assert (=> b!6339546 (= lt!2362128 (derivationStepZipperUp!1417 lt!2362119 (h!71353 s!2326)))))

(assert (=> b!6339546 (= lt!2362112 (derivationStepZipperDown!1491 (h!71352 (exprs!6127 (h!71354 zl!343))) lt!2362119 (h!71353 s!2326)))))

(assert (=> b!6339546 (= lt!2362119 (Context!11255 (t!378614 (exprs!6127 (h!71354 zl!343)))))))

(declare-fun lt!2362110 () (InoxSet Context!11254))

(assert (=> b!6339546 (= lt!2362110 (derivationStepZipperUp!1417 (Context!11255 (Cons!64904 (h!71352 (exprs!6127 (h!71354 zl!343))) (t!378614 (exprs!6127 (h!71354 zl!343))))) (h!71353 s!2326)))))

(declare-fun b!6339547 () Bool)

(declare-fun res!2608935 () Bool)

(assert (=> b!6339547 (=> (not res!2608935) (not e!3850724))))

(declare-fun unfocusZipper!1985 (List!65030) Regex!16243)

(assert (=> b!6339547 (= res!2608935 (= r!7292 (unfocusZipper!1985 zl!343)))))

(declare-fun b!6339548 () Bool)

(assert (=> b!6339548 (= e!3850712 tp_is_empty!41739)))

(declare-fun b!6339549 () Bool)

(declare-fun tp!1768121 () Bool)

(assert (=> b!6339549 (= e!3850712 tp!1768121)))

(declare-fun b!6339550 () Bool)

(declare-fun res!2608947 () Bool)

(assert (=> b!6339550 (=> res!2608947 e!3850715)))

(assert (=> b!6339550 (= res!2608947 (not (= (exprs!6127 (h!71354 zl!343)) (Cons!64904 (Concat!25088 (regOne!32998 (regOne!32998 r!7292)) (regTwo!32998 (regOne!32998 r!7292))) (t!378614 (exprs!6127 (h!71354 zl!343)))))))))

(declare-fun b!6339551 () Bool)

(assert (=> b!6339551 (= e!3850725 e!3850715)))

(declare-fun res!2608950 () Bool)

(assert (=> b!6339551 (=> res!2608950 e!3850715)))

(assert (=> b!6339551 (= res!2608950 (not (= lt!2362111 lt!2362121)))))

(assert (=> b!6339551 (= (flatMap!1748 lt!2362130 lambda!348201) (derivationStepZipperUp!1417 lt!2362117 (h!71353 s!2326)))))

(declare-fun lt!2362126 () Unit!158303)

(assert (=> b!6339551 (= lt!2362126 (lemmaFlatMapOnSingletonSet!1274 lt!2362130 lt!2362117 lambda!348201))))

(declare-fun lt!2362124 () (InoxSet Context!11254))

(assert (=> b!6339551 (= lt!2362124 (derivationStepZipperUp!1417 lt!2362117 (h!71353 s!2326)))))

(declare-fun derivationStepZipper!2209 ((InoxSet Context!11254) C!32756) (InoxSet Context!11254))

(assert (=> b!6339551 (= lt!2362111 (derivationStepZipper!2209 lt!2362130 (h!71353 s!2326)))))

(assert (=> b!6339551 (= lt!2362130 (store ((as const (Array Context!11254 Bool)) false) lt!2362117 true))))

(assert (=> b!6339551 (= lt!2362117 (Context!11255 lt!2362118))))

(assert (=> b!6339551 (= lt!2362118 (Cons!64904 (regOne!32998 (regOne!32998 r!7292)) lt!2362113))))

(declare-fun b!6339552 () Bool)

(declare-fun res!2608936 () Bool)

(assert (=> b!6339552 (=> res!2608936 e!3850718)))

(assert (=> b!6339552 (= res!2608936 (or ((_ is EmptyExpr!16243) r!7292) ((_ is EmptyLang!16243) r!7292) ((_ is ElementMatch!16243) r!7292) ((_ is Union!16243) r!7292) (not ((_ is Concat!25088) r!7292))))))

(declare-fun b!6339553 () Bool)

(declare-fun res!2608945 () Bool)

(assert (=> b!6339553 (=> res!2608945 e!3850718)))

(assert (=> b!6339553 (= res!2608945 (not (= r!7292 (generalisedConcat!1840 (exprs!6127 (h!71354 zl!343))))))))

(declare-fun b!6339554 () Bool)

(declare-fun tp!1768117 () Bool)

(declare-fun tp!1768113 () Bool)

(assert (=> b!6339554 (= e!3850712 (and tp!1768117 tp!1768113))))

(declare-fun b!6339555 () Bool)

(declare-fun tp!1768118 () Bool)

(assert (=> b!6339555 (= e!3850717 tp!1768118)))

(assert (= (and start!628114 res!2608946) b!6339544))

(assert (= (and b!6339544 res!2608933) b!6339547))

(assert (= (and b!6339547 res!2608935) b!6339533))

(assert (= (and b!6339533 (not res!2608931)) b!6339540))

(assert (= (and b!6339540 (not res!2608934)) b!6339553))

(assert (= (and b!6339553 (not res!2608945)) b!6339531))

(assert (= (and b!6339531 (not res!2608942)) b!6339527))

(assert (= (and b!6339527 (not res!2608939)) b!6339552))

(assert (= (and b!6339552 (not res!2608936)) b!6339529))

(assert (= (and b!6339529 (not res!2608951)) b!6339535))

(assert (= (and b!6339535 (not res!2608944)) b!6339546))

(assert (= (and b!6339546 c!1152473) b!6339526))

(assert (= (and b!6339546 (not c!1152473)) b!6339537))

(assert (= (and b!6339526 (not res!2608932)) b!6339542))

(assert (= (and b!6339546 (not res!2608937)) b!6339534))

(assert (= (and b!6339534 res!2608941) b!6339532))

(assert (= (and b!6339534 (not res!2608954)) b!6339530))

(assert (= (and b!6339530 (not res!2608949)) b!6339522))

(assert (= (and b!6339522 (not res!2608938)) b!6339528))

(assert (= (and b!6339528 (not res!2608953)) b!6339551))

(assert (= (and b!6339551 (not res!2608950)) b!6339523))

(assert (= (and b!6339523 (not res!2608943)) b!6339550))

(assert (= (and b!6339550 (not res!2608947)) b!6339536))

(assert (= (and b!6339536 (not res!2608948)) b!6339543))

(assert (= (and b!6339543 (not res!2608952)) b!6339541))

(assert (= (and b!6339541 (not res!2608940)) b!6339539))

(assert (= (and start!628114 ((_ is ElementMatch!16243) r!7292)) b!6339548))

(assert (= (and start!628114 ((_ is Concat!25088) r!7292)) b!6339554))

(assert (= (and start!628114 ((_ is Star!16243) r!7292)) b!6339549))

(assert (= (and start!628114 ((_ is Union!16243) r!7292)) b!6339545))

(assert (= (and start!628114 condSetEmpty!43142) setIsEmpty!43142))

(assert (= (and start!628114 (not condSetEmpty!43142)) setNonEmpty!43142))

(assert (= setNonEmpty!43142 b!6339555))

(assert (= b!6339525 b!6339524))

(assert (= (and start!628114 ((_ is Cons!64906) zl!343)) b!6339525))

(assert (= (and start!628114 ((_ is Cons!64905) s!2326)) b!6339538))

(declare-fun m!7148372 () Bool)

(assert (=> b!6339542 m!7148372))

(declare-fun m!7148374 () Bool)

(assert (=> b!6339536 m!7148374))

(declare-fun m!7148376 () Bool)

(assert (=> b!6339536 m!7148376))

(declare-fun m!7148378 () Bool)

(assert (=> start!628114 m!7148378))

(declare-fun m!7148380 () Bool)

(assert (=> b!6339529 m!7148380))

(declare-fun m!7148382 () Bool)

(assert (=> b!6339529 m!7148382))

(declare-fun m!7148384 () Bool)

(assert (=> b!6339529 m!7148384))

(declare-fun m!7148386 () Bool)

(assert (=> b!6339529 m!7148386))

(assert (=> b!6339529 m!7148380))

(declare-fun m!7148388 () Bool)

(assert (=> b!6339529 m!7148388))

(assert (=> b!6339529 m!7148384))

(declare-fun m!7148390 () Bool)

(assert (=> b!6339529 m!7148390))

(declare-fun m!7148392 () Bool)

(assert (=> b!6339535 m!7148392))

(declare-fun m!7148394 () Bool)

(assert (=> b!6339547 m!7148394))

(declare-fun m!7148396 () Bool)

(assert (=> b!6339544 m!7148396))

(declare-fun m!7148398 () Bool)

(assert (=> b!6339546 m!7148398))

(declare-fun m!7148400 () Bool)

(assert (=> b!6339546 m!7148400))

(declare-fun m!7148402 () Bool)

(assert (=> b!6339546 m!7148402))

(declare-fun m!7148404 () Bool)

(assert (=> b!6339546 m!7148404))

(declare-fun m!7148406 () Bool)

(assert (=> b!6339546 m!7148406))

(declare-fun m!7148408 () Bool)

(assert (=> b!6339546 m!7148408))

(declare-fun m!7148410 () Bool)

(assert (=> b!6339546 m!7148410))

(declare-fun m!7148412 () Bool)

(assert (=> b!6339522 m!7148412))

(declare-fun m!7148414 () Bool)

(assert (=> b!6339551 m!7148414))

(declare-fun m!7148416 () Bool)

(assert (=> b!6339551 m!7148416))

(declare-fun m!7148418 () Bool)

(assert (=> b!6339551 m!7148418))

(declare-fun m!7148420 () Bool)

(assert (=> b!6339551 m!7148420))

(declare-fun m!7148422 () Bool)

(assert (=> b!6339551 m!7148422))

(declare-fun m!7148424 () Bool)

(assert (=> b!6339543 m!7148424))

(declare-fun m!7148426 () Bool)

(assert (=> b!6339543 m!7148426))

(declare-fun m!7148428 () Bool)

(assert (=> b!6339539 m!7148428))

(declare-fun m!7148430 () Bool)

(assert (=> b!6339539 m!7148430))

(declare-fun m!7148432 () Bool)

(assert (=> b!6339539 m!7148432))

(declare-fun m!7148434 () Bool)

(assert (=> b!6339539 m!7148434))

(declare-fun m!7148436 () Bool)

(assert (=> b!6339539 m!7148436))

(declare-fun m!7148438 () Bool)

(assert (=> b!6339526 m!7148438))

(declare-fun m!7148440 () Bool)

(assert (=> b!6339526 m!7148440))

(declare-fun m!7148442 () Bool)

(assert (=> b!6339526 m!7148442))

(declare-fun m!7148444 () Bool)

(assert (=> b!6339540 m!7148444))

(declare-fun m!7148446 () Bool)

(assert (=> b!6339528 m!7148446))

(assert (=> b!6339528 m!7148440))

(declare-fun m!7148448 () Bool)

(assert (=> setNonEmpty!43142 m!7148448))

(declare-fun m!7148450 () Bool)

(assert (=> b!6339527 m!7148450))

(assert (=> b!6339527 m!7148450))

(declare-fun m!7148452 () Bool)

(assert (=> b!6339527 m!7148452))

(declare-fun m!7148454 () Bool)

(assert (=> b!6339532 m!7148454))

(declare-fun m!7148456 () Bool)

(assert (=> b!6339525 m!7148456))

(declare-fun m!7148458 () Bool)

(assert (=> b!6339533 m!7148458))

(declare-fun m!7148460 () Bool)

(assert (=> b!6339533 m!7148460))

(declare-fun m!7148462 () Bool)

(assert (=> b!6339533 m!7148462))

(declare-fun m!7148464 () Bool)

(assert (=> b!6339541 m!7148464))

(declare-fun m!7148466 () Bool)

(assert (=> b!6339541 m!7148466))

(declare-fun m!7148468 () Bool)

(assert (=> b!6339553 m!7148468))

(declare-fun m!7148470 () Bool)

(assert (=> b!6339523 m!7148470))

(check-sat (not b!6339549) (not b!6339529) (not b!6339547) (not b!6339528) (not b!6339539) (not b!6339532) (not b!6339546) (not b!6339533) (not b!6339536) (not b!6339553) (not b!6339538) (not b!6339541) (not b!6339555) (not b!6339527) (not b!6339540) (not b!6339535) (not start!628114) (not b!6339545) (not b!6339544) (not b!6339526) (not b!6339525) (not b!6339551) (not b!6339542) (not b!6339554) (not setNonEmpty!43142) (not b!6339523) (not b!6339543) (not b!6339524) tp_is_empty!41739 (not b!6339522))
(check-sat)
(get-model)

(declare-fun d!1989779 () Bool)

(declare-fun lt!2362133 () Regex!16243)

(assert (=> d!1989779 (validRegex!7979 lt!2362133)))

(assert (=> d!1989779 (= lt!2362133 (generalisedUnion!2087 (unfocusZipperList!1664 zl!343)))))

(assert (=> d!1989779 (= (unfocusZipper!1985 zl!343) lt!2362133)))

(declare-fun bs!1587440 () Bool)

(assert (= bs!1587440 d!1989779))

(declare-fun m!7148472 () Bool)

(assert (=> bs!1587440 m!7148472))

(assert (=> bs!1587440 m!7148450))

(assert (=> bs!1587440 m!7148450))

(assert (=> bs!1587440 m!7148452))

(assert (=> b!6339547 d!1989779))

(declare-fun d!1989781 () Bool)

(declare-fun dynLambda!25724 (Int Context!11254) (InoxSet Context!11254))

(assert (=> d!1989781 (= (flatMap!1748 z!1189 lambda!348201) (dynLambda!25724 lambda!348201 (h!71354 zl!343)))))

(declare-fun lt!2362136 () Unit!158303)

(declare-fun choose!46990 ((InoxSet Context!11254) Context!11254 Int) Unit!158303)

(assert (=> d!1989781 (= lt!2362136 (choose!46990 z!1189 (h!71354 zl!343) lambda!348201))))

(assert (=> d!1989781 (= z!1189 (store ((as const (Array Context!11254 Bool)) false) (h!71354 zl!343) true))))

(assert (=> d!1989781 (= (lemmaFlatMapOnSingletonSet!1274 z!1189 (h!71354 zl!343) lambda!348201) lt!2362136)))

(declare-fun b_lambda!241277 () Bool)

(assert (=> (not b_lambda!241277) (not d!1989781)))

(declare-fun bs!1587441 () Bool)

(assert (= bs!1587441 d!1989781))

(assert (=> bs!1587441 m!7148408))

(declare-fun m!7148474 () Bool)

(assert (=> bs!1587441 m!7148474))

(declare-fun m!7148476 () Bool)

(assert (=> bs!1587441 m!7148476))

(declare-fun m!7148478 () Bool)

(assert (=> bs!1587441 m!7148478))

(assert (=> b!6339546 d!1989781))

(declare-fun d!1989783 () Bool)

(declare-fun nullableFct!2182 (Regex!16243) Bool)

(assert (=> d!1989783 (= (nullable!6236 (h!71352 (exprs!6127 (h!71354 zl!343)))) (nullableFct!2182 (h!71352 (exprs!6127 (h!71354 zl!343)))))))

(declare-fun bs!1587442 () Bool)

(assert (= bs!1587442 d!1989783))

(declare-fun m!7148480 () Bool)

(assert (=> bs!1587442 m!7148480))

(assert (=> b!6339546 d!1989783))

(declare-fun bm!540208 () Bool)

(declare-fun call!540213 () (InoxSet Context!11254))

(assert (=> bm!540208 (= call!540213 (derivationStepZipperDown!1491 (h!71352 (exprs!6127 (h!71354 zl!343))) (Context!11255 (t!378614 (exprs!6127 (h!71354 zl!343)))) (h!71353 s!2326)))))

(declare-fun b!6339572 () Bool)

(declare-fun e!3850734 () (InoxSet Context!11254))

(assert (=> b!6339572 (= e!3850734 ((as const (Array Context!11254 Bool)) false))))

(declare-fun b!6339573 () Bool)

(assert (=> b!6339573 (= e!3850734 call!540213)))

(declare-fun b!6339574 () Bool)

(declare-fun e!3850735 () Bool)

(assert (=> b!6339574 (= e!3850735 (nullable!6236 (h!71352 (exprs!6127 (h!71354 zl!343)))))))

(declare-fun e!3850733 () (InoxSet Context!11254))

(declare-fun b!6339575 () Bool)

(assert (=> b!6339575 (= e!3850733 ((_ map or) call!540213 (derivationStepZipperUp!1417 (Context!11255 (t!378614 (exprs!6127 (h!71354 zl!343)))) (h!71353 s!2326))))))

(declare-fun b!6339576 () Bool)

(assert (=> b!6339576 (= e!3850733 e!3850734)))

(declare-fun c!1152479 () Bool)

(assert (=> b!6339576 (= c!1152479 ((_ is Cons!64904) (exprs!6127 (h!71354 zl!343))))))

(declare-fun d!1989785 () Bool)

(declare-fun c!1152480 () Bool)

(assert (=> d!1989785 (= c!1152480 e!3850735)))

(declare-fun res!2608957 () Bool)

(assert (=> d!1989785 (=> (not res!2608957) (not e!3850735))))

(assert (=> d!1989785 (= res!2608957 ((_ is Cons!64904) (exprs!6127 (h!71354 zl!343))))))

(assert (=> d!1989785 (= (derivationStepZipperUp!1417 (h!71354 zl!343) (h!71353 s!2326)) e!3850733)))

(assert (= (and d!1989785 res!2608957) b!6339574))

(assert (= (and d!1989785 c!1152480) b!6339575))

(assert (= (and d!1989785 (not c!1152480)) b!6339576))

(assert (= (and b!6339576 c!1152479) b!6339573))

(assert (= (and b!6339576 (not c!1152479)) b!6339572))

(assert (= (or b!6339575 b!6339573) bm!540208))

(declare-fun m!7148482 () Bool)

(assert (=> bm!540208 m!7148482))

(assert (=> b!6339574 m!7148406))

(declare-fun m!7148484 () Bool)

(assert (=> b!6339575 m!7148484))

(assert (=> b!6339546 d!1989785))

(declare-fun d!1989789 () Bool)

(declare-fun choose!46991 ((InoxSet Context!11254) Int) (InoxSet Context!11254))

(assert (=> d!1989789 (= (flatMap!1748 z!1189 lambda!348201) (choose!46991 z!1189 lambda!348201))))

(declare-fun bs!1587443 () Bool)

(assert (= bs!1587443 d!1989789))

(declare-fun m!7148486 () Bool)

(assert (=> bs!1587443 m!7148486))

(assert (=> b!6339546 d!1989789))

(declare-fun c!1152505 () Bool)

(declare-fun bm!540221 () Bool)

(declare-fun call!540230 () List!65028)

(declare-fun c!1152507 () Bool)

(declare-fun $colon$colon!2103 (List!65028 Regex!16243) List!65028)

(assert (=> bm!540221 (= call!540230 ($colon$colon!2103 (exprs!6127 lt!2362119) (ite (or c!1152507 c!1152505) (regTwo!32998 (h!71352 (exprs!6127 (h!71354 zl!343)))) (h!71352 (exprs!6127 (h!71354 zl!343))))))))

(declare-fun b!6339629 () Bool)

(declare-fun e!3850768 () Bool)

(assert (=> b!6339629 (= e!3850768 (nullable!6236 (regOne!32998 (h!71352 (exprs!6127 (h!71354 zl!343))))))))

(declare-fun call!540229 () (InoxSet Context!11254))

(declare-fun bm!540222 () Bool)

(declare-fun c!1152506 () Bool)

(declare-fun call!540231 () List!65028)

(assert (=> bm!540222 (= call!540229 (derivationStepZipperDown!1491 (ite c!1152506 (regOne!32999 (h!71352 (exprs!6127 (h!71354 zl!343)))) (ite c!1152507 (regTwo!32998 (h!71352 (exprs!6127 (h!71354 zl!343)))) (ite c!1152505 (regOne!32998 (h!71352 (exprs!6127 (h!71354 zl!343)))) (reg!16572 (h!71352 (exprs!6127 (h!71354 zl!343))))))) (ite (or c!1152506 c!1152507) lt!2362119 (Context!11255 call!540231)) (h!71353 s!2326)))))

(declare-fun b!6339630 () Bool)

(declare-fun e!3850767 () (InoxSet Context!11254))

(declare-fun call!540226 () (InoxSet Context!11254))

(assert (=> b!6339630 (= e!3850767 call!540226)))

(declare-fun call!540228 () (InoxSet Context!11254))

(declare-fun bm!540223 () Bool)

(assert (=> bm!540223 (= call!540228 (derivationStepZipperDown!1491 (ite c!1152506 (regTwo!32999 (h!71352 (exprs!6127 (h!71354 zl!343)))) (regOne!32998 (h!71352 (exprs!6127 (h!71354 zl!343))))) (ite c!1152506 lt!2362119 (Context!11255 call!540230)) (h!71353 s!2326)))))

(declare-fun b!6339631 () Bool)

(declare-fun e!3850769 () (InoxSet Context!11254))

(declare-fun call!540227 () (InoxSet Context!11254))

(assert (=> b!6339631 (= e!3850769 ((_ map or) call!540228 call!540227))))

(declare-fun bm!540224 () Bool)

(assert (=> bm!540224 (= call!540227 call!540229)))

(declare-fun b!6339632 () Bool)

(declare-fun e!3850771 () (InoxSet Context!11254))

(assert (=> b!6339632 (= e!3850771 (store ((as const (Array Context!11254 Bool)) false) lt!2362119 true))))

(declare-fun bm!540225 () Bool)

(assert (=> bm!540225 (= call!540226 call!540227)))

(declare-fun b!6339633 () Bool)

(declare-fun e!3850770 () (InoxSet Context!11254))

(assert (=> b!6339633 (= e!3850770 call!540226)))

(declare-fun b!6339634 () Bool)

(declare-fun e!3850766 () (InoxSet Context!11254))

(assert (=> b!6339634 (= e!3850771 e!3850766)))

(assert (=> b!6339634 (= c!1152506 ((_ is Union!16243) (h!71352 (exprs!6127 (h!71354 zl!343)))))))

(declare-fun b!6339635 () Bool)

(assert (=> b!6339635 (= e!3850766 ((_ map or) call!540229 call!540228))))

(declare-fun b!6339636 () Bool)

(assert (=> b!6339636 (= e!3850767 ((as const (Array Context!11254 Bool)) false))))

(declare-fun b!6339637 () Bool)

(assert (=> b!6339637 (= c!1152507 e!3850768)))

(declare-fun res!2608966 () Bool)

(assert (=> b!6339637 (=> (not res!2608966) (not e!3850768))))

(assert (=> b!6339637 (= res!2608966 ((_ is Concat!25088) (h!71352 (exprs!6127 (h!71354 zl!343)))))))

(assert (=> b!6339637 (= e!3850766 e!3850769)))

(declare-fun bm!540226 () Bool)

(assert (=> bm!540226 (= call!540231 call!540230)))

(declare-fun d!1989791 () Bool)

(declare-fun c!1152504 () Bool)

(assert (=> d!1989791 (= c!1152504 (and ((_ is ElementMatch!16243) (h!71352 (exprs!6127 (h!71354 zl!343)))) (= (c!1152474 (h!71352 (exprs!6127 (h!71354 zl!343)))) (h!71353 s!2326))))))

(assert (=> d!1989791 (= (derivationStepZipperDown!1491 (h!71352 (exprs!6127 (h!71354 zl!343))) lt!2362119 (h!71353 s!2326)) e!3850771)))

(declare-fun b!6339638 () Bool)

(assert (=> b!6339638 (= e!3850769 e!3850770)))

(assert (=> b!6339638 (= c!1152505 ((_ is Concat!25088) (h!71352 (exprs!6127 (h!71354 zl!343)))))))

(declare-fun b!6339639 () Bool)

(declare-fun c!1152503 () Bool)

(assert (=> b!6339639 (= c!1152503 ((_ is Star!16243) (h!71352 (exprs!6127 (h!71354 zl!343)))))))

(assert (=> b!6339639 (= e!3850770 e!3850767)))

(assert (= (and d!1989791 c!1152504) b!6339632))

(assert (= (and d!1989791 (not c!1152504)) b!6339634))

(assert (= (and b!6339634 c!1152506) b!6339635))

(assert (= (and b!6339634 (not c!1152506)) b!6339637))

(assert (= (and b!6339637 res!2608966) b!6339629))

(assert (= (and b!6339637 c!1152507) b!6339631))

(assert (= (and b!6339637 (not c!1152507)) b!6339638))

(assert (= (and b!6339638 c!1152505) b!6339633))

(assert (= (and b!6339638 (not c!1152505)) b!6339639))

(assert (= (and b!6339639 c!1152503) b!6339630))

(assert (= (and b!6339639 (not c!1152503)) b!6339636))

(assert (= (or b!6339633 b!6339630) bm!540226))

(assert (= (or b!6339633 b!6339630) bm!540225))

(assert (= (or b!6339631 bm!540226) bm!540221))

(assert (= (or b!6339631 bm!540225) bm!540224))

(assert (= (or b!6339635 b!6339631) bm!540223))

(assert (= (or b!6339635 bm!540224) bm!540222))

(declare-fun m!7148506 () Bool)

(assert (=> b!6339632 m!7148506))

(declare-fun m!7148508 () Bool)

(assert (=> bm!540221 m!7148508))

(declare-fun m!7148510 () Bool)

(assert (=> bm!540223 m!7148510))

(declare-fun m!7148512 () Bool)

(assert (=> b!6339629 m!7148512))

(declare-fun m!7148514 () Bool)

(assert (=> bm!540222 m!7148514))

(assert (=> b!6339546 d!1989791))

(declare-fun bm!540227 () Bool)

(declare-fun call!540232 () (InoxSet Context!11254))

(assert (=> bm!540227 (= call!540232 (derivationStepZipperDown!1491 (h!71352 (exprs!6127 lt!2362119)) (Context!11255 (t!378614 (exprs!6127 lt!2362119))) (h!71353 s!2326)))))

(declare-fun b!6339644 () Bool)

(declare-fun e!3850775 () (InoxSet Context!11254))

(assert (=> b!6339644 (= e!3850775 ((as const (Array Context!11254 Bool)) false))))

(declare-fun b!6339645 () Bool)

(assert (=> b!6339645 (= e!3850775 call!540232)))

(declare-fun b!6339646 () Bool)

(declare-fun e!3850776 () Bool)

(assert (=> b!6339646 (= e!3850776 (nullable!6236 (h!71352 (exprs!6127 lt!2362119))))))

(declare-fun b!6339647 () Bool)

(declare-fun e!3850774 () (InoxSet Context!11254))

(assert (=> b!6339647 (= e!3850774 ((_ map or) call!540232 (derivationStepZipperUp!1417 (Context!11255 (t!378614 (exprs!6127 lt!2362119))) (h!71353 s!2326))))))

(declare-fun b!6339648 () Bool)

(assert (=> b!6339648 (= e!3850774 e!3850775)))

(declare-fun c!1152514 () Bool)

(assert (=> b!6339648 (= c!1152514 ((_ is Cons!64904) (exprs!6127 lt!2362119)))))

(declare-fun d!1989795 () Bool)

(declare-fun c!1152515 () Bool)

(assert (=> d!1989795 (= c!1152515 e!3850776)))

(declare-fun res!2608967 () Bool)

(assert (=> d!1989795 (=> (not res!2608967) (not e!3850776))))

(assert (=> d!1989795 (= res!2608967 ((_ is Cons!64904) (exprs!6127 lt!2362119)))))

(assert (=> d!1989795 (= (derivationStepZipperUp!1417 lt!2362119 (h!71353 s!2326)) e!3850774)))

(assert (= (and d!1989795 res!2608967) b!6339646))

(assert (= (and d!1989795 c!1152515) b!6339647))

(assert (= (and d!1989795 (not c!1152515)) b!6339648))

(assert (= (and b!6339648 c!1152514) b!6339645))

(assert (= (and b!6339648 (not c!1152514)) b!6339644))

(assert (= (or b!6339647 b!6339645) bm!540227))

(declare-fun m!7148516 () Bool)

(assert (=> bm!540227 m!7148516))

(declare-fun m!7148518 () Bool)

(assert (=> b!6339646 m!7148518))

(declare-fun m!7148520 () Bool)

(assert (=> b!6339647 m!7148520))

(assert (=> b!6339546 d!1989795))

(declare-fun bm!540228 () Bool)

(declare-fun call!540233 () (InoxSet Context!11254))

(assert (=> bm!540228 (= call!540233 (derivationStepZipperDown!1491 (h!71352 (exprs!6127 (Context!11255 (Cons!64904 (h!71352 (exprs!6127 (h!71354 zl!343))) (t!378614 (exprs!6127 (h!71354 zl!343))))))) (Context!11255 (t!378614 (exprs!6127 (Context!11255 (Cons!64904 (h!71352 (exprs!6127 (h!71354 zl!343))) (t!378614 (exprs!6127 (h!71354 zl!343)))))))) (h!71353 s!2326)))))

(declare-fun b!6339649 () Bool)

(declare-fun e!3850778 () (InoxSet Context!11254))

(assert (=> b!6339649 (= e!3850778 ((as const (Array Context!11254 Bool)) false))))

(declare-fun b!6339650 () Bool)

(assert (=> b!6339650 (= e!3850778 call!540233)))

(declare-fun b!6339651 () Bool)

(declare-fun e!3850779 () Bool)

(assert (=> b!6339651 (= e!3850779 (nullable!6236 (h!71352 (exprs!6127 (Context!11255 (Cons!64904 (h!71352 (exprs!6127 (h!71354 zl!343))) (t!378614 (exprs!6127 (h!71354 zl!343)))))))))))

(declare-fun e!3850777 () (InoxSet Context!11254))

(declare-fun b!6339652 () Bool)

(assert (=> b!6339652 (= e!3850777 ((_ map or) call!540233 (derivationStepZipperUp!1417 (Context!11255 (t!378614 (exprs!6127 (Context!11255 (Cons!64904 (h!71352 (exprs!6127 (h!71354 zl!343))) (t!378614 (exprs!6127 (h!71354 zl!343)))))))) (h!71353 s!2326))))))

(declare-fun b!6339653 () Bool)

(assert (=> b!6339653 (= e!3850777 e!3850778)))

(declare-fun c!1152516 () Bool)

(assert (=> b!6339653 (= c!1152516 ((_ is Cons!64904) (exprs!6127 (Context!11255 (Cons!64904 (h!71352 (exprs!6127 (h!71354 zl!343))) (t!378614 (exprs!6127 (h!71354 zl!343))))))))))

(declare-fun d!1989797 () Bool)

(declare-fun c!1152517 () Bool)

(assert (=> d!1989797 (= c!1152517 e!3850779)))

(declare-fun res!2608968 () Bool)

(assert (=> d!1989797 (=> (not res!2608968) (not e!3850779))))

(assert (=> d!1989797 (= res!2608968 ((_ is Cons!64904) (exprs!6127 (Context!11255 (Cons!64904 (h!71352 (exprs!6127 (h!71354 zl!343))) (t!378614 (exprs!6127 (h!71354 zl!343))))))))))

(assert (=> d!1989797 (= (derivationStepZipperUp!1417 (Context!11255 (Cons!64904 (h!71352 (exprs!6127 (h!71354 zl!343))) (t!378614 (exprs!6127 (h!71354 zl!343))))) (h!71353 s!2326)) e!3850777)))

(assert (= (and d!1989797 res!2608968) b!6339651))

(assert (= (and d!1989797 c!1152517) b!6339652))

(assert (= (and d!1989797 (not c!1152517)) b!6339653))

(assert (= (and b!6339653 c!1152516) b!6339650))

(assert (= (and b!6339653 (not c!1152516)) b!6339649))

(assert (= (or b!6339652 b!6339650) bm!540228))

(declare-fun m!7148522 () Bool)

(assert (=> bm!540228 m!7148522))

(declare-fun m!7148524 () Bool)

(assert (=> b!6339651 m!7148524))

(declare-fun m!7148526 () Bool)

(assert (=> b!6339652 m!7148526))

(assert (=> b!6339546 d!1989797))

(declare-fun d!1989799 () Bool)

(declare-fun e!3850800 () Bool)

(assert (=> d!1989799 e!3850800))

(declare-fun res!2608977 () Bool)

(assert (=> d!1989799 (=> (not res!2608977) (not e!3850800))))

(declare-fun lt!2362158 () Regex!16243)

(assert (=> d!1989799 (= res!2608977 (validRegex!7979 lt!2362158))))

(declare-fun e!3850801 () Regex!16243)

(assert (=> d!1989799 (= lt!2362158 e!3850801)))

(declare-fun c!1152532 () Bool)

(declare-fun e!3850799 () Bool)

(assert (=> d!1989799 (= c!1152532 e!3850799)))

(declare-fun res!2608978 () Bool)

(assert (=> d!1989799 (=> (not res!2608978) (not e!3850799))))

(assert (=> d!1989799 (= res!2608978 ((_ is Cons!64904) (unfocusZipperList!1664 zl!343)))))

(declare-fun lambda!348219 () Int)

(declare-fun forall!15398 (List!65028 Int) Bool)

(assert (=> d!1989799 (forall!15398 (unfocusZipperList!1664 zl!343) lambda!348219)))

(assert (=> d!1989799 (= (generalisedUnion!2087 (unfocusZipperList!1664 zl!343)) lt!2362158)))

(declare-fun b!6339684 () Bool)

(declare-fun e!3850802 () Bool)

(declare-fun e!3850803 () Bool)

(assert (=> b!6339684 (= e!3850802 e!3850803)))

(declare-fun c!1152530 () Bool)

(declare-fun tail!12062 (List!65028) List!65028)

(assert (=> b!6339684 (= c!1152530 (isEmpty!36981 (tail!12062 (unfocusZipperList!1664 zl!343))))))

(declare-fun b!6339685 () Bool)

(assert (=> b!6339685 (= e!3850799 (isEmpty!36981 (t!378614 (unfocusZipperList!1664 zl!343))))))

(declare-fun b!6339686 () Bool)

(declare-fun e!3850798 () Regex!16243)

(assert (=> b!6339686 (= e!3850798 (Union!16243 (h!71352 (unfocusZipperList!1664 zl!343)) (generalisedUnion!2087 (t!378614 (unfocusZipperList!1664 zl!343)))))))

(declare-fun b!6339687 () Bool)

(assert (=> b!6339687 (= e!3850801 e!3850798)))

(declare-fun c!1152531 () Bool)

(assert (=> b!6339687 (= c!1152531 ((_ is Cons!64904) (unfocusZipperList!1664 zl!343)))))

(declare-fun b!6339688 () Bool)

(declare-fun isUnion!1081 (Regex!16243) Bool)

(assert (=> b!6339688 (= e!3850803 (isUnion!1081 lt!2362158))))

(declare-fun b!6339689 () Bool)

(declare-fun head!12977 (List!65028) Regex!16243)

(assert (=> b!6339689 (= e!3850803 (= lt!2362158 (head!12977 (unfocusZipperList!1664 zl!343))))))

(declare-fun b!6339690 () Bool)

(assert (=> b!6339690 (= e!3850801 (h!71352 (unfocusZipperList!1664 zl!343)))))

(declare-fun b!6339691 () Bool)

(assert (=> b!6339691 (= e!3850800 e!3850802)))

(declare-fun c!1152533 () Bool)

(assert (=> b!6339691 (= c!1152533 (isEmpty!36981 (unfocusZipperList!1664 zl!343)))))

(declare-fun b!6339692 () Bool)

(declare-fun isEmptyLang!1651 (Regex!16243) Bool)

(assert (=> b!6339692 (= e!3850802 (isEmptyLang!1651 lt!2362158))))

(declare-fun b!6339693 () Bool)

(assert (=> b!6339693 (= e!3850798 EmptyLang!16243)))

(assert (= (and d!1989799 res!2608978) b!6339685))

(assert (= (and d!1989799 c!1152532) b!6339690))

(assert (= (and d!1989799 (not c!1152532)) b!6339687))

(assert (= (and b!6339687 c!1152531) b!6339686))

(assert (= (and b!6339687 (not c!1152531)) b!6339693))

(assert (= (and d!1989799 res!2608977) b!6339691))

(assert (= (and b!6339691 c!1152533) b!6339692))

(assert (= (and b!6339691 (not c!1152533)) b!6339684))

(assert (= (and b!6339684 c!1152530) b!6339689))

(assert (= (and b!6339684 (not c!1152530)) b!6339688))

(declare-fun m!7148552 () Bool)

(assert (=> d!1989799 m!7148552))

(assert (=> d!1989799 m!7148450))

(declare-fun m!7148554 () Bool)

(assert (=> d!1989799 m!7148554))

(assert (=> b!6339684 m!7148450))

(declare-fun m!7148556 () Bool)

(assert (=> b!6339684 m!7148556))

(assert (=> b!6339684 m!7148556))

(declare-fun m!7148558 () Bool)

(assert (=> b!6339684 m!7148558))

(declare-fun m!7148560 () Bool)

(assert (=> b!6339692 m!7148560))

(assert (=> b!6339691 m!7148450))

(declare-fun m!7148562 () Bool)

(assert (=> b!6339691 m!7148562))

(declare-fun m!7148564 () Bool)

(assert (=> b!6339688 m!7148564))

(declare-fun m!7148566 () Bool)

(assert (=> b!6339686 m!7148566))

(declare-fun m!7148568 () Bool)

(assert (=> b!6339685 m!7148568))

(assert (=> b!6339689 m!7148450))

(declare-fun m!7148570 () Bool)

(assert (=> b!6339689 m!7148570))

(assert (=> b!6339527 d!1989799))

(declare-fun bs!1587450 () Bool)

(declare-fun d!1989805 () Bool)

(assert (= bs!1587450 (and d!1989805 d!1989799)))

(declare-fun lambda!348224 () Int)

(assert (=> bs!1587450 (= lambda!348224 lambda!348219)))

(declare-fun lt!2362161 () List!65028)

(assert (=> d!1989805 (forall!15398 lt!2362161 lambda!348224)))

(declare-fun e!3850822 () List!65028)

(assert (=> d!1989805 (= lt!2362161 e!3850822)))

(declare-fun c!1152544 () Bool)

(assert (=> d!1989805 (= c!1152544 ((_ is Cons!64906) zl!343))))

(assert (=> d!1989805 (= (unfocusZipperList!1664 zl!343) lt!2362161)))

(declare-fun b!6339726 () Bool)

(assert (=> b!6339726 (= e!3850822 (Cons!64904 (generalisedConcat!1840 (exprs!6127 (h!71354 zl!343))) (unfocusZipperList!1664 (t!378616 zl!343))))))

(declare-fun b!6339727 () Bool)

(assert (=> b!6339727 (= e!3850822 Nil!64904)))

(assert (= (and d!1989805 c!1152544) b!6339726))

(assert (= (and d!1989805 (not c!1152544)) b!6339727))

(declare-fun m!7148572 () Bool)

(assert (=> d!1989805 m!7148572))

(assert (=> b!6339726 m!7148468))

(declare-fun m!7148574 () Bool)

(assert (=> b!6339726 m!7148574))

(assert (=> b!6339527 d!1989805))

(declare-fun d!1989807 () Bool)

(declare-fun e!3850827 () Bool)

(assert (=> d!1989807 (= (matchZipper!2255 ((_ map or) lt!2362112 lt!2362128) (t!378615 s!2326)) e!3850827)))

(declare-fun res!2608997 () Bool)

(assert (=> d!1989807 (=> res!2608997 e!3850827)))

(assert (=> d!1989807 (= res!2608997 (matchZipper!2255 lt!2362112 (t!378615 s!2326)))))

(declare-fun lt!2362164 () Unit!158303)

(declare-fun choose!46992 ((InoxSet Context!11254) (InoxSet Context!11254) List!65029) Unit!158303)

(assert (=> d!1989807 (= lt!2362164 (choose!46992 lt!2362112 lt!2362128 (t!378615 s!2326)))))

(assert (=> d!1989807 (= (lemmaZipperConcatMatchesSameAsBothZippers!1074 lt!2362112 lt!2362128 (t!378615 s!2326)) lt!2362164)))

(declare-fun b!6339734 () Bool)

(assert (=> b!6339734 (= e!3850827 (matchZipper!2255 lt!2362128 (t!378615 s!2326)))))

(assert (= (and d!1989807 (not res!2608997)) b!6339734))

(assert (=> d!1989807 m!7148442))

(assert (=> d!1989807 m!7148440))

(declare-fun m!7148576 () Bool)

(assert (=> d!1989807 m!7148576))

(assert (=> b!6339734 m!7148372))

(assert (=> b!6339526 d!1989807))

(declare-fun d!1989809 () Bool)

(declare-fun c!1152551 () Bool)

(declare-fun isEmpty!36984 (List!65029) Bool)

(assert (=> d!1989809 (= c!1152551 (isEmpty!36984 (t!378615 s!2326)))))

(declare-fun e!3850837 () Bool)

(assert (=> d!1989809 (= (matchZipper!2255 lt!2362112 (t!378615 s!2326)) e!3850837)))

(declare-fun b!6339750 () Bool)

(declare-fun nullableZipper!2008 ((InoxSet Context!11254)) Bool)

(assert (=> b!6339750 (= e!3850837 (nullableZipper!2008 lt!2362112))))

(declare-fun b!6339751 () Bool)

(declare-fun head!12979 (List!65029) C!32756)

(declare-fun tail!12064 (List!65029) List!65029)

(assert (=> b!6339751 (= e!3850837 (matchZipper!2255 (derivationStepZipper!2209 lt!2362112 (head!12979 (t!378615 s!2326))) (tail!12064 (t!378615 s!2326))))))

(assert (= (and d!1989809 c!1152551) b!6339750))

(assert (= (and d!1989809 (not c!1152551)) b!6339751))

(declare-fun m!7148582 () Bool)

(assert (=> d!1989809 m!7148582))

(declare-fun m!7148586 () Bool)

(assert (=> b!6339750 m!7148586))

(declare-fun m!7148590 () Bool)

(assert (=> b!6339751 m!7148590))

(assert (=> b!6339751 m!7148590))

(declare-fun m!7148592 () Bool)

(assert (=> b!6339751 m!7148592))

(declare-fun m!7148594 () Bool)

(assert (=> b!6339751 m!7148594))

(assert (=> b!6339751 m!7148592))

(assert (=> b!6339751 m!7148594))

(declare-fun m!7148596 () Bool)

(assert (=> b!6339751 m!7148596))

(assert (=> b!6339526 d!1989809))

(declare-fun d!1989813 () Bool)

(declare-fun c!1152552 () Bool)

(assert (=> d!1989813 (= c!1152552 (isEmpty!36984 (t!378615 s!2326)))))

(declare-fun e!3850838 () Bool)

(assert (=> d!1989813 (= (matchZipper!2255 ((_ map or) lt!2362112 lt!2362128) (t!378615 s!2326)) e!3850838)))

(declare-fun b!6339752 () Bool)

(assert (=> b!6339752 (= e!3850838 (nullableZipper!2008 ((_ map or) lt!2362112 lt!2362128)))))

(declare-fun b!6339753 () Bool)

(assert (=> b!6339753 (= e!3850838 (matchZipper!2255 (derivationStepZipper!2209 ((_ map or) lt!2362112 lt!2362128) (head!12979 (t!378615 s!2326))) (tail!12064 (t!378615 s!2326))))))

(assert (= (and d!1989813 c!1152552) b!6339752))

(assert (= (and d!1989813 (not c!1152552)) b!6339753))

(assert (=> d!1989813 m!7148582))

(declare-fun m!7148598 () Bool)

(assert (=> b!6339752 m!7148598))

(assert (=> b!6339753 m!7148590))

(assert (=> b!6339753 m!7148590))

(declare-fun m!7148600 () Bool)

(assert (=> b!6339753 m!7148600))

(assert (=> b!6339753 m!7148594))

(assert (=> b!6339753 m!7148600))

(assert (=> b!6339753 m!7148594))

(declare-fun m!7148602 () Bool)

(assert (=> b!6339753 m!7148602))

(assert (=> b!6339526 d!1989813))

(declare-fun d!1989815 () Bool)

(declare-fun lt!2362167 () Int)

(assert (=> d!1989815 (>= lt!2362167 0)))

(declare-fun e!3850841 () Int)

(assert (=> d!1989815 (= lt!2362167 e!3850841)))

(declare-fun c!1152556 () Bool)

(assert (=> d!1989815 (= c!1152556 ((_ is Cons!64904) (exprs!6127 lt!2362117)))))

(assert (=> d!1989815 (= (contextDepthTotal!352 lt!2362117) lt!2362167)))

(declare-fun b!6339758 () Bool)

(declare-fun regexDepthTotal!200 (Regex!16243) Int)

(assert (=> b!6339758 (= e!3850841 (+ (regexDepthTotal!200 (h!71352 (exprs!6127 lt!2362117))) (contextDepthTotal!352 (Context!11255 (t!378614 (exprs!6127 lt!2362117))))))))

(declare-fun b!6339759 () Bool)

(assert (=> b!6339759 (= e!3850841 1)))

(assert (= (and d!1989815 c!1152556) b!6339758))

(assert (= (and d!1989815 (not c!1152556)) b!6339759))

(declare-fun m!7148604 () Bool)

(assert (=> b!6339758 m!7148604))

(declare-fun m!7148606 () Bool)

(assert (=> b!6339758 m!7148606))

(assert (=> b!6339536 d!1989815))

(declare-fun d!1989817 () Bool)

(declare-fun lt!2362168 () Int)

(assert (=> d!1989817 (>= lt!2362168 0)))

(declare-fun e!3850842 () Int)

(assert (=> d!1989817 (= lt!2362168 e!3850842)))

(declare-fun c!1152557 () Bool)

(assert (=> d!1989817 (= c!1152557 ((_ is Cons!64904) (exprs!6127 (h!71354 zl!343))))))

(assert (=> d!1989817 (= (contextDepthTotal!352 (h!71354 zl!343)) lt!2362168)))

(declare-fun b!6339760 () Bool)

(assert (=> b!6339760 (= e!3850842 (+ (regexDepthTotal!200 (h!71352 (exprs!6127 (h!71354 zl!343)))) (contextDepthTotal!352 (Context!11255 (t!378614 (exprs!6127 (h!71354 zl!343)))))))))

(declare-fun b!6339761 () Bool)

(assert (=> b!6339761 (= e!3850842 1)))

(assert (= (and d!1989817 c!1152557) b!6339760))

(assert (= (and d!1989817 (not c!1152557)) b!6339761))

(declare-fun m!7148608 () Bool)

(assert (=> b!6339760 m!7148608))

(declare-fun m!7148610 () Bool)

(assert (=> b!6339760 m!7148610))

(assert (=> b!6339536 d!1989817))

(declare-fun d!1989819 () Bool)

(assert (=> d!1989819 (= (isEmpty!36981 (t!378614 (exprs!6127 (h!71354 zl!343)))) ((_ is Nil!64904) (t!378614 (exprs!6127 (h!71354 zl!343)))))))

(assert (=> b!6339535 d!1989819))

(declare-fun d!1989821 () Bool)

(assert (=> d!1989821 (= (isEmpty!36982 (t!378616 zl!343)) ((_ is Nil!64906) (t!378616 zl!343)))))

(assert (=> b!6339540 d!1989821))

(declare-fun b!6339822 () Bool)

(declare-fun e!3850882 () Bool)

(declare-fun e!3850880 () Bool)

(assert (=> b!6339822 (= e!3850882 e!3850880)))

(declare-fun c!1152572 () Bool)

(assert (=> b!6339822 (= c!1152572 ((_ is Union!16243) lt!2362125))))

(declare-fun b!6339823 () Bool)

(declare-fun e!3850879 () Bool)

(assert (=> b!6339823 (= e!3850879 e!3850882)))

(declare-fun c!1152571 () Bool)

(assert (=> b!6339823 (= c!1152571 ((_ is Star!16243) lt!2362125))))

(declare-fun b!6339824 () Bool)

(declare-fun res!2609035 () Bool)

(declare-fun e!3850881 () Bool)

(assert (=> b!6339824 (=> (not res!2609035) (not e!3850881))))

(declare-fun call!540251 () Bool)

(assert (=> b!6339824 (= res!2609035 call!540251)))

(assert (=> b!6339824 (= e!3850880 e!3850881)))

(declare-fun bm!540244 () Bool)

(declare-fun call!540249 () Bool)

(assert (=> bm!540244 (= call!540249 (validRegex!7979 (ite c!1152572 (regTwo!32999 lt!2362125) (regTwo!32998 lt!2362125))))))

(declare-fun b!6339826 () Bool)

(assert (=> b!6339826 (= e!3850881 call!540249)))

(declare-fun call!540250 () Bool)

(declare-fun bm!540245 () Bool)

(assert (=> bm!540245 (= call!540250 (validRegex!7979 (ite c!1152571 (reg!16572 lt!2362125) (ite c!1152572 (regOne!32999 lt!2362125) (regOne!32998 lt!2362125)))))))

(declare-fun b!6339827 () Bool)

(declare-fun e!3850884 () Bool)

(assert (=> b!6339827 (= e!3850884 call!540249)))

(declare-fun b!6339828 () Bool)

(declare-fun e!3850878 () Bool)

(assert (=> b!6339828 (= e!3850878 e!3850884)))

(declare-fun res!2609037 () Bool)

(assert (=> b!6339828 (=> (not res!2609037) (not e!3850884))))

(assert (=> b!6339828 (= res!2609037 call!540251)))

(declare-fun b!6339829 () Bool)

(declare-fun res!2609038 () Bool)

(assert (=> b!6339829 (=> res!2609038 e!3850878)))

(assert (=> b!6339829 (= res!2609038 (not ((_ is Concat!25088) lt!2362125)))))

(assert (=> b!6339829 (= e!3850880 e!3850878)))

(declare-fun bm!540246 () Bool)

(assert (=> bm!540246 (= call!540251 call!540250)))

(declare-fun b!6339830 () Bool)

(declare-fun e!3850883 () Bool)

(assert (=> b!6339830 (= e!3850882 e!3850883)))

(declare-fun res!2609039 () Bool)

(assert (=> b!6339830 (= res!2609039 (not (nullable!6236 (reg!16572 lt!2362125))))))

(assert (=> b!6339830 (=> (not res!2609039) (not e!3850883))))

(declare-fun b!6339825 () Bool)

(assert (=> b!6339825 (= e!3850883 call!540250)))

(declare-fun d!1989823 () Bool)

(declare-fun res!2609036 () Bool)

(assert (=> d!1989823 (=> res!2609036 e!3850879)))

(assert (=> d!1989823 (= res!2609036 ((_ is ElementMatch!16243) lt!2362125))))

(assert (=> d!1989823 (= (validRegex!7979 lt!2362125) e!3850879)))

(assert (= (and d!1989823 (not res!2609036)) b!6339823))

(assert (= (and b!6339823 c!1152571) b!6339830))

(assert (= (and b!6339823 (not c!1152571)) b!6339822))

(assert (= (and b!6339830 res!2609039) b!6339825))

(assert (= (and b!6339822 c!1152572) b!6339824))

(assert (= (and b!6339822 (not c!1152572)) b!6339829))

(assert (= (and b!6339824 res!2609035) b!6339826))

(assert (= (and b!6339829 (not res!2609038)) b!6339828))

(assert (= (and b!6339828 res!2609037) b!6339827))

(assert (= (or b!6339826 b!6339827) bm!540244))

(assert (= (or b!6339824 b!6339828) bm!540246))

(assert (= (or b!6339825 bm!540246) bm!540245))

(declare-fun m!7148620 () Bool)

(assert (=> bm!540244 m!7148620))

(declare-fun m!7148624 () Bool)

(assert (=> bm!540245 m!7148624))

(declare-fun m!7148628 () Bool)

(assert (=> b!6339830 m!7148628))

(assert (=> b!6339539 d!1989823))

(declare-fun b!6339875 () Bool)

(declare-fun e!3850914 () Bool)

(assert (=> b!6339875 (= e!3850914 (= (head!12979 s!2326) (c!1152474 lt!2362125)))))

(declare-fun b!6339876 () Bool)

(declare-fun e!3850912 () Bool)

(declare-fun lt!2362178 () Bool)

(assert (=> b!6339876 (= e!3850912 (not lt!2362178))))

(declare-fun b!6339877 () Bool)

(declare-fun e!3850909 () Bool)

(declare-fun e!3850908 () Bool)

(assert (=> b!6339877 (= e!3850909 e!3850908)))

(declare-fun res!2609062 () Bool)

(assert (=> b!6339877 (=> (not res!2609062) (not e!3850908))))

(assert (=> b!6339877 (= res!2609062 (not lt!2362178))))

(declare-fun b!6339878 () Bool)

(declare-fun res!2609063 () Bool)

(assert (=> b!6339878 (=> (not res!2609063) (not e!3850914))))

(assert (=> b!6339878 (= res!2609063 (isEmpty!36984 (tail!12064 s!2326)))))

(declare-fun b!6339879 () Bool)

(declare-fun e!3850910 () Bool)

(assert (=> b!6339879 (= e!3850910 (not (= (head!12979 s!2326) (c!1152474 lt!2362125))))))

(declare-fun bm!540249 () Bool)

(declare-fun call!540254 () Bool)

(assert (=> bm!540249 (= call!540254 (isEmpty!36984 s!2326))))

(declare-fun b!6339880 () Bool)

(declare-fun e!3850913 () Bool)

(assert (=> b!6339880 (= e!3850913 e!3850912)))

(declare-fun c!1152587 () Bool)

(assert (=> b!6339880 (= c!1152587 ((_ is EmptyLang!16243) lt!2362125))))

(declare-fun d!1989825 () Bool)

(assert (=> d!1989825 e!3850913))

(declare-fun c!1152586 () Bool)

(assert (=> d!1989825 (= c!1152586 ((_ is EmptyExpr!16243) lt!2362125))))

(declare-fun e!3850911 () Bool)

(assert (=> d!1989825 (= lt!2362178 e!3850911)))

(declare-fun c!1152588 () Bool)

(assert (=> d!1989825 (= c!1152588 (isEmpty!36984 s!2326))))

(assert (=> d!1989825 (validRegex!7979 lt!2362125)))

(assert (=> d!1989825 (= (matchR!8426 lt!2362125 s!2326) lt!2362178)))

(declare-fun b!6339881 () Bool)

(declare-fun res!2609059 () Bool)

(assert (=> b!6339881 (=> res!2609059 e!3850910)))

(assert (=> b!6339881 (= res!2609059 (not (isEmpty!36984 (tail!12064 s!2326))))))

(declare-fun b!6339882 () Bool)

(declare-fun res!2609064 () Bool)

(assert (=> b!6339882 (=> res!2609064 e!3850909)))

(assert (=> b!6339882 (= res!2609064 (not ((_ is ElementMatch!16243) lt!2362125)))))

(assert (=> b!6339882 (= e!3850912 e!3850909)))

(declare-fun b!6339883 () Bool)

(assert (=> b!6339883 (= e!3850913 (= lt!2362178 call!540254))))

(declare-fun b!6339884 () Bool)

(declare-fun res!2609058 () Bool)

(assert (=> b!6339884 (=> res!2609058 e!3850909)))

(assert (=> b!6339884 (= res!2609058 e!3850914)))

(declare-fun res!2609065 () Bool)

(assert (=> b!6339884 (=> (not res!2609065) (not e!3850914))))

(assert (=> b!6339884 (= res!2609065 lt!2362178)))

(declare-fun b!6339885 () Bool)

(declare-fun derivativeStep!4948 (Regex!16243 C!32756) Regex!16243)

(assert (=> b!6339885 (= e!3850911 (matchR!8426 (derivativeStep!4948 lt!2362125 (head!12979 s!2326)) (tail!12064 s!2326)))))

(declare-fun b!6339886 () Bool)

(assert (=> b!6339886 (= e!3850911 (nullable!6236 lt!2362125))))

(declare-fun b!6339887 () Bool)

(assert (=> b!6339887 (= e!3850908 e!3850910)))

(declare-fun res!2609060 () Bool)

(assert (=> b!6339887 (=> res!2609060 e!3850910)))

(assert (=> b!6339887 (= res!2609060 call!540254)))

(declare-fun b!6339888 () Bool)

(declare-fun res!2609061 () Bool)

(assert (=> b!6339888 (=> (not res!2609061) (not e!3850914))))

(assert (=> b!6339888 (= res!2609061 (not call!540254))))

(assert (= (and d!1989825 c!1152588) b!6339886))

(assert (= (and d!1989825 (not c!1152588)) b!6339885))

(assert (= (and d!1989825 c!1152586) b!6339883))

(assert (= (and d!1989825 (not c!1152586)) b!6339880))

(assert (= (and b!6339880 c!1152587) b!6339876))

(assert (= (and b!6339880 (not c!1152587)) b!6339882))

(assert (= (and b!6339882 (not res!2609064)) b!6339884))

(assert (= (and b!6339884 res!2609065) b!6339888))

(assert (= (and b!6339888 res!2609061) b!6339878))

(assert (= (and b!6339878 res!2609063) b!6339875))

(assert (= (and b!6339884 (not res!2609058)) b!6339877))

(assert (= (and b!6339877 res!2609062) b!6339887))

(assert (= (and b!6339887 (not res!2609060)) b!6339881))

(assert (= (and b!6339881 (not res!2609059)) b!6339879))

(assert (= (or b!6339883 b!6339887 b!6339888) bm!540249))

(declare-fun m!7148660 () Bool)

(assert (=> b!6339875 m!7148660))

(assert (=> b!6339879 m!7148660))

(declare-fun m!7148662 () Bool)

(assert (=> b!6339878 m!7148662))

(assert (=> b!6339878 m!7148662))

(declare-fun m!7148664 () Bool)

(assert (=> b!6339878 m!7148664))

(declare-fun m!7148666 () Bool)

(assert (=> b!6339886 m!7148666))

(declare-fun m!7148668 () Bool)

(assert (=> d!1989825 m!7148668))

(assert (=> d!1989825 m!7148436))

(assert (=> bm!540249 m!7148668))

(assert (=> b!6339881 m!7148662))

(assert (=> b!6339881 m!7148662))

(assert (=> b!6339881 m!7148664))

(assert (=> b!6339885 m!7148660))

(assert (=> b!6339885 m!7148660))

(declare-fun m!7148670 () Bool)

(assert (=> b!6339885 m!7148670))

(assert (=> b!6339885 m!7148662))

(assert (=> b!6339885 m!7148670))

(assert (=> b!6339885 m!7148662))

(declare-fun m!7148672 () Bool)

(assert (=> b!6339885 m!7148672))

(assert (=> b!6339539 d!1989825))

(declare-fun d!1989837 () Bool)

(assert (=> d!1989837 (= (matchR!8426 lt!2362125 s!2326) (matchZipper!2255 lt!2362130 s!2326))))

(declare-fun lt!2362181 () Unit!158303)

(declare-fun choose!46994 ((InoxSet Context!11254) List!65030 Regex!16243 List!65029) Unit!158303)

(assert (=> d!1989837 (= lt!2362181 (choose!46994 lt!2362130 lt!2362129 lt!2362125 s!2326))))

(assert (=> d!1989837 (validRegex!7979 lt!2362125)))

(assert (=> d!1989837 (= (theoremZipperRegexEquiv!785 lt!2362130 lt!2362129 lt!2362125 s!2326) lt!2362181)))

(declare-fun bs!1587459 () Bool)

(assert (= bs!1587459 d!1989837))

(assert (=> bs!1587459 m!7148428))

(assert (=> bs!1587459 m!7148430))

(declare-fun m!7148680 () Bool)

(assert (=> bs!1587459 m!7148680))

(assert (=> bs!1587459 m!7148436))

(assert (=> b!6339539 d!1989837))

(declare-fun bs!1587461 () Bool)

(declare-fun d!1989841 () Bool)

(assert (= bs!1587461 (and d!1989841 d!1989799)))

(declare-fun lambda!348235 () Int)

(assert (=> bs!1587461 (= lambda!348235 lambda!348219)))

(declare-fun bs!1587462 () Bool)

(assert (= bs!1587462 (and d!1989841 d!1989805)))

(assert (=> bs!1587462 (= lambda!348235 lambda!348224)))

(declare-fun b!6339953 () Bool)

(declare-fun e!3850963 () Regex!16243)

(declare-fun e!3850962 () Regex!16243)

(assert (=> b!6339953 (= e!3850963 e!3850962)))

(declare-fun c!1152608 () Bool)

(assert (=> b!6339953 (= c!1152608 ((_ is Cons!64904) lt!2362118))))

(declare-fun b!6339954 () Bool)

(declare-fun e!3850961 () Bool)

(declare-fun e!3850960 () Bool)

(assert (=> b!6339954 (= e!3850961 e!3850960)))

(declare-fun c!1152606 () Bool)

(assert (=> b!6339954 (= c!1152606 (isEmpty!36981 (tail!12062 lt!2362118)))))

(declare-fun b!6339955 () Bool)

(declare-fun e!3850959 () Bool)

(assert (=> b!6339955 (= e!3850959 e!3850961)))

(declare-fun c!1152607 () Bool)

(assert (=> b!6339955 (= c!1152607 (isEmpty!36981 lt!2362118))))

(declare-fun b!6339956 () Bool)

(declare-fun e!3850958 () Bool)

(assert (=> b!6339956 (= e!3850958 (isEmpty!36981 (t!378614 lt!2362118)))))

(declare-fun b!6339957 () Bool)

(declare-fun lt!2362191 () Regex!16243)

(assert (=> b!6339957 (= e!3850960 (= lt!2362191 (head!12977 lt!2362118)))))

(declare-fun b!6339959 () Bool)

(declare-fun isConcat!1168 (Regex!16243) Bool)

(assert (=> b!6339959 (= e!3850960 (isConcat!1168 lt!2362191))))

(declare-fun b!6339958 () Bool)

(assert (=> b!6339958 (= e!3850963 (h!71352 lt!2362118))))

(assert (=> d!1989841 e!3850959))

(declare-fun res!2609096 () Bool)

(assert (=> d!1989841 (=> (not res!2609096) (not e!3850959))))

(assert (=> d!1989841 (= res!2609096 (validRegex!7979 lt!2362191))))

(assert (=> d!1989841 (= lt!2362191 e!3850963)))

(declare-fun c!1152609 () Bool)

(assert (=> d!1989841 (= c!1152609 e!3850958)))

(declare-fun res!2609097 () Bool)

(assert (=> d!1989841 (=> (not res!2609097) (not e!3850958))))

(assert (=> d!1989841 (= res!2609097 ((_ is Cons!64904) lt!2362118))))

(assert (=> d!1989841 (forall!15398 lt!2362118 lambda!348235)))

(assert (=> d!1989841 (= (generalisedConcat!1840 lt!2362118) lt!2362191)))

(declare-fun b!6339960 () Bool)

(assert (=> b!6339960 (= e!3850962 EmptyExpr!16243)))

(declare-fun b!6339961 () Bool)

(assert (=> b!6339961 (= e!3850962 (Concat!25088 (h!71352 lt!2362118) (generalisedConcat!1840 (t!378614 lt!2362118))))))

(declare-fun b!6339962 () Bool)

(declare-fun isEmptyExpr!1645 (Regex!16243) Bool)

(assert (=> b!6339962 (= e!3850961 (isEmptyExpr!1645 lt!2362191))))

(assert (= (and d!1989841 res!2609097) b!6339956))

(assert (= (and d!1989841 c!1152609) b!6339958))

(assert (= (and d!1989841 (not c!1152609)) b!6339953))

(assert (= (and b!6339953 c!1152608) b!6339961))

(assert (= (and b!6339953 (not c!1152608)) b!6339960))

(assert (= (and d!1989841 res!2609096) b!6339955))

(assert (= (and b!6339955 c!1152607) b!6339962))

(assert (= (and b!6339955 (not c!1152607)) b!6339954))

(assert (= (and b!6339954 c!1152606) b!6339957))

(assert (= (and b!6339954 (not c!1152606)) b!6339959))

(declare-fun m!7148698 () Bool)

(assert (=> b!6339954 m!7148698))

(assert (=> b!6339954 m!7148698))

(declare-fun m!7148700 () Bool)

(assert (=> b!6339954 m!7148700))

(declare-fun m!7148702 () Bool)

(assert (=> d!1989841 m!7148702))

(declare-fun m!7148704 () Bool)

(assert (=> d!1989841 m!7148704))

(declare-fun m!7148706 () Bool)

(assert (=> b!6339956 m!7148706))

(declare-fun m!7148708 () Bool)

(assert (=> b!6339961 m!7148708))

(declare-fun m!7148710 () Bool)

(assert (=> b!6339957 m!7148710))

(declare-fun m!7148712 () Bool)

(assert (=> b!6339959 m!7148712))

(declare-fun m!7148714 () Bool)

(assert (=> b!6339962 m!7148714))

(declare-fun m!7148716 () Bool)

(assert (=> b!6339955 m!7148716))

(assert (=> b!6339539 d!1989841))

(declare-fun d!1989851 () Bool)

(declare-fun c!1152610 () Bool)

(assert (=> d!1989851 (= c!1152610 (isEmpty!36984 s!2326))))

(declare-fun e!3850964 () Bool)

(assert (=> d!1989851 (= (matchZipper!2255 lt!2362130 s!2326) e!3850964)))

(declare-fun b!6339963 () Bool)

(assert (=> b!6339963 (= e!3850964 (nullableZipper!2008 lt!2362130))))

(declare-fun b!6339964 () Bool)

(assert (=> b!6339964 (= e!3850964 (matchZipper!2255 (derivationStepZipper!2209 lt!2362130 (head!12979 s!2326)) (tail!12064 s!2326)))))

(assert (= (and d!1989851 c!1152610) b!6339963))

(assert (= (and d!1989851 (not c!1152610)) b!6339964))

(assert (=> d!1989851 m!7148668))

(declare-fun m!7148718 () Bool)

(assert (=> b!6339963 m!7148718))

(assert (=> b!6339964 m!7148660))

(assert (=> b!6339964 m!7148660))

(declare-fun m!7148720 () Bool)

(assert (=> b!6339964 m!7148720))

(assert (=> b!6339964 m!7148662))

(assert (=> b!6339964 m!7148720))

(assert (=> b!6339964 m!7148662))

(declare-fun m!7148722 () Bool)

(assert (=> b!6339964 m!7148722))

(assert (=> b!6339539 d!1989851))

(declare-fun b!6340020 () Bool)

(declare-fun e!3851000 () Bool)

(declare-fun lt!2362203 () Option!16134)

(declare-fun ++!14311 (List!65029 List!65029) List!65029)

(declare-fun get!22448 (Option!16134) tuple2!66444)

(assert (=> b!6340020 (= e!3851000 (= (++!14311 (_1!36525 (get!22448 lt!2362203)) (_2!36525 (get!22448 lt!2362203))) s!2326))))

(declare-fun b!6340021 () Bool)

(declare-fun e!3850996 () Option!16134)

(assert (=> b!6340021 (= e!3850996 None!16133)))

(declare-fun b!6340022 () Bool)

(declare-fun res!2609116 () Bool)

(assert (=> b!6340022 (=> (not res!2609116) (not e!3851000))))

(assert (=> b!6340022 (= res!2609116 (matchR!8426 (regOne!32998 r!7292) (_1!36525 (get!22448 lt!2362203))))))

(declare-fun b!6340023 () Bool)

(declare-fun e!3850998 () Option!16134)

(assert (=> b!6340023 (= e!3850998 e!3850996)))

(declare-fun c!1152632 () Bool)

(assert (=> b!6340023 (= c!1152632 ((_ is Nil!64905) s!2326))))

(declare-fun b!6340024 () Bool)

(assert (=> b!6340024 (= e!3850998 (Some!16133 (tuple2!66445 Nil!64905 s!2326)))))

(declare-fun d!1989853 () Bool)

(declare-fun e!3850997 () Bool)

(assert (=> d!1989853 e!3850997))

(declare-fun res!2609115 () Bool)

(assert (=> d!1989853 (=> res!2609115 e!3850997)))

(assert (=> d!1989853 (= res!2609115 e!3851000)))

(declare-fun res!2609117 () Bool)

(assert (=> d!1989853 (=> (not res!2609117) (not e!3851000))))

(assert (=> d!1989853 (= res!2609117 (isDefined!12837 lt!2362203))))

(assert (=> d!1989853 (= lt!2362203 e!3850998)))

(declare-fun c!1152631 () Bool)

(declare-fun e!3850999 () Bool)

(assert (=> d!1989853 (= c!1152631 e!3850999)))

(declare-fun res!2609118 () Bool)

(assert (=> d!1989853 (=> (not res!2609118) (not e!3850999))))

(assert (=> d!1989853 (= res!2609118 (matchR!8426 (regOne!32998 r!7292) Nil!64905))))

(assert (=> d!1989853 (validRegex!7979 (regOne!32998 r!7292))))

(assert (=> d!1989853 (= (findConcatSeparation!2548 (regOne!32998 r!7292) (regTwo!32998 r!7292) Nil!64905 s!2326 s!2326) lt!2362203)))

(declare-fun b!6340025 () Bool)

(declare-fun res!2609119 () Bool)

(assert (=> b!6340025 (=> (not res!2609119) (not e!3851000))))

(assert (=> b!6340025 (= res!2609119 (matchR!8426 (regTwo!32998 r!7292) (_2!36525 (get!22448 lt!2362203))))))

(declare-fun b!6340026 () Bool)

(assert (=> b!6340026 (= e!3850999 (matchR!8426 (regTwo!32998 r!7292) s!2326))))

(declare-fun b!6340027 () Bool)

(declare-fun lt!2362205 () Unit!158303)

(declare-fun lt!2362204 () Unit!158303)

(assert (=> b!6340027 (= lt!2362205 lt!2362204)))

(assert (=> b!6340027 (= (++!14311 (++!14311 Nil!64905 (Cons!64905 (h!71353 s!2326) Nil!64905)) (t!378615 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2406 (List!65029 C!32756 List!65029 List!65029) Unit!158303)

(assert (=> b!6340027 (= lt!2362204 (lemmaMoveElementToOtherListKeepsConcatEq!2406 Nil!64905 (h!71353 s!2326) (t!378615 s!2326) s!2326))))

(assert (=> b!6340027 (= e!3850996 (findConcatSeparation!2548 (regOne!32998 r!7292) (regTwo!32998 r!7292) (++!14311 Nil!64905 (Cons!64905 (h!71353 s!2326) Nil!64905)) (t!378615 s!2326) s!2326))))

(declare-fun b!6340028 () Bool)

(assert (=> b!6340028 (= e!3850997 (not (isDefined!12837 lt!2362203)))))

(assert (= (and d!1989853 res!2609118) b!6340026))

(assert (= (and d!1989853 c!1152631) b!6340024))

(assert (= (and d!1989853 (not c!1152631)) b!6340023))

(assert (= (and b!6340023 c!1152632) b!6340021))

(assert (= (and b!6340023 (not c!1152632)) b!6340027))

(assert (= (and d!1989853 res!2609117) b!6340022))

(assert (= (and b!6340022 res!2609116) b!6340025))

(assert (= (and b!6340025 res!2609119) b!6340020))

(assert (= (and d!1989853 (not res!2609115)) b!6340028))

(declare-fun m!7148736 () Bool)

(assert (=> b!6340027 m!7148736))

(assert (=> b!6340027 m!7148736))

(declare-fun m!7148738 () Bool)

(assert (=> b!6340027 m!7148738))

(declare-fun m!7148740 () Bool)

(assert (=> b!6340027 m!7148740))

(assert (=> b!6340027 m!7148736))

(declare-fun m!7148742 () Bool)

(assert (=> b!6340027 m!7148742))

(declare-fun m!7148744 () Bool)

(assert (=> b!6340025 m!7148744))

(declare-fun m!7148746 () Bool)

(assert (=> b!6340025 m!7148746))

(declare-fun m!7148748 () Bool)

(assert (=> d!1989853 m!7148748))

(declare-fun m!7148750 () Bool)

(assert (=> d!1989853 m!7148750))

(declare-fun m!7148752 () Bool)

(assert (=> d!1989853 m!7148752))

(assert (=> b!6340020 m!7148744))

(declare-fun m!7148754 () Bool)

(assert (=> b!6340020 m!7148754))

(declare-fun m!7148756 () Bool)

(assert (=> b!6340026 m!7148756))

(assert (=> b!6340028 m!7148748))

(assert (=> b!6340022 m!7148744))

(declare-fun m!7148758 () Bool)

(assert (=> b!6340022 m!7148758))

(assert (=> b!6339529 d!1989853))

(declare-fun d!1989861 () Bool)

(declare-fun choose!46998 (Int) Bool)

(assert (=> d!1989861 (= (Exists!3313 lambda!348200) (choose!46998 lambda!348200))))

(declare-fun bs!1587468 () Bool)

(assert (= bs!1587468 d!1989861))

(declare-fun m!7148760 () Bool)

(assert (=> bs!1587468 m!7148760))

(assert (=> b!6339529 d!1989861))

(declare-fun bs!1587475 () Bool)

(declare-fun d!1989863 () Bool)

(assert (= bs!1587475 (and d!1989863 b!6339529)))

(declare-fun lambda!348247 () Int)

(assert (=> bs!1587475 (= lambda!348247 lambda!348199)))

(assert (=> bs!1587475 (not (= lambda!348247 lambda!348200))))

(assert (=> d!1989863 true))

(assert (=> d!1989863 true))

(assert (=> d!1989863 true))

(assert (=> d!1989863 (= (isDefined!12837 (findConcatSeparation!2548 (regOne!32998 r!7292) (regTwo!32998 r!7292) Nil!64905 s!2326 s!2326)) (Exists!3313 lambda!348247))))

(declare-fun lt!2362212 () Unit!158303)

(declare-fun choose!47000 (Regex!16243 Regex!16243 List!65029) Unit!158303)

(assert (=> d!1989863 (= lt!2362212 (choose!47000 (regOne!32998 r!7292) (regTwo!32998 r!7292) s!2326))))

(assert (=> d!1989863 (validRegex!7979 (regOne!32998 r!7292))))

(assert (=> d!1989863 (= (lemmaFindConcatSeparationEquivalentToExists!2312 (regOne!32998 r!7292) (regTwo!32998 r!7292) s!2326) lt!2362212)))

(declare-fun bs!1587476 () Bool)

(assert (= bs!1587476 d!1989863))

(declare-fun m!7148786 () Bool)

(assert (=> bs!1587476 m!7148786))

(assert (=> bs!1587476 m!7148752))

(declare-fun m!7148788 () Bool)

(assert (=> bs!1587476 m!7148788))

(assert (=> bs!1587476 m!7148384))

(assert (=> bs!1587476 m!7148386))

(assert (=> bs!1587476 m!7148384))

(assert (=> b!6339529 d!1989863))

(declare-fun d!1989871 () Bool)

(assert (=> d!1989871 (= (Exists!3313 lambda!348199) (choose!46998 lambda!348199))))

(declare-fun bs!1587477 () Bool)

(assert (= bs!1587477 d!1989871))

(declare-fun m!7148790 () Bool)

(assert (=> bs!1587477 m!7148790))

(assert (=> b!6339529 d!1989871))

(declare-fun bs!1587485 () Bool)

(declare-fun d!1989873 () Bool)

(assert (= bs!1587485 (and d!1989873 b!6339529)))

(declare-fun lambda!348253 () Int)

(assert (=> bs!1587485 (= lambda!348253 lambda!348199)))

(assert (=> bs!1587485 (not (= lambda!348253 lambda!348200))))

(declare-fun bs!1587486 () Bool)

(assert (= bs!1587486 (and d!1989873 d!1989863)))

(assert (=> bs!1587486 (= lambda!348253 lambda!348247)))

(assert (=> d!1989873 true))

(assert (=> d!1989873 true))

(assert (=> d!1989873 true))

(declare-fun lambda!348254 () Int)

(assert (=> bs!1587485 (not (= lambda!348254 lambda!348199))))

(assert (=> bs!1587485 (= lambda!348254 lambda!348200)))

(assert (=> bs!1587486 (not (= lambda!348254 lambda!348247))))

(declare-fun bs!1587487 () Bool)

(assert (= bs!1587487 d!1989873))

(assert (=> bs!1587487 (not (= lambda!348254 lambda!348253))))

(assert (=> d!1989873 true))

(assert (=> d!1989873 true))

(assert (=> d!1989873 true))

(assert (=> d!1989873 (= (Exists!3313 lambda!348253) (Exists!3313 lambda!348254))))

(declare-fun lt!2362225 () Unit!158303)

(declare-fun choose!47001 (Regex!16243 Regex!16243 List!65029) Unit!158303)

(assert (=> d!1989873 (= lt!2362225 (choose!47001 (regOne!32998 r!7292) (regTwo!32998 r!7292) s!2326))))

(assert (=> d!1989873 (validRegex!7979 (regOne!32998 r!7292))))

(assert (=> d!1989873 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1850 (regOne!32998 r!7292) (regTwo!32998 r!7292) s!2326) lt!2362225)))

(declare-fun m!7148822 () Bool)

(assert (=> bs!1587487 m!7148822))

(declare-fun m!7148824 () Bool)

(assert (=> bs!1587487 m!7148824))

(declare-fun m!7148826 () Bool)

(assert (=> bs!1587487 m!7148826))

(assert (=> bs!1587487 m!7148752))

(assert (=> b!6339529 d!1989873))

(declare-fun d!1989891 () Bool)

(declare-fun isEmpty!36985 (Option!16134) Bool)

(assert (=> d!1989891 (= (isDefined!12837 (findConcatSeparation!2548 (regOne!32998 r!7292) (regTwo!32998 r!7292) Nil!64905 s!2326 s!2326)) (not (isEmpty!36985 (findConcatSeparation!2548 (regOne!32998 r!7292) (regTwo!32998 r!7292) Nil!64905 s!2326 s!2326))))))

(declare-fun bs!1587488 () Bool)

(assert (= bs!1587488 d!1989891))

(assert (=> bs!1587488 m!7148384))

(declare-fun m!7148828 () Bool)

(assert (=> bs!1587488 m!7148828))

(assert (=> b!6339529 d!1989891))

(declare-fun d!1989893 () Bool)

(declare-fun c!1152656 () Bool)

(assert (=> d!1989893 (= c!1152656 (isEmpty!36984 (t!378615 s!2326)))))

(declare-fun e!3851037 () Bool)

(assert (=> d!1989893 (= (matchZipper!2255 lt!2362121 (t!378615 s!2326)) e!3851037)))

(declare-fun b!6340094 () Bool)

(assert (=> b!6340094 (= e!3851037 (nullableZipper!2008 lt!2362121))))

(declare-fun b!6340095 () Bool)

(assert (=> b!6340095 (= e!3851037 (matchZipper!2255 (derivationStepZipper!2209 lt!2362121 (head!12979 (t!378615 s!2326))) (tail!12064 (t!378615 s!2326))))))

(assert (= (and d!1989893 c!1152656) b!6340094))

(assert (= (and d!1989893 (not c!1152656)) b!6340095))

(assert (=> d!1989893 m!7148582))

(declare-fun m!7148830 () Bool)

(assert (=> b!6340094 m!7148830))

(assert (=> b!6340095 m!7148590))

(assert (=> b!6340095 m!7148590))

(declare-fun m!7148832 () Bool)

(assert (=> b!6340095 m!7148832))

(assert (=> b!6340095 m!7148594))

(assert (=> b!6340095 m!7148832))

(assert (=> b!6340095 m!7148594))

(declare-fun m!7148834 () Bool)

(assert (=> b!6340095 m!7148834))

(assert (=> b!6339528 d!1989893))

(assert (=> b!6339528 d!1989809))

(declare-fun call!540276 () List!65028)

(declare-fun c!1152661 () Bool)

(declare-fun c!1152659 () Bool)

(declare-fun bm!540267 () Bool)

(assert (=> bm!540267 (= call!540276 ($colon$colon!2103 (exprs!6127 (Context!11255 lt!2362113)) (ite (or c!1152661 c!1152659) (regTwo!32998 (regOne!32998 (regOne!32998 r!7292))) (regOne!32998 (regOne!32998 r!7292)))))))

(declare-fun b!6340096 () Bool)

(declare-fun e!3851040 () Bool)

(assert (=> b!6340096 (= e!3851040 (nullable!6236 (regOne!32998 (regOne!32998 (regOne!32998 r!7292)))))))

(declare-fun bm!540268 () Bool)

(declare-fun c!1152660 () Bool)

(declare-fun call!540275 () (InoxSet Context!11254))

(declare-fun call!540277 () List!65028)

(assert (=> bm!540268 (= call!540275 (derivationStepZipperDown!1491 (ite c!1152660 (regOne!32999 (regOne!32998 (regOne!32998 r!7292))) (ite c!1152661 (regTwo!32998 (regOne!32998 (regOne!32998 r!7292))) (ite c!1152659 (regOne!32998 (regOne!32998 (regOne!32998 r!7292))) (reg!16572 (regOne!32998 (regOne!32998 r!7292)))))) (ite (or c!1152660 c!1152661) (Context!11255 lt!2362113) (Context!11255 call!540277)) (h!71353 s!2326)))))

(declare-fun b!6340097 () Bool)

(declare-fun e!3851039 () (InoxSet Context!11254))

(declare-fun call!540272 () (InoxSet Context!11254))

(assert (=> b!6340097 (= e!3851039 call!540272)))

(declare-fun bm!540269 () Bool)

(declare-fun call!540274 () (InoxSet Context!11254))

(assert (=> bm!540269 (= call!540274 (derivationStepZipperDown!1491 (ite c!1152660 (regTwo!32999 (regOne!32998 (regOne!32998 r!7292))) (regOne!32998 (regOne!32998 (regOne!32998 r!7292)))) (ite c!1152660 (Context!11255 lt!2362113) (Context!11255 call!540276)) (h!71353 s!2326)))))

(declare-fun b!6340098 () Bool)

(declare-fun e!3851041 () (InoxSet Context!11254))

(declare-fun call!540273 () (InoxSet Context!11254))

(assert (=> b!6340098 (= e!3851041 ((_ map or) call!540274 call!540273))))

(declare-fun bm!540270 () Bool)

(assert (=> bm!540270 (= call!540273 call!540275)))

(declare-fun b!6340099 () Bool)

(declare-fun e!3851043 () (InoxSet Context!11254))

(assert (=> b!6340099 (= e!3851043 (store ((as const (Array Context!11254 Bool)) false) (Context!11255 lt!2362113) true))))

(declare-fun bm!540271 () Bool)

(assert (=> bm!540271 (= call!540272 call!540273)))

(declare-fun b!6340100 () Bool)

(declare-fun e!3851042 () (InoxSet Context!11254))

(assert (=> b!6340100 (= e!3851042 call!540272)))

(declare-fun b!6340101 () Bool)

(declare-fun e!3851038 () (InoxSet Context!11254))

(assert (=> b!6340101 (= e!3851043 e!3851038)))

(assert (=> b!6340101 (= c!1152660 ((_ is Union!16243) (regOne!32998 (regOne!32998 r!7292))))))

(declare-fun b!6340102 () Bool)

(assert (=> b!6340102 (= e!3851038 ((_ map or) call!540275 call!540274))))

(declare-fun b!6340103 () Bool)

(assert (=> b!6340103 (= e!3851039 ((as const (Array Context!11254 Bool)) false))))

(declare-fun b!6340104 () Bool)

(assert (=> b!6340104 (= c!1152661 e!3851040)))

(declare-fun res!2609139 () Bool)

(assert (=> b!6340104 (=> (not res!2609139) (not e!3851040))))

(assert (=> b!6340104 (= res!2609139 ((_ is Concat!25088) (regOne!32998 (regOne!32998 r!7292))))))

(assert (=> b!6340104 (= e!3851038 e!3851041)))

(declare-fun bm!540272 () Bool)

(assert (=> bm!540272 (= call!540277 call!540276)))

(declare-fun d!1989895 () Bool)

(declare-fun c!1152658 () Bool)

(assert (=> d!1989895 (= c!1152658 (and ((_ is ElementMatch!16243) (regOne!32998 (regOne!32998 r!7292))) (= (c!1152474 (regOne!32998 (regOne!32998 r!7292))) (h!71353 s!2326))))))

(assert (=> d!1989895 (= (derivationStepZipperDown!1491 (regOne!32998 (regOne!32998 r!7292)) (Context!11255 lt!2362113) (h!71353 s!2326)) e!3851043)))

(declare-fun b!6340105 () Bool)

(assert (=> b!6340105 (= e!3851041 e!3851042)))

(assert (=> b!6340105 (= c!1152659 ((_ is Concat!25088) (regOne!32998 (regOne!32998 r!7292))))))

(declare-fun b!6340106 () Bool)

(declare-fun c!1152657 () Bool)

(assert (=> b!6340106 (= c!1152657 ((_ is Star!16243) (regOne!32998 (regOne!32998 r!7292))))))

(assert (=> b!6340106 (= e!3851042 e!3851039)))

(assert (= (and d!1989895 c!1152658) b!6340099))

(assert (= (and d!1989895 (not c!1152658)) b!6340101))

(assert (= (and b!6340101 c!1152660) b!6340102))

(assert (= (and b!6340101 (not c!1152660)) b!6340104))

(assert (= (and b!6340104 res!2609139) b!6340096))

(assert (= (and b!6340104 c!1152661) b!6340098))

(assert (= (and b!6340104 (not c!1152661)) b!6340105))

(assert (= (and b!6340105 c!1152659) b!6340100))

(assert (= (and b!6340105 (not c!1152659)) b!6340106))

(assert (= (and b!6340106 c!1152657) b!6340097))

(assert (= (and b!6340106 (not c!1152657)) b!6340103))

(assert (= (or b!6340100 b!6340097) bm!540272))

(assert (= (or b!6340100 b!6340097) bm!540271))

(assert (= (or b!6340098 bm!540272) bm!540267))

(assert (= (or b!6340098 bm!540271) bm!540270))

(assert (= (or b!6340102 b!6340098) bm!540269))

(assert (= (or b!6340102 bm!540270) bm!540268))

(declare-fun m!7148836 () Bool)

(assert (=> b!6340099 m!7148836))

(declare-fun m!7148838 () Bool)

(assert (=> bm!540267 m!7148838))

(declare-fun m!7148840 () Bool)

(assert (=> bm!540269 m!7148840))

(declare-fun m!7148842 () Bool)

(assert (=> b!6340096 m!7148842))

(declare-fun m!7148844 () Bool)

(assert (=> bm!540268 m!7148844))

(assert (=> b!6339522 d!1989895))

(declare-fun d!1989897 () Bool)

(assert (=> d!1989897 (= (nullable!6236 (regOne!32998 (regOne!32998 r!7292))) (nullableFct!2182 (regOne!32998 (regOne!32998 r!7292))))))

(declare-fun bs!1587489 () Bool)

(assert (= bs!1587489 d!1989897))

(declare-fun m!7148846 () Bool)

(assert (=> bs!1587489 m!7148846))

(assert (=> b!6339532 d!1989897))

(declare-fun d!1989899 () Bool)

(declare-fun c!1152662 () Bool)

(assert (=> d!1989899 (= c!1152662 (isEmpty!36984 (t!378615 s!2326)))))

(declare-fun e!3851044 () Bool)

(assert (=> d!1989899 (= (matchZipper!2255 lt!2362128 (t!378615 s!2326)) e!3851044)))

(declare-fun b!6340107 () Bool)

(assert (=> b!6340107 (= e!3851044 (nullableZipper!2008 lt!2362128))))

(declare-fun b!6340108 () Bool)

(assert (=> b!6340108 (= e!3851044 (matchZipper!2255 (derivationStepZipper!2209 lt!2362128 (head!12979 (t!378615 s!2326))) (tail!12064 (t!378615 s!2326))))))

(assert (= (and d!1989899 c!1152662) b!6340107))

(assert (= (and d!1989899 (not c!1152662)) b!6340108))

(assert (=> d!1989899 m!7148582))

(declare-fun m!7148848 () Bool)

(assert (=> b!6340107 m!7148848))

(assert (=> b!6340108 m!7148590))

(assert (=> b!6340108 m!7148590))

(declare-fun m!7148850 () Bool)

(assert (=> b!6340108 m!7148850))

(assert (=> b!6340108 m!7148594))

(assert (=> b!6340108 m!7148850))

(assert (=> b!6340108 m!7148594))

(declare-fun m!7148852 () Bool)

(assert (=> b!6340108 m!7148852))

(assert (=> b!6339542 d!1989899))

(declare-fun b!6340152 () Bool)

(assert (=> b!6340152 true))

(declare-fun bs!1587494 () Bool)

(declare-fun b!6340154 () Bool)

(assert (= bs!1587494 (and b!6340154 b!6340152)))

(declare-fun lt!2362238 () Int)

(declare-fun lambda!348262 () Int)

(declare-fun lambda!348263 () Int)

(declare-fun lt!2362236 () Int)

(assert (=> bs!1587494 (= (= lt!2362238 lt!2362236) (= lambda!348263 lambda!348262))))

(assert (=> b!6340154 true))

(declare-fun d!1989901 () Bool)

(declare-fun e!3851071 () Bool)

(assert (=> d!1989901 e!3851071))

(declare-fun res!2609147 () Bool)

(assert (=> d!1989901 (=> (not res!2609147) (not e!3851071))))

(assert (=> d!1989901 (= res!2609147 (>= lt!2362238 0))))

(declare-fun e!3851070 () Int)

(assert (=> d!1989901 (= lt!2362238 e!3851070)))

(declare-fun c!1152687 () Bool)

(assert (=> d!1989901 (= c!1152687 ((_ is Cons!64906) lt!2362129))))

(assert (=> d!1989901 (= (zipperDepth!350 lt!2362129) lt!2362238)))

(assert (=> b!6340152 (= e!3851070 lt!2362236)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!239 (Context!11254) Int)

(assert (=> b!6340152 (= lt!2362236 (maxBigInt!0 (contextDepth!239 (h!71354 lt!2362129)) (zipperDepth!350 (t!378616 lt!2362129))))))

(declare-fun lambda!348261 () Int)

(declare-fun lt!2362235 () Unit!158303)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!223 (List!65030 Int Int Int) Unit!158303)

(assert (=> b!6340152 (= lt!2362235 (lemmaForallContextDepthBiggerThanTransitive!223 (t!378616 lt!2362129) lt!2362236 (zipperDepth!350 (t!378616 lt!2362129)) lambda!348261))))

(declare-fun forall!15399 (List!65030 Int) Bool)

(assert (=> b!6340152 (forall!15399 (t!378616 lt!2362129) lambda!348262)))

(declare-fun lt!2362237 () Unit!158303)

(assert (=> b!6340152 (= lt!2362237 lt!2362235)))

(declare-fun b!6340153 () Bool)

(assert (=> b!6340153 (= e!3851070 0)))

(assert (=> b!6340154 (= e!3851071 (forall!15399 lt!2362129 lambda!348263))))

(assert (= (and d!1989901 c!1152687) b!6340152))

(assert (= (and d!1989901 (not c!1152687)) b!6340153))

(assert (= (and d!1989901 res!2609147) b!6340154))

(declare-fun m!7148910 () Bool)

(assert (=> b!6340152 m!7148910))

(declare-fun m!7148912 () Bool)

(assert (=> b!6340152 m!7148912))

(assert (=> b!6340152 m!7148910))

(declare-fun m!7148914 () Bool)

(assert (=> b!6340152 m!7148914))

(assert (=> b!6340152 m!7148910))

(declare-fun m!7148916 () Bool)

(assert (=> b!6340152 m!7148916))

(assert (=> b!6340152 m!7148914))

(declare-fun m!7148918 () Bool)

(assert (=> b!6340152 m!7148918))

(declare-fun m!7148920 () Bool)

(assert (=> b!6340154 m!7148920))

(assert (=> b!6339541 d!1989901))

(declare-fun bs!1587496 () Bool)

(declare-fun b!6340159 () Bool)

(assert (= bs!1587496 (and b!6340159 b!6340152)))

(declare-fun lambda!348264 () Int)

(assert (=> bs!1587496 (= lambda!348264 lambda!348261)))

(declare-fun lambda!348265 () Int)

(declare-fun lt!2362240 () Int)

(assert (=> bs!1587496 (= (= lt!2362240 lt!2362236) (= lambda!348265 lambda!348262))))

(declare-fun bs!1587497 () Bool)

(assert (= bs!1587497 (and b!6340159 b!6340154)))

(assert (=> bs!1587497 (= (= lt!2362240 lt!2362238) (= lambda!348265 lambda!348263))))

(assert (=> b!6340159 true))

(declare-fun bs!1587498 () Bool)

(declare-fun b!6340161 () Bool)

(assert (= bs!1587498 (and b!6340161 b!6340152)))

(declare-fun lambda!348266 () Int)

(declare-fun lt!2362242 () Int)

(assert (=> bs!1587498 (= (= lt!2362242 lt!2362236) (= lambda!348266 lambda!348262))))

(declare-fun bs!1587499 () Bool)

(assert (= bs!1587499 (and b!6340161 b!6340154)))

(assert (=> bs!1587499 (= (= lt!2362242 lt!2362238) (= lambda!348266 lambda!348263))))

(declare-fun bs!1587500 () Bool)

(assert (= bs!1587500 (and b!6340161 b!6340159)))

(assert (=> bs!1587500 (= (= lt!2362242 lt!2362240) (= lambda!348266 lambda!348265))))

(assert (=> b!6340161 true))

(declare-fun d!1989925 () Bool)

(declare-fun e!3851074 () Bool)

(assert (=> d!1989925 e!3851074))

(declare-fun res!2609148 () Bool)

(assert (=> d!1989925 (=> (not res!2609148) (not e!3851074))))

(assert (=> d!1989925 (= res!2609148 (>= lt!2362242 0))))

(declare-fun e!3851073 () Int)

(assert (=> d!1989925 (= lt!2362242 e!3851073)))

(declare-fun c!1152689 () Bool)

(assert (=> d!1989925 (= c!1152689 ((_ is Cons!64906) zl!343))))

(assert (=> d!1989925 (= (zipperDepth!350 zl!343) lt!2362242)))

(assert (=> b!6340159 (= e!3851073 lt!2362240)))

(assert (=> b!6340159 (= lt!2362240 (maxBigInt!0 (contextDepth!239 (h!71354 zl!343)) (zipperDepth!350 (t!378616 zl!343))))))

(declare-fun lt!2362239 () Unit!158303)

(assert (=> b!6340159 (= lt!2362239 (lemmaForallContextDepthBiggerThanTransitive!223 (t!378616 zl!343) lt!2362240 (zipperDepth!350 (t!378616 zl!343)) lambda!348264))))

(assert (=> b!6340159 (forall!15399 (t!378616 zl!343) lambda!348265)))

(declare-fun lt!2362241 () Unit!158303)

(assert (=> b!6340159 (= lt!2362241 lt!2362239)))

(declare-fun b!6340160 () Bool)

(assert (=> b!6340160 (= e!3851073 0)))

(assert (=> b!6340161 (= e!3851074 (forall!15399 zl!343 lambda!348266))))

(assert (= (and d!1989925 c!1152689) b!6340159))

(assert (= (and d!1989925 (not c!1152689)) b!6340160))

(assert (= (and d!1989925 res!2609148) b!6340161))

(declare-fun m!7148922 () Bool)

(assert (=> b!6340159 m!7148922))

(declare-fun m!7148924 () Bool)

(assert (=> b!6340159 m!7148924))

(assert (=> b!6340159 m!7148922))

(declare-fun m!7148926 () Bool)

(assert (=> b!6340159 m!7148926))

(assert (=> b!6340159 m!7148922))

(declare-fun m!7148928 () Bool)

(assert (=> b!6340159 m!7148928))

(assert (=> b!6340159 m!7148926))

(declare-fun m!7148930 () Bool)

(assert (=> b!6340159 m!7148930))

(declare-fun m!7148932 () Bool)

(assert (=> b!6340161 m!7148932))

(assert (=> b!6339541 d!1989925))

(declare-fun d!1989927 () Bool)

(assert (=> d!1989927 (= (flatMap!1748 lt!2362130 lambda!348201) (choose!46991 lt!2362130 lambda!348201))))

(declare-fun bs!1587501 () Bool)

(assert (= bs!1587501 d!1989927))

(declare-fun m!7148934 () Bool)

(assert (=> bs!1587501 m!7148934))

(assert (=> b!6339551 d!1989927))

(declare-fun bm!540296 () Bool)

(declare-fun call!540301 () (InoxSet Context!11254))

(assert (=> bm!540296 (= call!540301 (derivationStepZipperDown!1491 (h!71352 (exprs!6127 lt!2362117)) (Context!11255 (t!378614 (exprs!6127 lt!2362117))) (h!71353 s!2326)))))

(declare-fun b!6340162 () Bool)

(declare-fun e!3851076 () (InoxSet Context!11254))

(assert (=> b!6340162 (= e!3851076 ((as const (Array Context!11254 Bool)) false))))

(declare-fun b!6340163 () Bool)

(assert (=> b!6340163 (= e!3851076 call!540301)))

(declare-fun b!6340164 () Bool)

(declare-fun e!3851077 () Bool)

(assert (=> b!6340164 (= e!3851077 (nullable!6236 (h!71352 (exprs!6127 lt!2362117))))))

(declare-fun e!3851075 () (InoxSet Context!11254))

(declare-fun b!6340165 () Bool)

(assert (=> b!6340165 (= e!3851075 ((_ map or) call!540301 (derivationStepZipperUp!1417 (Context!11255 (t!378614 (exprs!6127 lt!2362117))) (h!71353 s!2326))))))

(declare-fun b!6340166 () Bool)

(assert (=> b!6340166 (= e!3851075 e!3851076)))

(declare-fun c!1152690 () Bool)

(assert (=> b!6340166 (= c!1152690 ((_ is Cons!64904) (exprs!6127 lt!2362117)))))

(declare-fun d!1989929 () Bool)

(declare-fun c!1152691 () Bool)

(assert (=> d!1989929 (= c!1152691 e!3851077)))

(declare-fun res!2609149 () Bool)

(assert (=> d!1989929 (=> (not res!2609149) (not e!3851077))))

(assert (=> d!1989929 (= res!2609149 ((_ is Cons!64904) (exprs!6127 lt!2362117)))))

(assert (=> d!1989929 (= (derivationStepZipperUp!1417 lt!2362117 (h!71353 s!2326)) e!3851075)))

(assert (= (and d!1989929 res!2609149) b!6340164))

(assert (= (and d!1989929 c!1152691) b!6340165))

(assert (= (and d!1989929 (not c!1152691)) b!6340166))

(assert (= (and b!6340166 c!1152690) b!6340163))

(assert (= (and b!6340166 (not c!1152690)) b!6340162))

(assert (= (or b!6340165 b!6340163) bm!540296))

(declare-fun m!7148936 () Bool)

(assert (=> bm!540296 m!7148936))

(declare-fun m!7148938 () Bool)

(assert (=> b!6340164 m!7148938))

(declare-fun m!7148940 () Bool)

(assert (=> b!6340165 m!7148940))

(assert (=> b!6339551 d!1989929))

(declare-fun d!1989931 () Bool)

(assert (=> d!1989931 (= (flatMap!1748 lt!2362130 lambda!348201) (dynLambda!25724 lambda!348201 lt!2362117))))

(declare-fun lt!2362243 () Unit!158303)

(assert (=> d!1989931 (= lt!2362243 (choose!46990 lt!2362130 lt!2362117 lambda!348201))))

(assert (=> d!1989931 (= lt!2362130 (store ((as const (Array Context!11254 Bool)) false) lt!2362117 true))))

(assert (=> d!1989931 (= (lemmaFlatMapOnSingletonSet!1274 lt!2362130 lt!2362117 lambda!348201) lt!2362243)))

(declare-fun b_lambda!241283 () Bool)

(assert (=> (not b_lambda!241283) (not d!1989931)))

(declare-fun bs!1587502 () Bool)

(assert (= bs!1587502 d!1989931))

(assert (=> bs!1587502 m!7148422))

(declare-fun m!7148942 () Bool)

(assert (=> bs!1587502 m!7148942))

(declare-fun m!7148944 () Bool)

(assert (=> bs!1587502 m!7148944))

(assert (=> bs!1587502 m!7148416))

(assert (=> b!6339551 d!1989931))

(declare-fun bs!1587503 () Bool)

(declare-fun d!1989933 () Bool)

(assert (= bs!1587503 (and d!1989933 b!6339546)))

(declare-fun lambda!348269 () Int)

(assert (=> bs!1587503 (= lambda!348269 lambda!348201)))

(assert (=> d!1989933 true))

(assert (=> d!1989933 (= (derivationStepZipper!2209 lt!2362130 (h!71353 s!2326)) (flatMap!1748 lt!2362130 lambda!348269))))

(declare-fun bs!1587504 () Bool)

(assert (= bs!1587504 d!1989933))

(declare-fun m!7148946 () Bool)

(assert (=> bs!1587504 m!7148946))

(assert (=> b!6339551 d!1989933))

(declare-fun d!1989935 () Bool)

(declare-fun e!3851080 () Bool)

(assert (=> d!1989935 e!3851080))

(declare-fun res!2609152 () Bool)

(assert (=> d!1989935 (=> (not res!2609152) (not e!3851080))))

(declare-fun lt!2362246 () List!65030)

(declare-fun noDuplicate!2073 (List!65030) Bool)

(assert (=> d!1989935 (= res!2609152 (noDuplicate!2073 lt!2362246))))

(declare-fun choose!47003 ((InoxSet Context!11254)) List!65030)

(assert (=> d!1989935 (= lt!2362246 (choose!47003 z!1189))))

(assert (=> d!1989935 (= (toList!10027 z!1189) lt!2362246)))

(declare-fun b!6340171 () Bool)

(declare-fun content!12240 (List!65030) (InoxSet Context!11254))

(assert (=> b!6340171 (= e!3851080 (= (content!12240 lt!2362246) z!1189))))

(assert (= (and d!1989935 res!2609152) b!6340171))

(declare-fun m!7148948 () Bool)

(assert (=> d!1989935 m!7148948))

(declare-fun m!7148950 () Bool)

(assert (=> d!1989935 m!7148950))

(declare-fun m!7148952 () Bool)

(assert (=> b!6340171 m!7148952))

(assert (=> b!6339544 d!1989935))

(declare-fun bs!1587505 () Bool)

(declare-fun d!1989937 () Bool)

(assert (= bs!1587505 (and d!1989937 d!1989799)))

(declare-fun lambda!348272 () Int)

(assert (=> bs!1587505 (= lambda!348272 lambda!348219)))

(declare-fun bs!1587506 () Bool)

(assert (= bs!1587506 (and d!1989937 d!1989805)))

(assert (=> bs!1587506 (= lambda!348272 lambda!348224)))

(declare-fun bs!1587507 () Bool)

(assert (= bs!1587507 (and d!1989937 d!1989841)))

(assert (=> bs!1587507 (= lambda!348272 lambda!348235)))

(assert (=> d!1989937 (= (inv!83854 (h!71354 zl!343)) (forall!15398 (exprs!6127 (h!71354 zl!343)) lambda!348272))))

(declare-fun bs!1587508 () Bool)

(assert (= bs!1587508 d!1989937))

(declare-fun m!7148954 () Bool)

(assert (=> bs!1587508 m!7148954))

(assert (=> b!6339525 d!1989937))

(declare-fun b!6340172 () Bool)

(declare-fun e!3851085 () Bool)

(declare-fun e!3851083 () Bool)

(assert (=> b!6340172 (= e!3851085 e!3851083)))

(declare-fun c!1152695 () Bool)

(assert (=> b!6340172 (= c!1152695 ((_ is Union!16243) r!7292))))

(declare-fun b!6340173 () Bool)

(declare-fun e!3851082 () Bool)

(assert (=> b!6340173 (= e!3851082 e!3851085)))

(declare-fun c!1152694 () Bool)

(assert (=> b!6340173 (= c!1152694 ((_ is Star!16243) r!7292))))

(declare-fun b!6340174 () Bool)

(declare-fun res!2609153 () Bool)

(declare-fun e!3851084 () Bool)

(assert (=> b!6340174 (=> (not res!2609153) (not e!3851084))))

(declare-fun call!540304 () Bool)

(assert (=> b!6340174 (= res!2609153 call!540304)))

(assert (=> b!6340174 (= e!3851083 e!3851084)))

(declare-fun bm!540297 () Bool)

(declare-fun call!540302 () Bool)

(assert (=> bm!540297 (= call!540302 (validRegex!7979 (ite c!1152695 (regTwo!32999 r!7292) (regTwo!32998 r!7292))))))

(declare-fun b!6340176 () Bool)

(assert (=> b!6340176 (= e!3851084 call!540302)))

(declare-fun bm!540298 () Bool)

(declare-fun call!540303 () Bool)

(assert (=> bm!540298 (= call!540303 (validRegex!7979 (ite c!1152694 (reg!16572 r!7292) (ite c!1152695 (regOne!32999 r!7292) (regOne!32998 r!7292)))))))

(declare-fun b!6340177 () Bool)

(declare-fun e!3851087 () Bool)

(assert (=> b!6340177 (= e!3851087 call!540302)))

(declare-fun b!6340178 () Bool)

(declare-fun e!3851081 () Bool)

(assert (=> b!6340178 (= e!3851081 e!3851087)))

(declare-fun res!2609155 () Bool)

(assert (=> b!6340178 (=> (not res!2609155) (not e!3851087))))

(assert (=> b!6340178 (= res!2609155 call!540304)))

(declare-fun b!6340179 () Bool)

(declare-fun res!2609156 () Bool)

(assert (=> b!6340179 (=> res!2609156 e!3851081)))

(assert (=> b!6340179 (= res!2609156 (not ((_ is Concat!25088) r!7292)))))

(assert (=> b!6340179 (= e!3851083 e!3851081)))

(declare-fun bm!540299 () Bool)

(assert (=> bm!540299 (= call!540304 call!540303)))

(declare-fun b!6340180 () Bool)

(declare-fun e!3851086 () Bool)

(assert (=> b!6340180 (= e!3851085 e!3851086)))

(declare-fun res!2609157 () Bool)

(assert (=> b!6340180 (= res!2609157 (not (nullable!6236 (reg!16572 r!7292))))))

(assert (=> b!6340180 (=> (not res!2609157) (not e!3851086))))

(declare-fun b!6340175 () Bool)

(assert (=> b!6340175 (= e!3851086 call!540303)))

(declare-fun d!1989939 () Bool)

(declare-fun res!2609154 () Bool)

(assert (=> d!1989939 (=> res!2609154 e!3851082)))

(assert (=> d!1989939 (= res!2609154 ((_ is ElementMatch!16243) r!7292))))

(assert (=> d!1989939 (= (validRegex!7979 r!7292) e!3851082)))

(assert (= (and d!1989939 (not res!2609154)) b!6340173))

(assert (= (and b!6340173 c!1152694) b!6340180))

(assert (= (and b!6340173 (not c!1152694)) b!6340172))

(assert (= (and b!6340180 res!2609157) b!6340175))

(assert (= (and b!6340172 c!1152695) b!6340174))

(assert (= (and b!6340172 (not c!1152695)) b!6340179))

(assert (= (and b!6340174 res!2609153) b!6340176))

(assert (= (and b!6340179 (not res!2609156)) b!6340178))

(assert (= (and b!6340178 res!2609155) b!6340177))

(assert (= (or b!6340176 b!6340177) bm!540297))

(assert (= (or b!6340174 b!6340178) bm!540299))

(assert (= (or b!6340175 bm!540299) bm!540298))

(declare-fun m!7148956 () Bool)

(assert (=> bm!540297 m!7148956))

(declare-fun m!7148958 () Bool)

(assert (=> bm!540298 m!7148958))

(declare-fun m!7148960 () Bool)

(assert (=> b!6340180 m!7148960))

(assert (=> start!628114 d!1989939))

(declare-fun bs!1587512 () Bool)

(declare-fun b!6340248 () Bool)

(assert (= bs!1587512 (and b!6340248 d!1989873)))

(declare-fun lambda!348280 () Int)

(assert (=> bs!1587512 (not (= lambda!348280 lambda!348253))))

(declare-fun bs!1587514 () Bool)

(assert (= bs!1587514 (and b!6340248 b!6339529)))

(assert (=> bs!1587514 (not (= lambda!348280 lambda!348199))))

(assert (=> bs!1587512 (not (= lambda!348280 lambda!348254))))

(assert (=> bs!1587514 (not (= lambda!348280 lambda!348200))))

(declare-fun bs!1587516 () Bool)

(assert (= bs!1587516 (and b!6340248 d!1989863)))

(assert (=> bs!1587516 (not (= lambda!348280 lambda!348247))))

(assert (=> b!6340248 true))

(assert (=> b!6340248 true))

(declare-fun bs!1587517 () Bool)

(declare-fun b!6340253 () Bool)

(assert (= bs!1587517 (and b!6340253 d!1989873)))

(declare-fun lambda!348281 () Int)

(assert (=> bs!1587517 (not (= lambda!348281 lambda!348253))))

(declare-fun bs!1587518 () Bool)

(assert (= bs!1587518 (and b!6340253 b!6340248)))

(assert (=> bs!1587518 (not (= lambda!348281 lambda!348280))))

(declare-fun bs!1587519 () Bool)

(assert (= bs!1587519 (and b!6340253 b!6339529)))

(assert (=> bs!1587519 (not (= lambda!348281 lambda!348199))))

(assert (=> bs!1587517 (= lambda!348281 lambda!348254)))

(assert (=> bs!1587519 (= lambda!348281 lambda!348200)))

(declare-fun bs!1587520 () Bool)

(assert (= bs!1587520 (and b!6340253 d!1989863)))

(assert (=> bs!1587520 (not (= lambda!348281 lambda!348247))))

(assert (=> b!6340253 true))

(assert (=> b!6340253 true))

(declare-fun b!6340244 () Bool)

(declare-fun e!3851127 () Bool)

(assert (=> b!6340244 (= e!3851127 (matchRSpec!3344 (regTwo!32999 r!7292) s!2326))))

(declare-fun b!6340245 () Bool)

(declare-fun res!2609194 () Bool)

(declare-fun e!3851125 () Bool)

(assert (=> b!6340245 (=> res!2609194 e!3851125)))

(declare-fun call!540310 () Bool)

(assert (=> b!6340245 (= res!2609194 call!540310)))

(declare-fun e!3851129 () Bool)

(assert (=> b!6340245 (= e!3851129 e!3851125)))

(declare-fun bm!540304 () Bool)

(declare-fun call!540309 () Bool)

(declare-fun c!1152711 () Bool)

(assert (=> bm!540304 (= call!540309 (Exists!3313 (ite c!1152711 lambda!348280 lambda!348281)))))

(declare-fun b!6340246 () Bool)

(declare-fun e!3851128 () Bool)

(assert (=> b!6340246 (= e!3851128 call!540310)))

(declare-fun b!6340247 () Bool)

(declare-fun e!3851124 () Bool)

(assert (=> b!6340247 (= e!3851124 e!3851127)))

(declare-fun res!2609195 () Bool)

(assert (=> b!6340247 (= res!2609195 (matchRSpec!3344 (regOne!32999 r!7292) s!2326))))

(assert (=> b!6340247 (=> res!2609195 e!3851127)))

(assert (=> b!6340248 (= e!3851125 call!540309)))

(declare-fun bm!540305 () Bool)

(assert (=> bm!540305 (= call!540310 (isEmpty!36984 s!2326))))

(declare-fun b!6340250 () Bool)

(declare-fun c!1152710 () Bool)

(assert (=> b!6340250 (= c!1152710 ((_ is Union!16243) r!7292))))

(declare-fun e!3851126 () Bool)

(assert (=> b!6340250 (= e!3851126 e!3851124)))

(declare-fun b!6340251 () Bool)

(declare-fun c!1152713 () Bool)

(assert (=> b!6340251 (= c!1152713 ((_ is ElementMatch!16243) r!7292))))

(declare-fun e!3851123 () Bool)

(assert (=> b!6340251 (= e!3851123 e!3851126)))

(declare-fun b!6340252 () Bool)

(assert (=> b!6340252 (= e!3851124 e!3851129)))

(assert (=> b!6340252 (= c!1152711 ((_ is Star!16243) r!7292))))

(assert (=> b!6340253 (= e!3851129 call!540309)))

(declare-fun b!6340254 () Bool)

(assert (=> b!6340254 (= e!3851128 e!3851123)))

(declare-fun res!2609193 () Bool)

(assert (=> b!6340254 (= res!2609193 (not ((_ is EmptyLang!16243) r!7292)))))

(assert (=> b!6340254 (=> (not res!2609193) (not e!3851123))))

(declare-fun d!1989941 () Bool)

(declare-fun c!1152712 () Bool)

(assert (=> d!1989941 (= c!1152712 ((_ is EmptyExpr!16243) r!7292))))

(assert (=> d!1989941 (= (matchRSpec!3344 r!7292 s!2326) e!3851128)))

(declare-fun b!6340249 () Bool)

(assert (=> b!6340249 (= e!3851126 (= s!2326 (Cons!64905 (c!1152474 r!7292) Nil!64905)))))

(assert (= (and d!1989941 c!1152712) b!6340246))

(assert (= (and d!1989941 (not c!1152712)) b!6340254))

(assert (= (and b!6340254 res!2609193) b!6340251))

(assert (= (and b!6340251 c!1152713) b!6340249))

(assert (= (and b!6340251 (not c!1152713)) b!6340250))

(assert (= (and b!6340250 c!1152710) b!6340247))

(assert (= (and b!6340250 (not c!1152710)) b!6340252))

(assert (= (and b!6340247 (not res!2609195)) b!6340244))

(assert (= (and b!6340252 c!1152711) b!6340245))

(assert (= (and b!6340252 (not c!1152711)) b!6340253))

(assert (= (and b!6340245 (not res!2609194)) b!6340248))

(assert (= (or b!6340248 b!6340253) bm!540304))

(assert (= (or b!6340246 b!6340245) bm!540305))

(declare-fun m!7148992 () Bool)

(assert (=> b!6340244 m!7148992))

(declare-fun m!7148994 () Bool)

(assert (=> bm!540304 m!7148994))

(declare-fun m!7148996 () Bool)

(assert (=> b!6340247 m!7148996))

(assert (=> bm!540305 m!7148668))

(assert (=> b!6339533 d!1989941))

(declare-fun b!6340255 () Bool)

(declare-fun e!3851136 () Bool)

(assert (=> b!6340255 (= e!3851136 (= (head!12979 s!2326) (c!1152474 r!7292)))))

(declare-fun b!6340256 () Bool)

(declare-fun e!3851134 () Bool)

(declare-fun lt!2362259 () Bool)

(assert (=> b!6340256 (= e!3851134 (not lt!2362259))))

(declare-fun b!6340257 () Bool)

(declare-fun e!3851131 () Bool)

(declare-fun e!3851130 () Bool)

(assert (=> b!6340257 (= e!3851131 e!3851130)))

(declare-fun res!2609200 () Bool)

(assert (=> b!6340257 (=> (not res!2609200) (not e!3851130))))

(assert (=> b!6340257 (= res!2609200 (not lt!2362259))))

(declare-fun b!6340258 () Bool)

(declare-fun res!2609201 () Bool)

(assert (=> b!6340258 (=> (not res!2609201) (not e!3851136))))

(assert (=> b!6340258 (= res!2609201 (isEmpty!36984 (tail!12064 s!2326)))))

(declare-fun b!6340259 () Bool)

(declare-fun e!3851132 () Bool)

(assert (=> b!6340259 (= e!3851132 (not (= (head!12979 s!2326) (c!1152474 r!7292))))))

(declare-fun bm!540306 () Bool)

(declare-fun call!540311 () Bool)

(assert (=> bm!540306 (= call!540311 (isEmpty!36984 s!2326))))

(declare-fun b!6340260 () Bool)

(declare-fun e!3851135 () Bool)

(assert (=> b!6340260 (= e!3851135 e!3851134)))

(declare-fun c!1152715 () Bool)

(assert (=> b!6340260 (= c!1152715 ((_ is EmptyLang!16243) r!7292))))

(declare-fun d!1989949 () Bool)

(assert (=> d!1989949 e!3851135))

(declare-fun c!1152714 () Bool)

(assert (=> d!1989949 (= c!1152714 ((_ is EmptyExpr!16243) r!7292))))

(declare-fun e!3851133 () Bool)

(assert (=> d!1989949 (= lt!2362259 e!3851133)))

(declare-fun c!1152716 () Bool)

(assert (=> d!1989949 (= c!1152716 (isEmpty!36984 s!2326))))

(assert (=> d!1989949 (validRegex!7979 r!7292)))

(assert (=> d!1989949 (= (matchR!8426 r!7292 s!2326) lt!2362259)))

(declare-fun b!6340261 () Bool)

(declare-fun res!2609197 () Bool)

(assert (=> b!6340261 (=> res!2609197 e!3851132)))

(assert (=> b!6340261 (= res!2609197 (not (isEmpty!36984 (tail!12064 s!2326))))))

(declare-fun b!6340262 () Bool)

(declare-fun res!2609202 () Bool)

(assert (=> b!6340262 (=> res!2609202 e!3851131)))

(assert (=> b!6340262 (= res!2609202 (not ((_ is ElementMatch!16243) r!7292)))))

(assert (=> b!6340262 (= e!3851134 e!3851131)))

(declare-fun b!6340263 () Bool)

(assert (=> b!6340263 (= e!3851135 (= lt!2362259 call!540311))))

(declare-fun b!6340264 () Bool)

(declare-fun res!2609196 () Bool)

(assert (=> b!6340264 (=> res!2609196 e!3851131)))

(assert (=> b!6340264 (= res!2609196 e!3851136)))

(declare-fun res!2609203 () Bool)

(assert (=> b!6340264 (=> (not res!2609203) (not e!3851136))))

(assert (=> b!6340264 (= res!2609203 lt!2362259)))

(declare-fun b!6340265 () Bool)

(assert (=> b!6340265 (= e!3851133 (matchR!8426 (derivativeStep!4948 r!7292 (head!12979 s!2326)) (tail!12064 s!2326)))))

(declare-fun b!6340266 () Bool)

(assert (=> b!6340266 (= e!3851133 (nullable!6236 r!7292))))

(declare-fun b!6340267 () Bool)

(assert (=> b!6340267 (= e!3851130 e!3851132)))

(declare-fun res!2609198 () Bool)

(assert (=> b!6340267 (=> res!2609198 e!3851132)))

(assert (=> b!6340267 (= res!2609198 call!540311)))

(declare-fun b!6340268 () Bool)

(declare-fun res!2609199 () Bool)

(assert (=> b!6340268 (=> (not res!2609199) (not e!3851136))))

(assert (=> b!6340268 (= res!2609199 (not call!540311))))

(assert (= (and d!1989949 c!1152716) b!6340266))

(assert (= (and d!1989949 (not c!1152716)) b!6340265))

(assert (= (and d!1989949 c!1152714) b!6340263))

(assert (= (and d!1989949 (not c!1152714)) b!6340260))

(assert (= (and b!6340260 c!1152715) b!6340256))

(assert (= (and b!6340260 (not c!1152715)) b!6340262))

(assert (= (and b!6340262 (not res!2609202)) b!6340264))

(assert (= (and b!6340264 res!2609203) b!6340268))

(assert (= (and b!6340268 res!2609199) b!6340258))

(assert (= (and b!6340258 res!2609201) b!6340255))

(assert (= (and b!6340264 (not res!2609196)) b!6340257))

(assert (= (and b!6340257 res!2609200) b!6340267))

(assert (= (and b!6340267 (not res!2609198)) b!6340261))

(assert (= (and b!6340261 (not res!2609197)) b!6340259))

(assert (= (or b!6340263 b!6340267 b!6340268) bm!540306))

(assert (=> b!6340255 m!7148660))

(assert (=> b!6340259 m!7148660))

(assert (=> b!6340258 m!7148662))

(assert (=> b!6340258 m!7148662))

(assert (=> b!6340258 m!7148664))

(declare-fun m!7148998 () Bool)

(assert (=> b!6340266 m!7148998))

(assert (=> d!1989949 m!7148668))

(assert (=> d!1989949 m!7148378))

(assert (=> bm!540306 m!7148668))

(assert (=> b!6340261 m!7148662))

(assert (=> b!6340261 m!7148662))

(assert (=> b!6340261 m!7148664))

(assert (=> b!6340265 m!7148660))

(assert (=> b!6340265 m!7148660))

(declare-fun m!7149000 () Bool)

(assert (=> b!6340265 m!7149000))

(assert (=> b!6340265 m!7148662))

(assert (=> b!6340265 m!7149000))

(assert (=> b!6340265 m!7148662))

(declare-fun m!7149002 () Bool)

(assert (=> b!6340265 m!7149002))

(assert (=> b!6339533 d!1989949))

(declare-fun d!1989951 () Bool)

(assert (=> d!1989951 (= (matchR!8426 r!7292 s!2326) (matchRSpec!3344 r!7292 s!2326))))

(declare-fun lt!2362264 () Unit!158303)

(declare-fun choose!47004 (Regex!16243 List!65029) Unit!158303)

(assert (=> d!1989951 (= lt!2362264 (choose!47004 r!7292 s!2326))))

(assert (=> d!1989951 (validRegex!7979 r!7292)))

(assert (=> d!1989951 (= (mainMatchTheorem!3344 r!7292 s!2326) lt!2362264)))

(declare-fun bs!1587521 () Bool)

(assert (= bs!1587521 d!1989951))

(assert (=> bs!1587521 m!7148460))

(assert (=> bs!1587521 m!7148458))

(declare-fun m!7149004 () Bool)

(assert (=> bs!1587521 m!7149004))

(assert (=> bs!1587521 m!7148378))

(assert (=> b!6339533 d!1989951))

(declare-fun d!1989953 () Bool)

(declare-fun lt!2362267 () Int)

(assert (=> d!1989953 (>= lt!2362267 0)))

(declare-fun e!3851143 () Int)

(assert (=> d!1989953 (= lt!2362267 e!3851143)))

(declare-fun c!1152719 () Bool)

(assert (=> d!1989953 (= c!1152719 ((_ is Cons!64906) lt!2362129))))

(assert (=> d!1989953 (= (zipperDepthTotal!380 lt!2362129) lt!2362267)))

(declare-fun b!6340281 () Bool)

(assert (=> b!6340281 (= e!3851143 (+ (contextDepthTotal!352 (h!71354 lt!2362129)) (zipperDepthTotal!380 (t!378616 lt!2362129))))))

(declare-fun b!6340282 () Bool)

(assert (=> b!6340282 (= e!3851143 0)))

(assert (= (and d!1989953 c!1152719) b!6340281))

(assert (= (and d!1989953 (not c!1152719)) b!6340282))

(declare-fun m!7149006 () Bool)

(assert (=> b!6340281 m!7149006))

(declare-fun m!7149008 () Bool)

(assert (=> b!6340281 m!7149008))

(assert (=> b!6339543 d!1989953))

(declare-fun d!1989955 () Bool)

(declare-fun lt!2362268 () Int)

(assert (=> d!1989955 (>= lt!2362268 0)))

(declare-fun e!3851144 () Int)

(assert (=> d!1989955 (= lt!2362268 e!3851144)))

(declare-fun c!1152720 () Bool)

(assert (=> d!1989955 (= c!1152720 ((_ is Cons!64906) zl!343))))

(assert (=> d!1989955 (= (zipperDepthTotal!380 zl!343) lt!2362268)))

(declare-fun b!6340283 () Bool)

(assert (=> b!6340283 (= e!3851144 (+ (contextDepthTotal!352 (h!71354 zl!343)) (zipperDepthTotal!380 (t!378616 zl!343))))))

(declare-fun b!6340284 () Bool)

(assert (=> b!6340284 (= e!3851144 0)))

(assert (= (and d!1989955 c!1152720) b!6340283))

(assert (= (and d!1989955 (not c!1152720)) b!6340284))

(assert (=> b!6340283 m!7148376))

(declare-fun m!7149010 () Bool)

(assert (=> b!6340283 m!7149010))

(assert (=> b!6339543 d!1989955))

(declare-fun bs!1587522 () Bool)

(declare-fun d!1989957 () Bool)

(assert (= bs!1587522 (and d!1989957 d!1989799)))

(declare-fun lambda!348286 () Int)

(assert (=> bs!1587522 (= lambda!348286 lambda!348219)))

(declare-fun bs!1587523 () Bool)

(assert (= bs!1587523 (and d!1989957 d!1989805)))

(assert (=> bs!1587523 (= lambda!348286 lambda!348224)))

(declare-fun bs!1587524 () Bool)

(assert (= bs!1587524 (and d!1989957 d!1989841)))

(assert (=> bs!1587524 (= lambda!348286 lambda!348235)))

(declare-fun bs!1587525 () Bool)

(assert (= bs!1587525 (and d!1989957 d!1989937)))

(assert (=> bs!1587525 (= lambda!348286 lambda!348272)))

(assert (=> d!1989957 (= (inv!83854 setElem!43142) (forall!15398 (exprs!6127 setElem!43142) lambda!348286))))

(declare-fun bs!1587526 () Bool)

(assert (= bs!1587526 d!1989957))

(declare-fun m!7149012 () Bool)

(assert (=> bs!1587526 m!7149012))

(assert (=> setNonEmpty!43142 d!1989957))

(declare-fun bs!1587529 () Bool)

(declare-fun d!1989959 () Bool)

(assert (= bs!1587529 (and d!1989959 d!1989841)))

(declare-fun lambda!348288 () Int)

(assert (=> bs!1587529 (= lambda!348288 lambda!348235)))

(declare-fun bs!1587530 () Bool)

(assert (= bs!1587530 (and d!1989959 d!1989957)))

(assert (=> bs!1587530 (= lambda!348288 lambda!348286)))

(declare-fun bs!1587532 () Bool)

(assert (= bs!1587532 (and d!1989959 d!1989805)))

(assert (=> bs!1587532 (= lambda!348288 lambda!348224)))

(declare-fun bs!1587533 () Bool)

(assert (= bs!1587533 (and d!1989959 d!1989799)))

(assert (=> bs!1587533 (= lambda!348288 lambda!348219)))

(declare-fun bs!1587535 () Bool)

(assert (= bs!1587535 (and d!1989959 d!1989937)))

(assert (=> bs!1587535 (= lambda!348288 lambda!348272)))

(declare-fun b!6340285 () Bool)

(declare-fun e!3851150 () Regex!16243)

(declare-fun e!3851149 () Regex!16243)

(assert (=> b!6340285 (= e!3851150 e!3851149)))

(declare-fun c!1152723 () Bool)

(assert (=> b!6340285 (= c!1152723 ((_ is Cons!64904) (exprs!6127 (h!71354 zl!343))))))

(declare-fun b!6340286 () Bool)

(declare-fun e!3851148 () Bool)

(declare-fun e!3851147 () Bool)

(assert (=> b!6340286 (= e!3851148 e!3851147)))

(declare-fun c!1152721 () Bool)

(assert (=> b!6340286 (= c!1152721 (isEmpty!36981 (tail!12062 (exprs!6127 (h!71354 zl!343)))))))

(declare-fun b!6340287 () Bool)

(declare-fun e!3851146 () Bool)

(assert (=> b!6340287 (= e!3851146 e!3851148)))

(declare-fun c!1152722 () Bool)

(assert (=> b!6340287 (= c!1152722 (isEmpty!36981 (exprs!6127 (h!71354 zl!343))))))

(declare-fun b!6340288 () Bool)

(declare-fun e!3851145 () Bool)

(assert (=> b!6340288 (= e!3851145 (isEmpty!36981 (t!378614 (exprs!6127 (h!71354 zl!343)))))))

(declare-fun b!6340289 () Bool)

(declare-fun lt!2362270 () Regex!16243)

(assert (=> b!6340289 (= e!3851147 (= lt!2362270 (head!12977 (exprs!6127 (h!71354 zl!343)))))))

(declare-fun b!6340291 () Bool)

(assert (=> b!6340291 (= e!3851147 (isConcat!1168 lt!2362270))))

(declare-fun b!6340290 () Bool)

(assert (=> b!6340290 (= e!3851150 (h!71352 (exprs!6127 (h!71354 zl!343))))))

(assert (=> d!1989959 e!3851146))

(declare-fun res!2609212 () Bool)

(assert (=> d!1989959 (=> (not res!2609212) (not e!3851146))))

(assert (=> d!1989959 (= res!2609212 (validRegex!7979 lt!2362270))))

(assert (=> d!1989959 (= lt!2362270 e!3851150)))

(declare-fun c!1152724 () Bool)

(assert (=> d!1989959 (= c!1152724 e!3851145)))

(declare-fun res!2609213 () Bool)

(assert (=> d!1989959 (=> (not res!2609213) (not e!3851145))))

(assert (=> d!1989959 (= res!2609213 ((_ is Cons!64904) (exprs!6127 (h!71354 zl!343))))))

(assert (=> d!1989959 (forall!15398 (exprs!6127 (h!71354 zl!343)) lambda!348288)))

(assert (=> d!1989959 (= (generalisedConcat!1840 (exprs!6127 (h!71354 zl!343))) lt!2362270)))

(declare-fun b!6340292 () Bool)

(assert (=> b!6340292 (= e!3851149 EmptyExpr!16243)))

(declare-fun b!6340293 () Bool)

(assert (=> b!6340293 (= e!3851149 (Concat!25088 (h!71352 (exprs!6127 (h!71354 zl!343))) (generalisedConcat!1840 (t!378614 (exprs!6127 (h!71354 zl!343))))))))

(declare-fun b!6340294 () Bool)

(assert (=> b!6340294 (= e!3851148 (isEmptyExpr!1645 lt!2362270))))

(assert (= (and d!1989959 res!2609213) b!6340288))

(assert (= (and d!1989959 c!1152724) b!6340290))

(assert (= (and d!1989959 (not c!1152724)) b!6340285))

(assert (= (and b!6340285 c!1152723) b!6340293))

(assert (= (and b!6340285 (not c!1152723)) b!6340292))

(assert (= (and d!1989959 res!2609212) b!6340287))

(assert (= (and b!6340287 c!1152722) b!6340294))

(assert (= (and b!6340287 (not c!1152722)) b!6340286))

(assert (= (and b!6340286 c!1152721) b!6340289))

(assert (= (and b!6340286 (not c!1152721)) b!6340291))

(declare-fun m!7149014 () Bool)

(assert (=> b!6340286 m!7149014))

(assert (=> b!6340286 m!7149014))

(declare-fun m!7149016 () Bool)

(assert (=> b!6340286 m!7149016))

(declare-fun m!7149018 () Bool)

(assert (=> d!1989959 m!7149018))

(declare-fun m!7149020 () Bool)

(assert (=> d!1989959 m!7149020))

(assert (=> b!6340288 m!7148392))

(declare-fun m!7149022 () Bool)

(assert (=> b!6340293 m!7149022))

(declare-fun m!7149024 () Bool)

(assert (=> b!6340289 m!7149024))

(declare-fun m!7149026 () Bool)

(assert (=> b!6340291 m!7149026))

(declare-fun m!7149028 () Bool)

(assert (=> b!6340294 m!7149028))

(declare-fun m!7149030 () Bool)

(assert (=> b!6340287 m!7149030))

(assert (=> b!6339553 d!1989959))

(declare-fun d!1989961 () Bool)

(declare-fun c!1152725 () Bool)

(assert (=> d!1989961 (= c!1152725 (isEmpty!36984 (t!378615 s!2326)))))

(declare-fun e!3851151 () Bool)

(assert (=> d!1989961 (= (matchZipper!2255 lt!2362111 (t!378615 s!2326)) e!3851151)))

(declare-fun b!6340295 () Bool)

(assert (=> b!6340295 (= e!3851151 (nullableZipper!2008 lt!2362111))))

(declare-fun b!6340296 () Bool)

(assert (=> b!6340296 (= e!3851151 (matchZipper!2255 (derivationStepZipper!2209 lt!2362111 (head!12979 (t!378615 s!2326))) (tail!12064 (t!378615 s!2326))))))

(assert (= (and d!1989961 c!1152725) b!6340295))

(assert (= (and d!1989961 (not c!1152725)) b!6340296))

(assert (=> d!1989961 m!7148582))

(declare-fun m!7149032 () Bool)

(assert (=> b!6340295 m!7149032))

(assert (=> b!6340296 m!7148590))

(assert (=> b!6340296 m!7148590))

(declare-fun m!7149034 () Bool)

(assert (=> b!6340296 m!7149034))

(assert (=> b!6340296 m!7148594))

(assert (=> b!6340296 m!7149034))

(assert (=> b!6340296 m!7148594))

(declare-fun m!7149036 () Bool)

(assert (=> b!6340296 m!7149036))

(assert (=> b!6339523 d!1989961))

(declare-fun b!6340307 () Bool)

(declare-fun e!3851154 () Bool)

(assert (=> b!6340307 (= e!3851154 tp_is_empty!41739)))

(declare-fun b!6340308 () Bool)

(declare-fun tp!1768133 () Bool)

(declare-fun tp!1768136 () Bool)

(assert (=> b!6340308 (= e!3851154 (and tp!1768133 tp!1768136))))

(assert (=> b!6339545 (= tp!1768115 e!3851154)))

(declare-fun b!6340310 () Bool)

(declare-fun tp!1768135 () Bool)

(declare-fun tp!1768137 () Bool)

(assert (=> b!6340310 (= e!3851154 (and tp!1768135 tp!1768137))))

(declare-fun b!6340309 () Bool)

(declare-fun tp!1768134 () Bool)

(assert (=> b!6340309 (= e!3851154 tp!1768134)))

(assert (= (and b!6339545 ((_ is ElementMatch!16243) (regOne!32999 r!7292))) b!6340307))

(assert (= (and b!6339545 ((_ is Concat!25088) (regOne!32999 r!7292))) b!6340308))

(assert (= (and b!6339545 ((_ is Star!16243) (regOne!32999 r!7292))) b!6340309))

(assert (= (and b!6339545 ((_ is Union!16243) (regOne!32999 r!7292))) b!6340310))

(declare-fun b!6340311 () Bool)

(declare-fun e!3851155 () Bool)

(assert (=> b!6340311 (= e!3851155 tp_is_empty!41739)))

(declare-fun b!6340312 () Bool)

(declare-fun tp!1768138 () Bool)

(declare-fun tp!1768141 () Bool)

(assert (=> b!6340312 (= e!3851155 (and tp!1768138 tp!1768141))))

(assert (=> b!6339545 (= tp!1768116 e!3851155)))

(declare-fun b!6340314 () Bool)

(declare-fun tp!1768140 () Bool)

(declare-fun tp!1768142 () Bool)

(assert (=> b!6340314 (= e!3851155 (and tp!1768140 tp!1768142))))

(declare-fun b!6340313 () Bool)

(declare-fun tp!1768139 () Bool)

(assert (=> b!6340313 (= e!3851155 tp!1768139)))

(assert (= (and b!6339545 ((_ is ElementMatch!16243) (regTwo!32999 r!7292))) b!6340311))

(assert (= (and b!6339545 ((_ is Concat!25088) (regTwo!32999 r!7292))) b!6340312))

(assert (= (and b!6339545 ((_ is Star!16243) (regTwo!32999 r!7292))) b!6340313))

(assert (= (and b!6339545 ((_ is Union!16243) (regTwo!32999 r!7292))) b!6340314))

(declare-fun b!6340319 () Bool)

(declare-fun e!3851158 () Bool)

(declare-fun tp!1768147 () Bool)

(declare-fun tp!1768148 () Bool)

(assert (=> b!6340319 (= e!3851158 (and tp!1768147 tp!1768148))))

(assert (=> b!6339555 (= tp!1768118 e!3851158)))

(assert (= (and b!6339555 ((_ is Cons!64904) (exprs!6127 setElem!43142))) b!6340319))

(declare-fun b!6340327 () Bool)

(declare-fun e!3851164 () Bool)

(declare-fun tp!1768153 () Bool)

(assert (=> b!6340327 (= e!3851164 tp!1768153)))

(declare-fun e!3851163 () Bool)

(declare-fun b!6340326 () Bool)

(declare-fun tp!1768154 () Bool)

(assert (=> b!6340326 (= e!3851163 (and (inv!83854 (h!71354 (t!378616 zl!343))) e!3851164 tp!1768154))))

(assert (=> b!6339525 (= tp!1768119 e!3851163)))

(assert (= b!6340326 b!6340327))

(assert (= (and b!6339525 ((_ is Cons!64906) (t!378616 zl!343))) b!6340326))

(declare-fun m!7149046 () Bool)

(assert (=> b!6340326 m!7149046))

(declare-fun b!6340328 () Bool)

(declare-fun e!3851165 () Bool)

(assert (=> b!6340328 (= e!3851165 tp_is_empty!41739)))

(declare-fun b!6340329 () Bool)

(declare-fun tp!1768155 () Bool)

(declare-fun tp!1768158 () Bool)

(assert (=> b!6340329 (= e!3851165 (and tp!1768155 tp!1768158))))

(assert (=> b!6339554 (= tp!1768117 e!3851165)))

(declare-fun b!6340331 () Bool)

(declare-fun tp!1768157 () Bool)

(declare-fun tp!1768159 () Bool)

(assert (=> b!6340331 (= e!3851165 (and tp!1768157 tp!1768159))))

(declare-fun b!6340330 () Bool)

(declare-fun tp!1768156 () Bool)

(assert (=> b!6340330 (= e!3851165 tp!1768156)))

(assert (= (and b!6339554 ((_ is ElementMatch!16243) (regOne!32998 r!7292))) b!6340328))

(assert (= (and b!6339554 ((_ is Concat!25088) (regOne!32998 r!7292))) b!6340329))

(assert (= (and b!6339554 ((_ is Star!16243) (regOne!32998 r!7292))) b!6340330))

(assert (= (and b!6339554 ((_ is Union!16243) (regOne!32998 r!7292))) b!6340331))

(declare-fun b!6340334 () Bool)

(declare-fun e!3851166 () Bool)

(assert (=> b!6340334 (= e!3851166 tp_is_empty!41739)))

(declare-fun b!6340335 () Bool)

(declare-fun tp!1768160 () Bool)

(declare-fun tp!1768163 () Bool)

(assert (=> b!6340335 (= e!3851166 (and tp!1768160 tp!1768163))))

(assert (=> b!6339554 (= tp!1768113 e!3851166)))

(declare-fun b!6340338 () Bool)

(declare-fun tp!1768162 () Bool)

(declare-fun tp!1768164 () Bool)

(assert (=> b!6340338 (= e!3851166 (and tp!1768162 tp!1768164))))

(declare-fun b!6340336 () Bool)

(declare-fun tp!1768161 () Bool)

(assert (=> b!6340336 (= e!3851166 tp!1768161)))

(assert (= (and b!6339554 ((_ is ElementMatch!16243) (regTwo!32998 r!7292))) b!6340334))

(assert (= (and b!6339554 ((_ is Concat!25088) (regTwo!32998 r!7292))) b!6340335))

(assert (= (and b!6339554 ((_ is Star!16243) (regTwo!32998 r!7292))) b!6340336))

(assert (= (and b!6339554 ((_ is Union!16243) (regTwo!32998 r!7292))) b!6340338))

(declare-fun b!6340340 () Bool)

(declare-fun e!3851169 () Bool)

(declare-fun tp!1768165 () Bool)

(declare-fun tp!1768166 () Bool)

(assert (=> b!6340340 (= e!3851169 (and tp!1768165 tp!1768166))))

(assert (=> b!6339524 (= tp!1768114 e!3851169)))

(assert (= (and b!6339524 ((_ is Cons!64904) (exprs!6127 (h!71354 zl!343)))) b!6340340))

(declare-fun b!6340341 () Bool)

(declare-fun e!3851170 () Bool)

(assert (=> b!6340341 (= e!3851170 tp_is_empty!41739)))

(declare-fun b!6340342 () Bool)

(declare-fun tp!1768167 () Bool)

(declare-fun tp!1768170 () Bool)

(assert (=> b!6340342 (= e!3851170 (and tp!1768167 tp!1768170))))

(assert (=> b!6339549 (= tp!1768121 e!3851170)))

(declare-fun b!6340344 () Bool)

(declare-fun tp!1768169 () Bool)

(declare-fun tp!1768171 () Bool)

(assert (=> b!6340344 (= e!3851170 (and tp!1768169 tp!1768171))))

(declare-fun b!6340343 () Bool)

(declare-fun tp!1768168 () Bool)

(assert (=> b!6340343 (= e!3851170 tp!1768168)))

(assert (= (and b!6339549 ((_ is ElementMatch!16243) (reg!16572 r!7292))) b!6340341))

(assert (= (and b!6339549 ((_ is Concat!25088) (reg!16572 r!7292))) b!6340342))

(assert (= (and b!6339549 ((_ is Star!16243) (reg!16572 r!7292))) b!6340343))

(assert (= (and b!6339549 ((_ is Union!16243) (reg!16572 r!7292))) b!6340344))

(declare-fun condSetEmpty!43145 () Bool)

(assert (=> setNonEmpty!43142 (= condSetEmpty!43145 (= setRest!43142 ((as const (Array Context!11254 Bool)) false)))))

(declare-fun setRes!43145 () Bool)

(assert (=> setNonEmpty!43142 (= tp!1768122 setRes!43145)))

(declare-fun setIsEmpty!43145 () Bool)

(assert (=> setIsEmpty!43145 setRes!43145))

(declare-fun tp!1768176 () Bool)

(declare-fun setNonEmpty!43145 () Bool)

(declare-fun setElem!43145 () Context!11254)

(declare-fun e!3851174 () Bool)

(assert (=> setNonEmpty!43145 (= setRes!43145 (and tp!1768176 (inv!83854 setElem!43145) e!3851174))))

(declare-fun setRest!43145 () (InoxSet Context!11254))

(assert (=> setNonEmpty!43145 (= setRest!43142 ((_ map or) (store ((as const (Array Context!11254 Bool)) false) setElem!43145 true) setRest!43145))))

(declare-fun b!6340351 () Bool)

(declare-fun tp!1768177 () Bool)

(assert (=> b!6340351 (= e!3851174 tp!1768177)))

(assert (= (and setNonEmpty!43142 condSetEmpty!43145) setIsEmpty!43145))

(assert (= (and setNonEmpty!43142 (not condSetEmpty!43145)) setNonEmpty!43145))

(assert (= setNonEmpty!43145 b!6340351))

(declare-fun m!7149052 () Bool)

(assert (=> setNonEmpty!43145 m!7149052))

(declare-fun b!6340367 () Bool)

(declare-fun e!3851185 () Bool)

(declare-fun tp!1768180 () Bool)

(assert (=> b!6340367 (= e!3851185 (and tp_is_empty!41739 tp!1768180))))

(assert (=> b!6339538 (= tp!1768120 e!3851185)))

(assert (= (and b!6339538 ((_ is Cons!64905) (t!378615 s!2326))) b!6340367))

(declare-fun b_lambda!241285 () Bool)

(assert (= b_lambda!241277 (or b!6339546 b_lambda!241285)))

(declare-fun bs!1587538 () Bool)

(declare-fun d!1989971 () Bool)

(assert (= bs!1587538 (and d!1989971 b!6339546)))

(assert (=> bs!1587538 (= (dynLambda!25724 lambda!348201 (h!71354 zl!343)) (derivationStepZipperUp!1417 (h!71354 zl!343) (h!71353 s!2326)))))

(assert (=> bs!1587538 m!7148410))

(assert (=> d!1989781 d!1989971))

(declare-fun b_lambda!241287 () Bool)

(assert (= b_lambda!241283 (or b!6339546 b_lambda!241287)))

(declare-fun bs!1587539 () Bool)

(declare-fun d!1989973 () Bool)

(assert (= bs!1587539 (and d!1989973 b!6339546)))

(assert (=> bs!1587539 (= (dynLambda!25724 lambda!348201 lt!2362117) (derivationStepZipperUp!1417 lt!2362117 (h!71353 s!2326)))))

(assert (=> bs!1587539 m!7148418))

(assert (=> d!1989931 d!1989973))

(check-sat (not b!6340313) (not bm!540269) (not b!6340281) (not b!6339629) (not b!6339962) (not d!1989933) (not b!6340312) (not b!6340027) (not b!6340286) (not b!6339684) (not b!6339752) (not bm!540222) (not bm!540245) (not b!6340342) (not b!6339886) (not d!1989937) (not d!1989837) (not b!6339955) (not b!6340330) (not b!6339685) (not d!1989935) (not d!1989805) (not bm!540267) (not b!6340266) (not b!6340288) (not b!6340096) (not b!6340327) (not b!6340326) (not b!6340164) (not d!1989851) (not d!1989927) (not b!6340338) (not b!6339957) (not b!6339652) (not d!1989825) (not d!1989783) (not d!1989897) (not b!6340351) (not bm!540296) (not b!6339758) (not d!1989957) (not b!6339646) (not b!6340291) (not b!6340020) (not b!6340367) (not d!1989781) (not b!6339734) (not b!6339879) (not d!1989809) (not b!6340308) (not b!6339760) (not b!6339726) (not b!6340095) (not b!6340161) (not b!6340336) (not b!6339954) (not b!6340255) (not b!6339961) (not bm!540227) (not d!1989961) (not b!6340319) (not bm!540268) (not b!6340022) (not d!1989863) (not bm!540208) (not bs!1587538) (not b!6340259) (not d!1989891) (not b!6339689) (not b!6340343) (not d!1989861) (not d!1989931) (not b!6340258) (not bm!540298) (not b!6339575) (not b!6340295) (not d!1989951) (not b!6339830) (not d!1989899) (not b!6340344) (not bm!540244) (not d!1989813) (not b!6340026) (not d!1989853) (not d!1989871) (not b!6339881) (not bm!540223) (not b!6340265) (not b!6340289) (not b!6340331) (not b!6340296) (not b!6340244) (not b!6339963) (not b!6339875) (not b!6339692) (not b!6340154) (not d!1989949) (not b!6340283) (not b!6340310) (not b!6340180) (not b!6339956) (not d!1989807) (not b!6340329) (not d!1989841) (not b!6340247) (not d!1989779) (not b!6339686) (not d!1989789) (not b!6339964) (not b!6340152) (not b!6339750) (not bm!540221) (not d!1989893) (not bm!540297) (not b!6340165) (not bm!540304) (not b!6340159) (not bm!540228) (not d!1989959) (not b!6340314) (not b!6340028) (not b!6339878) (not bm!540306) (not d!1989799) (not b!6339751) (not b!6339651) (not b!6339688) (not b!6340094) (not b!6339691) (not b_lambda!241285) (not b!6340340) (not b!6340309) (not b!6340107) (not b!6339753) (not b!6339647) (not b!6340293) (not b!6340261) (not bm!540249) (not b!6339574) (not b!6340025) (not b!6340294) (not b!6340108) tp_is_empty!41739 (not b!6339885) (not b!6339959) (not b!6340171) (not bm!540305) (not b!6340335) (not d!1989873) (not bs!1587539) (not b!6340287) (not b_lambda!241287) (not setNonEmpty!43145))
(check-sat)
