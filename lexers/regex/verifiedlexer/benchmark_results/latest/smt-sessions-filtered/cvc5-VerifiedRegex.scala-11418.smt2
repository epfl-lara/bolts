; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!613176 () Bool)

(assert start!613176)

(declare-fun b!6138552 () Bool)

(assert (=> b!6138552 true))

(assert (=> b!6138552 true))

(declare-fun lambda!334541 () Int)

(declare-fun lambda!334540 () Int)

(assert (=> b!6138552 (not (= lambda!334541 lambda!334540))))

(assert (=> b!6138552 true))

(assert (=> b!6138552 true))

(declare-fun b!6138541 () Bool)

(assert (=> b!6138541 true))

(declare-fun b!6138538 () Bool)

(declare-fun e!3741121 () Bool)

(declare-datatypes ((C!32434 0))(
  ( (C!32435 (val!25919 Int)) )
))
(declare-datatypes ((Regex!16082 0))(
  ( (ElementMatch!16082 (c!1104020 C!32434)) (Concat!24927 (regOne!32676 Regex!16082) (regTwo!32676 Regex!16082)) (EmptyExpr!16082) (Star!16082 (reg!16411 Regex!16082)) (EmptyLang!16082) (Union!16082 (regOne!32677 Regex!16082) (regTwo!32677 Regex!16082)) )
))
(declare-datatypes ((List!64545 0))(
  ( (Nil!64421) (Cons!64421 (h!70869 Regex!16082) (t!378022 List!64545)) )
))
(declare-datatypes ((Context!10932 0))(
  ( (Context!10933 (exprs!5966 List!64545)) )
))
(declare-datatypes ((List!64546 0))(
  ( (Nil!64422) (Cons!64422 (h!70870 Context!10932) (t!378023 List!64546)) )
))
(declare-fun zl!343 () List!64546)

(declare-fun e!3741135 () Bool)

(declare-fun tp!1715206 () Bool)

(declare-fun inv!83453 (Context!10932) Bool)

(assert (=> b!6138538 (= e!3741135 (and (inv!83453 (h!70870 zl!343)) e!3741121 tp!1715206))))

(declare-fun b!6138539 () Bool)

(declare-fun tp!1715202 () Bool)

(assert (=> b!6138539 (= e!3741121 tp!1715202)))

(declare-fun b!6138540 () Bool)

(declare-fun e!3741128 () Bool)

(declare-fun tp!1715203 () Bool)

(assert (=> b!6138540 (= e!3741128 tp!1715203)))

(declare-fun e!3741130 () Bool)

(declare-fun e!3741123 () Bool)

(assert (=> b!6138541 (= e!3741130 e!3741123)))

(declare-fun res!2543603 () Bool)

(assert (=> b!6138541 (=> res!2543603 e!3741123)))

(declare-fun r!7292 () Regex!16082)

(declare-datatypes ((List!64547 0))(
  ( (Nil!64423) (Cons!64423 (h!70871 C!32434) (t!378024 List!64547)) )
))
(declare-fun s!2326 () List!64547)

(assert (=> b!6138541 (= res!2543603 (or (and (is-ElementMatch!16082 (regOne!32676 r!7292)) (= (c!1104020 (regOne!32676 r!7292)) (h!70871 s!2326))) (not (is-Union!16082 (regOne!32676 r!7292)))))))

(declare-datatypes ((Unit!157483 0))(
  ( (Unit!157484) )
))
(declare-fun lt!2332793 () Unit!157483)

(declare-fun e!3741124 () Unit!157483)

(assert (=> b!6138541 (= lt!2332793 e!3741124)))

(declare-fun c!1104019 () Bool)

(declare-fun nullable!6075 (Regex!16082) Bool)

(assert (=> b!6138541 (= c!1104019 (nullable!6075 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun lambda!334542 () Int)

(declare-fun z!1189 () (Set Context!10932))

(declare-fun flatMap!1587 ((Set Context!10932) Int) (Set Context!10932))

(declare-fun derivationStepZipperUp!1256 (Context!10932 C!32434) (Set Context!10932))

(assert (=> b!6138541 (= (flatMap!1587 z!1189 lambda!334542) (derivationStepZipperUp!1256 (h!70870 zl!343) (h!70871 s!2326)))))

(declare-fun lt!2332802 () Unit!157483)

(declare-fun lemmaFlatMapOnSingletonSet!1113 ((Set Context!10932) Context!10932 Int) Unit!157483)

(assert (=> b!6138541 (= lt!2332802 (lemmaFlatMapOnSingletonSet!1113 z!1189 (h!70870 zl!343) lambda!334542))))

(declare-fun lt!2332797 () (Set Context!10932))

(declare-fun lt!2332796 () Context!10932)

(assert (=> b!6138541 (= lt!2332797 (derivationStepZipperUp!1256 lt!2332796 (h!70871 s!2326)))))

(declare-fun lt!2332806 () (Set Context!10932))

(declare-fun derivationStepZipperDown!1330 (Regex!16082 Context!10932 C!32434) (Set Context!10932))

(assert (=> b!6138541 (= lt!2332806 (derivationStepZipperDown!1330 (h!70869 (exprs!5966 (h!70870 zl!343))) lt!2332796 (h!70871 s!2326)))))

(assert (=> b!6138541 (= lt!2332796 (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun lt!2332795 () (Set Context!10932))

(assert (=> b!6138541 (= lt!2332795 (derivationStepZipperUp!1256 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))) (h!70871 s!2326)))))

(declare-fun res!2543600 () Bool)

(declare-fun e!3741129 () Bool)

(assert (=> start!613176 (=> (not res!2543600) (not e!3741129))))

(declare-fun validRegex!7818 (Regex!16082) Bool)

(assert (=> start!613176 (= res!2543600 (validRegex!7818 r!7292))))

(assert (=> start!613176 e!3741129))

(declare-fun e!3741134 () Bool)

(assert (=> start!613176 e!3741134))

(declare-fun condSetEmpty!41515 () Bool)

(assert (=> start!613176 (= condSetEmpty!41515 (= z!1189 (as set.empty (Set Context!10932))))))

(declare-fun setRes!41515 () Bool)

(assert (=> start!613176 setRes!41515))

(assert (=> start!613176 e!3741135))

(declare-fun e!3741132 () Bool)

(assert (=> start!613176 e!3741132))

(declare-fun b!6138542 () Bool)

(declare-fun e!3741127 () Bool)

(assert (=> b!6138542 (= e!3741123 e!3741127)))

(declare-fun res!2543591 () Bool)

(assert (=> b!6138542 (=> res!2543591 e!3741127)))

(declare-fun lt!2332794 () (Set Context!10932))

(assert (=> b!6138542 (= res!2543591 (not (= lt!2332806 lt!2332794)))))

(declare-fun lt!2332805 () (Set Context!10932))

(declare-fun lt!2332811 () (Set Context!10932))

(assert (=> b!6138542 (= lt!2332794 (set.union lt!2332805 lt!2332811))))

(assert (=> b!6138542 (= lt!2332811 (derivationStepZipperDown!1330 (regTwo!32677 (regOne!32676 r!7292)) lt!2332796 (h!70871 s!2326)))))

(assert (=> b!6138542 (= lt!2332805 (derivationStepZipperDown!1330 (regOne!32677 (regOne!32676 r!7292)) lt!2332796 (h!70871 s!2326)))))

(declare-fun b!6138543 () Bool)

(declare-fun res!2543608 () Bool)

(declare-fun e!3741125 () Bool)

(assert (=> b!6138543 (=> res!2543608 e!3741125)))

(assert (=> b!6138543 (= res!2543608 (not (is-Cons!64421 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun b!6138544 () Bool)

(declare-fun tp_is_empty!41417 () Bool)

(declare-fun tp!1715205 () Bool)

(assert (=> b!6138544 (= e!3741132 (and tp_is_empty!41417 tp!1715205))))

(declare-fun b!6138545 () Bool)

(declare-fun tp!1715199 () Bool)

(declare-fun tp!1715200 () Bool)

(assert (=> b!6138545 (= e!3741134 (and tp!1715199 tp!1715200))))

(declare-fun b!6138546 () Bool)

(declare-fun tp!1715201 () Bool)

(assert (=> b!6138546 (= e!3741134 tp!1715201)))

(declare-fun b!6138547 () Bool)

(declare-fun tp!1715207 () Bool)

(declare-fun tp!1715204 () Bool)

(assert (=> b!6138547 (= e!3741134 (and tp!1715207 tp!1715204))))

(declare-fun b!6138548 () Bool)

(declare-fun e!3741133 () Bool)

(assert (=> b!6138548 (= e!3741127 e!3741133)))

(declare-fun res!2543594 () Bool)

(assert (=> b!6138548 (=> res!2543594 e!3741133)))

(declare-fun e!3741120 () Bool)

(assert (=> b!6138548 (= res!2543594 e!3741120)))

(declare-fun res!2543604 () Bool)

(assert (=> b!6138548 (=> (not res!2543604) (not e!3741120))))

(declare-fun lt!2332801 () Bool)

(declare-fun matchZipper!2094 ((Set Context!10932) List!64547) Bool)

(assert (=> b!6138548 (= res!2543604 (not (= (matchZipper!2094 lt!2332806 (t!378024 s!2326)) lt!2332801)))))

(declare-fun e!3741131 () Bool)

(assert (=> b!6138548 (= (matchZipper!2094 lt!2332794 (t!378024 s!2326)) e!3741131)))

(declare-fun res!2543606 () Bool)

(assert (=> b!6138548 (=> res!2543606 e!3741131)))

(assert (=> b!6138548 (= res!2543606 lt!2332801)))

(assert (=> b!6138548 (= lt!2332801 (matchZipper!2094 lt!2332805 (t!378024 s!2326)))))

(declare-fun lt!2332799 () Unit!157483)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!913 ((Set Context!10932) (Set Context!10932) List!64547) Unit!157483)

(assert (=> b!6138548 (= lt!2332799 (lemmaZipperConcatMatchesSameAsBothZippers!913 lt!2332805 lt!2332811 (t!378024 s!2326)))))

(declare-fun b!6138549 () Bool)

(declare-fun Unit!157485 () Unit!157483)

(assert (=> b!6138549 (= e!3741124 Unit!157485)))

(declare-fun lt!2332800 () Unit!157483)

(assert (=> b!6138549 (= lt!2332800 (lemmaZipperConcatMatchesSameAsBothZippers!913 lt!2332806 lt!2332797 (t!378024 s!2326)))))

(declare-fun res!2543596 () Bool)

(assert (=> b!6138549 (= res!2543596 (matchZipper!2094 lt!2332806 (t!378024 s!2326)))))

(declare-fun e!3741122 () Bool)

(assert (=> b!6138549 (=> res!2543596 e!3741122)))

(assert (=> b!6138549 (= (matchZipper!2094 (set.union lt!2332806 lt!2332797) (t!378024 s!2326)) e!3741122)))

(declare-fun setIsEmpty!41515 () Bool)

(assert (=> setIsEmpty!41515 setRes!41515))

(declare-fun b!6138550 () Bool)

(declare-fun e!3741126 () Bool)

(assert (=> b!6138550 (= e!3741126 (inv!83453 lt!2332796))))

(declare-fun b!6138551 () Bool)

(declare-fun res!2543598 () Bool)

(assert (=> b!6138551 (=> res!2543598 e!3741125)))

(declare-fun generalisedConcat!1679 (List!64545) Regex!16082)

(assert (=> b!6138551 (= res!2543598 (not (= r!7292 (generalisedConcat!1679 (exprs!5966 (h!70870 zl!343))))))))

(assert (=> b!6138552 (= e!3741125 e!3741130)))

(declare-fun res!2543597 () Bool)

(assert (=> b!6138552 (=> res!2543597 e!3741130)))

(declare-fun lt!2332792 () Bool)

(declare-fun lt!2332798 () Bool)

(assert (=> b!6138552 (= res!2543597 (or (not (= lt!2332792 lt!2332798)) (is-Nil!64423 s!2326)))))

(declare-fun Exists!3152 (Int) Bool)

(assert (=> b!6138552 (= (Exists!3152 lambda!334540) (Exists!3152 lambda!334541))))

(declare-fun lt!2332803 () Unit!157483)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1689 (Regex!16082 Regex!16082 List!64547) Unit!157483)

(assert (=> b!6138552 (= lt!2332803 (lemmaExistCutMatchRandMatchRSpecEquivalent!1689 (regOne!32676 r!7292) (regTwo!32676 r!7292) s!2326))))

(assert (=> b!6138552 (= lt!2332798 (Exists!3152 lambda!334540))))

(declare-datatypes ((tuple2!66122 0))(
  ( (tuple2!66123 (_1!36364 List!64547) (_2!36364 List!64547)) )
))
(declare-datatypes ((Option!15973 0))(
  ( (None!15972) (Some!15972 (v!52111 tuple2!66122)) )
))
(declare-fun isDefined!12676 (Option!15973) Bool)

(declare-fun findConcatSeparation!2387 (Regex!16082 Regex!16082 List!64547 List!64547 List!64547) Option!15973)

(assert (=> b!6138552 (= lt!2332798 (isDefined!12676 (findConcatSeparation!2387 (regOne!32676 r!7292) (regTwo!32676 r!7292) Nil!64423 s!2326 s!2326)))))

(declare-fun lt!2332807 () Unit!157483)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2151 (Regex!16082 Regex!16082 List!64547) Unit!157483)

(assert (=> b!6138552 (= lt!2332807 (lemmaFindConcatSeparationEquivalentToExists!2151 (regOne!32676 r!7292) (regTwo!32676 r!7292) s!2326))))

(declare-fun setNonEmpty!41515 () Bool)

(declare-fun tp!1715208 () Bool)

(declare-fun setElem!41515 () Context!10932)

(assert (=> setNonEmpty!41515 (= setRes!41515 (and tp!1715208 (inv!83453 setElem!41515) e!3741128))))

(declare-fun setRest!41515 () (Set Context!10932))

(assert (=> setNonEmpty!41515 (= z!1189 (set.union (set.insert setElem!41515 (as set.empty (Set Context!10932))) setRest!41515))))

(declare-fun b!6138553 () Bool)

(assert (=> b!6138553 (= e!3741133 e!3741126)))

(declare-fun res!2543602 () Bool)

(assert (=> b!6138553 (=> res!2543602 e!3741126)))

(assert (=> b!6138553 (= res!2543602 (not (nullable!6075 (regOne!32677 (regOne!32676 r!7292)))))))

(declare-fun lt!2332808 () (Set Context!10932))

(declare-fun lt!2332810 () Context!10932)

(assert (=> b!6138553 (= (flatMap!1587 lt!2332808 lambda!334542) (derivationStepZipperUp!1256 lt!2332810 (h!70871 s!2326)))))

(declare-fun lt!2332809 () Unit!157483)

(assert (=> b!6138553 (= lt!2332809 (lemmaFlatMapOnSingletonSet!1113 lt!2332808 lt!2332810 lambda!334542))))

(declare-fun lt!2332804 () (Set Context!10932))

(assert (=> b!6138553 (= lt!2332804 (derivationStepZipperUp!1256 lt!2332810 (h!70871 s!2326)))))

(assert (=> b!6138553 (= lt!2332808 (set.insert lt!2332810 (as set.empty (Set Context!10932))))))

(assert (=> b!6138553 (= lt!2332810 (Context!10933 (Cons!64421 (regOne!32677 (regOne!32676 r!7292)) (t!378022 (exprs!5966 (h!70870 zl!343))))))))

(declare-fun b!6138554 () Bool)

(declare-fun res!2543605 () Bool)

(assert (=> b!6138554 (=> res!2543605 e!3741125)))

(assert (=> b!6138554 (= res!2543605 (or (is-EmptyExpr!16082 r!7292) (is-EmptyLang!16082 r!7292) (is-ElementMatch!16082 r!7292) (is-Union!16082 r!7292) (not (is-Concat!24927 r!7292))))))

(declare-fun b!6138555 () Bool)

(declare-fun res!2543599 () Bool)

(assert (=> b!6138555 (=> res!2543599 e!3741125)))

(declare-fun generalisedUnion!1926 (List!64545) Regex!16082)

(declare-fun unfocusZipperList!1503 (List!64546) List!64545)

(assert (=> b!6138555 (= res!2543599 (not (= r!7292 (generalisedUnion!1926 (unfocusZipperList!1503 zl!343)))))))

(declare-fun b!6138556 () Bool)

(declare-fun res!2543601 () Bool)

(assert (=> b!6138556 (=> (not res!2543601) (not e!3741129))))

(declare-fun toList!9866 ((Set Context!10932)) List!64546)

(assert (=> b!6138556 (= res!2543601 (= (toList!9866 z!1189) zl!343))))

(declare-fun b!6138557 () Bool)

(assert (=> b!6138557 (= e!3741131 (matchZipper!2094 lt!2332811 (t!378024 s!2326)))))

(declare-fun b!6138558 () Bool)

(declare-fun res!2543607 () Bool)

(assert (=> b!6138558 (=> (not res!2543607) (not e!3741129))))

(declare-fun unfocusZipper!1824 (List!64546) Regex!16082)

(assert (=> b!6138558 (= res!2543607 (= r!7292 (unfocusZipper!1824 zl!343)))))

(declare-fun b!6138559 () Bool)

(declare-fun res!2543593 () Bool)

(assert (=> b!6138559 (=> res!2543593 e!3741125)))

(declare-fun isEmpty!36370 (List!64546) Bool)

(assert (=> b!6138559 (= res!2543593 (not (isEmpty!36370 (t!378023 zl!343))))))

(declare-fun b!6138560 () Bool)

(declare-fun res!2543590 () Bool)

(assert (=> b!6138560 (=> res!2543590 e!3741130)))

(declare-fun isEmpty!36371 (List!64545) Bool)

(assert (=> b!6138560 (= res!2543590 (isEmpty!36371 (t!378022 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun b!6138561 () Bool)

(declare-fun res!2543595 () Bool)

(assert (=> b!6138561 (=> res!2543595 e!3741126)))

(assert (=> b!6138561 (= res!2543595 (not (= lt!2332804 (set.union lt!2332805 lt!2332797))))))

(declare-fun b!6138562 () Bool)

(assert (=> b!6138562 (= e!3741120 (not (matchZipper!2094 lt!2332811 (t!378024 s!2326))))))

(declare-fun b!6138563 () Bool)

(assert (=> b!6138563 (= e!3741122 (matchZipper!2094 lt!2332797 (t!378024 s!2326)))))

(declare-fun b!6138564 () Bool)

(declare-fun Unit!157486 () Unit!157483)

(assert (=> b!6138564 (= e!3741124 Unit!157486)))

(declare-fun b!6138565 () Bool)

(assert (=> b!6138565 (= e!3741134 tp_is_empty!41417)))

(declare-fun b!6138566 () Bool)

(assert (=> b!6138566 (= e!3741129 (not e!3741125))))

(declare-fun res!2543592 () Bool)

(assert (=> b!6138566 (=> res!2543592 e!3741125)))

(assert (=> b!6138566 (= res!2543592 (not (is-Cons!64422 zl!343)))))

(declare-fun matchRSpec!3183 (Regex!16082 List!64547) Bool)

(assert (=> b!6138566 (= lt!2332792 (matchRSpec!3183 r!7292 s!2326))))

(declare-fun matchR!8265 (Regex!16082 List!64547) Bool)

(assert (=> b!6138566 (= lt!2332792 (matchR!8265 r!7292 s!2326))))

(declare-fun lt!2332791 () Unit!157483)

(declare-fun mainMatchTheorem!3183 (Regex!16082 List!64547) Unit!157483)

(assert (=> b!6138566 (= lt!2332791 (mainMatchTheorem!3183 r!7292 s!2326))))

(assert (= (and start!613176 res!2543600) b!6138556))

(assert (= (and b!6138556 res!2543601) b!6138558))

(assert (= (and b!6138558 res!2543607) b!6138566))

(assert (= (and b!6138566 (not res!2543592)) b!6138559))

(assert (= (and b!6138559 (not res!2543593)) b!6138551))

(assert (= (and b!6138551 (not res!2543598)) b!6138543))

(assert (= (and b!6138543 (not res!2543608)) b!6138555))

(assert (= (and b!6138555 (not res!2543599)) b!6138554))

(assert (= (and b!6138554 (not res!2543605)) b!6138552))

(assert (= (and b!6138552 (not res!2543597)) b!6138560))

(assert (= (and b!6138560 (not res!2543590)) b!6138541))

(assert (= (and b!6138541 c!1104019) b!6138549))

(assert (= (and b!6138541 (not c!1104019)) b!6138564))

(assert (= (and b!6138549 (not res!2543596)) b!6138563))

(assert (= (and b!6138541 (not res!2543603)) b!6138542))

(assert (= (and b!6138542 (not res!2543591)) b!6138548))

(assert (= (and b!6138548 (not res!2543606)) b!6138557))

(assert (= (and b!6138548 res!2543604) b!6138562))

(assert (= (and b!6138548 (not res!2543594)) b!6138553))

(assert (= (and b!6138553 (not res!2543602)) b!6138561))

(assert (= (and b!6138561 (not res!2543595)) b!6138550))

(assert (= (and start!613176 (is-ElementMatch!16082 r!7292)) b!6138565))

(assert (= (and start!613176 (is-Concat!24927 r!7292)) b!6138547))

(assert (= (and start!613176 (is-Star!16082 r!7292)) b!6138546))

(assert (= (and start!613176 (is-Union!16082 r!7292)) b!6138545))

(assert (= (and start!613176 condSetEmpty!41515) setIsEmpty!41515))

(assert (= (and start!613176 (not condSetEmpty!41515)) setNonEmpty!41515))

(assert (= setNonEmpty!41515 b!6138540))

(assert (= b!6138538 b!6138539))

(assert (= (and start!613176 (is-Cons!64422 zl!343)) b!6138538))

(assert (= (and start!613176 (is-Cons!64423 s!2326)) b!6138544))

(declare-fun m!6980424 () Bool)

(assert (=> b!6138553 m!6980424))

(declare-fun m!6980426 () Bool)

(assert (=> b!6138553 m!6980426))

(declare-fun m!6980428 () Bool)

(assert (=> b!6138553 m!6980428))

(declare-fun m!6980430 () Bool)

(assert (=> b!6138553 m!6980430))

(declare-fun m!6980432 () Bool)

(assert (=> b!6138553 m!6980432))

(declare-fun m!6980434 () Bool)

(assert (=> b!6138549 m!6980434))

(declare-fun m!6980436 () Bool)

(assert (=> b!6138549 m!6980436))

(declare-fun m!6980438 () Bool)

(assert (=> b!6138549 m!6980438))

(declare-fun m!6980440 () Bool)

(assert (=> b!6138558 m!6980440))

(declare-fun m!6980442 () Bool)

(assert (=> b!6138557 m!6980442))

(declare-fun m!6980444 () Bool)

(assert (=> start!613176 m!6980444))

(declare-fun m!6980446 () Bool)

(assert (=> b!6138563 m!6980446))

(declare-fun m!6980448 () Bool)

(assert (=> b!6138566 m!6980448))

(declare-fun m!6980450 () Bool)

(assert (=> b!6138566 m!6980450))

(declare-fun m!6980452 () Bool)

(assert (=> b!6138566 m!6980452))

(declare-fun m!6980454 () Bool)

(assert (=> b!6138541 m!6980454))

(declare-fun m!6980456 () Bool)

(assert (=> b!6138541 m!6980456))

(declare-fun m!6980458 () Bool)

(assert (=> b!6138541 m!6980458))

(declare-fun m!6980460 () Bool)

(assert (=> b!6138541 m!6980460))

(declare-fun m!6980462 () Bool)

(assert (=> b!6138541 m!6980462))

(declare-fun m!6980464 () Bool)

(assert (=> b!6138541 m!6980464))

(declare-fun m!6980466 () Bool)

(assert (=> b!6138541 m!6980466))

(declare-fun m!6980468 () Bool)

(assert (=> b!6138542 m!6980468))

(declare-fun m!6980470 () Bool)

(assert (=> b!6138542 m!6980470))

(declare-fun m!6980472 () Bool)

(assert (=> b!6138556 m!6980472))

(declare-fun m!6980474 () Bool)

(assert (=> b!6138551 m!6980474))

(assert (=> b!6138562 m!6980442))

(declare-fun m!6980476 () Bool)

(assert (=> b!6138538 m!6980476))

(assert (=> b!6138548 m!6980436))

(declare-fun m!6980478 () Bool)

(assert (=> b!6138548 m!6980478))

(declare-fun m!6980480 () Bool)

(assert (=> b!6138548 m!6980480))

(declare-fun m!6980482 () Bool)

(assert (=> b!6138548 m!6980482))

(declare-fun m!6980484 () Bool)

(assert (=> b!6138559 m!6980484))

(declare-fun m!6980486 () Bool)

(assert (=> b!6138552 m!6980486))

(declare-fun m!6980488 () Bool)

(assert (=> b!6138552 m!6980488))

(declare-fun m!6980490 () Bool)

(assert (=> b!6138552 m!6980490))

(declare-fun m!6980492 () Bool)

(assert (=> b!6138552 m!6980492))

(declare-fun m!6980494 () Bool)

(assert (=> b!6138552 m!6980494))

(assert (=> b!6138552 m!6980486))

(assert (=> b!6138552 m!6980488))

(declare-fun m!6980496 () Bool)

(assert (=> b!6138552 m!6980496))

(declare-fun m!6980498 () Bool)

(assert (=> b!6138550 m!6980498))

(declare-fun m!6980500 () Bool)

(assert (=> b!6138560 m!6980500))

(declare-fun m!6980502 () Bool)

(assert (=> setNonEmpty!41515 m!6980502))

(declare-fun m!6980504 () Bool)

(assert (=> b!6138555 m!6980504))

(assert (=> b!6138555 m!6980504))

(declare-fun m!6980506 () Bool)

(assert (=> b!6138555 m!6980506))

(push 1)

(assert (not b!6138551))

(assert (not b!6138538))

(assert (not b!6138547))

(assert (not b!6138558))

(assert (not b!6138552))

(assert (not b!6138563))

(assert (not b!6138544))

(assert (not b!6138542))

(assert (not setNonEmpty!41515))

(assert (not b!6138556))

(assert tp_is_empty!41417)

(assert (not b!6138546))

(assert (not b!6138555))

(assert (not b!6138541))

(assert (not b!6138560))

(assert (not b!6138566))

(assert (not b!6138548))

(assert (not b!6138549))

(assert (not b!6138545))

(assert (not b!6138562))

(assert (not start!613176))

(assert (not b!6138559))

(assert (not b!6138540))

(assert (not b!6138557))

(assert (not b!6138550))

(assert (not b!6138553))

(assert (not b!6138539))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1923265 () Bool)

(declare-fun lt!2332877 () Regex!16082)

(assert (=> d!1923265 (validRegex!7818 lt!2332877)))

(assert (=> d!1923265 (= lt!2332877 (generalisedUnion!1926 (unfocusZipperList!1503 zl!343)))))

(assert (=> d!1923265 (= (unfocusZipper!1824 zl!343) lt!2332877)))

(declare-fun bs!1522293 () Bool)

(assert (= bs!1522293 d!1923265))

(declare-fun m!6980592 () Bool)

(assert (=> bs!1522293 m!6980592))

(assert (=> bs!1522293 m!6980504))

(assert (=> bs!1522293 m!6980504))

(assert (=> bs!1522293 m!6980506))

(assert (=> b!6138558 d!1923265))

(declare-fun e!3741192 () Bool)

(declare-fun d!1923267 () Bool)

(assert (=> d!1923267 (= (matchZipper!2094 (set.union lt!2332806 lt!2332797) (t!378024 s!2326)) e!3741192)))

(declare-fun res!2543680 () Bool)

(assert (=> d!1923267 (=> res!2543680 e!3741192)))

(assert (=> d!1923267 (= res!2543680 (matchZipper!2094 lt!2332806 (t!378024 s!2326)))))

(declare-fun lt!2332880 () Unit!157483)

(declare-fun choose!45615 ((Set Context!10932) (Set Context!10932) List!64547) Unit!157483)

(assert (=> d!1923267 (= lt!2332880 (choose!45615 lt!2332806 lt!2332797 (t!378024 s!2326)))))

(assert (=> d!1923267 (= (lemmaZipperConcatMatchesSameAsBothZippers!913 lt!2332806 lt!2332797 (t!378024 s!2326)) lt!2332880)))

(declare-fun b!6138680 () Bool)

(assert (=> b!6138680 (= e!3741192 (matchZipper!2094 lt!2332797 (t!378024 s!2326)))))

(assert (= (and d!1923267 (not res!2543680)) b!6138680))

(assert (=> d!1923267 m!6980438))

(assert (=> d!1923267 m!6980436))

(declare-fun m!6980594 () Bool)

(assert (=> d!1923267 m!6980594))

(assert (=> b!6138680 m!6980446))

(assert (=> b!6138549 d!1923267))

(declare-fun d!1923269 () Bool)

(declare-fun c!1104032 () Bool)

(declare-fun isEmpty!36374 (List!64547) Bool)

(assert (=> d!1923269 (= c!1104032 (isEmpty!36374 (t!378024 s!2326)))))

(declare-fun e!3741195 () Bool)

(assert (=> d!1923269 (= (matchZipper!2094 lt!2332806 (t!378024 s!2326)) e!3741195)))

(declare-fun b!6138685 () Bool)

(declare-fun nullableZipper!1863 ((Set Context!10932)) Bool)

(assert (=> b!6138685 (= e!3741195 (nullableZipper!1863 lt!2332806))))

(declare-fun b!6138686 () Bool)

(declare-fun derivationStepZipper!2055 ((Set Context!10932) C!32434) (Set Context!10932))

(declare-fun head!12685 (List!64547) C!32434)

(declare-fun tail!11770 (List!64547) List!64547)

(assert (=> b!6138686 (= e!3741195 (matchZipper!2094 (derivationStepZipper!2055 lt!2332806 (head!12685 (t!378024 s!2326))) (tail!11770 (t!378024 s!2326))))))

(assert (= (and d!1923269 c!1104032) b!6138685))

(assert (= (and d!1923269 (not c!1104032)) b!6138686))

(declare-fun m!6980596 () Bool)

(assert (=> d!1923269 m!6980596))

(declare-fun m!6980598 () Bool)

(assert (=> b!6138685 m!6980598))

(declare-fun m!6980600 () Bool)

(assert (=> b!6138686 m!6980600))

(assert (=> b!6138686 m!6980600))

(declare-fun m!6980602 () Bool)

(assert (=> b!6138686 m!6980602))

(declare-fun m!6980604 () Bool)

(assert (=> b!6138686 m!6980604))

(assert (=> b!6138686 m!6980602))

(assert (=> b!6138686 m!6980604))

(declare-fun m!6980606 () Bool)

(assert (=> b!6138686 m!6980606))

(assert (=> b!6138549 d!1923269))

(declare-fun d!1923271 () Bool)

(declare-fun c!1104033 () Bool)

(assert (=> d!1923271 (= c!1104033 (isEmpty!36374 (t!378024 s!2326)))))

(declare-fun e!3741196 () Bool)

(assert (=> d!1923271 (= (matchZipper!2094 (set.union lt!2332806 lt!2332797) (t!378024 s!2326)) e!3741196)))

(declare-fun b!6138687 () Bool)

(assert (=> b!6138687 (= e!3741196 (nullableZipper!1863 (set.union lt!2332806 lt!2332797)))))

(declare-fun b!6138688 () Bool)

(assert (=> b!6138688 (= e!3741196 (matchZipper!2094 (derivationStepZipper!2055 (set.union lt!2332806 lt!2332797) (head!12685 (t!378024 s!2326))) (tail!11770 (t!378024 s!2326))))))

(assert (= (and d!1923271 c!1104033) b!6138687))

(assert (= (and d!1923271 (not c!1104033)) b!6138688))

(assert (=> d!1923271 m!6980596))

(declare-fun m!6980608 () Bool)

(assert (=> b!6138687 m!6980608))

(assert (=> b!6138688 m!6980600))

(assert (=> b!6138688 m!6980600))

(declare-fun m!6980610 () Bool)

(assert (=> b!6138688 m!6980610))

(assert (=> b!6138688 m!6980604))

(assert (=> b!6138688 m!6980610))

(assert (=> b!6138688 m!6980604))

(declare-fun m!6980612 () Bool)

(assert (=> b!6138688 m!6980612))

(assert (=> b!6138549 d!1923271))

(assert (=> b!6138548 d!1923269))

(declare-fun d!1923273 () Bool)

(declare-fun c!1104034 () Bool)

(assert (=> d!1923273 (= c!1104034 (isEmpty!36374 (t!378024 s!2326)))))

(declare-fun e!3741197 () Bool)

(assert (=> d!1923273 (= (matchZipper!2094 lt!2332794 (t!378024 s!2326)) e!3741197)))

(declare-fun b!6138689 () Bool)

(assert (=> b!6138689 (= e!3741197 (nullableZipper!1863 lt!2332794))))

(declare-fun b!6138690 () Bool)

(assert (=> b!6138690 (= e!3741197 (matchZipper!2094 (derivationStepZipper!2055 lt!2332794 (head!12685 (t!378024 s!2326))) (tail!11770 (t!378024 s!2326))))))

(assert (= (and d!1923273 c!1104034) b!6138689))

(assert (= (and d!1923273 (not c!1104034)) b!6138690))

(assert (=> d!1923273 m!6980596))

(declare-fun m!6980614 () Bool)

(assert (=> b!6138689 m!6980614))

(assert (=> b!6138690 m!6980600))

(assert (=> b!6138690 m!6980600))

(declare-fun m!6980616 () Bool)

(assert (=> b!6138690 m!6980616))

(assert (=> b!6138690 m!6980604))

(assert (=> b!6138690 m!6980616))

(assert (=> b!6138690 m!6980604))

(declare-fun m!6980618 () Bool)

(assert (=> b!6138690 m!6980618))

(assert (=> b!6138548 d!1923273))

(declare-fun d!1923275 () Bool)

(declare-fun c!1104035 () Bool)

(assert (=> d!1923275 (= c!1104035 (isEmpty!36374 (t!378024 s!2326)))))

(declare-fun e!3741198 () Bool)

(assert (=> d!1923275 (= (matchZipper!2094 lt!2332805 (t!378024 s!2326)) e!3741198)))

(declare-fun b!6138691 () Bool)

(assert (=> b!6138691 (= e!3741198 (nullableZipper!1863 lt!2332805))))

(declare-fun b!6138692 () Bool)

(assert (=> b!6138692 (= e!3741198 (matchZipper!2094 (derivationStepZipper!2055 lt!2332805 (head!12685 (t!378024 s!2326))) (tail!11770 (t!378024 s!2326))))))

(assert (= (and d!1923275 c!1104035) b!6138691))

(assert (= (and d!1923275 (not c!1104035)) b!6138692))

(assert (=> d!1923275 m!6980596))

(declare-fun m!6980620 () Bool)

(assert (=> b!6138691 m!6980620))

(assert (=> b!6138692 m!6980600))

(assert (=> b!6138692 m!6980600))

(declare-fun m!6980622 () Bool)

(assert (=> b!6138692 m!6980622))

(assert (=> b!6138692 m!6980604))

(assert (=> b!6138692 m!6980622))

(assert (=> b!6138692 m!6980604))

(declare-fun m!6980624 () Bool)

(assert (=> b!6138692 m!6980624))

(assert (=> b!6138548 d!1923275))

(declare-fun e!3741199 () Bool)

(declare-fun d!1923277 () Bool)

(assert (=> d!1923277 (= (matchZipper!2094 (set.union lt!2332805 lt!2332811) (t!378024 s!2326)) e!3741199)))

(declare-fun res!2543681 () Bool)

(assert (=> d!1923277 (=> res!2543681 e!3741199)))

(assert (=> d!1923277 (= res!2543681 (matchZipper!2094 lt!2332805 (t!378024 s!2326)))))

(declare-fun lt!2332881 () Unit!157483)

(assert (=> d!1923277 (= lt!2332881 (choose!45615 lt!2332805 lt!2332811 (t!378024 s!2326)))))

(assert (=> d!1923277 (= (lemmaZipperConcatMatchesSameAsBothZippers!913 lt!2332805 lt!2332811 (t!378024 s!2326)) lt!2332881)))

(declare-fun b!6138693 () Bool)

(assert (=> b!6138693 (= e!3741199 (matchZipper!2094 lt!2332811 (t!378024 s!2326)))))

(assert (= (and d!1923277 (not res!2543681)) b!6138693))

(declare-fun m!6980626 () Bool)

(assert (=> d!1923277 m!6980626))

(assert (=> d!1923277 m!6980480))

(declare-fun m!6980628 () Bool)

(assert (=> d!1923277 m!6980628))

(assert (=> b!6138693 m!6980442))

(assert (=> b!6138548 d!1923277))

(declare-fun d!1923279 () Bool)

(declare-fun lambda!334558 () Int)

(declare-fun forall!15203 (List!64545 Int) Bool)

(assert (=> d!1923279 (= (inv!83453 (h!70870 zl!343)) (forall!15203 (exprs!5966 (h!70870 zl!343)) lambda!334558))))

(declare-fun bs!1522294 () Bool)

(assert (= bs!1522294 d!1923279))

(declare-fun m!6980630 () Bool)

(assert (=> bs!1522294 m!6980630))

(assert (=> b!6138538 d!1923279))

(declare-fun d!1923281 () Bool)

(declare-fun c!1104036 () Bool)

(assert (=> d!1923281 (= c!1104036 (isEmpty!36374 (t!378024 s!2326)))))

(declare-fun e!3741200 () Bool)

(assert (=> d!1923281 (= (matchZipper!2094 lt!2332811 (t!378024 s!2326)) e!3741200)))

(declare-fun b!6138694 () Bool)

(assert (=> b!6138694 (= e!3741200 (nullableZipper!1863 lt!2332811))))

(declare-fun b!6138695 () Bool)

(assert (=> b!6138695 (= e!3741200 (matchZipper!2094 (derivationStepZipper!2055 lt!2332811 (head!12685 (t!378024 s!2326))) (tail!11770 (t!378024 s!2326))))))

(assert (= (and d!1923281 c!1104036) b!6138694))

(assert (= (and d!1923281 (not c!1104036)) b!6138695))

(assert (=> d!1923281 m!6980596))

(declare-fun m!6980632 () Bool)

(assert (=> b!6138694 m!6980632))

(assert (=> b!6138695 m!6980600))

(assert (=> b!6138695 m!6980600))

(declare-fun m!6980634 () Bool)

(assert (=> b!6138695 m!6980634))

(assert (=> b!6138695 m!6980604))

(assert (=> b!6138695 m!6980634))

(assert (=> b!6138695 m!6980604))

(declare-fun m!6980636 () Bool)

(assert (=> b!6138695 m!6980636))

(assert (=> b!6138557 d!1923281))

(declare-fun bs!1522295 () Bool)

(declare-fun b!6138730 () Bool)

(assert (= bs!1522295 (and b!6138730 b!6138552)))

(declare-fun lambda!334563 () Int)

(assert (=> bs!1522295 (not (= lambda!334563 lambda!334540))))

(assert (=> bs!1522295 (not (= lambda!334563 lambda!334541))))

(assert (=> b!6138730 true))

(assert (=> b!6138730 true))

(declare-fun bs!1522296 () Bool)

(declare-fun b!6138734 () Bool)

(assert (= bs!1522296 (and b!6138734 b!6138552)))

(declare-fun lambda!334564 () Int)

(assert (=> bs!1522296 (not (= lambda!334564 lambda!334540))))

(assert (=> bs!1522296 (= lambda!334564 lambda!334541)))

(declare-fun bs!1522297 () Bool)

(assert (= bs!1522297 (and b!6138734 b!6138730)))

(assert (=> bs!1522297 (not (= lambda!334564 lambda!334563))))

(assert (=> b!6138734 true))

(assert (=> b!6138734 true))

(declare-fun b!6138728 () Bool)

(declare-fun e!3741221 () Bool)

(assert (=> b!6138728 (= e!3741221 (= s!2326 (Cons!64423 (c!1104020 r!7292) Nil!64423)))))

(declare-fun b!6138729 () Bool)

(declare-fun e!3741219 () Bool)

(declare-fun e!3741224 () Bool)

(assert (=> b!6138729 (= e!3741219 e!3741224)))

(declare-fun c!1104045 () Bool)

(assert (=> b!6138729 (= c!1104045 (is-Star!16082 r!7292))))

(declare-fun bm!509632 () Bool)

(declare-fun call!509638 () Bool)

(assert (=> bm!509632 (= call!509638 (isEmpty!36374 s!2326))))

(declare-fun e!3741222 () Bool)

(declare-fun call!509637 () Bool)

(assert (=> b!6138730 (= e!3741222 call!509637)))

(declare-fun b!6138731 () Bool)

(declare-fun e!3741220 () Bool)

(assert (=> b!6138731 (= e!3741219 e!3741220)))

(declare-fun res!2543698 () Bool)

(assert (=> b!6138731 (= res!2543698 (matchRSpec!3183 (regOne!32677 r!7292) s!2326))))

(assert (=> b!6138731 (=> res!2543698 e!3741220)))

(declare-fun b!6138732 () Bool)

(declare-fun e!3741223 () Bool)

(assert (=> b!6138732 (= e!3741223 call!509638)))

(declare-fun b!6138733 () Bool)

(declare-fun c!1104047 () Bool)

(assert (=> b!6138733 (= c!1104047 (is-ElementMatch!16082 r!7292))))

(declare-fun e!3741225 () Bool)

(assert (=> b!6138733 (= e!3741225 e!3741221)))

(assert (=> b!6138734 (= e!3741224 call!509637)))

(declare-fun b!6138736 () Bool)

(declare-fun res!2543699 () Bool)

(assert (=> b!6138736 (=> res!2543699 e!3741222)))

(assert (=> b!6138736 (= res!2543699 call!509638)))

(assert (=> b!6138736 (= e!3741224 e!3741222)))

(declare-fun bm!509633 () Bool)

(assert (=> bm!509633 (= call!509637 (Exists!3152 (ite c!1104045 lambda!334563 lambda!334564)))))

(declare-fun b!6138737 () Bool)

(declare-fun c!1104046 () Bool)

(assert (=> b!6138737 (= c!1104046 (is-Union!16082 r!7292))))

(assert (=> b!6138737 (= e!3741221 e!3741219)))

(declare-fun b!6138738 () Bool)

(assert (=> b!6138738 (= e!3741223 e!3741225)))

(declare-fun res!2543700 () Bool)

(assert (=> b!6138738 (= res!2543700 (not (is-EmptyLang!16082 r!7292)))))

(assert (=> b!6138738 (=> (not res!2543700) (not e!3741225))))

(declare-fun b!6138735 () Bool)

(assert (=> b!6138735 (= e!3741220 (matchRSpec!3183 (regTwo!32677 r!7292) s!2326))))

(declare-fun d!1923283 () Bool)

(declare-fun c!1104048 () Bool)

(assert (=> d!1923283 (= c!1104048 (is-EmptyExpr!16082 r!7292))))

(assert (=> d!1923283 (= (matchRSpec!3183 r!7292 s!2326) e!3741223)))

(assert (= (and d!1923283 c!1104048) b!6138732))

(assert (= (and d!1923283 (not c!1104048)) b!6138738))

(assert (= (and b!6138738 res!2543700) b!6138733))

(assert (= (and b!6138733 c!1104047) b!6138728))

(assert (= (and b!6138733 (not c!1104047)) b!6138737))

(assert (= (and b!6138737 c!1104046) b!6138731))

(assert (= (and b!6138737 (not c!1104046)) b!6138729))

(assert (= (and b!6138731 (not res!2543698)) b!6138735))

(assert (= (and b!6138729 c!1104045) b!6138736))

(assert (= (and b!6138729 (not c!1104045)) b!6138734))

(assert (= (and b!6138736 (not res!2543699)) b!6138730))

(assert (= (or b!6138730 b!6138734) bm!509633))

(assert (= (or b!6138732 b!6138736) bm!509632))

(declare-fun m!6980638 () Bool)

(assert (=> bm!509632 m!6980638))

(declare-fun m!6980640 () Bool)

(assert (=> b!6138731 m!6980640))

(declare-fun m!6980642 () Bool)

(assert (=> bm!509633 m!6980642))

(declare-fun m!6980644 () Bool)

(assert (=> b!6138735 m!6980644))

(assert (=> b!6138566 d!1923283))

(declare-fun b!6138767 () Bool)

(declare-fun res!2543721 () Bool)

(declare-fun e!3741246 () Bool)

(assert (=> b!6138767 (=> (not res!2543721) (not e!3741246))))

(declare-fun call!509641 () Bool)

(assert (=> b!6138767 (= res!2543721 (not call!509641))))

(declare-fun bm!509636 () Bool)

(assert (=> bm!509636 (= call!509641 (isEmpty!36374 s!2326))))

(declare-fun b!6138768 () Bool)

(declare-fun res!2543719 () Bool)

(declare-fun e!3741243 () Bool)

(assert (=> b!6138768 (=> res!2543719 e!3741243)))

(assert (=> b!6138768 (= res!2543719 e!3741246)))

(declare-fun res!2543722 () Bool)

(assert (=> b!6138768 (=> (not res!2543722) (not e!3741246))))

(declare-fun lt!2332884 () Bool)

(assert (=> b!6138768 (= res!2543722 lt!2332884)))

(declare-fun b!6138769 () Bool)

(declare-fun e!3741244 () Bool)

(assert (=> b!6138769 (= e!3741244 (nullable!6075 r!7292))))

(declare-fun b!6138770 () Bool)

(declare-fun e!3741245 () Bool)

(declare-fun e!3741242 () Bool)

(assert (=> b!6138770 (= e!3741245 e!3741242)))

(declare-fun c!1104055 () Bool)

(assert (=> b!6138770 (= c!1104055 (is-EmptyLang!16082 r!7292))))

(declare-fun b!6138771 () Bool)

(declare-fun e!3741240 () Bool)

(declare-fun e!3741241 () Bool)

(assert (=> b!6138771 (= e!3741240 e!3741241)))

(declare-fun res!2543723 () Bool)

(assert (=> b!6138771 (=> res!2543723 e!3741241)))

(assert (=> b!6138771 (= res!2543723 call!509641)))

(declare-fun b!6138772 () Bool)

(assert (=> b!6138772 (= e!3741243 e!3741240)))

(declare-fun res!2543720 () Bool)

(assert (=> b!6138772 (=> (not res!2543720) (not e!3741240))))

(assert (=> b!6138772 (= res!2543720 (not lt!2332884))))

(declare-fun b!6138773 () Bool)

(declare-fun derivativeStep!4802 (Regex!16082 C!32434) Regex!16082)

(assert (=> b!6138773 (= e!3741244 (matchR!8265 (derivativeStep!4802 r!7292 (head!12685 s!2326)) (tail!11770 s!2326)))))

(declare-fun b!6138774 () Bool)

(assert (=> b!6138774 (= e!3741245 (= lt!2332884 call!509641))))

(declare-fun d!1923285 () Bool)

(assert (=> d!1923285 e!3741245))

(declare-fun c!1104056 () Bool)

(assert (=> d!1923285 (= c!1104056 (is-EmptyExpr!16082 r!7292))))

(assert (=> d!1923285 (= lt!2332884 e!3741244)))

(declare-fun c!1104057 () Bool)

(assert (=> d!1923285 (= c!1104057 (isEmpty!36374 s!2326))))

(assert (=> d!1923285 (validRegex!7818 r!7292)))

(assert (=> d!1923285 (= (matchR!8265 r!7292 s!2326) lt!2332884)))

(declare-fun b!6138775 () Bool)

(declare-fun res!2543724 () Bool)

(assert (=> b!6138775 (=> res!2543724 e!3741243)))

(assert (=> b!6138775 (= res!2543724 (not (is-ElementMatch!16082 r!7292)))))

(assert (=> b!6138775 (= e!3741242 e!3741243)))

(declare-fun b!6138776 () Bool)

(declare-fun res!2543717 () Bool)

(assert (=> b!6138776 (=> res!2543717 e!3741241)))

(assert (=> b!6138776 (= res!2543717 (not (isEmpty!36374 (tail!11770 s!2326))))))

(declare-fun b!6138777 () Bool)

(assert (=> b!6138777 (= e!3741242 (not lt!2332884))))

(declare-fun b!6138778 () Bool)

(assert (=> b!6138778 (= e!3741246 (= (head!12685 s!2326) (c!1104020 r!7292)))))

(declare-fun b!6138779 () Bool)

(assert (=> b!6138779 (= e!3741241 (not (= (head!12685 s!2326) (c!1104020 r!7292))))))

(declare-fun b!6138780 () Bool)

(declare-fun res!2543718 () Bool)

(assert (=> b!6138780 (=> (not res!2543718) (not e!3741246))))

(assert (=> b!6138780 (= res!2543718 (isEmpty!36374 (tail!11770 s!2326)))))

(assert (= (and d!1923285 c!1104057) b!6138769))

(assert (= (and d!1923285 (not c!1104057)) b!6138773))

(assert (= (and d!1923285 c!1104056) b!6138774))

(assert (= (and d!1923285 (not c!1104056)) b!6138770))

(assert (= (and b!6138770 c!1104055) b!6138777))

(assert (= (and b!6138770 (not c!1104055)) b!6138775))

(assert (= (and b!6138775 (not res!2543724)) b!6138768))

(assert (= (and b!6138768 res!2543722) b!6138767))

(assert (= (and b!6138767 res!2543721) b!6138780))

(assert (= (and b!6138780 res!2543718) b!6138778))

(assert (= (and b!6138768 (not res!2543719)) b!6138772))

(assert (= (and b!6138772 res!2543720) b!6138771))

(assert (= (and b!6138771 (not res!2543723)) b!6138776))

(assert (= (and b!6138776 (not res!2543717)) b!6138779))

(assert (= (or b!6138774 b!6138767 b!6138771) bm!509636))

(declare-fun m!6980646 () Bool)

(assert (=> b!6138773 m!6980646))

(assert (=> b!6138773 m!6980646))

(declare-fun m!6980648 () Bool)

(assert (=> b!6138773 m!6980648))

(declare-fun m!6980650 () Bool)

(assert (=> b!6138773 m!6980650))

(assert (=> b!6138773 m!6980648))

(assert (=> b!6138773 m!6980650))

(declare-fun m!6980652 () Bool)

(assert (=> b!6138773 m!6980652))

(assert (=> d!1923285 m!6980638))

(assert (=> d!1923285 m!6980444))

(assert (=> b!6138780 m!6980650))

(assert (=> b!6138780 m!6980650))

(declare-fun m!6980654 () Bool)

(assert (=> b!6138780 m!6980654))

(declare-fun m!6980656 () Bool)

(assert (=> b!6138769 m!6980656))

(assert (=> b!6138776 m!6980650))

(assert (=> b!6138776 m!6980650))

(assert (=> b!6138776 m!6980654))

(assert (=> bm!509636 m!6980638))

(assert (=> b!6138778 m!6980646))

(assert (=> b!6138779 m!6980646))

(assert (=> b!6138566 d!1923285))

(declare-fun d!1923287 () Bool)

(assert (=> d!1923287 (= (matchR!8265 r!7292 s!2326) (matchRSpec!3183 r!7292 s!2326))))

(declare-fun lt!2332887 () Unit!157483)

(declare-fun choose!45616 (Regex!16082 List!64547) Unit!157483)

(assert (=> d!1923287 (= lt!2332887 (choose!45616 r!7292 s!2326))))

(assert (=> d!1923287 (validRegex!7818 r!7292)))

(assert (=> d!1923287 (= (mainMatchTheorem!3183 r!7292 s!2326) lt!2332887)))

(declare-fun bs!1522298 () Bool)

(assert (= bs!1522298 d!1923287))

(assert (=> bs!1522298 m!6980450))

(assert (=> bs!1522298 m!6980448))

(declare-fun m!6980658 () Bool)

(assert (=> bs!1522298 m!6980658))

(assert (=> bs!1522298 m!6980444))

(assert (=> b!6138566 d!1923287))

(declare-fun bs!1522299 () Bool)

(declare-fun d!1923289 () Bool)

(assert (= bs!1522299 (and d!1923289 d!1923279)))

(declare-fun lambda!334567 () Int)

(assert (=> bs!1522299 (= lambda!334567 lambda!334558)))

(declare-fun b!6138801 () Bool)

(declare-fun e!3741263 () Bool)

(declare-fun e!3741262 () Bool)

(assert (=> b!6138801 (= e!3741263 e!3741262)))

(declare-fun c!1104068 () Bool)

(assert (=> b!6138801 (= c!1104068 (isEmpty!36371 (unfocusZipperList!1503 zl!343)))))

(declare-fun b!6138802 () Bool)

(declare-fun e!3741260 () Regex!16082)

(assert (=> b!6138802 (= e!3741260 (h!70869 (unfocusZipperList!1503 zl!343)))))

(declare-fun b!6138803 () Bool)

(declare-fun e!3741261 () Bool)

(declare-fun lt!2332890 () Regex!16082)

(declare-fun head!12686 (List!64545) Regex!16082)

(assert (=> b!6138803 (= e!3741261 (= lt!2332890 (head!12686 (unfocusZipperList!1503 zl!343))))))

(declare-fun b!6138804 () Bool)

(declare-fun e!3741264 () Regex!16082)

(assert (=> b!6138804 (= e!3741264 (Union!16082 (h!70869 (unfocusZipperList!1503 zl!343)) (generalisedUnion!1926 (t!378022 (unfocusZipperList!1503 zl!343)))))))

(assert (=> d!1923289 e!3741263))

(declare-fun res!2543729 () Bool)

(assert (=> d!1923289 (=> (not res!2543729) (not e!3741263))))

(assert (=> d!1923289 (= res!2543729 (validRegex!7818 lt!2332890))))

(assert (=> d!1923289 (= lt!2332890 e!3741260)))

(declare-fun c!1104069 () Bool)

(declare-fun e!3741259 () Bool)

(assert (=> d!1923289 (= c!1104069 e!3741259)))

(declare-fun res!2543730 () Bool)

(assert (=> d!1923289 (=> (not res!2543730) (not e!3741259))))

(assert (=> d!1923289 (= res!2543730 (is-Cons!64421 (unfocusZipperList!1503 zl!343)))))

(assert (=> d!1923289 (forall!15203 (unfocusZipperList!1503 zl!343) lambda!334567)))

(assert (=> d!1923289 (= (generalisedUnion!1926 (unfocusZipperList!1503 zl!343)) lt!2332890)))

(declare-fun b!6138805 () Bool)

(assert (=> b!6138805 (= e!3741260 e!3741264)))

(declare-fun c!1104067 () Bool)

(assert (=> b!6138805 (= c!1104067 (is-Cons!64421 (unfocusZipperList!1503 zl!343)))))

(declare-fun b!6138806 () Bool)

(declare-fun isUnion!939 (Regex!16082) Bool)

(assert (=> b!6138806 (= e!3741261 (isUnion!939 lt!2332890))))

(declare-fun b!6138807 () Bool)

(assert (=> b!6138807 (= e!3741264 EmptyLang!16082)))

(declare-fun b!6138808 () Bool)

(assert (=> b!6138808 (= e!3741259 (isEmpty!36371 (t!378022 (unfocusZipperList!1503 zl!343))))))

(declare-fun b!6138809 () Bool)

(declare-fun isEmptyLang!1509 (Regex!16082) Bool)

(assert (=> b!6138809 (= e!3741262 (isEmptyLang!1509 lt!2332890))))

(declare-fun b!6138810 () Bool)

(assert (=> b!6138810 (= e!3741262 e!3741261)))

(declare-fun c!1104066 () Bool)

(declare-fun tail!11771 (List!64545) List!64545)

(assert (=> b!6138810 (= c!1104066 (isEmpty!36371 (tail!11771 (unfocusZipperList!1503 zl!343))))))

(assert (= (and d!1923289 res!2543730) b!6138808))

(assert (= (and d!1923289 c!1104069) b!6138802))

(assert (= (and d!1923289 (not c!1104069)) b!6138805))

(assert (= (and b!6138805 c!1104067) b!6138804))

(assert (= (and b!6138805 (not c!1104067)) b!6138807))

(assert (= (and d!1923289 res!2543729) b!6138801))

(assert (= (and b!6138801 c!1104068) b!6138809))

(assert (= (and b!6138801 (not c!1104068)) b!6138810))

(assert (= (and b!6138810 c!1104066) b!6138803))

(assert (= (and b!6138810 (not c!1104066)) b!6138806))

(declare-fun m!6980660 () Bool)

(assert (=> b!6138809 m!6980660))

(assert (=> b!6138803 m!6980504))

(declare-fun m!6980662 () Bool)

(assert (=> b!6138803 m!6980662))

(assert (=> b!6138810 m!6980504))

(declare-fun m!6980664 () Bool)

(assert (=> b!6138810 m!6980664))

(assert (=> b!6138810 m!6980664))

(declare-fun m!6980666 () Bool)

(assert (=> b!6138810 m!6980666))

(declare-fun m!6980668 () Bool)

(assert (=> d!1923289 m!6980668))

(assert (=> d!1923289 m!6980504))

(declare-fun m!6980670 () Bool)

(assert (=> d!1923289 m!6980670))

(declare-fun m!6980672 () Bool)

(assert (=> b!6138806 m!6980672))

(assert (=> b!6138801 m!6980504))

(declare-fun m!6980674 () Bool)

(assert (=> b!6138801 m!6980674))

(declare-fun m!6980676 () Bool)

(assert (=> b!6138804 m!6980676))

(declare-fun m!6980678 () Bool)

(assert (=> b!6138808 m!6980678))

(assert (=> b!6138555 d!1923289))

(declare-fun bs!1522300 () Bool)

(declare-fun d!1923291 () Bool)

(assert (= bs!1522300 (and d!1923291 d!1923279)))

(declare-fun lambda!334570 () Int)

(assert (=> bs!1522300 (= lambda!334570 lambda!334558)))

(declare-fun bs!1522301 () Bool)

(assert (= bs!1522301 (and d!1923291 d!1923289)))

(assert (=> bs!1522301 (= lambda!334570 lambda!334567)))

(declare-fun lt!2332893 () List!64545)

(assert (=> d!1923291 (forall!15203 lt!2332893 lambda!334570)))

(declare-fun e!3741267 () List!64545)

(assert (=> d!1923291 (= lt!2332893 e!3741267)))

(declare-fun c!1104072 () Bool)

(assert (=> d!1923291 (= c!1104072 (is-Cons!64422 zl!343))))

(assert (=> d!1923291 (= (unfocusZipperList!1503 zl!343) lt!2332893)))

(declare-fun b!6138815 () Bool)

(assert (=> b!6138815 (= e!3741267 (Cons!64421 (generalisedConcat!1679 (exprs!5966 (h!70870 zl!343))) (unfocusZipperList!1503 (t!378023 zl!343))))))

(declare-fun b!6138816 () Bool)

(assert (=> b!6138816 (= e!3741267 Nil!64421)))

(assert (= (and d!1923291 c!1104072) b!6138815))

(assert (= (and d!1923291 (not c!1104072)) b!6138816))

(declare-fun m!6980680 () Bool)

(assert (=> d!1923291 m!6980680))

(assert (=> b!6138815 m!6980474))

(declare-fun m!6980682 () Bool)

(assert (=> b!6138815 m!6980682))

(assert (=> b!6138555 d!1923291))

(declare-fun d!1923293 () Bool)

(declare-fun e!3741270 () Bool)

(assert (=> d!1923293 e!3741270))

(declare-fun res!2543733 () Bool)

(assert (=> d!1923293 (=> (not res!2543733) (not e!3741270))))

(declare-fun lt!2332896 () List!64546)

(declare-fun noDuplicate!1929 (List!64546) Bool)

(assert (=> d!1923293 (= res!2543733 (noDuplicate!1929 lt!2332896))))

(declare-fun choose!45617 ((Set Context!10932)) List!64546)

(assert (=> d!1923293 (= lt!2332896 (choose!45617 z!1189))))

(assert (=> d!1923293 (= (toList!9866 z!1189) lt!2332896)))

(declare-fun b!6138819 () Bool)

(declare-fun content!11988 (List!64546) (Set Context!10932))

(assert (=> b!6138819 (= e!3741270 (= (content!11988 lt!2332896) z!1189))))

(assert (= (and d!1923293 res!2543733) b!6138819))

(declare-fun m!6980684 () Bool)

(assert (=> d!1923293 m!6980684))

(declare-fun m!6980686 () Bool)

(assert (=> d!1923293 m!6980686))

(declare-fun m!6980688 () Bool)

(assert (=> b!6138819 m!6980688))

(assert (=> b!6138556 d!1923293))

(declare-fun d!1923295 () Bool)

(declare-fun c!1104073 () Bool)

(assert (=> d!1923295 (= c!1104073 (isEmpty!36374 (t!378024 s!2326)))))

(declare-fun e!3741271 () Bool)

(assert (=> d!1923295 (= (matchZipper!2094 lt!2332797 (t!378024 s!2326)) e!3741271)))

(declare-fun b!6138820 () Bool)

(assert (=> b!6138820 (= e!3741271 (nullableZipper!1863 lt!2332797))))

(declare-fun b!6138821 () Bool)

(assert (=> b!6138821 (= e!3741271 (matchZipper!2094 (derivationStepZipper!2055 lt!2332797 (head!12685 (t!378024 s!2326))) (tail!11770 (t!378024 s!2326))))))

(assert (= (and d!1923295 c!1104073) b!6138820))

(assert (= (and d!1923295 (not c!1104073)) b!6138821))

(assert (=> d!1923295 m!6980596))

(declare-fun m!6980690 () Bool)

(assert (=> b!6138820 m!6980690))

(assert (=> b!6138821 m!6980600))

(assert (=> b!6138821 m!6980600))

(declare-fun m!6980692 () Bool)

(assert (=> b!6138821 m!6980692))

(assert (=> b!6138821 m!6980604))

(assert (=> b!6138821 m!6980692))

(assert (=> b!6138821 m!6980604))

(declare-fun m!6980694 () Bool)

(assert (=> b!6138821 m!6980694))

(assert (=> b!6138563 d!1923295))

(declare-fun d!1923297 () Bool)

(declare-fun nullableFct!2039 (Regex!16082) Bool)

(assert (=> d!1923297 (= (nullable!6075 (regOne!32677 (regOne!32676 r!7292))) (nullableFct!2039 (regOne!32677 (regOne!32676 r!7292))))))

(declare-fun bs!1522302 () Bool)

(assert (= bs!1522302 d!1923297))

(declare-fun m!6980696 () Bool)

(assert (=> bs!1522302 m!6980696))

(assert (=> b!6138553 d!1923297))

(declare-fun d!1923299 () Bool)

(declare-fun choose!45618 ((Set Context!10932) Int) (Set Context!10932))

(assert (=> d!1923299 (= (flatMap!1587 lt!2332808 lambda!334542) (choose!45618 lt!2332808 lambda!334542))))

(declare-fun bs!1522303 () Bool)

(assert (= bs!1522303 d!1923299))

(declare-fun m!6980698 () Bool)

(assert (=> bs!1522303 m!6980698))

(assert (=> b!6138553 d!1923299))

(declare-fun b!6138832 () Bool)

(declare-fun e!3741280 () (Set Context!10932))

(declare-fun call!509644 () (Set Context!10932))

(assert (=> b!6138832 (= e!3741280 call!509644)))

(declare-fun b!6138833 () Bool)

(declare-fun e!3741279 () (Set Context!10932))

(assert (=> b!6138833 (= e!3741279 e!3741280)))

(declare-fun c!1104079 () Bool)

(assert (=> b!6138833 (= c!1104079 (is-Cons!64421 (exprs!5966 lt!2332810)))))

(declare-fun b!6138834 () Bool)

(assert (=> b!6138834 (= e!3741279 (set.union call!509644 (derivationStepZipperUp!1256 (Context!10933 (t!378022 (exprs!5966 lt!2332810))) (h!70871 s!2326))))))

(declare-fun d!1923301 () Bool)

(declare-fun c!1104078 () Bool)

(declare-fun e!3741278 () Bool)

(assert (=> d!1923301 (= c!1104078 e!3741278)))

(declare-fun res!2543736 () Bool)

(assert (=> d!1923301 (=> (not res!2543736) (not e!3741278))))

(assert (=> d!1923301 (= res!2543736 (is-Cons!64421 (exprs!5966 lt!2332810)))))

(assert (=> d!1923301 (= (derivationStepZipperUp!1256 lt!2332810 (h!70871 s!2326)) e!3741279)))

(declare-fun b!6138835 () Bool)

(assert (=> b!6138835 (= e!3741278 (nullable!6075 (h!70869 (exprs!5966 lt!2332810))))))

(declare-fun bm!509639 () Bool)

(assert (=> bm!509639 (= call!509644 (derivationStepZipperDown!1330 (h!70869 (exprs!5966 lt!2332810)) (Context!10933 (t!378022 (exprs!5966 lt!2332810))) (h!70871 s!2326)))))

(declare-fun b!6138836 () Bool)

(assert (=> b!6138836 (= e!3741280 (as set.empty (Set Context!10932)))))

(assert (= (and d!1923301 res!2543736) b!6138835))

(assert (= (and d!1923301 c!1104078) b!6138834))

(assert (= (and d!1923301 (not c!1104078)) b!6138833))

(assert (= (and b!6138833 c!1104079) b!6138832))

(assert (= (and b!6138833 (not c!1104079)) b!6138836))

(assert (= (or b!6138834 b!6138832) bm!509639))

(declare-fun m!6980700 () Bool)

(assert (=> b!6138834 m!6980700))

(declare-fun m!6980702 () Bool)

(assert (=> b!6138835 m!6980702))

(declare-fun m!6980704 () Bool)

(assert (=> bm!509639 m!6980704))

(assert (=> b!6138553 d!1923301))

(declare-fun d!1923303 () Bool)

(declare-fun dynLambda!25385 (Int Context!10932) (Set Context!10932))

(assert (=> d!1923303 (= (flatMap!1587 lt!2332808 lambda!334542) (dynLambda!25385 lambda!334542 lt!2332810))))

(declare-fun lt!2332899 () Unit!157483)

(declare-fun choose!45619 ((Set Context!10932) Context!10932 Int) Unit!157483)

(assert (=> d!1923303 (= lt!2332899 (choose!45619 lt!2332808 lt!2332810 lambda!334542))))

(assert (=> d!1923303 (= lt!2332808 (set.insert lt!2332810 (as set.empty (Set Context!10932))))))

(assert (=> d!1923303 (= (lemmaFlatMapOnSingletonSet!1113 lt!2332808 lt!2332810 lambda!334542) lt!2332899)))

(declare-fun b_lambda!233649 () Bool)

(assert (=> (not b_lambda!233649) (not d!1923303)))

(declare-fun bs!1522304 () Bool)

(assert (= bs!1522304 d!1923303))

(assert (=> bs!1522304 m!6980426))

(declare-fun m!6980706 () Bool)

(assert (=> bs!1522304 m!6980706))

(declare-fun m!6980708 () Bool)

(assert (=> bs!1522304 m!6980708))

(assert (=> bs!1522304 m!6980430))

(assert (=> b!6138553 d!1923303))

(assert (=> b!6138562 d!1923281))

(declare-fun b!6138855 () Bool)

(declare-fun res!2543749 () Bool)

(declare-fun e!3741292 () Bool)

(assert (=> b!6138855 (=> (not res!2543749) (not e!3741292))))

(declare-fun lt!2332907 () Option!15973)

(declare-fun get!22225 (Option!15973) tuple2!66122)

(assert (=> b!6138855 (= res!2543749 (matchR!8265 (regTwo!32676 r!7292) (_2!36364 (get!22225 lt!2332907))))))

(declare-fun b!6138856 () Bool)

(declare-fun e!3741294 () Bool)

(assert (=> b!6138856 (= e!3741294 (not (isDefined!12676 lt!2332907)))))

(declare-fun b!6138857 () Bool)

(declare-fun res!2543747 () Bool)

(assert (=> b!6138857 (=> (not res!2543747) (not e!3741292))))

(assert (=> b!6138857 (= res!2543747 (matchR!8265 (regOne!32676 r!7292) (_1!36364 (get!22225 lt!2332907))))))

(declare-fun b!6138858 () Bool)

(declare-fun e!3741291 () Option!15973)

(declare-fun e!3741293 () Option!15973)

(assert (=> b!6138858 (= e!3741291 e!3741293)))

(declare-fun c!1104084 () Bool)

(assert (=> b!6138858 (= c!1104084 (is-Nil!64423 s!2326))))

(declare-fun b!6138859 () Bool)

(declare-fun lt!2332906 () Unit!157483)

(declare-fun lt!2332908 () Unit!157483)

(assert (=> b!6138859 (= lt!2332906 lt!2332908)))

(declare-fun ++!14168 (List!64547 List!64547) List!64547)

(assert (=> b!6138859 (= (++!14168 (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423)) (t!378024 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2263 (List!64547 C!32434 List!64547 List!64547) Unit!157483)

(assert (=> b!6138859 (= lt!2332908 (lemmaMoveElementToOtherListKeepsConcatEq!2263 Nil!64423 (h!70871 s!2326) (t!378024 s!2326) s!2326))))

(assert (=> b!6138859 (= e!3741293 (findConcatSeparation!2387 (regOne!32676 r!7292) (regTwo!32676 r!7292) (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423)) (t!378024 s!2326) s!2326))))

(declare-fun b!6138860 () Bool)

(declare-fun e!3741295 () Bool)

(assert (=> b!6138860 (= e!3741295 (matchR!8265 (regTwo!32676 r!7292) s!2326))))

(declare-fun d!1923305 () Bool)

(assert (=> d!1923305 e!3741294))

(declare-fun res!2543748 () Bool)

(assert (=> d!1923305 (=> res!2543748 e!3741294)))

(assert (=> d!1923305 (= res!2543748 e!3741292)))

(declare-fun res!2543750 () Bool)

(assert (=> d!1923305 (=> (not res!2543750) (not e!3741292))))

(assert (=> d!1923305 (= res!2543750 (isDefined!12676 lt!2332907))))

(assert (=> d!1923305 (= lt!2332907 e!3741291)))

(declare-fun c!1104085 () Bool)

(assert (=> d!1923305 (= c!1104085 e!3741295)))

(declare-fun res!2543751 () Bool)

(assert (=> d!1923305 (=> (not res!2543751) (not e!3741295))))

(assert (=> d!1923305 (= res!2543751 (matchR!8265 (regOne!32676 r!7292) Nil!64423))))

(assert (=> d!1923305 (validRegex!7818 (regOne!32676 r!7292))))

(assert (=> d!1923305 (= (findConcatSeparation!2387 (regOne!32676 r!7292) (regTwo!32676 r!7292) Nil!64423 s!2326 s!2326) lt!2332907)))

(declare-fun b!6138861 () Bool)

(assert (=> b!6138861 (= e!3741291 (Some!15972 (tuple2!66123 Nil!64423 s!2326)))))

(declare-fun b!6138862 () Bool)

(assert (=> b!6138862 (= e!3741292 (= (++!14168 (_1!36364 (get!22225 lt!2332907)) (_2!36364 (get!22225 lt!2332907))) s!2326))))

(declare-fun b!6138863 () Bool)

(assert (=> b!6138863 (= e!3741293 None!15972)))

(assert (= (and d!1923305 res!2543751) b!6138860))

(assert (= (and d!1923305 c!1104085) b!6138861))

(assert (= (and d!1923305 (not c!1104085)) b!6138858))

(assert (= (and b!6138858 c!1104084) b!6138863))

(assert (= (and b!6138858 (not c!1104084)) b!6138859))

(assert (= (and d!1923305 res!2543750) b!6138857))

(assert (= (and b!6138857 res!2543747) b!6138855))

(assert (= (and b!6138855 res!2543749) b!6138862))

(assert (= (and d!1923305 (not res!2543748)) b!6138856))

(declare-fun m!6980710 () Bool)

(assert (=> b!6138859 m!6980710))

(assert (=> b!6138859 m!6980710))

(declare-fun m!6980712 () Bool)

(assert (=> b!6138859 m!6980712))

(declare-fun m!6980714 () Bool)

(assert (=> b!6138859 m!6980714))

(assert (=> b!6138859 m!6980710))

(declare-fun m!6980716 () Bool)

(assert (=> b!6138859 m!6980716))

(declare-fun m!6980718 () Bool)

(assert (=> b!6138855 m!6980718))

(declare-fun m!6980720 () Bool)

(assert (=> b!6138855 m!6980720))

(declare-fun m!6980722 () Bool)

(assert (=> d!1923305 m!6980722))

(declare-fun m!6980724 () Bool)

(assert (=> d!1923305 m!6980724))

(declare-fun m!6980726 () Bool)

(assert (=> d!1923305 m!6980726))

(assert (=> b!6138856 m!6980722))

(assert (=> b!6138857 m!6980718))

(declare-fun m!6980728 () Bool)

(assert (=> b!6138857 m!6980728))

(assert (=> b!6138862 m!6980718))

(declare-fun m!6980730 () Bool)

(assert (=> b!6138862 m!6980730))

(declare-fun m!6980732 () Bool)

(assert (=> b!6138860 m!6980732))

(assert (=> b!6138552 d!1923305))

(declare-fun d!1923307 () Bool)

(declare-fun choose!45620 (Int) Bool)

(assert (=> d!1923307 (= (Exists!3152 lambda!334541) (choose!45620 lambda!334541))))

(declare-fun bs!1522305 () Bool)

(assert (= bs!1522305 d!1923307))

(declare-fun m!6980734 () Bool)

(assert (=> bs!1522305 m!6980734))

(assert (=> b!6138552 d!1923307))

(declare-fun d!1923309 () Bool)

(assert (=> d!1923309 (= (Exists!3152 lambda!334540) (choose!45620 lambda!334540))))

(declare-fun bs!1522306 () Bool)

(assert (= bs!1522306 d!1923309))

(declare-fun m!6980736 () Bool)

(assert (=> bs!1522306 m!6980736))

(assert (=> b!6138552 d!1923309))

(declare-fun bs!1522307 () Bool)

(declare-fun d!1923311 () Bool)

(assert (= bs!1522307 (and d!1923311 b!6138552)))

(declare-fun lambda!334573 () Int)

(assert (=> bs!1522307 (= lambda!334573 lambda!334540)))

(assert (=> bs!1522307 (not (= lambda!334573 lambda!334541))))

(declare-fun bs!1522308 () Bool)

(assert (= bs!1522308 (and d!1923311 b!6138730)))

(assert (=> bs!1522308 (not (= lambda!334573 lambda!334563))))

(declare-fun bs!1522309 () Bool)

(assert (= bs!1522309 (and d!1923311 b!6138734)))

(assert (=> bs!1522309 (not (= lambda!334573 lambda!334564))))

(assert (=> d!1923311 true))

(assert (=> d!1923311 true))

(assert (=> d!1923311 true))

(assert (=> d!1923311 (= (isDefined!12676 (findConcatSeparation!2387 (regOne!32676 r!7292) (regTwo!32676 r!7292) Nil!64423 s!2326 s!2326)) (Exists!3152 lambda!334573))))

(declare-fun lt!2332911 () Unit!157483)

(declare-fun choose!45621 (Regex!16082 Regex!16082 List!64547) Unit!157483)

(assert (=> d!1923311 (= lt!2332911 (choose!45621 (regOne!32676 r!7292) (regTwo!32676 r!7292) s!2326))))

(assert (=> d!1923311 (validRegex!7818 (regOne!32676 r!7292))))

(assert (=> d!1923311 (= (lemmaFindConcatSeparationEquivalentToExists!2151 (regOne!32676 r!7292) (regTwo!32676 r!7292) s!2326) lt!2332911)))

(declare-fun bs!1522310 () Bool)

(assert (= bs!1522310 d!1923311))

(assert (=> bs!1522310 m!6980488))

(declare-fun m!6980738 () Bool)

(assert (=> bs!1522310 m!6980738))

(assert (=> bs!1522310 m!6980726))

(declare-fun m!6980740 () Bool)

(assert (=> bs!1522310 m!6980740))

(assert (=> bs!1522310 m!6980488))

(assert (=> bs!1522310 m!6980490))

(assert (=> b!6138552 d!1923311))

(declare-fun bs!1522311 () Bool)

(declare-fun d!1923313 () Bool)

(assert (= bs!1522311 (and d!1923313 b!6138552)))

(declare-fun lambda!334578 () Int)

(assert (=> bs!1522311 (= lambda!334578 lambda!334540)))

(assert (=> bs!1522311 (not (= lambda!334578 lambda!334541))))

(declare-fun bs!1522312 () Bool)

(assert (= bs!1522312 (and d!1923313 b!6138730)))

(assert (=> bs!1522312 (not (= lambda!334578 lambda!334563))))

(declare-fun bs!1522313 () Bool)

(assert (= bs!1522313 (and d!1923313 d!1923311)))

(assert (=> bs!1522313 (= lambda!334578 lambda!334573)))

(declare-fun bs!1522314 () Bool)

(assert (= bs!1522314 (and d!1923313 b!6138734)))

(assert (=> bs!1522314 (not (= lambda!334578 lambda!334564))))

(assert (=> d!1923313 true))

(assert (=> d!1923313 true))

(assert (=> d!1923313 true))

(declare-fun bs!1522315 () Bool)

(assert (= bs!1522315 d!1923313))

(declare-fun lambda!334579 () Int)

(assert (=> bs!1522315 (not (= lambda!334579 lambda!334578))))

(assert (=> bs!1522311 (not (= lambda!334579 lambda!334540))))

(assert (=> bs!1522311 (= lambda!334579 lambda!334541)))

(assert (=> bs!1522312 (not (= lambda!334579 lambda!334563))))

(assert (=> bs!1522313 (not (= lambda!334579 lambda!334573))))

(assert (=> bs!1522314 (= lambda!334579 lambda!334564)))

(assert (=> d!1923313 true))

(assert (=> d!1923313 true))

(assert (=> d!1923313 true))

(assert (=> d!1923313 (= (Exists!3152 lambda!334578) (Exists!3152 lambda!334579))))

(declare-fun lt!2332914 () Unit!157483)

(declare-fun choose!45622 (Regex!16082 Regex!16082 List!64547) Unit!157483)

(assert (=> d!1923313 (= lt!2332914 (choose!45622 (regOne!32676 r!7292) (regTwo!32676 r!7292) s!2326))))

(assert (=> d!1923313 (validRegex!7818 (regOne!32676 r!7292))))

(assert (=> d!1923313 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1689 (regOne!32676 r!7292) (regTwo!32676 r!7292) s!2326) lt!2332914)))

(declare-fun m!6980742 () Bool)

(assert (=> bs!1522315 m!6980742))

(declare-fun m!6980744 () Bool)

(assert (=> bs!1522315 m!6980744))

(declare-fun m!6980746 () Bool)

(assert (=> bs!1522315 m!6980746))

(assert (=> bs!1522315 m!6980726))

(assert (=> b!6138552 d!1923313))

(declare-fun d!1923315 () Bool)

(declare-fun isEmpty!36375 (Option!15973) Bool)

(assert (=> d!1923315 (= (isDefined!12676 (findConcatSeparation!2387 (regOne!32676 r!7292) (regTwo!32676 r!7292) Nil!64423 s!2326 s!2326)) (not (isEmpty!36375 (findConcatSeparation!2387 (regOne!32676 r!7292) (regTwo!32676 r!7292) Nil!64423 s!2326 s!2326))))))

(declare-fun bs!1522316 () Bool)

(assert (= bs!1522316 d!1923315))

(assert (=> bs!1522316 m!6980488))

(declare-fun m!6980748 () Bool)

(assert (=> bs!1522316 m!6980748))

(assert (=> b!6138552 d!1923315))

(declare-fun bs!1522317 () Bool)

(declare-fun d!1923317 () Bool)

(assert (= bs!1522317 (and d!1923317 d!1923279)))

(declare-fun lambda!334580 () Int)

(assert (=> bs!1522317 (= lambda!334580 lambda!334558)))

(declare-fun bs!1522318 () Bool)

(assert (= bs!1522318 (and d!1923317 d!1923289)))

(assert (=> bs!1522318 (= lambda!334580 lambda!334567)))

(declare-fun bs!1522319 () Bool)

(assert (= bs!1522319 (and d!1923317 d!1923291)))

(assert (=> bs!1522319 (= lambda!334580 lambda!334570)))

(assert (=> d!1923317 (= (inv!83453 setElem!41515) (forall!15203 (exprs!5966 setElem!41515) lambda!334580))))

(declare-fun bs!1522320 () Bool)

(assert (= bs!1522320 d!1923317))

(declare-fun m!6980750 () Bool)

(assert (=> bs!1522320 m!6980750))

(assert (=> setNonEmpty!41515 d!1923317))

(declare-fun bs!1522321 () Bool)

(declare-fun d!1923319 () Bool)

(assert (= bs!1522321 (and d!1923319 d!1923279)))

(declare-fun lambda!334583 () Int)

(assert (=> bs!1522321 (= lambda!334583 lambda!334558)))

(declare-fun bs!1522322 () Bool)

(assert (= bs!1522322 (and d!1923319 d!1923289)))

(assert (=> bs!1522322 (= lambda!334583 lambda!334567)))

(declare-fun bs!1522323 () Bool)

(assert (= bs!1522323 (and d!1923319 d!1923291)))

(assert (=> bs!1522323 (= lambda!334583 lambda!334570)))

(declare-fun bs!1522324 () Bool)

(assert (= bs!1522324 (and d!1923319 d!1923317)))

(assert (=> bs!1522324 (= lambda!334583 lambda!334580)))

(declare-fun b!6138896 () Bool)

(declare-fun e!3741318 () Regex!16082)

(assert (=> b!6138896 (= e!3741318 (Concat!24927 (h!70869 (exprs!5966 (h!70870 zl!343))) (generalisedConcat!1679 (t!378022 (exprs!5966 (h!70870 zl!343))))))))

(declare-fun e!3741314 () Bool)

(assert (=> d!1923319 e!3741314))

(declare-fun res!2543768 () Bool)

(assert (=> d!1923319 (=> (not res!2543768) (not e!3741314))))

(declare-fun lt!2332917 () Regex!16082)

(assert (=> d!1923319 (= res!2543768 (validRegex!7818 lt!2332917))))

(declare-fun e!3741319 () Regex!16082)

(assert (=> d!1923319 (= lt!2332917 e!3741319)))

(declare-fun c!1104096 () Bool)

(declare-fun e!3741315 () Bool)

(assert (=> d!1923319 (= c!1104096 e!3741315)))

(declare-fun res!2543769 () Bool)

(assert (=> d!1923319 (=> (not res!2543769) (not e!3741315))))

(assert (=> d!1923319 (= res!2543769 (is-Cons!64421 (exprs!5966 (h!70870 zl!343))))))

(assert (=> d!1923319 (forall!15203 (exprs!5966 (h!70870 zl!343)) lambda!334583)))

(assert (=> d!1923319 (= (generalisedConcat!1679 (exprs!5966 (h!70870 zl!343))) lt!2332917)))

(declare-fun b!6138897 () Bool)

(declare-fun e!3741316 () Bool)

(assert (=> b!6138897 (= e!3741314 e!3741316)))

(declare-fun c!1104094 () Bool)

(assert (=> b!6138897 (= c!1104094 (isEmpty!36371 (exprs!5966 (h!70870 zl!343))))))

(declare-fun b!6138898 () Bool)

(declare-fun e!3741317 () Bool)

(assert (=> b!6138898 (= e!3741316 e!3741317)))

(declare-fun c!1104097 () Bool)

(assert (=> b!6138898 (= c!1104097 (isEmpty!36371 (tail!11771 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun b!6138899 () Bool)

(assert (=> b!6138899 (= e!3741315 (isEmpty!36371 (t!378022 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun b!6138900 () Bool)

(assert (=> b!6138900 (= e!3741318 EmptyExpr!16082)))

(declare-fun b!6138901 () Bool)

(assert (=> b!6138901 (= e!3741319 (h!70869 (exprs!5966 (h!70870 zl!343))))))

(declare-fun b!6138902 () Bool)

(declare-fun isEmptyExpr!1499 (Regex!16082) Bool)

(assert (=> b!6138902 (= e!3741316 (isEmptyExpr!1499 lt!2332917))))

(declare-fun b!6138903 () Bool)

(assert (=> b!6138903 (= e!3741317 (= lt!2332917 (head!12686 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun b!6138904 () Bool)

(declare-fun isConcat!1022 (Regex!16082) Bool)

(assert (=> b!6138904 (= e!3741317 (isConcat!1022 lt!2332917))))

(declare-fun b!6138905 () Bool)

(assert (=> b!6138905 (= e!3741319 e!3741318)))

(declare-fun c!1104095 () Bool)

(assert (=> b!6138905 (= c!1104095 (is-Cons!64421 (exprs!5966 (h!70870 zl!343))))))

(assert (= (and d!1923319 res!2543769) b!6138899))

(assert (= (and d!1923319 c!1104096) b!6138901))

(assert (= (and d!1923319 (not c!1104096)) b!6138905))

(assert (= (and b!6138905 c!1104095) b!6138896))

(assert (= (and b!6138905 (not c!1104095)) b!6138900))

(assert (= (and d!1923319 res!2543768) b!6138897))

(assert (= (and b!6138897 c!1104094) b!6138902))

(assert (= (and b!6138897 (not c!1104094)) b!6138898))

(assert (= (and b!6138898 c!1104097) b!6138903))

(assert (= (and b!6138898 (not c!1104097)) b!6138904))

(declare-fun m!6980752 () Bool)

(assert (=> b!6138903 m!6980752))

(declare-fun m!6980754 () Bool)

(assert (=> d!1923319 m!6980754))

(declare-fun m!6980756 () Bool)

(assert (=> d!1923319 m!6980756))

(declare-fun m!6980758 () Bool)

(assert (=> b!6138897 m!6980758))

(declare-fun m!6980760 () Bool)

(assert (=> b!6138904 m!6980760))

(assert (=> b!6138899 m!6980500))

(declare-fun m!6980762 () Bool)

(assert (=> b!6138902 m!6980762))

(declare-fun m!6980764 () Bool)

(assert (=> b!6138896 m!6980764))

(declare-fun m!6980766 () Bool)

(assert (=> b!6138898 m!6980766))

(assert (=> b!6138898 m!6980766))

(declare-fun m!6980768 () Bool)

(assert (=> b!6138898 m!6980768))

(assert (=> b!6138551 d!1923319))

(declare-fun b!6138928 () Bool)

(declare-fun e!3741336 () Bool)

(assert (=> b!6138928 (= e!3741336 (nullable!6075 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343))))))))

(declare-fun bm!509652 () Bool)

(declare-fun call!509660 () (Set Context!10932))

(declare-fun call!509658 () (Set Context!10932))

(assert (=> bm!509652 (= call!509660 call!509658)))

(declare-fun b!6138929 () Bool)

(declare-fun e!3741333 () (Set Context!10932))

(declare-fun call!509661 () (Set Context!10932))

(assert (=> b!6138929 (= e!3741333 (set.union call!509658 call!509661))))

(declare-fun b!6138930 () Bool)

(declare-fun e!3741337 () (Set Context!10932))

(declare-fun call!509657 () (Set Context!10932))

(assert (=> b!6138930 (= e!3741337 call!509657)))

(declare-fun bm!509653 () Bool)

(declare-fun call!509662 () List!64545)

(declare-fun call!509659 () List!64545)

(assert (=> bm!509653 (= call!509662 call!509659)))

(declare-fun b!6138931 () Bool)

(declare-fun e!3741332 () (Set Context!10932))

(assert (=> b!6138931 (= e!3741332 (as set.empty (Set Context!10932)))))

(declare-fun b!6138932 () Bool)

(declare-fun c!1104110 () Bool)

(assert (=> b!6138932 (= c!1104110 e!3741336)))

(declare-fun res!2543772 () Bool)

(assert (=> b!6138932 (=> (not res!2543772) (not e!3741336))))

(assert (=> b!6138932 (= res!2543772 (is-Concat!24927 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun e!3741335 () (Set Context!10932))

(assert (=> b!6138932 (= e!3741333 e!3741335)))

(declare-fun c!1104108 () Bool)

(declare-fun bm!509654 () Bool)

(declare-fun c!1104109 () Bool)

(assert (=> bm!509654 (= call!509658 (derivationStepZipperDown!1330 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343))))))) (ite (or c!1104108 c!1104110) lt!2332796 (Context!10933 call!509662)) (h!70871 s!2326)))))

(declare-fun b!6138933 () Bool)

(assert (=> b!6138933 (= e!3741335 e!3741337)))

(assert (=> b!6138933 (= c!1104109 (is-Concat!24927 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun bm!509655 () Bool)

(declare-fun $colon$colon!1959 (List!64545 Regex!16082) List!64545)

(assert (=> bm!509655 (= call!509659 ($colon$colon!1959 (exprs!5966 lt!2332796) (ite (or c!1104110 c!1104109) (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (h!70869 (exprs!5966 (h!70870 zl!343))))))))

(declare-fun bm!509656 () Bool)

(assert (=> bm!509656 (= call!509657 call!509660)))

(declare-fun b!6138934 () Bool)

(assert (=> b!6138934 (= e!3741332 call!509657)))

(declare-fun b!6138935 () Bool)

(declare-fun e!3741334 () (Set Context!10932))

(assert (=> b!6138935 (= e!3741334 e!3741333)))

(assert (=> b!6138935 (= c!1104108 (is-Union!16082 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun b!6138936 () Bool)

(declare-fun c!1104112 () Bool)

(assert (=> b!6138936 (= c!1104112 (is-Star!16082 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(assert (=> b!6138936 (= e!3741337 e!3741332)))

(declare-fun d!1923321 () Bool)

(declare-fun c!1104111 () Bool)

(assert (=> d!1923321 (= c!1104111 (and (is-ElementMatch!16082 (h!70869 (exprs!5966 (h!70870 zl!343)))) (= (c!1104020 (h!70869 (exprs!5966 (h!70870 zl!343)))) (h!70871 s!2326))))))

(assert (=> d!1923321 (= (derivationStepZipperDown!1330 (h!70869 (exprs!5966 (h!70870 zl!343))) lt!2332796 (h!70871 s!2326)) e!3741334)))

(declare-fun b!6138937 () Bool)

(assert (=> b!6138937 (= e!3741334 (set.insert lt!2332796 (as set.empty (Set Context!10932))))))

(declare-fun bm!509657 () Bool)

(assert (=> bm!509657 (= call!509661 (derivationStepZipperDown!1330 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343))))) (ite c!1104108 lt!2332796 (Context!10933 call!509659)) (h!70871 s!2326)))))

(declare-fun b!6138938 () Bool)

(assert (=> b!6138938 (= e!3741335 (set.union call!509661 call!509660))))

(assert (= (and d!1923321 c!1104111) b!6138937))

(assert (= (and d!1923321 (not c!1104111)) b!6138935))

(assert (= (and b!6138935 c!1104108) b!6138929))

(assert (= (and b!6138935 (not c!1104108)) b!6138932))

(assert (= (and b!6138932 res!2543772) b!6138928))

(assert (= (and b!6138932 c!1104110) b!6138938))

(assert (= (and b!6138932 (not c!1104110)) b!6138933))

(assert (= (and b!6138933 c!1104109) b!6138930))

(assert (= (and b!6138933 (not c!1104109)) b!6138936))

(assert (= (and b!6138936 c!1104112) b!6138934))

(assert (= (and b!6138936 (not c!1104112)) b!6138931))

(assert (= (or b!6138930 b!6138934) bm!509653))

(assert (= (or b!6138930 b!6138934) bm!509656))

(assert (= (or b!6138938 bm!509653) bm!509655))

(assert (= (or b!6138938 bm!509656) bm!509652))

(assert (= (or b!6138929 b!6138938) bm!509657))

(assert (= (or b!6138929 bm!509652) bm!509654))

(declare-fun m!6980770 () Bool)

(assert (=> bm!509657 m!6980770))

(declare-fun m!6980772 () Bool)

(assert (=> bm!509654 m!6980772))

(declare-fun m!6980774 () Bool)

(assert (=> b!6138928 m!6980774))

(declare-fun m!6980776 () Bool)

(assert (=> bm!509655 m!6980776))

(declare-fun m!6980778 () Bool)

(assert (=> b!6138937 m!6980778))

(assert (=> b!6138541 d!1923321))

(declare-fun b!6138939 () Bool)

(declare-fun e!3741340 () (Set Context!10932))

(declare-fun call!509663 () (Set Context!10932))

(assert (=> b!6138939 (= e!3741340 call!509663)))

(declare-fun b!6138940 () Bool)

(declare-fun e!3741339 () (Set Context!10932))

(assert (=> b!6138940 (= e!3741339 e!3741340)))

(declare-fun c!1104114 () Bool)

(assert (=> b!6138940 (= c!1104114 (is-Cons!64421 (exprs!5966 lt!2332796)))))

(declare-fun b!6138941 () Bool)

(assert (=> b!6138941 (= e!3741339 (set.union call!509663 (derivationStepZipperUp!1256 (Context!10933 (t!378022 (exprs!5966 lt!2332796))) (h!70871 s!2326))))))

(declare-fun d!1923323 () Bool)

(declare-fun c!1104113 () Bool)

(declare-fun e!3741338 () Bool)

(assert (=> d!1923323 (= c!1104113 e!3741338)))

(declare-fun res!2543773 () Bool)

(assert (=> d!1923323 (=> (not res!2543773) (not e!3741338))))

(assert (=> d!1923323 (= res!2543773 (is-Cons!64421 (exprs!5966 lt!2332796)))))

(assert (=> d!1923323 (= (derivationStepZipperUp!1256 lt!2332796 (h!70871 s!2326)) e!3741339)))

(declare-fun b!6138942 () Bool)

(assert (=> b!6138942 (= e!3741338 (nullable!6075 (h!70869 (exprs!5966 lt!2332796))))))

(declare-fun bm!509658 () Bool)

(assert (=> bm!509658 (= call!509663 (derivationStepZipperDown!1330 (h!70869 (exprs!5966 lt!2332796)) (Context!10933 (t!378022 (exprs!5966 lt!2332796))) (h!70871 s!2326)))))

(declare-fun b!6138943 () Bool)

(assert (=> b!6138943 (= e!3741340 (as set.empty (Set Context!10932)))))

(assert (= (and d!1923323 res!2543773) b!6138942))

(assert (= (and d!1923323 c!1104113) b!6138941))

(assert (= (and d!1923323 (not c!1104113)) b!6138940))

(assert (= (and b!6138940 c!1104114) b!6138939))

(assert (= (and b!6138940 (not c!1104114)) b!6138943))

(assert (= (or b!6138941 b!6138939) bm!509658))

(declare-fun m!6980780 () Bool)

(assert (=> b!6138941 m!6980780))

(declare-fun m!6980782 () Bool)

(assert (=> b!6138942 m!6980782))

(declare-fun m!6980784 () Bool)

(assert (=> bm!509658 m!6980784))

(assert (=> b!6138541 d!1923323))

(declare-fun d!1923325 () Bool)

(assert (=> d!1923325 (= (flatMap!1587 z!1189 lambda!334542) (dynLambda!25385 lambda!334542 (h!70870 zl!343)))))

(declare-fun lt!2332918 () Unit!157483)

(assert (=> d!1923325 (= lt!2332918 (choose!45619 z!1189 (h!70870 zl!343) lambda!334542))))

(assert (=> d!1923325 (= z!1189 (set.insert (h!70870 zl!343) (as set.empty (Set Context!10932))))))

(assert (=> d!1923325 (= (lemmaFlatMapOnSingletonSet!1113 z!1189 (h!70870 zl!343) lambda!334542) lt!2332918)))

(declare-fun b_lambda!233651 () Bool)

(assert (=> (not b_lambda!233651) (not d!1923325)))

(declare-fun bs!1522325 () Bool)

(assert (= bs!1522325 d!1923325))

(assert (=> bs!1522325 m!6980456))

(declare-fun m!6980786 () Bool)

(assert (=> bs!1522325 m!6980786))

(declare-fun m!6980788 () Bool)

(assert (=> bs!1522325 m!6980788))

(declare-fun m!6980790 () Bool)

(assert (=> bs!1522325 m!6980790))

(assert (=> b!6138541 d!1923325))

(declare-fun d!1923327 () Bool)

(assert (=> d!1923327 (= (nullable!6075 (h!70869 (exprs!5966 (h!70870 zl!343)))) (nullableFct!2039 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun bs!1522326 () Bool)

(assert (= bs!1522326 d!1923327))

(declare-fun m!6980792 () Bool)

(assert (=> bs!1522326 m!6980792))

(assert (=> b!6138541 d!1923327))

(declare-fun b!6138944 () Bool)

(declare-fun e!3741343 () (Set Context!10932))

(declare-fun call!509664 () (Set Context!10932))

(assert (=> b!6138944 (= e!3741343 call!509664)))

(declare-fun b!6138945 () Bool)

(declare-fun e!3741342 () (Set Context!10932))

(assert (=> b!6138945 (= e!3741342 e!3741343)))

(declare-fun c!1104116 () Bool)

(assert (=> b!6138945 (= c!1104116 (is-Cons!64421 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))))))))

(declare-fun b!6138946 () Bool)

(assert (=> b!6138946 (= e!3741342 (set.union call!509664 (derivationStepZipperUp!1256 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (h!70871 s!2326))))))

(declare-fun d!1923329 () Bool)

(declare-fun c!1104115 () Bool)

(declare-fun e!3741341 () Bool)

(assert (=> d!1923329 (= c!1104115 e!3741341)))

(declare-fun res!2543774 () Bool)

(assert (=> d!1923329 (=> (not res!2543774) (not e!3741341))))

(assert (=> d!1923329 (= res!2543774 (is-Cons!64421 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))))))))

(assert (=> d!1923329 (= (derivationStepZipperUp!1256 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))) (h!70871 s!2326)) e!3741342)))

(declare-fun b!6138947 () Bool)

(assert (=> b!6138947 (= e!3741341 (nullable!6075 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))))))

(declare-fun bm!509659 () Bool)

(assert (=> bm!509659 (= call!509664 (derivationStepZipperDown!1330 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))))) (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (h!70871 s!2326)))))

(declare-fun b!6138948 () Bool)

(assert (=> b!6138948 (= e!3741343 (as set.empty (Set Context!10932)))))

(assert (= (and d!1923329 res!2543774) b!6138947))

(assert (= (and d!1923329 c!1104115) b!6138946))

(assert (= (and d!1923329 (not c!1104115)) b!6138945))

(assert (= (and b!6138945 c!1104116) b!6138944))

(assert (= (and b!6138945 (not c!1104116)) b!6138948))

(assert (= (or b!6138946 b!6138944) bm!509659))

(declare-fun m!6980794 () Bool)

(assert (=> b!6138946 m!6980794))

(declare-fun m!6980796 () Bool)

(assert (=> b!6138947 m!6980796))

(declare-fun m!6980798 () Bool)

(assert (=> bm!509659 m!6980798))

(assert (=> b!6138541 d!1923329))

(declare-fun b!6138949 () Bool)

(declare-fun e!3741346 () (Set Context!10932))

(declare-fun call!509665 () (Set Context!10932))

(assert (=> b!6138949 (= e!3741346 call!509665)))

(declare-fun b!6138950 () Bool)

(declare-fun e!3741345 () (Set Context!10932))

(assert (=> b!6138950 (= e!3741345 e!3741346)))

(declare-fun c!1104118 () Bool)

(assert (=> b!6138950 (= c!1104118 (is-Cons!64421 (exprs!5966 (h!70870 zl!343))))))

(declare-fun b!6138951 () Bool)

(assert (=> b!6138951 (= e!3741345 (set.union call!509665 (derivationStepZipperUp!1256 (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343)))) (h!70871 s!2326))))))

(declare-fun d!1923331 () Bool)

(declare-fun c!1104117 () Bool)

(declare-fun e!3741344 () Bool)

(assert (=> d!1923331 (= c!1104117 e!3741344)))

(declare-fun res!2543775 () Bool)

(assert (=> d!1923331 (=> (not res!2543775) (not e!3741344))))

(assert (=> d!1923331 (= res!2543775 (is-Cons!64421 (exprs!5966 (h!70870 zl!343))))))

(assert (=> d!1923331 (= (derivationStepZipperUp!1256 (h!70870 zl!343) (h!70871 s!2326)) e!3741345)))

(declare-fun b!6138952 () Bool)

(assert (=> b!6138952 (= e!3741344 (nullable!6075 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun bm!509660 () Bool)

(assert (=> bm!509660 (= call!509665 (derivationStepZipperDown!1330 (h!70869 (exprs!5966 (h!70870 zl!343))) (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343)))) (h!70871 s!2326)))))

(declare-fun b!6138953 () Bool)

(assert (=> b!6138953 (= e!3741346 (as set.empty (Set Context!10932)))))

(assert (= (and d!1923331 res!2543775) b!6138952))

(assert (= (and d!1923331 c!1104117) b!6138951))

(assert (= (and d!1923331 (not c!1104117)) b!6138950))

(assert (= (and b!6138950 c!1104118) b!6138949))

(assert (= (and b!6138950 (not c!1104118)) b!6138953))

(assert (= (or b!6138951 b!6138949) bm!509660))

(declare-fun m!6980800 () Bool)

(assert (=> b!6138951 m!6980800))

(assert (=> b!6138952 m!6980464))

(declare-fun m!6980802 () Bool)

(assert (=> bm!509660 m!6980802))

(assert (=> b!6138541 d!1923331))

(declare-fun d!1923333 () Bool)

(assert (=> d!1923333 (= (flatMap!1587 z!1189 lambda!334542) (choose!45618 z!1189 lambda!334542))))

(declare-fun bs!1522327 () Bool)

(assert (= bs!1522327 d!1923333))

(declare-fun m!6980804 () Bool)

(assert (=> bs!1522327 m!6980804))

(assert (=> b!6138541 d!1923333))

(declare-fun b!6138954 () Bool)

(declare-fun e!3741351 () Bool)

(assert (=> b!6138954 (= e!3741351 (nullable!6075 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292)))))))

(declare-fun bm!509661 () Bool)

(declare-fun call!509669 () (Set Context!10932))

(declare-fun call!509667 () (Set Context!10932))

(assert (=> bm!509661 (= call!509669 call!509667)))

(declare-fun b!6138955 () Bool)

(declare-fun e!3741348 () (Set Context!10932))

(declare-fun call!509670 () (Set Context!10932))

(assert (=> b!6138955 (= e!3741348 (set.union call!509667 call!509670))))

(declare-fun b!6138956 () Bool)

(declare-fun e!3741352 () (Set Context!10932))

(declare-fun call!509666 () (Set Context!10932))

(assert (=> b!6138956 (= e!3741352 call!509666)))

(declare-fun bm!509662 () Bool)

(declare-fun call!509671 () List!64545)

(declare-fun call!509668 () List!64545)

(assert (=> bm!509662 (= call!509671 call!509668)))

(declare-fun b!6138957 () Bool)

(declare-fun e!3741347 () (Set Context!10932))

(assert (=> b!6138957 (= e!3741347 (as set.empty (Set Context!10932)))))

(declare-fun b!6138958 () Bool)

(declare-fun c!1104121 () Bool)

(assert (=> b!6138958 (= c!1104121 e!3741351)))

(declare-fun res!2543776 () Bool)

(assert (=> b!6138958 (=> (not res!2543776) (not e!3741351))))

(assert (=> b!6138958 (= res!2543776 (is-Concat!24927 (regTwo!32677 (regOne!32676 r!7292))))))

(declare-fun e!3741350 () (Set Context!10932))

(assert (=> b!6138958 (= e!3741348 e!3741350)))

(declare-fun c!1104119 () Bool)

(declare-fun bm!509663 () Bool)

(declare-fun c!1104120 () Bool)

(assert (=> bm!509663 (= call!509667 (derivationStepZipperDown!1330 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292)))))) (ite (or c!1104119 c!1104121) lt!2332796 (Context!10933 call!509671)) (h!70871 s!2326)))))

(declare-fun b!6138959 () Bool)

(assert (=> b!6138959 (= e!3741350 e!3741352)))

(assert (=> b!6138959 (= c!1104120 (is-Concat!24927 (regTwo!32677 (regOne!32676 r!7292))))))

(declare-fun bm!509664 () Bool)

(assert (=> bm!509664 (= call!509668 ($colon$colon!1959 (exprs!5966 lt!2332796) (ite (or c!1104121 c!1104120) (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (regTwo!32677 (regOne!32676 r!7292)))))))

(declare-fun bm!509665 () Bool)

(assert (=> bm!509665 (= call!509666 call!509669)))

(declare-fun b!6138960 () Bool)

(assert (=> b!6138960 (= e!3741347 call!509666)))

(declare-fun b!6138961 () Bool)

(declare-fun e!3741349 () (Set Context!10932))

(assert (=> b!6138961 (= e!3741349 e!3741348)))

(assert (=> b!6138961 (= c!1104119 (is-Union!16082 (regTwo!32677 (regOne!32676 r!7292))))))

(declare-fun b!6138962 () Bool)

(declare-fun c!1104123 () Bool)

(assert (=> b!6138962 (= c!1104123 (is-Star!16082 (regTwo!32677 (regOne!32676 r!7292))))))

(assert (=> b!6138962 (= e!3741352 e!3741347)))

(declare-fun d!1923335 () Bool)

(declare-fun c!1104122 () Bool)

(assert (=> d!1923335 (= c!1104122 (and (is-ElementMatch!16082 (regTwo!32677 (regOne!32676 r!7292))) (= (c!1104020 (regTwo!32677 (regOne!32676 r!7292))) (h!70871 s!2326))))))

(assert (=> d!1923335 (= (derivationStepZipperDown!1330 (regTwo!32677 (regOne!32676 r!7292)) lt!2332796 (h!70871 s!2326)) e!3741349)))

(declare-fun b!6138963 () Bool)

(assert (=> b!6138963 (= e!3741349 (set.insert lt!2332796 (as set.empty (Set Context!10932))))))

(declare-fun bm!509666 () Bool)

(assert (=> bm!509666 (= call!509670 (derivationStepZipperDown!1330 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292)))) (ite c!1104119 lt!2332796 (Context!10933 call!509668)) (h!70871 s!2326)))))

(declare-fun b!6138964 () Bool)

(assert (=> b!6138964 (= e!3741350 (set.union call!509670 call!509669))))

(assert (= (and d!1923335 c!1104122) b!6138963))

(assert (= (and d!1923335 (not c!1104122)) b!6138961))

(assert (= (and b!6138961 c!1104119) b!6138955))

(assert (= (and b!6138961 (not c!1104119)) b!6138958))

(assert (= (and b!6138958 res!2543776) b!6138954))

(assert (= (and b!6138958 c!1104121) b!6138964))

(assert (= (and b!6138958 (not c!1104121)) b!6138959))

(assert (= (and b!6138959 c!1104120) b!6138956))

(assert (= (and b!6138959 (not c!1104120)) b!6138962))

(assert (= (and b!6138962 c!1104123) b!6138960))

(assert (= (and b!6138962 (not c!1104123)) b!6138957))

(assert (= (or b!6138956 b!6138960) bm!509662))

(assert (= (or b!6138956 b!6138960) bm!509665))

(assert (= (or b!6138964 bm!509662) bm!509664))

(assert (= (or b!6138964 bm!509665) bm!509661))

(assert (= (or b!6138955 b!6138964) bm!509666))

(assert (= (or b!6138955 bm!509661) bm!509663))

(declare-fun m!6980806 () Bool)

(assert (=> bm!509666 m!6980806))

(declare-fun m!6980808 () Bool)

(assert (=> bm!509663 m!6980808))

(declare-fun m!6980810 () Bool)

(assert (=> b!6138954 m!6980810))

(declare-fun m!6980812 () Bool)

(assert (=> bm!509664 m!6980812))

(assert (=> b!6138963 m!6980778))

(assert (=> b!6138542 d!1923335))

(declare-fun b!6138965 () Bool)

(declare-fun e!3741357 () Bool)

(assert (=> b!6138965 (= e!3741357 (nullable!6075 (regOne!32676 (regOne!32677 (regOne!32676 r!7292)))))))

(declare-fun bm!509667 () Bool)

(declare-fun call!509675 () (Set Context!10932))

(declare-fun call!509673 () (Set Context!10932))

(assert (=> bm!509667 (= call!509675 call!509673)))

(declare-fun b!6138966 () Bool)

(declare-fun e!3741354 () (Set Context!10932))

(declare-fun call!509676 () (Set Context!10932))

(assert (=> b!6138966 (= e!3741354 (set.union call!509673 call!509676))))

(declare-fun b!6138967 () Bool)

(declare-fun e!3741358 () (Set Context!10932))

(declare-fun call!509672 () (Set Context!10932))

(assert (=> b!6138967 (= e!3741358 call!509672)))

(declare-fun bm!509668 () Bool)

(declare-fun call!509677 () List!64545)

(declare-fun call!509674 () List!64545)

(assert (=> bm!509668 (= call!509677 call!509674)))

(declare-fun b!6138968 () Bool)

(declare-fun e!3741353 () (Set Context!10932))

(assert (=> b!6138968 (= e!3741353 (as set.empty (Set Context!10932)))))

(declare-fun b!6138969 () Bool)

(declare-fun c!1104126 () Bool)

(assert (=> b!6138969 (= c!1104126 e!3741357)))

(declare-fun res!2543777 () Bool)

(assert (=> b!6138969 (=> (not res!2543777) (not e!3741357))))

(assert (=> b!6138969 (= res!2543777 (is-Concat!24927 (regOne!32677 (regOne!32676 r!7292))))))

(declare-fun e!3741356 () (Set Context!10932))

(assert (=> b!6138969 (= e!3741354 e!3741356)))

(declare-fun c!1104124 () Bool)

(declare-fun c!1104125 () Bool)

(declare-fun bm!509669 () Bool)

(assert (=> bm!509669 (= call!509673 (derivationStepZipperDown!1330 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292)))))) (ite (or c!1104124 c!1104126) lt!2332796 (Context!10933 call!509677)) (h!70871 s!2326)))))

(declare-fun b!6138970 () Bool)

(assert (=> b!6138970 (= e!3741356 e!3741358)))

(assert (=> b!6138970 (= c!1104125 (is-Concat!24927 (regOne!32677 (regOne!32676 r!7292))))))

(declare-fun bm!509670 () Bool)

(assert (=> bm!509670 (= call!509674 ($colon$colon!1959 (exprs!5966 lt!2332796) (ite (or c!1104126 c!1104125) (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (regOne!32677 (regOne!32676 r!7292)))))))

(declare-fun bm!509671 () Bool)

(assert (=> bm!509671 (= call!509672 call!509675)))

(declare-fun b!6138971 () Bool)

(assert (=> b!6138971 (= e!3741353 call!509672)))

(declare-fun b!6138972 () Bool)

(declare-fun e!3741355 () (Set Context!10932))

(assert (=> b!6138972 (= e!3741355 e!3741354)))

(assert (=> b!6138972 (= c!1104124 (is-Union!16082 (regOne!32677 (regOne!32676 r!7292))))))

(declare-fun b!6138973 () Bool)

(declare-fun c!1104128 () Bool)

(assert (=> b!6138973 (= c!1104128 (is-Star!16082 (regOne!32677 (regOne!32676 r!7292))))))

(assert (=> b!6138973 (= e!3741358 e!3741353)))

(declare-fun d!1923337 () Bool)

(declare-fun c!1104127 () Bool)

(assert (=> d!1923337 (= c!1104127 (and (is-ElementMatch!16082 (regOne!32677 (regOne!32676 r!7292))) (= (c!1104020 (regOne!32677 (regOne!32676 r!7292))) (h!70871 s!2326))))))

(assert (=> d!1923337 (= (derivationStepZipperDown!1330 (regOne!32677 (regOne!32676 r!7292)) lt!2332796 (h!70871 s!2326)) e!3741355)))

(declare-fun b!6138974 () Bool)

(assert (=> b!6138974 (= e!3741355 (set.insert lt!2332796 (as set.empty (Set Context!10932))))))

(declare-fun bm!509672 () Bool)

(assert (=> bm!509672 (= call!509676 (derivationStepZipperDown!1330 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292)))) (ite c!1104124 lt!2332796 (Context!10933 call!509674)) (h!70871 s!2326)))))

(declare-fun b!6138975 () Bool)

(assert (=> b!6138975 (= e!3741356 (set.union call!509676 call!509675))))

(assert (= (and d!1923337 c!1104127) b!6138974))

(assert (= (and d!1923337 (not c!1104127)) b!6138972))

(assert (= (and b!6138972 c!1104124) b!6138966))

(assert (= (and b!6138972 (not c!1104124)) b!6138969))

(assert (= (and b!6138969 res!2543777) b!6138965))

(assert (= (and b!6138969 c!1104126) b!6138975))

(assert (= (and b!6138969 (not c!1104126)) b!6138970))

(assert (= (and b!6138970 c!1104125) b!6138967))

(assert (= (and b!6138970 (not c!1104125)) b!6138973))

(assert (= (and b!6138973 c!1104128) b!6138971))

(assert (= (and b!6138973 (not c!1104128)) b!6138968))

(assert (= (or b!6138967 b!6138971) bm!509668))

(assert (= (or b!6138967 b!6138971) bm!509671))

(assert (= (or b!6138975 bm!509668) bm!509670))

(assert (= (or b!6138975 bm!509671) bm!509667))

(assert (= (or b!6138966 b!6138975) bm!509672))

(assert (= (or b!6138966 bm!509667) bm!509669))

(declare-fun m!6980814 () Bool)

(assert (=> bm!509672 m!6980814))

(declare-fun m!6980816 () Bool)

(assert (=> bm!509669 m!6980816))

(declare-fun m!6980818 () Bool)

(assert (=> b!6138965 m!6980818))

(declare-fun m!6980820 () Bool)

(assert (=> bm!509670 m!6980820))

(assert (=> b!6138974 m!6980778))

(assert (=> b!6138542 d!1923337))

(declare-fun b!6138994 () Bool)

(declare-fun e!3741373 () Bool)

(declare-fun e!3741377 () Bool)

(assert (=> b!6138994 (= e!3741373 e!3741377)))

(declare-fun c!1104134 () Bool)

(assert (=> b!6138994 (= c!1104134 (is-Star!16082 r!7292))))

(declare-fun b!6138995 () Bool)

(declare-fun e!3741374 () Bool)

(declare-fun call!509684 () Bool)

(assert (=> b!6138995 (= e!3741374 call!509684)))

(declare-fun b!6138996 () Bool)

(declare-fun e!3741376 () Bool)

(declare-fun e!3741378 () Bool)

(assert (=> b!6138996 (= e!3741376 e!3741378)))

(declare-fun res!2543788 () Bool)

(assert (=> b!6138996 (=> (not res!2543788) (not e!3741378))))

(declare-fun call!509686 () Bool)

(assert (=> b!6138996 (= res!2543788 call!509686)))

(declare-fun d!1923339 () Bool)

(declare-fun res!2543790 () Bool)

(assert (=> d!1923339 (=> res!2543790 e!3741373)))

(assert (=> d!1923339 (= res!2543790 (is-ElementMatch!16082 r!7292))))

(assert (=> d!1923339 (= (validRegex!7818 r!7292) e!3741373)))

(declare-fun b!6138997 () Bool)

(declare-fun res!2543791 () Bool)

(assert (=> b!6138997 (=> (not res!2543791) (not e!3741374))))

(assert (=> b!6138997 (= res!2543791 call!509686)))

(declare-fun e!3741375 () Bool)

(assert (=> b!6138997 (= e!3741375 e!3741374)))

(declare-fun bm!509679 () Bool)

(declare-fun call!509685 () Bool)

(assert (=> bm!509679 (= call!509686 call!509685)))

(declare-fun b!6138998 () Bool)

(assert (=> b!6138998 (= e!3741377 e!3741375)))

(declare-fun c!1104133 () Bool)

(assert (=> b!6138998 (= c!1104133 (is-Union!16082 r!7292))))

(declare-fun b!6138999 () Bool)

(assert (=> b!6138999 (= e!3741378 call!509684)))

(declare-fun b!6139000 () Bool)

(declare-fun e!3741379 () Bool)

(assert (=> b!6139000 (= e!3741377 e!3741379)))

(declare-fun res!2543789 () Bool)

(assert (=> b!6139000 (= res!2543789 (not (nullable!6075 (reg!16411 r!7292))))))

(assert (=> b!6139000 (=> (not res!2543789) (not e!3741379))))

(declare-fun b!6139001 () Bool)

(declare-fun res!2543792 () Bool)

(assert (=> b!6139001 (=> res!2543792 e!3741376)))

(assert (=> b!6139001 (= res!2543792 (not (is-Concat!24927 r!7292)))))

(assert (=> b!6139001 (= e!3741375 e!3741376)))

(declare-fun bm!509680 () Bool)

(assert (=> bm!509680 (= call!509685 (validRegex!7818 (ite c!1104134 (reg!16411 r!7292) (ite c!1104133 (regOne!32677 r!7292) (regOne!32676 r!7292)))))))

(declare-fun b!6139002 () Bool)

(assert (=> b!6139002 (= e!3741379 call!509685)))

(declare-fun bm!509681 () Bool)

(assert (=> bm!509681 (= call!509684 (validRegex!7818 (ite c!1104133 (regTwo!32677 r!7292) (regTwo!32676 r!7292))))))

(assert (= (and d!1923339 (not res!2543790)) b!6138994))

(assert (= (and b!6138994 c!1104134) b!6139000))

(assert (= (and b!6138994 (not c!1104134)) b!6138998))

(assert (= (and b!6139000 res!2543789) b!6139002))

(assert (= (and b!6138998 c!1104133) b!6138997))

(assert (= (and b!6138998 (not c!1104133)) b!6139001))

(assert (= (and b!6138997 res!2543791) b!6138995))

(assert (= (and b!6139001 (not res!2543792)) b!6138996))

(assert (= (and b!6138996 res!2543788) b!6138999))

(assert (= (or b!6138995 b!6138999) bm!509681))

(assert (= (or b!6138997 b!6138996) bm!509679))

(assert (= (or b!6139002 bm!509679) bm!509680))

(declare-fun m!6980822 () Bool)

(assert (=> b!6139000 m!6980822))

(declare-fun m!6980824 () Bool)

(assert (=> bm!509680 m!6980824))

(declare-fun m!6980826 () Bool)

(assert (=> bm!509681 m!6980826))

(assert (=> start!613176 d!1923339))

(declare-fun d!1923341 () Bool)

(assert (=> d!1923341 (= (isEmpty!36370 (t!378023 zl!343)) (is-Nil!64422 (t!378023 zl!343)))))

(assert (=> b!6138559 d!1923341))

(declare-fun d!1923343 () Bool)

(assert (=> d!1923343 (= (isEmpty!36371 (t!378022 (exprs!5966 (h!70870 zl!343)))) (is-Nil!64421 (t!378022 (exprs!5966 (h!70870 zl!343)))))))

(assert (=> b!6138560 d!1923343))

(declare-fun bs!1522328 () Bool)

(declare-fun d!1923345 () Bool)

(assert (= bs!1522328 (and d!1923345 d!1923291)))

(declare-fun lambda!334584 () Int)

(assert (=> bs!1522328 (= lambda!334584 lambda!334570)))

(declare-fun bs!1522329 () Bool)

(assert (= bs!1522329 (and d!1923345 d!1923317)))

(assert (=> bs!1522329 (= lambda!334584 lambda!334580)))

(declare-fun bs!1522330 () Bool)

(assert (= bs!1522330 (and d!1923345 d!1923319)))

(assert (=> bs!1522330 (= lambda!334584 lambda!334583)))

(declare-fun bs!1522331 () Bool)

(assert (= bs!1522331 (and d!1923345 d!1923279)))

(assert (=> bs!1522331 (= lambda!334584 lambda!334558)))

(declare-fun bs!1522332 () Bool)

(assert (= bs!1522332 (and d!1923345 d!1923289)))

(assert (=> bs!1522332 (= lambda!334584 lambda!334567)))

(assert (=> d!1923345 (= (inv!83453 lt!2332796) (forall!15203 (exprs!5966 lt!2332796) lambda!334584))))

(declare-fun bs!1522333 () Bool)

(assert (= bs!1522333 d!1923345))

(declare-fun m!6980828 () Bool)

(assert (=> bs!1522333 m!6980828))

(assert (=> b!6138550 d!1923345))

(declare-fun b!6139007 () Bool)

(declare-fun e!3741382 () Bool)

(declare-fun tp!1715241 () Bool)

(assert (=> b!6139007 (= e!3741382 (and tp_is_empty!41417 tp!1715241))))

(assert (=> b!6138544 (= tp!1715205 e!3741382)))

(assert (= (and b!6138544 (is-Cons!64423 (t!378024 s!2326))) b!6139007))

(declare-fun b!6139012 () Bool)

(declare-fun e!3741385 () Bool)

(declare-fun tp!1715246 () Bool)

(declare-fun tp!1715247 () Bool)

(assert (=> b!6139012 (= e!3741385 (and tp!1715246 tp!1715247))))

(assert (=> b!6138539 (= tp!1715202 e!3741385)))

(assert (= (and b!6138539 (is-Cons!64421 (exprs!5966 (h!70870 zl!343)))) b!6139012))

(declare-fun condSetEmpty!41521 () Bool)

(assert (=> setNonEmpty!41515 (= condSetEmpty!41521 (= setRest!41515 (as set.empty (Set Context!10932))))))

(declare-fun setRes!41521 () Bool)

(assert (=> setNonEmpty!41515 (= tp!1715208 setRes!41521)))

(declare-fun setIsEmpty!41521 () Bool)

(assert (=> setIsEmpty!41521 setRes!41521))

(declare-fun e!3741388 () Bool)

(declare-fun tp!1715253 () Bool)

(declare-fun setElem!41521 () Context!10932)

(declare-fun setNonEmpty!41521 () Bool)

(assert (=> setNonEmpty!41521 (= setRes!41521 (and tp!1715253 (inv!83453 setElem!41521) e!3741388))))

(declare-fun setRest!41521 () (Set Context!10932))

(assert (=> setNonEmpty!41521 (= setRest!41515 (set.union (set.insert setElem!41521 (as set.empty (Set Context!10932))) setRest!41521))))

(declare-fun b!6139017 () Bool)

(declare-fun tp!1715252 () Bool)

(assert (=> b!6139017 (= e!3741388 tp!1715252)))

(assert (= (and setNonEmpty!41515 condSetEmpty!41521) setIsEmpty!41521))

(assert (= (and setNonEmpty!41515 (not condSetEmpty!41521)) setNonEmpty!41521))

(assert (= setNonEmpty!41521 b!6139017))

(declare-fun m!6980830 () Bool)

(assert (=> setNonEmpty!41521 m!6980830))

(declare-fun b!6139025 () Bool)

(declare-fun e!3741394 () Bool)

(declare-fun tp!1715258 () Bool)

(assert (=> b!6139025 (= e!3741394 tp!1715258)))

(declare-fun tp!1715259 () Bool)

(declare-fun b!6139024 () Bool)

(declare-fun e!3741393 () Bool)

(assert (=> b!6139024 (= e!3741393 (and (inv!83453 (h!70870 (t!378023 zl!343))) e!3741394 tp!1715259))))

(assert (=> b!6138538 (= tp!1715206 e!3741393)))

(assert (= b!6139024 b!6139025))

(assert (= (and b!6138538 (is-Cons!64422 (t!378023 zl!343))) b!6139024))

(declare-fun m!6980832 () Bool)

(assert (=> b!6139024 m!6980832))

(declare-fun b!6139037 () Bool)

(declare-fun e!3741397 () Bool)

(declare-fun tp!1715273 () Bool)

(declare-fun tp!1715270 () Bool)

(assert (=> b!6139037 (= e!3741397 (and tp!1715273 tp!1715270))))

(declare-fun b!6139036 () Bool)

(assert (=> b!6139036 (= e!3741397 tp_is_empty!41417)))

(declare-fun b!6139038 () Bool)

(declare-fun tp!1715271 () Bool)

(assert (=> b!6139038 (= e!3741397 tp!1715271)))

(assert (=> b!6138547 (= tp!1715207 e!3741397)))

(declare-fun b!6139039 () Bool)

(declare-fun tp!1715274 () Bool)

(declare-fun tp!1715272 () Bool)

(assert (=> b!6139039 (= e!3741397 (and tp!1715274 tp!1715272))))

(assert (= (and b!6138547 (is-ElementMatch!16082 (regOne!32676 r!7292))) b!6139036))

(assert (= (and b!6138547 (is-Concat!24927 (regOne!32676 r!7292))) b!6139037))

(assert (= (and b!6138547 (is-Star!16082 (regOne!32676 r!7292))) b!6139038))

(assert (= (and b!6138547 (is-Union!16082 (regOne!32676 r!7292))) b!6139039))

(declare-fun b!6139041 () Bool)

(declare-fun e!3741398 () Bool)

(declare-fun tp!1715278 () Bool)

(declare-fun tp!1715275 () Bool)

(assert (=> b!6139041 (= e!3741398 (and tp!1715278 tp!1715275))))

(declare-fun b!6139040 () Bool)

(assert (=> b!6139040 (= e!3741398 tp_is_empty!41417)))

(declare-fun b!6139042 () Bool)

(declare-fun tp!1715276 () Bool)

(assert (=> b!6139042 (= e!3741398 tp!1715276)))

(assert (=> b!6138547 (= tp!1715204 e!3741398)))

(declare-fun b!6139043 () Bool)

(declare-fun tp!1715279 () Bool)

(declare-fun tp!1715277 () Bool)

(assert (=> b!6139043 (= e!3741398 (and tp!1715279 tp!1715277))))

(assert (= (and b!6138547 (is-ElementMatch!16082 (regTwo!32676 r!7292))) b!6139040))

(assert (= (and b!6138547 (is-Concat!24927 (regTwo!32676 r!7292))) b!6139041))

(assert (= (and b!6138547 (is-Star!16082 (regTwo!32676 r!7292))) b!6139042))

(assert (= (and b!6138547 (is-Union!16082 (regTwo!32676 r!7292))) b!6139043))

(declare-fun b!6139044 () Bool)

(declare-fun e!3741399 () Bool)

(declare-fun tp!1715280 () Bool)

(declare-fun tp!1715281 () Bool)

(assert (=> b!6139044 (= e!3741399 (and tp!1715280 tp!1715281))))

(assert (=> b!6138540 (= tp!1715203 e!3741399)))

(assert (= (and b!6138540 (is-Cons!64421 (exprs!5966 setElem!41515))) b!6139044))

(declare-fun b!6139046 () Bool)

(declare-fun e!3741400 () Bool)

(declare-fun tp!1715285 () Bool)

(declare-fun tp!1715282 () Bool)

(assert (=> b!6139046 (= e!3741400 (and tp!1715285 tp!1715282))))

(declare-fun b!6139045 () Bool)

(assert (=> b!6139045 (= e!3741400 tp_is_empty!41417)))

(declare-fun b!6139047 () Bool)

(declare-fun tp!1715283 () Bool)

(assert (=> b!6139047 (= e!3741400 tp!1715283)))

(assert (=> b!6138545 (= tp!1715199 e!3741400)))

(declare-fun b!6139048 () Bool)

(declare-fun tp!1715286 () Bool)

(declare-fun tp!1715284 () Bool)

(assert (=> b!6139048 (= e!3741400 (and tp!1715286 tp!1715284))))

(assert (= (and b!6138545 (is-ElementMatch!16082 (regOne!32677 r!7292))) b!6139045))

(assert (= (and b!6138545 (is-Concat!24927 (regOne!32677 r!7292))) b!6139046))

(assert (= (and b!6138545 (is-Star!16082 (regOne!32677 r!7292))) b!6139047))

(assert (= (and b!6138545 (is-Union!16082 (regOne!32677 r!7292))) b!6139048))

(declare-fun b!6139050 () Bool)

(declare-fun e!3741401 () Bool)

(declare-fun tp!1715290 () Bool)

(declare-fun tp!1715287 () Bool)

(assert (=> b!6139050 (= e!3741401 (and tp!1715290 tp!1715287))))

(declare-fun b!6139049 () Bool)

(assert (=> b!6139049 (= e!3741401 tp_is_empty!41417)))

(declare-fun b!6139051 () Bool)

(declare-fun tp!1715288 () Bool)

(assert (=> b!6139051 (= e!3741401 tp!1715288)))

(assert (=> b!6138545 (= tp!1715200 e!3741401)))

(declare-fun b!6139052 () Bool)

(declare-fun tp!1715291 () Bool)

(declare-fun tp!1715289 () Bool)

(assert (=> b!6139052 (= e!3741401 (and tp!1715291 tp!1715289))))

(assert (= (and b!6138545 (is-ElementMatch!16082 (regTwo!32677 r!7292))) b!6139049))

(assert (= (and b!6138545 (is-Concat!24927 (regTwo!32677 r!7292))) b!6139050))

(assert (= (and b!6138545 (is-Star!16082 (regTwo!32677 r!7292))) b!6139051))

(assert (= (and b!6138545 (is-Union!16082 (regTwo!32677 r!7292))) b!6139052))

(declare-fun b!6139054 () Bool)

(declare-fun e!3741402 () Bool)

(declare-fun tp!1715295 () Bool)

(declare-fun tp!1715292 () Bool)

(assert (=> b!6139054 (= e!3741402 (and tp!1715295 tp!1715292))))

(declare-fun b!6139053 () Bool)

(assert (=> b!6139053 (= e!3741402 tp_is_empty!41417)))

(declare-fun b!6139055 () Bool)

(declare-fun tp!1715293 () Bool)

(assert (=> b!6139055 (= e!3741402 tp!1715293)))

(assert (=> b!6138546 (= tp!1715201 e!3741402)))

(declare-fun b!6139056 () Bool)

(declare-fun tp!1715296 () Bool)

(declare-fun tp!1715294 () Bool)

(assert (=> b!6139056 (= e!3741402 (and tp!1715296 tp!1715294))))

(assert (= (and b!6138546 (is-ElementMatch!16082 (reg!16411 r!7292))) b!6139053))

(assert (= (and b!6138546 (is-Concat!24927 (reg!16411 r!7292))) b!6139054))

(assert (= (and b!6138546 (is-Star!16082 (reg!16411 r!7292))) b!6139055))

(assert (= (and b!6138546 (is-Union!16082 (reg!16411 r!7292))) b!6139056))

(declare-fun b_lambda!233653 () Bool)

(assert (= b_lambda!233649 (or b!6138541 b_lambda!233653)))

(declare-fun bs!1522334 () Bool)

(declare-fun d!1923347 () Bool)

(assert (= bs!1522334 (and d!1923347 b!6138541)))

(assert (=> bs!1522334 (= (dynLambda!25385 lambda!334542 lt!2332810) (derivationStepZipperUp!1256 lt!2332810 (h!70871 s!2326)))))

(assert (=> bs!1522334 m!6980432))

(assert (=> d!1923303 d!1923347))

(declare-fun b_lambda!233655 () Bool)

(assert (= b_lambda!233651 (or b!6138541 b_lambda!233655)))

(declare-fun bs!1522335 () Bool)

(declare-fun d!1923349 () Bool)

(assert (= bs!1522335 (and d!1923349 b!6138541)))

(assert (=> bs!1522335 (= (dynLambda!25385 lambda!334542 (h!70870 zl!343)) (derivationStepZipperUp!1256 (h!70870 zl!343) (h!70871 s!2326)))))

(assert (=> bs!1522335 m!6980458))

(assert (=> d!1923325 d!1923349))

(push 1)

(assert (not bm!509680))

(assert (not b!6138896))

(assert (not b!6139041))

(assert (not d!1923295))

(assert (not d!1923277))

(assert (not b!6138904))

(assert (not b!6138776))

(assert (not b!6138695))

(assert (not d!1923293))

(assert (not d!1923269))

(assert (not b!6138779))

(assert (not b!6138835))

(assert (not d!1923311))

(assert (not b!6138689))

(assert (not b!6139024))

(assert (not b_lambda!233655))

(assert (not bm!509666))

(assert (not b!6138778))

(assert (not b!6138859))

(assert (not b!6138928))

(assert (not b!6139052))

(assert (not b!6138806))

(assert (not bm!509659))

(assert (not b!6138735))

(assert (not d!1923309))

(assert (not b!6139025))

(assert (not b!6139051))

(assert (not b!6139043))

(assert (not b!6138769))

(assert (not b!6138809))

(assert (not b!6138801))

(assert (not d!1923279))

(assert (not b!6138941))

(assert (not d!1923319))

(assert (not d!1923273))

(assert (not b!6138694))

(assert (not b!6138899))

(assert (not b!6138856))

(assert (not bm!509664))

(assert (not b!6139047))

(assert (not b!6139007))

(assert (not b!6138862))

(assert (not b!6138821))

(assert (not d!1923289))

(assert (not b!6138819))

(assert (not b!6138687))

(assert (not bs!1522334))

(assert (not b!6138820))

(assert (not b!6139056))

(assert (not d!1923315))

(assert (not bm!509632))

(assert (not d!1923281))

(assert (not b!6138897))

(assert (not b!6139048))

(assert (not b!6138731))

(assert (not d!1923285))

(assert (not b!6138692))

(assert (not d!1923333))

(assert (not bm!509639))

(assert (not b!6138688))

(assert (not b!6138686))

(assert (not bm!509633))

(assert (not bm!509672))

(assert (not d!1923307))

(assert (not b!6138857))

(assert (not d!1923287))

(assert (not b!6138804))

(assert (not bm!509636))

(assert (not b!6139017))

(assert (not b!6138810))

(assert (not b!6138898))

(assert (not b!6138803))

(assert (not d!1923303))

(assert (not bm!509657))

(assert (not b!6138680))

(assert (not b!6138903))

(assert (not d!1923271))

(assert (not b!6139012))

(assert (not b!6138947))

(assert (not b!6139039))

(assert (not b!6138808))

(assert (not b!6138855))

(assert (not bm!509655))

(assert (not b!6138860))

(assert (not b!6139038))

(assert (not d!1923267))

(assert (not d!1923275))

(assert (not d!1923297))

(assert (not b!6139055))

(assert (not d!1923265))

(assert (not d!1923317))

(assert (not b!6139037))

(assert (not d!1923327))

(assert (not d!1923325))

(assert (not b!6138902))

(assert (not b!6139042))

(assert (not b!6138834))

(assert (not bs!1522335))

(assert (not b!6138773))

(assert (not b!6139054))

(assert (not d!1923313))

(assert (not b!6138946))

(assert (not d!1923291))

(assert (not b!6139044))

(assert (not b!6138815))

(assert (not b!6139050))

(assert (not bm!509663))

(assert (not b!6138952))

(assert (not b!6138954))

(assert (not b!6138693))

(assert (not setNonEmpty!41521))

(assert (not b!6138690))

(assert (not b!6139000))

(assert (not d!1923299))

(assert (not b!6138780))

(assert tp_is_empty!41417)

(assert (not bm!509660))

(assert (not b_lambda!233653))

(assert (not b!6138965))

(assert (not b!6138951))

(assert (not bm!509669))

(assert (not bm!509654))

(assert (not bm!509670))

(assert (not b!6139046))

(assert (not b!6138942))

(assert (not d!1923305))

(assert (not d!1923345))

(assert (not bm!509658))

(assert (not b!6138691))

(assert (not b!6138685))

(assert (not bm!509681))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1923311 d!1923305))

(declare-fun b!6139436 () Bool)

(declare-fun e!3741616 () Bool)

(declare-fun e!3741620 () Bool)

(assert (=> b!6139436 (= e!3741616 e!3741620)))

(declare-fun c!1104241 () Bool)

(assert (=> b!6139436 (= c!1104241 (is-Star!16082 (regOne!32676 r!7292)))))

(declare-fun b!6139437 () Bool)

(declare-fun e!3741617 () Bool)

(declare-fun call!509741 () Bool)

(assert (=> b!6139437 (= e!3741617 call!509741)))

(declare-fun b!6139438 () Bool)

(declare-fun e!3741619 () Bool)

(declare-fun e!3741621 () Bool)

(assert (=> b!6139438 (= e!3741619 e!3741621)))

(declare-fun res!2543908 () Bool)

(assert (=> b!6139438 (=> (not res!2543908) (not e!3741621))))

(declare-fun call!509743 () Bool)

(assert (=> b!6139438 (= res!2543908 call!509743)))

(declare-fun d!1923437 () Bool)

(declare-fun res!2543910 () Bool)

(assert (=> d!1923437 (=> res!2543910 e!3741616)))

(assert (=> d!1923437 (= res!2543910 (is-ElementMatch!16082 (regOne!32676 r!7292)))))

(assert (=> d!1923437 (= (validRegex!7818 (regOne!32676 r!7292)) e!3741616)))

(declare-fun b!6139439 () Bool)

(declare-fun res!2543911 () Bool)

(assert (=> b!6139439 (=> (not res!2543911) (not e!3741617))))

(assert (=> b!6139439 (= res!2543911 call!509743)))

(declare-fun e!3741618 () Bool)

(assert (=> b!6139439 (= e!3741618 e!3741617)))

(declare-fun bm!509736 () Bool)

(declare-fun call!509742 () Bool)

(assert (=> bm!509736 (= call!509743 call!509742)))

(declare-fun b!6139440 () Bool)

(assert (=> b!6139440 (= e!3741620 e!3741618)))

(declare-fun c!1104240 () Bool)

(assert (=> b!6139440 (= c!1104240 (is-Union!16082 (regOne!32676 r!7292)))))

(declare-fun b!6139441 () Bool)

(assert (=> b!6139441 (= e!3741621 call!509741)))

(declare-fun b!6139442 () Bool)

(declare-fun e!3741622 () Bool)

(assert (=> b!6139442 (= e!3741620 e!3741622)))

(declare-fun res!2543909 () Bool)

(assert (=> b!6139442 (= res!2543909 (not (nullable!6075 (reg!16411 (regOne!32676 r!7292)))))))

(assert (=> b!6139442 (=> (not res!2543909) (not e!3741622))))

(declare-fun b!6139443 () Bool)

(declare-fun res!2543912 () Bool)

(assert (=> b!6139443 (=> res!2543912 e!3741619)))

(assert (=> b!6139443 (= res!2543912 (not (is-Concat!24927 (regOne!32676 r!7292))))))

(assert (=> b!6139443 (= e!3741618 e!3741619)))

(declare-fun bm!509737 () Bool)

(assert (=> bm!509737 (= call!509742 (validRegex!7818 (ite c!1104241 (reg!16411 (regOne!32676 r!7292)) (ite c!1104240 (regOne!32677 (regOne!32676 r!7292)) (regOne!32676 (regOne!32676 r!7292))))))))

(declare-fun b!6139444 () Bool)

(assert (=> b!6139444 (= e!3741622 call!509742)))

(declare-fun bm!509738 () Bool)

(assert (=> bm!509738 (= call!509741 (validRegex!7818 (ite c!1104240 (regTwo!32677 (regOne!32676 r!7292)) (regTwo!32676 (regOne!32676 r!7292)))))))

(assert (= (and d!1923437 (not res!2543910)) b!6139436))

(assert (= (and b!6139436 c!1104241) b!6139442))

(assert (= (and b!6139436 (not c!1104241)) b!6139440))

(assert (= (and b!6139442 res!2543909) b!6139444))

(assert (= (and b!6139440 c!1104240) b!6139439))

(assert (= (and b!6139440 (not c!1104240)) b!6139443))

(assert (= (and b!6139439 res!2543911) b!6139437))

(assert (= (and b!6139443 (not res!2543912)) b!6139438))

(assert (= (and b!6139438 res!2543908) b!6139441))

(assert (= (or b!6139437 b!6139441) bm!509738))

(assert (= (or b!6139439 b!6139438) bm!509736))

(assert (= (or b!6139444 bm!509736) bm!509737))

(declare-fun m!6981076 () Bool)

(assert (=> b!6139442 m!6981076))

(declare-fun m!6981078 () Bool)

(assert (=> bm!509737 m!6981078))

(declare-fun m!6981080 () Bool)

(assert (=> bm!509738 m!6981080))

(assert (=> d!1923311 d!1923437))

(assert (=> d!1923311 d!1923315))

(declare-fun d!1923439 () Bool)

(assert (=> d!1923439 (= (Exists!3152 lambda!334573) (choose!45620 lambda!334573))))

(declare-fun bs!1522379 () Bool)

(assert (= bs!1522379 d!1923439))

(declare-fun m!6981082 () Bool)

(assert (=> bs!1522379 m!6981082))

(assert (=> d!1923311 d!1923439))

(declare-fun bs!1522380 () Bool)

(declare-fun d!1923441 () Bool)

(assert (= bs!1522380 (and d!1923441 d!1923313)))

(declare-fun lambda!334616 () Int)

(assert (=> bs!1522380 (= lambda!334616 lambda!334578)))

(assert (=> bs!1522380 (not (= lambda!334616 lambda!334579))))

(declare-fun bs!1522381 () Bool)

(assert (= bs!1522381 (and d!1923441 b!6138552)))

(assert (=> bs!1522381 (= lambda!334616 lambda!334540)))

(assert (=> bs!1522381 (not (= lambda!334616 lambda!334541))))

(declare-fun bs!1522382 () Bool)

(assert (= bs!1522382 (and d!1923441 b!6138730)))

(assert (=> bs!1522382 (not (= lambda!334616 lambda!334563))))

(declare-fun bs!1522383 () Bool)

(assert (= bs!1522383 (and d!1923441 d!1923311)))

(assert (=> bs!1522383 (= lambda!334616 lambda!334573)))

(declare-fun bs!1522384 () Bool)

(assert (= bs!1522384 (and d!1923441 b!6138734)))

(assert (=> bs!1522384 (not (= lambda!334616 lambda!334564))))

(assert (=> d!1923441 true))

(assert (=> d!1923441 true))

(assert (=> d!1923441 true))

(assert (=> d!1923441 (= (isDefined!12676 (findConcatSeparation!2387 (regOne!32676 r!7292) (regTwo!32676 r!7292) Nil!64423 s!2326 s!2326)) (Exists!3152 lambda!334616))))

(assert (=> d!1923441 true))

(declare-fun _$89!2227 () Unit!157483)

(assert (=> d!1923441 (= (choose!45621 (regOne!32676 r!7292) (regTwo!32676 r!7292) s!2326) _$89!2227)))

(declare-fun bs!1522385 () Bool)

(assert (= bs!1522385 d!1923441))

(assert (=> bs!1522385 m!6980488))

(assert (=> bs!1522385 m!6980488))

(assert (=> bs!1522385 m!6980490))

(declare-fun m!6981084 () Bool)

(assert (=> bs!1522385 m!6981084))

(assert (=> d!1923311 d!1923441))

(assert (=> b!6138815 d!1923319))

(declare-fun bs!1522386 () Bool)

(declare-fun d!1923443 () Bool)

(assert (= bs!1522386 (and d!1923443 d!1923291)))

(declare-fun lambda!334617 () Int)

(assert (=> bs!1522386 (= lambda!334617 lambda!334570)))

(declare-fun bs!1522387 () Bool)

(assert (= bs!1522387 (and d!1923443 d!1923317)))

(assert (=> bs!1522387 (= lambda!334617 lambda!334580)))

(declare-fun bs!1522388 () Bool)

(assert (= bs!1522388 (and d!1923443 d!1923345)))

(assert (=> bs!1522388 (= lambda!334617 lambda!334584)))

(declare-fun bs!1522389 () Bool)

(assert (= bs!1522389 (and d!1923443 d!1923319)))

(assert (=> bs!1522389 (= lambda!334617 lambda!334583)))

(declare-fun bs!1522390 () Bool)

(assert (= bs!1522390 (and d!1923443 d!1923279)))

(assert (=> bs!1522390 (= lambda!334617 lambda!334558)))

(declare-fun bs!1522391 () Bool)

(assert (= bs!1522391 (and d!1923443 d!1923289)))

(assert (=> bs!1522391 (= lambda!334617 lambda!334567)))

(declare-fun lt!2332963 () List!64545)

(assert (=> d!1923443 (forall!15203 lt!2332963 lambda!334617)))

(declare-fun e!3741625 () List!64545)

(assert (=> d!1923443 (= lt!2332963 e!3741625)))

(declare-fun c!1104242 () Bool)

(assert (=> d!1923443 (= c!1104242 (is-Cons!64422 (t!378023 zl!343)))))

(assert (=> d!1923443 (= (unfocusZipperList!1503 (t!378023 zl!343)) lt!2332963)))

(declare-fun b!6139449 () Bool)

(assert (=> b!6139449 (= e!3741625 (Cons!64421 (generalisedConcat!1679 (exprs!5966 (h!70870 (t!378023 zl!343)))) (unfocusZipperList!1503 (t!378023 (t!378023 zl!343)))))))

(declare-fun b!6139450 () Bool)

(assert (=> b!6139450 (= e!3741625 Nil!64421)))

(assert (= (and d!1923443 c!1104242) b!6139449))

(assert (= (and d!1923443 (not c!1104242)) b!6139450))

(declare-fun m!6981086 () Bool)

(assert (=> d!1923443 m!6981086))

(declare-fun m!6981088 () Bool)

(assert (=> b!6139449 m!6981088))

(declare-fun m!6981090 () Bool)

(assert (=> b!6139449 m!6981090))

(assert (=> b!6138815 d!1923443))

(declare-fun d!1923445 () Bool)

(assert (=> d!1923445 (= (Exists!3152 (ite c!1104045 lambda!334563 lambda!334564)) (choose!45620 (ite c!1104045 lambda!334563 lambda!334564)))))

(declare-fun bs!1522392 () Bool)

(assert (= bs!1522392 d!1923445))

(declare-fun m!6981092 () Bool)

(assert (=> bs!1522392 m!6981092))

(assert (=> bm!509633 d!1923445))

(declare-fun d!1923447 () Bool)

(declare-fun res!2543921 () Bool)

(declare-fun e!3741630 () Bool)

(assert (=> d!1923447 (=> res!2543921 e!3741630)))

(assert (=> d!1923447 (= res!2543921 (is-Nil!64421 lt!2332893))))

(assert (=> d!1923447 (= (forall!15203 lt!2332893 lambda!334570) e!3741630)))

(declare-fun b!6139455 () Bool)

(declare-fun e!3741631 () Bool)

(assert (=> b!6139455 (= e!3741630 e!3741631)))

(declare-fun res!2543922 () Bool)

(assert (=> b!6139455 (=> (not res!2543922) (not e!3741631))))

(declare-fun dynLambda!25387 (Int Regex!16082) Bool)

(assert (=> b!6139455 (= res!2543922 (dynLambda!25387 lambda!334570 (h!70869 lt!2332893)))))

(declare-fun b!6139456 () Bool)

(assert (=> b!6139456 (= e!3741631 (forall!15203 (t!378022 lt!2332893) lambda!334570))))

(assert (= (and d!1923447 (not res!2543921)) b!6139455))

(assert (= (and b!6139455 res!2543922) b!6139456))

(declare-fun b_lambda!233665 () Bool)

(assert (=> (not b_lambda!233665) (not b!6139455)))

(declare-fun m!6981094 () Bool)

(assert (=> b!6139455 m!6981094))

(declare-fun m!6981096 () Bool)

(assert (=> b!6139456 m!6981096))

(assert (=> d!1923291 d!1923447))

(declare-fun b!6139457 () Bool)

(declare-fun res!2543927 () Bool)

(declare-fun e!3741638 () Bool)

(assert (=> b!6139457 (=> (not res!2543927) (not e!3741638))))

(declare-fun call!509744 () Bool)

(assert (=> b!6139457 (= res!2543927 (not call!509744))))

(declare-fun bm!509739 () Bool)

(assert (=> bm!509739 (= call!509744 (isEmpty!36374 s!2326))))

(declare-fun b!6139458 () Bool)

(declare-fun res!2543925 () Bool)

(declare-fun e!3741635 () Bool)

(assert (=> b!6139458 (=> res!2543925 e!3741635)))

(assert (=> b!6139458 (= res!2543925 e!3741638)))

(declare-fun res!2543928 () Bool)

(assert (=> b!6139458 (=> (not res!2543928) (not e!3741638))))

(declare-fun lt!2332964 () Bool)

(assert (=> b!6139458 (= res!2543928 lt!2332964)))

(declare-fun b!6139459 () Bool)

(declare-fun e!3741636 () Bool)

(assert (=> b!6139459 (= e!3741636 (nullable!6075 (regTwo!32676 r!7292)))))

(declare-fun b!6139460 () Bool)

(declare-fun e!3741637 () Bool)

(declare-fun e!3741634 () Bool)

(assert (=> b!6139460 (= e!3741637 e!3741634)))

(declare-fun c!1104243 () Bool)

(assert (=> b!6139460 (= c!1104243 (is-EmptyLang!16082 (regTwo!32676 r!7292)))))

(declare-fun b!6139461 () Bool)

(declare-fun e!3741632 () Bool)

(declare-fun e!3741633 () Bool)

(assert (=> b!6139461 (= e!3741632 e!3741633)))

(declare-fun res!2543929 () Bool)

(assert (=> b!6139461 (=> res!2543929 e!3741633)))

(assert (=> b!6139461 (= res!2543929 call!509744)))

(declare-fun b!6139462 () Bool)

(assert (=> b!6139462 (= e!3741635 e!3741632)))

(declare-fun res!2543926 () Bool)

(assert (=> b!6139462 (=> (not res!2543926) (not e!3741632))))

(assert (=> b!6139462 (= res!2543926 (not lt!2332964))))

(declare-fun b!6139463 () Bool)

(assert (=> b!6139463 (= e!3741636 (matchR!8265 (derivativeStep!4802 (regTwo!32676 r!7292) (head!12685 s!2326)) (tail!11770 s!2326)))))

(declare-fun b!6139464 () Bool)

(assert (=> b!6139464 (= e!3741637 (= lt!2332964 call!509744))))

(declare-fun d!1923449 () Bool)

(assert (=> d!1923449 e!3741637))

(declare-fun c!1104244 () Bool)

(assert (=> d!1923449 (= c!1104244 (is-EmptyExpr!16082 (regTwo!32676 r!7292)))))

(assert (=> d!1923449 (= lt!2332964 e!3741636)))

(declare-fun c!1104245 () Bool)

(assert (=> d!1923449 (= c!1104245 (isEmpty!36374 s!2326))))

(assert (=> d!1923449 (validRegex!7818 (regTwo!32676 r!7292))))

(assert (=> d!1923449 (= (matchR!8265 (regTwo!32676 r!7292) s!2326) lt!2332964)))

(declare-fun b!6139465 () Bool)

(declare-fun res!2543930 () Bool)

(assert (=> b!6139465 (=> res!2543930 e!3741635)))

(assert (=> b!6139465 (= res!2543930 (not (is-ElementMatch!16082 (regTwo!32676 r!7292))))))

(assert (=> b!6139465 (= e!3741634 e!3741635)))

(declare-fun b!6139466 () Bool)

(declare-fun res!2543923 () Bool)

(assert (=> b!6139466 (=> res!2543923 e!3741633)))

(assert (=> b!6139466 (= res!2543923 (not (isEmpty!36374 (tail!11770 s!2326))))))

(declare-fun b!6139467 () Bool)

(assert (=> b!6139467 (= e!3741634 (not lt!2332964))))

(declare-fun b!6139468 () Bool)

(assert (=> b!6139468 (= e!3741638 (= (head!12685 s!2326) (c!1104020 (regTwo!32676 r!7292))))))

(declare-fun b!6139469 () Bool)

(assert (=> b!6139469 (= e!3741633 (not (= (head!12685 s!2326) (c!1104020 (regTwo!32676 r!7292)))))))

(declare-fun b!6139470 () Bool)

(declare-fun res!2543924 () Bool)

(assert (=> b!6139470 (=> (not res!2543924) (not e!3741638))))

(assert (=> b!6139470 (= res!2543924 (isEmpty!36374 (tail!11770 s!2326)))))

(assert (= (and d!1923449 c!1104245) b!6139459))

(assert (= (and d!1923449 (not c!1104245)) b!6139463))

(assert (= (and d!1923449 c!1104244) b!6139464))

(assert (= (and d!1923449 (not c!1104244)) b!6139460))

(assert (= (and b!6139460 c!1104243) b!6139467))

(assert (= (and b!6139460 (not c!1104243)) b!6139465))

(assert (= (and b!6139465 (not res!2543930)) b!6139458))

(assert (= (and b!6139458 res!2543928) b!6139457))

(assert (= (and b!6139457 res!2543927) b!6139470))

(assert (= (and b!6139470 res!2543924) b!6139468))

(assert (= (and b!6139458 (not res!2543925)) b!6139462))

(assert (= (and b!6139462 res!2543926) b!6139461))

(assert (= (and b!6139461 (not res!2543929)) b!6139466))

(assert (= (and b!6139466 (not res!2543923)) b!6139469))

(assert (= (or b!6139464 b!6139457 b!6139461) bm!509739))

(assert (=> b!6139463 m!6980646))

(assert (=> b!6139463 m!6980646))

(declare-fun m!6981098 () Bool)

(assert (=> b!6139463 m!6981098))

(assert (=> b!6139463 m!6980650))

(assert (=> b!6139463 m!6981098))

(assert (=> b!6139463 m!6980650))

(declare-fun m!6981100 () Bool)

(assert (=> b!6139463 m!6981100))

(assert (=> d!1923449 m!6980638))

(declare-fun m!6981102 () Bool)

(assert (=> d!1923449 m!6981102))

(assert (=> b!6139470 m!6980650))

(assert (=> b!6139470 m!6980650))

(assert (=> b!6139470 m!6980654))

(declare-fun m!6981104 () Bool)

(assert (=> b!6139459 m!6981104))

(assert (=> b!6139466 m!6980650))

(assert (=> b!6139466 m!6980650))

(assert (=> b!6139466 m!6980654))

(assert (=> bm!509739 m!6980638))

(assert (=> b!6139468 m!6980646))

(assert (=> b!6139469 m!6980646))

(assert (=> b!6138860 d!1923449))

(declare-fun b!6139471 () Bool)

(declare-fun e!3741639 () Bool)

(declare-fun e!3741643 () Bool)

(assert (=> b!6139471 (= e!3741639 e!3741643)))

(declare-fun c!1104247 () Bool)

(assert (=> b!6139471 (= c!1104247 (is-Star!16082 (ite c!1104133 (regTwo!32677 r!7292) (regTwo!32676 r!7292))))))

(declare-fun b!6139472 () Bool)

(declare-fun e!3741640 () Bool)

(declare-fun call!509745 () Bool)

(assert (=> b!6139472 (= e!3741640 call!509745)))

(declare-fun b!6139473 () Bool)

(declare-fun e!3741642 () Bool)

(declare-fun e!3741644 () Bool)

(assert (=> b!6139473 (= e!3741642 e!3741644)))

(declare-fun res!2543931 () Bool)

(assert (=> b!6139473 (=> (not res!2543931) (not e!3741644))))

(declare-fun call!509747 () Bool)

(assert (=> b!6139473 (= res!2543931 call!509747)))

(declare-fun d!1923451 () Bool)

(declare-fun res!2543933 () Bool)

(assert (=> d!1923451 (=> res!2543933 e!3741639)))

(assert (=> d!1923451 (= res!2543933 (is-ElementMatch!16082 (ite c!1104133 (regTwo!32677 r!7292) (regTwo!32676 r!7292))))))

(assert (=> d!1923451 (= (validRegex!7818 (ite c!1104133 (regTwo!32677 r!7292) (regTwo!32676 r!7292))) e!3741639)))

(declare-fun b!6139474 () Bool)

(declare-fun res!2543934 () Bool)

(assert (=> b!6139474 (=> (not res!2543934) (not e!3741640))))

(assert (=> b!6139474 (= res!2543934 call!509747)))

(declare-fun e!3741641 () Bool)

(assert (=> b!6139474 (= e!3741641 e!3741640)))

(declare-fun bm!509740 () Bool)

(declare-fun call!509746 () Bool)

(assert (=> bm!509740 (= call!509747 call!509746)))

(declare-fun b!6139475 () Bool)

(assert (=> b!6139475 (= e!3741643 e!3741641)))

(declare-fun c!1104246 () Bool)

(assert (=> b!6139475 (= c!1104246 (is-Union!16082 (ite c!1104133 (regTwo!32677 r!7292) (regTwo!32676 r!7292))))))

(declare-fun b!6139476 () Bool)

(assert (=> b!6139476 (= e!3741644 call!509745)))

(declare-fun b!6139477 () Bool)

(declare-fun e!3741645 () Bool)

(assert (=> b!6139477 (= e!3741643 e!3741645)))

(declare-fun res!2543932 () Bool)

(assert (=> b!6139477 (= res!2543932 (not (nullable!6075 (reg!16411 (ite c!1104133 (regTwo!32677 r!7292) (regTwo!32676 r!7292))))))))

(assert (=> b!6139477 (=> (not res!2543932) (not e!3741645))))

(declare-fun b!6139478 () Bool)

(declare-fun res!2543935 () Bool)

(assert (=> b!6139478 (=> res!2543935 e!3741642)))

(assert (=> b!6139478 (= res!2543935 (not (is-Concat!24927 (ite c!1104133 (regTwo!32677 r!7292) (regTwo!32676 r!7292)))))))

(assert (=> b!6139478 (= e!3741641 e!3741642)))

(declare-fun bm!509741 () Bool)

(assert (=> bm!509741 (= call!509746 (validRegex!7818 (ite c!1104247 (reg!16411 (ite c!1104133 (regTwo!32677 r!7292) (regTwo!32676 r!7292))) (ite c!1104246 (regOne!32677 (ite c!1104133 (regTwo!32677 r!7292) (regTwo!32676 r!7292))) (regOne!32676 (ite c!1104133 (regTwo!32677 r!7292) (regTwo!32676 r!7292)))))))))

(declare-fun b!6139479 () Bool)

(assert (=> b!6139479 (= e!3741645 call!509746)))

(declare-fun bm!509742 () Bool)

(assert (=> bm!509742 (= call!509745 (validRegex!7818 (ite c!1104246 (regTwo!32677 (ite c!1104133 (regTwo!32677 r!7292) (regTwo!32676 r!7292))) (regTwo!32676 (ite c!1104133 (regTwo!32677 r!7292) (regTwo!32676 r!7292))))))))

(assert (= (and d!1923451 (not res!2543933)) b!6139471))

(assert (= (and b!6139471 c!1104247) b!6139477))

(assert (= (and b!6139471 (not c!1104247)) b!6139475))

(assert (= (and b!6139477 res!2543932) b!6139479))

(assert (= (and b!6139475 c!1104246) b!6139474))

(assert (= (and b!6139475 (not c!1104246)) b!6139478))

(assert (= (and b!6139474 res!2543934) b!6139472))

(assert (= (and b!6139478 (not res!2543935)) b!6139473))

(assert (= (and b!6139473 res!2543931) b!6139476))

(assert (= (or b!6139472 b!6139476) bm!509742))

(assert (= (or b!6139474 b!6139473) bm!509740))

(assert (= (or b!6139479 bm!509740) bm!509741))

(declare-fun m!6981106 () Bool)

(assert (=> b!6139477 m!6981106))

(declare-fun m!6981108 () Bool)

(assert (=> bm!509741 m!6981108))

(declare-fun m!6981110 () Bool)

(assert (=> bm!509742 m!6981110))

(assert (=> bm!509681 d!1923451))

(declare-fun e!3741650 () Bool)

(declare-fun b!6139480 () Bool)

(assert (=> b!6139480 (= e!3741650 (nullable!6075 (regOne!32676 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292)))))))))))

(declare-fun bm!509743 () Bool)

(declare-fun call!509751 () (Set Context!10932))

(declare-fun call!509749 () (Set Context!10932))

(assert (=> bm!509743 (= call!509751 call!509749)))

(declare-fun b!6139481 () Bool)

(declare-fun e!3741647 () (Set Context!10932))

(declare-fun call!509752 () (Set Context!10932))

(assert (=> b!6139481 (= e!3741647 (set.union call!509749 call!509752))))

(declare-fun b!6139482 () Bool)

(declare-fun e!3741651 () (Set Context!10932))

(declare-fun call!509748 () (Set Context!10932))

(assert (=> b!6139482 (= e!3741651 call!509748)))

(declare-fun bm!509744 () Bool)

(declare-fun call!509753 () List!64545)

(declare-fun call!509750 () List!64545)

(assert (=> bm!509744 (= call!509753 call!509750)))

(declare-fun b!6139483 () Bool)

(declare-fun e!3741646 () (Set Context!10932))

(assert (=> b!6139483 (= e!3741646 (as set.empty (Set Context!10932)))))

(declare-fun b!6139484 () Bool)

(declare-fun c!1104250 () Bool)

(assert (=> b!6139484 (= c!1104250 e!3741650)))

(declare-fun res!2543936 () Bool)

(assert (=> b!6139484 (=> (not res!2543936) (not e!3741650))))

(assert (=> b!6139484 (= res!2543936 (is-Concat!24927 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292))))))))))

(declare-fun e!3741649 () (Set Context!10932))

(assert (=> b!6139484 (= e!3741647 e!3741649)))

(declare-fun bm!509745 () Bool)

(declare-fun c!1104249 () Bool)

(declare-fun c!1104248 () Bool)

(assert (=> bm!509745 (= call!509749 (derivationStepZipperDown!1330 (ite c!1104248 (regOne!32677 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292))))))) (ite c!1104250 (regTwo!32676 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292))))))) (ite c!1104249 (regOne!32676 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292))))))) (reg!16411 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292)))))))))) (ite (or c!1104248 c!1104250) (ite (or c!1104124 c!1104126) lt!2332796 (Context!10933 call!509677)) (Context!10933 call!509753)) (h!70871 s!2326)))))

(declare-fun b!6139485 () Bool)

(assert (=> b!6139485 (= e!3741649 e!3741651)))

(assert (=> b!6139485 (= c!1104249 (is-Concat!24927 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292))))))))))

(declare-fun bm!509746 () Bool)

(assert (=> bm!509746 (= call!509750 ($colon$colon!1959 (exprs!5966 (ite (or c!1104124 c!1104126) lt!2332796 (Context!10933 call!509677))) (ite (or c!1104250 c!1104249) (regTwo!32676 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292))))))) (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292)))))))))))

(declare-fun bm!509747 () Bool)

(assert (=> bm!509747 (= call!509748 call!509751)))

(declare-fun b!6139486 () Bool)

(assert (=> b!6139486 (= e!3741646 call!509748)))

(declare-fun b!6139487 () Bool)

(declare-fun e!3741648 () (Set Context!10932))

(assert (=> b!6139487 (= e!3741648 e!3741647)))

(assert (=> b!6139487 (= c!1104248 (is-Union!16082 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292))))))))))

(declare-fun c!1104252 () Bool)

(declare-fun b!6139488 () Bool)

(assert (=> b!6139488 (= c!1104252 (is-Star!16082 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292))))))))))

(assert (=> b!6139488 (= e!3741651 e!3741646)))

(declare-fun d!1923453 () Bool)

(declare-fun c!1104251 () Bool)

(assert (=> d!1923453 (= c!1104251 (and (is-ElementMatch!16082 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292))))))) (= (c!1104020 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292))))))) (h!70871 s!2326))))))

(assert (=> d!1923453 (= (derivationStepZipperDown!1330 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292)))))) (ite (or c!1104124 c!1104126) lt!2332796 (Context!10933 call!509677)) (h!70871 s!2326)) e!3741648)))

(declare-fun b!6139489 () Bool)

(assert (=> b!6139489 (= e!3741648 (set.insert (ite (or c!1104124 c!1104126) lt!2332796 (Context!10933 call!509677)) (as set.empty (Set Context!10932))))))

(declare-fun bm!509748 () Bool)

(assert (=> bm!509748 (= call!509752 (derivationStepZipperDown!1330 (ite c!1104248 (regTwo!32677 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292))))))) (regOne!32676 (ite c!1104124 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104126 (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (ite c!1104125 (regOne!32676 (regOne!32677 (regOne!32676 r!7292))) (reg!16411 (regOne!32677 (regOne!32676 r!7292)))))))) (ite c!1104248 (ite (or c!1104124 c!1104126) lt!2332796 (Context!10933 call!509677)) (Context!10933 call!509750)) (h!70871 s!2326)))))

(declare-fun b!6139490 () Bool)

(assert (=> b!6139490 (= e!3741649 (set.union call!509752 call!509751))))

(assert (= (and d!1923453 c!1104251) b!6139489))

(assert (= (and d!1923453 (not c!1104251)) b!6139487))

(assert (= (and b!6139487 c!1104248) b!6139481))

(assert (= (and b!6139487 (not c!1104248)) b!6139484))

(assert (= (and b!6139484 res!2543936) b!6139480))

(assert (= (and b!6139484 c!1104250) b!6139490))

(assert (= (and b!6139484 (not c!1104250)) b!6139485))

(assert (= (and b!6139485 c!1104249) b!6139482))

(assert (= (and b!6139485 (not c!1104249)) b!6139488))

(assert (= (and b!6139488 c!1104252) b!6139486))

(assert (= (and b!6139488 (not c!1104252)) b!6139483))

(assert (= (or b!6139482 b!6139486) bm!509744))

(assert (= (or b!6139482 b!6139486) bm!509747))

(assert (= (or b!6139490 bm!509744) bm!509746))

(assert (= (or b!6139490 bm!509747) bm!509743))

(assert (= (or b!6139481 b!6139490) bm!509748))

(assert (= (or b!6139481 bm!509743) bm!509745))

(declare-fun m!6981112 () Bool)

(assert (=> bm!509748 m!6981112))

(declare-fun m!6981114 () Bool)

(assert (=> bm!509745 m!6981114))

(declare-fun m!6981116 () Bool)

(assert (=> b!6139480 m!6981116))

(declare-fun m!6981118 () Bool)

(assert (=> bm!509746 m!6981118))

(declare-fun m!6981120 () Bool)

(assert (=> b!6139489 m!6981120))

(assert (=> bm!509669 d!1923453))

(declare-fun d!1923455 () Bool)

(assert (=> d!1923455 (= (isEmpty!36374 (tail!11770 s!2326)) (is-Nil!64423 (tail!11770 s!2326)))))

(assert (=> b!6138780 d!1923455))

(declare-fun d!1923457 () Bool)

(assert (=> d!1923457 (= (tail!11770 s!2326) (t!378024 s!2326))))

(assert (=> b!6138780 d!1923457))

(declare-fun d!1923459 () Bool)

(assert (=> d!1923459 (= (isEmpty!36374 s!2326) (is-Nil!64423 s!2326))))

(assert (=> d!1923285 d!1923459))

(assert (=> d!1923285 d!1923339))

(declare-fun d!1923461 () Bool)

(assert (=> d!1923461 (= (nullable!6075 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (nullableFct!2039 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))))))

(declare-fun bs!1522393 () Bool)

(assert (= bs!1522393 d!1923461))

(declare-fun m!6981122 () Bool)

(assert (=> bs!1522393 m!6981122))

(assert (=> b!6138947 d!1923461))

(declare-fun d!1923463 () Bool)

(assert (=> d!1923463 (= (isDefined!12676 lt!2332907) (not (isEmpty!36375 lt!2332907)))))

(declare-fun bs!1522394 () Bool)

(assert (= bs!1522394 d!1923463))

(declare-fun m!6981124 () Bool)

(assert (=> bs!1522394 m!6981124))

(assert (=> b!6138856 d!1923463))

(declare-fun d!1923465 () Bool)

(assert (=> d!1923465 (= (isEmptyLang!1509 lt!2332890) (is-EmptyLang!16082 lt!2332890))))

(assert (=> b!6138809 d!1923465))

(assert (=> b!6138952 d!1923327))

(declare-fun d!1923467 () Bool)

(declare-fun res!2543937 () Bool)

(declare-fun e!3741652 () Bool)

(assert (=> d!1923467 (=> res!2543937 e!3741652)))

(assert (=> d!1923467 (= res!2543937 (is-Nil!64421 (exprs!5966 setElem!41515)))))

(assert (=> d!1923467 (= (forall!15203 (exprs!5966 setElem!41515) lambda!334580) e!3741652)))

(declare-fun b!6139491 () Bool)

(declare-fun e!3741653 () Bool)

(assert (=> b!6139491 (= e!3741652 e!3741653)))

(declare-fun res!2543938 () Bool)

(assert (=> b!6139491 (=> (not res!2543938) (not e!3741653))))

(assert (=> b!6139491 (= res!2543938 (dynLambda!25387 lambda!334580 (h!70869 (exprs!5966 setElem!41515))))))

(declare-fun b!6139492 () Bool)

(assert (=> b!6139492 (= e!3741653 (forall!15203 (t!378022 (exprs!5966 setElem!41515)) lambda!334580))))

(assert (= (and d!1923467 (not res!2543937)) b!6139491))

(assert (= (and b!6139491 res!2543938) b!6139492))

(declare-fun b_lambda!233667 () Bool)

(assert (=> (not b_lambda!233667) (not b!6139491)))

(declare-fun m!6981126 () Bool)

(assert (=> b!6139491 m!6981126))

(declare-fun m!6981128 () Bool)

(assert (=> b!6139492 m!6981128))

(assert (=> d!1923317 d!1923467))

(assert (=> b!6138776 d!1923455))

(assert (=> b!6138776 d!1923457))

(declare-fun d!1923469 () Bool)

(assert (=> d!1923469 (= (nullable!6075 (reg!16411 r!7292)) (nullableFct!2039 (reg!16411 r!7292)))))

(declare-fun bs!1522395 () Bool)

(assert (= bs!1522395 d!1923469))

(declare-fun m!6981130 () Bool)

(assert (=> bs!1522395 m!6981130))

(assert (=> b!6139000 d!1923469))

(assert (=> bm!509632 d!1923459))

(declare-fun b!6139493 () Bool)

(declare-fun e!3741654 () Bool)

(declare-fun e!3741658 () Bool)

(assert (=> b!6139493 (= e!3741654 e!3741658)))

(declare-fun c!1104254 () Bool)

(assert (=> b!6139493 (= c!1104254 (is-Star!16082 lt!2332877))))

(declare-fun b!6139494 () Bool)

(declare-fun e!3741655 () Bool)

(declare-fun call!509754 () Bool)

(assert (=> b!6139494 (= e!3741655 call!509754)))

(declare-fun b!6139495 () Bool)

(declare-fun e!3741657 () Bool)

(declare-fun e!3741659 () Bool)

(assert (=> b!6139495 (= e!3741657 e!3741659)))

(declare-fun res!2543939 () Bool)

(assert (=> b!6139495 (=> (not res!2543939) (not e!3741659))))

(declare-fun call!509756 () Bool)

(assert (=> b!6139495 (= res!2543939 call!509756)))

(declare-fun d!1923471 () Bool)

(declare-fun res!2543941 () Bool)

(assert (=> d!1923471 (=> res!2543941 e!3741654)))

(assert (=> d!1923471 (= res!2543941 (is-ElementMatch!16082 lt!2332877))))

(assert (=> d!1923471 (= (validRegex!7818 lt!2332877) e!3741654)))

(declare-fun b!6139496 () Bool)

(declare-fun res!2543942 () Bool)

(assert (=> b!6139496 (=> (not res!2543942) (not e!3741655))))

(assert (=> b!6139496 (= res!2543942 call!509756)))

(declare-fun e!3741656 () Bool)

(assert (=> b!6139496 (= e!3741656 e!3741655)))

(declare-fun bm!509749 () Bool)

(declare-fun call!509755 () Bool)

(assert (=> bm!509749 (= call!509756 call!509755)))

(declare-fun b!6139497 () Bool)

(assert (=> b!6139497 (= e!3741658 e!3741656)))

(declare-fun c!1104253 () Bool)

(assert (=> b!6139497 (= c!1104253 (is-Union!16082 lt!2332877))))

(declare-fun b!6139498 () Bool)

(assert (=> b!6139498 (= e!3741659 call!509754)))

(declare-fun b!6139499 () Bool)

(declare-fun e!3741660 () Bool)

(assert (=> b!6139499 (= e!3741658 e!3741660)))

(declare-fun res!2543940 () Bool)

(assert (=> b!6139499 (= res!2543940 (not (nullable!6075 (reg!16411 lt!2332877))))))

(assert (=> b!6139499 (=> (not res!2543940) (not e!3741660))))

(declare-fun b!6139500 () Bool)

(declare-fun res!2543943 () Bool)

(assert (=> b!6139500 (=> res!2543943 e!3741657)))

(assert (=> b!6139500 (= res!2543943 (not (is-Concat!24927 lt!2332877)))))

(assert (=> b!6139500 (= e!3741656 e!3741657)))

(declare-fun bm!509750 () Bool)

(assert (=> bm!509750 (= call!509755 (validRegex!7818 (ite c!1104254 (reg!16411 lt!2332877) (ite c!1104253 (regOne!32677 lt!2332877) (regOne!32676 lt!2332877)))))))

(declare-fun b!6139501 () Bool)

(assert (=> b!6139501 (= e!3741660 call!509755)))

(declare-fun bm!509751 () Bool)

(assert (=> bm!509751 (= call!509754 (validRegex!7818 (ite c!1104253 (regTwo!32677 lt!2332877) (regTwo!32676 lt!2332877))))))

(assert (= (and d!1923471 (not res!2543941)) b!6139493))

(assert (= (and b!6139493 c!1104254) b!6139499))

(assert (= (and b!6139493 (not c!1104254)) b!6139497))

(assert (= (and b!6139499 res!2543940) b!6139501))

(assert (= (and b!6139497 c!1104253) b!6139496))

(assert (= (and b!6139497 (not c!1104253)) b!6139500))

(assert (= (and b!6139496 res!2543942) b!6139494))

(assert (= (and b!6139500 (not res!2543943)) b!6139495))

(assert (= (and b!6139495 res!2543939) b!6139498))

(assert (= (or b!6139494 b!6139498) bm!509751))

(assert (= (or b!6139496 b!6139495) bm!509749))

(assert (= (or b!6139501 bm!509749) bm!509750))

(declare-fun m!6981132 () Bool)

(assert (=> b!6139499 m!6981132))

(declare-fun m!6981134 () Bool)

(assert (=> bm!509750 m!6981134))

(declare-fun m!6981136 () Bool)

(assert (=> bm!509751 m!6981136))

(assert (=> d!1923265 d!1923471))

(assert (=> d!1923265 d!1923289))

(assert (=> d!1923265 d!1923291))

(declare-fun d!1923473 () Bool)

(assert (=> d!1923473 (= (isConcat!1022 lt!2332917) (is-Concat!24927 lt!2332917))))

(assert (=> b!6138904 d!1923473))

(declare-fun bs!1522396 () Bool)

(declare-fun d!1923475 () Bool)

(assert (= bs!1522396 (and d!1923475 d!1923291)))

(declare-fun lambda!334618 () Int)

(assert (=> bs!1522396 (= lambda!334618 lambda!334570)))

(declare-fun bs!1522397 () Bool)

(assert (= bs!1522397 (and d!1923475 d!1923317)))

(assert (=> bs!1522397 (= lambda!334618 lambda!334580)))

(declare-fun bs!1522398 () Bool)

(assert (= bs!1522398 (and d!1923475 d!1923345)))

(assert (=> bs!1522398 (= lambda!334618 lambda!334584)))

(declare-fun bs!1522399 () Bool)

(assert (= bs!1522399 (and d!1923475 d!1923319)))

(assert (=> bs!1522399 (= lambda!334618 lambda!334583)))

(declare-fun bs!1522400 () Bool)

(assert (= bs!1522400 (and d!1923475 d!1923279)))

(assert (=> bs!1522400 (= lambda!334618 lambda!334558)))

(declare-fun bs!1522401 () Bool)

(assert (= bs!1522401 (and d!1923475 d!1923289)))

(assert (=> bs!1522401 (= lambda!334618 lambda!334567)))

(declare-fun bs!1522402 () Bool)

(assert (= bs!1522402 (and d!1923475 d!1923443)))

(assert (=> bs!1522402 (= lambda!334618 lambda!334617)))

(assert (=> d!1923475 (= (inv!83453 setElem!41521) (forall!15203 (exprs!5966 setElem!41521) lambda!334618))))

(declare-fun bs!1522403 () Bool)

(assert (= bs!1522403 d!1923475))

(declare-fun m!6981138 () Bool)

(assert (=> bs!1522403 m!6981138))

(assert (=> setNonEmpty!41521 d!1923475))

(declare-fun d!1923477 () Bool)

(assert (=> d!1923477 (= (isEmpty!36374 (t!378024 s!2326)) (is-Nil!64423 (t!378024 s!2326)))))

(assert (=> d!1923281 d!1923477))

(assert (=> d!1923271 d!1923477))

(assert (=> d!1923295 d!1923477))

(assert (=> b!6138899 d!1923343))

(assert (=> d!1923305 d!1923463))

(declare-fun b!6139502 () Bool)

(declare-fun res!2543948 () Bool)

(declare-fun e!3741667 () Bool)

(assert (=> b!6139502 (=> (not res!2543948) (not e!3741667))))

(declare-fun call!509757 () Bool)

(assert (=> b!6139502 (= res!2543948 (not call!509757))))

(declare-fun bm!509752 () Bool)

(assert (=> bm!509752 (= call!509757 (isEmpty!36374 Nil!64423))))

(declare-fun b!6139503 () Bool)

(declare-fun res!2543946 () Bool)

(declare-fun e!3741664 () Bool)

(assert (=> b!6139503 (=> res!2543946 e!3741664)))

(assert (=> b!6139503 (= res!2543946 e!3741667)))

(declare-fun res!2543949 () Bool)

(assert (=> b!6139503 (=> (not res!2543949) (not e!3741667))))

(declare-fun lt!2332965 () Bool)

(assert (=> b!6139503 (= res!2543949 lt!2332965)))

(declare-fun b!6139504 () Bool)

(declare-fun e!3741665 () Bool)

(assert (=> b!6139504 (= e!3741665 (nullable!6075 (regOne!32676 r!7292)))))

(declare-fun b!6139505 () Bool)

(declare-fun e!3741666 () Bool)

(declare-fun e!3741663 () Bool)

(assert (=> b!6139505 (= e!3741666 e!3741663)))

(declare-fun c!1104255 () Bool)

(assert (=> b!6139505 (= c!1104255 (is-EmptyLang!16082 (regOne!32676 r!7292)))))

(declare-fun b!6139506 () Bool)

(declare-fun e!3741661 () Bool)

(declare-fun e!3741662 () Bool)

(assert (=> b!6139506 (= e!3741661 e!3741662)))

(declare-fun res!2543950 () Bool)

(assert (=> b!6139506 (=> res!2543950 e!3741662)))

(assert (=> b!6139506 (= res!2543950 call!509757)))

(declare-fun b!6139507 () Bool)

(assert (=> b!6139507 (= e!3741664 e!3741661)))

(declare-fun res!2543947 () Bool)

(assert (=> b!6139507 (=> (not res!2543947) (not e!3741661))))

(assert (=> b!6139507 (= res!2543947 (not lt!2332965))))

(declare-fun b!6139508 () Bool)

(assert (=> b!6139508 (= e!3741665 (matchR!8265 (derivativeStep!4802 (regOne!32676 r!7292) (head!12685 Nil!64423)) (tail!11770 Nil!64423)))))

(declare-fun b!6139509 () Bool)

(assert (=> b!6139509 (= e!3741666 (= lt!2332965 call!509757))))

(declare-fun d!1923479 () Bool)

(assert (=> d!1923479 e!3741666))

(declare-fun c!1104256 () Bool)

(assert (=> d!1923479 (= c!1104256 (is-EmptyExpr!16082 (regOne!32676 r!7292)))))

(assert (=> d!1923479 (= lt!2332965 e!3741665)))

(declare-fun c!1104257 () Bool)

(assert (=> d!1923479 (= c!1104257 (isEmpty!36374 Nil!64423))))

(assert (=> d!1923479 (validRegex!7818 (regOne!32676 r!7292))))

(assert (=> d!1923479 (= (matchR!8265 (regOne!32676 r!7292) Nil!64423) lt!2332965)))

(declare-fun b!6139510 () Bool)

(declare-fun res!2543951 () Bool)

(assert (=> b!6139510 (=> res!2543951 e!3741664)))

(assert (=> b!6139510 (= res!2543951 (not (is-ElementMatch!16082 (regOne!32676 r!7292))))))

(assert (=> b!6139510 (= e!3741663 e!3741664)))

(declare-fun b!6139511 () Bool)

(declare-fun res!2543944 () Bool)

(assert (=> b!6139511 (=> res!2543944 e!3741662)))

(assert (=> b!6139511 (= res!2543944 (not (isEmpty!36374 (tail!11770 Nil!64423))))))

(declare-fun b!6139512 () Bool)

(assert (=> b!6139512 (= e!3741663 (not lt!2332965))))

(declare-fun b!6139513 () Bool)

(assert (=> b!6139513 (= e!3741667 (= (head!12685 Nil!64423) (c!1104020 (regOne!32676 r!7292))))))

(declare-fun b!6139514 () Bool)

(assert (=> b!6139514 (= e!3741662 (not (= (head!12685 Nil!64423) (c!1104020 (regOne!32676 r!7292)))))))

(declare-fun b!6139515 () Bool)

(declare-fun res!2543945 () Bool)

(assert (=> b!6139515 (=> (not res!2543945) (not e!3741667))))

(assert (=> b!6139515 (= res!2543945 (isEmpty!36374 (tail!11770 Nil!64423)))))

(assert (= (and d!1923479 c!1104257) b!6139504))

(assert (= (and d!1923479 (not c!1104257)) b!6139508))

(assert (= (and d!1923479 c!1104256) b!6139509))

(assert (= (and d!1923479 (not c!1104256)) b!6139505))

(assert (= (and b!6139505 c!1104255) b!6139512))

(assert (= (and b!6139505 (not c!1104255)) b!6139510))

(assert (= (and b!6139510 (not res!2543951)) b!6139503))

(assert (= (and b!6139503 res!2543949) b!6139502))

(assert (= (and b!6139502 res!2543948) b!6139515))

(assert (= (and b!6139515 res!2543945) b!6139513))

(assert (= (and b!6139503 (not res!2543946)) b!6139507))

(assert (= (and b!6139507 res!2543947) b!6139506))

(assert (= (and b!6139506 (not res!2543950)) b!6139511))

(assert (= (and b!6139511 (not res!2543944)) b!6139514))

(assert (= (or b!6139509 b!6139502 b!6139506) bm!509752))

(declare-fun m!6981140 () Bool)

(assert (=> b!6139508 m!6981140))

(assert (=> b!6139508 m!6981140))

(declare-fun m!6981142 () Bool)

(assert (=> b!6139508 m!6981142))

(declare-fun m!6981144 () Bool)

(assert (=> b!6139508 m!6981144))

(assert (=> b!6139508 m!6981142))

(assert (=> b!6139508 m!6981144))

(declare-fun m!6981146 () Bool)

(assert (=> b!6139508 m!6981146))

(declare-fun m!6981148 () Bool)

(assert (=> d!1923479 m!6981148))

(assert (=> d!1923479 m!6980726))

(assert (=> b!6139515 m!6981144))

(assert (=> b!6139515 m!6981144))

(declare-fun m!6981150 () Bool)

(assert (=> b!6139515 m!6981150))

(declare-fun m!6981152 () Bool)

(assert (=> b!6139504 m!6981152))

(assert (=> b!6139511 m!6981144))

(assert (=> b!6139511 m!6981144))

(assert (=> b!6139511 m!6981150))

(assert (=> bm!509752 m!6981148))

(assert (=> b!6139513 m!6981140))

(assert (=> b!6139514 m!6981140))

(assert (=> d!1923305 d!1923479))

(assert (=> d!1923305 d!1923437))

(declare-fun d!1923481 () Bool)

(assert (=> d!1923481 true))

(assert (=> d!1923481 true))

(declare-fun res!2543954 () Bool)

(assert (=> d!1923481 (= (choose!45620 lambda!334541) res!2543954)))

(assert (=> d!1923307 d!1923481))

(assert (=> bs!1522335 d!1923331))

(assert (=> bm!509636 d!1923459))

(declare-fun b!6139516 () Bool)

(declare-fun e!3741672 () Bool)

(assert (=> b!6139516 (= e!3741672 (nullable!6075 (regOne!32676 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292)))))))))

(declare-fun bm!509753 () Bool)

(declare-fun call!509761 () (Set Context!10932))

(declare-fun call!509759 () (Set Context!10932))

(assert (=> bm!509753 (= call!509761 call!509759)))

(declare-fun b!6139517 () Bool)

(declare-fun e!3741669 () (Set Context!10932))

(declare-fun call!509762 () (Set Context!10932))

(assert (=> b!6139517 (= e!3741669 (set.union call!509759 call!509762))))

(declare-fun b!6139518 () Bool)

(declare-fun e!3741673 () (Set Context!10932))

(declare-fun call!509758 () (Set Context!10932))

(assert (=> b!6139518 (= e!3741673 call!509758)))

(declare-fun bm!509754 () Bool)

(declare-fun call!509763 () List!64545)

(declare-fun call!509760 () List!64545)

(assert (=> bm!509754 (= call!509763 call!509760)))

(declare-fun b!6139519 () Bool)

(declare-fun e!3741668 () (Set Context!10932))

(assert (=> b!6139519 (= e!3741668 (as set.empty (Set Context!10932)))))

(declare-fun b!6139520 () Bool)

(declare-fun c!1104260 () Bool)

(assert (=> b!6139520 (= c!1104260 e!3741672)))

(declare-fun res!2543955 () Bool)

(assert (=> b!6139520 (=> (not res!2543955) (not e!3741672))))

(assert (=> b!6139520 (= res!2543955 (is-Concat!24927 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292))))))))

(declare-fun e!3741671 () (Set Context!10932))

(assert (=> b!6139520 (= e!3741669 e!3741671)))

(declare-fun c!1104258 () Bool)

(declare-fun bm!509755 () Bool)

(declare-fun c!1104259 () Bool)

(assert (=> bm!509755 (= call!509759 (derivationStepZipperDown!1330 (ite c!1104258 (regOne!32677 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292))))) (ite c!1104260 (regTwo!32676 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292))))) (ite c!1104259 (regOne!32676 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292))))) (reg!16411 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292)))))))) (ite (or c!1104258 c!1104260) (ite c!1104124 lt!2332796 (Context!10933 call!509674)) (Context!10933 call!509763)) (h!70871 s!2326)))))

(declare-fun b!6139521 () Bool)

(assert (=> b!6139521 (= e!3741671 e!3741673)))

(assert (=> b!6139521 (= c!1104259 (is-Concat!24927 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292))))))))

(declare-fun bm!509756 () Bool)

(assert (=> bm!509756 (= call!509760 ($colon$colon!1959 (exprs!5966 (ite c!1104124 lt!2332796 (Context!10933 call!509674))) (ite (or c!1104260 c!1104259) (regTwo!32676 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292))))) (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292)))))))))

(declare-fun bm!509757 () Bool)

(assert (=> bm!509757 (= call!509758 call!509761)))

(declare-fun b!6139522 () Bool)

(assert (=> b!6139522 (= e!3741668 call!509758)))

(declare-fun b!6139523 () Bool)

(declare-fun e!3741670 () (Set Context!10932))

(assert (=> b!6139523 (= e!3741670 e!3741669)))

(assert (=> b!6139523 (= c!1104258 (is-Union!16082 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292))))))))

(declare-fun b!6139524 () Bool)

(declare-fun c!1104262 () Bool)

(assert (=> b!6139524 (= c!1104262 (is-Star!16082 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292))))))))

(assert (=> b!6139524 (= e!3741673 e!3741668)))

(declare-fun d!1923483 () Bool)

(declare-fun c!1104261 () Bool)

(assert (=> d!1923483 (= c!1104261 (and (is-ElementMatch!16082 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292))))) (= (c!1104020 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292))))) (h!70871 s!2326))))))

(assert (=> d!1923483 (= (derivationStepZipperDown!1330 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292)))) (ite c!1104124 lt!2332796 (Context!10933 call!509674)) (h!70871 s!2326)) e!3741670)))

(declare-fun b!6139525 () Bool)

(assert (=> b!6139525 (= e!3741670 (set.insert (ite c!1104124 lt!2332796 (Context!10933 call!509674)) (as set.empty (Set Context!10932))))))

(declare-fun bm!509758 () Bool)

(assert (=> bm!509758 (= call!509762 (derivationStepZipperDown!1330 (ite c!1104258 (regTwo!32677 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292))))) (regOne!32676 (ite c!1104124 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292)))))) (ite c!1104258 (ite c!1104124 lt!2332796 (Context!10933 call!509674)) (Context!10933 call!509760)) (h!70871 s!2326)))))

(declare-fun b!6139526 () Bool)

(assert (=> b!6139526 (= e!3741671 (set.union call!509762 call!509761))))

(assert (= (and d!1923483 c!1104261) b!6139525))

(assert (= (and d!1923483 (not c!1104261)) b!6139523))

(assert (= (and b!6139523 c!1104258) b!6139517))

(assert (= (and b!6139523 (not c!1104258)) b!6139520))

(assert (= (and b!6139520 res!2543955) b!6139516))

(assert (= (and b!6139520 c!1104260) b!6139526))

(assert (= (and b!6139520 (not c!1104260)) b!6139521))

(assert (= (and b!6139521 c!1104259) b!6139518))

(assert (= (and b!6139521 (not c!1104259)) b!6139524))

(assert (= (and b!6139524 c!1104262) b!6139522))

(assert (= (and b!6139524 (not c!1104262)) b!6139519))

(assert (= (or b!6139518 b!6139522) bm!509754))

(assert (= (or b!6139518 b!6139522) bm!509757))

(assert (= (or b!6139526 bm!509754) bm!509756))

(assert (= (or b!6139526 bm!509757) bm!509753))

(assert (= (or b!6139517 b!6139526) bm!509758))

(assert (= (or b!6139517 bm!509753) bm!509755))

(declare-fun m!6981154 () Bool)

(assert (=> bm!509758 m!6981154))

(declare-fun m!6981156 () Bool)

(assert (=> bm!509755 m!6981156))

(declare-fun m!6981158 () Bool)

(assert (=> b!6139516 m!6981158))

(declare-fun m!6981160 () Bool)

(assert (=> bm!509756 m!6981160))

(declare-fun m!6981162 () Bool)

(assert (=> b!6139525 m!6981162))

(assert (=> bm!509672 d!1923483))

(declare-fun d!1923485 () Bool)

(assert (=> d!1923485 true))

(declare-fun setRes!41527 () Bool)

(assert (=> d!1923485 setRes!41527))

(declare-fun condSetEmpty!41527 () Bool)

(declare-fun res!2543958 () (Set Context!10932))

(assert (=> d!1923485 (= condSetEmpty!41527 (= res!2543958 (as set.empty (Set Context!10932))))))

(assert (=> d!1923485 (= (choose!45618 z!1189 lambda!334542) res!2543958)))

(declare-fun setIsEmpty!41527 () Bool)

(assert (=> setIsEmpty!41527 setRes!41527))

(declare-fun setNonEmpty!41527 () Bool)

(declare-fun e!3741676 () Bool)

(declare-fun setElem!41527 () Context!10932)

(declare-fun tp!1715360 () Bool)

(assert (=> setNonEmpty!41527 (= setRes!41527 (and tp!1715360 (inv!83453 setElem!41527) e!3741676))))

(declare-fun setRest!41527 () (Set Context!10932))

(assert (=> setNonEmpty!41527 (= res!2543958 (set.union (set.insert setElem!41527 (as set.empty (Set Context!10932))) setRest!41527))))

(declare-fun b!6139529 () Bool)

(declare-fun tp!1715359 () Bool)

(assert (=> b!6139529 (= e!3741676 tp!1715359)))

(assert (= (and d!1923485 condSetEmpty!41527) setIsEmpty!41527))

(assert (= (and d!1923485 (not condSetEmpty!41527)) setNonEmpty!41527))

(assert (= setNonEmpty!41527 b!6139529))

(declare-fun m!6981164 () Bool)

(assert (=> setNonEmpty!41527 m!6981164))

(assert (=> d!1923333 d!1923485))

(declare-fun d!1923487 () Bool)

(declare-fun c!1104265 () Bool)

(assert (=> d!1923487 (= c!1104265 (is-Nil!64422 lt!2332896))))

(declare-fun e!3741679 () (Set Context!10932))

(assert (=> d!1923487 (= (content!11988 lt!2332896) e!3741679)))

(declare-fun b!6139534 () Bool)

(assert (=> b!6139534 (= e!3741679 (as set.empty (Set Context!10932)))))

(declare-fun b!6139535 () Bool)

(assert (=> b!6139535 (= e!3741679 (set.union (set.insert (h!70870 lt!2332896) (as set.empty (Set Context!10932))) (content!11988 (t!378023 lt!2332896))))))

(assert (= (and d!1923487 c!1104265) b!6139534))

(assert (= (and d!1923487 (not c!1104265)) b!6139535))

(declare-fun m!6981166 () Bool)

(assert (=> b!6139535 m!6981166))

(declare-fun m!6981168 () Bool)

(assert (=> b!6139535 m!6981168))

(assert (=> b!6138819 d!1923487))

(declare-fun d!1923489 () Bool)

(assert (=> d!1923489 (= (nullable!6075 (h!70869 (exprs!5966 lt!2332796))) (nullableFct!2039 (h!70869 (exprs!5966 lt!2332796))))))

(declare-fun bs!1522404 () Bool)

(assert (= bs!1522404 d!1923489))

(declare-fun m!6981170 () Bool)

(assert (=> bs!1522404 m!6981170))

(assert (=> b!6138942 d!1923489))

(declare-fun bs!1522405 () Bool)

(declare-fun d!1923491 () Bool)

(assert (= bs!1522405 (and d!1923491 d!1923291)))

(declare-fun lambda!334619 () Int)

(assert (=> bs!1522405 (= lambda!334619 lambda!334570)))

(declare-fun bs!1522406 () Bool)

(assert (= bs!1522406 (and d!1923491 d!1923345)))

(assert (=> bs!1522406 (= lambda!334619 lambda!334584)))

(declare-fun bs!1522407 () Bool)

(assert (= bs!1522407 (and d!1923491 d!1923319)))

(assert (=> bs!1522407 (= lambda!334619 lambda!334583)))

(declare-fun bs!1522408 () Bool)

(assert (= bs!1522408 (and d!1923491 d!1923279)))

(assert (=> bs!1522408 (= lambda!334619 lambda!334558)))

(declare-fun bs!1522409 () Bool)

(assert (= bs!1522409 (and d!1923491 d!1923289)))

(assert (=> bs!1522409 (= lambda!334619 lambda!334567)))

(declare-fun bs!1522410 () Bool)

(assert (= bs!1522410 (and d!1923491 d!1923443)))

(assert (=> bs!1522410 (= lambda!334619 lambda!334617)))

(declare-fun bs!1522411 () Bool)

(assert (= bs!1522411 (and d!1923491 d!1923317)))

(assert (=> bs!1522411 (= lambda!334619 lambda!334580)))

(declare-fun bs!1522412 () Bool)

(assert (= bs!1522412 (and d!1923491 d!1923475)))

(assert (=> bs!1522412 (= lambda!334619 lambda!334618)))

(assert (=> d!1923491 (= (inv!83453 (h!70870 (t!378023 zl!343))) (forall!15203 (exprs!5966 (h!70870 (t!378023 zl!343))) lambda!334619))))

(declare-fun bs!1522413 () Bool)

(assert (= bs!1522413 d!1923491))

(declare-fun m!6981172 () Bool)

(assert (=> bs!1522413 m!6981172))

(assert (=> b!6139024 d!1923491))

(assert (=> b!6138680 d!1923295))

(declare-fun b!6139546 () Bool)

(declare-fun res!2543964 () Bool)

(declare-fun e!3741684 () Bool)

(assert (=> b!6139546 (=> (not res!2543964) (not e!3741684))))

(declare-fun lt!2332968 () List!64547)

(declare-fun size!40225 (List!64547) Int)

(assert (=> b!6139546 (= res!2543964 (= (size!40225 lt!2332968) (+ (size!40225 (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423))) (size!40225 (t!378024 s!2326)))))))

(declare-fun b!6139545 () Bool)

(declare-fun e!3741685 () List!64547)

(assert (=> b!6139545 (= e!3741685 (Cons!64423 (h!70871 (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423))) (++!14168 (t!378024 (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423))) (t!378024 s!2326))))))

(declare-fun d!1923493 () Bool)

(assert (=> d!1923493 e!3741684))

(declare-fun res!2543963 () Bool)

(assert (=> d!1923493 (=> (not res!2543963) (not e!3741684))))

(declare-fun content!11990 (List!64547) (Set C!32434))

(assert (=> d!1923493 (= res!2543963 (= (content!11990 lt!2332968) (set.union (content!11990 (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423))) (content!11990 (t!378024 s!2326)))))))

(assert (=> d!1923493 (= lt!2332968 e!3741685)))

(declare-fun c!1104268 () Bool)

(assert (=> d!1923493 (= c!1104268 (is-Nil!64423 (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423))))))

(assert (=> d!1923493 (= (++!14168 (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423)) (t!378024 s!2326)) lt!2332968)))

(declare-fun b!6139547 () Bool)

(assert (=> b!6139547 (= e!3741684 (or (not (= (t!378024 s!2326) Nil!64423)) (= lt!2332968 (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423)))))))

(declare-fun b!6139544 () Bool)

(assert (=> b!6139544 (= e!3741685 (t!378024 s!2326))))

(assert (= (and d!1923493 c!1104268) b!6139544))

(assert (= (and d!1923493 (not c!1104268)) b!6139545))

(assert (= (and d!1923493 res!2543963) b!6139546))

(assert (= (and b!6139546 res!2543964) b!6139547))

(declare-fun m!6981174 () Bool)

(assert (=> b!6139546 m!6981174))

(assert (=> b!6139546 m!6980710))

(declare-fun m!6981176 () Bool)

(assert (=> b!6139546 m!6981176))

(declare-fun m!6981178 () Bool)

(assert (=> b!6139546 m!6981178))

(declare-fun m!6981180 () Bool)

(assert (=> b!6139545 m!6981180))

(declare-fun m!6981182 () Bool)

(assert (=> d!1923493 m!6981182))

(assert (=> d!1923493 m!6980710))

(declare-fun m!6981184 () Bool)

(assert (=> d!1923493 m!6981184))

(declare-fun m!6981186 () Bool)

(assert (=> d!1923493 m!6981186))

(assert (=> b!6138859 d!1923493))

(declare-fun b!6139550 () Bool)

(declare-fun res!2543966 () Bool)

(declare-fun e!3741686 () Bool)

(assert (=> b!6139550 (=> (not res!2543966) (not e!3741686))))

(declare-fun lt!2332969 () List!64547)

(assert (=> b!6139550 (= res!2543966 (= (size!40225 lt!2332969) (+ (size!40225 Nil!64423) (size!40225 (Cons!64423 (h!70871 s!2326) Nil!64423)))))))

(declare-fun b!6139549 () Bool)

(declare-fun e!3741687 () List!64547)

(assert (=> b!6139549 (= e!3741687 (Cons!64423 (h!70871 Nil!64423) (++!14168 (t!378024 Nil!64423) (Cons!64423 (h!70871 s!2326) Nil!64423))))))

(declare-fun d!1923495 () Bool)

(assert (=> d!1923495 e!3741686))

(declare-fun res!2543965 () Bool)

(assert (=> d!1923495 (=> (not res!2543965) (not e!3741686))))

(assert (=> d!1923495 (= res!2543965 (= (content!11990 lt!2332969) (set.union (content!11990 Nil!64423) (content!11990 (Cons!64423 (h!70871 s!2326) Nil!64423)))))))

(assert (=> d!1923495 (= lt!2332969 e!3741687)))

(declare-fun c!1104269 () Bool)

(assert (=> d!1923495 (= c!1104269 (is-Nil!64423 Nil!64423))))

(assert (=> d!1923495 (= (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423)) lt!2332969)))

(declare-fun b!6139551 () Bool)

(assert (=> b!6139551 (= e!3741686 (or (not (= (Cons!64423 (h!70871 s!2326) Nil!64423) Nil!64423)) (= lt!2332969 Nil!64423)))))

(declare-fun b!6139548 () Bool)

(assert (=> b!6139548 (= e!3741687 (Cons!64423 (h!70871 s!2326) Nil!64423))))

(assert (= (and d!1923495 c!1104269) b!6139548))

(assert (= (and d!1923495 (not c!1104269)) b!6139549))

(assert (= (and d!1923495 res!2543965) b!6139550))

(assert (= (and b!6139550 res!2543966) b!6139551))

(declare-fun m!6981188 () Bool)

(assert (=> b!6139550 m!6981188))

(declare-fun m!6981190 () Bool)

(assert (=> b!6139550 m!6981190))

(declare-fun m!6981192 () Bool)

(assert (=> b!6139550 m!6981192))

(declare-fun m!6981194 () Bool)

(assert (=> b!6139549 m!6981194))

(declare-fun m!6981196 () Bool)

(assert (=> d!1923495 m!6981196))

(declare-fun m!6981198 () Bool)

(assert (=> d!1923495 m!6981198))

(declare-fun m!6981200 () Bool)

(assert (=> d!1923495 m!6981200))

(assert (=> b!6138859 d!1923495))

(declare-fun d!1923497 () Bool)

(assert (=> d!1923497 (= (++!14168 (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423)) (t!378024 s!2326)) s!2326)))

(declare-fun lt!2332972 () Unit!157483)

(declare-fun choose!45631 (List!64547 C!32434 List!64547 List!64547) Unit!157483)

(assert (=> d!1923497 (= lt!2332972 (choose!45631 Nil!64423 (h!70871 s!2326) (t!378024 s!2326) s!2326))))

(assert (=> d!1923497 (= (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) (t!378024 s!2326))) s!2326)))

(assert (=> d!1923497 (= (lemmaMoveElementToOtherListKeepsConcatEq!2263 Nil!64423 (h!70871 s!2326) (t!378024 s!2326) s!2326) lt!2332972)))

(declare-fun bs!1522414 () Bool)

(assert (= bs!1522414 d!1923497))

(assert (=> bs!1522414 m!6980710))

(assert (=> bs!1522414 m!6980710))

(assert (=> bs!1522414 m!6980712))

(declare-fun m!6981202 () Bool)

(assert (=> bs!1522414 m!6981202))

(declare-fun m!6981204 () Bool)

(assert (=> bs!1522414 m!6981204))

(assert (=> b!6138859 d!1923497))

(declare-fun b!6139552 () Bool)

(declare-fun res!2543969 () Bool)

(declare-fun e!3741689 () Bool)

(assert (=> b!6139552 (=> (not res!2543969) (not e!3741689))))

(declare-fun lt!2332974 () Option!15973)

(assert (=> b!6139552 (= res!2543969 (matchR!8265 (regTwo!32676 r!7292) (_2!36364 (get!22225 lt!2332974))))))

(declare-fun b!6139553 () Bool)

(declare-fun e!3741691 () Bool)

(assert (=> b!6139553 (= e!3741691 (not (isDefined!12676 lt!2332974)))))

(declare-fun b!6139554 () Bool)

(declare-fun res!2543967 () Bool)

(assert (=> b!6139554 (=> (not res!2543967) (not e!3741689))))

(assert (=> b!6139554 (= res!2543967 (matchR!8265 (regOne!32676 r!7292) (_1!36364 (get!22225 lt!2332974))))))

(declare-fun b!6139555 () Bool)

(declare-fun e!3741688 () Option!15973)

(declare-fun e!3741690 () Option!15973)

(assert (=> b!6139555 (= e!3741688 e!3741690)))

(declare-fun c!1104270 () Bool)

(assert (=> b!6139555 (= c!1104270 (is-Nil!64423 (t!378024 s!2326)))))

(declare-fun b!6139556 () Bool)

(declare-fun lt!2332973 () Unit!157483)

(declare-fun lt!2332975 () Unit!157483)

(assert (=> b!6139556 (= lt!2332973 lt!2332975)))

(assert (=> b!6139556 (= (++!14168 (++!14168 (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423)) (Cons!64423 (h!70871 (t!378024 s!2326)) Nil!64423)) (t!378024 (t!378024 s!2326))) s!2326)))

(assert (=> b!6139556 (= lt!2332975 (lemmaMoveElementToOtherListKeepsConcatEq!2263 (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423)) (h!70871 (t!378024 s!2326)) (t!378024 (t!378024 s!2326)) s!2326))))

(assert (=> b!6139556 (= e!3741690 (findConcatSeparation!2387 (regOne!32676 r!7292) (regTwo!32676 r!7292) (++!14168 (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423)) (Cons!64423 (h!70871 (t!378024 s!2326)) Nil!64423)) (t!378024 (t!378024 s!2326)) s!2326))))

(declare-fun b!6139557 () Bool)

(declare-fun e!3741692 () Bool)

(assert (=> b!6139557 (= e!3741692 (matchR!8265 (regTwo!32676 r!7292) (t!378024 s!2326)))))

(declare-fun d!1923499 () Bool)

(assert (=> d!1923499 e!3741691))

(declare-fun res!2543968 () Bool)

(assert (=> d!1923499 (=> res!2543968 e!3741691)))

(assert (=> d!1923499 (= res!2543968 e!3741689)))

(declare-fun res!2543970 () Bool)

(assert (=> d!1923499 (=> (not res!2543970) (not e!3741689))))

(assert (=> d!1923499 (= res!2543970 (isDefined!12676 lt!2332974))))

(assert (=> d!1923499 (= lt!2332974 e!3741688)))

(declare-fun c!1104271 () Bool)

(assert (=> d!1923499 (= c!1104271 e!3741692)))

(declare-fun res!2543971 () Bool)

(assert (=> d!1923499 (=> (not res!2543971) (not e!3741692))))

(assert (=> d!1923499 (= res!2543971 (matchR!8265 (regOne!32676 r!7292) (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423))))))

(assert (=> d!1923499 (validRegex!7818 (regOne!32676 r!7292))))

(assert (=> d!1923499 (= (findConcatSeparation!2387 (regOne!32676 r!7292) (regTwo!32676 r!7292) (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423)) (t!378024 s!2326) s!2326) lt!2332974)))

(declare-fun b!6139558 () Bool)

(assert (=> b!6139558 (= e!3741688 (Some!15972 (tuple2!66123 (++!14168 Nil!64423 (Cons!64423 (h!70871 s!2326) Nil!64423)) (t!378024 s!2326))))))

(declare-fun b!6139559 () Bool)

(assert (=> b!6139559 (= e!3741689 (= (++!14168 (_1!36364 (get!22225 lt!2332974)) (_2!36364 (get!22225 lt!2332974))) s!2326))))

(declare-fun b!6139560 () Bool)

(assert (=> b!6139560 (= e!3741690 None!15972)))

(assert (= (and d!1923499 res!2543971) b!6139557))

(assert (= (and d!1923499 c!1104271) b!6139558))

(assert (= (and d!1923499 (not c!1104271)) b!6139555))

(assert (= (and b!6139555 c!1104270) b!6139560))

(assert (= (and b!6139555 (not c!1104270)) b!6139556))

(assert (= (and d!1923499 res!2543970) b!6139554))

(assert (= (and b!6139554 res!2543967) b!6139552))

(assert (= (and b!6139552 res!2543969) b!6139559))

(assert (= (and d!1923499 (not res!2543968)) b!6139553))

(assert (=> b!6139556 m!6980710))

(declare-fun m!6981206 () Bool)

(assert (=> b!6139556 m!6981206))

(assert (=> b!6139556 m!6981206))

(declare-fun m!6981208 () Bool)

(assert (=> b!6139556 m!6981208))

(assert (=> b!6139556 m!6980710))

(declare-fun m!6981210 () Bool)

(assert (=> b!6139556 m!6981210))

(assert (=> b!6139556 m!6981206))

(declare-fun m!6981212 () Bool)

(assert (=> b!6139556 m!6981212))

(declare-fun m!6981214 () Bool)

(assert (=> b!6139552 m!6981214))

(declare-fun m!6981216 () Bool)

(assert (=> b!6139552 m!6981216))

(declare-fun m!6981218 () Bool)

(assert (=> d!1923499 m!6981218))

(assert (=> d!1923499 m!6980710))

(declare-fun m!6981220 () Bool)

(assert (=> d!1923499 m!6981220))

(assert (=> d!1923499 m!6980726))

(assert (=> b!6139553 m!6981218))

(assert (=> b!6139554 m!6981214))

(declare-fun m!6981222 () Bool)

(assert (=> b!6139554 m!6981222))

(assert (=> b!6139559 m!6981214))

(declare-fun m!6981224 () Bool)

(assert (=> b!6139559 m!6981224))

(declare-fun m!6981226 () Bool)

(assert (=> b!6139557 m!6981226))

(assert (=> b!6138859 d!1923499))

(declare-fun d!1923501 () Bool)

(assert (=> d!1923501 (= (head!12685 s!2326) (h!70871 s!2326))))

(assert (=> b!6138779 d!1923501))

(declare-fun b!6139561 () Bool)

(declare-fun e!3741695 () (Set Context!10932))

(declare-fun call!509764 () (Set Context!10932))

(assert (=> b!6139561 (= e!3741695 call!509764)))

(declare-fun b!6139562 () Bool)

(declare-fun e!3741694 () (Set Context!10932))

(assert (=> b!6139562 (= e!3741694 e!3741695)))

(declare-fun c!1104273 () Bool)

(assert (=> b!6139562 (= c!1104273 (is-Cons!64421 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))))))))

(declare-fun b!6139563 () Bool)

(assert (=> b!6139563 (= e!3741694 (set.union call!509764 (derivationStepZipperUp!1256 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))))))))) (h!70871 s!2326))))))

(declare-fun d!1923503 () Bool)

(declare-fun c!1104272 () Bool)

(declare-fun e!3741693 () Bool)

(assert (=> d!1923503 (= c!1104272 e!3741693)))

(declare-fun res!2543972 () Bool)

(assert (=> d!1923503 (=> (not res!2543972) (not e!3741693))))

(assert (=> d!1923503 (= res!2543972 (is-Cons!64421 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))))))))

(assert (=> d!1923503 (= (derivationStepZipperUp!1256 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (h!70871 s!2326)) e!3741694)))

(declare-fun b!6139564 () Bool)

(assert (=> b!6139564 (= e!3741693 (nullable!6075 (h!70869 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))))))))))))

(declare-fun bm!509759 () Bool)

(assert (=> bm!509759 (= call!509764 (derivationStepZipperDown!1330 (h!70869 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))))) (Context!10933 (t!378022 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))))))))) (h!70871 s!2326)))))

(declare-fun b!6139565 () Bool)

(assert (=> b!6139565 (= e!3741695 (as set.empty (Set Context!10932)))))

(assert (= (and d!1923503 res!2543972) b!6139564))

(assert (= (and d!1923503 c!1104272) b!6139563))

(assert (= (and d!1923503 (not c!1104272)) b!6139562))

(assert (= (and b!6139562 c!1104273) b!6139561))

(assert (= (and b!6139562 (not c!1104273)) b!6139565))

(assert (= (or b!6139563 b!6139561) bm!509759))

(declare-fun m!6981228 () Bool)

(assert (=> b!6139563 m!6981228))

(declare-fun m!6981230 () Bool)

(assert (=> b!6139564 m!6981230))

(declare-fun m!6981232 () Bool)

(assert (=> bm!509759 m!6981232))

(assert (=> b!6138946 d!1923503))

(declare-fun b!6139566 () Bool)

(declare-fun e!3741698 () (Set Context!10932))

(declare-fun call!509765 () (Set Context!10932))

(assert (=> b!6139566 (= e!3741698 call!509765)))

(declare-fun b!6139567 () Bool)

(declare-fun e!3741697 () (Set Context!10932))

(assert (=> b!6139567 (= e!3741697 e!3741698)))

(declare-fun c!1104275 () Bool)

(assert (=> b!6139567 (= c!1104275 (is-Cons!64421 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343)))))))))

(declare-fun b!6139568 () Bool)

(assert (=> b!6139568 (= e!3741697 (set.union call!509765 (derivationStepZipperUp!1256 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343))))))) (h!70871 s!2326))))))

(declare-fun d!1923505 () Bool)

(declare-fun c!1104274 () Bool)

(declare-fun e!3741696 () Bool)

(assert (=> d!1923505 (= c!1104274 e!3741696)))

(declare-fun res!2543973 () Bool)

(assert (=> d!1923505 (=> (not res!2543973) (not e!3741696))))

(assert (=> d!1923505 (= res!2543973 (is-Cons!64421 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343)))))))))

(assert (=> d!1923505 (= (derivationStepZipperUp!1256 (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343)))) (h!70871 s!2326)) e!3741697)))

(declare-fun b!6139569 () Bool)

(assert (=> b!6139569 (= e!3741696 (nullable!6075 (h!70869 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343))))))))))

(declare-fun bm!509760 () Bool)

(assert (=> bm!509760 (= call!509765 (derivationStepZipperDown!1330 (h!70869 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343)))))) (Context!10933 (t!378022 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343))))))) (h!70871 s!2326)))))

(declare-fun b!6139570 () Bool)

(assert (=> b!6139570 (= e!3741698 (as set.empty (Set Context!10932)))))

(assert (= (and d!1923505 res!2543973) b!6139569))

(assert (= (and d!1923505 c!1104274) b!6139568))

(assert (= (and d!1923505 (not c!1104274)) b!6139567))

(assert (= (and b!6139567 c!1104275) b!6139566))

(assert (= (and b!6139567 (not c!1104275)) b!6139570))

(assert (= (or b!6139568 b!6139566) bm!509760))

(declare-fun m!6981234 () Bool)

(assert (=> b!6139568 m!6981234))

(declare-fun m!6981236 () Bool)

(assert (=> b!6139569 m!6981236))

(declare-fun m!6981238 () Bool)

(assert (=> bm!509760 m!6981238))

(assert (=> b!6138951 d!1923505))

(declare-fun d!1923507 () Bool)

(assert (=> d!1923507 (= ($colon$colon!1959 (exprs!5966 lt!2332796) (ite (or c!1104121 c!1104120) (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (regTwo!32677 (regOne!32676 r!7292)))) (Cons!64421 (ite (or c!1104121 c!1104120) (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (regTwo!32677 (regOne!32676 r!7292))) (exprs!5966 lt!2332796)))))

(assert (=> bm!509664 d!1923507))

(declare-fun d!1923509 () Bool)

(declare-fun res!2543974 () Bool)

(declare-fun e!3741699 () Bool)

(assert (=> d!1923509 (=> res!2543974 e!3741699)))

(assert (=> d!1923509 (= res!2543974 (is-Nil!64421 (exprs!5966 lt!2332796)))))

(assert (=> d!1923509 (= (forall!15203 (exprs!5966 lt!2332796) lambda!334584) e!3741699)))

(declare-fun b!6139571 () Bool)

(declare-fun e!3741700 () Bool)

(assert (=> b!6139571 (= e!3741699 e!3741700)))

(declare-fun res!2543975 () Bool)

(assert (=> b!6139571 (=> (not res!2543975) (not e!3741700))))

(assert (=> b!6139571 (= res!2543975 (dynLambda!25387 lambda!334584 (h!70869 (exprs!5966 lt!2332796))))))

(declare-fun b!6139572 () Bool)

(assert (=> b!6139572 (= e!3741700 (forall!15203 (t!378022 (exprs!5966 lt!2332796)) lambda!334584))))

(assert (= (and d!1923509 (not res!2543974)) b!6139571))

(assert (= (and b!6139571 res!2543975) b!6139572))

(declare-fun b_lambda!233669 () Bool)

(assert (=> (not b_lambda!233669) (not b!6139571)))

(declare-fun m!6981240 () Bool)

(assert (=> b!6139571 m!6981240))

(declare-fun m!6981242 () Bool)

(assert (=> b!6139572 m!6981242))

(assert (=> d!1923345 d!1923509))

(declare-fun d!1923511 () Bool)

(assert (=> d!1923511 true))

(assert (=> d!1923511 true))

(declare-fun res!2543976 () Bool)

(assert (=> d!1923511 (= (choose!45620 lambda!334540) res!2543976)))

(assert (=> d!1923309 d!1923511))

(declare-fun d!1923513 () Bool)

(assert (=> d!1923513 (= ($colon$colon!1959 (exprs!5966 lt!2332796) (ite (or c!1104110 c!1104109) (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (h!70869 (exprs!5966 (h!70870 zl!343))))) (Cons!64421 (ite (or c!1104110 c!1104109) (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (h!70869 (exprs!5966 (h!70870 zl!343)))) (exprs!5966 lt!2332796)))))

(assert (=> bm!509655 d!1923513))

(declare-fun b!6139573 () Bool)

(declare-fun res!2543981 () Bool)

(declare-fun e!3741707 () Bool)

(assert (=> b!6139573 (=> (not res!2543981) (not e!3741707))))

(declare-fun call!509766 () Bool)

(assert (=> b!6139573 (= res!2543981 (not call!509766))))

(declare-fun bm!509761 () Bool)

(assert (=> bm!509761 (= call!509766 (isEmpty!36374 (_2!36364 (get!22225 lt!2332907))))))

(declare-fun b!6139574 () Bool)

(declare-fun res!2543979 () Bool)

(declare-fun e!3741704 () Bool)

(assert (=> b!6139574 (=> res!2543979 e!3741704)))

(assert (=> b!6139574 (= res!2543979 e!3741707)))

(declare-fun res!2543982 () Bool)

(assert (=> b!6139574 (=> (not res!2543982) (not e!3741707))))

(declare-fun lt!2332976 () Bool)

(assert (=> b!6139574 (= res!2543982 lt!2332976)))

(declare-fun b!6139575 () Bool)

(declare-fun e!3741705 () Bool)

(assert (=> b!6139575 (= e!3741705 (nullable!6075 (regTwo!32676 r!7292)))))

(declare-fun b!6139576 () Bool)

(declare-fun e!3741706 () Bool)

(declare-fun e!3741703 () Bool)

(assert (=> b!6139576 (= e!3741706 e!3741703)))

(declare-fun c!1104276 () Bool)

(assert (=> b!6139576 (= c!1104276 (is-EmptyLang!16082 (regTwo!32676 r!7292)))))

(declare-fun b!6139577 () Bool)

(declare-fun e!3741701 () Bool)

(declare-fun e!3741702 () Bool)

(assert (=> b!6139577 (= e!3741701 e!3741702)))

(declare-fun res!2543983 () Bool)

(assert (=> b!6139577 (=> res!2543983 e!3741702)))

(assert (=> b!6139577 (= res!2543983 call!509766)))

(declare-fun b!6139578 () Bool)

(assert (=> b!6139578 (= e!3741704 e!3741701)))

(declare-fun res!2543980 () Bool)

(assert (=> b!6139578 (=> (not res!2543980) (not e!3741701))))

(assert (=> b!6139578 (= res!2543980 (not lt!2332976))))

(declare-fun b!6139579 () Bool)

(assert (=> b!6139579 (= e!3741705 (matchR!8265 (derivativeStep!4802 (regTwo!32676 r!7292) (head!12685 (_2!36364 (get!22225 lt!2332907)))) (tail!11770 (_2!36364 (get!22225 lt!2332907)))))))

(declare-fun b!6139580 () Bool)

(assert (=> b!6139580 (= e!3741706 (= lt!2332976 call!509766))))

(declare-fun d!1923515 () Bool)

(assert (=> d!1923515 e!3741706))

(declare-fun c!1104277 () Bool)

(assert (=> d!1923515 (= c!1104277 (is-EmptyExpr!16082 (regTwo!32676 r!7292)))))

(assert (=> d!1923515 (= lt!2332976 e!3741705)))

(declare-fun c!1104278 () Bool)

(assert (=> d!1923515 (= c!1104278 (isEmpty!36374 (_2!36364 (get!22225 lt!2332907))))))

(assert (=> d!1923515 (validRegex!7818 (regTwo!32676 r!7292))))

(assert (=> d!1923515 (= (matchR!8265 (regTwo!32676 r!7292) (_2!36364 (get!22225 lt!2332907))) lt!2332976)))

(declare-fun b!6139581 () Bool)

(declare-fun res!2543984 () Bool)

(assert (=> b!6139581 (=> res!2543984 e!3741704)))

(assert (=> b!6139581 (= res!2543984 (not (is-ElementMatch!16082 (regTwo!32676 r!7292))))))

(assert (=> b!6139581 (= e!3741703 e!3741704)))

(declare-fun b!6139582 () Bool)

(declare-fun res!2543977 () Bool)

(assert (=> b!6139582 (=> res!2543977 e!3741702)))

(assert (=> b!6139582 (= res!2543977 (not (isEmpty!36374 (tail!11770 (_2!36364 (get!22225 lt!2332907))))))))

(declare-fun b!6139583 () Bool)

(assert (=> b!6139583 (= e!3741703 (not lt!2332976))))

(declare-fun b!6139584 () Bool)

(assert (=> b!6139584 (= e!3741707 (= (head!12685 (_2!36364 (get!22225 lt!2332907))) (c!1104020 (regTwo!32676 r!7292))))))

(declare-fun b!6139585 () Bool)

(assert (=> b!6139585 (= e!3741702 (not (= (head!12685 (_2!36364 (get!22225 lt!2332907))) (c!1104020 (regTwo!32676 r!7292)))))))

(declare-fun b!6139586 () Bool)

(declare-fun res!2543978 () Bool)

(assert (=> b!6139586 (=> (not res!2543978) (not e!3741707))))

(assert (=> b!6139586 (= res!2543978 (isEmpty!36374 (tail!11770 (_2!36364 (get!22225 lt!2332907)))))))

(assert (= (and d!1923515 c!1104278) b!6139575))

(assert (= (and d!1923515 (not c!1104278)) b!6139579))

(assert (= (and d!1923515 c!1104277) b!6139580))

(assert (= (and d!1923515 (not c!1104277)) b!6139576))

(assert (= (and b!6139576 c!1104276) b!6139583))

(assert (= (and b!6139576 (not c!1104276)) b!6139581))

(assert (= (and b!6139581 (not res!2543984)) b!6139574))

(assert (= (and b!6139574 res!2543982) b!6139573))

(assert (= (and b!6139573 res!2543981) b!6139586))

(assert (= (and b!6139586 res!2543978) b!6139584))

(assert (= (and b!6139574 (not res!2543979)) b!6139578))

(assert (= (and b!6139578 res!2543980) b!6139577))

(assert (= (and b!6139577 (not res!2543983)) b!6139582))

(assert (= (and b!6139582 (not res!2543977)) b!6139585))

(assert (= (or b!6139580 b!6139573 b!6139577) bm!509761))

(declare-fun m!6981244 () Bool)

(assert (=> b!6139579 m!6981244))

(assert (=> b!6139579 m!6981244))

(declare-fun m!6981246 () Bool)

(assert (=> b!6139579 m!6981246))

(declare-fun m!6981248 () Bool)

(assert (=> b!6139579 m!6981248))

(assert (=> b!6139579 m!6981246))

(assert (=> b!6139579 m!6981248))

(declare-fun m!6981250 () Bool)

(assert (=> b!6139579 m!6981250))

(declare-fun m!6981252 () Bool)

(assert (=> d!1923515 m!6981252))

(assert (=> d!1923515 m!6981102))

(assert (=> b!6139586 m!6981248))

(assert (=> b!6139586 m!6981248))

(declare-fun m!6981254 () Bool)

(assert (=> b!6139586 m!6981254))

(assert (=> b!6139575 m!6981104))

(assert (=> b!6139582 m!6981248))

(assert (=> b!6139582 m!6981248))

(assert (=> b!6139582 m!6981254))

(assert (=> bm!509761 m!6981252))

(assert (=> b!6139584 m!6981244))

(assert (=> b!6139585 m!6981244))

(assert (=> b!6138855 d!1923515))

(declare-fun d!1923517 () Bool)

(assert (=> d!1923517 (= (get!22225 lt!2332907) (v!52111 lt!2332907))))

(assert (=> b!6138855 d!1923517))

(declare-fun d!1923519 () Bool)

(assert (=> d!1923519 (= (isEmpty!36371 (t!378022 (unfocusZipperList!1503 zl!343))) (is-Nil!64421 (t!378022 (unfocusZipperList!1503 zl!343))))))

(assert (=> b!6138808 d!1923519))

(declare-fun d!1923521 () Bool)

(declare-fun c!1104279 () Bool)

(assert (=> d!1923521 (= c!1104279 (isEmpty!36374 (tail!11770 (t!378024 s!2326))))))

(declare-fun e!3741708 () Bool)

(assert (=> d!1923521 (= (matchZipper!2094 (derivationStepZipper!2055 lt!2332811 (head!12685 (t!378024 s!2326))) (tail!11770 (t!378024 s!2326))) e!3741708)))

(declare-fun b!6139587 () Bool)

(assert (=> b!6139587 (= e!3741708 (nullableZipper!1863 (derivationStepZipper!2055 lt!2332811 (head!12685 (t!378024 s!2326)))))))

(declare-fun b!6139588 () Bool)

(assert (=> b!6139588 (= e!3741708 (matchZipper!2094 (derivationStepZipper!2055 (derivationStepZipper!2055 lt!2332811 (head!12685 (t!378024 s!2326))) (head!12685 (tail!11770 (t!378024 s!2326)))) (tail!11770 (tail!11770 (t!378024 s!2326)))))))

(assert (= (and d!1923521 c!1104279) b!6139587))

(assert (= (and d!1923521 (not c!1104279)) b!6139588))

(assert (=> d!1923521 m!6980604))

(declare-fun m!6981256 () Bool)

(assert (=> d!1923521 m!6981256))

(assert (=> b!6139587 m!6980634))

(declare-fun m!6981258 () Bool)

(assert (=> b!6139587 m!6981258))

(assert (=> b!6139588 m!6980604))

(declare-fun m!6981260 () Bool)

(assert (=> b!6139588 m!6981260))

(assert (=> b!6139588 m!6980634))

(assert (=> b!6139588 m!6981260))

(declare-fun m!6981262 () Bool)

(assert (=> b!6139588 m!6981262))

(assert (=> b!6139588 m!6980604))

(declare-fun m!6981264 () Bool)

(assert (=> b!6139588 m!6981264))

(assert (=> b!6139588 m!6981262))

(assert (=> b!6139588 m!6981264))

(declare-fun m!6981266 () Bool)

(assert (=> b!6139588 m!6981266))

(assert (=> b!6138695 d!1923521))

(declare-fun bs!1522415 () Bool)

(declare-fun d!1923523 () Bool)

(assert (= bs!1522415 (and d!1923523 b!6138541)))

(declare-fun lambda!334622 () Int)

(assert (=> bs!1522415 (= (= (head!12685 (t!378024 s!2326)) (h!70871 s!2326)) (= lambda!334622 lambda!334542))))

(assert (=> d!1923523 true))

(assert (=> d!1923523 (= (derivationStepZipper!2055 lt!2332811 (head!12685 (t!378024 s!2326))) (flatMap!1587 lt!2332811 lambda!334622))))

(declare-fun bs!1522416 () Bool)

(assert (= bs!1522416 d!1923523))

(declare-fun m!6981268 () Bool)

(assert (=> bs!1522416 m!6981268))

(assert (=> b!6138695 d!1923523))

(declare-fun d!1923525 () Bool)

(assert (=> d!1923525 (= (head!12685 (t!378024 s!2326)) (h!70871 (t!378024 s!2326)))))

(assert (=> b!6138695 d!1923525))

(declare-fun d!1923527 () Bool)

(assert (=> d!1923527 (= (tail!11770 (t!378024 s!2326)) (t!378024 (t!378024 s!2326)))))

(assert (=> b!6138695 d!1923527))

(declare-fun d!1923529 () Bool)

(declare-fun res!2543985 () Bool)

(declare-fun e!3741709 () Bool)

(assert (=> d!1923529 (=> res!2543985 e!3741709)))

(assert (=> d!1923529 (= res!2543985 (is-Nil!64421 (exprs!5966 (h!70870 zl!343))))))

(assert (=> d!1923529 (= (forall!15203 (exprs!5966 (h!70870 zl!343)) lambda!334558) e!3741709)))

(declare-fun b!6139591 () Bool)

(declare-fun e!3741710 () Bool)

(assert (=> b!6139591 (= e!3741709 e!3741710)))

(declare-fun res!2543986 () Bool)

(assert (=> b!6139591 (=> (not res!2543986) (not e!3741710))))

(assert (=> b!6139591 (= res!2543986 (dynLambda!25387 lambda!334558 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun b!6139592 () Bool)

(assert (=> b!6139592 (= e!3741710 (forall!15203 (t!378022 (exprs!5966 (h!70870 zl!343))) lambda!334558))))

(assert (= (and d!1923529 (not res!2543985)) b!6139591))

(assert (= (and b!6139591 res!2543986) b!6139592))

(declare-fun b_lambda!233671 () Bool)

(assert (=> (not b_lambda!233671) (not b!6139591)))

(declare-fun m!6981270 () Bool)

(assert (=> b!6139591 m!6981270))

(declare-fun m!6981272 () Bool)

(assert (=> b!6139592 m!6981272))

(assert (=> d!1923279 d!1923529))

(declare-fun d!1923531 () Bool)

(declare-fun c!1104282 () Bool)

(assert (=> d!1923531 (= c!1104282 (isEmpty!36374 (tail!11770 (t!378024 s!2326))))))

(declare-fun e!3741711 () Bool)

(assert (=> d!1923531 (= (matchZipper!2094 (derivationStepZipper!2055 (set.union lt!2332806 lt!2332797) (head!12685 (t!378024 s!2326))) (tail!11770 (t!378024 s!2326))) e!3741711)))

(declare-fun b!6139593 () Bool)

(assert (=> b!6139593 (= e!3741711 (nullableZipper!1863 (derivationStepZipper!2055 (set.union lt!2332806 lt!2332797) (head!12685 (t!378024 s!2326)))))))

(declare-fun b!6139594 () Bool)

(assert (=> b!6139594 (= e!3741711 (matchZipper!2094 (derivationStepZipper!2055 (derivationStepZipper!2055 (set.union lt!2332806 lt!2332797) (head!12685 (t!378024 s!2326))) (head!12685 (tail!11770 (t!378024 s!2326)))) (tail!11770 (tail!11770 (t!378024 s!2326)))))))

(assert (= (and d!1923531 c!1104282) b!6139593))

(assert (= (and d!1923531 (not c!1104282)) b!6139594))

(assert (=> d!1923531 m!6980604))

(assert (=> d!1923531 m!6981256))

(assert (=> b!6139593 m!6980610))

(declare-fun m!6981274 () Bool)

(assert (=> b!6139593 m!6981274))

(assert (=> b!6139594 m!6980604))

(assert (=> b!6139594 m!6981260))

(assert (=> b!6139594 m!6980610))

(assert (=> b!6139594 m!6981260))

(declare-fun m!6981276 () Bool)

(assert (=> b!6139594 m!6981276))

(assert (=> b!6139594 m!6980604))

(assert (=> b!6139594 m!6981264))

(assert (=> b!6139594 m!6981276))

(assert (=> b!6139594 m!6981264))

(declare-fun m!6981278 () Bool)

(assert (=> b!6139594 m!6981278))

(assert (=> b!6138688 d!1923531))

(declare-fun bs!1522417 () Bool)

(declare-fun d!1923533 () Bool)

(assert (= bs!1522417 (and d!1923533 b!6138541)))

(declare-fun lambda!334623 () Int)

(assert (=> bs!1522417 (= (= (head!12685 (t!378024 s!2326)) (h!70871 s!2326)) (= lambda!334623 lambda!334542))))

(declare-fun bs!1522418 () Bool)

(assert (= bs!1522418 (and d!1923533 d!1923523)))

(assert (=> bs!1522418 (= lambda!334623 lambda!334622)))

(assert (=> d!1923533 true))

(assert (=> d!1923533 (= (derivationStepZipper!2055 (set.union lt!2332806 lt!2332797) (head!12685 (t!378024 s!2326))) (flatMap!1587 (set.union lt!2332806 lt!2332797) lambda!334623))))

(declare-fun bs!1522419 () Bool)

(assert (= bs!1522419 d!1923533))

(declare-fun m!6981280 () Bool)

(assert (=> bs!1522419 m!6981280))

(assert (=> b!6138688 d!1923533))

(assert (=> b!6138688 d!1923525))

(assert (=> b!6138688 d!1923527))

(declare-fun d!1923535 () Bool)

(declare-fun c!1104283 () Bool)

(assert (=> d!1923535 (= c!1104283 (isEmpty!36374 (tail!11770 (t!378024 s!2326))))))

(declare-fun e!3741712 () Bool)

(assert (=> d!1923535 (= (matchZipper!2094 (derivationStepZipper!2055 lt!2332797 (head!12685 (t!378024 s!2326))) (tail!11770 (t!378024 s!2326))) e!3741712)))

(declare-fun b!6139595 () Bool)

(assert (=> b!6139595 (= e!3741712 (nullableZipper!1863 (derivationStepZipper!2055 lt!2332797 (head!12685 (t!378024 s!2326)))))))

(declare-fun b!6139596 () Bool)

(assert (=> b!6139596 (= e!3741712 (matchZipper!2094 (derivationStepZipper!2055 (derivationStepZipper!2055 lt!2332797 (head!12685 (t!378024 s!2326))) (head!12685 (tail!11770 (t!378024 s!2326)))) (tail!11770 (tail!11770 (t!378024 s!2326)))))))

(assert (= (and d!1923535 c!1104283) b!6139595))

(assert (= (and d!1923535 (not c!1104283)) b!6139596))

(assert (=> d!1923535 m!6980604))

(assert (=> d!1923535 m!6981256))

(assert (=> b!6139595 m!6980692))

(declare-fun m!6981282 () Bool)

(assert (=> b!6139595 m!6981282))

(assert (=> b!6139596 m!6980604))

(assert (=> b!6139596 m!6981260))

(assert (=> b!6139596 m!6980692))

(assert (=> b!6139596 m!6981260))

(declare-fun m!6981284 () Bool)

(assert (=> b!6139596 m!6981284))

(assert (=> b!6139596 m!6980604))

(assert (=> b!6139596 m!6981264))

(assert (=> b!6139596 m!6981284))

(assert (=> b!6139596 m!6981264))

(declare-fun m!6981286 () Bool)

(assert (=> b!6139596 m!6981286))

(assert (=> b!6138821 d!1923535))

(declare-fun bs!1522420 () Bool)

(declare-fun d!1923537 () Bool)

(assert (= bs!1522420 (and d!1923537 b!6138541)))

(declare-fun lambda!334624 () Int)

(assert (=> bs!1522420 (= (= (head!12685 (t!378024 s!2326)) (h!70871 s!2326)) (= lambda!334624 lambda!334542))))

(declare-fun bs!1522421 () Bool)

(assert (= bs!1522421 (and d!1923537 d!1923523)))

(assert (=> bs!1522421 (= lambda!334624 lambda!334622)))

(declare-fun bs!1522422 () Bool)

(assert (= bs!1522422 (and d!1923537 d!1923533)))

(assert (=> bs!1522422 (= lambda!334624 lambda!334623)))

(assert (=> d!1923537 true))

(assert (=> d!1923537 (= (derivationStepZipper!2055 lt!2332797 (head!12685 (t!378024 s!2326))) (flatMap!1587 lt!2332797 lambda!334624))))

(declare-fun bs!1522423 () Bool)

(assert (= bs!1522423 d!1923537))

(declare-fun m!6981288 () Bool)

(assert (=> bs!1522423 m!6981288))

(assert (=> b!6138821 d!1923537))

(assert (=> b!6138821 d!1923525))

(assert (=> b!6138821 d!1923527))

(assert (=> d!1923303 d!1923299))

(declare-fun d!1923539 () Bool)

(assert (=> d!1923539 (= (flatMap!1587 lt!2332808 lambda!334542) (dynLambda!25385 lambda!334542 lt!2332810))))

(assert (=> d!1923539 true))

(declare-fun _$13!3022 () Unit!157483)

(assert (=> d!1923539 (= (choose!45619 lt!2332808 lt!2332810 lambda!334542) _$13!3022)))

(declare-fun b_lambda!233673 () Bool)

(assert (=> (not b_lambda!233673) (not d!1923539)))

(declare-fun bs!1522424 () Bool)

(assert (= bs!1522424 d!1923539))

(assert (=> bs!1522424 m!6980426))

(assert (=> bs!1522424 m!6980706))

(assert (=> d!1923303 d!1923539))

(declare-fun bs!1522425 () Bool)

(declare-fun d!1923541 () Bool)

(assert (= bs!1522425 (and d!1923541 d!1923291)))

(declare-fun lambda!334625 () Int)

(assert (=> bs!1522425 (= lambda!334625 lambda!334570)))

(declare-fun bs!1522426 () Bool)

(assert (= bs!1522426 (and d!1923541 d!1923345)))

(assert (=> bs!1522426 (= lambda!334625 lambda!334584)))

(declare-fun bs!1522427 () Bool)

(assert (= bs!1522427 (and d!1923541 d!1923319)))

(assert (=> bs!1522427 (= lambda!334625 lambda!334583)))

(declare-fun bs!1522428 () Bool)

(assert (= bs!1522428 (and d!1923541 d!1923491)))

(assert (=> bs!1522428 (= lambda!334625 lambda!334619)))

(declare-fun bs!1522429 () Bool)

(assert (= bs!1522429 (and d!1923541 d!1923279)))

(assert (=> bs!1522429 (= lambda!334625 lambda!334558)))

(declare-fun bs!1522430 () Bool)

(assert (= bs!1522430 (and d!1923541 d!1923289)))

(assert (=> bs!1522430 (= lambda!334625 lambda!334567)))

(declare-fun bs!1522431 () Bool)

(assert (= bs!1522431 (and d!1923541 d!1923443)))

(assert (=> bs!1522431 (= lambda!334625 lambda!334617)))

(declare-fun bs!1522432 () Bool)

(assert (= bs!1522432 (and d!1923541 d!1923317)))

(assert (=> bs!1522432 (= lambda!334625 lambda!334580)))

(declare-fun bs!1522433 () Bool)

(assert (= bs!1522433 (and d!1923541 d!1923475)))

(assert (=> bs!1522433 (= lambda!334625 lambda!334618)))

(declare-fun b!6139597 () Bool)

(declare-fun e!3741717 () Bool)

(declare-fun e!3741716 () Bool)

(assert (=> b!6139597 (= e!3741717 e!3741716)))

(declare-fun c!1104286 () Bool)

(assert (=> b!6139597 (= c!1104286 (isEmpty!36371 (t!378022 (unfocusZipperList!1503 zl!343))))))

(declare-fun b!6139598 () Bool)

(declare-fun e!3741714 () Regex!16082)

(assert (=> b!6139598 (= e!3741714 (h!70869 (t!378022 (unfocusZipperList!1503 zl!343))))))

(declare-fun b!6139599 () Bool)

(declare-fun e!3741715 () Bool)

(declare-fun lt!2332977 () Regex!16082)

(assert (=> b!6139599 (= e!3741715 (= lt!2332977 (head!12686 (t!378022 (unfocusZipperList!1503 zl!343)))))))

(declare-fun b!6139600 () Bool)

(declare-fun e!3741718 () Regex!16082)

(assert (=> b!6139600 (= e!3741718 (Union!16082 (h!70869 (t!378022 (unfocusZipperList!1503 zl!343))) (generalisedUnion!1926 (t!378022 (t!378022 (unfocusZipperList!1503 zl!343))))))))

(assert (=> d!1923541 e!3741717))

(declare-fun res!2543987 () Bool)

(assert (=> d!1923541 (=> (not res!2543987) (not e!3741717))))

(assert (=> d!1923541 (= res!2543987 (validRegex!7818 lt!2332977))))

(assert (=> d!1923541 (= lt!2332977 e!3741714)))

(declare-fun c!1104287 () Bool)

(declare-fun e!3741713 () Bool)

(assert (=> d!1923541 (= c!1104287 e!3741713)))

(declare-fun res!2543988 () Bool)

(assert (=> d!1923541 (=> (not res!2543988) (not e!3741713))))

(assert (=> d!1923541 (= res!2543988 (is-Cons!64421 (t!378022 (unfocusZipperList!1503 zl!343))))))

(assert (=> d!1923541 (forall!15203 (t!378022 (unfocusZipperList!1503 zl!343)) lambda!334625)))

(assert (=> d!1923541 (= (generalisedUnion!1926 (t!378022 (unfocusZipperList!1503 zl!343))) lt!2332977)))

(declare-fun b!6139601 () Bool)

(assert (=> b!6139601 (= e!3741714 e!3741718)))

(declare-fun c!1104285 () Bool)

(assert (=> b!6139601 (= c!1104285 (is-Cons!64421 (t!378022 (unfocusZipperList!1503 zl!343))))))

(declare-fun b!6139602 () Bool)

(assert (=> b!6139602 (= e!3741715 (isUnion!939 lt!2332977))))

(declare-fun b!6139603 () Bool)

(assert (=> b!6139603 (= e!3741718 EmptyLang!16082)))

(declare-fun b!6139604 () Bool)

(assert (=> b!6139604 (= e!3741713 (isEmpty!36371 (t!378022 (t!378022 (unfocusZipperList!1503 zl!343)))))))

(declare-fun b!6139605 () Bool)

(assert (=> b!6139605 (= e!3741716 (isEmptyLang!1509 lt!2332977))))

(declare-fun b!6139606 () Bool)

(assert (=> b!6139606 (= e!3741716 e!3741715)))

(declare-fun c!1104284 () Bool)

(assert (=> b!6139606 (= c!1104284 (isEmpty!36371 (tail!11771 (t!378022 (unfocusZipperList!1503 zl!343)))))))

(assert (= (and d!1923541 res!2543988) b!6139604))

(assert (= (and d!1923541 c!1104287) b!6139598))

(assert (= (and d!1923541 (not c!1104287)) b!6139601))

(assert (= (and b!6139601 c!1104285) b!6139600))

(assert (= (and b!6139601 (not c!1104285)) b!6139603))

(assert (= (and d!1923541 res!2543987) b!6139597))

(assert (= (and b!6139597 c!1104286) b!6139605))

(assert (= (and b!6139597 (not c!1104286)) b!6139606))

(assert (= (and b!6139606 c!1104284) b!6139599))

(assert (= (and b!6139606 (not c!1104284)) b!6139602))

(declare-fun m!6981290 () Bool)

(assert (=> b!6139605 m!6981290))

(declare-fun m!6981292 () Bool)

(assert (=> b!6139599 m!6981292))

(declare-fun m!6981294 () Bool)

(assert (=> b!6139606 m!6981294))

(assert (=> b!6139606 m!6981294))

(declare-fun m!6981296 () Bool)

(assert (=> b!6139606 m!6981296))

(declare-fun m!6981298 () Bool)

(assert (=> d!1923541 m!6981298))

(declare-fun m!6981300 () Bool)

(assert (=> d!1923541 m!6981300))

(declare-fun m!6981302 () Bool)

(assert (=> b!6139602 m!6981302))

(assert (=> b!6139597 m!6980678))

(declare-fun m!6981304 () Bool)

(assert (=> b!6139600 m!6981304))

(declare-fun m!6981306 () Bool)

(assert (=> b!6139604 m!6981306))

(assert (=> b!6138804 d!1923541))

(declare-fun d!1923543 () Bool)

(assert (=> d!1923543 (= (head!12686 (exprs!5966 (h!70870 zl!343))) (h!70869 (exprs!5966 (h!70870 zl!343))))))

(assert (=> b!6138903 d!1923543))

(declare-fun d!1923545 () Bool)

(assert (=> d!1923545 true))

(declare-fun setRes!41528 () Bool)

(assert (=> d!1923545 setRes!41528))

(declare-fun condSetEmpty!41528 () Bool)

(declare-fun res!2543989 () (Set Context!10932))

(assert (=> d!1923545 (= condSetEmpty!41528 (= res!2543989 (as set.empty (Set Context!10932))))))

(assert (=> d!1923545 (= (choose!45618 lt!2332808 lambda!334542) res!2543989)))

(declare-fun setIsEmpty!41528 () Bool)

(assert (=> setIsEmpty!41528 setRes!41528))

(declare-fun setElem!41528 () Context!10932)

(declare-fun setNonEmpty!41528 () Bool)

(declare-fun tp!1715362 () Bool)

(declare-fun e!3741719 () Bool)

(assert (=> setNonEmpty!41528 (= setRes!41528 (and tp!1715362 (inv!83453 setElem!41528) e!3741719))))

(declare-fun setRest!41528 () (Set Context!10932))

(assert (=> setNonEmpty!41528 (= res!2543989 (set.union (set.insert setElem!41528 (as set.empty (Set Context!10932))) setRest!41528))))

(declare-fun b!6139607 () Bool)

(declare-fun tp!1715361 () Bool)

(assert (=> b!6139607 (= e!3741719 tp!1715361)))

(assert (= (and d!1923545 condSetEmpty!41528) setIsEmpty!41528))

(assert (= (and d!1923545 (not condSetEmpty!41528)) setNonEmpty!41528))

(assert (= setNonEmpty!41528 b!6139607))

(declare-fun m!6981308 () Bool)

(assert (=> setNonEmpty!41528 m!6981308))

(assert (=> d!1923299 d!1923545))

(declare-fun d!1923547 () Bool)

(assert (=> d!1923547 (= (nullable!6075 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292)))) (nullableFct!2039 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292)))))))

(declare-fun bs!1522434 () Bool)

(assert (= bs!1522434 d!1923547))

(declare-fun m!6981310 () Bool)

(assert (=> bs!1522434 m!6981310))

(assert (=> b!6138954 d!1923547))

(declare-fun d!1923549 () Bool)

(assert (=> d!1923549 (= (isEmpty!36371 (tail!11771 (exprs!5966 (h!70870 zl!343)))) (is-Nil!64421 (tail!11771 (exprs!5966 (h!70870 zl!343)))))))

(assert (=> b!6138898 d!1923549))

(declare-fun d!1923551 () Bool)

(assert (=> d!1923551 (= (tail!11771 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))))

(assert (=> b!6138898 d!1923551))

(declare-fun b!6139608 () Bool)

(declare-fun e!3741724 () Bool)

(assert (=> b!6139608 (= e!3741724 (nullable!6075 (regOne!32676 (h!70869 (exprs!5966 lt!2332810)))))))

(declare-fun bm!509762 () Bool)

(declare-fun call!509770 () (Set Context!10932))

(declare-fun call!509768 () (Set Context!10932))

(assert (=> bm!509762 (= call!509770 call!509768)))

(declare-fun b!6139609 () Bool)

(declare-fun e!3741721 () (Set Context!10932))

(declare-fun call!509771 () (Set Context!10932))

(assert (=> b!6139609 (= e!3741721 (set.union call!509768 call!509771))))

(declare-fun b!6139610 () Bool)

(declare-fun e!3741725 () (Set Context!10932))

(declare-fun call!509767 () (Set Context!10932))

(assert (=> b!6139610 (= e!3741725 call!509767)))

(declare-fun bm!509763 () Bool)

(declare-fun call!509772 () List!64545)

(declare-fun call!509769 () List!64545)

(assert (=> bm!509763 (= call!509772 call!509769)))

(declare-fun b!6139611 () Bool)

(declare-fun e!3741720 () (Set Context!10932))

(assert (=> b!6139611 (= e!3741720 (as set.empty (Set Context!10932)))))

(declare-fun b!6139612 () Bool)

(declare-fun c!1104290 () Bool)

(assert (=> b!6139612 (= c!1104290 e!3741724)))

(declare-fun res!2543990 () Bool)

(assert (=> b!6139612 (=> (not res!2543990) (not e!3741724))))

(assert (=> b!6139612 (= res!2543990 (is-Concat!24927 (h!70869 (exprs!5966 lt!2332810))))))

(declare-fun e!3741723 () (Set Context!10932))

(assert (=> b!6139612 (= e!3741721 e!3741723)))

(declare-fun bm!509764 () Bool)

(declare-fun c!1104289 () Bool)

(declare-fun c!1104288 () Bool)

(assert (=> bm!509764 (= call!509768 (derivationStepZipperDown!1330 (ite c!1104288 (regOne!32677 (h!70869 (exprs!5966 lt!2332810))) (ite c!1104290 (regTwo!32676 (h!70869 (exprs!5966 lt!2332810))) (ite c!1104289 (regOne!32676 (h!70869 (exprs!5966 lt!2332810))) (reg!16411 (h!70869 (exprs!5966 lt!2332810)))))) (ite (or c!1104288 c!1104290) (Context!10933 (t!378022 (exprs!5966 lt!2332810))) (Context!10933 call!509772)) (h!70871 s!2326)))))

(declare-fun b!6139613 () Bool)

(assert (=> b!6139613 (= e!3741723 e!3741725)))

(assert (=> b!6139613 (= c!1104289 (is-Concat!24927 (h!70869 (exprs!5966 lt!2332810))))))

(declare-fun bm!509765 () Bool)

(assert (=> bm!509765 (= call!509769 ($colon$colon!1959 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332810)))) (ite (or c!1104290 c!1104289) (regTwo!32676 (h!70869 (exprs!5966 lt!2332810))) (h!70869 (exprs!5966 lt!2332810)))))))

(declare-fun bm!509766 () Bool)

(assert (=> bm!509766 (= call!509767 call!509770)))

(declare-fun b!6139614 () Bool)

(assert (=> b!6139614 (= e!3741720 call!509767)))

(declare-fun b!6139615 () Bool)

(declare-fun e!3741722 () (Set Context!10932))

(assert (=> b!6139615 (= e!3741722 e!3741721)))

(assert (=> b!6139615 (= c!1104288 (is-Union!16082 (h!70869 (exprs!5966 lt!2332810))))))

(declare-fun b!6139616 () Bool)

(declare-fun c!1104292 () Bool)

(assert (=> b!6139616 (= c!1104292 (is-Star!16082 (h!70869 (exprs!5966 lt!2332810))))))

(assert (=> b!6139616 (= e!3741725 e!3741720)))

(declare-fun d!1923553 () Bool)

(declare-fun c!1104291 () Bool)

(assert (=> d!1923553 (= c!1104291 (and (is-ElementMatch!16082 (h!70869 (exprs!5966 lt!2332810))) (= (c!1104020 (h!70869 (exprs!5966 lt!2332810))) (h!70871 s!2326))))))

(assert (=> d!1923553 (= (derivationStepZipperDown!1330 (h!70869 (exprs!5966 lt!2332810)) (Context!10933 (t!378022 (exprs!5966 lt!2332810))) (h!70871 s!2326)) e!3741722)))

(declare-fun b!6139617 () Bool)

(assert (=> b!6139617 (= e!3741722 (set.insert (Context!10933 (t!378022 (exprs!5966 lt!2332810))) (as set.empty (Set Context!10932))))))

(declare-fun bm!509767 () Bool)

(assert (=> bm!509767 (= call!509771 (derivationStepZipperDown!1330 (ite c!1104288 (regTwo!32677 (h!70869 (exprs!5966 lt!2332810))) (regOne!32676 (h!70869 (exprs!5966 lt!2332810)))) (ite c!1104288 (Context!10933 (t!378022 (exprs!5966 lt!2332810))) (Context!10933 call!509769)) (h!70871 s!2326)))))

(declare-fun b!6139618 () Bool)

(assert (=> b!6139618 (= e!3741723 (set.union call!509771 call!509770))))

(assert (= (and d!1923553 c!1104291) b!6139617))

(assert (= (and d!1923553 (not c!1104291)) b!6139615))

(assert (= (and b!6139615 c!1104288) b!6139609))

(assert (= (and b!6139615 (not c!1104288)) b!6139612))

(assert (= (and b!6139612 res!2543990) b!6139608))

(assert (= (and b!6139612 c!1104290) b!6139618))

(assert (= (and b!6139612 (not c!1104290)) b!6139613))

(assert (= (and b!6139613 c!1104289) b!6139610))

(assert (= (and b!6139613 (not c!1104289)) b!6139616))

(assert (= (and b!6139616 c!1104292) b!6139614))

(assert (= (and b!6139616 (not c!1104292)) b!6139611))

(assert (= (or b!6139610 b!6139614) bm!509763))

(assert (= (or b!6139610 b!6139614) bm!509766))

(assert (= (or b!6139618 bm!509763) bm!509765))

(assert (= (or b!6139618 bm!509766) bm!509762))

(assert (= (or b!6139609 b!6139618) bm!509767))

(assert (= (or b!6139609 bm!509762) bm!509764))

(declare-fun m!6981312 () Bool)

(assert (=> bm!509767 m!6981312))

(declare-fun m!6981314 () Bool)

(assert (=> bm!509764 m!6981314))

(declare-fun m!6981316 () Bool)

(assert (=> b!6139608 m!6981316))

(declare-fun m!6981318 () Bool)

(assert (=> bm!509765 m!6981318))

(declare-fun m!6981320 () Bool)

(assert (=> b!6139617 m!6981320))

(assert (=> bm!509639 d!1923553))

(declare-fun d!1923555 () Bool)

(declare-fun c!1104293 () Bool)

(assert (=> d!1923555 (= c!1104293 (isEmpty!36374 (tail!11770 (t!378024 s!2326))))))

(declare-fun e!3741726 () Bool)

(assert (=> d!1923555 (= (matchZipper!2094 (derivationStepZipper!2055 lt!2332794 (head!12685 (t!378024 s!2326))) (tail!11770 (t!378024 s!2326))) e!3741726)))

(declare-fun b!6139619 () Bool)

(assert (=> b!6139619 (= e!3741726 (nullableZipper!1863 (derivationStepZipper!2055 lt!2332794 (head!12685 (t!378024 s!2326)))))))

(declare-fun b!6139620 () Bool)

(assert (=> b!6139620 (= e!3741726 (matchZipper!2094 (derivationStepZipper!2055 (derivationStepZipper!2055 lt!2332794 (head!12685 (t!378024 s!2326))) (head!12685 (tail!11770 (t!378024 s!2326)))) (tail!11770 (tail!11770 (t!378024 s!2326)))))))

(assert (= (and d!1923555 c!1104293) b!6139619))

(assert (= (and d!1923555 (not c!1104293)) b!6139620))

(assert (=> d!1923555 m!6980604))

(assert (=> d!1923555 m!6981256))

(assert (=> b!6139619 m!6980616))

(declare-fun m!6981322 () Bool)

(assert (=> b!6139619 m!6981322))

(assert (=> b!6139620 m!6980604))

(assert (=> b!6139620 m!6981260))

(assert (=> b!6139620 m!6980616))

(assert (=> b!6139620 m!6981260))

(declare-fun m!6981324 () Bool)

(assert (=> b!6139620 m!6981324))

(assert (=> b!6139620 m!6980604))

(assert (=> b!6139620 m!6981264))

(assert (=> b!6139620 m!6981324))

(assert (=> b!6139620 m!6981264))

(declare-fun m!6981326 () Bool)

(assert (=> b!6139620 m!6981326))

(assert (=> b!6138690 d!1923555))

(declare-fun bs!1522435 () Bool)

(declare-fun d!1923557 () Bool)

(assert (= bs!1522435 (and d!1923557 b!6138541)))

(declare-fun lambda!334626 () Int)

(assert (=> bs!1522435 (= (= (head!12685 (t!378024 s!2326)) (h!70871 s!2326)) (= lambda!334626 lambda!334542))))

(declare-fun bs!1522436 () Bool)

(assert (= bs!1522436 (and d!1923557 d!1923523)))

(assert (=> bs!1522436 (= lambda!334626 lambda!334622)))

(declare-fun bs!1522437 () Bool)

(assert (= bs!1522437 (and d!1923557 d!1923533)))

(assert (=> bs!1522437 (= lambda!334626 lambda!334623)))

(declare-fun bs!1522438 () Bool)

(assert (= bs!1522438 (and d!1923557 d!1923537)))

(assert (=> bs!1522438 (= lambda!334626 lambda!334624)))

(assert (=> d!1923557 true))

(assert (=> d!1923557 (= (derivationStepZipper!2055 lt!2332794 (head!12685 (t!378024 s!2326))) (flatMap!1587 lt!2332794 lambda!334626))))

(declare-fun bs!1522439 () Bool)

(assert (= bs!1522439 d!1923557))

(declare-fun m!6981328 () Bool)

(assert (=> bs!1522439 m!6981328))

(assert (=> b!6138690 d!1923557))

(assert (=> b!6138690 d!1923525))

(assert (=> b!6138690 d!1923527))

(declare-fun d!1923559 () Bool)

(assert (=> d!1923559 (= (nullable!6075 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343))))) (nullableFct!2039 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343))))))))

(declare-fun bs!1522440 () Bool)

(assert (= bs!1522440 d!1923559))

(declare-fun m!6981330 () Bool)

(assert (=> bs!1522440 m!6981330))

(assert (=> b!6138928 d!1923559))

(assert (=> d!1923269 d!1923477))

(assert (=> d!1923267 d!1923271))

(assert (=> d!1923267 d!1923269))

(declare-fun d!1923561 () Bool)

(declare-fun e!3741729 () Bool)

(assert (=> d!1923561 (= (matchZipper!2094 (set.union lt!2332806 lt!2332797) (t!378024 s!2326)) e!3741729)))

(declare-fun res!2543993 () Bool)

(assert (=> d!1923561 (=> res!2543993 e!3741729)))

(assert (=> d!1923561 (= res!2543993 (matchZipper!2094 lt!2332806 (t!378024 s!2326)))))

(assert (=> d!1923561 true))

(declare-fun _$48!1640 () Unit!157483)

(assert (=> d!1923561 (= (choose!45615 lt!2332806 lt!2332797 (t!378024 s!2326)) _$48!1640)))

(declare-fun b!6139623 () Bool)

(assert (=> b!6139623 (= e!3741729 (matchZipper!2094 lt!2332797 (t!378024 s!2326)))))

(assert (= (and d!1923561 (not res!2543993)) b!6139623))

(assert (=> d!1923561 m!6980438))

(assert (=> d!1923561 m!6980436))

(assert (=> b!6139623 m!6980446))

(assert (=> d!1923267 d!1923561))

(declare-fun b!6139624 () Bool)

(declare-fun e!3741732 () (Set Context!10932))

(declare-fun call!509773 () (Set Context!10932))

(assert (=> b!6139624 (= e!3741732 call!509773)))

(declare-fun b!6139625 () Bool)

(declare-fun e!3741731 () (Set Context!10932))

(assert (=> b!6139625 (= e!3741731 e!3741732)))

(declare-fun c!1104295 () Bool)

(assert (=> b!6139625 (= c!1104295 (is-Cons!64421 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332796))))))))

(declare-fun b!6139626 () Bool)

(assert (=> b!6139626 (= e!3741731 (set.union call!509773 (derivationStepZipperUp!1256 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332796)))))) (h!70871 s!2326))))))

(declare-fun d!1923563 () Bool)

(declare-fun c!1104294 () Bool)

(declare-fun e!3741730 () Bool)

(assert (=> d!1923563 (= c!1104294 e!3741730)))

(declare-fun res!2543994 () Bool)

(assert (=> d!1923563 (=> (not res!2543994) (not e!3741730))))

(assert (=> d!1923563 (= res!2543994 (is-Cons!64421 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332796))))))))

(assert (=> d!1923563 (= (derivationStepZipperUp!1256 (Context!10933 (t!378022 (exprs!5966 lt!2332796))) (h!70871 s!2326)) e!3741731)))

(declare-fun b!6139627 () Bool)

(assert (=> b!6139627 (= e!3741730 (nullable!6075 (h!70869 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332796)))))))))

(declare-fun bm!509768 () Bool)

(assert (=> bm!509768 (= call!509773 (derivationStepZipperDown!1330 (h!70869 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332796))))) (Context!10933 (t!378022 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332796)))))) (h!70871 s!2326)))))

(declare-fun b!6139628 () Bool)

(assert (=> b!6139628 (= e!3741732 (as set.empty (Set Context!10932)))))

(assert (= (and d!1923563 res!2543994) b!6139627))

(assert (= (and d!1923563 c!1104294) b!6139626))

(assert (= (and d!1923563 (not c!1104294)) b!6139625))

(assert (= (and b!6139625 c!1104295) b!6139624))

(assert (= (and b!6139625 (not c!1104295)) b!6139628))

(assert (= (or b!6139626 b!6139624) bm!509768))

(declare-fun m!6981332 () Bool)

(assert (=> b!6139626 m!6981332))

(declare-fun m!6981334 () Bool)

(assert (=> b!6139627 m!6981334))

(declare-fun m!6981336 () Bool)

(assert (=> bm!509768 m!6981336))

(assert (=> b!6138941 d!1923563))

(assert (=> d!1923273 d!1923477))

(declare-fun d!1923565 () Bool)

(declare-fun res!2544009 () Bool)

(declare-fun e!3741748 () Bool)

(assert (=> d!1923565 (=> res!2544009 e!3741748)))

(assert (=> d!1923565 (= res!2544009 (is-EmptyExpr!16082 (regOne!32677 (regOne!32676 r!7292))))))

(assert (=> d!1923565 (= (nullableFct!2039 (regOne!32677 (regOne!32676 r!7292))) e!3741748)))

(declare-fun b!6139643 () Bool)

(declare-fun e!3741749 () Bool)

(declare-fun call!509779 () Bool)

(assert (=> b!6139643 (= e!3741749 call!509779)))

(declare-fun b!6139644 () Bool)

(declare-fun e!3741746 () Bool)

(assert (=> b!6139644 (= e!3741746 call!509779)))

(declare-fun b!6139645 () Bool)

(declare-fun e!3741745 () Bool)

(assert (=> b!6139645 (= e!3741748 e!3741745)))

(declare-fun res!2544008 () Bool)

(assert (=> b!6139645 (=> (not res!2544008) (not e!3741745))))

(assert (=> b!6139645 (= res!2544008 (and (not (is-EmptyLang!16082 (regOne!32677 (regOne!32676 r!7292)))) (not (is-ElementMatch!16082 (regOne!32677 (regOne!32676 r!7292))))))))

(declare-fun bm!509773 () Bool)

(declare-fun c!1104298 () Bool)

(assert (=> bm!509773 (= call!509779 (nullable!6075 (ite c!1104298 (regTwo!32677 (regOne!32677 (regOne!32676 r!7292))) (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))))))))

(declare-fun b!6139646 () Bool)

(declare-fun e!3741747 () Bool)

(assert (=> b!6139646 (= e!3741747 e!3741749)))

(declare-fun res!2544005 () Bool)

(declare-fun call!509778 () Bool)

(assert (=> b!6139646 (= res!2544005 call!509778)))

(assert (=> b!6139646 (=> res!2544005 e!3741749)))

(declare-fun bm!509774 () Bool)

(assert (=> bm!509774 (= call!509778 (nullable!6075 (ite c!1104298 (regOne!32677 (regOne!32677 (regOne!32676 r!7292))) (regOne!32676 (regOne!32677 (regOne!32676 r!7292))))))))

(declare-fun b!6139647 () Bool)

(assert (=> b!6139647 (= e!3741747 e!3741746)))

(declare-fun res!2544007 () Bool)

(assert (=> b!6139647 (= res!2544007 call!509778)))

(assert (=> b!6139647 (=> (not res!2544007) (not e!3741746))))

(declare-fun b!6139648 () Bool)

(declare-fun e!3741750 () Bool)

(assert (=> b!6139648 (= e!3741745 e!3741750)))

(declare-fun res!2544006 () Bool)

(assert (=> b!6139648 (=> res!2544006 e!3741750)))

(assert (=> b!6139648 (= res!2544006 (is-Star!16082 (regOne!32677 (regOne!32676 r!7292))))))

(declare-fun b!6139649 () Bool)

(assert (=> b!6139649 (= e!3741750 e!3741747)))

(assert (=> b!6139649 (= c!1104298 (is-Union!16082 (regOne!32677 (regOne!32676 r!7292))))))

(assert (= (and d!1923565 (not res!2544009)) b!6139645))

(assert (= (and b!6139645 res!2544008) b!6139648))

(assert (= (and b!6139648 (not res!2544006)) b!6139649))

(assert (= (and b!6139649 c!1104298) b!6139646))

(assert (= (and b!6139649 (not c!1104298)) b!6139647))

(assert (= (and b!6139646 (not res!2544005)) b!6139643))

(assert (= (and b!6139647 res!2544007) b!6139644))

(assert (= (or b!6139643 b!6139644) bm!509773))

(assert (= (or b!6139646 b!6139647) bm!509774))

(declare-fun m!6981338 () Bool)

(assert (=> bm!509773 m!6981338))

(declare-fun m!6981340 () Bool)

(assert (=> bm!509774 m!6981340))

(assert (=> d!1923297 d!1923565))

(declare-fun d!1923567 () Bool)

(declare-fun c!1104299 () Bool)

(assert (=> d!1923567 (= c!1104299 (isEmpty!36374 (tail!11770 (t!378024 s!2326))))))

(declare-fun e!3741751 () Bool)

(assert (=> d!1923567 (= (matchZipper!2094 (derivationStepZipper!2055 lt!2332806 (head!12685 (t!378024 s!2326))) (tail!11770 (t!378024 s!2326))) e!3741751)))

(declare-fun b!6139650 () Bool)

(assert (=> b!6139650 (= e!3741751 (nullableZipper!1863 (derivationStepZipper!2055 lt!2332806 (head!12685 (t!378024 s!2326)))))))

(declare-fun b!6139651 () Bool)

(assert (=> b!6139651 (= e!3741751 (matchZipper!2094 (derivationStepZipper!2055 (derivationStepZipper!2055 lt!2332806 (head!12685 (t!378024 s!2326))) (head!12685 (tail!11770 (t!378024 s!2326)))) (tail!11770 (tail!11770 (t!378024 s!2326)))))))

(assert (= (and d!1923567 c!1104299) b!6139650))

(assert (= (and d!1923567 (not c!1104299)) b!6139651))

(assert (=> d!1923567 m!6980604))

(assert (=> d!1923567 m!6981256))

(assert (=> b!6139650 m!6980602))

(declare-fun m!6981342 () Bool)

(assert (=> b!6139650 m!6981342))

(assert (=> b!6139651 m!6980604))

(assert (=> b!6139651 m!6981260))

(assert (=> b!6139651 m!6980602))

(assert (=> b!6139651 m!6981260))

(declare-fun m!6981344 () Bool)

(assert (=> b!6139651 m!6981344))

(assert (=> b!6139651 m!6980604))

(assert (=> b!6139651 m!6981264))

(assert (=> b!6139651 m!6981344))

(assert (=> b!6139651 m!6981264))

(declare-fun m!6981346 () Bool)

(assert (=> b!6139651 m!6981346))

(assert (=> b!6138686 d!1923567))

(declare-fun bs!1522441 () Bool)

(declare-fun d!1923569 () Bool)

(assert (= bs!1522441 (and d!1923569 b!6138541)))

(declare-fun lambda!334627 () Int)

(assert (=> bs!1522441 (= (= (head!12685 (t!378024 s!2326)) (h!70871 s!2326)) (= lambda!334627 lambda!334542))))

(declare-fun bs!1522442 () Bool)

(assert (= bs!1522442 (and d!1923569 d!1923533)))

(assert (=> bs!1522442 (= lambda!334627 lambda!334623)))

(declare-fun bs!1522443 () Bool)

(assert (= bs!1522443 (and d!1923569 d!1923523)))

(assert (=> bs!1522443 (= lambda!334627 lambda!334622)))

(declare-fun bs!1522444 () Bool)

(assert (= bs!1522444 (and d!1923569 d!1923537)))

(assert (=> bs!1522444 (= lambda!334627 lambda!334624)))

(declare-fun bs!1522445 () Bool)

(assert (= bs!1522445 (and d!1923569 d!1923557)))

(assert (=> bs!1522445 (= lambda!334627 lambda!334626)))

(assert (=> d!1923569 true))

(assert (=> d!1923569 (= (derivationStepZipper!2055 lt!2332806 (head!12685 (t!378024 s!2326))) (flatMap!1587 lt!2332806 lambda!334627))))

(declare-fun bs!1522446 () Bool)

(assert (= bs!1522446 d!1923569))

(declare-fun m!6981348 () Bool)

(assert (=> bs!1522446 m!6981348))

(assert (=> b!6138686 d!1923569))

(assert (=> b!6138686 d!1923525))

(assert (=> b!6138686 d!1923527))

(declare-fun b!6139652 () Bool)

(declare-fun e!3741752 () Bool)

(declare-fun e!3741756 () Bool)

(assert (=> b!6139652 (= e!3741752 e!3741756)))

(declare-fun c!1104301 () Bool)

(assert (=> b!6139652 (= c!1104301 (is-Star!16082 (ite c!1104134 (reg!16411 r!7292) (ite c!1104133 (regOne!32677 r!7292) (regOne!32676 r!7292)))))))

(declare-fun b!6139653 () Bool)

(declare-fun e!3741753 () Bool)

(declare-fun call!509780 () Bool)

(assert (=> b!6139653 (= e!3741753 call!509780)))

(declare-fun b!6139654 () Bool)

(declare-fun e!3741755 () Bool)

(declare-fun e!3741757 () Bool)

(assert (=> b!6139654 (= e!3741755 e!3741757)))

(declare-fun res!2544010 () Bool)

(assert (=> b!6139654 (=> (not res!2544010) (not e!3741757))))

(declare-fun call!509782 () Bool)

(assert (=> b!6139654 (= res!2544010 call!509782)))

(declare-fun d!1923571 () Bool)

(declare-fun res!2544012 () Bool)

(assert (=> d!1923571 (=> res!2544012 e!3741752)))

(assert (=> d!1923571 (= res!2544012 (is-ElementMatch!16082 (ite c!1104134 (reg!16411 r!7292) (ite c!1104133 (regOne!32677 r!7292) (regOne!32676 r!7292)))))))

(assert (=> d!1923571 (= (validRegex!7818 (ite c!1104134 (reg!16411 r!7292) (ite c!1104133 (regOne!32677 r!7292) (regOne!32676 r!7292)))) e!3741752)))

(declare-fun b!6139655 () Bool)

(declare-fun res!2544013 () Bool)

(assert (=> b!6139655 (=> (not res!2544013) (not e!3741753))))

(assert (=> b!6139655 (= res!2544013 call!509782)))

(declare-fun e!3741754 () Bool)

(assert (=> b!6139655 (= e!3741754 e!3741753)))

(declare-fun bm!509775 () Bool)

(declare-fun call!509781 () Bool)

(assert (=> bm!509775 (= call!509782 call!509781)))

(declare-fun b!6139656 () Bool)

(assert (=> b!6139656 (= e!3741756 e!3741754)))

(declare-fun c!1104300 () Bool)

(assert (=> b!6139656 (= c!1104300 (is-Union!16082 (ite c!1104134 (reg!16411 r!7292) (ite c!1104133 (regOne!32677 r!7292) (regOne!32676 r!7292)))))))

(declare-fun b!6139657 () Bool)

(assert (=> b!6139657 (= e!3741757 call!509780)))

(declare-fun b!6139658 () Bool)

(declare-fun e!3741758 () Bool)

(assert (=> b!6139658 (= e!3741756 e!3741758)))

(declare-fun res!2544011 () Bool)

(assert (=> b!6139658 (= res!2544011 (not (nullable!6075 (reg!16411 (ite c!1104134 (reg!16411 r!7292) (ite c!1104133 (regOne!32677 r!7292) (regOne!32676 r!7292)))))))))

(assert (=> b!6139658 (=> (not res!2544011) (not e!3741758))))

(declare-fun b!6139659 () Bool)

(declare-fun res!2544014 () Bool)

(assert (=> b!6139659 (=> res!2544014 e!3741755)))

(assert (=> b!6139659 (= res!2544014 (not (is-Concat!24927 (ite c!1104134 (reg!16411 r!7292) (ite c!1104133 (regOne!32677 r!7292) (regOne!32676 r!7292))))))))

(assert (=> b!6139659 (= e!3741754 e!3741755)))

(declare-fun bm!509776 () Bool)

(assert (=> bm!509776 (= call!509781 (validRegex!7818 (ite c!1104301 (reg!16411 (ite c!1104134 (reg!16411 r!7292) (ite c!1104133 (regOne!32677 r!7292) (regOne!32676 r!7292)))) (ite c!1104300 (regOne!32677 (ite c!1104134 (reg!16411 r!7292) (ite c!1104133 (regOne!32677 r!7292) (regOne!32676 r!7292)))) (regOne!32676 (ite c!1104134 (reg!16411 r!7292) (ite c!1104133 (regOne!32677 r!7292) (regOne!32676 r!7292))))))))))

(declare-fun b!6139660 () Bool)

(assert (=> b!6139660 (= e!3741758 call!509781)))

(declare-fun bm!509777 () Bool)

(assert (=> bm!509777 (= call!509780 (validRegex!7818 (ite c!1104300 (regTwo!32677 (ite c!1104134 (reg!16411 r!7292) (ite c!1104133 (regOne!32677 r!7292) (regOne!32676 r!7292)))) (regTwo!32676 (ite c!1104134 (reg!16411 r!7292) (ite c!1104133 (regOne!32677 r!7292) (regOne!32676 r!7292)))))))))

(assert (= (and d!1923571 (not res!2544012)) b!6139652))

(assert (= (and b!6139652 c!1104301) b!6139658))

(assert (= (and b!6139652 (not c!1104301)) b!6139656))

(assert (= (and b!6139658 res!2544011) b!6139660))

(assert (= (and b!6139656 c!1104300) b!6139655))

(assert (= (and b!6139656 (not c!1104300)) b!6139659))

(assert (= (and b!6139655 res!2544013) b!6139653))

(assert (= (and b!6139659 (not res!2544014)) b!6139654))

(assert (= (and b!6139654 res!2544010) b!6139657))

(assert (= (or b!6139653 b!6139657) bm!509777))

(assert (= (or b!6139655 b!6139654) bm!509775))

(assert (= (or b!6139660 bm!509775) bm!509776))

(declare-fun m!6981350 () Bool)

(assert (=> b!6139658 m!6981350))

(declare-fun m!6981352 () Bool)

(assert (=> bm!509776 m!6981352))

(declare-fun m!6981354 () Bool)

(assert (=> bm!509777 m!6981354))

(assert (=> bm!509680 d!1923571))

(declare-fun bs!1522447 () Bool)

(declare-fun b!6139663 () Bool)

(assert (= bs!1522447 (and b!6139663 d!1923313)))

(declare-fun lambda!334628 () Int)

(assert (=> bs!1522447 (not (= lambda!334628 lambda!334578))))

(assert (=> bs!1522447 (not (= lambda!334628 lambda!334579))))

(declare-fun bs!1522448 () Bool)

(assert (= bs!1522448 (and b!6139663 d!1923441)))

(assert (=> bs!1522448 (not (= lambda!334628 lambda!334616))))

(declare-fun bs!1522449 () Bool)

(assert (= bs!1522449 (and b!6139663 b!6138552)))

(assert (=> bs!1522449 (not (= lambda!334628 lambda!334540))))

(assert (=> bs!1522449 (not (= lambda!334628 lambda!334541))))

(declare-fun bs!1522450 () Bool)

(assert (= bs!1522450 (and b!6139663 b!6138730)))

(assert (=> bs!1522450 (= (and (= (reg!16411 (regTwo!32677 r!7292)) (reg!16411 r!7292)) (= (regTwo!32677 r!7292) r!7292)) (= lambda!334628 lambda!334563))))

(declare-fun bs!1522451 () Bool)

(assert (= bs!1522451 (and b!6139663 d!1923311)))

(assert (=> bs!1522451 (not (= lambda!334628 lambda!334573))))

(declare-fun bs!1522452 () Bool)

(assert (= bs!1522452 (and b!6139663 b!6138734)))

(assert (=> bs!1522452 (not (= lambda!334628 lambda!334564))))

(assert (=> b!6139663 true))

(assert (=> b!6139663 true))

(declare-fun bs!1522453 () Bool)

(declare-fun b!6139667 () Bool)

(assert (= bs!1522453 (and b!6139667 d!1923313)))

(declare-fun lambda!334629 () Int)

(assert (=> bs!1522453 (= (and (= (regOne!32676 (regTwo!32677 r!7292)) (regOne!32676 r!7292)) (= (regTwo!32676 (regTwo!32677 r!7292)) (regTwo!32676 r!7292))) (= lambda!334629 lambda!334579))))

(declare-fun bs!1522454 () Bool)

(assert (= bs!1522454 (and b!6139667 d!1923441)))

(assert (=> bs!1522454 (not (= lambda!334629 lambda!334616))))

(declare-fun bs!1522455 () Bool)

(assert (= bs!1522455 (and b!6139667 b!6138552)))

(assert (=> bs!1522455 (not (= lambda!334629 lambda!334540))))

(assert (=> bs!1522455 (= (and (= (regOne!32676 (regTwo!32677 r!7292)) (regOne!32676 r!7292)) (= (regTwo!32676 (regTwo!32677 r!7292)) (regTwo!32676 r!7292))) (= lambda!334629 lambda!334541))))

(declare-fun bs!1522456 () Bool)

(assert (= bs!1522456 (and b!6139667 b!6138730)))

(assert (=> bs!1522456 (not (= lambda!334629 lambda!334563))))

(declare-fun bs!1522457 () Bool)

(assert (= bs!1522457 (and b!6139667 d!1923311)))

(assert (=> bs!1522457 (not (= lambda!334629 lambda!334573))))

(declare-fun bs!1522458 () Bool)

(assert (= bs!1522458 (and b!6139667 b!6138734)))

(assert (=> bs!1522458 (= (and (= (regOne!32676 (regTwo!32677 r!7292)) (regOne!32676 r!7292)) (= (regTwo!32676 (regTwo!32677 r!7292)) (regTwo!32676 r!7292))) (= lambda!334629 lambda!334564))))

(declare-fun bs!1522459 () Bool)

(assert (= bs!1522459 (and b!6139667 b!6139663)))

(assert (=> bs!1522459 (not (= lambda!334629 lambda!334628))))

(assert (=> bs!1522453 (not (= lambda!334629 lambda!334578))))

(assert (=> b!6139667 true))

(assert (=> b!6139667 true))

(declare-fun b!6139661 () Bool)

(declare-fun e!3741761 () Bool)

(assert (=> b!6139661 (= e!3741761 (= s!2326 (Cons!64423 (c!1104020 (regTwo!32677 r!7292)) Nil!64423)))))

(declare-fun b!6139662 () Bool)

(declare-fun e!3741759 () Bool)

(declare-fun e!3741764 () Bool)

(assert (=> b!6139662 (= e!3741759 e!3741764)))

(declare-fun c!1104302 () Bool)

(assert (=> b!6139662 (= c!1104302 (is-Star!16082 (regTwo!32677 r!7292)))))

(declare-fun bm!509778 () Bool)

(declare-fun call!509784 () Bool)

(assert (=> bm!509778 (= call!509784 (isEmpty!36374 s!2326))))

(declare-fun e!3741762 () Bool)

(declare-fun call!509783 () Bool)

(assert (=> b!6139663 (= e!3741762 call!509783)))

(declare-fun b!6139664 () Bool)

(declare-fun e!3741760 () Bool)

(assert (=> b!6139664 (= e!3741759 e!3741760)))

(declare-fun res!2544015 () Bool)

(assert (=> b!6139664 (= res!2544015 (matchRSpec!3183 (regOne!32677 (regTwo!32677 r!7292)) s!2326))))

(assert (=> b!6139664 (=> res!2544015 e!3741760)))

(declare-fun b!6139665 () Bool)

(declare-fun e!3741763 () Bool)

(assert (=> b!6139665 (= e!3741763 call!509784)))

(declare-fun b!6139666 () Bool)

(declare-fun c!1104304 () Bool)

(assert (=> b!6139666 (= c!1104304 (is-ElementMatch!16082 (regTwo!32677 r!7292)))))

(declare-fun e!3741765 () Bool)

(assert (=> b!6139666 (= e!3741765 e!3741761)))

(assert (=> b!6139667 (= e!3741764 call!509783)))

(declare-fun b!6139669 () Bool)

(declare-fun res!2544016 () Bool)

(assert (=> b!6139669 (=> res!2544016 e!3741762)))

(assert (=> b!6139669 (= res!2544016 call!509784)))

(assert (=> b!6139669 (= e!3741764 e!3741762)))

(declare-fun bm!509779 () Bool)

(assert (=> bm!509779 (= call!509783 (Exists!3152 (ite c!1104302 lambda!334628 lambda!334629)))))

(declare-fun b!6139670 () Bool)

(declare-fun c!1104303 () Bool)

(assert (=> b!6139670 (= c!1104303 (is-Union!16082 (regTwo!32677 r!7292)))))

(assert (=> b!6139670 (= e!3741761 e!3741759)))

(declare-fun b!6139671 () Bool)

(assert (=> b!6139671 (= e!3741763 e!3741765)))

(declare-fun res!2544017 () Bool)

(assert (=> b!6139671 (= res!2544017 (not (is-EmptyLang!16082 (regTwo!32677 r!7292))))))

(assert (=> b!6139671 (=> (not res!2544017) (not e!3741765))))

(declare-fun b!6139668 () Bool)

(assert (=> b!6139668 (= e!3741760 (matchRSpec!3183 (regTwo!32677 (regTwo!32677 r!7292)) s!2326))))

(declare-fun d!1923573 () Bool)

(declare-fun c!1104305 () Bool)

(assert (=> d!1923573 (= c!1104305 (is-EmptyExpr!16082 (regTwo!32677 r!7292)))))

(assert (=> d!1923573 (= (matchRSpec!3183 (regTwo!32677 r!7292) s!2326) e!3741763)))

(assert (= (and d!1923573 c!1104305) b!6139665))

(assert (= (and d!1923573 (not c!1104305)) b!6139671))

(assert (= (and b!6139671 res!2544017) b!6139666))

(assert (= (and b!6139666 c!1104304) b!6139661))

(assert (= (and b!6139666 (not c!1104304)) b!6139670))

(assert (= (and b!6139670 c!1104303) b!6139664))

(assert (= (and b!6139670 (not c!1104303)) b!6139662))

(assert (= (and b!6139664 (not res!2544015)) b!6139668))

(assert (= (and b!6139662 c!1104302) b!6139669))

(assert (= (and b!6139662 (not c!1104302)) b!6139667))

(assert (= (and b!6139669 (not res!2544016)) b!6139663))

(assert (= (or b!6139663 b!6139667) bm!509779))

(assert (= (or b!6139665 b!6139669) bm!509778))

(assert (=> bm!509778 m!6980638))

(declare-fun m!6981356 () Bool)

(assert (=> b!6139664 m!6981356))

(declare-fun m!6981358 () Bool)

(assert (=> bm!509779 m!6981358))

(declare-fun m!6981360 () Bool)

(assert (=> b!6139668 m!6981360))

(assert (=> b!6138735 d!1923573))

(declare-fun d!1923575 () Bool)

(assert (=> d!1923575 (= ($colon$colon!1959 (exprs!5966 lt!2332796) (ite (or c!1104126 c!1104125) (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (regOne!32677 (regOne!32676 r!7292)))) (Cons!64421 (ite (or c!1104126 c!1104125) (regTwo!32676 (regOne!32677 (regOne!32676 r!7292))) (regOne!32677 (regOne!32676 r!7292))) (exprs!5966 lt!2332796)))))

(assert (=> bm!509670 d!1923575))

(assert (=> b!6138778 d!1923501))

(declare-fun d!1923577 () Bool)

(declare-fun c!1104306 () Bool)

(assert (=> d!1923577 (= c!1104306 (isEmpty!36374 (tail!11770 (t!378024 s!2326))))))

(declare-fun e!3741766 () Bool)

(assert (=> d!1923577 (= (matchZipper!2094 (derivationStepZipper!2055 lt!2332805 (head!12685 (t!378024 s!2326))) (tail!11770 (t!378024 s!2326))) e!3741766)))

(declare-fun b!6139672 () Bool)

(assert (=> b!6139672 (= e!3741766 (nullableZipper!1863 (derivationStepZipper!2055 lt!2332805 (head!12685 (t!378024 s!2326)))))))

(declare-fun b!6139673 () Bool)

(assert (=> b!6139673 (= e!3741766 (matchZipper!2094 (derivationStepZipper!2055 (derivationStepZipper!2055 lt!2332805 (head!12685 (t!378024 s!2326))) (head!12685 (tail!11770 (t!378024 s!2326)))) (tail!11770 (tail!11770 (t!378024 s!2326)))))))

(assert (= (and d!1923577 c!1104306) b!6139672))

(assert (= (and d!1923577 (not c!1104306)) b!6139673))

(assert (=> d!1923577 m!6980604))

(assert (=> d!1923577 m!6981256))

(assert (=> b!6139672 m!6980622))

(declare-fun m!6981362 () Bool)

(assert (=> b!6139672 m!6981362))

(assert (=> b!6139673 m!6980604))

(assert (=> b!6139673 m!6981260))

(assert (=> b!6139673 m!6980622))

(assert (=> b!6139673 m!6981260))

(declare-fun m!6981364 () Bool)

(assert (=> b!6139673 m!6981364))

(assert (=> b!6139673 m!6980604))

(assert (=> b!6139673 m!6981264))

(assert (=> b!6139673 m!6981364))

(assert (=> b!6139673 m!6981264))

(declare-fun m!6981366 () Bool)

(assert (=> b!6139673 m!6981366))

(assert (=> b!6138692 d!1923577))

(declare-fun bs!1522460 () Bool)

(declare-fun d!1923579 () Bool)

(assert (= bs!1522460 (and d!1923579 d!1923533)))

(declare-fun lambda!334630 () Int)

(assert (=> bs!1522460 (= lambda!334630 lambda!334623)))

(declare-fun bs!1522461 () Bool)

(assert (= bs!1522461 (and d!1923579 d!1923523)))

(assert (=> bs!1522461 (= lambda!334630 lambda!334622)))

(declare-fun bs!1522462 () Bool)

(assert (= bs!1522462 (and d!1923579 b!6138541)))

(assert (=> bs!1522462 (= (= (head!12685 (t!378024 s!2326)) (h!70871 s!2326)) (= lambda!334630 lambda!334542))))

(declare-fun bs!1522463 () Bool)

(assert (= bs!1522463 (and d!1923579 d!1923569)))

(assert (=> bs!1522463 (= lambda!334630 lambda!334627)))

(declare-fun bs!1522464 () Bool)

(assert (= bs!1522464 (and d!1923579 d!1923537)))

(assert (=> bs!1522464 (= lambda!334630 lambda!334624)))

(declare-fun bs!1522465 () Bool)

(assert (= bs!1522465 (and d!1923579 d!1923557)))

(assert (=> bs!1522465 (= lambda!334630 lambda!334626)))

(assert (=> d!1923579 true))

(assert (=> d!1923579 (= (derivationStepZipper!2055 lt!2332805 (head!12685 (t!378024 s!2326))) (flatMap!1587 lt!2332805 lambda!334630))))

(declare-fun bs!1522466 () Bool)

(assert (= bs!1522466 d!1923579))

(declare-fun m!6981368 () Bool)

(assert (=> bs!1522466 m!6981368))

(assert (=> b!6138692 d!1923579))

(assert (=> b!6138692 d!1923525))

(assert (=> b!6138692 d!1923527))

(declare-fun d!1923581 () Bool)

(declare-fun lambda!334633 () Int)

(declare-fun exists!2429 ((Set Context!10932) Int) Bool)

(assert (=> d!1923581 (= (nullableZipper!1863 (set.union lt!2332806 lt!2332797)) (exists!2429 (set.union lt!2332806 lt!2332797) lambda!334633))))

(declare-fun bs!1522467 () Bool)

(assert (= bs!1522467 d!1923581))

(declare-fun m!6981370 () Bool)

(assert (=> bs!1522467 m!6981370))

(assert (=> b!6138687 d!1923581))

(declare-fun d!1923583 () Bool)

(assert (=> d!1923583 (= (Exists!3152 lambda!334578) (choose!45620 lambda!334578))))

(declare-fun bs!1522468 () Bool)

(assert (= bs!1522468 d!1923583))

(declare-fun m!6981372 () Bool)

(assert (=> bs!1522468 m!6981372))

(assert (=> d!1923313 d!1923583))

(declare-fun d!1923585 () Bool)

(assert (=> d!1923585 (= (Exists!3152 lambda!334579) (choose!45620 lambda!334579))))

(declare-fun bs!1522469 () Bool)

(assert (= bs!1522469 d!1923585))

(declare-fun m!6981374 () Bool)

(assert (=> bs!1522469 m!6981374))

(assert (=> d!1923313 d!1923585))

(declare-fun bs!1522470 () Bool)

(declare-fun d!1923587 () Bool)

(assert (= bs!1522470 (and d!1923587 d!1923313)))

(declare-fun lambda!334638 () Int)

(assert (=> bs!1522470 (not (= lambda!334638 lambda!334579))))

(declare-fun bs!1522471 () Bool)

(assert (= bs!1522471 (and d!1923587 d!1923441)))

(assert (=> bs!1522471 (= lambda!334638 lambda!334616)))

(declare-fun bs!1522472 () Bool)

(assert (= bs!1522472 (and d!1923587 b!6138552)))

(assert (=> bs!1522472 (= lambda!334638 lambda!334540)))

(assert (=> bs!1522472 (not (= lambda!334638 lambda!334541))))

(declare-fun bs!1522473 () Bool)

(assert (= bs!1522473 (and d!1923587 b!6138730)))

(assert (=> bs!1522473 (not (= lambda!334638 lambda!334563))))

(declare-fun bs!1522474 () Bool)

(assert (= bs!1522474 (and d!1923587 d!1923311)))

(assert (=> bs!1522474 (= lambda!334638 lambda!334573)))

(declare-fun bs!1522475 () Bool)

(assert (= bs!1522475 (and d!1923587 b!6138734)))

(assert (=> bs!1522475 (not (= lambda!334638 lambda!334564))))

(declare-fun bs!1522476 () Bool)

(assert (= bs!1522476 (and d!1923587 b!6139667)))

(assert (=> bs!1522476 (not (= lambda!334638 lambda!334629))))

(declare-fun bs!1522477 () Bool)

(assert (= bs!1522477 (and d!1923587 b!6139663)))

(assert (=> bs!1522477 (not (= lambda!334638 lambda!334628))))

(assert (=> bs!1522470 (= lambda!334638 lambda!334578)))

(assert (=> d!1923587 true))

(assert (=> d!1923587 true))

(assert (=> d!1923587 true))

(declare-fun lambda!334639 () Int)

(assert (=> bs!1522470 (= lambda!334639 lambda!334579)))

(assert (=> bs!1522471 (not (= lambda!334639 lambda!334616))))

(assert (=> bs!1522472 (not (= lambda!334639 lambda!334540))))

(assert (=> bs!1522472 (= lambda!334639 lambda!334541)))

(assert (=> bs!1522473 (not (= lambda!334639 lambda!334563))))

(assert (=> bs!1522474 (not (= lambda!334639 lambda!334573))))

(assert (=> bs!1522475 (= lambda!334639 lambda!334564)))

(declare-fun bs!1522478 () Bool)

(assert (= bs!1522478 d!1923587))

(assert (=> bs!1522478 (not (= lambda!334639 lambda!334638))))

(assert (=> bs!1522476 (= (and (= (regOne!32676 r!7292) (regOne!32676 (regTwo!32677 r!7292))) (= (regTwo!32676 r!7292) (regTwo!32676 (regTwo!32677 r!7292)))) (= lambda!334639 lambda!334629))))

(assert (=> bs!1522477 (not (= lambda!334639 lambda!334628))))

(assert (=> bs!1522470 (not (= lambda!334639 lambda!334578))))

(assert (=> d!1923587 true))

(assert (=> d!1923587 true))

(assert (=> d!1923587 true))

(assert (=> d!1923587 (= (Exists!3152 lambda!334638) (Exists!3152 lambda!334639))))

(assert (=> d!1923587 true))

(declare-fun _$90!1851 () Unit!157483)

(assert (=> d!1923587 (= (choose!45622 (regOne!32676 r!7292) (regTwo!32676 r!7292) s!2326) _$90!1851)))

(declare-fun m!6981376 () Bool)

(assert (=> bs!1522478 m!6981376))

(declare-fun m!6981378 () Bool)

(assert (=> bs!1522478 m!6981378))

(assert (=> d!1923313 d!1923587))

(assert (=> d!1923313 d!1923437))

(declare-fun bs!1522479 () Bool)

(declare-fun d!1923589 () Bool)

(assert (= bs!1522479 (and d!1923589 d!1923581)))

(declare-fun lambda!334640 () Int)

(assert (=> bs!1522479 (= lambda!334640 lambda!334633)))

(assert (=> d!1923589 (= (nullableZipper!1863 lt!2332797) (exists!2429 lt!2332797 lambda!334640))))

(declare-fun bs!1522480 () Bool)

(assert (= bs!1522480 d!1923589))

(declare-fun m!6981380 () Bool)

(assert (=> bs!1522480 m!6981380))

(assert (=> b!6138820 d!1923589))

(declare-fun bs!1522481 () Bool)

(declare-fun b!6139684 () Bool)

(assert (= bs!1522481 (and b!6139684 d!1923313)))

(declare-fun lambda!334641 () Int)

(assert (=> bs!1522481 (not (= lambda!334641 lambda!334579))))

(declare-fun bs!1522482 () Bool)

(assert (= bs!1522482 (and b!6139684 d!1923441)))

(assert (=> bs!1522482 (not (= lambda!334641 lambda!334616))))

(declare-fun bs!1522483 () Bool)

(assert (= bs!1522483 (and b!6139684 b!6138552)))

(assert (=> bs!1522483 (not (= lambda!334641 lambda!334540))))

(assert (=> bs!1522483 (not (= lambda!334641 lambda!334541))))

(declare-fun bs!1522484 () Bool)

(assert (= bs!1522484 (and b!6139684 d!1923311)))

(assert (=> bs!1522484 (not (= lambda!334641 lambda!334573))))

(declare-fun bs!1522485 () Bool)

(assert (= bs!1522485 (and b!6139684 b!6138734)))

(assert (=> bs!1522485 (not (= lambda!334641 lambda!334564))))

(declare-fun bs!1522486 () Bool)

(assert (= bs!1522486 (and b!6139684 d!1923587)))

(assert (=> bs!1522486 (not (= lambda!334641 lambda!334638))))

(declare-fun bs!1522487 () Bool)

(assert (= bs!1522487 (and b!6139684 b!6139667)))

(assert (=> bs!1522487 (not (= lambda!334641 lambda!334629))))

(declare-fun bs!1522488 () Bool)

(assert (= bs!1522488 (and b!6139684 b!6139663)))

(assert (=> bs!1522488 (= (and (= (reg!16411 (regOne!32677 r!7292)) (reg!16411 (regTwo!32677 r!7292))) (= (regOne!32677 r!7292) (regTwo!32677 r!7292))) (= lambda!334641 lambda!334628))))

(assert (=> bs!1522481 (not (= lambda!334641 lambda!334578))))

(assert (=> bs!1522486 (not (= lambda!334641 lambda!334639))))

(declare-fun bs!1522489 () Bool)

(assert (= bs!1522489 (and b!6139684 b!6138730)))

(assert (=> bs!1522489 (= (and (= (reg!16411 (regOne!32677 r!7292)) (reg!16411 r!7292)) (= (regOne!32677 r!7292) r!7292)) (= lambda!334641 lambda!334563))))

(assert (=> b!6139684 true))

(assert (=> b!6139684 true))

(declare-fun bs!1522490 () Bool)

(declare-fun b!6139688 () Bool)

(assert (= bs!1522490 (and b!6139688 d!1923313)))

(declare-fun lambda!334642 () Int)

(assert (=> bs!1522490 (= (and (= (regOne!32676 (regOne!32677 r!7292)) (regOne!32676 r!7292)) (= (regTwo!32676 (regOne!32677 r!7292)) (regTwo!32676 r!7292))) (= lambda!334642 lambda!334579))))

(declare-fun bs!1522491 () Bool)

(assert (= bs!1522491 (and b!6139688 d!1923441)))

(assert (=> bs!1522491 (not (= lambda!334642 lambda!334616))))

(declare-fun bs!1522492 () Bool)

(assert (= bs!1522492 (and b!6139688 b!6138552)))

(assert (=> bs!1522492 (= (and (= (regOne!32676 (regOne!32677 r!7292)) (regOne!32676 r!7292)) (= (regTwo!32676 (regOne!32677 r!7292)) (regTwo!32676 r!7292))) (= lambda!334642 lambda!334541))))

(declare-fun bs!1522493 () Bool)

(assert (= bs!1522493 (and b!6139688 d!1923311)))

(assert (=> bs!1522493 (not (= lambda!334642 lambda!334573))))

(declare-fun bs!1522494 () Bool)

(assert (= bs!1522494 (and b!6139688 b!6138734)))

(assert (=> bs!1522494 (= (and (= (regOne!32676 (regOne!32677 r!7292)) (regOne!32676 r!7292)) (= (regTwo!32676 (regOne!32677 r!7292)) (regTwo!32676 r!7292))) (= lambda!334642 lambda!334564))))

(declare-fun bs!1522495 () Bool)

(assert (= bs!1522495 (and b!6139688 d!1923587)))

(assert (=> bs!1522495 (not (= lambda!334642 lambda!334638))))

(declare-fun bs!1522496 () Bool)

(assert (= bs!1522496 (and b!6139688 b!6139667)))

(assert (=> bs!1522496 (= (and (= (regOne!32676 (regOne!32677 r!7292)) (regOne!32676 (regTwo!32677 r!7292))) (= (regTwo!32676 (regOne!32677 r!7292)) (regTwo!32676 (regTwo!32677 r!7292)))) (= lambda!334642 lambda!334629))))

(declare-fun bs!1522497 () Bool)

(assert (= bs!1522497 (and b!6139688 b!6139663)))

(assert (=> bs!1522497 (not (= lambda!334642 lambda!334628))))

(assert (=> bs!1522490 (not (= lambda!334642 lambda!334578))))

(assert (=> bs!1522492 (not (= lambda!334642 lambda!334540))))

(declare-fun bs!1522498 () Bool)

(assert (= bs!1522498 (and b!6139688 b!6139684)))

(assert (=> bs!1522498 (not (= lambda!334642 lambda!334641))))

(assert (=> bs!1522495 (= (and (= (regOne!32676 (regOne!32677 r!7292)) (regOne!32676 r!7292)) (= (regTwo!32676 (regOne!32677 r!7292)) (regTwo!32676 r!7292))) (= lambda!334642 lambda!334639))))

(declare-fun bs!1522499 () Bool)

(assert (= bs!1522499 (and b!6139688 b!6138730)))

(assert (=> bs!1522499 (not (= lambda!334642 lambda!334563))))

(assert (=> b!6139688 true))

(assert (=> b!6139688 true))

(declare-fun b!6139682 () Bool)

(declare-fun e!3741773 () Bool)

(assert (=> b!6139682 (= e!3741773 (= s!2326 (Cons!64423 (c!1104020 (regOne!32677 r!7292)) Nil!64423)))))

(declare-fun b!6139683 () Bool)

(declare-fun e!3741771 () Bool)

(declare-fun e!3741776 () Bool)

(assert (=> b!6139683 (= e!3741771 e!3741776)))

(declare-fun c!1104309 () Bool)

(assert (=> b!6139683 (= c!1104309 (is-Star!16082 (regOne!32677 r!7292)))))

(declare-fun bm!509780 () Bool)

(declare-fun call!509786 () Bool)

(assert (=> bm!509780 (= call!509786 (isEmpty!36374 s!2326))))

(declare-fun e!3741774 () Bool)

(declare-fun call!509785 () Bool)

(assert (=> b!6139684 (= e!3741774 call!509785)))

(declare-fun b!6139685 () Bool)

(declare-fun e!3741772 () Bool)

(assert (=> b!6139685 (= e!3741771 e!3741772)))

(declare-fun res!2544026 () Bool)

(assert (=> b!6139685 (= res!2544026 (matchRSpec!3183 (regOne!32677 (regOne!32677 r!7292)) s!2326))))

(assert (=> b!6139685 (=> res!2544026 e!3741772)))

(declare-fun b!6139686 () Bool)

(declare-fun e!3741775 () Bool)

(assert (=> b!6139686 (= e!3741775 call!509786)))

(declare-fun b!6139687 () Bool)

(declare-fun c!1104311 () Bool)

(assert (=> b!6139687 (= c!1104311 (is-ElementMatch!16082 (regOne!32677 r!7292)))))

(declare-fun e!3741777 () Bool)

(assert (=> b!6139687 (= e!3741777 e!3741773)))

(assert (=> b!6139688 (= e!3741776 call!509785)))

(declare-fun b!6139690 () Bool)

(declare-fun res!2544027 () Bool)

(assert (=> b!6139690 (=> res!2544027 e!3741774)))

(assert (=> b!6139690 (= res!2544027 call!509786)))

(assert (=> b!6139690 (= e!3741776 e!3741774)))

(declare-fun bm!509781 () Bool)

(assert (=> bm!509781 (= call!509785 (Exists!3152 (ite c!1104309 lambda!334641 lambda!334642)))))

(declare-fun b!6139691 () Bool)

(declare-fun c!1104310 () Bool)

(assert (=> b!6139691 (= c!1104310 (is-Union!16082 (regOne!32677 r!7292)))))

(assert (=> b!6139691 (= e!3741773 e!3741771)))

(declare-fun b!6139692 () Bool)

(assert (=> b!6139692 (= e!3741775 e!3741777)))

(declare-fun res!2544028 () Bool)

(assert (=> b!6139692 (= res!2544028 (not (is-EmptyLang!16082 (regOne!32677 r!7292))))))

(assert (=> b!6139692 (=> (not res!2544028) (not e!3741777))))

(declare-fun b!6139689 () Bool)

(assert (=> b!6139689 (= e!3741772 (matchRSpec!3183 (regTwo!32677 (regOne!32677 r!7292)) s!2326))))

(declare-fun d!1923591 () Bool)

(declare-fun c!1104312 () Bool)

(assert (=> d!1923591 (= c!1104312 (is-EmptyExpr!16082 (regOne!32677 r!7292)))))

(assert (=> d!1923591 (= (matchRSpec!3183 (regOne!32677 r!7292) s!2326) e!3741775)))

(assert (= (and d!1923591 c!1104312) b!6139686))

(assert (= (and d!1923591 (not c!1104312)) b!6139692))

(assert (= (and b!6139692 res!2544028) b!6139687))

(assert (= (and b!6139687 c!1104311) b!6139682))

(assert (= (and b!6139687 (not c!1104311)) b!6139691))

(assert (= (and b!6139691 c!1104310) b!6139685))

(assert (= (and b!6139691 (not c!1104310)) b!6139683))

(assert (= (and b!6139685 (not res!2544026)) b!6139689))

(assert (= (and b!6139683 c!1104309) b!6139690))

(assert (= (and b!6139683 (not c!1104309)) b!6139688))

(assert (= (and b!6139690 (not res!2544027)) b!6139684))

(assert (= (or b!6139684 b!6139688) bm!509781))

(assert (= (or b!6139686 b!6139690) bm!509780))

(assert (=> bm!509780 m!6980638))

(declare-fun m!6981382 () Bool)

(assert (=> b!6139685 m!6981382))

(declare-fun m!6981384 () Bool)

(assert (=> bm!509781 m!6981384))

(declare-fun m!6981386 () Bool)

(assert (=> b!6139689 m!6981386))

(assert (=> b!6138731 d!1923591))

(declare-fun bs!1522500 () Bool)

(declare-fun d!1923593 () Bool)

(assert (= bs!1522500 (and d!1923593 d!1923581)))

(declare-fun lambda!334643 () Int)

(assert (=> bs!1522500 (= lambda!334643 lambda!334633)))

(declare-fun bs!1522501 () Bool)

(assert (= bs!1522501 (and d!1923593 d!1923589)))

(assert (=> bs!1522501 (= lambda!334643 lambda!334640)))

(assert (=> d!1923593 (= (nullableZipper!1863 lt!2332811) (exists!2429 lt!2332811 lambda!334643))))

(declare-fun bs!1522502 () Bool)

(assert (= bs!1522502 d!1923593))

(declare-fun m!6981388 () Bool)

(assert (=> bs!1522502 m!6981388))

(assert (=> b!6138694 d!1923593))

(declare-fun d!1923595 () Bool)

(assert (=> d!1923595 (= (isEmptyExpr!1499 lt!2332917) (is-EmptyExpr!16082 lt!2332917))))

(assert (=> b!6138902 d!1923595))

(assert (=> d!1923275 d!1923477))

(declare-fun d!1923597 () Bool)

(assert (=> d!1923597 (= (head!12686 (unfocusZipperList!1503 zl!343)) (h!70869 (unfocusZipperList!1503 zl!343)))))

(assert (=> b!6138803 d!1923597))

(declare-fun d!1923599 () Bool)

(declare-fun res!2544033 () Bool)

(declare-fun e!3741782 () Bool)

(assert (=> d!1923599 (=> res!2544033 e!3741782)))

(assert (=> d!1923599 (= res!2544033 (is-Nil!64422 lt!2332896))))

(assert (=> d!1923599 (= (noDuplicate!1929 lt!2332896) e!3741782)))

(declare-fun b!6139697 () Bool)

(declare-fun e!3741783 () Bool)

(assert (=> b!6139697 (= e!3741782 e!3741783)))

(declare-fun res!2544034 () Bool)

(assert (=> b!6139697 (=> (not res!2544034) (not e!3741783))))

(declare-fun contains!20043 (List!64546 Context!10932) Bool)

(assert (=> b!6139697 (= res!2544034 (not (contains!20043 (t!378023 lt!2332896) (h!70870 lt!2332896))))))

(declare-fun b!6139698 () Bool)

(assert (=> b!6139698 (= e!3741783 (noDuplicate!1929 (t!378023 lt!2332896)))))

(assert (= (and d!1923599 (not res!2544033)) b!6139697))

(assert (= (and b!6139697 res!2544034) b!6139698))

(declare-fun m!6981390 () Bool)

(assert (=> b!6139697 m!6981390))

(declare-fun m!6981392 () Bool)

(assert (=> b!6139698 m!6981392))

(assert (=> d!1923293 d!1923599))

(declare-fun d!1923601 () Bool)

(declare-fun e!3741792 () Bool)

(assert (=> d!1923601 e!3741792))

(declare-fun res!2544040 () Bool)

(assert (=> d!1923601 (=> (not res!2544040) (not e!3741792))))

(declare-fun res!2544039 () List!64546)

(assert (=> d!1923601 (= res!2544040 (noDuplicate!1929 res!2544039))))

(declare-fun e!3741791 () Bool)

(assert (=> d!1923601 e!3741791))

(assert (=> d!1923601 (= (choose!45617 z!1189) res!2544039)))

(declare-fun b!6139706 () Bool)

(declare-fun e!3741790 () Bool)

(declare-fun tp!1715367 () Bool)

(assert (=> b!6139706 (= e!3741790 tp!1715367)))

(declare-fun tp!1715368 () Bool)

(declare-fun b!6139705 () Bool)

(assert (=> b!6139705 (= e!3741791 (and (inv!83453 (h!70870 res!2544039)) e!3741790 tp!1715368))))

(declare-fun b!6139707 () Bool)

(assert (=> b!6139707 (= e!3741792 (= (content!11988 res!2544039) z!1189))))

(assert (= b!6139705 b!6139706))

(assert (= (and d!1923601 (is-Cons!64422 res!2544039)) b!6139705))

(assert (= (and d!1923601 res!2544040) b!6139707))

(declare-fun m!6981394 () Bool)

(assert (=> d!1923601 m!6981394))

(declare-fun m!6981396 () Bool)

(assert (=> b!6139705 m!6981396))

(declare-fun m!6981398 () Bool)

(assert (=> b!6139707 m!6981398))

(assert (=> d!1923293 d!1923601))

(declare-fun d!1923603 () Bool)

(assert (=> d!1923603 (= (nullable!6075 (regOne!32676 (regOne!32677 (regOne!32676 r!7292)))) (nullableFct!2039 (regOne!32676 (regOne!32677 (regOne!32676 r!7292)))))))

(declare-fun bs!1522503 () Bool)

(assert (= bs!1522503 d!1923603))

(declare-fun m!6981400 () Bool)

(assert (=> bs!1522503 m!6981400))

(assert (=> b!6138965 d!1923603))

(declare-fun d!1923605 () Bool)

(assert (=> d!1923605 (= (isEmpty!36371 (exprs!5966 (h!70870 zl!343))) (is-Nil!64421 (exprs!5966 (h!70870 zl!343))))))

(assert (=> b!6138897 d!1923605))

(declare-fun d!1923607 () Bool)

(assert (=> d!1923607 (= (nullable!6075 r!7292) (nullableFct!2039 r!7292))))

(declare-fun bs!1522504 () Bool)

(assert (= bs!1522504 d!1923607))

(declare-fun m!6981402 () Bool)

(assert (=> bs!1522504 m!6981402))

(assert (=> b!6138769 d!1923607))

(assert (=> b!6138693 d!1923281))

(declare-fun bs!1522505 () Bool)

(declare-fun d!1923609 () Bool)

(assert (= bs!1522505 (and d!1923609 d!1923581)))

(declare-fun lambda!334644 () Int)

(assert (=> bs!1522505 (= lambda!334644 lambda!334633)))

(declare-fun bs!1522506 () Bool)

(assert (= bs!1522506 (and d!1923609 d!1923589)))

(assert (=> bs!1522506 (= lambda!334644 lambda!334640)))

(declare-fun bs!1522507 () Bool)

(assert (= bs!1522507 (and d!1923609 d!1923593)))

(assert (=> bs!1522507 (= lambda!334644 lambda!334643)))

(assert (=> d!1923609 (= (nullableZipper!1863 lt!2332794) (exists!2429 lt!2332794 lambda!334644))))

(declare-fun bs!1522508 () Bool)

(assert (= bs!1522508 d!1923609))

(declare-fun m!6981404 () Bool)

(assert (=> bs!1522508 m!6981404))

(assert (=> b!6138689 d!1923609))

(declare-fun d!1923611 () Bool)

(assert (=> d!1923611 (= (nullable!6075 (h!70869 (exprs!5966 lt!2332810))) (nullableFct!2039 (h!70869 (exprs!5966 lt!2332810))))))

(declare-fun bs!1522509 () Bool)

(assert (= bs!1522509 d!1923611))

(declare-fun m!6981406 () Bool)

(assert (=> bs!1522509 m!6981406))

(assert (=> b!6138835 d!1923611))

(declare-fun d!1923613 () Bool)

(declare-fun c!1104313 () Bool)

(assert (=> d!1923613 (= c!1104313 (isEmpty!36374 (t!378024 s!2326)))))

(declare-fun e!3741793 () Bool)

(assert (=> d!1923613 (= (matchZipper!2094 (set.union lt!2332805 lt!2332811) (t!378024 s!2326)) e!3741793)))

(declare-fun b!6139708 () Bool)

(assert (=> b!6139708 (= e!3741793 (nullableZipper!1863 (set.union lt!2332805 lt!2332811)))))

(declare-fun b!6139709 () Bool)

(assert (=> b!6139709 (= e!3741793 (matchZipper!2094 (derivationStepZipper!2055 (set.union lt!2332805 lt!2332811) (head!12685 (t!378024 s!2326))) (tail!11770 (t!378024 s!2326))))))

(assert (= (and d!1923613 c!1104313) b!6139708))

(assert (= (and d!1923613 (not c!1104313)) b!6139709))

(assert (=> d!1923613 m!6980596))

(declare-fun m!6981408 () Bool)

(assert (=> b!6139708 m!6981408))

(assert (=> b!6139709 m!6980600))

(assert (=> b!6139709 m!6980600))

(declare-fun m!6981410 () Bool)

(assert (=> b!6139709 m!6981410))

(assert (=> b!6139709 m!6980604))

(assert (=> b!6139709 m!6981410))

(assert (=> b!6139709 m!6980604))

(declare-fun m!6981412 () Bool)

(assert (=> b!6139709 m!6981412))

(assert (=> d!1923277 d!1923613))

(assert (=> d!1923277 d!1923275))

(declare-fun d!1923615 () Bool)

(declare-fun e!3741794 () Bool)

(assert (=> d!1923615 (= (matchZipper!2094 (set.union lt!2332805 lt!2332811) (t!378024 s!2326)) e!3741794)))

(declare-fun res!2544041 () Bool)

(assert (=> d!1923615 (=> res!2544041 e!3741794)))

(assert (=> d!1923615 (= res!2544041 (matchZipper!2094 lt!2332805 (t!378024 s!2326)))))

(assert (=> d!1923615 true))

(declare-fun _$48!1641 () Unit!157483)

(assert (=> d!1923615 (= (choose!45615 lt!2332805 lt!2332811 (t!378024 s!2326)) _$48!1641)))

(declare-fun b!6139710 () Bool)

(assert (=> b!6139710 (= e!3741794 (matchZipper!2094 lt!2332811 (t!378024 s!2326)))))

(assert (= (and d!1923615 (not res!2544041)) b!6139710))

(assert (=> d!1923615 m!6980626))

(assert (=> d!1923615 m!6980480))

(assert (=> b!6139710 m!6980442))

(assert (=> d!1923277 d!1923615))

(declare-fun b!6139713 () Bool)

(declare-fun res!2544043 () Bool)

(declare-fun e!3741795 () Bool)

(assert (=> b!6139713 (=> (not res!2544043) (not e!3741795))))

(declare-fun lt!2332978 () List!64547)

(assert (=> b!6139713 (= res!2544043 (= (size!40225 lt!2332978) (+ (size!40225 (_1!36364 (get!22225 lt!2332907))) (size!40225 (_2!36364 (get!22225 lt!2332907))))))))

(declare-fun b!6139712 () Bool)

(declare-fun e!3741796 () List!64547)

(assert (=> b!6139712 (= e!3741796 (Cons!64423 (h!70871 (_1!36364 (get!22225 lt!2332907))) (++!14168 (t!378024 (_1!36364 (get!22225 lt!2332907))) (_2!36364 (get!22225 lt!2332907)))))))

(declare-fun d!1923617 () Bool)

(assert (=> d!1923617 e!3741795))

(declare-fun res!2544042 () Bool)

(assert (=> d!1923617 (=> (not res!2544042) (not e!3741795))))

(assert (=> d!1923617 (= res!2544042 (= (content!11990 lt!2332978) (set.union (content!11990 (_1!36364 (get!22225 lt!2332907))) (content!11990 (_2!36364 (get!22225 lt!2332907))))))))

(assert (=> d!1923617 (= lt!2332978 e!3741796)))

(declare-fun c!1104314 () Bool)

(assert (=> d!1923617 (= c!1104314 (is-Nil!64423 (_1!36364 (get!22225 lt!2332907))))))

(assert (=> d!1923617 (= (++!14168 (_1!36364 (get!22225 lt!2332907)) (_2!36364 (get!22225 lt!2332907))) lt!2332978)))

(declare-fun b!6139714 () Bool)

(assert (=> b!6139714 (= e!3741795 (or (not (= (_2!36364 (get!22225 lt!2332907)) Nil!64423)) (= lt!2332978 (_1!36364 (get!22225 lt!2332907)))))))

(declare-fun b!6139711 () Bool)

(assert (=> b!6139711 (= e!3741796 (_2!36364 (get!22225 lt!2332907)))))

(assert (= (and d!1923617 c!1104314) b!6139711))

(assert (= (and d!1923617 (not c!1104314)) b!6139712))

(assert (= (and d!1923617 res!2544042) b!6139713))

(assert (= (and b!6139713 res!2544043) b!6139714))

(declare-fun m!6981414 () Bool)

(assert (=> b!6139713 m!6981414))

(declare-fun m!6981416 () Bool)

(assert (=> b!6139713 m!6981416))

(declare-fun m!6981418 () Bool)

(assert (=> b!6139713 m!6981418))

(declare-fun m!6981420 () Bool)

(assert (=> b!6139712 m!6981420))

(declare-fun m!6981422 () Bool)

(assert (=> d!1923617 m!6981422))

(declare-fun m!6981424 () Bool)

(assert (=> d!1923617 m!6981424))

(declare-fun m!6981426 () Bool)

(assert (=> d!1923617 m!6981426))

(assert (=> b!6138862 d!1923617))

(assert (=> b!6138862 d!1923517))

(declare-fun b!6139715 () Bool)

(declare-fun e!3741801 () Bool)

(assert (=> b!6139715 (= e!3741801 (nullable!6075 (regOne!32676 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))))))))))

(declare-fun bm!509782 () Bool)

(declare-fun call!509790 () (Set Context!10932))

(declare-fun call!509788 () (Set Context!10932))

(assert (=> bm!509782 (= call!509790 call!509788)))

(declare-fun b!6139716 () Bool)

(declare-fun e!3741798 () (Set Context!10932))

(declare-fun call!509791 () (Set Context!10932))

(assert (=> b!6139716 (= e!3741798 (set.union call!509788 call!509791))))

(declare-fun b!6139717 () Bool)

(declare-fun e!3741802 () (Set Context!10932))

(declare-fun call!509787 () (Set Context!10932))

(assert (=> b!6139717 (= e!3741802 call!509787)))

(declare-fun bm!509783 () Bool)

(declare-fun call!509792 () List!64545)

(declare-fun call!509789 () List!64545)

(assert (=> bm!509783 (= call!509792 call!509789)))

(declare-fun b!6139718 () Bool)

(declare-fun e!3741797 () (Set Context!10932))

(assert (=> b!6139718 (= e!3741797 (as set.empty (Set Context!10932)))))

(declare-fun b!6139719 () Bool)

(declare-fun c!1104317 () Bool)

(assert (=> b!6139719 (= c!1104317 e!3741801)))

(declare-fun res!2544044 () Bool)

(assert (=> b!6139719 (=> (not res!2544044) (not e!3741801))))

(assert (=> b!6139719 (= res!2544044 (is-Concat!24927 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))))))

(declare-fun e!3741800 () (Set Context!10932))

(assert (=> b!6139719 (= e!3741798 e!3741800)))

(declare-fun c!1104316 () Bool)

(declare-fun c!1104315 () Bool)

(declare-fun bm!509784 () Bool)

(assert (=> bm!509784 (= call!509788 (derivationStepZipperDown!1330 (ite c!1104315 (regOne!32677 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (ite c!1104317 (regTwo!32676 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (ite c!1104316 (regOne!32676 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (reg!16411 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))))))))) (ite (or c!1104315 c!1104317) (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (Context!10933 call!509792)) (h!70871 s!2326)))))

(declare-fun b!6139720 () Bool)

(assert (=> b!6139720 (= e!3741800 e!3741802)))

(assert (=> b!6139720 (= c!1104316 (is-Concat!24927 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))))))

(declare-fun bm!509785 () Bool)

(assert (=> bm!509785 (= call!509789 ($colon$colon!1959 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))))))) (ite (or c!1104317 c!1104316) (regTwo!32676 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))))))))))

(declare-fun bm!509786 () Bool)

(assert (=> bm!509786 (= call!509787 call!509790)))

(declare-fun b!6139721 () Bool)

(assert (=> b!6139721 (= e!3741797 call!509787)))

(declare-fun b!6139722 () Bool)

(declare-fun e!3741799 () (Set Context!10932))

(assert (=> b!6139722 (= e!3741799 e!3741798)))

(assert (=> b!6139722 (= c!1104315 (is-Union!16082 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))))))

(declare-fun b!6139723 () Bool)

(declare-fun c!1104319 () Bool)

(assert (=> b!6139723 (= c!1104319 (is-Star!16082 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))))))

(assert (=> b!6139723 (= e!3741802 e!3741797)))

(declare-fun d!1923619 () Bool)

(declare-fun c!1104318 () Bool)

(assert (=> d!1923619 (= c!1104318 (and (is-ElementMatch!16082 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (= (c!1104020 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (h!70871 s!2326))))))

(assert (=> d!1923619 (= (derivationStepZipperDown!1330 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))))) (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (h!70871 s!2326)) e!3741799)))

(declare-fun b!6139724 () Bool)

(assert (=> b!6139724 (= e!3741799 (set.insert (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (as set.empty (Set Context!10932))))))

(declare-fun bm!509787 () Bool)

(assert (=> bm!509787 (= call!509791 (derivationStepZipperDown!1330 (ite c!1104315 (regTwo!32677 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (regOne!32676 (h!70869 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343))))))))) (ite c!1104315 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (Cons!64421 (h!70869 (exprs!5966 (h!70870 zl!343))) (t!378022 (exprs!5966 (h!70870 zl!343)))))))) (Context!10933 call!509789)) (h!70871 s!2326)))))

(declare-fun b!6139725 () Bool)

(assert (=> b!6139725 (= e!3741800 (set.union call!509791 call!509790))))

(assert (= (and d!1923619 c!1104318) b!6139724))

(assert (= (and d!1923619 (not c!1104318)) b!6139722))

(assert (= (and b!6139722 c!1104315) b!6139716))

(assert (= (and b!6139722 (not c!1104315)) b!6139719))

(assert (= (and b!6139719 res!2544044) b!6139715))

(assert (= (and b!6139719 c!1104317) b!6139725))

(assert (= (and b!6139719 (not c!1104317)) b!6139720))

(assert (= (and b!6139720 c!1104316) b!6139717))

(assert (= (and b!6139720 (not c!1104316)) b!6139723))

(assert (= (and b!6139723 c!1104319) b!6139721))

(assert (= (and b!6139723 (not c!1104319)) b!6139718))

(assert (= (or b!6139717 b!6139721) bm!509783))

(assert (= (or b!6139717 b!6139721) bm!509786))

(assert (= (or b!6139725 bm!509783) bm!509785))

(assert (= (or b!6139725 bm!509786) bm!509782))

(assert (= (or b!6139716 b!6139725) bm!509787))

(assert (= (or b!6139716 bm!509782) bm!509784))

(declare-fun m!6981428 () Bool)

(assert (=> bm!509787 m!6981428))

(declare-fun m!6981430 () Bool)

(assert (=> bm!509784 m!6981430))

(declare-fun m!6981432 () Bool)

(assert (=> b!6139715 m!6981432))

(declare-fun m!6981434 () Bool)

(assert (=> bm!509785 m!6981434))

(declare-fun m!6981436 () Bool)

(assert (=> b!6139724 m!6981436))

(assert (=> bm!509659 d!1923619))

(declare-fun b!6139726 () Bool)

(declare-fun e!3741807 () Bool)

(assert (=> b!6139726 (= e!3741807 (nullable!6075 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343))))))))

(declare-fun bm!509788 () Bool)

(declare-fun call!509796 () (Set Context!10932))

(declare-fun call!509794 () (Set Context!10932))

(assert (=> bm!509788 (= call!509796 call!509794)))

(declare-fun b!6139727 () Bool)

(declare-fun e!3741804 () (Set Context!10932))

(declare-fun call!509797 () (Set Context!10932))

(assert (=> b!6139727 (= e!3741804 (set.union call!509794 call!509797))))

(declare-fun b!6139728 () Bool)

(declare-fun e!3741808 () (Set Context!10932))

(declare-fun call!509793 () (Set Context!10932))

(assert (=> b!6139728 (= e!3741808 call!509793)))

(declare-fun bm!509789 () Bool)

(declare-fun call!509798 () List!64545)

(declare-fun call!509795 () List!64545)

(assert (=> bm!509789 (= call!509798 call!509795)))

(declare-fun b!6139729 () Bool)

(declare-fun e!3741803 () (Set Context!10932))

(assert (=> b!6139729 (= e!3741803 (as set.empty (Set Context!10932)))))

(declare-fun b!6139730 () Bool)

(declare-fun c!1104322 () Bool)

(assert (=> b!6139730 (= c!1104322 e!3741807)))

(declare-fun res!2544045 () Bool)

(assert (=> b!6139730 (=> (not res!2544045) (not e!3741807))))

(assert (=> b!6139730 (= res!2544045 (is-Concat!24927 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun e!3741806 () (Set Context!10932))

(assert (=> b!6139730 (= e!3741804 e!3741806)))

(declare-fun c!1104321 () Bool)

(declare-fun bm!509790 () Bool)

(declare-fun c!1104320 () Bool)

(assert (=> bm!509790 (= call!509794 (derivationStepZipperDown!1330 (ite c!1104320 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104322 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104321 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343))))))) (ite (or c!1104320 c!1104322) (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343)))) (Context!10933 call!509798)) (h!70871 s!2326)))))

(declare-fun b!6139731 () Bool)

(assert (=> b!6139731 (= e!3741806 e!3741808)))

(assert (=> b!6139731 (= c!1104321 (is-Concat!24927 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun bm!509791 () Bool)

(assert (=> bm!509791 (= call!509795 ($colon$colon!1959 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343))))) (ite (or c!1104322 c!1104321) (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (h!70869 (exprs!5966 (h!70870 zl!343))))))))

(declare-fun bm!509792 () Bool)

(assert (=> bm!509792 (= call!509793 call!509796)))

(declare-fun b!6139732 () Bool)

(assert (=> b!6139732 (= e!3741803 call!509793)))

(declare-fun b!6139733 () Bool)

(declare-fun e!3741805 () (Set Context!10932))

(assert (=> b!6139733 (= e!3741805 e!3741804)))

(assert (=> b!6139733 (= c!1104320 (is-Union!16082 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun b!6139734 () Bool)

(declare-fun c!1104324 () Bool)

(assert (=> b!6139734 (= c!1104324 (is-Star!16082 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(assert (=> b!6139734 (= e!3741808 e!3741803)))

(declare-fun d!1923621 () Bool)

(declare-fun c!1104323 () Bool)

(assert (=> d!1923621 (= c!1104323 (and (is-ElementMatch!16082 (h!70869 (exprs!5966 (h!70870 zl!343)))) (= (c!1104020 (h!70869 (exprs!5966 (h!70870 zl!343)))) (h!70871 s!2326))))))

(assert (=> d!1923621 (= (derivationStepZipperDown!1330 (h!70869 (exprs!5966 (h!70870 zl!343))) (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343)))) (h!70871 s!2326)) e!3741805)))

(declare-fun b!6139735 () Bool)

(assert (=> b!6139735 (= e!3741805 (set.insert (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343)))) (as set.empty (Set Context!10932))))))

(declare-fun bm!509793 () Bool)

(assert (=> bm!509793 (= call!509797 (derivationStepZipperDown!1330 (ite c!1104320 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343))))) (ite c!1104320 (Context!10933 (t!378022 (exprs!5966 (h!70870 zl!343)))) (Context!10933 call!509795)) (h!70871 s!2326)))))

(declare-fun b!6139736 () Bool)

(assert (=> b!6139736 (= e!3741806 (set.union call!509797 call!509796))))

(assert (= (and d!1923621 c!1104323) b!6139735))

(assert (= (and d!1923621 (not c!1104323)) b!6139733))

(assert (= (and b!6139733 c!1104320) b!6139727))

(assert (= (and b!6139733 (not c!1104320)) b!6139730))

(assert (= (and b!6139730 res!2544045) b!6139726))

(assert (= (and b!6139730 c!1104322) b!6139736))

(assert (= (and b!6139730 (not c!1104322)) b!6139731))

(assert (= (and b!6139731 c!1104321) b!6139728))

(assert (= (and b!6139731 (not c!1104321)) b!6139734))

(assert (= (and b!6139734 c!1104324) b!6139732))

(assert (= (and b!6139734 (not c!1104324)) b!6139729))

(assert (= (or b!6139728 b!6139732) bm!509789))

(assert (= (or b!6139728 b!6139732) bm!509792))

(assert (= (or b!6139736 bm!509789) bm!509791))

(assert (= (or b!6139736 bm!509792) bm!509788))

(assert (= (or b!6139727 b!6139736) bm!509793))

(assert (= (or b!6139727 bm!509788) bm!509790))

(declare-fun m!6981438 () Bool)

(assert (=> bm!509793 m!6981438))

(declare-fun m!6981440 () Bool)

(assert (=> bm!509790 m!6981440))

(assert (=> b!6139726 m!6980774))

(declare-fun m!6981442 () Bool)

(assert (=> bm!509791 m!6981442))

(declare-fun m!6981444 () Bool)

(assert (=> b!6139735 m!6981444))

(assert (=> bm!509660 d!1923621))

(declare-fun b!6139737 () Bool)

(declare-fun e!3741813 () Bool)

(assert (=> b!6139737 (= e!3741813 (nullable!6075 (regOne!32676 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343))))))))))

(declare-fun bm!509794 () Bool)

(declare-fun call!509802 () (Set Context!10932))

(declare-fun call!509800 () (Set Context!10932))

(assert (=> bm!509794 (= call!509802 call!509800)))

(declare-fun b!6139738 () Bool)

(declare-fun e!3741810 () (Set Context!10932))

(declare-fun call!509803 () (Set Context!10932))

(assert (=> b!6139738 (= e!3741810 (set.union call!509800 call!509803))))

(declare-fun b!6139739 () Bool)

(declare-fun e!3741814 () (Set Context!10932))

(declare-fun call!509799 () (Set Context!10932))

(assert (=> b!6139739 (= e!3741814 call!509799)))

(declare-fun bm!509795 () Bool)

(declare-fun call!509804 () List!64545)

(declare-fun call!509801 () List!64545)

(assert (=> bm!509795 (= call!509804 call!509801)))

(declare-fun b!6139740 () Bool)

(declare-fun e!3741809 () (Set Context!10932))

(assert (=> b!6139740 (= e!3741809 (as set.empty (Set Context!10932)))))

(declare-fun b!6139741 () Bool)

(declare-fun c!1104327 () Bool)

(assert (=> b!6139741 (= c!1104327 e!3741813)))

(declare-fun res!2544046 () Bool)

(assert (=> b!6139741 (=> (not res!2544046) (not e!3741813))))

(assert (=> b!6139741 (= res!2544046 (is-Concat!24927 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))))))))

(declare-fun e!3741812 () (Set Context!10932))

(assert (=> b!6139741 (= e!3741810 e!3741812)))

(declare-fun c!1104326 () Bool)

(declare-fun bm!509796 () Bool)

(declare-fun c!1104325 () Bool)

(assert (=> bm!509796 (= call!509800 (derivationStepZipperDown!1330 (ite c!1104325 (regOne!32677 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))))) (ite c!1104327 (regTwo!32676 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))))) (ite c!1104326 (regOne!32676 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))))) (reg!16411 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343))))))))) (ite (or c!1104325 c!1104327) (ite c!1104108 lt!2332796 (Context!10933 call!509659)) (Context!10933 call!509804)) (h!70871 s!2326)))))

(declare-fun b!6139742 () Bool)

(assert (=> b!6139742 (= e!3741812 e!3741814)))

(assert (=> b!6139742 (= c!1104326 (is-Concat!24927 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))))))))

(declare-fun bm!509797 () Bool)

(assert (=> bm!509797 (= call!509801 ($colon$colon!1959 (exprs!5966 (ite c!1104108 lt!2332796 (Context!10933 call!509659))) (ite (or c!1104327 c!1104326) (regTwo!32676 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))))) (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343))))))))))

(declare-fun bm!509798 () Bool)

(assert (=> bm!509798 (= call!509799 call!509802)))

(declare-fun b!6139743 () Bool)

(assert (=> b!6139743 (= e!3741809 call!509799)))

(declare-fun b!6139744 () Bool)

(declare-fun e!3741811 () (Set Context!10932))

(assert (=> b!6139744 (= e!3741811 e!3741810)))

(assert (=> b!6139744 (= c!1104325 (is-Union!16082 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))))))))

(declare-fun b!6139745 () Bool)

(declare-fun c!1104329 () Bool)

(assert (=> b!6139745 (= c!1104329 (is-Star!16082 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))))))))

(assert (=> b!6139745 (= e!3741814 e!3741809)))

(declare-fun c!1104328 () Bool)

(declare-fun d!1923623 () Bool)

(assert (=> d!1923623 (= c!1104328 (and (is-ElementMatch!16082 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))))) (= (c!1104020 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))))) (h!70871 s!2326))))))

(assert (=> d!1923623 (= (derivationStepZipperDown!1330 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343))))) (ite c!1104108 lt!2332796 (Context!10933 call!509659)) (h!70871 s!2326)) e!3741811)))

(declare-fun b!6139746 () Bool)

(assert (=> b!6139746 (= e!3741811 (set.insert (ite c!1104108 lt!2332796 (Context!10933 call!509659)) (as set.empty (Set Context!10932))))))

(declare-fun bm!509799 () Bool)

(assert (=> bm!509799 (= call!509803 (derivationStepZipperDown!1330 (ite c!1104325 (regTwo!32677 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))))) (regOne!32676 (ite c!1104108 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343))))))) (ite c!1104325 (ite c!1104108 lt!2332796 (Context!10933 call!509659)) (Context!10933 call!509801)) (h!70871 s!2326)))))

(declare-fun b!6139747 () Bool)

(assert (=> b!6139747 (= e!3741812 (set.union call!509803 call!509802))))

(assert (= (and d!1923623 c!1104328) b!6139746))

(assert (= (and d!1923623 (not c!1104328)) b!6139744))

(assert (= (and b!6139744 c!1104325) b!6139738))

(assert (= (and b!6139744 (not c!1104325)) b!6139741))

(assert (= (and b!6139741 res!2544046) b!6139737))

(assert (= (and b!6139741 c!1104327) b!6139747))

(assert (= (and b!6139741 (not c!1104327)) b!6139742))

(assert (= (and b!6139742 c!1104326) b!6139739))

(assert (= (and b!6139742 (not c!1104326)) b!6139745))

(assert (= (and b!6139745 c!1104329) b!6139743))

(assert (= (and b!6139745 (not c!1104329)) b!6139740))

(assert (= (or b!6139739 b!6139743) bm!509795))

(assert (= (or b!6139739 b!6139743) bm!509798))

(assert (= (or b!6139747 bm!509795) bm!509797))

(assert (= (or b!6139747 bm!509798) bm!509794))

(assert (= (or b!6139738 b!6139747) bm!509799))

(assert (= (or b!6139738 bm!509794) bm!509796))

(declare-fun m!6981446 () Bool)

(assert (=> bm!509799 m!6981446))

(declare-fun m!6981448 () Bool)

(assert (=> bm!509796 m!6981448))

(declare-fun m!6981450 () Bool)

(assert (=> b!6139737 m!6981450))

(declare-fun m!6981452 () Bool)

(assert (=> bm!509797 m!6981452))

(declare-fun m!6981454 () Bool)

(assert (=> b!6139746 m!6981454))

(assert (=> bm!509657 d!1923623))

(declare-fun b!6139748 () Bool)

(declare-fun res!2544051 () Bool)

(declare-fun e!3741821 () Bool)

(assert (=> b!6139748 (=> (not res!2544051) (not e!3741821))))

(declare-fun call!509805 () Bool)

(assert (=> b!6139748 (= res!2544051 (not call!509805))))

(declare-fun bm!509800 () Bool)

(assert (=> bm!509800 (= call!509805 (isEmpty!36374 (_1!36364 (get!22225 lt!2332907))))))

(declare-fun b!6139749 () Bool)

(declare-fun res!2544049 () Bool)

(declare-fun e!3741818 () Bool)

(assert (=> b!6139749 (=> res!2544049 e!3741818)))

(assert (=> b!6139749 (= res!2544049 e!3741821)))

(declare-fun res!2544052 () Bool)

(assert (=> b!6139749 (=> (not res!2544052) (not e!3741821))))

(declare-fun lt!2332979 () Bool)

(assert (=> b!6139749 (= res!2544052 lt!2332979)))

(declare-fun b!6139750 () Bool)

(declare-fun e!3741819 () Bool)

(assert (=> b!6139750 (= e!3741819 (nullable!6075 (regOne!32676 r!7292)))))

(declare-fun b!6139751 () Bool)

(declare-fun e!3741820 () Bool)

(declare-fun e!3741817 () Bool)

(assert (=> b!6139751 (= e!3741820 e!3741817)))

(declare-fun c!1104330 () Bool)

(assert (=> b!6139751 (= c!1104330 (is-EmptyLang!16082 (regOne!32676 r!7292)))))

(declare-fun b!6139752 () Bool)

(declare-fun e!3741815 () Bool)

(declare-fun e!3741816 () Bool)

(assert (=> b!6139752 (= e!3741815 e!3741816)))

(declare-fun res!2544053 () Bool)

(assert (=> b!6139752 (=> res!2544053 e!3741816)))

(assert (=> b!6139752 (= res!2544053 call!509805)))

(declare-fun b!6139753 () Bool)

(assert (=> b!6139753 (= e!3741818 e!3741815)))

(declare-fun res!2544050 () Bool)

(assert (=> b!6139753 (=> (not res!2544050) (not e!3741815))))

(assert (=> b!6139753 (= res!2544050 (not lt!2332979))))

(declare-fun b!6139754 () Bool)

(assert (=> b!6139754 (= e!3741819 (matchR!8265 (derivativeStep!4802 (regOne!32676 r!7292) (head!12685 (_1!36364 (get!22225 lt!2332907)))) (tail!11770 (_1!36364 (get!22225 lt!2332907)))))))

(declare-fun b!6139755 () Bool)

(assert (=> b!6139755 (= e!3741820 (= lt!2332979 call!509805))))

(declare-fun d!1923625 () Bool)

(assert (=> d!1923625 e!3741820))

(declare-fun c!1104331 () Bool)

(assert (=> d!1923625 (= c!1104331 (is-EmptyExpr!16082 (regOne!32676 r!7292)))))

(assert (=> d!1923625 (= lt!2332979 e!3741819)))

(declare-fun c!1104332 () Bool)

(assert (=> d!1923625 (= c!1104332 (isEmpty!36374 (_1!36364 (get!22225 lt!2332907))))))

(assert (=> d!1923625 (validRegex!7818 (regOne!32676 r!7292))))

(assert (=> d!1923625 (= (matchR!8265 (regOne!32676 r!7292) (_1!36364 (get!22225 lt!2332907))) lt!2332979)))

(declare-fun b!6139756 () Bool)

(declare-fun res!2544054 () Bool)

(assert (=> b!6139756 (=> res!2544054 e!3741818)))

(assert (=> b!6139756 (= res!2544054 (not (is-ElementMatch!16082 (regOne!32676 r!7292))))))

(assert (=> b!6139756 (= e!3741817 e!3741818)))

(declare-fun b!6139757 () Bool)

(declare-fun res!2544047 () Bool)

(assert (=> b!6139757 (=> res!2544047 e!3741816)))

(assert (=> b!6139757 (= res!2544047 (not (isEmpty!36374 (tail!11770 (_1!36364 (get!22225 lt!2332907))))))))

(declare-fun b!6139758 () Bool)

(assert (=> b!6139758 (= e!3741817 (not lt!2332979))))

(declare-fun b!6139759 () Bool)

(assert (=> b!6139759 (= e!3741821 (= (head!12685 (_1!36364 (get!22225 lt!2332907))) (c!1104020 (regOne!32676 r!7292))))))

(declare-fun b!6139760 () Bool)

(assert (=> b!6139760 (= e!3741816 (not (= (head!12685 (_1!36364 (get!22225 lt!2332907))) (c!1104020 (regOne!32676 r!7292)))))))

(declare-fun b!6139761 () Bool)

(declare-fun res!2544048 () Bool)

(assert (=> b!6139761 (=> (not res!2544048) (not e!3741821))))

(assert (=> b!6139761 (= res!2544048 (isEmpty!36374 (tail!11770 (_1!36364 (get!22225 lt!2332907)))))))

(assert (= (and d!1923625 c!1104332) b!6139750))

(assert (= (and d!1923625 (not c!1104332)) b!6139754))

(assert (= (and d!1923625 c!1104331) b!6139755))

(assert (= (and d!1923625 (not c!1104331)) b!6139751))

(assert (= (and b!6139751 c!1104330) b!6139758))

(assert (= (and b!6139751 (not c!1104330)) b!6139756))

(assert (= (and b!6139756 (not res!2544054)) b!6139749))

(assert (= (and b!6139749 res!2544052) b!6139748))

(assert (= (and b!6139748 res!2544051) b!6139761))

(assert (= (and b!6139761 res!2544048) b!6139759))

(assert (= (and b!6139749 (not res!2544049)) b!6139753))

(assert (= (and b!6139753 res!2544050) b!6139752))

(assert (= (and b!6139752 (not res!2544053)) b!6139757))

(assert (= (and b!6139757 (not res!2544047)) b!6139760))

(assert (= (or b!6139755 b!6139748 b!6139752) bm!509800))

(declare-fun m!6981456 () Bool)

(assert (=> b!6139754 m!6981456))

(assert (=> b!6139754 m!6981456))

(declare-fun m!6981458 () Bool)

(assert (=> b!6139754 m!6981458))

(declare-fun m!6981460 () Bool)

(assert (=> b!6139754 m!6981460))

(assert (=> b!6139754 m!6981458))

(assert (=> b!6139754 m!6981460))

(declare-fun m!6981462 () Bool)

(assert (=> b!6139754 m!6981462))

(declare-fun m!6981464 () Bool)

(assert (=> d!1923625 m!6981464))

(assert (=> d!1923625 m!6980726))

(assert (=> b!6139761 m!6981460))

(assert (=> b!6139761 m!6981460))

(declare-fun m!6981466 () Bool)

(assert (=> b!6139761 m!6981466))

(assert (=> b!6139750 m!6981152))

(assert (=> b!6139757 m!6981460))

(assert (=> b!6139757 m!6981460))

(assert (=> b!6139757 m!6981466))

(assert (=> bm!509800 m!6981464))

(assert (=> b!6139759 m!6981456))

(assert (=> b!6139760 m!6981456))

(assert (=> b!6138857 d!1923625))

(assert (=> b!6138857 d!1923517))

(declare-fun d!1923627 () Bool)

(assert (=> d!1923627 (= (isEmpty!36371 (tail!11771 (unfocusZipperList!1503 zl!343))) (is-Nil!64421 (tail!11771 (unfocusZipperList!1503 zl!343))))))

(assert (=> b!6138810 d!1923627))

(declare-fun d!1923629 () Bool)

(assert (=> d!1923629 (= (tail!11771 (unfocusZipperList!1503 zl!343)) (t!378022 (unfocusZipperList!1503 zl!343)))))

(assert (=> b!6138810 d!1923629))

(declare-fun bs!1522510 () Bool)

(declare-fun d!1923631 () Bool)

(assert (= bs!1522510 (and d!1923631 d!1923581)))

(declare-fun lambda!334645 () Int)

(assert (=> bs!1522510 (= lambda!334645 lambda!334633)))

(declare-fun bs!1522511 () Bool)

(assert (= bs!1522511 (and d!1923631 d!1923589)))

(assert (=> bs!1522511 (= lambda!334645 lambda!334640)))

(declare-fun bs!1522512 () Bool)

(assert (= bs!1522512 (and d!1923631 d!1923593)))

(assert (=> bs!1522512 (= lambda!334645 lambda!334643)))

(declare-fun bs!1522513 () Bool)

(assert (= bs!1522513 (and d!1923631 d!1923609)))

(assert (=> bs!1522513 (= lambda!334645 lambda!334644)))

(assert (=> d!1923631 (= (nullableZipper!1863 lt!2332805) (exists!2429 lt!2332805 lambda!334645))))

(declare-fun bs!1522514 () Bool)

(assert (= bs!1522514 d!1923631))

(declare-fun m!6981468 () Bool)

(assert (=> bs!1522514 m!6981468))

(assert (=> b!6138691 d!1923631))

(declare-fun bs!1522515 () Bool)

(declare-fun d!1923633 () Bool)

(assert (= bs!1522515 (and d!1923633 d!1923589)))

(declare-fun lambda!334646 () Int)

(assert (=> bs!1522515 (= lambda!334646 lambda!334640)))

(declare-fun bs!1522516 () Bool)

(assert (= bs!1522516 (and d!1923633 d!1923581)))

(assert (=> bs!1522516 (= lambda!334646 lambda!334633)))

(declare-fun bs!1522517 () Bool)

(assert (= bs!1522517 (and d!1923633 d!1923609)))

(assert (=> bs!1522517 (= lambda!334646 lambda!334644)))

(declare-fun bs!1522518 () Bool)

(assert (= bs!1522518 (and d!1923633 d!1923593)))

(assert (=> bs!1522518 (= lambda!334646 lambda!334643)))

(declare-fun bs!1522519 () Bool)

(assert (= bs!1522519 (and d!1923633 d!1923631)))

(assert (=> bs!1522519 (= lambda!334646 lambda!334645)))

(assert (=> d!1923633 (= (nullableZipper!1863 lt!2332806) (exists!2429 lt!2332806 lambda!334646))))

(declare-fun bs!1522520 () Bool)

(assert (= bs!1522520 d!1923633))

(declare-fun m!6981470 () Bool)

(assert (=> bs!1522520 m!6981470))

(assert (=> b!6138685 d!1923633))

(declare-fun b!6139762 () Bool)

(declare-fun e!3741826 () Bool)

(assert (=> b!6139762 (= e!3741826 (nullable!6075 (regOne!32676 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292)))))))))))

(declare-fun bm!509801 () Bool)

(declare-fun call!509809 () (Set Context!10932))

(declare-fun call!509807 () (Set Context!10932))

(assert (=> bm!509801 (= call!509809 call!509807)))

(declare-fun b!6139763 () Bool)

(declare-fun e!3741823 () (Set Context!10932))

(declare-fun call!509810 () (Set Context!10932))

(assert (=> b!6139763 (= e!3741823 (set.union call!509807 call!509810))))

(declare-fun b!6139764 () Bool)

(declare-fun e!3741827 () (Set Context!10932))

(declare-fun call!509806 () (Set Context!10932))

(assert (=> b!6139764 (= e!3741827 call!509806)))

(declare-fun bm!509802 () Bool)

(declare-fun call!509811 () List!64545)

(declare-fun call!509808 () List!64545)

(assert (=> bm!509802 (= call!509811 call!509808)))

(declare-fun b!6139765 () Bool)

(declare-fun e!3741822 () (Set Context!10932))

(assert (=> b!6139765 (= e!3741822 (as set.empty (Set Context!10932)))))

(declare-fun b!6139766 () Bool)

(declare-fun c!1104335 () Bool)

(assert (=> b!6139766 (= c!1104335 e!3741826)))

(declare-fun res!2544055 () Bool)

(assert (=> b!6139766 (=> (not res!2544055) (not e!3741826))))

(assert (=> b!6139766 (= res!2544055 (is-Concat!24927 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292))))))))))

(declare-fun e!3741825 () (Set Context!10932))

(assert (=> b!6139766 (= e!3741823 e!3741825)))

(declare-fun bm!509803 () Bool)

(declare-fun c!1104334 () Bool)

(declare-fun c!1104333 () Bool)

(assert (=> bm!509803 (= call!509807 (derivationStepZipperDown!1330 (ite c!1104333 (regOne!32677 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292))))))) (ite c!1104335 (regTwo!32676 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292))))))) (ite c!1104334 (regOne!32676 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292))))))) (reg!16411 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292)))))))))) (ite (or c!1104333 c!1104335) (ite (or c!1104119 c!1104121) lt!2332796 (Context!10933 call!509671)) (Context!10933 call!509811)) (h!70871 s!2326)))))

(declare-fun b!6139767 () Bool)

(assert (=> b!6139767 (= e!3741825 e!3741827)))

(assert (=> b!6139767 (= c!1104334 (is-Concat!24927 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292))))))))))

(declare-fun bm!509804 () Bool)

(assert (=> bm!509804 (= call!509808 ($colon$colon!1959 (exprs!5966 (ite (or c!1104119 c!1104121) lt!2332796 (Context!10933 call!509671))) (ite (or c!1104335 c!1104334) (regTwo!32676 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292))))))) (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292)))))))))))

(declare-fun bm!509805 () Bool)

(assert (=> bm!509805 (= call!509806 call!509809)))

(declare-fun b!6139768 () Bool)

(assert (=> b!6139768 (= e!3741822 call!509806)))

(declare-fun b!6139769 () Bool)

(declare-fun e!3741824 () (Set Context!10932))

(assert (=> b!6139769 (= e!3741824 e!3741823)))

(assert (=> b!6139769 (= c!1104333 (is-Union!16082 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292))))))))))

(declare-fun b!6139770 () Bool)

(declare-fun c!1104337 () Bool)

(assert (=> b!6139770 (= c!1104337 (is-Star!16082 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292))))))))))

(assert (=> b!6139770 (= e!3741827 e!3741822)))

(declare-fun d!1923635 () Bool)

(declare-fun c!1104336 () Bool)

(assert (=> d!1923635 (= c!1104336 (and (is-ElementMatch!16082 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292))))))) (= (c!1104020 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292))))))) (h!70871 s!2326))))))

(assert (=> d!1923635 (= (derivationStepZipperDown!1330 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292)))))) (ite (or c!1104119 c!1104121) lt!2332796 (Context!10933 call!509671)) (h!70871 s!2326)) e!3741824)))

(declare-fun b!6139771 () Bool)

(assert (=> b!6139771 (= e!3741824 (set.insert (ite (or c!1104119 c!1104121) lt!2332796 (Context!10933 call!509671)) (as set.empty (Set Context!10932))))))

(declare-fun bm!509806 () Bool)

(assert (=> bm!509806 (= call!509810 (derivationStepZipperDown!1330 (ite c!1104333 (regTwo!32677 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292))))))) (regOne!32676 (ite c!1104119 (regOne!32677 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104121 (regTwo!32676 (regTwo!32677 (regOne!32676 r!7292))) (ite c!1104120 (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))) (reg!16411 (regTwo!32677 (regOne!32676 r!7292)))))))) (ite c!1104333 (ite (or c!1104119 c!1104121) lt!2332796 (Context!10933 call!509671)) (Context!10933 call!509808)) (h!70871 s!2326)))))

(declare-fun b!6139772 () Bool)

(assert (=> b!6139772 (= e!3741825 (set.union call!509810 call!509809))))

(assert (= (and d!1923635 c!1104336) b!6139771))

(assert (= (and d!1923635 (not c!1104336)) b!6139769))

(assert (= (and b!6139769 c!1104333) b!6139763))

(assert (= (and b!6139769 (not c!1104333)) b!6139766))

(assert (= (and b!6139766 res!2544055) b!6139762))

(assert (= (and b!6139766 c!1104335) b!6139772))

(assert (= (and b!6139766 (not c!1104335)) b!6139767))

(assert (= (and b!6139767 c!1104334) b!6139764))

(assert (= (and b!6139767 (not c!1104334)) b!6139770))

(assert (= (and b!6139770 c!1104337) b!6139768))

(assert (= (and b!6139770 (not c!1104337)) b!6139765))

(assert (= (or b!6139764 b!6139768) bm!509802))

(assert (= (or b!6139764 b!6139768) bm!509805))

(assert (= (or b!6139772 bm!509802) bm!509804))

(assert (= (or b!6139772 bm!509805) bm!509801))

(assert (= (or b!6139763 b!6139772) bm!509806))

(assert (= (or b!6139763 bm!509801) bm!509803))

(declare-fun m!6981472 () Bool)

(assert (=> bm!509806 m!6981472))

(declare-fun m!6981474 () Bool)

(assert (=> bm!509803 m!6981474))

(declare-fun m!6981476 () Bool)

(assert (=> b!6139762 m!6981476))

(declare-fun m!6981478 () Bool)

(assert (=> bm!509804 m!6981478))

(declare-fun m!6981480 () Bool)

(assert (=> b!6139771 m!6981480))

(assert (=> bm!509663 d!1923635))

(declare-fun d!1923637 () Bool)

(assert (=> d!1923637 (= (isUnion!939 lt!2332890) (is-Union!16082 lt!2332890))))

(assert (=> b!6138806 d!1923637))

(assert (=> d!1923325 d!1923333))

(declare-fun d!1923639 () Bool)

(assert (=> d!1923639 (= (flatMap!1587 z!1189 lambda!334542) (dynLambda!25385 lambda!334542 (h!70870 zl!343)))))

(assert (=> d!1923639 true))

(declare-fun _$13!3023 () Unit!157483)

(assert (=> d!1923639 (= (choose!45619 z!1189 (h!70870 zl!343) lambda!334542) _$13!3023)))

(declare-fun b_lambda!233675 () Bool)

(assert (=> (not b_lambda!233675) (not d!1923639)))

(declare-fun bs!1522521 () Bool)

(assert (= bs!1522521 d!1923639))

(assert (=> bs!1522521 m!6980456))

(assert (=> bs!1522521 m!6980786))

(assert (=> d!1923325 d!1923639))

(assert (=> d!1923287 d!1923285))

(assert (=> d!1923287 d!1923283))

(declare-fun d!1923641 () Bool)

(assert (=> d!1923641 (= (matchR!8265 r!7292 s!2326) (matchRSpec!3183 r!7292 s!2326))))

(assert (=> d!1923641 true))

(declare-fun _$88!4665 () Unit!157483)

(assert (=> d!1923641 (= (choose!45616 r!7292 s!2326) _$88!4665)))

(declare-fun bs!1522522 () Bool)

(assert (= bs!1522522 d!1923641))

(assert (=> bs!1522522 m!6980450))

(assert (=> bs!1522522 m!6980448))

(assert (=> d!1923287 d!1923641))

(assert (=> d!1923287 d!1923339))

(declare-fun b!6139773 () Bool)

(declare-fun res!2544060 () Bool)

(declare-fun e!3741834 () Bool)

(assert (=> b!6139773 (=> (not res!2544060) (not e!3741834))))

(declare-fun call!509812 () Bool)

(assert (=> b!6139773 (= res!2544060 (not call!509812))))

(declare-fun bm!509807 () Bool)

(assert (=> bm!509807 (= call!509812 (isEmpty!36374 (tail!11770 s!2326)))))

(declare-fun b!6139774 () Bool)

(declare-fun res!2544058 () Bool)

(declare-fun e!3741831 () Bool)

(assert (=> b!6139774 (=> res!2544058 e!3741831)))

(assert (=> b!6139774 (= res!2544058 e!3741834)))

(declare-fun res!2544061 () Bool)

(assert (=> b!6139774 (=> (not res!2544061) (not e!3741834))))

(declare-fun lt!2332980 () Bool)

(assert (=> b!6139774 (= res!2544061 lt!2332980)))

(declare-fun b!6139775 () Bool)

(declare-fun e!3741832 () Bool)

(assert (=> b!6139775 (= e!3741832 (nullable!6075 (derivativeStep!4802 r!7292 (head!12685 s!2326))))))

(declare-fun b!6139776 () Bool)

(declare-fun e!3741833 () Bool)

(declare-fun e!3741830 () Bool)

(assert (=> b!6139776 (= e!3741833 e!3741830)))

(declare-fun c!1104338 () Bool)

(assert (=> b!6139776 (= c!1104338 (is-EmptyLang!16082 (derivativeStep!4802 r!7292 (head!12685 s!2326))))))

(declare-fun b!6139777 () Bool)

(declare-fun e!3741828 () Bool)

(declare-fun e!3741829 () Bool)

(assert (=> b!6139777 (= e!3741828 e!3741829)))

(declare-fun res!2544062 () Bool)

(assert (=> b!6139777 (=> res!2544062 e!3741829)))

(assert (=> b!6139777 (= res!2544062 call!509812)))

(declare-fun b!6139778 () Bool)

(assert (=> b!6139778 (= e!3741831 e!3741828)))

(declare-fun res!2544059 () Bool)

(assert (=> b!6139778 (=> (not res!2544059) (not e!3741828))))

(assert (=> b!6139778 (= res!2544059 (not lt!2332980))))

(declare-fun b!6139779 () Bool)

(assert (=> b!6139779 (= e!3741832 (matchR!8265 (derivativeStep!4802 (derivativeStep!4802 r!7292 (head!12685 s!2326)) (head!12685 (tail!11770 s!2326))) (tail!11770 (tail!11770 s!2326))))))

(declare-fun b!6139780 () Bool)

(assert (=> b!6139780 (= e!3741833 (= lt!2332980 call!509812))))

(declare-fun d!1923643 () Bool)

(assert (=> d!1923643 e!3741833))

(declare-fun c!1104339 () Bool)

(assert (=> d!1923643 (= c!1104339 (is-EmptyExpr!16082 (derivativeStep!4802 r!7292 (head!12685 s!2326))))))

(assert (=> d!1923643 (= lt!2332980 e!3741832)))

(declare-fun c!1104340 () Bool)

(assert (=> d!1923643 (= c!1104340 (isEmpty!36374 (tail!11770 s!2326)))))

(assert (=> d!1923643 (validRegex!7818 (derivativeStep!4802 r!7292 (head!12685 s!2326)))))

(assert (=> d!1923643 (= (matchR!8265 (derivativeStep!4802 r!7292 (head!12685 s!2326)) (tail!11770 s!2326)) lt!2332980)))

(declare-fun b!6139781 () Bool)

(declare-fun res!2544063 () Bool)

(assert (=> b!6139781 (=> res!2544063 e!3741831)))

(assert (=> b!6139781 (= res!2544063 (not (is-ElementMatch!16082 (derivativeStep!4802 r!7292 (head!12685 s!2326)))))))

(assert (=> b!6139781 (= e!3741830 e!3741831)))

(declare-fun b!6139782 () Bool)

(declare-fun res!2544056 () Bool)

(assert (=> b!6139782 (=> res!2544056 e!3741829)))

(assert (=> b!6139782 (= res!2544056 (not (isEmpty!36374 (tail!11770 (tail!11770 s!2326)))))))

(declare-fun b!6139783 () Bool)

(assert (=> b!6139783 (= e!3741830 (not lt!2332980))))

(declare-fun b!6139784 () Bool)

(assert (=> b!6139784 (= e!3741834 (= (head!12685 (tail!11770 s!2326)) (c!1104020 (derivativeStep!4802 r!7292 (head!12685 s!2326)))))))

(declare-fun b!6139785 () Bool)

(assert (=> b!6139785 (= e!3741829 (not (= (head!12685 (tail!11770 s!2326)) (c!1104020 (derivativeStep!4802 r!7292 (head!12685 s!2326))))))))

(declare-fun b!6139786 () Bool)

(declare-fun res!2544057 () Bool)

(assert (=> b!6139786 (=> (not res!2544057) (not e!3741834))))

(assert (=> b!6139786 (= res!2544057 (isEmpty!36374 (tail!11770 (tail!11770 s!2326))))))

(assert (= (and d!1923643 c!1104340) b!6139775))

(assert (= (and d!1923643 (not c!1104340)) b!6139779))

(assert (= (and d!1923643 c!1104339) b!6139780))

(assert (= (and d!1923643 (not c!1104339)) b!6139776))

(assert (= (and b!6139776 c!1104338) b!6139783))

(assert (= (and b!6139776 (not c!1104338)) b!6139781))

(assert (= (and b!6139781 (not res!2544063)) b!6139774))

(assert (= (and b!6139774 res!2544061) b!6139773))

(assert (= (and b!6139773 res!2544060) b!6139786))

(assert (= (and b!6139786 res!2544057) b!6139784))

(assert (= (and b!6139774 (not res!2544058)) b!6139778))

(assert (= (and b!6139778 res!2544059) b!6139777))

(assert (= (and b!6139777 (not res!2544062)) b!6139782))

(assert (= (and b!6139782 (not res!2544056)) b!6139785))

(assert (= (or b!6139780 b!6139773 b!6139777) bm!509807))

(assert (=> b!6139779 m!6980650))

(declare-fun m!6981482 () Bool)

(assert (=> b!6139779 m!6981482))

(assert (=> b!6139779 m!6980648))

(assert (=> b!6139779 m!6981482))

(declare-fun m!6981484 () Bool)

(assert (=> b!6139779 m!6981484))

(assert (=> b!6139779 m!6980650))

(declare-fun m!6981486 () Bool)

(assert (=> b!6139779 m!6981486))

(assert (=> b!6139779 m!6981484))

(assert (=> b!6139779 m!6981486))

(declare-fun m!6981488 () Bool)

(assert (=> b!6139779 m!6981488))

(assert (=> d!1923643 m!6980650))

(assert (=> d!1923643 m!6980654))

(assert (=> d!1923643 m!6980648))

(declare-fun m!6981490 () Bool)

(assert (=> d!1923643 m!6981490))

(assert (=> b!6139786 m!6980650))

(assert (=> b!6139786 m!6981486))

(assert (=> b!6139786 m!6981486))

(declare-fun m!6981492 () Bool)

(assert (=> b!6139786 m!6981492))

(assert (=> b!6139775 m!6980648))

(declare-fun m!6981494 () Bool)

(assert (=> b!6139775 m!6981494))

(assert (=> b!6139782 m!6980650))

(assert (=> b!6139782 m!6981486))

(assert (=> b!6139782 m!6981486))

(assert (=> b!6139782 m!6981492))

(assert (=> bm!509807 m!6980650))

(assert (=> bm!509807 m!6980654))

(assert (=> b!6139784 m!6980650))

(assert (=> b!6139784 m!6981482))

(assert (=> b!6139785 m!6980650))

(assert (=> b!6139785 m!6981482))

(assert (=> b!6138773 d!1923643))

(declare-fun b!6139807 () Bool)

(declare-fun e!3741846 () Regex!16082)

(declare-fun e!3741847 () Regex!16082)

(assert (=> b!6139807 (= e!3741846 e!3741847)))

(declare-fun c!1104352 () Bool)

(assert (=> b!6139807 (= c!1104352 (is-ElementMatch!16082 r!7292))))

(declare-fun b!6139808 () Bool)

(assert (=> b!6139808 (= e!3741846 EmptyLang!16082)))

(declare-fun b!6139809 () Bool)

(declare-fun e!3741848 () Regex!16082)

(declare-fun call!509821 () Regex!16082)

(assert (=> b!6139809 (= e!3741848 (Union!16082 (Concat!24927 call!509821 (regTwo!32676 r!7292)) EmptyLang!16082))))

(declare-fun call!509823 () Regex!16082)

(declare-fun b!6139810 () Bool)

(assert (=> b!6139810 (= e!3741848 (Union!16082 (Concat!24927 call!509823 (regTwo!32676 r!7292)) call!509821))))

(declare-fun b!6139811 () Bool)

(declare-fun e!3741849 () Regex!16082)

(declare-fun call!509822 () Regex!16082)

(assert (=> b!6139811 (= e!3741849 (Concat!24927 call!509822 r!7292))))

(declare-fun bm!509816 () Bool)

(declare-fun c!1104353 () Bool)

(assert (=> bm!509816 (= call!509823 (derivativeStep!4802 (ite c!1104353 (regOne!32677 r!7292) (regOne!32676 r!7292)) (head!12685 s!2326)))))

(declare-fun d!1923645 () Bool)

(declare-fun lt!2332983 () Regex!16082)

(assert (=> d!1923645 (validRegex!7818 lt!2332983)))

(assert (=> d!1923645 (= lt!2332983 e!3741846)))

(declare-fun c!1104351 () Bool)

(assert (=> d!1923645 (= c!1104351 (or (is-EmptyExpr!16082 r!7292) (is-EmptyLang!16082 r!7292)))))

(assert (=> d!1923645 (validRegex!7818 r!7292)))

(assert (=> d!1923645 (= (derivativeStep!4802 r!7292 (head!12685 s!2326)) lt!2332983)))

(declare-fun b!6139812 () Bool)

(declare-fun e!3741845 () Regex!16082)

(declare-fun call!509824 () Regex!16082)

(assert (=> b!6139812 (= e!3741845 (Union!16082 call!509823 call!509824))))

(declare-fun b!6139813 () Bool)

(assert (=> b!6139813 (= c!1104353 (is-Union!16082 r!7292))))

(assert (=> b!6139813 (= e!3741847 e!3741845)))

(declare-fun c!1104355 () Bool)

(declare-fun bm!509817 () Bool)

(declare-fun c!1104354 () Bool)

(assert (=> bm!509817 (= call!509824 (derivativeStep!4802 (ite c!1104353 (regTwo!32677 r!7292) (ite c!1104354 (reg!16411 r!7292) (ite c!1104355 (regTwo!32676 r!7292) (regOne!32676 r!7292)))) (head!12685 s!2326)))))

(declare-fun bm!509818 () Bool)

(assert (=> bm!509818 (= call!509822 call!509824)))

(declare-fun b!6139814 () Bool)

(assert (=> b!6139814 (= e!3741845 e!3741849)))

(assert (=> b!6139814 (= c!1104354 (is-Star!16082 r!7292))))

(declare-fun b!6139815 () Bool)

(assert (=> b!6139815 (= e!3741847 (ite (= (head!12685 s!2326) (c!1104020 r!7292)) EmptyExpr!16082 EmptyLang!16082))))

(declare-fun bm!509819 () Bool)

(assert (=> bm!509819 (= call!509821 call!509822)))

(declare-fun b!6139816 () Bool)

(assert (=> b!6139816 (= c!1104355 (nullable!6075 (regOne!32676 r!7292)))))

(assert (=> b!6139816 (= e!3741849 e!3741848)))

(assert (= (and d!1923645 c!1104351) b!6139808))

(assert (= (and d!1923645 (not c!1104351)) b!6139807))

(assert (= (and b!6139807 c!1104352) b!6139815))

(assert (= (and b!6139807 (not c!1104352)) b!6139813))

(assert (= (and b!6139813 c!1104353) b!6139812))

(assert (= (and b!6139813 (not c!1104353)) b!6139814))

(assert (= (and b!6139814 c!1104354) b!6139811))

(assert (= (and b!6139814 (not c!1104354)) b!6139816))

(assert (= (and b!6139816 c!1104355) b!6139810))

(assert (= (and b!6139816 (not c!1104355)) b!6139809))

(assert (= (or b!6139810 b!6139809) bm!509819))

(assert (= (or b!6139811 bm!509819) bm!509818))

(assert (= (or b!6139812 bm!509818) bm!509817))

(assert (= (or b!6139812 b!6139810) bm!509816))

(assert (=> bm!509816 m!6980646))

(declare-fun m!6981496 () Bool)

(assert (=> bm!509816 m!6981496))

(declare-fun m!6981498 () Bool)

(assert (=> d!1923645 m!6981498))

(assert (=> d!1923645 m!6980444))

(assert (=> bm!509817 m!6980646))

(declare-fun m!6981500 () Bool)

(assert (=> bm!509817 m!6981500))

(assert (=> b!6139816 m!6981152))

(assert (=> b!6138773 d!1923645))

(assert (=> b!6138773 d!1923501))

(assert (=> b!6138773 d!1923457))

(declare-fun e!3741854 () Bool)

(declare-fun b!6139817 () Bool)

(assert (=> b!6139817 (= e!3741854 (nullable!6075 (regOne!32676 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343))))))))))))

(declare-fun bm!509820 () Bool)

(declare-fun call!509828 () (Set Context!10932))

(declare-fun call!509826 () (Set Context!10932))

(assert (=> bm!509820 (= call!509828 call!509826)))

(declare-fun b!6139818 () Bool)

(declare-fun e!3741851 () (Set Context!10932))

(declare-fun call!509829 () (Set Context!10932))

(assert (=> b!6139818 (= e!3741851 (set.union call!509826 call!509829))))

(declare-fun b!6139819 () Bool)

(declare-fun e!3741855 () (Set Context!10932))

(declare-fun call!509825 () (Set Context!10932))

(assert (=> b!6139819 (= e!3741855 call!509825)))

(declare-fun bm!509821 () Bool)

(declare-fun call!509830 () List!64545)

(declare-fun call!509827 () List!64545)

(assert (=> bm!509821 (= call!509830 call!509827)))

(declare-fun b!6139820 () Bool)

(declare-fun e!3741850 () (Set Context!10932))

(assert (=> b!6139820 (= e!3741850 (as set.empty (Set Context!10932)))))

(declare-fun b!6139821 () Bool)

(declare-fun c!1104358 () Bool)

(assert (=> b!6139821 (= c!1104358 e!3741854)))

(declare-fun res!2544064 () Bool)

(assert (=> b!6139821 (=> (not res!2544064) (not e!3741854))))

(assert (=> b!6139821 (= res!2544064 (is-Concat!24927 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343)))))))))))

(declare-fun e!3741853 () (Set Context!10932))

(assert (=> b!6139821 (= e!3741851 e!3741853)))

(declare-fun c!1104356 () Bool)

(declare-fun c!1104357 () Bool)

(declare-fun bm!509822 () Bool)

(assert (=> bm!509822 (= call!509826 (derivationStepZipperDown!1330 (ite c!1104356 (regOne!32677 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343)))))))) (ite c!1104358 (regTwo!32676 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343)))))))) (ite c!1104357 (regOne!32676 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343)))))))) (reg!16411 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343))))))))))) (ite (or c!1104356 c!1104358) (ite (or c!1104108 c!1104110) lt!2332796 (Context!10933 call!509662)) (Context!10933 call!509830)) (h!70871 s!2326)))))

(declare-fun b!6139822 () Bool)

(assert (=> b!6139822 (= e!3741853 e!3741855)))

(assert (=> b!6139822 (= c!1104357 (is-Concat!24927 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343)))))))))))

(declare-fun bm!509823 () Bool)

(assert (=> bm!509823 (= call!509827 ($colon$colon!1959 (exprs!5966 (ite (or c!1104108 c!1104110) lt!2332796 (Context!10933 call!509662))) (ite (or c!1104358 c!1104357) (regTwo!32676 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343)))))))) (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343))))))))))))

(declare-fun bm!509824 () Bool)

(assert (=> bm!509824 (= call!509825 call!509828)))

(declare-fun b!6139823 () Bool)

(assert (=> b!6139823 (= e!3741850 call!509825)))

(declare-fun b!6139824 () Bool)

(declare-fun e!3741852 () (Set Context!10932))

(assert (=> b!6139824 (= e!3741852 e!3741851)))

(assert (=> b!6139824 (= c!1104356 (is-Union!16082 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343)))))))))))

(declare-fun b!6139825 () Bool)

(declare-fun c!1104360 () Bool)

(assert (=> b!6139825 (= c!1104360 (is-Star!16082 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343)))))))))))

(assert (=> b!6139825 (= e!3741855 e!3741850)))

(declare-fun d!1923647 () Bool)

(declare-fun c!1104359 () Bool)

(assert (=> d!1923647 (= c!1104359 (and (is-ElementMatch!16082 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343)))))))) (= (c!1104020 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343)))))))) (h!70871 s!2326))))))

(assert (=> d!1923647 (= (derivationStepZipperDown!1330 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343))))))) (ite (or c!1104108 c!1104110) lt!2332796 (Context!10933 call!509662)) (h!70871 s!2326)) e!3741852)))

(declare-fun b!6139826 () Bool)

(assert (=> b!6139826 (= e!3741852 (set.insert (ite (or c!1104108 c!1104110) lt!2332796 (Context!10933 call!509662)) (as set.empty (Set Context!10932))))))

(declare-fun bm!509825 () Bool)

(assert (=> bm!509825 (= call!509829 (derivationStepZipperDown!1330 (ite c!1104356 (regTwo!32677 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343)))))))) (regOne!32676 (ite c!1104108 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104110 (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (ite c!1104109 (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))) (reg!16411 (h!70869 (exprs!5966 (h!70870 zl!343))))))))) (ite c!1104356 (ite (or c!1104108 c!1104110) lt!2332796 (Context!10933 call!509662)) (Context!10933 call!509827)) (h!70871 s!2326)))))

(declare-fun b!6139827 () Bool)

(assert (=> b!6139827 (= e!3741853 (set.union call!509829 call!509828))))

(assert (= (and d!1923647 c!1104359) b!6139826))

(assert (= (and d!1923647 (not c!1104359)) b!6139824))

(assert (= (and b!6139824 c!1104356) b!6139818))

(assert (= (and b!6139824 (not c!1104356)) b!6139821))

(assert (= (and b!6139821 res!2544064) b!6139817))

(assert (= (and b!6139821 c!1104358) b!6139827))

(assert (= (and b!6139821 (not c!1104358)) b!6139822))

(assert (= (and b!6139822 c!1104357) b!6139819))

(assert (= (and b!6139822 (not c!1104357)) b!6139825))

(assert (= (and b!6139825 c!1104360) b!6139823))

(assert (= (and b!6139825 (not c!1104360)) b!6139820))

(assert (= (or b!6139819 b!6139823) bm!509821))

(assert (= (or b!6139819 b!6139823) bm!509824))

(assert (= (or b!6139827 bm!509821) bm!509823))

(assert (= (or b!6139827 bm!509824) bm!509820))

(assert (= (or b!6139818 b!6139827) bm!509825))

(assert (= (or b!6139818 bm!509820) bm!509822))

(declare-fun m!6981502 () Bool)

(assert (=> bm!509825 m!6981502))

(declare-fun m!6981504 () Bool)

(assert (=> bm!509822 m!6981504))

(declare-fun m!6981506 () Bool)

(assert (=> b!6139817 m!6981506))

(declare-fun m!6981508 () Bool)

(assert (=> bm!509823 m!6981508))

(declare-fun m!6981510 () Bool)

(assert (=> b!6139826 m!6981510))

(assert (=> bm!509654 d!1923647))

(declare-fun d!1923649 () Bool)

(assert (=> d!1923649 (= (isEmpty!36371 (unfocusZipperList!1503 zl!343)) (is-Nil!64421 (unfocusZipperList!1503 zl!343)))))

(assert (=> b!6138801 d!1923649))

(declare-fun d!1923651 () Bool)

(assert (=> d!1923651 (= (isEmpty!36375 (findConcatSeparation!2387 (regOne!32676 r!7292) (regTwo!32676 r!7292) Nil!64423 s!2326 s!2326)) (not (is-Some!15972 (findConcatSeparation!2387 (regOne!32676 r!7292) (regTwo!32676 r!7292) Nil!64423 s!2326 s!2326))))))

(assert (=> d!1923315 d!1923651))

(assert (=> bs!1522334 d!1923301))

(declare-fun bs!1522523 () Bool)

(declare-fun d!1923653 () Bool)

(assert (= bs!1522523 (and d!1923653 d!1923291)))

(declare-fun lambda!334647 () Int)

(assert (=> bs!1522523 (= lambda!334647 lambda!334570)))

(declare-fun bs!1522524 () Bool)

(assert (= bs!1522524 (and d!1923653 d!1923541)))

(assert (=> bs!1522524 (= lambda!334647 lambda!334625)))

(declare-fun bs!1522525 () Bool)

(assert (= bs!1522525 (and d!1923653 d!1923345)))

(assert (=> bs!1522525 (= lambda!334647 lambda!334584)))

(declare-fun bs!1522526 () Bool)

(assert (= bs!1522526 (and d!1923653 d!1923319)))

(assert (=> bs!1522526 (= lambda!334647 lambda!334583)))

(declare-fun bs!1522527 () Bool)

(assert (= bs!1522527 (and d!1923653 d!1923491)))

(assert (=> bs!1522527 (= lambda!334647 lambda!334619)))

(declare-fun bs!1522528 () Bool)

(assert (= bs!1522528 (and d!1923653 d!1923279)))

(assert (=> bs!1522528 (= lambda!334647 lambda!334558)))

(declare-fun bs!1522529 () Bool)

(assert (= bs!1522529 (and d!1923653 d!1923289)))

(assert (=> bs!1522529 (= lambda!334647 lambda!334567)))

(declare-fun bs!1522530 () Bool)

(assert (= bs!1522530 (and d!1923653 d!1923443)))

(assert (=> bs!1522530 (= lambda!334647 lambda!334617)))

(declare-fun bs!1522531 () Bool)

(assert (= bs!1522531 (and d!1923653 d!1923317)))

(assert (=> bs!1522531 (= lambda!334647 lambda!334580)))

(declare-fun bs!1522532 () Bool)

(assert (= bs!1522532 (and d!1923653 d!1923475)))

(assert (=> bs!1522532 (= lambda!334647 lambda!334618)))

(declare-fun b!6139828 () Bool)

(declare-fun e!3741860 () Regex!16082)

(assert (=> b!6139828 (= e!3741860 (Concat!24927 (h!70869 (t!378022 (exprs!5966 (h!70870 zl!343)))) (generalisedConcat!1679 (t!378022 (t!378022 (exprs!5966 (h!70870 zl!343)))))))))

(declare-fun e!3741856 () Bool)

(assert (=> d!1923653 e!3741856))

(declare-fun res!2544065 () Bool)

(assert (=> d!1923653 (=> (not res!2544065) (not e!3741856))))

(declare-fun lt!2332984 () Regex!16082)

(assert (=> d!1923653 (= res!2544065 (validRegex!7818 lt!2332984))))

(declare-fun e!3741861 () Regex!16082)

(assert (=> d!1923653 (= lt!2332984 e!3741861)))

(declare-fun c!1104363 () Bool)

(declare-fun e!3741857 () Bool)

(assert (=> d!1923653 (= c!1104363 e!3741857)))

(declare-fun res!2544066 () Bool)

(assert (=> d!1923653 (=> (not res!2544066) (not e!3741857))))

(assert (=> d!1923653 (= res!2544066 (is-Cons!64421 (t!378022 (exprs!5966 (h!70870 zl!343)))))))

(assert (=> d!1923653 (forall!15203 (t!378022 (exprs!5966 (h!70870 zl!343))) lambda!334647)))

(assert (=> d!1923653 (= (generalisedConcat!1679 (t!378022 (exprs!5966 (h!70870 zl!343)))) lt!2332984)))

(declare-fun b!6139829 () Bool)

(declare-fun e!3741858 () Bool)

(assert (=> b!6139829 (= e!3741856 e!3741858)))

(declare-fun c!1104361 () Bool)

(assert (=> b!6139829 (= c!1104361 (isEmpty!36371 (t!378022 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun b!6139830 () Bool)

(declare-fun e!3741859 () Bool)

(assert (=> b!6139830 (= e!3741858 e!3741859)))

(declare-fun c!1104364 () Bool)

(assert (=> b!6139830 (= c!1104364 (isEmpty!36371 (tail!11771 (t!378022 (exprs!5966 (h!70870 zl!343))))))))

(declare-fun b!6139831 () Bool)

(assert (=> b!6139831 (= e!3741857 (isEmpty!36371 (t!378022 (t!378022 (exprs!5966 (h!70870 zl!343))))))))

(declare-fun b!6139832 () Bool)

(assert (=> b!6139832 (= e!3741860 EmptyExpr!16082)))

(declare-fun b!6139833 () Bool)

(assert (=> b!6139833 (= e!3741861 (h!70869 (t!378022 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun b!6139834 () Bool)

(assert (=> b!6139834 (= e!3741858 (isEmptyExpr!1499 lt!2332984))))

(declare-fun b!6139835 () Bool)

(assert (=> b!6139835 (= e!3741859 (= lt!2332984 (head!12686 (t!378022 (exprs!5966 (h!70870 zl!343))))))))

(declare-fun b!6139836 () Bool)

(assert (=> b!6139836 (= e!3741859 (isConcat!1022 lt!2332984))))

(declare-fun b!6139837 () Bool)

(assert (=> b!6139837 (= e!3741861 e!3741860)))

(declare-fun c!1104362 () Bool)

(assert (=> b!6139837 (= c!1104362 (is-Cons!64421 (t!378022 (exprs!5966 (h!70870 zl!343)))))))

(assert (= (and d!1923653 res!2544066) b!6139831))

(assert (= (and d!1923653 c!1104363) b!6139833))

(assert (= (and d!1923653 (not c!1104363)) b!6139837))

(assert (= (and b!6139837 c!1104362) b!6139828))

(assert (= (and b!6139837 (not c!1104362)) b!6139832))

(assert (= (and d!1923653 res!2544065) b!6139829))

(assert (= (and b!6139829 c!1104361) b!6139834))

(assert (= (and b!6139829 (not c!1104361)) b!6139830))

(assert (= (and b!6139830 c!1104364) b!6139835))

(assert (= (and b!6139830 (not c!1104364)) b!6139836))

(declare-fun m!6981512 () Bool)

(assert (=> b!6139835 m!6981512))

(declare-fun m!6981514 () Bool)

(assert (=> d!1923653 m!6981514))

(declare-fun m!6981516 () Bool)

(assert (=> d!1923653 m!6981516))

(assert (=> b!6139829 m!6980500))

(declare-fun m!6981518 () Bool)

(assert (=> b!6139836 m!6981518))

(declare-fun m!6981520 () Bool)

(assert (=> b!6139831 m!6981520))

(declare-fun m!6981522 () Bool)

(assert (=> b!6139834 m!6981522))

(declare-fun m!6981524 () Bool)

(assert (=> b!6139828 m!6981524))

(declare-fun m!6981526 () Bool)

(assert (=> b!6139830 m!6981526))

(assert (=> b!6139830 m!6981526))

(declare-fun m!6981528 () Bool)

(assert (=> b!6139830 m!6981528))

(assert (=> b!6138896 d!1923653))

(declare-fun b!6139838 () Bool)

(declare-fun e!3741862 () Bool)

(declare-fun e!3741866 () Bool)

(assert (=> b!6139838 (= e!3741862 e!3741866)))

(declare-fun c!1104366 () Bool)

(assert (=> b!6139838 (= c!1104366 (is-Star!16082 lt!2332890))))

(declare-fun b!6139839 () Bool)

(declare-fun e!3741863 () Bool)

(declare-fun call!509831 () Bool)

(assert (=> b!6139839 (= e!3741863 call!509831)))

(declare-fun b!6139840 () Bool)

(declare-fun e!3741865 () Bool)

(declare-fun e!3741867 () Bool)

(assert (=> b!6139840 (= e!3741865 e!3741867)))

(declare-fun res!2544067 () Bool)

(assert (=> b!6139840 (=> (not res!2544067) (not e!3741867))))

(declare-fun call!509833 () Bool)

(assert (=> b!6139840 (= res!2544067 call!509833)))

(declare-fun d!1923655 () Bool)

(declare-fun res!2544069 () Bool)

(assert (=> d!1923655 (=> res!2544069 e!3741862)))

(assert (=> d!1923655 (= res!2544069 (is-ElementMatch!16082 lt!2332890))))

(assert (=> d!1923655 (= (validRegex!7818 lt!2332890) e!3741862)))

(declare-fun b!6139841 () Bool)

(declare-fun res!2544070 () Bool)

(assert (=> b!6139841 (=> (not res!2544070) (not e!3741863))))

(assert (=> b!6139841 (= res!2544070 call!509833)))

(declare-fun e!3741864 () Bool)

(assert (=> b!6139841 (= e!3741864 e!3741863)))

(declare-fun bm!509826 () Bool)

(declare-fun call!509832 () Bool)

(assert (=> bm!509826 (= call!509833 call!509832)))

(declare-fun b!6139842 () Bool)

(assert (=> b!6139842 (= e!3741866 e!3741864)))

(declare-fun c!1104365 () Bool)

(assert (=> b!6139842 (= c!1104365 (is-Union!16082 lt!2332890))))

(declare-fun b!6139843 () Bool)

(assert (=> b!6139843 (= e!3741867 call!509831)))

(declare-fun b!6139844 () Bool)

(declare-fun e!3741868 () Bool)

(assert (=> b!6139844 (= e!3741866 e!3741868)))

(declare-fun res!2544068 () Bool)

(assert (=> b!6139844 (= res!2544068 (not (nullable!6075 (reg!16411 lt!2332890))))))

(assert (=> b!6139844 (=> (not res!2544068) (not e!3741868))))

(declare-fun b!6139845 () Bool)

(declare-fun res!2544071 () Bool)

(assert (=> b!6139845 (=> res!2544071 e!3741865)))

(assert (=> b!6139845 (= res!2544071 (not (is-Concat!24927 lt!2332890)))))

(assert (=> b!6139845 (= e!3741864 e!3741865)))

(declare-fun bm!509827 () Bool)

(assert (=> bm!509827 (= call!509832 (validRegex!7818 (ite c!1104366 (reg!16411 lt!2332890) (ite c!1104365 (regOne!32677 lt!2332890) (regOne!32676 lt!2332890)))))))

(declare-fun b!6139846 () Bool)

(assert (=> b!6139846 (= e!3741868 call!509832)))

(declare-fun bm!509828 () Bool)

(assert (=> bm!509828 (= call!509831 (validRegex!7818 (ite c!1104365 (regTwo!32677 lt!2332890) (regTwo!32676 lt!2332890))))))

(assert (= (and d!1923655 (not res!2544069)) b!6139838))

(assert (= (and b!6139838 c!1104366) b!6139844))

(assert (= (and b!6139838 (not c!1104366)) b!6139842))

(assert (= (and b!6139844 res!2544068) b!6139846))

(assert (= (and b!6139842 c!1104365) b!6139841))

(assert (= (and b!6139842 (not c!1104365)) b!6139845))

(assert (= (and b!6139841 res!2544070) b!6139839))

(assert (= (and b!6139845 (not res!2544071)) b!6139840))

(assert (= (and b!6139840 res!2544067) b!6139843))

(assert (= (or b!6139839 b!6139843) bm!509828))

(assert (= (or b!6139841 b!6139840) bm!509826))

(assert (= (or b!6139846 bm!509826) bm!509827))

(declare-fun m!6981530 () Bool)

(assert (=> b!6139844 m!6981530))

(declare-fun m!6981532 () Bool)

(assert (=> bm!509827 m!6981532))

(declare-fun m!6981534 () Bool)

(assert (=> bm!509828 m!6981534))

(assert (=> d!1923289 d!1923655))

(declare-fun d!1923657 () Bool)

(declare-fun res!2544072 () Bool)

(declare-fun e!3741869 () Bool)

(assert (=> d!1923657 (=> res!2544072 e!3741869)))

(assert (=> d!1923657 (= res!2544072 (is-Nil!64421 (unfocusZipperList!1503 zl!343)))))

(assert (=> d!1923657 (= (forall!15203 (unfocusZipperList!1503 zl!343) lambda!334567) e!3741869)))

(declare-fun b!6139847 () Bool)

(declare-fun e!3741870 () Bool)

(assert (=> b!6139847 (= e!3741869 e!3741870)))

(declare-fun res!2544073 () Bool)

(assert (=> b!6139847 (=> (not res!2544073) (not e!3741870))))

(assert (=> b!6139847 (= res!2544073 (dynLambda!25387 lambda!334567 (h!70869 (unfocusZipperList!1503 zl!343))))))

(declare-fun b!6139848 () Bool)

(assert (=> b!6139848 (= e!3741870 (forall!15203 (t!378022 (unfocusZipperList!1503 zl!343)) lambda!334567))))

(assert (= (and d!1923657 (not res!2544072)) b!6139847))

(assert (= (and b!6139847 res!2544073) b!6139848))

(declare-fun b_lambda!233677 () Bool)

(assert (=> (not b_lambda!233677) (not b!6139847)))

(declare-fun m!6981536 () Bool)

(assert (=> b!6139847 m!6981536))

(declare-fun m!6981538 () Bool)

(assert (=> b!6139848 m!6981538))

(assert (=> d!1923289 d!1923657))

(declare-fun b!6139849 () Bool)

(declare-fun e!3741875 () Bool)

(assert (=> b!6139849 (= e!3741875 (nullable!6075 (regOne!32676 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292)))))))))

(declare-fun bm!509829 () Bool)

(declare-fun call!509837 () (Set Context!10932))

(declare-fun call!509835 () (Set Context!10932))

(assert (=> bm!509829 (= call!509837 call!509835)))

(declare-fun b!6139850 () Bool)

(declare-fun e!3741872 () (Set Context!10932))

(declare-fun call!509838 () (Set Context!10932))

(assert (=> b!6139850 (= e!3741872 (set.union call!509835 call!509838))))

(declare-fun b!6139851 () Bool)

(declare-fun e!3741876 () (Set Context!10932))

(declare-fun call!509834 () (Set Context!10932))

(assert (=> b!6139851 (= e!3741876 call!509834)))

(declare-fun bm!509830 () Bool)

(declare-fun call!509839 () List!64545)

(declare-fun call!509836 () List!64545)

(assert (=> bm!509830 (= call!509839 call!509836)))

(declare-fun b!6139852 () Bool)

(declare-fun e!3741871 () (Set Context!10932))

(assert (=> b!6139852 (= e!3741871 (as set.empty (Set Context!10932)))))

(declare-fun b!6139853 () Bool)

(declare-fun c!1104369 () Bool)

(assert (=> b!6139853 (= c!1104369 e!3741875)))

(declare-fun res!2544074 () Bool)

(assert (=> b!6139853 (=> (not res!2544074) (not e!3741875))))

(assert (=> b!6139853 (= res!2544074 (is-Concat!24927 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))))))))

(declare-fun e!3741874 () (Set Context!10932))

(assert (=> b!6139853 (= e!3741872 e!3741874)))

(declare-fun bm!509831 () Bool)

(declare-fun c!1104368 () Bool)

(declare-fun c!1104367 () Bool)

(assert (=> bm!509831 (= call!509835 (derivationStepZipperDown!1330 (ite c!1104367 (regOne!32677 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))))) (ite c!1104369 (regTwo!32676 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))))) (ite c!1104368 (regOne!32676 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))))) (reg!16411 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292)))))))) (ite (or c!1104367 c!1104369) (ite c!1104119 lt!2332796 (Context!10933 call!509668)) (Context!10933 call!509839)) (h!70871 s!2326)))))

(declare-fun b!6139854 () Bool)

(assert (=> b!6139854 (= e!3741874 e!3741876)))

(assert (=> b!6139854 (= c!1104368 (is-Concat!24927 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))))))))

(declare-fun bm!509832 () Bool)

(assert (=> bm!509832 (= call!509836 ($colon$colon!1959 (exprs!5966 (ite c!1104119 lt!2332796 (Context!10933 call!509668))) (ite (or c!1104369 c!1104368) (regTwo!32676 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))))) (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292)))))))))

(declare-fun bm!509833 () Bool)

(assert (=> bm!509833 (= call!509834 call!509837)))

(declare-fun b!6139855 () Bool)

(assert (=> b!6139855 (= e!3741871 call!509834)))

(declare-fun b!6139856 () Bool)

(declare-fun e!3741873 () (Set Context!10932))

(assert (=> b!6139856 (= e!3741873 e!3741872)))

(assert (=> b!6139856 (= c!1104367 (is-Union!16082 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))))))))

(declare-fun b!6139857 () Bool)

(declare-fun c!1104371 () Bool)

(assert (=> b!6139857 (= c!1104371 (is-Star!16082 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))))))))

(assert (=> b!6139857 (= e!3741876 e!3741871)))

(declare-fun c!1104370 () Bool)

(declare-fun d!1923659 () Bool)

(assert (=> d!1923659 (= c!1104370 (and (is-ElementMatch!16082 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))))) (= (c!1104020 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))))) (h!70871 s!2326))))))

(assert (=> d!1923659 (= (derivationStepZipperDown!1330 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292)))) (ite c!1104119 lt!2332796 (Context!10933 call!509668)) (h!70871 s!2326)) e!3741873)))

(declare-fun b!6139858 () Bool)

(assert (=> b!6139858 (= e!3741873 (set.insert (ite c!1104119 lt!2332796 (Context!10933 call!509668)) (as set.empty (Set Context!10932))))))

(declare-fun bm!509834 () Bool)

(assert (=> bm!509834 (= call!509838 (derivationStepZipperDown!1330 (ite c!1104367 (regTwo!32677 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292))))) (regOne!32676 (ite c!1104119 (regTwo!32677 (regTwo!32677 (regOne!32676 r!7292))) (regOne!32676 (regTwo!32677 (regOne!32676 r!7292)))))) (ite c!1104367 (ite c!1104119 lt!2332796 (Context!10933 call!509668)) (Context!10933 call!509836)) (h!70871 s!2326)))))

(declare-fun b!6139859 () Bool)

(assert (=> b!6139859 (= e!3741874 (set.union call!509838 call!509837))))

(assert (= (and d!1923659 c!1104370) b!6139858))

(assert (= (and d!1923659 (not c!1104370)) b!6139856))

(assert (= (and b!6139856 c!1104367) b!6139850))

(assert (= (and b!6139856 (not c!1104367)) b!6139853))

(assert (= (and b!6139853 res!2544074) b!6139849))

(assert (= (and b!6139853 c!1104369) b!6139859))

(assert (= (and b!6139853 (not c!1104369)) b!6139854))

(assert (= (and b!6139854 c!1104368) b!6139851))

(assert (= (and b!6139854 (not c!1104368)) b!6139857))

(assert (= (and b!6139857 c!1104371) b!6139855))

(assert (= (and b!6139857 (not c!1104371)) b!6139852))

(assert (= (or b!6139851 b!6139855) bm!509830))

(assert (= (or b!6139851 b!6139855) bm!509833))

(assert (= (or b!6139859 bm!509830) bm!509832))

(assert (= (or b!6139859 bm!509833) bm!509829))

(assert (= (or b!6139850 b!6139859) bm!509834))

(assert (= (or b!6139850 bm!509829) bm!509831))

(declare-fun m!6981540 () Bool)

(assert (=> bm!509834 m!6981540))

(declare-fun m!6981542 () Bool)

(assert (=> bm!509831 m!6981542))

(declare-fun m!6981544 () Bool)

(assert (=> b!6139849 m!6981544))

(declare-fun m!6981546 () Bool)

(assert (=> bm!509832 m!6981546))

(declare-fun m!6981548 () Bool)

(assert (=> b!6139858 m!6981548))

(assert (=> bm!509666 d!1923659))

(declare-fun b!6139860 () Bool)

(declare-fun e!3741879 () (Set Context!10932))

(declare-fun call!509840 () (Set Context!10932))

(assert (=> b!6139860 (= e!3741879 call!509840)))

(declare-fun b!6139861 () Bool)

(declare-fun e!3741878 () (Set Context!10932))

(assert (=> b!6139861 (= e!3741878 e!3741879)))

(declare-fun c!1104373 () Bool)

(assert (=> b!6139861 (= c!1104373 (is-Cons!64421 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332810))))))))

(declare-fun b!6139862 () Bool)

(assert (=> b!6139862 (= e!3741878 (set.union call!509840 (derivationStepZipperUp!1256 (Context!10933 (t!378022 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332810)))))) (h!70871 s!2326))))))

(declare-fun d!1923661 () Bool)

(declare-fun c!1104372 () Bool)

(declare-fun e!3741877 () Bool)

(assert (=> d!1923661 (= c!1104372 e!3741877)))

(declare-fun res!2544075 () Bool)

(assert (=> d!1923661 (=> (not res!2544075) (not e!3741877))))

(assert (=> d!1923661 (= res!2544075 (is-Cons!64421 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332810))))))))

(assert (=> d!1923661 (= (derivationStepZipperUp!1256 (Context!10933 (t!378022 (exprs!5966 lt!2332810))) (h!70871 s!2326)) e!3741878)))

(declare-fun b!6139863 () Bool)

(assert (=> b!6139863 (= e!3741877 (nullable!6075 (h!70869 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332810)))))))))

(declare-fun bm!509835 () Bool)

(assert (=> bm!509835 (= call!509840 (derivationStepZipperDown!1330 (h!70869 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332810))))) (Context!10933 (t!378022 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332810)))))) (h!70871 s!2326)))))

(declare-fun b!6139864 () Bool)

(assert (=> b!6139864 (= e!3741879 (as set.empty (Set Context!10932)))))

(assert (= (and d!1923661 res!2544075) b!6139863))

(assert (= (and d!1923661 c!1104372) b!6139862))

(assert (= (and d!1923661 (not c!1104372)) b!6139861))

(assert (= (and b!6139861 c!1104373) b!6139860))

(assert (= (and b!6139861 (not c!1104373)) b!6139864))

(assert (= (or b!6139862 b!6139860) bm!509835))

(declare-fun m!6981550 () Bool)

(assert (=> b!6139862 m!6981550))

(declare-fun m!6981552 () Bool)

(assert (=> b!6139863 m!6981552))

(declare-fun m!6981554 () Bool)

(assert (=> bm!509835 m!6981554))

(assert (=> b!6138834 d!1923661))

(declare-fun b!6139865 () Bool)

(declare-fun e!3741884 () Bool)

(assert (=> b!6139865 (= e!3741884 (nullable!6075 (regOne!32676 (h!70869 (exprs!5966 lt!2332796)))))))

(declare-fun bm!509836 () Bool)

(declare-fun call!509844 () (Set Context!10932))

(declare-fun call!509842 () (Set Context!10932))

(assert (=> bm!509836 (= call!509844 call!509842)))

(declare-fun b!6139866 () Bool)

(declare-fun e!3741881 () (Set Context!10932))

(declare-fun call!509845 () (Set Context!10932))

(assert (=> b!6139866 (= e!3741881 (set.union call!509842 call!509845))))

(declare-fun b!6139867 () Bool)

(declare-fun e!3741885 () (Set Context!10932))

(declare-fun call!509841 () (Set Context!10932))

(assert (=> b!6139867 (= e!3741885 call!509841)))

(declare-fun bm!509837 () Bool)

(declare-fun call!509846 () List!64545)

(declare-fun call!509843 () List!64545)

(assert (=> bm!509837 (= call!509846 call!509843)))

(declare-fun b!6139868 () Bool)

(declare-fun e!3741880 () (Set Context!10932))

(assert (=> b!6139868 (= e!3741880 (as set.empty (Set Context!10932)))))

(declare-fun b!6139869 () Bool)

(declare-fun c!1104376 () Bool)

(assert (=> b!6139869 (= c!1104376 e!3741884)))

(declare-fun res!2544076 () Bool)

(assert (=> b!6139869 (=> (not res!2544076) (not e!3741884))))

(assert (=> b!6139869 (= res!2544076 (is-Concat!24927 (h!70869 (exprs!5966 lt!2332796))))))

(declare-fun e!3741883 () (Set Context!10932))

(assert (=> b!6139869 (= e!3741881 e!3741883)))

(declare-fun c!1104375 () Bool)

(declare-fun c!1104374 () Bool)

(declare-fun bm!509838 () Bool)

(assert (=> bm!509838 (= call!509842 (derivationStepZipperDown!1330 (ite c!1104374 (regOne!32677 (h!70869 (exprs!5966 lt!2332796))) (ite c!1104376 (regTwo!32676 (h!70869 (exprs!5966 lt!2332796))) (ite c!1104375 (regOne!32676 (h!70869 (exprs!5966 lt!2332796))) (reg!16411 (h!70869 (exprs!5966 lt!2332796)))))) (ite (or c!1104374 c!1104376) (Context!10933 (t!378022 (exprs!5966 lt!2332796))) (Context!10933 call!509846)) (h!70871 s!2326)))))

(declare-fun b!6139870 () Bool)

(assert (=> b!6139870 (= e!3741883 e!3741885)))

(assert (=> b!6139870 (= c!1104375 (is-Concat!24927 (h!70869 (exprs!5966 lt!2332796))))))

(declare-fun bm!509839 () Bool)

(assert (=> bm!509839 (= call!509843 ($colon$colon!1959 (exprs!5966 (Context!10933 (t!378022 (exprs!5966 lt!2332796)))) (ite (or c!1104376 c!1104375) (regTwo!32676 (h!70869 (exprs!5966 lt!2332796))) (h!70869 (exprs!5966 lt!2332796)))))))

(declare-fun bm!509840 () Bool)

(assert (=> bm!509840 (= call!509841 call!509844)))

(declare-fun b!6139871 () Bool)

(assert (=> b!6139871 (= e!3741880 call!509841)))

(declare-fun b!6139872 () Bool)

(declare-fun e!3741882 () (Set Context!10932))

(assert (=> b!6139872 (= e!3741882 e!3741881)))

(assert (=> b!6139872 (= c!1104374 (is-Union!16082 (h!70869 (exprs!5966 lt!2332796))))))

(declare-fun b!6139873 () Bool)

(declare-fun c!1104378 () Bool)

(assert (=> b!6139873 (= c!1104378 (is-Star!16082 (h!70869 (exprs!5966 lt!2332796))))))

(assert (=> b!6139873 (= e!3741885 e!3741880)))

(declare-fun d!1923663 () Bool)

(declare-fun c!1104377 () Bool)

(assert (=> d!1923663 (= c!1104377 (and (is-ElementMatch!16082 (h!70869 (exprs!5966 lt!2332796))) (= (c!1104020 (h!70869 (exprs!5966 lt!2332796))) (h!70871 s!2326))))))

(assert (=> d!1923663 (= (derivationStepZipperDown!1330 (h!70869 (exprs!5966 lt!2332796)) (Context!10933 (t!378022 (exprs!5966 lt!2332796))) (h!70871 s!2326)) e!3741882)))

(declare-fun b!6139874 () Bool)

(assert (=> b!6139874 (= e!3741882 (set.insert (Context!10933 (t!378022 (exprs!5966 lt!2332796))) (as set.empty (Set Context!10932))))))

(declare-fun bm!509841 () Bool)

(assert (=> bm!509841 (= call!509845 (derivationStepZipperDown!1330 (ite c!1104374 (regTwo!32677 (h!70869 (exprs!5966 lt!2332796))) (regOne!32676 (h!70869 (exprs!5966 lt!2332796)))) (ite c!1104374 (Context!10933 (t!378022 (exprs!5966 lt!2332796))) (Context!10933 call!509843)) (h!70871 s!2326)))))

(declare-fun b!6139875 () Bool)

(assert (=> b!6139875 (= e!3741883 (set.union call!509845 call!509844))))

(assert (= (and d!1923663 c!1104377) b!6139874))

(assert (= (and d!1923663 (not c!1104377)) b!6139872))

(assert (= (and b!6139872 c!1104374) b!6139866))

(assert (= (and b!6139872 (not c!1104374)) b!6139869))

(assert (= (and b!6139869 res!2544076) b!6139865))

(assert (= (and b!6139869 c!1104376) b!6139875))

(assert (= (and b!6139869 (not c!1104376)) b!6139870))

(assert (= (and b!6139870 c!1104375) b!6139867))

(assert (= (and b!6139870 (not c!1104375)) b!6139873))

(assert (= (and b!6139873 c!1104378) b!6139871))

(assert (= (and b!6139873 (not c!1104378)) b!6139868))

(assert (= (or b!6139867 b!6139871) bm!509837))

(assert (= (or b!6139867 b!6139871) bm!509840))

(assert (= (or b!6139875 bm!509837) bm!509839))

(assert (= (or b!6139875 bm!509840) bm!509836))

(assert (= (or b!6139866 b!6139875) bm!509841))

(assert (= (or b!6139866 bm!509836) bm!509838))

(declare-fun m!6981556 () Bool)

(assert (=> bm!509841 m!6981556))

(declare-fun m!6981558 () Bool)

(assert (=> bm!509838 m!6981558))

(declare-fun m!6981560 () Bool)

(assert (=> b!6139865 m!6981560))

(declare-fun m!6981562 () Bool)

(assert (=> bm!509839 m!6981562))

(declare-fun m!6981564 () Bool)

(assert (=> b!6139874 m!6981564))

(assert (=> bm!509658 d!1923663))

(declare-fun d!1923665 () Bool)

(declare-fun res!2544081 () Bool)

(declare-fun e!3741889 () Bool)

(assert (=> d!1923665 (=> res!2544081 e!3741889)))

(assert (=> d!1923665 (= res!2544081 (is-EmptyExpr!16082 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(assert (=> d!1923665 (= (nullableFct!2039 (h!70869 (exprs!5966 (h!70870 zl!343)))) e!3741889)))

(declare-fun b!6139876 () Bool)

(declare-fun e!3741890 () Bool)

(declare-fun call!509848 () Bool)

(assert (=> b!6139876 (= e!3741890 call!509848)))

(declare-fun b!6139877 () Bool)

(declare-fun e!3741887 () Bool)

(assert (=> b!6139877 (= e!3741887 call!509848)))

(declare-fun b!6139878 () Bool)

(declare-fun e!3741886 () Bool)

(assert (=> b!6139878 (= e!3741889 e!3741886)))

(declare-fun res!2544080 () Bool)

(assert (=> b!6139878 (=> (not res!2544080) (not e!3741886))))

(assert (=> b!6139878 (= res!2544080 (and (not (is-EmptyLang!16082 (h!70869 (exprs!5966 (h!70870 zl!343))))) (not (is-ElementMatch!16082 (h!70869 (exprs!5966 (h!70870 zl!343)))))))))

(declare-fun bm!509842 () Bool)

(declare-fun c!1104379 () Bool)

(assert (=> bm!509842 (= call!509848 (nullable!6075 (ite c!1104379 (regTwo!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regTwo!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))))))))

(declare-fun b!6139879 () Bool)

(declare-fun e!3741888 () Bool)

(assert (=> b!6139879 (= e!3741888 e!3741890)))

(declare-fun res!2544077 () Bool)

(declare-fun call!509847 () Bool)

(assert (=> b!6139879 (= res!2544077 call!509847)))

(assert (=> b!6139879 (=> res!2544077 e!3741890)))

(declare-fun bm!509843 () Bool)

(assert (=> bm!509843 (= call!509847 (nullable!6075 (ite c!1104379 (regOne!32677 (h!70869 (exprs!5966 (h!70870 zl!343)))) (regOne!32676 (h!70869 (exprs!5966 (h!70870 zl!343)))))))))

(declare-fun b!6139880 () Bool)

(assert (=> b!6139880 (= e!3741888 e!3741887)))

(declare-fun res!2544079 () Bool)

(assert (=> b!6139880 (= res!2544079 call!509847)))

(assert (=> b!6139880 (=> (not res!2544079) (not e!3741887))))

(declare-fun b!6139881 () Bool)

(declare-fun e!3741891 () Bool)

(assert (=> b!6139881 (= e!3741886 e!3741891)))

(declare-fun res!2544078 () Bool)

(assert (=> b!6139881 (=> res!2544078 e!3741891)))

(assert (=> b!6139881 (= res!2544078 (is-Star!16082 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun b!6139882 () Bool)

(assert (=> b!6139882 (= e!3741891 e!3741888)))

(assert (=> b!6139882 (= c!1104379 (is-Union!16082 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(assert (= (and d!1923665 (not res!2544081)) b!6139878))

(assert (= (and b!6139878 res!2544080) b!6139881))

(assert (= (and b!6139881 (not res!2544078)) b!6139882))

(assert (= (and b!6139882 c!1104379) b!6139879))

(assert (= (and b!6139882 (not c!1104379)) b!6139880))

(assert (= (and b!6139879 (not res!2544077)) b!6139876))

(assert (= (and b!6139880 res!2544079) b!6139877))

(assert (= (or b!6139876 b!6139877) bm!509842))

(assert (= (or b!6139879 b!6139880) bm!509843))

(declare-fun m!6981566 () Bool)

(assert (=> bm!509842 m!6981566))

(declare-fun m!6981568 () Bool)

(assert (=> bm!509843 m!6981568))

(assert (=> d!1923327 d!1923665))

(declare-fun b!6139883 () Bool)

(declare-fun e!3741892 () Bool)

(declare-fun e!3741896 () Bool)

(assert (=> b!6139883 (= e!3741892 e!3741896)))

(declare-fun c!1104381 () Bool)

(assert (=> b!6139883 (= c!1104381 (is-Star!16082 lt!2332917))))

(declare-fun b!6139884 () Bool)

(declare-fun e!3741893 () Bool)

(declare-fun call!509849 () Bool)

(assert (=> b!6139884 (= e!3741893 call!509849)))

(declare-fun b!6139885 () Bool)

(declare-fun e!3741895 () Bool)

(declare-fun e!3741897 () Bool)

(assert (=> b!6139885 (= e!3741895 e!3741897)))

(declare-fun res!2544082 () Bool)

(assert (=> b!6139885 (=> (not res!2544082) (not e!3741897))))

(declare-fun call!509851 () Bool)

(assert (=> b!6139885 (= res!2544082 call!509851)))

(declare-fun d!1923667 () Bool)

(declare-fun res!2544084 () Bool)

(assert (=> d!1923667 (=> res!2544084 e!3741892)))

(assert (=> d!1923667 (= res!2544084 (is-ElementMatch!16082 lt!2332917))))

(assert (=> d!1923667 (= (validRegex!7818 lt!2332917) e!3741892)))

(declare-fun b!6139886 () Bool)

(declare-fun res!2544085 () Bool)

(assert (=> b!6139886 (=> (not res!2544085) (not e!3741893))))

(assert (=> b!6139886 (= res!2544085 call!509851)))

(declare-fun e!3741894 () Bool)

(assert (=> b!6139886 (= e!3741894 e!3741893)))

(declare-fun bm!509844 () Bool)

(declare-fun call!509850 () Bool)

(assert (=> bm!509844 (= call!509851 call!509850)))

(declare-fun b!6139887 () Bool)

(assert (=> b!6139887 (= e!3741896 e!3741894)))

(declare-fun c!1104380 () Bool)

(assert (=> b!6139887 (= c!1104380 (is-Union!16082 lt!2332917))))

(declare-fun b!6139888 () Bool)

(assert (=> b!6139888 (= e!3741897 call!509849)))

(declare-fun b!6139889 () Bool)

(declare-fun e!3741898 () Bool)

(assert (=> b!6139889 (= e!3741896 e!3741898)))

(declare-fun res!2544083 () Bool)

(assert (=> b!6139889 (= res!2544083 (not (nullable!6075 (reg!16411 lt!2332917))))))

(assert (=> b!6139889 (=> (not res!2544083) (not e!3741898))))

(declare-fun b!6139890 () Bool)

(declare-fun res!2544086 () Bool)

(assert (=> b!6139890 (=> res!2544086 e!3741895)))

(assert (=> b!6139890 (= res!2544086 (not (is-Concat!24927 lt!2332917)))))

(assert (=> b!6139890 (= e!3741894 e!3741895)))

(declare-fun bm!509845 () Bool)

(assert (=> bm!509845 (= call!509850 (validRegex!7818 (ite c!1104381 (reg!16411 lt!2332917) (ite c!1104380 (regOne!32677 lt!2332917) (regOne!32676 lt!2332917)))))))

(declare-fun b!6139891 () Bool)

(assert (=> b!6139891 (= e!3741898 call!509850)))

(declare-fun bm!509846 () Bool)

(assert (=> bm!509846 (= call!509849 (validRegex!7818 (ite c!1104380 (regTwo!32677 lt!2332917) (regTwo!32676 lt!2332917))))))

(assert (= (and d!1923667 (not res!2544084)) b!6139883))

(assert (= (and b!6139883 c!1104381) b!6139889))

(assert (= (and b!6139883 (not c!1104381)) b!6139887))

(assert (= (and b!6139889 res!2544083) b!6139891))

(assert (= (and b!6139887 c!1104380) b!6139886))

(assert (= (and b!6139887 (not c!1104380)) b!6139890))

(assert (= (and b!6139886 res!2544085) b!6139884))

(assert (= (and b!6139890 (not res!2544086)) b!6139885))

(assert (= (and b!6139885 res!2544082) b!6139888))

(assert (= (or b!6139884 b!6139888) bm!509846))

(assert (= (or b!6139886 b!6139885) bm!509844))

(assert (= (or b!6139891 bm!509844) bm!509845))

(declare-fun m!6981570 () Bool)

(assert (=> b!6139889 m!6981570))

(declare-fun m!6981572 () Bool)

(assert (=> bm!509845 m!6981572))

(declare-fun m!6981574 () Bool)

(assert (=> bm!509846 m!6981574))

(assert (=> d!1923319 d!1923667))

(declare-fun d!1923669 () Bool)

(declare-fun res!2544087 () Bool)

(declare-fun e!3741899 () Bool)

(assert (=> d!1923669 (=> res!2544087 e!3741899)))

(assert (=> d!1923669 (= res!2544087 (is-Nil!64421 (exprs!5966 (h!70870 zl!343))))))

(assert (=> d!1923669 (= (forall!15203 (exprs!5966 (h!70870 zl!343)) lambda!334583) e!3741899)))

(declare-fun b!6139892 () Bool)

(declare-fun e!3741900 () Bool)

(assert (=> b!6139892 (= e!3741899 e!3741900)))

(declare-fun res!2544088 () Bool)

(assert (=> b!6139892 (=> (not res!2544088) (not e!3741900))))

(assert (=> b!6139892 (= res!2544088 (dynLambda!25387 lambda!334583 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun b!6139893 () Bool)

(assert (=> b!6139893 (= e!3741900 (forall!15203 (t!378022 (exprs!5966 (h!70870 zl!343))) lambda!334583))))

(assert (= (and d!1923669 (not res!2544087)) b!6139892))

(assert (= (and b!6139892 res!2544088) b!6139893))

(declare-fun b_lambda!233679 () Bool)

(assert (=> (not b_lambda!233679) (not b!6139892)))

(declare-fun m!6981576 () Bool)

(assert (=> b!6139892 m!6981576))

(declare-fun m!6981578 () Bool)

(assert (=> b!6139893 m!6981578))

(assert (=> d!1923319 d!1923669))

(declare-fun b!6139895 () Bool)

(declare-fun e!3741902 () Bool)

(declare-fun tp!1715369 () Bool)

(assert (=> b!6139895 (= e!3741902 tp!1715369)))

(declare-fun b!6139894 () Bool)

(declare-fun e!3741901 () Bool)

(declare-fun tp!1715370 () Bool)

(assert (=> b!6139894 (= e!3741901 (and (inv!83453 (h!70870 (t!378023 (t!378023 zl!343)))) e!3741902 tp!1715370))))

(assert (=> b!6139024 (= tp!1715259 e!3741901)))

(assert (= b!6139894 b!6139895))

(assert (= (and b!6139024 (is-Cons!64422 (t!378023 (t!378023 zl!343)))) b!6139894))

(declare-fun m!6981580 () Bool)

(assert (=> b!6139894 m!6981580))

(declare-fun b!6139897 () Bool)

(declare-fun e!3741903 () Bool)

(declare-fun tp!1715374 () Bool)

(declare-fun tp!1715371 () Bool)

(assert (=> b!6139897 (= e!3741903 (and tp!1715374 tp!1715371))))

(declare-fun b!6139896 () Bool)

(assert (=> b!6139896 (= e!3741903 tp_is_empty!41417)))

(declare-fun b!6139898 () Bool)

(declare-fun tp!1715372 () Bool)

(assert (=> b!6139898 (= e!3741903 tp!1715372)))

(assert (=> b!6139048 (= tp!1715286 e!3741903)))

(declare-fun b!6139899 () Bool)

(declare-fun tp!1715375 () Bool)

(declare-fun tp!1715373 () Bool)

(assert (=> b!6139899 (= e!3741903 (and tp!1715375 tp!1715373))))

(assert (= (and b!6139048 (is-ElementMatch!16082 (regOne!32677 (regOne!32677 r!7292)))) b!6139896))

(assert (= (and b!6139048 (is-Concat!24927 (regOne!32677 (regOne!32677 r!7292)))) b!6139897))

(assert (= (and b!6139048 (is-Star!16082 (regOne!32677 (regOne!32677 r!7292)))) b!6139898))

(assert (= (and b!6139048 (is-Union!16082 (regOne!32677 (regOne!32677 r!7292)))) b!6139899))

(declare-fun b!6139901 () Bool)

(declare-fun e!3741904 () Bool)

(declare-fun tp!1715379 () Bool)

(declare-fun tp!1715376 () Bool)

(assert (=> b!6139901 (= e!3741904 (and tp!1715379 tp!1715376))))

(declare-fun b!6139900 () Bool)

(assert (=> b!6139900 (= e!3741904 tp_is_empty!41417)))

(declare-fun b!6139902 () Bool)

(declare-fun tp!1715377 () Bool)

(assert (=> b!6139902 (= e!3741904 tp!1715377)))

(assert (=> b!6139048 (= tp!1715284 e!3741904)))

(declare-fun b!6139903 () Bool)

(declare-fun tp!1715380 () Bool)

(declare-fun tp!1715378 () Bool)

(assert (=> b!6139903 (= e!3741904 (and tp!1715380 tp!1715378))))

(assert (= (and b!6139048 (is-ElementMatch!16082 (regTwo!32677 (regOne!32677 r!7292)))) b!6139900))

(assert (= (and b!6139048 (is-Concat!24927 (regTwo!32677 (regOne!32677 r!7292)))) b!6139901))

(assert (= (and b!6139048 (is-Star!16082 (regTwo!32677 (regOne!32677 r!7292)))) b!6139902))

(assert (= (and b!6139048 (is-Union!16082 (regTwo!32677 (regOne!32677 r!7292)))) b!6139903))

(declare-fun b!6139905 () Bool)

(declare-fun e!3741905 () Bool)

(declare-fun tp!1715384 () Bool)

(declare-fun tp!1715381 () Bool)

(assert (=> b!6139905 (= e!3741905 (and tp!1715384 tp!1715381))))

(declare-fun b!6139904 () Bool)

(assert (=> b!6139904 (= e!3741905 tp_is_empty!41417)))

(declare-fun b!6139906 () Bool)

(declare-fun tp!1715382 () Bool)

(assert (=> b!6139906 (= e!3741905 tp!1715382)))

(assert (=> b!6139012 (= tp!1715246 e!3741905)))

(declare-fun b!6139907 () Bool)

(declare-fun tp!1715385 () Bool)

(declare-fun tp!1715383 () Bool)

(assert (=> b!6139907 (= e!3741905 (and tp!1715385 tp!1715383))))

(assert (= (and b!6139012 (is-ElementMatch!16082 (h!70869 (exprs!5966 (h!70870 zl!343))))) b!6139904))

(assert (= (and b!6139012 (is-Concat!24927 (h!70869 (exprs!5966 (h!70870 zl!343))))) b!6139905))

(assert (= (and b!6139012 (is-Star!16082 (h!70869 (exprs!5966 (h!70870 zl!343))))) b!6139906))

(assert (= (and b!6139012 (is-Union!16082 (h!70869 (exprs!5966 (h!70870 zl!343))))) b!6139907))

(declare-fun b!6139908 () Bool)

(declare-fun e!3741906 () Bool)

(declare-fun tp!1715386 () Bool)

(declare-fun tp!1715387 () Bool)

(assert (=> b!6139908 (= e!3741906 (and tp!1715386 tp!1715387))))

(assert (=> b!6139012 (= tp!1715247 e!3741906)))

(assert (= (and b!6139012 (is-Cons!64421 (t!378022 (exprs!5966 (h!70870 zl!343))))) b!6139908))

(declare-fun b!6139909 () Bool)

(declare-fun e!3741907 () Bool)

(declare-fun tp!1715388 () Bool)

(declare-fun tp!1715389 () Bool)

(assert (=> b!6139909 (= e!3741907 (and tp!1715388 tp!1715389))))

(assert (=> b!6139025 (= tp!1715258 e!3741907)))

(assert (= (and b!6139025 (is-Cons!64421 (exprs!5966 (h!70870 (t!378023 zl!343))))) b!6139909))

(declare-fun b!6139911 () Bool)

(declare-fun e!3741908 () Bool)

(declare-fun tp!1715393 () Bool)

(declare-fun tp!1715390 () Bool)

(assert (=> b!6139911 (= e!3741908 (and tp!1715393 tp!1715390))))

(declare-fun b!6139910 () Bool)

(assert (=> b!6139910 (= e!3741908 tp_is_empty!41417)))

(declare-fun b!6139912 () Bool)

(declare-fun tp!1715391 () Bool)

(assert (=> b!6139912 (= e!3741908 tp!1715391)))

(assert (=> b!6139046 (= tp!1715285 e!3741908)))

(declare-fun b!6139913 () Bool)

(declare-fun tp!1715394 () Bool)

(declare-fun tp!1715392 () Bool)

(assert (=> b!6139913 (= e!3741908 (and tp!1715394 tp!1715392))))

(assert (= (and b!6139046 (is-ElementMatch!16082 (regOne!32676 (regOne!32677 r!7292)))) b!6139910))

(assert (= (and b!6139046 (is-Concat!24927 (regOne!32676 (regOne!32677 r!7292)))) b!6139911))

(assert (= (and b!6139046 (is-Star!16082 (regOne!32676 (regOne!32677 r!7292)))) b!6139912))

(assert (= (and b!6139046 (is-Union!16082 (regOne!32676 (regOne!32677 r!7292)))) b!6139913))

(declare-fun b!6139915 () Bool)

(declare-fun e!3741909 () Bool)

(declare-fun tp!1715398 () Bool)

(declare-fun tp!1715395 () Bool)

(assert (=> b!6139915 (= e!3741909 (and tp!1715398 tp!1715395))))

(declare-fun b!6139914 () Bool)

(assert (=> b!6139914 (= e!3741909 tp_is_empty!41417)))

(declare-fun b!6139916 () Bool)

(declare-fun tp!1715396 () Bool)

(assert (=> b!6139916 (= e!3741909 tp!1715396)))

(assert (=> b!6139046 (= tp!1715282 e!3741909)))

(declare-fun b!6139917 () Bool)

(declare-fun tp!1715399 () Bool)

(declare-fun tp!1715397 () Bool)

(assert (=> b!6139917 (= e!3741909 (and tp!1715399 tp!1715397))))

(assert (= (and b!6139046 (is-ElementMatch!16082 (regTwo!32676 (regOne!32677 r!7292)))) b!6139914))

(assert (= (and b!6139046 (is-Concat!24927 (regTwo!32676 (regOne!32677 r!7292)))) b!6139915))

(assert (= (and b!6139046 (is-Star!16082 (regTwo!32676 (regOne!32677 r!7292)))) b!6139916))

(assert (= (and b!6139046 (is-Union!16082 (regTwo!32676 (regOne!32677 r!7292)))) b!6139917))

(declare-fun b!6139919 () Bool)

(declare-fun e!3741910 () Bool)

(declare-fun tp!1715403 () Bool)

(declare-fun tp!1715400 () Bool)

(assert (=> b!6139919 (= e!3741910 (and tp!1715403 tp!1715400))))

(declare-fun b!6139918 () Bool)

(assert (=> b!6139918 (= e!3741910 tp_is_empty!41417)))

(declare-fun b!6139920 () Bool)

(declare-fun tp!1715401 () Bool)

(assert (=> b!6139920 (= e!3741910 tp!1715401)))

(assert (=> b!6139055 (= tp!1715293 e!3741910)))

(declare-fun b!6139921 () Bool)

(declare-fun tp!1715404 () Bool)

(declare-fun tp!1715402 () Bool)

(assert (=> b!6139921 (= e!3741910 (and tp!1715404 tp!1715402))))

(assert (= (and b!6139055 (is-ElementMatch!16082 (reg!16411 (reg!16411 r!7292)))) b!6139918))

(assert (= (and b!6139055 (is-Concat!24927 (reg!16411 (reg!16411 r!7292)))) b!6139919))

(assert (= (and b!6139055 (is-Star!16082 (reg!16411 (reg!16411 r!7292)))) b!6139920))

(assert (= (and b!6139055 (is-Union!16082 (reg!16411 (reg!16411 r!7292)))) b!6139921))

(declare-fun b!6139923 () Bool)

(declare-fun e!3741911 () Bool)

(declare-fun tp!1715408 () Bool)

(declare-fun tp!1715405 () Bool)

(assert (=> b!6139923 (= e!3741911 (and tp!1715408 tp!1715405))))

(declare-fun b!6139922 () Bool)

(assert (=> b!6139922 (= e!3741911 tp_is_empty!41417)))

(declare-fun b!6139924 () Bool)

(declare-fun tp!1715406 () Bool)

(assert (=> b!6139924 (= e!3741911 tp!1715406)))

(assert (=> b!6139039 (= tp!1715274 e!3741911)))

(declare-fun b!6139925 () Bool)

(declare-fun tp!1715409 () Bool)

(declare-fun tp!1715407 () Bool)

(assert (=> b!6139925 (= e!3741911 (and tp!1715409 tp!1715407))))

(assert (= (and b!6139039 (is-ElementMatch!16082 (regOne!32677 (regOne!32676 r!7292)))) b!6139922))

(assert (= (and b!6139039 (is-Concat!24927 (regOne!32677 (regOne!32676 r!7292)))) b!6139923))

(assert (= (and b!6139039 (is-Star!16082 (regOne!32677 (regOne!32676 r!7292)))) b!6139924))

(assert (= (and b!6139039 (is-Union!16082 (regOne!32677 (regOne!32676 r!7292)))) b!6139925))

(declare-fun b!6139927 () Bool)

(declare-fun e!3741912 () Bool)

(declare-fun tp!1715413 () Bool)

(declare-fun tp!1715410 () Bool)

(assert (=> b!6139927 (= e!3741912 (and tp!1715413 tp!1715410))))

(declare-fun b!6139926 () Bool)

(assert (=> b!6139926 (= e!3741912 tp_is_empty!41417)))

(declare-fun b!6139928 () Bool)

(declare-fun tp!1715411 () Bool)

(assert (=> b!6139928 (= e!3741912 tp!1715411)))

(assert (=> b!6139039 (= tp!1715272 e!3741912)))

(declare-fun b!6139929 () Bool)

(declare-fun tp!1715414 () Bool)

(declare-fun tp!1715412 () Bool)

(assert (=> b!6139929 (= e!3741912 (and tp!1715414 tp!1715412))))

(assert (= (and b!6139039 (is-ElementMatch!16082 (regTwo!32677 (regOne!32676 r!7292)))) b!6139926))

(assert (= (and b!6139039 (is-Concat!24927 (regTwo!32677 (regOne!32676 r!7292)))) b!6139927))

(assert (= (and b!6139039 (is-Star!16082 (regTwo!32677 (regOne!32676 r!7292)))) b!6139928))

(assert (= (and b!6139039 (is-Union!16082 (regTwo!32677 (regOne!32676 r!7292)))) b!6139929))

(declare-fun b!6139931 () Bool)

(declare-fun e!3741913 () Bool)

(declare-fun tp!1715418 () Bool)

(declare-fun tp!1715415 () Bool)

(assert (=> b!6139931 (= e!3741913 (and tp!1715418 tp!1715415))))

(declare-fun b!6139930 () Bool)

(assert (=> b!6139930 (= e!3741913 tp_is_empty!41417)))

(declare-fun b!6139932 () Bool)

(declare-fun tp!1715416 () Bool)

(assert (=> b!6139932 (= e!3741913 tp!1715416)))

(assert (=> b!6139047 (= tp!1715283 e!3741913)))

(declare-fun b!6139933 () Bool)

(declare-fun tp!1715419 () Bool)

(declare-fun tp!1715417 () Bool)

(assert (=> b!6139933 (= e!3741913 (and tp!1715419 tp!1715417))))

(assert (= (and b!6139047 (is-ElementMatch!16082 (reg!16411 (regOne!32677 r!7292)))) b!6139930))

(assert (= (and b!6139047 (is-Concat!24927 (reg!16411 (regOne!32677 r!7292)))) b!6139931))

(assert (= (and b!6139047 (is-Star!16082 (reg!16411 (regOne!32677 r!7292)))) b!6139932))

(assert (= (and b!6139047 (is-Union!16082 (reg!16411 (regOne!32677 r!7292)))) b!6139933))

(declare-fun b!6139935 () Bool)

(declare-fun e!3741914 () Bool)

(declare-fun tp!1715423 () Bool)

(declare-fun tp!1715420 () Bool)

(assert (=> b!6139935 (= e!3741914 (and tp!1715423 tp!1715420))))

(declare-fun b!6139934 () Bool)

(assert (=> b!6139934 (= e!3741914 tp_is_empty!41417)))

(declare-fun b!6139936 () Bool)

(declare-fun tp!1715421 () Bool)

(assert (=> b!6139936 (= e!3741914 tp!1715421)))

(assert (=> b!6139056 (= tp!1715296 e!3741914)))

(declare-fun b!6139937 () Bool)

(declare-fun tp!1715424 () Bool)

(declare-fun tp!1715422 () Bool)

(assert (=> b!6139937 (= e!3741914 (and tp!1715424 tp!1715422))))

(assert (= (and b!6139056 (is-ElementMatch!16082 (regOne!32677 (reg!16411 r!7292)))) b!6139934))

(assert (= (and b!6139056 (is-Concat!24927 (regOne!32677 (reg!16411 r!7292)))) b!6139935))

(assert (= (and b!6139056 (is-Star!16082 (regOne!32677 (reg!16411 r!7292)))) b!6139936))

(assert (= (and b!6139056 (is-Union!16082 (regOne!32677 (reg!16411 r!7292)))) b!6139937))

(declare-fun b!6139939 () Bool)

(declare-fun e!3741915 () Bool)

(declare-fun tp!1715428 () Bool)

(declare-fun tp!1715425 () Bool)

(assert (=> b!6139939 (= e!3741915 (and tp!1715428 tp!1715425))))

(declare-fun b!6139938 () Bool)

(assert (=> b!6139938 (= e!3741915 tp_is_empty!41417)))

(declare-fun b!6139940 () Bool)

(declare-fun tp!1715426 () Bool)

(assert (=> b!6139940 (= e!3741915 tp!1715426)))

(assert (=> b!6139056 (= tp!1715294 e!3741915)))

(declare-fun b!6139941 () Bool)

(declare-fun tp!1715429 () Bool)

(declare-fun tp!1715427 () Bool)

(assert (=> b!6139941 (= e!3741915 (and tp!1715429 tp!1715427))))

(assert (= (and b!6139056 (is-ElementMatch!16082 (regTwo!32677 (reg!16411 r!7292)))) b!6139938))

(assert (= (and b!6139056 (is-Concat!24927 (regTwo!32677 (reg!16411 r!7292)))) b!6139939))

(assert (= (and b!6139056 (is-Star!16082 (regTwo!32677 (reg!16411 r!7292)))) b!6139940))

(assert (= (and b!6139056 (is-Union!16082 (regTwo!32677 (reg!16411 r!7292)))) b!6139941))

(declare-fun b!6139943 () Bool)

(declare-fun e!3741916 () Bool)

(declare-fun tp!1715433 () Bool)

(declare-fun tp!1715430 () Bool)

(assert (=> b!6139943 (= e!3741916 (and tp!1715433 tp!1715430))))

(declare-fun b!6139942 () Bool)

(assert (=> b!6139942 (= e!3741916 tp_is_empty!41417)))

(declare-fun b!6139944 () Bool)

(declare-fun tp!1715431 () Bool)

(assert (=> b!6139944 (= e!3741916 tp!1715431)))

(assert (=> b!6139037 (= tp!1715273 e!3741916)))

(declare-fun b!6139945 () Bool)

(declare-fun tp!1715434 () Bool)

(declare-fun tp!1715432 () Bool)

(assert (=> b!6139945 (= e!3741916 (and tp!1715434 tp!1715432))))

(assert (= (and b!6139037 (is-ElementMatch!16082 (regOne!32676 (regOne!32676 r!7292)))) b!6139942))

(assert (= (and b!6139037 (is-Concat!24927 (regOne!32676 (regOne!32676 r!7292)))) b!6139943))

(assert (= (and b!6139037 (is-Star!16082 (regOne!32676 (regOne!32676 r!7292)))) b!6139944))

(assert (= (and b!6139037 (is-Union!16082 (regOne!32676 (regOne!32676 r!7292)))) b!6139945))

(declare-fun b!6139947 () Bool)

(declare-fun e!3741917 () Bool)

(declare-fun tp!1715438 () Bool)

(declare-fun tp!1715435 () Bool)

(assert (=> b!6139947 (= e!3741917 (and tp!1715438 tp!1715435))))

(declare-fun b!6139946 () Bool)

(assert (=> b!6139946 (= e!3741917 tp_is_empty!41417)))

(declare-fun b!6139948 () Bool)

(declare-fun tp!1715436 () Bool)

(assert (=> b!6139948 (= e!3741917 tp!1715436)))

(assert (=> b!6139037 (= tp!1715270 e!3741917)))

(declare-fun b!6139949 () Bool)

(declare-fun tp!1715439 () Bool)

(declare-fun tp!1715437 () Bool)

(assert (=> b!6139949 (= e!3741917 (and tp!1715439 tp!1715437))))

(assert (= (and b!6139037 (is-ElementMatch!16082 (regTwo!32676 (regOne!32676 r!7292)))) b!6139946))

(assert (= (and b!6139037 (is-Concat!24927 (regTwo!32676 (regOne!32676 r!7292)))) b!6139947))

(assert (= (and b!6139037 (is-Star!16082 (regTwo!32676 (regOne!32676 r!7292)))) b!6139948))

(assert (= (and b!6139037 (is-Union!16082 (regTwo!32676 (regOne!32676 r!7292)))) b!6139949))

(declare-fun b!6139950 () Bool)

(declare-fun e!3741918 () Bool)

(declare-fun tp!1715440 () Bool)

(declare-fun tp!1715441 () Bool)

(assert (=> b!6139950 (= e!3741918 (and tp!1715440 tp!1715441))))

(assert (=> b!6139017 (= tp!1715252 e!3741918)))

(assert (= (and b!6139017 (is-Cons!64421 (exprs!5966 setElem!41521))) b!6139950))

(declare-fun b!6139952 () Bool)

(declare-fun e!3741919 () Bool)

(declare-fun tp!1715445 () Bool)

(declare-fun tp!1715442 () Bool)

(assert (=> b!6139952 (= e!3741919 (and tp!1715445 tp!1715442))))

(declare-fun b!6139951 () Bool)

(assert (=> b!6139951 (= e!3741919 tp_is_empty!41417)))

(declare-fun b!6139953 () Bool)

(declare-fun tp!1715443 () Bool)

(assert (=> b!6139953 (= e!3741919 tp!1715443)))

(assert (=> b!6139054 (= tp!1715295 e!3741919)))

(declare-fun b!6139954 () Bool)

(declare-fun tp!1715446 () Bool)

(declare-fun tp!1715444 () Bool)

(assert (=> b!6139954 (= e!3741919 (and tp!1715446 tp!1715444))))

(assert (= (and b!6139054 (is-ElementMatch!16082 (regOne!32676 (reg!16411 r!7292)))) b!6139951))

(assert (= (and b!6139054 (is-Concat!24927 (regOne!32676 (reg!16411 r!7292)))) b!6139952))

(assert (= (and b!6139054 (is-Star!16082 (regOne!32676 (reg!16411 r!7292)))) b!6139953))

(assert (= (and b!6139054 (is-Union!16082 (regOne!32676 (reg!16411 r!7292)))) b!6139954))

(declare-fun b!6139956 () Bool)

(declare-fun e!3741920 () Bool)

(declare-fun tp!1715450 () Bool)

(declare-fun tp!1715447 () Bool)

(assert (=> b!6139956 (= e!3741920 (and tp!1715450 tp!1715447))))

(declare-fun b!6139955 () Bool)

(assert (=> b!6139955 (= e!3741920 tp_is_empty!41417)))

(declare-fun b!6139957 () Bool)

(declare-fun tp!1715448 () Bool)

(assert (=> b!6139957 (= e!3741920 tp!1715448)))

(assert (=> b!6139054 (= tp!1715292 e!3741920)))

(declare-fun b!6139958 () Bool)

(declare-fun tp!1715451 () Bool)

(declare-fun tp!1715449 () Bool)

(assert (=> b!6139958 (= e!3741920 (and tp!1715451 tp!1715449))))

(assert (= (and b!6139054 (is-ElementMatch!16082 (regTwo!32676 (reg!16411 r!7292)))) b!6139955))

(assert (= (and b!6139054 (is-Concat!24927 (regTwo!32676 (reg!16411 r!7292)))) b!6139956))

(assert (= (and b!6139054 (is-Star!16082 (regTwo!32676 (reg!16411 r!7292)))) b!6139957))

(assert (= (and b!6139054 (is-Union!16082 (regTwo!32676 (reg!16411 r!7292)))) b!6139958))

(declare-fun b!6139960 () Bool)

(declare-fun e!3741921 () Bool)

(declare-fun tp!1715455 () Bool)

(declare-fun tp!1715452 () Bool)

(assert (=> b!6139960 (= e!3741921 (and tp!1715455 tp!1715452))))

(declare-fun b!6139959 () Bool)

(assert (=> b!6139959 (= e!3741921 tp_is_empty!41417)))

(declare-fun b!6139961 () Bool)

(declare-fun tp!1715453 () Bool)

(assert (=> b!6139961 (= e!3741921 tp!1715453)))

(assert (=> b!6139038 (= tp!1715271 e!3741921)))

(declare-fun b!6139962 () Bool)

(declare-fun tp!1715456 () Bool)

(declare-fun tp!1715454 () Bool)

(assert (=> b!6139962 (= e!3741921 (and tp!1715456 tp!1715454))))

(assert (= (and b!6139038 (is-ElementMatch!16082 (reg!16411 (regOne!32676 r!7292)))) b!6139959))

(assert (= (and b!6139038 (is-Concat!24927 (reg!16411 (regOne!32676 r!7292)))) b!6139960))

(assert (= (and b!6139038 (is-Star!16082 (reg!16411 (regOne!32676 r!7292)))) b!6139961))

(assert (= (and b!6139038 (is-Union!16082 (reg!16411 (regOne!32676 r!7292)))) b!6139962))

(declare-fun condSetEmpty!41529 () Bool)

(assert (=> setNonEmpty!41521 (= condSetEmpty!41529 (= setRest!41521 (as set.empty (Set Context!10932))))))

(declare-fun setRes!41529 () Bool)

(assert (=> setNonEmpty!41521 (= tp!1715253 setRes!41529)))

(declare-fun setIsEmpty!41529 () Bool)

(assert (=> setIsEmpty!41529 setRes!41529))

(declare-fun tp!1715458 () Bool)

(declare-fun e!3741922 () Bool)

(declare-fun setElem!41529 () Context!10932)

(declare-fun setNonEmpty!41529 () Bool)

(assert (=> setNonEmpty!41529 (= setRes!41529 (and tp!1715458 (inv!83453 setElem!41529) e!3741922))))

(declare-fun setRest!41529 () (Set Context!10932))

(assert (=> setNonEmpty!41529 (= setRest!41521 (set.union (set.insert setElem!41529 (as set.empty (Set Context!10932))) setRest!41529))))

(declare-fun b!6139963 () Bool)

(declare-fun tp!1715457 () Bool)

(assert (=> b!6139963 (= e!3741922 tp!1715457)))

(assert (= (and setNonEmpty!41521 condSetEmpty!41529) setIsEmpty!41529))

(assert (= (and setNonEmpty!41521 (not condSetEmpty!41529)) setNonEmpty!41529))

(assert (= setNonEmpty!41529 b!6139963))

(declare-fun m!6981582 () Bool)

(assert (=> setNonEmpty!41529 m!6981582))

(declare-fun b!6139965 () Bool)

(declare-fun e!3741923 () Bool)

(declare-fun tp!1715462 () Bool)

(declare-fun tp!1715459 () Bool)

(assert (=> b!6139965 (= e!3741923 (and tp!1715462 tp!1715459))))

(declare-fun b!6139964 () Bool)

(assert (=> b!6139964 (= e!3741923 tp_is_empty!41417)))

(declare-fun b!6139966 () Bool)

(declare-fun tp!1715460 () Bool)

(assert (=> b!6139966 (= e!3741923 tp!1715460)))

(assert (=> b!6139044 (= tp!1715280 e!3741923)))

(declare-fun b!6139967 () Bool)

(declare-fun tp!1715463 () Bool)

(declare-fun tp!1715461 () Bool)

(assert (=> b!6139967 (= e!3741923 (and tp!1715463 tp!1715461))))

(assert (= (and b!6139044 (is-ElementMatch!16082 (h!70869 (exprs!5966 setElem!41515)))) b!6139964))

(assert (= (and b!6139044 (is-Concat!24927 (h!70869 (exprs!5966 setElem!41515)))) b!6139965))

(assert (= (and b!6139044 (is-Star!16082 (h!70869 (exprs!5966 setElem!41515)))) b!6139966))

(assert (= (and b!6139044 (is-Union!16082 (h!70869 (exprs!5966 setElem!41515)))) b!6139967))

(declare-fun b!6139968 () Bool)

(declare-fun e!3741924 () Bool)

(declare-fun tp!1715464 () Bool)

(declare-fun tp!1715465 () Bool)

(assert (=> b!6139968 (= e!3741924 (and tp!1715464 tp!1715465))))

(assert (=> b!6139044 (= tp!1715281 e!3741924)))

(assert (= (and b!6139044 (is-Cons!64421 (t!378022 (exprs!5966 setElem!41515)))) b!6139968))

(declare-fun b!6139970 () Bool)

(declare-fun e!3741925 () Bool)

(declare-fun tp!1715469 () Bool)

(declare-fun tp!1715466 () Bool)

(assert (=> b!6139970 (= e!3741925 (and tp!1715469 tp!1715466))))

(declare-fun b!6139969 () Bool)

(assert (=> b!6139969 (= e!3741925 tp_is_empty!41417)))

(declare-fun b!6139971 () Bool)

(declare-fun tp!1715467 () Bool)

(assert (=> b!6139971 (= e!3741925 tp!1715467)))

(assert (=> b!6139051 (= tp!1715288 e!3741925)))

(declare-fun b!6139972 () Bool)

(declare-fun tp!1715470 () Bool)

(declare-fun tp!1715468 () Bool)

(assert (=> b!6139972 (= e!3741925 (and tp!1715470 tp!1715468))))

(assert (= (and b!6139051 (is-ElementMatch!16082 (reg!16411 (regTwo!32677 r!7292)))) b!6139969))

(assert (= (and b!6139051 (is-Concat!24927 (reg!16411 (regTwo!32677 r!7292)))) b!6139970))

(assert (= (and b!6139051 (is-Star!16082 (reg!16411 (regTwo!32677 r!7292)))) b!6139971))

(assert (= (and b!6139051 (is-Union!16082 (reg!16411 (regTwo!32677 r!7292)))) b!6139972))

(declare-fun b!6139974 () Bool)

(declare-fun e!3741926 () Bool)

(declare-fun tp!1715474 () Bool)

(declare-fun tp!1715471 () Bool)

(assert (=> b!6139974 (= e!3741926 (and tp!1715474 tp!1715471))))

(declare-fun b!6139973 () Bool)

(assert (=> b!6139973 (= e!3741926 tp_is_empty!41417)))

(declare-fun b!6139975 () Bool)

(declare-fun tp!1715472 () Bool)

(assert (=> b!6139975 (= e!3741926 tp!1715472)))

(assert (=> b!6139050 (= tp!1715290 e!3741926)))

(declare-fun b!6139976 () Bool)

(declare-fun tp!1715475 () Bool)

(declare-fun tp!1715473 () Bool)

(assert (=> b!6139976 (= e!3741926 (and tp!1715475 tp!1715473))))

(assert (= (and b!6139050 (is-ElementMatch!16082 (regOne!32676 (regTwo!32677 r!7292)))) b!6139973))

(assert (= (and b!6139050 (is-Concat!24927 (regOne!32676 (regTwo!32677 r!7292)))) b!6139974))

(assert (= (and b!6139050 (is-Star!16082 (regOne!32676 (regTwo!32677 r!7292)))) b!6139975))

(assert (= (and b!6139050 (is-Union!16082 (regOne!32676 (regTwo!32677 r!7292)))) b!6139976))

(declare-fun b!6139978 () Bool)

(declare-fun e!3741927 () Bool)

(declare-fun tp!1715479 () Bool)

(declare-fun tp!1715476 () Bool)

(assert (=> b!6139978 (= e!3741927 (and tp!1715479 tp!1715476))))

(declare-fun b!6139977 () Bool)

(assert (=> b!6139977 (= e!3741927 tp_is_empty!41417)))

(declare-fun b!6139979 () Bool)

(declare-fun tp!1715477 () Bool)

(assert (=> b!6139979 (= e!3741927 tp!1715477)))

(assert (=> b!6139050 (= tp!1715287 e!3741927)))

(declare-fun b!6139980 () Bool)

(declare-fun tp!1715480 () Bool)

(declare-fun tp!1715478 () Bool)

(assert (=> b!6139980 (= e!3741927 (and tp!1715480 tp!1715478))))

(assert (= (and b!6139050 (is-ElementMatch!16082 (regTwo!32676 (regTwo!32677 r!7292)))) b!6139977))

(assert (= (and b!6139050 (is-Concat!24927 (regTwo!32676 (regTwo!32677 r!7292)))) b!6139978))

(assert (= (and b!6139050 (is-Star!16082 (regTwo!32676 (regTwo!32677 r!7292)))) b!6139979))

(assert (= (and b!6139050 (is-Union!16082 (regTwo!32676 (regTwo!32677 r!7292)))) b!6139980))

(declare-fun b!6139982 () Bool)

(declare-fun e!3741928 () Bool)

(declare-fun tp!1715484 () Bool)

(declare-fun tp!1715481 () Bool)

(assert (=> b!6139982 (= e!3741928 (and tp!1715484 tp!1715481))))

(declare-fun b!6139981 () Bool)

(assert (=> b!6139981 (= e!3741928 tp_is_empty!41417)))

(declare-fun b!6139983 () Bool)

(declare-fun tp!1715482 () Bool)

(assert (=> b!6139983 (= e!3741928 tp!1715482)))

(assert (=> b!6139052 (= tp!1715291 e!3741928)))

(declare-fun b!6139984 () Bool)

(declare-fun tp!1715485 () Bool)

(declare-fun tp!1715483 () Bool)

(assert (=> b!6139984 (= e!3741928 (and tp!1715485 tp!1715483))))

(assert (= (and b!6139052 (is-ElementMatch!16082 (regOne!32677 (regTwo!32677 r!7292)))) b!6139981))

(assert (= (and b!6139052 (is-Concat!24927 (regOne!32677 (regTwo!32677 r!7292)))) b!6139982))

(assert (= (and b!6139052 (is-Star!16082 (regOne!32677 (regTwo!32677 r!7292)))) b!6139983))

(assert (= (and b!6139052 (is-Union!16082 (regOne!32677 (regTwo!32677 r!7292)))) b!6139984))

(declare-fun b!6139986 () Bool)

(declare-fun e!3741929 () Bool)

(declare-fun tp!1715489 () Bool)

(declare-fun tp!1715486 () Bool)

(assert (=> b!6139986 (= e!3741929 (and tp!1715489 tp!1715486))))

(declare-fun b!6139985 () Bool)

(assert (=> b!6139985 (= e!3741929 tp_is_empty!41417)))

(declare-fun b!6139987 () Bool)

(declare-fun tp!1715487 () Bool)

(assert (=> b!6139987 (= e!3741929 tp!1715487)))

(assert (=> b!6139052 (= tp!1715289 e!3741929)))

(declare-fun b!6139988 () Bool)

(declare-fun tp!1715490 () Bool)

(declare-fun tp!1715488 () Bool)

(assert (=> b!6139988 (= e!3741929 (and tp!1715490 tp!1715488))))

(assert (= (and b!6139052 (is-ElementMatch!16082 (regTwo!32677 (regTwo!32677 r!7292)))) b!6139985))

(assert (= (and b!6139052 (is-Concat!24927 (regTwo!32677 (regTwo!32677 r!7292)))) b!6139986))

(assert (= (and b!6139052 (is-Star!16082 (regTwo!32677 (regTwo!32677 r!7292)))) b!6139987))

(assert (= (and b!6139052 (is-Union!16082 (regTwo!32677 (regTwo!32677 r!7292)))) b!6139988))

(declare-fun b!6139990 () Bool)

(declare-fun e!3741930 () Bool)

(declare-fun tp!1715494 () Bool)

(declare-fun tp!1715491 () Bool)

(assert (=> b!6139990 (= e!3741930 (and tp!1715494 tp!1715491))))

(declare-fun b!6139989 () Bool)

(assert (=> b!6139989 (= e!3741930 tp_is_empty!41417)))

(declare-fun b!6139991 () Bool)

(declare-fun tp!1715492 () Bool)

(assert (=> b!6139991 (= e!3741930 tp!1715492)))

(assert (=> b!6139042 (= tp!1715276 e!3741930)))

(declare-fun b!6139992 () Bool)

(declare-fun tp!1715495 () Bool)

(declare-fun tp!1715493 () Bool)

(assert (=> b!6139992 (= e!3741930 (and tp!1715495 tp!1715493))))

(assert (= (and b!6139042 (is-ElementMatch!16082 (reg!16411 (regTwo!32676 r!7292)))) b!6139989))

(assert (= (and b!6139042 (is-Concat!24927 (reg!16411 (regTwo!32676 r!7292)))) b!6139990))

(assert (= (and b!6139042 (is-Star!16082 (reg!16411 (regTwo!32676 r!7292)))) b!6139991))

(assert (= (and b!6139042 (is-Union!16082 (reg!16411 (regTwo!32676 r!7292)))) b!6139992))

(declare-fun b!6139994 () Bool)

(declare-fun e!3741931 () Bool)

(declare-fun tp!1715499 () Bool)

(declare-fun tp!1715496 () Bool)

(assert (=> b!6139994 (= e!3741931 (and tp!1715499 tp!1715496))))

(declare-fun b!6139993 () Bool)

(assert (=> b!6139993 (= e!3741931 tp_is_empty!41417)))

(declare-fun b!6139995 () Bool)

(declare-fun tp!1715497 () Bool)

(assert (=> b!6139995 (= e!3741931 tp!1715497)))

(assert (=> b!6139041 (= tp!1715278 e!3741931)))

(declare-fun b!6139996 () Bool)

(declare-fun tp!1715500 () Bool)

(declare-fun tp!1715498 () Bool)

(assert (=> b!6139996 (= e!3741931 (and tp!1715500 tp!1715498))))

(assert (= (and b!6139041 (is-ElementMatch!16082 (regOne!32676 (regTwo!32676 r!7292)))) b!6139993))

(assert (= (and b!6139041 (is-Concat!24927 (regOne!32676 (regTwo!32676 r!7292)))) b!6139994))

(assert (= (and b!6139041 (is-Star!16082 (regOne!32676 (regTwo!32676 r!7292)))) b!6139995))

(assert (= (and b!6139041 (is-Union!16082 (regOne!32676 (regTwo!32676 r!7292)))) b!6139996))

(declare-fun b!6139998 () Bool)

(declare-fun e!3741932 () Bool)

(declare-fun tp!1715504 () Bool)

(declare-fun tp!1715501 () Bool)

(assert (=> b!6139998 (= e!3741932 (and tp!1715504 tp!1715501))))

(declare-fun b!6139997 () Bool)

(assert (=> b!6139997 (= e!3741932 tp_is_empty!41417)))

(declare-fun b!6139999 () Bool)

(declare-fun tp!1715502 () Bool)

(assert (=> b!6139999 (= e!3741932 tp!1715502)))

(assert (=> b!6139041 (= tp!1715275 e!3741932)))

(declare-fun b!6140000 () Bool)

(declare-fun tp!1715505 () Bool)

(declare-fun tp!1715503 () Bool)

(assert (=> b!6140000 (= e!3741932 (and tp!1715505 tp!1715503))))

(assert (= (and b!6139041 (is-ElementMatch!16082 (regTwo!32676 (regTwo!32676 r!7292)))) b!6139997))

(assert (= (and b!6139041 (is-Concat!24927 (regTwo!32676 (regTwo!32676 r!7292)))) b!6139998))

(assert (= (and b!6139041 (is-Star!16082 (regTwo!32676 (regTwo!32676 r!7292)))) b!6139999))

(assert (= (and b!6139041 (is-Union!16082 (regTwo!32676 (regTwo!32676 r!7292)))) b!6140000))

(declare-fun b!6140002 () Bool)

(declare-fun e!3741933 () Bool)

(declare-fun tp!1715509 () Bool)

(declare-fun tp!1715506 () Bool)

(assert (=> b!6140002 (= e!3741933 (and tp!1715509 tp!1715506))))

(declare-fun b!6140001 () Bool)

(assert (=> b!6140001 (= e!3741933 tp_is_empty!41417)))

(declare-fun b!6140003 () Bool)

(declare-fun tp!1715507 () Bool)

(assert (=> b!6140003 (= e!3741933 tp!1715507)))

(assert (=> b!6139043 (= tp!1715279 e!3741933)))

(declare-fun b!6140004 () Bool)

(declare-fun tp!1715510 () Bool)

(declare-fun tp!1715508 () Bool)

(assert (=> b!6140004 (= e!3741933 (and tp!1715510 tp!1715508))))

(assert (= (and b!6139043 (is-ElementMatch!16082 (regOne!32677 (regTwo!32676 r!7292)))) b!6140001))

(assert (= (and b!6139043 (is-Concat!24927 (regOne!32677 (regTwo!32676 r!7292)))) b!6140002))

(assert (= (and b!6139043 (is-Star!16082 (regOne!32677 (regTwo!32676 r!7292)))) b!6140003))

(assert (= (and b!6139043 (is-Union!16082 (regOne!32677 (regTwo!32676 r!7292)))) b!6140004))

(declare-fun b!6140006 () Bool)

(declare-fun e!3741934 () Bool)

(declare-fun tp!1715514 () Bool)

(declare-fun tp!1715511 () Bool)

(assert (=> b!6140006 (= e!3741934 (and tp!1715514 tp!1715511))))

(declare-fun b!6140005 () Bool)

(assert (=> b!6140005 (= e!3741934 tp_is_empty!41417)))

(declare-fun b!6140007 () Bool)

(declare-fun tp!1715512 () Bool)

(assert (=> b!6140007 (= e!3741934 tp!1715512)))

(assert (=> b!6139043 (= tp!1715277 e!3741934)))

(declare-fun b!6140008 () Bool)

(declare-fun tp!1715515 () Bool)

(declare-fun tp!1715513 () Bool)

(assert (=> b!6140008 (= e!3741934 (and tp!1715515 tp!1715513))))

(assert (= (and b!6139043 (is-ElementMatch!16082 (regTwo!32677 (regTwo!32676 r!7292)))) b!6140005))

(assert (= (and b!6139043 (is-Concat!24927 (regTwo!32677 (regTwo!32676 r!7292)))) b!6140006))

(assert (= (and b!6139043 (is-Star!16082 (regTwo!32677 (regTwo!32676 r!7292)))) b!6140007))

(assert (= (and b!6139043 (is-Union!16082 (regTwo!32677 (regTwo!32676 r!7292)))) b!6140008))

(declare-fun b!6140009 () Bool)

(declare-fun e!3741935 () Bool)

(declare-fun tp!1715516 () Bool)

(assert (=> b!6140009 (= e!3741935 (and tp_is_empty!41417 tp!1715516))))

(assert (=> b!6139007 (= tp!1715241 e!3741935)))

(assert (= (and b!6139007 (is-Cons!64423 (t!378024 (t!378024 s!2326)))) b!6140009))

(declare-fun b_lambda!233681 () Bool)

(assert (= b_lambda!233667 (or d!1923317 b_lambda!233681)))

(declare-fun bs!1522533 () Bool)

(declare-fun d!1923671 () Bool)

(assert (= bs!1522533 (and d!1923671 d!1923317)))

(assert (=> bs!1522533 (= (dynLambda!25387 lambda!334580 (h!70869 (exprs!5966 setElem!41515))) (validRegex!7818 (h!70869 (exprs!5966 setElem!41515))))))

(declare-fun m!6981584 () Bool)

(assert (=> bs!1522533 m!6981584))

(assert (=> b!6139491 d!1923671))

(declare-fun b_lambda!233683 () Bool)

(assert (= b_lambda!233669 (or d!1923345 b_lambda!233683)))

(declare-fun bs!1522534 () Bool)

(declare-fun d!1923673 () Bool)

(assert (= bs!1522534 (and d!1923673 d!1923345)))

(assert (=> bs!1522534 (= (dynLambda!25387 lambda!334584 (h!70869 (exprs!5966 lt!2332796))) (validRegex!7818 (h!70869 (exprs!5966 lt!2332796))))))

(declare-fun m!6981586 () Bool)

(assert (=> bs!1522534 m!6981586))

(assert (=> b!6139571 d!1923673))

(declare-fun b_lambda!233685 () Bool)

(assert (= b_lambda!233677 (or d!1923289 b_lambda!233685)))

(declare-fun bs!1522535 () Bool)

(declare-fun d!1923675 () Bool)

(assert (= bs!1522535 (and d!1923675 d!1923289)))

(assert (=> bs!1522535 (= (dynLambda!25387 lambda!334567 (h!70869 (unfocusZipperList!1503 zl!343))) (validRegex!7818 (h!70869 (unfocusZipperList!1503 zl!343))))))

(declare-fun m!6981588 () Bool)

(assert (=> bs!1522535 m!6981588))

(assert (=> b!6139847 d!1923675))

(declare-fun b_lambda!233687 () Bool)

(assert (= b_lambda!233671 (or d!1923279 b_lambda!233687)))

(declare-fun bs!1522536 () Bool)

(declare-fun d!1923677 () Bool)

(assert (= bs!1522536 (and d!1923677 d!1923279)))

(assert (=> bs!1522536 (= (dynLambda!25387 lambda!334558 (h!70869 (exprs!5966 (h!70870 zl!343)))) (validRegex!7818 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(declare-fun m!6981590 () Bool)

(assert (=> bs!1522536 m!6981590))

(assert (=> b!6139591 d!1923677))

(declare-fun b_lambda!233689 () Bool)

(assert (= b_lambda!233673 (or b!6138541 b_lambda!233689)))

(assert (=> d!1923539 d!1923347))

(declare-fun b_lambda!233691 () Bool)

(assert (= b_lambda!233665 (or d!1923291 b_lambda!233691)))

(declare-fun bs!1522537 () Bool)

(declare-fun d!1923679 () Bool)

(assert (= bs!1522537 (and d!1923679 d!1923291)))

(assert (=> bs!1522537 (= (dynLambda!25387 lambda!334570 (h!70869 lt!2332893)) (validRegex!7818 (h!70869 lt!2332893)))))

(declare-fun m!6981592 () Bool)

(assert (=> bs!1522537 m!6981592))

(assert (=> b!6139455 d!1923679))

(declare-fun b_lambda!233693 () Bool)

(assert (= b_lambda!233679 (or d!1923319 b_lambda!233693)))

(declare-fun bs!1522538 () Bool)

(declare-fun d!1923681 () Bool)

(assert (= bs!1522538 (and d!1923681 d!1923319)))

(assert (=> bs!1522538 (= (dynLambda!25387 lambda!334583 (h!70869 (exprs!5966 (h!70870 zl!343)))) (validRegex!7818 (h!70869 (exprs!5966 (h!70870 zl!343)))))))

(assert (=> bs!1522538 m!6981590))

(assert (=> b!6139892 d!1923681))

(declare-fun b_lambda!233695 () Bool)

(assert (= b_lambda!233675 (or b!6138541 b_lambda!233695)))

(assert (=> d!1923639 d!1923349))

(push 1)

(assert (not b!6139600))

(assert (not b!6139593))

(assert (not bm!509816))

(assert (not d!1923577))

(assert (not b!6139757))

(assert (not b!6139623))

(assert (not b!6139594))

(assert (not b!6139760))

(assert (not d!1923463))

(assert (not bm!509838))

(assert (not b!6139895))

(assert (not b!6139998))

(assert (not d!1923557))

(assert (not d!1923479))

(assert (not b!6139664))

(assert (not b!6139995))

(assert (not b!6139935))

(assert (not b!6140009))

(assert (not b!6139925))

(assert (not b_lambda!233685))

(assert (not d!1923645))

(assert (not d!1923535))

(assert (not bm!509758))

(assert (not b_lambda!233695))

(assert (not bm!509846))

(assert (not b!6139568))

(assert (not d!1923581))

(assert (not bm!509778))

(assert (not b!6139913))

(assert (not b!6139862))

(assert (not b!6139516))

(assert (not bm!509767))

(assert (not bs!1522535))

(assert (not b!6139459))

(assert (not b_lambda!233655))

(assert (not b!6139626))

(assert (not b_lambda!233693))

(assert (not bm!509764))

(assert (not b!6139972))

(assert (not b!6139535))

(assert (not b!6140004))

(assert (not b_lambda!233683))

(assert (not b!6139504))

(assert (not bm!509746))

(assert (not b!6139952))

(assert (not b!6139848))

(assert (not b!6139597))

(assert (not b!6139921))

(assert (not b!6139559))

(assert (not d!1923539))

(assert (not b!6139937))

(assert (not b!6139545))

(assert (not b!6139996))

(assert (not b!6139466))

(assert (not bm!509817))

(assert (not b!6139988))

(assert (not d!1923561))

(assert (not b!6139943))

(assert (not b!6139712))

(assert (not b!6139999))

(assert (not d!1923611))

(assert (not b!6139564))

(assert (not setNonEmpty!41528))

(assert (not b!6139933))

(assert (not b!6139627))

(assert (not b!6139865))

(assert (not b!6140008))

(assert (not setNonEmpty!41529))

(assert (not b!6139514))

(assert (not b!6139759))

(assert (not b!6139513))

(assert (not b!6139960))

(assert (not b!6139953))

(assert (not d!1923603))

(assert (not setNonEmpty!41527))

(assert (not b!6139557))

(assert (not b!6139931))

(assert (not b!6140006))

(assert (not bm!509756))

(assert (not bm!509796))

(assert (not bm!509768))

(assert (not d!1923533))

(assert (not b!6139907))

(assert (not d!1923461))

(assert (not b!6139963))

(assert (not bm!509774))

(assert (not b!6139974))

(assert (not bm!509842))

(assert (not b!6139456))

(assert (not bm!509759))

(assert (not b!6139912))

(assert (not b!6139968))

(assert (not d!1923523))

(assert (not bm!509776))

(assert (not b!6139863))

(assert (not bm!509835))

(assert (not b!6139672))

(assert (not bm!509787))

(assert (not b!6139515))

(assert (not d!1923449))

(assert (not bm!509742))

(assert (not b!6139786))

(assert (not b!6139499))

(assert (not bs!1522538))

(assert (not b!6139920))

(assert (not b!6139556))

(assert (not bm!509751))

(assert (not b!6139958))

(assert (not bm!509738))

(assert (not b_lambda!233689))

(assert (not b!6139829))

(assert (not b!6139569))

(assert (not b!6139469))

(assert (not d!1923499))

(assert (not d!1923493))

(assert (not bm!509841))

(assert (not b!6139480))

(assert (not b!6139962))

(assert (not bm!509784))

(assert (not b!6139983))

(assert (not b!6139442))

(assert (not bm!509773))

(assert (not d!1923515))

(assert (not b!6139980))

(assert (not b!6139834))

(assert (not d!1923587))

(assert (not b!6139836))

(assert (not b!6139779))

(assert (not b!6139606))

(assert (not bs!1522536))

(assert (not b!6139987))

(assert (not bm!509803))

(assert (not b!6139713))

(assert (not b!6139898))

(assert (not b!6139607))

(assert (not b!6139944))

(assert (not b!6140007))

(assert (not d!1923583))

(assert (not d!1923615))

(assert (not b!6139470))

(assert (not b!6139604))

(assert (not d!1923653))

(assert (not b!6139994))

(assert (not b!6139710))

(assert (not bm!509800))

(assert (not b!6139599))

(assert (not bm!509755))

(assert (not b_lambda!233687))

(assert (not bm!509777))

(assert (not b!6139697))

(assert (not b!6139954))

(assert (not b!6139563))

(assert (not b!6139587))

(assert (not b!6139592))

(assert (not b!6139908))

(assert (not d!1923593))

(assert (not b!6139584))

(assert (not bs!1522533))

(assert (not b!6139919))

(assert (not d!1923607))

(assert (not d!1923639))

(assert (not bm!509780))

(assert (not bm!509760))

(assert (not b!6139668))

(assert (not b!6139945))

(assert (not b!6139775))

(assert (not b!6139986))

(assert (not bm!509831))

(assert (not d!1923495))

(assert (not b!6139932))

(assert (not b!6139893))

(assert (not b!6139979))

(assert (not d!1923569))

(assert (not b!6139992))

(assert (not b!6139906))

(assert (not d!1923625))

(assert (not bm!509790))

(assert (not bm!509739))

(assert (not b!6139588))

(assert (not bm!509799))

(assert (not b!6139897))

(assert (not d!1923521))

(assert (not b!6139975))

(assert (not bm!509827))

(assert (not b!6139917))

(assert (not bm!509761))

(assert (not d!1923439))

(assert (not b!6139990))

(assert (not b!6139546))

(assert (not b!6139550))

(assert (not d!1923567))

(assert (not b!6139961))

(assert (not b!6139948))

(assert (not b!6139511))

(assert (not b!6139508))

(assert (not b!6139915))

(assert (not b!6139991))

(assert (not bm!509750))

(assert (not b!6139529))

(assert (not d!1923633))

(assert (not b!6139785))

(assert (not b!6139982))

(assert (not bm!509806))

(assert (not b!6139619))

(assert (not d!1923489))

(assert (not b!6139928))

(assert (not b!6139709))

(assert (not b!6139579))

(assert (not b!6140003))

(assert (not b!6139971))

(assert (not b!6139651))

(assert (not bm!509823))

(assert (not b!6139816))

(assert (not b!6139941))

(assert (not b!6139965))

(assert (not d!1923631))

(assert (not b!6139782))

(assert (not bm!509765))

(assert (not bm!509797))

(assert (not b!6139554))

(assert (not b!6139967))

(assert (not b!6139708))

(assert (not b!6139970))

(assert (not bm!509804))

(assert (not d!1923589))

(assert (not b!6139477))

(assert (not b!6139966))

(assert (not b!6139468))

(assert (not b!6139894))

(assert (not bm!509748))

(assert (not b!6139689))

(assert (not bm!509781))

(assert (not b!6139835))

(assert (not b!6139761))

(assert (not bm!509791))

(assert (not b!6139707))

(assert (not b!6139978))

(assert (not b!6139901))

(assert (not d!1923613))

(assert (not b!6139698))

(assert (not bs!1522537))

(assert (not bm!509745))

(assert (not bm!509828))

(assert (not b!6139575))

(assert (not b!6139936))

(assert (not bm!509832))

(assert (not b!6139585))

(assert (not d!1923641))

(assert (not b!6139849))

(assert (not b!6139552))

(assert (not b!6139762))

(assert (not b_lambda!233681))

(assert (not b!6139927))

(assert (not b!6139705))

(assert (not b!6139608))

(assert (not b!6139715))

(assert (not b!6139905))

(assert (not d!1923547))

(assert (not b!6139911))

(assert (not b!6140000))

(assert (not b!6139984))

(assert (not b!6139737))

(assert (not b!6139706))

(assert (not b!6139924))

(assert (not d!1923579))

(assert (not b!6139754))

(assert (not bm!509845))

(assert (not b!6139950))

(assert (not b!6139909))

(assert (not b!6139902))

(assert (not b!6139726))

(assert (not b!6139929))

(assert (not bm!509752))

(assert (not b!6139582))

(assert (not bm!509834))

(assert (not b!6139572))

(assert (not bm!509839))

(assert (not b!6139463))

(assert (not b!6139940))

(assert (not b!6139923))

(assert (not bm!509741))

(assert (not b!6139899))

(assert (not bm!509807))

(assert (not d!1923541))

(assert (not d!1923555))

(assert tp_is_empty!41417)

(assert (not b_lambda!233653))

(assert (not d!1923469))

(assert (not b!6139831))

(assert (not d!1923531))

(assert (not d!1923445))

(assert (not d!1923601))

(assert (not b!6139549))

(assert (not bm!509785))

(assert (not d!1923497))

(assert (not bm!509825))

(assert (not b!6139939))

(assert (not b!6139903))

(assert (not b!6139916))

(assert (not b!6139957))

(assert (not b!6139949))

(assert (not bm!509779))

(assert (not b!6139956))

(assert (not d!1923617))

(assert (not b!6139976))

(assert (not b!6139947))

(assert (not b!6139492))

(assert (not d!1923643))

(assert (not b!6139553))

(assert (not b!6139817))

(assert (not b!6140002))

(assert (not b!6139830))

(assert (not b!6139844))

(assert (not d!1923491))

(assert (not bm!509793))

(assert (not d!1923443))

(assert (not b!6139605))

(assert (not b!6139620))

(assert (not d!1923441))

(assert (not b!6139595))

(assert (not bm!509843))

(assert (not b!6139586))

(assert (not b!6139750))

(assert (not d!1923609))

(assert (not bm!509822))

(assert (not b!6139673))

(assert (not d!1923537))

(assert (not b!6139596))

(assert (not bs!1522534))

(assert (not b_lambda!233691))

(assert (not d!1923585))

(assert (not b!6139650))

(assert (not b!6139889))

(assert (not b!6139685))

(assert (not bm!509737))

(assert (not d!1923475))

(assert (not b!6139449))

(assert (not b!6139658))

(assert (not d!1923559))

(assert (not b!6139602))

(assert (not b!6139784))

(assert (not b!6139828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

