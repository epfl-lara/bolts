; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!614688 () Bool)

(assert start!614688)

(declare-fun b!6153633 () Bool)

(assert (=> b!6153633 true))

(assert (=> b!6153633 true))

(declare-fun lambda!335641 () Int)

(declare-fun lambda!335640 () Int)

(assert (=> b!6153633 (not (= lambda!335641 lambda!335640))))

(assert (=> b!6153633 true))

(assert (=> b!6153633 true))

(declare-fun b!6153643 () Bool)

(assert (=> b!6153643 true))

(declare-fun b!6153622 () Bool)

(declare-fun e!3749526 () Bool)

(declare-datatypes ((C!32462 0))(
  ( (C!32463 (val!25933 Int)) )
))
(declare-datatypes ((Regex!16096 0))(
  ( (ElementMatch!16096 (c!1107723 C!32462)) (Concat!24941 (regOne!32704 Regex!16096) (regTwo!32704 Regex!16096)) (EmptyExpr!16096) (Star!16096 (reg!16425 Regex!16096)) (EmptyLang!16096) (Union!16096 (regOne!32705 Regex!16096) (regTwo!32705 Regex!16096)) )
))
(declare-datatypes ((List!64587 0))(
  ( (Nil!64463) (Cons!64463 (h!70911 Regex!16096) (t!378078 List!64587)) )
))
(declare-datatypes ((Context!10960 0))(
  ( (Context!10961 (exprs!5980 List!64587)) )
))
(declare-fun lt!2334763 () Context!10960)

(declare-fun inv!83488 (Context!10960) Bool)

(assert (=> b!6153622 (= e!3749526 (inv!83488 lt!2334763))))

(declare-fun res!2548756 () Bool)

(declare-fun e!3749534 () Bool)

(assert (=> start!614688 (=> (not res!2548756) (not e!3749534))))

(declare-fun r!7292 () Regex!16096)

(declare-fun validRegex!7832 (Regex!16096) Bool)

(assert (=> start!614688 (= res!2548756 (validRegex!7832 r!7292))))

(assert (=> start!614688 e!3749534))

(declare-fun e!3749540 () Bool)

(assert (=> start!614688 e!3749540))

(declare-fun condSetEmpty!41673 () Bool)

(declare-fun z!1189 () (Set Context!10960))

(assert (=> start!614688 (= condSetEmpty!41673 (= z!1189 (as set.empty (Set Context!10960))))))

(declare-fun setRes!41673 () Bool)

(assert (=> start!614688 setRes!41673))

(declare-fun e!3749533 () Bool)

(assert (=> start!614688 e!3749533))

(declare-fun e!3749529 () Bool)

(assert (=> start!614688 e!3749529))

(declare-fun b!6153623 () Bool)

(declare-datatypes ((Unit!157555 0))(
  ( (Unit!157556) )
))
(declare-fun e!3749539 () Unit!157555)

(declare-fun Unit!157557 () Unit!157555)

(assert (=> b!6153623 (= e!3749539 Unit!157557)))

(declare-fun lt!2334772 () Unit!157555)

(declare-fun lt!2334751 () (Set Context!10960))

(declare-fun lt!2334770 () (Set Context!10960))

(declare-datatypes ((List!64588 0))(
  ( (Nil!64464) (Cons!64464 (h!70912 C!32462) (t!378079 List!64588)) )
))
(declare-fun s!2326 () List!64588)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!927 ((Set Context!10960) (Set Context!10960) List!64588) Unit!157555)

(assert (=> b!6153623 (= lt!2334772 (lemmaZipperConcatMatchesSameAsBothZippers!927 lt!2334770 lt!2334751 (t!378079 s!2326)))))

(declare-fun res!2548775 () Bool)

(declare-fun matchZipper!2108 ((Set Context!10960) List!64588) Bool)

(assert (=> b!6153623 (= res!2548775 (matchZipper!2108 lt!2334770 (t!378079 s!2326)))))

(declare-fun e!3749543 () Bool)

(assert (=> b!6153623 (=> res!2548775 e!3749543)))

(assert (=> b!6153623 (= (matchZipper!2108 (set.union lt!2334770 lt!2334751) (t!378079 s!2326)) e!3749543)))

(declare-fun setIsEmpty!41673 () Bool)

(assert (=> setIsEmpty!41673 setRes!41673))

(declare-fun b!6153624 () Bool)

(declare-fun tp!1718708 () Bool)

(assert (=> b!6153624 (= e!3749540 tp!1718708)))

(declare-fun b!6153625 () Bool)

(declare-fun e!3749544 () Bool)

(assert (=> b!6153625 (= e!3749544 e!3749526)))

(declare-fun res!2548763 () Bool)

(assert (=> b!6153625 (=> res!2548763 e!3749526)))

(declare-fun lt!2334758 () (Set Context!10960))

(declare-fun lt!2334760 () (Set Context!10960))

(declare-fun lt!2334757 () (Set Context!10960))

(assert (=> b!6153625 (= res!2548763 (or (not (= lt!2334758 lt!2334760)) (not (= lt!2334757 lt!2334760))))))

(declare-fun lt!2334756 () (Set Context!10960))

(assert (=> b!6153625 (= lt!2334760 (set.union lt!2334756 lt!2334751))))

(declare-fun b!6153626 () Bool)

(declare-fun e!3749542 () Bool)

(declare-fun tp!1718710 () Bool)

(assert (=> b!6153626 (= e!3749542 tp!1718710)))

(declare-fun b!6153627 () Bool)

(declare-fun e!3749537 () Bool)

(declare-fun tp!1718714 () Bool)

(assert (=> b!6153627 (= e!3749537 tp!1718714)))

(declare-fun b!6153628 () Bool)

(declare-datatypes ((List!64589 0))(
  ( (Nil!64465) (Cons!64465 (h!70913 Context!10960) (t!378080 List!64589)) )
))
(declare-fun zl!343 () List!64589)

(declare-fun tp!1718716 () Bool)

(assert (=> b!6153628 (= e!3749533 (and (inv!83488 (h!70913 zl!343)) e!3749537 tp!1718716))))

(declare-fun b!6153629 () Bool)

(declare-fun tp!1718707 () Bool)

(declare-fun tp!1718713 () Bool)

(assert (=> b!6153629 (= e!3749540 (and tp!1718707 tp!1718713))))

(declare-fun b!6153630 () Bool)

(declare-fun e!3749535 () Bool)

(assert (=> b!6153630 (= e!3749535 e!3749544)))

(declare-fun res!2548759 () Bool)

(assert (=> b!6153630 (=> res!2548759 e!3749544)))

(declare-fun nullable!6089 (Regex!16096) Bool)

(assert (=> b!6153630 (= res!2548759 (not (nullable!6089 (regTwo!32705 (regOne!32704 r!7292)))))))

(declare-fun lt!2334766 () Context!10960)

(declare-fun lambda!335642 () Int)

(declare-fun lt!2334764 () (Set Context!10960))

(declare-fun flatMap!1601 ((Set Context!10960) Int) (Set Context!10960))

(declare-fun derivationStepZipperUp!1270 (Context!10960 C!32462) (Set Context!10960))

(assert (=> b!6153630 (= (flatMap!1601 lt!2334764 lambda!335642) (derivationStepZipperUp!1270 lt!2334766 (h!70912 s!2326)))))

(declare-fun lt!2334765 () Unit!157555)

(declare-fun lemmaFlatMapOnSingletonSet!1127 ((Set Context!10960) Context!10960 Int) Unit!157555)

(assert (=> b!6153630 (= lt!2334765 (lemmaFlatMapOnSingletonSet!1127 lt!2334764 lt!2334766 lambda!335642))))

(assert (=> b!6153630 (= lt!2334758 (derivationStepZipperUp!1270 lt!2334766 (h!70912 s!2326)))))

(declare-fun derivationStepZipper!2069 ((Set Context!10960) C!32462) (Set Context!10960))

(assert (=> b!6153630 (= lt!2334757 (derivationStepZipper!2069 lt!2334764 (h!70912 s!2326)))))

(declare-fun lt!2334762 () Unit!157555)

(declare-fun e!3749536 () Unit!157555)

(assert (=> b!6153630 (= lt!2334762 e!3749536)))

(declare-fun c!1107722 () Bool)

(assert (=> b!6153630 (= c!1107722 (nullable!6089 (regOne!32705 (regOne!32704 r!7292))))))

(declare-fun lt!2334746 () (Set Context!10960))

(declare-fun lt!2334773 () Context!10960)

(assert (=> b!6153630 (= (flatMap!1601 lt!2334746 lambda!335642) (derivationStepZipperUp!1270 lt!2334773 (h!70912 s!2326)))))

(declare-fun lt!2334755 () Unit!157555)

(assert (=> b!6153630 (= lt!2334755 (lemmaFlatMapOnSingletonSet!1127 lt!2334746 lt!2334773 lambda!335642))))

(declare-fun lt!2334759 () (Set Context!10960))

(assert (=> b!6153630 (= lt!2334759 (derivationStepZipperUp!1270 lt!2334773 (h!70912 s!2326)))))

(assert (=> b!6153630 (= lt!2334764 (set.insert lt!2334766 (as set.empty (Set Context!10960))))))

(assert (=> b!6153630 (= lt!2334766 (Context!10961 (Cons!64463 (regTwo!32705 (regOne!32704 r!7292)) (t!378078 (exprs!5980 (h!70913 zl!343))))))))

(assert (=> b!6153630 (= lt!2334746 (set.insert lt!2334773 (as set.empty (Set Context!10960))))))

(assert (=> b!6153630 (= lt!2334773 (Context!10961 (Cons!64463 (regOne!32705 (regOne!32704 r!7292)) (t!378078 (exprs!5980 (h!70913 zl!343))))))))

(declare-fun b!6153631 () Bool)

(declare-fun res!2548762 () Bool)

(assert (=> b!6153631 (=> (not res!2548762) (not e!3749534))))

(declare-fun toList!9880 ((Set Context!10960)) List!64589)

(assert (=> b!6153631 (= res!2548762 (= (toList!9880 z!1189) zl!343))))

(declare-fun b!6153632 () Bool)

(declare-fun e!3749531 () Bool)

(assert (=> b!6153632 (= e!3749531 e!3749535)))

(declare-fun res!2548769 () Bool)

(assert (=> b!6153632 (=> res!2548769 e!3749535)))

(declare-fun e!3749532 () Bool)

(assert (=> b!6153632 (= res!2548769 e!3749532)))

(declare-fun res!2548760 () Bool)

(assert (=> b!6153632 (=> (not res!2548760) (not e!3749532))))

(declare-fun lt!2334768 () Bool)

(assert (=> b!6153632 (= res!2548760 (not (= (matchZipper!2108 lt!2334770 (t!378079 s!2326)) lt!2334768)))))

(declare-fun lt!2334745 () (Set Context!10960))

(declare-fun e!3749541 () Bool)

(assert (=> b!6153632 (= (matchZipper!2108 lt!2334745 (t!378079 s!2326)) e!3749541)))

(declare-fun res!2548771 () Bool)

(assert (=> b!6153632 (=> res!2548771 e!3749541)))

(assert (=> b!6153632 (= res!2548771 lt!2334768)))

(declare-fun lt!2334754 () (Set Context!10960))

(assert (=> b!6153632 (= lt!2334768 (matchZipper!2108 lt!2334754 (t!378079 s!2326)))))

(declare-fun lt!2334767 () Unit!157555)

(assert (=> b!6153632 (= lt!2334767 (lemmaZipperConcatMatchesSameAsBothZippers!927 lt!2334754 lt!2334756 (t!378079 s!2326)))))

(declare-fun e!3749528 () Bool)

(declare-fun e!3749538 () Bool)

(assert (=> b!6153633 (= e!3749528 e!3749538)))

(declare-fun res!2548767 () Bool)

(assert (=> b!6153633 (=> res!2548767 e!3749538)))

(declare-fun lt!2334753 () Bool)

(declare-fun lt!2334748 () Bool)

(assert (=> b!6153633 (= res!2548767 (or (not (= lt!2334748 lt!2334753)) (is-Nil!64464 s!2326)))))

(declare-fun Exists!3166 (Int) Bool)

(assert (=> b!6153633 (= (Exists!3166 lambda!335640) (Exists!3166 lambda!335641))))

(declare-fun lt!2334750 () Unit!157555)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1703 (Regex!16096 Regex!16096 List!64588) Unit!157555)

(assert (=> b!6153633 (= lt!2334750 (lemmaExistCutMatchRandMatchRSpecEquivalent!1703 (regOne!32704 r!7292) (regTwo!32704 r!7292) s!2326))))

(assert (=> b!6153633 (= lt!2334753 (Exists!3166 lambda!335640))))

(declare-datatypes ((tuple2!66150 0))(
  ( (tuple2!66151 (_1!36378 List!64588) (_2!36378 List!64588)) )
))
(declare-datatypes ((Option!15987 0))(
  ( (None!15986) (Some!15986 (v!52125 tuple2!66150)) )
))
(declare-fun isDefined!12690 (Option!15987) Bool)

(declare-fun findConcatSeparation!2401 (Regex!16096 Regex!16096 List!64588 List!64588 List!64588) Option!15987)

(assert (=> b!6153633 (= lt!2334753 (isDefined!12690 (findConcatSeparation!2401 (regOne!32704 r!7292) (regTwo!32704 r!7292) Nil!64464 s!2326 s!2326)))))

(declare-fun lt!2334769 () Unit!157555)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2165 (Regex!16096 Regex!16096 List!64588) Unit!157555)

(assert (=> b!6153633 (= lt!2334769 (lemmaFindConcatSeparationEquivalentToExists!2165 (regOne!32704 r!7292) (regTwo!32704 r!7292) s!2326))))

(declare-fun b!6153634 () Bool)

(declare-fun tp!1718712 () Bool)

(declare-fun tp!1718709 () Bool)

(assert (=> b!6153634 (= e!3749540 (and tp!1718712 tp!1718709))))

(declare-fun b!6153635 () Bool)

(assert (=> b!6153635 (= e!3749534 (not e!3749528))))

(declare-fun res!2548768 () Bool)

(assert (=> b!6153635 (=> res!2548768 e!3749528)))

(assert (=> b!6153635 (= res!2548768 (not (is-Cons!64465 zl!343)))))

(declare-fun matchRSpec!3197 (Regex!16096 List!64588) Bool)

(assert (=> b!6153635 (= lt!2334748 (matchRSpec!3197 r!7292 s!2326))))

(declare-fun matchR!8279 (Regex!16096 List!64588) Bool)

(assert (=> b!6153635 (= lt!2334748 (matchR!8279 r!7292 s!2326))))

(declare-fun lt!2334749 () Unit!157555)

(declare-fun mainMatchTheorem!3197 (Regex!16096 List!64588) Unit!157555)

(assert (=> b!6153635 (= lt!2334749 (mainMatchTheorem!3197 r!7292 s!2326))))

(declare-fun b!6153636 () Bool)

(declare-fun res!2548774 () Bool)

(assert (=> b!6153636 (=> res!2548774 e!3749528)))

(declare-fun generalisedUnion!1940 (List!64587) Regex!16096)

(declare-fun unfocusZipperList!1517 (List!64589) List!64587)

(assert (=> b!6153636 (= res!2548774 (not (= r!7292 (generalisedUnion!1940 (unfocusZipperList!1517 zl!343)))))))

(declare-fun b!6153637 () Bool)

(declare-fun res!2548776 () Bool)

(assert (=> b!6153637 (=> res!2548776 e!3749528)))

(declare-fun isEmpty!36426 (List!64589) Bool)

(assert (=> b!6153637 (= res!2548776 (not (isEmpty!36426 (t!378080 zl!343))))))

(declare-fun b!6153638 () Bool)

(declare-fun Unit!157558 () Unit!157555)

(assert (=> b!6153638 (= e!3749536 Unit!157558)))

(declare-fun b!6153639 () Bool)

(declare-fun res!2548773 () Bool)

(assert (=> b!6153639 (=> (not res!2548773) (not e!3749534))))

(declare-fun unfocusZipper!1838 (List!64589) Regex!16096)

(assert (=> b!6153639 (= res!2548773 (= r!7292 (unfocusZipper!1838 zl!343)))))

(declare-fun b!6153640 () Bool)

(assert (=> b!6153640 (= e!3749541 (matchZipper!2108 lt!2334756 (t!378079 s!2326)))))

(declare-fun b!6153641 () Bool)

(declare-fun res!2548772 () Bool)

(assert (=> b!6153641 (=> res!2548772 e!3749528)))

(declare-fun generalisedConcat!1693 (List!64587) Regex!16096)

(assert (=> b!6153641 (= res!2548772 (not (= r!7292 (generalisedConcat!1693 (exprs!5980 (h!70913 zl!343))))))))

(declare-fun b!6153642 () Bool)

(declare-fun e!3749530 () Bool)

(assert (=> b!6153642 (= e!3749530 (matchZipper!2108 lt!2334751 (t!378079 s!2326)))))

(declare-fun e!3749527 () Bool)

(assert (=> b!6153643 (= e!3749538 e!3749527)))

(declare-fun res!2548764 () Bool)

(assert (=> b!6153643 (=> res!2548764 e!3749527)))

(assert (=> b!6153643 (= res!2548764 (or (and (is-ElementMatch!16096 (regOne!32704 r!7292)) (= (c!1107723 (regOne!32704 r!7292)) (h!70912 s!2326))) (not (is-Union!16096 (regOne!32704 r!7292)))))))

(declare-fun lt!2334747 () Unit!157555)

(assert (=> b!6153643 (= lt!2334747 e!3749539)))

(declare-fun c!1107721 () Bool)

(assert (=> b!6153643 (= c!1107721 (nullable!6089 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(assert (=> b!6153643 (= (flatMap!1601 z!1189 lambda!335642) (derivationStepZipperUp!1270 (h!70913 zl!343) (h!70912 s!2326)))))

(declare-fun lt!2334752 () Unit!157555)

(assert (=> b!6153643 (= lt!2334752 (lemmaFlatMapOnSingletonSet!1127 z!1189 (h!70913 zl!343) lambda!335642))))

(assert (=> b!6153643 (= lt!2334751 (derivationStepZipperUp!1270 lt!2334763 (h!70912 s!2326)))))

(declare-fun derivationStepZipperDown!1344 (Regex!16096 Context!10960 C!32462) (Set Context!10960))

(assert (=> b!6153643 (= lt!2334770 (derivationStepZipperDown!1344 (h!70911 (exprs!5980 (h!70913 zl!343))) lt!2334763 (h!70912 s!2326)))))

(assert (=> b!6153643 (= lt!2334763 (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun lt!2334771 () (Set Context!10960))

(assert (=> b!6153643 (= lt!2334771 (derivationStepZipperUp!1270 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))) (h!70912 s!2326)))))

(declare-fun b!6153644 () Bool)

(declare-fun res!2548766 () Bool)

(assert (=> b!6153644 (=> res!2548766 e!3749526)))

(assert (=> b!6153644 (= res!2548766 (not (= (matchZipper!2108 lt!2334764 s!2326) (matchZipper!2108 lt!2334757 (t!378079 s!2326)))))))

(declare-fun b!6153645 () Bool)

(declare-fun res!2548757 () Bool)

(assert (=> b!6153645 (=> res!2548757 e!3749528)))

(assert (=> b!6153645 (= res!2548757 (or (is-EmptyExpr!16096 r!7292) (is-EmptyLang!16096 r!7292) (is-ElementMatch!16096 r!7292) (is-Union!16096 r!7292) (not (is-Concat!24941 r!7292))))))

(declare-fun b!6153646 () Bool)

(declare-fun res!2548758 () Bool)

(assert (=> b!6153646 (=> res!2548758 e!3749528)))

(assert (=> b!6153646 (= res!2548758 (not (is-Cons!64463 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun b!6153647 () Bool)

(declare-fun res!2548761 () Bool)

(assert (=> b!6153647 (=> res!2548761 e!3749538)))

(declare-fun isEmpty!36427 (List!64587) Bool)

(assert (=> b!6153647 (= res!2548761 (isEmpty!36427 (t!378078 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun setNonEmpty!41673 () Bool)

(declare-fun setElem!41673 () Context!10960)

(declare-fun tp!1718715 () Bool)

(assert (=> setNonEmpty!41673 (= setRes!41673 (and tp!1718715 (inv!83488 setElem!41673) e!3749542))))

(declare-fun setRest!41673 () (Set Context!10960))

(assert (=> setNonEmpty!41673 (= z!1189 (set.union (set.insert setElem!41673 (as set.empty (Set Context!10960))) setRest!41673))))

(declare-fun b!6153648 () Bool)

(assert (=> b!6153648 (= e!3749532 (not (matchZipper!2108 lt!2334756 (t!378079 s!2326))))))

(declare-fun b!6153649 () Bool)

(declare-fun Unit!157559 () Unit!157555)

(assert (=> b!6153649 (= e!3749539 Unit!157559)))

(declare-fun b!6153650 () Bool)

(declare-fun Unit!157560 () Unit!157555)

(assert (=> b!6153650 (= e!3749536 Unit!157560)))

(declare-fun lt!2334761 () Unit!157555)

(assert (=> b!6153650 (= lt!2334761 (lemmaZipperConcatMatchesSameAsBothZippers!927 lt!2334754 lt!2334751 (t!378079 s!2326)))))

(declare-fun res!2548770 () Bool)

(assert (=> b!6153650 (= res!2548770 lt!2334768)))

(assert (=> b!6153650 (=> res!2548770 e!3749530)))

(assert (=> b!6153650 (= (matchZipper!2108 (set.union lt!2334754 lt!2334751) (t!378079 s!2326)) e!3749530)))

(declare-fun b!6153651 () Bool)

(assert (=> b!6153651 (= e!3749543 (matchZipper!2108 lt!2334751 (t!378079 s!2326)))))

(declare-fun b!6153652 () Bool)

(declare-fun tp_is_empty!41445 () Bool)

(declare-fun tp!1718711 () Bool)

(assert (=> b!6153652 (= e!3749529 (and tp_is_empty!41445 tp!1718711))))

(declare-fun b!6153653 () Bool)

(assert (=> b!6153653 (= e!3749540 tp_is_empty!41445)))

(declare-fun b!6153654 () Bool)

(assert (=> b!6153654 (= e!3749527 e!3749531)))

(declare-fun res!2548765 () Bool)

(assert (=> b!6153654 (=> res!2548765 e!3749531)))

(assert (=> b!6153654 (= res!2548765 (not (= lt!2334770 lt!2334745)))))

(assert (=> b!6153654 (= lt!2334745 (set.union lt!2334754 lt!2334756))))

(assert (=> b!6153654 (= lt!2334756 (derivationStepZipperDown!1344 (regTwo!32705 (regOne!32704 r!7292)) lt!2334763 (h!70912 s!2326)))))

(assert (=> b!6153654 (= lt!2334754 (derivationStepZipperDown!1344 (regOne!32705 (regOne!32704 r!7292)) lt!2334763 (h!70912 s!2326)))))

(assert (= (and start!614688 res!2548756) b!6153631))

(assert (= (and b!6153631 res!2548762) b!6153639))

(assert (= (and b!6153639 res!2548773) b!6153635))

(assert (= (and b!6153635 (not res!2548768)) b!6153637))

(assert (= (and b!6153637 (not res!2548776)) b!6153641))

(assert (= (and b!6153641 (not res!2548772)) b!6153646))

(assert (= (and b!6153646 (not res!2548758)) b!6153636))

(assert (= (and b!6153636 (not res!2548774)) b!6153645))

(assert (= (and b!6153645 (not res!2548757)) b!6153633))

(assert (= (and b!6153633 (not res!2548767)) b!6153647))

(assert (= (and b!6153647 (not res!2548761)) b!6153643))

(assert (= (and b!6153643 c!1107721) b!6153623))

(assert (= (and b!6153643 (not c!1107721)) b!6153649))

(assert (= (and b!6153623 (not res!2548775)) b!6153651))

(assert (= (and b!6153643 (not res!2548764)) b!6153654))

(assert (= (and b!6153654 (not res!2548765)) b!6153632))

(assert (= (and b!6153632 (not res!2548771)) b!6153640))

(assert (= (and b!6153632 res!2548760) b!6153648))

(assert (= (and b!6153632 (not res!2548769)) b!6153630))

(assert (= (and b!6153630 c!1107722) b!6153650))

(assert (= (and b!6153630 (not c!1107722)) b!6153638))

(assert (= (and b!6153650 (not res!2548770)) b!6153642))

(assert (= (and b!6153630 (not res!2548759)) b!6153625))

(assert (= (and b!6153625 (not res!2548763)) b!6153644))

(assert (= (and b!6153644 (not res!2548766)) b!6153622))

(assert (= (and start!614688 (is-ElementMatch!16096 r!7292)) b!6153653))

(assert (= (and start!614688 (is-Concat!24941 r!7292)) b!6153634))

(assert (= (and start!614688 (is-Star!16096 r!7292)) b!6153624))

(assert (= (and start!614688 (is-Union!16096 r!7292)) b!6153629))

(assert (= (and start!614688 condSetEmpty!41673) setIsEmpty!41673))

(assert (= (and start!614688 (not condSetEmpty!41673)) setNonEmpty!41673))

(assert (= setNonEmpty!41673 b!6153626))

(assert (= b!6153628 b!6153627))

(assert (= (and start!614688 (is-Cons!64465 zl!343)) b!6153628))

(assert (= (and start!614688 (is-Cons!64464 s!2326)) b!6153652))

(declare-fun m!6992744 () Bool)

(assert (=> b!6153636 m!6992744))

(assert (=> b!6153636 m!6992744))

(declare-fun m!6992746 () Bool)

(assert (=> b!6153636 m!6992746))

(declare-fun m!6992748 () Bool)

(assert (=> b!6153633 m!6992748))

(declare-fun m!6992750 () Bool)

(assert (=> b!6153633 m!6992750))

(declare-fun m!6992752 () Bool)

(assert (=> b!6153633 m!6992752))

(declare-fun m!6992754 () Bool)

(assert (=> b!6153633 m!6992754))

(assert (=> b!6153633 m!6992752))

(declare-fun m!6992756 () Bool)

(assert (=> b!6153633 m!6992756))

(assert (=> b!6153633 m!6992748))

(declare-fun m!6992758 () Bool)

(assert (=> b!6153633 m!6992758))

(declare-fun m!6992760 () Bool)

(assert (=> b!6153632 m!6992760))

(declare-fun m!6992762 () Bool)

(assert (=> b!6153632 m!6992762))

(declare-fun m!6992764 () Bool)

(assert (=> b!6153632 m!6992764))

(declare-fun m!6992766 () Bool)

(assert (=> b!6153632 m!6992766))

(declare-fun m!6992768 () Bool)

(assert (=> b!6153651 m!6992768))

(declare-fun m!6992770 () Bool)

(assert (=> b!6153641 m!6992770))

(declare-fun m!6992772 () Bool)

(assert (=> b!6153643 m!6992772))

(declare-fun m!6992774 () Bool)

(assert (=> b!6153643 m!6992774))

(declare-fun m!6992776 () Bool)

(assert (=> b!6153643 m!6992776))

(declare-fun m!6992778 () Bool)

(assert (=> b!6153643 m!6992778))

(declare-fun m!6992780 () Bool)

(assert (=> b!6153643 m!6992780))

(declare-fun m!6992782 () Bool)

(assert (=> b!6153643 m!6992782))

(declare-fun m!6992784 () Bool)

(assert (=> b!6153643 m!6992784))

(declare-fun m!6992786 () Bool)

(assert (=> b!6153650 m!6992786))

(declare-fun m!6992788 () Bool)

(assert (=> b!6153650 m!6992788))

(declare-fun m!6992790 () Bool)

(assert (=> b!6153648 m!6992790))

(declare-fun m!6992792 () Bool)

(assert (=> b!6153639 m!6992792))

(declare-fun m!6992794 () Bool)

(assert (=> b!6153631 m!6992794))

(declare-fun m!6992796 () Bool)

(assert (=> setNonEmpty!41673 m!6992796))

(declare-fun m!6992798 () Bool)

(assert (=> start!614688 m!6992798))

(declare-fun m!6992800 () Bool)

(assert (=> b!6153654 m!6992800))

(declare-fun m!6992802 () Bool)

(assert (=> b!6153654 m!6992802))

(declare-fun m!6992804 () Bool)

(assert (=> b!6153623 m!6992804))

(assert (=> b!6153623 m!6992760))

(declare-fun m!6992806 () Bool)

(assert (=> b!6153623 m!6992806))

(declare-fun m!6992808 () Bool)

(assert (=> b!6153628 m!6992808))

(declare-fun m!6992810 () Bool)

(assert (=> b!6153630 m!6992810))

(declare-fun m!6992812 () Bool)

(assert (=> b!6153630 m!6992812))

(declare-fun m!6992814 () Bool)

(assert (=> b!6153630 m!6992814))

(declare-fun m!6992816 () Bool)

(assert (=> b!6153630 m!6992816))

(declare-fun m!6992818 () Bool)

(assert (=> b!6153630 m!6992818))

(declare-fun m!6992820 () Bool)

(assert (=> b!6153630 m!6992820))

(declare-fun m!6992822 () Bool)

(assert (=> b!6153630 m!6992822))

(declare-fun m!6992824 () Bool)

(assert (=> b!6153630 m!6992824))

(declare-fun m!6992826 () Bool)

(assert (=> b!6153630 m!6992826))

(declare-fun m!6992828 () Bool)

(assert (=> b!6153630 m!6992828))

(declare-fun m!6992830 () Bool)

(assert (=> b!6153630 m!6992830))

(declare-fun m!6992832 () Bool)

(assert (=> b!6153635 m!6992832))

(declare-fun m!6992834 () Bool)

(assert (=> b!6153635 m!6992834))

(declare-fun m!6992836 () Bool)

(assert (=> b!6153635 m!6992836))

(declare-fun m!6992838 () Bool)

(assert (=> b!6153637 m!6992838))

(declare-fun m!6992840 () Bool)

(assert (=> b!6153644 m!6992840))

(declare-fun m!6992842 () Bool)

(assert (=> b!6153644 m!6992842))

(assert (=> b!6153642 m!6992768))

(assert (=> b!6153640 m!6992790))

(declare-fun m!6992844 () Bool)

(assert (=> b!6153647 m!6992844))

(declare-fun m!6992846 () Bool)

(assert (=> b!6153622 m!6992846))

(push 1)

(assert (not b!6153633))

(assert tp_is_empty!41445)

(assert (not b!6153650))

(assert (not b!6153629))

(assert (not b!6153631))

(assert (not setNonEmpty!41673))

(assert (not b!6153640))

(assert (not b!6153644))

(assert (not b!6153641))

(assert (not b!6153651))

(assert (not b!6153636))

(assert (not b!6153642))

(assert (not b!6153623))

(assert (not b!6153622))

(assert (not b!6153632))

(assert (not b!6153647))

(assert (not b!6153634))

(assert (not b!6153628))

(assert (not b!6153652))

(assert (not b!6153648))

(assert (not b!6153627))

(assert (not b!6153637))

(assert (not b!6153626))

(assert (not start!614688))

(assert (not b!6153643))

(assert (not b!6153624))

(assert (not b!6153635))

(assert (not b!6153639))

(assert (not b!6153630))

(assert (not b!6153654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1928160 () Bool)

(declare-fun c!1107740 () Bool)

(declare-fun isEmpty!36430 (List!64588) Bool)

(assert (=> d!1928160 (= c!1107740 (isEmpty!36430 (t!378079 s!2326)))))

(declare-fun e!3749610 () Bool)

(assert (=> d!1928160 (= (matchZipper!2108 lt!2334756 (t!378079 s!2326)) e!3749610)))

(declare-fun b!6153782 () Bool)

(declare-fun nullableZipper!1877 ((Set Context!10960)) Bool)

(assert (=> b!6153782 (= e!3749610 (nullableZipper!1877 lt!2334756))))

(declare-fun b!6153783 () Bool)

(declare-fun head!12713 (List!64588) C!32462)

(declare-fun tail!11798 (List!64588) List!64588)

(assert (=> b!6153783 (= e!3749610 (matchZipper!2108 (derivationStepZipper!2069 lt!2334756 (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))))))

(assert (= (and d!1928160 c!1107740) b!6153782))

(assert (= (and d!1928160 (not c!1107740)) b!6153783))

(declare-fun m!6992952 () Bool)

(assert (=> d!1928160 m!6992952))

(declare-fun m!6992954 () Bool)

(assert (=> b!6153782 m!6992954))

(declare-fun m!6992956 () Bool)

(assert (=> b!6153783 m!6992956))

(assert (=> b!6153783 m!6992956))

(declare-fun m!6992958 () Bool)

(assert (=> b!6153783 m!6992958))

(declare-fun m!6992960 () Bool)

(assert (=> b!6153783 m!6992960))

(assert (=> b!6153783 m!6992958))

(assert (=> b!6153783 m!6992960))

(declare-fun m!6992962 () Bool)

(assert (=> b!6153783 m!6992962))

(assert (=> b!6153640 d!1928160))

(declare-fun d!1928162 () Bool)

(declare-fun choose!45740 ((Set Context!10960) Int) (Set Context!10960))

(assert (=> d!1928162 (= (flatMap!1601 lt!2334764 lambda!335642) (choose!45740 lt!2334764 lambda!335642))))

(declare-fun bs!1525381 () Bool)

(assert (= bs!1525381 d!1928162))

(declare-fun m!6992964 () Bool)

(assert (=> bs!1525381 m!6992964))

(assert (=> b!6153630 d!1928162))

(declare-fun e!3749617 () (Set Context!10960))

(declare-fun b!6153794 () Bool)

(declare-fun call!512001 () (Set Context!10960))

(assert (=> b!6153794 (= e!3749617 (set.union call!512001 (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 lt!2334773))) (h!70912 s!2326))))))

(declare-fun bm!511996 () Bool)

(assert (=> bm!511996 (= call!512001 (derivationStepZipperDown!1344 (h!70911 (exprs!5980 lt!2334773)) (Context!10961 (t!378078 (exprs!5980 lt!2334773))) (h!70912 s!2326)))))

(declare-fun b!6153795 () Bool)

(declare-fun e!3749618 () (Set Context!10960))

(assert (=> b!6153795 (= e!3749617 e!3749618)))

(declare-fun c!1107746 () Bool)

(assert (=> b!6153795 (= c!1107746 (is-Cons!64463 (exprs!5980 lt!2334773)))))

(declare-fun b!6153796 () Bool)

(declare-fun e!3749619 () Bool)

(assert (=> b!6153796 (= e!3749619 (nullable!6089 (h!70911 (exprs!5980 lt!2334773))))))

(declare-fun d!1928164 () Bool)

(declare-fun c!1107745 () Bool)

(assert (=> d!1928164 (= c!1107745 e!3749619)))

(declare-fun res!2548854 () Bool)

(assert (=> d!1928164 (=> (not res!2548854) (not e!3749619))))

(assert (=> d!1928164 (= res!2548854 (is-Cons!64463 (exprs!5980 lt!2334773)))))

(assert (=> d!1928164 (= (derivationStepZipperUp!1270 lt!2334773 (h!70912 s!2326)) e!3749617)))

(declare-fun b!6153797 () Bool)

(assert (=> b!6153797 (= e!3749618 (as set.empty (Set Context!10960)))))

(declare-fun b!6153798 () Bool)

(assert (=> b!6153798 (= e!3749618 call!512001)))

(assert (= (and d!1928164 res!2548854) b!6153796))

(assert (= (and d!1928164 c!1107745) b!6153794))

(assert (= (and d!1928164 (not c!1107745)) b!6153795))

(assert (= (and b!6153795 c!1107746) b!6153798))

(assert (= (and b!6153795 (not c!1107746)) b!6153797))

(assert (= (or b!6153794 b!6153798) bm!511996))

(declare-fun m!6992966 () Bool)

(assert (=> b!6153794 m!6992966))

(declare-fun m!6992968 () Bool)

(assert (=> bm!511996 m!6992968))

(declare-fun m!6992970 () Bool)

(assert (=> b!6153796 m!6992970))

(assert (=> b!6153630 d!1928164))

(declare-fun d!1928166 () Bool)

(assert (=> d!1928166 (= (flatMap!1601 lt!2334746 lambda!335642) (choose!45740 lt!2334746 lambda!335642))))

(declare-fun bs!1525382 () Bool)

(assert (= bs!1525382 d!1928166))

(declare-fun m!6992972 () Bool)

(assert (=> bs!1525382 m!6992972))

(assert (=> b!6153630 d!1928166))

(declare-fun e!3749620 () (Set Context!10960))

(declare-fun call!512002 () (Set Context!10960))

(declare-fun b!6153799 () Bool)

(assert (=> b!6153799 (= e!3749620 (set.union call!512002 (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 lt!2334766))) (h!70912 s!2326))))))

(declare-fun bm!511997 () Bool)

(assert (=> bm!511997 (= call!512002 (derivationStepZipperDown!1344 (h!70911 (exprs!5980 lt!2334766)) (Context!10961 (t!378078 (exprs!5980 lt!2334766))) (h!70912 s!2326)))))

(declare-fun b!6153800 () Bool)

(declare-fun e!3749621 () (Set Context!10960))

(assert (=> b!6153800 (= e!3749620 e!3749621)))

(declare-fun c!1107748 () Bool)

(assert (=> b!6153800 (= c!1107748 (is-Cons!64463 (exprs!5980 lt!2334766)))))

(declare-fun b!6153801 () Bool)

(declare-fun e!3749622 () Bool)

(assert (=> b!6153801 (= e!3749622 (nullable!6089 (h!70911 (exprs!5980 lt!2334766))))))

(declare-fun d!1928168 () Bool)

(declare-fun c!1107747 () Bool)

(assert (=> d!1928168 (= c!1107747 e!3749622)))

(declare-fun res!2548855 () Bool)

(assert (=> d!1928168 (=> (not res!2548855) (not e!3749622))))

(assert (=> d!1928168 (= res!2548855 (is-Cons!64463 (exprs!5980 lt!2334766)))))

(assert (=> d!1928168 (= (derivationStepZipperUp!1270 lt!2334766 (h!70912 s!2326)) e!3749620)))

(declare-fun b!6153802 () Bool)

(assert (=> b!6153802 (= e!3749621 (as set.empty (Set Context!10960)))))

(declare-fun b!6153803 () Bool)

(assert (=> b!6153803 (= e!3749621 call!512002)))

(assert (= (and d!1928168 res!2548855) b!6153801))

(assert (= (and d!1928168 c!1107747) b!6153799))

(assert (= (and d!1928168 (not c!1107747)) b!6153800))

(assert (= (and b!6153800 c!1107748) b!6153803))

(assert (= (and b!6153800 (not c!1107748)) b!6153802))

(assert (= (or b!6153799 b!6153803) bm!511997))

(declare-fun m!6992974 () Bool)

(assert (=> b!6153799 m!6992974))

(declare-fun m!6992976 () Bool)

(assert (=> bm!511997 m!6992976))

(declare-fun m!6992978 () Bool)

(assert (=> b!6153801 m!6992978))

(assert (=> b!6153630 d!1928168))

(declare-fun d!1928170 () Bool)

(declare-fun nullableFct!2053 (Regex!16096) Bool)

(assert (=> d!1928170 (= (nullable!6089 (regOne!32705 (regOne!32704 r!7292))) (nullableFct!2053 (regOne!32705 (regOne!32704 r!7292))))))

(declare-fun bs!1525383 () Bool)

(assert (= bs!1525383 d!1928170))

(declare-fun m!6992980 () Bool)

(assert (=> bs!1525383 m!6992980))

(assert (=> b!6153630 d!1928170))

(declare-fun d!1928172 () Bool)

(declare-fun dynLambda!25413 (Int Context!10960) (Set Context!10960))

(assert (=> d!1928172 (= (flatMap!1601 lt!2334764 lambda!335642) (dynLambda!25413 lambda!335642 lt!2334766))))

(declare-fun lt!2334863 () Unit!157555)

(declare-fun choose!45741 ((Set Context!10960) Context!10960 Int) Unit!157555)

(assert (=> d!1928172 (= lt!2334863 (choose!45741 lt!2334764 lt!2334766 lambda!335642))))

(assert (=> d!1928172 (= lt!2334764 (set.insert lt!2334766 (as set.empty (Set Context!10960))))))

(assert (=> d!1928172 (= (lemmaFlatMapOnSingletonSet!1127 lt!2334764 lt!2334766 lambda!335642) lt!2334863)))

(declare-fun b_lambda!234241 () Bool)

(assert (=> (not b_lambda!234241) (not d!1928172)))

(declare-fun bs!1525384 () Bool)

(assert (= bs!1525384 d!1928172))

(assert (=> bs!1525384 m!6992812))

(declare-fun m!6992982 () Bool)

(assert (=> bs!1525384 m!6992982))

(declare-fun m!6992984 () Bool)

(assert (=> bs!1525384 m!6992984))

(assert (=> bs!1525384 m!6992826))

(assert (=> b!6153630 d!1928172))

(declare-fun d!1928174 () Bool)

(assert (=> d!1928174 (= (nullable!6089 (regTwo!32705 (regOne!32704 r!7292))) (nullableFct!2053 (regTwo!32705 (regOne!32704 r!7292))))))

(declare-fun bs!1525385 () Bool)

(assert (= bs!1525385 d!1928174))

(declare-fun m!6992986 () Bool)

(assert (=> bs!1525385 m!6992986))

(assert (=> b!6153630 d!1928174))

(declare-fun bs!1525386 () Bool)

(declare-fun d!1928176 () Bool)

(assert (= bs!1525386 (and d!1928176 b!6153643)))

(declare-fun lambda!335660 () Int)

(assert (=> bs!1525386 (= lambda!335660 lambda!335642)))

(assert (=> d!1928176 true))

(assert (=> d!1928176 (= (derivationStepZipper!2069 lt!2334764 (h!70912 s!2326)) (flatMap!1601 lt!2334764 lambda!335660))))

(declare-fun bs!1525387 () Bool)

(assert (= bs!1525387 d!1928176))

(declare-fun m!6992988 () Bool)

(assert (=> bs!1525387 m!6992988))

(assert (=> b!6153630 d!1928176))

(declare-fun d!1928178 () Bool)

(assert (=> d!1928178 (= (flatMap!1601 lt!2334746 lambda!335642) (dynLambda!25413 lambda!335642 lt!2334773))))

(declare-fun lt!2334864 () Unit!157555)

(assert (=> d!1928178 (= lt!2334864 (choose!45741 lt!2334746 lt!2334773 lambda!335642))))

(assert (=> d!1928178 (= lt!2334746 (set.insert lt!2334773 (as set.empty (Set Context!10960))))))

(assert (=> d!1928178 (= (lemmaFlatMapOnSingletonSet!1127 lt!2334746 lt!2334773 lambda!335642) lt!2334864)))

(declare-fun b_lambda!234243 () Bool)

(assert (=> (not b_lambda!234243) (not d!1928178)))

(declare-fun bs!1525388 () Bool)

(assert (= bs!1525388 d!1928178))

(assert (=> bs!1525388 m!6992828))

(declare-fun m!6992990 () Bool)

(assert (=> bs!1525388 m!6992990))

(declare-fun m!6992992 () Bool)

(assert (=> bs!1525388 m!6992992))

(assert (=> bs!1525388 m!6992822))

(assert (=> b!6153630 d!1928178))

(declare-fun e!3749625 () Bool)

(declare-fun d!1928180 () Bool)

(assert (=> d!1928180 (= (matchZipper!2108 (set.union lt!2334754 lt!2334751) (t!378079 s!2326)) e!3749625)))

(declare-fun res!2548858 () Bool)

(assert (=> d!1928180 (=> res!2548858 e!3749625)))

(assert (=> d!1928180 (= res!2548858 (matchZipper!2108 lt!2334754 (t!378079 s!2326)))))

(declare-fun lt!2334867 () Unit!157555)

(declare-fun choose!45742 ((Set Context!10960) (Set Context!10960) List!64588) Unit!157555)

(assert (=> d!1928180 (= lt!2334867 (choose!45742 lt!2334754 lt!2334751 (t!378079 s!2326)))))

(assert (=> d!1928180 (= (lemmaZipperConcatMatchesSameAsBothZippers!927 lt!2334754 lt!2334751 (t!378079 s!2326)) lt!2334867)))

(declare-fun b!6153808 () Bool)

(assert (=> b!6153808 (= e!3749625 (matchZipper!2108 lt!2334751 (t!378079 s!2326)))))

(assert (= (and d!1928180 (not res!2548858)) b!6153808))

(assert (=> d!1928180 m!6992788))

(assert (=> d!1928180 m!6992764))

(declare-fun m!6992994 () Bool)

(assert (=> d!1928180 m!6992994))

(assert (=> b!6153808 m!6992768))

(assert (=> b!6153650 d!1928180))

(declare-fun d!1928182 () Bool)

(declare-fun c!1107751 () Bool)

(assert (=> d!1928182 (= c!1107751 (isEmpty!36430 (t!378079 s!2326)))))

(declare-fun e!3749626 () Bool)

(assert (=> d!1928182 (= (matchZipper!2108 (set.union lt!2334754 lt!2334751) (t!378079 s!2326)) e!3749626)))

(declare-fun b!6153809 () Bool)

(assert (=> b!6153809 (= e!3749626 (nullableZipper!1877 (set.union lt!2334754 lt!2334751)))))

(declare-fun b!6153810 () Bool)

(assert (=> b!6153810 (= e!3749626 (matchZipper!2108 (derivationStepZipper!2069 (set.union lt!2334754 lt!2334751) (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))))))

(assert (= (and d!1928182 c!1107751) b!6153809))

(assert (= (and d!1928182 (not c!1107751)) b!6153810))

(assert (=> d!1928182 m!6992952))

(declare-fun m!6992996 () Bool)

(assert (=> b!6153809 m!6992996))

(assert (=> b!6153810 m!6992956))

(assert (=> b!6153810 m!6992956))

(declare-fun m!6992998 () Bool)

(assert (=> b!6153810 m!6992998))

(assert (=> b!6153810 m!6992960))

(assert (=> b!6153810 m!6992998))

(assert (=> b!6153810 m!6992960))

(declare-fun m!6993000 () Bool)

(assert (=> b!6153810 m!6993000))

(assert (=> b!6153650 d!1928182))

(declare-fun d!1928184 () Bool)

(declare-fun c!1107752 () Bool)

(assert (=> d!1928184 (= c!1107752 (isEmpty!36430 (t!378079 s!2326)))))

(declare-fun e!3749627 () Bool)

(assert (=> d!1928184 (= (matchZipper!2108 lt!2334751 (t!378079 s!2326)) e!3749627)))

(declare-fun b!6153811 () Bool)

(assert (=> b!6153811 (= e!3749627 (nullableZipper!1877 lt!2334751))))

(declare-fun b!6153812 () Bool)

(assert (=> b!6153812 (= e!3749627 (matchZipper!2108 (derivationStepZipper!2069 lt!2334751 (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))))))

(assert (= (and d!1928184 c!1107752) b!6153811))

(assert (= (and d!1928184 (not c!1107752)) b!6153812))

(assert (=> d!1928184 m!6992952))

(declare-fun m!6993002 () Bool)

(assert (=> b!6153811 m!6993002))

(assert (=> b!6153812 m!6992956))

(assert (=> b!6153812 m!6992956))

(declare-fun m!6993004 () Bool)

(assert (=> b!6153812 m!6993004))

(assert (=> b!6153812 m!6992960))

(assert (=> b!6153812 m!6993004))

(assert (=> b!6153812 m!6992960))

(declare-fun m!6993006 () Bool)

(assert (=> b!6153812 m!6993006))

(assert (=> b!6153651 d!1928184))

(declare-fun b!6153833 () Bool)

(declare-fun e!3749642 () Bool)

(declare-fun lt!2334870 () Regex!16096)

(declare-fun isConcat!1036 (Regex!16096) Bool)

(assert (=> b!6153833 (= e!3749642 (isConcat!1036 lt!2334870))))

(declare-fun b!6153834 () Bool)

(declare-fun e!3749643 () Regex!16096)

(declare-fun e!3749644 () Regex!16096)

(assert (=> b!6153834 (= e!3749643 e!3749644)))

(declare-fun c!1107761 () Bool)

(assert (=> b!6153834 (= c!1107761 (is-Cons!64463 (exprs!5980 (h!70913 zl!343))))))

(declare-fun d!1928186 () Bool)

(declare-fun e!3749645 () Bool)

(assert (=> d!1928186 e!3749645))

(declare-fun res!2548864 () Bool)

(assert (=> d!1928186 (=> (not res!2548864) (not e!3749645))))

(assert (=> d!1928186 (= res!2548864 (validRegex!7832 lt!2334870))))

(assert (=> d!1928186 (= lt!2334870 e!3749643)))

(declare-fun c!1107762 () Bool)

(declare-fun e!3749640 () Bool)

(assert (=> d!1928186 (= c!1107762 e!3749640)))

(declare-fun res!2548863 () Bool)

(assert (=> d!1928186 (=> (not res!2548863) (not e!3749640))))

(assert (=> d!1928186 (= res!2548863 (is-Cons!64463 (exprs!5980 (h!70913 zl!343))))))

(declare-fun lambda!335663 () Int)

(declare-fun forall!15217 (List!64587 Int) Bool)

(assert (=> d!1928186 (forall!15217 (exprs!5980 (h!70913 zl!343)) lambda!335663)))

(assert (=> d!1928186 (= (generalisedConcat!1693 (exprs!5980 (h!70913 zl!343))) lt!2334870)))

(declare-fun b!6153835 () Bool)

(declare-fun e!3749641 () Bool)

(declare-fun isEmptyExpr!1513 (Regex!16096) Bool)

(assert (=> b!6153835 (= e!3749641 (isEmptyExpr!1513 lt!2334870))))

(declare-fun b!6153836 () Bool)

(assert (=> b!6153836 (= e!3749645 e!3749641)))

(declare-fun c!1107764 () Bool)

(assert (=> b!6153836 (= c!1107764 (isEmpty!36427 (exprs!5980 (h!70913 zl!343))))))

(declare-fun b!6153837 () Bool)

(assert (=> b!6153837 (= e!3749641 e!3749642)))

(declare-fun c!1107763 () Bool)

(declare-fun tail!11799 (List!64587) List!64587)

(assert (=> b!6153837 (= c!1107763 (isEmpty!36427 (tail!11799 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun b!6153838 () Bool)

(assert (=> b!6153838 (= e!3749644 EmptyExpr!16096)))

(declare-fun b!6153839 () Bool)

(assert (=> b!6153839 (= e!3749640 (isEmpty!36427 (t!378078 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun b!6153840 () Bool)

(assert (=> b!6153840 (= e!3749643 (h!70911 (exprs!5980 (h!70913 zl!343))))))

(declare-fun b!6153841 () Bool)

(assert (=> b!6153841 (= e!3749644 (Concat!24941 (h!70911 (exprs!5980 (h!70913 zl!343))) (generalisedConcat!1693 (t!378078 (exprs!5980 (h!70913 zl!343))))))))

(declare-fun b!6153842 () Bool)

(declare-fun head!12714 (List!64587) Regex!16096)

(assert (=> b!6153842 (= e!3749642 (= lt!2334870 (head!12714 (exprs!5980 (h!70913 zl!343)))))))

(assert (= (and d!1928186 res!2548863) b!6153839))

(assert (= (and d!1928186 c!1107762) b!6153840))

(assert (= (and d!1928186 (not c!1107762)) b!6153834))

(assert (= (and b!6153834 c!1107761) b!6153841))

(assert (= (and b!6153834 (not c!1107761)) b!6153838))

(assert (= (and d!1928186 res!2548864) b!6153836))

(assert (= (and b!6153836 c!1107764) b!6153835))

(assert (= (and b!6153836 (not c!1107764)) b!6153837))

(assert (= (and b!6153837 c!1107763) b!6153842))

(assert (= (and b!6153837 (not c!1107763)) b!6153833))

(declare-fun m!6993008 () Bool)

(assert (=> b!6153835 m!6993008))

(declare-fun m!6993010 () Bool)

(assert (=> d!1928186 m!6993010))

(declare-fun m!6993012 () Bool)

(assert (=> d!1928186 m!6993012))

(declare-fun m!6993014 () Bool)

(assert (=> b!6153836 m!6993014))

(declare-fun m!6993016 () Bool)

(assert (=> b!6153837 m!6993016))

(assert (=> b!6153837 m!6993016))

(declare-fun m!6993018 () Bool)

(assert (=> b!6153837 m!6993018))

(declare-fun m!6993020 () Bool)

(assert (=> b!6153833 m!6993020))

(declare-fun m!6993022 () Bool)

(assert (=> b!6153842 m!6993022))

(assert (=> b!6153839 m!6992844))

(declare-fun m!6993024 () Bool)

(assert (=> b!6153841 m!6993024))

(assert (=> b!6153641 d!1928186))

(assert (=> b!6153642 d!1928184))

(declare-fun d!1928188 () Bool)

(declare-fun e!3749648 () Bool)

(assert (=> d!1928188 e!3749648))

(declare-fun res!2548867 () Bool)

(assert (=> d!1928188 (=> (not res!2548867) (not e!3749648))))

(declare-fun lt!2334873 () List!64589)

(declare-fun noDuplicate!1943 (List!64589) Bool)

(assert (=> d!1928188 (= res!2548867 (noDuplicate!1943 lt!2334873))))

(declare-fun choose!45743 ((Set Context!10960)) List!64589)

(assert (=> d!1928188 (= lt!2334873 (choose!45743 z!1189))))

(assert (=> d!1928188 (= (toList!9880 z!1189) lt!2334873)))

(declare-fun b!6153845 () Bool)

(declare-fun content!12015 (List!64589) (Set Context!10960))

(assert (=> b!6153845 (= e!3749648 (= (content!12015 lt!2334873) z!1189))))

(assert (= (and d!1928188 res!2548867) b!6153845))

(declare-fun m!6993026 () Bool)

(assert (=> d!1928188 m!6993026))

(declare-fun m!6993028 () Bool)

(assert (=> d!1928188 m!6993028))

(declare-fun m!6993030 () Bool)

(assert (=> b!6153845 m!6993030))

(assert (=> b!6153631 d!1928188))

(declare-fun bs!1525389 () Bool)

(declare-fun d!1928190 () Bool)

(assert (= bs!1525389 (and d!1928190 d!1928186)))

(declare-fun lambda!335666 () Int)

(assert (=> bs!1525389 (= lambda!335666 lambda!335663)))

(assert (=> d!1928190 (= (inv!83488 setElem!41673) (forall!15217 (exprs!5980 setElem!41673) lambda!335666))))

(declare-fun bs!1525390 () Bool)

(assert (= bs!1525390 d!1928190))

(declare-fun m!6993032 () Bool)

(assert (=> bs!1525390 m!6993032))

(assert (=> setNonEmpty!41673 d!1928190))

(declare-fun d!1928192 () Bool)

(assert (=> d!1928192 (= (isEmpty!36426 (t!378080 zl!343)) (is-Nil!64465 (t!378080 zl!343)))))

(assert (=> b!6153637 d!1928192))

(declare-fun bs!1525391 () Bool)

(declare-fun d!1928194 () Bool)

(assert (= bs!1525391 (and d!1928194 d!1928186)))

(declare-fun lambda!335667 () Int)

(assert (=> bs!1525391 (= lambda!335667 lambda!335663)))

(declare-fun bs!1525392 () Bool)

(assert (= bs!1525392 (and d!1928194 d!1928190)))

(assert (=> bs!1525392 (= lambda!335667 lambda!335666)))

(assert (=> d!1928194 (= (inv!83488 (h!70913 zl!343)) (forall!15217 (exprs!5980 (h!70913 zl!343)) lambda!335667))))

(declare-fun bs!1525393 () Bool)

(assert (= bs!1525393 d!1928194))

(declare-fun m!6993034 () Bool)

(assert (=> bs!1525393 m!6993034))

(assert (=> b!6153628 d!1928194))

(assert (=> b!6153648 d!1928160))

(declare-fun d!1928196 () Bool)

(declare-fun lt!2334876 () Regex!16096)

(assert (=> d!1928196 (validRegex!7832 lt!2334876)))

(assert (=> d!1928196 (= lt!2334876 (generalisedUnion!1940 (unfocusZipperList!1517 zl!343)))))

(assert (=> d!1928196 (= (unfocusZipper!1838 zl!343) lt!2334876)))

(declare-fun bs!1525394 () Bool)

(assert (= bs!1525394 d!1928196))

(declare-fun m!6993036 () Bool)

(assert (=> bs!1525394 m!6993036))

(assert (=> bs!1525394 m!6992744))

(assert (=> bs!1525394 m!6992744))

(assert (=> bs!1525394 m!6992746))

(assert (=> b!6153639 d!1928196))

(declare-fun bs!1525395 () Bool)

(declare-fun b!6153879 () Bool)

(assert (= bs!1525395 (and b!6153879 b!6153633)))

(declare-fun lambda!335672 () Int)

(assert (=> bs!1525395 (not (= lambda!335672 lambda!335640))))

(assert (=> bs!1525395 (not (= lambda!335672 lambda!335641))))

(assert (=> b!6153879 true))

(assert (=> b!6153879 true))

(declare-fun bs!1525396 () Bool)

(declare-fun b!6153881 () Bool)

(assert (= bs!1525396 (and b!6153881 b!6153633)))

(declare-fun lambda!335673 () Int)

(assert (=> bs!1525396 (not (= lambda!335673 lambda!335640))))

(assert (=> bs!1525396 (= lambda!335673 lambda!335641)))

(declare-fun bs!1525397 () Bool)

(assert (= bs!1525397 (and b!6153881 b!6153879)))

(assert (=> bs!1525397 (not (= lambda!335673 lambda!335672))))

(assert (=> b!6153881 true))

(assert (=> b!6153881 true))

(declare-fun b!6153878 () Bool)

(declare-fun e!3749668 () Bool)

(declare-fun e!3749672 () Bool)

(assert (=> b!6153878 (= e!3749668 e!3749672)))

(declare-fun c!1107776 () Bool)

(assert (=> b!6153878 (= c!1107776 (is-Star!16096 r!7292))))

(declare-fun e!3749669 () Bool)

(declare-fun call!512008 () Bool)

(assert (=> b!6153879 (= e!3749669 call!512008)))

(declare-fun b!6153880 () Bool)

(declare-fun e!3749667 () Bool)

(assert (=> b!6153880 (= e!3749667 (= s!2326 (Cons!64464 (c!1107723 r!7292) Nil!64464)))))

(assert (=> b!6153881 (= e!3749672 call!512008)))

(declare-fun b!6153882 () Bool)

(declare-fun c!1107774 () Bool)

(assert (=> b!6153882 (= c!1107774 (is-ElementMatch!16096 r!7292))))

(declare-fun e!3749671 () Bool)

(assert (=> b!6153882 (= e!3749671 e!3749667)))

(declare-fun b!6153883 () Bool)

(declare-fun c!1107775 () Bool)

(assert (=> b!6153883 (= c!1107775 (is-Union!16096 r!7292))))

(assert (=> b!6153883 (= e!3749667 e!3749668)))

(declare-fun b!6153884 () Bool)

(declare-fun e!3749673 () Bool)

(assert (=> b!6153884 (= e!3749673 e!3749671)))

(declare-fun res!2548885 () Bool)

(assert (=> b!6153884 (= res!2548885 (not (is-EmptyLang!16096 r!7292)))))

(assert (=> b!6153884 (=> (not res!2548885) (not e!3749671))))

(declare-fun d!1928198 () Bool)

(declare-fun c!1107773 () Bool)

(assert (=> d!1928198 (= c!1107773 (is-EmptyExpr!16096 r!7292))))

(assert (=> d!1928198 (= (matchRSpec!3197 r!7292 s!2326) e!3749673)))

(declare-fun b!6153885 () Bool)

(declare-fun e!3749670 () Bool)

(assert (=> b!6153885 (= e!3749668 e!3749670)))

(declare-fun res!2548886 () Bool)

(assert (=> b!6153885 (= res!2548886 (matchRSpec!3197 (regOne!32705 r!7292) s!2326))))

(assert (=> b!6153885 (=> res!2548886 e!3749670)))

(declare-fun b!6153886 () Bool)

(assert (=> b!6153886 (= e!3749670 (matchRSpec!3197 (regTwo!32705 r!7292) s!2326))))

(declare-fun bm!512002 () Bool)

(assert (=> bm!512002 (= call!512008 (Exists!3166 (ite c!1107776 lambda!335672 lambda!335673)))))

(declare-fun bm!512003 () Bool)

(declare-fun call!512007 () Bool)

(assert (=> bm!512003 (= call!512007 (isEmpty!36430 s!2326))))

(declare-fun b!6153887 () Bool)

(declare-fun res!2548884 () Bool)

(assert (=> b!6153887 (=> res!2548884 e!3749669)))

(assert (=> b!6153887 (= res!2548884 call!512007)))

(assert (=> b!6153887 (= e!3749672 e!3749669)))

(declare-fun b!6153888 () Bool)

(assert (=> b!6153888 (= e!3749673 call!512007)))

(assert (= (and d!1928198 c!1107773) b!6153888))

(assert (= (and d!1928198 (not c!1107773)) b!6153884))

(assert (= (and b!6153884 res!2548885) b!6153882))

(assert (= (and b!6153882 c!1107774) b!6153880))

(assert (= (and b!6153882 (not c!1107774)) b!6153883))

(assert (= (and b!6153883 c!1107775) b!6153885))

(assert (= (and b!6153883 (not c!1107775)) b!6153878))

(assert (= (and b!6153885 (not res!2548886)) b!6153886))

(assert (= (and b!6153878 c!1107776) b!6153887))

(assert (= (and b!6153878 (not c!1107776)) b!6153881))

(assert (= (and b!6153887 (not res!2548884)) b!6153879))

(assert (= (or b!6153879 b!6153881) bm!512002))

(assert (= (or b!6153888 b!6153887) bm!512003))

(declare-fun m!6993038 () Bool)

(assert (=> b!6153885 m!6993038))

(declare-fun m!6993040 () Bool)

(assert (=> b!6153886 m!6993040))

(declare-fun m!6993042 () Bool)

(assert (=> bm!512002 m!6993042))

(declare-fun m!6993044 () Bool)

(assert (=> bm!512003 m!6993044))

(assert (=> b!6153635 d!1928198))

(declare-fun b!6153917 () Bool)

(declare-fun res!2548909 () Bool)

(declare-fun e!3749691 () Bool)

(assert (=> b!6153917 (=> res!2548909 e!3749691)))

(assert (=> b!6153917 (= res!2548909 (not (isEmpty!36430 (tail!11798 s!2326))))))

(declare-fun b!6153918 () Bool)

(declare-fun e!3749688 () Bool)

(assert (=> b!6153918 (= e!3749688 e!3749691)))

(declare-fun res!2548907 () Bool)

(assert (=> b!6153918 (=> res!2548907 e!3749691)))

(declare-fun call!512011 () Bool)

(assert (=> b!6153918 (= res!2548907 call!512011)))

(declare-fun b!6153919 () Bool)

(declare-fun e!3749692 () Bool)

(declare-fun lt!2334879 () Bool)

(assert (=> b!6153919 (= e!3749692 (not lt!2334879))))

(declare-fun b!6153920 () Bool)

(declare-fun e!3749689 () Bool)

(assert (=> b!6153920 (= e!3749689 (= (head!12713 s!2326) (c!1107723 r!7292)))))

(declare-fun b!6153921 () Bool)

(declare-fun e!3749693 () Bool)

(assert (=> b!6153921 (= e!3749693 (nullable!6089 r!7292))))

(declare-fun b!6153922 () Bool)

(declare-fun derivativeStep!4816 (Regex!16096 C!32462) Regex!16096)

(assert (=> b!6153922 (= e!3749693 (matchR!8279 (derivativeStep!4816 r!7292 (head!12713 s!2326)) (tail!11798 s!2326)))))

(declare-fun b!6153923 () Bool)

(declare-fun e!3749690 () Bool)

(assert (=> b!6153923 (= e!3749690 (= lt!2334879 call!512011))))

(declare-fun bm!512006 () Bool)

(assert (=> bm!512006 (= call!512011 (isEmpty!36430 s!2326))))

(declare-fun d!1928200 () Bool)

(assert (=> d!1928200 e!3749690))

(declare-fun c!1107784 () Bool)

(assert (=> d!1928200 (= c!1107784 (is-EmptyExpr!16096 r!7292))))

(assert (=> d!1928200 (= lt!2334879 e!3749693)))

(declare-fun c!1107783 () Bool)

(assert (=> d!1928200 (= c!1107783 (isEmpty!36430 s!2326))))

(assert (=> d!1928200 (validRegex!7832 r!7292)))

(assert (=> d!1928200 (= (matchR!8279 r!7292 s!2326) lt!2334879)))

(declare-fun b!6153924 () Bool)

(declare-fun e!3749694 () Bool)

(assert (=> b!6153924 (= e!3749694 e!3749688)))

(declare-fun res!2548910 () Bool)

(assert (=> b!6153924 (=> (not res!2548910) (not e!3749688))))

(assert (=> b!6153924 (= res!2548910 (not lt!2334879))))

(declare-fun b!6153925 () Bool)

(declare-fun res!2548906 () Bool)

(assert (=> b!6153925 (=> (not res!2548906) (not e!3749689))))

(assert (=> b!6153925 (= res!2548906 (isEmpty!36430 (tail!11798 s!2326)))))

(declare-fun b!6153926 () Bool)

(declare-fun res!2548908 () Bool)

(assert (=> b!6153926 (=> res!2548908 e!3749694)))

(assert (=> b!6153926 (= res!2548908 e!3749689)))

(declare-fun res!2548903 () Bool)

(assert (=> b!6153926 (=> (not res!2548903) (not e!3749689))))

(assert (=> b!6153926 (= res!2548903 lt!2334879)))

(declare-fun b!6153927 () Bool)

(declare-fun res!2548904 () Bool)

(assert (=> b!6153927 (=> (not res!2548904) (not e!3749689))))

(assert (=> b!6153927 (= res!2548904 (not call!512011))))

(declare-fun b!6153928 () Bool)

(assert (=> b!6153928 (= e!3749691 (not (= (head!12713 s!2326) (c!1107723 r!7292))))))

(declare-fun b!6153929 () Bool)

(declare-fun res!2548905 () Bool)

(assert (=> b!6153929 (=> res!2548905 e!3749694)))

(assert (=> b!6153929 (= res!2548905 (not (is-ElementMatch!16096 r!7292)))))

(assert (=> b!6153929 (= e!3749692 e!3749694)))

(declare-fun b!6153930 () Bool)

(assert (=> b!6153930 (= e!3749690 e!3749692)))

(declare-fun c!1107785 () Bool)

(assert (=> b!6153930 (= c!1107785 (is-EmptyLang!16096 r!7292))))

(assert (= (and d!1928200 c!1107783) b!6153921))

(assert (= (and d!1928200 (not c!1107783)) b!6153922))

(assert (= (and d!1928200 c!1107784) b!6153923))

(assert (= (and d!1928200 (not c!1107784)) b!6153930))

(assert (= (and b!6153930 c!1107785) b!6153919))

(assert (= (and b!6153930 (not c!1107785)) b!6153929))

(assert (= (and b!6153929 (not res!2548905)) b!6153926))

(assert (= (and b!6153926 res!2548903) b!6153927))

(assert (= (and b!6153927 res!2548904) b!6153925))

(assert (= (and b!6153925 res!2548906) b!6153920))

(assert (= (and b!6153926 (not res!2548908)) b!6153924))

(assert (= (and b!6153924 res!2548910) b!6153918))

(assert (= (and b!6153918 (not res!2548907)) b!6153917))

(assert (= (and b!6153917 (not res!2548909)) b!6153928))

(assert (= (or b!6153923 b!6153918 b!6153927) bm!512006))

(declare-fun m!6993046 () Bool)

(assert (=> b!6153917 m!6993046))

(assert (=> b!6153917 m!6993046))

(declare-fun m!6993048 () Bool)

(assert (=> b!6153917 m!6993048))

(declare-fun m!6993050 () Bool)

(assert (=> b!6153921 m!6993050))

(declare-fun m!6993052 () Bool)

(assert (=> b!6153928 m!6993052))

(assert (=> d!1928200 m!6993044))

(assert (=> d!1928200 m!6992798))

(assert (=> b!6153925 m!6993046))

(assert (=> b!6153925 m!6993046))

(assert (=> b!6153925 m!6993048))

(assert (=> b!6153922 m!6993052))

(assert (=> b!6153922 m!6993052))

(declare-fun m!6993054 () Bool)

(assert (=> b!6153922 m!6993054))

(assert (=> b!6153922 m!6993046))

(assert (=> b!6153922 m!6993054))

(assert (=> b!6153922 m!6993046))

(declare-fun m!6993056 () Bool)

(assert (=> b!6153922 m!6993056))

(assert (=> bm!512006 m!6993044))

(assert (=> b!6153920 m!6993052))

(assert (=> b!6153635 d!1928200))

(declare-fun d!1928202 () Bool)

(assert (=> d!1928202 (= (matchR!8279 r!7292 s!2326) (matchRSpec!3197 r!7292 s!2326))))

(declare-fun lt!2334882 () Unit!157555)

(declare-fun choose!45744 (Regex!16096 List!64588) Unit!157555)

(assert (=> d!1928202 (= lt!2334882 (choose!45744 r!7292 s!2326))))

(assert (=> d!1928202 (validRegex!7832 r!7292)))

(assert (=> d!1928202 (= (mainMatchTheorem!3197 r!7292 s!2326) lt!2334882)))

(declare-fun bs!1525398 () Bool)

(assert (= bs!1525398 d!1928202))

(assert (=> bs!1525398 m!6992834))

(assert (=> bs!1525398 m!6992832))

(declare-fun m!6993058 () Bool)

(assert (=> bs!1525398 m!6993058))

(assert (=> bs!1525398 m!6992798))

(assert (=> b!6153635 d!1928202))

(declare-fun bs!1525399 () Bool)

(declare-fun d!1928204 () Bool)

(assert (= bs!1525399 (and d!1928204 d!1928186)))

(declare-fun lambda!335676 () Int)

(assert (=> bs!1525399 (= lambda!335676 lambda!335663)))

(declare-fun bs!1525400 () Bool)

(assert (= bs!1525400 (and d!1928204 d!1928190)))

(assert (=> bs!1525400 (= lambda!335676 lambda!335666)))

(declare-fun bs!1525401 () Bool)

(assert (= bs!1525401 (and d!1928204 d!1928194)))

(assert (=> bs!1525401 (= lambda!335676 lambda!335667)))

(declare-fun b!6153951 () Bool)

(declare-fun e!3749711 () Bool)

(declare-fun lt!2334885 () Regex!16096)

(assert (=> b!6153951 (= e!3749711 (= lt!2334885 (head!12714 (unfocusZipperList!1517 zl!343))))))

(declare-fun b!6153952 () Bool)

(declare-fun e!3749712 () Regex!16096)

(assert (=> b!6153952 (= e!3749712 (Union!16096 (h!70911 (unfocusZipperList!1517 zl!343)) (generalisedUnion!1940 (t!378078 (unfocusZipperList!1517 zl!343)))))))

(declare-fun b!6153953 () Bool)

(declare-fun e!3749710 () Bool)

(declare-fun e!3749708 () Bool)

(assert (=> b!6153953 (= e!3749710 e!3749708)))

(declare-fun c!1107796 () Bool)

(assert (=> b!6153953 (= c!1107796 (isEmpty!36427 (unfocusZipperList!1517 zl!343)))))

(declare-fun b!6153954 () Bool)

(declare-fun e!3749707 () Bool)

(assert (=> b!6153954 (= e!3749707 (isEmpty!36427 (t!378078 (unfocusZipperList!1517 zl!343))))))

(declare-fun b!6153955 () Bool)

(declare-fun e!3749709 () Regex!16096)

(assert (=> b!6153955 (= e!3749709 e!3749712)))

(declare-fun c!1107795 () Bool)

(assert (=> b!6153955 (= c!1107795 (is-Cons!64463 (unfocusZipperList!1517 zl!343)))))

(declare-fun b!6153956 () Bool)

(assert (=> b!6153956 (= e!3749709 (h!70911 (unfocusZipperList!1517 zl!343)))))

(declare-fun b!6153957 () Bool)

(declare-fun isEmptyLang!1523 (Regex!16096) Bool)

(assert (=> b!6153957 (= e!3749708 (isEmptyLang!1523 lt!2334885))))

(declare-fun b!6153958 () Bool)

(declare-fun isUnion!953 (Regex!16096) Bool)

(assert (=> b!6153958 (= e!3749711 (isUnion!953 lt!2334885))))

(assert (=> d!1928204 e!3749710))

(declare-fun res!2548916 () Bool)

(assert (=> d!1928204 (=> (not res!2548916) (not e!3749710))))

(assert (=> d!1928204 (= res!2548916 (validRegex!7832 lt!2334885))))

(assert (=> d!1928204 (= lt!2334885 e!3749709)))

(declare-fun c!1107797 () Bool)

(assert (=> d!1928204 (= c!1107797 e!3749707)))

(declare-fun res!2548915 () Bool)

(assert (=> d!1928204 (=> (not res!2548915) (not e!3749707))))

(assert (=> d!1928204 (= res!2548915 (is-Cons!64463 (unfocusZipperList!1517 zl!343)))))

(assert (=> d!1928204 (forall!15217 (unfocusZipperList!1517 zl!343) lambda!335676)))

(assert (=> d!1928204 (= (generalisedUnion!1940 (unfocusZipperList!1517 zl!343)) lt!2334885)))

(declare-fun b!6153959 () Bool)

(assert (=> b!6153959 (= e!3749712 EmptyLang!16096)))

(declare-fun b!6153960 () Bool)

(assert (=> b!6153960 (= e!3749708 e!3749711)))

(declare-fun c!1107794 () Bool)

(assert (=> b!6153960 (= c!1107794 (isEmpty!36427 (tail!11799 (unfocusZipperList!1517 zl!343))))))

(assert (= (and d!1928204 res!2548915) b!6153954))

(assert (= (and d!1928204 c!1107797) b!6153956))

(assert (= (and d!1928204 (not c!1107797)) b!6153955))

(assert (= (and b!6153955 c!1107795) b!6153952))

(assert (= (and b!6153955 (not c!1107795)) b!6153959))

(assert (= (and d!1928204 res!2548916) b!6153953))

(assert (= (and b!6153953 c!1107796) b!6153957))

(assert (= (and b!6153953 (not c!1107796)) b!6153960))

(assert (= (and b!6153960 c!1107794) b!6153951))

(assert (= (and b!6153960 (not c!1107794)) b!6153958))

(declare-fun m!6993060 () Bool)

(assert (=> d!1928204 m!6993060))

(assert (=> d!1928204 m!6992744))

(declare-fun m!6993062 () Bool)

(assert (=> d!1928204 m!6993062))

(assert (=> b!6153953 m!6992744))

(declare-fun m!6993064 () Bool)

(assert (=> b!6153953 m!6993064))

(declare-fun m!6993066 () Bool)

(assert (=> b!6153958 m!6993066))

(assert (=> b!6153951 m!6992744))

(declare-fun m!6993068 () Bool)

(assert (=> b!6153951 m!6993068))

(declare-fun m!6993070 () Bool)

(assert (=> b!6153954 m!6993070))

(assert (=> b!6153960 m!6992744))

(declare-fun m!6993072 () Bool)

(assert (=> b!6153960 m!6993072))

(assert (=> b!6153960 m!6993072))

(declare-fun m!6993074 () Bool)

(assert (=> b!6153960 m!6993074))

(declare-fun m!6993076 () Bool)

(assert (=> b!6153957 m!6993076))

(declare-fun m!6993078 () Bool)

(assert (=> b!6153952 m!6993078))

(assert (=> b!6153636 d!1928204))

(declare-fun bs!1525402 () Bool)

(declare-fun d!1928206 () Bool)

(assert (= bs!1525402 (and d!1928206 d!1928186)))

(declare-fun lambda!335679 () Int)

(assert (=> bs!1525402 (= lambda!335679 lambda!335663)))

(declare-fun bs!1525403 () Bool)

(assert (= bs!1525403 (and d!1928206 d!1928190)))

(assert (=> bs!1525403 (= lambda!335679 lambda!335666)))

(declare-fun bs!1525404 () Bool)

(assert (= bs!1525404 (and d!1928206 d!1928194)))

(assert (=> bs!1525404 (= lambda!335679 lambda!335667)))

(declare-fun bs!1525405 () Bool)

(assert (= bs!1525405 (and d!1928206 d!1928204)))

(assert (=> bs!1525405 (= lambda!335679 lambda!335676)))

(declare-fun lt!2334888 () List!64587)

(assert (=> d!1928206 (forall!15217 lt!2334888 lambda!335679)))

(declare-fun e!3749715 () List!64587)

(assert (=> d!1928206 (= lt!2334888 e!3749715)))

(declare-fun c!1107800 () Bool)

(assert (=> d!1928206 (= c!1107800 (is-Cons!64465 zl!343))))

(assert (=> d!1928206 (= (unfocusZipperList!1517 zl!343) lt!2334888)))

(declare-fun b!6153965 () Bool)

(assert (=> b!6153965 (= e!3749715 (Cons!64463 (generalisedConcat!1693 (exprs!5980 (h!70913 zl!343))) (unfocusZipperList!1517 (t!378080 zl!343))))))

(declare-fun b!6153966 () Bool)

(assert (=> b!6153966 (= e!3749715 Nil!64463)))

(assert (= (and d!1928206 c!1107800) b!6153965))

(assert (= (and d!1928206 (not c!1107800)) b!6153966))

(declare-fun m!6993080 () Bool)

(assert (=> d!1928206 m!6993080))

(assert (=> b!6153965 m!6992770))

(declare-fun m!6993082 () Bool)

(assert (=> b!6153965 m!6993082))

(assert (=> b!6153636 d!1928206))

(declare-fun d!1928208 () Bool)

(assert (=> d!1928208 (= (isEmpty!36427 (t!378078 (exprs!5980 (h!70913 zl!343)))) (is-Nil!64463 (t!378078 (exprs!5980 (h!70913 zl!343)))))))

(assert (=> b!6153647 d!1928208))

(declare-fun d!1928210 () Bool)

(declare-fun c!1107801 () Bool)

(assert (=> d!1928210 (= c!1107801 (isEmpty!36430 (t!378079 s!2326)))))

(declare-fun e!3749716 () Bool)

(assert (=> d!1928210 (= (matchZipper!2108 lt!2334770 (t!378079 s!2326)) e!3749716)))

(declare-fun b!6153967 () Bool)

(assert (=> b!6153967 (= e!3749716 (nullableZipper!1877 lt!2334770))))

(declare-fun b!6153968 () Bool)

(assert (=> b!6153968 (= e!3749716 (matchZipper!2108 (derivationStepZipper!2069 lt!2334770 (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))))))

(assert (= (and d!1928210 c!1107801) b!6153967))

(assert (= (and d!1928210 (not c!1107801)) b!6153968))

(assert (=> d!1928210 m!6992952))

(declare-fun m!6993084 () Bool)

(assert (=> b!6153967 m!6993084))

(assert (=> b!6153968 m!6992956))

(assert (=> b!6153968 m!6992956))

(declare-fun m!6993086 () Bool)

(assert (=> b!6153968 m!6993086))

(assert (=> b!6153968 m!6992960))

(assert (=> b!6153968 m!6993086))

(assert (=> b!6153968 m!6992960))

(declare-fun m!6993088 () Bool)

(assert (=> b!6153968 m!6993088))

(assert (=> b!6153632 d!1928210))

(declare-fun d!1928212 () Bool)

(declare-fun c!1107802 () Bool)

(assert (=> d!1928212 (= c!1107802 (isEmpty!36430 (t!378079 s!2326)))))

(declare-fun e!3749717 () Bool)

(assert (=> d!1928212 (= (matchZipper!2108 lt!2334745 (t!378079 s!2326)) e!3749717)))

(declare-fun b!6153969 () Bool)

(assert (=> b!6153969 (= e!3749717 (nullableZipper!1877 lt!2334745))))

(declare-fun b!6153970 () Bool)

(assert (=> b!6153970 (= e!3749717 (matchZipper!2108 (derivationStepZipper!2069 lt!2334745 (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))))))

(assert (= (and d!1928212 c!1107802) b!6153969))

(assert (= (and d!1928212 (not c!1107802)) b!6153970))

(assert (=> d!1928212 m!6992952))

(declare-fun m!6993090 () Bool)

(assert (=> b!6153969 m!6993090))

(assert (=> b!6153970 m!6992956))

(assert (=> b!6153970 m!6992956))

(declare-fun m!6993092 () Bool)

(assert (=> b!6153970 m!6993092))

(assert (=> b!6153970 m!6992960))

(assert (=> b!6153970 m!6993092))

(assert (=> b!6153970 m!6992960))

(declare-fun m!6993094 () Bool)

(assert (=> b!6153970 m!6993094))

(assert (=> b!6153632 d!1928212))

(declare-fun d!1928214 () Bool)

(declare-fun c!1107803 () Bool)

(assert (=> d!1928214 (= c!1107803 (isEmpty!36430 (t!378079 s!2326)))))

(declare-fun e!3749718 () Bool)

(assert (=> d!1928214 (= (matchZipper!2108 lt!2334754 (t!378079 s!2326)) e!3749718)))

(declare-fun b!6153971 () Bool)

(assert (=> b!6153971 (= e!3749718 (nullableZipper!1877 lt!2334754))))

(declare-fun b!6153972 () Bool)

(assert (=> b!6153972 (= e!3749718 (matchZipper!2108 (derivationStepZipper!2069 lt!2334754 (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))))))

(assert (= (and d!1928214 c!1107803) b!6153971))

(assert (= (and d!1928214 (not c!1107803)) b!6153972))

(assert (=> d!1928214 m!6992952))

(declare-fun m!6993096 () Bool)

(assert (=> b!6153971 m!6993096))

(assert (=> b!6153972 m!6992956))

(assert (=> b!6153972 m!6992956))

(declare-fun m!6993098 () Bool)

(assert (=> b!6153972 m!6993098))

(assert (=> b!6153972 m!6992960))

(assert (=> b!6153972 m!6993098))

(assert (=> b!6153972 m!6992960))

(declare-fun m!6993100 () Bool)

(assert (=> b!6153972 m!6993100))

(assert (=> b!6153632 d!1928214))

(declare-fun d!1928216 () Bool)

(declare-fun e!3749719 () Bool)

(assert (=> d!1928216 (= (matchZipper!2108 (set.union lt!2334754 lt!2334756) (t!378079 s!2326)) e!3749719)))

(declare-fun res!2548917 () Bool)

(assert (=> d!1928216 (=> res!2548917 e!3749719)))

(assert (=> d!1928216 (= res!2548917 (matchZipper!2108 lt!2334754 (t!378079 s!2326)))))

(declare-fun lt!2334889 () Unit!157555)

(assert (=> d!1928216 (= lt!2334889 (choose!45742 lt!2334754 lt!2334756 (t!378079 s!2326)))))

(assert (=> d!1928216 (= (lemmaZipperConcatMatchesSameAsBothZippers!927 lt!2334754 lt!2334756 (t!378079 s!2326)) lt!2334889)))

(declare-fun b!6153973 () Bool)

(assert (=> b!6153973 (= e!3749719 (matchZipper!2108 lt!2334756 (t!378079 s!2326)))))

(assert (= (and d!1928216 (not res!2548917)) b!6153973))

(declare-fun m!6993102 () Bool)

(assert (=> d!1928216 m!6993102))

(assert (=> d!1928216 m!6992764))

(declare-fun m!6993104 () Bool)

(assert (=> d!1928216 m!6993104))

(assert (=> b!6153973 m!6992790))

(assert (=> b!6153632 d!1928216))

(declare-fun bs!1525406 () Bool)

(declare-fun d!1928218 () Bool)

(assert (= bs!1525406 (and d!1928218 d!1928204)))

(declare-fun lambda!335680 () Int)

(assert (=> bs!1525406 (= lambda!335680 lambda!335676)))

(declare-fun bs!1525407 () Bool)

(assert (= bs!1525407 (and d!1928218 d!1928186)))

(assert (=> bs!1525407 (= lambda!335680 lambda!335663)))

(declare-fun bs!1525408 () Bool)

(assert (= bs!1525408 (and d!1928218 d!1928190)))

(assert (=> bs!1525408 (= lambda!335680 lambda!335666)))

(declare-fun bs!1525409 () Bool)

(assert (= bs!1525409 (and d!1928218 d!1928194)))

(assert (=> bs!1525409 (= lambda!335680 lambda!335667)))

(declare-fun bs!1525410 () Bool)

(assert (= bs!1525410 (and d!1928218 d!1928206)))

(assert (=> bs!1525410 (= lambda!335680 lambda!335679)))

(assert (=> d!1928218 (= (inv!83488 lt!2334763) (forall!15217 (exprs!5980 lt!2334763) lambda!335680))))

(declare-fun bs!1525411 () Bool)

(assert (= bs!1525411 d!1928218))

(declare-fun m!6993106 () Bool)

(assert (=> bs!1525411 m!6993106))

(assert (=> b!6153622 d!1928218))

(declare-fun e!3749720 () Bool)

(declare-fun d!1928220 () Bool)

(assert (=> d!1928220 (= (matchZipper!2108 (set.union lt!2334770 lt!2334751) (t!378079 s!2326)) e!3749720)))

(declare-fun res!2548918 () Bool)

(assert (=> d!1928220 (=> res!2548918 e!3749720)))

(assert (=> d!1928220 (= res!2548918 (matchZipper!2108 lt!2334770 (t!378079 s!2326)))))

(declare-fun lt!2334890 () Unit!157555)

(assert (=> d!1928220 (= lt!2334890 (choose!45742 lt!2334770 lt!2334751 (t!378079 s!2326)))))

(assert (=> d!1928220 (= (lemmaZipperConcatMatchesSameAsBothZippers!927 lt!2334770 lt!2334751 (t!378079 s!2326)) lt!2334890)))

(declare-fun b!6153974 () Bool)

(assert (=> b!6153974 (= e!3749720 (matchZipper!2108 lt!2334751 (t!378079 s!2326)))))

(assert (= (and d!1928220 (not res!2548918)) b!6153974))

(assert (=> d!1928220 m!6992806))

(assert (=> d!1928220 m!6992760))

(declare-fun m!6993108 () Bool)

(assert (=> d!1928220 m!6993108))

(assert (=> b!6153974 m!6992768))

(assert (=> b!6153623 d!1928220))

(assert (=> b!6153623 d!1928210))

(declare-fun d!1928222 () Bool)

(declare-fun c!1107804 () Bool)

(assert (=> d!1928222 (= c!1107804 (isEmpty!36430 (t!378079 s!2326)))))

(declare-fun e!3749721 () Bool)

(assert (=> d!1928222 (= (matchZipper!2108 (set.union lt!2334770 lt!2334751) (t!378079 s!2326)) e!3749721)))

(declare-fun b!6153975 () Bool)

(assert (=> b!6153975 (= e!3749721 (nullableZipper!1877 (set.union lt!2334770 lt!2334751)))))

(declare-fun b!6153976 () Bool)

(assert (=> b!6153976 (= e!3749721 (matchZipper!2108 (derivationStepZipper!2069 (set.union lt!2334770 lt!2334751) (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))))))

(assert (= (and d!1928222 c!1107804) b!6153975))

(assert (= (and d!1928222 (not c!1107804)) b!6153976))

(assert (=> d!1928222 m!6992952))

(declare-fun m!6993110 () Bool)

(assert (=> b!6153975 m!6993110))

(assert (=> b!6153976 m!6992956))

(assert (=> b!6153976 m!6992956))

(declare-fun m!6993112 () Bool)

(assert (=> b!6153976 m!6993112))

(assert (=> b!6153976 m!6992960))

(assert (=> b!6153976 m!6993112))

(assert (=> b!6153976 m!6992960))

(declare-fun m!6993114 () Bool)

(assert (=> b!6153976 m!6993114))

(assert (=> b!6153623 d!1928222))

(declare-fun d!1928224 () Bool)

(assert (=> d!1928224 (= (flatMap!1601 z!1189 lambda!335642) (dynLambda!25413 lambda!335642 (h!70913 zl!343)))))

(declare-fun lt!2334891 () Unit!157555)

(assert (=> d!1928224 (= lt!2334891 (choose!45741 z!1189 (h!70913 zl!343) lambda!335642))))

(assert (=> d!1928224 (= z!1189 (set.insert (h!70913 zl!343) (as set.empty (Set Context!10960))))))

(assert (=> d!1928224 (= (lemmaFlatMapOnSingletonSet!1127 z!1189 (h!70913 zl!343) lambda!335642) lt!2334891)))

(declare-fun b_lambda!234245 () Bool)

(assert (=> (not b_lambda!234245) (not d!1928224)))

(declare-fun bs!1525412 () Bool)

(assert (= bs!1525412 d!1928224))

(assert (=> bs!1525412 m!6992778))

(declare-fun m!6993116 () Bool)

(assert (=> bs!1525412 m!6993116))

(declare-fun m!6993118 () Bool)

(assert (=> bs!1525412 m!6993118))

(declare-fun m!6993120 () Bool)

(assert (=> bs!1525412 m!6993120))

(assert (=> b!6153643 d!1928224))

(declare-fun d!1928226 () Bool)

(assert (=> d!1928226 (= (nullable!6089 (h!70911 (exprs!5980 (h!70913 zl!343)))) (nullableFct!2053 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun bs!1525413 () Bool)

(assert (= bs!1525413 d!1928226))

(declare-fun m!6993122 () Bool)

(assert (=> bs!1525413 m!6993122))

(assert (=> b!6153643 d!1928226))

(declare-fun b!6153977 () Bool)

(declare-fun e!3749722 () (Set Context!10960))

(declare-fun call!512012 () (Set Context!10960))

(assert (=> b!6153977 (= e!3749722 (set.union call!512012 (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (h!70912 s!2326))))))

(declare-fun bm!512007 () Bool)

(assert (=> bm!512007 (= call!512012 (derivationStepZipperDown!1344 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))))) (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (h!70912 s!2326)))))

(declare-fun b!6153978 () Bool)

(declare-fun e!3749723 () (Set Context!10960))

(assert (=> b!6153978 (= e!3749722 e!3749723)))

(declare-fun c!1107806 () Bool)

(assert (=> b!6153978 (= c!1107806 (is-Cons!64463 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))))))))

(declare-fun b!6153979 () Bool)

(declare-fun e!3749724 () Bool)

(assert (=> b!6153979 (= e!3749724 (nullable!6089 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))))))

(declare-fun d!1928228 () Bool)

(declare-fun c!1107805 () Bool)

(assert (=> d!1928228 (= c!1107805 e!3749724)))

(declare-fun res!2548919 () Bool)

(assert (=> d!1928228 (=> (not res!2548919) (not e!3749724))))

(assert (=> d!1928228 (= res!2548919 (is-Cons!64463 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))))))))

(assert (=> d!1928228 (= (derivationStepZipperUp!1270 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))) (h!70912 s!2326)) e!3749722)))

(declare-fun b!6153980 () Bool)

(assert (=> b!6153980 (= e!3749723 (as set.empty (Set Context!10960)))))

(declare-fun b!6153981 () Bool)

(assert (=> b!6153981 (= e!3749723 call!512012)))

(assert (= (and d!1928228 res!2548919) b!6153979))

(assert (= (and d!1928228 c!1107805) b!6153977))

(assert (= (and d!1928228 (not c!1107805)) b!6153978))

(assert (= (and b!6153978 c!1107806) b!6153981))

(assert (= (and b!6153978 (not c!1107806)) b!6153980))

(assert (= (or b!6153977 b!6153981) bm!512007))

(declare-fun m!6993124 () Bool)

(assert (=> b!6153977 m!6993124))

(declare-fun m!6993126 () Bool)

(assert (=> bm!512007 m!6993126))

(declare-fun m!6993128 () Bool)

(assert (=> b!6153979 m!6993128))

(assert (=> b!6153643 d!1928228))

(declare-fun d!1928230 () Bool)

(assert (=> d!1928230 (= (flatMap!1601 z!1189 lambda!335642) (choose!45740 z!1189 lambda!335642))))

(declare-fun bs!1525414 () Bool)

(assert (= bs!1525414 d!1928230))

(declare-fun m!6993130 () Bool)

(assert (=> bs!1525414 m!6993130))

(assert (=> b!6153643 d!1928230))

(declare-fun call!512013 () (Set Context!10960))

(declare-fun e!3749725 () (Set Context!10960))

(declare-fun b!6153982 () Bool)

(assert (=> b!6153982 (= e!3749725 (set.union call!512013 (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 lt!2334763))) (h!70912 s!2326))))))

(declare-fun bm!512008 () Bool)

(assert (=> bm!512008 (= call!512013 (derivationStepZipperDown!1344 (h!70911 (exprs!5980 lt!2334763)) (Context!10961 (t!378078 (exprs!5980 lt!2334763))) (h!70912 s!2326)))))

(declare-fun b!6153983 () Bool)

(declare-fun e!3749726 () (Set Context!10960))

(assert (=> b!6153983 (= e!3749725 e!3749726)))

(declare-fun c!1107808 () Bool)

(assert (=> b!6153983 (= c!1107808 (is-Cons!64463 (exprs!5980 lt!2334763)))))

(declare-fun b!6153984 () Bool)

(declare-fun e!3749727 () Bool)

(assert (=> b!6153984 (= e!3749727 (nullable!6089 (h!70911 (exprs!5980 lt!2334763))))))

(declare-fun d!1928232 () Bool)

(declare-fun c!1107807 () Bool)

(assert (=> d!1928232 (= c!1107807 e!3749727)))

(declare-fun res!2548920 () Bool)

(assert (=> d!1928232 (=> (not res!2548920) (not e!3749727))))

(assert (=> d!1928232 (= res!2548920 (is-Cons!64463 (exprs!5980 lt!2334763)))))

(assert (=> d!1928232 (= (derivationStepZipperUp!1270 lt!2334763 (h!70912 s!2326)) e!3749725)))

(declare-fun b!6153985 () Bool)

(assert (=> b!6153985 (= e!3749726 (as set.empty (Set Context!10960)))))

(declare-fun b!6153986 () Bool)

(assert (=> b!6153986 (= e!3749726 call!512013)))

(assert (= (and d!1928232 res!2548920) b!6153984))

(assert (= (and d!1928232 c!1107807) b!6153982))

(assert (= (and d!1928232 (not c!1107807)) b!6153983))

(assert (= (and b!6153983 c!1107808) b!6153986))

(assert (= (and b!6153983 (not c!1107808)) b!6153985))

(assert (= (or b!6153982 b!6153986) bm!512008))

(declare-fun m!6993132 () Bool)

(assert (=> b!6153982 m!6993132))

(declare-fun m!6993134 () Bool)

(assert (=> bm!512008 m!6993134))

(declare-fun m!6993136 () Bool)

(assert (=> b!6153984 m!6993136))

(assert (=> b!6153643 d!1928232))

(declare-fun bm!512021 () Bool)

(declare-fun call!512027 () List!64587)

(declare-fun call!512030 () List!64587)

(assert (=> bm!512021 (= call!512027 call!512030)))

(declare-fun b!6154009 () Bool)

(declare-fun e!3749742 () (Set Context!10960))

(declare-fun call!512026 () (Set Context!10960))

(declare-fun call!512028 () (Set Context!10960))

(assert (=> b!6154009 (= e!3749742 (set.union call!512026 call!512028))))

(declare-fun b!6154010 () Bool)

(declare-fun c!1107821 () Bool)

(assert (=> b!6154010 (= c!1107821 (is-Star!16096 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun e!3749745 () (Set Context!10960))

(declare-fun e!3749743 () (Set Context!10960))

(assert (=> b!6154010 (= e!3749745 e!3749743)))

(declare-fun b!6154011 () Bool)

(declare-fun e!3749744 () (Set Context!10960))

(assert (=> b!6154011 (= e!3749744 e!3749742)))

(declare-fun c!1107820 () Bool)

(assert (=> b!6154011 (= c!1107820 (is-Union!16096 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun b!6154012 () Bool)

(declare-fun e!3749741 () (Set Context!10960))

(assert (=> b!6154012 (= e!3749741 e!3749745)))

(declare-fun c!1107822 () Bool)

(assert (=> b!6154012 (= c!1107822 (is-Concat!24941 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun b!6154013 () Bool)

(assert (=> b!6154013 (= e!3749743 (as set.empty (Set Context!10960)))))

(declare-fun bm!512023 () Bool)

(declare-fun c!1107823 () Bool)

(assert (=> bm!512023 (= call!512028 (derivationStepZipperDown!1344 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343))))))) (ite (or c!1107820 c!1107823) lt!2334763 (Context!10961 call!512027)) (h!70912 s!2326)))))

(declare-fun b!6154014 () Bool)

(declare-fun e!3749740 () Bool)

(assert (=> b!6154014 (= c!1107823 e!3749740)))

(declare-fun res!2548923 () Bool)

(assert (=> b!6154014 (=> (not res!2548923) (not e!3749740))))

(assert (=> b!6154014 (= res!2548923 (is-Concat!24941 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(assert (=> b!6154014 (= e!3749742 e!3749741)))

(declare-fun b!6154015 () Bool)

(declare-fun call!512029 () (Set Context!10960))

(assert (=> b!6154015 (= e!3749743 call!512029)))

(declare-fun b!6154016 () Bool)

(assert (=> b!6154016 (= e!3749744 (set.insert lt!2334763 (as set.empty (Set Context!10960))))))

(declare-fun bm!512024 () Bool)

(declare-fun call!512031 () (Set Context!10960))

(assert (=> bm!512024 (= call!512029 call!512031)))

(declare-fun b!6154017 () Bool)

(assert (=> b!6154017 (= e!3749741 (set.union call!512026 call!512031))))

(declare-fun bm!512022 () Bool)

(declare-fun $colon$colon!1973 (List!64587 Regex!16096) List!64587)

(assert (=> bm!512022 (= call!512030 ($colon$colon!1973 (exprs!5980 lt!2334763) (ite (or c!1107823 c!1107822) (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (h!70911 (exprs!5980 (h!70913 zl!343))))))))

(declare-fun d!1928234 () Bool)

(declare-fun c!1107819 () Bool)

(assert (=> d!1928234 (= c!1107819 (and (is-ElementMatch!16096 (h!70911 (exprs!5980 (h!70913 zl!343)))) (= (c!1107723 (h!70911 (exprs!5980 (h!70913 zl!343)))) (h!70912 s!2326))))))

(assert (=> d!1928234 (= (derivationStepZipperDown!1344 (h!70911 (exprs!5980 (h!70913 zl!343))) lt!2334763 (h!70912 s!2326)) e!3749744)))

(declare-fun bm!512025 () Bool)

(assert (=> bm!512025 (= call!512031 call!512028)))

(declare-fun bm!512026 () Bool)

(assert (=> bm!512026 (= call!512026 (derivationStepZipperDown!1344 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343))))) (ite c!1107820 lt!2334763 (Context!10961 call!512030)) (h!70912 s!2326)))))

(declare-fun b!6154018 () Bool)

(assert (=> b!6154018 (= e!3749745 call!512029)))

(declare-fun b!6154019 () Bool)

(assert (=> b!6154019 (= e!3749740 (nullable!6089 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343))))))))

(assert (= (and d!1928234 c!1107819) b!6154016))

(assert (= (and d!1928234 (not c!1107819)) b!6154011))

(assert (= (and b!6154011 c!1107820) b!6154009))

(assert (= (and b!6154011 (not c!1107820)) b!6154014))

(assert (= (and b!6154014 res!2548923) b!6154019))

(assert (= (and b!6154014 c!1107823) b!6154017))

(assert (= (and b!6154014 (not c!1107823)) b!6154012))

(assert (= (and b!6154012 c!1107822) b!6154018))

(assert (= (and b!6154012 (not c!1107822)) b!6154010))

(assert (= (and b!6154010 c!1107821) b!6154015))

(assert (= (and b!6154010 (not c!1107821)) b!6154013))

(assert (= (or b!6154018 b!6154015) bm!512021))

(assert (= (or b!6154018 b!6154015) bm!512024))

(assert (= (or b!6154017 bm!512021) bm!512022))

(assert (= (or b!6154017 bm!512024) bm!512025))

(assert (= (or b!6154009 bm!512025) bm!512023))

(assert (= (or b!6154009 b!6154017) bm!512026))

(declare-fun m!6993138 () Bool)

(assert (=> bm!512023 m!6993138))

(declare-fun m!6993140 () Bool)

(assert (=> bm!512022 m!6993140))

(declare-fun m!6993142 () Bool)

(assert (=> b!6154016 m!6993142))

(declare-fun m!6993144 () Bool)

(assert (=> bm!512026 m!6993144))

(declare-fun m!6993146 () Bool)

(assert (=> b!6154019 m!6993146))

(assert (=> b!6153643 d!1928234))

(declare-fun call!512032 () (Set Context!10960))

(declare-fun e!3749746 () (Set Context!10960))

(declare-fun b!6154020 () Bool)

(assert (=> b!6154020 (= e!3749746 (set.union call!512032 (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343)))) (h!70912 s!2326))))))

(declare-fun bm!512027 () Bool)

(assert (=> bm!512027 (= call!512032 (derivationStepZipperDown!1344 (h!70911 (exprs!5980 (h!70913 zl!343))) (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343)))) (h!70912 s!2326)))))

(declare-fun b!6154021 () Bool)

(declare-fun e!3749747 () (Set Context!10960))

(assert (=> b!6154021 (= e!3749746 e!3749747)))

(declare-fun c!1107825 () Bool)

(assert (=> b!6154021 (= c!1107825 (is-Cons!64463 (exprs!5980 (h!70913 zl!343))))))

(declare-fun b!6154022 () Bool)

(declare-fun e!3749748 () Bool)

(assert (=> b!6154022 (= e!3749748 (nullable!6089 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun d!1928236 () Bool)

(declare-fun c!1107824 () Bool)

(assert (=> d!1928236 (= c!1107824 e!3749748)))

(declare-fun res!2548924 () Bool)

(assert (=> d!1928236 (=> (not res!2548924) (not e!3749748))))

(assert (=> d!1928236 (= res!2548924 (is-Cons!64463 (exprs!5980 (h!70913 zl!343))))))

(assert (=> d!1928236 (= (derivationStepZipperUp!1270 (h!70913 zl!343) (h!70912 s!2326)) e!3749746)))

(declare-fun b!6154023 () Bool)

(assert (=> b!6154023 (= e!3749747 (as set.empty (Set Context!10960)))))

(declare-fun b!6154024 () Bool)

(assert (=> b!6154024 (= e!3749747 call!512032)))

(assert (= (and d!1928236 res!2548924) b!6154022))

(assert (= (and d!1928236 c!1107824) b!6154020))

(assert (= (and d!1928236 (not c!1107824)) b!6154021))

(assert (= (and b!6154021 c!1107825) b!6154024))

(assert (= (and b!6154021 (not c!1107825)) b!6154023))

(assert (= (or b!6154020 b!6154024) bm!512027))

(declare-fun m!6993148 () Bool)

(assert (=> b!6154020 m!6993148))

(declare-fun m!6993150 () Bool)

(assert (=> bm!512027 m!6993150))

(assert (=> b!6154022 m!6992780))

(assert (=> b!6153643 d!1928236))

(declare-fun d!1928238 () Bool)

(declare-fun c!1107826 () Bool)

(assert (=> d!1928238 (= c!1107826 (isEmpty!36430 s!2326))))

(declare-fun e!3749749 () Bool)

(assert (=> d!1928238 (= (matchZipper!2108 lt!2334764 s!2326) e!3749749)))

(declare-fun b!6154025 () Bool)

(assert (=> b!6154025 (= e!3749749 (nullableZipper!1877 lt!2334764))))

(declare-fun b!6154026 () Bool)

(assert (=> b!6154026 (= e!3749749 (matchZipper!2108 (derivationStepZipper!2069 lt!2334764 (head!12713 s!2326)) (tail!11798 s!2326)))))

(assert (= (and d!1928238 c!1107826) b!6154025))

(assert (= (and d!1928238 (not c!1107826)) b!6154026))

(assert (=> d!1928238 m!6993044))

(declare-fun m!6993152 () Bool)

(assert (=> b!6154025 m!6993152))

(assert (=> b!6154026 m!6993052))

(assert (=> b!6154026 m!6993052))

(declare-fun m!6993154 () Bool)

(assert (=> b!6154026 m!6993154))

(assert (=> b!6154026 m!6993046))

(assert (=> b!6154026 m!6993154))

(assert (=> b!6154026 m!6993046))

(declare-fun m!6993156 () Bool)

(assert (=> b!6154026 m!6993156))

(assert (=> b!6153644 d!1928238))

(declare-fun d!1928240 () Bool)

(declare-fun c!1107827 () Bool)

(assert (=> d!1928240 (= c!1107827 (isEmpty!36430 (t!378079 s!2326)))))

(declare-fun e!3749750 () Bool)

(assert (=> d!1928240 (= (matchZipper!2108 lt!2334757 (t!378079 s!2326)) e!3749750)))

(declare-fun b!6154027 () Bool)

(assert (=> b!6154027 (= e!3749750 (nullableZipper!1877 lt!2334757))))

(declare-fun b!6154028 () Bool)

(assert (=> b!6154028 (= e!3749750 (matchZipper!2108 (derivationStepZipper!2069 lt!2334757 (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))))))

(assert (= (and d!1928240 c!1107827) b!6154027))

(assert (= (and d!1928240 (not c!1107827)) b!6154028))

(assert (=> d!1928240 m!6992952))

(declare-fun m!6993158 () Bool)

(assert (=> b!6154027 m!6993158))

(assert (=> b!6154028 m!6992956))

(assert (=> b!6154028 m!6992956))

(declare-fun m!6993160 () Bool)

(assert (=> b!6154028 m!6993160))

(assert (=> b!6154028 m!6992960))

(assert (=> b!6154028 m!6993160))

(assert (=> b!6154028 m!6992960))

(declare-fun m!6993162 () Bool)

(assert (=> b!6154028 m!6993162))

(assert (=> b!6153644 d!1928240))

(declare-fun b!6154047 () Bool)

(declare-fun res!2548937 () Bool)

(declare-fun e!3749765 () Bool)

(assert (=> b!6154047 (=> (not res!2548937) (not e!3749765))))

(declare-fun lt!2334900 () Option!15987)

(declare-fun get!22246 (Option!15987) tuple2!66150)

(assert (=> b!6154047 (= res!2548937 (matchR!8279 (regTwo!32704 r!7292) (_2!36378 (get!22246 lt!2334900))))))

(declare-fun d!1928242 () Bool)

(declare-fun e!3749762 () Bool)

(assert (=> d!1928242 e!3749762))

(declare-fun res!2548939 () Bool)

(assert (=> d!1928242 (=> res!2548939 e!3749762)))

(assert (=> d!1928242 (= res!2548939 e!3749765)))

(declare-fun res!2548938 () Bool)

(assert (=> d!1928242 (=> (not res!2548938) (not e!3749765))))

(assert (=> d!1928242 (= res!2548938 (isDefined!12690 lt!2334900))))

(declare-fun e!3749761 () Option!15987)

(assert (=> d!1928242 (= lt!2334900 e!3749761)))

(declare-fun c!1107832 () Bool)

(declare-fun e!3749764 () Bool)

(assert (=> d!1928242 (= c!1107832 e!3749764)))

(declare-fun res!2548936 () Bool)

(assert (=> d!1928242 (=> (not res!2548936) (not e!3749764))))

(assert (=> d!1928242 (= res!2548936 (matchR!8279 (regOne!32704 r!7292) Nil!64464))))

(assert (=> d!1928242 (validRegex!7832 (regOne!32704 r!7292))))

(assert (=> d!1928242 (= (findConcatSeparation!2401 (regOne!32704 r!7292) (regTwo!32704 r!7292) Nil!64464 s!2326 s!2326) lt!2334900)))

(declare-fun b!6154048 () Bool)

(declare-fun lt!2334899 () Unit!157555)

(declare-fun lt!2334898 () Unit!157555)

(assert (=> b!6154048 (= lt!2334899 lt!2334898)))

(declare-fun ++!14182 (List!64588 List!64588) List!64588)

(assert (=> b!6154048 (= (++!14182 (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464)) (t!378079 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2277 (List!64588 C!32462 List!64588 List!64588) Unit!157555)

(assert (=> b!6154048 (= lt!2334898 (lemmaMoveElementToOtherListKeepsConcatEq!2277 Nil!64464 (h!70912 s!2326) (t!378079 s!2326) s!2326))))

(declare-fun e!3749763 () Option!15987)

(assert (=> b!6154048 (= e!3749763 (findConcatSeparation!2401 (regOne!32704 r!7292) (regTwo!32704 r!7292) (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464)) (t!378079 s!2326) s!2326))))

(declare-fun b!6154049 () Bool)

(assert (=> b!6154049 (= e!3749765 (= (++!14182 (_1!36378 (get!22246 lt!2334900)) (_2!36378 (get!22246 lt!2334900))) s!2326))))

(declare-fun b!6154050 () Bool)

(assert (=> b!6154050 (= e!3749761 e!3749763)))

(declare-fun c!1107833 () Bool)

(assert (=> b!6154050 (= c!1107833 (is-Nil!64464 s!2326))))

(declare-fun b!6154051 () Bool)

(declare-fun res!2548935 () Bool)

(assert (=> b!6154051 (=> (not res!2548935) (not e!3749765))))

(assert (=> b!6154051 (= res!2548935 (matchR!8279 (regOne!32704 r!7292) (_1!36378 (get!22246 lt!2334900))))))

(declare-fun b!6154052 () Bool)

(assert (=> b!6154052 (= e!3749764 (matchR!8279 (regTwo!32704 r!7292) s!2326))))

(declare-fun b!6154053 () Bool)

(assert (=> b!6154053 (= e!3749761 (Some!15986 (tuple2!66151 Nil!64464 s!2326)))))

(declare-fun b!6154054 () Bool)

(assert (=> b!6154054 (= e!3749762 (not (isDefined!12690 lt!2334900)))))

(declare-fun b!6154055 () Bool)

(assert (=> b!6154055 (= e!3749763 None!15986)))

(assert (= (and d!1928242 res!2548936) b!6154052))

(assert (= (and d!1928242 c!1107832) b!6154053))

(assert (= (and d!1928242 (not c!1107832)) b!6154050))

(assert (= (and b!6154050 c!1107833) b!6154055))

(assert (= (and b!6154050 (not c!1107833)) b!6154048))

(assert (= (and d!1928242 res!2548938) b!6154051))

(assert (= (and b!6154051 res!2548935) b!6154047))

(assert (= (and b!6154047 res!2548937) b!6154049))

(assert (= (and d!1928242 (not res!2548939)) b!6154054))

(declare-fun m!6993164 () Bool)

(assert (=> b!6154051 m!6993164))

(declare-fun m!6993166 () Bool)

(assert (=> b!6154051 m!6993166))

(assert (=> b!6154049 m!6993164))

(declare-fun m!6993168 () Bool)

(assert (=> b!6154049 m!6993168))

(declare-fun m!6993170 () Bool)

(assert (=> d!1928242 m!6993170))

(declare-fun m!6993172 () Bool)

(assert (=> d!1928242 m!6993172))

(declare-fun m!6993174 () Bool)

(assert (=> d!1928242 m!6993174))

(assert (=> b!6154054 m!6993170))

(declare-fun m!6993176 () Bool)

(assert (=> b!6154048 m!6993176))

(assert (=> b!6154048 m!6993176))

(declare-fun m!6993178 () Bool)

(assert (=> b!6154048 m!6993178))

(declare-fun m!6993180 () Bool)

(assert (=> b!6154048 m!6993180))

(assert (=> b!6154048 m!6993176))

(declare-fun m!6993182 () Bool)

(assert (=> b!6154048 m!6993182))

(assert (=> b!6154047 m!6993164))

(declare-fun m!6993184 () Bool)

(assert (=> b!6154047 m!6993184))

(declare-fun m!6993186 () Bool)

(assert (=> b!6154052 m!6993186))

(assert (=> b!6153633 d!1928242))

(declare-fun d!1928244 () Bool)

(declare-fun choose!45745 (Int) Bool)

(assert (=> d!1928244 (= (Exists!3166 lambda!335640) (choose!45745 lambda!335640))))

(declare-fun bs!1525415 () Bool)

(assert (= bs!1525415 d!1928244))

(declare-fun m!6993188 () Bool)

(assert (=> bs!1525415 m!6993188))

(assert (=> b!6153633 d!1928244))

(declare-fun bs!1525416 () Bool)

(declare-fun d!1928246 () Bool)

(assert (= bs!1525416 (and d!1928246 b!6153633)))

(declare-fun lambda!335685 () Int)

(assert (=> bs!1525416 (= lambda!335685 lambda!335640)))

(assert (=> bs!1525416 (not (= lambda!335685 lambda!335641))))

(declare-fun bs!1525417 () Bool)

(assert (= bs!1525417 (and d!1928246 b!6153879)))

(assert (=> bs!1525417 (not (= lambda!335685 lambda!335672))))

(declare-fun bs!1525418 () Bool)

(assert (= bs!1525418 (and d!1928246 b!6153881)))

(assert (=> bs!1525418 (not (= lambda!335685 lambda!335673))))

(assert (=> d!1928246 true))

(assert (=> d!1928246 true))

(assert (=> d!1928246 true))

(declare-fun lambda!335686 () Int)

(assert (=> bs!1525416 (not (= lambda!335686 lambda!335640))))

(assert (=> bs!1525417 (not (= lambda!335686 lambda!335672))))

(assert (=> bs!1525418 (= lambda!335686 lambda!335673)))

(assert (=> bs!1525416 (= lambda!335686 lambda!335641)))

(declare-fun bs!1525419 () Bool)

(assert (= bs!1525419 d!1928246))

(assert (=> bs!1525419 (not (= lambda!335686 lambda!335685))))

(assert (=> d!1928246 true))

(assert (=> d!1928246 true))

(assert (=> d!1928246 true))

(assert (=> d!1928246 (= (Exists!3166 lambda!335685) (Exists!3166 lambda!335686))))

(declare-fun lt!2334903 () Unit!157555)

(declare-fun choose!45746 (Regex!16096 Regex!16096 List!64588) Unit!157555)

(assert (=> d!1928246 (= lt!2334903 (choose!45746 (regOne!32704 r!7292) (regTwo!32704 r!7292) s!2326))))

(assert (=> d!1928246 (validRegex!7832 (regOne!32704 r!7292))))

(assert (=> d!1928246 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1703 (regOne!32704 r!7292) (regTwo!32704 r!7292) s!2326) lt!2334903)))

(declare-fun m!6993190 () Bool)

(assert (=> bs!1525419 m!6993190))

(declare-fun m!6993192 () Bool)

(assert (=> bs!1525419 m!6993192))

(declare-fun m!6993194 () Bool)

(assert (=> bs!1525419 m!6993194))

(assert (=> bs!1525419 m!6993174))

(assert (=> b!6153633 d!1928246))

(declare-fun d!1928248 () Bool)

(declare-fun isEmpty!36431 (Option!15987) Bool)

(assert (=> d!1928248 (= (isDefined!12690 (findConcatSeparation!2401 (regOne!32704 r!7292) (regTwo!32704 r!7292) Nil!64464 s!2326 s!2326)) (not (isEmpty!36431 (findConcatSeparation!2401 (regOne!32704 r!7292) (regTwo!32704 r!7292) Nil!64464 s!2326 s!2326))))))

(declare-fun bs!1525420 () Bool)

(assert (= bs!1525420 d!1928248))

(assert (=> bs!1525420 m!6992748))

(declare-fun m!6993196 () Bool)

(assert (=> bs!1525420 m!6993196))

(assert (=> b!6153633 d!1928248))

(declare-fun d!1928250 () Bool)

(assert (=> d!1928250 (= (Exists!3166 lambda!335641) (choose!45745 lambda!335641))))

(declare-fun bs!1525421 () Bool)

(assert (= bs!1525421 d!1928250))

(declare-fun m!6993198 () Bool)

(assert (=> bs!1525421 m!6993198))

(assert (=> b!6153633 d!1928250))

(declare-fun bs!1525422 () Bool)

(declare-fun d!1928252 () Bool)

(assert (= bs!1525422 (and d!1928252 b!6153633)))

(declare-fun lambda!335689 () Int)

(assert (=> bs!1525422 (= lambda!335689 lambda!335640)))

(declare-fun bs!1525423 () Bool)

(assert (= bs!1525423 (and d!1928252 b!6153879)))

(assert (=> bs!1525423 (not (= lambda!335689 lambda!335672))))

(declare-fun bs!1525424 () Bool)

(assert (= bs!1525424 (and d!1928252 b!6153881)))

(assert (=> bs!1525424 (not (= lambda!335689 lambda!335673))))

(declare-fun bs!1525425 () Bool)

(assert (= bs!1525425 (and d!1928252 d!1928246)))

(assert (=> bs!1525425 (not (= lambda!335689 lambda!335686))))

(assert (=> bs!1525422 (not (= lambda!335689 lambda!335641))))

(assert (=> bs!1525425 (= lambda!335689 lambda!335685)))

(assert (=> d!1928252 true))

(assert (=> d!1928252 true))

(assert (=> d!1928252 true))

(assert (=> d!1928252 (= (isDefined!12690 (findConcatSeparation!2401 (regOne!32704 r!7292) (regTwo!32704 r!7292) Nil!64464 s!2326 s!2326)) (Exists!3166 lambda!335689))))

(declare-fun lt!2334906 () Unit!157555)

(declare-fun choose!45747 (Regex!16096 Regex!16096 List!64588) Unit!157555)

(assert (=> d!1928252 (= lt!2334906 (choose!45747 (regOne!32704 r!7292) (regTwo!32704 r!7292) s!2326))))

(assert (=> d!1928252 (validRegex!7832 (regOne!32704 r!7292))))

(assert (=> d!1928252 (= (lemmaFindConcatSeparationEquivalentToExists!2165 (regOne!32704 r!7292) (regTwo!32704 r!7292) s!2326) lt!2334906)))

(declare-fun bs!1525426 () Bool)

(assert (= bs!1525426 d!1928252))

(assert (=> bs!1525426 m!6992748))

(assert (=> bs!1525426 m!6993174))

(declare-fun m!6993200 () Bool)

(assert (=> bs!1525426 m!6993200))

(assert (=> bs!1525426 m!6992748))

(assert (=> bs!1525426 m!6992750))

(declare-fun m!6993202 () Bool)

(assert (=> bs!1525426 m!6993202))

(assert (=> b!6153633 d!1928252))

(declare-fun b!6154086 () Bool)

(declare-fun e!3749786 () Bool)

(declare-fun e!3749788 () Bool)

(assert (=> b!6154086 (= e!3749786 e!3749788)))

(declare-fun res!2548962 () Bool)

(assert (=> b!6154086 (=> (not res!2548962) (not e!3749788))))

(declare-fun call!512040 () Bool)

(assert (=> b!6154086 (= res!2548962 call!512040)))

(declare-fun b!6154087 () Bool)

(declare-fun e!3749791 () Bool)

(declare-fun e!3749789 () Bool)

(assert (=> b!6154087 (= e!3749791 e!3749789)))

(declare-fun c!1107838 () Bool)

(assert (=> b!6154087 (= c!1107838 (is-Star!16096 r!7292))))

(declare-fun b!6154088 () Bool)

(declare-fun e!3749787 () Bool)

(declare-fun call!512039 () Bool)

(assert (=> b!6154088 (= e!3749787 call!512039)))

(declare-fun bm!512035 () Bool)

(declare-fun call!512041 () Bool)

(assert (=> bm!512035 (= call!512041 call!512039)))

(declare-fun bm!512036 () Bool)

(declare-fun c!1107839 () Bool)

(assert (=> bm!512036 (= call!512040 (validRegex!7832 (ite c!1107839 (regOne!32705 r!7292) (regOne!32704 r!7292))))))

(declare-fun b!6154089 () Bool)

(declare-fun e!3749790 () Bool)

(assert (=> b!6154089 (= e!3749789 e!3749790)))

(assert (=> b!6154089 (= c!1107839 (is-Union!16096 r!7292))))

(declare-fun b!6154090 () Bool)

(declare-fun e!3749792 () Bool)

(assert (=> b!6154090 (= e!3749792 call!512041)))

(declare-fun b!6154091 () Bool)

(declare-fun res!2548965 () Bool)

(assert (=> b!6154091 (=> res!2548965 e!3749786)))

(assert (=> b!6154091 (= res!2548965 (not (is-Concat!24941 r!7292)))))

(assert (=> b!6154091 (= e!3749790 e!3749786)))

(declare-fun b!6154092 () Bool)

(assert (=> b!6154092 (= e!3749788 call!512041)))

(declare-fun bm!512034 () Bool)

(assert (=> bm!512034 (= call!512039 (validRegex!7832 (ite c!1107838 (reg!16425 r!7292) (ite c!1107839 (regTwo!32705 r!7292) (regTwo!32704 r!7292)))))))

(declare-fun d!1928254 () Bool)

(declare-fun res!2548964 () Bool)

(assert (=> d!1928254 (=> res!2548964 e!3749791)))

(assert (=> d!1928254 (= res!2548964 (is-ElementMatch!16096 r!7292))))

(assert (=> d!1928254 (= (validRegex!7832 r!7292) e!3749791)))

(declare-fun b!6154093 () Bool)

(declare-fun res!2548963 () Bool)

(assert (=> b!6154093 (=> (not res!2548963) (not e!3749792))))

(assert (=> b!6154093 (= res!2548963 call!512040)))

(assert (=> b!6154093 (= e!3749790 e!3749792)))

(declare-fun b!6154094 () Bool)

(assert (=> b!6154094 (= e!3749789 e!3749787)))

(declare-fun res!2548966 () Bool)

(assert (=> b!6154094 (= res!2548966 (not (nullable!6089 (reg!16425 r!7292))))))

(assert (=> b!6154094 (=> (not res!2548966) (not e!3749787))))

(assert (= (and d!1928254 (not res!2548964)) b!6154087))

(assert (= (and b!6154087 c!1107838) b!6154094))

(assert (= (and b!6154087 (not c!1107838)) b!6154089))

(assert (= (and b!6154094 res!2548966) b!6154088))

(assert (= (and b!6154089 c!1107839) b!6154093))

(assert (= (and b!6154089 (not c!1107839)) b!6154091))

(assert (= (and b!6154093 res!2548963) b!6154090))

(assert (= (and b!6154091 (not res!2548965)) b!6154086))

(assert (= (and b!6154086 res!2548962) b!6154092))

(assert (= (or b!6154090 b!6154092) bm!512035))

(assert (= (or b!6154093 b!6154086) bm!512036))

(assert (= (or b!6154088 bm!512035) bm!512034))

(declare-fun m!6993204 () Bool)

(assert (=> bm!512036 m!6993204))

(declare-fun m!6993206 () Bool)

(assert (=> bm!512034 m!6993206))

(declare-fun m!6993208 () Bool)

(assert (=> b!6154094 m!6993208))

(assert (=> start!614688 d!1928254))

(declare-fun bm!512037 () Bool)

(declare-fun call!512043 () List!64587)

(declare-fun call!512046 () List!64587)

(assert (=> bm!512037 (= call!512043 call!512046)))

(declare-fun b!6154095 () Bool)

(declare-fun e!3749795 () (Set Context!10960))

(declare-fun call!512042 () (Set Context!10960))

(declare-fun call!512044 () (Set Context!10960))

(assert (=> b!6154095 (= e!3749795 (set.union call!512042 call!512044))))

(declare-fun b!6154096 () Bool)

(declare-fun c!1107842 () Bool)

(assert (=> b!6154096 (= c!1107842 (is-Star!16096 (regTwo!32705 (regOne!32704 r!7292))))))

(declare-fun e!3749798 () (Set Context!10960))

(declare-fun e!3749796 () (Set Context!10960))

(assert (=> b!6154096 (= e!3749798 e!3749796)))

(declare-fun b!6154097 () Bool)

(declare-fun e!3749797 () (Set Context!10960))

(assert (=> b!6154097 (= e!3749797 e!3749795)))

(declare-fun c!1107841 () Bool)

(assert (=> b!6154097 (= c!1107841 (is-Union!16096 (regTwo!32705 (regOne!32704 r!7292))))))

(declare-fun b!6154098 () Bool)

(declare-fun e!3749794 () (Set Context!10960))

(assert (=> b!6154098 (= e!3749794 e!3749798)))

(declare-fun c!1107843 () Bool)

(assert (=> b!6154098 (= c!1107843 (is-Concat!24941 (regTwo!32705 (regOne!32704 r!7292))))))

(declare-fun b!6154099 () Bool)

(assert (=> b!6154099 (= e!3749796 (as set.empty (Set Context!10960)))))

(declare-fun c!1107844 () Bool)

(declare-fun bm!512039 () Bool)

(assert (=> bm!512039 (= call!512044 (derivationStepZipperDown!1344 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292)))))) (ite (or c!1107841 c!1107844) lt!2334763 (Context!10961 call!512043)) (h!70912 s!2326)))))

(declare-fun b!6154100 () Bool)

(declare-fun e!3749793 () Bool)

(assert (=> b!6154100 (= c!1107844 e!3749793)))

(declare-fun res!2548967 () Bool)

(assert (=> b!6154100 (=> (not res!2548967) (not e!3749793))))

(assert (=> b!6154100 (= res!2548967 (is-Concat!24941 (regTwo!32705 (regOne!32704 r!7292))))))

(assert (=> b!6154100 (= e!3749795 e!3749794)))

(declare-fun b!6154101 () Bool)

(declare-fun call!512045 () (Set Context!10960))

(assert (=> b!6154101 (= e!3749796 call!512045)))

(declare-fun b!6154102 () Bool)

(assert (=> b!6154102 (= e!3749797 (set.insert lt!2334763 (as set.empty (Set Context!10960))))))

(declare-fun bm!512040 () Bool)

(declare-fun call!512047 () (Set Context!10960))

(assert (=> bm!512040 (= call!512045 call!512047)))

(declare-fun b!6154103 () Bool)

(assert (=> b!6154103 (= e!3749794 (set.union call!512042 call!512047))))

(declare-fun bm!512038 () Bool)

(assert (=> bm!512038 (= call!512046 ($colon$colon!1973 (exprs!5980 lt!2334763) (ite (or c!1107844 c!1107843) (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (regTwo!32705 (regOne!32704 r!7292)))))))

(declare-fun d!1928256 () Bool)

(declare-fun c!1107840 () Bool)

(assert (=> d!1928256 (= c!1107840 (and (is-ElementMatch!16096 (regTwo!32705 (regOne!32704 r!7292))) (= (c!1107723 (regTwo!32705 (regOne!32704 r!7292))) (h!70912 s!2326))))))

(assert (=> d!1928256 (= (derivationStepZipperDown!1344 (regTwo!32705 (regOne!32704 r!7292)) lt!2334763 (h!70912 s!2326)) e!3749797)))

(declare-fun bm!512041 () Bool)

(assert (=> bm!512041 (= call!512047 call!512044)))

(declare-fun bm!512042 () Bool)

(assert (=> bm!512042 (= call!512042 (derivationStepZipperDown!1344 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292)))) (ite c!1107841 lt!2334763 (Context!10961 call!512046)) (h!70912 s!2326)))))

(declare-fun b!6154104 () Bool)

(assert (=> b!6154104 (= e!3749798 call!512045)))

(declare-fun b!6154105 () Bool)

(assert (=> b!6154105 (= e!3749793 (nullable!6089 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292)))))))

(assert (= (and d!1928256 c!1107840) b!6154102))

(assert (= (and d!1928256 (not c!1107840)) b!6154097))

(assert (= (and b!6154097 c!1107841) b!6154095))

(assert (= (and b!6154097 (not c!1107841)) b!6154100))

(assert (= (and b!6154100 res!2548967) b!6154105))

(assert (= (and b!6154100 c!1107844) b!6154103))

(assert (= (and b!6154100 (not c!1107844)) b!6154098))

(assert (= (and b!6154098 c!1107843) b!6154104))

(assert (= (and b!6154098 (not c!1107843)) b!6154096))

(assert (= (and b!6154096 c!1107842) b!6154101))

(assert (= (and b!6154096 (not c!1107842)) b!6154099))

(assert (= (or b!6154104 b!6154101) bm!512037))

(assert (= (or b!6154104 b!6154101) bm!512040))

(assert (= (or b!6154103 bm!512037) bm!512038))

(assert (= (or b!6154103 bm!512040) bm!512041))

(assert (= (or b!6154095 bm!512041) bm!512039))

(assert (= (or b!6154095 b!6154103) bm!512042))

(declare-fun m!6993210 () Bool)

(assert (=> bm!512039 m!6993210))

(declare-fun m!6993212 () Bool)

(assert (=> bm!512038 m!6993212))

(assert (=> b!6154102 m!6993142))

(declare-fun m!6993214 () Bool)

(assert (=> bm!512042 m!6993214))

(declare-fun m!6993216 () Bool)

(assert (=> b!6154105 m!6993216))

(assert (=> b!6153654 d!1928256))

(declare-fun bm!512043 () Bool)

(declare-fun call!512049 () List!64587)

(declare-fun call!512052 () List!64587)

(assert (=> bm!512043 (= call!512049 call!512052)))

(declare-fun b!6154106 () Bool)

(declare-fun e!3749801 () (Set Context!10960))

(declare-fun call!512048 () (Set Context!10960))

(declare-fun call!512050 () (Set Context!10960))

(assert (=> b!6154106 (= e!3749801 (set.union call!512048 call!512050))))

(declare-fun b!6154107 () Bool)

(declare-fun c!1107847 () Bool)

(assert (=> b!6154107 (= c!1107847 (is-Star!16096 (regOne!32705 (regOne!32704 r!7292))))))

(declare-fun e!3749804 () (Set Context!10960))

(declare-fun e!3749802 () (Set Context!10960))

(assert (=> b!6154107 (= e!3749804 e!3749802)))

(declare-fun b!6154108 () Bool)

(declare-fun e!3749803 () (Set Context!10960))

(assert (=> b!6154108 (= e!3749803 e!3749801)))

(declare-fun c!1107846 () Bool)

(assert (=> b!6154108 (= c!1107846 (is-Union!16096 (regOne!32705 (regOne!32704 r!7292))))))

(declare-fun b!6154109 () Bool)

(declare-fun e!3749800 () (Set Context!10960))

(assert (=> b!6154109 (= e!3749800 e!3749804)))

(declare-fun c!1107848 () Bool)

(assert (=> b!6154109 (= c!1107848 (is-Concat!24941 (regOne!32705 (regOne!32704 r!7292))))))

(declare-fun b!6154110 () Bool)

(assert (=> b!6154110 (= e!3749802 (as set.empty (Set Context!10960)))))

(declare-fun bm!512045 () Bool)

(declare-fun c!1107849 () Bool)

(assert (=> bm!512045 (= call!512050 (derivationStepZipperDown!1344 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292)))))) (ite (or c!1107846 c!1107849) lt!2334763 (Context!10961 call!512049)) (h!70912 s!2326)))))

(declare-fun b!6154111 () Bool)

(declare-fun e!3749799 () Bool)

(assert (=> b!6154111 (= c!1107849 e!3749799)))

(declare-fun res!2548968 () Bool)

(assert (=> b!6154111 (=> (not res!2548968) (not e!3749799))))

(assert (=> b!6154111 (= res!2548968 (is-Concat!24941 (regOne!32705 (regOne!32704 r!7292))))))

(assert (=> b!6154111 (= e!3749801 e!3749800)))

(declare-fun b!6154112 () Bool)

(declare-fun call!512051 () (Set Context!10960))

(assert (=> b!6154112 (= e!3749802 call!512051)))

(declare-fun b!6154113 () Bool)

(assert (=> b!6154113 (= e!3749803 (set.insert lt!2334763 (as set.empty (Set Context!10960))))))

(declare-fun bm!512046 () Bool)

(declare-fun call!512053 () (Set Context!10960))

(assert (=> bm!512046 (= call!512051 call!512053)))

(declare-fun b!6154114 () Bool)

(assert (=> b!6154114 (= e!3749800 (set.union call!512048 call!512053))))

(declare-fun bm!512044 () Bool)

(assert (=> bm!512044 (= call!512052 ($colon$colon!1973 (exprs!5980 lt!2334763) (ite (or c!1107849 c!1107848) (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (regOne!32705 (regOne!32704 r!7292)))))))

(declare-fun d!1928258 () Bool)

(declare-fun c!1107845 () Bool)

(assert (=> d!1928258 (= c!1107845 (and (is-ElementMatch!16096 (regOne!32705 (regOne!32704 r!7292))) (= (c!1107723 (regOne!32705 (regOne!32704 r!7292))) (h!70912 s!2326))))))

(assert (=> d!1928258 (= (derivationStepZipperDown!1344 (regOne!32705 (regOne!32704 r!7292)) lt!2334763 (h!70912 s!2326)) e!3749803)))

(declare-fun bm!512047 () Bool)

(assert (=> bm!512047 (= call!512053 call!512050)))

(declare-fun bm!512048 () Bool)

(assert (=> bm!512048 (= call!512048 (derivationStepZipperDown!1344 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292)))) (ite c!1107846 lt!2334763 (Context!10961 call!512052)) (h!70912 s!2326)))))

(declare-fun b!6154115 () Bool)

(assert (=> b!6154115 (= e!3749804 call!512051)))

(declare-fun b!6154116 () Bool)

(assert (=> b!6154116 (= e!3749799 (nullable!6089 (regOne!32704 (regOne!32705 (regOne!32704 r!7292)))))))

(assert (= (and d!1928258 c!1107845) b!6154113))

(assert (= (and d!1928258 (not c!1107845)) b!6154108))

(assert (= (and b!6154108 c!1107846) b!6154106))

(assert (= (and b!6154108 (not c!1107846)) b!6154111))

(assert (= (and b!6154111 res!2548968) b!6154116))

(assert (= (and b!6154111 c!1107849) b!6154114))

(assert (= (and b!6154111 (not c!1107849)) b!6154109))

(assert (= (and b!6154109 c!1107848) b!6154115))

(assert (= (and b!6154109 (not c!1107848)) b!6154107))

(assert (= (and b!6154107 c!1107847) b!6154112))

(assert (= (and b!6154107 (not c!1107847)) b!6154110))

(assert (= (or b!6154115 b!6154112) bm!512043))

(assert (= (or b!6154115 b!6154112) bm!512046))

(assert (= (or b!6154114 bm!512043) bm!512044))

(assert (= (or b!6154114 bm!512046) bm!512047))

(assert (= (or b!6154106 bm!512047) bm!512045))

(assert (= (or b!6154106 b!6154114) bm!512048))

(declare-fun m!6993218 () Bool)

(assert (=> bm!512045 m!6993218))

(declare-fun m!6993220 () Bool)

(assert (=> bm!512044 m!6993220))

(assert (=> b!6154113 m!6993142))

(declare-fun m!6993222 () Bool)

(assert (=> bm!512048 m!6993222))

(declare-fun m!6993224 () Bool)

(assert (=> b!6154116 m!6993224))

(assert (=> b!6153654 d!1928258))

(declare-fun b!6154127 () Bool)

(declare-fun e!3749807 () Bool)

(assert (=> b!6154127 (= e!3749807 tp_is_empty!41445)))

(declare-fun b!6154128 () Bool)

(declare-fun tp!1718761 () Bool)

(declare-fun tp!1718759 () Bool)

(assert (=> b!6154128 (= e!3749807 (and tp!1718761 tp!1718759))))

(assert (=> b!6153624 (= tp!1718708 e!3749807)))

(declare-fun b!6154129 () Bool)

(declare-fun tp!1718757 () Bool)

(assert (=> b!6154129 (= e!3749807 tp!1718757)))

(declare-fun b!6154130 () Bool)

(declare-fun tp!1718760 () Bool)

(declare-fun tp!1718758 () Bool)

(assert (=> b!6154130 (= e!3749807 (and tp!1718760 tp!1718758))))

(assert (= (and b!6153624 (is-ElementMatch!16096 (reg!16425 r!7292))) b!6154127))

(assert (= (and b!6153624 (is-Concat!24941 (reg!16425 r!7292))) b!6154128))

(assert (= (and b!6153624 (is-Star!16096 (reg!16425 r!7292))) b!6154129))

(assert (= (and b!6153624 (is-Union!16096 (reg!16425 r!7292))) b!6154130))

(declare-fun b!6154131 () Bool)

(declare-fun e!3749808 () Bool)

(assert (=> b!6154131 (= e!3749808 tp_is_empty!41445)))

(declare-fun b!6154132 () Bool)

(declare-fun tp!1718766 () Bool)

(declare-fun tp!1718764 () Bool)

(assert (=> b!6154132 (= e!3749808 (and tp!1718766 tp!1718764))))

(assert (=> b!6153629 (= tp!1718707 e!3749808)))

(declare-fun b!6154133 () Bool)

(declare-fun tp!1718762 () Bool)

(assert (=> b!6154133 (= e!3749808 tp!1718762)))

(declare-fun b!6154134 () Bool)

(declare-fun tp!1718765 () Bool)

(declare-fun tp!1718763 () Bool)

(assert (=> b!6154134 (= e!3749808 (and tp!1718765 tp!1718763))))

(assert (= (and b!6153629 (is-ElementMatch!16096 (regOne!32705 r!7292))) b!6154131))

(assert (= (and b!6153629 (is-Concat!24941 (regOne!32705 r!7292))) b!6154132))

(assert (= (and b!6153629 (is-Star!16096 (regOne!32705 r!7292))) b!6154133))

(assert (= (and b!6153629 (is-Union!16096 (regOne!32705 r!7292))) b!6154134))

(declare-fun b!6154135 () Bool)

(declare-fun e!3749809 () Bool)

(assert (=> b!6154135 (= e!3749809 tp_is_empty!41445)))

(declare-fun b!6154136 () Bool)

(declare-fun tp!1718771 () Bool)

(declare-fun tp!1718769 () Bool)

(assert (=> b!6154136 (= e!3749809 (and tp!1718771 tp!1718769))))

(assert (=> b!6153629 (= tp!1718713 e!3749809)))

(declare-fun b!6154137 () Bool)

(declare-fun tp!1718767 () Bool)

(assert (=> b!6154137 (= e!3749809 tp!1718767)))

(declare-fun b!6154138 () Bool)

(declare-fun tp!1718770 () Bool)

(declare-fun tp!1718768 () Bool)

(assert (=> b!6154138 (= e!3749809 (and tp!1718770 tp!1718768))))

(assert (= (and b!6153629 (is-ElementMatch!16096 (regTwo!32705 r!7292))) b!6154135))

(assert (= (and b!6153629 (is-Concat!24941 (regTwo!32705 r!7292))) b!6154136))

(assert (= (and b!6153629 (is-Star!16096 (regTwo!32705 r!7292))) b!6154137))

(assert (= (and b!6153629 (is-Union!16096 (regTwo!32705 r!7292))) b!6154138))

(declare-fun b!6154143 () Bool)

(declare-fun e!3749812 () Bool)

(declare-fun tp!1718776 () Bool)

(declare-fun tp!1718777 () Bool)

(assert (=> b!6154143 (= e!3749812 (and tp!1718776 tp!1718777))))

(assert (=> b!6153626 (= tp!1718710 e!3749812)))

(assert (= (and b!6153626 (is-Cons!64463 (exprs!5980 setElem!41673))) b!6154143))

(declare-fun condSetEmpty!41679 () Bool)

(assert (=> setNonEmpty!41673 (= condSetEmpty!41679 (= setRest!41673 (as set.empty (Set Context!10960))))))

(declare-fun setRes!41679 () Bool)

(assert (=> setNonEmpty!41673 (= tp!1718715 setRes!41679)))

(declare-fun setIsEmpty!41679 () Bool)

(assert (=> setIsEmpty!41679 setRes!41679))

(declare-fun setElem!41679 () Context!10960)

(declare-fun e!3749815 () Bool)

(declare-fun setNonEmpty!41679 () Bool)

(declare-fun tp!1718782 () Bool)

(assert (=> setNonEmpty!41679 (= setRes!41679 (and tp!1718782 (inv!83488 setElem!41679) e!3749815))))

(declare-fun setRest!41679 () (Set Context!10960))

(assert (=> setNonEmpty!41679 (= setRest!41673 (set.union (set.insert setElem!41679 (as set.empty (Set Context!10960))) setRest!41679))))

(declare-fun b!6154148 () Bool)

(declare-fun tp!1718783 () Bool)

(assert (=> b!6154148 (= e!3749815 tp!1718783)))

(assert (= (and setNonEmpty!41673 condSetEmpty!41679) setIsEmpty!41679))

(assert (= (and setNonEmpty!41673 (not condSetEmpty!41679)) setNonEmpty!41679))

(assert (= setNonEmpty!41679 b!6154148))

(declare-fun m!6993226 () Bool)

(assert (=> setNonEmpty!41679 m!6993226))

(declare-fun b!6154153 () Bool)

(declare-fun e!3749818 () Bool)

(declare-fun tp!1718786 () Bool)

(assert (=> b!6154153 (= e!3749818 (and tp_is_empty!41445 tp!1718786))))

(assert (=> b!6153652 (= tp!1718711 e!3749818)))

(assert (= (and b!6153652 (is-Cons!64464 (t!378079 s!2326))) b!6154153))

(declare-fun b!6154154 () Bool)

(declare-fun e!3749819 () Bool)

(declare-fun tp!1718787 () Bool)

(declare-fun tp!1718788 () Bool)

(assert (=> b!6154154 (= e!3749819 (and tp!1718787 tp!1718788))))

(assert (=> b!6153627 (= tp!1718714 e!3749819)))

(assert (= (and b!6153627 (is-Cons!64463 (exprs!5980 (h!70913 zl!343)))) b!6154154))

(declare-fun b!6154162 () Bool)

(declare-fun e!3749825 () Bool)

(declare-fun tp!1718793 () Bool)

(assert (=> b!6154162 (= e!3749825 tp!1718793)))

(declare-fun b!6154161 () Bool)

(declare-fun e!3749824 () Bool)

(declare-fun tp!1718794 () Bool)

(assert (=> b!6154161 (= e!3749824 (and (inv!83488 (h!70913 (t!378080 zl!343))) e!3749825 tp!1718794))))

(assert (=> b!6153628 (= tp!1718716 e!3749824)))

(assert (= b!6154161 b!6154162))

(assert (= (and b!6153628 (is-Cons!64465 (t!378080 zl!343))) b!6154161))

(declare-fun m!6993228 () Bool)

(assert (=> b!6154161 m!6993228))

(declare-fun b!6154163 () Bool)

(declare-fun e!3749826 () Bool)

(assert (=> b!6154163 (= e!3749826 tp_is_empty!41445)))

(declare-fun b!6154164 () Bool)

(declare-fun tp!1718799 () Bool)

(declare-fun tp!1718797 () Bool)

(assert (=> b!6154164 (= e!3749826 (and tp!1718799 tp!1718797))))

(assert (=> b!6153634 (= tp!1718712 e!3749826)))

(declare-fun b!6154165 () Bool)

(declare-fun tp!1718795 () Bool)

(assert (=> b!6154165 (= e!3749826 tp!1718795)))

(declare-fun b!6154166 () Bool)

(declare-fun tp!1718798 () Bool)

(declare-fun tp!1718796 () Bool)

(assert (=> b!6154166 (= e!3749826 (and tp!1718798 tp!1718796))))

(assert (= (and b!6153634 (is-ElementMatch!16096 (regOne!32704 r!7292))) b!6154163))

(assert (= (and b!6153634 (is-Concat!24941 (regOne!32704 r!7292))) b!6154164))

(assert (= (and b!6153634 (is-Star!16096 (regOne!32704 r!7292))) b!6154165))

(assert (= (and b!6153634 (is-Union!16096 (regOne!32704 r!7292))) b!6154166))

(declare-fun b!6154167 () Bool)

(declare-fun e!3749827 () Bool)

(assert (=> b!6154167 (= e!3749827 tp_is_empty!41445)))

(declare-fun b!6154168 () Bool)

(declare-fun tp!1718804 () Bool)

(declare-fun tp!1718802 () Bool)

(assert (=> b!6154168 (= e!3749827 (and tp!1718804 tp!1718802))))

(assert (=> b!6153634 (= tp!1718709 e!3749827)))

(declare-fun b!6154169 () Bool)

(declare-fun tp!1718800 () Bool)

(assert (=> b!6154169 (= e!3749827 tp!1718800)))

(declare-fun b!6154170 () Bool)

(declare-fun tp!1718803 () Bool)

(declare-fun tp!1718801 () Bool)

(assert (=> b!6154170 (= e!3749827 (and tp!1718803 tp!1718801))))

(assert (= (and b!6153634 (is-ElementMatch!16096 (regTwo!32704 r!7292))) b!6154167))

(assert (= (and b!6153634 (is-Concat!24941 (regTwo!32704 r!7292))) b!6154168))

(assert (= (and b!6153634 (is-Star!16096 (regTwo!32704 r!7292))) b!6154169))

(assert (= (and b!6153634 (is-Union!16096 (regTwo!32704 r!7292))) b!6154170))

(declare-fun b_lambda!234247 () Bool)

(assert (= b_lambda!234243 (or b!6153643 b_lambda!234247)))

(declare-fun bs!1525427 () Bool)

(declare-fun d!1928260 () Bool)

(assert (= bs!1525427 (and d!1928260 b!6153643)))

(assert (=> bs!1525427 (= (dynLambda!25413 lambda!335642 lt!2334773) (derivationStepZipperUp!1270 lt!2334773 (h!70912 s!2326)))))

(assert (=> bs!1525427 m!6992814))

(assert (=> d!1928178 d!1928260))

(declare-fun b_lambda!234249 () Bool)

(assert (= b_lambda!234245 (or b!6153643 b_lambda!234249)))

(declare-fun bs!1525428 () Bool)

(declare-fun d!1928262 () Bool)

(assert (= bs!1525428 (and d!1928262 b!6153643)))

(assert (=> bs!1525428 (= (dynLambda!25413 lambda!335642 (h!70913 zl!343)) (derivationStepZipperUp!1270 (h!70913 zl!343) (h!70912 s!2326)))))

(assert (=> bs!1525428 m!6992774))

(assert (=> d!1928224 d!1928262))

(declare-fun b_lambda!234251 () Bool)

(assert (= b_lambda!234241 (or b!6153643 b_lambda!234251)))

(declare-fun bs!1525429 () Bool)

(declare-fun d!1928264 () Bool)

(assert (= bs!1525429 (and d!1928264 b!6153643)))

(assert (=> bs!1525429 (= (dynLambda!25413 lambda!335642 lt!2334766) (derivationStepZipperUp!1270 lt!2334766 (h!70912 s!2326)))))

(assert (=> bs!1525429 m!6992818))

(assert (=> d!1928172 d!1928264))

(push 1)

(assert (not b!6153972))

(assert (not b!6154148))

(assert (not d!1928172))

(assert (not d!1928246))

(assert (not b!6154165))

(assert (not d!1928194))

(assert (not b!6154052))

(assert (not d!1928162))

(assert (not b!6154047))

(assert (not b!6153928))

(assert (not b!6154132))

(assert (not d!1928200))

(assert (not b!6153984))

(assert (not b!6153836))

(assert (not d!1928178))

(assert (not b!6153976))

(assert (not d!1928204))

(assert tp_is_empty!41445)

(assert (not b!6153917))

(assert (not d!1928240))

(assert (not b!6153885))

(assert (not d!1928170))

(assert (not b!6154161))

(assert (not d!1928180))

(assert (not b!6153808))

(assert (not d!1928174))

(assert (not b!6153971))

(assert (not d!1928214))

(assert (not b!6154138))

(assert (not b!6154130))

(assert (not b!6154022))

(assert (not d!1928238))

(assert (not bm!512003))

(assert (not bs!1525428))

(assert (not b!6154168))

(assert (not b!6153975))

(assert (not b!6153979))

(assert (not b!6153954))

(assert (not bs!1525427))

(assert (not bm!512007))

(assert (not b!6154026))

(assert (not b!6154028))

(assert (not d!1928206))

(assert (not d!1928242))

(assert (not bm!512006))

(assert (not d!1928216))

(assert (not b!6153958))

(assert (not bm!511996))

(assert (not b!6153953))

(assert (not b!6153968))

(assert (not bm!512008))

(assert (not b!6154025))

(assert (not b!6153783))

(assert (not b!6153801))

(assert (not bm!512038))

(assert (not b!6153794))

(assert (not b!6154094))

(assert (not b!6153839))

(assert (not b!6153812))

(assert (not b!6153835))

(assert (not bm!512022))

(assert (not d!1928176))

(assert (not bm!512026))

(assert (not d!1928196))

(assert (not b!6153841))

(assert (not b!6154027))

(assert (not b!6154128))

(assert (not bm!512002))

(assert (not b!6154164))

(assert (not b_lambda!234247))

(assert (not d!1928244))

(assert (not b!6154116))

(assert (not b!6154054))

(assert (not d!1928202))

(assert (not bm!512027))

(assert (not d!1928186))

(assert (not d!1928182))

(assert (not b!6153922))

(assert (not b!6154137))

(assert (not b!6153973))

(assert (not b!6153925))

(assert (not b!6153833))

(assert (not b!6154133))

(assert (not d!1928222))

(assert (not b!6154136))

(assert (not b_lambda!234249))

(assert (not d!1928230))

(assert (not b!6153977))

(assert (not bs!1525429))

(assert (not b!6153960))

(assert (not b!6153974))

(assert (not d!1928226))

(assert (not b_lambda!234251))

(assert (not b!6153951))

(assert (not d!1928252))

(assert (not bm!512034))

(assert (not b!6153810))

(assert (not d!1928224))

(assert (not bm!512044))

(assert (not b!6154169))

(assert (not d!1928166))

(assert (not b!6154129))

(assert (not b!6153782))

(assert (not d!1928184))

(assert (not bm!512042))

(assert (not bm!512048))

(assert (not d!1928212))

(assert (not d!1928210))

(assert (not b!6153886))

(assert (not d!1928248))

(assert (not b!6154020))

(assert (not setNonEmpty!41679))

(assert (not b!6153970))

(assert (not b!6153969))

(assert (not b!6154049))

(assert (not b!6153920))

(assert (not b!6154154))

(assert (not b!6153965))

(assert (not d!1928220))

(assert (not bm!512039))

(assert (not b!6154048))

(assert (not b!6154019))

(assert (not b!6153982))

(assert (not b!6154162))

(assert (not b!6153845))

(assert (not b!6153809))

(assert (not bm!512045))

(assert (not b!6154134))

(assert (not bm!512023))

(assert (not b!6154170))

(assert (not b!6154105))

(assert (not b!6154051))

(assert (not b!6153811))

(assert (not b!6153967))

(assert (not bm!512036))

(assert (not b!6153921))

(assert (not b!6154143))

(assert (not d!1928160))

(assert (not b!6153796))

(assert (not d!1928250))

(assert (not b!6153957))

(assert (not d!1928218))

(assert (not d!1928188))

(assert (not d!1928190))

(assert (not b!6153842))

(assert (not b!6154166))

(assert (not bm!511997))

(assert (not b!6153799))

(assert (not b!6153837))

(assert (not b!6154153))

(assert (not b!6153952))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!6153973 d!1928160))

(assert (=> b!6153974 d!1928184))

(declare-fun b!6154564 () Bool)

(declare-fun e!3750048 () Bool)

(declare-fun e!3750050 () Bool)

(assert (=> b!6154564 (= e!3750048 e!3750050)))

(declare-fun res!2549086 () Bool)

(assert (=> b!6154564 (=> (not res!2549086) (not e!3750050))))

(declare-fun call!512110 () Bool)

(assert (=> b!6154564 (= res!2549086 call!512110)))

(declare-fun b!6154565 () Bool)

(declare-fun e!3750053 () Bool)

(declare-fun e!3750051 () Bool)

(assert (=> b!6154565 (= e!3750053 e!3750051)))

(declare-fun c!1107962 () Bool)

(assert (=> b!6154565 (= c!1107962 (is-Star!16096 lt!2334876))))

(declare-fun b!6154566 () Bool)

(declare-fun e!3750049 () Bool)

(declare-fun call!512109 () Bool)

(assert (=> b!6154566 (= e!3750049 call!512109)))

(declare-fun bm!512105 () Bool)

(declare-fun call!512111 () Bool)

(assert (=> bm!512105 (= call!512111 call!512109)))

(declare-fun bm!512106 () Bool)

(declare-fun c!1107963 () Bool)

(assert (=> bm!512106 (= call!512110 (validRegex!7832 (ite c!1107963 (regOne!32705 lt!2334876) (regOne!32704 lt!2334876))))))

(declare-fun b!6154567 () Bool)

(declare-fun e!3750052 () Bool)

(assert (=> b!6154567 (= e!3750051 e!3750052)))

(assert (=> b!6154567 (= c!1107963 (is-Union!16096 lt!2334876))))

(declare-fun b!6154568 () Bool)

(declare-fun e!3750054 () Bool)

(assert (=> b!6154568 (= e!3750054 call!512111)))

(declare-fun b!6154569 () Bool)

(declare-fun res!2549089 () Bool)

(assert (=> b!6154569 (=> res!2549089 e!3750048)))

(assert (=> b!6154569 (= res!2549089 (not (is-Concat!24941 lt!2334876)))))

(assert (=> b!6154569 (= e!3750052 e!3750048)))

(declare-fun b!6154570 () Bool)

(assert (=> b!6154570 (= e!3750050 call!512111)))

(declare-fun bm!512104 () Bool)

(assert (=> bm!512104 (= call!512109 (validRegex!7832 (ite c!1107962 (reg!16425 lt!2334876) (ite c!1107963 (regTwo!32705 lt!2334876) (regTwo!32704 lt!2334876)))))))

(declare-fun d!1928372 () Bool)

(declare-fun res!2549088 () Bool)

(assert (=> d!1928372 (=> res!2549088 e!3750053)))

(assert (=> d!1928372 (= res!2549088 (is-ElementMatch!16096 lt!2334876))))

(assert (=> d!1928372 (= (validRegex!7832 lt!2334876) e!3750053)))

(declare-fun b!6154571 () Bool)

(declare-fun res!2549087 () Bool)

(assert (=> b!6154571 (=> (not res!2549087) (not e!3750054))))

(assert (=> b!6154571 (= res!2549087 call!512110)))

(assert (=> b!6154571 (= e!3750052 e!3750054)))

(declare-fun b!6154572 () Bool)

(assert (=> b!6154572 (= e!3750051 e!3750049)))

(declare-fun res!2549090 () Bool)

(assert (=> b!6154572 (= res!2549090 (not (nullable!6089 (reg!16425 lt!2334876))))))

(assert (=> b!6154572 (=> (not res!2549090) (not e!3750049))))

(assert (= (and d!1928372 (not res!2549088)) b!6154565))

(assert (= (and b!6154565 c!1107962) b!6154572))

(assert (= (and b!6154565 (not c!1107962)) b!6154567))

(assert (= (and b!6154572 res!2549090) b!6154566))

(assert (= (and b!6154567 c!1107963) b!6154571))

(assert (= (and b!6154567 (not c!1107963)) b!6154569))

(assert (= (and b!6154571 res!2549087) b!6154568))

(assert (= (and b!6154569 (not res!2549089)) b!6154564))

(assert (= (and b!6154564 res!2549086) b!6154570))

(assert (= (or b!6154568 b!6154570) bm!512105))

(assert (= (or b!6154571 b!6154564) bm!512106))

(assert (= (or b!6154566 bm!512105) bm!512104))

(declare-fun m!6993508 () Bool)

(assert (=> bm!512106 m!6993508))

(declare-fun m!6993510 () Bool)

(assert (=> bm!512104 m!6993510))

(declare-fun m!6993512 () Bool)

(assert (=> b!6154572 m!6993512))

(assert (=> d!1928196 d!1928372))

(assert (=> d!1928196 d!1928204))

(assert (=> d!1928196 d!1928206))

(declare-fun d!1928374 () Bool)

(assert (=> d!1928374 (= (nullable!6089 (reg!16425 r!7292)) (nullableFct!2053 (reg!16425 r!7292)))))

(declare-fun bs!1525479 () Bool)

(assert (= bs!1525479 d!1928374))

(declare-fun m!6993514 () Bool)

(assert (=> bs!1525479 m!6993514))

(assert (=> b!6154094 d!1928374))

(declare-fun bm!512107 () Bool)

(declare-fun call!512113 () List!64587)

(declare-fun call!512116 () List!64587)

(assert (=> bm!512107 (= call!512113 call!512116)))

(declare-fun b!6154573 () Bool)

(declare-fun e!3750057 () (Set Context!10960))

(declare-fun call!512112 () (Set Context!10960))

(declare-fun call!512114 () (Set Context!10960))

(assert (=> b!6154573 (= e!3750057 (set.union call!512112 call!512114))))

(declare-fun b!6154574 () Bool)

(declare-fun c!1107966 () Bool)

(assert (=> b!6154574 (= c!1107966 (is-Star!16096 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))))))

(declare-fun e!3750060 () (Set Context!10960))

(declare-fun e!3750058 () (Set Context!10960))

(assert (=> b!6154574 (= e!3750060 e!3750058)))

(declare-fun b!6154575 () Bool)

(declare-fun e!3750059 () (Set Context!10960))

(assert (=> b!6154575 (= e!3750059 e!3750057)))

(declare-fun c!1107965 () Bool)

(assert (=> b!6154575 (= c!1107965 (is-Union!16096 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))))))

(declare-fun b!6154576 () Bool)

(declare-fun e!3750056 () (Set Context!10960))

(assert (=> b!6154576 (= e!3750056 e!3750060)))

(declare-fun c!1107967 () Bool)

(assert (=> b!6154576 (= c!1107967 (is-Concat!24941 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))))))

(declare-fun b!6154577 () Bool)

(assert (=> b!6154577 (= e!3750058 (as set.empty (Set Context!10960)))))

(declare-fun bm!512109 () Bool)

(declare-fun c!1107968 () Bool)

(assert (=> bm!512109 (= call!512114 (derivationStepZipperDown!1344 (ite c!1107965 (regTwo!32705 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (ite c!1107968 (regTwo!32704 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (ite c!1107967 (regOne!32704 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (reg!16425 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))))))))) (ite (or c!1107965 c!1107968) (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (Context!10961 call!512113)) (h!70912 s!2326)))))

(declare-fun b!6154578 () Bool)

(declare-fun e!3750055 () Bool)

(assert (=> b!6154578 (= c!1107968 e!3750055)))

(declare-fun res!2549091 () Bool)

(assert (=> b!6154578 (=> (not res!2549091) (not e!3750055))))

(assert (=> b!6154578 (= res!2549091 (is-Concat!24941 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))))))

(assert (=> b!6154578 (= e!3750057 e!3750056)))

(declare-fun b!6154579 () Bool)

(declare-fun call!512115 () (Set Context!10960))

(assert (=> b!6154579 (= e!3750058 call!512115)))

(declare-fun b!6154580 () Bool)

(assert (=> b!6154580 (= e!3750059 (set.insert (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (as set.empty (Set Context!10960))))))

(declare-fun bm!512110 () Bool)

(declare-fun call!512117 () (Set Context!10960))

(assert (=> bm!512110 (= call!512115 call!512117)))

(declare-fun b!6154581 () Bool)

(assert (=> b!6154581 (= e!3750056 (set.union call!512112 call!512117))))

(declare-fun bm!512108 () Bool)

(assert (=> bm!512108 (= call!512116 ($colon$colon!1973 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))))))) (ite (or c!1107968 c!1107967) (regTwo!32704 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))))))))))

(declare-fun d!1928376 () Bool)

(declare-fun c!1107964 () Bool)

(assert (=> d!1928376 (= c!1107964 (and (is-ElementMatch!16096 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (= (c!1107723 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (h!70912 s!2326))))))

(assert (=> d!1928376 (= (derivationStepZipperDown!1344 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))))) (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (h!70912 s!2326)) e!3750059)))

(declare-fun bm!512111 () Bool)

(assert (=> bm!512111 (= call!512117 call!512114)))

(declare-fun bm!512112 () Bool)

(assert (=> bm!512112 (= call!512112 (derivationStepZipperDown!1344 (ite c!1107965 (regOne!32705 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (regOne!32704 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))))))) (ite c!1107965 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (Context!10961 call!512116)) (h!70912 s!2326)))))

(declare-fun b!6154582 () Bool)

(assert (=> b!6154582 (= e!3750060 call!512115)))

(declare-fun b!6154583 () Bool)

(assert (=> b!6154583 (= e!3750055 (nullable!6089 (regOne!32704 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))))))))))

(assert (= (and d!1928376 c!1107964) b!6154580))

(assert (= (and d!1928376 (not c!1107964)) b!6154575))

(assert (= (and b!6154575 c!1107965) b!6154573))

(assert (= (and b!6154575 (not c!1107965)) b!6154578))

(assert (= (and b!6154578 res!2549091) b!6154583))

(assert (= (and b!6154578 c!1107968) b!6154581))

(assert (= (and b!6154578 (not c!1107968)) b!6154576))

(assert (= (and b!6154576 c!1107967) b!6154582))

(assert (= (and b!6154576 (not c!1107967)) b!6154574))

(assert (= (and b!6154574 c!1107966) b!6154579))

(assert (= (and b!6154574 (not c!1107966)) b!6154577))

(assert (= (or b!6154582 b!6154579) bm!512107))

(assert (= (or b!6154582 b!6154579) bm!512110))

(assert (= (or b!6154581 bm!512107) bm!512108))

(assert (= (or b!6154581 bm!512110) bm!512111))

(assert (= (or b!6154573 bm!512111) bm!512109))

(assert (= (or b!6154573 b!6154581) bm!512112))

(declare-fun m!6993516 () Bool)

(assert (=> bm!512109 m!6993516))

(declare-fun m!6993518 () Bool)

(assert (=> bm!512108 m!6993518))

(declare-fun m!6993520 () Bool)

(assert (=> b!6154580 m!6993520))

(declare-fun m!6993522 () Bool)

(assert (=> bm!512112 m!6993522))

(declare-fun m!6993524 () Bool)

(assert (=> b!6154583 m!6993524))

(assert (=> bm!512007 d!1928376))

(declare-fun d!1928378 () Bool)

(assert (=> d!1928378 (= (isDefined!12690 lt!2334900) (not (isEmpty!36431 lt!2334900)))))

(declare-fun bs!1525480 () Bool)

(assert (= bs!1525480 d!1928378))

(declare-fun m!6993526 () Bool)

(assert (=> bs!1525480 m!6993526))

(assert (=> b!6154054 d!1928378))

(declare-fun call!512118 () (Set Context!10960))

(declare-fun e!3750061 () (Set Context!10960))

(declare-fun b!6154584 () Bool)

(assert (=> b!6154584 (= e!3750061 (set.union call!512118 (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334763)))))) (h!70912 s!2326))))))

(declare-fun bm!512113 () Bool)

(assert (=> bm!512113 (= call!512118 (derivationStepZipperDown!1344 (h!70911 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334763))))) (Context!10961 (t!378078 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334763)))))) (h!70912 s!2326)))))

(declare-fun b!6154585 () Bool)

(declare-fun e!3750062 () (Set Context!10960))

(assert (=> b!6154585 (= e!3750061 e!3750062)))

(declare-fun c!1107970 () Bool)

(assert (=> b!6154585 (= c!1107970 (is-Cons!64463 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334763))))))))

(declare-fun b!6154586 () Bool)

(declare-fun e!3750063 () Bool)

(assert (=> b!6154586 (= e!3750063 (nullable!6089 (h!70911 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334763)))))))))

(declare-fun d!1928380 () Bool)

(declare-fun c!1107969 () Bool)

(assert (=> d!1928380 (= c!1107969 e!3750063)))

(declare-fun res!2549092 () Bool)

(assert (=> d!1928380 (=> (not res!2549092) (not e!3750063))))

(assert (=> d!1928380 (= res!2549092 (is-Cons!64463 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334763))))))))

(assert (=> d!1928380 (= (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 lt!2334763))) (h!70912 s!2326)) e!3750061)))

(declare-fun b!6154587 () Bool)

(assert (=> b!6154587 (= e!3750062 (as set.empty (Set Context!10960)))))

(declare-fun b!6154588 () Bool)

(assert (=> b!6154588 (= e!3750062 call!512118)))

(assert (= (and d!1928380 res!2549092) b!6154586))

(assert (= (and d!1928380 c!1107969) b!6154584))

(assert (= (and d!1928380 (not c!1107969)) b!6154585))

(assert (= (and b!6154585 c!1107970) b!6154588))

(assert (= (and b!6154585 (not c!1107970)) b!6154587))

(assert (= (or b!6154584 b!6154588) bm!512113))

(declare-fun m!6993528 () Bool)

(assert (=> b!6154584 m!6993528))

(declare-fun m!6993530 () Bool)

(assert (=> bm!512113 m!6993530))

(declare-fun m!6993532 () Bool)

(assert (=> b!6154586 m!6993532))

(assert (=> b!6153982 d!1928380))

(declare-fun d!1928382 () Bool)

(assert (=> d!1928382 (= (nullable!6089 (regOne!32704 (regOne!32705 (regOne!32704 r!7292)))) (nullableFct!2053 (regOne!32704 (regOne!32705 (regOne!32704 r!7292)))))))

(declare-fun bs!1525481 () Bool)

(assert (= bs!1525481 d!1928382))

(declare-fun m!6993534 () Bool)

(assert (=> bs!1525481 m!6993534))

(assert (=> b!6154116 d!1928382))

(declare-fun d!1928384 () Bool)

(assert (=> d!1928384 true))

(declare-fun setRes!41685 () Bool)

(assert (=> d!1928384 setRes!41685))

(declare-fun condSetEmpty!41685 () Bool)

(declare-fun res!2549095 () (Set Context!10960))

(assert (=> d!1928384 (= condSetEmpty!41685 (= res!2549095 (as set.empty (Set Context!10960))))))

(assert (=> d!1928384 (= (choose!45740 lt!2334764 lambda!335642) res!2549095)))

(declare-fun setIsEmpty!41685 () Bool)

(assert (=> setIsEmpty!41685 setRes!41685))

(declare-fun tp!1718867 () Bool)

(declare-fun setElem!41685 () Context!10960)

(declare-fun e!3750066 () Bool)

(declare-fun setNonEmpty!41685 () Bool)

(assert (=> setNonEmpty!41685 (= setRes!41685 (and tp!1718867 (inv!83488 setElem!41685) e!3750066))))

(declare-fun setRest!41685 () (Set Context!10960))

(assert (=> setNonEmpty!41685 (= res!2549095 (set.union (set.insert setElem!41685 (as set.empty (Set Context!10960))) setRest!41685))))

(declare-fun b!6154591 () Bool)

(declare-fun tp!1718868 () Bool)

(assert (=> b!6154591 (= e!3750066 tp!1718868)))

(assert (= (and d!1928384 condSetEmpty!41685) setIsEmpty!41685))

(assert (= (and d!1928384 (not condSetEmpty!41685)) setNonEmpty!41685))

(assert (= setNonEmpty!41685 b!6154591))

(declare-fun m!6993536 () Bool)

(assert (=> setNonEmpty!41685 m!6993536))

(assert (=> d!1928162 d!1928384))

(declare-fun d!1928386 () Bool)

(assert (=> d!1928386 (= (head!12714 (unfocusZipperList!1517 zl!343)) (h!70911 (unfocusZipperList!1517 zl!343)))))

(assert (=> b!6153951 d!1928386))

(declare-fun b!6154592 () Bool)

(declare-fun e!3750067 () Bool)

(declare-fun e!3750069 () Bool)

(assert (=> b!6154592 (= e!3750067 e!3750069)))

(declare-fun res!2549096 () Bool)

(assert (=> b!6154592 (=> (not res!2549096) (not e!3750069))))

(declare-fun call!512120 () Bool)

(assert (=> b!6154592 (= res!2549096 call!512120)))

(declare-fun b!6154593 () Bool)

(declare-fun e!3750072 () Bool)

(declare-fun e!3750070 () Bool)

(assert (=> b!6154593 (= e!3750072 e!3750070)))

(declare-fun c!1107971 () Bool)

(assert (=> b!6154593 (= c!1107971 (is-Star!16096 lt!2334870))))

(declare-fun b!6154594 () Bool)

(declare-fun e!3750068 () Bool)

(declare-fun call!512119 () Bool)

(assert (=> b!6154594 (= e!3750068 call!512119)))

(declare-fun bm!512115 () Bool)

(declare-fun call!512121 () Bool)

(assert (=> bm!512115 (= call!512121 call!512119)))

(declare-fun bm!512116 () Bool)

(declare-fun c!1107972 () Bool)

(assert (=> bm!512116 (= call!512120 (validRegex!7832 (ite c!1107972 (regOne!32705 lt!2334870) (regOne!32704 lt!2334870))))))

(declare-fun b!6154595 () Bool)

(declare-fun e!3750071 () Bool)

(assert (=> b!6154595 (= e!3750070 e!3750071)))

(assert (=> b!6154595 (= c!1107972 (is-Union!16096 lt!2334870))))

(declare-fun b!6154596 () Bool)

(declare-fun e!3750073 () Bool)

(assert (=> b!6154596 (= e!3750073 call!512121)))

(declare-fun b!6154597 () Bool)

(declare-fun res!2549099 () Bool)

(assert (=> b!6154597 (=> res!2549099 e!3750067)))

(assert (=> b!6154597 (= res!2549099 (not (is-Concat!24941 lt!2334870)))))

(assert (=> b!6154597 (= e!3750071 e!3750067)))

(declare-fun b!6154598 () Bool)

(assert (=> b!6154598 (= e!3750069 call!512121)))

(declare-fun bm!512114 () Bool)

(assert (=> bm!512114 (= call!512119 (validRegex!7832 (ite c!1107971 (reg!16425 lt!2334870) (ite c!1107972 (regTwo!32705 lt!2334870) (regTwo!32704 lt!2334870)))))))

(declare-fun d!1928388 () Bool)

(declare-fun res!2549098 () Bool)

(assert (=> d!1928388 (=> res!2549098 e!3750072)))

(assert (=> d!1928388 (= res!2549098 (is-ElementMatch!16096 lt!2334870))))

(assert (=> d!1928388 (= (validRegex!7832 lt!2334870) e!3750072)))

(declare-fun b!6154599 () Bool)

(declare-fun res!2549097 () Bool)

(assert (=> b!6154599 (=> (not res!2549097) (not e!3750073))))

(assert (=> b!6154599 (= res!2549097 call!512120)))

(assert (=> b!6154599 (= e!3750071 e!3750073)))

(declare-fun b!6154600 () Bool)

(assert (=> b!6154600 (= e!3750070 e!3750068)))

(declare-fun res!2549100 () Bool)

(assert (=> b!6154600 (= res!2549100 (not (nullable!6089 (reg!16425 lt!2334870))))))

(assert (=> b!6154600 (=> (not res!2549100) (not e!3750068))))

(assert (= (and d!1928388 (not res!2549098)) b!6154593))

(assert (= (and b!6154593 c!1107971) b!6154600))

(assert (= (and b!6154593 (not c!1107971)) b!6154595))

(assert (= (and b!6154600 res!2549100) b!6154594))

(assert (= (and b!6154595 c!1107972) b!6154599))

(assert (= (and b!6154595 (not c!1107972)) b!6154597))

(assert (= (and b!6154599 res!2549097) b!6154596))

(assert (= (and b!6154597 (not res!2549099)) b!6154592))

(assert (= (and b!6154592 res!2549096) b!6154598))

(assert (= (or b!6154596 b!6154598) bm!512115))

(assert (= (or b!6154599 b!6154592) bm!512116))

(assert (= (or b!6154594 bm!512115) bm!512114))

(declare-fun m!6993538 () Bool)

(assert (=> bm!512116 m!6993538))

(declare-fun m!6993540 () Bool)

(assert (=> bm!512114 m!6993540))

(declare-fun m!6993542 () Bool)

(assert (=> b!6154600 m!6993542))

(assert (=> d!1928186 d!1928388))

(declare-fun d!1928390 () Bool)

(declare-fun res!2549105 () Bool)

(declare-fun e!3750078 () Bool)

(assert (=> d!1928390 (=> res!2549105 e!3750078)))

(assert (=> d!1928390 (= res!2549105 (is-Nil!64463 (exprs!5980 (h!70913 zl!343))))))

(assert (=> d!1928390 (= (forall!15217 (exprs!5980 (h!70913 zl!343)) lambda!335663) e!3750078)))

(declare-fun b!6154605 () Bool)

(declare-fun e!3750079 () Bool)

(assert (=> b!6154605 (= e!3750078 e!3750079)))

(declare-fun res!2549106 () Bool)

(assert (=> b!6154605 (=> (not res!2549106) (not e!3750079))))

(declare-fun dynLambda!25415 (Int Regex!16096) Bool)

(assert (=> b!6154605 (= res!2549106 (dynLambda!25415 lambda!335663 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun b!6154606 () Bool)

(assert (=> b!6154606 (= e!3750079 (forall!15217 (t!378078 (exprs!5980 (h!70913 zl!343))) lambda!335663))))

(assert (= (and d!1928390 (not res!2549105)) b!6154605))

(assert (= (and b!6154605 res!2549106) b!6154606))

(declare-fun b_lambda!234265 () Bool)

(assert (=> (not b_lambda!234265) (not b!6154605)))

(declare-fun m!6993544 () Bool)

(assert (=> b!6154605 m!6993544))

(declare-fun m!6993546 () Bool)

(assert (=> b!6154606 m!6993546))

(assert (=> d!1928186 d!1928390))

(declare-fun d!1928392 () Bool)

(declare-fun lambda!335724 () Int)

(declare-fun exists!2442 ((Set Context!10960) Int) Bool)

(assert (=> d!1928392 (= (nullableZipper!1877 (set.union lt!2334754 lt!2334751)) (exists!2442 (set.union lt!2334754 lt!2334751) lambda!335724))))

(declare-fun bs!1525482 () Bool)

(assert (= bs!1525482 d!1928392))

(declare-fun m!6993548 () Bool)

(assert (=> bs!1525482 m!6993548))

(assert (=> b!6153809 d!1928392))

(declare-fun bs!1525483 () Bool)

(declare-fun d!1928394 () Bool)

(assert (= bs!1525483 (and d!1928394 d!1928392)))

(declare-fun lambda!335725 () Int)

(assert (=> bs!1525483 (= lambda!335725 lambda!335724)))

(assert (=> d!1928394 (= (nullableZipper!1877 lt!2334745) (exists!2442 lt!2334745 lambda!335725))))

(declare-fun bs!1525484 () Bool)

(assert (= bs!1525484 d!1928394))

(declare-fun m!6993550 () Bool)

(assert (=> bs!1525484 m!6993550))

(assert (=> b!6153969 d!1928394))

(declare-fun e!3750080 () (Set Context!10960))

(declare-fun b!6154607 () Bool)

(declare-fun call!512122 () (Set Context!10960))

(assert (=> b!6154607 (= e!3750080 (set.union call!512122 (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343))))))) (h!70912 s!2326))))))

(declare-fun bm!512117 () Bool)

(assert (=> bm!512117 (= call!512122 (derivationStepZipperDown!1344 (h!70911 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343)))))) (Context!10961 (t!378078 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343))))))) (h!70912 s!2326)))))

(declare-fun b!6154608 () Bool)

(declare-fun e!3750081 () (Set Context!10960))

(assert (=> b!6154608 (= e!3750080 e!3750081)))

(declare-fun c!1107976 () Bool)

(assert (=> b!6154608 (= c!1107976 (is-Cons!64463 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343)))))))))

(declare-fun b!6154609 () Bool)

(declare-fun e!3750082 () Bool)

(assert (=> b!6154609 (= e!3750082 (nullable!6089 (h!70911 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343))))))))))

(declare-fun d!1928396 () Bool)

(declare-fun c!1107975 () Bool)

(assert (=> d!1928396 (= c!1107975 e!3750082)))

(declare-fun res!2549107 () Bool)

(assert (=> d!1928396 (=> (not res!2549107) (not e!3750082))))

(assert (=> d!1928396 (= res!2549107 (is-Cons!64463 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343)))))))))

(assert (=> d!1928396 (= (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343)))) (h!70912 s!2326)) e!3750080)))

(declare-fun b!6154610 () Bool)

(assert (=> b!6154610 (= e!3750081 (as set.empty (Set Context!10960)))))

(declare-fun b!6154611 () Bool)

(assert (=> b!6154611 (= e!3750081 call!512122)))

(assert (= (and d!1928396 res!2549107) b!6154609))

(assert (= (and d!1928396 c!1107975) b!6154607))

(assert (= (and d!1928396 (not c!1107975)) b!6154608))

(assert (= (and b!6154608 c!1107976) b!6154611))

(assert (= (and b!6154608 (not c!1107976)) b!6154610))

(assert (= (or b!6154607 b!6154611) bm!512117))

(declare-fun m!6993552 () Bool)

(assert (=> b!6154607 m!6993552))

(declare-fun m!6993554 () Bool)

(assert (=> bm!512117 m!6993554))

(declare-fun m!6993556 () Bool)

(assert (=> b!6154609 m!6993556))

(assert (=> b!6154020 d!1928396))

(declare-fun d!1928398 () Bool)

(declare-fun c!1107977 () Bool)

(assert (=> d!1928398 (= c!1107977 (isEmpty!36430 (t!378079 s!2326)))))

(declare-fun e!3750083 () Bool)

(assert (=> d!1928398 (= (matchZipper!2108 (set.union lt!2334754 lt!2334756) (t!378079 s!2326)) e!3750083)))

(declare-fun b!6154612 () Bool)

(assert (=> b!6154612 (= e!3750083 (nullableZipper!1877 (set.union lt!2334754 lt!2334756)))))

(declare-fun b!6154613 () Bool)

(assert (=> b!6154613 (= e!3750083 (matchZipper!2108 (derivationStepZipper!2069 (set.union lt!2334754 lt!2334756) (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))))))

(assert (= (and d!1928398 c!1107977) b!6154612))

(assert (= (and d!1928398 (not c!1107977)) b!6154613))

(assert (=> d!1928398 m!6992952))

(declare-fun m!6993558 () Bool)

(assert (=> b!6154612 m!6993558))

(assert (=> b!6154613 m!6992956))

(assert (=> b!6154613 m!6992956))

(declare-fun m!6993560 () Bool)

(assert (=> b!6154613 m!6993560))

(assert (=> b!6154613 m!6992960))

(assert (=> b!6154613 m!6993560))

(assert (=> b!6154613 m!6992960))

(declare-fun m!6993562 () Bool)

(assert (=> b!6154613 m!6993562))

(assert (=> d!1928216 d!1928398))

(assert (=> d!1928216 d!1928214))

(declare-fun d!1928400 () Bool)

(declare-fun e!3750086 () Bool)

(assert (=> d!1928400 (= (matchZipper!2108 (set.union lt!2334754 lt!2334756) (t!378079 s!2326)) e!3750086)))

(declare-fun res!2549110 () Bool)

(assert (=> d!1928400 (=> res!2549110 e!3750086)))

(assert (=> d!1928400 (= res!2549110 (matchZipper!2108 lt!2334754 (t!378079 s!2326)))))

(assert (=> d!1928400 true))

(declare-fun _$48!1704 () Unit!157555)

(assert (=> d!1928400 (= (choose!45742 lt!2334754 lt!2334756 (t!378079 s!2326)) _$48!1704)))

(declare-fun b!6154616 () Bool)

(assert (=> b!6154616 (= e!3750086 (matchZipper!2108 lt!2334756 (t!378079 s!2326)))))

(assert (= (and d!1928400 (not res!2549110)) b!6154616))

(assert (=> d!1928400 m!6993102))

(assert (=> d!1928400 m!6992764))

(assert (=> b!6154616 m!6992790))

(assert (=> d!1928216 d!1928400))

(assert (=> d!1928220 d!1928222))

(assert (=> d!1928220 d!1928210))

(declare-fun e!3750087 () Bool)

(declare-fun d!1928402 () Bool)

(assert (=> d!1928402 (= (matchZipper!2108 (set.union lt!2334770 lt!2334751) (t!378079 s!2326)) e!3750087)))

(declare-fun res!2549111 () Bool)

(assert (=> d!1928402 (=> res!2549111 e!3750087)))

(assert (=> d!1928402 (= res!2549111 (matchZipper!2108 lt!2334770 (t!378079 s!2326)))))

(assert (=> d!1928402 true))

(declare-fun _$48!1705 () Unit!157555)

(assert (=> d!1928402 (= (choose!45742 lt!2334770 lt!2334751 (t!378079 s!2326)) _$48!1705)))

(declare-fun b!6154617 () Bool)

(assert (=> b!6154617 (= e!3750087 (matchZipper!2108 lt!2334751 (t!378079 s!2326)))))

(assert (= (and d!1928402 (not res!2549111)) b!6154617))

(assert (=> d!1928402 m!6992806))

(assert (=> d!1928402 m!6992760))

(assert (=> b!6154617 m!6992768))

(assert (=> d!1928220 d!1928402))

(declare-fun d!1928404 () Bool)

(assert (=> d!1928404 true))

(declare-fun setRes!41686 () Bool)

(assert (=> d!1928404 setRes!41686))

(declare-fun condSetEmpty!41686 () Bool)

(declare-fun res!2549112 () (Set Context!10960))

(assert (=> d!1928404 (= condSetEmpty!41686 (= res!2549112 (as set.empty (Set Context!10960))))))

(assert (=> d!1928404 (= (choose!45740 z!1189 lambda!335642) res!2549112)))

(declare-fun setIsEmpty!41686 () Bool)

(assert (=> setIsEmpty!41686 setRes!41686))

(declare-fun e!3750088 () Bool)

(declare-fun tp!1718869 () Bool)

(declare-fun setNonEmpty!41686 () Bool)

(declare-fun setElem!41686 () Context!10960)

(assert (=> setNonEmpty!41686 (= setRes!41686 (and tp!1718869 (inv!83488 setElem!41686) e!3750088))))

(declare-fun setRest!41686 () (Set Context!10960))

(assert (=> setNonEmpty!41686 (= res!2549112 (set.union (set.insert setElem!41686 (as set.empty (Set Context!10960))) setRest!41686))))

(declare-fun b!6154618 () Bool)

(declare-fun tp!1718870 () Bool)

(assert (=> b!6154618 (= e!3750088 tp!1718870)))

(assert (= (and d!1928404 condSetEmpty!41686) setIsEmpty!41686))

(assert (= (and d!1928404 (not condSetEmpty!41686)) setNonEmpty!41686))

(assert (= setNonEmpty!41686 b!6154618))

(declare-fun m!6993564 () Bool)

(assert (=> setNonEmpty!41686 m!6993564))

(assert (=> d!1928230 d!1928404))

(declare-fun d!1928406 () Bool)

(assert (=> d!1928406 (= (isEmpty!36430 s!2326) (is-Nil!64464 s!2326))))

(assert (=> bm!512003 d!1928406))

(declare-fun d!1928408 () Bool)

(assert (=> d!1928408 (= (isEmpty!36430 (t!378079 s!2326)) (is-Nil!64464 (t!378079 s!2326)))))

(assert (=> d!1928160 d!1928408))

(declare-fun bm!512118 () Bool)

(declare-fun call!512124 () List!64587)

(declare-fun call!512127 () List!64587)

(assert (=> bm!512118 (= call!512124 call!512127)))

(declare-fun b!6154619 () Bool)

(declare-fun e!3750091 () (Set Context!10960))

(declare-fun call!512123 () (Set Context!10960))

(declare-fun call!512125 () (Set Context!10960))

(assert (=> b!6154619 (= e!3750091 (set.union call!512123 call!512125))))

(declare-fun b!6154620 () Bool)

(declare-fun c!1107980 () Bool)

(assert (=> b!6154620 (= c!1107980 (is-Star!16096 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292))))))))))

(declare-fun e!3750094 () (Set Context!10960))

(declare-fun e!3750092 () (Set Context!10960))

(assert (=> b!6154620 (= e!3750094 e!3750092)))

(declare-fun b!6154621 () Bool)

(declare-fun e!3750093 () (Set Context!10960))

(assert (=> b!6154621 (= e!3750093 e!3750091)))

(declare-fun c!1107979 () Bool)

(assert (=> b!6154621 (= c!1107979 (is-Union!16096 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292))))))))))

(declare-fun b!6154622 () Bool)

(declare-fun e!3750090 () (Set Context!10960))

(assert (=> b!6154622 (= e!3750090 e!3750094)))

(declare-fun c!1107981 () Bool)

(assert (=> b!6154622 (= c!1107981 (is-Concat!24941 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292))))))))))

(declare-fun b!6154623 () Bool)

(assert (=> b!6154623 (= e!3750092 (as set.empty (Set Context!10960)))))

(declare-fun c!1107982 () Bool)

(declare-fun bm!512120 () Bool)

(assert (=> bm!512120 (= call!512125 (derivationStepZipperDown!1344 (ite c!1107979 (regTwo!32705 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292))))))) (ite c!1107982 (regTwo!32704 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292))))))) (ite c!1107981 (regOne!32704 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292))))))) (reg!16425 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292)))))))))) (ite (or c!1107979 c!1107982) (ite (or c!1107846 c!1107849) lt!2334763 (Context!10961 call!512049)) (Context!10961 call!512124)) (h!70912 s!2326)))))

(declare-fun b!6154624 () Bool)

(declare-fun e!3750089 () Bool)

(assert (=> b!6154624 (= c!1107982 e!3750089)))

(declare-fun res!2549113 () Bool)

(assert (=> b!6154624 (=> (not res!2549113) (not e!3750089))))

(assert (=> b!6154624 (= res!2549113 (is-Concat!24941 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292))))))))))

(assert (=> b!6154624 (= e!3750091 e!3750090)))

(declare-fun b!6154625 () Bool)

(declare-fun call!512126 () (Set Context!10960))

(assert (=> b!6154625 (= e!3750092 call!512126)))

(declare-fun b!6154626 () Bool)

(assert (=> b!6154626 (= e!3750093 (set.insert (ite (or c!1107846 c!1107849) lt!2334763 (Context!10961 call!512049)) (as set.empty (Set Context!10960))))))

(declare-fun bm!512121 () Bool)

(declare-fun call!512128 () (Set Context!10960))

(assert (=> bm!512121 (= call!512126 call!512128)))

(declare-fun b!6154627 () Bool)

(assert (=> b!6154627 (= e!3750090 (set.union call!512123 call!512128))))

(declare-fun bm!512119 () Bool)

(assert (=> bm!512119 (= call!512127 ($colon$colon!1973 (exprs!5980 (ite (or c!1107846 c!1107849) lt!2334763 (Context!10961 call!512049))) (ite (or c!1107982 c!1107981) (regTwo!32704 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292))))))) (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292)))))))))))

(declare-fun c!1107978 () Bool)

(declare-fun d!1928410 () Bool)

(assert (=> d!1928410 (= c!1107978 (and (is-ElementMatch!16096 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292))))))) (= (c!1107723 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292))))))) (h!70912 s!2326))))))

(assert (=> d!1928410 (= (derivationStepZipperDown!1344 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292)))))) (ite (or c!1107846 c!1107849) lt!2334763 (Context!10961 call!512049)) (h!70912 s!2326)) e!3750093)))

(declare-fun bm!512122 () Bool)

(assert (=> bm!512122 (= call!512128 call!512125)))

(declare-fun bm!512123 () Bool)

(assert (=> bm!512123 (= call!512123 (derivationStepZipperDown!1344 (ite c!1107979 (regOne!32705 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292))))))) (regOne!32704 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292)))))))) (ite c!1107979 (ite (or c!1107846 c!1107849) lt!2334763 (Context!10961 call!512049)) (Context!10961 call!512127)) (h!70912 s!2326)))))

(declare-fun b!6154628 () Bool)

(assert (=> b!6154628 (= e!3750094 call!512126)))

(declare-fun b!6154629 () Bool)

(assert (=> b!6154629 (= e!3750089 (nullable!6089 (regOne!32704 (ite c!1107846 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107849 (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (ite c!1107848 (regOne!32704 (regOne!32705 (regOne!32704 r!7292))) (reg!16425 (regOne!32705 (regOne!32704 r!7292)))))))))))

(assert (= (and d!1928410 c!1107978) b!6154626))

(assert (= (and d!1928410 (not c!1107978)) b!6154621))

(assert (= (and b!6154621 c!1107979) b!6154619))

(assert (= (and b!6154621 (not c!1107979)) b!6154624))

(assert (= (and b!6154624 res!2549113) b!6154629))

(assert (= (and b!6154624 c!1107982) b!6154627))

(assert (= (and b!6154624 (not c!1107982)) b!6154622))

(assert (= (and b!6154622 c!1107981) b!6154628))

(assert (= (and b!6154622 (not c!1107981)) b!6154620))

(assert (= (and b!6154620 c!1107980) b!6154625))

(assert (= (and b!6154620 (not c!1107980)) b!6154623))

(assert (= (or b!6154628 b!6154625) bm!512118))

(assert (= (or b!6154628 b!6154625) bm!512121))

(assert (= (or b!6154627 bm!512118) bm!512119))

(assert (= (or b!6154627 bm!512121) bm!512122))

(assert (= (or b!6154619 bm!512122) bm!512120))

(assert (= (or b!6154619 b!6154627) bm!512123))

(declare-fun m!6993566 () Bool)

(assert (=> bm!512120 m!6993566))

(declare-fun m!6993568 () Bool)

(assert (=> bm!512119 m!6993568))

(declare-fun m!6993570 () Bool)

(assert (=> b!6154626 m!6993570))

(declare-fun m!6993572 () Bool)

(assert (=> bm!512123 m!6993572))

(declare-fun m!6993574 () Bool)

(assert (=> b!6154629 m!6993574))

(assert (=> bm!512045 d!1928410))

(declare-fun bs!1525485 () Bool)

(declare-fun d!1928412 () Bool)

(assert (= bs!1525485 (and d!1928412 d!1928392)))

(declare-fun lambda!335726 () Int)

(assert (=> bs!1525485 (= lambda!335726 lambda!335724)))

(declare-fun bs!1525486 () Bool)

(assert (= bs!1525486 (and d!1928412 d!1928394)))

(assert (=> bs!1525486 (= lambda!335726 lambda!335725)))

(assert (=> d!1928412 (= (nullableZipper!1877 lt!2334751) (exists!2442 lt!2334751 lambda!335726))))

(declare-fun bs!1525487 () Bool)

(assert (= bs!1525487 d!1928412))

(declare-fun m!6993576 () Bool)

(assert (=> bs!1525487 m!6993576))

(assert (=> b!6153811 d!1928412))

(declare-fun bs!1525488 () Bool)

(declare-fun d!1928414 () Bool)

(assert (= bs!1525488 (and d!1928414 d!1928218)))

(declare-fun lambda!335727 () Int)

(assert (=> bs!1525488 (= lambda!335727 lambda!335680)))

(declare-fun bs!1525489 () Bool)

(assert (= bs!1525489 (and d!1928414 d!1928204)))

(assert (=> bs!1525489 (= lambda!335727 lambda!335676)))

(declare-fun bs!1525490 () Bool)

(assert (= bs!1525490 (and d!1928414 d!1928186)))

(assert (=> bs!1525490 (= lambda!335727 lambda!335663)))

(declare-fun bs!1525491 () Bool)

(assert (= bs!1525491 (and d!1928414 d!1928190)))

(assert (=> bs!1525491 (= lambda!335727 lambda!335666)))

(declare-fun bs!1525492 () Bool)

(assert (= bs!1525492 (and d!1928414 d!1928194)))

(assert (=> bs!1525492 (= lambda!335727 lambda!335667)))

(declare-fun bs!1525493 () Bool)

(assert (= bs!1525493 (and d!1928414 d!1928206)))

(assert (=> bs!1525493 (= lambda!335727 lambda!335679)))

(declare-fun b!6154630 () Bool)

(declare-fun e!3750097 () Bool)

(declare-fun lt!2334953 () Regex!16096)

(assert (=> b!6154630 (= e!3750097 (isConcat!1036 lt!2334953))))

(declare-fun b!6154631 () Bool)

(declare-fun e!3750098 () Regex!16096)

(declare-fun e!3750099 () Regex!16096)

(assert (=> b!6154631 (= e!3750098 e!3750099)))

(declare-fun c!1107983 () Bool)

(assert (=> b!6154631 (= c!1107983 (is-Cons!64463 (t!378078 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun e!3750100 () Bool)

(assert (=> d!1928414 e!3750100))

(declare-fun res!2549115 () Bool)

(assert (=> d!1928414 (=> (not res!2549115) (not e!3750100))))

(assert (=> d!1928414 (= res!2549115 (validRegex!7832 lt!2334953))))

(assert (=> d!1928414 (= lt!2334953 e!3750098)))

(declare-fun c!1107984 () Bool)

(declare-fun e!3750095 () Bool)

(assert (=> d!1928414 (= c!1107984 e!3750095)))

(declare-fun res!2549114 () Bool)

(assert (=> d!1928414 (=> (not res!2549114) (not e!3750095))))

(assert (=> d!1928414 (= res!2549114 (is-Cons!64463 (t!378078 (exprs!5980 (h!70913 zl!343)))))))

(assert (=> d!1928414 (forall!15217 (t!378078 (exprs!5980 (h!70913 zl!343))) lambda!335727)))

(assert (=> d!1928414 (= (generalisedConcat!1693 (t!378078 (exprs!5980 (h!70913 zl!343)))) lt!2334953)))

(declare-fun b!6154632 () Bool)

(declare-fun e!3750096 () Bool)

(assert (=> b!6154632 (= e!3750096 (isEmptyExpr!1513 lt!2334953))))

(declare-fun b!6154633 () Bool)

(assert (=> b!6154633 (= e!3750100 e!3750096)))

(declare-fun c!1107986 () Bool)

(assert (=> b!6154633 (= c!1107986 (isEmpty!36427 (t!378078 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun b!6154634 () Bool)

(assert (=> b!6154634 (= e!3750096 e!3750097)))

(declare-fun c!1107985 () Bool)

(assert (=> b!6154634 (= c!1107985 (isEmpty!36427 (tail!11799 (t!378078 (exprs!5980 (h!70913 zl!343))))))))

(declare-fun b!6154635 () Bool)

(assert (=> b!6154635 (= e!3750099 EmptyExpr!16096)))

(declare-fun b!6154636 () Bool)

(assert (=> b!6154636 (= e!3750095 (isEmpty!36427 (t!378078 (t!378078 (exprs!5980 (h!70913 zl!343))))))))

(declare-fun b!6154637 () Bool)

(assert (=> b!6154637 (= e!3750098 (h!70911 (t!378078 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun b!6154638 () Bool)

(assert (=> b!6154638 (= e!3750099 (Concat!24941 (h!70911 (t!378078 (exprs!5980 (h!70913 zl!343)))) (generalisedConcat!1693 (t!378078 (t!378078 (exprs!5980 (h!70913 zl!343)))))))))

(declare-fun b!6154639 () Bool)

(assert (=> b!6154639 (= e!3750097 (= lt!2334953 (head!12714 (t!378078 (exprs!5980 (h!70913 zl!343))))))))

(assert (= (and d!1928414 res!2549114) b!6154636))

(assert (= (and d!1928414 c!1107984) b!6154637))

(assert (= (and d!1928414 (not c!1107984)) b!6154631))

(assert (= (and b!6154631 c!1107983) b!6154638))

(assert (= (and b!6154631 (not c!1107983)) b!6154635))

(assert (= (and d!1928414 res!2549115) b!6154633))

(assert (= (and b!6154633 c!1107986) b!6154632))

(assert (= (and b!6154633 (not c!1107986)) b!6154634))

(assert (= (and b!6154634 c!1107985) b!6154639))

(assert (= (and b!6154634 (not c!1107985)) b!6154630))

(declare-fun m!6993578 () Bool)

(assert (=> b!6154632 m!6993578))

(declare-fun m!6993580 () Bool)

(assert (=> d!1928414 m!6993580))

(declare-fun m!6993582 () Bool)

(assert (=> d!1928414 m!6993582))

(assert (=> b!6154633 m!6992844))

(declare-fun m!6993584 () Bool)

(assert (=> b!6154634 m!6993584))

(assert (=> b!6154634 m!6993584))

(declare-fun m!6993586 () Bool)

(assert (=> b!6154634 m!6993586))

(declare-fun m!6993588 () Bool)

(assert (=> b!6154630 m!6993588))

(declare-fun m!6993590 () Bool)

(assert (=> b!6154639 m!6993590))

(declare-fun m!6993592 () Bool)

(assert (=> b!6154636 m!6993592))

(declare-fun m!6993594 () Bool)

(assert (=> b!6154638 m!6993594))

(assert (=> b!6153841 d!1928414))

(declare-fun bs!1525494 () Bool)

(declare-fun d!1928416 () Bool)

(assert (= bs!1525494 (and d!1928416 d!1928218)))

(declare-fun lambda!335728 () Int)

(assert (=> bs!1525494 (= lambda!335728 lambda!335680)))

(declare-fun bs!1525495 () Bool)

(assert (= bs!1525495 (and d!1928416 d!1928204)))

(assert (=> bs!1525495 (= lambda!335728 lambda!335676)))

(declare-fun bs!1525496 () Bool)

(assert (= bs!1525496 (and d!1928416 d!1928186)))

(assert (=> bs!1525496 (= lambda!335728 lambda!335663)))

(declare-fun bs!1525497 () Bool)

(assert (= bs!1525497 (and d!1928416 d!1928414)))

(assert (=> bs!1525497 (= lambda!335728 lambda!335727)))

(declare-fun bs!1525498 () Bool)

(assert (= bs!1525498 (and d!1928416 d!1928190)))

(assert (=> bs!1525498 (= lambda!335728 lambda!335666)))

(declare-fun bs!1525499 () Bool)

(assert (= bs!1525499 (and d!1928416 d!1928194)))

(assert (=> bs!1525499 (= lambda!335728 lambda!335667)))

(declare-fun bs!1525500 () Bool)

(assert (= bs!1525500 (and d!1928416 d!1928206)))

(assert (=> bs!1525500 (= lambda!335728 lambda!335679)))

(assert (=> d!1928416 (= (inv!83488 setElem!41679) (forall!15217 (exprs!5980 setElem!41679) lambda!335728))))

(declare-fun bs!1525501 () Bool)

(assert (= bs!1525501 d!1928416))

(declare-fun m!6993596 () Bool)

(assert (=> bs!1525501 m!6993596))

(assert (=> setNonEmpty!41679 d!1928416))

(assert (=> d!1928178 d!1928166))

(declare-fun d!1928418 () Bool)

(assert (=> d!1928418 (= (flatMap!1601 lt!2334746 lambda!335642) (dynLambda!25413 lambda!335642 lt!2334773))))

(assert (=> d!1928418 true))

(declare-fun _$13!3082 () Unit!157555)

(assert (=> d!1928418 (= (choose!45741 lt!2334746 lt!2334773 lambda!335642) _$13!3082)))

(declare-fun b_lambda!234267 () Bool)

(assert (=> (not b_lambda!234267) (not d!1928418)))

(declare-fun bs!1525502 () Bool)

(assert (= bs!1525502 d!1928418))

(assert (=> bs!1525502 m!6992828))

(assert (=> bs!1525502 m!6992990))

(assert (=> d!1928178 d!1928418))

(assert (=> d!1928200 d!1928406))

(assert (=> d!1928200 d!1928254))

(declare-fun d!1928420 () Bool)

(assert (=> d!1928420 (= (isEmpty!36427 (tail!11799 (exprs!5980 (h!70913 zl!343)))) (is-Nil!64463 (tail!11799 (exprs!5980 (h!70913 zl!343)))))))

(assert (=> b!6153837 d!1928420))

(declare-fun d!1928422 () Bool)

(assert (=> d!1928422 (= (tail!11799 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))))

(assert (=> b!6153837 d!1928422))

(assert (=> d!1928222 d!1928408))

(declare-fun d!1928424 () Bool)

(assert (=> d!1928424 (= (nullable!6089 (h!70911 (exprs!5980 lt!2334773))) (nullableFct!2053 (h!70911 (exprs!5980 lt!2334773))))))

(declare-fun bs!1525503 () Bool)

(assert (= bs!1525503 d!1928424))

(declare-fun m!6993598 () Bool)

(assert (=> bs!1525503 m!6993598))

(assert (=> b!6153796 d!1928424))

(declare-fun bs!1525504 () Bool)

(declare-fun d!1928426 () Bool)

(assert (= bs!1525504 (and d!1928426 d!1928392)))

(declare-fun lambda!335729 () Int)

(assert (=> bs!1525504 (= lambda!335729 lambda!335724)))

(declare-fun bs!1525505 () Bool)

(assert (= bs!1525505 (and d!1928426 d!1928394)))

(assert (=> bs!1525505 (= lambda!335729 lambda!335725)))

(declare-fun bs!1525506 () Bool)

(assert (= bs!1525506 (and d!1928426 d!1928412)))

(assert (=> bs!1525506 (= lambda!335729 lambda!335726)))

(assert (=> d!1928426 (= (nullableZipper!1877 lt!2334754) (exists!2442 lt!2334754 lambda!335729))))

(declare-fun bs!1525507 () Bool)

(assert (= bs!1525507 d!1928426))

(declare-fun m!6993600 () Bool)

(assert (=> bs!1525507 m!6993600))

(assert (=> b!6153971 d!1928426))

(declare-fun d!1928428 () Bool)

(assert (=> d!1928428 (= (isConcat!1036 lt!2334870) (is-Concat!24941 lt!2334870))))

(assert (=> b!6153833 d!1928428))

(declare-fun d!1928430 () Bool)

(declare-fun c!1107987 () Bool)

(assert (=> d!1928430 (= c!1107987 (isEmpty!36430 (tail!11798 (t!378079 s!2326))))))

(declare-fun e!3750101 () Bool)

(assert (=> d!1928430 (= (matchZipper!2108 (derivationStepZipper!2069 (set.union lt!2334770 lt!2334751) (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))) e!3750101)))

(declare-fun b!6154640 () Bool)

(assert (=> b!6154640 (= e!3750101 (nullableZipper!1877 (derivationStepZipper!2069 (set.union lt!2334770 lt!2334751) (head!12713 (t!378079 s!2326)))))))

(declare-fun b!6154641 () Bool)

(assert (=> b!6154641 (= e!3750101 (matchZipper!2108 (derivationStepZipper!2069 (derivationStepZipper!2069 (set.union lt!2334770 lt!2334751) (head!12713 (t!378079 s!2326))) (head!12713 (tail!11798 (t!378079 s!2326)))) (tail!11798 (tail!11798 (t!378079 s!2326)))))))

(assert (= (and d!1928430 c!1107987) b!6154640))

(assert (= (and d!1928430 (not c!1107987)) b!6154641))

(assert (=> d!1928430 m!6992960))

(declare-fun m!6993602 () Bool)

(assert (=> d!1928430 m!6993602))

(assert (=> b!6154640 m!6993112))

(declare-fun m!6993604 () Bool)

(assert (=> b!6154640 m!6993604))

(assert (=> b!6154641 m!6992960))

(declare-fun m!6993606 () Bool)

(assert (=> b!6154641 m!6993606))

(assert (=> b!6154641 m!6993112))

(assert (=> b!6154641 m!6993606))

(declare-fun m!6993608 () Bool)

(assert (=> b!6154641 m!6993608))

(assert (=> b!6154641 m!6992960))

(declare-fun m!6993610 () Bool)

(assert (=> b!6154641 m!6993610))

(assert (=> b!6154641 m!6993608))

(assert (=> b!6154641 m!6993610))

(declare-fun m!6993612 () Bool)

(assert (=> b!6154641 m!6993612))

(assert (=> b!6153976 d!1928430))

(declare-fun bs!1525508 () Bool)

(declare-fun d!1928432 () Bool)

(assert (= bs!1525508 (and d!1928432 b!6153643)))

(declare-fun lambda!335730 () Int)

(assert (=> bs!1525508 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335730 lambda!335642))))

(declare-fun bs!1525509 () Bool)

(assert (= bs!1525509 (and d!1928432 d!1928176)))

(assert (=> bs!1525509 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335730 lambda!335660))))

(assert (=> d!1928432 true))

(assert (=> d!1928432 (= (derivationStepZipper!2069 (set.union lt!2334770 lt!2334751) (head!12713 (t!378079 s!2326))) (flatMap!1601 (set.union lt!2334770 lt!2334751) lambda!335730))))

(declare-fun bs!1525510 () Bool)

(assert (= bs!1525510 d!1928432))

(declare-fun m!6993614 () Bool)

(assert (=> bs!1525510 m!6993614))

(assert (=> b!6153976 d!1928432))

(declare-fun d!1928434 () Bool)

(assert (=> d!1928434 (= (head!12713 (t!378079 s!2326)) (h!70912 (t!378079 s!2326)))))

(assert (=> b!6153976 d!1928434))

(declare-fun d!1928436 () Bool)

(assert (=> d!1928436 (= (tail!11798 (t!378079 s!2326)) (t!378079 (t!378079 s!2326)))))

(assert (=> b!6153976 d!1928436))

(assert (=> bs!1525428 d!1928236))

(declare-fun e!3750102 () (Set Context!10960))

(declare-fun call!512129 () (Set Context!10960))

(declare-fun b!6154642 () Bool)

(assert (=> b!6154642 (= e!3750102 (set.union call!512129 (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334773)))))) (h!70912 s!2326))))))

(declare-fun bm!512124 () Bool)

(assert (=> bm!512124 (= call!512129 (derivationStepZipperDown!1344 (h!70911 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334773))))) (Context!10961 (t!378078 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334773)))))) (h!70912 s!2326)))))

(declare-fun b!6154643 () Bool)

(declare-fun e!3750103 () (Set Context!10960))

(assert (=> b!6154643 (= e!3750102 e!3750103)))

(declare-fun c!1107989 () Bool)

(assert (=> b!6154643 (= c!1107989 (is-Cons!64463 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334773))))))))

(declare-fun b!6154644 () Bool)

(declare-fun e!3750104 () Bool)

(assert (=> b!6154644 (= e!3750104 (nullable!6089 (h!70911 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334773)))))))))

(declare-fun d!1928438 () Bool)

(declare-fun c!1107988 () Bool)

(assert (=> d!1928438 (= c!1107988 e!3750104)))

(declare-fun res!2549116 () Bool)

(assert (=> d!1928438 (=> (not res!2549116) (not e!3750104))))

(assert (=> d!1928438 (= res!2549116 (is-Cons!64463 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334773))))))))

(assert (=> d!1928438 (= (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 lt!2334773))) (h!70912 s!2326)) e!3750102)))

(declare-fun b!6154645 () Bool)

(assert (=> b!6154645 (= e!3750103 (as set.empty (Set Context!10960)))))

(declare-fun b!6154646 () Bool)

(assert (=> b!6154646 (= e!3750103 call!512129)))

(assert (= (and d!1928438 res!2549116) b!6154644))

(assert (= (and d!1928438 c!1107988) b!6154642))

(assert (= (and d!1928438 (not c!1107988)) b!6154643))

(assert (= (and b!6154643 c!1107989) b!6154646))

(assert (= (and b!6154643 (not c!1107989)) b!6154645))

(assert (= (or b!6154642 b!6154646) bm!512124))

(declare-fun m!6993616 () Bool)

(assert (=> b!6154642 m!6993616))

(declare-fun m!6993618 () Bool)

(assert (=> bm!512124 m!6993618))

(declare-fun m!6993620 () Bool)

(assert (=> b!6154644 m!6993620))

(assert (=> b!6153794 d!1928438))

(assert (=> bm!512006 d!1928406))

(assert (=> d!1928202 d!1928200))

(assert (=> d!1928202 d!1928198))

(declare-fun d!1928440 () Bool)

(assert (=> d!1928440 (= (matchR!8279 r!7292 s!2326) (matchRSpec!3197 r!7292 s!2326))))

(assert (=> d!1928440 true))

(declare-fun _$88!4707 () Unit!157555)

(assert (=> d!1928440 (= (choose!45744 r!7292 s!2326) _$88!4707)))

(declare-fun bs!1525511 () Bool)

(assert (= bs!1525511 d!1928440))

(assert (=> bs!1525511 m!6992834))

(assert (=> bs!1525511 m!6992832))

(assert (=> d!1928202 d!1928440))

(assert (=> d!1928202 d!1928254))

(declare-fun b!6154647 () Bool)

(declare-fun res!2549123 () Bool)

(declare-fun e!3750108 () Bool)

(assert (=> b!6154647 (=> res!2549123 e!3750108)))

(assert (=> b!6154647 (= res!2549123 (not (isEmpty!36430 (tail!11798 (_1!36378 (get!22246 lt!2334900))))))))

(declare-fun b!6154648 () Bool)

(declare-fun e!3750105 () Bool)

(assert (=> b!6154648 (= e!3750105 e!3750108)))

(declare-fun res!2549121 () Bool)

(assert (=> b!6154648 (=> res!2549121 e!3750108)))

(declare-fun call!512130 () Bool)

(assert (=> b!6154648 (= res!2549121 call!512130)))

(declare-fun b!6154649 () Bool)

(declare-fun e!3750109 () Bool)

(declare-fun lt!2334954 () Bool)

(assert (=> b!6154649 (= e!3750109 (not lt!2334954))))

(declare-fun b!6154650 () Bool)

(declare-fun e!3750106 () Bool)

(assert (=> b!6154650 (= e!3750106 (= (head!12713 (_1!36378 (get!22246 lt!2334900))) (c!1107723 (regOne!32704 r!7292))))))

(declare-fun b!6154651 () Bool)

(declare-fun e!3750110 () Bool)

(assert (=> b!6154651 (= e!3750110 (nullable!6089 (regOne!32704 r!7292)))))

(declare-fun b!6154652 () Bool)

(assert (=> b!6154652 (= e!3750110 (matchR!8279 (derivativeStep!4816 (regOne!32704 r!7292) (head!12713 (_1!36378 (get!22246 lt!2334900)))) (tail!11798 (_1!36378 (get!22246 lt!2334900)))))))

(declare-fun b!6154653 () Bool)

(declare-fun e!3750107 () Bool)

(assert (=> b!6154653 (= e!3750107 (= lt!2334954 call!512130))))

(declare-fun bm!512125 () Bool)

(assert (=> bm!512125 (= call!512130 (isEmpty!36430 (_1!36378 (get!22246 lt!2334900))))))

(declare-fun d!1928442 () Bool)

(assert (=> d!1928442 e!3750107))

(declare-fun c!1107991 () Bool)

(assert (=> d!1928442 (= c!1107991 (is-EmptyExpr!16096 (regOne!32704 r!7292)))))

(assert (=> d!1928442 (= lt!2334954 e!3750110)))

(declare-fun c!1107990 () Bool)

(assert (=> d!1928442 (= c!1107990 (isEmpty!36430 (_1!36378 (get!22246 lt!2334900))))))

(assert (=> d!1928442 (validRegex!7832 (regOne!32704 r!7292))))

(assert (=> d!1928442 (= (matchR!8279 (regOne!32704 r!7292) (_1!36378 (get!22246 lt!2334900))) lt!2334954)))

(declare-fun b!6154654 () Bool)

(declare-fun e!3750111 () Bool)

(assert (=> b!6154654 (= e!3750111 e!3750105)))

(declare-fun res!2549124 () Bool)

(assert (=> b!6154654 (=> (not res!2549124) (not e!3750105))))

(assert (=> b!6154654 (= res!2549124 (not lt!2334954))))

(declare-fun b!6154655 () Bool)

(declare-fun res!2549120 () Bool)

(assert (=> b!6154655 (=> (not res!2549120) (not e!3750106))))

(assert (=> b!6154655 (= res!2549120 (isEmpty!36430 (tail!11798 (_1!36378 (get!22246 lt!2334900)))))))

(declare-fun b!6154656 () Bool)

(declare-fun res!2549122 () Bool)

(assert (=> b!6154656 (=> res!2549122 e!3750111)))

(assert (=> b!6154656 (= res!2549122 e!3750106)))

(declare-fun res!2549117 () Bool)

(assert (=> b!6154656 (=> (not res!2549117) (not e!3750106))))

(assert (=> b!6154656 (= res!2549117 lt!2334954)))

(declare-fun b!6154657 () Bool)

(declare-fun res!2549118 () Bool)

(assert (=> b!6154657 (=> (not res!2549118) (not e!3750106))))

(assert (=> b!6154657 (= res!2549118 (not call!512130))))

(declare-fun b!6154658 () Bool)

(assert (=> b!6154658 (= e!3750108 (not (= (head!12713 (_1!36378 (get!22246 lt!2334900))) (c!1107723 (regOne!32704 r!7292)))))))

(declare-fun b!6154659 () Bool)

(declare-fun res!2549119 () Bool)

(assert (=> b!6154659 (=> res!2549119 e!3750111)))

(assert (=> b!6154659 (= res!2549119 (not (is-ElementMatch!16096 (regOne!32704 r!7292))))))

(assert (=> b!6154659 (= e!3750109 e!3750111)))

(declare-fun b!6154660 () Bool)

(assert (=> b!6154660 (= e!3750107 e!3750109)))

(declare-fun c!1107992 () Bool)

(assert (=> b!6154660 (= c!1107992 (is-EmptyLang!16096 (regOne!32704 r!7292)))))

(assert (= (and d!1928442 c!1107990) b!6154651))

(assert (= (and d!1928442 (not c!1107990)) b!6154652))

(assert (= (and d!1928442 c!1107991) b!6154653))

(assert (= (and d!1928442 (not c!1107991)) b!6154660))

(assert (= (and b!6154660 c!1107992) b!6154649))

(assert (= (and b!6154660 (not c!1107992)) b!6154659))

(assert (= (and b!6154659 (not res!2549119)) b!6154656))

(assert (= (and b!6154656 res!2549117) b!6154657))

(assert (= (and b!6154657 res!2549118) b!6154655))

(assert (= (and b!6154655 res!2549120) b!6154650))

(assert (= (and b!6154656 (not res!2549122)) b!6154654))

(assert (= (and b!6154654 res!2549124) b!6154648))

(assert (= (and b!6154648 (not res!2549121)) b!6154647))

(assert (= (and b!6154647 (not res!2549123)) b!6154658))

(assert (= (or b!6154653 b!6154648 b!6154657) bm!512125))

(declare-fun m!6993622 () Bool)

(assert (=> b!6154647 m!6993622))

(assert (=> b!6154647 m!6993622))

(declare-fun m!6993624 () Bool)

(assert (=> b!6154647 m!6993624))

(declare-fun m!6993626 () Bool)

(assert (=> b!6154651 m!6993626))

(declare-fun m!6993628 () Bool)

(assert (=> b!6154658 m!6993628))

(declare-fun m!6993630 () Bool)

(assert (=> d!1928442 m!6993630))

(assert (=> d!1928442 m!6993174))

(assert (=> b!6154655 m!6993622))

(assert (=> b!6154655 m!6993622))

(assert (=> b!6154655 m!6993624))

(assert (=> b!6154652 m!6993628))

(assert (=> b!6154652 m!6993628))

(declare-fun m!6993632 () Bool)

(assert (=> b!6154652 m!6993632))

(assert (=> b!6154652 m!6993622))

(assert (=> b!6154652 m!6993632))

(assert (=> b!6154652 m!6993622))

(declare-fun m!6993634 () Bool)

(assert (=> b!6154652 m!6993634))

(assert (=> bm!512125 m!6993630))

(assert (=> b!6154650 m!6993628))

(assert (=> b!6154051 d!1928442))

(declare-fun d!1928444 () Bool)

(assert (=> d!1928444 (= (get!22246 lt!2334900) (v!52125 lt!2334900))))

(assert (=> b!6154051 d!1928444))

(declare-fun d!1928446 () Bool)

(assert (=> d!1928446 (= (nullable!6089 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292)))) (nullableFct!2053 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292)))))))

(declare-fun bs!1525512 () Bool)

(assert (= bs!1525512 d!1928446))

(declare-fun m!6993636 () Bool)

(assert (=> bs!1525512 m!6993636))

(assert (=> b!6154105 d!1928446))

(declare-fun d!1928448 () Bool)

(declare-fun c!1107993 () Bool)

(assert (=> d!1928448 (= c!1107993 (isEmpty!36430 (tail!11798 (t!378079 s!2326))))))

(declare-fun e!3750112 () Bool)

(assert (=> d!1928448 (= (matchZipper!2108 (derivationStepZipper!2069 (set.union lt!2334754 lt!2334751) (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))) e!3750112)))

(declare-fun b!6154661 () Bool)

(assert (=> b!6154661 (= e!3750112 (nullableZipper!1877 (derivationStepZipper!2069 (set.union lt!2334754 lt!2334751) (head!12713 (t!378079 s!2326)))))))

(declare-fun b!6154662 () Bool)

(assert (=> b!6154662 (= e!3750112 (matchZipper!2108 (derivationStepZipper!2069 (derivationStepZipper!2069 (set.union lt!2334754 lt!2334751) (head!12713 (t!378079 s!2326))) (head!12713 (tail!11798 (t!378079 s!2326)))) (tail!11798 (tail!11798 (t!378079 s!2326)))))))

(assert (= (and d!1928448 c!1107993) b!6154661))

(assert (= (and d!1928448 (not c!1107993)) b!6154662))

(assert (=> d!1928448 m!6992960))

(assert (=> d!1928448 m!6993602))

(assert (=> b!6154661 m!6992998))

(declare-fun m!6993638 () Bool)

(assert (=> b!6154661 m!6993638))

(assert (=> b!6154662 m!6992960))

(assert (=> b!6154662 m!6993606))

(assert (=> b!6154662 m!6992998))

(assert (=> b!6154662 m!6993606))

(declare-fun m!6993640 () Bool)

(assert (=> b!6154662 m!6993640))

(assert (=> b!6154662 m!6992960))

(assert (=> b!6154662 m!6993610))

(assert (=> b!6154662 m!6993640))

(assert (=> b!6154662 m!6993610))

(declare-fun m!6993642 () Bool)

(assert (=> b!6154662 m!6993642))

(assert (=> b!6153810 d!1928448))

(declare-fun bs!1525513 () Bool)

(declare-fun d!1928450 () Bool)

(assert (= bs!1525513 (and d!1928450 b!6153643)))

(declare-fun lambda!335731 () Int)

(assert (=> bs!1525513 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335731 lambda!335642))))

(declare-fun bs!1525514 () Bool)

(assert (= bs!1525514 (and d!1928450 d!1928176)))

(assert (=> bs!1525514 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335731 lambda!335660))))

(declare-fun bs!1525515 () Bool)

(assert (= bs!1525515 (and d!1928450 d!1928432)))

(assert (=> bs!1525515 (= lambda!335731 lambda!335730)))

(assert (=> d!1928450 true))

(assert (=> d!1928450 (= (derivationStepZipper!2069 (set.union lt!2334754 lt!2334751) (head!12713 (t!378079 s!2326))) (flatMap!1601 (set.union lt!2334754 lt!2334751) lambda!335731))))

(declare-fun bs!1525516 () Bool)

(assert (= bs!1525516 d!1928450))

(declare-fun m!6993644 () Bool)

(assert (=> bs!1525516 m!6993644))

(assert (=> b!6153810 d!1928450))

(assert (=> b!6153810 d!1928434))

(assert (=> b!6153810 d!1928436))

(declare-fun d!1928452 () Bool)

(assert (=> d!1928452 (= (isEmpty!36427 (tail!11799 (unfocusZipperList!1517 zl!343))) (is-Nil!64463 (tail!11799 (unfocusZipperList!1517 zl!343))))))

(assert (=> b!6153960 d!1928452))

(declare-fun d!1928454 () Bool)

(assert (=> d!1928454 (= (tail!11799 (unfocusZipperList!1517 zl!343)) (t!378078 (unfocusZipperList!1517 zl!343)))))

(assert (=> b!6153960 d!1928454))

(declare-fun bs!1525517 () Bool)

(declare-fun d!1928456 () Bool)

(assert (= bs!1525517 (and d!1928456 d!1928392)))

(declare-fun lambda!335732 () Int)

(assert (=> bs!1525517 (= lambda!335732 lambda!335724)))

(declare-fun bs!1525518 () Bool)

(assert (= bs!1525518 (and d!1928456 d!1928394)))

(assert (=> bs!1525518 (= lambda!335732 lambda!335725)))

(declare-fun bs!1525519 () Bool)

(assert (= bs!1525519 (and d!1928456 d!1928412)))

(assert (=> bs!1525519 (= lambda!335732 lambda!335726)))

(declare-fun bs!1525520 () Bool)

(assert (= bs!1525520 (and d!1928456 d!1928426)))

(assert (=> bs!1525520 (= lambda!335732 lambda!335729)))

(assert (=> d!1928456 (= (nullableZipper!1877 lt!2334757) (exists!2442 lt!2334757 lambda!335732))))

(declare-fun bs!1525521 () Bool)

(assert (= bs!1525521 d!1928456))

(declare-fun m!6993646 () Bool)

(assert (=> bs!1525521 m!6993646))

(assert (=> b!6154027 d!1928456))

(declare-fun d!1928458 () Bool)

(assert (=> d!1928458 (= (Exists!3166 lambda!335685) (choose!45745 lambda!335685))))

(declare-fun bs!1525522 () Bool)

(assert (= bs!1525522 d!1928458))

(declare-fun m!6993648 () Bool)

(assert (=> bs!1525522 m!6993648))

(assert (=> d!1928246 d!1928458))

(declare-fun d!1928460 () Bool)

(assert (=> d!1928460 (= (Exists!3166 lambda!335686) (choose!45745 lambda!335686))))

(declare-fun bs!1525523 () Bool)

(assert (= bs!1525523 d!1928460))

(declare-fun m!6993650 () Bool)

(assert (=> bs!1525523 m!6993650))

(assert (=> d!1928246 d!1928460))

(declare-fun bs!1525524 () Bool)

(declare-fun d!1928462 () Bool)

(assert (= bs!1525524 (and d!1928462 d!1928252)))

(declare-fun lambda!335737 () Int)

(assert (=> bs!1525524 (= lambda!335737 lambda!335689)))

(declare-fun bs!1525525 () Bool)

(assert (= bs!1525525 (and d!1928462 b!6153633)))

(assert (=> bs!1525525 (= lambda!335737 lambda!335640)))

(declare-fun bs!1525526 () Bool)

(assert (= bs!1525526 (and d!1928462 b!6153879)))

(assert (=> bs!1525526 (not (= lambda!335737 lambda!335672))))

(declare-fun bs!1525527 () Bool)

(assert (= bs!1525527 (and d!1928462 b!6153881)))

(assert (=> bs!1525527 (not (= lambda!335737 lambda!335673))))

(declare-fun bs!1525528 () Bool)

(assert (= bs!1525528 (and d!1928462 d!1928246)))

(assert (=> bs!1525528 (not (= lambda!335737 lambda!335686))))

(assert (=> bs!1525525 (not (= lambda!335737 lambda!335641))))

(assert (=> bs!1525528 (= lambda!335737 lambda!335685)))

(assert (=> d!1928462 true))

(assert (=> d!1928462 true))

(assert (=> d!1928462 true))

(declare-fun lambda!335738 () Int)

(assert (=> bs!1525524 (not (= lambda!335738 lambda!335689))))

(assert (=> bs!1525525 (not (= lambda!335738 lambda!335640))))

(assert (=> bs!1525526 (not (= lambda!335738 lambda!335672))))

(assert (=> bs!1525527 (= lambda!335738 lambda!335673)))

(declare-fun bs!1525529 () Bool)

(assert (= bs!1525529 d!1928462))

(assert (=> bs!1525529 (not (= lambda!335738 lambda!335737))))

(assert (=> bs!1525528 (= lambda!335738 lambda!335686)))

(assert (=> bs!1525525 (= lambda!335738 lambda!335641)))

(assert (=> bs!1525528 (not (= lambda!335738 lambda!335685))))

(assert (=> d!1928462 true))

(assert (=> d!1928462 true))

(assert (=> d!1928462 true))

(assert (=> d!1928462 (= (Exists!3166 lambda!335737) (Exists!3166 lambda!335738))))

(assert (=> d!1928462 true))

(declare-fun _$90!1893 () Unit!157555)

(assert (=> d!1928462 (= (choose!45746 (regOne!32704 r!7292) (regTwo!32704 r!7292) s!2326) _$90!1893)))

(declare-fun m!6993652 () Bool)

(assert (=> bs!1525529 m!6993652))

(declare-fun m!6993654 () Bool)

(assert (=> bs!1525529 m!6993654))

(assert (=> d!1928246 d!1928462))

(declare-fun b!6154671 () Bool)

(declare-fun e!3750117 () Bool)

(declare-fun e!3750119 () Bool)

(assert (=> b!6154671 (= e!3750117 e!3750119)))

(declare-fun res!2549133 () Bool)

(assert (=> b!6154671 (=> (not res!2549133) (not e!3750119))))

(declare-fun call!512132 () Bool)

(assert (=> b!6154671 (= res!2549133 call!512132)))

(declare-fun b!6154672 () Bool)

(declare-fun e!3750122 () Bool)

(declare-fun e!3750120 () Bool)

(assert (=> b!6154672 (= e!3750122 e!3750120)))

(declare-fun c!1107994 () Bool)

(assert (=> b!6154672 (= c!1107994 (is-Star!16096 (regOne!32704 r!7292)))))

(declare-fun b!6154673 () Bool)

(declare-fun e!3750118 () Bool)

(declare-fun call!512131 () Bool)

(assert (=> b!6154673 (= e!3750118 call!512131)))

(declare-fun bm!512127 () Bool)

(declare-fun call!512133 () Bool)

(assert (=> bm!512127 (= call!512133 call!512131)))

(declare-fun bm!512128 () Bool)

(declare-fun c!1107995 () Bool)

(assert (=> bm!512128 (= call!512132 (validRegex!7832 (ite c!1107995 (regOne!32705 (regOne!32704 r!7292)) (regOne!32704 (regOne!32704 r!7292)))))))

(declare-fun b!6154674 () Bool)

(declare-fun e!3750121 () Bool)

(assert (=> b!6154674 (= e!3750120 e!3750121)))

(assert (=> b!6154674 (= c!1107995 (is-Union!16096 (regOne!32704 r!7292)))))

(declare-fun b!6154675 () Bool)

(declare-fun e!3750123 () Bool)

(assert (=> b!6154675 (= e!3750123 call!512133)))

(declare-fun b!6154676 () Bool)

(declare-fun res!2549136 () Bool)

(assert (=> b!6154676 (=> res!2549136 e!3750117)))

(assert (=> b!6154676 (= res!2549136 (not (is-Concat!24941 (regOne!32704 r!7292))))))

(assert (=> b!6154676 (= e!3750121 e!3750117)))

(declare-fun b!6154677 () Bool)

(assert (=> b!6154677 (= e!3750119 call!512133)))

(declare-fun bm!512126 () Bool)

(assert (=> bm!512126 (= call!512131 (validRegex!7832 (ite c!1107994 (reg!16425 (regOne!32704 r!7292)) (ite c!1107995 (regTwo!32705 (regOne!32704 r!7292)) (regTwo!32704 (regOne!32704 r!7292))))))))

(declare-fun d!1928464 () Bool)

(declare-fun res!2549135 () Bool)

(assert (=> d!1928464 (=> res!2549135 e!3750122)))

(assert (=> d!1928464 (= res!2549135 (is-ElementMatch!16096 (regOne!32704 r!7292)))))

(assert (=> d!1928464 (= (validRegex!7832 (regOne!32704 r!7292)) e!3750122)))

(declare-fun b!6154678 () Bool)

(declare-fun res!2549134 () Bool)

(assert (=> b!6154678 (=> (not res!2549134) (not e!3750123))))

(assert (=> b!6154678 (= res!2549134 call!512132)))

(assert (=> b!6154678 (= e!3750121 e!3750123)))

(declare-fun b!6154679 () Bool)

(assert (=> b!6154679 (= e!3750120 e!3750118)))

(declare-fun res!2549137 () Bool)

(assert (=> b!6154679 (= res!2549137 (not (nullable!6089 (reg!16425 (regOne!32704 r!7292)))))))

(assert (=> b!6154679 (=> (not res!2549137) (not e!3750118))))

(assert (= (and d!1928464 (not res!2549135)) b!6154672))

(assert (= (and b!6154672 c!1107994) b!6154679))

(assert (= (and b!6154672 (not c!1107994)) b!6154674))

(assert (= (and b!6154679 res!2549137) b!6154673))

(assert (= (and b!6154674 c!1107995) b!6154678))

(assert (= (and b!6154674 (not c!1107995)) b!6154676))

(assert (= (and b!6154678 res!2549134) b!6154675))

(assert (= (and b!6154676 (not res!2549136)) b!6154671))

(assert (= (and b!6154671 res!2549133) b!6154677))

(assert (= (or b!6154675 b!6154677) bm!512127))

(assert (= (or b!6154678 b!6154671) bm!512128))

(assert (= (or b!6154673 bm!512127) bm!512126))

(declare-fun m!6993656 () Bool)

(assert (=> bm!512128 m!6993656))

(declare-fun m!6993658 () Bool)

(assert (=> bm!512126 m!6993658))

(declare-fun m!6993660 () Bool)

(assert (=> b!6154679 m!6993660))

(assert (=> d!1928246 d!1928464))

(declare-fun bs!1525530 () Bool)

(declare-fun d!1928466 () Bool)

(assert (= bs!1525530 (and d!1928466 d!1928218)))

(declare-fun lambda!335739 () Int)

(assert (=> bs!1525530 (= lambda!335739 lambda!335680)))

(declare-fun bs!1525531 () Bool)

(assert (= bs!1525531 (and d!1928466 d!1928204)))

(assert (=> bs!1525531 (= lambda!335739 lambda!335676)))

(declare-fun bs!1525532 () Bool)

(assert (= bs!1525532 (and d!1928466 d!1928186)))

(assert (=> bs!1525532 (= lambda!335739 lambda!335663)))

(declare-fun bs!1525533 () Bool)

(assert (= bs!1525533 (and d!1928466 d!1928414)))

(assert (=> bs!1525533 (= lambda!335739 lambda!335727)))

(declare-fun bs!1525534 () Bool)

(assert (= bs!1525534 (and d!1928466 d!1928190)))

(assert (=> bs!1525534 (= lambda!335739 lambda!335666)))

(declare-fun bs!1525535 () Bool)

(assert (= bs!1525535 (and d!1928466 d!1928206)))

(assert (=> bs!1525535 (= lambda!335739 lambda!335679)))

(declare-fun bs!1525536 () Bool)

(assert (= bs!1525536 (and d!1928466 d!1928194)))

(assert (=> bs!1525536 (= lambda!335739 lambda!335667)))

(declare-fun bs!1525537 () Bool)

(assert (= bs!1525537 (and d!1928466 d!1928416)))

(assert (=> bs!1525537 (= lambda!335739 lambda!335728)))

(declare-fun b!6154680 () Bool)

(declare-fun e!3750128 () Bool)

(declare-fun lt!2334955 () Regex!16096)

(assert (=> b!6154680 (= e!3750128 (= lt!2334955 (head!12714 (t!378078 (unfocusZipperList!1517 zl!343)))))))

(declare-fun b!6154681 () Bool)

(declare-fun e!3750129 () Regex!16096)

(assert (=> b!6154681 (= e!3750129 (Union!16096 (h!70911 (t!378078 (unfocusZipperList!1517 zl!343))) (generalisedUnion!1940 (t!378078 (t!378078 (unfocusZipperList!1517 zl!343))))))))

(declare-fun b!6154682 () Bool)

(declare-fun e!3750127 () Bool)

(declare-fun e!3750125 () Bool)

(assert (=> b!6154682 (= e!3750127 e!3750125)))

(declare-fun c!1107998 () Bool)

(assert (=> b!6154682 (= c!1107998 (isEmpty!36427 (t!378078 (unfocusZipperList!1517 zl!343))))))

(declare-fun b!6154683 () Bool)

(declare-fun e!3750124 () Bool)

(assert (=> b!6154683 (= e!3750124 (isEmpty!36427 (t!378078 (t!378078 (unfocusZipperList!1517 zl!343)))))))

(declare-fun b!6154684 () Bool)

(declare-fun e!3750126 () Regex!16096)

(assert (=> b!6154684 (= e!3750126 e!3750129)))

(declare-fun c!1107997 () Bool)

(assert (=> b!6154684 (= c!1107997 (is-Cons!64463 (t!378078 (unfocusZipperList!1517 zl!343))))))

(declare-fun b!6154685 () Bool)

(assert (=> b!6154685 (= e!3750126 (h!70911 (t!378078 (unfocusZipperList!1517 zl!343))))))

(declare-fun b!6154686 () Bool)

(assert (=> b!6154686 (= e!3750125 (isEmptyLang!1523 lt!2334955))))

(declare-fun b!6154687 () Bool)

(assert (=> b!6154687 (= e!3750128 (isUnion!953 lt!2334955))))

(assert (=> d!1928466 e!3750127))

(declare-fun res!2549139 () Bool)

(assert (=> d!1928466 (=> (not res!2549139) (not e!3750127))))

(assert (=> d!1928466 (= res!2549139 (validRegex!7832 lt!2334955))))

(assert (=> d!1928466 (= lt!2334955 e!3750126)))

(declare-fun c!1107999 () Bool)

(assert (=> d!1928466 (= c!1107999 e!3750124)))

(declare-fun res!2549138 () Bool)

(assert (=> d!1928466 (=> (not res!2549138) (not e!3750124))))

(assert (=> d!1928466 (= res!2549138 (is-Cons!64463 (t!378078 (unfocusZipperList!1517 zl!343))))))

(assert (=> d!1928466 (forall!15217 (t!378078 (unfocusZipperList!1517 zl!343)) lambda!335739)))

(assert (=> d!1928466 (= (generalisedUnion!1940 (t!378078 (unfocusZipperList!1517 zl!343))) lt!2334955)))

(declare-fun b!6154688 () Bool)

(assert (=> b!6154688 (= e!3750129 EmptyLang!16096)))

(declare-fun b!6154689 () Bool)

(assert (=> b!6154689 (= e!3750125 e!3750128)))

(declare-fun c!1107996 () Bool)

(assert (=> b!6154689 (= c!1107996 (isEmpty!36427 (tail!11799 (t!378078 (unfocusZipperList!1517 zl!343)))))))

(assert (= (and d!1928466 res!2549138) b!6154683))

(assert (= (and d!1928466 c!1107999) b!6154685))

(assert (= (and d!1928466 (not c!1107999)) b!6154684))

(assert (= (and b!6154684 c!1107997) b!6154681))

(assert (= (and b!6154684 (not c!1107997)) b!6154688))

(assert (= (and d!1928466 res!2549139) b!6154682))

(assert (= (and b!6154682 c!1107998) b!6154686))

(assert (= (and b!6154682 (not c!1107998)) b!6154689))

(assert (= (and b!6154689 c!1107996) b!6154680))

(assert (= (and b!6154689 (not c!1107996)) b!6154687))

(declare-fun m!6993662 () Bool)

(assert (=> d!1928466 m!6993662))

(declare-fun m!6993664 () Bool)

(assert (=> d!1928466 m!6993664))

(assert (=> b!6154682 m!6993070))

(declare-fun m!6993666 () Bool)

(assert (=> b!6154687 m!6993666))

(declare-fun m!6993668 () Bool)

(assert (=> b!6154680 m!6993668))

(declare-fun m!6993670 () Bool)

(assert (=> b!6154683 m!6993670))

(declare-fun m!6993672 () Bool)

(assert (=> b!6154689 m!6993672))

(assert (=> b!6154689 m!6993672))

(declare-fun m!6993674 () Bool)

(assert (=> b!6154689 m!6993674))

(declare-fun m!6993676 () Bool)

(assert (=> b!6154686 m!6993676))

(declare-fun m!6993678 () Bool)

(assert (=> b!6154681 m!6993678))

(assert (=> b!6153952 d!1928466))

(assert (=> d!1928212 d!1928408))

(declare-fun d!1928468 () Bool)

(assert (=> d!1928468 (= (nullable!6089 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343))))) (nullableFct!2053 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343))))))))

(declare-fun bs!1525538 () Bool)

(assert (= bs!1525538 d!1928468))

(declare-fun m!6993680 () Bool)

(assert (=> bs!1525538 m!6993680))

(assert (=> b!6154019 d!1928468))

(declare-fun d!1928470 () Bool)

(declare-fun c!1108000 () Bool)

(assert (=> d!1928470 (= c!1108000 (isEmpty!36430 (tail!11798 (t!378079 s!2326))))))

(declare-fun e!3750130 () Bool)

(assert (=> d!1928470 (= (matchZipper!2108 (derivationStepZipper!2069 lt!2334745 (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))) e!3750130)))

(declare-fun b!6154690 () Bool)

(assert (=> b!6154690 (= e!3750130 (nullableZipper!1877 (derivationStepZipper!2069 lt!2334745 (head!12713 (t!378079 s!2326)))))))

(declare-fun b!6154691 () Bool)

(assert (=> b!6154691 (= e!3750130 (matchZipper!2108 (derivationStepZipper!2069 (derivationStepZipper!2069 lt!2334745 (head!12713 (t!378079 s!2326))) (head!12713 (tail!11798 (t!378079 s!2326)))) (tail!11798 (tail!11798 (t!378079 s!2326)))))))

(assert (= (and d!1928470 c!1108000) b!6154690))

(assert (= (and d!1928470 (not c!1108000)) b!6154691))

(assert (=> d!1928470 m!6992960))

(assert (=> d!1928470 m!6993602))

(assert (=> b!6154690 m!6993092))

(declare-fun m!6993682 () Bool)

(assert (=> b!6154690 m!6993682))

(assert (=> b!6154691 m!6992960))

(assert (=> b!6154691 m!6993606))

(assert (=> b!6154691 m!6993092))

(assert (=> b!6154691 m!6993606))

(declare-fun m!6993684 () Bool)

(assert (=> b!6154691 m!6993684))

(assert (=> b!6154691 m!6992960))

(assert (=> b!6154691 m!6993610))

(assert (=> b!6154691 m!6993684))

(assert (=> b!6154691 m!6993610))

(declare-fun m!6993686 () Bool)

(assert (=> b!6154691 m!6993686))

(assert (=> b!6153970 d!1928470))

(declare-fun bs!1525539 () Bool)

(declare-fun d!1928472 () Bool)

(assert (= bs!1525539 (and d!1928472 b!6153643)))

(declare-fun lambda!335740 () Int)

(assert (=> bs!1525539 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335740 lambda!335642))))

(declare-fun bs!1525540 () Bool)

(assert (= bs!1525540 (and d!1928472 d!1928176)))

(assert (=> bs!1525540 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335740 lambda!335660))))

(declare-fun bs!1525541 () Bool)

(assert (= bs!1525541 (and d!1928472 d!1928432)))

(assert (=> bs!1525541 (= lambda!335740 lambda!335730)))

(declare-fun bs!1525542 () Bool)

(assert (= bs!1525542 (and d!1928472 d!1928450)))

(assert (=> bs!1525542 (= lambda!335740 lambda!335731)))

(assert (=> d!1928472 true))

(assert (=> d!1928472 (= (derivationStepZipper!2069 lt!2334745 (head!12713 (t!378079 s!2326))) (flatMap!1601 lt!2334745 lambda!335740))))

(declare-fun bs!1525543 () Bool)

(assert (= bs!1525543 d!1928472))

(declare-fun m!6993688 () Bool)

(assert (=> bs!1525543 m!6993688))

(assert (=> b!6153970 d!1928472))

(assert (=> b!6153970 d!1928434))

(assert (=> b!6153970 d!1928436))

(declare-fun bm!512129 () Bool)

(declare-fun call!512135 () List!64587)

(declare-fun call!512138 () List!64587)

(assert (=> bm!512129 (= call!512135 call!512138)))

(declare-fun b!6154692 () Bool)

(declare-fun e!3750133 () (Set Context!10960))

(declare-fun call!512134 () (Set Context!10960))

(declare-fun call!512136 () (Set Context!10960))

(assert (=> b!6154692 (= e!3750133 (set.union call!512134 call!512136))))

(declare-fun b!6154693 () Bool)

(declare-fun c!1108003 () Bool)

(assert (=> b!6154693 (= c!1108003 (is-Star!16096 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun e!3750136 () (Set Context!10960))

(declare-fun e!3750134 () (Set Context!10960))

(assert (=> b!6154693 (= e!3750136 e!3750134)))

(declare-fun b!6154694 () Bool)

(declare-fun e!3750135 () (Set Context!10960))

(assert (=> b!6154694 (= e!3750135 e!3750133)))

(declare-fun c!1108002 () Bool)

(assert (=> b!6154694 (= c!1108002 (is-Union!16096 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun b!6154695 () Bool)

(declare-fun e!3750132 () (Set Context!10960))

(assert (=> b!6154695 (= e!3750132 e!3750136)))

(declare-fun c!1108004 () Bool)

(assert (=> b!6154695 (= c!1108004 (is-Concat!24941 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun b!6154696 () Bool)

(assert (=> b!6154696 (= e!3750134 (as set.empty (Set Context!10960)))))

(declare-fun bm!512131 () Bool)

(declare-fun c!1108005 () Bool)

(assert (=> bm!512131 (= call!512136 (derivationStepZipperDown!1344 (ite c!1108002 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1108005 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1108004 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343))))))) (ite (or c!1108002 c!1108005) (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343)))) (Context!10961 call!512135)) (h!70912 s!2326)))))

(declare-fun b!6154697 () Bool)

(declare-fun e!3750131 () Bool)

(assert (=> b!6154697 (= c!1108005 e!3750131)))

(declare-fun res!2549140 () Bool)

(assert (=> b!6154697 (=> (not res!2549140) (not e!3750131))))

(assert (=> b!6154697 (= res!2549140 (is-Concat!24941 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(assert (=> b!6154697 (= e!3750133 e!3750132)))

(declare-fun b!6154698 () Bool)

(declare-fun call!512137 () (Set Context!10960))

(assert (=> b!6154698 (= e!3750134 call!512137)))

(declare-fun b!6154699 () Bool)

(assert (=> b!6154699 (= e!3750135 (set.insert (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343)))) (as set.empty (Set Context!10960))))))

(declare-fun bm!512132 () Bool)

(declare-fun call!512139 () (Set Context!10960))

(assert (=> bm!512132 (= call!512137 call!512139)))

(declare-fun b!6154700 () Bool)

(assert (=> b!6154700 (= e!3750132 (set.union call!512134 call!512139))))

(declare-fun bm!512130 () Bool)

(assert (=> bm!512130 (= call!512138 ($colon$colon!1973 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343))))) (ite (or c!1108005 c!1108004) (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (h!70911 (exprs!5980 (h!70913 zl!343))))))))

(declare-fun d!1928474 () Bool)

(declare-fun c!1108001 () Bool)

(assert (=> d!1928474 (= c!1108001 (and (is-ElementMatch!16096 (h!70911 (exprs!5980 (h!70913 zl!343)))) (= (c!1107723 (h!70911 (exprs!5980 (h!70913 zl!343)))) (h!70912 s!2326))))))

(assert (=> d!1928474 (= (derivationStepZipperDown!1344 (h!70911 (exprs!5980 (h!70913 zl!343))) (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343)))) (h!70912 s!2326)) e!3750135)))

(declare-fun bm!512133 () Bool)

(assert (=> bm!512133 (= call!512139 call!512136)))

(declare-fun bm!512134 () Bool)

(assert (=> bm!512134 (= call!512134 (derivationStepZipperDown!1344 (ite c!1108002 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343))))) (ite c!1108002 (Context!10961 (t!378078 (exprs!5980 (h!70913 zl!343)))) (Context!10961 call!512138)) (h!70912 s!2326)))))

(declare-fun b!6154701 () Bool)

(assert (=> b!6154701 (= e!3750136 call!512137)))

(declare-fun b!6154702 () Bool)

(assert (=> b!6154702 (= e!3750131 (nullable!6089 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343))))))))

(assert (= (and d!1928474 c!1108001) b!6154699))

(assert (= (and d!1928474 (not c!1108001)) b!6154694))

(assert (= (and b!6154694 c!1108002) b!6154692))

(assert (= (and b!6154694 (not c!1108002)) b!6154697))

(assert (= (and b!6154697 res!2549140) b!6154702))

(assert (= (and b!6154697 c!1108005) b!6154700))

(assert (= (and b!6154697 (not c!1108005)) b!6154695))

(assert (= (and b!6154695 c!1108004) b!6154701))

(assert (= (and b!6154695 (not c!1108004)) b!6154693))

(assert (= (and b!6154693 c!1108003) b!6154698))

(assert (= (and b!6154693 (not c!1108003)) b!6154696))

(assert (= (or b!6154701 b!6154698) bm!512129))

(assert (= (or b!6154701 b!6154698) bm!512132))

(assert (= (or b!6154700 bm!512129) bm!512130))

(assert (= (or b!6154700 bm!512132) bm!512133))

(assert (= (or b!6154692 bm!512133) bm!512131))

(assert (= (or b!6154692 b!6154700) bm!512134))

(declare-fun m!6993690 () Bool)

(assert (=> bm!512131 m!6993690))

(declare-fun m!6993692 () Bool)

(assert (=> bm!512130 m!6993692))

(declare-fun m!6993694 () Bool)

(assert (=> b!6154699 m!6993694))

(declare-fun m!6993696 () Bool)

(assert (=> bm!512134 m!6993696))

(assert (=> b!6154702 m!6993146))

(assert (=> bm!512027 d!1928474))

(declare-fun d!1928476 () Bool)

(assert (=> d!1928476 (= (head!12713 s!2326) (h!70912 s!2326))))

(assert (=> b!6153920 d!1928476))

(assert (=> d!1928182 d!1928408))

(assert (=> d!1928180 d!1928182))

(assert (=> d!1928180 d!1928214))

(declare-fun e!3750137 () Bool)

(declare-fun d!1928478 () Bool)

(assert (=> d!1928478 (= (matchZipper!2108 (set.union lt!2334754 lt!2334751) (t!378079 s!2326)) e!3750137)))

(declare-fun res!2549141 () Bool)

(assert (=> d!1928478 (=> res!2549141 e!3750137)))

(assert (=> d!1928478 (= res!2549141 (matchZipper!2108 lt!2334754 (t!378079 s!2326)))))

(assert (=> d!1928478 true))

(declare-fun _$48!1706 () Unit!157555)

(assert (=> d!1928478 (= (choose!45742 lt!2334754 lt!2334751 (t!378079 s!2326)) _$48!1706)))

(declare-fun b!6154703 () Bool)

(assert (=> b!6154703 (= e!3750137 (matchZipper!2108 lt!2334751 (t!378079 s!2326)))))

(assert (= (and d!1928478 (not res!2549141)) b!6154703))

(assert (=> d!1928478 m!6992788))

(assert (=> d!1928478 m!6992764))

(assert (=> b!6154703 m!6992768))

(assert (=> d!1928180 d!1928478))

(declare-fun b!6154704 () Bool)

(declare-fun res!2549148 () Bool)

(declare-fun e!3750141 () Bool)

(assert (=> b!6154704 (=> res!2549148 e!3750141)))

(assert (=> b!6154704 (= res!2549148 (not (isEmpty!36430 (tail!11798 (_2!36378 (get!22246 lt!2334900))))))))

(declare-fun b!6154705 () Bool)

(declare-fun e!3750138 () Bool)

(assert (=> b!6154705 (= e!3750138 e!3750141)))

(declare-fun res!2549146 () Bool)

(assert (=> b!6154705 (=> res!2549146 e!3750141)))

(declare-fun call!512140 () Bool)

(assert (=> b!6154705 (= res!2549146 call!512140)))

(declare-fun b!6154706 () Bool)

(declare-fun e!3750142 () Bool)

(declare-fun lt!2334956 () Bool)

(assert (=> b!6154706 (= e!3750142 (not lt!2334956))))

(declare-fun b!6154707 () Bool)

(declare-fun e!3750139 () Bool)

(assert (=> b!6154707 (= e!3750139 (= (head!12713 (_2!36378 (get!22246 lt!2334900))) (c!1107723 (regTwo!32704 r!7292))))))

(declare-fun b!6154708 () Bool)

(declare-fun e!3750143 () Bool)

(assert (=> b!6154708 (= e!3750143 (nullable!6089 (regTwo!32704 r!7292)))))

(declare-fun b!6154709 () Bool)

(assert (=> b!6154709 (= e!3750143 (matchR!8279 (derivativeStep!4816 (regTwo!32704 r!7292) (head!12713 (_2!36378 (get!22246 lt!2334900)))) (tail!11798 (_2!36378 (get!22246 lt!2334900)))))))

(declare-fun b!6154710 () Bool)

(declare-fun e!3750140 () Bool)

(assert (=> b!6154710 (= e!3750140 (= lt!2334956 call!512140))))

(declare-fun bm!512135 () Bool)

(assert (=> bm!512135 (= call!512140 (isEmpty!36430 (_2!36378 (get!22246 lt!2334900))))))

(declare-fun d!1928480 () Bool)

(assert (=> d!1928480 e!3750140))

(declare-fun c!1108007 () Bool)

(assert (=> d!1928480 (= c!1108007 (is-EmptyExpr!16096 (regTwo!32704 r!7292)))))

(assert (=> d!1928480 (= lt!2334956 e!3750143)))

(declare-fun c!1108006 () Bool)

(assert (=> d!1928480 (= c!1108006 (isEmpty!36430 (_2!36378 (get!22246 lt!2334900))))))

(assert (=> d!1928480 (validRegex!7832 (regTwo!32704 r!7292))))

(assert (=> d!1928480 (= (matchR!8279 (regTwo!32704 r!7292) (_2!36378 (get!22246 lt!2334900))) lt!2334956)))

(declare-fun b!6154711 () Bool)

(declare-fun e!3750144 () Bool)

(assert (=> b!6154711 (= e!3750144 e!3750138)))

(declare-fun res!2549149 () Bool)

(assert (=> b!6154711 (=> (not res!2549149) (not e!3750138))))

(assert (=> b!6154711 (= res!2549149 (not lt!2334956))))

(declare-fun b!6154712 () Bool)

(declare-fun res!2549145 () Bool)

(assert (=> b!6154712 (=> (not res!2549145) (not e!3750139))))

(assert (=> b!6154712 (= res!2549145 (isEmpty!36430 (tail!11798 (_2!36378 (get!22246 lt!2334900)))))))

(declare-fun b!6154713 () Bool)

(declare-fun res!2549147 () Bool)

(assert (=> b!6154713 (=> res!2549147 e!3750144)))

(assert (=> b!6154713 (= res!2549147 e!3750139)))

(declare-fun res!2549142 () Bool)

(assert (=> b!6154713 (=> (not res!2549142) (not e!3750139))))

(assert (=> b!6154713 (= res!2549142 lt!2334956)))

(declare-fun b!6154714 () Bool)

(declare-fun res!2549143 () Bool)

(assert (=> b!6154714 (=> (not res!2549143) (not e!3750139))))

(assert (=> b!6154714 (= res!2549143 (not call!512140))))

(declare-fun b!6154715 () Bool)

(assert (=> b!6154715 (= e!3750141 (not (= (head!12713 (_2!36378 (get!22246 lt!2334900))) (c!1107723 (regTwo!32704 r!7292)))))))

(declare-fun b!6154716 () Bool)

(declare-fun res!2549144 () Bool)

(assert (=> b!6154716 (=> res!2549144 e!3750144)))

(assert (=> b!6154716 (= res!2549144 (not (is-ElementMatch!16096 (regTwo!32704 r!7292))))))

(assert (=> b!6154716 (= e!3750142 e!3750144)))

(declare-fun b!6154717 () Bool)

(assert (=> b!6154717 (= e!3750140 e!3750142)))

(declare-fun c!1108008 () Bool)

(assert (=> b!6154717 (= c!1108008 (is-EmptyLang!16096 (regTwo!32704 r!7292)))))

(assert (= (and d!1928480 c!1108006) b!6154708))

(assert (= (and d!1928480 (not c!1108006)) b!6154709))

(assert (= (and d!1928480 c!1108007) b!6154710))

(assert (= (and d!1928480 (not c!1108007)) b!6154717))

(assert (= (and b!6154717 c!1108008) b!6154706))

(assert (= (and b!6154717 (not c!1108008)) b!6154716))

(assert (= (and b!6154716 (not res!2549144)) b!6154713))

(assert (= (and b!6154713 res!2549142) b!6154714))

(assert (= (and b!6154714 res!2549143) b!6154712))

(assert (= (and b!6154712 res!2549145) b!6154707))

(assert (= (and b!6154713 (not res!2549147)) b!6154711))

(assert (= (and b!6154711 res!2549149) b!6154705))

(assert (= (and b!6154705 (not res!2549146)) b!6154704))

(assert (= (and b!6154704 (not res!2549148)) b!6154715))

(assert (= (or b!6154710 b!6154705 b!6154714) bm!512135))

(declare-fun m!6993698 () Bool)

(assert (=> b!6154704 m!6993698))

(assert (=> b!6154704 m!6993698))

(declare-fun m!6993700 () Bool)

(assert (=> b!6154704 m!6993700))

(declare-fun m!6993702 () Bool)

(assert (=> b!6154708 m!6993702))

(declare-fun m!6993704 () Bool)

(assert (=> b!6154715 m!6993704))

(declare-fun m!6993706 () Bool)

(assert (=> d!1928480 m!6993706))

(declare-fun m!6993708 () Bool)

(assert (=> d!1928480 m!6993708))

(assert (=> b!6154712 m!6993698))

(assert (=> b!6154712 m!6993698))

(assert (=> b!6154712 m!6993700))

(assert (=> b!6154709 m!6993704))

(assert (=> b!6154709 m!6993704))

(declare-fun m!6993710 () Bool)

(assert (=> b!6154709 m!6993710))

(assert (=> b!6154709 m!6993698))

(assert (=> b!6154709 m!6993710))

(assert (=> b!6154709 m!6993698))

(declare-fun m!6993712 () Bool)

(assert (=> b!6154709 m!6993712))

(assert (=> bm!512135 m!6993706))

(assert (=> b!6154707 m!6993704))

(assert (=> b!6154047 d!1928480))

(assert (=> b!6154047 d!1928444))

(declare-fun d!1928482 () Bool)

(assert (=> d!1928482 (= ($colon$colon!1973 (exprs!5980 lt!2334763) (ite (or c!1107849 c!1107848) (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (regOne!32705 (regOne!32704 r!7292)))) (Cons!64463 (ite (or c!1107849 c!1107848) (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))) (regOne!32705 (regOne!32704 r!7292))) (exprs!5980 lt!2334763)))))

(assert (=> bm!512044 d!1928482))

(declare-fun bm!512136 () Bool)

(declare-fun call!512142 () List!64587)

(declare-fun call!512145 () List!64587)

(assert (=> bm!512136 (= call!512142 call!512145)))

(declare-fun b!6154718 () Bool)

(declare-fun e!3750147 () (Set Context!10960))

(declare-fun call!512141 () (Set Context!10960))

(declare-fun call!512143 () (Set Context!10960))

(assert (=> b!6154718 (= e!3750147 (set.union call!512141 call!512143))))

(declare-fun c!1108011 () Bool)

(declare-fun b!6154719 () Bool)

(assert (=> b!6154719 (= c!1108011 (is-Star!16096 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343)))))))))))

(declare-fun e!3750150 () (Set Context!10960))

(declare-fun e!3750148 () (Set Context!10960))

(assert (=> b!6154719 (= e!3750150 e!3750148)))

(declare-fun b!6154720 () Bool)

(declare-fun e!3750149 () (Set Context!10960))

(assert (=> b!6154720 (= e!3750149 e!3750147)))

(declare-fun c!1108010 () Bool)

(assert (=> b!6154720 (= c!1108010 (is-Union!16096 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343)))))))))))

(declare-fun b!6154721 () Bool)

(declare-fun e!3750146 () (Set Context!10960))

(assert (=> b!6154721 (= e!3750146 e!3750150)))

(declare-fun c!1108012 () Bool)

(assert (=> b!6154721 (= c!1108012 (is-Concat!24941 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343)))))))))))

(declare-fun b!6154722 () Bool)

(assert (=> b!6154722 (= e!3750148 (as set.empty (Set Context!10960)))))

(declare-fun c!1108013 () Bool)

(declare-fun bm!512138 () Bool)

(assert (=> bm!512138 (= call!512143 (derivationStepZipperDown!1344 (ite c!1108010 (regTwo!32705 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343)))))))) (ite c!1108013 (regTwo!32704 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343)))))))) (ite c!1108012 (regOne!32704 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343)))))))) (reg!16425 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343))))))))))) (ite (or c!1108010 c!1108013) (ite (or c!1107820 c!1107823) lt!2334763 (Context!10961 call!512027)) (Context!10961 call!512142)) (h!70912 s!2326)))))

(declare-fun b!6154723 () Bool)

(declare-fun e!3750145 () Bool)

(assert (=> b!6154723 (= c!1108013 e!3750145)))

(declare-fun res!2549150 () Bool)

(assert (=> b!6154723 (=> (not res!2549150) (not e!3750145))))

(assert (=> b!6154723 (= res!2549150 (is-Concat!24941 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343)))))))))))

(assert (=> b!6154723 (= e!3750147 e!3750146)))

(declare-fun b!6154724 () Bool)

(declare-fun call!512144 () (Set Context!10960))

(assert (=> b!6154724 (= e!3750148 call!512144)))

(declare-fun b!6154725 () Bool)

(assert (=> b!6154725 (= e!3750149 (set.insert (ite (or c!1107820 c!1107823) lt!2334763 (Context!10961 call!512027)) (as set.empty (Set Context!10960))))))

(declare-fun bm!512139 () Bool)

(declare-fun call!512146 () (Set Context!10960))

(assert (=> bm!512139 (= call!512144 call!512146)))

(declare-fun b!6154726 () Bool)

(assert (=> b!6154726 (= e!3750146 (set.union call!512141 call!512146))))

(declare-fun bm!512137 () Bool)

(assert (=> bm!512137 (= call!512145 ($colon$colon!1973 (exprs!5980 (ite (or c!1107820 c!1107823) lt!2334763 (Context!10961 call!512027))) (ite (or c!1108013 c!1108012) (regTwo!32704 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343)))))))) (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343))))))))))))

(declare-fun c!1108009 () Bool)

(declare-fun d!1928484 () Bool)

(assert (=> d!1928484 (= c!1108009 (and (is-ElementMatch!16096 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343)))))))) (= (c!1107723 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343)))))))) (h!70912 s!2326))))))

(assert (=> d!1928484 (= (derivationStepZipperDown!1344 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343))))))) (ite (or c!1107820 c!1107823) lt!2334763 (Context!10961 call!512027)) (h!70912 s!2326)) e!3750149)))

(declare-fun bm!512140 () Bool)

(assert (=> bm!512140 (= call!512146 call!512143)))

(declare-fun bm!512141 () Bool)

(assert (=> bm!512141 (= call!512141 (derivationStepZipperDown!1344 (ite c!1108010 (regOne!32705 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343)))))))) (regOne!32704 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343))))))))) (ite c!1108010 (ite (or c!1107820 c!1107823) lt!2334763 (Context!10961 call!512027)) (Context!10961 call!512145)) (h!70912 s!2326)))))

(declare-fun b!6154727 () Bool)

(assert (=> b!6154727 (= e!3750150 call!512144)))

(declare-fun b!6154728 () Bool)

(assert (=> b!6154728 (= e!3750145 (nullable!6089 (regOne!32704 (ite c!1107820 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107823 (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (ite c!1107822 (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (reg!16425 (h!70911 (exprs!5980 (h!70913 zl!343))))))))))))

(assert (= (and d!1928484 c!1108009) b!6154725))

(assert (= (and d!1928484 (not c!1108009)) b!6154720))

(assert (= (and b!6154720 c!1108010) b!6154718))

(assert (= (and b!6154720 (not c!1108010)) b!6154723))

(assert (= (and b!6154723 res!2549150) b!6154728))

(assert (= (and b!6154723 c!1108013) b!6154726))

(assert (= (and b!6154723 (not c!1108013)) b!6154721))

(assert (= (and b!6154721 c!1108012) b!6154727))

(assert (= (and b!6154721 (not c!1108012)) b!6154719))

(assert (= (and b!6154719 c!1108011) b!6154724))

(assert (= (and b!6154719 (not c!1108011)) b!6154722))

(assert (= (or b!6154727 b!6154724) bm!512136))

(assert (= (or b!6154727 b!6154724) bm!512139))

(assert (= (or b!6154726 bm!512136) bm!512137))

(assert (= (or b!6154726 bm!512139) bm!512140))

(assert (= (or b!6154718 bm!512140) bm!512138))

(assert (= (or b!6154718 b!6154726) bm!512141))

(declare-fun m!6993714 () Bool)

(assert (=> bm!512138 m!6993714))

(declare-fun m!6993716 () Bool)

(assert (=> bm!512137 m!6993716))

(declare-fun m!6993718 () Bool)

(assert (=> b!6154725 m!6993718))

(declare-fun m!6993720 () Bool)

(assert (=> bm!512141 m!6993720))

(declare-fun m!6993722 () Bool)

(assert (=> b!6154728 m!6993722))

(assert (=> bm!512023 d!1928484))

(declare-fun d!1928486 () Bool)

(declare-fun c!1108014 () Bool)

(assert (=> d!1928486 (= c!1108014 (isEmpty!36430 (tail!11798 (t!378079 s!2326))))))

(declare-fun e!3750151 () Bool)

(assert (=> d!1928486 (= (matchZipper!2108 (derivationStepZipper!2069 lt!2334754 (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))) e!3750151)))

(declare-fun b!6154729 () Bool)

(assert (=> b!6154729 (= e!3750151 (nullableZipper!1877 (derivationStepZipper!2069 lt!2334754 (head!12713 (t!378079 s!2326)))))))

(declare-fun b!6154730 () Bool)

(assert (=> b!6154730 (= e!3750151 (matchZipper!2108 (derivationStepZipper!2069 (derivationStepZipper!2069 lt!2334754 (head!12713 (t!378079 s!2326))) (head!12713 (tail!11798 (t!378079 s!2326)))) (tail!11798 (tail!11798 (t!378079 s!2326)))))))

(assert (= (and d!1928486 c!1108014) b!6154729))

(assert (= (and d!1928486 (not c!1108014)) b!6154730))

(assert (=> d!1928486 m!6992960))

(assert (=> d!1928486 m!6993602))

(assert (=> b!6154729 m!6993098))

(declare-fun m!6993724 () Bool)

(assert (=> b!6154729 m!6993724))

(assert (=> b!6154730 m!6992960))

(assert (=> b!6154730 m!6993606))

(assert (=> b!6154730 m!6993098))

(assert (=> b!6154730 m!6993606))

(declare-fun m!6993726 () Bool)

(assert (=> b!6154730 m!6993726))

(assert (=> b!6154730 m!6992960))

(assert (=> b!6154730 m!6993610))

(assert (=> b!6154730 m!6993726))

(assert (=> b!6154730 m!6993610))

(declare-fun m!6993728 () Bool)

(assert (=> b!6154730 m!6993728))

(assert (=> b!6153972 d!1928486))

(declare-fun bs!1525544 () Bool)

(declare-fun d!1928488 () Bool)

(assert (= bs!1525544 (and d!1928488 b!6153643)))

(declare-fun lambda!335741 () Int)

(assert (=> bs!1525544 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335741 lambda!335642))))

(declare-fun bs!1525545 () Bool)

(assert (= bs!1525545 (and d!1928488 d!1928432)))

(assert (=> bs!1525545 (= lambda!335741 lambda!335730)))

(declare-fun bs!1525546 () Bool)

(assert (= bs!1525546 (and d!1928488 d!1928472)))

(assert (=> bs!1525546 (= lambda!335741 lambda!335740)))

(declare-fun bs!1525547 () Bool)

(assert (= bs!1525547 (and d!1928488 d!1928176)))

(assert (=> bs!1525547 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335741 lambda!335660))))

(declare-fun bs!1525548 () Bool)

(assert (= bs!1525548 (and d!1928488 d!1928450)))

(assert (=> bs!1525548 (= lambda!335741 lambda!335731)))

(assert (=> d!1928488 true))

(assert (=> d!1928488 (= (derivationStepZipper!2069 lt!2334754 (head!12713 (t!378079 s!2326))) (flatMap!1601 lt!2334754 lambda!335741))))

(declare-fun bs!1525549 () Bool)

(assert (= bs!1525549 d!1928488))

(declare-fun m!6993730 () Bool)

(assert (=> bs!1525549 m!6993730))

(assert (=> b!6153972 d!1928488))

(assert (=> b!6153972 d!1928434))

(assert (=> b!6153972 d!1928436))

(declare-fun d!1928490 () Bool)

(assert (=> d!1928490 (= (head!12714 (exprs!5980 (h!70913 zl!343))) (h!70911 (exprs!5980 (h!70913 zl!343))))))

(assert (=> b!6153842 d!1928490))

(declare-fun d!1928492 () Bool)

(declare-fun res!2549155 () Bool)

(declare-fun e!3750156 () Bool)

(assert (=> d!1928492 (=> res!2549155 e!3750156)))

(assert (=> d!1928492 (= res!2549155 (is-Nil!64465 lt!2334873))))

(assert (=> d!1928492 (= (noDuplicate!1943 lt!2334873) e!3750156)))

(declare-fun b!6154735 () Bool)

(declare-fun e!3750157 () Bool)

(assert (=> b!6154735 (= e!3750156 e!3750157)))

(declare-fun res!2549156 () Bool)

(assert (=> b!6154735 (=> (not res!2549156) (not e!3750157))))

(declare-fun contains!20056 (List!64589 Context!10960) Bool)

(assert (=> b!6154735 (= res!2549156 (not (contains!20056 (t!378080 lt!2334873) (h!70913 lt!2334873))))))

(declare-fun b!6154736 () Bool)

(assert (=> b!6154736 (= e!3750157 (noDuplicate!1943 (t!378080 lt!2334873)))))

(assert (= (and d!1928492 (not res!2549155)) b!6154735))

(assert (= (and b!6154735 res!2549156) b!6154736))

(declare-fun m!6993732 () Bool)

(assert (=> b!6154735 m!6993732))

(declare-fun m!6993734 () Bool)

(assert (=> b!6154736 m!6993734))

(assert (=> d!1928188 d!1928492))

(declare-fun d!1928494 () Bool)

(declare-fun e!3750166 () Bool)

(assert (=> d!1928494 e!3750166))

(declare-fun res!2549161 () Bool)

(assert (=> d!1928494 (=> (not res!2549161) (not e!3750166))))

(declare-fun res!2549162 () List!64589)

(assert (=> d!1928494 (= res!2549161 (noDuplicate!1943 res!2549162))))

(declare-fun e!3750164 () Bool)

(assert (=> d!1928494 e!3750164))

(assert (=> d!1928494 (= (choose!45743 z!1189) res!2549162)))

(declare-fun b!6154744 () Bool)

(declare-fun e!3750165 () Bool)

(declare-fun tp!1718875 () Bool)

(assert (=> b!6154744 (= e!3750165 tp!1718875)))

(declare-fun tp!1718876 () Bool)

(declare-fun b!6154743 () Bool)

(assert (=> b!6154743 (= e!3750164 (and (inv!83488 (h!70913 res!2549162)) e!3750165 tp!1718876))))

(declare-fun b!6154745 () Bool)

(assert (=> b!6154745 (= e!3750166 (= (content!12015 res!2549162) z!1189))))

(assert (= b!6154743 b!6154744))

(assert (= (and d!1928494 (is-Cons!64465 res!2549162)) b!6154743))

(assert (= (and d!1928494 res!2549161) b!6154745))

(declare-fun m!6993736 () Bool)

(assert (=> d!1928494 m!6993736))

(declare-fun m!6993738 () Bool)

(assert (=> b!6154743 m!6993738))

(declare-fun m!6993740 () Bool)

(assert (=> b!6154745 m!6993740))

(assert (=> d!1928188 d!1928494))

(declare-fun d!1928496 () Bool)

(declare-fun res!2549163 () Bool)

(declare-fun e!3750167 () Bool)

(assert (=> d!1928496 (=> res!2549163 e!3750167)))

(assert (=> d!1928496 (= res!2549163 (is-Nil!64463 (exprs!5980 (h!70913 zl!343))))))

(assert (=> d!1928496 (= (forall!15217 (exprs!5980 (h!70913 zl!343)) lambda!335667) e!3750167)))

(declare-fun b!6154746 () Bool)

(declare-fun e!3750168 () Bool)

(assert (=> b!6154746 (= e!3750167 e!3750168)))

(declare-fun res!2549164 () Bool)

(assert (=> b!6154746 (=> (not res!2549164) (not e!3750168))))

(assert (=> b!6154746 (= res!2549164 (dynLambda!25415 lambda!335667 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun b!6154747 () Bool)

(assert (=> b!6154747 (= e!3750168 (forall!15217 (t!378078 (exprs!5980 (h!70913 zl!343))) lambda!335667))))

(assert (= (and d!1928496 (not res!2549163)) b!6154746))

(assert (= (and b!6154746 res!2549164) b!6154747))

(declare-fun b_lambda!234269 () Bool)

(assert (=> (not b_lambda!234269) (not b!6154746)))

(declare-fun m!6993742 () Bool)

(assert (=> b!6154746 m!6993742))

(declare-fun m!6993744 () Bool)

(assert (=> b!6154747 m!6993744))

(assert (=> d!1928194 d!1928496))

(declare-fun b!6154748 () Bool)

(declare-fun e!3750169 () Bool)

(declare-fun e!3750171 () Bool)

(assert (=> b!6154748 (= e!3750169 e!3750171)))

(declare-fun res!2549165 () Bool)

(assert (=> b!6154748 (=> (not res!2549165) (not e!3750171))))

(declare-fun call!512148 () Bool)

(assert (=> b!6154748 (= res!2549165 call!512148)))

(declare-fun b!6154749 () Bool)

(declare-fun e!3750174 () Bool)

(declare-fun e!3750172 () Bool)

(assert (=> b!6154749 (= e!3750174 e!3750172)))

(declare-fun c!1108015 () Bool)

(assert (=> b!6154749 (= c!1108015 (is-Star!16096 (ite c!1107838 (reg!16425 r!7292) (ite c!1107839 (regTwo!32705 r!7292) (regTwo!32704 r!7292)))))))

(declare-fun b!6154750 () Bool)

(declare-fun e!3750170 () Bool)

(declare-fun call!512147 () Bool)

(assert (=> b!6154750 (= e!3750170 call!512147)))

(declare-fun bm!512143 () Bool)

(declare-fun call!512149 () Bool)

(assert (=> bm!512143 (= call!512149 call!512147)))

(declare-fun bm!512144 () Bool)

(declare-fun c!1108016 () Bool)

(assert (=> bm!512144 (= call!512148 (validRegex!7832 (ite c!1108016 (regOne!32705 (ite c!1107838 (reg!16425 r!7292) (ite c!1107839 (regTwo!32705 r!7292) (regTwo!32704 r!7292)))) (regOne!32704 (ite c!1107838 (reg!16425 r!7292) (ite c!1107839 (regTwo!32705 r!7292) (regTwo!32704 r!7292)))))))))

(declare-fun b!6154751 () Bool)

(declare-fun e!3750173 () Bool)

(assert (=> b!6154751 (= e!3750172 e!3750173)))

(assert (=> b!6154751 (= c!1108016 (is-Union!16096 (ite c!1107838 (reg!16425 r!7292) (ite c!1107839 (regTwo!32705 r!7292) (regTwo!32704 r!7292)))))))

(declare-fun b!6154752 () Bool)

(declare-fun e!3750175 () Bool)

(assert (=> b!6154752 (= e!3750175 call!512149)))

(declare-fun b!6154753 () Bool)

(declare-fun res!2549168 () Bool)

(assert (=> b!6154753 (=> res!2549168 e!3750169)))

(assert (=> b!6154753 (= res!2549168 (not (is-Concat!24941 (ite c!1107838 (reg!16425 r!7292) (ite c!1107839 (regTwo!32705 r!7292) (regTwo!32704 r!7292))))))))

(assert (=> b!6154753 (= e!3750173 e!3750169)))

(declare-fun b!6154754 () Bool)

(assert (=> b!6154754 (= e!3750171 call!512149)))

(declare-fun bm!512142 () Bool)

(assert (=> bm!512142 (= call!512147 (validRegex!7832 (ite c!1108015 (reg!16425 (ite c!1107838 (reg!16425 r!7292) (ite c!1107839 (regTwo!32705 r!7292) (regTwo!32704 r!7292)))) (ite c!1108016 (regTwo!32705 (ite c!1107838 (reg!16425 r!7292) (ite c!1107839 (regTwo!32705 r!7292) (regTwo!32704 r!7292)))) (regTwo!32704 (ite c!1107838 (reg!16425 r!7292) (ite c!1107839 (regTwo!32705 r!7292) (regTwo!32704 r!7292))))))))))

(declare-fun d!1928498 () Bool)

(declare-fun res!2549167 () Bool)

(assert (=> d!1928498 (=> res!2549167 e!3750174)))

(assert (=> d!1928498 (= res!2549167 (is-ElementMatch!16096 (ite c!1107838 (reg!16425 r!7292) (ite c!1107839 (regTwo!32705 r!7292) (regTwo!32704 r!7292)))))))

(assert (=> d!1928498 (= (validRegex!7832 (ite c!1107838 (reg!16425 r!7292) (ite c!1107839 (regTwo!32705 r!7292) (regTwo!32704 r!7292)))) e!3750174)))

(declare-fun b!6154755 () Bool)

(declare-fun res!2549166 () Bool)

(assert (=> b!6154755 (=> (not res!2549166) (not e!3750175))))

(assert (=> b!6154755 (= res!2549166 call!512148)))

(assert (=> b!6154755 (= e!3750173 e!3750175)))

(declare-fun b!6154756 () Bool)

(assert (=> b!6154756 (= e!3750172 e!3750170)))

(declare-fun res!2549169 () Bool)

(assert (=> b!6154756 (= res!2549169 (not (nullable!6089 (reg!16425 (ite c!1107838 (reg!16425 r!7292) (ite c!1107839 (regTwo!32705 r!7292) (regTwo!32704 r!7292)))))))))

(assert (=> b!6154756 (=> (not res!2549169) (not e!3750170))))

(assert (= (and d!1928498 (not res!2549167)) b!6154749))

(assert (= (and b!6154749 c!1108015) b!6154756))

(assert (= (and b!6154749 (not c!1108015)) b!6154751))

(assert (= (and b!6154756 res!2549169) b!6154750))

(assert (= (and b!6154751 c!1108016) b!6154755))

(assert (= (and b!6154751 (not c!1108016)) b!6154753))

(assert (= (and b!6154755 res!2549166) b!6154752))

(assert (= (and b!6154753 (not res!2549168)) b!6154748))

(assert (= (and b!6154748 res!2549165) b!6154754))

(assert (= (or b!6154752 b!6154754) bm!512143))

(assert (= (or b!6154755 b!6154748) bm!512144))

(assert (= (or b!6154750 bm!512143) bm!512142))

(declare-fun m!6993746 () Bool)

(assert (=> bm!512144 m!6993746))

(declare-fun m!6993748 () Bool)

(assert (=> bm!512142 m!6993748))

(declare-fun m!6993750 () Bool)

(assert (=> b!6154756 m!6993750))

(assert (=> bm!512034 d!1928498))

(declare-fun d!1928500 () Bool)

(declare-fun c!1108017 () Bool)

(assert (=> d!1928500 (= c!1108017 (isEmpty!36430 (tail!11798 (t!378079 s!2326))))))

(declare-fun e!3750176 () Bool)

(assert (=> d!1928500 (= (matchZipper!2108 (derivationStepZipper!2069 lt!2334751 (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))) e!3750176)))

(declare-fun b!6154757 () Bool)

(assert (=> b!6154757 (= e!3750176 (nullableZipper!1877 (derivationStepZipper!2069 lt!2334751 (head!12713 (t!378079 s!2326)))))))

(declare-fun b!6154758 () Bool)

(assert (=> b!6154758 (= e!3750176 (matchZipper!2108 (derivationStepZipper!2069 (derivationStepZipper!2069 lt!2334751 (head!12713 (t!378079 s!2326))) (head!12713 (tail!11798 (t!378079 s!2326)))) (tail!11798 (tail!11798 (t!378079 s!2326)))))))

(assert (= (and d!1928500 c!1108017) b!6154757))

(assert (= (and d!1928500 (not c!1108017)) b!6154758))

(assert (=> d!1928500 m!6992960))

(assert (=> d!1928500 m!6993602))

(assert (=> b!6154757 m!6993004))

(declare-fun m!6993752 () Bool)

(assert (=> b!6154757 m!6993752))

(assert (=> b!6154758 m!6992960))

(assert (=> b!6154758 m!6993606))

(assert (=> b!6154758 m!6993004))

(assert (=> b!6154758 m!6993606))

(declare-fun m!6993754 () Bool)

(assert (=> b!6154758 m!6993754))

(assert (=> b!6154758 m!6992960))

(assert (=> b!6154758 m!6993610))

(assert (=> b!6154758 m!6993754))

(assert (=> b!6154758 m!6993610))

(declare-fun m!6993756 () Bool)

(assert (=> b!6154758 m!6993756))

(assert (=> b!6153812 d!1928500))

(declare-fun bs!1525550 () Bool)

(declare-fun d!1928502 () Bool)

(assert (= bs!1525550 (and d!1928502 b!6153643)))

(declare-fun lambda!335742 () Int)

(assert (=> bs!1525550 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335742 lambda!335642))))

(declare-fun bs!1525551 () Bool)

(assert (= bs!1525551 (and d!1928502 d!1928432)))

(assert (=> bs!1525551 (= lambda!335742 lambda!335730)))

(declare-fun bs!1525552 () Bool)

(assert (= bs!1525552 (and d!1928502 d!1928472)))

(assert (=> bs!1525552 (= lambda!335742 lambda!335740)))

(declare-fun bs!1525553 () Bool)

(assert (= bs!1525553 (and d!1928502 d!1928176)))

(assert (=> bs!1525553 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335742 lambda!335660))))

(declare-fun bs!1525554 () Bool)

(assert (= bs!1525554 (and d!1928502 d!1928450)))

(assert (=> bs!1525554 (= lambda!335742 lambda!335731)))

(declare-fun bs!1525555 () Bool)

(assert (= bs!1525555 (and d!1928502 d!1928488)))

(assert (=> bs!1525555 (= lambda!335742 lambda!335741)))

(assert (=> d!1928502 true))

(assert (=> d!1928502 (= (derivationStepZipper!2069 lt!2334751 (head!12713 (t!378079 s!2326))) (flatMap!1601 lt!2334751 lambda!335742))))

(declare-fun bs!1525556 () Bool)

(assert (= bs!1525556 d!1928502))

(declare-fun m!6993758 () Bool)

(assert (=> bs!1525556 m!6993758))

(assert (=> b!6153812 d!1928502))

(assert (=> b!6153812 d!1928434))

(assert (=> b!6153812 d!1928436))

(declare-fun b!6154759 () Bool)

(declare-fun e!3750177 () Bool)

(declare-fun e!3750179 () Bool)

(assert (=> b!6154759 (= e!3750177 e!3750179)))

(declare-fun res!2549170 () Bool)

(assert (=> b!6154759 (=> (not res!2549170) (not e!3750179))))

(declare-fun call!512151 () Bool)

(assert (=> b!6154759 (= res!2549170 call!512151)))

(declare-fun b!6154760 () Bool)

(declare-fun e!3750182 () Bool)

(declare-fun e!3750180 () Bool)

(assert (=> b!6154760 (= e!3750182 e!3750180)))

(declare-fun c!1108018 () Bool)

(assert (=> b!6154760 (= c!1108018 (is-Star!16096 lt!2334885))))

(declare-fun b!6154761 () Bool)

(declare-fun e!3750178 () Bool)

(declare-fun call!512150 () Bool)

(assert (=> b!6154761 (= e!3750178 call!512150)))

(declare-fun bm!512146 () Bool)

(declare-fun call!512152 () Bool)

(assert (=> bm!512146 (= call!512152 call!512150)))

(declare-fun bm!512147 () Bool)

(declare-fun c!1108019 () Bool)

(assert (=> bm!512147 (= call!512151 (validRegex!7832 (ite c!1108019 (regOne!32705 lt!2334885) (regOne!32704 lt!2334885))))))

(declare-fun b!6154762 () Bool)

(declare-fun e!3750181 () Bool)

(assert (=> b!6154762 (= e!3750180 e!3750181)))

(assert (=> b!6154762 (= c!1108019 (is-Union!16096 lt!2334885))))

(declare-fun b!6154763 () Bool)

(declare-fun e!3750183 () Bool)

(assert (=> b!6154763 (= e!3750183 call!512152)))

(declare-fun b!6154764 () Bool)

(declare-fun res!2549173 () Bool)

(assert (=> b!6154764 (=> res!2549173 e!3750177)))

(assert (=> b!6154764 (= res!2549173 (not (is-Concat!24941 lt!2334885)))))

(assert (=> b!6154764 (= e!3750181 e!3750177)))

(declare-fun b!6154765 () Bool)

(assert (=> b!6154765 (= e!3750179 call!512152)))

(declare-fun bm!512145 () Bool)

(assert (=> bm!512145 (= call!512150 (validRegex!7832 (ite c!1108018 (reg!16425 lt!2334885) (ite c!1108019 (regTwo!32705 lt!2334885) (regTwo!32704 lt!2334885)))))))

(declare-fun d!1928504 () Bool)

(declare-fun res!2549172 () Bool)

(assert (=> d!1928504 (=> res!2549172 e!3750182)))

(assert (=> d!1928504 (= res!2549172 (is-ElementMatch!16096 lt!2334885))))

(assert (=> d!1928504 (= (validRegex!7832 lt!2334885) e!3750182)))

(declare-fun b!6154766 () Bool)

(declare-fun res!2549171 () Bool)

(assert (=> b!6154766 (=> (not res!2549171) (not e!3750183))))

(assert (=> b!6154766 (= res!2549171 call!512151)))

(assert (=> b!6154766 (= e!3750181 e!3750183)))

(declare-fun b!6154767 () Bool)

(assert (=> b!6154767 (= e!3750180 e!3750178)))

(declare-fun res!2549174 () Bool)

(assert (=> b!6154767 (= res!2549174 (not (nullable!6089 (reg!16425 lt!2334885))))))

(assert (=> b!6154767 (=> (not res!2549174) (not e!3750178))))

(assert (= (and d!1928504 (not res!2549172)) b!6154760))

(assert (= (and b!6154760 c!1108018) b!6154767))

(assert (= (and b!6154760 (not c!1108018)) b!6154762))

(assert (= (and b!6154767 res!2549174) b!6154761))

(assert (= (and b!6154762 c!1108019) b!6154766))

(assert (= (and b!6154762 (not c!1108019)) b!6154764))

(assert (= (and b!6154766 res!2549171) b!6154763))

(assert (= (and b!6154764 (not res!2549173)) b!6154759))

(assert (= (and b!6154759 res!2549170) b!6154765))

(assert (= (or b!6154763 b!6154765) bm!512146))

(assert (= (or b!6154766 b!6154759) bm!512147))

(assert (= (or b!6154761 bm!512146) bm!512145))

(declare-fun m!6993760 () Bool)

(assert (=> bm!512147 m!6993760))

(declare-fun m!6993762 () Bool)

(assert (=> bm!512145 m!6993762))

(declare-fun m!6993764 () Bool)

(assert (=> b!6154767 m!6993764))

(assert (=> d!1928204 d!1928504))

(declare-fun d!1928506 () Bool)

(declare-fun res!2549175 () Bool)

(declare-fun e!3750184 () Bool)

(assert (=> d!1928506 (=> res!2549175 e!3750184)))

(assert (=> d!1928506 (= res!2549175 (is-Nil!64463 (unfocusZipperList!1517 zl!343)))))

(assert (=> d!1928506 (= (forall!15217 (unfocusZipperList!1517 zl!343) lambda!335676) e!3750184)))

(declare-fun b!6154768 () Bool)

(declare-fun e!3750185 () Bool)

(assert (=> b!6154768 (= e!3750184 e!3750185)))

(declare-fun res!2549176 () Bool)

(assert (=> b!6154768 (=> (not res!2549176) (not e!3750185))))

(assert (=> b!6154768 (= res!2549176 (dynLambda!25415 lambda!335676 (h!70911 (unfocusZipperList!1517 zl!343))))))

(declare-fun b!6154769 () Bool)

(assert (=> b!6154769 (= e!3750185 (forall!15217 (t!378078 (unfocusZipperList!1517 zl!343)) lambda!335676))))

(assert (= (and d!1928506 (not res!2549175)) b!6154768))

(assert (= (and b!6154768 res!2549176) b!6154769))

(declare-fun b_lambda!234271 () Bool)

(assert (=> (not b_lambda!234271) (not b!6154768)))

(declare-fun m!6993766 () Bool)

(assert (=> b!6154768 m!6993766))

(declare-fun m!6993768 () Bool)

(assert (=> b!6154769 m!6993768))

(assert (=> d!1928204 d!1928506))

(declare-fun bm!512148 () Bool)

(declare-fun call!512154 () List!64587)

(declare-fun call!512157 () List!64587)

(assert (=> bm!512148 (= call!512154 call!512157)))

(declare-fun b!6154770 () Bool)

(declare-fun e!3750188 () (Set Context!10960))

(declare-fun call!512153 () (Set Context!10960))

(declare-fun call!512155 () (Set Context!10960))

(assert (=> b!6154770 (= e!3750188 (set.union call!512153 call!512155))))

(declare-fun b!6154771 () Bool)

(declare-fun c!1108022 () Bool)

(assert (=> b!6154771 (= c!1108022 (is-Star!16096 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292))))))))))

(declare-fun e!3750191 () (Set Context!10960))

(declare-fun e!3750189 () (Set Context!10960))

(assert (=> b!6154771 (= e!3750191 e!3750189)))

(declare-fun b!6154772 () Bool)

(declare-fun e!3750190 () (Set Context!10960))

(assert (=> b!6154772 (= e!3750190 e!3750188)))

(declare-fun c!1108021 () Bool)

(assert (=> b!6154772 (= c!1108021 (is-Union!16096 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292))))))))))

(declare-fun b!6154773 () Bool)

(declare-fun e!3750187 () (Set Context!10960))

(assert (=> b!6154773 (= e!3750187 e!3750191)))

(declare-fun c!1108023 () Bool)

(assert (=> b!6154773 (= c!1108023 (is-Concat!24941 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292))))))))))

(declare-fun b!6154774 () Bool)

(assert (=> b!6154774 (= e!3750189 (as set.empty (Set Context!10960)))))

(declare-fun bm!512150 () Bool)

(declare-fun c!1108024 () Bool)

(assert (=> bm!512150 (= call!512155 (derivationStepZipperDown!1344 (ite c!1108021 (regTwo!32705 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292))))))) (ite c!1108024 (regTwo!32704 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292))))))) (ite c!1108023 (regOne!32704 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292))))))) (reg!16425 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292)))))))))) (ite (or c!1108021 c!1108024) (ite (or c!1107841 c!1107844) lt!2334763 (Context!10961 call!512043)) (Context!10961 call!512154)) (h!70912 s!2326)))))

(declare-fun b!6154775 () Bool)

(declare-fun e!3750186 () Bool)

(assert (=> b!6154775 (= c!1108024 e!3750186)))

(declare-fun res!2549177 () Bool)

(assert (=> b!6154775 (=> (not res!2549177) (not e!3750186))))

(assert (=> b!6154775 (= res!2549177 (is-Concat!24941 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292))))))))))

(assert (=> b!6154775 (= e!3750188 e!3750187)))

(declare-fun b!6154776 () Bool)

(declare-fun call!512156 () (Set Context!10960))

(assert (=> b!6154776 (= e!3750189 call!512156)))

(declare-fun b!6154777 () Bool)

(assert (=> b!6154777 (= e!3750190 (set.insert (ite (or c!1107841 c!1107844) lt!2334763 (Context!10961 call!512043)) (as set.empty (Set Context!10960))))))

(declare-fun bm!512151 () Bool)

(declare-fun call!512158 () (Set Context!10960))

(assert (=> bm!512151 (= call!512156 call!512158)))

(declare-fun b!6154778 () Bool)

(assert (=> b!6154778 (= e!3750187 (set.union call!512153 call!512158))))

(declare-fun bm!512149 () Bool)

(assert (=> bm!512149 (= call!512157 ($colon$colon!1973 (exprs!5980 (ite (or c!1107841 c!1107844) lt!2334763 (Context!10961 call!512043))) (ite (or c!1108024 c!1108023) (regTwo!32704 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292))))))) (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292)))))))))))

(declare-fun c!1108020 () Bool)

(declare-fun d!1928508 () Bool)

(assert (=> d!1928508 (= c!1108020 (and (is-ElementMatch!16096 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292))))))) (= (c!1107723 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292))))))) (h!70912 s!2326))))))

(assert (=> d!1928508 (= (derivationStepZipperDown!1344 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292)))))) (ite (or c!1107841 c!1107844) lt!2334763 (Context!10961 call!512043)) (h!70912 s!2326)) e!3750190)))

(declare-fun bm!512152 () Bool)

(assert (=> bm!512152 (= call!512158 call!512155)))

(declare-fun bm!512153 () Bool)

(assert (=> bm!512153 (= call!512153 (derivationStepZipperDown!1344 (ite c!1108021 (regOne!32705 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292))))))) (regOne!32704 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292)))))))) (ite c!1108021 (ite (or c!1107841 c!1107844) lt!2334763 (Context!10961 call!512043)) (Context!10961 call!512157)) (h!70912 s!2326)))))

(declare-fun b!6154779 () Bool)

(assert (=> b!6154779 (= e!3750191 call!512156)))

(declare-fun b!6154780 () Bool)

(assert (=> b!6154780 (= e!3750186 (nullable!6089 (regOne!32704 (ite c!1107841 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107844 (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (ite c!1107843 (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))) (reg!16425 (regTwo!32705 (regOne!32704 r!7292)))))))))))

(assert (= (and d!1928508 c!1108020) b!6154777))

(assert (= (and d!1928508 (not c!1108020)) b!6154772))

(assert (= (and b!6154772 c!1108021) b!6154770))

(assert (= (and b!6154772 (not c!1108021)) b!6154775))

(assert (= (and b!6154775 res!2549177) b!6154780))

(assert (= (and b!6154775 c!1108024) b!6154778))

(assert (= (and b!6154775 (not c!1108024)) b!6154773))

(assert (= (and b!6154773 c!1108023) b!6154779))

(assert (= (and b!6154773 (not c!1108023)) b!6154771))

(assert (= (and b!6154771 c!1108022) b!6154776))

(assert (= (and b!6154771 (not c!1108022)) b!6154774))

(assert (= (or b!6154779 b!6154776) bm!512148))

(assert (= (or b!6154779 b!6154776) bm!512151))

(assert (= (or b!6154778 bm!512148) bm!512149))

(assert (= (or b!6154778 bm!512151) bm!512152))

(assert (= (or b!6154770 bm!512152) bm!512150))

(assert (= (or b!6154770 b!6154778) bm!512153))

(declare-fun m!6993770 () Bool)

(assert (=> bm!512150 m!6993770))

(declare-fun m!6993772 () Bool)

(assert (=> bm!512149 m!6993772))

(declare-fun m!6993774 () Bool)

(assert (=> b!6154777 m!6993774))

(declare-fun m!6993776 () Bool)

(assert (=> bm!512153 m!6993776))

(declare-fun m!6993778 () Bool)

(assert (=> b!6154780 m!6993778))

(assert (=> bm!512039 d!1928508))

(declare-fun bs!1525557 () Bool)

(declare-fun d!1928510 () Bool)

(assert (= bs!1525557 (and d!1928510 d!1928394)))

(declare-fun lambda!335743 () Int)

(assert (=> bs!1525557 (= lambda!335743 lambda!335725)))

(declare-fun bs!1525558 () Bool)

(assert (= bs!1525558 (and d!1928510 d!1928456)))

(assert (=> bs!1525558 (= lambda!335743 lambda!335732)))

(declare-fun bs!1525559 () Bool)

(assert (= bs!1525559 (and d!1928510 d!1928392)))

(assert (=> bs!1525559 (= lambda!335743 lambda!335724)))

(declare-fun bs!1525560 () Bool)

(assert (= bs!1525560 (and d!1928510 d!1928426)))

(assert (=> bs!1525560 (= lambda!335743 lambda!335729)))

(declare-fun bs!1525561 () Bool)

(assert (= bs!1525561 (and d!1928510 d!1928412)))

(assert (=> bs!1525561 (= lambda!335743 lambda!335726)))

(assert (=> d!1928510 (= (nullableZipper!1877 lt!2334770) (exists!2442 lt!2334770 lambda!335743))))

(declare-fun bs!1525562 () Bool)

(assert (= bs!1525562 d!1928510))

(declare-fun m!6993780 () Bool)

(assert (=> bs!1525562 m!6993780))

(assert (=> b!6153967 d!1928510))

(assert (=> d!1928184 d!1928408))

(assert (=> d!1928214 d!1928408))

(assert (=> bs!1525427 d!1928164))

(declare-fun d!1928512 () Bool)

(assert (=> d!1928512 (= (nullable!6089 (h!70911 (exprs!5980 lt!2334766))) (nullableFct!2053 (h!70911 (exprs!5980 lt!2334766))))))

(declare-fun bs!1525563 () Bool)

(assert (= bs!1525563 d!1928512))

(declare-fun m!6993782 () Bool)

(assert (=> bs!1525563 m!6993782))

(assert (=> b!6153801 d!1928512))

(declare-fun bm!512154 () Bool)

(declare-fun call!512160 () List!64587)

(declare-fun call!512163 () List!64587)

(assert (=> bm!512154 (= call!512160 call!512163)))

(declare-fun b!6154781 () Bool)

(declare-fun e!3750194 () (Set Context!10960))

(declare-fun call!512159 () (Set Context!10960))

(declare-fun call!512161 () (Set Context!10960))

(assert (=> b!6154781 (= e!3750194 (set.union call!512159 call!512161))))

(declare-fun b!6154782 () Bool)

(declare-fun c!1108027 () Bool)

(assert (=> b!6154782 (= c!1108027 (is-Star!16096 (h!70911 (exprs!5980 lt!2334763))))))

(declare-fun e!3750197 () (Set Context!10960))

(declare-fun e!3750195 () (Set Context!10960))

(assert (=> b!6154782 (= e!3750197 e!3750195)))

(declare-fun b!6154783 () Bool)

(declare-fun e!3750196 () (Set Context!10960))

(assert (=> b!6154783 (= e!3750196 e!3750194)))

(declare-fun c!1108026 () Bool)

(assert (=> b!6154783 (= c!1108026 (is-Union!16096 (h!70911 (exprs!5980 lt!2334763))))))

(declare-fun b!6154784 () Bool)

(declare-fun e!3750193 () (Set Context!10960))

(assert (=> b!6154784 (= e!3750193 e!3750197)))

(declare-fun c!1108028 () Bool)

(assert (=> b!6154784 (= c!1108028 (is-Concat!24941 (h!70911 (exprs!5980 lt!2334763))))))

(declare-fun b!6154785 () Bool)

(assert (=> b!6154785 (= e!3750195 (as set.empty (Set Context!10960)))))

(declare-fun bm!512156 () Bool)

(declare-fun c!1108029 () Bool)

(assert (=> bm!512156 (= call!512161 (derivationStepZipperDown!1344 (ite c!1108026 (regTwo!32705 (h!70911 (exprs!5980 lt!2334763))) (ite c!1108029 (regTwo!32704 (h!70911 (exprs!5980 lt!2334763))) (ite c!1108028 (regOne!32704 (h!70911 (exprs!5980 lt!2334763))) (reg!16425 (h!70911 (exprs!5980 lt!2334763)))))) (ite (or c!1108026 c!1108029) (Context!10961 (t!378078 (exprs!5980 lt!2334763))) (Context!10961 call!512160)) (h!70912 s!2326)))))

(declare-fun b!6154786 () Bool)

(declare-fun e!3750192 () Bool)

(assert (=> b!6154786 (= c!1108029 e!3750192)))

(declare-fun res!2549178 () Bool)

(assert (=> b!6154786 (=> (not res!2549178) (not e!3750192))))

(assert (=> b!6154786 (= res!2549178 (is-Concat!24941 (h!70911 (exprs!5980 lt!2334763))))))

(assert (=> b!6154786 (= e!3750194 e!3750193)))

(declare-fun b!6154787 () Bool)

(declare-fun call!512162 () (Set Context!10960))

(assert (=> b!6154787 (= e!3750195 call!512162)))

(declare-fun b!6154788 () Bool)

(assert (=> b!6154788 (= e!3750196 (set.insert (Context!10961 (t!378078 (exprs!5980 lt!2334763))) (as set.empty (Set Context!10960))))))

(declare-fun bm!512157 () Bool)

(declare-fun call!512164 () (Set Context!10960))

(assert (=> bm!512157 (= call!512162 call!512164)))

(declare-fun b!6154789 () Bool)

(assert (=> b!6154789 (= e!3750193 (set.union call!512159 call!512164))))

(declare-fun bm!512155 () Bool)

(assert (=> bm!512155 (= call!512163 ($colon$colon!1973 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334763)))) (ite (or c!1108029 c!1108028) (regTwo!32704 (h!70911 (exprs!5980 lt!2334763))) (h!70911 (exprs!5980 lt!2334763)))))))

(declare-fun d!1928514 () Bool)

(declare-fun c!1108025 () Bool)

(assert (=> d!1928514 (= c!1108025 (and (is-ElementMatch!16096 (h!70911 (exprs!5980 lt!2334763))) (= (c!1107723 (h!70911 (exprs!5980 lt!2334763))) (h!70912 s!2326))))))

(assert (=> d!1928514 (= (derivationStepZipperDown!1344 (h!70911 (exprs!5980 lt!2334763)) (Context!10961 (t!378078 (exprs!5980 lt!2334763))) (h!70912 s!2326)) e!3750196)))

(declare-fun bm!512158 () Bool)

(assert (=> bm!512158 (= call!512164 call!512161)))

(declare-fun bm!512159 () Bool)

(assert (=> bm!512159 (= call!512159 (derivationStepZipperDown!1344 (ite c!1108026 (regOne!32705 (h!70911 (exprs!5980 lt!2334763))) (regOne!32704 (h!70911 (exprs!5980 lt!2334763)))) (ite c!1108026 (Context!10961 (t!378078 (exprs!5980 lt!2334763))) (Context!10961 call!512163)) (h!70912 s!2326)))))

(declare-fun b!6154790 () Bool)

(assert (=> b!6154790 (= e!3750197 call!512162)))

(declare-fun b!6154791 () Bool)

(assert (=> b!6154791 (= e!3750192 (nullable!6089 (regOne!32704 (h!70911 (exprs!5980 lt!2334763)))))))

(assert (= (and d!1928514 c!1108025) b!6154788))

(assert (= (and d!1928514 (not c!1108025)) b!6154783))

(assert (= (and b!6154783 c!1108026) b!6154781))

(assert (= (and b!6154783 (not c!1108026)) b!6154786))

(assert (= (and b!6154786 res!2549178) b!6154791))

(assert (= (and b!6154786 c!1108029) b!6154789))

(assert (= (and b!6154786 (not c!1108029)) b!6154784))

(assert (= (and b!6154784 c!1108028) b!6154790))

(assert (= (and b!6154784 (not c!1108028)) b!6154782))

(assert (= (and b!6154782 c!1108027) b!6154787))

(assert (= (and b!6154782 (not c!1108027)) b!6154785))

(assert (= (or b!6154790 b!6154787) bm!512154))

(assert (= (or b!6154790 b!6154787) bm!512157))

(assert (= (or b!6154789 bm!512154) bm!512155))

(assert (= (or b!6154789 bm!512157) bm!512158))

(assert (= (or b!6154781 bm!512158) bm!512156))

(assert (= (or b!6154781 b!6154789) bm!512159))

(declare-fun m!6993784 () Bool)

(assert (=> bm!512156 m!6993784))

(declare-fun m!6993786 () Bool)

(assert (=> bm!512155 m!6993786))

(declare-fun m!6993788 () Bool)

(assert (=> b!6154788 m!6993788))

(declare-fun m!6993790 () Bool)

(assert (=> bm!512159 m!6993790))

(declare-fun m!6993792 () Bool)

(assert (=> b!6154791 m!6993792))

(assert (=> bm!512008 d!1928514))

(declare-fun bs!1525564 () Bool)

(declare-fun b!6154793 () Bool)

(assert (= bs!1525564 (and b!6154793 d!1928252)))

(declare-fun lambda!335744 () Int)

(assert (=> bs!1525564 (not (= lambda!335744 lambda!335689))))

(declare-fun bs!1525565 () Bool)

(assert (= bs!1525565 (and b!6154793 b!6153633)))

(assert (=> bs!1525565 (not (= lambda!335744 lambda!335640))))

(declare-fun bs!1525566 () Bool)

(assert (= bs!1525566 (and b!6154793 b!6153879)))

(assert (=> bs!1525566 (= (and (= (reg!16425 (regOne!32705 r!7292)) (reg!16425 r!7292)) (= (regOne!32705 r!7292) r!7292)) (= lambda!335744 lambda!335672))))

(declare-fun bs!1525567 () Bool)

(assert (= bs!1525567 (and b!6154793 b!6153881)))

(assert (=> bs!1525567 (not (= lambda!335744 lambda!335673))))

(declare-fun bs!1525568 () Bool)

(assert (= bs!1525568 (and b!6154793 d!1928462)))

(assert (=> bs!1525568 (not (= lambda!335744 lambda!335738))))

(assert (=> bs!1525568 (not (= lambda!335744 lambda!335737))))

(declare-fun bs!1525569 () Bool)

(assert (= bs!1525569 (and b!6154793 d!1928246)))

(assert (=> bs!1525569 (not (= lambda!335744 lambda!335686))))

(assert (=> bs!1525565 (not (= lambda!335744 lambda!335641))))

(assert (=> bs!1525569 (not (= lambda!335744 lambda!335685))))

(assert (=> b!6154793 true))

(assert (=> b!6154793 true))

(declare-fun bs!1525570 () Bool)

(declare-fun b!6154795 () Bool)

(assert (= bs!1525570 (and b!6154795 d!1928252)))

(declare-fun lambda!335745 () Int)

(assert (=> bs!1525570 (not (= lambda!335745 lambda!335689))))

(declare-fun bs!1525571 () Bool)

(assert (= bs!1525571 (and b!6154795 b!6153633)))

(assert (=> bs!1525571 (not (= lambda!335745 lambda!335640))))

(declare-fun bs!1525572 () Bool)

(assert (= bs!1525572 (and b!6154795 b!6153879)))

(assert (=> bs!1525572 (not (= lambda!335745 lambda!335672))))

(declare-fun bs!1525573 () Bool)

(assert (= bs!1525573 (and b!6154795 b!6154793)))

(assert (=> bs!1525573 (not (= lambda!335745 lambda!335744))))

(declare-fun bs!1525574 () Bool)

(assert (= bs!1525574 (and b!6154795 b!6153881)))

(assert (=> bs!1525574 (= (and (= (regOne!32704 (regOne!32705 r!7292)) (regOne!32704 r!7292)) (= (regTwo!32704 (regOne!32705 r!7292)) (regTwo!32704 r!7292))) (= lambda!335745 lambda!335673))))

(declare-fun bs!1525575 () Bool)

(assert (= bs!1525575 (and b!6154795 d!1928462)))

(assert (=> bs!1525575 (= (and (= (regOne!32704 (regOne!32705 r!7292)) (regOne!32704 r!7292)) (= (regTwo!32704 (regOne!32705 r!7292)) (regTwo!32704 r!7292))) (= lambda!335745 lambda!335738))))

(assert (=> bs!1525575 (not (= lambda!335745 lambda!335737))))

(declare-fun bs!1525576 () Bool)

(assert (= bs!1525576 (and b!6154795 d!1928246)))

(assert (=> bs!1525576 (= (and (= (regOne!32704 (regOne!32705 r!7292)) (regOne!32704 r!7292)) (= (regTwo!32704 (regOne!32705 r!7292)) (regTwo!32704 r!7292))) (= lambda!335745 lambda!335686))))

(assert (=> bs!1525571 (= (and (= (regOne!32704 (regOne!32705 r!7292)) (regOne!32704 r!7292)) (= (regTwo!32704 (regOne!32705 r!7292)) (regTwo!32704 r!7292))) (= lambda!335745 lambda!335641))))

(assert (=> bs!1525576 (not (= lambda!335745 lambda!335685))))

(assert (=> b!6154795 true))

(assert (=> b!6154795 true))

(declare-fun b!6154792 () Bool)

(declare-fun e!3750199 () Bool)

(declare-fun e!3750203 () Bool)

(assert (=> b!6154792 (= e!3750199 e!3750203)))

(declare-fun c!1108033 () Bool)

(assert (=> b!6154792 (= c!1108033 (is-Star!16096 (regOne!32705 r!7292)))))

(declare-fun e!3750200 () Bool)

(declare-fun call!512166 () Bool)

(assert (=> b!6154793 (= e!3750200 call!512166)))

(declare-fun b!6154794 () Bool)

(declare-fun e!3750198 () Bool)

(assert (=> b!6154794 (= e!3750198 (= s!2326 (Cons!64464 (c!1107723 (regOne!32705 r!7292)) Nil!64464)))))

(assert (=> b!6154795 (= e!3750203 call!512166)))

(declare-fun b!6154796 () Bool)

(declare-fun c!1108031 () Bool)

(assert (=> b!6154796 (= c!1108031 (is-ElementMatch!16096 (regOne!32705 r!7292)))))

(declare-fun e!3750202 () Bool)

(assert (=> b!6154796 (= e!3750202 e!3750198)))

(declare-fun b!6154797 () Bool)

(declare-fun c!1108032 () Bool)

(assert (=> b!6154797 (= c!1108032 (is-Union!16096 (regOne!32705 r!7292)))))

(assert (=> b!6154797 (= e!3750198 e!3750199)))

(declare-fun b!6154798 () Bool)

(declare-fun e!3750204 () Bool)

(assert (=> b!6154798 (= e!3750204 e!3750202)))

(declare-fun res!2549180 () Bool)

(assert (=> b!6154798 (= res!2549180 (not (is-EmptyLang!16096 (regOne!32705 r!7292))))))

(assert (=> b!6154798 (=> (not res!2549180) (not e!3750202))))

(declare-fun d!1928516 () Bool)

(declare-fun c!1108030 () Bool)

(assert (=> d!1928516 (= c!1108030 (is-EmptyExpr!16096 (regOne!32705 r!7292)))))

(assert (=> d!1928516 (= (matchRSpec!3197 (regOne!32705 r!7292) s!2326) e!3750204)))

(declare-fun b!6154799 () Bool)

(declare-fun e!3750201 () Bool)

(assert (=> b!6154799 (= e!3750199 e!3750201)))

(declare-fun res!2549181 () Bool)

(assert (=> b!6154799 (= res!2549181 (matchRSpec!3197 (regOne!32705 (regOne!32705 r!7292)) s!2326))))

(assert (=> b!6154799 (=> res!2549181 e!3750201)))

(declare-fun b!6154800 () Bool)

(assert (=> b!6154800 (= e!3750201 (matchRSpec!3197 (regTwo!32705 (regOne!32705 r!7292)) s!2326))))

(declare-fun bm!512160 () Bool)

(assert (=> bm!512160 (= call!512166 (Exists!3166 (ite c!1108033 lambda!335744 lambda!335745)))))

(declare-fun bm!512161 () Bool)

(declare-fun call!512165 () Bool)

(assert (=> bm!512161 (= call!512165 (isEmpty!36430 s!2326))))

(declare-fun b!6154801 () Bool)

(declare-fun res!2549179 () Bool)

(assert (=> b!6154801 (=> res!2549179 e!3750200)))

(assert (=> b!6154801 (= res!2549179 call!512165)))

(assert (=> b!6154801 (= e!3750203 e!3750200)))

(declare-fun b!6154802 () Bool)

(assert (=> b!6154802 (= e!3750204 call!512165)))

(assert (= (and d!1928516 c!1108030) b!6154802))

(assert (= (and d!1928516 (not c!1108030)) b!6154798))

(assert (= (and b!6154798 res!2549180) b!6154796))

(assert (= (and b!6154796 c!1108031) b!6154794))

(assert (= (and b!6154796 (not c!1108031)) b!6154797))

(assert (= (and b!6154797 c!1108032) b!6154799))

(assert (= (and b!6154797 (not c!1108032)) b!6154792))

(assert (= (and b!6154799 (not res!2549181)) b!6154800))

(assert (= (and b!6154792 c!1108033) b!6154801))

(assert (= (and b!6154792 (not c!1108033)) b!6154795))

(assert (= (and b!6154801 (not res!2549179)) b!6154793))

(assert (= (or b!6154793 b!6154795) bm!512160))

(assert (= (or b!6154802 b!6154801) bm!512161))

(declare-fun m!6993794 () Bool)

(assert (=> b!6154799 m!6993794))

(declare-fun m!6993796 () Bool)

(assert (=> b!6154800 m!6993796))

(declare-fun m!6993798 () Bool)

(assert (=> bm!512160 m!6993798))

(assert (=> bm!512161 m!6993044))

(assert (=> b!6153885 d!1928516))

(declare-fun b!6154817 () Bool)

(declare-fun e!3750218 () Bool)

(declare-fun call!512172 () Bool)

(assert (=> b!6154817 (= e!3750218 call!512172)))

(declare-fun b!6154818 () Bool)

(declare-fun e!3750219 () Bool)

(declare-fun e!3750222 () Bool)

(assert (=> b!6154818 (= e!3750219 e!3750222)))

(declare-fun res!2549196 () Bool)

(assert (=> b!6154818 (=> (not res!2549196) (not e!3750222))))

(assert (=> b!6154818 (= res!2549196 (and (not (is-EmptyLang!16096 (regTwo!32705 (regOne!32704 r!7292)))) (not (is-ElementMatch!16096 (regTwo!32705 (regOne!32704 r!7292))))))))

(declare-fun bm!512166 () Bool)

(declare-fun c!1108036 () Bool)

(assert (=> bm!512166 (= call!512172 (nullable!6089 (ite c!1108036 (regTwo!32705 (regTwo!32705 (regOne!32704 r!7292))) (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))))))))

(declare-fun b!6154820 () Bool)

(declare-fun e!3750221 () Bool)

(declare-fun e!3750217 () Bool)

(assert (=> b!6154820 (= e!3750221 e!3750217)))

(assert (=> b!6154820 (= c!1108036 (is-Union!16096 (regTwo!32705 (regOne!32704 r!7292))))))

(declare-fun bm!512167 () Bool)

(declare-fun call!512171 () Bool)

(assert (=> bm!512167 (= call!512171 (nullable!6089 (ite c!1108036 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))))))))

(declare-fun b!6154821 () Bool)

(assert (=> b!6154821 (= e!3750217 e!3750218)))

(declare-fun res!2549195 () Bool)

(assert (=> b!6154821 (= res!2549195 call!512171)))

(assert (=> b!6154821 (=> (not res!2549195) (not e!3750218))))

(declare-fun d!1928518 () Bool)

(declare-fun res!2549193 () Bool)

(assert (=> d!1928518 (=> res!2549193 e!3750219)))

(assert (=> d!1928518 (= res!2549193 (is-EmptyExpr!16096 (regTwo!32705 (regOne!32704 r!7292))))))

(assert (=> d!1928518 (= (nullableFct!2053 (regTwo!32705 (regOne!32704 r!7292))) e!3750219)))

(declare-fun b!6154819 () Bool)

(declare-fun e!3750220 () Bool)

(assert (=> b!6154819 (= e!3750217 e!3750220)))

(declare-fun res!2549192 () Bool)

(assert (=> b!6154819 (= res!2549192 call!512171)))

(assert (=> b!6154819 (=> res!2549192 e!3750220)))

(declare-fun b!6154822 () Bool)

(assert (=> b!6154822 (= e!3750222 e!3750221)))

(declare-fun res!2549194 () Bool)

(assert (=> b!6154822 (=> res!2549194 e!3750221)))

(assert (=> b!6154822 (= res!2549194 (is-Star!16096 (regTwo!32705 (regOne!32704 r!7292))))))

(declare-fun b!6154823 () Bool)

(assert (=> b!6154823 (= e!3750220 call!512172)))

(assert (= (and d!1928518 (not res!2549193)) b!6154818))

(assert (= (and b!6154818 res!2549196) b!6154822))

(assert (= (and b!6154822 (not res!2549194)) b!6154820))

(assert (= (and b!6154820 c!1108036) b!6154819))

(assert (= (and b!6154820 (not c!1108036)) b!6154821))

(assert (= (and b!6154819 (not res!2549192)) b!6154823))

(assert (= (and b!6154821 res!2549195) b!6154817))

(assert (= (or b!6154823 b!6154817) bm!512166))

(assert (= (or b!6154819 b!6154821) bm!512167))

(declare-fun m!6993800 () Bool)

(assert (=> bm!512166 m!6993800))

(declare-fun m!6993802 () Bool)

(assert (=> bm!512167 m!6993802))

(assert (=> d!1928174 d!1928518))

(declare-fun b!6154824 () Bool)

(declare-fun res!2549203 () Bool)

(declare-fun e!3750226 () Bool)

(assert (=> b!6154824 (=> res!2549203 e!3750226)))

(assert (=> b!6154824 (= res!2549203 (not (isEmpty!36430 (tail!11798 s!2326))))))

(declare-fun b!6154825 () Bool)

(declare-fun e!3750223 () Bool)

(assert (=> b!6154825 (= e!3750223 e!3750226)))

(declare-fun res!2549201 () Bool)

(assert (=> b!6154825 (=> res!2549201 e!3750226)))

(declare-fun call!512173 () Bool)

(assert (=> b!6154825 (= res!2549201 call!512173)))

(declare-fun b!6154826 () Bool)

(declare-fun e!3750227 () Bool)

(declare-fun lt!2334957 () Bool)

(assert (=> b!6154826 (= e!3750227 (not lt!2334957))))

(declare-fun b!6154827 () Bool)

(declare-fun e!3750224 () Bool)

(assert (=> b!6154827 (= e!3750224 (= (head!12713 s!2326) (c!1107723 (regTwo!32704 r!7292))))))

(declare-fun b!6154828 () Bool)

(declare-fun e!3750228 () Bool)

(assert (=> b!6154828 (= e!3750228 (nullable!6089 (regTwo!32704 r!7292)))))

(declare-fun b!6154829 () Bool)

(assert (=> b!6154829 (= e!3750228 (matchR!8279 (derivativeStep!4816 (regTwo!32704 r!7292) (head!12713 s!2326)) (tail!11798 s!2326)))))

(declare-fun b!6154830 () Bool)

(declare-fun e!3750225 () Bool)

(assert (=> b!6154830 (= e!3750225 (= lt!2334957 call!512173))))

(declare-fun bm!512168 () Bool)

(assert (=> bm!512168 (= call!512173 (isEmpty!36430 s!2326))))

(declare-fun d!1928520 () Bool)

(assert (=> d!1928520 e!3750225))

(declare-fun c!1108038 () Bool)

(assert (=> d!1928520 (= c!1108038 (is-EmptyExpr!16096 (regTwo!32704 r!7292)))))

(assert (=> d!1928520 (= lt!2334957 e!3750228)))

(declare-fun c!1108037 () Bool)

(assert (=> d!1928520 (= c!1108037 (isEmpty!36430 s!2326))))

(assert (=> d!1928520 (validRegex!7832 (regTwo!32704 r!7292))))

(assert (=> d!1928520 (= (matchR!8279 (regTwo!32704 r!7292) s!2326) lt!2334957)))

(declare-fun b!6154831 () Bool)

(declare-fun e!3750229 () Bool)

(assert (=> b!6154831 (= e!3750229 e!3750223)))

(declare-fun res!2549204 () Bool)

(assert (=> b!6154831 (=> (not res!2549204) (not e!3750223))))

(assert (=> b!6154831 (= res!2549204 (not lt!2334957))))

(declare-fun b!6154832 () Bool)

(declare-fun res!2549200 () Bool)

(assert (=> b!6154832 (=> (not res!2549200) (not e!3750224))))

(assert (=> b!6154832 (= res!2549200 (isEmpty!36430 (tail!11798 s!2326)))))

(declare-fun b!6154833 () Bool)

(declare-fun res!2549202 () Bool)

(assert (=> b!6154833 (=> res!2549202 e!3750229)))

(assert (=> b!6154833 (= res!2549202 e!3750224)))

(declare-fun res!2549197 () Bool)

(assert (=> b!6154833 (=> (not res!2549197) (not e!3750224))))

(assert (=> b!6154833 (= res!2549197 lt!2334957)))

(declare-fun b!6154834 () Bool)

(declare-fun res!2549198 () Bool)

(assert (=> b!6154834 (=> (not res!2549198) (not e!3750224))))

(assert (=> b!6154834 (= res!2549198 (not call!512173))))

(declare-fun b!6154835 () Bool)

(assert (=> b!6154835 (= e!3750226 (not (= (head!12713 s!2326) (c!1107723 (regTwo!32704 r!7292)))))))

(declare-fun b!6154836 () Bool)

(declare-fun res!2549199 () Bool)

(assert (=> b!6154836 (=> res!2549199 e!3750229)))

(assert (=> b!6154836 (= res!2549199 (not (is-ElementMatch!16096 (regTwo!32704 r!7292))))))

(assert (=> b!6154836 (= e!3750227 e!3750229)))

(declare-fun b!6154837 () Bool)

(assert (=> b!6154837 (= e!3750225 e!3750227)))

(declare-fun c!1108039 () Bool)

(assert (=> b!6154837 (= c!1108039 (is-EmptyLang!16096 (regTwo!32704 r!7292)))))

(assert (= (and d!1928520 c!1108037) b!6154828))

(assert (= (and d!1928520 (not c!1108037)) b!6154829))

(assert (= (and d!1928520 c!1108038) b!6154830))

(assert (= (and d!1928520 (not c!1108038)) b!6154837))

(assert (= (and b!6154837 c!1108039) b!6154826))

(assert (= (and b!6154837 (not c!1108039)) b!6154836))

(assert (= (and b!6154836 (not res!2549199)) b!6154833))

(assert (= (and b!6154833 res!2549197) b!6154834))

(assert (= (and b!6154834 res!2549198) b!6154832))

(assert (= (and b!6154832 res!2549200) b!6154827))

(assert (= (and b!6154833 (not res!2549202)) b!6154831))

(assert (= (and b!6154831 res!2549204) b!6154825))

(assert (= (and b!6154825 (not res!2549201)) b!6154824))

(assert (= (and b!6154824 (not res!2549203)) b!6154835))

(assert (= (or b!6154830 b!6154825 b!6154834) bm!512168))

(assert (=> b!6154824 m!6993046))

(assert (=> b!6154824 m!6993046))

(assert (=> b!6154824 m!6993048))

(assert (=> b!6154828 m!6993702))

(assert (=> b!6154835 m!6993052))

(assert (=> d!1928520 m!6993044))

(assert (=> d!1928520 m!6993708))

(assert (=> b!6154832 m!6993046))

(assert (=> b!6154832 m!6993046))

(assert (=> b!6154832 m!6993048))

(assert (=> b!6154829 m!6993052))

(assert (=> b!6154829 m!6993052))

(declare-fun m!6993804 () Bool)

(assert (=> b!6154829 m!6993804))

(assert (=> b!6154829 m!6993046))

(assert (=> b!6154829 m!6993804))

(assert (=> b!6154829 m!6993046))

(declare-fun m!6993806 () Bool)

(assert (=> b!6154829 m!6993806))

(assert (=> bm!512168 m!6993044))

(assert (=> b!6154827 m!6993052))

(assert (=> b!6154052 d!1928520))

(declare-fun bm!512169 () Bool)

(declare-fun call!512175 () List!64587)

(declare-fun call!512178 () List!64587)

(assert (=> bm!512169 (= call!512175 call!512178)))

(declare-fun b!6154838 () Bool)

(declare-fun e!3750232 () (Set Context!10960))

(declare-fun call!512174 () (Set Context!10960))

(declare-fun call!512176 () (Set Context!10960))

(assert (=> b!6154838 (= e!3750232 (set.union call!512174 call!512176))))

(declare-fun b!6154839 () Bool)

(declare-fun c!1108042 () Bool)

(assert (=> b!6154839 (= c!1108042 (is-Star!16096 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292))))))))

(declare-fun e!3750235 () (Set Context!10960))

(declare-fun e!3750233 () (Set Context!10960))

(assert (=> b!6154839 (= e!3750235 e!3750233)))

(declare-fun b!6154840 () Bool)

(declare-fun e!3750234 () (Set Context!10960))

(assert (=> b!6154840 (= e!3750234 e!3750232)))

(declare-fun c!1108041 () Bool)

(assert (=> b!6154840 (= c!1108041 (is-Union!16096 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292))))))))

(declare-fun b!6154841 () Bool)

(declare-fun e!3750231 () (Set Context!10960))

(assert (=> b!6154841 (= e!3750231 e!3750235)))

(declare-fun c!1108043 () Bool)

(assert (=> b!6154841 (= c!1108043 (is-Concat!24941 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292))))))))

(declare-fun b!6154842 () Bool)

(assert (=> b!6154842 (= e!3750233 (as set.empty (Set Context!10960)))))

(declare-fun bm!512171 () Bool)

(declare-fun c!1108044 () Bool)

(assert (=> bm!512171 (= call!512176 (derivationStepZipperDown!1344 (ite c!1108041 (regTwo!32705 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292))))) (ite c!1108044 (regTwo!32704 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292))))) (ite c!1108043 (regOne!32704 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292))))) (reg!16425 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292)))))))) (ite (or c!1108041 c!1108044) (ite c!1107846 lt!2334763 (Context!10961 call!512052)) (Context!10961 call!512175)) (h!70912 s!2326)))))

(declare-fun b!6154843 () Bool)

(declare-fun e!3750230 () Bool)

(assert (=> b!6154843 (= c!1108044 e!3750230)))

(declare-fun res!2549205 () Bool)

(assert (=> b!6154843 (=> (not res!2549205) (not e!3750230))))

(assert (=> b!6154843 (= res!2549205 (is-Concat!24941 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292))))))))

(assert (=> b!6154843 (= e!3750232 e!3750231)))

(declare-fun b!6154844 () Bool)

(declare-fun call!512177 () (Set Context!10960))

(assert (=> b!6154844 (= e!3750233 call!512177)))

(declare-fun b!6154845 () Bool)

(assert (=> b!6154845 (= e!3750234 (set.insert (ite c!1107846 lt!2334763 (Context!10961 call!512052)) (as set.empty (Set Context!10960))))))

(declare-fun bm!512172 () Bool)

(declare-fun call!512179 () (Set Context!10960))

(assert (=> bm!512172 (= call!512177 call!512179)))

(declare-fun b!6154846 () Bool)

(assert (=> b!6154846 (= e!3750231 (set.union call!512174 call!512179))))

(declare-fun bm!512170 () Bool)

(assert (=> bm!512170 (= call!512178 ($colon$colon!1973 (exprs!5980 (ite c!1107846 lt!2334763 (Context!10961 call!512052))) (ite (or c!1108044 c!1108043) (regTwo!32704 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292))))) (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292)))))))))

(declare-fun c!1108040 () Bool)

(declare-fun d!1928522 () Bool)

(assert (=> d!1928522 (= c!1108040 (and (is-ElementMatch!16096 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292))))) (= (c!1107723 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292))))) (h!70912 s!2326))))))

(assert (=> d!1928522 (= (derivationStepZipperDown!1344 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292)))) (ite c!1107846 lt!2334763 (Context!10961 call!512052)) (h!70912 s!2326)) e!3750234)))

(declare-fun bm!512173 () Bool)

(assert (=> bm!512173 (= call!512179 call!512176)))

(declare-fun bm!512174 () Bool)

(assert (=> bm!512174 (= call!512174 (derivationStepZipperDown!1344 (ite c!1108041 (regOne!32705 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292))))) (regOne!32704 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292)))))) (ite c!1108041 (ite c!1107846 lt!2334763 (Context!10961 call!512052)) (Context!10961 call!512178)) (h!70912 s!2326)))))

(declare-fun b!6154847 () Bool)

(assert (=> b!6154847 (= e!3750235 call!512177)))

(declare-fun b!6154848 () Bool)

(assert (=> b!6154848 (= e!3750230 (nullable!6089 (regOne!32704 (ite c!1107846 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292)))))))))

(assert (= (and d!1928522 c!1108040) b!6154845))

(assert (= (and d!1928522 (not c!1108040)) b!6154840))

(assert (= (and b!6154840 c!1108041) b!6154838))

(assert (= (and b!6154840 (not c!1108041)) b!6154843))

(assert (= (and b!6154843 res!2549205) b!6154848))

(assert (= (and b!6154843 c!1108044) b!6154846))

(assert (= (and b!6154843 (not c!1108044)) b!6154841))

(assert (= (and b!6154841 c!1108043) b!6154847))

(assert (= (and b!6154841 (not c!1108043)) b!6154839))

(assert (= (and b!6154839 c!1108042) b!6154844))

(assert (= (and b!6154839 (not c!1108042)) b!6154842))

(assert (= (or b!6154847 b!6154844) bm!512169))

(assert (= (or b!6154847 b!6154844) bm!512172))

(assert (= (or b!6154846 bm!512169) bm!512170))

(assert (= (or b!6154846 bm!512172) bm!512173))

(assert (= (or b!6154838 bm!512173) bm!512171))

(assert (= (or b!6154838 b!6154846) bm!512174))

(declare-fun m!6993808 () Bool)

(assert (=> bm!512171 m!6993808))

(declare-fun m!6993810 () Bool)

(assert (=> bm!512170 m!6993810))

(declare-fun m!6993812 () Bool)

(assert (=> b!6154845 m!6993812))

(declare-fun m!6993814 () Bool)

(assert (=> bm!512174 m!6993814))

(declare-fun m!6993816 () Bool)

(assert (=> b!6154848 m!6993816))

(assert (=> bm!512048 d!1928522))

(declare-fun bm!512175 () Bool)

(declare-fun call!512181 () List!64587)

(declare-fun call!512184 () List!64587)

(assert (=> bm!512175 (= call!512181 call!512184)))

(declare-fun b!6154849 () Bool)

(declare-fun e!3750238 () (Set Context!10960))

(declare-fun call!512180 () (Set Context!10960))

(declare-fun call!512182 () (Set Context!10960))

(assert (=> b!6154849 (= e!3750238 (set.union call!512180 call!512182))))

(declare-fun b!6154850 () Bool)

(declare-fun c!1108047 () Bool)

(assert (=> b!6154850 (= c!1108047 (is-Star!16096 (h!70911 (exprs!5980 lt!2334773))))))

(declare-fun e!3750241 () (Set Context!10960))

(declare-fun e!3750239 () (Set Context!10960))

(assert (=> b!6154850 (= e!3750241 e!3750239)))

(declare-fun b!6154851 () Bool)

(declare-fun e!3750240 () (Set Context!10960))

(assert (=> b!6154851 (= e!3750240 e!3750238)))

(declare-fun c!1108046 () Bool)

(assert (=> b!6154851 (= c!1108046 (is-Union!16096 (h!70911 (exprs!5980 lt!2334773))))))

(declare-fun b!6154852 () Bool)

(declare-fun e!3750237 () (Set Context!10960))

(assert (=> b!6154852 (= e!3750237 e!3750241)))

(declare-fun c!1108048 () Bool)

(assert (=> b!6154852 (= c!1108048 (is-Concat!24941 (h!70911 (exprs!5980 lt!2334773))))))

(declare-fun b!6154853 () Bool)

(assert (=> b!6154853 (= e!3750239 (as set.empty (Set Context!10960)))))

(declare-fun c!1108049 () Bool)

(declare-fun bm!512177 () Bool)

(assert (=> bm!512177 (= call!512182 (derivationStepZipperDown!1344 (ite c!1108046 (regTwo!32705 (h!70911 (exprs!5980 lt!2334773))) (ite c!1108049 (regTwo!32704 (h!70911 (exprs!5980 lt!2334773))) (ite c!1108048 (regOne!32704 (h!70911 (exprs!5980 lt!2334773))) (reg!16425 (h!70911 (exprs!5980 lt!2334773)))))) (ite (or c!1108046 c!1108049) (Context!10961 (t!378078 (exprs!5980 lt!2334773))) (Context!10961 call!512181)) (h!70912 s!2326)))))

(declare-fun b!6154854 () Bool)

(declare-fun e!3750236 () Bool)

(assert (=> b!6154854 (= c!1108049 e!3750236)))

(declare-fun res!2549206 () Bool)

(assert (=> b!6154854 (=> (not res!2549206) (not e!3750236))))

(assert (=> b!6154854 (= res!2549206 (is-Concat!24941 (h!70911 (exprs!5980 lt!2334773))))))

(assert (=> b!6154854 (= e!3750238 e!3750237)))

(declare-fun b!6154855 () Bool)

(declare-fun call!512183 () (Set Context!10960))

(assert (=> b!6154855 (= e!3750239 call!512183)))

(declare-fun b!6154856 () Bool)

(assert (=> b!6154856 (= e!3750240 (set.insert (Context!10961 (t!378078 (exprs!5980 lt!2334773))) (as set.empty (Set Context!10960))))))

(declare-fun bm!512178 () Bool)

(declare-fun call!512185 () (Set Context!10960))

(assert (=> bm!512178 (= call!512183 call!512185)))

(declare-fun b!6154857 () Bool)

(assert (=> b!6154857 (= e!3750237 (set.union call!512180 call!512185))))

(declare-fun bm!512176 () Bool)

(assert (=> bm!512176 (= call!512184 ($colon$colon!1973 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334773)))) (ite (or c!1108049 c!1108048) (regTwo!32704 (h!70911 (exprs!5980 lt!2334773))) (h!70911 (exprs!5980 lt!2334773)))))))

(declare-fun d!1928524 () Bool)

(declare-fun c!1108045 () Bool)

(assert (=> d!1928524 (= c!1108045 (and (is-ElementMatch!16096 (h!70911 (exprs!5980 lt!2334773))) (= (c!1107723 (h!70911 (exprs!5980 lt!2334773))) (h!70912 s!2326))))))

(assert (=> d!1928524 (= (derivationStepZipperDown!1344 (h!70911 (exprs!5980 lt!2334773)) (Context!10961 (t!378078 (exprs!5980 lt!2334773))) (h!70912 s!2326)) e!3750240)))

(declare-fun bm!512179 () Bool)

(assert (=> bm!512179 (= call!512185 call!512182)))

(declare-fun bm!512180 () Bool)

(assert (=> bm!512180 (= call!512180 (derivationStepZipperDown!1344 (ite c!1108046 (regOne!32705 (h!70911 (exprs!5980 lt!2334773))) (regOne!32704 (h!70911 (exprs!5980 lt!2334773)))) (ite c!1108046 (Context!10961 (t!378078 (exprs!5980 lt!2334773))) (Context!10961 call!512184)) (h!70912 s!2326)))))

(declare-fun b!6154858 () Bool)

(assert (=> b!6154858 (= e!3750241 call!512183)))

(declare-fun b!6154859 () Bool)

(assert (=> b!6154859 (= e!3750236 (nullable!6089 (regOne!32704 (h!70911 (exprs!5980 lt!2334773)))))))

(assert (= (and d!1928524 c!1108045) b!6154856))

(assert (= (and d!1928524 (not c!1108045)) b!6154851))

(assert (= (and b!6154851 c!1108046) b!6154849))

(assert (= (and b!6154851 (not c!1108046)) b!6154854))

(assert (= (and b!6154854 res!2549206) b!6154859))

(assert (= (and b!6154854 c!1108049) b!6154857))

(assert (= (and b!6154854 (not c!1108049)) b!6154852))

(assert (= (and b!6154852 c!1108048) b!6154858))

(assert (= (and b!6154852 (not c!1108048)) b!6154850))

(assert (= (and b!6154850 c!1108047) b!6154855))

(assert (= (and b!6154850 (not c!1108047)) b!6154853))

(assert (= (or b!6154858 b!6154855) bm!512175))

(assert (= (or b!6154858 b!6154855) bm!512178))

(assert (= (or b!6154857 bm!512175) bm!512176))

(assert (= (or b!6154857 bm!512178) bm!512179))

(assert (= (or b!6154849 bm!512179) bm!512177))

(assert (= (or b!6154849 b!6154857) bm!512180))

(declare-fun m!6993818 () Bool)

(assert (=> bm!512177 m!6993818))

(declare-fun m!6993820 () Bool)

(assert (=> bm!512176 m!6993820))

(declare-fun m!6993822 () Bool)

(assert (=> b!6154856 m!6993822))

(declare-fun m!6993824 () Bool)

(assert (=> bm!512180 m!6993824))

(declare-fun m!6993826 () Bool)

(assert (=> b!6154859 m!6993826))

(assert (=> bm!511996 d!1928524))

(declare-fun d!1928526 () Bool)

(assert (=> d!1928526 (= (isEmptyLang!1523 lt!2334885) (is-EmptyLang!16096 lt!2334885))))

(assert (=> b!6153957 d!1928526))

(declare-fun bs!1525577 () Bool)

(declare-fun d!1928528 () Bool)

(assert (= bs!1525577 (and d!1928528 d!1928394)))

(declare-fun lambda!335746 () Int)

(assert (=> bs!1525577 (= lambda!335746 lambda!335725)))

(declare-fun bs!1525578 () Bool)

(assert (= bs!1525578 (and d!1928528 d!1928456)))

(assert (=> bs!1525578 (= lambda!335746 lambda!335732)))

(declare-fun bs!1525579 () Bool)

(assert (= bs!1525579 (and d!1928528 d!1928392)))

(assert (=> bs!1525579 (= lambda!335746 lambda!335724)))

(declare-fun bs!1525580 () Bool)

(assert (= bs!1525580 (and d!1928528 d!1928426)))

(assert (=> bs!1525580 (= lambda!335746 lambda!335729)))

(declare-fun bs!1525581 () Bool)

(assert (= bs!1525581 (and d!1928528 d!1928510)))

(assert (=> bs!1525581 (= lambda!335746 lambda!335743)))

(declare-fun bs!1525582 () Bool)

(assert (= bs!1525582 (and d!1928528 d!1928412)))

(assert (=> bs!1525582 (= lambda!335746 lambda!335726)))

(assert (=> d!1928528 (= (nullableZipper!1877 lt!2334756) (exists!2442 lt!2334756 lambda!335746))))

(declare-fun bs!1525583 () Bool)

(assert (= bs!1525583 d!1928528))

(declare-fun m!6993828 () Bool)

(assert (=> bs!1525583 m!6993828))

(assert (=> b!6153782 d!1928528))

(assert (=> d!1928210 d!1928408))

(declare-fun d!1928530 () Bool)

(declare-fun c!1108050 () Bool)

(assert (=> d!1928530 (= c!1108050 (isEmpty!36430 (tail!11798 (t!378079 s!2326))))))

(declare-fun e!3750242 () Bool)

(assert (=> d!1928530 (= (matchZipper!2108 (derivationStepZipper!2069 lt!2334757 (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))) e!3750242)))

(declare-fun b!6154860 () Bool)

(assert (=> b!6154860 (= e!3750242 (nullableZipper!1877 (derivationStepZipper!2069 lt!2334757 (head!12713 (t!378079 s!2326)))))))

(declare-fun b!6154861 () Bool)

(assert (=> b!6154861 (= e!3750242 (matchZipper!2108 (derivationStepZipper!2069 (derivationStepZipper!2069 lt!2334757 (head!12713 (t!378079 s!2326))) (head!12713 (tail!11798 (t!378079 s!2326)))) (tail!11798 (tail!11798 (t!378079 s!2326)))))))

(assert (= (and d!1928530 c!1108050) b!6154860))

(assert (= (and d!1928530 (not c!1108050)) b!6154861))

(assert (=> d!1928530 m!6992960))

(assert (=> d!1928530 m!6993602))

(assert (=> b!6154860 m!6993160))

(declare-fun m!6993830 () Bool)

(assert (=> b!6154860 m!6993830))

(assert (=> b!6154861 m!6992960))

(assert (=> b!6154861 m!6993606))

(assert (=> b!6154861 m!6993160))

(assert (=> b!6154861 m!6993606))

(declare-fun m!6993832 () Bool)

(assert (=> b!6154861 m!6993832))

(assert (=> b!6154861 m!6992960))

(assert (=> b!6154861 m!6993610))

(assert (=> b!6154861 m!6993832))

(assert (=> b!6154861 m!6993610))

(declare-fun m!6993834 () Bool)

(assert (=> b!6154861 m!6993834))

(assert (=> b!6154028 d!1928530))

(declare-fun bs!1525584 () Bool)

(declare-fun d!1928532 () Bool)

(assert (= bs!1525584 (and d!1928532 b!6153643)))

(declare-fun lambda!335747 () Int)

(assert (=> bs!1525584 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335747 lambda!335642))))

(declare-fun bs!1525585 () Bool)

(assert (= bs!1525585 (and d!1928532 d!1928432)))

(assert (=> bs!1525585 (= lambda!335747 lambda!335730)))

(declare-fun bs!1525586 () Bool)

(assert (= bs!1525586 (and d!1928532 d!1928472)))

(assert (=> bs!1525586 (= lambda!335747 lambda!335740)))

(declare-fun bs!1525587 () Bool)

(assert (= bs!1525587 (and d!1928532 d!1928176)))

(assert (=> bs!1525587 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335747 lambda!335660))))

(declare-fun bs!1525588 () Bool)

(assert (= bs!1525588 (and d!1928532 d!1928450)))

(assert (=> bs!1525588 (= lambda!335747 lambda!335731)))

(declare-fun bs!1525589 () Bool)

(assert (= bs!1525589 (and d!1928532 d!1928488)))

(assert (=> bs!1525589 (= lambda!335747 lambda!335741)))

(declare-fun bs!1525590 () Bool)

(assert (= bs!1525590 (and d!1928532 d!1928502)))

(assert (=> bs!1525590 (= lambda!335747 lambda!335742)))

(assert (=> d!1928532 true))

(assert (=> d!1928532 (= (derivationStepZipper!2069 lt!2334757 (head!12713 (t!378079 s!2326))) (flatMap!1601 lt!2334757 lambda!335747))))

(declare-fun bs!1525591 () Bool)

(assert (= bs!1525591 d!1928532))

(declare-fun m!6993836 () Bool)

(assert (=> bs!1525591 m!6993836))

(assert (=> b!6154028 d!1928532))

(assert (=> b!6154028 d!1928434))

(assert (=> b!6154028 d!1928436))

(declare-fun d!1928534 () Bool)

(assert (=> d!1928534 (= (nullable!6089 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (nullableFct!2053 (h!70911 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))))))

(declare-fun bs!1525592 () Bool)

(assert (= bs!1525592 d!1928534))

(declare-fun m!6993838 () Bool)

(assert (=> bs!1525592 m!6993838))

(assert (=> b!6153979 d!1928534))

(declare-fun d!1928536 () Bool)

(assert (=> d!1928536 true))

(assert (=> d!1928536 true))

(declare-fun res!2549209 () Bool)

(assert (=> d!1928536 (= (choose!45745 lambda!335641) res!2549209)))

(assert (=> d!1928250 d!1928536))

(declare-fun b!6154862 () Bool)

(declare-fun e!3750244 () Bool)

(declare-fun call!512187 () Bool)

(assert (=> b!6154862 (= e!3750244 call!512187)))

(declare-fun b!6154863 () Bool)

(declare-fun e!3750245 () Bool)

(declare-fun e!3750248 () Bool)

(assert (=> b!6154863 (= e!3750245 e!3750248)))

(declare-fun res!2549214 () Bool)

(assert (=> b!6154863 (=> (not res!2549214) (not e!3750248))))

(assert (=> b!6154863 (= res!2549214 (and (not (is-EmptyLang!16096 (regOne!32705 (regOne!32704 r!7292)))) (not (is-ElementMatch!16096 (regOne!32705 (regOne!32704 r!7292))))))))

(declare-fun bm!512181 () Bool)

(declare-fun c!1108051 () Bool)

(assert (=> bm!512181 (= call!512187 (nullable!6089 (ite c!1108051 (regTwo!32705 (regOne!32705 (regOne!32704 r!7292))) (regTwo!32704 (regOne!32705 (regOne!32704 r!7292))))))))

(declare-fun b!6154865 () Bool)

(declare-fun e!3750247 () Bool)

(declare-fun e!3750243 () Bool)

(assert (=> b!6154865 (= e!3750247 e!3750243)))

(assert (=> b!6154865 (= c!1108051 (is-Union!16096 (regOne!32705 (regOne!32704 r!7292))))))

(declare-fun bm!512182 () Bool)

(declare-fun call!512186 () Bool)

(assert (=> bm!512182 (= call!512186 (nullable!6089 (ite c!1108051 (regOne!32705 (regOne!32705 (regOne!32704 r!7292))) (regOne!32704 (regOne!32705 (regOne!32704 r!7292))))))))

(declare-fun b!6154866 () Bool)

(assert (=> b!6154866 (= e!3750243 e!3750244)))

(declare-fun res!2549213 () Bool)

(assert (=> b!6154866 (= res!2549213 call!512186)))

(assert (=> b!6154866 (=> (not res!2549213) (not e!3750244))))

(declare-fun d!1928538 () Bool)

(declare-fun res!2549211 () Bool)

(assert (=> d!1928538 (=> res!2549211 e!3750245)))

(assert (=> d!1928538 (= res!2549211 (is-EmptyExpr!16096 (regOne!32705 (regOne!32704 r!7292))))))

(assert (=> d!1928538 (= (nullableFct!2053 (regOne!32705 (regOne!32704 r!7292))) e!3750245)))

(declare-fun b!6154864 () Bool)

(declare-fun e!3750246 () Bool)

(assert (=> b!6154864 (= e!3750243 e!3750246)))

(declare-fun res!2549210 () Bool)

(assert (=> b!6154864 (= res!2549210 call!512186)))

(assert (=> b!6154864 (=> res!2549210 e!3750246)))

(declare-fun b!6154867 () Bool)

(assert (=> b!6154867 (= e!3750248 e!3750247)))

(declare-fun res!2549212 () Bool)

(assert (=> b!6154867 (=> res!2549212 e!3750247)))

(assert (=> b!6154867 (= res!2549212 (is-Star!16096 (regOne!32705 (regOne!32704 r!7292))))))

(declare-fun b!6154868 () Bool)

(assert (=> b!6154868 (= e!3750246 call!512187)))

(assert (= (and d!1928538 (not res!2549211)) b!6154863))

(assert (= (and b!6154863 res!2549214) b!6154867))

(assert (= (and b!6154867 (not res!2549212)) b!6154865))

(assert (= (and b!6154865 c!1108051) b!6154864))

(assert (= (and b!6154865 (not c!1108051)) b!6154866))

(assert (= (and b!6154864 (not res!2549210)) b!6154868))

(assert (= (and b!6154866 res!2549213) b!6154862))

(assert (= (or b!6154868 b!6154862) bm!512181))

(assert (= (or b!6154864 b!6154866) bm!512182))

(declare-fun m!6993840 () Bool)

(assert (=> bm!512181 m!6993840))

(declare-fun m!6993842 () Bool)

(assert (=> bm!512182 m!6993842))

(assert (=> d!1928170 d!1928538))

(declare-fun d!1928540 () Bool)

(declare-fun res!2549215 () Bool)

(declare-fun e!3750249 () Bool)

(assert (=> d!1928540 (=> res!2549215 e!3750249)))

(assert (=> d!1928540 (= res!2549215 (is-Nil!64463 (exprs!5980 setElem!41673)))))

(assert (=> d!1928540 (= (forall!15217 (exprs!5980 setElem!41673) lambda!335666) e!3750249)))

(declare-fun b!6154869 () Bool)

(declare-fun e!3750250 () Bool)

(assert (=> b!6154869 (= e!3750249 e!3750250)))

(declare-fun res!2549216 () Bool)

(assert (=> b!6154869 (=> (not res!2549216) (not e!3750250))))

(assert (=> b!6154869 (= res!2549216 (dynLambda!25415 lambda!335666 (h!70911 (exprs!5980 setElem!41673))))))

(declare-fun b!6154870 () Bool)

(assert (=> b!6154870 (= e!3750250 (forall!15217 (t!378078 (exprs!5980 setElem!41673)) lambda!335666))))

(assert (= (and d!1928540 (not res!2549215)) b!6154869))

(assert (= (and b!6154869 res!2549216) b!6154870))

(declare-fun b_lambda!234273 () Bool)

(assert (=> (not b_lambda!234273) (not b!6154869)))

(declare-fun m!6993844 () Bool)

(assert (=> b!6154869 m!6993844))

(declare-fun m!6993846 () Bool)

(assert (=> b!6154870 m!6993846))

(assert (=> d!1928190 d!1928540))

(declare-fun d!1928542 () Bool)

(assert (=> d!1928542 (= (isEmpty!36430 (tail!11798 s!2326)) (is-Nil!64464 (tail!11798 s!2326)))))

(assert (=> b!6153917 d!1928542))

(declare-fun d!1928544 () Bool)

(assert (=> d!1928544 (= (tail!11798 s!2326) (t!378079 s!2326))))

(assert (=> b!6153917 d!1928544))

(declare-fun bs!1525593 () Bool)

(declare-fun d!1928546 () Bool)

(assert (= bs!1525593 (and d!1928546 d!1928218)))

(declare-fun lambda!335748 () Int)

(assert (=> bs!1525593 (= lambda!335748 lambda!335680)))

(declare-fun bs!1525594 () Bool)

(assert (= bs!1525594 (and d!1928546 d!1928204)))

(assert (=> bs!1525594 (= lambda!335748 lambda!335676)))

(declare-fun bs!1525595 () Bool)

(assert (= bs!1525595 (and d!1928546 d!1928186)))

(assert (=> bs!1525595 (= lambda!335748 lambda!335663)))

(declare-fun bs!1525596 () Bool)

(assert (= bs!1525596 (and d!1928546 d!1928414)))

(assert (=> bs!1525596 (= lambda!335748 lambda!335727)))

(declare-fun bs!1525597 () Bool)

(assert (= bs!1525597 (and d!1928546 d!1928190)))

(assert (=> bs!1525597 (= lambda!335748 lambda!335666)))

(declare-fun bs!1525598 () Bool)

(assert (= bs!1525598 (and d!1928546 d!1928194)))

(assert (=> bs!1525598 (= lambda!335748 lambda!335667)))

(declare-fun bs!1525599 () Bool)

(assert (= bs!1525599 (and d!1928546 d!1928416)))

(assert (=> bs!1525599 (= lambda!335748 lambda!335728)))

(declare-fun bs!1525600 () Bool)

(assert (= bs!1525600 (and d!1928546 d!1928206)))

(assert (=> bs!1525600 (= lambda!335748 lambda!335679)))

(declare-fun bs!1525601 () Bool)

(assert (= bs!1525601 (and d!1928546 d!1928466)))

(assert (=> bs!1525601 (= lambda!335748 lambda!335739)))

(assert (=> d!1928546 (= (inv!83488 (h!70913 (t!378080 zl!343))) (forall!15217 (exprs!5980 (h!70913 (t!378080 zl!343))) lambda!335748))))

(declare-fun bs!1525602 () Bool)

(assert (= bs!1525602 d!1928546))

(declare-fun m!6993848 () Bool)

(assert (=> bs!1525602 m!6993848))

(assert (=> b!6154161 d!1928546))

(declare-fun b!6154871 () Bool)

(declare-fun e!3750251 () Bool)

(declare-fun e!3750253 () Bool)

(assert (=> b!6154871 (= e!3750251 e!3750253)))

(declare-fun res!2549217 () Bool)

(assert (=> b!6154871 (=> (not res!2549217) (not e!3750253))))

(declare-fun call!512189 () Bool)

(assert (=> b!6154871 (= res!2549217 call!512189)))

(declare-fun b!6154872 () Bool)

(declare-fun e!3750256 () Bool)

(declare-fun e!3750254 () Bool)

(assert (=> b!6154872 (= e!3750256 e!3750254)))

(declare-fun c!1108052 () Bool)

(assert (=> b!6154872 (= c!1108052 (is-Star!16096 (ite c!1107839 (regOne!32705 r!7292) (regOne!32704 r!7292))))))

(declare-fun b!6154873 () Bool)

(declare-fun e!3750252 () Bool)

(declare-fun call!512188 () Bool)

(assert (=> b!6154873 (= e!3750252 call!512188)))

(declare-fun bm!512184 () Bool)

(declare-fun call!512190 () Bool)

(assert (=> bm!512184 (= call!512190 call!512188)))

(declare-fun bm!512185 () Bool)

(declare-fun c!1108053 () Bool)

(assert (=> bm!512185 (= call!512189 (validRegex!7832 (ite c!1108053 (regOne!32705 (ite c!1107839 (regOne!32705 r!7292) (regOne!32704 r!7292))) (regOne!32704 (ite c!1107839 (regOne!32705 r!7292) (regOne!32704 r!7292))))))))

(declare-fun b!6154874 () Bool)

(declare-fun e!3750255 () Bool)

(assert (=> b!6154874 (= e!3750254 e!3750255)))

(assert (=> b!6154874 (= c!1108053 (is-Union!16096 (ite c!1107839 (regOne!32705 r!7292) (regOne!32704 r!7292))))))

(declare-fun b!6154875 () Bool)

(declare-fun e!3750257 () Bool)

(assert (=> b!6154875 (= e!3750257 call!512190)))

(declare-fun b!6154876 () Bool)

(declare-fun res!2549220 () Bool)

(assert (=> b!6154876 (=> res!2549220 e!3750251)))

(assert (=> b!6154876 (= res!2549220 (not (is-Concat!24941 (ite c!1107839 (regOne!32705 r!7292) (regOne!32704 r!7292)))))))

(assert (=> b!6154876 (= e!3750255 e!3750251)))

(declare-fun b!6154877 () Bool)

(assert (=> b!6154877 (= e!3750253 call!512190)))

(declare-fun bm!512183 () Bool)

(assert (=> bm!512183 (= call!512188 (validRegex!7832 (ite c!1108052 (reg!16425 (ite c!1107839 (regOne!32705 r!7292) (regOne!32704 r!7292))) (ite c!1108053 (regTwo!32705 (ite c!1107839 (regOne!32705 r!7292) (regOne!32704 r!7292))) (regTwo!32704 (ite c!1107839 (regOne!32705 r!7292) (regOne!32704 r!7292)))))))))

(declare-fun d!1928548 () Bool)

(declare-fun res!2549219 () Bool)

(assert (=> d!1928548 (=> res!2549219 e!3750256)))

(assert (=> d!1928548 (= res!2549219 (is-ElementMatch!16096 (ite c!1107839 (regOne!32705 r!7292) (regOne!32704 r!7292))))))

(assert (=> d!1928548 (= (validRegex!7832 (ite c!1107839 (regOne!32705 r!7292) (regOne!32704 r!7292))) e!3750256)))

(declare-fun b!6154878 () Bool)

(declare-fun res!2549218 () Bool)

(assert (=> b!6154878 (=> (not res!2549218) (not e!3750257))))

(assert (=> b!6154878 (= res!2549218 call!512189)))

(assert (=> b!6154878 (= e!3750255 e!3750257)))

(declare-fun b!6154879 () Bool)

(assert (=> b!6154879 (= e!3750254 e!3750252)))

(declare-fun res!2549221 () Bool)

(assert (=> b!6154879 (= res!2549221 (not (nullable!6089 (reg!16425 (ite c!1107839 (regOne!32705 r!7292) (regOne!32704 r!7292))))))))

(assert (=> b!6154879 (=> (not res!2549221) (not e!3750252))))

(assert (= (and d!1928548 (not res!2549219)) b!6154872))

(assert (= (and b!6154872 c!1108052) b!6154879))

(assert (= (and b!6154872 (not c!1108052)) b!6154874))

(assert (= (and b!6154879 res!2549221) b!6154873))

(assert (= (and b!6154874 c!1108053) b!6154878))

(assert (= (and b!6154874 (not c!1108053)) b!6154876))

(assert (= (and b!6154878 res!2549218) b!6154875))

(assert (= (and b!6154876 (not res!2549220)) b!6154871))

(assert (= (and b!6154871 res!2549217) b!6154877))

(assert (= (or b!6154875 b!6154877) bm!512184))

(assert (= (or b!6154878 b!6154871) bm!512185))

(assert (= (or b!6154873 bm!512184) bm!512183))

(declare-fun m!6993850 () Bool)

(assert (=> bm!512185 m!6993850))

(declare-fun m!6993852 () Bool)

(assert (=> bm!512183 m!6993852))

(declare-fun m!6993854 () Bool)

(assert (=> b!6154879 m!6993854))

(assert (=> bm!512036 d!1928548))

(assert (=> d!1928240 d!1928408))

(declare-fun d!1928550 () Bool)

(assert (=> d!1928550 (= (nullable!6089 r!7292) (nullableFct!2053 r!7292))))

(declare-fun bs!1525603 () Bool)

(assert (= bs!1525603 d!1928550))

(declare-fun m!6993856 () Bool)

(assert (=> bs!1525603 m!6993856))

(assert (=> b!6153921 d!1928550))

(declare-fun b!6154890 () Bool)

(declare-fun res!2549226 () Bool)

(declare-fun e!3750263 () Bool)

(assert (=> b!6154890 (=> (not res!2549226) (not e!3750263))))

(declare-fun lt!2334960 () List!64588)

(declare-fun size!40238 (List!64588) Int)

(assert (=> b!6154890 (= res!2549226 (= (size!40238 lt!2334960) (+ (size!40238 (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464))) (size!40238 (t!378079 s!2326)))))))

(declare-fun d!1928552 () Bool)

(assert (=> d!1928552 e!3750263))

(declare-fun res!2549227 () Bool)

(assert (=> d!1928552 (=> (not res!2549227) (not e!3750263))))

(declare-fun content!12017 (List!64588) (Set C!32462))

(assert (=> d!1928552 (= res!2549227 (= (content!12017 lt!2334960) (set.union (content!12017 (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464))) (content!12017 (t!378079 s!2326)))))))

(declare-fun e!3750262 () List!64588)

(assert (=> d!1928552 (= lt!2334960 e!3750262)))

(declare-fun c!1108056 () Bool)

(assert (=> d!1928552 (= c!1108056 (is-Nil!64464 (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464))))))

(assert (=> d!1928552 (= (++!14182 (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464)) (t!378079 s!2326)) lt!2334960)))

(declare-fun b!6154888 () Bool)

(assert (=> b!6154888 (= e!3750262 (t!378079 s!2326))))

(declare-fun b!6154889 () Bool)

(assert (=> b!6154889 (= e!3750262 (Cons!64464 (h!70912 (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464))) (++!14182 (t!378079 (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464))) (t!378079 s!2326))))))

(declare-fun b!6154891 () Bool)

(assert (=> b!6154891 (= e!3750263 (or (not (= (t!378079 s!2326) Nil!64464)) (= lt!2334960 (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464)))))))

(assert (= (and d!1928552 c!1108056) b!6154888))

(assert (= (and d!1928552 (not c!1108056)) b!6154889))

(assert (= (and d!1928552 res!2549227) b!6154890))

(assert (= (and b!6154890 res!2549226) b!6154891))

(declare-fun m!6993858 () Bool)

(assert (=> b!6154890 m!6993858))

(assert (=> b!6154890 m!6993176))

(declare-fun m!6993860 () Bool)

(assert (=> b!6154890 m!6993860))

(declare-fun m!6993862 () Bool)

(assert (=> b!6154890 m!6993862))

(declare-fun m!6993864 () Bool)

(assert (=> d!1928552 m!6993864))

(assert (=> d!1928552 m!6993176))

(declare-fun m!6993866 () Bool)

(assert (=> d!1928552 m!6993866))

(declare-fun m!6993868 () Bool)

(assert (=> d!1928552 m!6993868))

(declare-fun m!6993870 () Bool)

(assert (=> b!6154889 m!6993870))

(assert (=> b!6154048 d!1928552))

(declare-fun b!6154894 () Bool)

(declare-fun res!2549228 () Bool)

(declare-fun e!3750265 () Bool)

(assert (=> b!6154894 (=> (not res!2549228) (not e!3750265))))

(declare-fun lt!2334961 () List!64588)

(assert (=> b!6154894 (= res!2549228 (= (size!40238 lt!2334961) (+ (size!40238 Nil!64464) (size!40238 (Cons!64464 (h!70912 s!2326) Nil!64464)))))))

(declare-fun d!1928554 () Bool)

(assert (=> d!1928554 e!3750265))

(declare-fun res!2549229 () Bool)

(assert (=> d!1928554 (=> (not res!2549229) (not e!3750265))))

(assert (=> d!1928554 (= res!2549229 (= (content!12017 lt!2334961) (set.union (content!12017 Nil!64464) (content!12017 (Cons!64464 (h!70912 s!2326) Nil!64464)))))))

(declare-fun e!3750264 () List!64588)

(assert (=> d!1928554 (= lt!2334961 e!3750264)))

(declare-fun c!1108057 () Bool)

(assert (=> d!1928554 (= c!1108057 (is-Nil!64464 Nil!64464))))

(assert (=> d!1928554 (= (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464)) lt!2334961)))

(declare-fun b!6154892 () Bool)

(assert (=> b!6154892 (= e!3750264 (Cons!64464 (h!70912 s!2326) Nil!64464))))

(declare-fun b!6154893 () Bool)

(assert (=> b!6154893 (= e!3750264 (Cons!64464 (h!70912 Nil!64464) (++!14182 (t!378079 Nil!64464) (Cons!64464 (h!70912 s!2326) Nil!64464))))))

(declare-fun b!6154895 () Bool)

(assert (=> b!6154895 (= e!3750265 (or (not (= (Cons!64464 (h!70912 s!2326) Nil!64464) Nil!64464)) (= lt!2334961 Nil!64464)))))

(assert (= (and d!1928554 c!1108057) b!6154892))

(assert (= (and d!1928554 (not c!1108057)) b!6154893))

(assert (= (and d!1928554 res!2549229) b!6154894))

(assert (= (and b!6154894 res!2549228) b!6154895))

(declare-fun m!6993872 () Bool)

(assert (=> b!6154894 m!6993872))

(declare-fun m!6993874 () Bool)

(assert (=> b!6154894 m!6993874))

(declare-fun m!6993876 () Bool)

(assert (=> b!6154894 m!6993876))

(declare-fun m!6993878 () Bool)

(assert (=> d!1928554 m!6993878))

(declare-fun m!6993880 () Bool)

(assert (=> d!1928554 m!6993880))

(declare-fun m!6993882 () Bool)

(assert (=> d!1928554 m!6993882))

(declare-fun m!6993884 () Bool)

(assert (=> b!6154893 m!6993884))

(assert (=> b!6154048 d!1928554))

(declare-fun d!1928556 () Bool)

(assert (=> d!1928556 (= (++!14182 (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464)) (t!378079 s!2326)) s!2326)))

(declare-fun lt!2334964 () Unit!157555)

(declare-fun choose!45756 (List!64588 C!32462 List!64588 List!64588) Unit!157555)

(assert (=> d!1928556 (= lt!2334964 (choose!45756 Nil!64464 (h!70912 s!2326) (t!378079 s!2326) s!2326))))

(assert (=> d!1928556 (= (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) (t!378079 s!2326))) s!2326)))

(assert (=> d!1928556 (= (lemmaMoveElementToOtherListKeepsConcatEq!2277 Nil!64464 (h!70912 s!2326) (t!378079 s!2326) s!2326) lt!2334964)))

(declare-fun bs!1525604 () Bool)

(assert (= bs!1525604 d!1928556))

(assert (=> bs!1525604 m!6993176))

(assert (=> bs!1525604 m!6993176))

(assert (=> bs!1525604 m!6993178))

(declare-fun m!6993886 () Bool)

(assert (=> bs!1525604 m!6993886))

(declare-fun m!6993888 () Bool)

(assert (=> bs!1525604 m!6993888))

(assert (=> b!6154048 d!1928556))

(declare-fun b!6154896 () Bool)

(declare-fun res!2549232 () Bool)

(declare-fun e!3750270 () Bool)

(assert (=> b!6154896 (=> (not res!2549232) (not e!3750270))))

(declare-fun lt!2334967 () Option!15987)

(assert (=> b!6154896 (= res!2549232 (matchR!8279 (regTwo!32704 r!7292) (_2!36378 (get!22246 lt!2334967))))))

(declare-fun d!1928558 () Bool)

(declare-fun e!3750267 () Bool)

(assert (=> d!1928558 e!3750267))

(declare-fun res!2549234 () Bool)

(assert (=> d!1928558 (=> res!2549234 e!3750267)))

(assert (=> d!1928558 (= res!2549234 e!3750270)))

(declare-fun res!2549233 () Bool)

(assert (=> d!1928558 (=> (not res!2549233) (not e!3750270))))

(assert (=> d!1928558 (= res!2549233 (isDefined!12690 lt!2334967))))

(declare-fun e!3750266 () Option!15987)

(assert (=> d!1928558 (= lt!2334967 e!3750266)))

(declare-fun c!1108058 () Bool)

(declare-fun e!3750269 () Bool)

(assert (=> d!1928558 (= c!1108058 e!3750269)))

(declare-fun res!2549231 () Bool)

(assert (=> d!1928558 (=> (not res!2549231) (not e!3750269))))

(assert (=> d!1928558 (= res!2549231 (matchR!8279 (regOne!32704 r!7292) (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464))))))

(assert (=> d!1928558 (validRegex!7832 (regOne!32704 r!7292))))

(assert (=> d!1928558 (= (findConcatSeparation!2401 (regOne!32704 r!7292) (regTwo!32704 r!7292) (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464)) (t!378079 s!2326) s!2326) lt!2334967)))

(declare-fun b!6154897 () Bool)

(declare-fun lt!2334966 () Unit!157555)

(declare-fun lt!2334965 () Unit!157555)

(assert (=> b!6154897 (= lt!2334966 lt!2334965)))

(assert (=> b!6154897 (= (++!14182 (++!14182 (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464)) (Cons!64464 (h!70912 (t!378079 s!2326)) Nil!64464)) (t!378079 (t!378079 s!2326))) s!2326)))

(assert (=> b!6154897 (= lt!2334965 (lemmaMoveElementToOtherListKeepsConcatEq!2277 (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464)) (h!70912 (t!378079 s!2326)) (t!378079 (t!378079 s!2326)) s!2326))))

(declare-fun e!3750268 () Option!15987)

(assert (=> b!6154897 (= e!3750268 (findConcatSeparation!2401 (regOne!32704 r!7292) (regTwo!32704 r!7292) (++!14182 (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464)) (Cons!64464 (h!70912 (t!378079 s!2326)) Nil!64464)) (t!378079 (t!378079 s!2326)) s!2326))))

(declare-fun b!6154898 () Bool)

(assert (=> b!6154898 (= e!3750270 (= (++!14182 (_1!36378 (get!22246 lt!2334967)) (_2!36378 (get!22246 lt!2334967))) s!2326))))

(declare-fun b!6154899 () Bool)

(assert (=> b!6154899 (= e!3750266 e!3750268)))

(declare-fun c!1108059 () Bool)

(assert (=> b!6154899 (= c!1108059 (is-Nil!64464 (t!378079 s!2326)))))

(declare-fun b!6154900 () Bool)

(declare-fun res!2549230 () Bool)

(assert (=> b!6154900 (=> (not res!2549230) (not e!3750270))))

(assert (=> b!6154900 (= res!2549230 (matchR!8279 (regOne!32704 r!7292) (_1!36378 (get!22246 lt!2334967))))))

(declare-fun b!6154901 () Bool)

(assert (=> b!6154901 (= e!3750269 (matchR!8279 (regTwo!32704 r!7292) (t!378079 s!2326)))))

(declare-fun b!6154902 () Bool)

(assert (=> b!6154902 (= e!3750266 (Some!15986 (tuple2!66151 (++!14182 Nil!64464 (Cons!64464 (h!70912 s!2326) Nil!64464)) (t!378079 s!2326))))))

(declare-fun b!6154903 () Bool)

(assert (=> b!6154903 (= e!3750267 (not (isDefined!12690 lt!2334967)))))

(declare-fun b!6154904 () Bool)

(assert (=> b!6154904 (= e!3750268 None!15986)))

(assert (= (and d!1928558 res!2549231) b!6154901))

(assert (= (and d!1928558 c!1108058) b!6154902))

(assert (= (and d!1928558 (not c!1108058)) b!6154899))

(assert (= (and b!6154899 c!1108059) b!6154904))

(assert (= (and b!6154899 (not c!1108059)) b!6154897))

(assert (= (and d!1928558 res!2549233) b!6154900))

(assert (= (and b!6154900 res!2549230) b!6154896))

(assert (= (and b!6154896 res!2549232) b!6154898))

(assert (= (and d!1928558 (not res!2549234)) b!6154903))

(declare-fun m!6993890 () Bool)

(assert (=> b!6154900 m!6993890))

(declare-fun m!6993892 () Bool)

(assert (=> b!6154900 m!6993892))

(assert (=> b!6154898 m!6993890))

(declare-fun m!6993894 () Bool)

(assert (=> b!6154898 m!6993894))

(declare-fun m!6993896 () Bool)

(assert (=> d!1928558 m!6993896))

(assert (=> d!1928558 m!6993176))

(declare-fun m!6993898 () Bool)

(assert (=> d!1928558 m!6993898))

(assert (=> d!1928558 m!6993174))

(assert (=> b!6154903 m!6993896))

(assert (=> b!6154897 m!6993176))

(declare-fun m!6993900 () Bool)

(assert (=> b!6154897 m!6993900))

(assert (=> b!6154897 m!6993900))

(declare-fun m!6993902 () Bool)

(assert (=> b!6154897 m!6993902))

(assert (=> b!6154897 m!6993176))

(declare-fun m!6993904 () Bool)

(assert (=> b!6154897 m!6993904))

(assert (=> b!6154897 m!6993900))

(declare-fun m!6993906 () Bool)

(assert (=> b!6154897 m!6993906))

(assert (=> b!6154896 m!6993890))

(declare-fun m!6993908 () Bool)

(assert (=> b!6154896 m!6993908))

(declare-fun m!6993910 () Bool)

(assert (=> b!6154901 m!6993910))

(assert (=> b!6154048 d!1928558))

(declare-fun d!1928560 () Bool)

(assert (=> d!1928560 (= (isEmpty!36427 (unfocusZipperList!1517 zl!343)) (is-Nil!64463 (unfocusZipperList!1517 zl!343)))))

(assert (=> b!6153953 d!1928560))

(assert (=> b!6153808 d!1928184))

(declare-fun bs!1525605 () Bool)

(declare-fun d!1928562 () Bool)

(assert (= bs!1525605 (and d!1928562 d!1928394)))

(declare-fun lambda!335749 () Int)

(assert (=> bs!1525605 (= lambda!335749 lambda!335725)))

(declare-fun bs!1525606 () Bool)

(assert (= bs!1525606 (and d!1928562 d!1928456)))

(assert (=> bs!1525606 (= lambda!335749 lambda!335732)))

(declare-fun bs!1525607 () Bool)

(assert (= bs!1525607 (and d!1928562 d!1928392)))

(assert (=> bs!1525607 (= lambda!335749 lambda!335724)))

(declare-fun bs!1525608 () Bool)

(assert (= bs!1525608 (and d!1928562 d!1928426)))

(assert (=> bs!1525608 (= lambda!335749 lambda!335729)))

(declare-fun bs!1525609 () Bool)

(assert (= bs!1525609 (and d!1928562 d!1928510)))

(assert (=> bs!1525609 (= lambda!335749 lambda!335743)))

(declare-fun bs!1525610 () Bool)

(assert (= bs!1525610 (and d!1928562 d!1928412)))

(assert (=> bs!1525610 (= lambda!335749 lambda!335726)))

(declare-fun bs!1525611 () Bool)

(assert (= bs!1525611 (and d!1928562 d!1928528)))

(assert (=> bs!1525611 (= lambda!335749 lambda!335746)))

(assert (=> d!1928562 (= (nullableZipper!1877 lt!2334764) (exists!2442 lt!2334764 lambda!335749))))

(declare-fun bs!1525612 () Bool)

(assert (= bs!1525612 d!1928562))

(declare-fun m!6993912 () Bool)

(assert (=> bs!1525612 m!6993912))

(assert (=> b!6154025 d!1928562))

(assert (=> d!1928242 d!1928378))

(declare-fun b!6154905 () Bool)

(declare-fun res!2549241 () Bool)

(declare-fun e!3750274 () Bool)

(assert (=> b!6154905 (=> res!2549241 e!3750274)))

(assert (=> b!6154905 (= res!2549241 (not (isEmpty!36430 (tail!11798 Nil!64464))))))

(declare-fun b!6154906 () Bool)

(declare-fun e!3750271 () Bool)

(assert (=> b!6154906 (= e!3750271 e!3750274)))

(declare-fun res!2549239 () Bool)

(assert (=> b!6154906 (=> res!2549239 e!3750274)))

(declare-fun call!512191 () Bool)

(assert (=> b!6154906 (= res!2549239 call!512191)))

(declare-fun b!6154907 () Bool)

(declare-fun e!3750275 () Bool)

(declare-fun lt!2334968 () Bool)

(assert (=> b!6154907 (= e!3750275 (not lt!2334968))))

(declare-fun b!6154908 () Bool)

(declare-fun e!3750272 () Bool)

(assert (=> b!6154908 (= e!3750272 (= (head!12713 Nil!64464) (c!1107723 (regOne!32704 r!7292))))))

(declare-fun b!6154909 () Bool)

(declare-fun e!3750276 () Bool)

(assert (=> b!6154909 (= e!3750276 (nullable!6089 (regOne!32704 r!7292)))))

(declare-fun b!6154910 () Bool)

(assert (=> b!6154910 (= e!3750276 (matchR!8279 (derivativeStep!4816 (regOne!32704 r!7292) (head!12713 Nil!64464)) (tail!11798 Nil!64464)))))

(declare-fun b!6154911 () Bool)

(declare-fun e!3750273 () Bool)

(assert (=> b!6154911 (= e!3750273 (= lt!2334968 call!512191))))

(declare-fun bm!512186 () Bool)

(assert (=> bm!512186 (= call!512191 (isEmpty!36430 Nil!64464))))

(declare-fun d!1928564 () Bool)

(assert (=> d!1928564 e!3750273))

(declare-fun c!1108061 () Bool)

(assert (=> d!1928564 (= c!1108061 (is-EmptyExpr!16096 (regOne!32704 r!7292)))))

(assert (=> d!1928564 (= lt!2334968 e!3750276)))

(declare-fun c!1108060 () Bool)

(assert (=> d!1928564 (= c!1108060 (isEmpty!36430 Nil!64464))))

(assert (=> d!1928564 (validRegex!7832 (regOne!32704 r!7292))))

(assert (=> d!1928564 (= (matchR!8279 (regOne!32704 r!7292) Nil!64464) lt!2334968)))

(declare-fun b!6154912 () Bool)

(declare-fun e!3750277 () Bool)

(assert (=> b!6154912 (= e!3750277 e!3750271)))

(declare-fun res!2549242 () Bool)

(assert (=> b!6154912 (=> (not res!2549242) (not e!3750271))))

(assert (=> b!6154912 (= res!2549242 (not lt!2334968))))

(declare-fun b!6154913 () Bool)

(declare-fun res!2549238 () Bool)

(assert (=> b!6154913 (=> (not res!2549238) (not e!3750272))))

(assert (=> b!6154913 (= res!2549238 (isEmpty!36430 (tail!11798 Nil!64464)))))

(declare-fun b!6154914 () Bool)

(declare-fun res!2549240 () Bool)

(assert (=> b!6154914 (=> res!2549240 e!3750277)))

(assert (=> b!6154914 (= res!2549240 e!3750272)))

(declare-fun res!2549235 () Bool)

(assert (=> b!6154914 (=> (not res!2549235) (not e!3750272))))

(assert (=> b!6154914 (= res!2549235 lt!2334968)))

(declare-fun b!6154915 () Bool)

(declare-fun res!2549236 () Bool)

(assert (=> b!6154915 (=> (not res!2549236) (not e!3750272))))

(assert (=> b!6154915 (= res!2549236 (not call!512191))))

(declare-fun b!6154916 () Bool)

(assert (=> b!6154916 (= e!3750274 (not (= (head!12713 Nil!64464) (c!1107723 (regOne!32704 r!7292)))))))

(declare-fun b!6154917 () Bool)

(declare-fun res!2549237 () Bool)

(assert (=> b!6154917 (=> res!2549237 e!3750277)))

(assert (=> b!6154917 (= res!2549237 (not (is-ElementMatch!16096 (regOne!32704 r!7292))))))

(assert (=> b!6154917 (= e!3750275 e!3750277)))

(declare-fun b!6154918 () Bool)

(assert (=> b!6154918 (= e!3750273 e!3750275)))

(declare-fun c!1108062 () Bool)

(assert (=> b!6154918 (= c!1108062 (is-EmptyLang!16096 (regOne!32704 r!7292)))))

(assert (= (and d!1928564 c!1108060) b!6154909))

(assert (= (and d!1928564 (not c!1108060)) b!6154910))

(assert (= (and d!1928564 c!1108061) b!6154911))

(assert (= (and d!1928564 (not c!1108061)) b!6154918))

(assert (= (and b!6154918 c!1108062) b!6154907))

(assert (= (and b!6154918 (not c!1108062)) b!6154917))

(assert (= (and b!6154917 (not res!2549237)) b!6154914))

(assert (= (and b!6154914 res!2549235) b!6154915))

(assert (= (and b!6154915 res!2549236) b!6154913))

(assert (= (and b!6154913 res!2549238) b!6154908))

(assert (= (and b!6154914 (not res!2549240)) b!6154912))

(assert (= (and b!6154912 res!2549242) b!6154906))

(assert (= (and b!6154906 (not res!2549239)) b!6154905))

(assert (= (and b!6154905 (not res!2549241)) b!6154916))

(assert (= (or b!6154911 b!6154906 b!6154915) bm!512186))

(declare-fun m!6993914 () Bool)

(assert (=> b!6154905 m!6993914))

(assert (=> b!6154905 m!6993914))

(declare-fun m!6993916 () Bool)

(assert (=> b!6154905 m!6993916))

(assert (=> b!6154909 m!6993626))

(declare-fun m!6993918 () Bool)

(assert (=> b!6154916 m!6993918))

(declare-fun m!6993920 () Bool)

(assert (=> d!1928564 m!6993920))

(assert (=> d!1928564 m!6993174))

(assert (=> b!6154913 m!6993914))

(assert (=> b!6154913 m!6993914))

(assert (=> b!6154913 m!6993916))

(assert (=> b!6154910 m!6993918))

(assert (=> b!6154910 m!6993918))

(declare-fun m!6993922 () Bool)

(assert (=> b!6154910 m!6993922))

(assert (=> b!6154910 m!6993914))

(assert (=> b!6154910 m!6993922))

(assert (=> b!6154910 m!6993914))

(declare-fun m!6993924 () Bool)

(assert (=> b!6154910 m!6993924))

(assert (=> bm!512186 m!6993920))

(assert (=> b!6154908 m!6993918))

(assert (=> d!1928242 d!1928564))

(assert (=> d!1928242 d!1928464))

(declare-fun d!1928566 () Bool)

(assert (=> d!1928566 true))

(declare-fun setRes!41687 () Bool)

(assert (=> d!1928566 setRes!41687))

(declare-fun condSetEmpty!41687 () Bool)

(declare-fun res!2549243 () (Set Context!10960))

(assert (=> d!1928566 (= condSetEmpty!41687 (= res!2549243 (as set.empty (Set Context!10960))))))

(assert (=> d!1928566 (= (choose!45740 lt!2334746 lambda!335642) res!2549243)))

(declare-fun setIsEmpty!41687 () Bool)

(assert (=> setIsEmpty!41687 setRes!41687))

(declare-fun setElem!41687 () Context!10960)

(declare-fun tp!1718877 () Bool)

(declare-fun setNonEmpty!41687 () Bool)

(declare-fun e!3750278 () Bool)

(assert (=> setNonEmpty!41687 (= setRes!41687 (and tp!1718877 (inv!83488 setElem!41687) e!3750278))))

(declare-fun setRest!41687 () (Set Context!10960))

(assert (=> setNonEmpty!41687 (= res!2549243 (set.union (set.insert setElem!41687 (as set.empty (Set Context!10960))) setRest!41687))))

(declare-fun b!6154919 () Bool)

(declare-fun tp!1718878 () Bool)

(assert (=> b!6154919 (= e!3750278 tp!1718878)))

(assert (= (and d!1928566 condSetEmpty!41687) setIsEmpty!41687))

(assert (= (and d!1928566 (not condSetEmpty!41687)) setNonEmpty!41687))

(assert (= setNonEmpty!41687 b!6154919))

(declare-fun m!6993926 () Bool)

(assert (=> setNonEmpty!41687 m!6993926))

(assert (=> d!1928166 d!1928566))

(assert (=> b!6153839 d!1928208))

(declare-fun d!1928568 () Bool)

(declare-fun res!2549244 () Bool)

(declare-fun e!3750279 () Bool)

(assert (=> d!1928568 (=> res!2549244 e!3750279)))

(assert (=> d!1928568 (= res!2549244 (is-Nil!64463 (exprs!5980 lt!2334763)))))

(assert (=> d!1928568 (= (forall!15217 (exprs!5980 lt!2334763) lambda!335680) e!3750279)))

(declare-fun b!6154920 () Bool)

(declare-fun e!3750280 () Bool)

(assert (=> b!6154920 (= e!3750279 e!3750280)))

(declare-fun res!2549245 () Bool)

(assert (=> b!6154920 (=> (not res!2549245) (not e!3750280))))

(assert (=> b!6154920 (= res!2549245 (dynLambda!25415 lambda!335680 (h!70911 (exprs!5980 lt!2334763))))))

(declare-fun b!6154921 () Bool)

(assert (=> b!6154921 (= e!3750280 (forall!15217 (t!378078 (exprs!5980 lt!2334763)) lambda!335680))))

(assert (= (and d!1928568 (not res!2549244)) b!6154920))

(assert (= (and b!6154920 res!2549245) b!6154921))

(declare-fun b_lambda!234275 () Bool)

(assert (=> (not b_lambda!234275) (not b!6154920)))

(declare-fun m!6993928 () Bool)

(assert (=> b!6154920 m!6993928))

(declare-fun m!6993930 () Bool)

(assert (=> b!6154921 m!6993930))

(assert (=> d!1928218 d!1928568))

(declare-fun d!1928570 () Bool)

(assert (=> d!1928570 (= (isEmptyExpr!1513 lt!2334870) (is-EmptyExpr!16096 lt!2334870))))

(assert (=> b!6153835 d!1928570))

(assert (=> b!6153928 d!1928476))

(declare-fun d!1928572 () Bool)

(assert (=> d!1928572 true))

(assert (=> d!1928572 true))

(declare-fun res!2549246 () Bool)

(assert (=> d!1928572 (= (choose!45745 lambda!335640) res!2549246)))

(assert (=> d!1928244 d!1928572))

(declare-fun d!1928574 () Bool)

(assert (=> d!1928574 (= ($colon$colon!1973 (exprs!5980 lt!2334763) (ite (or c!1107844 c!1107843) (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (regTwo!32705 (regOne!32704 r!7292)))) (Cons!64463 (ite (or c!1107844 c!1107843) (regTwo!32704 (regTwo!32705 (regOne!32704 r!7292))) (regTwo!32705 (regOne!32704 r!7292))) (exprs!5980 lt!2334763)))))

(assert (=> bm!512038 d!1928574))

(declare-fun d!1928576 () Bool)

(declare-fun res!2549247 () Bool)

(declare-fun e!3750281 () Bool)

(assert (=> d!1928576 (=> res!2549247 e!3750281)))

(assert (=> d!1928576 (= res!2549247 (is-Nil!64463 lt!2334888))))

(assert (=> d!1928576 (= (forall!15217 lt!2334888 lambda!335679) e!3750281)))

(declare-fun b!6154922 () Bool)

(declare-fun e!3750282 () Bool)

(assert (=> b!6154922 (= e!3750281 e!3750282)))

(declare-fun res!2549248 () Bool)

(assert (=> b!6154922 (=> (not res!2549248) (not e!3750282))))

(assert (=> b!6154922 (= res!2549248 (dynLambda!25415 lambda!335679 (h!70911 lt!2334888)))))

(declare-fun b!6154923 () Bool)

(assert (=> b!6154923 (= e!3750282 (forall!15217 (t!378078 lt!2334888) lambda!335679))))

(assert (= (and d!1928576 (not res!2549247)) b!6154922))

(assert (= (and b!6154922 res!2549248) b!6154923))

(declare-fun b_lambda!234277 () Bool)

(assert (=> (not b_lambda!234277) (not b!6154922)))

(declare-fun m!6993932 () Bool)

(assert (=> b!6154922 m!6993932))

(declare-fun m!6993934 () Bool)

(assert (=> b!6154923 m!6993934))

(assert (=> d!1928206 d!1928576))

(declare-fun bs!1525613 () Bool)

(declare-fun b!6154925 () Bool)

(assert (= bs!1525613 (and b!6154925 d!1928252)))

(declare-fun lambda!335750 () Int)

(assert (=> bs!1525613 (not (= lambda!335750 lambda!335689))))

(declare-fun bs!1525614 () Bool)

(assert (= bs!1525614 (and b!6154925 b!6153633)))

(assert (=> bs!1525614 (not (= lambda!335750 lambda!335640))))

(declare-fun bs!1525615 () Bool)

(assert (= bs!1525615 (and b!6154925 b!6153879)))

(assert (=> bs!1525615 (= (and (= (reg!16425 (regTwo!32705 r!7292)) (reg!16425 r!7292)) (= (regTwo!32705 r!7292) r!7292)) (= lambda!335750 lambda!335672))))

(declare-fun bs!1525616 () Bool)

(assert (= bs!1525616 (and b!6154925 b!6154795)))

(assert (=> bs!1525616 (not (= lambda!335750 lambda!335745))))

(declare-fun bs!1525617 () Bool)

(assert (= bs!1525617 (and b!6154925 b!6154793)))

(assert (=> bs!1525617 (= (and (= (reg!16425 (regTwo!32705 r!7292)) (reg!16425 (regOne!32705 r!7292))) (= (regTwo!32705 r!7292) (regOne!32705 r!7292))) (= lambda!335750 lambda!335744))))

(declare-fun bs!1525618 () Bool)

(assert (= bs!1525618 (and b!6154925 b!6153881)))

(assert (=> bs!1525618 (not (= lambda!335750 lambda!335673))))

(declare-fun bs!1525619 () Bool)

(assert (= bs!1525619 (and b!6154925 d!1928462)))

(assert (=> bs!1525619 (not (= lambda!335750 lambda!335738))))

(assert (=> bs!1525619 (not (= lambda!335750 lambda!335737))))

(declare-fun bs!1525620 () Bool)

(assert (= bs!1525620 (and b!6154925 d!1928246)))

(assert (=> bs!1525620 (not (= lambda!335750 lambda!335686))))

(assert (=> bs!1525614 (not (= lambda!335750 lambda!335641))))

(assert (=> bs!1525620 (not (= lambda!335750 lambda!335685))))

(assert (=> b!6154925 true))

(assert (=> b!6154925 true))

(declare-fun bs!1525621 () Bool)

(declare-fun b!6154927 () Bool)

(assert (= bs!1525621 (and b!6154927 d!1928252)))

(declare-fun lambda!335751 () Int)

(assert (=> bs!1525621 (not (= lambda!335751 lambda!335689))))

(declare-fun bs!1525622 () Bool)

(assert (= bs!1525622 (and b!6154927 b!6153633)))

(assert (=> bs!1525622 (not (= lambda!335751 lambda!335640))))

(declare-fun bs!1525623 () Bool)

(assert (= bs!1525623 (and b!6154927 b!6154925)))

(assert (=> bs!1525623 (not (= lambda!335751 lambda!335750))))

(declare-fun bs!1525624 () Bool)

(assert (= bs!1525624 (and b!6154927 b!6153879)))

(assert (=> bs!1525624 (not (= lambda!335751 lambda!335672))))

(declare-fun bs!1525625 () Bool)

(assert (= bs!1525625 (and b!6154927 b!6154795)))

(assert (=> bs!1525625 (= (and (= (regOne!32704 (regTwo!32705 r!7292)) (regOne!32704 (regOne!32705 r!7292))) (= (regTwo!32704 (regTwo!32705 r!7292)) (regTwo!32704 (regOne!32705 r!7292)))) (= lambda!335751 lambda!335745))))

(declare-fun bs!1525626 () Bool)

(assert (= bs!1525626 (and b!6154927 b!6154793)))

(assert (=> bs!1525626 (not (= lambda!335751 lambda!335744))))

(declare-fun bs!1525627 () Bool)

(assert (= bs!1525627 (and b!6154927 b!6153881)))

(assert (=> bs!1525627 (= (and (= (regOne!32704 (regTwo!32705 r!7292)) (regOne!32704 r!7292)) (= (regTwo!32704 (regTwo!32705 r!7292)) (regTwo!32704 r!7292))) (= lambda!335751 lambda!335673))))

(declare-fun bs!1525628 () Bool)

(assert (= bs!1525628 (and b!6154927 d!1928462)))

(assert (=> bs!1525628 (= (and (= (regOne!32704 (regTwo!32705 r!7292)) (regOne!32704 r!7292)) (= (regTwo!32704 (regTwo!32705 r!7292)) (regTwo!32704 r!7292))) (= lambda!335751 lambda!335738))))

(assert (=> bs!1525628 (not (= lambda!335751 lambda!335737))))

(declare-fun bs!1525629 () Bool)

(assert (= bs!1525629 (and b!6154927 d!1928246)))

(assert (=> bs!1525629 (= (and (= (regOne!32704 (regTwo!32705 r!7292)) (regOne!32704 r!7292)) (= (regTwo!32704 (regTwo!32705 r!7292)) (regTwo!32704 r!7292))) (= lambda!335751 lambda!335686))))

(assert (=> bs!1525622 (= (and (= (regOne!32704 (regTwo!32705 r!7292)) (regOne!32704 r!7292)) (= (regTwo!32704 (regTwo!32705 r!7292)) (regTwo!32704 r!7292))) (= lambda!335751 lambda!335641))))

(assert (=> bs!1525629 (not (= lambda!335751 lambda!335685))))

(assert (=> b!6154927 true))

(assert (=> b!6154927 true))

(declare-fun b!6154924 () Bool)

(declare-fun e!3750284 () Bool)

(declare-fun e!3750288 () Bool)

(assert (=> b!6154924 (= e!3750284 e!3750288)))

(declare-fun c!1108066 () Bool)

(assert (=> b!6154924 (= c!1108066 (is-Star!16096 (regTwo!32705 r!7292)))))

(declare-fun e!3750285 () Bool)

(declare-fun call!512193 () Bool)

(assert (=> b!6154925 (= e!3750285 call!512193)))

(declare-fun b!6154926 () Bool)

(declare-fun e!3750283 () Bool)

(assert (=> b!6154926 (= e!3750283 (= s!2326 (Cons!64464 (c!1107723 (regTwo!32705 r!7292)) Nil!64464)))))

(assert (=> b!6154927 (= e!3750288 call!512193)))

(declare-fun b!6154928 () Bool)

(declare-fun c!1108064 () Bool)

(assert (=> b!6154928 (= c!1108064 (is-ElementMatch!16096 (regTwo!32705 r!7292)))))

(declare-fun e!3750287 () Bool)

(assert (=> b!6154928 (= e!3750287 e!3750283)))

(declare-fun b!6154929 () Bool)

(declare-fun c!1108065 () Bool)

(assert (=> b!6154929 (= c!1108065 (is-Union!16096 (regTwo!32705 r!7292)))))

(assert (=> b!6154929 (= e!3750283 e!3750284)))

(declare-fun b!6154930 () Bool)

(declare-fun e!3750289 () Bool)

(assert (=> b!6154930 (= e!3750289 e!3750287)))

(declare-fun res!2549250 () Bool)

(assert (=> b!6154930 (= res!2549250 (not (is-EmptyLang!16096 (regTwo!32705 r!7292))))))

(assert (=> b!6154930 (=> (not res!2549250) (not e!3750287))))

(declare-fun d!1928578 () Bool)

(declare-fun c!1108063 () Bool)

(assert (=> d!1928578 (= c!1108063 (is-EmptyExpr!16096 (regTwo!32705 r!7292)))))

(assert (=> d!1928578 (= (matchRSpec!3197 (regTwo!32705 r!7292) s!2326) e!3750289)))

(declare-fun b!6154931 () Bool)

(declare-fun e!3750286 () Bool)

(assert (=> b!6154931 (= e!3750284 e!3750286)))

(declare-fun res!2549251 () Bool)

(assert (=> b!6154931 (= res!2549251 (matchRSpec!3197 (regOne!32705 (regTwo!32705 r!7292)) s!2326))))

(assert (=> b!6154931 (=> res!2549251 e!3750286)))

(declare-fun b!6154932 () Bool)

(assert (=> b!6154932 (= e!3750286 (matchRSpec!3197 (regTwo!32705 (regTwo!32705 r!7292)) s!2326))))

(declare-fun bm!512187 () Bool)

(assert (=> bm!512187 (= call!512193 (Exists!3166 (ite c!1108066 lambda!335750 lambda!335751)))))

(declare-fun bm!512188 () Bool)

(declare-fun call!512192 () Bool)

(assert (=> bm!512188 (= call!512192 (isEmpty!36430 s!2326))))

(declare-fun b!6154933 () Bool)

(declare-fun res!2549249 () Bool)

(assert (=> b!6154933 (=> res!2549249 e!3750285)))

(assert (=> b!6154933 (= res!2549249 call!512192)))

(assert (=> b!6154933 (= e!3750288 e!3750285)))

(declare-fun b!6154934 () Bool)

(assert (=> b!6154934 (= e!3750289 call!512192)))

(assert (= (and d!1928578 c!1108063) b!6154934))

(assert (= (and d!1928578 (not c!1108063)) b!6154930))

(assert (= (and b!6154930 res!2549250) b!6154928))

(assert (= (and b!6154928 c!1108064) b!6154926))

(assert (= (and b!6154928 (not c!1108064)) b!6154929))

(assert (= (and b!6154929 c!1108065) b!6154931))

(assert (= (and b!6154929 (not c!1108065)) b!6154924))

(assert (= (and b!6154931 (not res!2549251)) b!6154932))

(assert (= (and b!6154924 c!1108066) b!6154933))

(assert (= (and b!6154924 (not c!1108066)) b!6154927))

(assert (= (and b!6154933 (not res!2549249)) b!6154925))

(assert (= (or b!6154925 b!6154927) bm!512187))

(assert (= (or b!6154934 b!6154933) bm!512188))

(declare-fun m!6993936 () Bool)

(assert (=> b!6154931 m!6993936))

(declare-fun m!6993938 () Bool)

(assert (=> b!6154932 m!6993938))

(declare-fun m!6993940 () Bool)

(assert (=> bm!512187 m!6993940))

(assert (=> bm!512188 m!6993044))

(assert (=> b!6153886 d!1928578))

(assert (=> d!1928172 d!1928162))

(declare-fun d!1928580 () Bool)

(assert (=> d!1928580 (= (flatMap!1601 lt!2334764 lambda!335642) (dynLambda!25413 lambda!335642 lt!2334766))))

(assert (=> d!1928580 true))

(declare-fun _$13!3083 () Unit!157555)

(assert (=> d!1928580 (= (choose!45741 lt!2334764 lt!2334766 lambda!335642) _$13!3083)))

(declare-fun b_lambda!234279 () Bool)

(assert (=> (not b_lambda!234279) (not d!1928580)))

(declare-fun bs!1525630 () Bool)

(assert (= bs!1525630 d!1928580))

(assert (=> bs!1525630 m!6992812))

(assert (=> bs!1525630 m!6992982))

(assert (=> d!1928172 d!1928580))

(assert (=> b!6153965 d!1928186))

(declare-fun bs!1525631 () Bool)

(declare-fun d!1928582 () Bool)

(assert (= bs!1525631 (and d!1928582 d!1928218)))

(declare-fun lambda!335752 () Int)

(assert (=> bs!1525631 (= lambda!335752 lambda!335680)))

(declare-fun bs!1525632 () Bool)

(assert (= bs!1525632 (and d!1928582 d!1928204)))

(assert (=> bs!1525632 (= lambda!335752 lambda!335676)))

(declare-fun bs!1525633 () Bool)

(assert (= bs!1525633 (and d!1928582 d!1928186)))

(assert (=> bs!1525633 (= lambda!335752 lambda!335663)))

(declare-fun bs!1525634 () Bool)

(assert (= bs!1525634 (and d!1928582 d!1928414)))

(assert (=> bs!1525634 (= lambda!335752 lambda!335727)))

(declare-fun bs!1525635 () Bool)

(assert (= bs!1525635 (and d!1928582 d!1928190)))

(assert (=> bs!1525635 (= lambda!335752 lambda!335666)))

(declare-fun bs!1525636 () Bool)

(assert (= bs!1525636 (and d!1928582 d!1928546)))

(assert (=> bs!1525636 (= lambda!335752 lambda!335748)))

(declare-fun bs!1525637 () Bool)

(assert (= bs!1525637 (and d!1928582 d!1928194)))

(assert (=> bs!1525637 (= lambda!335752 lambda!335667)))

(declare-fun bs!1525638 () Bool)

(assert (= bs!1525638 (and d!1928582 d!1928416)))

(assert (=> bs!1525638 (= lambda!335752 lambda!335728)))

(declare-fun bs!1525639 () Bool)

(assert (= bs!1525639 (and d!1928582 d!1928206)))

(assert (=> bs!1525639 (= lambda!335752 lambda!335679)))

(declare-fun bs!1525640 () Bool)

(assert (= bs!1525640 (and d!1928582 d!1928466)))

(assert (=> bs!1525640 (= lambda!335752 lambda!335739)))

(declare-fun lt!2334969 () List!64587)

(assert (=> d!1928582 (forall!15217 lt!2334969 lambda!335752)))

(declare-fun e!3750290 () List!64587)

(assert (=> d!1928582 (= lt!2334969 e!3750290)))

(declare-fun c!1108067 () Bool)

(assert (=> d!1928582 (= c!1108067 (is-Cons!64465 (t!378080 zl!343)))))

(assert (=> d!1928582 (= (unfocusZipperList!1517 (t!378080 zl!343)) lt!2334969)))

(declare-fun b!6154935 () Bool)

(assert (=> b!6154935 (= e!3750290 (Cons!64463 (generalisedConcat!1693 (exprs!5980 (h!70913 (t!378080 zl!343)))) (unfocusZipperList!1517 (t!378080 (t!378080 zl!343)))))))

(declare-fun b!6154936 () Bool)

(assert (=> b!6154936 (= e!3750290 Nil!64463)))

(assert (= (and d!1928582 c!1108067) b!6154935))

(assert (= (and d!1928582 (not c!1108067)) b!6154936))

(declare-fun m!6993942 () Bool)

(assert (=> d!1928582 m!6993942))

(declare-fun m!6993944 () Bool)

(assert (=> b!6154935 m!6993944))

(declare-fun m!6993946 () Bool)

(assert (=> b!6154935 m!6993946))

(assert (=> b!6153965 d!1928582))

(declare-fun d!1928584 () Bool)

(assert (=> d!1928584 (= ($colon$colon!1973 (exprs!5980 lt!2334763) (ite (or c!1107823 c!1107822) (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (h!70911 (exprs!5980 (h!70913 zl!343))))) (Cons!64463 (ite (or c!1107823 c!1107822) (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))) (h!70911 (exprs!5980 (h!70913 zl!343)))) (exprs!5980 lt!2334763)))))

(assert (=> bm!512022 d!1928584))

(declare-fun e!3750291 () (Set Context!10960))

(declare-fun call!512194 () (Set Context!10960))

(declare-fun b!6154937 () Bool)

(assert (=> b!6154937 (= e!3750291 (set.union call!512194 (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334766)))))) (h!70912 s!2326))))))

(declare-fun bm!512189 () Bool)

(assert (=> bm!512189 (= call!512194 (derivationStepZipperDown!1344 (h!70911 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334766))))) (Context!10961 (t!378078 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334766)))))) (h!70912 s!2326)))))

(declare-fun b!6154938 () Bool)

(declare-fun e!3750292 () (Set Context!10960))

(assert (=> b!6154938 (= e!3750291 e!3750292)))

(declare-fun c!1108069 () Bool)

(assert (=> b!6154938 (= c!1108069 (is-Cons!64463 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334766))))))))

(declare-fun b!6154939 () Bool)

(declare-fun e!3750293 () Bool)

(assert (=> b!6154939 (= e!3750293 (nullable!6089 (h!70911 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334766)))))))))

(declare-fun d!1928586 () Bool)

(declare-fun c!1108068 () Bool)

(assert (=> d!1928586 (= c!1108068 e!3750293)))

(declare-fun res!2549252 () Bool)

(assert (=> d!1928586 (=> (not res!2549252) (not e!3750293))))

(assert (=> d!1928586 (= res!2549252 (is-Cons!64463 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334766))))))))

(assert (=> d!1928586 (= (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 lt!2334766))) (h!70912 s!2326)) e!3750291)))

(declare-fun b!6154940 () Bool)

(assert (=> b!6154940 (= e!3750292 (as set.empty (Set Context!10960)))))

(declare-fun b!6154941 () Bool)

(assert (=> b!6154941 (= e!3750292 call!512194)))

(assert (= (and d!1928586 res!2549252) b!6154939))

(assert (= (and d!1928586 c!1108068) b!6154937))

(assert (= (and d!1928586 (not c!1108068)) b!6154938))

(assert (= (and b!6154938 c!1108069) b!6154941))

(assert (= (and b!6154938 (not c!1108069)) b!6154940))

(assert (= (or b!6154937 b!6154941) bm!512189))

(declare-fun m!6993948 () Bool)

(assert (=> b!6154937 m!6993948))

(declare-fun m!6993950 () Bool)

(assert (=> bm!512189 m!6993950))

(declare-fun m!6993952 () Bool)

(assert (=> b!6154939 m!6993952))

(assert (=> b!6153799 d!1928586))

(declare-fun d!1928588 () Bool)

(declare-fun c!1108070 () Bool)

(assert (=> d!1928588 (= c!1108070 (isEmpty!36430 (tail!11798 (t!378079 s!2326))))))

(declare-fun e!3750294 () Bool)

(assert (=> d!1928588 (= (matchZipper!2108 (derivationStepZipper!2069 lt!2334770 (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))) e!3750294)))

(declare-fun b!6154942 () Bool)

(assert (=> b!6154942 (= e!3750294 (nullableZipper!1877 (derivationStepZipper!2069 lt!2334770 (head!12713 (t!378079 s!2326)))))))

(declare-fun b!6154943 () Bool)

(assert (=> b!6154943 (= e!3750294 (matchZipper!2108 (derivationStepZipper!2069 (derivationStepZipper!2069 lt!2334770 (head!12713 (t!378079 s!2326))) (head!12713 (tail!11798 (t!378079 s!2326)))) (tail!11798 (tail!11798 (t!378079 s!2326)))))))

(assert (= (and d!1928588 c!1108070) b!6154942))

(assert (= (and d!1928588 (not c!1108070)) b!6154943))

(assert (=> d!1928588 m!6992960))

(assert (=> d!1928588 m!6993602))

(assert (=> b!6154942 m!6993086))

(declare-fun m!6993954 () Bool)

(assert (=> b!6154942 m!6993954))

(assert (=> b!6154943 m!6992960))

(assert (=> b!6154943 m!6993606))

(assert (=> b!6154943 m!6993086))

(assert (=> b!6154943 m!6993606))

(declare-fun m!6993956 () Bool)

(assert (=> b!6154943 m!6993956))

(assert (=> b!6154943 m!6992960))

(assert (=> b!6154943 m!6993610))

(assert (=> b!6154943 m!6993956))

(assert (=> b!6154943 m!6993610))

(declare-fun m!6993958 () Bool)

(assert (=> b!6154943 m!6993958))

(assert (=> b!6153968 d!1928588))

(declare-fun bs!1525641 () Bool)

(declare-fun d!1928590 () Bool)

(assert (= bs!1525641 (and d!1928590 b!6153643)))

(declare-fun lambda!335753 () Int)

(assert (=> bs!1525641 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335753 lambda!335642))))

(declare-fun bs!1525642 () Bool)

(assert (= bs!1525642 (and d!1928590 d!1928432)))

(assert (=> bs!1525642 (= lambda!335753 lambda!335730)))

(declare-fun bs!1525643 () Bool)

(assert (= bs!1525643 (and d!1928590 d!1928472)))

(assert (=> bs!1525643 (= lambda!335753 lambda!335740)))

(declare-fun bs!1525644 () Bool)

(assert (= bs!1525644 (and d!1928590 d!1928176)))

(assert (=> bs!1525644 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335753 lambda!335660))))

(declare-fun bs!1525645 () Bool)

(assert (= bs!1525645 (and d!1928590 d!1928450)))

(assert (=> bs!1525645 (= lambda!335753 lambda!335731)))

(declare-fun bs!1525646 () Bool)

(assert (= bs!1525646 (and d!1928590 d!1928488)))

(assert (=> bs!1525646 (= lambda!335753 lambda!335741)))

(declare-fun bs!1525647 () Bool)

(assert (= bs!1525647 (and d!1928590 d!1928502)))

(assert (=> bs!1525647 (= lambda!335753 lambda!335742)))

(declare-fun bs!1525648 () Bool)

(assert (= bs!1525648 (and d!1928590 d!1928532)))

(assert (=> bs!1525648 (= lambda!335753 lambda!335747)))

(assert (=> d!1928590 true))

(assert (=> d!1928590 (= (derivationStepZipper!2069 lt!2334770 (head!12713 (t!378079 s!2326))) (flatMap!1601 lt!2334770 lambda!335753))))

(declare-fun bs!1525649 () Bool)

(assert (= bs!1525649 d!1928590))

(declare-fun m!6993960 () Bool)

(assert (=> bs!1525649 m!6993960))

(assert (=> b!6153968 d!1928590))

(assert (=> b!6153968 d!1928434))

(assert (=> b!6153968 d!1928436))

(declare-fun d!1928592 () Bool)

(assert (=> d!1928592 (= (isUnion!953 lt!2334885) (is-Union!16096 lt!2334885))))

(assert (=> b!6153958 d!1928592))

(assert (=> d!1928252 d!1928464))

(assert (=> d!1928252 d!1928248))

(declare-fun bs!1525650 () Bool)

(declare-fun d!1928594 () Bool)

(assert (= bs!1525650 (and d!1928594 d!1928252)))

(declare-fun lambda!335756 () Int)

(assert (=> bs!1525650 (= lambda!335756 lambda!335689)))

(declare-fun bs!1525651 () Bool)

(assert (= bs!1525651 (and d!1928594 b!6153633)))

(assert (=> bs!1525651 (= lambda!335756 lambda!335640)))

(declare-fun bs!1525652 () Bool)

(assert (= bs!1525652 (and d!1928594 b!6154925)))

(assert (=> bs!1525652 (not (= lambda!335756 lambda!335750))))

(declare-fun bs!1525653 () Bool)

(assert (= bs!1525653 (and d!1928594 b!6153879)))

(assert (=> bs!1525653 (not (= lambda!335756 lambda!335672))))

(declare-fun bs!1525654 () Bool)

(assert (= bs!1525654 (and d!1928594 b!6154795)))

(assert (=> bs!1525654 (not (= lambda!335756 lambda!335745))))

(declare-fun bs!1525655 () Bool)

(assert (= bs!1525655 (and d!1928594 b!6154793)))

(assert (=> bs!1525655 (not (= lambda!335756 lambda!335744))))

(declare-fun bs!1525656 () Bool)

(assert (= bs!1525656 (and d!1928594 d!1928462)))

(assert (=> bs!1525656 (not (= lambda!335756 lambda!335738))))

(assert (=> bs!1525656 (= lambda!335756 lambda!335737)))

(declare-fun bs!1525657 () Bool)

(assert (= bs!1525657 (and d!1928594 d!1928246)))

(assert (=> bs!1525657 (not (= lambda!335756 lambda!335686))))

(assert (=> bs!1525651 (not (= lambda!335756 lambda!335641))))

(assert (=> bs!1525657 (= lambda!335756 lambda!335685)))

(declare-fun bs!1525658 () Bool)

(assert (= bs!1525658 (and d!1928594 b!6154927)))

(assert (=> bs!1525658 (not (= lambda!335756 lambda!335751))))

(declare-fun bs!1525659 () Bool)

(assert (= bs!1525659 (and d!1928594 b!6153881)))

(assert (=> bs!1525659 (not (= lambda!335756 lambda!335673))))

(assert (=> d!1928594 true))

(assert (=> d!1928594 true))

(assert (=> d!1928594 true))

(assert (=> d!1928594 (= (isDefined!12690 (findConcatSeparation!2401 (regOne!32704 r!7292) (regTwo!32704 r!7292) Nil!64464 s!2326 s!2326)) (Exists!3166 lambda!335756))))

(assert (=> d!1928594 true))

(declare-fun _$89!2269 () Unit!157555)

(assert (=> d!1928594 (= (choose!45747 (regOne!32704 r!7292) (regTwo!32704 r!7292) s!2326) _$89!2269)))

(declare-fun bs!1525660 () Bool)

(assert (= bs!1525660 d!1928594))

(assert (=> bs!1525660 m!6992748))

(assert (=> bs!1525660 m!6992748))

(assert (=> bs!1525660 m!6992750))

(declare-fun m!6993962 () Bool)

(assert (=> bs!1525660 m!6993962))

(assert (=> d!1928252 d!1928594))

(assert (=> d!1928252 d!1928242))

(declare-fun d!1928596 () Bool)

(assert (=> d!1928596 (= (Exists!3166 lambda!335689) (choose!45745 lambda!335689))))

(declare-fun bs!1525661 () Bool)

(assert (= bs!1525661 d!1928596))

(declare-fun m!6993964 () Bool)

(assert (=> bs!1525661 m!6993964))

(assert (=> d!1928252 d!1928596))

(assert (=> b!6154022 d!1928226))

(declare-fun b!6154948 () Bool)

(declare-fun res!2549263 () Bool)

(declare-fun e!3750300 () Bool)

(assert (=> b!6154948 (=> res!2549263 e!3750300)))

(assert (=> b!6154948 (= res!2549263 (not (isEmpty!36430 (tail!11798 (tail!11798 s!2326)))))))

(declare-fun b!6154949 () Bool)

(declare-fun e!3750297 () Bool)

(assert (=> b!6154949 (= e!3750297 e!3750300)))

(declare-fun res!2549261 () Bool)

(assert (=> b!6154949 (=> res!2549261 e!3750300)))

(declare-fun call!512195 () Bool)

(assert (=> b!6154949 (= res!2549261 call!512195)))

(declare-fun b!6154950 () Bool)

(declare-fun e!3750301 () Bool)

(declare-fun lt!2334970 () Bool)

(assert (=> b!6154950 (= e!3750301 (not lt!2334970))))

(declare-fun b!6154951 () Bool)

(declare-fun e!3750298 () Bool)

(assert (=> b!6154951 (= e!3750298 (= (head!12713 (tail!11798 s!2326)) (c!1107723 (derivativeStep!4816 r!7292 (head!12713 s!2326)))))))

(declare-fun b!6154952 () Bool)

(declare-fun e!3750302 () Bool)

(assert (=> b!6154952 (= e!3750302 (nullable!6089 (derivativeStep!4816 r!7292 (head!12713 s!2326))))))

(declare-fun b!6154953 () Bool)

(assert (=> b!6154953 (= e!3750302 (matchR!8279 (derivativeStep!4816 (derivativeStep!4816 r!7292 (head!12713 s!2326)) (head!12713 (tail!11798 s!2326))) (tail!11798 (tail!11798 s!2326))))))

(declare-fun b!6154954 () Bool)

(declare-fun e!3750299 () Bool)

(assert (=> b!6154954 (= e!3750299 (= lt!2334970 call!512195))))

(declare-fun bm!512190 () Bool)

(assert (=> bm!512190 (= call!512195 (isEmpty!36430 (tail!11798 s!2326)))))

(declare-fun d!1928598 () Bool)

(assert (=> d!1928598 e!3750299))

(declare-fun c!1108072 () Bool)

(assert (=> d!1928598 (= c!1108072 (is-EmptyExpr!16096 (derivativeStep!4816 r!7292 (head!12713 s!2326))))))

(assert (=> d!1928598 (= lt!2334970 e!3750302)))

(declare-fun c!1108071 () Bool)

(assert (=> d!1928598 (= c!1108071 (isEmpty!36430 (tail!11798 s!2326)))))

(assert (=> d!1928598 (validRegex!7832 (derivativeStep!4816 r!7292 (head!12713 s!2326)))))

(assert (=> d!1928598 (= (matchR!8279 (derivativeStep!4816 r!7292 (head!12713 s!2326)) (tail!11798 s!2326)) lt!2334970)))

(declare-fun b!6154955 () Bool)

(declare-fun e!3750303 () Bool)

(assert (=> b!6154955 (= e!3750303 e!3750297)))

(declare-fun res!2549264 () Bool)

(assert (=> b!6154955 (=> (not res!2549264) (not e!3750297))))

(assert (=> b!6154955 (= res!2549264 (not lt!2334970))))

(declare-fun b!6154956 () Bool)

(declare-fun res!2549260 () Bool)

(assert (=> b!6154956 (=> (not res!2549260) (not e!3750298))))

(assert (=> b!6154956 (= res!2549260 (isEmpty!36430 (tail!11798 (tail!11798 s!2326))))))

(declare-fun b!6154957 () Bool)

(declare-fun res!2549262 () Bool)

(assert (=> b!6154957 (=> res!2549262 e!3750303)))

(assert (=> b!6154957 (= res!2549262 e!3750298)))

(declare-fun res!2549257 () Bool)

(assert (=> b!6154957 (=> (not res!2549257) (not e!3750298))))

(assert (=> b!6154957 (= res!2549257 lt!2334970)))

(declare-fun b!6154958 () Bool)

(declare-fun res!2549258 () Bool)

(assert (=> b!6154958 (=> (not res!2549258) (not e!3750298))))

(assert (=> b!6154958 (= res!2549258 (not call!512195))))

(declare-fun b!6154959 () Bool)

(assert (=> b!6154959 (= e!3750300 (not (= (head!12713 (tail!11798 s!2326)) (c!1107723 (derivativeStep!4816 r!7292 (head!12713 s!2326))))))))

(declare-fun b!6154960 () Bool)

(declare-fun res!2549259 () Bool)

(assert (=> b!6154960 (=> res!2549259 e!3750303)))

(assert (=> b!6154960 (= res!2549259 (not (is-ElementMatch!16096 (derivativeStep!4816 r!7292 (head!12713 s!2326)))))))

(assert (=> b!6154960 (= e!3750301 e!3750303)))

(declare-fun b!6154961 () Bool)

(assert (=> b!6154961 (= e!3750299 e!3750301)))

(declare-fun c!1108073 () Bool)

(assert (=> b!6154961 (= c!1108073 (is-EmptyLang!16096 (derivativeStep!4816 r!7292 (head!12713 s!2326))))))

(assert (= (and d!1928598 c!1108071) b!6154952))

(assert (= (and d!1928598 (not c!1108071)) b!6154953))

(assert (= (and d!1928598 c!1108072) b!6154954))

(assert (= (and d!1928598 (not c!1108072)) b!6154961))

(assert (= (and b!6154961 c!1108073) b!6154950))

(assert (= (and b!6154961 (not c!1108073)) b!6154960))

(assert (= (and b!6154960 (not res!2549259)) b!6154957))

(assert (= (and b!6154957 res!2549257) b!6154958))

(assert (= (and b!6154958 res!2549258) b!6154956))

(assert (= (and b!6154956 res!2549260) b!6154951))

(assert (= (and b!6154957 (not res!2549262)) b!6154955))

(assert (= (and b!6154955 res!2549264) b!6154949))

(assert (= (and b!6154949 (not res!2549261)) b!6154948))

(assert (= (and b!6154948 (not res!2549263)) b!6154959))

(assert (= (or b!6154954 b!6154949 b!6154958) bm!512190))

(assert (=> b!6154948 m!6993046))

(declare-fun m!6993966 () Bool)

(assert (=> b!6154948 m!6993966))

(assert (=> b!6154948 m!6993966))

(declare-fun m!6993968 () Bool)

(assert (=> b!6154948 m!6993968))

(assert (=> b!6154952 m!6993054))

(declare-fun m!6993970 () Bool)

(assert (=> b!6154952 m!6993970))

(assert (=> b!6154959 m!6993046))

(declare-fun m!6993972 () Bool)

(assert (=> b!6154959 m!6993972))

(assert (=> d!1928598 m!6993046))

(assert (=> d!1928598 m!6993048))

(assert (=> d!1928598 m!6993054))

(declare-fun m!6993974 () Bool)

(assert (=> d!1928598 m!6993974))

(assert (=> b!6154956 m!6993046))

(assert (=> b!6154956 m!6993966))

(assert (=> b!6154956 m!6993966))

(assert (=> b!6154956 m!6993968))

(assert (=> b!6154953 m!6993046))

(assert (=> b!6154953 m!6993972))

(assert (=> b!6154953 m!6993054))

(assert (=> b!6154953 m!6993972))

(declare-fun m!6993976 () Bool)

(assert (=> b!6154953 m!6993976))

(assert (=> b!6154953 m!6993046))

(assert (=> b!6154953 m!6993966))

(assert (=> b!6154953 m!6993976))

(assert (=> b!6154953 m!6993966))

(declare-fun m!6993978 () Bool)

(assert (=> b!6154953 m!6993978))

(assert (=> bm!512190 m!6993046))

(assert (=> bm!512190 m!6993048))

(assert (=> b!6154951 m!6993046))

(assert (=> b!6154951 m!6993972))

(assert (=> b!6153922 d!1928598))

(declare-fun c!1108084 () Bool)

(declare-fun call!512205 () Regex!16096)

(declare-fun bm!512199 () Bool)

(assert (=> bm!512199 (= call!512205 (derivativeStep!4816 (ite c!1108084 (regOne!32705 r!7292) (regOne!32704 r!7292)) (head!12713 s!2326)))))

(declare-fun b!6154982 () Bool)

(declare-fun c!1108086 () Bool)

(assert (=> b!6154982 (= c!1108086 (nullable!6089 (regOne!32704 r!7292)))))

(declare-fun e!3750315 () Regex!16096)

(declare-fun e!3750314 () Regex!16096)

(assert (=> b!6154982 (= e!3750315 e!3750314)))

(declare-fun bm!512200 () Bool)

(declare-fun call!512204 () Regex!16096)

(declare-fun call!512206 () Regex!16096)

(assert (=> bm!512200 (= call!512204 call!512206)))

(declare-fun b!6154983 () Bool)

(assert (=> b!6154983 (= c!1108084 (is-Union!16096 r!7292))))

(declare-fun e!3750318 () Regex!16096)

(declare-fun e!3750317 () Regex!16096)

(assert (=> b!6154983 (= e!3750318 e!3750317)))

(declare-fun b!6154984 () Bool)

(assert (=> b!6154984 (= e!3750314 (Union!16096 (Concat!24941 call!512204 (regTwo!32704 r!7292)) EmptyLang!16096))))

(declare-fun c!1108088 () Bool)

(declare-fun call!512207 () Regex!16096)

(declare-fun bm!512201 () Bool)

(assert (=> bm!512201 (= call!512207 (derivativeStep!4816 (ite c!1108084 (regTwo!32705 r!7292) (ite c!1108088 (reg!16425 r!7292) (ite c!1108086 (regTwo!32704 r!7292) (regOne!32704 r!7292)))) (head!12713 s!2326)))))

(declare-fun b!6154985 () Bool)

(assert (=> b!6154985 (= e!3750315 (Concat!24941 call!512206 r!7292))))

(declare-fun b!6154986 () Bool)

(assert (=> b!6154986 (= e!3750318 (ite (= (head!12713 s!2326) (c!1107723 r!7292)) EmptyExpr!16096 EmptyLang!16096))))

(declare-fun b!6154987 () Bool)

(assert (=> b!6154987 (= e!3750317 (Union!16096 call!512205 call!512207))))

(declare-fun b!6154988 () Bool)

(declare-fun e!3750316 () Regex!16096)

(assert (=> b!6154988 (= e!3750316 EmptyLang!16096)))

(declare-fun d!1928600 () Bool)

(declare-fun lt!2334973 () Regex!16096)

(assert (=> d!1928600 (validRegex!7832 lt!2334973)))

(assert (=> d!1928600 (= lt!2334973 e!3750316)))

(declare-fun c!1108085 () Bool)

(assert (=> d!1928600 (= c!1108085 (or (is-EmptyExpr!16096 r!7292) (is-EmptyLang!16096 r!7292)))))

(assert (=> d!1928600 (validRegex!7832 r!7292)))

(assert (=> d!1928600 (= (derivativeStep!4816 r!7292 (head!12713 s!2326)) lt!2334973)))

(declare-fun b!6154989 () Bool)

(assert (=> b!6154989 (= e!3750317 e!3750315)))

(assert (=> b!6154989 (= c!1108088 (is-Star!16096 r!7292))))

(declare-fun bm!512202 () Bool)

(assert (=> bm!512202 (= call!512206 call!512207)))

(declare-fun b!6154990 () Bool)

(assert (=> b!6154990 (= e!3750316 e!3750318)))

(declare-fun c!1108087 () Bool)

(assert (=> b!6154990 (= c!1108087 (is-ElementMatch!16096 r!7292))))

(declare-fun b!6154991 () Bool)

(assert (=> b!6154991 (= e!3750314 (Union!16096 (Concat!24941 call!512205 (regTwo!32704 r!7292)) call!512204))))

(assert (= (and d!1928600 c!1108085) b!6154988))

(assert (= (and d!1928600 (not c!1108085)) b!6154990))

(assert (= (and b!6154990 c!1108087) b!6154986))

(assert (= (and b!6154990 (not c!1108087)) b!6154983))

(assert (= (and b!6154983 c!1108084) b!6154987))

(assert (= (and b!6154983 (not c!1108084)) b!6154989))

(assert (= (and b!6154989 c!1108088) b!6154985))

(assert (= (and b!6154989 (not c!1108088)) b!6154982))

(assert (= (and b!6154982 c!1108086) b!6154991))

(assert (= (and b!6154982 (not c!1108086)) b!6154984))

(assert (= (or b!6154991 b!6154984) bm!512200))

(assert (= (or b!6154985 bm!512200) bm!512202))

(assert (= (or b!6154987 bm!512202) bm!512201))

(assert (= (or b!6154987 b!6154991) bm!512199))

(assert (=> bm!512199 m!6993052))

(declare-fun m!6993980 () Bool)

(assert (=> bm!512199 m!6993980))

(assert (=> b!6154982 m!6993626))

(assert (=> bm!512201 m!6993052))

(declare-fun m!6993982 () Bool)

(assert (=> bm!512201 m!6993982))

(declare-fun m!6993984 () Bool)

(assert (=> d!1928600 m!6993984))

(assert (=> d!1928600 m!6992798))

(assert (=> b!6153922 d!1928600))

(assert (=> b!6153922 d!1928476))

(assert (=> b!6153922 d!1928544))

(assert (=> b!6153925 d!1928542))

(assert (=> b!6153925 d!1928544))

(assert (=> d!1928224 d!1928230))

(declare-fun d!1928602 () Bool)

(assert (=> d!1928602 (= (flatMap!1601 z!1189 lambda!335642) (dynLambda!25413 lambda!335642 (h!70913 zl!343)))))

(assert (=> d!1928602 true))

(declare-fun _$13!3084 () Unit!157555)

(assert (=> d!1928602 (= (choose!45741 z!1189 (h!70913 zl!343) lambda!335642) _$13!3084)))

(declare-fun b_lambda!234281 () Bool)

(assert (=> (not b_lambda!234281) (not d!1928602)))

(declare-fun bs!1525662 () Bool)

(assert (= bs!1525662 d!1928602))

(assert (=> bs!1525662 m!6992778))

(assert (=> bs!1525662 m!6993116))

(assert (=> d!1928224 d!1928602))

(declare-fun b!6154992 () Bool)

(declare-fun call!512208 () (Set Context!10960))

(declare-fun e!3750319 () (Set Context!10960))

(assert (=> b!6154992 (= e!3750319 (set.union call!512208 (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))))))))) (h!70912 s!2326))))))

(declare-fun bm!512203 () Bool)

(assert (=> bm!512203 (= call!512208 (derivationStepZipperDown!1344 (h!70911 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))))) (Context!10961 (t!378078 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))))))))) (h!70912 s!2326)))))

(declare-fun b!6154993 () Bool)

(declare-fun e!3750320 () (Set Context!10960))

(assert (=> b!6154993 (= e!3750319 e!3750320)))

(declare-fun c!1108090 () Bool)

(assert (=> b!6154993 (= c!1108090 (is-Cons!64463 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))))))))

(declare-fun b!6154994 () Bool)

(declare-fun e!3750321 () Bool)

(assert (=> b!6154994 (= e!3750321 (nullable!6089 (h!70911 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343))))))))))))))

(declare-fun d!1928604 () Bool)

(declare-fun c!1108089 () Bool)

(assert (=> d!1928604 (= c!1108089 e!3750321)))

(declare-fun res!2549265 () Bool)

(assert (=> d!1928604 (=> (not res!2549265) (not e!3750321))))

(assert (=> d!1928604 (= res!2549265 (is-Cons!64463 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))))))))

(assert (=> d!1928604 (= (derivationStepZipperUp!1270 (Context!10961 (t!378078 (exprs!5980 (Context!10961 (Cons!64463 (h!70911 (exprs!5980 (h!70913 zl!343))) (t!378078 (exprs!5980 (h!70913 zl!343)))))))) (h!70912 s!2326)) e!3750319)))

(declare-fun b!6154995 () Bool)

(assert (=> b!6154995 (= e!3750320 (as set.empty (Set Context!10960)))))

(declare-fun b!6154996 () Bool)

(assert (=> b!6154996 (= e!3750320 call!512208)))

(assert (= (and d!1928604 res!2549265) b!6154994))

(assert (= (and d!1928604 c!1108089) b!6154992))

(assert (= (and d!1928604 (not c!1108089)) b!6154993))

(assert (= (and b!6154993 c!1108090) b!6154996))

(assert (= (and b!6154993 (not c!1108090)) b!6154995))

(assert (= (or b!6154992 b!6154996) bm!512203))

(declare-fun m!6993986 () Bool)

(assert (=> b!6154992 m!6993986))

(declare-fun m!6993988 () Bool)

(assert (=> bm!512203 m!6993988))

(declare-fun m!6993990 () Bool)

(assert (=> b!6154994 m!6993990))

(assert (=> b!6153977 d!1928604))

(declare-fun b!6154999 () Bool)

(declare-fun res!2549266 () Bool)

(declare-fun e!3750323 () Bool)

(assert (=> b!6154999 (=> (not res!2549266) (not e!3750323))))

(declare-fun lt!2334974 () List!64588)

(assert (=> b!6154999 (= res!2549266 (= (size!40238 lt!2334974) (+ (size!40238 (_1!36378 (get!22246 lt!2334900))) (size!40238 (_2!36378 (get!22246 lt!2334900))))))))

(declare-fun d!1928606 () Bool)

(assert (=> d!1928606 e!3750323))

(declare-fun res!2549267 () Bool)

(assert (=> d!1928606 (=> (not res!2549267) (not e!3750323))))

(assert (=> d!1928606 (= res!2549267 (= (content!12017 lt!2334974) (set.union (content!12017 (_1!36378 (get!22246 lt!2334900))) (content!12017 (_2!36378 (get!22246 lt!2334900))))))))

(declare-fun e!3750322 () List!64588)

(assert (=> d!1928606 (= lt!2334974 e!3750322)))

(declare-fun c!1108091 () Bool)

(assert (=> d!1928606 (= c!1108091 (is-Nil!64464 (_1!36378 (get!22246 lt!2334900))))))

(assert (=> d!1928606 (= (++!14182 (_1!36378 (get!22246 lt!2334900)) (_2!36378 (get!22246 lt!2334900))) lt!2334974)))

(declare-fun b!6154997 () Bool)

(assert (=> b!6154997 (= e!3750322 (_2!36378 (get!22246 lt!2334900)))))

(declare-fun b!6154998 () Bool)

(assert (=> b!6154998 (= e!3750322 (Cons!64464 (h!70912 (_1!36378 (get!22246 lt!2334900))) (++!14182 (t!378079 (_1!36378 (get!22246 lt!2334900))) (_2!36378 (get!22246 lt!2334900)))))))

(declare-fun b!6155000 () Bool)

(assert (=> b!6155000 (= e!3750323 (or (not (= (_2!36378 (get!22246 lt!2334900)) Nil!64464)) (= lt!2334974 (_1!36378 (get!22246 lt!2334900)))))))

(assert (= (and d!1928606 c!1108091) b!6154997))

(assert (= (and d!1928606 (not c!1108091)) b!6154998))

(assert (= (and d!1928606 res!2549267) b!6154999))

(assert (= (and b!6154999 res!2549266) b!6155000))

(declare-fun m!6993992 () Bool)

(assert (=> b!6154999 m!6993992))

(declare-fun m!6993994 () Bool)

(assert (=> b!6154999 m!6993994))

(declare-fun m!6993996 () Bool)

(assert (=> b!6154999 m!6993996))

(declare-fun m!6993998 () Bool)

(assert (=> d!1928606 m!6993998))

(declare-fun m!6994000 () Bool)

(assert (=> d!1928606 m!6994000))

(declare-fun m!6994002 () Bool)

(assert (=> d!1928606 m!6994002))

(declare-fun m!6994004 () Bool)

(assert (=> b!6154998 m!6994004))

(assert (=> b!6154049 d!1928606))

(assert (=> b!6154049 d!1928444))

(declare-fun bm!512204 () Bool)

(declare-fun call!512210 () List!64587)

(declare-fun call!512213 () List!64587)

(assert (=> bm!512204 (= call!512210 call!512213)))

(declare-fun b!6155001 () Bool)

(declare-fun e!3750326 () (Set Context!10960))

(declare-fun call!512209 () (Set Context!10960))

(declare-fun call!512211 () (Set Context!10960))

(assert (=> b!6155001 (= e!3750326 (set.union call!512209 call!512211))))

(declare-fun b!6155002 () Bool)

(declare-fun c!1108094 () Bool)

(assert (=> b!6155002 (= c!1108094 (is-Star!16096 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))))))))

(declare-fun e!3750329 () (Set Context!10960))

(declare-fun e!3750327 () (Set Context!10960))

(assert (=> b!6155002 (= e!3750329 e!3750327)))

(declare-fun b!6155003 () Bool)

(declare-fun e!3750328 () (Set Context!10960))

(assert (=> b!6155003 (= e!3750328 e!3750326)))

(declare-fun c!1108093 () Bool)

(assert (=> b!6155003 (= c!1108093 (is-Union!16096 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))))))))

(declare-fun b!6155004 () Bool)

(declare-fun e!3750325 () (Set Context!10960))

(assert (=> b!6155004 (= e!3750325 e!3750329)))

(declare-fun c!1108095 () Bool)

(assert (=> b!6155004 (= c!1108095 (is-Concat!24941 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))))))))

(declare-fun b!6155005 () Bool)

(assert (=> b!6155005 (= e!3750327 (as set.empty (Set Context!10960)))))

(declare-fun bm!512206 () Bool)

(declare-fun c!1108096 () Bool)

(assert (=> bm!512206 (= call!512211 (derivationStepZipperDown!1344 (ite c!1108093 (regTwo!32705 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))))) (ite c!1108096 (regTwo!32704 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))))) (ite c!1108095 (regOne!32704 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))))) (reg!16425 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292)))))))) (ite (or c!1108093 c!1108096) (ite c!1107841 lt!2334763 (Context!10961 call!512046)) (Context!10961 call!512210)) (h!70912 s!2326)))))

(declare-fun b!6155006 () Bool)

(declare-fun e!3750324 () Bool)

(assert (=> b!6155006 (= c!1108096 e!3750324)))

(declare-fun res!2549268 () Bool)

(assert (=> b!6155006 (=> (not res!2549268) (not e!3750324))))

(assert (=> b!6155006 (= res!2549268 (is-Concat!24941 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))))))))

(assert (=> b!6155006 (= e!3750326 e!3750325)))

(declare-fun b!6155007 () Bool)

(declare-fun call!512212 () (Set Context!10960))

(assert (=> b!6155007 (= e!3750327 call!512212)))

(declare-fun b!6155008 () Bool)

(assert (=> b!6155008 (= e!3750328 (set.insert (ite c!1107841 lt!2334763 (Context!10961 call!512046)) (as set.empty (Set Context!10960))))))

(declare-fun bm!512207 () Bool)

(declare-fun call!512214 () (Set Context!10960))

(assert (=> bm!512207 (= call!512212 call!512214)))

(declare-fun b!6155009 () Bool)

(assert (=> b!6155009 (= e!3750325 (set.union call!512209 call!512214))))

(declare-fun bm!512205 () Bool)

(assert (=> bm!512205 (= call!512213 ($colon$colon!1973 (exprs!5980 (ite c!1107841 lt!2334763 (Context!10961 call!512046))) (ite (or c!1108096 c!1108095) (regTwo!32704 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))))) (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292)))))))))

(declare-fun d!1928608 () Bool)

(declare-fun c!1108092 () Bool)

(assert (=> d!1928608 (= c!1108092 (and (is-ElementMatch!16096 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))))) (= (c!1107723 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))))) (h!70912 s!2326))))))

(assert (=> d!1928608 (= (derivationStepZipperDown!1344 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292)))) (ite c!1107841 lt!2334763 (Context!10961 call!512046)) (h!70912 s!2326)) e!3750328)))

(declare-fun bm!512208 () Bool)

(assert (=> bm!512208 (= call!512214 call!512211)))

(declare-fun bm!512209 () Bool)

(assert (=> bm!512209 (= call!512209 (derivationStepZipperDown!1344 (ite c!1108093 (regOne!32705 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292))))) (regOne!32704 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292)))))) (ite c!1108093 (ite c!1107841 lt!2334763 (Context!10961 call!512046)) (Context!10961 call!512213)) (h!70912 s!2326)))))

(declare-fun b!6155010 () Bool)

(assert (=> b!6155010 (= e!3750329 call!512212)))

(declare-fun b!6155011 () Bool)

(assert (=> b!6155011 (= e!3750324 (nullable!6089 (regOne!32704 (ite c!1107841 (regOne!32705 (regTwo!32705 (regOne!32704 r!7292))) (regOne!32704 (regTwo!32705 (regOne!32704 r!7292)))))))))

(assert (= (and d!1928608 c!1108092) b!6155008))

(assert (= (and d!1928608 (not c!1108092)) b!6155003))

(assert (= (and b!6155003 c!1108093) b!6155001))

(assert (= (and b!6155003 (not c!1108093)) b!6155006))

(assert (= (and b!6155006 res!2549268) b!6155011))

(assert (= (and b!6155006 c!1108096) b!6155009))

(assert (= (and b!6155006 (not c!1108096)) b!6155004))

(assert (= (and b!6155004 c!1108095) b!6155010))

(assert (= (and b!6155004 (not c!1108095)) b!6155002))

(assert (= (and b!6155002 c!1108094) b!6155007))

(assert (= (and b!6155002 (not c!1108094)) b!6155005))

(assert (= (or b!6155010 b!6155007) bm!512204))

(assert (= (or b!6155010 b!6155007) bm!512207))

(assert (= (or b!6155009 bm!512204) bm!512205))

(assert (= (or b!6155009 bm!512207) bm!512208))

(assert (= (or b!6155001 bm!512208) bm!512206))

(assert (= (or b!6155001 b!6155009) bm!512209))

(declare-fun m!6994006 () Bool)

(assert (=> bm!512206 m!6994006))

(declare-fun m!6994008 () Bool)

(assert (=> bm!512205 m!6994008))

(declare-fun m!6994010 () Bool)

(assert (=> b!6155008 m!6994010))

(declare-fun m!6994012 () Bool)

(assert (=> bm!512209 m!6994012))

(declare-fun m!6994014 () Bool)

(assert (=> b!6155011 m!6994014))

(assert (=> bm!512042 d!1928608))

(declare-fun d!1928610 () Bool)

(assert (=> d!1928610 (= (isEmpty!36427 (t!378078 (unfocusZipperList!1517 zl!343))) (is-Nil!64463 (t!378078 (unfocusZipperList!1517 zl!343))))))

(assert (=> b!6153954 d!1928610))

(declare-fun bm!512210 () Bool)

(declare-fun call!512216 () List!64587)

(declare-fun call!512219 () List!64587)

(assert (=> bm!512210 (= call!512216 call!512219)))

(declare-fun b!6155012 () Bool)

(declare-fun e!3750332 () (Set Context!10960))

(declare-fun call!512215 () (Set Context!10960))

(declare-fun call!512217 () (Set Context!10960))

(assert (=> b!6155012 (= e!3750332 (set.union call!512215 call!512217))))

(declare-fun b!6155013 () Bool)

(declare-fun c!1108099 () Bool)

(assert (=> b!6155013 (= c!1108099 (is-Star!16096 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))))))))

(declare-fun e!3750335 () (Set Context!10960))

(declare-fun e!3750333 () (Set Context!10960))

(assert (=> b!6155013 (= e!3750335 e!3750333)))

(declare-fun b!6155014 () Bool)

(declare-fun e!3750334 () (Set Context!10960))

(assert (=> b!6155014 (= e!3750334 e!3750332)))

(declare-fun c!1108098 () Bool)

(assert (=> b!6155014 (= c!1108098 (is-Union!16096 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))))))))

(declare-fun b!6155015 () Bool)

(declare-fun e!3750331 () (Set Context!10960))

(assert (=> b!6155015 (= e!3750331 e!3750335)))

(declare-fun c!1108100 () Bool)

(assert (=> b!6155015 (= c!1108100 (is-Concat!24941 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))))))))

(declare-fun b!6155016 () Bool)

(assert (=> b!6155016 (= e!3750333 (as set.empty (Set Context!10960)))))

(declare-fun bm!512212 () Bool)

(declare-fun c!1108101 () Bool)

(assert (=> bm!512212 (= call!512217 (derivationStepZipperDown!1344 (ite c!1108098 (regTwo!32705 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))))) (ite c!1108101 (regTwo!32704 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))))) (ite c!1108100 (regOne!32704 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))))) (reg!16425 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343))))))))) (ite (or c!1108098 c!1108101) (ite c!1107820 lt!2334763 (Context!10961 call!512030)) (Context!10961 call!512216)) (h!70912 s!2326)))))

(declare-fun b!6155017 () Bool)

(declare-fun e!3750330 () Bool)

(assert (=> b!6155017 (= c!1108101 e!3750330)))

(declare-fun res!2549269 () Bool)

(assert (=> b!6155017 (=> (not res!2549269) (not e!3750330))))

(assert (=> b!6155017 (= res!2549269 (is-Concat!24941 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))))))))

(assert (=> b!6155017 (= e!3750332 e!3750331)))

(declare-fun b!6155018 () Bool)

(declare-fun call!512218 () (Set Context!10960))

(assert (=> b!6155018 (= e!3750333 call!512218)))

(declare-fun b!6155019 () Bool)

(assert (=> b!6155019 (= e!3750334 (set.insert (ite c!1107820 lt!2334763 (Context!10961 call!512030)) (as set.empty (Set Context!10960))))))

(declare-fun bm!512213 () Bool)

(declare-fun call!512220 () (Set Context!10960))

(assert (=> bm!512213 (= call!512218 call!512220)))

(declare-fun b!6155020 () Bool)

(assert (=> b!6155020 (= e!3750331 (set.union call!512215 call!512220))))

(declare-fun bm!512211 () Bool)

(assert (=> bm!512211 (= call!512219 ($colon$colon!1973 (exprs!5980 (ite c!1107820 lt!2334763 (Context!10961 call!512030))) (ite (or c!1108101 c!1108100) (regTwo!32704 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))))) (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343))))))))))

(declare-fun c!1108097 () Bool)

(declare-fun d!1928612 () Bool)

(assert (=> d!1928612 (= c!1108097 (and (is-ElementMatch!16096 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))))) (= (c!1107723 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))))) (h!70912 s!2326))))))

(assert (=> d!1928612 (= (derivationStepZipperDown!1344 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343))))) (ite c!1107820 lt!2334763 (Context!10961 call!512030)) (h!70912 s!2326)) e!3750334)))

(declare-fun bm!512214 () Bool)

(assert (=> bm!512214 (= call!512220 call!512217)))

(declare-fun bm!512215 () Bool)

(assert (=> bm!512215 (= call!512215 (derivationStepZipperDown!1344 (ite c!1108098 (regOne!32705 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))))) (regOne!32704 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343))))))) (ite c!1108098 (ite c!1107820 lt!2334763 (Context!10961 call!512030)) (Context!10961 call!512219)) (h!70912 s!2326)))))

(declare-fun b!6155021 () Bool)

(assert (=> b!6155021 (= e!3750335 call!512218)))

(declare-fun b!6155022 () Bool)

(assert (=> b!6155022 (= e!3750330 (nullable!6089 (regOne!32704 (ite c!1107820 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343))))))))))

(assert (= (and d!1928612 c!1108097) b!6155019))

(assert (= (and d!1928612 (not c!1108097)) b!6155014))

(assert (= (and b!6155014 c!1108098) b!6155012))

(assert (= (and b!6155014 (not c!1108098)) b!6155017))

(assert (= (and b!6155017 res!2549269) b!6155022))

(assert (= (and b!6155017 c!1108101) b!6155020))

(assert (= (and b!6155017 (not c!1108101)) b!6155015))

(assert (= (and b!6155015 c!1108100) b!6155021))

(assert (= (and b!6155015 (not c!1108100)) b!6155013))

(assert (= (and b!6155013 c!1108099) b!6155018))

(assert (= (and b!6155013 (not c!1108099)) b!6155016))

(assert (= (or b!6155021 b!6155018) bm!512210))

(assert (= (or b!6155021 b!6155018) bm!512213))

(assert (= (or b!6155020 bm!512210) bm!512211))

(assert (= (or b!6155020 bm!512213) bm!512214))

(assert (= (or b!6155012 bm!512214) bm!512212))

(assert (= (or b!6155012 b!6155020) bm!512215))

(declare-fun m!6994016 () Bool)

(assert (=> bm!512212 m!6994016))

(declare-fun m!6994018 () Bool)

(assert (=> bm!512211 m!6994018))

(declare-fun m!6994020 () Bool)

(assert (=> b!6155019 m!6994020))

(declare-fun m!6994022 () Bool)

(assert (=> bm!512215 m!6994022))

(declare-fun m!6994024 () Bool)

(assert (=> b!6155022 m!6994024))

(assert (=> bm!512026 d!1928612))

(declare-fun d!1928614 () Bool)

(declare-fun c!1108102 () Bool)

(assert (=> d!1928614 (= c!1108102 (isEmpty!36430 (tail!11798 s!2326)))))

(declare-fun e!3750336 () Bool)

(assert (=> d!1928614 (= (matchZipper!2108 (derivationStepZipper!2069 lt!2334764 (head!12713 s!2326)) (tail!11798 s!2326)) e!3750336)))

(declare-fun b!6155023 () Bool)

(assert (=> b!6155023 (= e!3750336 (nullableZipper!1877 (derivationStepZipper!2069 lt!2334764 (head!12713 s!2326))))))

(declare-fun b!6155024 () Bool)

(assert (=> b!6155024 (= e!3750336 (matchZipper!2108 (derivationStepZipper!2069 (derivationStepZipper!2069 lt!2334764 (head!12713 s!2326)) (head!12713 (tail!11798 s!2326))) (tail!11798 (tail!11798 s!2326))))))

(assert (= (and d!1928614 c!1108102) b!6155023))

(assert (= (and d!1928614 (not c!1108102)) b!6155024))

(assert (=> d!1928614 m!6993046))

(assert (=> d!1928614 m!6993048))

(assert (=> b!6155023 m!6993154))

(declare-fun m!6994026 () Bool)

(assert (=> b!6155023 m!6994026))

(assert (=> b!6155024 m!6993046))

(assert (=> b!6155024 m!6993972))

(assert (=> b!6155024 m!6993154))

(assert (=> b!6155024 m!6993972))

(declare-fun m!6994028 () Bool)

(assert (=> b!6155024 m!6994028))

(assert (=> b!6155024 m!6993046))

(assert (=> b!6155024 m!6993966))

(assert (=> b!6155024 m!6994028))

(assert (=> b!6155024 m!6993966))

(declare-fun m!6994030 () Bool)

(assert (=> b!6155024 m!6994030))

(assert (=> b!6154026 d!1928614))

(declare-fun bs!1525663 () Bool)

(declare-fun d!1928616 () Bool)

(assert (= bs!1525663 (and d!1928616 b!6153643)))

(declare-fun lambda!335757 () Int)

(assert (=> bs!1525663 (= (= (head!12713 s!2326) (h!70912 s!2326)) (= lambda!335757 lambda!335642))))

(declare-fun bs!1525664 () Bool)

(assert (= bs!1525664 (and d!1928616 d!1928432)))

(assert (=> bs!1525664 (= (= (head!12713 s!2326) (head!12713 (t!378079 s!2326))) (= lambda!335757 lambda!335730))))

(declare-fun bs!1525665 () Bool)

(assert (= bs!1525665 (and d!1928616 d!1928472)))

(assert (=> bs!1525665 (= (= (head!12713 s!2326) (head!12713 (t!378079 s!2326))) (= lambda!335757 lambda!335740))))

(declare-fun bs!1525666 () Bool)

(assert (= bs!1525666 (and d!1928616 d!1928176)))

(assert (=> bs!1525666 (= (= (head!12713 s!2326) (h!70912 s!2326)) (= lambda!335757 lambda!335660))))

(declare-fun bs!1525667 () Bool)

(assert (= bs!1525667 (and d!1928616 d!1928590)))

(assert (=> bs!1525667 (= (= (head!12713 s!2326) (head!12713 (t!378079 s!2326))) (= lambda!335757 lambda!335753))))

(declare-fun bs!1525668 () Bool)

(assert (= bs!1525668 (and d!1928616 d!1928450)))

(assert (=> bs!1525668 (= (= (head!12713 s!2326) (head!12713 (t!378079 s!2326))) (= lambda!335757 lambda!335731))))

(declare-fun bs!1525669 () Bool)

(assert (= bs!1525669 (and d!1928616 d!1928488)))

(assert (=> bs!1525669 (= (= (head!12713 s!2326) (head!12713 (t!378079 s!2326))) (= lambda!335757 lambda!335741))))

(declare-fun bs!1525670 () Bool)

(assert (= bs!1525670 (and d!1928616 d!1928502)))

(assert (=> bs!1525670 (= (= (head!12713 s!2326) (head!12713 (t!378079 s!2326))) (= lambda!335757 lambda!335742))))

(declare-fun bs!1525671 () Bool)

(assert (= bs!1525671 (and d!1928616 d!1928532)))

(assert (=> bs!1525671 (= (= (head!12713 s!2326) (head!12713 (t!378079 s!2326))) (= lambda!335757 lambda!335747))))

(assert (=> d!1928616 true))

(assert (=> d!1928616 (= (derivationStepZipper!2069 lt!2334764 (head!12713 s!2326)) (flatMap!1601 lt!2334764 lambda!335757))))

(declare-fun bs!1525672 () Bool)

(assert (= bs!1525672 d!1928616))

(declare-fun m!6994032 () Bool)

(assert (=> bs!1525672 m!6994032))

(assert (=> b!6154026 d!1928616))

(assert (=> b!6154026 d!1928476))

(assert (=> b!6154026 d!1928544))

(assert (=> bs!1525429 d!1928168))

(declare-fun bm!512216 () Bool)

(declare-fun call!512222 () List!64587)

(declare-fun call!512225 () List!64587)

(assert (=> bm!512216 (= call!512222 call!512225)))

(declare-fun b!6155025 () Bool)

(declare-fun e!3750339 () (Set Context!10960))

(declare-fun call!512221 () (Set Context!10960))

(declare-fun call!512223 () (Set Context!10960))

(assert (=> b!6155025 (= e!3750339 (set.union call!512221 call!512223))))

(declare-fun b!6155026 () Bool)

(declare-fun c!1108105 () Bool)

(assert (=> b!6155026 (= c!1108105 (is-Star!16096 (h!70911 (exprs!5980 lt!2334766))))))

(declare-fun e!3750342 () (Set Context!10960))

(declare-fun e!3750340 () (Set Context!10960))

(assert (=> b!6155026 (= e!3750342 e!3750340)))

(declare-fun b!6155027 () Bool)

(declare-fun e!3750341 () (Set Context!10960))

(assert (=> b!6155027 (= e!3750341 e!3750339)))

(declare-fun c!1108104 () Bool)

(assert (=> b!6155027 (= c!1108104 (is-Union!16096 (h!70911 (exprs!5980 lt!2334766))))))

(declare-fun b!6155028 () Bool)

(declare-fun e!3750338 () (Set Context!10960))

(assert (=> b!6155028 (= e!3750338 e!3750342)))

(declare-fun c!1108106 () Bool)

(assert (=> b!6155028 (= c!1108106 (is-Concat!24941 (h!70911 (exprs!5980 lt!2334766))))))

(declare-fun b!6155029 () Bool)

(assert (=> b!6155029 (= e!3750340 (as set.empty (Set Context!10960)))))

(declare-fun c!1108107 () Bool)

(declare-fun bm!512218 () Bool)

(assert (=> bm!512218 (= call!512223 (derivationStepZipperDown!1344 (ite c!1108104 (regTwo!32705 (h!70911 (exprs!5980 lt!2334766))) (ite c!1108107 (regTwo!32704 (h!70911 (exprs!5980 lt!2334766))) (ite c!1108106 (regOne!32704 (h!70911 (exprs!5980 lt!2334766))) (reg!16425 (h!70911 (exprs!5980 lt!2334766)))))) (ite (or c!1108104 c!1108107) (Context!10961 (t!378078 (exprs!5980 lt!2334766))) (Context!10961 call!512222)) (h!70912 s!2326)))))

(declare-fun b!6155030 () Bool)

(declare-fun e!3750337 () Bool)

(assert (=> b!6155030 (= c!1108107 e!3750337)))

(declare-fun res!2549270 () Bool)

(assert (=> b!6155030 (=> (not res!2549270) (not e!3750337))))

(assert (=> b!6155030 (= res!2549270 (is-Concat!24941 (h!70911 (exprs!5980 lt!2334766))))))

(assert (=> b!6155030 (= e!3750339 e!3750338)))

(declare-fun b!6155031 () Bool)

(declare-fun call!512224 () (Set Context!10960))

(assert (=> b!6155031 (= e!3750340 call!512224)))

(declare-fun b!6155032 () Bool)

(assert (=> b!6155032 (= e!3750341 (set.insert (Context!10961 (t!378078 (exprs!5980 lt!2334766))) (as set.empty (Set Context!10960))))))

(declare-fun bm!512219 () Bool)

(declare-fun call!512226 () (Set Context!10960))

(assert (=> bm!512219 (= call!512224 call!512226)))

(declare-fun b!6155033 () Bool)

(assert (=> b!6155033 (= e!3750338 (set.union call!512221 call!512226))))

(declare-fun bm!512217 () Bool)

(assert (=> bm!512217 (= call!512225 ($colon$colon!1973 (exprs!5980 (Context!10961 (t!378078 (exprs!5980 lt!2334766)))) (ite (or c!1108107 c!1108106) (regTwo!32704 (h!70911 (exprs!5980 lt!2334766))) (h!70911 (exprs!5980 lt!2334766)))))))

(declare-fun d!1928618 () Bool)

(declare-fun c!1108103 () Bool)

(assert (=> d!1928618 (= c!1108103 (and (is-ElementMatch!16096 (h!70911 (exprs!5980 lt!2334766))) (= (c!1107723 (h!70911 (exprs!5980 lt!2334766))) (h!70912 s!2326))))))

(assert (=> d!1928618 (= (derivationStepZipperDown!1344 (h!70911 (exprs!5980 lt!2334766)) (Context!10961 (t!378078 (exprs!5980 lt!2334766))) (h!70912 s!2326)) e!3750341)))

(declare-fun bm!512220 () Bool)

(assert (=> bm!512220 (= call!512226 call!512223)))

(declare-fun bm!512221 () Bool)

(assert (=> bm!512221 (= call!512221 (derivationStepZipperDown!1344 (ite c!1108104 (regOne!32705 (h!70911 (exprs!5980 lt!2334766))) (regOne!32704 (h!70911 (exprs!5980 lt!2334766)))) (ite c!1108104 (Context!10961 (t!378078 (exprs!5980 lt!2334766))) (Context!10961 call!512225)) (h!70912 s!2326)))))

(declare-fun b!6155034 () Bool)

(assert (=> b!6155034 (= e!3750342 call!512224)))

(declare-fun b!6155035 () Bool)

(assert (=> b!6155035 (= e!3750337 (nullable!6089 (regOne!32704 (h!70911 (exprs!5980 lt!2334766)))))))

(assert (= (and d!1928618 c!1108103) b!6155032))

(assert (= (and d!1928618 (not c!1108103)) b!6155027))

(assert (= (and b!6155027 c!1108104) b!6155025))

(assert (= (and b!6155027 (not c!1108104)) b!6155030))

(assert (= (and b!6155030 res!2549270) b!6155035))

(assert (= (and b!6155030 c!1108107) b!6155033))

(assert (= (and b!6155030 (not c!1108107)) b!6155028))

(assert (= (and b!6155028 c!1108106) b!6155034))

(assert (= (and b!6155028 (not c!1108106)) b!6155026))

(assert (= (and b!6155026 c!1108105) b!6155031))

(assert (= (and b!6155026 (not c!1108105)) b!6155029))

(assert (= (or b!6155034 b!6155031) bm!512216))

(assert (= (or b!6155034 b!6155031) bm!512219))

(assert (= (or b!6155033 bm!512216) bm!512217))

(assert (= (or b!6155033 bm!512219) bm!512220))

(assert (= (or b!6155025 bm!512220) bm!512218))

(assert (= (or b!6155025 b!6155033) bm!512221))

(declare-fun m!6994034 () Bool)

(assert (=> bm!512218 m!6994034))

(declare-fun m!6994036 () Bool)

(assert (=> bm!512217 m!6994036))

(declare-fun m!6994038 () Bool)

(assert (=> b!6155032 m!6994038))

(declare-fun m!6994040 () Bool)

(assert (=> bm!512221 m!6994040))

(declare-fun m!6994042 () Bool)

(assert (=> b!6155035 m!6994042))

(assert (=> bm!511997 d!1928618))

(declare-fun d!1928620 () Bool)

(assert (=> d!1928620 (= (nullable!6089 (h!70911 (exprs!5980 lt!2334763))) (nullableFct!2053 (h!70911 (exprs!5980 lt!2334763))))))

(declare-fun bs!1525673 () Bool)

(assert (= bs!1525673 d!1928620))

(declare-fun m!6994044 () Bool)

(assert (=> bs!1525673 m!6994044))

(assert (=> b!6153984 d!1928620))

(declare-fun d!1928622 () Bool)

(assert (=> d!1928622 (= (isEmpty!36427 (exprs!5980 (h!70913 zl!343))) (is-Nil!64463 (exprs!5980 (h!70913 zl!343))))))

(assert (=> b!6153836 d!1928622))

(declare-fun d!1928624 () Bool)

(declare-fun c!1108108 () Bool)

(assert (=> d!1928624 (= c!1108108 (isEmpty!36430 (tail!11798 (t!378079 s!2326))))))

(declare-fun e!3750343 () Bool)

(assert (=> d!1928624 (= (matchZipper!2108 (derivationStepZipper!2069 lt!2334756 (head!12713 (t!378079 s!2326))) (tail!11798 (t!378079 s!2326))) e!3750343)))

(declare-fun b!6155036 () Bool)

(assert (=> b!6155036 (= e!3750343 (nullableZipper!1877 (derivationStepZipper!2069 lt!2334756 (head!12713 (t!378079 s!2326)))))))

(declare-fun b!6155037 () Bool)

(assert (=> b!6155037 (= e!3750343 (matchZipper!2108 (derivationStepZipper!2069 (derivationStepZipper!2069 lt!2334756 (head!12713 (t!378079 s!2326))) (head!12713 (tail!11798 (t!378079 s!2326)))) (tail!11798 (tail!11798 (t!378079 s!2326)))))))

(assert (= (and d!1928624 c!1108108) b!6155036))

(assert (= (and d!1928624 (not c!1108108)) b!6155037))

(assert (=> d!1928624 m!6992960))

(assert (=> d!1928624 m!6993602))

(assert (=> b!6155036 m!6992958))

(declare-fun m!6994046 () Bool)

(assert (=> b!6155036 m!6994046))

(assert (=> b!6155037 m!6992960))

(assert (=> b!6155037 m!6993606))

(assert (=> b!6155037 m!6992958))

(assert (=> b!6155037 m!6993606))

(declare-fun m!6994048 () Bool)

(assert (=> b!6155037 m!6994048))

(assert (=> b!6155037 m!6992960))

(assert (=> b!6155037 m!6993610))

(assert (=> b!6155037 m!6994048))

(assert (=> b!6155037 m!6993610))

(declare-fun m!6994050 () Bool)

(assert (=> b!6155037 m!6994050))

(assert (=> b!6153783 d!1928624))

(declare-fun bs!1525674 () Bool)

(declare-fun d!1928626 () Bool)

(assert (= bs!1525674 (and d!1928626 b!6153643)))

(declare-fun lambda!335758 () Int)

(assert (=> bs!1525674 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335758 lambda!335642))))

(declare-fun bs!1525675 () Bool)

(assert (= bs!1525675 (and d!1928626 d!1928432)))

(assert (=> bs!1525675 (= lambda!335758 lambda!335730)))

(declare-fun bs!1525676 () Bool)

(assert (= bs!1525676 (and d!1928626 d!1928472)))

(assert (=> bs!1525676 (= lambda!335758 lambda!335740)))

(declare-fun bs!1525677 () Bool)

(assert (= bs!1525677 (and d!1928626 d!1928176)))

(assert (=> bs!1525677 (= (= (head!12713 (t!378079 s!2326)) (h!70912 s!2326)) (= lambda!335758 lambda!335660))))

(declare-fun bs!1525678 () Bool)

(assert (= bs!1525678 (and d!1928626 d!1928590)))

(assert (=> bs!1525678 (= lambda!335758 lambda!335753)))

(declare-fun bs!1525679 () Bool)

(assert (= bs!1525679 (and d!1928626 d!1928450)))

(assert (=> bs!1525679 (= lambda!335758 lambda!335731)))

(declare-fun bs!1525680 () Bool)

(assert (= bs!1525680 (and d!1928626 d!1928488)))

(assert (=> bs!1525680 (= lambda!335758 lambda!335741)))

(declare-fun bs!1525681 () Bool)

(assert (= bs!1525681 (and d!1928626 d!1928616)))

(assert (=> bs!1525681 (= (= (head!12713 (t!378079 s!2326)) (head!12713 s!2326)) (= lambda!335758 lambda!335757))))

(declare-fun bs!1525682 () Bool)

(assert (= bs!1525682 (and d!1928626 d!1928502)))

(assert (=> bs!1525682 (= lambda!335758 lambda!335742)))

(declare-fun bs!1525683 () Bool)

(assert (= bs!1525683 (and d!1928626 d!1928532)))

(assert (=> bs!1525683 (= lambda!335758 lambda!335747)))

(assert (=> d!1928626 true))

(assert (=> d!1928626 (= (derivationStepZipper!2069 lt!2334756 (head!12713 (t!378079 s!2326))) (flatMap!1601 lt!2334756 lambda!335758))))

(declare-fun bs!1525684 () Bool)

(assert (= bs!1525684 d!1928626))

(declare-fun m!6994052 () Bool)

(assert (=> bs!1525684 m!6994052))

(assert (=> b!6153783 d!1928626))

(assert (=> b!6153783 d!1928434))

(assert (=> b!6153783 d!1928436))

(declare-fun d!1928628 () Bool)

(assert (=> d!1928628 (= (Exists!3166 (ite c!1107776 lambda!335672 lambda!335673)) (choose!45745 (ite c!1107776 lambda!335672 lambda!335673)))))

(declare-fun bs!1525685 () Bool)

(assert (= bs!1525685 d!1928628))

(declare-fun m!6994054 () Bool)

(assert (=> bs!1525685 m!6994054))

(assert (=> bm!512002 d!1928628))

(declare-fun d!1928630 () Bool)

(assert (=> d!1928630 (= (isEmpty!36431 (findConcatSeparation!2401 (regOne!32704 r!7292) (regTwo!32704 r!7292) Nil!64464 s!2326 s!2326)) (not (is-Some!15986 (findConcatSeparation!2401 (regOne!32704 r!7292) (regTwo!32704 r!7292) Nil!64464 s!2326 s!2326))))))

(assert (=> d!1928248 d!1928630))

(assert (=> d!1928238 d!1928406))

(declare-fun d!1928632 () Bool)

(declare-fun c!1108111 () Bool)

(assert (=> d!1928632 (= c!1108111 (is-Nil!64465 lt!2334873))))

(declare-fun e!3750346 () (Set Context!10960))

(assert (=> d!1928632 (= (content!12015 lt!2334873) e!3750346)))

(declare-fun b!6155042 () Bool)

(assert (=> b!6155042 (= e!3750346 (as set.empty (Set Context!10960)))))

(declare-fun b!6155043 () Bool)

(assert (=> b!6155043 (= e!3750346 (set.union (set.insert (h!70913 lt!2334873) (as set.empty (Set Context!10960))) (content!12015 (t!378080 lt!2334873))))))

(assert (= (and d!1928632 c!1108111) b!6155042))

(assert (= (and d!1928632 (not c!1108111)) b!6155043))

(declare-fun m!6994056 () Bool)

(assert (=> b!6155043 m!6994056))

(declare-fun m!6994058 () Bool)

(assert (=> b!6155043 m!6994058))

(assert (=> b!6153845 d!1928632))

(declare-fun bs!1525686 () Bool)

(declare-fun d!1928634 () Bool)

(assert (= bs!1525686 (and d!1928634 d!1928394)))

(declare-fun lambda!335759 () Int)

(assert (=> bs!1525686 (= lambda!335759 lambda!335725)))

(declare-fun bs!1525687 () Bool)

(assert (= bs!1525687 (and d!1928634 d!1928456)))

(assert (=> bs!1525687 (= lambda!335759 lambda!335732)))

(declare-fun bs!1525688 () Bool)

(assert (= bs!1525688 (and d!1928634 d!1928392)))

(assert (=> bs!1525688 (= lambda!335759 lambda!335724)))

(declare-fun bs!1525689 () Bool)

(assert (= bs!1525689 (and d!1928634 d!1928426)))

(assert (=> bs!1525689 (= lambda!335759 lambda!335729)))

(declare-fun bs!1525690 () Bool)

(assert (= bs!1525690 (and d!1928634 d!1928510)))

(assert (=> bs!1525690 (= lambda!335759 lambda!335743)))

(declare-fun bs!1525691 () Bool)

(assert (= bs!1525691 (and d!1928634 d!1928562)))

(assert (=> bs!1525691 (= lambda!335759 lambda!335749)))

(declare-fun bs!1525692 () Bool)

(assert (= bs!1525692 (and d!1928634 d!1928412)))

(assert (=> bs!1525692 (= lambda!335759 lambda!335726)))

(declare-fun bs!1525693 () Bool)

(assert (= bs!1525693 (and d!1928634 d!1928528)))

(assert (=> bs!1525693 (= lambda!335759 lambda!335746)))

(assert (=> d!1928634 (= (nullableZipper!1877 (set.union lt!2334770 lt!2334751)) (exists!2442 (set.union lt!2334770 lt!2334751) lambda!335759))))

(declare-fun bs!1525694 () Bool)

(assert (= bs!1525694 d!1928634))

(declare-fun m!6994060 () Bool)

(assert (=> bs!1525694 m!6994060))

(assert (=> b!6153975 d!1928634))

(declare-fun d!1928636 () Bool)

(assert (=> d!1928636 (= (flatMap!1601 lt!2334764 lambda!335660) (choose!45740 lt!2334764 lambda!335660))))

(declare-fun bs!1525695 () Bool)

(assert (= bs!1525695 d!1928636))

(declare-fun m!6994062 () Bool)

(assert (=> bs!1525695 m!6994062))

(assert (=> d!1928176 d!1928636))

(declare-fun b!6155044 () Bool)

(declare-fun e!3750348 () Bool)

(declare-fun call!512228 () Bool)

(assert (=> b!6155044 (= e!3750348 call!512228)))

(declare-fun b!6155045 () Bool)

(declare-fun e!3750349 () Bool)

(declare-fun e!3750352 () Bool)

(assert (=> b!6155045 (= e!3750349 e!3750352)))

(declare-fun res!2549275 () Bool)

(assert (=> b!6155045 (=> (not res!2549275) (not e!3750352))))

(assert (=> b!6155045 (= res!2549275 (and (not (is-EmptyLang!16096 (h!70911 (exprs!5980 (h!70913 zl!343))))) (not (is-ElementMatch!16096 (h!70911 (exprs!5980 (h!70913 zl!343)))))))))

(declare-fun bm!512222 () Bool)

(declare-fun c!1108112 () Bool)

(assert (=> bm!512222 (= call!512228 (nullable!6089 (ite c!1108112 (regTwo!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regTwo!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))))))))

(declare-fun b!6155047 () Bool)

(declare-fun e!3750351 () Bool)

(declare-fun e!3750347 () Bool)

(assert (=> b!6155047 (= e!3750351 e!3750347)))

(assert (=> b!6155047 (= c!1108112 (is-Union!16096 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun bm!512223 () Bool)

(declare-fun call!512227 () Bool)

(assert (=> bm!512223 (= call!512227 (nullable!6089 (ite c!1108112 (regOne!32705 (h!70911 (exprs!5980 (h!70913 zl!343)))) (regOne!32704 (h!70911 (exprs!5980 (h!70913 zl!343)))))))))

(declare-fun b!6155048 () Bool)

(assert (=> b!6155048 (= e!3750347 e!3750348)))

(declare-fun res!2549274 () Bool)

(assert (=> b!6155048 (= res!2549274 call!512227)))

(assert (=> b!6155048 (=> (not res!2549274) (not e!3750348))))

(declare-fun d!1928638 () Bool)

(declare-fun res!2549272 () Bool)

(assert (=> d!1928638 (=> res!2549272 e!3750349)))

(assert (=> d!1928638 (= res!2549272 (is-EmptyExpr!16096 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(assert (=> d!1928638 (= (nullableFct!2053 (h!70911 (exprs!5980 (h!70913 zl!343)))) e!3750349)))

(declare-fun b!6155046 () Bool)

(declare-fun e!3750350 () Bool)

(assert (=> b!6155046 (= e!3750347 e!3750350)))

(declare-fun res!2549271 () Bool)

(assert (=> b!6155046 (= res!2549271 call!512227)))

(assert (=> b!6155046 (=> res!2549271 e!3750350)))

(declare-fun b!6155049 () Bool)

(assert (=> b!6155049 (= e!3750352 e!3750351)))

(declare-fun res!2549273 () Bool)

(assert (=> b!6155049 (=> res!2549273 e!3750351)))

(assert (=> b!6155049 (= res!2549273 (is-Star!16096 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun b!6155050 () Bool)

(assert (=> b!6155050 (= e!3750350 call!512228)))

(assert (= (and d!1928638 (not res!2549272)) b!6155045))

(assert (= (and b!6155045 res!2549275) b!6155049))

(assert (= (and b!6155049 (not res!2549273)) b!6155047))

(assert (= (and b!6155047 c!1108112) b!6155046))

(assert (= (and b!6155047 (not c!1108112)) b!6155048))

(assert (= (and b!6155046 (not res!2549271)) b!6155050))

(assert (= (and b!6155048 res!2549274) b!6155044))

(assert (= (or b!6155050 b!6155044) bm!512222))

(assert (= (or b!6155046 b!6155048) bm!512223))

(declare-fun m!6994064 () Bool)

(assert (=> bm!512222 m!6994064))

(declare-fun m!6994066 () Bool)

(assert (=> bm!512223 m!6994066))

(assert (=> d!1928226 d!1928638))

(declare-fun b!6155051 () Bool)

(declare-fun e!3750353 () Bool)

(assert (=> b!6155051 (= e!3750353 tp_is_empty!41445)))

(declare-fun b!6155052 () Bool)

(declare-fun tp!1718883 () Bool)

(declare-fun tp!1718881 () Bool)

(assert (=> b!6155052 (= e!3750353 (and tp!1718883 tp!1718881))))

(assert (=> b!6154137 (= tp!1718767 e!3750353)))

(declare-fun b!6155053 () Bool)

(declare-fun tp!1718879 () Bool)

(assert (=> b!6155053 (= e!3750353 tp!1718879)))

(declare-fun b!6155054 () Bool)

(declare-fun tp!1718882 () Bool)

(declare-fun tp!1718880 () Bool)

(assert (=> b!6155054 (= e!3750353 (and tp!1718882 tp!1718880))))

(assert (= (and b!6154137 (is-ElementMatch!16096 (reg!16425 (regTwo!32705 r!7292)))) b!6155051))

(assert (= (and b!6154137 (is-Concat!24941 (reg!16425 (regTwo!32705 r!7292)))) b!6155052))

(assert (= (and b!6154137 (is-Star!16096 (reg!16425 (regTwo!32705 r!7292)))) b!6155053))

(assert (= (and b!6154137 (is-Union!16096 (reg!16425 (regTwo!32705 r!7292)))) b!6155054))

(declare-fun b!6155055 () Bool)

(declare-fun e!3750354 () Bool)

(assert (=> b!6155055 (= e!3750354 tp_is_empty!41445)))

(declare-fun b!6155056 () Bool)

(declare-fun tp!1718888 () Bool)

(declare-fun tp!1718886 () Bool)

(assert (=> b!6155056 (= e!3750354 (and tp!1718888 tp!1718886))))

(assert (=> b!6154136 (= tp!1718771 e!3750354)))

(declare-fun b!6155057 () Bool)

(declare-fun tp!1718884 () Bool)

(assert (=> b!6155057 (= e!3750354 tp!1718884)))

(declare-fun b!6155058 () Bool)

(declare-fun tp!1718887 () Bool)

(declare-fun tp!1718885 () Bool)

(assert (=> b!6155058 (= e!3750354 (and tp!1718887 tp!1718885))))

(assert (= (and b!6154136 (is-ElementMatch!16096 (regOne!32704 (regTwo!32705 r!7292)))) b!6155055))

(assert (= (and b!6154136 (is-Concat!24941 (regOne!32704 (regTwo!32705 r!7292)))) b!6155056))

(assert (= (and b!6154136 (is-Star!16096 (regOne!32704 (regTwo!32705 r!7292)))) b!6155057))

(assert (= (and b!6154136 (is-Union!16096 (regOne!32704 (regTwo!32705 r!7292)))) b!6155058))

(declare-fun b!6155059 () Bool)

(declare-fun e!3750355 () Bool)

(assert (=> b!6155059 (= e!3750355 tp_is_empty!41445)))

(declare-fun b!6155060 () Bool)

(declare-fun tp!1718893 () Bool)

(declare-fun tp!1718891 () Bool)

(assert (=> b!6155060 (= e!3750355 (and tp!1718893 tp!1718891))))

(assert (=> b!6154136 (= tp!1718769 e!3750355)))

(declare-fun b!6155061 () Bool)

(declare-fun tp!1718889 () Bool)

(assert (=> b!6155061 (= e!3750355 tp!1718889)))

(declare-fun b!6155062 () Bool)

(declare-fun tp!1718892 () Bool)

(declare-fun tp!1718890 () Bool)

(assert (=> b!6155062 (= e!3750355 (and tp!1718892 tp!1718890))))

(assert (= (and b!6154136 (is-ElementMatch!16096 (regTwo!32704 (regTwo!32705 r!7292)))) b!6155059))

(assert (= (and b!6154136 (is-Concat!24941 (regTwo!32704 (regTwo!32705 r!7292)))) b!6155060))

(assert (= (and b!6154136 (is-Star!16096 (regTwo!32704 (regTwo!32705 r!7292)))) b!6155061))

(assert (= (and b!6154136 (is-Union!16096 (regTwo!32704 (regTwo!32705 r!7292)))) b!6155062))

(declare-fun b!6155063 () Bool)

(declare-fun e!3750356 () Bool)

(assert (=> b!6155063 (= e!3750356 tp_is_empty!41445)))

(declare-fun b!6155064 () Bool)

(declare-fun tp!1718898 () Bool)

(declare-fun tp!1718896 () Bool)

(assert (=> b!6155064 (= e!3750356 (and tp!1718898 tp!1718896))))

(assert (=> b!6154143 (= tp!1718776 e!3750356)))

(declare-fun b!6155065 () Bool)

(declare-fun tp!1718894 () Bool)

(assert (=> b!6155065 (= e!3750356 tp!1718894)))

(declare-fun b!6155066 () Bool)

(declare-fun tp!1718897 () Bool)

(declare-fun tp!1718895 () Bool)

(assert (=> b!6155066 (= e!3750356 (and tp!1718897 tp!1718895))))

(assert (= (and b!6154143 (is-ElementMatch!16096 (h!70911 (exprs!5980 setElem!41673)))) b!6155063))

(assert (= (and b!6154143 (is-Concat!24941 (h!70911 (exprs!5980 setElem!41673)))) b!6155064))

(assert (= (and b!6154143 (is-Star!16096 (h!70911 (exprs!5980 setElem!41673)))) b!6155065))

(assert (= (and b!6154143 (is-Union!16096 (h!70911 (exprs!5980 setElem!41673)))) b!6155066))

(declare-fun b!6155067 () Bool)

(declare-fun e!3750357 () Bool)

(declare-fun tp!1718899 () Bool)

(declare-fun tp!1718900 () Bool)

(assert (=> b!6155067 (= e!3750357 (and tp!1718899 tp!1718900))))

(assert (=> b!6154143 (= tp!1718777 e!3750357)))

(assert (= (and b!6154143 (is-Cons!64463 (t!378078 (exprs!5980 setElem!41673)))) b!6155067))

(declare-fun b!6155068 () Bool)

(declare-fun e!3750358 () Bool)

(assert (=> b!6155068 (= e!3750358 tp_is_empty!41445)))

(declare-fun b!6155069 () Bool)

(declare-fun tp!1718905 () Bool)

(declare-fun tp!1718903 () Bool)

(assert (=> b!6155069 (= e!3750358 (and tp!1718905 tp!1718903))))

(assert (=> b!6154130 (= tp!1718760 e!3750358)))

(declare-fun b!6155070 () Bool)

(declare-fun tp!1718901 () Bool)

(assert (=> b!6155070 (= e!3750358 tp!1718901)))

(declare-fun b!6155071 () Bool)

(declare-fun tp!1718904 () Bool)

(declare-fun tp!1718902 () Bool)

(assert (=> b!6155071 (= e!3750358 (and tp!1718904 tp!1718902))))

(assert (= (and b!6154130 (is-ElementMatch!16096 (regOne!32705 (reg!16425 r!7292)))) b!6155068))

(assert (= (and b!6154130 (is-Concat!24941 (regOne!32705 (reg!16425 r!7292)))) b!6155069))

(assert (= (and b!6154130 (is-Star!16096 (regOne!32705 (reg!16425 r!7292)))) b!6155070))

(assert (= (and b!6154130 (is-Union!16096 (regOne!32705 (reg!16425 r!7292)))) b!6155071))

(declare-fun b!6155072 () Bool)

(declare-fun e!3750359 () Bool)

(assert (=> b!6155072 (= e!3750359 tp_is_empty!41445)))

(declare-fun b!6155073 () Bool)

(declare-fun tp!1718910 () Bool)

(declare-fun tp!1718908 () Bool)

(assert (=> b!6155073 (= e!3750359 (and tp!1718910 tp!1718908))))

(assert (=> b!6154130 (= tp!1718758 e!3750359)))

(declare-fun b!6155074 () Bool)

(declare-fun tp!1718906 () Bool)

(assert (=> b!6155074 (= e!3750359 tp!1718906)))

(declare-fun b!6155075 () Bool)

(declare-fun tp!1718909 () Bool)

(declare-fun tp!1718907 () Bool)

(assert (=> b!6155075 (= e!3750359 (and tp!1718909 tp!1718907))))

(assert (= (and b!6154130 (is-ElementMatch!16096 (regTwo!32705 (reg!16425 r!7292)))) b!6155072))

(assert (= (and b!6154130 (is-Concat!24941 (regTwo!32705 (reg!16425 r!7292)))) b!6155073))

(assert (= (and b!6154130 (is-Star!16096 (regTwo!32705 (reg!16425 r!7292)))) b!6155074))

(assert (= (and b!6154130 (is-Union!16096 (regTwo!32705 (reg!16425 r!7292)))) b!6155075))

(declare-fun b!6155076 () Bool)

(declare-fun e!3750360 () Bool)

(assert (=> b!6155076 (= e!3750360 tp_is_empty!41445)))

(declare-fun b!6155077 () Bool)

(declare-fun tp!1718915 () Bool)

(declare-fun tp!1718913 () Bool)

(assert (=> b!6155077 (= e!3750360 (and tp!1718915 tp!1718913))))

(assert (=> b!6154138 (= tp!1718770 e!3750360)))

(declare-fun b!6155078 () Bool)

(declare-fun tp!1718911 () Bool)

(assert (=> b!6155078 (= e!3750360 tp!1718911)))

(declare-fun b!6155079 () Bool)

(declare-fun tp!1718914 () Bool)

(declare-fun tp!1718912 () Bool)

(assert (=> b!6155079 (= e!3750360 (and tp!1718914 tp!1718912))))

(assert (= (and b!6154138 (is-ElementMatch!16096 (regOne!32705 (regTwo!32705 r!7292)))) b!6155076))

(assert (= (and b!6154138 (is-Concat!24941 (regOne!32705 (regTwo!32705 r!7292)))) b!6155077))

(assert (= (and b!6154138 (is-Star!16096 (regOne!32705 (regTwo!32705 r!7292)))) b!6155078))

(assert (= (and b!6154138 (is-Union!16096 (regOne!32705 (regTwo!32705 r!7292)))) b!6155079))

(declare-fun b!6155080 () Bool)

(declare-fun e!3750361 () Bool)

(assert (=> b!6155080 (= e!3750361 tp_is_empty!41445)))

(declare-fun b!6155081 () Bool)

(declare-fun tp!1718920 () Bool)

(declare-fun tp!1718918 () Bool)

(assert (=> b!6155081 (= e!3750361 (and tp!1718920 tp!1718918))))

(assert (=> b!6154138 (= tp!1718768 e!3750361)))

(declare-fun b!6155082 () Bool)

(declare-fun tp!1718916 () Bool)

(assert (=> b!6155082 (= e!3750361 tp!1718916)))

(declare-fun b!6155083 () Bool)

(declare-fun tp!1718919 () Bool)

(declare-fun tp!1718917 () Bool)

(assert (=> b!6155083 (= e!3750361 (and tp!1718919 tp!1718917))))

(assert (= (and b!6154138 (is-ElementMatch!16096 (regTwo!32705 (regTwo!32705 r!7292)))) b!6155080))

(assert (= (and b!6154138 (is-Concat!24941 (regTwo!32705 (regTwo!32705 r!7292)))) b!6155081))

(assert (= (and b!6154138 (is-Star!16096 (regTwo!32705 (regTwo!32705 r!7292)))) b!6155082))

(assert (= (and b!6154138 (is-Union!16096 (regTwo!32705 (regTwo!32705 r!7292)))) b!6155083))

(declare-fun b!6155084 () Bool)

(declare-fun e!3750362 () Bool)

(assert (=> b!6155084 (= e!3750362 tp_is_empty!41445)))

(declare-fun b!6155085 () Bool)

(declare-fun tp!1718925 () Bool)

(declare-fun tp!1718923 () Bool)

(assert (=> b!6155085 (= e!3750362 (and tp!1718925 tp!1718923))))

(assert (=> b!6154129 (= tp!1718757 e!3750362)))

(declare-fun b!6155086 () Bool)

(declare-fun tp!1718921 () Bool)

(assert (=> b!6155086 (= e!3750362 tp!1718921)))

(declare-fun b!6155087 () Bool)

(declare-fun tp!1718924 () Bool)

(declare-fun tp!1718922 () Bool)

(assert (=> b!6155087 (= e!3750362 (and tp!1718924 tp!1718922))))

(assert (= (and b!6154129 (is-ElementMatch!16096 (reg!16425 (reg!16425 r!7292)))) b!6155084))

(assert (= (and b!6154129 (is-Concat!24941 (reg!16425 (reg!16425 r!7292)))) b!6155085))

(assert (= (and b!6154129 (is-Star!16096 (reg!16425 (reg!16425 r!7292)))) b!6155086))

(assert (= (and b!6154129 (is-Union!16096 (reg!16425 (reg!16425 r!7292)))) b!6155087))

(declare-fun b!6155088 () Bool)

(declare-fun e!3750363 () Bool)

(assert (=> b!6155088 (= e!3750363 tp_is_empty!41445)))

(declare-fun b!6155089 () Bool)

(declare-fun tp!1718930 () Bool)

(declare-fun tp!1718928 () Bool)

(assert (=> b!6155089 (= e!3750363 (and tp!1718930 tp!1718928))))

(assert (=> b!6154128 (= tp!1718761 e!3750363)))

(declare-fun b!6155090 () Bool)

(declare-fun tp!1718926 () Bool)

(assert (=> b!6155090 (= e!3750363 tp!1718926)))

(declare-fun b!6155091 () Bool)

(declare-fun tp!1718929 () Bool)

(declare-fun tp!1718927 () Bool)

(assert (=> b!6155091 (= e!3750363 (and tp!1718929 tp!1718927))))

(assert (= (and b!6154128 (is-ElementMatch!16096 (regOne!32704 (reg!16425 r!7292)))) b!6155088))

(assert (= (and b!6154128 (is-Concat!24941 (regOne!32704 (reg!16425 r!7292)))) b!6155089))

(assert (= (and b!6154128 (is-Star!16096 (regOne!32704 (reg!16425 r!7292)))) b!6155090))

(assert (= (and b!6154128 (is-Union!16096 (regOne!32704 (reg!16425 r!7292)))) b!6155091))

(declare-fun b!6155092 () Bool)

(declare-fun e!3750364 () Bool)

(assert (=> b!6155092 (= e!3750364 tp_is_empty!41445)))

(declare-fun b!6155093 () Bool)

(declare-fun tp!1718935 () Bool)

(declare-fun tp!1718933 () Bool)

(assert (=> b!6155093 (= e!3750364 (and tp!1718935 tp!1718933))))

(assert (=> b!6154128 (= tp!1718759 e!3750364)))

(declare-fun b!6155094 () Bool)

(declare-fun tp!1718931 () Bool)

(assert (=> b!6155094 (= e!3750364 tp!1718931)))

(declare-fun b!6155095 () Bool)

(declare-fun tp!1718934 () Bool)

(declare-fun tp!1718932 () Bool)

(assert (=> b!6155095 (= e!3750364 (and tp!1718934 tp!1718932))))

(assert (= (and b!6154128 (is-ElementMatch!16096 (regTwo!32704 (reg!16425 r!7292)))) b!6155092))

(assert (= (and b!6154128 (is-Concat!24941 (regTwo!32704 (reg!16425 r!7292)))) b!6155093))

(assert (= (and b!6154128 (is-Star!16096 (regTwo!32704 (reg!16425 r!7292)))) b!6155094))

(assert (= (and b!6154128 (is-Union!16096 (regTwo!32704 (reg!16425 r!7292)))) b!6155095))

(declare-fun b!6155096 () Bool)

(declare-fun e!3750365 () Bool)

(assert (=> b!6155096 (= e!3750365 tp_is_empty!41445)))

(declare-fun b!6155097 () Bool)

(declare-fun tp!1718940 () Bool)

(declare-fun tp!1718938 () Bool)

(assert (=> b!6155097 (= e!3750365 (and tp!1718940 tp!1718938))))

(assert (=> b!6154170 (= tp!1718803 e!3750365)))

(declare-fun b!6155098 () Bool)

(declare-fun tp!1718936 () Bool)

(assert (=> b!6155098 (= e!3750365 tp!1718936)))

(declare-fun b!6155099 () Bool)

(declare-fun tp!1718939 () Bool)

(declare-fun tp!1718937 () Bool)

(assert (=> b!6155099 (= e!3750365 (and tp!1718939 tp!1718937))))

(assert (= (and b!6154170 (is-ElementMatch!16096 (regOne!32705 (regTwo!32704 r!7292)))) b!6155096))

(assert (= (and b!6154170 (is-Concat!24941 (regOne!32705 (regTwo!32704 r!7292)))) b!6155097))

(assert (= (and b!6154170 (is-Star!16096 (regOne!32705 (regTwo!32704 r!7292)))) b!6155098))

(assert (= (and b!6154170 (is-Union!16096 (regOne!32705 (regTwo!32704 r!7292)))) b!6155099))

(declare-fun b!6155100 () Bool)

(declare-fun e!3750366 () Bool)

(assert (=> b!6155100 (= e!3750366 tp_is_empty!41445)))

(declare-fun b!6155101 () Bool)

(declare-fun tp!1718945 () Bool)

(declare-fun tp!1718943 () Bool)

(assert (=> b!6155101 (= e!3750366 (and tp!1718945 tp!1718943))))

(assert (=> b!6154170 (= tp!1718801 e!3750366)))

(declare-fun b!6155102 () Bool)

(declare-fun tp!1718941 () Bool)

(assert (=> b!6155102 (= e!3750366 tp!1718941)))

(declare-fun b!6155103 () Bool)

(declare-fun tp!1718944 () Bool)

(declare-fun tp!1718942 () Bool)

(assert (=> b!6155103 (= e!3750366 (and tp!1718944 tp!1718942))))

(assert (= (and b!6154170 (is-ElementMatch!16096 (regTwo!32705 (regTwo!32704 r!7292)))) b!6155100))

(assert (= (and b!6154170 (is-Concat!24941 (regTwo!32705 (regTwo!32704 r!7292)))) b!6155101))

(assert (= (and b!6154170 (is-Star!16096 (regTwo!32705 (regTwo!32704 r!7292)))) b!6155102))

(assert (= (and b!6154170 (is-Union!16096 (regTwo!32705 (regTwo!32704 r!7292)))) b!6155103))

(declare-fun b!6155104 () Bool)

(declare-fun e!3750367 () Bool)

(assert (=> b!6155104 (= e!3750367 tp_is_empty!41445)))

(declare-fun b!6155105 () Bool)

(declare-fun tp!1718950 () Bool)

(declare-fun tp!1718948 () Bool)

(assert (=> b!6155105 (= e!3750367 (and tp!1718950 tp!1718948))))

(assert (=> b!6154169 (= tp!1718800 e!3750367)))

(declare-fun b!6155106 () Bool)

(declare-fun tp!1718946 () Bool)

(assert (=> b!6155106 (= e!3750367 tp!1718946)))

(declare-fun b!6155107 () Bool)

(declare-fun tp!1718949 () Bool)

(declare-fun tp!1718947 () Bool)

(assert (=> b!6155107 (= e!3750367 (and tp!1718949 tp!1718947))))

(assert (= (and b!6154169 (is-ElementMatch!16096 (reg!16425 (regTwo!32704 r!7292)))) b!6155104))

(assert (= (and b!6154169 (is-Concat!24941 (reg!16425 (regTwo!32704 r!7292)))) b!6155105))

(assert (= (and b!6154169 (is-Star!16096 (reg!16425 (regTwo!32704 r!7292)))) b!6155106))

(assert (= (and b!6154169 (is-Union!16096 (reg!16425 (regTwo!32704 r!7292)))) b!6155107))

(declare-fun b!6155108 () Bool)

(declare-fun e!3750368 () Bool)

(declare-fun tp!1718951 () Bool)

(declare-fun tp!1718952 () Bool)

(assert (=> b!6155108 (= e!3750368 (and tp!1718951 tp!1718952))))

(assert (=> b!6154162 (= tp!1718793 e!3750368)))

(assert (= (and b!6154162 (is-Cons!64463 (exprs!5980 (h!70913 (t!378080 zl!343))))) b!6155108))

(declare-fun b!6155110 () Bool)

(declare-fun e!3750370 () Bool)

(declare-fun tp!1718953 () Bool)

(assert (=> b!6155110 (= e!3750370 tp!1718953)))

(declare-fun b!6155109 () Bool)

(declare-fun e!3750369 () Bool)

(declare-fun tp!1718954 () Bool)

(assert (=> b!6155109 (= e!3750369 (and (inv!83488 (h!70913 (t!378080 (t!378080 zl!343)))) e!3750370 tp!1718954))))

(assert (=> b!6154161 (= tp!1718794 e!3750369)))

(assert (= b!6155109 b!6155110))

(assert (= (and b!6154161 (is-Cons!64465 (t!378080 (t!378080 zl!343)))) b!6155109))

(declare-fun m!6994068 () Bool)

(assert (=> b!6155109 m!6994068))

(declare-fun b!6155111 () Bool)

(declare-fun e!3750371 () Bool)

(assert (=> b!6155111 (= e!3750371 tp_is_empty!41445)))

(declare-fun b!6155112 () Bool)

(declare-fun tp!1718959 () Bool)

(declare-fun tp!1718957 () Bool)

(assert (=> b!6155112 (= e!3750371 (and tp!1718959 tp!1718957))))

(assert (=> b!6154132 (= tp!1718766 e!3750371)))

(declare-fun b!6155113 () Bool)

(declare-fun tp!1718955 () Bool)

(assert (=> b!6155113 (= e!3750371 tp!1718955)))

(declare-fun b!6155114 () Bool)

(declare-fun tp!1718958 () Bool)

(declare-fun tp!1718956 () Bool)

(assert (=> b!6155114 (= e!3750371 (and tp!1718958 tp!1718956))))

(assert (= (and b!6154132 (is-ElementMatch!16096 (regOne!32704 (regOne!32705 r!7292)))) b!6155111))

(assert (= (and b!6154132 (is-Concat!24941 (regOne!32704 (regOne!32705 r!7292)))) b!6155112))

(assert (= (and b!6154132 (is-Star!16096 (regOne!32704 (regOne!32705 r!7292)))) b!6155113))

(assert (= (and b!6154132 (is-Union!16096 (regOne!32704 (regOne!32705 r!7292)))) b!6155114))

(declare-fun b!6155115 () Bool)

(declare-fun e!3750372 () Bool)

(assert (=> b!6155115 (= e!3750372 tp_is_empty!41445)))

(declare-fun b!6155116 () Bool)

(declare-fun tp!1718964 () Bool)

(declare-fun tp!1718962 () Bool)

(assert (=> b!6155116 (= e!3750372 (and tp!1718964 tp!1718962))))

(assert (=> b!6154132 (= tp!1718764 e!3750372)))

(declare-fun b!6155117 () Bool)

(declare-fun tp!1718960 () Bool)

(assert (=> b!6155117 (= e!3750372 tp!1718960)))

(declare-fun b!6155118 () Bool)

(declare-fun tp!1718963 () Bool)

(declare-fun tp!1718961 () Bool)

(assert (=> b!6155118 (= e!3750372 (and tp!1718963 tp!1718961))))

(assert (= (and b!6154132 (is-ElementMatch!16096 (regTwo!32704 (regOne!32705 r!7292)))) b!6155115))

(assert (= (and b!6154132 (is-Concat!24941 (regTwo!32704 (regOne!32705 r!7292)))) b!6155116))

(assert (= (and b!6154132 (is-Star!16096 (regTwo!32704 (regOne!32705 r!7292)))) b!6155117))

(assert (= (and b!6154132 (is-Union!16096 (regTwo!32704 (regOne!32705 r!7292)))) b!6155118))

(declare-fun b!6155119 () Bool)

(declare-fun e!3750373 () Bool)

(assert (=> b!6155119 (= e!3750373 tp_is_empty!41445)))

(declare-fun b!6155120 () Bool)

(declare-fun tp!1718969 () Bool)

(declare-fun tp!1718967 () Bool)

(assert (=> b!6155120 (= e!3750373 (and tp!1718969 tp!1718967))))

(assert (=> b!6154168 (= tp!1718804 e!3750373)))

(declare-fun b!6155121 () Bool)

(declare-fun tp!1718965 () Bool)

(assert (=> b!6155121 (= e!3750373 tp!1718965)))

(declare-fun b!6155122 () Bool)

(declare-fun tp!1718968 () Bool)

(declare-fun tp!1718966 () Bool)

(assert (=> b!6155122 (= e!3750373 (and tp!1718968 tp!1718966))))

(assert (= (and b!6154168 (is-ElementMatch!16096 (regOne!32704 (regTwo!32704 r!7292)))) b!6155119))

(assert (= (and b!6154168 (is-Concat!24941 (regOne!32704 (regTwo!32704 r!7292)))) b!6155120))

(assert (= (and b!6154168 (is-Star!16096 (regOne!32704 (regTwo!32704 r!7292)))) b!6155121))

(assert (= (and b!6154168 (is-Union!16096 (regOne!32704 (regTwo!32704 r!7292)))) b!6155122))

(declare-fun b!6155123 () Bool)

(declare-fun e!3750374 () Bool)

(assert (=> b!6155123 (= e!3750374 tp_is_empty!41445)))

(declare-fun b!6155124 () Bool)

(declare-fun tp!1718974 () Bool)

(declare-fun tp!1718972 () Bool)

(assert (=> b!6155124 (= e!3750374 (and tp!1718974 tp!1718972))))

(assert (=> b!6154168 (= tp!1718802 e!3750374)))

(declare-fun b!6155125 () Bool)

(declare-fun tp!1718970 () Bool)

(assert (=> b!6155125 (= e!3750374 tp!1718970)))

(declare-fun b!6155126 () Bool)

(declare-fun tp!1718973 () Bool)

(declare-fun tp!1718971 () Bool)

(assert (=> b!6155126 (= e!3750374 (and tp!1718973 tp!1718971))))

(assert (= (and b!6154168 (is-ElementMatch!16096 (regTwo!32704 (regTwo!32704 r!7292)))) b!6155123))

(assert (= (and b!6154168 (is-Concat!24941 (regTwo!32704 (regTwo!32704 r!7292)))) b!6155124))

(assert (= (and b!6154168 (is-Star!16096 (regTwo!32704 (regTwo!32704 r!7292)))) b!6155125))

(assert (= (and b!6154168 (is-Union!16096 (regTwo!32704 (regTwo!32704 r!7292)))) b!6155126))

(declare-fun b!6155127 () Bool)

(declare-fun e!3750375 () Bool)

(declare-fun tp!1718975 () Bool)

(declare-fun tp!1718976 () Bool)

(assert (=> b!6155127 (= e!3750375 (and tp!1718975 tp!1718976))))

(assert (=> b!6154148 (= tp!1718783 e!3750375)))

(assert (= (and b!6154148 (is-Cons!64463 (exprs!5980 setElem!41679))) b!6155127))

(declare-fun b!6155128 () Bool)

(declare-fun e!3750376 () Bool)

(assert (=> b!6155128 (= e!3750376 tp_is_empty!41445)))

(declare-fun b!6155129 () Bool)

(declare-fun tp!1718981 () Bool)

(declare-fun tp!1718979 () Bool)

(assert (=> b!6155129 (= e!3750376 (and tp!1718981 tp!1718979))))

(assert (=> b!6154134 (= tp!1718765 e!3750376)))

(declare-fun b!6155130 () Bool)

(declare-fun tp!1718977 () Bool)

(assert (=> b!6155130 (= e!3750376 tp!1718977)))

(declare-fun b!6155131 () Bool)

(declare-fun tp!1718980 () Bool)

(declare-fun tp!1718978 () Bool)

(assert (=> b!6155131 (= e!3750376 (and tp!1718980 tp!1718978))))

(assert (= (and b!6154134 (is-ElementMatch!16096 (regOne!32705 (regOne!32705 r!7292)))) b!6155128))

(assert (= (and b!6154134 (is-Concat!24941 (regOne!32705 (regOne!32705 r!7292)))) b!6155129))

(assert (= (and b!6154134 (is-Star!16096 (regOne!32705 (regOne!32705 r!7292)))) b!6155130))

(assert (= (and b!6154134 (is-Union!16096 (regOne!32705 (regOne!32705 r!7292)))) b!6155131))

(declare-fun b!6155132 () Bool)

(declare-fun e!3750377 () Bool)

(assert (=> b!6155132 (= e!3750377 tp_is_empty!41445)))

(declare-fun b!6155133 () Bool)

(declare-fun tp!1718986 () Bool)

(declare-fun tp!1718984 () Bool)

(assert (=> b!6155133 (= e!3750377 (and tp!1718986 tp!1718984))))

(assert (=> b!6154134 (= tp!1718763 e!3750377)))

(declare-fun b!6155134 () Bool)

(declare-fun tp!1718982 () Bool)

(assert (=> b!6155134 (= e!3750377 tp!1718982)))

(declare-fun b!6155135 () Bool)

(declare-fun tp!1718985 () Bool)

(declare-fun tp!1718983 () Bool)

(assert (=> b!6155135 (= e!3750377 (and tp!1718985 tp!1718983))))

(assert (= (and b!6154134 (is-ElementMatch!16096 (regTwo!32705 (regOne!32705 r!7292)))) b!6155132))

(assert (= (and b!6154134 (is-Concat!24941 (regTwo!32705 (regOne!32705 r!7292)))) b!6155133))

(assert (= (and b!6154134 (is-Star!16096 (regTwo!32705 (regOne!32705 r!7292)))) b!6155134))

(assert (= (and b!6154134 (is-Union!16096 (regTwo!32705 (regOne!32705 r!7292)))) b!6155135))

(declare-fun b!6155136 () Bool)

(declare-fun e!3750378 () Bool)

(assert (=> b!6155136 (= e!3750378 tp_is_empty!41445)))

(declare-fun b!6155137 () Bool)

(declare-fun tp!1718991 () Bool)

(declare-fun tp!1718989 () Bool)

(assert (=> b!6155137 (= e!3750378 (and tp!1718991 tp!1718989))))

(assert (=> b!6154154 (= tp!1718787 e!3750378)))

(declare-fun b!6155138 () Bool)

(declare-fun tp!1718987 () Bool)

(assert (=> b!6155138 (= e!3750378 tp!1718987)))

(declare-fun b!6155139 () Bool)

(declare-fun tp!1718990 () Bool)

(declare-fun tp!1718988 () Bool)

(assert (=> b!6155139 (= e!3750378 (and tp!1718990 tp!1718988))))

(assert (= (and b!6154154 (is-ElementMatch!16096 (h!70911 (exprs!5980 (h!70913 zl!343))))) b!6155136))

(assert (= (and b!6154154 (is-Concat!24941 (h!70911 (exprs!5980 (h!70913 zl!343))))) b!6155137))

(assert (= (and b!6154154 (is-Star!16096 (h!70911 (exprs!5980 (h!70913 zl!343))))) b!6155138))

(assert (= (and b!6154154 (is-Union!16096 (h!70911 (exprs!5980 (h!70913 zl!343))))) b!6155139))

(declare-fun b!6155140 () Bool)

(declare-fun e!3750379 () Bool)

(declare-fun tp!1718992 () Bool)

(declare-fun tp!1718993 () Bool)

(assert (=> b!6155140 (= e!3750379 (and tp!1718992 tp!1718993))))

(assert (=> b!6154154 (= tp!1718788 e!3750379)))

(assert (= (and b!6154154 (is-Cons!64463 (t!378078 (exprs!5980 (h!70913 zl!343))))) b!6155140))

(declare-fun condSetEmpty!41688 () Bool)

(assert (=> setNonEmpty!41679 (= condSetEmpty!41688 (= setRest!41679 (as set.empty (Set Context!10960))))))

(declare-fun setRes!41688 () Bool)

(assert (=> setNonEmpty!41679 (= tp!1718782 setRes!41688)))

(declare-fun setIsEmpty!41688 () Bool)

(assert (=> setIsEmpty!41688 setRes!41688))

(declare-fun tp!1718994 () Bool)

(declare-fun setNonEmpty!41688 () Bool)

(declare-fun e!3750380 () Bool)

(declare-fun setElem!41688 () Context!10960)

(assert (=> setNonEmpty!41688 (= setRes!41688 (and tp!1718994 (inv!83488 setElem!41688) e!3750380))))

(declare-fun setRest!41688 () (Set Context!10960))

(assert (=> setNonEmpty!41688 (= setRest!41679 (set.union (set.insert setElem!41688 (as set.empty (Set Context!10960))) setRest!41688))))

(declare-fun b!6155141 () Bool)

(declare-fun tp!1718995 () Bool)

(assert (=> b!6155141 (= e!3750380 tp!1718995)))

(assert (= (and setNonEmpty!41679 condSetEmpty!41688) setIsEmpty!41688))

(assert (= (and setNonEmpty!41679 (not condSetEmpty!41688)) setNonEmpty!41688))

(assert (= setNonEmpty!41688 b!6155141))

(declare-fun m!6994070 () Bool)

(assert (=> setNonEmpty!41688 m!6994070))

(declare-fun b!6155142 () Bool)

(declare-fun e!3750381 () Bool)

(assert (=> b!6155142 (= e!3750381 tp_is_empty!41445)))

(declare-fun b!6155143 () Bool)

(declare-fun tp!1719000 () Bool)

(declare-fun tp!1718998 () Bool)

(assert (=> b!6155143 (= e!3750381 (and tp!1719000 tp!1718998))))

(assert (=> b!6154133 (= tp!1718762 e!3750381)))

(declare-fun b!6155144 () Bool)

(declare-fun tp!1718996 () Bool)

(assert (=> b!6155144 (= e!3750381 tp!1718996)))

(declare-fun b!6155145 () Bool)

(declare-fun tp!1718999 () Bool)

(declare-fun tp!1718997 () Bool)

(assert (=> b!6155145 (= e!3750381 (and tp!1718999 tp!1718997))))

(assert (= (and b!6154133 (is-ElementMatch!16096 (reg!16425 (regOne!32705 r!7292)))) b!6155142))

(assert (= (and b!6154133 (is-Concat!24941 (reg!16425 (regOne!32705 r!7292)))) b!6155143))

(assert (= (and b!6154133 (is-Star!16096 (reg!16425 (regOne!32705 r!7292)))) b!6155144))

(assert (= (and b!6154133 (is-Union!16096 (reg!16425 (regOne!32705 r!7292)))) b!6155145))

(declare-fun b!6155146 () Bool)

(declare-fun e!3750382 () Bool)

(assert (=> b!6155146 (= e!3750382 tp_is_empty!41445)))

(declare-fun b!6155147 () Bool)

(declare-fun tp!1719005 () Bool)

(declare-fun tp!1719003 () Bool)

(assert (=> b!6155147 (= e!3750382 (and tp!1719005 tp!1719003))))

(assert (=> b!6154166 (= tp!1718798 e!3750382)))

(declare-fun b!6155148 () Bool)

(declare-fun tp!1719001 () Bool)

(assert (=> b!6155148 (= e!3750382 tp!1719001)))

(declare-fun b!6155149 () Bool)

(declare-fun tp!1719004 () Bool)

(declare-fun tp!1719002 () Bool)

(assert (=> b!6155149 (= e!3750382 (and tp!1719004 tp!1719002))))

(assert (= (and b!6154166 (is-ElementMatch!16096 (regOne!32705 (regOne!32704 r!7292)))) b!6155146))

(assert (= (and b!6154166 (is-Concat!24941 (regOne!32705 (regOne!32704 r!7292)))) b!6155147))

(assert (= (and b!6154166 (is-Star!16096 (regOne!32705 (regOne!32704 r!7292)))) b!6155148))

(assert (= (and b!6154166 (is-Union!16096 (regOne!32705 (regOne!32704 r!7292)))) b!6155149))

(declare-fun b!6155150 () Bool)

(declare-fun e!3750383 () Bool)

(assert (=> b!6155150 (= e!3750383 tp_is_empty!41445)))

(declare-fun b!6155151 () Bool)

(declare-fun tp!1719010 () Bool)

(declare-fun tp!1719008 () Bool)

(assert (=> b!6155151 (= e!3750383 (and tp!1719010 tp!1719008))))

(assert (=> b!6154166 (= tp!1718796 e!3750383)))

(declare-fun b!6155152 () Bool)

(declare-fun tp!1719006 () Bool)

(assert (=> b!6155152 (= e!3750383 tp!1719006)))

(declare-fun b!6155153 () Bool)

(declare-fun tp!1719009 () Bool)

(declare-fun tp!1719007 () Bool)

(assert (=> b!6155153 (= e!3750383 (and tp!1719009 tp!1719007))))

(assert (= (and b!6154166 (is-ElementMatch!16096 (regTwo!32705 (regOne!32704 r!7292)))) b!6155150))

(assert (= (and b!6154166 (is-Concat!24941 (regTwo!32705 (regOne!32704 r!7292)))) b!6155151))

(assert (= (and b!6154166 (is-Star!16096 (regTwo!32705 (regOne!32704 r!7292)))) b!6155152))

(assert (= (and b!6154166 (is-Union!16096 (regTwo!32705 (regOne!32704 r!7292)))) b!6155153))

(declare-fun b!6155154 () Bool)

(declare-fun e!3750384 () Bool)

(assert (=> b!6155154 (= e!3750384 tp_is_empty!41445)))

(declare-fun b!6155155 () Bool)

(declare-fun tp!1719015 () Bool)

(declare-fun tp!1719013 () Bool)

(assert (=> b!6155155 (= e!3750384 (and tp!1719015 tp!1719013))))

(assert (=> b!6154165 (= tp!1718795 e!3750384)))

(declare-fun b!6155156 () Bool)

(declare-fun tp!1719011 () Bool)

(assert (=> b!6155156 (= e!3750384 tp!1719011)))

(declare-fun b!6155157 () Bool)

(declare-fun tp!1719014 () Bool)

(declare-fun tp!1719012 () Bool)

(assert (=> b!6155157 (= e!3750384 (and tp!1719014 tp!1719012))))

(assert (= (and b!6154165 (is-ElementMatch!16096 (reg!16425 (regOne!32704 r!7292)))) b!6155154))

(assert (= (and b!6154165 (is-Concat!24941 (reg!16425 (regOne!32704 r!7292)))) b!6155155))

(assert (= (and b!6154165 (is-Star!16096 (reg!16425 (regOne!32704 r!7292)))) b!6155156))

(assert (= (and b!6154165 (is-Union!16096 (reg!16425 (regOne!32704 r!7292)))) b!6155157))

(declare-fun b!6155158 () Bool)

(declare-fun e!3750385 () Bool)

(assert (=> b!6155158 (= e!3750385 tp_is_empty!41445)))

(declare-fun b!6155159 () Bool)

(declare-fun tp!1719020 () Bool)

(declare-fun tp!1719018 () Bool)

(assert (=> b!6155159 (= e!3750385 (and tp!1719020 tp!1719018))))

(assert (=> b!6154164 (= tp!1718799 e!3750385)))

(declare-fun b!6155160 () Bool)

(declare-fun tp!1719016 () Bool)

(assert (=> b!6155160 (= e!3750385 tp!1719016)))

(declare-fun b!6155161 () Bool)

(declare-fun tp!1719019 () Bool)

(declare-fun tp!1719017 () Bool)

(assert (=> b!6155161 (= e!3750385 (and tp!1719019 tp!1719017))))

(assert (= (and b!6154164 (is-ElementMatch!16096 (regOne!32704 (regOne!32704 r!7292)))) b!6155158))

(assert (= (and b!6154164 (is-Concat!24941 (regOne!32704 (regOne!32704 r!7292)))) b!6155159))

(assert (= (and b!6154164 (is-Star!16096 (regOne!32704 (regOne!32704 r!7292)))) b!6155160))

(assert (= (and b!6154164 (is-Union!16096 (regOne!32704 (regOne!32704 r!7292)))) b!6155161))

(declare-fun b!6155162 () Bool)

(declare-fun e!3750386 () Bool)

(assert (=> b!6155162 (= e!3750386 tp_is_empty!41445)))

(declare-fun b!6155163 () Bool)

(declare-fun tp!1719025 () Bool)

(declare-fun tp!1719023 () Bool)

(assert (=> b!6155163 (= e!3750386 (and tp!1719025 tp!1719023))))

(assert (=> b!6154164 (= tp!1718797 e!3750386)))

(declare-fun b!6155164 () Bool)

(declare-fun tp!1719021 () Bool)

(assert (=> b!6155164 (= e!3750386 tp!1719021)))

(declare-fun b!6155165 () Bool)

(declare-fun tp!1719024 () Bool)

(declare-fun tp!1719022 () Bool)

(assert (=> b!6155165 (= e!3750386 (and tp!1719024 tp!1719022))))

(assert (= (and b!6154164 (is-ElementMatch!16096 (regTwo!32704 (regOne!32704 r!7292)))) b!6155162))

(assert (= (and b!6154164 (is-Concat!24941 (regTwo!32704 (regOne!32704 r!7292)))) b!6155163))

(assert (= (and b!6154164 (is-Star!16096 (regTwo!32704 (regOne!32704 r!7292)))) b!6155164))

(assert (= (and b!6154164 (is-Union!16096 (regTwo!32704 (regOne!32704 r!7292)))) b!6155165))

(declare-fun b!6155166 () Bool)

(declare-fun e!3750387 () Bool)

(declare-fun tp!1719026 () Bool)

(assert (=> b!6155166 (= e!3750387 (and tp_is_empty!41445 tp!1719026))))

(assert (=> b!6154153 (= tp!1718786 e!3750387)))

(assert (= (and b!6154153 (is-Cons!64464 (t!378079 (t!378079 s!2326)))) b!6155166))

(declare-fun b_lambda!234283 () Bool)

(assert (= b_lambda!234277 (or d!1928206 b_lambda!234283)))

(declare-fun bs!1525696 () Bool)

(declare-fun d!1928640 () Bool)

(assert (= bs!1525696 (and d!1928640 d!1928206)))

(assert (=> bs!1525696 (= (dynLambda!25415 lambda!335679 (h!70911 lt!2334888)) (validRegex!7832 (h!70911 lt!2334888)))))

(declare-fun m!6994072 () Bool)

(assert (=> bs!1525696 m!6994072))

(assert (=> b!6154922 d!1928640))

(declare-fun b_lambda!234285 () Bool)

(assert (= b_lambda!234281 (or b!6153643 b_lambda!234285)))

(assert (=> d!1928602 d!1928262))

(declare-fun b_lambda!234287 () Bool)

(assert (= b_lambda!234267 (or b!6153643 b_lambda!234287)))

(assert (=> d!1928418 d!1928260))

(declare-fun b_lambda!234289 () Bool)

(assert (= b_lambda!234271 (or d!1928204 b_lambda!234289)))

(declare-fun bs!1525697 () Bool)

(declare-fun d!1928642 () Bool)

(assert (= bs!1525697 (and d!1928642 d!1928204)))

(assert (=> bs!1525697 (= (dynLambda!25415 lambda!335676 (h!70911 (unfocusZipperList!1517 zl!343))) (validRegex!7832 (h!70911 (unfocusZipperList!1517 zl!343))))))

(declare-fun m!6994074 () Bool)

(assert (=> bs!1525697 m!6994074))

(assert (=> b!6154768 d!1928642))

(declare-fun b_lambda!234291 () Bool)

(assert (= b_lambda!234275 (or d!1928218 b_lambda!234291)))

(declare-fun bs!1525698 () Bool)

(declare-fun d!1928644 () Bool)

(assert (= bs!1525698 (and d!1928644 d!1928218)))

(assert (=> bs!1525698 (= (dynLambda!25415 lambda!335680 (h!70911 (exprs!5980 lt!2334763))) (validRegex!7832 (h!70911 (exprs!5980 lt!2334763))))))

(declare-fun m!6994076 () Bool)

(assert (=> bs!1525698 m!6994076))

(assert (=> b!6154920 d!1928644))

(declare-fun b_lambda!234293 () Bool)

(assert (= b_lambda!234279 (or b!6153643 b_lambda!234293)))

(assert (=> d!1928580 d!1928264))

(declare-fun b_lambda!234295 () Bool)

(assert (= b_lambda!234273 (or d!1928190 b_lambda!234295)))

(declare-fun bs!1525699 () Bool)

(declare-fun d!1928646 () Bool)

(assert (= bs!1525699 (and d!1928646 d!1928190)))

(assert (=> bs!1525699 (= (dynLambda!25415 lambda!335666 (h!70911 (exprs!5980 setElem!41673))) (validRegex!7832 (h!70911 (exprs!5980 setElem!41673))))))

(declare-fun m!6994078 () Bool)

(assert (=> bs!1525699 m!6994078))

(assert (=> b!6154869 d!1928646))

(declare-fun b_lambda!234297 () Bool)

(assert (= b_lambda!234265 (or d!1928186 b_lambda!234297)))

(declare-fun bs!1525700 () Bool)

(declare-fun d!1928648 () Bool)

(assert (= bs!1525700 (and d!1928648 d!1928186)))

(assert (=> bs!1525700 (= (dynLambda!25415 lambda!335663 (h!70911 (exprs!5980 (h!70913 zl!343)))) (validRegex!7832 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(declare-fun m!6994080 () Bool)

(assert (=> bs!1525700 m!6994080))

(assert (=> b!6154605 d!1928648))

(declare-fun b_lambda!234299 () Bool)

(assert (= b_lambda!234269 (or d!1928194 b_lambda!234299)))

(declare-fun bs!1525701 () Bool)

(declare-fun d!1928650 () Bool)

(assert (= bs!1525701 (and d!1928650 d!1928194)))

(assert (=> bs!1525701 (= (dynLambda!25415 lambda!335667 (h!70911 (exprs!5980 (h!70913 zl!343)))) (validRegex!7832 (h!70911 (exprs!5980 (h!70913 zl!343)))))))

(assert (=> bs!1525701 m!6994080))

(assert (=> b!6154746 d!1928650))

(push 1)

(assert (not bm!512135))

(assert (not b!6155099))

(assert (not d!1928382))

(assert (not b!6154898))

(assert (not d!1928416))

(assert (not b!6155101))

(assert (not b!6154736))

(assert (not b!6155121))

(assert (not d!1928532))

(assert (not b!6155109))

(assert (not b!6154824))

(assert (not b!6154992))

(assert (not b!6154942))

(assert (not b!6155151))

(assert (not b!6154652))

(assert (not bs!1525701))

(assert (not b!6154791))

(assert (not d!1928426))

(assert (not b!6154612))

(assert (not bm!512108))

(assert (not bm!512177))

(assert (not b!6155116))

(assert (not d!1928400))

(assert (not b!6155091))

(assert (not bm!512123))

(assert (not b!6155148))

(assert (not d!1928424))

(assert (not b!6155126))

(assert (not d!1928442))

(assert (not b!6154890))

(assert (not b!6155138))

(assert (not b!6154689))

(assert (not b!6154889))

(assert (not b!6155098))

(assert (not bm!512106))

(assert (not d!1928470))

(assert (not b!6155129))

(assert (not b_lambda!234283))

(assert (not d!1928494))

(assert (not b!6155065))

(assert (not d!1928582))

(assert (not d!1928480))

(assert (not d!1928458))

(assert (not b_lambda!234299))

(assert (not b!6154758))

(assert (not d!1928460))

(assert (not b!6154704))

(assert (not b!6154998))

(assert (not b!6154632))

(assert (not bm!512189))

(assert (not b!6155077))

(assert tp_is_empty!41445)

(assert (not b!6154901))

(assert (not b!6155134))

(assert (not bm!512119))

(assert (not b!6154638))

(assert (not b!6154905))

(assert (not bm!512128))

(assert (not bm!512212))

(assert (not d!1928466))

(assert (not b!6155125))

(assert (not b!6155086))

(assert (not b!6154953))

(assert (not b!6154879))

(assert (not bs!1525700))

(assert (not b!6154860))

(assert (not d!1928432))

(assert (not b!6155107))

(assert (not b!6154767))

(assert (not b!6154829))

(assert (not b!6155081))

(assert (not d!1928562))

(assert (not b!6154848))

(assert (not b!6154728))

(assert (not b!6154743))

(assert (not b!6154707))

(assert (not b!6155022))

(assert (not b!6155112))

(assert (not bm!512137))

(assert (not b!6155114))

(assert (not d!1928412))

(assert (not b!6154935))

(assert (not b!6154630))

(assert (not b!6154618))

(assert (not b!6154747))

(assert (not bm!512159))

(assert (not b!6154644))

(assert (not bm!512211))

(assert (not b!6155083))

(assert (not b!6154730))

(assert (not bm!512131))

(assert (not b!6155035))

(assert (not b!6154937))

(assert (not b!6155011))

(assert (not bm!512161))

(assert (not d!1928430))

(assert (not b!6154641))

(assert (not setNonEmpty!41688))

(assert (not b!6154952))

(assert (not b!6155067))

(assert (not b!6155053))

(assert (not b!6154690))

(assert (not b!6154943))

(assert (not b!6154609))

(assert (not d!1928636))

(assert (not b!6154651))

(assert (not b!6155105))

(assert (not b!6154903))

(assert (not b!6155155))

(assert (not b!6154606))

(assert (not b!6154870))

(assert (not bm!512190))

(assert (not d!1928596))

(assert (not b!6155166))

(assert (not b!6155160))

(assert (not b!6155144))

(assert (not setNonEmpty!41686))

(assert (not b!6155152))

(assert (not bm!512183))

(assert (not b!6155137))

(assert (not d!1928472))

(assert (not b!6154916))

(assert (not b!6154708))

(assert (not bm!512153))

(assert (not b!6154894))

(assert (not b!6155108))

(assert (not b!6154827))

(assert (not b!6154923))

(assert (not bm!512185))

(assert (not b!6154999))

(assert (not b!6155139))

(assert (not d!1928446))

(assert (not d!1928594))

(assert (not b!6154647))

(assert (not b!6155054))

(assert (not b!6155133))

(assert (not b!6155157))

(assert (not b!6155141))

(assert (not b!6154729))

(assert (not b!6154686))

(assert (not b!6154600))

(assert (not b!6155024))

(assert (not bm!512112))

(assert (not bm!512155))

(assert (not b!6154921))

(assert (not b!6155069))

(assert (not b!6155097))

(assert (not bm!512117))

(assert (not b!6154712))

(assert (not b!6155161))

(assert (not b!6154642))

(assert (not b!6154680))

(assert (not b_lambda!234291))

(assert (not b!6155147))

(assert (not setNonEmpty!41687))

(assert (not d!1928500))

(assert (not b!6155106))

(assert (not bm!512215))

(assert (not bm!512120))

(assert (not b!6154956))

(assert (not d!1928626))

(assert (not b!6154591))

(assert (not d!1928488))

(assert (not d!1928520))

(assert (not b!6154683))

(assert (not b!6154780))

(assert (not b!6155094))

(assert (not b!6154931))

(assert (not bm!512176))

(assert (not d!1928462))

(assert (not b_lambda!234287))

(assert (not bm!512145))

(assert (not d!1928450))

(assert (not b!6155023))

(assert (not b_lambda!234247))

(assert (not b!6154640))

(assert (not b!6154662))

(assert (not b!6155127))

(assert (not b!6155056))

(assert (not b!6155164))

(assert (not d!1928414))

(assert (not b!6154703))

(assert (not d!1928556))

(assert (not b!6154586))

(assert (not b!6154650))

(assert (not b!6154607))

(assert (not b!6154896))

(assert (not b!6154629))

(assert (not bm!512167))

(assert (not b!6155043))

(assert (not b_lambda!234289))

(assert (not d!1928448))

(assert (not d!1928374))

(assert (not bm!512104))

(assert (not b_lambda!234293))

(assert (not b_lambda!234285))

(assert (not d!1928534))

(assert (not d!1928456))

(assert (not d!1928378))

(assert (not b!6155130))

(assert (not bm!512181))

(assert (not setNonEmpty!41685))

(assert (not b!6155135))

(assert (not b!6155085))

(assert (not b_lambda!234297))

(assert (not bm!512217))

(assert (not bm!512168))

(assert (not b!6155037))

(assert (not d!1928468))

(assert (not d!1928600))

(assert (not bm!512166))

(assert (not d!1928590))

(assert (not b!6155074))

(assert (not b_lambda!234249))

(assert (not d!1928546))

(assert (not bm!512170))

(assert (not b!6155061))

(assert (not b!6154715))

(assert (not b!6154994))

(assert (not bm!512182))

(assert (not b!6155071))

(assert (not b!6154835))

(assert (not b!6155118))

(assert (not bm!512174))

(assert (not b!6154616))

(assert (not b!6155110))

(assert (not b!6155087))

(assert (not b!6154900))

(assert (not bm!512209))

(assert (not b!6154691))

(assert (not b!6155095))

(assert (not d!1928530))

(assert (not bm!512187))

(assert (not b!6154861))

(assert (not b!6154679))

(assert (not b!6154572))

(assert (not b!6155163))

(assert (not b!6154932))

(assert (not b!6154769))

(assert (not d!1928486))

(assert (not b!6155036))

(assert (not b!6155060))

(assert (not b_lambda!234251))

(assert (not b!6154982))

(assert (not b!6155090))

(assert (not d!1928510))

(assert (not b!6154634))

(assert (not d!1928580))

(assert (not b!6154799))

(assert (not b!6155064))

(assert (not b!6154919))

(assert (not b!6155140))

(assert (not bm!512142))

(assert (not d!1928602))

(assert (not b!6154908))

(assert (not b!6154744))

(assert (not b!6155153))

(assert (not b!6155078))

(assert (not b!6154800))

(assert (not bm!512126))

(assert (not b_lambda!234295))

(assert (not b!6154682))

(assert (not b!6154893))

(assert (not b!6154951))

(assert (not b!6155156))

(assert (not bm!512160))

(assert (not b!6155103))

(assert (not d!1928598))

(assert (not b!6155159))

(assert (not bs!1525697))

(assert (not b!6154832))

(assert (not d!1928478))

(assert (not b!6155079))

(assert (not d!1928606))

(assert (not b!6155165))

(assert (not b!6154658))

(assert (not b!6155057))

(assert (not bm!512222))

(assert (not bm!512201))

(assert (not b!6154617))

(assert (not b!6155131))

(assert (not bm!512149))

(assert (not b!6154735))

(assert (not d!1928588))

(assert (not b!6155149))

(assert (not bm!512223))

(assert (not bm!512218))

(assert (not b!6154633))

(assert (not bm!512199))

(assert (not b!6155082))

(assert (not bm!512221))

(assert (not d!1928528))

(assert (not d!1928394))

(assert (not b!6154702))

(assert (not bm!512144))

(assert (not b!6154636))

(assert (not b!6154939))

(assert (not b!6154709))

(assert (not b!6154661))

(assert (not d!1928512))

(assert (not bm!512124))

(assert (not d!1928554))

(assert (not b!6154756))

(assert (not d!1928398))

(assert (not b!6154859))

(assert (not bm!512130))

(assert (not d!1928392))

(assert (not b!6154687))

(assert (not d!1928624))

(assert (not bm!512180))

(assert (not b!6154745))

(assert (not d!1928628))

(assert (not bs!1525698))

(assert (not b!6155066))

(assert (not bs!1525699))

(assert (not b!6154639))

(assert (not bm!512141))

(assert (not b!6155143))

(assert (not bs!1525696))

(assert (not b!6155052))

(assert (not b!6155124))

(assert (not b!6155075))

(assert (not b!6155093))

(assert (not b!6155117))

(assert (not bm!512203))

(assert (not b!6154909))

(assert (not b!6155102))

(assert (not b!6154948))

(assert (not bm!512125))

(assert (not bm!512150))

(assert (not bm!512188))

(assert (not bm!512205))

(assert (not d!1928620))

(assert (not bm!512116))

(assert (not b!6154959))

(assert (not d!1928502))

(assert (not bm!512206))

(assert (not b!6155145))

(assert (not b!6154584))

(assert (not d!1928440))

(assert (not d!1928418))

(assert (not bm!512138))

(assert (not bm!512147))

(assert (not d!1928550))

(assert (not b!6155113))

(assert (not d!1928634))

(assert (not b!6155062))

(assert (not b!6154910))

(assert (not d!1928402))

(assert (not b!6155070))

(assert (not b!6155089))

(assert (not b!6154913))

(assert (not d!1928558))

(assert (not b!6154655))

(assert (not b!6154897))

(assert (not d!1928616))

(assert (not bm!512171))

(assert (not b!6154757))

(assert (not b!6154583))

(assert (not bm!512186))

(assert (not d!1928614))

(assert (not b!6154613))

(assert (not b!6155058))

(assert (not d!1928552))

(assert (not b!6155073))

(assert (not bm!512114))

(assert (not bm!512156))

(assert (not b!6154681))

(assert (not b!6154828))

(assert (not bm!512109))

(assert (not bm!512113))

(assert (not b!6155120))

(assert (not b!6155122))

(assert (not d!1928564))

(assert (not bm!512134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

