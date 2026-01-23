; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!610454 () Bool)

(assert start!610454)

(declare-fun b!6105694 () Bool)

(assert (=> b!6105694 true))

(assert (=> b!6105694 true))

(declare-fun lambda!332673 () Int)

(declare-fun lambda!332672 () Int)

(assert (=> b!6105694 (not (= lambda!332673 lambda!332672))))

(assert (=> b!6105694 true))

(assert (=> b!6105694 true))

(declare-fun b!6105687 () Bool)

(declare-fun res!2533064 () Bool)

(declare-fun e!3723505 () Bool)

(assert (=> b!6105687 (=> res!2533064 e!3723505)))

(declare-datatypes ((C!32384 0))(
  ( (C!32385 (val!25894 Int)) )
))
(declare-datatypes ((Regex!16057 0))(
  ( (ElementMatch!16057 (c!1096851 C!32384)) (Concat!24902 (regOne!32626 Regex!16057) (regTwo!32626 Regex!16057)) (EmptyExpr!16057) (Star!16057 (reg!16386 Regex!16057)) (EmptyLang!16057) (Union!16057 (regOne!32627 Regex!16057) (regTwo!32627 Regex!16057)) )
))
(declare-fun r!7292 () Regex!16057)

(get-info :version)

(assert (=> b!6105687 (= res!2533064 (or ((_ is EmptyExpr!16057) r!7292) ((_ is EmptyLang!16057) r!7292) ((_ is ElementMatch!16057) r!7292) ((_ is Union!16057) r!7292) (not ((_ is Concat!24902) r!7292))))))

(declare-fun b!6105688 () Bool)

(declare-fun e!3723509 () Bool)

(declare-fun tp!1704774 () Bool)

(declare-fun tp!1704771 () Bool)

(assert (=> b!6105688 (= e!3723509 (and tp!1704774 tp!1704771))))

(declare-fun b!6105689 () Bool)

(declare-fun tp!1704776 () Bool)

(assert (=> b!6105689 (= e!3723509 tp!1704776)))

(declare-fun b!6105690 () Bool)

(declare-fun res!2533062 () Bool)

(assert (=> b!6105690 (=> res!2533062 e!3723505)))

(declare-datatypes ((List!64470 0))(
  ( (Nil!64346) (Cons!64346 (h!70794 Regex!16057) (t!377923 List!64470)) )
))
(declare-datatypes ((Context!10882 0))(
  ( (Context!10883 (exprs!5941 List!64470)) )
))
(declare-datatypes ((List!64471 0))(
  ( (Nil!64347) (Cons!64347 (h!70795 Context!10882) (t!377924 List!64471)) )
))
(declare-fun zl!343 () List!64471)

(declare-fun generalisedConcat!1654 (List!64470) Regex!16057)

(assert (=> b!6105690 (= res!2533062 (not (= r!7292 (generalisedConcat!1654 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun setIsEmpty!41260 () Bool)

(declare-fun setRes!41260 () Bool)

(assert (=> setIsEmpty!41260 setRes!41260))

(declare-fun b!6105691 () Bool)

(declare-fun e!3723510 () Bool)

(assert (=> b!6105691 (= e!3723510 (not e!3723505))))

(declare-fun res!2533060 () Bool)

(assert (=> b!6105691 (=> res!2533060 e!3723505)))

(assert (=> b!6105691 (= res!2533060 (not ((_ is Cons!64347) zl!343)))))

(declare-fun lt!2329689 () Bool)

(declare-datatypes ((List!64472 0))(
  ( (Nil!64348) (Cons!64348 (h!70796 C!32384) (t!377925 List!64472)) )
))
(declare-fun s!2326 () List!64472)

(declare-fun matchRSpec!3158 (Regex!16057 List!64472) Bool)

(assert (=> b!6105691 (= lt!2329689 (matchRSpec!3158 r!7292 s!2326))))

(declare-fun matchR!8240 (Regex!16057 List!64472) Bool)

(assert (=> b!6105691 (= lt!2329689 (matchR!8240 r!7292 s!2326))))

(declare-datatypes ((Unit!157385 0))(
  ( (Unit!157386) )
))
(declare-fun lt!2329687 () Unit!157385)

(declare-fun mainMatchTheorem!3158 (Regex!16057 List!64472) Unit!157385)

(assert (=> b!6105691 (= lt!2329687 (mainMatchTheorem!3158 r!7292 s!2326))))

(declare-fun b!6105692 () Bool)

(declare-fun res!2533063 () Bool)

(declare-fun e!3723506 () Bool)

(assert (=> b!6105692 (=> res!2533063 e!3723506)))

(declare-fun isEmpty!36269 (List!64470) Bool)

(assert (=> b!6105692 (= res!2533063 (isEmpty!36269 (t!377923 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun res!2533058 () Bool)

(assert (=> start!610454 (=> (not res!2533058) (not e!3723510))))

(declare-fun validRegex!7793 (Regex!16057) Bool)

(assert (=> start!610454 (= res!2533058 (validRegex!7793 r!7292))))

(assert (=> start!610454 e!3723510))

(assert (=> start!610454 e!3723509))

(declare-fun condSetEmpty!41260 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10882))

(assert (=> start!610454 (= condSetEmpty!41260 (= z!1189 ((as const (Array Context!10882 Bool)) false)))))

(assert (=> start!610454 setRes!41260))

(declare-fun e!3723507 () Bool)

(assert (=> start!610454 e!3723507))

(declare-fun e!3723508 () Bool)

(assert (=> start!610454 e!3723508))

(declare-fun b!6105693 () Bool)

(declare-fun res!2533065 () Bool)

(assert (=> b!6105693 (=> (not res!2533065) (not e!3723510))))

(declare-fun unfocusZipper!1799 (List!64471) Regex!16057)

(assert (=> b!6105693 (= res!2533065 (= r!7292 (unfocusZipper!1799 zl!343)))))

(assert (=> b!6105694 (= e!3723505 e!3723506)))

(declare-fun res!2533057 () Bool)

(assert (=> b!6105694 (=> res!2533057 e!3723506)))

(declare-fun lt!2329686 () Bool)

(assert (=> b!6105694 (= res!2533057 (or (not (= lt!2329689 lt!2329686)) ((_ is Nil!64348) s!2326)))))

(declare-fun Exists!3127 (Int) Bool)

(assert (=> b!6105694 (= (Exists!3127 lambda!332672) (Exists!3127 lambda!332673))))

(declare-fun lt!2329682 () Unit!157385)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1664 (Regex!16057 Regex!16057 List!64472) Unit!157385)

(assert (=> b!6105694 (= lt!2329682 (lemmaExistCutMatchRandMatchRSpecEquivalent!1664 (regOne!32626 r!7292) (regTwo!32626 r!7292) s!2326))))

(assert (=> b!6105694 (= lt!2329686 (Exists!3127 lambda!332672))))

(declare-datatypes ((tuple2!66072 0))(
  ( (tuple2!66073 (_1!36339 List!64472) (_2!36339 List!64472)) )
))
(declare-datatypes ((Option!15948 0))(
  ( (None!15947) (Some!15947 (v!52080 tuple2!66072)) )
))
(declare-fun isDefined!12651 (Option!15948) Bool)

(declare-fun findConcatSeparation!2362 (Regex!16057 Regex!16057 List!64472 List!64472 List!64472) Option!15948)

(assert (=> b!6105694 (= lt!2329686 (isDefined!12651 (findConcatSeparation!2362 (regOne!32626 r!7292) (regTwo!32626 r!7292) Nil!64348 s!2326 s!2326)))))

(declare-fun lt!2329684 () Unit!157385)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2126 (Regex!16057 Regex!16057 List!64472) Unit!157385)

(assert (=> b!6105694 (= lt!2329684 (lemmaFindConcatSeparationEquivalentToExists!2126 (regOne!32626 r!7292) (regTwo!32626 r!7292) s!2326))))

(declare-fun setElem!41260 () Context!10882)

(declare-fun setNonEmpty!41260 () Bool)

(declare-fun e!3723511 () Bool)

(declare-fun tp!1704770 () Bool)

(declare-fun inv!83389 (Context!10882) Bool)

(assert (=> setNonEmpty!41260 (= setRes!41260 (and tp!1704770 (inv!83389 setElem!41260) e!3723511))))

(declare-fun setRest!41260 () (InoxSet Context!10882))

(assert (=> setNonEmpty!41260 (= z!1189 ((_ map or) (store ((as const (Array Context!10882 Bool)) false) setElem!41260 true) setRest!41260))))

(declare-fun b!6105695 () Bool)

(declare-fun res!2533059 () Bool)

(assert (=> b!6105695 (=> res!2533059 e!3723505)))

(assert (=> b!6105695 (= res!2533059 (not ((_ is Cons!64346) (exprs!5941 (h!70795 zl!343)))))))

(declare-fun b!6105696 () Bool)

(declare-fun tp!1704772 () Bool)

(declare-fun tp!1704769 () Bool)

(assert (=> b!6105696 (= e!3723509 (and tp!1704772 tp!1704769))))

(declare-fun b!6105697 () Bool)

(declare-fun tp_is_empty!41367 () Bool)

(declare-fun tp!1704778 () Bool)

(assert (=> b!6105697 (= e!3723508 (and tp_is_empty!41367 tp!1704778))))

(declare-fun b!6105698 () Bool)

(declare-fun tp!1704773 () Bool)

(assert (=> b!6105698 (= e!3723511 tp!1704773)))

(declare-fun b!6105699 () Bool)

(assert (=> b!6105699 (= e!3723506 (= z!1189 (store ((as const (Array Context!10882 Bool)) false) (h!70795 zl!343) true)))))

(declare-fun lt!2329685 () (InoxSet Context!10882))

(declare-fun lt!2329690 () Context!10882)

(declare-fun derivationStepZipperUp!1231 (Context!10882 C!32384) (InoxSet Context!10882))

(assert (=> b!6105699 (= lt!2329685 (derivationStepZipperUp!1231 lt!2329690 (h!70796 s!2326)))))

(declare-fun lt!2329688 () (InoxSet Context!10882))

(declare-fun derivationStepZipperDown!1305 (Regex!16057 Context!10882 C!32384) (InoxSet Context!10882))

(assert (=> b!6105699 (= lt!2329688 (derivationStepZipperDown!1305 (h!70794 (exprs!5941 (h!70795 zl!343))) lt!2329690 (h!70796 s!2326)))))

(assert (=> b!6105699 (= lt!2329690 (Context!10883 (t!377923 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun lt!2329683 () (InoxSet Context!10882))

(assert (=> b!6105699 (= lt!2329683 (derivationStepZipperUp!1231 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))) (h!70796 s!2326)))))

(declare-fun b!6105700 () Bool)

(assert (=> b!6105700 (= e!3723509 tp_is_empty!41367)))

(declare-fun b!6105701 () Bool)

(declare-fun res!2533055 () Bool)

(assert (=> b!6105701 (=> (not res!2533055) (not e!3723510))))

(declare-fun toList!9841 ((InoxSet Context!10882)) List!64471)

(assert (=> b!6105701 (= res!2533055 (= (toList!9841 z!1189) zl!343))))

(declare-fun b!6105702 () Bool)

(declare-fun e!3723504 () Bool)

(declare-fun tp!1704777 () Bool)

(assert (=> b!6105702 (= e!3723504 tp!1704777)))

(declare-fun b!6105703 () Bool)

(declare-fun res!2533056 () Bool)

(assert (=> b!6105703 (=> res!2533056 e!3723505)))

(declare-fun generalisedUnion!1901 (List!64470) Regex!16057)

(declare-fun unfocusZipperList!1478 (List!64471) List!64470)

(assert (=> b!6105703 (= res!2533056 (not (= r!7292 (generalisedUnion!1901 (unfocusZipperList!1478 zl!343)))))))

(declare-fun tp!1704775 () Bool)

(declare-fun b!6105704 () Bool)

(assert (=> b!6105704 (= e!3723507 (and (inv!83389 (h!70795 zl!343)) e!3723504 tp!1704775))))

(declare-fun b!6105705 () Bool)

(declare-fun res!2533061 () Bool)

(assert (=> b!6105705 (=> res!2533061 e!3723505)))

(declare-fun isEmpty!36270 (List!64471) Bool)

(assert (=> b!6105705 (= res!2533061 (not (isEmpty!36270 (t!377924 zl!343))))))

(assert (= (and start!610454 res!2533058) b!6105701))

(assert (= (and b!6105701 res!2533055) b!6105693))

(assert (= (and b!6105693 res!2533065) b!6105691))

(assert (= (and b!6105691 (not res!2533060)) b!6105705))

(assert (= (and b!6105705 (not res!2533061)) b!6105690))

(assert (= (and b!6105690 (not res!2533062)) b!6105695))

(assert (= (and b!6105695 (not res!2533059)) b!6105703))

(assert (= (and b!6105703 (not res!2533056)) b!6105687))

(assert (= (and b!6105687 (not res!2533064)) b!6105694))

(assert (= (and b!6105694 (not res!2533057)) b!6105692))

(assert (= (and b!6105692 (not res!2533063)) b!6105699))

(assert (= (and start!610454 ((_ is ElementMatch!16057) r!7292)) b!6105700))

(assert (= (and start!610454 ((_ is Concat!24902) r!7292)) b!6105696))

(assert (= (and start!610454 ((_ is Star!16057) r!7292)) b!6105689))

(assert (= (and start!610454 ((_ is Union!16057) r!7292)) b!6105688))

(assert (= (and start!610454 condSetEmpty!41260) setIsEmpty!41260))

(assert (= (and start!610454 (not condSetEmpty!41260)) setNonEmpty!41260))

(assert (= setNonEmpty!41260 b!6105698))

(assert (= b!6105704 b!6105702))

(assert (= (and start!610454 ((_ is Cons!64347) zl!343)) b!6105704))

(assert (= (and start!610454 ((_ is Cons!64348) s!2326)) b!6105697))

(declare-fun m!6956810 () Bool)

(assert (=> b!6105699 m!6956810))

(declare-fun m!6956812 () Bool)

(assert (=> b!6105699 m!6956812))

(declare-fun m!6956814 () Bool)

(assert (=> b!6105699 m!6956814))

(declare-fun m!6956816 () Bool)

(assert (=> b!6105699 m!6956816))

(declare-fun m!6956818 () Bool)

(assert (=> b!6105704 m!6956818))

(declare-fun m!6956820 () Bool)

(assert (=> b!6105690 m!6956820))

(declare-fun m!6956822 () Bool)

(assert (=> b!6105694 m!6956822))

(declare-fun m!6956824 () Bool)

(assert (=> b!6105694 m!6956824))

(declare-fun m!6956826 () Bool)

(assert (=> b!6105694 m!6956826))

(declare-fun m!6956828 () Bool)

(assert (=> b!6105694 m!6956828))

(declare-fun m!6956830 () Bool)

(assert (=> b!6105694 m!6956830))

(assert (=> b!6105694 m!6956830))

(assert (=> b!6105694 m!6956822))

(declare-fun m!6956832 () Bool)

(assert (=> b!6105694 m!6956832))

(declare-fun m!6956834 () Bool)

(assert (=> setNonEmpty!41260 m!6956834))

(declare-fun m!6956836 () Bool)

(assert (=> b!6105693 m!6956836))

(declare-fun m!6956838 () Bool)

(assert (=> b!6105705 m!6956838))

(declare-fun m!6956840 () Bool)

(assert (=> b!6105701 m!6956840))

(declare-fun m!6956842 () Bool)

(assert (=> b!6105703 m!6956842))

(assert (=> b!6105703 m!6956842))

(declare-fun m!6956844 () Bool)

(assert (=> b!6105703 m!6956844))

(declare-fun m!6956846 () Bool)

(assert (=> b!6105691 m!6956846))

(declare-fun m!6956848 () Bool)

(assert (=> b!6105691 m!6956848))

(declare-fun m!6956850 () Bool)

(assert (=> b!6105691 m!6956850))

(declare-fun m!6956852 () Bool)

(assert (=> b!6105692 m!6956852))

(declare-fun m!6956854 () Bool)

(assert (=> start!610454 m!6956854))

(check-sat (not b!6105691) (not b!6105688) (not start!610454) (not b!6105693) (not b!6105697) (not b!6105705) (not b!6105699) (not b!6105703) (not b!6105704) tp_is_empty!41367 (not b!6105692) (not b!6105702) (not b!6105694) (not b!6105698) (not b!6105689) (not b!6105701) (not b!6105690) (not setNonEmpty!41260) (not b!6105696))
(check-sat)
(get-model)

(declare-fun d!1913676 () Bool)

(declare-fun lt!2329705 () Regex!16057)

(assert (=> d!1913676 (validRegex!7793 lt!2329705)))

(assert (=> d!1913676 (= lt!2329705 (generalisedUnion!1901 (unfocusZipperList!1478 zl!343)))))

(assert (=> d!1913676 (= (unfocusZipper!1799 zl!343) lt!2329705)))

(declare-fun bs!1515969 () Bool)

(assert (= bs!1515969 d!1913676))

(declare-fun m!6956896 () Bool)

(assert (=> bs!1515969 m!6956896))

(assert (=> bs!1515969 m!6956842))

(assert (=> bs!1515969 m!6956842))

(assert (=> bs!1515969 m!6956844))

(assert (=> b!6105693 d!1913676))

(declare-fun b!6105799 () Bool)

(declare-fun e!3723571 () Bool)

(declare-fun lt!2329714 () Regex!16057)

(declare-fun isUnion!914 (Regex!16057) Bool)

(assert (=> b!6105799 (= e!3723571 (isUnion!914 lt!2329714))))

(declare-fun b!6105800 () Bool)

(declare-fun e!3723574 () Bool)

(assert (=> b!6105800 (= e!3723574 (isEmpty!36269 (t!377923 (unfocusZipperList!1478 zl!343))))))

(declare-fun b!6105801 () Bool)

(declare-fun e!3723569 () Regex!16057)

(assert (=> b!6105801 (= e!3723569 (Union!16057 (h!70794 (unfocusZipperList!1478 zl!343)) (generalisedUnion!1901 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(declare-fun b!6105802 () Bool)

(declare-fun head!12635 (List!64470) Regex!16057)

(assert (=> b!6105802 (= e!3723571 (= lt!2329714 (head!12635 (unfocusZipperList!1478 zl!343))))))

(declare-fun b!6105803 () Bool)

(declare-fun e!3723573 () Regex!16057)

(assert (=> b!6105803 (= e!3723573 (h!70794 (unfocusZipperList!1478 zl!343)))))

(declare-fun b!6105804 () Bool)

(assert (=> b!6105804 (= e!3723573 e!3723569)))

(declare-fun c!1096874 () Bool)

(assert (=> b!6105804 (= c!1096874 ((_ is Cons!64346) (unfocusZipperList!1478 zl!343)))))

(declare-fun b!6105806 () Bool)

(declare-fun e!3723570 () Bool)

(declare-fun isEmptyLang!1484 (Regex!16057) Bool)

(assert (=> b!6105806 (= e!3723570 (isEmptyLang!1484 lt!2329714))))

(declare-fun b!6105807 () Bool)

(declare-fun e!3723572 () Bool)

(assert (=> b!6105807 (= e!3723572 e!3723570)))

(declare-fun c!1096873 () Bool)

(assert (=> b!6105807 (= c!1096873 (isEmpty!36269 (unfocusZipperList!1478 zl!343)))))

(declare-fun b!6105808 () Bool)

(assert (=> b!6105808 (= e!3723570 e!3723571)))

(declare-fun c!1096872 () Bool)

(declare-fun tail!11720 (List!64470) List!64470)

(assert (=> b!6105808 (= c!1096872 (isEmpty!36269 (tail!11720 (unfocusZipperList!1478 zl!343))))))

(declare-fun b!6105805 () Bool)

(assert (=> b!6105805 (= e!3723569 EmptyLang!16057)))

(declare-fun d!1913684 () Bool)

(assert (=> d!1913684 e!3723572))

(declare-fun res!2533115 () Bool)

(assert (=> d!1913684 (=> (not res!2533115) (not e!3723572))))

(assert (=> d!1913684 (= res!2533115 (validRegex!7793 lt!2329714))))

(assert (=> d!1913684 (= lt!2329714 e!3723573)))

(declare-fun c!1096875 () Bool)

(assert (=> d!1913684 (= c!1096875 e!3723574)))

(declare-fun res!2533116 () Bool)

(assert (=> d!1913684 (=> (not res!2533116) (not e!3723574))))

(assert (=> d!1913684 (= res!2533116 ((_ is Cons!64346) (unfocusZipperList!1478 zl!343)))))

(declare-fun lambda!332688 () Int)

(declare-fun forall!15178 (List!64470 Int) Bool)

(assert (=> d!1913684 (forall!15178 (unfocusZipperList!1478 zl!343) lambda!332688)))

(assert (=> d!1913684 (= (generalisedUnion!1901 (unfocusZipperList!1478 zl!343)) lt!2329714)))

(assert (= (and d!1913684 res!2533116) b!6105800))

(assert (= (and d!1913684 c!1096875) b!6105803))

(assert (= (and d!1913684 (not c!1096875)) b!6105804))

(assert (= (and b!6105804 c!1096874) b!6105801))

(assert (= (and b!6105804 (not c!1096874)) b!6105805))

(assert (= (and d!1913684 res!2533115) b!6105807))

(assert (= (and b!6105807 c!1096873) b!6105806))

(assert (= (and b!6105807 (not c!1096873)) b!6105808))

(assert (= (and b!6105808 c!1096872) b!6105802))

(assert (= (and b!6105808 (not c!1096872)) b!6105799))

(declare-fun m!6956912 () Bool)

(assert (=> b!6105800 m!6956912))

(assert (=> b!6105808 m!6956842))

(declare-fun m!6956914 () Bool)

(assert (=> b!6105808 m!6956914))

(assert (=> b!6105808 m!6956914))

(declare-fun m!6956916 () Bool)

(assert (=> b!6105808 m!6956916))

(declare-fun m!6956918 () Bool)

(assert (=> b!6105806 m!6956918))

(declare-fun m!6956920 () Bool)

(assert (=> d!1913684 m!6956920))

(assert (=> d!1913684 m!6956842))

(declare-fun m!6956922 () Bool)

(assert (=> d!1913684 m!6956922))

(declare-fun m!6956924 () Bool)

(assert (=> b!6105801 m!6956924))

(assert (=> b!6105807 m!6956842))

(declare-fun m!6956926 () Bool)

(assert (=> b!6105807 m!6956926))

(declare-fun m!6956928 () Bool)

(assert (=> b!6105799 m!6956928))

(assert (=> b!6105802 m!6956842))

(declare-fun m!6956930 () Bool)

(assert (=> b!6105802 m!6956930))

(assert (=> b!6105703 d!1913684))

(declare-fun bs!1515981 () Bool)

(declare-fun d!1913694 () Bool)

(assert (= bs!1515981 (and d!1913694 d!1913684)))

(declare-fun lambda!332695 () Int)

(assert (=> bs!1515981 (= lambda!332695 lambda!332688)))

(declare-fun lt!2329720 () List!64470)

(assert (=> d!1913694 (forall!15178 lt!2329720 lambda!332695)))

(declare-fun e!3723595 () List!64470)

(assert (=> d!1913694 (= lt!2329720 e!3723595)))

(declare-fun c!1096890 () Bool)

(assert (=> d!1913694 (= c!1096890 ((_ is Cons!64347) zl!343))))

(assert (=> d!1913694 (= (unfocusZipperList!1478 zl!343) lt!2329720)))

(declare-fun b!6105843 () Bool)

(assert (=> b!6105843 (= e!3723595 (Cons!64346 (generalisedConcat!1654 (exprs!5941 (h!70795 zl!343))) (unfocusZipperList!1478 (t!377924 zl!343))))))

(declare-fun b!6105844 () Bool)

(assert (=> b!6105844 (= e!3723595 Nil!64346)))

(assert (= (and d!1913694 c!1096890) b!6105843))

(assert (= (and d!1913694 (not c!1096890)) b!6105844))

(declare-fun m!6956952 () Bool)

(assert (=> d!1913694 m!6956952))

(assert (=> b!6105843 m!6956820))

(declare-fun m!6956954 () Bool)

(assert (=> b!6105843 m!6956954))

(assert (=> b!6105703 d!1913694))

(declare-fun d!1913702 () Bool)

(declare-fun choose!45394 (Int) Bool)

(assert (=> d!1913702 (= (Exists!3127 lambda!332673) (choose!45394 lambda!332673))))

(declare-fun bs!1515982 () Bool)

(assert (= bs!1515982 d!1913702))

(declare-fun m!6956956 () Bool)

(assert (=> bs!1515982 m!6956956))

(assert (=> b!6105694 d!1913702))

(declare-fun b!6105963 () Bool)

(declare-fun e!3723661 () Bool)

(declare-fun lt!2329734 () Option!15948)

(declare-fun ++!14144 (List!64472 List!64472) List!64472)

(declare-fun get!22188 (Option!15948) tuple2!66072)

(assert (=> b!6105963 (= e!3723661 (= (++!14144 (_1!36339 (get!22188 lt!2329734)) (_2!36339 (get!22188 lt!2329734))) s!2326))))

(declare-fun b!6105964 () Bool)

(declare-fun e!3723664 () Option!15948)

(declare-fun e!3723663 () Option!15948)

(assert (=> b!6105964 (= e!3723664 e!3723663)))

(declare-fun c!1096922 () Bool)

(assert (=> b!6105964 (= c!1096922 ((_ is Nil!64348) s!2326))))

(declare-fun b!6105965 () Bool)

(declare-fun e!3723665 () Bool)

(assert (=> b!6105965 (= e!3723665 (not (isDefined!12651 lt!2329734)))))

(declare-fun b!6105966 () Bool)

(declare-fun e!3723662 () Bool)

(assert (=> b!6105966 (= e!3723662 (matchR!8240 (regTwo!32626 r!7292) s!2326))))

(declare-fun b!6105967 () Bool)

(assert (=> b!6105967 (= e!3723663 None!15947)))

(declare-fun b!6105968 () Bool)

(declare-fun lt!2329735 () Unit!157385)

(declare-fun lt!2329733 () Unit!157385)

(assert (=> b!6105968 (= lt!2329735 lt!2329733)))

(assert (=> b!6105968 (= (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (t!377925 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2239 (List!64472 C!32384 List!64472 List!64472) Unit!157385)

(assert (=> b!6105968 (= lt!2329733 (lemmaMoveElementToOtherListKeepsConcatEq!2239 Nil!64348 (h!70796 s!2326) (t!377925 s!2326) s!2326))))

(assert (=> b!6105968 (= e!3723663 (findConcatSeparation!2362 (regOne!32626 r!7292) (regTwo!32626 r!7292) (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (t!377925 s!2326) s!2326))))

(declare-fun b!6105969 () Bool)

(declare-fun res!2533179 () Bool)

(assert (=> b!6105969 (=> (not res!2533179) (not e!3723661))))

(assert (=> b!6105969 (= res!2533179 (matchR!8240 (regOne!32626 r!7292) (_1!36339 (get!22188 lt!2329734))))))

(declare-fun d!1913704 () Bool)

(assert (=> d!1913704 e!3723665))

(declare-fun res!2533181 () Bool)

(assert (=> d!1913704 (=> res!2533181 e!3723665)))

(assert (=> d!1913704 (= res!2533181 e!3723661)))

(declare-fun res!2533183 () Bool)

(assert (=> d!1913704 (=> (not res!2533183) (not e!3723661))))

(assert (=> d!1913704 (= res!2533183 (isDefined!12651 lt!2329734))))

(assert (=> d!1913704 (= lt!2329734 e!3723664)))

(declare-fun c!1096923 () Bool)

(assert (=> d!1913704 (= c!1096923 e!3723662)))

(declare-fun res!2533180 () Bool)

(assert (=> d!1913704 (=> (not res!2533180) (not e!3723662))))

(assert (=> d!1913704 (= res!2533180 (matchR!8240 (regOne!32626 r!7292) Nil!64348))))

(assert (=> d!1913704 (validRegex!7793 (regOne!32626 r!7292))))

(assert (=> d!1913704 (= (findConcatSeparation!2362 (regOne!32626 r!7292) (regTwo!32626 r!7292) Nil!64348 s!2326 s!2326) lt!2329734)))

(declare-fun b!6105970 () Bool)

(declare-fun res!2533182 () Bool)

(assert (=> b!6105970 (=> (not res!2533182) (not e!3723661))))

(assert (=> b!6105970 (= res!2533182 (matchR!8240 (regTwo!32626 r!7292) (_2!36339 (get!22188 lt!2329734))))))

(declare-fun b!6105971 () Bool)

(assert (=> b!6105971 (= e!3723664 (Some!15947 (tuple2!66073 Nil!64348 s!2326)))))

(assert (= (and d!1913704 res!2533180) b!6105966))

(assert (= (and d!1913704 c!1096923) b!6105971))

(assert (= (and d!1913704 (not c!1096923)) b!6105964))

(assert (= (and b!6105964 c!1096922) b!6105967))

(assert (= (and b!6105964 (not c!1096922)) b!6105968))

(assert (= (and d!1913704 res!2533183) b!6105969))

(assert (= (and b!6105969 res!2533179) b!6105970))

(assert (= (and b!6105970 res!2533182) b!6105963))

(assert (= (and d!1913704 (not res!2533181)) b!6105965))

(declare-fun m!6956986 () Bool)

(assert (=> b!6105963 m!6956986))

(declare-fun m!6956988 () Bool)

(assert (=> b!6105963 m!6956988))

(assert (=> b!6105970 m!6956986))

(declare-fun m!6956990 () Bool)

(assert (=> b!6105970 m!6956990))

(declare-fun m!6956992 () Bool)

(assert (=> d!1913704 m!6956992))

(declare-fun m!6956994 () Bool)

(assert (=> d!1913704 m!6956994))

(declare-fun m!6956996 () Bool)

(assert (=> d!1913704 m!6956996))

(assert (=> b!6105969 m!6956986))

(declare-fun m!6956998 () Bool)

(assert (=> b!6105969 m!6956998))

(declare-fun m!6957000 () Bool)

(assert (=> b!6105968 m!6957000))

(assert (=> b!6105968 m!6957000))

(declare-fun m!6957002 () Bool)

(assert (=> b!6105968 m!6957002))

(declare-fun m!6957004 () Bool)

(assert (=> b!6105968 m!6957004))

(assert (=> b!6105968 m!6957000))

(declare-fun m!6957006 () Bool)

(assert (=> b!6105968 m!6957006))

(assert (=> b!6105965 m!6956992))

(declare-fun m!6957008 () Bool)

(assert (=> b!6105966 m!6957008))

(assert (=> b!6105694 d!1913704))

(declare-fun d!1913714 () Bool)

(assert (=> d!1913714 (= (Exists!3127 lambda!332672) (choose!45394 lambda!332672))))

(declare-fun bs!1515991 () Bool)

(assert (= bs!1515991 d!1913714))

(declare-fun m!6957010 () Bool)

(assert (=> bs!1515991 m!6957010))

(assert (=> b!6105694 d!1913714))

(declare-fun bs!1516000 () Bool)

(declare-fun d!1913716 () Bool)

(assert (= bs!1516000 (and d!1913716 b!6105694)))

(declare-fun lambda!332710 () Int)

(assert (=> bs!1516000 (= lambda!332710 lambda!332672)))

(assert (=> bs!1516000 (not (= lambda!332710 lambda!332673))))

(assert (=> d!1913716 true))

(assert (=> d!1913716 true))

(assert (=> d!1913716 true))

(assert (=> d!1913716 (= (isDefined!12651 (findConcatSeparation!2362 (regOne!32626 r!7292) (regTwo!32626 r!7292) Nil!64348 s!2326 s!2326)) (Exists!3127 lambda!332710))))

(declare-fun lt!2329744 () Unit!157385)

(declare-fun choose!45395 (Regex!16057 Regex!16057 List!64472) Unit!157385)

(assert (=> d!1913716 (= lt!2329744 (choose!45395 (regOne!32626 r!7292) (regTwo!32626 r!7292) s!2326))))

(assert (=> d!1913716 (validRegex!7793 (regOne!32626 r!7292))))

(assert (=> d!1913716 (= (lemmaFindConcatSeparationEquivalentToExists!2126 (regOne!32626 r!7292) (regTwo!32626 r!7292) s!2326) lt!2329744)))

(declare-fun bs!1516001 () Bool)

(assert (= bs!1516001 d!1913716))

(assert (=> bs!1516001 m!6956822))

(assert (=> bs!1516001 m!6956824))

(declare-fun m!6957054 () Bool)

(assert (=> bs!1516001 m!6957054))

(assert (=> bs!1516001 m!6956996))

(declare-fun m!6957056 () Bool)

(assert (=> bs!1516001 m!6957056))

(assert (=> bs!1516001 m!6956822))

(assert (=> b!6105694 d!1913716))

(declare-fun bs!1516002 () Bool)

(declare-fun d!1913726 () Bool)

(assert (= bs!1516002 (and d!1913726 b!6105694)))

(declare-fun lambda!332715 () Int)

(assert (=> bs!1516002 (= lambda!332715 lambda!332672)))

(assert (=> bs!1516002 (not (= lambda!332715 lambda!332673))))

(declare-fun bs!1516003 () Bool)

(assert (= bs!1516003 (and d!1913726 d!1913716)))

(assert (=> bs!1516003 (= lambda!332715 lambda!332710)))

(assert (=> d!1913726 true))

(assert (=> d!1913726 true))

(assert (=> d!1913726 true))

(declare-fun lambda!332716 () Int)

(assert (=> bs!1516002 (not (= lambda!332716 lambda!332672))))

(assert (=> bs!1516002 (= lambda!332716 lambda!332673)))

(assert (=> bs!1516003 (not (= lambda!332716 lambda!332710))))

(declare-fun bs!1516004 () Bool)

(assert (= bs!1516004 d!1913726))

(assert (=> bs!1516004 (not (= lambda!332716 lambda!332715))))

(assert (=> d!1913726 true))

(assert (=> d!1913726 true))

(assert (=> d!1913726 true))

(assert (=> d!1913726 (= (Exists!3127 lambda!332715) (Exists!3127 lambda!332716))))

(declare-fun lt!2329750 () Unit!157385)

(declare-fun choose!45396 (Regex!16057 Regex!16057 List!64472) Unit!157385)

(assert (=> d!1913726 (= lt!2329750 (choose!45396 (regOne!32626 r!7292) (regTwo!32626 r!7292) s!2326))))

(assert (=> d!1913726 (validRegex!7793 (regOne!32626 r!7292))))

(assert (=> d!1913726 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1664 (regOne!32626 r!7292) (regTwo!32626 r!7292) s!2326) lt!2329750)))

(declare-fun m!6957062 () Bool)

(assert (=> bs!1516004 m!6957062))

(declare-fun m!6957064 () Bool)

(assert (=> bs!1516004 m!6957064))

(declare-fun m!6957066 () Bool)

(assert (=> bs!1516004 m!6957066))

(assert (=> bs!1516004 m!6956996))

(assert (=> b!6105694 d!1913726))

(declare-fun d!1913728 () Bool)

(declare-fun isEmpty!36273 (Option!15948) Bool)

(assert (=> d!1913728 (= (isDefined!12651 (findConcatSeparation!2362 (regOne!32626 r!7292) (regTwo!32626 r!7292) Nil!64348 s!2326 s!2326)) (not (isEmpty!36273 (findConcatSeparation!2362 (regOne!32626 r!7292) (regTwo!32626 r!7292) Nil!64348 s!2326 s!2326))))))

(declare-fun bs!1516005 () Bool)

(assert (= bs!1516005 d!1913728))

(assert (=> bs!1516005 m!6956822))

(declare-fun m!6957068 () Bool)

(assert (=> bs!1516005 m!6957068))

(assert (=> b!6105694 d!1913728))

(declare-fun bs!1516006 () Bool)

(declare-fun d!1913730 () Bool)

(assert (= bs!1516006 (and d!1913730 d!1913684)))

(declare-fun lambda!332719 () Int)

(assert (=> bs!1516006 (= lambda!332719 lambda!332688)))

(declare-fun bs!1516007 () Bool)

(assert (= bs!1516007 (and d!1913730 d!1913694)))

(assert (=> bs!1516007 (= lambda!332719 lambda!332695)))

(assert (=> d!1913730 (= (inv!83389 (h!70795 zl!343)) (forall!15178 (exprs!5941 (h!70795 zl!343)) lambda!332719))))

(declare-fun bs!1516008 () Bool)

(assert (= bs!1516008 d!1913730))

(declare-fun m!6957070 () Bool)

(assert (=> bs!1516008 m!6957070))

(assert (=> b!6105704 d!1913730))

(declare-fun b!6106130 () Bool)

(declare-fun e!3723756 () Bool)

(declare-fun e!3723757 () Bool)

(assert (=> b!6106130 (= e!3723756 e!3723757)))

(declare-fun c!1096960 () Bool)

(assert (=> b!6106130 (= c!1096960 ((_ is Union!16057) r!7292))))

(declare-fun b!6106131 () Bool)

(declare-fun e!3723755 () Bool)

(declare-fun call!505016 () Bool)

(assert (=> b!6106131 (= e!3723755 call!505016)))

(declare-fun b!6106132 () Bool)

(declare-fun e!3723753 () Bool)

(assert (=> b!6106132 (= e!3723753 e!3723756)))

(declare-fun c!1096961 () Bool)

(assert (=> b!6106132 (= c!1096961 ((_ is Star!16057) r!7292))))

(declare-fun bm!505010 () Bool)

(declare-fun call!505015 () Bool)

(assert (=> bm!505010 (= call!505016 call!505015)))

(declare-fun b!6106133 () Bool)

(declare-fun res!2533218 () Bool)

(declare-fun e!3723752 () Bool)

(assert (=> b!6106133 (=> res!2533218 e!3723752)))

(assert (=> b!6106133 (= res!2533218 (not ((_ is Concat!24902) r!7292)))))

(assert (=> b!6106133 (= e!3723757 e!3723752)))

(declare-fun b!6106134 () Bool)

(declare-fun e!3723754 () Bool)

(assert (=> b!6106134 (= e!3723754 call!505016)))

(declare-fun bm!505011 () Bool)

(assert (=> bm!505011 (= call!505015 (validRegex!7793 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))))

(declare-fun b!6106135 () Bool)

(declare-fun e!3723751 () Bool)

(assert (=> b!6106135 (= e!3723756 e!3723751)))

(declare-fun res!2533219 () Bool)

(declare-fun nullable!6050 (Regex!16057) Bool)

(assert (=> b!6106135 (= res!2533219 (not (nullable!6050 (reg!16386 r!7292))))))

(assert (=> b!6106135 (=> (not res!2533219) (not e!3723751))))

(declare-fun b!6106136 () Bool)

(assert (=> b!6106136 (= e!3723752 e!3723754)))

(declare-fun res!2533220 () Bool)

(assert (=> b!6106136 (=> (not res!2533220) (not e!3723754))))

(declare-fun call!505017 () Bool)

(assert (=> b!6106136 (= res!2533220 call!505017)))

(declare-fun b!6106137 () Bool)

(assert (=> b!6106137 (= e!3723751 call!505015)))

(declare-fun b!6106138 () Bool)

(declare-fun res!2533216 () Bool)

(assert (=> b!6106138 (=> (not res!2533216) (not e!3723755))))

(assert (=> b!6106138 (= res!2533216 call!505017)))

(assert (=> b!6106138 (= e!3723757 e!3723755)))

(declare-fun bm!505012 () Bool)

(assert (=> bm!505012 (= call!505017 (validRegex!7793 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))))

(declare-fun d!1913732 () Bool)

(declare-fun res!2533217 () Bool)

(assert (=> d!1913732 (=> res!2533217 e!3723753)))

(assert (=> d!1913732 (= res!2533217 ((_ is ElementMatch!16057) r!7292))))

(assert (=> d!1913732 (= (validRegex!7793 r!7292) e!3723753)))

(assert (= (and d!1913732 (not res!2533217)) b!6106132))

(assert (= (and b!6106132 c!1096961) b!6106135))

(assert (= (and b!6106132 (not c!1096961)) b!6106130))

(assert (= (and b!6106135 res!2533219) b!6106137))

(assert (= (and b!6106130 c!1096960) b!6106138))

(assert (= (and b!6106130 (not c!1096960)) b!6106133))

(assert (= (and b!6106138 res!2533216) b!6106131))

(assert (= (and b!6106133 (not res!2533218)) b!6106136))

(assert (= (and b!6106136 res!2533220) b!6106134))

(assert (= (or b!6106131 b!6106134) bm!505010))

(assert (= (or b!6106138 b!6106136) bm!505012))

(assert (= (or b!6106137 bm!505010) bm!505011))

(declare-fun m!6957072 () Bool)

(assert (=> bm!505011 m!6957072))

(declare-fun m!6957074 () Bool)

(assert (=> b!6106135 m!6957074))

(declare-fun m!6957076 () Bool)

(assert (=> bm!505012 m!6957076))

(assert (=> start!610454 d!1913732))

(declare-fun bs!1516009 () Bool)

(declare-fun d!1913734 () Bool)

(assert (= bs!1516009 (and d!1913734 d!1913684)))

(declare-fun lambda!332720 () Int)

(assert (=> bs!1516009 (= lambda!332720 lambda!332688)))

(declare-fun bs!1516010 () Bool)

(assert (= bs!1516010 (and d!1913734 d!1913694)))

(assert (=> bs!1516010 (= lambda!332720 lambda!332695)))

(declare-fun bs!1516011 () Bool)

(assert (= bs!1516011 (and d!1913734 d!1913730)))

(assert (=> bs!1516011 (= lambda!332720 lambda!332719)))

(assert (=> d!1913734 (= (inv!83389 setElem!41260) (forall!15178 (exprs!5941 setElem!41260) lambda!332720))))

(declare-fun bs!1516012 () Bool)

(assert (= bs!1516012 d!1913734))

(declare-fun m!6957078 () Bool)

(assert (=> bs!1516012 m!6957078))

(assert (=> setNonEmpty!41260 d!1913734))

(declare-fun d!1913736 () Bool)

(assert (=> d!1913736 (= (isEmpty!36270 (t!377924 zl!343)) ((_ is Nil!64347) (t!377924 zl!343)))))

(assert (=> b!6105705 d!1913736))

(declare-fun bs!1516013 () Bool)

(declare-fun b!6106172 () Bool)

(assert (= bs!1516013 (and b!6106172 d!1913716)))

(declare-fun lambda!332725 () Int)

(assert (=> bs!1516013 (not (= lambda!332725 lambda!332710))))

(declare-fun bs!1516014 () Bool)

(assert (= bs!1516014 (and b!6106172 d!1913726)))

(assert (=> bs!1516014 (not (= lambda!332725 lambda!332716))))

(declare-fun bs!1516015 () Bool)

(assert (= bs!1516015 (and b!6106172 b!6105694)))

(assert (=> bs!1516015 (not (= lambda!332725 lambda!332672))))

(assert (=> bs!1516014 (not (= lambda!332725 lambda!332715))))

(assert (=> bs!1516015 (not (= lambda!332725 lambda!332673))))

(assert (=> b!6106172 true))

(assert (=> b!6106172 true))

(declare-fun bs!1516016 () Bool)

(declare-fun b!6106173 () Bool)

(assert (= bs!1516016 (and b!6106173 d!1913716)))

(declare-fun lambda!332726 () Int)

(assert (=> bs!1516016 (not (= lambda!332726 lambda!332710))))

(declare-fun bs!1516017 () Bool)

(assert (= bs!1516017 (and b!6106173 d!1913726)))

(assert (=> bs!1516017 (= lambda!332726 lambda!332716)))

(declare-fun bs!1516018 () Bool)

(assert (= bs!1516018 (and b!6106173 b!6105694)))

(assert (=> bs!1516018 (not (= lambda!332726 lambda!332672))))

(assert (=> bs!1516017 (not (= lambda!332726 lambda!332715))))

(assert (=> bs!1516018 (= lambda!332726 lambda!332673)))

(declare-fun bs!1516019 () Bool)

(assert (= bs!1516019 (and b!6106173 b!6106172)))

(assert (=> bs!1516019 (not (= lambda!332726 lambda!332725))))

(assert (=> b!6106173 true))

(assert (=> b!6106173 true))

(declare-fun d!1913738 () Bool)

(declare-fun c!1096971 () Bool)

(assert (=> d!1913738 (= c!1096971 ((_ is EmptyExpr!16057) r!7292))))

(declare-fun e!3723776 () Bool)

(assert (=> d!1913738 (= (matchRSpec!3158 r!7292 s!2326) e!3723776)))

(declare-fun c!1096973 () Bool)

(declare-fun bm!505017 () Bool)

(declare-fun call!505023 () Bool)

(assert (=> bm!505017 (= call!505023 (Exists!3127 (ite c!1096973 lambda!332725 lambda!332726)))))

(declare-fun b!6106171 () Bool)

(declare-fun e!3723778 () Bool)

(declare-fun e!3723780 () Bool)

(assert (=> b!6106171 (= e!3723778 e!3723780)))

(assert (=> b!6106171 (= c!1096973 ((_ is Star!16057) r!7292))))

(declare-fun e!3723782 () Bool)

(assert (=> b!6106172 (= e!3723782 call!505023)))

(assert (=> b!6106173 (= e!3723780 call!505023)))

(declare-fun b!6106174 () Bool)

(declare-fun res!2533239 () Bool)

(assert (=> b!6106174 (=> res!2533239 e!3723782)))

(declare-fun call!505022 () Bool)

(assert (=> b!6106174 (= res!2533239 call!505022)))

(assert (=> b!6106174 (= e!3723780 e!3723782)))

(declare-fun b!6106175 () Bool)

(declare-fun e!3723781 () Bool)

(assert (=> b!6106175 (= e!3723778 e!3723781)))

(declare-fun res!2533237 () Bool)

(assert (=> b!6106175 (= res!2533237 (matchRSpec!3158 (regOne!32627 r!7292) s!2326))))

(assert (=> b!6106175 (=> res!2533237 e!3723781)))

(declare-fun bm!505018 () Bool)

(declare-fun isEmpty!36274 (List!64472) Bool)

(assert (=> bm!505018 (= call!505022 (isEmpty!36274 s!2326))))

(declare-fun b!6106176 () Bool)

(declare-fun e!3723777 () Bool)

(assert (=> b!6106176 (= e!3723777 (= s!2326 (Cons!64348 (c!1096851 r!7292) Nil!64348)))))

(declare-fun b!6106177 () Bool)

(declare-fun c!1096972 () Bool)

(assert (=> b!6106177 (= c!1096972 ((_ is Union!16057) r!7292))))

(assert (=> b!6106177 (= e!3723777 e!3723778)))

(declare-fun b!6106178 () Bool)

(declare-fun e!3723779 () Bool)

(assert (=> b!6106178 (= e!3723776 e!3723779)))

(declare-fun res!2533238 () Bool)

(assert (=> b!6106178 (= res!2533238 (not ((_ is EmptyLang!16057) r!7292)))))

(assert (=> b!6106178 (=> (not res!2533238) (not e!3723779))))

(declare-fun b!6106179 () Bool)

(assert (=> b!6106179 (= e!3723781 (matchRSpec!3158 (regTwo!32627 r!7292) s!2326))))

(declare-fun b!6106180 () Bool)

(declare-fun c!1096970 () Bool)

(assert (=> b!6106180 (= c!1096970 ((_ is ElementMatch!16057) r!7292))))

(assert (=> b!6106180 (= e!3723779 e!3723777)))

(declare-fun b!6106181 () Bool)

(assert (=> b!6106181 (= e!3723776 call!505022)))

(assert (= (and d!1913738 c!1096971) b!6106181))

(assert (= (and d!1913738 (not c!1096971)) b!6106178))

(assert (= (and b!6106178 res!2533238) b!6106180))

(assert (= (and b!6106180 c!1096970) b!6106176))

(assert (= (and b!6106180 (not c!1096970)) b!6106177))

(assert (= (and b!6106177 c!1096972) b!6106175))

(assert (= (and b!6106177 (not c!1096972)) b!6106171))

(assert (= (and b!6106175 (not res!2533237)) b!6106179))

(assert (= (and b!6106171 c!1096973) b!6106174))

(assert (= (and b!6106171 (not c!1096973)) b!6106173))

(assert (= (and b!6106174 (not res!2533239)) b!6106172))

(assert (= (or b!6106172 b!6106173) bm!505017))

(assert (= (or b!6106181 b!6106174) bm!505018))

(declare-fun m!6957080 () Bool)

(assert (=> bm!505017 m!6957080))

(declare-fun m!6957082 () Bool)

(assert (=> b!6106175 m!6957082))

(declare-fun m!6957084 () Bool)

(assert (=> bm!505018 m!6957084))

(declare-fun m!6957086 () Bool)

(assert (=> b!6106179 m!6957086))

(assert (=> b!6105691 d!1913738))

(declare-fun b!6106210 () Bool)

(declare-fun res!2533260 () Bool)

(declare-fun e!3723803 () Bool)

(assert (=> b!6106210 (=> (not res!2533260) (not e!3723803))))

(declare-fun call!505026 () Bool)

(assert (=> b!6106210 (= res!2533260 (not call!505026))))

(declare-fun b!6106211 () Bool)

(declare-fun res!2533261 () Bool)

(declare-fun e!3723801 () Bool)

(assert (=> b!6106211 (=> res!2533261 e!3723801)))

(assert (=> b!6106211 (= res!2533261 (not ((_ is ElementMatch!16057) r!7292)))))

(declare-fun e!3723798 () Bool)

(assert (=> b!6106211 (= e!3723798 e!3723801)))

(declare-fun b!6106212 () Bool)

(declare-fun res!2533263 () Bool)

(assert (=> b!6106212 (=> (not res!2533263) (not e!3723803))))

(declare-fun tail!11721 (List!64472) List!64472)

(assert (=> b!6106212 (= res!2533263 (isEmpty!36274 (tail!11721 s!2326)))))

(declare-fun b!6106213 () Bool)

(declare-fun e!3723802 () Bool)

(declare-fun head!12636 (List!64472) C!32384)

(assert (=> b!6106213 (= e!3723802 (not (= (head!12636 s!2326) (c!1096851 r!7292))))))

(declare-fun b!6106214 () Bool)

(assert (=> b!6106214 (= e!3723803 (= (head!12636 s!2326) (c!1096851 r!7292)))))

(declare-fun b!6106215 () Bool)

(declare-fun res!2533258 () Bool)

(assert (=> b!6106215 (=> res!2533258 e!3723802)))

(assert (=> b!6106215 (= res!2533258 (not (isEmpty!36274 (tail!11721 s!2326))))))

(declare-fun b!6106217 () Bool)

(declare-fun e!3723799 () Bool)

(assert (=> b!6106217 (= e!3723799 e!3723802)))

(declare-fun res!2533262 () Bool)

(assert (=> b!6106217 (=> res!2533262 e!3723802)))

(assert (=> b!6106217 (= res!2533262 call!505026)))

(declare-fun b!6106218 () Bool)

(assert (=> b!6106218 (= e!3723801 e!3723799)))

(declare-fun res!2533256 () Bool)

(assert (=> b!6106218 (=> (not res!2533256) (not e!3723799))))

(declare-fun lt!2329753 () Bool)

(assert (=> b!6106218 (= res!2533256 (not lt!2329753))))

(declare-fun b!6106219 () Bool)

(declare-fun e!3723800 () Bool)

(assert (=> b!6106219 (= e!3723800 e!3723798)))

(declare-fun c!1096981 () Bool)

(assert (=> b!6106219 (= c!1096981 ((_ is EmptyLang!16057) r!7292))))

(declare-fun b!6106220 () Bool)

(declare-fun e!3723797 () Bool)

(declare-fun derivativeStep!4778 (Regex!16057 C!32384) Regex!16057)

(assert (=> b!6106220 (= e!3723797 (matchR!8240 (derivativeStep!4778 r!7292 (head!12636 s!2326)) (tail!11721 s!2326)))))

(declare-fun b!6106221 () Bool)

(assert (=> b!6106221 (= e!3723797 (nullable!6050 r!7292))))

(declare-fun b!6106222 () Bool)

(assert (=> b!6106222 (= e!3723798 (not lt!2329753))))

(declare-fun b!6106223 () Bool)

(declare-fun res!2533259 () Bool)

(assert (=> b!6106223 (=> res!2533259 e!3723801)))

(assert (=> b!6106223 (= res!2533259 e!3723803)))

(declare-fun res!2533257 () Bool)

(assert (=> b!6106223 (=> (not res!2533257) (not e!3723803))))

(assert (=> b!6106223 (= res!2533257 lt!2329753)))

(declare-fun bm!505021 () Bool)

(assert (=> bm!505021 (= call!505026 (isEmpty!36274 s!2326))))

(declare-fun b!6106216 () Bool)

(assert (=> b!6106216 (= e!3723800 (= lt!2329753 call!505026))))

(declare-fun d!1913740 () Bool)

(assert (=> d!1913740 e!3723800))

(declare-fun c!1096982 () Bool)

(assert (=> d!1913740 (= c!1096982 ((_ is EmptyExpr!16057) r!7292))))

(assert (=> d!1913740 (= lt!2329753 e!3723797)))

(declare-fun c!1096980 () Bool)

(assert (=> d!1913740 (= c!1096980 (isEmpty!36274 s!2326))))

(assert (=> d!1913740 (validRegex!7793 r!7292)))

(assert (=> d!1913740 (= (matchR!8240 r!7292 s!2326) lt!2329753)))

(assert (= (and d!1913740 c!1096980) b!6106221))

(assert (= (and d!1913740 (not c!1096980)) b!6106220))

(assert (= (and d!1913740 c!1096982) b!6106216))

(assert (= (and d!1913740 (not c!1096982)) b!6106219))

(assert (= (and b!6106219 c!1096981) b!6106222))

(assert (= (and b!6106219 (not c!1096981)) b!6106211))

(assert (= (and b!6106211 (not res!2533261)) b!6106223))

(assert (= (and b!6106223 res!2533257) b!6106210))

(assert (= (and b!6106210 res!2533260) b!6106212))

(assert (= (and b!6106212 res!2533263) b!6106214))

(assert (= (and b!6106223 (not res!2533259)) b!6106218))

(assert (= (and b!6106218 res!2533256) b!6106217))

(assert (= (and b!6106217 (not res!2533262)) b!6106215))

(assert (= (and b!6106215 (not res!2533258)) b!6106213))

(assert (= (or b!6106216 b!6106210 b!6106217) bm!505021))

(declare-fun m!6957088 () Bool)

(assert (=> b!6106213 m!6957088))

(assert (=> b!6106214 m!6957088))

(assert (=> bm!505021 m!6957084))

(assert (=> b!6106220 m!6957088))

(assert (=> b!6106220 m!6957088))

(declare-fun m!6957090 () Bool)

(assert (=> b!6106220 m!6957090))

(declare-fun m!6957092 () Bool)

(assert (=> b!6106220 m!6957092))

(assert (=> b!6106220 m!6957090))

(assert (=> b!6106220 m!6957092))

(declare-fun m!6957094 () Bool)

(assert (=> b!6106220 m!6957094))

(assert (=> b!6106212 m!6957092))

(assert (=> b!6106212 m!6957092))

(declare-fun m!6957096 () Bool)

(assert (=> b!6106212 m!6957096))

(assert (=> b!6106215 m!6957092))

(assert (=> b!6106215 m!6957092))

(assert (=> b!6106215 m!6957096))

(declare-fun m!6957098 () Bool)

(assert (=> b!6106221 m!6957098))

(assert (=> d!1913740 m!6957084))

(assert (=> d!1913740 m!6956854))

(assert (=> b!6105691 d!1913740))

(declare-fun d!1913742 () Bool)

(assert (=> d!1913742 (= (matchR!8240 r!7292 s!2326) (matchRSpec!3158 r!7292 s!2326))))

(declare-fun lt!2329756 () Unit!157385)

(declare-fun choose!45397 (Regex!16057 List!64472) Unit!157385)

(assert (=> d!1913742 (= lt!2329756 (choose!45397 r!7292 s!2326))))

(assert (=> d!1913742 (validRegex!7793 r!7292)))

(assert (=> d!1913742 (= (mainMatchTheorem!3158 r!7292 s!2326) lt!2329756)))

(declare-fun bs!1516020 () Bool)

(assert (= bs!1516020 d!1913742))

(assert (=> bs!1516020 m!6956848))

(assert (=> bs!1516020 m!6956846))

(declare-fun m!6957100 () Bool)

(assert (=> bs!1516020 m!6957100))

(assert (=> bs!1516020 m!6956854))

(assert (=> b!6105691 d!1913742))

(declare-fun d!1913744 () Bool)

(declare-fun e!3723806 () Bool)

(assert (=> d!1913744 e!3723806))

(declare-fun res!2533266 () Bool)

(assert (=> d!1913744 (=> (not res!2533266) (not e!3723806))))

(declare-fun lt!2329759 () List!64471)

(declare-fun noDuplicate!1904 (List!64471) Bool)

(assert (=> d!1913744 (= res!2533266 (noDuplicate!1904 lt!2329759))))

(declare-fun choose!45398 ((InoxSet Context!10882)) List!64471)

(assert (=> d!1913744 (= lt!2329759 (choose!45398 z!1189))))

(assert (=> d!1913744 (= (toList!9841 z!1189) lt!2329759)))

(declare-fun b!6106226 () Bool)

(declare-fun content!11939 (List!64471) (InoxSet Context!10882))

(assert (=> b!6106226 (= e!3723806 (= (content!11939 lt!2329759) z!1189))))

(assert (= (and d!1913744 res!2533266) b!6106226))

(declare-fun m!6957102 () Bool)

(assert (=> d!1913744 m!6957102))

(declare-fun m!6957104 () Bool)

(assert (=> d!1913744 m!6957104))

(declare-fun m!6957106 () Bool)

(assert (=> b!6106226 m!6957106))

(assert (=> b!6105701 d!1913744))

(declare-fun d!1913746 () Bool)

(assert (=> d!1913746 (= (isEmpty!36269 (t!377923 (exprs!5941 (h!70795 zl!343)))) ((_ is Nil!64346) (t!377923 (exprs!5941 (h!70795 zl!343)))))))

(assert (=> b!6105692 d!1913746))

(declare-fun bs!1516021 () Bool)

(declare-fun d!1913748 () Bool)

(assert (= bs!1516021 (and d!1913748 d!1913684)))

(declare-fun lambda!332729 () Int)

(assert (=> bs!1516021 (= lambda!332729 lambda!332688)))

(declare-fun bs!1516022 () Bool)

(assert (= bs!1516022 (and d!1913748 d!1913694)))

(assert (=> bs!1516022 (= lambda!332729 lambda!332695)))

(declare-fun bs!1516023 () Bool)

(assert (= bs!1516023 (and d!1913748 d!1913730)))

(assert (=> bs!1516023 (= lambda!332729 lambda!332719)))

(declare-fun bs!1516024 () Bool)

(assert (= bs!1516024 (and d!1913748 d!1913734)))

(assert (=> bs!1516024 (= lambda!332729 lambda!332720)))

(declare-fun b!6106247 () Bool)

(declare-fun e!3723823 () Regex!16057)

(assert (=> b!6106247 (= e!3723823 EmptyExpr!16057)))

(declare-fun b!6106248 () Bool)

(declare-fun e!3723819 () Regex!16057)

(assert (=> b!6106248 (= e!3723819 e!3723823)))

(declare-fun c!1096994 () Bool)

(assert (=> b!6106248 (= c!1096994 ((_ is Cons!64346) (exprs!5941 (h!70795 zl!343))))))

(declare-fun b!6106249 () Bool)

(declare-fun e!3723820 () Bool)

(declare-fun lt!2329762 () Regex!16057)

(assert (=> b!6106249 (= e!3723820 (= lt!2329762 (head!12635 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun b!6106250 () Bool)

(declare-fun isConcat!997 (Regex!16057) Bool)

(assert (=> b!6106250 (= e!3723820 (isConcat!997 lt!2329762))))

(declare-fun e!3723822 () Bool)

(assert (=> d!1913748 e!3723822))

(declare-fun res!2533272 () Bool)

(assert (=> d!1913748 (=> (not res!2533272) (not e!3723822))))

(assert (=> d!1913748 (= res!2533272 (validRegex!7793 lt!2329762))))

(assert (=> d!1913748 (= lt!2329762 e!3723819)))

(declare-fun c!1096992 () Bool)

(declare-fun e!3723821 () Bool)

(assert (=> d!1913748 (= c!1096992 e!3723821)))

(declare-fun res!2533271 () Bool)

(assert (=> d!1913748 (=> (not res!2533271) (not e!3723821))))

(assert (=> d!1913748 (= res!2533271 ((_ is Cons!64346) (exprs!5941 (h!70795 zl!343))))))

(assert (=> d!1913748 (forall!15178 (exprs!5941 (h!70795 zl!343)) lambda!332729)))

(assert (=> d!1913748 (= (generalisedConcat!1654 (exprs!5941 (h!70795 zl!343))) lt!2329762)))

(declare-fun b!6106251 () Bool)

(declare-fun e!3723824 () Bool)

(declare-fun isEmptyExpr!1474 (Regex!16057) Bool)

(assert (=> b!6106251 (= e!3723824 (isEmptyExpr!1474 lt!2329762))))

(declare-fun b!6106252 () Bool)

(assert (=> b!6106252 (= e!3723821 (isEmpty!36269 (t!377923 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun b!6106253 () Bool)

(assert (=> b!6106253 (= e!3723823 (Concat!24902 (h!70794 (exprs!5941 (h!70795 zl!343))) (generalisedConcat!1654 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun b!6106254 () Bool)

(assert (=> b!6106254 (= e!3723819 (h!70794 (exprs!5941 (h!70795 zl!343))))))

(declare-fun b!6106255 () Bool)

(assert (=> b!6106255 (= e!3723822 e!3723824)))

(declare-fun c!1096993 () Bool)

(assert (=> b!6106255 (= c!1096993 (isEmpty!36269 (exprs!5941 (h!70795 zl!343))))))

(declare-fun b!6106256 () Bool)

(assert (=> b!6106256 (= e!3723824 e!3723820)))

(declare-fun c!1096991 () Bool)

(assert (=> b!6106256 (= c!1096991 (isEmpty!36269 (tail!11720 (exprs!5941 (h!70795 zl!343)))))))

(assert (= (and d!1913748 res!2533271) b!6106252))

(assert (= (and d!1913748 c!1096992) b!6106254))

(assert (= (and d!1913748 (not c!1096992)) b!6106248))

(assert (= (and b!6106248 c!1096994) b!6106253))

(assert (= (and b!6106248 (not c!1096994)) b!6106247))

(assert (= (and d!1913748 res!2533272) b!6106255))

(assert (= (and b!6106255 c!1096993) b!6106251))

(assert (= (and b!6106255 (not c!1096993)) b!6106256))

(assert (= (and b!6106256 c!1096991) b!6106249))

(assert (= (and b!6106256 (not c!1096991)) b!6106250))

(assert (=> b!6106252 m!6956852))

(declare-fun m!6957108 () Bool)

(assert (=> d!1913748 m!6957108))

(declare-fun m!6957110 () Bool)

(assert (=> d!1913748 m!6957110))

(declare-fun m!6957112 () Bool)

(assert (=> b!6106255 m!6957112))

(declare-fun m!6957114 () Bool)

(assert (=> b!6106250 m!6957114))

(declare-fun m!6957116 () Bool)

(assert (=> b!6106253 m!6957116))

(declare-fun m!6957118 () Bool)

(assert (=> b!6106251 m!6957118))

(declare-fun m!6957120 () Bool)

(assert (=> b!6106249 m!6957120))

(declare-fun m!6957122 () Bool)

(assert (=> b!6106256 m!6957122))

(assert (=> b!6106256 m!6957122))

(declare-fun m!6957124 () Bool)

(assert (=> b!6106256 m!6957124))

(assert (=> b!6105690 d!1913748))

(declare-fun b!6106267 () Bool)

(declare-fun e!3723832 () Bool)

(assert (=> b!6106267 (= e!3723832 (nullable!6050 (h!70794 (exprs!5941 lt!2329690))))))

(declare-fun b!6106268 () Bool)

(declare-fun e!3723833 () (InoxSet Context!10882))

(declare-fun call!505029 () (InoxSet Context!10882))

(assert (=> b!6106268 (= e!3723833 call!505029)))

(declare-fun b!6106269 () Bool)

(declare-fun e!3723831 () (InoxSet Context!10882))

(assert (=> b!6106269 (= e!3723831 e!3723833)))

(declare-fun c!1097000 () Bool)

(assert (=> b!6106269 (= c!1097000 ((_ is Cons!64346) (exprs!5941 lt!2329690)))))

(declare-fun bm!505024 () Bool)

(assert (=> bm!505024 (= call!505029 (derivationStepZipperDown!1305 (h!70794 (exprs!5941 lt!2329690)) (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (h!70796 s!2326)))))

(declare-fun b!6106270 () Bool)

(assert (=> b!6106270 (= e!3723831 ((_ map or) call!505029 (derivationStepZipperUp!1231 (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (h!70796 s!2326))))))

(declare-fun b!6106271 () Bool)

(assert (=> b!6106271 (= e!3723833 ((as const (Array Context!10882 Bool)) false))))

(declare-fun d!1913750 () Bool)

(declare-fun c!1096999 () Bool)

(assert (=> d!1913750 (= c!1096999 e!3723832)))

(declare-fun res!2533275 () Bool)

(assert (=> d!1913750 (=> (not res!2533275) (not e!3723832))))

(assert (=> d!1913750 (= res!2533275 ((_ is Cons!64346) (exprs!5941 lt!2329690)))))

(assert (=> d!1913750 (= (derivationStepZipperUp!1231 lt!2329690 (h!70796 s!2326)) e!3723831)))

(assert (= (and d!1913750 res!2533275) b!6106267))

(assert (= (and d!1913750 c!1096999) b!6106270))

(assert (= (and d!1913750 (not c!1096999)) b!6106269))

(assert (= (and b!6106269 c!1097000) b!6106268))

(assert (= (and b!6106269 (not c!1097000)) b!6106271))

(assert (= (or b!6106270 b!6106268) bm!505024))

(declare-fun m!6957126 () Bool)

(assert (=> b!6106267 m!6957126))

(declare-fun m!6957128 () Bool)

(assert (=> bm!505024 m!6957128))

(declare-fun m!6957130 () Bool)

(assert (=> b!6106270 m!6957130))

(assert (=> b!6105699 d!1913750))

(declare-fun b!6106294 () Bool)

(declare-fun e!3723851 () (InoxSet Context!10882))

(declare-fun e!3723850 () (InoxSet Context!10882))

(assert (=> b!6106294 (= e!3723851 e!3723850)))

(declare-fun c!1097012 () Bool)

(assert (=> b!6106294 (= c!1097012 ((_ is Union!16057) (h!70794 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun bm!505037 () Bool)

(declare-fun c!1097014 () Bool)

(declare-fun call!505042 () List!64470)

(declare-fun c!1097015 () Bool)

(declare-fun $colon$colon!1934 (List!64470 Regex!16057) List!64470)

(assert (=> bm!505037 (= call!505042 ($colon$colon!1934 (exprs!5941 lt!2329690) (ite (or c!1097014 c!1097015) (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (h!70794 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun b!6106295 () Bool)

(declare-fun e!3723847 () (InoxSet Context!10882))

(declare-fun call!505045 () (InoxSet Context!10882))

(assert (=> b!6106295 (= e!3723847 call!505045)))

(declare-fun bm!505038 () Bool)

(declare-fun call!505043 () (InoxSet Context!10882))

(declare-fun call!505047 () (InoxSet Context!10882))

(assert (=> bm!505038 (= call!505043 call!505047)))

(declare-fun b!6106296 () Bool)

(declare-fun call!505046 () (InoxSet Context!10882))

(assert (=> b!6106296 (= e!3723850 ((_ map or) call!505047 call!505046))))

(declare-fun bm!505039 () Bool)

(assert (=> bm!505039 (= call!505045 call!505043)))

(declare-fun b!6106297 () Bool)

(declare-fun e!3723848 () (InoxSet Context!10882))

(assert (=> b!6106297 (= e!3723848 ((_ map or) call!505046 call!505043))))

(declare-fun b!6106298 () Bool)

(declare-fun e!3723846 () Bool)

(assert (=> b!6106298 (= e!3723846 (nullable!6050 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun d!1913752 () Bool)

(declare-fun c!1097011 () Bool)

(assert (=> d!1913752 (= c!1097011 (and ((_ is ElementMatch!16057) (h!70794 (exprs!5941 (h!70795 zl!343)))) (= (c!1096851 (h!70794 (exprs!5941 (h!70795 zl!343)))) (h!70796 s!2326))))))

(assert (=> d!1913752 (= (derivationStepZipperDown!1305 (h!70794 (exprs!5941 (h!70795 zl!343))) lt!2329690 (h!70796 s!2326)) e!3723851)))

(declare-fun bm!505040 () Bool)

(assert (=> bm!505040 (= call!505046 (derivationStepZipperDown!1305 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))) (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (h!70796 s!2326)))))

(declare-fun b!6106299 () Bool)

(assert (=> b!6106299 (= e!3723851 (store ((as const (Array Context!10882 Bool)) false) lt!2329690 true))))

(declare-fun b!6106300 () Bool)

(assert (=> b!6106300 (= c!1097014 e!3723846)))

(declare-fun res!2533278 () Bool)

(assert (=> b!6106300 (=> (not res!2533278) (not e!3723846))))

(assert (=> b!6106300 (= res!2533278 ((_ is Concat!24902) (h!70794 (exprs!5941 (h!70795 zl!343)))))))

(assert (=> b!6106300 (= e!3723850 e!3723848)))

(declare-fun b!6106301 () Bool)

(declare-fun c!1097013 () Bool)

(assert (=> b!6106301 (= c!1097013 ((_ is Star!16057) (h!70794 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun e!3723849 () (InoxSet Context!10882))

(assert (=> b!6106301 (= e!3723847 e!3723849)))

(declare-fun call!505044 () List!64470)

(declare-fun bm!505041 () Bool)

(assert (=> bm!505041 (= call!505047 (derivationStepZipperDown!1305 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))) (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (h!70796 s!2326)))))

(declare-fun bm!505042 () Bool)

(assert (=> bm!505042 (= call!505044 call!505042)))

(declare-fun b!6106302 () Bool)

(assert (=> b!6106302 (= e!3723849 call!505045)))

(declare-fun b!6106303 () Bool)

(assert (=> b!6106303 (= e!3723848 e!3723847)))

(assert (=> b!6106303 (= c!1097015 ((_ is Concat!24902) (h!70794 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun b!6106304 () Bool)

(assert (=> b!6106304 (= e!3723849 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1913752 c!1097011) b!6106299))

(assert (= (and d!1913752 (not c!1097011)) b!6106294))

(assert (= (and b!6106294 c!1097012) b!6106296))

(assert (= (and b!6106294 (not c!1097012)) b!6106300))

(assert (= (and b!6106300 res!2533278) b!6106298))

(assert (= (and b!6106300 c!1097014) b!6106297))

(assert (= (and b!6106300 (not c!1097014)) b!6106303))

(assert (= (and b!6106303 c!1097015) b!6106295))

(assert (= (and b!6106303 (not c!1097015)) b!6106301))

(assert (= (and b!6106301 c!1097013) b!6106302))

(assert (= (and b!6106301 (not c!1097013)) b!6106304))

(assert (= (or b!6106295 b!6106302) bm!505042))

(assert (= (or b!6106295 b!6106302) bm!505039))

(assert (= (or b!6106297 bm!505042) bm!505037))

(assert (= (or b!6106297 bm!505039) bm!505038))

(assert (= (or b!6106296 b!6106297) bm!505040))

(assert (= (or b!6106296 bm!505038) bm!505041))

(declare-fun m!6957132 () Bool)

(assert (=> b!6106298 m!6957132))

(declare-fun m!6957134 () Bool)

(assert (=> bm!505037 m!6957134))

(declare-fun m!6957136 () Bool)

(assert (=> bm!505040 m!6957136))

(declare-fun m!6957138 () Bool)

(assert (=> b!6106299 m!6957138))

(declare-fun m!6957140 () Bool)

(assert (=> bm!505041 m!6957140))

(assert (=> b!6105699 d!1913752))

(declare-fun b!6106305 () Bool)

(declare-fun e!3723853 () Bool)

(assert (=> b!6106305 (= e!3723853 (nullable!6050 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))

(declare-fun b!6106306 () Bool)

(declare-fun e!3723854 () (InoxSet Context!10882))

(declare-fun call!505048 () (InoxSet Context!10882))

(assert (=> b!6106306 (= e!3723854 call!505048)))

(declare-fun b!6106307 () Bool)

(declare-fun e!3723852 () (InoxSet Context!10882))

(assert (=> b!6106307 (= e!3723852 e!3723854)))

(declare-fun c!1097017 () Bool)

(assert (=> b!6106307 (= c!1097017 ((_ is Cons!64346) (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))

(declare-fun bm!505043 () Bool)

(assert (=> bm!505043 (= call!505048 (derivationStepZipperDown!1305 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (h!70796 s!2326)))))

(declare-fun b!6106308 () Bool)

(assert (=> b!6106308 (= e!3723852 ((_ map or) call!505048 (derivationStepZipperUp!1231 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (h!70796 s!2326))))))

(declare-fun b!6106309 () Bool)

(assert (=> b!6106309 (= e!3723854 ((as const (Array Context!10882 Bool)) false))))

(declare-fun d!1913754 () Bool)

(declare-fun c!1097016 () Bool)

(assert (=> d!1913754 (= c!1097016 e!3723853)))

(declare-fun res!2533279 () Bool)

(assert (=> d!1913754 (=> (not res!2533279) (not e!3723853))))

(assert (=> d!1913754 (= res!2533279 ((_ is Cons!64346) (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))

(assert (=> d!1913754 (= (derivationStepZipperUp!1231 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))) (h!70796 s!2326)) e!3723852)))

(assert (= (and d!1913754 res!2533279) b!6106305))

(assert (= (and d!1913754 c!1097016) b!6106308))

(assert (= (and d!1913754 (not c!1097016)) b!6106307))

(assert (= (and b!6106307 c!1097017) b!6106306))

(assert (= (and b!6106307 (not c!1097017)) b!6106309))

(assert (= (or b!6106308 b!6106306) bm!505043))

(declare-fun m!6957142 () Bool)

(assert (=> b!6106305 m!6957142))

(declare-fun m!6957144 () Bool)

(assert (=> bm!505043 m!6957144))

(declare-fun m!6957146 () Bool)

(assert (=> b!6106308 m!6957146))

(assert (=> b!6105699 d!1913754))

(declare-fun b!6106323 () Bool)

(declare-fun e!3723857 () Bool)

(declare-fun tp!1704847 () Bool)

(declare-fun tp!1704851 () Bool)

(assert (=> b!6106323 (= e!3723857 (and tp!1704847 tp!1704851))))

(declare-fun b!6106321 () Bool)

(declare-fun tp!1704848 () Bool)

(declare-fun tp!1704849 () Bool)

(assert (=> b!6106321 (= e!3723857 (and tp!1704848 tp!1704849))))

(assert (=> b!6105696 (= tp!1704772 e!3723857)))

(declare-fun b!6106320 () Bool)

(assert (=> b!6106320 (= e!3723857 tp_is_empty!41367)))

(declare-fun b!6106322 () Bool)

(declare-fun tp!1704850 () Bool)

(assert (=> b!6106322 (= e!3723857 tp!1704850)))

(assert (= (and b!6105696 ((_ is ElementMatch!16057) (regOne!32626 r!7292))) b!6106320))

(assert (= (and b!6105696 ((_ is Concat!24902) (regOne!32626 r!7292))) b!6106321))

(assert (= (and b!6105696 ((_ is Star!16057) (regOne!32626 r!7292))) b!6106322))

(assert (= (and b!6105696 ((_ is Union!16057) (regOne!32626 r!7292))) b!6106323))

(declare-fun b!6106327 () Bool)

(declare-fun e!3723858 () Bool)

(declare-fun tp!1704852 () Bool)

(declare-fun tp!1704856 () Bool)

(assert (=> b!6106327 (= e!3723858 (and tp!1704852 tp!1704856))))

(declare-fun b!6106325 () Bool)

(declare-fun tp!1704853 () Bool)

(declare-fun tp!1704854 () Bool)

(assert (=> b!6106325 (= e!3723858 (and tp!1704853 tp!1704854))))

(assert (=> b!6105696 (= tp!1704769 e!3723858)))

(declare-fun b!6106324 () Bool)

(assert (=> b!6106324 (= e!3723858 tp_is_empty!41367)))

(declare-fun b!6106326 () Bool)

(declare-fun tp!1704855 () Bool)

(assert (=> b!6106326 (= e!3723858 tp!1704855)))

(assert (= (and b!6105696 ((_ is ElementMatch!16057) (regTwo!32626 r!7292))) b!6106324))

(assert (= (and b!6105696 ((_ is Concat!24902) (regTwo!32626 r!7292))) b!6106325))

(assert (= (and b!6105696 ((_ is Star!16057) (regTwo!32626 r!7292))) b!6106326))

(assert (= (and b!6105696 ((_ is Union!16057) (regTwo!32626 r!7292))) b!6106327))

(declare-fun b!6106332 () Bool)

(declare-fun e!3723861 () Bool)

(declare-fun tp!1704861 () Bool)

(declare-fun tp!1704862 () Bool)

(assert (=> b!6106332 (= e!3723861 (and tp!1704861 tp!1704862))))

(assert (=> b!6105702 (= tp!1704777 e!3723861)))

(assert (= (and b!6105702 ((_ is Cons!64346) (exprs!5941 (h!70795 zl!343)))) b!6106332))

(declare-fun b!6106336 () Bool)

(declare-fun e!3723862 () Bool)

(declare-fun tp!1704863 () Bool)

(declare-fun tp!1704867 () Bool)

(assert (=> b!6106336 (= e!3723862 (and tp!1704863 tp!1704867))))

(declare-fun b!6106334 () Bool)

(declare-fun tp!1704864 () Bool)

(declare-fun tp!1704865 () Bool)

(assert (=> b!6106334 (= e!3723862 (and tp!1704864 tp!1704865))))

(assert (=> b!6105688 (= tp!1704774 e!3723862)))

(declare-fun b!6106333 () Bool)

(assert (=> b!6106333 (= e!3723862 tp_is_empty!41367)))

(declare-fun b!6106335 () Bool)

(declare-fun tp!1704866 () Bool)

(assert (=> b!6106335 (= e!3723862 tp!1704866)))

(assert (= (and b!6105688 ((_ is ElementMatch!16057) (regOne!32627 r!7292))) b!6106333))

(assert (= (and b!6105688 ((_ is Concat!24902) (regOne!32627 r!7292))) b!6106334))

(assert (= (and b!6105688 ((_ is Star!16057) (regOne!32627 r!7292))) b!6106335))

(assert (= (and b!6105688 ((_ is Union!16057) (regOne!32627 r!7292))) b!6106336))

(declare-fun b!6106340 () Bool)

(declare-fun e!3723863 () Bool)

(declare-fun tp!1704868 () Bool)

(declare-fun tp!1704872 () Bool)

(assert (=> b!6106340 (= e!3723863 (and tp!1704868 tp!1704872))))

(declare-fun b!6106338 () Bool)

(declare-fun tp!1704869 () Bool)

(declare-fun tp!1704870 () Bool)

(assert (=> b!6106338 (= e!3723863 (and tp!1704869 tp!1704870))))

(assert (=> b!6105688 (= tp!1704771 e!3723863)))

(declare-fun b!6106337 () Bool)

(assert (=> b!6106337 (= e!3723863 tp_is_empty!41367)))

(declare-fun b!6106339 () Bool)

(declare-fun tp!1704871 () Bool)

(assert (=> b!6106339 (= e!3723863 tp!1704871)))

(assert (= (and b!6105688 ((_ is ElementMatch!16057) (regTwo!32627 r!7292))) b!6106337))

(assert (= (and b!6105688 ((_ is Concat!24902) (regTwo!32627 r!7292))) b!6106338))

(assert (= (and b!6105688 ((_ is Star!16057) (regTwo!32627 r!7292))) b!6106339))

(assert (= (and b!6105688 ((_ is Union!16057) (regTwo!32627 r!7292))) b!6106340))

(declare-fun b!6106345 () Bool)

(declare-fun e!3723866 () Bool)

(declare-fun tp!1704875 () Bool)

(assert (=> b!6106345 (= e!3723866 (and tp_is_empty!41367 tp!1704875))))

(assert (=> b!6105697 (= tp!1704778 e!3723866)))

(assert (= (and b!6105697 ((_ is Cons!64348) (t!377925 s!2326))) b!6106345))

(declare-fun b!6106349 () Bool)

(declare-fun e!3723867 () Bool)

(declare-fun tp!1704876 () Bool)

(declare-fun tp!1704880 () Bool)

(assert (=> b!6106349 (= e!3723867 (and tp!1704876 tp!1704880))))

(declare-fun b!6106347 () Bool)

(declare-fun tp!1704877 () Bool)

(declare-fun tp!1704878 () Bool)

(assert (=> b!6106347 (= e!3723867 (and tp!1704877 tp!1704878))))

(assert (=> b!6105689 (= tp!1704776 e!3723867)))

(declare-fun b!6106346 () Bool)

(assert (=> b!6106346 (= e!3723867 tp_is_empty!41367)))

(declare-fun b!6106348 () Bool)

(declare-fun tp!1704879 () Bool)

(assert (=> b!6106348 (= e!3723867 tp!1704879)))

(assert (= (and b!6105689 ((_ is ElementMatch!16057) (reg!16386 r!7292))) b!6106346))

(assert (= (and b!6105689 ((_ is Concat!24902) (reg!16386 r!7292))) b!6106347))

(assert (= (and b!6105689 ((_ is Star!16057) (reg!16386 r!7292))) b!6106348))

(assert (= (and b!6105689 ((_ is Union!16057) (reg!16386 r!7292))) b!6106349))

(declare-fun b!6106350 () Bool)

(declare-fun e!3723868 () Bool)

(declare-fun tp!1704881 () Bool)

(declare-fun tp!1704882 () Bool)

(assert (=> b!6106350 (= e!3723868 (and tp!1704881 tp!1704882))))

(assert (=> b!6105698 (= tp!1704773 e!3723868)))

(assert (= (and b!6105698 ((_ is Cons!64346) (exprs!5941 setElem!41260))) b!6106350))

(declare-fun b!6106358 () Bool)

(declare-fun e!3723874 () Bool)

(declare-fun tp!1704887 () Bool)

(assert (=> b!6106358 (= e!3723874 tp!1704887)))

(declare-fun e!3723873 () Bool)

(declare-fun b!6106357 () Bool)

(declare-fun tp!1704888 () Bool)

(assert (=> b!6106357 (= e!3723873 (and (inv!83389 (h!70795 (t!377924 zl!343))) e!3723874 tp!1704888))))

(assert (=> b!6105704 (= tp!1704775 e!3723873)))

(assert (= b!6106357 b!6106358))

(assert (= (and b!6105704 ((_ is Cons!64347) (t!377924 zl!343))) b!6106357))

(declare-fun m!6957148 () Bool)

(assert (=> b!6106357 m!6957148))

(declare-fun condSetEmpty!41266 () Bool)

(assert (=> setNonEmpty!41260 (= condSetEmpty!41266 (= setRest!41260 ((as const (Array Context!10882 Bool)) false)))))

(declare-fun setRes!41266 () Bool)

(assert (=> setNonEmpty!41260 (= tp!1704770 setRes!41266)))

(declare-fun setIsEmpty!41266 () Bool)

(assert (=> setIsEmpty!41266 setRes!41266))

(declare-fun setNonEmpty!41266 () Bool)

(declare-fun tp!1704894 () Bool)

(declare-fun setElem!41266 () Context!10882)

(declare-fun e!3723877 () Bool)

(assert (=> setNonEmpty!41266 (= setRes!41266 (and tp!1704894 (inv!83389 setElem!41266) e!3723877))))

(declare-fun setRest!41266 () (InoxSet Context!10882))

(assert (=> setNonEmpty!41266 (= setRest!41260 ((_ map or) (store ((as const (Array Context!10882 Bool)) false) setElem!41266 true) setRest!41266))))

(declare-fun b!6106363 () Bool)

(declare-fun tp!1704893 () Bool)

(assert (=> b!6106363 (= e!3723877 tp!1704893)))

(assert (= (and setNonEmpty!41260 condSetEmpty!41266) setIsEmpty!41266))

(assert (= (and setNonEmpty!41260 (not condSetEmpty!41266)) setNonEmpty!41266))

(assert (= setNonEmpty!41266 b!6106363))

(declare-fun m!6957150 () Bool)

(assert (=> setNonEmpty!41266 m!6957150))

(check-sat (not d!1913694) (not b!6106253) (not d!1913726) (not b!6105963) (not b!6105970) (not d!1913730) (not b!6105969) (not b!6106323) (not b!6106326) (not b!6106213) (not b!6106357) (not b!6106335) (not b!6106339) (not b!6106249) (not b!6105801) (not b!6105965) (not bm!505043) (not b!6106250) (not b!6106325) (not b!6106215) (not b!6106338) (not b!6106252) (not b!6106322) (not b!6106270) (not b!6106256) (not b!6106220) (not b!6106298) (not b!6106350) (not bm!505011) (not b!6106214) (not d!1913734) (not b!6106135) (not b!6106363) (not b!6106332) (not bm!505017) (not b!6106327) (not bm!505021) (not bm!505040) (not d!1913728) (not b!6106345) (not bm!505024) (not b!6105966) (not bm!505041) (not b!6106340) (not d!1913714) (not d!1913704) (not b!6105807) (not d!1913716) (not b!6106251) (not d!1913742) (not d!1913676) (not d!1913740) (not b!6106221) (not b!6105806) (not b!6106226) (not b!6106212) (not b!6106336) (not d!1913748) (not b!6105800) (not b!6106179) (not b!6106305) (not bm!505037) (not d!1913702) (not b!6106348) (not b!6106347) (not b!6106308) (not b!6106321) (not b!6106267) (not b!6105802) (not b!6106255) (not b!6105799) (not b!6105843) (not b!6106349) (not b!6105808) (not d!1913744) (not b!6106334) (not b!6105968) (not bm!505018) (not bm!505012) (not b!6106358) (not b!6106175) (not d!1913684) (not setNonEmpty!41266) tp_is_empty!41367)
(check-sat)
(get-model)

(declare-fun b!6106808 () Bool)

(declare-fun res!2533427 () Bool)

(declare-fun e!3724121 () Bool)

(assert (=> b!6106808 (=> (not res!2533427) (not e!3724121))))

(declare-fun call!505114 () Bool)

(assert (=> b!6106808 (= res!2533427 (not call!505114))))

(declare-fun b!6106809 () Bool)

(declare-fun res!2533428 () Bool)

(declare-fun e!3724119 () Bool)

(assert (=> b!6106809 (=> res!2533428 e!3724119)))

(assert (=> b!6106809 (= res!2533428 (not ((_ is ElementMatch!16057) (regTwo!32626 r!7292))))))

(declare-fun e!3724116 () Bool)

(assert (=> b!6106809 (= e!3724116 e!3724119)))

(declare-fun b!6106810 () Bool)

(declare-fun res!2533430 () Bool)

(assert (=> b!6106810 (=> (not res!2533430) (not e!3724121))))

(assert (=> b!6106810 (= res!2533430 (isEmpty!36274 (tail!11721 s!2326)))))

(declare-fun b!6106811 () Bool)

(declare-fun e!3724120 () Bool)

(assert (=> b!6106811 (= e!3724120 (not (= (head!12636 s!2326) (c!1096851 (regTwo!32626 r!7292)))))))

(declare-fun b!6106812 () Bool)

(assert (=> b!6106812 (= e!3724121 (= (head!12636 s!2326) (c!1096851 (regTwo!32626 r!7292))))))

(declare-fun b!6106813 () Bool)

(declare-fun res!2533425 () Bool)

(assert (=> b!6106813 (=> res!2533425 e!3724120)))

(assert (=> b!6106813 (= res!2533425 (not (isEmpty!36274 (tail!11721 s!2326))))))

(declare-fun b!6106815 () Bool)

(declare-fun e!3724117 () Bool)

(assert (=> b!6106815 (= e!3724117 e!3724120)))

(declare-fun res!2533429 () Bool)

(assert (=> b!6106815 (=> res!2533429 e!3724120)))

(assert (=> b!6106815 (= res!2533429 call!505114)))

(declare-fun b!6106816 () Bool)

(assert (=> b!6106816 (= e!3724119 e!3724117)))

(declare-fun res!2533423 () Bool)

(assert (=> b!6106816 (=> (not res!2533423) (not e!3724117))))

(declare-fun lt!2329785 () Bool)

(assert (=> b!6106816 (= res!2533423 (not lt!2329785))))

(declare-fun b!6106817 () Bool)

(declare-fun e!3724118 () Bool)

(assert (=> b!6106817 (= e!3724118 e!3724116)))

(declare-fun c!1097112 () Bool)

(assert (=> b!6106817 (= c!1097112 ((_ is EmptyLang!16057) (regTwo!32626 r!7292)))))

(declare-fun b!6106818 () Bool)

(declare-fun e!3724115 () Bool)

(assert (=> b!6106818 (= e!3724115 (matchR!8240 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 s!2326)) (tail!11721 s!2326)))))

(declare-fun b!6106819 () Bool)

(assert (=> b!6106819 (= e!3724115 (nullable!6050 (regTwo!32626 r!7292)))))

(declare-fun b!6106820 () Bool)

(assert (=> b!6106820 (= e!3724116 (not lt!2329785))))

(declare-fun b!6106821 () Bool)

(declare-fun res!2533426 () Bool)

(assert (=> b!6106821 (=> res!2533426 e!3724119)))

(assert (=> b!6106821 (= res!2533426 e!3724121)))

(declare-fun res!2533424 () Bool)

(assert (=> b!6106821 (=> (not res!2533424) (not e!3724121))))

(assert (=> b!6106821 (= res!2533424 lt!2329785)))

(declare-fun bm!505109 () Bool)

(assert (=> bm!505109 (= call!505114 (isEmpty!36274 s!2326))))

(declare-fun b!6106814 () Bool)

(assert (=> b!6106814 (= e!3724118 (= lt!2329785 call!505114))))

(declare-fun d!1913912 () Bool)

(assert (=> d!1913912 e!3724118))

(declare-fun c!1097113 () Bool)

(assert (=> d!1913912 (= c!1097113 ((_ is EmptyExpr!16057) (regTwo!32626 r!7292)))))

(assert (=> d!1913912 (= lt!2329785 e!3724115)))

(declare-fun c!1097111 () Bool)

(assert (=> d!1913912 (= c!1097111 (isEmpty!36274 s!2326))))

(assert (=> d!1913912 (validRegex!7793 (regTwo!32626 r!7292))))

(assert (=> d!1913912 (= (matchR!8240 (regTwo!32626 r!7292) s!2326) lt!2329785)))

(assert (= (and d!1913912 c!1097111) b!6106819))

(assert (= (and d!1913912 (not c!1097111)) b!6106818))

(assert (= (and d!1913912 c!1097113) b!6106814))

(assert (= (and d!1913912 (not c!1097113)) b!6106817))

(assert (= (and b!6106817 c!1097112) b!6106820))

(assert (= (and b!6106817 (not c!1097112)) b!6106809))

(assert (= (and b!6106809 (not res!2533428)) b!6106821))

(assert (= (and b!6106821 res!2533424) b!6106808))

(assert (= (and b!6106808 res!2533427) b!6106810))

(assert (= (and b!6106810 res!2533430) b!6106812))

(assert (= (and b!6106821 (not res!2533426)) b!6106816))

(assert (= (and b!6106816 res!2533423) b!6106815))

(assert (= (and b!6106815 (not res!2533429)) b!6106813))

(assert (= (and b!6106813 (not res!2533425)) b!6106811))

(assert (= (or b!6106814 b!6106808 b!6106815) bm!505109))

(assert (=> b!6106811 m!6957088))

(assert (=> b!6106812 m!6957088))

(assert (=> bm!505109 m!6957084))

(assert (=> b!6106818 m!6957088))

(assert (=> b!6106818 m!6957088))

(declare-fun m!6957504 () Bool)

(assert (=> b!6106818 m!6957504))

(assert (=> b!6106818 m!6957092))

(assert (=> b!6106818 m!6957504))

(assert (=> b!6106818 m!6957092))

(declare-fun m!6957506 () Bool)

(assert (=> b!6106818 m!6957506))

(assert (=> b!6106810 m!6957092))

(assert (=> b!6106810 m!6957092))

(assert (=> b!6106810 m!6957096))

(assert (=> b!6106813 m!6957092))

(assert (=> b!6106813 m!6957092))

(assert (=> b!6106813 m!6957096))

(declare-fun m!6957508 () Bool)

(assert (=> b!6106819 m!6957508))

(assert (=> d!1913912 m!6957084))

(declare-fun m!6957510 () Bool)

(assert (=> d!1913912 m!6957510))

(assert (=> b!6105966 d!1913912))

(declare-fun d!1913914 () Bool)

(assert (=> d!1913914 (= (isConcat!997 lt!2329762) ((_ is Concat!24902) lt!2329762))))

(assert (=> b!6106250 d!1913914))

(declare-fun b!6106822 () Bool)

(declare-fun res!2533435 () Bool)

(declare-fun e!3724128 () Bool)

(assert (=> b!6106822 (=> (not res!2533435) (not e!3724128))))

(declare-fun call!505115 () Bool)

(assert (=> b!6106822 (= res!2533435 (not call!505115))))

(declare-fun b!6106823 () Bool)

(declare-fun res!2533436 () Bool)

(declare-fun e!3724126 () Bool)

(assert (=> b!6106823 (=> res!2533436 e!3724126)))

(assert (=> b!6106823 (= res!2533436 (not ((_ is ElementMatch!16057) (derivativeStep!4778 r!7292 (head!12636 s!2326)))))))

(declare-fun e!3724123 () Bool)

(assert (=> b!6106823 (= e!3724123 e!3724126)))

(declare-fun b!6106824 () Bool)

(declare-fun res!2533438 () Bool)

(assert (=> b!6106824 (=> (not res!2533438) (not e!3724128))))

(assert (=> b!6106824 (= res!2533438 (isEmpty!36274 (tail!11721 (tail!11721 s!2326))))))

(declare-fun b!6106825 () Bool)

(declare-fun e!3724127 () Bool)

(assert (=> b!6106825 (= e!3724127 (not (= (head!12636 (tail!11721 s!2326)) (c!1096851 (derivativeStep!4778 r!7292 (head!12636 s!2326))))))))

(declare-fun b!6106826 () Bool)

(assert (=> b!6106826 (= e!3724128 (= (head!12636 (tail!11721 s!2326)) (c!1096851 (derivativeStep!4778 r!7292 (head!12636 s!2326)))))))

(declare-fun b!6106827 () Bool)

(declare-fun res!2533433 () Bool)

(assert (=> b!6106827 (=> res!2533433 e!3724127)))

(assert (=> b!6106827 (= res!2533433 (not (isEmpty!36274 (tail!11721 (tail!11721 s!2326)))))))

(declare-fun b!6106829 () Bool)

(declare-fun e!3724124 () Bool)

(assert (=> b!6106829 (= e!3724124 e!3724127)))

(declare-fun res!2533437 () Bool)

(assert (=> b!6106829 (=> res!2533437 e!3724127)))

(assert (=> b!6106829 (= res!2533437 call!505115)))

(declare-fun b!6106830 () Bool)

(assert (=> b!6106830 (= e!3724126 e!3724124)))

(declare-fun res!2533431 () Bool)

(assert (=> b!6106830 (=> (not res!2533431) (not e!3724124))))

(declare-fun lt!2329786 () Bool)

(assert (=> b!6106830 (= res!2533431 (not lt!2329786))))

(declare-fun b!6106831 () Bool)

(declare-fun e!3724125 () Bool)

(assert (=> b!6106831 (= e!3724125 e!3724123)))

(declare-fun c!1097115 () Bool)

(assert (=> b!6106831 (= c!1097115 ((_ is EmptyLang!16057) (derivativeStep!4778 r!7292 (head!12636 s!2326))))))

(declare-fun b!6106832 () Bool)

(declare-fun e!3724122 () Bool)

(assert (=> b!6106832 (= e!3724122 (matchR!8240 (derivativeStep!4778 (derivativeStep!4778 r!7292 (head!12636 s!2326)) (head!12636 (tail!11721 s!2326))) (tail!11721 (tail!11721 s!2326))))))

(declare-fun b!6106833 () Bool)

(assert (=> b!6106833 (= e!3724122 (nullable!6050 (derivativeStep!4778 r!7292 (head!12636 s!2326))))))

(declare-fun b!6106834 () Bool)

(assert (=> b!6106834 (= e!3724123 (not lt!2329786))))

(declare-fun b!6106835 () Bool)

(declare-fun res!2533434 () Bool)

(assert (=> b!6106835 (=> res!2533434 e!3724126)))

(assert (=> b!6106835 (= res!2533434 e!3724128)))

(declare-fun res!2533432 () Bool)

(assert (=> b!6106835 (=> (not res!2533432) (not e!3724128))))

(assert (=> b!6106835 (= res!2533432 lt!2329786)))

(declare-fun bm!505110 () Bool)

(assert (=> bm!505110 (= call!505115 (isEmpty!36274 (tail!11721 s!2326)))))

(declare-fun b!6106828 () Bool)

(assert (=> b!6106828 (= e!3724125 (= lt!2329786 call!505115))))

(declare-fun d!1913916 () Bool)

(assert (=> d!1913916 e!3724125))

(declare-fun c!1097116 () Bool)

(assert (=> d!1913916 (= c!1097116 ((_ is EmptyExpr!16057) (derivativeStep!4778 r!7292 (head!12636 s!2326))))))

(assert (=> d!1913916 (= lt!2329786 e!3724122)))

(declare-fun c!1097114 () Bool)

(assert (=> d!1913916 (= c!1097114 (isEmpty!36274 (tail!11721 s!2326)))))

(assert (=> d!1913916 (validRegex!7793 (derivativeStep!4778 r!7292 (head!12636 s!2326)))))

(assert (=> d!1913916 (= (matchR!8240 (derivativeStep!4778 r!7292 (head!12636 s!2326)) (tail!11721 s!2326)) lt!2329786)))

(assert (= (and d!1913916 c!1097114) b!6106833))

(assert (= (and d!1913916 (not c!1097114)) b!6106832))

(assert (= (and d!1913916 c!1097116) b!6106828))

(assert (= (and d!1913916 (not c!1097116)) b!6106831))

(assert (= (and b!6106831 c!1097115) b!6106834))

(assert (= (and b!6106831 (not c!1097115)) b!6106823))

(assert (= (and b!6106823 (not res!2533436)) b!6106835))

(assert (= (and b!6106835 res!2533432) b!6106822))

(assert (= (and b!6106822 res!2533435) b!6106824))

(assert (= (and b!6106824 res!2533438) b!6106826))

(assert (= (and b!6106835 (not res!2533434)) b!6106830))

(assert (= (and b!6106830 res!2533431) b!6106829))

(assert (= (and b!6106829 (not res!2533437)) b!6106827))

(assert (= (and b!6106827 (not res!2533433)) b!6106825))

(assert (= (or b!6106828 b!6106822 b!6106829) bm!505110))

(assert (=> b!6106825 m!6957092))

(declare-fun m!6957512 () Bool)

(assert (=> b!6106825 m!6957512))

(assert (=> b!6106826 m!6957092))

(assert (=> b!6106826 m!6957512))

(assert (=> bm!505110 m!6957092))

(assert (=> bm!505110 m!6957096))

(assert (=> b!6106832 m!6957092))

(assert (=> b!6106832 m!6957512))

(assert (=> b!6106832 m!6957090))

(assert (=> b!6106832 m!6957512))

(declare-fun m!6957514 () Bool)

(assert (=> b!6106832 m!6957514))

(assert (=> b!6106832 m!6957092))

(declare-fun m!6957516 () Bool)

(assert (=> b!6106832 m!6957516))

(assert (=> b!6106832 m!6957514))

(assert (=> b!6106832 m!6957516))

(declare-fun m!6957518 () Bool)

(assert (=> b!6106832 m!6957518))

(assert (=> b!6106824 m!6957092))

(assert (=> b!6106824 m!6957516))

(assert (=> b!6106824 m!6957516))

(declare-fun m!6957520 () Bool)

(assert (=> b!6106824 m!6957520))

(assert (=> b!6106827 m!6957092))

(assert (=> b!6106827 m!6957516))

(assert (=> b!6106827 m!6957516))

(assert (=> b!6106827 m!6957520))

(assert (=> b!6106833 m!6957090))

(declare-fun m!6957522 () Bool)

(assert (=> b!6106833 m!6957522))

(assert (=> d!1913916 m!6957092))

(assert (=> d!1913916 m!6957096))

(assert (=> d!1913916 m!6957090))

(declare-fun m!6957524 () Bool)

(assert (=> d!1913916 m!6957524))

(assert (=> b!6106220 d!1913916))

(declare-fun b!6106856 () Bool)

(declare-fun e!3724143 () Regex!16057)

(declare-fun call!505127 () Regex!16057)

(assert (=> b!6106856 (= e!3724143 (Union!16057 (Concat!24902 call!505127 (regTwo!32626 r!7292)) EmptyLang!16057))))

(declare-fun d!1913918 () Bool)

(declare-fun lt!2329789 () Regex!16057)

(assert (=> d!1913918 (validRegex!7793 lt!2329789)))

(declare-fun e!3724142 () Regex!16057)

(assert (=> d!1913918 (= lt!2329789 e!3724142)))

(declare-fun c!1097127 () Bool)

(assert (=> d!1913918 (= c!1097127 (or ((_ is EmptyExpr!16057) r!7292) ((_ is EmptyLang!16057) r!7292)))))

(assert (=> d!1913918 (validRegex!7793 r!7292)))

(assert (=> d!1913918 (= (derivativeStep!4778 r!7292 (head!12636 s!2326)) lt!2329789)))

(declare-fun bm!505119 () Bool)

(declare-fun call!505125 () Regex!16057)

(declare-fun call!505126 () Regex!16057)

(assert (=> bm!505119 (= call!505125 call!505126)))

(declare-fun bm!505120 () Bool)

(assert (=> bm!505120 (= call!505127 call!505125)))

(declare-fun bm!505121 () Bool)

(declare-fun call!505124 () Regex!16057)

(declare-fun c!1097131 () Bool)

(assert (=> bm!505121 (= call!505124 (derivativeStep!4778 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292)) (head!12636 s!2326)))))

(declare-fun bm!505122 () Bool)

(declare-fun c!1097129 () Bool)

(declare-fun c!1097128 () Bool)

(assert (=> bm!505122 (= call!505126 (derivativeStep!4778 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292)))) (head!12636 s!2326)))))

(declare-fun b!6106857 () Bool)

(declare-fun e!3724140 () Regex!16057)

(declare-fun e!3724141 () Regex!16057)

(assert (=> b!6106857 (= e!3724140 e!3724141)))

(assert (=> b!6106857 (= c!1097129 ((_ is Star!16057) r!7292))))

(declare-fun b!6106858 () Bool)

(assert (=> b!6106858 (= e!3724141 (Concat!24902 call!505125 r!7292))))

(declare-fun b!6106859 () Bool)

(assert (=> b!6106859 (= c!1097128 (nullable!6050 (regOne!32626 r!7292)))))

(assert (=> b!6106859 (= e!3724141 e!3724143)))

(declare-fun b!6106860 () Bool)

(declare-fun e!3724139 () Regex!16057)

(assert (=> b!6106860 (= e!3724139 (ite (= (head!12636 s!2326) (c!1096851 r!7292)) EmptyExpr!16057 EmptyLang!16057))))

(declare-fun b!6106861 () Bool)

(assert (=> b!6106861 (= e!3724142 EmptyLang!16057)))

(declare-fun b!6106862 () Bool)

(assert (=> b!6106862 (= e!3724142 e!3724139)))

(declare-fun c!1097130 () Bool)

(assert (=> b!6106862 (= c!1097130 ((_ is ElementMatch!16057) r!7292))))

(declare-fun b!6106863 () Bool)

(assert (=> b!6106863 (= e!3724140 (Union!16057 call!505124 call!505126))))

(declare-fun b!6106864 () Bool)

(assert (=> b!6106864 (= c!1097131 ((_ is Union!16057) r!7292))))

(assert (=> b!6106864 (= e!3724139 e!3724140)))

(declare-fun b!6106865 () Bool)

(assert (=> b!6106865 (= e!3724143 (Union!16057 (Concat!24902 call!505124 (regTwo!32626 r!7292)) call!505127))))

(assert (= (and d!1913918 c!1097127) b!6106861))

(assert (= (and d!1913918 (not c!1097127)) b!6106862))

(assert (= (and b!6106862 c!1097130) b!6106860))

(assert (= (and b!6106862 (not c!1097130)) b!6106864))

(assert (= (and b!6106864 c!1097131) b!6106863))

(assert (= (and b!6106864 (not c!1097131)) b!6106857))

(assert (= (and b!6106857 c!1097129) b!6106858))

(assert (= (and b!6106857 (not c!1097129)) b!6106859))

(assert (= (and b!6106859 c!1097128) b!6106865))

(assert (= (and b!6106859 (not c!1097128)) b!6106856))

(assert (= (or b!6106865 b!6106856) bm!505120))

(assert (= (or b!6106858 bm!505120) bm!505119))

(assert (= (or b!6106863 bm!505119) bm!505122))

(assert (= (or b!6106863 b!6106865) bm!505121))

(declare-fun m!6957526 () Bool)

(assert (=> d!1913918 m!6957526))

(assert (=> d!1913918 m!6956854))

(assert (=> bm!505121 m!6957088))

(declare-fun m!6957528 () Bool)

(assert (=> bm!505121 m!6957528))

(assert (=> bm!505122 m!6957088))

(declare-fun m!6957530 () Bool)

(assert (=> bm!505122 m!6957530))

(declare-fun m!6957532 () Bool)

(assert (=> b!6106859 m!6957532))

(assert (=> b!6106220 d!1913918))

(declare-fun d!1913920 () Bool)

(assert (=> d!1913920 (= (head!12636 s!2326) (h!70796 s!2326))))

(assert (=> b!6106220 d!1913920))

(declare-fun d!1913922 () Bool)

(assert (=> d!1913922 (= (tail!11721 s!2326) (t!377925 s!2326))))

(assert (=> b!6106220 d!1913922))

(declare-fun d!1913924 () Bool)

(assert (=> d!1913924 (= (isEmpty!36274 s!2326) ((_ is Nil!64348) s!2326))))

(assert (=> d!1913740 d!1913924))

(assert (=> d!1913740 d!1913732))

(assert (=> bm!505021 d!1913924))

(declare-fun b!6106866 () Bool)

(declare-fun e!3724145 () Bool)

(assert (=> b!6106866 (= e!3724145 (nullable!6050 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))))

(declare-fun b!6106867 () Bool)

(declare-fun e!3724146 () (InoxSet Context!10882))

(declare-fun call!505128 () (InoxSet Context!10882))

(assert (=> b!6106867 (= e!3724146 call!505128)))

(declare-fun b!6106868 () Bool)

(declare-fun e!3724144 () (InoxSet Context!10882))

(assert (=> b!6106868 (= e!3724144 e!3724146)))

(declare-fun c!1097133 () Bool)

(assert (=> b!6106868 (= c!1097133 ((_ is Cons!64346) (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))

(declare-fun bm!505123 () Bool)

(assert (=> bm!505123 (= call!505128 (derivationStepZipperDown!1305 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (h!70796 s!2326)))))

(declare-fun b!6106869 () Bool)

(assert (=> b!6106869 (= e!3724144 ((_ map or) call!505128 (derivationStepZipperUp!1231 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (h!70796 s!2326))))))

(declare-fun b!6106870 () Bool)

(assert (=> b!6106870 (= e!3724146 ((as const (Array Context!10882 Bool)) false))))

(declare-fun d!1913926 () Bool)

(declare-fun c!1097132 () Bool)

(assert (=> d!1913926 (= c!1097132 e!3724145)))

(declare-fun res!2533439 () Bool)

(assert (=> d!1913926 (=> (not res!2533439) (not e!3724145))))

(assert (=> d!1913926 (= res!2533439 ((_ is Cons!64346) (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))

(assert (=> d!1913926 (= (derivationStepZipperUp!1231 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (h!70796 s!2326)) e!3724144)))

(assert (= (and d!1913926 res!2533439) b!6106866))

(assert (= (and d!1913926 c!1097132) b!6106869))

(assert (= (and d!1913926 (not c!1097132)) b!6106868))

(assert (= (and b!6106868 c!1097133) b!6106867))

(assert (= (and b!6106868 (not c!1097133)) b!6106870))

(assert (= (or b!6106869 b!6106867) bm!505123))

(declare-fun m!6957534 () Bool)

(assert (=> b!6106866 m!6957534))

(declare-fun m!6957536 () Bool)

(assert (=> bm!505123 m!6957536))

(declare-fun m!6957538 () Bool)

(assert (=> b!6106869 m!6957538))

(assert (=> b!6106308 d!1913926))

(assert (=> b!6106252 d!1913746))

(declare-fun d!1913928 () Bool)

(declare-fun res!2533444 () Bool)

(declare-fun e!3724151 () Bool)

(assert (=> d!1913928 (=> res!2533444 e!3724151)))

(assert (=> d!1913928 (= res!2533444 ((_ is Nil!64346) (exprs!5941 setElem!41260)))))

(assert (=> d!1913928 (= (forall!15178 (exprs!5941 setElem!41260) lambda!332720) e!3724151)))

(declare-fun b!6106875 () Bool)

(declare-fun e!3724152 () Bool)

(assert (=> b!6106875 (= e!3724151 e!3724152)))

(declare-fun res!2533445 () Bool)

(assert (=> b!6106875 (=> (not res!2533445) (not e!3724152))))

(declare-fun dynLambda!25338 (Int Regex!16057) Bool)

(assert (=> b!6106875 (= res!2533445 (dynLambda!25338 lambda!332720 (h!70794 (exprs!5941 setElem!41260))))))

(declare-fun b!6106876 () Bool)

(assert (=> b!6106876 (= e!3724152 (forall!15178 (t!377923 (exprs!5941 setElem!41260)) lambda!332720))))

(assert (= (and d!1913928 (not res!2533444)) b!6106875))

(assert (= (and b!6106875 res!2533445) b!6106876))

(declare-fun b_lambda!232629 () Bool)

(assert (=> (not b_lambda!232629) (not b!6106875)))

(declare-fun m!6957540 () Bool)

(assert (=> b!6106875 m!6957540))

(declare-fun m!6957542 () Bool)

(assert (=> b!6106876 m!6957542))

(assert (=> d!1913734 d!1913928))

(declare-fun d!1913930 () Bool)

(assert (=> d!1913930 (= (isEmpty!36269 (tail!11720 (exprs!5941 (h!70795 zl!343)))) ((_ is Nil!64346) (tail!11720 (exprs!5941 (h!70795 zl!343)))))))

(assert (=> b!6106256 d!1913930))

(declare-fun d!1913932 () Bool)

(assert (=> d!1913932 (= (tail!11720 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))

(assert (=> b!6106256 d!1913932))

(assert (=> d!1913716 d!1913704))

(declare-fun b!6106877 () Bool)

(declare-fun e!3724158 () Bool)

(declare-fun e!3724159 () Bool)

(assert (=> b!6106877 (= e!3724158 e!3724159)))

(declare-fun c!1097134 () Bool)

(assert (=> b!6106877 (= c!1097134 ((_ is Union!16057) (regOne!32626 r!7292)))))

(declare-fun b!6106878 () Bool)

(declare-fun e!3724157 () Bool)

(declare-fun call!505130 () Bool)

(assert (=> b!6106878 (= e!3724157 call!505130)))

(declare-fun b!6106879 () Bool)

(declare-fun e!3724155 () Bool)

(assert (=> b!6106879 (= e!3724155 e!3724158)))

(declare-fun c!1097135 () Bool)

(assert (=> b!6106879 (= c!1097135 ((_ is Star!16057) (regOne!32626 r!7292)))))

(declare-fun bm!505124 () Bool)

(declare-fun call!505129 () Bool)

(assert (=> bm!505124 (= call!505130 call!505129)))

(declare-fun b!6106880 () Bool)

(declare-fun res!2533448 () Bool)

(declare-fun e!3724154 () Bool)

(assert (=> b!6106880 (=> res!2533448 e!3724154)))

(assert (=> b!6106880 (= res!2533448 (not ((_ is Concat!24902) (regOne!32626 r!7292))))))

(assert (=> b!6106880 (= e!3724159 e!3724154)))

(declare-fun b!6106881 () Bool)

(declare-fun e!3724156 () Bool)

(assert (=> b!6106881 (= e!3724156 call!505130)))

(declare-fun bm!505125 () Bool)

(assert (=> bm!505125 (= call!505129 (validRegex!7793 (ite c!1097135 (reg!16386 (regOne!32626 r!7292)) (ite c!1097134 (regTwo!32627 (regOne!32626 r!7292)) (regTwo!32626 (regOne!32626 r!7292))))))))

(declare-fun b!6106882 () Bool)

(declare-fun e!3724153 () Bool)

(assert (=> b!6106882 (= e!3724158 e!3724153)))

(declare-fun res!2533449 () Bool)

(assert (=> b!6106882 (= res!2533449 (not (nullable!6050 (reg!16386 (regOne!32626 r!7292)))))))

(assert (=> b!6106882 (=> (not res!2533449) (not e!3724153))))

(declare-fun b!6106883 () Bool)

(assert (=> b!6106883 (= e!3724154 e!3724156)))

(declare-fun res!2533450 () Bool)

(assert (=> b!6106883 (=> (not res!2533450) (not e!3724156))))

(declare-fun call!505131 () Bool)

(assert (=> b!6106883 (= res!2533450 call!505131)))

(declare-fun b!6106884 () Bool)

(assert (=> b!6106884 (= e!3724153 call!505129)))

(declare-fun b!6106885 () Bool)

(declare-fun res!2533446 () Bool)

(assert (=> b!6106885 (=> (not res!2533446) (not e!3724157))))

(assert (=> b!6106885 (= res!2533446 call!505131)))

(assert (=> b!6106885 (= e!3724159 e!3724157)))

(declare-fun bm!505126 () Bool)

(assert (=> bm!505126 (= call!505131 (validRegex!7793 (ite c!1097134 (regOne!32627 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292)))))))

(declare-fun d!1913934 () Bool)

(declare-fun res!2533447 () Bool)

(assert (=> d!1913934 (=> res!2533447 e!3724155)))

(assert (=> d!1913934 (= res!2533447 ((_ is ElementMatch!16057) (regOne!32626 r!7292)))))

(assert (=> d!1913934 (= (validRegex!7793 (regOne!32626 r!7292)) e!3724155)))

(assert (= (and d!1913934 (not res!2533447)) b!6106879))

(assert (= (and b!6106879 c!1097135) b!6106882))

(assert (= (and b!6106879 (not c!1097135)) b!6106877))

(assert (= (and b!6106882 res!2533449) b!6106884))

(assert (= (and b!6106877 c!1097134) b!6106885))

(assert (= (and b!6106877 (not c!1097134)) b!6106880))

(assert (= (and b!6106885 res!2533446) b!6106878))

(assert (= (and b!6106880 (not res!2533448)) b!6106883))

(assert (= (and b!6106883 res!2533450) b!6106881))

(assert (= (or b!6106878 b!6106881) bm!505124))

(assert (= (or b!6106885 b!6106883) bm!505126))

(assert (= (or b!6106884 bm!505124) bm!505125))

(declare-fun m!6957544 () Bool)

(assert (=> bm!505125 m!6957544))

(declare-fun m!6957546 () Bool)

(assert (=> b!6106882 m!6957546))

(declare-fun m!6957548 () Bool)

(assert (=> bm!505126 m!6957548))

(assert (=> d!1913716 d!1913934))

(declare-fun d!1913936 () Bool)

(assert (=> d!1913936 (= (Exists!3127 lambda!332710) (choose!45394 lambda!332710))))

(declare-fun bs!1516126 () Bool)

(assert (= bs!1516126 d!1913936))

(declare-fun m!6957550 () Bool)

(assert (=> bs!1516126 m!6957550))

(assert (=> d!1913716 d!1913936))

(assert (=> d!1913716 d!1913728))

(declare-fun bs!1516127 () Bool)

(declare-fun d!1913938 () Bool)

(assert (= bs!1516127 (and d!1913938 b!6106173)))

(declare-fun lambda!332750 () Int)

(assert (=> bs!1516127 (not (= lambda!332750 lambda!332726))))

(declare-fun bs!1516128 () Bool)

(assert (= bs!1516128 (and d!1913938 d!1913716)))

(assert (=> bs!1516128 (= lambda!332750 lambda!332710)))

(declare-fun bs!1516129 () Bool)

(assert (= bs!1516129 (and d!1913938 d!1913726)))

(assert (=> bs!1516129 (not (= lambda!332750 lambda!332716))))

(declare-fun bs!1516130 () Bool)

(assert (= bs!1516130 (and d!1913938 b!6105694)))

(assert (=> bs!1516130 (= lambda!332750 lambda!332672)))

(assert (=> bs!1516129 (= lambda!332750 lambda!332715)))

(assert (=> bs!1516130 (not (= lambda!332750 lambda!332673))))

(declare-fun bs!1516131 () Bool)

(assert (= bs!1516131 (and d!1913938 b!6106172)))

(assert (=> bs!1516131 (not (= lambda!332750 lambda!332725))))

(assert (=> d!1913938 true))

(assert (=> d!1913938 true))

(assert (=> d!1913938 true))

(assert (=> d!1913938 (= (isDefined!12651 (findConcatSeparation!2362 (regOne!32626 r!7292) (regTwo!32626 r!7292) Nil!64348 s!2326 s!2326)) (Exists!3127 lambda!332750))))

(assert (=> d!1913938 true))

(declare-fun _$89!2158 () Unit!157385)

(assert (=> d!1913938 (= (choose!45395 (regOne!32626 r!7292) (regTwo!32626 r!7292) s!2326) _$89!2158)))

(declare-fun bs!1516132 () Bool)

(assert (= bs!1516132 d!1913938))

(assert (=> bs!1516132 m!6956822))

(assert (=> bs!1516132 m!6956822))

(assert (=> bs!1516132 m!6956824))

(declare-fun m!6957552 () Bool)

(assert (=> bs!1516132 m!6957552))

(assert (=> d!1913716 d!1913938))

(declare-fun b!6106899 () Bool)

(declare-fun e!3724166 () List!64472)

(assert (=> b!6106899 (= e!3724166 (Cons!64348 (h!70796 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) (++!14144 (t!377925 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) (t!377925 s!2326))))))

(declare-fun b!6106901 () Bool)

(declare-fun e!3724167 () Bool)

(declare-fun lt!2329792 () List!64472)

(assert (=> b!6106901 (= e!3724167 (or (not (= (t!377925 s!2326) Nil!64348)) (= lt!2329792 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)))))))

(declare-fun b!6106900 () Bool)

(declare-fun res!2533459 () Bool)

(assert (=> b!6106900 (=> (not res!2533459) (not e!3724167))))

(declare-fun size!40202 (List!64472) Int)

(assert (=> b!6106900 (= res!2533459 (= (size!40202 lt!2329792) (+ (size!40202 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) (size!40202 (t!377925 s!2326)))))))

(declare-fun b!6106898 () Bool)

(assert (=> b!6106898 (= e!3724166 (t!377925 s!2326))))

(declare-fun d!1913940 () Bool)

(assert (=> d!1913940 e!3724167))

(declare-fun res!2533460 () Bool)

(assert (=> d!1913940 (=> (not res!2533460) (not e!3724167))))

(declare-fun content!11941 (List!64472) (InoxSet C!32384))

(assert (=> d!1913940 (= res!2533460 (= (content!11941 lt!2329792) ((_ map or) (content!11941 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) (content!11941 (t!377925 s!2326)))))))

(assert (=> d!1913940 (= lt!2329792 e!3724166)))

(declare-fun c!1097138 () Bool)

(assert (=> d!1913940 (= c!1097138 ((_ is Nil!64348) (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))))))

(assert (=> d!1913940 (= (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (t!377925 s!2326)) lt!2329792)))

(assert (= (and d!1913940 c!1097138) b!6106898))

(assert (= (and d!1913940 (not c!1097138)) b!6106899))

(assert (= (and d!1913940 res!2533460) b!6106900))

(assert (= (and b!6106900 res!2533459) b!6106901))

(declare-fun m!6957554 () Bool)

(assert (=> b!6106899 m!6957554))

(declare-fun m!6957556 () Bool)

(assert (=> b!6106900 m!6957556))

(assert (=> b!6106900 m!6957000))

(declare-fun m!6957558 () Bool)

(assert (=> b!6106900 m!6957558))

(declare-fun m!6957560 () Bool)

(assert (=> b!6106900 m!6957560))

(declare-fun m!6957562 () Bool)

(assert (=> d!1913940 m!6957562))

(assert (=> d!1913940 m!6957000))

(declare-fun m!6957564 () Bool)

(assert (=> d!1913940 m!6957564))

(declare-fun m!6957566 () Bool)

(assert (=> d!1913940 m!6957566))

(assert (=> b!6105968 d!1913940))

(declare-fun b!6106903 () Bool)

(declare-fun e!3724168 () List!64472)

(assert (=> b!6106903 (= e!3724168 (Cons!64348 (h!70796 Nil!64348) (++!14144 (t!377925 Nil!64348) (Cons!64348 (h!70796 s!2326) Nil!64348))))))

(declare-fun b!6106905 () Bool)

(declare-fun e!3724169 () Bool)

(declare-fun lt!2329793 () List!64472)

(assert (=> b!6106905 (= e!3724169 (or (not (= (Cons!64348 (h!70796 s!2326) Nil!64348) Nil!64348)) (= lt!2329793 Nil!64348)))))

(declare-fun b!6106904 () Bool)

(declare-fun res!2533461 () Bool)

(assert (=> b!6106904 (=> (not res!2533461) (not e!3724169))))

(assert (=> b!6106904 (= res!2533461 (= (size!40202 lt!2329793) (+ (size!40202 Nil!64348) (size!40202 (Cons!64348 (h!70796 s!2326) Nil!64348)))))))

(declare-fun b!6106902 () Bool)

(assert (=> b!6106902 (= e!3724168 (Cons!64348 (h!70796 s!2326) Nil!64348))))

(declare-fun d!1913942 () Bool)

(assert (=> d!1913942 e!3724169))

(declare-fun res!2533462 () Bool)

(assert (=> d!1913942 (=> (not res!2533462) (not e!3724169))))

(assert (=> d!1913942 (= res!2533462 (= (content!11941 lt!2329793) ((_ map or) (content!11941 Nil!64348) (content!11941 (Cons!64348 (h!70796 s!2326) Nil!64348)))))))

(assert (=> d!1913942 (= lt!2329793 e!3724168)))

(declare-fun c!1097139 () Bool)

(assert (=> d!1913942 (= c!1097139 ((_ is Nil!64348) Nil!64348))))

(assert (=> d!1913942 (= (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) lt!2329793)))

(assert (= (and d!1913942 c!1097139) b!6106902))

(assert (= (and d!1913942 (not c!1097139)) b!6106903))

(assert (= (and d!1913942 res!2533462) b!6106904))

(assert (= (and b!6106904 res!2533461) b!6106905))

(declare-fun m!6957568 () Bool)

(assert (=> b!6106903 m!6957568))

(declare-fun m!6957570 () Bool)

(assert (=> b!6106904 m!6957570))

(declare-fun m!6957572 () Bool)

(assert (=> b!6106904 m!6957572))

(declare-fun m!6957574 () Bool)

(assert (=> b!6106904 m!6957574))

(declare-fun m!6957576 () Bool)

(assert (=> d!1913942 m!6957576))

(declare-fun m!6957578 () Bool)

(assert (=> d!1913942 m!6957578))

(declare-fun m!6957580 () Bool)

(assert (=> d!1913942 m!6957580))

(assert (=> b!6105968 d!1913942))

(declare-fun d!1913944 () Bool)

(assert (=> d!1913944 (= (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (t!377925 s!2326)) s!2326)))

(declare-fun lt!2329796 () Unit!157385)

(declare-fun choose!45400 (List!64472 C!32384 List!64472 List!64472) Unit!157385)

(assert (=> d!1913944 (= lt!2329796 (choose!45400 Nil!64348 (h!70796 s!2326) (t!377925 s!2326) s!2326))))

(assert (=> d!1913944 (= (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) (t!377925 s!2326))) s!2326)))

(assert (=> d!1913944 (= (lemmaMoveElementToOtherListKeepsConcatEq!2239 Nil!64348 (h!70796 s!2326) (t!377925 s!2326) s!2326) lt!2329796)))

(declare-fun bs!1516133 () Bool)

(assert (= bs!1516133 d!1913944))

(assert (=> bs!1516133 m!6957000))

(assert (=> bs!1516133 m!6957000))

(assert (=> bs!1516133 m!6957002))

(declare-fun m!6957582 () Bool)

(assert (=> bs!1516133 m!6957582))

(declare-fun m!6957584 () Bool)

(assert (=> bs!1516133 m!6957584))

(assert (=> b!6105968 d!1913944))

(declare-fun b!6106906 () Bool)

(declare-fun e!3724170 () Bool)

(declare-fun lt!2329798 () Option!15948)

(assert (=> b!6106906 (= e!3724170 (= (++!14144 (_1!36339 (get!22188 lt!2329798)) (_2!36339 (get!22188 lt!2329798))) s!2326))))

(declare-fun b!6106907 () Bool)

(declare-fun e!3724173 () Option!15948)

(declare-fun e!3724172 () Option!15948)

(assert (=> b!6106907 (= e!3724173 e!3724172)))

(declare-fun c!1097140 () Bool)

(assert (=> b!6106907 (= c!1097140 ((_ is Nil!64348) (t!377925 s!2326)))))

(declare-fun b!6106908 () Bool)

(declare-fun e!3724174 () Bool)

(assert (=> b!6106908 (= e!3724174 (not (isDefined!12651 lt!2329798)))))

(declare-fun b!6106909 () Bool)

(declare-fun e!3724171 () Bool)

(assert (=> b!6106909 (= e!3724171 (matchR!8240 (regTwo!32626 r!7292) (t!377925 s!2326)))))

(declare-fun b!6106910 () Bool)

(assert (=> b!6106910 (= e!3724172 None!15947)))

(declare-fun b!6106911 () Bool)

(declare-fun lt!2329799 () Unit!157385)

(declare-fun lt!2329797 () Unit!157385)

(assert (=> b!6106911 (= lt!2329799 lt!2329797)))

(assert (=> b!6106911 (= (++!14144 (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348)) (t!377925 (t!377925 s!2326))) s!2326)))

(assert (=> b!6106911 (= lt!2329797 (lemmaMoveElementToOtherListKeepsConcatEq!2239 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (h!70796 (t!377925 s!2326)) (t!377925 (t!377925 s!2326)) s!2326))))

(assert (=> b!6106911 (= e!3724172 (findConcatSeparation!2362 (regOne!32626 r!7292) (regTwo!32626 r!7292) (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348)) (t!377925 (t!377925 s!2326)) s!2326))))

(declare-fun b!6106912 () Bool)

(declare-fun res!2533463 () Bool)

(assert (=> b!6106912 (=> (not res!2533463) (not e!3724170))))

(assert (=> b!6106912 (= res!2533463 (matchR!8240 (regOne!32626 r!7292) (_1!36339 (get!22188 lt!2329798))))))

(declare-fun d!1913946 () Bool)

(assert (=> d!1913946 e!3724174))

(declare-fun res!2533465 () Bool)

(assert (=> d!1913946 (=> res!2533465 e!3724174)))

(assert (=> d!1913946 (= res!2533465 e!3724170)))

(declare-fun res!2533467 () Bool)

(assert (=> d!1913946 (=> (not res!2533467) (not e!3724170))))

(assert (=> d!1913946 (= res!2533467 (isDefined!12651 lt!2329798))))

(assert (=> d!1913946 (= lt!2329798 e!3724173)))

(declare-fun c!1097141 () Bool)

(assert (=> d!1913946 (= c!1097141 e!3724171)))

(declare-fun res!2533464 () Bool)

(assert (=> d!1913946 (=> (not res!2533464) (not e!3724171))))

(assert (=> d!1913946 (= res!2533464 (matchR!8240 (regOne!32626 r!7292) (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))))))

(assert (=> d!1913946 (validRegex!7793 (regOne!32626 r!7292))))

(assert (=> d!1913946 (= (findConcatSeparation!2362 (regOne!32626 r!7292) (regTwo!32626 r!7292) (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (t!377925 s!2326) s!2326) lt!2329798)))

(declare-fun b!6106913 () Bool)

(declare-fun res!2533466 () Bool)

(assert (=> b!6106913 (=> (not res!2533466) (not e!3724170))))

(assert (=> b!6106913 (= res!2533466 (matchR!8240 (regTwo!32626 r!7292) (_2!36339 (get!22188 lt!2329798))))))

(declare-fun b!6106914 () Bool)

(assert (=> b!6106914 (= e!3724173 (Some!15947 (tuple2!66073 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (t!377925 s!2326))))))

(assert (= (and d!1913946 res!2533464) b!6106909))

(assert (= (and d!1913946 c!1097141) b!6106914))

(assert (= (and d!1913946 (not c!1097141)) b!6106907))

(assert (= (and b!6106907 c!1097140) b!6106910))

(assert (= (and b!6106907 (not c!1097140)) b!6106911))

(assert (= (and d!1913946 res!2533467) b!6106912))

(assert (= (and b!6106912 res!2533463) b!6106913))

(assert (= (and b!6106913 res!2533466) b!6106906))

(assert (= (and d!1913946 (not res!2533465)) b!6106908))

(declare-fun m!6957586 () Bool)

(assert (=> b!6106906 m!6957586))

(declare-fun m!6957588 () Bool)

(assert (=> b!6106906 m!6957588))

(assert (=> b!6106913 m!6957586))

(declare-fun m!6957590 () Bool)

(assert (=> b!6106913 m!6957590))

(declare-fun m!6957592 () Bool)

(assert (=> d!1913946 m!6957592))

(assert (=> d!1913946 m!6957000))

(declare-fun m!6957594 () Bool)

(assert (=> d!1913946 m!6957594))

(assert (=> d!1913946 m!6956996))

(assert (=> b!6106912 m!6957586))

(declare-fun m!6957596 () Bool)

(assert (=> b!6106912 m!6957596))

(assert (=> b!6106911 m!6957000))

(declare-fun m!6957598 () Bool)

(assert (=> b!6106911 m!6957598))

(assert (=> b!6106911 m!6957598))

(declare-fun m!6957600 () Bool)

(assert (=> b!6106911 m!6957600))

(assert (=> b!6106911 m!6957000))

(declare-fun m!6957602 () Bool)

(assert (=> b!6106911 m!6957602))

(assert (=> b!6106911 m!6957598))

(declare-fun m!6957604 () Bool)

(assert (=> b!6106911 m!6957604))

(assert (=> b!6106908 m!6957592))

(declare-fun m!6957606 () Bool)

(assert (=> b!6106909 m!6957606))

(assert (=> b!6105968 d!1913946))

(declare-fun d!1913948 () Bool)

(declare-fun nullableFct!2014 (Regex!16057) Bool)

(assert (=> d!1913948 (= (nullable!6050 (h!70794 (exprs!5941 lt!2329690))) (nullableFct!2014 (h!70794 (exprs!5941 lt!2329690))))))

(declare-fun bs!1516134 () Bool)

(assert (= bs!1516134 d!1913948))

(declare-fun m!6957608 () Bool)

(assert (=> bs!1516134 m!6957608))

(assert (=> b!6106267 d!1913948))

(declare-fun d!1913950 () Bool)

(assert (=> d!1913950 (= (isEmpty!36269 (t!377923 (unfocusZipperList!1478 zl!343))) ((_ is Nil!64346) (t!377923 (unfocusZipperList!1478 zl!343))))))

(assert (=> b!6105800 d!1913950))

(declare-fun b!6106915 () Bool)

(declare-fun e!3724176 () Bool)

(assert (=> b!6106915 (= e!3724176 (nullable!6050 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))))))

(declare-fun b!6106916 () Bool)

(declare-fun e!3724177 () (InoxSet Context!10882))

(declare-fun call!505132 () (InoxSet Context!10882))

(assert (=> b!6106916 (= e!3724177 call!505132)))

(declare-fun b!6106917 () Bool)

(declare-fun e!3724175 () (InoxSet Context!10882))

(assert (=> b!6106917 (= e!3724175 e!3724177)))

(declare-fun c!1097143 () Bool)

(assert (=> b!6106917 (= c!1097143 ((_ is Cons!64346) (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690))))))))

(declare-fun bm!505127 () Bool)

(assert (=> bm!505127 (= call!505132 (derivationStepZipperDown!1305 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690))))) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (h!70796 s!2326)))))

(declare-fun b!6106918 () Bool)

(assert (=> b!6106918 (= e!3724175 ((_ map or) call!505132 (derivationStepZipperUp!1231 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (h!70796 s!2326))))))

(declare-fun b!6106919 () Bool)

(assert (=> b!6106919 (= e!3724177 ((as const (Array Context!10882 Bool)) false))))

(declare-fun d!1913952 () Bool)

(declare-fun c!1097142 () Bool)

(assert (=> d!1913952 (= c!1097142 e!3724176)))

(declare-fun res!2533468 () Bool)

(assert (=> d!1913952 (=> (not res!2533468) (not e!3724176))))

(assert (=> d!1913952 (= res!2533468 ((_ is Cons!64346) (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690))))))))

(assert (=> d!1913952 (= (derivationStepZipperUp!1231 (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (h!70796 s!2326)) e!3724175)))

(assert (= (and d!1913952 res!2533468) b!6106915))

(assert (= (and d!1913952 c!1097142) b!6106918))

(assert (= (and d!1913952 (not c!1097142)) b!6106917))

(assert (= (and b!6106917 c!1097143) b!6106916))

(assert (= (and b!6106917 (not c!1097143)) b!6106919))

(assert (= (or b!6106918 b!6106916) bm!505127))

(declare-fun m!6957610 () Bool)

(assert (=> b!6106915 m!6957610))

(declare-fun m!6957612 () Bool)

(assert (=> bm!505127 m!6957612))

(declare-fun m!6957614 () Bool)

(assert (=> b!6106918 m!6957614))

(assert (=> b!6106270 d!1913952))

(declare-fun d!1913954 () Bool)

(assert (=> d!1913954 (= (head!12635 (unfocusZipperList!1478 zl!343)) (h!70794 (unfocusZipperList!1478 zl!343)))))

(assert (=> b!6105802 d!1913954))

(declare-fun d!1913956 () Bool)

(assert (=> d!1913956 (= (nullable!6050 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))) (nullableFct!2014 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun bs!1516135 () Bool)

(assert (= bs!1516135 d!1913956))

(declare-fun m!6957616 () Bool)

(assert (=> bs!1516135 m!6957616))

(assert (=> b!6106298 d!1913956))

(declare-fun d!1913958 () Bool)

(assert (=> d!1913958 (= (nullable!6050 (reg!16386 r!7292)) (nullableFct!2014 (reg!16386 r!7292)))))

(declare-fun bs!1516136 () Bool)

(assert (= bs!1516136 d!1913958))

(declare-fun m!6957618 () Bool)

(assert (=> bs!1516136 m!6957618))

(assert (=> b!6106135 d!1913958))

(declare-fun b!6106920 () Bool)

(declare-fun res!2533473 () Bool)

(declare-fun e!3724184 () Bool)

(assert (=> b!6106920 (=> (not res!2533473) (not e!3724184))))

(declare-fun call!505133 () Bool)

(assert (=> b!6106920 (= res!2533473 (not call!505133))))

(declare-fun b!6106921 () Bool)

(declare-fun res!2533474 () Bool)

(declare-fun e!3724182 () Bool)

(assert (=> b!6106921 (=> res!2533474 e!3724182)))

(assert (=> b!6106921 (= res!2533474 (not ((_ is ElementMatch!16057) (regTwo!32626 r!7292))))))

(declare-fun e!3724179 () Bool)

(assert (=> b!6106921 (= e!3724179 e!3724182)))

(declare-fun b!6106922 () Bool)

(declare-fun res!2533476 () Bool)

(assert (=> b!6106922 (=> (not res!2533476) (not e!3724184))))

(assert (=> b!6106922 (= res!2533476 (isEmpty!36274 (tail!11721 (_2!36339 (get!22188 lt!2329734)))))))

(declare-fun b!6106923 () Bool)

(declare-fun e!3724183 () Bool)

(assert (=> b!6106923 (= e!3724183 (not (= (head!12636 (_2!36339 (get!22188 lt!2329734))) (c!1096851 (regTwo!32626 r!7292)))))))

(declare-fun b!6106924 () Bool)

(assert (=> b!6106924 (= e!3724184 (= (head!12636 (_2!36339 (get!22188 lt!2329734))) (c!1096851 (regTwo!32626 r!7292))))))

(declare-fun b!6106925 () Bool)

(declare-fun res!2533471 () Bool)

(assert (=> b!6106925 (=> res!2533471 e!3724183)))

(assert (=> b!6106925 (= res!2533471 (not (isEmpty!36274 (tail!11721 (_2!36339 (get!22188 lt!2329734))))))))

(declare-fun b!6106927 () Bool)

(declare-fun e!3724180 () Bool)

(assert (=> b!6106927 (= e!3724180 e!3724183)))

(declare-fun res!2533475 () Bool)

(assert (=> b!6106927 (=> res!2533475 e!3724183)))

(assert (=> b!6106927 (= res!2533475 call!505133)))

(declare-fun b!6106928 () Bool)

(assert (=> b!6106928 (= e!3724182 e!3724180)))

(declare-fun res!2533469 () Bool)

(assert (=> b!6106928 (=> (not res!2533469) (not e!3724180))))

(declare-fun lt!2329800 () Bool)

(assert (=> b!6106928 (= res!2533469 (not lt!2329800))))

(declare-fun b!6106929 () Bool)

(declare-fun e!3724181 () Bool)

(assert (=> b!6106929 (= e!3724181 e!3724179)))

(declare-fun c!1097145 () Bool)

(assert (=> b!6106929 (= c!1097145 ((_ is EmptyLang!16057) (regTwo!32626 r!7292)))))

(declare-fun b!6106930 () Bool)

(declare-fun e!3724178 () Bool)

(assert (=> b!6106930 (= e!3724178 (matchR!8240 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 (_2!36339 (get!22188 lt!2329734)))) (tail!11721 (_2!36339 (get!22188 lt!2329734)))))))

(declare-fun b!6106931 () Bool)

(assert (=> b!6106931 (= e!3724178 (nullable!6050 (regTwo!32626 r!7292)))))

(declare-fun b!6106932 () Bool)

(assert (=> b!6106932 (= e!3724179 (not lt!2329800))))

(declare-fun b!6106933 () Bool)

(declare-fun res!2533472 () Bool)

(assert (=> b!6106933 (=> res!2533472 e!3724182)))

(assert (=> b!6106933 (= res!2533472 e!3724184)))

(declare-fun res!2533470 () Bool)

(assert (=> b!6106933 (=> (not res!2533470) (not e!3724184))))

(assert (=> b!6106933 (= res!2533470 lt!2329800)))

(declare-fun bm!505128 () Bool)

(assert (=> bm!505128 (= call!505133 (isEmpty!36274 (_2!36339 (get!22188 lt!2329734))))))

(declare-fun b!6106926 () Bool)

(assert (=> b!6106926 (= e!3724181 (= lt!2329800 call!505133))))

(declare-fun d!1913960 () Bool)

(assert (=> d!1913960 e!3724181))

(declare-fun c!1097146 () Bool)

(assert (=> d!1913960 (= c!1097146 ((_ is EmptyExpr!16057) (regTwo!32626 r!7292)))))

(assert (=> d!1913960 (= lt!2329800 e!3724178)))

(declare-fun c!1097144 () Bool)

(assert (=> d!1913960 (= c!1097144 (isEmpty!36274 (_2!36339 (get!22188 lt!2329734))))))

(assert (=> d!1913960 (validRegex!7793 (regTwo!32626 r!7292))))

(assert (=> d!1913960 (= (matchR!8240 (regTwo!32626 r!7292) (_2!36339 (get!22188 lt!2329734))) lt!2329800)))

(assert (= (and d!1913960 c!1097144) b!6106931))

(assert (= (and d!1913960 (not c!1097144)) b!6106930))

(assert (= (and d!1913960 c!1097146) b!6106926))

(assert (= (and d!1913960 (not c!1097146)) b!6106929))

(assert (= (and b!6106929 c!1097145) b!6106932))

(assert (= (and b!6106929 (not c!1097145)) b!6106921))

(assert (= (and b!6106921 (not res!2533474)) b!6106933))

(assert (= (and b!6106933 res!2533470) b!6106920))

(assert (= (and b!6106920 res!2533473) b!6106922))

(assert (= (and b!6106922 res!2533476) b!6106924))

(assert (= (and b!6106933 (not res!2533472)) b!6106928))

(assert (= (and b!6106928 res!2533469) b!6106927))

(assert (= (and b!6106927 (not res!2533475)) b!6106925))

(assert (= (and b!6106925 (not res!2533471)) b!6106923))

(assert (= (or b!6106926 b!6106920 b!6106927) bm!505128))

(declare-fun m!6957620 () Bool)

(assert (=> b!6106923 m!6957620))

(assert (=> b!6106924 m!6957620))

(declare-fun m!6957622 () Bool)

(assert (=> bm!505128 m!6957622))

(assert (=> b!6106930 m!6957620))

(assert (=> b!6106930 m!6957620))

(declare-fun m!6957624 () Bool)

(assert (=> b!6106930 m!6957624))

(declare-fun m!6957626 () Bool)

(assert (=> b!6106930 m!6957626))

(assert (=> b!6106930 m!6957624))

(assert (=> b!6106930 m!6957626))

(declare-fun m!6957628 () Bool)

(assert (=> b!6106930 m!6957628))

(assert (=> b!6106922 m!6957626))

(assert (=> b!6106922 m!6957626))

(declare-fun m!6957630 () Bool)

(assert (=> b!6106922 m!6957630))

(assert (=> b!6106925 m!6957626))

(assert (=> b!6106925 m!6957626))

(assert (=> b!6106925 m!6957630))

(assert (=> b!6106931 m!6957508))

(assert (=> d!1913960 m!6957622))

(assert (=> d!1913960 m!6957510))

(assert (=> b!6105970 d!1913960))

(declare-fun d!1913962 () Bool)

(assert (=> d!1913962 (= (get!22188 lt!2329734) (v!52080 lt!2329734))))

(assert (=> b!6105970 d!1913962))

(declare-fun d!1913964 () Bool)

(assert (=> d!1913964 (= (isEmpty!36274 (tail!11721 s!2326)) ((_ is Nil!64348) (tail!11721 s!2326)))))

(assert (=> b!6106212 d!1913964))

(assert (=> b!6106212 d!1913922))

(declare-fun d!1913966 () Bool)

(assert (=> d!1913966 (= (isEmpty!36269 (unfocusZipperList!1478 zl!343)) ((_ is Nil!64346) (unfocusZipperList!1478 zl!343)))))

(assert (=> b!6105807 d!1913966))

(declare-fun bs!1516137 () Bool)

(declare-fun d!1913968 () Bool)

(assert (= bs!1516137 (and d!1913968 d!1913694)))

(declare-fun lambda!332751 () Int)

(assert (=> bs!1516137 (= lambda!332751 lambda!332695)))

(declare-fun bs!1516138 () Bool)

(assert (= bs!1516138 (and d!1913968 d!1913734)))

(assert (=> bs!1516138 (= lambda!332751 lambda!332720)))

(declare-fun bs!1516139 () Bool)

(assert (= bs!1516139 (and d!1913968 d!1913748)))

(assert (=> bs!1516139 (= lambda!332751 lambda!332729)))

(declare-fun bs!1516140 () Bool)

(assert (= bs!1516140 (and d!1913968 d!1913684)))

(assert (=> bs!1516140 (= lambda!332751 lambda!332688)))

(declare-fun bs!1516141 () Bool)

(assert (= bs!1516141 (and d!1913968 d!1913730)))

(assert (=> bs!1516141 (= lambda!332751 lambda!332719)))

(assert (=> d!1913968 (= (inv!83389 setElem!41266) (forall!15178 (exprs!5941 setElem!41266) lambda!332751))))

(declare-fun bs!1516142 () Bool)

(assert (= bs!1516142 d!1913968))

(declare-fun m!6957632 () Bool)

(assert (=> bs!1516142 m!6957632))

(assert (=> setNonEmpty!41266 d!1913968))

(declare-fun bs!1516143 () Bool)

(declare-fun d!1913970 () Bool)

(assert (= bs!1516143 (and d!1913970 d!1913694)))

(declare-fun lambda!332752 () Int)

(assert (=> bs!1516143 (= lambda!332752 lambda!332695)))

(declare-fun bs!1516144 () Bool)

(assert (= bs!1516144 (and d!1913970 d!1913734)))

(assert (=> bs!1516144 (= lambda!332752 lambda!332720)))

(declare-fun bs!1516145 () Bool)

(assert (= bs!1516145 (and d!1913970 d!1913684)))

(assert (=> bs!1516145 (= lambda!332752 lambda!332688)))

(declare-fun bs!1516146 () Bool)

(assert (= bs!1516146 (and d!1913970 d!1913730)))

(assert (=> bs!1516146 (= lambda!332752 lambda!332719)))

(declare-fun bs!1516147 () Bool)

(assert (= bs!1516147 (and d!1913970 d!1913748)))

(assert (=> bs!1516147 (= lambda!332752 lambda!332729)))

(declare-fun bs!1516148 () Bool)

(assert (= bs!1516148 (and d!1913970 d!1913968)))

(assert (=> bs!1516148 (= lambda!332752 lambda!332751)))

(assert (=> d!1913970 (= (inv!83389 (h!70795 (t!377924 zl!343))) (forall!15178 (exprs!5941 (h!70795 (t!377924 zl!343))) lambda!332752))))

(declare-fun bs!1516149 () Bool)

(assert (= bs!1516149 d!1913970))

(declare-fun m!6957634 () Bool)

(assert (=> bs!1516149 m!6957634))

(assert (=> b!6106357 d!1913970))

(assert (=> b!6106214 d!1913920))

(declare-fun bs!1516150 () Bool)

(declare-fun b!6106935 () Bool)

(assert (= bs!1516150 (and b!6106935 b!6106173)))

(declare-fun lambda!332753 () Int)

(assert (=> bs!1516150 (not (= lambda!332753 lambda!332726))))

(declare-fun bs!1516151 () Bool)

(assert (= bs!1516151 (and b!6106935 d!1913716)))

(assert (=> bs!1516151 (not (= lambda!332753 lambda!332710))))

(declare-fun bs!1516152 () Bool)

(assert (= bs!1516152 (and b!6106935 d!1913726)))

(assert (=> bs!1516152 (not (= lambda!332753 lambda!332716))))

(declare-fun bs!1516153 () Bool)

(assert (= bs!1516153 (and b!6106935 b!6105694)))

(assert (=> bs!1516153 (not (= lambda!332753 lambda!332672))))

(declare-fun bs!1516154 () Bool)

(assert (= bs!1516154 (and b!6106935 d!1913938)))

(assert (=> bs!1516154 (not (= lambda!332753 lambda!332750))))

(assert (=> bs!1516152 (not (= lambda!332753 lambda!332715))))

(assert (=> bs!1516153 (not (= lambda!332753 lambda!332673))))

(declare-fun bs!1516155 () Bool)

(assert (= bs!1516155 (and b!6106935 b!6106172)))

(assert (=> bs!1516155 (= (and (= (reg!16386 (regOne!32627 r!7292)) (reg!16386 r!7292)) (= (regOne!32627 r!7292) r!7292)) (= lambda!332753 lambda!332725))))

(assert (=> b!6106935 true))

(assert (=> b!6106935 true))

(declare-fun bs!1516156 () Bool)

(declare-fun b!6106936 () Bool)

(assert (= bs!1516156 (and b!6106936 b!6106173)))

(declare-fun lambda!332754 () Int)

(assert (=> bs!1516156 (= (and (= (regOne!32626 (regOne!32627 r!7292)) (regOne!32626 r!7292)) (= (regTwo!32626 (regOne!32627 r!7292)) (regTwo!32626 r!7292))) (= lambda!332754 lambda!332726))))

(declare-fun bs!1516157 () Bool)

(assert (= bs!1516157 (and b!6106936 d!1913716)))

(assert (=> bs!1516157 (not (= lambda!332754 lambda!332710))))

(declare-fun bs!1516158 () Bool)

(assert (= bs!1516158 (and b!6106936 d!1913726)))

(assert (=> bs!1516158 (= (and (= (regOne!32626 (regOne!32627 r!7292)) (regOne!32626 r!7292)) (= (regTwo!32626 (regOne!32627 r!7292)) (regTwo!32626 r!7292))) (= lambda!332754 lambda!332716))))

(declare-fun bs!1516159 () Bool)

(assert (= bs!1516159 (and b!6106936 b!6105694)))

(assert (=> bs!1516159 (not (= lambda!332754 lambda!332672))))

(declare-fun bs!1516160 () Bool)

(assert (= bs!1516160 (and b!6106936 b!6106935)))

(assert (=> bs!1516160 (not (= lambda!332754 lambda!332753))))

(declare-fun bs!1516161 () Bool)

(assert (= bs!1516161 (and b!6106936 d!1913938)))

(assert (=> bs!1516161 (not (= lambda!332754 lambda!332750))))

(assert (=> bs!1516158 (not (= lambda!332754 lambda!332715))))

(assert (=> bs!1516159 (= (and (= (regOne!32626 (regOne!32627 r!7292)) (regOne!32626 r!7292)) (= (regTwo!32626 (regOne!32627 r!7292)) (regTwo!32626 r!7292))) (= lambda!332754 lambda!332673))))

(declare-fun bs!1516162 () Bool)

(assert (= bs!1516162 (and b!6106936 b!6106172)))

(assert (=> bs!1516162 (not (= lambda!332754 lambda!332725))))

(assert (=> b!6106936 true))

(assert (=> b!6106936 true))

(declare-fun d!1913972 () Bool)

(declare-fun c!1097148 () Bool)

(assert (=> d!1913972 (= c!1097148 ((_ is EmptyExpr!16057) (regOne!32627 r!7292)))))

(declare-fun e!3724185 () Bool)

(assert (=> d!1913972 (= (matchRSpec!3158 (regOne!32627 r!7292) s!2326) e!3724185)))

(declare-fun c!1097150 () Bool)

(declare-fun bm!505129 () Bool)

(declare-fun call!505135 () Bool)

(assert (=> bm!505129 (= call!505135 (Exists!3127 (ite c!1097150 lambda!332753 lambda!332754)))))

(declare-fun b!6106934 () Bool)

(declare-fun e!3724187 () Bool)

(declare-fun e!3724189 () Bool)

(assert (=> b!6106934 (= e!3724187 e!3724189)))

(assert (=> b!6106934 (= c!1097150 ((_ is Star!16057) (regOne!32627 r!7292)))))

(declare-fun e!3724191 () Bool)

(assert (=> b!6106935 (= e!3724191 call!505135)))

(assert (=> b!6106936 (= e!3724189 call!505135)))

(declare-fun b!6106937 () Bool)

(declare-fun res!2533479 () Bool)

(assert (=> b!6106937 (=> res!2533479 e!3724191)))

(declare-fun call!505134 () Bool)

(assert (=> b!6106937 (= res!2533479 call!505134)))

(assert (=> b!6106937 (= e!3724189 e!3724191)))

(declare-fun b!6106938 () Bool)

(declare-fun e!3724190 () Bool)

(assert (=> b!6106938 (= e!3724187 e!3724190)))

(declare-fun res!2533477 () Bool)

(assert (=> b!6106938 (= res!2533477 (matchRSpec!3158 (regOne!32627 (regOne!32627 r!7292)) s!2326))))

(assert (=> b!6106938 (=> res!2533477 e!3724190)))

(declare-fun bm!505130 () Bool)

(assert (=> bm!505130 (= call!505134 (isEmpty!36274 s!2326))))

(declare-fun b!6106939 () Bool)

(declare-fun e!3724186 () Bool)

(assert (=> b!6106939 (= e!3724186 (= s!2326 (Cons!64348 (c!1096851 (regOne!32627 r!7292)) Nil!64348)))))

(declare-fun b!6106940 () Bool)

(declare-fun c!1097149 () Bool)

(assert (=> b!6106940 (= c!1097149 ((_ is Union!16057) (regOne!32627 r!7292)))))

(assert (=> b!6106940 (= e!3724186 e!3724187)))

(declare-fun b!6106941 () Bool)

(declare-fun e!3724188 () Bool)

(assert (=> b!6106941 (= e!3724185 e!3724188)))

(declare-fun res!2533478 () Bool)

(assert (=> b!6106941 (= res!2533478 (not ((_ is EmptyLang!16057) (regOne!32627 r!7292))))))

(assert (=> b!6106941 (=> (not res!2533478) (not e!3724188))))

(declare-fun b!6106942 () Bool)

(assert (=> b!6106942 (= e!3724190 (matchRSpec!3158 (regTwo!32627 (regOne!32627 r!7292)) s!2326))))

(declare-fun b!6106943 () Bool)

(declare-fun c!1097147 () Bool)

(assert (=> b!6106943 (= c!1097147 ((_ is ElementMatch!16057) (regOne!32627 r!7292)))))

(assert (=> b!6106943 (= e!3724188 e!3724186)))

(declare-fun b!6106944 () Bool)

(assert (=> b!6106944 (= e!3724185 call!505134)))

(assert (= (and d!1913972 c!1097148) b!6106944))

(assert (= (and d!1913972 (not c!1097148)) b!6106941))

(assert (= (and b!6106941 res!2533478) b!6106943))

(assert (= (and b!6106943 c!1097147) b!6106939))

(assert (= (and b!6106943 (not c!1097147)) b!6106940))

(assert (= (and b!6106940 c!1097149) b!6106938))

(assert (= (and b!6106940 (not c!1097149)) b!6106934))

(assert (= (and b!6106938 (not res!2533477)) b!6106942))

(assert (= (and b!6106934 c!1097150) b!6106937))

(assert (= (and b!6106934 (not c!1097150)) b!6106936))

(assert (= (and b!6106937 (not res!2533479)) b!6106935))

(assert (= (or b!6106935 b!6106936) bm!505129))

(assert (= (or b!6106944 b!6106937) bm!505130))

(declare-fun m!6957636 () Bool)

(assert (=> bm!505129 m!6957636))

(declare-fun m!6957638 () Bool)

(assert (=> b!6106938 m!6957638))

(assert (=> bm!505130 m!6957084))

(declare-fun m!6957640 () Bool)

(assert (=> b!6106942 m!6957640))

(assert (=> b!6106175 d!1913972))

(declare-fun b!6106945 () Bool)

(declare-fun e!3724197 () Bool)

(declare-fun e!3724198 () Bool)

(assert (=> b!6106945 (= e!3724197 e!3724198)))

(declare-fun c!1097151 () Bool)

(assert (=> b!6106945 (= c!1097151 ((_ is Union!16057) (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))))

(declare-fun b!6106946 () Bool)

(declare-fun e!3724196 () Bool)

(declare-fun call!505137 () Bool)

(assert (=> b!6106946 (= e!3724196 call!505137)))

(declare-fun b!6106947 () Bool)

(declare-fun e!3724194 () Bool)

(assert (=> b!6106947 (= e!3724194 e!3724197)))

(declare-fun c!1097152 () Bool)

(assert (=> b!6106947 (= c!1097152 ((_ is Star!16057) (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))))

(declare-fun bm!505131 () Bool)

(declare-fun call!505136 () Bool)

(assert (=> bm!505131 (= call!505137 call!505136)))

(declare-fun b!6106948 () Bool)

(declare-fun res!2533482 () Bool)

(declare-fun e!3724193 () Bool)

(assert (=> b!6106948 (=> res!2533482 e!3724193)))

(assert (=> b!6106948 (= res!2533482 (not ((_ is Concat!24902) (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))))

(assert (=> b!6106948 (= e!3724198 e!3724193)))

(declare-fun b!6106949 () Bool)

(declare-fun e!3724195 () Bool)

(assert (=> b!6106949 (= e!3724195 call!505137)))

(declare-fun bm!505132 () Bool)

(assert (=> bm!505132 (= call!505136 (validRegex!7793 (ite c!1097152 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097151 (regTwo!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regTwo!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))))))

(declare-fun b!6106950 () Bool)

(declare-fun e!3724192 () Bool)

(assert (=> b!6106950 (= e!3724197 e!3724192)))

(declare-fun res!2533483 () Bool)

(assert (=> b!6106950 (= res!2533483 (not (nullable!6050 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))))))

(assert (=> b!6106950 (=> (not res!2533483) (not e!3724192))))

(declare-fun b!6106951 () Bool)

(assert (=> b!6106951 (= e!3724193 e!3724195)))

(declare-fun res!2533484 () Bool)

(assert (=> b!6106951 (=> (not res!2533484) (not e!3724195))))

(declare-fun call!505138 () Bool)

(assert (=> b!6106951 (= res!2533484 call!505138)))

(declare-fun b!6106952 () Bool)

(assert (=> b!6106952 (= e!3724192 call!505136)))

(declare-fun b!6106953 () Bool)

(declare-fun res!2533480 () Bool)

(assert (=> b!6106953 (=> (not res!2533480) (not e!3724196))))

(assert (=> b!6106953 (= res!2533480 call!505138)))

(assert (=> b!6106953 (= e!3724198 e!3724196)))

(declare-fun bm!505133 () Bool)

(assert (=> bm!505133 (= call!505138 (validRegex!7793 (ite c!1097151 (regOne!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))))))

(declare-fun d!1913974 () Bool)

(declare-fun res!2533481 () Bool)

(assert (=> d!1913974 (=> res!2533481 e!3724194)))

(assert (=> d!1913974 (= res!2533481 ((_ is ElementMatch!16057) (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))))

(assert (=> d!1913974 (= (validRegex!7793 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) e!3724194)))

(assert (= (and d!1913974 (not res!2533481)) b!6106947))

(assert (= (and b!6106947 c!1097152) b!6106950))

(assert (= (and b!6106947 (not c!1097152)) b!6106945))

(assert (= (and b!6106950 res!2533483) b!6106952))

(assert (= (and b!6106945 c!1097151) b!6106953))

(assert (= (and b!6106945 (not c!1097151)) b!6106948))

(assert (= (and b!6106953 res!2533480) b!6106946))

(assert (= (and b!6106948 (not res!2533482)) b!6106951))

(assert (= (and b!6106951 res!2533484) b!6106949))

(assert (= (or b!6106946 b!6106949) bm!505131))

(assert (= (or b!6106953 b!6106951) bm!505133))

(assert (= (or b!6106952 bm!505131) bm!505132))

(declare-fun m!6957642 () Bool)

(assert (=> bm!505132 m!6957642))

(declare-fun m!6957644 () Bool)

(assert (=> b!6106950 m!6957644))

(declare-fun m!6957646 () Bool)

(assert (=> bm!505133 m!6957646))

(assert (=> bm!505012 d!1913974))

(declare-fun d!1913976 () Bool)

(assert (=> d!1913976 (= (nullable!6050 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (nullableFct!2014 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))

(declare-fun bs!1516163 () Bool)

(assert (= bs!1516163 d!1913976))

(declare-fun m!6957648 () Bool)

(assert (=> bs!1516163 m!6957648))

(assert (=> b!6106305 d!1913976))

(declare-fun b!6106954 () Bool)

(declare-fun e!3724204 () Bool)

(declare-fun e!3724205 () Bool)

(assert (=> b!6106954 (= e!3724204 e!3724205)))

(declare-fun c!1097153 () Bool)

(assert (=> b!6106954 (= c!1097153 ((_ is Union!16057) lt!2329714))))

(declare-fun b!6106955 () Bool)

(declare-fun e!3724203 () Bool)

(declare-fun call!505140 () Bool)

(assert (=> b!6106955 (= e!3724203 call!505140)))

(declare-fun b!6106956 () Bool)

(declare-fun e!3724201 () Bool)

(assert (=> b!6106956 (= e!3724201 e!3724204)))

(declare-fun c!1097154 () Bool)

(assert (=> b!6106956 (= c!1097154 ((_ is Star!16057) lt!2329714))))

(declare-fun bm!505134 () Bool)

(declare-fun call!505139 () Bool)

(assert (=> bm!505134 (= call!505140 call!505139)))

(declare-fun b!6106957 () Bool)

(declare-fun res!2533487 () Bool)

(declare-fun e!3724200 () Bool)

(assert (=> b!6106957 (=> res!2533487 e!3724200)))

(assert (=> b!6106957 (= res!2533487 (not ((_ is Concat!24902) lt!2329714)))))

(assert (=> b!6106957 (= e!3724205 e!3724200)))

(declare-fun b!6106958 () Bool)

(declare-fun e!3724202 () Bool)

(assert (=> b!6106958 (= e!3724202 call!505140)))

(declare-fun bm!505135 () Bool)

(assert (=> bm!505135 (= call!505139 (validRegex!7793 (ite c!1097154 (reg!16386 lt!2329714) (ite c!1097153 (regTwo!32627 lt!2329714) (regTwo!32626 lt!2329714)))))))

(declare-fun b!6106959 () Bool)

(declare-fun e!3724199 () Bool)

(assert (=> b!6106959 (= e!3724204 e!3724199)))

(declare-fun res!2533488 () Bool)

(assert (=> b!6106959 (= res!2533488 (not (nullable!6050 (reg!16386 lt!2329714))))))

(assert (=> b!6106959 (=> (not res!2533488) (not e!3724199))))

(declare-fun b!6106960 () Bool)

(assert (=> b!6106960 (= e!3724200 e!3724202)))

(declare-fun res!2533489 () Bool)

(assert (=> b!6106960 (=> (not res!2533489) (not e!3724202))))

(declare-fun call!505141 () Bool)

(assert (=> b!6106960 (= res!2533489 call!505141)))

(declare-fun b!6106961 () Bool)

(assert (=> b!6106961 (= e!3724199 call!505139)))

(declare-fun b!6106962 () Bool)

(declare-fun res!2533485 () Bool)

(assert (=> b!6106962 (=> (not res!2533485) (not e!3724203))))

(assert (=> b!6106962 (= res!2533485 call!505141)))

(assert (=> b!6106962 (= e!3724205 e!3724203)))

(declare-fun bm!505136 () Bool)

(assert (=> bm!505136 (= call!505141 (validRegex!7793 (ite c!1097153 (regOne!32627 lt!2329714) (regOne!32626 lt!2329714))))))

(declare-fun d!1913978 () Bool)

(declare-fun res!2533486 () Bool)

(assert (=> d!1913978 (=> res!2533486 e!3724201)))

(assert (=> d!1913978 (= res!2533486 ((_ is ElementMatch!16057) lt!2329714))))

(assert (=> d!1913978 (= (validRegex!7793 lt!2329714) e!3724201)))

(assert (= (and d!1913978 (not res!2533486)) b!6106956))

(assert (= (and b!6106956 c!1097154) b!6106959))

(assert (= (and b!6106956 (not c!1097154)) b!6106954))

(assert (= (and b!6106959 res!2533488) b!6106961))

(assert (= (and b!6106954 c!1097153) b!6106962))

(assert (= (and b!6106954 (not c!1097153)) b!6106957))

(assert (= (and b!6106962 res!2533485) b!6106955))

(assert (= (and b!6106957 (not res!2533487)) b!6106960))

(assert (= (and b!6106960 res!2533489) b!6106958))

(assert (= (or b!6106955 b!6106958) bm!505134))

(assert (= (or b!6106962 b!6106960) bm!505136))

(assert (= (or b!6106961 bm!505134) bm!505135))

(declare-fun m!6957650 () Bool)

(assert (=> bm!505135 m!6957650))

(declare-fun m!6957652 () Bool)

(assert (=> b!6106959 m!6957652))

(declare-fun m!6957654 () Bool)

(assert (=> bm!505136 m!6957654))

(assert (=> d!1913684 d!1913978))

(declare-fun d!1913980 () Bool)

(declare-fun res!2533490 () Bool)

(declare-fun e!3724206 () Bool)

(assert (=> d!1913980 (=> res!2533490 e!3724206)))

(assert (=> d!1913980 (= res!2533490 ((_ is Nil!64346) (unfocusZipperList!1478 zl!343)))))

(assert (=> d!1913980 (= (forall!15178 (unfocusZipperList!1478 zl!343) lambda!332688) e!3724206)))

(declare-fun b!6106963 () Bool)

(declare-fun e!3724207 () Bool)

(assert (=> b!6106963 (= e!3724206 e!3724207)))

(declare-fun res!2533491 () Bool)

(assert (=> b!6106963 (=> (not res!2533491) (not e!3724207))))

(assert (=> b!6106963 (= res!2533491 (dynLambda!25338 lambda!332688 (h!70794 (unfocusZipperList!1478 zl!343))))))

(declare-fun b!6106964 () Bool)

(assert (=> b!6106964 (= e!3724207 (forall!15178 (t!377923 (unfocusZipperList!1478 zl!343)) lambda!332688))))

(assert (= (and d!1913980 (not res!2533490)) b!6106963))

(assert (= (and b!6106963 res!2533491) b!6106964))

(declare-fun b_lambda!232631 () Bool)

(assert (=> (not b_lambda!232631) (not b!6106963)))

(declare-fun m!6957656 () Bool)

(assert (=> b!6106963 m!6957656))

(declare-fun m!6957658 () Bool)

(assert (=> b!6106964 m!6957658))

(assert (=> d!1913684 d!1913980))

(declare-fun d!1913982 () Bool)

(assert (=> d!1913982 (= (isEmpty!36273 (findConcatSeparation!2362 (regOne!32626 r!7292) (regTwo!32626 r!7292) Nil!64348 s!2326 s!2326)) (not ((_ is Some!15947) (findConcatSeparation!2362 (regOne!32626 r!7292) (regTwo!32626 r!7292) Nil!64348 s!2326 s!2326))))))

(assert (=> d!1913728 d!1913982))

(declare-fun b!6106965 () Bool)

(declare-fun e!3724213 () (InoxSet Context!10882))

(declare-fun e!3724212 () (InoxSet Context!10882))

(assert (=> b!6106965 (= e!3724213 e!3724212)))

(declare-fun c!1097156 () Bool)

(assert (=> b!6106965 (= c!1097156 ((_ is Union!16057) (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))

(declare-fun c!1097159 () Bool)

(declare-fun call!505142 () List!64470)

(declare-fun bm!505137 () Bool)

(declare-fun c!1097158 () Bool)

(assert (=> bm!505137 (= call!505142 ($colon$colon!1934 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))) (ite (or c!1097158 c!1097159) (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))

(declare-fun b!6106966 () Bool)

(declare-fun e!3724209 () (InoxSet Context!10882))

(declare-fun call!505145 () (InoxSet Context!10882))

(assert (=> b!6106966 (= e!3724209 call!505145)))

(declare-fun bm!505138 () Bool)

(declare-fun call!505143 () (InoxSet Context!10882))

(declare-fun call!505147 () (InoxSet Context!10882))

(assert (=> bm!505138 (= call!505143 call!505147)))

(declare-fun b!6106967 () Bool)

(declare-fun call!505146 () (InoxSet Context!10882))

(assert (=> b!6106967 (= e!3724212 ((_ map or) call!505147 call!505146))))

(declare-fun bm!505139 () Bool)

(assert (=> bm!505139 (= call!505145 call!505143)))

(declare-fun b!6106968 () Bool)

(declare-fun e!3724210 () (InoxSet Context!10882))

(assert (=> b!6106968 (= e!3724210 ((_ map or) call!505146 call!505143))))

(declare-fun b!6106969 () Bool)

(declare-fun e!3724208 () Bool)

(assert (=> b!6106969 (= e!3724208 (nullable!6050 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))

(declare-fun d!1913984 () Bool)

(declare-fun c!1097155 () Bool)

(assert (=> d!1913984 (= c!1097155 (and ((_ is ElementMatch!16057) (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (= (c!1096851 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (h!70796 s!2326))))))

(assert (=> d!1913984 (= (derivationStepZipperDown!1305 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (h!70796 s!2326)) e!3724213)))

(declare-fun bm!505140 () Bool)

(assert (=> bm!505140 (= call!505146 (derivationStepZipperDown!1305 (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))) (ite c!1097156 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (Context!10883 call!505142)) (h!70796 s!2326)))))

(declare-fun b!6106970 () Bool)

(assert (=> b!6106970 (= e!3724213 (store ((as const (Array Context!10882 Bool)) false) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) true))))

(declare-fun b!6106971 () Bool)

(assert (=> b!6106971 (= c!1097158 e!3724208)))

(declare-fun res!2533492 () Bool)

(assert (=> b!6106971 (=> (not res!2533492) (not e!3724208))))

(assert (=> b!6106971 (= res!2533492 ((_ is Concat!24902) (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))

(assert (=> b!6106971 (= e!3724212 e!3724210)))

(declare-fun b!6106972 () Bool)

(declare-fun c!1097157 () Bool)

(assert (=> b!6106972 (= c!1097157 ((_ is Star!16057) (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))

(declare-fun e!3724211 () (InoxSet Context!10882))

(assert (=> b!6106972 (= e!3724209 e!3724211)))

(declare-fun call!505144 () List!64470)

(declare-fun bm!505141 () Bool)

(assert (=> bm!505141 (= call!505147 (derivationStepZipperDown!1305 (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (ite (or c!1097156 c!1097158) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (Context!10883 call!505144)) (h!70796 s!2326)))))

(declare-fun bm!505142 () Bool)

(assert (=> bm!505142 (= call!505144 call!505142)))

(declare-fun b!6106973 () Bool)

(assert (=> b!6106973 (= e!3724211 call!505145)))

(declare-fun b!6106974 () Bool)

(assert (=> b!6106974 (= e!3724210 e!3724209)))

(assert (=> b!6106974 (= c!1097159 ((_ is Concat!24902) (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))

(declare-fun b!6106975 () Bool)

(assert (=> b!6106975 (= e!3724211 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1913984 c!1097155) b!6106970))

(assert (= (and d!1913984 (not c!1097155)) b!6106965))

(assert (= (and b!6106965 c!1097156) b!6106967))

(assert (= (and b!6106965 (not c!1097156)) b!6106971))

(assert (= (and b!6106971 res!2533492) b!6106969))

(assert (= (and b!6106971 c!1097158) b!6106968))

(assert (= (and b!6106971 (not c!1097158)) b!6106974))

(assert (= (and b!6106974 c!1097159) b!6106966))

(assert (= (and b!6106974 (not c!1097159)) b!6106972))

(assert (= (and b!6106972 c!1097157) b!6106973))

(assert (= (and b!6106972 (not c!1097157)) b!6106975))

(assert (= (or b!6106966 b!6106973) bm!505142))

(assert (= (or b!6106966 b!6106973) bm!505139))

(assert (= (or b!6106968 bm!505142) bm!505137))

(assert (= (or b!6106968 bm!505139) bm!505138))

(assert (= (or b!6106967 b!6106968) bm!505140))

(assert (= (or b!6106967 bm!505138) bm!505141))

(declare-fun m!6957660 () Bool)

(assert (=> b!6106969 m!6957660))

(declare-fun m!6957662 () Bool)

(assert (=> bm!505137 m!6957662))

(declare-fun m!6957664 () Bool)

(assert (=> bm!505140 m!6957664))

(declare-fun m!6957666 () Bool)

(assert (=> b!6106970 m!6957666))

(declare-fun m!6957668 () Bool)

(assert (=> bm!505141 m!6957668))

(assert (=> bm!505043 d!1913984))

(declare-fun d!1913986 () Bool)

(assert (=> d!1913986 true))

(assert (=> d!1913986 true))

(declare-fun res!2533495 () Bool)

(assert (=> d!1913986 (= (choose!45394 lambda!332672) res!2533495)))

(assert (=> d!1913714 d!1913986))

(declare-fun d!1913988 () Bool)

(assert (=> d!1913988 (= (isDefined!12651 lt!2329734) (not (isEmpty!36273 lt!2329734)))))

(declare-fun bs!1516164 () Bool)

(assert (= bs!1516164 d!1913988))

(declare-fun m!6957670 () Bool)

(assert (=> bs!1516164 m!6957670))

(assert (=> b!6105965 d!1913988))

(declare-fun d!1913990 () Bool)

(assert (=> d!1913990 (= (isEmptyExpr!1474 lt!2329762) ((_ is EmptyExpr!16057) lt!2329762))))

(assert (=> b!6106251 d!1913990))

(declare-fun d!1913992 () Bool)

(assert (=> d!1913992 (= (nullable!6050 r!7292) (nullableFct!2014 r!7292))))

(declare-fun bs!1516165 () Bool)

(assert (= bs!1516165 d!1913992))

(declare-fun m!6957672 () Bool)

(assert (=> bs!1516165 m!6957672))

(assert (=> b!6106221 d!1913992))

(declare-fun d!1913994 () Bool)

(assert (=> d!1913994 (= (isUnion!914 lt!2329714) ((_ is Union!16057) lt!2329714))))

(assert (=> b!6105799 d!1913994))

(declare-fun d!1913996 () Bool)

(declare-fun res!2533496 () Bool)

(declare-fun e!3724214 () Bool)

(assert (=> d!1913996 (=> res!2533496 e!3724214)))

(assert (=> d!1913996 (= res!2533496 ((_ is Nil!64346) lt!2329720))))

(assert (=> d!1913996 (= (forall!15178 lt!2329720 lambda!332695) e!3724214)))

(declare-fun b!6106976 () Bool)

(declare-fun e!3724215 () Bool)

(assert (=> b!6106976 (= e!3724214 e!3724215)))

(declare-fun res!2533497 () Bool)

(assert (=> b!6106976 (=> (not res!2533497) (not e!3724215))))

(assert (=> b!6106976 (= res!2533497 (dynLambda!25338 lambda!332695 (h!70794 lt!2329720)))))

(declare-fun b!6106977 () Bool)

(assert (=> b!6106977 (= e!3724215 (forall!15178 (t!377923 lt!2329720) lambda!332695))))

(assert (= (and d!1913996 (not res!2533496)) b!6106976))

(assert (= (and b!6106976 res!2533497) b!6106977))

(declare-fun b_lambda!232633 () Bool)

(assert (=> (not b_lambda!232633) (not b!6106976)))

(declare-fun m!6957674 () Bool)

(assert (=> b!6106976 m!6957674))

(declare-fun m!6957676 () Bool)

(assert (=> b!6106977 m!6957676))

(assert (=> d!1913694 d!1913996))

(assert (=> b!6105843 d!1913748))

(declare-fun bs!1516166 () Bool)

(declare-fun d!1913998 () Bool)

(assert (= bs!1516166 (and d!1913998 d!1913694)))

(declare-fun lambda!332755 () Int)

(assert (=> bs!1516166 (= lambda!332755 lambda!332695)))

(declare-fun bs!1516167 () Bool)

(assert (= bs!1516167 (and d!1913998 d!1913734)))

(assert (=> bs!1516167 (= lambda!332755 lambda!332720)))

(declare-fun bs!1516168 () Bool)

(assert (= bs!1516168 (and d!1913998 d!1913970)))

(assert (=> bs!1516168 (= lambda!332755 lambda!332752)))

(declare-fun bs!1516169 () Bool)

(assert (= bs!1516169 (and d!1913998 d!1913684)))

(assert (=> bs!1516169 (= lambda!332755 lambda!332688)))

(declare-fun bs!1516170 () Bool)

(assert (= bs!1516170 (and d!1913998 d!1913730)))

(assert (=> bs!1516170 (= lambda!332755 lambda!332719)))

(declare-fun bs!1516171 () Bool)

(assert (= bs!1516171 (and d!1913998 d!1913748)))

(assert (=> bs!1516171 (= lambda!332755 lambda!332729)))

(declare-fun bs!1516172 () Bool)

(assert (= bs!1516172 (and d!1913998 d!1913968)))

(assert (=> bs!1516172 (= lambda!332755 lambda!332751)))

(declare-fun lt!2329801 () List!64470)

(assert (=> d!1913998 (forall!15178 lt!2329801 lambda!332755)))

(declare-fun e!3724216 () List!64470)

(assert (=> d!1913998 (= lt!2329801 e!3724216)))

(declare-fun c!1097160 () Bool)

(assert (=> d!1913998 (= c!1097160 ((_ is Cons!64347) (t!377924 zl!343)))))

(assert (=> d!1913998 (= (unfocusZipperList!1478 (t!377924 zl!343)) lt!2329801)))

(declare-fun b!6106978 () Bool)

(assert (=> b!6106978 (= e!3724216 (Cons!64346 (generalisedConcat!1654 (exprs!5941 (h!70795 (t!377924 zl!343)))) (unfocusZipperList!1478 (t!377924 (t!377924 zl!343)))))))

(declare-fun b!6106979 () Bool)

(assert (=> b!6106979 (= e!3724216 Nil!64346)))

(assert (= (and d!1913998 c!1097160) b!6106978))

(assert (= (and d!1913998 (not c!1097160)) b!6106979))

(declare-fun m!6957678 () Bool)

(assert (=> d!1913998 m!6957678))

(declare-fun m!6957680 () Bool)

(assert (=> b!6106978 m!6957680))

(declare-fun m!6957682 () Bool)

(assert (=> b!6106978 m!6957682))

(assert (=> b!6105843 d!1913998))

(declare-fun bs!1516173 () Bool)

(declare-fun d!1914000 () Bool)

(assert (= bs!1516173 (and d!1914000 d!1913694)))

(declare-fun lambda!332756 () Int)

(assert (=> bs!1516173 (= lambda!332756 lambda!332695)))

(declare-fun bs!1516174 () Bool)

(assert (= bs!1516174 (and d!1914000 d!1913998)))

(assert (=> bs!1516174 (= lambda!332756 lambda!332755)))

(declare-fun bs!1516175 () Bool)

(assert (= bs!1516175 (and d!1914000 d!1913734)))

(assert (=> bs!1516175 (= lambda!332756 lambda!332720)))

(declare-fun bs!1516176 () Bool)

(assert (= bs!1516176 (and d!1914000 d!1913970)))

(assert (=> bs!1516176 (= lambda!332756 lambda!332752)))

(declare-fun bs!1516177 () Bool)

(assert (= bs!1516177 (and d!1914000 d!1913684)))

(assert (=> bs!1516177 (= lambda!332756 lambda!332688)))

(declare-fun bs!1516178 () Bool)

(assert (= bs!1516178 (and d!1914000 d!1913730)))

(assert (=> bs!1516178 (= lambda!332756 lambda!332719)))

(declare-fun bs!1516179 () Bool)

(assert (= bs!1516179 (and d!1914000 d!1913748)))

(assert (=> bs!1516179 (= lambda!332756 lambda!332729)))

(declare-fun bs!1516180 () Bool)

(assert (= bs!1516180 (and d!1914000 d!1913968)))

(assert (=> bs!1516180 (= lambda!332756 lambda!332751)))

(declare-fun b!6106980 () Bool)

(declare-fun e!3724221 () Regex!16057)

(assert (=> b!6106980 (= e!3724221 EmptyExpr!16057)))

(declare-fun b!6106981 () Bool)

(declare-fun e!3724217 () Regex!16057)

(assert (=> b!6106981 (= e!3724217 e!3724221)))

(declare-fun c!1097164 () Bool)

(assert (=> b!6106981 (= c!1097164 ((_ is Cons!64346) (t!377923 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun b!6106982 () Bool)

(declare-fun e!3724218 () Bool)

(declare-fun lt!2329802 () Regex!16057)

(assert (=> b!6106982 (= e!3724218 (= lt!2329802 (head!12635 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun b!6106983 () Bool)

(assert (=> b!6106983 (= e!3724218 (isConcat!997 lt!2329802))))

(declare-fun e!3724220 () Bool)

(assert (=> d!1914000 e!3724220))

(declare-fun res!2533499 () Bool)

(assert (=> d!1914000 (=> (not res!2533499) (not e!3724220))))

(assert (=> d!1914000 (= res!2533499 (validRegex!7793 lt!2329802))))

(assert (=> d!1914000 (= lt!2329802 e!3724217)))

(declare-fun c!1097162 () Bool)

(declare-fun e!3724219 () Bool)

(assert (=> d!1914000 (= c!1097162 e!3724219)))

(declare-fun res!2533498 () Bool)

(assert (=> d!1914000 (=> (not res!2533498) (not e!3724219))))

(assert (=> d!1914000 (= res!2533498 ((_ is Cons!64346) (t!377923 (exprs!5941 (h!70795 zl!343)))))))

(assert (=> d!1914000 (forall!15178 (t!377923 (exprs!5941 (h!70795 zl!343))) lambda!332756)))

(assert (=> d!1914000 (= (generalisedConcat!1654 (t!377923 (exprs!5941 (h!70795 zl!343)))) lt!2329802)))

(declare-fun b!6106984 () Bool)

(declare-fun e!3724222 () Bool)

(assert (=> b!6106984 (= e!3724222 (isEmptyExpr!1474 lt!2329802))))

(declare-fun b!6106985 () Bool)

(assert (=> b!6106985 (= e!3724219 (isEmpty!36269 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun b!6106986 () Bool)

(assert (=> b!6106986 (= e!3724221 (Concat!24902 (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343)))) (generalisedConcat!1654 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343)))))))))

(declare-fun b!6106987 () Bool)

(assert (=> b!6106987 (= e!3724217 (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun b!6106988 () Bool)

(assert (=> b!6106988 (= e!3724220 e!3724222)))

(declare-fun c!1097163 () Bool)

(assert (=> b!6106988 (= c!1097163 (isEmpty!36269 (t!377923 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun b!6106989 () Bool)

(assert (=> b!6106989 (= e!3724222 e!3724218)))

(declare-fun c!1097161 () Bool)

(assert (=> b!6106989 (= c!1097161 (isEmpty!36269 (tail!11720 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(assert (= (and d!1914000 res!2533498) b!6106985))

(assert (= (and d!1914000 c!1097162) b!6106987))

(assert (= (and d!1914000 (not c!1097162)) b!6106981))

(assert (= (and b!6106981 c!1097164) b!6106986))

(assert (= (and b!6106981 (not c!1097164)) b!6106980))

(assert (= (and d!1914000 res!2533499) b!6106988))

(assert (= (and b!6106988 c!1097163) b!6106984))

(assert (= (and b!6106988 (not c!1097163)) b!6106989))

(assert (= (and b!6106989 c!1097161) b!6106982))

(assert (= (and b!6106989 (not c!1097161)) b!6106983))

(declare-fun m!6957684 () Bool)

(assert (=> b!6106985 m!6957684))

(declare-fun m!6957686 () Bool)

(assert (=> d!1914000 m!6957686))

(declare-fun m!6957688 () Bool)

(assert (=> d!1914000 m!6957688))

(assert (=> b!6106988 m!6956852))

(declare-fun m!6957690 () Bool)

(assert (=> b!6106983 m!6957690))

(declare-fun m!6957692 () Bool)

(assert (=> b!6106986 m!6957692))

(declare-fun m!6957694 () Bool)

(assert (=> b!6106984 m!6957694))

(declare-fun m!6957696 () Bool)

(assert (=> b!6106982 m!6957696))

(declare-fun m!6957698 () Bool)

(assert (=> b!6106989 m!6957698))

(assert (=> b!6106989 m!6957698))

(declare-fun m!6957700 () Bool)

(assert (=> b!6106989 m!6957700))

(assert (=> b!6106253 d!1914000))

(declare-fun d!1914002 () Bool)

(declare-fun c!1097167 () Bool)

(assert (=> d!1914002 (= c!1097167 ((_ is Nil!64347) lt!2329759))))

(declare-fun e!3724225 () (InoxSet Context!10882))

(assert (=> d!1914002 (= (content!11939 lt!2329759) e!3724225)))

(declare-fun b!6106994 () Bool)

(assert (=> b!6106994 (= e!3724225 ((as const (Array Context!10882 Bool)) false))))

(declare-fun b!6106995 () Bool)

(assert (=> b!6106995 (= e!3724225 ((_ map or) (store ((as const (Array Context!10882 Bool)) false) (h!70795 lt!2329759) true) (content!11939 (t!377924 lt!2329759))))))

(assert (= (and d!1914002 c!1097167) b!6106994))

(assert (= (and d!1914002 (not c!1097167)) b!6106995))

(declare-fun m!6957702 () Bool)

(assert (=> b!6106995 m!6957702))

(declare-fun m!6957704 () Bool)

(assert (=> b!6106995 m!6957704))

(assert (=> b!6106226 d!1914002))

(declare-fun b!6106996 () Bool)

(declare-fun e!3724231 () Bool)

(declare-fun e!3724232 () Bool)

(assert (=> b!6106996 (= e!3724231 e!3724232)))

(declare-fun c!1097168 () Bool)

(assert (=> b!6106996 (= c!1097168 ((_ is Union!16057) lt!2329705))))

(declare-fun b!6106997 () Bool)

(declare-fun e!3724230 () Bool)

(declare-fun call!505149 () Bool)

(assert (=> b!6106997 (= e!3724230 call!505149)))

(declare-fun b!6106998 () Bool)

(declare-fun e!3724228 () Bool)

(assert (=> b!6106998 (= e!3724228 e!3724231)))

(declare-fun c!1097169 () Bool)

(assert (=> b!6106998 (= c!1097169 ((_ is Star!16057) lt!2329705))))

(declare-fun bm!505143 () Bool)

(declare-fun call!505148 () Bool)

(assert (=> bm!505143 (= call!505149 call!505148)))

(declare-fun b!6106999 () Bool)

(declare-fun res!2533502 () Bool)

(declare-fun e!3724227 () Bool)

(assert (=> b!6106999 (=> res!2533502 e!3724227)))

(assert (=> b!6106999 (= res!2533502 (not ((_ is Concat!24902) lt!2329705)))))

(assert (=> b!6106999 (= e!3724232 e!3724227)))

(declare-fun b!6107000 () Bool)

(declare-fun e!3724229 () Bool)

(assert (=> b!6107000 (= e!3724229 call!505149)))

(declare-fun bm!505144 () Bool)

(assert (=> bm!505144 (= call!505148 (validRegex!7793 (ite c!1097169 (reg!16386 lt!2329705) (ite c!1097168 (regTwo!32627 lt!2329705) (regTwo!32626 lt!2329705)))))))

(declare-fun b!6107001 () Bool)

(declare-fun e!3724226 () Bool)

(assert (=> b!6107001 (= e!3724231 e!3724226)))

(declare-fun res!2533503 () Bool)

(assert (=> b!6107001 (= res!2533503 (not (nullable!6050 (reg!16386 lt!2329705))))))

(assert (=> b!6107001 (=> (not res!2533503) (not e!3724226))))

(declare-fun b!6107002 () Bool)

(assert (=> b!6107002 (= e!3724227 e!3724229)))

(declare-fun res!2533504 () Bool)

(assert (=> b!6107002 (=> (not res!2533504) (not e!3724229))))

(declare-fun call!505150 () Bool)

(assert (=> b!6107002 (= res!2533504 call!505150)))

(declare-fun b!6107003 () Bool)

(assert (=> b!6107003 (= e!3724226 call!505148)))

(declare-fun b!6107004 () Bool)

(declare-fun res!2533500 () Bool)

(assert (=> b!6107004 (=> (not res!2533500) (not e!3724230))))

(assert (=> b!6107004 (= res!2533500 call!505150)))

(assert (=> b!6107004 (= e!3724232 e!3724230)))

(declare-fun bm!505145 () Bool)

(assert (=> bm!505145 (= call!505150 (validRegex!7793 (ite c!1097168 (regOne!32627 lt!2329705) (regOne!32626 lt!2329705))))))

(declare-fun d!1914004 () Bool)

(declare-fun res!2533501 () Bool)

(assert (=> d!1914004 (=> res!2533501 e!3724228)))

(assert (=> d!1914004 (= res!2533501 ((_ is ElementMatch!16057) lt!2329705))))

(assert (=> d!1914004 (= (validRegex!7793 lt!2329705) e!3724228)))

(assert (= (and d!1914004 (not res!2533501)) b!6106998))

(assert (= (and b!6106998 c!1097169) b!6107001))

(assert (= (and b!6106998 (not c!1097169)) b!6106996))

(assert (= (and b!6107001 res!2533503) b!6107003))

(assert (= (and b!6106996 c!1097168) b!6107004))

(assert (= (and b!6106996 (not c!1097168)) b!6106999))

(assert (= (and b!6107004 res!2533500) b!6106997))

(assert (= (and b!6106999 (not res!2533502)) b!6107002))

(assert (= (and b!6107002 res!2533504) b!6107000))

(assert (= (or b!6106997 b!6107000) bm!505143))

(assert (= (or b!6107004 b!6107002) bm!505145))

(assert (= (or b!6107003 bm!505143) bm!505144))

(declare-fun m!6957706 () Bool)

(assert (=> bm!505144 m!6957706))

(declare-fun m!6957708 () Bool)

(assert (=> b!6107001 m!6957708))

(declare-fun m!6957710 () Bool)

(assert (=> bm!505145 m!6957710))

(assert (=> d!1913676 d!1914004))

(assert (=> d!1913676 d!1913684))

(assert (=> d!1913676 d!1913694))

(declare-fun d!1914006 () Bool)

(assert (=> d!1914006 (= ($colon$colon!1934 (exprs!5941 lt!2329690) (ite (or c!1097014 c!1097015) (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (h!70794 (exprs!5941 (h!70795 zl!343))))) (Cons!64346 (ite (or c!1097014 c!1097015) (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (h!70794 (exprs!5941 (h!70795 zl!343)))) (exprs!5941 lt!2329690)))))

(assert (=> bm!505037 d!1914006))

(declare-fun d!1914008 () Bool)

(assert (=> d!1914008 (= (isEmpty!36269 (exprs!5941 (h!70795 zl!343))) ((_ is Nil!64346) (exprs!5941 (h!70795 zl!343))))))

(assert (=> b!6106255 d!1914008))

(declare-fun d!1914010 () Bool)

(declare-fun res!2533509 () Bool)

(declare-fun e!3724237 () Bool)

(assert (=> d!1914010 (=> res!2533509 e!3724237)))

(assert (=> d!1914010 (= res!2533509 ((_ is Nil!64347) lt!2329759))))

(assert (=> d!1914010 (= (noDuplicate!1904 lt!2329759) e!3724237)))

(declare-fun b!6107009 () Bool)

(declare-fun e!3724238 () Bool)

(assert (=> b!6107009 (= e!3724237 e!3724238)))

(declare-fun res!2533510 () Bool)

(assert (=> b!6107009 (=> (not res!2533510) (not e!3724238))))

(declare-fun contains!20020 (List!64471 Context!10882) Bool)

(assert (=> b!6107009 (= res!2533510 (not (contains!20020 (t!377924 lt!2329759) (h!70795 lt!2329759))))))

(declare-fun b!6107010 () Bool)

(assert (=> b!6107010 (= e!3724238 (noDuplicate!1904 (t!377924 lt!2329759)))))

(assert (= (and d!1914010 (not res!2533509)) b!6107009))

(assert (= (and b!6107009 res!2533510) b!6107010))

(declare-fun m!6957712 () Bool)

(assert (=> b!6107009 m!6957712))

(declare-fun m!6957714 () Bool)

(assert (=> b!6107010 m!6957714))

(assert (=> d!1913744 d!1914010))

(declare-fun d!1914012 () Bool)

(declare-fun e!3724245 () Bool)

(assert (=> d!1914012 e!3724245))

(declare-fun res!2533516 () Bool)

(assert (=> d!1914012 (=> (not res!2533516) (not e!3724245))))

(declare-fun res!2533515 () List!64471)

(assert (=> d!1914012 (= res!2533516 (noDuplicate!1904 res!2533515))))

(declare-fun e!3724247 () Bool)

(assert (=> d!1914012 e!3724247))

(assert (=> d!1914012 (= (choose!45398 z!1189) res!2533515)))

(declare-fun b!6107018 () Bool)

(declare-fun e!3724246 () Bool)

(declare-fun tp!1705053 () Bool)

(assert (=> b!6107018 (= e!3724246 tp!1705053)))

(declare-fun b!6107017 () Bool)

(declare-fun tp!1705054 () Bool)

(assert (=> b!6107017 (= e!3724247 (and (inv!83389 (h!70795 res!2533515)) e!3724246 tp!1705054))))

(declare-fun b!6107019 () Bool)

(assert (=> b!6107019 (= e!3724245 (= (content!11939 res!2533515) z!1189))))

(assert (= b!6107017 b!6107018))

(assert (= (and d!1914012 ((_ is Cons!64347) res!2533515)) b!6107017))

(assert (= (and d!1914012 res!2533516) b!6107019))

(declare-fun m!6957716 () Bool)

(assert (=> d!1914012 m!6957716))

(declare-fun m!6957718 () Bool)

(assert (=> b!6107017 m!6957718))

(declare-fun m!6957720 () Bool)

(assert (=> b!6107019 m!6957720))

(assert (=> d!1913744 d!1914012))

(declare-fun b!6107020 () Bool)

(declare-fun res!2533521 () Bool)

(declare-fun e!3724254 () Bool)

(assert (=> b!6107020 (=> (not res!2533521) (not e!3724254))))

(declare-fun call!505151 () Bool)

(assert (=> b!6107020 (= res!2533521 (not call!505151))))

(declare-fun b!6107021 () Bool)

(declare-fun res!2533522 () Bool)

(declare-fun e!3724252 () Bool)

(assert (=> b!6107021 (=> res!2533522 e!3724252)))

(assert (=> b!6107021 (= res!2533522 (not ((_ is ElementMatch!16057) (regOne!32626 r!7292))))))

(declare-fun e!3724249 () Bool)

(assert (=> b!6107021 (= e!3724249 e!3724252)))

(declare-fun b!6107022 () Bool)

(declare-fun res!2533524 () Bool)

(assert (=> b!6107022 (=> (not res!2533524) (not e!3724254))))

(assert (=> b!6107022 (= res!2533524 (isEmpty!36274 (tail!11721 (_1!36339 (get!22188 lt!2329734)))))))

(declare-fun b!6107023 () Bool)

(declare-fun e!3724253 () Bool)

(assert (=> b!6107023 (= e!3724253 (not (= (head!12636 (_1!36339 (get!22188 lt!2329734))) (c!1096851 (regOne!32626 r!7292)))))))

(declare-fun b!6107024 () Bool)

(assert (=> b!6107024 (= e!3724254 (= (head!12636 (_1!36339 (get!22188 lt!2329734))) (c!1096851 (regOne!32626 r!7292))))))

(declare-fun b!6107025 () Bool)

(declare-fun res!2533519 () Bool)

(assert (=> b!6107025 (=> res!2533519 e!3724253)))

(assert (=> b!6107025 (= res!2533519 (not (isEmpty!36274 (tail!11721 (_1!36339 (get!22188 lt!2329734))))))))

(declare-fun b!6107027 () Bool)

(declare-fun e!3724250 () Bool)

(assert (=> b!6107027 (= e!3724250 e!3724253)))

(declare-fun res!2533523 () Bool)

(assert (=> b!6107027 (=> res!2533523 e!3724253)))

(assert (=> b!6107027 (= res!2533523 call!505151)))

(declare-fun b!6107028 () Bool)

(assert (=> b!6107028 (= e!3724252 e!3724250)))

(declare-fun res!2533517 () Bool)

(assert (=> b!6107028 (=> (not res!2533517) (not e!3724250))))

(declare-fun lt!2329803 () Bool)

(assert (=> b!6107028 (= res!2533517 (not lt!2329803))))

(declare-fun b!6107029 () Bool)

(declare-fun e!3724251 () Bool)

(assert (=> b!6107029 (= e!3724251 e!3724249)))

(declare-fun c!1097171 () Bool)

(assert (=> b!6107029 (= c!1097171 ((_ is EmptyLang!16057) (regOne!32626 r!7292)))))

(declare-fun b!6107030 () Bool)

(declare-fun e!3724248 () Bool)

(assert (=> b!6107030 (= e!3724248 (matchR!8240 (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 (_1!36339 (get!22188 lt!2329734)))) (tail!11721 (_1!36339 (get!22188 lt!2329734)))))))

(declare-fun b!6107031 () Bool)

(assert (=> b!6107031 (= e!3724248 (nullable!6050 (regOne!32626 r!7292)))))

(declare-fun b!6107032 () Bool)

(assert (=> b!6107032 (= e!3724249 (not lt!2329803))))

(declare-fun b!6107033 () Bool)

(declare-fun res!2533520 () Bool)

(assert (=> b!6107033 (=> res!2533520 e!3724252)))

(assert (=> b!6107033 (= res!2533520 e!3724254)))

(declare-fun res!2533518 () Bool)

(assert (=> b!6107033 (=> (not res!2533518) (not e!3724254))))

(assert (=> b!6107033 (= res!2533518 lt!2329803)))

(declare-fun bm!505146 () Bool)

(assert (=> bm!505146 (= call!505151 (isEmpty!36274 (_1!36339 (get!22188 lt!2329734))))))

(declare-fun b!6107026 () Bool)

(assert (=> b!6107026 (= e!3724251 (= lt!2329803 call!505151))))

(declare-fun d!1914014 () Bool)

(assert (=> d!1914014 e!3724251))

(declare-fun c!1097172 () Bool)

(assert (=> d!1914014 (= c!1097172 ((_ is EmptyExpr!16057) (regOne!32626 r!7292)))))

(assert (=> d!1914014 (= lt!2329803 e!3724248)))

(declare-fun c!1097170 () Bool)

(assert (=> d!1914014 (= c!1097170 (isEmpty!36274 (_1!36339 (get!22188 lt!2329734))))))

(assert (=> d!1914014 (validRegex!7793 (regOne!32626 r!7292))))

(assert (=> d!1914014 (= (matchR!8240 (regOne!32626 r!7292) (_1!36339 (get!22188 lt!2329734))) lt!2329803)))

(assert (= (and d!1914014 c!1097170) b!6107031))

(assert (= (and d!1914014 (not c!1097170)) b!6107030))

(assert (= (and d!1914014 c!1097172) b!6107026))

(assert (= (and d!1914014 (not c!1097172)) b!6107029))

(assert (= (and b!6107029 c!1097171) b!6107032))

(assert (= (and b!6107029 (not c!1097171)) b!6107021))

(assert (= (and b!6107021 (not res!2533522)) b!6107033))

(assert (= (and b!6107033 res!2533518) b!6107020))

(assert (= (and b!6107020 res!2533521) b!6107022))

(assert (= (and b!6107022 res!2533524) b!6107024))

(assert (= (and b!6107033 (not res!2533520)) b!6107028))

(assert (= (and b!6107028 res!2533517) b!6107027))

(assert (= (and b!6107027 (not res!2533523)) b!6107025))

(assert (= (and b!6107025 (not res!2533519)) b!6107023))

(assert (= (or b!6107026 b!6107020 b!6107027) bm!505146))

(declare-fun m!6957722 () Bool)

(assert (=> b!6107023 m!6957722))

(assert (=> b!6107024 m!6957722))

(declare-fun m!6957724 () Bool)

(assert (=> bm!505146 m!6957724))

(assert (=> b!6107030 m!6957722))

(assert (=> b!6107030 m!6957722))

(declare-fun m!6957726 () Bool)

(assert (=> b!6107030 m!6957726))

(declare-fun m!6957728 () Bool)

(assert (=> b!6107030 m!6957728))

(assert (=> b!6107030 m!6957726))

(assert (=> b!6107030 m!6957728))

(declare-fun m!6957730 () Bool)

(assert (=> b!6107030 m!6957730))

(assert (=> b!6107022 m!6957728))

(assert (=> b!6107022 m!6957728))

(declare-fun m!6957732 () Bool)

(assert (=> b!6107022 m!6957732))

(assert (=> b!6107025 m!6957728))

(assert (=> b!6107025 m!6957728))

(assert (=> b!6107025 m!6957732))

(assert (=> b!6107031 m!6957532))

(assert (=> d!1914014 m!6957724))

(assert (=> d!1914014 m!6956996))

(assert (=> b!6105969 d!1914014))

(assert (=> b!6105969 d!1913962))

(declare-fun bs!1516181 () Bool)

(declare-fun d!1914016 () Bool)

(assert (= bs!1516181 (and d!1914016 d!1913694)))

(declare-fun lambda!332757 () Int)

(assert (=> bs!1516181 (= lambda!332757 lambda!332695)))

(declare-fun bs!1516182 () Bool)

(assert (= bs!1516182 (and d!1914016 d!1914000)))

(assert (=> bs!1516182 (= lambda!332757 lambda!332756)))

(declare-fun bs!1516183 () Bool)

(assert (= bs!1516183 (and d!1914016 d!1913998)))

(assert (=> bs!1516183 (= lambda!332757 lambda!332755)))

(declare-fun bs!1516184 () Bool)

(assert (= bs!1516184 (and d!1914016 d!1913734)))

(assert (=> bs!1516184 (= lambda!332757 lambda!332720)))

(declare-fun bs!1516185 () Bool)

(assert (= bs!1516185 (and d!1914016 d!1913970)))

(assert (=> bs!1516185 (= lambda!332757 lambda!332752)))

(declare-fun bs!1516186 () Bool)

(assert (= bs!1516186 (and d!1914016 d!1913684)))

(assert (=> bs!1516186 (= lambda!332757 lambda!332688)))

(declare-fun bs!1516187 () Bool)

(assert (= bs!1516187 (and d!1914016 d!1913730)))

(assert (=> bs!1516187 (= lambda!332757 lambda!332719)))

(declare-fun bs!1516188 () Bool)

(assert (= bs!1516188 (and d!1914016 d!1913748)))

(assert (=> bs!1516188 (= lambda!332757 lambda!332729)))

(declare-fun bs!1516189 () Bool)

(assert (= bs!1516189 (and d!1914016 d!1913968)))

(assert (=> bs!1516189 (= lambda!332757 lambda!332751)))

(declare-fun b!6107034 () Bool)

(declare-fun e!3724257 () Bool)

(declare-fun lt!2329804 () Regex!16057)

(assert (=> b!6107034 (= e!3724257 (isUnion!914 lt!2329804))))

(declare-fun b!6107035 () Bool)

(declare-fun e!3724260 () Bool)

(assert (=> b!6107035 (= e!3724260 (isEmpty!36269 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(declare-fun b!6107036 () Bool)

(declare-fun e!3724255 () Regex!16057)

(assert (=> b!6107036 (= e!3724255 (Union!16057 (h!70794 (t!377923 (unfocusZipperList!1478 zl!343))) (generalisedUnion!1901 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343))))))))

(declare-fun b!6107037 () Bool)

(assert (=> b!6107037 (= e!3724257 (= lt!2329804 (head!12635 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(declare-fun b!6107038 () Bool)

(declare-fun e!3724259 () Regex!16057)

(assert (=> b!6107038 (= e!3724259 (h!70794 (t!377923 (unfocusZipperList!1478 zl!343))))))

(declare-fun b!6107039 () Bool)

(assert (=> b!6107039 (= e!3724259 e!3724255)))

(declare-fun c!1097175 () Bool)

(assert (=> b!6107039 (= c!1097175 ((_ is Cons!64346) (t!377923 (unfocusZipperList!1478 zl!343))))))

(declare-fun b!6107041 () Bool)

(declare-fun e!3724256 () Bool)

(assert (=> b!6107041 (= e!3724256 (isEmptyLang!1484 lt!2329804))))

(declare-fun b!6107042 () Bool)

(declare-fun e!3724258 () Bool)

(assert (=> b!6107042 (= e!3724258 e!3724256)))

(declare-fun c!1097174 () Bool)

(assert (=> b!6107042 (= c!1097174 (isEmpty!36269 (t!377923 (unfocusZipperList!1478 zl!343))))))

(declare-fun b!6107043 () Bool)

(assert (=> b!6107043 (= e!3724256 e!3724257)))

(declare-fun c!1097173 () Bool)

(assert (=> b!6107043 (= c!1097173 (isEmpty!36269 (tail!11720 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(declare-fun b!6107040 () Bool)

(assert (=> b!6107040 (= e!3724255 EmptyLang!16057)))

(assert (=> d!1914016 e!3724258))

(declare-fun res!2533525 () Bool)

(assert (=> d!1914016 (=> (not res!2533525) (not e!3724258))))

(assert (=> d!1914016 (= res!2533525 (validRegex!7793 lt!2329804))))

(assert (=> d!1914016 (= lt!2329804 e!3724259)))

(declare-fun c!1097176 () Bool)

(assert (=> d!1914016 (= c!1097176 e!3724260)))

(declare-fun res!2533526 () Bool)

(assert (=> d!1914016 (=> (not res!2533526) (not e!3724260))))

(assert (=> d!1914016 (= res!2533526 ((_ is Cons!64346) (t!377923 (unfocusZipperList!1478 zl!343))))))

(assert (=> d!1914016 (forall!15178 (t!377923 (unfocusZipperList!1478 zl!343)) lambda!332757)))

(assert (=> d!1914016 (= (generalisedUnion!1901 (t!377923 (unfocusZipperList!1478 zl!343))) lt!2329804)))

(assert (= (and d!1914016 res!2533526) b!6107035))

(assert (= (and d!1914016 c!1097176) b!6107038))

(assert (= (and d!1914016 (not c!1097176)) b!6107039))

(assert (= (and b!6107039 c!1097175) b!6107036))

(assert (= (and b!6107039 (not c!1097175)) b!6107040))

(assert (= (and d!1914016 res!2533525) b!6107042))

(assert (= (and b!6107042 c!1097174) b!6107041))

(assert (= (and b!6107042 (not c!1097174)) b!6107043))

(assert (= (and b!6107043 c!1097173) b!6107037))

(assert (= (and b!6107043 (not c!1097173)) b!6107034))

(declare-fun m!6957734 () Bool)

(assert (=> b!6107035 m!6957734))

(declare-fun m!6957736 () Bool)

(assert (=> b!6107043 m!6957736))

(assert (=> b!6107043 m!6957736))

(declare-fun m!6957738 () Bool)

(assert (=> b!6107043 m!6957738))

(declare-fun m!6957740 () Bool)

(assert (=> b!6107041 m!6957740))

(declare-fun m!6957742 () Bool)

(assert (=> d!1914016 m!6957742))

(declare-fun m!6957744 () Bool)

(assert (=> d!1914016 m!6957744))

(declare-fun m!6957746 () Bool)

(assert (=> b!6107036 m!6957746))

(assert (=> b!6107042 m!6956912))

(declare-fun m!6957748 () Bool)

(assert (=> b!6107034 m!6957748))

(declare-fun m!6957750 () Bool)

(assert (=> b!6107037 m!6957750))

(assert (=> b!6105801 d!1914016))

(declare-fun b!6107044 () Bool)

(declare-fun e!3724266 () (InoxSet Context!10882))

(declare-fun e!3724265 () (InoxSet Context!10882))

(assert (=> b!6107044 (= e!3724266 e!3724265)))

(declare-fun c!1097178 () Bool)

(assert (=> b!6107044 (= c!1097178 ((_ is Union!16057) (h!70794 (exprs!5941 lt!2329690))))))

(declare-fun c!1097180 () Bool)

(declare-fun c!1097181 () Bool)

(declare-fun bm!505147 () Bool)

(declare-fun call!505152 () List!64470)

(assert (=> bm!505147 (= call!505152 ($colon$colon!1934 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))) (ite (or c!1097180 c!1097181) (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (h!70794 (exprs!5941 lt!2329690)))))))

(declare-fun b!6107045 () Bool)

(declare-fun e!3724262 () (InoxSet Context!10882))

(declare-fun call!505155 () (InoxSet Context!10882))

(assert (=> b!6107045 (= e!3724262 call!505155)))

(declare-fun bm!505148 () Bool)

(declare-fun call!505153 () (InoxSet Context!10882))

(declare-fun call!505157 () (InoxSet Context!10882))

(assert (=> bm!505148 (= call!505153 call!505157)))

(declare-fun b!6107046 () Bool)

(declare-fun call!505156 () (InoxSet Context!10882))

(assert (=> b!6107046 (= e!3724265 ((_ map or) call!505157 call!505156))))

(declare-fun bm!505149 () Bool)

(assert (=> bm!505149 (= call!505155 call!505153)))

(declare-fun b!6107047 () Bool)

(declare-fun e!3724263 () (InoxSet Context!10882))

(assert (=> b!6107047 (= e!3724263 ((_ map or) call!505156 call!505153))))

(declare-fun b!6107048 () Bool)

(declare-fun e!3724261 () Bool)

(assert (=> b!6107048 (= e!3724261 (nullable!6050 (regOne!32626 (h!70794 (exprs!5941 lt!2329690)))))))

(declare-fun d!1914018 () Bool)

(declare-fun c!1097177 () Bool)

(assert (=> d!1914018 (= c!1097177 (and ((_ is ElementMatch!16057) (h!70794 (exprs!5941 lt!2329690))) (= (c!1096851 (h!70794 (exprs!5941 lt!2329690))) (h!70796 s!2326))))))

(assert (=> d!1914018 (= (derivationStepZipperDown!1305 (h!70794 (exprs!5941 lt!2329690)) (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (h!70796 s!2326)) e!3724266)))

(declare-fun bm!505150 () Bool)

(assert (=> bm!505150 (= call!505156 (derivationStepZipperDown!1305 (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690)))) (ite c!1097178 (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (Context!10883 call!505152)) (h!70796 s!2326)))))

(declare-fun b!6107049 () Bool)

(assert (=> b!6107049 (= e!3724266 (store ((as const (Array Context!10882 Bool)) false) (Context!10883 (t!377923 (exprs!5941 lt!2329690))) true))))

(declare-fun b!6107050 () Bool)

(assert (=> b!6107050 (= c!1097180 e!3724261)))

(declare-fun res!2533527 () Bool)

(assert (=> b!6107050 (=> (not res!2533527) (not e!3724261))))

(assert (=> b!6107050 (= res!2533527 ((_ is Concat!24902) (h!70794 (exprs!5941 lt!2329690))))))

(assert (=> b!6107050 (= e!3724265 e!3724263)))

(declare-fun b!6107051 () Bool)

(declare-fun c!1097179 () Bool)

(assert (=> b!6107051 (= c!1097179 ((_ is Star!16057) (h!70794 (exprs!5941 lt!2329690))))))

(declare-fun e!3724264 () (InoxSet Context!10882))

(assert (=> b!6107051 (= e!3724262 e!3724264)))

(declare-fun bm!505151 () Bool)

(declare-fun call!505154 () List!64470)

(assert (=> bm!505151 (= call!505157 (derivationStepZipperDown!1305 (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690)))))) (ite (or c!1097178 c!1097180) (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (Context!10883 call!505154)) (h!70796 s!2326)))))

(declare-fun bm!505152 () Bool)

(assert (=> bm!505152 (= call!505154 call!505152)))

(declare-fun b!6107052 () Bool)

(assert (=> b!6107052 (= e!3724264 call!505155)))

(declare-fun b!6107053 () Bool)

(assert (=> b!6107053 (= e!3724263 e!3724262)))

(assert (=> b!6107053 (= c!1097181 ((_ is Concat!24902) (h!70794 (exprs!5941 lt!2329690))))))

(declare-fun b!6107054 () Bool)

(assert (=> b!6107054 (= e!3724264 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1914018 c!1097177) b!6107049))

(assert (= (and d!1914018 (not c!1097177)) b!6107044))

(assert (= (and b!6107044 c!1097178) b!6107046))

(assert (= (and b!6107044 (not c!1097178)) b!6107050))

(assert (= (and b!6107050 res!2533527) b!6107048))

(assert (= (and b!6107050 c!1097180) b!6107047))

(assert (= (and b!6107050 (not c!1097180)) b!6107053))

(assert (= (and b!6107053 c!1097181) b!6107045))

(assert (= (and b!6107053 (not c!1097181)) b!6107051))

(assert (= (and b!6107051 c!1097179) b!6107052))

(assert (= (and b!6107051 (not c!1097179)) b!6107054))

(assert (= (or b!6107045 b!6107052) bm!505152))

(assert (= (or b!6107045 b!6107052) bm!505149))

(assert (= (or b!6107047 bm!505152) bm!505147))

(assert (= (or b!6107047 bm!505149) bm!505148))

(assert (= (or b!6107046 b!6107047) bm!505150))

(assert (= (or b!6107046 bm!505148) bm!505151))

(declare-fun m!6957752 () Bool)

(assert (=> b!6107048 m!6957752))

(declare-fun m!6957754 () Bool)

(assert (=> bm!505147 m!6957754))

(declare-fun m!6957756 () Bool)

(assert (=> bm!505150 m!6957756))

(declare-fun m!6957758 () Bool)

(assert (=> b!6107049 m!6957758))

(declare-fun m!6957760 () Bool)

(assert (=> bm!505151 m!6957760))

(assert (=> bm!505024 d!1914018))

(declare-fun d!1914020 () Bool)

(assert (=> d!1914020 true))

(assert (=> d!1914020 true))

(declare-fun res!2533528 () Bool)

(assert (=> d!1914020 (= (choose!45394 lambda!332673) res!2533528)))

(assert (=> d!1913702 d!1914020))

(declare-fun d!1914022 () Bool)

(assert (=> d!1914022 (= (isEmpty!36269 (tail!11720 (unfocusZipperList!1478 zl!343))) ((_ is Nil!64346) (tail!11720 (unfocusZipperList!1478 zl!343))))))

(assert (=> b!6105808 d!1914022))

(declare-fun d!1914024 () Bool)

(assert (=> d!1914024 (= (tail!11720 (unfocusZipperList!1478 zl!343)) (t!377923 (unfocusZipperList!1478 zl!343)))))

(assert (=> b!6105808 d!1914024))

(declare-fun b!6107055 () Bool)

(declare-fun e!3724272 () Bool)

(declare-fun e!3724273 () Bool)

(assert (=> b!6107055 (= e!3724272 e!3724273)))

(declare-fun c!1097182 () Bool)

(assert (=> b!6107055 (= c!1097182 ((_ is Union!16057) (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))))

(declare-fun b!6107056 () Bool)

(declare-fun e!3724271 () Bool)

(declare-fun call!505159 () Bool)

(assert (=> b!6107056 (= e!3724271 call!505159)))

(declare-fun b!6107057 () Bool)

(declare-fun e!3724269 () Bool)

(assert (=> b!6107057 (= e!3724269 e!3724272)))

(declare-fun c!1097183 () Bool)

(assert (=> b!6107057 (= c!1097183 ((_ is Star!16057) (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))))

(declare-fun bm!505153 () Bool)

(declare-fun call!505158 () Bool)

(assert (=> bm!505153 (= call!505159 call!505158)))

(declare-fun b!6107058 () Bool)

(declare-fun res!2533531 () Bool)

(declare-fun e!3724268 () Bool)

(assert (=> b!6107058 (=> res!2533531 e!3724268)))

(assert (=> b!6107058 (= res!2533531 (not ((_ is Concat!24902) (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))))

(assert (=> b!6107058 (= e!3724273 e!3724268)))

(declare-fun b!6107059 () Bool)

(declare-fun e!3724270 () Bool)

(assert (=> b!6107059 (= e!3724270 call!505159)))

(declare-fun bm!505154 () Bool)

(assert (=> bm!505154 (= call!505158 (validRegex!7793 (ite c!1097183 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (ite c!1097182 (regTwo!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regTwo!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))))))

(declare-fun b!6107060 () Bool)

(declare-fun e!3724267 () Bool)

(assert (=> b!6107060 (= e!3724272 e!3724267)))

(declare-fun res!2533532 () Bool)

(assert (=> b!6107060 (= res!2533532 (not (nullable!6050 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))))))

(assert (=> b!6107060 (=> (not res!2533532) (not e!3724267))))

(declare-fun b!6107061 () Bool)

(assert (=> b!6107061 (= e!3724268 e!3724270)))

(declare-fun res!2533533 () Bool)

(assert (=> b!6107061 (=> (not res!2533533) (not e!3724270))))

(declare-fun call!505160 () Bool)

(assert (=> b!6107061 (= res!2533533 call!505160)))

(declare-fun b!6107062 () Bool)

(assert (=> b!6107062 (= e!3724267 call!505158)))

(declare-fun b!6107063 () Bool)

(declare-fun res!2533529 () Bool)

(assert (=> b!6107063 (=> (not res!2533529) (not e!3724271))))

(assert (=> b!6107063 (= res!2533529 call!505160)))

(assert (=> b!6107063 (= e!3724273 e!3724271)))

(declare-fun bm!505155 () Bool)

(assert (=> bm!505155 (= call!505160 (validRegex!7793 (ite c!1097182 (regOne!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regOne!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))))))

(declare-fun d!1914026 () Bool)

(declare-fun res!2533530 () Bool)

(assert (=> d!1914026 (=> res!2533530 e!3724269)))

(assert (=> d!1914026 (= res!2533530 ((_ is ElementMatch!16057) (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))))

(assert (=> d!1914026 (= (validRegex!7793 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) e!3724269)))

(assert (= (and d!1914026 (not res!2533530)) b!6107057))

(assert (= (and b!6107057 c!1097183) b!6107060))

(assert (= (and b!6107057 (not c!1097183)) b!6107055))

(assert (= (and b!6107060 res!2533532) b!6107062))

(assert (= (and b!6107055 c!1097182) b!6107063))

(assert (= (and b!6107055 (not c!1097182)) b!6107058))

(assert (= (and b!6107063 res!2533529) b!6107056))

(assert (= (and b!6107058 (not res!2533531)) b!6107061))

(assert (= (and b!6107061 res!2533533) b!6107059))

(assert (= (or b!6107056 b!6107059) bm!505153))

(assert (= (or b!6107063 b!6107061) bm!505155))

(assert (= (or b!6107062 bm!505153) bm!505154))

(declare-fun m!6957762 () Bool)

(assert (=> bm!505154 m!6957762))

(declare-fun m!6957764 () Bool)

(assert (=> b!6107060 m!6957764))

(declare-fun m!6957766 () Bool)

(assert (=> bm!505155 m!6957766))

(assert (=> bm!505011 d!1914026))

(declare-fun d!1914028 () Bool)

(declare-fun res!2533534 () Bool)

(declare-fun e!3724274 () Bool)

(assert (=> d!1914028 (=> res!2533534 e!3724274)))

(assert (=> d!1914028 (= res!2533534 ((_ is Nil!64346) (exprs!5941 (h!70795 zl!343))))))

(assert (=> d!1914028 (= (forall!15178 (exprs!5941 (h!70795 zl!343)) lambda!332719) e!3724274)))

(declare-fun b!6107064 () Bool)

(declare-fun e!3724275 () Bool)

(assert (=> b!6107064 (= e!3724274 e!3724275)))

(declare-fun res!2533535 () Bool)

(assert (=> b!6107064 (=> (not res!2533535) (not e!3724275))))

(assert (=> b!6107064 (= res!2533535 (dynLambda!25338 lambda!332719 (h!70794 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun b!6107065 () Bool)

(assert (=> b!6107065 (= e!3724275 (forall!15178 (t!377923 (exprs!5941 (h!70795 zl!343))) lambda!332719))))

(assert (= (and d!1914028 (not res!2533534)) b!6107064))

(assert (= (and b!6107064 res!2533535) b!6107065))

(declare-fun b_lambda!232635 () Bool)

(assert (=> (not b_lambda!232635) (not b!6107064)))

(declare-fun m!6957768 () Bool)

(assert (=> b!6107064 m!6957768))

(declare-fun m!6957770 () Bool)

(assert (=> b!6107065 m!6957770))

(assert (=> d!1913730 d!1914028))

(declare-fun d!1914030 () Bool)

(assert (=> d!1914030 (= (Exists!3127 (ite c!1096973 lambda!332725 lambda!332726)) (choose!45394 (ite c!1096973 lambda!332725 lambda!332726)))))

(declare-fun bs!1516190 () Bool)

(assert (= bs!1516190 d!1914030))

(declare-fun m!6957772 () Bool)

(assert (=> bs!1516190 m!6957772))

(assert (=> bm!505017 d!1914030))

(declare-fun d!1914032 () Bool)

(assert (=> d!1914032 (= (isEmptyLang!1484 lt!2329714) ((_ is EmptyLang!16057) lt!2329714))))

(assert (=> b!6105806 d!1914032))

(assert (=> b!6106213 d!1913920))

(declare-fun b!6107066 () Bool)

(declare-fun e!3724281 () (InoxSet Context!10882))

(declare-fun e!3724280 () (InoxSet Context!10882))

(assert (=> b!6107066 (= e!3724281 e!3724280)))

(declare-fun c!1097185 () Bool)

(assert (=> b!6107066 (= c!1097185 ((_ is Union!16057) (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))

(declare-fun c!1097188 () Bool)

(declare-fun c!1097187 () Bool)

(declare-fun bm!505156 () Bool)

(declare-fun call!505161 () List!64470)

(assert (=> bm!505156 (= call!505161 ($colon$colon!1934 (exprs!5941 (ite c!1097012 lt!2329690 (Context!10883 call!505042))) (ite (or c!1097187 c!1097188) (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))

(declare-fun b!6107067 () Bool)

(declare-fun e!3724277 () (InoxSet Context!10882))

(declare-fun call!505164 () (InoxSet Context!10882))

(assert (=> b!6107067 (= e!3724277 call!505164)))

(declare-fun bm!505157 () Bool)

(declare-fun call!505162 () (InoxSet Context!10882))

(declare-fun call!505166 () (InoxSet Context!10882))

(assert (=> bm!505157 (= call!505162 call!505166)))

(declare-fun b!6107068 () Bool)

(declare-fun call!505165 () (InoxSet Context!10882))

(assert (=> b!6107068 (= e!3724280 ((_ map or) call!505166 call!505165))))

(declare-fun bm!505158 () Bool)

(assert (=> bm!505158 (= call!505164 call!505162)))

(declare-fun b!6107069 () Bool)

(declare-fun e!3724278 () (InoxSet Context!10882))

(assert (=> b!6107069 (= e!3724278 ((_ map or) call!505165 call!505162))))

(declare-fun b!6107070 () Bool)

(declare-fun e!3724276 () Bool)

(assert (=> b!6107070 (= e!3724276 (nullable!6050 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))

(declare-fun d!1914034 () Bool)

(declare-fun c!1097184 () Bool)

(assert (=> d!1914034 (= c!1097184 (and ((_ is ElementMatch!16057) (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (= (c!1096851 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (h!70796 s!2326))))))

(assert (=> d!1914034 (= (derivationStepZipperDown!1305 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))) (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (h!70796 s!2326)) e!3724281)))

(declare-fun bm!505159 () Bool)

(assert (=> bm!505159 (= call!505165 (derivationStepZipperDown!1305 (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))) (ite c!1097185 (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (Context!10883 call!505161)) (h!70796 s!2326)))))

(declare-fun b!6107071 () Bool)

(assert (=> b!6107071 (= e!3724281 (store ((as const (Array Context!10882 Bool)) false) (ite c!1097012 lt!2329690 (Context!10883 call!505042)) true))))

(declare-fun b!6107072 () Bool)

(assert (=> b!6107072 (= c!1097187 e!3724276)))

(declare-fun res!2533536 () Bool)

(assert (=> b!6107072 (=> (not res!2533536) (not e!3724276))))

(assert (=> b!6107072 (= res!2533536 ((_ is Concat!24902) (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))

(assert (=> b!6107072 (= e!3724280 e!3724278)))

(declare-fun b!6107073 () Bool)

(declare-fun c!1097186 () Bool)

(assert (=> b!6107073 (= c!1097186 ((_ is Star!16057) (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))

(declare-fun e!3724279 () (InoxSet Context!10882))

(assert (=> b!6107073 (= e!3724277 e!3724279)))

(declare-fun call!505163 () List!64470)

(declare-fun bm!505160 () Bool)

(assert (=> bm!505160 (= call!505166 (derivationStepZipperDown!1305 (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))) (ite (or c!1097185 c!1097187) (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (Context!10883 call!505163)) (h!70796 s!2326)))))

(declare-fun bm!505161 () Bool)

(assert (=> bm!505161 (= call!505163 call!505161)))

(declare-fun b!6107074 () Bool)

(assert (=> b!6107074 (= e!3724279 call!505164)))

(declare-fun b!6107075 () Bool)

(assert (=> b!6107075 (= e!3724278 e!3724277)))

(assert (=> b!6107075 (= c!1097188 ((_ is Concat!24902) (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))

(declare-fun b!6107076 () Bool)

(assert (=> b!6107076 (= e!3724279 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1914034 c!1097184) b!6107071))

(assert (= (and d!1914034 (not c!1097184)) b!6107066))

(assert (= (and b!6107066 c!1097185) b!6107068))

(assert (= (and b!6107066 (not c!1097185)) b!6107072))

(assert (= (and b!6107072 res!2533536) b!6107070))

(assert (= (and b!6107072 c!1097187) b!6107069))

(assert (= (and b!6107072 (not c!1097187)) b!6107075))

(assert (= (and b!6107075 c!1097188) b!6107067))

(assert (= (and b!6107075 (not c!1097188)) b!6107073))

(assert (= (and b!6107073 c!1097186) b!6107074))

(assert (= (and b!6107073 (not c!1097186)) b!6107076))

(assert (= (or b!6107067 b!6107074) bm!505161))

(assert (= (or b!6107067 b!6107074) bm!505158))

(assert (= (or b!6107069 bm!505161) bm!505156))

(assert (= (or b!6107069 bm!505158) bm!505157))

(assert (= (or b!6107068 b!6107069) bm!505159))

(assert (= (or b!6107068 bm!505157) bm!505160))

(declare-fun m!6957774 () Bool)

(assert (=> b!6107070 m!6957774))

(declare-fun m!6957776 () Bool)

(assert (=> bm!505156 m!6957776))

(declare-fun m!6957778 () Bool)

(assert (=> bm!505159 m!6957778))

(declare-fun m!6957780 () Bool)

(assert (=> b!6107071 m!6957780))

(declare-fun m!6957782 () Bool)

(assert (=> bm!505160 m!6957782))

(assert (=> bm!505040 d!1914034))

(declare-fun d!1914036 () Bool)

(assert (=> d!1914036 (= (Exists!3127 lambda!332715) (choose!45394 lambda!332715))))

(declare-fun bs!1516191 () Bool)

(assert (= bs!1516191 d!1914036))

(declare-fun m!6957784 () Bool)

(assert (=> bs!1516191 m!6957784))

(assert (=> d!1913726 d!1914036))

(declare-fun d!1914038 () Bool)

(assert (=> d!1914038 (= (Exists!3127 lambda!332716) (choose!45394 lambda!332716))))

(declare-fun bs!1516192 () Bool)

(assert (= bs!1516192 d!1914038))

(declare-fun m!6957786 () Bool)

(assert (=> bs!1516192 m!6957786))

(assert (=> d!1913726 d!1914038))

(declare-fun bs!1516193 () Bool)

(declare-fun d!1914040 () Bool)

(assert (= bs!1516193 (and d!1914040 b!6106173)))

(declare-fun lambda!332762 () Int)

(assert (=> bs!1516193 (not (= lambda!332762 lambda!332726))))

(declare-fun bs!1516194 () Bool)

(assert (= bs!1516194 (and d!1914040 d!1913716)))

(assert (=> bs!1516194 (= lambda!332762 lambda!332710)))

(declare-fun bs!1516195 () Bool)

(assert (= bs!1516195 (and d!1914040 d!1913726)))

(assert (=> bs!1516195 (not (= lambda!332762 lambda!332716))))

(declare-fun bs!1516196 () Bool)

(assert (= bs!1516196 (and d!1914040 b!6105694)))

(assert (=> bs!1516196 (= lambda!332762 lambda!332672)))

(declare-fun bs!1516197 () Bool)

(assert (= bs!1516197 (and d!1914040 b!6106935)))

(assert (=> bs!1516197 (not (= lambda!332762 lambda!332753))))

(declare-fun bs!1516198 () Bool)

(assert (= bs!1516198 (and d!1914040 d!1913938)))

(assert (=> bs!1516198 (= lambda!332762 lambda!332750)))

(assert (=> bs!1516195 (= lambda!332762 lambda!332715)))

(assert (=> bs!1516196 (not (= lambda!332762 lambda!332673))))

(declare-fun bs!1516199 () Bool)

(assert (= bs!1516199 (and d!1914040 b!6106172)))

(assert (=> bs!1516199 (not (= lambda!332762 lambda!332725))))

(declare-fun bs!1516200 () Bool)

(assert (= bs!1516200 (and d!1914040 b!6106936)))

(assert (=> bs!1516200 (not (= lambda!332762 lambda!332754))))

(assert (=> d!1914040 true))

(assert (=> d!1914040 true))

(assert (=> d!1914040 true))

(declare-fun lambda!332763 () Int)

(assert (=> bs!1516193 (= lambda!332763 lambda!332726)))

(assert (=> bs!1516194 (not (= lambda!332763 lambda!332710))))

(declare-fun bs!1516201 () Bool)

(assert (= bs!1516201 d!1914040))

(assert (=> bs!1516201 (not (= lambda!332763 lambda!332762))))

(assert (=> bs!1516195 (= lambda!332763 lambda!332716)))

(assert (=> bs!1516196 (not (= lambda!332763 lambda!332672))))

(assert (=> bs!1516197 (not (= lambda!332763 lambda!332753))))

(assert (=> bs!1516198 (not (= lambda!332763 lambda!332750))))

(assert (=> bs!1516195 (not (= lambda!332763 lambda!332715))))

(assert (=> bs!1516196 (= lambda!332763 lambda!332673)))

(assert (=> bs!1516199 (not (= lambda!332763 lambda!332725))))

(assert (=> bs!1516200 (= (and (= (regOne!32626 r!7292) (regOne!32626 (regOne!32627 r!7292))) (= (regTwo!32626 r!7292) (regTwo!32626 (regOne!32627 r!7292)))) (= lambda!332763 lambda!332754))))

(assert (=> d!1914040 true))

(assert (=> d!1914040 true))

(assert (=> d!1914040 true))

(assert (=> d!1914040 (= (Exists!3127 lambda!332762) (Exists!3127 lambda!332763))))

(assert (=> d!1914040 true))

(declare-fun _$90!1782 () Unit!157385)

(assert (=> d!1914040 (= (choose!45396 (regOne!32626 r!7292) (regTwo!32626 r!7292) s!2326) _$90!1782)))

(declare-fun m!6957788 () Bool)

(assert (=> bs!1516201 m!6957788))

(declare-fun m!6957790 () Bool)

(assert (=> bs!1516201 m!6957790))

(assert (=> d!1913726 d!1914040))

(assert (=> d!1913726 d!1913934))

(declare-fun b!6107085 () Bool)

(declare-fun e!3724291 () (InoxSet Context!10882))

(declare-fun e!3724290 () (InoxSet Context!10882))

(assert (=> b!6107085 (= e!3724291 e!3724290)))

(declare-fun c!1097190 () Bool)

(assert (=> b!6107085 (= c!1097190 ((_ is Union!16057) (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))

(declare-fun bm!505162 () Bool)

(declare-fun c!1097192 () Bool)

(declare-fun c!1097193 () Bool)

(declare-fun call!505167 () List!64470)

(assert (=> bm!505162 (= call!505167 ($colon$colon!1934 (exprs!5941 (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044))) (ite (or c!1097192 c!1097193) (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))

(declare-fun b!6107086 () Bool)

(declare-fun e!3724287 () (InoxSet Context!10882))

(declare-fun call!505170 () (InoxSet Context!10882))

(assert (=> b!6107086 (= e!3724287 call!505170)))

(declare-fun bm!505163 () Bool)

(declare-fun call!505168 () (InoxSet Context!10882))

(declare-fun call!505172 () (InoxSet Context!10882))

(assert (=> bm!505163 (= call!505168 call!505172)))

(declare-fun b!6107087 () Bool)

(declare-fun call!505171 () (InoxSet Context!10882))

(assert (=> b!6107087 (= e!3724290 ((_ map or) call!505172 call!505171))))

(declare-fun bm!505164 () Bool)

(assert (=> bm!505164 (= call!505170 call!505168)))

(declare-fun b!6107088 () Bool)

(declare-fun e!3724288 () (InoxSet Context!10882))

(assert (=> b!6107088 (= e!3724288 ((_ map or) call!505171 call!505168))))

(declare-fun e!3724286 () Bool)

(declare-fun b!6107089 () Bool)

(assert (=> b!6107089 (= e!3724286 (nullable!6050 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))

(declare-fun d!1914042 () Bool)

(declare-fun c!1097189 () Bool)

(assert (=> d!1914042 (= c!1097189 (and ((_ is ElementMatch!16057) (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (= (c!1096851 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (h!70796 s!2326))))))

(assert (=> d!1914042 (= (derivationStepZipperDown!1305 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))) (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (h!70796 s!2326)) e!3724291)))

(declare-fun bm!505165 () Bool)

(assert (=> bm!505165 (= call!505171 (derivationStepZipperDown!1305 (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))) (ite c!1097190 (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (Context!10883 call!505167)) (h!70796 s!2326)))))

(declare-fun b!6107090 () Bool)

(assert (=> b!6107090 (= e!3724291 (store ((as const (Array Context!10882 Bool)) false) (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) true))))

(declare-fun b!6107091 () Bool)

(assert (=> b!6107091 (= c!1097192 e!3724286)))

(declare-fun res!2533545 () Bool)

(assert (=> b!6107091 (=> (not res!2533545) (not e!3724286))))

(assert (=> b!6107091 (= res!2533545 ((_ is Concat!24902) (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))

(assert (=> b!6107091 (= e!3724290 e!3724288)))

(declare-fun b!6107092 () Bool)

(declare-fun c!1097191 () Bool)

(assert (=> b!6107092 (= c!1097191 ((_ is Star!16057) (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))

(declare-fun e!3724289 () (InoxSet Context!10882))

(assert (=> b!6107092 (= e!3724287 e!3724289)))

(declare-fun call!505169 () List!64470)

(declare-fun bm!505166 () Bool)

(assert (=> bm!505166 (= call!505172 (derivationStepZipperDown!1305 (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))) (ite (or c!1097190 c!1097192) (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (Context!10883 call!505169)) (h!70796 s!2326)))))

(declare-fun bm!505167 () Bool)

(assert (=> bm!505167 (= call!505169 call!505167)))

(declare-fun b!6107093 () Bool)

(assert (=> b!6107093 (= e!3724289 call!505170)))

(declare-fun b!6107094 () Bool)

(assert (=> b!6107094 (= e!3724288 e!3724287)))

(assert (=> b!6107094 (= c!1097193 ((_ is Concat!24902) (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))

(declare-fun b!6107095 () Bool)

(assert (=> b!6107095 (= e!3724289 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1914042 c!1097189) b!6107090))

(assert (= (and d!1914042 (not c!1097189)) b!6107085))

(assert (= (and b!6107085 c!1097190) b!6107087))

(assert (= (and b!6107085 (not c!1097190)) b!6107091))

(assert (= (and b!6107091 res!2533545) b!6107089))

(assert (= (and b!6107091 c!1097192) b!6107088))

(assert (= (and b!6107091 (not c!1097192)) b!6107094))

(assert (= (and b!6107094 c!1097193) b!6107086))

(assert (= (and b!6107094 (not c!1097193)) b!6107092))

(assert (= (and b!6107092 c!1097191) b!6107093))

(assert (= (and b!6107092 (not c!1097191)) b!6107095))

(assert (= (or b!6107086 b!6107093) bm!505167))

(assert (= (or b!6107086 b!6107093) bm!505164))

(assert (= (or b!6107088 bm!505167) bm!505162))

(assert (= (or b!6107088 bm!505164) bm!505163))

(assert (= (or b!6107087 b!6107088) bm!505165))

(assert (= (or b!6107087 bm!505163) bm!505166))

(declare-fun m!6957792 () Bool)

(assert (=> b!6107089 m!6957792))

(declare-fun m!6957794 () Bool)

(assert (=> bm!505162 m!6957794))

(declare-fun m!6957796 () Bool)

(assert (=> bm!505165 m!6957796))

(declare-fun m!6957798 () Bool)

(assert (=> b!6107090 m!6957798))

(declare-fun m!6957800 () Bool)

(assert (=> bm!505166 m!6957800))

(assert (=> bm!505041 d!1914042))

(assert (=> b!6106215 d!1913964))

(assert (=> b!6106215 d!1913922))

(assert (=> bm!505018 d!1913924))

(declare-fun b!6107096 () Bool)

(declare-fun e!3724297 () Bool)

(declare-fun e!3724298 () Bool)

(assert (=> b!6107096 (= e!3724297 e!3724298)))

(declare-fun c!1097194 () Bool)

(assert (=> b!6107096 (= c!1097194 ((_ is Union!16057) lt!2329762))))

(declare-fun b!6107097 () Bool)

(declare-fun e!3724296 () Bool)

(declare-fun call!505174 () Bool)

(assert (=> b!6107097 (= e!3724296 call!505174)))

(declare-fun b!6107098 () Bool)

(declare-fun e!3724294 () Bool)

(assert (=> b!6107098 (= e!3724294 e!3724297)))

(declare-fun c!1097195 () Bool)

(assert (=> b!6107098 (= c!1097195 ((_ is Star!16057) lt!2329762))))

(declare-fun bm!505168 () Bool)

(declare-fun call!505173 () Bool)

(assert (=> bm!505168 (= call!505174 call!505173)))

(declare-fun b!6107099 () Bool)

(declare-fun res!2533548 () Bool)

(declare-fun e!3724293 () Bool)

(assert (=> b!6107099 (=> res!2533548 e!3724293)))

(assert (=> b!6107099 (= res!2533548 (not ((_ is Concat!24902) lt!2329762)))))

(assert (=> b!6107099 (= e!3724298 e!3724293)))

(declare-fun b!6107100 () Bool)

(declare-fun e!3724295 () Bool)

(assert (=> b!6107100 (= e!3724295 call!505174)))

(declare-fun bm!505169 () Bool)

(assert (=> bm!505169 (= call!505173 (validRegex!7793 (ite c!1097195 (reg!16386 lt!2329762) (ite c!1097194 (regTwo!32627 lt!2329762) (regTwo!32626 lt!2329762)))))))

(declare-fun b!6107101 () Bool)

(declare-fun e!3724292 () Bool)

(assert (=> b!6107101 (= e!3724297 e!3724292)))

(declare-fun res!2533549 () Bool)

(assert (=> b!6107101 (= res!2533549 (not (nullable!6050 (reg!16386 lt!2329762))))))

(assert (=> b!6107101 (=> (not res!2533549) (not e!3724292))))

(declare-fun b!6107102 () Bool)

(assert (=> b!6107102 (= e!3724293 e!3724295)))

(declare-fun res!2533550 () Bool)

(assert (=> b!6107102 (=> (not res!2533550) (not e!3724295))))

(declare-fun call!505175 () Bool)

(assert (=> b!6107102 (= res!2533550 call!505175)))

(declare-fun b!6107103 () Bool)

(assert (=> b!6107103 (= e!3724292 call!505173)))

(declare-fun b!6107104 () Bool)

(declare-fun res!2533546 () Bool)

(assert (=> b!6107104 (=> (not res!2533546) (not e!3724296))))

(assert (=> b!6107104 (= res!2533546 call!505175)))

(assert (=> b!6107104 (= e!3724298 e!3724296)))

(declare-fun bm!505170 () Bool)

(assert (=> bm!505170 (= call!505175 (validRegex!7793 (ite c!1097194 (regOne!32627 lt!2329762) (regOne!32626 lt!2329762))))))

(declare-fun d!1914044 () Bool)

(declare-fun res!2533547 () Bool)

(assert (=> d!1914044 (=> res!2533547 e!3724294)))

(assert (=> d!1914044 (= res!2533547 ((_ is ElementMatch!16057) lt!2329762))))

(assert (=> d!1914044 (= (validRegex!7793 lt!2329762) e!3724294)))

(assert (= (and d!1914044 (not res!2533547)) b!6107098))

(assert (= (and b!6107098 c!1097195) b!6107101))

(assert (= (and b!6107098 (not c!1097195)) b!6107096))

(assert (= (and b!6107101 res!2533549) b!6107103))

(assert (= (and b!6107096 c!1097194) b!6107104))

(assert (= (and b!6107096 (not c!1097194)) b!6107099))

(assert (= (and b!6107104 res!2533546) b!6107097))

(assert (= (and b!6107099 (not res!2533548)) b!6107102))

(assert (= (and b!6107102 res!2533550) b!6107100))

(assert (= (or b!6107097 b!6107100) bm!505168))

(assert (= (or b!6107104 b!6107102) bm!505170))

(assert (= (or b!6107103 bm!505168) bm!505169))

(declare-fun m!6957802 () Bool)

(assert (=> bm!505169 m!6957802))

(declare-fun m!6957804 () Bool)

(assert (=> b!6107101 m!6957804))

(declare-fun m!6957806 () Bool)

(assert (=> bm!505170 m!6957806))

(assert (=> d!1913748 d!1914044))

(declare-fun d!1914046 () Bool)

(declare-fun res!2533551 () Bool)

(declare-fun e!3724299 () Bool)

(assert (=> d!1914046 (=> res!2533551 e!3724299)))

(assert (=> d!1914046 (= res!2533551 ((_ is Nil!64346) (exprs!5941 (h!70795 zl!343))))))

(assert (=> d!1914046 (= (forall!15178 (exprs!5941 (h!70795 zl!343)) lambda!332729) e!3724299)))

(declare-fun b!6107105 () Bool)

(declare-fun e!3724300 () Bool)

(assert (=> b!6107105 (= e!3724299 e!3724300)))

(declare-fun res!2533552 () Bool)

(assert (=> b!6107105 (=> (not res!2533552) (not e!3724300))))

(assert (=> b!6107105 (= res!2533552 (dynLambda!25338 lambda!332729 (h!70794 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun b!6107106 () Bool)

(assert (=> b!6107106 (= e!3724300 (forall!15178 (t!377923 (exprs!5941 (h!70795 zl!343))) lambda!332729))))

(assert (= (and d!1914046 (not res!2533551)) b!6107105))

(assert (= (and b!6107105 res!2533552) b!6107106))

(declare-fun b_lambda!232637 () Bool)

(assert (=> (not b_lambda!232637) (not b!6107105)))

(declare-fun m!6957808 () Bool)

(assert (=> b!6107105 m!6957808))

(declare-fun m!6957810 () Bool)

(assert (=> b!6107106 m!6957810))

(assert (=> d!1913748 d!1914046))

(assert (=> d!1913704 d!1913988))

(declare-fun b!6107107 () Bool)

(declare-fun res!2533557 () Bool)

(declare-fun e!3724307 () Bool)

(assert (=> b!6107107 (=> (not res!2533557) (not e!3724307))))

(declare-fun call!505176 () Bool)

(assert (=> b!6107107 (= res!2533557 (not call!505176))))

(declare-fun b!6107108 () Bool)

(declare-fun res!2533558 () Bool)

(declare-fun e!3724305 () Bool)

(assert (=> b!6107108 (=> res!2533558 e!3724305)))

(assert (=> b!6107108 (= res!2533558 (not ((_ is ElementMatch!16057) (regOne!32626 r!7292))))))

(declare-fun e!3724302 () Bool)

(assert (=> b!6107108 (= e!3724302 e!3724305)))

(declare-fun b!6107109 () Bool)

(declare-fun res!2533560 () Bool)

(assert (=> b!6107109 (=> (not res!2533560) (not e!3724307))))

(assert (=> b!6107109 (= res!2533560 (isEmpty!36274 (tail!11721 Nil!64348)))))

(declare-fun b!6107110 () Bool)

(declare-fun e!3724306 () Bool)

(assert (=> b!6107110 (= e!3724306 (not (= (head!12636 Nil!64348) (c!1096851 (regOne!32626 r!7292)))))))

(declare-fun b!6107111 () Bool)

(assert (=> b!6107111 (= e!3724307 (= (head!12636 Nil!64348) (c!1096851 (regOne!32626 r!7292))))))

(declare-fun b!6107112 () Bool)

(declare-fun res!2533555 () Bool)

(assert (=> b!6107112 (=> res!2533555 e!3724306)))

(assert (=> b!6107112 (= res!2533555 (not (isEmpty!36274 (tail!11721 Nil!64348))))))

(declare-fun b!6107114 () Bool)

(declare-fun e!3724303 () Bool)

(assert (=> b!6107114 (= e!3724303 e!3724306)))

(declare-fun res!2533559 () Bool)

(assert (=> b!6107114 (=> res!2533559 e!3724306)))

(assert (=> b!6107114 (= res!2533559 call!505176)))

(declare-fun b!6107115 () Bool)

(assert (=> b!6107115 (= e!3724305 e!3724303)))

(declare-fun res!2533553 () Bool)

(assert (=> b!6107115 (=> (not res!2533553) (not e!3724303))))

(declare-fun lt!2329805 () Bool)

(assert (=> b!6107115 (= res!2533553 (not lt!2329805))))

(declare-fun b!6107116 () Bool)

(declare-fun e!3724304 () Bool)

(assert (=> b!6107116 (= e!3724304 e!3724302)))

(declare-fun c!1097197 () Bool)

(assert (=> b!6107116 (= c!1097197 ((_ is EmptyLang!16057) (regOne!32626 r!7292)))))

(declare-fun b!6107117 () Bool)

(declare-fun e!3724301 () Bool)

(assert (=> b!6107117 (= e!3724301 (matchR!8240 (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 Nil!64348)) (tail!11721 Nil!64348)))))

(declare-fun b!6107118 () Bool)

(assert (=> b!6107118 (= e!3724301 (nullable!6050 (regOne!32626 r!7292)))))

(declare-fun b!6107119 () Bool)

(assert (=> b!6107119 (= e!3724302 (not lt!2329805))))

(declare-fun b!6107120 () Bool)

(declare-fun res!2533556 () Bool)

(assert (=> b!6107120 (=> res!2533556 e!3724305)))

(assert (=> b!6107120 (= res!2533556 e!3724307)))

(declare-fun res!2533554 () Bool)

(assert (=> b!6107120 (=> (not res!2533554) (not e!3724307))))

(assert (=> b!6107120 (= res!2533554 lt!2329805)))

(declare-fun bm!505171 () Bool)

(assert (=> bm!505171 (= call!505176 (isEmpty!36274 Nil!64348))))

(declare-fun b!6107113 () Bool)

(assert (=> b!6107113 (= e!3724304 (= lt!2329805 call!505176))))

(declare-fun d!1914048 () Bool)

(assert (=> d!1914048 e!3724304))

(declare-fun c!1097198 () Bool)

(assert (=> d!1914048 (= c!1097198 ((_ is EmptyExpr!16057) (regOne!32626 r!7292)))))

(assert (=> d!1914048 (= lt!2329805 e!3724301)))

(declare-fun c!1097196 () Bool)

(assert (=> d!1914048 (= c!1097196 (isEmpty!36274 Nil!64348))))

(assert (=> d!1914048 (validRegex!7793 (regOne!32626 r!7292))))

(assert (=> d!1914048 (= (matchR!8240 (regOne!32626 r!7292) Nil!64348) lt!2329805)))

(assert (= (and d!1914048 c!1097196) b!6107118))

(assert (= (and d!1914048 (not c!1097196)) b!6107117))

(assert (= (and d!1914048 c!1097198) b!6107113))

(assert (= (and d!1914048 (not c!1097198)) b!6107116))

(assert (= (and b!6107116 c!1097197) b!6107119))

(assert (= (and b!6107116 (not c!1097197)) b!6107108))

(assert (= (and b!6107108 (not res!2533558)) b!6107120))

(assert (= (and b!6107120 res!2533554) b!6107107))

(assert (= (and b!6107107 res!2533557) b!6107109))

(assert (= (and b!6107109 res!2533560) b!6107111))

(assert (= (and b!6107120 (not res!2533556)) b!6107115))

(assert (= (and b!6107115 res!2533553) b!6107114))

(assert (= (and b!6107114 (not res!2533559)) b!6107112))

(assert (= (and b!6107112 (not res!2533555)) b!6107110))

(assert (= (or b!6107113 b!6107107 b!6107114) bm!505171))

(declare-fun m!6957812 () Bool)

(assert (=> b!6107110 m!6957812))

(assert (=> b!6107111 m!6957812))

(declare-fun m!6957814 () Bool)

(assert (=> bm!505171 m!6957814))

(assert (=> b!6107117 m!6957812))

(assert (=> b!6107117 m!6957812))

(declare-fun m!6957816 () Bool)

(assert (=> b!6107117 m!6957816))

(declare-fun m!6957818 () Bool)

(assert (=> b!6107117 m!6957818))

(assert (=> b!6107117 m!6957816))

(assert (=> b!6107117 m!6957818))

(declare-fun m!6957820 () Bool)

(assert (=> b!6107117 m!6957820))

(assert (=> b!6107109 m!6957818))

(assert (=> b!6107109 m!6957818))

(declare-fun m!6957822 () Bool)

(assert (=> b!6107109 m!6957822))

(assert (=> b!6107112 m!6957818))

(assert (=> b!6107112 m!6957818))

(assert (=> b!6107112 m!6957822))

(assert (=> b!6107118 m!6957532))

(assert (=> d!1914048 m!6957814))

(assert (=> d!1914048 m!6956996))

(assert (=> d!1913704 d!1914048))

(assert (=> d!1913704 d!1913934))

(declare-fun b!6107122 () Bool)

(declare-fun e!3724308 () List!64472)

(assert (=> b!6107122 (= e!3724308 (Cons!64348 (h!70796 (_1!36339 (get!22188 lt!2329734))) (++!14144 (t!377925 (_1!36339 (get!22188 lt!2329734))) (_2!36339 (get!22188 lt!2329734)))))))

(declare-fun b!6107124 () Bool)

(declare-fun e!3724309 () Bool)

(declare-fun lt!2329806 () List!64472)

(assert (=> b!6107124 (= e!3724309 (or (not (= (_2!36339 (get!22188 lt!2329734)) Nil!64348)) (= lt!2329806 (_1!36339 (get!22188 lt!2329734)))))))

(declare-fun b!6107123 () Bool)

(declare-fun res!2533561 () Bool)

(assert (=> b!6107123 (=> (not res!2533561) (not e!3724309))))

(assert (=> b!6107123 (= res!2533561 (= (size!40202 lt!2329806) (+ (size!40202 (_1!36339 (get!22188 lt!2329734))) (size!40202 (_2!36339 (get!22188 lt!2329734))))))))

(declare-fun b!6107121 () Bool)

(assert (=> b!6107121 (= e!3724308 (_2!36339 (get!22188 lt!2329734)))))

(declare-fun d!1914050 () Bool)

(assert (=> d!1914050 e!3724309))

(declare-fun res!2533562 () Bool)

(assert (=> d!1914050 (=> (not res!2533562) (not e!3724309))))

(assert (=> d!1914050 (= res!2533562 (= (content!11941 lt!2329806) ((_ map or) (content!11941 (_1!36339 (get!22188 lt!2329734))) (content!11941 (_2!36339 (get!22188 lt!2329734))))))))

(assert (=> d!1914050 (= lt!2329806 e!3724308)))

(declare-fun c!1097199 () Bool)

(assert (=> d!1914050 (= c!1097199 ((_ is Nil!64348) (_1!36339 (get!22188 lt!2329734))))))

(assert (=> d!1914050 (= (++!14144 (_1!36339 (get!22188 lt!2329734)) (_2!36339 (get!22188 lt!2329734))) lt!2329806)))

(assert (= (and d!1914050 c!1097199) b!6107121))

(assert (= (and d!1914050 (not c!1097199)) b!6107122))

(assert (= (and d!1914050 res!2533562) b!6107123))

(assert (= (and b!6107123 res!2533561) b!6107124))

(declare-fun m!6957824 () Bool)

(assert (=> b!6107122 m!6957824))

(declare-fun m!6957826 () Bool)

(assert (=> b!6107123 m!6957826))

(declare-fun m!6957828 () Bool)

(assert (=> b!6107123 m!6957828))

(declare-fun m!6957830 () Bool)

(assert (=> b!6107123 m!6957830))

(declare-fun m!6957832 () Bool)

(assert (=> d!1914050 m!6957832))

(declare-fun m!6957834 () Bool)

(assert (=> d!1914050 m!6957834))

(declare-fun m!6957836 () Bool)

(assert (=> d!1914050 m!6957836))

(assert (=> b!6105963 d!1914050))

(assert (=> b!6105963 d!1913962))

(declare-fun d!1914052 () Bool)

(assert (=> d!1914052 (= (head!12635 (exprs!5941 (h!70795 zl!343))) (h!70794 (exprs!5941 (h!70795 zl!343))))))

(assert (=> b!6106249 d!1914052))

(declare-fun bs!1516202 () Bool)

(declare-fun b!6107126 () Bool)

(assert (= bs!1516202 (and b!6107126 b!6106173)))

(declare-fun lambda!332764 () Int)

(assert (=> bs!1516202 (not (= lambda!332764 lambda!332726))))

(declare-fun bs!1516203 () Bool)

(assert (= bs!1516203 (and b!6107126 d!1913716)))

(assert (=> bs!1516203 (not (= lambda!332764 lambda!332710))))

(declare-fun bs!1516204 () Bool)

(assert (= bs!1516204 (and b!6107126 d!1914040)))

(assert (=> bs!1516204 (not (= lambda!332764 lambda!332762))))

(declare-fun bs!1516205 () Bool)

(assert (= bs!1516205 (and b!6107126 d!1913726)))

(assert (=> bs!1516205 (not (= lambda!332764 lambda!332716))))

(declare-fun bs!1516206 () Bool)

(assert (= bs!1516206 (and b!6107126 b!6105694)))

(assert (=> bs!1516206 (not (= lambda!332764 lambda!332672))))

(assert (=> bs!1516204 (not (= lambda!332764 lambda!332763))))

(declare-fun bs!1516207 () Bool)

(assert (= bs!1516207 (and b!6107126 b!6106935)))

(assert (=> bs!1516207 (= (and (= (reg!16386 (regTwo!32627 r!7292)) (reg!16386 (regOne!32627 r!7292))) (= (regTwo!32627 r!7292) (regOne!32627 r!7292))) (= lambda!332764 lambda!332753))))

(declare-fun bs!1516208 () Bool)

(assert (= bs!1516208 (and b!6107126 d!1913938)))

(assert (=> bs!1516208 (not (= lambda!332764 lambda!332750))))

(assert (=> bs!1516205 (not (= lambda!332764 lambda!332715))))

(assert (=> bs!1516206 (not (= lambda!332764 lambda!332673))))

(declare-fun bs!1516209 () Bool)

(assert (= bs!1516209 (and b!6107126 b!6106172)))

(assert (=> bs!1516209 (= (and (= (reg!16386 (regTwo!32627 r!7292)) (reg!16386 r!7292)) (= (regTwo!32627 r!7292) r!7292)) (= lambda!332764 lambda!332725))))

(declare-fun bs!1516210 () Bool)

(assert (= bs!1516210 (and b!6107126 b!6106936)))

(assert (=> bs!1516210 (not (= lambda!332764 lambda!332754))))

(assert (=> b!6107126 true))

(assert (=> b!6107126 true))

(declare-fun bs!1516211 () Bool)

(declare-fun b!6107127 () Bool)

(assert (= bs!1516211 (and b!6107127 b!6106173)))

(declare-fun lambda!332765 () Int)

(assert (=> bs!1516211 (= (and (= (regOne!32626 (regTwo!32627 r!7292)) (regOne!32626 r!7292)) (= (regTwo!32626 (regTwo!32627 r!7292)) (regTwo!32626 r!7292))) (= lambda!332765 lambda!332726))))

(declare-fun bs!1516212 () Bool)

(assert (= bs!1516212 (and b!6107127 d!1913716)))

(assert (=> bs!1516212 (not (= lambda!332765 lambda!332710))))

(declare-fun bs!1516213 () Bool)

(assert (= bs!1516213 (and b!6107127 b!6107126)))

(assert (=> bs!1516213 (not (= lambda!332765 lambda!332764))))

(declare-fun bs!1516214 () Bool)

(assert (= bs!1516214 (and b!6107127 d!1914040)))

(assert (=> bs!1516214 (not (= lambda!332765 lambda!332762))))

(declare-fun bs!1516215 () Bool)

(assert (= bs!1516215 (and b!6107127 d!1913726)))

(assert (=> bs!1516215 (= (and (= (regOne!32626 (regTwo!32627 r!7292)) (regOne!32626 r!7292)) (= (regTwo!32626 (regTwo!32627 r!7292)) (regTwo!32626 r!7292))) (= lambda!332765 lambda!332716))))

(declare-fun bs!1516216 () Bool)

(assert (= bs!1516216 (and b!6107127 b!6105694)))

(assert (=> bs!1516216 (not (= lambda!332765 lambda!332672))))

(assert (=> bs!1516214 (= (and (= (regOne!32626 (regTwo!32627 r!7292)) (regOne!32626 r!7292)) (= (regTwo!32626 (regTwo!32627 r!7292)) (regTwo!32626 r!7292))) (= lambda!332765 lambda!332763))))

(declare-fun bs!1516217 () Bool)

(assert (= bs!1516217 (and b!6107127 b!6106935)))

(assert (=> bs!1516217 (not (= lambda!332765 lambda!332753))))

(declare-fun bs!1516218 () Bool)

(assert (= bs!1516218 (and b!6107127 d!1913938)))

(assert (=> bs!1516218 (not (= lambda!332765 lambda!332750))))

(assert (=> bs!1516215 (not (= lambda!332765 lambda!332715))))

(assert (=> bs!1516216 (= (and (= (regOne!32626 (regTwo!32627 r!7292)) (regOne!32626 r!7292)) (= (regTwo!32626 (regTwo!32627 r!7292)) (regTwo!32626 r!7292))) (= lambda!332765 lambda!332673))))

(declare-fun bs!1516219 () Bool)

(assert (= bs!1516219 (and b!6107127 b!6106172)))

(assert (=> bs!1516219 (not (= lambda!332765 lambda!332725))))

(declare-fun bs!1516220 () Bool)

(assert (= bs!1516220 (and b!6107127 b!6106936)))

(assert (=> bs!1516220 (= (and (= (regOne!32626 (regTwo!32627 r!7292)) (regOne!32626 (regOne!32627 r!7292))) (= (regTwo!32626 (regTwo!32627 r!7292)) (regTwo!32626 (regOne!32627 r!7292)))) (= lambda!332765 lambda!332754))))

(assert (=> b!6107127 true))

(assert (=> b!6107127 true))

(declare-fun d!1914054 () Bool)

(declare-fun c!1097201 () Bool)

(assert (=> d!1914054 (= c!1097201 ((_ is EmptyExpr!16057) (regTwo!32627 r!7292)))))

(declare-fun e!3724310 () Bool)

(assert (=> d!1914054 (= (matchRSpec!3158 (regTwo!32627 r!7292) s!2326) e!3724310)))

(declare-fun c!1097203 () Bool)

(declare-fun bm!505172 () Bool)

(declare-fun call!505178 () Bool)

(assert (=> bm!505172 (= call!505178 (Exists!3127 (ite c!1097203 lambda!332764 lambda!332765)))))

(declare-fun b!6107125 () Bool)

(declare-fun e!3724312 () Bool)

(declare-fun e!3724314 () Bool)

(assert (=> b!6107125 (= e!3724312 e!3724314)))

(assert (=> b!6107125 (= c!1097203 ((_ is Star!16057) (regTwo!32627 r!7292)))))

(declare-fun e!3724316 () Bool)

(assert (=> b!6107126 (= e!3724316 call!505178)))

(assert (=> b!6107127 (= e!3724314 call!505178)))

(declare-fun b!6107128 () Bool)

(declare-fun res!2533565 () Bool)

(assert (=> b!6107128 (=> res!2533565 e!3724316)))

(declare-fun call!505177 () Bool)

(assert (=> b!6107128 (= res!2533565 call!505177)))

(assert (=> b!6107128 (= e!3724314 e!3724316)))

(declare-fun b!6107129 () Bool)

(declare-fun e!3724315 () Bool)

(assert (=> b!6107129 (= e!3724312 e!3724315)))

(declare-fun res!2533563 () Bool)

(assert (=> b!6107129 (= res!2533563 (matchRSpec!3158 (regOne!32627 (regTwo!32627 r!7292)) s!2326))))

(assert (=> b!6107129 (=> res!2533563 e!3724315)))

(declare-fun bm!505173 () Bool)

(assert (=> bm!505173 (= call!505177 (isEmpty!36274 s!2326))))

(declare-fun b!6107130 () Bool)

(declare-fun e!3724311 () Bool)

(assert (=> b!6107130 (= e!3724311 (= s!2326 (Cons!64348 (c!1096851 (regTwo!32627 r!7292)) Nil!64348)))))

(declare-fun b!6107131 () Bool)

(declare-fun c!1097202 () Bool)

(assert (=> b!6107131 (= c!1097202 ((_ is Union!16057) (regTwo!32627 r!7292)))))

(assert (=> b!6107131 (= e!3724311 e!3724312)))

(declare-fun b!6107132 () Bool)

(declare-fun e!3724313 () Bool)

(assert (=> b!6107132 (= e!3724310 e!3724313)))

(declare-fun res!2533564 () Bool)

(assert (=> b!6107132 (= res!2533564 (not ((_ is EmptyLang!16057) (regTwo!32627 r!7292))))))

(assert (=> b!6107132 (=> (not res!2533564) (not e!3724313))))

(declare-fun b!6107133 () Bool)

(assert (=> b!6107133 (= e!3724315 (matchRSpec!3158 (regTwo!32627 (regTwo!32627 r!7292)) s!2326))))

(declare-fun b!6107134 () Bool)

(declare-fun c!1097200 () Bool)

(assert (=> b!6107134 (= c!1097200 ((_ is ElementMatch!16057) (regTwo!32627 r!7292)))))

(assert (=> b!6107134 (= e!3724313 e!3724311)))

(declare-fun b!6107135 () Bool)

(assert (=> b!6107135 (= e!3724310 call!505177)))

(assert (= (and d!1914054 c!1097201) b!6107135))

(assert (= (and d!1914054 (not c!1097201)) b!6107132))

(assert (= (and b!6107132 res!2533564) b!6107134))

(assert (= (and b!6107134 c!1097200) b!6107130))

(assert (= (and b!6107134 (not c!1097200)) b!6107131))

(assert (= (and b!6107131 c!1097202) b!6107129))

(assert (= (and b!6107131 (not c!1097202)) b!6107125))

(assert (= (and b!6107129 (not res!2533563)) b!6107133))

(assert (= (and b!6107125 c!1097203) b!6107128))

(assert (= (and b!6107125 (not c!1097203)) b!6107127))

(assert (= (and b!6107128 (not res!2533565)) b!6107126))

(assert (= (or b!6107126 b!6107127) bm!505172))

(assert (= (or b!6107135 b!6107128) bm!505173))

(declare-fun m!6957838 () Bool)

(assert (=> bm!505172 m!6957838))

(declare-fun m!6957840 () Bool)

(assert (=> b!6107129 m!6957840))

(assert (=> bm!505173 m!6957084))

(declare-fun m!6957842 () Bool)

(assert (=> b!6107133 m!6957842))

(assert (=> b!6106179 d!1914054))

(assert (=> d!1913742 d!1913740))

(assert (=> d!1913742 d!1913738))

(declare-fun d!1914056 () Bool)

(assert (=> d!1914056 (= (matchR!8240 r!7292 s!2326) (matchRSpec!3158 r!7292 s!2326))))

(assert (=> d!1914056 true))

(declare-fun _$88!4596 () Unit!157385)

(assert (=> d!1914056 (= (choose!45397 r!7292 s!2326) _$88!4596)))

(declare-fun bs!1516221 () Bool)

(assert (= bs!1516221 d!1914056))

(assert (=> bs!1516221 m!6956848))

(assert (=> bs!1516221 m!6956846))

(assert (=> d!1913742 d!1914056))

(assert (=> d!1913742 d!1913732))

(declare-fun b!6107139 () Bool)

(declare-fun e!3724317 () Bool)

(declare-fun tp!1705055 () Bool)

(declare-fun tp!1705059 () Bool)

(assert (=> b!6107139 (= e!3724317 (and tp!1705055 tp!1705059))))

(declare-fun b!6107137 () Bool)

(declare-fun tp!1705056 () Bool)

(declare-fun tp!1705057 () Bool)

(assert (=> b!6107137 (= e!3724317 (and tp!1705056 tp!1705057))))

(assert (=> b!6106321 (= tp!1704848 e!3724317)))

(declare-fun b!6107136 () Bool)

(assert (=> b!6107136 (= e!3724317 tp_is_empty!41367)))

(declare-fun b!6107138 () Bool)

(declare-fun tp!1705058 () Bool)

(assert (=> b!6107138 (= e!3724317 tp!1705058)))

(assert (= (and b!6106321 ((_ is ElementMatch!16057) (regOne!32626 (regOne!32626 r!7292)))) b!6107136))

(assert (= (and b!6106321 ((_ is Concat!24902) (regOne!32626 (regOne!32626 r!7292)))) b!6107137))

(assert (= (and b!6106321 ((_ is Star!16057) (regOne!32626 (regOne!32626 r!7292)))) b!6107138))

(assert (= (and b!6106321 ((_ is Union!16057) (regOne!32626 (regOne!32626 r!7292)))) b!6107139))

(declare-fun b!6107143 () Bool)

(declare-fun e!3724318 () Bool)

(declare-fun tp!1705060 () Bool)

(declare-fun tp!1705064 () Bool)

(assert (=> b!6107143 (= e!3724318 (and tp!1705060 tp!1705064))))

(declare-fun b!6107141 () Bool)

(declare-fun tp!1705061 () Bool)

(declare-fun tp!1705062 () Bool)

(assert (=> b!6107141 (= e!3724318 (and tp!1705061 tp!1705062))))

(assert (=> b!6106321 (= tp!1704849 e!3724318)))

(declare-fun b!6107140 () Bool)

(assert (=> b!6107140 (= e!3724318 tp_is_empty!41367)))

(declare-fun b!6107142 () Bool)

(declare-fun tp!1705063 () Bool)

(assert (=> b!6107142 (= e!3724318 tp!1705063)))

(assert (= (and b!6106321 ((_ is ElementMatch!16057) (regTwo!32626 (regOne!32626 r!7292)))) b!6107140))

(assert (= (and b!6106321 ((_ is Concat!24902) (regTwo!32626 (regOne!32626 r!7292)))) b!6107141))

(assert (= (and b!6106321 ((_ is Star!16057) (regTwo!32626 (regOne!32626 r!7292)))) b!6107142))

(assert (= (and b!6106321 ((_ is Union!16057) (regTwo!32626 (regOne!32626 r!7292)))) b!6107143))

(declare-fun b!6107147 () Bool)

(declare-fun e!3724319 () Bool)

(declare-fun tp!1705065 () Bool)

(declare-fun tp!1705069 () Bool)

(assert (=> b!6107147 (= e!3724319 (and tp!1705065 tp!1705069))))

(declare-fun b!6107145 () Bool)

(declare-fun tp!1705066 () Bool)

(declare-fun tp!1705067 () Bool)

(assert (=> b!6107145 (= e!3724319 (and tp!1705066 tp!1705067))))

(assert (=> b!6106323 (= tp!1704847 e!3724319)))

(declare-fun b!6107144 () Bool)

(assert (=> b!6107144 (= e!3724319 tp_is_empty!41367)))

(declare-fun b!6107146 () Bool)

(declare-fun tp!1705068 () Bool)

(assert (=> b!6107146 (= e!3724319 tp!1705068)))

(assert (= (and b!6106323 ((_ is ElementMatch!16057) (regOne!32627 (regOne!32626 r!7292)))) b!6107144))

(assert (= (and b!6106323 ((_ is Concat!24902) (regOne!32627 (regOne!32626 r!7292)))) b!6107145))

(assert (= (and b!6106323 ((_ is Star!16057) (regOne!32627 (regOne!32626 r!7292)))) b!6107146))

(assert (= (and b!6106323 ((_ is Union!16057) (regOne!32627 (regOne!32626 r!7292)))) b!6107147))

(declare-fun b!6107151 () Bool)

(declare-fun e!3724320 () Bool)

(declare-fun tp!1705070 () Bool)

(declare-fun tp!1705074 () Bool)

(assert (=> b!6107151 (= e!3724320 (and tp!1705070 tp!1705074))))

(declare-fun b!6107149 () Bool)

(declare-fun tp!1705071 () Bool)

(declare-fun tp!1705072 () Bool)

(assert (=> b!6107149 (= e!3724320 (and tp!1705071 tp!1705072))))

(assert (=> b!6106323 (= tp!1704851 e!3724320)))

(declare-fun b!6107148 () Bool)

(assert (=> b!6107148 (= e!3724320 tp_is_empty!41367)))

(declare-fun b!6107150 () Bool)

(declare-fun tp!1705073 () Bool)

(assert (=> b!6107150 (= e!3724320 tp!1705073)))

(assert (= (and b!6106323 ((_ is ElementMatch!16057) (regTwo!32627 (regOne!32626 r!7292)))) b!6107148))

(assert (= (and b!6106323 ((_ is Concat!24902) (regTwo!32627 (regOne!32626 r!7292)))) b!6107149))

(assert (= (and b!6106323 ((_ is Star!16057) (regTwo!32627 (regOne!32626 r!7292)))) b!6107150))

(assert (= (and b!6106323 ((_ is Union!16057) (regTwo!32627 (regOne!32626 r!7292)))) b!6107151))

(declare-fun b!6107152 () Bool)

(declare-fun e!3724321 () Bool)

(declare-fun tp!1705075 () Bool)

(assert (=> b!6107152 (= e!3724321 (and tp_is_empty!41367 tp!1705075))))

(assert (=> b!6106345 (= tp!1704875 e!3724321)))

(assert (= (and b!6106345 ((_ is Cons!64348) (t!377925 (t!377925 s!2326)))) b!6107152))

(declare-fun b!6107156 () Bool)

(declare-fun e!3724322 () Bool)

(declare-fun tp!1705076 () Bool)

(declare-fun tp!1705080 () Bool)

(assert (=> b!6107156 (= e!3724322 (and tp!1705076 tp!1705080))))

(declare-fun b!6107154 () Bool)

(declare-fun tp!1705077 () Bool)

(declare-fun tp!1705078 () Bool)

(assert (=> b!6107154 (= e!3724322 (and tp!1705077 tp!1705078))))

(assert (=> b!6106322 (= tp!1704850 e!3724322)))

(declare-fun b!6107153 () Bool)

(assert (=> b!6107153 (= e!3724322 tp_is_empty!41367)))

(declare-fun b!6107155 () Bool)

(declare-fun tp!1705079 () Bool)

(assert (=> b!6107155 (= e!3724322 tp!1705079)))

(assert (= (and b!6106322 ((_ is ElementMatch!16057) (reg!16386 (regOne!32626 r!7292)))) b!6107153))

(assert (= (and b!6106322 ((_ is Concat!24902) (reg!16386 (regOne!32626 r!7292)))) b!6107154))

(assert (= (and b!6106322 ((_ is Star!16057) (reg!16386 (regOne!32626 r!7292)))) b!6107155))

(assert (= (and b!6106322 ((_ is Union!16057) (reg!16386 (regOne!32626 r!7292)))) b!6107156))

(declare-fun b!6107160 () Bool)

(declare-fun e!3724323 () Bool)

(declare-fun tp!1705081 () Bool)

(declare-fun tp!1705085 () Bool)

(assert (=> b!6107160 (= e!3724323 (and tp!1705081 tp!1705085))))

(declare-fun b!6107158 () Bool)

(declare-fun tp!1705082 () Bool)

(declare-fun tp!1705083 () Bool)

(assert (=> b!6107158 (= e!3724323 (and tp!1705082 tp!1705083))))

(assert (=> b!6106338 (= tp!1704869 e!3724323)))

(declare-fun b!6107157 () Bool)

(assert (=> b!6107157 (= e!3724323 tp_is_empty!41367)))

(declare-fun b!6107159 () Bool)

(declare-fun tp!1705084 () Bool)

(assert (=> b!6107159 (= e!3724323 tp!1705084)))

(assert (= (and b!6106338 ((_ is ElementMatch!16057) (regOne!32626 (regTwo!32627 r!7292)))) b!6107157))

(assert (= (and b!6106338 ((_ is Concat!24902) (regOne!32626 (regTwo!32627 r!7292)))) b!6107158))

(assert (= (and b!6106338 ((_ is Star!16057) (regOne!32626 (regTwo!32627 r!7292)))) b!6107159))

(assert (= (and b!6106338 ((_ is Union!16057) (regOne!32626 (regTwo!32627 r!7292)))) b!6107160))

(declare-fun b!6107164 () Bool)

(declare-fun e!3724324 () Bool)

(declare-fun tp!1705086 () Bool)

(declare-fun tp!1705090 () Bool)

(assert (=> b!6107164 (= e!3724324 (and tp!1705086 tp!1705090))))

(declare-fun b!6107162 () Bool)

(declare-fun tp!1705087 () Bool)

(declare-fun tp!1705088 () Bool)

(assert (=> b!6107162 (= e!3724324 (and tp!1705087 tp!1705088))))

(assert (=> b!6106338 (= tp!1704870 e!3724324)))

(declare-fun b!6107161 () Bool)

(assert (=> b!6107161 (= e!3724324 tp_is_empty!41367)))

(declare-fun b!6107163 () Bool)

(declare-fun tp!1705089 () Bool)

(assert (=> b!6107163 (= e!3724324 tp!1705089)))

(assert (= (and b!6106338 ((_ is ElementMatch!16057) (regTwo!32626 (regTwo!32627 r!7292)))) b!6107161))

(assert (= (and b!6106338 ((_ is Concat!24902) (regTwo!32626 (regTwo!32627 r!7292)))) b!6107162))

(assert (= (and b!6106338 ((_ is Star!16057) (regTwo!32626 (regTwo!32627 r!7292)))) b!6107163))

(assert (= (and b!6106338 ((_ is Union!16057) (regTwo!32626 (regTwo!32627 r!7292)))) b!6107164))

(declare-fun b!6107168 () Bool)

(declare-fun e!3724325 () Bool)

(declare-fun tp!1705091 () Bool)

(declare-fun tp!1705095 () Bool)

(assert (=> b!6107168 (= e!3724325 (and tp!1705091 tp!1705095))))

(declare-fun b!6107166 () Bool)

(declare-fun tp!1705092 () Bool)

(declare-fun tp!1705093 () Bool)

(assert (=> b!6107166 (= e!3724325 (and tp!1705092 tp!1705093))))

(assert (=> b!6106332 (= tp!1704861 e!3724325)))

(declare-fun b!6107165 () Bool)

(assert (=> b!6107165 (= e!3724325 tp_is_empty!41367)))

(declare-fun b!6107167 () Bool)

(declare-fun tp!1705094 () Bool)

(assert (=> b!6107167 (= e!3724325 tp!1705094)))

(assert (= (and b!6106332 ((_ is ElementMatch!16057) (h!70794 (exprs!5941 (h!70795 zl!343))))) b!6107165))

(assert (= (and b!6106332 ((_ is Concat!24902) (h!70794 (exprs!5941 (h!70795 zl!343))))) b!6107166))

(assert (= (and b!6106332 ((_ is Star!16057) (h!70794 (exprs!5941 (h!70795 zl!343))))) b!6107167))

(assert (= (and b!6106332 ((_ is Union!16057) (h!70794 (exprs!5941 (h!70795 zl!343))))) b!6107168))

(declare-fun b!6107169 () Bool)

(declare-fun e!3724326 () Bool)

(declare-fun tp!1705096 () Bool)

(declare-fun tp!1705097 () Bool)

(assert (=> b!6107169 (= e!3724326 (and tp!1705096 tp!1705097))))

(assert (=> b!6106332 (= tp!1704862 e!3724326)))

(assert (= (and b!6106332 ((_ is Cons!64346) (t!377923 (exprs!5941 (h!70795 zl!343))))) b!6107169))

(declare-fun b!6107173 () Bool)

(declare-fun e!3724327 () Bool)

(declare-fun tp!1705098 () Bool)

(declare-fun tp!1705102 () Bool)

(assert (=> b!6107173 (= e!3724327 (and tp!1705098 tp!1705102))))

(declare-fun b!6107171 () Bool)

(declare-fun tp!1705099 () Bool)

(declare-fun tp!1705100 () Bool)

(assert (=> b!6107171 (= e!3724327 (and tp!1705099 tp!1705100))))

(assert (=> b!6106340 (= tp!1704868 e!3724327)))

(declare-fun b!6107170 () Bool)

(assert (=> b!6107170 (= e!3724327 tp_is_empty!41367)))

(declare-fun b!6107172 () Bool)

(declare-fun tp!1705101 () Bool)

(assert (=> b!6107172 (= e!3724327 tp!1705101)))

(assert (= (and b!6106340 ((_ is ElementMatch!16057) (regOne!32627 (regTwo!32627 r!7292)))) b!6107170))

(assert (= (and b!6106340 ((_ is Concat!24902) (regOne!32627 (regTwo!32627 r!7292)))) b!6107171))

(assert (= (and b!6106340 ((_ is Star!16057) (regOne!32627 (regTwo!32627 r!7292)))) b!6107172))

(assert (= (and b!6106340 ((_ is Union!16057) (regOne!32627 (regTwo!32627 r!7292)))) b!6107173))

(declare-fun b!6107177 () Bool)

(declare-fun e!3724328 () Bool)

(declare-fun tp!1705103 () Bool)

(declare-fun tp!1705107 () Bool)

(assert (=> b!6107177 (= e!3724328 (and tp!1705103 tp!1705107))))

(declare-fun b!6107175 () Bool)

(declare-fun tp!1705104 () Bool)

(declare-fun tp!1705105 () Bool)

(assert (=> b!6107175 (= e!3724328 (and tp!1705104 tp!1705105))))

(assert (=> b!6106340 (= tp!1704872 e!3724328)))

(declare-fun b!6107174 () Bool)

(assert (=> b!6107174 (= e!3724328 tp_is_empty!41367)))

(declare-fun b!6107176 () Bool)

(declare-fun tp!1705106 () Bool)

(assert (=> b!6107176 (= e!3724328 tp!1705106)))

(assert (= (and b!6106340 ((_ is ElementMatch!16057) (regTwo!32627 (regTwo!32627 r!7292)))) b!6107174))

(assert (= (and b!6106340 ((_ is Concat!24902) (regTwo!32627 (regTwo!32627 r!7292)))) b!6107175))

(assert (= (and b!6106340 ((_ is Star!16057) (regTwo!32627 (regTwo!32627 r!7292)))) b!6107176))

(assert (= (and b!6106340 ((_ is Union!16057) (regTwo!32627 (regTwo!32627 r!7292)))) b!6107177))

(declare-fun b!6107181 () Bool)

(declare-fun e!3724329 () Bool)

(declare-fun tp!1705108 () Bool)

(declare-fun tp!1705112 () Bool)

(assert (=> b!6107181 (= e!3724329 (and tp!1705108 tp!1705112))))

(declare-fun b!6107179 () Bool)

(declare-fun tp!1705109 () Bool)

(declare-fun tp!1705110 () Bool)

(assert (=> b!6107179 (= e!3724329 (and tp!1705109 tp!1705110))))

(assert (=> b!6106339 (= tp!1704871 e!3724329)))

(declare-fun b!6107178 () Bool)

(assert (=> b!6107178 (= e!3724329 tp_is_empty!41367)))

(declare-fun b!6107180 () Bool)

(declare-fun tp!1705111 () Bool)

(assert (=> b!6107180 (= e!3724329 tp!1705111)))

(assert (= (and b!6106339 ((_ is ElementMatch!16057) (reg!16386 (regTwo!32627 r!7292)))) b!6107178))

(assert (= (and b!6106339 ((_ is Concat!24902) (reg!16386 (regTwo!32627 r!7292)))) b!6107179))

(assert (= (and b!6106339 ((_ is Star!16057) (reg!16386 (regTwo!32627 r!7292)))) b!6107180))

(assert (= (and b!6106339 ((_ is Union!16057) (reg!16386 (regTwo!32627 r!7292)))) b!6107181))

(declare-fun b!6107185 () Bool)

(declare-fun e!3724330 () Bool)

(declare-fun tp!1705113 () Bool)

(declare-fun tp!1705117 () Bool)

(assert (=> b!6107185 (= e!3724330 (and tp!1705113 tp!1705117))))

(declare-fun b!6107183 () Bool)

(declare-fun tp!1705114 () Bool)

(declare-fun tp!1705115 () Bool)

(assert (=> b!6107183 (= e!3724330 (and tp!1705114 tp!1705115))))

(assert (=> b!6106349 (= tp!1704876 e!3724330)))

(declare-fun b!6107182 () Bool)

(assert (=> b!6107182 (= e!3724330 tp_is_empty!41367)))

(declare-fun b!6107184 () Bool)

(declare-fun tp!1705116 () Bool)

(assert (=> b!6107184 (= e!3724330 tp!1705116)))

(assert (= (and b!6106349 ((_ is ElementMatch!16057) (regOne!32627 (reg!16386 r!7292)))) b!6107182))

(assert (= (and b!6106349 ((_ is Concat!24902) (regOne!32627 (reg!16386 r!7292)))) b!6107183))

(assert (= (and b!6106349 ((_ is Star!16057) (regOne!32627 (reg!16386 r!7292)))) b!6107184))

(assert (= (and b!6106349 ((_ is Union!16057) (regOne!32627 (reg!16386 r!7292)))) b!6107185))

(declare-fun b!6107189 () Bool)

(declare-fun e!3724331 () Bool)

(declare-fun tp!1705118 () Bool)

(declare-fun tp!1705122 () Bool)

(assert (=> b!6107189 (= e!3724331 (and tp!1705118 tp!1705122))))

(declare-fun b!6107187 () Bool)

(declare-fun tp!1705119 () Bool)

(declare-fun tp!1705120 () Bool)

(assert (=> b!6107187 (= e!3724331 (and tp!1705119 tp!1705120))))

(assert (=> b!6106349 (= tp!1704880 e!3724331)))

(declare-fun b!6107186 () Bool)

(assert (=> b!6107186 (= e!3724331 tp_is_empty!41367)))

(declare-fun b!6107188 () Bool)

(declare-fun tp!1705121 () Bool)

(assert (=> b!6107188 (= e!3724331 tp!1705121)))

(assert (= (and b!6106349 ((_ is ElementMatch!16057) (regTwo!32627 (reg!16386 r!7292)))) b!6107186))

(assert (= (and b!6106349 ((_ is Concat!24902) (regTwo!32627 (reg!16386 r!7292)))) b!6107187))

(assert (= (and b!6106349 ((_ is Star!16057) (regTwo!32627 (reg!16386 r!7292)))) b!6107188))

(assert (= (and b!6106349 ((_ is Union!16057) (regTwo!32627 (reg!16386 r!7292)))) b!6107189))

(declare-fun b!6107193 () Bool)

(declare-fun e!3724332 () Bool)

(declare-fun tp!1705123 () Bool)

(declare-fun tp!1705127 () Bool)

(assert (=> b!6107193 (= e!3724332 (and tp!1705123 tp!1705127))))

(declare-fun b!6107191 () Bool)

(declare-fun tp!1705124 () Bool)

(declare-fun tp!1705125 () Bool)

(assert (=> b!6107191 (= e!3724332 (and tp!1705124 tp!1705125))))

(assert (=> b!6106326 (= tp!1704855 e!3724332)))

(declare-fun b!6107190 () Bool)

(assert (=> b!6107190 (= e!3724332 tp_is_empty!41367)))

(declare-fun b!6107192 () Bool)

(declare-fun tp!1705126 () Bool)

(assert (=> b!6107192 (= e!3724332 tp!1705126)))

(assert (= (and b!6106326 ((_ is ElementMatch!16057) (reg!16386 (regTwo!32626 r!7292)))) b!6107190))

(assert (= (and b!6106326 ((_ is Concat!24902) (reg!16386 (regTwo!32626 r!7292)))) b!6107191))

(assert (= (and b!6106326 ((_ is Star!16057) (reg!16386 (regTwo!32626 r!7292)))) b!6107192))

(assert (= (and b!6106326 ((_ is Union!16057) (reg!16386 (regTwo!32626 r!7292)))) b!6107193))

(declare-fun b!6107197 () Bool)

(declare-fun e!3724333 () Bool)

(declare-fun tp!1705128 () Bool)

(declare-fun tp!1705132 () Bool)

(assert (=> b!6107197 (= e!3724333 (and tp!1705128 tp!1705132))))

(declare-fun b!6107195 () Bool)

(declare-fun tp!1705129 () Bool)

(declare-fun tp!1705130 () Bool)

(assert (=> b!6107195 (= e!3724333 (and tp!1705129 tp!1705130))))

(assert (=> b!6106348 (= tp!1704879 e!3724333)))

(declare-fun b!6107194 () Bool)

(assert (=> b!6107194 (= e!3724333 tp_is_empty!41367)))

(declare-fun b!6107196 () Bool)

(declare-fun tp!1705131 () Bool)

(assert (=> b!6107196 (= e!3724333 tp!1705131)))

(assert (= (and b!6106348 ((_ is ElementMatch!16057) (reg!16386 (reg!16386 r!7292)))) b!6107194))

(assert (= (and b!6106348 ((_ is Concat!24902) (reg!16386 (reg!16386 r!7292)))) b!6107195))

(assert (= (and b!6106348 ((_ is Star!16057) (reg!16386 (reg!16386 r!7292)))) b!6107196))

(assert (= (and b!6106348 ((_ is Union!16057) (reg!16386 (reg!16386 r!7292)))) b!6107197))

(declare-fun b!6107201 () Bool)

(declare-fun e!3724334 () Bool)

(declare-fun tp!1705133 () Bool)

(declare-fun tp!1705137 () Bool)

(assert (=> b!6107201 (= e!3724334 (and tp!1705133 tp!1705137))))

(declare-fun b!6107199 () Bool)

(declare-fun tp!1705134 () Bool)

(declare-fun tp!1705135 () Bool)

(assert (=> b!6107199 (= e!3724334 (and tp!1705134 tp!1705135))))

(assert (=> b!6106325 (= tp!1704853 e!3724334)))

(declare-fun b!6107198 () Bool)

(assert (=> b!6107198 (= e!3724334 tp_is_empty!41367)))

(declare-fun b!6107200 () Bool)

(declare-fun tp!1705136 () Bool)

(assert (=> b!6107200 (= e!3724334 tp!1705136)))

(assert (= (and b!6106325 ((_ is ElementMatch!16057) (regOne!32626 (regTwo!32626 r!7292)))) b!6107198))

(assert (= (and b!6106325 ((_ is Concat!24902) (regOne!32626 (regTwo!32626 r!7292)))) b!6107199))

(assert (= (and b!6106325 ((_ is Star!16057) (regOne!32626 (regTwo!32626 r!7292)))) b!6107200))

(assert (= (and b!6106325 ((_ is Union!16057) (regOne!32626 (regTwo!32626 r!7292)))) b!6107201))

(declare-fun b!6107205 () Bool)

(declare-fun e!3724335 () Bool)

(declare-fun tp!1705138 () Bool)

(declare-fun tp!1705142 () Bool)

(assert (=> b!6107205 (= e!3724335 (and tp!1705138 tp!1705142))))

(declare-fun b!6107203 () Bool)

(declare-fun tp!1705139 () Bool)

(declare-fun tp!1705140 () Bool)

(assert (=> b!6107203 (= e!3724335 (and tp!1705139 tp!1705140))))

(assert (=> b!6106325 (= tp!1704854 e!3724335)))

(declare-fun b!6107202 () Bool)

(assert (=> b!6107202 (= e!3724335 tp_is_empty!41367)))

(declare-fun b!6107204 () Bool)

(declare-fun tp!1705141 () Bool)

(assert (=> b!6107204 (= e!3724335 tp!1705141)))

(assert (= (and b!6106325 ((_ is ElementMatch!16057) (regTwo!32626 (regTwo!32626 r!7292)))) b!6107202))

(assert (= (and b!6106325 ((_ is Concat!24902) (regTwo!32626 (regTwo!32626 r!7292)))) b!6107203))

(assert (= (and b!6106325 ((_ is Star!16057) (regTwo!32626 (regTwo!32626 r!7292)))) b!6107204))

(assert (= (and b!6106325 ((_ is Union!16057) (regTwo!32626 (regTwo!32626 r!7292)))) b!6107205))

(declare-fun b!6107209 () Bool)

(declare-fun e!3724336 () Bool)

(declare-fun tp!1705143 () Bool)

(declare-fun tp!1705147 () Bool)

(assert (=> b!6107209 (= e!3724336 (and tp!1705143 tp!1705147))))

(declare-fun b!6107207 () Bool)

(declare-fun tp!1705144 () Bool)

(declare-fun tp!1705145 () Bool)

(assert (=> b!6107207 (= e!3724336 (and tp!1705144 tp!1705145))))

(assert (=> b!6106347 (= tp!1704877 e!3724336)))

(declare-fun b!6107206 () Bool)

(assert (=> b!6107206 (= e!3724336 tp_is_empty!41367)))

(declare-fun b!6107208 () Bool)

(declare-fun tp!1705146 () Bool)

(assert (=> b!6107208 (= e!3724336 tp!1705146)))

(assert (= (and b!6106347 ((_ is ElementMatch!16057) (regOne!32626 (reg!16386 r!7292)))) b!6107206))

(assert (= (and b!6106347 ((_ is Concat!24902) (regOne!32626 (reg!16386 r!7292)))) b!6107207))

(assert (= (and b!6106347 ((_ is Star!16057) (regOne!32626 (reg!16386 r!7292)))) b!6107208))

(assert (= (and b!6106347 ((_ is Union!16057) (regOne!32626 (reg!16386 r!7292)))) b!6107209))

(declare-fun b!6107213 () Bool)

(declare-fun e!3724337 () Bool)

(declare-fun tp!1705148 () Bool)

(declare-fun tp!1705152 () Bool)

(assert (=> b!6107213 (= e!3724337 (and tp!1705148 tp!1705152))))

(declare-fun b!6107211 () Bool)

(declare-fun tp!1705149 () Bool)

(declare-fun tp!1705150 () Bool)

(assert (=> b!6107211 (= e!3724337 (and tp!1705149 tp!1705150))))

(assert (=> b!6106347 (= tp!1704878 e!3724337)))

(declare-fun b!6107210 () Bool)

(assert (=> b!6107210 (= e!3724337 tp_is_empty!41367)))

(declare-fun b!6107212 () Bool)

(declare-fun tp!1705151 () Bool)

(assert (=> b!6107212 (= e!3724337 tp!1705151)))

(assert (= (and b!6106347 ((_ is ElementMatch!16057) (regTwo!32626 (reg!16386 r!7292)))) b!6107210))

(assert (= (and b!6106347 ((_ is Concat!24902) (regTwo!32626 (reg!16386 r!7292)))) b!6107211))

(assert (= (and b!6106347 ((_ is Star!16057) (regTwo!32626 (reg!16386 r!7292)))) b!6107212))

(assert (= (and b!6106347 ((_ is Union!16057) (regTwo!32626 (reg!16386 r!7292)))) b!6107213))

(declare-fun b!6107214 () Bool)

(declare-fun e!3724338 () Bool)

(declare-fun tp!1705153 () Bool)

(declare-fun tp!1705154 () Bool)

(assert (=> b!6107214 (= e!3724338 (and tp!1705153 tp!1705154))))

(assert (=> b!6106363 (= tp!1704893 e!3724338)))

(assert (= (and b!6106363 ((_ is Cons!64346) (exprs!5941 setElem!41266))) b!6107214))

(declare-fun condSetEmpty!41268 () Bool)

(assert (=> setNonEmpty!41266 (= condSetEmpty!41268 (= setRest!41266 ((as const (Array Context!10882 Bool)) false)))))

(declare-fun setRes!41268 () Bool)

(assert (=> setNonEmpty!41266 (= tp!1704894 setRes!41268)))

(declare-fun setIsEmpty!41268 () Bool)

(assert (=> setIsEmpty!41268 setRes!41268))

(declare-fun e!3724339 () Bool)

(declare-fun tp!1705156 () Bool)

(declare-fun setNonEmpty!41268 () Bool)

(declare-fun setElem!41268 () Context!10882)

(assert (=> setNonEmpty!41268 (= setRes!41268 (and tp!1705156 (inv!83389 setElem!41268) e!3724339))))

(declare-fun setRest!41268 () (InoxSet Context!10882))

(assert (=> setNonEmpty!41268 (= setRest!41266 ((_ map or) (store ((as const (Array Context!10882 Bool)) false) setElem!41268 true) setRest!41268))))

(declare-fun b!6107215 () Bool)

(declare-fun tp!1705155 () Bool)

(assert (=> b!6107215 (= e!3724339 tp!1705155)))

(assert (= (and setNonEmpty!41266 condSetEmpty!41268) setIsEmpty!41268))

(assert (= (and setNonEmpty!41266 (not condSetEmpty!41268)) setNonEmpty!41268))

(assert (= setNonEmpty!41268 b!6107215))

(declare-fun m!6957844 () Bool)

(assert (=> setNonEmpty!41268 m!6957844))

(declare-fun b!6107219 () Bool)

(declare-fun e!3724340 () Bool)

(declare-fun tp!1705157 () Bool)

(declare-fun tp!1705161 () Bool)

(assert (=> b!6107219 (= e!3724340 (and tp!1705157 tp!1705161))))

(declare-fun b!6107217 () Bool)

(declare-fun tp!1705158 () Bool)

(declare-fun tp!1705159 () Bool)

(assert (=> b!6107217 (= e!3724340 (and tp!1705158 tp!1705159))))

(assert (=> b!6106327 (= tp!1704852 e!3724340)))

(declare-fun b!6107216 () Bool)

(assert (=> b!6107216 (= e!3724340 tp_is_empty!41367)))

(declare-fun b!6107218 () Bool)

(declare-fun tp!1705160 () Bool)

(assert (=> b!6107218 (= e!3724340 tp!1705160)))

(assert (= (and b!6106327 ((_ is ElementMatch!16057) (regOne!32627 (regTwo!32626 r!7292)))) b!6107216))

(assert (= (and b!6106327 ((_ is Concat!24902) (regOne!32627 (regTwo!32626 r!7292)))) b!6107217))

(assert (= (and b!6106327 ((_ is Star!16057) (regOne!32627 (regTwo!32626 r!7292)))) b!6107218))

(assert (= (and b!6106327 ((_ is Union!16057) (regOne!32627 (regTwo!32626 r!7292)))) b!6107219))

(declare-fun b!6107223 () Bool)

(declare-fun e!3724341 () Bool)

(declare-fun tp!1705162 () Bool)

(declare-fun tp!1705166 () Bool)

(assert (=> b!6107223 (= e!3724341 (and tp!1705162 tp!1705166))))

(declare-fun b!6107221 () Bool)

(declare-fun tp!1705163 () Bool)

(declare-fun tp!1705164 () Bool)

(assert (=> b!6107221 (= e!3724341 (and tp!1705163 tp!1705164))))

(assert (=> b!6106327 (= tp!1704856 e!3724341)))

(declare-fun b!6107220 () Bool)

(assert (=> b!6107220 (= e!3724341 tp_is_empty!41367)))

(declare-fun b!6107222 () Bool)

(declare-fun tp!1705165 () Bool)

(assert (=> b!6107222 (= e!3724341 tp!1705165)))

(assert (= (and b!6106327 ((_ is ElementMatch!16057) (regTwo!32627 (regTwo!32626 r!7292)))) b!6107220))

(assert (= (and b!6106327 ((_ is Concat!24902) (regTwo!32627 (regTwo!32626 r!7292)))) b!6107221))

(assert (= (and b!6106327 ((_ is Star!16057) (regTwo!32627 (regTwo!32626 r!7292)))) b!6107222))

(assert (= (and b!6106327 ((_ is Union!16057) (regTwo!32627 (regTwo!32626 r!7292)))) b!6107223))

(declare-fun b!6107225 () Bool)

(declare-fun e!3724343 () Bool)

(declare-fun tp!1705167 () Bool)

(assert (=> b!6107225 (= e!3724343 tp!1705167)))

(declare-fun tp!1705168 () Bool)

(declare-fun e!3724342 () Bool)

(declare-fun b!6107224 () Bool)

(assert (=> b!6107224 (= e!3724342 (and (inv!83389 (h!70795 (t!377924 (t!377924 zl!343)))) e!3724343 tp!1705168))))

(assert (=> b!6106357 (= tp!1704888 e!3724342)))

(assert (= b!6107224 b!6107225))

(assert (= (and b!6106357 ((_ is Cons!64347) (t!377924 (t!377924 zl!343)))) b!6107224))

(declare-fun m!6957846 () Bool)

(assert (=> b!6107224 m!6957846))

(declare-fun b!6107229 () Bool)

(declare-fun e!3724344 () Bool)

(declare-fun tp!1705169 () Bool)

(declare-fun tp!1705173 () Bool)

(assert (=> b!6107229 (= e!3724344 (and tp!1705169 tp!1705173))))

(declare-fun b!6107227 () Bool)

(declare-fun tp!1705170 () Bool)

(declare-fun tp!1705171 () Bool)

(assert (=> b!6107227 (= e!3724344 (and tp!1705170 tp!1705171))))

(assert (=> b!6106334 (= tp!1704864 e!3724344)))

(declare-fun b!6107226 () Bool)

(assert (=> b!6107226 (= e!3724344 tp_is_empty!41367)))

(declare-fun b!6107228 () Bool)

(declare-fun tp!1705172 () Bool)

(assert (=> b!6107228 (= e!3724344 tp!1705172)))

(assert (= (and b!6106334 ((_ is ElementMatch!16057) (regOne!32626 (regOne!32627 r!7292)))) b!6107226))

(assert (= (and b!6106334 ((_ is Concat!24902) (regOne!32626 (regOne!32627 r!7292)))) b!6107227))

(assert (= (and b!6106334 ((_ is Star!16057) (regOne!32626 (regOne!32627 r!7292)))) b!6107228))

(assert (= (and b!6106334 ((_ is Union!16057) (regOne!32626 (regOne!32627 r!7292)))) b!6107229))

(declare-fun b!6107233 () Bool)

(declare-fun e!3724345 () Bool)

(declare-fun tp!1705174 () Bool)

(declare-fun tp!1705178 () Bool)

(assert (=> b!6107233 (= e!3724345 (and tp!1705174 tp!1705178))))

(declare-fun b!6107231 () Bool)

(declare-fun tp!1705175 () Bool)

(declare-fun tp!1705176 () Bool)

(assert (=> b!6107231 (= e!3724345 (and tp!1705175 tp!1705176))))

(assert (=> b!6106334 (= tp!1704865 e!3724345)))

(declare-fun b!6107230 () Bool)

(assert (=> b!6107230 (= e!3724345 tp_is_empty!41367)))

(declare-fun b!6107232 () Bool)

(declare-fun tp!1705177 () Bool)

(assert (=> b!6107232 (= e!3724345 tp!1705177)))

(assert (= (and b!6106334 ((_ is ElementMatch!16057) (regTwo!32626 (regOne!32627 r!7292)))) b!6107230))

(assert (= (and b!6106334 ((_ is Concat!24902) (regTwo!32626 (regOne!32627 r!7292)))) b!6107231))

(assert (= (and b!6106334 ((_ is Star!16057) (regTwo!32626 (regOne!32627 r!7292)))) b!6107232))

(assert (= (and b!6106334 ((_ is Union!16057) (regTwo!32626 (regOne!32627 r!7292)))) b!6107233))

(declare-fun b!6107237 () Bool)

(declare-fun e!3724346 () Bool)

(declare-fun tp!1705179 () Bool)

(declare-fun tp!1705183 () Bool)

(assert (=> b!6107237 (= e!3724346 (and tp!1705179 tp!1705183))))

(declare-fun b!6107235 () Bool)

(declare-fun tp!1705180 () Bool)

(declare-fun tp!1705181 () Bool)

(assert (=> b!6107235 (= e!3724346 (and tp!1705180 tp!1705181))))

(assert (=> b!6106350 (= tp!1704881 e!3724346)))

(declare-fun b!6107234 () Bool)

(assert (=> b!6107234 (= e!3724346 tp_is_empty!41367)))

(declare-fun b!6107236 () Bool)

(declare-fun tp!1705182 () Bool)

(assert (=> b!6107236 (= e!3724346 tp!1705182)))

(assert (= (and b!6106350 ((_ is ElementMatch!16057) (h!70794 (exprs!5941 setElem!41260)))) b!6107234))

(assert (= (and b!6106350 ((_ is Concat!24902) (h!70794 (exprs!5941 setElem!41260)))) b!6107235))

(assert (= (and b!6106350 ((_ is Star!16057) (h!70794 (exprs!5941 setElem!41260)))) b!6107236))

(assert (= (and b!6106350 ((_ is Union!16057) (h!70794 (exprs!5941 setElem!41260)))) b!6107237))

(declare-fun b!6107238 () Bool)

(declare-fun e!3724347 () Bool)

(declare-fun tp!1705184 () Bool)

(declare-fun tp!1705185 () Bool)

(assert (=> b!6107238 (= e!3724347 (and tp!1705184 tp!1705185))))

(assert (=> b!6106350 (= tp!1704882 e!3724347)))

(assert (= (and b!6106350 ((_ is Cons!64346) (t!377923 (exprs!5941 setElem!41260)))) b!6107238))

(declare-fun b!6107242 () Bool)

(declare-fun e!3724348 () Bool)

(declare-fun tp!1705186 () Bool)

(declare-fun tp!1705190 () Bool)

(assert (=> b!6107242 (= e!3724348 (and tp!1705186 tp!1705190))))

(declare-fun b!6107240 () Bool)

(declare-fun tp!1705187 () Bool)

(declare-fun tp!1705188 () Bool)

(assert (=> b!6107240 (= e!3724348 (and tp!1705187 tp!1705188))))

(assert (=> b!6106336 (= tp!1704863 e!3724348)))

(declare-fun b!6107239 () Bool)

(assert (=> b!6107239 (= e!3724348 tp_is_empty!41367)))

(declare-fun b!6107241 () Bool)

(declare-fun tp!1705189 () Bool)

(assert (=> b!6107241 (= e!3724348 tp!1705189)))

(assert (= (and b!6106336 ((_ is ElementMatch!16057) (regOne!32627 (regOne!32627 r!7292)))) b!6107239))

(assert (= (and b!6106336 ((_ is Concat!24902) (regOne!32627 (regOne!32627 r!7292)))) b!6107240))

(assert (= (and b!6106336 ((_ is Star!16057) (regOne!32627 (regOne!32627 r!7292)))) b!6107241))

(assert (= (and b!6106336 ((_ is Union!16057) (regOne!32627 (regOne!32627 r!7292)))) b!6107242))

(declare-fun b!6107246 () Bool)

(declare-fun e!3724349 () Bool)

(declare-fun tp!1705191 () Bool)

(declare-fun tp!1705195 () Bool)

(assert (=> b!6107246 (= e!3724349 (and tp!1705191 tp!1705195))))

(declare-fun b!6107244 () Bool)

(declare-fun tp!1705192 () Bool)

(declare-fun tp!1705193 () Bool)

(assert (=> b!6107244 (= e!3724349 (and tp!1705192 tp!1705193))))

(assert (=> b!6106336 (= tp!1704867 e!3724349)))

(declare-fun b!6107243 () Bool)

(assert (=> b!6107243 (= e!3724349 tp_is_empty!41367)))

(declare-fun b!6107245 () Bool)

(declare-fun tp!1705194 () Bool)

(assert (=> b!6107245 (= e!3724349 tp!1705194)))

(assert (= (and b!6106336 ((_ is ElementMatch!16057) (regTwo!32627 (regOne!32627 r!7292)))) b!6107243))

(assert (= (and b!6106336 ((_ is Concat!24902) (regTwo!32627 (regOne!32627 r!7292)))) b!6107244))

(assert (= (and b!6106336 ((_ is Star!16057) (regTwo!32627 (regOne!32627 r!7292)))) b!6107245))

(assert (= (and b!6106336 ((_ is Union!16057) (regTwo!32627 (regOne!32627 r!7292)))) b!6107246))

(declare-fun b!6107247 () Bool)

(declare-fun e!3724350 () Bool)

(declare-fun tp!1705196 () Bool)

(declare-fun tp!1705197 () Bool)

(assert (=> b!6107247 (= e!3724350 (and tp!1705196 tp!1705197))))

(assert (=> b!6106358 (= tp!1704887 e!3724350)))

(assert (= (and b!6106358 ((_ is Cons!64346) (exprs!5941 (h!70795 (t!377924 zl!343))))) b!6107247))

(declare-fun b!6107251 () Bool)

(declare-fun e!3724351 () Bool)

(declare-fun tp!1705198 () Bool)

(declare-fun tp!1705202 () Bool)

(assert (=> b!6107251 (= e!3724351 (and tp!1705198 tp!1705202))))

(declare-fun b!6107249 () Bool)

(declare-fun tp!1705199 () Bool)

(declare-fun tp!1705200 () Bool)

(assert (=> b!6107249 (= e!3724351 (and tp!1705199 tp!1705200))))

(assert (=> b!6106335 (= tp!1704866 e!3724351)))

(declare-fun b!6107248 () Bool)

(assert (=> b!6107248 (= e!3724351 tp_is_empty!41367)))

(declare-fun b!6107250 () Bool)

(declare-fun tp!1705201 () Bool)

(assert (=> b!6107250 (= e!3724351 tp!1705201)))

(assert (= (and b!6106335 ((_ is ElementMatch!16057) (reg!16386 (regOne!32627 r!7292)))) b!6107248))

(assert (= (and b!6106335 ((_ is Concat!24902) (reg!16386 (regOne!32627 r!7292)))) b!6107249))

(assert (= (and b!6106335 ((_ is Star!16057) (reg!16386 (regOne!32627 r!7292)))) b!6107250))

(assert (= (and b!6106335 ((_ is Union!16057) (reg!16386 (regOne!32627 r!7292)))) b!6107251))

(declare-fun b_lambda!232639 () Bool)

(assert (= b_lambda!232635 (or d!1913730 b_lambda!232639)))

(declare-fun bs!1516222 () Bool)

(declare-fun d!1914058 () Bool)

(assert (= bs!1516222 (and d!1914058 d!1913730)))

(assert (=> bs!1516222 (= (dynLambda!25338 lambda!332719 (h!70794 (exprs!5941 (h!70795 zl!343)))) (validRegex!7793 (h!70794 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun m!6957848 () Bool)

(assert (=> bs!1516222 m!6957848))

(assert (=> b!6107064 d!1914058))

(declare-fun b_lambda!232641 () Bool)

(assert (= b_lambda!232637 (or d!1913748 b_lambda!232641)))

(declare-fun bs!1516223 () Bool)

(declare-fun d!1914060 () Bool)

(assert (= bs!1516223 (and d!1914060 d!1913748)))

(assert (=> bs!1516223 (= (dynLambda!25338 lambda!332729 (h!70794 (exprs!5941 (h!70795 zl!343)))) (validRegex!7793 (h!70794 (exprs!5941 (h!70795 zl!343)))))))

(assert (=> bs!1516223 m!6957848))

(assert (=> b!6107105 d!1914060))

(declare-fun b_lambda!232643 () Bool)

(assert (= b_lambda!232629 (or d!1913734 b_lambda!232643)))

(declare-fun bs!1516224 () Bool)

(declare-fun d!1914062 () Bool)

(assert (= bs!1516224 (and d!1914062 d!1913734)))

(assert (=> bs!1516224 (= (dynLambda!25338 lambda!332720 (h!70794 (exprs!5941 setElem!41260))) (validRegex!7793 (h!70794 (exprs!5941 setElem!41260))))))

(declare-fun m!6957850 () Bool)

(assert (=> bs!1516224 m!6957850))

(assert (=> b!6106875 d!1914062))

(declare-fun b_lambda!232645 () Bool)

(assert (= b_lambda!232631 (or d!1913684 b_lambda!232645)))

(declare-fun bs!1516225 () Bool)

(declare-fun d!1914064 () Bool)

(assert (= bs!1516225 (and d!1914064 d!1913684)))

(assert (=> bs!1516225 (= (dynLambda!25338 lambda!332688 (h!70794 (unfocusZipperList!1478 zl!343))) (validRegex!7793 (h!70794 (unfocusZipperList!1478 zl!343))))))

(declare-fun m!6957852 () Bool)

(assert (=> bs!1516225 m!6957852))

(assert (=> b!6106963 d!1914064))

(declare-fun b_lambda!232647 () Bool)

(assert (= b_lambda!232633 (or d!1913694 b_lambda!232647)))

(declare-fun bs!1516226 () Bool)

(declare-fun d!1914066 () Bool)

(assert (= bs!1516226 (and d!1914066 d!1913694)))

(assert (=> bs!1516226 (= (dynLambda!25338 lambda!332695 (h!70794 lt!2329720)) (validRegex!7793 (h!70794 lt!2329720)))))

(declare-fun m!6957854 () Bool)

(assert (=> bs!1516226 m!6957854))

(assert (=> b!6106976 d!1914066))

(check-sat (not b!6107137) (not b!6106959) (not b!6106825) (not b!6107227) (not b_lambda!232647) (not b!6107042) (not b!6107181) (not bm!505121) (not b!6106938) (not b!6106908) (not b!6107118) (not b!6107168) (not b!6107048) (not d!1913940) (not bm!505129) (not b!6107225) (not b!6107193) (not d!1914056) (not b!6106931) (not b!6107173) (not bm!505170) (not b!6107167) (not b!6107154) (not b!6107169) (not b!6107133) (not d!1914036) (not b!6107146) (not bm!505166) (not b!6107034) (not d!1914048) (not b!6106866) (not b!6106832) (not b!6107163) (not b!6106964) (not bm!505162) (not bm!505146) (not b!6107192) (not b!6106995) (not b!6107017) (not b_lambda!232643) (not b!6107160) (not b!6107219) (not b!6107195) (not d!1913912) (not b!6107149) (not b!6107060) (not bm!505156) (not b!6107024) (not b!6106915) (not bm!505128) (not b!6107022) (not bm!505173) (not bm!505110) (not b!6107156) (not bm!505159) (not b!6107138) (not b!6107215) (not b!6107221) (not b!6107065) (not b!6106922) (not b!6107025) (not b!6106983) (not d!1914030) (not b!6107123) (not b!6106924) (not b!6107183) (not d!1913976) (not b!6106950) (not b!6106986) (not b!6107145) (not bm!505130) (not b!6107171) (not b!6107241) (not b!6107204) (not d!1913970) (not b!6107245) (not b!6106903) (not bm!505144) (not bs!1516226) (not b!6106906) (not b!6107218) (not bm!505127) (not b!6107111) (not d!1914016) (not bm!505171) (not b!6106989) (not d!1913948) (not b!6107232) (not b!6106978) (not b!6107179) (not bm!505133) (not b!6106812) (not b!6107209) (not b!6107246) (not b!6107199) (not b!6107070) (not b!6107191) (not b!6106982) (not b!6107151) (not b!6107019) (not b!6106876) (not b!6107242) (not bm!505145) (not d!1913968) (not b!6107010) (not bm!505165) (not b!6107251) (not b!6106925) (not b!6106811) (not b!6106810) (not d!1914050) (not b!6107036) (not b!6107109) (not b!6107043) (not b!6107217) (not b!6107101) (not b!6107240) (not b!6107166) (not b!6107030) (not d!1913958) (not b!6106899) (not b!6107244) (not bm!505151) (not d!1913998) (not b!6106911) (not b!6107213) (not d!1913944) (not bs!1516225) (not d!1913956) (not b!6107159) (not b!6107089) (not b!6107203) (not b!6106824) (not b!6107023) (not d!1913916) (not b!6107208) (not b!6107211) (not b!6106882) (not b!6107247) (not bm!505136) (not b!6107139) (not b!6107147) (not b!6107231) (not b!6107018) (not bm!505150) (not b!6107184) (not b!6106942) (not b!6107207) (not b!6107236) (not b!6106923) (not b!6107155) (not d!1914012) (not b!6107162) (not b!6106918) (not bm!505126) (not d!1913942) (not b!6107172) (not bm!505160) (not b!6106818) (not bm!505140) (not b!6107189) (not d!1914014) (not b!6106969) (not b!6107249) (not bm!505132) (not b!6106913) (not b!6106819) (not bm!505172) (not b!6106985) (not d!1913938) (not bm!505169) (not b!6107143) (not b!6106909) (not bm!505141) (not b!6107035) (not bm!505154) (not b!6106977) (not b!6107205) (not b!6107001) (not b!6107229) (not d!1913946) (not b!6107110) (not b!6107223) (not b!6106984) (not b!6106833) (not d!1913918) (not bm!505123) (not b!6107212) (not b!6107250) (not b!6107176) (not b!6107106) (not d!1913936) (not b!6107187) (not b!6106930) (not b!6107175) (not d!1914038) (not d!1914000) (not b!6107122) (not d!1913960) (not bm!505135) (not b_lambda!232645) (not b!6107180) (not b!6106826) (not b!6107214) (not b!6106869) (not b!6107152) (not b!6107201) (not d!1913992) (not b!6107112) (not b!6107222) (not bm!505109) (not b!6107037) (not b!6107129) (not bm!505122) (not b!6106988) (not b!6107041) (not b!6107200) (not b!6107141) (not b!6107237) (not b!6107233) (not b!6107196) (not b!6107197) (not bm!505125) (not bs!1516224) (not b!6106904) (not b!6107117) (not b!6107177) (not bm!505147) (not b!6106859) (not b!6106900) (not b!6107031) (not b!6107238) (not b!6107009) (not b!6106827) (not b!6107228) (not d!1913988) tp_is_empty!41367 (not b!6106912) (not b!6107142) (not b_lambda!232641) (not setNonEmpty!41268) (not b!6107158) (not d!1914040) (not b!6107188) (not b!6107235) (not b!6106813) (not b!6107185) (not bm!505155) (not b!6107224) (not b_lambda!232639) (not b!6107150) (not bs!1516222) (not bm!505137) (not bs!1516223) (not b!6107164))
(check-sat)
(get-model)

(declare-fun b!6107881 () Bool)

(declare-fun res!2533838 () Bool)

(declare-fun e!3724766 () Bool)

(assert (=> b!6107881 (=> (not res!2533838) (not e!3724766))))

(declare-fun call!505334 () Bool)

(assert (=> b!6107881 (= res!2533838 (not call!505334))))

(declare-fun b!6107882 () Bool)

(declare-fun res!2533839 () Bool)

(declare-fun e!3724764 () Bool)

(assert (=> b!6107882 (=> res!2533839 e!3724764)))

(assert (=> b!6107882 (= res!2533839 (not ((_ is ElementMatch!16057) (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 s!2326)))))))

(declare-fun e!3724761 () Bool)

(assert (=> b!6107882 (= e!3724761 e!3724764)))

(declare-fun b!6107883 () Bool)

(declare-fun res!2533841 () Bool)

(assert (=> b!6107883 (=> (not res!2533841) (not e!3724766))))

(assert (=> b!6107883 (= res!2533841 (isEmpty!36274 (tail!11721 (tail!11721 s!2326))))))

(declare-fun b!6107884 () Bool)

(declare-fun e!3724765 () Bool)

(assert (=> b!6107884 (= e!3724765 (not (= (head!12636 (tail!11721 s!2326)) (c!1096851 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 s!2326))))))))

(declare-fun b!6107885 () Bool)

(assert (=> b!6107885 (= e!3724766 (= (head!12636 (tail!11721 s!2326)) (c!1096851 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 s!2326)))))))

(declare-fun b!6107886 () Bool)

(declare-fun res!2533836 () Bool)

(assert (=> b!6107886 (=> res!2533836 e!3724765)))

(assert (=> b!6107886 (= res!2533836 (not (isEmpty!36274 (tail!11721 (tail!11721 s!2326)))))))

(declare-fun b!6107888 () Bool)

(declare-fun e!3724762 () Bool)

(assert (=> b!6107888 (= e!3724762 e!3724765)))

(declare-fun res!2533840 () Bool)

(assert (=> b!6107888 (=> res!2533840 e!3724765)))

(assert (=> b!6107888 (= res!2533840 call!505334)))

(declare-fun b!6107889 () Bool)

(assert (=> b!6107889 (= e!3724764 e!3724762)))

(declare-fun res!2533834 () Bool)

(assert (=> b!6107889 (=> (not res!2533834) (not e!3724762))))

(declare-fun lt!2329841 () Bool)

(assert (=> b!6107889 (= res!2533834 (not lt!2329841))))

(declare-fun b!6107890 () Bool)

(declare-fun e!3724763 () Bool)

(assert (=> b!6107890 (= e!3724763 e!3724761)))

(declare-fun c!1097387 () Bool)

(assert (=> b!6107890 (= c!1097387 ((_ is EmptyLang!16057) (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 s!2326))))))

(declare-fun b!6107891 () Bool)

(declare-fun e!3724760 () Bool)

(assert (=> b!6107891 (= e!3724760 (matchR!8240 (derivativeStep!4778 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 s!2326)) (head!12636 (tail!11721 s!2326))) (tail!11721 (tail!11721 s!2326))))))

(declare-fun b!6107892 () Bool)

(assert (=> b!6107892 (= e!3724760 (nullable!6050 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 s!2326))))))

(declare-fun b!6107893 () Bool)

(assert (=> b!6107893 (= e!3724761 (not lt!2329841))))

(declare-fun b!6107894 () Bool)

(declare-fun res!2533837 () Bool)

(assert (=> b!6107894 (=> res!2533837 e!3724764)))

(assert (=> b!6107894 (= res!2533837 e!3724766)))

(declare-fun res!2533835 () Bool)

(assert (=> b!6107894 (=> (not res!2533835) (not e!3724766))))

(assert (=> b!6107894 (= res!2533835 lt!2329841)))

(declare-fun bm!505329 () Bool)

(assert (=> bm!505329 (= call!505334 (isEmpty!36274 (tail!11721 s!2326)))))

(declare-fun b!6107887 () Bool)

(assert (=> b!6107887 (= e!3724763 (= lt!2329841 call!505334))))

(declare-fun d!1914360 () Bool)

(assert (=> d!1914360 e!3724763))

(declare-fun c!1097388 () Bool)

(assert (=> d!1914360 (= c!1097388 ((_ is EmptyExpr!16057) (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 s!2326))))))

(assert (=> d!1914360 (= lt!2329841 e!3724760)))

(declare-fun c!1097386 () Bool)

(assert (=> d!1914360 (= c!1097386 (isEmpty!36274 (tail!11721 s!2326)))))

(assert (=> d!1914360 (validRegex!7793 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 s!2326)))))

(assert (=> d!1914360 (= (matchR!8240 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 s!2326)) (tail!11721 s!2326)) lt!2329841)))

(assert (= (and d!1914360 c!1097386) b!6107892))

(assert (= (and d!1914360 (not c!1097386)) b!6107891))

(assert (= (and d!1914360 c!1097388) b!6107887))

(assert (= (and d!1914360 (not c!1097388)) b!6107890))

(assert (= (and b!6107890 c!1097387) b!6107893))

(assert (= (and b!6107890 (not c!1097387)) b!6107882))

(assert (= (and b!6107882 (not res!2533839)) b!6107894))

(assert (= (and b!6107894 res!2533835) b!6107881))

(assert (= (and b!6107881 res!2533838) b!6107883))

(assert (= (and b!6107883 res!2533841) b!6107885))

(assert (= (and b!6107894 (not res!2533837)) b!6107889))

(assert (= (and b!6107889 res!2533834) b!6107888))

(assert (= (and b!6107888 (not res!2533840)) b!6107886))

(assert (= (and b!6107886 (not res!2533836)) b!6107884))

(assert (= (or b!6107887 b!6107881 b!6107888) bm!505329))

(assert (=> b!6107884 m!6957092))

(assert (=> b!6107884 m!6957512))

(assert (=> b!6107885 m!6957092))

(assert (=> b!6107885 m!6957512))

(assert (=> bm!505329 m!6957092))

(assert (=> bm!505329 m!6957096))

(assert (=> b!6107891 m!6957092))

(assert (=> b!6107891 m!6957512))

(assert (=> b!6107891 m!6957504))

(assert (=> b!6107891 m!6957512))

(declare-fun m!6958506 () Bool)

(assert (=> b!6107891 m!6958506))

(assert (=> b!6107891 m!6957092))

(assert (=> b!6107891 m!6957516))

(assert (=> b!6107891 m!6958506))

(assert (=> b!6107891 m!6957516))

(declare-fun m!6958508 () Bool)

(assert (=> b!6107891 m!6958508))

(assert (=> b!6107883 m!6957092))

(assert (=> b!6107883 m!6957516))

(assert (=> b!6107883 m!6957516))

(assert (=> b!6107883 m!6957520))

(assert (=> b!6107886 m!6957092))

(assert (=> b!6107886 m!6957516))

(assert (=> b!6107886 m!6957516))

(assert (=> b!6107886 m!6957520))

(assert (=> b!6107892 m!6957504))

(declare-fun m!6958510 () Bool)

(assert (=> b!6107892 m!6958510))

(assert (=> d!1914360 m!6957092))

(assert (=> d!1914360 m!6957096))

(assert (=> d!1914360 m!6957504))

(declare-fun m!6958512 () Bool)

(assert (=> d!1914360 m!6958512))

(assert (=> b!6106818 d!1914360))

(declare-fun b!6107895 () Bool)

(declare-fun e!3724771 () Regex!16057)

(declare-fun call!505338 () Regex!16057)

(assert (=> b!6107895 (= e!3724771 (Union!16057 (Concat!24902 call!505338 (regTwo!32626 (regTwo!32626 r!7292))) EmptyLang!16057))))

(declare-fun d!1914364 () Bool)

(declare-fun lt!2329842 () Regex!16057)

(assert (=> d!1914364 (validRegex!7793 lt!2329842)))

(declare-fun e!3724770 () Regex!16057)

(assert (=> d!1914364 (= lt!2329842 e!3724770)))

(declare-fun c!1097389 () Bool)

(assert (=> d!1914364 (= c!1097389 (or ((_ is EmptyExpr!16057) (regTwo!32626 r!7292)) ((_ is EmptyLang!16057) (regTwo!32626 r!7292))))))

(assert (=> d!1914364 (validRegex!7793 (regTwo!32626 r!7292))))

(assert (=> d!1914364 (= (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 s!2326)) lt!2329842)))

(declare-fun bm!505330 () Bool)

(declare-fun call!505336 () Regex!16057)

(declare-fun call!505337 () Regex!16057)

(assert (=> bm!505330 (= call!505336 call!505337)))

(declare-fun bm!505331 () Bool)

(assert (=> bm!505331 (= call!505338 call!505336)))

(declare-fun c!1097393 () Bool)

(declare-fun bm!505332 () Bool)

(declare-fun call!505335 () Regex!16057)

(assert (=> bm!505332 (= call!505335 (derivativeStep!4778 (ite c!1097393 (regOne!32627 (regTwo!32626 r!7292)) (regOne!32626 (regTwo!32626 r!7292))) (head!12636 s!2326)))))

(declare-fun c!1097390 () Bool)

(declare-fun c!1097391 () Bool)

(declare-fun bm!505333 () Bool)

(assert (=> bm!505333 (= call!505337 (derivativeStep!4778 (ite c!1097393 (regTwo!32627 (regTwo!32626 r!7292)) (ite c!1097391 (reg!16386 (regTwo!32626 r!7292)) (ite c!1097390 (regTwo!32626 (regTwo!32626 r!7292)) (regOne!32626 (regTwo!32626 r!7292))))) (head!12636 s!2326)))))

(declare-fun b!6107896 () Bool)

(declare-fun e!3724768 () Regex!16057)

(declare-fun e!3724769 () Regex!16057)

(assert (=> b!6107896 (= e!3724768 e!3724769)))

(assert (=> b!6107896 (= c!1097391 ((_ is Star!16057) (regTwo!32626 r!7292)))))

(declare-fun b!6107897 () Bool)

(assert (=> b!6107897 (= e!3724769 (Concat!24902 call!505336 (regTwo!32626 r!7292)))))

(declare-fun b!6107898 () Bool)

(assert (=> b!6107898 (= c!1097390 (nullable!6050 (regOne!32626 (regTwo!32626 r!7292))))))

(assert (=> b!6107898 (= e!3724769 e!3724771)))

(declare-fun b!6107899 () Bool)

(declare-fun e!3724767 () Regex!16057)

(assert (=> b!6107899 (= e!3724767 (ite (= (head!12636 s!2326) (c!1096851 (regTwo!32626 r!7292))) EmptyExpr!16057 EmptyLang!16057))))

(declare-fun b!6107900 () Bool)

(assert (=> b!6107900 (= e!3724770 EmptyLang!16057)))

(declare-fun b!6107901 () Bool)

(assert (=> b!6107901 (= e!3724770 e!3724767)))

(declare-fun c!1097392 () Bool)

(assert (=> b!6107901 (= c!1097392 ((_ is ElementMatch!16057) (regTwo!32626 r!7292)))))

(declare-fun b!6107902 () Bool)

(assert (=> b!6107902 (= e!3724768 (Union!16057 call!505335 call!505337))))

(declare-fun b!6107903 () Bool)

(assert (=> b!6107903 (= c!1097393 ((_ is Union!16057) (regTwo!32626 r!7292)))))

(assert (=> b!6107903 (= e!3724767 e!3724768)))

(declare-fun b!6107904 () Bool)

(assert (=> b!6107904 (= e!3724771 (Union!16057 (Concat!24902 call!505335 (regTwo!32626 (regTwo!32626 r!7292))) call!505338))))

(assert (= (and d!1914364 c!1097389) b!6107900))

(assert (= (and d!1914364 (not c!1097389)) b!6107901))

(assert (= (and b!6107901 c!1097392) b!6107899))

(assert (= (and b!6107901 (not c!1097392)) b!6107903))

(assert (= (and b!6107903 c!1097393) b!6107902))

(assert (= (and b!6107903 (not c!1097393)) b!6107896))

(assert (= (and b!6107896 c!1097391) b!6107897))

(assert (= (and b!6107896 (not c!1097391)) b!6107898))

(assert (= (and b!6107898 c!1097390) b!6107904))

(assert (= (and b!6107898 (not c!1097390)) b!6107895))

(assert (= (or b!6107904 b!6107895) bm!505331))

(assert (= (or b!6107897 bm!505331) bm!505330))

(assert (= (or b!6107902 bm!505330) bm!505333))

(assert (= (or b!6107902 b!6107904) bm!505332))

(declare-fun m!6958514 () Bool)

(assert (=> d!1914364 m!6958514))

(assert (=> d!1914364 m!6957510))

(assert (=> bm!505332 m!6957088))

(declare-fun m!6958516 () Bool)

(assert (=> bm!505332 m!6958516))

(assert (=> bm!505333 m!6957088))

(declare-fun m!6958518 () Bool)

(assert (=> bm!505333 m!6958518))

(declare-fun m!6958520 () Bool)

(assert (=> b!6107898 m!6958520))

(assert (=> b!6106818 d!1914364))

(assert (=> b!6106818 d!1913920))

(assert (=> b!6106818 d!1913922))

(declare-fun d!1914368 () Bool)

(assert (=> d!1914368 (= (head!12636 (_2!36339 (get!22188 lt!2329734))) (h!70796 (_2!36339 (get!22188 lt!2329734))))))

(assert (=> b!6106923 d!1914368))

(declare-fun d!1914372 () Bool)

(assert (=> d!1914372 (= (isEmpty!36269 (tail!11720 (t!377923 (unfocusZipperList!1478 zl!343)))) ((_ is Nil!64346) (tail!11720 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(assert (=> b!6107043 d!1914372))

(declare-fun d!1914374 () Bool)

(assert (=> d!1914374 (= (tail!11720 (t!377923 (unfocusZipperList!1478 zl!343))) (t!377923 (t!377923 (unfocusZipperList!1478 zl!343))))))

(assert (=> b!6107043 d!1914374))

(declare-fun d!1914376 () Bool)

(assert (=> d!1914376 (= (nullable!6050 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))) (nullableFct!2014 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))))

(declare-fun bs!1516392 () Bool)

(assert (= bs!1516392 d!1914376))

(declare-fun m!6958532 () Bool)

(assert (=> bs!1516392 m!6958532))

(assert (=> b!6107060 d!1914376))

(declare-fun d!1914378 () Bool)

(assert (not d!1914378))

(assert (=> b!6107110 d!1914378))

(declare-fun d!1914380 () Bool)

(assert (=> d!1914380 (= (isEmpty!36274 (tail!11721 (tail!11721 s!2326))) ((_ is Nil!64348) (tail!11721 (tail!11721 s!2326))))))

(assert (=> b!6106824 d!1914380))

(declare-fun d!1914382 () Bool)

(assert (=> d!1914382 (= (tail!11721 (tail!11721 s!2326)) (t!377925 (tail!11721 s!2326)))))

(assert (=> b!6106824 d!1914382))

(declare-fun b!6107920 () Bool)

(declare-fun e!3724786 () (InoxSet Context!10882))

(declare-fun e!3724785 () (InoxSet Context!10882))

(assert (=> b!6107920 (= e!3724786 e!3724785)))

(declare-fun c!1097400 () Bool)

(assert (=> b!6107920 (= c!1097400 ((_ is Union!16057) (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))

(declare-fun bm!505336 () Bool)

(declare-fun c!1097403 () Bool)

(declare-fun c!1097402 () Bool)

(declare-fun call!505341 () List!64470)

(assert (=> bm!505336 (= call!505341 ($colon$colon!1934 (exprs!5941 (ite c!1097185 (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (Context!10883 call!505161))) (ite (or c!1097402 c!1097403) (regTwo!32626 (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))

(declare-fun b!6107921 () Bool)

(declare-fun e!3724782 () (InoxSet Context!10882))

(declare-fun call!505344 () (InoxSet Context!10882))

(assert (=> b!6107921 (= e!3724782 call!505344)))

(declare-fun bm!505337 () Bool)

(declare-fun call!505342 () (InoxSet Context!10882))

(declare-fun call!505346 () (InoxSet Context!10882))

(assert (=> bm!505337 (= call!505342 call!505346)))

(declare-fun b!6107922 () Bool)

(declare-fun call!505345 () (InoxSet Context!10882))

(assert (=> b!6107922 (= e!3724785 ((_ map or) call!505346 call!505345))))

(declare-fun bm!505338 () Bool)

(assert (=> bm!505338 (= call!505344 call!505342)))

(declare-fun b!6107923 () Bool)

(declare-fun e!3724783 () (InoxSet Context!10882))

(assert (=> b!6107923 (= e!3724783 ((_ map or) call!505345 call!505342))))

(declare-fun e!3724781 () Bool)

(declare-fun b!6107924 () Bool)

(assert (=> b!6107924 (= e!3724781 (nullable!6050 (regOne!32626 (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))

(declare-fun d!1914384 () Bool)

(declare-fun c!1097399 () Bool)

(assert (=> d!1914384 (= c!1097399 (and ((_ is ElementMatch!16057) (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (= (c!1096851 (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (h!70796 s!2326))))))

(assert (=> d!1914384 (= (derivationStepZipperDown!1305 (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))) (ite c!1097185 (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (Context!10883 call!505161)) (h!70796 s!2326)) e!3724786)))

(declare-fun bm!505339 () Bool)

(assert (=> bm!505339 (= call!505345 (derivationStepZipperDown!1305 (ite c!1097400 (regTwo!32627 (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))) (ite c!1097400 (ite c!1097185 (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (Context!10883 call!505161)) (Context!10883 call!505341)) (h!70796 s!2326)))))

(declare-fun b!6107925 () Bool)

(assert (=> b!6107925 (= e!3724786 (store ((as const (Array Context!10882 Bool)) false) (ite c!1097185 (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (Context!10883 call!505161)) true))))

(declare-fun b!6107926 () Bool)

(assert (=> b!6107926 (= c!1097402 e!3724781)))

(declare-fun res!2533847 () Bool)

(assert (=> b!6107926 (=> (not res!2533847) (not e!3724781))))

(assert (=> b!6107926 (= res!2533847 ((_ is Concat!24902) (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))

(assert (=> b!6107926 (= e!3724785 e!3724783)))

(declare-fun c!1097401 () Bool)

(declare-fun b!6107927 () Bool)

(assert (=> b!6107927 (= c!1097401 ((_ is Star!16057) (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))

(declare-fun e!3724784 () (InoxSet Context!10882))

(assert (=> b!6107927 (= e!3724782 e!3724784)))

(declare-fun call!505343 () List!64470)

(declare-fun bm!505340 () Bool)

(assert (=> bm!505340 (= call!505346 (derivationStepZipperDown!1305 (ite c!1097400 (regOne!32627 (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097402 (regTwo!32626 (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097403 (regOne!32626 (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))) (ite (or c!1097400 c!1097402) (ite c!1097185 (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (Context!10883 call!505161)) (Context!10883 call!505343)) (h!70796 s!2326)))))

(declare-fun bm!505341 () Bool)

(assert (=> bm!505341 (= call!505343 call!505341)))

(declare-fun b!6107928 () Bool)

(assert (=> b!6107928 (= e!3724784 call!505344)))

(declare-fun b!6107929 () Bool)

(assert (=> b!6107929 (= e!3724783 e!3724782)))

(assert (=> b!6107929 (= c!1097403 ((_ is Concat!24902) (ite c!1097185 (regTwo!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))

(declare-fun b!6107930 () Bool)

(assert (=> b!6107930 (= e!3724784 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1914384 c!1097399) b!6107925))

(assert (= (and d!1914384 (not c!1097399)) b!6107920))

(assert (= (and b!6107920 c!1097400) b!6107922))

(assert (= (and b!6107920 (not c!1097400)) b!6107926))

(assert (= (and b!6107926 res!2533847) b!6107924))

(assert (= (and b!6107926 c!1097402) b!6107923))

(assert (= (and b!6107926 (not c!1097402)) b!6107929))

(assert (= (and b!6107929 c!1097403) b!6107921))

(assert (= (and b!6107929 (not c!1097403)) b!6107927))

(assert (= (and b!6107927 c!1097401) b!6107928))

(assert (= (and b!6107927 (not c!1097401)) b!6107930))

(assert (= (or b!6107921 b!6107928) bm!505341))

(assert (= (or b!6107921 b!6107928) bm!505338))

(assert (= (or b!6107923 bm!505341) bm!505336))

(assert (= (or b!6107923 bm!505338) bm!505337))

(assert (= (or b!6107922 b!6107923) bm!505339))

(assert (= (or b!6107922 bm!505337) bm!505340))

(declare-fun m!6958534 () Bool)

(assert (=> b!6107924 m!6958534))

(declare-fun m!6958536 () Bool)

(assert (=> bm!505336 m!6958536))

(declare-fun m!6958538 () Bool)

(assert (=> bm!505339 m!6958538))

(declare-fun m!6958540 () Bool)

(assert (=> b!6107925 m!6958540))

(declare-fun m!6958542 () Bool)

(assert (=> bm!505340 m!6958542))

(assert (=> bm!505159 d!1914384))

(declare-fun b!6107931 () Bool)

(declare-fun e!3724792 () Bool)

(declare-fun e!3724793 () Bool)

(assert (=> b!6107931 (= e!3724792 e!3724793)))

(declare-fun c!1097404 () Bool)

(assert (=> b!6107931 (= c!1097404 ((_ is Union!16057) (h!70794 (exprs!5941 setElem!41260))))))

(declare-fun b!6107932 () Bool)

(declare-fun e!3724791 () Bool)

(declare-fun call!505348 () Bool)

(assert (=> b!6107932 (= e!3724791 call!505348)))

(declare-fun b!6107933 () Bool)

(declare-fun e!3724789 () Bool)

(assert (=> b!6107933 (= e!3724789 e!3724792)))

(declare-fun c!1097405 () Bool)

(assert (=> b!6107933 (= c!1097405 ((_ is Star!16057) (h!70794 (exprs!5941 setElem!41260))))))

(declare-fun bm!505342 () Bool)

(declare-fun call!505347 () Bool)

(assert (=> bm!505342 (= call!505348 call!505347)))

(declare-fun b!6107934 () Bool)

(declare-fun res!2533850 () Bool)

(declare-fun e!3724788 () Bool)

(assert (=> b!6107934 (=> res!2533850 e!3724788)))

(assert (=> b!6107934 (= res!2533850 (not ((_ is Concat!24902) (h!70794 (exprs!5941 setElem!41260)))))))

(assert (=> b!6107934 (= e!3724793 e!3724788)))

(declare-fun b!6107935 () Bool)

(declare-fun e!3724790 () Bool)

(assert (=> b!6107935 (= e!3724790 call!505348)))

(declare-fun bm!505343 () Bool)

(assert (=> bm!505343 (= call!505347 (validRegex!7793 (ite c!1097405 (reg!16386 (h!70794 (exprs!5941 setElem!41260))) (ite c!1097404 (regTwo!32627 (h!70794 (exprs!5941 setElem!41260))) (regTwo!32626 (h!70794 (exprs!5941 setElem!41260)))))))))

(declare-fun b!6107936 () Bool)

(declare-fun e!3724787 () Bool)

(assert (=> b!6107936 (= e!3724792 e!3724787)))

(declare-fun res!2533851 () Bool)

(assert (=> b!6107936 (= res!2533851 (not (nullable!6050 (reg!16386 (h!70794 (exprs!5941 setElem!41260))))))))

(assert (=> b!6107936 (=> (not res!2533851) (not e!3724787))))

(declare-fun b!6107937 () Bool)

(assert (=> b!6107937 (= e!3724788 e!3724790)))

(declare-fun res!2533852 () Bool)

(assert (=> b!6107937 (=> (not res!2533852) (not e!3724790))))

(declare-fun call!505349 () Bool)

(assert (=> b!6107937 (= res!2533852 call!505349)))

(declare-fun b!6107938 () Bool)

(assert (=> b!6107938 (= e!3724787 call!505347)))

(declare-fun b!6107939 () Bool)

(declare-fun res!2533848 () Bool)

(assert (=> b!6107939 (=> (not res!2533848) (not e!3724791))))

(assert (=> b!6107939 (= res!2533848 call!505349)))

(assert (=> b!6107939 (= e!3724793 e!3724791)))

(declare-fun bm!505344 () Bool)

(assert (=> bm!505344 (= call!505349 (validRegex!7793 (ite c!1097404 (regOne!32627 (h!70794 (exprs!5941 setElem!41260))) (regOne!32626 (h!70794 (exprs!5941 setElem!41260))))))))

(declare-fun d!1914386 () Bool)

(declare-fun res!2533849 () Bool)

(assert (=> d!1914386 (=> res!2533849 e!3724789)))

(assert (=> d!1914386 (= res!2533849 ((_ is ElementMatch!16057) (h!70794 (exprs!5941 setElem!41260))))))

(assert (=> d!1914386 (= (validRegex!7793 (h!70794 (exprs!5941 setElem!41260))) e!3724789)))

(assert (= (and d!1914386 (not res!2533849)) b!6107933))

(assert (= (and b!6107933 c!1097405) b!6107936))

(assert (= (and b!6107933 (not c!1097405)) b!6107931))

(assert (= (and b!6107936 res!2533851) b!6107938))

(assert (= (and b!6107931 c!1097404) b!6107939))

(assert (= (and b!6107931 (not c!1097404)) b!6107934))

(assert (= (and b!6107939 res!2533848) b!6107932))

(assert (= (and b!6107934 (not res!2533850)) b!6107937))

(assert (= (and b!6107937 res!2533852) b!6107935))

(assert (= (or b!6107932 b!6107935) bm!505342))

(assert (= (or b!6107939 b!6107937) bm!505344))

(assert (= (or b!6107938 bm!505342) bm!505343))

(declare-fun m!6958544 () Bool)

(assert (=> bm!505343 m!6958544))

(declare-fun m!6958546 () Bool)

(assert (=> b!6107936 m!6958546))

(declare-fun m!6958548 () Bool)

(assert (=> bm!505344 m!6958548))

(assert (=> bs!1516224 d!1914386))

(declare-fun call!505353 () Regex!16057)

(declare-fun e!3724798 () Regex!16057)

(declare-fun b!6107940 () Bool)

(assert (=> b!6107940 (= e!3724798 (Union!16057 (Concat!24902 call!505353 (regTwo!32626 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292)))) EmptyLang!16057))))

(declare-fun d!1914388 () Bool)

(declare-fun lt!2329844 () Regex!16057)

(assert (=> d!1914388 (validRegex!7793 lt!2329844)))

(declare-fun e!3724797 () Regex!16057)

(assert (=> d!1914388 (= lt!2329844 e!3724797)))

(declare-fun c!1097406 () Bool)

(assert (=> d!1914388 (= c!1097406 (or ((_ is EmptyExpr!16057) (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292))) ((_ is EmptyLang!16057) (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292)))))))

(assert (=> d!1914388 (validRegex!7793 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292)))))

(assert (=> d!1914388 (= (derivativeStep!4778 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292)) (head!12636 s!2326)) lt!2329844)))

(declare-fun bm!505345 () Bool)

(declare-fun call!505351 () Regex!16057)

(declare-fun call!505352 () Regex!16057)

(assert (=> bm!505345 (= call!505351 call!505352)))

(declare-fun bm!505346 () Bool)

(assert (=> bm!505346 (= call!505353 call!505351)))

(declare-fun c!1097410 () Bool)

(declare-fun call!505350 () Regex!16057)

(declare-fun bm!505347 () Bool)

(assert (=> bm!505347 (= call!505350 (derivativeStep!4778 (ite c!1097410 (regOne!32627 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292)))) (head!12636 s!2326)))))

(declare-fun c!1097408 () Bool)

(declare-fun bm!505348 () Bool)

(declare-fun c!1097407 () Bool)

(assert (=> bm!505348 (= call!505352 (derivativeStep!4778 (ite c!1097410 (regTwo!32627 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097408 (reg!16386 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097407 (regTwo!32626 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292)))))) (head!12636 s!2326)))))

(declare-fun b!6107941 () Bool)

(declare-fun e!3724795 () Regex!16057)

(declare-fun e!3724796 () Regex!16057)

(assert (=> b!6107941 (= e!3724795 e!3724796)))

(assert (=> b!6107941 (= c!1097408 ((_ is Star!16057) (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292))))))

(declare-fun b!6107942 () Bool)

(assert (=> b!6107942 (= e!3724796 (Concat!24902 call!505351 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292))))))

(declare-fun b!6107943 () Bool)

(assert (=> b!6107943 (= c!1097407 (nullable!6050 (regOne!32626 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292)))))))

(assert (=> b!6107943 (= e!3724796 e!3724798)))

(declare-fun b!6107944 () Bool)

(declare-fun e!3724794 () Regex!16057)

(assert (=> b!6107944 (= e!3724794 (ite (= (head!12636 s!2326) (c!1096851 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292)))) EmptyExpr!16057 EmptyLang!16057))))

(declare-fun b!6107945 () Bool)

(assert (=> b!6107945 (= e!3724797 EmptyLang!16057)))

(declare-fun b!6107946 () Bool)

(assert (=> b!6107946 (= e!3724797 e!3724794)))

(declare-fun c!1097409 () Bool)

(assert (=> b!6107946 (= c!1097409 ((_ is ElementMatch!16057) (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292))))))

(declare-fun b!6107947 () Bool)

(assert (=> b!6107947 (= e!3724795 (Union!16057 call!505350 call!505352))))

(declare-fun b!6107948 () Bool)

(assert (=> b!6107948 (= c!1097410 ((_ is Union!16057) (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292))))))

(assert (=> b!6107948 (= e!3724794 e!3724795)))

(declare-fun b!6107949 () Bool)

(assert (=> b!6107949 (= e!3724798 (Union!16057 (Concat!24902 call!505350 (regTwo!32626 (ite c!1097131 (regOne!32627 r!7292) (regOne!32626 r!7292)))) call!505353))))

(assert (= (and d!1914388 c!1097406) b!6107945))

(assert (= (and d!1914388 (not c!1097406)) b!6107946))

(assert (= (and b!6107946 c!1097409) b!6107944))

(assert (= (and b!6107946 (not c!1097409)) b!6107948))

(assert (= (and b!6107948 c!1097410) b!6107947))

(assert (= (and b!6107948 (not c!1097410)) b!6107941))

(assert (= (and b!6107941 c!1097408) b!6107942))

(assert (= (and b!6107941 (not c!1097408)) b!6107943))

(assert (= (and b!6107943 c!1097407) b!6107949))

(assert (= (and b!6107943 (not c!1097407)) b!6107940))

(assert (= (or b!6107949 b!6107940) bm!505346))

(assert (= (or b!6107942 bm!505346) bm!505345))

(assert (= (or b!6107947 bm!505345) bm!505348))

(assert (= (or b!6107947 b!6107949) bm!505347))

(declare-fun m!6958550 () Bool)

(assert (=> d!1914388 m!6958550))

(declare-fun m!6958552 () Bool)

(assert (=> d!1914388 m!6958552))

(assert (=> bm!505347 m!6957088))

(declare-fun m!6958554 () Bool)

(assert (=> bm!505347 m!6958554))

(assert (=> bm!505348 m!6957088))

(declare-fun m!6958556 () Bool)

(assert (=> bm!505348 m!6958556))

(declare-fun m!6958558 () Bool)

(assert (=> b!6107943 m!6958558))

(assert (=> bm!505121 d!1914388))

(declare-fun d!1914390 () Bool)

(assert (=> d!1914390 true))

(assert (=> d!1914390 true))

(declare-fun res!2533853 () Bool)

(assert (=> d!1914390 (= (choose!45394 lambda!332716) res!2533853)))

(assert (=> d!1914038 d!1914390))

(declare-fun d!1914392 () Bool)

(declare-fun c!1097419 () Bool)

(assert (=> d!1914392 (= c!1097419 ((_ is Nil!64348) lt!2329792))))

(declare-fun e!3724811 () (InoxSet C!32384))

(assert (=> d!1914392 (= (content!11941 lt!2329792) e!3724811)))

(declare-fun b!6107970 () Bool)

(assert (=> b!6107970 (= e!3724811 ((as const (Array C!32384 Bool)) false))))

(declare-fun b!6107971 () Bool)

(assert (=> b!6107971 (= e!3724811 ((_ map or) (store ((as const (Array C!32384 Bool)) false) (h!70796 lt!2329792) true) (content!11941 (t!377925 lt!2329792))))))

(assert (= (and d!1914392 c!1097419) b!6107970))

(assert (= (and d!1914392 (not c!1097419)) b!6107971))

(declare-fun m!6958572 () Bool)

(assert (=> b!6107971 m!6958572))

(declare-fun m!6958574 () Bool)

(assert (=> b!6107971 m!6958574))

(assert (=> d!1913940 d!1914392))

(declare-fun d!1914398 () Bool)

(declare-fun c!1097420 () Bool)

(assert (=> d!1914398 (= c!1097420 ((_ is Nil!64348) (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))))))

(declare-fun e!3724812 () (InoxSet C!32384))

(assert (=> d!1914398 (= (content!11941 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) e!3724812)))

(declare-fun b!6107972 () Bool)

(assert (=> b!6107972 (= e!3724812 ((as const (Array C!32384 Bool)) false))))

(declare-fun b!6107973 () Bool)

(assert (=> b!6107973 (= e!3724812 ((_ map or) (store ((as const (Array C!32384 Bool)) false) (h!70796 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) true) (content!11941 (t!377925 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))))))))

(assert (= (and d!1914398 c!1097420) b!6107972))

(assert (= (and d!1914398 (not c!1097420)) b!6107973))

(declare-fun m!6958576 () Bool)

(assert (=> b!6107973 m!6958576))

(declare-fun m!6958578 () Bool)

(assert (=> b!6107973 m!6958578))

(assert (=> d!1913940 d!1914398))

(declare-fun d!1914400 () Bool)

(declare-fun c!1097421 () Bool)

(assert (=> d!1914400 (= c!1097421 ((_ is Nil!64348) (t!377925 s!2326)))))

(declare-fun e!3724813 () (InoxSet C!32384))

(assert (=> d!1914400 (= (content!11941 (t!377925 s!2326)) e!3724813)))

(declare-fun b!6107974 () Bool)

(assert (=> b!6107974 (= e!3724813 ((as const (Array C!32384 Bool)) false))))

(declare-fun b!6107975 () Bool)

(assert (=> b!6107975 (= e!3724813 ((_ map or) (store ((as const (Array C!32384 Bool)) false) (h!70796 (t!377925 s!2326)) true) (content!11941 (t!377925 (t!377925 s!2326)))))))

(assert (= (and d!1914400 c!1097421) b!6107974))

(assert (= (and d!1914400 (not c!1097421)) b!6107975))

(declare-fun m!6958580 () Bool)

(assert (=> b!6107975 m!6958580))

(declare-fun m!6958582 () Bool)

(assert (=> b!6107975 m!6958582))

(assert (=> d!1913940 d!1914400))

(declare-fun d!1914402 () Bool)

(assert (=> d!1914402 (= (nullable!6050 (reg!16386 lt!2329714)) (nullableFct!2014 (reg!16386 lt!2329714)))))

(declare-fun bs!1516426 () Bool)

(assert (= bs!1516426 d!1914402))

(declare-fun m!6958584 () Bool)

(assert (=> bs!1516426 m!6958584))

(assert (=> b!6106959 d!1914402))

(declare-fun b!6107976 () Bool)

(declare-fun e!3724819 () Bool)

(declare-fun e!3724820 () Bool)

(assert (=> b!6107976 (= e!3724819 e!3724820)))

(declare-fun c!1097422 () Bool)

(assert (=> b!6107976 (= c!1097422 ((_ is Union!16057) (ite c!1097182 (regOne!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regOne!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))))))

(declare-fun b!6107977 () Bool)

(declare-fun e!3724818 () Bool)

(declare-fun call!505358 () Bool)

(assert (=> b!6107977 (= e!3724818 call!505358)))

(declare-fun b!6107978 () Bool)

(declare-fun e!3724816 () Bool)

(assert (=> b!6107978 (= e!3724816 e!3724819)))

(declare-fun c!1097423 () Bool)

(assert (=> b!6107978 (= c!1097423 ((_ is Star!16057) (ite c!1097182 (regOne!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regOne!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))))))

(declare-fun bm!505352 () Bool)

(declare-fun call!505357 () Bool)

(assert (=> bm!505352 (= call!505358 call!505357)))

(declare-fun b!6107979 () Bool)

(declare-fun res!2533860 () Bool)

(declare-fun e!3724815 () Bool)

(assert (=> b!6107979 (=> res!2533860 e!3724815)))

(assert (=> b!6107979 (= res!2533860 (not ((_ is Concat!24902) (ite c!1097182 (regOne!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regOne!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))))))

(assert (=> b!6107979 (= e!3724820 e!3724815)))

(declare-fun b!6107980 () Bool)

(declare-fun e!3724817 () Bool)

(assert (=> b!6107980 (= e!3724817 call!505358)))

(declare-fun bm!505353 () Bool)

(assert (=> bm!505353 (= call!505357 (validRegex!7793 (ite c!1097423 (reg!16386 (ite c!1097182 (regOne!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regOne!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))) (ite c!1097422 (regTwo!32627 (ite c!1097182 (regOne!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regOne!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))) (regTwo!32626 (ite c!1097182 (regOne!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regOne!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))))))))

(declare-fun b!6107981 () Bool)

(declare-fun e!3724814 () Bool)

(assert (=> b!6107981 (= e!3724819 e!3724814)))

(declare-fun res!2533861 () Bool)

(assert (=> b!6107981 (= res!2533861 (not (nullable!6050 (reg!16386 (ite c!1097182 (regOne!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regOne!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))))))))

(assert (=> b!6107981 (=> (not res!2533861) (not e!3724814))))

(declare-fun b!6107982 () Bool)

(assert (=> b!6107982 (= e!3724815 e!3724817)))

(declare-fun res!2533862 () Bool)

(assert (=> b!6107982 (=> (not res!2533862) (not e!3724817))))

(declare-fun call!505359 () Bool)

(assert (=> b!6107982 (= res!2533862 call!505359)))

(declare-fun b!6107983 () Bool)

(assert (=> b!6107983 (= e!3724814 call!505357)))

(declare-fun b!6107984 () Bool)

(declare-fun res!2533858 () Bool)

(assert (=> b!6107984 (=> (not res!2533858) (not e!3724818))))

(assert (=> b!6107984 (= res!2533858 call!505359)))

(assert (=> b!6107984 (= e!3724820 e!3724818)))

(declare-fun bm!505354 () Bool)

(assert (=> bm!505354 (= call!505359 (validRegex!7793 (ite c!1097422 (regOne!32627 (ite c!1097182 (regOne!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regOne!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))) (regOne!32626 (ite c!1097182 (regOne!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regOne!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))))))))

(declare-fun d!1914404 () Bool)

(declare-fun res!2533859 () Bool)

(assert (=> d!1914404 (=> res!2533859 e!3724816)))

(assert (=> d!1914404 (= res!2533859 ((_ is ElementMatch!16057) (ite c!1097182 (regOne!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regOne!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))))))

(assert (=> d!1914404 (= (validRegex!7793 (ite c!1097182 (regOne!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regOne!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))) e!3724816)))

(assert (= (and d!1914404 (not res!2533859)) b!6107978))

(assert (= (and b!6107978 c!1097423) b!6107981))

(assert (= (and b!6107978 (not c!1097423)) b!6107976))

(assert (= (and b!6107981 res!2533861) b!6107983))

(assert (= (and b!6107976 c!1097422) b!6107984))

(assert (= (and b!6107976 (not c!1097422)) b!6107979))

(assert (= (and b!6107984 res!2533858) b!6107977))

(assert (= (and b!6107979 (not res!2533860)) b!6107982))

(assert (= (and b!6107982 res!2533862) b!6107980))

(assert (= (or b!6107977 b!6107980) bm!505352))

(assert (= (or b!6107984 b!6107982) bm!505354))

(assert (= (or b!6107983 bm!505352) bm!505353))

(declare-fun m!6958586 () Bool)

(assert (=> bm!505353 m!6958586))

(declare-fun m!6958588 () Bool)

(assert (=> b!6107981 m!6958588))

(declare-fun m!6958590 () Bool)

(assert (=> bm!505354 m!6958590))

(assert (=> bm!505155 d!1914404))

(declare-fun d!1914406 () Bool)

(assert (=> d!1914406 (= (nullable!6050 (regOne!32626 r!7292)) (nullableFct!2014 (regOne!32626 r!7292)))))

(declare-fun bs!1516436 () Bool)

(assert (= bs!1516436 d!1914406))

(declare-fun m!6958592 () Bool)

(assert (=> bs!1516436 m!6958592))

(assert (=> b!6106859 d!1914406))

(declare-fun b!6107985 () Bool)

(declare-fun e!3724826 () (InoxSet Context!10882))

(declare-fun e!3724825 () (InoxSet Context!10882))

(assert (=> b!6107985 (= e!3724826 e!3724825)))

(declare-fun c!1097425 () Bool)

(assert (=> b!6107985 (= c!1097425 ((_ is Union!16057) (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))))

(declare-fun bm!505355 () Bool)

(declare-fun c!1097428 () Bool)

(declare-fun c!1097427 () Bool)

(declare-fun call!505360 () List!64470)

(assert (=> bm!505355 (= call!505360 ($colon$colon!1934 (exprs!5941 (ite (or c!1097185 c!1097187) (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (Context!10883 call!505163))) (ite (or c!1097427 c!1097428) (regTwo!32626 (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))))

(declare-fun b!6107986 () Bool)

(declare-fun e!3724822 () (InoxSet Context!10882))

(declare-fun call!505363 () (InoxSet Context!10882))

(assert (=> b!6107986 (= e!3724822 call!505363)))

(declare-fun bm!505356 () Bool)

(declare-fun call!505361 () (InoxSet Context!10882))

(declare-fun call!505365 () (InoxSet Context!10882))

(assert (=> bm!505356 (= call!505361 call!505365)))

(declare-fun b!6107987 () Bool)

(declare-fun call!505364 () (InoxSet Context!10882))

(assert (=> b!6107987 (= e!3724825 ((_ map or) call!505365 call!505364))))

(declare-fun bm!505357 () Bool)

(assert (=> bm!505357 (= call!505363 call!505361)))

(declare-fun b!6107988 () Bool)

(declare-fun e!3724823 () (InoxSet Context!10882))

(assert (=> b!6107988 (= e!3724823 ((_ map or) call!505364 call!505361))))

(declare-fun b!6107989 () Bool)

(declare-fun e!3724821 () Bool)

(assert (=> b!6107989 (= e!3724821 (nullable!6050 (regOne!32626 (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))))

(declare-fun d!1914408 () Bool)

(declare-fun c!1097424 () Bool)

(assert (=> d!1914408 (= c!1097424 (and ((_ is ElementMatch!16057) (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (= (c!1096851 (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (h!70796 s!2326))))))

(assert (=> d!1914408 (= (derivationStepZipperDown!1305 (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))) (ite (or c!1097185 c!1097187) (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (Context!10883 call!505163)) (h!70796 s!2326)) e!3724826)))

(declare-fun bm!505358 () Bool)

(assert (=> bm!505358 (= call!505364 (derivationStepZipperDown!1305 (ite c!1097425 (regTwo!32627 (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (regOne!32626 (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))) (ite c!1097425 (ite (or c!1097185 c!1097187) (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (Context!10883 call!505163)) (Context!10883 call!505360)) (h!70796 s!2326)))))

(declare-fun b!6107990 () Bool)

(assert (=> b!6107990 (= e!3724826 (store ((as const (Array Context!10882 Bool)) false) (ite (or c!1097185 c!1097187) (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (Context!10883 call!505163)) true))))

(declare-fun b!6107991 () Bool)

(assert (=> b!6107991 (= c!1097427 e!3724821)))

(declare-fun res!2533863 () Bool)

(assert (=> b!6107991 (=> (not res!2533863) (not e!3724821))))

(assert (=> b!6107991 (= res!2533863 ((_ is Concat!24902) (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))))

(assert (=> b!6107991 (= e!3724825 e!3724823)))

(declare-fun c!1097426 () Bool)

(declare-fun b!6107992 () Bool)

(assert (=> b!6107992 (= c!1097426 ((_ is Star!16057) (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))))

(declare-fun e!3724824 () (InoxSet Context!10882))

(assert (=> b!6107992 (= e!3724822 e!3724824)))

(declare-fun bm!505359 () Bool)

(declare-fun call!505362 () List!64470)

(assert (=> bm!505359 (= call!505365 (derivationStepZipperDown!1305 (ite c!1097425 (regOne!32627 (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (ite c!1097427 (regTwo!32626 (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (ite c!1097428 (regOne!32626 (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (reg!16386 (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))) (ite (or c!1097425 c!1097427) (ite (or c!1097185 c!1097187) (ite c!1097012 lt!2329690 (Context!10883 call!505042)) (Context!10883 call!505163)) (Context!10883 call!505362)) (h!70796 s!2326)))))

(declare-fun bm!505360 () Bool)

(assert (=> bm!505360 (= call!505362 call!505360)))

(declare-fun b!6107993 () Bool)

(assert (=> b!6107993 (= e!3724824 call!505363)))

(declare-fun b!6107994 () Bool)

(assert (=> b!6107994 (= e!3724823 e!3724822)))

(assert (=> b!6107994 (= c!1097428 ((_ is Concat!24902) (ite c!1097185 (regOne!32627 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097187 (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097188 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (reg!16386 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))))

(declare-fun b!6107995 () Bool)

(assert (=> b!6107995 (= e!3724824 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1914408 c!1097424) b!6107990))

(assert (= (and d!1914408 (not c!1097424)) b!6107985))

(assert (= (and b!6107985 c!1097425) b!6107987))

(assert (= (and b!6107985 (not c!1097425)) b!6107991))

(assert (= (and b!6107991 res!2533863) b!6107989))

(assert (= (and b!6107991 c!1097427) b!6107988))

(assert (= (and b!6107991 (not c!1097427)) b!6107994))

(assert (= (and b!6107994 c!1097428) b!6107986))

(assert (= (and b!6107994 (not c!1097428)) b!6107992))

(assert (= (and b!6107992 c!1097426) b!6107993))

(assert (= (and b!6107992 (not c!1097426)) b!6107995))

(assert (= (or b!6107986 b!6107993) bm!505360))

(assert (= (or b!6107986 b!6107993) bm!505357))

(assert (= (or b!6107988 bm!505360) bm!505355))

(assert (= (or b!6107988 bm!505357) bm!505356))

(assert (= (or b!6107987 b!6107988) bm!505358))

(assert (= (or b!6107987 bm!505356) bm!505359))

(declare-fun m!6958594 () Bool)

(assert (=> b!6107989 m!6958594))

(declare-fun m!6958596 () Bool)

(assert (=> bm!505355 m!6958596))

(declare-fun m!6958598 () Bool)

(assert (=> bm!505358 m!6958598))

(declare-fun m!6958600 () Bool)

(assert (=> b!6107990 m!6958600))

(declare-fun m!6958602 () Bool)

(assert (=> bm!505359 m!6958602))

(assert (=> bm!505160 d!1914408))

(declare-fun d!1914410 () Bool)

(declare-fun c!1097429 () Bool)

(assert (=> d!1914410 (= c!1097429 ((_ is Nil!64347) res!2533515))))

(declare-fun e!3724827 () (InoxSet Context!10882))

(assert (=> d!1914410 (= (content!11939 res!2533515) e!3724827)))

(declare-fun b!6107996 () Bool)

(assert (=> b!6107996 (= e!3724827 ((as const (Array Context!10882 Bool)) false))))

(declare-fun b!6107997 () Bool)

(assert (=> b!6107997 (= e!3724827 ((_ map or) (store ((as const (Array Context!10882 Bool)) false) (h!70795 res!2533515) true) (content!11939 (t!377924 res!2533515))))))

(assert (= (and d!1914410 c!1097429) b!6107996))

(assert (= (and d!1914410 (not c!1097429)) b!6107997))

(declare-fun m!6958604 () Bool)

(assert (=> b!6107997 m!6958604))

(declare-fun m!6958606 () Bool)

(assert (=> b!6107997 m!6958606))

(assert (=> b!6107019 d!1914410))

(declare-fun d!1914412 () Bool)

(declare-fun c!1097430 () Bool)

(assert (=> d!1914412 (= c!1097430 ((_ is Nil!64348) lt!2329806))))

(declare-fun e!3724828 () (InoxSet C!32384))

(assert (=> d!1914412 (= (content!11941 lt!2329806) e!3724828)))

(declare-fun b!6107998 () Bool)

(assert (=> b!6107998 (= e!3724828 ((as const (Array C!32384 Bool)) false))))

(declare-fun b!6107999 () Bool)

(assert (=> b!6107999 (= e!3724828 ((_ map or) (store ((as const (Array C!32384 Bool)) false) (h!70796 lt!2329806) true) (content!11941 (t!377925 lt!2329806))))))

(assert (= (and d!1914412 c!1097430) b!6107998))

(assert (= (and d!1914412 (not c!1097430)) b!6107999))

(declare-fun m!6958608 () Bool)

(assert (=> b!6107999 m!6958608))

(declare-fun m!6958610 () Bool)

(assert (=> b!6107999 m!6958610))

(assert (=> d!1914050 d!1914412))

(declare-fun d!1914414 () Bool)

(declare-fun c!1097431 () Bool)

(assert (=> d!1914414 (= c!1097431 ((_ is Nil!64348) (_1!36339 (get!22188 lt!2329734))))))

(declare-fun e!3724829 () (InoxSet C!32384))

(assert (=> d!1914414 (= (content!11941 (_1!36339 (get!22188 lt!2329734))) e!3724829)))

(declare-fun b!6108000 () Bool)

(assert (=> b!6108000 (= e!3724829 ((as const (Array C!32384 Bool)) false))))

(declare-fun b!6108001 () Bool)

(assert (=> b!6108001 (= e!3724829 ((_ map or) (store ((as const (Array C!32384 Bool)) false) (h!70796 (_1!36339 (get!22188 lt!2329734))) true) (content!11941 (t!377925 (_1!36339 (get!22188 lt!2329734))))))))

(assert (= (and d!1914414 c!1097431) b!6108000))

(assert (= (and d!1914414 (not c!1097431)) b!6108001))

(declare-fun m!6958612 () Bool)

(assert (=> b!6108001 m!6958612))

(declare-fun m!6958614 () Bool)

(assert (=> b!6108001 m!6958614))

(assert (=> d!1914050 d!1914414))

(declare-fun d!1914416 () Bool)

(declare-fun c!1097432 () Bool)

(assert (=> d!1914416 (= c!1097432 ((_ is Nil!64348) (_2!36339 (get!22188 lt!2329734))))))

(declare-fun e!3724830 () (InoxSet C!32384))

(assert (=> d!1914416 (= (content!11941 (_2!36339 (get!22188 lt!2329734))) e!3724830)))

(declare-fun b!6108002 () Bool)

(assert (=> b!6108002 (= e!3724830 ((as const (Array C!32384 Bool)) false))))

(declare-fun b!6108003 () Bool)

(assert (=> b!6108003 (= e!3724830 ((_ map or) (store ((as const (Array C!32384 Bool)) false) (h!70796 (_2!36339 (get!22188 lt!2329734))) true) (content!11941 (t!377925 (_2!36339 (get!22188 lt!2329734))))))))

(assert (= (and d!1914416 c!1097432) b!6108002))

(assert (= (and d!1914416 (not c!1097432)) b!6108003))

(declare-fun m!6958616 () Bool)

(assert (=> b!6108003 m!6958616))

(declare-fun m!6958618 () Bool)

(assert (=> b!6108003 m!6958618))

(assert (=> d!1914050 d!1914416))

(assert (=> bm!505109 d!1913924))

(declare-fun d!1914418 () Bool)

(assert (=> d!1914418 (= ($colon$colon!1934 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))) (ite (or c!1097180 c!1097181) (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (h!70794 (exprs!5941 lt!2329690)))) (Cons!64346 (ite (or c!1097180 c!1097181) (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (h!70794 (exprs!5941 lt!2329690))) (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690))))))))

(assert (=> bm!505147 d!1914418))

(declare-fun d!1914420 () Bool)

(assert (=> d!1914420 (= (nullable!6050 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))) (nullableFct!2014 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))))

(declare-fun bs!1516460 () Bool)

(assert (= bs!1516460 d!1914420))

(declare-fun m!6958620 () Bool)

(assert (=> bs!1516460 m!6958620))

(assert (=> b!6106950 d!1914420))

(declare-fun d!1914422 () Bool)

(assert (=> d!1914422 (= (nullable!6050 (regTwo!32626 r!7292)) (nullableFct!2014 (regTwo!32626 r!7292)))))

(declare-fun bs!1516461 () Bool)

(assert (= bs!1516461 d!1914422))

(declare-fun m!6958622 () Bool)

(assert (=> bs!1516461 m!6958622))

(assert (=> b!6106931 d!1914422))

(declare-fun b!6108004 () Bool)

(declare-fun e!3724836 () Bool)

(declare-fun e!3724837 () Bool)

(assert (=> b!6108004 (= e!3724836 e!3724837)))

(declare-fun c!1097433 () Bool)

(assert (=> b!6108004 (= c!1097433 ((_ is Union!16057) (ite c!1097153 (regOne!32627 lt!2329714) (regOne!32626 lt!2329714))))))

(declare-fun b!6108005 () Bool)

(declare-fun e!3724835 () Bool)

(declare-fun call!505367 () Bool)

(assert (=> b!6108005 (= e!3724835 call!505367)))

(declare-fun b!6108006 () Bool)

(declare-fun e!3724833 () Bool)

(assert (=> b!6108006 (= e!3724833 e!3724836)))

(declare-fun c!1097434 () Bool)

(assert (=> b!6108006 (= c!1097434 ((_ is Star!16057) (ite c!1097153 (regOne!32627 lt!2329714) (regOne!32626 lt!2329714))))))

(declare-fun bm!505361 () Bool)

(declare-fun call!505366 () Bool)

(assert (=> bm!505361 (= call!505367 call!505366)))

(declare-fun b!6108007 () Bool)

(declare-fun res!2533866 () Bool)

(declare-fun e!3724832 () Bool)

(assert (=> b!6108007 (=> res!2533866 e!3724832)))

(assert (=> b!6108007 (= res!2533866 (not ((_ is Concat!24902) (ite c!1097153 (regOne!32627 lt!2329714) (regOne!32626 lt!2329714)))))))

(assert (=> b!6108007 (= e!3724837 e!3724832)))

(declare-fun b!6108008 () Bool)

(declare-fun e!3724834 () Bool)

(assert (=> b!6108008 (= e!3724834 call!505367)))

(declare-fun bm!505362 () Bool)

(assert (=> bm!505362 (= call!505366 (validRegex!7793 (ite c!1097434 (reg!16386 (ite c!1097153 (regOne!32627 lt!2329714) (regOne!32626 lt!2329714))) (ite c!1097433 (regTwo!32627 (ite c!1097153 (regOne!32627 lt!2329714) (regOne!32626 lt!2329714))) (regTwo!32626 (ite c!1097153 (regOne!32627 lt!2329714) (regOne!32626 lt!2329714)))))))))

(declare-fun b!6108009 () Bool)

(declare-fun e!3724831 () Bool)

(assert (=> b!6108009 (= e!3724836 e!3724831)))

(declare-fun res!2533867 () Bool)

(assert (=> b!6108009 (= res!2533867 (not (nullable!6050 (reg!16386 (ite c!1097153 (regOne!32627 lt!2329714) (regOne!32626 lt!2329714))))))))

(assert (=> b!6108009 (=> (not res!2533867) (not e!3724831))))

(declare-fun b!6108010 () Bool)

(assert (=> b!6108010 (= e!3724832 e!3724834)))

(declare-fun res!2533868 () Bool)

(assert (=> b!6108010 (=> (not res!2533868) (not e!3724834))))

(declare-fun call!505368 () Bool)

(assert (=> b!6108010 (= res!2533868 call!505368)))

(declare-fun b!6108011 () Bool)

(assert (=> b!6108011 (= e!3724831 call!505366)))

(declare-fun b!6108012 () Bool)

(declare-fun res!2533864 () Bool)

(assert (=> b!6108012 (=> (not res!2533864) (not e!3724835))))

(assert (=> b!6108012 (= res!2533864 call!505368)))

(assert (=> b!6108012 (= e!3724837 e!3724835)))

(declare-fun bm!505363 () Bool)

(assert (=> bm!505363 (= call!505368 (validRegex!7793 (ite c!1097433 (regOne!32627 (ite c!1097153 (regOne!32627 lt!2329714) (regOne!32626 lt!2329714))) (regOne!32626 (ite c!1097153 (regOne!32627 lt!2329714) (regOne!32626 lt!2329714))))))))

(declare-fun d!1914424 () Bool)

(declare-fun res!2533865 () Bool)

(assert (=> d!1914424 (=> res!2533865 e!3724833)))

(assert (=> d!1914424 (= res!2533865 ((_ is ElementMatch!16057) (ite c!1097153 (regOne!32627 lt!2329714) (regOne!32626 lt!2329714))))))

(assert (=> d!1914424 (= (validRegex!7793 (ite c!1097153 (regOne!32627 lt!2329714) (regOne!32626 lt!2329714))) e!3724833)))

(assert (= (and d!1914424 (not res!2533865)) b!6108006))

(assert (= (and b!6108006 c!1097434) b!6108009))

(assert (= (and b!6108006 (not c!1097434)) b!6108004))

(assert (= (and b!6108009 res!2533867) b!6108011))

(assert (= (and b!6108004 c!1097433) b!6108012))

(assert (= (and b!6108004 (not c!1097433)) b!6108007))

(assert (= (and b!6108012 res!2533864) b!6108005))

(assert (= (and b!6108007 (not res!2533866)) b!6108010))

(assert (= (and b!6108010 res!2533868) b!6108008))

(assert (= (or b!6108005 b!6108008) bm!505361))

(assert (= (or b!6108012 b!6108010) bm!505363))

(assert (= (or b!6108011 bm!505361) bm!505362))

(declare-fun m!6958624 () Bool)

(assert (=> bm!505362 m!6958624))

(declare-fun m!6958626 () Bool)

(assert (=> b!6108009 m!6958626))

(declare-fun m!6958628 () Bool)

(assert (=> bm!505363 m!6958628))

(assert (=> bm!505136 d!1914424))

(assert (=> b!6107118 d!1914406))

(declare-fun b!6108013 () Bool)

(declare-fun res!2533873 () Bool)

(declare-fun e!3724844 () Bool)

(assert (=> b!6108013 (=> (not res!2533873) (not e!3724844))))

(declare-fun call!505369 () Bool)

(assert (=> b!6108013 (= res!2533873 (not call!505369))))

(declare-fun b!6108014 () Bool)

(declare-fun res!2533874 () Bool)

(declare-fun e!3724842 () Bool)

(assert (=> b!6108014 (=> res!2533874 e!3724842)))

(assert (=> b!6108014 (= res!2533874 (not ((_ is ElementMatch!16057) (derivativeStep!4778 (derivativeStep!4778 r!7292 (head!12636 s!2326)) (head!12636 (tail!11721 s!2326))))))))

(declare-fun e!3724839 () Bool)

(assert (=> b!6108014 (= e!3724839 e!3724842)))

(declare-fun b!6108015 () Bool)

(declare-fun res!2533876 () Bool)

(assert (=> b!6108015 (=> (not res!2533876) (not e!3724844))))

(assert (=> b!6108015 (= res!2533876 (isEmpty!36274 (tail!11721 (tail!11721 (tail!11721 s!2326)))))))

(declare-fun b!6108016 () Bool)

(declare-fun e!3724843 () Bool)

(assert (=> b!6108016 (= e!3724843 (not (= (head!12636 (tail!11721 (tail!11721 s!2326))) (c!1096851 (derivativeStep!4778 (derivativeStep!4778 r!7292 (head!12636 s!2326)) (head!12636 (tail!11721 s!2326)))))))))

(declare-fun b!6108017 () Bool)

(assert (=> b!6108017 (= e!3724844 (= (head!12636 (tail!11721 (tail!11721 s!2326))) (c!1096851 (derivativeStep!4778 (derivativeStep!4778 r!7292 (head!12636 s!2326)) (head!12636 (tail!11721 s!2326))))))))

(declare-fun b!6108018 () Bool)

(declare-fun res!2533871 () Bool)

(assert (=> b!6108018 (=> res!2533871 e!3724843)))

(assert (=> b!6108018 (= res!2533871 (not (isEmpty!36274 (tail!11721 (tail!11721 (tail!11721 s!2326))))))))

(declare-fun b!6108020 () Bool)

(declare-fun e!3724840 () Bool)

(assert (=> b!6108020 (= e!3724840 e!3724843)))

(declare-fun res!2533875 () Bool)

(assert (=> b!6108020 (=> res!2533875 e!3724843)))

(assert (=> b!6108020 (= res!2533875 call!505369)))

(declare-fun b!6108021 () Bool)

(assert (=> b!6108021 (= e!3724842 e!3724840)))

(declare-fun res!2533869 () Bool)

(assert (=> b!6108021 (=> (not res!2533869) (not e!3724840))))

(declare-fun lt!2329845 () Bool)

(assert (=> b!6108021 (= res!2533869 (not lt!2329845))))

(declare-fun b!6108022 () Bool)

(declare-fun e!3724841 () Bool)

(assert (=> b!6108022 (= e!3724841 e!3724839)))

(declare-fun c!1097436 () Bool)

(assert (=> b!6108022 (= c!1097436 ((_ is EmptyLang!16057) (derivativeStep!4778 (derivativeStep!4778 r!7292 (head!12636 s!2326)) (head!12636 (tail!11721 s!2326)))))))

(declare-fun b!6108023 () Bool)

(declare-fun e!3724838 () Bool)

(assert (=> b!6108023 (= e!3724838 (matchR!8240 (derivativeStep!4778 (derivativeStep!4778 (derivativeStep!4778 r!7292 (head!12636 s!2326)) (head!12636 (tail!11721 s!2326))) (head!12636 (tail!11721 (tail!11721 s!2326)))) (tail!11721 (tail!11721 (tail!11721 s!2326)))))))

(declare-fun b!6108024 () Bool)

(assert (=> b!6108024 (= e!3724838 (nullable!6050 (derivativeStep!4778 (derivativeStep!4778 r!7292 (head!12636 s!2326)) (head!12636 (tail!11721 s!2326)))))))

(declare-fun b!6108025 () Bool)

(assert (=> b!6108025 (= e!3724839 (not lt!2329845))))

(declare-fun b!6108026 () Bool)

(declare-fun res!2533872 () Bool)

(assert (=> b!6108026 (=> res!2533872 e!3724842)))

(assert (=> b!6108026 (= res!2533872 e!3724844)))

(declare-fun res!2533870 () Bool)

(assert (=> b!6108026 (=> (not res!2533870) (not e!3724844))))

(assert (=> b!6108026 (= res!2533870 lt!2329845)))

(declare-fun bm!505364 () Bool)

(assert (=> bm!505364 (= call!505369 (isEmpty!36274 (tail!11721 (tail!11721 s!2326))))))

(declare-fun b!6108019 () Bool)

(assert (=> b!6108019 (= e!3724841 (= lt!2329845 call!505369))))

(declare-fun d!1914426 () Bool)

(assert (=> d!1914426 e!3724841))

(declare-fun c!1097437 () Bool)

(assert (=> d!1914426 (= c!1097437 ((_ is EmptyExpr!16057) (derivativeStep!4778 (derivativeStep!4778 r!7292 (head!12636 s!2326)) (head!12636 (tail!11721 s!2326)))))))

(assert (=> d!1914426 (= lt!2329845 e!3724838)))

(declare-fun c!1097435 () Bool)

(assert (=> d!1914426 (= c!1097435 (isEmpty!36274 (tail!11721 (tail!11721 s!2326))))))

(assert (=> d!1914426 (validRegex!7793 (derivativeStep!4778 (derivativeStep!4778 r!7292 (head!12636 s!2326)) (head!12636 (tail!11721 s!2326))))))

(assert (=> d!1914426 (= (matchR!8240 (derivativeStep!4778 (derivativeStep!4778 r!7292 (head!12636 s!2326)) (head!12636 (tail!11721 s!2326))) (tail!11721 (tail!11721 s!2326))) lt!2329845)))

(assert (= (and d!1914426 c!1097435) b!6108024))

(assert (= (and d!1914426 (not c!1097435)) b!6108023))

(assert (= (and d!1914426 c!1097437) b!6108019))

(assert (= (and d!1914426 (not c!1097437)) b!6108022))

(assert (= (and b!6108022 c!1097436) b!6108025))

(assert (= (and b!6108022 (not c!1097436)) b!6108014))

(assert (= (and b!6108014 (not res!2533874)) b!6108026))

(assert (= (and b!6108026 res!2533870) b!6108013))

(assert (= (and b!6108013 res!2533873) b!6108015))

(assert (= (and b!6108015 res!2533876) b!6108017))

(assert (= (and b!6108026 (not res!2533872)) b!6108021))

(assert (= (and b!6108021 res!2533869) b!6108020))

(assert (= (and b!6108020 (not res!2533875)) b!6108018))

(assert (= (and b!6108018 (not res!2533871)) b!6108016))

(assert (= (or b!6108019 b!6108013 b!6108020) bm!505364))

(assert (=> b!6108016 m!6957516))

(declare-fun m!6958636 () Bool)

(assert (=> b!6108016 m!6958636))

(assert (=> b!6108017 m!6957516))

(assert (=> b!6108017 m!6958636))

(assert (=> bm!505364 m!6957516))

(assert (=> bm!505364 m!6957520))

(assert (=> b!6108023 m!6957516))

(assert (=> b!6108023 m!6958636))

(assert (=> b!6108023 m!6957514))

(assert (=> b!6108023 m!6958636))

(declare-fun m!6958646 () Bool)

(assert (=> b!6108023 m!6958646))

(assert (=> b!6108023 m!6957516))

(declare-fun m!6958648 () Bool)

(assert (=> b!6108023 m!6958648))

(assert (=> b!6108023 m!6958646))

(assert (=> b!6108023 m!6958648))

(declare-fun m!6958652 () Bool)

(assert (=> b!6108023 m!6958652))

(assert (=> b!6108015 m!6957516))

(assert (=> b!6108015 m!6958648))

(assert (=> b!6108015 m!6958648))

(declare-fun m!6958654 () Bool)

(assert (=> b!6108015 m!6958654))

(assert (=> b!6108018 m!6957516))

(assert (=> b!6108018 m!6958648))

(assert (=> b!6108018 m!6958648))

(assert (=> b!6108018 m!6958654))

(assert (=> b!6108024 m!6957514))

(declare-fun m!6958656 () Bool)

(assert (=> b!6108024 m!6958656))

(assert (=> d!1914426 m!6957516))

(assert (=> d!1914426 m!6957520))

(assert (=> d!1914426 m!6957514))

(declare-fun m!6958660 () Bool)

(assert (=> d!1914426 m!6958660))

(assert (=> b!6106832 d!1914426))

(declare-fun b!6108041 () Bool)

(declare-fun e!3724856 () Regex!16057)

(declare-fun call!505377 () Regex!16057)

(assert (=> b!6108041 (= e!3724856 (Union!16057 (Concat!24902 call!505377 (regTwo!32626 (derivativeStep!4778 r!7292 (head!12636 s!2326)))) EmptyLang!16057))))

(declare-fun d!1914434 () Bool)

(declare-fun lt!2329849 () Regex!16057)

(assert (=> d!1914434 (validRegex!7793 lt!2329849)))

(declare-fun e!3724855 () Regex!16057)

(assert (=> d!1914434 (= lt!2329849 e!3724855)))

(declare-fun c!1097445 () Bool)

(assert (=> d!1914434 (= c!1097445 (or ((_ is EmptyExpr!16057) (derivativeStep!4778 r!7292 (head!12636 s!2326))) ((_ is EmptyLang!16057) (derivativeStep!4778 r!7292 (head!12636 s!2326)))))))

(assert (=> d!1914434 (validRegex!7793 (derivativeStep!4778 r!7292 (head!12636 s!2326)))))

(assert (=> d!1914434 (= (derivativeStep!4778 (derivativeStep!4778 r!7292 (head!12636 s!2326)) (head!12636 (tail!11721 s!2326))) lt!2329849)))

(declare-fun bm!505369 () Bool)

(declare-fun call!505375 () Regex!16057)

(declare-fun call!505376 () Regex!16057)

(assert (=> bm!505369 (= call!505375 call!505376)))

(declare-fun bm!505370 () Bool)

(assert (=> bm!505370 (= call!505377 call!505375)))

(declare-fun call!505374 () Regex!16057)

(declare-fun c!1097449 () Bool)

(declare-fun bm!505371 () Bool)

(assert (=> bm!505371 (= call!505374 (derivativeStep!4778 (ite c!1097449 (regOne!32627 (derivativeStep!4778 r!7292 (head!12636 s!2326))) (regOne!32626 (derivativeStep!4778 r!7292 (head!12636 s!2326)))) (head!12636 (tail!11721 s!2326))))))

(declare-fun c!1097447 () Bool)

(declare-fun bm!505372 () Bool)

(declare-fun c!1097446 () Bool)

(assert (=> bm!505372 (= call!505376 (derivativeStep!4778 (ite c!1097449 (regTwo!32627 (derivativeStep!4778 r!7292 (head!12636 s!2326))) (ite c!1097447 (reg!16386 (derivativeStep!4778 r!7292 (head!12636 s!2326))) (ite c!1097446 (regTwo!32626 (derivativeStep!4778 r!7292 (head!12636 s!2326))) (regOne!32626 (derivativeStep!4778 r!7292 (head!12636 s!2326)))))) (head!12636 (tail!11721 s!2326))))))

(declare-fun b!6108042 () Bool)

(declare-fun e!3724853 () Regex!16057)

(declare-fun e!3724854 () Regex!16057)

(assert (=> b!6108042 (= e!3724853 e!3724854)))

(assert (=> b!6108042 (= c!1097447 ((_ is Star!16057) (derivativeStep!4778 r!7292 (head!12636 s!2326))))))

(declare-fun b!6108043 () Bool)

(assert (=> b!6108043 (= e!3724854 (Concat!24902 call!505375 (derivativeStep!4778 r!7292 (head!12636 s!2326))))))

(declare-fun b!6108044 () Bool)

(assert (=> b!6108044 (= c!1097446 (nullable!6050 (regOne!32626 (derivativeStep!4778 r!7292 (head!12636 s!2326)))))))

(assert (=> b!6108044 (= e!3724854 e!3724856)))

(declare-fun b!6108045 () Bool)

(declare-fun e!3724852 () Regex!16057)

(assert (=> b!6108045 (= e!3724852 (ite (= (head!12636 (tail!11721 s!2326)) (c!1096851 (derivativeStep!4778 r!7292 (head!12636 s!2326)))) EmptyExpr!16057 EmptyLang!16057))))

(declare-fun b!6108046 () Bool)

(assert (=> b!6108046 (= e!3724855 EmptyLang!16057)))

(declare-fun b!6108047 () Bool)

(assert (=> b!6108047 (= e!3724855 e!3724852)))

(declare-fun c!1097448 () Bool)

(assert (=> b!6108047 (= c!1097448 ((_ is ElementMatch!16057) (derivativeStep!4778 r!7292 (head!12636 s!2326))))))

(declare-fun b!6108048 () Bool)

(assert (=> b!6108048 (= e!3724853 (Union!16057 call!505374 call!505376))))

(declare-fun b!6108049 () Bool)

(assert (=> b!6108049 (= c!1097449 ((_ is Union!16057) (derivativeStep!4778 r!7292 (head!12636 s!2326))))))

(assert (=> b!6108049 (= e!3724852 e!3724853)))

(declare-fun b!6108050 () Bool)

(assert (=> b!6108050 (= e!3724856 (Union!16057 (Concat!24902 call!505374 (regTwo!32626 (derivativeStep!4778 r!7292 (head!12636 s!2326)))) call!505377))))

(assert (= (and d!1914434 c!1097445) b!6108046))

(assert (= (and d!1914434 (not c!1097445)) b!6108047))

(assert (= (and b!6108047 c!1097448) b!6108045))

(assert (= (and b!6108047 (not c!1097448)) b!6108049))

(assert (= (and b!6108049 c!1097449) b!6108048))

(assert (= (and b!6108049 (not c!1097449)) b!6108042))

(assert (= (and b!6108042 c!1097447) b!6108043))

(assert (= (and b!6108042 (not c!1097447)) b!6108044))

(assert (= (and b!6108044 c!1097446) b!6108050))

(assert (= (and b!6108044 (not c!1097446)) b!6108041))

(assert (= (or b!6108050 b!6108041) bm!505370))

(assert (= (or b!6108043 bm!505370) bm!505369))

(assert (= (or b!6108048 bm!505369) bm!505372))

(assert (= (or b!6108048 b!6108050) bm!505371))

(declare-fun m!6958664 () Bool)

(assert (=> d!1914434 m!6958664))

(assert (=> d!1914434 m!6957090))

(assert (=> d!1914434 m!6957524))

(assert (=> bm!505371 m!6957512))

(declare-fun m!6958666 () Bool)

(assert (=> bm!505371 m!6958666))

(assert (=> bm!505372 m!6957512))

(declare-fun m!6958668 () Bool)

(assert (=> bm!505372 m!6958668))

(declare-fun m!6958670 () Bool)

(assert (=> b!6108044 m!6958670))

(assert (=> b!6106832 d!1914434))

(declare-fun d!1914444 () Bool)

(assert (=> d!1914444 (= (head!12636 (tail!11721 s!2326)) (h!70796 (tail!11721 s!2326)))))

(assert (=> b!6106832 d!1914444))

(assert (=> b!6106832 d!1914382))

(declare-fun b!6108106 () Bool)

(declare-fun e!3724898 () Bool)

(declare-fun e!3724893 () Bool)

(assert (=> b!6108106 (= e!3724898 e!3724893)))

(declare-fun c!1097469 () Bool)

(assert (=> b!6108106 (= c!1097469 ((_ is Union!16057) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun b!6108107 () Bool)

(declare-fun e!3724896 () Bool)

(assert (=> b!6108107 (= e!3724893 e!3724896)))

(declare-fun res!2533899 () Bool)

(declare-fun call!505397 () Bool)

(assert (=> b!6108107 (= res!2533899 call!505397)))

(assert (=> b!6108107 (=> res!2533899 e!3724896)))

(declare-fun b!6108108 () Bool)

(declare-fun e!3724894 () Bool)

(assert (=> b!6108108 (= e!3724894 e!3724898)))

(declare-fun res!2533898 () Bool)

(assert (=> b!6108108 (=> res!2533898 e!3724898)))

(assert (=> b!6108108 (= res!2533898 ((_ is Star!16057) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun b!6108109 () Bool)

(declare-fun e!3724895 () Bool)

(declare-fun call!505398 () Bool)

(assert (=> b!6108109 (= e!3724895 call!505398)))

(declare-fun b!6108110 () Bool)

(assert (=> b!6108110 (= e!3724893 e!3724895)))

(declare-fun res!2533897 () Bool)

(assert (=> b!6108110 (= res!2533897 call!505397)))

(assert (=> b!6108110 (=> (not res!2533897) (not e!3724895))))

(declare-fun b!6108111 () Bool)

(declare-fun e!3724897 () Bool)

(assert (=> b!6108111 (= e!3724897 e!3724894)))

(declare-fun res!2533896 () Bool)

(assert (=> b!6108111 (=> (not res!2533896) (not e!3724894))))

(assert (=> b!6108111 (= res!2533896 (and (not ((_ is EmptyLang!16057) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (not ((_ is ElementMatch!16057) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))

(declare-fun bm!505393 () Bool)

(assert (=> bm!505393 (= call!505398 (nullable!6050 (ite c!1097469 (regTwo!32627 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))) (regTwo!32626 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))

(declare-fun b!6108112 () Bool)

(assert (=> b!6108112 (= e!3724896 call!505398)))

(declare-fun d!1914446 () Bool)

(declare-fun res!2533895 () Bool)

(assert (=> d!1914446 (=> res!2533895 e!3724897)))

(assert (=> d!1914446 (= res!2533895 ((_ is EmptyExpr!16057) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))

(assert (=> d!1914446 (= (nullableFct!2014 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))) e!3724897)))

(declare-fun bm!505392 () Bool)

(assert (=> bm!505392 (= call!505397 (nullable!6050 (ite c!1097469 (regOne!32627 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))) (regOne!32626 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))

(assert (= (and d!1914446 (not res!2533895)) b!6108111))

(assert (= (and b!6108111 res!2533896) b!6108108))

(assert (= (and b!6108108 (not res!2533898)) b!6108106))

(assert (= (and b!6108106 c!1097469) b!6108107))

(assert (= (and b!6108106 (not c!1097469)) b!6108110))

(assert (= (and b!6108107 (not res!2533899)) b!6108112))

(assert (= (and b!6108110 res!2533897) b!6108109))

(assert (= (or b!6108112 b!6108109) bm!505393))

(assert (= (or b!6108107 b!6108110) bm!505392))

(declare-fun m!6958700 () Bool)

(assert (=> bm!505393 m!6958700))

(declare-fun m!6958702 () Bool)

(assert (=> bm!505392 m!6958702))

(assert (=> d!1913956 d!1914446))

(declare-fun b!6108113 () Bool)

(declare-fun res!2533904 () Bool)

(declare-fun e!3724905 () Bool)

(assert (=> b!6108113 (=> (not res!2533904) (not e!3724905))))

(declare-fun call!505399 () Bool)

(assert (=> b!6108113 (= res!2533904 (not call!505399))))

(declare-fun b!6108114 () Bool)

(declare-fun res!2533905 () Bool)

(declare-fun e!3724903 () Bool)

(assert (=> b!6108114 (=> res!2533905 e!3724903)))

(assert (=> b!6108114 (= res!2533905 (not ((_ is ElementMatch!16057) (regOne!32626 r!7292))))))

(declare-fun e!3724900 () Bool)

(assert (=> b!6108114 (= e!3724900 e!3724903)))

(declare-fun b!6108115 () Bool)

(declare-fun res!2533907 () Bool)

(assert (=> b!6108115 (=> (not res!2533907) (not e!3724905))))

(assert (=> b!6108115 (= res!2533907 (isEmpty!36274 (tail!11721 (_1!36339 (get!22188 lt!2329798)))))))

(declare-fun b!6108116 () Bool)

(declare-fun e!3724904 () Bool)

(assert (=> b!6108116 (= e!3724904 (not (= (head!12636 (_1!36339 (get!22188 lt!2329798))) (c!1096851 (regOne!32626 r!7292)))))))

(declare-fun b!6108117 () Bool)

(assert (=> b!6108117 (= e!3724905 (= (head!12636 (_1!36339 (get!22188 lt!2329798))) (c!1096851 (regOne!32626 r!7292))))))

(declare-fun b!6108118 () Bool)

(declare-fun res!2533902 () Bool)

(assert (=> b!6108118 (=> res!2533902 e!3724904)))

(assert (=> b!6108118 (= res!2533902 (not (isEmpty!36274 (tail!11721 (_1!36339 (get!22188 lt!2329798))))))))

(declare-fun b!6108120 () Bool)

(declare-fun e!3724901 () Bool)

(assert (=> b!6108120 (= e!3724901 e!3724904)))

(declare-fun res!2533906 () Bool)

(assert (=> b!6108120 (=> res!2533906 e!3724904)))

(assert (=> b!6108120 (= res!2533906 call!505399)))

(declare-fun b!6108121 () Bool)

(assert (=> b!6108121 (= e!3724903 e!3724901)))

(declare-fun res!2533900 () Bool)

(assert (=> b!6108121 (=> (not res!2533900) (not e!3724901))))

(declare-fun lt!2329854 () Bool)

(assert (=> b!6108121 (= res!2533900 (not lt!2329854))))

(declare-fun b!6108122 () Bool)

(declare-fun e!3724902 () Bool)

(assert (=> b!6108122 (= e!3724902 e!3724900)))

(declare-fun c!1097471 () Bool)

(assert (=> b!6108122 (= c!1097471 ((_ is EmptyLang!16057) (regOne!32626 r!7292)))))

(declare-fun b!6108123 () Bool)

(declare-fun e!3724899 () Bool)

(assert (=> b!6108123 (= e!3724899 (matchR!8240 (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 (_1!36339 (get!22188 lt!2329798)))) (tail!11721 (_1!36339 (get!22188 lt!2329798)))))))

(declare-fun b!6108124 () Bool)

(assert (=> b!6108124 (= e!3724899 (nullable!6050 (regOne!32626 r!7292)))))

(declare-fun b!6108125 () Bool)

(assert (=> b!6108125 (= e!3724900 (not lt!2329854))))

(declare-fun b!6108126 () Bool)

(declare-fun res!2533903 () Bool)

(assert (=> b!6108126 (=> res!2533903 e!3724903)))

(assert (=> b!6108126 (= res!2533903 e!3724905)))

(declare-fun res!2533901 () Bool)

(assert (=> b!6108126 (=> (not res!2533901) (not e!3724905))))

(assert (=> b!6108126 (= res!2533901 lt!2329854)))

(declare-fun bm!505394 () Bool)

(assert (=> bm!505394 (= call!505399 (isEmpty!36274 (_1!36339 (get!22188 lt!2329798))))))

(declare-fun b!6108119 () Bool)

(assert (=> b!6108119 (= e!3724902 (= lt!2329854 call!505399))))

(declare-fun d!1914462 () Bool)

(assert (=> d!1914462 e!3724902))

(declare-fun c!1097472 () Bool)

(assert (=> d!1914462 (= c!1097472 ((_ is EmptyExpr!16057) (regOne!32626 r!7292)))))

(assert (=> d!1914462 (= lt!2329854 e!3724899)))

(declare-fun c!1097470 () Bool)

(assert (=> d!1914462 (= c!1097470 (isEmpty!36274 (_1!36339 (get!22188 lt!2329798))))))

(assert (=> d!1914462 (validRegex!7793 (regOne!32626 r!7292))))

(assert (=> d!1914462 (= (matchR!8240 (regOne!32626 r!7292) (_1!36339 (get!22188 lt!2329798))) lt!2329854)))

(assert (= (and d!1914462 c!1097470) b!6108124))

(assert (= (and d!1914462 (not c!1097470)) b!6108123))

(assert (= (and d!1914462 c!1097472) b!6108119))

(assert (= (and d!1914462 (not c!1097472)) b!6108122))

(assert (= (and b!6108122 c!1097471) b!6108125))

(assert (= (and b!6108122 (not c!1097471)) b!6108114))

(assert (= (and b!6108114 (not res!2533905)) b!6108126))

(assert (= (and b!6108126 res!2533901) b!6108113))

(assert (= (and b!6108113 res!2533904) b!6108115))

(assert (= (and b!6108115 res!2533907) b!6108117))

(assert (= (and b!6108126 (not res!2533903)) b!6108121))

(assert (= (and b!6108121 res!2533900) b!6108120))

(assert (= (and b!6108120 (not res!2533906)) b!6108118))

(assert (= (and b!6108118 (not res!2533902)) b!6108116))

(assert (= (or b!6108119 b!6108113 b!6108120) bm!505394))

(declare-fun m!6958716 () Bool)

(assert (=> b!6108116 m!6958716))

(assert (=> b!6108117 m!6958716))

(declare-fun m!6958718 () Bool)

(assert (=> bm!505394 m!6958718))

(assert (=> b!6108123 m!6958716))

(assert (=> b!6108123 m!6958716))

(declare-fun m!6958720 () Bool)

(assert (=> b!6108123 m!6958720))

(declare-fun m!6958722 () Bool)

(assert (=> b!6108123 m!6958722))

(assert (=> b!6108123 m!6958720))

(assert (=> b!6108123 m!6958722))

(declare-fun m!6958724 () Bool)

(assert (=> b!6108123 m!6958724))

(assert (=> b!6108115 m!6958722))

(assert (=> b!6108115 m!6958722))

(declare-fun m!6958726 () Bool)

(assert (=> b!6108115 m!6958726))

(assert (=> b!6108118 m!6958722))

(assert (=> b!6108118 m!6958722))

(assert (=> b!6108118 m!6958726))

(assert (=> b!6108124 m!6957532))

(assert (=> d!1914462 m!6958718))

(assert (=> d!1914462 m!6956996))

(assert (=> b!6106912 d!1914462))

(declare-fun d!1914466 () Bool)

(assert (=> d!1914466 (= (get!22188 lt!2329798) (v!52080 lt!2329798))))

(assert (=> b!6106912 d!1914466))

(declare-fun d!1914468 () Bool)

(assert (=> d!1914468 (= (nullable!6050 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))) (nullableFct!2014 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))

(declare-fun bs!1516465 () Bool)

(assert (= bs!1516465 d!1914468))

(declare-fun m!6958728 () Bool)

(assert (=> bs!1516465 m!6958728))

(assert (=> b!6107089 d!1914468))

(assert (=> b!6106810 d!1913964))

(assert (=> b!6106810 d!1913922))

(declare-fun b!6108143 () Bool)

(declare-fun e!3724915 () Bool)

(declare-fun e!3724916 () Bool)

(assert (=> b!6108143 (= e!3724915 e!3724916)))

(declare-fun c!1097473 () Bool)

(assert (=> b!6108143 (= c!1097473 ((_ is Union!16057) (ite c!1097135 (reg!16386 (regOne!32626 r!7292)) (ite c!1097134 (regTwo!32627 (regOne!32626 r!7292)) (regTwo!32626 (regOne!32626 r!7292))))))))

(declare-fun b!6108144 () Bool)

(declare-fun e!3724913 () Bool)

(declare-fun call!505401 () Bool)

(assert (=> b!6108144 (= e!3724913 call!505401)))

(declare-fun b!6108145 () Bool)

(declare-fun e!3724911 () Bool)

(assert (=> b!6108145 (= e!3724911 e!3724915)))

(declare-fun c!1097474 () Bool)

(assert (=> b!6108145 (= c!1097474 ((_ is Star!16057) (ite c!1097135 (reg!16386 (regOne!32626 r!7292)) (ite c!1097134 (regTwo!32627 (regOne!32626 r!7292)) (regTwo!32626 (regOne!32626 r!7292))))))))

(declare-fun bm!505395 () Bool)

(declare-fun call!505400 () Bool)

(assert (=> bm!505395 (= call!505401 call!505400)))

(declare-fun b!6108146 () Bool)

(declare-fun res!2533910 () Bool)

(declare-fun e!3724910 () Bool)

(assert (=> b!6108146 (=> res!2533910 e!3724910)))

(assert (=> b!6108146 (= res!2533910 (not ((_ is Concat!24902) (ite c!1097135 (reg!16386 (regOne!32626 r!7292)) (ite c!1097134 (regTwo!32627 (regOne!32626 r!7292)) (regTwo!32626 (regOne!32626 r!7292)))))))))

(assert (=> b!6108146 (= e!3724916 e!3724910)))

(declare-fun b!6108147 () Bool)

(declare-fun e!3724912 () Bool)

(assert (=> b!6108147 (= e!3724912 call!505401)))

(declare-fun bm!505396 () Bool)

(assert (=> bm!505396 (= call!505400 (validRegex!7793 (ite c!1097474 (reg!16386 (ite c!1097135 (reg!16386 (regOne!32626 r!7292)) (ite c!1097134 (regTwo!32627 (regOne!32626 r!7292)) (regTwo!32626 (regOne!32626 r!7292))))) (ite c!1097473 (regTwo!32627 (ite c!1097135 (reg!16386 (regOne!32626 r!7292)) (ite c!1097134 (regTwo!32627 (regOne!32626 r!7292)) (regTwo!32626 (regOne!32626 r!7292))))) (regTwo!32626 (ite c!1097135 (reg!16386 (regOne!32626 r!7292)) (ite c!1097134 (regTwo!32627 (regOne!32626 r!7292)) (regTwo!32626 (regOne!32626 r!7292)))))))))))

(declare-fun b!6108148 () Bool)

(declare-fun e!3724909 () Bool)

(assert (=> b!6108148 (= e!3724915 e!3724909)))

(declare-fun res!2533911 () Bool)

(assert (=> b!6108148 (= res!2533911 (not (nullable!6050 (reg!16386 (ite c!1097135 (reg!16386 (regOne!32626 r!7292)) (ite c!1097134 (regTwo!32627 (regOne!32626 r!7292)) (regTwo!32626 (regOne!32626 r!7292))))))))))

(assert (=> b!6108148 (=> (not res!2533911) (not e!3724909))))

(declare-fun b!6108149 () Bool)

(assert (=> b!6108149 (= e!3724910 e!3724912)))

(declare-fun res!2533912 () Bool)

(assert (=> b!6108149 (=> (not res!2533912) (not e!3724912))))

(declare-fun call!505402 () Bool)

(assert (=> b!6108149 (= res!2533912 call!505402)))

(declare-fun b!6108150 () Bool)

(assert (=> b!6108150 (= e!3724909 call!505400)))

(declare-fun b!6108151 () Bool)

(declare-fun res!2533908 () Bool)

(assert (=> b!6108151 (=> (not res!2533908) (not e!3724913))))

(assert (=> b!6108151 (= res!2533908 call!505402)))

(assert (=> b!6108151 (= e!3724916 e!3724913)))

(declare-fun bm!505397 () Bool)

(assert (=> bm!505397 (= call!505402 (validRegex!7793 (ite c!1097473 (regOne!32627 (ite c!1097135 (reg!16386 (regOne!32626 r!7292)) (ite c!1097134 (regTwo!32627 (regOne!32626 r!7292)) (regTwo!32626 (regOne!32626 r!7292))))) (regOne!32626 (ite c!1097135 (reg!16386 (regOne!32626 r!7292)) (ite c!1097134 (regTwo!32627 (regOne!32626 r!7292)) (regTwo!32626 (regOne!32626 r!7292))))))))))

(declare-fun d!1914470 () Bool)

(declare-fun res!2533909 () Bool)

(assert (=> d!1914470 (=> res!2533909 e!3724911)))

(assert (=> d!1914470 (= res!2533909 ((_ is ElementMatch!16057) (ite c!1097135 (reg!16386 (regOne!32626 r!7292)) (ite c!1097134 (regTwo!32627 (regOne!32626 r!7292)) (regTwo!32626 (regOne!32626 r!7292))))))))

(assert (=> d!1914470 (= (validRegex!7793 (ite c!1097135 (reg!16386 (regOne!32626 r!7292)) (ite c!1097134 (regTwo!32627 (regOne!32626 r!7292)) (regTwo!32626 (regOne!32626 r!7292))))) e!3724911)))

(assert (= (and d!1914470 (not res!2533909)) b!6108145))

(assert (= (and b!6108145 c!1097474) b!6108148))

(assert (= (and b!6108145 (not c!1097474)) b!6108143))

(assert (= (and b!6108148 res!2533911) b!6108150))

(assert (= (and b!6108143 c!1097473) b!6108151))

(assert (= (and b!6108143 (not c!1097473)) b!6108146))

(assert (= (and b!6108151 res!2533908) b!6108144))

(assert (= (and b!6108146 (not res!2533910)) b!6108149))

(assert (= (and b!6108149 res!2533912) b!6108147))

(assert (= (or b!6108144 b!6108147) bm!505395))

(assert (= (or b!6108151 b!6108149) bm!505397))

(assert (= (or b!6108150 bm!505395) bm!505396))

(declare-fun m!6958730 () Bool)

(assert (=> bm!505396 m!6958730))

(declare-fun m!6958732 () Bool)

(assert (=> b!6108148 m!6958732))

(declare-fun m!6958734 () Bool)

(assert (=> bm!505397 m!6958734))

(assert (=> bm!505125 d!1914470))

(assert (=> bm!505173 d!1913924))

(declare-fun d!1914472 () Bool)

(declare-fun res!2533913 () Bool)

(declare-fun e!3724921 () Bool)

(assert (=> d!1914472 (=> res!2533913 e!3724921)))

(assert (=> d!1914472 (= res!2533913 ((_ is Nil!64346) (exprs!5941 setElem!41266)))))

(assert (=> d!1914472 (= (forall!15178 (exprs!5941 setElem!41266) lambda!332751) e!3724921)))

(declare-fun b!6108168 () Bool)

(declare-fun e!3724922 () Bool)

(assert (=> b!6108168 (= e!3724921 e!3724922)))

(declare-fun res!2533914 () Bool)

(assert (=> b!6108168 (=> (not res!2533914) (not e!3724922))))

(assert (=> b!6108168 (= res!2533914 (dynLambda!25338 lambda!332751 (h!70794 (exprs!5941 setElem!41266))))))

(declare-fun b!6108169 () Bool)

(assert (=> b!6108169 (= e!3724922 (forall!15178 (t!377923 (exprs!5941 setElem!41266)) lambda!332751))))

(assert (= (and d!1914472 (not res!2533913)) b!6108168))

(assert (= (and b!6108168 res!2533914) b!6108169))

(declare-fun b_lambda!232669 () Bool)

(assert (=> (not b_lambda!232669) (not b!6108168)))

(declare-fun m!6958736 () Bool)

(assert (=> b!6108168 m!6958736))

(declare-fun m!6958738 () Bool)

(assert (=> b!6108169 m!6958738))

(assert (=> d!1913968 d!1914472))

(declare-fun d!1914474 () Bool)

(assert (=> d!1914474 (= (isEmpty!36269 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343)))) ((_ is Nil!64346) (t!377923 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(assert (=> b!6107035 d!1914474))

(declare-fun d!1914476 () Bool)

(declare-fun res!2533915 () Bool)

(declare-fun e!3724926 () Bool)

(assert (=> d!1914476 (=> res!2533915 e!3724926)))

(assert (=> d!1914476 (= res!2533915 ((_ is Nil!64347) res!2533515))))

(assert (=> d!1914476 (= (noDuplicate!1904 res!2533515) e!3724926)))

(declare-fun b!6108182 () Bool)

(declare-fun e!3724927 () Bool)

(assert (=> b!6108182 (= e!3724926 e!3724927)))

(declare-fun res!2533916 () Bool)

(assert (=> b!6108182 (=> (not res!2533916) (not e!3724927))))

(assert (=> b!6108182 (= res!2533916 (not (contains!20020 (t!377924 res!2533515) (h!70795 res!2533515))))))

(declare-fun b!6108183 () Bool)

(assert (=> b!6108183 (= e!3724927 (noDuplicate!1904 (t!377924 res!2533515)))))

(assert (= (and d!1914476 (not res!2533915)) b!6108182))

(assert (= (and b!6108182 res!2533916) b!6108183))

(declare-fun m!6958740 () Bool)

(assert (=> b!6108182 m!6958740))

(declare-fun m!6958742 () Bool)

(assert (=> b!6108183 m!6958742))

(assert (=> d!1914012 d!1914476))

(declare-fun d!1914478 () Bool)

(declare-fun lt!2329857 () Int)

(assert (=> d!1914478 (>= lt!2329857 0)))

(declare-fun e!3724941 () Int)

(assert (=> d!1914478 (= lt!2329857 e!3724941)))

(declare-fun c!1097477 () Bool)

(assert (=> d!1914478 (= c!1097477 ((_ is Nil!64348) lt!2329806))))

(assert (=> d!1914478 (= (size!40202 lt!2329806) lt!2329857)))

(declare-fun b!6108232 () Bool)

(assert (=> b!6108232 (= e!3724941 0)))

(declare-fun b!6108233 () Bool)

(assert (=> b!6108233 (= e!3724941 (+ 1 (size!40202 (t!377925 lt!2329806))))))

(assert (= (and d!1914478 c!1097477) b!6108232))

(assert (= (and d!1914478 (not c!1097477)) b!6108233))

(declare-fun m!6958744 () Bool)

(assert (=> b!6108233 m!6958744))

(assert (=> b!6107123 d!1914478))

(declare-fun d!1914480 () Bool)

(declare-fun lt!2329858 () Int)

(assert (=> d!1914480 (>= lt!2329858 0)))

(declare-fun e!3724944 () Int)

(assert (=> d!1914480 (= lt!2329858 e!3724944)))

(declare-fun c!1097478 () Bool)

(assert (=> d!1914480 (= c!1097478 ((_ is Nil!64348) (_1!36339 (get!22188 lt!2329734))))))

(assert (=> d!1914480 (= (size!40202 (_1!36339 (get!22188 lt!2329734))) lt!2329858)))

(declare-fun b!6108239 () Bool)

(assert (=> b!6108239 (= e!3724944 0)))

(declare-fun b!6108240 () Bool)

(assert (=> b!6108240 (= e!3724944 (+ 1 (size!40202 (t!377925 (_1!36339 (get!22188 lt!2329734))))))))

(assert (= (and d!1914480 c!1097478) b!6108239))

(assert (= (and d!1914480 (not c!1097478)) b!6108240))

(declare-fun m!6958746 () Bool)

(assert (=> b!6108240 m!6958746))

(assert (=> b!6107123 d!1914480))

(declare-fun d!1914482 () Bool)

(declare-fun lt!2329859 () Int)

(assert (=> d!1914482 (>= lt!2329859 0)))

(declare-fun e!3724946 () Int)

(assert (=> d!1914482 (= lt!2329859 e!3724946)))

(declare-fun c!1097479 () Bool)

(assert (=> d!1914482 (= c!1097479 ((_ is Nil!64348) (_2!36339 (get!22188 lt!2329734))))))

(assert (=> d!1914482 (= (size!40202 (_2!36339 (get!22188 lt!2329734))) lt!2329859)))

(declare-fun b!6108245 () Bool)

(assert (=> b!6108245 (= e!3724946 0)))

(declare-fun b!6108246 () Bool)

(assert (=> b!6108246 (= e!3724946 (+ 1 (size!40202 (t!377925 (_2!36339 (get!22188 lt!2329734))))))))

(assert (= (and d!1914482 c!1097479) b!6108245))

(assert (= (and d!1914482 (not c!1097479)) b!6108246))

(declare-fun m!6958748 () Bool)

(assert (=> b!6108246 m!6958748))

(assert (=> b!6107123 d!1914482))

(declare-fun b!6108252 () Bool)

(declare-fun e!3724954 () Bool)

(declare-fun e!3724949 () Bool)

(assert (=> b!6108252 (= e!3724954 e!3724949)))

(declare-fun c!1097480 () Bool)

(assert (=> b!6108252 (= c!1097480 ((_ is Union!16057) (reg!16386 r!7292)))))

(declare-fun b!6108253 () Bool)

(declare-fun e!3724952 () Bool)

(assert (=> b!6108253 (= e!3724949 e!3724952)))

(declare-fun res!2533921 () Bool)

(declare-fun call!505403 () Bool)

(assert (=> b!6108253 (= res!2533921 call!505403)))

(assert (=> b!6108253 (=> res!2533921 e!3724952)))

(declare-fun b!6108254 () Bool)

(declare-fun e!3724950 () Bool)

(assert (=> b!6108254 (= e!3724950 e!3724954)))

(declare-fun res!2533920 () Bool)

(assert (=> b!6108254 (=> res!2533920 e!3724954)))

(assert (=> b!6108254 (= res!2533920 ((_ is Star!16057) (reg!16386 r!7292)))))

(declare-fun b!6108255 () Bool)

(declare-fun e!3724951 () Bool)

(declare-fun call!505404 () Bool)

(assert (=> b!6108255 (= e!3724951 call!505404)))

(declare-fun b!6108256 () Bool)

(assert (=> b!6108256 (= e!3724949 e!3724951)))

(declare-fun res!2533919 () Bool)

(assert (=> b!6108256 (= res!2533919 call!505403)))

(assert (=> b!6108256 (=> (not res!2533919) (not e!3724951))))

(declare-fun b!6108257 () Bool)

(declare-fun e!3724953 () Bool)

(assert (=> b!6108257 (= e!3724953 e!3724950)))

(declare-fun res!2533918 () Bool)

(assert (=> b!6108257 (=> (not res!2533918) (not e!3724950))))

(assert (=> b!6108257 (= res!2533918 (and (not ((_ is EmptyLang!16057) (reg!16386 r!7292))) (not ((_ is ElementMatch!16057) (reg!16386 r!7292)))))))

(declare-fun bm!505399 () Bool)

(assert (=> bm!505399 (= call!505404 (nullable!6050 (ite c!1097480 (regTwo!32627 (reg!16386 r!7292)) (regTwo!32626 (reg!16386 r!7292)))))))

(declare-fun b!6108258 () Bool)

(assert (=> b!6108258 (= e!3724952 call!505404)))

(declare-fun d!1914484 () Bool)

(declare-fun res!2533917 () Bool)

(assert (=> d!1914484 (=> res!2533917 e!3724953)))

(assert (=> d!1914484 (= res!2533917 ((_ is EmptyExpr!16057) (reg!16386 r!7292)))))

(assert (=> d!1914484 (= (nullableFct!2014 (reg!16386 r!7292)) e!3724953)))

(declare-fun bm!505398 () Bool)

(assert (=> bm!505398 (= call!505403 (nullable!6050 (ite c!1097480 (regOne!32627 (reg!16386 r!7292)) (regOne!32626 (reg!16386 r!7292)))))))

(assert (= (and d!1914484 (not res!2533917)) b!6108257))

(assert (= (and b!6108257 res!2533918) b!6108254))

(assert (= (and b!6108254 (not res!2533920)) b!6108252))

(assert (= (and b!6108252 c!1097480) b!6108253))

(assert (= (and b!6108252 (not c!1097480)) b!6108256))

(assert (= (and b!6108253 (not res!2533921)) b!6108258))

(assert (= (and b!6108256 res!2533919) b!6108255))

(assert (= (or b!6108258 b!6108255) bm!505399))

(assert (= (or b!6108253 b!6108256) bm!505398))

(declare-fun m!6958750 () Bool)

(assert (=> bm!505399 m!6958750))

(declare-fun m!6958752 () Bool)

(assert (=> bm!505398 m!6958752))

(assert (=> d!1913958 d!1914484))

(declare-fun d!1914486 () Bool)

(assert (=> d!1914486 (= ($colon$colon!1934 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))) (ite (or c!1097158 c!1097159) (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))) (Cons!64346 (ite (or c!1097158 c!1097159) (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))

(assert (=> bm!505137 d!1914486))

(assert (=> bm!505130 d!1913924))

(declare-fun d!1914488 () Bool)

(assert (=> d!1914488 (= (isEmpty!36269 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343))))) ((_ is Nil!64346) (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(assert (=> b!6106985 d!1914488))

(assert (=> d!1913944 d!1913940))

(assert (=> d!1913944 d!1913942))

(declare-fun d!1914490 () Bool)

(assert (=> d!1914490 (= (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (t!377925 s!2326)) s!2326)))

(assert (=> d!1914490 true))

(declare-fun _$68!1115 () Unit!157385)

(assert (=> d!1914490 (= (choose!45400 Nil!64348 (h!70796 s!2326) (t!377925 s!2326) s!2326) _$68!1115)))

(declare-fun bs!1516466 () Bool)

(assert (= bs!1516466 d!1914490))

(assert (=> bs!1516466 m!6957000))

(assert (=> bs!1516466 m!6957000))

(assert (=> bs!1516466 m!6957002))

(assert (=> d!1913944 d!1914490))

(declare-fun b!6108324 () Bool)

(declare-fun e!3724971 () List!64472)

(assert (=> b!6108324 (= e!3724971 (Cons!64348 (h!70796 Nil!64348) (++!14144 (t!377925 Nil!64348) (Cons!64348 (h!70796 s!2326) (t!377925 s!2326)))))))

(declare-fun b!6108326 () Bool)

(declare-fun e!3724972 () Bool)

(declare-fun lt!2329860 () List!64472)

(assert (=> b!6108326 (= e!3724972 (or (not (= (Cons!64348 (h!70796 s!2326) (t!377925 s!2326)) Nil!64348)) (= lt!2329860 Nil!64348)))))

(declare-fun b!6108325 () Bool)

(declare-fun res!2533922 () Bool)

(assert (=> b!6108325 (=> (not res!2533922) (not e!3724972))))

(assert (=> b!6108325 (= res!2533922 (= (size!40202 lt!2329860) (+ (size!40202 Nil!64348) (size!40202 (Cons!64348 (h!70796 s!2326) (t!377925 s!2326))))))))

(declare-fun b!6108323 () Bool)

(assert (=> b!6108323 (= e!3724971 (Cons!64348 (h!70796 s!2326) (t!377925 s!2326)))))

(declare-fun d!1914492 () Bool)

(assert (=> d!1914492 e!3724972))

(declare-fun res!2533923 () Bool)

(assert (=> d!1914492 (=> (not res!2533923) (not e!3724972))))

(assert (=> d!1914492 (= res!2533923 (= (content!11941 lt!2329860) ((_ map or) (content!11941 Nil!64348) (content!11941 (Cons!64348 (h!70796 s!2326) (t!377925 s!2326))))))))

(assert (=> d!1914492 (= lt!2329860 e!3724971)))

(declare-fun c!1097481 () Bool)

(assert (=> d!1914492 (= c!1097481 ((_ is Nil!64348) Nil!64348))))

(assert (=> d!1914492 (= (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) (t!377925 s!2326))) lt!2329860)))

(assert (= (and d!1914492 c!1097481) b!6108323))

(assert (= (and d!1914492 (not c!1097481)) b!6108324))

(assert (= (and d!1914492 res!2533923) b!6108325))

(assert (= (and b!6108325 res!2533922) b!6108326))

(declare-fun m!6958754 () Bool)

(assert (=> b!6108324 m!6958754))

(declare-fun m!6958756 () Bool)

(assert (=> b!6108325 m!6958756))

(assert (=> b!6108325 m!6957572))

(declare-fun m!6958758 () Bool)

(assert (=> b!6108325 m!6958758))

(declare-fun m!6958760 () Bool)

(assert (=> d!1914492 m!6958760))

(assert (=> d!1914492 m!6957578))

(declare-fun m!6958762 () Bool)

(assert (=> d!1914492 m!6958762))

(assert (=> d!1913944 d!1914492))

(declare-fun d!1914494 () Bool)

(assert (=> d!1914494 (= (nullable!6050 (reg!16386 lt!2329762)) (nullableFct!2014 (reg!16386 lt!2329762)))))

(declare-fun bs!1516467 () Bool)

(assert (= bs!1516467 d!1914494))

(declare-fun m!6958764 () Bool)

(assert (=> bs!1516467 m!6958764))

(assert (=> b!6107101 d!1914494))

(declare-fun b!6108343 () Bool)

(declare-fun e!3724982 () Bool)

(declare-fun e!3724983 () Bool)

(assert (=> b!6108343 (= e!3724982 e!3724983)))

(declare-fun c!1097482 () Bool)

(assert (=> b!6108343 (= c!1097482 ((_ is Union!16057) (h!70794 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun b!6108344 () Bool)

(declare-fun e!3724981 () Bool)

(declare-fun call!505406 () Bool)

(assert (=> b!6108344 (= e!3724981 call!505406)))

(declare-fun b!6108345 () Bool)

(declare-fun e!3724979 () Bool)

(assert (=> b!6108345 (= e!3724979 e!3724982)))

(declare-fun c!1097483 () Bool)

(assert (=> b!6108345 (= c!1097483 ((_ is Star!16057) (h!70794 (exprs!5941 (h!70795 zl!343)))))))

(declare-fun bm!505400 () Bool)

(declare-fun call!505405 () Bool)

(assert (=> bm!505400 (= call!505406 call!505405)))

(declare-fun b!6108346 () Bool)

(declare-fun res!2533926 () Bool)

(declare-fun e!3724978 () Bool)

(assert (=> b!6108346 (=> res!2533926 e!3724978)))

(assert (=> b!6108346 (= res!2533926 (not ((_ is Concat!24902) (h!70794 (exprs!5941 (h!70795 zl!343))))))))

(assert (=> b!6108346 (= e!3724983 e!3724978)))

(declare-fun b!6108347 () Bool)

(declare-fun e!3724980 () Bool)

(assert (=> b!6108347 (= e!3724980 call!505406)))

(declare-fun bm!505401 () Bool)

(assert (=> bm!505401 (= call!505405 (validRegex!7793 (ite c!1097483 (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097482 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))

(declare-fun b!6108348 () Bool)

(declare-fun e!3724977 () Bool)

(assert (=> b!6108348 (= e!3724982 e!3724977)))

(declare-fun res!2533927 () Bool)

(assert (=> b!6108348 (= res!2533927 (not (nullable!6050 (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))

(assert (=> b!6108348 (=> (not res!2533927) (not e!3724977))))

(declare-fun b!6108349 () Bool)

(assert (=> b!6108349 (= e!3724978 e!3724980)))

(declare-fun res!2533928 () Bool)

(assert (=> b!6108349 (=> (not res!2533928) (not e!3724980))))

(declare-fun call!505407 () Bool)

(assert (=> b!6108349 (= res!2533928 call!505407)))

(declare-fun b!6108350 () Bool)

(assert (=> b!6108350 (= e!3724977 call!505405)))

(declare-fun b!6108351 () Bool)

(declare-fun res!2533924 () Bool)

(assert (=> b!6108351 (=> (not res!2533924) (not e!3724981))))

(assert (=> b!6108351 (= res!2533924 call!505407)))

(assert (=> b!6108351 (= e!3724983 e!3724981)))

(declare-fun bm!505402 () Bool)

(assert (=> bm!505402 (= call!505407 (validRegex!7793 (ite c!1097482 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))

(declare-fun d!1914496 () Bool)

(declare-fun res!2533925 () Bool)

(assert (=> d!1914496 (=> res!2533925 e!3724979)))

(assert (=> d!1914496 (= res!2533925 ((_ is ElementMatch!16057) (h!70794 (exprs!5941 (h!70795 zl!343)))))))

(assert (=> d!1914496 (= (validRegex!7793 (h!70794 (exprs!5941 (h!70795 zl!343)))) e!3724979)))

(assert (= (and d!1914496 (not res!2533925)) b!6108345))

(assert (= (and b!6108345 c!1097483) b!6108348))

(assert (= (and b!6108345 (not c!1097483)) b!6108343))

(assert (= (and b!6108348 res!2533927) b!6108350))

(assert (= (and b!6108343 c!1097482) b!6108351))

(assert (= (and b!6108343 (not c!1097482)) b!6108346))

(assert (= (and b!6108351 res!2533924) b!6108344))

(assert (= (and b!6108346 (not res!2533926)) b!6108349))

(assert (= (and b!6108349 res!2533928) b!6108347))

(assert (= (or b!6108344 b!6108347) bm!505400))

(assert (= (or b!6108351 b!6108349) bm!505402))

(assert (= (or b!6108350 bm!505400) bm!505401))

(declare-fun m!6958766 () Bool)

(assert (=> bm!505401 m!6958766))

(declare-fun m!6958768 () Bool)

(assert (=> b!6108348 m!6958768))

(declare-fun m!6958770 () Bool)

(assert (=> bm!505402 m!6958770))

(assert (=> bs!1516222 d!1914496))

(declare-fun bs!1516468 () Bool)

(declare-fun b!6108369 () Bool)

(assert (= bs!1516468 (and b!6108369 b!6106173)))

(declare-fun lambda!332781 () Int)

(assert (=> bs!1516468 (not (= lambda!332781 lambda!332726))))

(declare-fun bs!1516469 () Bool)

(assert (= bs!1516469 (and b!6108369 d!1913716)))

(assert (=> bs!1516469 (not (= lambda!332781 lambda!332710))))

(declare-fun bs!1516470 () Bool)

(assert (= bs!1516470 (and b!6108369 b!6107127)))

(assert (=> bs!1516470 (not (= lambda!332781 lambda!332765))))

(declare-fun bs!1516471 () Bool)

(assert (= bs!1516471 (and b!6108369 b!6107126)))

(assert (=> bs!1516471 (= (and (= (reg!16386 (regTwo!32627 (regTwo!32627 r!7292))) (reg!16386 (regTwo!32627 r!7292))) (= (regTwo!32627 (regTwo!32627 r!7292)) (regTwo!32627 r!7292))) (= lambda!332781 lambda!332764))))

(declare-fun bs!1516472 () Bool)

(assert (= bs!1516472 (and b!6108369 d!1914040)))

(assert (=> bs!1516472 (not (= lambda!332781 lambda!332762))))

(declare-fun bs!1516473 () Bool)

(assert (= bs!1516473 (and b!6108369 d!1913726)))

(assert (=> bs!1516473 (not (= lambda!332781 lambda!332716))))

(declare-fun bs!1516474 () Bool)

(assert (= bs!1516474 (and b!6108369 b!6105694)))

(assert (=> bs!1516474 (not (= lambda!332781 lambda!332672))))

(assert (=> bs!1516472 (not (= lambda!332781 lambda!332763))))

(declare-fun bs!1516475 () Bool)

(assert (= bs!1516475 (and b!6108369 b!6106935)))

(assert (=> bs!1516475 (= (and (= (reg!16386 (regTwo!32627 (regTwo!32627 r!7292))) (reg!16386 (regOne!32627 r!7292))) (= (regTwo!32627 (regTwo!32627 r!7292)) (regOne!32627 r!7292))) (= lambda!332781 lambda!332753))))

(declare-fun bs!1516476 () Bool)

(assert (= bs!1516476 (and b!6108369 d!1913938)))

(assert (=> bs!1516476 (not (= lambda!332781 lambda!332750))))

(assert (=> bs!1516473 (not (= lambda!332781 lambda!332715))))

(assert (=> bs!1516474 (not (= lambda!332781 lambda!332673))))

(declare-fun bs!1516477 () Bool)

(assert (= bs!1516477 (and b!6108369 b!6106172)))

(assert (=> bs!1516477 (= (and (= (reg!16386 (regTwo!32627 (regTwo!32627 r!7292))) (reg!16386 r!7292)) (= (regTwo!32627 (regTwo!32627 r!7292)) r!7292)) (= lambda!332781 lambda!332725))))

(declare-fun bs!1516478 () Bool)

(assert (= bs!1516478 (and b!6108369 b!6106936)))

(assert (=> bs!1516478 (not (= lambda!332781 lambda!332754))))

(assert (=> b!6108369 true))

(assert (=> b!6108369 true))

(declare-fun bs!1516479 () Bool)

(declare-fun b!6108370 () Bool)

(assert (= bs!1516479 (and b!6108370 b!6106173)))

(declare-fun lambda!332782 () Int)

(assert (=> bs!1516479 (= (and (= (regOne!32626 (regTwo!32627 (regTwo!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regTwo!32627 (regTwo!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332782 lambda!332726))))

(declare-fun bs!1516480 () Bool)

(assert (= bs!1516480 (and b!6108370 d!1913716)))

(assert (=> bs!1516480 (not (= lambda!332782 lambda!332710))))

(declare-fun bs!1516481 () Bool)

(assert (= bs!1516481 (and b!6108370 b!6107127)))

(assert (=> bs!1516481 (= (and (= (regOne!32626 (regTwo!32627 (regTwo!32627 r!7292))) (regOne!32626 (regTwo!32627 r!7292))) (= (regTwo!32626 (regTwo!32627 (regTwo!32627 r!7292))) (regTwo!32626 (regTwo!32627 r!7292)))) (= lambda!332782 lambda!332765))))

(declare-fun bs!1516482 () Bool)

(assert (= bs!1516482 (and b!6108370 b!6108369)))

(assert (=> bs!1516482 (not (= lambda!332782 lambda!332781))))

(declare-fun bs!1516483 () Bool)

(assert (= bs!1516483 (and b!6108370 b!6107126)))

(assert (=> bs!1516483 (not (= lambda!332782 lambda!332764))))

(declare-fun bs!1516484 () Bool)

(assert (= bs!1516484 (and b!6108370 d!1914040)))

(assert (=> bs!1516484 (not (= lambda!332782 lambda!332762))))

(declare-fun bs!1516485 () Bool)

(assert (= bs!1516485 (and b!6108370 d!1913726)))

(assert (=> bs!1516485 (= (and (= (regOne!32626 (regTwo!32627 (regTwo!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regTwo!32627 (regTwo!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332782 lambda!332716))))

(declare-fun bs!1516486 () Bool)

(assert (= bs!1516486 (and b!6108370 b!6105694)))

(assert (=> bs!1516486 (not (= lambda!332782 lambda!332672))))

(assert (=> bs!1516484 (= (and (= (regOne!32626 (regTwo!32627 (regTwo!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regTwo!32627 (regTwo!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332782 lambda!332763))))

(declare-fun bs!1516487 () Bool)

(assert (= bs!1516487 (and b!6108370 b!6106935)))

(assert (=> bs!1516487 (not (= lambda!332782 lambda!332753))))

(declare-fun bs!1516488 () Bool)

(assert (= bs!1516488 (and b!6108370 d!1913938)))

(assert (=> bs!1516488 (not (= lambda!332782 lambda!332750))))

(assert (=> bs!1516485 (not (= lambda!332782 lambda!332715))))

(assert (=> bs!1516486 (= (and (= (regOne!32626 (regTwo!32627 (regTwo!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regTwo!32627 (regTwo!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332782 lambda!332673))))

(declare-fun bs!1516489 () Bool)

(assert (= bs!1516489 (and b!6108370 b!6106172)))

(assert (=> bs!1516489 (not (= lambda!332782 lambda!332725))))

(declare-fun bs!1516490 () Bool)

(assert (= bs!1516490 (and b!6108370 b!6106936)))

(assert (=> bs!1516490 (= (and (= (regOne!32626 (regTwo!32627 (regTwo!32627 r!7292))) (regOne!32626 (regOne!32627 r!7292))) (= (regTwo!32626 (regTwo!32627 (regTwo!32627 r!7292))) (regTwo!32626 (regOne!32627 r!7292)))) (= lambda!332782 lambda!332754))))

(assert (=> b!6108370 true))

(assert (=> b!6108370 true))

(declare-fun d!1914498 () Bool)

(declare-fun c!1097485 () Bool)

(assert (=> d!1914498 (= c!1097485 ((_ is EmptyExpr!16057) (regTwo!32627 (regTwo!32627 r!7292))))))

(declare-fun e!3724988 () Bool)

(assert (=> d!1914498 (= (matchRSpec!3158 (regTwo!32627 (regTwo!32627 r!7292)) s!2326) e!3724988)))

(declare-fun bm!505403 () Bool)

(declare-fun call!505409 () Bool)

(declare-fun c!1097487 () Bool)

(assert (=> bm!505403 (= call!505409 (Exists!3127 (ite c!1097487 lambda!332781 lambda!332782)))))

(declare-fun b!6108368 () Bool)

(declare-fun e!3724990 () Bool)

(declare-fun e!3724992 () Bool)

(assert (=> b!6108368 (= e!3724990 e!3724992)))

(assert (=> b!6108368 (= c!1097487 ((_ is Star!16057) (regTwo!32627 (regTwo!32627 r!7292))))))

(declare-fun e!3724994 () Bool)

(assert (=> b!6108369 (= e!3724994 call!505409)))

(assert (=> b!6108370 (= e!3724992 call!505409)))

(declare-fun b!6108371 () Bool)

(declare-fun res!2533931 () Bool)

(assert (=> b!6108371 (=> res!2533931 e!3724994)))

(declare-fun call!505408 () Bool)

(assert (=> b!6108371 (= res!2533931 call!505408)))

(assert (=> b!6108371 (= e!3724992 e!3724994)))

(declare-fun b!6108372 () Bool)

(declare-fun e!3724993 () Bool)

(assert (=> b!6108372 (= e!3724990 e!3724993)))

(declare-fun res!2533929 () Bool)

(assert (=> b!6108372 (= res!2533929 (matchRSpec!3158 (regOne!32627 (regTwo!32627 (regTwo!32627 r!7292))) s!2326))))

(assert (=> b!6108372 (=> res!2533929 e!3724993)))

(declare-fun bm!505404 () Bool)

(assert (=> bm!505404 (= call!505408 (isEmpty!36274 s!2326))))

(declare-fun b!6108373 () Bool)

(declare-fun e!3724989 () Bool)

(assert (=> b!6108373 (= e!3724989 (= s!2326 (Cons!64348 (c!1096851 (regTwo!32627 (regTwo!32627 r!7292))) Nil!64348)))))

(declare-fun b!6108374 () Bool)

(declare-fun c!1097486 () Bool)

(assert (=> b!6108374 (= c!1097486 ((_ is Union!16057) (regTwo!32627 (regTwo!32627 r!7292))))))

(assert (=> b!6108374 (= e!3724989 e!3724990)))

(declare-fun b!6108375 () Bool)

(declare-fun e!3724991 () Bool)

(assert (=> b!6108375 (= e!3724988 e!3724991)))

(declare-fun res!2533930 () Bool)

(assert (=> b!6108375 (= res!2533930 (not ((_ is EmptyLang!16057) (regTwo!32627 (regTwo!32627 r!7292)))))))

(assert (=> b!6108375 (=> (not res!2533930) (not e!3724991))))

(declare-fun b!6108376 () Bool)

(assert (=> b!6108376 (= e!3724993 (matchRSpec!3158 (regTwo!32627 (regTwo!32627 (regTwo!32627 r!7292))) s!2326))))

(declare-fun b!6108377 () Bool)

(declare-fun c!1097484 () Bool)

(assert (=> b!6108377 (= c!1097484 ((_ is ElementMatch!16057) (regTwo!32627 (regTwo!32627 r!7292))))))

(assert (=> b!6108377 (= e!3724991 e!3724989)))

(declare-fun b!6108378 () Bool)

(assert (=> b!6108378 (= e!3724988 call!505408)))

(assert (= (and d!1914498 c!1097485) b!6108378))

(assert (= (and d!1914498 (not c!1097485)) b!6108375))

(assert (= (and b!6108375 res!2533930) b!6108377))

(assert (= (and b!6108377 c!1097484) b!6108373))

(assert (= (and b!6108377 (not c!1097484)) b!6108374))

(assert (= (and b!6108374 c!1097486) b!6108372))

(assert (= (and b!6108374 (not c!1097486)) b!6108368))

(assert (= (and b!6108372 (not res!2533929)) b!6108376))

(assert (= (and b!6108368 c!1097487) b!6108371))

(assert (= (and b!6108368 (not c!1097487)) b!6108370))

(assert (= (and b!6108371 (not res!2533931)) b!6108369))

(assert (= (or b!6108369 b!6108370) bm!505403))

(assert (= (or b!6108378 b!6108371) bm!505404))

(declare-fun m!6958774 () Bool)

(assert (=> bm!505403 m!6958774))

(declare-fun m!6958776 () Bool)

(assert (=> b!6108372 m!6958776))

(assert (=> bm!505404 m!6957084))

(declare-fun m!6958778 () Bool)

(assert (=> b!6108376 m!6958778))

(assert (=> b!6107133 d!1914498))

(declare-fun d!1914500 () Bool)

(assert (=> d!1914500 (= (isEmpty!36274 (tail!11721 (_1!36339 (get!22188 lt!2329734)))) ((_ is Nil!64348) (tail!11721 (_1!36339 (get!22188 lt!2329734)))))))

(assert (=> b!6107025 d!1914500))

(declare-fun d!1914502 () Bool)

(assert (=> d!1914502 (= (tail!11721 (_1!36339 (get!22188 lt!2329734))) (t!377925 (_1!36339 (get!22188 lt!2329734))))))

(assert (=> b!6107025 d!1914502))

(declare-fun bs!1516491 () Bool)

(declare-fun d!1914504 () Bool)

(assert (= bs!1516491 (and d!1914504 d!1913694)))

(declare-fun lambda!332783 () Int)

(assert (=> bs!1516491 (= lambda!332783 lambda!332695)))

(declare-fun bs!1516492 () Bool)

(assert (= bs!1516492 (and d!1914504 d!1914000)))

(assert (=> bs!1516492 (= lambda!332783 lambda!332756)))

(declare-fun bs!1516493 () Bool)

(assert (= bs!1516493 (and d!1914504 d!1913998)))

(assert (=> bs!1516493 (= lambda!332783 lambda!332755)))

(declare-fun bs!1516494 () Bool)

(assert (= bs!1516494 (and d!1914504 d!1914016)))

(assert (=> bs!1516494 (= lambda!332783 lambda!332757)))

(declare-fun bs!1516495 () Bool)

(assert (= bs!1516495 (and d!1914504 d!1913734)))

(assert (=> bs!1516495 (= lambda!332783 lambda!332720)))

(declare-fun bs!1516496 () Bool)

(assert (= bs!1516496 (and d!1914504 d!1913970)))

(assert (=> bs!1516496 (= lambda!332783 lambda!332752)))

(declare-fun bs!1516497 () Bool)

(assert (= bs!1516497 (and d!1914504 d!1913684)))

(assert (=> bs!1516497 (= lambda!332783 lambda!332688)))

(declare-fun bs!1516498 () Bool)

(assert (= bs!1516498 (and d!1914504 d!1913730)))

(assert (=> bs!1516498 (= lambda!332783 lambda!332719)))

(declare-fun bs!1516499 () Bool)

(assert (= bs!1516499 (and d!1914504 d!1913748)))

(assert (=> bs!1516499 (= lambda!332783 lambda!332729)))

(declare-fun bs!1516500 () Bool)

(assert (= bs!1516500 (and d!1914504 d!1913968)))

(assert (=> bs!1516500 (= lambda!332783 lambda!332751)))

(assert (=> d!1914504 (= (inv!83389 (h!70795 (t!377924 (t!377924 zl!343)))) (forall!15178 (exprs!5941 (h!70795 (t!377924 (t!377924 zl!343)))) lambda!332783))))

(declare-fun bs!1516501 () Bool)

(assert (= bs!1516501 d!1914504))

(declare-fun m!6958780 () Bool)

(assert (=> bs!1516501 m!6958780))

(assert (=> b!6107224 d!1914504))

(declare-fun bs!1516502 () Bool)

(declare-fun b!6108544 () Bool)

(assert (= bs!1516502 (and b!6108544 b!6106173)))

(declare-fun lambda!332784 () Int)

(assert (=> bs!1516502 (not (= lambda!332784 lambda!332726))))

(declare-fun bs!1516503 () Bool)

(assert (= bs!1516503 (and b!6108544 d!1913716)))

(assert (=> bs!1516503 (not (= lambda!332784 lambda!332710))))

(declare-fun bs!1516504 () Bool)

(assert (= bs!1516504 (and b!6108544 b!6107127)))

(assert (=> bs!1516504 (not (= lambda!332784 lambda!332765))))

(declare-fun bs!1516505 () Bool)

(assert (= bs!1516505 (and b!6108544 b!6108369)))

(assert (=> bs!1516505 (= (and (= (reg!16386 (regTwo!32627 (regOne!32627 r!7292))) (reg!16386 (regTwo!32627 (regTwo!32627 r!7292)))) (= (regTwo!32627 (regOne!32627 r!7292)) (regTwo!32627 (regTwo!32627 r!7292)))) (= lambda!332784 lambda!332781))))

(declare-fun bs!1516506 () Bool)

(assert (= bs!1516506 (and b!6108544 b!6107126)))

(assert (=> bs!1516506 (= (and (= (reg!16386 (regTwo!32627 (regOne!32627 r!7292))) (reg!16386 (regTwo!32627 r!7292))) (= (regTwo!32627 (regOne!32627 r!7292)) (regTwo!32627 r!7292))) (= lambda!332784 lambda!332764))))

(declare-fun bs!1516507 () Bool)

(assert (= bs!1516507 (and b!6108544 d!1914040)))

(assert (=> bs!1516507 (not (= lambda!332784 lambda!332762))))

(declare-fun bs!1516508 () Bool)

(assert (= bs!1516508 (and b!6108544 d!1913726)))

(assert (=> bs!1516508 (not (= lambda!332784 lambda!332716))))

(declare-fun bs!1516509 () Bool)

(assert (= bs!1516509 (and b!6108544 b!6105694)))

(assert (=> bs!1516509 (not (= lambda!332784 lambda!332672))))

(assert (=> bs!1516507 (not (= lambda!332784 lambda!332763))))

(declare-fun bs!1516510 () Bool)

(assert (= bs!1516510 (and b!6108544 b!6106935)))

(assert (=> bs!1516510 (= (and (= (reg!16386 (regTwo!32627 (regOne!32627 r!7292))) (reg!16386 (regOne!32627 r!7292))) (= (regTwo!32627 (regOne!32627 r!7292)) (regOne!32627 r!7292))) (= lambda!332784 lambda!332753))))

(declare-fun bs!1516511 () Bool)

(assert (= bs!1516511 (and b!6108544 d!1913938)))

(assert (=> bs!1516511 (not (= lambda!332784 lambda!332750))))

(assert (=> bs!1516508 (not (= lambda!332784 lambda!332715))))

(declare-fun bs!1516512 () Bool)

(assert (= bs!1516512 (and b!6108544 b!6106172)))

(assert (=> bs!1516512 (= (and (= (reg!16386 (regTwo!32627 (regOne!32627 r!7292))) (reg!16386 r!7292)) (= (regTwo!32627 (regOne!32627 r!7292)) r!7292)) (= lambda!332784 lambda!332725))))

(declare-fun bs!1516513 () Bool)

(assert (= bs!1516513 (and b!6108544 b!6106936)))

(assert (=> bs!1516513 (not (= lambda!332784 lambda!332754))))

(assert (=> bs!1516509 (not (= lambda!332784 lambda!332673))))

(declare-fun bs!1516514 () Bool)

(assert (= bs!1516514 (and b!6108544 b!6108370)))

(assert (=> bs!1516514 (not (= lambda!332784 lambda!332782))))

(assert (=> b!6108544 true))

(assert (=> b!6108544 true))

(declare-fun bs!1516515 () Bool)

(declare-fun b!6108545 () Bool)

(assert (= bs!1516515 (and b!6108545 b!6106173)))

(declare-fun lambda!332785 () Int)

(assert (=> bs!1516515 (= (and (= (regOne!32626 (regTwo!32627 (regOne!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regTwo!32627 (regOne!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332785 lambda!332726))))

(declare-fun bs!1516516 () Bool)

(assert (= bs!1516516 (and b!6108545 d!1913716)))

(assert (=> bs!1516516 (not (= lambda!332785 lambda!332710))))

(declare-fun bs!1516517 () Bool)

(assert (= bs!1516517 (and b!6108545 b!6107127)))

(assert (=> bs!1516517 (= (and (= (regOne!32626 (regTwo!32627 (regOne!32627 r!7292))) (regOne!32626 (regTwo!32627 r!7292))) (= (regTwo!32626 (regTwo!32627 (regOne!32627 r!7292))) (regTwo!32626 (regTwo!32627 r!7292)))) (= lambda!332785 lambda!332765))))

(declare-fun bs!1516518 () Bool)

(assert (= bs!1516518 (and b!6108545 b!6108369)))

(assert (=> bs!1516518 (not (= lambda!332785 lambda!332781))))

(declare-fun bs!1516519 () Bool)

(assert (= bs!1516519 (and b!6108545 b!6108544)))

(assert (=> bs!1516519 (not (= lambda!332785 lambda!332784))))

(declare-fun bs!1516520 () Bool)

(assert (= bs!1516520 (and b!6108545 b!6107126)))

(assert (=> bs!1516520 (not (= lambda!332785 lambda!332764))))

(declare-fun bs!1516521 () Bool)

(assert (= bs!1516521 (and b!6108545 d!1914040)))

(assert (=> bs!1516521 (not (= lambda!332785 lambda!332762))))

(declare-fun bs!1516522 () Bool)

(assert (= bs!1516522 (and b!6108545 d!1913726)))

(assert (=> bs!1516522 (= (and (= (regOne!32626 (regTwo!32627 (regOne!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regTwo!32627 (regOne!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332785 lambda!332716))))

(declare-fun bs!1516523 () Bool)

(assert (= bs!1516523 (and b!6108545 b!6105694)))

(assert (=> bs!1516523 (not (= lambda!332785 lambda!332672))))

(assert (=> bs!1516521 (= (and (= (regOne!32626 (regTwo!32627 (regOne!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regTwo!32627 (regOne!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332785 lambda!332763))))

(declare-fun bs!1516524 () Bool)

(assert (= bs!1516524 (and b!6108545 b!6106935)))

(assert (=> bs!1516524 (not (= lambda!332785 lambda!332753))))

(declare-fun bs!1516525 () Bool)

(assert (= bs!1516525 (and b!6108545 d!1913938)))

(assert (=> bs!1516525 (not (= lambda!332785 lambda!332750))))

(assert (=> bs!1516522 (not (= lambda!332785 lambda!332715))))

(declare-fun bs!1516526 () Bool)

(assert (= bs!1516526 (and b!6108545 b!6106172)))

(assert (=> bs!1516526 (not (= lambda!332785 lambda!332725))))

(declare-fun bs!1516527 () Bool)

(assert (= bs!1516527 (and b!6108545 b!6106936)))

(assert (=> bs!1516527 (= (and (= (regOne!32626 (regTwo!32627 (regOne!32627 r!7292))) (regOne!32626 (regOne!32627 r!7292))) (= (regTwo!32626 (regTwo!32627 (regOne!32627 r!7292))) (regTwo!32626 (regOne!32627 r!7292)))) (= lambda!332785 lambda!332754))))

(assert (=> bs!1516523 (= (and (= (regOne!32626 (regTwo!32627 (regOne!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regTwo!32627 (regOne!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332785 lambda!332673))))

(declare-fun bs!1516528 () Bool)

(assert (= bs!1516528 (and b!6108545 b!6108370)))

(assert (=> bs!1516528 (= (and (= (regOne!32626 (regTwo!32627 (regOne!32627 r!7292))) (regOne!32626 (regTwo!32627 (regTwo!32627 r!7292)))) (= (regTwo!32626 (regTwo!32627 (regOne!32627 r!7292))) (regTwo!32626 (regTwo!32627 (regTwo!32627 r!7292))))) (= lambda!332785 lambda!332782))))

(assert (=> b!6108545 true))

(assert (=> b!6108545 true))

(declare-fun d!1914506 () Bool)

(declare-fun c!1097489 () Bool)

(assert (=> d!1914506 (= c!1097489 ((_ is EmptyExpr!16057) (regTwo!32627 (regOne!32627 r!7292))))))

(declare-fun e!3725039 () Bool)

(assert (=> d!1914506 (= (matchRSpec!3158 (regTwo!32627 (regOne!32627 r!7292)) s!2326) e!3725039)))

(declare-fun call!505411 () Bool)

(declare-fun bm!505405 () Bool)

(declare-fun c!1097491 () Bool)

(assert (=> bm!505405 (= call!505411 (Exists!3127 (ite c!1097491 lambda!332784 lambda!332785)))))

(declare-fun b!6108543 () Bool)

(declare-fun e!3725041 () Bool)

(declare-fun e!3725043 () Bool)

(assert (=> b!6108543 (= e!3725041 e!3725043)))

(assert (=> b!6108543 (= c!1097491 ((_ is Star!16057) (regTwo!32627 (regOne!32627 r!7292))))))

(declare-fun e!3725045 () Bool)

(assert (=> b!6108544 (= e!3725045 call!505411)))

(assert (=> b!6108545 (= e!3725043 call!505411)))

(declare-fun b!6108546 () Bool)

(declare-fun res!2533934 () Bool)

(assert (=> b!6108546 (=> res!2533934 e!3725045)))

(declare-fun call!505410 () Bool)

(assert (=> b!6108546 (= res!2533934 call!505410)))

(assert (=> b!6108546 (= e!3725043 e!3725045)))

(declare-fun b!6108547 () Bool)

(declare-fun e!3725044 () Bool)

(assert (=> b!6108547 (= e!3725041 e!3725044)))

(declare-fun res!2533932 () Bool)

(assert (=> b!6108547 (= res!2533932 (matchRSpec!3158 (regOne!32627 (regTwo!32627 (regOne!32627 r!7292))) s!2326))))

(assert (=> b!6108547 (=> res!2533932 e!3725044)))

(declare-fun bm!505406 () Bool)

(assert (=> bm!505406 (= call!505410 (isEmpty!36274 s!2326))))

(declare-fun b!6108548 () Bool)

(declare-fun e!3725040 () Bool)

(assert (=> b!6108548 (= e!3725040 (= s!2326 (Cons!64348 (c!1096851 (regTwo!32627 (regOne!32627 r!7292))) Nil!64348)))))

(declare-fun b!6108549 () Bool)

(declare-fun c!1097490 () Bool)

(assert (=> b!6108549 (= c!1097490 ((_ is Union!16057) (regTwo!32627 (regOne!32627 r!7292))))))

(assert (=> b!6108549 (= e!3725040 e!3725041)))

(declare-fun b!6108550 () Bool)

(declare-fun e!3725042 () Bool)

(assert (=> b!6108550 (= e!3725039 e!3725042)))

(declare-fun res!2533933 () Bool)

(assert (=> b!6108550 (= res!2533933 (not ((_ is EmptyLang!16057) (regTwo!32627 (regOne!32627 r!7292)))))))

(assert (=> b!6108550 (=> (not res!2533933) (not e!3725042))))

(declare-fun b!6108551 () Bool)

(assert (=> b!6108551 (= e!3725044 (matchRSpec!3158 (regTwo!32627 (regTwo!32627 (regOne!32627 r!7292))) s!2326))))

(declare-fun b!6108552 () Bool)

(declare-fun c!1097488 () Bool)

(assert (=> b!6108552 (= c!1097488 ((_ is ElementMatch!16057) (regTwo!32627 (regOne!32627 r!7292))))))

(assert (=> b!6108552 (= e!3725042 e!3725040)))

(declare-fun b!6108553 () Bool)

(assert (=> b!6108553 (= e!3725039 call!505410)))

(assert (= (and d!1914506 c!1097489) b!6108553))

(assert (= (and d!1914506 (not c!1097489)) b!6108550))

(assert (= (and b!6108550 res!2533933) b!6108552))

(assert (= (and b!6108552 c!1097488) b!6108548))

(assert (= (and b!6108552 (not c!1097488)) b!6108549))

(assert (= (and b!6108549 c!1097490) b!6108547))

(assert (= (and b!6108549 (not c!1097490)) b!6108543))

(assert (= (and b!6108547 (not res!2533932)) b!6108551))

(assert (= (and b!6108543 c!1097491) b!6108546))

(assert (= (and b!6108543 (not c!1097491)) b!6108545))

(assert (= (and b!6108546 (not res!2533934)) b!6108544))

(assert (= (or b!6108544 b!6108545) bm!505405))

(assert (= (or b!6108553 b!6108546) bm!505406))

(declare-fun m!6958786 () Bool)

(assert (=> bm!505405 m!6958786))

(declare-fun m!6958788 () Bool)

(assert (=> b!6108547 m!6958788))

(assert (=> bm!505406 m!6957084))

(declare-fun m!6958790 () Bool)

(assert (=> b!6108551 m!6958790))

(assert (=> b!6106942 d!1914506))

(declare-fun d!1914508 () Bool)

(assert (=> d!1914508 (= (isEmpty!36269 (tail!11720 (t!377923 (exprs!5941 (h!70795 zl!343))))) ((_ is Nil!64346) (tail!11720 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(assert (=> b!6106989 d!1914508))

(declare-fun d!1914510 () Bool)

(assert (=> d!1914510 (= (tail!11720 (t!377923 (exprs!5941 (h!70795 zl!343)))) (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343)))))))

(assert (=> b!6106989 d!1914510))

(declare-fun d!1914512 () Bool)

(declare-fun lt!2329861 () Int)

(assert (=> d!1914512 (>= lt!2329861 0)))

(declare-fun e!3725083 () Int)

(assert (=> d!1914512 (= lt!2329861 e!3725083)))

(declare-fun c!1097492 () Bool)

(assert (=> d!1914512 (= c!1097492 ((_ is Nil!64348) lt!2329793))))

(assert (=> d!1914512 (= (size!40202 lt!2329793) lt!2329861)))

(declare-fun b!6108687 () Bool)

(assert (=> b!6108687 (= e!3725083 0)))

(declare-fun b!6108688 () Bool)

(assert (=> b!6108688 (= e!3725083 (+ 1 (size!40202 (t!377925 lt!2329793))))))

(assert (= (and d!1914512 c!1097492) b!6108687))

(assert (= (and d!1914512 (not c!1097492)) b!6108688))

(declare-fun m!6958792 () Bool)

(assert (=> b!6108688 m!6958792))

(assert (=> b!6106904 d!1914512))

(declare-fun d!1914514 () Bool)

(declare-fun lt!2329862 () Int)

(assert (=> d!1914514 (>= lt!2329862 0)))

(declare-fun e!3725086 () Int)

(assert (=> d!1914514 (= lt!2329862 e!3725086)))

(declare-fun c!1097493 () Bool)

(assert (=> d!1914514 (= c!1097493 ((_ is Nil!64348) Nil!64348))))

(assert (=> d!1914514 (= (size!40202 Nil!64348) lt!2329862)))

(declare-fun b!6108697 () Bool)

(assert (=> b!6108697 (= e!3725086 0)))

(declare-fun b!6108698 () Bool)

(assert (=> b!6108698 (= e!3725086 (+ 1 (size!40202 (t!377925 Nil!64348))))))

(assert (= (and d!1914514 c!1097493) b!6108697))

(assert (= (and d!1914514 (not c!1097493)) b!6108698))

(declare-fun m!6958794 () Bool)

(assert (=> b!6108698 m!6958794))

(assert (=> b!6106904 d!1914514))

(declare-fun d!1914516 () Bool)

(declare-fun lt!2329863 () Int)

(assert (=> d!1914516 (>= lt!2329863 0)))

(declare-fun e!3725088 () Int)

(assert (=> d!1914516 (= lt!2329863 e!3725088)))

(declare-fun c!1097494 () Bool)

(assert (=> d!1914516 (= c!1097494 ((_ is Nil!64348) (Cons!64348 (h!70796 s!2326) Nil!64348)))))

(assert (=> d!1914516 (= (size!40202 (Cons!64348 (h!70796 s!2326) Nil!64348)) lt!2329863)))

(declare-fun b!6108703 () Bool)

(assert (=> b!6108703 (= e!3725088 0)))

(declare-fun b!6108704 () Bool)

(assert (=> b!6108704 (= e!3725088 (+ 1 (size!40202 (t!377925 (Cons!64348 (h!70796 s!2326) Nil!64348)))))))

(assert (= (and d!1914516 c!1097494) b!6108703))

(assert (= (and d!1914516 (not c!1097494)) b!6108704))

(declare-fun m!6958796 () Bool)

(assert (=> b!6108704 m!6958796))

(assert (=> b!6106904 d!1914516))

(declare-fun b!6108709 () Bool)

(declare-fun e!3725095 () Bool)

(declare-fun e!3725096 () Bool)

(assert (=> b!6108709 (= e!3725095 e!3725096)))

(declare-fun c!1097495 () Bool)

(assert (=> b!6108709 (= c!1097495 ((_ is Union!16057) (ite c!1097194 (regOne!32627 lt!2329762) (regOne!32626 lt!2329762))))))

(declare-fun b!6108710 () Bool)

(declare-fun e!3725094 () Bool)

(declare-fun call!505413 () Bool)

(assert (=> b!6108710 (= e!3725094 call!505413)))

(declare-fun b!6108711 () Bool)

(declare-fun e!3725092 () Bool)

(assert (=> b!6108711 (= e!3725092 e!3725095)))

(declare-fun c!1097496 () Bool)

(assert (=> b!6108711 (= c!1097496 ((_ is Star!16057) (ite c!1097194 (regOne!32627 lt!2329762) (regOne!32626 lt!2329762))))))

(declare-fun bm!505407 () Bool)

(declare-fun call!505412 () Bool)

(assert (=> bm!505407 (= call!505413 call!505412)))

(declare-fun b!6108712 () Bool)

(declare-fun res!2533937 () Bool)

(declare-fun e!3725091 () Bool)

(assert (=> b!6108712 (=> res!2533937 e!3725091)))

(assert (=> b!6108712 (= res!2533937 (not ((_ is Concat!24902) (ite c!1097194 (regOne!32627 lt!2329762) (regOne!32626 lt!2329762)))))))

(assert (=> b!6108712 (= e!3725096 e!3725091)))

(declare-fun b!6108713 () Bool)

(declare-fun e!3725093 () Bool)

(assert (=> b!6108713 (= e!3725093 call!505413)))

(declare-fun bm!505408 () Bool)

(assert (=> bm!505408 (= call!505412 (validRegex!7793 (ite c!1097496 (reg!16386 (ite c!1097194 (regOne!32627 lt!2329762) (regOne!32626 lt!2329762))) (ite c!1097495 (regTwo!32627 (ite c!1097194 (regOne!32627 lt!2329762) (regOne!32626 lt!2329762))) (regTwo!32626 (ite c!1097194 (regOne!32627 lt!2329762) (regOne!32626 lt!2329762)))))))))

(declare-fun b!6108714 () Bool)

(declare-fun e!3725090 () Bool)

(assert (=> b!6108714 (= e!3725095 e!3725090)))

(declare-fun res!2533938 () Bool)

(assert (=> b!6108714 (= res!2533938 (not (nullable!6050 (reg!16386 (ite c!1097194 (regOne!32627 lt!2329762) (regOne!32626 lt!2329762))))))))

(assert (=> b!6108714 (=> (not res!2533938) (not e!3725090))))

(declare-fun b!6108715 () Bool)

(assert (=> b!6108715 (= e!3725091 e!3725093)))

(declare-fun res!2533939 () Bool)

(assert (=> b!6108715 (=> (not res!2533939) (not e!3725093))))

(declare-fun call!505414 () Bool)

(assert (=> b!6108715 (= res!2533939 call!505414)))

(declare-fun b!6108716 () Bool)

(assert (=> b!6108716 (= e!3725090 call!505412)))

(declare-fun b!6108717 () Bool)

(declare-fun res!2533935 () Bool)

(assert (=> b!6108717 (=> (not res!2533935) (not e!3725094))))

(assert (=> b!6108717 (= res!2533935 call!505414)))

(assert (=> b!6108717 (= e!3725096 e!3725094)))

(declare-fun bm!505409 () Bool)

(assert (=> bm!505409 (= call!505414 (validRegex!7793 (ite c!1097495 (regOne!32627 (ite c!1097194 (regOne!32627 lt!2329762) (regOne!32626 lt!2329762))) (regOne!32626 (ite c!1097194 (regOne!32627 lt!2329762) (regOne!32626 lt!2329762))))))))

(declare-fun d!1914518 () Bool)

(declare-fun res!2533936 () Bool)

(assert (=> d!1914518 (=> res!2533936 e!3725092)))

(assert (=> d!1914518 (= res!2533936 ((_ is ElementMatch!16057) (ite c!1097194 (regOne!32627 lt!2329762) (regOne!32626 lt!2329762))))))

(assert (=> d!1914518 (= (validRegex!7793 (ite c!1097194 (regOne!32627 lt!2329762) (regOne!32626 lt!2329762))) e!3725092)))

(assert (= (and d!1914518 (not res!2533936)) b!6108711))

(assert (= (and b!6108711 c!1097496) b!6108714))

(assert (= (and b!6108711 (not c!1097496)) b!6108709))

(assert (= (and b!6108714 res!2533938) b!6108716))

(assert (= (and b!6108709 c!1097495) b!6108717))

(assert (= (and b!6108709 (not c!1097495)) b!6108712))

(assert (= (and b!6108717 res!2533935) b!6108710))

(assert (= (and b!6108712 (not res!2533937)) b!6108715))

(assert (= (and b!6108715 res!2533939) b!6108713))

(assert (= (or b!6108710 b!6108713) bm!505407))

(assert (= (or b!6108717 b!6108715) bm!505409))

(assert (= (or b!6108716 bm!505407) bm!505408))

(declare-fun m!6958798 () Bool)

(assert (=> bm!505408 m!6958798))

(declare-fun m!6958800 () Bool)

(assert (=> b!6108714 m!6958800))

(declare-fun m!6958802 () Bool)

(assert (=> bm!505409 m!6958802))

(assert (=> bm!505170 d!1914518))

(declare-fun d!1914520 () Bool)

(assert (not d!1914520))

(assert (=> b!6107109 d!1914520))

(declare-fun d!1914522 () Bool)

(assert (not d!1914522))

(assert (=> b!6107109 d!1914522))

(declare-fun b!6108751 () Bool)

(declare-fun e!3725111 () (InoxSet Context!10882))

(declare-fun e!3725110 () (InoxSet Context!10882))

(assert (=> b!6108751 (= e!3725111 e!3725110)))

(declare-fun c!1097498 () Bool)

(assert (=> b!6108751 (= c!1097498 ((_ is Union!16057) (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))

(declare-fun c!1097500 () Bool)

(declare-fun c!1097501 () Bool)

(declare-fun bm!505410 () Bool)

(declare-fun call!505415 () List!64470)

(assert (=> bm!505410 (= call!505415 ($colon$colon!1934 (exprs!5941 (ite c!1097156 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (Context!10883 call!505142))) (ite (or c!1097500 c!1097501) (regTwo!32626 (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))) (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))))

(declare-fun b!6108752 () Bool)

(declare-fun e!3725107 () (InoxSet Context!10882))

(declare-fun call!505418 () (InoxSet Context!10882))

(assert (=> b!6108752 (= e!3725107 call!505418)))

(declare-fun bm!505411 () Bool)

(declare-fun call!505416 () (InoxSet Context!10882))

(declare-fun call!505420 () (InoxSet Context!10882))

(assert (=> bm!505411 (= call!505416 call!505420)))

(declare-fun b!6108753 () Bool)

(declare-fun call!505419 () (InoxSet Context!10882))

(assert (=> b!6108753 (= e!3725110 ((_ map or) call!505420 call!505419))))

(declare-fun bm!505412 () Bool)

(assert (=> bm!505412 (= call!505418 call!505416)))

(declare-fun b!6108754 () Bool)

(declare-fun e!3725108 () (InoxSet Context!10882))

(assert (=> b!6108754 (= e!3725108 ((_ map or) call!505419 call!505416))))

(declare-fun b!6108755 () Bool)

(declare-fun e!3725106 () Bool)

(assert (=> b!6108755 (= e!3725106 (nullable!6050 (regOne!32626 (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))))

(declare-fun c!1097497 () Bool)

(declare-fun d!1914524 () Bool)

(assert (=> d!1914524 (= c!1097497 (and ((_ is ElementMatch!16057) (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))) (= (c!1096851 (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))) (h!70796 s!2326))))))

(assert (=> d!1914524 (= (derivationStepZipperDown!1305 (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))) (ite c!1097156 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (Context!10883 call!505142)) (h!70796 s!2326)) e!3725111)))

(declare-fun bm!505413 () Bool)

(assert (=> bm!505413 (= call!505419 (derivationStepZipperDown!1305 (ite c!1097498 (regTwo!32627 (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))) (regOne!32626 (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (ite c!1097498 (ite c!1097156 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (Context!10883 call!505142)) (Context!10883 call!505415)) (h!70796 s!2326)))))

(declare-fun b!6108756 () Bool)

(assert (=> b!6108756 (= e!3725111 (store ((as const (Array Context!10882 Bool)) false) (ite c!1097156 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (Context!10883 call!505142)) true))))

(declare-fun b!6108757 () Bool)

(assert (=> b!6108757 (= c!1097500 e!3725106)))

(declare-fun res!2533940 () Bool)

(assert (=> b!6108757 (=> (not res!2533940) (not e!3725106))))

(assert (=> b!6108757 (= res!2533940 ((_ is Concat!24902) (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))

(assert (=> b!6108757 (= e!3725110 e!3725108)))

(declare-fun b!6108758 () Bool)

(declare-fun c!1097499 () Bool)

(assert (=> b!6108758 (= c!1097499 ((_ is Star!16057) (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))

(declare-fun e!3725109 () (InoxSet Context!10882))

(assert (=> b!6108758 (= e!3725107 e!3725109)))

(declare-fun bm!505414 () Bool)

(declare-fun call!505417 () List!64470)

(assert (=> bm!505414 (= call!505420 (derivationStepZipperDown!1305 (ite c!1097498 (regOne!32627 (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))) (ite c!1097500 (regTwo!32626 (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))) (ite c!1097501 (regOne!32626 (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))) (reg!16386 (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))) (ite (or c!1097498 c!1097500) (ite c!1097156 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (Context!10883 call!505142)) (Context!10883 call!505417)) (h!70796 s!2326)))))

(declare-fun bm!505415 () Bool)

(assert (=> bm!505415 (= call!505417 call!505415)))

(declare-fun b!6108759 () Bool)

(assert (=> b!6108759 (= e!3725109 call!505418)))

(declare-fun b!6108760 () Bool)

(assert (=> b!6108760 (= e!3725108 e!3725107)))

(assert (=> b!6108760 (= c!1097501 ((_ is Concat!24902) (ite c!1097156 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))

(declare-fun b!6108761 () Bool)

(assert (=> b!6108761 (= e!3725109 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1914524 c!1097497) b!6108756))

(assert (= (and d!1914524 (not c!1097497)) b!6108751))

(assert (= (and b!6108751 c!1097498) b!6108753))

(assert (= (and b!6108751 (not c!1097498)) b!6108757))

(assert (= (and b!6108757 res!2533940) b!6108755))

(assert (= (and b!6108757 c!1097500) b!6108754))

(assert (= (and b!6108757 (not c!1097500)) b!6108760))

(assert (= (and b!6108760 c!1097501) b!6108752))

(assert (= (and b!6108760 (not c!1097501)) b!6108758))

(assert (= (and b!6108758 c!1097499) b!6108759))

(assert (= (and b!6108758 (not c!1097499)) b!6108761))

(assert (= (or b!6108752 b!6108759) bm!505415))

(assert (= (or b!6108752 b!6108759) bm!505412))

(assert (= (or b!6108754 bm!505415) bm!505410))

(assert (= (or b!6108754 bm!505412) bm!505411))

(assert (= (or b!6108753 b!6108754) bm!505413))

(assert (= (or b!6108753 bm!505411) bm!505414))

(declare-fun m!6958804 () Bool)

(assert (=> b!6108755 m!6958804))

(declare-fun m!6958806 () Bool)

(assert (=> bm!505410 m!6958806))

(declare-fun m!6958808 () Bool)

(assert (=> bm!505413 m!6958808))

(declare-fun m!6958810 () Bool)

(assert (=> b!6108756 m!6958810))

(declare-fun m!6958812 () Bool)

(assert (=> bm!505414 m!6958812))

(assert (=> bm!505140 d!1914524))

(declare-fun d!1914528 () Bool)

(assert (=> d!1914528 true))

(assert (=> d!1914528 true))

(declare-fun res!2533941 () Bool)

(assert (=> d!1914528 (= (choose!45394 lambda!332715) res!2533941)))

(assert (=> d!1914036 d!1914528))

(declare-fun d!1914532 () Bool)

(assert (=> d!1914532 (= (isEmpty!36274 (tail!11721 (_2!36339 (get!22188 lt!2329734)))) ((_ is Nil!64348) (tail!11721 (_2!36339 (get!22188 lt!2329734)))))))

(assert (=> b!6106922 d!1914532))

(declare-fun d!1914536 () Bool)

(assert (=> d!1914536 (= (tail!11721 (_2!36339 (get!22188 lt!2329734))) (t!377925 (_2!36339 (get!22188 lt!2329734))))))

(assert (=> b!6106922 d!1914536))

(declare-fun d!1914538 () Bool)

(assert (=> d!1914538 (= (nullable!6050 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))) (nullableFct!2014 (regOne!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))

(declare-fun bs!1516535 () Bool)

(assert (= bs!1516535 d!1914538))

(declare-fun m!6958822 () Bool)

(assert (=> bs!1516535 m!6958822))

(assert (=> b!6107070 d!1914538))

(declare-fun b!6108787 () Bool)

(declare-fun e!3725124 () Bool)

(declare-fun e!3725125 () Bool)

(assert (=> b!6108787 (= e!3725124 e!3725125)))

(declare-fun c!1097502 () Bool)

(assert (=> b!6108787 (= c!1097502 ((_ is Union!16057) (ite c!1097183 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (ite c!1097182 (regTwo!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regTwo!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))))))

(declare-fun b!6108788 () Bool)

(declare-fun e!3725123 () Bool)

(declare-fun call!505422 () Bool)

(assert (=> b!6108788 (= e!3725123 call!505422)))

(declare-fun b!6108789 () Bool)

(declare-fun e!3725121 () Bool)

(assert (=> b!6108789 (= e!3725121 e!3725124)))

(declare-fun c!1097503 () Bool)

(assert (=> b!6108789 (= c!1097503 ((_ is Star!16057) (ite c!1097183 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (ite c!1097182 (regTwo!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regTwo!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))))))

(declare-fun bm!505416 () Bool)

(declare-fun call!505421 () Bool)

(assert (=> bm!505416 (= call!505422 call!505421)))

(declare-fun b!6108790 () Bool)

(declare-fun res!2533944 () Bool)

(declare-fun e!3725120 () Bool)

(assert (=> b!6108790 (=> res!2533944 e!3725120)))

(assert (=> b!6108790 (= res!2533944 (not ((_ is Concat!24902) (ite c!1097183 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (ite c!1097182 (regTwo!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regTwo!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))))))))

(assert (=> b!6108790 (= e!3725125 e!3725120)))

(declare-fun b!6108791 () Bool)

(declare-fun e!3725122 () Bool)

(assert (=> b!6108791 (= e!3725122 call!505422)))

(declare-fun bm!505417 () Bool)

(assert (=> bm!505417 (= call!505421 (validRegex!7793 (ite c!1097503 (reg!16386 (ite c!1097183 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (ite c!1097182 (regTwo!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regTwo!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))) (ite c!1097502 (regTwo!32627 (ite c!1097183 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (ite c!1097182 (regTwo!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regTwo!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))) (regTwo!32626 (ite c!1097183 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (ite c!1097182 (regTwo!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regTwo!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))))))))))))

(declare-fun b!6108792 () Bool)

(declare-fun e!3725119 () Bool)

(assert (=> b!6108792 (= e!3725124 e!3725119)))

(declare-fun res!2533945 () Bool)

(assert (=> b!6108792 (= res!2533945 (not (nullable!6050 (reg!16386 (ite c!1097183 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (ite c!1097182 (regTwo!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regTwo!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))))))))

(assert (=> b!6108792 (=> (not res!2533945) (not e!3725119))))

(declare-fun b!6108793 () Bool)

(assert (=> b!6108793 (= e!3725120 e!3725122)))

(declare-fun res!2533946 () Bool)

(assert (=> b!6108793 (=> (not res!2533946) (not e!3725122))))

(declare-fun call!505423 () Bool)

(assert (=> b!6108793 (= res!2533946 call!505423)))

(declare-fun b!6108794 () Bool)

(assert (=> b!6108794 (= e!3725119 call!505421)))

(declare-fun b!6108795 () Bool)

(declare-fun res!2533942 () Bool)

(assert (=> b!6108795 (=> (not res!2533942) (not e!3725123))))

(assert (=> b!6108795 (= res!2533942 call!505423)))

(assert (=> b!6108795 (= e!3725125 e!3725123)))

(declare-fun bm!505418 () Bool)

(assert (=> bm!505418 (= call!505423 (validRegex!7793 (ite c!1097502 (regOne!32627 (ite c!1097183 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (ite c!1097182 (regTwo!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regTwo!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))) (regOne!32626 (ite c!1097183 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (ite c!1097182 (regTwo!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regTwo!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))))))))

(declare-fun d!1914546 () Bool)

(declare-fun res!2533943 () Bool)

(assert (=> d!1914546 (=> res!2533943 e!3725121)))

(assert (=> d!1914546 (= res!2533943 ((_ is ElementMatch!16057) (ite c!1097183 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (ite c!1097182 (regTwo!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regTwo!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))))))

(assert (=> d!1914546 (= (validRegex!7793 (ite c!1097183 (reg!16386 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (ite c!1097182 (regTwo!32627 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292)))) (regTwo!32626 (ite c!1096961 (reg!16386 r!7292) (ite c!1096960 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))) e!3725121)))

(assert (= (and d!1914546 (not res!2533943)) b!6108789))

(assert (= (and b!6108789 c!1097503) b!6108792))

(assert (= (and b!6108789 (not c!1097503)) b!6108787))

(assert (= (and b!6108792 res!2533945) b!6108794))

(assert (= (and b!6108787 c!1097502) b!6108795))

(assert (= (and b!6108787 (not c!1097502)) b!6108790))

(assert (= (and b!6108795 res!2533942) b!6108788))

(assert (= (and b!6108790 (not res!2533944)) b!6108793))

(assert (= (and b!6108793 res!2533946) b!6108791))

(assert (= (or b!6108788 b!6108791) bm!505416))

(assert (= (or b!6108795 b!6108793) bm!505418))

(assert (= (or b!6108794 bm!505416) bm!505417))

(declare-fun m!6958830 () Bool)

(assert (=> bm!505417 m!6958830))

(declare-fun m!6958832 () Bool)

(assert (=> b!6108792 m!6958832))

(declare-fun m!6958834 () Bool)

(assert (=> bm!505418 m!6958834))

(assert (=> bm!505154 d!1914546))

(declare-fun d!1914556 () Bool)

(declare-fun res!2533947 () Bool)

(declare-fun e!3725126 () Bool)

(assert (=> d!1914556 (=> res!2533947 e!3725126)))

(assert (=> d!1914556 (= res!2533947 ((_ is Nil!64346) (exprs!5941 (h!70795 (t!377924 zl!343)))))))

(assert (=> d!1914556 (= (forall!15178 (exprs!5941 (h!70795 (t!377924 zl!343))) lambda!332752) e!3725126)))

(declare-fun b!6108796 () Bool)

(declare-fun e!3725127 () Bool)

(assert (=> b!6108796 (= e!3725126 e!3725127)))

(declare-fun res!2533948 () Bool)

(assert (=> b!6108796 (=> (not res!2533948) (not e!3725127))))

(assert (=> b!6108796 (= res!2533948 (dynLambda!25338 lambda!332752 (h!70794 (exprs!5941 (h!70795 (t!377924 zl!343))))))))

(declare-fun b!6108797 () Bool)

(assert (=> b!6108797 (= e!3725127 (forall!15178 (t!377923 (exprs!5941 (h!70795 (t!377924 zl!343)))) lambda!332752))))

(assert (= (and d!1914556 (not res!2533947)) b!6108796))

(assert (= (and b!6108796 res!2533948) b!6108797))

(declare-fun b_lambda!232691 () Bool)

(assert (=> (not b_lambda!232691) (not b!6108796)))

(declare-fun m!6958836 () Bool)

(assert (=> b!6108796 m!6958836))

(declare-fun m!6958838 () Bool)

(assert (=> b!6108797 m!6958838))

(assert (=> d!1913970 d!1914556))

(declare-fun b!6108798 () Bool)

(declare-fun e!3725133 () (InoxSet Context!10882))

(declare-fun e!3725132 () (InoxSet Context!10882))

(assert (=> b!6108798 (= e!3725133 e!3725132)))

(declare-fun c!1097505 () Bool)

(assert (=> b!6108798 (= c!1097505 ((_ is Union!16057) (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))))

(declare-fun bm!505419 () Bool)

(declare-fun call!505424 () List!64470)

(declare-fun c!1097508 () Bool)

(declare-fun c!1097507 () Bool)

(assert (=> bm!505419 (= call!505424 ($colon$colon!1934 (exprs!5941 (ite (or c!1097156 c!1097158) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (Context!10883 call!505144))) (ite (or c!1097507 c!1097508) (regTwo!32626 (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))) (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))))))

(declare-fun b!6108799 () Bool)

(declare-fun e!3725129 () (InoxSet Context!10882))

(declare-fun call!505427 () (InoxSet Context!10882))

(assert (=> b!6108799 (= e!3725129 call!505427)))

(declare-fun bm!505420 () Bool)

(declare-fun call!505425 () (InoxSet Context!10882))

(declare-fun call!505429 () (InoxSet Context!10882))

(assert (=> bm!505420 (= call!505425 call!505429)))

(declare-fun b!6108800 () Bool)

(declare-fun call!505428 () (InoxSet Context!10882))

(assert (=> b!6108800 (= e!3725132 ((_ map or) call!505429 call!505428))))

(declare-fun bm!505421 () Bool)

(assert (=> bm!505421 (= call!505427 call!505425)))

(declare-fun b!6108801 () Bool)

(declare-fun e!3725130 () (InoxSet Context!10882))

(assert (=> b!6108801 (= e!3725130 ((_ map or) call!505428 call!505425))))

(declare-fun b!6108802 () Bool)

(declare-fun e!3725128 () Bool)

(assert (=> b!6108802 (= e!3725128 (nullable!6050 (regOne!32626 (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))))))

(declare-fun c!1097504 () Bool)

(declare-fun d!1914558 () Bool)

(assert (=> d!1914558 (= c!1097504 (and ((_ is ElementMatch!16057) (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))) (= (c!1096851 (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))) (h!70796 s!2326))))))

(assert (=> d!1914558 (= (derivationStepZipperDown!1305 (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (ite (or c!1097156 c!1097158) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (Context!10883 call!505144)) (h!70796 s!2326)) e!3725133)))

(declare-fun bm!505422 () Bool)

(assert (=> bm!505422 (= call!505428 (derivationStepZipperDown!1305 (ite c!1097505 (regTwo!32627 (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))) (regOne!32626 (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))) (ite c!1097505 (ite (or c!1097156 c!1097158) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (Context!10883 call!505144)) (Context!10883 call!505424)) (h!70796 s!2326)))))

(declare-fun b!6108803 () Bool)

(assert (=> b!6108803 (= e!3725133 (store ((as const (Array Context!10882 Bool)) false) (ite (or c!1097156 c!1097158) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (Context!10883 call!505144)) true))))

(declare-fun b!6108804 () Bool)

(assert (=> b!6108804 (= c!1097507 e!3725128)))

(declare-fun res!2533949 () Bool)

(assert (=> b!6108804 (=> (not res!2533949) (not e!3725128))))

(assert (=> b!6108804 (= res!2533949 ((_ is Concat!24902) (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))))

(assert (=> b!6108804 (= e!3725132 e!3725130)))

(declare-fun b!6108805 () Bool)

(declare-fun c!1097506 () Bool)

(assert (=> b!6108805 (= c!1097506 ((_ is Star!16057) (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))))

(declare-fun e!3725131 () (InoxSet Context!10882))

(assert (=> b!6108805 (= e!3725129 e!3725131)))

(declare-fun bm!505423 () Bool)

(declare-fun call!505426 () List!64470)

(assert (=> bm!505423 (= call!505429 (derivationStepZipperDown!1305 (ite c!1097505 (regOne!32627 (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))) (ite c!1097507 (regTwo!32626 (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))) (ite c!1097508 (regOne!32626 (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))) (reg!16386 (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))))) (ite (or c!1097505 c!1097507) (ite (or c!1097156 c!1097158) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (Context!10883 call!505144)) (Context!10883 call!505426)) (h!70796 s!2326)))))

(declare-fun bm!505424 () Bool)

(assert (=> bm!505424 (= call!505426 call!505424)))

(declare-fun b!6108806 () Bool)

(assert (=> b!6108806 (= e!3725131 call!505427)))

(declare-fun b!6108807 () Bool)

(assert (=> b!6108807 (= e!3725130 e!3725129)))

(assert (=> b!6108807 (= c!1097508 ((_ is Concat!24902) (ite c!1097156 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097158 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097159 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))))

(declare-fun b!6108808 () Bool)

(assert (=> b!6108808 (= e!3725131 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1914558 c!1097504) b!6108803))

(assert (= (and d!1914558 (not c!1097504)) b!6108798))

(assert (= (and b!6108798 c!1097505) b!6108800))

(assert (= (and b!6108798 (not c!1097505)) b!6108804))

(assert (= (and b!6108804 res!2533949) b!6108802))

(assert (= (and b!6108804 c!1097507) b!6108801))

(assert (= (and b!6108804 (not c!1097507)) b!6108807))

(assert (= (and b!6108807 c!1097508) b!6108799))

(assert (= (and b!6108807 (not c!1097508)) b!6108805))

(assert (= (and b!6108805 c!1097506) b!6108806))

(assert (= (and b!6108805 (not c!1097506)) b!6108808))

(assert (= (or b!6108799 b!6108806) bm!505424))

(assert (= (or b!6108799 b!6108806) bm!505421))

(assert (= (or b!6108801 bm!505424) bm!505419))

(assert (= (or b!6108801 bm!505421) bm!505420))

(assert (= (or b!6108800 b!6108801) bm!505422))

(assert (= (or b!6108800 bm!505420) bm!505423))

(declare-fun m!6958840 () Bool)

(assert (=> b!6108802 m!6958840))

(declare-fun m!6958842 () Bool)

(assert (=> bm!505419 m!6958842))

(declare-fun m!6958844 () Bool)

(assert (=> bm!505422 m!6958844))

(declare-fun m!6958846 () Bool)

(assert (=> b!6108803 m!6958846))

(declare-fun m!6958848 () Bool)

(assert (=> bm!505423 m!6958848))

(assert (=> bm!505141 d!1914558))

(assert (=> b!6106827 d!1914380))

(assert (=> b!6106827 d!1914382))

(declare-fun b!6108809 () Bool)

(declare-fun e!3725139 () Bool)

(declare-fun e!3725140 () Bool)

(assert (=> b!6108809 (= e!3725139 e!3725140)))

(declare-fun c!1097509 () Bool)

(assert (=> b!6108809 (= c!1097509 ((_ is Union!16057) (ite c!1097152 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097151 (regTwo!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regTwo!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))))))

(declare-fun b!6108810 () Bool)

(declare-fun e!3725138 () Bool)

(declare-fun call!505431 () Bool)

(assert (=> b!6108810 (= e!3725138 call!505431)))

(declare-fun b!6108811 () Bool)

(declare-fun e!3725136 () Bool)

(assert (=> b!6108811 (= e!3725136 e!3725139)))

(declare-fun c!1097510 () Bool)

(assert (=> b!6108811 (= c!1097510 ((_ is Star!16057) (ite c!1097152 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097151 (regTwo!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regTwo!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))))))

(declare-fun bm!505425 () Bool)

(declare-fun call!505430 () Bool)

(assert (=> bm!505425 (= call!505431 call!505430)))

(declare-fun b!6108812 () Bool)

(declare-fun res!2533952 () Bool)

(declare-fun e!3725135 () Bool)

(assert (=> b!6108812 (=> res!2533952 e!3725135)))

(assert (=> b!6108812 (= res!2533952 (not ((_ is Concat!24902) (ite c!1097152 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097151 (regTwo!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regTwo!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))))))))

(assert (=> b!6108812 (= e!3725140 e!3725135)))

(declare-fun b!6108813 () Bool)

(declare-fun e!3725137 () Bool)

(assert (=> b!6108813 (= e!3725137 call!505431)))

(declare-fun bm!505426 () Bool)

(assert (=> bm!505426 (= call!505430 (validRegex!7793 (ite c!1097510 (reg!16386 (ite c!1097152 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097151 (regTwo!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regTwo!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))) (ite c!1097509 (regTwo!32627 (ite c!1097152 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097151 (regTwo!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regTwo!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))) (regTwo!32626 (ite c!1097152 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097151 (regTwo!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regTwo!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))))))))))

(declare-fun b!6108814 () Bool)

(declare-fun e!3725134 () Bool)

(assert (=> b!6108814 (= e!3725139 e!3725134)))

(declare-fun res!2533953 () Bool)

(assert (=> b!6108814 (= res!2533953 (not (nullable!6050 (reg!16386 (ite c!1097152 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097151 (regTwo!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regTwo!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))))))))

(assert (=> b!6108814 (=> (not res!2533953) (not e!3725134))))

(declare-fun b!6108815 () Bool)

(assert (=> b!6108815 (= e!3725135 e!3725137)))

(declare-fun res!2533954 () Bool)

(assert (=> b!6108815 (=> (not res!2533954) (not e!3725137))))

(declare-fun call!505432 () Bool)

(assert (=> b!6108815 (= res!2533954 call!505432)))

(declare-fun b!6108816 () Bool)

(assert (=> b!6108816 (= e!3725134 call!505430)))

(declare-fun b!6108817 () Bool)

(declare-fun res!2533950 () Bool)

(assert (=> b!6108817 (=> (not res!2533950) (not e!3725138))))

(assert (=> b!6108817 (= res!2533950 call!505432)))

(assert (=> b!6108817 (= e!3725140 e!3725138)))

(declare-fun bm!505427 () Bool)

(assert (=> bm!505427 (= call!505432 (validRegex!7793 (ite c!1097509 (regOne!32627 (ite c!1097152 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097151 (regTwo!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regTwo!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))) (regOne!32626 (ite c!1097152 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097151 (regTwo!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regTwo!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))))))))

(declare-fun d!1914560 () Bool)

(declare-fun res!2533951 () Bool)

(assert (=> d!1914560 (=> res!2533951 e!3725136)))

(assert (=> d!1914560 (= res!2533951 ((_ is ElementMatch!16057) (ite c!1097152 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097151 (regTwo!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regTwo!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))))))

(assert (=> d!1914560 (= (validRegex!7793 (ite c!1097152 (reg!16386 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (ite c!1097151 (regTwo!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regTwo!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))) e!3725136)))

(assert (= (and d!1914560 (not res!2533951)) b!6108811))

(assert (= (and b!6108811 c!1097510) b!6108814))

(assert (= (and b!6108811 (not c!1097510)) b!6108809))

(assert (= (and b!6108814 res!2533953) b!6108816))

(assert (= (and b!6108809 c!1097509) b!6108817))

(assert (= (and b!6108809 (not c!1097509)) b!6108812))

(assert (= (and b!6108817 res!2533950) b!6108810))

(assert (= (and b!6108812 (not res!2533952)) b!6108815))

(assert (= (and b!6108815 res!2533954) b!6108813))

(assert (= (or b!6108810 b!6108813) bm!505425))

(assert (= (or b!6108817 b!6108815) bm!505427))

(assert (= (or b!6108816 bm!505425) bm!505426))

(declare-fun m!6958850 () Bool)

(assert (=> bm!505426 m!6958850))

(declare-fun m!6958852 () Bool)

(assert (=> b!6108814 m!6958852))

(declare-fun m!6958854 () Bool)

(assert (=> bm!505427 m!6958854))

(assert (=> bm!505132 d!1914560))

(declare-fun b!6108818 () Bool)

(declare-fun e!3725146 () Bool)

(declare-fun e!3725147 () Bool)

(assert (=> b!6108818 (= e!3725146 e!3725147)))

(declare-fun c!1097511 () Bool)

(assert (=> b!6108818 (= c!1097511 ((_ is Union!16057) lt!2329789))))

(declare-fun b!6108819 () Bool)

(declare-fun e!3725145 () Bool)

(declare-fun call!505434 () Bool)

(assert (=> b!6108819 (= e!3725145 call!505434)))

(declare-fun b!6108820 () Bool)

(declare-fun e!3725143 () Bool)

(assert (=> b!6108820 (= e!3725143 e!3725146)))

(declare-fun c!1097512 () Bool)

(assert (=> b!6108820 (= c!1097512 ((_ is Star!16057) lt!2329789))))

(declare-fun bm!505428 () Bool)

(declare-fun call!505433 () Bool)

(assert (=> bm!505428 (= call!505434 call!505433)))

(declare-fun b!6108821 () Bool)

(declare-fun res!2533957 () Bool)

(declare-fun e!3725142 () Bool)

(assert (=> b!6108821 (=> res!2533957 e!3725142)))

(assert (=> b!6108821 (= res!2533957 (not ((_ is Concat!24902) lt!2329789)))))

(assert (=> b!6108821 (= e!3725147 e!3725142)))

(declare-fun b!6108822 () Bool)

(declare-fun e!3725144 () Bool)

(assert (=> b!6108822 (= e!3725144 call!505434)))

(declare-fun bm!505429 () Bool)

(assert (=> bm!505429 (= call!505433 (validRegex!7793 (ite c!1097512 (reg!16386 lt!2329789) (ite c!1097511 (regTwo!32627 lt!2329789) (regTwo!32626 lt!2329789)))))))

(declare-fun b!6108823 () Bool)

(declare-fun e!3725141 () Bool)

(assert (=> b!6108823 (= e!3725146 e!3725141)))

(declare-fun res!2533958 () Bool)

(assert (=> b!6108823 (= res!2533958 (not (nullable!6050 (reg!16386 lt!2329789))))))

(assert (=> b!6108823 (=> (not res!2533958) (not e!3725141))))

(declare-fun b!6108824 () Bool)

(assert (=> b!6108824 (= e!3725142 e!3725144)))

(declare-fun res!2533959 () Bool)

(assert (=> b!6108824 (=> (not res!2533959) (not e!3725144))))

(declare-fun call!505435 () Bool)

(assert (=> b!6108824 (= res!2533959 call!505435)))

(declare-fun b!6108825 () Bool)

(assert (=> b!6108825 (= e!3725141 call!505433)))

(declare-fun b!6108826 () Bool)

(declare-fun res!2533955 () Bool)

(assert (=> b!6108826 (=> (not res!2533955) (not e!3725145))))

(assert (=> b!6108826 (= res!2533955 call!505435)))

(assert (=> b!6108826 (= e!3725147 e!3725145)))

(declare-fun bm!505430 () Bool)

(assert (=> bm!505430 (= call!505435 (validRegex!7793 (ite c!1097511 (regOne!32627 lt!2329789) (regOne!32626 lt!2329789))))))

(declare-fun d!1914562 () Bool)

(declare-fun res!2533956 () Bool)

(assert (=> d!1914562 (=> res!2533956 e!3725143)))

(assert (=> d!1914562 (= res!2533956 ((_ is ElementMatch!16057) lt!2329789))))

(assert (=> d!1914562 (= (validRegex!7793 lt!2329789) e!3725143)))

(assert (= (and d!1914562 (not res!2533956)) b!6108820))

(assert (= (and b!6108820 c!1097512) b!6108823))

(assert (= (and b!6108820 (not c!1097512)) b!6108818))

(assert (= (and b!6108823 res!2533958) b!6108825))

(assert (= (and b!6108818 c!1097511) b!6108826))

(assert (= (and b!6108818 (not c!1097511)) b!6108821))

(assert (= (and b!6108826 res!2533955) b!6108819))

(assert (= (and b!6108821 (not res!2533957)) b!6108824))

(assert (= (and b!6108824 res!2533959) b!6108822))

(assert (= (or b!6108819 b!6108822) bm!505428))

(assert (= (or b!6108826 b!6108824) bm!505430))

(assert (= (or b!6108825 bm!505428) bm!505429))

(declare-fun m!6958856 () Bool)

(assert (=> bm!505429 m!6958856))

(declare-fun m!6958858 () Bool)

(assert (=> b!6108823 m!6958858))

(declare-fun m!6958860 () Bool)

(assert (=> bm!505430 m!6958860))

(assert (=> d!1913918 d!1914562))

(assert (=> d!1913918 d!1913732))

(declare-fun b!6108828 () Bool)

(declare-fun e!3725148 () List!64472)

(assert (=> b!6108828 (= e!3725148 (Cons!64348 (h!70796 (_1!36339 (get!22188 lt!2329798))) (++!14144 (t!377925 (_1!36339 (get!22188 lt!2329798))) (_2!36339 (get!22188 lt!2329798)))))))

(declare-fun b!6108830 () Bool)

(declare-fun e!3725149 () Bool)

(declare-fun lt!2329864 () List!64472)

(assert (=> b!6108830 (= e!3725149 (or (not (= (_2!36339 (get!22188 lt!2329798)) Nil!64348)) (= lt!2329864 (_1!36339 (get!22188 lt!2329798)))))))

(declare-fun b!6108829 () Bool)

(declare-fun res!2533960 () Bool)

(assert (=> b!6108829 (=> (not res!2533960) (not e!3725149))))

(assert (=> b!6108829 (= res!2533960 (= (size!40202 lt!2329864) (+ (size!40202 (_1!36339 (get!22188 lt!2329798))) (size!40202 (_2!36339 (get!22188 lt!2329798))))))))

(declare-fun b!6108827 () Bool)

(assert (=> b!6108827 (= e!3725148 (_2!36339 (get!22188 lt!2329798)))))

(declare-fun d!1914564 () Bool)

(assert (=> d!1914564 e!3725149))

(declare-fun res!2533961 () Bool)

(assert (=> d!1914564 (=> (not res!2533961) (not e!3725149))))

(assert (=> d!1914564 (= res!2533961 (= (content!11941 lt!2329864) ((_ map or) (content!11941 (_1!36339 (get!22188 lt!2329798))) (content!11941 (_2!36339 (get!22188 lt!2329798))))))))

(assert (=> d!1914564 (= lt!2329864 e!3725148)))

(declare-fun c!1097513 () Bool)

(assert (=> d!1914564 (= c!1097513 ((_ is Nil!64348) (_1!36339 (get!22188 lt!2329798))))))

(assert (=> d!1914564 (= (++!14144 (_1!36339 (get!22188 lt!2329798)) (_2!36339 (get!22188 lt!2329798))) lt!2329864)))

(assert (= (and d!1914564 c!1097513) b!6108827))

(assert (= (and d!1914564 (not c!1097513)) b!6108828))

(assert (= (and d!1914564 res!2533961) b!6108829))

(assert (= (and b!6108829 res!2533960) b!6108830))

(declare-fun m!6958862 () Bool)

(assert (=> b!6108828 m!6958862))

(declare-fun m!6958864 () Bool)

(assert (=> b!6108829 m!6958864))

(declare-fun m!6958866 () Bool)

(assert (=> b!6108829 m!6958866))

(declare-fun m!6958868 () Bool)

(assert (=> b!6108829 m!6958868))

(declare-fun m!6958870 () Bool)

(assert (=> d!1914564 m!6958870))

(declare-fun m!6958872 () Bool)

(assert (=> d!1914564 m!6958872))

(declare-fun m!6958874 () Bool)

(assert (=> d!1914564 m!6958874))

(assert (=> b!6106906 d!1914564))

(assert (=> b!6106906 d!1914466))

(declare-fun b!6108831 () Bool)

(declare-fun e!3725155 () Bool)

(declare-fun e!3725156 () Bool)

(assert (=> b!6108831 (= e!3725155 e!3725156)))

(declare-fun c!1097514 () Bool)

(assert (=> b!6108831 (= c!1097514 ((_ is Union!16057) (ite c!1097154 (reg!16386 lt!2329714) (ite c!1097153 (regTwo!32627 lt!2329714) (regTwo!32626 lt!2329714)))))))

(declare-fun b!6108832 () Bool)

(declare-fun e!3725154 () Bool)

(declare-fun call!505437 () Bool)

(assert (=> b!6108832 (= e!3725154 call!505437)))

(declare-fun b!6108833 () Bool)

(declare-fun e!3725152 () Bool)

(assert (=> b!6108833 (= e!3725152 e!3725155)))

(declare-fun c!1097515 () Bool)

(assert (=> b!6108833 (= c!1097515 ((_ is Star!16057) (ite c!1097154 (reg!16386 lt!2329714) (ite c!1097153 (regTwo!32627 lt!2329714) (regTwo!32626 lt!2329714)))))))

(declare-fun bm!505431 () Bool)

(declare-fun call!505436 () Bool)

(assert (=> bm!505431 (= call!505437 call!505436)))

(declare-fun b!6108834 () Bool)

(declare-fun res!2533964 () Bool)

(declare-fun e!3725151 () Bool)

(assert (=> b!6108834 (=> res!2533964 e!3725151)))

(assert (=> b!6108834 (= res!2533964 (not ((_ is Concat!24902) (ite c!1097154 (reg!16386 lt!2329714) (ite c!1097153 (regTwo!32627 lt!2329714) (regTwo!32626 lt!2329714))))))))

(assert (=> b!6108834 (= e!3725156 e!3725151)))

(declare-fun b!6108835 () Bool)

(declare-fun e!3725153 () Bool)

(assert (=> b!6108835 (= e!3725153 call!505437)))

(declare-fun bm!505432 () Bool)

(assert (=> bm!505432 (= call!505436 (validRegex!7793 (ite c!1097515 (reg!16386 (ite c!1097154 (reg!16386 lt!2329714) (ite c!1097153 (regTwo!32627 lt!2329714) (regTwo!32626 lt!2329714)))) (ite c!1097514 (regTwo!32627 (ite c!1097154 (reg!16386 lt!2329714) (ite c!1097153 (regTwo!32627 lt!2329714) (regTwo!32626 lt!2329714)))) (regTwo!32626 (ite c!1097154 (reg!16386 lt!2329714) (ite c!1097153 (regTwo!32627 lt!2329714) (regTwo!32626 lt!2329714))))))))))

(declare-fun b!6108836 () Bool)

(declare-fun e!3725150 () Bool)

(assert (=> b!6108836 (= e!3725155 e!3725150)))

(declare-fun res!2533965 () Bool)

(assert (=> b!6108836 (= res!2533965 (not (nullable!6050 (reg!16386 (ite c!1097154 (reg!16386 lt!2329714) (ite c!1097153 (regTwo!32627 lt!2329714) (regTwo!32626 lt!2329714)))))))))

(assert (=> b!6108836 (=> (not res!2533965) (not e!3725150))))

(declare-fun b!6108837 () Bool)

(assert (=> b!6108837 (= e!3725151 e!3725153)))

(declare-fun res!2533966 () Bool)

(assert (=> b!6108837 (=> (not res!2533966) (not e!3725153))))

(declare-fun call!505438 () Bool)

(assert (=> b!6108837 (= res!2533966 call!505438)))

(declare-fun b!6108838 () Bool)

(assert (=> b!6108838 (= e!3725150 call!505436)))

(declare-fun b!6108839 () Bool)

(declare-fun res!2533962 () Bool)

(assert (=> b!6108839 (=> (not res!2533962) (not e!3725154))))

(assert (=> b!6108839 (= res!2533962 call!505438)))

(assert (=> b!6108839 (= e!3725156 e!3725154)))

(declare-fun bm!505433 () Bool)

(assert (=> bm!505433 (= call!505438 (validRegex!7793 (ite c!1097514 (regOne!32627 (ite c!1097154 (reg!16386 lt!2329714) (ite c!1097153 (regTwo!32627 lt!2329714) (regTwo!32626 lt!2329714)))) (regOne!32626 (ite c!1097154 (reg!16386 lt!2329714) (ite c!1097153 (regTwo!32627 lt!2329714) (regTwo!32626 lt!2329714)))))))))

(declare-fun d!1914566 () Bool)

(declare-fun res!2533963 () Bool)

(assert (=> d!1914566 (=> res!2533963 e!3725152)))

(assert (=> d!1914566 (= res!2533963 ((_ is ElementMatch!16057) (ite c!1097154 (reg!16386 lt!2329714) (ite c!1097153 (regTwo!32627 lt!2329714) (regTwo!32626 lt!2329714)))))))

(assert (=> d!1914566 (= (validRegex!7793 (ite c!1097154 (reg!16386 lt!2329714) (ite c!1097153 (regTwo!32627 lt!2329714) (regTwo!32626 lt!2329714)))) e!3725152)))

(assert (= (and d!1914566 (not res!2533963)) b!6108833))

(assert (= (and b!6108833 c!1097515) b!6108836))

(assert (= (and b!6108833 (not c!1097515)) b!6108831))

(assert (= (and b!6108836 res!2533965) b!6108838))

(assert (= (and b!6108831 c!1097514) b!6108839))

(assert (= (and b!6108831 (not c!1097514)) b!6108834))

(assert (= (and b!6108839 res!2533962) b!6108832))

(assert (= (and b!6108834 (not res!2533964)) b!6108837))

(assert (= (and b!6108837 res!2533966) b!6108835))

(assert (= (or b!6108832 b!6108835) bm!505431))

(assert (= (or b!6108839 b!6108837) bm!505433))

(assert (= (or b!6108838 bm!505431) bm!505432))

(declare-fun m!6958876 () Bool)

(assert (=> bm!505432 m!6958876))

(declare-fun m!6958878 () Bool)

(assert (=> b!6108836 m!6958878))

(declare-fun m!6958880 () Bool)

(assert (=> bm!505433 m!6958880))

(assert (=> bm!505135 d!1914566))

(declare-fun d!1914568 () Bool)

(assert (=> d!1914568 (= ($colon$colon!1934 (exprs!5941 (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044))) (ite (or c!1097192 c!1097193) (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))) (Cons!64346 (ite (or c!1097192 c!1097193) (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (exprs!5941 (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)))))))

(assert (=> bm!505162 d!1914568))

(declare-fun d!1914570 () Bool)

(declare-fun res!2533967 () Bool)

(declare-fun e!3725157 () Bool)

(assert (=> d!1914570 (=> res!2533967 e!3725157)))

(assert (=> d!1914570 (= res!2533967 ((_ is Nil!64347) (t!377924 lt!2329759)))))

(assert (=> d!1914570 (= (noDuplicate!1904 (t!377924 lt!2329759)) e!3725157)))

(declare-fun b!6108840 () Bool)

(declare-fun e!3725158 () Bool)

(assert (=> b!6108840 (= e!3725157 e!3725158)))

(declare-fun res!2533968 () Bool)

(assert (=> b!6108840 (=> (not res!2533968) (not e!3725158))))

(assert (=> b!6108840 (= res!2533968 (not (contains!20020 (t!377924 (t!377924 lt!2329759)) (h!70795 (t!377924 lt!2329759)))))))

(declare-fun b!6108841 () Bool)

(assert (=> b!6108841 (= e!3725158 (noDuplicate!1904 (t!377924 (t!377924 lt!2329759))))))

(assert (= (and d!1914570 (not res!2533967)) b!6108840))

(assert (= (and b!6108840 res!2533968) b!6108841))

(declare-fun m!6958882 () Bool)

(assert (=> b!6108840 m!6958882))

(declare-fun m!6958884 () Bool)

(assert (=> b!6108841 m!6958884))

(assert (=> b!6107010 d!1914570))

(declare-fun d!1914572 () Bool)

(assert (not d!1914572))

(assert (=> b!6107117 d!1914572))

(declare-fun d!1914574 () Bool)

(assert (not d!1914574))

(assert (=> b!6107117 d!1914574))

(assert (=> b!6107117 d!1914378))

(assert (=> b!6107117 d!1914522))

(declare-fun d!1914576 () Bool)

(assert (=> d!1914576 (= (Exists!3127 (ite c!1097203 lambda!332764 lambda!332765)) (choose!45394 (ite c!1097203 lambda!332764 lambda!332765)))))

(declare-fun bs!1516540 () Bool)

(assert (= bs!1516540 d!1914576))

(declare-fun m!6958886 () Bool)

(assert (=> bs!1516540 m!6958886))

(assert (=> bm!505172 d!1914576))

(declare-fun b!6108842 () Bool)

(declare-fun res!2533973 () Bool)

(declare-fun e!3725165 () Bool)

(assert (=> b!6108842 (=> (not res!2533973) (not e!3725165))))

(declare-fun call!505439 () Bool)

(assert (=> b!6108842 (= res!2533973 (not call!505439))))

(declare-fun b!6108843 () Bool)

(declare-fun res!2533974 () Bool)

(declare-fun e!3725163 () Bool)

(assert (=> b!6108843 (=> res!2533974 e!3725163)))

(assert (=> b!6108843 (= res!2533974 (not ((_ is ElementMatch!16057) (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 (_2!36339 (get!22188 lt!2329734)))))))))

(declare-fun e!3725160 () Bool)

(assert (=> b!6108843 (= e!3725160 e!3725163)))

(declare-fun b!6108844 () Bool)

(declare-fun res!2533976 () Bool)

(assert (=> b!6108844 (=> (not res!2533976) (not e!3725165))))

(assert (=> b!6108844 (= res!2533976 (isEmpty!36274 (tail!11721 (tail!11721 (_2!36339 (get!22188 lt!2329734))))))))

(declare-fun b!6108845 () Bool)

(declare-fun e!3725164 () Bool)

(assert (=> b!6108845 (= e!3725164 (not (= (head!12636 (tail!11721 (_2!36339 (get!22188 lt!2329734)))) (c!1096851 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 (_2!36339 (get!22188 lt!2329734))))))))))

(declare-fun b!6108846 () Bool)

(assert (=> b!6108846 (= e!3725165 (= (head!12636 (tail!11721 (_2!36339 (get!22188 lt!2329734)))) (c!1096851 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 (_2!36339 (get!22188 lt!2329734)))))))))

(declare-fun b!6108847 () Bool)

(declare-fun res!2533971 () Bool)

(assert (=> b!6108847 (=> res!2533971 e!3725164)))

(assert (=> b!6108847 (= res!2533971 (not (isEmpty!36274 (tail!11721 (tail!11721 (_2!36339 (get!22188 lt!2329734)))))))))

(declare-fun b!6108849 () Bool)

(declare-fun e!3725161 () Bool)

(assert (=> b!6108849 (= e!3725161 e!3725164)))

(declare-fun res!2533975 () Bool)

(assert (=> b!6108849 (=> res!2533975 e!3725164)))

(assert (=> b!6108849 (= res!2533975 call!505439)))

(declare-fun b!6108850 () Bool)

(assert (=> b!6108850 (= e!3725163 e!3725161)))

(declare-fun res!2533969 () Bool)

(assert (=> b!6108850 (=> (not res!2533969) (not e!3725161))))

(declare-fun lt!2329865 () Bool)

(assert (=> b!6108850 (= res!2533969 (not lt!2329865))))

(declare-fun b!6108851 () Bool)

(declare-fun e!3725162 () Bool)

(assert (=> b!6108851 (= e!3725162 e!3725160)))

(declare-fun c!1097517 () Bool)

(assert (=> b!6108851 (= c!1097517 ((_ is EmptyLang!16057) (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 (_2!36339 (get!22188 lt!2329734))))))))

(declare-fun b!6108852 () Bool)

(declare-fun e!3725159 () Bool)

(assert (=> b!6108852 (= e!3725159 (matchR!8240 (derivativeStep!4778 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 (_2!36339 (get!22188 lt!2329734)))) (head!12636 (tail!11721 (_2!36339 (get!22188 lt!2329734))))) (tail!11721 (tail!11721 (_2!36339 (get!22188 lt!2329734))))))))

(declare-fun b!6108853 () Bool)

(assert (=> b!6108853 (= e!3725159 (nullable!6050 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 (_2!36339 (get!22188 lt!2329734))))))))

(declare-fun b!6108854 () Bool)

(assert (=> b!6108854 (= e!3725160 (not lt!2329865))))

(declare-fun b!6108855 () Bool)

(declare-fun res!2533972 () Bool)

(assert (=> b!6108855 (=> res!2533972 e!3725163)))

(assert (=> b!6108855 (= res!2533972 e!3725165)))

(declare-fun res!2533970 () Bool)

(assert (=> b!6108855 (=> (not res!2533970) (not e!3725165))))

(assert (=> b!6108855 (= res!2533970 lt!2329865)))

(declare-fun bm!505434 () Bool)

(assert (=> bm!505434 (= call!505439 (isEmpty!36274 (tail!11721 (_2!36339 (get!22188 lt!2329734)))))))

(declare-fun b!6108848 () Bool)

(assert (=> b!6108848 (= e!3725162 (= lt!2329865 call!505439))))

(declare-fun d!1914578 () Bool)

(assert (=> d!1914578 e!3725162))

(declare-fun c!1097518 () Bool)

(assert (=> d!1914578 (= c!1097518 ((_ is EmptyExpr!16057) (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 (_2!36339 (get!22188 lt!2329734))))))))

(assert (=> d!1914578 (= lt!2329865 e!3725159)))

(declare-fun c!1097516 () Bool)

(assert (=> d!1914578 (= c!1097516 (isEmpty!36274 (tail!11721 (_2!36339 (get!22188 lt!2329734)))))))

(assert (=> d!1914578 (validRegex!7793 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 (_2!36339 (get!22188 lt!2329734)))))))

(assert (=> d!1914578 (= (matchR!8240 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 (_2!36339 (get!22188 lt!2329734)))) (tail!11721 (_2!36339 (get!22188 lt!2329734)))) lt!2329865)))

(assert (= (and d!1914578 c!1097516) b!6108853))

(assert (= (and d!1914578 (not c!1097516)) b!6108852))

(assert (= (and d!1914578 c!1097518) b!6108848))

(assert (= (and d!1914578 (not c!1097518)) b!6108851))

(assert (= (and b!6108851 c!1097517) b!6108854))

(assert (= (and b!6108851 (not c!1097517)) b!6108843))

(assert (= (and b!6108843 (not res!2533974)) b!6108855))

(assert (= (and b!6108855 res!2533970) b!6108842))

(assert (= (and b!6108842 res!2533973) b!6108844))

(assert (= (and b!6108844 res!2533976) b!6108846))

(assert (= (and b!6108855 (not res!2533972)) b!6108850))

(assert (= (and b!6108850 res!2533969) b!6108849))

(assert (= (and b!6108849 (not res!2533975)) b!6108847))

(assert (= (and b!6108847 (not res!2533971)) b!6108845))

(assert (= (or b!6108848 b!6108842 b!6108849) bm!505434))

(assert (=> b!6108845 m!6957626))

(declare-fun m!6958888 () Bool)

(assert (=> b!6108845 m!6958888))

(assert (=> b!6108846 m!6957626))

(assert (=> b!6108846 m!6958888))

(assert (=> bm!505434 m!6957626))

(assert (=> bm!505434 m!6957630))

(assert (=> b!6108852 m!6957626))

(assert (=> b!6108852 m!6958888))

(assert (=> b!6108852 m!6957624))

(assert (=> b!6108852 m!6958888))

(declare-fun m!6958890 () Bool)

(assert (=> b!6108852 m!6958890))

(assert (=> b!6108852 m!6957626))

(declare-fun m!6958892 () Bool)

(assert (=> b!6108852 m!6958892))

(assert (=> b!6108852 m!6958890))

(assert (=> b!6108852 m!6958892))

(declare-fun m!6958894 () Bool)

(assert (=> b!6108852 m!6958894))

(assert (=> b!6108844 m!6957626))

(assert (=> b!6108844 m!6958892))

(assert (=> b!6108844 m!6958892))

(declare-fun m!6958896 () Bool)

(assert (=> b!6108844 m!6958896))

(assert (=> b!6108847 m!6957626))

(assert (=> b!6108847 m!6958892))

(assert (=> b!6108847 m!6958892))

(assert (=> b!6108847 m!6958896))

(assert (=> b!6108853 m!6957624))

(declare-fun m!6958898 () Bool)

(assert (=> b!6108853 m!6958898))

(assert (=> d!1914578 m!6957626))

(assert (=> d!1914578 m!6957630))

(assert (=> d!1914578 m!6957624))

(declare-fun m!6958900 () Bool)

(assert (=> d!1914578 m!6958900))

(assert (=> b!6106930 d!1914578))

(declare-fun b!6108856 () Bool)

(declare-fun e!3725170 () Regex!16057)

(declare-fun call!505443 () Regex!16057)

(assert (=> b!6108856 (= e!3725170 (Union!16057 (Concat!24902 call!505443 (regTwo!32626 (regTwo!32626 r!7292))) EmptyLang!16057))))

(declare-fun d!1914580 () Bool)

(declare-fun lt!2329866 () Regex!16057)

(assert (=> d!1914580 (validRegex!7793 lt!2329866)))

(declare-fun e!3725169 () Regex!16057)

(assert (=> d!1914580 (= lt!2329866 e!3725169)))

(declare-fun c!1097519 () Bool)

(assert (=> d!1914580 (= c!1097519 (or ((_ is EmptyExpr!16057) (regTwo!32626 r!7292)) ((_ is EmptyLang!16057) (regTwo!32626 r!7292))))))

(assert (=> d!1914580 (validRegex!7793 (regTwo!32626 r!7292))))

(assert (=> d!1914580 (= (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 (_2!36339 (get!22188 lt!2329734)))) lt!2329866)))

(declare-fun bm!505435 () Bool)

(declare-fun call!505441 () Regex!16057)

(declare-fun call!505442 () Regex!16057)

(assert (=> bm!505435 (= call!505441 call!505442)))

(declare-fun bm!505436 () Bool)

(assert (=> bm!505436 (= call!505443 call!505441)))

(declare-fun c!1097523 () Bool)

(declare-fun call!505440 () Regex!16057)

(declare-fun bm!505437 () Bool)

(assert (=> bm!505437 (= call!505440 (derivativeStep!4778 (ite c!1097523 (regOne!32627 (regTwo!32626 r!7292)) (regOne!32626 (regTwo!32626 r!7292))) (head!12636 (_2!36339 (get!22188 lt!2329734)))))))

(declare-fun bm!505438 () Bool)

(declare-fun c!1097520 () Bool)

(declare-fun c!1097521 () Bool)

(assert (=> bm!505438 (= call!505442 (derivativeStep!4778 (ite c!1097523 (regTwo!32627 (regTwo!32626 r!7292)) (ite c!1097521 (reg!16386 (regTwo!32626 r!7292)) (ite c!1097520 (regTwo!32626 (regTwo!32626 r!7292)) (regOne!32626 (regTwo!32626 r!7292))))) (head!12636 (_2!36339 (get!22188 lt!2329734)))))))

(declare-fun b!6108857 () Bool)

(declare-fun e!3725167 () Regex!16057)

(declare-fun e!3725168 () Regex!16057)

(assert (=> b!6108857 (= e!3725167 e!3725168)))

(assert (=> b!6108857 (= c!1097521 ((_ is Star!16057) (regTwo!32626 r!7292)))))

(declare-fun b!6108858 () Bool)

(assert (=> b!6108858 (= e!3725168 (Concat!24902 call!505441 (regTwo!32626 r!7292)))))

(declare-fun b!6108859 () Bool)

(assert (=> b!6108859 (= c!1097520 (nullable!6050 (regOne!32626 (regTwo!32626 r!7292))))))

(assert (=> b!6108859 (= e!3725168 e!3725170)))

(declare-fun b!6108860 () Bool)

(declare-fun e!3725166 () Regex!16057)

(assert (=> b!6108860 (= e!3725166 (ite (= (head!12636 (_2!36339 (get!22188 lt!2329734))) (c!1096851 (regTwo!32626 r!7292))) EmptyExpr!16057 EmptyLang!16057))))

(declare-fun b!6108861 () Bool)

(assert (=> b!6108861 (= e!3725169 EmptyLang!16057)))

(declare-fun b!6108862 () Bool)

(assert (=> b!6108862 (= e!3725169 e!3725166)))

(declare-fun c!1097522 () Bool)

(assert (=> b!6108862 (= c!1097522 ((_ is ElementMatch!16057) (regTwo!32626 r!7292)))))

(declare-fun b!6108863 () Bool)

(assert (=> b!6108863 (= e!3725167 (Union!16057 call!505440 call!505442))))

(declare-fun b!6108864 () Bool)

(assert (=> b!6108864 (= c!1097523 ((_ is Union!16057) (regTwo!32626 r!7292)))))

(assert (=> b!6108864 (= e!3725166 e!3725167)))

(declare-fun b!6108865 () Bool)

(assert (=> b!6108865 (= e!3725170 (Union!16057 (Concat!24902 call!505440 (regTwo!32626 (regTwo!32626 r!7292))) call!505443))))

(assert (= (and d!1914580 c!1097519) b!6108861))

(assert (= (and d!1914580 (not c!1097519)) b!6108862))

(assert (= (and b!6108862 c!1097522) b!6108860))

(assert (= (and b!6108862 (not c!1097522)) b!6108864))

(assert (= (and b!6108864 c!1097523) b!6108863))

(assert (= (and b!6108864 (not c!1097523)) b!6108857))

(assert (= (and b!6108857 c!1097521) b!6108858))

(assert (= (and b!6108857 (not c!1097521)) b!6108859))

(assert (= (and b!6108859 c!1097520) b!6108865))

(assert (= (and b!6108859 (not c!1097520)) b!6108856))

(assert (= (or b!6108865 b!6108856) bm!505436))

(assert (= (or b!6108858 bm!505436) bm!505435))

(assert (= (or b!6108863 bm!505435) bm!505438))

(assert (= (or b!6108863 b!6108865) bm!505437))

(declare-fun m!6958902 () Bool)

(assert (=> d!1914580 m!6958902))

(assert (=> d!1914580 m!6957510))

(assert (=> bm!505437 m!6957620))

(declare-fun m!6958904 () Bool)

(assert (=> bm!505437 m!6958904))

(assert (=> bm!505438 m!6957620))

(declare-fun m!6958906 () Bool)

(assert (=> bm!505438 m!6958906))

(assert (=> b!6108859 m!6958520))

(assert (=> b!6106930 d!1914580))

(assert (=> b!6106930 d!1914368))

(assert (=> b!6106930 d!1914536))

(declare-fun b!6108866 () Bool)

(declare-fun e!3725176 () Bool)

(declare-fun e!3725177 () Bool)

(assert (=> b!6108866 (= e!3725176 e!3725177)))

(declare-fun c!1097524 () Bool)

(assert (=> b!6108866 (= c!1097524 ((_ is Union!16057) (ite c!1097169 (reg!16386 lt!2329705) (ite c!1097168 (regTwo!32627 lt!2329705) (regTwo!32626 lt!2329705)))))))

(declare-fun b!6108867 () Bool)

(declare-fun e!3725175 () Bool)

(declare-fun call!505445 () Bool)

(assert (=> b!6108867 (= e!3725175 call!505445)))

(declare-fun b!6108868 () Bool)

(declare-fun e!3725173 () Bool)

(assert (=> b!6108868 (= e!3725173 e!3725176)))

(declare-fun c!1097525 () Bool)

(assert (=> b!6108868 (= c!1097525 ((_ is Star!16057) (ite c!1097169 (reg!16386 lt!2329705) (ite c!1097168 (regTwo!32627 lt!2329705) (regTwo!32626 lt!2329705)))))))

(declare-fun bm!505439 () Bool)

(declare-fun call!505444 () Bool)

(assert (=> bm!505439 (= call!505445 call!505444)))

(declare-fun b!6108869 () Bool)

(declare-fun res!2533979 () Bool)

(declare-fun e!3725172 () Bool)

(assert (=> b!6108869 (=> res!2533979 e!3725172)))

(assert (=> b!6108869 (= res!2533979 (not ((_ is Concat!24902) (ite c!1097169 (reg!16386 lt!2329705) (ite c!1097168 (regTwo!32627 lt!2329705) (regTwo!32626 lt!2329705))))))))

(assert (=> b!6108869 (= e!3725177 e!3725172)))

(declare-fun b!6108870 () Bool)

(declare-fun e!3725174 () Bool)

(assert (=> b!6108870 (= e!3725174 call!505445)))

(declare-fun bm!505440 () Bool)

(assert (=> bm!505440 (= call!505444 (validRegex!7793 (ite c!1097525 (reg!16386 (ite c!1097169 (reg!16386 lt!2329705) (ite c!1097168 (regTwo!32627 lt!2329705) (regTwo!32626 lt!2329705)))) (ite c!1097524 (regTwo!32627 (ite c!1097169 (reg!16386 lt!2329705) (ite c!1097168 (regTwo!32627 lt!2329705) (regTwo!32626 lt!2329705)))) (regTwo!32626 (ite c!1097169 (reg!16386 lt!2329705) (ite c!1097168 (regTwo!32627 lt!2329705) (regTwo!32626 lt!2329705))))))))))

(declare-fun b!6108871 () Bool)

(declare-fun e!3725171 () Bool)

(assert (=> b!6108871 (= e!3725176 e!3725171)))

(declare-fun res!2533980 () Bool)

(assert (=> b!6108871 (= res!2533980 (not (nullable!6050 (reg!16386 (ite c!1097169 (reg!16386 lt!2329705) (ite c!1097168 (regTwo!32627 lt!2329705) (regTwo!32626 lt!2329705)))))))))

(assert (=> b!6108871 (=> (not res!2533980) (not e!3725171))))

(declare-fun b!6108872 () Bool)

(assert (=> b!6108872 (= e!3725172 e!3725174)))

(declare-fun res!2533981 () Bool)

(assert (=> b!6108872 (=> (not res!2533981) (not e!3725174))))

(declare-fun call!505446 () Bool)

(assert (=> b!6108872 (= res!2533981 call!505446)))

(declare-fun b!6108873 () Bool)

(assert (=> b!6108873 (= e!3725171 call!505444)))

(declare-fun b!6108874 () Bool)

(declare-fun res!2533977 () Bool)

(assert (=> b!6108874 (=> (not res!2533977) (not e!3725175))))

(assert (=> b!6108874 (= res!2533977 call!505446)))

(assert (=> b!6108874 (= e!3725177 e!3725175)))

(declare-fun bm!505441 () Bool)

(assert (=> bm!505441 (= call!505446 (validRegex!7793 (ite c!1097524 (regOne!32627 (ite c!1097169 (reg!16386 lt!2329705) (ite c!1097168 (regTwo!32627 lt!2329705) (regTwo!32626 lt!2329705)))) (regOne!32626 (ite c!1097169 (reg!16386 lt!2329705) (ite c!1097168 (regTwo!32627 lt!2329705) (regTwo!32626 lt!2329705)))))))))

(declare-fun d!1914582 () Bool)

(declare-fun res!2533978 () Bool)

(assert (=> d!1914582 (=> res!2533978 e!3725173)))

(assert (=> d!1914582 (= res!2533978 ((_ is ElementMatch!16057) (ite c!1097169 (reg!16386 lt!2329705) (ite c!1097168 (regTwo!32627 lt!2329705) (regTwo!32626 lt!2329705)))))))

(assert (=> d!1914582 (= (validRegex!7793 (ite c!1097169 (reg!16386 lt!2329705) (ite c!1097168 (regTwo!32627 lt!2329705) (regTwo!32626 lt!2329705)))) e!3725173)))

(assert (= (and d!1914582 (not res!2533978)) b!6108868))

(assert (= (and b!6108868 c!1097525) b!6108871))

(assert (= (and b!6108868 (not c!1097525)) b!6108866))

(assert (= (and b!6108871 res!2533980) b!6108873))

(assert (= (and b!6108866 c!1097524) b!6108874))

(assert (= (and b!6108866 (not c!1097524)) b!6108869))

(assert (= (and b!6108874 res!2533977) b!6108867))

(assert (= (and b!6108869 (not res!2533979)) b!6108872))

(assert (= (and b!6108872 res!2533981) b!6108870))

(assert (= (or b!6108867 b!6108870) bm!505439))

(assert (= (or b!6108874 b!6108872) bm!505441))

(assert (= (or b!6108873 bm!505439) bm!505440))

(declare-fun m!6958908 () Bool)

(assert (=> bm!505440 m!6958908))

(declare-fun m!6958910 () Bool)

(assert (=> b!6108871 m!6958910))

(declare-fun m!6958912 () Bool)

(assert (=> bm!505441 m!6958912))

(assert (=> bm!505144 d!1914582))

(declare-fun d!1914584 () Bool)

(declare-fun c!1097526 () Bool)

(assert (=> d!1914584 (= c!1097526 ((_ is Nil!64348) lt!2329793))))

(declare-fun e!3725178 () (InoxSet C!32384))

(assert (=> d!1914584 (= (content!11941 lt!2329793) e!3725178)))

(declare-fun b!6108875 () Bool)

(assert (=> b!6108875 (= e!3725178 ((as const (Array C!32384 Bool)) false))))

(declare-fun b!6108876 () Bool)

(assert (=> b!6108876 (= e!3725178 ((_ map or) (store ((as const (Array C!32384 Bool)) false) (h!70796 lt!2329793) true) (content!11941 (t!377925 lt!2329793))))))

(assert (= (and d!1914584 c!1097526) b!6108875))

(assert (= (and d!1914584 (not c!1097526)) b!6108876))

(declare-fun m!6958914 () Bool)

(assert (=> b!6108876 m!6958914))

(declare-fun m!6958916 () Bool)

(assert (=> b!6108876 m!6958916))

(assert (=> d!1913942 d!1914584))

(declare-fun d!1914586 () Bool)

(assert (=> d!1914586 (= (content!11941 Nil!64348) ((as const (Array C!32384 Bool)) false))))

(assert (=> d!1913942 d!1914586))

(declare-fun d!1914588 () Bool)

(declare-fun c!1097527 () Bool)

(assert (=> d!1914588 (= c!1097527 ((_ is Nil!64348) (Cons!64348 (h!70796 s!2326) Nil!64348)))))

(declare-fun e!3725179 () (InoxSet C!32384))

(assert (=> d!1914588 (= (content!11941 (Cons!64348 (h!70796 s!2326) Nil!64348)) e!3725179)))

(declare-fun b!6108877 () Bool)

(assert (=> b!6108877 (= e!3725179 ((as const (Array C!32384 Bool)) false))))

(declare-fun b!6108878 () Bool)

(assert (=> b!6108878 (= e!3725179 ((_ map or) (store ((as const (Array C!32384 Bool)) false) (h!70796 (Cons!64348 (h!70796 s!2326) Nil!64348)) true) (content!11941 (t!377925 (Cons!64348 (h!70796 s!2326) Nil!64348)))))))

(assert (= (and d!1914588 c!1097527) b!6108877))

(assert (= (and d!1914588 (not c!1097527)) b!6108878))

(declare-fun m!6958918 () Bool)

(assert (=> b!6108878 m!6958918))

(declare-fun m!6958920 () Bool)

(assert (=> b!6108878 m!6958920))

(assert (=> d!1913942 d!1914588))

(assert (=> bm!505110 d!1913964))

(declare-fun b!6108879 () Bool)

(declare-fun e!3725185 () Bool)

(declare-fun e!3725186 () Bool)

(assert (=> b!6108879 (= e!3725185 e!3725186)))

(declare-fun c!1097528 () Bool)

(assert (=> b!6108879 (= c!1097528 ((_ is Union!16057) (ite c!1097151 (regOne!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))))))

(declare-fun b!6108880 () Bool)

(declare-fun e!3725184 () Bool)

(declare-fun call!505448 () Bool)

(assert (=> b!6108880 (= e!3725184 call!505448)))

(declare-fun b!6108881 () Bool)

(declare-fun e!3725182 () Bool)

(assert (=> b!6108881 (= e!3725182 e!3725185)))

(declare-fun c!1097529 () Bool)

(assert (=> b!6108881 (= c!1097529 ((_ is Star!16057) (ite c!1097151 (regOne!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))))))

(declare-fun bm!505442 () Bool)

(declare-fun call!505447 () Bool)

(assert (=> bm!505442 (= call!505448 call!505447)))

(declare-fun b!6108882 () Bool)

(declare-fun res!2533984 () Bool)

(declare-fun e!3725181 () Bool)

(assert (=> b!6108882 (=> res!2533984 e!3725181)))

(assert (=> b!6108882 (= res!2533984 (not ((_ is Concat!24902) (ite c!1097151 (regOne!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))))))

(assert (=> b!6108882 (= e!3725186 e!3725181)))

(declare-fun b!6108883 () Bool)

(declare-fun e!3725183 () Bool)

(assert (=> b!6108883 (= e!3725183 call!505448)))

(declare-fun bm!505443 () Bool)

(assert (=> bm!505443 (= call!505447 (validRegex!7793 (ite c!1097529 (reg!16386 (ite c!1097151 (regOne!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))) (ite c!1097528 (regTwo!32627 (ite c!1097151 (regOne!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))) (regTwo!32626 (ite c!1097151 (regOne!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292)))))))))))

(declare-fun b!6108884 () Bool)

(declare-fun e!3725180 () Bool)

(assert (=> b!6108884 (= e!3725185 e!3725180)))

(declare-fun res!2533985 () Bool)

(assert (=> b!6108884 (= res!2533985 (not (nullable!6050 (reg!16386 (ite c!1097151 (regOne!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))))))))

(assert (=> b!6108884 (=> (not res!2533985) (not e!3725180))))

(declare-fun b!6108885 () Bool)

(assert (=> b!6108885 (= e!3725181 e!3725183)))

(declare-fun res!2533986 () Bool)

(assert (=> b!6108885 (=> (not res!2533986) (not e!3725183))))

(declare-fun call!505449 () Bool)

(assert (=> b!6108885 (= res!2533986 call!505449)))

(declare-fun b!6108886 () Bool)

(assert (=> b!6108886 (= e!3725180 call!505447)))

(declare-fun b!6108887 () Bool)

(declare-fun res!2533982 () Bool)

(assert (=> b!6108887 (=> (not res!2533982) (not e!3725184))))

(assert (=> b!6108887 (= res!2533982 call!505449)))

(assert (=> b!6108887 (= e!3725186 e!3725184)))

(declare-fun bm!505444 () Bool)

(assert (=> bm!505444 (= call!505449 (validRegex!7793 (ite c!1097528 (regOne!32627 (ite c!1097151 (regOne!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))) (regOne!32626 (ite c!1097151 (regOne!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))))))))

(declare-fun d!1914590 () Bool)

(declare-fun res!2533983 () Bool)

(assert (=> d!1914590 (=> res!2533983 e!3725182)))

(assert (=> d!1914590 (= res!2533983 ((_ is ElementMatch!16057) (ite c!1097151 (regOne!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))))))

(assert (=> d!1914590 (= (validRegex!7793 (ite c!1097151 (regOne!32627 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))) (regOne!32626 (ite c!1096960 (regOne!32627 r!7292) (regOne!32626 r!7292))))) e!3725182)))

(assert (= (and d!1914590 (not res!2533983)) b!6108881))

(assert (= (and b!6108881 c!1097529) b!6108884))

(assert (= (and b!6108881 (not c!1097529)) b!6108879))

(assert (= (and b!6108884 res!2533985) b!6108886))

(assert (= (and b!6108879 c!1097528) b!6108887))

(assert (= (and b!6108879 (not c!1097528)) b!6108882))

(assert (= (and b!6108887 res!2533982) b!6108880))

(assert (= (and b!6108882 (not res!2533984)) b!6108885))

(assert (= (and b!6108885 res!2533986) b!6108883))

(assert (= (or b!6108880 b!6108883) bm!505442))

(assert (= (or b!6108887 b!6108885) bm!505444))

(assert (= (or b!6108886 bm!505442) bm!505443))

(declare-fun m!6958922 () Bool)

(assert (=> bm!505443 m!6958922))

(declare-fun m!6958924 () Bool)

(assert (=> b!6108884 m!6958924))

(declare-fun m!6958926 () Bool)

(assert (=> bm!505444 m!6958926))

(assert (=> bm!505133 d!1914590))

(declare-fun d!1914592 () Bool)

(assert (=> d!1914592 (= (isDefined!12651 lt!2329798) (not (isEmpty!36273 lt!2329798)))))

(declare-fun bs!1516541 () Bool)

(assert (= bs!1516541 d!1914592))

(declare-fun m!6958928 () Bool)

(assert (=> bs!1516541 m!6958928))

(assert (=> d!1913946 d!1914592))

(declare-fun b!6108888 () Bool)

(declare-fun res!2533991 () Bool)

(declare-fun e!3725193 () Bool)

(assert (=> b!6108888 (=> (not res!2533991) (not e!3725193))))

(declare-fun call!505450 () Bool)

(assert (=> b!6108888 (= res!2533991 (not call!505450))))

(declare-fun b!6108889 () Bool)

(declare-fun res!2533992 () Bool)

(declare-fun e!3725191 () Bool)

(assert (=> b!6108889 (=> res!2533992 e!3725191)))

(assert (=> b!6108889 (= res!2533992 (not ((_ is ElementMatch!16057) (regOne!32626 r!7292))))))

(declare-fun e!3725188 () Bool)

(assert (=> b!6108889 (= e!3725188 e!3725191)))

(declare-fun b!6108890 () Bool)

(declare-fun res!2533994 () Bool)

(assert (=> b!6108890 (=> (not res!2533994) (not e!3725193))))

(assert (=> b!6108890 (= res!2533994 (isEmpty!36274 (tail!11721 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)))))))

(declare-fun b!6108891 () Bool)

(declare-fun e!3725192 () Bool)

(assert (=> b!6108891 (= e!3725192 (not (= (head!12636 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) (c!1096851 (regOne!32626 r!7292)))))))

(declare-fun b!6108892 () Bool)

(assert (=> b!6108892 (= e!3725193 (= (head!12636 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) (c!1096851 (regOne!32626 r!7292))))))

(declare-fun b!6108893 () Bool)

(declare-fun res!2533989 () Bool)

(assert (=> b!6108893 (=> res!2533989 e!3725192)))

(assert (=> b!6108893 (= res!2533989 (not (isEmpty!36274 (tail!11721 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))))))))

(declare-fun b!6108895 () Bool)

(declare-fun e!3725189 () Bool)

(assert (=> b!6108895 (= e!3725189 e!3725192)))

(declare-fun res!2533993 () Bool)

(assert (=> b!6108895 (=> res!2533993 e!3725192)))

(assert (=> b!6108895 (= res!2533993 call!505450)))

(declare-fun b!6108896 () Bool)

(assert (=> b!6108896 (= e!3725191 e!3725189)))

(declare-fun res!2533987 () Bool)

(assert (=> b!6108896 (=> (not res!2533987) (not e!3725189))))

(declare-fun lt!2329867 () Bool)

(assert (=> b!6108896 (= res!2533987 (not lt!2329867))))

(declare-fun b!6108897 () Bool)

(declare-fun e!3725190 () Bool)

(assert (=> b!6108897 (= e!3725190 e!3725188)))

(declare-fun c!1097531 () Bool)

(assert (=> b!6108897 (= c!1097531 ((_ is EmptyLang!16057) (regOne!32626 r!7292)))))

(declare-fun b!6108898 () Bool)

(declare-fun e!3725187 () Bool)

(assert (=> b!6108898 (= e!3725187 (matchR!8240 (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)))) (tail!11721 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)))))))

(declare-fun b!6108899 () Bool)

(assert (=> b!6108899 (= e!3725187 (nullable!6050 (regOne!32626 r!7292)))))

(declare-fun b!6108900 () Bool)

(assert (=> b!6108900 (= e!3725188 (not lt!2329867))))

(declare-fun b!6108901 () Bool)

(declare-fun res!2533990 () Bool)

(assert (=> b!6108901 (=> res!2533990 e!3725191)))

(assert (=> b!6108901 (= res!2533990 e!3725193)))

(declare-fun res!2533988 () Bool)

(assert (=> b!6108901 (=> (not res!2533988) (not e!3725193))))

(assert (=> b!6108901 (= res!2533988 lt!2329867)))

(declare-fun bm!505445 () Bool)

(assert (=> bm!505445 (= call!505450 (isEmpty!36274 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))))))

(declare-fun b!6108894 () Bool)

(assert (=> b!6108894 (= e!3725190 (= lt!2329867 call!505450))))

(declare-fun d!1914594 () Bool)

(assert (=> d!1914594 e!3725190))

(declare-fun c!1097532 () Bool)

(assert (=> d!1914594 (= c!1097532 ((_ is EmptyExpr!16057) (regOne!32626 r!7292)))))

(assert (=> d!1914594 (= lt!2329867 e!3725187)))

(declare-fun c!1097530 () Bool)

(assert (=> d!1914594 (= c!1097530 (isEmpty!36274 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))))))

(assert (=> d!1914594 (validRegex!7793 (regOne!32626 r!7292))))

(assert (=> d!1914594 (= (matchR!8240 (regOne!32626 r!7292) (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) lt!2329867)))

(assert (= (and d!1914594 c!1097530) b!6108899))

(assert (= (and d!1914594 (not c!1097530)) b!6108898))

(assert (= (and d!1914594 c!1097532) b!6108894))

(assert (= (and d!1914594 (not c!1097532)) b!6108897))

(assert (= (and b!6108897 c!1097531) b!6108900))

(assert (= (and b!6108897 (not c!1097531)) b!6108889))

(assert (= (and b!6108889 (not res!2533992)) b!6108901))

(assert (= (and b!6108901 res!2533988) b!6108888))

(assert (= (and b!6108888 res!2533991) b!6108890))

(assert (= (and b!6108890 res!2533994) b!6108892))

(assert (= (and b!6108901 (not res!2533990)) b!6108896))

(assert (= (and b!6108896 res!2533987) b!6108895))

(assert (= (and b!6108895 (not res!2533993)) b!6108893))

(assert (= (and b!6108893 (not res!2533989)) b!6108891))

(assert (= (or b!6108894 b!6108888 b!6108895) bm!505445))

(assert (=> b!6108891 m!6957000))

(declare-fun m!6958930 () Bool)

(assert (=> b!6108891 m!6958930))

(assert (=> b!6108892 m!6957000))

(assert (=> b!6108892 m!6958930))

(assert (=> bm!505445 m!6957000))

(declare-fun m!6958932 () Bool)

(assert (=> bm!505445 m!6958932))

(assert (=> b!6108898 m!6957000))

(assert (=> b!6108898 m!6958930))

(assert (=> b!6108898 m!6958930))

(declare-fun m!6958934 () Bool)

(assert (=> b!6108898 m!6958934))

(assert (=> b!6108898 m!6957000))

(declare-fun m!6958936 () Bool)

(assert (=> b!6108898 m!6958936))

(assert (=> b!6108898 m!6958934))

(assert (=> b!6108898 m!6958936))

(declare-fun m!6958938 () Bool)

(assert (=> b!6108898 m!6958938))

(assert (=> b!6108890 m!6957000))

(assert (=> b!6108890 m!6958936))

(assert (=> b!6108890 m!6958936))

(declare-fun m!6958940 () Bool)

(assert (=> b!6108890 m!6958940))

(assert (=> b!6108893 m!6957000))

(assert (=> b!6108893 m!6958936))

(assert (=> b!6108893 m!6958936))

(assert (=> b!6108893 m!6958940))

(assert (=> b!6108899 m!6957532))

(assert (=> d!1914594 m!6957000))

(assert (=> d!1914594 m!6958932))

(assert (=> d!1914594 m!6956996))

(assert (=> d!1913946 d!1914594))

(assert (=> d!1913946 d!1913934))

(declare-fun b!6108903 () Bool)

(declare-fun e!3725194 () List!64472)

(assert (=> b!6108903 (= e!3725194 (Cons!64348 (h!70796 (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348))) (++!14144 (t!377925 (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348))) (t!377925 (t!377925 s!2326)))))))

(declare-fun b!6108905 () Bool)

(declare-fun e!3725195 () Bool)

(declare-fun lt!2329868 () List!64472)

(assert (=> b!6108905 (= e!3725195 (or (not (= (t!377925 (t!377925 s!2326)) Nil!64348)) (= lt!2329868 (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348)))))))

(declare-fun b!6108904 () Bool)

(declare-fun res!2533995 () Bool)

(assert (=> b!6108904 (=> (not res!2533995) (not e!3725195))))

(assert (=> b!6108904 (= res!2533995 (= (size!40202 lt!2329868) (+ (size!40202 (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348))) (size!40202 (t!377925 (t!377925 s!2326))))))))

(declare-fun b!6108902 () Bool)

(assert (=> b!6108902 (= e!3725194 (t!377925 (t!377925 s!2326)))))

(declare-fun d!1914596 () Bool)

(assert (=> d!1914596 e!3725195))

(declare-fun res!2533996 () Bool)

(assert (=> d!1914596 (=> (not res!2533996) (not e!3725195))))

(assert (=> d!1914596 (= res!2533996 (= (content!11941 lt!2329868) ((_ map or) (content!11941 (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348))) (content!11941 (t!377925 (t!377925 s!2326))))))))

(assert (=> d!1914596 (= lt!2329868 e!3725194)))

(declare-fun c!1097533 () Bool)

(assert (=> d!1914596 (= c!1097533 ((_ is Nil!64348) (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348))))))

(assert (=> d!1914596 (= (++!14144 (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348)) (t!377925 (t!377925 s!2326))) lt!2329868)))

(assert (= (and d!1914596 c!1097533) b!6108902))

(assert (= (and d!1914596 (not c!1097533)) b!6108903))

(assert (= (and d!1914596 res!2533996) b!6108904))

(assert (= (and b!6108904 res!2533995) b!6108905))

(declare-fun m!6958942 () Bool)

(assert (=> b!6108903 m!6958942))

(declare-fun m!6958944 () Bool)

(assert (=> b!6108904 m!6958944))

(assert (=> b!6108904 m!6957598))

(declare-fun m!6958946 () Bool)

(assert (=> b!6108904 m!6958946))

(declare-fun m!6958948 () Bool)

(assert (=> b!6108904 m!6958948))

(declare-fun m!6958950 () Bool)

(assert (=> d!1914596 m!6958950))

(assert (=> d!1914596 m!6957598))

(declare-fun m!6958952 () Bool)

(assert (=> d!1914596 m!6958952))

(assert (=> d!1914596 m!6958582))

(assert (=> b!6106911 d!1914596))

(declare-fun b!6108907 () Bool)

(declare-fun e!3725196 () List!64472)

(assert (=> b!6108907 (= e!3725196 (Cons!64348 (h!70796 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) (++!14144 (t!377925 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348))))))

(declare-fun b!6108909 () Bool)

(declare-fun e!3725197 () Bool)

(declare-fun lt!2329869 () List!64472)

(assert (=> b!6108909 (= e!3725197 (or (not (= (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348) Nil!64348)) (= lt!2329869 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)))))))

(declare-fun b!6108908 () Bool)

(declare-fun res!2533997 () Bool)

(assert (=> b!6108908 (=> (not res!2533997) (not e!3725197))))

(assert (=> b!6108908 (= res!2533997 (= (size!40202 lt!2329869) (+ (size!40202 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) (size!40202 (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348)))))))

(declare-fun b!6108906 () Bool)

(assert (=> b!6108906 (= e!3725196 (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348))))

(declare-fun d!1914598 () Bool)

(assert (=> d!1914598 e!3725197))

(declare-fun res!2533998 () Bool)

(assert (=> d!1914598 (=> (not res!2533998) (not e!3725197))))

(assert (=> d!1914598 (= res!2533998 (= (content!11941 lt!2329869) ((_ map or) (content!11941 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) (content!11941 (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348)))))))

(assert (=> d!1914598 (= lt!2329869 e!3725196)))

(declare-fun c!1097534 () Bool)

(assert (=> d!1914598 (= c!1097534 ((_ is Nil!64348) (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))))))

(assert (=> d!1914598 (= (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348)) lt!2329869)))

(assert (= (and d!1914598 c!1097534) b!6108906))

(assert (= (and d!1914598 (not c!1097534)) b!6108907))

(assert (= (and d!1914598 res!2533998) b!6108908))

(assert (= (and b!6108908 res!2533997) b!6108909))

(declare-fun m!6958954 () Bool)

(assert (=> b!6108907 m!6958954))

(declare-fun m!6958956 () Bool)

(assert (=> b!6108908 m!6958956))

(assert (=> b!6108908 m!6957000))

(assert (=> b!6108908 m!6957558))

(declare-fun m!6958958 () Bool)

(assert (=> b!6108908 m!6958958))

(declare-fun m!6958960 () Bool)

(assert (=> d!1914598 m!6958960))

(assert (=> d!1914598 m!6957000))

(assert (=> d!1914598 m!6957564))

(declare-fun m!6958962 () Bool)

(assert (=> d!1914598 m!6958962))

(assert (=> b!6106911 d!1914598))

(declare-fun d!1914600 () Bool)

(assert (=> d!1914600 (= (++!14144 (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348)) (t!377925 (t!377925 s!2326))) s!2326)))

(declare-fun lt!2329870 () Unit!157385)

(assert (=> d!1914600 (= lt!2329870 (choose!45400 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (h!70796 (t!377925 s!2326)) (t!377925 (t!377925 s!2326)) s!2326))))

(assert (=> d!1914600 (= (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) (t!377925 (t!377925 s!2326)))) s!2326)))

(assert (=> d!1914600 (= (lemmaMoveElementToOtherListKeepsConcatEq!2239 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (h!70796 (t!377925 s!2326)) (t!377925 (t!377925 s!2326)) s!2326) lt!2329870)))

(declare-fun bs!1516542 () Bool)

(assert (= bs!1516542 d!1914600))

(assert (=> bs!1516542 m!6957000))

(assert (=> bs!1516542 m!6957598))

(assert (=> bs!1516542 m!6957598))

(assert (=> bs!1516542 m!6957600))

(assert (=> bs!1516542 m!6957000))

(declare-fun m!6958964 () Bool)

(assert (=> bs!1516542 m!6958964))

(assert (=> bs!1516542 m!6957000))

(declare-fun m!6958966 () Bool)

(assert (=> bs!1516542 m!6958966))

(assert (=> b!6106911 d!1914600))

(declare-fun b!6108910 () Bool)

(declare-fun e!3725198 () Bool)

(declare-fun lt!2329872 () Option!15948)

(assert (=> b!6108910 (= e!3725198 (= (++!14144 (_1!36339 (get!22188 lt!2329872)) (_2!36339 (get!22188 lt!2329872))) s!2326))))

(declare-fun b!6108911 () Bool)

(declare-fun e!3725201 () Option!15948)

(declare-fun e!3725200 () Option!15948)

(assert (=> b!6108911 (= e!3725201 e!3725200)))

(declare-fun c!1097535 () Bool)

(assert (=> b!6108911 (= c!1097535 ((_ is Nil!64348) (t!377925 (t!377925 s!2326))))))

(declare-fun b!6108912 () Bool)

(declare-fun e!3725202 () Bool)

(assert (=> b!6108912 (= e!3725202 (not (isDefined!12651 lt!2329872)))))

(declare-fun b!6108913 () Bool)

(declare-fun e!3725199 () Bool)

(assert (=> b!6108913 (= e!3725199 (matchR!8240 (regTwo!32626 r!7292) (t!377925 (t!377925 s!2326))))))

(declare-fun b!6108914 () Bool)

(assert (=> b!6108914 (= e!3725200 None!15947)))

(declare-fun b!6108915 () Bool)

(declare-fun lt!2329873 () Unit!157385)

(declare-fun lt!2329871 () Unit!157385)

(assert (=> b!6108915 (= lt!2329873 lt!2329871)))

(assert (=> b!6108915 (= (++!14144 (++!14144 (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348)) (Cons!64348 (h!70796 (t!377925 (t!377925 s!2326))) Nil!64348)) (t!377925 (t!377925 (t!377925 s!2326)))) s!2326)))

(assert (=> b!6108915 (= lt!2329871 (lemmaMoveElementToOtherListKeepsConcatEq!2239 (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348)) (h!70796 (t!377925 (t!377925 s!2326))) (t!377925 (t!377925 (t!377925 s!2326))) s!2326))))

(assert (=> b!6108915 (= e!3725200 (findConcatSeparation!2362 (regOne!32626 r!7292) (regTwo!32626 r!7292) (++!14144 (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348)) (Cons!64348 (h!70796 (t!377925 (t!377925 s!2326))) Nil!64348)) (t!377925 (t!377925 (t!377925 s!2326))) s!2326))))

(declare-fun b!6108916 () Bool)

(declare-fun res!2533999 () Bool)

(assert (=> b!6108916 (=> (not res!2533999) (not e!3725198))))

(assert (=> b!6108916 (= res!2533999 (matchR!8240 (regOne!32626 r!7292) (_1!36339 (get!22188 lt!2329872))))))

(declare-fun d!1914602 () Bool)

(assert (=> d!1914602 e!3725202))

(declare-fun res!2534001 () Bool)

(assert (=> d!1914602 (=> res!2534001 e!3725202)))

(assert (=> d!1914602 (= res!2534001 e!3725198)))

(declare-fun res!2534003 () Bool)

(assert (=> d!1914602 (=> (not res!2534003) (not e!3725198))))

(assert (=> d!1914602 (= res!2534003 (isDefined!12651 lt!2329872))))

(assert (=> d!1914602 (= lt!2329872 e!3725201)))

(declare-fun c!1097536 () Bool)

(assert (=> d!1914602 (= c!1097536 e!3725199)))

(declare-fun res!2534000 () Bool)

(assert (=> d!1914602 (=> (not res!2534000) (not e!3725199))))

(assert (=> d!1914602 (= res!2534000 (matchR!8240 (regOne!32626 r!7292) (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348))))))

(assert (=> d!1914602 (validRegex!7793 (regOne!32626 r!7292))))

(assert (=> d!1914602 (= (findConcatSeparation!2362 (regOne!32626 r!7292) (regTwo!32626 r!7292) (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348)) (t!377925 (t!377925 s!2326)) s!2326) lt!2329872)))

(declare-fun b!6108917 () Bool)

(declare-fun res!2534002 () Bool)

(assert (=> b!6108917 (=> (not res!2534002) (not e!3725198))))

(assert (=> b!6108917 (= res!2534002 (matchR!8240 (regTwo!32626 r!7292) (_2!36339 (get!22188 lt!2329872))))))

(declare-fun b!6108918 () Bool)

(assert (=> b!6108918 (= e!3725201 (Some!15947 (tuple2!66073 (++!14144 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)) (Cons!64348 (h!70796 (t!377925 s!2326)) Nil!64348)) (t!377925 (t!377925 s!2326)))))))

(assert (= (and d!1914602 res!2534000) b!6108913))

(assert (= (and d!1914602 c!1097536) b!6108918))

(assert (= (and d!1914602 (not c!1097536)) b!6108911))

(assert (= (and b!6108911 c!1097535) b!6108914))

(assert (= (and b!6108911 (not c!1097535)) b!6108915))

(assert (= (and d!1914602 res!2534003) b!6108916))

(assert (= (and b!6108916 res!2533999) b!6108917))

(assert (= (and b!6108917 res!2534002) b!6108910))

(assert (= (and d!1914602 (not res!2534001)) b!6108912))

(declare-fun m!6958968 () Bool)

(assert (=> b!6108910 m!6958968))

(declare-fun m!6958970 () Bool)

(assert (=> b!6108910 m!6958970))

(assert (=> b!6108917 m!6958968))

(declare-fun m!6958972 () Bool)

(assert (=> b!6108917 m!6958972))

(declare-fun m!6958974 () Bool)

(assert (=> d!1914602 m!6958974))

(assert (=> d!1914602 m!6957598))

(declare-fun m!6958976 () Bool)

(assert (=> d!1914602 m!6958976))

(assert (=> d!1914602 m!6956996))

(assert (=> b!6108916 m!6958968))

(declare-fun m!6958978 () Bool)

(assert (=> b!6108916 m!6958978))

(assert (=> b!6108915 m!6957598))

(declare-fun m!6958980 () Bool)

(assert (=> b!6108915 m!6958980))

(assert (=> b!6108915 m!6958980))

(declare-fun m!6958982 () Bool)

(assert (=> b!6108915 m!6958982))

(assert (=> b!6108915 m!6957598))

(declare-fun m!6958984 () Bool)

(assert (=> b!6108915 m!6958984))

(assert (=> b!6108915 m!6958980))

(declare-fun m!6958986 () Bool)

(assert (=> b!6108915 m!6958986))

(assert (=> b!6108912 m!6958974))

(declare-fun m!6958988 () Bool)

(assert (=> b!6108913 m!6958988))

(assert (=> b!6106911 d!1914602))

(declare-fun d!1914604 () Bool)

(assert (=> d!1914604 (= (nullable!6050 (reg!16386 lt!2329705)) (nullableFct!2014 (reg!16386 lt!2329705)))))

(declare-fun bs!1516543 () Bool)

(assert (= bs!1516543 d!1914604))

(declare-fun m!6958990 () Bool)

(assert (=> bs!1516543 m!6958990))

(assert (=> b!6107001 d!1914604))

(declare-fun bs!1516544 () Bool)

(declare-fun b!6108920 () Bool)

(assert (= bs!1516544 (and b!6108920 b!6106173)))

(declare-fun lambda!332786 () Int)

(assert (=> bs!1516544 (not (= lambda!332786 lambda!332726))))

(declare-fun bs!1516545 () Bool)

(assert (= bs!1516545 (and b!6108920 d!1913716)))

(assert (=> bs!1516545 (not (= lambda!332786 lambda!332710))))

(declare-fun bs!1516546 () Bool)

(assert (= bs!1516546 (and b!6108920 b!6107127)))

(assert (=> bs!1516546 (not (= lambda!332786 lambda!332765))))

(declare-fun bs!1516547 () Bool)

(assert (= bs!1516547 (and b!6108920 b!6108369)))

(assert (=> bs!1516547 (= (and (= (reg!16386 (regOne!32627 (regTwo!32627 r!7292))) (reg!16386 (regTwo!32627 (regTwo!32627 r!7292)))) (= (regOne!32627 (regTwo!32627 r!7292)) (regTwo!32627 (regTwo!32627 r!7292)))) (= lambda!332786 lambda!332781))))

(declare-fun bs!1516548 () Bool)

(assert (= bs!1516548 (and b!6108920 b!6108544)))

(assert (=> bs!1516548 (= (and (= (reg!16386 (regOne!32627 (regTwo!32627 r!7292))) (reg!16386 (regTwo!32627 (regOne!32627 r!7292)))) (= (regOne!32627 (regTwo!32627 r!7292)) (regTwo!32627 (regOne!32627 r!7292)))) (= lambda!332786 lambda!332784))))

(declare-fun bs!1516549 () Bool)

(assert (= bs!1516549 (and b!6108920 b!6107126)))

(assert (=> bs!1516549 (= (and (= (reg!16386 (regOne!32627 (regTwo!32627 r!7292))) (reg!16386 (regTwo!32627 r!7292))) (= (regOne!32627 (regTwo!32627 r!7292)) (regTwo!32627 r!7292))) (= lambda!332786 lambda!332764))))

(declare-fun bs!1516550 () Bool)

(assert (= bs!1516550 (and b!6108920 d!1914040)))

(assert (=> bs!1516550 (not (= lambda!332786 lambda!332762))))

(declare-fun bs!1516551 () Bool)

(assert (= bs!1516551 (and b!6108920 d!1913726)))

(assert (=> bs!1516551 (not (= lambda!332786 lambda!332716))))

(declare-fun bs!1516552 () Bool)

(assert (= bs!1516552 (and b!6108920 b!6105694)))

(assert (=> bs!1516552 (not (= lambda!332786 lambda!332672))))

(declare-fun bs!1516553 () Bool)

(assert (= bs!1516553 (and b!6108920 b!6108545)))

(assert (=> bs!1516553 (not (= lambda!332786 lambda!332785))))

(assert (=> bs!1516550 (not (= lambda!332786 lambda!332763))))

(declare-fun bs!1516554 () Bool)

(assert (= bs!1516554 (and b!6108920 b!6106935)))

(assert (=> bs!1516554 (= (and (= (reg!16386 (regOne!32627 (regTwo!32627 r!7292))) (reg!16386 (regOne!32627 r!7292))) (= (regOne!32627 (regTwo!32627 r!7292)) (regOne!32627 r!7292))) (= lambda!332786 lambda!332753))))

(declare-fun bs!1516555 () Bool)

(assert (= bs!1516555 (and b!6108920 d!1913938)))

(assert (=> bs!1516555 (not (= lambda!332786 lambda!332750))))

(assert (=> bs!1516551 (not (= lambda!332786 lambda!332715))))

(declare-fun bs!1516556 () Bool)

(assert (= bs!1516556 (and b!6108920 b!6106172)))

(assert (=> bs!1516556 (= (and (= (reg!16386 (regOne!32627 (regTwo!32627 r!7292))) (reg!16386 r!7292)) (= (regOne!32627 (regTwo!32627 r!7292)) r!7292)) (= lambda!332786 lambda!332725))))

(declare-fun bs!1516557 () Bool)

(assert (= bs!1516557 (and b!6108920 b!6106936)))

(assert (=> bs!1516557 (not (= lambda!332786 lambda!332754))))

(assert (=> bs!1516552 (not (= lambda!332786 lambda!332673))))

(declare-fun bs!1516558 () Bool)

(assert (= bs!1516558 (and b!6108920 b!6108370)))

(assert (=> bs!1516558 (not (= lambda!332786 lambda!332782))))

(assert (=> b!6108920 true))

(assert (=> b!6108920 true))

(declare-fun bs!1516559 () Bool)

(declare-fun b!6108921 () Bool)

(assert (= bs!1516559 (and b!6108921 b!6106173)))

(declare-fun lambda!332787 () Int)

(assert (=> bs!1516559 (= (and (= (regOne!32626 (regOne!32627 (regTwo!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regOne!32627 (regTwo!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332787 lambda!332726))))

(declare-fun bs!1516560 () Bool)

(assert (= bs!1516560 (and b!6108921 d!1913716)))

(assert (=> bs!1516560 (not (= lambda!332787 lambda!332710))))

(declare-fun bs!1516561 () Bool)

(assert (= bs!1516561 (and b!6108921 b!6108369)))

(assert (=> bs!1516561 (not (= lambda!332787 lambda!332781))))

(declare-fun bs!1516562 () Bool)

(assert (= bs!1516562 (and b!6108921 b!6108544)))

(assert (=> bs!1516562 (not (= lambda!332787 lambda!332784))))

(declare-fun bs!1516563 () Bool)

(assert (= bs!1516563 (and b!6108921 b!6107126)))

(assert (=> bs!1516563 (not (= lambda!332787 lambda!332764))))

(declare-fun bs!1516564 () Bool)

(assert (= bs!1516564 (and b!6108921 d!1914040)))

(assert (=> bs!1516564 (not (= lambda!332787 lambda!332762))))

(declare-fun bs!1516565 () Bool)

(assert (= bs!1516565 (and b!6108921 d!1913726)))

(assert (=> bs!1516565 (= (and (= (regOne!32626 (regOne!32627 (regTwo!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regOne!32627 (regTwo!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332787 lambda!332716))))

(declare-fun bs!1516566 () Bool)

(assert (= bs!1516566 (and b!6108921 b!6105694)))

(assert (=> bs!1516566 (not (= lambda!332787 lambda!332672))))

(declare-fun bs!1516567 () Bool)

(assert (= bs!1516567 (and b!6108921 b!6108545)))

(assert (=> bs!1516567 (= (and (= (regOne!32626 (regOne!32627 (regTwo!32627 r!7292))) (regOne!32626 (regTwo!32627 (regOne!32627 r!7292)))) (= (regTwo!32626 (regOne!32627 (regTwo!32627 r!7292))) (regTwo!32626 (regTwo!32627 (regOne!32627 r!7292))))) (= lambda!332787 lambda!332785))))

(assert (=> bs!1516564 (= (and (= (regOne!32626 (regOne!32627 (regTwo!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regOne!32627 (regTwo!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332787 lambda!332763))))

(declare-fun bs!1516568 () Bool)

(assert (= bs!1516568 (and b!6108921 b!6106935)))

(assert (=> bs!1516568 (not (= lambda!332787 lambda!332753))))

(declare-fun bs!1516569 () Bool)

(assert (= bs!1516569 (and b!6108921 d!1913938)))

(assert (=> bs!1516569 (not (= lambda!332787 lambda!332750))))

(assert (=> bs!1516565 (not (= lambda!332787 lambda!332715))))

(declare-fun bs!1516570 () Bool)

(assert (= bs!1516570 (and b!6108921 b!6106172)))

(assert (=> bs!1516570 (not (= lambda!332787 lambda!332725))))

(declare-fun bs!1516571 () Bool)

(assert (= bs!1516571 (and b!6108921 b!6106936)))

(assert (=> bs!1516571 (= (and (= (regOne!32626 (regOne!32627 (regTwo!32627 r!7292))) (regOne!32626 (regOne!32627 r!7292))) (= (regTwo!32626 (regOne!32627 (regTwo!32627 r!7292))) (regTwo!32626 (regOne!32627 r!7292)))) (= lambda!332787 lambda!332754))))

(declare-fun bs!1516572 () Bool)

(assert (= bs!1516572 (and b!6108921 b!6108920)))

(assert (=> bs!1516572 (not (= lambda!332787 lambda!332786))))

(declare-fun bs!1516573 () Bool)

(assert (= bs!1516573 (and b!6108921 b!6107127)))

(assert (=> bs!1516573 (= (and (= (regOne!32626 (regOne!32627 (regTwo!32627 r!7292))) (regOne!32626 (regTwo!32627 r!7292))) (= (regTwo!32626 (regOne!32627 (regTwo!32627 r!7292))) (regTwo!32626 (regTwo!32627 r!7292)))) (= lambda!332787 lambda!332765))))

(assert (=> bs!1516566 (= (and (= (regOne!32626 (regOne!32627 (regTwo!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regOne!32627 (regTwo!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332787 lambda!332673))))

(declare-fun bs!1516574 () Bool)

(assert (= bs!1516574 (and b!6108921 b!6108370)))

(assert (=> bs!1516574 (= (and (= (regOne!32626 (regOne!32627 (regTwo!32627 r!7292))) (regOne!32626 (regTwo!32627 (regTwo!32627 r!7292)))) (= (regTwo!32626 (regOne!32627 (regTwo!32627 r!7292))) (regTwo!32626 (regTwo!32627 (regTwo!32627 r!7292))))) (= lambda!332787 lambda!332782))))

(assert (=> b!6108921 true))

(assert (=> b!6108921 true))

(declare-fun d!1914606 () Bool)

(declare-fun c!1097538 () Bool)

(assert (=> d!1914606 (= c!1097538 ((_ is EmptyExpr!16057) (regOne!32627 (regTwo!32627 r!7292))))))

(declare-fun e!3725203 () Bool)

(assert (=> d!1914606 (= (matchRSpec!3158 (regOne!32627 (regTwo!32627 r!7292)) s!2326) e!3725203)))

(declare-fun c!1097540 () Bool)

(declare-fun bm!505446 () Bool)

(declare-fun call!505452 () Bool)

(assert (=> bm!505446 (= call!505452 (Exists!3127 (ite c!1097540 lambda!332786 lambda!332787)))))

(declare-fun b!6108919 () Bool)

(declare-fun e!3725205 () Bool)

(declare-fun e!3725207 () Bool)

(assert (=> b!6108919 (= e!3725205 e!3725207)))

(assert (=> b!6108919 (= c!1097540 ((_ is Star!16057) (regOne!32627 (regTwo!32627 r!7292))))))

(declare-fun e!3725209 () Bool)

(assert (=> b!6108920 (= e!3725209 call!505452)))

(assert (=> b!6108921 (= e!3725207 call!505452)))

(declare-fun b!6108922 () Bool)

(declare-fun res!2534006 () Bool)

(assert (=> b!6108922 (=> res!2534006 e!3725209)))

(declare-fun call!505451 () Bool)

(assert (=> b!6108922 (= res!2534006 call!505451)))

(assert (=> b!6108922 (= e!3725207 e!3725209)))

(declare-fun b!6108923 () Bool)

(declare-fun e!3725208 () Bool)

(assert (=> b!6108923 (= e!3725205 e!3725208)))

(declare-fun res!2534004 () Bool)

(assert (=> b!6108923 (= res!2534004 (matchRSpec!3158 (regOne!32627 (regOne!32627 (regTwo!32627 r!7292))) s!2326))))

(assert (=> b!6108923 (=> res!2534004 e!3725208)))

(declare-fun bm!505447 () Bool)

(assert (=> bm!505447 (= call!505451 (isEmpty!36274 s!2326))))

(declare-fun b!6108924 () Bool)

(declare-fun e!3725204 () Bool)

(assert (=> b!6108924 (= e!3725204 (= s!2326 (Cons!64348 (c!1096851 (regOne!32627 (regTwo!32627 r!7292))) Nil!64348)))))

(declare-fun b!6108925 () Bool)

(declare-fun c!1097539 () Bool)

(assert (=> b!6108925 (= c!1097539 ((_ is Union!16057) (regOne!32627 (regTwo!32627 r!7292))))))

(assert (=> b!6108925 (= e!3725204 e!3725205)))

(declare-fun b!6108926 () Bool)

(declare-fun e!3725206 () Bool)

(assert (=> b!6108926 (= e!3725203 e!3725206)))

(declare-fun res!2534005 () Bool)

(assert (=> b!6108926 (= res!2534005 (not ((_ is EmptyLang!16057) (regOne!32627 (regTwo!32627 r!7292)))))))

(assert (=> b!6108926 (=> (not res!2534005) (not e!3725206))))

(declare-fun b!6108927 () Bool)

(assert (=> b!6108927 (= e!3725208 (matchRSpec!3158 (regTwo!32627 (regOne!32627 (regTwo!32627 r!7292))) s!2326))))

(declare-fun b!6108928 () Bool)

(declare-fun c!1097537 () Bool)

(assert (=> b!6108928 (= c!1097537 ((_ is ElementMatch!16057) (regOne!32627 (regTwo!32627 r!7292))))))

(assert (=> b!6108928 (= e!3725206 e!3725204)))

(declare-fun b!6108929 () Bool)

(assert (=> b!6108929 (= e!3725203 call!505451)))

(assert (= (and d!1914606 c!1097538) b!6108929))

(assert (= (and d!1914606 (not c!1097538)) b!6108926))

(assert (= (and b!6108926 res!2534005) b!6108928))

(assert (= (and b!6108928 c!1097537) b!6108924))

(assert (= (and b!6108928 (not c!1097537)) b!6108925))

(assert (= (and b!6108925 c!1097539) b!6108923))

(assert (= (and b!6108925 (not c!1097539)) b!6108919))

(assert (= (and b!6108923 (not res!2534004)) b!6108927))

(assert (= (and b!6108919 c!1097540) b!6108922))

(assert (= (and b!6108919 (not c!1097540)) b!6108921))

(assert (= (and b!6108922 (not res!2534006)) b!6108920))

(assert (= (or b!6108920 b!6108921) bm!505446))

(assert (= (or b!6108929 b!6108922) bm!505447))

(declare-fun m!6958992 () Bool)

(assert (=> bm!505446 m!6958992))

(declare-fun m!6958994 () Bool)

(assert (=> b!6108923 m!6958994))

(assert (=> bm!505447 m!6957084))

(declare-fun m!6958996 () Bool)

(assert (=> b!6108927 m!6958996))

(assert (=> b!6107129 d!1914606))

(declare-fun d!1914608 () Bool)

(assert (=> d!1914608 (= (isUnion!914 lt!2329804) ((_ is Union!16057) lt!2329804))))

(assert (=> b!6107034 d!1914608))

(declare-fun d!1914610 () Bool)

(assert (=> d!1914610 (= (isEmpty!36274 (_1!36339 (get!22188 lt!2329734))) ((_ is Nil!64348) (_1!36339 (get!22188 lt!2329734))))))

(assert (=> d!1914014 d!1914610))

(assert (=> d!1914014 d!1913934))

(declare-fun b!6108931 () Bool)

(declare-fun e!3725210 () List!64472)

(assert (=> b!6108931 (= e!3725210 (Cons!64348 (h!70796 (t!377925 (_1!36339 (get!22188 lt!2329734)))) (++!14144 (t!377925 (t!377925 (_1!36339 (get!22188 lt!2329734)))) (_2!36339 (get!22188 lt!2329734)))))))

(declare-fun b!6108933 () Bool)

(declare-fun e!3725211 () Bool)

(declare-fun lt!2329874 () List!64472)

(assert (=> b!6108933 (= e!3725211 (or (not (= (_2!36339 (get!22188 lt!2329734)) Nil!64348)) (= lt!2329874 (t!377925 (_1!36339 (get!22188 lt!2329734))))))))

(declare-fun b!6108932 () Bool)

(declare-fun res!2534007 () Bool)

(assert (=> b!6108932 (=> (not res!2534007) (not e!3725211))))

(assert (=> b!6108932 (= res!2534007 (= (size!40202 lt!2329874) (+ (size!40202 (t!377925 (_1!36339 (get!22188 lt!2329734)))) (size!40202 (_2!36339 (get!22188 lt!2329734))))))))

(declare-fun b!6108930 () Bool)

(assert (=> b!6108930 (= e!3725210 (_2!36339 (get!22188 lt!2329734)))))

(declare-fun d!1914612 () Bool)

(assert (=> d!1914612 e!3725211))

(declare-fun res!2534008 () Bool)

(assert (=> d!1914612 (=> (not res!2534008) (not e!3725211))))

(assert (=> d!1914612 (= res!2534008 (= (content!11941 lt!2329874) ((_ map or) (content!11941 (t!377925 (_1!36339 (get!22188 lt!2329734)))) (content!11941 (_2!36339 (get!22188 lt!2329734))))))))

(assert (=> d!1914612 (= lt!2329874 e!3725210)))

(declare-fun c!1097541 () Bool)

(assert (=> d!1914612 (= c!1097541 ((_ is Nil!64348) (t!377925 (_1!36339 (get!22188 lt!2329734)))))))

(assert (=> d!1914612 (= (++!14144 (t!377925 (_1!36339 (get!22188 lt!2329734))) (_2!36339 (get!22188 lt!2329734))) lt!2329874)))

(assert (= (and d!1914612 c!1097541) b!6108930))

(assert (= (and d!1914612 (not c!1097541)) b!6108931))

(assert (= (and d!1914612 res!2534008) b!6108932))

(assert (= (and b!6108932 res!2534007) b!6108933))

(declare-fun m!6958998 () Bool)

(assert (=> b!6108931 m!6958998))

(declare-fun m!6959000 () Bool)

(assert (=> b!6108932 m!6959000))

(assert (=> b!6108932 m!6958746))

(assert (=> b!6108932 m!6957830))

(declare-fun m!6959002 () Bool)

(assert (=> d!1914612 m!6959002))

(assert (=> d!1914612 m!6958614))

(assert (=> d!1914612 m!6957836))

(assert (=> b!6107122 d!1914612))

(declare-fun b!6108934 () Bool)

(declare-fun e!3725217 () Bool)

(declare-fun e!3725218 () Bool)

(assert (=> b!6108934 (= e!3725217 e!3725218)))

(declare-fun c!1097542 () Bool)

(assert (=> b!6108934 (= c!1097542 ((_ is Union!16057) (ite c!1097168 (regOne!32627 lt!2329705) (regOne!32626 lt!2329705))))))

(declare-fun b!6108935 () Bool)

(declare-fun e!3725216 () Bool)

(declare-fun call!505454 () Bool)

(assert (=> b!6108935 (= e!3725216 call!505454)))

(declare-fun b!6108936 () Bool)

(declare-fun e!3725214 () Bool)

(assert (=> b!6108936 (= e!3725214 e!3725217)))

(declare-fun c!1097543 () Bool)

(assert (=> b!6108936 (= c!1097543 ((_ is Star!16057) (ite c!1097168 (regOne!32627 lt!2329705) (regOne!32626 lt!2329705))))))

(declare-fun bm!505448 () Bool)

(declare-fun call!505453 () Bool)

(assert (=> bm!505448 (= call!505454 call!505453)))

(declare-fun b!6108937 () Bool)

(declare-fun res!2534011 () Bool)

(declare-fun e!3725213 () Bool)

(assert (=> b!6108937 (=> res!2534011 e!3725213)))

(assert (=> b!6108937 (= res!2534011 (not ((_ is Concat!24902) (ite c!1097168 (regOne!32627 lt!2329705) (regOne!32626 lt!2329705)))))))

(assert (=> b!6108937 (= e!3725218 e!3725213)))

(declare-fun b!6108938 () Bool)

(declare-fun e!3725215 () Bool)

(assert (=> b!6108938 (= e!3725215 call!505454)))

(declare-fun bm!505449 () Bool)

(assert (=> bm!505449 (= call!505453 (validRegex!7793 (ite c!1097543 (reg!16386 (ite c!1097168 (regOne!32627 lt!2329705) (regOne!32626 lt!2329705))) (ite c!1097542 (regTwo!32627 (ite c!1097168 (regOne!32627 lt!2329705) (regOne!32626 lt!2329705))) (regTwo!32626 (ite c!1097168 (regOne!32627 lt!2329705) (regOne!32626 lt!2329705)))))))))

(declare-fun b!6108939 () Bool)

(declare-fun e!3725212 () Bool)

(assert (=> b!6108939 (= e!3725217 e!3725212)))

(declare-fun res!2534012 () Bool)

(assert (=> b!6108939 (= res!2534012 (not (nullable!6050 (reg!16386 (ite c!1097168 (regOne!32627 lt!2329705) (regOne!32626 lt!2329705))))))))

(assert (=> b!6108939 (=> (not res!2534012) (not e!3725212))))

(declare-fun b!6108940 () Bool)

(assert (=> b!6108940 (= e!3725213 e!3725215)))

(declare-fun res!2534013 () Bool)

(assert (=> b!6108940 (=> (not res!2534013) (not e!3725215))))

(declare-fun call!505455 () Bool)

(assert (=> b!6108940 (= res!2534013 call!505455)))

(declare-fun b!6108941 () Bool)

(assert (=> b!6108941 (= e!3725212 call!505453)))

(declare-fun b!6108942 () Bool)

(declare-fun res!2534009 () Bool)

(assert (=> b!6108942 (=> (not res!2534009) (not e!3725216))))

(assert (=> b!6108942 (= res!2534009 call!505455)))

(assert (=> b!6108942 (= e!3725218 e!3725216)))

(declare-fun bm!505450 () Bool)

(assert (=> bm!505450 (= call!505455 (validRegex!7793 (ite c!1097542 (regOne!32627 (ite c!1097168 (regOne!32627 lt!2329705) (regOne!32626 lt!2329705))) (regOne!32626 (ite c!1097168 (regOne!32627 lt!2329705) (regOne!32626 lt!2329705))))))))

(declare-fun d!1914614 () Bool)

(declare-fun res!2534010 () Bool)

(assert (=> d!1914614 (=> res!2534010 e!3725214)))

(assert (=> d!1914614 (= res!2534010 ((_ is ElementMatch!16057) (ite c!1097168 (regOne!32627 lt!2329705) (regOne!32626 lt!2329705))))))

(assert (=> d!1914614 (= (validRegex!7793 (ite c!1097168 (regOne!32627 lt!2329705) (regOne!32626 lt!2329705))) e!3725214)))

(assert (= (and d!1914614 (not res!2534010)) b!6108936))

(assert (= (and b!6108936 c!1097543) b!6108939))

(assert (= (and b!6108936 (not c!1097543)) b!6108934))

(assert (= (and b!6108939 res!2534012) b!6108941))

(assert (= (and b!6108934 c!1097542) b!6108942))

(assert (= (and b!6108934 (not c!1097542)) b!6108937))

(assert (= (and b!6108942 res!2534009) b!6108935))

(assert (= (and b!6108937 (not res!2534011)) b!6108940))

(assert (= (and b!6108940 res!2534013) b!6108938))

(assert (= (or b!6108935 b!6108938) bm!505448))

(assert (= (or b!6108942 b!6108940) bm!505450))

(assert (= (or b!6108941 bm!505448) bm!505449))

(declare-fun m!6959004 () Bool)

(assert (=> bm!505449 m!6959004))

(declare-fun m!6959006 () Bool)

(assert (=> b!6108939 m!6959006))

(declare-fun m!6959008 () Bool)

(assert (=> bm!505450 m!6959008))

(assert (=> bm!505145 d!1914614))

(declare-fun b!6108943 () Bool)

(declare-fun e!3725224 () Bool)

(declare-fun e!3725225 () Bool)

(assert (=> b!6108943 (= e!3725224 e!3725225)))

(declare-fun c!1097544 () Bool)

(assert (=> b!6108943 (= c!1097544 ((_ is Union!16057) (ite c!1097195 (reg!16386 lt!2329762) (ite c!1097194 (regTwo!32627 lt!2329762) (regTwo!32626 lt!2329762)))))))

(declare-fun b!6108944 () Bool)

(declare-fun e!3725223 () Bool)

(declare-fun call!505457 () Bool)

(assert (=> b!6108944 (= e!3725223 call!505457)))

(declare-fun b!6108945 () Bool)

(declare-fun e!3725221 () Bool)

(assert (=> b!6108945 (= e!3725221 e!3725224)))

(declare-fun c!1097545 () Bool)

(assert (=> b!6108945 (= c!1097545 ((_ is Star!16057) (ite c!1097195 (reg!16386 lt!2329762) (ite c!1097194 (regTwo!32627 lt!2329762) (regTwo!32626 lt!2329762)))))))

(declare-fun bm!505451 () Bool)

(declare-fun call!505456 () Bool)

(assert (=> bm!505451 (= call!505457 call!505456)))

(declare-fun b!6108946 () Bool)

(declare-fun res!2534016 () Bool)

(declare-fun e!3725220 () Bool)

(assert (=> b!6108946 (=> res!2534016 e!3725220)))

(assert (=> b!6108946 (= res!2534016 (not ((_ is Concat!24902) (ite c!1097195 (reg!16386 lt!2329762) (ite c!1097194 (regTwo!32627 lt!2329762) (regTwo!32626 lt!2329762))))))))

(assert (=> b!6108946 (= e!3725225 e!3725220)))

(declare-fun b!6108947 () Bool)

(declare-fun e!3725222 () Bool)

(assert (=> b!6108947 (= e!3725222 call!505457)))

(declare-fun bm!505452 () Bool)

(assert (=> bm!505452 (= call!505456 (validRegex!7793 (ite c!1097545 (reg!16386 (ite c!1097195 (reg!16386 lt!2329762) (ite c!1097194 (regTwo!32627 lt!2329762) (regTwo!32626 lt!2329762)))) (ite c!1097544 (regTwo!32627 (ite c!1097195 (reg!16386 lt!2329762) (ite c!1097194 (regTwo!32627 lt!2329762) (regTwo!32626 lt!2329762)))) (regTwo!32626 (ite c!1097195 (reg!16386 lt!2329762) (ite c!1097194 (regTwo!32627 lt!2329762) (regTwo!32626 lt!2329762))))))))))

(declare-fun b!6108948 () Bool)

(declare-fun e!3725219 () Bool)

(assert (=> b!6108948 (= e!3725224 e!3725219)))

(declare-fun res!2534017 () Bool)

(assert (=> b!6108948 (= res!2534017 (not (nullable!6050 (reg!16386 (ite c!1097195 (reg!16386 lt!2329762) (ite c!1097194 (regTwo!32627 lt!2329762) (regTwo!32626 lt!2329762)))))))))

(assert (=> b!6108948 (=> (not res!2534017) (not e!3725219))))

(declare-fun b!6108949 () Bool)

(assert (=> b!6108949 (= e!3725220 e!3725222)))

(declare-fun res!2534018 () Bool)

(assert (=> b!6108949 (=> (not res!2534018) (not e!3725222))))

(declare-fun call!505458 () Bool)

(assert (=> b!6108949 (= res!2534018 call!505458)))

(declare-fun b!6108950 () Bool)

(assert (=> b!6108950 (= e!3725219 call!505456)))

(declare-fun b!6108951 () Bool)

(declare-fun res!2534014 () Bool)

(assert (=> b!6108951 (=> (not res!2534014) (not e!3725223))))

(assert (=> b!6108951 (= res!2534014 call!505458)))

(assert (=> b!6108951 (= e!3725225 e!3725223)))

(declare-fun bm!505453 () Bool)

(assert (=> bm!505453 (= call!505458 (validRegex!7793 (ite c!1097544 (regOne!32627 (ite c!1097195 (reg!16386 lt!2329762) (ite c!1097194 (regTwo!32627 lt!2329762) (regTwo!32626 lt!2329762)))) (regOne!32626 (ite c!1097195 (reg!16386 lt!2329762) (ite c!1097194 (regTwo!32627 lt!2329762) (regTwo!32626 lt!2329762)))))))))

(declare-fun d!1914616 () Bool)

(declare-fun res!2534015 () Bool)

(assert (=> d!1914616 (=> res!2534015 e!3725221)))

(assert (=> d!1914616 (= res!2534015 ((_ is ElementMatch!16057) (ite c!1097195 (reg!16386 lt!2329762) (ite c!1097194 (regTwo!32627 lt!2329762) (regTwo!32626 lt!2329762)))))))

(assert (=> d!1914616 (= (validRegex!7793 (ite c!1097195 (reg!16386 lt!2329762) (ite c!1097194 (regTwo!32627 lt!2329762) (regTwo!32626 lt!2329762)))) e!3725221)))

(assert (= (and d!1914616 (not res!2534015)) b!6108945))

(assert (= (and b!6108945 c!1097545) b!6108948))

(assert (= (and b!6108945 (not c!1097545)) b!6108943))

(assert (= (and b!6108948 res!2534017) b!6108950))

(assert (= (and b!6108943 c!1097544) b!6108951))

(assert (= (and b!6108943 (not c!1097544)) b!6108946))

(assert (= (and b!6108951 res!2534014) b!6108944))

(assert (= (and b!6108946 (not res!2534016)) b!6108949))

(assert (= (and b!6108949 res!2534018) b!6108947))

(assert (= (or b!6108944 b!6108947) bm!505451))

(assert (= (or b!6108951 b!6108949) bm!505453))

(assert (= (or b!6108950 bm!505451) bm!505452))

(declare-fun m!6959010 () Bool)

(assert (=> bm!505452 m!6959010))

(declare-fun m!6959012 () Bool)

(assert (=> b!6108948 m!6959012))

(declare-fun m!6959014 () Bool)

(assert (=> bm!505453 m!6959014))

(assert (=> bm!505169 d!1914616))

(declare-fun d!1914618 () Bool)

(assert (=> d!1914618 (= (head!12636 (_1!36339 (get!22188 lt!2329734))) (h!70796 (_1!36339 (get!22188 lt!2329734))))))

(assert (=> b!6107024 d!1914618))

(declare-fun b!6108952 () Bool)

(declare-fun e!3725231 () Bool)

(declare-fun e!3725226 () Bool)

(assert (=> b!6108952 (= e!3725231 e!3725226)))

(declare-fun c!1097546 () Bool)

(assert (=> b!6108952 (= c!1097546 ((_ is Union!16057) r!7292))))

(declare-fun b!6108953 () Bool)

(declare-fun e!3725229 () Bool)

(assert (=> b!6108953 (= e!3725226 e!3725229)))

(declare-fun res!2534023 () Bool)

(declare-fun call!505459 () Bool)

(assert (=> b!6108953 (= res!2534023 call!505459)))

(assert (=> b!6108953 (=> res!2534023 e!3725229)))

(declare-fun b!6108954 () Bool)

(declare-fun e!3725227 () Bool)

(assert (=> b!6108954 (= e!3725227 e!3725231)))

(declare-fun res!2534022 () Bool)

(assert (=> b!6108954 (=> res!2534022 e!3725231)))

(assert (=> b!6108954 (= res!2534022 ((_ is Star!16057) r!7292))))

(declare-fun b!6108955 () Bool)

(declare-fun e!3725228 () Bool)

(declare-fun call!505460 () Bool)

(assert (=> b!6108955 (= e!3725228 call!505460)))

(declare-fun b!6108956 () Bool)

(assert (=> b!6108956 (= e!3725226 e!3725228)))

(declare-fun res!2534021 () Bool)

(assert (=> b!6108956 (= res!2534021 call!505459)))

(assert (=> b!6108956 (=> (not res!2534021) (not e!3725228))))

(declare-fun b!6108957 () Bool)

(declare-fun e!3725230 () Bool)

(assert (=> b!6108957 (= e!3725230 e!3725227)))

(declare-fun res!2534020 () Bool)

(assert (=> b!6108957 (=> (not res!2534020) (not e!3725227))))

(assert (=> b!6108957 (= res!2534020 (and (not ((_ is EmptyLang!16057) r!7292)) (not ((_ is ElementMatch!16057) r!7292))))))

(declare-fun bm!505455 () Bool)

(assert (=> bm!505455 (= call!505460 (nullable!6050 (ite c!1097546 (regTwo!32627 r!7292) (regTwo!32626 r!7292))))))

(declare-fun b!6108958 () Bool)

(assert (=> b!6108958 (= e!3725229 call!505460)))

(declare-fun d!1914620 () Bool)

(declare-fun res!2534019 () Bool)

(assert (=> d!1914620 (=> res!2534019 e!3725230)))

(assert (=> d!1914620 (= res!2534019 ((_ is EmptyExpr!16057) r!7292))))

(assert (=> d!1914620 (= (nullableFct!2014 r!7292) e!3725230)))

(declare-fun bm!505454 () Bool)

(assert (=> bm!505454 (= call!505459 (nullable!6050 (ite c!1097546 (regOne!32627 r!7292) (regOne!32626 r!7292))))))

(assert (= (and d!1914620 (not res!2534019)) b!6108957))

(assert (= (and b!6108957 res!2534020) b!6108954))

(assert (= (and b!6108954 (not res!2534022)) b!6108952))

(assert (= (and b!6108952 c!1097546) b!6108953))

(assert (= (and b!6108952 (not c!1097546)) b!6108956))

(assert (= (and b!6108953 (not res!2534023)) b!6108958))

(assert (= (and b!6108956 res!2534021) b!6108955))

(assert (= (or b!6108958 b!6108955) bm!505455))

(assert (= (or b!6108953 b!6108956) bm!505454))

(declare-fun m!6959016 () Bool)

(assert (=> bm!505455 m!6959016))

(declare-fun m!6959018 () Bool)

(assert (=> bm!505454 m!6959018))

(assert (=> d!1913992 d!1914620))

(assert (=> b!6106813 d!1913964))

(assert (=> b!6106813 d!1913922))

(declare-fun bs!1516575 () Bool)

(declare-fun b!6108960 () Bool)

(assert (= bs!1516575 (and b!6108960 b!6106173)))

(declare-fun lambda!332788 () Int)

(assert (=> bs!1516575 (not (= lambda!332788 lambda!332726))))

(declare-fun bs!1516576 () Bool)

(assert (= bs!1516576 (and b!6108960 d!1913716)))

(assert (=> bs!1516576 (not (= lambda!332788 lambda!332710))))

(declare-fun bs!1516577 () Bool)

(assert (= bs!1516577 (and b!6108960 b!6108369)))

(assert (=> bs!1516577 (= (and (= (reg!16386 (regOne!32627 (regOne!32627 r!7292))) (reg!16386 (regTwo!32627 (regTwo!32627 r!7292)))) (= (regOne!32627 (regOne!32627 r!7292)) (regTwo!32627 (regTwo!32627 r!7292)))) (= lambda!332788 lambda!332781))))

(declare-fun bs!1516578 () Bool)

(assert (= bs!1516578 (and b!6108960 b!6108544)))

(assert (=> bs!1516578 (= (and (= (reg!16386 (regOne!32627 (regOne!32627 r!7292))) (reg!16386 (regTwo!32627 (regOne!32627 r!7292)))) (= (regOne!32627 (regOne!32627 r!7292)) (regTwo!32627 (regOne!32627 r!7292)))) (= lambda!332788 lambda!332784))))

(declare-fun bs!1516579 () Bool)

(assert (= bs!1516579 (and b!6108960 d!1914040)))

(assert (=> bs!1516579 (not (= lambda!332788 lambda!332762))))

(declare-fun bs!1516580 () Bool)

(assert (= bs!1516580 (and b!6108960 d!1913726)))

(assert (=> bs!1516580 (not (= lambda!332788 lambda!332716))))

(declare-fun bs!1516581 () Bool)

(assert (= bs!1516581 (and b!6108960 b!6105694)))

(assert (=> bs!1516581 (not (= lambda!332788 lambda!332672))))

(declare-fun bs!1516582 () Bool)

(assert (= bs!1516582 (and b!6108960 b!6108545)))

(assert (=> bs!1516582 (not (= lambda!332788 lambda!332785))))

(assert (=> bs!1516579 (not (= lambda!332788 lambda!332763))))

(declare-fun bs!1516583 () Bool)

(assert (= bs!1516583 (and b!6108960 b!6106935)))

(assert (=> bs!1516583 (= (and (= (reg!16386 (regOne!32627 (regOne!32627 r!7292))) (reg!16386 (regOne!32627 r!7292))) (= (regOne!32627 (regOne!32627 r!7292)) (regOne!32627 r!7292))) (= lambda!332788 lambda!332753))))

(declare-fun bs!1516584 () Bool)

(assert (= bs!1516584 (and b!6108960 d!1913938)))

(assert (=> bs!1516584 (not (= lambda!332788 lambda!332750))))

(assert (=> bs!1516580 (not (= lambda!332788 lambda!332715))))

(declare-fun bs!1516585 () Bool)

(assert (= bs!1516585 (and b!6108960 b!6106172)))

(assert (=> bs!1516585 (= (and (= (reg!16386 (regOne!32627 (regOne!32627 r!7292))) (reg!16386 r!7292)) (= (regOne!32627 (regOne!32627 r!7292)) r!7292)) (= lambda!332788 lambda!332725))))

(declare-fun bs!1516586 () Bool)

(assert (= bs!1516586 (and b!6108960 b!6106936)))

(assert (=> bs!1516586 (not (= lambda!332788 lambda!332754))))

(declare-fun bs!1516587 () Bool)

(assert (= bs!1516587 (and b!6108960 b!6108920)))

(assert (=> bs!1516587 (= (and (= (reg!16386 (regOne!32627 (regOne!32627 r!7292))) (reg!16386 (regOne!32627 (regTwo!32627 r!7292)))) (= (regOne!32627 (regOne!32627 r!7292)) (regOne!32627 (regTwo!32627 r!7292)))) (= lambda!332788 lambda!332786))))

(declare-fun bs!1516588 () Bool)

(assert (= bs!1516588 (and b!6108960 b!6107127)))

(assert (=> bs!1516588 (not (= lambda!332788 lambda!332765))))

(declare-fun bs!1516589 () Bool)

(assert (= bs!1516589 (and b!6108960 b!6107126)))

(assert (=> bs!1516589 (= (and (= (reg!16386 (regOne!32627 (regOne!32627 r!7292))) (reg!16386 (regTwo!32627 r!7292))) (= (regOne!32627 (regOne!32627 r!7292)) (regTwo!32627 r!7292))) (= lambda!332788 lambda!332764))))

(declare-fun bs!1516590 () Bool)

(assert (= bs!1516590 (and b!6108960 b!6108921)))

(assert (=> bs!1516590 (not (= lambda!332788 lambda!332787))))

(assert (=> bs!1516581 (not (= lambda!332788 lambda!332673))))

(declare-fun bs!1516591 () Bool)

(assert (= bs!1516591 (and b!6108960 b!6108370)))

(assert (=> bs!1516591 (not (= lambda!332788 lambda!332782))))

(assert (=> b!6108960 true))

(assert (=> b!6108960 true))

(declare-fun bs!1516592 () Bool)

(declare-fun b!6108961 () Bool)

(assert (= bs!1516592 (and b!6108961 b!6106173)))

(declare-fun lambda!332789 () Int)

(assert (=> bs!1516592 (= (and (= (regOne!32626 (regOne!32627 (regOne!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regOne!32627 (regOne!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332789 lambda!332726))))

(declare-fun bs!1516593 () Bool)

(assert (= bs!1516593 (and b!6108961 d!1913716)))

(assert (=> bs!1516593 (not (= lambda!332789 lambda!332710))))

(declare-fun bs!1516594 () Bool)

(assert (= bs!1516594 (and b!6108961 b!6108369)))

(assert (=> bs!1516594 (not (= lambda!332789 lambda!332781))))

(declare-fun bs!1516595 () Bool)

(assert (= bs!1516595 (and b!6108961 b!6108544)))

(assert (=> bs!1516595 (not (= lambda!332789 lambda!332784))))

(declare-fun bs!1516596 () Bool)

(assert (= bs!1516596 (and b!6108961 d!1914040)))

(assert (=> bs!1516596 (not (= lambda!332789 lambda!332762))))

(declare-fun bs!1516597 () Bool)

(assert (= bs!1516597 (and b!6108961 d!1913726)))

(assert (=> bs!1516597 (= (and (= (regOne!32626 (regOne!32627 (regOne!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regOne!32627 (regOne!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332789 lambda!332716))))

(declare-fun bs!1516598 () Bool)

(assert (= bs!1516598 (and b!6108961 b!6105694)))

(assert (=> bs!1516598 (not (= lambda!332789 lambda!332672))))

(declare-fun bs!1516599 () Bool)

(assert (= bs!1516599 (and b!6108961 b!6108545)))

(assert (=> bs!1516599 (= (and (= (regOne!32626 (regOne!32627 (regOne!32627 r!7292))) (regOne!32626 (regTwo!32627 (regOne!32627 r!7292)))) (= (regTwo!32626 (regOne!32627 (regOne!32627 r!7292))) (regTwo!32626 (regTwo!32627 (regOne!32627 r!7292))))) (= lambda!332789 lambda!332785))))

(assert (=> bs!1516596 (= (and (= (regOne!32626 (regOne!32627 (regOne!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regOne!32627 (regOne!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332789 lambda!332763))))

(declare-fun bs!1516600 () Bool)

(assert (= bs!1516600 (and b!6108961 b!6106935)))

(assert (=> bs!1516600 (not (= lambda!332789 lambda!332753))))

(declare-fun bs!1516601 () Bool)

(assert (= bs!1516601 (and b!6108961 d!1913938)))

(assert (=> bs!1516601 (not (= lambda!332789 lambda!332750))))

(assert (=> bs!1516597 (not (= lambda!332789 lambda!332715))))

(declare-fun bs!1516602 () Bool)

(assert (= bs!1516602 (and b!6108961 b!6106172)))

(assert (=> bs!1516602 (not (= lambda!332789 lambda!332725))))

(declare-fun bs!1516603 () Bool)

(assert (= bs!1516603 (and b!6108961 b!6108960)))

(assert (=> bs!1516603 (not (= lambda!332789 lambda!332788))))

(declare-fun bs!1516604 () Bool)

(assert (= bs!1516604 (and b!6108961 b!6106936)))

(assert (=> bs!1516604 (= (and (= (regOne!32626 (regOne!32627 (regOne!32627 r!7292))) (regOne!32626 (regOne!32627 r!7292))) (= (regTwo!32626 (regOne!32627 (regOne!32627 r!7292))) (regTwo!32626 (regOne!32627 r!7292)))) (= lambda!332789 lambda!332754))))

(declare-fun bs!1516605 () Bool)

(assert (= bs!1516605 (and b!6108961 b!6108920)))

(assert (=> bs!1516605 (not (= lambda!332789 lambda!332786))))

(declare-fun bs!1516606 () Bool)

(assert (= bs!1516606 (and b!6108961 b!6107127)))

(assert (=> bs!1516606 (= (and (= (regOne!32626 (regOne!32627 (regOne!32627 r!7292))) (regOne!32626 (regTwo!32627 r!7292))) (= (regTwo!32626 (regOne!32627 (regOne!32627 r!7292))) (regTwo!32626 (regTwo!32627 r!7292)))) (= lambda!332789 lambda!332765))))

(declare-fun bs!1516607 () Bool)

(assert (= bs!1516607 (and b!6108961 b!6107126)))

(assert (=> bs!1516607 (not (= lambda!332789 lambda!332764))))

(declare-fun bs!1516608 () Bool)

(assert (= bs!1516608 (and b!6108961 b!6108921)))

(assert (=> bs!1516608 (= (and (= (regOne!32626 (regOne!32627 (regOne!32627 r!7292))) (regOne!32626 (regOne!32627 (regTwo!32627 r!7292)))) (= (regTwo!32626 (regOne!32627 (regOne!32627 r!7292))) (regTwo!32626 (regOne!32627 (regTwo!32627 r!7292))))) (= lambda!332789 lambda!332787))))

(assert (=> bs!1516598 (= (and (= (regOne!32626 (regOne!32627 (regOne!32627 r!7292))) (regOne!32626 r!7292)) (= (regTwo!32626 (regOne!32627 (regOne!32627 r!7292))) (regTwo!32626 r!7292))) (= lambda!332789 lambda!332673))))

(declare-fun bs!1516609 () Bool)

(assert (= bs!1516609 (and b!6108961 b!6108370)))

(assert (=> bs!1516609 (= (and (= (regOne!32626 (regOne!32627 (regOne!32627 r!7292))) (regOne!32626 (regTwo!32627 (regTwo!32627 r!7292)))) (= (regTwo!32626 (regOne!32627 (regOne!32627 r!7292))) (regTwo!32626 (regTwo!32627 (regTwo!32627 r!7292))))) (= lambda!332789 lambda!332782))))

(assert (=> b!6108961 true))

(assert (=> b!6108961 true))

(declare-fun d!1914622 () Bool)

(declare-fun c!1097548 () Bool)

(assert (=> d!1914622 (= c!1097548 ((_ is EmptyExpr!16057) (regOne!32627 (regOne!32627 r!7292))))))

(declare-fun e!3725232 () Bool)

(assert (=> d!1914622 (= (matchRSpec!3158 (regOne!32627 (regOne!32627 r!7292)) s!2326) e!3725232)))

(declare-fun bm!505456 () Bool)

(declare-fun c!1097550 () Bool)

(declare-fun call!505462 () Bool)

(assert (=> bm!505456 (= call!505462 (Exists!3127 (ite c!1097550 lambda!332788 lambda!332789)))))

(declare-fun b!6108959 () Bool)

(declare-fun e!3725234 () Bool)

(declare-fun e!3725236 () Bool)

(assert (=> b!6108959 (= e!3725234 e!3725236)))

(assert (=> b!6108959 (= c!1097550 ((_ is Star!16057) (regOne!32627 (regOne!32627 r!7292))))))

(declare-fun e!3725238 () Bool)

(assert (=> b!6108960 (= e!3725238 call!505462)))

(assert (=> b!6108961 (= e!3725236 call!505462)))

(declare-fun b!6108962 () Bool)

(declare-fun res!2534026 () Bool)

(assert (=> b!6108962 (=> res!2534026 e!3725238)))

(declare-fun call!505461 () Bool)

(assert (=> b!6108962 (= res!2534026 call!505461)))

(assert (=> b!6108962 (= e!3725236 e!3725238)))

(declare-fun b!6108963 () Bool)

(declare-fun e!3725237 () Bool)

(assert (=> b!6108963 (= e!3725234 e!3725237)))

(declare-fun res!2534024 () Bool)

(assert (=> b!6108963 (= res!2534024 (matchRSpec!3158 (regOne!32627 (regOne!32627 (regOne!32627 r!7292))) s!2326))))

(assert (=> b!6108963 (=> res!2534024 e!3725237)))

(declare-fun bm!505457 () Bool)

(assert (=> bm!505457 (= call!505461 (isEmpty!36274 s!2326))))

(declare-fun b!6108964 () Bool)

(declare-fun e!3725233 () Bool)

(assert (=> b!6108964 (= e!3725233 (= s!2326 (Cons!64348 (c!1096851 (regOne!32627 (regOne!32627 r!7292))) Nil!64348)))))

(declare-fun b!6108965 () Bool)

(declare-fun c!1097549 () Bool)

(assert (=> b!6108965 (= c!1097549 ((_ is Union!16057) (regOne!32627 (regOne!32627 r!7292))))))

(assert (=> b!6108965 (= e!3725233 e!3725234)))

(declare-fun b!6108966 () Bool)

(declare-fun e!3725235 () Bool)

(assert (=> b!6108966 (= e!3725232 e!3725235)))

(declare-fun res!2534025 () Bool)

(assert (=> b!6108966 (= res!2534025 (not ((_ is EmptyLang!16057) (regOne!32627 (regOne!32627 r!7292)))))))

(assert (=> b!6108966 (=> (not res!2534025) (not e!3725235))))

(declare-fun b!6108967 () Bool)

(assert (=> b!6108967 (= e!3725237 (matchRSpec!3158 (regTwo!32627 (regOne!32627 (regOne!32627 r!7292))) s!2326))))

(declare-fun b!6108968 () Bool)

(declare-fun c!1097547 () Bool)

(assert (=> b!6108968 (= c!1097547 ((_ is ElementMatch!16057) (regOne!32627 (regOne!32627 r!7292))))))

(assert (=> b!6108968 (= e!3725235 e!3725233)))

(declare-fun b!6108969 () Bool)

(assert (=> b!6108969 (= e!3725232 call!505461)))

(assert (= (and d!1914622 c!1097548) b!6108969))

(assert (= (and d!1914622 (not c!1097548)) b!6108966))

(assert (= (and b!6108966 res!2534025) b!6108968))

(assert (= (and b!6108968 c!1097547) b!6108964))

(assert (= (and b!6108968 (not c!1097547)) b!6108965))

(assert (= (and b!6108965 c!1097549) b!6108963))

(assert (= (and b!6108965 (not c!1097549)) b!6108959))

(assert (= (and b!6108963 (not res!2534024)) b!6108967))

(assert (= (and b!6108959 c!1097550) b!6108962))

(assert (= (and b!6108959 (not c!1097550)) b!6108961))

(assert (= (and b!6108962 (not res!2534026)) b!6108960))

(assert (= (or b!6108960 b!6108961) bm!505456))

(assert (= (or b!6108969 b!6108962) bm!505457))

(declare-fun m!6959020 () Bool)

(assert (=> bm!505456 m!6959020))

(declare-fun m!6959022 () Bool)

(assert (=> b!6108963 m!6959022))

(assert (=> bm!505457 m!6957084))

(declare-fun m!6959024 () Bool)

(assert (=> b!6108967 m!6959024))

(assert (=> b!6106938 d!1914622))

(declare-fun d!1914624 () Bool)

(declare-fun lt!2329875 () Int)

(assert (=> d!1914624 (>= lt!2329875 0)))

(declare-fun e!3725239 () Int)

(assert (=> d!1914624 (= lt!2329875 e!3725239)))

(declare-fun c!1097551 () Bool)

(assert (=> d!1914624 (= c!1097551 ((_ is Nil!64348) lt!2329792))))

(assert (=> d!1914624 (= (size!40202 lt!2329792) lt!2329875)))

(declare-fun b!6108970 () Bool)

(assert (=> b!6108970 (= e!3725239 0)))

(declare-fun b!6108971 () Bool)

(assert (=> b!6108971 (= e!3725239 (+ 1 (size!40202 (t!377925 lt!2329792))))))

(assert (= (and d!1914624 c!1097551) b!6108970))

(assert (= (and d!1914624 (not c!1097551)) b!6108971))

(declare-fun m!6959026 () Bool)

(assert (=> b!6108971 m!6959026))

(assert (=> b!6106900 d!1914624))

(declare-fun d!1914626 () Bool)

(declare-fun lt!2329876 () Int)

(assert (=> d!1914626 (>= lt!2329876 0)))

(declare-fun e!3725240 () Int)

(assert (=> d!1914626 (= lt!2329876 e!3725240)))

(declare-fun c!1097552 () Bool)

(assert (=> d!1914626 (= c!1097552 ((_ is Nil!64348) (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))))))

(assert (=> d!1914626 (= (size!40202 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) lt!2329876)))

(declare-fun b!6108972 () Bool)

(assert (=> b!6108972 (= e!3725240 0)))

(declare-fun b!6108973 () Bool)

(assert (=> b!6108973 (= e!3725240 (+ 1 (size!40202 (t!377925 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))))))))

(assert (= (and d!1914626 c!1097552) b!6108972))

(assert (= (and d!1914626 (not c!1097552)) b!6108973))

(declare-fun m!6959028 () Bool)

(assert (=> b!6108973 m!6959028))

(assert (=> b!6106900 d!1914626))

(declare-fun d!1914628 () Bool)

(declare-fun lt!2329877 () Int)

(assert (=> d!1914628 (>= lt!2329877 0)))

(declare-fun e!3725241 () Int)

(assert (=> d!1914628 (= lt!2329877 e!3725241)))

(declare-fun c!1097553 () Bool)

(assert (=> d!1914628 (= c!1097553 ((_ is Nil!64348) (t!377925 s!2326)))))

(assert (=> d!1914628 (= (size!40202 (t!377925 s!2326)) lt!2329877)))

(declare-fun b!6108974 () Bool)

(assert (=> b!6108974 (= e!3725241 0)))

(declare-fun b!6108975 () Bool)

(assert (=> b!6108975 (= e!3725241 (+ 1 (size!40202 (t!377925 (t!377925 s!2326)))))))

(assert (= (and d!1914628 c!1097553) b!6108974))

(assert (= (and d!1914628 (not c!1097553)) b!6108975))

(assert (=> b!6108975 m!6958948))

(assert (=> b!6106900 d!1914628))

(declare-fun d!1914630 () Bool)

(assert (=> d!1914630 (= (isEmptyExpr!1474 lt!2329802) ((_ is EmptyExpr!16057) lt!2329802))))

(assert (=> b!6106984 d!1914630))

(declare-fun d!1914632 () Bool)

(declare-fun res!2534027 () Bool)

(declare-fun e!3725242 () Bool)

(assert (=> d!1914632 (=> res!2534027 e!3725242)))

(assert (=> d!1914632 (= res!2534027 ((_ is Nil!64346) (t!377923 (exprs!5941 setElem!41260))))))

(assert (=> d!1914632 (= (forall!15178 (t!377923 (exprs!5941 setElem!41260)) lambda!332720) e!3725242)))

(declare-fun b!6108976 () Bool)

(declare-fun e!3725243 () Bool)

(assert (=> b!6108976 (= e!3725242 e!3725243)))

(declare-fun res!2534028 () Bool)

(assert (=> b!6108976 (=> (not res!2534028) (not e!3725243))))

(assert (=> b!6108976 (= res!2534028 (dynLambda!25338 lambda!332720 (h!70794 (t!377923 (exprs!5941 setElem!41260)))))))

(declare-fun b!6108977 () Bool)

(assert (=> b!6108977 (= e!3725243 (forall!15178 (t!377923 (t!377923 (exprs!5941 setElem!41260))) lambda!332720))))

(assert (= (and d!1914632 (not res!2534027)) b!6108976))

(assert (= (and b!6108976 res!2534028) b!6108977))

(declare-fun b_lambda!232693 () Bool)

(assert (=> (not b_lambda!232693) (not b!6108976)))

(declare-fun m!6959030 () Bool)

(assert (=> b!6108976 m!6959030))

(declare-fun m!6959032 () Bool)

(assert (=> b!6108977 m!6959032))

(assert (=> b!6106876 d!1914632))

(declare-fun d!1914634 () Bool)

(assert (not d!1914634))

(assert (=> b!6106903 d!1914634))

(declare-fun b!6108978 () Bool)

(declare-fun e!3725249 () Bool)

(declare-fun e!3725244 () Bool)

(assert (=> b!6108978 (= e!3725249 e!3725244)))

(declare-fun c!1097554 () Bool)

(assert (=> b!6108978 (= c!1097554 ((_ is Union!16057) (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))

(declare-fun b!6108979 () Bool)

(declare-fun e!3725247 () Bool)

(assert (=> b!6108979 (= e!3725244 e!3725247)))

(declare-fun res!2534033 () Bool)

(declare-fun call!505463 () Bool)

(assert (=> b!6108979 (= res!2534033 call!505463)))

(assert (=> b!6108979 (=> res!2534033 e!3725247)))

(declare-fun b!6108980 () Bool)

(declare-fun e!3725245 () Bool)

(assert (=> b!6108980 (= e!3725245 e!3725249)))

(declare-fun res!2534032 () Bool)

(assert (=> b!6108980 (=> res!2534032 e!3725249)))

(assert (=> b!6108980 (= res!2534032 ((_ is Star!16057) (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))

(declare-fun b!6108981 () Bool)

(declare-fun e!3725246 () Bool)

(declare-fun call!505464 () Bool)

(assert (=> b!6108981 (= e!3725246 call!505464)))

(declare-fun b!6108982 () Bool)

(assert (=> b!6108982 (= e!3725244 e!3725246)))

(declare-fun res!2534031 () Bool)

(assert (=> b!6108982 (= res!2534031 call!505463)))

(assert (=> b!6108982 (=> (not res!2534031) (not e!3725246))))

(declare-fun b!6108983 () Bool)

(declare-fun e!3725248 () Bool)

(assert (=> b!6108983 (= e!3725248 e!3725245)))

(declare-fun res!2534030 () Bool)

(assert (=> b!6108983 (=> (not res!2534030) (not e!3725245))))

(assert (=> b!6108983 (= res!2534030 (and (not ((_ is EmptyLang!16057) (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))) (not ((_ is ElementMatch!16057) (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))

(declare-fun bm!505459 () Bool)

(assert (=> bm!505459 (= call!505464 (nullable!6050 (ite c!1097554 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))

(declare-fun b!6108984 () Bool)

(assert (=> b!6108984 (= e!3725247 call!505464)))

(declare-fun d!1914636 () Bool)

(declare-fun res!2534029 () Bool)

(assert (=> d!1914636 (=> res!2534029 e!3725248)))

(assert (=> d!1914636 (= res!2534029 ((_ is EmptyExpr!16057) (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))

(assert (=> d!1914636 (= (nullableFct!2014 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) e!3725248)))

(declare-fun bm!505458 () Bool)

(assert (=> bm!505458 (= call!505463 (nullable!6050 (ite c!1097554 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))

(assert (= (and d!1914636 (not res!2534029)) b!6108983))

(assert (= (and b!6108983 res!2534030) b!6108980))

(assert (= (and b!6108980 (not res!2534032)) b!6108978))

(assert (= (and b!6108978 c!1097554) b!6108979))

(assert (= (and b!6108978 (not c!1097554)) b!6108982))

(assert (= (and b!6108979 (not res!2534033)) b!6108984))

(assert (= (and b!6108982 res!2534031) b!6108981))

(assert (= (or b!6108984 b!6108981) bm!505459))

(assert (= (or b!6108979 b!6108982) bm!505458))

(declare-fun m!6959034 () Bool)

(assert (=> bm!505459 m!6959034))

(declare-fun m!6959036 () Bool)

(assert (=> bm!505458 m!6959036))

(assert (=> d!1913976 d!1914636))

(assert (=> b!6107042 d!1913950))

(assert (=> b!6106988 d!1913746))

(declare-fun d!1914638 () Bool)

(declare-fun c!1097555 () Bool)

(assert (=> d!1914638 (= c!1097555 ((_ is Nil!64347) (t!377924 lt!2329759)))))

(declare-fun e!3725250 () (InoxSet Context!10882))

(assert (=> d!1914638 (= (content!11939 (t!377924 lt!2329759)) e!3725250)))

(declare-fun b!6108985 () Bool)

(assert (=> b!6108985 (= e!3725250 ((as const (Array Context!10882 Bool)) false))))

(declare-fun b!6108986 () Bool)

(assert (=> b!6108986 (= e!3725250 ((_ map or) (store ((as const (Array Context!10882 Bool)) false) (h!70795 (t!377924 lt!2329759)) true) (content!11939 (t!377924 (t!377924 lt!2329759)))))))

(assert (= (and d!1914638 c!1097555) b!6108985))

(assert (= (and d!1914638 (not c!1097555)) b!6108986))

(declare-fun m!6959038 () Bool)

(assert (=> b!6108986 m!6959038))

(declare-fun m!6959040 () Bool)

(assert (=> b!6108986 m!6959040))

(assert (=> b!6106995 d!1914638))

(declare-fun bs!1516610 () Bool)

(declare-fun d!1914640 () Bool)

(assert (= bs!1516610 (and d!1914640 d!1913694)))

(declare-fun lambda!332790 () Int)

(assert (=> bs!1516610 (= lambda!332790 lambda!332695)))

(declare-fun bs!1516611 () Bool)

(assert (= bs!1516611 (and d!1914640 d!1914000)))

(assert (=> bs!1516611 (= lambda!332790 lambda!332756)))

(declare-fun bs!1516612 () Bool)

(assert (= bs!1516612 (and d!1914640 d!1913998)))

(assert (=> bs!1516612 (= lambda!332790 lambda!332755)))

(declare-fun bs!1516613 () Bool)

(assert (= bs!1516613 (and d!1914640 d!1914016)))

(assert (=> bs!1516613 (= lambda!332790 lambda!332757)))

(declare-fun bs!1516614 () Bool)

(assert (= bs!1516614 (and d!1914640 d!1913734)))

(assert (=> bs!1516614 (= lambda!332790 lambda!332720)))

(declare-fun bs!1516615 () Bool)

(assert (= bs!1516615 (and d!1914640 d!1914504)))

(assert (=> bs!1516615 (= lambda!332790 lambda!332783)))

(declare-fun bs!1516616 () Bool)

(assert (= bs!1516616 (and d!1914640 d!1913970)))

(assert (=> bs!1516616 (= lambda!332790 lambda!332752)))

(declare-fun bs!1516617 () Bool)

(assert (= bs!1516617 (and d!1914640 d!1913684)))

(assert (=> bs!1516617 (= lambda!332790 lambda!332688)))

(declare-fun bs!1516618 () Bool)

(assert (= bs!1516618 (and d!1914640 d!1913730)))

(assert (=> bs!1516618 (= lambda!332790 lambda!332719)))

(declare-fun bs!1516619 () Bool)

(assert (= bs!1516619 (and d!1914640 d!1913748)))

(assert (=> bs!1516619 (= lambda!332790 lambda!332729)))

(declare-fun bs!1516620 () Bool)

(assert (= bs!1516620 (and d!1914640 d!1913968)))

(assert (=> bs!1516620 (= lambda!332790 lambda!332751)))

(declare-fun b!6108987 () Bool)

(declare-fun e!3725255 () Regex!16057)

(assert (=> b!6108987 (= e!3725255 EmptyExpr!16057)))

(declare-fun b!6108988 () Bool)

(declare-fun e!3725251 () Regex!16057)

(assert (=> b!6108988 (= e!3725251 e!3725255)))

(declare-fun c!1097559 () Bool)

(assert (=> b!6108988 (= c!1097559 ((_ is Cons!64346) (exprs!5941 (h!70795 (t!377924 zl!343)))))))

(declare-fun b!6108989 () Bool)

(declare-fun e!3725252 () Bool)

(declare-fun lt!2329878 () Regex!16057)

(assert (=> b!6108989 (= e!3725252 (= lt!2329878 (head!12635 (exprs!5941 (h!70795 (t!377924 zl!343))))))))

(declare-fun b!6108990 () Bool)

(assert (=> b!6108990 (= e!3725252 (isConcat!997 lt!2329878))))

(declare-fun e!3725254 () Bool)

(assert (=> d!1914640 e!3725254))

(declare-fun res!2534035 () Bool)

(assert (=> d!1914640 (=> (not res!2534035) (not e!3725254))))

(assert (=> d!1914640 (= res!2534035 (validRegex!7793 lt!2329878))))

(assert (=> d!1914640 (= lt!2329878 e!3725251)))

(declare-fun c!1097557 () Bool)

(declare-fun e!3725253 () Bool)

(assert (=> d!1914640 (= c!1097557 e!3725253)))

(declare-fun res!2534034 () Bool)

(assert (=> d!1914640 (=> (not res!2534034) (not e!3725253))))

(assert (=> d!1914640 (= res!2534034 ((_ is Cons!64346) (exprs!5941 (h!70795 (t!377924 zl!343)))))))

(assert (=> d!1914640 (forall!15178 (exprs!5941 (h!70795 (t!377924 zl!343))) lambda!332790)))

(assert (=> d!1914640 (= (generalisedConcat!1654 (exprs!5941 (h!70795 (t!377924 zl!343)))) lt!2329878)))

(declare-fun b!6108991 () Bool)

(declare-fun e!3725256 () Bool)

(assert (=> b!6108991 (= e!3725256 (isEmptyExpr!1474 lt!2329878))))

(declare-fun b!6108992 () Bool)

(assert (=> b!6108992 (= e!3725253 (isEmpty!36269 (t!377923 (exprs!5941 (h!70795 (t!377924 zl!343))))))))

(declare-fun b!6108993 () Bool)

(assert (=> b!6108993 (= e!3725255 (Concat!24902 (h!70794 (exprs!5941 (h!70795 (t!377924 zl!343)))) (generalisedConcat!1654 (t!377923 (exprs!5941 (h!70795 (t!377924 zl!343)))))))))

(declare-fun b!6108994 () Bool)

(assert (=> b!6108994 (= e!3725251 (h!70794 (exprs!5941 (h!70795 (t!377924 zl!343)))))))

(declare-fun b!6108995 () Bool)

(assert (=> b!6108995 (= e!3725254 e!3725256)))

(declare-fun c!1097558 () Bool)

(assert (=> b!6108995 (= c!1097558 (isEmpty!36269 (exprs!5941 (h!70795 (t!377924 zl!343)))))))

(declare-fun b!6108996 () Bool)

(assert (=> b!6108996 (= e!3725256 e!3725252)))

(declare-fun c!1097556 () Bool)

(assert (=> b!6108996 (= c!1097556 (isEmpty!36269 (tail!11720 (exprs!5941 (h!70795 (t!377924 zl!343))))))))

(assert (= (and d!1914640 res!2534034) b!6108992))

(assert (= (and d!1914640 c!1097557) b!6108994))

(assert (= (and d!1914640 (not c!1097557)) b!6108988))

(assert (= (and b!6108988 c!1097559) b!6108993))

(assert (= (and b!6108988 (not c!1097559)) b!6108987))

(assert (= (and d!1914640 res!2534035) b!6108995))

(assert (= (and b!6108995 c!1097558) b!6108991))

(assert (= (and b!6108995 (not c!1097558)) b!6108996))

(assert (= (and b!6108996 c!1097556) b!6108989))

(assert (= (and b!6108996 (not c!1097556)) b!6108990))

(declare-fun m!6959042 () Bool)

(assert (=> b!6108992 m!6959042))

(declare-fun m!6959044 () Bool)

(assert (=> d!1914640 m!6959044))

(declare-fun m!6959046 () Bool)

(assert (=> d!1914640 m!6959046))

(declare-fun m!6959048 () Bool)

(assert (=> b!6108995 m!6959048))

(declare-fun m!6959050 () Bool)

(assert (=> b!6108990 m!6959050))

(declare-fun m!6959052 () Bool)

(assert (=> b!6108993 m!6959052))

(declare-fun m!6959054 () Bool)

(assert (=> b!6108991 m!6959054))

(declare-fun m!6959056 () Bool)

(assert (=> b!6108989 m!6959056))

(declare-fun m!6959058 () Bool)

(assert (=> b!6108996 m!6959058))

(assert (=> b!6108996 m!6959058))

(declare-fun m!6959060 () Bool)

(assert (=> b!6108996 m!6959060))

(assert (=> b!6106978 d!1914640))

(declare-fun bs!1516621 () Bool)

(declare-fun d!1914642 () Bool)

(assert (= bs!1516621 (and d!1914642 d!1913694)))

(declare-fun lambda!332791 () Int)

(assert (=> bs!1516621 (= lambda!332791 lambda!332695)))

(declare-fun bs!1516622 () Bool)

(assert (= bs!1516622 (and d!1914642 d!1914000)))

(assert (=> bs!1516622 (= lambda!332791 lambda!332756)))

(declare-fun bs!1516623 () Bool)

(assert (= bs!1516623 (and d!1914642 d!1913998)))

(assert (=> bs!1516623 (= lambda!332791 lambda!332755)))

(declare-fun bs!1516624 () Bool)

(assert (= bs!1516624 (and d!1914642 d!1914640)))

(assert (=> bs!1516624 (= lambda!332791 lambda!332790)))

(declare-fun bs!1516625 () Bool)

(assert (= bs!1516625 (and d!1914642 d!1914016)))

(assert (=> bs!1516625 (= lambda!332791 lambda!332757)))

(declare-fun bs!1516626 () Bool)

(assert (= bs!1516626 (and d!1914642 d!1913734)))

(assert (=> bs!1516626 (= lambda!332791 lambda!332720)))

(declare-fun bs!1516627 () Bool)

(assert (= bs!1516627 (and d!1914642 d!1914504)))

(assert (=> bs!1516627 (= lambda!332791 lambda!332783)))

(declare-fun bs!1516628 () Bool)

(assert (= bs!1516628 (and d!1914642 d!1913970)))

(assert (=> bs!1516628 (= lambda!332791 lambda!332752)))

(declare-fun bs!1516629 () Bool)

(assert (= bs!1516629 (and d!1914642 d!1913684)))

(assert (=> bs!1516629 (= lambda!332791 lambda!332688)))

(declare-fun bs!1516630 () Bool)

(assert (= bs!1516630 (and d!1914642 d!1913730)))

(assert (=> bs!1516630 (= lambda!332791 lambda!332719)))

(declare-fun bs!1516631 () Bool)

(assert (= bs!1516631 (and d!1914642 d!1913748)))

(assert (=> bs!1516631 (= lambda!332791 lambda!332729)))

(declare-fun bs!1516632 () Bool)

(assert (= bs!1516632 (and d!1914642 d!1913968)))

(assert (=> bs!1516632 (= lambda!332791 lambda!332751)))

(declare-fun lt!2329879 () List!64470)

(assert (=> d!1914642 (forall!15178 lt!2329879 lambda!332791)))

(declare-fun e!3725257 () List!64470)

(assert (=> d!1914642 (= lt!2329879 e!3725257)))

(declare-fun c!1097560 () Bool)

(assert (=> d!1914642 (= c!1097560 ((_ is Cons!64347) (t!377924 (t!377924 zl!343))))))

(assert (=> d!1914642 (= (unfocusZipperList!1478 (t!377924 (t!377924 zl!343))) lt!2329879)))

(declare-fun b!6108997 () Bool)

(assert (=> b!6108997 (= e!3725257 (Cons!64346 (generalisedConcat!1654 (exprs!5941 (h!70795 (t!377924 (t!377924 zl!343))))) (unfocusZipperList!1478 (t!377924 (t!377924 (t!377924 zl!343))))))))

(declare-fun b!6108998 () Bool)

(assert (=> b!6108998 (= e!3725257 Nil!64346)))

(assert (= (and d!1914642 c!1097560) b!6108997))

(assert (= (and d!1914642 (not c!1097560)) b!6108998))

(declare-fun m!6959062 () Bool)

(assert (=> d!1914642 m!6959062))

(declare-fun m!6959064 () Bool)

(assert (=> b!6108997 m!6959064))

(declare-fun m!6959066 () Bool)

(assert (=> b!6108997 m!6959066))

(assert (=> b!6106978 d!1914642))

(declare-fun bs!1516633 () Bool)

(declare-fun d!1914644 () Bool)

(assert (= bs!1516633 (and d!1914644 d!1913694)))

(declare-fun lambda!332792 () Int)

(assert (=> bs!1516633 (= lambda!332792 lambda!332695)))

(declare-fun bs!1516634 () Bool)

(assert (= bs!1516634 (and d!1914644 d!1914000)))

(assert (=> bs!1516634 (= lambda!332792 lambda!332756)))

(declare-fun bs!1516635 () Bool)

(assert (= bs!1516635 (and d!1914644 d!1913998)))

(assert (=> bs!1516635 (= lambda!332792 lambda!332755)))

(declare-fun bs!1516636 () Bool)

(assert (= bs!1516636 (and d!1914644 d!1914640)))

(assert (=> bs!1516636 (= lambda!332792 lambda!332790)))

(declare-fun bs!1516637 () Bool)

(assert (= bs!1516637 (and d!1914644 d!1914016)))

(assert (=> bs!1516637 (= lambda!332792 lambda!332757)))

(declare-fun bs!1516638 () Bool)

(assert (= bs!1516638 (and d!1914644 d!1913734)))

(assert (=> bs!1516638 (= lambda!332792 lambda!332720)))

(declare-fun bs!1516639 () Bool)

(assert (= bs!1516639 (and d!1914644 d!1914504)))

(assert (=> bs!1516639 (= lambda!332792 lambda!332783)))

(declare-fun bs!1516640 () Bool)

(assert (= bs!1516640 (and d!1914644 d!1913970)))

(assert (=> bs!1516640 (= lambda!332792 lambda!332752)))

(declare-fun bs!1516641 () Bool)

(assert (= bs!1516641 (and d!1914644 d!1914642)))

(assert (=> bs!1516641 (= lambda!332792 lambda!332791)))

(declare-fun bs!1516642 () Bool)

(assert (= bs!1516642 (and d!1914644 d!1913684)))

(assert (=> bs!1516642 (= lambda!332792 lambda!332688)))

(declare-fun bs!1516643 () Bool)

(assert (= bs!1516643 (and d!1914644 d!1913730)))

(assert (=> bs!1516643 (= lambda!332792 lambda!332719)))

(declare-fun bs!1516644 () Bool)

(assert (= bs!1516644 (and d!1914644 d!1913748)))

(assert (=> bs!1516644 (= lambda!332792 lambda!332729)))

(declare-fun bs!1516645 () Bool)

(assert (= bs!1516645 (and d!1914644 d!1913968)))

(assert (=> bs!1516645 (= lambda!332792 lambda!332751)))

(assert (=> d!1914644 (= (inv!83389 (h!70795 res!2533515)) (forall!15178 (exprs!5941 (h!70795 res!2533515)) lambda!332792))))

(declare-fun bs!1516646 () Bool)

(assert (= bs!1516646 d!1914644))

(declare-fun m!6959068 () Bool)

(assert (=> bs!1516646 m!6959068))

(assert (=> b!6107017 d!1914644))

(assert (=> b!6106925 d!1914532))

(assert (=> b!6106925 d!1914536))

(assert (=> b!6107031 d!1914406))

(assert (=> b!6106826 d!1914444))

(declare-fun d!1914646 () Bool)

(assert (=> d!1914646 (= (nullable!6050 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (nullableFct!2014 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))))

(declare-fun bs!1516647 () Bool)

(assert (= bs!1516647 d!1914646))

(declare-fun m!6959070 () Bool)

(assert (=> bs!1516647 m!6959070))

(assert (=> b!6106866 d!1914646))

(assert (=> b!6107112 d!1914520))

(assert (=> b!6107112 d!1914522))

(assert (=> d!1914056 d!1913740))

(assert (=> d!1914056 d!1913738))

(declare-fun d!1914648 () Bool)

(assert (=> d!1914648 (= (isEmpty!36273 lt!2329734) (not ((_ is Some!15947) lt!2329734)))))

(assert (=> d!1913988 d!1914648))

(declare-fun b!6108999 () Bool)

(declare-fun res!2534040 () Bool)

(declare-fun e!3725264 () Bool)

(assert (=> b!6108999 (=> (not res!2534040) (not e!3725264))))

(declare-fun call!505465 () Bool)

(assert (=> b!6108999 (= res!2534040 (not call!505465))))

(declare-fun b!6109000 () Bool)

(declare-fun res!2534041 () Bool)

(declare-fun e!3725262 () Bool)

(assert (=> b!6109000 (=> res!2534041 e!3725262)))

(assert (=> b!6109000 (= res!2534041 (not ((_ is ElementMatch!16057) (regTwo!32626 r!7292))))))

(declare-fun e!3725259 () Bool)

(assert (=> b!6109000 (= e!3725259 e!3725262)))

(declare-fun b!6109001 () Bool)

(declare-fun res!2534043 () Bool)

(assert (=> b!6109001 (=> (not res!2534043) (not e!3725264))))

(assert (=> b!6109001 (= res!2534043 (isEmpty!36274 (tail!11721 (t!377925 s!2326))))))

(declare-fun b!6109002 () Bool)

(declare-fun e!3725263 () Bool)

(assert (=> b!6109002 (= e!3725263 (not (= (head!12636 (t!377925 s!2326)) (c!1096851 (regTwo!32626 r!7292)))))))

(declare-fun b!6109003 () Bool)

(assert (=> b!6109003 (= e!3725264 (= (head!12636 (t!377925 s!2326)) (c!1096851 (regTwo!32626 r!7292))))))

(declare-fun b!6109004 () Bool)

(declare-fun res!2534038 () Bool)

(assert (=> b!6109004 (=> res!2534038 e!3725263)))

(assert (=> b!6109004 (= res!2534038 (not (isEmpty!36274 (tail!11721 (t!377925 s!2326)))))))

(declare-fun b!6109006 () Bool)

(declare-fun e!3725260 () Bool)

(assert (=> b!6109006 (= e!3725260 e!3725263)))

(declare-fun res!2534042 () Bool)

(assert (=> b!6109006 (=> res!2534042 e!3725263)))

(assert (=> b!6109006 (= res!2534042 call!505465)))

(declare-fun b!6109007 () Bool)

(assert (=> b!6109007 (= e!3725262 e!3725260)))

(declare-fun res!2534036 () Bool)

(assert (=> b!6109007 (=> (not res!2534036) (not e!3725260))))

(declare-fun lt!2329880 () Bool)

(assert (=> b!6109007 (= res!2534036 (not lt!2329880))))

(declare-fun b!6109008 () Bool)

(declare-fun e!3725261 () Bool)

(assert (=> b!6109008 (= e!3725261 e!3725259)))

(declare-fun c!1097562 () Bool)

(assert (=> b!6109008 (= c!1097562 ((_ is EmptyLang!16057) (regTwo!32626 r!7292)))))

(declare-fun b!6109009 () Bool)

(declare-fun e!3725258 () Bool)

(assert (=> b!6109009 (= e!3725258 (matchR!8240 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 (t!377925 s!2326))) (tail!11721 (t!377925 s!2326))))))

(declare-fun b!6109010 () Bool)

(assert (=> b!6109010 (= e!3725258 (nullable!6050 (regTwo!32626 r!7292)))))

(declare-fun b!6109011 () Bool)

(assert (=> b!6109011 (= e!3725259 (not lt!2329880))))

(declare-fun b!6109012 () Bool)

(declare-fun res!2534039 () Bool)

(assert (=> b!6109012 (=> res!2534039 e!3725262)))

(assert (=> b!6109012 (= res!2534039 e!3725264)))

(declare-fun res!2534037 () Bool)

(assert (=> b!6109012 (=> (not res!2534037) (not e!3725264))))

(assert (=> b!6109012 (= res!2534037 lt!2329880)))

(declare-fun bm!505460 () Bool)

(assert (=> bm!505460 (= call!505465 (isEmpty!36274 (t!377925 s!2326)))))

(declare-fun b!6109005 () Bool)

(assert (=> b!6109005 (= e!3725261 (= lt!2329880 call!505465))))

(declare-fun d!1914650 () Bool)

(assert (=> d!1914650 e!3725261))

(declare-fun c!1097563 () Bool)

(assert (=> d!1914650 (= c!1097563 ((_ is EmptyExpr!16057) (regTwo!32626 r!7292)))))

(assert (=> d!1914650 (= lt!2329880 e!3725258)))

(declare-fun c!1097561 () Bool)

(assert (=> d!1914650 (= c!1097561 (isEmpty!36274 (t!377925 s!2326)))))

(assert (=> d!1914650 (validRegex!7793 (regTwo!32626 r!7292))))

(assert (=> d!1914650 (= (matchR!8240 (regTwo!32626 r!7292) (t!377925 s!2326)) lt!2329880)))

(assert (= (and d!1914650 c!1097561) b!6109010))

(assert (= (and d!1914650 (not c!1097561)) b!6109009))

(assert (= (and d!1914650 c!1097563) b!6109005))

(assert (= (and d!1914650 (not c!1097563)) b!6109008))

(assert (= (and b!6109008 c!1097562) b!6109011))

(assert (= (and b!6109008 (not c!1097562)) b!6109000))

(assert (= (and b!6109000 (not res!2534041)) b!6109012))

(assert (= (and b!6109012 res!2534037) b!6108999))

(assert (= (and b!6108999 res!2534040) b!6109001))

(assert (= (and b!6109001 res!2534043) b!6109003))

(assert (= (and b!6109012 (not res!2534039)) b!6109007))

(assert (= (and b!6109007 res!2534036) b!6109006))

(assert (= (and b!6109006 (not res!2534042)) b!6109004))

(assert (= (and b!6109004 (not res!2534038)) b!6109002))

(assert (= (or b!6109005 b!6108999 b!6109006) bm!505460))

(declare-fun m!6959072 () Bool)

(assert (=> b!6109002 m!6959072))

(assert (=> b!6109003 m!6959072))

(declare-fun m!6959074 () Bool)

(assert (=> bm!505460 m!6959074))

(assert (=> b!6109009 m!6959072))

(assert (=> b!6109009 m!6959072))

(declare-fun m!6959076 () Bool)

(assert (=> b!6109009 m!6959076))

(declare-fun m!6959078 () Bool)

(assert (=> b!6109009 m!6959078))

(assert (=> b!6109009 m!6959076))

(assert (=> b!6109009 m!6959078))

(declare-fun m!6959080 () Bool)

(assert (=> b!6109009 m!6959080))

(assert (=> b!6109001 m!6959078))

(assert (=> b!6109001 m!6959078))

(declare-fun m!6959082 () Bool)

(assert (=> b!6109001 m!6959082))

(assert (=> b!6109004 m!6959078))

(assert (=> b!6109004 m!6959078))

(assert (=> b!6109004 m!6959082))

(assert (=> b!6109010 m!6957508))

(assert (=> d!1914650 m!6959074))

(assert (=> d!1914650 m!6957510))

(assert (=> b!6106909 d!1914650))

(declare-fun b!6109013 () Bool)

(declare-fun e!3725266 () Bool)

(assert (=> b!6109013 (= e!3725266 (nullable!6050 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))))))

(declare-fun b!6109014 () Bool)

(declare-fun e!3725267 () (InoxSet Context!10882))

(declare-fun call!505466 () (InoxSet Context!10882))

(assert (=> b!6109014 (= e!3725267 call!505466)))

(declare-fun b!6109015 () Bool)

(declare-fun e!3725265 () (InoxSet Context!10882))

(assert (=> b!6109015 (= e!3725265 e!3725267)))

(declare-fun c!1097565 () Bool)

(assert (=> b!6109015 (= c!1097565 ((_ is Cons!64346) (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))))))

(declare-fun bm!505461 () Bool)

(assert (=> bm!505461 (= call!505466 (derivationStepZipperDown!1305 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))) (h!70796 s!2326)))))

(declare-fun b!6109016 () Bool)

(assert (=> b!6109016 (= e!3725265 ((_ map or) call!505466 (derivationStepZipperUp!1231 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))) (h!70796 s!2326))))))

(declare-fun b!6109017 () Bool)

(assert (=> b!6109017 (= e!3725267 ((as const (Array Context!10882 Bool)) false))))

(declare-fun d!1914652 () Bool)

(declare-fun c!1097564 () Bool)

(assert (=> d!1914652 (= c!1097564 e!3725266)))

(declare-fun res!2534044 () Bool)

(assert (=> d!1914652 (=> (not res!2534044) (not e!3725266))))

(assert (=> d!1914652 (= res!2534044 ((_ is Cons!64346) (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))))))

(assert (=> d!1914652 (= (derivationStepZipperUp!1231 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (h!70796 s!2326)) e!3725265)))

(assert (= (and d!1914652 res!2534044) b!6109013))

(assert (= (and d!1914652 c!1097564) b!6109016))

(assert (= (and d!1914652 (not c!1097564)) b!6109015))

(assert (= (and b!6109015 c!1097565) b!6109014))

(assert (= (and b!6109015 (not c!1097565)) b!6109017))

(assert (= (or b!6109016 b!6109014) bm!505461))

(declare-fun m!6959084 () Bool)

(assert (=> b!6109013 m!6959084))

(declare-fun m!6959086 () Bool)

(assert (=> bm!505461 m!6959086))

(declare-fun m!6959088 () Bool)

(assert (=> b!6109016 m!6959088))

(assert (=> b!6106869 d!1914652))

(declare-fun d!1914654 () Bool)

(declare-fun lt!2329883 () Bool)

(assert (=> d!1914654 (= lt!2329883 (select (content!11939 (t!377924 lt!2329759)) (h!70795 lt!2329759)))))

(declare-fun e!3725273 () Bool)

(assert (=> d!1914654 (= lt!2329883 e!3725273)))

(declare-fun res!2534049 () Bool)

(assert (=> d!1914654 (=> (not res!2534049) (not e!3725273))))

(assert (=> d!1914654 (= res!2534049 ((_ is Cons!64347) (t!377924 lt!2329759)))))

(assert (=> d!1914654 (= (contains!20020 (t!377924 lt!2329759) (h!70795 lt!2329759)) lt!2329883)))

(declare-fun b!6109022 () Bool)

(declare-fun e!3725272 () Bool)

(assert (=> b!6109022 (= e!3725273 e!3725272)))

(declare-fun res!2534050 () Bool)

(assert (=> b!6109022 (=> res!2534050 e!3725272)))

(assert (=> b!6109022 (= res!2534050 (= (h!70795 (t!377924 lt!2329759)) (h!70795 lt!2329759)))))

(declare-fun b!6109023 () Bool)

(assert (=> b!6109023 (= e!3725272 (contains!20020 (t!377924 (t!377924 lt!2329759)) (h!70795 lt!2329759)))))

(assert (= (and d!1914654 res!2534049) b!6109022))

(assert (= (and b!6109022 (not res!2534050)) b!6109023))

(assert (=> d!1914654 m!6957704))

(declare-fun m!6959090 () Bool)

(assert (=> d!1914654 m!6959090))

(declare-fun m!6959092 () Bool)

(assert (=> b!6109023 m!6959092))

(assert (=> b!6107009 d!1914654))

(declare-fun d!1914656 () Bool)

(declare-fun res!2534051 () Bool)

(declare-fun e!3725274 () Bool)

(assert (=> d!1914656 (=> res!2534051 e!3725274)))

(assert (=> d!1914656 (= res!2534051 ((_ is Nil!64346) (t!377923 lt!2329720)))))

(assert (=> d!1914656 (= (forall!15178 (t!377923 lt!2329720) lambda!332695) e!3725274)))

(declare-fun b!6109024 () Bool)

(declare-fun e!3725275 () Bool)

(assert (=> b!6109024 (= e!3725274 e!3725275)))

(declare-fun res!2534052 () Bool)

(assert (=> b!6109024 (=> (not res!2534052) (not e!3725275))))

(assert (=> b!6109024 (= res!2534052 (dynLambda!25338 lambda!332695 (h!70794 (t!377923 lt!2329720))))))

(declare-fun b!6109025 () Bool)

(assert (=> b!6109025 (= e!3725275 (forall!15178 (t!377923 (t!377923 lt!2329720)) lambda!332695))))

(assert (= (and d!1914656 (not res!2534051)) b!6109024))

(assert (= (and b!6109024 res!2534052) b!6109025))

(declare-fun b_lambda!232695 () Bool)

(assert (=> (not b_lambda!232695) (not b!6109024)))

(declare-fun m!6959094 () Bool)

(assert (=> b!6109024 m!6959094))

(declare-fun m!6959096 () Bool)

(assert (=> b!6109025 m!6959096))

(assert (=> b!6106977 d!1914656))

(declare-fun d!1914658 () Bool)

(assert (=> d!1914658 (= (Exists!3127 (ite c!1097150 lambda!332753 lambda!332754)) (choose!45394 (ite c!1097150 lambda!332753 lambda!332754)))))

(declare-fun bs!1516648 () Bool)

(assert (= bs!1516648 d!1914658))

(declare-fun m!6959098 () Bool)

(assert (=> bs!1516648 m!6959098))

(assert (=> bm!505129 d!1914658))

(declare-fun d!1914660 () Bool)

(assert (=> d!1914660 (= (nullable!6050 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (nullableFct!2014 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))))))

(declare-fun bs!1516649 () Bool)

(assert (= bs!1516649 d!1914660))

(declare-fun m!6959100 () Bool)

(assert (=> bs!1516649 m!6959100))

(assert (=> b!6106915 d!1914660))

(declare-fun d!1914662 () Bool)

(assert (=> d!1914662 (= (isEmpty!36274 Nil!64348) true)))

(assert (=> bm!505171 d!1914662))

(declare-fun d!1914664 () Bool)

(assert (=> d!1914664 (= (isEmpty!36274 (_2!36339 (get!22188 lt!2329734))) ((_ is Nil!64348) (_2!36339 (get!22188 lt!2329734))))))

(assert (=> bm!505128 d!1914664))

(declare-fun b!6109026 () Bool)

(declare-fun e!3725281 () (InoxSet Context!10882))

(declare-fun e!3725280 () (InoxSet Context!10882))

(assert (=> b!6109026 (= e!3725281 e!3725280)))

(declare-fun c!1097567 () Bool)

(assert (=> b!6109026 (= c!1097567 ((_ is Union!16057) (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690))))))))

(declare-fun c!1097570 () Bool)

(declare-fun call!505467 () List!64470)

(declare-fun bm!505462 () Bool)

(declare-fun c!1097569 () Bool)

(assert (=> bm!505462 (= call!505467 ($colon$colon!1934 (exprs!5941 (ite c!1097178 (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (Context!10883 call!505152))) (ite (or c!1097569 c!1097570) (regTwo!32626 (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690))))) (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690)))))))))

(declare-fun b!6109027 () Bool)

(declare-fun e!3725277 () (InoxSet Context!10882))

(declare-fun call!505470 () (InoxSet Context!10882))

(assert (=> b!6109027 (= e!3725277 call!505470)))

(declare-fun bm!505463 () Bool)

(declare-fun call!505468 () (InoxSet Context!10882))

(declare-fun call!505472 () (InoxSet Context!10882))

(assert (=> bm!505463 (= call!505468 call!505472)))

(declare-fun b!6109028 () Bool)

(declare-fun call!505471 () (InoxSet Context!10882))

(assert (=> b!6109028 (= e!3725280 ((_ map or) call!505472 call!505471))))

(declare-fun bm!505464 () Bool)

(assert (=> bm!505464 (= call!505470 call!505468)))

(declare-fun b!6109029 () Bool)

(declare-fun e!3725278 () (InoxSet Context!10882))

(assert (=> b!6109029 (= e!3725278 ((_ map or) call!505471 call!505468))))

(declare-fun b!6109030 () Bool)

(declare-fun e!3725276 () Bool)

(assert (=> b!6109030 (= e!3725276 (nullable!6050 (regOne!32626 (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690)))))))))

(declare-fun c!1097566 () Bool)

(declare-fun d!1914666 () Bool)

(assert (=> d!1914666 (= c!1097566 (and ((_ is ElementMatch!16057) (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690))))) (= (c!1096851 (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690))))) (h!70796 s!2326))))))

(assert (=> d!1914666 (= (derivationStepZipperDown!1305 (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690)))) (ite c!1097178 (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (Context!10883 call!505152)) (h!70796 s!2326)) e!3725281)))

(declare-fun bm!505465 () Bool)

(assert (=> bm!505465 (= call!505471 (derivationStepZipperDown!1305 (ite c!1097567 (regTwo!32627 (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690))))) (regOne!32626 (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690)))))) (ite c!1097567 (ite c!1097178 (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (Context!10883 call!505152)) (Context!10883 call!505467)) (h!70796 s!2326)))))

(declare-fun b!6109031 () Bool)

(assert (=> b!6109031 (= e!3725281 (store ((as const (Array Context!10882 Bool)) false) (ite c!1097178 (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (Context!10883 call!505152)) true))))

(declare-fun b!6109032 () Bool)

(assert (=> b!6109032 (= c!1097569 e!3725276)))

(declare-fun res!2534053 () Bool)

(assert (=> b!6109032 (=> (not res!2534053) (not e!3725276))))

(assert (=> b!6109032 (= res!2534053 ((_ is Concat!24902) (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690))))))))

(assert (=> b!6109032 (= e!3725280 e!3725278)))

(declare-fun b!6109033 () Bool)

(declare-fun c!1097568 () Bool)

(assert (=> b!6109033 (= c!1097568 ((_ is Star!16057) (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690))))))))

(declare-fun e!3725279 () (InoxSet Context!10882))

(assert (=> b!6109033 (= e!3725277 e!3725279)))

(declare-fun bm!505466 () Bool)

(declare-fun call!505469 () List!64470)

(assert (=> bm!505466 (= call!505472 (derivationStepZipperDown!1305 (ite c!1097567 (regOne!32627 (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690))))) (ite c!1097569 (regTwo!32626 (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690))))) (ite c!1097570 (regOne!32626 (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690))))) (reg!16386 (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690)))))))) (ite (or c!1097567 c!1097569) (ite c!1097178 (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (Context!10883 call!505152)) (Context!10883 call!505469)) (h!70796 s!2326)))))

(declare-fun bm!505467 () Bool)

(assert (=> bm!505467 (= call!505469 call!505467)))

(declare-fun b!6109034 () Bool)

(assert (=> b!6109034 (= e!3725279 call!505470)))

(declare-fun b!6109035 () Bool)

(assert (=> b!6109035 (= e!3725278 e!3725277)))

(assert (=> b!6109035 (= c!1097570 ((_ is Concat!24902) (ite c!1097178 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690))))))))

(declare-fun b!6109036 () Bool)

(assert (=> b!6109036 (= e!3725279 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1914666 c!1097566) b!6109031))

(assert (= (and d!1914666 (not c!1097566)) b!6109026))

(assert (= (and b!6109026 c!1097567) b!6109028))

(assert (= (and b!6109026 (not c!1097567)) b!6109032))

(assert (= (and b!6109032 res!2534053) b!6109030))

(assert (= (and b!6109032 c!1097569) b!6109029))

(assert (= (and b!6109032 (not c!1097569)) b!6109035))

(assert (= (and b!6109035 c!1097570) b!6109027))

(assert (= (and b!6109035 (not c!1097570)) b!6109033))

(assert (= (and b!6109033 c!1097568) b!6109034))

(assert (= (and b!6109033 (not c!1097568)) b!6109036))

(assert (= (or b!6109027 b!6109034) bm!505467))

(assert (= (or b!6109027 b!6109034) bm!505464))

(assert (= (or b!6109029 bm!505467) bm!505462))

(assert (= (or b!6109029 bm!505464) bm!505463))

(assert (= (or b!6109028 b!6109029) bm!505465))

(assert (= (or b!6109028 bm!505463) bm!505466))

(declare-fun m!6959102 () Bool)

(assert (=> b!6109030 m!6959102))

(declare-fun m!6959104 () Bool)

(assert (=> bm!505462 m!6959104))

(declare-fun m!6959106 () Bool)

(assert (=> bm!505465 m!6959106))

(declare-fun m!6959108 () Bool)

(assert (=> b!6109031 m!6959108))

(declare-fun m!6959110 () Bool)

(assert (=> bm!505466 m!6959110))

(assert (=> bm!505150 d!1914666))

(declare-fun d!1914668 () Bool)

(assert (=> d!1914668 (= (head!12635 (t!377923 (unfocusZipperList!1478 zl!343))) (h!70794 (t!377923 (unfocusZipperList!1478 zl!343))))))

(assert (=> b!6107037 d!1914668))

(declare-fun b!6109038 () Bool)

(declare-fun e!3725282 () List!64472)

(assert (=> b!6109038 (= e!3725282 (Cons!64348 (h!70796 (t!377925 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)))) (++!14144 (t!377925 (t!377925 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)))) (t!377925 s!2326))))))

(declare-fun b!6109040 () Bool)

(declare-fun e!3725283 () Bool)

(declare-fun lt!2329884 () List!64472)

(assert (=> b!6109040 (= e!3725283 (or (not (= (t!377925 s!2326) Nil!64348)) (= lt!2329884 (t!377925 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))))))))

(declare-fun b!6109039 () Bool)

(declare-fun res!2534054 () Bool)

(assert (=> b!6109039 (=> (not res!2534054) (not e!3725283))))

(assert (=> b!6109039 (= res!2534054 (= (size!40202 lt!2329884) (+ (size!40202 (t!377925 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)))) (size!40202 (t!377925 s!2326)))))))

(declare-fun b!6109037 () Bool)

(assert (=> b!6109037 (= e!3725282 (t!377925 s!2326))))

(declare-fun d!1914670 () Bool)

(assert (=> d!1914670 e!3725283))

(declare-fun res!2534055 () Bool)

(assert (=> d!1914670 (=> (not res!2534055) (not e!3725283))))

(assert (=> d!1914670 (= res!2534055 (= (content!11941 lt!2329884) ((_ map or) (content!11941 (t!377925 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)))) (content!11941 (t!377925 s!2326)))))))

(assert (=> d!1914670 (= lt!2329884 e!3725282)))

(declare-fun c!1097571 () Bool)

(assert (=> d!1914670 (= c!1097571 ((_ is Nil!64348) (t!377925 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348)))))))

(assert (=> d!1914670 (= (++!14144 (t!377925 (++!14144 Nil!64348 (Cons!64348 (h!70796 s!2326) Nil!64348))) (t!377925 s!2326)) lt!2329884)))

(assert (= (and d!1914670 c!1097571) b!6109037))

(assert (= (and d!1914670 (not c!1097571)) b!6109038))

(assert (= (and d!1914670 res!2534055) b!6109039))

(assert (= (and b!6109039 res!2534054) b!6109040))

(declare-fun m!6959112 () Bool)

(assert (=> b!6109038 m!6959112))

(declare-fun m!6959114 () Bool)

(assert (=> b!6109039 m!6959114))

(assert (=> b!6109039 m!6959028))

(assert (=> b!6109039 m!6957560))

(declare-fun m!6959116 () Bool)

(assert (=> d!1914670 m!6959116))

(assert (=> d!1914670 m!6958578))

(assert (=> d!1914670 m!6957566))

(assert (=> b!6106899 d!1914670))

(declare-fun d!1914672 () Bool)

(assert (=> d!1914672 (= (isConcat!997 lt!2329802) ((_ is Concat!24902) lt!2329802))))

(assert (=> b!6106983 d!1914672))

(declare-fun b!6109041 () Bool)

(declare-fun e!3725285 () Bool)

(assert (=> b!6109041 (= e!3725285 (nullable!6050 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690))))))))))))

(declare-fun b!6109042 () Bool)

(declare-fun e!3725286 () (InoxSet Context!10882))

(declare-fun call!505473 () (InoxSet Context!10882))

(assert (=> b!6109042 (= e!3725286 call!505473)))

(declare-fun b!6109043 () Bool)

(declare-fun e!3725284 () (InoxSet Context!10882))

(assert (=> b!6109043 (= e!3725284 e!3725286)))

(declare-fun c!1097573 () Bool)

(assert (=> b!6109043 (= c!1097573 ((_ is Cons!64346) (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))))))))

(declare-fun bm!505468 () Bool)

(assert (=> bm!505468 (= call!505473 (derivationStepZipperDown!1305 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))))) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690))))))))) (h!70796 s!2326)))))

(declare-fun b!6109044 () Bool)

(assert (=> b!6109044 (= e!3725284 ((_ map or) call!505473 (derivationStepZipperUp!1231 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690))))))))) (h!70796 s!2326))))))

(declare-fun b!6109045 () Bool)

(assert (=> b!6109045 (= e!3725286 ((as const (Array Context!10882 Bool)) false))))

(declare-fun d!1914674 () Bool)

(declare-fun c!1097572 () Bool)

(assert (=> d!1914674 (= c!1097572 e!3725285)))

(declare-fun res!2534056 () Bool)

(assert (=> d!1914674 (=> (not res!2534056) (not e!3725285))))

(assert (=> d!1914674 (= res!2534056 ((_ is Cons!64346) (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))))))))

(assert (=> d!1914674 (= (derivationStepZipperUp!1231 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (h!70796 s!2326)) e!3725284)))

(assert (= (and d!1914674 res!2534056) b!6109041))

(assert (= (and d!1914674 c!1097572) b!6109044))

(assert (= (and d!1914674 (not c!1097572)) b!6109043))

(assert (= (and b!6109043 c!1097573) b!6109042))

(assert (= (and b!6109043 (not c!1097573)) b!6109045))

(assert (= (or b!6109044 b!6109042) bm!505468))

(declare-fun m!6959118 () Bool)

(assert (=> b!6109041 m!6959118))

(declare-fun m!6959120 () Bool)

(assert (=> bm!505468 m!6959120))

(declare-fun m!6959122 () Bool)

(assert (=> b!6109044 m!6959122))

(assert (=> b!6106918 d!1914674))

(assert (=> b!6107023 d!1914618))

(declare-fun b!6109046 () Bool)

(declare-fun e!3725292 () (InoxSet Context!10882))

(declare-fun e!3725291 () (InoxSet Context!10882))

(assert (=> b!6109046 (= e!3725292 e!3725291)))

(declare-fun c!1097575 () Bool)

(assert (=> b!6109046 (= c!1097575 ((_ is Union!16057) (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690))))))))))

(declare-fun call!505474 () List!64470)

(declare-fun bm!505469 () Bool)

(declare-fun c!1097577 () Bool)

(declare-fun c!1097578 () Bool)

(assert (=> bm!505469 (= call!505474 ($colon$colon!1934 (exprs!5941 (ite (or c!1097178 c!1097180) (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (Context!10883 call!505154))) (ite (or c!1097577 c!1097578) (regTwo!32626 (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690))))))) (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690)))))))))))

(declare-fun b!6109047 () Bool)

(declare-fun e!3725288 () (InoxSet Context!10882))

(declare-fun call!505477 () (InoxSet Context!10882))

(assert (=> b!6109047 (= e!3725288 call!505477)))

(declare-fun bm!505470 () Bool)

(declare-fun call!505475 () (InoxSet Context!10882))

(declare-fun call!505479 () (InoxSet Context!10882))

(assert (=> bm!505470 (= call!505475 call!505479)))

(declare-fun b!6109048 () Bool)

(declare-fun call!505478 () (InoxSet Context!10882))

(assert (=> b!6109048 (= e!3725291 ((_ map or) call!505479 call!505478))))

(declare-fun bm!505471 () Bool)

(assert (=> bm!505471 (= call!505477 call!505475)))

(declare-fun b!6109049 () Bool)

(declare-fun e!3725289 () (InoxSet Context!10882))

(assert (=> b!6109049 (= e!3725289 ((_ map or) call!505478 call!505475))))

(declare-fun e!3725287 () Bool)

(declare-fun b!6109050 () Bool)

(assert (=> b!6109050 (= e!3725287 (nullable!6050 (regOne!32626 (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690)))))))))))

(declare-fun d!1914676 () Bool)

(declare-fun c!1097574 () Bool)

(assert (=> d!1914676 (= c!1097574 (and ((_ is ElementMatch!16057) (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690))))))) (= (c!1096851 (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690))))))) (h!70796 s!2326))))))

(assert (=> d!1914676 (= (derivationStepZipperDown!1305 (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690)))))) (ite (or c!1097178 c!1097180) (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (Context!10883 call!505154)) (h!70796 s!2326)) e!3725292)))

(declare-fun bm!505472 () Bool)

(assert (=> bm!505472 (= call!505478 (derivationStepZipperDown!1305 (ite c!1097575 (regTwo!32627 (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690))))))) (regOne!32626 (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690)))))))) (ite c!1097575 (ite (or c!1097178 c!1097180) (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (Context!10883 call!505154)) (Context!10883 call!505474)) (h!70796 s!2326)))))

(declare-fun b!6109051 () Bool)

(assert (=> b!6109051 (= e!3725292 (store ((as const (Array Context!10882 Bool)) false) (ite (or c!1097178 c!1097180) (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (Context!10883 call!505154)) true))))

(declare-fun b!6109052 () Bool)

(assert (=> b!6109052 (= c!1097577 e!3725287)))

(declare-fun res!2534057 () Bool)

(assert (=> b!6109052 (=> (not res!2534057) (not e!3725287))))

(assert (=> b!6109052 (= res!2534057 ((_ is Concat!24902) (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690))))))))))

(assert (=> b!6109052 (= e!3725291 e!3725289)))

(declare-fun b!6109053 () Bool)

(declare-fun c!1097576 () Bool)

(assert (=> b!6109053 (= c!1097576 ((_ is Star!16057) (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690))))))))))

(declare-fun e!3725290 () (InoxSet Context!10882))

(assert (=> b!6109053 (= e!3725288 e!3725290)))

(declare-fun call!505476 () List!64470)

(declare-fun bm!505473 () Bool)

(assert (=> bm!505473 (= call!505479 (derivationStepZipperDown!1305 (ite c!1097575 (regOne!32627 (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690))))))) (ite c!1097577 (regTwo!32626 (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690))))))) (ite c!1097578 (regOne!32626 (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690))))))) (reg!16386 (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690)))))))))) (ite (or c!1097575 c!1097577) (ite (or c!1097178 c!1097180) (Context!10883 (t!377923 (exprs!5941 lt!2329690))) (Context!10883 call!505154)) (Context!10883 call!505476)) (h!70796 s!2326)))))

(declare-fun bm!505474 () Bool)

(assert (=> bm!505474 (= call!505476 call!505474)))

(declare-fun b!6109054 () Bool)

(assert (=> b!6109054 (= e!3725290 call!505477)))

(declare-fun b!6109055 () Bool)

(assert (=> b!6109055 (= e!3725289 e!3725288)))

(assert (=> b!6109055 (= c!1097578 ((_ is Concat!24902) (ite c!1097178 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097180 (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))) (ite c!1097181 (regOne!32626 (h!70794 (exprs!5941 lt!2329690))) (reg!16386 (h!70794 (exprs!5941 lt!2329690))))))))))

(declare-fun b!6109056 () Bool)

(assert (=> b!6109056 (= e!3725290 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1914676 c!1097574) b!6109051))

(assert (= (and d!1914676 (not c!1097574)) b!6109046))

(assert (= (and b!6109046 c!1097575) b!6109048))

(assert (= (and b!6109046 (not c!1097575)) b!6109052))

(assert (= (and b!6109052 res!2534057) b!6109050))

(assert (= (and b!6109052 c!1097577) b!6109049))

(assert (= (and b!6109052 (not c!1097577)) b!6109055))

(assert (= (and b!6109055 c!1097578) b!6109047))

(assert (= (and b!6109055 (not c!1097578)) b!6109053))

(assert (= (and b!6109053 c!1097576) b!6109054))

(assert (= (and b!6109053 (not c!1097576)) b!6109056))

(assert (= (or b!6109047 b!6109054) bm!505474))

(assert (= (or b!6109047 b!6109054) bm!505471))

(assert (= (or b!6109049 bm!505474) bm!505469))

(assert (= (or b!6109049 bm!505471) bm!505470))

(assert (= (or b!6109048 b!6109049) bm!505472))

(assert (= (or b!6109048 bm!505470) bm!505473))

(declare-fun m!6959124 () Bool)

(assert (=> b!6109050 m!6959124))

(declare-fun m!6959126 () Bool)

(assert (=> bm!505469 m!6959126))

(declare-fun m!6959128 () Bool)

(assert (=> bm!505472 m!6959128))

(declare-fun m!6959130 () Bool)

(assert (=> b!6109051 m!6959130))

(declare-fun m!6959132 () Bool)

(assert (=> bm!505473 m!6959132))

(assert (=> bm!505151 d!1914676))

(assert (=> b!6106812 d!1913920))

(declare-fun b!6109057 () Bool)

(declare-fun e!3725298 () Bool)

(declare-fun e!3725299 () Bool)

(assert (=> b!6109057 (= e!3725298 e!3725299)))

(declare-fun c!1097579 () Bool)

(assert (=> b!6109057 (= c!1097579 ((_ is Union!16057) lt!2329804))))

(declare-fun b!6109058 () Bool)

(declare-fun e!3725297 () Bool)

(declare-fun call!505481 () Bool)

(assert (=> b!6109058 (= e!3725297 call!505481)))

(declare-fun b!6109059 () Bool)

(declare-fun e!3725295 () Bool)

(assert (=> b!6109059 (= e!3725295 e!3725298)))

(declare-fun c!1097580 () Bool)

(assert (=> b!6109059 (= c!1097580 ((_ is Star!16057) lt!2329804))))

(declare-fun bm!505475 () Bool)

(declare-fun call!505480 () Bool)

(assert (=> bm!505475 (= call!505481 call!505480)))

(declare-fun b!6109060 () Bool)

(declare-fun res!2534060 () Bool)

(declare-fun e!3725294 () Bool)

(assert (=> b!6109060 (=> res!2534060 e!3725294)))

(assert (=> b!6109060 (= res!2534060 (not ((_ is Concat!24902) lt!2329804)))))

(assert (=> b!6109060 (= e!3725299 e!3725294)))

(declare-fun b!6109061 () Bool)

(declare-fun e!3725296 () Bool)

(assert (=> b!6109061 (= e!3725296 call!505481)))

(declare-fun bm!505476 () Bool)

(assert (=> bm!505476 (= call!505480 (validRegex!7793 (ite c!1097580 (reg!16386 lt!2329804) (ite c!1097579 (regTwo!32627 lt!2329804) (regTwo!32626 lt!2329804)))))))

(declare-fun b!6109062 () Bool)

(declare-fun e!3725293 () Bool)

(assert (=> b!6109062 (= e!3725298 e!3725293)))

(declare-fun res!2534061 () Bool)

(assert (=> b!6109062 (= res!2534061 (not (nullable!6050 (reg!16386 lt!2329804))))))

(assert (=> b!6109062 (=> (not res!2534061) (not e!3725293))))

(declare-fun b!6109063 () Bool)

(assert (=> b!6109063 (= e!3725294 e!3725296)))

(declare-fun res!2534062 () Bool)

(assert (=> b!6109063 (=> (not res!2534062) (not e!3725296))))

(declare-fun call!505482 () Bool)

(assert (=> b!6109063 (= res!2534062 call!505482)))

(declare-fun b!6109064 () Bool)

(assert (=> b!6109064 (= e!3725293 call!505480)))

(declare-fun b!6109065 () Bool)

(declare-fun res!2534058 () Bool)

(assert (=> b!6109065 (=> (not res!2534058) (not e!3725297))))

(assert (=> b!6109065 (= res!2534058 call!505482)))

(assert (=> b!6109065 (= e!3725299 e!3725297)))

(declare-fun bm!505477 () Bool)

(assert (=> bm!505477 (= call!505482 (validRegex!7793 (ite c!1097579 (regOne!32627 lt!2329804) (regOne!32626 lt!2329804))))))

(declare-fun d!1914678 () Bool)

(declare-fun res!2534059 () Bool)

(assert (=> d!1914678 (=> res!2534059 e!3725295)))

(assert (=> d!1914678 (= res!2534059 ((_ is ElementMatch!16057) lt!2329804))))

(assert (=> d!1914678 (= (validRegex!7793 lt!2329804) e!3725295)))

(assert (= (and d!1914678 (not res!2534059)) b!6109059))

(assert (= (and b!6109059 c!1097580) b!6109062))

(assert (= (and b!6109059 (not c!1097580)) b!6109057))

(assert (= (and b!6109062 res!2534061) b!6109064))

(assert (= (and b!6109057 c!1097579) b!6109065))

(assert (= (and b!6109057 (not c!1097579)) b!6109060))

(assert (= (and b!6109065 res!2534058) b!6109058))

(assert (= (and b!6109060 (not res!2534060)) b!6109063))

(assert (= (and b!6109063 res!2534062) b!6109061))

(assert (= (or b!6109058 b!6109061) bm!505475))

(assert (= (or b!6109065 b!6109063) bm!505477))

(assert (= (or b!6109064 bm!505475) bm!505476))

(declare-fun m!6959134 () Bool)

(assert (=> bm!505476 m!6959134))

(declare-fun m!6959136 () Bool)

(assert (=> b!6109062 m!6959136))

(declare-fun m!6959138 () Bool)

(assert (=> bm!505477 m!6959138))

(assert (=> d!1914016 d!1914678))

(declare-fun d!1914680 () Bool)

(declare-fun res!2534063 () Bool)

(declare-fun e!3725300 () Bool)

(assert (=> d!1914680 (=> res!2534063 e!3725300)))

(assert (=> d!1914680 (= res!2534063 ((_ is Nil!64346) (t!377923 (unfocusZipperList!1478 zl!343))))))

(assert (=> d!1914680 (= (forall!15178 (t!377923 (unfocusZipperList!1478 zl!343)) lambda!332757) e!3725300)))

(declare-fun b!6109066 () Bool)

(declare-fun e!3725301 () Bool)

(assert (=> b!6109066 (= e!3725300 e!3725301)))

(declare-fun res!2534064 () Bool)

(assert (=> b!6109066 (=> (not res!2534064) (not e!3725301))))

(assert (=> b!6109066 (= res!2534064 (dynLambda!25338 lambda!332757 (h!70794 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(declare-fun b!6109067 () Bool)

(assert (=> b!6109067 (= e!3725301 (forall!15178 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343))) lambda!332757))))

(assert (= (and d!1914680 (not res!2534063)) b!6109066))

(assert (= (and b!6109066 res!2534064) b!6109067))

(declare-fun b_lambda!232697 () Bool)

(assert (=> (not b_lambda!232697) (not b!6109066)))

(declare-fun m!6959140 () Bool)

(assert (=> b!6109066 m!6959140))

(declare-fun m!6959142 () Bool)

(assert (=> b!6109067 m!6959142))

(assert (=> d!1914016 d!1914680))

(declare-fun d!1914682 () Bool)

(declare-fun res!2534065 () Bool)

(declare-fun e!3725302 () Bool)

(assert (=> d!1914682 (=> res!2534065 e!3725302)))

(assert (=> d!1914682 (= res!2534065 ((_ is Nil!64346) lt!2329801))))

(assert (=> d!1914682 (= (forall!15178 lt!2329801 lambda!332755) e!3725302)))

(declare-fun b!6109068 () Bool)

(declare-fun e!3725303 () Bool)

(assert (=> b!6109068 (= e!3725302 e!3725303)))

(declare-fun res!2534066 () Bool)

(assert (=> b!6109068 (=> (not res!2534066) (not e!3725303))))

(assert (=> b!6109068 (= res!2534066 (dynLambda!25338 lambda!332755 (h!70794 lt!2329801)))))

(declare-fun b!6109069 () Bool)

(assert (=> b!6109069 (= e!3725303 (forall!15178 (t!377923 lt!2329801) lambda!332755))))

(assert (= (and d!1914682 (not res!2534065)) b!6109068))

(assert (= (and b!6109068 res!2534066) b!6109069))

(declare-fun b_lambda!232699 () Bool)

(assert (=> (not b_lambda!232699) (not b!6109068)))

(declare-fun m!6959144 () Bool)

(assert (=> b!6109068 m!6959144))

(declare-fun m!6959146 () Bool)

(assert (=> b!6109069 m!6959146))

(assert (=> d!1913998 d!1914682))

(assert (=> d!1913916 d!1913964))

(declare-fun b!6109070 () Bool)

(declare-fun e!3725309 () Bool)

(declare-fun e!3725310 () Bool)

(assert (=> b!6109070 (= e!3725309 e!3725310)))

(declare-fun c!1097581 () Bool)

(assert (=> b!6109070 (= c!1097581 ((_ is Union!16057) (derivativeStep!4778 r!7292 (head!12636 s!2326))))))

(declare-fun b!6109071 () Bool)

(declare-fun e!3725308 () Bool)

(declare-fun call!505484 () Bool)

(assert (=> b!6109071 (= e!3725308 call!505484)))

(declare-fun b!6109072 () Bool)

(declare-fun e!3725306 () Bool)

(assert (=> b!6109072 (= e!3725306 e!3725309)))

(declare-fun c!1097582 () Bool)

(assert (=> b!6109072 (= c!1097582 ((_ is Star!16057) (derivativeStep!4778 r!7292 (head!12636 s!2326))))))

(declare-fun bm!505478 () Bool)

(declare-fun call!505483 () Bool)

(assert (=> bm!505478 (= call!505484 call!505483)))

(declare-fun b!6109073 () Bool)

(declare-fun res!2534069 () Bool)

(declare-fun e!3725305 () Bool)

(assert (=> b!6109073 (=> res!2534069 e!3725305)))

(assert (=> b!6109073 (= res!2534069 (not ((_ is Concat!24902) (derivativeStep!4778 r!7292 (head!12636 s!2326)))))))

(assert (=> b!6109073 (= e!3725310 e!3725305)))

(declare-fun b!6109074 () Bool)

(declare-fun e!3725307 () Bool)

(assert (=> b!6109074 (= e!3725307 call!505484)))

(declare-fun bm!505479 () Bool)

(assert (=> bm!505479 (= call!505483 (validRegex!7793 (ite c!1097582 (reg!16386 (derivativeStep!4778 r!7292 (head!12636 s!2326))) (ite c!1097581 (regTwo!32627 (derivativeStep!4778 r!7292 (head!12636 s!2326))) (regTwo!32626 (derivativeStep!4778 r!7292 (head!12636 s!2326)))))))))

(declare-fun b!6109075 () Bool)

(declare-fun e!3725304 () Bool)

(assert (=> b!6109075 (= e!3725309 e!3725304)))

(declare-fun res!2534070 () Bool)

(assert (=> b!6109075 (= res!2534070 (not (nullable!6050 (reg!16386 (derivativeStep!4778 r!7292 (head!12636 s!2326))))))))

(assert (=> b!6109075 (=> (not res!2534070) (not e!3725304))))

(declare-fun b!6109076 () Bool)

(assert (=> b!6109076 (= e!3725305 e!3725307)))

(declare-fun res!2534071 () Bool)

(assert (=> b!6109076 (=> (not res!2534071) (not e!3725307))))

(declare-fun call!505485 () Bool)

(assert (=> b!6109076 (= res!2534071 call!505485)))

(declare-fun b!6109077 () Bool)

(assert (=> b!6109077 (= e!3725304 call!505483)))

(declare-fun b!6109078 () Bool)

(declare-fun res!2534067 () Bool)

(assert (=> b!6109078 (=> (not res!2534067) (not e!3725308))))

(assert (=> b!6109078 (= res!2534067 call!505485)))

(assert (=> b!6109078 (= e!3725310 e!3725308)))

(declare-fun bm!505480 () Bool)

(assert (=> bm!505480 (= call!505485 (validRegex!7793 (ite c!1097581 (regOne!32627 (derivativeStep!4778 r!7292 (head!12636 s!2326))) (regOne!32626 (derivativeStep!4778 r!7292 (head!12636 s!2326))))))))

(declare-fun d!1914684 () Bool)

(declare-fun res!2534068 () Bool)

(assert (=> d!1914684 (=> res!2534068 e!3725306)))

(assert (=> d!1914684 (= res!2534068 ((_ is ElementMatch!16057) (derivativeStep!4778 r!7292 (head!12636 s!2326))))))

(assert (=> d!1914684 (= (validRegex!7793 (derivativeStep!4778 r!7292 (head!12636 s!2326))) e!3725306)))

(assert (= (and d!1914684 (not res!2534068)) b!6109072))

(assert (= (and b!6109072 c!1097582) b!6109075))

(assert (= (and b!6109072 (not c!1097582)) b!6109070))

(assert (= (and b!6109075 res!2534070) b!6109077))

(assert (= (and b!6109070 c!1097581) b!6109078))

(assert (= (and b!6109070 (not c!1097581)) b!6109073))

(assert (= (and b!6109078 res!2534067) b!6109071))

(assert (= (and b!6109073 (not res!2534069)) b!6109076))

(assert (= (and b!6109076 res!2534071) b!6109074))

(assert (= (or b!6109071 b!6109074) bm!505478))

(assert (= (or b!6109078 b!6109076) bm!505480))

(assert (= (or b!6109077 bm!505478) bm!505479))

(declare-fun m!6959148 () Bool)

(assert (=> bm!505479 m!6959148))

(declare-fun m!6959150 () Bool)

(assert (=> b!6109075 m!6959150))

(declare-fun m!6959152 () Bool)

(assert (=> bm!505480 m!6959152))

(assert (=> d!1913916 d!1914684))

(declare-fun d!1914686 () Bool)

(assert (=> d!1914686 (= (isEmptyLang!1484 lt!2329804) ((_ is EmptyLang!16057) lt!2329804))))

(assert (=> b!6107041 d!1914686))

(declare-fun b!6109079 () Bool)

(declare-fun e!3725316 () Bool)

(declare-fun e!3725317 () Bool)

(assert (=> b!6109079 (= e!3725316 e!3725317)))

(declare-fun c!1097583 () Bool)

(assert (=> b!6109079 (= c!1097583 ((_ is Union!16057) lt!2329802))))

(declare-fun b!6109080 () Bool)

(declare-fun e!3725315 () Bool)

(declare-fun call!505487 () Bool)

(assert (=> b!6109080 (= e!3725315 call!505487)))

(declare-fun b!6109081 () Bool)

(declare-fun e!3725313 () Bool)

(assert (=> b!6109081 (= e!3725313 e!3725316)))

(declare-fun c!1097584 () Bool)

(assert (=> b!6109081 (= c!1097584 ((_ is Star!16057) lt!2329802))))

(declare-fun bm!505481 () Bool)

(declare-fun call!505486 () Bool)

(assert (=> bm!505481 (= call!505487 call!505486)))

(declare-fun b!6109082 () Bool)

(declare-fun res!2534074 () Bool)

(declare-fun e!3725312 () Bool)

(assert (=> b!6109082 (=> res!2534074 e!3725312)))

(assert (=> b!6109082 (= res!2534074 (not ((_ is Concat!24902) lt!2329802)))))

(assert (=> b!6109082 (= e!3725317 e!3725312)))

(declare-fun b!6109083 () Bool)

(declare-fun e!3725314 () Bool)

(assert (=> b!6109083 (= e!3725314 call!505487)))

(declare-fun bm!505482 () Bool)

(assert (=> bm!505482 (= call!505486 (validRegex!7793 (ite c!1097584 (reg!16386 lt!2329802) (ite c!1097583 (regTwo!32627 lt!2329802) (regTwo!32626 lt!2329802)))))))

(declare-fun b!6109084 () Bool)

(declare-fun e!3725311 () Bool)

(assert (=> b!6109084 (= e!3725316 e!3725311)))

(declare-fun res!2534075 () Bool)

(assert (=> b!6109084 (= res!2534075 (not (nullable!6050 (reg!16386 lt!2329802))))))

(assert (=> b!6109084 (=> (not res!2534075) (not e!3725311))))

(declare-fun b!6109085 () Bool)

(assert (=> b!6109085 (= e!3725312 e!3725314)))

(declare-fun res!2534076 () Bool)

(assert (=> b!6109085 (=> (not res!2534076) (not e!3725314))))

(declare-fun call!505488 () Bool)

(assert (=> b!6109085 (= res!2534076 call!505488)))

(declare-fun b!6109086 () Bool)

(assert (=> b!6109086 (= e!3725311 call!505486)))

(declare-fun b!6109087 () Bool)

(declare-fun res!2534072 () Bool)

(assert (=> b!6109087 (=> (not res!2534072) (not e!3725315))))

(assert (=> b!6109087 (= res!2534072 call!505488)))

(assert (=> b!6109087 (= e!3725317 e!3725315)))

(declare-fun bm!505483 () Bool)

(assert (=> bm!505483 (= call!505488 (validRegex!7793 (ite c!1097583 (regOne!32627 lt!2329802) (regOne!32626 lt!2329802))))))

(declare-fun d!1914688 () Bool)

(declare-fun res!2534073 () Bool)

(assert (=> d!1914688 (=> res!2534073 e!3725313)))

(assert (=> d!1914688 (= res!2534073 ((_ is ElementMatch!16057) lt!2329802))))

(assert (=> d!1914688 (= (validRegex!7793 lt!2329802) e!3725313)))

(assert (= (and d!1914688 (not res!2534073)) b!6109081))

(assert (= (and b!6109081 c!1097584) b!6109084))

(assert (= (and b!6109081 (not c!1097584)) b!6109079))

(assert (= (and b!6109084 res!2534075) b!6109086))

(assert (= (and b!6109079 c!1097583) b!6109087))

(assert (= (and b!6109079 (not c!1097583)) b!6109082))

(assert (= (and b!6109087 res!2534072) b!6109080))

(assert (= (and b!6109082 (not res!2534074)) b!6109085))

(assert (= (and b!6109085 res!2534076) b!6109083))

(assert (= (or b!6109080 b!6109083) bm!505481))

(assert (= (or b!6109087 b!6109085) bm!505483))

(assert (= (or b!6109086 bm!505481) bm!505482))

(declare-fun m!6959154 () Bool)

(assert (=> bm!505482 m!6959154))

(declare-fun m!6959156 () Bool)

(assert (=> b!6109084 m!6959156))

(declare-fun m!6959158 () Bool)

(assert (=> bm!505483 m!6959158))

(assert (=> d!1914000 d!1914688))

(declare-fun d!1914690 () Bool)

(declare-fun res!2534077 () Bool)

(declare-fun e!3725318 () Bool)

(assert (=> d!1914690 (=> res!2534077 e!3725318)))

(assert (=> d!1914690 (= res!2534077 ((_ is Nil!64346) (t!377923 (exprs!5941 (h!70795 zl!343)))))))

(assert (=> d!1914690 (= (forall!15178 (t!377923 (exprs!5941 (h!70795 zl!343))) lambda!332756) e!3725318)))

(declare-fun b!6109088 () Bool)

(declare-fun e!3725319 () Bool)

(assert (=> b!6109088 (= e!3725318 e!3725319)))

(declare-fun res!2534078 () Bool)

(assert (=> b!6109088 (=> (not res!2534078) (not e!3725319))))

(assert (=> b!6109088 (= res!2534078 (dynLambda!25338 lambda!332756 (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun b!6109089 () Bool)

(assert (=> b!6109089 (= e!3725319 (forall!15178 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343)))) lambda!332756))))

(assert (= (and d!1914690 (not res!2534077)) b!6109088))

(assert (= (and b!6109088 res!2534078) b!6109089))

(declare-fun b_lambda!232701 () Bool)

(assert (=> (not b_lambda!232701) (not b!6109088)))

(declare-fun m!6959160 () Bool)

(assert (=> b!6109088 m!6959160))

(declare-fun m!6959162 () Bool)

(assert (=> b!6109089 m!6959162))

(assert (=> d!1914000 d!1914690))

(declare-fun d!1914692 () Bool)

(assert (=> d!1914692 (= (nullable!6050 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))) (nullableFct!2014 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))

(declare-fun bs!1516650 () Bool)

(assert (= bs!1516650 d!1914692))

(declare-fun m!6959164 () Bool)

(assert (=> bs!1516650 m!6959164))

(assert (=> b!6106969 d!1914692))

(assert (=> b!6106825 d!1914444))

(assert (=> bs!1516223 d!1914496))

(assert (=> b!6106819 d!1914422))

(assert (=> b!6106924 d!1914368))

(declare-fun b!6109090 () Bool)

(declare-fun res!2534083 () Bool)

(declare-fun e!3725326 () Bool)

(assert (=> b!6109090 (=> (not res!2534083) (not e!3725326))))

(declare-fun call!505489 () Bool)

(assert (=> b!6109090 (= res!2534083 (not call!505489))))

(declare-fun b!6109091 () Bool)

(declare-fun res!2534084 () Bool)

(declare-fun e!3725324 () Bool)

(assert (=> b!6109091 (=> res!2534084 e!3725324)))

(assert (=> b!6109091 (= res!2534084 (not ((_ is ElementMatch!16057) (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 (_1!36339 (get!22188 lt!2329734)))))))))

(declare-fun e!3725321 () Bool)

(assert (=> b!6109091 (= e!3725321 e!3725324)))

(declare-fun b!6109092 () Bool)

(declare-fun res!2534086 () Bool)

(assert (=> b!6109092 (=> (not res!2534086) (not e!3725326))))

(assert (=> b!6109092 (= res!2534086 (isEmpty!36274 (tail!11721 (tail!11721 (_1!36339 (get!22188 lt!2329734))))))))

(declare-fun b!6109093 () Bool)

(declare-fun e!3725325 () Bool)

(assert (=> b!6109093 (= e!3725325 (not (= (head!12636 (tail!11721 (_1!36339 (get!22188 lt!2329734)))) (c!1096851 (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 (_1!36339 (get!22188 lt!2329734))))))))))

(declare-fun b!6109094 () Bool)

(assert (=> b!6109094 (= e!3725326 (= (head!12636 (tail!11721 (_1!36339 (get!22188 lt!2329734)))) (c!1096851 (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 (_1!36339 (get!22188 lt!2329734)))))))))

(declare-fun b!6109095 () Bool)

(declare-fun res!2534081 () Bool)

(assert (=> b!6109095 (=> res!2534081 e!3725325)))

(assert (=> b!6109095 (= res!2534081 (not (isEmpty!36274 (tail!11721 (tail!11721 (_1!36339 (get!22188 lt!2329734)))))))))

(declare-fun b!6109097 () Bool)

(declare-fun e!3725322 () Bool)

(assert (=> b!6109097 (= e!3725322 e!3725325)))

(declare-fun res!2534085 () Bool)

(assert (=> b!6109097 (=> res!2534085 e!3725325)))

(assert (=> b!6109097 (= res!2534085 call!505489)))

(declare-fun b!6109098 () Bool)

(assert (=> b!6109098 (= e!3725324 e!3725322)))

(declare-fun res!2534079 () Bool)

(assert (=> b!6109098 (=> (not res!2534079) (not e!3725322))))

(declare-fun lt!2329885 () Bool)

(assert (=> b!6109098 (= res!2534079 (not lt!2329885))))

(declare-fun b!6109099 () Bool)

(declare-fun e!3725323 () Bool)

(assert (=> b!6109099 (= e!3725323 e!3725321)))

(declare-fun c!1097586 () Bool)

(assert (=> b!6109099 (= c!1097586 ((_ is EmptyLang!16057) (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 (_1!36339 (get!22188 lt!2329734))))))))

(declare-fun b!6109100 () Bool)

(declare-fun e!3725320 () Bool)

(assert (=> b!6109100 (= e!3725320 (matchR!8240 (derivativeStep!4778 (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 (_1!36339 (get!22188 lt!2329734)))) (head!12636 (tail!11721 (_1!36339 (get!22188 lt!2329734))))) (tail!11721 (tail!11721 (_1!36339 (get!22188 lt!2329734))))))))

(declare-fun b!6109101 () Bool)

(assert (=> b!6109101 (= e!3725320 (nullable!6050 (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 (_1!36339 (get!22188 lt!2329734))))))))

(declare-fun b!6109102 () Bool)

(assert (=> b!6109102 (= e!3725321 (not lt!2329885))))

(declare-fun b!6109103 () Bool)

(declare-fun res!2534082 () Bool)

(assert (=> b!6109103 (=> res!2534082 e!3725324)))

(assert (=> b!6109103 (= res!2534082 e!3725326)))

(declare-fun res!2534080 () Bool)

(assert (=> b!6109103 (=> (not res!2534080) (not e!3725326))))

(assert (=> b!6109103 (= res!2534080 lt!2329885)))

(declare-fun bm!505484 () Bool)

(assert (=> bm!505484 (= call!505489 (isEmpty!36274 (tail!11721 (_1!36339 (get!22188 lt!2329734)))))))

(declare-fun b!6109096 () Bool)

(assert (=> b!6109096 (= e!3725323 (= lt!2329885 call!505489))))

(declare-fun d!1914694 () Bool)

(assert (=> d!1914694 e!3725323))

(declare-fun c!1097587 () Bool)

(assert (=> d!1914694 (= c!1097587 ((_ is EmptyExpr!16057) (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 (_1!36339 (get!22188 lt!2329734))))))))

(assert (=> d!1914694 (= lt!2329885 e!3725320)))

(declare-fun c!1097585 () Bool)

(assert (=> d!1914694 (= c!1097585 (isEmpty!36274 (tail!11721 (_1!36339 (get!22188 lt!2329734)))))))

(assert (=> d!1914694 (validRegex!7793 (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 (_1!36339 (get!22188 lt!2329734)))))))

(assert (=> d!1914694 (= (matchR!8240 (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 (_1!36339 (get!22188 lt!2329734)))) (tail!11721 (_1!36339 (get!22188 lt!2329734)))) lt!2329885)))

(assert (= (and d!1914694 c!1097585) b!6109101))

(assert (= (and d!1914694 (not c!1097585)) b!6109100))

(assert (= (and d!1914694 c!1097587) b!6109096))

(assert (= (and d!1914694 (not c!1097587)) b!6109099))

(assert (= (and b!6109099 c!1097586) b!6109102))

(assert (= (and b!6109099 (not c!1097586)) b!6109091))

(assert (= (and b!6109091 (not res!2534084)) b!6109103))

(assert (= (and b!6109103 res!2534080) b!6109090))

(assert (= (and b!6109090 res!2534083) b!6109092))

(assert (= (and b!6109092 res!2534086) b!6109094))

(assert (= (and b!6109103 (not res!2534082)) b!6109098))

(assert (= (and b!6109098 res!2534079) b!6109097))

(assert (= (and b!6109097 (not res!2534085)) b!6109095))

(assert (= (and b!6109095 (not res!2534081)) b!6109093))

(assert (= (or b!6109096 b!6109090 b!6109097) bm!505484))

(assert (=> b!6109093 m!6957728))

(declare-fun m!6959166 () Bool)

(assert (=> b!6109093 m!6959166))

(assert (=> b!6109094 m!6957728))

(assert (=> b!6109094 m!6959166))

(assert (=> bm!505484 m!6957728))

(assert (=> bm!505484 m!6957732))

(assert (=> b!6109100 m!6957728))

(assert (=> b!6109100 m!6959166))

(assert (=> b!6109100 m!6957726))

(assert (=> b!6109100 m!6959166))

(declare-fun m!6959168 () Bool)

(assert (=> b!6109100 m!6959168))

(assert (=> b!6109100 m!6957728))

(declare-fun m!6959170 () Bool)

(assert (=> b!6109100 m!6959170))

(assert (=> b!6109100 m!6959168))

(assert (=> b!6109100 m!6959170))

(declare-fun m!6959172 () Bool)

(assert (=> b!6109100 m!6959172))

(assert (=> b!6109092 m!6957728))

(assert (=> b!6109092 m!6959170))

(assert (=> b!6109092 m!6959170))

(declare-fun m!6959174 () Bool)

(assert (=> b!6109092 m!6959174))

(assert (=> b!6109095 m!6957728))

(assert (=> b!6109095 m!6959170))

(assert (=> b!6109095 m!6959170))

(assert (=> b!6109095 m!6959174))

(assert (=> b!6109101 m!6957726))

(declare-fun m!6959176 () Bool)

(assert (=> b!6109101 m!6959176))

(assert (=> d!1914694 m!6957728))

(assert (=> d!1914694 m!6957732))

(assert (=> d!1914694 m!6957726))

(declare-fun m!6959178 () Bool)

(assert (=> d!1914694 m!6959178))

(assert (=> b!6107030 d!1914694))

(declare-fun b!6109104 () Bool)

(declare-fun e!3725331 () Regex!16057)

(declare-fun call!505493 () Regex!16057)

(assert (=> b!6109104 (= e!3725331 (Union!16057 (Concat!24902 call!505493 (regTwo!32626 (regOne!32626 r!7292))) EmptyLang!16057))))

(declare-fun d!1914696 () Bool)

(declare-fun lt!2329886 () Regex!16057)

(assert (=> d!1914696 (validRegex!7793 lt!2329886)))

(declare-fun e!3725330 () Regex!16057)

(assert (=> d!1914696 (= lt!2329886 e!3725330)))

(declare-fun c!1097588 () Bool)

(assert (=> d!1914696 (= c!1097588 (or ((_ is EmptyExpr!16057) (regOne!32626 r!7292)) ((_ is EmptyLang!16057) (regOne!32626 r!7292))))))

(assert (=> d!1914696 (validRegex!7793 (regOne!32626 r!7292))))

(assert (=> d!1914696 (= (derivativeStep!4778 (regOne!32626 r!7292) (head!12636 (_1!36339 (get!22188 lt!2329734)))) lt!2329886)))

(declare-fun bm!505485 () Bool)

(declare-fun call!505491 () Regex!16057)

(declare-fun call!505492 () Regex!16057)

(assert (=> bm!505485 (= call!505491 call!505492)))

(declare-fun bm!505486 () Bool)

(assert (=> bm!505486 (= call!505493 call!505491)))

(declare-fun c!1097592 () Bool)

(declare-fun bm!505487 () Bool)

(declare-fun call!505490 () Regex!16057)

(assert (=> bm!505487 (= call!505490 (derivativeStep!4778 (ite c!1097592 (regOne!32627 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292))) (head!12636 (_1!36339 (get!22188 lt!2329734)))))))

(declare-fun bm!505488 () Bool)

(declare-fun c!1097589 () Bool)

(declare-fun c!1097590 () Bool)

(assert (=> bm!505488 (= call!505492 (derivativeStep!4778 (ite c!1097592 (regTwo!32627 (regOne!32626 r!7292)) (ite c!1097590 (reg!16386 (regOne!32626 r!7292)) (ite c!1097589 (regTwo!32626 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292))))) (head!12636 (_1!36339 (get!22188 lt!2329734)))))))

(declare-fun b!6109105 () Bool)

(declare-fun e!3725328 () Regex!16057)

(declare-fun e!3725329 () Regex!16057)

(assert (=> b!6109105 (= e!3725328 e!3725329)))

(assert (=> b!6109105 (= c!1097590 ((_ is Star!16057) (regOne!32626 r!7292)))))

(declare-fun b!6109106 () Bool)

(assert (=> b!6109106 (= e!3725329 (Concat!24902 call!505491 (regOne!32626 r!7292)))))

(declare-fun b!6109107 () Bool)

(assert (=> b!6109107 (= c!1097589 (nullable!6050 (regOne!32626 (regOne!32626 r!7292))))))

(assert (=> b!6109107 (= e!3725329 e!3725331)))

(declare-fun b!6109108 () Bool)

(declare-fun e!3725327 () Regex!16057)

(assert (=> b!6109108 (= e!3725327 (ite (= (head!12636 (_1!36339 (get!22188 lt!2329734))) (c!1096851 (regOne!32626 r!7292))) EmptyExpr!16057 EmptyLang!16057))))

(declare-fun b!6109109 () Bool)

(assert (=> b!6109109 (= e!3725330 EmptyLang!16057)))

(declare-fun b!6109110 () Bool)

(assert (=> b!6109110 (= e!3725330 e!3725327)))

(declare-fun c!1097591 () Bool)

(assert (=> b!6109110 (= c!1097591 ((_ is ElementMatch!16057) (regOne!32626 r!7292)))))

(declare-fun b!6109111 () Bool)

(assert (=> b!6109111 (= e!3725328 (Union!16057 call!505490 call!505492))))

(declare-fun b!6109112 () Bool)

(assert (=> b!6109112 (= c!1097592 ((_ is Union!16057) (regOne!32626 r!7292)))))

(assert (=> b!6109112 (= e!3725327 e!3725328)))

(declare-fun b!6109113 () Bool)

(assert (=> b!6109113 (= e!3725331 (Union!16057 (Concat!24902 call!505490 (regTwo!32626 (regOne!32626 r!7292))) call!505493))))

(assert (= (and d!1914696 c!1097588) b!6109109))

(assert (= (and d!1914696 (not c!1097588)) b!6109110))

(assert (= (and b!6109110 c!1097591) b!6109108))

(assert (= (and b!6109110 (not c!1097591)) b!6109112))

(assert (= (and b!6109112 c!1097592) b!6109111))

(assert (= (and b!6109112 (not c!1097592)) b!6109105))

(assert (= (and b!6109105 c!1097590) b!6109106))

(assert (= (and b!6109105 (not c!1097590)) b!6109107))

(assert (= (and b!6109107 c!1097589) b!6109113))

(assert (= (and b!6109107 (not c!1097589)) b!6109104))

(assert (= (or b!6109113 b!6109104) bm!505486))

(assert (= (or b!6109106 bm!505486) bm!505485))

(assert (= (or b!6109111 bm!505485) bm!505488))

(assert (= (or b!6109111 b!6109113) bm!505487))

(declare-fun m!6959180 () Bool)

(assert (=> d!1914696 m!6959180))

(assert (=> d!1914696 m!6956996))

(assert (=> bm!505487 m!6957722))

(declare-fun m!6959182 () Bool)

(assert (=> bm!505487 m!6959182))

(assert (=> bm!505488 m!6957722))

(declare-fun m!6959184 () Bool)

(assert (=> bm!505488 m!6959184))

(declare-fun m!6959186 () Bool)

(assert (=> b!6109107 m!6959186))

(assert (=> b!6107030 d!1914696))

(assert (=> b!6107030 d!1914618))

(assert (=> b!6107030 d!1914502))

(declare-fun e!3725336 () Regex!16057)

(declare-fun b!6109114 () Bool)

(declare-fun call!505497 () Regex!16057)

(assert (=> b!6109114 (= e!3725336 (Union!16057 (Concat!24902 call!505497 (regTwo!32626 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292)))))) EmptyLang!16057))))

(declare-fun d!1914698 () Bool)

(declare-fun lt!2329887 () Regex!16057)

(assert (=> d!1914698 (validRegex!7793 lt!2329887)))

(declare-fun e!3725335 () Regex!16057)

(assert (=> d!1914698 (= lt!2329887 e!3725335)))

(declare-fun c!1097593 () Bool)

(assert (=> d!1914698 (= c!1097593 (or ((_ is EmptyExpr!16057) (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292))))) ((_ is EmptyLang!16057) (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292)))))))))

(assert (=> d!1914698 (validRegex!7793 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292)))))))

(assert (=> d!1914698 (= (derivativeStep!4778 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292)))) (head!12636 s!2326)) lt!2329887)))

(declare-fun bm!505489 () Bool)

(declare-fun call!505495 () Regex!16057)

(declare-fun call!505496 () Regex!16057)

(assert (=> bm!505489 (= call!505495 call!505496)))

(declare-fun bm!505490 () Bool)

(assert (=> bm!505490 (= call!505497 call!505495)))

(declare-fun call!505494 () Regex!16057)

(declare-fun bm!505491 () Bool)

(declare-fun c!1097597 () Bool)

(assert (=> bm!505491 (= call!505494 (derivativeStep!4778 (ite c!1097597 (regOne!32627 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292))))) (regOne!32626 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292)))))) (head!12636 s!2326)))))

(declare-fun bm!505492 () Bool)

(declare-fun c!1097595 () Bool)

(declare-fun c!1097594 () Bool)

(assert (=> bm!505492 (= call!505496 (derivativeStep!4778 (ite c!1097597 (regTwo!32627 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292))))) (ite c!1097595 (reg!16386 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292))))) (ite c!1097594 (regTwo!32626 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292))))) (regOne!32626 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292)))))))) (head!12636 s!2326)))))

(declare-fun b!6109115 () Bool)

(declare-fun e!3725333 () Regex!16057)

(declare-fun e!3725334 () Regex!16057)

(assert (=> b!6109115 (= e!3725333 e!3725334)))

(assert (=> b!6109115 (= c!1097595 ((_ is Star!16057) (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292))))))))

(declare-fun b!6109116 () Bool)

(assert (=> b!6109116 (= e!3725334 (Concat!24902 call!505495 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292))))))))

(declare-fun b!6109117 () Bool)

(assert (=> b!6109117 (= c!1097594 (nullable!6050 (regOne!32626 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292)))))))))

(assert (=> b!6109117 (= e!3725334 e!3725336)))

(declare-fun e!3725332 () Regex!16057)

(declare-fun b!6109118 () Bool)

(assert (=> b!6109118 (= e!3725332 (ite (= (head!12636 s!2326) (c!1096851 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292)))))) EmptyExpr!16057 EmptyLang!16057))))

(declare-fun b!6109119 () Bool)

(assert (=> b!6109119 (= e!3725335 EmptyLang!16057)))

(declare-fun b!6109120 () Bool)

(assert (=> b!6109120 (= e!3725335 e!3725332)))

(declare-fun c!1097596 () Bool)

(assert (=> b!6109120 (= c!1097596 ((_ is ElementMatch!16057) (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292))))))))

(declare-fun b!6109121 () Bool)

(assert (=> b!6109121 (= e!3725333 (Union!16057 call!505494 call!505496))))

(declare-fun b!6109122 () Bool)

(assert (=> b!6109122 (= c!1097597 ((_ is Union!16057) (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292))))))))

(assert (=> b!6109122 (= e!3725332 e!3725333)))

(declare-fun b!6109123 () Bool)

(assert (=> b!6109123 (= e!3725336 (Union!16057 (Concat!24902 call!505494 (regTwo!32626 (ite c!1097131 (regTwo!32627 r!7292) (ite c!1097129 (reg!16386 r!7292) (ite c!1097128 (regTwo!32626 r!7292) (regOne!32626 r!7292)))))) call!505497))))

(assert (= (and d!1914698 c!1097593) b!6109119))

(assert (= (and d!1914698 (not c!1097593)) b!6109120))

(assert (= (and b!6109120 c!1097596) b!6109118))

(assert (= (and b!6109120 (not c!1097596)) b!6109122))

(assert (= (and b!6109122 c!1097597) b!6109121))

(assert (= (and b!6109122 (not c!1097597)) b!6109115))

(assert (= (and b!6109115 c!1097595) b!6109116))

(assert (= (and b!6109115 (not c!1097595)) b!6109117))

(assert (= (and b!6109117 c!1097594) b!6109123))

(assert (= (and b!6109117 (not c!1097594)) b!6109114))

(assert (= (or b!6109123 b!6109114) bm!505490))

(assert (= (or b!6109116 bm!505490) bm!505489))

(assert (= (or b!6109121 bm!505489) bm!505492))

(assert (= (or b!6109121 b!6109123) bm!505491))

(declare-fun m!6959188 () Bool)

(assert (=> d!1914698 m!6959188))

(declare-fun m!6959190 () Bool)

(assert (=> d!1914698 m!6959190))

(assert (=> bm!505491 m!6957088))

(declare-fun m!6959192 () Bool)

(assert (=> bm!505491 m!6959192))

(assert (=> bm!505492 m!6957088))

(declare-fun m!6959194 () Bool)

(assert (=> bm!505492 m!6959194))

(declare-fun m!6959196 () Bool)

(assert (=> b!6109117 m!6959196))

(assert (=> bm!505122 d!1914698))

(declare-fun d!1914700 () Bool)

(declare-fun res!2534087 () Bool)

(declare-fun e!3725337 () Bool)

(assert (=> d!1914700 (=> res!2534087 e!3725337)))

(assert (=> d!1914700 (= res!2534087 ((_ is Nil!64346) (t!377923 (unfocusZipperList!1478 zl!343))))))

(assert (=> d!1914700 (= (forall!15178 (t!377923 (unfocusZipperList!1478 zl!343)) lambda!332688) e!3725337)))

(declare-fun b!6109124 () Bool)

(declare-fun e!3725338 () Bool)

(assert (=> b!6109124 (= e!3725337 e!3725338)))

(declare-fun res!2534088 () Bool)

(assert (=> b!6109124 (=> (not res!2534088) (not e!3725338))))

(assert (=> b!6109124 (= res!2534088 (dynLambda!25338 lambda!332688 (h!70794 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(declare-fun b!6109125 () Bool)

(assert (=> b!6109125 (= e!3725338 (forall!15178 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343))) lambda!332688))))

(assert (= (and d!1914700 (not res!2534087)) b!6109124))

(assert (= (and b!6109124 res!2534088) b!6109125))

(declare-fun b_lambda!232703 () Bool)

(assert (=> (not b_lambda!232703) (not b!6109124)))

(declare-fun m!6959198 () Bool)

(assert (=> b!6109124 m!6959198))

(declare-fun m!6959200 () Bool)

(assert (=> b!6109125 m!6959200))

(assert (=> b!6106964 d!1914700))

(assert (=> b!6107111 d!1914378))

(declare-fun d!1914702 () Bool)

(assert (=> d!1914702 true))

(assert (=> d!1914702 true))

(declare-fun res!2534089 () Bool)

(assert (=> d!1914702 (= (choose!45394 lambda!332710) res!2534089)))

(assert (=> d!1913936 d!1914702))

(assert (=> bm!505146 d!1914610))

(assert (=> b!6106908 d!1914592))

(declare-fun b!6109126 () Bool)

(declare-fun e!3725344 () (InoxSet Context!10882))

(declare-fun e!3725343 () (InoxSet Context!10882))

(assert (=> b!6109126 (= e!3725344 e!3725343)))

(declare-fun c!1097599 () Bool)

(assert (=> b!6109126 (= c!1097599 ((_ is Union!16057) (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))))

(declare-fun call!505498 () List!64470)

(declare-fun bm!505493 () Bool)

(declare-fun c!1097601 () Bool)

(declare-fun c!1097602 () Bool)

(assert (=> bm!505493 (= call!505498 ($colon$colon!1934 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))) (ite (or c!1097601 c!1097602) (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))))

(declare-fun b!6109127 () Bool)

(declare-fun e!3725340 () (InoxSet Context!10882))

(declare-fun call!505501 () (InoxSet Context!10882))

(assert (=> b!6109127 (= e!3725340 call!505501)))

(declare-fun bm!505494 () Bool)

(declare-fun call!505499 () (InoxSet Context!10882))

(declare-fun call!505503 () (InoxSet Context!10882))

(assert (=> bm!505494 (= call!505499 call!505503)))

(declare-fun b!6109128 () Bool)

(declare-fun call!505502 () (InoxSet Context!10882))

(assert (=> b!6109128 (= e!3725343 ((_ map or) call!505503 call!505502))))

(declare-fun bm!505495 () Bool)

(assert (=> bm!505495 (= call!505501 call!505499)))

(declare-fun b!6109129 () Bool)

(declare-fun e!3725341 () (InoxSet Context!10882))

(assert (=> b!6109129 (= e!3725341 ((_ map or) call!505502 call!505499))))

(declare-fun b!6109130 () Bool)

(declare-fun e!3725339 () Bool)

(assert (=> b!6109130 (= e!3725339 (nullable!6050 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))))

(declare-fun d!1914704 () Bool)

(declare-fun c!1097598 () Bool)

(assert (=> d!1914704 (= c!1097598 (and ((_ is ElementMatch!16057) (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (= (c!1096851 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (h!70796 s!2326))))))

(assert (=> d!1914704 (= (derivationStepZipperDown!1305 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (h!70796 s!2326)) e!3725344)))

(declare-fun bm!505496 () Bool)

(assert (=> bm!505496 (= call!505502 (derivationStepZipperDown!1305 (ite c!1097599 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))) (ite c!1097599 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (Context!10883 call!505498)) (h!70796 s!2326)))))

(declare-fun b!6109131 () Bool)

(assert (=> b!6109131 (= e!3725344 (store ((as const (Array Context!10882 Bool)) false) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) true))))

(declare-fun b!6109132 () Bool)

(assert (=> b!6109132 (= c!1097601 e!3725339)))

(declare-fun res!2534090 () Bool)

(assert (=> b!6109132 (=> (not res!2534090) (not e!3725339))))

(assert (=> b!6109132 (= res!2534090 ((_ is Concat!24902) (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))))

(assert (=> b!6109132 (= e!3725343 e!3725341)))

(declare-fun b!6109133 () Bool)

(declare-fun c!1097600 () Bool)

(assert (=> b!6109133 (= c!1097600 ((_ is Star!16057) (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))))

(declare-fun e!3725342 () (InoxSet Context!10882))

(assert (=> b!6109133 (= e!3725340 e!3725342)))

(declare-fun bm!505497 () Bool)

(declare-fun call!505500 () List!64470)

(assert (=> bm!505497 (= call!505503 (derivationStepZipperDown!1305 (ite c!1097599 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (ite c!1097601 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (ite c!1097602 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343)))))))))))))) (ite (or c!1097599 c!1097601) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))) (Context!10883 call!505500)) (h!70796 s!2326)))))

(declare-fun bm!505498 () Bool)

(assert (=> bm!505498 (= call!505500 call!505498)))

(declare-fun b!6109134 () Bool)

(assert (=> b!6109134 (= e!3725342 call!505501)))

(declare-fun b!6109135 () Bool)

(assert (=> b!6109135 (= e!3725341 e!3725340)))

(assert (=> b!6109135 (= c!1097602 ((_ is Concat!24902) (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (Cons!64346 (h!70794 (exprs!5941 (h!70795 zl!343))) (t!377923 (exprs!5941 (h!70795 zl!343))))))))))))))

(declare-fun b!6109136 () Bool)

(assert (=> b!6109136 (= e!3725342 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1914704 c!1097598) b!6109131))

(assert (= (and d!1914704 (not c!1097598)) b!6109126))

(assert (= (and b!6109126 c!1097599) b!6109128))

(assert (= (and b!6109126 (not c!1097599)) b!6109132))

(assert (= (and b!6109132 res!2534090) b!6109130))

(assert (= (and b!6109132 c!1097601) b!6109129))

(assert (= (and b!6109132 (not c!1097601)) b!6109135))

(assert (= (and b!6109135 c!1097602) b!6109127))

(assert (= (and b!6109135 (not c!1097602)) b!6109133))

(assert (= (and b!6109133 c!1097600) b!6109134))

(assert (= (and b!6109133 (not c!1097600)) b!6109136))

(assert (= (or b!6109127 b!6109134) bm!505498))

(assert (= (or b!6109127 b!6109134) bm!505495))

(assert (= (or b!6109129 bm!505498) bm!505493))

(assert (= (or b!6109129 bm!505495) bm!505494))

(assert (= (or b!6109128 b!6109129) bm!505496))

(assert (= (or b!6109128 bm!505494) bm!505497))

(declare-fun m!6959202 () Bool)

(assert (=> b!6109130 m!6959202))

(declare-fun m!6959204 () Bool)

(assert (=> bm!505493 m!6959204))

(declare-fun m!6959206 () Bool)

(assert (=> bm!505496 m!6959206))

(declare-fun m!6959208 () Bool)

(assert (=> b!6109131 m!6959208))

(declare-fun m!6959210 () Bool)

(assert (=> bm!505497 m!6959210))

(assert (=> bm!505123 d!1914704))

(declare-fun d!1914706 () Bool)

(assert (=> d!1914706 true))

(assert (=> d!1914706 true))

(declare-fun res!2534091 () Bool)

(assert (=> d!1914706 (= (choose!45394 (ite c!1096973 lambda!332725 lambda!332726)) res!2534091)))

(assert (=> d!1914030 d!1914706))

(declare-fun d!1914708 () Bool)

(assert (=> d!1914708 (= (nullable!6050 (derivativeStep!4778 r!7292 (head!12636 s!2326))) (nullableFct!2014 (derivativeStep!4778 r!7292 (head!12636 s!2326))))))

(declare-fun bs!1516651 () Bool)

(assert (= bs!1516651 d!1914708))

(assert (=> bs!1516651 m!6957090))

(declare-fun m!6959212 () Bool)

(assert (=> bs!1516651 m!6959212))

(assert (=> b!6106833 d!1914708))

(declare-fun b!6109137 () Bool)

(declare-fun e!3725350 () Bool)

(declare-fun e!3725351 () Bool)

(assert (=> b!6109137 (= e!3725350 e!3725351)))

(declare-fun c!1097603 () Bool)

(assert (=> b!6109137 (= c!1097603 ((_ is Union!16057) (h!70794 (unfocusZipperList!1478 zl!343))))))

(declare-fun b!6109138 () Bool)

(declare-fun e!3725349 () Bool)

(declare-fun call!505505 () Bool)

(assert (=> b!6109138 (= e!3725349 call!505505)))

(declare-fun b!6109139 () Bool)

(declare-fun e!3725347 () Bool)

(assert (=> b!6109139 (= e!3725347 e!3725350)))

(declare-fun c!1097604 () Bool)

(assert (=> b!6109139 (= c!1097604 ((_ is Star!16057) (h!70794 (unfocusZipperList!1478 zl!343))))))

(declare-fun bm!505499 () Bool)

(declare-fun call!505504 () Bool)

(assert (=> bm!505499 (= call!505505 call!505504)))

(declare-fun b!6109140 () Bool)

(declare-fun res!2534094 () Bool)

(declare-fun e!3725346 () Bool)

(assert (=> b!6109140 (=> res!2534094 e!3725346)))

(assert (=> b!6109140 (= res!2534094 (not ((_ is Concat!24902) (h!70794 (unfocusZipperList!1478 zl!343)))))))

(assert (=> b!6109140 (= e!3725351 e!3725346)))

(declare-fun b!6109141 () Bool)

(declare-fun e!3725348 () Bool)

(assert (=> b!6109141 (= e!3725348 call!505505)))

(declare-fun bm!505500 () Bool)

(assert (=> bm!505500 (= call!505504 (validRegex!7793 (ite c!1097604 (reg!16386 (h!70794 (unfocusZipperList!1478 zl!343))) (ite c!1097603 (regTwo!32627 (h!70794 (unfocusZipperList!1478 zl!343))) (regTwo!32626 (h!70794 (unfocusZipperList!1478 zl!343)))))))))

(declare-fun b!6109142 () Bool)

(declare-fun e!3725345 () Bool)

(assert (=> b!6109142 (= e!3725350 e!3725345)))

(declare-fun res!2534095 () Bool)

(assert (=> b!6109142 (= res!2534095 (not (nullable!6050 (reg!16386 (h!70794 (unfocusZipperList!1478 zl!343))))))))

(assert (=> b!6109142 (=> (not res!2534095) (not e!3725345))))

(declare-fun b!6109143 () Bool)

(assert (=> b!6109143 (= e!3725346 e!3725348)))

(declare-fun res!2534096 () Bool)

(assert (=> b!6109143 (=> (not res!2534096) (not e!3725348))))

(declare-fun call!505506 () Bool)

(assert (=> b!6109143 (= res!2534096 call!505506)))

(declare-fun b!6109144 () Bool)

(assert (=> b!6109144 (= e!3725345 call!505504)))

(declare-fun b!6109145 () Bool)

(declare-fun res!2534092 () Bool)

(assert (=> b!6109145 (=> (not res!2534092) (not e!3725349))))

(assert (=> b!6109145 (= res!2534092 call!505506)))

(assert (=> b!6109145 (= e!3725351 e!3725349)))

(declare-fun bm!505501 () Bool)

(assert (=> bm!505501 (= call!505506 (validRegex!7793 (ite c!1097603 (regOne!32627 (h!70794 (unfocusZipperList!1478 zl!343))) (regOne!32626 (h!70794 (unfocusZipperList!1478 zl!343))))))))

(declare-fun d!1914710 () Bool)

(declare-fun res!2534093 () Bool)

(assert (=> d!1914710 (=> res!2534093 e!3725347)))

(assert (=> d!1914710 (= res!2534093 ((_ is ElementMatch!16057) (h!70794 (unfocusZipperList!1478 zl!343))))))

(assert (=> d!1914710 (= (validRegex!7793 (h!70794 (unfocusZipperList!1478 zl!343))) e!3725347)))

(assert (= (and d!1914710 (not res!2534093)) b!6109139))

(assert (= (and b!6109139 c!1097604) b!6109142))

(assert (= (and b!6109139 (not c!1097604)) b!6109137))

(assert (= (and b!6109142 res!2534095) b!6109144))

(assert (= (and b!6109137 c!1097603) b!6109145))

(assert (= (and b!6109137 (not c!1097603)) b!6109140))

(assert (= (and b!6109145 res!2534092) b!6109138))

(assert (= (and b!6109140 (not res!2534094)) b!6109143))

(assert (= (and b!6109143 res!2534096) b!6109141))

(assert (= (or b!6109138 b!6109141) bm!505499))

(assert (= (or b!6109145 b!6109143) bm!505501))

(assert (= (or b!6109144 bm!505499) bm!505500))

(declare-fun m!6959214 () Bool)

(assert (=> bm!505500 m!6959214))

(declare-fun m!6959216 () Bool)

(assert (=> b!6109142 m!6959216))

(declare-fun m!6959218 () Bool)

(assert (=> bm!505501 m!6959218))

(assert (=> bs!1516225 d!1914710))

(declare-fun d!1914712 () Bool)

(assert (=> d!1914712 (= (Exists!3127 lambda!332762) (choose!45394 lambda!332762))))

(declare-fun bs!1516652 () Bool)

(assert (= bs!1516652 d!1914712))

(declare-fun m!6959220 () Bool)

(assert (=> bs!1516652 m!6959220))

(assert (=> d!1914040 d!1914712))

(declare-fun d!1914714 () Bool)

(assert (=> d!1914714 (= (Exists!3127 lambda!332763) (choose!45394 lambda!332763))))

(declare-fun bs!1516653 () Bool)

(assert (= bs!1516653 d!1914714))

(declare-fun m!6959222 () Bool)

(assert (=> bs!1516653 m!6959222))

(assert (=> d!1914040 d!1914714))

(assert (=> d!1913912 d!1913924))

(declare-fun b!6109146 () Bool)

(declare-fun e!3725357 () Bool)

(declare-fun e!3725358 () Bool)

(assert (=> b!6109146 (= e!3725357 e!3725358)))

(declare-fun c!1097605 () Bool)

(assert (=> b!6109146 (= c!1097605 ((_ is Union!16057) (regTwo!32626 r!7292)))))

(declare-fun b!6109147 () Bool)

(declare-fun e!3725356 () Bool)

(declare-fun call!505508 () Bool)

(assert (=> b!6109147 (= e!3725356 call!505508)))

(declare-fun b!6109148 () Bool)

(declare-fun e!3725354 () Bool)

(assert (=> b!6109148 (= e!3725354 e!3725357)))

(declare-fun c!1097606 () Bool)

(assert (=> b!6109148 (= c!1097606 ((_ is Star!16057) (regTwo!32626 r!7292)))))

(declare-fun bm!505502 () Bool)

(declare-fun call!505507 () Bool)

(assert (=> bm!505502 (= call!505508 call!505507)))

(declare-fun b!6109149 () Bool)

(declare-fun res!2534099 () Bool)

(declare-fun e!3725353 () Bool)

(assert (=> b!6109149 (=> res!2534099 e!3725353)))

(assert (=> b!6109149 (= res!2534099 (not ((_ is Concat!24902) (regTwo!32626 r!7292))))))

(assert (=> b!6109149 (= e!3725358 e!3725353)))

(declare-fun b!6109150 () Bool)

(declare-fun e!3725355 () Bool)

(assert (=> b!6109150 (= e!3725355 call!505508)))

(declare-fun bm!505503 () Bool)

(assert (=> bm!505503 (= call!505507 (validRegex!7793 (ite c!1097606 (reg!16386 (regTwo!32626 r!7292)) (ite c!1097605 (regTwo!32627 (regTwo!32626 r!7292)) (regTwo!32626 (regTwo!32626 r!7292))))))))

(declare-fun b!6109151 () Bool)

(declare-fun e!3725352 () Bool)

(assert (=> b!6109151 (= e!3725357 e!3725352)))

(declare-fun res!2534100 () Bool)

(assert (=> b!6109151 (= res!2534100 (not (nullable!6050 (reg!16386 (regTwo!32626 r!7292)))))))

(assert (=> b!6109151 (=> (not res!2534100) (not e!3725352))))

(declare-fun b!6109152 () Bool)

(assert (=> b!6109152 (= e!3725353 e!3725355)))

(declare-fun res!2534101 () Bool)

(assert (=> b!6109152 (=> (not res!2534101) (not e!3725355))))

(declare-fun call!505509 () Bool)

(assert (=> b!6109152 (= res!2534101 call!505509)))

(declare-fun b!6109153 () Bool)

(assert (=> b!6109153 (= e!3725352 call!505507)))

(declare-fun b!6109154 () Bool)

(declare-fun res!2534097 () Bool)

(assert (=> b!6109154 (=> (not res!2534097) (not e!3725356))))

(assert (=> b!6109154 (= res!2534097 call!505509)))

(assert (=> b!6109154 (= e!3725358 e!3725356)))

(declare-fun bm!505504 () Bool)

(assert (=> bm!505504 (= call!505509 (validRegex!7793 (ite c!1097605 (regOne!32627 (regTwo!32626 r!7292)) (regOne!32626 (regTwo!32626 r!7292)))))))

(declare-fun d!1914716 () Bool)

(declare-fun res!2534098 () Bool)

(assert (=> d!1914716 (=> res!2534098 e!3725354)))

(assert (=> d!1914716 (= res!2534098 ((_ is ElementMatch!16057) (regTwo!32626 r!7292)))))

(assert (=> d!1914716 (= (validRegex!7793 (regTwo!32626 r!7292)) e!3725354)))

(assert (= (and d!1914716 (not res!2534098)) b!6109148))

(assert (= (and b!6109148 c!1097606) b!6109151))

(assert (= (and b!6109148 (not c!1097606)) b!6109146))

(assert (= (and b!6109151 res!2534100) b!6109153))

(assert (= (and b!6109146 c!1097605) b!6109154))

(assert (= (and b!6109146 (not c!1097605)) b!6109149))

(assert (= (and b!6109154 res!2534097) b!6109147))

(assert (= (and b!6109149 (not res!2534099)) b!6109152))

(assert (= (and b!6109152 res!2534101) b!6109150))

(assert (= (or b!6109147 b!6109150) bm!505502))

(assert (= (or b!6109154 b!6109152) bm!505504))

(assert (= (or b!6109153 bm!505502) bm!505503))

(declare-fun m!6959224 () Bool)

(assert (=> bm!505503 m!6959224))

(declare-fun m!6959226 () Bool)

(assert (=> b!6109151 m!6959226))

(declare-fun m!6959228 () Bool)

(assert (=> bm!505504 m!6959228))

(assert (=> d!1913912 d!1914716))

(assert (=> d!1913938 d!1913728))

(assert (=> d!1913938 d!1913704))

(declare-fun d!1914718 () Bool)

(assert (=> d!1914718 (= (Exists!3127 lambda!332750) (choose!45394 lambda!332750))))

(declare-fun bs!1516654 () Bool)

(assert (= bs!1516654 d!1914718))

(declare-fun m!6959230 () Bool)

(assert (=> bs!1516654 m!6959230))

(assert (=> d!1913938 d!1914718))

(declare-fun bs!1516655 () Bool)

(declare-fun d!1914720 () Bool)

(assert (= bs!1516655 (and d!1914720 d!1913694)))

(declare-fun lambda!332793 () Int)

(assert (=> bs!1516655 (= lambda!332793 lambda!332695)))

(declare-fun bs!1516656 () Bool)

(assert (= bs!1516656 (and d!1914720 d!1914000)))

(assert (=> bs!1516656 (= lambda!332793 lambda!332756)))

(declare-fun bs!1516657 () Bool)

(assert (= bs!1516657 (and d!1914720 d!1913998)))

(assert (=> bs!1516657 (= lambda!332793 lambda!332755)))

(declare-fun bs!1516658 () Bool)

(assert (= bs!1516658 (and d!1914720 d!1914640)))

(assert (=> bs!1516658 (= lambda!332793 lambda!332790)))

(declare-fun bs!1516659 () Bool)

(assert (= bs!1516659 (and d!1914720 d!1914016)))

(assert (=> bs!1516659 (= lambda!332793 lambda!332757)))

(declare-fun bs!1516660 () Bool)

(assert (= bs!1516660 (and d!1914720 d!1913734)))

(assert (=> bs!1516660 (= lambda!332793 lambda!332720)))

(declare-fun bs!1516661 () Bool)

(assert (= bs!1516661 (and d!1914720 d!1914504)))

(assert (=> bs!1516661 (= lambda!332793 lambda!332783)))

(declare-fun bs!1516662 () Bool)

(assert (= bs!1516662 (and d!1914720 d!1913970)))

(assert (=> bs!1516662 (= lambda!332793 lambda!332752)))

(declare-fun bs!1516663 () Bool)

(assert (= bs!1516663 (and d!1914720 d!1914642)))

(assert (=> bs!1516663 (= lambda!332793 lambda!332791)))

(declare-fun bs!1516664 () Bool)

(assert (= bs!1516664 (and d!1914720 d!1914644)))

(assert (=> bs!1516664 (= lambda!332793 lambda!332792)))

(declare-fun bs!1516665 () Bool)

(assert (= bs!1516665 (and d!1914720 d!1913684)))

(assert (=> bs!1516665 (= lambda!332793 lambda!332688)))

(declare-fun bs!1516666 () Bool)

(assert (= bs!1516666 (and d!1914720 d!1913730)))

(assert (=> bs!1516666 (= lambda!332793 lambda!332719)))

(declare-fun bs!1516667 () Bool)

(assert (= bs!1516667 (and d!1914720 d!1913748)))

(assert (=> bs!1516667 (= lambda!332793 lambda!332729)))

(declare-fun bs!1516668 () Bool)

(assert (= bs!1516668 (and d!1914720 d!1913968)))

(assert (=> bs!1516668 (= lambda!332793 lambda!332751)))

(assert (=> d!1914720 (= (inv!83389 setElem!41268) (forall!15178 (exprs!5941 setElem!41268) lambda!332793))))

(declare-fun bs!1516669 () Bool)

(assert (= bs!1516669 d!1914720))

(declare-fun m!6959232 () Bool)

(assert (=> bs!1516669 m!6959232))

(assert (=> setNonEmpty!41268 d!1914720))

(declare-fun d!1914722 () Bool)

(declare-fun res!2534102 () Bool)

(declare-fun e!3725359 () Bool)

(assert (=> d!1914722 (=> res!2534102 e!3725359)))

(assert (=> d!1914722 (= res!2534102 ((_ is Nil!64346) (t!377923 (exprs!5941 (h!70795 zl!343)))))))

(assert (=> d!1914722 (= (forall!15178 (t!377923 (exprs!5941 (h!70795 zl!343))) lambda!332729) e!3725359)))

(declare-fun b!6109155 () Bool)

(declare-fun e!3725360 () Bool)

(assert (=> b!6109155 (= e!3725359 e!3725360)))

(declare-fun res!2534103 () Bool)

(assert (=> b!6109155 (=> (not res!2534103) (not e!3725360))))

(assert (=> b!6109155 (= res!2534103 (dynLambda!25338 lambda!332729 (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun b!6109156 () Bool)

(assert (=> b!6109156 (= e!3725360 (forall!15178 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343)))) lambda!332729))))

(assert (= (and d!1914722 (not res!2534102)) b!6109155))

(assert (= (and b!6109155 res!2534103) b!6109156))

(declare-fun b_lambda!232705 () Bool)

(assert (=> (not b_lambda!232705) (not b!6109155)))

(declare-fun m!6959234 () Bool)

(assert (=> b!6109155 m!6959234))

(declare-fun m!6959236 () Bool)

(assert (=> b!6109156 m!6959236))

(assert (=> b!6107106 d!1914722))

(declare-fun b!6109157 () Bool)

(declare-fun res!2534108 () Bool)

(declare-fun e!3725367 () Bool)

(assert (=> b!6109157 (=> (not res!2534108) (not e!3725367))))

(declare-fun call!505510 () Bool)

(assert (=> b!6109157 (= res!2534108 (not call!505510))))

(declare-fun b!6109158 () Bool)

(declare-fun res!2534109 () Bool)

(declare-fun e!3725365 () Bool)

(assert (=> b!6109158 (=> res!2534109 e!3725365)))

(assert (=> b!6109158 (= res!2534109 (not ((_ is ElementMatch!16057) (regTwo!32626 r!7292))))))

(declare-fun e!3725362 () Bool)

(assert (=> b!6109158 (= e!3725362 e!3725365)))

(declare-fun b!6109159 () Bool)

(declare-fun res!2534111 () Bool)

(assert (=> b!6109159 (=> (not res!2534111) (not e!3725367))))

(assert (=> b!6109159 (= res!2534111 (isEmpty!36274 (tail!11721 (_2!36339 (get!22188 lt!2329798)))))))

(declare-fun b!6109160 () Bool)

(declare-fun e!3725366 () Bool)

(assert (=> b!6109160 (= e!3725366 (not (= (head!12636 (_2!36339 (get!22188 lt!2329798))) (c!1096851 (regTwo!32626 r!7292)))))))

(declare-fun b!6109161 () Bool)

(assert (=> b!6109161 (= e!3725367 (= (head!12636 (_2!36339 (get!22188 lt!2329798))) (c!1096851 (regTwo!32626 r!7292))))))

(declare-fun b!6109162 () Bool)

(declare-fun res!2534106 () Bool)

(assert (=> b!6109162 (=> res!2534106 e!3725366)))

(assert (=> b!6109162 (= res!2534106 (not (isEmpty!36274 (tail!11721 (_2!36339 (get!22188 lt!2329798))))))))

(declare-fun b!6109164 () Bool)

(declare-fun e!3725363 () Bool)

(assert (=> b!6109164 (= e!3725363 e!3725366)))

(declare-fun res!2534110 () Bool)

(assert (=> b!6109164 (=> res!2534110 e!3725366)))

(assert (=> b!6109164 (= res!2534110 call!505510)))

(declare-fun b!6109165 () Bool)

(assert (=> b!6109165 (= e!3725365 e!3725363)))

(declare-fun res!2534104 () Bool)

(assert (=> b!6109165 (=> (not res!2534104) (not e!3725363))))

(declare-fun lt!2329888 () Bool)

(assert (=> b!6109165 (= res!2534104 (not lt!2329888))))

(declare-fun b!6109166 () Bool)

(declare-fun e!3725364 () Bool)

(assert (=> b!6109166 (= e!3725364 e!3725362)))

(declare-fun c!1097608 () Bool)

(assert (=> b!6109166 (= c!1097608 ((_ is EmptyLang!16057) (regTwo!32626 r!7292)))))

(declare-fun b!6109167 () Bool)

(declare-fun e!3725361 () Bool)

(assert (=> b!6109167 (= e!3725361 (matchR!8240 (derivativeStep!4778 (regTwo!32626 r!7292) (head!12636 (_2!36339 (get!22188 lt!2329798)))) (tail!11721 (_2!36339 (get!22188 lt!2329798)))))))

(declare-fun b!6109168 () Bool)

(assert (=> b!6109168 (= e!3725361 (nullable!6050 (regTwo!32626 r!7292)))))

(declare-fun b!6109169 () Bool)

(assert (=> b!6109169 (= e!3725362 (not lt!2329888))))

(declare-fun b!6109170 () Bool)

(declare-fun res!2534107 () Bool)

(assert (=> b!6109170 (=> res!2534107 e!3725365)))

(assert (=> b!6109170 (= res!2534107 e!3725367)))

(declare-fun res!2534105 () Bool)

(assert (=> b!6109170 (=> (not res!2534105) (not e!3725367))))

(assert (=> b!6109170 (= res!2534105 lt!2329888)))

(declare-fun bm!505505 () Bool)

(assert (=> bm!505505 (= call!505510 (isEmpty!36274 (_2!36339 (get!22188 lt!2329798))))))

(declare-fun b!6109163 () Bool)

(assert (=> b!6109163 (= e!3725364 (= lt!2329888 call!505510))))

(declare-fun d!1914724 () Bool)

(assert (=> d!1914724 e!3725364))

(declare-fun c!1097609 () Bool)

(assert (=> d!1914724 (= c!1097609 ((_ is EmptyExpr!16057) (regTwo!32626 r!7292)))))

(assert (=> d!1914724 (= lt!2329888 e!3725361)))

(declare-fun c!1097607 () Bool)

(assert (=> d!1914724 (= c!1097607 (isEmpty!36274 (_2!36339 (get!22188 lt!2329798))))))

(assert (=> d!1914724 (validRegex!7793 (regTwo!32626 r!7292))))

(assert (=> d!1914724 (= (matchR!8240 (regTwo!32626 r!7292) (_2!36339 (get!22188 lt!2329798))) lt!2329888)))

(assert (= (and d!1914724 c!1097607) b!6109168))

(assert (= (and d!1914724 (not c!1097607)) b!6109167))

(assert (= (and d!1914724 c!1097609) b!6109163))

(assert (= (and d!1914724 (not c!1097609)) b!6109166))

(assert (= (and b!6109166 c!1097608) b!6109169))

(assert (= (and b!6109166 (not c!1097608)) b!6109158))

(assert (= (and b!6109158 (not res!2534109)) b!6109170))

(assert (= (and b!6109170 res!2534105) b!6109157))

(assert (= (and b!6109157 res!2534108) b!6109159))

(assert (= (and b!6109159 res!2534111) b!6109161))

(assert (= (and b!6109170 (not res!2534107)) b!6109165))

(assert (= (and b!6109165 res!2534104) b!6109164))

(assert (= (and b!6109164 (not res!2534110)) b!6109162))

(assert (= (and b!6109162 (not res!2534106)) b!6109160))

(assert (= (or b!6109163 b!6109157 b!6109164) bm!505505))

(declare-fun m!6959238 () Bool)

(assert (=> b!6109160 m!6959238))

(assert (=> b!6109161 m!6959238))

(declare-fun m!6959240 () Bool)

(assert (=> bm!505505 m!6959240))

(assert (=> b!6109167 m!6959238))

(assert (=> b!6109167 m!6959238))

(declare-fun m!6959242 () Bool)

(assert (=> b!6109167 m!6959242))

(declare-fun m!6959244 () Bool)

(assert (=> b!6109167 m!6959244))

(assert (=> b!6109167 m!6959242))

(assert (=> b!6109167 m!6959244))

(declare-fun m!6959246 () Bool)

(assert (=> b!6109167 m!6959246))

(assert (=> b!6109159 m!6959244))

(assert (=> b!6109159 m!6959244))

(declare-fun m!6959248 () Bool)

(assert (=> b!6109159 m!6959248))

(assert (=> b!6109162 m!6959244))

(assert (=> b!6109162 m!6959244))

(assert (=> b!6109162 m!6959248))

(assert (=> b!6109168 m!6957508))

(assert (=> d!1914724 m!6959240))

(assert (=> d!1914724 m!6957510))

(assert (=> b!6106913 d!1914724))

(assert (=> b!6106913 d!1914466))

(declare-fun b!6109171 () Bool)

(declare-fun e!3725373 () Bool)

(declare-fun e!3725374 () Bool)

(assert (=> b!6109171 (= e!3725373 e!3725374)))

(declare-fun c!1097610 () Bool)

(assert (=> b!6109171 (= c!1097610 ((_ is Union!16057) (h!70794 lt!2329720)))))

(declare-fun b!6109172 () Bool)

(declare-fun e!3725372 () Bool)

(declare-fun call!505512 () Bool)

(assert (=> b!6109172 (= e!3725372 call!505512)))

(declare-fun b!6109173 () Bool)

(declare-fun e!3725370 () Bool)

(assert (=> b!6109173 (= e!3725370 e!3725373)))

(declare-fun c!1097611 () Bool)

(assert (=> b!6109173 (= c!1097611 ((_ is Star!16057) (h!70794 lt!2329720)))))

(declare-fun bm!505506 () Bool)

(declare-fun call!505511 () Bool)

(assert (=> bm!505506 (= call!505512 call!505511)))

(declare-fun b!6109174 () Bool)

(declare-fun res!2534114 () Bool)

(declare-fun e!3725369 () Bool)

(assert (=> b!6109174 (=> res!2534114 e!3725369)))

(assert (=> b!6109174 (= res!2534114 (not ((_ is Concat!24902) (h!70794 lt!2329720))))))

(assert (=> b!6109174 (= e!3725374 e!3725369)))

(declare-fun b!6109175 () Bool)

(declare-fun e!3725371 () Bool)

(assert (=> b!6109175 (= e!3725371 call!505512)))

(declare-fun bm!505507 () Bool)

(assert (=> bm!505507 (= call!505511 (validRegex!7793 (ite c!1097611 (reg!16386 (h!70794 lt!2329720)) (ite c!1097610 (regTwo!32627 (h!70794 lt!2329720)) (regTwo!32626 (h!70794 lt!2329720))))))))

(declare-fun b!6109176 () Bool)

(declare-fun e!3725368 () Bool)

(assert (=> b!6109176 (= e!3725373 e!3725368)))

(declare-fun res!2534115 () Bool)

(assert (=> b!6109176 (= res!2534115 (not (nullable!6050 (reg!16386 (h!70794 lt!2329720)))))))

(assert (=> b!6109176 (=> (not res!2534115) (not e!3725368))))

(declare-fun b!6109177 () Bool)

(assert (=> b!6109177 (= e!3725369 e!3725371)))

(declare-fun res!2534116 () Bool)

(assert (=> b!6109177 (=> (not res!2534116) (not e!3725371))))

(declare-fun call!505513 () Bool)

(assert (=> b!6109177 (= res!2534116 call!505513)))

(declare-fun b!6109178 () Bool)

(assert (=> b!6109178 (= e!3725368 call!505511)))

(declare-fun b!6109179 () Bool)

(declare-fun res!2534112 () Bool)

(assert (=> b!6109179 (=> (not res!2534112) (not e!3725372))))

(assert (=> b!6109179 (= res!2534112 call!505513)))

(assert (=> b!6109179 (= e!3725374 e!3725372)))

(declare-fun bm!505508 () Bool)

(assert (=> bm!505508 (= call!505513 (validRegex!7793 (ite c!1097610 (regOne!32627 (h!70794 lt!2329720)) (regOne!32626 (h!70794 lt!2329720)))))))

(declare-fun d!1914726 () Bool)

(declare-fun res!2534113 () Bool)

(assert (=> d!1914726 (=> res!2534113 e!3725370)))

(assert (=> d!1914726 (= res!2534113 ((_ is ElementMatch!16057) (h!70794 lt!2329720)))))

(assert (=> d!1914726 (= (validRegex!7793 (h!70794 lt!2329720)) e!3725370)))

(assert (= (and d!1914726 (not res!2534113)) b!6109173))

(assert (= (and b!6109173 c!1097611) b!6109176))

(assert (= (and b!6109173 (not c!1097611)) b!6109171))

(assert (= (and b!6109176 res!2534115) b!6109178))

(assert (= (and b!6109171 c!1097610) b!6109179))

(assert (= (and b!6109171 (not c!1097610)) b!6109174))

(assert (= (and b!6109179 res!2534112) b!6109172))

(assert (= (and b!6109174 (not res!2534114)) b!6109177))

(assert (= (and b!6109177 res!2534116) b!6109175))

(assert (= (or b!6109172 b!6109175) bm!505506))

(assert (= (or b!6109179 b!6109177) bm!505508))

(assert (= (or b!6109178 bm!505506) bm!505507))

(declare-fun m!6959250 () Bool)

(assert (=> bm!505507 m!6959250))

(declare-fun m!6959252 () Bool)

(assert (=> b!6109176 m!6959252))

(declare-fun m!6959254 () Bool)

(assert (=> bm!505508 m!6959254))

(assert (=> bs!1516226 d!1914726))

(declare-fun bs!1516670 () Bool)

(declare-fun d!1914728 () Bool)

(assert (= bs!1516670 (and d!1914728 d!1913694)))

(declare-fun lambda!332794 () Int)

(assert (=> bs!1516670 (= lambda!332794 lambda!332695)))

(declare-fun bs!1516671 () Bool)

(assert (= bs!1516671 (and d!1914728 d!1914000)))

(assert (=> bs!1516671 (= lambda!332794 lambda!332756)))

(declare-fun bs!1516672 () Bool)

(assert (= bs!1516672 (and d!1914728 d!1913998)))

(assert (=> bs!1516672 (= lambda!332794 lambda!332755)))

(declare-fun bs!1516673 () Bool)

(assert (= bs!1516673 (and d!1914728 d!1914640)))

(assert (=> bs!1516673 (= lambda!332794 lambda!332790)))

(declare-fun bs!1516674 () Bool)

(assert (= bs!1516674 (and d!1914728 d!1913734)))

(assert (=> bs!1516674 (= lambda!332794 lambda!332720)))

(declare-fun bs!1516675 () Bool)

(assert (= bs!1516675 (and d!1914728 d!1914504)))

(assert (=> bs!1516675 (= lambda!332794 lambda!332783)))

(declare-fun bs!1516676 () Bool)

(assert (= bs!1516676 (and d!1914728 d!1913970)))

(assert (=> bs!1516676 (= lambda!332794 lambda!332752)))

(declare-fun bs!1516677 () Bool)

(assert (= bs!1516677 (and d!1914728 d!1914642)))

(assert (=> bs!1516677 (= lambda!332794 lambda!332791)))

(declare-fun bs!1516678 () Bool)

(assert (= bs!1516678 (and d!1914728 d!1914016)))

(assert (=> bs!1516678 (= lambda!332794 lambda!332757)))

(declare-fun bs!1516679 () Bool)

(assert (= bs!1516679 (and d!1914728 d!1914720)))

(assert (=> bs!1516679 (= lambda!332794 lambda!332793)))

(declare-fun bs!1516680 () Bool)

(assert (= bs!1516680 (and d!1914728 d!1914644)))

(assert (=> bs!1516680 (= lambda!332794 lambda!332792)))

(declare-fun bs!1516681 () Bool)

(assert (= bs!1516681 (and d!1914728 d!1913684)))

(assert (=> bs!1516681 (= lambda!332794 lambda!332688)))

(declare-fun bs!1516682 () Bool)

(assert (= bs!1516682 (and d!1914728 d!1913730)))

(assert (=> bs!1516682 (= lambda!332794 lambda!332719)))

(declare-fun bs!1516683 () Bool)

(assert (= bs!1516683 (and d!1914728 d!1913748)))

(assert (=> bs!1516683 (= lambda!332794 lambda!332729)))

(declare-fun bs!1516684 () Bool)

(assert (= bs!1516684 (and d!1914728 d!1913968)))

(assert (=> bs!1516684 (= lambda!332794 lambda!332751)))

(declare-fun b!6109180 () Bool)

(declare-fun e!3725377 () Bool)

(declare-fun lt!2329889 () Regex!16057)

(assert (=> b!6109180 (= e!3725377 (isUnion!914 lt!2329889))))

(declare-fun b!6109181 () Bool)

(declare-fun e!3725380 () Bool)

(assert (=> b!6109181 (= e!3725380 (isEmpty!36269 (t!377923 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343))))))))

(declare-fun b!6109182 () Bool)

(declare-fun e!3725375 () Regex!16057)

(assert (=> b!6109182 (= e!3725375 (Union!16057 (h!70794 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343)))) (generalisedUnion!1901 (t!377923 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343)))))))))

(declare-fun b!6109183 () Bool)

(assert (=> b!6109183 (= e!3725377 (= lt!2329889 (head!12635 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343))))))))

(declare-fun b!6109184 () Bool)

(declare-fun e!3725379 () Regex!16057)

(assert (=> b!6109184 (= e!3725379 (h!70794 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(declare-fun b!6109185 () Bool)

(assert (=> b!6109185 (= e!3725379 e!3725375)))

(declare-fun c!1097614 () Bool)

(assert (=> b!6109185 (= c!1097614 ((_ is Cons!64346) (t!377923 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(declare-fun b!6109187 () Bool)

(declare-fun e!3725376 () Bool)

(assert (=> b!6109187 (= e!3725376 (isEmptyLang!1484 lt!2329889))))

(declare-fun b!6109188 () Bool)

(declare-fun e!3725378 () Bool)

(assert (=> b!6109188 (= e!3725378 e!3725376)))

(declare-fun c!1097613 () Bool)

(assert (=> b!6109188 (= c!1097613 (isEmpty!36269 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(declare-fun b!6109189 () Bool)

(assert (=> b!6109189 (= e!3725376 e!3725377)))

(declare-fun c!1097612 () Bool)

(assert (=> b!6109189 (= c!1097612 (isEmpty!36269 (tail!11720 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343))))))))

(declare-fun b!6109186 () Bool)

(assert (=> b!6109186 (= e!3725375 EmptyLang!16057)))

(assert (=> d!1914728 e!3725378))

(declare-fun res!2534117 () Bool)

(assert (=> d!1914728 (=> (not res!2534117) (not e!3725378))))

(assert (=> d!1914728 (= res!2534117 (validRegex!7793 lt!2329889))))

(assert (=> d!1914728 (= lt!2329889 e!3725379)))

(declare-fun c!1097615 () Bool)

(assert (=> d!1914728 (= c!1097615 e!3725380)))

(declare-fun res!2534118 () Bool)

(assert (=> d!1914728 (=> (not res!2534118) (not e!3725380))))

(assert (=> d!1914728 (= res!2534118 ((_ is Cons!64346) (t!377923 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(assert (=> d!1914728 (forall!15178 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343))) lambda!332794)))

(assert (=> d!1914728 (= (generalisedUnion!1901 (t!377923 (t!377923 (unfocusZipperList!1478 zl!343)))) lt!2329889)))

(assert (= (and d!1914728 res!2534118) b!6109181))

(assert (= (and d!1914728 c!1097615) b!6109184))

(assert (= (and d!1914728 (not c!1097615)) b!6109185))

(assert (= (and b!6109185 c!1097614) b!6109182))

(assert (= (and b!6109185 (not c!1097614)) b!6109186))

(assert (= (and d!1914728 res!2534117) b!6109188))

(assert (= (and b!6109188 c!1097613) b!6109187))

(assert (= (and b!6109188 (not c!1097613)) b!6109189))

(assert (= (and b!6109189 c!1097612) b!6109183))

(assert (= (and b!6109189 (not c!1097612)) b!6109180))

(declare-fun m!6959256 () Bool)

(assert (=> b!6109181 m!6959256))

(declare-fun m!6959258 () Bool)

(assert (=> b!6109189 m!6959258))

(assert (=> b!6109189 m!6959258))

(declare-fun m!6959260 () Bool)

(assert (=> b!6109189 m!6959260))

(declare-fun m!6959262 () Bool)

(assert (=> b!6109187 m!6959262))

(declare-fun m!6959264 () Bool)

(assert (=> d!1914728 m!6959264))

(declare-fun m!6959266 () Bool)

(assert (=> d!1914728 m!6959266))

(declare-fun m!6959268 () Bool)

(assert (=> b!6109182 m!6959268))

(assert (=> b!6109188 m!6957734))

(declare-fun m!6959270 () Bool)

(assert (=> b!6109180 m!6959270))

(declare-fun m!6959272 () Bool)

(assert (=> b!6109183 m!6959272))

(assert (=> b!6107036 d!1914728))

(declare-fun d!1914730 () Bool)

(assert (=> d!1914730 (= (head!12635 (t!377923 (exprs!5941 (h!70795 zl!343)))) (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343)))))))

(assert (=> b!6106982 d!1914730))

(assert (=> b!6106811 d!1913920))

(declare-fun d!1914732 () Bool)

(assert (=> d!1914732 (= (nullable!6050 (regOne!32626 (h!70794 (exprs!5941 lt!2329690)))) (nullableFct!2014 (regOne!32626 (h!70794 (exprs!5941 lt!2329690)))))))

(declare-fun bs!1516685 () Bool)

(assert (= bs!1516685 d!1914732))

(declare-fun m!6959274 () Bool)

(assert (=> bs!1516685 m!6959274))

(assert (=> b!6107048 d!1914732))

(declare-fun b!6109190 () Bool)

(declare-fun e!3725386 () (InoxSet Context!10882))

(declare-fun e!3725385 () (InoxSet Context!10882))

(assert (=> b!6109190 (= e!3725386 e!3725385)))

(declare-fun c!1097617 () Bool)

(assert (=> b!6109190 (= c!1097617 ((_ is Union!16057) (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))))

(declare-fun c!1097620 () Bool)

(declare-fun bm!505509 () Bool)

(declare-fun c!1097619 () Bool)

(declare-fun call!505514 () List!64470)

(assert (=> bm!505509 (= call!505514 ($colon$colon!1934 (exprs!5941 (ite c!1097190 (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (Context!10883 call!505167))) (ite (or c!1097619 c!1097620) (regTwo!32626 (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))))

(declare-fun b!6109191 () Bool)

(declare-fun e!3725382 () (InoxSet Context!10882))

(declare-fun call!505517 () (InoxSet Context!10882))

(assert (=> b!6109191 (= e!3725382 call!505517)))

(declare-fun bm!505510 () Bool)

(declare-fun call!505515 () (InoxSet Context!10882))

(declare-fun call!505519 () (InoxSet Context!10882))

(assert (=> bm!505510 (= call!505515 call!505519)))

(declare-fun b!6109192 () Bool)

(declare-fun call!505518 () (InoxSet Context!10882))

(assert (=> b!6109192 (= e!3725385 ((_ map or) call!505519 call!505518))))

(declare-fun bm!505511 () Bool)

(assert (=> bm!505511 (= call!505517 call!505515)))

(declare-fun b!6109193 () Bool)

(declare-fun e!3725383 () (InoxSet Context!10882))

(assert (=> b!6109193 (= e!3725383 ((_ map or) call!505518 call!505515))))

(declare-fun b!6109194 () Bool)

(declare-fun e!3725381 () Bool)

(assert (=> b!6109194 (= e!3725381 (nullable!6050 (regOne!32626 (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))))

(declare-fun d!1914734 () Bool)

(declare-fun c!1097616 () Bool)

(assert (=> d!1914734 (= c!1097616 (and ((_ is ElementMatch!16057) (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (= (c!1096851 (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (h!70796 s!2326))))))

(assert (=> d!1914734 (= (derivationStepZipperDown!1305 (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))) (ite c!1097190 (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (Context!10883 call!505167)) (h!70796 s!2326)) e!3725386)))

(declare-fun bm!505512 () Bool)

(assert (=> bm!505512 (= call!505518 (derivationStepZipperDown!1305 (ite c!1097617 (regTwo!32627 (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (regOne!32626 (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))) (ite c!1097617 (ite c!1097190 (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (Context!10883 call!505167)) (Context!10883 call!505514)) (h!70796 s!2326)))))

(declare-fun b!6109195 () Bool)

(assert (=> b!6109195 (= e!3725386 (store ((as const (Array Context!10882 Bool)) false) (ite c!1097190 (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (Context!10883 call!505167)) true))))

(declare-fun b!6109196 () Bool)

(assert (=> b!6109196 (= c!1097619 e!3725381)))

(declare-fun res!2534119 () Bool)

(assert (=> b!6109196 (=> (not res!2534119) (not e!3725381))))

(assert (=> b!6109196 (= res!2534119 ((_ is Concat!24902) (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))))

(assert (=> b!6109196 (= e!3725385 e!3725383)))

(declare-fun b!6109197 () Bool)

(declare-fun c!1097618 () Bool)

(assert (=> b!6109197 (= c!1097618 ((_ is Star!16057) (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))))

(declare-fun e!3725384 () (InoxSet Context!10882))

(assert (=> b!6109197 (= e!3725382 e!3725384)))

(declare-fun bm!505513 () Bool)

(declare-fun call!505516 () List!64470)

(assert (=> bm!505513 (= call!505519 (derivationStepZipperDown!1305 (ite c!1097617 (regOne!32627 (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (ite c!1097619 (regTwo!32626 (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (ite c!1097620 (regOne!32626 (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))) (reg!16386 (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))) (ite (or c!1097617 c!1097619) (ite c!1097190 (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (Context!10883 call!505167)) (Context!10883 call!505516)) (h!70796 s!2326)))))

(declare-fun bm!505514 () Bool)

(assert (=> bm!505514 (= call!505516 call!505514)))

(declare-fun b!6109198 () Bool)

(assert (=> b!6109198 (= e!3725384 call!505517)))

(declare-fun b!6109199 () Bool)

(assert (=> b!6109199 (= e!3725383 e!3725382)))

(assert (=> b!6109199 (= c!1097620 ((_ is Concat!24902) (ite c!1097190 (regTwo!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))))

(declare-fun b!6109200 () Bool)

(assert (=> b!6109200 (= e!3725384 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1914734 c!1097616) b!6109195))

(assert (= (and d!1914734 (not c!1097616)) b!6109190))

(assert (= (and b!6109190 c!1097617) b!6109192))

(assert (= (and b!6109190 (not c!1097617)) b!6109196))

(assert (= (and b!6109196 res!2534119) b!6109194))

(assert (= (and b!6109196 c!1097619) b!6109193))

(assert (= (and b!6109196 (not c!1097619)) b!6109199))

(assert (= (and b!6109199 c!1097620) b!6109191))

(assert (= (and b!6109199 (not c!1097620)) b!6109197))

(assert (= (and b!6109197 c!1097618) b!6109198))

(assert (= (and b!6109197 (not c!1097618)) b!6109200))

(assert (= (or b!6109191 b!6109198) bm!505514))

(assert (= (or b!6109191 b!6109198) bm!505511))

(assert (= (or b!6109193 bm!505514) bm!505509))

(assert (= (or b!6109193 bm!505511) bm!505510))

(assert (= (or b!6109192 b!6109193) bm!505512))

(assert (= (or b!6109192 bm!505510) bm!505513))

(declare-fun m!6959276 () Bool)

(assert (=> b!6109194 m!6959276))

(declare-fun m!6959278 () Bool)

(assert (=> bm!505509 m!6959278))

(declare-fun m!6959280 () Bool)

(assert (=> bm!505512 m!6959280))

(declare-fun m!6959282 () Bool)

(assert (=> b!6109195 m!6959282))

(declare-fun m!6959284 () Bool)

(assert (=> bm!505513 m!6959284))

(assert (=> bm!505165 d!1914734))

(declare-fun d!1914736 () Bool)

(assert (=> d!1914736 (= (nullable!6050 (reg!16386 (regOne!32626 r!7292))) (nullableFct!2014 (reg!16386 (regOne!32626 r!7292))))))

(declare-fun bs!1516686 () Bool)

(assert (= bs!1516686 d!1914736))

(declare-fun m!6959286 () Bool)

(assert (=> bs!1516686 m!6959286))

(assert (=> b!6106882 d!1914736))

(declare-fun d!1914738 () Bool)

(assert (=> d!1914738 (= ($colon$colon!1934 (exprs!5941 (ite c!1097012 lt!2329690 (Context!10883 call!505042))) (ite (or c!1097187 c!1097188) (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343))))))) (Cons!64346 (ite (or c!1097187 c!1097188) (regTwo!32626 (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (ite c!1097012 (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) (exprs!5941 (ite c!1097012 lt!2329690 (Context!10883 call!505042)))))))

(assert (=> bm!505156 d!1914738))

(assert (=> b!6107022 d!1914500))

(assert (=> b!6107022 d!1914502))

(declare-fun b!6109201 () Bool)

(declare-fun e!3725392 () Bool)

(declare-fun e!3725387 () Bool)

(assert (=> b!6109201 (= e!3725392 e!3725387)))

(declare-fun c!1097621 () Bool)

(assert (=> b!6109201 (= c!1097621 ((_ is Union!16057) (h!70794 (exprs!5941 lt!2329690))))))

(declare-fun b!6109202 () Bool)

(declare-fun e!3725390 () Bool)

(assert (=> b!6109202 (= e!3725387 e!3725390)))

(declare-fun res!2534124 () Bool)

(declare-fun call!505520 () Bool)

(assert (=> b!6109202 (= res!2534124 call!505520)))

(assert (=> b!6109202 (=> res!2534124 e!3725390)))

(declare-fun b!6109203 () Bool)

(declare-fun e!3725388 () Bool)

(assert (=> b!6109203 (= e!3725388 e!3725392)))

(declare-fun res!2534123 () Bool)

(assert (=> b!6109203 (=> res!2534123 e!3725392)))

(assert (=> b!6109203 (= res!2534123 ((_ is Star!16057) (h!70794 (exprs!5941 lt!2329690))))))

(declare-fun b!6109204 () Bool)

(declare-fun e!3725389 () Bool)

(declare-fun call!505521 () Bool)

(assert (=> b!6109204 (= e!3725389 call!505521)))

(declare-fun b!6109205 () Bool)

(assert (=> b!6109205 (= e!3725387 e!3725389)))

(declare-fun res!2534122 () Bool)

(assert (=> b!6109205 (= res!2534122 call!505520)))

(assert (=> b!6109205 (=> (not res!2534122) (not e!3725389))))

(declare-fun b!6109206 () Bool)

(declare-fun e!3725391 () Bool)

(assert (=> b!6109206 (= e!3725391 e!3725388)))

(declare-fun res!2534121 () Bool)

(assert (=> b!6109206 (=> (not res!2534121) (not e!3725388))))

(assert (=> b!6109206 (= res!2534121 (and (not ((_ is EmptyLang!16057) (h!70794 (exprs!5941 lt!2329690)))) (not ((_ is ElementMatch!16057) (h!70794 (exprs!5941 lt!2329690))))))))

(declare-fun bm!505516 () Bool)

(assert (=> bm!505516 (= call!505521 (nullable!6050 (ite c!1097621 (regTwo!32627 (h!70794 (exprs!5941 lt!2329690))) (regTwo!32626 (h!70794 (exprs!5941 lt!2329690))))))))

(declare-fun b!6109207 () Bool)

(assert (=> b!6109207 (= e!3725390 call!505521)))

(declare-fun d!1914740 () Bool)

(declare-fun res!2534120 () Bool)

(assert (=> d!1914740 (=> res!2534120 e!3725391)))

(assert (=> d!1914740 (= res!2534120 ((_ is EmptyExpr!16057) (h!70794 (exprs!5941 lt!2329690))))))

(assert (=> d!1914740 (= (nullableFct!2014 (h!70794 (exprs!5941 lt!2329690))) e!3725391)))

(declare-fun bm!505515 () Bool)

(assert (=> bm!505515 (= call!505520 (nullable!6050 (ite c!1097621 (regOne!32627 (h!70794 (exprs!5941 lt!2329690))) (regOne!32626 (h!70794 (exprs!5941 lt!2329690))))))))

(assert (= (and d!1914740 (not res!2534120)) b!6109206))

(assert (= (and b!6109206 res!2534121) b!6109203))

(assert (= (and b!6109203 (not res!2534123)) b!6109201))

(assert (= (and b!6109201 c!1097621) b!6109202))

(assert (= (and b!6109201 (not c!1097621)) b!6109205))

(assert (= (and b!6109202 (not res!2534124)) b!6109207))

(assert (= (and b!6109205 res!2534122) b!6109204))

(assert (= (or b!6109207 b!6109204) bm!505516))

(assert (= (or b!6109202 b!6109205) bm!505515))

(declare-fun m!6959288 () Bool)

(assert (=> bm!505516 m!6959288))

(declare-fun m!6959290 () Bool)

(assert (=> bm!505515 m!6959290))

(assert (=> d!1913948 d!1914740))

(declare-fun b!6109208 () Bool)

(declare-fun e!3725398 () (InoxSet Context!10882))

(declare-fun e!3725397 () (InoxSet Context!10882))

(assert (=> b!6109208 (= e!3725398 e!3725397)))

(declare-fun c!1097623 () Bool)

(assert (=> b!6109208 (= c!1097623 ((_ is Union!16057) (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))))))

(declare-fun call!505522 () List!64470)

(declare-fun c!1097626 () Bool)

(declare-fun c!1097625 () Bool)

(declare-fun bm!505517 () Bool)

(assert (=> bm!505517 (= call!505522 ($colon$colon!1934 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690))))))) (ite (or c!1097625 c!1097626) (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690))))))))))

(declare-fun b!6109209 () Bool)

(declare-fun e!3725394 () (InoxSet Context!10882))

(declare-fun call!505525 () (InoxSet Context!10882))

(assert (=> b!6109209 (= e!3725394 call!505525)))

(declare-fun bm!505518 () Bool)

(declare-fun call!505523 () (InoxSet Context!10882))

(declare-fun call!505527 () (InoxSet Context!10882))

(assert (=> bm!505518 (= call!505523 call!505527)))

(declare-fun b!6109210 () Bool)

(declare-fun call!505526 () (InoxSet Context!10882))

(assert (=> b!6109210 (= e!3725397 ((_ map or) call!505527 call!505526))))

(declare-fun bm!505519 () Bool)

(assert (=> bm!505519 (= call!505525 call!505523)))

(declare-fun b!6109211 () Bool)

(declare-fun e!3725395 () (InoxSet Context!10882))

(assert (=> b!6109211 (= e!3725395 ((_ map or) call!505526 call!505523))))

(declare-fun b!6109212 () Bool)

(declare-fun e!3725393 () Bool)

(assert (=> b!6109212 (= e!3725393 (nullable!6050 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690))))))))))

(declare-fun d!1914742 () Bool)

(declare-fun c!1097622 () Bool)

(assert (=> d!1914742 (= c!1097622 (and ((_ is ElementMatch!16057) (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (= (c!1096851 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (h!70796 s!2326))))))

(assert (=> d!1914742 (= (derivationStepZipperDown!1305 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690))))) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (h!70796 s!2326)) e!3725398)))

(declare-fun bm!505520 () Bool)

(assert (=> bm!505520 (= call!505526 (derivationStepZipperDown!1305 (ite c!1097623 (regTwo!32627 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690))))))) (ite c!1097623 (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (Context!10883 call!505522)) (h!70796 s!2326)))))

(declare-fun b!6109213 () Bool)

(assert (=> b!6109213 (= e!3725398 (store ((as const (Array Context!10882 Bool)) false) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) true))))

(declare-fun b!6109214 () Bool)

(assert (=> b!6109214 (= c!1097625 e!3725393)))

(declare-fun res!2534125 () Bool)

(assert (=> b!6109214 (=> (not res!2534125) (not e!3725393))))

(assert (=> b!6109214 (= res!2534125 ((_ is Concat!24902) (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))))))

(assert (=> b!6109214 (= e!3725397 e!3725395)))

(declare-fun b!6109215 () Bool)

(declare-fun c!1097624 () Bool)

(assert (=> b!6109215 (= c!1097624 ((_ is Star!16057) (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))))))

(declare-fun e!3725396 () (InoxSet Context!10882))

(assert (=> b!6109215 (= e!3725394 e!3725396)))

(declare-fun bm!505521 () Bool)

(declare-fun call!505524 () List!64470)

(assert (=> bm!505521 (= call!505527 (derivationStepZipperDown!1305 (ite c!1097623 (regOne!32627 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (ite c!1097625 (regTwo!32626 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (ite c!1097626 (regOne!32626 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (reg!16386 (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690))))))))) (ite (or c!1097623 c!1097625) (Context!10883 (t!377923 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))) (Context!10883 call!505524)) (h!70796 s!2326)))))

(declare-fun bm!505522 () Bool)

(assert (=> bm!505522 (= call!505524 call!505522)))

(declare-fun b!6109216 () Bool)

(assert (=> b!6109216 (= e!3725396 call!505525)))

(declare-fun b!6109217 () Bool)

(assert (=> b!6109217 (= e!3725395 e!3725394)))

(assert (=> b!6109217 (= c!1097626 ((_ is Concat!24902) (h!70794 (exprs!5941 (Context!10883 (t!377923 (exprs!5941 lt!2329690)))))))))

(declare-fun b!6109218 () Bool)

(assert (=> b!6109218 (= e!3725396 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1914742 c!1097622) b!6109213))

(assert (= (and d!1914742 (not c!1097622)) b!6109208))

(assert (= (and b!6109208 c!1097623) b!6109210))

(assert (= (and b!6109208 (not c!1097623)) b!6109214))

(assert (= (and b!6109214 res!2534125) b!6109212))

(assert (= (and b!6109214 c!1097625) b!6109211))

(assert (= (and b!6109214 (not c!1097625)) b!6109217))

(assert (= (and b!6109217 c!1097626) b!6109209))

(assert (= (and b!6109217 (not c!1097626)) b!6109215))

(assert (= (and b!6109215 c!1097624) b!6109216))

(assert (= (and b!6109215 (not c!1097624)) b!6109218))

(assert (= (or b!6109209 b!6109216) bm!505522))

(assert (= (or b!6109209 b!6109216) bm!505519))

(assert (= (or b!6109211 bm!505522) bm!505517))

(assert (= (or b!6109211 bm!505519) bm!505518))

(assert (= (or b!6109210 b!6109211) bm!505520))

(assert (= (or b!6109210 bm!505518) bm!505521))

(declare-fun m!6959292 () Bool)

(assert (=> b!6109212 m!6959292))

(declare-fun m!6959294 () Bool)

(assert (=> bm!505517 m!6959294))

(declare-fun m!6959296 () Bool)

(assert (=> bm!505520 m!6959296))

(declare-fun m!6959298 () Bool)

(assert (=> b!6109213 m!6959298))

(declare-fun m!6959300 () Bool)

(assert (=> bm!505521 m!6959300))

(assert (=> bm!505127 d!1914742))

(declare-fun bs!1516687 () Bool)

(declare-fun d!1914744 () Bool)

(assert (= bs!1516687 (and d!1914744 d!1913694)))

(declare-fun lambda!332795 () Int)

(assert (=> bs!1516687 (= lambda!332795 lambda!332695)))

(declare-fun bs!1516688 () Bool)

(assert (= bs!1516688 (and d!1914744 d!1914000)))

(assert (=> bs!1516688 (= lambda!332795 lambda!332756)))

(declare-fun bs!1516689 () Bool)

(assert (= bs!1516689 (and d!1914744 d!1913998)))

(assert (=> bs!1516689 (= lambda!332795 lambda!332755)))

(declare-fun bs!1516690 () Bool)

(assert (= bs!1516690 (and d!1914744 d!1914640)))

(assert (=> bs!1516690 (= lambda!332795 lambda!332790)))

(declare-fun bs!1516691 () Bool)

(assert (= bs!1516691 (and d!1914744 d!1913734)))

(assert (=> bs!1516691 (= lambda!332795 lambda!332720)))

(declare-fun bs!1516692 () Bool)

(assert (= bs!1516692 (and d!1914744 d!1914504)))

(assert (=> bs!1516692 (= lambda!332795 lambda!332783)))

(declare-fun bs!1516693 () Bool)

(assert (= bs!1516693 (and d!1914744 d!1914728)))

(assert (=> bs!1516693 (= lambda!332795 lambda!332794)))

(declare-fun bs!1516694 () Bool)

(assert (= bs!1516694 (and d!1914744 d!1913970)))

(assert (=> bs!1516694 (= lambda!332795 lambda!332752)))

(declare-fun bs!1516695 () Bool)

(assert (= bs!1516695 (and d!1914744 d!1914642)))

(assert (=> bs!1516695 (= lambda!332795 lambda!332791)))

(declare-fun bs!1516696 () Bool)

(assert (= bs!1516696 (and d!1914744 d!1914016)))

(assert (=> bs!1516696 (= lambda!332795 lambda!332757)))

(declare-fun bs!1516697 () Bool)

(assert (= bs!1516697 (and d!1914744 d!1914720)))

(assert (=> bs!1516697 (= lambda!332795 lambda!332793)))

(declare-fun bs!1516698 () Bool)

(assert (= bs!1516698 (and d!1914744 d!1914644)))

(assert (=> bs!1516698 (= lambda!332795 lambda!332792)))

(declare-fun bs!1516699 () Bool)

(assert (= bs!1516699 (and d!1914744 d!1913684)))

(assert (=> bs!1516699 (= lambda!332795 lambda!332688)))

(declare-fun bs!1516700 () Bool)

(assert (= bs!1516700 (and d!1914744 d!1913730)))

(assert (=> bs!1516700 (= lambda!332795 lambda!332719)))

(declare-fun bs!1516701 () Bool)

(assert (= bs!1516701 (and d!1914744 d!1913748)))

(assert (=> bs!1516701 (= lambda!332795 lambda!332729)))

(declare-fun bs!1516702 () Bool)

(assert (= bs!1516702 (and d!1914744 d!1913968)))

(assert (=> bs!1516702 (= lambda!332795 lambda!332751)))

(declare-fun b!6109219 () Bool)

(declare-fun e!3725403 () Regex!16057)

(assert (=> b!6109219 (= e!3725403 EmptyExpr!16057)))

(declare-fun b!6109220 () Bool)

(declare-fun e!3725399 () Regex!16057)

(assert (=> b!6109220 (= e!3725399 e!3725403)))

(declare-fun c!1097630 () Bool)

(assert (=> b!6109220 (= c!1097630 ((_ is Cons!64346) (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun b!6109221 () Bool)

(declare-fun e!3725400 () Bool)

(declare-fun lt!2329890 () Regex!16057)

(assert (=> b!6109221 (= e!3725400 (= lt!2329890 (head!12635 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343)))))))))

(declare-fun b!6109222 () Bool)

(assert (=> b!6109222 (= e!3725400 (isConcat!997 lt!2329890))))

(declare-fun e!3725402 () Bool)

(assert (=> d!1914744 e!3725402))

(declare-fun res!2534127 () Bool)

(assert (=> d!1914744 (=> (not res!2534127) (not e!3725402))))

(assert (=> d!1914744 (= res!2534127 (validRegex!7793 lt!2329890))))

(assert (=> d!1914744 (= lt!2329890 e!3725399)))

(declare-fun c!1097628 () Bool)

(declare-fun e!3725401 () Bool)

(assert (=> d!1914744 (= c!1097628 e!3725401)))

(declare-fun res!2534126 () Bool)

(assert (=> d!1914744 (=> (not res!2534126) (not e!3725401))))

(assert (=> d!1914744 (= res!2534126 ((_ is Cons!64346) (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(assert (=> d!1914744 (forall!15178 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343)))) lambda!332795)))

(assert (=> d!1914744 (= (generalisedConcat!1654 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343))))) lt!2329890)))

(declare-fun b!6109223 () Bool)

(declare-fun e!3725404 () Bool)

(assert (=> b!6109223 (= e!3725404 (isEmptyExpr!1474 lt!2329890))))

(declare-fun b!6109224 () Bool)

(assert (=> b!6109224 (= e!3725401 (isEmpty!36269 (t!377923 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343)))))))))

(declare-fun b!6109225 () Bool)

(assert (=> b!6109225 (= e!3725403 (Concat!24902 (h!70794 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343))))) (generalisedConcat!1654 (t!377923 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343))))))))))

(declare-fun b!6109226 () Bool)

(assert (=> b!6109226 (= e!3725399 (h!70794 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun b!6109227 () Bool)

(assert (=> b!6109227 (= e!3725402 e!3725404)))

(declare-fun c!1097629 () Bool)

(assert (=> b!6109227 (= c!1097629 (isEmpty!36269 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun b!6109228 () Bool)

(assert (=> b!6109228 (= e!3725404 e!3725400)))

(declare-fun c!1097627 () Bool)

(assert (=> b!6109228 (= c!1097627 (isEmpty!36269 (tail!11720 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343)))))))))

(assert (= (and d!1914744 res!2534126) b!6109224))

(assert (= (and d!1914744 c!1097628) b!6109226))

(assert (= (and d!1914744 (not c!1097628)) b!6109220))

(assert (= (and b!6109220 c!1097630) b!6109225))

(assert (= (and b!6109220 (not c!1097630)) b!6109219))

(assert (= (and d!1914744 res!2534127) b!6109227))

(assert (= (and b!6109227 c!1097629) b!6109223))

(assert (= (and b!6109227 (not c!1097629)) b!6109228))

(assert (= (and b!6109228 c!1097627) b!6109221))

(assert (= (and b!6109228 (not c!1097627)) b!6109222))

(declare-fun m!6959302 () Bool)

(assert (=> b!6109224 m!6959302))

(declare-fun m!6959304 () Bool)

(assert (=> d!1914744 m!6959304))

(declare-fun m!6959306 () Bool)

(assert (=> d!1914744 m!6959306))

(assert (=> b!6109227 m!6957684))

(declare-fun m!6959308 () Bool)

(assert (=> b!6109222 m!6959308))

(declare-fun m!6959310 () Bool)

(assert (=> b!6109225 m!6959310))

(declare-fun m!6959312 () Bool)

(assert (=> b!6109223 m!6959312))

(declare-fun m!6959314 () Bool)

(assert (=> b!6109221 m!6959314))

(declare-fun m!6959316 () Bool)

(assert (=> b!6109228 m!6959316))

(assert (=> b!6109228 m!6959316))

(declare-fun m!6959318 () Bool)

(assert (=> b!6109228 m!6959318))

(assert (=> b!6106986 d!1914744))

(declare-fun b!6109229 () Bool)

(declare-fun e!3725410 () (InoxSet Context!10882))

(declare-fun e!3725409 () (InoxSet Context!10882))

(assert (=> b!6109229 (= e!3725410 e!3725409)))

(declare-fun c!1097632 () Bool)

(assert (=> b!6109229 (= c!1097632 ((_ is Union!16057) (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))))))

(declare-fun call!505528 () List!64470)

(declare-fun c!1097635 () Bool)

(declare-fun bm!505523 () Bool)

(declare-fun c!1097634 () Bool)

(assert (=> bm!505523 (= call!505528 ($colon$colon!1934 (exprs!5941 (ite (or c!1097190 c!1097192) (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (Context!10883 call!505169))) (ite (or c!1097634 c!1097635) (regTwo!32626 (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))) (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))))))

(declare-fun b!6109230 () Bool)

(declare-fun e!3725406 () (InoxSet Context!10882))

(declare-fun call!505531 () (InoxSet Context!10882))

(assert (=> b!6109230 (= e!3725406 call!505531)))

(declare-fun bm!505524 () Bool)

(declare-fun call!505529 () (InoxSet Context!10882))

(declare-fun call!505533 () (InoxSet Context!10882))

(assert (=> bm!505524 (= call!505529 call!505533)))

(declare-fun b!6109231 () Bool)

(declare-fun call!505532 () (InoxSet Context!10882))

(assert (=> b!6109231 (= e!3725409 ((_ map or) call!505533 call!505532))))

(declare-fun bm!505525 () Bool)

(assert (=> bm!505525 (= call!505531 call!505529)))

(declare-fun b!6109232 () Bool)

(declare-fun e!3725407 () (InoxSet Context!10882))

(assert (=> b!6109232 (= e!3725407 ((_ map or) call!505532 call!505529))))

(declare-fun b!6109233 () Bool)

(declare-fun e!3725405 () Bool)

(assert (=> b!6109233 (= e!3725405 (nullable!6050 (regOne!32626 (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))))))

(declare-fun d!1914746 () Bool)

(declare-fun c!1097631 () Bool)

(assert (=> d!1914746 (= c!1097631 (and ((_ is ElementMatch!16057) (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))) (= (c!1096851 (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))) (h!70796 s!2326))))))

(assert (=> d!1914746 (= (derivationStepZipperDown!1305 (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))) (ite (or c!1097190 c!1097192) (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (Context!10883 call!505169)) (h!70796 s!2326)) e!3725410)))

(declare-fun bm!505526 () Bool)

(assert (=> bm!505526 (= call!505532 (derivationStepZipperDown!1305 (ite c!1097632 (regTwo!32627 (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))) (regOne!32626 (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))) (ite c!1097632 (ite (or c!1097190 c!1097192) (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (Context!10883 call!505169)) (Context!10883 call!505528)) (h!70796 s!2326)))))

(declare-fun b!6109234 () Bool)

(assert (=> b!6109234 (= e!3725410 (store ((as const (Array Context!10882 Bool)) false) (ite (or c!1097190 c!1097192) (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (Context!10883 call!505169)) true))))

(declare-fun b!6109235 () Bool)

(assert (=> b!6109235 (= c!1097634 e!3725405)))

(declare-fun res!2534128 () Bool)

(assert (=> b!6109235 (=> (not res!2534128) (not e!3725405))))

(assert (=> b!6109235 (= res!2534128 ((_ is Concat!24902) (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))))))

(assert (=> b!6109235 (= e!3725409 e!3725407)))

(declare-fun b!6109236 () Bool)

(declare-fun c!1097633 () Bool)

(assert (=> b!6109236 (= c!1097633 ((_ is Star!16057) (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))))))

(declare-fun e!3725408 () (InoxSet Context!10882))

(assert (=> b!6109236 (= e!3725406 e!3725408)))

(declare-fun bm!505527 () Bool)

(declare-fun call!505530 () List!64470)

(assert (=> bm!505527 (= call!505533 (derivationStepZipperDown!1305 (ite c!1097632 (regOne!32627 (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))) (ite c!1097634 (regTwo!32626 (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))) (ite c!1097635 (regOne!32626 (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))) (reg!16386 (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343))))))))))))))) (ite (or c!1097632 c!1097634) (ite (or c!1097190 c!1097192) (ite (or c!1097012 c!1097014) lt!2329690 (Context!10883 call!505044)) (Context!10883 call!505169)) (Context!10883 call!505530)) (h!70796 s!2326)))))

(declare-fun bm!505528 () Bool)

(assert (=> bm!505528 (= call!505530 call!505528)))

(declare-fun b!6109237 () Bool)

(assert (=> b!6109237 (= e!3725408 call!505531)))

(declare-fun b!6109238 () Bool)

(assert (=> b!6109238 (= e!3725407 e!3725406)))

(assert (=> b!6109238 (= c!1097635 ((_ is Concat!24902) (ite c!1097190 (regOne!32627 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097192 (regTwo!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (ite c!1097193 (regOne!32626 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))) (reg!16386 (ite c!1097012 (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097014 (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (ite c!1097015 (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))))))))))))

(declare-fun b!6109239 () Bool)

(assert (=> b!6109239 (= e!3725408 ((as const (Array Context!10882 Bool)) false))))

(assert (= (and d!1914746 c!1097631) b!6109234))

(assert (= (and d!1914746 (not c!1097631)) b!6109229))

(assert (= (and b!6109229 c!1097632) b!6109231))

(assert (= (and b!6109229 (not c!1097632)) b!6109235))

(assert (= (and b!6109235 res!2534128) b!6109233))

(assert (= (and b!6109235 c!1097634) b!6109232))

(assert (= (and b!6109235 (not c!1097634)) b!6109238))

(assert (= (and b!6109238 c!1097635) b!6109230))

(assert (= (and b!6109238 (not c!1097635)) b!6109236))

(assert (= (and b!6109236 c!1097633) b!6109237))

(assert (= (and b!6109236 (not c!1097633)) b!6109239))

(assert (= (or b!6109230 b!6109237) bm!505528))

(assert (= (or b!6109230 b!6109237) bm!505525))

(assert (= (or b!6109232 bm!505528) bm!505523))

(assert (= (or b!6109232 bm!505525) bm!505524))

(assert (= (or b!6109231 b!6109232) bm!505526))

(assert (= (or b!6109231 bm!505524) bm!505527))

(declare-fun m!6959320 () Bool)

(assert (=> b!6109233 m!6959320))

(declare-fun m!6959322 () Bool)

(assert (=> bm!505523 m!6959322))

(declare-fun m!6959324 () Bool)

(assert (=> bm!505526 m!6959324))

(declare-fun m!6959326 () Bool)

(assert (=> b!6109234 m!6959326))

(declare-fun m!6959328 () Bool)

(assert (=> bm!505527 m!6959328))

(assert (=> bm!505166 d!1914746))

(assert (=> d!1913960 d!1914664))

(assert (=> d!1913960 d!1914716))

(declare-fun b!6109240 () Bool)

(declare-fun e!3725416 () Bool)

(declare-fun e!3725417 () Bool)

(assert (=> b!6109240 (= e!3725416 e!3725417)))

(declare-fun c!1097636 () Bool)

(assert (=> b!6109240 (= c!1097636 ((_ is Union!16057) (ite c!1097134 (regOne!32627 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292)))))))

(declare-fun b!6109241 () Bool)

(declare-fun e!3725415 () Bool)

(declare-fun call!505535 () Bool)

(assert (=> b!6109241 (= e!3725415 call!505535)))

(declare-fun b!6109242 () Bool)

(declare-fun e!3725413 () Bool)

(assert (=> b!6109242 (= e!3725413 e!3725416)))

(declare-fun c!1097637 () Bool)

(assert (=> b!6109242 (= c!1097637 ((_ is Star!16057) (ite c!1097134 (regOne!32627 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292)))))))

(declare-fun bm!505529 () Bool)

(declare-fun call!505534 () Bool)

(assert (=> bm!505529 (= call!505535 call!505534)))

(declare-fun b!6109243 () Bool)

(declare-fun res!2534131 () Bool)

(declare-fun e!3725412 () Bool)

(assert (=> b!6109243 (=> res!2534131 e!3725412)))

(assert (=> b!6109243 (= res!2534131 (not ((_ is Concat!24902) (ite c!1097134 (regOne!32627 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292))))))))

(assert (=> b!6109243 (= e!3725417 e!3725412)))

(declare-fun b!6109244 () Bool)

(declare-fun e!3725414 () Bool)

(assert (=> b!6109244 (= e!3725414 call!505535)))

(declare-fun bm!505530 () Bool)

(assert (=> bm!505530 (= call!505534 (validRegex!7793 (ite c!1097637 (reg!16386 (ite c!1097134 (regOne!32627 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292)))) (ite c!1097636 (regTwo!32627 (ite c!1097134 (regOne!32627 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292)))) (regTwo!32626 (ite c!1097134 (regOne!32627 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292))))))))))

(declare-fun b!6109245 () Bool)

(declare-fun e!3725411 () Bool)

(assert (=> b!6109245 (= e!3725416 e!3725411)))

(declare-fun res!2534132 () Bool)

(assert (=> b!6109245 (= res!2534132 (not (nullable!6050 (reg!16386 (ite c!1097134 (regOne!32627 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292)))))))))

(assert (=> b!6109245 (=> (not res!2534132) (not e!3725411))))

(declare-fun b!6109246 () Bool)

(assert (=> b!6109246 (= e!3725412 e!3725414)))

(declare-fun res!2534133 () Bool)

(assert (=> b!6109246 (=> (not res!2534133) (not e!3725414))))

(declare-fun call!505536 () Bool)

(assert (=> b!6109246 (= res!2534133 call!505536)))

(declare-fun b!6109247 () Bool)

(assert (=> b!6109247 (= e!3725411 call!505534)))

(declare-fun b!6109248 () Bool)

(declare-fun res!2534129 () Bool)

(assert (=> b!6109248 (=> (not res!2534129) (not e!3725415))))

(assert (=> b!6109248 (= res!2534129 call!505536)))

(assert (=> b!6109248 (= e!3725417 e!3725415)))

(declare-fun bm!505531 () Bool)

(assert (=> bm!505531 (= call!505536 (validRegex!7793 (ite c!1097636 (regOne!32627 (ite c!1097134 (regOne!32627 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292)))) (regOne!32626 (ite c!1097134 (regOne!32627 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292)))))))))

(declare-fun d!1914748 () Bool)

(declare-fun res!2534130 () Bool)

(assert (=> d!1914748 (=> res!2534130 e!3725413)))

(assert (=> d!1914748 (= res!2534130 ((_ is ElementMatch!16057) (ite c!1097134 (regOne!32627 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292)))))))

(assert (=> d!1914748 (= (validRegex!7793 (ite c!1097134 (regOne!32627 (regOne!32626 r!7292)) (regOne!32626 (regOne!32626 r!7292)))) e!3725413)))

(assert (= (and d!1914748 (not res!2534130)) b!6109242))

(assert (= (and b!6109242 c!1097637) b!6109245))

(assert (= (and b!6109242 (not c!1097637)) b!6109240))

(assert (= (and b!6109245 res!2534132) b!6109247))

(assert (= (and b!6109240 c!1097636) b!6109248))

(assert (= (and b!6109240 (not c!1097636)) b!6109243))

(assert (= (and b!6109248 res!2534129) b!6109241))

(assert (= (and b!6109243 (not res!2534131)) b!6109246))

(assert (= (and b!6109246 res!2534133) b!6109244))

(assert (= (or b!6109241 b!6109244) bm!505529))

(assert (= (or b!6109248 b!6109246) bm!505531))

(assert (= (or b!6109247 bm!505529) bm!505530))

(declare-fun m!6959330 () Bool)

(assert (=> bm!505530 m!6959330))

(declare-fun m!6959332 () Bool)

(assert (=> b!6109245 m!6959332))

(declare-fun m!6959334 () Bool)

(assert (=> bm!505531 m!6959334))

(assert (=> bm!505126 d!1914748))

(assert (=> d!1914048 d!1914662))

(assert (=> d!1914048 d!1913934))

(declare-fun d!1914750 () Bool)

(declare-fun res!2534134 () Bool)

(declare-fun e!3725418 () Bool)

(assert (=> d!1914750 (=> res!2534134 e!3725418)))

(assert (=> d!1914750 (= res!2534134 ((_ is Nil!64346) (t!377923 (exprs!5941 (h!70795 zl!343)))))))

(assert (=> d!1914750 (= (forall!15178 (t!377923 (exprs!5941 (h!70795 zl!343))) lambda!332719) e!3725418)))

(declare-fun b!6109249 () Bool)

(declare-fun e!3725419 () Bool)

(assert (=> b!6109249 (= e!3725418 e!3725419)))

(declare-fun res!2534135 () Bool)

(assert (=> b!6109249 (=> (not res!2534135) (not e!3725419))))

(assert (=> b!6109249 (= res!2534135 (dynLambda!25338 lambda!332719 (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun b!6109250 () Bool)

(assert (=> b!6109250 (= e!3725419 (forall!15178 (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343)))) lambda!332719))))

(assert (= (and d!1914750 (not res!2534134)) b!6109249))

(assert (= (and b!6109249 res!2534135) b!6109250))

(declare-fun b_lambda!232707 () Bool)

(assert (=> (not b_lambda!232707) (not b!6109249)))

(declare-fun m!6959336 () Bool)

(assert (=> b!6109249 m!6959336))

(declare-fun m!6959338 () Bool)

(assert (=> b!6109250 m!6959338))

(assert (=> b!6107065 d!1914750))

(declare-fun b!6109254 () Bool)

(declare-fun e!3725420 () Bool)

(declare-fun tp!1705919 () Bool)

(declare-fun tp!1705923 () Bool)

(assert (=> b!6109254 (= e!3725420 (and tp!1705919 tp!1705923))))

(declare-fun b!6109252 () Bool)

(declare-fun tp!1705920 () Bool)

(declare-fun tp!1705921 () Bool)

(assert (=> b!6109252 (= e!3725420 (and tp!1705920 tp!1705921))))

(assert (=> b!6107217 (= tp!1705158 e!3725420)))

(declare-fun b!6109251 () Bool)

(assert (=> b!6109251 (= e!3725420 tp_is_empty!41367)))

(declare-fun b!6109253 () Bool)

(declare-fun tp!1705922 () Bool)

(assert (=> b!6109253 (= e!3725420 tp!1705922)))

(assert (= (and b!6107217 ((_ is ElementMatch!16057) (regOne!32626 (regOne!32627 (regTwo!32626 r!7292))))) b!6109251))

(assert (= (and b!6107217 ((_ is Concat!24902) (regOne!32626 (regOne!32627 (regTwo!32626 r!7292))))) b!6109252))

(assert (= (and b!6107217 ((_ is Star!16057) (regOne!32626 (regOne!32627 (regTwo!32626 r!7292))))) b!6109253))

(assert (= (and b!6107217 ((_ is Union!16057) (regOne!32626 (regOne!32627 (regTwo!32626 r!7292))))) b!6109254))

(declare-fun b!6109258 () Bool)

(declare-fun e!3725421 () Bool)

(declare-fun tp!1705924 () Bool)

(declare-fun tp!1705928 () Bool)

(assert (=> b!6109258 (= e!3725421 (and tp!1705924 tp!1705928))))

(declare-fun b!6109256 () Bool)

(declare-fun tp!1705925 () Bool)

(declare-fun tp!1705926 () Bool)

(assert (=> b!6109256 (= e!3725421 (and tp!1705925 tp!1705926))))

(assert (=> b!6107217 (= tp!1705159 e!3725421)))

(declare-fun b!6109255 () Bool)

(assert (=> b!6109255 (= e!3725421 tp_is_empty!41367)))

(declare-fun b!6109257 () Bool)

(declare-fun tp!1705927 () Bool)

(assert (=> b!6109257 (= e!3725421 tp!1705927)))

(assert (= (and b!6107217 ((_ is ElementMatch!16057) (regTwo!32626 (regOne!32627 (regTwo!32626 r!7292))))) b!6109255))

(assert (= (and b!6107217 ((_ is Concat!24902) (regTwo!32626 (regOne!32627 (regTwo!32626 r!7292))))) b!6109256))

(assert (= (and b!6107217 ((_ is Star!16057) (regTwo!32626 (regOne!32627 (regTwo!32626 r!7292))))) b!6109257))

(assert (= (and b!6107217 ((_ is Union!16057) (regTwo!32626 (regOne!32627 (regTwo!32626 r!7292))))) b!6109258))

(declare-fun b!6109262 () Bool)

(declare-fun e!3725422 () Bool)

(declare-fun tp!1705929 () Bool)

(declare-fun tp!1705933 () Bool)

(assert (=> b!6109262 (= e!3725422 (and tp!1705929 tp!1705933))))

(declare-fun b!6109260 () Bool)

(declare-fun tp!1705930 () Bool)

(declare-fun tp!1705931 () Bool)

(assert (=> b!6109260 (= e!3725422 (and tp!1705930 tp!1705931))))

(assert (=> b!6107163 (= tp!1705089 e!3725422)))

(declare-fun b!6109259 () Bool)

(assert (=> b!6109259 (= e!3725422 tp_is_empty!41367)))

(declare-fun b!6109261 () Bool)

(declare-fun tp!1705932 () Bool)

(assert (=> b!6109261 (= e!3725422 tp!1705932)))

(assert (= (and b!6107163 ((_ is ElementMatch!16057) (reg!16386 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109259))

(assert (= (and b!6107163 ((_ is Concat!24902) (reg!16386 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109260))

(assert (= (and b!6107163 ((_ is Star!16057) (reg!16386 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109261))

(assert (= (and b!6107163 ((_ is Union!16057) (reg!16386 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109262))

(declare-fun b!6109266 () Bool)

(declare-fun e!3725423 () Bool)

(declare-fun tp!1705934 () Bool)

(declare-fun tp!1705938 () Bool)

(assert (=> b!6109266 (= e!3725423 (and tp!1705934 tp!1705938))))

(declare-fun b!6109264 () Bool)

(declare-fun tp!1705935 () Bool)

(declare-fun tp!1705936 () Bool)

(assert (=> b!6109264 (= e!3725423 (and tp!1705935 tp!1705936))))

(assert (=> b!6107187 (= tp!1705119 e!3725423)))

(declare-fun b!6109263 () Bool)

(assert (=> b!6109263 (= e!3725423 tp_is_empty!41367)))

(declare-fun b!6109265 () Bool)

(declare-fun tp!1705937 () Bool)

(assert (=> b!6109265 (= e!3725423 tp!1705937)))

(assert (= (and b!6107187 ((_ is ElementMatch!16057) (regOne!32626 (regTwo!32627 (reg!16386 r!7292))))) b!6109263))

(assert (= (and b!6107187 ((_ is Concat!24902) (regOne!32626 (regTwo!32627 (reg!16386 r!7292))))) b!6109264))

(assert (= (and b!6107187 ((_ is Star!16057) (regOne!32626 (regTwo!32627 (reg!16386 r!7292))))) b!6109265))

(assert (= (and b!6107187 ((_ is Union!16057) (regOne!32626 (regTwo!32627 (reg!16386 r!7292))))) b!6109266))

(declare-fun b!6109270 () Bool)

(declare-fun e!3725424 () Bool)

(declare-fun tp!1705939 () Bool)

(declare-fun tp!1705943 () Bool)

(assert (=> b!6109270 (= e!3725424 (and tp!1705939 tp!1705943))))

(declare-fun b!6109268 () Bool)

(declare-fun tp!1705940 () Bool)

(declare-fun tp!1705941 () Bool)

(assert (=> b!6109268 (= e!3725424 (and tp!1705940 tp!1705941))))

(assert (=> b!6107187 (= tp!1705120 e!3725424)))

(declare-fun b!6109267 () Bool)

(assert (=> b!6109267 (= e!3725424 tp_is_empty!41367)))

(declare-fun b!6109269 () Bool)

(declare-fun tp!1705942 () Bool)

(assert (=> b!6109269 (= e!3725424 tp!1705942)))

(assert (= (and b!6107187 ((_ is ElementMatch!16057) (regTwo!32626 (regTwo!32627 (reg!16386 r!7292))))) b!6109267))

(assert (= (and b!6107187 ((_ is Concat!24902) (regTwo!32626 (regTwo!32627 (reg!16386 r!7292))))) b!6109268))

(assert (= (and b!6107187 ((_ is Star!16057) (regTwo!32626 (regTwo!32627 (reg!16386 r!7292))))) b!6109269))

(assert (= (and b!6107187 ((_ is Union!16057) (regTwo!32626 (regTwo!32627 (reg!16386 r!7292))))) b!6109270))

(declare-fun b!6109274 () Bool)

(declare-fun e!3725425 () Bool)

(declare-fun tp!1705944 () Bool)

(declare-fun tp!1705948 () Bool)

(assert (=> b!6109274 (= e!3725425 (and tp!1705944 tp!1705948))))

(declare-fun b!6109272 () Bool)

(declare-fun tp!1705945 () Bool)

(declare-fun tp!1705946 () Bool)

(assert (=> b!6109272 (= e!3725425 (and tp!1705945 tp!1705946))))

(assert (=> b!6107189 (= tp!1705118 e!3725425)))

(declare-fun b!6109271 () Bool)

(assert (=> b!6109271 (= e!3725425 tp_is_empty!41367)))

(declare-fun b!6109273 () Bool)

(declare-fun tp!1705947 () Bool)

(assert (=> b!6109273 (= e!3725425 tp!1705947)))

(assert (= (and b!6107189 ((_ is ElementMatch!16057) (regOne!32627 (regTwo!32627 (reg!16386 r!7292))))) b!6109271))

(assert (= (and b!6107189 ((_ is Concat!24902) (regOne!32627 (regTwo!32627 (reg!16386 r!7292))))) b!6109272))

(assert (= (and b!6107189 ((_ is Star!16057) (regOne!32627 (regTwo!32627 (reg!16386 r!7292))))) b!6109273))

(assert (= (and b!6107189 ((_ is Union!16057) (regOne!32627 (regTwo!32627 (reg!16386 r!7292))))) b!6109274))

(declare-fun b!6109278 () Bool)

(declare-fun e!3725426 () Bool)

(declare-fun tp!1705949 () Bool)

(declare-fun tp!1705953 () Bool)

(assert (=> b!6109278 (= e!3725426 (and tp!1705949 tp!1705953))))

(declare-fun b!6109276 () Bool)

(declare-fun tp!1705950 () Bool)

(declare-fun tp!1705951 () Bool)

(assert (=> b!6109276 (= e!3725426 (and tp!1705950 tp!1705951))))

(assert (=> b!6107189 (= tp!1705122 e!3725426)))

(declare-fun b!6109275 () Bool)

(assert (=> b!6109275 (= e!3725426 tp_is_empty!41367)))

(declare-fun b!6109277 () Bool)

(declare-fun tp!1705952 () Bool)

(assert (=> b!6109277 (= e!3725426 tp!1705952)))

(assert (= (and b!6107189 ((_ is ElementMatch!16057) (regTwo!32627 (regTwo!32627 (reg!16386 r!7292))))) b!6109275))

(assert (= (and b!6107189 ((_ is Concat!24902) (regTwo!32627 (regTwo!32627 (reg!16386 r!7292))))) b!6109276))

(assert (= (and b!6107189 ((_ is Star!16057) (regTwo!32627 (regTwo!32627 (reg!16386 r!7292))))) b!6109277))

(assert (= (and b!6107189 ((_ is Union!16057) (regTwo!32627 (regTwo!32627 (reg!16386 r!7292))))) b!6109278))

(declare-fun b!6109282 () Bool)

(declare-fun e!3725427 () Bool)

(declare-fun tp!1705954 () Bool)

(declare-fun tp!1705958 () Bool)

(assert (=> b!6109282 (= e!3725427 (and tp!1705954 tp!1705958))))

(declare-fun b!6109280 () Bool)

(declare-fun tp!1705955 () Bool)

(declare-fun tp!1705956 () Bool)

(assert (=> b!6109280 (= e!3725427 (and tp!1705955 tp!1705956))))

(assert (=> b!6107138 (= tp!1705058 e!3725427)))

(declare-fun b!6109279 () Bool)

(assert (=> b!6109279 (= e!3725427 tp_is_empty!41367)))

(declare-fun b!6109281 () Bool)

(declare-fun tp!1705957 () Bool)

(assert (=> b!6109281 (= e!3725427 tp!1705957)))

(assert (= (and b!6107138 ((_ is ElementMatch!16057) (reg!16386 (regOne!32626 (regOne!32626 r!7292))))) b!6109279))

(assert (= (and b!6107138 ((_ is Concat!24902) (reg!16386 (regOne!32626 (regOne!32626 r!7292))))) b!6109280))

(assert (= (and b!6107138 ((_ is Star!16057) (reg!16386 (regOne!32626 (regOne!32626 r!7292))))) b!6109281))

(assert (= (and b!6107138 ((_ is Union!16057) (reg!16386 (regOne!32626 (regOne!32626 r!7292))))) b!6109282))

(declare-fun b!6109286 () Bool)

(declare-fun e!3725428 () Bool)

(declare-fun tp!1705959 () Bool)

(declare-fun tp!1705963 () Bool)

(assert (=> b!6109286 (= e!3725428 (and tp!1705959 tp!1705963))))

(declare-fun b!6109284 () Bool)

(declare-fun tp!1705960 () Bool)

(declare-fun tp!1705961 () Bool)

(assert (=> b!6109284 (= e!3725428 (and tp!1705960 tp!1705961))))

(assert (=> b!6107180 (= tp!1705111 e!3725428)))

(declare-fun b!6109283 () Bool)

(assert (=> b!6109283 (= e!3725428 tp_is_empty!41367)))

(declare-fun b!6109285 () Bool)

(declare-fun tp!1705962 () Bool)

(assert (=> b!6109285 (= e!3725428 tp!1705962)))

(assert (= (and b!6107180 ((_ is ElementMatch!16057) (reg!16386 (reg!16386 (regTwo!32627 r!7292))))) b!6109283))

(assert (= (and b!6107180 ((_ is Concat!24902) (reg!16386 (reg!16386 (regTwo!32627 r!7292))))) b!6109284))

(assert (= (and b!6107180 ((_ is Star!16057) (reg!16386 (reg!16386 (regTwo!32627 r!7292))))) b!6109285))

(assert (= (and b!6107180 ((_ is Union!16057) (reg!16386 (reg!16386 (regTwo!32627 r!7292))))) b!6109286))

(declare-fun b!6109290 () Bool)

(declare-fun e!3725429 () Bool)

(declare-fun tp!1705964 () Bool)

(declare-fun tp!1705968 () Bool)

(assert (=> b!6109290 (= e!3725429 (and tp!1705964 tp!1705968))))

(declare-fun b!6109288 () Bool)

(declare-fun tp!1705965 () Bool)

(declare-fun tp!1705966 () Bool)

(assert (=> b!6109288 (= e!3725429 (and tp!1705965 tp!1705966))))

(assert (=> b!6107154 (= tp!1705077 e!3725429)))

(declare-fun b!6109287 () Bool)

(assert (=> b!6109287 (= e!3725429 tp_is_empty!41367)))

(declare-fun b!6109289 () Bool)

(declare-fun tp!1705967 () Bool)

(assert (=> b!6109289 (= e!3725429 tp!1705967)))

(assert (= (and b!6107154 ((_ is ElementMatch!16057) (regOne!32626 (reg!16386 (regOne!32626 r!7292))))) b!6109287))

(assert (= (and b!6107154 ((_ is Concat!24902) (regOne!32626 (reg!16386 (regOne!32626 r!7292))))) b!6109288))

(assert (= (and b!6107154 ((_ is Star!16057) (regOne!32626 (reg!16386 (regOne!32626 r!7292))))) b!6109289))

(assert (= (and b!6107154 ((_ is Union!16057) (regOne!32626 (reg!16386 (regOne!32626 r!7292))))) b!6109290))

(declare-fun b!6109294 () Bool)

(declare-fun e!3725430 () Bool)

(declare-fun tp!1705969 () Bool)

(declare-fun tp!1705973 () Bool)

(assert (=> b!6109294 (= e!3725430 (and tp!1705969 tp!1705973))))

(declare-fun b!6109292 () Bool)

(declare-fun tp!1705970 () Bool)

(declare-fun tp!1705971 () Bool)

(assert (=> b!6109292 (= e!3725430 (and tp!1705970 tp!1705971))))

(assert (=> b!6107154 (= tp!1705078 e!3725430)))

(declare-fun b!6109291 () Bool)

(assert (=> b!6109291 (= e!3725430 tp_is_empty!41367)))

(declare-fun b!6109293 () Bool)

(declare-fun tp!1705972 () Bool)

(assert (=> b!6109293 (= e!3725430 tp!1705972)))

(assert (= (and b!6107154 ((_ is ElementMatch!16057) (regTwo!32626 (reg!16386 (regOne!32626 r!7292))))) b!6109291))

(assert (= (and b!6107154 ((_ is Concat!24902) (regTwo!32626 (reg!16386 (regOne!32626 r!7292))))) b!6109292))

(assert (= (and b!6107154 ((_ is Star!16057) (regTwo!32626 (reg!16386 (regOne!32626 r!7292))))) b!6109293))

(assert (= (and b!6107154 ((_ is Union!16057) (regTwo!32626 (reg!16386 (regOne!32626 r!7292))))) b!6109294))

(declare-fun b!6109298 () Bool)

(declare-fun e!3725431 () Bool)

(declare-fun tp!1705974 () Bool)

(declare-fun tp!1705978 () Bool)

(assert (=> b!6109298 (= e!3725431 (and tp!1705974 tp!1705978))))

(declare-fun b!6109296 () Bool)

(declare-fun tp!1705975 () Bool)

(declare-fun tp!1705976 () Bool)

(assert (=> b!6109296 (= e!3725431 (and tp!1705975 tp!1705976))))

(assert (=> b!6107249 (= tp!1705199 e!3725431)))

(declare-fun b!6109295 () Bool)

(assert (=> b!6109295 (= e!3725431 tp_is_empty!41367)))

(declare-fun b!6109297 () Bool)

(declare-fun tp!1705977 () Bool)

(assert (=> b!6109297 (= e!3725431 tp!1705977)))

(assert (= (and b!6107249 ((_ is ElementMatch!16057) (regOne!32626 (reg!16386 (regOne!32627 r!7292))))) b!6109295))

(assert (= (and b!6107249 ((_ is Concat!24902) (regOne!32626 (reg!16386 (regOne!32627 r!7292))))) b!6109296))

(assert (= (and b!6107249 ((_ is Star!16057) (regOne!32626 (reg!16386 (regOne!32627 r!7292))))) b!6109297))

(assert (= (and b!6107249 ((_ is Union!16057) (regOne!32626 (reg!16386 (regOne!32627 r!7292))))) b!6109298))

(declare-fun b!6109302 () Bool)

(declare-fun e!3725432 () Bool)

(declare-fun tp!1705979 () Bool)

(declare-fun tp!1705983 () Bool)

(assert (=> b!6109302 (= e!3725432 (and tp!1705979 tp!1705983))))

(declare-fun b!6109300 () Bool)

(declare-fun tp!1705980 () Bool)

(declare-fun tp!1705981 () Bool)

(assert (=> b!6109300 (= e!3725432 (and tp!1705980 tp!1705981))))

(assert (=> b!6107249 (= tp!1705200 e!3725432)))

(declare-fun b!6109299 () Bool)

(assert (=> b!6109299 (= e!3725432 tp_is_empty!41367)))

(declare-fun b!6109301 () Bool)

(declare-fun tp!1705982 () Bool)

(assert (=> b!6109301 (= e!3725432 tp!1705982)))

(assert (= (and b!6107249 ((_ is ElementMatch!16057) (regTwo!32626 (reg!16386 (regOne!32627 r!7292))))) b!6109299))

(assert (= (and b!6107249 ((_ is Concat!24902) (regTwo!32626 (reg!16386 (regOne!32627 r!7292))))) b!6109300))

(assert (= (and b!6107249 ((_ is Star!16057) (regTwo!32626 (reg!16386 (regOne!32627 r!7292))))) b!6109301))

(assert (= (and b!6107249 ((_ is Union!16057) (regTwo!32626 (reg!16386 (regOne!32627 r!7292))))) b!6109302))

(declare-fun b!6109306 () Bool)

(declare-fun e!3725433 () Bool)

(declare-fun tp!1705984 () Bool)

(declare-fun tp!1705988 () Bool)

(assert (=> b!6109306 (= e!3725433 (and tp!1705984 tp!1705988))))

(declare-fun b!6109304 () Bool)

(declare-fun tp!1705985 () Bool)

(declare-fun tp!1705986 () Bool)

(assert (=> b!6109304 (= e!3725433 (and tp!1705985 tp!1705986))))

(assert (=> b!6107147 (= tp!1705065 e!3725433)))

(declare-fun b!6109303 () Bool)

(assert (=> b!6109303 (= e!3725433 tp_is_empty!41367)))

(declare-fun b!6109305 () Bool)

(declare-fun tp!1705987 () Bool)

(assert (=> b!6109305 (= e!3725433 tp!1705987)))

(assert (= (and b!6107147 ((_ is ElementMatch!16057) (regOne!32627 (regOne!32627 (regOne!32626 r!7292))))) b!6109303))

(assert (= (and b!6107147 ((_ is Concat!24902) (regOne!32627 (regOne!32627 (regOne!32626 r!7292))))) b!6109304))

(assert (= (and b!6107147 ((_ is Star!16057) (regOne!32627 (regOne!32627 (regOne!32626 r!7292))))) b!6109305))

(assert (= (and b!6107147 ((_ is Union!16057) (regOne!32627 (regOne!32627 (regOne!32626 r!7292))))) b!6109306))

(declare-fun b!6109310 () Bool)

(declare-fun e!3725434 () Bool)

(declare-fun tp!1705989 () Bool)

(declare-fun tp!1705993 () Bool)

(assert (=> b!6109310 (= e!3725434 (and tp!1705989 tp!1705993))))

(declare-fun b!6109308 () Bool)

(declare-fun tp!1705990 () Bool)

(declare-fun tp!1705991 () Bool)

(assert (=> b!6109308 (= e!3725434 (and tp!1705990 tp!1705991))))

(assert (=> b!6107147 (= tp!1705069 e!3725434)))

(declare-fun b!6109307 () Bool)

(assert (=> b!6109307 (= e!3725434 tp_is_empty!41367)))

(declare-fun b!6109309 () Bool)

(declare-fun tp!1705992 () Bool)

(assert (=> b!6109309 (= e!3725434 tp!1705992)))

(assert (= (and b!6107147 ((_ is ElementMatch!16057) (regTwo!32627 (regOne!32627 (regOne!32626 r!7292))))) b!6109307))

(assert (= (and b!6107147 ((_ is Concat!24902) (regTwo!32627 (regOne!32627 (regOne!32626 r!7292))))) b!6109308))

(assert (= (and b!6107147 ((_ is Star!16057) (regTwo!32627 (regOne!32627 (regOne!32626 r!7292))))) b!6109309))

(assert (= (and b!6107147 ((_ is Union!16057) (regTwo!32627 (regOne!32627 (regOne!32626 r!7292))))) b!6109310))

(declare-fun b!6109314 () Bool)

(declare-fun e!3725435 () Bool)

(declare-fun tp!1705994 () Bool)

(declare-fun tp!1705998 () Bool)

(assert (=> b!6109314 (= e!3725435 (and tp!1705994 tp!1705998))))

(declare-fun b!6109312 () Bool)

(declare-fun tp!1705995 () Bool)

(declare-fun tp!1705996 () Bool)

(assert (=> b!6109312 (= e!3725435 (and tp!1705995 tp!1705996))))

(assert (=> b!6107156 (= tp!1705076 e!3725435)))

(declare-fun b!6109311 () Bool)

(assert (=> b!6109311 (= e!3725435 tp_is_empty!41367)))

(declare-fun b!6109313 () Bool)

(declare-fun tp!1705997 () Bool)

(assert (=> b!6109313 (= e!3725435 tp!1705997)))

(assert (= (and b!6107156 ((_ is ElementMatch!16057) (regOne!32627 (reg!16386 (regOne!32626 r!7292))))) b!6109311))

(assert (= (and b!6107156 ((_ is Concat!24902) (regOne!32627 (reg!16386 (regOne!32626 r!7292))))) b!6109312))

(assert (= (and b!6107156 ((_ is Star!16057) (regOne!32627 (reg!16386 (regOne!32626 r!7292))))) b!6109313))

(assert (= (and b!6107156 ((_ is Union!16057) (regOne!32627 (reg!16386 (regOne!32626 r!7292))))) b!6109314))

(declare-fun b!6109318 () Bool)

(declare-fun e!3725436 () Bool)

(declare-fun tp!1705999 () Bool)

(declare-fun tp!1706003 () Bool)

(assert (=> b!6109318 (= e!3725436 (and tp!1705999 tp!1706003))))

(declare-fun b!6109316 () Bool)

(declare-fun tp!1706000 () Bool)

(declare-fun tp!1706001 () Bool)

(assert (=> b!6109316 (= e!3725436 (and tp!1706000 tp!1706001))))

(assert (=> b!6107156 (= tp!1705080 e!3725436)))

(declare-fun b!6109315 () Bool)

(assert (=> b!6109315 (= e!3725436 tp_is_empty!41367)))

(declare-fun b!6109317 () Bool)

(declare-fun tp!1706002 () Bool)

(assert (=> b!6109317 (= e!3725436 tp!1706002)))

(assert (= (and b!6107156 ((_ is ElementMatch!16057) (regTwo!32627 (reg!16386 (regOne!32626 r!7292))))) b!6109315))

(assert (= (and b!6107156 ((_ is Concat!24902) (regTwo!32627 (reg!16386 (regOne!32626 r!7292))))) b!6109316))

(assert (= (and b!6107156 ((_ is Star!16057) (regTwo!32627 (reg!16386 (regOne!32626 r!7292))))) b!6109317))

(assert (= (and b!6107156 ((_ is Union!16057) (regTwo!32627 (reg!16386 (regOne!32626 r!7292))))) b!6109318))

(declare-fun b!6109322 () Bool)

(declare-fun e!3725437 () Bool)

(declare-fun tp!1706004 () Bool)

(declare-fun tp!1706008 () Bool)

(assert (=> b!6109322 (= e!3725437 (and tp!1706004 tp!1706008))))

(declare-fun b!6109320 () Bool)

(declare-fun tp!1706005 () Bool)

(declare-fun tp!1706006 () Bool)

(assert (=> b!6109320 (= e!3725437 (and tp!1706005 tp!1706006))))

(assert (=> b!6107251 (= tp!1705198 e!3725437)))

(declare-fun b!6109319 () Bool)

(assert (=> b!6109319 (= e!3725437 tp_is_empty!41367)))

(declare-fun b!6109321 () Bool)

(declare-fun tp!1706007 () Bool)

(assert (=> b!6109321 (= e!3725437 tp!1706007)))

(assert (= (and b!6107251 ((_ is ElementMatch!16057) (regOne!32627 (reg!16386 (regOne!32627 r!7292))))) b!6109319))

(assert (= (and b!6107251 ((_ is Concat!24902) (regOne!32627 (reg!16386 (regOne!32627 r!7292))))) b!6109320))

(assert (= (and b!6107251 ((_ is Star!16057) (regOne!32627 (reg!16386 (regOne!32627 r!7292))))) b!6109321))

(assert (= (and b!6107251 ((_ is Union!16057) (regOne!32627 (reg!16386 (regOne!32627 r!7292))))) b!6109322))

(declare-fun b!6109326 () Bool)

(declare-fun e!3725438 () Bool)

(declare-fun tp!1706009 () Bool)

(declare-fun tp!1706013 () Bool)

(assert (=> b!6109326 (= e!3725438 (and tp!1706009 tp!1706013))))

(declare-fun b!6109324 () Bool)

(declare-fun tp!1706010 () Bool)

(declare-fun tp!1706011 () Bool)

(assert (=> b!6109324 (= e!3725438 (and tp!1706010 tp!1706011))))

(assert (=> b!6107251 (= tp!1705202 e!3725438)))

(declare-fun b!6109323 () Bool)

(assert (=> b!6109323 (= e!3725438 tp_is_empty!41367)))

(declare-fun b!6109325 () Bool)

(declare-fun tp!1706012 () Bool)

(assert (=> b!6109325 (= e!3725438 tp!1706012)))

(assert (= (and b!6107251 ((_ is ElementMatch!16057) (regTwo!32627 (reg!16386 (regOne!32627 r!7292))))) b!6109323))

(assert (= (and b!6107251 ((_ is Concat!24902) (regTwo!32627 (reg!16386 (regOne!32627 r!7292))))) b!6109324))

(assert (= (and b!6107251 ((_ is Star!16057) (regTwo!32627 (reg!16386 (regOne!32627 r!7292))))) b!6109325))

(assert (= (and b!6107251 ((_ is Union!16057) (regTwo!32627 (reg!16386 (regOne!32627 r!7292))))) b!6109326))

(declare-fun b!6109328 () Bool)

(declare-fun e!3725440 () Bool)

(declare-fun tp!1706014 () Bool)

(assert (=> b!6109328 (= e!3725440 tp!1706014)))

(declare-fun e!3725439 () Bool)

(declare-fun tp!1706015 () Bool)

(declare-fun b!6109327 () Bool)

(assert (=> b!6109327 (= e!3725439 (and (inv!83389 (h!70795 (t!377924 res!2533515))) e!3725440 tp!1706015))))

(assert (=> b!6107017 (= tp!1705054 e!3725439)))

(assert (= b!6109327 b!6109328))

(assert (= (and b!6107017 ((_ is Cons!64347) (t!377924 res!2533515))) b!6109327))

(declare-fun m!6959340 () Bool)

(assert (=> b!6109327 m!6959340))

(declare-fun b!6109332 () Bool)

(declare-fun e!3725441 () Bool)

(declare-fun tp!1706016 () Bool)

(declare-fun tp!1706020 () Bool)

(assert (=> b!6109332 (= e!3725441 (and tp!1706016 tp!1706020))))

(declare-fun b!6109330 () Bool)

(declare-fun tp!1706017 () Bool)

(declare-fun tp!1706018 () Bool)

(assert (=> b!6109330 (= e!3725441 (and tp!1706017 tp!1706018))))

(assert (=> b!6107171 (= tp!1705099 e!3725441)))

(declare-fun b!6109329 () Bool)

(assert (=> b!6109329 (= e!3725441 tp_is_empty!41367)))

(declare-fun b!6109331 () Bool)

(declare-fun tp!1706019 () Bool)

(assert (=> b!6109331 (= e!3725441 tp!1706019)))

(assert (= (and b!6107171 ((_ is ElementMatch!16057) (regOne!32626 (regOne!32627 (regTwo!32627 r!7292))))) b!6109329))

(assert (= (and b!6107171 ((_ is Concat!24902) (regOne!32626 (regOne!32627 (regTwo!32627 r!7292))))) b!6109330))

(assert (= (and b!6107171 ((_ is Star!16057) (regOne!32626 (regOne!32627 (regTwo!32627 r!7292))))) b!6109331))

(assert (= (and b!6107171 ((_ is Union!16057) (regOne!32626 (regOne!32627 (regTwo!32627 r!7292))))) b!6109332))

(declare-fun b!6109336 () Bool)

(declare-fun e!3725442 () Bool)

(declare-fun tp!1706021 () Bool)

(declare-fun tp!1706025 () Bool)

(assert (=> b!6109336 (= e!3725442 (and tp!1706021 tp!1706025))))

(declare-fun b!6109334 () Bool)

(declare-fun tp!1706022 () Bool)

(declare-fun tp!1706023 () Bool)

(assert (=> b!6109334 (= e!3725442 (and tp!1706022 tp!1706023))))

(assert (=> b!6107171 (= tp!1705100 e!3725442)))

(declare-fun b!6109333 () Bool)

(assert (=> b!6109333 (= e!3725442 tp_is_empty!41367)))

(declare-fun b!6109335 () Bool)

(declare-fun tp!1706024 () Bool)

(assert (=> b!6109335 (= e!3725442 tp!1706024)))

(assert (= (and b!6107171 ((_ is ElementMatch!16057) (regTwo!32626 (regOne!32627 (regTwo!32627 r!7292))))) b!6109333))

(assert (= (and b!6107171 ((_ is Concat!24902) (regTwo!32626 (regOne!32627 (regTwo!32627 r!7292))))) b!6109334))

(assert (= (and b!6107171 ((_ is Star!16057) (regTwo!32626 (regOne!32627 (regTwo!32627 r!7292))))) b!6109335))

(assert (= (and b!6107171 ((_ is Union!16057) (regTwo!32626 (regOne!32627 (regTwo!32627 r!7292))))) b!6109336))

(declare-fun b!6109340 () Bool)

(declare-fun e!3725443 () Bool)

(declare-fun tp!1706026 () Bool)

(declare-fun tp!1706030 () Bool)

(assert (=> b!6109340 (= e!3725443 (and tp!1706026 tp!1706030))))

(declare-fun b!6109338 () Bool)

(declare-fun tp!1706027 () Bool)

(declare-fun tp!1706028 () Bool)

(assert (=> b!6109338 (= e!3725443 (and tp!1706027 tp!1706028))))

(assert (=> b!6107219 (= tp!1705157 e!3725443)))

(declare-fun b!6109337 () Bool)

(assert (=> b!6109337 (= e!3725443 tp_is_empty!41367)))

(declare-fun b!6109339 () Bool)

(declare-fun tp!1706029 () Bool)

(assert (=> b!6109339 (= e!3725443 tp!1706029)))

(assert (= (and b!6107219 ((_ is ElementMatch!16057) (regOne!32627 (regOne!32627 (regTwo!32626 r!7292))))) b!6109337))

(assert (= (and b!6107219 ((_ is Concat!24902) (regOne!32627 (regOne!32627 (regTwo!32626 r!7292))))) b!6109338))

(assert (= (and b!6107219 ((_ is Star!16057) (regOne!32627 (regOne!32627 (regTwo!32626 r!7292))))) b!6109339))

(assert (= (and b!6107219 ((_ is Union!16057) (regOne!32627 (regOne!32627 (regTwo!32626 r!7292))))) b!6109340))

(declare-fun b!6109344 () Bool)

(declare-fun e!3725444 () Bool)

(declare-fun tp!1706031 () Bool)

(declare-fun tp!1706035 () Bool)

(assert (=> b!6109344 (= e!3725444 (and tp!1706031 tp!1706035))))

(declare-fun b!6109342 () Bool)

(declare-fun tp!1706032 () Bool)

(declare-fun tp!1706033 () Bool)

(assert (=> b!6109342 (= e!3725444 (and tp!1706032 tp!1706033))))

(assert (=> b!6107219 (= tp!1705161 e!3725444)))

(declare-fun b!6109341 () Bool)

(assert (=> b!6109341 (= e!3725444 tp_is_empty!41367)))

(declare-fun b!6109343 () Bool)

(declare-fun tp!1706034 () Bool)

(assert (=> b!6109343 (= e!3725444 tp!1706034)))

(assert (= (and b!6107219 ((_ is ElementMatch!16057) (regTwo!32627 (regOne!32627 (regTwo!32626 r!7292))))) b!6109341))

(assert (= (and b!6107219 ((_ is Concat!24902) (regTwo!32627 (regOne!32627 (regTwo!32626 r!7292))))) b!6109342))

(assert (= (and b!6107219 ((_ is Star!16057) (regTwo!32627 (regOne!32627 (regTwo!32626 r!7292))))) b!6109343))

(assert (= (and b!6107219 ((_ is Union!16057) (regTwo!32627 (regOne!32627 (regTwo!32626 r!7292))))) b!6109344))

(declare-fun b!6109348 () Bool)

(declare-fun e!3725445 () Bool)

(declare-fun tp!1706036 () Bool)

(declare-fun tp!1706040 () Bool)

(assert (=> b!6109348 (= e!3725445 (and tp!1706036 tp!1706040))))

(declare-fun b!6109346 () Bool)

(declare-fun tp!1706037 () Bool)

(declare-fun tp!1706038 () Bool)

(assert (=> b!6109346 (= e!3725445 (and tp!1706037 tp!1706038))))

(assert (=> b!6107173 (= tp!1705098 e!3725445)))

(declare-fun b!6109345 () Bool)

(assert (=> b!6109345 (= e!3725445 tp_is_empty!41367)))

(declare-fun b!6109347 () Bool)

(declare-fun tp!1706039 () Bool)

(assert (=> b!6109347 (= e!3725445 tp!1706039)))

(assert (= (and b!6107173 ((_ is ElementMatch!16057) (regOne!32627 (regOne!32627 (regTwo!32627 r!7292))))) b!6109345))

(assert (= (and b!6107173 ((_ is Concat!24902) (regOne!32627 (regOne!32627 (regTwo!32627 r!7292))))) b!6109346))

(assert (= (and b!6107173 ((_ is Star!16057) (regOne!32627 (regOne!32627 (regTwo!32627 r!7292))))) b!6109347))

(assert (= (and b!6107173 ((_ is Union!16057) (regOne!32627 (regOne!32627 (regTwo!32627 r!7292))))) b!6109348))

(declare-fun b!6109352 () Bool)

(declare-fun e!3725446 () Bool)

(declare-fun tp!1706041 () Bool)

(declare-fun tp!1706045 () Bool)

(assert (=> b!6109352 (= e!3725446 (and tp!1706041 tp!1706045))))

(declare-fun b!6109350 () Bool)

(declare-fun tp!1706042 () Bool)

(declare-fun tp!1706043 () Bool)

(assert (=> b!6109350 (= e!3725446 (and tp!1706042 tp!1706043))))

(assert (=> b!6107173 (= tp!1705102 e!3725446)))

(declare-fun b!6109349 () Bool)

(assert (=> b!6109349 (= e!3725446 tp_is_empty!41367)))

(declare-fun b!6109351 () Bool)

(declare-fun tp!1706044 () Bool)

(assert (=> b!6109351 (= e!3725446 tp!1706044)))

(assert (= (and b!6107173 ((_ is ElementMatch!16057) (regTwo!32627 (regOne!32627 (regTwo!32627 r!7292))))) b!6109349))

(assert (= (and b!6107173 ((_ is Concat!24902) (regTwo!32627 (regOne!32627 (regTwo!32627 r!7292))))) b!6109350))

(assert (= (and b!6107173 ((_ is Star!16057) (regTwo!32627 (regOne!32627 (regTwo!32627 r!7292))))) b!6109351))

(assert (= (and b!6107173 ((_ is Union!16057) (regTwo!32627 (regOne!32627 (regTwo!32627 r!7292))))) b!6109352))

(declare-fun b!6109356 () Bool)

(declare-fun e!3725447 () Bool)

(declare-fun tp!1706046 () Bool)

(declare-fun tp!1706050 () Bool)

(assert (=> b!6109356 (= e!3725447 (and tp!1706046 tp!1706050))))

(declare-fun b!6109354 () Bool)

(declare-fun tp!1706047 () Bool)

(declare-fun tp!1706048 () Bool)

(assert (=> b!6109354 (= e!3725447 (and tp!1706047 tp!1706048))))

(assert (=> b!6107235 (= tp!1705180 e!3725447)))

(declare-fun b!6109353 () Bool)

(assert (=> b!6109353 (= e!3725447 tp_is_empty!41367)))

(declare-fun b!6109355 () Bool)

(declare-fun tp!1706049 () Bool)

(assert (=> b!6109355 (= e!3725447 tp!1706049)))

(assert (= (and b!6107235 ((_ is ElementMatch!16057) (regOne!32626 (h!70794 (exprs!5941 setElem!41260))))) b!6109353))

(assert (= (and b!6107235 ((_ is Concat!24902) (regOne!32626 (h!70794 (exprs!5941 setElem!41260))))) b!6109354))

(assert (= (and b!6107235 ((_ is Star!16057) (regOne!32626 (h!70794 (exprs!5941 setElem!41260))))) b!6109355))

(assert (= (and b!6107235 ((_ is Union!16057) (regOne!32626 (h!70794 (exprs!5941 setElem!41260))))) b!6109356))

(declare-fun b!6109360 () Bool)

(declare-fun e!3725448 () Bool)

(declare-fun tp!1706051 () Bool)

(declare-fun tp!1706055 () Bool)

(assert (=> b!6109360 (= e!3725448 (and tp!1706051 tp!1706055))))

(declare-fun b!6109358 () Bool)

(declare-fun tp!1706052 () Bool)

(declare-fun tp!1706053 () Bool)

(assert (=> b!6109358 (= e!3725448 (and tp!1706052 tp!1706053))))

(assert (=> b!6107235 (= tp!1705181 e!3725448)))

(declare-fun b!6109357 () Bool)

(assert (=> b!6109357 (= e!3725448 tp_is_empty!41367)))

(declare-fun b!6109359 () Bool)

(declare-fun tp!1706054 () Bool)

(assert (=> b!6109359 (= e!3725448 tp!1706054)))

(assert (= (and b!6107235 ((_ is ElementMatch!16057) (regTwo!32626 (h!70794 (exprs!5941 setElem!41260))))) b!6109357))

(assert (= (and b!6107235 ((_ is Concat!24902) (regTwo!32626 (h!70794 (exprs!5941 setElem!41260))))) b!6109358))

(assert (= (and b!6107235 ((_ is Star!16057) (regTwo!32626 (h!70794 (exprs!5941 setElem!41260))))) b!6109359))

(assert (= (and b!6107235 ((_ is Union!16057) (regTwo!32626 (h!70794 (exprs!5941 setElem!41260))))) b!6109360))

(declare-fun b!6109364 () Bool)

(declare-fun e!3725449 () Bool)

(declare-fun tp!1706056 () Bool)

(declare-fun tp!1706060 () Bool)

(assert (=> b!6109364 (= e!3725449 (and tp!1706056 tp!1706060))))

(declare-fun b!6109362 () Bool)

(declare-fun tp!1706057 () Bool)

(declare-fun tp!1706058 () Bool)

(assert (=> b!6109362 (= e!3725449 (and tp!1706057 tp!1706058))))

(assert (=> b!6107207 (= tp!1705144 e!3725449)))

(declare-fun b!6109361 () Bool)

(assert (=> b!6109361 (= e!3725449 tp_is_empty!41367)))

(declare-fun b!6109363 () Bool)

(declare-fun tp!1706059 () Bool)

(assert (=> b!6109363 (= e!3725449 tp!1706059)))

(assert (= (and b!6107207 ((_ is ElementMatch!16057) (regOne!32626 (regOne!32626 (reg!16386 r!7292))))) b!6109361))

(assert (= (and b!6107207 ((_ is Concat!24902) (regOne!32626 (regOne!32626 (reg!16386 r!7292))))) b!6109362))

(assert (= (and b!6107207 ((_ is Star!16057) (regOne!32626 (regOne!32626 (reg!16386 r!7292))))) b!6109363))

(assert (= (and b!6107207 ((_ is Union!16057) (regOne!32626 (regOne!32626 (reg!16386 r!7292))))) b!6109364))

(declare-fun b!6109368 () Bool)

(declare-fun e!3725450 () Bool)

(declare-fun tp!1706061 () Bool)

(declare-fun tp!1706065 () Bool)

(assert (=> b!6109368 (= e!3725450 (and tp!1706061 tp!1706065))))

(declare-fun b!6109366 () Bool)

(declare-fun tp!1706062 () Bool)

(declare-fun tp!1706063 () Bool)

(assert (=> b!6109366 (= e!3725450 (and tp!1706062 tp!1706063))))

(assert (=> b!6107207 (= tp!1705145 e!3725450)))

(declare-fun b!6109365 () Bool)

(assert (=> b!6109365 (= e!3725450 tp_is_empty!41367)))

(declare-fun b!6109367 () Bool)

(declare-fun tp!1706064 () Bool)

(assert (=> b!6109367 (= e!3725450 tp!1706064)))

(assert (= (and b!6107207 ((_ is ElementMatch!16057) (regTwo!32626 (regOne!32626 (reg!16386 r!7292))))) b!6109365))

(assert (= (and b!6107207 ((_ is Concat!24902) (regTwo!32626 (regOne!32626 (reg!16386 r!7292))))) b!6109366))

(assert (= (and b!6107207 ((_ is Star!16057) (regTwo!32626 (regOne!32626 (reg!16386 r!7292))))) b!6109367))

(assert (= (and b!6107207 ((_ is Union!16057) (regTwo!32626 (regOne!32626 (reg!16386 r!7292))))) b!6109368))

(declare-fun b!6109372 () Bool)

(declare-fun e!3725451 () Bool)

(declare-fun tp!1706066 () Bool)

(declare-fun tp!1706070 () Bool)

(assert (=> b!6109372 (= e!3725451 (and tp!1706066 tp!1706070))))

(declare-fun b!6109370 () Bool)

(declare-fun tp!1706067 () Bool)

(declare-fun tp!1706068 () Bool)

(assert (=> b!6109370 (= e!3725451 (and tp!1706067 tp!1706068))))

(assert (=> b!6107237 (= tp!1705179 e!3725451)))

(declare-fun b!6109369 () Bool)

(assert (=> b!6109369 (= e!3725451 tp_is_empty!41367)))

(declare-fun b!6109371 () Bool)

(declare-fun tp!1706069 () Bool)

(assert (=> b!6109371 (= e!3725451 tp!1706069)))

(assert (= (and b!6107237 ((_ is ElementMatch!16057) (regOne!32627 (h!70794 (exprs!5941 setElem!41260))))) b!6109369))

(assert (= (and b!6107237 ((_ is Concat!24902) (regOne!32627 (h!70794 (exprs!5941 setElem!41260))))) b!6109370))

(assert (= (and b!6107237 ((_ is Star!16057) (regOne!32627 (h!70794 (exprs!5941 setElem!41260))))) b!6109371))

(assert (= (and b!6107237 ((_ is Union!16057) (regOne!32627 (h!70794 (exprs!5941 setElem!41260))))) b!6109372))

(declare-fun b!6109376 () Bool)

(declare-fun e!3725452 () Bool)

(declare-fun tp!1706071 () Bool)

(declare-fun tp!1706075 () Bool)

(assert (=> b!6109376 (= e!3725452 (and tp!1706071 tp!1706075))))

(declare-fun b!6109374 () Bool)

(declare-fun tp!1706072 () Bool)

(declare-fun tp!1706073 () Bool)

(assert (=> b!6109374 (= e!3725452 (and tp!1706072 tp!1706073))))

(assert (=> b!6107237 (= tp!1705183 e!3725452)))

(declare-fun b!6109373 () Bool)

(assert (=> b!6109373 (= e!3725452 tp_is_empty!41367)))

(declare-fun b!6109375 () Bool)

(declare-fun tp!1706074 () Bool)

(assert (=> b!6109375 (= e!3725452 tp!1706074)))

(assert (= (and b!6107237 ((_ is ElementMatch!16057) (regTwo!32627 (h!70794 (exprs!5941 setElem!41260))))) b!6109373))

(assert (= (and b!6107237 ((_ is Concat!24902) (regTwo!32627 (h!70794 (exprs!5941 setElem!41260))))) b!6109374))

(assert (= (and b!6107237 ((_ is Star!16057) (regTwo!32627 (h!70794 (exprs!5941 setElem!41260))))) b!6109375))

(assert (= (and b!6107237 ((_ is Union!16057) (regTwo!32627 (h!70794 (exprs!5941 setElem!41260))))) b!6109376))

(declare-fun b!6109380 () Bool)

(declare-fun e!3725453 () Bool)

(declare-fun tp!1706076 () Bool)

(declare-fun tp!1706080 () Bool)

(assert (=> b!6109380 (= e!3725453 (and tp!1706076 tp!1706080))))

(declare-fun b!6109378 () Bool)

(declare-fun tp!1706077 () Bool)

(declare-fun tp!1706078 () Bool)

(assert (=> b!6109378 (= e!3725453 (and tp!1706077 tp!1706078))))

(assert (=> b!6107228 (= tp!1705172 e!3725453)))

(declare-fun b!6109377 () Bool)

(assert (=> b!6109377 (= e!3725453 tp_is_empty!41367)))

(declare-fun b!6109379 () Bool)

(declare-fun tp!1706079 () Bool)

(assert (=> b!6109379 (= e!3725453 tp!1706079)))

(assert (= (and b!6107228 ((_ is ElementMatch!16057) (reg!16386 (regOne!32626 (regOne!32627 r!7292))))) b!6109377))

(assert (= (and b!6107228 ((_ is Concat!24902) (reg!16386 (regOne!32626 (regOne!32627 r!7292))))) b!6109378))

(assert (= (and b!6107228 ((_ is Star!16057) (reg!16386 (regOne!32626 (regOne!32627 r!7292))))) b!6109379))

(assert (= (and b!6107228 ((_ is Union!16057) (reg!16386 (regOne!32626 (regOne!32627 r!7292))))) b!6109380))

(declare-fun b!6109384 () Bool)

(declare-fun e!3725454 () Bool)

(declare-fun tp!1706081 () Bool)

(declare-fun tp!1706085 () Bool)

(assert (=> b!6109384 (= e!3725454 (and tp!1706081 tp!1706085))))

(declare-fun b!6109382 () Bool)

(declare-fun tp!1706082 () Bool)

(declare-fun tp!1706083 () Bool)

(assert (=> b!6109382 (= e!3725454 (and tp!1706082 tp!1706083))))

(assert (=> b!6107191 (= tp!1705124 e!3725454)))

(declare-fun b!6109381 () Bool)

(assert (=> b!6109381 (= e!3725454 tp_is_empty!41367)))

(declare-fun b!6109383 () Bool)

(declare-fun tp!1706084 () Bool)

(assert (=> b!6109383 (= e!3725454 tp!1706084)))

(assert (= (and b!6107191 ((_ is ElementMatch!16057) (regOne!32626 (reg!16386 (regTwo!32626 r!7292))))) b!6109381))

(assert (= (and b!6107191 ((_ is Concat!24902) (regOne!32626 (reg!16386 (regTwo!32626 r!7292))))) b!6109382))

(assert (= (and b!6107191 ((_ is Star!16057) (regOne!32626 (reg!16386 (regTwo!32626 r!7292))))) b!6109383))

(assert (= (and b!6107191 ((_ is Union!16057) (regOne!32626 (reg!16386 (regTwo!32626 r!7292))))) b!6109384))

(declare-fun b!6109388 () Bool)

(declare-fun e!3725455 () Bool)

(declare-fun tp!1706086 () Bool)

(declare-fun tp!1706090 () Bool)

(assert (=> b!6109388 (= e!3725455 (and tp!1706086 tp!1706090))))

(declare-fun b!6109386 () Bool)

(declare-fun tp!1706087 () Bool)

(declare-fun tp!1706088 () Bool)

(assert (=> b!6109386 (= e!3725455 (and tp!1706087 tp!1706088))))

(assert (=> b!6107191 (= tp!1705125 e!3725455)))

(declare-fun b!6109385 () Bool)

(assert (=> b!6109385 (= e!3725455 tp_is_empty!41367)))

(declare-fun b!6109387 () Bool)

(declare-fun tp!1706089 () Bool)

(assert (=> b!6109387 (= e!3725455 tp!1706089)))

(assert (= (and b!6107191 ((_ is ElementMatch!16057) (regTwo!32626 (reg!16386 (regTwo!32626 r!7292))))) b!6109385))

(assert (= (and b!6107191 ((_ is Concat!24902) (regTwo!32626 (reg!16386 (regTwo!32626 r!7292))))) b!6109386))

(assert (= (and b!6107191 ((_ is Star!16057) (regTwo!32626 (reg!16386 (regTwo!32626 r!7292))))) b!6109387))

(assert (= (and b!6107191 ((_ is Union!16057) (regTwo!32626 (reg!16386 (regTwo!32626 r!7292))))) b!6109388))

(declare-fun b!6109392 () Bool)

(declare-fun e!3725456 () Bool)

(declare-fun tp!1706091 () Bool)

(declare-fun tp!1706095 () Bool)

(assert (=> b!6109392 (= e!3725456 (and tp!1706091 tp!1706095))))

(declare-fun b!6109390 () Bool)

(declare-fun tp!1706092 () Bool)

(declare-fun tp!1706093 () Bool)

(assert (=> b!6109390 (= e!3725456 (and tp!1706092 tp!1706093))))

(assert (=> b!6107209 (= tp!1705143 e!3725456)))

(declare-fun b!6109389 () Bool)

(assert (=> b!6109389 (= e!3725456 tp_is_empty!41367)))

(declare-fun b!6109391 () Bool)

(declare-fun tp!1706094 () Bool)

(assert (=> b!6109391 (= e!3725456 tp!1706094)))

(assert (= (and b!6107209 ((_ is ElementMatch!16057) (regOne!32627 (regOne!32626 (reg!16386 r!7292))))) b!6109389))

(assert (= (and b!6107209 ((_ is Concat!24902) (regOne!32627 (regOne!32626 (reg!16386 r!7292))))) b!6109390))

(assert (= (and b!6107209 ((_ is Star!16057) (regOne!32627 (regOne!32626 (reg!16386 r!7292))))) b!6109391))

(assert (= (and b!6107209 ((_ is Union!16057) (regOne!32627 (regOne!32626 (reg!16386 r!7292))))) b!6109392))

(declare-fun b!6109396 () Bool)

(declare-fun e!3725457 () Bool)

(declare-fun tp!1706096 () Bool)

(declare-fun tp!1706100 () Bool)

(assert (=> b!6109396 (= e!3725457 (and tp!1706096 tp!1706100))))

(declare-fun b!6109394 () Bool)

(declare-fun tp!1706097 () Bool)

(declare-fun tp!1706098 () Bool)

(assert (=> b!6109394 (= e!3725457 (and tp!1706097 tp!1706098))))

(assert (=> b!6107209 (= tp!1705147 e!3725457)))

(declare-fun b!6109393 () Bool)

(assert (=> b!6109393 (= e!3725457 tp_is_empty!41367)))

(declare-fun b!6109395 () Bool)

(declare-fun tp!1706099 () Bool)

(assert (=> b!6109395 (= e!3725457 tp!1706099)))

(assert (= (and b!6107209 ((_ is ElementMatch!16057) (regTwo!32627 (regOne!32626 (reg!16386 r!7292))))) b!6109393))

(assert (= (and b!6107209 ((_ is Concat!24902) (regTwo!32627 (regOne!32626 (reg!16386 r!7292))))) b!6109394))

(assert (= (and b!6107209 ((_ is Star!16057) (regTwo!32627 (regOne!32626 (reg!16386 r!7292))))) b!6109395))

(assert (= (and b!6107209 ((_ is Union!16057) (regTwo!32627 (regOne!32626 (reg!16386 r!7292))))) b!6109396))

(declare-fun b!6109400 () Bool)

(declare-fun e!3725458 () Bool)

(declare-fun tp!1706101 () Bool)

(declare-fun tp!1706105 () Bool)

(assert (=> b!6109400 (= e!3725458 (and tp!1706101 tp!1706105))))

(declare-fun b!6109398 () Bool)

(declare-fun tp!1706102 () Bool)

(declare-fun tp!1706103 () Bool)

(assert (=> b!6109398 (= e!3725458 (and tp!1706102 tp!1706103))))

(assert (=> b!6107200 (= tp!1705136 e!3725458)))

(declare-fun b!6109397 () Bool)

(assert (=> b!6109397 (= e!3725458 tp_is_empty!41367)))

(declare-fun b!6109399 () Bool)

(declare-fun tp!1706104 () Bool)

(assert (=> b!6109399 (= e!3725458 tp!1706104)))

(assert (= (and b!6107200 ((_ is ElementMatch!16057) (reg!16386 (regOne!32626 (regTwo!32626 r!7292))))) b!6109397))

(assert (= (and b!6107200 ((_ is Concat!24902) (reg!16386 (regOne!32626 (regTwo!32626 r!7292))))) b!6109398))

(assert (= (and b!6107200 ((_ is Star!16057) (reg!16386 (regOne!32626 (regTwo!32626 r!7292))))) b!6109399))

(assert (= (and b!6107200 ((_ is Union!16057) (reg!16386 (regOne!32626 (regTwo!32626 r!7292))))) b!6109400))

(declare-fun b!6109404 () Bool)

(declare-fun e!3725459 () Bool)

(declare-fun tp!1706106 () Bool)

(declare-fun tp!1706110 () Bool)

(assert (=> b!6109404 (= e!3725459 (and tp!1706106 tp!1706110))))

(declare-fun b!6109402 () Bool)

(declare-fun tp!1706107 () Bool)

(declare-fun tp!1706108 () Bool)

(assert (=> b!6109402 (= e!3725459 (and tp!1706107 tp!1706108))))

(assert (=> b!6107149 (= tp!1705071 e!3725459)))

(declare-fun b!6109401 () Bool)

(assert (=> b!6109401 (= e!3725459 tp_is_empty!41367)))

(declare-fun b!6109403 () Bool)

(declare-fun tp!1706109 () Bool)

(assert (=> b!6109403 (= e!3725459 tp!1706109)))

(assert (= (and b!6107149 ((_ is ElementMatch!16057) (regOne!32626 (regTwo!32627 (regOne!32626 r!7292))))) b!6109401))

(assert (= (and b!6107149 ((_ is Concat!24902) (regOne!32626 (regTwo!32627 (regOne!32626 r!7292))))) b!6109402))

(assert (= (and b!6107149 ((_ is Star!16057) (regOne!32626 (regTwo!32627 (regOne!32626 r!7292))))) b!6109403))

(assert (= (and b!6107149 ((_ is Union!16057) (regOne!32626 (regTwo!32627 (regOne!32626 r!7292))))) b!6109404))

(declare-fun b!6109408 () Bool)

(declare-fun e!3725460 () Bool)

(declare-fun tp!1706111 () Bool)

(declare-fun tp!1706115 () Bool)

(assert (=> b!6109408 (= e!3725460 (and tp!1706111 tp!1706115))))

(declare-fun b!6109406 () Bool)

(declare-fun tp!1706112 () Bool)

(declare-fun tp!1706113 () Bool)

(assert (=> b!6109406 (= e!3725460 (and tp!1706112 tp!1706113))))

(assert (=> b!6107149 (= tp!1705072 e!3725460)))

(declare-fun b!6109405 () Bool)

(assert (=> b!6109405 (= e!3725460 tp_is_empty!41367)))

(declare-fun b!6109407 () Bool)

(declare-fun tp!1706114 () Bool)

(assert (=> b!6109407 (= e!3725460 tp!1706114)))

(assert (= (and b!6107149 ((_ is ElementMatch!16057) (regTwo!32626 (regTwo!32627 (regOne!32626 r!7292))))) b!6109405))

(assert (= (and b!6107149 ((_ is Concat!24902) (regTwo!32626 (regTwo!32627 (regOne!32626 r!7292))))) b!6109406))

(assert (= (and b!6107149 ((_ is Star!16057) (regTwo!32626 (regTwo!32627 (regOne!32626 r!7292))))) b!6109407))

(assert (= (and b!6107149 ((_ is Union!16057) (regTwo!32626 (regTwo!32627 (regOne!32626 r!7292))))) b!6109408))

(declare-fun b!6109412 () Bool)

(declare-fun e!3725461 () Bool)

(declare-fun tp!1706116 () Bool)

(declare-fun tp!1706120 () Bool)

(assert (=> b!6109412 (= e!3725461 (and tp!1706116 tp!1706120))))

(declare-fun b!6109410 () Bool)

(declare-fun tp!1706117 () Bool)

(declare-fun tp!1706118 () Bool)

(assert (=> b!6109410 (= e!3725461 (and tp!1706117 tp!1706118))))

(assert (=> b!6107245 (= tp!1705194 e!3725461)))

(declare-fun b!6109409 () Bool)

(assert (=> b!6109409 (= e!3725461 tp_is_empty!41367)))

(declare-fun b!6109411 () Bool)

(declare-fun tp!1706119 () Bool)

(assert (=> b!6109411 (= e!3725461 tp!1706119)))

(assert (= (and b!6107245 ((_ is ElementMatch!16057) (reg!16386 (regTwo!32627 (regOne!32627 r!7292))))) b!6109409))

(assert (= (and b!6107245 ((_ is Concat!24902) (reg!16386 (regTwo!32627 (regOne!32627 r!7292))))) b!6109410))

(assert (= (and b!6107245 ((_ is Star!16057) (reg!16386 (regTwo!32627 (regOne!32627 r!7292))))) b!6109411))

(assert (= (and b!6107245 ((_ is Union!16057) (reg!16386 (regTwo!32627 (regOne!32627 r!7292))))) b!6109412))

(declare-fun b!6109416 () Bool)

(declare-fun e!3725462 () Bool)

(declare-fun tp!1706121 () Bool)

(declare-fun tp!1706125 () Bool)

(assert (=> b!6109416 (= e!3725462 (and tp!1706121 tp!1706125))))

(declare-fun b!6109414 () Bool)

(declare-fun tp!1706122 () Bool)

(declare-fun tp!1706123 () Bool)

(assert (=> b!6109414 (= e!3725462 (and tp!1706122 tp!1706123))))

(assert (=> b!6107183 (= tp!1705114 e!3725462)))

(declare-fun b!6109413 () Bool)

(assert (=> b!6109413 (= e!3725462 tp_is_empty!41367)))

(declare-fun b!6109415 () Bool)

(declare-fun tp!1706124 () Bool)

(assert (=> b!6109415 (= e!3725462 tp!1706124)))

(assert (= (and b!6107183 ((_ is ElementMatch!16057) (regOne!32626 (regOne!32627 (reg!16386 r!7292))))) b!6109413))

(assert (= (and b!6107183 ((_ is Concat!24902) (regOne!32626 (regOne!32627 (reg!16386 r!7292))))) b!6109414))

(assert (= (and b!6107183 ((_ is Star!16057) (regOne!32626 (regOne!32627 (reg!16386 r!7292))))) b!6109415))

(assert (= (and b!6107183 ((_ is Union!16057) (regOne!32626 (regOne!32627 (reg!16386 r!7292))))) b!6109416))

(declare-fun b!6109420 () Bool)

(declare-fun e!3725463 () Bool)

(declare-fun tp!1706126 () Bool)

(declare-fun tp!1706130 () Bool)

(assert (=> b!6109420 (= e!3725463 (and tp!1706126 tp!1706130))))

(declare-fun b!6109418 () Bool)

(declare-fun tp!1706127 () Bool)

(declare-fun tp!1706128 () Bool)

(assert (=> b!6109418 (= e!3725463 (and tp!1706127 tp!1706128))))

(assert (=> b!6107183 (= tp!1705115 e!3725463)))

(declare-fun b!6109417 () Bool)

(assert (=> b!6109417 (= e!3725463 tp_is_empty!41367)))

(declare-fun b!6109419 () Bool)

(declare-fun tp!1706129 () Bool)

(assert (=> b!6109419 (= e!3725463 tp!1706129)))

(assert (= (and b!6107183 ((_ is ElementMatch!16057) (regTwo!32626 (regOne!32627 (reg!16386 r!7292))))) b!6109417))

(assert (= (and b!6107183 ((_ is Concat!24902) (regTwo!32626 (regOne!32627 (reg!16386 r!7292))))) b!6109418))

(assert (= (and b!6107183 ((_ is Star!16057) (regTwo!32626 (regOne!32627 (reg!16386 r!7292))))) b!6109419))

(assert (= (and b!6107183 ((_ is Union!16057) (regTwo!32626 (regOne!32627 (reg!16386 r!7292))))) b!6109420))

(declare-fun b!6109424 () Bool)

(declare-fun e!3725464 () Bool)

(declare-fun tp!1706131 () Bool)

(declare-fun tp!1706135 () Bool)

(assert (=> b!6109424 (= e!3725464 (and tp!1706131 tp!1706135))))

(declare-fun b!6109422 () Bool)

(declare-fun tp!1706132 () Bool)

(declare-fun tp!1706133 () Bool)

(assert (=> b!6109422 (= e!3725464 (and tp!1706132 tp!1706133))))

(assert (=> b!6107222 (= tp!1705165 e!3725464)))

(declare-fun b!6109421 () Bool)

(assert (=> b!6109421 (= e!3725464 tp_is_empty!41367)))

(declare-fun b!6109423 () Bool)

(declare-fun tp!1706134 () Bool)

(assert (=> b!6109423 (= e!3725464 tp!1706134)))

(assert (= (and b!6107222 ((_ is ElementMatch!16057) (reg!16386 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109421))

(assert (= (and b!6107222 ((_ is Concat!24902) (reg!16386 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109422))

(assert (= (and b!6107222 ((_ is Star!16057) (reg!16386 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109423))

(assert (= (and b!6107222 ((_ is Union!16057) (reg!16386 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109424))

(declare-fun b!6109428 () Bool)

(declare-fun e!3725465 () Bool)

(declare-fun tp!1706136 () Bool)

(declare-fun tp!1706140 () Bool)

(assert (=> b!6109428 (= e!3725465 (and tp!1706136 tp!1706140))))

(declare-fun b!6109426 () Bool)

(declare-fun tp!1706137 () Bool)

(declare-fun tp!1706138 () Bool)

(assert (=> b!6109426 (= e!3725465 (and tp!1706137 tp!1706138))))

(assert (=> b!6107201 (= tp!1705133 e!3725465)))

(declare-fun b!6109425 () Bool)

(assert (=> b!6109425 (= e!3725465 tp_is_empty!41367)))

(declare-fun b!6109427 () Bool)

(declare-fun tp!1706139 () Bool)

(assert (=> b!6109427 (= e!3725465 tp!1706139)))

(assert (= (and b!6107201 ((_ is ElementMatch!16057) (regOne!32627 (regOne!32626 (regTwo!32626 r!7292))))) b!6109425))

(assert (= (and b!6107201 ((_ is Concat!24902) (regOne!32627 (regOne!32626 (regTwo!32626 r!7292))))) b!6109426))

(assert (= (and b!6107201 ((_ is Star!16057) (regOne!32627 (regOne!32626 (regTwo!32626 r!7292))))) b!6109427))

(assert (= (and b!6107201 ((_ is Union!16057) (regOne!32627 (regOne!32626 (regTwo!32626 r!7292))))) b!6109428))

(declare-fun b!6109432 () Bool)

(declare-fun e!3725466 () Bool)

(declare-fun tp!1706141 () Bool)

(declare-fun tp!1706145 () Bool)

(assert (=> b!6109432 (= e!3725466 (and tp!1706141 tp!1706145))))

(declare-fun b!6109430 () Bool)

(declare-fun tp!1706142 () Bool)

(declare-fun tp!1706143 () Bool)

(assert (=> b!6109430 (= e!3725466 (and tp!1706142 tp!1706143))))

(assert (=> b!6107201 (= tp!1705137 e!3725466)))

(declare-fun b!6109429 () Bool)

(assert (=> b!6109429 (= e!3725466 tp_is_empty!41367)))

(declare-fun b!6109431 () Bool)

(declare-fun tp!1706144 () Bool)

(assert (=> b!6109431 (= e!3725466 tp!1706144)))

(assert (= (and b!6107201 ((_ is ElementMatch!16057) (regTwo!32627 (regOne!32626 (regTwo!32626 r!7292))))) b!6109429))

(assert (= (and b!6107201 ((_ is Concat!24902) (regTwo!32627 (regOne!32626 (regTwo!32626 r!7292))))) b!6109430))

(assert (= (and b!6107201 ((_ is Star!16057) (regTwo!32627 (regOne!32626 (regTwo!32626 r!7292))))) b!6109431))

(assert (= (and b!6107201 ((_ is Union!16057) (regTwo!32627 (regOne!32626 (regTwo!32626 r!7292))))) b!6109432))

(declare-fun b!6109436 () Bool)

(declare-fun e!3725467 () Bool)

(declare-fun tp!1706146 () Bool)

(declare-fun tp!1706150 () Bool)

(assert (=> b!6109436 (= e!3725467 (and tp!1706146 tp!1706150))))

(declare-fun b!6109434 () Bool)

(declare-fun tp!1706147 () Bool)

(declare-fun tp!1706148 () Bool)

(assert (=> b!6109434 (= e!3725467 (and tp!1706147 tp!1706148))))

(assert (=> b!6107150 (= tp!1705073 e!3725467)))

(declare-fun b!6109433 () Bool)

(assert (=> b!6109433 (= e!3725467 tp_is_empty!41367)))

(declare-fun b!6109435 () Bool)

(declare-fun tp!1706149 () Bool)

(assert (=> b!6109435 (= e!3725467 tp!1706149)))

(assert (= (and b!6107150 ((_ is ElementMatch!16057) (reg!16386 (regTwo!32627 (regOne!32626 r!7292))))) b!6109433))

(assert (= (and b!6107150 ((_ is Concat!24902) (reg!16386 (regTwo!32627 (regOne!32626 r!7292))))) b!6109434))

(assert (= (and b!6107150 ((_ is Star!16057) (reg!16386 (regTwo!32627 (regOne!32626 r!7292))))) b!6109435))

(assert (= (and b!6107150 ((_ is Union!16057) (reg!16386 (regTwo!32627 (regOne!32626 r!7292))))) b!6109436))

(declare-fun b!6109440 () Bool)

(declare-fun e!3725468 () Bool)

(declare-fun tp!1706151 () Bool)

(declare-fun tp!1706155 () Bool)

(assert (=> b!6109440 (= e!3725468 (and tp!1706151 tp!1706155))))

(declare-fun b!6109438 () Bool)

(declare-fun tp!1706152 () Bool)

(declare-fun tp!1706153 () Bool)

(assert (=> b!6109438 (= e!3725468 (and tp!1706152 tp!1706153))))

(assert (=> b!6107246 (= tp!1705191 e!3725468)))

(declare-fun b!6109437 () Bool)

(assert (=> b!6109437 (= e!3725468 tp_is_empty!41367)))

(declare-fun b!6109439 () Bool)

(declare-fun tp!1706154 () Bool)

(assert (=> b!6109439 (= e!3725468 tp!1706154)))

(assert (= (and b!6107246 ((_ is ElementMatch!16057) (regOne!32627 (regTwo!32627 (regOne!32627 r!7292))))) b!6109437))

(assert (= (and b!6107246 ((_ is Concat!24902) (regOne!32627 (regTwo!32627 (regOne!32627 r!7292))))) b!6109438))

(assert (= (and b!6107246 ((_ is Star!16057) (regOne!32627 (regTwo!32627 (regOne!32627 r!7292))))) b!6109439))

(assert (= (and b!6107246 ((_ is Union!16057) (regOne!32627 (regTwo!32627 (regOne!32627 r!7292))))) b!6109440))

(declare-fun b!6109444 () Bool)

(declare-fun e!3725469 () Bool)

(declare-fun tp!1706156 () Bool)

(declare-fun tp!1706160 () Bool)

(assert (=> b!6109444 (= e!3725469 (and tp!1706156 tp!1706160))))

(declare-fun b!6109442 () Bool)

(declare-fun tp!1706157 () Bool)

(declare-fun tp!1706158 () Bool)

(assert (=> b!6109442 (= e!3725469 (and tp!1706157 tp!1706158))))

(assert (=> b!6107246 (= tp!1705195 e!3725469)))

(declare-fun b!6109441 () Bool)

(assert (=> b!6109441 (= e!3725469 tp_is_empty!41367)))

(declare-fun b!6109443 () Bool)

(declare-fun tp!1706159 () Bool)

(assert (=> b!6109443 (= e!3725469 tp!1706159)))

(assert (= (and b!6107246 ((_ is ElementMatch!16057) (regTwo!32627 (regTwo!32627 (regOne!32627 r!7292))))) b!6109441))

(assert (= (and b!6107246 ((_ is Concat!24902) (regTwo!32627 (regTwo!32627 (regOne!32627 r!7292))))) b!6109442))

(assert (= (and b!6107246 ((_ is Star!16057) (regTwo!32627 (regTwo!32627 (regOne!32627 r!7292))))) b!6109443))

(assert (= (and b!6107246 ((_ is Union!16057) (regTwo!32627 (regTwo!32627 (regOne!32627 r!7292))))) b!6109444))

(declare-fun b!6109448 () Bool)

(declare-fun e!3725470 () Bool)

(declare-fun tp!1706161 () Bool)

(declare-fun tp!1706165 () Bool)

(assert (=> b!6109448 (= e!3725470 (and tp!1706161 tp!1706165))))

(declare-fun b!6109446 () Bool)

(declare-fun tp!1706162 () Bool)

(declare-fun tp!1706163 () Bool)

(assert (=> b!6109446 (= e!3725470 (and tp!1706162 tp!1706163))))

(assert (=> b!6107192 (= tp!1705126 e!3725470)))

(declare-fun b!6109445 () Bool)

(assert (=> b!6109445 (= e!3725470 tp_is_empty!41367)))

(declare-fun b!6109447 () Bool)

(declare-fun tp!1706164 () Bool)

(assert (=> b!6109447 (= e!3725470 tp!1706164)))

(assert (= (and b!6107192 ((_ is ElementMatch!16057) (reg!16386 (reg!16386 (regTwo!32626 r!7292))))) b!6109445))

(assert (= (and b!6107192 ((_ is Concat!24902) (reg!16386 (reg!16386 (regTwo!32626 r!7292))))) b!6109446))

(assert (= (and b!6107192 ((_ is Star!16057) (reg!16386 (reg!16386 (regTwo!32626 r!7292))))) b!6109447))

(assert (= (and b!6107192 ((_ is Union!16057) (reg!16386 (reg!16386 (regTwo!32626 r!7292))))) b!6109448))

(declare-fun b!6109452 () Bool)

(declare-fun e!3725471 () Bool)

(declare-fun tp!1706166 () Bool)

(declare-fun tp!1706170 () Bool)

(assert (=> b!6109452 (= e!3725471 (and tp!1706166 tp!1706170))))

(declare-fun b!6109450 () Bool)

(declare-fun tp!1706167 () Bool)

(declare-fun tp!1706168 () Bool)

(assert (=> b!6109450 (= e!3725471 (and tp!1706167 tp!1706168))))

(assert (=> b!6107141 (= tp!1705061 e!3725471)))

(declare-fun b!6109449 () Bool)

(assert (=> b!6109449 (= e!3725471 tp_is_empty!41367)))

(declare-fun b!6109451 () Bool)

(declare-fun tp!1706169 () Bool)

(assert (=> b!6109451 (= e!3725471 tp!1706169)))

(assert (= (and b!6107141 ((_ is ElementMatch!16057) (regOne!32626 (regTwo!32626 (regOne!32626 r!7292))))) b!6109449))

(assert (= (and b!6107141 ((_ is Concat!24902) (regOne!32626 (regTwo!32626 (regOne!32626 r!7292))))) b!6109450))

(assert (= (and b!6107141 ((_ is Star!16057) (regOne!32626 (regTwo!32626 (regOne!32626 r!7292))))) b!6109451))

(assert (= (and b!6107141 ((_ is Union!16057) (regOne!32626 (regTwo!32626 (regOne!32626 r!7292))))) b!6109452))

(declare-fun b!6109456 () Bool)

(declare-fun e!3725472 () Bool)

(declare-fun tp!1706171 () Bool)

(declare-fun tp!1706175 () Bool)

(assert (=> b!6109456 (= e!3725472 (and tp!1706171 tp!1706175))))

(declare-fun b!6109454 () Bool)

(declare-fun tp!1706172 () Bool)

(declare-fun tp!1706173 () Bool)

(assert (=> b!6109454 (= e!3725472 (and tp!1706172 tp!1706173))))

(assert (=> b!6107141 (= tp!1705062 e!3725472)))

(declare-fun b!6109453 () Bool)

(assert (=> b!6109453 (= e!3725472 tp_is_empty!41367)))

(declare-fun b!6109455 () Bool)

(declare-fun tp!1706174 () Bool)

(assert (=> b!6109455 (= e!3725472 tp!1706174)))

(assert (= (and b!6107141 ((_ is ElementMatch!16057) (regTwo!32626 (regTwo!32626 (regOne!32626 r!7292))))) b!6109453))

(assert (= (and b!6107141 ((_ is Concat!24902) (regTwo!32626 (regTwo!32626 (regOne!32626 r!7292))))) b!6109454))

(assert (= (and b!6107141 ((_ is Star!16057) (regTwo!32626 (regTwo!32626 (regOne!32626 r!7292))))) b!6109455))

(assert (= (and b!6107141 ((_ is Union!16057) (regTwo!32626 (regTwo!32626 (regOne!32626 r!7292))))) b!6109456))

(declare-fun b!6109460 () Bool)

(declare-fun e!3725473 () Bool)

(declare-fun tp!1706176 () Bool)

(declare-fun tp!1706180 () Bool)

(assert (=> b!6109460 (= e!3725473 (and tp!1706176 tp!1706180))))

(declare-fun b!6109458 () Bool)

(declare-fun tp!1706177 () Bool)

(declare-fun tp!1706178 () Bool)

(assert (=> b!6109458 (= e!3725473 (and tp!1706177 tp!1706178))))

(assert (=> b!6107143 (= tp!1705060 e!3725473)))

(declare-fun b!6109457 () Bool)

(assert (=> b!6109457 (= e!3725473 tp_is_empty!41367)))

(declare-fun b!6109459 () Bool)

(declare-fun tp!1706179 () Bool)

(assert (=> b!6109459 (= e!3725473 tp!1706179)))

(assert (= (and b!6107143 ((_ is ElementMatch!16057) (regOne!32627 (regTwo!32626 (regOne!32626 r!7292))))) b!6109457))

(assert (= (and b!6107143 ((_ is Concat!24902) (regOne!32627 (regTwo!32626 (regOne!32626 r!7292))))) b!6109458))

(assert (= (and b!6107143 ((_ is Star!16057) (regOne!32627 (regTwo!32626 (regOne!32626 r!7292))))) b!6109459))

(assert (= (and b!6107143 ((_ is Union!16057) (regOne!32627 (regTwo!32626 (regOne!32626 r!7292))))) b!6109460))

(declare-fun b!6109464 () Bool)

(declare-fun e!3725474 () Bool)

(declare-fun tp!1706181 () Bool)

(declare-fun tp!1706185 () Bool)

(assert (=> b!6109464 (= e!3725474 (and tp!1706181 tp!1706185))))

(declare-fun b!6109462 () Bool)

(declare-fun tp!1706182 () Bool)

(declare-fun tp!1706183 () Bool)

(assert (=> b!6109462 (= e!3725474 (and tp!1706182 tp!1706183))))

(assert (=> b!6107143 (= tp!1705064 e!3725474)))

(declare-fun b!6109461 () Bool)

(assert (=> b!6109461 (= e!3725474 tp_is_empty!41367)))

(declare-fun b!6109463 () Bool)

(declare-fun tp!1706184 () Bool)

(assert (=> b!6109463 (= e!3725474 tp!1706184)))

(assert (= (and b!6107143 ((_ is ElementMatch!16057) (regTwo!32627 (regTwo!32626 (regOne!32626 r!7292))))) b!6109461))

(assert (= (and b!6107143 ((_ is Concat!24902) (regTwo!32627 (regTwo!32626 (regOne!32626 r!7292))))) b!6109462))

(assert (= (and b!6107143 ((_ is Star!16057) (regTwo!32627 (regTwo!32626 (regOne!32626 r!7292))))) b!6109463))

(assert (= (and b!6107143 ((_ is Union!16057) (regTwo!32627 (regTwo!32626 (regOne!32626 r!7292))))) b!6109464))

(declare-fun b!6109468 () Bool)

(declare-fun e!3725475 () Bool)

(declare-fun tp!1706186 () Bool)

(declare-fun tp!1706190 () Bool)

(assert (=> b!6109468 (= e!3725475 (and tp!1706186 tp!1706190))))

(declare-fun b!6109466 () Bool)

(declare-fun tp!1706187 () Bool)

(declare-fun tp!1706188 () Bool)

(assert (=> b!6109466 (= e!3725475 (and tp!1706187 tp!1706188))))

(assert (=> b!6107168 (= tp!1705091 e!3725475)))

(declare-fun b!6109465 () Bool)

(assert (=> b!6109465 (= e!3725475 tp_is_empty!41367)))

(declare-fun b!6109467 () Bool)

(declare-fun tp!1706189 () Bool)

(assert (=> b!6109467 (= e!3725475 tp!1706189)))

(assert (= (and b!6107168 ((_ is ElementMatch!16057) (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109465))

(assert (= (and b!6107168 ((_ is Concat!24902) (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109466))

(assert (= (and b!6107168 ((_ is Star!16057) (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109467))

(assert (= (and b!6107168 ((_ is Union!16057) (regOne!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109468))

(declare-fun b!6109472 () Bool)

(declare-fun e!3725476 () Bool)

(declare-fun tp!1706191 () Bool)

(declare-fun tp!1706195 () Bool)

(assert (=> b!6109472 (= e!3725476 (and tp!1706191 tp!1706195))))

(declare-fun b!6109470 () Bool)

(declare-fun tp!1706192 () Bool)

(declare-fun tp!1706193 () Bool)

(assert (=> b!6109470 (= e!3725476 (and tp!1706192 tp!1706193))))

(assert (=> b!6107168 (= tp!1705095 e!3725476)))

(declare-fun b!6109469 () Bool)

(assert (=> b!6109469 (= e!3725476 tp_is_empty!41367)))

(declare-fun b!6109471 () Bool)

(declare-fun tp!1706194 () Bool)

(assert (=> b!6109471 (= e!3725476 tp!1706194)))

(assert (= (and b!6107168 ((_ is ElementMatch!16057) (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109469))

(assert (= (and b!6107168 ((_ is Concat!24902) (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109470))

(assert (= (and b!6107168 ((_ is Star!16057) (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109471))

(assert (= (and b!6107168 ((_ is Union!16057) (regTwo!32627 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109472))

(declare-fun b!6109473 () Bool)

(declare-fun e!3725477 () Bool)

(declare-fun tp!1706196 () Bool)

(declare-fun tp!1706197 () Bool)

(assert (=> b!6109473 (= e!3725477 (and tp!1706196 tp!1706197))))

(assert (=> b!6107215 (= tp!1705155 e!3725477)))

(assert (= (and b!6107215 ((_ is Cons!64346) (exprs!5941 setElem!41268))) b!6109473))

(declare-fun b!6109477 () Bool)

(declare-fun e!3725478 () Bool)

(declare-fun tp!1706198 () Bool)

(declare-fun tp!1706202 () Bool)

(assert (=> b!6109477 (= e!3725478 (and tp!1706198 tp!1706202))))

(declare-fun b!6109475 () Bool)

(declare-fun tp!1706199 () Bool)

(declare-fun tp!1706200 () Bool)

(assert (=> b!6109475 (= e!3725478 (and tp!1706199 tp!1706200))))

(assert (=> b!6107159 (= tp!1705084 e!3725478)))

(declare-fun b!6109474 () Bool)

(assert (=> b!6109474 (= e!3725478 tp_is_empty!41367)))

(declare-fun b!6109476 () Bool)

(declare-fun tp!1706201 () Bool)

(assert (=> b!6109476 (= e!3725478 tp!1706201)))

(assert (= (and b!6107159 ((_ is ElementMatch!16057) (reg!16386 (regOne!32626 (regTwo!32627 r!7292))))) b!6109474))

(assert (= (and b!6107159 ((_ is Concat!24902) (reg!16386 (regOne!32626 (regTwo!32627 r!7292))))) b!6109475))

(assert (= (and b!6107159 ((_ is Star!16057) (reg!16386 (regOne!32626 (regTwo!32627 r!7292))))) b!6109476))

(assert (= (and b!6107159 ((_ is Union!16057) (reg!16386 (regOne!32626 (regTwo!32627 r!7292))))) b!6109477))

(declare-fun b!6109481 () Bool)

(declare-fun e!3725479 () Bool)

(declare-fun tp!1706203 () Bool)

(declare-fun tp!1706207 () Bool)

(assert (=> b!6109481 (= e!3725479 (and tp!1706203 tp!1706207))))

(declare-fun b!6109479 () Bool)

(declare-fun tp!1706204 () Bool)

(declare-fun tp!1706205 () Bool)

(assert (=> b!6109479 (= e!3725479 (and tp!1706204 tp!1706205))))

(assert (=> b!6107185 (= tp!1705113 e!3725479)))

(declare-fun b!6109478 () Bool)

(assert (=> b!6109478 (= e!3725479 tp_is_empty!41367)))

(declare-fun b!6109480 () Bool)

(declare-fun tp!1706206 () Bool)

(assert (=> b!6109480 (= e!3725479 tp!1706206)))

(assert (= (and b!6107185 ((_ is ElementMatch!16057) (regOne!32627 (regOne!32627 (reg!16386 r!7292))))) b!6109478))

(assert (= (and b!6107185 ((_ is Concat!24902) (regOne!32627 (regOne!32627 (reg!16386 r!7292))))) b!6109479))

(assert (= (and b!6107185 ((_ is Star!16057) (regOne!32627 (regOne!32627 (reg!16386 r!7292))))) b!6109480))

(assert (= (and b!6107185 ((_ is Union!16057) (regOne!32627 (regOne!32627 (reg!16386 r!7292))))) b!6109481))

(declare-fun b!6109485 () Bool)

(declare-fun e!3725480 () Bool)

(declare-fun tp!1706208 () Bool)

(declare-fun tp!1706212 () Bool)

(assert (=> b!6109485 (= e!3725480 (and tp!1706208 tp!1706212))))

(declare-fun b!6109483 () Bool)

(declare-fun tp!1706209 () Bool)

(declare-fun tp!1706210 () Bool)

(assert (=> b!6109483 (= e!3725480 (and tp!1706209 tp!1706210))))

(assert (=> b!6107185 (= tp!1705117 e!3725480)))

(declare-fun b!6109482 () Bool)

(assert (=> b!6109482 (= e!3725480 tp_is_empty!41367)))

(declare-fun b!6109484 () Bool)

(declare-fun tp!1706211 () Bool)

(assert (=> b!6109484 (= e!3725480 tp!1706211)))

(assert (= (and b!6107185 ((_ is ElementMatch!16057) (regTwo!32627 (regOne!32627 (reg!16386 r!7292))))) b!6109482))

(assert (= (and b!6107185 ((_ is Concat!24902) (regTwo!32627 (regOne!32627 (reg!16386 r!7292))))) b!6109483))

(assert (= (and b!6107185 ((_ is Star!16057) (regTwo!32627 (regOne!32627 (reg!16386 r!7292))))) b!6109484))

(assert (= (and b!6107185 ((_ is Union!16057) (regTwo!32627 (regOne!32627 (reg!16386 r!7292))))) b!6109485))

(declare-fun b!6109489 () Bool)

(declare-fun e!3725481 () Bool)

(declare-fun tp!1706213 () Bool)

(declare-fun tp!1706217 () Bool)

(assert (=> b!6109489 (= e!3725481 (and tp!1706213 tp!1706217))))

(declare-fun b!6109487 () Bool)

(declare-fun tp!1706214 () Bool)

(declare-fun tp!1706215 () Bool)

(assert (=> b!6109487 (= e!3725481 (and tp!1706214 tp!1706215))))

(assert (=> b!6107176 (= tp!1705106 e!3725481)))

(declare-fun b!6109486 () Bool)

(assert (=> b!6109486 (= e!3725481 tp_is_empty!41367)))

(declare-fun b!6109488 () Bool)

(declare-fun tp!1706216 () Bool)

(assert (=> b!6109488 (= e!3725481 tp!1706216)))

(assert (= (and b!6107176 ((_ is ElementMatch!16057) (reg!16386 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109486))

(assert (= (and b!6107176 ((_ is Concat!24902) (reg!16386 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109487))

(assert (= (and b!6107176 ((_ is Star!16057) (reg!16386 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109488))

(assert (= (and b!6107176 ((_ is Union!16057) (reg!16386 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109489))

(declare-fun b!6109490 () Bool)

(declare-fun e!3725482 () Bool)

(declare-fun tp!1706218 () Bool)

(assert (=> b!6109490 (= e!3725482 (and tp_is_empty!41367 tp!1706218))))

(assert (=> b!6107152 (= tp!1705075 e!3725482)))

(assert (= (and b!6107152 ((_ is Cons!64348) (t!377925 (t!377925 (t!377925 s!2326))))) b!6109490))

(declare-fun b!6109494 () Bool)

(declare-fun e!3725483 () Bool)

(declare-fun tp!1706219 () Bool)

(declare-fun tp!1706223 () Bool)

(assert (=> b!6109494 (= e!3725483 (and tp!1706219 tp!1706223))))

(declare-fun b!6109492 () Bool)

(declare-fun tp!1706220 () Bool)

(declare-fun tp!1706221 () Bool)

(assert (=> b!6109492 (= e!3725483 (and tp!1706220 tp!1706221))))

(assert (=> b!6107247 (= tp!1705196 e!3725483)))

(declare-fun b!6109491 () Bool)

(assert (=> b!6109491 (= e!3725483 tp_is_empty!41367)))

(declare-fun b!6109493 () Bool)

(declare-fun tp!1706222 () Bool)

(assert (=> b!6109493 (= e!3725483 tp!1706222)))

(assert (= (and b!6107247 ((_ is ElementMatch!16057) (h!70794 (exprs!5941 (h!70795 (t!377924 zl!343)))))) b!6109491))

(assert (= (and b!6107247 ((_ is Concat!24902) (h!70794 (exprs!5941 (h!70795 (t!377924 zl!343)))))) b!6109492))

(assert (= (and b!6107247 ((_ is Star!16057) (h!70794 (exprs!5941 (h!70795 (t!377924 zl!343)))))) b!6109493))

(assert (= (and b!6107247 ((_ is Union!16057) (h!70794 (exprs!5941 (h!70795 (t!377924 zl!343)))))) b!6109494))

(declare-fun b!6109495 () Bool)

(declare-fun e!3725484 () Bool)

(declare-fun tp!1706224 () Bool)

(declare-fun tp!1706225 () Bool)

(assert (=> b!6109495 (= e!3725484 (and tp!1706224 tp!1706225))))

(assert (=> b!6107247 (= tp!1705197 e!3725484)))

(assert (= (and b!6107247 ((_ is Cons!64346) (t!377923 (exprs!5941 (h!70795 (t!377924 zl!343)))))) b!6109495))

(declare-fun b!6109499 () Bool)

(declare-fun e!3725485 () Bool)

(declare-fun tp!1706226 () Bool)

(declare-fun tp!1706230 () Bool)

(assert (=> b!6109499 (= e!3725485 (and tp!1706226 tp!1706230))))

(declare-fun b!6109497 () Bool)

(declare-fun tp!1706227 () Bool)

(declare-fun tp!1706228 () Bool)

(assert (=> b!6109497 (= e!3725485 (and tp!1706227 tp!1706228))))

(assert (=> b!6107169 (= tp!1705096 e!3725485)))

(declare-fun b!6109496 () Bool)

(assert (=> b!6109496 (= e!3725485 tp_is_empty!41367)))

(declare-fun b!6109498 () Bool)

(declare-fun tp!1706229 () Bool)

(assert (=> b!6109498 (= e!3725485 tp!1706229)))

(assert (= (and b!6107169 ((_ is ElementMatch!16057) (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343)))))) b!6109496))

(assert (= (and b!6107169 ((_ is Concat!24902) (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343)))))) b!6109497))

(assert (= (and b!6107169 ((_ is Star!16057) (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343)))))) b!6109498))

(assert (= (and b!6107169 ((_ is Union!16057) (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343)))))) b!6109499))

(declare-fun b!6109500 () Bool)

(declare-fun e!3725486 () Bool)

(declare-fun tp!1706231 () Bool)

(declare-fun tp!1706232 () Bool)

(assert (=> b!6109500 (= e!3725486 (and tp!1706231 tp!1706232))))

(assert (=> b!6107169 (= tp!1705097 e!3725486)))

(assert (= (and b!6107169 ((_ is Cons!64346) (t!377923 (t!377923 (exprs!5941 (h!70795 zl!343)))))) b!6109500))

(declare-fun b!6109504 () Bool)

(declare-fun e!3725487 () Bool)

(declare-fun tp!1706233 () Bool)

(declare-fun tp!1706237 () Bool)

(assert (=> b!6109504 (= e!3725487 (and tp!1706233 tp!1706237))))

(declare-fun b!6109502 () Bool)

(declare-fun tp!1706234 () Bool)

(declare-fun tp!1706235 () Bool)

(assert (=> b!6109502 (= e!3725487 (and tp!1706234 tp!1706235))))

(assert (=> b!6107212 (= tp!1705151 e!3725487)))

(declare-fun b!6109501 () Bool)

(assert (=> b!6109501 (= e!3725487 tp_is_empty!41367)))

(declare-fun b!6109503 () Bool)

(declare-fun tp!1706236 () Bool)

(assert (=> b!6109503 (= e!3725487 tp!1706236)))

(assert (= (and b!6107212 ((_ is ElementMatch!16057) (reg!16386 (regTwo!32626 (reg!16386 r!7292))))) b!6109501))

(assert (= (and b!6107212 ((_ is Concat!24902) (reg!16386 (regTwo!32626 (reg!16386 r!7292))))) b!6109502))

(assert (= (and b!6107212 ((_ is Star!16057) (reg!16386 (regTwo!32626 (reg!16386 r!7292))))) b!6109503))

(assert (= (and b!6107212 ((_ is Union!16057) (reg!16386 (regTwo!32626 (reg!16386 r!7292))))) b!6109504))

(declare-fun b!6109508 () Bool)

(declare-fun e!3725488 () Bool)

(declare-fun tp!1706238 () Bool)

(declare-fun tp!1706242 () Bool)

(assert (=> b!6109508 (= e!3725488 (and tp!1706238 tp!1706242))))

(declare-fun b!6109506 () Bool)

(declare-fun tp!1706239 () Bool)

(declare-fun tp!1706240 () Bool)

(assert (=> b!6109506 (= e!3725488 (and tp!1706239 tp!1706240))))

(assert (=> b!6107231 (= tp!1705175 e!3725488)))

(declare-fun b!6109505 () Bool)

(assert (=> b!6109505 (= e!3725488 tp_is_empty!41367)))

(declare-fun b!6109507 () Bool)

(declare-fun tp!1706241 () Bool)

(assert (=> b!6109507 (= e!3725488 tp!1706241)))

(assert (= (and b!6107231 ((_ is ElementMatch!16057) (regOne!32626 (regTwo!32626 (regOne!32627 r!7292))))) b!6109505))

(assert (= (and b!6107231 ((_ is Concat!24902) (regOne!32626 (regTwo!32626 (regOne!32627 r!7292))))) b!6109506))

(assert (= (and b!6107231 ((_ is Star!16057) (regOne!32626 (regTwo!32626 (regOne!32627 r!7292))))) b!6109507))

(assert (= (and b!6107231 ((_ is Union!16057) (regOne!32626 (regTwo!32626 (regOne!32627 r!7292))))) b!6109508))

(declare-fun b!6109512 () Bool)

(declare-fun e!3725489 () Bool)

(declare-fun tp!1706243 () Bool)

(declare-fun tp!1706247 () Bool)

(assert (=> b!6109512 (= e!3725489 (and tp!1706243 tp!1706247))))

(declare-fun b!6109510 () Bool)

(declare-fun tp!1706244 () Bool)

(declare-fun tp!1706245 () Bool)

(assert (=> b!6109510 (= e!3725489 (and tp!1706244 tp!1706245))))

(assert (=> b!6107231 (= tp!1705176 e!3725489)))

(declare-fun b!6109509 () Bool)

(assert (=> b!6109509 (= e!3725489 tp_is_empty!41367)))

(declare-fun b!6109511 () Bool)

(declare-fun tp!1706246 () Bool)

(assert (=> b!6109511 (= e!3725489 tp!1706246)))

(assert (= (and b!6107231 ((_ is ElementMatch!16057) (regTwo!32626 (regTwo!32626 (regOne!32627 r!7292))))) b!6109509))

(assert (= (and b!6107231 ((_ is Concat!24902) (regTwo!32626 (regTwo!32626 (regOne!32627 r!7292))))) b!6109510))

(assert (= (and b!6107231 ((_ is Star!16057) (regTwo!32626 (regTwo!32626 (regOne!32627 r!7292))))) b!6109511))

(assert (= (and b!6107231 ((_ is Union!16057) (regTwo!32626 (regTwo!32626 (regOne!32627 r!7292))))) b!6109512))

(declare-fun b!6109514 () Bool)

(declare-fun e!3725491 () Bool)

(declare-fun tp!1706248 () Bool)

(assert (=> b!6109514 (= e!3725491 tp!1706248)))

(declare-fun e!3725490 () Bool)

(declare-fun b!6109513 () Bool)

(declare-fun tp!1706249 () Bool)

(assert (=> b!6109513 (= e!3725490 (and (inv!83389 (h!70795 (t!377924 (t!377924 (t!377924 zl!343))))) e!3725491 tp!1706249))))

(assert (=> b!6107224 (= tp!1705168 e!3725490)))

(assert (= b!6109513 b!6109514))

(assert (= (and b!6107224 ((_ is Cons!64347) (t!377924 (t!377924 (t!377924 zl!343))))) b!6109513))

(declare-fun m!6959342 () Bool)

(assert (=> b!6109513 m!6959342))

(declare-fun b!6109518 () Bool)

(declare-fun e!3725492 () Bool)

(declare-fun tp!1706250 () Bool)

(declare-fun tp!1706254 () Bool)

(assert (=> b!6109518 (= e!3725492 (and tp!1706250 tp!1706254))))

(declare-fun b!6109516 () Bool)

(declare-fun tp!1706251 () Bool)

(declare-fun tp!1706252 () Bool)

(assert (=> b!6109516 (= e!3725492 (and tp!1706251 tp!1706252))))

(assert (=> b!6107233 (= tp!1705174 e!3725492)))

(declare-fun b!6109515 () Bool)

(assert (=> b!6109515 (= e!3725492 tp_is_empty!41367)))

(declare-fun b!6109517 () Bool)

(declare-fun tp!1706253 () Bool)

(assert (=> b!6109517 (= e!3725492 tp!1706253)))

(assert (= (and b!6107233 ((_ is ElementMatch!16057) (regOne!32627 (regTwo!32626 (regOne!32627 r!7292))))) b!6109515))

(assert (= (and b!6107233 ((_ is Concat!24902) (regOne!32627 (regTwo!32626 (regOne!32627 r!7292))))) b!6109516))

(assert (= (and b!6107233 ((_ is Star!16057) (regOne!32627 (regTwo!32626 (regOne!32627 r!7292))))) b!6109517))

(assert (= (and b!6107233 ((_ is Union!16057) (regOne!32627 (regTwo!32626 (regOne!32627 r!7292))))) b!6109518))

(declare-fun b!6109522 () Bool)

(declare-fun e!3725493 () Bool)

(declare-fun tp!1706255 () Bool)

(declare-fun tp!1706259 () Bool)

(assert (=> b!6109522 (= e!3725493 (and tp!1706255 tp!1706259))))

(declare-fun b!6109520 () Bool)

(declare-fun tp!1706256 () Bool)

(declare-fun tp!1706257 () Bool)

(assert (=> b!6109520 (= e!3725493 (and tp!1706256 tp!1706257))))

(assert (=> b!6107233 (= tp!1705178 e!3725493)))

(declare-fun b!6109519 () Bool)

(assert (=> b!6109519 (= e!3725493 tp_is_empty!41367)))

(declare-fun b!6109521 () Bool)

(declare-fun tp!1706258 () Bool)

(assert (=> b!6109521 (= e!3725493 tp!1706258)))

(assert (= (and b!6107233 ((_ is ElementMatch!16057) (regTwo!32627 (regTwo!32626 (regOne!32627 r!7292))))) b!6109519))

(assert (= (and b!6107233 ((_ is Concat!24902) (regTwo!32627 (regTwo!32626 (regOne!32627 r!7292))))) b!6109520))

(assert (= (and b!6107233 ((_ is Star!16057) (regTwo!32627 (regTwo!32626 (regOne!32627 r!7292))))) b!6109521))

(assert (= (and b!6107233 ((_ is Union!16057) (regTwo!32627 (regTwo!32626 (regOne!32627 r!7292))))) b!6109522))

(declare-fun b!6109526 () Bool)

(declare-fun e!3725494 () Bool)

(declare-fun tp!1706260 () Bool)

(declare-fun tp!1706264 () Bool)

(assert (=> b!6109526 (= e!3725494 (and tp!1706260 tp!1706264))))

(declare-fun b!6109524 () Bool)

(declare-fun tp!1706261 () Bool)

(declare-fun tp!1706262 () Bool)

(assert (=> b!6109524 (= e!3725494 (and tp!1706261 tp!1706262))))

(assert (=> b!6107203 (= tp!1705139 e!3725494)))

(declare-fun b!6109523 () Bool)

(assert (=> b!6109523 (= e!3725494 tp_is_empty!41367)))

(declare-fun b!6109525 () Bool)

(declare-fun tp!1706263 () Bool)

(assert (=> b!6109525 (= e!3725494 tp!1706263)))

(assert (= (and b!6107203 ((_ is ElementMatch!16057) (regOne!32626 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109523))

(assert (= (and b!6107203 ((_ is Concat!24902) (regOne!32626 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109524))

(assert (= (and b!6107203 ((_ is Star!16057) (regOne!32626 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109525))

(assert (= (and b!6107203 ((_ is Union!16057) (regOne!32626 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109526))

(declare-fun b!6109530 () Bool)

(declare-fun e!3725495 () Bool)

(declare-fun tp!1706265 () Bool)

(declare-fun tp!1706269 () Bool)

(assert (=> b!6109530 (= e!3725495 (and tp!1706265 tp!1706269))))

(declare-fun b!6109528 () Bool)

(declare-fun tp!1706266 () Bool)

(declare-fun tp!1706267 () Bool)

(assert (=> b!6109528 (= e!3725495 (and tp!1706266 tp!1706267))))

(assert (=> b!6107203 (= tp!1705140 e!3725495)))

(declare-fun b!6109527 () Bool)

(assert (=> b!6109527 (= e!3725495 tp_is_empty!41367)))

(declare-fun b!6109529 () Bool)

(declare-fun tp!1706268 () Bool)

(assert (=> b!6109529 (= e!3725495 tp!1706268)))

(assert (= (and b!6107203 ((_ is ElementMatch!16057) (regTwo!32626 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109527))

(assert (= (and b!6107203 ((_ is Concat!24902) (regTwo!32626 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109528))

(assert (= (and b!6107203 ((_ is Star!16057) (regTwo!32626 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109529))

(assert (= (and b!6107203 ((_ is Union!16057) (regTwo!32626 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109530))

(declare-fun b!6109534 () Bool)

(declare-fun e!3725496 () Bool)

(declare-fun tp!1706270 () Bool)

(declare-fun tp!1706274 () Bool)

(assert (=> b!6109534 (= e!3725496 (and tp!1706270 tp!1706274))))

(declare-fun b!6109532 () Bool)

(declare-fun tp!1706271 () Bool)

(declare-fun tp!1706272 () Bool)

(assert (=> b!6109532 (= e!3725496 (and tp!1706271 tp!1706272))))

(assert (=> b!6107205 (= tp!1705138 e!3725496)))

(declare-fun b!6109531 () Bool)

(assert (=> b!6109531 (= e!3725496 tp_is_empty!41367)))

(declare-fun b!6109533 () Bool)

(declare-fun tp!1706273 () Bool)

(assert (=> b!6109533 (= e!3725496 tp!1706273)))

(assert (= (and b!6107205 ((_ is ElementMatch!16057) (regOne!32627 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109531))

(assert (= (and b!6107205 ((_ is Concat!24902) (regOne!32627 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109532))

(assert (= (and b!6107205 ((_ is Star!16057) (regOne!32627 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109533))

(assert (= (and b!6107205 ((_ is Union!16057) (regOne!32627 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109534))

(declare-fun b!6109538 () Bool)

(declare-fun e!3725497 () Bool)

(declare-fun tp!1706275 () Bool)

(declare-fun tp!1706279 () Bool)

(assert (=> b!6109538 (= e!3725497 (and tp!1706275 tp!1706279))))

(declare-fun b!6109536 () Bool)

(declare-fun tp!1706276 () Bool)

(declare-fun tp!1706277 () Bool)

(assert (=> b!6109536 (= e!3725497 (and tp!1706276 tp!1706277))))

(assert (=> b!6107205 (= tp!1705142 e!3725497)))

(declare-fun b!6109535 () Bool)

(assert (=> b!6109535 (= e!3725497 tp_is_empty!41367)))

(declare-fun b!6109537 () Bool)

(declare-fun tp!1706278 () Bool)

(assert (=> b!6109537 (= e!3725497 tp!1706278)))

(assert (= (and b!6107205 ((_ is ElementMatch!16057) (regTwo!32627 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109535))

(assert (= (and b!6107205 ((_ is Concat!24902) (regTwo!32627 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109536))

(assert (= (and b!6107205 ((_ is Star!16057) (regTwo!32627 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109537))

(assert (= (and b!6107205 ((_ is Union!16057) (regTwo!32627 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109538))

(declare-fun b!6109542 () Bool)

(declare-fun e!3725498 () Bool)

(declare-fun tp!1706280 () Bool)

(declare-fun tp!1706284 () Bool)

(assert (=> b!6109542 (= e!3725498 (and tp!1706280 tp!1706284))))

(declare-fun b!6109540 () Bool)

(declare-fun tp!1706281 () Bool)

(declare-fun tp!1706282 () Bool)

(assert (=> b!6109540 (= e!3725498 (and tp!1706281 tp!1706282))))

(assert (=> b!6107196 (= tp!1705131 e!3725498)))

(declare-fun b!6109539 () Bool)

(assert (=> b!6109539 (= e!3725498 tp_is_empty!41367)))

(declare-fun b!6109541 () Bool)

(declare-fun tp!1706283 () Bool)

(assert (=> b!6109541 (= e!3725498 tp!1706283)))

(assert (= (and b!6107196 ((_ is ElementMatch!16057) (reg!16386 (reg!16386 (reg!16386 r!7292))))) b!6109539))

(assert (= (and b!6107196 ((_ is Concat!24902) (reg!16386 (reg!16386 (reg!16386 r!7292))))) b!6109540))

(assert (= (and b!6107196 ((_ is Star!16057) (reg!16386 (reg!16386 (reg!16386 r!7292))))) b!6109541))

(assert (= (and b!6107196 ((_ is Union!16057) (reg!16386 (reg!16386 (reg!16386 r!7292))))) b!6109542))

(declare-fun b!6109546 () Bool)

(declare-fun e!3725499 () Bool)

(declare-fun tp!1706285 () Bool)

(declare-fun tp!1706289 () Bool)

(assert (=> b!6109546 (= e!3725499 (and tp!1706285 tp!1706289))))

(declare-fun b!6109544 () Bool)

(declare-fun tp!1706286 () Bool)

(declare-fun tp!1706287 () Bool)

(assert (=> b!6109544 (= e!3725499 (and tp!1706286 tp!1706287))))

(assert (=> b!6107145 (= tp!1705066 e!3725499)))

(declare-fun b!6109543 () Bool)

(assert (=> b!6109543 (= e!3725499 tp_is_empty!41367)))

(declare-fun b!6109545 () Bool)

(declare-fun tp!1706288 () Bool)

(assert (=> b!6109545 (= e!3725499 tp!1706288)))

(assert (= (and b!6107145 ((_ is ElementMatch!16057) (regOne!32626 (regOne!32627 (regOne!32626 r!7292))))) b!6109543))

(assert (= (and b!6107145 ((_ is Concat!24902) (regOne!32626 (regOne!32627 (regOne!32626 r!7292))))) b!6109544))

(assert (= (and b!6107145 ((_ is Star!16057) (regOne!32626 (regOne!32627 (regOne!32626 r!7292))))) b!6109545))

(assert (= (and b!6107145 ((_ is Union!16057) (regOne!32626 (regOne!32627 (regOne!32626 r!7292))))) b!6109546))

(declare-fun b!6109550 () Bool)

(declare-fun e!3725500 () Bool)

(declare-fun tp!1706290 () Bool)

(declare-fun tp!1706294 () Bool)

(assert (=> b!6109550 (= e!3725500 (and tp!1706290 tp!1706294))))

(declare-fun b!6109548 () Bool)

(declare-fun tp!1706291 () Bool)

(declare-fun tp!1706292 () Bool)

(assert (=> b!6109548 (= e!3725500 (and tp!1706291 tp!1706292))))

(assert (=> b!6107145 (= tp!1705067 e!3725500)))

(declare-fun b!6109547 () Bool)

(assert (=> b!6109547 (= e!3725500 tp_is_empty!41367)))

(declare-fun b!6109549 () Bool)

(declare-fun tp!1706293 () Bool)

(assert (=> b!6109549 (= e!3725500 tp!1706293)))

(assert (= (and b!6107145 ((_ is ElementMatch!16057) (regTwo!32626 (regOne!32627 (regOne!32626 r!7292))))) b!6109547))

(assert (= (and b!6107145 ((_ is Concat!24902) (regTwo!32626 (regOne!32627 (regOne!32626 r!7292))))) b!6109548))

(assert (= (and b!6107145 ((_ is Star!16057) (regTwo!32626 (regOne!32627 (regOne!32626 r!7292))))) b!6109549))

(assert (= (and b!6107145 ((_ is Union!16057) (regTwo!32626 (regOne!32627 (regOne!32626 r!7292))))) b!6109550))

(declare-fun b!6109554 () Bool)

(declare-fun e!3725501 () Bool)

(declare-fun tp!1706295 () Bool)

(declare-fun tp!1706299 () Bool)

(assert (=> b!6109554 (= e!3725501 (and tp!1706295 tp!1706299))))

(declare-fun b!6109552 () Bool)

(declare-fun tp!1706296 () Bool)

(declare-fun tp!1706297 () Bool)

(assert (=> b!6109552 (= e!3725501 (and tp!1706296 tp!1706297))))

(assert (=> b!6107241 (= tp!1705189 e!3725501)))

(declare-fun b!6109551 () Bool)

(assert (=> b!6109551 (= e!3725501 tp_is_empty!41367)))

(declare-fun b!6109553 () Bool)

(declare-fun tp!1706298 () Bool)

(assert (=> b!6109553 (= e!3725501 tp!1706298)))

(assert (= (and b!6107241 ((_ is ElementMatch!16057) (reg!16386 (regOne!32627 (regOne!32627 r!7292))))) b!6109551))

(assert (= (and b!6107241 ((_ is Concat!24902) (reg!16386 (regOne!32627 (regOne!32627 r!7292))))) b!6109552))

(assert (= (and b!6107241 ((_ is Star!16057) (reg!16386 (regOne!32627 (regOne!32627 r!7292))))) b!6109553))

(assert (= (and b!6107241 ((_ is Union!16057) (reg!16386 (regOne!32627 (regOne!32627 r!7292))))) b!6109554))

(declare-fun b!6109558 () Bool)

(declare-fun e!3725502 () Bool)

(declare-fun tp!1706300 () Bool)

(declare-fun tp!1706304 () Bool)

(assert (=> b!6109558 (= e!3725502 (and tp!1706300 tp!1706304))))

(declare-fun b!6109556 () Bool)

(declare-fun tp!1706301 () Bool)

(declare-fun tp!1706302 () Bool)

(assert (=> b!6109556 (= e!3725502 (and tp!1706301 tp!1706302))))

(assert (=> b!6107197 (= tp!1705128 e!3725502)))

(declare-fun b!6109555 () Bool)

(assert (=> b!6109555 (= e!3725502 tp_is_empty!41367)))

(declare-fun b!6109557 () Bool)

(declare-fun tp!1706303 () Bool)

(assert (=> b!6109557 (= e!3725502 tp!1706303)))

(assert (= (and b!6107197 ((_ is ElementMatch!16057) (regOne!32627 (reg!16386 (reg!16386 r!7292))))) b!6109555))

(assert (= (and b!6107197 ((_ is Concat!24902) (regOne!32627 (reg!16386 (reg!16386 r!7292))))) b!6109556))

(assert (= (and b!6107197 ((_ is Star!16057) (regOne!32627 (reg!16386 (reg!16386 r!7292))))) b!6109557))

(assert (= (and b!6107197 ((_ is Union!16057) (regOne!32627 (reg!16386 (reg!16386 r!7292))))) b!6109558))

(declare-fun b!6109562 () Bool)

(declare-fun e!3725503 () Bool)

(declare-fun tp!1706305 () Bool)

(declare-fun tp!1706309 () Bool)

(assert (=> b!6109562 (= e!3725503 (and tp!1706305 tp!1706309))))

(declare-fun b!6109560 () Bool)

(declare-fun tp!1706306 () Bool)

(declare-fun tp!1706307 () Bool)

(assert (=> b!6109560 (= e!3725503 (and tp!1706306 tp!1706307))))

(assert (=> b!6107197 (= tp!1705132 e!3725503)))

(declare-fun b!6109559 () Bool)

(assert (=> b!6109559 (= e!3725503 tp_is_empty!41367)))

(declare-fun b!6109561 () Bool)

(declare-fun tp!1706308 () Bool)

(assert (=> b!6109561 (= e!3725503 tp!1706308)))

(assert (= (and b!6107197 ((_ is ElementMatch!16057) (regTwo!32627 (reg!16386 (reg!16386 r!7292))))) b!6109559))

(assert (= (and b!6107197 ((_ is Concat!24902) (regTwo!32627 (reg!16386 (reg!16386 r!7292))))) b!6109560))

(assert (= (and b!6107197 ((_ is Star!16057) (regTwo!32627 (reg!16386 (reg!16386 r!7292))))) b!6109561))

(assert (= (and b!6107197 ((_ is Union!16057) (regTwo!32627 (reg!16386 (reg!16386 r!7292))))) b!6109562))

(declare-fun b!6109566 () Bool)

(declare-fun e!3725504 () Bool)

(declare-fun tp!1706310 () Bool)

(declare-fun tp!1706314 () Bool)

(assert (=> b!6109566 (= e!3725504 (and tp!1706310 tp!1706314))))

(declare-fun b!6109564 () Bool)

(declare-fun tp!1706311 () Bool)

(declare-fun tp!1706312 () Bool)

(assert (=> b!6109564 (= e!3725504 (and tp!1706311 tp!1706312))))

(assert (=> b!6107146 (= tp!1705068 e!3725504)))

(declare-fun b!6109563 () Bool)

(assert (=> b!6109563 (= e!3725504 tp_is_empty!41367)))

(declare-fun b!6109565 () Bool)

(declare-fun tp!1706313 () Bool)

(assert (=> b!6109565 (= e!3725504 tp!1706313)))

(assert (= (and b!6107146 ((_ is ElementMatch!16057) (reg!16386 (regOne!32627 (regOne!32626 r!7292))))) b!6109563))

(assert (= (and b!6107146 ((_ is Concat!24902) (reg!16386 (regOne!32627 (regOne!32626 r!7292))))) b!6109564))

(assert (= (and b!6107146 ((_ is Star!16057) (reg!16386 (regOne!32627 (regOne!32626 r!7292))))) b!6109565))

(assert (= (and b!6107146 ((_ is Union!16057) (reg!16386 (regOne!32627 (regOne!32626 r!7292))))) b!6109566))

(declare-fun b!6109570 () Bool)

(declare-fun e!3725505 () Bool)

(declare-fun tp!1706315 () Bool)

(declare-fun tp!1706319 () Bool)

(assert (=> b!6109570 (= e!3725505 (and tp!1706315 tp!1706319))))

(declare-fun b!6109568 () Bool)

(declare-fun tp!1706316 () Bool)

(declare-fun tp!1706317 () Bool)

(assert (=> b!6109568 (= e!3725505 (and tp!1706316 tp!1706317))))

(assert (=> b!6107242 (= tp!1705186 e!3725505)))

(declare-fun b!6109567 () Bool)

(assert (=> b!6109567 (= e!3725505 tp_is_empty!41367)))

(declare-fun b!6109569 () Bool)

(declare-fun tp!1706318 () Bool)

(assert (=> b!6109569 (= e!3725505 tp!1706318)))

(assert (= (and b!6107242 ((_ is ElementMatch!16057) (regOne!32627 (regOne!32627 (regOne!32627 r!7292))))) b!6109567))

(assert (= (and b!6107242 ((_ is Concat!24902) (regOne!32627 (regOne!32627 (regOne!32627 r!7292))))) b!6109568))

(assert (= (and b!6107242 ((_ is Star!16057) (regOne!32627 (regOne!32627 (regOne!32627 r!7292))))) b!6109569))

(assert (= (and b!6107242 ((_ is Union!16057) (regOne!32627 (regOne!32627 (regOne!32627 r!7292))))) b!6109570))

(declare-fun b!6109574 () Bool)

(declare-fun e!3725506 () Bool)

(declare-fun tp!1706320 () Bool)

(declare-fun tp!1706324 () Bool)

(assert (=> b!6109574 (= e!3725506 (and tp!1706320 tp!1706324))))

(declare-fun b!6109572 () Bool)

(declare-fun tp!1706321 () Bool)

(declare-fun tp!1706322 () Bool)

(assert (=> b!6109572 (= e!3725506 (and tp!1706321 tp!1706322))))

(assert (=> b!6107242 (= tp!1705190 e!3725506)))

(declare-fun b!6109571 () Bool)

(assert (=> b!6109571 (= e!3725506 tp_is_empty!41367)))

(declare-fun b!6109573 () Bool)

(declare-fun tp!1706323 () Bool)

(assert (=> b!6109573 (= e!3725506 tp!1706323)))

(assert (= (and b!6107242 ((_ is ElementMatch!16057) (regTwo!32627 (regOne!32627 (regOne!32627 r!7292))))) b!6109571))

(assert (= (and b!6107242 ((_ is Concat!24902) (regTwo!32627 (regOne!32627 (regOne!32627 r!7292))))) b!6109572))

(assert (= (and b!6107242 ((_ is Star!16057) (regTwo!32627 (regOne!32627 (regOne!32627 r!7292))))) b!6109573))

(assert (= (and b!6107242 ((_ is Union!16057) (regTwo!32627 (regOne!32627 (regOne!32627 r!7292))))) b!6109574))

(declare-fun b!6109578 () Bool)

(declare-fun e!3725507 () Bool)

(declare-fun tp!1706325 () Bool)

(declare-fun tp!1706329 () Bool)

(assert (=> b!6109578 (= e!3725507 (and tp!1706325 tp!1706329))))

(declare-fun b!6109576 () Bool)

(declare-fun tp!1706326 () Bool)

(declare-fun tp!1706327 () Bool)

(assert (=> b!6109576 (= e!3725507 (and tp!1706326 tp!1706327))))

(assert (=> b!6107188 (= tp!1705121 e!3725507)))

(declare-fun b!6109575 () Bool)

(assert (=> b!6109575 (= e!3725507 tp_is_empty!41367)))

(declare-fun b!6109577 () Bool)

(declare-fun tp!1706328 () Bool)

(assert (=> b!6109577 (= e!3725507 tp!1706328)))

(assert (= (and b!6107188 ((_ is ElementMatch!16057) (reg!16386 (regTwo!32627 (reg!16386 r!7292))))) b!6109575))

(assert (= (and b!6107188 ((_ is Concat!24902) (reg!16386 (regTwo!32627 (reg!16386 r!7292))))) b!6109576))

(assert (= (and b!6107188 ((_ is Star!16057) (reg!16386 (regTwo!32627 (reg!16386 r!7292))))) b!6109577))

(assert (= (and b!6107188 ((_ is Union!16057) (reg!16386 (regTwo!32627 (reg!16386 r!7292))))) b!6109578))

(declare-fun b!6109582 () Bool)

(declare-fun e!3725508 () Bool)

(declare-fun tp!1706330 () Bool)

(declare-fun tp!1706334 () Bool)

(assert (=> b!6109582 (= e!3725508 (and tp!1706330 tp!1706334))))

(declare-fun b!6109580 () Bool)

(declare-fun tp!1706331 () Bool)

(declare-fun tp!1706332 () Bool)

(assert (=> b!6109580 (= e!3725508 (and tp!1706331 tp!1706332))))

(assert (=> b!6107137 (= tp!1705056 e!3725508)))

(declare-fun b!6109579 () Bool)

(assert (=> b!6109579 (= e!3725508 tp_is_empty!41367)))

(declare-fun b!6109581 () Bool)

(declare-fun tp!1706333 () Bool)

(assert (=> b!6109581 (= e!3725508 tp!1706333)))

(assert (= (and b!6107137 ((_ is ElementMatch!16057) (regOne!32626 (regOne!32626 (regOne!32626 r!7292))))) b!6109579))

(assert (= (and b!6107137 ((_ is Concat!24902) (regOne!32626 (regOne!32626 (regOne!32626 r!7292))))) b!6109580))

(assert (= (and b!6107137 ((_ is Star!16057) (regOne!32626 (regOne!32626 (regOne!32626 r!7292))))) b!6109581))

(assert (= (and b!6107137 ((_ is Union!16057) (regOne!32626 (regOne!32626 (regOne!32626 r!7292))))) b!6109582))

(declare-fun b!6109586 () Bool)

(declare-fun e!3725509 () Bool)

(declare-fun tp!1706335 () Bool)

(declare-fun tp!1706339 () Bool)

(assert (=> b!6109586 (= e!3725509 (and tp!1706335 tp!1706339))))

(declare-fun b!6109584 () Bool)

(declare-fun tp!1706336 () Bool)

(declare-fun tp!1706337 () Bool)

(assert (=> b!6109584 (= e!3725509 (and tp!1706336 tp!1706337))))

(assert (=> b!6107137 (= tp!1705057 e!3725509)))

(declare-fun b!6109583 () Bool)

(assert (=> b!6109583 (= e!3725509 tp_is_empty!41367)))

(declare-fun b!6109585 () Bool)

(declare-fun tp!1706338 () Bool)

(assert (=> b!6109585 (= e!3725509 tp!1706338)))

(assert (= (and b!6107137 ((_ is ElementMatch!16057) (regTwo!32626 (regOne!32626 (regOne!32626 r!7292))))) b!6109583))

(assert (= (and b!6107137 ((_ is Concat!24902) (regTwo!32626 (regOne!32626 (regOne!32626 r!7292))))) b!6109584))

(assert (= (and b!6107137 ((_ is Star!16057) (regTwo!32626 (regOne!32626 (regOne!32626 r!7292))))) b!6109585))

(assert (= (and b!6107137 ((_ is Union!16057) (regTwo!32626 (regOne!32626 (regOne!32626 r!7292))))) b!6109586))

(declare-fun b!6109590 () Bool)

(declare-fun e!3725510 () Bool)

(declare-fun tp!1706340 () Bool)

(declare-fun tp!1706344 () Bool)

(assert (=> b!6109590 (= e!3725510 (and tp!1706340 tp!1706344))))

(declare-fun b!6109588 () Bool)

(declare-fun tp!1706341 () Bool)

(declare-fun tp!1706342 () Bool)

(assert (=> b!6109588 (= e!3725510 (and tp!1706341 tp!1706342))))

(assert (=> b!6107162 (= tp!1705087 e!3725510)))

(declare-fun b!6109587 () Bool)

(assert (=> b!6109587 (= e!3725510 tp_is_empty!41367)))

(declare-fun b!6109589 () Bool)

(declare-fun tp!1706343 () Bool)

(assert (=> b!6109589 (= e!3725510 tp!1706343)))

(assert (= (and b!6107162 ((_ is ElementMatch!16057) (regOne!32626 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109587))

(assert (= (and b!6107162 ((_ is Concat!24902) (regOne!32626 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109588))

(assert (= (and b!6107162 ((_ is Star!16057) (regOne!32626 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109589))

(assert (= (and b!6107162 ((_ is Union!16057) (regOne!32626 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109590))

(declare-fun b!6109594 () Bool)

(declare-fun e!3725511 () Bool)

(declare-fun tp!1706345 () Bool)

(declare-fun tp!1706349 () Bool)

(assert (=> b!6109594 (= e!3725511 (and tp!1706345 tp!1706349))))

(declare-fun b!6109592 () Bool)

(declare-fun tp!1706346 () Bool)

(declare-fun tp!1706347 () Bool)

(assert (=> b!6109592 (= e!3725511 (and tp!1706346 tp!1706347))))

(assert (=> b!6107162 (= tp!1705088 e!3725511)))

(declare-fun b!6109591 () Bool)

(assert (=> b!6109591 (= e!3725511 tp_is_empty!41367)))

(declare-fun b!6109593 () Bool)

(declare-fun tp!1706348 () Bool)

(assert (=> b!6109593 (= e!3725511 tp!1706348)))

(assert (= (and b!6107162 ((_ is ElementMatch!16057) (regTwo!32626 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109591))

(assert (= (and b!6107162 ((_ is Concat!24902) (regTwo!32626 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109592))

(assert (= (and b!6107162 ((_ is Star!16057) (regTwo!32626 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109593))

(assert (= (and b!6107162 ((_ is Union!16057) (regTwo!32626 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109594))

(declare-fun b!6109598 () Bool)

(declare-fun e!3725512 () Bool)

(declare-fun tp!1706350 () Bool)

(declare-fun tp!1706354 () Bool)

(assert (=> b!6109598 (= e!3725512 (and tp!1706350 tp!1706354))))

(declare-fun b!6109596 () Bool)

(declare-fun tp!1706351 () Bool)

(declare-fun tp!1706352 () Bool)

(assert (=> b!6109596 (= e!3725512 (and tp!1706351 tp!1706352))))

(assert (=> b!6107164 (= tp!1705086 e!3725512)))

(declare-fun b!6109595 () Bool)

(assert (=> b!6109595 (= e!3725512 tp_is_empty!41367)))

(declare-fun b!6109597 () Bool)

(declare-fun tp!1706353 () Bool)

(assert (=> b!6109597 (= e!3725512 tp!1706353)))

(assert (= (and b!6107164 ((_ is ElementMatch!16057) (regOne!32627 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109595))

(assert (= (and b!6107164 ((_ is Concat!24902) (regOne!32627 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109596))

(assert (= (and b!6107164 ((_ is Star!16057) (regOne!32627 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109597))

(assert (= (and b!6107164 ((_ is Union!16057) (regOne!32627 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109598))

(declare-fun b!6109602 () Bool)

(declare-fun e!3725513 () Bool)

(declare-fun tp!1706355 () Bool)

(declare-fun tp!1706359 () Bool)

(assert (=> b!6109602 (= e!3725513 (and tp!1706355 tp!1706359))))

(declare-fun b!6109600 () Bool)

(declare-fun tp!1706356 () Bool)

(declare-fun tp!1706357 () Bool)

(assert (=> b!6109600 (= e!3725513 (and tp!1706356 tp!1706357))))

(assert (=> b!6107164 (= tp!1705090 e!3725513)))

(declare-fun b!6109599 () Bool)

(assert (=> b!6109599 (= e!3725513 tp_is_empty!41367)))

(declare-fun b!6109601 () Bool)

(declare-fun tp!1706358 () Bool)

(assert (=> b!6109601 (= e!3725513 tp!1706358)))

(assert (= (and b!6107164 ((_ is ElementMatch!16057) (regTwo!32627 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109599))

(assert (= (and b!6107164 ((_ is Concat!24902) (regTwo!32627 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109600))

(assert (= (and b!6107164 ((_ is Star!16057) (regTwo!32627 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109601))

(assert (= (and b!6107164 ((_ is Union!16057) (regTwo!32627 (regTwo!32626 (regTwo!32627 r!7292))))) b!6109602))

(declare-fun b!6109606 () Bool)

(declare-fun e!3725514 () Bool)

(declare-fun tp!1706360 () Bool)

(declare-fun tp!1706364 () Bool)

(assert (=> b!6109606 (= e!3725514 (and tp!1706360 tp!1706364))))

(declare-fun b!6109604 () Bool)

(declare-fun tp!1706361 () Bool)

(declare-fun tp!1706362 () Bool)

(assert (=> b!6109604 (= e!3725514 (and tp!1706361 tp!1706362))))

(assert (=> b!6107214 (= tp!1705153 e!3725514)))

(declare-fun b!6109603 () Bool)

(assert (=> b!6109603 (= e!3725514 tp_is_empty!41367)))

(declare-fun b!6109605 () Bool)

(declare-fun tp!1706363 () Bool)

(assert (=> b!6109605 (= e!3725514 tp!1706363)))

(assert (= (and b!6107214 ((_ is ElementMatch!16057) (h!70794 (exprs!5941 setElem!41266)))) b!6109603))

(assert (= (and b!6107214 ((_ is Concat!24902) (h!70794 (exprs!5941 setElem!41266)))) b!6109604))

(assert (= (and b!6107214 ((_ is Star!16057) (h!70794 (exprs!5941 setElem!41266)))) b!6109605))

(assert (= (and b!6107214 ((_ is Union!16057) (h!70794 (exprs!5941 setElem!41266)))) b!6109606))

(declare-fun b!6109607 () Bool)

(declare-fun e!3725515 () Bool)

(declare-fun tp!1706365 () Bool)

(declare-fun tp!1706366 () Bool)

(assert (=> b!6109607 (= e!3725515 (and tp!1706365 tp!1706366))))

(assert (=> b!6107214 (= tp!1705154 e!3725515)))

(assert (= (and b!6107214 ((_ is Cons!64346) (t!377923 (exprs!5941 setElem!41266)))) b!6109607))

(declare-fun b!6109611 () Bool)

(declare-fun e!3725516 () Bool)

(declare-fun tp!1706367 () Bool)

(declare-fun tp!1706371 () Bool)

(assert (=> b!6109611 (= e!3725516 (and tp!1706367 tp!1706371))))

(declare-fun b!6109609 () Bool)

(declare-fun tp!1706368 () Bool)

(declare-fun tp!1706369 () Bool)

(assert (=> b!6109609 (= e!3725516 (and tp!1706368 tp!1706369))))

(assert (=> b!6107155 (= tp!1705079 e!3725516)))

(declare-fun b!6109608 () Bool)

(assert (=> b!6109608 (= e!3725516 tp_is_empty!41367)))

(declare-fun b!6109610 () Bool)

(declare-fun tp!1706370 () Bool)

(assert (=> b!6109610 (= e!3725516 tp!1706370)))

(assert (= (and b!6107155 ((_ is ElementMatch!16057) (reg!16386 (reg!16386 (regOne!32626 r!7292))))) b!6109608))

(assert (= (and b!6107155 ((_ is Concat!24902) (reg!16386 (reg!16386 (regOne!32626 r!7292))))) b!6109609))

(assert (= (and b!6107155 ((_ is Star!16057) (reg!16386 (reg!16386 (regOne!32626 r!7292))))) b!6109610))

(assert (= (and b!6107155 ((_ is Union!16057) (reg!16386 (reg!16386 (regOne!32626 r!7292))))) b!6109611))

(declare-fun b!6109615 () Bool)

(declare-fun e!3725517 () Bool)

(declare-fun tp!1706372 () Bool)

(declare-fun tp!1706376 () Bool)

(assert (=> b!6109615 (= e!3725517 (and tp!1706372 tp!1706376))))

(declare-fun b!6109613 () Bool)

(declare-fun tp!1706373 () Bool)

(declare-fun tp!1706374 () Bool)

(assert (=> b!6109613 (= e!3725517 (and tp!1706373 tp!1706374))))

(assert (=> b!6107250 (= tp!1705201 e!3725517)))

(declare-fun b!6109612 () Bool)

(assert (=> b!6109612 (= e!3725517 tp_is_empty!41367)))

(declare-fun b!6109614 () Bool)

(declare-fun tp!1706375 () Bool)

(assert (=> b!6109614 (= e!3725517 tp!1706375)))

(assert (= (and b!6107250 ((_ is ElementMatch!16057) (reg!16386 (reg!16386 (regOne!32627 r!7292))))) b!6109612))

(assert (= (and b!6107250 ((_ is Concat!24902) (reg!16386 (reg!16386 (regOne!32627 r!7292))))) b!6109613))

(assert (= (and b!6107250 ((_ is Star!16057) (reg!16386 (reg!16386 (regOne!32627 r!7292))))) b!6109614))

(assert (= (and b!6107250 ((_ is Union!16057) (reg!16386 (reg!16386 (regOne!32627 r!7292))))) b!6109615))

(declare-fun b!6109619 () Bool)

(declare-fun e!3725518 () Bool)

(declare-fun tp!1706377 () Bool)

(declare-fun tp!1706381 () Bool)

(assert (=> b!6109619 (= e!3725518 (and tp!1706377 tp!1706381))))

(declare-fun b!6109617 () Bool)

(declare-fun tp!1706378 () Bool)

(declare-fun tp!1706379 () Bool)

(assert (=> b!6109617 (= e!3725518 (and tp!1706378 tp!1706379))))

(assert (=> b!6107179 (= tp!1705109 e!3725518)))

(declare-fun b!6109616 () Bool)

(assert (=> b!6109616 (= e!3725518 tp_is_empty!41367)))

(declare-fun b!6109618 () Bool)

(declare-fun tp!1706380 () Bool)

(assert (=> b!6109618 (= e!3725518 tp!1706380)))

(assert (= (and b!6107179 ((_ is ElementMatch!16057) (regOne!32626 (reg!16386 (regTwo!32627 r!7292))))) b!6109616))

(assert (= (and b!6107179 ((_ is Concat!24902) (regOne!32626 (reg!16386 (regTwo!32627 r!7292))))) b!6109617))

(assert (= (and b!6107179 ((_ is Star!16057) (regOne!32626 (reg!16386 (regTwo!32627 r!7292))))) b!6109618))

(assert (= (and b!6107179 ((_ is Union!16057) (regOne!32626 (reg!16386 (regTwo!32627 r!7292))))) b!6109619))

(declare-fun b!6109623 () Bool)

(declare-fun e!3725519 () Bool)

(declare-fun tp!1706382 () Bool)

(declare-fun tp!1706386 () Bool)

(assert (=> b!6109623 (= e!3725519 (and tp!1706382 tp!1706386))))

(declare-fun b!6109621 () Bool)

(declare-fun tp!1706383 () Bool)

(declare-fun tp!1706384 () Bool)

(assert (=> b!6109621 (= e!3725519 (and tp!1706383 tp!1706384))))

(assert (=> b!6107179 (= tp!1705110 e!3725519)))

(declare-fun b!6109620 () Bool)

(assert (=> b!6109620 (= e!3725519 tp_is_empty!41367)))

(declare-fun b!6109622 () Bool)

(declare-fun tp!1706385 () Bool)

(assert (=> b!6109622 (= e!3725519 tp!1706385)))

(assert (= (and b!6107179 ((_ is ElementMatch!16057) (regTwo!32626 (reg!16386 (regTwo!32627 r!7292))))) b!6109620))

(assert (= (and b!6107179 ((_ is Concat!24902) (regTwo!32626 (reg!16386 (regTwo!32627 r!7292))))) b!6109621))

(assert (= (and b!6107179 ((_ is Star!16057) (regTwo!32626 (reg!16386 (regTwo!32627 r!7292))))) b!6109622))

(assert (= (and b!6107179 ((_ is Union!16057) (regTwo!32626 (reg!16386 (regTwo!32627 r!7292))))) b!6109623))

(declare-fun b!6109627 () Bool)

(declare-fun e!3725520 () Bool)

(declare-fun tp!1706387 () Bool)

(declare-fun tp!1706391 () Bool)

(assert (=> b!6109627 (= e!3725520 (and tp!1706387 tp!1706391))))

(declare-fun b!6109625 () Bool)

(declare-fun tp!1706388 () Bool)

(declare-fun tp!1706389 () Bool)

(assert (=> b!6109625 (= e!3725520 (and tp!1706388 tp!1706389))))

(assert (=> b!6107218 (= tp!1705160 e!3725520)))

(declare-fun b!6109624 () Bool)

(assert (=> b!6109624 (= e!3725520 tp_is_empty!41367)))

(declare-fun b!6109626 () Bool)

(declare-fun tp!1706390 () Bool)

(assert (=> b!6109626 (= e!3725520 tp!1706390)))

(assert (= (and b!6107218 ((_ is ElementMatch!16057) (reg!16386 (regOne!32627 (regTwo!32626 r!7292))))) b!6109624))

(assert (= (and b!6107218 ((_ is Concat!24902) (reg!16386 (regOne!32627 (regTwo!32626 r!7292))))) b!6109625))

(assert (= (and b!6107218 ((_ is Star!16057) (reg!16386 (regOne!32627 (regTwo!32626 r!7292))))) b!6109626))

(assert (= (and b!6107218 ((_ is Union!16057) (reg!16386 (regOne!32627 (regTwo!32626 r!7292))))) b!6109627))

(declare-fun b!6109631 () Bool)

(declare-fun e!3725521 () Bool)

(declare-fun tp!1706392 () Bool)

(declare-fun tp!1706396 () Bool)

(assert (=> b!6109631 (= e!3725521 (and tp!1706392 tp!1706396))))

(declare-fun b!6109629 () Bool)

(declare-fun tp!1706393 () Bool)

(declare-fun tp!1706394 () Bool)

(assert (=> b!6109629 (= e!3725521 (and tp!1706393 tp!1706394))))

(assert (=> b!6107181 (= tp!1705108 e!3725521)))

(declare-fun b!6109628 () Bool)

(assert (=> b!6109628 (= e!3725521 tp_is_empty!41367)))

(declare-fun b!6109630 () Bool)

(declare-fun tp!1706395 () Bool)

(assert (=> b!6109630 (= e!3725521 tp!1706395)))

(assert (= (and b!6107181 ((_ is ElementMatch!16057) (regOne!32627 (reg!16386 (regTwo!32627 r!7292))))) b!6109628))

(assert (= (and b!6107181 ((_ is Concat!24902) (regOne!32627 (reg!16386 (regTwo!32627 r!7292))))) b!6109629))

(assert (= (and b!6107181 ((_ is Star!16057) (regOne!32627 (reg!16386 (regTwo!32627 r!7292))))) b!6109630))

(assert (= (and b!6107181 ((_ is Union!16057) (regOne!32627 (reg!16386 (regTwo!32627 r!7292))))) b!6109631))

(declare-fun b!6109635 () Bool)

(declare-fun e!3725522 () Bool)

(declare-fun tp!1706397 () Bool)

(declare-fun tp!1706401 () Bool)

(assert (=> b!6109635 (= e!3725522 (and tp!1706397 tp!1706401))))

(declare-fun b!6109633 () Bool)

(declare-fun tp!1706398 () Bool)

(declare-fun tp!1706399 () Bool)

(assert (=> b!6109633 (= e!3725522 (and tp!1706398 tp!1706399))))

(assert (=> b!6107181 (= tp!1705112 e!3725522)))

(declare-fun b!6109632 () Bool)

(assert (=> b!6109632 (= e!3725522 tp_is_empty!41367)))

(declare-fun b!6109634 () Bool)

(declare-fun tp!1706400 () Bool)

(assert (=> b!6109634 (= e!3725522 tp!1706400)))

(assert (= (and b!6107181 ((_ is ElementMatch!16057) (regTwo!32627 (reg!16386 (regTwo!32627 r!7292))))) b!6109632))

(assert (= (and b!6107181 ((_ is Concat!24902) (regTwo!32627 (reg!16386 (regTwo!32627 r!7292))))) b!6109633))

(assert (= (and b!6107181 ((_ is Star!16057) (regTwo!32627 (reg!16386 (regTwo!32627 r!7292))))) b!6109634))

(assert (= (and b!6107181 ((_ is Union!16057) (regTwo!32627 (reg!16386 (regTwo!32627 r!7292))))) b!6109635))

(declare-fun b!6109639 () Bool)

(declare-fun e!3725523 () Bool)

(declare-fun tp!1706402 () Bool)

(declare-fun tp!1706406 () Bool)

(assert (=> b!6109639 (= e!3725523 (and tp!1706402 tp!1706406))))

(declare-fun b!6109637 () Bool)

(declare-fun tp!1706403 () Bool)

(declare-fun tp!1706404 () Bool)

(assert (=> b!6109637 (= e!3725523 (and tp!1706403 tp!1706404))))

(assert (=> b!6107172 (= tp!1705101 e!3725523)))

(declare-fun b!6109636 () Bool)

(assert (=> b!6109636 (= e!3725523 tp_is_empty!41367)))

(declare-fun b!6109638 () Bool)

(declare-fun tp!1706405 () Bool)

(assert (=> b!6109638 (= e!3725523 tp!1706405)))

(assert (= (and b!6107172 ((_ is ElementMatch!16057) (reg!16386 (regOne!32627 (regTwo!32627 r!7292))))) b!6109636))

(assert (= (and b!6107172 ((_ is Concat!24902) (reg!16386 (regOne!32627 (regTwo!32627 r!7292))))) b!6109637))

(assert (= (and b!6107172 ((_ is Star!16057) (reg!16386 (regOne!32627 (regTwo!32627 r!7292))))) b!6109638))

(assert (= (and b!6107172 ((_ is Union!16057) (reg!16386 (regOne!32627 (regTwo!32627 r!7292))))) b!6109639))

(declare-fun b!6109643 () Bool)

(declare-fun e!3725524 () Bool)

(declare-fun tp!1706407 () Bool)

(declare-fun tp!1706411 () Bool)

(assert (=> b!6109643 (= e!3725524 (and tp!1706407 tp!1706411))))

(declare-fun b!6109641 () Bool)

(declare-fun tp!1706408 () Bool)

(declare-fun tp!1706409 () Bool)

(assert (=> b!6109641 (= e!3725524 (and tp!1706408 tp!1706409))))

(assert (=> b!6107139 (= tp!1705055 e!3725524)))

(declare-fun b!6109640 () Bool)

(assert (=> b!6109640 (= e!3725524 tp_is_empty!41367)))

(declare-fun b!6109642 () Bool)

(declare-fun tp!1706410 () Bool)

(assert (=> b!6109642 (= e!3725524 tp!1706410)))

(assert (= (and b!6107139 ((_ is ElementMatch!16057) (regOne!32627 (regOne!32626 (regOne!32626 r!7292))))) b!6109640))

(assert (= (and b!6107139 ((_ is Concat!24902) (regOne!32627 (regOne!32626 (regOne!32626 r!7292))))) b!6109641))

(assert (= (and b!6107139 ((_ is Star!16057) (regOne!32627 (regOne!32626 (regOne!32626 r!7292))))) b!6109642))

(assert (= (and b!6107139 ((_ is Union!16057) (regOne!32627 (regOne!32626 (regOne!32626 r!7292))))) b!6109643))

(declare-fun b!6109647 () Bool)

(declare-fun e!3725525 () Bool)

(declare-fun tp!1706412 () Bool)

(declare-fun tp!1706416 () Bool)

(assert (=> b!6109647 (= e!3725525 (and tp!1706412 tp!1706416))))

(declare-fun b!6109645 () Bool)

(declare-fun tp!1706413 () Bool)

(declare-fun tp!1706414 () Bool)

(assert (=> b!6109645 (= e!3725525 (and tp!1706413 tp!1706414))))

(assert (=> b!6107139 (= tp!1705059 e!3725525)))

(declare-fun b!6109644 () Bool)

(assert (=> b!6109644 (= e!3725525 tp_is_empty!41367)))

(declare-fun b!6109646 () Bool)

(declare-fun tp!1706415 () Bool)

(assert (=> b!6109646 (= e!3725525 tp!1706415)))

(assert (= (and b!6107139 ((_ is ElementMatch!16057) (regTwo!32627 (regOne!32626 (regOne!32626 r!7292))))) b!6109644))

(assert (= (and b!6107139 ((_ is Concat!24902) (regTwo!32627 (regOne!32626 (regOne!32626 r!7292))))) b!6109645))

(assert (= (and b!6107139 ((_ is Star!16057) (regTwo!32627 (regOne!32626 (regOne!32626 r!7292))))) b!6109646))

(assert (= (and b!6107139 ((_ is Union!16057) (regTwo!32627 (regOne!32626 (regOne!32626 r!7292))))) b!6109647))

(declare-fun b!6109648 () Bool)

(declare-fun e!3725526 () Bool)

(declare-fun tp!1706417 () Bool)

(declare-fun tp!1706418 () Bool)

(assert (=> b!6109648 (= e!3725526 (and tp!1706417 tp!1706418))))

(assert (=> b!6107018 (= tp!1705053 e!3725526)))

(assert (= (and b!6107018 ((_ is Cons!64346) (exprs!5941 (h!70795 res!2533515)))) b!6109648))

(declare-fun b!6109652 () Bool)

(declare-fun e!3725527 () Bool)

(declare-fun tp!1706419 () Bool)

(declare-fun tp!1706423 () Bool)

(assert (=> b!6109652 (= e!3725527 (and tp!1706419 tp!1706423))))

(declare-fun b!6109650 () Bool)

(declare-fun tp!1706420 () Bool)

(declare-fun tp!1706421 () Bool)

(assert (=> b!6109650 (= e!3725527 (and tp!1706420 tp!1706421))))

(assert (=> b!6107227 (= tp!1705170 e!3725527)))

(declare-fun b!6109649 () Bool)

(assert (=> b!6109649 (= e!3725527 tp_is_empty!41367)))

(declare-fun b!6109651 () Bool)

(declare-fun tp!1706422 () Bool)

(assert (=> b!6109651 (= e!3725527 tp!1706422)))

(assert (= (and b!6107227 ((_ is ElementMatch!16057) (regOne!32626 (regOne!32626 (regOne!32627 r!7292))))) b!6109649))

(assert (= (and b!6107227 ((_ is Concat!24902) (regOne!32626 (regOne!32626 (regOne!32627 r!7292))))) b!6109650))

(assert (= (and b!6107227 ((_ is Star!16057) (regOne!32626 (regOne!32626 (regOne!32627 r!7292))))) b!6109651))

(assert (= (and b!6107227 ((_ is Union!16057) (regOne!32626 (regOne!32626 (regOne!32627 r!7292))))) b!6109652))

(declare-fun b!6109656 () Bool)

(declare-fun e!3725528 () Bool)

(declare-fun tp!1706424 () Bool)

(declare-fun tp!1706428 () Bool)

(assert (=> b!6109656 (= e!3725528 (and tp!1706424 tp!1706428))))

(declare-fun b!6109654 () Bool)

(declare-fun tp!1706425 () Bool)

(declare-fun tp!1706426 () Bool)

(assert (=> b!6109654 (= e!3725528 (and tp!1706425 tp!1706426))))

(assert (=> b!6107227 (= tp!1705171 e!3725528)))

(declare-fun b!6109653 () Bool)

(assert (=> b!6109653 (= e!3725528 tp_is_empty!41367)))

(declare-fun b!6109655 () Bool)

(declare-fun tp!1706427 () Bool)

(assert (=> b!6109655 (= e!3725528 tp!1706427)))

(assert (= (and b!6107227 ((_ is ElementMatch!16057) (regTwo!32626 (regOne!32626 (regOne!32627 r!7292))))) b!6109653))

(assert (= (and b!6107227 ((_ is Concat!24902) (regTwo!32626 (regOne!32626 (regOne!32627 r!7292))))) b!6109654))

(assert (= (and b!6107227 ((_ is Star!16057) (regTwo!32626 (regOne!32626 (regOne!32627 r!7292))))) b!6109655))

(assert (= (and b!6107227 ((_ is Union!16057) (regTwo!32626 (regOne!32626 (regOne!32627 r!7292))))) b!6109656))

(declare-fun b!6109660 () Bool)

(declare-fun e!3725529 () Bool)

(declare-fun tp!1706429 () Bool)

(declare-fun tp!1706433 () Bool)

(assert (=> b!6109660 (= e!3725529 (and tp!1706429 tp!1706433))))

(declare-fun b!6109658 () Bool)

(declare-fun tp!1706430 () Bool)

(declare-fun tp!1706431 () Bool)

(assert (=> b!6109658 (= e!3725529 (and tp!1706430 tp!1706431))))

(assert (=> b!6107236 (= tp!1705182 e!3725529)))

(declare-fun b!6109657 () Bool)

(assert (=> b!6109657 (= e!3725529 tp_is_empty!41367)))

(declare-fun b!6109659 () Bool)

(declare-fun tp!1706432 () Bool)

(assert (=> b!6109659 (= e!3725529 tp!1706432)))

(assert (= (and b!6107236 ((_ is ElementMatch!16057) (reg!16386 (h!70794 (exprs!5941 setElem!41260))))) b!6109657))

(assert (= (and b!6107236 ((_ is Concat!24902) (reg!16386 (h!70794 (exprs!5941 setElem!41260))))) b!6109658))

(assert (= (and b!6107236 ((_ is Star!16057) (reg!16386 (h!70794 (exprs!5941 setElem!41260))))) b!6109659))

(assert (= (and b!6107236 ((_ is Union!16057) (reg!16386 (h!70794 (exprs!5941 setElem!41260))))) b!6109660))

(declare-fun b!6109664 () Bool)

(declare-fun e!3725530 () Bool)

(declare-fun tp!1706434 () Bool)

(declare-fun tp!1706438 () Bool)

(assert (=> b!6109664 (= e!3725530 (and tp!1706434 tp!1706438))))

(declare-fun b!6109662 () Bool)

(declare-fun tp!1706435 () Bool)

(declare-fun tp!1706436 () Bool)

(assert (=> b!6109662 (= e!3725530 (and tp!1706435 tp!1706436))))

(assert (=> b!6107199 (= tp!1705134 e!3725530)))

(declare-fun b!6109661 () Bool)

(assert (=> b!6109661 (= e!3725530 tp_is_empty!41367)))

(declare-fun b!6109663 () Bool)

(declare-fun tp!1706437 () Bool)

(assert (=> b!6109663 (= e!3725530 tp!1706437)))

(assert (= (and b!6107199 ((_ is ElementMatch!16057) (regOne!32626 (regOne!32626 (regTwo!32626 r!7292))))) b!6109661))

(assert (= (and b!6107199 ((_ is Concat!24902) (regOne!32626 (regOne!32626 (regTwo!32626 r!7292))))) b!6109662))

(assert (= (and b!6107199 ((_ is Star!16057) (regOne!32626 (regOne!32626 (regTwo!32626 r!7292))))) b!6109663))

(assert (= (and b!6107199 ((_ is Union!16057) (regOne!32626 (regOne!32626 (regTwo!32626 r!7292))))) b!6109664))

(declare-fun b!6109668 () Bool)

(declare-fun e!3725531 () Bool)

(declare-fun tp!1706439 () Bool)

(declare-fun tp!1706443 () Bool)

(assert (=> b!6109668 (= e!3725531 (and tp!1706439 tp!1706443))))

(declare-fun b!6109666 () Bool)

(declare-fun tp!1706440 () Bool)

(declare-fun tp!1706441 () Bool)

(assert (=> b!6109666 (= e!3725531 (and tp!1706440 tp!1706441))))

(assert (=> b!6107199 (= tp!1705135 e!3725531)))

(declare-fun b!6109665 () Bool)

(assert (=> b!6109665 (= e!3725531 tp_is_empty!41367)))

(declare-fun b!6109667 () Bool)

(declare-fun tp!1706442 () Bool)

(assert (=> b!6109667 (= e!3725531 tp!1706442)))

(assert (= (and b!6107199 ((_ is ElementMatch!16057) (regTwo!32626 (regOne!32626 (regTwo!32626 r!7292))))) b!6109665))

(assert (= (and b!6107199 ((_ is Concat!24902) (regTwo!32626 (regOne!32626 (regTwo!32626 r!7292))))) b!6109666))

(assert (= (and b!6107199 ((_ is Star!16057) (regTwo!32626 (regOne!32626 (regTwo!32626 r!7292))))) b!6109667))

(assert (= (and b!6107199 ((_ is Union!16057) (regTwo!32626 (regOne!32626 (regTwo!32626 r!7292))))) b!6109668))

(declare-fun b!6109672 () Bool)

(declare-fun e!3725532 () Bool)

(declare-fun tp!1706444 () Bool)

(declare-fun tp!1706448 () Bool)

(assert (=> b!6109672 (= e!3725532 (and tp!1706444 tp!1706448))))

(declare-fun b!6109670 () Bool)

(declare-fun tp!1706445 () Bool)

(declare-fun tp!1706446 () Bool)

(assert (=> b!6109670 (= e!3725532 (and tp!1706445 tp!1706446))))

(assert (=> b!6107244 (= tp!1705192 e!3725532)))

(declare-fun b!6109669 () Bool)

(assert (=> b!6109669 (= e!3725532 tp_is_empty!41367)))

(declare-fun b!6109671 () Bool)

(declare-fun tp!1706447 () Bool)

(assert (=> b!6109671 (= e!3725532 tp!1706447)))

(assert (= (and b!6107244 ((_ is ElementMatch!16057) (regOne!32626 (regTwo!32627 (regOne!32627 r!7292))))) b!6109669))

(assert (= (and b!6107244 ((_ is Concat!24902) (regOne!32626 (regTwo!32627 (regOne!32627 r!7292))))) b!6109670))

(assert (= (and b!6107244 ((_ is Star!16057) (regOne!32626 (regTwo!32627 (regOne!32627 r!7292))))) b!6109671))

(assert (= (and b!6107244 ((_ is Union!16057) (regOne!32626 (regTwo!32627 (regOne!32627 r!7292))))) b!6109672))

(declare-fun b!6109676 () Bool)

(declare-fun e!3725533 () Bool)

(declare-fun tp!1706449 () Bool)

(declare-fun tp!1706453 () Bool)

(assert (=> b!6109676 (= e!3725533 (and tp!1706449 tp!1706453))))

(declare-fun b!6109674 () Bool)

(declare-fun tp!1706450 () Bool)

(declare-fun tp!1706451 () Bool)

(assert (=> b!6109674 (= e!3725533 (and tp!1706450 tp!1706451))))

(assert (=> b!6107244 (= tp!1705193 e!3725533)))

(declare-fun b!6109673 () Bool)

(assert (=> b!6109673 (= e!3725533 tp_is_empty!41367)))

(declare-fun b!6109675 () Bool)

(declare-fun tp!1706452 () Bool)

(assert (=> b!6109675 (= e!3725533 tp!1706452)))

(assert (= (and b!6107244 ((_ is ElementMatch!16057) (regTwo!32626 (regTwo!32627 (regOne!32627 r!7292))))) b!6109673))

(assert (= (and b!6107244 ((_ is Concat!24902) (regTwo!32626 (regTwo!32627 (regOne!32627 r!7292))))) b!6109674))

(assert (= (and b!6107244 ((_ is Star!16057) (regTwo!32626 (regTwo!32627 (regOne!32627 r!7292))))) b!6109675))

(assert (= (and b!6107244 ((_ is Union!16057) (regTwo!32626 (regTwo!32627 (regOne!32627 r!7292))))) b!6109676))

(declare-fun b!6109680 () Bool)

(declare-fun e!3725534 () Bool)

(declare-fun tp!1706454 () Bool)

(declare-fun tp!1706458 () Bool)

(assert (=> b!6109680 (= e!3725534 (and tp!1706454 tp!1706458))))

(declare-fun b!6109678 () Bool)

(declare-fun tp!1706455 () Bool)

(declare-fun tp!1706456 () Bool)

(assert (=> b!6109678 (= e!3725534 (and tp!1706455 tp!1706456))))

(assert (=> b!6107208 (= tp!1705146 e!3725534)))

(declare-fun b!6109677 () Bool)

(assert (=> b!6109677 (= e!3725534 tp_is_empty!41367)))

(declare-fun b!6109679 () Bool)

(declare-fun tp!1706457 () Bool)

(assert (=> b!6109679 (= e!3725534 tp!1706457)))

(assert (= (and b!6107208 ((_ is ElementMatch!16057) (reg!16386 (regOne!32626 (reg!16386 r!7292))))) b!6109677))

(assert (= (and b!6107208 ((_ is Concat!24902) (reg!16386 (regOne!32626 (reg!16386 r!7292))))) b!6109678))

(assert (= (and b!6107208 ((_ is Star!16057) (reg!16386 (regOne!32626 (reg!16386 r!7292))))) b!6109679))

(assert (= (and b!6107208 ((_ is Union!16057) (reg!16386 (regOne!32626 (reg!16386 r!7292))))) b!6109680))

(declare-fun b!6109684 () Bool)

(declare-fun e!3725535 () Bool)

(declare-fun tp!1706459 () Bool)

(declare-fun tp!1706463 () Bool)

(assert (=> b!6109684 (= e!3725535 (and tp!1706459 tp!1706463))))

(declare-fun b!6109682 () Bool)

(declare-fun tp!1706460 () Bool)

(declare-fun tp!1706461 () Bool)

(assert (=> b!6109682 (= e!3725535 (and tp!1706460 tp!1706461))))

(assert (=> b!6107166 (= tp!1705092 e!3725535)))

(declare-fun b!6109681 () Bool)

(assert (=> b!6109681 (= e!3725535 tp_is_empty!41367)))

(declare-fun b!6109683 () Bool)

(declare-fun tp!1706462 () Bool)

(assert (=> b!6109683 (= e!3725535 tp!1706462)))

(assert (= (and b!6107166 ((_ is ElementMatch!16057) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109681))

(assert (= (and b!6107166 ((_ is Concat!24902) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109682))

(assert (= (and b!6107166 ((_ is Star!16057) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109683))

(assert (= (and b!6107166 ((_ is Union!16057) (regOne!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109684))

(declare-fun b!6109688 () Bool)

(declare-fun e!3725536 () Bool)

(declare-fun tp!1706464 () Bool)

(declare-fun tp!1706468 () Bool)

(assert (=> b!6109688 (= e!3725536 (and tp!1706464 tp!1706468))))

(declare-fun b!6109686 () Bool)

(declare-fun tp!1706465 () Bool)

(declare-fun tp!1706466 () Bool)

(assert (=> b!6109686 (= e!3725536 (and tp!1706465 tp!1706466))))

(assert (=> b!6107166 (= tp!1705093 e!3725536)))

(declare-fun b!6109685 () Bool)

(assert (=> b!6109685 (= e!3725536 tp_is_empty!41367)))

(declare-fun b!6109687 () Bool)

(declare-fun tp!1706467 () Bool)

(assert (=> b!6109687 (= e!3725536 tp!1706467)))

(assert (= (and b!6107166 ((_ is ElementMatch!16057) (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109685))

(assert (= (and b!6107166 ((_ is Concat!24902) (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109686))

(assert (= (and b!6107166 ((_ is Star!16057) (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109687))

(assert (= (and b!6107166 ((_ is Union!16057) (regTwo!32626 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109688))

(declare-fun b!6109692 () Bool)

(declare-fun e!3725537 () Bool)

(declare-fun tp!1706469 () Bool)

(declare-fun tp!1706473 () Bool)

(assert (=> b!6109692 (= e!3725537 (and tp!1706469 tp!1706473))))

(declare-fun b!6109690 () Bool)

(declare-fun tp!1706470 () Bool)

(declare-fun tp!1706471 () Bool)

(assert (=> b!6109690 (= e!3725537 (and tp!1706470 tp!1706471))))

(assert (=> b!6107229 (= tp!1705169 e!3725537)))

(declare-fun b!6109689 () Bool)

(assert (=> b!6109689 (= e!3725537 tp_is_empty!41367)))

(declare-fun b!6109691 () Bool)

(declare-fun tp!1706472 () Bool)

(assert (=> b!6109691 (= e!3725537 tp!1706472)))

(assert (= (and b!6107229 ((_ is ElementMatch!16057) (regOne!32627 (regOne!32626 (regOne!32627 r!7292))))) b!6109689))

(assert (= (and b!6107229 ((_ is Concat!24902) (regOne!32627 (regOne!32626 (regOne!32627 r!7292))))) b!6109690))

(assert (= (and b!6107229 ((_ is Star!16057) (regOne!32627 (regOne!32626 (regOne!32627 r!7292))))) b!6109691))

(assert (= (and b!6107229 ((_ is Union!16057) (regOne!32627 (regOne!32626 (regOne!32627 r!7292))))) b!6109692))

(declare-fun b!6109696 () Bool)

(declare-fun e!3725538 () Bool)

(declare-fun tp!1706474 () Bool)

(declare-fun tp!1706478 () Bool)

(assert (=> b!6109696 (= e!3725538 (and tp!1706474 tp!1706478))))

(declare-fun b!6109694 () Bool)

(declare-fun tp!1706475 () Bool)

(declare-fun tp!1706476 () Bool)

(assert (=> b!6109694 (= e!3725538 (and tp!1706475 tp!1706476))))

(assert (=> b!6107229 (= tp!1705173 e!3725538)))

(declare-fun b!6109693 () Bool)

(assert (=> b!6109693 (= e!3725538 tp_is_empty!41367)))

(declare-fun b!6109695 () Bool)

(declare-fun tp!1706477 () Bool)

(assert (=> b!6109695 (= e!3725538 tp!1706477)))

(assert (= (and b!6107229 ((_ is ElementMatch!16057) (regTwo!32627 (regOne!32626 (regOne!32627 r!7292))))) b!6109693))

(assert (= (and b!6107229 ((_ is Concat!24902) (regTwo!32627 (regOne!32626 (regOne!32627 r!7292))))) b!6109694))

(assert (= (and b!6107229 ((_ is Star!16057) (regTwo!32627 (regOne!32626 (regOne!32627 r!7292))))) b!6109695))

(assert (= (and b!6107229 ((_ is Union!16057) (regTwo!32627 (regOne!32626 (regOne!32627 r!7292))))) b!6109696))

(declare-fun b!6109700 () Bool)

(declare-fun e!3725539 () Bool)

(declare-fun tp!1706479 () Bool)

(declare-fun tp!1706483 () Bool)

(assert (=> b!6109700 (= e!3725539 (and tp!1706479 tp!1706483))))

(declare-fun b!6109698 () Bool)

(declare-fun tp!1706480 () Bool)

(declare-fun tp!1706481 () Bool)

(assert (=> b!6109698 (= e!3725539 (and tp!1706480 tp!1706481))))

(assert (=> b!6107158 (= tp!1705082 e!3725539)))

(declare-fun b!6109697 () Bool)

(assert (=> b!6109697 (= e!3725539 tp_is_empty!41367)))

(declare-fun b!6109699 () Bool)

(declare-fun tp!1706482 () Bool)

(assert (=> b!6109699 (= e!3725539 tp!1706482)))

(assert (= (and b!6107158 ((_ is ElementMatch!16057) (regOne!32626 (regOne!32626 (regTwo!32627 r!7292))))) b!6109697))

(assert (= (and b!6107158 ((_ is Concat!24902) (regOne!32626 (regOne!32626 (regTwo!32627 r!7292))))) b!6109698))

(assert (= (and b!6107158 ((_ is Star!16057) (regOne!32626 (regOne!32626 (regTwo!32627 r!7292))))) b!6109699))

(assert (= (and b!6107158 ((_ is Union!16057) (regOne!32626 (regOne!32626 (regTwo!32627 r!7292))))) b!6109700))

(declare-fun b!6109704 () Bool)

(declare-fun e!3725540 () Bool)

(declare-fun tp!1706484 () Bool)

(declare-fun tp!1706488 () Bool)

(assert (=> b!6109704 (= e!3725540 (and tp!1706484 tp!1706488))))

(declare-fun b!6109702 () Bool)

(declare-fun tp!1706485 () Bool)

(declare-fun tp!1706486 () Bool)

(assert (=> b!6109702 (= e!3725540 (and tp!1706485 tp!1706486))))

(assert (=> b!6107158 (= tp!1705083 e!3725540)))

(declare-fun b!6109701 () Bool)

(assert (=> b!6109701 (= e!3725540 tp_is_empty!41367)))

(declare-fun b!6109703 () Bool)

(declare-fun tp!1706487 () Bool)

(assert (=> b!6109703 (= e!3725540 tp!1706487)))

(assert (= (and b!6107158 ((_ is ElementMatch!16057) (regTwo!32626 (regOne!32626 (regTwo!32627 r!7292))))) b!6109701))

(assert (= (and b!6107158 ((_ is Concat!24902) (regTwo!32626 (regOne!32626 (regTwo!32627 r!7292))))) b!6109702))

(assert (= (and b!6107158 ((_ is Star!16057) (regTwo!32626 (regOne!32626 (regTwo!32627 r!7292))))) b!6109703))

(assert (= (and b!6107158 ((_ is Union!16057) (regTwo!32626 (regOne!32626 (regTwo!32627 r!7292))))) b!6109704))

(declare-fun b!6109708 () Bool)

(declare-fun e!3725541 () Bool)

(declare-fun tp!1706489 () Bool)

(declare-fun tp!1706493 () Bool)

(assert (=> b!6109708 (= e!3725541 (and tp!1706489 tp!1706493))))

(declare-fun b!6109706 () Bool)

(declare-fun tp!1706490 () Bool)

(declare-fun tp!1706491 () Bool)

(assert (=> b!6109706 (= e!3725541 (and tp!1706490 tp!1706491))))

(assert (=> b!6107151 (= tp!1705070 e!3725541)))

(declare-fun b!6109705 () Bool)

(assert (=> b!6109705 (= e!3725541 tp_is_empty!41367)))

(declare-fun b!6109707 () Bool)

(declare-fun tp!1706492 () Bool)

(assert (=> b!6109707 (= e!3725541 tp!1706492)))

(assert (= (and b!6107151 ((_ is ElementMatch!16057) (regOne!32627 (regTwo!32627 (regOne!32626 r!7292))))) b!6109705))

(assert (= (and b!6107151 ((_ is Concat!24902) (regOne!32627 (regTwo!32627 (regOne!32626 r!7292))))) b!6109706))

(assert (= (and b!6107151 ((_ is Star!16057) (regOne!32627 (regTwo!32627 (regOne!32626 r!7292))))) b!6109707))

(assert (= (and b!6107151 ((_ is Union!16057) (regOne!32627 (regTwo!32627 (regOne!32626 r!7292))))) b!6109708))

(declare-fun b!6109712 () Bool)

(declare-fun e!3725542 () Bool)

(declare-fun tp!1706494 () Bool)

(declare-fun tp!1706498 () Bool)

(assert (=> b!6109712 (= e!3725542 (and tp!1706494 tp!1706498))))

(declare-fun b!6109710 () Bool)

(declare-fun tp!1706495 () Bool)

(declare-fun tp!1706496 () Bool)

(assert (=> b!6109710 (= e!3725542 (and tp!1706495 tp!1706496))))

(assert (=> b!6107151 (= tp!1705074 e!3725542)))

(declare-fun b!6109709 () Bool)

(assert (=> b!6109709 (= e!3725542 tp_is_empty!41367)))

(declare-fun b!6109711 () Bool)

(declare-fun tp!1706497 () Bool)

(assert (=> b!6109711 (= e!3725542 tp!1706497)))

(assert (= (and b!6107151 ((_ is ElementMatch!16057) (regTwo!32627 (regTwo!32627 (regOne!32626 r!7292))))) b!6109709))

(assert (= (and b!6107151 ((_ is Concat!24902) (regTwo!32627 (regTwo!32627 (regOne!32626 r!7292))))) b!6109710))

(assert (= (and b!6107151 ((_ is Star!16057) (regTwo!32627 (regTwo!32627 (regOne!32626 r!7292))))) b!6109711))

(assert (= (and b!6107151 ((_ is Union!16057) (regTwo!32627 (regTwo!32627 (regOne!32626 r!7292))))) b!6109712))

(declare-fun b!6109716 () Bool)

(declare-fun e!3725543 () Bool)

(declare-fun tp!1706499 () Bool)

(declare-fun tp!1706503 () Bool)

(assert (=> b!6109716 (= e!3725543 (and tp!1706499 tp!1706503))))

(declare-fun b!6109714 () Bool)

(declare-fun tp!1706500 () Bool)

(declare-fun tp!1706501 () Bool)

(assert (=> b!6109714 (= e!3725543 (and tp!1706500 tp!1706501))))

(assert (=> b!6107221 (= tp!1705163 e!3725543)))

(declare-fun b!6109713 () Bool)

(assert (=> b!6109713 (= e!3725543 tp_is_empty!41367)))

(declare-fun b!6109715 () Bool)

(declare-fun tp!1706502 () Bool)

(assert (=> b!6109715 (= e!3725543 tp!1706502)))

(assert (= (and b!6107221 ((_ is ElementMatch!16057) (regOne!32626 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109713))

(assert (= (and b!6107221 ((_ is Concat!24902) (regOne!32626 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109714))

(assert (= (and b!6107221 ((_ is Star!16057) (regOne!32626 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109715))

(assert (= (and b!6107221 ((_ is Union!16057) (regOne!32626 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109716))

(declare-fun b!6109720 () Bool)

(declare-fun e!3725544 () Bool)

(declare-fun tp!1706504 () Bool)

(declare-fun tp!1706508 () Bool)

(assert (=> b!6109720 (= e!3725544 (and tp!1706504 tp!1706508))))

(declare-fun b!6109718 () Bool)

(declare-fun tp!1706505 () Bool)

(declare-fun tp!1706506 () Bool)

(assert (=> b!6109718 (= e!3725544 (and tp!1706505 tp!1706506))))

(assert (=> b!6107221 (= tp!1705164 e!3725544)))

(declare-fun b!6109717 () Bool)

(assert (=> b!6109717 (= e!3725544 tp_is_empty!41367)))

(declare-fun b!6109719 () Bool)

(declare-fun tp!1706507 () Bool)

(assert (=> b!6109719 (= e!3725544 tp!1706507)))

(assert (= (and b!6107221 ((_ is ElementMatch!16057) (regTwo!32626 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109717))

(assert (= (and b!6107221 ((_ is Concat!24902) (regTwo!32626 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109718))

(assert (= (and b!6107221 ((_ is Star!16057) (regTwo!32626 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109719))

(assert (= (and b!6107221 ((_ is Union!16057) (regTwo!32626 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109720))

(declare-fun b!6109724 () Bool)

(declare-fun e!3725545 () Bool)

(declare-fun tp!1706509 () Bool)

(declare-fun tp!1706513 () Bool)

(assert (=> b!6109724 (= e!3725545 (and tp!1706509 tp!1706513))))

(declare-fun b!6109722 () Bool)

(declare-fun tp!1706510 () Bool)

(declare-fun tp!1706511 () Bool)

(assert (=> b!6109722 (= e!3725545 (and tp!1706510 tp!1706511))))

(assert (=> b!6107167 (= tp!1705094 e!3725545)))

(declare-fun b!6109721 () Bool)

(assert (=> b!6109721 (= e!3725545 tp_is_empty!41367)))

(declare-fun b!6109723 () Bool)

(declare-fun tp!1706512 () Bool)

(assert (=> b!6109723 (= e!3725545 tp!1706512)))

(assert (= (and b!6107167 ((_ is ElementMatch!16057) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109721))

(assert (= (and b!6107167 ((_ is Concat!24902) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109722))

(assert (= (and b!6107167 ((_ is Star!16057) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109723))

(assert (= (and b!6107167 ((_ is Union!16057) (reg!16386 (h!70794 (exprs!5941 (h!70795 zl!343)))))) b!6109724))

(declare-fun condSetEmpty!41270 () Bool)

(assert (=> setNonEmpty!41268 (= condSetEmpty!41270 (= setRest!41268 ((as const (Array Context!10882 Bool)) false)))))

(declare-fun setRes!41270 () Bool)

(assert (=> setNonEmpty!41268 (= tp!1705156 setRes!41270)))

(declare-fun setIsEmpty!41270 () Bool)

(assert (=> setIsEmpty!41270 setRes!41270))

(declare-fun setElem!41270 () Context!10882)

(declare-fun setNonEmpty!41270 () Bool)

(declare-fun e!3725546 () Bool)

(declare-fun tp!1706515 () Bool)

(assert (=> setNonEmpty!41270 (= setRes!41270 (and tp!1706515 (inv!83389 setElem!41270) e!3725546))))

(declare-fun setRest!41270 () (InoxSet Context!10882))

(assert (=> setNonEmpty!41270 (= setRest!41268 ((_ map or) (store ((as const (Array Context!10882 Bool)) false) setElem!41270 true) setRest!41270))))

(declare-fun b!6109725 () Bool)

(declare-fun tp!1706514 () Bool)

(assert (=> b!6109725 (= e!3725546 tp!1706514)))

(assert (= (and setNonEmpty!41268 condSetEmpty!41270) setIsEmpty!41270))

(assert (= (and setNonEmpty!41268 (not condSetEmpty!41270)) setNonEmpty!41270))

(assert (= setNonEmpty!41270 b!6109725))

(declare-fun m!6959344 () Bool)

(assert (=> setNonEmpty!41270 m!6959344))

(declare-fun b!6109729 () Bool)

(declare-fun e!3725547 () Bool)

(declare-fun tp!1706516 () Bool)

(declare-fun tp!1706520 () Bool)

(assert (=> b!6109729 (= e!3725547 (and tp!1706516 tp!1706520))))

(declare-fun b!6109727 () Bool)

(declare-fun tp!1706517 () Bool)

(declare-fun tp!1706518 () Bool)

(assert (=> b!6109727 (= e!3725547 (and tp!1706517 tp!1706518))))

(assert (=> b!6107175 (= tp!1705104 e!3725547)))

(declare-fun b!6109726 () Bool)

(assert (=> b!6109726 (= e!3725547 tp_is_empty!41367)))

(declare-fun b!6109728 () Bool)

(declare-fun tp!1706519 () Bool)

(assert (=> b!6109728 (= e!3725547 tp!1706519)))

(assert (= (and b!6107175 ((_ is ElementMatch!16057) (regOne!32626 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109726))

(assert (= (and b!6107175 ((_ is Concat!24902) (regOne!32626 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109727))

(assert (= (and b!6107175 ((_ is Star!16057) (regOne!32626 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109728))

(assert (= (and b!6107175 ((_ is Union!16057) (regOne!32626 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109729))

(declare-fun b!6109733 () Bool)

(declare-fun e!3725548 () Bool)

(declare-fun tp!1706521 () Bool)

(declare-fun tp!1706525 () Bool)

(assert (=> b!6109733 (= e!3725548 (and tp!1706521 tp!1706525))))

(declare-fun b!6109731 () Bool)

(declare-fun tp!1706522 () Bool)

(declare-fun tp!1706523 () Bool)

(assert (=> b!6109731 (= e!3725548 (and tp!1706522 tp!1706523))))

(assert (=> b!6107175 (= tp!1705105 e!3725548)))

(declare-fun b!6109730 () Bool)

(assert (=> b!6109730 (= e!3725548 tp_is_empty!41367)))

(declare-fun b!6109732 () Bool)

(declare-fun tp!1706524 () Bool)

(assert (=> b!6109732 (= e!3725548 tp!1706524)))

(assert (= (and b!6107175 ((_ is ElementMatch!16057) (regTwo!32626 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109730))

(assert (= (and b!6107175 ((_ is Concat!24902) (regTwo!32626 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109731))

(assert (= (and b!6107175 ((_ is Star!16057) (regTwo!32626 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109732))

(assert (= (and b!6107175 ((_ is Union!16057) (regTwo!32626 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109733))

(declare-fun b!6109737 () Bool)

(declare-fun e!3725549 () Bool)

(declare-fun tp!1706526 () Bool)

(declare-fun tp!1706530 () Bool)

(assert (=> b!6109737 (= e!3725549 (and tp!1706526 tp!1706530))))

(declare-fun b!6109735 () Bool)

(declare-fun tp!1706527 () Bool)

(declare-fun tp!1706528 () Bool)

(assert (=> b!6109735 (= e!3725549 (and tp!1706527 tp!1706528))))

(assert (=> b!6107223 (= tp!1705162 e!3725549)))

(declare-fun b!6109734 () Bool)

(assert (=> b!6109734 (= e!3725549 tp_is_empty!41367)))

(declare-fun b!6109736 () Bool)

(declare-fun tp!1706529 () Bool)

(assert (=> b!6109736 (= e!3725549 tp!1706529)))

(assert (= (and b!6107223 ((_ is ElementMatch!16057) (regOne!32627 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109734))

(assert (= (and b!6107223 ((_ is Concat!24902) (regOne!32627 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109735))

(assert (= (and b!6107223 ((_ is Star!16057) (regOne!32627 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109736))

(assert (= (and b!6107223 ((_ is Union!16057) (regOne!32627 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109737))

(declare-fun b!6109741 () Bool)

(declare-fun e!3725550 () Bool)

(declare-fun tp!1706531 () Bool)

(declare-fun tp!1706535 () Bool)

(assert (=> b!6109741 (= e!3725550 (and tp!1706531 tp!1706535))))

(declare-fun b!6109739 () Bool)

(declare-fun tp!1706532 () Bool)

(declare-fun tp!1706533 () Bool)

(assert (=> b!6109739 (= e!3725550 (and tp!1706532 tp!1706533))))

(assert (=> b!6107223 (= tp!1705166 e!3725550)))

(declare-fun b!6109738 () Bool)

(assert (=> b!6109738 (= e!3725550 tp_is_empty!41367)))

(declare-fun b!6109740 () Bool)

(declare-fun tp!1706534 () Bool)

(assert (=> b!6109740 (= e!3725550 tp!1706534)))

(assert (= (and b!6107223 ((_ is ElementMatch!16057) (regTwo!32627 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109738))

(assert (= (and b!6107223 ((_ is Concat!24902) (regTwo!32627 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109739))

(assert (= (and b!6107223 ((_ is Star!16057) (regTwo!32627 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109740))

(assert (= (and b!6107223 ((_ is Union!16057) (regTwo!32627 (regTwo!32627 (regTwo!32626 r!7292))))) b!6109741))

(declare-fun b!6109745 () Bool)

(declare-fun e!3725551 () Bool)

(declare-fun tp!1706536 () Bool)

(declare-fun tp!1706540 () Bool)

(assert (=> b!6109745 (= e!3725551 (and tp!1706536 tp!1706540))))

(declare-fun b!6109743 () Bool)

(declare-fun tp!1706537 () Bool)

(declare-fun tp!1706538 () Bool)

(assert (=> b!6109743 (= e!3725551 (and tp!1706537 tp!1706538))))

(assert (=> b!6107193 (= tp!1705123 e!3725551)))

(declare-fun b!6109742 () Bool)

(assert (=> b!6109742 (= e!3725551 tp_is_empty!41367)))

(declare-fun b!6109744 () Bool)

(declare-fun tp!1706539 () Bool)

(assert (=> b!6109744 (= e!3725551 tp!1706539)))

(assert (= (and b!6107193 ((_ is ElementMatch!16057) (regOne!32627 (reg!16386 (regTwo!32626 r!7292))))) b!6109742))

(assert (= (and b!6107193 ((_ is Concat!24902) (regOne!32627 (reg!16386 (regTwo!32626 r!7292))))) b!6109743))

(assert (= (and b!6107193 ((_ is Star!16057) (regOne!32627 (reg!16386 (regTwo!32626 r!7292))))) b!6109744))

(assert (= (and b!6107193 ((_ is Union!16057) (regOne!32627 (reg!16386 (regTwo!32626 r!7292))))) b!6109745))

(declare-fun b!6109749 () Bool)

(declare-fun e!3725552 () Bool)

(declare-fun tp!1706541 () Bool)

(declare-fun tp!1706545 () Bool)

(assert (=> b!6109749 (= e!3725552 (and tp!1706541 tp!1706545))))

(declare-fun b!6109747 () Bool)

(declare-fun tp!1706542 () Bool)

(declare-fun tp!1706543 () Bool)

(assert (=> b!6109747 (= e!3725552 (and tp!1706542 tp!1706543))))

(assert (=> b!6107193 (= tp!1705127 e!3725552)))

(declare-fun b!6109746 () Bool)

(assert (=> b!6109746 (= e!3725552 tp_is_empty!41367)))

(declare-fun b!6109748 () Bool)

(declare-fun tp!1706544 () Bool)

(assert (=> b!6109748 (= e!3725552 tp!1706544)))

(assert (= (and b!6107193 ((_ is ElementMatch!16057) (regTwo!32627 (reg!16386 (regTwo!32626 r!7292))))) b!6109746))

(assert (= (and b!6107193 ((_ is Concat!24902) (regTwo!32627 (reg!16386 (regTwo!32626 r!7292))))) b!6109747))

(assert (= (and b!6107193 ((_ is Star!16057) (regTwo!32627 (reg!16386 (regTwo!32626 r!7292))))) b!6109748))

(assert (= (and b!6107193 ((_ is Union!16057) (regTwo!32627 (reg!16386 (regTwo!32626 r!7292))))) b!6109749))

(declare-fun b!6109753 () Bool)

(declare-fun e!3725553 () Bool)

(declare-fun tp!1706546 () Bool)

(declare-fun tp!1706550 () Bool)

(assert (=> b!6109753 (= e!3725553 (and tp!1706546 tp!1706550))))

(declare-fun b!6109751 () Bool)

(declare-fun tp!1706547 () Bool)

(declare-fun tp!1706548 () Bool)

(assert (=> b!6109751 (= e!3725553 (and tp!1706547 tp!1706548))))

(assert (=> b!6107142 (= tp!1705063 e!3725553)))

(declare-fun b!6109750 () Bool)

(assert (=> b!6109750 (= e!3725553 tp_is_empty!41367)))

(declare-fun b!6109752 () Bool)

(declare-fun tp!1706549 () Bool)

(assert (=> b!6109752 (= e!3725553 tp!1706549)))

(assert (= (and b!6107142 ((_ is ElementMatch!16057) (reg!16386 (regTwo!32626 (regOne!32626 r!7292))))) b!6109750))

(assert (= (and b!6107142 ((_ is Concat!24902) (reg!16386 (regTwo!32626 (regOne!32626 r!7292))))) b!6109751))

(assert (= (and b!6107142 ((_ is Star!16057) (reg!16386 (regTwo!32626 (regOne!32626 r!7292))))) b!6109752))

(assert (= (and b!6107142 ((_ is Union!16057) (reg!16386 (regTwo!32626 (regOne!32626 r!7292))))) b!6109753))

(declare-fun b!6109757 () Bool)

(declare-fun e!3725554 () Bool)

(declare-fun tp!1706551 () Bool)

(declare-fun tp!1706555 () Bool)

(assert (=> b!6109757 (= e!3725554 (and tp!1706551 tp!1706555))))

(declare-fun b!6109755 () Bool)

(declare-fun tp!1706552 () Bool)

(declare-fun tp!1706553 () Bool)

(assert (=> b!6109755 (= e!3725554 (and tp!1706552 tp!1706553))))

(assert (=> b!6107238 (= tp!1705184 e!3725554)))

(declare-fun b!6109754 () Bool)

(assert (=> b!6109754 (= e!3725554 tp_is_empty!41367)))

(declare-fun b!6109756 () Bool)

(declare-fun tp!1706554 () Bool)

(assert (=> b!6109756 (= e!3725554 tp!1706554)))

(assert (= (and b!6107238 ((_ is ElementMatch!16057) (h!70794 (t!377923 (exprs!5941 setElem!41260))))) b!6109754))

(assert (= (and b!6107238 ((_ is Concat!24902) (h!70794 (t!377923 (exprs!5941 setElem!41260))))) b!6109755))

(assert (= (and b!6107238 ((_ is Star!16057) (h!70794 (t!377923 (exprs!5941 setElem!41260))))) b!6109756))

(assert (= (and b!6107238 ((_ is Union!16057) (h!70794 (t!377923 (exprs!5941 setElem!41260))))) b!6109757))

(declare-fun b!6109758 () Bool)

(declare-fun e!3725555 () Bool)

(declare-fun tp!1706556 () Bool)

(declare-fun tp!1706557 () Bool)

(assert (=> b!6109758 (= e!3725555 (and tp!1706556 tp!1706557))))

(assert (=> b!6107238 (= tp!1705185 e!3725555)))

(assert (= (and b!6107238 ((_ is Cons!64346) (t!377923 (t!377923 (exprs!5941 setElem!41260))))) b!6109758))

(declare-fun b!6109762 () Bool)

(declare-fun e!3725556 () Bool)

(declare-fun tp!1706558 () Bool)

(declare-fun tp!1706562 () Bool)

(assert (=> b!6109762 (= e!3725556 (and tp!1706558 tp!1706562))))

(declare-fun b!6109760 () Bool)

(declare-fun tp!1706559 () Bool)

(declare-fun tp!1706560 () Bool)

(assert (=> b!6109760 (= e!3725556 (and tp!1706559 tp!1706560))))

(assert (=> b!6107184 (= tp!1705116 e!3725556)))

(declare-fun b!6109759 () Bool)

(assert (=> b!6109759 (= e!3725556 tp_is_empty!41367)))

(declare-fun b!6109761 () Bool)

(declare-fun tp!1706561 () Bool)

(assert (=> b!6109761 (= e!3725556 tp!1706561)))

(assert (= (and b!6107184 ((_ is ElementMatch!16057) (reg!16386 (regOne!32627 (reg!16386 r!7292))))) b!6109759))

(assert (= (and b!6107184 ((_ is Concat!24902) (reg!16386 (regOne!32627 (reg!16386 r!7292))))) b!6109760))

(assert (= (and b!6107184 ((_ is Star!16057) (reg!16386 (regOne!32627 (reg!16386 r!7292))))) b!6109761))

(assert (= (and b!6107184 ((_ is Union!16057) (reg!16386 (regOne!32627 (reg!16386 r!7292))))) b!6109762))

(declare-fun b!6109766 () Bool)

(declare-fun e!3725557 () Bool)

(declare-fun tp!1706563 () Bool)

(declare-fun tp!1706567 () Bool)

(assert (=> b!6109766 (= e!3725557 (and tp!1706563 tp!1706567))))

(declare-fun b!6109764 () Bool)

(declare-fun tp!1706564 () Bool)

(declare-fun tp!1706565 () Bool)

(assert (=> b!6109764 (= e!3725557 (and tp!1706564 tp!1706565))))

(assert (=> b!6107160 (= tp!1705081 e!3725557)))

(declare-fun b!6109763 () Bool)

(assert (=> b!6109763 (= e!3725557 tp_is_empty!41367)))

(declare-fun b!6109765 () Bool)

(declare-fun tp!1706566 () Bool)

(assert (=> b!6109765 (= e!3725557 tp!1706566)))

(assert (= (and b!6107160 ((_ is ElementMatch!16057) (regOne!32627 (regOne!32626 (regTwo!32627 r!7292))))) b!6109763))

(assert (= (and b!6107160 ((_ is Concat!24902) (regOne!32627 (regOne!32626 (regTwo!32627 r!7292))))) b!6109764))

(assert (= (and b!6107160 ((_ is Star!16057) (regOne!32627 (regOne!32626 (regTwo!32627 r!7292))))) b!6109765))

(assert (= (and b!6107160 ((_ is Union!16057) (regOne!32627 (regOne!32626 (regTwo!32627 r!7292))))) b!6109766))

(declare-fun b!6109770 () Bool)

(declare-fun e!3725558 () Bool)

(declare-fun tp!1706568 () Bool)

(declare-fun tp!1706572 () Bool)

(assert (=> b!6109770 (= e!3725558 (and tp!1706568 tp!1706572))))

(declare-fun b!6109768 () Bool)

(declare-fun tp!1706569 () Bool)

(declare-fun tp!1706570 () Bool)

(assert (=> b!6109768 (= e!3725558 (and tp!1706569 tp!1706570))))

(assert (=> b!6107160 (= tp!1705085 e!3725558)))

(declare-fun b!6109767 () Bool)

(assert (=> b!6109767 (= e!3725558 tp_is_empty!41367)))

(declare-fun b!6109769 () Bool)

(declare-fun tp!1706571 () Bool)

(assert (=> b!6109769 (= e!3725558 tp!1706571)))

(assert (= (and b!6107160 ((_ is ElementMatch!16057) (regTwo!32627 (regOne!32626 (regTwo!32627 r!7292))))) b!6109767))

(assert (= (and b!6107160 ((_ is Concat!24902) (regTwo!32627 (regOne!32626 (regTwo!32627 r!7292))))) b!6109768))

(assert (= (and b!6107160 ((_ is Star!16057) (regTwo!32627 (regOne!32626 (regTwo!32627 r!7292))))) b!6109769))

(assert (= (and b!6107160 ((_ is Union!16057) (regTwo!32627 (regOne!32626 (regTwo!32627 r!7292))))) b!6109770))

(declare-fun b!6109774 () Bool)

(declare-fun e!3725559 () Bool)

(declare-fun tp!1706573 () Bool)

(declare-fun tp!1706577 () Bool)

(assert (=> b!6109774 (= e!3725559 (and tp!1706573 tp!1706577))))

(declare-fun b!6109772 () Bool)

(declare-fun tp!1706574 () Bool)

(declare-fun tp!1706575 () Bool)

(assert (=> b!6109772 (= e!3725559 (and tp!1706574 tp!1706575))))

(assert (=> b!6107177 (= tp!1705103 e!3725559)))

(declare-fun b!6109771 () Bool)

(assert (=> b!6109771 (= e!3725559 tp_is_empty!41367)))

(declare-fun b!6109773 () Bool)

(declare-fun tp!1706576 () Bool)

(assert (=> b!6109773 (= e!3725559 tp!1706576)))

(assert (= (and b!6107177 ((_ is ElementMatch!16057) (regOne!32627 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109771))

(assert (= (and b!6107177 ((_ is Concat!24902) (regOne!32627 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109772))

(assert (= (and b!6107177 ((_ is Star!16057) (regOne!32627 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109773))

(assert (= (and b!6107177 ((_ is Union!16057) (regOne!32627 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109774))

(declare-fun b!6109778 () Bool)

(declare-fun e!3725560 () Bool)

(declare-fun tp!1706578 () Bool)

(declare-fun tp!1706582 () Bool)

(assert (=> b!6109778 (= e!3725560 (and tp!1706578 tp!1706582))))

(declare-fun b!6109776 () Bool)

(declare-fun tp!1706579 () Bool)

(declare-fun tp!1706580 () Bool)

(assert (=> b!6109776 (= e!3725560 (and tp!1706579 tp!1706580))))

(assert (=> b!6107177 (= tp!1705107 e!3725560)))

(declare-fun b!6109775 () Bool)

(assert (=> b!6109775 (= e!3725560 tp_is_empty!41367)))

(declare-fun b!6109777 () Bool)

(declare-fun tp!1706581 () Bool)

(assert (=> b!6109777 (= e!3725560 tp!1706581)))

(assert (= (and b!6107177 ((_ is ElementMatch!16057) (regTwo!32627 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109775))

(assert (= (and b!6107177 ((_ is Concat!24902) (regTwo!32627 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109776))

(assert (= (and b!6107177 ((_ is Star!16057) (regTwo!32627 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109777))

(assert (= (and b!6107177 ((_ is Union!16057) (regTwo!32627 (regTwo!32627 (regTwo!32627 r!7292))))) b!6109778))

(declare-fun b!6109782 () Bool)

(declare-fun e!3725561 () Bool)

(declare-fun tp!1706583 () Bool)

(declare-fun tp!1706587 () Bool)

(assert (=> b!6109782 (= e!3725561 (and tp!1706583 tp!1706587))))

(declare-fun b!6109780 () Bool)

(declare-fun tp!1706584 () Bool)

(declare-fun tp!1706585 () Bool)

(assert (=> b!6109780 (= e!3725561 (and tp!1706584 tp!1706585))))

(assert (=> b!6107232 (= tp!1705177 e!3725561)))

(declare-fun b!6109779 () Bool)

(assert (=> b!6109779 (= e!3725561 tp_is_empty!41367)))

(declare-fun b!6109781 () Bool)

(declare-fun tp!1706586 () Bool)

(assert (=> b!6109781 (= e!3725561 tp!1706586)))

(assert (= (and b!6107232 ((_ is ElementMatch!16057) (reg!16386 (regTwo!32626 (regOne!32627 r!7292))))) b!6109779))

(assert (= (and b!6107232 ((_ is Concat!24902) (reg!16386 (regTwo!32626 (regOne!32627 r!7292))))) b!6109780))

(assert (= (and b!6107232 ((_ is Star!16057) (reg!16386 (regTwo!32626 (regOne!32627 r!7292))))) b!6109781))

(assert (= (and b!6107232 ((_ is Union!16057) (reg!16386 (regTwo!32626 (regOne!32627 r!7292))))) b!6109782))

(declare-fun b!6109786 () Bool)

(declare-fun e!3725562 () Bool)

(declare-fun tp!1706588 () Bool)

(declare-fun tp!1706592 () Bool)

(assert (=> b!6109786 (= e!3725562 (and tp!1706588 tp!1706592))))

(declare-fun b!6109784 () Bool)

(declare-fun tp!1706589 () Bool)

(declare-fun tp!1706590 () Bool)

(assert (=> b!6109784 (= e!3725562 (and tp!1706589 tp!1706590))))

(assert (=> b!6107211 (= tp!1705149 e!3725562)))

(declare-fun b!6109783 () Bool)

(assert (=> b!6109783 (= e!3725562 tp_is_empty!41367)))

(declare-fun b!6109785 () Bool)

(declare-fun tp!1706591 () Bool)

(assert (=> b!6109785 (= e!3725562 tp!1706591)))

(assert (= (and b!6107211 ((_ is ElementMatch!16057) (regOne!32626 (regTwo!32626 (reg!16386 r!7292))))) b!6109783))

(assert (= (and b!6107211 ((_ is Concat!24902) (regOne!32626 (regTwo!32626 (reg!16386 r!7292))))) b!6109784))

(assert (= (and b!6107211 ((_ is Star!16057) (regOne!32626 (regTwo!32626 (reg!16386 r!7292))))) b!6109785))

(assert (= (and b!6107211 ((_ is Union!16057) (regOne!32626 (regTwo!32626 (reg!16386 r!7292))))) b!6109786))

(declare-fun b!6109790 () Bool)

(declare-fun e!3725563 () Bool)

(declare-fun tp!1706593 () Bool)

(declare-fun tp!1706597 () Bool)

(assert (=> b!6109790 (= e!3725563 (and tp!1706593 tp!1706597))))

(declare-fun b!6109788 () Bool)

(declare-fun tp!1706594 () Bool)

(declare-fun tp!1706595 () Bool)

(assert (=> b!6109788 (= e!3725563 (and tp!1706594 tp!1706595))))

(assert (=> b!6107211 (= tp!1705150 e!3725563)))

(declare-fun b!6109787 () Bool)

(assert (=> b!6109787 (= e!3725563 tp_is_empty!41367)))

(declare-fun b!6109789 () Bool)

(declare-fun tp!1706596 () Bool)

(assert (=> b!6109789 (= e!3725563 tp!1706596)))

(assert (= (and b!6107211 ((_ is ElementMatch!16057) (regTwo!32626 (regTwo!32626 (reg!16386 r!7292))))) b!6109787))

(assert (= (and b!6107211 ((_ is Concat!24902) (regTwo!32626 (regTwo!32626 (reg!16386 r!7292))))) b!6109788))

(assert (= (and b!6107211 ((_ is Star!16057) (regTwo!32626 (regTwo!32626 (reg!16386 r!7292))))) b!6109789))

(assert (= (and b!6107211 ((_ is Union!16057) (regTwo!32626 (regTwo!32626 (reg!16386 r!7292))))) b!6109790))

(declare-fun b!6109794 () Bool)

(declare-fun e!3725564 () Bool)

(declare-fun tp!1706598 () Bool)

(declare-fun tp!1706602 () Bool)

(assert (=> b!6109794 (= e!3725564 (and tp!1706598 tp!1706602))))

(declare-fun b!6109792 () Bool)

(declare-fun tp!1706599 () Bool)

(declare-fun tp!1706600 () Bool)

(assert (=> b!6109792 (= e!3725564 (and tp!1706599 tp!1706600))))

(assert (=> b!6107213 (= tp!1705148 e!3725564)))

(declare-fun b!6109791 () Bool)

(assert (=> b!6109791 (= e!3725564 tp_is_empty!41367)))

(declare-fun b!6109793 () Bool)

(declare-fun tp!1706601 () Bool)

(assert (=> b!6109793 (= e!3725564 tp!1706601)))

(assert (= (and b!6107213 ((_ is ElementMatch!16057) (regOne!32627 (regTwo!32626 (reg!16386 r!7292))))) b!6109791))

(assert (= (and b!6107213 ((_ is Concat!24902) (regOne!32627 (regTwo!32626 (reg!16386 r!7292))))) b!6109792))

(assert (= (and b!6107213 ((_ is Star!16057) (regOne!32627 (regTwo!32626 (reg!16386 r!7292))))) b!6109793))

(assert (= (and b!6107213 ((_ is Union!16057) (regOne!32627 (regTwo!32626 (reg!16386 r!7292))))) b!6109794))

(declare-fun b!6109798 () Bool)

(declare-fun e!3725565 () Bool)

(declare-fun tp!1706603 () Bool)

(declare-fun tp!1706607 () Bool)

(assert (=> b!6109798 (= e!3725565 (and tp!1706603 tp!1706607))))

(declare-fun b!6109796 () Bool)

(declare-fun tp!1706604 () Bool)

(declare-fun tp!1706605 () Bool)

(assert (=> b!6109796 (= e!3725565 (and tp!1706604 tp!1706605))))

(assert (=> b!6107213 (= tp!1705152 e!3725565)))

(declare-fun b!6109795 () Bool)

(assert (=> b!6109795 (= e!3725565 tp_is_empty!41367)))

(declare-fun b!6109797 () Bool)

(declare-fun tp!1706606 () Bool)

(assert (=> b!6109797 (= e!3725565 tp!1706606)))

(assert (= (and b!6107213 ((_ is ElementMatch!16057) (regTwo!32627 (regTwo!32626 (reg!16386 r!7292))))) b!6109795))

(assert (= (and b!6107213 ((_ is Concat!24902) (regTwo!32627 (regTwo!32626 (reg!16386 r!7292))))) b!6109796))

(assert (= (and b!6107213 ((_ is Star!16057) (regTwo!32627 (regTwo!32626 (reg!16386 r!7292))))) b!6109797))

(assert (= (and b!6107213 ((_ is Union!16057) (regTwo!32627 (regTwo!32626 (reg!16386 r!7292))))) b!6109798))

(declare-fun b!6109802 () Bool)

(declare-fun e!3725566 () Bool)

(declare-fun tp!1706608 () Bool)

(declare-fun tp!1706612 () Bool)

(assert (=> b!6109802 (= e!3725566 (and tp!1706608 tp!1706612))))

(declare-fun b!6109800 () Bool)

(declare-fun tp!1706609 () Bool)

(declare-fun tp!1706610 () Bool)

(assert (=> b!6109800 (= e!3725566 (and tp!1706609 tp!1706610))))

(assert (=> b!6107204 (= tp!1705141 e!3725566)))

(declare-fun b!6109799 () Bool)

(assert (=> b!6109799 (= e!3725566 tp_is_empty!41367)))

(declare-fun b!6109801 () Bool)

(declare-fun tp!1706611 () Bool)

(assert (=> b!6109801 (= e!3725566 tp!1706611)))

(assert (= (and b!6107204 ((_ is ElementMatch!16057) (reg!16386 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109799))

(assert (= (and b!6107204 ((_ is Concat!24902) (reg!16386 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109800))

(assert (= (and b!6107204 ((_ is Star!16057) (reg!16386 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109801))

(assert (= (and b!6107204 ((_ is Union!16057) (reg!16386 (regTwo!32626 (regTwo!32626 r!7292))))) b!6109802))

(declare-fun b!6109803 () Bool)

(declare-fun e!3725567 () Bool)

(declare-fun tp!1706613 () Bool)

(declare-fun tp!1706614 () Bool)

(assert (=> b!6109803 (= e!3725567 (and tp!1706613 tp!1706614))))

(assert (=> b!6107225 (= tp!1705167 e!3725567)))

(assert (= (and b!6107225 ((_ is Cons!64346) (exprs!5941 (h!70795 (t!377924 (t!377924 zl!343)))))) b!6109803))

(declare-fun b!6109807 () Bool)

(declare-fun e!3725568 () Bool)

(declare-fun tp!1706615 () Bool)

(declare-fun tp!1706619 () Bool)

(assert (=> b!6109807 (= e!3725568 (and tp!1706615 tp!1706619))))

(declare-fun b!6109805 () Bool)

(declare-fun tp!1706616 () Bool)

(declare-fun tp!1706617 () Bool)

(assert (=> b!6109805 (= e!3725568 (and tp!1706616 tp!1706617))))

(assert (=> b!6107195 (= tp!1705129 e!3725568)))

(declare-fun b!6109804 () Bool)

(assert (=> b!6109804 (= e!3725568 tp_is_empty!41367)))

(declare-fun b!6109806 () Bool)

(declare-fun tp!1706618 () Bool)

(assert (=> b!6109806 (= e!3725568 tp!1706618)))

(assert (= (and b!6107195 ((_ is ElementMatch!16057) (regOne!32626 (reg!16386 (reg!16386 r!7292))))) b!6109804))

(assert (= (and b!6107195 ((_ is Concat!24902) (regOne!32626 (reg!16386 (reg!16386 r!7292))))) b!6109805))

(assert (= (and b!6107195 ((_ is Star!16057) (regOne!32626 (reg!16386 (reg!16386 r!7292))))) b!6109806))

(assert (= (and b!6107195 ((_ is Union!16057) (regOne!32626 (reg!16386 (reg!16386 r!7292))))) b!6109807))

(declare-fun b!6109811 () Bool)

(declare-fun e!3725569 () Bool)

(declare-fun tp!1706620 () Bool)

(declare-fun tp!1706624 () Bool)

(assert (=> b!6109811 (= e!3725569 (and tp!1706620 tp!1706624))))

(declare-fun b!6109809 () Bool)

(declare-fun tp!1706621 () Bool)

(declare-fun tp!1706622 () Bool)

(assert (=> b!6109809 (= e!3725569 (and tp!1706621 tp!1706622))))

(assert (=> b!6107195 (= tp!1705130 e!3725569)))

(declare-fun b!6109808 () Bool)

(assert (=> b!6109808 (= e!3725569 tp_is_empty!41367)))

(declare-fun b!6109810 () Bool)

(declare-fun tp!1706623 () Bool)

(assert (=> b!6109810 (= e!3725569 tp!1706623)))

(assert (= (and b!6107195 ((_ is ElementMatch!16057) (regTwo!32626 (reg!16386 (reg!16386 r!7292))))) b!6109808))

(assert (= (and b!6107195 ((_ is Concat!24902) (regTwo!32626 (reg!16386 (reg!16386 r!7292))))) b!6109809))

(assert (= (and b!6107195 ((_ is Star!16057) (regTwo!32626 (reg!16386 (reg!16386 r!7292))))) b!6109810))

(assert (= (and b!6107195 ((_ is Union!16057) (regTwo!32626 (reg!16386 (reg!16386 r!7292))))) b!6109811))

(declare-fun b!6109815 () Bool)

(declare-fun e!3725570 () Bool)

(declare-fun tp!1706625 () Bool)

(declare-fun tp!1706629 () Bool)

(assert (=> b!6109815 (= e!3725570 (and tp!1706625 tp!1706629))))

(declare-fun b!6109813 () Bool)

(declare-fun tp!1706626 () Bool)

(declare-fun tp!1706627 () Bool)

(assert (=> b!6109813 (= e!3725570 (and tp!1706626 tp!1706627))))

(assert (=> b!6107240 (= tp!1705187 e!3725570)))

(declare-fun b!6109812 () Bool)

(assert (=> b!6109812 (= e!3725570 tp_is_empty!41367)))

(declare-fun b!6109814 () Bool)

(declare-fun tp!1706628 () Bool)

(assert (=> b!6109814 (= e!3725570 tp!1706628)))

(assert (= (and b!6107240 ((_ is ElementMatch!16057) (regOne!32626 (regOne!32627 (regOne!32627 r!7292))))) b!6109812))

(assert (= (and b!6107240 ((_ is Concat!24902) (regOne!32626 (regOne!32627 (regOne!32627 r!7292))))) b!6109813))

(assert (= (and b!6107240 ((_ is Star!16057) (regOne!32626 (regOne!32627 (regOne!32627 r!7292))))) b!6109814))

(assert (= (and b!6107240 ((_ is Union!16057) (regOne!32626 (regOne!32627 (regOne!32627 r!7292))))) b!6109815))

(declare-fun b!6109819 () Bool)

(declare-fun e!3725571 () Bool)

(declare-fun tp!1706630 () Bool)

(declare-fun tp!1706634 () Bool)

(assert (=> b!6109819 (= e!3725571 (and tp!1706630 tp!1706634))))

(declare-fun b!6109817 () Bool)

(declare-fun tp!1706631 () Bool)

(declare-fun tp!1706632 () Bool)

(assert (=> b!6109817 (= e!3725571 (and tp!1706631 tp!1706632))))

(assert (=> b!6107240 (= tp!1705188 e!3725571)))

(declare-fun b!6109816 () Bool)

(assert (=> b!6109816 (= e!3725571 tp_is_empty!41367)))

(declare-fun b!6109818 () Bool)

(declare-fun tp!1706633 () Bool)

(assert (=> b!6109818 (= e!3725571 tp!1706633)))

(assert (= (and b!6107240 ((_ is ElementMatch!16057) (regTwo!32626 (regOne!32627 (regOne!32627 r!7292))))) b!6109816))

(assert (= (and b!6107240 ((_ is Concat!24902) (regTwo!32626 (regOne!32627 (regOne!32627 r!7292))))) b!6109817))

(assert (= (and b!6107240 ((_ is Star!16057) (regTwo!32626 (regOne!32627 (regOne!32627 r!7292))))) b!6109818))

(assert (= (and b!6107240 ((_ is Union!16057) (regTwo!32626 (regOne!32627 (regOne!32627 r!7292))))) b!6109819))

(declare-fun b_lambda!232709 () Bool)

(assert (= b_lambda!232697 (or d!1914016 b_lambda!232709)))

(declare-fun bs!1516703 () Bool)

(declare-fun d!1914752 () Bool)

(assert (= bs!1516703 (and d!1914752 d!1914016)))

(assert (=> bs!1516703 (= (dynLambda!25338 lambda!332757 (h!70794 (t!377923 (unfocusZipperList!1478 zl!343)))) (validRegex!7793 (h!70794 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(declare-fun m!6959346 () Bool)

(assert (=> bs!1516703 m!6959346))

(assert (=> b!6109066 d!1914752))

(declare-fun b_lambda!232711 () Bool)

(assert (= b_lambda!232707 (or d!1913730 b_lambda!232711)))

(declare-fun bs!1516704 () Bool)

(declare-fun d!1914754 () Bool)

(assert (= bs!1516704 (and d!1914754 d!1913730)))

(assert (=> bs!1516704 (= (dynLambda!25338 lambda!332719 (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343))))) (validRegex!7793 (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(declare-fun m!6959348 () Bool)

(assert (=> bs!1516704 m!6959348))

(assert (=> b!6109249 d!1914754))

(declare-fun b_lambda!232713 () Bool)

(assert (= b_lambda!232695 (or d!1913694 b_lambda!232713)))

(declare-fun bs!1516705 () Bool)

(declare-fun d!1914756 () Bool)

(assert (= bs!1516705 (and d!1914756 d!1913694)))

(assert (=> bs!1516705 (= (dynLambda!25338 lambda!332695 (h!70794 (t!377923 lt!2329720))) (validRegex!7793 (h!70794 (t!377923 lt!2329720))))))

(declare-fun m!6959350 () Bool)

(assert (=> bs!1516705 m!6959350))

(assert (=> b!6109024 d!1914756))

(declare-fun b_lambda!232715 () Bool)

(assert (= b_lambda!232693 (or d!1913734 b_lambda!232715)))

(declare-fun bs!1516706 () Bool)

(declare-fun d!1914758 () Bool)

(assert (= bs!1516706 (and d!1914758 d!1913734)))

(assert (=> bs!1516706 (= (dynLambda!25338 lambda!332720 (h!70794 (t!377923 (exprs!5941 setElem!41260)))) (validRegex!7793 (h!70794 (t!377923 (exprs!5941 setElem!41260)))))))

(declare-fun m!6959352 () Bool)

(assert (=> bs!1516706 m!6959352))

(assert (=> b!6108976 d!1914758))

(declare-fun b_lambda!232717 () Bool)

(assert (= b_lambda!232703 (or d!1913684 b_lambda!232717)))

(declare-fun bs!1516707 () Bool)

(declare-fun d!1914760 () Bool)

(assert (= bs!1516707 (and d!1914760 d!1913684)))

(assert (=> bs!1516707 (= (dynLambda!25338 lambda!332688 (h!70794 (t!377923 (unfocusZipperList!1478 zl!343)))) (validRegex!7793 (h!70794 (t!377923 (unfocusZipperList!1478 zl!343)))))))

(assert (=> bs!1516707 m!6959346))

(assert (=> b!6109124 d!1914760))

(declare-fun b_lambda!232719 () Bool)

(assert (= b_lambda!232701 (or d!1914000 b_lambda!232719)))

(declare-fun bs!1516708 () Bool)

(declare-fun d!1914762 () Bool)

(assert (= bs!1516708 (and d!1914762 d!1914000)))

(assert (=> bs!1516708 (= (dynLambda!25338 lambda!332756 (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343))))) (validRegex!7793 (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(assert (=> bs!1516708 m!6959348))

(assert (=> b!6109088 d!1914762))

(declare-fun b_lambda!232721 () Bool)

(assert (= b_lambda!232669 (or d!1913968 b_lambda!232721)))

(declare-fun bs!1516709 () Bool)

(declare-fun d!1914764 () Bool)

(assert (= bs!1516709 (and d!1914764 d!1913968)))

(assert (=> bs!1516709 (= (dynLambda!25338 lambda!332751 (h!70794 (exprs!5941 setElem!41266))) (validRegex!7793 (h!70794 (exprs!5941 setElem!41266))))))

(declare-fun m!6959354 () Bool)

(assert (=> bs!1516709 m!6959354))

(assert (=> b!6108168 d!1914764))

(declare-fun b_lambda!232723 () Bool)

(assert (= b_lambda!232691 (or d!1913970 b_lambda!232723)))

(declare-fun bs!1516710 () Bool)

(declare-fun d!1914766 () Bool)

(assert (= bs!1516710 (and d!1914766 d!1913970)))

(assert (=> bs!1516710 (= (dynLambda!25338 lambda!332752 (h!70794 (exprs!5941 (h!70795 (t!377924 zl!343))))) (validRegex!7793 (h!70794 (exprs!5941 (h!70795 (t!377924 zl!343))))))))

(declare-fun m!6959356 () Bool)

(assert (=> bs!1516710 m!6959356))

(assert (=> b!6108796 d!1914766))

(declare-fun b_lambda!232725 () Bool)

(assert (= b_lambda!232699 (or d!1913998 b_lambda!232725)))

(declare-fun bs!1516711 () Bool)

(declare-fun d!1914768 () Bool)

(assert (= bs!1516711 (and d!1914768 d!1913998)))

(assert (=> bs!1516711 (= (dynLambda!25338 lambda!332755 (h!70794 lt!2329801)) (validRegex!7793 (h!70794 lt!2329801)))))

(declare-fun m!6959358 () Bool)

(assert (=> bs!1516711 m!6959358))

(assert (=> b!6109068 d!1914768))

(declare-fun b_lambda!232727 () Bool)

(assert (= b_lambda!232705 (or d!1913748 b_lambda!232727)))

(declare-fun bs!1516712 () Bool)

(declare-fun d!1914770 () Bool)

(assert (= bs!1516712 (and d!1914770 d!1913748)))

(assert (=> bs!1516712 (= (dynLambda!25338 lambda!332729 (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343))))) (validRegex!7793 (h!70794 (t!377923 (exprs!5941 (h!70795 zl!343))))))))

(assert (=> bs!1516712 m!6959348))

(assert (=> b!6109155 d!1914770))

(check-sat (not b!6109508) (not bm!505513) (not b!6109541) (not b!6108148) (not b!6109426) (not b_lambda!232647) (not b!6109765) (not b!6109645) (not b!6109336) (not bm!505430) (not b!6109212) (not b!6109564) (not b!6108939) (not b!6109762) (not b!6109463) (not b!6108829) (not b!6109753) (not bm!505445) (not b!6108948) (not bm!505358) (not b!6109002) (not b!6109310) (not bm!505500) (not bm!505469) (not bm!505426) (not b!6109794) (not b!6109706) (not bm!505458) (not b!6109253) (not b!6109536) (not b!6109680) (not bm!505504) (not b!6109448) (not b!6109504) (not b!6109607) (not bm!505453) (not b!6109618) (not b!6109167) (not b!6109264) (not b!6109739) (not b!6109518) (not b!6109368) (not b!6109016) (not b!6109456) (not b!6107997) (not bm!505423) (not b!6109250) (not d!1914642) (not b!6109528) (not b!6109617) (not b!6109562) (not b!6109727) (not b!6109743) (not bm!505332) (not b!6109614) (not bm!505409) (not b!6109537) (not b!6109561) (not bm!505493) (not b!6108917) (not b!6109629) (not b!6109160) (not b!6109796) (not b!6109428) (not b_lambda!232713) (not b!6109517) (not b!6109183) (not b_lambda!232717) (not d!1914462) (not b!6109781) (not b!6109423) (not b!6109458) (not b!6109638) (not b!6109288) (not d!1914658) (not bm!505476) (not b!6109462) (not b!6109757) (not bm!505363) (not b!6109332) (not b!6109605) (not bs!1516710) (not b!6109749) (not d!1914604) (not b!6109690) (not b!6109382) (not b!6109760) (not b_lambda!232719) (not d!1914564) (not b!6109565) (not b!6107892) (not b!6109378) (not b!6109221) (not b!6109301) (not b!6109354) (not b!6109094) (not b!6109533) (not d!1914364) (not b!6109262) (not b!6109062) (not b!6109785) (not b!6109041) (not b!6109512) (not d!1914468) (not b!6109447) (not b!6109733) (not b!6109719) (not b!6108116) (not b!6109817) (not b!6109396) (not b!6109670) (not b!6109818) (not d!1914504) (not b!6108996) (not b!6108001) (not b!6109420) (not b!6107891) (not b!6108841) (not b!6109626) (not b!6109095) (not b!6109454) (not b!6109436) (not bm!505465) (not b!6109374) (not b_lambda!232643) (not bm!505440) (not b!6109672) (not b!6109507) (not b!6109100) (not b!6109606) (not b!6109699) (not b!6109602) (not b!6109352) (not bm!505483) (not b!6109544) (not d!1914640) (not d!1914600) (not bs!1516708) (not bm!505419) (not b!6109593) (not b!6109223) (not b!6109776) (not b!6109641) (not b!6109667) (not b!6109442) (not b!6109498) (not d!1914388) (not d!1914714) (not b!6109424) (not b_lambda!232721) (not b!6109392) (not b!6108240) (not b!6109522) (not b!6108024) (not d!1914654) (not b!6109736) (not b!6109488) (not bm!505437) (not b!6107973) (not d!1914670) (not b!6108986) (not bm!505508) (not b!6109573) (not bm!505501) (not b!6109513) (not b!6109797) (not b!6109395) (not b!6108993) (not d!1914698) (not d!1914692) (not b!6109503) (not d!1914644) (not b!6109692) (not b!6109572) (not bm!505491) (not b!6109305) (not b!6109639) (not b!6109566) (not b!6109101) (not b!6109815) (not bm!505401) (not b!6109747) (not d!1914376) (not b!6109600) (not b_lambda!232709) (not b!6109092) (not b!6109254) (not bm!505372) (not d!1914728) (not b!6109402) (not b!6108714) (not b!6109494) (not b!6109582) (not b!6109281) (not b!6109553) (not b!6109740) (not b!6109621) (not b!6109741) (not b!6108915) (not b!6107936) (not b!6109793) (not bm!505520) (not b!6109286) (not b!6109142) (not b!6108704) (not b!6109558) (not b!6109460) (not b!6109468) (not b!6108908) (not b_lambda!232723) (not b!6109782) (not b!6109084) (not b!6109510) (not b!6108893) (not b!6109427) (not b!6109637) (not b!6109623) (not b_lambda!232711) (not b!6108324) (not bs!1516712) (not b!6109477) (not bm!505450) (not b!6109694) (not bm!505354) (not b!6108325) (not b!6109188) (not d!1914650) (not b!6109339) (not b!6109687) (not b!6109777) (not b!6109272) (not b!6109711) (not b!6109438) (not b!6109596) (not b!6109651) (not b!6109376) (not b!6108890) (not b!6109540) (not b!6108023) (not b!6108916) (not b!6109715) (not b!6109676) (not b!6108878) (not bm!505473) (not b!6109502) (not b!6109300) (not bs!1516706) (not b!6109774) (not b!6109257) (not d!1914434) (not b!6109182) (not b!6109388) (not bm!505418) (not b!6108927) (not b!6109404) (not d!1914592) (not b!6109811) (not b!6109003) (not bm!505438) (not b!6109360) (not bm!505477) (not d!1914360) (not b!6109704) (not d!1914594) (not b!6109327) (not b!6109459) (not b!6109268) (not b!6108840) (not b!6107884) (not b!6109497) (not b!6109025) (not d!1914708) (not bm!505509) (not d!1914426) (not b!6109499) (not b!6109194) (not b!6109589) (not b!6108015) (not b!6108003) (not b!6109334) (not b!6109366) (not bm!505362) (not b!6109450) (not b!6109778) (not b!6109326) (not b!6109435) (not bm!505398) (not bm!505487) (not b!6109270) (not b!6109075) (not b!6108376) (not b!6109302) (not b!6109748) (not d!1914712) (not bm!505343) (not b!6109654) (not b!6108892) (not bm!505393) (not bm!505507) (not b!6108971) (not b!6109010) (not bm!505396) (not b!6109495) (not b!6109656) (not b!6108117) (not b!6109256) (not b!6109679) (not b!6108932) (not b!6109516) (not b!6109228) (not b!6109265) (not b!6109700) (not b!6108859) (not b!6109646) (not b!6109732) (not b!6109483) (not b!6109770) (not bm!505466) (not b!6109379) (not b!6108115) (not bm!505353) (not bm!505422) (not b!6109013) (not b!6108871) (not bm!505452) (not bm!505462) (not b!6109695) (not b!6108975) (not b!6109786) (not b!6109176) (not b!6108973) (not b!6109766) (not b!6109698) (not bm!505371) (not b!6109662) (not b!6109801) (not b!6109650) (not b!6109277) (not b!6108891) (not b!6109615) (not bm!505443) (not b!6108169) (not b!6109668) (not b!6108551) (not bm!505482) (not b!6109806) (not b!6109321) (not b!6109347) (not b!6109371) (not b!6109358) (not b!6109187) (not b!6108963) (not b!6109800) (not b!6109367) (not bm!505488) (not b!6108910) (not b!6109394) (not bm!505403) (not b!6109431) (not b!6109520) (not bm!505402) (not b!6107981) (not b!6108903) (not b!6109489) (not b!6109400) (not b!6109809) (not bm!505505) (not b!6109744) (not b!6109609) (not b!6109664) (not b!6109466) (not bm!505460) (not b!6109362) (not d!1914646) (not d!1914596) (not bm!505512) (not b!6109805) (not b!6109472) (not b!6109613) (not bm!505479) (not b!6109294) (not b!6109702) (not b!6109788) (not b!6109130) (not b!6109375) (not b!6109282) (not b!6109161) (not d!1914720) (not bm!505496) (not b!6108246) (not bm!505530) (not b!6108931) (not bm!505429) (not b!6108233) (not bs!1516707) (not b!6109384) (not b!6109314) (not b!6108989) (not b!6109356) (not b!6109688) (not b!6109714) (not b!6109473) (not b!6107886) (not bm!505492) (not d!1914694) (not b!6109710) (not b!6108847) (not b!6109707) (not b!6109619) (not b!6109320) (not b!6109391) (not b!6109322) (not b!6109758) (not bs!1516705) (not b!6109261) (not b!6109434) (not b!6109807) (not b!6109521) (not b!6108016) (not b!6109548) (not b!6109752) (not b!6109125) (not bm!505410) (not b!6109630) (not b!6109560) (not b!6108846) (not b!6109370) (not b!6109803) (not b!6109411) (not b!6109674) (not b!6109009) (not b!6109487) (not b!6109328) (not bm!505468) (not b!6109790) (not bm!505523) (not b!6109643) (not b!6109159) (not b!6109372) (not bm!505355) (not b!6109594) (not b!6109224) (not b!6108828) (not b!6109772) (not b!6109655) (not d!1914576) (not b!6109363) (not b!6109452) (not b!6108995) (not b!6108792) (not b!6109412) (not bm!505515) (not b!6109266) (not b!6109324) (not bm!505449) (not b!6109642) (not b!6108547) (not b!6109451) (not b!6109708) (not b!6109696) (not b!6109703) (not b!6109479) (not b!6109622) (not b!6109725) (not b!6109635) (not b!6109317) (not b!6108123) (not b!6109189) (not b!6107883) (not b!6108836) (not b!6109588) (not b!6109601) (not b!6109446) (not b!6109526) (not b!6108814) (not d!1914612) (not b!6109666) (not b!6109348) (not b!6109387) (not bs!1516704) (not d!1914660) (not bm!505527) (not b!6109156) (not b!6109769) (not b!6109658) (not b!6109550) (not b!6109050) (not b!6108802) (not b_lambda!232727) (not b_lambda!232715) (not b!6109297) (not bm!505392) (not bm!505521) (not b!6109718) (not b!6109538) (not b!6109340) (not bm!505333) (not b!6109227) (not b!6109764) (not b!6108797) (not bm!505454) (not d!1914538) (not b!6109346) (not d!1914724) (not bm!505503) (not b!6109408) (not b!6108182) (not b!6109691) (not bm!505433) (not bs!1516703) (not b!6107885) (not d!1914578) (not b!6109399) (not bm!505359) (not d!1914402) (not b!6109313) (not b!6109225) (not b!6108912) (not bm!505517) (not b!6109578) (not b!6109500) (not b!6107898) (not b!6108904) (not b!6109293) (not b!6109756) (not b!6109422) (not bs!1516711) (not bm!505414) (not b!6109093) (not b!6108044) (not d!1914490) (not b!6109647) (not b!6109755) (not bm!505441) (not bm!505480) (not b!6107989) (not b!6109260) (not b!6108844) (not b!6109546) (not b!6109350) (not b!6109568) (not b!6109683) (not b!6109481) (not b!6109475) (not b!6109455) (not b!6109252) (not b!6109181) (not b!6109298) (not b!6109570) (not b!6109784) (not b!6109471) (not b!6108907) (not b!6109276) (not setNonEmpty!41270) (not b!6109273) (not b!6107999) (not b!6109490) (not b!6109386) (not bm!505408) (not b!6109306) (not bm!505397) (not b!6109269) (not b!6109443) (not b!6108876) (not b!6109342) (not b!6108853) (not b!6109552) (not d!1914492) (not b!6109524) (not b!6109318) (not b!6109534) (not d!1914580) (not b!6109023) (not b!6109663) (not b!6109810) (not b!6109633) (not b!6109325) (not bm!505459) (not bm!505329) (not b!6109484) (not b!6108898) (not b!6108009) (not b!6109343) (not b!6109359) (not b!6109813) (not b!6109351) (not b!6108018) (not b!6109761) (not b!6109004) (not b!6109308) (not b!6108118) (not b!6108992) (not b!6108977) (not b!6108183) (not b!6109584) (not b!6108884) (not b!6109554) (not b!6109406) (not b!6109745) (not bm!505446) (not bm!505455) (not b!6109296) (not b!6109768) (not b!6107975) (not b!6109432) (not b!6109284) (not bm!505444) (not b!6109493) (not b!6109751) (not b!6109398) (not b!6109419) (not b!6109162) (not bm!505526) (not b!6109107) (not b!6108688) (not b!6109648) (not b!6108997) (not b!6109403) (not b!6109557) (not b!6109289) (not b!6109330) (not b!6109686) (not b!6109798) (not b!6109380) (not b!6109627) (not b!6109514) (not b!6109292) (not bm!505531) (not b!6109285) (not b!6108755) (not b!6109464) (not b!6109407) (not b!6109814) (not bm!505340) (not b!6109390) (not bm!505427) (not b!6109038) (not b!6109581) (not b!6109577) (not b!6109530) (not b!6109511) (not b!6109485) (not b!6109631) (not bm!505456) (not b!6109309) (not b!6109331) (not b!6109467) (not b!6108990) (not b_lambda!232645) (not b!6108124) (not b!6109610) (not d!1914696) (not b!6109430) (not b!6109089) (not b!6107971) (not b!6109586) (not b!6109383) (not b!6109364) (not d!1914406) (not b!6109258) (not b!6109470) (not b!6109728) (not bm!505413) (not b!6109280) (not bm!505405) (not b!6109712) (not b!6109604) (not b!6109222) (not b!6109660) (not b!6109576) (not bm!505447) (not b!6109274) (not b!6109675) (not b!6109414) (not b!6109722) (not b!6108845) (not b!6109819) (not b!6109556) (not b!6109355) (not b!6109773) (not b!6109245) (not bm!505399) (not bm!505432) (not b!6109278) (not bm!505406) (not bm!505348) (not b!6109444) (not b!6109525) (not bm!505484) (not bm!505497) (not b!6109168) (not b!6109480) (not b!6109410) (not bm!505364) (not b!6109580) (not b!6109682) (not b!6109545) (not bm!505347) (not b!6109344) (not b!6108372) (not d!1914732) (not b!6108698) (not bm!505472) (not d!1914602) (not b!6109724) (not b!6109044) (not d!1914598) (not bm!505417) (not b!6109731) (not b!6109233) (not b!6109316) (not bm!505434) (not b!6109415) (not b!6109590) (not b!6109780) (not b!6109684) (not b!6109506) (not bm!505461) (not b!6109789) (not b!6108823) (not b!6109476) (not b!6109723) (not b!6108991) (not b!6109716) (not b!6109039) (not b!6109529) (not bm!505404) (not b!6109492) (not b!6109117) tp_is_empty!41367 (not b!6109802) (not b!6109180) (not d!1914494) (not b!6109678) (not d!1914718) (not b!6109304) (not b!6109030) (not b!6109737) (not b!6109440) (not b!6109001) (not b!6109598) (not b!6109735) (not b!6109720) (not b_lambda!232641) (not b!6109151) (not bm!505336) (not b!6108852) (not b!6108923) (not b!6109652) (not b!6109416) (not b!6109574) (not bm!505339) (not b!6109335) (not b!6109542) (not b!6107943) (not bm!505457) (not b!6109069) (not d!1914744) (not d!1914422) (not bm!505394) (not b!6109439) (not b!6109067) (not bm!505516) (not b!6109792) (not b!6108913) (not bm!505344) (not b!6108017) (not d!1914420) (not d!1914736) (not b!6109418) (not b!6109338) (not b_lambda!232725) (not b!6109569) (not b!6109729) (not b!6108899) (not b!6109625) (not b!6109611) (not b!6108348) (not b_lambda!232639) (not b!6109585) (not b!6109659) (not b!6107924) (not b!6109532) (not b!6109634) (not b!6109597) (not b!6108967) (not b!6109592) (not b!6109312) (not b!6109671) (not bs!1516709) (not b!6109549) (not b!6109290))
(check-sat)
