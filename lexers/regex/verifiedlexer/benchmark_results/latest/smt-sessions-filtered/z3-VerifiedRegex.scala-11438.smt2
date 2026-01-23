; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!617138 () Bool)

(assert start!617138)

(declare-fun b!6186884 () Bool)

(assert (=> b!6186884 true))

(assert (=> b!6186884 true))

(declare-fun lambda!337770 () Int)

(declare-fun lambda!337769 () Int)

(assert (=> b!6186884 (not (= lambda!337770 lambda!337769))))

(assert (=> b!6186884 true))

(assert (=> b!6186884 true))

(declare-fun b!6186889 () Bool)

(assert (=> b!6186889 true))

(declare-fun b!6186850 () Bool)

(declare-fun e!3768018 () Bool)

(declare-fun e!3768015 () Bool)

(assert (=> b!6186850 (= e!3768018 e!3768015)))

(declare-fun res!2559607 () Bool)

(assert (=> b!6186850 (=> res!2559607 e!3768015)))

(declare-datatypes ((C!32516 0))(
  ( (C!32517 (val!25960 Int)) )
))
(declare-datatypes ((List!64668 0))(
  ( (Nil!64544) (Cons!64544 (h!70992 C!32516) (t!378178 List!64668)) )
))
(declare-fun s!2326 () List!64668)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16123 0))(
  ( (ElementMatch!16123 (c!1115910 C!32516)) (Concat!24968 (regOne!32758 Regex!16123) (regTwo!32758 Regex!16123)) (EmptyExpr!16123) (Star!16123 (reg!16452 Regex!16123)) (EmptyLang!16123) (Union!16123 (regOne!32759 Regex!16123) (regTwo!32759 Regex!16123)) )
))
(declare-datatypes ((List!64669 0))(
  ( (Nil!64545) (Cons!64545 (h!70993 Regex!16123) (t!378179 List!64669)) )
))
(declare-datatypes ((Context!11014 0))(
  ( (Context!11015 (exprs!6007 List!64669)) )
))
(declare-fun z!1189 () (InoxSet Context!11014))

(declare-fun e!3768028 () Bool)

(declare-fun matchZipper!2135 ((InoxSet Context!11014) List!64668) Bool)

(assert (=> b!6186850 (= res!2559607 (not (= (matchZipper!2135 z!1189 s!2326) e!3768028)))))

(declare-fun res!2559606 () Bool)

(assert (=> b!6186850 (=> res!2559606 e!3768028)))

(declare-fun lt!2339674 () Bool)

(assert (=> b!6186850 (= res!2559606 lt!2339674)))

(declare-fun lt!2339695 () (InoxSet Context!11014))

(assert (=> b!6186850 (= lt!2339674 (matchZipper!2135 lt!2339695 s!2326))))

(declare-datatypes ((Unit!157763 0))(
  ( (Unit!157764) )
))
(declare-fun lt!2339668 () Unit!157763)

(declare-fun e!3768030 () Unit!157763)

(assert (=> b!6186850 (= lt!2339668 e!3768030)))

(declare-fun c!1115907 () Bool)

(declare-fun r!7292 () Regex!16123)

(declare-fun nullable!6116 (Regex!16123) Bool)

(assert (=> b!6186850 (= c!1115907 (nullable!6116 (regTwo!32759 (regOne!32758 r!7292))))))

(declare-fun lambda!337771 () Int)

(declare-fun lt!2339697 () (InoxSet Context!11014))

(declare-fun lt!2339671 () Context!11014)

(declare-fun flatMap!1628 ((InoxSet Context!11014) Int) (InoxSet Context!11014))

(declare-fun derivationStepZipperUp!1297 (Context!11014 C!32516) (InoxSet Context!11014))

(assert (=> b!6186850 (= (flatMap!1628 lt!2339697 lambda!337771) (derivationStepZipperUp!1297 lt!2339671 (h!70992 s!2326)))))

(declare-fun lt!2339673 () Unit!157763)

(declare-fun lemmaFlatMapOnSingletonSet!1154 ((InoxSet Context!11014) Context!11014 Int) Unit!157763)

(assert (=> b!6186850 (= lt!2339673 (lemmaFlatMapOnSingletonSet!1154 lt!2339697 lt!2339671 lambda!337771))))

(declare-fun lt!2339685 () (InoxSet Context!11014))

(assert (=> b!6186850 (= lt!2339685 (derivationStepZipperUp!1297 lt!2339671 (h!70992 s!2326)))))

(declare-fun lt!2339684 () Unit!157763)

(declare-fun e!3768020 () Unit!157763)

(assert (=> b!6186850 (= lt!2339684 e!3768020)))

(declare-fun c!1115908 () Bool)

(assert (=> b!6186850 (= c!1115908 (nullable!6116 (regOne!32759 (regOne!32758 r!7292))))))

(declare-fun lt!2339680 () Context!11014)

(assert (=> b!6186850 (= (flatMap!1628 lt!2339695 lambda!337771) (derivationStepZipperUp!1297 lt!2339680 (h!70992 s!2326)))))

(declare-fun lt!2339679 () Unit!157763)

(assert (=> b!6186850 (= lt!2339679 (lemmaFlatMapOnSingletonSet!1154 lt!2339695 lt!2339680 lambda!337771))))

(declare-fun lt!2339690 () (InoxSet Context!11014))

(assert (=> b!6186850 (= lt!2339690 (derivationStepZipperUp!1297 lt!2339680 (h!70992 s!2326)))))

(assert (=> b!6186850 (= lt!2339697 (store ((as const (Array Context!11014 Bool)) false) lt!2339671 true))))

(declare-fun lt!2339662 () List!64669)

(assert (=> b!6186850 (= lt!2339671 (Context!11015 lt!2339662))))

(declare-datatypes ((List!64670 0))(
  ( (Nil!64546) (Cons!64546 (h!70994 Context!11014) (t!378180 List!64670)) )
))
(declare-fun zl!343 () List!64670)

(assert (=> b!6186850 (= lt!2339662 (Cons!64545 (regTwo!32759 (regOne!32758 r!7292)) (t!378179 (exprs!6007 (h!70994 zl!343)))))))

(assert (=> b!6186850 (= lt!2339695 (store ((as const (Array Context!11014 Bool)) false) lt!2339680 true))))

(declare-fun lt!2339701 () List!64669)

(assert (=> b!6186850 (= lt!2339680 (Context!11015 lt!2339701))))

(assert (=> b!6186850 (= lt!2339701 (Cons!64545 (regOne!32759 (regOne!32758 r!7292)) (t!378179 (exprs!6007 (h!70994 zl!343)))))))

(declare-fun b!6186851 () Bool)

(declare-fun res!2559614 () Bool)

(declare-fun e!3768010 () Bool)

(assert (=> b!6186851 (=> res!2559614 e!3768010)))

(declare-fun generalisedUnion!1967 (List!64669) Regex!16123)

(declare-fun unfocusZipperList!1544 (List!64670) List!64669)

(assert (=> b!6186851 (= res!2559614 (not (= r!7292 (generalisedUnion!1967 (unfocusZipperList!1544 zl!343)))))))

(declare-fun b!6186852 () Bool)

(declare-fun e!3768025 () Bool)

(declare-fun tp!1726972 () Bool)

(declare-fun tp!1726969 () Bool)

(assert (=> b!6186852 (= e!3768025 (and tp!1726972 tp!1726969))))

(declare-fun b!6186853 () Bool)

(declare-fun res!2559595 () Bool)

(declare-fun e!3768008 () Bool)

(assert (=> b!6186853 (=> res!2559595 e!3768008)))

(declare-fun lt!2339698 () Regex!16123)

(declare-fun lt!2339677 () List!64670)

(declare-fun unfocusZipper!1865 (List!64670) Regex!16123)

(assert (=> b!6186853 (= res!2559595 (not (= lt!2339698 (unfocusZipper!1865 lt!2339677))))))

(declare-fun b!6186854 () Bool)

(declare-fun tp!1726971 () Bool)

(assert (=> b!6186854 (= e!3768025 tp!1726971)))

(declare-fun b!6186855 () Bool)

(declare-fun res!2559617 () Bool)

(assert (=> b!6186855 (=> res!2559617 e!3768015)))

(declare-fun lt!2339672 () Regex!16123)

(assert (=> b!6186855 (= res!2559617 (or (not (= lt!2339672 r!7292)) (not (= (exprs!6007 (h!70994 zl!343)) (Cons!64545 (regOne!32758 r!7292) (t!378179 (exprs!6007 (h!70994 zl!343))))))))))

(declare-fun b!6186856 () Bool)

(declare-fun e!3768014 () Bool)

(declare-fun tp!1726974 () Bool)

(assert (=> b!6186856 (= e!3768014 tp!1726974)))

(declare-fun b!6186857 () Bool)

(declare-fun e!3768022 () Bool)

(assert (=> b!6186857 (= e!3768022 (not e!3768010))))

(declare-fun res!2559608 () Bool)

(assert (=> b!6186857 (=> res!2559608 e!3768010)))

(get-info :version)

(assert (=> b!6186857 (= res!2559608 (not ((_ is Cons!64546) zl!343)))))

(declare-fun lt!2339675 () Bool)

(declare-fun matchRSpec!3224 (Regex!16123 List!64668) Bool)

(assert (=> b!6186857 (= lt!2339675 (matchRSpec!3224 r!7292 s!2326))))

(declare-fun matchR!8306 (Regex!16123 List!64668) Bool)

(assert (=> b!6186857 (= lt!2339675 (matchR!8306 r!7292 s!2326))))

(declare-fun lt!2339670 () Unit!157763)

(declare-fun mainMatchTheorem!3224 (Regex!16123 List!64668) Unit!157763)

(assert (=> b!6186857 (= lt!2339670 (mainMatchTheorem!3224 r!7292 s!2326))))

(declare-fun b!6186858 () Bool)

(declare-fun e!3768007 () Bool)

(assert (=> b!6186858 (= e!3768007 e!3768022)))

(declare-fun res!2559610 () Bool)

(assert (=> b!6186858 (=> (not res!2559610) (not e!3768022))))

(assert (=> b!6186858 (= res!2559610 (= r!7292 lt!2339672))))

(assert (=> b!6186858 (= lt!2339672 (unfocusZipper!1865 zl!343))))

(declare-fun b!6186859 () Bool)

(declare-fun e!3768016 () Bool)

(assert (=> b!6186859 (= e!3768016 e!3768008)))

(declare-fun res!2559611 () Bool)

(assert (=> b!6186859 (=> res!2559611 e!3768008)))

(declare-fun validRegex!7859 (Regex!16123) Bool)

(assert (=> b!6186859 (= res!2559611 (not (validRegex!7859 lt!2339698)))))

(declare-fun generalisedConcat!1720 (List!64669) Regex!16123)

(assert (=> b!6186859 (= lt!2339698 (generalisedConcat!1720 lt!2339662))))

(declare-fun lt!2339702 () Regex!16123)

(assert (=> b!6186859 (= (matchR!8306 lt!2339702 s!2326) lt!2339674)))

(declare-fun lt!2339688 () Unit!157763)

(declare-fun lt!2339676 () List!64670)

(declare-fun theoremZipperRegexEquiv!735 ((InoxSet Context!11014) List!64670 Regex!16123 List!64668) Unit!157763)

(assert (=> b!6186859 (= lt!2339688 (theoremZipperRegexEquiv!735 lt!2339695 lt!2339676 lt!2339702 s!2326))))

(assert (=> b!6186859 (= lt!2339702 (generalisedConcat!1720 lt!2339701))))

(declare-fun setIsEmpty!41956 () Bool)

(declare-fun setRes!41956 () Bool)

(assert (=> setIsEmpty!41956 setRes!41956))

(declare-fun b!6186860 () Bool)

(declare-fun Unit!157765 () Unit!157763)

(assert (=> b!6186860 (= e!3768030 Unit!157765)))

(declare-fun lt!2339669 () (InoxSet Context!11014))

(declare-fun lt!2339687 () Unit!157763)

(declare-fun lt!2339664 () (InoxSet Context!11014))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!954 ((InoxSet Context!11014) (InoxSet Context!11014) List!64668) Unit!157763)

(assert (=> b!6186860 (= lt!2339687 (lemmaZipperConcatMatchesSameAsBothZippers!954 lt!2339664 lt!2339669 (t!378178 s!2326)))))

(declare-fun res!2559604 () Bool)

(assert (=> b!6186860 (= res!2559604 (matchZipper!2135 lt!2339664 (t!378178 s!2326)))))

(declare-fun e!3768013 () Bool)

(assert (=> b!6186860 (=> res!2559604 e!3768013)))

(assert (=> b!6186860 (= (matchZipper!2135 ((_ map or) lt!2339664 lt!2339669) (t!378178 s!2326)) e!3768013)))

(declare-fun b!6186861 () Bool)

(declare-fun Unit!157766 () Unit!157763)

(assert (=> b!6186861 (= e!3768030 Unit!157766)))

(declare-fun e!3768009 () Bool)

(declare-fun e!3768011 () Bool)

(declare-fun b!6186862 () Bool)

(declare-fun tp!1726978 () Bool)

(declare-fun inv!83554 (Context!11014) Bool)

(assert (=> b!6186862 (= e!3768011 (and (inv!83554 (h!70994 zl!343)) e!3768009 tp!1726978))))

(declare-fun b!6186863 () Bool)

(declare-fun e!3768019 () Unit!157763)

(declare-fun Unit!157767 () Unit!157763)

(assert (=> b!6186863 (= e!3768019 Unit!157767)))

(declare-fun b!6186864 () Bool)

(assert (=> b!6186864 (= e!3768008 true)))

(declare-fun lt!2339666 () Int)

(declare-fun size!40260 (List!64668) Int)

(assert (=> b!6186864 (= lt!2339666 (size!40260 s!2326))))

(declare-fun b!6186865 () Bool)

(assert (=> b!6186865 (= e!3768028 (matchZipper!2135 lt!2339697 s!2326))))

(declare-fun b!6186866 () Bool)

(assert (=> b!6186866 (= e!3768013 (matchZipper!2135 lt!2339669 (t!378178 s!2326)))))

(declare-fun b!6186867 () Bool)

(declare-fun e!3768012 () Bool)

(declare-fun e!3768017 () Bool)

(assert (=> b!6186867 (= e!3768012 e!3768017)))

(declare-fun res!2559597 () Bool)

(assert (=> b!6186867 (=> res!2559597 e!3768017)))

(declare-fun lt!2339699 () (InoxSet Context!11014))

(declare-fun lt!2339663 () (InoxSet Context!11014))

(assert (=> b!6186867 (= res!2559597 (not (= lt!2339699 lt!2339663)))))

(declare-fun lt!2339678 () (InoxSet Context!11014))

(assert (=> b!6186867 (= lt!2339663 ((_ map or) lt!2339678 lt!2339664))))

(declare-fun lt!2339686 () Context!11014)

(declare-fun derivationStepZipperDown!1371 (Regex!16123 Context!11014 C!32516) (InoxSet Context!11014))

(assert (=> b!6186867 (= lt!2339664 (derivationStepZipperDown!1371 (regTwo!32759 (regOne!32758 r!7292)) lt!2339686 (h!70992 s!2326)))))

(assert (=> b!6186867 (= lt!2339678 (derivationStepZipperDown!1371 (regOne!32759 (regOne!32758 r!7292)) lt!2339686 (h!70992 s!2326)))))

(declare-fun b!6186868 () Bool)

(declare-fun res!2559616 () Bool)

(assert (=> b!6186868 (=> res!2559616 e!3768010)))

(assert (=> b!6186868 (= res!2559616 (not ((_ is Cons!64545) (exprs!6007 (h!70994 zl!343)))))))

(declare-fun b!6186869 () Bool)

(assert (=> b!6186869 (= e!3768017 e!3768018)))

(declare-fun res!2559612 () Bool)

(assert (=> b!6186869 (=> res!2559612 e!3768018)))

(declare-fun e!3768024 () Bool)

(assert (=> b!6186869 (= res!2559612 e!3768024)))

(declare-fun res!2559599 () Bool)

(assert (=> b!6186869 (=> (not res!2559599) (not e!3768024))))

(declare-fun lt!2339692 () Bool)

(assert (=> b!6186869 (= res!2559599 (not (= (matchZipper!2135 lt!2339699 (t!378178 s!2326)) lt!2339692)))))

(declare-fun e!3768023 () Bool)

(assert (=> b!6186869 (= (matchZipper!2135 lt!2339663 (t!378178 s!2326)) e!3768023)))

(declare-fun res!2559619 () Bool)

(assert (=> b!6186869 (=> res!2559619 e!3768023)))

(assert (=> b!6186869 (= res!2559619 lt!2339692)))

(assert (=> b!6186869 (= lt!2339692 (matchZipper!2135 lt!2339678 (t!378178 s!2326)))))

(declare-fun lt!2339681 () Unit!157763)

(assert (=> b!6186869 (= lt!2339681 (lemmaZipperConcatMatchesSameAsBothZippers!954 lt!2339678 lt!2339664 (t!378178 s!2326)))))

(declare-fun b!6186870 () Bool)

(declare-fun res!2559613 () Bool)

(assert (=> b!6186870 (=> res!2559613 e!3768008)))

(declare-fun toList!9907 ((InoxSet Context!11014)) List!64670)

(assert (=> b!6186870 (= res!2559613 (not (= (toList!9907 lt!2339697) lt!2339677)))))

(declare-fun setNonEmpty!41956 () Bool)

(declare-fun tp!1726977 () Bool)

(declare-fun setElem!41956 () Context!11014)

(assert (=> setNonEmpty!41956 (= setRes!41956 (and tp!1726977 (inv!83554 setElem!41956) e!3768014))))

(declare-fun setRest!41956 () (InoxSet Context!11014))

(assert (=> setNonEmpty!41956 (= z!1189 ((_ map or) (store ((as const (Array Context!11014 Bool)) false) setElem!41956 true) setRest!41956))))

(declare-fun b!6186871 () Bool)

(declare-fun e!3768026 () Bool)

(assert (=> b!6186871 (= e!3768026 e!3768016)))

(declare-fun res!2559609 () Bool)

(assert (=> b!6186871 (=> res!2559609 e!3768016)))

(declare-fun lt!2339693 () Int)

(declare-fun zipperDepthTotal!306 (List!64670) Int)

(assert (=> b!6186871 (= res!2559609 (>= (zipperDepthTotal!306 lt!2339677) lt!2339693))))

(assert (=> b!6186871 (= lt!2339677 (Cons!64546 lt!2339671 Nil!64546))))

(declare-fun b!6186872 () Bool)

(declare-fun res!2559596 () Bool)

(assert (=> b!6186872 (=> res!2559596 e!3768010)))

(declare-fun isEmpty!36527 (List!64670) Bool)

(assert (=> b!6186872 (= res!2559596 (not (isEmpty!36527 (t!378180 zl!343))))))

(declare-fun b!6186873 () Bool)

(declare-fun res!2559598 () Bool)

(assert (=> b!6186873 (=> (not res!2559598) (not e!3768007))))

(assert (=> b!6186873 (= res!2559598 (= (toList!9907 z!1189) zl!343))))

(declare-fun b!6186874 () Bool)

(declare-fun tp_is_empty!41499 () Bool)

(assert (=> b!6186874 (= e!3768025 tp_is_empty!41499)))

(declare-fun res!2559601 () Bool)

(assert (=> start!617138 (=> (not res!2559601) (not e!3768007))))

(assert (=> start!617138 (= res!2559601 (validRegex!7859 r!7292))))

(assert (=> start!617138 e!3768007))

(assert (=> start!617138 e!3768025))

(declare-fun condSetEmpty!41956 () Bool)

(assert (=> start!617138 (= condSetEmpty!41956 (= z!1189 ((as const (Array Context!11014 Bool)) false)))))

(assert (=> start!617138 setRes!41956))

(assert (=> start!617138 e!3768011))

(declare-fun e!3768027 () Bool)

(assert (=> start!617138 e!3768027))

(declare-fun b!6186875 () Bool)

(assert (=> b!6186875 (= e!3768024 (not (matchZipper!2135 lt!2339664 (t!378178 s!2326))))))

(declare-fun b!6186876 () Bool)

(declare-fun Unit!157768 () Unit!157763)

(assert (=> b!6186876 (= e!3768019 Unit!157768)))

(declare-fun lt!2339667 () Unit!157763)

(assert (=> b!6186876 (= lt!2339667 (lemmaZipperConcatMatchesSameAsBothZippers!954 lt!2339699 lt!2339669 (t!378178 s!2326)))))

(declare-fun res!2559593 () Bool)

(assert (=> b!6186876 (= res!2559593 (matchZipper!2135 lt!2339699 (t!378178 s!2326)))))

(declare-fun e!3768029 () Bool)

(assert (=> b!6186876 (=> res!2559593 e!3768029)))

(assert (=> b!6186876 (= (matchZipper!2135 ((_ map or) lt!2339699 lt!2339669) (t!378178 s!2326)) e!3768029)))

(declare-fun b!6186877 () Bool)

(assert (=> b!6186877 (= e!3768015 e!3768026)))

(declare-fun res!2559618 () Bool)

(assert (=> b!6186877 (=> res!2559618 e!3768026)))

(declare-fun lt!2339691 () Int)

(assert (=> b!6186877 (= res!2559618 (>= lt!2339691 lt!2339693))))

(assert (=> b!6186877 (= lt!2339693 (zipperDepthTotal!306 zl!343))))

(assert (=> b!6186877 (= lt!2339691 (zipperDepthTotal!306 lt!2339676))))

(assert (=> b!6186877 (= lt!2339676 (Cons!64546 lt!2339680 Nil!64546))))

(declare-fun b!6186878 () Bool)

(declare-fun res!2559603 () Bool)

(declare-fun e!3768031 () Bool)

(assert (=> b!6186878 (=> res!2559603 e!3768031)))

(declare-fun isEmpty!36528 (List!64669) Bool)

(assert (=> b!6186878 (= res!2559603 (isEmpty!36528 (t!378179 (exprs!6007 (h!70994 zl!343)))))))

(declare-fun b!6186879 () Bool)

(declare-fun res!2559602 () Bool)

(assert (=> b!6186879 (=> res!2559602 e!3768010)))

(assert (=> b!6186879 (= res!2559602 (not (= r!7292 (generalisedConcat!1720 (exprs!6007 (h!70994 zl!343))))))))

(declare-fun b!6186880 () Bool)

(assert (=> b!6186880 (= e!3768023 (matchZipper!2135 lt!2339664 (t!378178 s!2326)))))

(declare-fun b!6186881 () Bool)

(declare-fun tp!1726973 () Bool)

(assert (=> b!6186881 (= e!3768009 tp!1726973)))

(declare-fun b!6186882 () Bool)

(declare-fun e!3768021 () Bool)

(assert (=> b!6186882 (= e!3768021 (matchZipper!2135 lt!2339669 (t!378178 s!2326)))))

(declare-fun b!6186883 () Bool)

(declare-fun Unit!157769 () Unit!157763)

(assert (=> b!6186883 (= e!3768020 Unit!157769)))

(assert (=> b!6186884 (= e!3768010 e!3768031)))

(declare-fun res!2559605 () Bool)

(assert (=> b!6186884 (=> res!2559605 e!3768031)))

(declare-fun lt!2339689 () Bool)

(assert (=> b!6186884 (= res!2559605 (or (not (= lt!2339675 lt!2339689)) ((_ is Nil!64544) s!2326)))))

(declare-fun Exists!3193 (Int) Bool)

(assert (=> b!6186884 (= (Exists!3193 lambda!337769) (Exists!3193 lambda!337770))))

(declare-fun lt!2339683 () Unit!157763)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1730 (Regex!16123 Regex!16123 List!64668) Unit!157763)

(assert (=> b!6186884 (= lt!2339683 (lemmaExistCutMatchRandMatchRSpecEquivalent!1730 (regOne!32758 r!7292) (regTwo!32758 r!7292) s!2326))))

(assert (=> b!6186884 (= lt!2339689 (Exists!3193 lambda!337769))))

(declare-datatypes ((tuple2!66204 0))(
  ( (tuple2!66205 (_1!36405 List!64668) (_2!36405 List!64668)) )
))
(declare-datatypes ((Option!16014 0))(
  ( (None!16013) (Some!16013 (v!52156 tuple2!66204)) )
))
(declare-fun isDefined!12717 (Option!16014) Bool)

(declare-fun findConcatSeparation!2428 (Regex!16123 Regex!16123 List!64668 List!64668 List!64668) Option!16014)

(assert (=> b!6186884 (= lt!2339689 (isDefined!12717 (findConcatSeparation!2428 (regOne!32758 r!7292) (regTwo!32758 r!7292) Nil!64544 s!2326 s!2326)))))

(declare-fun lt!2339665 () Unit!157763)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2192 (Regex!16123 Regex!16123 List!64668) Unit!157763)

(assert (=> b!6186884 (= lt!2339665 (lemmaFindConcatSeparationEquivalentToExists!2192 (regOne!32758 r!7292) (regTwo!32758 r!7292) s!2326))))

(declare-fun b!6186885 () Bool)

(declare-fun tp!1726970 () Bool)

(declare-fun tp!1726976 () Bool)

(assert (=> b!6186885 (= e!3768025 (and tp!1726970 tp!1726976))))

(declare-fun b!6186886 () Bool)

(declare-fun Unit!157770 () Unit!157763)

(assert (=> b!6186886 (= e!3768020 Unit!157770)))

(declare-fun lt!2339700 () Unit!157763)

(assert (=> b!6186886 (= lt!2339700 (lemmaZipperConcatMatchesSameAsBothZippers!954 lt!2339678 lt!2339669 (t!378178 s!2326)))))

(declare-fun res!2559615 () Bool)

(assert (=> b!6186886 (= res!2559615 lt!2339692)))

(assert (=> b!6186886 (=> res!2559615 e!3768021)))

(assert (=> b!6186886 (= (matchZipper!2135 ((_ map or) lt!2339678 lt!2339669) (t!378178 s!2326)) e!3768021)))

(declare-fun b!6186887 () Bool)

(assert (=> b!6186887 (= e!3768029 (matchZipper!2135 lt!2339669 (t!378178 s!2326)))))

(declare-fun b!6186888 () Bool)

(declare-fun tp!1726975 () Bool)

(assert (=> b!6186888 (= e!3768027 (and tp_is_empty!41499 tp!1726975))))

(assert (=> b!6186889 (= e!3768031 e!3768012)))

(declare-fun res!2559594 () Bool)

(assert (=> b!6186889 (=> res!2559594 e!3768012)))

(assert (=> b!6186889 (= res!2559594 (or (and ((_ is ElementMatch!16123) (regOne!32758 r!7292)) (= (c!1115910 (regOne!32758 r!7292)) (h!70992 s!2326))) (not ((_ is Union!16123) (regOne!32758 r!7292)))))))

(declare-fun lt!2339682 () Unit!157763)

(assert (=> b!6186889 (= lt!2339682 e!3768019)))

(declare-fun c!1115909 () Bool)

(assert (=> b!6186889 (= c!1115909 (nullable!6116 (h!70993 (exprs!6007 (h!70994 zl!343)))))))

(assert (=> b!6186889 (= (flatMap!1628 z!1189 lambda!337771) (derivationStepZipperUp!1297 (h!70994 zl!343) (h!70992 s!2326)))))

(declare-fun lt!2339696 () Unit!157763)

(assert (=> b!6186889 (= lt!2339696 (lemmaFlatMapOnSingletonSet!1154 z!1189 (h!70994 zl!343) lambda!337771))))

(assert (=> b!6186889 (= lt!2339669 (derivationStepZipperUp!1297 lt!2339686 (h!70992 s!2326)))))

(assert (=> b!6186889 (= lt!2339699 (derivationStepZipperDown!1371 (h!70993 (exprs!6007 (h!70994 zl!343))) lt!2339686 (h!70992 s!2326)))))

(assert (=> b!6186889 (= lt!2339686 (Context!11015 (t!378179 (exprs!6007 (h!70994 zl!343)))))))

(declare-fun lt!2339694 () (InoxSet Context!11014))

(assert (=> b!6186889 (= lt!2339694 (derivationStepZipperUp!1297 (Context!11015 (Cons!64545 (h!70993 (exprs!6007 (h!70994 zl!343))) (t!378179 (exprs!6007 (h!70994 zl!343))))) (h!70992 s!2326)))))

(declare-fun b!6186890 () Bool)

(declare-fun res!2559600 () Bool)

(assert (=> b!6186890 (=> res!2559600 e!3768010)))

(assert (=> b!6186890 (= res!2559600 (or ((_ is EmptyExpr!16123) r!7292) ((_ is EmptyLang!16123) r!7292) ((_ is ElementMatch!16123) r!7292) ((_ is Union!16123) r!7292) (not ((_ is Concat!24968) r!7292))))))

(assert (= (and start!617138 res!2559601) b!6186873))

(assert (= (and b!6186873 res!2559598) b!6186858))

(assert (= (and b!6186858 res!2559610) b!6186857))

(assert (= (and b!6186857 (not res!2559608)) b!6186872))

(assert (= (and b!6186872 (not res!2559596)) b!6186879))

(assert (= (and b!6186879 (not res!2559602)) b!6186868))

(assert (= (and b!6186868 (not res!2559616)) b!6186851))

(assert (= (and b!6186851 (not res!2559614)) b!6186890))

(assert (= (and b!6186890 (not res!2559600)) b!6186884))

(assert (= (and b!6186884 (not res!2559605)) b!6186878))

(assert (= (and b!6186878 (not res!2559603)) b!6186889))

(assert (= (and b!6186889 c!1115909) b!6186876))

(assert (= (and b!6186889 (not c!1115909)) b!6186863))

(assert (= (and b!6186876 (not res!2559593)) b!6186887))

(assert (= (and b!6186889 (not res!2559594)) b!6186867))

(assert (= (and b!6186867 (not res!2559597)) b!6186869))

(assert (= (and b!6186869 (not res!2559619)) b!6186880))

(assert (= (and b!6186869 res!2559599) b!6186875))

(assert (= (and b!6186869 (not res!2559612)) b!6186850))

(assert (= (and b!6186850 c!1115908) b!6186886))

(assert (= (and b!6186850 (not c!1115908)) b!6186883))

(assert (= (and b!6186886 (not res!2559615)) b!6186882))

(assert (= (and b!6186850 c!1115907) b!6186860))

(assert (= (and b!6186850 (not c!1115907)) b!6186861))

(assert (= (and b!6186860 (not res!2559604)) b!6186866))

(assert (= (and b!6186850 (not res!2559606)) b!6186865))

(assert (= (and b!6186850 (not res!2559607)) b!6186855))

(assert (= (and b!6186855 (not res!2559617)) b!6186877))

(assert (= (and b!6186877 (not res!2559618)) b!6186871))

(assert (= (and b!6186871 (not res!2559609)) b!6186859))

(assert (= (and b!6186859 (not res!2559611)) b!6186870))

(assert (= (and b!6186870 (not res!2559613)) b!6186853))

(assert (= (and b!6186853 (not res!2559595)) b!6186864))

(assert (= (and start!617138 ((_ is ElementMatch!16123) r!7292)) b!6186874))

(assert (= (and start!617138 ((_ is Concat!24968) r!7292)) b!6186885))

(assert (= (and start!617138 ((_ is Star!16123) r!7292)) b!6186854))

(assert (= (and start!617138 ((_ is Union!16123) r!7292)) b!6186852))

(assert (= (and start!617138 condSetEmpty!41956) setIsEmpty!41956))

(assert (= (and start!617138 (not condSetEmpty!41956)) setNonEmpty!41956))

(assert (= setNonEmpty!41956 b!6186856))

(assert (= b!6186862 b!6186881))

(assert (= (and start!617138 ((_ is Cons!64546) zl!343)) b!6186862))

(assert (= (and start!617138 ((_ is Cons!64544) s!2326)) b!6186888))

(declare-fun m!7021590 () Bool)

(assert (=> b!6186851 m!7021590))

(assert (=> b!6186851 m!7021590))

(declare-fun m!7021592 () Bool)

(assert (=> b!6186851 m!7021592))

(declare-fun m!7021594 () Bool)

(assert (=> b!6186877 m!7021594))

(declare-fun m!7021596 () Bool)

(assert (=> b!6186877 m!7021596))

(declare-fun m!7021598 () Bool)

(assert (=> b!6186879 m!7021598))

(declare-fun m!7021600 () Bool)

(assert (=> setNonEmpty!41956 m!7021600))

(declare-fun m!7021602 () Bool)

(assert (=> b!6186869 m!7021602))

(declare-fun m!7021604 () Bool)

(assert (=> b!6186869 m!7021604))

(declare-fun m!7021606 () Bool)

(assert (=> b!6186869 m!7021606))

(declare-fun m!7021608 () Bool)

(assert (=> b!6186869 m!7021608))

(declare-fun m!7021610 () Bool)

(assert (=> b!6186860 m!7021610))

(declare-fun m!7021612 () Bool)

(assert (=> b!6186860 m!7021612))

(declare-fun m!7021614 () Bool)

(assert (=> b!6186860 m!7021614))

(declare-fun m!7021616 () Bool)

(assert (=> b!6186871 m!7021616))

(declare-fun m!7021618 () Bool)

(assert (=> b!6186876 m!7021618))

(assert (=> b!6186876 m!7021602))

(declare-fun m!7021620 () Bool)

(assert (=> b!6186876 m!7021620))

(assert (=> b!6186875 m!7021612))

(declare-fun m!7021622 () Bool)

(assert (=> b!6186850 m!7021622))

(declare-fun m!7021624 () Bool)

(assert (=> b!6186850 m!7021624))

(declare-fun m!7021626 () Bool)

(assert (=> b!6186850 m!7021626))

(declare-fun m!7021628 () Bool)

(assert (=> b!6186850 m!7021628))

(declare-fun m!7021630 () Bool)

(assert (=> b!6186850 m!7021630))

(declare-fun m!7021632 () Bool)

(assert (=> b!6186850 m!7021632))

(declare-fun m!7021634 () Bool)

(assert (=> b!6186850 m!7021634))

(declare-fun m!7021636 () Bool)

(assert (=> b!6186850 m!7021636))

(declare-fun m!7021638 () Bool)

(assert (=> b!6186850 m!7021638))

(declare-fun m!7021640 () Bool)

(assert (=> b!6186850 m!7021640))

(declare-fun m!7021642 () Bool)

(assert (=> b!6186850 m!7021642))

(declare-fun m!7021644 () Bool)

(assert (=> b!6186850 m!7021644))

(declare-fun m!7021646 () Bool)

(assert (=> b!6186887 m!7021646))

(declare-fun m!7021648 () Bool)

(assert (=> b!6186858 m!7021648))

(declare-fun m!7021650 () Bool)

(assert (=> b!6186878 m!7021650))

(assert (=> b!6186882 m!7021646))

(declare-fun m!7021652 () Bool)

(assert (=> b!6186867 m!7021652))

(declare-fun m!7021654 () Bool)

(assert (=> b!6186867 m!7021654))

(declare-fun m!7021656 () Bool)

(assert (=> b!6186857 m!7021656))

(declare-fun m!7021658 () Bool)

(assert (=> b!6186857 m!7021658))

(declare-fun m!7021660 () Bool)

(assert (=> b!6186857 m!7021660))

(declare-fun m!7021662 () Bool)

(assert (=> b!6186859 m!7021662))

(declare-fun m!7021664 () Bool)

(assert (=> b!6186859 m!7021664))

(declare-fun m!7021666 () Bool)

(assert (=> b!6186859 m!7021666))

(declare-fun m!7021668 () Bool)

(assert (=> b!6186859 m!7021668))

(declare-fun m!7021670 () Bool)

(assert (=> b!6186859 m!7021670))

(assert (=> b!6186880 m!7021612))

(declare-fun m!7021672 () Bool)

(assert (=> b!6186864 m!7021672))

(declare-fun m!7021674 () Bool)

(assert (=> b!6186865 m!7021674))

(declare-fun m!7021676 () Bool)

(assert (=> start!617138 m!7021676))

(declare-fun m!7021678 () Bool)

(assert (=> b!6186853 m!7021678))

(assert (=> b!6186866 m!7021646))

(declare-fun m!7021680 () Bool)

(assert (=> b!6186886 m!7021680))

(declare-fun m!7021682 () Bool)

(assert (=> b!6186886 m!7021682))

(declare-fun m!7021684 () Bool)

(assert (=> b!6186870 m!7021684))

(declare-fun m!7021686 () Bool)

(assert (=> b!6186884 m!7021686))

(declare-fun m!7021688 () Bool)

(assert (=> b!6186884 m!7021688))

(declare-fun m!7021690 () Bool)

(assert (=> b!6186884 m!7021690))

(assert (=> b!6186884 m!7021690))

(declare-fun m!7021692 () Bool)

(assert (=> b!6186884 m!7021692))

(declare-fun m!7021694 () Bool)

(assert (=> b!6186884 m!7021694))

(assert (=> b!6186884 m!7021686))

(declare-fun m!7021696 () Bool)

(assert (=> b!6186884 m!7021696))

(declare-fun m!7021698 () Bool)

(assert (=> b!6186872 m!7021698))

(declare-fun m!7021700 () Bool)

(assert (=> b!6186862 m!7021700))

(declare-fun m!7021702 () Bool)

(assert (=> b!6186889 m!7021702))

(declare-fun m!7021704 () Bool)

(assert (=> b!6186889 m!7021704))

(declare-fun m!7021706 () Bool)

(assert (=> b!6186889 m!7021706))

(declare-fun m!7021708 () Bool)

(assert (=> b!6186889 m!7021708))

(declare-fun m!7021710 () Bool)

(assert (=> b!6186889 m!7021710))

(declare-fun m!7021712 () Bool)

(assert (=> b!6186889 m!7021712))

(declare-fun m!7021714 () Bool)

(assert (=> b!6186889 m!7021714))

(declare-fun m!7021716 () Bool)

(assert (=> b!6186873 m!7021716))

(check-sat (not b!6186884) (not b!6186865) (not b!6186852) (not b!6186878) (not b!6186889) (not b!6186850) (not b!6186859) (not b!6186862) (not b!6186879) (not b!6186864) (not b!6186853) (not b!6186886) (not b!6186872) (not b!6186882) (not b!6186887) (not b!6186860) (not b!6186875) (not b!6186888) (not b!6186877) (not b!6186867) (not b!6186856) (not b!6186885) (not b!6186871) (not b!6186876) (not b!6186858) (not b!6186866) (not b!6186880) (not b!6186857) (not b!6186873) (not b!6186881) (not b!6186869) tp_is_empty!41499 (not setNonEmpty!41956) (not start!617138) (not b!6186851) (not b!6186870) (not b!6186854))
(check-sat)
