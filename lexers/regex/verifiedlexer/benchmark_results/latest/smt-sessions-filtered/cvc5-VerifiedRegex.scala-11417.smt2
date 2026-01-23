; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!612960 () Bool)

(assert start!612960)

(declare-fun b!6136443 () Bool)

(assert (=> b!6136443 true))

(assert (=> b!6136443 true))

(declare-fun lambda!334389 () Int)

(declare-fun lambda!334388 () Int)

(assert (=> b!6136443 (not (= lambda!334389 lambda!334388))))

(assert (=> b!6136443 true))

(assert (=> b!6136443 true))

(declare-fun b!6136452 () Bool)

(assert (=> b!6136452 true))

(declare-fun b!6136426 () Bool)

(declare-fun res!2542864 () Bool)

(declare-fun e!3739961 () Bool)

(assert (=> b!6136426 (=> res!2542864 e!3739961)))

(declare-datatypes ((C!32430 0))(
  ( (C!32431 (val!25917 Int)) )
))
(declare-datatypes ((Regex!16080 0))(
  ( (ElementMatch!16080 (c!1103508 C!32430)) (Concat!24925 (regOne!32672 Regex!16080) (regTwo!32672 Regex!16080)) (EmptyExpr!16080) (Star!16080 (reg!16409 Regex!16080)) (EmptyLang!16080) (Union!16080 (regOne!32673 Regex!16080) (regTwo!32673 Regex!16080)) )
))
(declare-datatypes ((List!64539 0))(
  ( (Nil!64415) (Cons!64415 (h!70863 Regex!16080) (t!378014 List!64539)) )
))
(declare-datatypes ((Context!10928 0))(
  ( (Context!10929 (exprs!5964 List!64539)) )
))
(declare-datatypes ((List!64540 0))(
  ( (Nil!64416) (Cons!64416 (h!70864 Context!10928) (t!378015 List!64540)) )
))
(declare-fun zl!343 () List!64540)

(declare-fun isEmpty!36362 (List!64540) Bool)

(assert (=> b!6136426 (= res!2542864 (not (isEmpty!36362 (t!378015 zl!343))))))

(declare-fun setElem!41493 () Context!10928)

(declare-fun setNonEmpty!41493 () Bool)

(declare-fun setRes!41493 () Bool)

(declare-fun e!3739956 () Bool)

(declare-fun tp!1714699 () Bool)

(declare-fun inv!83448 (Context!10928) Bool)

(assert (=> setNonEmpty!41493 (= setRes!41493 (and tp!1714699 (inv!83448 setElem!41493) e!3739956))))

(declare-fun z!1189 () (Set Context!10928))

(declare-fun setRest!41493 () (Set Context!10928))

(assert (=> setNonEmpty!41493 (= z!1189 (set.union (set.insert setElem!41493 (as set.empty (Set Context!10928))) setRest!41493))))

(declare-fun b!6136427 () Bool)

(declare-fun res!2542872 () Bool)

(assert (=> b!6136427 (=> res!2542872 e!3739961)))

(declare-fun r!7292 () Regex!16080)

(declare-fun generalisedUnion!1924 (List!64539) Regex!16080)

(declare-fun unfocusZipperList!1501 (List!64540) List!64539)

(assert (=> b!6136427 (= res!2542872 (not (= r!7292 (generalisedUnion!1924 (unfocusZipperList!1501 zl!343)))))))

(declare-fun b!6136428 () Bool)

(declare-fun e!3739958 () Bool)

(declare-fun lt!2332550 () (Set Context!10928))

(declare-datatypes ((List!64541 0))(
  ( (Nil!64417) (Cons!64417 (h!70865 C!32430) (t!378016 List!64541)) )
))
(declare-fun s!2326 () List!64541)

(declare-fun matchZipper!2092 ((Set Context!10928) List!64541) Bool)

(assert (=> b!6136428 (= e!3739958 (not (matchZipper!2092 lt!2332550 (t!378016 s!2326))))))

(declare-fun b!6136429 () Bool)

(declare-fun e!3739951 () Bool)

(declare-fun lt!2332553 () Context!10928)

(assert (=> b!6136429 (= e!3739951 (inv!83448 lt!2332553))))

(declare-fun setIsEmpty!41493 () Bool)

(assert (=> setIsEmpty!41493 setRes!41493))

(declare-fun b!6136430 () Bool)

(declare-fun e!3739949 () Bool)

(declare-fun tp!1714707 () Bool)

(declare-fun tp!1714706 () Bool)

(assert (=> b!6136430 (= e!3739949 (and tp!1714707 tp!1714706))))

(declare-fun b!6136431 () Bool)

(declare-fun res!2542873 () Bool)

(declare-fun e!3739960 () Bool)

(assert (=> b!6136431 (=> (not res!2542873) (not e!3739960))))

(declare-fun unfocusZipper!1822 (List!64540) Regex!16080)

(assert (=> b!6136431 (= res!2542873 (= r!7292 (unfocusZipper!1822 zl!343)))))

(declare-fun tp!1714700 () Bool)

(declare-fun e!3739946 () Bool)

(declare-fun b!6136432 () Bool)

(declare-fun e!3739959 () Bool)

(assert (=> b!6136432 (= e!3739959 (and (inv!83448 (h!70864 zl!343)) e!3739946 tp!1714700))))

(declare-fun b!6136433 () Bool)

(declare-fun e!3739950 () Bool)

(assert (=> b!6136433 (= e!3739950 (matchZipper!2092 lt!2332550 (t!378016 s!2326)))))

(declare-fun b!6136434 () Bool)

(declare-fun res!2542881 () Bool)

(assert (=> b!6136434 (=> res!2542881 e!3739961)))

(assert (=> b!6136434 (= res!2542881 (or (is-EmptyExpr!16080 r!7292) (is-EmptyLang!16080 r!7292) (is-ElementMatch!16080 r!7292) (is-Union!16080 r!7292) (not (is-Concat!24925 r!7292))))))

(declare-fun b!6136435 () Bool)

(declare-fun e!3739954 () Bool)

(declare-fun e!3739953 () Bool)

(assert (=> b!6136435 (= e!3739954 e!3739953)))

(declare-fun res!2542874 () Bool)

(assert (=> b!6136435 (=> res!2542874 e!3739953)))

(assert (=> b!6136435 (= res!2542874 e!3739958)))

(declare-fun res!2542879 () Bool)

(assert (=> b!6136435 (=> (not res!2542879) (not e!3739958))))

(declare-fun lt!2332533 () (Set Context!10928))

(declare-fun lt!2332541 () Bool)

(assert (=> b!6136435 (= res!2542879 (not (= (matchZipper!2092 lt!2332533 (t!378016 s!2326)) lt!2332541)))))

(declare-fun lt!2332549 () (Set Context!10928))

(assert (=> b!6136435 (= (matchZipper!2092 lt!2332549 (t!378016 s!2326)) e!3739950)))

(declare-fun res!2542878 () Bool)

(assert (=> b!6136435 (=> res!2542878 e!3739950)))

(assert (=> b!6136435 (= res!2542878 lt!2332541)))

(declare-fun lt!2332546 () (Set Context!10928))

(assert (=> b!6136435 (= lt!2332541 (matchZipper!2092 lt!2332546 (t!378016 s!2326)))))

(declare-datatypes ((Unit!157475 0))(
  ( (Unit!157476) )
))
(declare-fun lt!2332534 () Unit!157475)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!911 ((Set Context!10928) (Set Context!10928) List!64541) Unit!157475)

(assert (=> b!6136435 (= lt!2332534 (lemmaZipperConcatMatchesSameAsBothZippers!911 lt!2332546 lt!2332550 (t!378016 s!2326)))))

(declare-fun b!6136436 () Bool)

(declare-fun tp!1714701 () Bool)

(assert (=> b!6136436 (= e!3739949 tp!1714701)))

(declare-fun b!6136437 () Bool)

(assert (=> b!6136437 (= e!3739953 e!3739951)))

(declare-fun res!2542870 () Bool)

(assert (=> b!6136437 (=> res!2542870 e!3739951)))

(declare-fun nullable!6073 (Regex!16080) Bool)

(assert (=> b!6136437 (= res!2542870 (not (nullable!6073 (regOne!32673 (regOne!32672 r!7292)))))))

(declare-fun lt!2332539 () Context!10928)

(declare-fun lt!2332545 () (Set Context!10928))

(declare-fun lambda!334390 () Int)

(declare-fun flatMap!1585 ((Set Context!10928) Int) (Set Context!10928))

(declare-fun derivationStepZipperUp!1254 (Context!10928 C!32430) (Set Context!10928))

(assert (=> b!6136437 (= (flatMap!1585 lt!2332545 lambda!334390) (derivationStepZipperUp!1254 lt!2332539 (h!70865 s!2326)))))

(declare-fun lt!2332544 () Unit!157475)

(declare-fun lemmaFlatMapOnSingletonSet!1111 ((Set Context!10928) Context!10928 Int) Unit!157475)

(assert (=> b!6136437 (= lt!2332544 (lemmaFlatMapOnSingletonSet!1111 lt!2332545 lt!2332539 lambda!334390))))

(declare-fun lt!2332538 () (Set Context!10928))

(assert (=> b!6136437 (= lt!2332538 (derivationStepZipperUp!1254 lt!2332539 (h!70865 s!2326)))))

(assert (=> b!6136437 (= lt!2332545 (set.insert lt!2332539 (as set.empty (Set Context!10928))))))

(assert (=> b!6136437 (= lt!2332539 (Context!10929 (Cons!64415 (regOne!32673 (regOne!32672 r!7292)) (t!378014 (exprs!5964 (h!70864 zl!343))))))))

(declare-fun b!6136438 () Bool)

(declare-fun res!2542875 () Bool)

(assert (=> b!6136438 (=> res!2542875 e!3739961)))

(declare-fun generalisedConcat!1677 (List!64539) Regex!16080)

(assert (=> b!6136438 (= res!2542875 (not (= r!7292 (generalisedConcat!1677 (exprs!5964 (h!70864 zl!343))))))))

(declare-fun b!6136439 () Bool)

(declare-fun tp!1714702 () Bool)

(assert (=> b!6136439 (= e!3739956 tp!1714702)))

(declare-fun b!6136440 () Bool)

(declare-fun res!2542877 () Bool)

(assert (=> b!6136440 (=> (not res!2542877) (not e!3739960))))

(declare-fun toList!9864 ((Set Context!10928)) List!64540)

(assert (=> b!6136440 (= res!2542877 (= (toList!9864 z!1189) zl!343))))

(declare-fun b!6136441 () Bool)

(declare-fun e!3739947 () Unit!157475)

(declare-fun Unit!157477 () Unit!157475)

(assert (=> b!6136441 (= e!3739947 Unit!157477)))

(declare-fun lt!2332547 () Unit!157475)

(declare-fun lt!2332536 () (Set Context!10928))

(assert (=> b!6136441 (= lt!2332547 (lemmaZipperConcatMatchesSameAsBothZippers!911 lt!2332533 lt!2332536 (t!378016 s!2326)))))

(declare-fun res!2542880 () Bool)

(assert (=> b!6136441 (= res!2542880 (matchZipper!2092 lt!2332533 (t!378016 s!2326)))))

(declare-fun e!3739955 () Bool)

(assert (=> b!6136441 (=> res!2542880 e!3739955)))

(assert (=> b!6136441 (= (matchZipper!2092 (set.union lt!2332533 lt!2332536) (t!378016 s!2326)) e!3739955)))

(declare-fun res!2542871 () Bool)

(assert (=> start!612960 (=> (not res!2542871) (not e!3739960))))

(declare-fun validRegex!7816 (Regex!16080) Bool)

(assert (=> start!612960 (= res!2542871 (validRegex!7816 r!7292))))

(assert (=> start!612960 e!3739960))

(assert (=> start!612960 e!3739949))

(declare-fun condSetEmpty!41493 () Bool)

(assert (=> start!612960 (= condSetEmpty!41493 (= z!1189 (as set.empty (Set Context!10928))))))

(assert (=> start!612960 setRes!41493))

(assert (=> start!612960 e!3739959))

(declare-fun e!3739952 () Bool)

(assert (=> start!612960 e!3739952))

(declare-fun b!6136442 () Bool)

(declare-fun res!2542866 () Bool)

(declare-fun e!3739948 () Bool)

(assert (=> b!6136442 (=> res!2542866 e!3739948)))

(declare-fun isEmpty!36363 (List!64539) Bool)

(assert (=> b!6136442 (= res!2542866 (isEmpty!36363 (t!378014 (exprs!5964 (h!70864 zl!343)))))))

(assert (=> b!6136443 (= e!3739961 e!3739948)))

(declare-fun res!2542865 () Bool)

(assert (=> b!6136443 (=> res!2542865 e!3739948)))

(declare-fun lt!2332543 () Bool)

(declare-fun lt!2332540 () Bool)

(assert (=> b!6136443 (= res!2542865 (or (not (= lt!2332540 lt!2332543)) (is-Nil!64417 s!2326)))))

(declare-fun Exists!3150 (Int) Bool)

(assert (=> b!6136443 (= (Exists!3150 lambda!334388) (Exists!3150 lambda!334389))))

(declare-fun lt!2332552 () Unit!157475)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1687 (Regex!16080 Regex!16080 List!64541) Unit!157475)

(assert (=> b!6136443 (= lt!2332552 (lemmaExistCutMatchRandMatchRSpecEquivalent!1687 (regOne!32672 r!7292) (regTwo!32672 r!7292) s!2326))))

(assert (=> b!6136443 (= lt!2332543 (Exists!3150 lambda!334388))))

(declare-datatypes ((tuple2!66118 0))(
  ( (tuple2!66119 (_1!36362 List!64541) (_2!36362 List!64541)) )
))
(declare-datatypes ((Option!15971 0))(
  ( (None!15970) (Some!15970 (v!52109 tuple2!66118)) )
))
(declare-fun isDefined!12674 (Option!15971) Bool)

(declare-fun findConcatSeparation!2385 (Regex!16080 Regex!16080 List!64541 List!64541 List!64541) Option!15971)

(assert (=> b!6136443 (= lt!2332543 (isDefined!12674 (findConcatSeparation!2385 (regOne!32672 r!7292) (regTwo!32672 r!7292) Nil!64417 s!2326 s!2326)))))

(declare-fun lt!2332551 () Unit!157475)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2149 (Regex!16080 Regex!16080 List!64541) Unit!157475)

(assert (=> b!6136443 (= lt!2332551 (lemmaFindConcatSeparationEquivalentToExists!2149 (regOne!32672 r!7292) (regTwo!32672 r!7292) s!2326))))

(declare-fun b!6136444 () Bool)

(declare-fun tp!1714705 () Bool)

(declare-fun tp!1714704 () Bool)

(assert (=> b!6136444 (= e!3739949 (and tp!1714705 tp!1714704))))

(declare-fun b!6136445 () Bool)

(assert (=> b!6136445 (= e!3739955 (matchZipper!2092 lt!2332536 (t!378016 s!2326)))))

(declare-fun b!6136446 () Bool)

(declare-fun e!3739957 () Bool)

(assert (=> b!6136446 (= e!3739957 e!3739954)))

(declare-fun res!2542868 () Bool)

(assert (=> b!6136446 (=> res!2542868 e!3739954)))

(assert (=> b!6136446 (= res!2542868 (not (= lt!2332533 lt!2332549)))))

(assert (=> b!6136446 (= lt!2332549 (set.union lt!2332546 lt!2332550))))

(declare-fun derivationStepZipperDown!1328 (Regex!16080 Context!10928 C!32430) (Set Context!10928))

(assert (=> b!6136446 (= lt!2332550 (derivationStepZipperDown!1328 (regTwo!32673 (regOne!32672 r!7292)) lt!2332553 (h!70865 s!2326)))))

(assert (=> b!6136446 (= lt!2332546 (derivationStepZipperDown!1328 (regOne!32673 (regOne!32672 r!7292)) lt!2332553 (h!70865 s!2326)))))

(declare-fun b!6136447 () Bool)

(declare-fun res!2542867 () Bool)

(assert (=> b!6136447 (=> res!2542867 e!3739961)))

(assert (=> b!6136447 (= res!2542867 (not (is-Cons!64415 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun b!6136448 () Bool)

(assert (=> b!6136448 (= e!3739960 (not e!3739961))))

(declare-fun res!2542869 () Bool)

(assert (=> b!6136448 (=> res!2542869 e!3739961)))

(assert (=> b!6136448 (= res!2542869 (not (is-Cons!64416 zl!343)))))

(declare-fun matchRSpec!3181 (Regex!16080 List!64541) Bool)

(assert (=> b!6136448 (= lt!2332540 (matchRSpec!3181 r!7292 s!2326))))

(declare-fun matchR!8263 (Regex!16080 List!64541) Bool)

(assert (=> b!6136448 (= lt!2332540 (matchR!8263 r!7292 s!2326))))

(declare-fun lt!2332535 () Unit!157475)

(declare-fun mainMatchTheorem!3181 (Regex!16080 List!64541) Unit!157475)

(assert (=> b!6136448 (= lt!2332535 (mainMatchTheorem!3181 r!7292 s!2326))))

(declare-fun b!6136449 () Bool)

(declare-fun tp_is_empty!41413 () Bool)

(assert (=> b!6136449 (= e!3739949 tp_is_empty!41413)))

(declare-fun b!6136450 () Bool)

(declare-fun Unit!157478 () Unit!157475)

(assert (=> b!6136450 (= e!3739947 Unit!157478)))

(declare-fun b!6136451 () Bool)

(declare-fun tp!1714708 () Bool)

(assert (=> b!6136451 (= e!3739946 tp!1714708)))

(assert (=> b!6136452 (= e!3739948 e!3739957)))

(declare-fun res!2542876 () Bool)

(assert (=> b!6136452 (=> res!2542876 e!3739957)))

(assert (=> b!6136452 (= res!2542876 (or (and (is-ElementMatch!16080 (regOne!32672 r!7292)) (= (c!1103508 (regOne!32672 r!7292)) (h!70865 s!2326))) (not (is-Union!16080 (regOne!32672 r!7292)))))))

(declare-fun lt!2332542 () Unit!157475)

(assert (=> b!6136452 (= lt!2332542 e!3739947)))

(declare-fun c!1103507 () Bool)

(assert (=> b!6136452 (= c!1103507 (nullable!6073 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(assert (=> b!6136452 (= (flatMap!1585 z!1189 lambda!334390) (derivationStepZipperUp!1254 (h!70864 zl!343) (h!70865 s!2326)))))

(declare-fun lt!2332548 () Unit!157475)

(assert (=> b!6136452 (= lt!2332548 (lemmaFlatMapOnSingletonSet!1111 z!1189 (h!70864 zl!343) lambda!334390))))

(assert (=> b!6136452 (= lt!2332536 (derivationStepZipperUp!1254 lt!2332553 (h!70865 s!2326)))))

(assert (=> b!6136452 (= lt!2332533 (derivationStepZipperDown!1328 (h!70863 (exprs!5964 (h!70864 zl!343))) lt!2332553 (h!70865 s!2326)))))

(assert (=> b!6136452 (= lt!2332553 (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun lt!2332537 () (Set Context!10928))

(assert (=> b!6136452 (= lt!2332537 (derivationStepZipperUp!1254 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))) (h!70865 s!2326)))))

(declare-fun b!6136453 () Bool)

(declare-fun tp!1714703 () Bool)

(assert (=> b!6136453 (= e!3739952 (and tp_is_empty!41413 tp!1714703))))

(assert (= (and start!612960 res!2542871) b!6136440))

(assert (= (and b!6136440 res!2542877) b!6136431))

(assert (= (and b!6136431 res!2542873) b!6136448))

(assert (= (and b!6136448 (not res!2542869)) b!6136426))

(assert (= (and b!6136426 (not res!2542864)) b!6136438))

(assert (= (and b!6136438 (not res!2542875)) b!6136447))

(assert (= (and b!6136447 (not res!2542867)) b!6136427))

(assert (= (and b!6136427 (not res!2542872)) b!6136434))

(assert (= (and b!6136434 (not res!2542881)) b!6136443))

(assert (= (and b!6136443 (not res!2542865)) b!6136442))

(assert (= (and b!6136442 (not res!2542866)) b!6136452))

(assert (= (and b!6136452 c!1103507) b!6136441))

(assert (= (and b!6136452 (not c!1103507)) b!6136450))

(assert (= (and b!6136441 (not res!2542880)) b!6136445))

(assert (= (and b!6136452 (not res!2542876)) b!6136446))

(assert (= (and b!6136446 (not res!2542868)) b!6136435))

(assert (= (and b!6136435 (not res!2542878)) b!6136433))

(assert (= (and b!6136435 res!2542879) b!6136428))

(assert (= (and b!6136435 (not res!2542874)) b!6136437))

(assert (= (and b!6136437 (not res!2542870)) b!6136429))

(assert (= (and start!612960 (is-ElementMatch!16080 r!7292)) b!6136449))

(assert (= (and start!612960 (is-Concat!24925 r!7292)) b!6136430))

(assert (= (and start!612960 (is-Star!16080 r!7292)) b!6136436))

(assert (= (and start!612960 (is-Union!16080 r!7292)) b!6136444))

(assert (= (and start!612960 condSetEmpty!41493) setIsEmpty!41493))

(assert (= (and start!612960 (not condSetEmpty!41493)) setNonEmpty!41493))

(assert (= setNonEmpty!41493 b!6136439))

(assert (= b!6136432 b!6136451))

(assert (= (and start!612960 (is-Cons!64416 zl!343)) b!6136432))

(assert (= (and start!612960 (is-Cons!64417 s!2326)) b!6136453))

(declare-fun m!6978736 () Bool)

(assert (=> b!6136431 m!6978736))

(declare-fun m!6978738 () Bool)

(assert (=> setNonEmpty!41493 m!6978738))

(declare-fun m!6978740 () Bool)

(assert (=> b!6136426 m!6978740))

(declare-fun m!6978742 () Bool)

(assert (=> b!6136443 m!6978742))

(declare-fun m!6978744 () Bool)

(assert (=> b!6136443 m!6978744))

(declare-fun m!6978746 () Bool)

(assert (=> b!6136443 m!6978746))

(declare-fun m!6978748 () Bool)

(assert (=> b!6136443 m!6978748))

(declare-fun m!6978750 () Bool)

(assert (=> b!6136443 m!6978750))

(assert (=> b!6136443 m!6978742))

(assert (=> b!6136443 m!6978744))

(declare-fun m!6978752 () Bool)

(assert (=> b!6136443 m!6978752))

(declare-fun m!6978754 () Bool)

(assert (=> b!6136429 m!6978754))

(declare-fun m!6978756 () Bool)

(assert (=> b!6136446 m!6978756))

(declare-fun m!6978758 () Bool)

(assert (=> b!6136446 m!6978758))

(declare-fun m!6978760 () Bool)

(assert (=> b!6136445 m!6978760))

(declare-fun m!6978762 () Bool)

(assert (=> b!6136442 m!6978762))

(declare-fun m!6978764 () Bool)

(assert (=> b!6136440 m!6978764))

(declare-fun m!6978766 () Bool)

(assert (=> b!6136438 m!6978766))

(declare-fun m!6978768 () Bool)

(assert (=> b!6136435 m!6978768))

(declare-fun m!6978770 () Bool)

(assert (=> b!6136435 m!6978770))

(declare-fun m!6978772 () Bool)

(assert (=> b!6136435 m!6978772))

(declare-fun m!6978774 () Bool)

(assert (=> b!6136435 m!6978774))

(declare-fun m!6978776 () Bool)

(assert (=> b!6136452 m!6978776))

(declare-fun m!6978778 () Bool)

(assert (=> b!6136452 m!6978778))

(declare-fun m!6978780 () Bool)

(assert (=> b!6136452 m!6978780))

(declare-fun m!6978782 () Bool)

(assert (=> b!6136452 m!6978782))

(declare-fun m!6978784 () Bool)

(assert (=> b!6136452 m!6978784))

(declare-fun m!6978786 () Bool)

(assert (=> b!6136452 m!6978786))

(declare-fun m!6978788 () Bool)

(assert (=> b!6136452 m!6978788))

(declare-fun m!6978790 () Bool)

(assert (=> b!6136441 m!6978790))

(assert (=> b!6136441 m!6978768))

(declare-fun m!6978792 () Bool)

(assert (=> b!6136441 m!6978792))

(declare-fun m!6978794 () Bool)

(assert (=> start!612960 m!6978794))

(declare-fun m!6978796 () Bool)

(assert (=> b!6136427 m!6978796))

(assert (=> b!6136427 m!6978796))

(declare-fun m!6978798 () Bool)

(assert (=> b!6136427 m!6978798))

(declare-fun m!6978800 () Bool)

(assert (=> b!6136432 m!6978800))

(declare-fun m!6978802 () Bool)

(assert (=> b!6136448 m!6978802))

(declare-fun m!6978804 () Bool)

(assert (=> b!6136448 m!6978804))

(declare-fun m!6978806 () Bool)

(assert (=> b!6136448 m!6978806))

(declare-fun m!6978808 () Bool)

(assert (=> b!6136428 m!6978808))

(declare-fun m!6978810 () Bool)

(assert (=> b!6136437 m!6978810))

(declare-fun m!6978812 () Bool)

(assert (=> b!6136437 m!6978812))

(declare-fun m!6978814 () Bool)

(assert (=> b!6136437 m!6978814))

(declare-fun m!6978816 () Bool)

(assert (=> b!6136437 m!6978816))

(declare-fun m!6978818 () Bool)

(assert (=> b!6136437 m!6978818))

(assert (=> b!6136433 m!6978808))

(push 1)

(assert (not b!6136435))

(assert (not b!6136451))

(assert (not b!6136440))

(assert (not b!6136441))

(assert (not b!6136436))

(assert (not b!6136437))

(assert (not b!6136438))

(assert (not b!6136443))

(assert (not b!6136427))

(assert tp_is_empty!41413)

(assert (not b!6136446))

(assert (not start!612960))

(assert (not b!6136444))

(assert (not setNonEmpty!41493))

(assert (not b!6136430))

(assert (not b!6136431))

(assert (not b!6136439))

(assert (not b!6136448))

(assert (not b!6136453))

(assert (not b!6136433))

(assert (not b!6136432))

(assert (not b!6136428))

(assert (not b!6136452))

(assert (not b!6136429))

(assert (not b!6136442))

(assert (not b!6136445))

(assert (not b!6136426))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1922600 () Bool)

(declare-fun lambda!334406 () Int)

(declare-fun forall!15201 (List!64539 Int) Bool)

(assert (=> d!1922600 (= (inv!83448 (h!70864 zl!343)) (forall!15201 (exprs!5964 (h!70864 zl!343)) lambda!334406))))

(declare-fun bs!1521885 () Bool)

(assert (= bs!1521885 d!1922600))

(declare-fun m!6978904 () Bool)

(assert (=> bs!1521885 m!6978904))

(assert (=> b!6136432 d!1922600))

(declare-fun d!1922602 () Bool)

(assert (=> d!1922602 (= (isEmpty!36363 (t!378014 (exprs!5964 (h!70864 zl!343)))) (is-Nil!64415 (t!378014 (exprs!5964 (h!70864 zl!343)))))))

(assert (=> b!6136442 d!1922602))

(declare-fun d!1922604 () Bool)

(declare-fun lt!2332619 () Regex!16080)

(assert (=> d!1922604 (validRegex!7816 lt!2332619)))

(assert (=> d!1922604 (= lt!2332619 (generalisedUnion!1924 (unfocusZipperList!1501 zl!343)))))

(assert (=> d!1922604 (= (unfocusZipper!1822 zl!343) lt!2332619)))

(declare-fun bs!1521886 () Bool)

(assert (= bs!1521886 d!1922604))

(declare-fun m!6978906 () Bool)

(assert (=> bs!1521886 m!6978906))

(assert (=> bs!1521886 m!6978796))

(assert (=> bs!1521886 m!6978796))

(assert (=> bs!1521886 m!6978798))

(assert (=> b!6136431 d!1922604))

(declare-fun d!1922606 () Bool)

(declare-fun dynLambda!25381 (Int Context!10928) (Set Context!10928))

(assert (=> d!1922606 (= (flatMap!1585 z!1189 lambda!334390) (dynLambda!25381 lambda!334390 (h!70864 zl!343)))))

(declare-fun lt!2332622 () Unit!157475)

(declare-fun choose!45597 ((Set Context!10928) Context!10928 Int) Unit!157475)

(assert (=> d!1922606 (= lt!2332622 (choose!45597 z!1189 (h!70864 zl!343) lambda!334390))))

(assert (=> d!1922606 (= z!1189 (set.insert (h!70864 zl!343) (as set.empty (Set Context!10928))))))

(assert (=> d!1922606 (= (lemmaFlatMapOnSingletonSet!1111 z!1189 (h!70864 zl!343) lambda!334390) lt!2332622)))

(declare-fun b_lambda!233569 () Bool)

(assert (=> (not b_lambda!233569) (not d!1922606)))

(declare-fun bs!1521887 () Bool)

(assert (= bs!1521887 d!1922606))

(assert (=> bs!1521887 m!6978778))

(declare-fun m!6978908 () Bool)

(assert (=> bs!1521887 m!6978908))

(declare-fun m!6978910 () Bool)

(assert (=> bs!1521887 m!6978910))

(declare-fun m!6978912 () Bool)

(assert (=> bs!1521887 m!6978912))

(assert (=> b!6136452 d!1922606))

(declare-fun d!1922608 () Bool)

(declare-fun nullableFct!2037 (Regex!16080) Bool)

(assert (=> d!1922608 (= (nullable!6073 (h!70863 (exprs!5964 (h!70864 zl!343)))) (nullableFct!2037 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun bs!1521888 () Bool)

(assert (= bs!1521888 d!1922608))

(declare-fun m!6978914 () Bool)

(assert (=> bs!1521888 m!6978914))

(assert (=> b!6136452 d!1922608))

(declare-fun call!509305 () (Set Context!10928))

(declare-fun e!3740024 () (Set Context!10928))

(declare-fun b!6136573 () Bool)

(assert (=> b!6136573 (= e!3740024 (set.union call!509305 (derivationStepZipperUp!1254 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (h!70865 s!2326))))))

(declare-fun b!6136574 () Bool)

(declare-fun e!3740022 () (Set Context!10928))

(assert (=> b!6136574 (= e!3740022 (as set.empty (Set Context!10928)))))

(declare-fun b!6136575 () Bool)

(assert (=> b!6136575 (= e!3740022 call!509305)))

(declare-fun bm!509300 () Bool)

(assert (=> bm!509300 (= call!509305 (derivationStepZipperDown!1328 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))))) (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (h!70865 s!2326)))))

(declare-fun b!6136576 () Bool)

(declare-fun e!3740023 () Bool)

(assert (=> b!6136576 (= e!3740023 (nullable!6073 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))))))

(declare-fun b!6136572 () Bool)

(assert (=> b!6136572 (= e!3740024 e!3740022)))

(declare-fun c!1103522 () Bool)

(assert (=> b!6136572 (= c!1103522 (is-Cons!64415 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))))))))

(declare-fun d!1922610 () Bool)

(declare-fun c!1103523 () Bool)

(assert (=> d!1922610 (= c!1103523 e!3740023)))

(declare-fun res!2542950 () Bool)

(assert (=> d!1922610 (=> (not res!2542950) (not e!3740023))))

(assert (=> d!1922610 (= res!2542950 (is-Cons!64415 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))))))))

(assert (=> d!1922610 (= (derivationStepZipperUp!1254 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))) (h!70865 s!2326)) e!3740024)))

(assert (= (and d!1922610 res!2542950) b!6136576))

(assert (= (and d!1922610 c!1103523) b!6136573))

(assert (= (and d!1922610 (not c!1103523)) b!6136572))

(assert (= (and b!6136572 c!1103522) b!6136575))

(assert (= (and b!6136572 (not c!1103522)) b!6136574))

(assert (= (or b!6136573 b!6136575) bm!509300))

(declare-fun m!6978916 () Bool)

(assert (=> b!6136573 m!6978916))

(declare-fun m!6978918 () Bool)

(assert (=> bm!509300 m!6978918))

(declare-fun m!6978920 () Bool)

(assert (=> b!6136576 m!6978920))

(assert (=> b!6136452 d!1922610))

(declare-fun e!3740027 () (Set Context!10928))

(declare-fun call!509306 () (Set Context!10928))

(declare-fun b!6136578 () Bool)

(assert (=> b!6136578 (= e!3740027 (set.union call!509306 (derivationStepZipperUp!1254 (Context!10929 (t!378014 (exprs!5964 lt!2332553))) (h!70865 s!2326))))))

(declare-fun b!6136579 () Bool)

(declare-fun e!3740025 () (Set Context!10928))

(assert (=> b!6136579 (= e!3740025 (as set.empty (Set Context!10928)))))

(declare-fun b!6136580 () Bool)

(assert (=> b!6136580 (= e!3740025 call!509306)))

(declare-fun bm!509301 () Bool)

(assert (=> bm!509301 (= call!509306 (derivationStepZipperDown!1328 (h!70863 (exprs!5964 lt!2332553)) (Context!10929 (t!378014 (exprs!5964 lt!2332553))) (h!70865 s!2326)))))

(declare-fun b!6136581 () Bool)

(declare-fun e!3740026 () Bool)

(assert (=> b!6136581 (= e!3740026 (nullable!6073 (h!70863 (exprs!5964 lt!2332553))))))

(declare-fun b!6136577 () Bool)

(assert (=> b!6136577 (= e!3740027 e!3740025)))

(declare-fun c!1103524 () Bool)

(assert (=> b!6136577 (= c!1103524 (is-Cons!64415 (exprs!5964 lt!2332553)))))

(declare-fun d!1922612 () Bool)

(declare-fun c!1103525 () Bool)

(assert (=> d!1922612 (= c!1103525 e!3740026)))

(declare-fun res!2542951 () Bool)

(assert (=> d!1922612 (=> (not res!2542951) (not e!3740026))))

(assert (=> d!1922612 (= res!2542951 (is-Cons!64415 (exprs!5964 lt!2332553)))))

(assert (=> d!1922612 (= (derivationStepZipperUp!1254 lt!2332553 (h!70865 s!2326)) e!3740027)))

(assert (= (and d!1922612 res!2542951) b!6136581))

(assert (= (and d!1922612 c!1103525) b!6136578))

(assert (= (and d!1922612 (not c!1103525)) b!6136577))

(assert (= (and b!6136577 c!1103524) b!6136580))

(assert (= (and b!6136577 (not c!1103524)) b!6136579))

(assert (= (or b!6136578 b!6136580) bm!509301))

(declare-fun m!6978922 () Bool)

(assert (=> b!6136578 m!6978922))

(declare-fun m!6978924 () Bool)

(assert (=> bm!509301 m!6978924))

(declare-fun m!6978926 () Bool)

(assert (=> b!6136581 m!6978926))

(assert (=> b!6136452 d!1922612))

(declare-fun b!6136583 () Bool)

(declare-fun e!3740030 () (Set Context!10928))

(declare-fun call!509307 () (Set Context!10928))

(assert (=> b!6136583 (= e!3740030 (set.union call!509307 (derivationStepZipperUp!1254 (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343)))) (h!70865 s!2326))))))

(declare-fun b!6136584 () Bool)

(declare-fun e!3740028 () (Set Context!10928))

(assert (=> b!6136584 (= e!3740028 (as set.empty (Set Context!10928)))))

(declare-fun b!6136585 () Bool)

(assert (=> b!6136585 (= e!3740028 call!509307)))

(declare-fun bm!509302 () Bool)

(assert (=> bm!509302 (= call!509307 (derivationStepZipperDown!1328 (h!70863 (exprs!5964 (h!70864 zl!343))) (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343)))) (h!70865 s!2326)))))

(declare-fun b!6136586 () Bool)

(declare-fun e!3740029 () Bool)

(assert (=> b!6136586 (= e!3740029 (nullable!6073 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun b!6136582 () Bool)

(assert (=> b!6136582 (= e!3740030 e!3740028)))

(declare-fun c!1103526 () Bool)

(assert (=> b!6136582 (= c!1103526 (is-Cons!64415 (exprs!5964 (h!70864 zl!343))))))

(declare-fun d!1922614 () Bool)

(declare-fun c!1103527 () Bool)

(assert (=> d!1922614 (= c!1103527 e!3740029)))

(declare-fun res!2542952 () Bool)

(assert (=> d!1922614 (=> (not res!2542952) (not e!3740029))))

(assert (=> d!1922614 (= res!2542952 (is-Cons!64415 (exprs!5964 (h!70864 zl!343))))))

(assert (=> d!1922614 (= (derivationStepZipperUp!1254 (h!70864 zl!343) (h!70865 s!2326)) e!3740030)))

(assert (= (and d!1922614 res!2542952) b!6136586))

(assert (= (and d!1922614 c!1103527) b!6136583))

(assert (= (and d!1922614 (not c!1103527)) b!6136582))

(assert (= (and b!6136582 c!1103526) b!6136585))

(assert (= (and b!6136582 (not c!1103526)) b!6136584))

(assert (= (or b!6136583 b!6136585) bm!509302))

(declare-fun m!6978928 () Bool)

(assert (=> b!6136583 m!6978928))

(declare-fun m!6978930 () Bool)

(assert (=> bm!509302 m!6978930))

(assert (=> b!6136586 m!6978780))

(assert (=> b!6136452 d!1922614))

(declare-fun d!1922616 () Bool)

(declare-fun choose!45598 ((Set Context!10928) Int) (Set Context!10928))

(assert (=> d!1922616 (= (flatMap!1585 z!1189 lambda!334390) (choose!45598 z!1189 lambda!334390))))

(declare-fun bs!1521889 () Bool)

(assert (= bs!1521889 d!1922616))

(declare-fun m!6978932 () Bool)

(assert (=> bs!1521889 m!6978932))

(assert (=> b!6136452 d!1922616))

(declare-fun b!6136609 () Bool)

(declare-fun e!3740044 () Bool)

(assert (=> b!6136609 (= e!3740044 (nullable!6073 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343))))))))

(declare-fun bm!509315 () Bool)

(declare-fun call!509324 () (Set Context!10928))

(declare-fun call!509322 () (Set Context!10928))

(assert (=> bm!509315 (= call!509324 call!509322)))

(declare-fun b!6136611 () Bool)

(declare-fun e!3740045 () (Set Context!10928))

(declare-fun call!509323 () (Set Context!10928))

(assert (=> b!6136611 (= e!3740045 (set.union call!509323 call!509322))))

(declare-fun bm!509316 () Bool)

(declare-fun call!509325 () (Set Context!10928))

(assert (=> bm!509316 (= call!509322 call!509325)))

(declare-fun c!1103539 () Bool)

(declare-fun c!1103538 () Bool)

(declare-fun bm!509317 () Bool)

(declare-fun call!509320 () List!64539)

(declare-fun $colon$colon!1957 (List!64539 Regex!16080) List!64539)

(assert (=> bm!509317 (= call!509320 ($colon$colon!1957 (exprs!5964 lt!2332553) (ite (or c!1103539 c!1103538) (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (h!70863 (exprs!5964 (h!70864 zl!343))))))))

(declare-fun bm!509318 () Bool)

(declare-fun call!509321 () List!64539)

(assert (=> bm!509318 (= call!509321 call!509320)))

(declare-fun b!6136612 () Bool)

(declare-fun e!3740047 () (Set Context!10928))

(declare-fun e!3740043 () (Set Context!10928))

(assert (=> b!6136612 (= e!3740047 e!3740043)))

(declare-fun c!1103541 () Bool)

(assert (=> b!6136612 (= c!1103541 (is-Union!16080 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun bm!509319 () Bool)

(assert (=> bm!509319 (= call!509325 (derivationStepZipperDown!1328 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343))))))) (ite (or c!1103541 c!1103539) lt!2332553 (Context!10929 call!509321)) (h!70865 s!2326)))))

(declare-fun b!6136613 () Bool)

(declare-fun e!3740048 () (Set Context!10928))

(assert (=> b!6136613 (= e!3740048 (as set.empty (Set Context!10928)))))

(declare-fun b!6136614 () Bool)

(assert (=> b!6136614 (= e!3740047 (set.insert lt!2332553 (as set.empty (Set Context!10928))))))

(declare-fun b!6136615 () Bool)

(assert (=> b!6136615 (= e!3740048 call!509324)))

(declare-fun b!6136616 () Bool)

(assert (=> b!6136616 (= e!3740043 (set.union call!509325 call!509323))))

(declare-fun b!6136617 () Bool)

(declare-fun e!3740046 () (Set Context!10928))

(assert (=> b!6136617 (= e!3740046 call!509324)))

(declare-fun b!6136618 () Bool)

(assert (=> b!6136618 (= e!3740045 e!3740046)))

(assert (=> b!6136618 (= c!1103538 (is-Concat!24925 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun b!6136610 () Bool)

(declare-fun c!1103542 () Bool)

(assert (=> b!6136610 (= c!1103542 (is-Star!16080 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(assert (=> b!6136610 (= e!3740046 e!3740048)))

(declare-fun d!1922618 () Bool)

(declare-fun c!1103540 () Bool)

(assert (=> d!1922618 (= c!1103540 (and (is-ElementMatch!16080 (h!70863 (exprs!5964 (h!70864 zl!343)))) (= (c!1103508 (h!70863 (exprs!5964 (h!70864 zl!343)))) (h!70865 s!2326))))))

(assert (=> d!1922618 (= (derivationStepZipperDown!1328 (h!70863 (exprs!5964 (h!70864 zl!343))) lt!2332553 (h!70865 s!2326)) e!3740047)))

(declare-fun b!6136619 () Bool)

(assert (=> b!6136619 (= c!1103539 e!3740044)))

(declare-fun res!2542955 () Bool)

(assert (=> b!6136619 (=> (not res!2542955) (not e!3740044))))

(assert (=> b!6136619 (= res!2542955 (is-Concat!24925 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(assert (=> b!6136619 (= e!3740043 e!3740045)))

(declare-fun bm!509320 () Bool)

(assert (=> bm!509320 (= call!509323 (derivationStepZipperDown!1328 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343))))) (ite c!1103541 lt!2332553 (Context!10929 call!509320)) (h!70865 s!2326)))))

(assert (= (and d!1922618 c!1103540) b!6136614))

(assert (= (and d!1922618 (not c!1103540)) b!6136612))

(assert (= (and b!6136612 c!1103541) b!6136616))

(assert (= (and b!6136612 (not c!1103541)) b!6136619))

(assert (= (and b!6136619 res!2542955) b!6136609))

(assert (= (and b!6136619 c!1103539) b!6136611))

(assert (= (and b!6136619 (not c!1103539)) b!6136618))

(assert (= (and b!6136618 c!1103538) b!6136617))

(assert (= (and b!6136618 (not c!1103538)) b!6136610))

(assert (= (and b!6136610 c!1103542) b!6136615))

(assert (= (and b!6136610 (not c!1103542)) b!6136613))

(assert (= (or b!6136617 b!6136615) bm!509318))

(assert (= (or b!6136617 b!6136615) bm!509315))

(assert (= (or b!6136611 bm!509318) bm!509317))

(assert (= (or b!6136611 bm!509315) bm!509316))

(assert (= (or b!6136616 b!6136611) bm!509320))

(assert (= (or b!6136616 bm!509316) bm!509319))

(declare-fun m!6978934 () Bool)

(assert (=> bm!509320 m!6978934))

(declare-fun m!6978936 () Bool)

(assert (=> b!6136609 m!6978936))

(declare-fun m!6978938 () Bool)

(assert (=> bm!509317 m!6978938))

(declare-fun m!6978940 () Bool)

(assert (=> bm!509319 m!6978940))

(declare-fun m!6978942 () Bool)

(assert (=> b!6136614 m!6978942))

(assert (=> b!6136452 d!1922618))

(declare-fun e!3740051 () Bool)

(declare-fun d!1922620 () Bool)

(assert (=> d!1922620 (= (matchZipper!2092 (set.union lt!2332533 lt!2332536) (t!378016 s!2326)) e!3740051)))

(declare-fun res!2542958 () Bool)

(assert (=> d!1922620 (=> res!2542958 e!3740051)))

(assert (=> d!1922620 (= res!2542958 (matchZipper!2092 lt!2332533 (t!378016 s!2326)))))

(declare-fun lt!2332625 () Unit!157475)

(declare-fun choose!45599 ((Set Context!10928) (Set Context!10928) List!64541) Unit!157475)

(assert (=> d!1922620 (= lt!2332625 (choose!45599 lt!2332533 lt!2332536 (t!378016 s!2326)))))

(assert (=> d!1922620 (= (lemmaZipperConcatMatchesSameAsBothZippers!911 lt!2332533 lt!2332536 (t!378016 s!2326)) lt!2332625)))

(declare-fun b!6136622 () Bool)

(assert (=> b!6136622 (= e!3740051 (matchZipper!2092 lt!2332536 (t!378016 s!2326)))))

(assert (= (and d!1922620 (not res!2542958)) b!6136622))

(assert (=> d!1922620 m!6978792))

(assert (=> d!1922620 m!6978768))

(declare-fun m!6978944 () Bool)

(assert (=> d!1922620 m!6978944))

(assert (=> b!6136622 m!6978760))

(assert (=> b!6136441 d!1922620))

(declare-fun d!1922622 () Bool)

(declare-fun c!1103545 () Bool)

(declare-fun isEmpty!36366 (List!64541) Bool)

(assert (=> d!1922622 (= c!1103545 (isEmpty!36366 (t!378016 s!2326)))))

(declare-fun e!3740054 () Bool)

(assert (=> d!1922622 (= (matchZipper!2092 lt!2332533 (t!378016 s!2326)) e!3740054)))

(declare-fun b!6136627 () Bool)

(declare-fun nullableZipper!1861 ((Set Context!10928)) Bool)

(assert (=> b!6136627 (= e!3740054 (nullableZipper!1861 lt!2332533))))

(declare-fun b!6136628 () Bool)

(declare-fun derivationStepZipper!2053 ((Set Context!10928) C!32430) (Set Context!10928))

(declare-fun head!12681 (List!64541) C!32430)

(declare-fun tail!11766 (List!64541) List!64541)

(assert (=> b!6136628 (= e!3740054 (matchZipper!2092 (derivationStepZipper!2053 lt!2332533 (head!12681 (t!378016 s!2326))) (tail!11766 (t!378016 s!2326))))))

(assert (= (and d!1922622 c!1103545) b!6136627))

(assert (= (and d!1922622 (not c!1103545)) b!6136628))

(declare-fun m!6978946 () Bool)

(assert (=> d!1922622 m!6978946))

(declare-fun m!6978948 () Bool)

(assert (=> b!6136627 m!6978948))

(declare-fun m!6978950 () Bool)

(assert (=> b!6136628 m!6978950))

(assert (=> b!6136628 m!6978950))

(declare-fun m!6978952 () Bool)

(assert (=> b!6136628 m!6978952))

(declare-fun m!6978954 () Bool)

(assert (=> b!6136628 m!6978954))

(assert (=> b!6136628 m!6978952))

(assert (=> b!6136628 m!6978954))

(declare-fun m!6978956 () Bool)

(assert (=> b!6136628 m!6978956))

(assert (=> b!6136441 d!1922622))

(declare-fun d!1922624 () Bool)

(declare-fun c!1103546 () Bool)

(assert (=> d!1922624 (= c!1103546 (isEmpty!36366 (t!378016 s!2326)))))

(declare-fun e!3740055 () Bool)

(assert (=> d!1922624 (= (matchZipper!2092 (set.union lt!2332533 lt!2332536) (t!378016 s!2326)) e!3740055)))

(declare-fun b!6136629 () Bool)

(assert (=> b!6136629 (= e!3740055 (nullableZipper!1861 (set.union lt!2332533 lt!2332536)))))

(declare-fun b!6136630 () Bool)

(assert (=> b!6136630 (= e!3740055 (matchZipper!2092 (derivationStepZipper!2053 (set.union lt!2332533 lt!2332536) (head!12681 (t!378016 s!2326))) (tail!11766 (t!378016 s!2326))))))

(assert (= (and d!1922624 c!1103546) b!6136629))

(assert (= (and d!1922624 (not c!1103546)) b!6136630))

(assert (=> d!1922624 m!6978946))

(declare-fun m!6978958 () Bool)

(assert (=> b!6136629 m!6978958))

(assert (=> b!6136630 m!6978950))

(assert (=> b!6136630 m!6978950))

(declare-fun m!6978960 () Bool)

(assert (=> b!6136630 m!6978960))

(assert (=> b!6136630 m!6978954))

(assert (=> b!6136630 m!6978960))

(assert (=> b!6136630 m!6978954))

(declare-fun m!6978962 () Bool)

(assert (=> b!6136630 m!6978962))

(assert (=> b!6136441 d!1922624))

(declare-fun d!1922626 () Bool)

(assert (=> d!1922626 (= (isEmpty!36362 (t!378015 zl!343)) (is-Nil!64416 (t!378015 zl!343)))))

(assert (=> b!6136426 d!1922626))

(declare-fun d!1922628 () Bool)

(declare-fun c!1103547 () Bool)

(assert (=> d!1922628 (= c!1103547 (isEmpty!36366 (t!378016 s!2326)))))

(declare-fun e!3740056 () Bool)

(assert (=> d!1922628 (= (matchZipper!2092 lt!2332536 (t!378016 s!2326)) e!3740056)))

(declare-fun b!6136631 () Bool)

(assert (=> b!6136631 (= e!3740056 (nullableZipper!1861 lt!2332536))))

(declare-fun b!6136632 () Bool)

(assert (=> b!6136632 (= e!3740056 (matchZipper!2092 (derivationStepZipper!2053 lt!2332536 (head!12681 (t!378016 s!2326))) (tail!11766 (t!378016 s!2326))))))

(assert (= (and d!1922628 c!1103547) b!6136631))

(assert (= (and d!1922628 (not c!1103547)) b!6136632))

(assert (=> d!1922628 m!6978946))

(declare-fun m!6978964 () Bool)

(assert (=> b!6136631 m!6978964))

(assert (=> b!6136632 m!6978950))

(assert (=> b!6136632 m!6978950))

(declare-fun m!6978966 () Bool)

(assert (=> b!6136632 m!6978966))

(assert (=> b!6136632 m!6978954))

(assert (=> b!6136632 m!6978966))

(assert (=> b!6136632 m!6978954))

(declare-fun m!6978968 () Bool)

(assert (=> b!6136632 m!6978968))

(assert (=> b!6136445 d!1922628))

(declare-fun d!1922630 () Bool)

(declare-fun c!1103548 () Bool)

(assert (=> d!1922630 (= c!1103548 (isEmpty!36366 (t!378016 s!2326)))))

(declare-fun e!3740057 () Bool)

(assert (=> d!1922630 (= (matchZipper!2092 lt!2332550 (t!378016 s!2326)) e!3740057)))

(declare-fun b!6136633 () Bool)

(assert (=> b!6136633 (= e!3740057 (nullableZipper!1861 lt!2332550))))

(declare-fun b!6136634 () Bool)

(assert (=> b!6136634 (= e!3740057 (matchZipper!2092 (derivationStepZipper!2053 lt!2332550 (head!12681 (t!378016 s!2326))) (tail!11766 (t!378016 s!2326))))))

(assert (= (and d!1922630 c!1103548) b!6136633))

(assert (= (and d!1922630 (not c!1103548)) b!6136634))

(assert (=> d!1922630 m!6978946))

(declare-fun m!6978970 () Bool)

(assert (=> b!6136633 m!6978970))

(assert (=> b!6136634 m!6978950))

(assert (=> b!6136634 m!6978950))

(declare-fun m!6978972 () Bool)

(assert (=> b!6136634 m!6978972))

(assert (=> b!6136634 m!6978954))

(assert (=> b!6136634 m!6978972))

(assert (=> b!6136634 m!6978954))

(declare-fun m!6978974 () Bool)

(assert (=> b!6136634 m!6978974))

(assert (=> b!6136433 d!1922630))

(declare-fun bm!509327 () Bool)

(declare-fun call!509332 () Bool)

(declare-fun call!509334 () Bool)

(assert (=> bm!509327 (= call!509332 call!509334)))

(declare-fun b!6136653 () Bool)

(declare-fun e!3740077 () Bool)

(declare-fun e!3740072 () Bool)

(assert (=> b!6136653 (= e!3740077 e!3740072)))

(declare-fun c!1103553 () Bool)

(assert (=> b!6136653 (= c!1103553 (is-Union!16080 r!7292))))

(declare-fun b!6136654 () Bool)

(declare-fun e!3740075 () Bool)

(assert (=> b!6136654 (= e!3740077 e!3740075)))

(declare-fun res!2542969 () Bool)

(assert (=> b!6136654 (= res!2542969 (not (nullable!6073 (reg!16409 r!7292))))))

(assert (=> b!6136654 (=> (not res!2542969) (not e!3740075))))

(declare-fun bm!509328 () Bool)

(declare-fun c!1103554 () Bool)

(assert (=> bm!509328 (= call!509334 (validRegex!7816 (ite c!1103554 (reg!16409 r!7292) (ite c!1103553 (regTwo!32673 r!7292) (regTwo!32672 r!7292)))))))

(declare-fun b!6136655 () Bool)

(declare-fun e!3740074 () Bool)

(assert (=> b!6136655 (= e!3740074 call!509332)))

(declare-fun b!6136656 () Bool)

(declare-fun res!2542970 () Bool)

(declare-fun e!3740076 () Bool)

(assert (=> b!6136656 (=> res!2542970 e!3740076)))

(assert (=> b!6136656 (= res!2542970 (not (is-Concat!24925 r!7292)))))

(assert (=> b!6136656 (= e!3740072 e!3740076)))

(declare-fun b!6136657 () Bool)

(assert (=> b!6136657 (= e!3740075 call!509334)))

(declare-fun b!6136658 () Bool)

(declare-fun e!3740073 () Bool)

(assert (=> b!6136658 (= e!3740073 call!509332)))

(declare-fun bm!509329 () Bool)

(declare-fun call!509333 () Bool)

(assert (=> bm!509329 (= call!509333 (validRegex!7816 (ite c!1103553 (regOne!32673 r!7292) (regOne!32672 r!7292))))))

(declare-fun b!6136660 () Bool)

(declare-fun e!3740078 () Bool)

(assert (=> b!6136660 (= e!3740078 e!3740077)))

(assert (=> b!6136660 (= c!1103554 (is-Star!16080 r!7292))))

(declare-fun b!6136661 () Bool)

(declare-fun res!2542973 () Bool)

(assert (=> b!6136661 (=> (not res!2542973) (not e!3740074))))

(assert (=> b!6136661 (= res!2542973 call!509333)))

(assert (=> b!6136661 (= e!3740072 e!3740074)))

(declare-fun d!1922632 () Bool)

(declare-fun res!2542971 () Bool)

(assert (=> d!1922632 (=> res!2542971 e!3740078)))

(assert (=> d!1922632 (= res!2542971 (is-ElementMatch!16080 r!7292))))

(assert (=> d!1922632 (= (validRegex!7816 r!7292) e!3740078)))

(declare-fun b!6136659 () Bool)

(assert (=> b!6136659 (= e!3740076 e!3740073)))

(declare-fun res!2542972 () Bool)

(assert (=> b!6136659 (=> (not res!2542972) (not e!3740073))))

(assert (=> b!6136659 (= res!2542972 call!509333)))

(assert (= (and d!1922632 (not res!2542971)) b!6136660))

(assert (= (and b!6136660 c!1103554) b!6136654))

(assert (= (and b!6136660 (not c!1103554)) b!6136653))

(assert (= (and b!6136654 res!2542969) b!6136657))

(assert (= (and b!6136653 c!1103553) b!6136661))

(assert (= (and b!6136653 (not c!1103553)) b!6136656))

(assert (= (and b!6136661 res!2542973) b!6136655))

(assert (= (and b!6136656 (not res!2542970)) b!6136659))

(assert (= (and b!6136659 res!2542972) b!6136658))

(assert (= (or b!6136655 b!6136658) bm!509327))

(assert (= (or b!6136661 b!6136659) bm!509329))

(assert (= (or b!6136657 bm!509327) bm!509328))

(declare-fun m!6978976 () Bool)

(assert (=> b!6136654 m!6978976))

(declare-fun m!6978978 () Bool)

(assert (=> bm!509328 m!6978978))

(declare-fun m!6978980 () Bool)

(assert (=> bm!509329 m!6978980))

(assert (=> start!612960 d!1922632))

(declare-fun b!6136680 () Bool)

(declare-fun e!3740093 () Option!15971)

(assert (=> b!6136680 (= e!3740093 None!15970)))

(declare-fun b!6136682 () Bool)

(declare-fun res!2542988 () Bool)

(declare-fun e!3740091 () Bool)

(assert (=> b!6136682 (=> (not res!2542988) (not e!3740091))))

(declare-fun lt!2332634 () Option!15971)

(declare-fun get!22222 (Option!15971) tuple2!66118)

(assert (=> b!6136682 (= res!2542988 (matchR!8263 (regOne!32672 r!7292) (_1!36362 (get!22222 lt!2332634))))))

(declare-fun b!6136683 () Bool)

(declare-fun res!2542985 () Bool)

(assert (=> b!6136683 (=> (not res!2542985) (not e!3740091))))

(assert (=> b!6136683 (= res!2542985 (matchR!8263 (regTwo!32672 r!7292) (_2!36362 (get!22222 lt!2332634))))))

(declare-fun b!6136684 () Bool)

(declare-fun ++!14166 (List!64541 List!64541) List!64541)

(assert (=> b!6136684 (= e!3740091 (= (++!14166 (_1!36362 (get!22222 lt!2332634)) (_2!36362 (get!22222 lt!2332634))) s!2326))))

(declare-fun b!6136681 () Bool)

(declare-fun e!3740092 () Option!15971)

(assert (=> b!6136681 (= e!3740092 (Some!15970 (tuple2!66119 Nil!64417 s!2326)))))

(declare-fun d!1922634 () Bool)

(declare-fun e!3740089 () Bool)

(assert (=> d!1922634 e!3740089))

(declare-fun res!2542984 () Bool)

(assert (=> d!1922634 (=> res!2542984 e!3740089)))

(assert (=> d!1922634 (= res!2542984 e!3740091)))

(declare-fun res!2542986 () Bool)

(assert (=> d!1922634 (=> (not res!2542986) (not e!3740091))))

(assert (=> d!1922634 (= res!2542986 (isDefined!12674 lt!2332634))))

(assert (=> d!1922634 (= lt!2332634 e!3740092)))

(declare-fun c!1103560 () Bool)

(declare-fun e!3740090 () Bool)

(assert (=> d!1922634 (= c!1103560 e!3740090)))

(declare-fun res!2542987 () Bool)

(assert (=> d!1922634 (=> (not res!2542987) (not e!3740090))))

(assert (=> d!1922634 (= res!2542987 (matchR!8263 (regOne!32672 r!7292) Nil!64417))))

(assert (=> d!1922634 (validRegex!7816 (regOne!32672 r!7292))))

(assert (=> d!1922634 (= (findConcatSeparation!2385 (regOne!32672 r!7292) (regTwo!32672 r!7292) Nil!64417 s!2326 s!2326) lt!2332634)))

(declare-fun b!6136685 () Bool)

(declare-fun lt!2332632 () Unit!157475)

(declare-fun lt!2332633 () Unit!157475)

(assert (=> b!6136685 (= lt!2332632 lt!2332633)))

(assert (=> b!6136685 (= (++!14166 (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417)) (t!378016 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2261 (List!64541 C!32430 List!64541 List!64541) Unit!157475)

(assert (=> b!6136685 (= lt!2332633 (lemmaMoveElementToOtherListKeepsConcatEq!2261 Nil!64417 (h!70865 s!2326) (t!378016 s!2326) s!2326))))

(assert (=> b!6136685 (= e!3740093 (findConcatSeparation!2385 (regOne!32672 r!7292) (regTwo!32672 r!7292) (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417)) (t!378016 s!2326) s!2326))))

(declare-fun b!6136686 () Bool)

(assert (=> b!6136686 (= e!3740092 e!3740093)))

(declare-fun c!1103559 () Bool)

(assert (=> b!6136686 (= c!1103559 (is-Nil!64417 s!2326))))

(declare-fun b!6136687 () Bool)

(assert (=> b!6136687 (= e!3740090 (matchR!8263 (regTwo!32672 r!7292) s!2326))))

(declare-fun b!6136688 () Bool)

(assert (=> b!6136688 (= e!3740089 (not (isDefined!12674 lt!2332634)))))

(assert (= (and d!1922634 res!2542987) b!6136687))

(assert (= (and d!1922634 c!1103560) b!6136681))

(assert (= (and d!1922634 (not c!1103560)) b!6136686))

(assert (= (and b!6136686 c!1103559) b!6136680))

(assert (= (and b!6136686 (not c!1103559)) b!6136685))

(assert (= (and d!1922634 res!2542986) b!6136682))

(assert (= (and b!6136682 res!2542988) b!6136683))

(assert (= (and b!6136683 res!2542985) b!6136684))

(assert (= (and d!1922634 (not res!2542984)) b!6136688))

(declare-fun m!6978982 () Bool)

(assert (=> b!6136688 m!6978982))

(declare-fun m!6978984 () Bool)

(assert (=> b!6136684 m!6978984))

(declare-fun m!6978986 () Bool)

(assert (=> b!6136684 m!6978986))

(assert (=> b!6136682 m!6978984))

(declare-fun m!6978988 () Bool)

(assert (=> b!6136682 m!6978988))

(assert (=> b!6136683 m!6978984))

(declare-fun m!6978990 () Bool)

(assert (=> b!6136683 m!6978990))

(declare-fun m!6978992 () Bool)

(assert (=> b!6136685 m!6978992))

(assert (=> b!6136685 m!6978992))

(declare-fun m!6978994 () Bool)

(assert (=> b!6136685 m!6978994))

(declare-fun m!6978996 () Bool)

(assert (=> b!6136685 m!6978996))

(assert (=> b!6136685 m!6978992))

(declare-fun m!6978998 () Bool)

(assert (=> b!6136685 m!6978998))

(declare-fun m!6979000 () Bool)

(assert (=> b!6136687 m!6979000))

(assert (=> d!1922634 m!6978982))

(declare-fun m!6979002 () Bool)

(assert (=> d!1922634 m!6979002))

(declare-fun m!6979004 () Bool)

(assert (=> d!1922634 m!6979004))

(assert (=> b!6136443 d!1922634))

(declare-fun d!1922636 () Bool)

(declare-fun choose!45600 (Int) Bool)

(assert (=> d!1922636 (= (Exists!3150 lambda!334388) (choose!45600 lambda!334388))))

(declare-fun bs!1521890 () Bool)

(assert (= bs!1521890 d!1922636))

(declare-fun m!6979006 () Bool)

(assert (=> bs!1521890 m!6979006))

(assert (=> b!6136443 d!1922636))

(declare-fun bs!1521891 () Bool)

(declare-fun d!1922638 () Bool)

(assert (= bs!1521891 (and d!1922638 b!6136443)))

(declare-fun lambda!334411 () Int)

(assert (=> bs!1521891 (= lambda!334411 lambda!334388)))

(assert (=> bs!1521891 (not (= lambda!334411 lambda!334389))))

(assert (=> d!1922638 true))

(assert (=> d!1922638 true))

(assert (=> d!1922638 true))

(declare-fun lambda!334412 () Int)

(assert (=> bs!1521891 (not (= lambda!334412 lambda!334388))))

(assert (=> bs!1521891 (= lambda!334412 lambda!334389)))

(declare-fun bs!1521892 () Bool)

(assert (= bs!1521892 d!1922638))

(assert (=> bs!1521892 (not (= lambda!334412 lambda!334411))))

(assert (=> d!1922638 true))

(assert (=> d!1922638 true))

(assert (=> d!1922638 true))

(assert (=> d!1922638 (= (Exists!3150 lambda!334411) (Exists!3150 lambda!334412))))

(declare-fun lt!2332637 () Unit!157475)

(declare-fun choose!45601 (Regex!16080 Regex!16080 List!64541) Unit!157475)

(assert (=> d!1922638 (= lt!2332637 (choose!45601 (regOne!32672 r!7292) (regTwo!32672 r!7292) s!2326))))

(assert (=> d!1922638 (validRegex!7816 (regOne!32672 r!7292))))

(assert (=> d!1922638 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1687 (regOne!32672 r!7292) (regTwo!32672 r!7292) s!2326) lt!2332637)))

(declare-fun m!6979008 () Bool)

(assert (=> bs!1521892 m!6979008))

(declare-fun m!6979010 () Bool)

(assert (=> bs!1521892 m!6979010))

(declare-fun m!6979012 () Bool)

(assert (=> bs!1521892 m!6979012))

(assert (=> bs!1521892 m!6979004))

(assert (=> b!6136443 d!1922638))

(declare-fun d!1922640 () Bool)

(declare-fun isEmpty!36367 (Option!15971) Bool)

(assert (=> d!1922640 (= (isDefined!12674 (findConcatSeparation!2385 (regOne!32672 r!7292) (regTwo!32672 r!7292) Nil!64417 s!2326 s!2326)) (not (isEmpty!36367 (findConcatSeparation!2385 (regOne!32672 r!7292) (regTwo!32672 r!7292) Nil!64417 s!2326 s!2326))))))

(declare-fun bs!1521893 () Bool)

(assert (= bs!1521893 d!1922640))

(assert (=> bs!1521893 m!6978744))

(declare-fun m!6979014 () Bool)

(assert (=> bs!1521893 m!6979014))

(assert (=> b!6136443 d!1922640))

(declare-fun d!1922642 () Bool)

(assert (=> d!1922642 (= (Exists!3150 lambda!334389) (choose!45600 lambda!334389))))

(declare-fun bs!1521894 () Bool)

(assert (= bs!1521894 d!1922642))

(declare-fun m!6979016 () Bool)

(assert (=> bs!1521894 m!6979016))

(assert (=> b!6136443 d!1922642))

(declare-fun bs!1521895 () Bool)

(declare-fun d!1922644 () Bool)

(assert (= bs!1521895 (and d!1922644 b!6136443)))

(declare-fun lambda!334415 () Int)

(assert (=> bs!1521895 (= lambda!334415 lambda!334388)))

(assert (=> bs!1521895 (not (= lambda!334415 lambda!334389))))

(declare-fun bs!1521896 () Bool)

(assert (= bs!1521896 (and d!1922644 d!1922638)))

(assert (=> bs!1521896 (= lambda!334415 lambda!334411)))

(assert (=> bs!1521896 (not (= lambda!334415 lambda!334412))))

(assert (=> d!1922644 true))

(assert (=> d!1922644 true))

(assert (=> d!1922644 true))

(assert (=> d!1922644 (= (isDefined!12674 (findConcatSeparation!2385 (regOne!32672 r!7292) (regTwo!32672 r!7292) Nil!64417 s!2326 s!2326)) (Exists!3150 lambda!334415))))

(declare-fun lt!2332640 () Unit!157475)

(declare-fun choose!45602 (Regex!16080 Regex!16080 List!64541) Unit!157475)

(assert (=> d!1922644 (= lt!2332640 (choose!45602 (regOne!32672 r!7292) (regTwo!32672 r!7292) s!2326))))

(assert (=> d!1922644 (validRegex!7816 (regOne!32672 r!7292))))

(assert (=> d!1922644 (= (lemmaFindConcatSeparationEquivalentToExists!2149 (regOne!32672 r!7292) (regTwo!32672 r!7292) s!2326) lt!2332640)))

(declare-fun bs!1521897 () Bool)

(assert (= bs!1521897 d!1922644))

(declare-fun m!6979018 () Bool)

(assert (=> bs!1521897 m!6979018))

(assert (=> bs!1521897 m!6978744))

(assert (=> bs!1521897 m!6979004))

(assert (=> bs!1521897 m!6978744))

(assert (=> bs!1521897 m!6978746))

(declare-fun m!6979020 () Bool)

(assert (=> bs!1521897 m!6979020))

(assert (=> b!6136443 d!1922644))

(declare-fun bs!1521898 () Bool)

(declare-fun b!6136743 () Bool)

(assert (= bs!1521898 (and b!6136743 d!1922644)))

(declare-fun lambda!334420 () Int)

(assert (=> bs!1521898 (not (= lambda!334420 lambda!334415))))

(declare-fun bs!1521899 () Bool)

(assert (= bs!1521899 (and b!6136743 d!1922638)))

(assert (=> bs!1521899 (not (= lambda!334420 lambda!334411))))

(declare-fun bs!1521900 () Bool)

(assert (= bs!1521900 (and b!6136743 b!6136443)))

(assert (=> bs!1521900 (not (= lambda!334420 lambda!334388))))

(assert (=> bs!1521899 (not (= lambda!334420 lambda!334412))))

(assert (=> bs!1521900 (not (= lambda!334420 lambda!334389))))

(assert (=> b!6136743 true))

(assert (=> b!6136743 true))

(declare-fun bs!1521901 () Bool)

(declare-fun b!6136739 () Bool)

(assert (= bs!1521901 (and b!6136739 b!6136743)))

(declare-fun lambda!334421 () Int)

(assert (=> bs!1521901 (not (= lambda!334421 lambda!334420))))

(declare-fun bs!1521902 () Bool)

(assert (= bs!1521902 (and b!6136739 d!1922644)))

(assert (=> bs!1521902 (not (= lambda!334421 lambda!334415))))

(declare-fun bs!1521903 () Bool)

(assert (= bs!1521903 (and b!6136739 d!1922638)))

(assert (=> bs!1521903 (not (= lambda!334421 lambda!334411))))

(declare-fun bs!1521904 () Bool)

(assert (= bs!1521904 (and b!6136739 b!6136443)))

(assert (=> bs!1521904 (not (= lambda!334421 lambda!334388))))

(assert (=> bs!1521903 (= lambda!334421 lambda!334412)))

(assert (=> bs!1521904 (= lambda!334421 lambda!334389)))

(assert (=> b!6136739 true))

(assert (=> b!6136739 true))

(declare-fun b!6136733 () Bool)

(declare-fun e!3740119 () Bool)

(declare-fun e!3740120 () Bool)

(assert (=> b!6136733 (= e!3740119 e!3740120)))

(declare-fun res!2543018 () Bool)

(assert (=> b!6136733 (= res!2543018 (matchRSpec!3181 (regOne!32673 r!7292) s!2326))))

(assert (=> b!6136733 (=> res!2543018 e!3740120)))

(declare-fun b!6136734 () Bool)

(declare-fun c!1103569 () Bool)

(assert (=> b!6136734 (= c!1103569 (is-ElementMatch!16080 r!7292))))

(declare-fun e!3740121 () Bool)

(declare-fun e!3740123 () Bool)

(assert (=> b!6136734 (= e!3740121 e!3740123)))

(declare-fun b!6136735 () Bool)

(declare-fun res!2543017 () Bool)

(declare-fun e!3740124 () Bool)

(assert (=> b!6136735 (=> res!2543017 e!3740124)))

(declare-fun call!509340 () Bool)

(assert (=> b!6136735 (= res!2543017 call!509340)))

(declare-fun e!3740118 () Bool)

(assert (=> b!6136735 (= e!3740118 e!3740124)))

(declare-fun b!6136736 () Bool)

(assert (=> b!6136736 (= e!3740123 (= s!2326 (Cons!64417 (c!1103508 r!7292) Nil!64417)))))

(declare-fun call!509339 () Bool)

(declare-fun c!1103570 () Bool)

(declare-fun bm!509334 () Bool)

(assert (=> bm!509334 (= call!509339 (Exists!3150 (ite c!1103570 lambda!334420 lambda!334421)))))

(declare-fun b!6136738 () Bool)

(declare-fun c!1103572 () Bool)

(assert (=> b!6136738 (= c!1103572 (is-Union!16080 r!7292))))

(assert (=> b!6136738 (= e!3740123 e!3740119)))

(assert (=> b!6136739 (= e!3740118 call!509339)))

(declare-fun b!6136740 () Bool)

(declare-fun e!3740122 () Bool)

(assert (=> b!6136740 (= e!3740122 e!3740121)))

(declare-fun res!2543019 () Bool)

(assert (=> b!6136740 (= res!2543019 (not (is-EmptyLang!16080 r!7292)))))

(assert (=> b!6136740 (=> (not res!2543019) (not e!3740121))))

(declare-fun b!6136741 () Bool)

(assert (=> b!6136741 (= e!3740119 e!3740118)))

(assert (=> b!6136741 (= c!1103570 (is-Star!16080 r!7292))))

(declare-fun bm!509335 () Bool)

(assert (=> bm!509335 (= call!509340 (isEmpty!36366 s!2326))))

(declare-fun b!6136742 () Bool)

(assert (=> b!6136742 (= e!3740122 call!509340)))

(assert (=> b!6136743 (= e!3740124 call!509339)))

(declare-fun d!1922646 () Bool)

(declare-fun c!1103571 () Bool)

(assert (=> d!1922646 (= c!1103571 (is-EmptyExpr!16080 r!7292))))

(assert (=> d!1922646 (= (matchRSpec!3181 r!7292 s!2326) e!3740122)))

(declare-fun b!6136737 () Bool)

(assert (=> b!6136737 (= e!3740120 (matchRSpec!3181 (regTwo!32673 r!7292) s!2326))))

(assert (= (and d!1922646 c!1103571) b!6136742))

(assert (= (and d!1922646 (not c!1103571)) b!6136740))

(assert (= (and b!6136740 res!2543019) b!6136734))

(assert (= (and b!6136734 c!1103569) b!6136736))

(assert (= (and b!6136734 (not c!1103569)) b!6136738))

(assert (= (and b!6136738 c!1103572) b!6136733))

(assert (= (and b!6136738 (not c!1103572)) b!6136741))

(assert (= (and b!6136733 (not res!2543018)) b!6136737))

(assert (= (and b!6136741 c!1103570) b!6136735))

(assert (= (and b!6136741 (not c!1103570)) b!6136739))

(assert (= (and b!6136735 (not res!2543017)) b!6136743))

(assert (= (or b!6136743 b!6136739) bm!509334))

(assert (= (or b!6136742 b!6136735) bm!509335))

(declare-fun m!6979022 () Bool)

(assert (=> b!6136733 m!6979022))

(declare-fun m!6979024 () Bool)

(assert (=> bm!509334 m!6979024))

(declare-fun m!6979026 () Bool)

(assert (=> bm!509335 m!6979026))

(declare-fun m!6979028 () Bool)

(assert (=> b!6136737 m!6979028))

(assert (=> b!6136448 d!1922646))

(declare-fun b!6136772 () Bool)

(declare-fun res!2543040 () Bool)

(declare-fun e!3740141 () Bool)

(assert (=> b!6136772 (=> res!2543040 e!3740141)))

(assert (=> b!6136772 (= res!2543040 (not (is-ElementMatch!16080 r!7292)))))

(declare-fun e!3740144 () Bool)

(assert (=> b!6136772 (= e!3740144 e!3740141)))

(declare-fun b!6136773 () Bool)

(declare-fun e!3740145 () Bool)

(declare-fun derivativeStep!4800 (Regex!16080 C!32430) Regex!16080)

(assert (=> b!6136773 (= e!3740145 (matchR!8263 (derivativeStep!4800 r!7292 (head!12681 s!2326)) (tail!11766 s!2326)))))

(declare-fun b!6136774 () Bool)

(declare-fun e!3740142 () Bool)

(assert (=> b!6136774 (= e!3740141 e!3740142)))

(declare-fun res!2543037 () Bool)

(assert (=> b!6136774 (=> (not res!2543037) (not e!3740142))))

(declare-fun lt!2332643 () Bool)

(assert (=> b!6136774 (= res!2543037 (not lt!2332643))))

(declare-fun b!6136775 () Bool)

(declare-fun e!3740139 () Bool)

(assert (=> b!6136775 (= e!3740142 e!3740139)))

(declare-fun res!2543041 () Bool)

(assert (=> b!6136775 (=> res!2543041 e!3740139)))

(declare-fun call!509343 () Bool)

(assert (=> b!6136775 (= res!2543041 call!509343)))

(declare-fun b!6136776 () Bool)

(assert (=> b!6136776 (= e!3740144 (not lt!2332643))))

(declare-fun b!6136777 () Bool)

(declare-fun e!3740140 () Bool)

(assert (=> b!6136777 (= e!3740140 (= lt!2332643 call!509343))))

(declare-fun b!6136778 () Bool)

(declare-fun res!2543039 () Bool)

(assert (=> b!6136778 (=> res!2543039 e!3740141)))

(declare-fun e!3740143 () Bool)

(assert (=> b!6136778 (= res!2543039 e!3740143)))

(declare-fun res!2543042 () Bool)

(assert (=> b!6136778 (=> (not res!2543042) (not e!3740143))))

(assert (=> b!6136778 (= res!2543042 lt!2332643)))

(declare-fun b!6136779 () Bool)

(assert (=> b!6136779 (= e!3740139 (not (= (head!12681 s!2326) (c!1103508 r!7292))))))

(declare-fun d!1922648 () Bool)

(assert (=> d!1922648 e!3740140))

(declare-fun c!1103581 () Bool)

(assert (=> d!1922648 (= c!1103581 (is-EmptyExpr!16080 r!7292))))

(assert (=> d!1922648 (= lt!2332643 e!3740145)))

(declare-fun c!1103580 () Bool)

(assert (=> d!1922648 (= c!1103580 (isEmpty!36366 s!2326))))

(assert (=> d!1922648 (validRegex!7816 r!7292)))

(assert (=> d!1922648 (= (matchR!8263 r!7292 s!2326) lt!2332643)))

(declare-fun b!6136780 () Bool)

(assert (=> b!6136780 (= e!3740143 (= (head!12681 s!2326) (c!1103508 r!7292)))))

(declare-fun b!6136781 () Bool)

(declare-fun res!2543043 () Bool)

(assert (=> b!6136781 (=> (not res!2543043) (not e!3740143))))

(assert (=> b!6136781 (= res!2543043 (isEmpty!36366 (tail!11766 s!2326)))))

(declare-fun b!6136782 () Bool)

(assert (=> b!6136782 (= e!3740145 (nullable!6073 r!7292))))

(declare-fun b!6136783 () Bool)

(declare-fun res!2543038 () Bool)

(assert (=> b!6136783 (=> res!2543038 e!3740139)))

(assert (=> b!6136783 (= res!2543038 (not (isEmpty!36366 (tail!11766 s!2326))))))

(declare-fun b!6136784 () Bool)

(declare-fun res!2543036 () Bool)

(assert (=> b!6136784 (=> (not res!2543036) (not e!3740143))))

(assert (=> b!6136784 (= res!2543036 (not call!509343))))

(declare-fun bm!509338 () Bool)

(assert (=> bm!509338 (= call!509343 (isEmpty!36366 s!2326))))

(declare-fun b!6136785 () Bool)

(assert (=> b!6136785 (= e!3740140 e!3740144)))

(declare-fun c!1103579 () Bool)

(assert (=> b!6136785 (= c!1103579 (is-EmptyLang!16080 r!7292))))

(assert (= (and d!1922648 c!1103580) b!6136782))

(assert (= (and d!1922648 (not c!1103580)) b!6136773))

(assert (= (and d!1922648 c!1103581) b!6136777))

(assert (= (and d!1922648 (not c!1103581)) b!6136785))

(assert (= (and b!6136785 c!1103579) b!6136776))

(assert (= (and b!6136785 (not c!1103579)) b!6136772))

(assert (= (and b!6136772 (not res!2543040)) b!6136778))

(assert (= (and b!6136778 res!2543042) b!6136784))

(assert (= (and b!6136784 res!2543036) b!6136781))

(assert (= (and b!6136781 res!2543043) b!6136780))

(assert (= (and b!6136778 (not res!2543039)) b!6136774))

(assert (= (and b!6136774 res!2543037) b!6136775))

(assert (= (and b!6136775 (not res!2543041)) b!6136783))

(assert (= (and b!6136783 (not res!2543038)) b!6136779))

(assert (= (or b!6136777 b!6136775 b!6136784) bm!509338))

(assert (=> d!1922648 m!6979026))

(assert (=> d!1922648 m!6978794))

(declare-fun m!6979030 () Bool)

(assert (=> b!6136780 m!6979030))

(assert (=> b!6136773 m!6979030))

(assert (=> b!6136773 m!6979030))

(declare-fun m!6979032 () Bool)

(assert (=> b!6136773 m!6979032))

(declare-fun m!6979034 () Bool)

(assert (=> b!6136773 m!6979034))

(assert (=> b!6136773 m!6979032))

(assert (=> b!6136773 m!6979034))

(declare-fun m!6979036 () Bool)

(assert (=> b!6136773 m!6979036))

(declare-fun m!6979038 () Bool)

(assert (=> b!6136782 m!6979038))

(assert (=> b!6136779 m!6979030))

(assert (=> b!6136781 m!6979034))

(assert (=> b!6136781 m!6979034))

(declare-fun m!6979040 () Bool)

(assert (=> b!6136781 m!6979040))

(assert (=> bm!509338 m!6979026))

(assert (=> b!6136783 m!6979034))

(assert (=> b!6136783 m!6979034))

(assert (=> b!6136783 m!6979040))

(assert (=> b!6136448 d!1922648))

(declare-fun d!1922650 () Bool)

(assert (=> d!1922650 (= (matchR!8263 r!7292 s!2326) (matchRSpec!3181 r!7292 s!2326))))

(declare-fun lt!2332646 () Unit!157475)

(declare-fun choose!45603 (Regex!16080 List!64541) Unit!157475)

(assert (=> d!1922650 (= lt!2332646 (choose!45603 r!7292 s!2326))))

(assert (=> d!1922650 (validRegex!7816 r!7292)))

(assert (=> d!1922650 (= (mainMatchTheorem!3181 r!7292 s!2326) lt!2332646)))

(declare-fun bs!1521905 () Bool)

(assert (= bs!1521905 d!1922650))

(assert (=> bs!1521905 m!6978804))

(assert (=> bs!1521905 m!6978802))

(declare-fun m!6979042 () Bool)

(assert (=> bs!1521905 m!6979042))

(assert (=> bs!1521905 m!6978794))

(assert (=> b!6136448 d!1922650))

(declare-fun d!1922652 () Bool)

(assert (=> d!1922652 (= (nullable!6073 (regOne!32673 (regOne!32672 r!7292))) (nullableFct!2037 (regOne!32673 (regOne!32672 r!7292))))))

(declare-fun bs!1521906 () Bool)

(assert (= bs!1521906 d!1922652))

(declare-fun m!6979044 () Bool)

(assert (=> bs!1521906 m!6979044))

(assert (=> b!6136437 d!1922652))

(declare-fun d!1922654 () Bool)

(assert (=> d!1922654 (= (flatMap!1585 lt!2332545 lambda!334390) (choose!45598 lt!2332545 lambda!334390))))

(declare-fun bs!1521907 () Bool)

(assert (= bs!1521907 d!1922654))

(declare-fun m!6979046 () Bool)

(assert (=> bs!1521907 m!6979046))

(assert (=> b!6136437 d!1922654))

(declare-fun b!6136787 () Bool)

(declare-fun e!3740148 () (Set Context!10928))

(declare-fun call!509344 () (Set Context!10928))

(assert (=> b!6136787 (= e!3740148 (set.union call!509344 (derivationStepZipperUp!1254 (Context!10929 (t!378014 (exprs!5964 lt!2332539))) (h!70865 s!2326))))))

(declare-fun b!6136788 () Bool)

(declare-fun e!3740146 () (Set Context!10928))

(assert (=> b!6136788 (= e!3740146 (as set.empty (Set Context!10928)))))

(declare-fun b!6136789 () Bool)

(assert (=> b!6136789 (= e!3740146 call!509344)))

(declare-fun bm!509339 () Bool)

(assert (=> bm!509339 (= call!509344 (derivationStepZipperDown!1328 (h!70863 (exprs!5964 lt!2332539)) (Context!10929 (t!378014 (exprs!5964 lt!2332539))) (h!70865 s!2326)))))

(declare-fun b!6136790 () Bool)

(declare-fun e!3740147 () Bool)

(assert (=> b!6136790 (= e!3740147 (nullable!6073 (h!70863 (exprs!5964 lt!2332539))))))

(declare-fun b!6136786 () Bool)

(assert (=> b!6136786 (= e!3740148 e!3740146)))

(declare-fun c!1103582 () Bool)

(assert (=> b!6136786 (= c!1103582 (is-Cons!64415 (exprs!5964 lt!2332539)))))

(declare-fun d!1922656 () Bool)

(declare-fun c!1103583 () Bool)

(assert (=> d!1922656 (= c!1103583 e!3740147)))

(declare-fun res!2543044 () Bool)

(assert (=> d!1922656 (=> (not res!2543044) (not e!3740147))))

(assert (=> d!1922656 (= res!2543044 (is-Cons!64415 (exprs!5964 lt!2332539)))))

(assert (=> d!1922656 (= (derivationStepZipperUp!1254 lt!2332539 (h!70865 s!2326)) e!3740148)))

(assert (= (and d!1922656 res!2543044) b!6136790))

(assert (= (and d!1922656 c!1103583) b!6136787))

(assert (= (and d!1922656 (not c!1103583)) b!6136786))

(assert (= (and b!6136786 c!1103582) b!6136789))

(assert (= (and b!6136786 (not c!1103582)) b!6136788))

(assert (= (or b!6136787 b!6136789) bm!509339))

(declare-fun m!6979048 () Bool)

(assert (=> b!6136787 m!6979048))

(declare-fun m!6979050 () Bool)

(assert (=> bm!509339 m!6979050))

(declare-fun m!6979052 () Bool)

(assert (=> b!6136790 m!6979052))

(assert (=> b!6136437 d!1922656))

(declare-fun d!1922658 () Bool)

(assert (=> d!1922658 (= (flatMap!1585 lt!2332545 lambda!334390) (dynLambda!25381 lambda!334390 lt!2332539))))

(declare-fun lt!2332647 () Unit!157475)

(assert (=> d!1922658 (= lt!2332647 (choose!45597 lt!2332545 lt!2332539 lambda!334390))))

(assert (=> d!1922658 (= lt!2332545 (set.insert lt!2332539 (as set.empty (Set Context!10928))))))

(assert (=> d!1922658 (= (lemmaFlatMapOnSingletonSet!1111 lt!2332545 lt!2332539 lambda!334390) lt!2332647)))

(declare-fun b_lambda!233571 () Bool)

(assert (=> (not b_lambda!233571) (not d!1922658)))

(declare-fun bs!1521908 () Bool)

(assert (= bs!1521908 d!1922658))

(assert (=> bs!1521908 m!6978816))

(declare-fun m!6979054 () Bool)

(assert (=> bs!1521908 m!6979054))

(declare-fun m!6979056 () Bool)

(assert (=> bs!1521908 m!6979056))

(assert (=> bs!1521908 m!6978818))

(assert (=> b!6136437 d!1922658))

(declare-fun bs!1521909 () Bool)

(declare-fun d!1922660 () Bool)

(assert (= bs!1521909 (and d!1922660 d!1922600)))

(declare-fun lambda!334424 () Int)

(assert (=> bs!1521909 (= lambda!334424 lambda!334406)))

(declare-fun b!6136811 () Bool)

(declare-fun e!3740161 () Bool)

(declare-fun lt!2332650 () Regex!16080)

(declare-fun isUnion!937 (Regex!16080) Bool)

(assert (=> b!6136811 (= e!3740161 (isUnion!937 lt!2332650))))

(declare-fun b!6136812 () Bool)

(declare-fun e!3740162 () Bool)

(declare-fun isEmptyLang!1507 (Regex!16080) Bool)

(assert (=> b!6136812 (= e!3740162 (isEmptyLang!1507 lt!2332650))))

(declare-fun b!6136813 () Bool)

(declare-fun e!3740163 () Regex!16080)

(assert (=> b!6136813 (= e!3740163 (Union!16080 (h!70863 (unfocusZipperList!1501 zl!343)) (generalisedUnion!1924 (t!378014 (unfocusZipperList!1501 zl!343)))))))

(declare-fun b!6136814 () Bool)

(assert (=> b!6136814 (= e!3740163 EmptyLang!16080)))

(declare-fun b!6136815 () Bool)

(declare-fun e!3740166 () Bool)

(assert (=> b!6136815 (= e!3740166 e!3740162)))

(declare-fun c!1103593 () Bool)

(assert (=> b!6136815 (= c!1103593 (isEmpty!36363 (unfocusZipperList!1501 zl!343)))))

(declare-fun b!6136816 () Bool)

(assert (=> b!6136816 (= e!3740162 e!3740161)))

(declare-fun c!1103592 () Bool)

(declare-fun tail!11767 (List!64539) List!64539)

(assert (=> b!6136816 (= c!1103592 (isEmpty!36363 (tail!11767 (unfocusZipperList!1501 zl!343))))))

(declare-fun b!6136817 () Bool)

(declare-fun e!3740164 () Regex!16080)

(assert (=> b!6136817 (= e!3740164 (h!70863 (unfocusZipperList!1501 zl!343)))))

(declare-fun b!6136818 () Bool)

(declare-fun head!12682 (List!64539) Regex!16080)

(assert (=> b!6136818 (= e!3740161 (= lt!2332650 (head!12682 (unfocusZipperList!1501 zl!343))))))

(assert (=> d!1922660 e!3740166))

(declare-fun res!2543050 () Bool)

(assert (=> d!1922660 (=> (not res!2543050) (not e!3740166))))

(assert (=> d!1922660 (= res!2543050 (validRegex!7816 lt!2332650))))

(assert (=> d!1922660 (= lt!2332650 e!3740164)))

(declare-fun c!1103595 () Bool)

(declare-fun e!3740165 () Bool)

(assert (=> d!1922660 (= c!1103595 e!3740165)))

(declare-fun res!2543049 () Bool)

(assert (=> d!1922660 (=> (not res!2543049) (not e!3740165))))

(assert (=> d!1922660 (= res!2543049 (is-Cons!64415 (unfocusZipperList!1501 zl!343)))))

(assert (=> d!1922660 (forall!15201 (unfocusZipperList!1501 zl!343) lambda!334424)))

(assert (=> d!1922660 (= (generalisedUnion!1924 (unfocusZipperList!1501 zl!343)) lt!2332650)))

(declare-fun b!6136819 () Bool)

(assert (=> b!6136819 (= e!3740165 (isEmpty!36363 (t!378014 (unfocusZipperList!1501 zl!343))))))

(declare-fun b!6136820 () Bool)

(assert (=> b!6136820 (= e!3740164 e!3740163)))

(declare-fun c!1103594 () Bool)

(assert (=> b!6136820 (= c!1103594 (is-Cons!64415 (unfocusZipperList!1501 zl!343)))))

(assert (= (and d!1922660 res!2543049) b!6136819))

(assert (= (and d!1922660 c!1103595) b!6136817))

(assert (= (and d!1922660 (not c!1103595)) b!6136820))

(assert (= (and b!6136820 c!1103594) b!6136813))

(assert (= (and b!6136820 (not c!1103594)) b!6136814))

(assert (= (and d!1922660 res!2543050) b!6136815))

(assert (= (and b!6136815 c!1103593) b!6136812))

(assert (= (and b!6136815 (not c!1103593)) b!6136816))

(assert (= (and b!6136816 c!1103592) b!6136818))

(assert (= (and b!6136816 (not c!1103592)) b!6136811))

(declare-fun m!6979058 () Bool)

(assert (=> d!1922660 m!6979058))

(assert (=> d!1922660 m!6978796))

(declare-fun m!6979060 () Bool)

(assert (=> d!1922660 m!6979060))

(declare-fun m!6979062 () Bool)

(assert (=> b!6136813 m!6979062))

(assert (=> b!6136816 m!6978796))

(declare-fun m!6979064 () Bool)

(assert (=> b!6136816 m!6979064))

(assert (=> b!6136816 m!6979064))

(declare-fun m!6979066 () Bool)

(assert (=> b!6136816 m!6979066))

(declare-fun m!6979068 () Bool)

(assert (=> b!6136811 m!6979068))

(declare-fun m!6979070 () Bool)

(assert (=> b!6136812 m!6979070))

(assert (=> b!6136815 m!6978796))

(declare-fun m!6979072 () Bool)

(assert (=> b!6136815 m!6979072))

(declare-fun m!6979074 () Bool)

(assert (=> b!6136819 m!6979074))

(assert (=> b!6136818 m!6978796))

(declare-fun m!6979076 () Bool)

(assert (=> b!6136818 m!6979076))

(assert (=> b!6136427 d!1922660))

(declare-fun bs!1521910 () Bool)

(declare-fun d!1922662 () Bool)

(assert (= bs!1521910 (and d!1922662 d!1922600)))

(declare-fun lambda!334427 () Int)

(assert (=> bs!1521910 (= lambda!334427 lambda!334406)))

(declare-fun bs!1521911 () Bool)

(assert (= bs!1521911 (and d!1922662 d!1922660)))

(assert (=> bs!1521911 (= lambda!334427 lambda!334424)))

(declare-fun lt!2332653 () List!64539)

(assert (=> d!1922662 (forall!15201 lt!2332653 lambda!334427)))

(declare-fun e!3740169 () List!64539)

(assert (=> d!1922662 (= lt!2332653 e!3740169)))

(declare-fun c!1103598 () Bool)

(assert (=> d!1922662 (= c!1103598 (is-Cons!64416 zl!343))))

(assert (=> d!1922662 (= (unfocusZipperList!1501 zl!343) lt!2332653)))

(declare-fun b!6136825 () Bool)

(assert (=> b!6136825 (= e!3740169 (Cons!64415 (generalisedConcat!1677 (exprs!5964 (h!70864 zl!343))) (unfocusZipperList!1501 (t!378015 zl!343))))))

(declare-fun b!6136826 () Bool)

(assert (=> b!6136826 (= e!3740169 Nil!64415)))

(assert (= (and d!1922662 c!1103598) b!6136825))

(assert (= (and d!1922662 (not c!1103598)) b!6136826))

(declare-fun m!6979078 () Bool)

(assert (=> d!1922662 m!6979078))

(assert (=> b!6136825 m!6978766))

(declare-fun m!6979080 () Bool)

(assert (=> b!6136825 m!6979080))

(assert (=> b!6136427 d!1922662))

(declare-fun bs!1521912 () Bool)

(declare-fun d!1922664 () Bool)

(assert (= bs!1521912 (and d!1922664 d!1922600)))

(declare-fun lambda!334428 () Int)

(assert (=> bs!1521912 (= lambda!334428 lambda!334406)))

(declare-fun bs!1521913 () Bool)

(assert (= bs!1521913 (and d!1922664 d!1922660)))

(assert (=> bs!1521913 (= lambda!334428 lambda!334424)))

(declare-fun bs!1521914 () Bool)

(assert (= bs!1521914 (and d!1922664 d!1922662)))

(assert (=> bs!1521914 (= lambda!334428 lambda!334427)))

(assert (=> d!1922664 (= (inv!83448 setElem!41493) (forall!15201 (exprs!5964 setElem!41493) lambda!334428))))

(declare-fun bs!1521915 () Bool)

(assert (= bs!1521915 d!1922664))

(declare-fun m!6979082 () Bool)

(assert (=> bs!1521915 m!6979082))

(assert (=> setNonEmpty!41493 d!1922664))

(declare-fun b!6136827 () Bool)

(declare-fun e!3740171 () Bool)

(assert (=> b!6136827 (= e!3740171 (nullable!6073 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292)))))))

(declare-fun bm!509340 () Bool)

(declare-fun call!509349 () (Set Context!10928))

(declare-fun call!509347 () (Set Context!10928))

(assert (=> bm!509340 (= call!509349 call!509347)))

(declare-fun b!6136829 () Bool)

(declare-fun e!3740172 () (Set Context!10928))

(declare-fun call!509348 () (Set Context!10928))

(assert (=> b!6136829 (= e!3740172 (set.union call!509348 call!509347))))

(declare-fun bm!509341 () Bool)

(declare-fun call!509350 () (Set Context!10928))

(assert (=> bm!509341 (= call!509347 call!509350)))

(declare-fun c!1103599 () Bool)

(declare-fun call!509345 () List!64539)

(declare-fun bm!509342 () Bool)

(declare-fun c!1103600 () Bool)

(assert (=> bm!509342 (= call!509345 ($colon$colon!1957 (exprs!5964 lt!2332553) (ite (or c!1103600 c!1103599) (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (regTwo!32673 (regOne!32672 r!7292)))))))

(declare-fun bm!509343 () Bool)

(declare-fun call!509346 () List!64539)

(assert (=> bm!509343 (= call!509346 call!509345)))

(declare-fun b!6136830 () Bool)

(declare-fun e!3740174 () (Set Context!10928))

(declare-fun e!3740170 () (Set Context!10928))

(assert (=> b!6136830 (= e!3740174 e!3740170)))

(declare-fun c!1103602 () Bool)

(assert (=> b!6136830 (= c!1103602 (is-Union!16080 (regTwo!32673 (regOne!32672 r!7292))))))

(declare-fun bm!509344 () Bool)

(assert (=> bm!509344 (= call!509350 (derivationStepZipperDown!1328 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292)))))) (ite (or c!1103602 c!1103600) lt!2332553 (Context!10929 call!509346)) (h!70865 s!2326)))))

(declare-fun b!6136831 () Bool)

(declare-fun e!3740175 () (Set Context!10928))

(assert (=> b!6136831 (= e!3740175 (as set.empty (Set Context!10928)))))

(declare-fun b!6136832 () Bool)

(assert (=> b!6136832 (= e!3740174 (set.insert lt!2332553 (as set.empty (Set Context!10928))))))

(declare-fun b!6136833 () Bool)

(assert (=> b!6136833 (= e!3740175 call!509349)))

(declare-fun b!6136834 () Bool)

(assert (=> b!6136834 (= e!3740170 (set.union call!509350 call!509348))))

(declare-fun b!6136835 () Bool)

(declare-fun e!3740173 () (Set Context!10928))

(assert (=> b!6136835 (= e!3740173 call!509349)))

(declare-fun b!6136836 () Bool)

(assert (=> b!6136836 (= e!3740172 e!3740173)))

(assert (=> b!6136836 (= c!1103599 (is-Concat!24925 (regTwo!32673 (regOne!32672 r!7292))))))

(declare-fun b!6136828 () Bool)

(declare-fun c!1103603 () Bool)

(assert (=> b!6136828 (= c!1103603 (is-Star!16080 (regTwo!32673 (regOne!32672 r!7292))))))

(assert (=> b!6136828 (= e!3740173 e!3740175)))

(declare-fun d!1922666 () Bool)

(declare-fun c!1103601 () Bool)

(assert (=> d!1922666 (= c!1103601 (and (is-ElementMatch!16080 (regTwo!32673 (regOne!32672 r!7292))) (= (c!1103508 (regTwo!32673 (regOne!32672 r!7292))) (h!70865 s!2326))))))

(assert (=> d!1922666 (= (derivationStepZipperDown!1328 (regTwo!32673 (regOne!32672 r!7292)) lt!2332553 (h!70865 s!2326)) e!3740174)))

(declare-fun b!6136837 () Bool)

(assert (=> b!6136837 (= c!1103600 e!3740171)))

(declare-fun res!2543051 () Bool)

(assert (=> b!6136837 (=> (not res!2543051) (not e!3740171))))

(assert (=> b!6136837 (= res!2543051 (is-Concat!24925 (regTwo!32673 (regOne!32672 r!7292))))))

(assert (=> b!6136837 (= e!3740170 e!3740172)))

(declare-fun bm!509345 () Bool)

(assert (=> bm!509345 (= call!509348 (derivationStepZipperDown!1328 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292)))) (ite c!1103602 lt!2332553 (Context!10929 call!509345)) (h!70865 s!2326)))))

(assert (= (and d!1922666 c!1103601) b!6136832))

(assert (= (and d!1922666 (not c!1103601)) b!6136830))

(assert (= (and b!6136830 c!1103602) b!6136834))

(assert (= (and b!6136830 (not c!1103602)) b!6136837))

(assert (= (and b!6136837 res!2543051) b!6136827))

(assert (= (and b!6136837 c!1103600) b!6136829))

(assert (= (and b!6136837 (not c!1103600)) b!6136836))

(assert (= (and b!6136836 c!1103599) b!6136835))

(assert (= (and b!6136836 (not c!1103599)) b!6136828))

(assert (= (and b!6136828 c!1103603) b!6136833))

(assert (= (and b!6136828 (not c!1103603)) b!6136831))

(assert (= (or b!6136835 b!6136833) bm!509343))

(assert (= (or b!6136835 b!6136833) bm!509340))

(assert (= (or b!6136829 bm!509343) bm!509342))

(assert (= (or b!6136829 bm!509340) bm!509341))

(assert (= (or b!6136834 b!6136829) bm!509345))

(assert (= (or b!6136834 bm!509341) bm!509344))

(declare-fun m!6979084 () Bool)

(assert (=> bm!509345 m!6979084))

(declare-fun m!6979086 () Bool)

(assert (=> b!6136827 m!6979086))

(declare-fun m!6979088 () Bool)

(assert (=> bm!509342 m!6979088))

(declare-fun m!6979090 () Bool)

(assert (=> bm!509344 m!6979090))

(assert (=> b!6136832 m!6978942))

(assert (=> b!6136446 d!1922666))

(declare-fun b!6136838 () Bool)

(declare-fun e!3740177 () Bool)

(assert (=> b!6136838 (= e!3740177 (nullable!6073 (regOne!32672 (regOne!32673 (regOne!32672 r!7292)))))))

(declare-fun bm!509346 () Bool)

(declare-fun call!509355 () (Set Context!10928))

(declare-fun call!509353 () (Set Context!10928))

(assert (=> bm!509346 (= call!509355 call!509353)))

(declare-fun b!6136840 () Bool)

(declare-fun e!3740178 () (Set Context!10928))

(declare-fun call!509354 () (Set Context!10928))

(assert (=> b!6136840 (= e!3740178 (set.union call!509354 call!509353))))

(declare-fun bm!509347 () Bool)

(declare-fun call!509356 () (Set Context!10928))

(assert (=> bm!509347 (= call!509353 call!509356)))

(declare-fun bm!509348 () Bool)

(declare-fun c!1103604 () Bool)

(declare-fun call!509351 () List!64539)

(declare-fun c!1103605 () Bool)

(assert (=> bm!509348 (= call!509351 ($colon$colon!1957 (exprs!5964 lt!2332553) (ite (or c!1103605 c!1103604) (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (regOne!32673 (regOne!32672 r!7292)))))))

(declare-fun bm!509349 () Bool)

(declare-fun call!509352 () List!64539)

(assert (=> bm!509349 (= call!509352 call!509351)))

(declare-fun b!6136841 () Bool)

(declare-fun e!3740180 () (Set Context!10928))

(declare-fun e!3740176 () (Set Context!10928))

(assert (=> b!6136841 (= e!3740180 e!3740176)))

(declare-fun c!1103607 () Bool)

(assert (=> b!6136841 (= c!1103607 (is-Union!16080 (regOne!32673 (regOne!32672 r!7292))))))

(declare-fun bm!509350 () Bool)

(assert (=> bm!509350 (= call!509356 (derivationStepZipperDown!1328 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292)))))) (ite (or c!1103607 c!1103605) lt!2332553 (Context!10929 call!509352)) (h!70865 s!2326)))))

(declare-fun b!6136842 () Bool)

(declare-fun e!3740181 () (Set Context!10928))

(assert (=> b!6136842 (= e!3740181 (as set.empty (Set Context!10928)))))

(declare-fun b!6136843 () Bool)

(assert (=> b!6136843 (= e!3740180 (set.insert lt!2332553 (as set.empty (Set Context!10928))))))

(declare-fun b!6136844 () Bool)

(assert (=> b!6136844 (= e!3740181 call!509355)))

(declare-fun b!6136845 () Bool)

(assert (=> b!6136845 (= e!3740176 (set.union call!509356 call!509354))))

(declare-fun b!6136846 () Bool)

(declare-fun e!3740179 () (Set Context!10928))

(assert (=> b!6136846 (= e!3740179 call!509355)))

(declare-fun b!6136847 () Bool)

(assert (=> b!6136847 (= e!3740178 e!3740179)))

(assert (=> b!6136847 (= c!1103604 (is-Concat!24925 (regOne!32673 (regOne!32672 r!7292))))))

(declare-fun b!6136839 () Bool)

(declare-fun c!1103608 () Bool)

(assert (=> b!6136839 (= c!1103608 (is-Star!16080 (regOne!32673 (regOne!32672 r!7292))))))

(assert (=> b!6136839 (= e!3740179 e!3740181)))

(declare-fun d!1922668 () Bool)

(declare-fun c!1103606 () Bool)

(assert (=> d!1922668 (= c!1103606 (and (is-ElementMatch!16080 (regOne!32673 (regOne!32672 r!7292))) (= (c!1103508 (regOne!32673 (regOne!32672 r!7292))) (h!70865 s!2326))))))

(assert (=> d!1922668 (= (derivationStepZipperDown!1328 (regOne!32673 (regOne!32672 r!7292)) lt!2332553 (h!70865 s!2326)) e!3740180)))

(declare-fun b!6136848 () Bool)

(assert (=> b!6136848 (= c!1103605 e!3740177)))

(declare-fun res!2543052 () Bool)

(assert (=> b!6136848 (=> (not res!2543052) (not e!3740177))))

(assert (=> b!6136848 (= res!2543052 (is-Concat!24925 (regOne!32673 (regOne!32672 r!7292))))))

(assert (=> b!6136848 (= e!3740176 e!3740178)))

(declare-fun bm!509351 () Bool)

(assert (=> bm!509351 (= call!509354 (derivationStepZipperDown!1328 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292)))) (ite c!1103607 lt!2332553 (Context!10929 call!509351)) (h!70865 s!2326)))))

(assert (= (and d!1922668 c!1103606) b!6136843))

(assert (= (and d!1922668 (not c!1103606)) b!6136841))

(assert (= (and b!6136841 c!1103607) b!6136845))

(assert (= (and b!6136841 (not c!1103607)) b!6136848))

(assert (= (and b!6136848 res!2543052) b!6136838))

(assert (= (and b!6136848 c!1103605) b!6136840))

(assert (= (and b!6136848 (not c!1103605)) b!6136847))

(assert (= (and b!6136847 c!1103604) b!6136846))

(assert (= (and b!6136847 (not c!1103604)) b!6136839))

(assert (= (and b!6136839 c!1103608) b!6136844))

(assert (= (and b!6136839 (not c!1103608)) b!6136842))

(assert (= (or b!6136846 b!6136844) bm!509349))

(assert (= (or b!6136846 b!6136844) bm!509346))

(assert (= (or b!6136840 bm!509349) bm!509348))

(assert (= (or b!6136840 bm!509346) bm!509347))

(assert (= (or b!6136845 b!6136840) bm!509351))

(assert (= (or b!6136845 bm!509347) bm!509350))

(declare-fun m!6979092 () Bool)

(assert (=> bm!509351 m!6979092))

(declare-fun m!6979094 () Bool)

(assert (=> b!6136838 m!6979094))

(declare-fun m!6979096 () Bool)

(assert (=> bm!509348 m!6979096))

(declare-fun m!6979098 () Bool)

(assert (=> bm!509350 m!6979098))

(assert (=> b!6136843 m!6978942))

(assert (=> b!6136446 d!1922668))

(assert (=> b!6136435 d!1922622))

(declare-fun d!1922670 () Bool)

(declare-fun c!1103609 () Bool)

(assert (=> d!1922670 (= c!1103609 (isEmpty!36366 (t!378016 s!2326)))))

(declare-fun e!3740182 () Bool)

(assert (=> d!1922670 (= (matchZipper!2092 lt!2332549 (t!378016 s!2326)) e!3740182)))

(declare-fun b!6136849 () Bool)

(assert (=> b!6136849 (= e!3740182 (nullableZipper!1861 lt!2332549))))

(declare-fun b!6136850 () Bool)

(assert (=> b!6136850 (= e!3740182 (matchZipper!2092 (derivationStepZipper!2053 lt!2332549 (head!12681 (t!378016 s!2326))) (tail!11766 (t!378016 s!2326))))))

(assert (= (and d!1922670 c!1103609) b!6136849))

(assert (= (and d!1922670 (not c!1103609)) b!6136850))

(assert (=> d!1922670 m!6978946))

(declare-fun m!6979100 () Bool)

(assert (=> b!6136849 m!6979100))

(assert (=> b!6136850 m!6978950))

(assert (=> b!6136850 m!6978950))

(declare-fun m!6979102 () Bool)

(assert (=> b!6136850 m!6979102))

(assert (=> b!6136850 m!6978954))

(assert (=> b!6136850 m!6979102))

(assert (=> b!6136850 m!6978954))

(declare-fun m!6979104 () Bool)

(assert (=> b!6136850 m!6979104))

(assert (=> b!6136435 d!1922670))

(declare-fun d!1922672 () Bool)

(declare-fun c!1103610 () Bool)

(assert (=> d!1922672 (= c!1103610 (isEmpty!36366 (t!378016 s!2326)))))

(declare-fun e!3740183 () Bool)

(assert (=> d!1922672 (= (matchZipper!2092 lt!2332546 (t!378016 s!2326)) e!3740183)))

(declare-fun b!6136851 () Bool)

(assert (=> b!6136851 (= e!3740183 (nullableZipper!1861 lt!2332546))))

(declare-fun b!6136852 () Bool)

(assert (=> b!6136852 (= e!3740183 (matchZipper!2092 (derivationStepZipper!2053 lt!2332546 (head!12681 (t!378016 s!2326))) (tail!11766 (t!378016 s!2326))))))

(assert (= (and d!1922672 c!1103610) b!6136851))

(assert (= (and d!1922672 (not c!1103610)) b!6136852))

(assert (=> d!1922672 m!6978946))

(declare-fun m!6979106 () Bool)

(assert (=> b!6136851 m!6979106))

(assert (=> b!6136852 m!6978950))

(assert (=> b!6136852 m!6978950))

(declare-fun m!6979108 () Bool)

(assert (=> b!6136852 m!6979108))

(assert (=> b!6136852 m!6978954))

(assert (=> b!6136852 m!6979108))

(assert (=> b!6136852 m!6978954))

(declare-fun m!6979110 () Bool)

(assert (=> b!6136852 m!6979110))

(assert (=> b!6136435 d!1922672))

(declare-fun e!3740184 () Bool)

(declare-fun d!1922674 () Bool)

(assert (=> d!1922674 (= (matchZipper!2092 (set.union lt!2332546 lt!2332550) (t!378016 s!2326)) e!3740184)))

(declare-fun res!2543053 () Bool)

(assert (=> d!1922674 (=> res!2543053 e!3740184)))

(assert (=> d!1922674 (= res!2543053 (matchZipper!2092 lt!2332546 (t!378016 s!2326)))))

(declare-fun lt!2332654 () Unit!157475)

(assert (=> d!1922674 (= lt!2332654 (choose!45599 lt!2332546 lt!2332550 (t!378016 s!2326)))))

(assert (=> d!1922674 (= (lemmaZipperConcatMatchesSameAsBothZippers!911 lt!2332546 lt!2332550 (t!378016 s!2326)) lt!2332654)))

(declare-fun b!6136853 () Bool)

(assert (=> b!6136853 (= e!3740184 (matchZipper!2092 lt!2332550 (t!378016 s!2326)))))

(assert (= (and d!1922674 (not res!2543053)) b!6136853))

(declare-fun m!6979112 () Bool)

(assert (=> d!1922674 m!6979112))

(assert (=> d!1922674 m!6978772))

(declare-fun m!6979114 () Bool)

(assert (=> d!1922674 m!6979114))

(assert (=> b!6136853 m!6978808))

(assert (=> b!6136435 d!1922674))

(declare-fun d!1922676 () Bool)

(declare-fun e!3740187 () Bool)

(assert (=> d!1922676 e!3740187))

(declare-fun res!2543056 () Bool)

(assert (=> d!1922676 (=> (not res!2543056) (not e!3740187))))

(declare-fun lt!2332657 () List!64540)

(declare-fun noDuplicate!1927 (List!64540) Bool)

(assert (=> d!1922676 (= res!2543056 (noDuplicate!1927 lt!2332657))))

(declare-fun choose!45604 ((Set Context!10928)) List!64540)

(assert (=> d!1922676 (= lt!2332657 (choose!45604 z!1189))))

(assert (=> d!1922676 (= (toList!9864 z!1189) lt!2332657)))

(declare-fun b!6136856 () Bool)

(declare-fun content!11984 (List!64540) (Set Context!10928))

(assert (=> b!6136856 (= e!3740187 (= (content!11984 lt!2332657) z!1189))))

(assert (= (and d!1922676 res!2543056) b!6136856))

(declare-fun m!6979116 () Bool)

(assert (=> d!1922676 m!6979116))

(declare-fun m!6979118 () Bool)

(assert (=> d!1922676 m!6979118))

(declare-fun m!6979120 () Bool)

(assert (=> b!6136856 m!6979120))

(assert (=> b!6136440 d!1922676))

(declare-fun bs!1521916 () Bool)

(declare-fun d!1922678 () Bool)

(assert (= bs!1521916 (and d!1922678 d!1922600)))

(declare-fun lambda!334429 () Int)

(assert (=> bs!1521916 (= lambda!334429 lambda!334406)))

(declare-fun bs!1521917 () Bool)

(assert (= bs!1521917 (and d!1922678 d!1922660)))

(assert (=> bs!1521917 (= lambda!334429 lambda!334424)))

(declare-fun bs!1521918 () Bool)

(assert (= bs!1521918 (and d!1922678 d!1922662)))

(assert (=> bs!1521918 (= lambda!334429 lambda!334427)))

(declare-fun bs!1521919 () Bool)

(assert (= bs!1521919 (and d!1922678 d!1922664)))

(assert (=> bs!1521919 (= lambda!334429 lambda!334428)))

(assert (=> d!1922678 (= (inv!83448 lt!2332553) (forall!15201 (exprs!5964 lt!2332553) lambda!334429))))

(declare-fun bs!1521920 () Bool)

(assert (= bs!1521920 d!1922678))

(declare-fun m!6979122 () Bool)

(assert (=> bs!1521920 m!6979122))

(assert (=> b!6136429 d!1922678))

(declare-fun bs!1521921 () Bool)

(declare-fun d!1922680 () Bool)

(assert (= bs!1521921 (and d!1922680 d!1922678)))

(declare-fun lambda!334432 () Int)

(assert (=> bs!1521921 (= lambda!334432 lambda!334429)))

(declare-fun bs!1521922 () Bool)

(assert (= bs!1521922 (and d!1922680 d!1922662)))

(assert (=> bs!1521922 (= lambda!334432 lambda!334427)))

(declare-fun bs!1521923 () Bool)

(assert (= bs!1521923 (and d!1922680 d!1922664)))

(assert (=> bs!1521923 (= lambda!334432 lambda!334428)))

(declare-fun bs!1521924 () Bool)

(assert (= bs!1521924 (and d!1922680 d!1922660)))

(assert (=> bs!1521924 (= lambda!334432 lambda!334424)))

(declare-fun bs!1521925 () Bool)

(assert (= bs!1521925 (and d!1922680 d!1922600)))

(assert (=> bs!1521925 (= lambda!334432 lambda!334406)))

(declare-fun b!6136877 () Bool)

(declare-fun e!3740204 () Regex!16080)

(assert (=> b!6136877 (= e!3740204 EmptyExpr!16080)))

(declare-fun b!6136878 () Bool)

(declare-fun e!3740205 () Regex!16080)

(assert (=> b!6136878 (= e!3740205 e!3740204)))

(declare-fun c!1103620 () Bool)

(assert (=> b!6136878 (= c!1103620 (is-Cons!64415 (exprs!5964 (h!70864 zl!343))))))

(declare-fun b!6136879 () Bool)

(assert (=> b!6136879 (= e!3740205 (h!70863 (exprs!5964 (h!70864 zl!343))))))

(declare-fun b!6136880 () Bool)

(declare-fun e!3740200 () Bool)

(declare-fun lt!2332660 () Regex!16080)

(assert (=> b!6136880 (= e!3740200 (= lt!2332660 (head!12682 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun b!6136881 () Bool)

(declare-fun e!3740201 () Bool)

(declare-fun isEmptyExpr!1497 (Regex!16080) Bool)

(assert (=> b!6136881 (= e!3740201 (isEmptyExpr!1497 lt!2332660))))

(declare-fun b!6136882 () Bool)

(declare-fun e!3740203 () Bool)

(assert (=> b!6136882 (= e!3740203 (isEmpty!36363 (t!378014 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun e!3740202 () Bool)

(assert (=> d!1922680 e!3740202))

(declare-fun res!2543062 () Bool)

(assert (=> d!1922680 (=> (not res!2543062) (not e!3740202))))

(assert (=> d!1922680 (= res!2543062 (validRegex!7816 lt!2332660))))

(assert (=> d!1922680 (= lt!2332660 e!3740205)))

(declare-fun c!1103621 () Bool)

(assert (=> d!1922680 (= c!1103621 e!3740203)))

(declare-fun res!2543061 () Bool)

(assert (=> d!1922680 (=> (not res!2543061) (not e!3740203))))

(assert (=> d!1922680 (= res!2543061 (is-Cons!64415 (exprs!5964 (h!70864 zl!343))))))

(assert (=> d!1922680 (forall!15201 (exprs!5964 (h!70864 zl!343)) lambda!334432)))

(assert (=> d!1922680 (= (generalisedConcat!1677 (exprs!5964 (h!70864 zl!343))) lt!2332660)))

(declare-fun b!6136883 () Bool)

(declare-fun isConcat!1020 (Regex!16080) Bool)

(assert (=> b!6136883 (= e!3740200 (isConcat!1020 lt!2332660))))

(declare-fun b!6136884 () Bool)

(assert (=> b!6136884 (= e!3740202 e!3740201)))

(declare-fun c!1103619 () Bool)

(assert (=> b!6136884 (= c!1103619 (isEmpty!36363 (exprs!5964 (h!70864 zl!343))))))

(declare-fun b!6136885 () Bool)

(assert (=> b!6136885 (= e!3740201 e!3740200)))

(declare-fun c!1103622 () Bool)

(assert (=> b!6136885 (= c!1103622 (isEmpty!36363 (tail!11767 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun b!6136886 () Bool)

(assert (=> b!6136886 (= e!3740204 (Concat!24925 (h!70863 (exprs!5964 (h!70864 zl!343))) (generalisedConcat!1677 (t!378014 (exprs!5964 (h!70864 zl!343))))))))

(assert (= (and d!1922680 res!2543061) b!6136882))

(assert (= (and d!1922680 c!1103621) b!6136879))

(assert (= (and d!1922680 (not c!1103621)) b!6136878))

(assert (= (and b!6136878 c!1103620) b!6136886))

(assert (= (and b!6136878 (not c!1103620)) b!6136877))

(assert (= (and d!1922680 res!2543062) b!6136884))

(assert (= (and b!6136884 c!1103619) b!6136881))

(assert (= (and b!6136884 (not c!1103619)) b!6136885))

(assert (= (and b!6136885 c!1103622) b!6136880))

(assert (= (and b!6136885 (not c!1103622)) b!6136883))

(declare-fun m!6979124 () Bool)

(assert (=> b!6136886 m!6979124))

(declare-fun m!6979126 () Bool)

(assert (=> b!6136883 m!6979126))

(assert (=> b!6136882 m!6978762))

(declare-fun m!6979128 () Bool)

(assert (=> b!6136884 m!6979128))

(declare-fun m!6979130 () Bool)

(assert (=> b!6136881 m!6979130))

(declare-fun m!6979132 () Bool)

(assert (=> b!6136880 m!6979132))

(declare-fun m!6979134 () Bool)

(assert (=> b!6136885 m!6979134))

(assert (=> b!6136885 m!6979134))

(declare-fun m!6979136 () Bool)

(assert (=> b!6136885 m!6979136))

(declare-fun m!6979138 () Bool)

(assert (=> d!1922680 m!6979138))

(declare-fun m!6979140 () Bool)

(assert (=> d!1922680 m!6979140))

(assert (=> b!6136438 d!1922680))

(assert (=> b!6136428 d!1922630))

(declare-fun b!6136894 () Bool)

(declare-fun e!3740211 () Bool)

(declare-fun tp!1714743 () Bool)

(assert (=> b!6136894 (= e!3740211 tp!1714743)))

(declare-fun b!6136893 () Bool)

(declare-fun e!3740210 () Bool)

(declare-fun tp!1714744 () Bool)

(assert (=> b!6136893 (= e!3740210 (and (inv!83448 (h!70864 (t!378015 zl!343))) e!3740211 tp!1714744))))

(assert (=> b!6136432 (= tp!1714700 e!3740210)))

(assert (= b!6136893 b!6136894))

(assert (= (and b!6136432 (is-Cons!64416 (t!378015 zl!343))) b!6136893))

(declare-fun m!6979142 () Bool)

(assert (=> b!6136893 m!6979142))

(declare-fun b!6136899 () Bool)

(declare-fun e!3740214 () Bool)

(declare-fun tp!1714747 () Bool)

(assert (=> b!6136899 (= e!3740214 (and tp_is_empty!41413 tp!1714747))))

(assert (=> b!6136453 (= tp!1714703 e!3740214)))

(assert (= (and b!6136453 (is-Cons!64417 (t!378016 s!2326))) b!6136899))

(declare-fun b!6136911 () Bool)

(declare-fun e!3740217 () Bool)

(declare-fun tp!1714762 () Bool)

(declare-fun tp!1714759 () Bool)

(assert (=> b!6136911 (= e!3740217 (and tp!1714762 tp!1714759))))

(assert (=> b!6136436 (= tp!1714701 e!3740217)))

(declare-fun b!6136912 () Bool)

(declare-fun tp!1714760 () Bool)

(assert (=> b!6136912 (= e!3740217 tp!1714760)))

(declare-fun b!6136910 () Bool)

(assert (=> b!6136910 (= e!3740217 tp_is_empty!41413)))

(declare-fun b!6136913 () Bool)

(declare-fun tp!1714758 () Bool)

(declare-fun tp!1714761 () Bool)

(assert (=> b!6136913 (= e!3740217 (and tp!1714758 tp!1714761))))

(assert (= (and b!6136436 (is-ElementMatch!16080 (reg!16409 r!7292))) b!6136910))

(assert (= (and b!6136436 (is-Concat!24925 (reg!16409 r!7292))) b!6136911))

(assert (= (and b!6136436 (is-Star!16080 (reg!16409 r!7292))) b!6136912))

(assert (= (and b!6136436 (is-Union!16080 (reg!16409 r!7292))) b!6136913))

(declare-fun condSetEmpty!41499 () Bool)

(assert (=> setNonEmpty!41493 (= condSetEmpty!41499 (= setRest!41493 (as set.empty (Set Context!10928))))))

(declare-fun setRes!41499 () Bool)

(assert (=> setNonEmpty!41493 (= tp!1714699 setRes!41499)))

(declare-fun setIsEmpty!41499 () Bool)

(assert (=> setIsEmpty!41499 setRes!41499))

(declare-fun setNonEmpty!41499 () Bool)

(declare-fun tp!1714767 () Bool)

(declare-fun e!3740220 () Bool)

(declare-fun setElem!41499 () Context!10928)

(assert (=> setNonEmpty!41499 (= setRes!41499 (and tp!1714767 (inv!83448 setElem!41499) e!3740220))))

(declare-fun setRest!41499 () (Set Context!10928))

(assert (=> setNonEmpty!41499 (= setRest!41493 (set.union (set.insert setElem!41499 (as set.empty (Set Context!10928))) setRest!41499))))

(declare-fun b!6136918 () Bool)

(declare-fun tp!1714768 () Bool)

(assert (=> b!6136918 (= e!3740220 tp!1714768)))

(assert (= (and setNonEmpty!41493 condSetEmpty!41499) setIsEmpty!41499))

(assert (= (and setNonEmpty!41493 (not condSetEmpty!41499)) setNonEmpty!41499))

(assert (= setNonEmpty!41499 b!6136918))

(declare-fun m!6979144 () Bool)

(assert (=> setNonEmpty!41499 m!6979144))

(declare-fun b!6136920 () Bool)

(declare-fun e!3740221 () Bool)

(declare-fun tp!1714773 () Bool)

(declare-fun tp!1714770 () Bool)

(assert (=> b!6136920 (= e!3740221 (and tp!1714773 tp!1714770))))

(assert (=> b!6136430 (= tp!1714707 e!3740221)))

(declare-fun b!6136921 () Bool)

(declare-fun tp!1714771 () Bool)

(assert (=> b!6136921 (= e!3740221 tp!1714771)))

(declare-fun b!6136919 () Bool)

(assert (=> b!6136919 (= e!3740221 tp_is_empty!41413)))

(declare-fun b!6136922 () Bool)

(declare-fun tp!1714769 () Bool)

(declare-fun tp!1714772 () Bool)

(assert (=> b!6136922 (= e!3740221 (and tp!1714769 tp!1714772))))

(assert (= (and b!6136430 (is-ElementMatch!16080 (regOne!32672 r!7292))) b!6136919))

(assert (= (and b!6136430 (is-Concat!24925 (regOne!32672 r!7292))) b!6136920))

(assert (= (and b!6136430 (is-Star!16080 (regOne!32672 r!7292))) b!6136921))

(assert (= (and b!6136430 (is-Union!16080 (regOne!32672 r!7292))) b!6136922))

(declare-fun b!6136924 () Bool)

(declare-fun e!3740222 () Bool)

(declare-fun tp!1714778 () Bool)

(declare-fun tp!1714775 () Bool)

(assert (=> b!6136924 (= e!3740222 (and tp!1714778 tp!1714775))))

(assert (=> b!6136430 (= tp!1714706 e!3740222)))

(declare-fun b!6136925 () Bool)

(declare-fun tp!1714776 () Bool)

(assert (=> b!6136925 (= e!3740222 tp!1714776)))

(declare-fun b!6136923 () Bool)

(assert (=> b!6136923 (= e!3740222 tp_is_empty!41413)))

(declare-fun b!6136926 () Bool)

(declare-fun tp!1714774 () Bool)

(declare-fun tp!1714777 () Bool)

(assert (=> b!6136926 (= e!3740222 (and tp!1714774 tp!1714777))))

(assert (= (and b!6136430 (is-ElementMatch!16080 (regTwo!32672 r!7292))) b!6136923))

(assert (= (and b!6136430 (is-Concat!24925 (regTwo!32672 r!7292))) b!6136924))

(assert (= (and b!6136430 (is-Star!16080 (regTwo!32672 r!7292))) b!6136925))

(assert (= (and b!6136430 (is-Union!16080 (regTwo!32672 r!7292))) b!6136926))

(declare-fun b!6136931 () Bool)

(declare-fun e!3740225 () Bool)

(declare-fun tp!1714783 () Bool)

(declare-fun tp!1714784 () Bool)

(assert (=> b!6136931 (= e!3740225 (and tp!1714783 tp!1714784))))

(assert (=> b!6136451 (= tp!1714708 e!3740225)))

(assert (= (and b!6136451 (is-Cons!64415 (exprs!5964 (h!70864 zl!343)))) b!6136931))

(declare-fun b!6136932 () Bool)

(declare-fun e!3740226 () Bool)

(declare-fun tp!1714785 () Bool)

(declare-fun tp!1714786 () Bool)

(assert (=> b!6136932 (= e!3740226 (and tp!1714785 tp!1714786))))

(assert (=> b!6136439 (= tp!1714702 e!3740226)))

(assert (= (and b!6136439 (is-Cons!64415 (exprs!5964 setElem!41493))) b!6136932))

(declare-fun b!6136934 () Bool)

(declare-fun e!3740227 () Bool)

(declare-fun tp!1714791 () Bool)

(declare-fun tp!1714788 () Bool)

(assert (=> b!6136934 (= e!3740227 (and tp!1714791 tp!1714788))))

(assert (=> b!6136444 (= tp!1714705 e!3740227)))

(declare-fun b!6136935 () Bool)

(declare-fun tp!1714789 () Bool)

(assert (=> b!6136935 (= e!3740227 tp!1714789)))

(declare-fun b!6136933 () Bool)

(assert (=> b!6136933 (= e!3740227 tp_is_empty!41413)))

(declare-fun b!6136936 () Bool)

(declare-fun tp!1714787 () Bool)

(declare-fun tp!1714790 () Bool)

(assert (=> b!6136936 (= e!3740227 (and tp!1714787 tp!1714790))))

(assert (= (and b!6136444 (is-ElementMatch!16080 (regOne!32673 r!7292))) b!6136933))

(assert (= (and b!6136444 (is-Concat!24925 (regOne!32673 r!7292))) b!6136934))

(assert (= (and b!6136444 (is-Star!16080 (regOne!32673 r!7292))) b!6136935))

(assert (= (and b!6136444 (is-Union!16080 (regOne!32673 r!7292))) b!6136936))

(declare-fun b!6136938 () Bool)

(declare-fun e!3740228 () Bool)

(declare-fun tp!1714796 () Bool)

(declare-fun tp!1714793 () Bool)

(assert (=> b!6136938 (= e!3740228 (and tp!1714796 tp!1714793))))

(assert (=> b!6136444 (= tp!1714704 e!3740228)))

(declare-fun b!6136939 () Bool)

(declare-fun tp!1714794 () Bool)

(assert (=> b!6136939 (= e!3740228 tp!1714794)))

(declare-fun b!6136937 () Bool)

(assert (=> b!6136937 (= e!3740228 tp_is_empty!41413)))

(declare-fun b!6136940 () Bool)

(declare-fun tp!1714792 () Bool)

(declare-fun tp!1714795 () Bool)

(assert (=> b!6136940 (= e!3740228 (and tp!1714792 tp!1714795))))

(assert (= (and b!6136444 (is-ElementMatch!16080 (regTwo!32673 r!7292))) b!6136937))

(assert (= (and b!6136444 (is-Concat!24925 (regTwo!32673 r!7292))) b!6136938))

(assert (= (and b!6136444 (is-Star!16080 (regTwo!32673 r!7292))) b!6136939))

(assert (= (and b!6136444 (is-Union!16080 (regTwo!32673 r!7292))) b!6136940))

(declare-fun b_lambda!233573 () Bool)

(assert (= b_lambda!233571 (or b!6136452 b_lambda!233573)))

(declare-fun bs!1521926 () Bool)

(declare-fun d!1922682 () Bool)

(assert (= bs!1521926 (and d!1922682 b!6136452)))

(assert (=> bs!1521926 (= (dynLambda!25381 lambda!334390 lt!2332539) (derivationStepZipperUp!1254 lt!2332539 (h!70865 s!2326)))))

(assert (=> bs!1521926 m!6978814))

(assert (=> d!1922658 d!1922682))

(declare-fun b_lambda!233575 () Bool)

(assert (= b_lambda!233569 (or b!6136452 b_lambda!233575)))

(declare-fun bs!1521927 () Bool)

(declare-fun d!1922684 () Bool)

(assert (= bs!1521927 (and d!1922684 b!6136452)))

(assert (=> bs!1521927 (= (dynLambda!25381 lambda!334390 (h!70864 zl!343)) (derivationStepZipperUp!1254 (h!70864 zl!343) (h!70865 s!2326)))))

(assert (=> bs!1521927 m!6978776))

(assert (=> d!1922606 d!1922684))

(push 1)

(assert (not bm!509350))

(assert (not b!6136815))

(assert (not bm!509301))

(assert (not b!6136781))

(assert (not d!1922680))

(assert (not b!6136939))

(assert (not d!1922638))

(assert (not b!6136683))

(assert (not d!1922672))

(assert (not bm!509344))

(assert (not bm!509334))

(assert (not b!6136812))

(assert (not bm!509351))

(assert (not b!6136684))

(assert (not b!6136932))

(assert (not b!6136813))

(assert (not d!1922606))

(assert (not b!6136630))

(assert (not b!6136913))

(assert (not b!6136687))

(assert (not b!6136629))

(assert (not b!6136884))

(assert (not b!6136936))

(assert (not bm!509335))

(assert (not d!1922676))

(assert (not b!6136733))

(assert (not bm!509338))

(assert (not b!6136632))

(assert (not d!1922674))

(assert (not d!1922622))

(assert (not b!6136893))

(assert (not d!1922620))

(assert (not bm!509320))

(assert (not b!6136790))

(assert (not b!6136654))

(assert (not b!6136852))

(assert (not bm!509329))

(assert (not b!6136825))

(assert (not d!1922670))

(assert (not d!1922600))

(assert (not b!6136881))

(assert (not b!6136634))

(assert (not b!6136779))

(assert (not b!6136885))

(assert (not d!1922652))

(assert (not b!6136922))

(assert (not b!6136780))

(assert (not b!6136628))

(assert (not b!6136816))

(assert (not d!1922636))

(assert (not b!6136938))

(assert (not b!6136818))

(assert (not b!6136920))

(assert (not d!1922616))

(assert (not b!6136911))

(assert (not b!6136827))

(assert (not d!1922650))

(assert (not b!6136773))

(assert (not bm!509339))

(assert (not b!6136573))

(assert (not bm!509302))

(assert (not b!6136787))

(assert (not bm!509328))

(assert (not bm!509345))

(assert (not b!6136899))

(assert (not d!1922648))

(assert (not b!6136578))

(assert (not bs!1521926))

(assert (not setNonEmpty!41499))

(assert (not b!6136688))

(assert (not d!1922608))

(assert (not b!6136811))

(assert (not d!1922624))

(assert (not b!6136782))

(assert (not b!6136783))

(assert (not b!6136886))

(assert (not d!1922654))

(assert (not b!6136934))

(assert (not b!6136882))

(assert (not b!6136880))

(assert (not b!6136931))

(assert (not bm!509319))

(assert (not b!6136853))

(assert (not b!6136935))

(assert (not b!6136627))

(assert (not bm!509300))

(assert (not d!1922662))

(assert (not b_lambda!233573))

(assert (not b!6136849))

(assert (not d!1922658))

(assert (not b!6136609))

(assert (not d!1922678))

(assert (not d!1922604))

(assert (not d!1922628))

(assert (not b!6136925))

(assert (not b!6136924))

(assert (not bs!1521927))

(assert (not d!1922634))

(assert (not b!6136838))

(assert (not b!6136912))

(assert (not b!6136682))

(assert (not b!6136586))

(assert (not d!1922664))

(assert (not b!6136926))

(assert (not b!6136622))

(assert (not bm!509317))

(assert (not d!1922644))

(assert (not b!6136850))

(assert (not b!6136894))

(assert (not b!6136856))

(assert (not d!1922660))

(assert tp_is_empty!41413)

(assert (not bm!509348))

(assert (not b!6136918))

(assert (not b!6136883))

(assert (not b_lambda!233575))

(assert (not b!6136940))

(assert (not b!6136851))

(assert (not d!1922640))

(assert (not d!1922630))

(assert (not b!6136631))

(assert (not bm!509342))

(assert (not b!6136737))

(assert (not b!6136921))

(assert (not d!1922642))

(assert (not b!6136685))

(assert (not b!6136583))

(assert (not b!6136576))

(assert (not b!6136819))

(assert (not b!6136581))

(assert (not b!6136633))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1922606 d!1922616))

(declare-fun d!1922772 () Bool)

(assert (=> d!1922772 (= (flatMap!1585 z!1189 lambda!334390) (dynLambda!25381 lambda!334390 (h!70864 zl!343)))))

(assert (=> d!1922772 true))

(declare-fun _$13!3014 () Unit!157475)

(assert (=> d!1922772 (= (choose!45597 z!1189 (h!70864 zl!343) lambda!334390) _$13!3014)))

(declare-fun b_lambda!233585 () Bool)

(assert (=> (not b_lambda!233585) (not d!1922772)))

(declare-fun bs!1521971 () Bool)

(assert (= bs!1521971 d!1922772))

(assert (=> bs!1521971 m!6978778))

(assert (=> bs!1521971 m!6978908))

(assert (=> d!1922606 d!1922772))

(declare-fun d!1922774 () Bool)

(declare-fun res!2543182 () Bool)

(declare-fun e!3740446 () Bool)

(assert (=> d!1922774 (=> res!2543182 e!3740446)))

(assert (=> d!1922774 (= res!2543182 (is-Nil!64415 (exprs!5964 lt!2332553)))))

(assert (=> d!1922774 (= (forall!15201 (exprs!5964 lt!2332553) lambda!334429) e!3740446)))

(declare-fun b!6137324 () Bool)

(declare-fun e!3740447 () Bool)

(assert (=> b!6137324 (= e!3740446 e!3740447)))

(declare-fun res!2543183 () Bool)

(assert (=> b!6137324 (=> (not res!2543183) (not e!3740447))))

(declare-fun dynLambda!25383 (Int Regex!16080) Bool)

(assert (=> b!6137324 (= res!2543183 (dynLambda!25383 lambda!334429 (h!70863 (exprs!5964 lt!2332553))))))

(declare-fun b!6137325 () Bool)

(assert (=> b!6137325 (= e!3740447 (forall!15201 (t!378014 (exprs!5964 lt!2332553)) lambda!334429))))

(assert (= (and d!1922774 (not res!2543182)) b!6137324))

(assert (= (and b!6137324 res!2543183) b!6137325))

(declare-fun b_lambda!233587 () Bool)

(assert (=> (not b_lambda!233587) (not b!6137324)))

(declare-fun m!6979388 () Bool)

(assert (=> b!6137324 m!6979388))

(declare-fun m!6979390 () Bool)

(assert (=> b!6137325 m!6979390))

(assert (=> d!1922678 d!1922774))

(declare-fun d!1922776 () Bool)

(assert (=> d!1922776 (= (isDefined!12674 lt!2332634) (not (isEmpty!36367 lt!2332634)))))

(declare-fun bs!1521972 () Bool)

(assert (= bs!1521972 d!1922776))

(declare-fun m!6979392 () Bool)

(assert (=> bs!1521972 m!6979392))

(assert (=> b!6136688 d!1922776))

(declare-fun d!1922778 () Bool)

(assert (=> d!1922778 (= (head!12681 s!2326) (h!70865 s!2326))))

(assert (=> b!6136779 d!1922778))

(declare-fun d!1922780 () Bool)

(assert (=> d!1922780 (= (head!12682 (exprs!5964 (h!70864 zl!343))) (h!70863 (exprs!5964 (h!70864 zl!343))))))

(assert (=> b!6136880 d!1922780))

(declare-fun d!1922782 () Bool)

(assert (=> d!1922782 (= (isEmpty!36367 (findConcatSeparation!2385 (regOne!32672 r!7292) (regTwo!32672 r!7292) Nil!64417 s!2326 s!2326)) (not (is-Some!15970 (findConcatSeparation!2385 (regOne!32672 r!7292) (regTwo!32672 r!7292) Nil!64417 s!2326 s!2326))))))

(assert (=> d!1922640 d!1922782))

(declare-fun d!1922784 () Bool)

(declare-fun lambda!334464 () Int)

(declare-fun exists!2427 ((Set Context!10928) Int) Bool)

(assert (=> d!1922784 (= (nullableZipper!1861 lt!2332546) (exists!2427 lt!2332546 lambda!334464))))

(declare-fun bs!1521973 () Bool)

(assert (= bs!1521973 d!1922784))

(declare-fun m!6979394 () Bool)

(assert (=> bs!1521973 m!6979394))

(assert (=> b!6136851 d!1922784))

(assert (=> d!1922650 d!1922648))

(assert (=> d!1922650 d!1922646))

(declare-fun d!1922786 () Bool)

(assert (=> d!1922786 (= (matchR!8263 r!7292 s!2326) (matchRSpec!3181 r!7292 s!2326))))

(assert (=> d!1922786 true))

(declare-fun _$88!4659 () Unit!157475)

(assert (=> d!1922786 (= (choose!45603 r!7292 s!2326) _$88!4659)))

(declare-fun bs!1521974 () Bool)

(assert (= bs!1521974 d!1922786))

(assert (=> bs!1521974 m!6978804))

(assert (=> bs!1521974 m!6978802))

(assert (=> d!1922650 d!1922786))

(assert (=> d!1922650 d!1922632))

(assert (=> bs!1521926 d!1922656))

(declare-fun d!1922788 () Bool)

(assert (=> d!1922788 (= (isEmpty!36366 (t!378016 s!2326)) (is-Nil!64417 (t!378016 s!2326)))))

(assert (=> d!1922628 d!1922788))

(declare-fun d!1922790 () Bool)

(assert (=> d!1922790 (= (isEmpty!36366 (tail!11766 s!2326)) (is-Nil!64417 (tail!11766 s!2326)))))

(assert (=> b!6136783 d!1922790))

(declare-fun d!1922792 () Bool)

(assert (=> d!1922792 (= (tail!11766 s!2326) (t!378016 s!2326))))

(assert (=> b!6136783 d!1922792))

(declare-fun d!1922794 () Bool)

(assert (=> d!1922794 (= (isEmpty!36363 (exprs!5964 (h!70864 zl!343))) (is-Nil!64415 (exprs!5964 (h!70864 zl!343))))))

(assert (=> b!6136884 d!1922794))

(declare-fun bs!1521975 () Bool)

(declare-fun d!1922796 () Bool)

(assert (= bs!1521975 (and d!1922796 d!1922784)))

(declare-fun lambda!334465 () Int)

(assert (=> bs!1521975 (= lambda!334465 lambda!334464)))

(assert (=> d!1922796 (= (nullableZipper!1861 lt!2332549) (exists!2427 lt!2332549 lambda!334465))))

(declare-fun bs!1521976 () Bool)

(assert (= bs!1521976 d!1922796))

(declare-fun m!6979396 () Bool)

(assert (=> bs!1521976 m!6979396))

(assert (=> b!6136849 d!1922796))

(declare-fun d!1922798 () Bool)

(declare-fun c!1103730 () Bool)

(assert (=> d!1922798 (= c!1103730 (isEmpty!36366 (t!378016 s!2326)))))

(declare-fun e!3740448 () Bool)

(assert (=> d!1922798 (= (matchZipper!2092 (set.union lt!2332546 lt!2332550) (t!378016 s!2326)) e!3740448)))

(declare-fun b!6137326 () Bool)

(assert (=> b!6137326 (= e!3740448 (nullableZipper!1861 (set.union lt!2332546 lt!2332550)))))

(declare-fun b!6137327 () Bool)

(assert (=> b!6137327 (= e!3740448 (matchZipper!2092 (derivationStepZipper!2053 (set.union lt!2332546 lt!2332550) (head!12681 (t!378016 s!2326))) (tail!11766 (t!378016 s!2326))))))

(assert (= (and d!1922798 c!1103730) b!6137326))

(assert (= (and d!1922798 (not c!1103730)) b!6137327))

(assert (=> d!1922798 m!6978946))

(declare-fun m!6979398 () Bool)

(assert (=> b!6137326 m!6979398))

(assert (=> b!6137327 m!6978950))

(assert (=> b!6137327 m!6978950))

(declare-fun m!6979400 () Bool)

(assert (=> b!6137327 m!6979400))

(assert (=> b!6137327 m!6978954))

(assert (=> b!6137327 m!6979400))

(assert (=> b!6137327 m!6978954))

(declare-fun m!6979402 () Bool)

(assert (=> b!6137327 m!6979402))

(assert (=> d!1922674 d!1922798))

(assert (=> d!1922674 d!1922672))

(declare-fun e!3740451 () Bool)

(declare-fun d!1922800 () Bool)

(assert (=> d!1922800 (= (matchZipper!2092 (set.union lt!2332546 lt!2332550) (t!378016 s!2326)) e!3740451)))

(declare-fun res!2543186 () Bool)

(assert (=> d!1922800 (=> res!2543186 e!3740451)))

(assert (=> d!1922800 (= res!2543186 (matchZipper!2092 lt!2332546 (t!378016 s!2326)))))

(assert (=> d!1922800 true))

(declare-fun _$48!1632 () Unit!157475)

(assert (=> d!1922800 (= (choose!45599 lt!2332546 lt!2332550 (t!378016 s!2326)) _$48!1632)))

(declare-fun b!6137330 () Bool)

(assert (=> b!6137330 (= e!3740451 (matchZipper!2092 lt!2332550 (t!378016 s!2326)))))

(assert (= (and d!1922800 (not res!2543186)) b!6137330))

(assert (=> d!1922800 m!6979112))

(assert (=> d!1922800 m!6978772))

(assert (=> b!6137330 m!6978808))

(assert (=> d!1922674 d!1922800))

(declare-fun d!1922802 () Bool)

(declare-fun res!2543187 () Bool)

(declare-fun e!3740452 () Bool)

(assert (=> d!1922802 (=> res!2543187 e!3740452)))

(assert (=> d!1922802 (= res!2543187 (is-Nil!64415 (exprs!5964 (h!70864 zl!343))))))

(assert (=> d!1922802 (= (forall!15201 (exprs!5964 (h!70864 zl!343)) lambda!334406) e!3740452)))

(declare-fun b!6137331 () Bool)

(declare-fun e!3740453 () Bool)

(assert (=> b!6137331 (= e!3740452 e!3740453)))

(declare-fun res!2543188 () Bool)

(assert (=> b!6137331 (=> (not res!2543188) (not e!3740453))))

(assert (=> b!6137331 (= res!2543188 (dynLambda!25383 lambda!334406 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun b!6137332 () Bool)

(assert (=> b!6137332 (= e!3740453 (forall!15201 (t!378014 (exprs!5964 (h!70864 zl!343))) lambda!334406))))

(assert (= (and d!1922802 (not res!2543187)) b!6137331))

(assert (= (and b!6137331 res!2543188) b!6137332))

(declare-fun b_lambda!233589 () Bool)

(assert (=> (not b_lambda!233589) (not b!6137331)))

(declare-fun m!6979404 () Bool)

(assert (=> b!6137331 m!6979404))

(declare-fun m!6979406 () Bool)

(assert (=> b!6137332 m!6979406))

(assert (=> d!1922600 d!1922802))

(declare-fun d!1922804 () Bool)

(assert (=> d!1922804 (= (nullable!6073 (reg!16409 r!7292)) (nullableFct!2037 (reg!16409 r!7292)))))

(declare-fun bs!1521977 () Bool)

(assert (= bs!1521977 d!1922804))

(declare-fun m!6979408 () Bool)

(assert (=> bs!1521977 m!6979408))

(assert (=> b!6136654 d!1922804))

(declare-fun e!3740455 () Bool)

(declare-fun b!6137333 () Bool)

(assert (=> b!6137333 (= e!3740455 (nullable!6073 (regOne!32672 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292)))))))))))

(declare-fun bm!509406 () Bool)

(declare-fun call!509415 () (Set Context!10928))

(declare-fun call!509413 () (Set Context!10928))

(assert (=> bm!509406 (= call!509415 call!509413)))

(declare-fun b!6137335 () Bool)

(declare-fun e!3740456 () (Set Context!10928))

(declare-fun call!509414 () (Set Context!10928))

(assert (=> b!6137335 (= e!3740456 (set.union call!509414 call!509413))))

(declare-fun bm!509407 () Bool)

(declare-fun call!509416 () (Set Context!10928))

(assert (=> bm!509407 (= call!509413 call!509416)))

(declare-fun call!509411 () List!64539)

(declare-fun c!1103732 () Bool)

(declare-fun bm!509408 () Bool)

(declare-fun c!1103731 () Bool)

(assert (=> bm!509408 (= call!509411 ($colon$colon!1957 (exprs!5964 (ite (or c!1103607 c!1103605) lt!2332553 (Context!10929 call!509352))) (ite (or c!1103732 c!1103731) (regTwo!32672 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292))))))) (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292)))))))))))

(declare-fun bm!509409 () Bool)

(declare-fun call!509412 () List!64539)

(assert (=> bm!509409 (= call!509412 call!509411)))

(declare-fun b!6137336 () Bool)

(declare-fun e!3740458 () (Set Context!10928))

(declare-fun e!3740454 () (Set Context!10928))

(assert (=> b!6137336 (= e!3740458 e!3740454)))

(declare-fun c!1103734 () Bool)

(assert (=> b!6137336 (= c!1103734 (is-Union!16080 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292))))))))))

(declare-fun bm!509410 () Bool)

(assert (=> bm!509410 (= call!509416 (derivationStepZipperDown!1328 (ite c!1103734 (regOne!32673 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292))))))) (ite c!1103732 (regTwo!32672 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292))))))) (ite c!1103731 (regOne!32672 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292))))))) (reg!16409 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292)))))))))) (ite (or c!1103734 c!1103732) (ite (or c!1103607 c!1103605) lt!2332553 (Context!10929 call!509352)) (Context!10929 call!509412)) (h!70865 s!2326)))))

(declare-fun b!6137337 () Bool)

(declare-fun e!3740459 () (Set Context!10928))

(assert (=> b!6137337 (= e!3740459 (as set.empty (Set Context!10928)))))

(declare-fun b!6137338 () Bool)

(assert (=> b!6137338 (= e!3740458 (set.insert (ite (or c!1103607 c!1103605) lt!2332553 (Context!10929 call!509352)) (as set.empty (Set Context!10928))))))

(declare-fun b!6137339 () Bool)

(assert (=> b!6137339 (= e!3740459 call!509415)))

(declare-fun b!6137340 () Bool)

(assert (=> b!6137340 (= e!3740454 (set.union call!509416 call!509414))))

(declare-fun b!6137341 () Bool)

(declare-fun e!3740457 () (Set Context!10928))

(assert (=> b!6137341 (= e!3740457 call!509415)))

(declare-fun b!6137342 () Bool)

(assert (=> b!6137342 (= e!3740456 e!3740457)))

(assert (=> b!6137342 (= c!1103731 (is-Concat!24925 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292))))))))))

(declare-fun c!1103735 () Bool)

(declare-fun b!6137334 () Bool)

(assert (=> b!6137334 (= c!1103735 (is-Star!16080 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292))))))))))

(assert (=> b!6137334 (= e!3740457 e!3740459)))

(declare-fun c!1103733 () Bool)

(declare-fun d!1922806 () Bool)

(assert (=> d!1922806 (= c!1103733 (and (is-ElementMatch!16080 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292))))))) (= (c!1103508 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292))))))) (h!70865 s!2326))))))

(assert (=> d!1922806 (= (derivationStepZipperDown!1328 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292)))))) (ite (or c!1103607 c!1103605) lt!2332553 (Context!10929 call!509352)) (h!70865 s!2326)) e!3740458)))

(declare-fun b!6137343 () Bool)

(assert (=> b!6137343 (= c!1103732 e!3740455)))

(declare-fun res!2543189 () Bool)

(assert (=> b!6137343 (=> (not res!2543189) (not e!3740455))))

(assert (=> b!6137343 (= res!2543189 (is-Concat!24925 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292))))))))))

(assert (=> b!6137343 (= e!3740454 e!3740456)))

(declare-fun bm!509411 () Bool)

(assert (=> bm!509411 (= call!509414 (derivationStepZipperDown!1328 (ite c!1103734 (regTwo!32673 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292))))))) (regOne!32672 (ite c!1103607 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103605 (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (ite c!1103604 (regOne!32672 (regOne!32673 (regOne!32672 r!7292))) (reg!16409 (regOne!32673 (regOne!32672 r!7292)))))))) (ite c!1103734 (ite (or c!1103607 c!1103605) lt!2332553 (Context!10929 call!509352)) (Context!10929 call!509411)) (h!70865 s!2326)))))

(assert (= (and d!1922806 c!1103733) b!6137338))

(assert (= (and d!1922806 (not c!1103733)) b!6137336))

(assert (= (and b!6137336 c!1103734) b!6137340))

(assert (= (and b!6137336 (not c!1103734)) b!6137343))

(assert (= (and b!6137343 res!2543189) b!6137333))

(assert (= (and b!6137343 c!1103732) b!6137335))

(assert (= (and b!6137343 (not c!1103732)) b!6137342))

(assert (= (and b!6137342 c!1103731) b!6137341))

(assert (= (and b!6137342 (not c!1103731)) b!6137334))

(assert (= (and b!6137334 c!1103735) b!6137339))

(assert (= (and b!6137334 (not c!1103735)) b!6137337))

(assert (= (or b!6137341 b!6137339) bm!509409))

(assert (= (or b!6137341 b!6137339) bm!509406))

(assert (= (or b!6137335 bm!509409) bm!509408))

(assert (= (or b!6137335 bm!509406) bm!509407))

(assert (= (or b!6137340 b!6137335) bm!509411))

(assert (= (or b!6137340 bm!509407) bm!509410))

(declare-fun m!6979410 () Bool)

(assert (=> bm!509411 m!6979410))

(declare-fun m!6979412 () Bool)

(assert (=> b!6137333 m!6979412))

(declare-fun m!6979414 () Bool)

(assert (=> bm!509408 m!6979414))

(declare-fun m!6979416 () Bool)

(assert (=> bm!509410 m!6979416))

(declare-fun m!6979418 () Bool)

(assert (=> b!6137338 m!6979418))

(assert (=> bm!509350 d!1922806))

(declare-fun d!1922808 () Bool)

(assert (=> d!1922808 (= (Exists!3150 lambda!334411) (choose!45600 lambda!334411))))

(declare-fun bs!1521978 () Bool)

(assert (= bs!1521978 d!1922808))

(declare-fun m!6979420 () Bool)

(assert (=> bs!1521978 m!6979420))

(assert (=> d!1922638 d!1922808))

(declare-fun d!1922810 () Bool)

(assert (=> d!1922810 (= (Exists!3150 lambda!334412) (choose!45600 lambda!334412))))

(declare-fun bs!1521979 () Bool)

(assert (= bs!1521979 d!1922810))

(declare-fun m!6979422 () Bool)

(assert (=> bs!1521979 m!6979422))

(assert (=> d!1922638 d!1922810))

(declare-fun bs!1521980 () Bool)

(declare-fun d!1922812 () Bool)

(assert (= bs!1521980 (and d!1922812 b!6136743)))

(declare-fun lambda!334470 () Int)

(assert (=> bs!1521980 (not (= lambda!334470 lambda!334420))))

(declare-fun bs!1521981 () Bool)

(assert (= bs!1521981 (and d!1922812 b!6136739)))

(assert (=> bs!1521981 (not (= lambda!334470 lambda!334421))))

(declare-fun bs!1521982 () Bool)

(assert (= bs!1521982 (and d!1922812 d!1922644)))

(assert (=> bs!1521982 (= lambda!334470 lambda!334415)))

(declare-fun bs!1521983 () Bool)

(assert (= bs!1521983 (and d!1922812 d!1922638)))

(assert (=> bs!1521983 (= lambda!334470 lambda!334411)))

(declare-fun bs!1521984 () Bool)

(assert (= bs!1521984 (and d!1922812 b!6136443)))

(assert (=> bs!1521984 (= lambda!334470 lambda!334388)))

(assert (=> bs!1521983 (not (= lambda!334470 lambda!334412))))

(assert (=> bs!1521984 (not (= lambda!334470 lambda!334389))))

(assert (=> d!1922812 true))

(assert (=> d!1922812 true))

(assert (=> d!1922812 true))

(declare-fun lambda!334471 () Int)

(assert (=> bs!1521980 (not (= lambda!334471 lambda!334420))))

(assert (=> bs!1521981 (= lambda!334471 lambda!334421)))

(assert (=> bs!1521982 (not (= lambda!334471 lambda!334415))))

(assert (=> bs!1521984 (not (= lambda!334471 lambda!334388))))

(assert (=> bs!1521983 (= lambda!334471 lambda!334412)))

(assert (=> bs!1521984 (= lambda!334471 lambda!334389)))

(declare-fun bs!1521985 () Bool)

(assert (= bs!1521985 d!1922812))

(assert (=> bs!1521985 (not (= lambda!334471 lambda!334470))))

(assert (=> bs!1521983 (not (= lambda!334471 lambda!334411))))

(assert (=> d!1922812 true))

(assert (=> d!1922812 true))

(assert (=> d!1922812 true))

(assert (=> d!1922812 (= (Exists!3150 lambda!334470) (Exists!3150 lambda!334471))))

(assert (=> d!1922812 true))

(declare-fun _$90!1845 () Unit!157475)

(assert (=> d!1922812 (= (choose!45601 (regOne!32672 r!7292) (regTwo!32672 r!7292) s!2326) _$90!1845)))

(declare-fun m!6979424 () Bool)

(assert (=> bs!1521985 m!6979424))

(declare-fun m!6979426 () Bool)

(assert (=> bs!1521985 m!6979426))

(assert (=> d!1922638 d!1922812))

(declare-fun bm!509412 () Bool)

(declare-fun call!509417 () Bool)

(declare-fun call!509419 () Bool)

(assert (=> bm!509412 (= call!509417 call!509419)))

(declare-fun b!6137352 () Bool)

(declare-fun e!3740469 () Bool)

(declare-fun e!3740464 () Bool)

(assert (=> b!6137352 (= e!3740469 e!3740464)))

(declare-fun c!1103736 () Bool)

(assert (=> b!6137352 (= c!1103736 (is-Union!16080 (regOne!32672 r!7292)))))

(declare-fun b!6137353 () Bool)

(declare-fun e!3740467 () Bool)

(assert (=> b!6137353 (= e!3740469 e!3740467)))

(declare-fun res!2543198 () Bool)

(assert (=> b!6137353 (= res!2543198 (not (nullable!6073 (reg!16409 (regOne!32672 r!7292)))))))

(assert (=> b!6137353 (=> (not res!2543198) (not e!3740467))))

(declare-fun c!1103737 () Bool)

(declare-fun bm!509413 () Bool)

(assert (=> bm!509413 (= call!509419 (validRegex!7816 (ite c!1103737 (reg!16409 (regOne!32672 r!7292)) (ite c!1103736 (regTwo!32673 (regOne!32672 r!7292)) (regTwo!32672 (regOne!32672 r!7292))))))))

(declare-fun b!6137354 () Bool)

(declare-fun e!3740466 () Bool)

(assert (=> b!6137354 (= e!3740466 call!509417)))

(declare-fun b!6137355 () Bool)

(declare-fun res!2543199 () Bool)

(declare-fun e!3740468 () Bool)

(assert (=> b!6137355 (=> res!2543199 e!3740468)))

(assert (=> b!6137355 (= res!2543199 (not (is-Concat!24925 (regOne!32672 r!7292))))))

(assert (=> b!6137355 (= e!3740464 e!3740468)))

(declare-fun b!6137356 () Bool)

(assert (=> b!6137356 (= e!3740467 call!509419)))

(declare-fun b!6137357 () Bool)

(declare-fun e!3740465 () Bool)

(assert (=> b!6137357 (= e!3740465 call!509417)))

(declare-fun bm!509414 () Bool)

(declare-fun call!509418 () Bool)

(assert (=> bm!509414 (= call!509418 (validRegex!7816 (ite c!1103736 (regOne!32673 (regOne!32672 r!7292)) (regOne!32672 (regOne!32672 r!7292)))))))

(declare-fun b!6137359 () Bool)

(declare-fun e!3740470 () Bool)

(assert (=> b!6137359 (= e!3740470 e!3740469)))

(assert (=> b!6137359 (= c!1103737 (is-Star!16080 (regOne!32672 r!7292)))))

(declare-fun b!6137360 () Bool)

(declare-fun res!2543202 () Bool)

(assert (=> b!6137360 (=> (not res!2543202) (not e!3740466))))

(assert (=> b!6137360 (= res!2543202 call!509418)))

(assert (=> b!6137360 (= e!3740464 e!3740466)))

(declare-fun d!1922814 () Bool)

(declare-fun res!2543200 () Bool)

(assert (=> d!1922814 (=> res!2543200 e!3740470)))

(assert (=> d!1922814 (= res!2543200 (is-ElementMatch!16080 (regOne!32672 r!7292)))))

(assert (=> d!1922814 (= (validRegex!7816 (regOne!32672 r!7292)) e!3740470)))

(declare-fun b!6137358 () Bool)

(assert (=> b!6137358 (= e!3740468 e!3740465)))

(declare-fun res!2543201 () Bool)

(assert (=> b!6137358 (=> (not res!2543201) (not e!3740465))))

(assert (=> b!6137358 (= res!2543201 call!509418)))

(assert (= (and d!1922814 (not res!2543200)) b!6137359))

(assert (= (and b!6137359 c!1103737) b!6137353))

(assert (= (and b!6137359 (not c!1103737)) b!6137352))

(assert (= (and b!6137353 res!2543198) b!6137356))

(assert (= (and b!6137352 c!1103736) b!6137360))

(assert (= (and b!6137352 (not c!1103736)) b!6137355))

(assert (= (and b!6137360 res!2543202) b!6137354))

(assert (= (and b!6137355 (not res!2543199)) b!6137358))

(assert (= (and b!6137358 res!2543201) b!6137357))

(assert (= (or b!6137354 b!6137357) bm!509412))

(assert (= (or b!6137360 b!6137358) bm!509414))

(assert (= (or b!6137356 bm!509412) bm!509413))

(declare-fun m!6979428 () Bool)

(assert (=> b!6137353 m!6979428))

(declare-fun m!6979430 () Bool)

(assert (=> bm!509413 m!6979430))

(declare-fun m!6979432 () Bool)

(assert (=> bm!509414 m!6979432))

(assert (=> d!1922638 d!1922814))

(declare-fun d!1922816 () Bool)

(declare-fun c!1103740 () Bool)

(assert (=> d!1922816 (= c!1103740 (is-Nil!64416 lt!2332657))))

(declare-fun e!3740473 () (Set Context!10928))

(assert (=> d!1922816 (= (content!11984 lt!2332657) e!3740473)))

(declare-fun b!6137365 () Bool)

(assert (=> b!6137365 (= e!3740473 (as set.empty (Set Context!10928)))))

(declare-fun b!6137366 () Bool)

(assert (=> b!6137366 (= e!3740473 (set.union (set.insert (h!70864 lt!2332657) (as set.empty (Set Context!10928))) (content!11984 (t!378015 lt!2332657))))))

(assert (= (and d!1922816 c!1103740) b!6137365))

(assert (= (and d!1922816 (not c!1103740)) b!6137366))

(declare-fun m!6979434 () Bool)

(assert (=> b!6137366 m!6979434))

(declare-fun m!6979436 () Bool)

(assert (=> b!6137366 m!6979436))

(assert (=> b!6136856 d!1922816))

(declare-fun d!1922818 () Bool)

(assert (=> d!1922818 true))

(declare-fun setRes!41505 () Bool)

(assert (=> d!1922818 setRes!41505))

(declare-fun condSetEmpty!41505 () Bool)

(declare-fun res!2543205 () (Set Context!10928))

(assert (=> d!1922818 (= condSetEmpty!41505 (= res!2543205 (as set.empty (Set Context!10928))))))

(assert (=> d!1922818 (= (choose!45598 z!1189 lambda!334390) res!2543205)))

(declare-fun setIsEmpty!41505 () Bool)

(assert (=> setIsEmpty!41505 setRes!41505))

(declare-fun setElem!41505 () Context!10928)

(declare-fun setNonEmpty!41505 () Bool)

(declare-fun tp!1714859 () Bool)

(declare-fun e!3740476 () Bool)

(assert (=> setNonEmpty!41505 (= setRes!41505 (and tp!1714859 (inv!83448 setElem!41505) e!3740476))))

(declare-fun setRest!41505 () (Set Context!10928))

(assert (=> setNonEmpty!41505 (= res!2543205 (set.union (set.insert setElem!41505 (as set.empty (Set Context!10928))) setRest!41505))))

(declare-fun b!6137369 () Bool)

(declare-fun tp!1714860 () Bool)

(assert (=> b!6137369 (= e!3740476 tp!1714860)))

(assert (= (and d!1922818 condSetEmpty!41505) setIsEmpty!41505))

(assert (= (and d!1922818 (not condSetEmpty!41505)) setNonEmpty!41505))

(assert (= setNonEmpty!41505 b!6137369))

(declare-fun m!6979438 () Bool)

(assert (=> setNonEmpty!41505 m!6979438))

(assert (=> d!1922616 d!1922818))

(assert (=> d!1922644 d!1922634))

(assert (=> d!1922644 d!1922814))

(assert (=> d!1922644 d!1922640))

(declare-fun d!1922820 () Bool)

(assert (=> d!1922820 (= (Exists!3150 lambda!334415) (choose!45600 lambda!334415))))

(declare-fun bs!1521986 () Bool)

(assert (= bs!1521986 d!1922820))

(declare-fun m!6979440 () Bool)

(assert (=> bs!1521986 m!6979440))

(assert (=> d!1922644 d!1922820))

(declare-fun bs!1521987 () Bool)

(declare-fun d!1922822 () Bool)

(assert (= bs!1521987 (and d!1922822 b!6136743)))

(declare-fun lambda!334474 () Int)

(assert (=> bs!1521987 (not (= lambda!334474 lambda!334420))))

(declare-fun bs!1521988 () Bool)

(assert (= bs!1521988 (and d!1922822 b!6136739)))

(assert (=> bs!1521988 (not (= lambda!334474 lambda!334421))))

(declare-fun bs!1521989 () Bool)

(assert (= bs!1521989 (and d!1922822 d!1922644)))

(assert (=> bs!1521989 (= lambda!334474 lambda!334415)))

(declare-fun bs!1521990 () Bool)

(assert (= bs!1521990 (and d!1922822 d!1922812)))

(assert (=> bs!1521990 (not (= lambda!334474 lambda!334471))))

(declare-fun bs!1521991 () Bool)

(assert (= bs!1521991 (and d!1922822 b!6136443)))

(assert (=> bs!1521991 (= lambda!334474 lambda!334388)))

(declare-fun bs!1521992 () Bool)

(assert (= bs!1521992 (and d!1922822 d!1922638)))

(assert (=> bs!1521992 (not (= lambda!334474 lambda!334412))))

(assert (=> bs!1521991 (not (= lambda!334474 lambda!334389))))

(assert (=> bs!1521990 (= lambda!334474 lambda!334470)))

(assert (=> bs!1521992 (= lambda!334474 lambda!334411)))

(assert (=> d!1922822 true))

(assert (=> d!1922822 true))

(assert (=> d!1922822 true))

(assert (=> d!1922822 (= (isDefined!12674 (findConcatSeparation!2385 (regOne!32672 r!7292) (regTwo!32672 r!7292) Nil!64417 s!2326 s!2326)) (Exists!3150 lambda!334474))))

(assert (=> d!1922822 true))

(declare-fun _$89!2221 () Unit!157475)

(assert (=> d!1922822 (= (choose!45602 (regOne!32672 r!7292) (regTwo!32672 r!7292) s!2326) _$89!2221)))

(declare-fun bs!1521993 () Bool)

(assert (= bs!1521993 d!1922822))

(assert (=> bs!1521993 m!6978744))

(assert (=> bs!1521993 m!6978744))

(assert (=> bs!1521993 m!6978746))

(declare-fun m!6979442 () Bool)

(assert (=> bs!1521993 m!6979442))

(assert (=> d!1922644 d!1922822))

(declare-fun b!6137374 () Bool)

(declare-fun e!3740480 () Bool)

(assert (=> b!6137374 (= e!3740480 (nullable!6073 (regOne!32672 (h!70863 (exprs!5964 lt!2332539)))))))

(declare-fun bm!509415 () Bool)

(declare-fun call!509424 () (Set Context!10928))

(declare-fun call!509422 () (Set Context!10928))

(assert (=> bm!509415 (= call!509424 call!509422)))

(declare-fun b!6137376 () Bool)

(declare-fun e!3740481 () (Set Context!10928))

(declare-fun call!509423 () (Set Context!10928))

(assert (=> b!6137376 (= e!3740481 (set.union call!509423 call!509422))))

(declare-fun bm!509416 () Bool)

(declare-fun call!509425 () (Set Context!10928))

(assert (=> bm!509416 (= call!509422 call!509425)))

(declare-fun c!1103742 () Bool)

(declare-fun call!509420 () List!64539)

(declare-fun c!1103741 () Bool)

(declare-fun bm!509417 () Bool)

(assert (=> bm!509417 (= call!509420 ($colon$colon!1957 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332539)))) (ite (or c!1103742 c!1103741) (regTwo!32672 (h!70863 (exprs!5964 lt!2332539))) (h!70863 (exprs!5964 lt!2332539)))))))

(declare-fun bm!509418 () Bool)

(declare-fun call!509421 () List!64539)

(assert (=> bm!509418 (= call!509421 call!509420)))

(declare-fun b!6137377 () Bool)

(declare-fun e!3740483 () (Set Context!10928))

(declare-fun e!3740479 () (Set Context!10928))

(assert (=> b!6137377 (= e!3740483 e!3740479)))

(declare-fun c!1103744 () Bool)

(assert (=> b!6137377 (= c!1103744 (is-Union!16080 (h!70863 (exprs!5964 lt!2332539))))))

(declare-fun bm!509419 () Bool)

(assert (=> bm!509419 (= call!509425 (derivationStepZipperDown!1328 (ite c!1103744 (regOne!32673 (h!70863 (exprs!5964 lt!2332539))) (ite c!1103742 (regTwo!32672 (h!70863 (exprs!5964 lt!2332539))) (ite c!1103741 (regOne!32672 (h!70863 (exprs!5964 lt!2332539))) (reg!16409 (h!70863 (exprs!5964 lt!2332539)))))) (ite (or c!1103744 c!1103742) (Context!10929 (t!378014 (exprs!5964 lt!2332539))) (Context!10929 call!509421)) (h!70865 s!2326)))))

(declare-fun b!6137378 () Bool)

(declare-fun e!3740484 () (Set Context!10928))

(assert (=> b!6137378 (= e!3740484 (as set.empty (Set Context!10928)))))

(declare-fun b!6137379 () Bool)

(assert (=> b!6137379 (= e!3740483 (set.insert (Context!10929 (t!378014 (exprs!5964 lt!2332539))) (as set.empty (Set Context!10928))))))

(declare-fun b!6137380 () Bool)

(assert (=> b!6137380 (= e!3740484 call!509424)))

(declare-fun b!6137381 () Bool)

(assert (=> b!6137381 (= e!3740479 (set.union call!509425 call!509423))))

(declare-fun b!6137382 () Bool)

(declare-fun e!3740482 () (Set Context!10928))

(assert (=> b!6137382 (= e!3740482 call!509424)))

(declare-fun b!6137383 () Bool)

(assert (=> b!6137383 (= e!3740481 e!3740482)))

(assert (=> b!6137383 (= c!1103741 (is-Concat!24925 (h!70863 (exprs!5964 lt!2332539))))))

(declare-fun b!6137375 () Bool)

(declare-fun c!1103745 () Bool)

(assert (=> b!6137375 (= c!1103745 (is-Star!16080 (h!70863 (exprs!5964 lt!2332539))))))

(assert (=> b!6137375 (= e!3740482 e!3740484)))

(declare-fun d!1922824 () Bool)

(declare-fun c!1103743 () Bool)

(assert (=> d!1922824 (= c!1103743 (and (is-ElementMatch!16080 (h!70863 (exprs!5964 lt!2332539))) (= (c!1103508 (h!70863 (exprs!5964 lt!2332539))) (h!70865 s!2326))))))

(assert (=> d!1922824 (= (derivationStepZipperDown!1328 (h!70863 (exprs!5964 lt!2332539)) (Context!10929 (t!378014 (exprs!5964 lt!2332539))) (h!70865 s!2326)) e!3740483)))

(declare-fun b!6137384 () Bool)

(assert (=> b!6137384 (= c!1103742 e!3740480)))

(declare-fun res!2543210 () Bool)

(assert (=> b!6137384 (=> (not res!2543210) (not e!3740480))))

(assert (=> b!6137384 (= res!2543210 (is-Concat!24925 (h!70863 (exprs!5964 lt!2332539))))))

(assert (=> b!6137384 (= e!3740479 e!3740481)))

(declare-fun bm!509420 () Bool)

(assert (=> bm!509420 (= call!509423 (derivationStepZipperDown!1328 (ite c!1103744 (regTwo!32673 (h!70863 (exprs!5964 lt!2332539))) (regOne!32672 (h!70863 (exprs!5964 lt!2332539)))) (ite c!1103744 (Context!10929 (t!378014 (exprs!5964 lt!2332539))) (Context!10929 call!509420)) (h!70865 s!2326)))))

(assert (= (and d!1922824 c!1103743) b!6137379))

(assert (= (and d!1922824 (not c!1103743)) b!6137377))

(assert (= (and b!6137377 c!1103744) b!6137381))

(assert (= (and b!6137377 (not c!1103744)) b!6137384))

(assert (= (and b!6137384 res!2543210) b!6137374))

(assert (= (and b!6137384 c!1103742) b!6137376))

(assert (= (and b!6137384 (not c!1103742)) b!6137383))

(assert (= (and b!6137383 c!1103741) b!6137382))

(assert (= (and b!6137383 (not c!1103741)) b!6137375))

(assert (= (and b!6137375 c!1103745) b!6137380))

(assert (= (and b!6137375 (not c!1103745)) b!6137378))

(assert (= (or b!6137382 b!6137380) bm!509418))

(assert (= (or b!6137382 b!6137380) bm!509415))

(assert (= (or b!6137376 bm!509418) bm!509417))

(assert (= (or b!6137376 bm!509415) bm!509416))

(assert (= (or b!6137381 b!6137376) bm!509420))

(assert (= (or b!6137381 bm!509416) bm!509419))

(declare-fun m!6979444 () Bool)

(assert (=> bm!509420 m!6979444))

(declare-fun m!6979446 () Bool)

(assert (=> b!6137374 m!6979446))

(declare-fun m!6979448 () Bool)

(assert (=> bm!509417 m!6979448))

(declare-fun m!6979450 () Bool)

(assert (=> bm!509419 m!6979450))

(declare-fun m!6979452 () Bool)

(assert (=> b!6137379 m!6979452))

(assert (=> bm!509339 d!1922824))

(assert (=> b!6136853 d!1922630))

(declare-fun b!6137385 () Bool)

(declare-fun e!3740486 () Bool)

(assert (=> b!6137385 (= e!3740486 (nullable!6073 (regOne!32672 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292)))))))))

(declare-fun bm!509421 () Bool)

(declare-fun call!509430 () (Set Context!10928))

(declare-fun call!509428 () (Set Context!10928))

(assert (=> bm!509421 (= call!509430 call!509428)))

(declare-fun b!6137387 () Bool)

(declare-fun e!3740487 () (Set Context!10928))

(declare-fun call!509429 () (Set Context!10928))

(assert (=> b!6137387 (= e!3740487 (set.union call!509429 call!509428))))

(declare-fun bm!509422 () Bool)

(declare-fun call!509431 () (Set Context!10928))

(assert (=> bm!509422 (= call!509428 call!509431)))

(declare-fun c!1103747 () Bool)

(declare-fun bm!509423 () Bool)

(declare-fun call!509426 () List!64539)

(declare-fun c!1103746 () Bool)

(assert (=> bm!509423 (= call!509426 ($colon$colon!1957 (exprs!5964 (ite c!1103607 lt!2332553 (Context!10929 call!509351))) (ite (or c!1103747 c!1103746) (regTwo!32672 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292))))) (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292)))))))))

(declare-fun bm!509424 () Bool)

(declare-fun call!509427 () List!64539)

(assert (=> bm!509424 (= call!509427 call!509426)))

(declare-fun b!6137388 () Bool)

(declare-fun e!3740489 () (Set Context!10928))

(declare-fun e!3740485 () (Set Context!10928))

(assert (=> b!6137388 (= e!3740489 e!3740485)))

(declare-fun c!1103749 () Bool)

(assert (=> b!6137388 (= c!1103749 (is-Union!16080 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292))))))))

(declare-fun bm!509425 () Bool)

(assert (=> bm!509425 (= call!509431 (derivationStepZipperDown!1328 (ite c!1103749 (regOne!32673 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292))))) (ite c!1103747 (regTwo!32672 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292))))) (ite c!1103746 (regOne!32672 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292))))) (reg!16409 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292)))))))) (ite (or c!1103749 c!1103747) (ite c!1103607 lt!2332553 (Context!10929 call!509351)) (Context!10929 call!509427)) (h!70865 s!2326)))))

(declare-fun b!6137389 () Bool)

(declare-fun e!3740490 () (Set Context!10928))

(assert (=> b!6137389 (= e!3740490 (as set.empty (Set Context!10928)))))

(declare-fun b!6137390 () Bool)

(assert (=> b!6137390 (= e!3740489 (set.insert (ite c!1103607 lt!2332553 (Context!10929 call!509351)) (as set.empty (Set Context!10928))))))

(declare-fun b!6137391 () Bool)

(assert (=> b!6137391 (= e!3740490 call!509430)))

(declare-fun b!6137392 () Bool)

(assert (=> b!6137392 (= e!3740485 (set.union call!509431 call!509429))))

(declare-fun b!6137393 () Bool)

(declare-fun e!3740488 () (Set Context!10928))

(assert (=> b!6137393 (= e!3740488 call!509430)))

(declare-fun b!6137394 () Bool)

(assert (=> b!6137394 (= e!3740487 e!3740488)))

(assert (=> b!6137394 (= c!1103746 (is-Concat!24925 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292))))))))

(declare-fun b!6137386 () Bool)

(declare-fun c!1103750 () Bool)

(assert (=> b!6137386 (= c!1103750 (is-Star!16080 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292))))))))

(assert (=> b!6137386 (= e!3740488 e!3740490)))

(declare-fun d!1922826 () Bool)

(declare-fun c!1103748 () Bool)

(assert (=> d!1922826 (= c!1103748 (and (is-ElementMatch!16080 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292))))) (= (c!1103508 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292))))) (h!70865 s!2326))))))

(assert (=> d!1922826 (= (derivationStepZipperDown!1328 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292)))) (ite c!1103607 lt!2332553 (Context!10929 call!509351)) (h!70865 s!2326)) e!3740489)))

(declare-fun b!6137395 () Bool)

(assert (=> b!6137395 (= c!1103747 e!3740486)))

(declare-fun res!2543211 () Bool)

(assert (=> b!6137395 (=> (not res!2543211) (not e!3740486))))

(assert (=> b!6137395 (= res!2543211 (is-Concat!24925 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292))))))))

(assert (=> b!6137395 (= e!3740485 e!3740487)))

(declare-fun bm!509426 () Bool)

(assert (=> bm!509426 (= call!509429 (derivationStepZipperDown!1328 (ite c!1103749 (regTwo!32673 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292))))) (regOne!32672 (ite c!1103607 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292)))))) (ite c!1103749 (ite c!1103607 lt!2332553 (Context!10929 call!509351)) (Context!10929 call!509426)) (h!70865 s!2326)))))

(assert (= (and d!1922826 c!1103748) b!6137390))

(assert (= (and d!1922826 (not c!1103748)) b!6137388))

(assert (= (and b!6137388 c!1103749) b!6137392))

(assert (= (and b!6137388 (not c!1103749)) b!6137395))

(assert (= (and b!6137395 res!2543211) b!6137385))

(assert (= (and b!6137395 c!1103747) b!6137387))

(assert (= (and b!6137395 (not c!1103747)) b!6137394))

(assert (= (and b!6137394 c!1103746) b!6137393))

(assert (= (and b!6137394 (not c!1103746)) b!6137386))

(assert (= (and b!6137386 c!1103750) b!6137391))

(assert (= (and b!6137386 (not c!1103750)) b!6137389))

(assert (= (or b!6137393 b!6137391) bm!509424))

(assert (= (or b!6137393 b!6137391) bm!509421))

(assert (= (or b!6137387 bm!509424) bm!509423))

(assert (= (or b!6137387 bm!509421) bm!509422))

(assert (= (or b!6137392 b!6137387) bm!509426))

(assert (= (or b!6137392 bm!509422) bm!509425))

(declare-fun m!6979454 () Bool)

(assert (=> bm!509426 m!6979454))

(declare-fun m!6979456 () Bool)

(assert (=> b!6137385 m!6979456))

(declare-fun m!6979458 () Bool)

(assert (=> bm!509423 m!6979458))

(declare-fun m!6979460 () Bool)

(assert (=> bm!509425 m!6979460))

(declare-fun m!6979462 () Bool)

(assert (=> b!6137390 m!6979462))

(assert (=> bm!509351 d!1922826))

(declare-fun d!1922828 () Bool)

(assert (=> d!1922828 true))

(declare-fun setRes!41506 () Bool)

(assert (=> d!1922828 setRes!41506))

(declare-fun condSetEmpty!41506 () Bool)

(declare-fun res!2543212 () (Set Context!10928))

(assert (=> d!1922828 (= condSetEmpty!41506 (= res!2543212 (as set.empty (Set Context!10928))))))

(assert (=> d!1922828 (= (choose!45598 lt!2332545 lambda!334390) res!2543212)))

(declare-fun setIsEmpty!41506 () Bool)

(assert (=> setIsEmpty!41506 setRes!41506))

(declare-fun tp!1714861 () Bool)

(declare-fun e!3740491 () Bool)

(declare-fun setElem!41506 () Context!10928)

(declare-fun setNonEmpty!41506 () Bool)

(assert (=> setNonEmpty!41506 (= setRes!41506 (and tp!1714861 (inv!83448 setElem!41506) e!3740491))))

(declare-fun setRest!41506 () (Set Context!10928))

(assert (=> setNonEmpty!41506 (= res!2543212 (set.union (set.insert setElem!41506 (as set.empty (Set Context!10928))) setRest!41506))))

(declare-fun b!6137396 () Bool)

(declare-fun tp!1714862 () Bool)

(assert (=> b!6137396 (= e!3740491 tp!1714862)))

(assert (= (and d!1922828 condSetEmpty!41506) setIsEmpty!41506))

(assert (= (and d!1922828 (not condSetEmpty!41506)) setNonEmpty!41506))

(assert (= setNonEmpty!41506 b!6137396))

(declare-fun m!6979464 () Bool)

(assert (=> setNonEmpty!41506 m!6979464))

(assert (=> d!1922654 d!1922828))

(declare-fun bs!1521994 () Bool)

(declare-fun d!1922830 () Bool)

(assert (= bs!1521994 (and d!1922830 d!1922678)))

(declare-fun lambda!334475 () Int)

(assert (=> bs!1521994 (= lambda!334475 lambda!334429)))

(declare-fun bs!1521995 () Bool)

(assert (= bs!1521995 (and d!1922830 d!1922664)))

(assert (=> bs!1521995 (= lambda!334475 lambda!334428)))

(declare-fun bs!1521996 () Bool)

(assert (= bs!1521996 (and d!1922830 d!1922660)))

(assert (=> bs!1521996 (= lambda!334475 lambda!334424)))

(declare-fun bs!1521997 () Bool)

(assert (= bs!1521997 (and d!1922830 d!1922600)))

(assert (=> bs!1521997 (= lambda!334475 lambda!334406)))

(declare-fun bs!1521998 () Bool)

(assert (= bs!1521998 (and d!1922830 d!1922662)))

(assert (=> bs!1521998 (= lambda!334475 lambda!334427)))

(declare-fun bs!1521999 () Bool)

(assert (= bs!1521999 (and d!1922830 d!1922680)))

(assert (=> bs!1521999 (= lambda!334475 lambda!334432)))

(declare-fun b!6137397 () Bool)

(declare-fun e!3740492 () Bool)

(declare-fun lt!2332705 () Regex!16080)

(assert (=> b!6137397 (= e!3740492 (isUnion!937 lt!2332705))))

(declare-fun b!6137398 () Bool)

(declare-fun e!3740493 () Bool)

(assert (=> b!6137398 (= e!3740493 (isEmptyLang!1507 lt!2332705))))

(declare-fun b!6137399 () Bool)

(declare-fun e!3740494 () Regex!16080)

(assert (=> b!6137399 (= e!3740494 (Union!16080 (h!70863 (t!378014 (unfocusZipperList!1501 zl!343))) (generalisedUnion!1924 (t!378014 (t!378014 (unfocusZipperList!1501 zl!343))))))))

(declare-fun b!6137400 () Bool)

(assert (=> b!6137400 (= e!3740494 EmptyLang!16080)))

(declare-fun b!6137401 () Bool)

(declare-fun e!3740497 () Bool)

(assert (=> b!6137401 (= e!3740497 e!3740493)))

(declare-fun c!1103752 () Bool)

(assert (=> b!6137401 (= c!1103752 (isEmpty!36363 (t!378014 (unfocusZipperList!1501 zl!343))))))

(declare-fun b!6137402 () Bool)

(assert (=> b!6137402 (= e!3740493 e!3740492)))

(declare-fun c!1103751 () Bool)

(assert (=> b!6137402 (= c!1103751 (isEmpty!36363 (tail!11767 (t!378014 (unfocusZipperList!1501 zl!343)))))))

(declare-fun b!6137403 () Bool)

(declare-fun e!3740495 () Regex!16080)

(assert (=> b!6137403 (= e!3740495 (h!70863 (t!378014 (unfocusZipperList!1501 zl!343))))))

(declare-fun b!6137404 () Bool)

(assert (=> b!6137404 (= e!3740492 (= lt!2332705 (head!12682 (t!378014 (unfocusZipperList!1501 zl!343)))))))

(assert (=> d!1922830 e!3740497))

(declare-fun res!2543214 () Bool)

(assert (=> d!1922830 (=> (not res!2543214) (not e!3740497))))

(assert (=> d!1922830 (= res!2543214 (validRegex!7816 lt!2332705))))

(assert (=> d!1922830 (= lt!2332705 e!3740495)))

(declare-fun c!1103754 () Bool)

(declare-fun e!3740496 () Bool)

(assert (=> d!1922830 (= c!1103754 e!3740496)))

(declare-fun res!2543213 () Bool)

(assert (=> d!1922830 (=> (not res!2543213) (not e!3740496))))

(assert (=> d!1922830 (= res!2543213 (is-Cons!64415 (t!378014 (unfocusZipperList!1501 zl!343))))))

(assert (=> d!1922830 (forall!15201 (t!378014 (unfocusZipperList!1501 zl!343)) lambda!334475)))

(assert (=> d!1922830 (= (generalisedUnion!1924 (t!378014 (unfocusZipperList!1501 zl!343))) lt!2332705)))

(declare-fun b!6137405 () Bool)

(assert (=> b!6137405 (= e!3740496 (isEmpty!36363 (t!378014 (t!378014 (unfocusZipperList!1501 zl!343)))))))

(declare-fun b!6137406 () Bool)

(assert (=> b!6137406 (= e!3740495 e!3740494)))

(declare-fun c!1103753 () Bool)

(assert (=> b!6137406 (= c!1103753 (is-Cons!64415 (t!378014 (unfocusZipperList!1501 zl!343))))))

(assert (= (and d!1922830 res!2543213) b!6137405))

(assert (= (and d!1922830 c!1103754) b!6137403))

(assert (= (and d!1922830 (not c!1103754)) b!6137406))

(assert (= (and b!6137406 c!1103753) b!6137399))

(assert (= (and b!6137406 (not c!1103753)) b!6137400))

(assert (= (and d!1922830 res!2543214) b!6137401))

(assert (= (and b!6137401 c!1103752) b!6137398))

(assert (= (and b!6137401 (not c!1103752)) b!6137402))

(assert (= (and b!6137402 c!1103751) b!6137404))

(assert (= (and b!6137402 (not c!1103751)) b!6137397))

(declare-fun m!6979466 () Bool)

(assert (=> d!1922830 m!6979466))

(declare-fun m!6979468 () Bool)

(assert (=> d!1922830 m!6979468))

(declare-fun m!6979470 () Bool)

(assert (=> b!6137399 m!6979470))

(declare-fun m!6979472 () Bool)

(assert (=> b!6137402 m!6979472))

(assert (=> b!6137402 m!6979472))

(declare-fun m!6979474 () Bool)

(assert (=> b!6137402 m!6979474))

(declare-fun m!6979476 () Bool)

(assert (=> b!6137397 m!6979476))

(declare-fun m!6979478 () Bool)

(assert (=> b!6137398 m!6979478))

(assert (=> b!6137401 m!6979074))

(declare-fun m!6979480 () Bool)

(assert (=> b!6137405 m!6979480))

(declare-fun m!6979482 () Bool)

(assert (=> b!6137404 m!6979482))

(assert (=> b!6136813 d!1922830))

(declare-fun b!6137415 () Bool)

(declare-fun e!3740503 () List!64541)

(assert (=> b!6137415 (= e!3740503 (_2!36362 (get!22222 lt!2332634)))))

(declare-fun b!6137416 () Bool)

(assert (=> b!6137416 (= e!3740503 (Cons!64417 (h!70865 (_1!36362 (get!22222 lt!2332634))) (++!14166 (t!378016 (_1!36362 (get!22222 lt!2332634))) (_2!36362 (get!22222 lt!2332634)))))))

(declare-fun b!6137417 () Bool)

(declare-fun res!2543219 () Bool)

(declare-fun e!3740502 () Bool)

(assert (=> b!6137417 (=> (not res!2543219) (not e!3740502))))

(declare-fun lt!2332708 () List!64541)

(declare-fun size!40223 (List!64541) Int)

(assert (=> b!6137417 (= res!2543219 (= (size!40223 lt!2332708) (+ (size!40223 (_1!36362 (get!22222 lt!2332634))) (size!40223 (_2!36362 (get!22222 lt!2332634))))))))

(declare-fun b!6137418 () Bool)

(assert (=> b!6137418 (= e!3740502 (or (not (= (_2!36362 (get!22222 lt!2332634)) Nil!64417)) (= lt!2332708 (_1!36362 (get!22222 lt!2332634)))))))

(declare-fun d!1922832 () Bool)

(assert (=> d!1922832 e!3740502))

(declare-fun res!2543220 () Bool)

(assert (=> d!1922832 (=> (not res!2543220) (not e!3740502))))

(declare-fun content!11986 (List!64541) (Set C!32430))

(assert (=> d!1922832 (= res!2543220 (= (content!11986 lt!2332708) (set.union (content!11986 (_1!36362 (get!22222 lt!2332634))) (content!11986 (_2!36362 (get!22222 lt!2332634))))))))

(assert (=> d!1922832 (= lt!2332708 e!3740503)))

(declare-fun c!1103757 () Bool)

(assert (=> d!1922832 (= c!1103757 (is-Nil!64417 (_1!36362 (get!22222 lt!2332634))))))

(assert (=> d!1922832 (= (++!14166 (_1!36362 (get!22222 lt!2332634)) (_2!36362 (get!22222 lt!2332634))) lt!2332708)))

(assert (= (and d!1922832 c!1103757) b!6137415))

(assert (= (and d!1922832 (not c!1103757)) b!6137416))

(assert (= (and d!1922832 res!2543220) b!6137417))

(assert (= (and b!6137417 res!2543219) b!6137418))

(declare-fun m!6979484 () Bool)

(assert (=> b!6137416 m!6979484))

(declare-fun m!6979486 () Bool)

(assert (=> b!6137417 m!6979486))

(declare-fun m!6979488 () Bool)

(assert (=> b!6137417 m!6979488))

(declare-fun m!6979490 () Bool)

(assert (=> b!6137417 m!6979490))

(declare-fun m!6979492 () Bool)

(assert (=> d!1922832 m!6979492))

(declare-fun m!6979494 () Bool)

(assert (=> d!1922832 m!6979494))

(declare-fun m!6979496 () Bool)

(assert (=> d!1922832 m!6979496))

(assert (=> b!6136684 d!1922832))

(declare-fun d!1922834 () Bool)

(assert (=> d!1922834 (= (get!22222 lt!2332634) (v!52109 lt!2332634))))

(assert (=> b!6136684 d!1922834))

(assert (=> d!1922630 d!1922788))

(declare-fun b!6137419 () Bool)

(declare-fun res!2543225 () Bool)

(declare-fun e!3740506 () Bool)

(assert (=> b!6137419 (=> res!2543225 e!3740506)))

(assert (=> b!6137419 (= res!2543225 (not (is-ElementMatch!16080 (regTwo!32672 r!7292))))))

(declare-fun e!3740509 () Bool)

(assert (=> b!6137419 (= e!3740509 e!3740506)))

(declare-fun b!6137420 () Bool)

(declare-fun e!3740510 () Bool)

(assert (=> b!6137420 (= e!3740510 (matchR!8263 (derivativeStep!4800 (regTwo!32672 r!7292) (head!12681 s!2326)) (tail!11766 s!2326)))))

(declare-fun b!6137421 () Bool)

(declare-fun e!3740507 () Bool)

(assert (=> b!6137421 (= e!3740506 e!3740507)))

(declare-fun res!2543222 () Bool)

(assert (=> b!6137421 (=> (not res!2543222) (not e!3740507))))

(declare-fun lt!2332709 () Bool)

(assert (=> b!6137421 (= res!2543222 (not lt!2332709))))

(declare-fun b!6137422 () Bool)

(declare-fun e!3740504 () Bool)

(assert (=> b!6137422 (= e!3740507 e!3740504)))

(declare-fun res!2543226 () Bool)

(assert (=> b!6137422 (=> res!2543226 e!3740504)))

(declare-fun call!509432 () Bool)

(assert (=> b!6137422 (= res!2543226 call!509432)))

(declare-fun b!6137423 () Bool)

(assert (=> b!6137423 (= e!3740509 (not lt!2332709))))

(declare-fun b!6137424 () Bool)

(declare-fun e!3740505 () Bool)

(assert (=> b!6137424 (= e!3740505 (= lt!2332709 call!509432))))

(declare-fun b!6137425 () Bool)

(declare-fun res!2543224 () Bool)

(assert (=> b!6137425 (=> res!2543224 e!3740506)))

(declare-fun e!3740508 () Bool)

(assert (=> b!6137425 (= res!2543224 e!3740508)))

(declare-fun res!2543227 () Bool)

(assert (=> b!6137425 (=> (not res!2543227) (not e!3740508))))

(assert (=> b!6137425 (= res!2543227 lt!2332709)))

(declare-fun b!6137426 () Bool)

(assert (=> b!6137426 (= e!3740504 (not (= (head!12681 s!2326) (c!1103508 (regTwo!32672 r!7292)))))))

(declare-fun d!1922836 () Bool)

(assert (=> d!1922836 e!3740505))

(declare-fun c!1103760 () Bool)

(assert (=> d!1922836 (= c!1103760 (is-EmptyExpr!16080 (regTwo!32672 r!7292)))))

(assert (=> d!1922836 (= lt!2332709 e!3740510)))

(declare-fun c!1103759 () Bool)

(assert (=> d!1922836 (= c!1103759 (isEmpty!36366 s!2326))))

(assert (=> d!1922836 (validRegex!7816 (regTwo!32672 r!7292))))

(assert (=> d!1922836 (= (matchR!8263 (regTwo!32672 r!7292) s!2326) lt!2332709)))

(declare-fun b!6137427 () Bool)

(assert (=> b!6137427 (= e!3740508 (= (head!12681 s!2326) (c!1103508 (regTwo!32672 r!7292))))))

(declare-fun b!6137428 () Bool)

(declare-fun res!2543228 () Bool)

(assert (=> b!6137428 (=> (not res!2543228) (not e!3740508))))

(assert (=> b!6137428 (= res!2543228 (isEmpty!36366 (tail!11766 s!2326)))))

(declare-fun b!6137429 () Bool)

(assert (=> b!6137429 (= e!3740510 (nullable!6073 (regTwo!32672 r!7292)))))

(declare-fun b!6137430 () Bool)

(declare-fun res!2543223 () Bool)

(assert (=> b!6137430 (=> res!2543223 e!3740504)))

(assert (=> b!6137430 (= res!2543223 (not (isEmpty!36366 (tail!11766 s!2326))))))

(declare-fun b!6137431 () Bool)

(declare-fun res!2543221 () Bool)

(assert (=> b!6137431 (=> (not res!2543221) (not e!3740508))))

(assert (=> b!6137431 (= res!2543221 (not call!509432))))

(declare-fun bm!509427 () Bool)

(assert (=> bm!509427 (= call!509432 (isEmpty!36366 s!2326))))

(declare-fun b!6137432 () Bool)

(assert (=> b!6137432 (= e!3740505 e!3740509)))

(declare-fun c!1103758 () Bool)

(assert (=> b!6137432 (= c!1103758 (is-EmptyLang!16080 (regTwo!32672 r!7292)))))

(assert (= (and d!1922836 c!1103759) b!6137429))

(assert (= (and d!1922836 (not c!1103759)) b!6137420))

(assert (= (and d!1922836 c!1103760) b!6137424))

(assert (= (and d!1922836 (not c!1103760)) b!6137432))

(assert (= (and b!6137432 c!1103758) b!6137423))

(assert (= (and b!6137432 (not c!1103758)) b!6137419))

(assert (= (and b!6137419 (not res!2543225)) b!6137425))

(assert (= (and b!6137425 res!2543227) b!6137431))

(assert (= (and b!6137431 res!2543221) b!6137428))

(assert (= (and b!6137428 res!2543228) b!6137427))

(assert (= (and b!6137425 (not res!2543224)) b!6137421))

(assert (= (and b!6137421 res!2543222) b!6137422))

(assert (= (and b!6137422 (not res!2543226)) b!6137430))

(assert (= (and b!6137430 (not res!2543223)) b!6137426))

(assert (= (or b!6137424 b!6137422 b!6137431) bm!509427))

(assert (=> d!1922836 m!6979026))

(declare-fun m!6979498 () Bool)

(assert (=> d!1922836 m!6979498))

(assert (=> b!6137427 m!6979030))

(assert (=> b!6137420 m!6979030))

(assert (=> b!6137420 m!6979030))

(declare-fun m!6979500 () Bool)

(assert (=> b!6137420 m!6979500))

(assert (=> b!6137420 m!6979034))

(assert (=> b!6137420 m!6979500))

(assert (=> b!6137420 m!6979034))

(declare-fun m!6979502 () Bool)

(assert (=> b!6137420 m!6979502))

(declare-fun m!6979504 () Bool)

(assert (=> b!6137429 m!6979504))

(assert (=> b!6137426 m!6979030))

(assert (=> b!6137428 m!6979034))

(assert (=> b!6137428 m!6979034))

(assert (=> b!6137428 m!6979040))

(assert (=> bm!509427 m!6979026))

(assert (=> b!6137430 m!6979034))

(assert (=> b!6137430 m!6979034))

(assert (=> b!6137430 m!6979040))

(assert (=> b!6136687 d!1922836))

(declare-fun d!1922838 () Bool)

(assert (=> d!1922838 (= (isEmpty!36363 (tail!11767 (unfocusZipperList!1501 zl!343))) (is-Nil!64415 (tail!11767 (unfocusZipperList!1501 zl!343))))))

(assert (=> b!6136816 d!1922838))

(declare-fun d!1922840 () Bool)

(assert (=> d!1922840 (= (tail!11767 (unfocusZipperList!1501 zl!343)) (t!378014 (unfocusZipperList!1501 zl!343)))))

(assert (=> b!6136816 d!1922840))

(declare-fun d!1922842 () Bool)

(declare-fun c!1103761 () Bool)

(assert (=> d!1922842 (= c!1103761 (isEmpty!36366 (tail!11766 (t!378016 s!2326))))))

(declare-fun e!3740511 () Bool)

(assert (=> d!1922842 (= (matchZipper!2092 (derivationStepZipper!2053 lt!2332550 (head!12681 (t!378016 s!2326))) (tail!11766 (t!378016 s!2326))) e!3740511)))

(declare-fun b!6137433 () Bool)

(assert (=> b!6137433 (= e!3740511 (nullableZipper!1861 (derivationStepZipper!2053 lt!2332550 (head!12681 (t!378016 s!2326)))))))

(declare-fun b!6137434 () Bool)

(assert (=> b!6137434 (= e!3740511 (matchZipper!2092 (derivationStepZipper!2053 (derivationStepZipper!2053 lt!2332550 (head!12681 (t!378016 s!2326))) (head!12681 (tail!11766 (t!378016 s!2326)))) (tail!11766 (tail!11766 (t!378016 s!2326)))))))

(assert (= (and d!1922842 c!1103761) b!6137433))

(assert (= (and d!1922842 (not c!1103761)) b!6137434))

(assert (=> d!1922842 m!6978954))

(declare-fun m!6979506 () Bool)

(assert (=> d!1922842 m!6979506))

(assert (=> b!6137433 m!6978972))

(declare-fun m!6979508 () Bool)

(assert (=> b!6137433 m!6979508))

(assert (=> b!6137434 m!6978954))

(declare-fun m!6979510 () Bool)

(assert (=> b!6137434 m!6979510))

(assert (=> b!6137434 m!6978972))

(assert (=> b!6137434 m!6979510))

(declare-fun m!6979512 () Bool)

(assert (=> b!6137434 m!6979512))

(assert (=> b!6137434 m!6978954))

(declare-fun m!6979514 () Bool)

(assert (=> b!6137434 m!6979514))

(assert (=> b!6137434 m!6979512))

(assert (=> b!6137434 m!6979514))

(declare-fun m!6979516 () Bool)

(assert (=> b!6137434 m!6979516))

(assert (=> b!6136634 d!1922842))

(declare-fun bs!1522000 () Bool)

(declare-fun d!1922844 () Bool)

(assert (= bs!1522000 (and d!1922844 b!6136452)))

(declare-fun lambda!334478 () Int)

(assert (=> bs!1522000 (= (= (head!12681 (t!378016 s!2326)) (h!70865 s!2326)) (= lambda!334478 lambda!334390))))

(assert (=> d!1922844 true))

(assert (=> d!1922844 (= (derivationStepZipper!2053 lt!2332550 (head!12681 (t!378016 s!2326))) (flatMap!1585 lt!2332550 lambda!334478))))

(declare-fun bs!1522001 () Bool)

(assert (= bs!1522001 d!1922844))

(declare-fun m!6979518 () Bool)

(assert (=> bs!1522001 m!6979518))

(assert (=> b!6136634 d!1922844))

(declare-fun d!1922846 () Bool)

(assert (=> d!1922846 (= (head!12681 (t!378016 s!2326)) (h!70865 (t!378016 s!2326)))))

(assert (=> b!6136634 d!1922846))

(declare-fun d!1922848 () Bool)

(assert (=> d!1922848 (= (tail!11766 (t!378016 s!2326)) (t!378016 (t!378016 s!2326)))))

(assert (=> b!6136634 d!1922848))

(declare-fun b!6137438 () Bool)

(declare-fun e!3740514 () (Set Context!10928))

(declare-fun call!509433 () (Set Context!10928))

(assert (=> b!6137438 (= e!3740514 (set.union call!509433 (derivationStepZipperUp!1254 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332553)))))) (h!70865 s!2326))))))

(declare-fun b!6137439 () Bool)

(declare-fun e!3740512 () (Set Context!10928))

(assert (=> b!6137439 (= e!3740512 (as set.empty (Set Context!10928)))))

(declare-fun b!6137440 () Bool)

(assert (=> b!6137440 (= e!3740512 call!509433)))

(declare-fun bm!509428 () Bool)

(assert (=> bm!509428 (= call!509433 (derivationStepZipperDown!1328 (h!70863 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332553))))) (Context!10929 (t!378014 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332553)))))) (h!70865 s!2326)))))

(declare-fun b!6137441 () Bool)

(declare-fun e!3740513 () Bool)

(assert (=> b!6137441 (= e!3740513 (nullable!6073 (h!70863 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332553)))))))))

(declare-fun b!6137437 () Bool)

(assert (=> b!6137437 (= e!3740514 e!3740512)))

(declare-fun c!1103764 () Bool)

(assert (=> b!6137437 (= c!1103764 (is-Cons!64415 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332553))))))))

(declare-fun d!1922850 () Bool)

(declare-fun c!1103765 () Bool)

(assert (=> d!1922850 (= c!1103765 e!3740513)))

(declare-fun res!2543229 () Bool)

(assert (=> d!1922850 (=> (not res!2543229) (not e!3740513))))

(assert (=> d!1922850 (= res!2543229 (is-Cons!64415 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332553))))))))

(assert (=> d!1922850 (= (derivationStepZipperUp!1254 (Context!10929 (t!378014 (exprs!5964 lt!2332553))) (h!70865 s!2326)) e!3740514)))

(assert (= (and d!1922850 res!2543229) b!6137441))

(assert (= (and d!1922850 c!1103765) b!6137438))

(assert (= (and d!1922850 (not c!1103765)) b!6137437))

(assert (= (and b!6137437 c!1103764) b!6137440))

(assert (= (and b!6137437 (not c!1103764)) b!6137439))

(assert (= (or b!6137438 b!6137440) bm!509428))

(declare-fun m!6979520 () Bool)

(assert (=> b!6137438 m!6979520))

(declare-fun m!6979522 () Bool)

(assert (=> bm!509428 m!6979522))

(declare-fun m!6979524 () Bool)

(assert (=> b!6137441 m!6979524))

(assert (=> b!6136578 d!1922850))

(declare-fun b!6137443 () Bool)

(declare-fun call!509434 () (Set Context!10928))

(declare-fun e!3740517 () (Set Context!10928))

(assert (=> b!6137443 (= e!3740517 (set.union call!509434 (derivationStepZipperUp!1254 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))))))))) (h!70865 s!2326))))))

(declare-fun b!6137444 () Bool)

(declare-fun e!3740515 () (Set Context!10928))

(assert (=> b!6137444 (= e!3740515 (as set.empty (Set Context!10928)))))

(declare-fun b!6137445 () Bool)

(assert (=> b!6137445 (= e!3740515 call!509434)))

(declare-fun bm!509429 () Bool)

(assert (=> bm!509429 (= call!509434 (derivationStepZipperDown!1328 (h!70863 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))))) (Context!10929 (t!378014 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))))))))) (h!70865 s!2326)))))

(declare-fun b!6137446 () Bool)

(declare-fun e!3740516 () Bool)

(assert (=> b!6137446 (= e!3740516 (nullable!6073 (h!70863 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))))))))))))

(declare-fun b!6137442 () Bool)

(assert (=> b!6137442 (= e!3740517 e!3740515)))

(declare-fun c!1103766 () Bool)

(assert (=> b!6137442 (= c!1103766 (is-Cons!64415 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))))))))

(declare-fun d!1922852 () Bool)

(declare-fun c!1103767 () Bool)

(assert (=> d!1922852 (= c!1103767 e!3740516)))

(declare-fun res!2543230 () Bool)

(assert (=> d!1922852 (=> (not res!2543230) (not e!3740516))))

(assert (=> d!1922852 (= res!2543230 (is-Cons!64415 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))))))))

(assert (=> d!1922852 (= (derivationStepZipperUp!1254 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (h!70865 s!2326)) e!3740517)))

(assert (= (and d!1922852 res!2543230) b!6137446))

(assert (= (and d!1922852 c!1103767) b!6137443))

(assert (= (and d!1922852 (not c!1103767)) b!6137442))

(assert (= (and b!6137442 c!1103766) b!6137445))

(assert (= (and b!6137442 (not c!1103766)) b!6137444))

(assert (= (or b!6137443 b!6137445) bm!509429))

(declare-fun m!6979526 () Bool)

(assert (=> b!6137443 m!6979526))

(declare-fun m!6979528 () Bool)

(assert (=> bm!509429 m!6979528))

(declare-fun m!6979530 () Bool)

(assert (=> b!6137446 m!6979530))

(assert (=> b!6136573 d!1922852))

(declare-fun call!509435 () (Set Context!10928))

(declare-fun b!6137448 () Bool)

(declare-fun e!3740520 () (Set Context!10928))

(assert (=> b!6137448 (= e!3740520 (set.union call!509435 (derivationStepZipperUp!1254 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343))))))) (h!70865 s!2326))))))

(declare-fun b!6137449 () Bool)

(declare-fun e!3740518 () (Set Context!10928))

(assert (=> b!6137449 (= e!3740518 (as set.empty (Set Context!10928)))))

(declare-fun b!6137450 () Bool)

(assert (=> b!6137450 (= e!3740518 call!509435)))

(declare-fun bm!509430 () Bool)

(assert (=> bm!509430 (= call!509435 (derivationStepZipperDown!1328 (h!70863 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343)))))) (Context!10929 (t!378014 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343))))))) (h!70865 s!2326)))))

(declare-fun b!6137451 () Bool)

(declare-fun e!3740519 () Bool)

(assert (=> b!6137451 (= e!3740519 (nullable!6073 (h!70863 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343))))))))))

(declare-fun b!6137447 () Bool)

(assert (=> b!6137447 (= e!3740520 e!3740518)))

(declare-fun c!1103768 () Bool)

(assert (=> b!6137447 (= c!1103768 (is-Cons!64415 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343)))))))))

(declare-fun d!1922854 () Bool)

(declare-fun c!1103769 () Bool)

(assert (=> d!1922854 (= c!1103769 e!3740519)))

(declare-fun res!2543231 () Bool)

(assert (=> d!1922854 (=> (not res!2543231) (not e!3740519))))

(assert (=> d!1922854 (= res!2543231 (is-Cons!64415 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343)))))))))

(assert (=> d!1922854 (= (derivationStepZipperUp!1254 (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343)))) (h!70865 s!2326)) e!3740520)))

(assert (= (and d!1922854 res!2543231) b!6137451))

(assert (= (and d!1922854 c!1103769) b!6137448))

(assert (= (and d!1922854 (not c!1103769)) b!6137447))

(assert (= (and b!6137447 c!1103768) b!6137450))

(assert (= (and b!6137447 (not c!1103768)) b!6137449))

(assert (= (or b!6137448 b!6137450) bm!509430))

(declare-fun m!6979532 () Bool)

(assert (=> b!6137448 m!6979532))

(declare-fun m!6979534 () Bool)

(assert (=> bm!509430 m!6979534))

(declare-fun m!6979536 () Bool)

(assert (=> b!6137451 m!6979536))

(assert (=> b!6136583 d!1922854))

(declare-fun d!1922856 () Bool)

(assert (=> d!1922856 (= (nullable!6073 r!7292) (nullableFct!2037 r!7292))))

(declare-fun bs!1522002 () Bool)

(assert (= bs!1522002 d!1922856))

(declare-fun m!6979538 () Bool)

(assert (=> bs!1522002 m!6979538))

(assert (=> b!6136782 d!1922856))

(assert (=> b!6136586 d!1922608))

(declare-fun d!1922858 () Bool)

(assert (=> d!1922858 (= ($colon$colon!1957 (exprs!5964 lt!2332553) (ite (or c!1103600 c!1103599) (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (regTwo!32673 (regOne!32672 r!7292)))) (Cons!64415 (ite (or c!1103600 c!1103599) (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (regTwo!32673 (regOne!32672 r!7292))) (exprs!5964 lt!2332553)))))

(assert (=> bm!509342 d!1922858))

(declare-fun d!1922860 () Bool)

(assert (=> d!1922860 (= (nullable!6073 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343))))) (nullableFct!2037 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343))))))))

(declare-fun bs!1522003 () Bool)

(assert (= bs!1522003 d!1922860))

(declare-fun m!6979540 () Bool)

(assert (=> bs!1522003 m!6979540))

(assert (=> b!6136609 d!1922860))

(declare-fun d!1922862 () Bool)

(assert (=> d!1922862 (= (isConcat!1020 lt!2332660) (is-Concat!24925 lt!2332660))))

(assert (=> b!6136883 d!1922862))

(declare-fun d!1922864 () Bool)

(assert (=> d!1922864 (= (nullable!6073 (h!70863 (exprs!5964 lt!2332553))) (nullableFct!2037 (h!70863 (exprs!5964 lt!2332553))))))

(declare-fun bs!1522004 () Bool)

(assert (= bs!1522004 d!1922864))

(declare-fun m!6979542 () Bool)

(assert (=> bs!1522004 m!6979542))

(assert (=> b!6136581 d!1922864))

(declare-fun d!1922866 () Bool)

(assert (=> d!1922866 (= (isEmpty!36366 s!2326) (is-Nil!64417 s!2326))))

(assert (=> bm!509335 d!1922866))

(assert (=> bs!1521927 d!1922614))

(declare-fun d!1922868 () Bool)

(assert (=> d!1922868 (= (nullable!6073 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (nullableFct!2037 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))))))

(declare-fun bs!1522005 () Bool)

(assert (= bs!1522005 d!1922868))

(declare-fun m!6979544 () Bool)

(assert (=> bs!1522005 m!6979544))

(assert (=> b!6136576 d!1922868))

(assert (=> d!1922648 d!1922866))

(assert (=> d!1922648 d!1922632))

(declare-fun d!1922870 () Bool)

(assert (=> d!1922870 true))

(assert (=> d!1922870 true))

(declare-fun res!2543234 () Bool)

(assert (=> d!1922870 (= (choose!45600 lambda!334389) res!2543234)))

(assert (=> d!1922642 d!1922870))

(declare-fun bm!509435 () Bool)

(declare-fun call!509441 () Bool)

(declare-fun c!1103772 () Bool)

(assert (=> bm!509435 (= call!509441 (nullable!6073 (ite c!1103772 (regOne!32673 (regOne!32673 (regOne!32672 r!7292))) (regOne!32672 (regOne!32673 (regOne!32672 r!7292))))))))

(declare-fun b!6137466 () Bool)

(declare-fun e!3740533 () Bool)

(declare-fun e!3740538 () Bool)

(assert (=> b!6137466 (= e!3740533 e!3740538)))

(declare-fun res!2543247 () Bool)

(assert (=> b!6137466 (= res!2543247 call!509441)))

(assert (=> b!6137466 (=> res!2543247 e!3740538)))

(declare-fun bm!509436 () Bool)

(declare-fun call!509440 () Bool)

(assert (=> bm!509436 (= call!509440 (nullable!6073 (ite c!1103772 (regTwo!32673 (regOne!32673 (regOne!32672 r!7292))) (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))))))))

(declare-fun b!6137468 () Bool)

(declare-fun e!3740537 () Bool)

(assert (=> b!6137468 (= e!3740537 e!3740533)))

(assert (=> b!6137468 (= c!1103772 (is-Union!16080 (regOne!32673 (regOne!32672 r!7292))))))

(declare-fun b!6137469 () Bool)

(declare-fun e!3740534 () Bool)

(declare-fun e!3740536 () Bool)

(assert (=> b!6137469 (= e!3740534 e!3740536)))

(declare-fun res!2543245 () Bool)

(assert (=> b!6137469 (=> (not res!2543245) (not e!3740536))))

(assert (=> b!6137469 (= res!2543245 (and (not (is-EmptyLang!16080 (regOne!32673 (regOne!32672 r!7292)))) (not (is-ElementMatch!16080 (regOne!32673 (regOne!32672 r!7292))))))))

(declare-fun b!6137470 () Bool)

(assert (=> b!6137470 (= e!3740536 e!3740537)))

(declare-fun res!2543249 () Bool)

(assert (=> b!6137470 (=> res!2543249 e!3740537)))

(assert (=> b!6137470 (= res!2543249 (is-Star!16080 (regOne!32673 (regOne!32672 r!7292))))))

(declare-fun d!1922872 () Bool)

(declare-fun res!2543246 () Bool)

(assert (=> d!1922872 (=> res!2543246 e!3740534)))

(assert (=> d!1922872 (= res!2543246 (is-EmptyExpr!16080 (regOne!32673 (regOne!32672 r!7292))))))

(assert (=> d!1922872 (= (nullableFct!2037 (regOne!32673 (regOne!32672 r!7292))) e!3740534)))

(declare-fun b!6137467 () Bool)

(declare-fun e!3740535 () Bool)

(assert (=> b!6137467 (= e!3740535 call!509440)))

(declare-fun b!6137471 () Bool)

(assert (=> b!6137471 (= e!3740533 e!3740535)))

(declare-fun res!2543248 () Bool)

(assert (=> b!6137471 (= res!2543248 call!509441)))

(assert (=> b!6137471 (=> (not res!2543248) (not e!3740535))))

(declare-fun b!6137472 () Bool)

(assert (=> b!6137472 (= e!3740538 call!509440)))

(assert (= (and d!1922872 (not res!2543246)) b!6137469))

(assert (= (and b!6137469 res!2543245) b!6137470))

(assert (= (and b!6137470 (not res!2543249)) b!6137468))

(assert (= (and b!6137468 c!1103772) b!6137466))

(assert (= (and b!6137468 (not c!1103772)) b!6137471))

(assert (= (and b!6137466 (not res!2543247)) b!6137472))

(assert (= (and b!6137471 res!2543248) b!6137467))

(assert (= (or b!6137472 b!6137467) bm!509436))

(assert (= (or b!6137466 b!6137471) bm!509435))

(declare-fun m!6979546 () Bool)

(assert (=> bm!509435 m!6979546))

(declare-fun m!6979548 () Bool)

(assert (=> bm!509436 m!6979548))

(assert (=> d!1922652 d!1922872))

(declare-fun d!1922874 () Bool)

(assert (=> d!1922874 (= ($colon$colon!1957 (exprs!5964 lt!2332553) (ite (or c!1103539 c!1103538) (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (h!70863 (exprs!5964 (h!70864 zl!343))))) (Cons!64415 (ite (or c!1103539 c!1103538) (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (h!70863 (exprs!5964 (h!70864 zl!343)))) (exprs!5964 lt!2332553)))))

(assert (=> bm!509317 d!1922874))

(declare-fun d!1922876 () Bool)

(declare-fun c!1103773 () Bool)

(assert (=> d!1922876 (= c!1103773 (isEmpty!36366 (tail!11766 (t!378016 s!2326))))))

(declare-fun e!3740539 () Bool)

(assert (=> d!1922876 (= (matchZipper!2092 (derivationStepZipper!2053 lt!2332536 (head!12681 (t!378016 s!2326))) (tail!11766 (t!378016 s!2326))) e!3740539)))

(declare-fun b!6137473 () Bool)

(assert (=> b!6137473 (= e!3740539 (nullableZipper!1861 (derivationStepZipper!2053 lt!2332536 (head!12681 (t!378016 s!2326)))))))

(declare-fun b!6137474 () Bool)

(assert (=> b!6137474 (= e!3740539 (matchZipper!2092 (derivationStepZipper!2053 (derivationStepZipper!2053 lt!2332536 (head!12681 (t!378016 s!2326))) (head!12681 (tail!11766 (t!378016 s!2326)))) (tail!11766 (tail!11766 (t!378016 s!2326)))))))

(assert (= (and d!1922876 c!1103773) b!6137473))

(assert (= (and d!1922876 (not c!1103773)) b!6137474))

(assert (=> d!1922876 m!6978954))

(assert (=> d!1922876 m!6979506))

(assert (=> b!6137473 m!6978966))

(declare-fun m!6979550 () Bool)

(assert (=> b!6137473 m!6979550))

(assert (=> b!6137474 m!6978954))

(assert (=> b!6137474 m!6979510))

(assert (=> b!6137474 m!6978966))

(assert (=> b!6137474 m!6979510))

(declare-fun m!6979552 () Bool)

(assert (=> b!6137474 m!6979552))

(assert (=> b!6137474 m!6978954))

(assert (=> b!6137474 m!6979514))

(assert (=> b!6137474 m!6979552))

(assert (=> b!6137474 m!6979514))

(declare-fun m!6979554 () Bool)

(assert (=> b!6137474 m!6979554))

(assert (=> b!6136632 d!1922876))

(declare-fun bs!1522006 () Bool)

(declare-fun d!1922878 () Bool)

(assert (= bs!1522006 (and d!1922878 b!6136452)))

(declare-fun lambda!334479 () Int)

(assert (=> bs!1522006 (= (= (head!12681 (t!378016 s!2326)) (h!70865 s!2326)) (= lambda!334479 lambda!334390))))

(declare-fun bs!1522007 () Bool)

(assert (= bs!1522007 (and d!1922878 d!1922844)))

(assert (=> bs!1522007 (= lambda!334479 lambda!334478)))

(assert (=> d!1922878 true))

(assert (=> d!1922878 (= (derivationStepZipper!2053 lt!2332536 (head!12681 (t!378016 s!2326))) (flatMap!1585 lt!2332536 lambda!334479))))

(declare-fun bs!1522008 () Bool)

(assert (= bs!1522008 d!1922878))

(declare-fun m!6979556 () Bool)

(assert (=> bs!1522008 m!6979556))

(assert (=> b!6136632 d!1922878))

(assert (=> b!6136632 d!1922846))

(assert (=> b!6136632 d!1922848))

(assert (=> d!1922624 d!1922788))

(declare-fun b!6137475 () Bool)

(declare-fun res!2543254 () Bool)

(declare-fun e!3740542 () Bool)

(assert (=> b!6137475 (=> res!2543254 e!3740542)))

(assert (=> b!6137475 (= res!2543254 (not (is-ElementMatch!16080 (regTwo!32672 r!7292))))))

(declare-fun e!3740545 () Bool)

(assert (=> b!6137475 (= e!3740545 e!3740542)))

(declare-fun b!6137476 () Bool)

(declare-fun e!3740546 () Bool)

(assert (=> b!6137476 (= e!3740546 (matchR!8263 (derivativeStep!4800 (regTwo!32672 r!7292) (head!12681 (_2!36362 (get!22222 lt!2332634)))) (tail!11766 (_2!36362 (get!22222 lt!2332634)))))))

(declare-fun b!6137477 () Bool)

(declare-fun e!3740543 () Bool)

(assert (=> b!6137477 (= e!3740542 e!3740543)))

(declare-fun res!2543251 () Bool)

(assert (=> b!6137477 (=> (not res!2543251) (not e!3740543))))

(declare-fun lt!2332710 () Bool)

(assert (=> b!6137477 (= res!2543251 (not lt!2332710))))

(declare-fun b!6137478 () Bool)

(declare-fun e!3740540 () Bool)

(assert (=> b!6137478 (= e!3740543 e!3740540)))

(declare-fun res!2543255 () Bool)

(assert (=> b!6137478 (=> res!2543255 e!3740540)))

(declare-fun call!509442 () Bool)

(assert (=> b!6137478 (= res!2543255 call!509442)))

(declare-fun b!6137479 () Bool)

(assert (=> b!6137479 (= e!3740545 (not lt!2332710))))

(declare-fun b!6137480 () Bool)

(declare-fun e!3740541 () Bool)

(assert (=> b!6137480 (= e!3740541 (= lt!2332710 call!509442))))

(declare-fun b!6137481 () Bool)

(declare-fun res!2543253 () Bool)

(assert (=> b!6137481 (=> res!2543253 e!3740542)))

(declare-fun e!3740544 () Bool)

(assert (=> b!6137481 (= res!2543253 e!3740544)))

(declare-fun res!2543256 () Bool)

(assert (=> b!6137481 (=> (not res!2543256) (not e!3740544))))

(assert (=> b!6137481 (= res!2543256 lt!2332710)))

(declare-fun b!6137482 () Bool)

(assert (=> b!6137482 (= e!3740540 (not (= (head!12681 (_2!36362 (get!22222 lt!2332634))) (c!1103508 (regTwo!32672 r!7292)))))))

(declare-fun d!1922880 () Bool)

(assert (=> d!1922880 e!3740541))

(declare-fun c!1103776 () Bool)

(assert (=> d!1922880 (= c!1103776 (is-EmptyExpr!16080 (regTwo!32672 r!7292)))))

(assert (=> d!1922880 (= lt!2332710 e!3740546)))

(declare-fun c!1103775 () Bool)

(assert (=> d!1922880 (= c!1103775 (isEmpty!36366 (_2!36362 (get!22222 lt!2332634))))))

(assert (=> d!1922880 (validRegex!7816 (regTwo!32672 r!7292))))

(assert (=> d!1922880 (= (matchR!8263 (regTwo!32672 r!7292) (_2!36362 (get!22222 lt!2332634))) lt!2332710)))

(declare-fun b!6137483 () Bool)

(assert (=> b!6137483 (= e!3740544 (= (head!12681 (_2!36362 (get!22222 lt!2332634))) (c!1103508 (regTwo!32672 r!7292))))))

(declare-fun b!6137484 () Bool)

(declare-fun res!2543257 () Bool)

(assert (=> b!6137484 (=> (not res!2543257) (not e!3740544))))

(assert (=> b!6137484 (= res!2543257 (isEmpty!36366 (tail!11766 (_2!36362 (get!22222 lt!2332634)))))))

(declare-fun b!6137485 () Bool)

(assert (=> b!6137485 (= e!3740546 (nullable!6073 (regTwo!32672 r!7292)))))

(declare-fun b!6137486 () Bool)

(declare-fun res!2543252 () Bool)

(assert (=> b!6137486 (=> res!2543252 e!3740540)))

(assert (=> b!6137486 (= res!2543252 (not (isEmpty!36366 (tail!11766 (_2!36362 (get!22222 lt!2332634))))))))

(declare-fun b!6137487 () Bool)

(declare-fun res!2543250 () Bool)

(assert (=> b!6137487 (=> (not res!2543250) (not e!3740544))))

(assert (=> b!6137487 (= res!2543250 (not call!509442))))

(declare-fun bm!509437 () Bool)

(assert (=> bm!509437 (= call!509442 (isEmpty!36366 (_2!36362 (get!22222 lt!2332634))))))

(declare-fun b!6137488 () Bool)

(assert (=> b!6137488 (= e!3740541 e!3740545)))

(declare-fun c!1103774 () Bool)

(assert (=> b!6137488 (= c!1103774 (is-EmptyLang!16080 (regTwo!32672 r!7292)))))

(assert (= (and d!1922880 c!1103775) b!6137485))

(assert (= (and d!1922880 (not c!1103775)) b!6137476))

(assert (= (and d!1922880 c!1103776) b!6137480))

(assert (= (and d!1922880 (not c!1103776)) b!6137488))

(assert (= (and b!6137488 c!1103774) b!6137479))

(assert (= (and b!6137488 (not c!1103774)) b!6137475))

(assert (= (and b!6137475 (not res!2543254)) b!6137481))

(assert (= (and b!6137481 res!2543256) b!6137487))

(assert (= (and b!6137487 res!2543250) b!6137484))

(assert (= (and b!6137484 res!2543257) b!6137483))

(assert (= (and b!6137481 (not res!2543253)) b!6137477))

(assert (= (and b!6137477 res!2543251) b!6137478))

(assert (= (and b!6137478 (not res!2543255)) b!6137486))

(assert (= (and b!6137486 (not res!2543252)) b!6137482))

(assert (= (or b!6137480 b!6137478 b!6137487) bm!509437))

(declare-fun m!6979558 () Bool)

(assert (=> d!1922880 m!6979558))

(assert (=> d!1922880 m!6979498))

(declare-fun m!6979560 () Bool)

(assert (=> b!6137483 m!6979560))

(assert (=> b!6137476 m!6979560))

(assert (=> b!6137476 m!6979560))

(declare-fun m!6979562 () Bool)

(assert (=> b!6137476 m!6979562))

(declare-fun m!6979564 () Bool)

(assert (=> b!6137476 m!6979564))

(assert (=> b!6137476 m!6979562))

(assert (=> b!6137476 m!6979564))

(declare-fun m!6979566 () Bool)

(assert (=> b!6137476 m!6979566))

(assert (=> b!6137485 m!6979504))

(assert (=> b!6137482 m!6979560))

(assert (=> b!6137484 m!6979564))

(assert (=> b!6137484 m!6979564))

(declare-fun m!6979568 () Bool)

(assert (=> b!6137484 m!6979568))

(assert (=> bm!509437 m!6979558))

(assert (=> b!6137486 m!6979564))

(assert (=> b!6137486 m!6979564))

(assert (=> b!6137486 m!6979568))

(assert (=> b!6136683 d!1922880))

(assert (=> b!6136683 d!1922834))

(declare-fun d!1922882 () Bool)

(declare-fun c!1103777 () Bool)

(assert (=> d!1922882 (= c!1103777 (isEmpty!36366 (tail!11766 (t!378016 s!2326))))))

(declare-fun e!3740547 () Bool)

(assert (=> d!1922882 (= (matchZipper!2092 (derivationStepZipper!2053 (set.union lt!2332533 lt!2332536) (head!12681 (t!378016 s!2326))) (tail!11766 (t!378016 s!2326))) e!3740547)))

(declare-fun b!6137489 () Bool)

(assert (=> b!6137489 (= e!3740547 (nullableZipper!1861 (derivationStepZipper!2053 (set.union lt!2332533 lt!2332536) (head!12681 (t!378016 s!2326)))))))

(declare-fun b!6137490 () Bool)

(assert (=> b!6137490 (= e!3740547 (matchZipper!2092 (derivationStepZipper!2053 (derivationStepZipper!2053 (set.union lt!2332533 lt!2332536) (head!12681 (t!378016 s!2326))) (head!12681 (tail!11766 (t!378016 s!2326)))) (tail!11766 (tail!11766 (t!378016 s!2326)))))))

(assert (= (and d!1922882 c!1103777) b!6137489))

(assert (= (and d!1922882 (not c!1103777)) b!6137490))

(assert (=> d!1922882 m!6978954))

(assert (=> d!1922882 m!6979506))

(assert (=> b!6137489 m!6978960))

(declare-fun m!6979570 () Bool)

(assert (=> b!6137489 m!6979570))

(assert (=> b!6137490 m!6978954))

(assert (=> b!6137490 m!6979510))

(assert (=> b!6137490 m!6978960))

(assert (=> b!6137490 m!6979510))

(declare-fun m!6979572 () Bool)

(assert (=> b!6137490 m!6979572))

(assert (=> b!6137490 m!6978954))

(assert (=> b!6137490 m!6979514))

(assert (=> b!6137490 m!6979572))

(assert (=> b!6137490 m!6979514))

(declare-fun m!6979574 () Bool)

(assert (=> b!6137490 m!6979574))

(assert (=> b!6136630 d!1922882))

(declare-fun bs!1522009 () Bool)

(declare-fun d!1922884 () Bool)

(assert (= bs!1522009 (and d!1922884 b!6136452)))

(declare-fun lambda!334480 () Int)

(assert (=> bs!1522009 (= (= (head!12681 (t!378016 s!2326)) (h!70865 s!2326)) (= lambda!334480 lambda!334390))))

(declare-fun bs!1522010 () Bool)

(assert (= bs!1522010 (and d!1922884 d!1922844)))

(assert (=> bs!1522010 (= lambda!334480 lambda!334478)))

(declare-fun bs!1522011 () Bool)

(assert (= bs!1522011 (and d!1922884 d!1922878)))

(assert (=> bs!1522011 (= lambda!334480 lambda!334479)))

(assert (=> d!1922884 true))

(assert (=> d!1922884 (= (derivationStepZipper!2053 (set.union lt!2332533 lt!2332536) (head!12681 (t!378016 s!2326))) (flatMap!1585 (set.union lt!2332533 lt!2332536) lambda!334480))))

(declare-fun bs!1522012 () Bool)

(assert (= bs!1522012 d!1922884))

(declare-fun m!6979576 () Bool)

(assert (=> bs!1522012 m!6979576))

(assert (=> b!6136630 d!1922884))

(assert (=> b!6136630 d!1922846))

(assert (=> b!6136630 d!1922848))

(declare-fun d!1922886 () Bool)

(assert (=> d!1922886 (= (isEmptyLang!1507 lt!2332650) (is-EmptyLang!16080 lt!2332650))))

(assert (=> b!6136812 d!1922886))

(declare-fun d!1922888 () Bool)

(declare-fun res!2543258 () Bool)

(declare-fun e!3740548 () Bool)

(assert (=> d!1922888 (=> res!2543258 e!3740548)))

(assert (=> d!1922888 (= res!2543258 (is-Nil!64415 (exprs!5964 setElem!41493)))))

(assert (=> d!1922888 (= (forall!15201 (exprs!5964 setElem!41493) lambda!334428) e!3740548)))

(declare-fun b!6137491 () Bool)

(declare-fun e!3740549 () Bool)

(assert (=> b!6137491 (= e!3740548 e!3740549)))

(declare-fun res!2543259 () Bool)

(assert (=> b!6137491 (=> (not res!2543259) (not e!3740549))))

(assert (=> b!6137491 (= res!2543259 (dynLambda!25383 lambda!334428 (h!70863 (exprs!5964 setElem!41493))))))

(declare-fun b!6137492 () Bool)

(assert (=> b!6137492 (= e!3740549 (forall!15201 (t!378014 (exprs!5964 setElem!41493)) lambda!334428))))

(assert (= (and d!1922888 (not res!2543258)) b!6137491))

(assert (= (and b!6137491 res!2543259) b!6137492))

(declare-fun b_lambda!233591 () Bool)

(assert (=> (not b_lambda!233591) (not b!6137491)))

(declare-fun m!6979578 () Bool)

(assert (=> b!6137491 m!6979578))

(declare-fun m!6979580 () Bool)

(assert (=> b!6137492 m!6979580))

(assert (=> d!1922664 d!1922888))

(declare-fun bs!1522013 () Bool)

(declare-fun d!1922890 () Bool)

(assert (= bs!1522013 (and d!1922890 d!1922678)))

(declare-fun lambda!334481 () Int)

(assert (=> bs!1522013 (= lambda!334481 lambda!334429)))

(declare-fun bs!1522014 () Bool)

(assert (= bs!1522014 (and d!1922890 d!1922830)))

(assert (=> bs!1522014 (= lambda!334481 lambda!334475)))

(declare-fun bs!1522015 () Bool)

(assert (= bs!1522015 (and d!1922890 d!1922664)))

(assert (=> bs!1522015 (= lambda!334481 lambda!334428)))

(declare-fun bs!1522016 () Bool)

(assert (= bs!1522016 (and d!1922890 d!1922660)))

(assert (=> bs!1522016 (= lambda!334481 lambda!334424)))

(declare-fun bs!1522017 () Bool)

(assert (= bs!1522017 (and d!1922890 d!1922600)))

(assert (=> bs!1522017 (= lambda!334481 lambda!334406)))

(declare-fun bs!1522018 () Bool)

(assert (= bs!1522018 (and d!1922890 d!1922662)))

(assert (=> bs!1522018 (= lambda!334481 lambda!334427)))

(declare-fun bs!1522019 () Bool)

(assert (= bs!1522019 (and d!1922890 d!1922680)))

(assert (=> bs!1522019 (= lambda!334481 lambda!334432)))

(assert (=> d!1922890 (= (inv!83448 setElem!41499) (forall!15201 (exprs!5964 setElem!41499) lambda!334481))))

(declare-fun bs!1522020 () Bool)

(assert (= bs!1522020 d!1922890))

(declare-fun m!6979582 () Bool)

(assert (=> bs!1522020 m!6979582))

(assert (=> setNonEmpty!41499 d!1922890))

(declare-fun bm!509438 () Bool)

(declare-fun call!509443 () Bool)

(declare-fun call!509445 () Bool)

(assert (=> bm!509438 (= call!509443 call!509445)))

(declare-fun b!6137493 () Bool)

(declare-fun e!3740555 () Bool)

(declare-fun e!3740550 () Bool)

(assert (=> b!6137493 (= e!3740555 e!3740550)))

(declare-fun c!1103778 () Bool)

(assert (=> b!6137493 (= c!1103778 (is-Union!16080 (ite c!1103553 (regOne!32673 r!7292) (regOne!32672 r!7292))))))

(declare-fun b!6137494 () Bool)

(declare-fun e!3740553 () Bool)

(assert (=> b!6137494 (= e!3740555 e!3740553)))

(declare-fun res!2543260 () Bool)

(assert (=> b!6137494 (= res!2543260 (not (nullable!6073 (reg!16409 (ite c!1103553 (regOne!32673 r!7292) (regOne!32672 r!7292))))))))

(assert (=> b!6137494 (=> (not res!2543260) (not e!3740553))))

(declare-fun bm!509439 () Bool)

(declare-fun c!1103779 () Bool)

(assert (=> bm!509439 (= call!509445 (validRegex!7816 (ite c!1103779 (reg!16409 (ite c!1103553 (regOne!32673 r!7292) (regOne!32672 r!7292))) (ite c!1103778 (regTwo!32673 (ite c!1103553 (regOne!32673 r!7292) (regOne!32672 r!7292))) (regTwo!32672 (ite c!1103553 (regOne!32673 r!7292) (regOne!32672 r!7292)))))))))

(declare-fun b!6137495 () Bool)

(declare-fun e!3740552 () Bool)

(assert (=> b!6137495 (= e!3740552 call!509443)))

(declare-fun b!6137496 () Bool)

(declare-fun res!2543261 () Bool)

(declare-fun e!3740554 () Bool)

(assert (=> b!6137496 (=> res!2543261 e!3740554)))

(assert (=> b!6137496 (= res!2543261 (not (is-Concat!24925 (ite c!1103553 (regOne!32673 r!7292) (regOne!32672 r!7292)))))))

(assert (=> b!6137496 (= e!3740550 e!3740554)))

(declare-fun b!6137497 () Bool)

(assert (=> b!6137497 (= e!3740553 call!509445)))

(declare-fun b!6137498 () Bool)

(declare-fun e!3740551 () Bool)

(assert (=> b!6137498 (= e!3740551 call!509443)))

(declare-fun call!509444 () Bool)

(declare-fun bm!509440 () Bool)

(assert (=> bm!509440 (= call!509444 (validRegex!7816 (ite c!1103778 (regOne!32673 (ite c!1103553 (regOne!32673 r!7292) (regOne!32672 r!7292))) (regOne!32672 (ite c!1103553 (regOne!32673 r!7292) (regOne!32672 r!7292))))))))

(declare-fun b!6137500 () Bool)

(declare-fun e!3740556 () Bool)

(assert (=> b!6137500 (= e!3740556 e!3740555)))

(assert (=> b!6137500 (= c!1103779 (is-Star!16080 (ite c!1103553 (regOne!32673 r!7292) (regOne!32672 r!7292))))))

(declare-fun b!6137501 () Bool)

(declare-fun res!2543264 () Bool)

(assert (=> b!6137501 (=> (not res!2543264) (not e!3740552))))

(assert (=> b!6137501 (= res!2543264 call!509444)))

(assert (=> b!6137501 (= e!3740550 e!3740552)))

(declare-fun d!1922892 () Bool)

(declare-fun res!2543262 () Bool)

(assert (=> d!1922892 (=> res!2543262 e!3740556)))

(assert (=> d!1922892 (= res!2543262 (is-ElementMatch!16080 (ite c!1103553 (regOne!32673 r!7292) (regOne!32672 r!7292))))))

(assert (=> d!1922892 (= (validRegex!7816 (ite c!1103553 (regOne!32673 r!7292) (regOne!32672 r!7292))) e!3740556)))

(declare-fun b!6137499 () Bool)

(assert (=> b!6137499 (= e!3740554 e!3740551)))

(declare-fun res!2543263 () Bool)

(assert (=> b!6137499 (=> (not res!2543263) (not e!3740551))))

(assert (=> b!6137499 (= res!2543263 call!509444)))

(assert (= (and d!1922892 (not res!2543262)) b!6137500))

(assert (= (and b!6137500 c!1103779) b!6137494))

(assert (= (and b!6137500 (not c!1103779)) b!6137493))

(assert (= (and b!6137494 res!2543260) b!6137497))

(assert (= (and b!6137493 c!1103778) b!6137501))

(assert (= (and b!6137493 (not c!1103778)) b!6137496))

(assert (= (and b!6137501 res!2543264) b!6137495))

(assert (= (and b!6137496 (not res!2543261)) b!6137499))

(assert (= (and b!6137499 res!2543263) b!6137498))

(assert (= (or b!6137495 b!6137498) bm!509438))

(assert (= (or b!6137501 b!6137499) bm!509440))

(assert (= (or b!6137497 bm!509438) bm!509439))

(declare-fun m!6979584 () Bool)

(assert (=> b!6137494 m!6979584))

(declare-fun m!6979586 () Bool)

(assert (=> bm!509439 m!6979586))

(declare-fun m!6979588 () Bool)

(assert (=> bm!509440 m!6979588))

(assert (=> bm!509329 d!1922892))

(declare-fun d!1922894 () Bool)

(assert (=> d!1922894 (= (nullable!6073 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292)))) (nullableFct!2037 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292)))))))

(declare-fun bs!1522021 () Bool)

(assert (= bs!1522021 d!1922894))

(declare-fun m!6979590 () Bool)

(assert (=> bs!1522021 m!6979590))

(assert (=> b!6136827 d!1922894))

(assert (=> d!1922622 d!1922788))

(declare-fun bm!509441 () Bool)

(declare-fun call!509447 () Bool)

(declare-fun c!1103780 () Bool)

(assert (=> bm!509441 (= call!509447 (nullable!6073 (ite c!1103780 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))))))))

(declare-fun b!6137502 () Bool)

(declare-fun e!3740557 () Bool)

(declare-fun e!3740562 () Bool)

(assert (=> b!6137502 (= e!3740557 e!3740562)))

(declare-fun res!2543267 () Bool)

(assert (=> b!6137502 (= res!2543267 call!509447)))

(assert (=> b!6137502 (=> res!2543267 e!3740562)))

(declare-fun bm!509442 () Bool)

(declare-fun call!509446 () Bool)

(assert (=> bm!509442 (= call!509446 (nullable!6073 (ite c!1103780 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))))))))

(declare-fun b!6137504 () Bool)

(declare-fun e!3740561 () Bool)

(assert (=> b!6137504 (= e!3740561 e!3740557)))

(assert (=> b!6137504 (= c!1103780 (is-Union!16080 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun b!6137505 () Bool)

(declare-fun e!3740558 () Bool)

(declare-fun e!3740560 () Bool)

(assert (=> b!6137505 (= e!3740558 e!3740560)))

(declare-fun res!2543265 () Bool)

(assert (=> b!6137505 (=> (not res!2543265) (not e!3740560))))

(assert (=> b!6137505 (= res!2543265 (and (not (is-EmptyLang!16080 (h!70863 (exprs!5964 (h!70864 zl!343))))) (not (is-ElementMatch!16080 (h!70863 (exprs!5964 (h!70864 zl!343)))))))))

(declare-fun b!6137506 () Bool)

(assert (=> b!6137506 (= e!3740560 e!3740561)))

(declare-fun res!2543269 () Bool)

(assert (=> b!6137506 (=> res!2543269 e!3740561)))

(assert (=> b!6137506 (= res!2543269 (is-Star!16080 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun d!1922896 () Bool)

(declare-fun res!2543266 () Bool)

(assert (=> d!1922896 (=> res!2543266 e!3740558)))

(assert (=> d!1922896 (= res!2543266 (is-EmptyExpr!16080 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(assert (=> d!1922896 (= (nullableFct!2037 (h!70863 (exprs!5964 (h!70864 zl!343)))) e!3740558)))

(declare-fun b!6137503 () Bool)

(declare-fun e!3740559 () Bool)

(assert (=> b!6137503 (= e!3740559 call!509446)))

(declare-fun b!6137507 () Bool)

(assert (=> b!6137507 (= e!3740557 e!3740559)))

(declare-fun res!2543268 () Bool)

(assert (=> b!6137507 (= res!2543268 call!509447)))

(assert (=> b!6137507 (=> (not res!2543268) (not e!3740559))))

(declare-fun b!6137508 () Bool)

(assert (=> b!6137508 (= e!3740562 call!509446)))

(assert (= (and d!1922896 (not res!2543266)) b!6137505))

(assert (= (and b!6137505 res!2543265) b!6137506))

(assert (= (and b!6137506 (not res!2543269)) b!6137504))

(assert (= (and b!6137504 c!1103780) b!6137502))

(assert (= (and b!6137504 (not c!1103780)) b!6137507))

(assert (= (and b!6137502 (not res!2543267)) b!6137508))

(assert (= (and b!6137507 res!2543268) b!6137503))

(assert (= (or b!6137508 b!6137503) bm!509442))

(assert (= (or b!6137502 b!6137507) bm!509441))

(declare-fun m!6979592 () Bool)

(assert (=> bm!509441 m!6979592))

(declare-fun m!6979594 () Bool)

(assert (=> bm!509442 m!6979594))

(assert (=> d!1922608 d!1922896))

(declare-fun d!1922898 () Bool)

(declare-fun res!2543274 () Bool)

(declare-fun e!3740567 () Bool)

(assert (=> d!1922898 (=> res!2543274 e!3740567)))

(assert (=> d!1922898 (= res!2543274 (is-Nil!64416 lt!2332657))))

(assert (=> d!1922898 (= (noDuplicate!1927 lt!2332657) e!3740567)))

(declare-fun b!6137513 () Bool)

(declare-fun e!3740568 () Bool)

(assert (=> b!6137513 (= e!3740567 e!3740568)))

(declare-fun res!2543275 () Bool)

(assert (=> b!6137513 (=> (not res!2543275) (not e!3740568))))

(declare-fun contains!20041 (List!64540 Context!10928) Bool)

(assert (=> b!6137513 (= res!2543275 (not (contains!20041 (t!378015 lt!2332657) (h!70864 lt!2332657))))))

(declare-fun b!6137514 () Bool)

(assert (=> b!6137514 (= e!3740568 (noDuplicate!1927 (t!378015 lt!2332657)))))

(assert (= (and d!1922898 (not res!2543274)) b!6137513))

(assert (= (and b!6137513 res!2543275) b!6137514))

(declare-fun m!6979596 () Bool)

(assert (=> b!6137513 m!6979596))

(declare-fun m!6979598 () Bool)

(assert (=> b!6137514 m!6979598))

(assert (=> d!1922676 d!1922898))

(declare-fun d!1922900 () Bool)

(declare-fun e!3740577 () Bool)

(assert (=> d!1922900 e!3740577))

(declare-fun res!2543280 () Bool)

(assert (=> d!1922900 (=> (not res!2543280) (not e!3740577))))

(declare-fun res!2543281 () List!64540)

(assert (=> d!1922900 (= res!2543280 (noDuplicate!1927 res!2543281))))

(declare-fun e!3740576 () Bool)

(assert (=> d!1922900 e!3740576))

(assert (=> d!1922900 (= (choose!45604 z!1189) res!2543281)))

(declare-fun b!6137522 () Bool)

(declare-fun e!3740575 () Bool)

(declare-fun tp!1714868 () Bool)

(assert (=> b!6137522 (= e!3740575 tp!1714868)))

(declare-fun tp!1714867 () Bool)

(declare-fun b!6137521 () Bool)

(assert (=> b!6137521 (= e!3740576 (and (inv!83448 (h!70864 res!2543281)) e!3740575 tp!1714867))))

(declare-fun b!6137523 () Bool)

(assert (=> b!6137523 (= e!3740577 (= (content!11984 res!2543281) z!1189))))

(assert (= b!6137521 b!6137522))

(assert (= (and d!1922900 (is-Cons!64416 res!2543281)) b!6137521))

(assert (= (and d!1922900 res!2543280) b!6137523))

(declare-fun m!6979600 () Bool)

(assert (=> d!1922900 m!6979600))

(declare-fun m!6979602 () Bool)

(assert (=> b!6137521 m!6979602))

(declare-fun m!6979604 () Bool)

(assert (=> b!6137523 m!6979604))

(assert (=> d!1922676 d!1922900))

(declare-fun b!6137524 () Bool)

(declare-fun e!3740579 () Bool)

(assert (=> b!6137524 (= e!3740579 (nullable!6073 (regOne!32672 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343))))))))))

(declare-fun bm!509443 () Bool)

(declare-fun call!509452 () (Set Context!10928))

(declare-fun call!509450 () (Set Context!10928))

(assert (=> bm!509443 (= call!509452 call!509450)))

(declare-fun b!6137526 () Bool)

(declare-fun e!3740580 () (Set Context!10928))

(declare-fun call!509451 () (Set Context!10928))

(assert (=> b!6137526 (= e!3740580 (set.union call!509451 call!509450))))

(declare-fun bm!509444 () Bool)

(declare-fun call!509453 () (Set Context!10928))

(assert (=> bm!509444 (= call!509450 call!509453)))

(declare-fun c!1103782 () Bool)

(declare-fun call!509448 () List!64539)

(declare-fun bm!509445 () Bool)

(declare-fun c!1103781 () Bool)

(assert (=> bm!509445 (= call!509448 ($colon$colon!1957 (exprs!5964 (ite c!1103541 lt!2332553 (Context!10929 call!509320))) (ite (or c!1103782 c!1103781) (regTwo!32672 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))))) (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343))))))))))

(declare-fun bm!509446 () Bool)

(declare-fun call!509449 () List!64539)

(assert (=> bm!509446 (= call!509449 call!509448)))

(declare-fun b!6137527 () Bool)

(declare-fun e!3740582 () (Set Context!10928))

(declare-fun e!3740578 () (Set Context!10928))

(assert (=> b!6137527 (= e!3740582 e!3740578)))

(declare-fun c!1103784 () Bool)

(assert (=> b!6137527 (= c!1103784 (is-Union!16080 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))))))))

(declare-fun bm!509447 () Bool)

(assert (=> bm!509447 (= call!509453 (derivationStepZipperDown!1328 (ite c!1103784 (regOne!32673 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))))) (ite c!1103782 (regTwo!32672 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))))) (ite c!1103781 (regOne!32672 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))))) (reg!16409 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343))))))))) (ite (or c!1103784 c!1103782) (ite c!1103541 lt!2332553 (Context!10929 call!509320)) (Context!10929 call!509449)) (h!70865 s!2326)))))

(declare-fun b!6137528 () Bool)

(declare-fun e!3740583 () (Set Context!10928))

(assert (=> b!6137528 (= e!3740583 (as set.empty (Set Context!10928)))))

(declare-fun b!6137529 () Bool)

(assert (=> b!6137529 (= e!3740582 (set.insert (ite c!1103541 lt!2332553 (Context!10929 call!509320)) (as set.empty (Set Context!10928))))))

(declare-fun b!6137530 () Bool)

(assert (=> b!6137530 (= e!3740583 call!509452)))

(declare-fun b!6137531 () Bool)

(assert (=> b!6137531 (= e!3740578 (set.union call!509453 call!509451))))

(declare-fun b!6137532 () Bool)

(declare-fun e!3740581 () (Set Context!10928))

(assert (=> b!6137532 (= e!3740581 call!509452)))

(declare-fun b!6137533 () Bool)

(assert (=> b!6137533 (= e!3740580 e!3740581)))

(assert (=> b!6137533 (= c!1103781 (is-Concat!24925 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))))))))

(declare-fun b!6137525 () Bool)

(declare-fun c!1103785 () Bool)

(assert (=> b!6137525 (= c!1103785 (is-Star!16080 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))))))))

(assert (=> b!6137525 (= e!3740581 e!3740583)))

(declare-fun c!1103783 () Bool)

(declare-fun d!1922902 () Bool)

(assert (=> d!1922902 (= c!1103783 (and (is-ElementMatch!16080 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))))) (= (c!1103508 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))))) (h!70865 s!2326))))))

(assert (=> d!1922902 (= (derivationStepZipperDown!1328 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343))))) (ite c!1103541 lt!2332553 (Context!10929 call!509320)) (h!70865 s!2326)) e!3740582)))

(declare-fun b!6137534 () Bool)

(assert (=> b!6137534 (= c!1103782 e!3740579)))

(declare-fun res!2543282 () Bool)

(assert (=> b!6137534 (=> (not res!2543282) (not e!3740579))))

(assert (=> b!6137534 (= res!2543282 (is-Concat!24925 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))))))))

(assert (=> b!6137534 (= e!3740578 e!3740580)))

(declare-fun bm!509448 () Bool)

(assert (=> bm!509448 (= call!509451 (derivationStepZipperDown!1328 (ite c!1103784 (regTwo!32673 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))))) (regOne!32672 (ite c!1103541 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343))))))) (ite c!1103784 (ite c!1103541 lt!2332553 (Context!10929 call!509320)) (Context!10929 call!509448)) (h!70865 s!2326)))))

(assert (= (and d!1922902 c!1103783) b!6137529))

(assert (= (and d!1922902 (not c!1103783)) b!6137527))

(assert (= (and b!6137527 c!1103784) b!6137531))

(assert (= (and b!6137527 (not c!1103784)) b!6137534))

(assert (= (and b!6137534 res!2543282) b!6137524))

(assert (= (and b!6137534 c!1103782) b!6137526))

(assert (= (and b!6137534 (not c!1103782)) b!6137533))

(assert (= (and b!6137533 c!1103781) b!6137532))

(assert (= (and b!6137533 (not c!1103781)) b!6137525))

(assert (= (and b!6137525 c!1103785) b!6137530))

(assert (= (and b!6137525 (not c!1103785)) b!6137528))

(assert (= (or b!6137532 b!6137530) bm!509446))

(assert (= (or b!6137532 b!6137530) bm!509443))

(assert (= (or b!6137526 bm!509446) bm!509445))

(assert (= (or b!6137526 bm!509443) bm!509444))

(assert (= (or b!6137531 b!6137526) bm!509448))

(assert (= (or b!6137531 bm!509444) bm!509447))

(declare-fun m!6979606 () Bool)

(assert (=> bm!509448 m!6979606))

(declare-fun m!6979608 () Bool)

(assert (=> b!6137524 m!6979608))

(declare-fun m!6979610 () Bool)

(assert (=> bm!509445 m!6979610))

(declare-fun m!6979612 () Bool)

(assert (=> bm!509447 m!6979612))

(declare-fun m!6979614 () Bool)

(assert (=> b!6137529 m!6979614))

(assert (=> bm!509320 d!1922902))

(declare-fun d!1922904 () Bool)

(assert (=> d!1922904 (= (Exists!3150 (ite c!1103570 lambda!334420 lambda!334421)) (choose!45600 (ite c!1103570 lambda!334420 lambda!334421)))))

(declare-fun bs!1522022 () Bool)

(assert (= bs!1522022 d!1922904))

(declare-fun m!6979616 () Bool)

(assert (=> bs!1522022 m!6979616))

(assert (=> bm!509334 d!1922904))

(declare-fun bs!1522023 () Bool)

(declare-fun d!1922906 () Bool)

(assert (= bs!1522023 (and d!1922906 d!1922784)))

(declare-fun lambda!334482 () Int)

(assert (=> bs!1522023 (= lambda!334482 lambda!334464)))

(declare-fun bs!1522024 () Bool)

(assert (= bs!1522024 (and d!1922906 d!1922796)))

(assert (=> bs!1522024 (= lambda!334482 lambda!334465)))

(assert (=> d!1922906 (= (nullableZipper!1861 lt!2332550) (exists!2427 lt!2332550 lambda!334482))))

(declare-fun bs!1522025 () Bool)

(assert (= bs!1522025 d!1922906))

(declare-fun m!6979618 () Bool)

(assert (=> bs!1522025 m!6979618))

(assert (=> b!6136633 d!1922906))

(declare-fun d!1922908 () Bool)

(assert (=> d!1922908 (= (isEmpty!36363 (t!378014 (unfocusZipperList!1501 zl!343))) (is-Nil!64415 (t!378014 (unfocusZipperList!1501 zl!343))))))

(assert (=> b!6136819 d!1922908))

(declare-fun b!6137535 () Bool)

(declare-fun e!3740585 () Bool)

(assert (=> b!6137535 (= e!3740585 (nullable!6073 (regOne!32672 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))))))))))

(declare-fun bm!509449 () Bool)

(declare-fun call!509458 () (Set Context!10928))

(declare-fun call!509456 () (Set Context!10928))

(assert (=> bm!509449 (= call!509458 call!509456)))

(declare-fun b!6137537 () Bool)

(declare-fun e!3740586 () (Set Context!10928))

(declare-fun call!509457 () (Set Context!10928))

(assert (=> b!6137537 (= e!3740586 (set.union call!509457 call!509456))))

(declare-fun bm!509450 () Bool)

(declare-fun call!509459 () (Set Context!10928))

(assert (=> bm!509450 (= call!509456 call!509459)))

(declare-fun c!1103787 () Bool)

(declare-fun c!1103786 () Bool)

(declare-fun call!509454 () List!64539)

(declare-fun bm!509451 () Bool)

(assert (=> bm!509451 (= call!509454 ($colon$colon!1957 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))))))) (ite (or c!1103787 c!1103786) (regTwo!32672 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))))))))))

(declare-fun bm!509452 () Bool)

(declare-fun call!509455 () List!64539)

(assert (=> bm!509452 (= call!509455 call!509454)))

(declare-fun b!6137538 () Bool)

(declare-fun e!3740588 () (Set Context!10928))

(declare-fun e!3740584 () (Set Context!10928))

(assert (=> b!6137538 (= e!3740588 e!3740584)))

(declare-fun c!1103789 () Bool)

(assert (=> b!6137538 (= c!1103789 (is-Union!16080 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))))))

(declare-fun bm!509453 () Bool)

(assert (=> bm!509453 (= call!509459 (derivationStepZipperDown!1328 (ite c!1103789 (regOne!32673 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (ite c!1103787 (regTwo!32672 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (ite c!1103786 (regOne!32672 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (reg!16409 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))))))))) (ite (or c!1103789 c!1103787) (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (Context!10929 call!509455)) (h!70865 s!2326)))))

(declare-fun b!6137539 () Bool)

(declare-fun e!3740589 () (Set Context!10928))

(assert (=> b!6137539 (= e!3740589 (as set.empty (Set Context!10928)))))

(declare-fun b!6137540 () Bool)

(assert (=> b!6137540 (= e!3740588 (set.insert (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (as set.empty (Set Context!10928))))))

(declare-fun b!6137541 () Bool)

(assert (=> b!6137541 (= e!3740589 call!509458)))

(declare-fun b!6137542 () Bool)

(assert (=> b!6137542 (= e!3740584 (set.union call!509459 call!509457))))

(declare-fun b!6137543 () Bool)

(declare-fun e!3740587 () (Set Context!10928))

(assert (=> b!6137543 (= e!3740587 call!509458)))

(declare-fun b!6137544 () Bool)

(assert (=> b!6137544 (= e!3740586 e!3740587)))

(assert (=> b!6137544 (= c!1103786 (is-Concat!24925 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))))))

(declare-fun b!6137536 () Bool)

(declare-fun c!1103790 () Bool)

(assert (=> b!6137536 (= c!1103790 (is-Star!16080 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))))))

(assert (=> b!6137536 (= e!3740587 e!3740589)))

(declare-fun d!1922910 () Bool)

(declare-fun c!1103788 () Bool)

(assert (=> d!1922910 (= c!1103788 (and (is-ElementMatch!16080 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (= (c!1103508 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (h!70865 s!2326))))))

(assert (=> d!1922910 (= (derivationStepZipperDown!1328 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))))) (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (h!70865 s!2326)) e!3740588)))

(declare-fun b!6137545 () Bool)

(assert (=> b!6137545 (= c!1103787 e!3740585)))

(declare-fun res!2543283 () Bool)

(assert (=> b!6137545 (=> (not res!2543283) (not e!3740585))))

(assert (=> b!6137545 (= res!2543283 (is-Concat!24925 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))))))

(assert (=> b!6137545 (= e!3740584 e!3740586)))

(declare-fun bm!509454 () Bool)

(assert (=> bm!509454 (= call!509457 (derivationStepZipperDown!1328 (ite c!1103789 (regTwo!32673 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (regOne!32672 (h!70863 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))))))) (ite c!1103789 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (Cons!64415 (h!70863 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343)))))))) (Context!10929 call!509454)) (h!70865 s!2326)))))

(assert (= (and d!1922910 c!1103788) b!6137540))

(assert (= (and d!1922910 (not c!1103788)) b!6137538))

(assert (= (and b!6137538 c!1103789) b!6137542))

(assert (= (and b!6137538 (not c!1103789)) b!6137545))

(assert (= (and b!6137545 res!2543283) b!6137535))

(assert (= (and b!6137545 c!1103787) b!6137537))

(assert (= (and b!6137545 (not c!1103787)) b!6137544))

(assert (= (and b!6137544 c!1103786) b!6137543))

(assert (= (and b!6137544 (not c!1103786)) b!6137536))

(assert (= (and b!6137536 c!1103790) b!6137541))

(assert (= (and b!6137536 (not c!1103790)) b!6137539))

(assert (= (or b!6137543 b!6137541) bm!509452))

(assert (= (or b!6137543 b!6137541) bm!509449))

(assert (= (or b!6137537 bm!509452) bm!509451))

(assert (= (or b!6137537 bm!509449) bm!509450))

(assert (= (or b!6137542 b!6137537) bm!509454))

(assert (= (or b!6137542 bm!509450) bm!509453))

(declare-fun m!6979620 () Bool)

(assert (=> bm!509454 m!6979620))

(declare-fun m!6979622 () Bool)

(assert (=> b!6137535 m!6979622))

(declare-fun m!6979624 () Bool)

(assert (=> bm!509451 m!6979624))

(declare-fun m!6979626 () Bool)

(assert (=> bm!509453 m!6979626))

(declare-fun m!6979628 () Bool)

(assert (=> b!6137540 m!6979628))

(assert (=> bm!509300 d!1922910))

(assert (=> b!6136882 d!1922602))

(assert (=> b!6136825 d!1922680))

(declare-fun bs!1522026 () Bool)

(declare-fun d!1922912 () Bool)

(assert (= bs!1522026 (and d!1922912 d!1922890)))

(declare-fun lambda!334483 () Int)

(assert (=> bs!1522026 (= lambda!334483 lambda!334481)))

(declare-fun bs!1522027 () Bool)

(assert (= bs!1522027 (and d!1922912 d!1922678)))

(assert (=> bs!1522027 (= lambda!334483 lambda!334429)))

(declare-fun bs!1522028 () Bool)

(assert (= bs!1522028 (and d!1922912 d!1922830)))

(assert (=> bs!1522028 (= lambda!334483 lambda!334475)))

(declare-fun bs!1522029 () Bool)

(assert (= bs!1522029 (and d!1922912 d!1922664)))

(assert (=> bs!1522029 (= lambda!334483 lambda!334428)))

(declare-fun bs!1522030 () Bool)

(assert (= bs!1522030 (and d!1922912 d!1922660)))

(assert (=> bs!1522030 (= lambda!334483 lambda!334424)))

(declare-fun bs!1522031 () Bool)

(assert (= bs!1522031 (and d!1922912 d!1922600)))

(assert (=> bs!1522031 (= lambda!334483 lambda!334406)))

(declare-fun bs!1522032 () Bool)

(assert (= bs!1522032 (and d!1922912 d!1922662)))

(assert (=> bs!1522032 (= lambda!334483 lambda!334427)))

(declare-fun bs!1522033 () Bool)

(assert (= bs!1522033 (and d!1922912 d!1922680)))

(assert (=> bs!1522033 (= lambda!334483 lambda!334432)))

(declare-fun lt!2332711 () List!64539)

(assert (=> d!1922912 (forall!15201 lt!2332711 lambda!334483)))

(declare-fun e!3740590 () List!64539)

(assert (=> d!1922912 (= lt!2332711 e!3740590)))

(declare-fun c!1103791 () Bool)

(assert (=> d!1922912 (= c!1103791 (is-Cons!64416 (t!378015 zl!343)))))

(assert (=> d!1922912 (= (unfocusZipperList!1501 (t!378015 zl!343)) lt!2332711)))

(declare-fun b!6137546 () Bool)

(assert (=> b!6137546 (= e!3740590 (Cons!64415 (generalisedConcat!1677 (exprs!5964 (h!70864 (t!378015 zl!343)))) (unfocusZipperList!1501 (t!378015 (t!378015 zl!343)))))))

(declare-fun b!6137547 () Bool)

(assert (=> b!6137547 (= e!3740590 Nil!64415)))

(assert (= (and d!1922912 c!1103791) b!6137546))

(assert (= (and d!1922912 (not c!1103791)) b!6137547))

(declare-fun m!6979630 () Bool)

(assert (=> d!1922912 m!6979630))

(declare-fun m!6979632 () Bool)

(assert (=> b!6137546 m!6979632))

(declare-fun m!6979634 () Bool)

(assert (=> b!6137546 m!6979634))

(assert (=> b!6136825 d!1922912))

(declare-fun b!6137548 () Bool)

(declare-fun e!3740592 () Bool)

(assert (=> b!6137548 (= e!3740592 (nullable!6073 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343))))))))

(declare-fun bm!509455 () Bool)

(declare-fun call!509464 () (Set Context!10928))

(declare-fun call!509462 () (Set Context!10928))

(assert (=> bm!509455 (= call!509464 call!509462)))

(declare-fun b!6137550 () Bool)

(declare-fun e!3740593 () (Set Context!10928))

(declare-fun call!509463 () (Set Context!10928))

(assert (=> b!6137550 (= e!3740593 (set.union call!509463 call!509462))))

(declare-fun bm!509456 () Bool)

(declare-fun call!509465 () (Set Context!10928))

(assert (=> bm!509456 (= call!509462 call!509465)))

(declare-fun bm!509457 () Bool)

(declare-fun c!1103792 () Bool)

(declare-fun call!509460 () List!64539)

(declare-fun c!1103793 () Bool)

(assert (=> bm!509457 (= call!509460 ($colon$colon!1957 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343))))) (ite (or c!1103793 c!1103792) (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (h!70863 (exprs!5964 (h!70864 zl!343))))))))

(declare-fun bm!509458 () Bool)

(declare-fun call!509461 () List!64539)

(assert (=> bm!509458 (= call!509461 call!509460)))

(declare-fun b!6137551 () Bool)

(declare-fun e!3740595 () (Set Context!10928))

(declare-fun e!3740591 () (Set Context!10928))

(assert (=> b!6137551 (= e!3740595 e!3740591)))

(declare-fun c!1103795 () Bool)

(assert (=> b!6137551 (= c!1103795 (is-Union!16080 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun bm!509459 () Bool)

(assert (=> bm!509459 (= call!509465 (derivationStepZipperDown!1328 (ite c!1103795 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103793 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103792 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343))))))) (ite (or c!1103795 c!1103793) (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343)))) (Context!10929 call!509461)) (h!70865 s!2326)))))

(declare-fun b!6137552 () Bool)

(declare-fun e!3740596 () (Set Context!10928))

(assert (=> b!6137552 (= e!3740596 (as set.empty (Set Context!10928)))))

(declare-fun b!6137553 () Bool)

(assert (=> b!6137553 (= e!3740595 (set.insert (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343)))) (as set.empty (Set Context!10928))))))

(declare-fun b!6137554 () Bool)

(assert (=> b!6137554 (= e!3740596 call!509464)))

(declare-fun b!6137555 () Bool)

(assert (=> b!6137555 (= e!3740591 (set.union call!509465 call!509463))))

(declare-fun b!6137556 () Bool)

(declare-fun e!3740594 () (Set Context!10928))

(assert (=> b!6137556 (= e!3740594 call!509464)))

(declare-fun b!6137557 () Bool)

(assert (=> b!6137557 (= e!3740593 e!3740594)))

(assert (=> b!6137557 (= c!1103792 (is-Concat!24925 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun b!6137549 () Bool)

(declare-fun c!1103796 () Bool)

(assert (=> b!6137549 (= c!1103796 (is-Star!16080 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(assert (=> b!6137549 (= e!3740594 e!3740596)))

(declare-fun d!1922914 () Bool)

(declare-fun c!1103794 () Bool)

(assert (=> d!1922914 (= c!1103794 (and (is-ElementMatch!16080 (h!70863 (exprs!5964 (h!70864 zl!343)))) (= (c!1103508 (h!70863 (exprs!5964 (h!70864 zl!343)))) (h!70865 s!2326))))))

(assert (=> d!1922914 (= (derivationStepZipperDown!1328 (h!70863 (exprs!5964 (h!70864 zl!343))) (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343)))) (h!70865 s!2326)) e!3740595)))

(declare-fun b!6137558 () Bool)

(assert (=> b!6137558 (= c!1103793 e!3740592)))

(declare-fun res!2543284 () Bool)

(assert (=> b!6137558 (=> (not res!2543284) (not e!3740592))))

(assert (=> b!6137558 (= res!2543284 (is-Concat!24925 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(assert (=> b!6137558 (= e!3740591 e!3740593)))

(declare-fun bm!509460 () Bool)

(assert (=> bm!509460 (= call!509463 (derivationStepZipperDown!1328 (ite c!1103795 (regTwo!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343))))) (ite c!1103795 (Context!10929 (t!378014 (exprs!5964 (h!70864 zl!343)))) (Context!10929 call!509460)) (h!70865 s!2326)))))

(assert (= (and d!1922914 c!1103794) b!6137553))

(assert (= (and d!1922914 (not c!1103794)) b!6137551))

(assert (= (and b!6137551 c!1103795) b!6137555))

(assert (= (and b!6137551 (not c!1103795)) b!6137558))

(assert (= (and b!6137558 res!2543284) b!6137548))

(assert (= (and b!6137558 c!1103793) b!6137550))

(assert (= (and b!6137558 (not c!1103793)) b!6137557))

(assert (= (and b!6137557 c!1103792) b!6137556))

(assert (= (and b!6137557 (not c!1103792)) b!6137549))

(assert (= (and b!6137549 c!1103796) b!6137554))

(assert (= (and b!6137549 (not c!1103796)) b!6137552))

(assert (= (or b!6137556 b!6137554) bm!509458))

(assert (= (or b!6137556 b!6137554) bm!509455))

(assert (= (or b!6137550 bm!509458) bm!509457))

(assert (= (or b!6137550 bm!509455) bm!509456))

(assert (= (or b!6137555 b!6137550) bm!509460))

(assert (= (or b!6137555 bm!509456) bm!509459))

(declare-fun m!6979636 () Bool)

(assert (=> bm!509460 m!6979636))

(assert (=> b!6137548 m!6978936))

(declare-fun m!6979638 () Bool)

(assert (=> bm!509457 m!6979638))

(declare-fun m!6979640 () Bool)

(assert (=> bm!509459 m!6979640))

(declare-fun m!6979642 () Bool)

(assert (=> b!6137553 m!6979642))

(assert (=> bm!509302 d!1922914))

(declare-fun b!6137559 () Bool)

(declare-fun e!3740598 () Bool)

(assert (=> b!6137559 (= e!3740598 (nullable!6073 (regOne!32672 (h!70863 (exprs!5964 lt!2332553)))))))

(declare-fun bm!509461 () Bool)

(declare-fun call!509470 () (Set Context!10928))

(declare-fun call!509468 () (Set Context!10928))

(assert (=> bm!509461 (= call!509470 call!509468)))

(declare-fun b!6137561 () Bool)

(declare-fun e!3740599 () (Set Context!10928))

(declare-fun call!509469 () (Set Context!10928))

(assert (=> b!6137561 (= e!3740599 (set.union call!509469 call!509468))))

(declare-fun bm!509462 () Bool)

(declare-fun call!509471 () (Set Context!10928))

(assert (=> bm!509462 (= call!509468 call!509471)))

(declare-fun call!509466 () List!64539)

(declare-fun bm!509463 () Bool)

(declare-fun c!1103797 () Bool)

(declare-fun c!1103798 () Bool)

(assert (=> bm!509463 (= call!509466 ($colon$colon!1957 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332553)))) (ite (or c!1103798 c!1103797) (regTwo!32672 (h!70863 (exprs!5964 lt!2332553))) (h!70863 (exprs!5964 lt!2332553)))))))

(declare-fun bm!509464 () Bool)

(declare-fun call!509467 () List!64539)

(assert (=> bm!509464 (= call!509467 call!509466)))

(declare-fun b!6137562 () Bool)

(declare-fun e!3740601 () (Set Context!10928))

(declare-fun e!3740597 () (Set Context!10928))

(assert (=> b!6137562 (= e!3740601 e!3740597)))

(declare-fun c!1103800 () Bool)

(assert (=> b!6137562 (= c!1103800 (is-Union!16080 (h!70863 (exprs!5964 lt!2332553))))))

(declare-fun bm!509465 () Bool)

(assert (=> bm!509465 (= call!509471 (derivationStepZipperDown!1328 (ite c!1103800 (regOne!32673 (h!70863 (exprs!5964 lt!2332553))) (ite c!1103798 (regTwo!32672 (h!70863 (exprs!5964 lt!2332553))) (ite c!1103797 (regOne!32672 (h!70863 (exprs!5964 lt!2332553))) (reg!16409 (h!70863 (exprs!5964 lt!2332553)))))) (ite (or c!1103800 c!1103798) (Context!10929 (t!378014 (exprs!5964 lt!2332553))) (Context!10929 call!509467)) (h!70865 s!2326)))))

(declare-fun b!6137563 () Bool)

(declare-fun e!3740602 () (Set Context!10928))

(assert (=> b!6137563 (= e!3740602 (as set.empty (Set Context!10928)))))

(declare-fun b!6137564 () Bool)

(assert (=> b!6137564 (= e!3740601 (set.insert (Context!10929 (t!378014 (exprs!5964 lt!2332553))) (as set.empty (Set Context!10928))))))

(declare-fun b!6137565 () Bool)

(assert (=> b!6137565 (= e!3740602 call!509470)))

(declare-fun b!6137566 () Bool)

(assert (=> b!6137566 (= e!3740597 (set.union call!509471 call!509469))))

(declare-fun b!6137567 () Bool)

(declare-fun e!3740600 () (Set Context!10928))

(assert (=> b!6137567 (= e!3740600 call!509470)))

(declare-fun b!6137568 () Bool)

(assert (=> b!6137568 (= e!3740599 e!3740600)))

(assert (=> b!6137568 (= c!1103797 (is-Concat!24925 (h!70863 (exprs!5964 lt!2332553))))))

(declare-fun b!6137560 () Bool)

(declare-fun c!1103801 () Bool)

(assert (=> b!6137560 (= c!1103801 (is-Star!16080 (h!70863 (exprs!5964 lt!2332553))))))

(assert (=> b!6137560 (= e!3740600 e!3740602)))

(declare-fun d!1922916 () Bool)

(declare-fun c!1103799 () Bool)

(assert (=> d!1922916 (= c!1103799 (and (is-ElementMatch!16080 (h!70863 (exprs!5964 lt!2332553))) (= (c!1103508 (h!70863 (exprs!5964 lt!2332553))) (h!70865 s!2326))))))

(assert (=> d!1922916 (= (derivationStepZipperDown!1328 (h!70863 (exprs!5964 lt!2332553)) (Context!10929 (t!378014 (exprs!5964 lt!2332553))) (h!70865 s!2326)) e!3740601)))

(declare-fun b!6137569 () Bool)

(assert (=> b!6137569 (= c!1103798 e!3740598)))

(declare-fun res!2543285 () Bool)

(assert (=> b!6137569 (=> (not res!2543285) (not e!3740598))))

(assert (=> b!6137569 (= res!2543285 (is-Concat!24925 (h!70863 (exprs!5964 lt!2332553))))))

(assert (=> b!6137569 (= e!3740597 e!3740599)))

(declare-fun bm!509466 () Bool)

(assert (=> bm!509466 (= call!509469 (derivationStepZipperDown!1328 (ite c!1103800 (regTwo!32673 (h!70863 (exprs!5964 lt!2332553))) (regOne!32672 (h!70863 (exprs!5964 lt!2332553)))) (ite c!1103800 (Context!10929 (t!378014 (exprs!5964 lt!2332553))) (Context!10929 call!509466)) (h!70865 s!2326)))))

(assert (= (and d!1922916 c!1103799) b!6137564))

(assert (= (and d!1922916 (not c!1103799)) b!6137562))

(assert (= (and b!6137562 c!1103800) b!6137566))

(assert (= (and b!6137562 (not c!1103800)) b!6137569))

(assert (= (and b!6137569 res!2543285) b!6137559))

(assert (= (and b!6137569 c!1103798) b!6137561))

(assert (= (and b!6137569 (not c!1103798)) b!6137568))

(assert (= (and b!6137568 c!1103797) b!6137567))

(assert (= (and b!6137568 (not c!1103797)) b!6137560))

(assert (= (and b!6137560 c!1103801) b!6137565))

(assert (= (and b!6137560 (not c!1103801)) b!6137563))

(assert (= (or b!6137567 b!6137565) bm!509464))

(assert (= (or b!6137567 b!6137565) bm!509461))

(assert (= (or b!6137561 bm!509464) bm!509463))

(assert (= (or b!6137561 bm!509461) bm!509462))

(assert (= (or b!6137566 b!6137561) bm!509466))

(assert (= (or b!6137566 bm!509462) bm!509465))

(declare-fun m!6979644 () Bool)

(assert (=> bm!509466 m!6979644))

(declare-fun m!6979646 () Bool)

(assert (=> b!6137559 m!6979646))

(declare-fun m!6979648 () Bool)

(assert (=> bm!509463 m!6979648))

(declare-fun m!6979650 () Bool)

(assert (=> bm!509465 m!6979650))

(declare-fun m!6979652 () Bool)

(assert (=> b!6137564 m!6979652))

(assert (=> bm!509301 d!1922916))

(declare-fun d!1922918 () Bool)

(declare-fun res!2543286 () Bool)

(declare-fun e!3740603 () Bool)

(assert (=> d!1922918 (=> res!2543286 e!3740603)))

(assert (=> d!1922918 (= res!2543286 (is-Nil!64415 lt!2332653))))

(assert (=> d!1922918 (= (forall!15201 lt!2332653 lambda!334427) e!3740603)))

(declare-fun b!6137570 () Bool)

(declare-fun e!3740604 () Bool)

(assert (=> b!6137570 (= e!3740603 e!3740604)))

(declare-fun res!2543287 () Bool)

(assert (=> b!6137570 (=> (not res!2543287) (not e!3740604))))

(assert (=> b!6137570 (= res!2543287 (dynLambda!25383 lambda!334427 (h!70863 lt!2332653)))))

(declare-fun b!6137571 () Bool)

(assert (=> b!6137571 (= e!3740604 (forall!15201 (t!378014 lt!2332653) lambda!334427))))

(assert (= (and d!1922918 (not res!2543286)) b!6137570))

(assert (= (and b!6137570 res!2543287) b!6137571))

(declare-fun b_lambda!233593 () Bool)

(assert (=> (not b_lambda!233593) (not b!6137570)))

(declare-fun m!6979654 () Bool)

(assert (=> b!6137570 m!6979654))

(declare-fun m!6979656 () Bool)

(assert (=> b!6137571 m!6979656))

(assert (=> d!1922662 d!1922918))

(assert (=> b!6136781 d!1922790))

(assert (=> b!6136781 d!1922792))

(declare-fun d!1922920 () Bool)

(assert (=> d!1922920 (= ($colon$colon!1957 (exprs!5964 lt!2332553) (ite (or c!1103605 c!1103604) (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (regOne!32673 (regOne!32672 r!7292)))) (Cons!64415 (ite (or c!1103605 c!1103604) (regTwo!32672 (regOne!32673 (regOne!32672 r!7292))) (regOne!32673 (regOne!32672 r!7292))) (exprs!5964 lt!2332553)))))

(assert (=> bm!509348 d!1922920))

(assert (=> d!1922670 d!1922788))

(declare-fun b!6137572 () Bool)

(declare-fun e!3740606 () Bool)

(assert (=> b!6137572 (= e!3740606 (nullable!6073 (regOne!32672 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292)))))))))))

(declare-fun bm!509467 () Bool)

(declare-fun call!509476 () (Set Context!10928))

(declare-fun call!509474 () (Set Context!10928))

(assert (=> bm!509467 (= call!509476 call!509474)))

(declare-fun b!6137574 () Bool)

(declare-fun e!3740607 () (Set Context!10928))

(declare-fun call!509475 () (Set Context!10928))

(assert (=> b!6137574 (= e!3740607 (set.union call!509475 call!509474))))

(declare-fun bm!509468 () Bool)

(declare-fun call!509477 () (Set Context!10928))

(assert (=> bm!509468 (= call!509474 call!509477)))

(declare-fun call!509472 () List!64539)

(declare-fun c!1103802 () Bool)

(declare-fun bm!509469 () Bool)

(declare-fun c!1103803 () Bool)

(assert (=> bm!509469 (= call!509472 ($colon$colon!1957 (exprs!5964 (ite (or c!1103602 c!1103600) lt!2332553 (Context!10929 call!509346))) (ite (or c!1103803 c!1103802) (regTwo!32672 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292))))))) (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292)))))))))))

(declare-fun bm!509470 () Bool)

(declare-fun call!509473 () List!64539)

(assert (=> bm!509470 (= call!509473 call!509472)))

(declare-fun b!6137575 () Bool)

(declare-fun e!3740609 () (Set Context!10928))

(declare-fun e!3740605 () (Set Context!10928))

(assert (=> b!6137575 (= e!3740609 e!3740605)))

(declare-fun c!1103805 () Bool)

(assert (=> b!6137575 (= c!1103805 (is-Union!16080 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292))))))))))

(declare-fun bm!509471 () Bool)

(assert (=> bm!509471 (= call!509477 (derivationStepZipperDown!1328 (ite c!1103805 (regOne!32673 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292))))))) (ite c!1103803 (regTwo!32672 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292))))))) (ite c!1103802 (regOne!32672 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292))))))) (reg!16409 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292)))))))))) (ite (or c!1103805 c!1103803) (ite (or c!1103602 c!1103600) lt!2332553 (Context!10929 call!509346)) (Context!10929 call!509473)) (h!70865 s!2326)))))

(declare-fun b!6137576 () Bool)

(declare-fun e!3740610 () (Set Context!10928))

(assert (=> b!6137576 (= e!3740610 (as set.empty (Set Context!10928)))))

(declare-fun b!6137577 () Bool)

(assert (=> b!6137577 (= e!3740609 (set.insert (ite (or c!1103602 c!1103600) lt!2332553 (Context!10929 call!509346)) (as set.empty (Set Context!10928))))))

(declare-fun b!6137578 () Bool)

(assert (=> b!6137578 (= e!3740610 call!509476)))

(declare-fun b!6137579 () Bool)

(assert (=> b!6137579 (= e!3740605 (set.union call!509477 call!509475))))

(declare-fun b!6137580 () Bool)

(declare-fun e!3740608 () (Set Context!10928))

(assert (=> b!6137580 (= e!3740608 call!509476)))

(declare-fun b!6137581 () Bool)

(assert (=> b!6137581 (= e!3740607 e!3740608)))

(assert (=> b!6137581 (= c!1103802 (is-Concat!24925 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292))))))))))

(declare-fun b!6137573 () Bool)

(declare-fun c!1103806 () Bool)

(assert (=> b!6137573 (= c!1103806 (is-Star!16080 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292))))))))))

(assert (=> b!6137573 (= e!3740608 e!3740610)))

(declare-fun d!1922922 () Bool)

(declare-fun c!1103804 () Bool)

(assert (=> d!1922922 (= c!1103804 (and (is-ElementMatch!16080 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292))))))) (= (c!1103508 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292))))))) (h!70865 s!2326))))))

(assert (=> d!1922922 (= (derivationStepZipperDown!1328 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292)))))) (ite (or c!1103602 c!1103600) lt!2332553 (Context!10929 call!509346)) (h!70865 s!2326)) e!3740609)))

(declare-fun b!6137582 () Bool)

(assert (=> b!6137582 (= c!1103803 e!3740606)))

(declare-fun res!2543288 () Bool)

(assert (=> b!6137582 (=> (not res!2543288) (not e!3740606))))

(assert (=> b!6137582 (= res!2543288 (is-Concat!24925 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292))))))))))

(assert (=> b!6137582 (= e!3740605 e!3740607)))

(declare-fun bm!509472 () Bool)

(assert (=> bm!509472 (= call!509475 (derivationStepZipperDown!1328 (ite c!1103805 (regTwo!32673 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292))))))) (regOne!32672 (ite c!1103602 (regOne!32673 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103600 (regTwo!32672 (regTwo!32673 (regOne!32672 r!7292))) (ite c!1103599 (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))) (reg!16409 (regTwo!32673 (regOne!32672 r!7292)))))))) (ite c!1103805 (ite (or c!1103602 c!1103600) lt!2332553 (Context!10929 call!509346)) (Context!10929 call!509472)) (h!70865 s!2326)))))

(assert (= (and d!1922922 c!1103804) b!6137577))

(assert (= (and d!1922922 (not c!1103804)) b!6137575))

(assert (= (and b!6137575 c!1103805) b!6137579))

(assert (= (and b!6137575 (not c!1103805)) b!6137582))

(assert (= (and b!6137582 res!2543288) b!6137572))

(assert (= (and b!6137582 c!1103803) b!6137574))

(assert (= (and b!6137582 (not c!1103803)) b!6137581))

(assert (= (and b!6137581 c!1103802) b!6137580))

(assert (= (and b!6137581 (not c!1103802)) b!6137573))

(assert (= (and b!6137573 c!1103806) b!6137578))

(assert (= (and b!6137573 (not c!1103806)) b!6137576))

(assert (= (or b!6137580 b!6137578) bm!509470))

(assert (= (or b!6137580 b!6137578) bm!509467))

(assert (= (or b!6137574 bm!509470) bm!509469))

(assert (= (or b!6137574 bm!509467) bm!509468))

(assert (= (or b!6137579 b!6137574) bm!509472))

(assert (= (or b!6137579 bm!509468) bm!509471))

(declare-fun m!6979658 () Bool)

(assert (=> bm!509472 m!6979658))

(declare-fun m!6979660 () Bool)

(assert (=> b!6137572 m!6979660))

(declare-fun m!6979662 () Bool)

(assert (=> bm!509469 m!6979662))

(declare-fun m!6979664 () Bool)

(assert (=> bm!509471 m!6979664))

(declare-fun m!6979666 () Bool)

(assert (=> b!6137577 m!6979666))

(assert (=> bm!509344 d!1922922))

(assert (=> bm!509338 d!1922866))

(declare-fun bs!1522034 () Bool)

(declare-fun d!1922924 () Bool)

(assert (= bs!1522034 (and d!1922924 d!1922784)))

(declare-fun lambda!334484 () Int)

(assert (=> bs!1522034 (= lambda!334484 lambda!334464)))

(declare-fun bs!1522035 () Bool)

(assert (= bs!1522035 (and d!1922924 d!1922796)))

(assert (=> bs!1522035 (= lambda!334484 lambda!334465)))

(declare-fun bs!1522036 () Bool)

(assert (= bs!1522036 (and d!1922924 d!1922906)))

(assert (=> bs!1522036 (= lambda!334484 lambda!334482)))

(assert (=> d!1922924 (= (nullableZipper!1861 lt!2332536) (exists!2427 lt!2332536 lambda!334484))))

(declare-fun bs!1522037 () Bool)

(assert (= bs!1522037 d!1922924))

(declare-fun m!6979668 () Bool)

(assert (=> bs!1522037 m!6979668))

(assert (=> b!6136631 d!1922924))

(declare-fun bs!1522038 () Bool)

(declare-fun d!1922926 () Bool)

(assert (= bs!1522038 (and d!1922926 d!1922678)))

(declare-fun lambda!334485 () Int)

(assert (=> bs!1522038 (= lambda!334485 lambda!334429)))

(declare-fun bs!1522039 () Bool)

(assert (= bs!1522039 (and d!1922926 d!1922830)))

(assert (=> bs!1522039 (= lambda!334485 lambda!334475)))

(declare-fun bs!1522040 () Bool)

(assert (= bs!1522040 (and d!1922926 d!1922664)))

(assert (=> bs!1522040 (= lambda!334485 lambda!334428)))

(declare-fun bs!1522041 () Bool)

(assert (= bs!1522041 (and d!1922926 d!1922660)))

(assert (=> bs!1522041 (= lambda!334485 lambda!334424)))

(declare-fun bs!1522042 () Bool)

(assert (= bs!1522042 (and d!1922926 d!1922600)))

(assert (=> bs!1522042 (= lambda!334485 lambda!334406)))

(declare-fun bs!1522043 () Bool)

(assert (= bs!1522043 (and d!1922926 d!1922912)))

(assert (=> bs!1522043 (= lambda!334485 lambda!334483)))

(declare-fun bs!1522044 () Bool)

(assert (= bs!1522044 (and d!1922926 d!1922890)))

(assert (=> bs!1522044 (= lambda!334485 lambda!334481)))

(declare-fun bs!1522045 () Bool)

(assert (= bs!1522045 (and d!1922926 d!1922662)))

(assert (=> bs!1522045 (= lambda!334485 lambda!334427)))

(declare-fun bs!1522046 () Bool)

(assert (= bs!1522046 (and d!1922926 d!1922680)))

(assert (=> bs!1522046 (= lambda!334485 lambda!334432)))

(assert (=> d!1922926 (= (inv!83448 (h!70864 (t!378015 zl!343))) (forall!15201 (exprs!5964 (h!70864 (t!378015 zl!343))) lambda!334485))))

(declare-fun bs!1522047 () Bool)

(assert (= bs!1522047 d!1922926))

(declare-fun m!6979670 () Bool)

(assert (=> bs!1522047 m!6979670))

(assert (=> b!6136893 d!1922926))

(declare-fun bm!509473 () Bool)

(declare-fun call!509478 () Bool)

(declare-fun call!509480 () Bool)

(assert (=> bm!509473 (= call!509478 call!509480)))

(declare-fun b!6137583 () Bool)

(declare-fun e!3740616 () Bool)

(declare-fun e!3740611 () Bool)

(assert (=> b!6137583 (= e!3740616 e!3740611)))

(declare-fun c!1103807 () Bool)

(assert (=> b!6137583 (= c!1103807 (is-Union!16080 lt!2332650))))

(declare-fun b!6137584 () Bool)

(declare-fun e!3740614 () Bool)

(assert (=> b!6137584 (= e!3740616 e!3740614)))

(declare-fun res!2543289 () Bool)

(assert (=> b!6137584 (= res!2543289 (not (nullable!6073 (reg!16409 lt!2332650))))))

(assert (=> b!6137584 (=> (not res!2543289) (not e!3740614))))

(declare-fun bm!509474 () Bool)

(declare-fun c!1103808 () Bool)

(assert (=> bm!509474 (= call!509480 (validRegex!7816 (ite c!1103808 (reg!16409 lt!2332650) (ite c!1103807 (regTwo!32673 lt!2332650) (regTwo!32672 lt!2332650)))))))

(declare-fun b!6137585 () Bool)

(declare-fun e!3740613 () Bool)

(assert (=> b!6137585 (= e!3740613 call!509478)))

(declare-fun b!6137586 () Bool)

(declare-fun res!2543290 () Bool)

(declare-fun e!3740615 () Bool)

(assert (=> b!6137586 (=> res!2543290 e!3740615)))

(assert (=> b!6137586 (= res!2543290 (not (is-Concat!24925 lt!2332650)))))

(assert (=> b!6137586 (= e!3740611 e!3740615)))

(declare-fun b!6137587 () Bool)

(assert (=> b!6137587 (= e!3740614 call!509480)))

(declare-fun b!6137588 () Bool)

(declare-fun e!3740612 () Bool)

(assert (=> b!6137588 (= e!3740612 call!509478)))

(declare-fun bm!509475 () Bool)

(declare-fun call!509479 () Bool)

(assert (=> bm!509475 (= call!509479 (validRegex!7816 (ite c!1103807 (regOne!32673 lt!2332650) (regOne!32672 lt!2332650))))))

(declare-fun b!6137590 () Bool)

(declare-fun e!3740617 () Bool)

(assert (=> b!6137590 (= e!3740617 e!3740616)))

(assert (=> b!6137590 (= c!1103808 (is-Star!16080 lt!2332650))))

(declare-fun b!6137591 () Bool)

(declare-fun res!2543293 () Bool)

(assert (=> b!6137591 (=> (not res!2543293) (not e!3740613))))

(assert (=> b!6137591 (= res!2543293 call!509479)))

(assert (=> b!6137591 (= e!3740611 e!3740613)))

(declare-fun d!1922928 () Bool)

(declare-fun res!2543291 () Bool)

(assert (=> d!1922928 (=> res!2543291 e!3740617)))

(assert (=> d!1922928 (= res!2543291 (is-ElementMatch!16080 lt!2332650))))

(assert (=> d!1922928 (= (validRegex!7816 lt!2332650) e!3740617)))

(declare-fun b!6137589 () Bool)

(assert (=> b!6137589 (= e!3740615 e!3740612)))

(declare-fun res!2543292 () Bool)

(assert (=> b!6137589 (=> (not res!2543292) (not e!3740612))))

(assert (=> b!6137589 (= res!2543292 call!509479)))

(assert (= (and d!1922928 (not res!2543291)) b!6137590))

(assert (= (and b!6137590 c!1103808) b!6137584))

(assert (= (and b!6137590 (not c!1103808)) b!6137583))

(assert (= (and b!6137584 res!2543289) b!6137587))

(assert (= (and b!6137583 c!1103807) b!6137591))

(assert (= (and b!6137583 (not c!1103807)) b!6137586))

(assert (= (and b!6137591 res!2543293) b!6137585))

(assert (= (and b!6137586 (not res!2543290)) b!6137589))

(assert (= (and b!6137589 res!2543292) b!6137588))

(assert (= (or b!6137585 b!6137588) bm!509473))

(assert (= (or b!6137591 b!6137589) bm!509475))

(assert (= (or b!6137587 bm!509473) bm!509474))

(declare-fun m!6979672 () Bool)

(assert (=> b!6137584 m!6979672))

(declare-fun m!6979674 () Bool)

(assert (=> bm!509474 m!6979674))

(declare-fun m!6979676 () Bool)

(assert (=> bm!509475 m!6979676))

(assert (=> d!1922660 d!1922928))

(declare-fun d!1922930 () Bool)

(declare-fun res!2543294 () Bool)

(declare-fun e!3740618 () Bool)

(assert (=> d!1922930 (=> res!2543294 e!3740618)))

(assert (=> d!1922930 (= res!2543294 (is-Nil!64415 (unfocusZipperList!1501 zl!343)))))

(assert (=> d!1922930 (= (forall!15201 (unfocusZipperList!1501 zl!343) lambda!334424) e!3740618)))

(declare-fun b!6137592 () Bool)

(declare-fun e!3740619 () Bool)

(assert (=> b!6137592 (= e!3740618 e!3740619)))

(declare-fun res!2543295 () Bool)

(assert (=> b!6137592 (=> (not res!2543295) (not e!3740619))))

(assert (=> b!6137592 (= res!2543295 (dynLambda!25383 lambda!334424 (h!70863 (unfocusZipperList!1501 zl!343))))))

(declare-fun b!6137593 () Bool)

(assert (=> b!6137593 (= e!3740619 (forall!15201 (t!378014 (unfocusZipperList!1501 zl!343)) lambda!334424))))

(assert (= (and d!1922930 (not res!2543294)) b!6137592))

(assert (= (and b!6137592 res!2543295) b!6137593))

(declare-fun b_lambda!233595 () Bool)

(assert (=> (not b_lambda!233595) (not b!6137592)))

(declare-fun m!6979678 () Bool)

(assert (=> b!6137592 m!6979678))

(declare-fun m!6979680 () Bool)

(assert (=> b!6137593 m!6979680))

(assert (=> d!1922660 d!1922930))

(declare-fun e!3740621 () Bool)

(declare-fun b!6137594 () Bool)

(assert (=> b!6137594 (= e!3740621 (nullable!6073 (regOne!32672 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343))))))))))))

(declare-fun bm!509476 () Bool)

(declare-fun call!509485 () (Set Context!10928))

(declare-fun call!509483 () (Set Context!10928))

(assert (=> bm!509476 (= call!509485 call!509483)))

(declare-fun b!6137596 () Bool)

(declare-fun e!3740622 () (Set Context!10928))

(declare-fun call!509484 () (Set Context!10928))

(assert (=> b!6137596 (= e!3740622 (set.union call!509484 call!509483))))

(declare-fun bm!509477 () Bool)

(declare-fun call!509486 () (Set Context!10928))

(assert (=> bm!509477 (= call!509483 call!509486)))

(declare-fun call!509481 () List!64539)

(declare-fun c!1103809 () Bool)

(declare-fun c!1103810 () Bool)

(declare-fun bm!509478 () Bool)

(assert (=> bm!509478 (= call!509481 ($colon$colon!1957 (exprs!5964 (ite (or c!1103541 c!1103539) lt!2332553 (Context!10929 call!509321))) (ite (or c!1103810 c!1103809) (regTwo!32672 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343)))))))) (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343))))))))))))

(declare-fun bm!509479 () Bool)

(declare-fun call!509482 () List!64539)

(assert (=> bm!509479 (= call!509482 call!509481)))

(declare-fun b!6137597 () Bool)

(declare-fun e!3740624 () (Set Context!10928))

(declare-fun e!3740620 () (Set Context!10928))

(assert (=> b!6137597 (= e!3740624 e!3740620)))

(declare-fun c!1103812 () Bool)

(assert (=> b!6137597 (= c!1103812 (is-Union!16080 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343)))))))))))

(declare-fun bm!509480 () Bool)

(assert (=> bm!509480 (= call!509486 (derivationStepZipperDown!1328 (ite c!1103812 (regOne!32673 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343)))))))) (ite c!1103810 (regTwo!32672 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343)))))))) (ite c!1103809 (regOne!32672 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343)))))))) (reg!16409 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343))))))))))) (ite (or c!1103812 c!1103810) (ite (or c!1103541 c!1103539) lt!2332553 (Context!10929 call!509321)) (Context!10929 call!509482)) (h!70865 s!2326)))))

(declare-fun b!6137598 () Bool)

(declare-fun e!3740625 () (Set Context!10928))

(assert (=> b!6137598 (= e!3740625 (as set.empty (Set Context!10928)))))

(declare-fun b!6137599 () Bool)

(assert (=> b!6137599 (= e!3740624 (set.insert (ite (or c!1103541 c!1103539) lt!2332553 (Context!10929 call!509321)) (as set.empty (Set Context!10928))))))

(declare-fun b!6137600 () Bool)

(assert (=> b!6137600 (= e!3740625 call!509485)))

(declare-fun b!6137601 () Bool)

(assert (=> b!6137601 (= e!3740620 (set.union call!509486 call!509484))))

(declare-fun b!6137602 () Bool)

(declare-fun e!3740623 () (Set Context!10928))

(assert (=> b!6137602 (= e!3740623 call!509485)))

(declare-fun b!6137603 () Bool)

(assert (=> b!6137603 (= e!3740622 e!3740623)))

(assert (=> b!6137603 (= c!1103809 (is-Concat!24925 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343)))))))))))

(declare-fun c!1103813 () Bool)

(declare-fun b!6137595 () Bool)

(assert (=> b!6137595 (= c!1103813 (is-Star!16080 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343)))))))))))

(assert (=> b!6137595 (= e!3740623 e!3740625)))

(declare-fun c!1103811 () Bool)

(declare-fun d!1922932 () Bool)

(assert (=> d!1922932 (= c!1103811 (and (is-ElementMatch!16080 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343)))))))) (= (c!1103508 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343)))))))) (h!70865 s!2326))))))

(assert (=> d!1922932 (= (derivationStepZipperDown!1328 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343))))))) (ite (or c!1103541 c!1103539) lt!2332553 (Context!10929 call!509321)) (h!70865 s!2326)) e!3740624)))

(declare-fun b!6137604 () Bool)

(assert (=> b!6137604 (= c!1103810 e!3740621)))

(declare-fun res!2543296 () Bool)

(assert (=> b!6137604 (=> (not res!2543296) (not e!3740621))))

(assert (=> b!6137604 (= res!2543296 (is-Concat!24925 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343)))))))))))

(assert (=> b!6137604 (= e!3740620 e!3740622)))

(declare-fun bm!509481 () Bool)

(assert (=> bm!509481 (= call!509484 (derivationStepZipperDown!1328 (ite c!1103812 (regTwo!32673 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343)))))))) (regOne!32672 (ite c!1103541 (regOne!32673 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103539 (regTwo!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (ite c!1103538 (regOne!32672 (h!70863 (exprs!5964 (h!70864 zl!343)))) (reg!16409 (h!70863 (exprs!5964 (h!70864 zl!343))))))))) (ite c!1103812 (ite (or c!1103541 c!1103539) lt!2332553 (Context!10929 call!509321)) (Context!10929 call!509481)) (h!70865 s!2326)))))

(assert (= (and d!1922932 c!1103811) b!6137599))

(assert (= (and d!1922932 (not c!1103811)) b!6137597))

(assert (= (and b!6137597 c!1103812) b!6137601))

(assert (= (and b!6137597 (not c!1103812)) b!6137604))

(assert (= (and b!6137604 res!2543296) b!6137594))

(assert (= (and b!6137604 c!1103810) b!6137596))

(assert (= (and b!6137604 (not c!1103810)) b!6137603))

(assert (= (and b!6137603 c!1103809) b!6137602))

(assert (= (and b!6137603 (not c!1103809)) b!6137595))

(assert (= (and b!6137595 c!1103813) b!6137600))

(assert (= (and b!6137595 (not c!1103813)) b!6137598))

(assert (= (or b!6137602 b!6137600) bm!509479))

(assert (= (or b!6137602 b!6137600) bm!509476))

(assert (= (or b!6137596 bm!509479) bm!509478))

(assert (= (or b!6137596 bm!509476) bm!509477))

(assert (= (or b!6137601 b!6137596) bm!509481))

(assert (= (or b!6137601 bm!509477) bm!509480))

(declare-fun m!6979682 () Bool)

(assert (=> bm!509481 m!6979682))

(declare-fun m!6979684 () Bool)

(assert (=> b!6137594 m!6979684))

(declare-fun m!6979686 () Bool)

(assert (=> bm!509478 m!6979686))

(declare-fun m!6979688 () Bool)

(assert (=> bm!509480 m!6979688))

(declare-fun m!6979690 () Bool)

(assert (=> b!6137599 m!6979690))

(assert (=> bm!509319 d!1922932))

(declare-fun b!6137605 () Bool)

(declare-fun res!2543301 () Bool)

(declare-fun e!3740628 () Bool)

(assert (=> b!6137605 (=> res!2543301 e!3740628)))

(assert (=> b!6137605 (= res!2543301 (not (is-ElementMatch!16080 (regOne!32672 r!7292))))))

(declare-fun e!3740631 () Bool)

(assert (=> b!6137605 (= e!3740631 e!3740628)))

(declare-fun b!6137606 () Bool)

(declare-fun e!3740632 () Bool)

(assert (=> b!6137606 (= e!3740632 (matchR!8263 (derivativeStep!4800 (regOne!32672 r!7292) (head!12681 (_1!36362 (get!22222 lt!2332634)))) (tail!11766 (_1!36362 (get!22222 lt!2332634)))))))

(declare-fun b!6137607 () Bool)

(declare-fun e!3740629 () Bool)

(assert (=> b!6137607 (= e!3740628 e!3740629)))

(declare-fun res!2543298 () Bool)

(assert (=> b!6137607 (=> (not res!2543298) (not e!3740629))))

(declare-fun lt!2332712 () Bool)

(assert (=> b!6137607 (= res!2543298 (not lt!2332712))))

(declare-fun b!6137608 () Bool)

(declare-fun e!3740626 () Bool)

(assert (=> b!6137608 (= e!3740629 e!3740626)))

(declare-fun res!2543302 () Bool)

(assert (=> b!6137608 (=> res!2543302 e!3740626)))

(declare-fun call!509487 () Bool)

(assert (=> b!6137608 (= res!2543302 call!509487)))

(declare-fun b!6137609 () Bool)

(assert (=> b!6137609 (= e!3740631 (not lt!2332712))))

(declare-fun b!6137610 () Bool)

(declare-fun e!3740627 () Bool)

(assert (=> b!6137610 (= e!3740627 (= lt!2332712 call!509487))))

(declare-fun b!6137611 () Bool)

(declare-fun res!2543300 () Bool)

(assert (=> b!6137611 (=> res!2543300 e!3740628)))

(declare-fun e!3740630 () Bool)

(assert (=> b!6137611 (= res!2543300 e!3740630)))

(declare-fun res!2543303 () Bool)

(assert (=> b!6137611 (=> (not res!2543303) (not e!3740630))))

(assert (=> b!6137611 (= res!2543303 lt!2332712)))

(declare-fun b!6137612 () Bool)

(assert (=> b!6137612 (= e!3740626 (not (= (head!12681 (_1!36362 (get!22222 lt!2332634))) (c!1103508 (regOne!32672 r!7292)))))))

(declare-fun d!1922934 () Bool)

(assert (=> d!1922934 e!3740627))

(declare-fun c!1103816 () Bool)

(assert (=> d!1922934 (= c!1103816 (is-EmptyExpr!16080 (regOne!32672 r!7292)))))

(assert (=> d!1922934 (= lt!2332712 e!3740632)))

(declare-fun c!1103815 () Bool)

(assert (=> d!1922934 (= c!1103815 (isEmpty!36366 (_1!36362 (get!22222 lt!2332634))))))

(assert (=> d!1922934 (validRegex!7816 (regOne!32672 r!7292))))

(assert (=> d!1922934 (= (matchR!8263 (regOne!32672 r!7292) (_1!36362 (get!22222 lt!2332634))) lt!2332712)))

(declare-fun b!6137613 () Bool)

(assert (=> b!6137613 (= e!3740630 (= (head!12681 (_1!36362 (get!22222 lt!2332634))) (c!1103508 (regOne!32672 r!7292))))))

(declare-fun b!6137614 () Bool)

(declare-fun res!2543304 () Bool)

(assert (=> b!6137614 (=> (not res!2543304) (not e!3740630))))

(assert (=> b!6137614 (= res!2543304 (isEmpty!36366 (tail!11766 (_1!36362 (get!22222 lt!2332634)))))))

(declare-fun b!6137615 () Bool)

(assert (=> b!6137615 (= e!3740632 (nullable!6073 (regOne!32672 r!7292)))))

(declare-fun b!6137616 () Bool)

(declare-fun res!2543299 () Bool)

(assert (=> b!6137616 (=> res!2543299 e!3740626)))

(assert (=> b!6137616 (= res!2543299 (not (isEmpty!36366 (tail!11766 (_1!36362 (get!22222 lt!2332634))))))))

(declare-fun b!6137617 () Bool)

(declare-fun res!2543297 () Bool)

(assert (=> b!6137617 (=> (not res!2543297) (not e!3740630))))

(assert (=> b!6137617 (= res!2543297 (not call!509487))))

(declare-fun bm!509482 () Bool)

(assert (=> bm!509482 (= call!509487 (isEmpty!36366 (_1!36362 (get!22222 lt!2332634))))))

(declare-fun b!6137618 () Bool)

(assert (=> b!6137618 (= e!3740627 e!3740631)))

(declare-fun c!1103814 () Bool)

(assert (=> b!6137618 (= c!1103814 (is-EmptyLang!16080 (regOne!32672 r!7292)))))

(assert (= (and d!1922934 c!1103815) b!6137615))

(assert (= (and d!1922934 (not c!1103815)) b!6137606))

(assert (= (and d!1922934 c!1103816) b!6137610))

(assert (= (and d!1922934 (not c!1103816)) b!6137618))

(assert (= (and b!6137618 c!1103814) b!6137609))

(assert (= (and b!6137618 (not c!1103814)) b!6137605))

(assert (= (and b!6137605 (not res!2543301)) b!6137611))

(assert (= (and b!6137611 res!2543303) b!6137617))

(assert (= (and b!6137617 res!2543297) b!6137614))

(assert (= (and b!6137614 res!2543304) b!6137613))

(assert (= (and b!6137611 (not res!2543300)) b!6137607))

(assert (= (and b!6137607 res!2543298) b!6137608))

(assert (= (and b!6137608 (not res!2543302)) b!6137616))

(assert (= (and b!6137616 (not res!2543299)) b!6137612))

(assert (= (or b!6137610 b!6137608 b!6137617) bm!509482))

(declare-fun m!6979692 () Bool)

(assert (=> d!1922934 m!6979692))

(assert (=> d!1922934 m!6979004))

(declare-fun m!6979694 () Bool)

(assert (=> b!6137613 m!6979694))

(assert (=> b!6137606 m!6979694))

(assert (=> b!6137606 m!6979694))

(declare-fun m!6979696 () Bool)

(assert (=> b!6137606 m!6979696))

(declare-fun m!6979698 () Bool)

(assert (=> b!6137606 m!6979698))

(assert (=> b!6137606 m!6979696))

(assert (=> b!6137606 m!6979698))

(declare-fun m!6979700 () Bool)

(assert (=> b!6137606 m!6979700))

(declare-fun m!6979702 () Bool)

(assert (=> b!6137615 m!6979702))

(assert (=> b!6137612 m!6979694))

(assert (=> b!6137614 m!6979698))

(assert (=> b!6137614 m!6979698))

(declare-fun m!6979704 () Bool)

(assert (=> b!6137614 m!6979704))

(assert (=> bm!509482 m!6979692))

(assert (=> b!6137616 m!6979698))

(assert (=> b!6137616 m!6979698))

(assert (=> b!6137616 m!6979704))

(assert (=> b!6136682 d!1922934))

(assert (=> b!6136682 d!1922834))

(assert (=> b!6136622 d!1922628))

(declare-fun bs!1522048 () Bool)

(declare-fun d!1922936 () Bool)

(assert (= bs!1522048 (and d!1922936 d!1922784)))

(declare-fun lambda!334486 () Int)

(assert (=> bs!1522048 (= lambda!334486 lambda!334464)))

(declare-fun bs!1522049 () Bool)

(assert (= bs!1522049 (and d!1922936 d!1922796)))

(assert (=> bs!1522049 (= lambda!334486 lambda!334465)))

(declare-fun bs!1522050 () Bool)

(assert (= bs!1522050 (and d!1922936 d!1922906)))

(assert (=> bs!1522050 (= lambda!334486 lambda!334482)))

(declare-fun bs!1522051 () Bool)

(assert (= bs!1522051 (and d!1922936 d!1922924)))

(assert (=> bs!1522051 (= lambda!334486 lambda!334484)))

(assert (=> d!1922936 (= (nullableZipper!1861 (set.union lt!2332533 lt!2332536)) (exists!2427 (set.union lt!2332533 lt!2332536) lambda!334486))))

(declare-fun bs!1522052 () Bool)

(assert (= bs!1522052 d!1922936))

(declare-fun m!6979706 () Bool)

(assert (=> bs!1522052 m!6979706))

(assert (=> b!6136629 d!1922936))

(declare-fun d!1922938 () Bool)

(assert (=> d!1922938 (= (isUnion!937 lt!2332650) (is-Union!16080 lt!2332650))))

(assert (=> b!6136811 d!1922938))

(declare-fun d!1922940 () Bool)

(declare-fun c!1103817 () Bool)

(assert (=> d!1922940 (= c!1103817 (isEmpty!36366 (tail!11766 (t!378016 s!2326))))))

(declare-fun e!3740633 () Bool)

(assert (=> d!1922940 (= (matchZipper!2092 (derivationStepZipper!2053 lt!2332533 (head!12681 (t!378016 s!2326))) (tail!11766 (t!378016 s!2326))) e!3740633)))

(declare-fun b!6137619 () Bool)

(assert (=> b!6137619 (= e!3740633 (nullableZipper!1861 (derivationStepZipper!2053 lt!2332533 (head!12681 (t!378016 s!2326)))))))

(declare-fun b!6137620 () Bool)

(assert (=> b!6137620 (= e!3740633 (matchZipper!2092 (derivationStepZipper!2053 (derivationStepZipper!2053 lt!2332533 (head!12681 (t!378016 s!2326))) (head!12681 (tail!11766 (t!378016 s!2326)))) (tail!11766 (tail!11766 (t!378016 s!2326)))))))

(assert (= (and d!1922940 c!1103817) b!6137619))

(assert (= (and d!1922940 (not c!1103817)) b!6137620))

(assert (=> d!1922940 m!6978954))

(assert (=> d!1922940 m!6979506))

(assert (=> b!6137619 m!6978952))

(declare-fun m!6979708 () Bool)

(assert (=> b!6137619 m!6979708))

(assert (=> b!6137620 m!6978954))

(assert (=> b!6137620 m!6979510))

(assert (=> b!6137620 m!6978952))

(assert (=> b!6137620 m!6979510))

(declare-fun m!6979710 () Bool)

(assert (=> b!6137620 m!6979710))

(assert (=> b!6137620 m!6978954))

(assert (=> b!6137620 m!6979514))

(assert (=> b!6137620 m!6979710))

(assert (=> b!6137620 m!6979514))

(declare-fun m!6979712 () Bool)

(assert (=> b!6137620 m!6979712))

(assert (=> b!6136628 d!1922940))

(declare-fun bs!1522053 () Bool)

(declare-fun d!1922942 () Bool)

(assert (= bs!1522053 (and d!1922942 b!6136452)))

(declare-fun lambda!334487 () Int)

(assert (=> bs!1522053 (= (= (head!12681 (t!378016 s!2326)) (h!70865 s!2326)) (= lambda!334487 lambda!334390))))

(declare-fun bs!1522054 () Bool)

(assert (= bs!1522054 (and d!1922942 d!1922844)))

(assert (=> bs!1522054 (= lambda!334487 lambda!334478)))

(declare-fun bs!1522055 () Bool)

(assert (= bs!1522055 (and d!1922942 d!1922878)))

(assert (=> bs!1522055 (= lambda!334487 lambda!334479)))

(declare-fun bs!1522056 () Bool)

(assert (= bs!1522056 (and d!1922942 d!1922884)))

(assert (=> bs!1522056 (= lambda!334487 lambda!334480)))

(assert (=> d!1922942 true))

(assert (=> d!1922942 (= (derivationStepZipper!2053 lt!2332533 (head!12681 (t!378016 s!2326))) (flatMap!1585 lt!2332533 lambda!334487))))

(declare-fun bs!1522057 () Bool)

(assert (= bs!1522057 d!1922942))

(declare-fun m!6979714 () Bool)

(assert (=> bs!1522057 m!6979714))

(assert (=> b!6136628 d!1922942))

(assert (=> b!6136628 d!1922846))

(assert (=> b!6136628 d!1922848))

(declare-fun d!1922944 () Bool)

(assert (=> d!1922944 (= (isEmpty!36363 (unfocusZipperList!1501 zl!343)) (is-Nil!64415 (unfocusZipperList!1501 zl!343)))))

(assert (=> b!6136815 d!1922944))

(declare-fun b!6137621 () Bool)

(declare-fun res!2543309 () Bool)

(declare-fun e!3740636 () Bool)

(assert (=> b!6137621 (=> res!2543309 e!3740636)))

(assert (=> b!6137621 (= res!2543309 (not (is-ElementMatch!16080 (derivativeStep!4800 r!7292 (head!12681 s!2326)))))))

(declare-fun e!3740639 () Bool)

(assert (=> b!6137621 (= e!3740639 e!3740636)))

(declare-fun b!6137622 () Bool)

(declare-fun e!3740640 () Bool)

(assert (=> b!6137622 (= e!3740640 (matchR!8263 (derivativeStep!4800 (derivativeStep!4800 r!7292 (head!12681 s!2326)) (head!12681 (tail!11766 s!2326))) (tail!11766 (tail!11766 s!2326))))))

(declare-fun b!6137623 () Bool)

(declare-fun e!3740637 () Bool)

(assert (=> b!6137623 (= e!3740636 e!3740637)))

(declare-fun res!2543306 () Bool)

(assert (=> b!6137623 (=> (not res!2543306) (not e!3740637))))

(declare-fun lt!2332713 () Bool)

(assert (=> b!6137623 (= res!2543306 (not lt!2332713))))

(declare-fun b!6137624 () Bool)

(declare-fun e!3740634 () Bool)

(assert (=> b!6137624 (= e!3740637 e!3740634)))

(declare-fun res!2543310 () Bool)

(assert (=> b!6137624 (=> res!2543310 e!3740634)))

(declare-fun call!509488 () Bool)

(assert (=> b!6137624 (= res!2543310 call!509488)))

(declare-fun b!6137625 () Bool)

(assert (=> b!6137625 (= e!3740639 (not lt!2332713))))

(declare-fun b!6137626 () Bool)

(declare-fun e!3740635 () Bool)

(assert (=> b!6137626 (= e!3740635 (= lt!2332713 call!509488))))

(declare-fun b!6137627 () Bool)

(declare-fun res!2543308 () Bool)

(assert (=> b!6137627 (=> res!2543308 e!3740636)))

(declare-fun e!3740638 () Bool)

(assert (=> b!6137627 (= res!2543308 e!3740638)))

(declare-fun res!2543311 () Bool)

(assert (=> b!6137627 (=> (not res!2543311) (not e!3740638))))

(assert (=> b!6137627 (= res!2543311 lt!2332713)))

(declare-fun b!6137628 () Bool)

(assert (=> b!6137628 (= e!3740634 (not (= (head!12681 (tail!11766 s!2326)) (c!1103508 (derivativeStep!4800 r!7292 (head!12681 s!2326))))))))

(declare-fun d!1922946 () Bool)

(assert (=> d!1922946 e!3740635))

(declare-fun c!1103820 () Bool)

(assert (=> d!1922946 (= c!1103820 (is-EmptyExpr!16080 (derivativeStep!4800 r!7292 (head!12681 s!2326))))))

(assert (=> d!1922946 (= lt!2332713 e!3740640)))

(declare-fun c!1103819 () Bool)

(assert (=> d!1922946 (= c!1103819 (isEmpty!36366 (tail!11766 s!2326)))))

(assert (=> d!1922946 (validRegex!7816 (derivativeStep!4800 r!7292 (head!12681 s!2326)))))

(assert (=> d!1922946 (= (matchR!8263 (derivativeStep!4800 r!7292 (head!12681 s!2326)) (tail!11766 s!2326)) lt!2332713)))

(declare-fun b!6137629 () Bool)

(assert (=> b!6137629 (= e!3740638 (= (head!12681 (tail!11766 s!2326)) (c!1103508 (derivativeStep!4800 r!7292 (head!12681 s!2326)))))))

(declare-fun b!6137630 () Bool)

(declare-fun res!2543312 () Bool)

(assert (=> b!6137630 (=> (not res!2543312) (not e!3740638))))

(assert (=> b!6137630 (= res!2543312 (isEmpty!36366 (tail!11766 (tail!11766 s!2326))))))

(declare-fun b!6137631 () Bool)

(assert (=> b!6137631 (= e!3740640 (nullable!6073 (derivativeStep!4800 r!7292 (head!12681 s!2326))))))

(declare-fun b!6137632 () Bool)

(declare-fun res!2543307 () Bool)

(assert (=> b!6137632 (=> res!2543307 e!3740634)))

(assert (=> b!6137632 (= res!2543307 (not (isEmpty!36366 (tail!11766 (tail!11766 s!2326)))))))

(declare-fun b!6137633 () Bool)

(declare-fun res!2543305 () Bool)

(assert (=> b!6137633 (=> (not res!2543305) (not e!3740638))))

(assert (=> b!6137633 (= res!2543305 (not call!509488))))

(declare-fun bm!509483 () Bool)

(assert (=> bm!509483 (= call!509488 (isEmpty!36366 (tail!11766 s!2326)))))

(declare-fun b!6137634 () Bool)

(assert (=> b!6137634 (= e!3740635 e!3740639)))

(declare-fun c!1103818 () Bool)

(assert (=> b!6137634 (= c!1103818 (is-EmptyLang!16080 (derivativeStep!4800 r!7292 (head!12681 s!2326))))))

(assert (= (and d!1922946 c!1103819) b!6137631))

(assert (= (and d!1922946 (not c!1103819)) b!6137622))

(assert (= (and d!1922946 c!1103820) b!6137626))

(assert (= (and d!1922946 (not c!1103820)) b!6137634))

(assert (= (and b!6137634 c!1103818) b!6137625))

(assert (= (and b!6137634 (not c!1103818)) b!6137621))

(assert (= (and b!6137621 (not res!2543309)) b!6137627))

(assert (= (and b!6137627 res!2543311) b!6137633))

(assert (= (and b!6137633 res!2543305) b!6137630))

(assert (= (and b!6137630 res!2543312) b!6137629))

(assert (= (and b!6137627 (not res!2543308)) b!6137623))

(assert (= (and b!6137623 res!2543306) b!6137624))

(assert (= (and b!6137624 (not res!2543310)) b!6137632))

(assert (= (and b!6137632 (not res!2543307)) b!6137628))

(assert (= (or b!6137626 b!6137624 b!6137633) bm!509483))

(assert (=> d!1922946 m!6979034))

(assert (=> d!1922946 m!6979040))

(assert (=> d!1922946 m!6979032))

(declare-fun m!6979716 () Bool)

(assert (=> d!1922946 m!6979716))

(assert (=> b!6137629 m!6979034))

(declare-fun m!6979718 () Bool)

(assert (=> b!6137629 m!6979718))

(assert (=> b!6137622 m!6979034))

(assert (=> b!6137622 m!6979718))

(assert (=> b!6137622 m!6979032))

(assert (=> b!6137622 m!6979718))

(declare-fun m!6979720 () Bool)

(assert (=> b!6137622 m!6979720))

(assert (=> b!6137622 m!6979034))

(declare-fun m!6979722 () Bool)

(assert (=> b!6137622 m!6979722))

(assert (=> b!6137622 m!6979720))

(assert (=> b!6137622 m!6979722))

(declare-fun m!6979724 () Bool)

(assert (=> b!6137622 m!6979724))

(assert (=> b!6137631 m!6979032))

(declare-fun m!6979726 () Bool)

(assert (=> b!6137631 m!6979726))

(assert (=> b!6137628 m!6979034))

(assert (=> b!6137628 m!6979718))

(assert (=> b!6137630 m!6979034))

(assert (=> b!6137630 m!6979722))

(assert (=> b!6137630 m!6979722))

(declare-fun m!6979728 () Bool)

(assert (=> b!6137630 m!6979728))

(assert (=> bm!509483 m!6979034))

(assert (=> bm!509483 m!6979040))

(assert (=> b!6137632 m!6979034))

(assert (=> b!6137632 m!6979722))

(assert (=> b!6137632 m!6979722))

(assert (=> b!6137632 m!6979728))

(assert (=> b!6136773 d!1922946))

(declare-fun bm!509492 () Bool)

(declare-fun call!509497 () Regex!16080)

(declare-fun call!509499 () Regex!16080)

(assert (=> bm!509492 (= call!509497 call!509499)))

(declare-fun b!6137655 () Bool)

(declare-fun e!3740652 () Regex!16080)

(declare-fun call!509498 () Regex!16080)

(assert (=> b!6137655 (= e!3740652 (Union!16080 (Concat!24925 call!509498 (regTwo!32672 r!7292)) EmptyLang!16080))))

(declare-fun bm!509493 () Bool)

(declare-fun c!1103833 () Bool)

(declare-fun c!1103834 () Bool)

(assert (=> bm!509493 (= call!509499 (derivativeStep!4800 (ite c!1103833 (regTwo!32673 r!7292) (ite c!1103834 (reg!16409 r!7292) (regOne!32672 r!7292))) (head!12681 s!2326)))))

(declare-fun b!6137656 () Bool)

(declare-fun e!3740654 () Regex!16080)

(assert (=> b!6137656 (= e!3740654 (ite (= (head!12681 s!2326) (c!1103508 r!7292)) EmptyExpr!16080 EmptyLang!16080))))

(declare-fun b!6137657 () Bool)

(declare-fun e!3740651 () Regex!16080)

(assert (=> b!6137657 (= e!3740651 EmptyLang!16080)))

(declare-fun b!6137658 () Bool)

(declare-fun e!3740655 () Regex!16080)

(declare-fun e!3740653 () Regex!16080)

(assert (=> b!6137658 (= e!3740655 e!3740653)))

(assert (=> b!6137658 (= c!1103834 (is-Star!16080 r!7292))))

(declare-fun b!6137659 () Bool)

(assert (=> b!6137659 (= e!3740651 e!3740654)))

(declare-fun c!1103835 () Bool)

(assert (=> b!6137659 (= c!1103835 (is-ElementMatch!16080 r!7292))))

(declare-fun bm!509494 () Bool)

(declare-fun call!509500 () Regex!16080)

(assert (=> bm!509494 (= call!509498 call!509500)))

(declare-fun d!1922948 () Bool)

(declare-fun lt!2332716 () Regex!16080)

(assert (=> d!1922948 (validRegex!7816 lt!2332716)))

(assert (=> d!1922948 (= lt!2332716 e!3740651)))

(declare-fun c!1103832 () Bool)

(assert (=> d!1922948 (= c!1103832 (or (is-EmptyExpr!16080 r!7292) (is-EmptyLang!16080 r!7292)))))

(assert (=> d!1922948 (validRegex!7816 r!7292)))

(assert (=> d!1922948 (= (derivativeStep!4800 r!7292 (head!12681 s!2326)) lt!2332716)))

(declare-fun bm!509495 () Bool)

(declare-fun c!1103831 () Bool)

(assert (=> bm!509495 (= call!509500 (derivativeStep!4800 (ite c!1103833 (regOne!32673 r!7292) (ite c!1103831 (regTwo!32672 r!7292) (regOne!32672 r!7292))) (head!12681 s!2326)))))

(declare-fun b!6137660 () Bool)

(assert (=> b!6137660 (= e!3740653 (Concat!24925 call!509497 r!7292))))

(declare-fun b!6137661 () Bool)

(assert (=> b!6137661 (= c!1103831 (nullable!6073 (regOne!32672 r!7292)))))

(assert (=> b!6137661 (= e!3740653 e!3740652)))

(declare-fun b!6137662 () Bool)

(assert (=> b!6137662 (= e!3740652 (Union!16080 (Concat!24925 call!509497 (regTwo!32672 r!7292)) call!509498))))

(declare-fun b!6137663 () Bool)

(assert (=> b!6137663 (= e!3740655 (Union!16080 call!509500 call!509499))))

(declare-fun b!6137664 () Bool)

(assert (=> b!6137664 (= c!1103833 (is-Union!16080 r!7292))))

(assert (=> b!6137664 (= e!3740654 e!3740655)))

(assert (= (and d!1922948 c!1103832) b!6137657))

(assert (= (and d!1922948 (not c!1103832)) b!6137659))

(assert (= (and b!6137659 c!1103835) b!6137656))

(assert (= (and b!6137659 (not c!1103835)) b!6137664))

(assert (= (and b!6137664 c!1103833) b!6137663))

(assert (= (and b!6137664 (not c!1103833)) b!6137658))

(assert (= (and b!6137658 c!1103834) b!6137660))

(assert (= (and b!6137658 (not c!1103834)) b!6137661))

(assert (= (and b!6137661 c!1103831) b!6137662))

(assert (= (and b!6137661 (not c!1103831)) b!6137655))

(assert (= (or b!6137662 b!6137655) bm!509494))

(assert (= (or b!6137660 b!6137662) bm!509492))

(assert (= (or b!6137663 bm!509492) bm!509493))

(assert (= (or b!6137663 bm!509494) bm!509495))

(assert (=> bm!509493 m!6979030))

(declare-fun m!6979730 () Bool)

(assert (=> bm!509493 m!6979730))

(declare-fun m!6979732 () Bool)

(assert (=> d!1922948 m!6979732))

(assert (=> d!1922948 m!6978794))

(assert (=> bm!509495 m!6979030))

(declare-fun m!6979734 () Bool)

(assert (=> bm!509495 m!6979734))

(assert (=> b!6137661 m!6979702))

(assert (=> b!6136773 d!1922948))

(assert (=> b!6136773 d!1922778))

(assert (=> b!6136773 d!1922792))

(assert (=> d!1922672 d!1922788))

(declare-fun d!1922950 () Bool)

(declare-fun c!1103836 () Bool)

(assert (=> d!1922950 (= c!1103836 (isEmpty!36366 (tail!11766 (t!378016 s!2326))))))

(declare-fun e!3740656 () Bool)

(assert (=> d!1922950 (= (matchZipper!2092 (derivationStepZipper!2053 lt!2332546 (head!12681 (t!378016 s!2326))) (tail!11766 (t!378016 s!2326))) e!3740656)))

(declare-fun b!6137665 () Bool)

(assert (=> b!6137665 (= e!3740656 (nullableZipper!1861 (derivationStepZipper!2053 lt!2332546 (head!12681 (t!378016 s!2326)))))))

(declare-fun b!6137666 () Bool)

(assert (=> b!6137666 (= e!3740656 (matchZipper!2092 (derivationStepZipper!2053 (derivationStepZipper!2053 lt!2332546 (head!12681 (t!378016 s!2326))) (head!12681 (tail!11766 (t!378016 s!2326)))) (tail!11766 (tail!11766 (t!378016 s!2326)))))))

(assert (= (and d!1922950 c!1103836) b!6137665))

(assert (= (and d!1922950 (not c!1103836)) b!6137666))

(assert (=> d!1922950 m!6978954))

(assert (=> d!1922950 m!6979506))

(assert (=> b!6137665 m!6979108))

(declare-fun m!6979736 () Bool)

(assert (=> b!6137665 m!6979736))

(assert (=> b!6137666 m!6978954))

(assert (=> b!6137666 m!6979510))

(assert (=> b!6137666 m!6979108))

(assert (=> b!6137666 m!6979510))

(declare-fun m!6979738 () Bool)

(assert (=> b!6137666 m!6979738))

(assert (=> b!6137666 m!6978954))

(assert (=> b!6137666 m!6979514))

(assert (=> b!6137666 m!6979738))

(assert (=> b!6137666 m!6979514))

(declare-fun m!6979740 () Bool)

(assert (=> b!6137666 m!6979740))

(assert (=> b!6136852 d!1922950))

(declare-fun bs!1522058 () Bool)

(declare-fun d!1922952 () Bool)

(assert (= bs!1522058 (and d!1922952 d!1922844)))

(declare-fun lambda!334488 () Int)

(assert (=> bs!1522058 (= lambda!334488 lambda!334478)))

(declare-fun bs!1522059 () Bool)

(assert (= bs!1522059 (and d!1922952 d!1922878)))

(assert (=> bs!1522059 (= lambda!334488 lambda!334479)))

(declare-fun bs!1522060 () Bool)

(assert (= bs!1522060 (and d!1922952 b!6136452)))

(assert (=> bs!1522060 (= (= (head!12681 (t!378016 s!2326)) (h!70865 s!2326)) (= lambda!334488 lambda!334390))))

(declare-fun bs!1522061 () Bool)

(assert (= bs!1522061 (and d!1922952 d!1922884)))

(assert (=> bs!1522061 (= lambda!334488 lambda!334480)))

(declare-fun bs!1522062 () Bool)

(assert (= bs!1522062 (and d!1922952 d!1922942)))

(assert (=> bs!1522062 (= lambda!334488 lambda!334487)))

(assert (=> d!1922952 true))

(assert (=> d!1922952 (= (derivationStepZipper!2053 lt!2332546 (head!12681 (t!378016 s!2326))) (flatMap!1585 lt!2332546 lambda!334488))))

(declare-fun bs!1522063 () Bool)

(assert (= bs!1522063 d!1922952))

(declare-fun m!6979742 () Bool)

(assert (=> bs!1522063 m!6979742))

(assert (=> b!6136852 d!1922952))

(assert (=> b!6136852 d!1922846))

(assert (=> b!6136852 d!1922848))

(assert (=> d!1922658 d!1922654))

(declare-fun d!1922954 () Bool)

(assert (=> d!1922954 (= (flatMap!1585 lt!2332545 lambda!334390) (dynLambda!25381 lambda!334390 lt!2332539))))

(assert (=> d!1922954 true))

(declare-fun _$13!3015 () Unit!157475)

(assert (=> d!1922954 (= (choose!45597 lt!2332545 lt!2332539 lambda!334390) _$13!3015)))

(declare-fun b_lambda!233597 () Bool)

(assert (=> (not b_lambda!233597) (not d!1922954)))

(declare-fun bs!1522064 () Bool)

(assert (= bs!1522064 d!1922954))

(assert (=> bs!1522064 m!6978816))

(assert (=> bs!1522064 m!6979054))

(assert (=> d!1922658 d!1922954))

(assert (=> b!6136780 d!1922778))

(declare-fun d!1922956 () Bool)

(assert (=> d!1922956 (= (nullable!6073 (regOne!32672 (regOne!32673 (regOne!32672 r!7292)))) (nullableFct!2037 (regOne!32672 (regOne!32673 (regOne!32672 r!7292)))))))

(declare-fun bs!1522065 () Bool)

(assert (= bs!1522065 d!1922956))

(declare-fun m!6979744 () Bool)

(assert (=> bs!1522065 m!6979744))

(assert (=> b!6136838 d!1922956))

(declare-fun bs!1522066 () Bool)

(declare-fun b!6137677 () Bool)

(assert (= bs!1522066 (and b!6137677 b!6136743)))

(declare-fun lambda!334489 () Int)

(assert (=> bs!1522066 (= (and (= (reg!16409 (regTwo!32673 r!7292)) (reg!16409 r!7292)) (= (regTwo!32673 r!7292) r!7292)) (= lambda!334489 lambda!334420))))

(declare-fun bs!1522067 () Bool)

(assert (= bs!1522067 (and b!6137677 d!1922822)))

(assert (=> bs!1522067 (not (= lambda!334489 lambda!334474))))

(declare-fun bs!1522068 () Bool)

(assert (= bs!1522068 (and b!6137677 b!6136739)))

(assert (=> bs!1522068 (not (= lambda!334489 lambda!334421))))

(declare-fun bs!1522069 () Bool)

(assert (= bs!1522069 (and b!6137677 d!1922644)))

(assert (=> bs!1522069 (not (= lambda!334489 lambda!334415))))

(declare-fun bs!1522070 () Bool)

(assert (= bs!1522070 (and b!6137677 d!1922812)))

(assert (=> bs!1522070 (not (= lambda!334489 lambda!334471))))

(declare-fun bs!1522071 () Bool)

(assert (= bs!1522071 (and b!6137677 b!6136443)))

(assert (=> bs!1522071 (not (= lambda!334489 lambda!334388))))

(declare-fun bs!1522072 () Bool)

(assert (= bs!1522072 (and b!6137677 d!1922638)))

(assert (=> bs!1522072 (not (= lambda!334489 lambda!334412))))

(assert (=> bs!1522071 (not (= lambda!334489 lambda!334389))))

(assert (=> bs!1522070 (not (= lambda!334489 lambda!334470))))

(assert (=> bs!1522072 (not (= lambda!334489 lambda!334411))))

(assert (=> b!6137677 true))

(assert (=> b!6137677 true))

(declare-fun bs!1522073 () Bool)

(declare-fun b!6137673 () Bool)

(assert (= bs!1522073 (and b!6137673 b!6136743)))

(declare-fun lambda!334490 () Int)

(assert (=> bs!1522073 (not (= lambda!334490 lambda!334420))))

(declare-fun bs!1522074 () Bool)

(assert (= bs!1522074 (and b!6137673 d!1922822)))

(assert (=> bs!1522074 (not (= lambda!334490 lambda!334474))))

(declare-fun bs!1522075 () Bool)

(assert (= bs!1522075 (and b!6137673 b!6136739)))

(assert (=> bs!1522075 (= (and (= (regOne!32672 (regTwo!32673 r!7292)) (regOne!32672 r!7292)) (= (regTwo!32672 (regTwo!32673 r!7292)) (regTwo!32672 r!7292))) (= lambda!334490 lambda!334421))))

(declare-fun bs!1522076 () Bool)

(assert (= bs!1522076 (and b!6137673 b!6137677)))

(assert (=> bs!1522076 (not (= lambda!334490 lambda!334489))))

(declare-fun bs!1522077 () Bool)

(assert (= bs!1522077 (and b!6137673 d!1922644)))

(assert (=> bs!1522077 (not (= lambda!334490 lambda!334415))))

(declare-fun bs!1522078 () Bool)

(assert (= bs!1522078 (and b!6137673 d!1922812)))

(assert (=> bs!1522078 (= (and (= (regOne!32672 (regTwo!32673 r!7292)) (regOne!32672 r!7292)) (= (regTwo!32672 (regTwo!32673 r!7292)) (regTwo!32672 r!7292))) (= lambda!334490 lambda!334471))))

(declare-fun bs!1522079 () Bool)

(assert (= bs!1522079 (and b!6137673 b!6136443)))

(assert (=> bs!1522079 (not (= lambda!334490 lambda!334388))))

(declare-fun bs!1522080 () Bool)

(assert (= bs!1522080 (and b!6137673 d!1922638)))

(assert (=> bs!1522080 (= (and (= (regOne!32672 (regTwo!32673 r!7292)) (regOne!32672 r!7292)) (= (regTwo!32672 (regTwo!32673 r!7292)) (regTwo!32672 r!7292))) (= lambda!334490 lambda!334412))))

(assert (=> bs!1522079 (= (and (= (regOne!32672 (regTwo!32673 r!7292)) (regOne!32672 r!7292)) (= (regTwo!32672 (regTwo!32673 r!7292)) (regTwo!32672 r!7292))) (= lambda!334490 lambda!334389))))

(assert (=> bs!1522078 (not (= lambda!334490 lambda!334470))))

(assert (=> bs!1522080 (not (= lambda!334490 lambda!334411))))

(assert (=> b!6137673 true))

(assert (=> b!6137673 true))

(declare-fun b!6137667 () Bool)

(declare-fun e!3740658 () Bool)

(declare-fun e!3740659 () Bool)

(assert (=> b!6137667 (= e!3740658 e!3740659)))

(declare-fun res!2543314 () Bool)

(assert (=> b!6137667 (= res!2543314 (matchRSpec!3181 (regOne!32673 (regTwo!32673 r!7292)) s!2326))))

(assert (=> b!6137667 (=> res!2543314 e!3740659)))

(declare-fun b!6137668 () Bool)

(declare-fun c!1103837 () Bool)

(assert (=> b!6137668 (= c!1103837 (is-ElementMatch!16080 (regTwo!32673 r!7292)))))

(declare-fun e!3740660 () Bool)

(declare-fun e!3740662 () Bool)

(assert (=> b!6137668 (= e!3740660 e!3740662)))

(declare-fun b!6137669 () Bool)

(declare-fun res!2543313 () Bool)

(declare-fun e!3740663 () Bool)

(assert (=> b!6137669 (=> res!2543313 e!3740663)))

(declare-fun call!509502 () Bool)

(assert (=> b!6137669 (= res!2543313 call!509502)))

(declare-fun e!3740657 () Bool)

(assert (=> b!6137669 (= e!3740657 e!3740663)))

(declare-fun b!6137670 () Bool)

(assert (=> b!6137670 (= e!3740662 (= s!2326 (Cons!64417 (c!1103508 (regTwo!32673 r!7292)) Nil!64417)))))

(declare-fun c!1103838 () Bool)

(declare-fun bm!509496 () Bool)

(declare-fun call!509501 () Bool)

(assert (=> bm!509496 (= call!509501 (Exists!3150 (ite c!1103838 lambda!334489 lambda!334490)))))

(declare-fun b!6137672 () Bool)

(declare-fun c!1103840 () Bool)

(assert (=> b!6137672 (= c!1103840 (is-Union!16080 (regTwo!32673 r!7292)))))

(assert (=> b!6137672 (= e!3740662 e!3740658)))

(assert (=> b!6137673 (= e!3740657 call!509501)))

(declare-fun b!6137674 () Bool)

(declare-fun e!3740661 () Bool)

(assert (=> b!6137674 (= e!3740661 e!3740660)))

(declare-fun res!2543315 () Bool)

(assert (=> b!6137674 (= res!2543315 (not (is-EmptyLang!16080 (regTwo!32673 r!7292))))))

(assert (=> b!6137674 (=> (not res!2543315) (not e!3740660))))

(declare-fun b!6137675 () Bool)

(assert (=> b!6137675 (= e!3740658 e!3740657)))

(assert (=> b!6137675 (= c!1103838 (is-Star!16080 (regTwo!32673 r!7292)))))

(declare-fun bm!509497 () Bool)

(assert (=> bm!509497 (= call!509502 (isEmpty!36366 s!2326))))

(declare-fun b!6137676 () Bool)

(assert (=> b!6137676 (= e!3740661 call!509502)))

(assert (=> b!6137677 (= e!3740663 call!509501)))

(declare-fun d!1922958 () Bool)

(declare-fun c!1103839 () Bool)

(assert (=> d!1922958 (= c!1103839 (is-EmptyExpr!16080 (regTwo!32673 r!7292)))))

(assert (=> d!1922958 (= (matchRSpec!3181 (regTwo!32673 r!7292) s!2326) e!3740661)))

(declare-fun b!6137671 () Bool)

(assert (=> b!6137671 (= e!3740659 (matchRSpec!3181 (regTwo!32673 (regTwo!32673 r!7292)) s!2326))))

(assert (= (and d!1922958 c!1103839) b!6137676))

(assert (= (and d!1922958 (not c!1103839)) b!6137674))

(assert (= (and b!6137674 res!2543315) b!6137668))

(assert (= (and b!6137668 c!1103837) b!6137670))

(assert (= (and b!6137668 (not c!1103837)) b!6137672))

(assert (= (and b!6137672 c!1103840) b!6137667))

(assert (= (and b!6137672 (not c!1103840)) b!6137675))

(assert (= (and b!6137667 (not res!2543314)) b!6137671))

(assert (= (and b!6137675 c!1103838) b!6137669))

(assert (= (and b!6137675 (not c!1103838)) b!6137673))

(assert (= (and b!6137669 (not res!2543313)) b!6137677))

(assert (= (or b!6137677 b!6137673) bm!509496))

(assert (= (or b!6137676 b!6137669) bm!509497))

(declare-fun m!6979746 () Bool)

(assert (=> b!6137667 m!6979746))

(declare-fun m!6979748 () Bool)

(assert (=> bm!509496 m!6979748))

(assert (=> bm!509497 m!6979026))

(declare-fun m!6979750 () Bool)

(assert (=> b!6137671 m!6979750))

(assert (=> b!6136737 d!1922958))

(declare-fun d!1922960 () Bool)

(assert (=> d!1922960 (= (head!12682 (unfocusZipperList!1501 zl!343)) (h!70863 (unfocusZipperList!1501 zl!343)))))

(assert (=> b!6136818 d!1922960))

(declare-fun d!1922962 () Bool)

(assert (=> d!1922962 true))

(assert (=> d!1922962 true))

(declare-fun res!2543316 () Bool)

(assert (=> d!1922962 (= (choose!45600 lambda!334388) res!2543316)))

(assert (=> d!1922636 d!1922962))

(declare-fun d!1922964 () Bool)

(assert (=> d!1922964 (= (isEmptyExpr!1497 lt!2332660) (is-EmptyExpr!16080 lt!2332660))))

(assert (=> b!6136881 d!1922964))

(declare-fun d!1922966 () Bool)

(assert (=> d!1922966 (= (isEmpty!36363 (tail!11767 (exprs!5964 (h!70864 zl!343)))) (is-Nil!64415 (tail!11767 (exprs!5964 (h!70864 zl!343)))))))

(assert (=> b!6136885 d!1922966))

(declare-fun d!1922968 () Bool)

(assert (=> d!1922968 (= (tail!11767 (exprs!5964 (h!70864 zl!343))) (t!378014 (exprs!5964 (h!70864 zl!343))))))

(assert (=> b!6136885 d!1922968))

(assert (=> d!1922634 d!1922776))

(declare-fun b!6137678 () Bool)

(declare-fun res!2543321 () Bool)

(declare-fun e!3740666 () Bool)

(assert (=> b!6137678 (=> res!2543321 e!3740666)))

(assert (=> b!6137678 (= res!2543321 (not (is-ElementMatch!16080 (regOne!32672 r!7292))))))

(declare-fun e!3740669 () Bool)

(assert (=> b!6137678 (= e!3740669 e!3740666)))

(declare-fun b!6137679 () Bool)

(declare-fun e!3740670 () Bool)

(assert (=> b!6137679 (= e!3740670 (matchR!8263 (derivativeStep!4800 (regOne!32672 r!7292) (head!12681 Nil!64417)) (tail!11766 Nil!64417)))))

(declare-fun b!6137680 () Bool)

(declare-fun e!3740667 () Bool)

(assert (=> b!6137680 (= e!3740666 e!3740667)))

(declare-fun res!2543318 () Bool)

(assert (=> b!6137680 (=> (not res!2543318) (not e!3740667))))

(declare-fun lt!2332717 () Bool)

(assert (=> b!6137680 (= res!2543318 (not lt!2332717))))

(declare-fun b!6137681 () Bool)

(declare-fun e!3740664 () Bool)

(assert (=> b!6137681 (= e!3740667 e!3740664)))

(declare-fun res!2543322 () Bool)

(assert (=> b!6137681 (=> res!2543322 e!3740664)))

(declare-fun call!509503 () Bool)

(assert (=> b!6137681 (= res!2543322 call!509503)))

(declare-fun b!6137682 () Bool)

(assert (=> b!6137682 (= e!3740669 (not lt!2332717))))

(declare-fun b!6137683 () Bool)

(declare-fun e!3740665 () Bool)

(assert (=> b!6137683 (= e!3740665 (= lt!2332717 call!509503))))

(declare-fun b!6137684 () Bool)

(declare-fun res!2543320 () Bool)

(assert (=> b!6137684 (=> res!2543320 e!3740666)))

(declare-fun e!3740668 () Bool)

(assert (=> b!6137684 (= res!2543320 e!3740668)))

(declare-fun res!2543323 () Bool)

(assert (=> b!6137684 (=> (not res!2543323) (not e!3740668))))

(assert (=> b!6137684 (= res!2543323 lt!2332717)))

(declare-fun b!6137685 () Bool)

(assert (=> b!6137685 (= e!3740664 (not (= (head!12681 Nil!64417) (c!1103508 (regOne!32672 r!7292)))))))

(declare-fun d!1922970 () Bool)

(assert (=> d!1922970 e!3740665))

(declare-fun c!1103843 () Bool)

(assert (=> d!1922970 (= c!1103843 (is-EmptyExpr!16080 (regOne!32672 r!7292)))))

(assert (=> d!1922970 (= lt!2332717 e!3740670)))

(declare-fun c!1103842 () Bool)

(assert (=> d!1922970 (= c!1103842 (isEmpty!36366 Nil!64417))))

(assert (=> d!1922970 (validRegex!7816 (regOne!32672 r!7292))))

(assert (=> d!1922970 (= (matchR!8263 (regOne!32672 r!7292) Nil!64417) lt!2332717)))

(declare-fun b!6137686 () Bool)

(assert (=> b!6137686 (= e!3740668 (= (head!12681 Nil!64417) (c!1103508 (regOne!32672 r!7292))))))

(declare-fun b!6137687 () Bool)

(declare-fun res!2543324 () Bool)

(assert (=> b!6137687 (=> (not res!2543324) (not e!3740668))))

(assert (=> b!6137687 (= res!2543324 (isEmpty!36366 (tail!11766 Nil!64417)))))

(declare-fun b!6137688 () Bool)

(assert (=> b!6137688 (= e!3740670 (nullable!6073 (regOne!32672 r!7292)))))

(declare-fun b!6137689 () Bool)

(declare-fun res!2543319 () Bool)

(assert (=> b!6137689 (=> res!2543319 e!3740664)))

(assert (=> b!6137689 (= res!2543319 (not (isEmpty!36366 (tail!11766 Nil!64417))))))

(declare-fun b!6137690 () Bool)

(declare-fun res!2543317 () Bool)

(assert (=> b!6137690 (=> (not res!2543317) (not e!3740668))))

(assert (=> b!6137690 (= res!2543317 (not call!509503))))

(declare-fun bm!509498 () Bool)

(assert (=> bm!509498 (= call!509503 (isEmpty!36366 Nil!64417))))

(declare-fun b!6137691 () Bool)

(assert (=> b!6137691 (= e!3740665 e!3740669)))

(declare-fun c!1103841 () Bool)

(assert (=> b!6137691 (= c!1103841 (is-EmptyLang!16080 (regOne!32672 r!7292)))))

(assert (= (and d!1922970 c!1103842) b!6137688))

(assert (= (and d!1922970 (not c!1103842)) b!6137679))

(assert (= (and d!1922970 c!1103843) b!6137683))

(assert (= (and d!1922970 (not c!1103843)) b!6137691))

(assert (= (and b!6137691 c!1103841) b!6137682))

(assert (= (and b!6137691 (not c!1103841)) b!6137678))

(assert (= (and b!6137678 (not res!2543321)) b!6137684))

(assert (= (and b!6137684 res!2543323) b!6137690))

(assert (= (and b!6137690 res!2543317) b!6137687))

(assert (= (and b!6137687 res!2543324) b!6137686))

(assert (= (and b!6137684 (not res!2543320)) b!6137680))

(assert (= (and b!6137680 res!2543318) b!6137681))

(assert (= (and b!6137681 (not res!2543322)) b!6137689))

(assert (= (and b!6137689 (not res!2543319)) b!6137685))

(assert (= (or b!6137683 b!6137681 b!6137690) bm!509498))

(declare-fun m!6979752 () Bool)

(assert (=> d!1922970 m!6979752))

(assert (=> d!1922970 m!6979004))

(declare-fun m!6979754 () Bool)

(assert (=> b!6137686 m!6979754))

(assert (=> b!6137679 m!6979754))

(assert (=> b!6137679 m!6979754))

(declare-fun m!6979756 () Bool)

(assert (=> b!6137679 m!6979756))

(declare-fun m!6979758 () Bool)

(assert (=> b!6137679 m!6979758))

(assert (=> b!6137679 m!6979756))

(assert (=> b!6137679 m!6979758))

(declare-fun m!6979760 () Bool)

(assert (=> b!6137679 m!6979760))

(assert (=> b!6137688 m!6979702))

(assert (=> b!6137685 m!6979754))

(assert (=> b!6137687 m!6979758))

(assert (=> b!6137687 m!6979758))

(declare-fun m!6979762 () Bool)

(assert (=> b!6137687 m!6979762))

(assert (=> bm!509498 m!6979752))

(assert (=> b!6137689 m!6979758))

(assert (=> b!6137689 m!6979758))

(assert (=> b!6137689 m!6979762))

(assert (=> d!1922634 d!1922970))

(assert (=> d!1922634 d!1922814))

(declare-fun bm!509499 () Bool)

(declare-fun call!509504 () Bool)

(declare-fun call!509506 () Bool)

(assert (=> bm!509499 (= call!509504 call!509506)))

(declare-fun b!6137692 () Bool)

(declare-fun e!3740676 () Bool)

(declare-fun e!3740671 () Bool)

(assert (=> b!6137692 (= e!3740676 e!3740671)))

(declare-fun c!1103844 () Bool)

(assert (=> b!6137692 (= c!1103844 (is-Union!16080 lt!2332619))))

(declare-fun b!6137693 () Bool)

(declare-fun e!3740674 () Bool)

(assert (=> b!6137693 (= e!3740676 e!3740674)))

(declare-fun res!2543325 () Bool)

(assert (=> b!6137693 (= res!2543325 (not (nullable!6073 (reg!16409 lt!2332619))))))

(assert (=> b!6137693 (=> (not res!2543325) (not e!3740674))))

(declare-fun bm!509500 () Bool)

(declare-fun c!1103845 () Bool)

(assert (=> bm!509500 (= call!509506 (validRegex!7816 (ite c!1103845 (reg!16409 lt!2332619) (ite c!1103844 (regTwo!32673 lt!2332619) (regTwo!32672 lt!2332619)))))))

(declare-fun b!6137694 () Bool)

(declare-fun e!3740673 () Bool)

(assert (=> b!6137694 (= e!3740673 call!509504)))

(declare-fun b!6137695 () Bool)

(declare-fun res!2543326 () Bool)

(declare-fun e!3740675 () Bool)

(assert (=> b!6137695 (=> res!2543326 e!3740675)))

(assert (=> b!6137695 (= res!2543326 (not (is-Concat!24925 lt!2332619)))))

(assert (=> b!6137695 (= e!3740671 e!3740675)))

(declare-fun b!6137696 () Bool)

(assert (=> b!6137696 (= e!3740674 call!509506)))

(declare-fun b!6137697 () Bool)

(declare-fun e!3740672 () Bool)

(assert (=> b!6137697 (= e!3740672 call!509504)))

(declare-fun bm!509501 () Bool)

(declare-fun call!509505 () Bool)

(assert (=> bm!509501 (= call!509505 (validRegex!7816 (ite c!1103844 (regOne!32673 lt!2332619) (regOne!32672 lt!2332619))))))

(declare-fun b!6137699 () Bool)

(declare-fun e!3740677 () Bool)

(assert (=> b!6137699 (= e!3740677 e!3740676)))

(assert (=> b!6137699 (= c!1103845 (is-Star!16080 lt!2332619))))

(declare-fun b!6137700 () Bool)

(declare-fun res!2543329 () Bool)

(assert (=> b!6137700 (=> (not res!2543329) (not e!3740673))))

(assert (=> b!6137700 (= res!2543329 call!509505)))

(assert (=> b!6137700 (= e!3740671 e!3740673)))

(declare-fun d!1922972 () Bool)

(declare-fun res!2543327 () Bool)

(assert (=> d!1922972 (=> res!2543327 e!3740677)))

(assert (=> d!1922972 (= res!2543327 (is-ElementMatch!16080 lt!2332619))))

(assert (=> d!1922972 (= (validRegex!7816 lt!2332619) e!3740677)))

(declare-fun b!6137698 () Bool)

(assert (=> b!6137698 (= e!3740675 e!3740672)))

(declare-fun res!2543328 () Bool)

(assert (=> b!6137698 (=> (not res!2543328) (not e!3740672))))

(assert (=> b!6137698 (= res!2543328 call!509505)))

(assert (= (and d!1922972 (not res!2543327)) b!6137699))

(assert (= (and b!6137699 c!1103845) b!6137693))

(assert (= (and b!6137699 (not c!1103845)) b!6137692))

(assert (= (and b!6137693 res!2543325) b!6137696))

(assert (= (and b!6137692 c!1103844) b!6137700))

(assert (= (and b!6137692 (not c!1103844)) b!6137695))

(assert (= (and b!6137700 res!2543329) b!6137694))

(assert (= (and b!6137695 (not res!2543326)) b!6137698))

(assert (= (and b!6137698 res!2543328) b!6137697))

(assert (= (or b!6137694 b!6137697) bm!509499))

(assert (= (or b!6137700 b!6137698) bm!509501))

(assert (= (or b!6137696 bm!509499) bm!509500))

(declare-fun m!6979764 () Bool)

(assert (=> b!6137693 m!6979764))

(declare-fun m!6979766 () Bool)

(assert (=> bm!509500 m!6979766))

(declare-fun m!6979768 () Bool)

(assert (=> bm!509501 m!6979768))

(assert (=> d!1922604 d!1922972))

(assert (=> d!1922604 d!1922660))

(assert (=> d!1922604 d!1922662))

(declare-fun bm!509502 () Bool)

(declare-fun call!509507 () Bool)

(declare-fun call!509509 () Bool)

(assert (=> bm!509502 (= call!509507 call!509509)))

(declare-fun b!6137701 () Bool)

(declare-fun e!3740683 () Bool)

(declare-fun e!3740678 () Bool)

(assert (=> b!6137701 (= e!3740683 e!3740678)))

(declare-fun c!1103846 () Bool)

(assert (=> b!6137701 (= c!1103846 (is-Union!16080 lt!2332660))))

(declare-fun b!6137702 () Bool)

(declare-fun e!3740681 () Bool)

(assert (=> b!6137702 (= e!3740683 e!3740681)))

(declare-fun res!2543330 () Bool)

(assert (=> b!6137702 (= res!2543330 (not (nullable!6073 (reg!16409 lt!2332660))))))

(assert (=> b!6137702 (=> (not res!2543330) (not e!3740681))))

(declare-fun bm!509503 () Bool)

(declare-fun c!1103847 () Bool)

(assert (=> bm!509503 (= call!509509 (validRegex!7816 (ite c!1103847 (reg!16409 lt!2332660) (ite c!1103846 (regTwo!32673 lt!2332660) (regTwo!32672 lt!2332660)))))))

(declare-fun b!6137703 () Bool)

(declare-fun e!3740680 () Bool)

(assert (=> b!6137703 (= e!3740680 call!509507)))

(declare-fun b!6137704 () Bool)

(declare-fun res!2543331 () Bool)

(declare-fun e!3740682 () Bool)

(assert (=> b!6137704 (=> res!2543331 e!3740682)))

(assert (=> b!6137704 (= res!2543331 (not (is-Concat!24925 lt!2332660)))))

(assert (=> b!6137704 (= e!3740678 e!3740682)))

(declare-fun b!6137705 () Bool)

(assert (=> b!6137705 (= e!3740681 call!509509)))

(declare-fun b!6137706 () Bool)

(declare-fun e!3740679 () Bool)

(assert (=> b!6137706 (= e!3740679 call!509507)))

(declare-fun bm!509504 () Bool)

(declare-fun call!509508 () Bool)

(assert (=> bm!509504 (= call!509508 (validRegex!7816 (ite c!1103846 (regOne!32673 lt!2332660) (regOne!32672 lt!2332660))))))

(declare-fun b!6137708 () Bool)

(declare-fun e!3740684 () Bool)

(assert (=> b!6137708 (= e!3740684 e!3740683)))

(assert (=> b!6137708 (= c!1103847 (is-Star!16080 lt!2332660))))

(declare-fun b!6137709 () Bool)

(declare-fun res!2543334 () Bool)

(assert (=> b!6137709 (=> (not res!2543334) (not e!3740680))))

(assert (=> b!6137709 (= res!2543334 call!509508)))

(assert (=> b!6137709 (= e!3740678 e!3740680)))

(declare-fun d!1922974 () Bool)

(declare-fun res!2543332 () Bool)

(assert (=> d!1922974 (=> res!2543332 e!3740684)))

(assert (=> d!1922974 (= res!2543332 (is-ElementMatch!16080 lt!2332660))))

(assert (=> d!1922974 (= (validRegex!7816 lt!2332660) e!3740684)))

(declare-fun b!6137707 () Bool)

(assert (=> b!6137707 (= e!3740682 e!3740679)))

(declare-fun res!2543333 () Bool)

(assert (=> b!6137707 (=> (not res!2543333) (not e!3740679))))

(assert (=> b!6137707 (= res!2543333 call!509508)))

(assert (= (and d!1922974 (not res!2543332)) b!6137708))

(assert (= (and b!6137708 c!1103847) b!6137702))

(assert (= (and b!6137708 (not c!1103847)) b!6137701))

(assert (= (and b!6137702 res!2543330) b!6137705))

(assert (= (and b!6137701 c!1103846) b!6137709))

(assert (= (and b!6137701 (not c!1103846)) b!6137704))

(assert (= (and b!6137709 res!2543334) b!6137703))

(assert (= (and b!6137704 (not res!2543331)) b!6137707))

(assert (= (and b!6137707 res!2543333) b!6137706))

(assert (= (or b!6137703 b!6137706) bm!509502))

(assert (= (or b!6137709 b!6137707) bm!509504))

(assert (= (or b!6137705 bm!509502) bm!509503))

(declare-fun m!6979770 () Bool)

(assert (=> b!6137702 m!6979770))

(declare-fun m!6979772 () Bool)

(assert (=> bm!509503 m!6979772))

(declare-fun m!6979774 () Bool)

(assert (=> bm!509504 m!6979774))

(assert (=> d!1922680 d!1922974))

(declare-fun d!1922976 () Bool)

(declare-fun res!2543335 () Bool)

(declare-fun e!3740685 () Bool)

(assert (=> d!1922976 (=> res!2543335 e!3740685)))

(assert (=> d!1922976 (= res!2543335 (is-Nil!64415 (exprs!5964 (h!70864 zl!343))))))

(assert (=> d!1922976 (= (forall!15201 (exprs!5964 (h!70864 zl!343)) lambda!334432) e!3740685)))

(declare-fun b!6137710 () Bool)

(declare-fun e!3740686 () Bool)

(assert (=> b!6137710 (= e!3740685 e!3740686)))

(declare-fun res!2543336 () Bool)

(assert (=> b!6137710 (=> (not res!2543336) (not e!3740686))))

(assert (=> b!6137710 (= res!2543336 (dynLambda!25383 lambda!334432 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun b!6137711 () Bool)

(assert (=> b!6137711 (= e!3740686 (forall!15201 (t!378014 (exprs!5964 (h!70864 zl!343))) lambda!334432))))

(assert (= (and d!1922976 (not res!2543335)) b!6137710))

(assert (= (and b!6137710 res!2543336) b!6137711))

(declare-fun b_lambda!233599 () Bool)

(assert (=> (not b_lambda!233599) (not b!6137710)))

(declare-fun m!6979776 () Bool)

(assert (=> b!6137710 m!6979776))

(declare-fun m!6979778 () Bool)

(assert (=> b!6137711 m!6979778))

(assert (=> d!1922680 d!1922976))

(declare-fun bs!1522081 () Bool)

(declare-fun d!1922978 () Bool)

(assert (= bs!1522081 (and d!1922978 d!1922678)))

(declare-fun lambda!334491 () Int)

(assert (=> bs!1522081 (= lambda!334491 lambda!334429)))

(declare-fun bs!1522082 () Bool)

(assert (= bs!1522082 (and d!1922978 d!1922664)))

(assert (=> bs!1522082 (= lambda!334491 lambda!334428)))

(declare-fun bs!1522083 () Bool)

(assert (= bs!1522083 (and d!1922978 d!1922660)))

(assert (=> bs!1522083 (= lambda!334491 lambda!334424)))

(declare-fun bs!1522084 () Bool)

(assert (= bs!1522084 (and d!1922978 d!1922600)))

(assert (=> bs!1522084 (= lambda!334491 lambda!334406)))

(declare-fun bs!1522085 () Bool)

(assert (= bs!1522085 (and d!1922978 d!1922912)))

(assert (=> bs!1522085 (= lambda!334491 lambda!334483)))

(declare-fun bs!1522086 () Bool)

(assert (= bs!1522086 (and d!1922978 d!1922890)))

(assert (=> bs!1522086 (= lambda!334491 lambda!334481)))

(declare-fun bs!1522087 () Bool)

(assert (= bs!1522087 (and d!1922978 d!1922926)))

(assert (=> bs!1522087 (= lambda!334491 lambda!334485)))

(declare-fun bs!1522088 () Bool)

(assert (= bs!1522088 (and d!1922978 d!1922830)))

(assert (=> bs!1522088 (= lambda!334491 lambda!334475)))

(declare-fun bs!1522089 () Bool)

(assert (= bs!1522089 (and d!1922978 d!1922662)))

(assert (=> bs!1522089 (= lambda!334491 lambda!334427)))

(declare-fun bs!1522090 () Bool)

(assert (= bs!1522090 (and d!1922978 d!1922680)))

(assert (=> bs!1522090 (= lambda!334491 lambda!334432)))

(declare-fun b!6137712 () Bool)

(declare-fun e!3740691 () Regex!16080)

(assert (=> b!6137712 (= e!3740691 EmptyExpr!16080)))

(declare-fun b!6137713 () Bool)

(declare-fun e!3740692 () Regex!16080)

(assert (=> b!6137713 (= e!3740692 e!3740691)))

(declare-fun c!1103849 () Bool)

(assert (=> b!6137713 (= c!1103849 (is-Cons!64415 (t!378014 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun b!6137714 () Bool)

(assert (=> b!6137714 (= e!3740692 (h!70863 (t!378014 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun b!6137715 () Bool)

(declare-fun e!3740687 () Bool)

(declare-fun lt!2332718 () Regex!16080)

(assert (=> b!6137715 (= e!3740687 (= lt!2332718 (head!12682 (t!378014 (exprs!5964 (h!70864 zl!343))))))))

(declare-fun b!6137716 () Bool)

(declare-fun e!3740688 () Bool)

(assert (=> b!6137716 (= e!3740688 (isEmptyExpr!1497 lt!2332718))))

(declare-fun b!6137717 () Bool)

(declare-fun e!3740690 () Bool)

(assert (=> b!6137717 (= e!3740690 (isEmpty!36363 (t!378014 (t!378014 (exprs!5964 (h!70864 zl!343))))))))

(declare-fun e!3740689 () Bool)

(assert (=> d!1922978 e!3740689))

(declare-fun res!2543338 () Bool)

(assert (=> d!1922978 (=> (not res!2543338) (not e!3740689))))

(assert (=> d!1922978 (= res!2543338 (validRegex!7816 lt!2332718))))

(assert (=> d!1922978 (= lt!2332718 e!3740692)))

(declare-fun c!1103850 () Bool)

(assert (=> d!1922978 (= c!1103850 e!3740690)))

(declare-fun res!2543337 () Bool)

(assert (=> d!1922978 (=> (not res!2543337) (not e!3740690))))

(assert (=> d!1922978 (= res!2543337 (is-Cons!64415 (t!378014 (exprs!5964 (h!70864 zl!343)))))))

(assert (=> d!1922978 (forall!15201 (t!378014 (exprs!5964 (h!70864 zl!343))) lambda!334491)))

(assert (=> d!1922978 (= (generalisedConcat!1677 (t!378014 (exprs!5964 (h!70864 zl!343)))) lt!2332718)))

(declare-fun b!6137718 () Bool)

(assert (=> b!6137718 (= e!3740687 (isConcat!1020 lt!2332718))))

(declare-fun b!6137719 () Bool)

(assert (=> b!6137719 (= e!3740689 e!3740688)))

(declare-fun c!1103848 () Bool)

(assert (=> b!6137719 (= c!1103848 (isEmpty!36363 (t!378014 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun b!6137720 () Bool)

(assert (=> b!6137720 (= e!3740688 e!3740687)))

(declare-fun c!1103851 () Bool)

(assert (=> b!6137720 (= c!1103851 (isEmpty!36363 (tail!11767 (t!378014 (exprs!5964 (h!70864 zl!343))))))))

(declare-fun b!6137721 () Bool)

(assert (=> b!6137721 (= e!3740691 (Concat!24925 (h!70863 (t!378014 (exprs!5964 (h!70864 zl!343)))) (generalisedConcat!1677 (t!378014 (t!378014 (exprs!5964 (h!70864 zl!343)))))))))

(assert (= (and d!1922978 res!2543337) b!6137717))

(assert (= (and d!1922978 c!1103850) b!6137714))

(assert (= (and d!1922978 (not c!1103850)) b!6137713))

(assert (= (and b!6137713 c!1103849) b!6137721))

(assert (= (and b!6137713 (not c!1103849)) b!6137712))

(assert (= (and d!1922978 res!2543338) b!6137719))

(assert (= (and b!6137719 c!1103848) b!6137716))

(assert (= (and b!6137719 (not c!1103848)) b!6137720))

(assert (= (and b!6137720 c!1103851) b!6137715))

(assert (= (and b!6137720 (not c!1103851)) b!6137718))

(declare-fun m!6979780 () Bool)

(assert (=> b!6137721 m!6979780))

(declare-fun m!6979782 () Bool)

(assert (=> b!6137718 m!6979782))

(declare-fun m!6979784 () Bool)

(assert (=> b!6137717 m!6979784))

(assert (=> b!6137719 m!6978762))

(declare-fun m!6979786 () Bool)

(assert (=> b!6137716 m!6979786))

(declare-fun m!6979788 () Bool)

(assert (=> b!6137715 m!6979788))

(declare-fun m!6979790 () Bool)

(assert (=> b!6137720 m!6979790))

(assert (=> b!6137720 m!6979790))

(declare-fun m!6979792 () Bool)

(assert (=> b!6137720 m!6979792))

(declare-fun m!6979794 () Bool)

(assert (=> d!1922978 m!6979794))

(declare-fun m!6979796 () Bool)

(assert (=> d!1922978 m!6979796))

(assert (=> b!6136886 d!1922978))

(declare-fun bm!509505 () Bool)

(declare-fun call!509510 () Bool)

(declare-fun call!509512 () Bool)

(assert (=> bm!509505 (= call!509510 call!509512)))

(declare-fun b!6137722 () Bool)

(declare-fun e!3740698 () Bool)

(declare-fun e!3740693 () Bool)

(assert (=> b!6137722 (= e!3740698 e!3740693)))

(declare-fun c!1103852 () Bool)

(assert (=> b!6137722 (= c!1103852 (is-Union!16080 (ite c!1103554 (reg!16409 r!7292) (ite c!1103553 (regTwo!32673 r!7292) (regTwo!32672 r!7292)))))))

(declare-fun b!6137723 () Bool)

(declare-fun e!3740696 () Bool)

(assert (=> b!6137723 (= e!3740698 e!3740696)))

(declare-fun res!2543339 () Bool)

(assert (=> b!6137723 (= res!2543339 (not (nullable!6073 (reg!16409 (ite c!1103554 (reg!16409 r!7292) (ite c!1103553 (regTwo!32673 r!7292) (regTwo!32672 r!7292)))))))))

(assert (=> b!6137723 (=> (not res!2543339) (not e!3740696))))

(declare-fun bm!509506 () Bool)

(declare-fun c!1103853 () Bool)

(assert (=> bm!509506 (= call!509512 (validRegex!7816 (ite c!1103853 (reg!16409 (ite c!1103554 (reg!16409 r!7292) (ite c!1103553 (regTwo!32673 r!7292) (regTwo!32672 r!7292)))) (ite c!1103852 (regTwo!32673 (ite c!1103554 (reg!16409 r!7292) (ite c!1103553 (regTwo!32673 r!7292) (regTwo!32672 r!7292)))) (regTwo!32672 (ite c!1103554 (reg!16409 r!7292) (ite c!1103553 (regTwo!32673 r!7292) (regTwo!32672 r!7292))))))))))

(declare-fun b!6137724 () Bool)

(declare-fun e!3740695 () Bool)

(assert (=> b!6137724 (= e!3740695 call!509510)))

(declare-fun b!6137725 () Bool)

(declare-fun res!2543340 () Bool)

(declare-fun e!3740697 () Bool)

(assert (=> b!6137725 (=> res!2543340 e!3740697)))

(assert (=> b!6137725 (= res!2543340 (not (is-Concat!24925 (ite c!1103554 (reg!16409 r!7292) (ite c!1103553 (regTwo!32673 r!7292) (regTwo!32672 r!7292))))))))

(assert (=> b!6137725 (= e!3740693 e!3740697)))

(declare-fun b!6137726 () Bool)

(assert (=> b!6137726 (= e!3740696 call!509512)))

(declare-fun b!6137727 () Bool)

(declare-fun e!3740694 () Bool)

(assert (=> b!6137727 (= e!3740694 call!509510)))

(declare-fun call!509511 () Bool)

(declare-fun bm!509507 () Bool)

(assert (=> bm!509507 (= call!509511 (validRegex!7816 (ite c!1103852 (regOne!32673 (ite c!1103554 (reg!16409 r!7292) (ite c!1103553 (regTwo!32673 r!7292) (regTwo!32672 r!7292)))) (regOne!32672 (ite c!1103554 (reg!16409 r!7292) (ite c!1103553 (regTwo!32673 r!7292) (regTwo!32672 r!7292)))))))))

(declare-fun b!6137729 () Bool)

(declare-fun e!3740699 () Bool)

(assert (=> b!6137729 (= e!3740699 e!3740698)))

(assert (=> b!6137729 (= c!1103853 (is-Star!16080 (ite c!1103554 (reg!16409 r!7292) (ite c!1103553 (regTwo!32673 r!7292) (regTwo!32672 r!7292)))))))

(declare-fun b!6137730 () Bool)

(declare-fun res!2543343 () Bool)

(assert (=> b!6137730 (=> (not res!2543343) (not e!3740695))))

(assert (=> b!6137730 (= res!2543343 call!509511)))

(assert (=> b!6137730 (= e!3740693 e!3740695)))

(declare-fun d!1922980 () Bool)

(declare-fun res!2543341 () Bool)

(assert (=> d!1922980 (=> res!2543341 e!3740699)))

(assert (=> d!1922980 (= res!2543341 (is-ElementMatch!16080 (ite c!1103554 (reg!16409 r!7292) (ite c!1103553 (regTwo!32673 r!7292) (regTwo!32672 r!7292)))))))

(assert (=> d!1922980 (= (validRegex!7816 (ite c!1103554 (reg!16409 r!7292) (ite c!1103553 (regTwo!32673 r!7292) (regTwo!32672 r!7292)))) e!3740699)))

(declare-fun b!6137728 () Bool)

(assert (=> b!6137728 (= e!3740697 e!3740694)))

(declare-fun res!2543342 () Bool)

(assert (=> b!6137728 (=> (not res!2543342) (not e!3740694))))

(assert (=> b!6137728 (= res!2543342 call!509511)))

(assert (= (and d!1922980 (not res!2543341)) b!6137729))

(assert (= (and b!6137729 c!1103853) b!6137723))

(assert (= (and b!6137729 (not c!1103853)) b!6137722))

(assert (= (and b!6137723 res!2543339) b!6137726))

(assert (= (and b!6137722 c!1103852) b!6137730))

(assert (= (and b!6137722 (not c!1103852)) b!6137725))

(assert (= (and b!6137730 res!2543343) b!6137724))

(assert (= (and b!6137725 (not res!2543340)) b!6137728))

(assert (= (and b!6137728 res!2543342) b!6137727))

(assert (= (or b!6137724 b!6137727) bm!509505))

(assert (= (or b!6137730 b!6137728) bm!509507))

(assert (= (or b!6137726 bm!509505) bm!509506))

(declare-fun m!6979798 () Bool)

(assert (=> b!6137723 m!6979798))

(declare-fun m!6979800 () Bool)

(assert (=> bm!509506 m!6979800))

(declare-fun m!6979802 () Bool)

(assert (=> bm!509507 m!6979802))

(assert (=> bm!509328 d!1922980))

(declare-fun d!1922982 () Bool)

(declare-fun c!1103854 () Bool)

(assert (=> d!1922982 (= c!1103854 (isEmpty!36366 (tail!11766 (t!378016 s!2326))))))

(declare-fun e!3740700 () Bool)

(assert (=> d!1922982 (= (matchZipper!2092 (derivationStepZipper!2053 lt!2332549 (head!12681 (t!378016 s!2326))) (tail!11766 (t!378016 s!2326))) e!3740700)))

(declare-fun b!6137731 () Bool)

(assert (=> b!6137731 (= e!3740700 (nullableZipper!1861 (derivationStepZipper!2053 lt!2332549 (head!12681 (t!378016 s!2326)))))))

(declare-fun b!6137732 () Bool)

(assert (=> b!6137732 (= e!3740700 (matchZipper!2092 (derivationStepZipper!2053 (derivationStepZipper!2053 lt!2332549 (head!12681 (t!378016 s!2326))) (head!12681 (tail!11766 (t!378016 s!2326)))) (tail!11766 (tail!11766 (t!378016 s!2326)))))))

(assert (= (and d!1922982 c!1103854) b!6137731))

(assert (= (and d!1922982 (not c!1103854)) b!6137732))

(assert (=> d!1922982 m!6978954))

(assert (=> d!1922982 m!6979506))

(assert (=> b!6137731 m!6979102))

(declare-fun m!6979804 () Bool)

(assert (=> b!6137731 m!6979804))

(assert (=> b!6137732 m!6978954))

(assert (=> b!6137732 m!6979510))

(assert (=> b!6137732 m!6979102))

(assert (=> b!6137732 m!6979510))

(declare-fun m!6979806 () Bool)

(assert (=> b!6137732 m!6979806))

(assert (=> b!6137732 m!6978954))

(assert (=> b!6137732 m!6979514))

(assert (=> b!6137732 m!6979806))

(assert (=> b!6137732 m!6979514))

(declare-fun m!6979808 () Bool)

(assert (=> b!6137732 m!6979808))

(assert (=> b!6136850 d!1922982))

(declare-fun bs!1522091 () Bool)

(declare-fun d!1922984 () Bool)

(assert (= bs!1522091 (and d!1922984 d!1922844)))

(declare-fun lambda!334492 () Int)

(assert (=> bs!1522091 (= lambda!334492 lambda!334478)))

(declare-fun bs!1522092 () Bool)

(assert (= bs!1522092 (and d!1922984 d!1922952)))

(assert (=> bs!1522092 (= lambda!334492 lambda!334488)))

(declare-fun bs!1522093 () Bool)

(assert (= bs!1522093 (and d!1922984 d!1922878)))

(assert (=> bs!1522093 (= lambda!334492 lambda!334479)))

(declare-fun bs!1522094 () Bool)

(assert (= bs!1522094 (and d!1922984 b!6136452)))

(assert (=> bs!1522094 (= (= (head!12681 (t!378016 s!2326)) (h!70865 s!2326)) (= lambda!334492 lambda!334390))))

(declare-fun bs!1522095 () Bool)

(assert (= bs!1522095 (and d!1922984 d!1922884)))

(assert (=> bs!1522095 (= lambda!334492 lambda!334480)))

(declare-fun bs!1522096 () Bool)

(assert (= bs!1522096 (and d!1922984 d!1922942)))

(assert (=> bs!1522096 (= lambda!334492 lambda!334487)))

(assert (=> d!1922984 true))

(assert (=> d!1922984 (= (derivationStepZipper!2053 lt!2332549 (head!12681 (t!378016 s!2326))) (flatMap!1585 lt!2332549 lambda!334492))))

(declare-fun bs!1522097 () Bool)

(assert (= bs!1522097 d!1922984))

(declare-fun m!6979810 () Bool)

(assert (=> bs!1522097 m!6979810))

(assert (=> b!6136850 d!1922984))

(assert (=> b!6136850 d!1922846))

(assert (=> b!6136850 d!1922848))

(declare-fun e!3740703 () (Set Context!10928))

(declare-fun b!6137734 () Bool)

(declare-fun call!509513 () (Set Context!10928))

(assert (=> b!6137734 (= e!3740703 (set.union call!509513 (derivationStepZipperUp!1254 (Context!10929 (t!378014 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332539)))))) (h!70865 s!2326))))))

(declare-fun b!6137735 () Bool)

(declare-fun e!3740701 () (Set Context!10928))

(assert (=> b!6137735 (= e!3740701 (as set.empty (Set Context!10928)))))

(declare-fun b!6137736 () Bool)

(assert (=> b!6137736 (= e!3740701 call!509513)))

(declare-fun bm!509508 () Bool)

(assert (=> bm!509508 (= call!509513 (derivationStepZipperDown!1328 (h!70863 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332539))))) (Context!10929 (t!378014 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332539)))))) (h!70865 s!2326)))))

(declare-fun b!6137737 () Bool)

(declare-fun e!3740702 () Bool)

(assert (=> b!6137737 (= e!3740702 (nullable!6073 (h!70863 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332539)))))))))

(declare-fun b!6137733 () Bool)

(assert (=> b!6137733 (= e!3740703 e!3740701)))

(declare-fun c!1103855 () Bool)

(assert (=> b!6137733 (= c!1103855 (is-Cons!64415 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332539))))))))

(declare-fun d!1922986 () Bool)

(declare-fun c!1103856 () Bool)

(assert (=> d!1922986 (= c!1103856 e!3740702)))

(declare-fun res!2543344 () Bool)

(assert (=> d!1922986 (=> (not res!2543344) (not e!3740702))))

(assert (=> d!1922986 (= res!2543344 (is-Cons!64415 (exprs!5964 (Context!10929 (t!378014 (exprs!5964 lt!2332539))))))))

(assert (=> d!1922986 (= (derivationStepZipperUp!1254 (Context!10929 (t!378014 (exprs!5964 lt!2332539))) (h!70865 s!2326)) e!3740703)))

(assert (= (and d!1922986 res!2543344) b!6137737))

(assert (= (and d!1922986 c!1103856) b!6137734))

(assert (= (and d!1922986 (not c!1103856)) b!6137733))

(assert (= (and b!6137733 c!1103855) b!6137736))

(assert (= (and b!6137733 (not c!1103855)) b!6137735))

(assert (= (or b!6137734 b!6137736) bm!509508))

(declare-fun m!6979812 () Bool)

(assert (=> b!6137734 m!6979812))

(declare-fun m!6979814 () Bool)

(assert (=> bm!509508 m!6979814))

(declare-fun m!6979816 () Bool)

(assert (=> b!6137737 m!6979816))

(assert (=> b!6136787 d!1922986))

(declare-fun d!1922988 () Bool)

(assert (=> d!1922988 (= (nullable!6073 (h!70863 (exprs!5964 lt!2332539))) (nullableFct!2037 (h!70863 (exprs!5964 lt!2332539))))))

(declare-fun bs!1522098 () Bool)

(assert (= bs!1522098 d!1922988))

(declare-fun m!6979818 () Bool)

(assert (=> bs!1522098 m!6979818))

(assert (=> b!6136790 d!1922988))

(declare-fun b!6137738 () Bool)

(declare-fun e!3740705 () Bool)

(assert (=> b!6137738 (= e!3740705 (nullable!6073 (regOne!32672 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292)))))))))

(declare-fun bm!509509 () Bool)

(declare-fun call!509518 () (Set Context!10928))

(declare-fun call!509516 () (Set Context!10928))

(assert (=> bm!509509 (= call!509518 call!509516)))

(declare-fun b!6137740 () Bool)

(declare-fun e!3740706 () (Set Context!10928))

(declare-fun call!509517 () (Set Context!10928))

(assert (=> b!6137740 (= e!3740706 (set.union call!509517 call!509516))))

(declare-fun bm!509510 () Bool)

(declare-fun call!509519 () (Set Context!10928))

(assert (=> bm!509510 (= call!509516 call!509519)))

(declare-fun call!509514 () List!64539)

(declare-fun c!1103857 () Bool)

(declare-fun bm!509511 () Bool)

(declare-fun c!1103858 () Bool)

(assert (=> bm!509511 (= call!509514 ($colon$colon!1957 (exprs!5964 (ite c!1103602 lt!2332553 (Context!10929 call!509345))) (ite (or c!1103858 c!1103857) (regTwo!32672 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))))) (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292)))))))))

(declare-fun bm!509512 () Bool)

(declare-fun call!509515 () List!64539)

(assert (=> bm!509512 (= call!509515 call!509514)))

(declare-fun b!6137741 () Bool)

(declare-fun e!3740708 () (Set Context!10928))

(declare-fun e!3740704 () (Set Context!10928))

(assert (=> b!6137741 (= e!3740708 e!3740704)))

(declare-fun c!1103860 () Bool)

(assert (=> b!6137741 (= c!1103860 (is-Union!16080 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))))))))

(declare-fun bm!509513 () Bool)

(assert (=> bm!509513 (= call!509519 (derivationStepZipperDown!1328 (ite c!1103860 (regOne!32673 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))))) (ite c!1103858 (regTwo!32672 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))))) (ite c!1103857 (regOne!32672 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))))) (reg!16409 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292)))))))) (ite (or c!1103860 c!1103858) (ite c!1103602 lt!2332553 (Context!10929 call!509345)) (Context!10929 call!509515)) (h!70865 s!2326)))))

(declare-fun b!6137742 () Bool)

(declare-fun e!3740709 () (Set Context!10928))

(assert (=> b!6137742 (= e!3740709 (as set.empty (Set Context!10928)))))

(declare-fun b!6137743 () Bool)

(assert (=> b!6137743 (= e!3740708 (set.insert (ite c!1103602 lt!2332553 (Context!10929 call!509345)) (as set.empty (Set Context!10928))))))

(declare-fun b!6137744 () Bool)

(assert (=> b!6137744 (= e!3740709 call!509518)))

(declare-fun b!6137745 () Bool)

(assert (=> b!6137745 (= e!3740704 (set.union call!509519 call!509517))))

(declare-fun b!6137746 () Bool)

(declare-fun e!3740707 () (Set Context!10928))

(assert (=> b!6137746 (= e!3740707 call!509518)))

(declare-fun b!6137747 () Bool)

(assert (=> b!6137747 (= e!3740706 e!3740707)))

(assert (=> b!6137747 (= c!1103857 (is-Concat!24925 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))))))))

(declare-fun b!6137739 () Bool)

(declare-fun c!1103861 () Bool)

(assert (=> b!6137739 (= c!1103861 (is-Star!16080 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))))))))

(assert (=> b!6137739 (= e!3740707 e!3740709)))

(declare-fun d!1922990 () Bool)

(declare-fun c!1103859 () Bool)

(assert (=> d!1922990 (= c!1103859 (and (is-ElementMatch!16080 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))))) (= (c!1103508 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))))) (h!70865 s!2326))))))

(assert (=> d!1922990 (= (derivationStepZipperDown!1328 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292)))) (ite c!1103602 lt!2332553 (Context!10929 call!509345)) (h!70865 s!2326)) e!3740708)))

(declare-fun b!6137748 () Bool)

(assert (=> b!6137748 (= c!1103858 e!3740705)))

(declare-fun res!2543345 () Bool)

(assert (=> b!6137748 (=> (not res!2543345) (not e!3740705))))

(assert (=> b!6137748 (= res!2543345 (is-Concat!24925 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))))))))

(assert (=> b!6137748 (= e!3740704 e!3740706)))

(declare-fun bm!509514 () Bool)

(assert (=> bm!509514 (= call!509517 (derivationStepZipperDown!1328 (ite c!1103860 (regTwo!32673 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292))))) (regOne!32672 (ite c!1103602 (regTwo!32673 (regTwo!32673 (regOne!32672 r!7292))) (regOne!32672 (regTwo!32673 (regOne!32672 r!7292)))))) (ite c!1103860 (ite c!1103602 lt!2332553 (Context!10929 call!509345)) (Context!10929 call!509514)) (h!70865 s!2326)))))

(assert (= (and d!1922990 c!1103859) b!6137743))

(assert (= (and d!1922990 (not c!1103859)) b!6137741))

(assert (= (and b!6137741 c!1103860) b!6137745))

(assert (= (and b!6137741 (not c!1103860)) b!6137748))

(assert (= (and b!6137748 res!2543345) b!6137738))

(assert (= (and b!6137748 c!1103858) b!6137740))

(assert (= (and b!6137748 (not c!1103858)) b!6137747))

(assert (= (and b!6137747 c!1103857) b!6137746))

(assert (= (and b!6137747 (not c!1103857)) b!6137739))

(assert (= (and b!6137739 c!1103861) b!6137744))

(assert (= (and b!6137739 (not c!1103861)) b!6137742))

(assert (= (or b!6137746 b!6137744) bm!509512))

(assert (= (or b!6137746 b!6137744) bm!509509))

(assert (= (or b!6137740 bm!509512) bm!509511))

(assert (= (or b!6137740 bm!509509) bm!509510))

(assert (= (or b!6137745 b!6137740) bm!509514))

(assert (= (or b!6137745 bm!509510) bm!509513))

(declare-fun m!6979820 () Bool)

(assert (=> bm!509514 m!6979820))

(declare-fun m!6979822 () Bool)

(assert (=> b!6137738 m!6979822))

(declare-fun m!6979824 () Bool)

(assert (=> bm!509511 m!6979824))

(declare-fun m!6979826 () Bool)

(assert (=> bm!509513 m!6979826))

(declare-fun m!6979828 () Bool)

(assert (=> b!6137743 m!6979828))

(assert (=> bm!509345 d!1922990))

(assert (=> d!1922620 d!1922624))

(assert (=> d!1922620 d!1922622))

(declare-fun e!3740710 () Bool)

(declare-fun d!1922992 () Bool)

(assert (=> d!1922992 (= (matchZipper!2092 (set.union lt!2332533 lt!2332536) (t!378016 s!2326)) e!3740710)))

(declare-fun res!2543346 () Bool)

(assert (=> d!1922992 (=> res!2543346 e!3740710)))

(assert (=> d!1922992 (= res!2543346 (matchZipper!2092 lt!2332533 (t!378016 s!2326)))))

(assert (=> d!1922992 true))

(declare-fun _$48!1633 () Unit!157475)

(assert (=> d!1922992 (= (choose!45599 lt!2332533 lt!2332536 (t!378016 s!2326)) _$48!1633)))

(declare-fun b!6137749 () Bool)

(assert (=> b!6137749 (= e!3740710 (matchZipper!2092 lt!2332536 (t!378016 s!2326)))))

(assert (= (and d!1922992 (not res!2543346)) b!6137749))

(assert (=> d!1922992 m!6978792))

(assert (=> d!1922992 m!6978768))

(assert (=> b!6137749 m!6978760))

(assert (=> d!1922620 d!1922992))

(declare-fun bs!1522099 () Bool)

(declare-fun b!6137760 () Bool)

(assert (= bs!1522099 (and b!6137760 b!6136743)))

(declare-fun lambda!334493 () Int)

(assert (=> bs!1522099 (= (and (= (reg!16409 (regOne!32673 r!7292)) (reg!16409 r!7292)) (= (regOne!32673 r!7292) r!7292)) (= lambda!334493 lambda!334420))))

(declare-fun bs!1522100 () Bool)

(assert (= bs!1522100 (and b!6137760 d!1922822)))

(assert (=> bs!1522100 (not (= lambda!334493 lambda!334474))))

(declare-fun bs!1522101 () Bool)

(assert (= bs!1522101 (and b!6137760 b!6136739)))

(assert (=> bs!1522101 (not (= lambda!334493 lambda!334421))))

(declare-fun bs!1522102 () Bool)

(assert (= bs!1522102 (and b!6137760 b!6137677)))

(assert (=> bs!1522102 (= (and (= (reg!16409 (regOne!32673 r!7292)) (reg!16409 (regTwo!32673 r!7292))) (= (regOne!32673 r!7292) (regTwo!32673 r!7292))) (= lambda!334493 lambda!334489))))

(declare-fun bs!1522103 () Bool)

(assert (= bs!1522103 (and b!6137760 d!1922644)))

(assert (=> bs!1522103 (not (= lambda!334493 lambda!334415))))

(declare-fun bs!1522104 () Bool)

(assert (= bs!1522104 (and b!6137760 d!1922812)))

(assert (=> bs!1522104 (not (= lambda!334493 lambda!334471))))

(declare-fun bs!1522105 () Bool)

(assert (= bs!1522105 (and b!6137760 b!6136443)))

(assert (=> bs!1522105 (not (= lambda!334493 lambda!334388))))

(declare-fun bs!1522106 () Bool)

(assert (= bs!1522106 (and b!6137760 d!1922638)))

(assert (=> bs!1522106 (not (= lambda!334493 lambda!334412))))

(assert (=> bs!1522105 (not (= lambda!334493 lambda!334389))))

(declare-fun bs!1522107 () Bool)

(assert (= bs!1522107 (and b!6137760 b!6137673)))

(assert (=> bs!1522107 (not (= lambda!334493 lambda!334490))))

(assert (=> bs!1522104 (not (= lambda!334493 lambda!334470))))

(assert (=> bs!1522106 (not (= lambda!334493 lambda!334411))))

(assert (=> b!6137760 true))

(assert (=> b!6137760 true))

(declare-fun bs!1522108 () Bool)

(declare-fun b!6137756 () Bool)

(assert (= bs!1522108 (and b!6137756 b!6136743)))

(declare-fun lambda!334494 () Int)

(assert (=> bs!1522108 (not (= lambda!334494 lambda!334420))))

(declare-fun bs!1522109 () Bool)

(assert (= bs!1522109 (and b!6137756 d!1922822)))

(assert (=> bs!1522109 (not (= lambda!334494 lambda!334474))))

(declare-fun bs!1522110 () Bool)

(assert (= bs!1522110 (and b!6137756 b!6136739)))

(assert (=> bs!1522110 (= (and (= (regOne!32672 (regOne!32673 r!7292)) (regOne!32672 r!7292)) (= (regTwo!32672 (regOne!32673 r!7292)) (regTwo!32672 r!7292))) (= lambda!334494 lambda!334421))))

(declare-fun bs!1522111 () Bool)

(assert (= bs!1522111 (and b!6137756 b!6137677)))

(assert (=> bs!1522111 (not (= lambda!334494 lambda!334489))))

(declare-fun bs!1522112 () Bool)

(assert (= bs!1522112 (and b!6137756 d!1922644)))

(assert (=> bs!1522112 (not (= lambda!334494 lambda!334415))))

(declare-fun bs!1522113 () Bool)

(assert (= bs!1522113 (and b!6137756 d!1922812)))

(assert (=> bs!1522113 (= (and (= (regOne!32672 (regOne!32673 r!7292)) (regOne!32672 r!7292)) (= (regTwo!32672 (regOne!32673 r!7292)) (regTwo!32672 r!7292))) (= lambda!334494 lambda!334471))))

(declare-fun bs!1522114 () Bool)

(assert (= bs!1522114 (and b!6137756 b!6136443)))

(assert (=> bs!1522114 (not (= lambda!334494 lambda!334388))))

(declare-fun bs!1522115 () Bool)

(assert (= bs!1522115 (and b!6137756 d!1922638)))

(assert (=> bs!1522115 (= (and (= (regOne!32672 (regOne!32673 r!7292)) (regOne!32672 r!7292)) (= (regTwo!32672 (regOne!32673 r!7292)) (regTwo!32672 r!7292))) (= lambda!334494 lambda!334412))))

(assert (=> bs!1522114 (= (and (= (regOne!32672 (regOne!32673 r!7292)) (regOne!32672 r!7292)) (= (regTwo!32672 (regOne!32673 r!7292)) (regTwo!32672 r!7292))) (= lambda!334494 lambda!334389))))

(declare-fun bs!1522116 () Bool)

(assert (= bs!1522116 (and b!6137756 b!6137760)))

(assert (=> bs!1522116 (not (= lambda!334494 lambda!334493))))

(declare-fun bs!1522117 () Bool)

(assert (= bs!1522117 (and b!6137756 b!6137673)))

(assert (=> bs!1522117 (= (and (= (regOne!32672 (regOne!32673 r!7292)) (regOne!32672 (regTwo!32673 r!7292))) (= (regTwo!32672 (regOne!32673 r!7292)) (regTwo!32672 (regTwo!32673 r!7292)))) (= lambda!334494 lambda!334490))))

(assert (=> bs!1522113 (not (= lambda!334494 lambda!334470))))

(assert (=> bs!1522115 (not (= lambda!334494 lambda!334411))))

(assert (=> b!6137756 true))

(assert (=> b!6137756 true))

(declare-fun b!6137750 () Bool)

(declare-fun e!3740712 () Bool)

(declare-fun e!3740713 () Bool)

(assert (=> b!6137750 (= e!3740712 e!3740713)))

(declare-fun res!2543348 () Bool)

(assert (=> b!6137750 (= res!2543348 (matchRSpec!3181 (regOne!32673 (regOne!32673 r!7292)) s!2326))))

(assert (=> b!6137750 (=> res!2543348 e!3740713)))

(declare-fun b!6137751 () Bool)

(declare-fun c!1103862 () Bool)

(assert (=> b!6137751 (= c!1103862 (is-ElementMatch!16080 (regOne!32673 r!7292)))))

(declare-fun e!3740714 () Bool)

(declare-fun e!3740716 () Bool)

(assert (=> b!6137751 (= e!3740714 e!3740716)))

(declare-fun b!6137752 () Bool)

(declare-fun res!2543347 () Bool)

(declare-fun e!3740717 () Bool)

(assert (=> b!6137752 (=> res!2543347 e!3740717)))

(declare-fun call!509521 () Bool)

(assert (=> b!6137752 (= res!2543347 call!509521)))

(declare-fun e!3740711 () Bool)

(assert (=> b!6137752 (= e!3740711 e!3740717)))

(declare-fun b!6137753 () Bool)

(assert (=> b!6137753 (= e!3740716 (= s!2326 (Cons!64417 (c!1103508 (regOne!32673 r!7292)) Nil!64417)))))

(declare-fun c!1103863 () Bool)

(declare-fun call!509520 () Bool)

(declare-fun bm!509515 () Bool)

(assert (=> bm!509515 (= call!509520 (Exists!3150 (ite c!1103863 lambda!334493 lambda!334494)))))

(declare-fun b!6137755 () Bool)

(declare-fun c!1103865 () Bool)

(assert (=> b!6137755 (= c!1103865 (is-Union!16080 (regOne!32673 r!7292)))))

(assert (=> b!6137755 (= e!3740716 e!3740712)))

(assert (=> b!6137756 (= e!3740711 call!509520)))

(declare-fun b!6137757 () Bool)

(declare-fun e!3740715 () Bool)

(assert (=> b!6137757 (= e!3740715 e!3740714)))

(declare-fun res!2543349 () Bool)

(assert (=> b!6137757 (= res!2543349 (not (is-EmptyLang!16080 (regOne!32673 r!7292))))))

(assert (=> b!6137757 (=> (not res!2543349) (not e!3740714))))

(declare-fun b!6137758 () Bool)

(assert (=> b!6137758 (= e!3740712 e!3740711)))

(assert (=> b!6137758 (= c!1103863 (is-Star!16080 (regOne!32673 r!7292)))))

(declare-fun bm!509516 () Bool)

(assert (=> bm!509516 (= call!509521 (isEmpty!36366 s!2326))))

(declare-fun b!6137759 () Bool)

(assert (=> b!6137759 (= e!3740715 call!509521)))

(assert (=> b!6137760 (= e!3740717 call!509520)))

(declare-fun d!1922994 () Bool)

(declare-fun c!1103864 () Bool)

(assert (=> d!1922994 (= c!1103864 (is-EmptyExpr!16080 (regOne!32673 r!7292)))))

(assert (=> d!1922994 (= (matchRSpec!3181 (regOne!32673 r!7292) s!2326) e!3740715)))

(declare-fun b!6137754 () Bool)

(assert (=> b!6137754 (= e!3740713 (matchRSpec!3181 (regTwo!32673 (regOne!32673 r!7292)) s!2326))))

(assert (= (and d!1922994 c!1103864) b!6137759))

(assert (= (and d!1922994 (not c!1103864)) b!6137757))

(assert (= (and b!6137757 res!2543349) b!6137751))

(assert (= (and b!6137751 c!1103862) b!6137753))

(assert (= (and b!6137751 (not c!1103862)) b!6137755))

(assert (= (and b!6137755 c!1103865) b!6137750))

(assert (= (and b!6137755 (not c!1103865)) b!6137758))

(assert (= (and b!6137750 (not res!2543348)) b!6137754))

(assert (= (and b!6137758 c!1103863) b!6137752))

(assert (= (and b!6137758 (not c!1103863)) b!6137756))

(assert (= (and b!6137752 (not res!2543347)) b!6137760))

(assert (= (or b!6137760 b!6137756) bm!509515))

(assert (= (or b!6137759 b!6137752) bm!509516))

(declare-fun m!6979830 () Bool)

(assert (=> b!6137750 m!6979830))

(declare-fun m!6979832 () Bool)

(assert (=> bm!509515 m!6979832))

(assert (=> bm!509516 m!6979026))

(declare-fun m!6979834 () Bool)

(assert (=> b!6137754 m!6979834))

(assert (=> b!6136733 d!1922994))

(declare-fun b!6137761 () Bool)

(declare-fun e!3740719 () List!64541)

(assert (=> b!6137761 (= e!3740719 (t!378016 s!2326))))

(declare-fun b!6137762 () Bool)

(assert (=> b!6137762 (= e!3740719 (Cons!64417 (h!70865 (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417))) (++!14166 (t!378016 (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417))) (t!378016 s!2326))))))

(declare-fun b!6137763 () Bool)

(declare-fun res!2543350 () Bool)

(declare-fun e!3740718 () Bool)

(assert (=> b!6137763 (=> (not res!2543350) (not e!3740718))))

(declare-fun lt!2332719 () List!64541)

(assert (=> b!6137763 (= res!2543350 (= (size!40223 lt!2332719) (+ (size!40223 (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417))) (size!40223 (t!378016 s!2326)))))))

(declare-fun b!6137764 () Bool)

(assert (=> b!6137764 (= e!3740718 (or (not (= (t!378016 s!2326) Nil!64417)) (= lt!2332719 (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417)))))))

(declare-fun d!1922996 () Bool)

(assert (=> d!1922996 e!3740718))

(declare-fun res!2543351 () Bool)

(assert (=> d!1922996 (=> (not res!2543351) (not e!3740718))))

(assert (=> d!1922996 (= res!2543351 (= (content!11986 lt!2332719) (set.union (content!11986 (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417))) (content!11986 (t!378016 s!2326)))))))

(assert (=> d!1922996 (= lt!2332719 e!3740719)))

(declare-fun c!1103866 () Bool)

(assert (=> d!1922996 (= c!1103866 (is-Nil!64417 (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417))))))

(assert (=> d!1922996 (= (++!14166 (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417)) (t!378016 s!2326)) lt!2332719)))

(assert (= (and d!1922996 c!1103866) b!6137761))

(assert (= (and d!1922996 (not c!1103866)) b!6137762))

(assert (= (and d!1922996 res!2543351) b!6137763))

(assert (= (and b!6137763 res!2543350) b!6137764))

(declare-fun m!6979836 () Bool)

(assert (=> b!6137762 m!6979836))

(declare-fun m!6979838 () Bool)

(assert (=> b!6137763 m!6979838))

(assert (=> b!6137763 m!6978992))

(declare-fun m!6979840 () Bool)

(assert (=> b!6137763 m!6979840))

(declare-fun m!6979842 () Bool)

(assert (=> b!6137763 m!6979842))

(declare-fun m!6979844 () Bool)

(assert (=> d!1922996 m!6979844))

(assert (=> d!1922996 m!6978992))

(declare-fun m!6979846 () Bool)

(assert (=> d!1922996 m!6979846))

(declare-fun m!6979848 () Bool)

(assert (=> d!1922996 m!6979848))

(assert (=> b!6136685 d!1922996))

(declare-fun b!6137765 () Bool)

(declare-fun e!3740721 () List!64541)

(assert (=> b!6137765 (= e!3740721 (Cons!64417 (h!70865 s!2326) Nil!64417))))

(declare-fun b!6137766 () Bool)

(assert (=> b!6137766 (= e!3740721 (Cons!64417 (h!70865 Nil!64417) (++!14166 (t!378016 Nil!64417) (Cons!64417 (h!70865 s!2326) Nil!64417))))))

(declare-fun b!6137767 () Bool)

(declare-fun res!2543352 () Bool)

(declare-fun e!3740720 () Bool)

(assert (=> b!6137767 (=> (not res!2543352) (not e!3740720))))

(declare-fun lt!2332720 () List!64541)

(assert (=> b!6137767 (= res!2543352 (= (size!40223 lt!2332720) (+ (size!40223 Nil!64417) (size!40223 (Cons!64417 (h!70865 s!2326) Nil!64417)))))))

(declare-fun b!6137768 () Bool)

(assert (=> b!6137768 (= e!3740720 (or (not (= (Cons!64417 (h!70865 s!2326) Nil!64417) Nil!64417)) (= lt!2332720 Nil!64417)))))

(declare-fun d!1922998 () Bool)

(assert (=> d!1922998 e!3740720))

(declare-fun res!2543353 () Bool)

(assert (=> d!1922998 (=> (not res!2543353) (not e!3740720))))

(assert (=> d!1922998 (= res!2543353 (= (content!11986 lt!2332720) (set.union (content!11986 Nil!64417) (content!11986 (Cons!64417 (h!70865 s!2326) Nil!64417)))))))

(assert (=> d!1922998 (= lt!2332720 e!3740721)))

(declare-fun c!1103867 () Bool)

(assert (=> d!1922998 (= c!1103867 (is-Nil!64417 Nil!64417))))

(assert (=> d!1922998 (= (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417)) lt!2332720)))

(assert (= (and d!1922998 c!1103867) b!6137765))

(assert (= (and d!1922998 (not c!1103867)) b!6137766))

(assert (= (and d!1922998 res!2543353) b!6137767))

(assert (= (and b!6137767 res!2543352) b!6137768))

(declare-fun m!6979850 () Bool)

(assert (=> b!6137766 m!6979850))

(declare-fun m!6979852 () Bool)

(assert (=> b!6137767 m!6979852))

(declare-fun m!6979854 () Bool)

(assert (=> b!6137767 m!6979854))

(declare-fun m!6979856 () Bool)

(assert (=> b!6137767 m!6979856))

(declare-fun m!6979858 () Bool)

(assert (=> d!1922998 m!6979858))

(declare-fun m!6979860 () Bool)

(assert (=> d!1922998 m!6979860))

(declare-fun m!6979862 () Bool)

(assert (=> d!1922998 m!6979862))

(assert (=> b!6136685 d!1922998))

(declare-fun d!1923000 () Bool)

(assert (=> d!1923000 (= (++!14166 (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417)) (t!378016 s!2326)) s!2326)))

(declare-fun lt!2332723 () Unit!157475)

(declare-fun choose!45614 (List!64541 C!32430 List!64541 List!64541) Unit!157475)

(assert (=> d!1923000 (= lt!2332723 (choose!45614 Nil!64417 (h!70865 s!2326) (t!378016 s!2326) s!2326))))

(assert (=> d!1923000 (= (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) (t!378016 s!2326))) s!2326)))

(assert (=> d!1923000 (= (lemmaMoveElementToOtherListKeepsConcatEq!2261 Nil!64417 (h!70865 s!2326) (t!378016 s!2326) s!2326) lt!2332723)))

(declare-fun bs!1522118 () Bool)

(assert (= bs!1522118 d!1923000))

(assert (=> bs!1522118 m!6978992))

(assert (=> bs!1522118 m!6978992))

(assert (=> bs!1522118 m!6978994))

(declare-fun m!6979864 () Bool)

(assert (=> bs!1522118 m!6979864))

(declare-fun m!6979866 () Bool)

(assert (=> bs!1522118 m!6979866))

(assert (=> b!6136685 d!1923000))

(declare-fun b!6137769 () Bool)

(declare-fun e!3740726 () Option!15971)

(assert (=> b!6137769 (= e!3740726 None!15970)))

(declare-fun b!6137771 () Bool)

(declare-fun res!2543358 () Bool)

(declare-fun e!3740724 () Bool)

(assert (=> b!6137771 (=> (not res!2543358) (not e!3740724))))

(declare-fun lt!2332726 () Option!15971)

(assert (=> b!6137771 (= res!2543358 (matchR!8263 (regOne!32672 r!7292) (_1!36362 (get!22222 lt!2332726))))))

(declare-fun b!6137772 () Bool)

(declare-fun res!2543355 () Bool)

(assert (=> b!6137772 (=> (not res!2543355) (not e!3740724))))

(assert (=> b!6137772 (= res!2543355 (matchR!8263 (regTwo!32672 r!7292) (_2!36362 (get!22222 lt!2332726))))))

(declare-fun b!6137773 () Bool)

(assert (=> b!6137773 (= e!3740724 (= (++!14166 (_1!36362 (get!22222 lt!2332726)) (_2!36362 (get!22222 lt!2332726))) s!2326))))

(declare-fun b!6137770 () Bool)

(declare-fun e!3740725 () Option!15971)

(assert (=> b!6137770 (= e!3740725 (Some!15970 (tuple2!66119 (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417)) (t!378016 s!2326))))))

(declare-fun d!1923002 () Bool)

(declare-fun e!3740722 () Bool)

(assert (=> d!1923002 e!3740722))

(declare-fun res!2543354 () Bool)

(assert (=> d!1923002 (=> res!2543354 e!3740722)))

(assert (=> d!1923002 (= res!2543354 e!3740724)))

(declare-fun res!2543356 () Bool)

(assert (=> d!1923002 (=> (not res!2543356) (not e!3740724))))

(assert (=> d!1923002 (= res!2543356 (isDefined!12674 lt!2332726))))

(assert (=> d!1923002 (= lt!2332726 e!3740725)))

(declare-fun c!1103869 () Bool)

(declare-fun e!3740723 () Bool)

(assert (=> d!1923002 (= c!1103869 e!3740723)))

(declare-fun res!2543357 () Bool)

(assert (=> d!1923002 (=> (not res!2543357) (not e!3740723))))

(assert (=> d!1923002 (= res!2543357 (matchR!8263 (regOne!32672 r!7292) (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417))))))

(assert (=> d!1923002 (validRegex!7816 (regOne!32672 r!7292))))

(assert (=> d!1923002 (= (findConcatSeparation!2385 (regOne!32672 r!7292) (regTwo!32672 r!7292) (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417)) (t!378016 s!2326) s!2326) lt!2332726)))

(declare-fun b!6137774 () Bool)

(declare-fun lt!2332724 () Unit!157475)

(declare-fun lt!2332725 () Unit!157475)

(assert (=> b!6137774 (= lt!2332724 lt!2332725)))

(assert (=> b!6137774 (= (++!14166 (++!14166 (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417)) (Cons!64417 (h!70865 (t!378016 s!2326)) Nil!64417)) (t!378016 (t!378016 s!2326))) s!2326)))

(assert (=> b!6137774 (= lt!2332725 (lemmaMoveElementToOtherListKeepsConcatEq!2261 (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417)) (h!70865 (t!378016 s!2326)) (t!378016 (t!378016 s!2326)) s!2326))))

(assert (=> b!6137774 (= e!3740726 (findConcatSeparation!2385 (regOne!32672 r!7292) (regTwo!32672 r!7292) (++!14166 (++!14166 Nil!64417 (Cons!64417 (h!70865 s!2326) Nil!64417)) (Cons!64417 (h!70865 (t!378016 s!2326)) Nil!64417)) (t!378016 (t!378016 s!2326)) s!2326))))

(declare-fun b!6137775 () Bool)

(assert (=> b!6137775 (= e!3740725 e!3740726)))

(declare-fun c!1103868 () Bool)

(assert (=> b!6137775 (= c!1103868 (is-Nil!64417 (t!378016 s!2326)))))

(declare-fun b!6137776 () Bool)

(assert (=> b!6137776 (= e!3740723 (matchR!8263 (regTwo!32672 r!7292) (t!378016 s!2326)))))

(declare-fun b!6137777 () Bool)

(assert (=> b!6137777 (= e!3740722 (not (isDefined!12674 lt!2332726)))))

(assert (= (and d!1923002 res!2543357) b!6137776))

(assert (= (and d!1923002 c!1103869) b!6137770))

(assert (= (and d!1923002 (not c!1103869)) b!6137775))

(assert (= (and b!6137775 c!1103868) b!6137769))

(assert (= (and b!6137775 (not c!1103868)) b!6137774))

(assert (= (and d!1923002 res!2543356) b!6137771))

(assert (= (and b!6137771 res!2543358) b!6137772))

(assert (= (and b!6137772 res!2543355) b!6137773))

(assert (= (and d!1923002 (not res!2543354)) b!6137777))

(declare-fun m!6979868 () Bool)

(assert (=> b!6137777 m!6979868))

(declare-fun m!6979870 () Bool)

(assert (=> b!6137773 m!6979870))

(declare-fun m!6979872 () Bool)

(assert (=> b!6137773 m!6979872))

(assert (=> b!6137771 m!6979870))

(declare-fun m!6979874 () Bool)

(assert (=> b!6137771 m!6979874))

(assert (=> b!6137772 m!6979870))

(declare-fun m!6979876 () Bool)

(assert (=> b!6137772 m!6979876))

(assert (=> b!6137774 m!6978992))

(declare-fun m!6979878 () Bool)

(assert (=> b!6137774 m!6979878))

(assert (=> b!6137774 m!6979878))

(declare-fun m!6979880 () Bool)

(assert (=> b!6137774 m!6979880))

(assert (=> b!6137774 m!6978992))

(declare-fun m!6979882 () Bool)

(assert (=> b!6137774 m!6979882))

(assert (=> b!6137774 m!6979878))

(declare-fun m!6979884 () Bool)

(assert (=> b!6137774 m!6979884))

(declare-fun m!6979886 () Bool)

(assert (=> b!6137776 m!6979886))

(assert (=> d!1923002 m!6979868))

(assert (=> d!1923002 m!6978992))

(declare-fun m!6979888 () Bool)

(assert (=> d!1923002 m!6979888))

(assert (=> d!1923002 m!6979004))

(assert (=> b!6136685 d!1923002))

(declare-fun bs!1522119 () Bool)

(declare-fun d!1923004 () Bool)

(assert (= bs!1522119 (and d!1923004 d!1922906)))

(declare-fun lambda!334495 () Int)

(assert (=> bs!1522119 (= lambda!334495 lambda!334482)))

(declare-fun bs!1522120 () Bool)

(assert (= bs!1522120 (and d!1923004 d!1922796)))

(assert (=> bs!1522120 (= lambda!334495 lambda!334465)))

(declare-fun bs!1522121 () Bool)

(assert (= bs!1522121 (and d!1923004 d!1922936)))

(assert (=> bs!1522121 (= lambda!334495 lambda!334486)))

(declare-fun bs!1522122 () Bool)

(assert (= bs!1522122 (and d!1923004 d!1922784)))

(assert (=> bs!1522122 (= lambda!334495 lambda!334464)))

(declare-fun bs!1522123 () Bool)

(assert (= bs!1522123 (and d!1923004 d!1922924)))

(assert (=> bs!1522123 (= lambda!334495 lambda!334484)))

(assert (=> d!1923004 (= (nullableZipper!1861 lt!2332533) (exists!2427 lt!2332533 lambda!334495))))

(declare-fun bs!1522124 () Bool)

(assert (= bs!1522124 d!1923004))

(declare-fun m!6979890 () Bool)

(assert (=> bs!1522124 m!6979890))

(assert (=> b!6136627 d!1923004))

(declare-fun b!6137779 () Bool)

(declare-fun e!3740727 () Bool)

(declare-fun tp!1714873 () Bool)

(declare-fun tp!1714870 () Bool)

(assert (=> b!6137779 (= e!3740727 (and tp!1714873 tp!1714870))))

(assert (=> b!6136932 (= tp!1714785 e!3740727)))

(declare-fun b!6137780 () Bool)

(declare-fun tp!1714871 () Bool)

(assert (=> b!6137780 (= e!3740727 tp!1714871)))

(declare-fun b!6137778 () Bool)

(assert (=> b!6137778 (= e!3740727 tp_is_empty!41413)))

(declare-fun b!6137781 () Bool)

(declare-fun tp!1714869 () Bool)

(declare-fun tp!1714872 () Bool)

(assert (=> b!6137781 (= e!3740727 (and tp!1714869 tp!1714872))))

(assert (= (and b!6136932 (is-ElementMatch!16080 (h!70863 (exprs!5964 setElem!41493)))) b!6137778))

(assert (= (and b!6136932 (is-Concat!24925 (h!70863 (exprs!5964 setElem!41493)))) b!6137779))

(assert (= (and b!6136932 (is-Star!16080 (h!70863 (exprs!5964 setElem!41493)))) b!6137780))

(assert (= (and b!6136932 (is-Union!16080 (h!70863 (exprs!5964 setElem!41493)))) b!6137781))

(declare-fun b!6137782 () Bool)

(declare-fun e!3740728 () Bool)

(declare-fun tp!1714874 () Bool)

(declare-fun tp!1714875 () Bool)

(assert (=> b!6137782 (= e!3740728 (and tp!1714874 tp!1714875))))

(assert (=> b!6136932 (= tp!1714786 e!3740728)))

(assert (= (and b!6136932 (is-Cons!64415 (t!378014 (exprs!5964 setElem!41493)))) b!6137782))

(declare-fun b!6137784 () Bool)

(declare-fun e!3740729 () Bool)

(declare-fun tp!1714880 () Bool)

(declare-fun tp!1714877 () Bool)

(assert (=> b!6137784 (= e!3740729 (and tp!1714880 tp!1714877))))

(assert (=> b!6136912 (= tp!1714760 e!3740729)))

(declare-fun b!6137785 () Bool)

(declare-fun tp!1714878 () Bool)

(assert (=> b!6137785 (= e!3740729 tp!1714878)))

(declare-fun b!6137783 () Bool)

(assert (=> b!6137783 (= e!3740729 tp_is_empty!41413)))

(declare-fun b!6137786 () Bool)

(declare-fun tp!1714876 () Bool)

(declare-fun tp!1714879 () Bool)

(assert (=> b!6137786 (= e!3740729 (and tp!1714876 tp!1714879))))

(assert (= (and b!6136912 (is-ElementMatch!16080 (reg!16409 (reg!16409 r!7292)))) b!6137783))

(assert (= (and b!6136912 (is-Concat!24925 (reg!16409 (reg!16409 r!7292)))) b!6137784))

(assert (= (and b!6136912 (is-Star!16080 (reg!16409 (reg!16409 r!7292)))) b!6137785))

(assert (= (and b!6136912 (is-Union!16080 (reg!16409 (reg!16409 r!7292)))) b!6137786))

(declare-fun b!6137788 () Bool)

(declare-fun e!3740730 () Bool)

(declare-fun tp!1714885 () Bool)

(declare-fun tp!1714882 () Bool)

(assert (=> b!6137788 (= e!3740730 (and tp!1714885 tp!1714882))))

(assert (=> b!6136911 (= tp!1714762 e!3740730)))

(declare-fun b!6137789 () Bool)

(declare-fun tp!1714883 () Bool)

(assert (=> b!6137789 (= e!3740730 tp!1714883)))

(declare-fun b!6137787 () Bool)

(assert (=> b!6137787 (= e!3740730 tp_is_empty!41413)))

(declare-fun b!6137790 () Bool)

(declare-fun tp!1714881 () Bool)

(declare-fun tp!1714884 () Bool)

(assert (=> b!6137790 (= e!3740730 (and tp!1714881 tp!1714884))))

(assert (= (and b!6136911 (is-ElementMatch!16080 (regOne!32672 (reg!16409 r!7292)))) b!6137787))

(assert (= (and b!6136911 (is-Concat!24925 (regOne!32672 (reg!16409 r!7292)))) b!6137788))

(assert (= (and b!6136911 (is-Star!16080 (regOne!32672 (reg!16409 r!7292)))) b!6137789))

(assert (= (and b!6136911 (is-Union!16080 (regOne!32672 (reg!16409 r!7292)))) b!6137790))

(declare-fun b!6137792 () Bool)

(declare-fun e!3740731 () Bool)

(declare-fun tp!1714890 () Bool)

(declare-fun tp!1714887 () Bool)

(assert (=> b!6137792 (= e!3740731 (and tp!1714890 tp!1714887))))

(assert (=> b!6136911 (= tp!1714759 e!3740731)))

(declare-fun b!6137793 () Bool)

(declare-fun tp!1714888 () Bool)

(assert (=> b!6137793 (= e!3740731 tp!1714888)))

(declare-fun b!6137791 () Bool)

(assert (=> b!6137791 (= e!3740731 tp_is_empty!41413)))

(declare-fun b!6137794 () Bool)

(declare-fun tp!1714886 () Bool)

(declare-fun tp!1714889 () Bool)

(assert (=> b!6137794 (= e!3740731 (and tp!1714886 tp!1714889))))

(assert (= (and b!6136911 (is-ElementMatch!16080 (regTwo!32672 (reg!16409 r!7292)))) b!6137791))

(assert (= (and b!6136911 (is-Concat!24925 (regTwo!32672 (reg!16409 r!7292)))) b!6137792))

(assert (= (and b!6136911 (is-Star!16080 (regTwo!32672 (reg!16409 r!7292)))) b!6137793))

(assert (= (and b!6136911 (is-Union!16080 (regTwo!32672 (reg!16409 r!7292)))) b!6137794))

(declare-fun b!6137796 () Bool)

(declare-fun e!3740732 () Bool)

(declare-fun tp!1714895 () Bool)

(declare-fun tp!1714892 () Bool)

(assert (=> b!6137796 (= e!3740732 (and tp!1714895 tp!1714892))))

(assert (=> b!6136913 (= tp!1714758 e!3740732)))

(declare-fun b!6137797 () Bool)

(declare-fun tp!1714893 () Bool)

(assert (=> b!6137797 (= e!3740732 tp!1714893)))

(declare-fun b!6137795 () Bool)

(assert (=> b!6137795 (= e!3740732 tp_is_empty!41413)))

(declare-fun b!6137798 () Bool)

(declare-fun tp!1714891 () Bool)

(declare-fun tp!1714894 () Bool)

(assert (=> b!6137798 (= e!3740732 (and tp!1714891 tp!1714894))))

(assert (= (and b!6136913 (is-ElementMatch!16080 (regOne!32673 (reg!16409 r!7292)))) b!6137795))

(assert (= (and b!6136913 (is-Concat!24925 (regOne!32673 (reg!16409 r!7292)))) b!6137796))

(assert (= (and b!6136913 (is-Star!16080 (regOne!32673 (reg!16409 r!7292)))) b!6137797))

(assert (= (and b!6136913 (is-Union!16080 (regOne!32673 (reg!16409 r!7292)))) b!6137798))

(declare-fun b!6137800 () Bool)

(declare-fun e!3740733 () Bool)

(declare-fun tp!1714900 () Bool)

(declare-fun tp!1714897 () Bool)

(assert (=> b!6137800 (= e!3740733 (and tp!1714900 tp!1714897))))

(assert (=> b!6136913 (= tp!1714761 e!3740733)))

(declare-fun b!6137801 () Bool)

(declare-fun tp!1714898 () Bool)

(assert (=> b!6137801 (= e!3740733 tp!1714898)))

(declare-fun b!6137799 () Bool)

(assert (=> b!6137799 (= e!3740733 tp_is_empty!41413)))

(declare-fun b!6137802 () Bool)

(declare-fun tp!1714896 () Bool)

(declare-fun tp!1714899 () Bool)

(assert (=> b!6137802 (= e!3740733 (and tp!1714896 tp!1714899))))

(assert (= (and b!6136913 (is-ElementMatch!16080 (regTwo!32673 (reg!16409 r!7292)))) b!6137799))

(assert (= (and b!6136913 (is-Concat!24925 (regTwo!32673 (reg!16409 r!7292)))) b!6137800))

(assert (= (and b!6136913 (is-Star!16080 (regTwo!32673 (reg!16409 r!7292)))) b!6137801))

(assert (= (and b!6136913 (is-Union!16080 (regTwo!32673 (reg!16409 r!7292)))) b!6137802))

(declare-fun b!6137804 () Bool)

(declare-fun e!3740734 () Bool)

(declare-fun tp!1714905 () Bool)

(declare-fun tp!1714902 () Bool)

(assert (=> b!6137804 (= e!3740734 (and tp!1714905 tp!1714902))))

(assert (=> b!6136921 (= tp!1714771 e!3740734)))

(declare-fun b!6137805 () Bool)

(declare-fun tp!1714903 () Bool)

(assert (=> b!6137805 (= e!3740734 tp!1714903)))

(declare-fun b!6137803 () Bool)

(assert (=> b!6137803 (= e!3740734 tp_is_empty!41413)))

(declare-fun b!6137806 () Bool)

(declare-fun tp!1714901 () Bool)

(declare-fun tp!1714904 () Bool)

(assert (=> b!6137806 (= e!3740734 (and tp!1714901 tp!1714904))))

(assert (= (and b!6136921 (is-ElementMatch!16080 (reg!16409 (regOne!32672 r!7292)))) b!6137803))

(assert (= (and b!6136921 (is-Concat!24925 (reg!16409 (regOne!32672 r!7292)))) b!6137804))

(assert (= (and b!6136921 (is-Star!16080 (reg!16409 (regOne!32672 r!7292)))) b!6137805))

(assert (= (and b!6136921 (is-Union!16080 (reg!16409 (regOne!32672 r!7292)))) b!6137806))

(declare-fun b!6137808 () Bool)

(declare-fun e!3740735 () Bool)

(declare-fun tp!1714910 () Bool)

(declare-fun tp!1714907 () Bool)

(assert (=> b!6137808 (= e!3740735 (and tp!1714910 tp!1714907))))

(assert (=> b!6136936 (= tp!1714787 e!3740735)))

(declare-fun b!6137809 () Bool)

(declare-fun tp!1714908 () Bool)

(assert (=> b!6137809 (= e!3740735 tp!1714908)))

(declare-fun b!6137807 () Bool)

(assert (=> b!6137807 (= e!3740735 tp_is_empty!41413)))

(declare-fun b!6137810 () Bool)

(declare-fun tp!1714906 () Bool)

(declare-fun tp!1714909 () Bool)

(assert (=> b!6137810 (= e!3740735 (and tp!1714906 tp!1714909))))

(assert (= (and b!6136936 (is-ElementMatch!16080 (regOne!32673 (regOne!32673 r!7292)))) b!6137807))

(assert (= (and b!6136936 (is-Concat!24925 (regOne!32673 (regOne!32673 r!7292)))) b!6137808))

(assert (= (and b!6136936 (is-Star!16080 (regOne!32673 (regOne!32673 r!7292)))) b!6137809))

(assert (= (and b!6136936 (is-Union!16080 (regOne!32673 (regOne!32673 r!7292)))) b!6137810))

(declare-fun b!6137812 () Bool)

(declare-fun e!3740736 () Bool)

(declare-fun tp!1714915 () Bool)

(declare-fun tp!1714912 () Bool)

(assert (=> b!6137812 (= e!3740736 (and tp!1714915 tp!1714912))))

(assert (=> b!6136936 (= tp!1714790 e!3740736)))

(declare-fun b!6137813 () Bool)

(declare-fun tp!1714913 () Bool)

(assert (=> b!6137813 (= e!3740736 tp!1714913)))

(declare-fun b!6137811 () Bool)

(assert (=> b!6137811 (= e!3740736 tp_is_empty!41413)))

(declare-fun b!6137814 () Bool)

(declare-fun tp!1714911 () Bool)

(declare-fun tp!1714914 () Bool)

(assert (=> b!6137814 (= e!3740736 (and tp!1714911 tp!1714914))))

(assert (= (and b!6136936 (is-ElementMatch!16080 (regTwo!32673 (regOne!32673 r!7292)))) b!6137811))

(assert (= (and b!6136936 (is-Concat!24925 (regTwo!32673 (regOne!32673 r!7292)))) b!6137812))

(assert (= (and b!6136936 (is-Star!16080 (regTwo!32673 (regOne!32673 r!7292)))) b!6137813))

(assert (= (and b!6136936 (is-Union!16080 (regTwo!32673 (regOne!32673 r!7292)))) b!6137814))

(declare-fun b!6137816 () Bool)

(declare-fun e!3740737 () Bool)

(declare-fun tp!1714920 () Bool)

(declare-fun tp!1714917 () Bool)

(assert (=> b!6137816 (= e!3740737 (and tp!1714920 tp!1714917))))

(assert (=> b!6136934 (= tp!1714791 e!3740737)))

(declare-fun b!6137817 () Bool)

(declare-fun tp!1714918 () Bool)

(assert (=> b!6137817 (= e!3740737 tp!1714918)))

(declare-fun b!6137815 () Bool)

(assert (=> b!6137815 (= e!3740737 tp_is_empty!41413)))

(declare-fun b!6137818 () Bool)

(declare-fun tp!1714916 () Bool)

(declare-fun tp!1714919 () Bool)

(assert (=> b!6137818 (= e!3740737 (and tp!1714916 tp!1714919))))

(assert (= (and b!6136934 (is-ElementMatch!16080 (regOne!32672 (regOne!32673 r!7292)))) b!6137815))

(assert (= (and b!6136934 (is-Concat!24925 (regOne!32672 (regOne!32673 r!7292)))) b!6137816))

(assert (= (and b!6136934 (is-Star!16080 (regOne!32672 (regOne!32673 r!7292)))) b!6137817))

(assert (= (and b!6136934 (is-Union!16080 (regOne!32672 (regOne!32673 r!7292)))) b!6137818))

(declare-fun b!6137820 () Bool)

(declare-fun e!3740738 () Bool)

(declare-fun tp!1714925 () Bool)

(declare-fun tp!1714922 () Bool)

(assert (=> b!6137820 (= e!3740738 (and tp!1714925 tp!1714922))))

(assert (=> b!6136934 (= tp!1714788 e!3740738)))

(declare-fun b!6137821 () Bool)

(declare-fun tp!1714923 () Bool)

(assert (=> b!6137821 (= e!3740738 tp!1714923)))

(declare-fun b!6137819 () Bool)

(assert (=> b!6137819 (= e!3740738 tp_is_empty!41413)))

(declare-fun b!6137822 () Bool)

(declare-fun tp!1714921 () Bool)

(declare-fun tp!1714924 () Bool)

(assert (=> b!6137822 (= e!3740738 (and tp!1714921 tp!1714924))))

(assert (= (and b!6136934 (is-ElementMatch!16080 (regTwo!32672 (regOne!32673 r!7292)))) b!6137819))

(assert (= (and b!6136934 (is-Concat!24925 (regTwo!32672 (regOne!32673 r!7292)))) b!6137820))

(assert (= (and b!6136934 (is-Star!16080 (regTwo!32672 (regOne!32673 r!7292)))) b!6137821))

(assert (= (and b!6136934 (is-Union!16080 (regTwo!32672 (regOne!32673 r!7292)))) b!6137822))

(declare-fun b!6137824 () Bool)

(declare-fun e!3740739 () Bool)

(declare-fun tp!1714930 () Bool)

(declare-fun tp!1714927 () Bool)

(assert (=> b!6137824 (= e!3740739 (and tp!1714930 tp!1714927))))

(assert (=> b!6136920 (= tp!1714773 e!3740739)))

(declare-fun b!6137825 () Bool)

(declare-fun tp!1714928 () Bool)

(assert (=> b!6137825 (= e!3740739 tp!1714928)))

(declare-fun b!6137823 () Bool)

(assert (=> b!6137823 (= e!3740739 tp_is_empty!41413)))

(declare-fun b!6137826 () Bool)

(declare-fun tp!1714926 () Bool)

(declare-fun tp!1714929 () Bool)

(assert (=> b!6137826 (= e!3740739 (and tp!1714926 tp!1714929))))

(assert (= (and b!6136920 (is-ElementMatch!16080 (regOne!32672 (regOne!32672 r!7292)))) b!6137823))

(assert (= (and b!6136920 (is-Concat!24925 (regOne!32672 (regOne!32672 r!7292)))) b!6137824))

(assert (= (and b!6136920 (is-Star!16080 (regOne!32672 (regOne!32672 r!7292)))) b!6137825))

(assert (= (and b!6136920 (is-Union!16080 (regOne!32672 (regOne!32672 r!7292)))) b!6137826))

(declare-fun b!6137828 () Bool)

(declare-fun e!3740740 () Bool)

(declare-fun tp!1714935 () Bool)

(declare-fun tp!1714932 () Bool)

(assert (=> b!6137828 (= e!3740740 (and tp!1714935 tp!1714932))))

(assert (=> b!6136920 (= tp!1714770 e!3740740)))

(declare-fun b!6137829 () Bool)

(declare-fun tp!1714933 () Bool)

(assert (=> b!6137829 (= e!3740740 tp!1714933)))

(declare-fun b!6137827 () Bool)

(assert (=> b!6137827 (= e!3740740 tp_is_empty!41413)))

(declare-fun b!6137830 () Bool)

(declare-fun tp!1714931 () Bool)

(declare-fun tp!1714934 () Bool)

(assert (=> b!6137830 (= e!3740740 (and tp!1714931 tp!1714934))))

(assert (= (and b!6136920 (is-ElementMatch!16080 (regTwo!32672 (regOne!32672 r!7292)))) b!6137827))

(assert (= (and b!6136920 (is-Concat!24925 (regTwo!32672 (regOne!32672 r!7292)))) b!6137828))

(assert (= (and b!6136920 (is-Star!16080 (regTwo!32672 (regOne!32672 r!7292)))) b!6137829))

(assert (= (and b!6136920 (is-Union!16080 (regTwo!32672 (regOne!32672 r!7292)))) b!6137830))

(declare-fun b!6137832 () Bool)

(declare-fun e!3740741 () Bool)

(declare-fun tp!1714940 () Bool)

(declare-fun tp!1714937 () Bool)

(assert (=> b!6137832 (= e!3740741 (and tp!1714940 tp!1714937))))

(assert (=> b!6136935 (= tp!1714789 e!3740741)))

(declare-fun b!6137833 () Bool)

(declare-fun tp!1714938 () Bool)

(assert (=> b!6137833 (= e!3740741 tp!1714938)))

(declare-fun b!6137831 () Bool)

(assert (=> b!6137831 (= e!3740741 tp_is_empty!41413)))

(declare-fun b!6137834 () Bool)

(declare-fun tp!1714936 () Bool)

(declare-fun tp!1714939 () Bool)

(assert (=> b!6137834 (= e!3740741 (and tp!1714936 tp!1714939))))

(assert (= (and b!6136935 (is-ElementMatch!16080 (reg!16409 (regOne!32673 r!7292)))) b!6137831))

(assert (= (and b!6136935 (is-Concat!24925 (reg!16409 (regOne!32673 r!7292)))) b!6137832))

(assert (= (and b!6136935 (is-Star!16080 (reg!16409 (regOne!32673 r!7292)))) b!6137833))

(assert (= (and b!6136935 (is-Union!16080 (reg!16409 (regOne!32673 r!7292)))) b!6137834))

(declare-fun b!6137835 () Bool)

(declare-fun e!3740742 () Bool)

(declare-fun tp!1714941 () Bool)

(assert (=> b!6137835 (= e!3740742 (and tp_is_empty!41413 tp!1714941))))

(assert (=> b!6136899 (= tp!1714747 e!3740742)))

(assert (= (and b!6136899 (is-Cons!64417 (t!378016 (t!378016 s!2326)))) b!6137835))

(declare-fun b!6137837 () Bool)

(declare-fun e!3740743 () Bool)

(declare-fun tp!1714946 () Bool)

(declare-fun tp!1714943 () Bool)

(assert (=> b!6137837 (= e!3740743 (and tp!1714946 tp!1714943))))

(assert (=> b!6136922 (= tp!1714769 e!3740743)))

(declare-fun b!6137838 () Bool)

(declare-fun tp!1714944 () Bool)

(assert (=> b!6137838 (= e!3740743 tp!1714944)))

(declare-fun b!6137836 () Bool)

(assert (=> b!6137836 (= e!3740743 tp_is_empty!41413)))

(declare-fun b!6137839 () Bool)

(declare-fun tp!1714942 () Bool)

(declare-fun tp!1714945 () Bool)

(assert (=> b!6137839 (= e!3740743 (and tp!1714942 tp!1714945))))

(assert (= (and b!6136922 (is-ElementMatch!16080 (regOne!32673 (regOne!32672 r!7292)))) b!6137836))

(assert (= (and b!6136922 (is-Concat!24925 (regOne!32673 (regOne!32672 r!7292)))) b!6137837))

(assert (= (and b!6136922 (is-Star!16080 (regOne!32673 (regOne!32672 r!7292)))) b!6137838))

(assert (= (and b!6136922 (is-Union!16080 (regOne!32673 (regOne!32672 r!7292)))) b!6137839))

(declare-fun b!6137841 () Bool)

(declare-fun e!3740744 () Bool)

(declare-fun tp!1714951 () Bool)

(declare-fun tp!1714948 () Bool)

(assert (=> b!6137841 (= e!3740744 (and tp!1714951 tp!1714948))))

(assert (=> b!6136922 (= tp!1714772 e!3740744)))

(declare-fun b!6137842 () Bool)

(declare-fun tp!1714949 () Bool)

(assert (=> b!6137842 (= e!3740744 tp!1714949)))

(declare-fun b!6137840 () Bool)

(assert (=> b!6137840 (= e!3740744 tp_is_empty!41413)))

(declare-fun b!6137843 () Bool)

(declare-fun tp!1714947 () Bool)

(declare-fun tp!1714950 () Bool)

(assert (=> b!6137843 (= e!3740744 (and tp!1714947 tp!1714950))))

(assert (= (and b!6136922 (is-ElementMatch!16080 (regTwo!32673 (regOne!32672 r!7292)))) b!6137840))

(assert (= (and b!6136922 (is-Concat!24925 (regTwo!32673 (regOne!32672 r!7292)))) b!6137841))

(assert (= (and b!6136922 (is-Star!16080 (regTwo!32673 (regOne!32672 r!7292)))) b!6137842))

(assert (= (and b!6136922 (is-Union!16080 (regTwo!32673 (regOne!32672 r!7292)))) b!6137843))

(declare-fun b!6137845 () Bool)

(declare-fun e!3740746 () Bool)

(declare-fun tp!1714952 () Bool)

(assert (=> b!6137845 (= e!3740746 tp!1714952)))

(declare-fun tp!1714953 () Bool)

(declare-fun e!3740745 () Bool)

(declare-fun b!6137844 () Bool)

(assert (=> b!6137844 (= e!3740745 (and (inv!83448 (h!70864 (t!378015 (t!378015 zl!343)))) e!3740746 tp!1714953))))

(assert (=> b!6136893 (= tp!1714744 e!3740745)))

(assert (= b!6137844 b!6137845))

(assert (= (and b!6136893 (is-Cons!64416 (t!378015 (t!378015 zl!343)))) b!6137844))

(declare-fun m!6979892 () Bool)

(assert (=> b!6137844 m!6979892))

(declare-fun b!6137847 () Bool)

(declare-fun e!3740747 () Bool)

(declare-fun tp!1714958 () Bool)

(declare-fun tp!1714955 () Bool)

(assert (=> b!6137847 (= e!3740747 (and tp!1714958 tp!1714955))))

(assert (=> b!6136931 (= tp!1714783 e!3740747)))

(declare-fun b!6137848 () Bool)

(declare-fun tp!1714956 () Bool)

(assert (=> b!6137848 (= e!3740747 tp!1714956)))

(declare-fun b!6137846 () Bool)

(assert (=> b!6137846 (= e!3740747 tp_is_empty!41413)))

(declare-fun b!6137849 () Bool)

(declare-fun tp!1714954 () Bool)

(declare-fun tp!1714957 () Bool)

(assert (=> b!6137849 (= e!3740747 (and tp!1714954 tp!1714957))))

(assert (= (and b!6136931 (is-ElementMatch!16080 (h!70863 (exprs!5964 (h!70864 zl!343))))) b!6137846))

(assert (= (and b!6136931 (is-Concat!24925 (h!70863 (exprs!5964 (h!70864 zl!343))))) b!6137847))

(assert (= (and b!6136931 (is-Star!16080 (h!70863 (exprs!5964 (h!70864 zl!343))))) b!6137848))

(assert (= (and b!6136931 (is-Union!16080 (h!70863 (exprs!5964 (h!70864 zl!343))))) b!6137849))

(declare-fun b!6137850 () Bool)

(declare-fun e!3740748 () Bool)

(declare-fun tp!1714959 () Bool)

(declare-fun tp!1714960 () Bool)

(assert (=> b!6137850 (= e!3740748 (and tp!1714959 tp!1714960))))

(assert (=> b!6136931 (= tp!1714784 e!3740748)))

(assert (= (and b!6136931 (is-Cons!64415 (t!378014 (exprs!5964 (h!70864 zl!343))))) b!6137850))

(declare-fun b!6137852 () Bool)

(declare-fun e!3740749 () Bool)

(declare-fun tp!1714965 () Bool)

(declare-fun tp!1714962 () Bool)

(assert (=> b!6137852 (= e!3740749 (and tp!1714965 tp!1714962))))

(assert (=> b!6136938 (= tp!1714796 e!3740749)))

(declare-fun b!6137853 () Bool)

(declare-fun tp!1714963 () Bool)

(assert (=> b!6137853 (= e!3740749 tp!1714963)))

(declare-fun b!6137851 () Bool)

(assert (=> b!6137851 (= e!3740749 tp_is_empty!41413)))

(declare-fun b!6137854 () Bool)

(declare-fun tp!1714961 () Bool)

(declare-fun tp!1714964 () Bool)

(assert (=> b!6137854 (= e!3740749 (and tp!1714961 tp!1714964))))

(assert (= (and b!6136938 (is-ElementMatch!16080 (regOne!32672 (regTwo!32673 r!7292)))) b!6137851))

(assert (= (and b!6136938 (is-Concat!24925 (regOne!32672 (regTwo!32673 r!7292)))) b!6137852))

(assert (= (and b!6136938 (is-Star!16080 (regOne!32672 (regTwo!32673 r!7292)))) b!6137853))

(assert (= (and b!6136938 (is-Union!16080 (regOne!32672 (regTwo!32673 r!7292)))) b!6137854))

(declare-fun b!6137856 () Bool)

(declare-fun e!3740750 () Bool)

(declare-fun tp!1714970 () Bool)

(declare-fun tp!1714967 () Bool)

(assert (=> b!6137856 (= e!3740750 (and tp!1714970 tp!1714967))))

(assert (=> b!6136938 (= tp!1714793 e!3740750)))

(declare-fun b!6137857 () Bool)

(declare-fun tp!1714968 () Bool)

(assert (=> b!6137857 (= e!3740750 tp!1714968)))

(declare-fun b!6137855 () Bool)

(assert (=> b!6137855 (= e!3740750 tp_is_empty!41413)))

(declare-fun b!6137858 () Bool)

(declare-fun tp!1714966 () Bool)

(declare-fun tp!1714969 () Bool)

(assert (=> b!6137858 (= e!3740750 (and tp!1714966 tp!1714969))))

(assert (= (and b!6136938 (is-ElementMatch!16080 (regTwo!32672 (regTwo!32673 r!7292)))) b!6137855))

(assert (= (and b!6136938 (is-Concat!24925 (regTwo!32672 (regTwo!32673 r!7292)))) b!6137856))

(assert (= (and b!6136938 (is-Star!16080 (regTwo!32672 (regTwo!32673 r!7292)))) b!6137857))

(assert (= (and b!6136938 (is-Union!16080 (regTwo!32672 (regTwo!32673 r!7292)))) b!6137858))

(declare-fun b!6137859 () Bool)

(declare-fun e!3740751 () Bool)

(declare-fun tp!1714971 () Bool)

(declare-fun tp!1714972 () Bool)

(assert (=> b!6137859 (= e!3740751 (and tp!1714971 tp!1714972))))

(assert (=> b!6136894 (= tp!1714743 e!3740751)))

(assert (= (and b!6136894 (is-Cons!64415 (exprs!5964 (h!70864 (t!378015 zl!343))))) b!6137859))

(declare-fun b!6137861 () Bool)

(declare-fun e!3740752 () Bool)

(declare-fun tp!1714977 () Bool)

(declare-fun tp!1714974 () Bool)

(assert (=> b!6137861 (= e!3740752 (and tp!1714977 tp!1714974))))

(assert (=> b!6136940 (= tp!1714792 e!3740752)))

(declare-fun b!6137862 () Bool)

(declare-fun tp!1714975 () Bool)

(assert (=> b!6137862 (= e!3740752 tp!1714975)))

(declare-fun b!6137860 () Bool)

(assert (=> b!6137860 (= e!3740752 tp_is_empty!41413)))

(declare-fun b!6137863 () Bool)

(declare-fun tp!1714973 () Bool)

(declare-fun tp!1714976 () Bool)

(assert (=> b!6137863 (= e!3740752 (and tp!1714973 tp!1714976))))

(assert (= (and b!6136940 (is-ElementMatch!16080 (regOne!32673 (regTwo!32673 r!7292)))) b!6137860))

(assert (= (and b!6136940 (is-Concat!24925 (regOne!32673 (regTwo!32673 r!7292)))) b!6137861))

(assert (= (and b!6136940 (is-Star!16080 (regOne!32673 (regTwo!32673 r!7292)))) b!6137862))

(assert (= (and b!6136940 (is-Union!16080 (regOne!32673 (regTwo!32673 r!7292)))) b!6137863))

(declare-fun b!6137865 () Bool)

(declare-fun e!3740753 () Bool)

(declare-fun tp!1714982 () Bool)

(declare-fun tp!1714979 () Bool)

(assert (=> b!6137865 (= e!3740753 (and tp!1714982 tp!1714979))))

(assert (=> b!6136940 (= tp!1714795 e!3740753)))

(declare-fun b!6137866 () Bool)

(declare-fun tp!1714980 () Bool)

(assert (=> b!6137866 (= e!3740753 tp!1714980)))

(declare-fun b!6137864 () Bool)

(assert (=> b!6137864 (= e!3740753 tp_is_empty!41413)))

(declare-fun b!6137867 () Bool)

(declare-fun tp!1714978 () Bool)

(declare-fun tp!1714981 () Bool)

(assert (=> b!6137867 (= e!3740753 (and tp!1714978 tp!1714981))))

(assert (= (and b!6136940 (is-ElementMatch!16080 (regTwo!32673 (regTwo!32673 r!7292)))) b!6137864))

(assert (= (and b!6136940 (is-Concat!24925 (regTwo!32673 (regTwo!32673 r!7292)))) b!6137865))

(assert (= (and b!6136940 (is-Star!16080 (regTwo!32673 (regTwo!32673 r!7292)))) b!6137866))

(assert (= (and b!6136940 (is-Union!16080 (regTwo!32673 (regTwo!32673 r!7292)))) b!6137867))

(declare-fun b!6137868 () Bool)

(declare-fun e!3740754 () Bool)

(declare-fun tp!1714983 () Bool)

(declare-fun tp!1714984 () Bool)

(assert (=> b!6137868 (= e!3740754 (and tp!1714983 tp!1714984))))

(assert (=> b!6136918 (= tp!1714768 e!3740754)))

(assert (= (and b!6136918 (is-Cons!64415 (exprs!5964 setElem!41499))) b!6137868))

(declare-fun b!6137870 () Bool)

(declare-fun e!3740755 () Bool)

(declare-fun tp!1714989 () Bool)

(declare-fun tp!1714986 () Bool)

(assert (=> b!6137870 (= e!3740755 (and tp!1714989 tp!1714986))))

(assert (=> b!6136926 (= tp!1714774 e!3740755)))

(declare-fun b!6137871 () Bool)

(declare-fun tp!1714987 () Bool)

(assert (=> b!6137871 (= e!3740755 tp!1714987)))

(declare-fun b!6137869 () Bool)

(assert (=> b!6137869 (= e!3740755 tp_is_empty!41413)))

(declare-fun b!6137872 () Bool)

(declare-fun tp!1714985 () Bool)

(declare-fun tp!1714988 () Bool)

(assert (=> b!6137872 (= e!3740755 (and tp!1714985 tp!1714988))))

(assert (= (and b!6136926 (is-ElementMatch!16080 (regOne!32673 (regTwo!32672 r!7292)))) b!6137869))

(assert (= (and b!6136926 (is-Concat!24925 (regOne!32673 (regTwo!32672 r!7292)))) b!6137870))

(assert (= (and b!6136926 (is-Star!16080 (regOne!32673 (regTwo!32672 r!7292)))) b!6137871))

(assert (= (and b!6136926 (is-Union!16080 (regOne!32673 (regTwo!32672 r!7292)))) b!6137872))

(declare-fun b!6137874 () Bool)

(declare-fun e!3740756 () Bool)

(declare-fun tp!1714994 () Bool)

(declare-fun tp!1714991 () Bool)

(assert (=> b!6137874 (= e!3740756 (and tp!1714994 tp!1714991))))

(assert (=> b!6136926 (= tp!1714777 e!3740756)))

(declare-fun b!6137875 () Bool)

(declare-fun tp!1714992 () Bool)

(assert (=> b!6137875 (= e!3740756 tp!1714992)))

(declare-fun b!6137873 () Bool)

(assert (=> b!6137873 (= e!3740756 tp_is_empty!41413)))

(declare-fun b!6137876 () Bool)

(declare-fun tp!1714990 () Bool)

(declare-fun tp!1714993 () Bool)

(assert (=> b!6137876 (= e!3740756 (and tp!1714990 tp!1714993))))

(assert (= (and b!6136926 (is-ElementMatch!16080 (regTwo!32673 (regTwo!32672 r!7292)))) b!6137873))

(assert (= (and b!6136926 (is-Concat!24925 (regTwo!32673 (regTwo!32672 r!7292)))) b!6137874))

(assert (= (and b!6136926 (is-Star!16080 (regTwo!32673 (regTwo!32672 r!7292)))) b!6137875))

(assert (= (and b!6136926 (is-Union!16080 (regTwo!32673 (regTwo!32672 r!7292)))) b!6137876))

(declare-fun b!6137878 () Bool)

(declare-fun e!3740757 () Bool)

(declare-fun tp!1714999 () Bool)

(declare-fun tp!1714996 () Bool)

(assert (=> b!6137878 (= e!3740757 (and tp!1714999 tp!1714996))))

(assert (=> b!6136924 (= tp!1714778 e!3740757)))

(declare-fun b!6137879 () Bool)

(declare-fun tp!1714997 () Bool)

(assert (=> b!6137879 (= e!3740757 tp!1714997)))

(declare-fun b!6137877 () Bool)

(assert (=> b!6137877 (= e!3740757 tp_is_empty!41413)))

(declare-fun b!6137880 () Bool)

(declare-fun tp!1714995 () Bool)

(declare-fun tp!1714998 () Bool)

(assert (=> b!6137880 (= e!3740757 (and tp!1714995 tp!1714998))))

(assert (= (and b!6136924 (is-ElementMatch!16080 (regOne!32672 (regTwo!32672 r!7292)))) b!6137877))

(assert (= (and b!6136924 (is-Concat!24925 (regOne!32672 (regTwo!32672 r!7292)))) b!6137878))

(assert (= (and b!6136924 (is-Star!16080 (regOne!32672 (regTwo!32672 r!7292)))) b!6137879))

(assert (= (and b!6136924 (is-Union!16080 (regOne!32672 (regTwo!32672 r!7292)))) b!6137880))

(declare-fun b!6137882 () Bool)

(declare-fun e!3740758 () Bool)

(declare-fun tp!1715004 () Bool)

(declare-fun tp!1715001 () Bool)

(assert (=> b!6137882 (= e!3740758 (and tp!1715004 tp!1715001))))

(assert (=> b!6136924 (= tp!1714775 e!3740758)))

(declare-fun b!6137883 () Bool)

(declare-fun tp!1715002 () Bool)

(assert (=> b!6137883 (= e!3740758 tp!1715002)))

(declare-fun b!6137881 () Bool)

(assert (=> b!6137881 (= e!3740758 tp_is_empty!41413)))

(declare-fun b!6137884 () Bool)

(declare-fun tp!1715000 () Bool)

(declare-fun tp!1715003 () Bool)

(assert (=> b!6137884 (= e!3740758 (and tp!1715000 tp!1715003))))

(assert (= (and b!6136924 (is-ElementMatch!16080 (regTwo!32672 (regTwo!32672 r!7292)))) b!6137881))

(assert (= (and b!6136924 (is-Concat!24925 (regTwo!32672 (regTwo!32672 r!7292)))) b!6137882))

(assert (= (and b!6136924 (is-Star!16080 (regTwo!32672 (regTwo!32672 r!7292)))) b!6137883))

(assert (= (and b!6136924 (is-Union!16080 (regTwo!32672 (regTwo!32672 r!7292)))) b!6137884))

(declare-fun b!6137886 () Bool)

(declare-fun e!3740759 () Bool)

(declare-fun tp!1715009 () Bool)

(declare-fun tp!1715006 () Bool)

(assert (=> b!6137886 (= e!3740759 (and tp!1715009 tp!1715006))))

(assert (=> b!6136939 (= tp!1714794 e!3740759)))

(declare-fun b!6137887 () Bool)

(declare-fun tp!1715007 () Bool)

(assert (=> b!6137887 (= e!3740759 tp!1715007)))

(declare-fun b!6137885 () Bool)

(assert (=> b!6137885 (= e!3740759 tp_is_empty!41413)))

(declare-fun b!6137888 () Bool)

(declare-fun tp!1715005 () Bool)

(declare-fun tp!1715008 () Bool)

(assert (=> b!6137888 (= e!3740759 (and tp!1715005 tp!1715008))))

(assert (= (and b!6136939 (is-ElementMatch!16080 (reg!16409 (regTwo!32673 r!7292)))) b!6137885))

(assert (= (and b!6136939 (is-Concat!24925 (reg!16409 (regTwo!32673 r!7292)))) b!6137886))

(assert (= (and b!6136939 (is-Star!16080 (reg!16409 (regTwo!32673 r!7292)))) b!6137887))

(assert (= (and b!6136939 (is-Union!16080 (reg!16409 (regTwo!32673 r!7292)))) b!6137888))

(declare-fun condSetEmpty!41507 () Bool)

(assert (=> setNonEmpty!41499 (= condSetEmpty!41507 (= setRest!41499 (as set.empty (Set Context!10928))))))

(declare-fun setRes!41507 () Bool)

(assert (=> setNonEmpty!41499 (= tp!1714767 setRes!41507)))

(declare-fun setIsEmpty!41507 () Bool)

(assert (=> setIsEmpty!41507 setRes!41507))

(declare-fun tp!1715010 () Bool)

(declare-fun setElem!41507 () Context!10928)

(declare-fun e!3740760 () Bool)

(declare-fun setNonEmpty!41507 () Bool)

(assert (=> setNonEmpty!41507 (= setRes!41507 (and tp!1715010 (inv!83448 setElem!41507) e!3740760))))

(declare-fun setRest!41507 () (Set Context!10928))

(assert (=> setNonEmpty!41507 (= setRest!41499 (set.union (set.insert setElem!41507 (as set.empty (Set Context!10928))) setRest!41507))))

(declare-fun b!6137889 () Bool)

(declare-fun tp!1715011 () Bool)

(assert (=> b!6137889 (= e!3740760 tp!1715011)))

(assert (= (and setNonEmpty!41499 condSetEmpty!41507) setIsEmpty!41507))

(assert (= (and setNonEmpty!41499 (not condSetEmpty!41507)) setNonEmpty!41507))

(assert (= setNonEmpty!41507 b!6137889))

(declare-fun m!6979894 () Bool)

(assert (=> setNonEmpty!41507 m!6979894))

(declare-fun b!6137891 () Bool)

(declare-fun e!3740761 () Bool)

(declare-fun tp!1715016 () Bool)

(declare-fun tp!1715013 () Bool)

(assert (=> b!6137891 (= e!3740761 (and tp!1715016 tp!1715013))))

(assert (=> b!6136925 (= tp!1714776 e!3740761)))

(declare-fun b!6137892 () Bool)

(declare-fun tp!1715014 () Bool)

(assert (=> b!6137892 (= e!3740761 tp!1715014)))

(declare-fun b!6137890 () Bool)

(assert (=> b!6137890 (= e!3740761 tp_is_empty!41413)))

(declare-fun b!6137893 () Bool)

(declare-fun tp!1715012 () Bool)

(declare-fun tp!1715015 () Bool)

(assert (=> b!6137893 (= e!3740761 (and tp!1715012 tp!1715015))))

(assert (= (and b!6136925 (is-ElementMatch!16080 (reg!16409 (regTwo!32672 r!7292)))) b!6137890))

(assert (= (and b!6136925 (is-Concat!24925 (reg!16409 (regTwo!32672 r!7292)))) b!6137891))

(assert (= (and b!6136925 (is-Star!16080 (reg!16409 (regTwo!32672 r!7292)))) b!6137892))

(assert (= (and b!6136925 (is-Union!16080 (reg!16409 (regTwo!32672 r!7292)))) b!6137893))

(declare-fun b_lambda!233601 () Bool)

(assert (= b_lambda!233587 (or d!1922678 b_lambda!233601)))

(declare-fun bs!1522125 () Bool)

(declare-fun d!1923006 () Bool)

(assert (= bs!1522125 (and d!1923006 d!1922678)))

(assert (=> bs!1522125 (= (dynLambda!25383 lambda!334429 (h!70863 (exprs!5964 lt!2332553))) (validRegex!7816 (h!70863 (exprs!5964 lt!2332553))))))

(declare-fun m!6979896 () Bool)

(assert (=> bs!1522125 m!6979896))

(assert (=> b!6137324 d!1923006))

(declare-fun b_lambda!233603 () Bool)

(assert (= b_lambda!233591 (or d!1922664 b_lambda!233603)))

(declare-fun bs!1522126 () Bool)

(declare-fun d!1923008 () Bool)

(assert (= bs!1522126 (and d!1923008 d!1922664)))

(assert (=> bs!1522126 (= (dynLambda!25383 lambda!334428 (h!70863 (exprs!5964 setElem!41493))) (validRegex!7816 (h!70863 (exprs!5964 setElem!41493))))))

(declare-fun m!6979898 () Bool)

(assert (=> bs!1522126 m!6979898))

(assert (=> b!6137491 d!1923008))

(declare-fun b_lambda!233605 () Bool)

(assert (= b_lambda!233595 (or d!1922660 b_lambda!233605)))

(declare-fun bs!1522127 () Bool)

(declare-fun d!1923010 () Bool)

(assert (= bs!1522127 (and d!1923010 d!1922660)))

(assert (=> bs!1522127 (= (dynLambda!25383 lambda!334424 (h!70863 (unfocusZipperList!1501 zl!343))) (validRegex!7816 (h!70863 (unfocusZipperList!1501 zl!343))))))

(declare-fun m!6979900 () Bool)

(assert (=> bs!1522127 m!6979900))

(assert (=> b!6137592 d!1923010))

(declare-fun b_lambda!233607 () Bool)

(assert (= b_lambda!233589 (or d!1922600 b_lambda!233607)))

(declare-fun bs!1522128 () Bool)

(declare-fun d!1923012 () Bool)

(assert (= bs!1522128 (and d!1923012 d!1922600)))

(assert (=> bs!1522128 (= (dynLambda!25383 lambda!334406 (h!70863 (exprs!5964 (h!70864 zl!343)))) (validRegex!7816 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(declare-fun m!6979902 () Bool)

(assert (=> bs!1522128 m!6979902))

(assert (=> b!6137331 d!1923012))

(declare-fun b_lambda!233609 () Bool)

(assert (= b_lambda!233585 (or b!6136452 b_lambda!233609)))

(assert (=> d!1922772 d!1922684))

(declare-fun b_lambda!233611 () Bool)

(assert (= b_lambda!233593 (or d!1922662 b_lambda!233611)))

(declare-fun bs!1522129 () Bool)

(declare-fun d!1923014 () Bool)

(assert (= bs!1522129 (and d!1923014 d!1922662)))

(assert (=> bs!1522129 (= (dynLambda!25383 lambda!334427 (h!70863 lt!2332653)) (validRegex!7816 (h!70863 lt!2332653)))))

(declare-fun m!6979904 () Bool)

(assert (=> bs!1522129 m!6979904))

(assert (=> b!6137570 d!1923014))

(declare-fun b_lambda!233613 () Bool)

(assert (= b_lambda!233597 (or b!6136452 b_lambda!233613)))

(assert (=> d!1922954 d!1922682))

(declare-fun b_lambda!233615 () Bool)

(assert (= b_lambda!233599 (or d!1922680 b_lambda!233615)))

(declare-fun bs!1522130 () Bool)

(declare-fun d!1923016 () Bool)

(assert (= bs!1522130 (and d!1923016 d!1922680)))

(assert (=> bs!1522130 (= (dynLambda!25383 lambda!334432 (h!70863 (exprs!5964 (h!70864 zl!343)))) (validRegex!7816 (h!70863 (exprs!5964 (h!70864 zl!343)))))))

(assert (=> bs!1522130 m!6979902))

(assert (=> b!6137710 d!1923016))

(push 1)

(assert (not b!6137732))

(assert (not b!6137396))

(assert (not d!1922894))

(assert (not bm!509481))

(assert (not b!6137711))

(assert (not b!6137606))

(assert (not bm!509515))

(assert (not b!6137818))

(assert (not b!6137474))

(assert (not d!1922796))

(assert (not d!1922996))

(assert (not b!6137891))

(assert (not b!6137832))

(assert (not bm!509442))

(assert (not b!6137837))

(assert (not d!1922864))

(assert (not bm!509437))

(assert (not b!6137723))

(assert (not d!1922808))

(assert (not b!6137892))

(assert (not b!6137679))

(assert (not b_lambda!233611))

(assert (not bm!509511))

(assert (not b!6137366))

(assert (not b!6137593))

(assert (not bm!509507))

(assert (not b!6137620))

(assert (not b!6137535))

(assert (not b!6137863))

(assert (not bm!509440))

(assert (not b!6137845))

(assert (not b!6137482))

(assert (not d!1922940))

(assert (not b!6137687))

(assert (not d!1922970))

(assert (not b!6137325))

(assert (not d!1922946))

(assert (not b!6137666))

(assert (not b!6137616))

(assert (not b!6137523))

(assert (not d!1922844))

(assert (not b!6137792))

(assert (not b!6137330))

(assert (not b_lambda!233603))

(assert (not b!6137327))

(assert (not b!6137801))

(assert (not b!6137809))

(assert (not b!6137781))

(assert (not b!6137880))

(assert (not b!6137813))

(assert (not b!6137631))

(assert (not b!6137559))

(assert (not b!6137614))

(assert (not b!6137572))

(assert (not bm!509496))

(assert (not bm!509436))

(assert (not d!1922868))

(assert (not b!6137841))

(assert (not b!6137865))

(assert (not b!6137492))

(assert (not b!6137887))

(assert (not b!6137417))

(assert (not bm!509448))

(assert (not b!6137786))

(assert (not bm!509516))

(assert (not bm!509408))

(assert (not bm!509425))

(assert (not b!6137719))

(assert (not b!6137693))

(assert (not b!6137888))

(assert (not b!6137420))

(assert (not b!6137790))

(assert (not b!6137806))

(assert (not b!6137522))

(assert (not d!1922832))

(assert (not b!6137856))

(assert (not b!6137776))

(assert (not bm!509411))

(assert (not b!6137451))

(assert (not bm!509410))

(assert (not b!6137524))

(assert (not b!6137427))

(assert (not bm!509495))

(assert (not b_lambda!233615))

(assert (not b_lambda!233609))

(assert (not b!6137484))

(assert (not bm!509426))

(assert (not bm!509508))

(assert (not d!1922926))

(assert (not d!1922890))

(assert (not d!1922954))

(assert (not b!6137844))

(assert (not bm!509483))

(assert (not d!1922942))

(assert (not b!6137715))

(assert (not b!6137766))

(assert (not bm!509439))

(assert (not bs!1522130))

(assert (not b!6137853))

(assert (not b!6137833))

(assert (not bm!509428))

(assert (not d!1922924))

(assert (not d!1922876))

(assert (not d!1922904))

(assert (not b!6137828))

(assert (not b!6137434))

(assert (not b!6137829))

(assert (not bm!509413))

(assert (not bm!509506))

(assert (not b!6137777))

(assert (not b!6137866))

(assert (not b!6137369))

(assert (not b!6137779))

(assert (not bm!509471))

(assert (not b!6137782))

(assert (not b!6137613))

(assert (not bm!509469))

(assert (not d!1922786))

(assert (not b!6137438))

(assert (not d!1922998))

(assert (not b!6137426))

(assert (not b!6137862))

(assert (not bm!509423))

(assert (not d!1922820))

(assert (not d!1922936))

(assert (not bm!509414))

(assert (not d!1922900))

(assert (not b!6137622))

(assert (not b!6137754))

(assert (not d!1922822))

(assert (not bm!509427))

(assert (not bm!509480))

(assert (not bm!509459))

(assert (not bm!509503))

(assert (not bm!509501))

(assert (not bm!509498))

(assert (not b!6137822))

(assert (not d!1922810))

(assert (not d!1922836))

(assert (not b!6137834))

(assert (not b!6137875))

(assert (not b!6137773))

(assert (not b!6137483))

(assert (not b!6137584))

(assert (not bm!509466))

(assert (not b!6137399))

(assert (not b!6137476))

(assert (not d!1922842))

(assert (not b!6137731))

(assert (not b!6137879))

(assert (not b!6137850))

(assert (not b!6137817))

(assert (not b!6137852))

(assert (not d!1922798))

(assert (not b!6137784))

(assert (not b!6137772))

(assert (not d!1922912))

(assert (not b!6137810))

(assert (not b!6137632))

(assert (not b!6137485))

(assert (not bm!509460))

(assert (not d!1922956))

(assert (not d!1922984))

(assert (not b!6137686))

(assert (not b!6137848))

(assert (not d!1922978))

(assert (not b!6137548))

(assert (not b!6137404))

(assert (not d!1922906))

(assert (not b_lambda!233613))

(assert (not d!1922856))

(assert (not b_lambda!233601))

(assert (not setNonEmpty!41505))

(assert (not d!1923000))

(assert (not d!1922860))

(assert (not b!6137816))

(assert (not b!6137397))

(assert (not d!1922882))

(assert (not b!6137685))

(assert (not b!6137774))

(assert (not b!6137750))

(assert (not bm!509463))

(assert (not b!6137802))

(assert (not b!6137612))

(assert (not b!6137824))

(assert (not bm!509504))

(assert (not d!1922988))

(assert (not b!6137720))

(assert (not b!6137429))

(assert (not bm!509420))

(assert (not b!6137771))

(assert (not b!6137473))

(assert (not b!6137826))

(assert (not d!1922948))

(assert (not b!6137886))

(assert (not b!6137718))

(assert (not bm!509451))

(assert (not b!6137788))

(assert (not b!6137872))

(assert (not b!6137688))

(assert (not b!6137870))

(assert (not b!6137401))

(assert (not b!6137849))

(assert (not b!6137884))

(assert (not b!6137859))

(assert (not b!6137874))

(assert (not b!6137486))

(assert (not d!1922880))

(assert (not b!6137619))

(assert (not bs!1522127))

(assert (not d!1922952))

(assert (not bm!509497))

(assert (not b_lambda!233605))

(assert (not b!6137889))

(assert (not b!6137814))

(assert (not b!6137716))

(assert (not bm!509472))

(assert (not b!6137433))

(assert (not b!6137830))

(assert (not b!6137820))

(assert (not b_lambda!233573))

(assert (not d!1923004))

(assert (not b!6137854))

(assert (not b!6137702))

(assert (not d!1922804))

(assert (not b!6137402))

(assert (not d!1922878))

(assert (not d!1922982))

(assert (not b_lambda!233607))

(assert (not d!1923002))

(assert (not bm!509474))

(assert (not d!1922812))

(assert (not b!6137842))

(assert (not b!6137661))

(assert (not b!6137689))

(assert (not b!6137430))

(assert (not b!6137867))

(assert (not b!6137878))

(assert (not b!6137374))

(assert (not b!6137734))

(assert (not b!6137630))

(assert (not b!6137805))

(assert (not b!6137443))

(assert (not bs!1522129))

(assert (not b!6137615))

(assert (not b!6137785))

(assert (not b!6137571))

(assert (not b!6137629))

(assert (not b!6137489))

(assert (not b!6137594))

(assert (not bm!509417))

(assert (not b!6137893))

(assert (not b!6137353))

(assert (not b!6137441))

(assert (not b!6137797))

(assert (not b!6137738))

(assert (not d!1922992))

(assert (not bm!509454))

(assert (not bs!1522125))

(assert (not b!6137446))

(assert (not d!1922800))

(assert (not bm!509478))

(assert (not d!1922772))

(assert (not b!6137326))

(assert (not b!6137871))

(assert (not b!6137667))

(assert (not b!6137796))

(assert (not bm!509441))

(assert (not b!6137821))

(assert (not b!6137808))

(assert (not d!1922830))

(assert tp_is_empty!41413)

(assert (not bm!509500))

(assert (not b!6137628))

(assert (not b!6137789))

(assert (not bm!509457))

(assert (not b!6137835))

(assert (not b!6137882))

(assert (not b!6137847))

(assert (not b!6137448))

(assert (not bm!509453))

(assert (not b!6137521))

(assert (not bm!509445))

(assert (not bm!509429))

(assert (not b!6137494))

(assert (not b!6137332))

(assert (not setNonEmpty!41506))

(assert (not b!6137843))

(assert (not d!1922884))

(assert (not bm!509435))

(assert (not bm!509475))

(assert (not b!6137793))

(assert (not bm!509447))

(assert (not d!1922950))

(assert (not b!6137490))

(assert (not bm!509493))

(assert (not b!6137385))

(assert (not bm!509419))

(assert (not bm!509513))

(assert (not b!6137717))

(assert (not bm!509482))

(assert (not b!6137546))

(assert (not b!6137798))

(assert (not b!6137838))

(assert (not b!6137812))

(assert (not b!6137825))

(assert (not b!6137858))

(assert (not b!6137737))

(assert (not b!6137794))

(assert (not b_lambda!233575))

(assert (not bs!1522128))

(assert (not b!6137763))

(assert (not b!6137767))

(assert (not b!6137665))

(assert (not b!6137514))

(assert (not b!6137780))

(assert (not b!6137749))

(assert (not d!1922784))

(assert (not bs!1522126))

(assert (not bm!509430))

(assert (not bm!509514))

(assert (not b!6137405))

(assert (not b!6137762))

(assert (not b!6137416))

(assert (not b!6137333))

(assert (not b!6137671))

(assert (not b!6137428))

(assert (not b!6137883))

(assert (not b!6137800))

(assert (not b!6137868))

(assert (not b!6137721))

(assert (not b!6137876))

(assert (not b!6137839))

(assert (not d!1922776))

(assert (not bm!509465))

(assert (not b!6137804))

(assert (not b!6137861))

(assert (not d!1922934))

(assert (not b!6137513))

(assert (not setNonEmpty!41507))

(assert (not b!6137857))

(assert (not b!6137398))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

