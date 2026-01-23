; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!617934 () Bool)

(assert start!617934)

(declare-fun b!6196946 () Bool)

(assert (=> b!6196946 true))

(assert (=> b!6196946 true))

(declare-fun lambda!338530 () Int)

(declare-fun lambda!338529 () Int)

(assert (=> b!6196946 (not (= lambda!338530 lambda!338529))))

(assert (=> b!6196946 true))

(assert (=> b!6196946 true))

(declare-fun b!6196977 () Bool)

(assert (=> b!6196977 true))

(declare-fun b!6196942 () Bool)

(declare-fun e!3773856 () Bool)

(declare-fun tp!1728632 () Bool)

(declare-fun tp!1728634 () Bool)

(assert (=> b!6196942 (= e!3773856 (and tp!1728632 tp!1728634))))

(declare-fun b!6196943 () Bool)

(declare-fun e!3773858 () Bool)

(declare-fun e!3773862 () Bool)

(assert (=> b!6196943 (= e!3773858 e!3773862)))

(declare-fun res!2563445 () Bool)

(assert (=> b!6196943 (=> res!2563445 e!3773862)))

(declare-datatypes ((C!32544 0))(
  ( (C!32545 (val!25974 Int)) )
))
(declare-datatypes ((Regex!16137 0))(
  ( (ElementMatch!16137 (c!1118450 C!32544)) (Concat!24982 (regOne!32786 Regex!16137) (regTwo!32786 Regex!16137)) (EmptyExpr!16137) (Star!16137 (reg!16466 Regex!16137)) (EmptyLang!16137) (Union!16137 (regOne!32787 Regex!16137) (regTwo!32787 Regex!16137)) )
))
(declare-fun r!7292 () Regex!16137)

(declare-fun lt!2342453 () Regex!16137)

(declare-fun lt!2342414 () Regex!16137)

(declare-fun lt!2342456 () Regex!16137)

(assert (=> b!6196943 (= res!2563445 (or (not (= lt!2342456 (Concat!24982 (regOne!32787 (regOne!32786 r!7292)) lt!2342453))) (not (= lt!2342414 (Concat!24982 (regTwo!32787 (regOne!32786 r!7292)) lt!2342453))) (not (= (regTwo!32786 r!7292) lt!2342453))))))

(declare-datatypes ((List!64710 0))(
  ( (Nil!64586) (Cons!64586 (h!71034 Regex!16137) (t!378224 List!64710)) )
))
(declare-datatypes ((Context!11042 0))(
  ( (Context!11043 (exprs!6021 List!64710)) )
))
(declare-datatypes ((List!64711 0))(
  ( (Nil!64587) (Cons!64587 (h!71035 Context!11042) (t!378225 List!64711)) )
))
(declare-fun zl!343 () List!64711)

(declare-fun generalisedConcat!1734 (List!64710) Regex!16137)

(assert (=> b!6196943 (= lt!2342453 (generalisedConcat!1734 (t!378224 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun b!6196944 () Bool)

(declare-fun e!3773868 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2342432 () (InoxSet Context!11042))

(declare-datatypes ((List!64712 0))(
  ( (Nil!64588) (Cons!64588 (h!71036 C!32544) (t!378226 List!64712)) )
))
(declare-fun s!2326 () List!64712)

(declare-fun matchZipper!2149 ((InoxSet Context!11042) List!64712) Bool)

(assert (=> b!6196944 (= e!3773868 (matchZipper!2149 lt!2342432 (t!378226 s!2326)))))

(declare-fun b!6196945 () Bool)

(declare-fun e!3773866 () Bool)

(declare-fun tp_is_empty!41527 () Bool)

(declare-fun tp!1728626 () Bool)

(assert (=> b!6196945 (= e!3773866 (and tp_is_empty!41527 tp!1728626))))

(declare-fun e!3773865 () Bool)

(declare-fun e!3773864 () Bool)

(assert (=> b!6196946 (= e!3773865 e!3773864)))

(declare-fun res!2563459 () Bool)

(assert (=> b!6196946 (=> res!2563459 e!3773864)))

(declare-fun lt!2342426 () Bool)

(declare-fun lt!2342452 () Bool)

(get-info :version)

(assert (=> b!6196946 (= res!2563459 (or (not (= lt!2342452 lt!2342426)) ((_ is Nil!64588) s!2326)))))

(declare-fun Exists!3207 (Int) Bool)

(assert (=> b!6196946 (= (Exists!3207 lambda!338529) (Exists!3207 lambda!338530))))

(declare-datatypes ((Unit!157875 0))(
  ( (Unit!157876) )
))
(declare-fun lt!2342439 () Unit!157875)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1744 (Regex!16137 Regex!16137 List!64712) Unit!157875)

(assert (=> b!6196946 (= lt!2342439 (lemmaExistCutMatchRandMatchRSpecEquivalent!1744 (regOne!32786 r!7292) (regTwo!32786 r!7292) s!2326))))

(assert (=> b!6196946 (= lt!2342426 (Exists!3207 lambda!338529))))

(declare-datatypes ((tuple2!66232 0))(
  ( (tuple2!66233 (_1!36419 List!64712) (_2!36419 List!64712)) )
))
(declare-datatypes ((Option!16028 0))(
  ( (None!16027) (Some!16027 (v!52170 tuple2!66232)) )
))
(declare-fun isDefined!12731 (Option!16028) Bool)

(declare-fun findConcatSeparation!2442 (Regex!16137 Regex!16137 List!64712 List!64712 List!64712) Option!16028)

(assert (=> b!6196946 (= lt!2342426 (isDefined!12731 (findConcatSeparation!2442 (regOne!32786 r!7292) (regTwo!32786 r!7292) Nil!64588 s!2326 s!2326)))))

(declare-fun lt!2342434 () Unit!157875)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2206 (Regex!16137 Regex!16137 List!64712) Unit!157875)

(assert (=> b!6196946 (= lt!2342434 (lemmaFindConcatSeparationEquivalentToExists!2206 (regOne!32786 r!7292) (regTwo!32786 r!7292) s!2326))))

(declare-fun res!2563458 () Bool)

(declare-fun e!3773873 () Bool)

(assert (=> start!617934 (=> (not res!2563458) (not e!3773873))))

(declare-fun validRegex!7873 (Regex!16137) Bool)

(assert (=> start!617934 (= res!2563458 (validRegex!7873 r!7292))))

(assert (=> start!617934 e!3773873))

(assert (=> start!617934 e!3773856))

(declare-fun condSetEmpty!42052 () Bool)

(declare-fun z!1189 () (InoxSet Context!11042))

(assert (=> start!617934 (= condSetEmpty!42052 (= z!1189 ((as const (Array Context!11042 Bool)) false)))))

(declare-fun setRes!42052 () Bool)

(assert (=> start!617934 setRes!42052))

(declare-fun e!3773872 () Bool)

(assert (=> start!617934 e!3773872))

(assert (=> start!617934 e!3773866))

(declare-fun b!6196947 () Bool)

(declare-fun e!3773863 () Bool)

(declare-fun e!3773860 () Bool)

(assert (=> b!6196947 (= e!3773863 e!3773860)))

(declare-fun res!2563465 () Bool)

(assert (=> b!6196947 (=> res!2563465 e!3773860)))

(declare-fun lt!2342447 () Bool)

(declare-fun e!3773867 () Bool)

(assert (=> b!6196947 (= res!2563465 (not (= lt!2342447 e!3773867)))))

(declare-fun res!2563460 () Bool)

(assert (=> b!6196947 (=> res!2563460 e!3773867)))

(declare-fun lt!2342449 () Bool)

(assert (=> b!6196947 (= res!2563460 lt!2342449)))

(assert (=> b!6196947 (= lt!2342447 (matchZipper!2149 z!1189 s!2326))))

(declare-fun lt!2342441 () (InoxSet Context!11042))

(assert (=> b!6196947 (= lt!2342449 (matchZipper!2149 lt!2342441 s!2326))))

(declare-fun lt!2342454 () Unit!157875)

(declare-fun e!3773881 () Unit!157875)

(assert (=> b!6196947 (= lt!2342454 e!3773881)))

(declare-fun c!1118447 () Bool)

(declare-fun nullable!6130 (Regex!16137) Bool)

(assert (=> b!6196947 (= c!1118447 (nullable!6130 (regTwo!32787 (regOne!32786 r!7292))))))

(declare-fun lambda!338531 () Int)

(declare-fun lt!2342425 () (InoxSet Context!11042))

(declare-fun lt!2342450 () Context!11042)

(declare-fun flatMap!1642 ((InoxSet Context!11042) Int) (InoxSet Context!11042))

(declare-fun derivationStepZipperUp!1311 (Context!11042 C!32544) (InoxSet Context!11042))

(assert (=> b!6196947 (= (flatMap!1642 lt!2342425 lambda!338531) (derivationStepZipperUp!1311 lt!2342450 (h!71036 s!2326)))))

(declare-fun lt!2342424 () Unit!157875)

(declare-fun lemmaFlatMapOnSingletonSet!1168 ((InoxSet Context!11042) Context!11042 Int) Unit!157875)

(assert (=> b!6196947 (= lt!2342424 (lemmaFlatMapOnSingletonSet!1168 lt!2342425 lt!2342450 lambda!338531))))

(declare-fun lt!2342451 () (InoxSet Context!11042))

(assert (=> b!6196947 (= lt!2342451 (derivationStepZipperUp!1311 lt!2342450 (h!71036 s!2326)))))

(declare-fun lt!2342429 () Unit!157875)

(declare-fun e!3773871 () Unit!157875)

(assert (=> b!6196947 (= lt!2342429 e!3773871)))

(declare-fun c!1118448 () Bool)

(assert (=> b!6196947 (= c!1118448 (nullable!6130 (regOne!32787 (regOne!32786 r!7292))))))

(declare-fun lt!2342419 () Context!11042)

(assert (=> b!6196947 (= (flatMap!1642 lt!2342441 lambda!338531) (derivationStepZipperUp!1311 lt!2342419 (h!71036 s!2326)))))

(declare-fun lt!2342433 () Unit!157875)

(assert (=> b!6196947 (= lt!2342433 (lemmaFlatMapOnSingletonSet!1168 lt!2342441 lt!2342419 lambda!338531))))

(declare-fun lt!2342405 () (InoxSet Context!11042))

(assert (=> b!6196947 (= lt!2342405 (derivationStepZipperUp!1311 lt!2342419 (h!71036 s!2326)))))

(assert (=> b!6196947 (= lt!2342425 (store ((as const (Array Context!11042 Bool)) false) lt!2342450 true))))

(declare-fun lt!2342458 () List!64710)

(assert (=> b!6196947 (= lt!2342450 (Context!11043 lt!2342458))))

(assert (=> b!6196947 (= lt!2342458 (Cons!64586 (regTwo!32787 (regOne!32786 r!7292)) (t!378224 (exprs!6021 (h!71035 zl!343)))))))

(assert (=> b!6196947 (= lt!2342441 (store ((as const (Array Context!11042 Bool)) false) lt!2342419 true))))

(declare-fun lt!2342455 () List!64710)

(assert (=> b!6196947 (= lt!2342419 (Context!11043 lt!2342455))))

(assert (=> b!6196947 (= lt!2342455 (Cons!64586 (regOne!32787 (regOne!32786 r!7292)) (t!378224 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun b!6196948 () Bool)

(declare-fun tp!1728625 () Bool)

(assert (=> b!6196948 (= e!3773856 tp!1728625)))

(declare-fun b!6196949 () Bool)

(declare-fun e!3773875 () Bool)

(assert (=> b!6196949 (= e!3773875 e!3773863)))

(declare-fun res!2563446 () Bool)

(assert (=> b!6196949 (=> res!2563446 e!3773863)))

(declare-fun e!3773874 () Bool)

(assert (=> b!6196949 (= res!2563446 e!3773874)))

(declare-fun res!2563442 () Bool)

(assert (=> b!6196949 (=> (not res!2563442) (not e!3773874))))

(declare-fun lt!2342430 () Bool)

(declare-fun lt!2342436 () (InoxSet Context!11042))

(assert (=> b!6196949 (= res!2563442 (not (= (matchZipper!2149 lt!2342436 (t!378226 s!2326)) lt!2342430)))))

(declare-fun lt!2342412 () (InoxSet Context!11042))

(assert (=> b!6196949 (= (matchZipper!2149 lt!2342412 (t!378226 s!2326)) e!3773868)))

(declare-fun res!2563467 () Bool)

(assert (=> b!6196949 (=> res!2563467 e!3773868)))

(assert (=> b!6196949 (= res!2563467 lt!2342430)))

(declare-fun lt!2342407 () (InoxSet Context!11042))

(assert (=> b!6196949 (= lt!2342430 (matchZipper!2149 lt!2342407 (t!378226 s!2326)))))

(declare-fun lt!2342444 () Unit!157875)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!968 ((InoxSet Context!11042) (InoxSet Context!11042) List!64712) Unit!157875)

(assert (=> b!6196949 (= lt!2342444 (lemmaZipperConcatMatchesSameAsBothZippers!968 lt!2342407 lt!2342432 (t!378226 s!2326)))))

(declare-fun b!6196950 () Bool)

(declare-fun Unit!157877 () Unit!157875)

(assert (=> b!6196950 (= e!3773881 Unit!157877)))

(declare-fun lt!2342443 () (InoxSet Context!11042))

(declare-fun lt!2342457 () Unit!157875)

(assert (=> b!6196950 (= lt!2342457 (lemmaZipperConcatMatchesSameAsBothZippers!968 lt!2342432 lt!2342443 (t!378226 s!2326)))))

(declare-fun res!2563457 () Bool)

(assert (=> b!6196950 (= res!2563457 (matchZipper!2149 lt!2342432 (t!378226 s!2326)))))

(declare-fun e!3773855 () Bool)

(assert (=> b!6196950 (=> res!2563457 e!3773855)))

(assert (=> b!6196950 (= (matchZipper!2149 ((_ map or) lt!2342432 lt!2342443) (t!378226 s!2326)) e!3773855)))

(declare-fun b!6196951 () Bool)

(declare-fun e!3773869 () Unit!157875)

(declare-fun Unit!157878 () Unit!157875)

(assert (=> b!6196951 (= e!3773869 Unit!157878)))

(declare-fun b!6196952 () Bool)

(declare-fun e!3773877 () Bool)

(assert (=> b!6196952 (= e!3773877 e!3773858)))

(declare-fun res!2563449 () Bool)

(assert (=> b!6196952 (=> res!2563449 e!3773858)))

(declare-fun lt!2342427 () Regex!16137)

(assert (=> b!6196952 (= res!2563449 (not (= r!7292 lt!2342427)))))

(assert (=> b!6196952 (= lt!2342427 (Concat!24982 (Union!16137 (regOne!32787 (regOne!32786 r!7292)) (regTwo!32787 (regOne!32786 r!7292))) (regTwo!32786 r!7292)))))

(declare-fun b!6196953 () Bool)

(declare-fun res!2563452 () Bool)

(assert (=> b!6196953 (=> (not res!2563452) (not e!3773873))))

(declare-fun toList!9921 ((InoxSet Context!11042)) List!64711)

(assert (=> b!6196953 (= res!2563452 (= (toList!9921 z!1189) zl!343))))

(declare-fun b!6196954 () Bool)

(declare-fun tp!1728633 () Bool)

(declare-fun tp!1728629 () Bool)

(assert (=> b!6196954 (= e!3773856 (and tp!1728633 tp!1728629))))

(declare-fun b!6196955 () Bool)

(assert (=> b!6196955 (= e!3773856 tp_is_empty!41527)))

(declare-fun b!6196956 () Bool)

(declare-fun e!3773876 () Bool)

(assert (=> b!6196956 (= e!3773876 (not e!3773865))))

(declare-fun res!2563443 () Bool)

(assert (=> b!6196956 (=> res!2563443 e!3773865)))

(assert (=> b!6196956 (= res!2563443 (not ((_ is Cons!64587) zl!343)))))

(declare-fun matchRSpec!3238 (Regex!16137 List!64712) Bool)

(assert (=> b!6196956 (= lt!2342452 (matchRSpec!3238 r!7292 s!2326))))

(declare-fun matchR!8320 (Regex!16137 List!64712) Bool)

(assert (=> b!6196956 (= lt!2342452 (matchR!8320 r!7292 s!2326))))

(declare-fun lt!2342415 () Unit!157875)

(declare-fun mainMatchTheorem!3238 (Regex!16137 List!64712) Unit!157875)

(assert (=> b!6196956 (= lt!2342415 (mainMatchTheorem!3238 r!7292 s!2326))))

(declare-fun b!6196957 () Bool)

(assert (=> b!6196957 (= e!3773874 (not (matchZipper!2149 lt!2342432 (t!378226 s!2326))))))

(declare-fun setIsEmpty!42052 () Bool)

(assert (=> setIsEmpty!42052 setRes!42052))

(declare-fun b!6196958 () Bool)

(declare-fun Unit!157879 () Unit!157875)

(assert (=> b!6196958 (= e!3773869 Unit!157879)))

(declare-fun lt!2342408 () Unit!157875)

(assert (=> b!6196958 (= lt!2342408 (lemmaZipperConcatMatchesSameAsBothZippers!968 lt!2342436 lt!2342443 (t!378226 s!2326)))))

(declare-fun res!2563450 () Bool)

(assert (=> b!6196958 (= res!2563450 (matchZipper!2149 lt!2342436 (t!378226 s!2326)))))

(declare-fun e!3773857 () Bool)

(assert (=> b!6196958 (=> res!2563450 e!3773857)))

(assert (=> b!6196958 (= (matchZipper!2149 ((_ map or) lt!2342436 lt!2342443) (t!378226 s!2326)) e!3773857)))

(declare-fun lt!2342431 () Bool)

(declare-fun b!6196959 () Bool)

(declare-fun lt!2342448 () Bool)

(declare-fun lt!2342411 () Bool)

(assert (=> b!6196959 (= e!3773862 (or (and (not (= lt!2342431 lt!2342448)) (not lt!2342411)) (= lt!2342452 lt!2342447)))))

(assert (=> b!6196959 (= lt!2342431 (matchRSpec!3238 lt!2342427 s!2326))))

(declare-fun lt!2342406 () Unit!157875)

(assert (=> b!6196959 (= lt!2342406 (mainMatchTheorem!3238 lt!2342427 s!2326))))

(declare-fun lt!2342418 () Bool)

(declare-fun lt!2342438 () Regex!16137)

(assert (=> b!6196959 (= lt!2342418 (matchRSpec!3238 lt!2342438 s!2326))))

(declare-fun lt!2342437 () Unit!157875)

(assert (=> b!6196959 (= lt!2342437 (mainMatchTheorem!3238 lt!2342438 s!2326))))

(assert (=> b!6196959 (= lt!2342431 lt!2342418)))

(assert (=> b!6196959 (= lt!2342418 (matchR!8320 lt!2342438 s!2326))))

(assert (=> b!6196959 (= lt!2342431 (matchR!8320 lt!2342427 s!2326))))

(assert (=> b!6196959 (= lt!2342438 (Union!16137 (Concat!24982 (regOne!32787 (regOne!32786 r!7292)) (regTwo!32786 r!7292)) (Concat!24982 (regTwo!32787 (regOne!32786 r!7292)) (regTwo!32786 r!7292))))))

(declare-fun lt!2342446 () Unit!157875)

(declare-fun lemmaConcatDistributesInUnion!54 (Regex!16137 Regex!16137 Regex!16137 List!64712) Unit!157875)

(assert (=> b!6196959 (= lt!2342446 (lemmaConcatDistributesInUnion!54 (regOne!32787 (regOne!32786 r!7292)) (regTwo!32787 (regOne!32786 r!7292)) (regTwo!32786 r!7292) s!2326))))

(declare-fun b!6196960 () Bool)

(declare-fun e!3773878 () Bool)

(declare-fun tp!1728631 () Bool)

(assert (=> b!6196960 (= e!3773878 tp!1728631)))

(declare-fun b!6196961 () Bool)

(declare-fun Unit!157880 () Unit!157875)

(assert (=> b!6196961 (= e!3773881 Unit!157880)))

(declare-fun b!6196962 () Bool)

(declare-fun res!2563453 () Bool)

(assert (=> b!6196962 (=> res!2563453 e!3773865)))

(declare-fun isEmpty!36574 (List!64711) Bool)

(assert (=> b!6196962 (= res!2563453 (not (isEmpty!36574 (t!378225 zl!343))))))

(declare-fun b!6196963 () Bool)

(declare-fun e!3773861 () Bool)

(assert (=> b!6196963 (= e!3773861 e!3773875)))

(declare-fun res!2563448 () Bool)

(assert (=> b!6196963 (=> res!2563448 e!3773875)))

(assert (=> b!6196963 (= res!2563448 (not (= lt!2342436 lt!2342412)))))

(assert (=> b!6196963 (= lt!2342412 ((_ map or) lt!2342407 lt!2342432))))

(declare-fun lt!2342428 () Context!11042)

(declare-fun derivationStepZipperDown!1385 (Regex!16137 Context!11042 C!32544) (InoxSet Context!11042))

(assert (=> b!6196963 (= lt!2342432 (derivationStepZipperDown!1385 (regTwo!32787 (regOne!32786 r!7292)) lt!2342428 (h!71036 s!2326)))))

(assert (=> b!6196963 (= lt!2342407 (derivationStepZipperDown!1385 (regOne!32787 (regOne!32786 r!7292)) lt!2342428 (h!71036 s!2326)))))

(declare-fun b!6196964 () Bool)

(declare-fun res!2563466 () Bool)

(assert (=> b!6196964 (=> res!2563466 e!3773865)))

(assert (=> b!6196964 (= res!2563466 (or ((_ is EmptyExpr!16137) r!7292) ((_ is EmptyLang!16137) r!7292) ((_ is ElementMatch!16137) r!7292) ((_ is Union!16137) r!7292) (not ((_ is Concat!24982) r!7292))))))

(declare-fun b!6196965 () Bool)

(declare-fun Unit!157881 () Unit!157875)

(assert (=> b!6196965 (= e!3773871 Unit!157881)))

(declare-fun b!6196966 () Bool)

(declare-fun res!2563444 () Bool)

(assert (=> b!6196966 (=> res!2563444 e!3773865)))

(assert (=> b!6196966 (= res!2563444 (not ((_ is Cons!64586) (exprs!6021 (h!71035 zl!343)))))))

(declare-fun setNonEmpty!42052 () Bool)

(declare-fun setElem!42052 () Context!11042)

(declare-fun e!3773859 () Bool)

(declare-fun tp!1728627 () Bool)

(declare-fun inv!83589 (Context!11042) Bool)

(assert (=> setNonEmpty!42052 (= setRes!42052 (and tp!1728627 (inv!83589 setElem!42052) e!3773859))))

(declare-fun setRest!42052 () (InoxSet Context!11042))

(assert (=> setNonEmpty!42052 (= z!1189 ((_ map or) (store ((as const (Array Context!11042 Bool)) false) setElem!42052 true) setRest!42052))))

(declare-fun b!6196967 () Bool)

(declare-fun Unit!157882 () Unit!157875)

(assert (=> b!6196967 (= e!3773871 Unit!157882)))

(declare-fun lt!2342416 () Unit!157875)

(assert (=> b!6196967 (= lt!2342416 (lemmaZipperConcatMatchesSameAsBothZippers!968 lt!2342407 lt!2342443 (t!378226 s!2326)))))

(declare-fun res!2563454 () Bool)

(assert (=> b!6196967 (= res!2563454 lt!2342430)))

(declare-fun e!3773880 () Bool)

(assert (=> b!6196967 (=> res!2563454 e!3773880)))

(assert (=> b!6196967 (= (matchZipper!2149 ((_ map or) lt!2342407 lt!2342443) (t!378226 s!2326)) e!3773880)))

(declare-fun b!6196968 () Bool)

(declare-fun e!3773879 () Bool)

(assert (=> b!6196968 (= e!3773860 e!3773879)))

(declare-fun res!2563464 () Bool)

(assert (=> b!6196968 (=> res!2563464 e!3773879)))

(declare-fun lt!2342445 () Int)

(declare-fun lt!2342422 () Int)

(assert (=> b!6196968 (= res!2563464 (>= lt!2342445 lt!2342422))))

(declare-fun zipperDepthTotal!320 (List!64711) Int)

(assert (=> b!6196968 (= lt!2342422 (zipperDepthTotal!320 zl!343))))

(declare-fun lt!2342413 () List!64711)

(assert (=> b!6196968 (= lt!2342445 (zipperDepthTotal!320 lt!2342413))))

(assert (=> b!6196968 (= lt!2342413 (Cons!64587 lt!2342419 Nil!64587))))

(declare-fun b!6196969 () Bool)

(declare-fun tp!1728630 () Bool)

(assert (=> b!6196969 (= e!3773872 (and (inv!83589 (h!71035 zl!343)) e!3773878 tp!1728630))))

(declare-fun b!6196970 () Bool)

(assert (=> b!6196970 (= e!3773880 (matchZipper!2149 lt!2342443 (t!378226 s!2326)))))

(declare-fun b!6196971 () Bool)

(declare-fun tp!1728628 () Bool)

(assert (=> b!6196971 (= e!3773859 tp!1728628)))

(declare-fun b!6196972 () Bool)

(declare-fun res!2563462 () Bool)

(assert (=> b!6196972 (=> res!2563462 e!3773864)))

(declare-fun isEmpty!36575 (List!64710) Bool)

(assert (=> b!6196972 (= res!2563462 (isEmpty!36575 (t!378224 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun b!6196973 () Bool)

(declare-fun res!2563447 () Bool)

(assert (=> b!6196973 (=> res!2563447 e!3773865)))

(assert (=> b!6196973 (= res!2563447 (not (= r!7292 (generalisedConcat!1734 (exprs!6021 (h!71035 zl!343))))))))

(declare-fun b!6196974 () Bool)

(assert (=> b!6196974 (= e!3773867 (matchZipper!2149 lt!2342425 s!2326))))

(declare-fun b!6196975 () Bool)

(assert (=> b!6196975 (= e!3773855 (matchZipper!2149 lt!2342443 (t!378226 s!2326)))))

(declare-fun b!6196976 () Bool)

(declare-fun e!3773870 () Bool)

(assert (=> b!6196976 (= e!3773870 e!3773877)))

(declare-fun res!2563456 () Bool)

(assert (=> b!6196976 (=> res!2563456 e!3773877)))

(assert (=> b!6196976 (= res!2563456 (and (not (= lt!2342447 lt!2342448)) (not lt!2342411)))))

(assert (=> b!6196976 (= lt!2342411 (matchRSpec!3238 lt!2342414 s!2326))))

(declare-fun lt!2342410 () Unit!157875)

(assert (=> b!6196976 (= lt!2342410 (mainMatchTheorem!3238 lt!2342414 s!2326))))

(assert (=> b!6196976 (= lt!2342448 (matchRSpec!3238 lt!2342456 s!2326))))

(declare-fun lt!2342409 () Unit!157875)

(assert (=> b!6196976 (= lt!2342409 (mainMatchTheorem!3238 lt!2342456 s!2326))))

(assert (=> b!6196976 (= lt!2342411 (matchZipper!2149 lt!2342425 s!2326))))

(assert (=> b!6196976 (= lt!2342411 (matchR!8320 lt!2342414 s!2326))))

(declare-fun lt!2342420 () Unit!157875)

(declare-fun lt!2342417 () List!64711)

(declare-fun theoremZipperRegexEquiv!749 ((InoxSet Context!11042) List!64711 Regex!16137 List!64712) Unit!157875)

(assert (=> b!6196976 (= lt!2342420 (theoremZipperRegexEquiv!749 lt!2342425 lt!2342417 lt!2342414 s!2326))))

(assert (=> b!6196976 (= lt!2342414 (generalisedConcat!1734 lt!2342458))))

(assert (=> b!6196976 (= lt!2342448 lt!2342449)))

(assert (=> b!6196976 (= lt!2342448 (matchR!8320 lt!2342456 s!2326))))

(declare-fun lt!2342435 () Unit!157875)

(assert (=> b!6196976 (= lt!2342435 (theoremZipperRegexEquiv!749 lt!2342441 lt!2342413 lt!2342456 s!2326))))

(assert (=> b!6196976 (= lt!2342456 (generalisedConcat!1734 lt!2342455))))

(assert (=> b!6196977 (= e!3773864 e!3773861)))

(declare-fun res!2563441 () Bool)

(assert (=> b!6196977 (=> res!2563441 e!3773861)))

(assert (=> b!6196977 (= res!2563441 (or (and ((_ is ElementMatch!16137) (regOne!32786 r!7292)) (= (c!1118450 (regOne!32786 r!7292)) (h!71036 s!2326))) (not ((_ is Union!16137) (regOne!32786 r!7292)))))))

(declare-fun lt!2342442 () Unit!157875)

(assert (=> b!6196977 (= lt!2342442 e!3773869)))

(declare-fun c!1118449 () Bool)

(assert (=> b!6196977 (= c!1118449 (nullable!6130 (h!71034 (exprs!6021 (h!71035 zl!343)))))))

(assert (=> b!6196977 (= (flatMap!1642 z!1189 lambda!338531) (derivationStepZipperUp!1311 (h!71035 zl!343) (h!71036 s!2326)))))

(declare-fun lt!2342440 () Unit!157875)

(assert (=> b!6196977 (= lt!2342440 (lemmaFlatMapOnSingletonSet!1168 z!1189 (h!71035 zl!343) lambda!338531))))

(assert (=> b!6196977 (= lt!2342443 (derivationStepZipperUp!1311 lt!2342428 (h!71036 s!2326)))))

(assert (=> b!6196977 (= lt!2342436 (derivationStepZipperDown!1385 (h!71034 (exprs!6021 (h!71035 zl!343))) lt!2342428 (h!71036 s!2326)))))

(assert (=> b!6196977 (= lt!2342428 (Context!11043 (t!378224 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun lt!2342421 () (InoxSet Context!11042))

(assert (=> b!6196977 (= lt!2342421 (derivationStepZipperUp!1311 (Context!11043 (Cons!64586 (h!71034 (exprs!6021 (h!71035 zl!343))) (t!378224 (exprs!6021 (h!71035 zl!343))))) (h!71036 s!2326)))))

(declare-fun b!6196978 () Bool)

(assert (=> b!6196978 (= e!3773857 (matchZipper!2149 lt!2342443 (t!378226 s!2326)))))

(declare-fun b!6196979 () Bool)

(declare-fun res!2563463 () Bool)

(assert (=> b!6196979 (=> res!2563463 e!3773865)))

(declare-fun generalisedUnion!1981 (List!64710) Regex!16137)

(declare-fun unfocusZipperList!1558 (List!64711) List!64710)

(assert (=> b!6196979 (= res!2563463 (not (= r!7292 (generalisedUnion!1981 (unfocusZipperList!1558 zl!343)))))))

(declare-fun b!6196980 () Bool)

(declare-fun res!2563461 () Bool)

(assert (=> b!6196980 (=> res!2563461 e!3773860)))

(declare-fun lt!2342423 () Regex!16137)

(assert (=> b!6196980 (= res!2563461 (or (not (= lt!2342423 r!7292)) (not (= (exprs!6021 (h!71035 zl!343)) (Cons!64586 (regOne!32786 r!7292) (t!378224 (exprs!6021 (h!71035 zl!343))))))))))

(declare-fun b!6196981 () Bool)

(assert (=> b!6196981 (= e!3773873 e!3773876)))

(declare-fun res!2563455 () Bool)

(assert (=> b!6196981 (=> (not res!2563455) (not e!3773876))))

(assert (=> b!6196981 (= res!2563455 (= r!7292 lt!2342423))))

(declare-fun unfocusZipper!1879 (List!64711) Regex!16137)

(assert (=> b!6196981 (= lt!2342423 (unfocusZipper!1879 zl!343))))

(declare-fun b!6196982 () Bool)

(assert (=> b!6196982 (= e!3773879 e!3773870)))

(declare-fun res!2563451 () Bool)

(assert (=> b!6196982 (=> res!2563451 e!3773870)))

(assert (=> b!6196982 (= res!2563451 (>= (zipperDepthTotal!320 lt!2342417) lt!2342422))))

(assert (=> b!6196982 (= lt!2342417 (Cons!64587 lt!2342450 Nil!64587))))

(assert (= (and start!617934 res!2563458) b!6196953))

(assert (= (and b!6196953 res!2563452) b!6196981))

(assert (= (and b!6196981 res!2563455) b!6196956))

(assert (= (and b!6196956 (not res!2563443)) b!6196962))

(assert (= (and b!6196962 (not res!2563453)) b!6196973))

(assert (= (and b!6196973 (not res!2563447)) b!6196966))

(assert (= (and b!6196966 (not res!2563444)) b!6196979))

(assert (= (and b!6196979 (not res!2563463)) b!6196964))

(assert (= (and b!6196964 (not res!2563466)) b!6196946))

(assert (= (and b!6196946 (not res!2563459)) b!6196972))

(assert (= (and b!6196972 (not res!2563462)) b!6196977))

(assert (= (and b!6196977 c!1118449) b!6196958))

(assert (= (and b!6196977 (not c!1118449)) b!6196951))

(assert (= (and b!6196958 (not res!2563450)) b!6196978))

(assert (= (and b!6196977 (not res!2563441)) b!6196963))

(assert (= (and b!6196963 (not res!2563448)) b!6196949))

(assert (= (and b!6196949 (not res!2563467)) b!6196944))

(assert (= (and b!6196949 res!2563442) b!6196957))

(assert (= (and b!6196949 (not res!2563446)) b!6196947))

(assert (= (and b!6196947 c!1118448) b!6196967))

(assert (= (and b!6196947 (not c!1118448)) b!6196965))

(assert (= (and b!6196967 (not res!2563454)) b!6196970))

(assert (= (and b!6196947 c!1118447) b!6196950))

(assert (= (and b!6196947 (not c!1118447)) b!6196961))

(assert (= (and b!6196950 (not res!2563457)) b!6196975))

(assert (= (and b!6196947 (not res!2563460)) b!6196974))

(assert (= (and b!6196947 (not res!2563465)) b!6196980))

(assert (= (and b!6196980 (not res!2563461)) b!6196968))

(assert (= (and b!6196968 (not res!2563464)) b!6196982))

(assert (= (and b!6196982 (not res!2563451)) b!6196976))

(assert (= (and b!6196976 (not res!2563456)) b!6196952))

(assert (= (and b!6196952 (not res!2563449)) b!6196943))

(assert (= (and b!6196943 (not res!2563445)) b!6196959))

(assert (= (and start!617934 ((_ is ElementMatch!16137) r!7292)) b!6196955))

(assert (= (and start!617934 ((_ is Concat!24982) r!7292)) b!6196942))

(assert (= (and start!617934 ((_ is Star!16137) r!7292)) b!6196948))

(assert (= (and start!617934 ((_ is Union!16137) r!7292)) b!6196954))

(assert (= (and start!617934 condSetEmpty!42052) setIsEmpty!42052))

(assert (= (and start!617934 (not condSetEmpty!42052)) setNonEmpty!42052))

(assert (= setNonEmpty!42052 b!6196971))

(assert (= b!6196969 b!6196960))

(assert (= (and start!617934 ((_ is Cons!64587) zl!343)) b!6196969))

(assert (= (and start!617934 ((_ is Cons!64588) s!2326)) b!6196945))

(declare-fun m!7030510 () Bool)

(assert (=> b!6196957 m!7030510))

(declare-fun m!7030512 () Bool)

(assert (=> b!6196982 m!7030512))

(declare-fun m!7030514 () Bool)

(assert (=> b!6196973 m!7030514))

(assert (=> b!6196944 m!7030510))

(declare-fun m!7030516 () Bool)

(assert (=> start!617934 m!7030516))

(declare-fun m!7030518 () Bool)

(assert (=> b!6196959 m!7030518))

(declare-fun m!7030520 () Bool)

(assert (=> b!6196959 m!7030520))

(declare-fun m!7030522 () Bool)

(assert (=> b!6196959 m!7030522))

(declare-fun m!7030524 () Bool)

(assert (=> b!6196959 m!7030524))

(declare-fun m!7030526 () Bool)

(assert (=> b!6196959 m!7030526))

(declare-fun m!7030528 () Bool)

(assert (=> b!6196959 m!7030528))

(declare-fun m!7030530 () Bool)

(assert (=> b!6196959 m!7030530))

(declare-fun m!7030532 () Bool)

(assert (=> b!6196950 m!7030532))

(assert (=> b!6196950 m!7030510))

(declare-fun m!7030534 () Bool)

(assert (=> b!6196950 m!7030534))

(declare-fun m!7030536 () Bool)

(assert (=> b!6196974 m!7030536))

(declare-fun m!7030538 () Bool)

(assert (=> b!6196979 m!7030538))

(assert (=> b!6196979 m!7030538))

(declare-fun m!7030540 () Bool)

(assert (=> b!6196979 m!7030540))

(declare-fun m!7030542 () Bool)

(assert (=> b!6196972 m!7030542))

(declare-fun m!7030544 () Bool)

(assert (=> b!6196963 m!7030544))

(declare-fun m!7030546 () Bool)

(assert (=> b!6196963 m!7030546))

(declare-fun m!7030548 () Bool)

(assert (=> b!6196968 m!7030548))

(declare-fun m!7030550 () Bool)

(assert (=> b!6196968 m!7030550))

(declare-fun m!7030552 () Bool)

(assert (=> b!6196956 m!7030552))

(declare-fun m!7030554 () Bool)

(assert (=> b!6196956 m!7030554))

(declare-fun m!7030556 () Bool)

(assert (=> b!6196956 m!7030556))

(declare-fun m!7030558 () Bool)

(assert (=> b!6196943 m!7030558))

(declare-fun m!7030560 () Bool)

(assert (=> b!6196947 m!7030560))

(declare-fun m!7030562 () Bool)

(assert (=> b!6196947 m!7030562))

(declare-fun m!7030564 () Bool)

(assert (=> b!6196947 m!7030564))

(declare-fun m!7030566 () Bool)

(assert (=> b!6196947 m!7030566))

(declare-fun m!7030568 () Bool)

(assert (=> b!6196947 m!7030568))

(declare-fun m!7030570 () Bool)

(assert (=> b!6196947 m!7030570))

(declare-fun m!7030572 () Bool)

(assert (=> b!6196947 m!7030572))

(declare-fun m!7030574 () Bool)

(assert (=> b!6196947 m!7030574))

(declare-fun m!7030576 () Bool)

(assert (=> b!6196947 m!7030576))

(declare-fun m!7030578 () Bool)

(assert (=> b!6196947 m!7030578))

(declare-fun m!7030580 () Bool)

(assert (=> b!6196947 m!7030580))

(declare-fun m!7030582 () Bool)

(assert (=> b!6196947 m!7030582))

(declare-fun m!7030584 () Bool)

(assert (=> b!6196978 m!7030584))

(declare-fun m!7030586 () Bool)

(assert (=> b!6196981 m!7030586))

(declare-fun m!7030588 () Bool)

(assert (=> b!6196953 m!7030588))

(assert (=> b!6196975 m!7030584))

(declare-fun m!7030590 () Bool)

(assert (=> b!6196969 m!7030590))

(declare-fun m!7030592 () Bool)

(assert (=> b!6196967 m!7030592))

(declare-fun m!7030594 () Bool)

(assert (=> b!6196967 m!7030594))

(assert (=> b!6196976 m!7030536))

(declare-fun m!7030596 () Bool)

(assert (=> b!6196976 m!7030596))

(declare-fun m!7030598 () Bool)

(assert (=> b!6196976 m!7030598))

(declare-fun m!7030600 () Bool)

(assert (=> b!6196976 m!7030600))

(declare-fun m!7030602 () Bool)

(assert (=> b!6196976 m!7030602))

(declare-fun m!7030604 () Bool)

(assert (=> b!6196976 m!7030604))

(declare-fun m!7030606 () Bool)

(assert (=> b!6196976 m!7030606))

(declare-fun m!7030608 () Bool)

(assert (=> b!6196976 m!7030608))

(declare-fun m!7030610 () Bool)

(assert (=> b!6196976 m!7030610))

(declare-fun m!7030612 () Bool)

(assert (=> b!6196976 m!7030612))

(declare-fun m!7030614 () Bool)

(assert (=> b!6196976 m!7030614))

(assert (=> b!6196970 m!7030584))

(declare-fun m!7030616 () Bool)

(assert (=> setNonEmpty!42052 m!7030616))

(declare-fun m!7030618 () Bool)

(assert (=> b!6196977 m!7030618))

(declare-fun m!7030620 () Bool)

(assert (=> b!6196977 m!7030620))

(declare-fun m!7030622 () Bool)

(assert (=> b!6196977 m!7030622))

(declare-fun m!7030624 () Bool)

(assert (=> b!6196977 m!7030624))

(declare-fun m!7030626 () Bool)

(assert (=> b!6196977 m!7030626))

(declare-fun m!7030628 () Bool)

(assert (=> b!6196977 m!7030628))

(declare-fun m!7030630 () Bool)

(assert (=> b!6196977 m!7030630))

(declare-fun m!7030632 () Bool)

(assert (=> b!6196946 m!7030632))

(declare-fun m!7030634 () Bool)

(assert (=> b!6196946 m!7030634))

(declare-fun m!7030636 () Bool)

(assert (=> b!6196946 m!7030636))

(assert (=> b!6196946 m!7030636))

(declare-fun m!7030638 () Bool)

(assert (=> b!6196946 m!7030638))

(declare-fun m!7030640 () Bool)

(assert (=> b!6196946 m!7030640))

(assert (=> b!6196946 m!7030638))

(declare-fun m!7030642 () Bool)

(assert (=> b!6196946 m!7030642))

(declare-fun m!7030644 () Bool)

(assert (=> b!6196958 m!7030644))

(declare-fun m!7030646 () Bool)

(assert (=> b!6196958 m!7030646))

(declare-fun m!7030648 () Bool)

(assert (=> b!6196958 m!7030648))

(declare-fun m!7030650 () Bool)

(assert (=> b!6196962 m!7030650))

(assert (=> b!6196949 m!7030646))

(declare-fun m!7030652 () Bool)

(assert (=> b!6196949 m!7030652))

(declare-fun m!7030654 () Bool)

(assert (=> b!6196949 m!7030654))

(declare-fun m!7030656 () Bool)

(assert (=> b!6196949 m!7030656))

(check-sat (not b!6196958) (not b!6196970) (not b!6196947) (not b!6196962) (not b!6196982) (not b!6196942) (not b!6196974) (not b!6196956) (not b!6196979) (not b!6196944) (not b!6196948) (not b!6196976) (not b!6196960) (not b!6196953) (not b!6196957) (not b!6196977) (not b!6196949) (not b!6196973) (not b!6196943) (not start!617934) (not b!6196969) (not b!6196954) (not b!6196978) (not b!6196975) (not b!6196972) (not setNonEmpty!42052) (not b!6196959) (not b!6196945) (not b!6196967) tp_is_empty!41527 (not b!6196971) (not b!6196968) (not b!6196950) (not b!6196946) (not b!6196981) (not b!6196963))
(check-sat)
(get-model)

(declare-fun b!6197017 () Bool)

(declare-fun e!3773900 () (InoxSet Context!11042))

(declare-fun call!518493 () (InoxSet Context!11042))

(declare-fun call!518497 () (InoxSet Context!11042))

(assert (=> b!6197017 (= e!3773900 ((_ map or) call!518493 call!518497))))

(declare-fun b!6197018 () Bool)

(declare-fun e!3773902 () (InoxSet Context!11042))

(declare-fun e!3773897 () (InoxSet Context!11042))

(assert (=> b!6197018 (= e!3773902 e!3773897)))

(declare-fun c!1118468 () Bool)

(assert (=> b!6197018 (= c!1118468 ((_ is Union!16137) (h!71034 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun bm!518488 () Bool)

(declare-fun call!518498 () List!64710)

(declare-fun call!518496 () List!64710)

(assert (=> bm!518488 (= call!518498 call!518496)))

(declare-fun b!6197019 () Bool)

(declare-fun e!3773898 () (InoxSet Context!11042))

(assert (=> b!6197019 (= e!3773898 ((as const (Array Context!11042 Bool)) false))))

(declare-fun b!6197020 () Bool)

(declare-fun call!518495 () (InoxSet Context!11042))

(assert (=> b!6197020 (= e!3773898 call!518495)))

(declare-fun c!1118465 () Bool)

(declare-fun bm!518489 () Bool)

(declare-fun c!1118464 () Bool)

(declare-fun $colon$colon!2005 (List!64710 Regex!16137) List!64710)

(assert (=> bm!518489 (= call!518496 ($colon$colon!2005 (exprs!6021 lt!2342428) (ite (or c!1118465 c!1118464) (regTwo!32786 (h!71034 (exprs!6021 (h!71035 zl!343)))) (h!71034 (exprs!6021 (h!71035 zl!343))))))))

(declare-fun b!6197021 () Bool)

(declare-fun e!3773901 () Bool)

(assert (=> b!6197021 (= e!3773901 (nullable!6130 (regOne!32786 (h!71034 (exprs!6021 (h!71035 zl!343))))))))

(declare-fun bm!518490 () Bool)

(assert (=> bm!518490 (= call!518493 (derivationStepZipperDown!1385 (ite c!1118468 (regOne!32787 (h!71034 (exprs!6021 (h!71035 zl!343)))) (regOne!32786 (h!71034 (exprs!6021 (h!71035 zl!343))))) (ite c!1118468 lt!2342428 (Context!11043 call!518496)) (h!71036 s!2326)))))

(declare-fun b!6197022 () Bool)

(declare-fun c!1118467 () Bool)

(assert (=> b!6197022 (= c!1118467 ((_ is Star!16137) (h!71034 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun e!3773899 () (InoxSet Context!11042))

(assert (=> b!6197022 (= e!3773899 e!3773898)))

(declare-fun b!6197024 () Bool)

(declare-fun call!518494 () (InoxSet Context!11042))

(assert (=> b!6197024 (= e!3773897 ((_ map or) call!518493 call!518494))))

(declare-fun b!6197025 () Bool)

(assert (=> b!6197025 (= c!1118465 e!3773901)))

(declare-fun res!2563470 () Bool)

(assert (=> b!6197025 (=> (not res!2563470) (not e!3773901))))

(assert (=> b!6197025 (= res!2563470 ((_ is Concat!24982) (h!71034 (exprs!6021 (h!71035 zl!343)))))))

(assert (=> b!6197025 (= e!3773897 e!3773900)))

(declare-fun b!6197026 () Bool)

(assert (=> b!6197026 (= e!3773900 e!3773899)))

(assert (=> b!6197026 (= c!1118464 ((_ is Concat!24982) (h!71034 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun b!6197027 () Bool)

(assert (=> b!6197027 (= e!3773902 (store ((as const (Array Context!11042 Bool)) false) lt!2342428 true))))

(declare-fun bm!518491 () Bool)

(assert (=> bm!518491 (= call!518497 call!518494)))

(declare-fun bm!518492 () Bool)

(assert (=> bm!518492 (= call!518495 call!518497)))

(declare-fun bm!518493 () Bool)

(assert (=> bm!518493 (= call!518494 (derivationStepZipperDown!1385 (ite c!1118468 (regTwo!32787 (h!71034 (exprs!6021 (h!71035 zl!343)))) (ite c!1118465 (regTwo!32786 (h!71034 (exprs!6021 (h!71035 zl!343)))) (ite c!1118464 (regOne!32786 (h!71034 (exprs!6021 (h!71035 zl!343)))) (reg!16466 (h!71034 (exprs!6021 (h!71035 zl!343))))))) (ite (or c!1118468 c!1118465) lt!2342428 (Context!11043 call!518498)) (h!71036 s!2326)))))

(declare-fun d!1942808 () Bool)

(declare-fun c!1118466 () Bool)

(assert (=> d!1942808 (= c!1118466 (and ((_ is ElementMatch!16137) (h!71034 (exprs!6021 (h!71035 zl!343)))) (= (c!1118450 (h!71034 (exprs!6021 (h!71035 zl!343)))) (h!71036 s!2326))))))

(assert (=> d!1942808 (= (derivationStepZipperDown!1385 (h!71034 (exprs!6021 (h!71035 zl!343))) lt!2342428 (h!71036 s!2326)) e!3773902)))

(declare-fun b!6197023 () Bool)

(assert (=> b!6197023 (= e!3773899 call!518495)))

(assert (= (and d!1942808 c!1118466) b!6197027))

(assert (= (and d!1942808 (not c!1118466)) b!6197018))

(assert (= (and b!6197018 c!1118468) b!6197024))

(assert (= (and b!6197018 (not c!1118468)) b!6197025))

(assert (= (and b!6197025 res!2563470) b!6197021))

(assert (= (and b!6197025 c!1118465) b!6197017))

(assert (= (and b!6197025 (not c!1118465)) b!6197026))

(assert (= (and b!6197026 c!1118464) b!6197023))

(assert (= (and b!6197026 (not c!1118464)) b!6197022))

(assert (= (and b!6197022 c!1118467) b!6197020))

(assert (= (and b!6197022 (not c!1118467)) b!6197019))

(assert (= (or b!6197023 b!6197020) bm!518488))

(assert (= (or b!6197023 b!6197020) bm!518492))

(assert (= (or b!6197017 bm!518488) bm!518489))

(assert (= (or b!6197017 bm!518492) bm!518491))

(assert (= (or b!6197024 bm!518491) bm!518493))

(assert (= (or b!6197024 b!6197017) bm!518490))

(declare-fun m!7030678 () Bool)

(assert (=> bm!518489 m!7030678))

(declare-fun m!7030680 () Bool)

(assert (=> bm!518493 m!7030680))

(declare-fun m!7030682 () Bool)

(assert (=> b!6197027 m!7030682))

(declare-fun m!7030684 () Bool)

(assert (=> b!6197021 m!7030684))

(declare-fun m!7030686 () Bool)

(assert (=> bm!518490 m!7030686))

(assert (=> b!6196977 d!1942808))

(declare-fun d!1942816 () Bool)

(declare-fun c!1118482 () Bool)

(declare-fun e!3773927 () Bool)

(assert (=> d!1942816 (= c!1118482 e!3773927)))

(declare-fun res!2563489 () Bool)

(assert (=> d!1942816 (=> (not res!2563489) (not e!3773927))))

(assert (=> d!1942816 (= res!2563489 ((_ is Cons!64586) (exprs!6021 lt!2342428)))))

(declare-fun e!3773928 () (InoxSet Context!11042))

(assert (=> d!1942816 (= (derivationStepZipperUp!1311 lt!2342428 (h!71036 s!2326)) e!3773928)))

(declare-fun b!6197070 () Bool)

(declare-fun e!3773929 () (InoxSet Context!11042))

(assert (=> b!6197070 (= e!3773928 e!3773929)))

(declare-fun c!1118481 () Bool)

(assert (=> b!6197070 (= c!1118481 ((_ is Cons!64586) (exprs!6021 lt!2342428)))))

(declare-fun b!6197071 () Bool)

(declare-fun call!518505 () (InoxSet Context!11042))

(assert (=> b!6197071 (= e!3773929 call!518505)))

(declare-fun bm!518500 () Bool)

(assert (=> bm!518500 (= call!518505 (derivationStepZipperDown!1385 (h!71034 (exprs!6021 lt!2342428)) (Context!11043 (t!378224 (exprs!6021 lt!2342428))) (h!71036 s!2326)))))

(declare-fun b!6197072 () Bool)

(assert (=> b!6197072 (= e!3773929 ((as const (Array Context!11042 Bool)) false))))

(declare-fun b!6197073 () Bool)

(assert (=> b!6197073 (= e!3773928 ((_ map or) call!518505 (derivationStepZipperUp!1311 (Context!11043 (t!378224 (exprs!6021 lt!2342428))) (h!71036 s!2326))))))

(declare-fun b!6197074 () Bool)

(assert (=> b!6197074 (= e!3773927 (nullable!6130 (h!71034 (exprs!6021 lt!2342428))))))

(assert (= (and d!1942816 res!2563489) b!6197074))

(assert (= (and d!1942816 c!1118482) b!6197073))

(assert (= (and d!1942816 (not c!1118482)) b!6197070))

(assert (= (and b!6197070 c!1118481) b!6197071))

(assert (= (and b!6197070 (not c!1118481)) b!6197072))

(assert (= (or b!6197073 b!6197071) bm!518500))

(declare-fun m!7030688 () Bool)

(assert (=> bm!518500 m!7030688))

(declare-fun m!7030690 () Bool)

(assert (=> b!6197073 m!7030690))

(declare-fun m!7030692 () Bool)

(assert (=> b!6197074 m!7030692))

(assert (=> b!6196977 d!1942816))

(declare-fun d!1942818 () Bool)

(declare-fun nullableFct!2085 (Regex!16137) Bool)

(assert (=> d!1942818 (= (nullable!6130 (h!71034 (exprs!6021 (h!71035 zl!343)))) (nullableFct!2085 (h!71034 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun bs!1537782 () Bool)

(assert (= bs!1537782 d!1942818))

(declare-fun m!7030694 () Bool)

(assert (=> bs!1537782 m!7030694))

(assert (=> b!6196977 d!1942818))

(declare-fun d!1942820 () Bool)

(declare-fun c!1118488 () Bool)

(declare-fun e!3773937 () Bool)

(assert (=> d!1942820 (= c!1118488 e!3773937)))

(declare-fun res!2563493 () Bool)

(assert (=> d!1942820 (=> (not res!2563493) (not e!3773937))))

(assert (=> d!1942820 (= res!2563493 ((_ is Cons!64586) (exprs!6021 (Context!11043 (Cons!64586 (h!71034 (exprs!6021 (h!71035 zl!343))) (t!378224 (exprs!6021 (h!71035 zl!343))))))))))

(declare-fun e!3773938 () (InoxSet Context!11042))

(assert (=> d!1942820 (= (derivationStepZipperUp!1311 (Context!11043 (Cons!64586 (h!71034 (exprs!6021 (h!71035 zl!343))) (t!378224 (exprs!6021 (h!71035 zl!343))))) (h!71036 s!2326)) e!3773938)))

(declare-fun b!6197086 () Bool)

(declare-fun e!3773939 () (InoxSet Context!11042))

(assert (=> b!6197086 (= e!3773938 e!3773939)))

(declare-fun c!1118487 () Bool)

(assert (=> b!6197086 (= c!1118487 ((_ is Cons!64586) (exprs!6021 (Context!11043 (Cons!64586 (h!71034 (exprs!6021 (h!71035 zl!343))) (t!378224 (exprs!6021 (h!71035 zl!343))))))))))

(declare-fun b!6197087 () Bool)

(declare-fun call!518508 () (InoxSet Context!11042))

(assert (=> b!6197087 (= e!3773939 call!518508)))

(declare-fun bm!518503 () Bool)

(assert (=> bm!518503 (= call!518508 (derivationStepZipperDown!1385 (h!71034 (exprs!6021 (Context!11043 (Cons!64586 (h!71034 (exprs!6021 (h!71035 zl!343))) (t!378224 (exprs!6021 (h!71035 zl!343))))))) (Context!11043 (t!378224 (exprs!6021 (Context!11043 (Cons!64586 (h!71034 (exprs!6021 (h!71035 zl!343))) (t!378224 (exprs!6021 (h!71035 zl!343)))))))) (h!71036 s!2326)))))

(declare-fun b!6197088 () Bool)

(assert (=> b!6197088 (= e!3773939 ((as const (Array Context!11042 Bool)) false))))

(declare-fun b!6197089 () Bool)

(assert (=> b!6197089 (= e!3773938 ((_ map or) call!518508 (derivationStepZipperUp!1311 (Context!11043 (t!378224 (exprs!6021 (Context!11043 (Cons!64586 (h!71034 (exprs!6021 (h!71035 zl!343))) (t!378224 (exprs!6021 (h!71035 zl!343)))))))) (h!71036 s!2326))))))

(declare-fun b!6197090 () Bool)

(assert (=> b!6197090 (= e!3773937 (nullable!6130 (h!71034 (exprs!6021 (Context!11043 (Cons!64586 (h!71034 (exprs!6021 (h!71035 zl!343))) (t!378224 (exprs!6021 (h!71035 zl!343)))))))))))

(assert (= (and d!1942820 res!2563493) b!6197090))

(assert (= (and d!1942820 c!1118488) b!6197089))

(assert (= (and d!1942820 (not c!1118488)) b!6197086))

(assert (= (and b!6197086 c!1118487) b!6197087))

(assert (= (and b!6197086 (not c!1118487)) b!6197088))

(assert (= (or b!6197089 b!6197087) bm!518503))

(declare-fun m!7030704 () Bool)

(assert (=> bm!518503 m!7030704))

(declare-fun m!7030706 () Bool)

(assert (=> b!6197089 m!7030706))

(declare-fun m!7030708 () Bool)

(assert (=> b!6197090 m!7030708))

(assert (=> b!6196977 d!1942820))

(declare-fun d!1942824 () Bool)

(declare-fun choose!46040 ((InoxSet Context!11042) Int) (InoxSet Context!11042))

(assert (=> d!1942824 (= (flatMap!1642 z!1189 lambda!338531) (choose!46040 z!1189 lambda!338531))))

(declare-fun bs!1537783 () Bool)

(assert (= bs!1537783 d!1942824))

(declare-fun m!7030710 () Bool)

(assert (=> bs!1537783 m!7030710))

(assert (=> b!6196977 d!1942824))

(declare-fun d!1942826 () Bool)

(declare-fun dynLambda!25468 (Int Context!11042) (InoxSet Context!11042))

(assert (=> d!1942826 (= (flatMap!1642 z!1189 lambda!338531) (dynLambda!25468 lambda!338531 (h!71035 zl!343)))))

(declare-fun lt!2342466 () Unit!157875)

(declare-fun choose!46041 ((InoxSet Context!11042) Context!11042 Int) Unit!157875)

(assert (=> d!1942826 (= lt!2342466 (choose!46041 z!1189 (h!71035 zl!343) lambda!338531))))

(assert (=> d!1942826 (= z!1189 (store ((as const (Array Context!11042 Bool)) false) (h!71035 zl!343) true))))

(assert (=> d!1942826 (= (lemmaFlatMapOnSingletonSet!1168 z!1189 (h!71035 zl!343) lambda!338531) lt!2342466)))

(declare-fun b_lambda!235741 () Bool)

(assert (=> (not b_lambda!235741) (not d!1942826)))

(declare-fun bs!1537784 () Bool)

(assert (= bs!1537784 d!1942826))

(assert (=> bs!1537784 m!7030620))

(declare-fun m!7030712 () Bool)

(assert (=> bs!1537784 m!7030712))

(declare-fun m!7030714 () Bool)

(assert (=> bs!1537784 m!7030714))

(declare-fun m!7030716 () Bool)

(assert (=> bs!1537784 m!7030716))

(assert (=> b!6196977 d!1942826))

(declare-fun d!1942828 () Bool)

(declare-fun c!1118496 () Bool)

(declare-fun e!3773954 () Bool)

(assert (=> d!1942828 (= c!1118496 e!3773954)))

(declare-fun res!2563510 () Bool)

(assert (=> d!1942828 (=> (not res!2563510) (not e!3773954))))

(assert (=> d!1942828 (= res!2563510 ((_ is Cons!64586) (exprs!6021 (h!71035 zl!343))))))

(declare-fun e!3773955 () (InoxSet Context!11042))

(assert (=> d!1942828 (= (derivationStepZipperUp!1311 (h!71035 zl!343) (h!71036 s!2326)) e!3773955)))

(declare-fun b!6197119 () Bool)

(declare-fun e!3773956 () (InoxSet Context!11042))

(assert (=> b!6197119 (= e!3773955 e!3773956)))

(declare-fun c!1118495 () Bool)

(assert (=> b!6197119 (= c!1118495 ((_ is Cons!64586) (exprs!6021 (h!71035 zl!343))))))

(declare-fun b!6197120 () Bool)

(declare-fun call!518511 () (InoxSet Context!11042))

(assert (=> b!6197120 (= e!3773956 call!518511)))

(declare-fun bm!518506 () Bool)

(assert (=> bm!518506 (= call!518511 (derivationStepZipperDown!1385 (h!71034 (exprs!6021 (h!71035 zl!343))) (Context!11043 (t!378224 (exprs!6021 (h!71035 zl!343)))) (h!71036 s!2326)))))

(declare-fun b!6197121 () Bool)

(assert (=> b!6197121 (= e!3773956 ((as const (Array Context!11042 Bool)) false))))

(declare-fun b!6197122 () Bool)

(assert (=> b!6197122 (= e!3773955 ((_ map or) call!518511 (derivationStepZipperUp!1311 (Context!11043 (t!378224 (exprs!6021 (h!71035 zl!343)))) (h!71036 s!2326))))))

(declare-fun b!6197123 () Bool)

(assert (=> b!6197123 (= e!3773954 (nullable!6130 (h!71034 (exprs!6021 (h!71035 zl!343)))))))

(assert (= (and d!1942828 res!2563510) b!6197123))

(assert (= (and d!1942828 c!1118496) b!6197122))

(assert (= (and d!1942828 (not c!1118496)) b!6197119))

(assert (= (and b!6197119 c!1118495) b!6197120))

(assert (= (and b!6197119 (not c!1118495)) b!6197121))

(assert (= (or b!6197122 b!6197120) bm!518506))

(declare-fun m!7030718 () Bool)

(assert (=> bm!518506 m!7030718))

(declare-fun m!7030720 () Bool)

(assert (=> b!6197122 m!7030720))

(assert (=> b!6197123 m!7030628))

(assert (=> b!6196977 d!1942828))

(declare-fun bm!518517 () Bool)

(declare-fun call!518523 () Bool)

(declare-fun c!1118511 () Bool)

(assert (=> bm!518517 (= call!518523 (validRegex!7873 (ite c!1118511 (regOne!32787 r!7292) (regOne!32786 r!7292))))))

(declare-fun b!6197181 () Bool)

(declare-fun res!2563543 () Bool)

(declare-fun e!3773996 () Bool)

(assert (=> b!6197181 (=> res!2563543 e!3773996)))

(assert (=> b!6197181 (= res!2563543 (not ((_ is Concat!24982) r!7292)))))

(declare-fun e!3773993 () Bool)

(assert (=> b!6197181 (= e!3773993 e!3773996)))

(declare-fun b!6197182 () Bool)

(declare-fun e!3773994 () Bool)

(assert (=> b!6197182 (= e!3773994 e!3773993)))

(assert (=> b!6197182 (= c!1118511 ((_ is Union!16137) r!7292))))

(declare-fun b!6197183 () Bool)

(declare-fun e!3773992 () Bool)

(assert (=> b!6197183 (= e!3773992 e!3773994)))

(declare-fun c!1118512 () Bool)

(assert (=> b!6197183 (= c!1118512 ((_ is Star!16137) r!7292))))

(declare-fun b!6197184 () Bool)

(declare-fun e!3773997 () Bool)

(declare-fun call!518524 () Bool)

(assert (=> b!6197184 (= e!3773997 call!518524)))

(declare-fun bm!518518 () Bool)

(declare-fun call!518522 () Bool)

(assert (=> bm!518518 (= call!518524 call!518522)))

(declare-fun d!1942830 () Bool)

(declare-fun res!2563541 () Bool)

(assert (=> d!1942830 (=> res!2563541 e!3773992)))

(assert (=> d!1942830 (= res!2563541 ((_ is ElementMatch!16137) r!7292))))

(assert (=> d!1942830 (= (validRegex!7873 r!7292) e!3773992)))

(declare-fun b!6197185 () Bool)

(declare-fun e!3773998 () Bool)

(assert (=> b!6197185 (= e!3773998 call!518524)))

(declare-fun b!6197186 () Bool)

(declare-fun res!2563542 () Bool)

(assert (=> b!6197186 (=> (not res!2563542) (not e!3773998))))

(assert (=> b!6197186 (= res!2563542 call!518523)))

(assert (=> b!6197186 (= e!3773993 e!3773998)))

(declare-fun b!6197187 () Bool)

(assert (=> b!6197187 (= e!3773996 e!3773997)))

(declare-fun res!2563544 () Bool)

(assert (=> b!6197187 (=> (not res!2563544) (not e!3773997))))

(assert (=> b!6197187 (= res!2563544 call!518523)))

(declare-fun b!6197188 () Bool)

(declare-fun e!3773995 () Bool)

(assert (=> b!6197188 (= e!3773994 e!3773995)))

(declare-fun res!2563540 () Bool)

(assert (=> b!6197188 (= res!2563540 (not (nullable!6130 (reg!16466 r!7292))))))

(assert (=> b!6197188 (=> (not res!2563540) (not e!3773995))))

(declare-fun b!6197189 () Bool)

(assert (=> b!6197189 (= e!3773995 call!518522)))

(declare-fun bm!518519 () Bool)

(assert (=> bm!518519 (= call!518522 (validRegex!7873 (ite c!1118512 (reg!16466 r!7292) (ite c!1118511 (regTwo!32787 r!7292) (regTwo!32786 r!7292)))))))

(assert (= (and d!1942830 (not res!2563541)) b!6197183))

(assert (= (and b!6197183 c!1118512) b!6197188))

(assert (= (and b!6197183 (not c!1118512)) b!6197182))

(assert (= (and b!6197188 res!2563540) b!6197189))

(assert (= (and b!6197182 c!1118511) b!6197186))

(assert (= (and b!6197182 (not c!1118511)) b!6197181))

(assert (= (and b!6197186 res!2563542) b!6197185))

(assert (= (and b!6197181 (not res!2563543)) b!6197187))

(assert (= (and b!6197187 res!2563544) b!6197184))

(assert (= (or b!6197185 b!6197184) bm!518518))

(assert (= (or b!6197186 b!6197187) bm!518517))

(assert (= (or b!6197189 bm!518518) bm!518519))

(declare-fun m!7030754 () Bool)

(assert (=> bm!518517 m!7030754))

(declare-fun m!7030756 () Bool)

(assert (=> b!6197188 m!7030756))

(declare-fun m!7030758 () Bool)

(assert (=> bm!518519 m!7030758))

(assert (=> start!617934 d!1942830))

(declare-fun d!1942842 () Bool)

(declare-fun c!1118527 () Bool)

(declare-fun isEmpty!36577 (List!64712) Bool)

(assert (=> d!1942842 (= c!1118527 (isEmpty!36577 (t!378226 s!2326)))))

(declare-fun e!3774019 () Bool)

(assert (=> d!1942842 (= (matchZipper!2149 lt!2342443 (t!378226 s!2326)) e!3774019)))

(declare-fun b!6197224 () Bool)

(declare-fun nullableZipper!1911 ((InoxSet Context!11042)) Bool)

(assert (=> b!6197224 (= e!3774019 (nullableZipper!1911 lt!2342443))))

(declare-fun b!6197225 () Bool)

(declare-fun derivationStepZipper!2103 ((InoxSet Context!11042) C!32544) (InoxSet Context!11042))

(declare-fun head!12782 (List!64712) C!32544)

(declare-fun tail!11867 (List!64712) List!64712)

(assert (=> b!6197225 (= e!3774019 (matchZipper!2149 (derivationStepZipper!2103 lt!2342443 (head!12782 (t!378226 s!2326))) (tail!11867 (t!378226 s!2326))))))

(assert (= (and d!1942842 c!1118527) b!6197224))

(assert (= (and d!1942842 (not c!1118527)) b!6197225))

(declare-fun m!7030776 () Bool)

(assert (=> d!1942842 m!7030776))

(declare-fun m!7030778 () Bool)

(assert (=> b!6197224 m!7030778))

(declare-fun m!7030780 () Bool)

(assert (=> b!6197225 m!7030780))

(assert (=> b!6197225 m!7030780))

(declare-fun m!7030782 () Bool)

(assert (=> b!6197225 m!7030782))

(declare-fun m!7030784 () Bool)

(assert (=> b!6197225 m!7030784))

(assert (=> b!6197225 m!7030782))

(assert (=> b!6197225 m!7030784))

(declare-fun m!7030786 () Bool)

(assert (=> b!6197225 m!7030786))

(assert (=> b!6196978 d!1942842))

(declare-fun e!3774034 () Bool)

(declare-fun d!1942846 () Bool)

(assert (=> d!1942846 (= (matchZipper!2149 ((_ map or) lt!2342436 lt!2342443) (t!378226 s!2326)) e!3774034)))

(declare-fun res!2563564 () Bool)

(assert (=> d!1942846 (=> res!2563564 e!3774034)))

(assert (=> d!1942846 (= res!2563564 (matchZipper!2149 lt!2342436 (t!378226 s!2326)))))

(declare-fun lt!2342482 () Unit!157875)

(declare-fun choose!46043 ((InoxSet Context!11042) (InoxSet Context!11042) List!64712) Unit!157875)

(assert (=> d!1942846 (= lt!2342482 (choose!46043 lt!2342436 lt!2342443 (t!378226 s!2326)))))

(assert (=> d!1942846 (= (lemmaZipperConcatMatchesSameAsBothZippers!968 lt!2342436 lt!2342443 (t!378226 s!2326)) lt!2342482)))

(declare-fun b!6197249 () Bool)

(assert (=> b!6197249 (= e!3774034 (matchZipper!2149 lt!2342443 (t!378226 s!2326)))))

(assert (= (and d!1942846 (not res!2563564)) b!6197249))

(assert (=> d!1942846 m!7030648))

(assert (=> d!1942846 m!7030646))

(declare-fun m!7030810 () Bool)

(assert (=> d!1942846 m!7030810))

(assert (=> b!6197249 m!7030584))

(assert (=> b!6196958 d!1942846))

(declare-fun d!1942856 () Bool)

(declare-fun c!1118533 () Bool)

(assert (=> d!1942856 (= c!1118533 (isEmpty!36577 (t!378226 s!2326)))))

(declare-fun e!3774035 () Bool)

(assert (=> d!1942856 (= (matchZipper!2149 lt!2342436 (t!378226 s!2326)) e!3774035)))

(declare-fun b!6197250 () Bool)

(assert (=> b!6197250 (= e!3774035 (nullableZipper!1911 lt!2342436))))

(declare-fun b!6197251 () Bool)

(assert (=> b!6197251 (= e!3774035 (matchZipper!2149 (derivationStepZipper!2103 lt!2342436 (head!12782 (t!378226 s!2326))) (tail!11867 (t!378226 s!2326))))))

(assert (= (and d!1942856 c!1118533) b!6197250))

(assert (= (and d!1942856 (not c!1118533)) b!6197251))

(assert (=> d!1942856 m!7030776))

(declare-fun m!7030812 () Bool)

(assert (=> b!6197250 m!7030812))

(assert (=> b!6197251 m!7030780))

(assert (=> b!6197251 m!7030780))

(declare-fun m!7030814 () Bool)

(assert (=> b!6197251 m!7030814))

(assert (=> b!6197251 m!7030784))

(assert (=> b!6197251 m!7030814))

(assert (=> b!6197251 m!7030784))

(declare-fun m!7030816 () Bool)

(assert (=> b!6197251 m!7030816))

(assert (=> b!6196958 d!1942856))

(declare-fun d!1942858 () Bool)

(declare-fun c!1118534 () Bool)

(assert (=> d!1942858 (= c!1118534 (isEmpty!36577 (t!378226 s!2326)))))

(declare-fun e!3774036 () Bool)

(assert (=> d!1942858 (= (matchZipper!2149 ((_ map or) lt!2342436 lt!2342443) (t!378226 s!2326)) e!3774036)))

(declare-fun b!6197252 () Bool)

(assert (=> b!6197252 (= e!3774036 (nullableZipper!1911 ((_ map or) lt!2342436 lt!2342443)))))

(declare-fun b!6197253 () Bool)

(assert (=> b!6197253 (= e!3774036 (matchZipper!2149 (derivationStepZipper!2103 ((_ map or) lt!2342436 lt!2342443) (head!12782 (t!378226 s!2326))) (tail!11867 (t!378226 s!2326))))))

(assert (= (and d!1942858 c!1118534) b!6197252))

(assert (= (and d!1942858 (not c!1118534)) b!6197253))

(assert (=> d!1942858 m!7030776))

(declare-fun m!7030818 () Bool)

(assert (=> b!6197252 m!7030818))

(assert (=> b!6197253 m!7030780))

(assert (=> b!6197253 m!7030780))

(declare-fun m!7030820 () Bool)

(assert (=> b!6197253 m!7030820))

(assert (=> b!6197253 m!7030784))

(assert (=> b!6197253 m!7030820))

(assert (=> b!6197253 m!7030784))

(declare-fun m!7030822 () Bool)

(assert (=> b!6197253 m!7030822))

(assert (=> b!6196958 d!1942858))

(declare-fun b!6197332 () Bool)

(declare-fun e!3774085 () Regex!16137)

(assert (=> b!6197332 (= e!3774085 (Union!16137 (h!71034 (unfocusZipperList!1558 zl!343)) (generalisedUnion!1981 (t!378224 (unfocusZipperList!1558 zl!343)))))))

(declare-fun b!6197334 () Bool)

(declare-fun e!3774084 () Regex!16137)

(assert (=> b!6197334 (= e!3774084 (h!71034 (unfocusZipperList!1558 zl!343)))))

(declare-fun b!6197335 () Bool)

(declare-fun e!3774083 () Bool)

(declare-fun e!3774088 () Bool)

(assert (=> b!6197335 (= e!3774083 e!3774088)))

(declare-fun c!1118565 () Bool)

(declare-fun tail!11868 (List!64710) List!64710)

(assert (=> b!6197335 (= c!1118565 (isEmpty!36575 (tail!11868 (unfocusZipperList!1558 zl!343))))))

(declare-fun b!6197336 () Bool)

(declare-fun e!3774087 () Bool)

(assert (=> b!6197336 (= e!3774087 e!3774083)))

(declare-fun c!1118566 () Bool)

(assert (=> b!6197336 (= c!1118566 (isEmpty!36575 (unfocusZipperList!1558 zl!343)))))

(declare-fun b!6197337 () Bool)

(assert (=> b!6197337 (= e!3774084 e!3774085)))

(declare-fun c!1118564 () Bool)

(assert (=> b!6197337 (= c!1118564 ((_ is Cons!64586) (unfocusZipperList!1558 zl!343)))))

(declare-fun d!1942860 () Bool)

(assert (=> d!1942860 e!3774087))

(declare-fun res!2563588 () Bool)

(assert (=> d!1942860 (=> (not res!2563588) (not e!3774087))))

(declare-fun lt!2342494 () Regex!16137)

(assert (=> d!1942860 (= res!2563588 (validRegex!7873 lt!2342494))))

(assert (=> d!1942860 (= lt!2342494 e!3774084)))

(declare-fun c!1118563 () Bool)

(declare-fun e!3774086 () Bool)

(assert (=> d!1942860 (= c!1118563 e!3774086)))

(declare-fun res!2563587 () Bool)

(assert (=> d!1942860 (=> (not res!2563587) (not e!3774086))))

(assert (=> d!1942860 (= res!2563587 ((_ is Cons!64586) (unfocusZipperList!1558 zl!343)))))

(declare-fun lambda!338551 () Int)

(declare-fun forall!15251 (List!64710 Int) Bool)

(assert (=> d!1942860 (forall!15251 (unfocusZipperList!1558 zl!343) lambda!338551)))

(assert (=> d!1942860 (= (generalisedUnion!1981 (unfocusZipperList!1558 zl!343)) lt!2342494)))

(declare-fun b!6197333 () Bool)

(declare-fun isEmptyLang!1555 (Regex!16137) Bool)

(assert (=> b!6197333 (= e!3774083 (isEmptyLang!1555 lt!2342494))))

(declare-fun b!6197338 () Bool)

(declare-fun head!12783 (List!64710) Regex!16137)

(assert (=> b!6197338 (= e!3774088 (= lt!2342494 (head!12783 (unfocusZipperList!1558 zl!343))))))

(declare-fun b!6197339 () Bool)

(assert (=> b!6197339 (= e!3774085 EmptyLang!16137)))

(declare-fun b!6197340 () Bool)

(assert (=> b!6197340 (= e!3774086 (isEmpty!36575 (t!378224 (unfocusZipperList!1558 zl!343))))))

(declare-fun b!6197341 () Bool)

(declare-fun isUnion!985 (Regex!16137) Bool)

(assert (=> b!6197341 (= e!3774088 (isUnion!985 lt!2342494))))

(assert (= (and d!1942860 res!2563587) b!6197340))

(assert (= (and d!1942860 c!1118563) b!6197334))

(assert (= (and d!1942860 (not c!1118563)) b!6197337))

(assert (= (and b!6197337 c!1118564) b!6197332))

(assert (= (and b!6197337 (not c!1118564)) b!6197339))

(assert (= (and d!1942860 res!2563588) b!6197336))

(assert (= (and b!6197336 c!1118566) b!6197333))

(assert (= (and b!6197336 (not c!1118566)) b!6197335))

(assert (= (and b!6197335 c!1118565) b!6197338))

(assert (= (and b!6197335 (not c!1118565)) b!6197341))

(assert (=> b!6197336 m!7030538))

(declare-fun m!7030898 () Bool)

(assert (=> b!6197336 m!7030898))

(assert (=> b!6197335 m!7030538))

(declare-fun m!7030900 () Bool)

(assert (=> b!6197335 m!7030900))

(assert (=> b!6197335 m!7030900))

(declare-fun m!7030902 () Bool)

(assert (=> b!6197335 m!7030902))

(declare-fun m!7030904 () Bool)

(assert (=> b!6197333 m!7030904))

(declare-fun m!7030906 () Bool)

(assert (=> d!1942860 m!7030906))

(assert (=> d!1942860 m!7030538))

(declare-fun m!7030908 () Bool)

(assert (=> d!1942860 m!7030908))

(declare-fun m!7030910 () Bool)

(assert (=> b!6197341 m!7030910))

(assert (=> b!6197338 m!7030538))

(declare-fun m!7030912 () Bool)

(assert (=> b!6197338 m!7030912))

(declare-fun m!7030914 () Bool)

(assert (=> b!6197340 m!7030914))

(declare-fun m!7030916 () Bool)

(assert (=> b!6197332 m!7030916))

(assert (=> b!6196979 d!1942860))

(declare-fun bs!1537827 () Bool)

(declare-fun d!1942882 () Bool)

(assert (= bs!1537827 (and d!1942882 d!1942860)))

(declare-fun lambda!338556 () Int)

(assert (=> bs!1537827 (= lambda!338556 lambda!338551)))

(declare-fun lt!2342499 () List!64710)

(assert (=> d!1942882 (forall!15251 lt!2342499 lambda!338556)))

(declare-fun e!3774103 () List!64710)

(assert (=> d!1942882 (= lt!2342499 e!3774103)))

(declare-fun c!1118577 () Bool)

(assert (=> d!1942882 (= c!1118577 ((_ is Cons!64587) zl!343))))

(assert (=> d!1942882 (= (unfocusZipperList!1558 zl!343) lt!2342499)))

(declare-fun b!6197366 () Bool)

(assert (=> b!6197366 (= e!3774103 (Cons!64586 (generalisedConcat!1734 (exprs!6021 (h!71035 zl!343))) (unfocusZipperList!1558 (t!378225 zl!343))))))

(declare-fun b!6197367 () Bool)

(assert (=> b!6197367 (= e!3774103 Nil!64586)))

(assert (= (and d!1942882 c!1118577) b!6197366))

(assert (= (and d!1942882 (not c!1118577)) b!6197367))

(declare-fun m!7030918 () Bool)

(assert (=> d!1942882 m!7030918))

(assert (=> b!6197366 m!7030514))

(declare-fun m!7030920 () Bool)

(assert (=> b!6197366 m!7030920))

(assert (=> b!6196979 d!1942882))

(declare-fun d!1942884 () Bool)

(assert (=> d!1942884 (= (matchR!8320 (Concat!24982 (Union!16137 (regOne!32787 (regOne!32786 r!7292)) (regTwo!32787 (regOne!32786 r!7292))) (regTwo!32786 r!7292)) s!2326) (matchR!8320 (Union!16137 (Concat!24982 (regOne!32787 (regOne!32786 r!7292)) (regTwo!32786 r!7292)) (Concat!24982 (regTwo!32787 (regOne!32786 r!7292)) (regTwo!32786 r!7292))) s!2326))))

(declare-fun lt!2342505 () Unit!157875)

(declare-fun choose!46044 (Regex!16137 Regex!16137 Regex!16137 List!64712) Unit!157875)

(assert (=> d!1942884 (= lt!2342505 (choose!46044 (regOne!32787 (regOne!32786 r!7292)) (regTwo!32787 (regOne!32786 r!7292)) (regTwo!32786 r!7292) s!2326))))

(assert (=> d!1942884 (validRegex!7873 (regOne!32787 (regOne!32786 r!7292)))))

(assert (=> d!1942884 (= (lemmaConcatDistributesInUnion!54 (regOne!32787 (regOne!32786 r!7292)) (regTwo!32787 (regOne!32786 r!7292)) (regTwo!32786 r!7292) s!2326) lt!2342505)))

(declare-fun bs!1537831 () Bool)

(assert (= bs!1537831 d!1942884))

(declare-fun m!7030942 () Bool)

(assert (=> bs!1537831 m!7030942))

(declare-fun m!7030944 () Bool)

(assert (=> bs!1537831 m!7030944))

(declare-fun m!7030946 () Bool)

(assert (=> bs!1537831 m!7030946))

(declare-fun m!7030948 () Bool)

(assert (=> bs!1537831 m!7030948))

(assert (=> b!6196959 d!1942884))

(declare-fun bs!1537837 () Bool)

(declare-fun b!6197458 () Bool)

(assert (= bs!1537837 (and b!6197458 b!6196946)))

(declare-fun lambda!338565 () Int)

(assert (=> bs!1537837 (not (= lambda!338565 lambda!338529))))

(assert (=> bs!1537837 (not (= lambda!338565 lambda!338530))))

(assert (=> b!6197458 true))

(assert (=> b!6197458 true))

(declare-fun bs!1537838 () Bool)

(declare-fun b!6197457 () Bool)

(assert (= bs!1537838 (and b!6197457 b!6196946)))

(declare-fun lambda!338566 () Int)

(assert (=> bs!1537838 (not (= lambda!338566 lambda!338529))))

(assert (=> bs!1537838 (= (and (= (regOne!32786 lt!2342427) (regOne!32786 r!7292)) (= (regTwo!32786 lt!2342427) (regTwo!32786 r!7292))) (= lambda!338566 lambda!338530))))

(declare-fun bs!1537839 () Bool)

(assert (= bs!1537839 (and b!6197457 b!6197458)))

(assert (=> bs!1537839 (not (= lambda!338566 lambda!338565))))

(assert (=> b!6197457 true))

(assert (=> b!6197457 true))

(declare-fun d!1942888 () Bool)

(declare-fun c!1118608 () Bool)

(assert (=> d!1942888 (= c!1118608 ((_ is EmptyExpr!16137) lt!2342427))))

(declare-fun e!3774152 () Bool)

(assert (=> d!1942888 (= (matchRSpec!3238 lt!2342427 s!2326) e!3774152)))

(declare-fun b!6197449 () Bool)

(declare-fun res!2563616 () Bool)

(declare-fun e!3774149 () Bool)

(assert (=> b!6197449 (=> res!2563616 e!3774149)))

(declare-fun call!518554 () Bool)

(assert (=> b!6197449 (= res!2563616 call!518554)))

(declare-fun e!3774154 () Bool)

(assert (=> b!6197449 (= e!3774154 e!3774149)))

(declare-fun b!6197450 () Bool)

(declare-fun e!3774153 () Bool)

(assert (=> b!6197450 (= e!3774152 e!3774153)))

(declare-fun res!2563614 () Bool)

(assert (=> b!6197450 (= res!2563614 (not ((_ is EmptyLang!16137) lt!2342427)))))

(assert (=> b!6197450 (=> (not res!2563614) (not e!3774153))))

(declare-fun bm!518548 () Bool)

(declare-fun c!1118609 () Bool)

(declare-fun call!518553 () Bool)

(assert (=> bm!518548 (= call!518553 (Exists!3207 (ite c!1118609 lambda!338565 lambda!338566)))))

(declare-fun b!6197451 () Bool)

(assert (=> b!6197451 (= e!3774152 call!518554)))

(declare-fun b!6197452 () Bool)

(declare-fun e!3774150 () Bool)

(assert (=> b!6197452 (= e!3774150 (matchRSpec!3238 (regTwo!32787 lt!2342427) s!2326))))

(declare-fun b!6197453 () Bool)

(declare-fun e!3774151 () Bool)

(assert (=> b!6197453 (= e!3774151 e!3774154)))

(assert (=> b!6197453 (= c!1118609 ((_ is Star!16137) lt!2342427))))

(declare-fun b!6197454 () Bool)

(declare-fun c!1118611 () Bool)

(assert (=> b!6197454 (= c!1118611 ((_ is ElementMatch!16137) lt!2342427))))

(declare-fun e!3774155 () Bool)

(assert (=> b!6197454 (= e!3774153 e!3774155)))

(declare-fun b!6197455 () Bool)

(declare-fun c!1118610 () Bool)

(assert (=> b!6197455 (= c!1118610 ((_ is Union!16137) lt!2342427))))

(assert (=> b!6197455 (= e!3774155 e!3774151)))

(declare-fun b!6197456 () Bool)

(assert (=> b!6197456 (= e!3774151 e!3774150)))

(declare-fun res!2563615 () Bool)

(assert (=> b!6197456 (= res!2563615 (matchRSpec!3238 (regOne!32787 lt!2342427) s!2326))))

(assert (=> b!6197456 (=> res!2563615 e!3774150)))

(assert (=> b!6197457 (= e!3774154 call!518553)))

(assert (=> b!6197458 (= e!3774149 call!518553)))

(declare-fun b!6197459 () Bool)

(assert (=> b!6197459 (= e!3774155 (= s!2326 (Cons!64588 (c!1118450 lt!2342427) Nil!64588)))))

(declare-fun bm!518549 () Bool)

(assert (=> bm!518549 (= call!518554 (isEmpty!36577 s!2326))))

(assert (= (and d!1942888 c!1118608) b!6197451))

(assert (= (and d!1942888 (not c!1118608)) b!6197450))

(assert (= (and b!6197450 res!2563614) b!6197454))

(assert (= (and b!6197454 c!1118611) b!6197459))

(assert (= (and b!6197454 (not c!1118611)) b!6197455))

(assert (= (and b!6197455 c!1118610) b!6197456))

(assert (= (and b!6197455 (not c!1118610)) b!6197453))

(assert (= (and b!6197456 (not res!2563615)) b!6197452))

(assert (= (and b!6197453 c!1118609) b!6197449))

(assert (= (and b!6197453 (not c!1118609)) b!6197457))

(assert (= (and b!6197449 (not res!2563616)) b!6197458))

(assert (= (or b!6197458 b!6197457) bm!518548))

(assert (= (or b!6197451 b!6197449) bm!518549))

(declare-fun m!7030966 () Bool)

(assert (=> bm!518548 m!7030966))

(declare-fun m!7030968 () Bool)

(assert (=> b!6197452 m!7030968))

(declare-fun m!7030970 () Bool)

(assert (=> b!6197456 m!7030970))

(declare-fun m!7030972 () Bool)

(assert (=> bm!518549 m!7030972))

(assert (=> b!6196959 d!1942888))

(declare-fun d!1942896 () Bool)

(assert (=> d!1942896 (= (matchR!8320 lt!2342427 s!2326) (matchRSpec!3238 lt!2342427 s!2326))))

(declare-fun lt!2342512 () Unit!157875)

(declare-fun choose!46046 (Regex!16137 List!64712) Unit!157875)

(assert (=> d!1942896 (= lt!2342512 (choose!46046 lt!2342427 s!2326))))

(assert (=> d!1942896 (validRegex!7873 lt!2342427)))

(assert (=> d!1942896 (= (mainMatchTheorem!3238 lt!2342427 s!2326) lt!2342512)))

(declare-fun bs!1537842 () Bool)

(assert (= bs!1537842 d!1942896))

(assert (=> bs!1537842 m!7030530))

(assert (=> bs!1537842 m!7030528))

(declare-fun m!7030982 () Bool)

(assert (=> bs!1537842 m!7030982))

(declare-fun m!7030984 () Bool)

(assert (=> bs!1537842 m!7030984))

(assert (=> b!6196959 d!1942896))

(declare-fun d!1942902 () Bool)

(assert (=> d!1942902 (= (matchR!8320 lt!2342438 s!2326) (matchRSpec!3238 lt!2342438 s!2326))))

(declare-fun lt!2342513 () Unit!157875)

(assert (=> d!1942902 (= lt!2342513 (choose!46046 lt!2342438 s!2326))))

(assert (=> d!1942902 (validRegex!7873 lt!2342438)))

(assert (=> d!1942902 (= (mainMatchTheorem!3238 lt!2342438 s!2326) lt!2342513)))

(declare-fun bs!1537843 () Bool)

(assert (= bs!1537843 d!1942902))

(assert (=> bs!1537843 m!7030518))

(assert (=> bs!1537843 m!7030526))

(declare-fun m!7030986 () Bool)

(assert (=> bs!1537843 m!7030986))

(declare-fun m!7030988 () Bool)

(assert (=> bs!1537843 m!7030988))

(assert (=> b!6196959 d!1942902))

(declare-fun d!1942904 () Bool)

(declare-fun e!3774207 () Bool)

(assert (=> d!1942904 e!3774207))

(declare-fun c!1118647 () Bool)

(assert (=> d!1942904 (= c!1118647 ((_ is EmptyExpr!16137) lt!2342427))))

(declare-fun lt!2342522 () Bool)

(declare-fun e!3774209 () Bool)

(assert (=> d!1942904 (= lt!2342522 e!3774209)))

(declare-fun c!1118648 () Bool)

(assert (=> d!1942904 (= c!1118648 (isEmpty!36577 s!2326))))

(assert (=> d!1942904 (validRegex!7873 lt!2342427)))

(assert (=> d!1942904 (= (matchR!8320 lt!2342427 s!2326) lt!2342522)))

(declare-fun b!6197552 () Bool)

(declare-fun res!2563643 () Bool)

(declare-fun e!3774210 () Bool)

(assert (=> b!6197552 (=> (not res!2563643) (not e!3774210))))

(assert (=> b!6197552 (= res!2563643 (isEmpty!36577 (tail!11867 s!2326)))))

(declare-fun b!6197553 () Bool)

(declare-fun call!518574 () Bool)

(assert (=> b!6197553 (= e!3774207 (= lt!2342522 call!518574))))

(declare-fun b!6197554 () Bool)

(declare-fun e!3774212 () Bool)

(assert (=> b!6197554 (= e!3774207 e!3774212)))

(declare-fun c!1118646 () Bool)

(assert (=> b!6197554 (= c!1118646 ((_ is EmptyLang!16137) lt!2342427))))

(declare-fun b!6197555 () Bool)

(assert (=> b!6197555 (= e!3774212 (not lt!2342522))))

(declare-fun b!6197556 () Bool)

(declare-fun res!2563644 () Bool)

(declare-fun e!3774206 () Bool)

(assert (=> b!6197556 (=> res!2563644 e!3774206)))

(assert (=> b!6197556 (= res!2563644 e!3774210)))

(declare-fun res!2563645 () Bool)

(assert (=> b!6197556 (=> (not res!2563645) (not e!3774210))))

(assert (=> b!6197556 (= res!2563645 lt!2342522)))

(declare-fun bm!518569 () Bool)

(assert (=> bm!518569 (= call!518574 (isEmpty!36577 s!2326))))

(declare-fun b!6197557 () Bool)

(declare-fun e!3774211 () Bool)

(assert (=> b!6197557 (= e!3774211 (not (= (head!12782 s!2326) (c!1118450 lt!2342427))))))

(declare-fun b!6197558 () Bool)

(assert (=> b!6197558 (= e!3774210 (= (head!12782 s!2326) (c!1118450 lt!2342427)))))

(declare-fun b!6197559 () Bool)

(declare-fun res!2563642 () Bool)

(assert (=> b!6197559 (=> (not res!2563642) (not e!3774210))))

(assert (=> b!6197559 (= res!2563642 (not call!518574))))

(declare-fun b!6197560 () Bool)

(assert (=> b!6197560 (= e!3774209 (nullable!6130 lt!2342427))))

(declare-fun b!6197561 () Bool)

(declare-fun res!2563648 () Bool)

(assert (=> b!6197561 (=> res!2563648 e!3774211)))

(assert (=> b!6197561 (= res!2563648 (not (isEmpty!36577 (tail!11867 s!2326))))))

(declare-fun b!6197562 () Bool)

(declare-fun e!3774208 () Bool)

(assert (=> b!6197562 (= e!3774208 e!3774211)))

(declare-fun res!2563646 () Bool)

(assert (=> b!6197562 (=> res!2563646 e!3774211)))

(assert (=> b!6197562 (= res!2563646 call!518574)))

(declare-fun b!6197563 () Bool)

(declare-fun res!2563641 () Bool)

(assert (=> b!6197563 (=> res!2563641 e!3774206)))

(assert (=> b!6197563 (= res!2563641 (not ((_ is ElementMatch!16137) lt!2342427)))))

(assert (=> b!6197563 (= e!3774212 e!3774206)))

(declare-fun b!6197564 () Bool)

(assert (=> b!6197564 (= e!3774206 e!3774208)))

(declare-fun res!2563647 () Bool)

(assert (=> b!6197564 (=> (not res!2563647) (not e!3774208))))

(assert (=> b!6197564 (= res!2563647 (not lt!2342522))))

(declare-fun b!6197565 () Bool)

(declare-fun derivativeStep!4850 (Regex!16137 C!32544) Regex!16137)

(assert (=> b!6197565 (= e!3774209 (matchR!8320 (derivativeStep!4850 lt!2342427 (head!12782 s!2326)) (tail!11867 s!2326)))))

(assert (= (and d!1942904 c!1118648) b!6197560))

(assert (= (and d!1942904 (not c!1118648)) b!6197565))

(assert (= (and d!1942904 c!1118647) b!6197553))

(assert (= (and d!1942904 (not c!1118647)) b!6197554))

(assert (= (and b!6197554 c!1118646) b!6197555))

(assert (= (and b!6197554 (not c!1118646)) b!6197563))

(assert (= (and b!6197563 (not res!2563641)) b!6197556))

(assert (= (and b!6197556 res!2563645) b!6197559))

(assert (= (and b!6197559 res!2563642) b!6197552))

(assert (= (and b!6197552 res!2563643) b!6197558))

(assert (= (and b!6197556 (not res!2563644)) b!6197564))

(assert (= (and b!6197564 res!2563647) b!6197562))

(assert (= (and b!6197562 (not res!2563646)) b!6197561))

(assert (= (and b!6197561 (not res!2563648)) b!6197557))

(assert (= (or b!6197553 b!6197559 b!6197562) bm!518569))

(declare-fun m!7031056 () Bool)

(assert (=> b!6197561 m!7031056))

(assert (=> b!6197561 m!7031056))

(declare-fun m!7031058 () Bool)

(assert (=> b!6197561 m!7031058))

(declare-fun m!7031060 () Bool)

(assert (=> b!6197560 m!7031060))

(assert (=> bm!518569 m!7030972))

(declare-fun m!7031062 () Bool)

(assert (=> b!6197565 m!7031062))

(assert (=> b!6197565 m!7031062))

(declare-fun m!7031064 () Bool)

(assert (=> b!6197565 m!7031064))

(assert (=> b!6197565 m!7031056))

(assert (=> b!6197565 m!7031064))

(assert (=> b!6197565 m!7031056))

(declare-fun m!7031066 () Bool)

(assert (=> b!6197565 m!7031066))

(assert (=> d!1942904 m!7030972))

(assert (=> d!1942904 m!7030984))

(assert (=> b!6197558 m!7031062))

(assert (=> b!6197552 m!7031056))

(assert (=> b!6197552 m!7031056))

(assert (=> b!6197552 m!7031058))

(assert (=> b!6197557 m!7031062))

(assert (=> b!6196959 d!1942904))

(declare-fun d!1942932 () Bool)

(declare-fun e!3774214 () Bool)

(assert (=> d!1942932 e!3774214))

(declare-fun c!1118650 () Bool)

(assert (=> d!1942932 (= c!1118650 ((_ is EmptyExpr!16137) lt!2342438))))

(declare-fun lt!2342523 () Bool)

(declare-fun e!3774216 () Bool)

(assert (=> d!1942932 (= lt!2342523 e!3774216)))

(declare-fun c!1118651 () Bool)

(assert (=> d!1942932 (= c!1118651 (isEmpty!36577 s!2326))))

(assert (=> d!1942932 (validRegex!7873 lt!2342438)))

(assert (=> d!1942932 (= (matchR!8320 lt!2342438 s!2326) lt!2342523)))

(declare-fun b!6197566 () Bool)

(declare-fun res!2563651 () Bool)

(declare-fun e!3774217 () Bool)

(assert (=> b!6197566 (=> (not res!2563651) (not e!3774217))))

(assert (=> b!6197566 (= res!2563651 (isEmpty!36577 (tail!11867 s!2326)))))

(declare-fun b!6197567 () Bool)

(declare-fun call!518575 () Bool)

(assert (=> b!6197567 (= e!3774214 (= lt!2342523 call!518575))))

(declare-fun b!6197568 () Bool)

(declare-fun e!3774219 () Bool)

(assert (=> b!6197568 (= e!3774214 e!3774219)))

(declare-fun c!1118649 () Bool)

(assert (=> b!6197568 (= c!1118649 ((_ is EmptyLang!16137) lt!2342438))))

(declare-fun b!6197569 () Bool)

(assert (=> b!6197569 (= e!3774219 (not lt!2342523))))

(declare-fun b!6197570 () Bool)

(declare-fun res!2563652 () Bool)

(declare-fun e!3774213 () Bool)

(assert (=> b!6197570 (=> res!2563652 e!3774213)))

(assert (=> b!6197570 (= res!2563652 e!3774217)))

(declare-fun res!2563653 () Bool)

(assert (=> b!6197570 (=> (not res!2563653) (not e!3774217))))

(assert (=> b!6197570 (= res!2563653 lt!2342523)))

(declare-fun bm!518570 () Bool)

(assert (=> bm!518570 (= call!518575 (isEmpty!36577 s!2326))))

(declare-fun b!6197571 () Bool)

(declare-fun e!3774218 () Bool)

(assert (=> b!6197571 (= e!3774218 (not (= (head!12782 s!2326) (c!1118450 lt!2342438))))))

(declare-fun b!6197572 () Bool)

(assert (=> b!6197572 (= e!3774217 (= (head!12782 s!2326) (c!1118450 lt!2342438)))))

(declare-fun b!6197573 () Bool)

(declare-fun res!2563650 () Bool)

(assert (=> b!6197573 (=> (not res!2563650) (not e!3774217))))

(assert (=> b!6197573 (= res!2563650 (not call!518575))))

(declare-fun b!6197574 () Bool)

(assert (=> b!6197574 (= e!3774216 (nullable!6130 lt!2342438))))

(declare-fun b!6197575 () Bool)

(declare-fun res!2563656 () Bool)

(assert (=> b!6197575 (=> res!2563656 e!3774218)))

(assert (=> b!6197575 (= res!2563656 (not (isEmpty!36577 (tail!11867 s!2326))))))

(declare-fun b!6197576 () Bool)

(declare-fun e!3774215 () Bool)

(assert (=> b!6197576 (= e!3774215 e!3774218)))

(declare-fun res!2563654 () Bool)

(assert (=> b!6197576 (=> res!2563654 e!3774218)))

(assert (=> b!6197576 (= res!2563654 call!518575)))

(declare-fun b!6197577 () Bool)

(declare-fun res!2563649 () Bool)

(assert (=> b!6197577 (=> res!2563649 e!3774213)))

(assert (=> b!6197577 (= res!2563649 (not ((_ is ElementMatch!16137) lt!2342438)))))

(assert (=> b!6197577 (= e!3774219 e!3774213)))

(declare-fun b!6197578 () Bool)

(assert (=> b!6197578 (= e!3774213 e!3774215)))

(declare-fun res!2563655 () Bool)

(assert (=> b!6197578 (=> (not res!2563655) (not e!3774215))))

(assert (=> b!6197578 (= res!2563655 (not lt!2342523))))

(declare-fun b!6197579 () Bool)

(assert (=> b!6197579 (= e!3774216 (matchR!8320 (derivativeStep!4850 lt!2342438 (head!12782 s!2326)) (tail!11867 s!2326)))))

(assert (= (and d!1942932 c!1118651) b!6197574))

(assert (= (and d!1942932 (not c!1118651)) b!6197579))

(assert (= (and d!1942932 c!1118650) b!6197567))

(assert (= (and d!1942932 (not c!1118650)) b!6197568))

(assert (= (and b!6197568 c!1118649) b!6197569))

(assert (= (and b!6197568 (not c!1118649)) b!6197577))

(assert (= (and b!6197577 (not res!2563649)) b!6197570))

(assert (= (and b!6197570 res!2563653) b!6197573))

(assert (= (and b!6197573 res!2563650) b!6197566))

(assert (= (and b!6197566 res!2563651) b!6197572))

(assert (= (and b!6197570 (not res!2563652)) b!6197578))

(assert (= (and b!6197578 res!2563655) b!6197576))

(assert (= (and b!6197576 (not res!2563654)) b!6197575))

(assert (= (and b!6197575 (not res!2563656)) b!6197571))

(assert (= (or b!6197567 b!6197573 b!6197576) bm!518570))

(assert (=> b!6197575 m!7031056))

(assert (=> b!6197575 m!7031056))

(assert (=> b!6197575 m!7031058))

(declare-fun m!7031068 () Bool)

(assert (=> b!6197574 m!7031068))

(assert (=> bm!518570 m!7030972))

(assert (=> b!6197579 m!7031062))

(assert (=> b!6197579 m!7031062))

(declare-fun m!7031070 () Bool)

(assert (=> b!6197579 m!7031070))

(assert (=> b!6197579 m!7031056))

(assert (=> b!6197579 m!7031070))

(assert (=> b!6197579 m!7031056))

(declare-fun m!7031072 () Bool)

(assert (=> b!6197579 m!7031072))

(assert (=> d!1942932 m!7030972))

(assert (=> d!1942932 m!7030988))

(assert (=> b!6197572 m!7031062))

(assert (=> b!6197566 m!7031056))

(assert (=> b!6197566 m!7031056))

(assert (=> b!6197566 m!7031058))

(assert (=> b!6197571 m!7031062))

(assert (=> b!6196959 d!1942932))

(declare-fun bs!1537844 () Bool)

(declare-fun b!6197607 () Bool)

(assert (= bs!1537844 (and b!6197607 b!6196946)))

(declare-fun lambda!338567 () Int)

(assert (=> bs!1537844 (not (= lambda!338567 lambda!338529))))

(assert (=> bs!1537844 (not (= lambda!338567 lambda!338530))))

(declare-fun bs!1537845 () Bool)

(assert (= bs!1537845 (and b!6197607 b!6197458)))

(assert (=> bs!1537845 (= (and (= (reg!16466 lt!2342438) (reg!16466 lt!2342427)) (= lt!2342438 lt!2342427)) (= lambda!338567 lambda!338565))))

(declare-fun bs!1537846 () Bool)

(assert (= bs!1537846 (and b!6197607 b!6197457)))

(assert (=> bs!1537846 (not (= lambda!338567 lambda!338566))))

(assert (=> b!6197607 true))

(assert (=> b!6197607 true))

(declare-fun bs!1537847 () Bool)

(declare-fun b!6197606 () Bool)

(assert (= bs!1537847 (and b!6197606 b!6197457)))

(declare-fun lambda!338568 () Int)

(assert (=> bs!1537847 (= (and (= (regOne!32786 lt!2342438) (regOne!32786 lt!2342427)) (= (regTwo!32786 lt!2342438) (regTwo!32786 lt!2342427))) (= lambda!338568 lambda!338566))))

(declare-fun bs!1537848 () Bool)

(assert (= bs!1537848 (and b!6197606 b!6197607)))

(assert (=> bs!1537848 (not (= lambda!338568 lambda!338567))))

(declare-fun bs!1537849 () Bool)

(assert (= bs!1537849 (and b!6197606 b!6196946)))

(assert (=> bs!1537849 (not (= lambda!338568 lambda!338529))))

(declare-fun bs!1537850 () Bool)

(assert (= bs!1537850 (and b!6197606 b!6197458)))

(assert (=> bs!1537850 (not (= lambda!338568 lambda!338565))))

(assert (=> bs!1537849 (= (and (= (regOne!32786 lt!2342438) (regOne!32786 r!7292)) (= (regTwo!32786 lt!2342438) (regTwo!32786 r!7292))) (= lambda!338568 lambda!338530))))

(assert (=> b!6197606 true))

(assert (=> b!6197606 true))

(declare-fun d!1942934 () Bool)

(declare-fun c!1118656 () Bool)

(assert (=> d!1942934 (= c!1118656 ((_ is EmptyExpr!16137) lt!2342438))))

(declare-fun e!3774237 () Bool)

(assert (=> d!1942934 (= (matchRSpec!3238 lt!2342438 s!2326) e!3774237)))

(declare-fun b!6197598 () Bool)

(declare-fun res!2563669 () Bool)

(declare-fun e!3774234 () Bool)

(assert (=> b!6197598 (=> res!2563669 e!3774234)))

(declare-fun call!518581 () Bool)

(assert (=> b!6197598 (= res!2563669 call!518581)))

(declare-fun e!3774239 () Bool)

(assert (=> b!6197598 (= e!3774239 e!3774234)))

(declare-fun b!6197599 () Bool)

(declare-fun e!3774238 () Bool)

(assert (=> b!6197599 (= e!3774237 e!3774238)))

(declare-fun res!2563667 () Bool)

(assert (=> b!6197599 (= res!2563667 (not ((_ is EmptyLang!16137) lt!2342438)))))

(assert (=> b!6197599 (=> (not res!2563667) (not e!3774238))))

(declare-fun call!518580 () Bool)

(declare-fun c!1118657 () Bool)

(declare-fun bm!518575 () Bool)

(assert (=> bm!518575 (= call!518580 (Exists!3207 (ite c!1118657 lambda!338567 lambda!338568)))))

(declare-fun b!6197600 () Bool)

(assert (=> b!6197600 (= e!3774237 call!518581)))

(declare-fun b!6197601 () Bool)

(declare-fun e!3774235 () Bool)

(assert (=> b!6197601 (= e!3774235 (matchRSpec!3238 (regTwo!32787 lt!2342438) s!2326))))

(declare-fun b!6197602 () Bool)

(declare-fun e!3774236 () Bool)

(assert (=> b!6197602 (= e!3774236 e!3774239)))

(assert (=> b!6197602 (= c!1118657 ((_ is Star!16137) lt!2342438))))

(declare-fun b!6197603 () Bool)

(declare-fun c!1118659 () Bool)

(assert (=> b!6197603 (= c!1118659 ((_ is ElementMatch!16137) lt!2342438))))

(declare-fun e!3774240 () Bool)

(assert (=> b!6197603 (= e!3774238 e!3774240)))

(declare-fun b!6197604 () Bool)

(declare-fun c!1118658 () Bool)

(assert (=> b!6197604 (= c!1118658 ((_ is Union!16137) lt!2342438))))

(assert (=> b!6197604 (= e!3774240 e!3774236)))

(declare-fun b!6197605 () Bool)

(assert (=> b!6197605 (= e!3774236 e!3774235)))

(declare-fun res!2563668 () Bool)

(assert (=> b!6197605 (= res!2563668 (matchRSpec!3238 (regOne!32787 lt!2342438) s!2326))))

(assert (=> b!6197605 (=> res!2563668 e!3774235)))

(assert (=> b!6197606 (= e!3774239 call!518580)))

(assert (=> b!6197607 (= e!3774234 call!518580)))

(declare-fun b!6197608 () Bool)

(assert (=> b!6197608 (= e!3774240 (= s!2326 (Cons!64588 (c!1118450 lt!2342438) Nil!64588)))))

(declare-fun bm!518576 () Bool)

(assert (=> bm!518576 (= call!518581 (isEmpty!36577 s!2326))))

(assert (= (and d!1942934 c!1118656) b!6197600))

(assert (= (and d!1942934 (not c!1118656)) b!6197599))

(assert (= (and b!6197599 res!2563667) b!6197603))

(assert (= (and b!6197603 c!1118659) b!6197608))

(assert (= (and b!6197603 (not c!1118659)) b!6197604))

(assert (= (and b!6197604 c!1118658) b!6197605))

(assert (= (and b!6197604 (not c!1118658)) b!6197602))

(assert (= (and b!6197605 (not res!2563668)) b!6197601))

(assert (= (and b!6197602 c!1118657) b!6197598))

(assert (= (and b!6197602 (not c!1118657)) b!6197606))

(assert (= (and b!6197598 (not res!2563669)) b!6197607))

(assert (= (or b!6197607 b!6197606) bm!518575))

(assert (= (or b!6197600 b!6197598) bm!518576))

(declare-fun m!7031074 () Bool)

(assert (=> bm!518575 m!7031074))

(declare-fun m!7031076 () Bool)

(assert (=> b!6197601 m!7031076))

(declare-fun m!7031078 () Bool)

(assert (=> b!6197605 m!7031078))

(assert (=> bm!518576 m!7030972))

(assert (=> b!6196959 d!1942934))

(declare-fun d!1942936 () Bool)

(declare-fun lt!2342526 () Regex!16137)

(assert (=> d!1942936 (validRegex!7873 lt!2342526)))

(assert (=> d!1942936 (= lt!2342526 (generalisedUnion!1981 (unfocusZipperList!1558 zl!343)))))

(assert (=> d!1942936 (= (unfocusZipper!1879 zl!343) lt!2342526)))

(declare-fun bs!1537851 () Bool)

(assert (= bs!1537851 d!1942936))

(declare-fun m!7031086 () Bool)

(assert (=> bs!1537851 m!7031086))

(assert (=> bs!1537851 m!7030538))

(assert (=> bs!1537851 m!7030538))

(assert (=> bs!1537851 m!7030540))

(assert (=> b!6196981 d!1942936))

(declare-fun d!1942942 () Bool)

(declare-fun lt!2342529 () Int)

(assert (=> d!1942942 (>= lt!2342529 0)))

(declare-fun e!3774257 () Int)

(assert (=> d!1942942 (= lt!2342529 e!3774257)))

(declare-fun c!1118668 () Bool)

(assert (=> d!1942942 (= c!1118668 ((_ is Cons!64587) lt!2342417))))

(assert (=> d!1942942 (= (zipperDepthTotal!320 lt!2342417) lt!2342529)))

(declare-fun b!6197633 () Bool)

(declare-fun contextDepthTotal!287 (Context!11042) Int)

(assert (=> b!6197633 (= e!3774257 (+ (contextDepthTotal!287 (h!71035 lt!2342417)) (zipperDepthTotal!320 (t!378225 lt!2342417))))))

(declare-fun b!6197634 () Bool)

(assert (=> b!6197634 (= e!3774257 0)))

(assert (= (and d!1942942 c!1118668) b!6197633))

(assert (= (and d!1942942 (not c!1118668)) b!6197634))

(declare-fun m!7031090 () Bool)

(assert (=> b!6197633 m!7031090))

(declare-fun m!7031092 () Bool)

(assert (=> b!6197633 m!7031092))

(assert (=> b!6196982 d!1942942))

(declare-fun d!1942946 () Bool)

(assert (=> d!1942946 (= (isEmpty!36575 (t!378224 (exprs!6021 (h!71035 zl!343)))) ((_ is Nil!64586) (t!378224 (exprs!6021 (h!71035 zl!343)))))))

(assert (=> b!6196972 d!1942946))

(declare-fun d!1942948 () Bool)

(declare-fun e!3774260 () Bool)

(assert (=> d!1942948 e!3774260))

(declare-fun res!2563680 () Bool)

(assert (=> d!1942948 (=> (not res!2563680) (not e!3774260))))

(declare-fun lt!2342532 () List!64711)

(declare-fun noDuplicate!1974 (List!64711) Bool)

(assert (=> d!1942948 (= res!2563680 (noDuplicate!1974 lt!2342532))))

(declare-fun choose!46047 ((InoxSet Context!11042)) List!64711)

(assert (=> d!1942948 (= lt!2342532 (choose!46047 z!1189))))

(assert (=> d!1942948 (= (toList!9921 z!1189) lt!2342532)))

(declare-fun b!6197637 () Bool)

(declare-fun content!12069 (List!64711) (InoxSet Context!11042))

(assert (=> b!6197637 (= e!3774260 (= (content!12069 lt!2342532) z!1189))))

(assert (= (and d!1942948 res!2563680) b!6197637))

(declare-fun m!7031094 () Bool)

(assert (=> d!1942948 m!7031094))

(declare-fun m!7031096 () Bool)

(assert (=> d!1942948 m!7031096))

(declare-fun m!7031098 () Bool)

(assert (=> b!6197637 m!7031098))

(assert (=> b!6196953 d!1942948))

(declare-fun bs!1537884 () Bool)

(declare-fun d!1942950 () Bool)

(assert (= bs!1537884 (and d!1942950 d!1942860)))

(declare-fun lambda!338576 () Int)

(assert (=> bs!1537884 (= lambda!338576 lambda!338551)))

(declare-fun bs!1537885 () Bool)

(assert (= bs!1537885 (and d!1942950 d!1942882)))

(assert (=> bs!1537885 (= lambda!338576 lambda!338556)))

(declare-fun b!6197695 () Bool)

(declare-fun e!3774296 () Regex!16137)

(assert (=> b!6197695 (= e!3774296 (h!71034 (exprs!6021 (h!71035 zl!343))))))

(declare-fun e!3774300 () Bool)

(assert (=> d!1942950 e!3774300))

(declare-fun res!2563701 () Bool)

(assert (=> d!1942950 (=> (not res!2563701) (not e!3774300))))

(declare-fun lt!2342544 () Regex!16137)

(assert (=> d!1942950 (= res!2563701 (validRegex!7873 lt!2342544))))

(assert (=> d!1942950 (= lt!2342544 e!3774296)))

(declare-fun c!1118687 () Bool)

(declare-fun e!3774294 () Bool)

(assert (=> d!1942950 (= c!1118687 e!3774294)))

(declare-fun res!2563700 () Bool)

(assert (=> d!1942950 (=> (not res!2563700) (not e!3774294))))

(assert (=> d!1942950 (= res!2563700 ((_ is Cons!64586) (exprs!6021 (h!71035 zl!343))))))

(assert (=> d!1942950 (forall!15251 (exprs!6021 (h!71035 zl!343)) lambda!338576)))

(assert (=> d!1942950 (= (generalisedConcat!1734 (exprs!6021 (h!71035 zl!343))) lt!2342544)))

(declare-fun b!6197696 () Bool)

(declare-fun e!3774299 () Regex!16137)

(assert (=> b!6197696 (= e!3774296 e!3774299)))

(declare-fun c!1118691 () Bool)

(assert (=> b!6197696 (= c!1118691 ((_ is Cons!64586) (exprs!6021 (h!71035 zl!343))))))

(declare-fun b!6197697 () Bool)

(declare-fun e!3774297 () Bool)

(declare-fun isConcat!1070 (Regex!16137) Bool)

(assert (=> b!6197697 (= e!3774297 (isConcat!1070 lt!2342544))))

(declare-fun b!6197698 () Bool)

(assert (=> b!6197698 (= e!3774299 EmptyExpr!16137)))

(declare-fun b!6197699 () Bool)

(declare-fun e!3774295 () Bool)

(assert (=> b!6197699 (= e!3774295 e!3774297)))

(declare-fun c!1118688 () Bool)

(assert (=> b!6197699 (= c!1118688 (isEmpty!36575 (tail!11868 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun b!6197700 () Bool)

(assert (=> b!6197700 (= e!3774297 (= lt!2342544 (head!12783 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun b!6197701 () Bool)

(assert (=> b!6197701 (= e!3774294 (isEmpty!36575 (t!378224 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun b!6197702 () Bool)

(declare-fun isEmptyExpr!1547 (Regex!16137) Bool)

(assert (=> b!6197702 (= e!3774295 (isEmptyExpr!1547 lt!2342544))))

(declare-fun b!6197703 () Bool)

(assert (=> b!6197703 (= e!3774300 e!3774295)))

(declare-fun c!1118690 () Bool)

(assert (=> b!6197703 (= c!1118690 (isEmpty!36575 (exprs!6021 (h!71035 zl!343))))))

(declare-fun b!6197704 () Bool)

(assert (=> b!6197704 (= e!3774299 (Concat!24982 (h!71034 (exprs!6021 (h!71035 zl!343))) (generalisedConcat!1734 (t!378224 (exprs!6021 (h!71035 zl!343))))))))

(assert (= (and d!1942950 res!2563700) b!6197701))

(assert (= (and d!1942950 c!1118687) b!6197695))

(assert (= (and d!1942950 (not c!1118687)) b!6197696))

(assert (= (and b!6197696 c!1118691) b!6197704))

(assert (= (and b!6197696 (not c!1118691)) b!6197698))

(assert (= (and d!1942950 res!2563701) b!6197703))

(assert (= (and b!6197703 c!1118690) b!6197702))

(assert (= (and b!6197703 (not c!1118690)) b!6197699))

(assert (= (and b!6197699 c!1118688) b!6197700))

(assert (= (and b!6197699 (not c!1118688)) b!6197697))

(declare-fun m!7031176 () Bool)

(assert (=> b!6197703 m!7031176))

(assert (=> b!6197701 m!7030542))

(declare-fun m!7031178 () Bool)

(assert (=> b!6197699 m!7031178))

(assert (=> b!6197699 m!7031178))

(declare-fun m!7031180 () Bool)

(assert (=> b!6197699 m!7031180))

(declare-fun m!7031182 () Bool)

(assert (=> b!6197697 m!7031182))

(assert (=> b!6197704 m!7030558))

(declare-fun m!7031184 () Bool)

(assert (=> b!6197702 m!7031184))

(declare-fun m!7031186 () Bool)

(assert (=> d!1942950 m!7031186))

(declare-fun m!7031188 () Bool)

(assert (=> d!1942950 m!7031188))

(declare-fun m!7031190 () Bool)

(assert (=> b!6197700 m!7031190))

(assert (=> b!6196973 d!1942950))

(declare-fun d!1942988 () Bool)

(declare-fun c!1118692 () Bool)

(assert (=> d!1942988 (= c!1118692 (isEmpty!36577 s!2326))))

(declare-fun e!3774301 () Bool)

(assert (=> d!1942988 (= (matchZipper!2149 lt!2342425 s!2326) e!3774301)))

(declare-fun b!6197705 () Bool)

(assert (=> b!6197705 (= e!3774301 (nullableZipper!1911 lt!2342425))))

(declare-fun b!6197706 () Bool)

(assert (=> b!6197706 (= e!3774301 (matchZipper!2149 (derivationStepZipper!2103 lt!2342425 (head!12782 s!2326)) (tail!11867 s!2326)))))

(assert (= (and d!1942988 c!1118692) b!6197705))

(assert (= (and d!1942988 (not c!1118692)) b!6197706))

(assert (=> d!1942988 m!7030972))

(declare-fun m!7031192 () Bool)

(assert (=> b!6197705 m!7031192))

(assert (=> b!6197706 m!7031062))

(assert (=> b!6197706 m!7031062))

(declare-fun m!7031194 () Bool)

(assert (=> b!6197706 m!7031194))

(assert (=> b!6197706 m!7031056))

(assert (=> b!6197706 m!7031194))

(assert (=> b!6197706 m!7031056))

(declare-fun m!7031196 () Bool)

(assert (=> b!6197706 m!7031196))

(assert (=> b!6196974 d!1942988))

(assert (=> b!6196975 d!1942842))

(declare-fun bs!1537886 () Bool)

(declare-fun b!6197716 () Bool)

(assert (= bs!1537886 (and b!6197716 b!6197457)))

(declare-fun lambda!338577 () Int)

(assert (=> bs!1537886 (not (= lambda!338577 lambda!338566))))

(declare-fun bs!1537887 () Bool)

(assert (= bs!1537887 (and b!6197716 b!6196946)))

(assert (=> bs!1537887 (not (= lambda!338577 lambda!338529))))

(declare-fun bs!1537888 () Bool)

(assert (= bs!1537888 (and b!6197716 b!6197458)))

(assert (=> bs!1537888 (= (and (= (reg!16466 r!7292) (reg!16466 lt!2342427)) (= r!7292 lt!2342427)) (= lambda!338577 lambda!338565))))

(assert (=> bs!1537887 (not (= lambda!338577 lambda!338530))))

(declare-fun bs!1537889 () Bool)

(assert (= bs!1537889 (and b!6197716 b!6197606)))

(assert (=> bs!1537889 (not (= lambda!338577 lambda!338568))))

(declare-fun bs!1537890 () Bool)

(assert (= bs!1537890 (and b!6197716 b!6197607)))

(assert (=> bs!1537890 (= (and (= (reg!16466 r!7292) (reg!16466 lt!2342438)) (= r!7292 lt!2342438)) (= lambda!338577 lambda!338567))))

(assert (=> b!6197716 true))

(assert (=> b!6197716 true))

(declare-fun bs!1537891 () Bool)

(declare-fun b!6197715 () Bool)

(assert (= bs!1537891 (and b!6197715 b!6197457)))

(declare-fun lambda!338578 () Int)

(assert (=> bs!1537891 (= (and (= (regOne!32786 r!7292) (regOne!32786 lt!2342427)) (= (regTwo!32786 r!7292) (regTwo!32786 lt!2342427))) (= lambda!338578 lambda!338566))))

(declare-fun bs!1537892 () Bool)

(assert (= bs!1537892 (and b!6197715 b!6196946)))

(assert (=> bs!1537892 (not (= lambda!338578 lambda!338529))))

(declare-fun bs!1537893 () Bool)

(assert (= bs!1537893 (and b!6197715 b!6197716)))

(assert (=> bs!1537893 (not (= lambda!338578 lambda!338577))))

(declare-fun bs!1537894 () Bool)

(assert (= bs!1537894 (and b!6197715 b!6197458)))

(assert (=> bs!1537894 (not (= lambda!338578 lambda!338565))))

(assert (=> bs!1537892 (= lambda!338578 lambda!338530)))

(declare-fun bs!1537895 () Bool)

(assert (= bs!1537895 (and b!6197715 b!6197606)))

(assert (=> bs!1537895 (= (and (= (regOne!32786 r!7292) (regOne!32786 lt!2342438)) (= (regTwo!32786 r!7292) (regTwo!32786 lt!2342438))) (= lambda!338578 lambda!338568))))

(declare-fun bs!1537896 () Bool)

(assert (= bs!1537896 (and b!6197715 b!6197607)))

(assert (=> bs!1537896 (not (= lambda!338578 lambda!338567))))

(assert (=> b!6197715 true))

(assert (=> b!6197715 true))

(declare-fun d!1942990 () Bool)

(declare-fun c!1118693 () Bool)

(assert (=> d!1942990 (= c!1118693 ((_ is EmptyExpr!16137) r!7292))))

(declare-fun e!3774305 () Bool)

(assert (=> d!1942990 (= (matchRSpec!3238 r!7292 s!2326) e!3774305)))

(declare-fun b!6197707 () Bool)

(declare-fun res!2563704 () Bool)

(declare-fun e!3774302 () Bool)

(assert (=> b!6197707 (=> res!2563704 e!3774302)))

(declare-fun call!518593 () Bool)

(assert (=> b!6197707 (= res!2563704 call!518593)))

(declare-fun e!3774307 () Bool)

(assert (=> b!6197707 (= e!3774307 e!3774302)))

(declare-fun b!6197708 () Bool)

(declare-fun e!3774306 () Bool)

(assert (=> b!6197708 (= e!3774305 e!3774306)))

(declare-fun res!2563702 () Bool)

(assert (=> b!6197708 (= res!2563702 (not ((_ is EmptyLang!16137) r!7292)))))

(assert (=> b!6197708 (=> (not res!2563702) (not e!3774306))))

(declare-fun call!518592 () Bool)

(declare-fun c!1118694 () Bool)

(declare-fun bm!518587 () Bool)

(assert (=> bm!518587 (= call!518592 (Exists!3207 (ite c!1118694 lambda!338577 lambda!338578)))))

(declare-fun b!6197709 () Bool)

(assert (=> b!6197709 (= e!3774305 call!518593)))

(declare-fun b!6197710 () Bool)

(declare-fun e!3774303 () Bool)

(assert (=> b!6197710 (= e!3774303 (matchRSpec!3238 (regTwo!32787 r!7292) s!2326))))

(declare-fun b!6197711 () Bool)

(declare-fun e!3774304 () Bool)

(assert (=> b!6197711 (= e!3774304 e!3774307)))

(assert (=> b!6197711 (= c!1118694 ((_ is Star!16137) r!7292))))

(declare-fun b!6197712 () Bool)

(declare-fun c!1118696 () Bool)

(assert (=> b!6197712 (= c!1118696 ((_ is ElementMatch!16137) r!7292))))

(declare-fun e!3774308 () Bool)

(assert (=> b!6197712 (= e!3774306 e!3774308)))

(declare-fun b!6197713 () Bool)

(declare-fun c!1118695 () Bool)

(assert (=> b!6197713 (= c!1118695 ((_ is Union!16137) r!7292))))

(assert (=> b!6197713 (= e!3774308 e!3774304)))

(declare-fun b!6197714 () Bool)

(assert (=> b!6197714 (= e!3774304 e!3774303)))

(declare-fun res!2563703 () Bool)

(assert (=> b!6197714 (= res!2563703 (matchRSpec!3238 (regOne!32787 r!7292) s!2326))))

(assert (=> b!6197714 (=> res!2563703 e!3774303)))

(assert (=> b!6197715 (= e!3774307 call!518592)))

(assert (=> b!6197716 (= e!3774302 call!518592)))

(declare-fun b!6197717 () Bool)

(assert (=> b!6197717 (= e!3774308 (= s!2326 (Cons!64588 (c!1118450 r!7292) Nil!64588)))))

(declare-fun bm!518588 () Bool)

(assert (=> bm!518588 (= call!518593 (isEmpty!36577 s!2326))))

(assert (= (and d!1942990 c!1118693) b!6197709))

(assert (= (and d!1942990 (not c!1118693)) b!6197708))

(assert (= (and b!6197708 res!2563702) b!6197712))

(assert (= (and b!6197712 c!1118696) b!6197717))

(assert (= (and b!6197712 (not c!1118696)) b!6197713))

(assert (= (and b!6197713 c!1118695) b!6197714))

(assert (= (and b!6197713 (not c!1118695)) b!6197711))

(assert (= (and b!6197714 (not res!2563703)) b!6197710))

(assert (= (and b!6197711 c!1118694) b!6197707))

(assert (= (and b!6197711 (not c!1118694)) b!6197715))

(assert (= (and b!6197707 (not res!2563704)) b!6197716))

(assert (= (or b!6197716 b!6197715) bm!518587))

(assert (= (or b!6197709 b!6197707) bm!518588))

(declare-fun m!7031198 () Bool)

(assert (=> bm!518587 m!7031198))

(declare-fun m!7031200 () Bool)

(assert (=> b!6197710 m!7031200))

(declare-fun m!7031202 () Bool)

(assert (=> b!6197714 m!7031202))

(assert (=> bm!518588 m!7030972))

(assert (=> b!6196956 d!1942990))

(declare-fun d!1942992 () Bool)

(declare-fun e!3774310 () Bool)

(assert (=> d!1942992 e!3774310))

(declare-fun c!1118698 () Bool)

(assert (=> d!1942992 (= c!1118698 ((_ is EmptyExpr!16137) r!7292))))

(declare-fun lt!2342545 () Bool)

(declare-fun e!3774312 () Bool)

(assert (=> d!1942992 (= lt!2342545 e!3774312)))

(declare-fun c!1118699 () Bool)

(assert (=> d!1942992 (= c!1118699 (isEmpty!36577 s!2326))))

(assert (=> d!1942992 (validRegex!7873 r!7292)))

(assert (=> d!1942992 (= (matchR!8320 r!7292 s!2326) lt!2342545)))

(declare-fun b!6197718 () Bool)

(declare-fun res!2563707 () Bool)

(declare-fun e!3774313 () Bool)

(assert (=> b!6197718 (=> (not res!2563707) (not e!3774313))))

(assert (=> b!6197718 (= res!2563707 (isEmpty!36577 (tail!11867 s!2326)))))

(declare-fun b!6197719 () Bool)

(declare-fun call!518594 () Bool)

(assert (=> b!6197719 (= e!3774310 (= lt!2342545 call!518594))))

(declare-fun b!6197720 () Bool)

(declare-fun e!3774315 () Bool)

(assert (=> b!6197720 (= e!3774310 e!3774315)))

(declare-fun c!1118697 () Bool)

(assert (=> b!6197720 (= c!1118697 ((_ is EmptyLang!16137) r!7292))))

(declare-fun b!6197721 () Bool)

(assert (=> b!6197721 (= e!3774315 (not lt!2342545))))

(declare-fun b!6197722 () Bool)

(declare-fun res!2563708 () Bool)

(declare-fun e!3774309 () Bool)

(assert (=> b!6197722 (=> res!2563708 e!3774309)))

(assert (=> b!6197722 (= res!2563708 e!3774313)))

(declare-fun res!2563709 () Bool)

(assert (=> b!6197722 (=> (not res!2563709) (not e!3774313))))

(assert (=> b!6197722 (= res!2563709 lt!2342545)))

(declare-fun bm!518589 () Bool)

(assert (=> bm!518589 (= call!518594 (isEmpty!36577 s!2326))))

(declare-fun b!6197723 () Bool)

(declare-fun e!3774314 () Bool)

(assert (=> b!6197723 (= e!3774314 (not (= (head!12782 s!2326) (c!1118450 r!7292))))))

(declare-fun b!6197724 () Bool)

(assert (=> b!6197724 (= e!3774313 (= (head!12782 s!2326) (c!1118450 r!7292)))))

(declare-fun b!6197725 () Bool)

(declare-fun res!2563706 () Bool)

(assert (=> b!6197725 (=> (not res!2563706) (not e!3774313))))

(assert (=> b!6197725 (= res!2563706 (not call!518594))))

(declare-fun b!6197726 () Bool)

(assert (=> b!6197726 (= e!3774312 (nullable!6130 r!7292))))

(declare-fun b!6197727 () Bool)

(declare-fun res!2563712 () Bool)

(assert (=> b!6197727 (=> res!2563712 e!3774314)))

(assert (=> b!6197727 (= res!2563712 (not (isEmpty!36577 (tail!11867 s!2326))))))

(declare-fun b!6197728 () Bool)

(declare-fun e!3774311 () Bool)

(assert (=> b!6197728 (= e!3774311 e!3774314)))

(declare-fun res!2563710 () Bool)

(assert (=> b!6197728 (=> res!2563710 e!3774314)))

(assert (=> b!6197728 (= res!2563710 call!518594)))

(declare-fun b!6197729 () Bool)

(declare-fun res!2563705 () Bool)

(assert (=> b!6197729 (=> res!2563705 e!3774309)))

(assert (=> b!6197729 (= res!2563705 (not ((_ is ElementMatch!16137) r!7292)))))

(assert (=> b!6197729 (= e!3774315 e!3774309)))

(declare-fun b!6197730 () Bool)

(assert (=> b!6197730 (= e!3774309 e!3774311)))

(declare-fun res!2563711 () Bool)

(assert (=> b!6197730 (=> (not res!2563711) (not e!3774311))))

(assert (=> b!6197730 (= res!2563711 (not lt!2342545))))

(declare-fun b!6197731 () Bool)

(assert (=> b!6197731 (= e!3774312 (matchR!8320 (derivativeStep!4850 r!7292 (head!12782 s!2326)) (tail!11867 s!2326)))))

(assert (= (and d!1942992 c!1118699) b!6197726))

(assert (= (and d!1942992 (not c!1118699)) b!6197731))

(assert (= (and d!1942992 c!1118698) b!6197719))

(assert (= (and d!1942992 (not c!1118698)) b!6197720))

(assert (= (and b!6197720 c!1118697) b!6197721))

(assert (= (and b!6197720 (not c!1118697)) b!6197729))

(assert (= (and b!6197729 (not res!2563705)) b!6197722))

(assert (= (and b!6197722 res!2563709) b!6197725))

(assert (= (and b!6197725 res!2563706) b!6197718))

(assert (= (and b!6197718 res!2563707) b!6197724))

(assert (= (and b!6197722 (not res!2563708)) b!6197730))

(assert (= (and b!6197730 res!2563711) b!6197728))

(assert (= (and b!6197728 (not res!2563710)) b!6197727))

(assert (= (and b!6197727 (not res!2563712)) b!6197723))

(assert (= (or b!6197719 b!6197725 b!6197728) bm!518589))

(assert (=> b!6197727 m!7031056))

(assert (=> b!6197727 m!7031056))

(assert (=> b!6197727 m!7031058))

(declare-fun m!7031204 () Bool)

(assert (=> b!6197726 m!7031204))

(assert (=> bm!518589 m!7030972))

(assert (=> b!6197731 m!7031062))

(assert (=> b!6197731 m!7031062))

(declare-fun m!7031206 () Bool)

(assert (=> b!6197731 m!7031206))

(assert (=> b!6197731 m!7031056))

(assert (=> b!6197731 m!7031206))

(assert (=> b!6197731 m!7031056))

(declare-fun m!7031208 () Bool)

(assert (=> b!6197731 m!7031208))

(assert (=> d!1942992 m!7030972))

(assert (=> d!1942992 m!7030516))

(assert (=> b!6197724 m!7031062))

(assert (=> b!6197718 m!7031056))

(assert (=> b!6197718 m!7031056))

(assert (=> b!6197718 m!7031058))

(assert (=> b!6197723 m!7031062))

(assert (=> b!6196956 d!1942992))

(declare-fun d!1942994 () Bool)

(assert (=> d!1942994 (= (matchR!8320 r!7292 s!2326) (matchRSpec!3238 r!7292 s!2326))))

(declare-fun lt!2342546 () Unit!157875)

(assert (=> d!1942994 (= lt!2342546 (choose!46046 r!7292 s!2326))))

(assert (=> d!1942994 (validRegex!7873 r!7292)))

(assert (=> d!1942994 (= (mainMatchTheorem!3238 r!7292 s!2326) lt!2342546)))

(declare-fun bs!1537897 () Bool)

(assert (= bs!1537897 d!1942994))

(assert (=> bs!1537897 m!7030554))

(assert (=> bs!1537897 m!7030552))

(declare-fun m!7031210 () Bool)

(assert (=> bs!1537897 m!7031210))

(assert (=> bs!1537897 m!7030516))

(assert (=> b!6196956 d!1942994))

(assert (=> b!6196976 d!1942988))

(declare-fun d!1942996 () Bool)

(assert (=> d!1942996 (= (matchR!8320 lt!2342456 s!2326) (matchZipper!2149 lt!2342441 s!2326))))

(declare-fun lt!2342555 () Unit!157875)

(declare-fun choose!46050 ((InoxSet Context!11042) List!64711 Regex!16137 List!64712) Unit!157875)

(assert (=> d!1942996 (= lt!2342555 (choose!46050 lt!2342441 lt!2342413 lt!2342456 s!2326))))

(assert (=> d!1942996 (validRegex!7873 lt!2342456)))

(assert (=> d!1942996 (= (theoremZipperRegexEquiv!749 lt!2342441 lt!2342413 lt!2342456 s!2326) lt!2342555)))

(declare-fun bs!1537898 () Bool)

(assert (= bs!1537898 d!1942996))

(assert (=> bs!1537898 m!7030604))

(assert (=> bs!1537898 m!7030566))

(declare-fun m!7031212 () Bool)

(assert (=> bs!1537898 m!7031212))

(declare-fun m!7031214 () Bool)

(assert (=> bs!1537898 m!7031214))

(assert (=> b!6196976 d!1942996))

(declare-fun d!1942998 () Bool)

(assert (=> d!1942998 (= (matchR!8320 lt!2342456 s!2326) (matchRSpec!3238 lt!2342456 s!2326))))

(declare-fun lt!2342556 () Unit!157875)

(assert (=> d!1942998 (= lt!2342556 (choose!46046 lt!2342456 s!2326))))

(assert (=> d!1942998 (validRegex!7873 lt!2342456)))

(assert (=> d!1942998 (= (mainMatchTheorem!3238 lt!2342456 s!2326) lt!2342556)))

(declare-fun bs!1537899 () Bool)

(assert (= bs!1537899 d!1942998))

(assert (=> bs!1537899 m!7030604))

(assert (=> bs!1537899 m!7030596))

(declare-fun m!7031216 () Bool)

(assert (=> bs!1537899 m!7031216))

(assert (=> bs!1537899 m!7031214))

(assert (=> b!6196976 d!1942998))

(declare-fun bs!1537900 () Bool)

(declare-fun d!1943000 () Bool)

(assert (= bs!1537900 (and d!1943000 d!1942860)))

(declare-fun lambda!338579 () Int)

(assert (=> bs!1537900 (= lambda!338579 lambda!338551)))

(declare-fun bs!1537901 () Bool)

(assert (= bs!1537901 (and d!1943000 d!1942882)))

(assert (=> bs!1537901 (= lambda!338579 lambda!338556)))

(declare-fun bs!1537902 () Bool)

(assert (= bs!1537902 (and d!1943000 d!1942950)))

(assert (=> bs!1537902 (= lambda!338579 lambda!338576)))

(declare-fun b!6197750 () Bool)

(declare-fun e!3774328 () Regex!16137)

(assert (=> b!6197750 (= e!3774328 (h!71034 lt!2342455))))

(declare-fun e!3774331 () Bool)

(assert (=> d!1943000 e!3774331))

(declare-fun res!2563724 () Bool)

(assert (=> d!1943000 (=> (not res!2563724) (not e!3774331))))

(declare-fun lt!2342557 () Regex!16137)

(assert (=> d!1943000 (= res!2563724 (validRegex!7873 lt!2342557))))

(assert (=> d!1943000 (= lt!2342557 e!3774328)))

(declare-fun c!1118704 () Bool)

(declare-fun e!3774326 () Bool)

(assert (=> d!1943000 (= c!1118704 e!3774326)))

(declare-fun res!2563723 () Bool)

(assert (=> d!1943000 (=> (not res!2563723) (not e!3774326))))

(assert (=> d!1943000 (= res!2563723 ((_ is Cons!64586) lt!2342455))))

(assert (=> d!1943000 (forall!15251 lt!2342455 lambda!338579)))

(assert (=> d!1943000 (= (generalisedConcat!1734 lt!2342455) lt!2342557)))

(declare-fun b!6197751 () Bool)

(declare-fun e!3774330 () Regex!16137)

(assert (=> b!6197751 (= e!3774328 e!3774330)))

(declare-fun c!1118707 () Bool)

(assert (=> b!6197751 (= c!1118707 ((_ is Cons!64586) lt!2342455))))

(declare-fun b!6197752 () Bool)

(declare-fun e!3774329 () Bool)

(assert (=> b!6197752 (= e!3774329 (isConcat!1070 lt!2342557))))

(declare-fun b!6197753 () Bool)

(assert (=> b!6197753 (= e!3774330 EmptyExpr!16137)))

(declare-fun b!6197754 () Bool)

(declare-fun e!3774327 () Bool)

(assert (=> b!6197754 (= e!3774327 e!3774329)))

(declare-fun c!1118705 () Bool)

(assert (=> b!6197754 (= c!1118705 (isEmpty!36575 (tail!11868 lt!2342455)))))

(declare-fun b!6197755 () Bool)

(assert (=> b!6197755 (= e!3774329 (= lt!2342557 (head!12783 lt!2342455)))))

(declare-fun b!6197756 () Bool)

(assert (=> b!6197756 (= e!3774326 (isEmpty!36575 (t!378224 lt!2342455)))))

(declare-fun b!6197757 () Bool)

(assert (=> b!6197757 (= e!3774327 (isEmptyExpr!1547 lt!2342557))))

(declare-fun b!6197758 () Bool)

(assert (=> b!6197758 (= e!3774331 e!3774327)))

(declare-fun c!1118706 () Bool)

(assert (=> b!6197758 (= c!1118706 (isEmpty!36575 lt!2342455))))

(declare-fun b!6197759 () Bool)

(assert (=> b!6197759 (= e!3774330 (Concat!24982 (h!71034 lt!2342455) (generalisedConcat!1734 (t!378224 lt!2342455))))))

(assert (= (and d!1943000 res!2563723) b!6197756))

(assert (= (and d!1943000 c!1118704) b!6197750))

(assert (= (and d!1943000 (not c!1118704)) b!6197751))

(assert (= (and b!6197751 c!1118707) b!6197759))

(assert (= (and b!6197751 (not c!1118707)) b!6197753))

(assert (= (and d!1943000 res!2563724) b!6197758))

(assert (= (and b!6197758 c!1118706) b!6197757))

(assert (= (and b!6197758 (not c!1118706)) b!6197754))

(assert (= (and b!6197754 c!1118705) b!6197755))

(assert (= (and b!6197754 (not c!1118705)) b!6197752))

(declare-fun m!7031218 () Bool)

(assert (=> b!6197758 m!7031218))

(declare-fun m!7031220 () Bool)

(assert (=> b!6197756 m!7031220))

(declare-fun m!7031222 () Bool)

(assert (=> b!6197754 m!7031222))

(assert (=> b!6197754 m!7031222))

(declare-fun m!7031224 () Bool)

(assert (=> b!6197754 m!7031224))

(declare-fun m!7031226 () Bool)

(assert (=> b!6197752 m!7031226))

(declare-fun m!7031228 () Bool)

(assert (=> b!6197759 m!7031228))

(declare-fun m!7031230 () Bool)

(assert (=> b!6197757 m!7031230))

(declare-fun m!7031232 () Bool)

(assert (=> d!1943000 m!7031232))

(declare-fun m!7031234 () Bool)

(assert (=> d!1943000 m!7031234))

(declare-fun m!7031236 () Bool)

(assert (=> b!6197755 m!7031236))

(assert (=> b!6196976 d!1943000))

(declare-fun d!1943002 () Bool)

(assert (=> d!1943002 (= (matchR!8320 lt!2342414 s!2326) (matchRSpec!3238 lt!2342414 s!2326))))

(declare-fun lt!2342558 () Unit!157875)

(assert (=> d!1943002 (= lt!2342558 (choose!46046 lt!2342414 s!2326))))

(assert (=> d!1943002 (validRegex!7873 lt!2342414)))

(assert (=> d!1943002 (= (mainMatchTheorem!3238 lt!2342414 s!2326) lt!2342558)))

(declare-fun bs!1537903 () Bool)

(assert (= bs!1537903 d!1943002))

(assert (=> bs!1537903 m!7030606))

(assert (=> bs!1537903 m!7030610))

(declare-fun m!7031238 () Bool)

(assert (=> bs!1537903 m!7031238))

(declare-fun m!7031240 () Bool)

(assert (=> bs!1537903 m!7031240))

(assert (=> b!6196976 d!1943002))

(declare-fun d!1943004 () Bool)

(assert (=> d!1943004 (= (matchR!8320 lt!2342414 s!2326) (matchZipper!2149 lt!2342425 s!2326))))

(declare-fun lt!2342559 () Unit!157875)

(assert (=> d!1943004 (= lt!2342559 (choose!46050 lt!2342425 lt!2342417 lt!2342414 s!2326))))

(assert (=> d!1943004 (validRegex!7873 lt!2342414)))

(assert (=> d!1943004 (= (theoremZipperRegexEquiv!749 lt!2342425 lt!2342417 lt!2342414 s!2326) lt!2342559)))

(declare-fun bs!1537904 () Bool)

(assert (= bs!1537904 d!1943004))

(assert (=> bs!1537904 m!7030606))

(assert (=> bs!1537904 m!7030536))

(declare-fun m!7031242 () Bool)

(assert (=> bs!1537904 m!7031242))

(assert (=> bs!1537904 m!7031240))

(assert (=> b!6196976 d!1943004))

(declare-fun d!1943006 () Bool)

(declare-fun e!3774333 () Bool)

(assert (=> d!1943006 e!3774333))

(declare-fun c!1118709 () Bool)

(assert (=> d!1943006 (= c!1118709 ((_ is EmptyExpr!16137) lt!2342414))))

(declare-fun lt!2342560 () Bool)

(declare-fun e!3774335 () Bool)

(assert (=> d!1943006 (= lt!2342560 e!3774335)))

(declare-fun c!1118710 () Bool)

(assert (=> d!1943006 (= c!1118710 (isEmpty!36577 s!2326))))

(assert (=> d!1943006 (validRegex!7873 lt!2342414)))

(assert (=> d!1943006 (= (matchR!8320 lt!2342414 s!2326) lt!2342560)))

(declare-fun b!6197760 () Bool)

(declare-fun res!2563727 () Bool)

(declare-fun e!3774336 () Bool)

(assert (=> b!6197760 (=> (not res!2563727) (not e!3774336))))

(assert (=> b!6197760 (= res!2563727 (isEmpty!36577 (tail!11867 s!2326)))))

(declare-fun b!6197761 () Bool)

(declare-fun call!518595 () Bool)

(assert (=> b!6197761 (= e!3774333 (= lt!2342560 call!518595))))

(declare-fun b!6197762 () Bool)

(declare-fun e!3774338 () Bool)

(assert (=> b!6197762 (= e!3774333 e!3774338)))

(declare-fun c!1118708 () Bool)

(assert (=> b!6197762 (= c!1118708 ((_ is EmptyLang!16137) lt!2342414))))

(declare-fun b!6197763 () Bool)

(assert (=> b!6197763 (= e!3774338 (not lt!2342560))))

(declare-fun b!6197764 () Bool)

(declare-fun res!2563728 () Bool)

(declare-fun e!3774332 () Bool)

(assert (=> b!6197764 (=> res!2563728 e!3774332)))

(assert (=> b!6197764 (= res!2563728 e!3774336)))

(declare-fun res!2563729 () Bool)

(assert (=> b!6197764 (=> (not res!2563729) (not e!3774336))))

(assert (=> b!6197764 (= res!2563729 lt!2342560)))

(declare-fun bm!518590 () Bool)

(assert (=> bm!518590 (= call!518595 (isEmpty!36577 s!2326))))

(declare-fun b!6197765 () Bool)

(declare-fun e!3774337 () Bool)

(assert (=> b!6197765 (= e!3774337 (not (= (head!12782 s!2326) (c!1118450 lt!2342414))))))

(declare-fun b!6197766 () Bool)

(assert (=> b!6197766 (= e!3774336 (= (head!12782 s!2326) (c!1118450 lt!2342414)))))

(declare-fun b!6197767 () Bool)

(declare-fun res!2563726 () Bool)

(assert (=> b!6197767 (=> (not res!2563726) (not e!3774336))))

(assert (=> b!6197767 (= res!2563726 (not call!518595))))

(declare-fun b!6197768 () Bool)

(assert (=> b!6197768 (= e!3774335 (nullable!6130 lt!2342414))))

(declare-fun b!6197769 () Bool)

(declare-fun res!2563732 () Bool)

(assert (=> b!6197769 (=> res!2563732 e!3774337)))

(assert (=> b!6197769 (= res!2563732 (not (isEmpty!36577 (tail!11867 s!2326))))))

(declare-fun b!6197770 () Bool)

(declare-fun e!3774334 () Bool)

(assert (=> b!6197770 (= e!3774334 e!3774337)))

(declare-fun res!2563730 () Bool)

(assert (=> b!6197770 (=> res!2563730 e!3774337)))

(assert (=> b!6197770 (= res!2563730 call!518595)))

(declare-fun b!6197771 () Bool)

(declare-fun res!2563725 () Bool)

(assert (=> b!6197771 (=> res!2563725 e!3774332)))

(assert (=> b!6197771 (= res!2563725 (not ((_ is ElementMatch!16137) lt!2342414)))))

(assert (=> b!6197771 (= e!3774338 e!3774332)))

(declare-fun b!6197772 () Bool)

(assert (=> b!6197772 (= e!3774332 e!3774334)))

(declare-fun res!2563731 () Bool)

(assert (=> b!6197772 (=> (not res!2563731) (not e!3774334))))

(assert (=> b!6197772 (= res!2563731 (not lt!2342560))))

(declare-fun b!6197773 () Bool)

(assert (=> b!6197773 (= e!3774335 (matchR!8320 (derivativeStep!4850 lt!2342414 (head!12782 s!2326)) (tail!11867 s!2326)))))

(assert (= (and d!1943006 c!1118710) b!6197768))

(assert (= (and d!1943006 (not c!1118710)) b!6197773))

(assert (= (and d!1943006 c!1118709) b!6197761))

(assert (= (and d!1943006 (not c!1118709)) b!6197762))

(assert (= (and b!6197762 c!1118708) b!6197763))

(assert (= (and b!6197762 (not c!1118708)) b!6197771))

(assert (= (and b!6197771 (not res!2563725)) b!6197764))

(assert (= (and b!6197764 res!2563729) b!6197767))

(assert (= (and b!6197767 res!2563726) b!6197760))

(assert (= (and b!6197760 res!2563727) b!6197766))

(assert (= (and b!6197764 (not res!2563728)) b!6197772))

(assert (= (and b!6197772 res!2563731) b!6197770))

(assert (= (and b!6197770 (not res!2563730)) b!6197769))

(assert (= (and b!6197769 (not res!2563732)) b!6197765))

(assert (= (or b!6197761 b!6197767 b!6197770) bm!518590))

(assert (=> b!6197769 m!7031056))

(assert (=> b!6197769 m!7031056))

(assert (=> b!6197769 m!7031058))

(declare-fun m!7031244 () Bool)

(assert (=> b!6197768 m!7031244))

(assert (=> bm!518590 m!7030972))

(assert (=> b!6197773 m!7031062))

(assert (=> b!6197773 m!7031062))

(declare-fun m!7031246 () Bool)

(assert (=> b!6197773 m!7031246))

(assert (=> b!6197773 m!7031056))

(assert (=> b!6197773 m!7031246))

(assert (=> b!6197773 m!7031056))

(declare-fun m!7031248 () Bool)

(assert (=> b!6197773 m!7031248))

(assert (=> d!1943006 m!7030972))

(assert (=> d!1943006 m!7031240))

(assert (=> b!6197766 m!7031062))

(assert (=> b!6197760 m!7031056))

(assert (=> b!6197760 m!7031056))

(assert (=> b!6197760 m!7031058))

(assert (=> b!6197765 m!7031062))

(assert (=> b!6196976 d!1943006))

(declare-fun bs!1537905 () Bool)

(declare-fun b!6197792 () Bool)

(assert (= bs!1537905 (and b!6197792 b!6197457)))

(declare-fun lambda!338580 () Int)

(assert (=> bs!1537905 (not (= lambda!338580 lambda!338566))))

(declare-fun bs!1537906 () Bool)

(assert (= bs!1537906 (and b!6197792 b!6196946)))

(assert (=> bs!1537906 (not (= lambda!338580 lambda!338529))))

(declare-fun bs!1537907 () Bool)

(assert (= bs!1537907 (and b!6197792 b!6197716)))

(assert (=> bs!1537907 (= (and (= (reg!16466 lt!2342414) (reg!16466 r!7292)) (= lt!2342414 r!7292)) (= lambda!338580 lambda!338577))))

(declare-fun bs!1537908 () Bool)

(assert (= bs!1537908 (and b!6197792 b!6197458)))

(assert (=> bs!1537908 (= (and (= (reg!16466 lt!2342414) (reg!16466 lt!2342427)) (= lt!2342414 lt!2342427)) (= lambda!338580 lambda!338565))))

(declare-fun bs!1537909 () Bool)

(assert (= bs!1537909 (and b!6197792 b!6197606)))

(assert (=> bs!1537909 (not (= lambda!338580 lambda!338568))))

(declare-fun bs!1537910 () Bool)

(assert (= bs!1537910 (and b!6197792 b!6197607)))

(assert (=> bs!1537910 (= (and (= (reg!16466 lt!2342414) (reg!16466 lt!2342438)) (= lt!2342414 lt!2342438)) (= lambda!338580 lambda!338567))))

(assert (=> bs!1537906 (not (= lambda!338580 lambda!338530))))

(declare-fun bs!1537911 () Bool)

(assert (= bs!1537911 (and b!6197792 b!6197715)))

(assert (=> bs!1537911 (not (= lambda!338580 lambda!338578))))

(assert (=> b!6197792 true))

(assert (=> b!6197792 true))

(declare-fun bs!1537914 () Bool)

(declare-fun b!6197791 () Bool)

(assert (= bs!1537914 (and b!6197791 b!6197457)))

(declare-fun lambda!338581 () Int)

(assert (=> bs!1537914 (= (and (= (regOne!32786 lt!2342414) (regOne!32786 lt!2342427)) (= (regTwo!32786 lt!2342414) (regTwo!32786 lt!2342427))) (= lambda!338581 lambda!338566))))

(declare-fun bs!1537915 () Bool)

(assert (= bs!1537915 (and b!6197791 b!6196946)))

(assert (=> bs!1537915 (not (= lambda!338581 lambda!338529))))

(declare-fun bs!1537916 () Bool)

(assert (= bs!1537916 (and b!6197791 b!6197792)))

(assert (=> bs!1537916 (not (= lambda!338581 lambda!338580))))

(declare-fun bs!1537917 () Bool)

(assert (= bs!1537917 (and b!6197791 b!6197716)))

(assert (=> bs!1537917 (not (= lambda!338581 lambda!338577))))

(declare-fun bs!1537918 () Bool)

(assert (= bs!1537918 (and b!6197791 b!6197458)))

(assert (=> bs!1537918 (not (= lambda!338581 lambda!338565))))

(declare-fun bs!1537919 () Bool)

(assert (= bs!1537919 (and b!6197791 b!6197606)))

(assert (=> bs!1537919 (= (and (= (regOne!32786 lt!2342414) (regOne!32786 lt!2342438)) (= (regTwo!32786 lt!2342414) (regTwo!32786 lt!2342438))) (= lambda!338581 lambda!338568))))

(declare-fun bs!1537920 () Bool)

(assert (= bs!1537920 (and b!6197791 b!6197607)))

(assert (=> bs!1537920 (not (= lambda!338581 lambda!338567))))

(assert (=> bs!1537915 (= (and (= (regOne!32786 lt!2342414) (regOne!32786 r!7292)) (= (regTwo!32786 lt!2342414) (regTwo!32786 r!7292))) (= lambda!338581 lambda!338530))))

(declare-fun bs!1537921 () Bool)

(assert (= bs!1537921 (and b!6197791 b!6197715)))

(assert (=> bs!1537921 (= (and (= (regOne!32786 lt!2342414) (regOne!32786 r!7292)) (= (regTwo!32786 lt!2342414) (regTwo!32786 r!7292))) (= lambda!338581 lambda!338578))))

(assert (=> b!6197791 true))

(assert (=> b!6197791 true))

(declare-fun d!1943008 () Bool)

(declare-fun c!1118713 () Bool)

(assert (=> d!1943008 (= c!1118713 ((_ is EmptyExpr!16137) lt!2342414))))

(declare-fun e!3774347 () Bool)

(assert (=> d!1943008 (= (matchRSpec!3238 lt!2342414 s!2326) e!3774347)))

(declare-fun b!6197783 () Bool)

(declare-fun res!2563740 () Bool)

(declare-fun e!3774344 () Bool)

(assert (=> b!6197783 (=> res!2563740 e!3774344)))

(declare-fun call!518597 () Bool)

(assert (=> b!6197783 (= res!2563740 call!518597)))

(declare-fun e!3774349 () Bool)

(assert (=> b!6197783 (= e!3774349 e!3774344)))

(declare-fun b!6197784 () Bool)

(declare-fun e!3774348 () Bool)

(assert (=> b!6197784 (= e!3774347 e!3774348)))

(declare-fun res!2563738 () Bool)

(assert (=> b!6197784 (= res!2563738 (not ((_ is EmptyLang!16137) lt!2342414)))))

(assert (=> b!6197784 (=> (not res!2563738) (not e!3774348))))

(declare-fun call!518596 () Bool)

(declare-fun c!1118714 () Bool)

(declare-fun bm!518591 () Bool)

(assert (=> bm!518591 (= call!518596 (Exists!3207 (ite c!1118714 lambda!338580 lambda!338581)))))

(declare-fun b!6197785 () Bool)

(assert (=> b!6197785 (= e!3774347 call!518597)))

(declare-fun b!6197786 () Bool)

(declare-fun e!3774345 () Bool)

(assert (=> b!6197786 (= e!3774345 (matchRSpec!3238 (regTwo!32787 lt!2342414) s!2326))))

(declare-fun b!6197787 () Bool)

(declare-fun e!3774346 () Bool)

(assert (=> b!6197787 (= e!3774346 e!3774349)))

(assert (=> b!6197787 (= c!1118714 ((_ is Star!16137) lt!2342414))))

(declare-fun b!6197788 () Bool)

(declare-fun c!1118716 () Bool)

(assert (=> b!6197788 (= c!1118716 ((_ is ElementMatch!16137) lt!2342414))))

(declare-fun e!3774350 () Bool)

(assert (=> b!6197788 (= e!3774348 e!3774350)))

(declare-fun b!6197789 () Bool)

(declare-fun c!1118715 () Bool)

(assert (=> b!6197789 (= c!1118715 ((_ is Union!16137) lt!2342414))))

(assert (=> b!6197789 (= e!3774350 e!3774346)))

(declare-fun b!6197790 () Bool)

(assert (=> b!6197790 (= e!3774346 e!3774345)))

(declare-fun res!2563739 () Bool)

(assert (=> b!6197790 (= res!2563739 (matchRSpec!3238 (regOne!32787 lt!2342414) s!2326))))

(assert (=> b!6197790 (=> res!2563739 e!3774345)))

(assert (=> b!6197791 (= e!3774349 call!518596)))

(assert (=> b!6197792 (= e!3774344 call!518596)))

(declare-fun b!6197793 () Bool)

(assert (=> b!6197793 (= e!3774350 (= s!2326 (Cons!64588 (c!1118450 lt!2342414) Nil!64588)))))

(declare-fun bm!518592 () Bool)

(assert (=> bm!518592 (= call!518597 (isEmpty!36577 s!2326))))

(assert (= (and d!1943008 c!1118713) b!6197785))

(assert (= (and d!1943008 (not c!1118713)) b!6197784))

(assert (= (and b!6197784 res!2563738) b!6197788))

(assert (= (and b!6197788 c!1118716) b!6197793))

(assert (= (and b!6197788 (not c!1118716)) b!6197789))

(assert (= (and b!6197789 c!1118715) b!6197790))

(assert (= (and b!6197789 (not c!1118715)) b!6197787))

(assert (= (and b!6197790 (not res!2563739)) b!6197786))

(assert (= (and b!6197787 c!1118714) b!6197783))

(assert (= (and b!6197787 (not c!1118714)) b!6197791))

(assert (= (and b!6197783 (not res!2563740)) b!6197792))

(assert (= (or b!6197792 b!6197791) bm!518591))

(assert (= (or b!6197785 b!6197783) bm!518592))

(declare-fun m!7031278 () Bool)

(assert (=> bm!518591 m!7031278))

(declare-fun m!7031280 () Bool)

(assert (=> b!6197786 m!7031280))

(declare-fun m!7031282 () Bool)

(assert (=> b!6197790 m!7031282))

(assert (=> bm!518592 m!7030972))

(assert (=> b!6196976 d!1943008))

(declare-fun d!1943016 () Bool)

(declare-fun e!3774352 () Bool)

(assert (=> d!1943016 e!3774352))

(declare-fun c!1118718 () Bool)

(assert (=> d!1943016 (= c!1118718 ((_ is EmptyExpr!16137) lt!2342456))))

(declare-fun lt!2342564 () Bool)

(declare-fun e!3774354 () Bool)

(assert (=> d!1943016 (= lt!2342564 e!3774354)))

(declare-fun c!1118719 () Bool)

(assert (=> d!1943016 (= c!1118719 (isEmpty!36577 s!2326))))

(assert (=> d!1943016 (validRegex!7873 lt!2342456)))

(assert (=> d!1943016 (= (matchR!8320 lt!2342456 s!2326) lt!2342564)))

(declare-fun b!6197794 () Bool)

(declare-fun res!2563743 () Bool)

(declare-fun e!3774355 () Bool)

(assert (=> b!6197794 (=> (not res!2563743) (not e!3774355))))

(assert (=> b!6197794 (= res!2563743 (isEmpty!36577 (tail!11867 s!2326)))))

(declare-fun b!6197795 () Bool)

(declare-fun call!518598 () Bool)

(assert (=> b!6197795 (= e!3774352 (= lt!2342564 call!518598))))

(declare-fun b!6197796 () Bool)

(declare-fun e!3774357 () Bool)

(assert (=> b!6197796 (= e!3774352 e!3774357)))

(declare-fun c!1118717 () Bool)

(assert (=> b!6197796 (= c!1118717 ((_ is EmptyLang!16137) lt!2342456))))

(declare-fun b!6197797 () Bool)

(assert (=> b!6197797 (= e!3774357 (not lt!2342564))))

(declare-fun b!6197798 () Bool)

(declare-fun res!2563744 () Bool)

(declare-fun e!3774351 () Bool)

(assert (=> b!6197798 (=> res!2563744 e!3774351)))

(assert (=> b!6197798 (= res!2563744 e!3774355)))

(declare-fun res!2563745 () Bool)

(assert (=> b!6197798 (=> (not res!2563745) (not e!3774355))))

(assert (=> b!6197798 (= res!2563745 lt!2342564)))

(declare-fun bm!518593 () Bool)

(assert (=> bm!518593 (= call!518598 (isEmpty!36577 s!2326))))

(declare-fun b!6197799 () Bool)

(declare-fun e!3774356 () Bool)

(assert (=> b!6197799 (= e!3774356 (not (= (head!12782 s!2326) (c!1118450 lt!2342456))))))

(declare-fun b!6197800 () Bool)

(assert (=> b!6197800 (= e!3774355 (= (head!12782 s!2326) (c!1118450 lt!2342456)))))

(declare-fun b!6197801 () Bool)

(declare-fun res!2563742 () Bool)

(assert (=> b!6197801 (=> (not res!2563742) (not e!3774355))))

(assert (=> b!6197801 (= res!2563742 (not call!518598))))

(declare-fun b!6197802 () Bool)

(assert (=> b!6197802 (= e!3774354 (nullable!6130 lt!2342456))))

(declare-fun b!6197803 () Bool)

(declare-fun res!2563748 () Bool)

(assert (=> b!6197803 (=> res!2563748 e!3774356)))

(assert (=> b!6197803 (= res!2563748 (not (isEmpty!36577 (tail!11867 s!2326))))))

(declare-fun b!6197804 () Bool)

(declare-fun e!3774353 () Bool)

(assert (=> b!6197804 (= e!3774353 e!3774356)))

(declare-fun res!2563746 () Bool)

(assert (=> b!6197804 (=> res!2563746 e!3774356)))

(assert (=> b!6197804 (= res!2563746 call!518598)))

(declare-fun b!6197805 () Bool)

(declare-fun res!2563741 () Bool)

(assert (=> b!6197805 (=> res!2563741 e!3774351)))

(assert (=> b!6197805 (= res!2563741 (not ((_ is ElementMatch!16137) lt!2342456)))))

(assert (=> b!6197805 (= e!3774357 e!3774351)))

(declare-fun b!6197806 () Bool)

(assert (=> b!6197806 (= e!3774351 e!3774353)))

(declare-fun res!2563747 () Bool)

(assert (=> b!6197806 (=> (not res!2563747) (not e!3774353))))

(assert (=> b!6197806 (= res!2563747 (not lt!2342564))))

(declare-fun b!6197807 () Bool)

(assert (=> b!6197807 (= e!3774354 (matchR!8320 (derivativeStep!4850 lt!2342456 (head!12782 s!2326)) (tail!11867 s!2326)))))

(assert (= (and d!1943016 c!1118719) b!6197802))

(assert (= (and d!1943016 (not c!1118719)) b!6197807))

(assert (= (and d!1943016 c!1118718) b!6197795))

(assert (= (and d!1943016 (not c!1118718)) b!6197796))

(assert (= (and b!6197796 c!1118717) b!6197797))

(assert (= (and b!6197796 (not c!1118717)) b!6197805))

(assert (= (and b!6197805 (not res!2563741)) b!6197798))

(assert (= (and b!6197798 res!2563745) b!6197801))

(assert (= (and b!6197801 res!2563742) b!6197794))

(assert (= (and b!6197794 res!2563743) b!6197800))

(assert (= (and b!6197798 (not res!2563744)) b!6197806))

(assert (= (and b!6197806 res!2563747) b!6197804))

(assert (= (and b!6197804 (not res!2563746)) b!6197803))

(assert (= (and b!6197803 (not res!2563748)) b!6197799))

(assert (= (or b!6197795 b!6197801 b!6197804) bm!518593))

(assert (=> b!6197803 m!7031056))

(assert (=> b!6197803 m!7031056))

(assert (=> b!6197803 m!7031058))

(declare-fun m!7031284 () Bool)

(assert (=> b!6197802 m!7031284))

(assert (=> bm!518593 m!7030972))

(assert (=> b!6197807 m!7031062))

(assert (=> b!6197807 m!7031062))

(declare-fun m!7031286 () Bool)

(assert (=> b!6197807 m!7031286))

(assert (=> b!6197807 m!7031056))

(assert (=> b!6197807 m!7031286))

(assert (=> b!6197807 m!7031056))

(declare-fun m!7031288 () Bool)

(assert (=> b!6197807 m!7031288))

(assert (=> d!1943016 m!7030972))

(assert (=> d!1943016 m!7031214))

(assert (=> b!6197800 m!7031062))

(assert (=> b!6197794 m!7031056))

(assert (=> b!6197794 m!7031056))

(assert (=> b!6197794 m!7031058))

(assert (=> b!6197799 m!7031062))

(assert (=> b!6196976 d!1943016))

(declare-fun bs!1537922 () Bool)

(declare-fun b!6197817 () Bool)

(assert (= bs!1537922 (and b!6197817 b!6197457)))

(declare-fun lambda!338582 () Int)

(assert (=> bs!1537922 (not (= lambda!338582 lambda!338566))))

(declare-fun bs!1537923 () Bool)

(assert (= bs!1537923 (and b!6197817 b!6197791)))

(assert (=> bs!1537923 (not (= lambda!338582 lambda!338581))))

(declare-fun bs!1537924 () Bool)

(assert (= bs!1537924 (and b!6197817 b!6196946)))

(assert (=> bs!1537924 (not (= lambda!338582 lambda!338529))))

(declare-fun bs!1537925 () Bool)

(assert (= bs!1537925 (and b!6197817 b!6197792)))

(assert (=> bs!1537925 (= (and (= (reg!16466 lt!2342456) (reg!16466 lt!2342414)) (= lt!2342456 lt!2342414)) (= lambda!338582 lambda!338580))))

(declare-fun bs!1537926 () Bool)

(assert (= bs!1537926 (and b!6197817 b!6197716)))

(assert (=> bs!1537926 (= (and (= (reg!16466 lt!2342456) (reg!16466 r!7292)) (= lt!2342456 r!7292)) (= lambda!338582 lambda!338577))))

(declare-fun bs!1537927 () Bool)

(assert (= bs!1537927 (and b!6197817 b!6197458)))

(assert (=> bs!1537927 (= (and (= (reg!16466 lt!2342456) (reg!16466 lt!2342427)) (= lt!2342456 lt!2342427)) (= lambda!338582 lambda!338565))))

(declare-fun bs!1537928 () Bool)

(assert (= bs!1537928 (and b!6197817 b!6197606)))

(assert (=> bs!1537928 (not (= lambda!338582 lambda!338568))))

(declare-fun bs!1537929 () Bool)

(assert (= bs!1537929 (and b!6197817 b!6197607)))

(assert (=> bs!1537929 (= (and (= (reg!16466 lt!2342456) (reg!16466 lt!2342438)) (= lt!2342456 lt!2342438)) (= lambda!338582 lambda!338567))))

(assert (=> bs!1537924 (not (= lambda!338582 lambda!338530))))

(declare-fun bs!1537930 () Bool)

(assert (= bs!1537930 (and b!6197817 b!6197715)))

(assert (=> bs!1537930 (not (= lambda!338582 lambda!338578))))

(assert (=> b!6197817 true))

(assert (=> b!6197817 true))

(declare-fun bs!1537931 () Bool)

(declare-fun b!6197816 () Bool)

(assert (= bs!1537931 (and b!6197816 b!6197457)))

(declare-fun lambda!338585 () Int)

(assert (=> bs!1537931 (= (and (= (regOne!32786 lt!2342456) (regOne!32786 lt!2342427)) (= (regTwo!32786 lt!2342456) (regTwo!32786 lt!2342427))) (= lambda!338585 lambda!338566))))

(declare-fun bs!1537932 () Bool)

(assert (= bs!1537932 (and b!6197816 b!6197817)))

(assert (=> bs!1537932 (not (= lambda!338585 lambda!338582))))

(declare-fun bs!1537933 () Bool)

(assert (= bs!1537933 (and b!6197816 b!6197791)))

(assert (=> bs!1537933 (= (and (= (regOne!32786 lt!2342456) (regOne!32786 lt!2342414)) (= (regTwo!32786 lt!2342456) (regTwo!32786 lt!2342414))) (= lambda!338585 lambda!338581))))

(declare-fun bs!1537934 () Bool)

(assert (= bs!1537934 (and b!6197816 b!6196946)))

(assert (=> bs!1537934 (not (= lambda!338585 lambda!338529))))

(declare-fun bs!1537935 () Bool)

(assert (= bs!1537935 (and b!6197816 b!6197792)))

(assert (=> bs!1537935 (not (= lambda!338585 lambda!338580))))

(declare-fun bs!1537936 () Bool)

(assert (= bs!1537936 (and b!6197816 b!6197716)))

(assert (=> bs!1537936 (not (= lambda!338585 lambda!338577))))

(declare-fun bs!1537937 () Bool)

(assert (= bs!1537937 (and b!6197816 b!6197458)))

(assert (=> bs!1537937 (not (= lambda!338585 lambda!338565))))

(declare-fun bs!1537938 () Bool)

(assert (= bs!1537938 (and b!6197816 b!6197606)))

(assert (=> bs!1537938 (= (and (= (regOne!32786 lt!2342456) (regOne!32786 lt!2342438)) (= (regTwo!32786 lt!2342456) (regTwo!32786 lt!2342438))) (= lambda!338585 lambda!338568))))

(declare-fun bs!1537939 () Bool)

(assert (= bs!1537939 (and b!6197816 b!6197607)))

(assert (=> bs!1537939 (not (= lambda!338585 lambda!338567))))

(assert (=> bs!1537934 (= (and (= (regOne!32786 lt!2342456) (regOne!32786 r!7292)) (= (regTwo!32786 lt!2342456) (regTwo!32786 r!7292))) (= lambda!338585 lambda!338530))))

(declare-fun bs!1537941 () Bool)

(assert (= bs!1537941 (and b!6197816 b!6197715)))

(assert (=> bs!1537941 (= (and (= (regOne!32786 lt!2342456) (regOne!32786 r!7292)) (= (regTwo!32786 lt!2342456) (regTwo!32786 r!7292))) (= lambda!338585 lambda!338578))))

(assert (=> b!6197816 true))

(assert (=> b!6197816 true))

(declare-fun d!1943018 () Bool)

(declare-fun c!1118720 () Bool)

(assert (=> d!1943018 (= c!1118720 ((_ is EmptyExpr!16137) lt!2342456))))

(declare-fun e!3774361 () Bool)

(assert (=> d!1943018 (= (matchRSpec!3238 lt!2342456 s!2326) e!3774361)))

(declare-fun b!6197808 () Bool)

(declare-fun res!2563751 () Bool)

(declare-fun e!3774358 () Bool)

(assert (=> b!6197808 (=> res!2563751 e!3774358)))

(declare-fun call!518600 () Bool)

(assert (=> b!6197808 (= res!2563751 call!518600)))

(declare-fun e!3774363 () Bool)

(assert (=> b!6197808 (= e!3774363 e!3774358)))

(declare-fun b!6197809 () Bool)

(declare-fun e!3774362 () Bool)

(assert (=> b!6197809 (= e!3774361 e!3774362)))

(declare-fun res!2563749 () Bool)

(assert (=> b!6197809 (= res!2563749 (not ((_ is EmptyLang!16137) lt!2342456)))))

(assert (=> b!6197809 (=> (not res!2563749) (not e!3774362))))

(declare-fun c!1118721 () Bool)

(declare-fun bm!518594 () Bool)

(declare-fun call!518599 () Bool)

(assert (=> bm!518594 (= call!518599 (Exists!3207 (ite c!1118721 lambda!338582 lambda!338585)))))

(declare-fun b!6197810 () Bool)

(assert (=> b!6197810 (= e!3774361 call!518600)))

(declare-fun b!6197811 () Bool)

(declare-fun e!3774359 () Bool)

(assert (=> b!6197811 (= e!3774359 (matchRSpec!3238 (regTwo!32787 lt!2342456) s!2326))))

(declare-fun b!6197812 () Bool)

(declare-fun e!3774360 () Bool)

(assert (=> b!6197812 (= e!3774360 e!3774363)))

(assert (=> b!6197812 (= c!1118721 ((_ is Star!16137) lt!2342456))))

(declare-fun b!6197813 () Bool)

(declare-fun c!1118723 () Bool)

(assert (=> b!6197813 (= c!1118723 ((_ is ElementMatch!16137) lt!2342456))))

(declare-fun e!3774364 () Bool)

(assert (=> b!6197813 (= e!3774362 e!3774364)))

(declare-fun b!6197814 () Bool)

(declare-fun c!1118722 () Bool)

(assert (=> b!6197814 (= c!1118722 ((_ is Union!16137) lt!2342456))))

(assert (=> b!6197814 (= e!3774364 e!3774360)))

(declare-fun b!6197815 () Bool)

(assert (=> b!6197815 (= e!3774360 e!3774359)))

(declare-fun res!2563750 () Bool)

(assert (=> b!6197815 (= res!2563750 (matchRSpec!3238 (regOne!32787 lt!2342456) s!2326))))

(assert (=> b!6197815 (=> res!2563750 e!3774359)))

(assert (=> b!6197816 (= e!3774363 call!518599)))

(assert (=> b!6197817 (= e!3774358 call!518599)))

(declare-fun b!6197818 () Bool)

(assert (=> b!6197818 (= e!3774364 (= s!2326 (Cons!64588 (c!1118450 lt!2342456) Nil!64588)))))

(declare-fun bm!518595 () Bool)

(assert (=> bm!518595 (= call!518600 (isEmpty!36577 s!2326))))

(assert (= (and d!1943018 c!1118720) b!6197810))

(assert (= (and d!1943018 (not c!1118720)) b!6197809))

(assert (= (and b!6197809 res!2563749) b!6197813))

(assert (= (and b!6197813 c!1118723) b!6197818))

(assert (= (and b!6197813 (not c!1118723)) b!6197814))

(assert (= (and b!6197814 c!1118722) b!6197815))

(assert (= (and b!6197814 (not c!1118722)) b!6197812))

(assert (= (and b!6197815 (not res!2563750)) b!6197811))

(assert (= (and b!6197812 c!1118721) b!6197808))

(assert (= (and b!6197812 (not c!1118721)) b!6197816))

(assert (= (and b!6197808 (not res!2563751)) b!6197817))

(assert (= (or b!6197817 b!6197816) bm!518594))

(assert (= (or b!6197810 b!6197808) bm!518595))

(declare-fun m!7031290 () Bool)

(assert (=> bm!518594 m!7031290))

(declare-fun m!7031292 () Bool)

(assert (=> b!6197811 m!7031292))

(declare-fun m!7031294 () Bool)

(assert (=> b!6197815 m!7031294))

(assert (=> bm!518595 m!7030972))

(assert (=> b!6196976 d!1943018))

(declare-fun bs!1537948 () Bool)

(declare-fun d!1943020 () Bool)

(assert (= bs!1537948 (and d!1943020 d!1942860)))

(declare-fun lambda!338587 () Int)

(assert (=> bs!1537948 (= lambda!338587 lambda!338551)))

(declare-fun bs!1537949 () Bool)

(assert (= bs!1537949 (and d!1943020 d!1942882)))

(assert (=> bs!1537949 (= lambda!338587 lambda!338556)))

(declare-fun bs!1537951 () Bool)

(assert (= bs!1537951 (and d!1943020 d!1942950)))

(assert (=> bs!1537951 (= lambda!338587 lambda!338576)))

(declare-fun bs!1537953 () Bool)

(assert (= bs!1537953 (and d!1943020 d!1943000)))

(assert (=> bs!1537953 (= lambda!338587 lambda!338579)))

(declare-fun b!6197823 () Bool)

(declare-fun e!3774369 () Regex!16137)

(assert (=> b!6197823 (= e!3774369 (h!71034 lt!2342458))))

(declare-fun e!3774372 () Bool)

(assert (=> d!1943020 e!3774372))

(declare-fun res!2563757 () Bool)

(assert (=> d!1943020 (=> (not res!2563757) (not e!3774372))))

(declare-fun lt!2342568 () Regex!16137)

(assert (=> d!1943020 (= res!2563757 (validRegex!7873 lt!2342568))))

(assert (=> d!1943020 (= lt!2342568 e!3774369)))

(declare-fun c!1118724 () Bool)

(declare-fun e!3774367 () Bool)

(assert (=> d!1943020 (= c!1118724 e!3774367)))

(declare-fun res!2563756 () Bool)

(assert (=> d!1943020 (=> (not res!2563756) (not e!3774367))))

(assert (=> d!1943020 (= res!2563756 ((_ is Cons!64586) lt!2342458))))

(assert (=> d!1943020 (forall!15251 lt!2342458 lambda!338587)))

(assert (=> d!1943020 (= (generalisedConcat!1734 lt!2342458) lt!2342568)))

(declare-fun b!6197824 () Bool)

(declare-fun e!3774371 () Regex!16137)

(assert (=> b!6197824 (= e!3774369 e!3774371)))

(declare-fun c!1118727 () Bool)

(assert (=> b!6197824 (= c!1118727 ((_ is Cons!64586) lt!2342458))))

(declare-fun b!6197825 () Bool)

(declare-fun e!3774370 () Bool)

(assert (=> b!6197825 (= e!3774370 (isConcat!1070 lt!2342568))))

(declare-fun b!6197826 () Bool)

(assert (=> b!6197826 (= e!3774371 EmptyExpr!16137)))

(declare-fun b!6197827 () Bool)

(declare-fun e!3774368 () Bool)

(assert (=> b!6197827 (= e!3774368 e!3774370)))

(declare-fun c!1118725 () Bool)

(assert (=> b!6197827 (= c!1118725 (isEmpty!36575 (tail!11868 lt!2342458)))))

(declare-fun b!6197828 () Bool)

(assert (=> b!6197828 (= e!3774370 (= lt!2342568 (head!12783 lt!2342458)))))

(declare-fun b!6197829 () Bool)

(assert (=> b!6197829 (= e!3774367 (isEmpty!36575 (t!378224 lt!2342458)))))

(declare-fun b!6197830 () Bool)

(assert (=> b!6197830 (= e!3774368 (isEmptyExpr!1547 lt!2342568))))

(declare-fun b!6197831 () Bool)

(assert (=> b!6197831 (= e!3774372 e!3774368)))

(declare-fun c!1118726 () Bool)

(assert (=> b!6197831 (= c!1118726 (isEmpty!36575 lt!2342458))))

(declare-fun b!6197832 () Bool)

(assert (=> b!6197832 (= e!3774371 (Concat!24982 (h!71034 lt!2342458) (generalisedConcat!1734 (t!378224 lt!2342458))))))

(assert (= (and d!1943020 res!2563756) b!6197829))

(assert (= (and d!1943020 c!1118724) b!6197823))

(assert (= (and d!1943020 (not c!1118724)) b!6197824))

(assert (= (and b!6197824 c!1118727) b!6197832))

(assert (= (and b!6197824 (not c!1118727)) b!6197826))

(assert (= (and d!1943020 res!2563757) b!6197831))

(assert (= (and b!6197831 c!1118726) b!6197830))

(assert (= (and b!6197831 (not c!1118726)) b!6197827))

(assert (= (and b!6197827 c!1118725) b!6197828))

(assert (= (and b!6197827 (not c!1118725)) b!6197825))

(declare-fun m!7031296 () Bool)

(assert (=> b!6197831 m!7031296))

(declare-fun m!7031298 () Bool)

(assert (=> b!6197829 m!7031298))

(declare-fun m!7031300 () Bool)

(assert (=> b!6197827 m!7031300))

(assert (=> b!6197827 m!7031300))

(declare-fun m!7031302 () Bool)

(assert (=> b!6197827 m!7031302))

(declare-fun m!7031304 () Bool)

(assert (=> b!6197825 m!7031304))

(declare-fun m!7031306 () Bool)

(assert (=> b!6197832 m!7031306))

(declare-fun m!7031308 () Bool)

(assert (=> b!6197830 m!7031308))

(declare-fun m!7031310 () Bool)

(assert (=> d!1943020 m!7031310))

(declare-fun m!7031312 () Bool)

(assert (=> d!1943020 m!7031312))

(declare-fun m!7031314 () Bool)

(assert (=> b!6197828 m!7031314))

(assert (=> b!6196976 d!1943020))

(declare-fun d!1943022 () Bool)

(declare-fun c!1118728 () Bool)

(assert (=> d!1943022 (= c!1118728 (isEmpty!36577 (t!378226 s!2326)))))

(declare-fun e!3774373 () Bool)

(assert (=> d!1943022 (= (matchZipper!2149 lt!2342432 (t!378226 s!2326)) e!3774373)))

(declare-fun b!6197833 () Bool)

(assert (=> b!6197833 (= e!3774373 (nullableZipper!1911 lt!2342432))))

(declare-fun b!6197834 () Bool)

(assert (=> b!6197834 (= e!3774373 (matchZipper!2149 (derivationStepZipper!2103 lt!2342432 (head!12782 (t!378226 s!2326))) (tail!11867 (t!378226 s!2326))))))

(assert (= (and d!1943022 c!1118728) b!6197833))

(assert (= (and d!1943022 (not c!1118728)) b!6197834))

(assert (=> d!1943022 m!7030776))

(declare-fun m!7031320 () Bool)

(assert (=> b!6197833 m!7031320))

(assert (=> b!6197834 m!7030780))

(assert (=> b!6197834 m!7030780))

(declare-fun m!7031322 () Bool)

(assert (=> b!6197834 m!7031322))

(assert (=> b!6197834 m!7030784))

(assert (=> b!6197834 m!7031322))

(assert (=> b!6197834 m!7030784))

(declare-fun m!7031324 () Bool)

(assert (=> b!6197834 m!7031324))

(assert (=> b!6196957 d!1943022))

(declare-fun d!1943026 () Bool)

(assert (=> d!1943026 (= (nullable!6130 (regTwo!32787 (regOne!32786 r!7292))) (nullableFct!2085 (regTwo!32787 (regOne!32786 r!7292))))))

(declare-fun bs!1537957 () Bool)

(assert (= bs!1537957 d!1943026))

(declare-fun m!7031326 () Bool)

(assert (=> bs!1537957 m!7031326))

(assert (=> b!6196947 d!1943026))

(declare-fun d!1943028 () Bool)

(assert (=> d!1943028 (= (flatMap!1642 lt!2342441 lambda!338531) (dynLambda!25468 lambda!338531 lt!2342419))))

(declare-fun lt!2342569 () Unit!157875)

(assert (=> d!1943028 (= lt!2342569 (choose!46041 lt!2342441 lt!2342419 lambda!338531))))

(assert (=> d!1943028 (= lt!2342441 (store ((as const (Array Context!11042 Bool)) false) lt!2342419 true))))

(assert (=> d!1943028 (= (lemmaFlatMapOnSingletonSet!1168 lt!2342441 lt!2342419 lambda!338531) lt!2342569)))

(declare-fun b_lambda!235749 () Bool)

(assert (=> (not b_lambda!235749) (not d!1943028)))

(declare-fun bs!1537958 () Bool)

(assert (= bs!1537958 d!1943028))

(assert (=> bs!1537958 m!7030574))

(declare-fun m!7031328 () Bool)

(assert (=> bs!1537958 m!7031328))

(declare-fun m!7031330 () Bool)

(assert (=> bs!1537958 m!7031330))

(assert (=> bs!1537958 m!7030568))

(assert (=> b!6196947 d!1943028))

(declare-fun d!1943030 () Bool)

(declare-fun c!1118729 () Bool)

(assert (=> d!1943030 (= c!1118729 (isEmpty!36577 s!2326))))

(declare-fun e!3774374 () Bool)

(assert (=> d!1943030 (= (matchZipper!2149 z!1189 s!2326) e!3774374)))

(declare-fun b!6197835 () Bool)

(assert (=> b!6197835 (= e!3774374 (nullableZipper!1911 z!1189))))

(declare-fun b!6197836 () Bool)

(assert (=> b!6197836 (= e!3774374 (matchZipper!2149 (derivationStepZipper!2103 z!1189 (head!12782 s!2326)) (tail!11867 s!2326)))))

(assert (= (and d!1943030 c!1118729) b!6197835))

(assert (= (and d!1943030 (not c!1118729)) b!6197836))

(assert (=> d!1943030 m!7030972))

(declare-fun m!7031332 () Bool)

(assert (=> b!6197835 m!7031332))

(assert (=> b!6197836 m!7031062))

(assert (=> b!6197836 m!7031062))

(declare-fun m!7031334 () Bool)

(assert (=> b!6197836 m!7031334))

(assert (=> b!6197836 m!7031056))

(assert (=> b!6197836 m!7031334))

(assert (=> b!6197836 m!7031056))

(declare-fun m!7031336 () Bool)

(assert (=> b!6197836 m!7031336))

(assert (=> b!6196947 d!1943030))

(declare-fun d!1943032 () Bool)

(assert (=> d!1943032 (= (flatMap!1642 lt!2342425 lambda!338531) (choose!46040 lt!2342425 lambda!338531))))

(declare-fun bs!1537959 () Bool)

(assert (= bs!1537959 d!1943032))

(declare-fun m!7031338 () Bool)

(assert (=> bs!1537959 m!7031338))

(assert (=> b!6196947 d!1943032))

(declare-fun d!1943034 () Bool)

(declare-fun c!1118731 () Bool)

(declare-fun e!3774375 () Bool)

(assert (=> d!1943034 (= c!1118731 e!3774375)))

(declare-fun res!2563758 () Bool)

(assert (=> d!1943034 (=> (not res!2563758) (not e!3774375))))

(assert (=> d!1943034 (= res!2563758 ((_ is Cons!64586) (exprs!6021 lt!2342450)))))

(declare-fun e!3774376 () (InoxSet Context!11042))

(assert (=> d!1943034 (= (derivationStepZipperUp!1311 lt!2342450 (h!71036 s!2326)) e!3774376)))

(declare-fun b!6197837 () Bool)

(declare-fun e!3774377 () (InoxSet Context!11042))

(assert (=> b!6197837 (= e!3774376 e!3774377)))

(declare-fun c!1118730 () Bool)

(assert (=> b!6197837 (= c!1118730 ((_ is Cons!64586) (exprs!6021 lt!2342450)))))

(declare-fun b!6197838 () Bool)

(declare-fun call!518601 () (InoxSet Context!11042))

(assert (=> b!6197838 (= e!3774377 call!518601)))

(declare-fun bm!518596 () Bool)

(assert (=> bm!518596 (= call!518601 (derivationStepZipperDown!1385 (h!71034 (exprs!6021 lt!2342450)) (Context!11043 (t!378224 (exprs!6021 lt!2342450))) (h!71036 s!2326)))))

(declare-fun b!6197839 () Bool)

(assert (=> b!6197839 (= e!3774377 ((as const (Array Context!11042 Bool)) false))))

(declare-fun b!6197840 () Bool)

(assert (=> b!6197840 (= e!3774376 ((_ map or) call!518601 (derivationStepZipperUp!1311 (Context!11043 (t!378224 (exprs!6021 lt!2342450))) (h!71036 s!2326))))))

(declare-fun b!6197841 () Bool)

(assert (=> b!6197841 (= e!3774375 (nullable!6130 (h!71034 (exprs!6021 lt!2342450))))))

(assert (= (and d!1943034 res!2563758) b!6197841))

(assert (= (and d!1943034 c!1118731) b!6197840))

(assert (= (and d!1943034 (not c!1118731)) b!6197837))

(assert (= (and b!6197837 c!1118730) b!6197838))

(assert (= (and b!6197837 (not c!1118730)) b!6197839))

(assert (= (or b!6197840 b!6197838) bm!518596))

(declare-fun m!7031340 () Bool)

(assert (=> bm!518596 m!7031340))

(declare-fun m!7031342 () Bool)

(assert (=> b!6197840 m!7031342))

(declare-fun m!7031344 () Bool)

(assert (=> b!6197841 m!7031344))

(assert (=> b!6196947 d!1943034))

(declare-fun d!1943036 () Bool)

(assert (=> d!1943036 (= (flatMap!1642 lt!2342441 lambda!338531) (choose!46040 lt!2342441 lambda!338531))))

(declare-fun bs!1537960 () Bool)

(assert (= bs!1537960 d!1943036))

(declare-fun m!7031346 () Bool)

(assert (=> bs!1537960 m!7031346))

(assert (=> b!6196947 d!1943036))

(declare-fun d!1943038 () Bool)

(declare-fun c!1118732 () Bool)

(assert (=> d!1943038 (= c!1118732 (isEmpty!36577 s!2326))))

(declare-fun e!3774378 () Bool)

(assert (=> d!1943038 (= (matchZipper!2149 lt!2342441 s!2326) e!3774378)))

(declare-fun b!6197842 () Bool)

(assert (=> b!6197842 (= e!3774378 (nullableZipper!1911 lt!2342441))))

(declare-fun b!6197843 () Bool)

(assert (=> b!6197843 (= e!3774378 (matchZipper!2149 (derivationStepZipper!2103 lt!2342441 (head!12782 s!2326)) (tail!11867 s!2326)))))

(assert (= (and d!1943038 c!1118732) b!6197842))

(assert (= (and d!1943038 (not c!1118732)) b!6197843))

(assert (=> d!1943038 m!7030972))

(declare-fun m!7031348 () Bool)

(assert (=> b!6197842 m!7031348))

(assert (=> b!6197843 m!7031062))

(assert (=> b!6197843 m!7031062))

(declare-fun m!7031350 () Bool)

(assert (=> b!6197843 m!7031350))

(assert (=> b!6197843 m!7031056))

(assert (=> b!6197843 m!7031350))

(assert (=> b!6197843 m!7031056))

(declare-fun m!7031352 () Bool)

(assert (=> b!6197843 m!7031352))

(assert (=> b!6196947 d!1943038))

(declare-fun d!1943040 () Bool)

(declare-fun c!1118734 () Bool)

(declare-fun e!3774379 () Bool)

(assert (=> d!1943040 (= c!1118734 e!3774379)))

(declare-fun res!2563759 () Bool)

(assert (=> d!1943040 (=> (not res!2563759) (not e!3774379))))

(assert (=> d!1943040 (= res!2563759 ((_ is Cons!64586) (exprs!6021 lt!2342419)))))

(declare-fun e!3774380 () (InoxSet Context!11042))

(assert (=> d!1943040 (= (derivationStepZipperUp!1311 lt!2342419 (h!71036 s!2326)) e!3774380)))

(declare-fun b!6197844 () Bool)

(declare-fun e!3774381 () (InoxSet Context!11042))

(assert (=> b!6197844 (= e!3774380 e!3774381)))

(declare-fun c!1118733 () Bool)

(assert (=> b!6197844 (= c!1118733 ((_ is Cons!64586) (exprs!6021 lt!2342419)))))

(declare-fun b!6197845 () Bool)

(declare-fun call!518602 () (InoxSet Context!11042))

(assert (=> b!6197845 (= e!3774381 call!518602)))

(declare-fun bm!518597 () Bool)

(assert (=> bm!518597 (= call!518602 (derivationStepZipperDown!1385 (h!71034 (exprs!6021 lt!2342419)) (Context!11043 (t!378224 (exprs!6021 lt!2342419))) (h!71036 s!2326)))))

(declare-fun b!6197846 () Bool)

(assert (=> b!6197846 (= e!3774381 ((as const (Array Context!11042 Bool)) false))))

(declare-fun b!6197847 () Bool)

(assert (=> b!6197847 (= e!3774380 ((_ map or) call!518602 (derivationStepZipperUp!1311 (Context!11043 (t!378224 (exprs!6021 lt!2342419))) (h!71036 s!2326))))))

(declare-fun b!6197848 () Bool)

(assert (=> b!6197848 (= e!3774379 (nullable!6130 (h!71034 (exprs!6021 lt!2342419))))))

(assert (= (and d!1943040 res!2563759) b!6197848))

(assert (= (and d!1943040 c!1118734) b!6197847))

(assert (= (and d!1943040 (not c!1118734)) b!6197844))

(assert (= (and b!6197844 c!1118733) b!6197845))

(assert (= (and b!6197844 (not c!1118733)) b!6197846))

(assert (= (or b!6197847 b!6197845) bm!518597))

(declare-fun m!7031354 () Bool)

(assert (=> bm!518597 m!7031354))

(declare-fun m!7031356 () Bool)

(assert (=> b!6197847 m!7031356))

(declare-fun m!7031358 () Bool)

(assert (=> b!6197848 m!7031358))

(assert (=> b!6196947 d!1943040))

(declare-fun d!1943042 () Bool)

(assert (=> d!1943042 (= (nullable!6130 (regOne!32787 (regOne!32786 r!7292))) (nullableFct!2085 (regOne!32787 (regOne!32786 r!7292))))))

(declare-fun bs!1537961 () Bool)

(assert (= bs!1537961 d!1943042))

(declare-fun m!7031360 () Bool)

(assert (=> bs!1537961 m!7031360))

(assert (=> b!6196947 d!1943042))

(declare-fun d!1943044 () Bool)

(assert (=> d!1943044 (= (flatMap!1642 lt!2342425 lambda!338531) (dynLambda!25468 lambda!338531 lt!2342450))))

(declare-fun lt!2342570 () Unit!157875)

(assert (=> d!1943044 (= lt!2342570 (choose!46041 lt!2342425 lt!2342450 lambda!338531))))

(assert (=> d!1943044 (= lt!2342425 (store ((as const (Array Context!11042 Bool)) false) lt!2342450 true))))

(assert (=> d!1943044 (= (lemmaFlatMapOnSingletonSet!1168 lt!2342425 lt!2342450 lambda!338531) lt!2342570)))

(declare-fun b_lambda!235751 () Bool)

(assert (=> (not b_lambda!235751) (not d!1943044)))

(declare-fun bs!1537962 () Bool)

(assert (= bs!1537962 d!1943044))

(assert (=> bs!1537962 m!7030582))

(declare-fun m!7031362 () Bool)

(assert (=> bs!1537962 m!7031362))

(declare-fun m!7031364 () Bool)

(assert (=> bs!1537962 m!7031364))

(assert (=> bs!1537962 m!7030580))

(assert (=> b!6196947 d!1943044))

(declare-fun e!3774382 () Bool)

(declare-fun d!1943046 () Bool)

(assert (=> d!1943046 (= (matchZipper!2149 ((_ map or) lt!2342407 lt!2342443) (t!378226 s!2326)) e!3774382)))

(declare-fun res!2563760 () Bool)

(assert (=> d!1943046 (=> res!2563760 e!3774382)))

(assert (=> d!1943046 (= res!2563760 (matchZipper!2149 lt!2342407 (t!378226 s!2326)))))

(declare-fun lt!2342571 () Unit!157875)

(assert (=> d!1943046 (= lt!2342571 (choose!46043 lt!2342407 lt!2342443 (t!378226 s!2326)))))

(assert (=> d!1943046 (= (lemmaZipperConcatMatchesSameAsBothZippers!968 lt!2342407 lt!2342443 (t!378226 s!2326)) lt!2342571)))

(declare-fun b!6197849 () Bool)

(assert (=> b!6197849 (= e!3774382 (matchZipper!2149 lt!2342443 (t!378226 s!2326)))))

(assert (= (and d!1943046 (not res!2563760)) b!6197849))

(assert (=> d!1943046 m!7030594))

(assert (=> d!1943046 m!7030654))

(declare-fun m!7031366 () Bool)

(assert (=> d!1943046 m!7031366))

(assert (=> b!6197849 m!7030584))

(assert (=> b!6196967 d!1943046))

(declare-fun d!1943048 () Bool)

(declare-fun c!1118735 () Bool)

(assert (=> d!1943048 (= c!1118735 (isEmpty!36577 (t!378226 s!2326)))))

(declare-fun e!3774383 () Bool)

(assert (=> d!1943048 (= (matchZipper!2149 ((_ map or) lt!2342407 lt!2342443) (t!378226 s!2326)) e!3774383)))

(declare-fun b!6197850 () Bool)

(assert (=> b!6197850 (= e!3774383 (nullableZipper!1911 ((_ map or) lt!2342407 lt!2342443)))))

(declare-fun b!6197851 () Bool)

(assert (=> b!6197851 (= e!3774383 (matchZipper!2149 (derivationStepZipper!2103 ((_ map or) lt!2342407 lt!2342443) (head!12782 (t!378226 s!2326))) (tail!11867 (t!378226 s!2326))))))

(assert (= (and d!1943048 c!1118735) b!6197850))

(assert (= (and d!1943048 (not c!1118735)) b!6197851))

(assert (=> d!1943048 m!7030776))

(declare-fun m!7031368 () Bool)

(assert (=> b!6197850 m!7031368))

(assert (=> b!6197851 m!7030780))

(assert (=> b!6197851 m!7030780))

(declare-fun m!7031370 () Bool)

(assert (=> b!6197851 m!7031370))

(assert (=> b!6197851 m!7030784))

(assert (=> b!6197851 m!7031370))

(assert (=> b!6197851 m!7030784))

(declare-fun m!7031372 () Bool)

(assert (=> b!6197851 m!7031372))

(assert (=> b!6196967 d!1943048))

(declare-fun d!1943050 () Bool)

(declare-fun lt!2342572 () Int)

(assert (=> d!1943050 (>= lt!2342572 0)))

(declare-fun e!3774384 () Int)

(assert (=> d!1943050 (= lt!2342572 e!3774384)))

(declare-fun c!1118736 () Bool)

(assert (=> d!1943050 (= c!1118736 ((_ is Cons!64587) zl!343))))

(assert (=> d!1943050 (= (zipperDepthTotal!320 zl!343) lt!2342572)))

(declare-fun b!6197852 () Bool)

(assert (=> b!6197852 (= e!3774384 (+ (contextDepthTotal!287 (h!71035 zl!343)) (zipperDepthTotal!320 (t!378225 zl!343))))))

(declare-fun b!6197853 () Bool)

(assert (=> b!6197853 (= e!3774384 0)))

(assert (= (and d!1943050 c!1118736) b!6197852))

(assert (= (and d!1943050 (not c!1118736)) b!6197853))

(declare-fun m!7031374 () Bool)

(assert (=> b!6197852 m!7031374))

(declare-fun m!7031376 () Bool)

(assert (=> b!6197852 m!7031376))

(assert (=> b!6196968 d!1943050))

(declare-fun d!1943052 () Bool)

(declare-fun lt!2342573 () Int)

(assert (=> d!1943052 (>= lt!2342573 0)))

(declare-fun e!3774385 () Int)

(assert (=> d!1943052 (= lt!2342573 e!3774385)))

(declare-fun c!1118737 () Bool)

(assert (=> d!1943052 (= c!1118737 ((_ is Cons!64587) lt!2342413))))

(assert (=> d!1943052 (= (zipperDepthTotal!320 lt!2342413) lt!2342573)))

(declare-fun b!6197854 () Bool)

(assert (=> b!6197854 (= e!3774385 (+ (contextDepthTotal!287 (h!71035 lt!2342413)) (zipperDepthTotal!320 (t!378225 lt!2342413))))))

(declare-fun b!6197855 () Bool)

(assert (=> b!6197855 (= e!3774385 0)))

(assert (= (and d!1943052 c!1118737) b!6197854))

(assert (= (and d!1943052 (not c!1118737)) b!6197855))

(declare-fun m!7031378 () Bool)

(assert (=> b!6197854 m!7031378))

(declare-fun m!7031380 () Bool)

(assert (=> b!6197854 m!7031380))

(assert (=> b!6196968 d!1943052))

(assert (=> b!6196949 d!1942856))

(declare-fun d!1943054 () Bool)

(declare-fun c!1118738 () Bool)

(assert (=> d!1943054 (= c!1118738 (isEmpty!36577 (t!378226 s!2326)))))

(declare-fun e!3774386 () Bool)

(assert (=> d!1943054 (= (matchZipper!2149 lt!2342412 (t!378226 s!2326)) e!3774386)))

(declare-fun b!6197856 () Bool)

(assert (=> b!6197856 (= e!3774386 (nullableZipper!1911 lt!2342412))))

(declare-fun b!6197857 () Bool)

(assert (=> b!6197857 (= e!3774386 (matchZipper!2149 (derivationStepZipper!2103 lt!2342412 (head!12782 (t!378226 s!2326))) (tail!11867 (t!378226 s!2326))))))

(assert (= (and d!1943054 c!1118738) b!6197856))

(assert (= (and d!1943054 (not c!1118738)) b!6197857))

(assert (=> d!1943054 m!7030776))

(declare-fun m!7031382 () Bool)

(assert (=> b!6197856 m!7031382))

(assert (=> b!6197857 m!7030780))

(assert (=> b!6197857 m!7030780))

(declare-fun m!7031384 () Bool)

(assert (=> b!6197857 m!7031384))

(assert (=> b!6197857 m!7030784))

(assert (=> b!6197857 m!7031384))

(assert (=> b!6197857 m!7030784))

(declare-fun m!7031386 () Bool)

(assert (=> b!6197857 m!7031386))

(assert (=> b!6196949 d!1943054))

(declare-fun d!1943056 () Bool)

(declare-fun c!1118739 () Bool)

(assert (=> d!1943056 (= c!1118739 (isEmpty!36577 (t!378226 s!2326)))))

(declare-fun e!3774387 () Bool)

(assert (=> d!1943056 (= (matchZipper!2149 lt!2342407 (t!378226 s!2326)) e!3774387)))

(declare-fun b!6197858 () Bool)

(assert (=> b!6197858 (= e!3774387 (nullableZipper!1911 lt!2342407))))

(declare-fun b!6197859 () Bool)

(assert (=> b!6197859 (= e!3774387 (matchZipper!2149 (derivationStepZipper!2103 lt!2342407 (head!12782 (t!378226 s!2326))) (tail!11867 (t!378226 s!2326))))))

(assert (= (and d!1943056 c!1118739) b!6197858))

(assert (= (and d!1943056 (not c!1118739)) b!6197859))

(assert (=> d!1943056 m!7030776))

(declare-fun m!7031388 () Bool)

(assert (=> b!6197858 m!7031388))

(assert (=> b!6197859 m!7030780))

(assert (=> b!6197859 m!7030780))

(declare-fun m!7031390 () Bool)

(assert (=> b!6197859 m!7031390))

(assert (=> b!6197859 m!7030784))

(assert (=> b!6197859 m!7031390))

(assert (=> b!6197859 m!7030784))

(declare-fun m!7031392 () Bool)

(assert (=> b!6197859 m!7031392))

(assert (=> b!6196949 d!1943056))

(declare-fun e!3774388 () Bool)

(declare-fun d!1943058 () Bool)

(assert (=> d!1943058 (= (matchZipper!2149 ((_ map or) lt!2342407 lt!2342432) (t!378226 s!2326)) e!3774388)))

(declare-fun res!2563761 () Bool)

(assert (=> d!1943058 (=> res!2563761 e!3774388)))

(assert (=> d!1943058 (= res!2563761 (matchZipper!2149 lt!2342407 (t!378226 s!2326)))))

(declare-fun lt!2342574 () Unit!157875)

(assert (=> d!1943058 (= lt!2342574 (choose!46043 lt!2342407 lt!2342432 (t!378226 s!2326)))))

(assert (=> d!1943058 (= (lemmaZipperConcatMatchesSameAsBothZippers!968 lt!2342407 lt!2342432 (t!378226 s!2326)) lt!2342574)))

(declare-fun b!6197860 () Bool)

(assert (=> b!6197860 (= e!3774388 (matchZipper!2149 lt!2342432 (t!378226 s!2326)))))

(assert (= (and d!1943058 (not res!2563761)) b!6197860))

(declare-fun m!7031394 () Bool)

(assert (=> d!1943058 m!7031394))

(assert (=> d!1943058 m!7030654))

(declare-fun m!7031396 () Bool)

(assert (=> d!1943058 m!7031396))

(assert (=> b!6197860 m!7030510))

(assert (=> b!6196949 d!1943058))

(declare-fun bs!1537963 () Bool)

(declare-fun d!1943060 () Bool)

(assert (= bs!1537963 (and d!1943060 d!1943000)))

(declare-fun lambda!338592 () Int)

(assert (=> bs!1537963 (= lambda!338592 lambda!338579)))

(declare-fun bs!1537964 () Bool)

(assert (= bs!1537964 (and d!1943060 d!1942882)))

(assert (=> bs!1537964 (= lambda!338592 lambda!338556)))

(declare-fun bs!1537965 () Bool)

(assert (= bs!1537965 (and d!1943060 d!1942950)))

(assert (=> bs!1537965 (= lambda!338592 lambda!338576)))

(declare-fun bs!1537966 () Bool)

(assert (= bs!1537966 (and d!1943060 d!1943020)))

(assert (=> bs!1537966 (= lambda!338592 lambda!338587)))

(declare-fun bs!1537967 () Bool)

(assert (= bs!1537967 (and d!1943060 d!1942860)))

(assert (=> bs!1537967 (= lambda!338592 lambda!338551)))

(assert (=> d!1943060 (= (inv!83589 (h!71035 zl!343)) (forall!15251 (exprs!6021 (h!71035 zl!343)) lambda!338592))))

(declare-fun bs!1537968 () Bool)

(assert (= bs!1537968 d!1943060))

(declare-fun m!7031398 () Bool)

(assert (=> bs!1537968 m!7031398))

(assert (=> b!6196969 d!1943060))

(declare-fun d!1943062 () Bool)

(declare-fun e!3774391 () Bool)

(assert (=> d!1943062 (= (matchZipper!2149 ((_ map or) lt!2342432 lt!2342443) (t!378226 s!2326)) e!3774391)))

(declare-fun res!2563766 () Bool)

(assert (=> d!1943062 (=> res!2563766 e!3774391)))

(assert (=> d!1943062 (= res!2563766 (matchZipper!2149 lt!2342432 (t!378226 s!2326)))))

(declare-fun lt!2342577 () Unit!157875)

(assert (=> d!1943062 (= lt!2342577 (choose!46043 lt!2342432 lt!2342443 (t!378226 s!2326)))))

(assert (=> d!1943062 (= (lemmaZipperConcatMatchesSameAsBothZippers!968 lt!2342432 lt!2342443 (t!378226 s!2326)) lt!2342577)))

(declare-fun b!6197865 () Bool)

(assert (=> b!6197865 (= e!3774391 (matchZipper!2149 lt!2342443 (t!378226 s!2326)))))

(assert (= (and d!1943062 (not res!2563766)) b!6197865))

(assert (=> d!1943062 m!7030534))

(assert (=> d!1943062 m!7030510))

(declare-fun m!7031400 () Bool)

(assert (=> d!1943062 m!7031400))

(assert (=> b!6197865 m!7030584))

(assert (=> b!6196950 d!1943062))

(assert (=> b!6196950 d!1943022))

(declare-fun d!1943064 () Bool)

(declare-fun c!1118740 () Bool)

(assert (=> d!1943064 (= c!1118740 (isEmpty!36577 (t!378226 s!2326)))))

(declare-fun e!3774392 () Bool)

(assert (=> d!1943064 (= (matchZipper!2149 ((_ map or) lt!2342432 lt!2342443) (t!378226 s!2326)) e!3774392)))

(declare-fun b!6197866 () Bool)

(assert (=> b!6197866 (= e!3774392 (nullableZipper!1911 ((_ map or) lt!2342432 lt!2342443)))))

(declare-fun b!6197867 () Bool)

(assert (=> b!6197867 (= e!3774392 (matchZipper!2149 (derivationStepZipper!2103 ((_ map or) lt!2342432 lt!2342443) (head!12782 (t!378226 s!2326))) (tail!11867 (t!378226 s!2326))))))

(assert (= (and d!1943064 c!1118740) b!6197866))

(assert (= (and d!1943064 (not c!1118740)) b!6197867))

(assert (=> d!1943064 m!7030776))

(declare-fun m!7031402 () Bool)

(assert (=> b!6197866 m!7031402))

(assert (=> b!6197867 m!7030780))

(assert (=> b!6197867 m!7030780))

(declare-fun m!7031404 () Bool)

(assert (=> b!6197867 m!7031404))

(assert (=> b!6197867 m!7030784))

(assert (=> b!6197867 m!7031404))

(assert (=> b!6197867 m!7030784))

(declare-fun m!7031406 () Bool)

(assert (=> b!6197867 m!7031406))

(assert (=> b!6196950 d!1943064))

(assert (=> b!6196970 d!1942842))

(declare-fun d!1943066 () Bool)

(assert (=> d!1943066 (= (isEmpty!36574 (t!378225 zl!343)) ((_ is Nil!64587) (t!378225 zl!343)))))

(assert (=> b!6196962 d!1943066))

(declare-fun b!6197868 () Bool)

(declare-fun e!3774396 () (InoxSet Context!11042))

(declare-fun call!518603 () (InoxSet Context!11042))

(declare-fun call!518607 () (InoxSet Context!11042))

(assert (=> b!6197868 (= e!3774396 ((_ map or) call!518603 call!518607))))

(declare-fun b!6197869 () Bool)

(declare-fun e!3774398 () (InoxSet Context!11042))

(declare-fun e!3774393 () (InoxSet Context!11042))

(assert (=> b!6197869 (= e!3774398 e!3774393)))

(declare-fun c!1118745 () Bool)

(assert (=> b!6197869 (= c!1118745 ((_ is Union!16137) (regTwo!32787 (regOne!32786 r!7292))))))

(declare-fun bm!518598 () Bool)

(declare-fun call!518608 () List!64710)

(declare-fun call!518606 () List!64710)

(assert (=> bm!518598 (= call!518608 call!518606)))

(declare-fun b!6197870 () Bool)

(declare-fun e!3774394 () (InoxSet Context!11042))

(assert (=> b!6197870 (= e!3774394 ((as const (Array Context!11042 Bool)) false))))

(declare-fun b!6197871 () Bool)

(declare-fun call!518605 () (InoxSet Context!11042))

(assert (=> b!6197871 (= e!3774394 call!518605)))

(declare-fun bm!518599 () Bool)

(declare-fun c!1118742 () Bool)

(declare-fun c!1118741 () Bool)

(assert (=> bm!518599 (= call!518606 ($colon$colon!2005 (exprs!6021 lt!2342428) (ite (or c!1118742 c!1118741) (regTwo!32786 (regTwo!32787 (regOne!32786 r!7292))) (regTwo!32787 (regOne!32786 r!7292)))))))

(declare-fun b!6197872 () Bool)

(declare-fun e!3774397 () Bool)

(assert (=> b!6197872 (= e!3774397 (nullable!6130 (regOne!32786 (regTwo!32787 (regOne!32786 r!7292)))))))

(declare-fun bm!518600 () Bool)

(assert (=> bm!518600 (= call!518603 (derivationStepZipperDown!1385 (ite c!1118745 (regOne!32787 (regTwo!32787 (regOne!32786 r!7292))) (regOne!32786 (regTwo!32787 (regOne!32786 r!7292)))) (ite c!1118745 lt!2342428 (Context!11043 call!518606)) (h!71036 s!2326)))))

(declare-fun b!6197873 () Bool)

(declare-fun c!1118744 () Bool)

(assert (=> b!6197873 (= c!1118744 ((_ is Star!16137) (regTwo!32787 (regOne!32786 r!7292))))))

(declare-fun e!3774395 () (InoxSet Context!11042))

(assert (=> b!6197873 (= e!3774395 e!3774394)))

(declare-fun b!6197875 () Bool)

(declare-fun call!518604 () (InoxSet Context!11042))

(assert (=> b!6197875 (= e!3774393 ((_ map or) call!518603 call!518604))))

(declare-fun b!6197876 () Bool)

(assert (=> b!6197876 (= c!1118742 e!3774397)))

(declare-fun res!2563767 () Bool)

(assert (=> b!6197876 (=> (not res!2563767) (not e!3774397))))

(assert (=> b!6197876 (= res!2563767 ((_ is Concat!24982) (regTwo!32787 (regOne!32786 r!7292))))))

(assert (=> b!6197876 (= e!3774393 e!3774396)))

(declare-fun b!6197877 () Bool)

(assert (=> b!6197877 (= e!3774396 e!3774395)))

(assert (=> b!6197877 (= c!1118741 ((_ is Concat!24982) (regTwo!32787 (regOne!32786 r!7292))))))

(declare-fun b!6197878 () Bool)

(assert (=> b!6197878 (= e!3774398 (store ((as const (Array Context!11042 Bool)) false) lt!2342428 true))))

(declare-fun bm!518601 () Bool)

(assert (=> bm!518601 (= call!518607 call!518604)))

(declare-fun bm!518602 () Bool)

(assert (=> bm!518602 (= call!518605 call!518607)))

(declare-fun bm!518603 () Bool)

(assert (=> bm!518603 (= call!518604 (derivationStepZipperDown!1385 (ite c!1118745 (regTwo!32787 (regTwo!32787 (regOne!32786 r!7292))) (ite c!1118742 (regTwo!32786 (regTwo!32787 (regOne!32786 r!7292))) (ite c!1118741 (regOne!32786 (regTwo!32787 (regOne!32786 r!7292))) (reg!16466 (regTwo!32787 (regOne!32786 r!7292)))))) (ite (or c!1118745 c!1118742) lt!2342428 (Context!11043 call!518608)) (h!71036 s!2326)))))

(declare-fun d!1943068 () Bool)

(declare-fun c!1118743 () Bool)

(assert (=> d!1943068 (= c!1118743 (and ((_ is ElementMatch!16137) (regTwo!32787 (regOne!32786 r!7292))) (= (c!1118450 (regTwo!32787 (regOne!32786 r!7292))) (h!71036 s!2326))))))

(assert (=> d!1943068 (= (derivationStepZipperDown!1385 (regTwo!32787 (regOne!32786 r!7292)) lt!2342428 (h!71036 s!2326)) e!3774398)))

(declare-fun b!6197874 () Bool)

(assert (=> b!6197874 (= e!3774395 call!518605)))

(assert (= (and d!1943068 c!1118743) b!6197878))

(assert (= (and d!1943068 (not c!1118743)) b!6197869))

(assert (= (and b!6197869 c!1118745) b!6197875))

(assert (= (and b!6197869 (not c!1118745)) b!6197876))

(assert (= (and b!6197876 res!2563767) b!6197872))

(assert (= (and b!6197876 c!1118742) b!6197868))

(assert (= (and b!6197876 (not c!1118742)) b!6197877))

(assert (= (and b!6197877 c!1118741) b!6197874))

(assert (= (and b!6197877 (not c!1118741)) b!6197873))

(assert (= (and b!6197873 c!1118744) b!6197871))

(assert (= (and b!6197873 (not c!1118744)) b!6197870))

(assert (= (or b!6197874 b!6197871) bm!518598))

(assert (= (or b!6197874 b!6197871) bm!518602))

(assert (= (or b!6197868 bm!518598) bm!518599))

(assert (= (or b!6197868 bm!518602) bm!518601))

(assert (= (or b!6197875 bm!518601) bm!518603))

(assert (= (or b!6197875 b!6197868) bm!518600))

(declare-fun m!7031408 () Bool)

(assert (=> bm!518599 m!7031408))

(declare-fun m!7031410 () Bool)

(assert (=> bm!518603 m!7031410))

(assert (=> b!6197878 m!7030682))

(declare-fun m!7031412 () Bool)

(assert (=> b!6197872 m!7031412))

(declare-fun m!7031414 () Bool)

(assert (=> bm!518600 m!7031414))

(assert (=> b!6196963 d!1943068))

(declare-fun b!6197883 () Bool)

(declare-fun e!3774404 () (InoxSet Context!11042))

(declare-fun call!518609 () (InoxSet Context!11042))

(declare-fun call!518613 () (InoxSet Context!11042))

(assert (=> b!6197883 (= e!3774404 ((_ map or) call!518609 call!518613))))

(declare-fun b!6197884 () Bool)

(declare-fun e!3774406 () (InoxSet Context!11042))

(declare-fun e!3774401 () (InoxSet Context!11042))

(assert (=> b!6197884 (= e!3774406 e!3774401)))

(declare-fun c!1118750 () Bool)

(assert (=> b!6197884 (= c!1118750 ((_ is Union!16137) (regOne!32787 (regOne!32786 r!7292))))))

(declare-fun bm!518604 () Bool)

(declare-fun call!518614 () List!64710)

(declare-fun call!518612 () List!64710)

(assert (=> bm!518604 (= call!518614 call!518612)))

(declare-fun b!6197885 () Bool)

(declare-fun e!3774402 () (InoxSet Context!11042))

(assert (=> b!6197885 (= e!3774402 ((as const (Array Context!11042 Bool)) false))))

(declare-fun b!6197886 () Bool)

(declare-fun call!518611 () (InoxSet Context!11042))

(assert (=> b!6197886 (= e!3774402 call!518611)))

(declare-fun c!1118747 () Bool)

(declare-fun c!1118746 () Bool)

(declare-fun bm!518605 () Bool)

(assert (=> bm!518605 (= call!518612 ($colon$colon!2005 (exprs!6021 lt!2342428) (ite (or c!1118747 c!1118746) (regTwo!32786 (regOne!32787 (regOne!32786 r!7292))) (regOne!32787 (regOne!32786 r!7292)))))))

(declare-fun b!6197887 () Bool)

(declare-fun e!3774405 () Bool)

(assert (=> b!6197887 (= e!3774405 (nullable!6130 (regOne!32786 (regOne!32787 (regOne!32786 r!7292)))))))

(declare-fun bm!518606 () Bool)

(assert (=> bm!518606 (= call!518609 (derivationStepZipperDown!1385 (ite c!1118750 (regOne!32787 (regOne!32787 (regOne!32786 r!7292))) (regOne!32786 (regOne!32787 (regOne!32786 r!7292)))) (ite c!1118750 lt!2342428 (Context!11043 call!518612)) (h!71036 s!2326)))))

(declare-fun b!6197888 () Bool)

(declare-fun c!1118749 () Bool)

(assert (=> b!6197888 (= c!1118749 ((_ is Star!16137) (regOne!32787 (regOne!32786 r!7292))))))

(declare-fun e!3774403 () (InoxSet Context!11042))

(assert (=> b!6197888 (= e!3774403 e!3774402)))

(declare-fun b!6197890 () Bool)

(declare-fun call!518610 () (InoxSet Context!11042))

(assert (=> b!6197890 (= e!3774401 ((_ map or) call!518609 call!518610))))

(declare-fun b!6197891 () Bool)

(assert (=> b!6197891 (= c!1118747 e!3774405)))

(declare-fun res!2563772 () Bool)

(assert (=> b!6197891 (=> (not res!2563772) (not e!3774405))))

(assert (=> b!6197891 (= res!2563772 ((_ is Concat!24982) (regOne!32787 (regOne!32786 r!7292))))))

(assert (=> b!6197891 (= e!3774401 e!3774404)))

(declare-fun b!6197892 () Bool)

(assert (=> b!6197892 (= e!3774404 e!3774403)))

(assert (=> b!6197892 (= c!1118746 ((_ is Concat!24982) (regOne!32787 (regOne!32786 r!7292))))))

(declare-fun b!6197893 () Bool)

(assert (=> b!6197893 (= e!3774406 (store ((as const (Array Context!11042 Bool)) false) lt!2342428 true))))

(declare-fun bm!518607 () Bool)

(assert (=> bm!518607 (= call!518613 call!518610)))

(declare-fun bm!518608 () Bool)

(assert (=> bm!518608 (= call!518611 call!518613)))

(declare-fun bm!518609 () Bool)

(assert (=> bm!518609 (= call!518610 (derivationStepZipperDown!1385 (ite c!1118750 (regTwo!32787 (regOne!32787 (regOne!32786 r!7292))) (ite c!1118747 (regTwo!32786 (regOne!32787 (regOne!32786 r!7292))) (ite c!1118746 (regOne!32786 (regOne!32787 (regOne!32786 r!7292))) (reg!16466 (regOne!32787 (regOne!32786 r!7292)))))) (ite (or c!1118750 c!1118747) lt!2342428 (Context!11043 call!518614)) (h!71036 s!2326)))))

(declare-fun d!1943070 () Bool)

(declare-fun c!1118748 () Bool)

(assert (=> d!1943070 (= c!1118748 (and ((_ is ElementMatch!16137) (regOne!32787 (regOne!32786 r!7292))) (= (c!1118450 (regOne!32787 (regOne!32786 r!7292))) (h!71036 s!2326))))))

(assert (=> d!1943070 (= (derivationStepZipperDown!1385 (regOne!32787 (regOne!32786 r!7292)) lt!2342428 (h!71036 s!2326)) e!3774406)))

(declare-fun b!6197889 () Bool)

(assert (=> b!6197889 (= e!3774403 call!518611)))

(assert (= (and d!1943070 c!1118748) b!6197893))

(assert (= (and d!1943070 (not c!1118748)) b!6197884))

(assert (= (and b!6197884 c!1118750) b!6197890))

(assert (= (and b!6197884 (not c!1118750)) b!6197891))

(assert (= (and b!6197891 res!2563772) b!6197887))

(assert (= (and b!6197891 c!1118747) b!6197883))

(assert (= (and b!6197891 (not c!1118747)) b!6197892))

(assert (= (and b!6197892 c!1118746) b!6197889))

(assert (= (and b!6197892 (not c!1118746)) b!6197888))

(assert (= (and b!6197888 c!1118749) b!6197886))

(assert (= (and b!6197888 (not c!1118749)) b!6197885))

(assert (= (or b!6197889 b!6197886) bm!518604))

(assert (= (or b!6197889 b!6197886) bm!518608))

(assert (= (or b!6197883 bm!518604) bm!518605))

(assert (= (or b!6197883 bm!518608) bm!518607))

(assert (= (or b!6197890 bm!518607) bm!518609))

(assert (= (or b!6197890 b!6197883) bm!518606))

(declare-fun m!7031416 () Bool)

(assert (=> bm!518605 m!7031416))

(declare-fun m!7031418 () Bool)

(assert (=> bm!518609 m!7031418))

(assert (=> b!6197893 m!7030682))

(declare-fun m!7031420 () Bool)

(assert (=> b!6197887 m!7031420))

(declare-fun m!7031422 () Bool)

(assert (=> bm!518606 m!7031422))

(assert (=> b!6196963 d!1943070))

(declare-fun bs!1537969 () Bool)

(declare-fun d!1943072 () Bool)

(assert (= bs!1537969 (and d!1943072 d!1943000)))

(declare-fun lambda!338595 () Int)

(assert (=> bs!1537969 (= lambda!338595 lambda!338579)))

(declare-fun bs!1537970 () Bool)

(assert (= bs!1537970 (and d!1943072 d!1942882)))

(assert (=> bs!1537970 (= lambda!338595 lambda!338556)))

(declare-fun bs!1537971 () Bool)

(assert (= bs!1537971 (and d!1943072 d!1942950)))

(assert (=> bs!1537971 (= lambda!338595 lambda!338576)))

(declare-fun bs!1537972 () Bool)

(assert (= bs!1537972 (and d!1943072 d!1943060)))

(assert (=> bs!1537972 (= lambda!338595 lambda!338592)))

(declare-fun bs!1537973 () Bool)

(assert (= bs!1537973 (and d!1943072 d!1943020)))

(assert (=> bs!1537973 (= lambda!338595 lambda!338587)))

(declare-fun bs!1537974 () Bool)

(assert (= bs!1537974 (and d!1943072 d!1942860)))

(assert (=> bs!1537974 (= lambda!338595 lambda!338551)))

(declare-fun b!6197894 () Bool)

(declare-fun e!3774409 () Regex!16137)

(assert (=> b!6197894 (= e!3774409 (h!71034 (t!378224 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun e!3774412 () Bool)

(assert (=> d!1943072 e!3774412))

(declare-fun res!2563774 () Bool)

(assert (=> d!1943072 (=> (not res!2563774) (not e!3774412))))

(declare-fun lt!2342579 () Regex!16137)

(assert (=> d!1943072 (= res!2563774 (validRegex!7873 lt!2342579))))

(assert (=> d!1943072 (= lt!2342579 e!3774409)))

(declare-fun c!1118751 () Bool)

(declare-fun e!3774407 () Bool)

(assert (=> d!1943072 (= c!1118751 e!3774407)))

(declare-fun res!2563773 () Bool)

(assert (=> d!1943072 (=> (not res!2563773) (not e!3774407))))

(assert (=> d!1943072 (= res!2563773 ((_ is Cons!64586) (t!378224 (exprs!6021 (h!71035 zl!343)))))))

(assert (=> d!1943072 (forall!15251 (t!378224 (exprs!6021 (h!71035 zl!343))) lambda!338595)))

(assert (=> d!1943072 (= (generalisedConcat!1734 (t!378224 (exprs!6021 (h!71035 zl!343)))) lt!2342579)))

(declare-fun b!6197895 () Bool)

(declare-fun e!3774411 () Regex!16137)

(assert (=> b!6197895 (= e!3774409 e!3774411)))

(declare-fun c!1118754 () Bool)

(assert (=> b!6197895 (= c!1118754 ((_ is Cons!64586) (t!378224 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun b!6197896 () Bool)

(declare-fun e!3774410 () Bool)

(assert (=> b!6197896 (= e!3774410 (isConcat!1070 lt!2342579))))

(declare-fun b!6197897 () Bool)

(assert (=> b!6197897 (= e!3774411 EmptyExpr!16137)))

(declare-fun b!6197898 () Bool)

(declare-fun e!3774408 () Bool)

(assert (=> b!6197898 (= e!3774408 e!3774410)))

(declare-fun c!1118752 () Bool)

(assert (=> b!6197898 (= c!1118752 (isEmpty!36575 (tail!11868 (t!378224 (exprs!6021 (h!71035 zl!343))))))))

(declare-fun b!6197899 () Bool)

(assert (=> b!6197899 (= e!3774410 (= lt!2342579 (head!12783 (t!378224 (exprs!6021 (h!71035 zl!343))))))))

(declare-fun b!6197900 () Bool)

(assert (=> b!6197900 (= e!3774407 (isEmpty!36575 (t!378224 (t!378224 (exprs!6021 (h!71035 zl!343))))))))

(declare-fun b!6197901 () Bool)

(assert (=> b!6197901 (= e!3774408 (isEmptyExpr!1547 lt!2342579))))

(declare-fun b!6197902 () Bool)

(assert (=> b!6197902 (= e!3774412 e!3774408)))

(declare-fun c!1118753 () Bool)

(assert (=> b!6197902 (= c!1118753 (isEmpty!36575 (t!378224 (exprs!6021 (h!71035 zl!343)))))))

(declare-fun b!6197903 () Bool)

(assert (=> b!6197903 (= e!3774411 (Concat!24982 (h!71034 (t!378224 (exprs!6021 (h!71035 zl!343)))) (generalisedConcat!1734 (t!378224 (t!378224 (exprs!6021 (h!71035 zl!343)))))))))

(assert (= (and d!1943072 res!2563773) b!6197900))

(assert (= (and d!1943072 c!1118751) b!6197894))

(assert (= (and d!1943072 (not c!1118751)) b!6197895))

(assert (= (and b!6197895 c!1118754) b!6197903))

(assert (= (and b!6197895 (not c!1118754)) b!6197897))

(assert (= (and d!1943072 res!2563774) b!6197902))

(assert (= (and b!6197902 c!1118753) b!6197901))

(assert (= (and b!6197902 (not c!1118753)) b!6197898))

(assert (= (and b!6197898 c!1118752) b!6197899))

(assert (= (and b!6197898 (not c!1118752)) b!6197896))

(assert (=> b!6197902 m!7030542))

(declare-fun m!7031424 () Bool)

(assert (=> b!6197900 m!7031424))

(declare-fun m!7031426 () Bool)

(assert (=> b!6197898 m!7031426))

(assert (=> b!6197898 m!7031426))

(declare-fun m!7031428 () Bool)

(assert (=> b!6197898 m!7031428))

(declare-fun m!7031430 () Bool)

(assert (=> b!6197896 m!7031430))

(declare-fun m!7031432 () Bool)

(assert (=> b!6197903 m!7031432))

(declare-fun m!7031434 () Bool)

(assert (=> b!6197901 m!7031434))

(declare-fun m!7031436 () Bool)

(assert (=> d!1943072 m!7031436))

(declare-fun m!7031438 () Bool)

(assert (=> d!1943072 m!7031438))

(declare-fun m!7031440 () Bool)

(assert (=> b!6197899 m!7031440))

(assert (=> b!6196943 d!1943072))

(assert (=> b!6196944 d!1943022))

(declare-fun b!6197968 () Bool)

(declare-fun lt!2342592 () Unit!157875)

(declare-fun lt!2342591 () Unit!157875)

(assert (=> b!6197968 (= lt!2342592 lt!2342591)))

(declare-fun ++!14215 (List!64712 List!64712) List!64712)

(assert (=> b!6197968 (= (++!14215 (++!14215 Nil!64588 (Cons!64588 (h!71036 s!2326) Nil!64588)) (t!378226 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2310 (List!64712 C!32544 List!64712 List!64712) Unit!157875)

(assert (=> b!6197968 (= lt!2342591 (lemmaMoveElementToOtherListKeepsConcatEq!2310 Nil!64588 (h!71036 s!2326) (t!378226 s!2326) s!2326))))

(declare-fun e!3774445 () Option!16028)

(assert (=> b!6197968 (= e!3774445 (findConcatSeparation!2442 (regOne!32786 r!7292) (regTwo!32786 r!7292) (++!14215 Nil!64588 (Cons!64588 (h!71036 s!2326) Nil!64588)) (t!378226 s!2326) s!2326))))

(declare-fun b!6197969 () Bool)

(assert (=> b!6197969 (= e!3774445 None!16027)))

(declare-fun b!6197970 () Bool)

(declare-fun res!2563791 () Bool)

(declare-fun e!3774448 () Bool)

(assert (=> b!6197970 (=> (not res!2563791) (not e!3774448))))

(declare-fun lt!2342590 () Option!16028)

(declare-fun get!22299 (Option!16028) tuple2!66232)

(assert (=> b!6197970 (= res!2563791 (matchR!8320 (regOne!32786 r!7292) (_1!36419 (get!22299 lt!2342590))))))

(declare-fun b!6197971 () Bool)

(declare-fun e!3774446 () Bool)

(assert (=> b!6197971 (= e!3774446 (not (isDefined!12731 lt!2342590)))))

(declare-fun b!6197972 () Bool)

(assert (=> b!6197972 (= e!3774448 (= (++!14215 (_1!36419 (get!22299 lt!2342590)) (_2!36419 (get!22299 lt!2342590))) s!2326))))

(declare-fun b!6197973 () Bool)

(declare-fun res!2563790 () Bool)

(assert (=> b!6197973 (=> (not res!2563790) (not e!3774448))))

(assert (=> b!6197973 (= res!2563790 (matchR!8320 (regTwo!32786 r!7292) (_2!36419 (get!22299 lt!2342590))))))

(declare-fun d!1943074 () Bool)

(assert (=> d!1943074 e!3774446))

(declare-fun res!2563789 () Bool)

(assert (=> d!1943074 (=> res!2563789 e!3774446)))

(assert (=> d!1943074 (= res!2563789 e!3774448)))

(declare-fun res!2563787 () Bool)

(assert (=> d!1943074 (=> (not res!2563787) (not e!3774448))))

(assert (=> d!1943074 (= res!2563787 (isDefined!12731 lt!2342590))))

(declare-fun e!3774447 () Option!16028)

(assert (=> d!1943074 (= lt!2342590 e!3774447)))

(declare-fun c!1118763 () Bool)

(declare-fun e!3774444 () Bool)

(assert (=> d!1943074 (= c!1118763 e!3774444)))

(declare-fun res!2563788 () Bool)

(assert (=> d!1943074 (=> (not res!2563788) (not e!3774444))))

(assert (=> d!1943074 (= res!2563788 (matchR!8320 (regOne!32786 r!7292) Nil!64588))))

(assert (=> d!1943074 (validRegex!7873 (regOne!32786 r!7292))))

(assert (=> d!1943074 (= (findConcatSeparation!2442 (regOne!32786 r!7292) (regTwo!32786 r!7292) Nil!64588 s!2326 s!2326) lt!2342590)))

(declare-fun b!6197974 () Bool)

(assert (=> b!6197974 (= e!3774447 (Some!16027 (tuple2!66233 Nil!64588 s!2326)))))

(declare-fun b!6197975 () Bool)

(assert (=> b!6197975 (= e!3774447 e!3774445)))

(declare-fun c!1118764 () Bool)

(assert (=> b!6197975 (= c!1118764 ((_ is Nil!64588) s!2326))))

(declare-fun b!6197976 () Bool)

(assert (=> b!6197976 (= e!3774444 (matchR!8320 (regTwo!32786 r!7292) s!2326))))

(assert (= (and d!1943074 res!2563788) b!6197976))

(assert (= (and d!1943074 c!1118763) b!6197974))

(assert (= (and d!1943074 (not c!1118763)) b!6197975))

(assert (= (and b!6197975 c!1118764) b!6197969))

(assert (= (and b!6197975 (not c!1118764)) b!6197968))

(assert (= (and d!1943074 res!2563787) b!6197970))

(assert (= (and b!6197970 res!2563791) b!6197973))

(assert (= (and b!6197973 res!2563790) b!6197972))

(assert (= (and d!1943074 (not res!2563789)) b!6197971))

(declare-fun m!7031474 () Bool)

(assert (=> b!6197973 m!7031474))

(declare-fun m!7031476 () Bool)

(assert (=> b!6197973 m!7031476))

(declare-fun m!7031478 () Bool)

(assert (=> b!6197976 m!7031478))

(declare-fun m!7031480 () Bool)

(assert (=> b!6197968 m!7031480))

(assert (=> b!6197968 m!7031480))

(declare-fun m!7031482 () Bool)

(assert (=> b!6197968 m!7031482))

(declare-fun m!7031484 () Bool)

(assert (=> b!6197968 m!7031484))

(assert (=> b!6197968 m!7031480))

(declare-fun m!7031486 () Bool)

(assert (=> b!6197968 m!7031486))

(declare-fun m!7031488 () Bool)

(assert (=> b!6197971 m!7031488))

(assert (=> b!6197970 m!7031474))

(declare-fun m!7031490 () Bool)

(assert (=> b!6197970 m!7031490))

(assert (=> b!6197972 m!7031474))

(declare-fun m!7031492 () Bool)

(assert (=> b!6197972 m!7031492))

(assert (=> d!1943074 m!7031488))

(declare-fun m!7031494 () Bool)

(assert (=> d!1943074 m!7031494))

(declare-fun m!7031496 () Bool)

(assert (=> d!1943074 m!7031496))

(assert (=> b!6196946 d!1943074))

(declare-fun d!1943084 () Bool)

(declare-fun choose!46055 (Int) Bool)

(assert (=> d!1943084 (= (Exists!3207 lambda!338530) (choose!46055 lambda!338530))))

(declare-fun bs!1538004 () Bool)

(assert (= bs!1538004 d!1943084))

(declare-fun m!7031500 () Bool)

(assert (=> bs!1538004 m!7031500))

(assert (=> b!6196946 d!1943084))

(declare-fun d!1943086 () Bool)

(assert (=> d!1943086 (= (Exists!3207 lambda!338529) (choose!46055 lambda!338529))))

(declare-fun bs!1538005 () Bool)

(assert (= bs!1538005 d!1943086))

(declare-fun m!7031502 () Bool)

(assert (=> bs!1538005 m!7031502))

(assert (=> b!6196946 d!1943086))

(declare-fun bs!1538009 () Bool)

(declare-fun d!1943088 () Bool)

(assert (= bs!1538009 (and d!1943088 b!6197457)))

(declare-fun lambda!338602 () Int)

(assert (=> bs!1538009 (not (= lambda!338602 lambda!338566))))

(declare-fun bs!1538010 () Bool)

(assert (= bs!1538010 (and d!1943088 b!6197817)))

(assert (=> bs!1538010 (not (= lambda!338602 lambda!338582))))

(declare-fun bs!1538011 () Bool)

(assert (= bs!1538011 (and d!1943088 b!6197791)))

(assert (=> bs!1538011 (not (= lambda!338602 lambda!338581))))

(declare-fun bs!1538012 () Bool)

(assert (= bs!1538012 (and d!1943088 b!6196946)))

(assert (=> bs!1538012 (= lambda!338602 lambda!338529)))

(declare-fun bs!1538013 () Bool)

(assert (= bs!1538013 (and d!1943088 b!6197792)))

(assert (=> bs!1538013 (not (= lambda!338602 lambda!338580))))

(declare-fun bs!1538014 () Bool)

(assert (= bs!1538014 (and d!1943088 b!6197816)))

(assert (=> bs!1538014 (not (= lambda!338602 lambda!338585))))

(declare-fun bs!1538015 () Bool)

(assert (= bs!1538015 (and d!1943088 b!6197716)))

(assert (=> bs!1538015 (not (= lambda!338602 lambda!338577))))

(declare-fun bs!1538016 () Bool)

(assert (= bs!1538016 (and d!1943088 b!6197458)))

(assert (=> bs!1538016 (not (= lambda!338602 lambda!338565))))

(declare-fun bs!1538017 () Bool)

(assert (= bs!1538017 (and d!1943088 b!6197606)))

(assert (=> bs!1538017 (not (= lambda!338602 lambda!338568))))

(declare-fun bs!1538018 () Bool)

(assert (= bs!1538018 (and d!1943088 b!6197607)))

(assert (=> bs!1538018 (not (= lambda!338602 lambda!338567))))

(assert (=> bs!1538012 (not (= lambda!338602 lambda!338530))))

(declare-fun bs!1538019 () Bool)

(assert (= bs!1538019 (and d!1943088 b!6197715)))

(assert (=> bs!1538019 (not (= lambda!338602 lambda!338578))))

(assert (=> d!1943088 true))

(assert (=> d!1943088 true))

(assert (=> d!1943088 true))

(assert (=> d!1943088 (= (isDefined!12731 (findConcatSeparation!2442 (regOne!32786 r!7292) (regTwo!32786 r!7292) Nil!64588 s!2326 s!2326)) (Exists!3207 lambda!338602))))

(declare-fun lt!2342595 () Unit!157875)

(declare-fun choose!46056 (Regex!16137 Regex!16137 List!64712) Unit!157875)

(assert (=> d!1943088 (= lt!2342595 (choose!46056 (regOne!32786 r!7292) (regTwo!32786 r!7292) s!2326))))

(assert (=> d!1943088 (validRegex!7873 (regOne!32786 r!7292))))

(assert (=> d!1943088 (= (lemmaFindConcatSeparationEquivalentToExists!2206 (regOne!32786 r!7292) (regTwo!32786 r!7292) s!2326) lt!2342595)))

(declare-fun bs!1538020 () Bool)

(assert (= bs!1538020 d!1943088))

(assert (=> bs!1538020 m!7031496))

(declare-fun m!7031504 () Bool)

(assert (=> bs!1538020 m!7031504))

(declare-fun m!7031506 () Bool)

(assert (=> bs!1538020 m!7031506))

(assert (=> bs!1538020 m!7030638))

(assert (=> bs!1538020 m!7030640))

(assert (=> bs!1538020 m!7030638))

(assert (=> b!6196946 d!1943088))

(declare-fun bs!1538021 () Bool)

(declare-fun d!1943096 () Bool)

(assert (= bs!1538021 (and d!1943096 b!6197457)))

(declare-fun lambda!338607 () Int)

(assert (=> bs!1538021 (not (= lambda!338607 lambda!338566))))

(declare-fun bs!1538022 () Bool)

(assert (= bs!1538022 (and d!1943096 b!6197817)))

(assert (=> bs!1538022 (not (= lambda!338607 lambda!338582))))

(declare-fun bs!1538023 () Bool)

(assert (= bs!1538023 (and d!1943096 b!6197791)))

(assert (=> bs!1538023 (not (= lambda!338607 lambda!338581))))

(declare-fun bs!1538024 () Bool)

(assert (= bs!1538024 (and d!1943096 d!1943088)))

(assert (=> bs!1538024 (= lambda!338607 lambda!338602)))

(declare-fun bs!1538025 () Bool)

(assert (= bs!1538025 (and d!1943096 b!6196946)))

(assert (=> bs!1538025 (= lambda!338607 lambda!338529)))

(declare-fun bs!1538026 () Bool)

(assert (= bs!1538026 (and d!1943096 b!6197792)))

(assert (=> bs!1538026 (not (= lambda!338607 lambda!338580))))

(declare-fun bs!1538027 () Bool)

(assert (= bs!1538027 (and d!1943096 b!6197816)))

(assert (=> bs!1538027 (not (= lambda!338607 lambda!338585))))

(declare-fun bs!1538028 () Bool)

(assert (= bs!1538028 (and d!1943096 b!6197716)))

(assert (=> bs!1538028 (not (= lambda!338607 lambda!338577))))

(declare-fun bs!1538029 () Bool)

(assert (= bs!1538029 (and d!1943096 b!6197458)))

(assert (=> bs!1538029 (not (= lambda!338607 lambda!338565))))

(declare-fun bs!1538030 () Bool)

(assert (= bs!1538030 (and d!1943096 b!6197606)))

(assert (=> bs!1538030 (not (= lambda!338607 lambda!338568))))

(declare-fun bs!1538031 () Bool)

(assert (= bs!1538031 (and d!1943096 b!6197607)))

(assert (=> bs!1538031 (not (= lambda!338607 lambda!338567))))

(assert (=> bs!1538025 (not (= lambda!338607 lambda!338530))))

(declare-fun bs!1538032 () Bool)

(assert (= bs!1538032 (and d!1943096 b!6197715)))

(assert (=> bs!1538032 (not (= lambda!338607 lambda!338578))))

(assert (=> d!1943096 true))

(assert (=> d!1943096 true))

(assert (=> d!1943096 true))

(declare-fun lambda!338608 () Int)

(assert (=> bs!1538021 (= (and (= (regOne!32786 r!7292) (regOne!32786 lt!2342427)) (= (regTwo!32786 r!7292) (regTwo!32786 lt!2342427))) (= lambda!338608 lambda!338566))))

(assert (=> bs!1538022 (not (= lambda!338608 lambda!338582))))

(assert (=> bs!1538023 (= (and (= (regOne!32786 r!7292) (regOne!32786 lt!2342414)) (= (regTwo!32786 r!7292) (regTwo!32786 lt!2342414))) (= lambda!338608 lambda!338581))))

(assert (=> bs!1538025 (not (= lambda!338608 lambda!338529))))

(assert (=> bs!1538026 (not (= lambda!338608 lambda!338580))))

(assert (=> bs!1538027 (= (and (= (regOne!32786 r!7292) (regOne!32786 lt!2342456)) (= (regTwo!32786 r!7292) (regTwo!32786 lt!2342456))) (= lambda!338608 lambda!338585))))

(assert (=> bs!1538028 (not (= lambda!338608 lambda!338577))))

(assert (=> bs!1538029 (not (= lambda!338608 lambda!338565))))

(declare-fun bs!1538033 () Bool)

(assert (= bs!1538033 d!1943096))

(assert (=> bs!1538033 (not (= lambda!338608 lambda!338607))))

(assert (=> bs!1538024 (not (= lambda!338608 lambda!338602))))

(assert (=> bs!1538030 (= (and (= (regOne!32786 r!7292) (regOne!32786 lt!2342438)) (= (regTwo!32786 r!7292) (regTwo!32786 lt!2342438))) (= lambda!338608 lambda!338568))))

(assert (=> bs!1538031 (not (= lambda!338608 lambda!338567))))

(assert (=> bs!1538025 (= lambda!338608 lambda!338530)))

(assert (=> bs!1538032 (= lambda!338608 lambda!338578)))

(assert (=> d!1943096 true))

(assert (=> d!1943096 true))

(assert (=> d!1943096 true))

(assert (=> d!1943096 (= (Exists!3207 lambda!338607) (Exists!3207 lambda!338608))))

(declare-fun lt!2342598 () Unit!157875)

(declare-fun choose!46057 (Regex!16137 Regex!16137 List!64712) Unit!157875)

(assert (=> d!1943096 (= lt!2342598 (choose!46057 (regOne!32786 r!7292) (regTwo!32786 r!7292) s!2326))))

(assert (=> d!1943096 (validRegex!7873 (regOne!32786 r!7292))))

(assert (=> d!1943096 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1744 (regOne!32786 r!7292) (regTwo!32786 r!7292) s!2326) lt!2342598)))

(declare-fun m!7031508 () Bool)

(assert (=> bs!1538033 m!7031508))

(declare-fun m!7031510 () Bool)

(assert (=> bs!1538033 m!7031510))

(declare-fun m!7031512 () Bool)

(assert (=> bs!1538033 m!7031512))

(assert (=> bs!1538033 m!7031496))

(assert (=> b!6196946 d!1943096))

(declare-fun d!1943098 () Bool)

(declare-fun isEmpty!36579 (Option!16028) Bool)

(assert (=> d!1943098 (= (isDefined!12731 (findConcatSeparation!2442 (regOne!32786 r!7292) (regTwo!32786 r!7292) Nil!64588 s!2326 s!2326)) (not (isEmpty!36579 (findConcatSeparation!2442 (regOne!32786 r!7292) (regTwo!32786 r!7292) Nil!64588 s!2326 s!2326))))))

(declare-fun bs!1538034 () Bool)

(assert (= bs!1538034 d!1943098))

(assert (=> bs!1538034 m!7030638))

(declare-fun m!7031514 () Bool)

(assert (=> bs!1538034 m!7031514))

(assert (=> b!6196946 d!1943098))

(declare-fun bs!1538035 () Bool)

(declare-fun d!1943100 () Bool)

(assert (= bs!1538035 (and d!1943100 d!1943000)))

(declare-fun lambda!338609 () Int)

(assert (=> bs!1538035 (= lambda!338609 lambda!338579)))

(declare-fun bs!1538036 () Bool)

(assert (= bs!1538036 (and d!1943100 d!1942882)))

(assert (=> bs!1538036 (= lambda!338609 lambda!338556)))

(declare-fun bs!1538037 () Bool)

(assert (= bs!1538037 (and d!1943100 d!1942950)))

(assert (=> bs!1538037 (= lambda!338609 lambda!338576)))

(declare-fun bs!1538038 () Bool)

(assert (= bs!1538038 (and d!1943100 d!1943060)))

(assert (=> bs!1538038 (= lambda!338609 lambda!338592)))

(declare-fun bs!1538039 () Bool)

(assert (= bs!1538039 (and d!1943100 d!1943020)))

(assert (=> bs!1538039 (= lambda!338609 lambda!338587)))

(declare-fun bs!1538040 () Bool)

(assert (= bs!1538040 (and d!1943100 d!1943072)))

(assert (=> bs!1538040 (= lambda!338609 lambda!338595)))

(declare-fun bs!1538041 () Bool)

(assert (= bs!1538041 (and d!1943100 d!1942860)))

(assert (=> bs!1538041 (= lambda!338609 lambda!338551)))

(assert (=> d!1943100 (= (inv!83589 setElem!42052) (forall!15251 (exprs!6021 setElem!42052) lambda!338609))))

(declare-fun bs!1538042 () Bool)

(assert (= bs!1538042 d!1943100))

(declare-fun m!7031516 () Bool)

(assert (=> bs!1538042 m!7031516))

(assert (=> setNonEmpty!42052 d!1943100))

(declare-fun b!6198019 () Bool)

(declare-fun e!3774465 () Bool)

(declare-fun tp!1728706 () Bool)

(assert (=> b!6198019 (= e!3774465 tp!1728706)))

(declare-fun b!6198017 () Bool)

(assert (=> b!6198017 (= e!3774465 tp_is_empty!41527)))

(declare-fun b!6198018 () Bool)

(declare-fun tp!1728703 () Bool)

(declare-fun tp!1728705 () Bool)

(assert (=> b!6198018 (= e!3774465 (and tp!1728703 tp!1728705))))

(declare-fun b!6198020 () Bool)

(declare-fun tp!1728704 () Bool)

(declare-fun tp!1728707 () Bool)

(assert (=> b!6198020 (= e!3774465 (and tp!1728704 tp!1728707))))

(assert (=> b!6196942 (= tp!1728632 e!3774465)))

(assert (= (and b!6196942 ((_ is ElementMatch!16137) (regOne!32786 r!7292))) b!6198017))

(assert (= (and b!6196942 ((_ is Concat!24982) (regOne!32786 r!7292))) b!6198018))

(assert (= (and b!6196942 ((_ is Star!16137) (regOne!32786 r!7292))) b!6198019))

(assert (= (and b!6196942 ((_ is Union!16137) (regOne!32786 r!7292))) b!6198020))

(declare-fun b!6198023 () Bool)

(declare-fun e!3774466 () Bool)

(declare-fun tp!1728711 () Bool)

(assert (=> b!6198023 (= e!3774466 tp!1728711)))

(declare-fun b!6198021 () Bool)

(assert (=> b!6198021 (= e!3774466 tp_is_empty!41527)))

(declare-fun b!6198022 () Bool)

(declare-fun tp!1728708 () Bool)

(declare-fun tp!1728710 () Bool)

(assert (=> b!6198022 (= e!3774466 (and tp!1728708 tp!1728710))))

(declare-fun b!6198024 () Bool)

(declare-fun tp!1728709 () Bool)

(declare-fun tp!1728712 () Bool)

(assert (=> b!6198024 (= e!3774466 (and tp!1728709 tp!1728712))))

(assert (=> b!6196942 (= tp!1728634 e!3774466)))

(assert (= (and b!6196942 ((_ is ElementMatch!16137) (regTwo!32786 r!7292))) b!6198021))

(assert (= (and b!6196942 ((_ is Concat!24982) (regTwo!32786 r!7292))) b!6198022))

(assert (= (and b!6196942 ((_ is Star!16137) (regTwo!32786 r!7292))) b!6198023))

(assert (= (and b!6196942 ((_ is Union!16137) (regTwo!32786 r!7292))) b!6198024))

(declare-fun b!6198027 () Bool)

(declare-fun e!3774467 () Bool)

(declare-fun tp!1728716 () Bool)

(assert (=> b!6198027 (= e!3774467 tp!1728716)))

(declare-fun b!6198025 () Bool)

(assert (=> b!6198025 (= e!3774467 tp_is_empty!41527)))

(declare-fun b!6198026 () Bool)

(declare-fun tp!1728713 () Bool)

(declare-fun tp!1728715 () Bool)

(assert (=> b!6198026 (= e!3774467 (and tp!1728713 tp!1728715))))

(declare-fun b!6198028 () Bool)

(declare-fun tp!1728714 () Bool)

(declare-fun tp!1728717 () Bool)

(assert (=> b!6198028 (= e!3774467 (and tp!1728714 tp!1728717))))

(assert (=> b!6196948 (= tp!1728625 e!3774467)))

(assert (= (and b!6196948 ((_ is ElementMatch!16137) (reg!16466 r!7292))) b!6198025))

(assert (= (and b!6196948 ((_ is Concat!24982) (reg!16466 r!7292))) b!6198026))

(assert (= (and b!6196948 ((_ is Star!16137) (reg!16466 r!7292))) b!6198027))

(assert (= (and b!6196948 ((_ is Union!16137) (reg!16466 r!7292))) b!6198028))

(declare-fun b!6198031 () Bool)

(declare-fun e!3774468 () Bool)

(declare-fun tp!1728721 () Bool)

(assert (=> b!6198031 (= e!3774468 tp!1728721)))

(declare-fun b!6198029 () Bool)

(assert (=> b!6198029 (= e!3774468 tp_is_empty!41527)))

(declare-fun b!6198030 () Bool)

(declare-fun tp!1728718 () Bool)

(declare-fun tp!1728720 () Bool)

(assert (=> b!6198030 (= e!3774468 (and tp!1728718 tp!1728720))))

(declare-fun b!6198032 () Bool)

(declare-fun tp!1728719 () Bool)

(declare-fun tp!1728722 () Bool)

(assert (=> b!6198032 (= e!3774468 (and tp!1728719 tp!1728722))))

(assert (=> b!6196954 (= tp!1728633 e!3774468)))

(assert (= (and b!6196954 ((_ is ElementMatch!16137) (regOne!32787 r!7292))) b!6198029))

(assert (= (and b!6196954 ((_ is Concat!24982) (regOne!32787 r!7292))) b!6198030))

(assert (= (and b!6196954 ((_ is Star!16137) (regOne!32787 r!7292))) b!6198031))

(assert (= (and b!6196954 ((_ is Union!16137) (regOne!32787 r!7292))) b!6198032))

(declare-fun b!6198035 () Bool)

(declare-fun e!3774469 () Bool)

(declare-fun tp!1728726 () Bool)

(assert (=> b!6198035 (= e!3774469 tp!1728726)))

(declare-fun b!6198033 () Bool)

(assert (=> b!6198033 (= e!3774469 tp_is_empty!41527)))

(declare-fun b!6198034 () Bool)

(declare-fun tp!1728723 () Bool)

(declare-fun tp!1728725 () Bool)

(assert (=> b!6198034 (= e!3774469 (and tp!1728723 tp!1728725))))

(declare-fun b!6198036 () Bool)

(declare-fun tp!1728724 () Bool)

(declare-fun tp!1728727 () Bool)

(assert (=> b!6198036 (= e!3774469 (and tp!1728724 tp!1728727))))

(assert (=> b!6196954 (= tp!1728629 e!3774469)))

(assert (= (and b!6196954 ((_ is ElementMatch!16137) (regTwo!32787 r!7292))) b!6198033))

(assert (= (and b!6196954 ((_ is Concat!24982) (regTwo!32787 r!7292))) b!6198034))

(assert (= (and b!6196954 ((_ is Star!16137) (regTwo!32787 r!7292))) b!6198035))

(assert (= (and b!6196954 ((_ is Union!16137) (regTwo!32787 r!7292))) b!6198036))

(declare-fun b!6198044 () Bool)

(declare-fun e!3774475 () Bool)

(declare-fun tp!1728732 () Bool)

(assert (=> b!6198044 (= e!3774475 tp!1728732)))

(declare-fun tp!1728733 () Bool)

(declare-fun e!3774474 () Bool)

(declare-fun b!6198043 () Bool)

(assert (=> b!6198043 (= e!3774474 (and (inv!83589 (h!71035 (t!378225 zl!343))) e!3774475 tp!1728733))))

(assert (=> b!6196969 (= tp!1728630 e!3774474)))

(assert (= b!6198043 b!6198044))

(assert (= (and b!6196969 ((_ is Cons!64587) (t!378225 zl!343))) b!6198043))

(declare-fun m!7031518 () Bool)

(assert (=> b!6198043 m!7031518))

(declare-fun b!6198049 () Bool)

(declare-fun e!3774478 () Bool)

(declare-fun tp!1728738 () Bool)

(declare-fun tp!1728739 () Bool)

(assert (=> b!6198049 (= e!3774478 (and tp!1728738 tp!1728739))))

(assert (=> b!6196960 (= tp!1728631 e!3774478)))

(assert (= (and b!6196960 ((_ is Cons!64586) (exprs!6021 (h!71035 zl!343)))) b!6198049))

(declare-fun b!6198054 () Bool)

(declare-fun e!3774481 () Bool)

(declare-fun tp!1728742 () Bool)

(assert (=> b!6198054 (= e!3774481 (and tp_is_empty!41527 tp!1728742))))

(assert (=> b!6196945 (= tp!1728626 e!3774481)))

(assert (= (and b!6196945 ((_ is Cons!64588) (t!378226 s!2326))) b!6198054))

(declare-fun b!6198055 () Bool)

(declare-fun e!3774482 () Bool)

(declare-fun tp!1728743 () Bool)

(declare-fun tp!1728744 () Bool)

(assert (=> b!6198055 (= e!3774482 (and tp!1728743 tp!1728744))))

(assert (=> b!6196971 (= tp!1728628 e!3774482)))

(assert (= (and b!6196971 ((_ is Cons!64586) (exprs!6021 setElem!42052))) b!6198055))

(declare-fun condSetEmpty!42058 () Bool)

(assert (=> setNonEmpty!42052 (= condSetEmpty!42058 (= setRest!42052 ((as const (Array Context!11042 Bool)) false)))))

(declare-fun setRes!42058 () Bool)

(assert (=> setNonEmpty!42052 (= tp!1728627 setRes!42058)))

(declare-fun setIsEmpty!42058 () Bool)

(assert (=> setIsEmpty!42058 setRes!42058))

(declare-fun setNonEmpty!42058 () Bool)

(declare-fun tp!1728750 () Bool)

(declare-fun e!3774485 () Bool)

(declare-fun setElem!42058 () Context!11042)

(assert (=> setNonEmpty!42058 (= setRes!42058 (and tp!1728750 (inv!83589 setElem!42058) e!3774485))))

(declare-fun setRest!42058 () (InoxSet Context!11042))

(assert (=> setNonEmpty!42058 (= setRest!42052 ((_ map or) (store ((as const (Array Context!11042 Bool)) false) setElem!42058 true) setRest!42058))))

(declare-fun b!6198060 () Bool)

(declare-fun tp!1728749 () Bool)

(assert (=> b!6198060 (= e!3774485 tp!1728749)))

(assert (= (and setNonEmpty!42052 condSetEmpty!42058) setIsEmpty!42058))

(assert (= (and setNonEmpty!42052 (not condSetEmpty!42058)) setNonEmpty!42058))

(assert (= setNonEmpty!42058 b!6198060))

(declare-fun m!7031520 () Bool)

(assert (=> setNonEmpty!42058 m!7031520))

(declare-fun b_lambda!235759 () Bool)

(assert (= b_lambda!235749 (or b!6196977 b_lambda!235759)))

(declare-fun bs!1538043 () Bool)

(declare-fun d!1943102 () Bool)

(assert (= bs!1538043 (and d!1943102 b!6196977)))

(assert (=> bs!1538043 (= (dynLambda!25468 lambda!338531 lt!2342419) (derivationStepZipperUp!1311 lt!2342419 (h!71036 s!2326)))))

(assert (=> bs!1538043 m!7030576))

(assert (=> d!1943028 d!1943102))

(declare-fun b_lambda!235761 () Bool)

(assert (= b_lambda!235741 (or b!6196977 b_lambda!235761)))

(declare-fun bs!1538044 () Bool)

(declare-fun d!1943104 () Bool)

(assert (= bs!1538044 (and d!1943104 b!6196977)))

(assert (=> bs!1538044 (= (dynLambda!25468 lambda!338531 (h!71035 zl!343)) (derivationStepZipperUp!1311 (h!71035 zl!343) (h!71036 s!2326)))))

(assert (=> bs!1538044 m!7030622))

(assert (=> d!1942826 d!1943104))

(declare-fun b_lambda!235763 () Bool)

(assert (= b_lambda!235751 (or b!6196977 b_lambda!235763)))

(declare-fun bs!1538045 () Bool)

(declare-fun d!1943106 () Bool)

(assert (= bs!1538045 (and d!1943106 b!6196977)))

(assert (=> bs!1538045 (= (dynLambda!25468 lambda!338531 lt!2342450) (derivationStepZipperUp!1311 lt!2342450 (h!71036 s!2326)))))

(assert (=> bs!1538045 m!7030562))

(assert (=> d!1943044 d!1943106))

(check-sat (not b!6197766) (not b!6197251) (not b!6197807) (not b!6197731) (not b!6198031) (not b!6197021) (not b!6198034) (not bm!518549) (not bm!518589) (not b!6197768) (not d!1942884) (not d!1942950) (not b!6197835) (not bm!518570) (not b!6197456) (not b_lambda!235763) (not d!1943072) (not b!6197366) (not b!6197847) (not d!1943064) (not b!6197572) (not b!6197074) (not b!6197122) (not b!6197843) (not b!6197574) (not d!1943022) (not b!6198043) (not d!1942824) (not b!6197901) (not bm!518594) (not b!6197902) (not d!1943096) (not b!6197756) (not d!1942936) (not b!6197769) (not b!6197859) (not b!6197452) (not bm!518519) (not b!6197900) (not d!1943002) (not b!6198035) (not b!6197758) (not d!1943006) (not b!6197252) (not d!1943060) (not b!6197704) (not b!6197073) (not d!1943058) (not b!6197699) (not b!6197089) (not bs!1538044) (not b!6197705) (not d!1943084) (not b!6197825) (not b!6197887) (not bm!518517) (not b!6198049) (not b!6197757) (not b!6197253) (not b!6197872) (not b!6198020) (not b!6197898) (not d!1943032) (not b!6197706) (not bm!518490) (not bm!518600) (not b!6197225) (not b!6197852) (not d!1943048) (not b!6197754) (not d!1943044) (not d!1943100) (not b!6197851) (not b!6198060) (not b!6197090) (not b!6198054) (not bm!518593) (not b!6197833) (not b!6197714) (not d!1943042) (not b!6198026) (not b!6197341) (not b!6197224) (not b!6197250) (not d!1943056) (not b!6197552) (not d!1942994) (not d!1943046) (not bm!518506) (not d!1942842) (not b!6197840) (not d!1942846) (not b!6197723) (not d!1943036) (not d!1943088) (not b!6198019) (not b!6197973) (not d!1943098) (not b!6197849) (not b!6197557) (not b!6197827) (not b!6197867) (not b!6197566) (not b!6197815) (not d!1942860) (not b!6197637) (not b!6197800) (not d!1943062) (not b!6197854) (not b!6197972) (not b!6197834) (not b!6197802) (not b!6197188) (not b!6197899) (not b!6197332) (not d!1942948) (not b!6197633) (not setNonEmpty!42058) (not bm!518576) (not d!1943000) (not d!1943020) (not b!6197858) (not b!6197811) (not b!6197726) (not b!6197799) (not b!6198028) (not d!1942896) (not b!6197575) (not b!6197710) (not b!6197601) (not b!6197842) (not b!6197752) (not b!6197860) (not d!1942996) (not b!6198044) (not b!6197828) (not b!6198018) (not d!1943086) (not b!6197727) (not b!6197336) (not d!1942818) (not d!1942826) (not bm!518575) (not b!6197718) (not bm!518503) (not b!6197702) (not b!6197865) (not bm!518587) (not b!6198032) (not d!1942988) (not b!6197971) (not bm!518591) (not b!6197724) (not b!6197571) (not d!1942902) (not d!1943038) (not b!6197558) (not b!6198036) (not bm!518548) (not b!6197561) (not b!6197565) (not b!6197765) (not b_lambda!235761) tp_is_empty!41527 (not b!6197790) (not b!6197759) (not b!6197896) (not b!6198022) (not b!6197340) (not b!6197856) (not b!6197249) (not d!1943028) (not b!6197697) (not d!1943004) (not b!6197970) (not d!1943016) (not b!6197123) (not b!6197841) (not b!6197857) (not bs!1538043) (not d!1942992) (not b!6197755) (not d!1942932) (not b!6197333) (not b!6198055) (not b!6197700) (not b!6197335) (not b!6197786) (not b_lambda!235759) (not b!6197773) (not d!1943026) (not d!1942998) (not d!1943054) (not b!6197850) (not b!6197560) (not b!6197803) (not bm!518590) (not b!6197703) (not b!6197903) (not b!6197579) (not b!6198024) (not b!6197760) (not bm!518599) (not bm!518588) (not bm!518595) (not bm!518597) (not d!1942882) (not b!6198023) (not bm!518500) (not b!6197701) (not bm!518569) (not b!6197976) (not bm!518493) (not d!1943030) (not d!1942904) (not b!6197794) (not b!6197866) (not b!6198027) (not d!1943074) (not b!6197836) (not bm!518603) (not d!1942858) (not bm!518605) (not d!1942856) (not b!6197968) (not bs!1538045) (not b!6197829) (not b!6197830) (not b!6197848) (not b!6198030) (not bm!518609) (not b!6197831) (not bm!518606) (not bm!518596) (not bm!518489) (not b!6197338) (not bm!518592) (not b!6197832) (not b!6197605))
(check-sat)
