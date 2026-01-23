; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!610866 () Bool)

(assert start!610866)

(declare-fun b!6111837 () Bool)

(assert (=> b!6111837 true))

(assert (=> b!6111837 true))

(declare-fun lambda!332952 () Int)

(declare-fun lambda!332951 () Int)

(assert (=> b!6111837 (not (= lambda!332952 lambda!332951))))

(assert (=> b!6111837 true))

(assert (=> b!6111837 true))

(declare-fun b!6111832 () Bool)

(assert (=> b!6111832 true))

(declare-fun b!6111823 () Bool)

(declare-fun e!3726659 () Bool)

(declare-datatypes ((C!32392 0))(
  ( (C!32393 (val!25898 Int)) )
))
(declare-datatypes ((Regex!16061 0))(
  ( (ElementMatch!16061 (c!1098065 C!32392)) (Concat!24906 (regOne!32634 Regex!16061) (regTwo!32634 Regex!16061)) (EmptyExpr!16061) (Star!16061 (reg!16390 Regex!16061)) (EmptyLang!16061) (Union!16061 (regOne!32635 Regex!16061) (regTwo!32635 Regex!16061)) )
))
(declare-datatypes ((List!64482 0))(
  ( (Nil!64358) (Cons!64358 (h!70806 Regex!16061) (t!377939 List!64482)) )
))
(declare-datatypes ((Context!10890 0))(
  ( (Context!10891 (exprs!5945 List!64482)) )
))
(declare-fun lt!2330155 () Context!10890)

(declare-fun inv!83399 (Context!10890) Bool)

(assert (=> b!6111823 (= e!3726659 (inv!83399 lt!2330155))))

(declare-fun b!6111824 () Bool)

(declare-fun e!3726655 () Bool)

(declare-fun tp!1707184 () Bool)

(assert (=> b!6111824 (= e!3726655 tp!1707184)))

(declare-fun b!6111825 () Bool)

(declare-fun res!2534887 () Bool)

(declare-fun e!3726660 () Bool)

(assert (=> b!6111825 (=> res!2534887 e!3726660)))

(declare-fun r!7292 () Regex!16061)

(declare-datatypes ((List!64483 0))(
  ( (Nil!64359) (Cons!64359 (h!70807 Context!10890) (t!377940 List!64483)) )
))
(declare-fun zl!343 () List!64483)

(declare-fun generalisedUnion!1905 (List!64482) Regex!16061)

(declare-fun unfocusZipperList!1482 (List!64483) List!64482)

(assert (=> b!6111825 (= res!2534887 (not (= r!7292 (generalisedUnion!1905 (unfocusZipperList!1482 zl!343)))))))

(declare-fun b!6111826 () Bool)

(declare-fun res!2534892 () Bool)

(assert (=> b!6111826 (=> res!2534892 e!3726660)))

(declare-fun generalisedConcat!1658 (List!64482) Regex!16061)

(assert (=> b!6111826 (= res!2534892 (not (= r!7292 (generalisedConcat!1658 (exprs!5945 (h!70807 zl!343))))))))

(declare-fun b!6111827 () Bool)

(declare-fun res!2534889 () Bool)

(declare-fun e!3726656 () Bool)

(assert (=> b!6111827 (=> (not res!2534889) (not e!3726656))))

(declare-fun unfocusZipper!1803 (List!64483) Regex!16061)

(assert (=> b!6111827 (= res!2534889 (= r!7292 (unfocusZipper!1803 zl!343)))))

(declare-fun b!6111828 () Bool)

(declare-fun res!2534886 () Bool)

(declare-fun e!3726661 () Bool)

(assert (=> b!6111828 (=> res!2534886 e!3726661)))

(declare-fun isEmpty!36285 (List!64482) Bool)

(assert (=> b!6111828 (= res!2534886 (isEmpty!36285 (t!377939 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun e!3726657 () Bool)

(declare-fun e!3726665 () Bool)

(declare-fun tp!1707189 () Bool)

(declare-fun b!6111829 () Bool)

(assert (=> b!6111829 (= e!3726657 (and (inv!83399 (h!70807 zl!343)) e!3726665 tp!1707189))))

(declare-fun b!6111830 () Bool)

(declare-datatypes ((Unit!157399 0))(
  ( (Unit!157400) )
))
(declare-fun e!3726664 () Unit!157399)

(declare-fun Unit!157401 () Unit!157399)

(assert (=> b!6111830 (= e!3726664 Unit!157401)))

(declare-fun b!6111831 () Bool)

(assert (=> b!6111831 (= e!3726656 (not e!3726660))))

(declare-fun res!2534893 () Bool)

(assert (=> b!6111831 (=> res!2534893 e!3726660)))

(get-info :version)

(assert (=> b!6111831 (= res!2534893 (not ((_ is Cons!64359) zl!343)))))

(declare-fun lt!2330153 () Bool)

(declare-datatypes ((List!64484 0))(
  ( (Nil!64360) (Cons!64360 (h!70808 C!32392) (t!377941 List!64484)) )
))
(declare-fun s!2326 () List!64484)

(declare-fun matchRSpec!3162 (Regex!16061 List!64484) Bool)

(assert (=> b!6111831 (= lt!2330153 (matchRSpec!3162 r!7292 s!2326))))

(declare-fun matchR!8244 (Regex!16061 List!64484) Bool)

(assert (=> b!6111831 (= lt!2330153 (matchR!8244 r!7292 s!2326))))

(declare-fun lt!2330151 () Unit!157399)

(declare-fun mainMatchTheorem!3162 (Regex!16061 List!64484) Unit!157399)

(assert (=> b!6111831 (= lt!2330151 (mainMatchTheorem!3162 r!7292 s!2326))))

(declare-fun setIsEmpty!41296 () Bool)

(declare-fun setRes!41296 () Bool)

(assert (=> setIsEmpty!41296 setRes!41296))

(assert (=> b!6111832 (= e!3726661 e!3726659)))

(declare-fun res!2534891 () Bool)

(assert (=> b!6111832 (=> res!2534891 e!3726659)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2330152 () (InoxSet Context!10890))

(assert (=> b!6111832 (= res!2534891 (or (not ((_ is ElementMatch!16061) (regOne!32634 r!7292))) (not (= (c!1098065 (regOne!32634 r!7292)) (h!70808 s!2326))) (not (= lt!2330152 (store ((as const (Array Context!10890 Bool)) false) lt!2330155 true)))))))

(declare-fun lt!2330160 () Unit!157399)

(assert (=> b!6111832 (= lt!2330160 e!3726664)))

(declare-fun c!1098064 () Bool)

(declare-fun nullable!6054 (Regex!16061) Bool)

(assert (=> b!6111832 (= c!1098064 (nullable!6054 (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!10890))

(declare-fun lambda!332953 () Int)

(declare-fun flatMap!1566 ((InoxSet Context!10890) Int) (InoxSet Context!10890))

(declare-fun derivationStepZipperUp!1235 (Context!10890 C!32392) (InoxSet Context!10890))

(assert (=> b!6111832 (= (flatMap!1566 z!1189 lambda!332953) (derivationStepZipperUp!1235 (h!70807 zl!343) (h!70808 s!2326)))))

(declare-fun lt!2330156 () Unit!157399)

(declare-fun lemmaFlatMapOnSingletonSet!1092 ((InoxSet Context!10890) Context!10890 Int) Unit!157399)

(assert (=> b!6111832 (= lt!2330156 (lemmaFlatMapOnSingletonSet!1092 z!1189 (h!70807 zl!343) lambda!332953))))

(declare-fun lt!2330154 () (InoxSet Context!10890))

(assert (=> b!6111832 (= lt!2330154 (derivationStepZipperUp!1235 lt!2330155 (h!70808 s!2326)))))

(declare-fun derivationStepZipperDown!1309 (Regex!16061 Context!10890 C!32392) (InoxSet Context!10890))

(assert (=> b!6111832 (= lt!2330152 (derivationStepZipperDown!1309 (h!70806 (exprs!5945 (h!70807 zl!343))) lt!2330155 (h!70808 s!2326)))))

(assert (=> b!6111832 (= lt!2330155 (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun lt!2330161 () (InoxSet Context!10890))

(assert (=> b!6111832 (= lt!2330161 (derivationStepZipperUp!1235 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))) (h!70808 s!2326)))))

(declare-fun b!6111833 () Bool)

(declare-fun Unit!157402 () Unit!157399)

(assert (=> b!6111833 (= e!3726664 Unit!157402)))

(declare-fun lt!2330159 () Unit!157399)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!892 ((InoxSet Context!10890) (InoxSet Context!10890) List!64484) Unit!157399)

(assert (=> b!6111833 (= lt!2330159 (lemmaZipperConcatMatchesSameAsBothZippers!892 lt!2330152 lt!2330154 (t!377941 s!2326)))))

(declare-fun res!2534897 () Bool)

(declare-fun matchZipper!2073 ((InoxSet Context!10890) List!64484) Bool)

(assert (=> b!6111833 (= res!2534897 (matchZipper!2073 lt!2330152 (t!377941 s!2326)))))

(declare-fun e!3726662 () Bool)

(assert (=> b!6111833 (=> res!2534897 e!3726662)))

(assert (=> b!6111833 (= (matchZipper!2073 ((_ map or) lt!2330152 lt!2330154) (t!377941 s!2326)) e!3726662)))

(declare-fun b!6111834 () Bool)

(declare-fun e!3726658 () Bool)

(declare-fun tp_is_empty!41375 () Bool)

(assert (=> b!6111834 (= e!3726658 tp_is_empty!41375)))

(declare-fun b!6111835 () Bool)

(declare-fun res!2534894 () Bool)

(assert (=> b!6111835 (=> (not res!2534894) (not e!3726656))))

(declare-fun toList!9845 ((InoxSet Context!10890)) List!64483)

(assert (=> b!6111835 (= res!2534894 (= (toList!9845 z!1189) zl!343))))

(declare-fun b!6111836 () Bool)

(declare-fun e!3726663 () Bool)

(declare-fun tp!1707182 () Bool)

(assert (=> b!6111836 (= e!3726663 (and tp_is_empty!41375 tp!1707182))))

(declare-fun res!2534895 () Bool)

(assert (=> start!610866 (=> (not res!2534895) (not e!3726656))))

(declare-fun validRegex!7797 (Regex!16061) Bool)

(assert (=> start!610866 (= res!2534895 (validRegex!7797 r!7292))))

(assert (=> start!610866 e!3726656))

(assert (=> start!610866 e!3726658))

(declare-fun condSetEmpty!41296 () Bool)

(assert (=> start!610866 (= condSetEmpty!41296 (= z!1189 ((as const (Array Context!10890 Bool)) false)))))

(assert (=> start!610866 setRes!41296))

(assert (=> start!610866 e!3726657))

(assert (=> start!610866 e!3726663))

(assert (=> b!6111837 (= e!3726660 e!3726661)))

(declare-fun res!2534885 () Bool)

(assert (=> b!6111837 (=> res!2534885 e!3726661)))

(declare-fun lt!2330157 () Bool)

(assert (=> b!6111837 (= res!2534885 (or (not (= lt!2330153 lt!2330157)) ((_ is Nil!64360) s!2326)))))

(declare-fun Exists!3131 (Int) Bool)

(assert (=> b!6111837 (= (Exists!3131 lambda!332951) (Exists!3131 lambda!332952))))

(declare-fun lt!2330158 () Unit!157399)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1668 (Regex!16061 Regex!16061 List!64484) Unit!157399)

(assert (=> b!6111837 (= lt!2330158 (lemmaExistCutMatchRandMatchRSpecEquivalent!1668 (regOne!32634 r!7292) (regTwo!32634 r!7292) s!2326))))

(assert (=> b!6111837 (= lt!2330157 (Exists!3131 lambda!332951))))

(declare-datatypes ((tuple2!66080 0))(
  ( (tuple2!66081 (_1!36343 List!64484) (_2!36343 List!64484)) )
))
(declare-datatypes ((Option!15952 0))(
  ( (None!15951) (Some!15951 (v!52086 tuple2!66080)) )
))
(declare-fun isDefined!12655 (Option!15952) Bool)

(declare-fun findConcatSeparation!2366 (Regex!16061 Regex!16061 List!64484 List!64484 List!64484) Option!15952)

(assert (=> b!6111837 (= lt!2330157 (isDefined!12655 (findConcatSeparation!2366 (regOne!32634 r!7292) (regTwo!32634 r!7292) Nil!64360 s!2326 s!2326)))))

(declare-fun lt!2330162 () Unit!157399)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2130 (Regex!16061 Regex!16061 List!64484) Unit!157399)

(assert (=> b!6111837 (= lt!2330162 (lemmaFindConcatSeparationEquivalentToExists!2130 (regOne!32634 r!7292) (regTwo!32634 r!7292) s!2326))))

(declare-fun b!6111838 () Bool)

(declare-fun tp!1707181 () Bool)

(assert (=> b!6111838 (= e!3726665 tp!1707181)))

(declare-fun setNonEmpty!41296 () Bool)

(declare-fun setElem!41296 () Context!10890)

(declare-fun tp!1707186 () Bool)

(assert (=> setNonEmpty!41296 (= setRes!41296 (and tp!1707186 (inv!83399 setElem!41296) e!3726655))))

(declare-fun setRest!41296 () (InoxSet Context!10890))

(assert (=> setNonEmpty!41296 (= z!1189 ((_ map or) (store ((as const (Array Context!10890 Bool)) false) setElem!41296 true) setRest!41296))))

(declare-fun b!6111839 () Bool)

(declare-fun tp!1707187 () Bool)

(declare-fun tp!1707185 () Bool)

(assert (=> b!6111839 (= e!3726658 (and tp!1707187 tp!1707185))))

(declare-fun b!6111840 () Bool)

(declare-fun tp!1707190 () Bool)

(assert (=> b!6111840 (= e!3726658 tp!1707190)))

(declare-fun b!6111841 () Bool)

(declare-fun res!2534888 () Bool)

(assert (=> b!6111841 (=> res!2534888 e!3726660)))

(declare-fun isEmpty!36286 (List!64483) Bool)

(assert (=> b!6111841 (= res!2534888 (not (isEmpty!36286 (t!377940 zl!343))))))

(declare-fun b!6111842 () Bool)

(declare-fun tp!1707183 () Bool)

(declare-fun tp!1707188 () Bool)

(assert (=> b!6111842 (= e!3726658 (and tp!1707183 tp!1707188))))

(declare-fun b!6111843 () Bool)

(declare-fun res!2534890 () Bool)

(assert (=> b!6111843 (=> res!2534890 e!3726660)))

(assert (=> b!6111843 (= res!2534890 (or ((_ is EmptyExpr!16061) r!7292) ((_ is EmptyLang!16061) r!7292) ((_ is ElementMatch!16061) r!7292) ((_ is Union!16061) r!7292) (not ((_ is Concat!24906) r!7292))))))

(declare-fun b!6111844 () Bool)

(assert (=> b!6111844 (= e!3726662 (matchZipper!2073 lt!2330154 (t!377941 s!2326)))))

(declare-fun b!6111845 () Bool)

(declare-fun res!2534896 () Bool)

(assert (=> b!6111845 (=> res!2534896 e!3726660)))

(assert (=> b!6111845 (= res!2534896 (not ((_ is Cons!64358) (exprs!5945 (h!70807 zl!343)))))))

(assert (= (and start!610866 res!2534895) b!6111835))

(assert (= (and b!6111835 res!2534894) b!6111827))

(assert (= (and b!6111827 res!2534889) b!6111831))

(assert (= (and b!6111831 (not res!2534893)) b!6111841))

(assert (= (and b!6111841 (not res!2534888)) b!6111826))

(assert (= (and b!6111826 (not res!2534892)) b!6111845))

(assert (= (and b!6111845 (not res!2534896)) b!6111825))

(assert (= (and b!6111825 (not res!2534887)) b!6111843))

(assert (= (and b!6111843 (not res!2534890)) b!6111837))

(assert (= (and b!6111837 (not res!2534885)) b!6111828))

(assert (= (and b!6111828 (not res!2534886)) b!6111832))

(assert (= (and b!6111832 c!1098064) b!6111833))

(assert (= (and b!6111832 (not c!1098064)) b!6111830))

(assert (= (and b!6111833 (not res!2534897)) b!6111844))

(assert (= (and b!6111832 (not res!2534891)) b!6111823))

(assert (= (and start!610866 ((_ is ElementMatch!16061) r!7292)) b!6111834))

(assert (= (and start!610866 ((_ is Concat!24906) r!7292)) b!6111839))

(assert (= (and start!610866 ((_ is Star!16061) r!7292)) b!6111840))

(assert (= (and start!610866 ((_ is Union!16061) r!7292)) b!6111842))

(assert (= (and start!610866 condSetEmpty!41296) setIsEmpty!41296))

(assert (= (and start!610866 (not condSetEmpty!41296)) setNonEmpty!41296))

(assert (= setNonEmpty!41296 b!6111824))

(assert (= b!6111829 b!6111838))

(assert (= (and start!610866 ((_ is Cons!64359) zl!343)) b!6111829))

(assert (= (and start!610866 ((_ is Cons!64360) s!2326)) b!6111836))

(declare-fun m!6960756 () Bool)

(assert (=> b!6111835 m!6960756))

(declare-fun m!6960758 () Bool)

(assert (=> b!6111833 m!6960758))

(declare-fun m!6960760 () Bool)

(assert (=> b!6111833 m!6960760))

(declare-fun m!6960762 () Bool)

(assert (=> b!6111833 m!6960762))

(declare-fun m!6960764 () Bool)

(assert (=> b!6111831 m!6960764))

(declare-fun m!6960766 () Bool)

(assert (=> b!6111831 m!6960766))

(declare-fun m!6960768 () Bool)

(assert (=> b!6111831 m!6960768))

(declare-fun m!6960770 () Bool)

(assert (=> b!6111827 m!6960770))

(declare-fun m!6960772 () Bool)

(assert (=> b!6111844 m!6960772))

(declare-fun m!6960774 () Bool)

(assert (=> b!6111829 m!6960774))

(declare-fun m!6960776 () Bool)

(assert (=> b!6111825 m!6960776))

(assert (=> b!6111825 m!6960776))

(declare-fun m!6960778 () Bool)

(assert (=> b!6111825 m!6960778))

(declare-fun m!6960780 () Bool)

(assert (=> b!6111828 m!6960780))

(declare-fun m!6960782 () Bool)

(assert (=> b!6111841 m!6960782))

(declare-fun m!6960784 () Bool)

(assert (=> b!6111832 m!6960784))

(declare-fun m!6960786 () Bool)

(assert (=> b!6111832 m!6960786))

(declare-fun m!6960788 () Bool)

(assert (=> b!6111832 m!6960788))

(declare-fun m!6960790 () Bool)

(assert (=> b!6111832 m!6960790))

(declare-fun m!6960792 () Bool)

(assert (=> b!6111832 m!6960792))

(declare-fun m!6960794 () Bool)

(assert (=> b!6111832 m!6960794))

(declare-fun m!6960796 () Bool)

(assert (=> b!6111832 m!6960796))

(declare-fun m!6960798 () Bool)

(assert (=> b!6111832 m!6960798))

(declare-fun m!6960800 () Bool)

(assert (=> start!610866 m!6960800))

(declare-fun m!6960802 () Bool)

(assert (=> b!6111823 m!6960802))

(declare-fun m!6960804 () Bool)

(assert (=> setNonEmpty!41296 m!6960804))

(declare-fun m!6960806 () Bool)

(assert (=> b!6111826 m!6960806))

(declare-fun m!6960808 () Bool)

(assert (=> b!6111837 m!6960808))

(assert (=> b!6111837 m!6960808))

(declare-fun m!6960810 () Bool)

(assert (=> b!6111837 m!6960810))

(declare-fun m!6960812 () Bool)

(assert (=> b!6111837 m!6960812))

(declare-fun m!6960814 () Bool)

(assert (=> b!6111837 m!6960814))

(declare-fun m!6960816 () Bool)

(assert (=> b!6111837 m!6960816))

(assert (=> b!6111837 m!6960810))

(declare-fun m!6960818 () Bool)

(assert (=> b!6111837 m!6960818))

(check-sat (not b!6111842) (not b!6111838) (not b!6111824) (not start!610866) (not b!6111825) (not b!6111844) (not b!6111832) (not b!6111835) (not b!6111826) (not b!6111841) (not b!6111823) (not setNonEmpty!41296) (not b!6111827) (not b!6111837) (not b!6111839) (not b!6111829) (not b!6111836) (not b!6111831) tp_is_empty!41375 (not b!6111828) (not b!6111833) (not b!6111840))
(check-sat)
(get-model)

(declare-fun d!1915302 () Bool)

(assert (=> d!1915302 (= (isEmpty!36286 (t!377940 zl!343)) ((_ is Nil!64359) (t!377940 zl!343)))))

(assert (=> b!6111841 d!1915302))

(declare-fun d!1915306 () Bool)

(declare-fun choose!45425 ((InoxSet Context!10890) Int) (InoxSet Context!10890))

(assert (=> d!1915306 (= (flatMap!1566 z!1189 lambda!332953) (choose!45425 z!1189 lambda!332953))))

(declare-fun bs!1517042 () Bool)

(assert (= bs!1517042 d!1915306))

(declare-fun m!6960840 () Bool)

(assert (=> bs!1517042 m!6960840))

(assert (=> b!6111832 d!1915306))

(declare-fun d!1915308 () Bool)

(declare-fun nullableFct!2017 (Regex!16061) Bool)

(assert (=> d!1915308 (= (nullable!6054 (h!70806 (exprs!5945 (h!70807 zl!343)))) (nullableFct!2017 (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun bs!1517043 () Bool)

(assert (= bs!1517043 d!1915308))

(declare-fun m!6960842 () Bool)

(assert (=> bs!1517043 m!6960842))

(assert (=> b!6111832 d!1915308))

(declare-fun bm!505781 () Bool)

(declare-fun call!505786 () (InoxSet Context!10890))

(assert (=> bm!505781 (= call!505786 (derivationStepZipperDown!1309 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))))) (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (h!70808 s!2326)))))

(declare-fun b!6111922 () Bool)

(declare-fun e!3726713 () Bool)

(assert (=> b!6111922 (= e!3726713 (nullable!6054 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))))))

(declare-fun e!3726715 () (InoxSet Context!10890))

(declare-fun b!6111923 () Bool)

(assert (=> b!6111923 (= e!3726715 ((_ map or) call!505786 (derivationStepZipperUp!1235 (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (h!70808 s!2326))))))

(declare-fun b!6111924 () Bool)

(declare-fun e!3726714 () (InoxSet Context!10890))

(assert (=> b!6111924 (= e!3726714 ((as const (Array Context!10890 Bool)) false))))

(declare-fun b!6111925 () Bool)

(assert (=> b!6111925 (= e!3726715 e!3726714)))

(declare-fun c!1098090 () Bool)

(assert (=> b!6111925 (= c!1098090 ((_ is Cons!64358) (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))))))))

(declare-fun b!6111926 () Bool)

(assert (=> b!6111926 (= e!3726714 call!505786)))

(declare-fun d!1915312 () Bool)

(declare-fun c!1098089 () Bool)

(assert (=> d!1915312 (= c!1098089 e!3726713)))

(declare-fun res!2534922 () Bool)

(assert (=> d!1915312 (=> (not res!2534922) (not e!3726713))))

(assert (=> d!1915312 (= res!2534922 ((_ is Cons!64358) (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))))))))

(assert (=> d!1915312 (= (derivationStepZipperUp!1235 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))) (h!70808 s!2326)) e!3726715)))

(assert (= (and d!1915312 res!2534922) b!6111922))

(assert (= (and d!1915312 c!1098089) b!6111923))

(assert (= (and d!1915312 (not c!1098089)) b!6111925))

(assert (= (and b!6111925 c!1098090) b!6111926))

(assert (= (and b!6111925 (not c!1098090)) b!6111924))

(assert (= (or b!6111923 b!6111926) bm!505781))

(declare-fun m!6960858 () Bool)

(assert (=> bm!505781 m!6960858))

(declare-fun m!6960860 () Bool)

(assert (=> b!6111922 m!6960860))

(declare-fun m!6960862 () Bool)

(assert (=> b!6111923 m!6960862))

(assert (=> b!6111832 d!1915312))

(declare-fun bm!505782 () Bool)

(declare-fun call!505787 () (InoxSet Context!10890))

(assert (=> bm!505782 (= call!505787 (derivationStepZipperDown!1309 (h!70806 (exprs!5945 (h!70807 zl!343))) (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343)))) (h!70808 s!2326)))))

(declare-fun b!6111937 () Bool)

(declare-fun e!3726722 () Bool)

(assert (=> b!6111937 (= e!3726722 (nullable!6054 (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun e!3726724 () (InoxSet Context!10890))

(declare-fun b!6111938 () Bool)

(assert (=> b!6111938 (= e!3726724 ((_ map or) call!505787 (derivationStepZipperUp!1235 (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343)))) (h!70808 s!2326))))))

(declare-fun b!6111939 () Bool)

(declare-fun e!3726723 () (InoxSet Context!10890))

(assert (=> b!6111939 (= e!3726723 ((as const (Array Context!10890 Bool)) false))))

(declare-fun b!6111940 () Bool)

(assert (=> b!6111940 (= e!3726724 e!3726723)))

(declare-fun c!1098096 () Bool)

(assert (=> b!6111940 (= c!1098096 ((_ is Cons!64358) (exprs!5945 (h!70807 zl!343))))))

(declare-fun b!6111941 () Bool)

(assert (=> b!6111941 (= e!3726723 call!505787)))

(declare-fun d!1915320 () Bool)

(declare-fun c!1098095 () Bool)

(assert (=> d!1915320 (= c!1098095 e!3726722)))

(declare-fun res!2534925 () Bool)

(assert (=> d!1915320 (=> (not res!2534925) (not e!3726722))))

(assert (=> d!1915320 (= res!2534925 ((_ is Cons!64358) (exprs!5945 (h!70807 zl!343))))))

(assert (=> d!1915320 (= (derivationStepZipperUp!1235 (h!70807 zl!343) (h!70808 s!2326)) e!3726724)))

(assert (= (and d!1915320 res!2534925) b!6111937))

(assert (= (and d!1915320 c!1098095) b!6111938))

(assert (= (and d!1915320 (not c!1098095)) b!6111940))

(assert (= (and b!6111940 c!1098096) b!6111941))

(assert (= (and b!6111940 (not c!1098096)) b!6111939))

(assert (= (or b!6111938 b!6111941) bm!505782))

(declare-fun m!6960882 () Bool)

(assert (=> bm!505782 m!6960882))

(assert (=> b!6111937 m!6960796))

(declare-fun m!6960884 () Bool)

(assert (=> b!6111938 m!6960884))

(assert (=> b!6111832 d!1915320))

(declare-fun bm!505795 () Bool)

(declare-fun c!1098114 () Bool)

(declare-fun call!505803 () (InoxSet Context!10890))

(declare-fun call!505801 () List!64482)

(assert (=> bm!505795 (= call!505803 (derivationStepZipperDown!1309 (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343))))) (ite c!1098114 lt!2330155 (Context!10891 call!505801)) (h!70808 s!2326)))))

(declare-fun d!1915324 () Bool)

(declare-fun c!1098113 () Bool)

(assert (=> d!1915324 (= c!1098113 (and ((_ is ElementMatch!16061) (h!70806 (exprs!5945 (h!70807 zl!343)))) (= (c!1098065 (h!70806 (exprs!5945 (h!70807 zl!343)))) (h!70808 s!2326))))))

(declare-fun e!3726760 () (InoxSet Context!10890))

(assert (=> d!1915324 (= (derivationStepZipperDown!1309 (h!70806 (exprs!5945 (h!70807 zl!343))) lt!2330155 (h!70808 s!2326)) e!3726760)))

(declare-fun b!6111994 () Bool)

(declare-fun e!3726758 () (InoxSet Context!10890))

(declare-fun call!505802 () (InoxSet Context!10890))

(assert (=> b!6111994 (= e!3726758 ((_ map or) call!505802 call!505803))))

(declare-fun bm!505796 () Bool)

(declare-fun call!505805 () (InoxSet Context!10890))

(assert (=> bm!505796 (= call!505805 call!505802)))

(declare-fun b!6111995 () Bool)

(assert (=> b!6111995 (= e!3726760 (store ((as const (Array Context!10890 Bool)) false) lt!2330155 true))))

(declare-fun call!505804 () List!64482)

(declare-fun bm!505797 () Bool)

(declare-fun c!1098117 () Bool)

(declare-fun c!1098115 () Bool)

(assert (=> bm!505797 (= call!505802 (derivationStepZipperDown!1309 (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343))))))) (ite (or c!1098114 c!1098115) lt!2330155 (Context!10891 call!505804)) (h!70808 s!2326)))))

(declare-fun b!6111996 () Bool)

(declare-fun e!3726755 () (InoxSet Context!10890))

(assert (=> b!6111996 (= e!3726755 ((as const (Array Context!10890 Bool)) false))))

(declare-fun b!6111997 () Bool)

(declare-fun e!3726756 () (InoxSet Context!10890))

(declare-fun call!505800 () (InoxSet Context!10890))

(assert (=> b!6111997 (= e!3726756 call!505800)))

(declare-fun bm!505798 () Bool)

(declare-fun $colon$colon!1938 (List!64482 Regex!16061) List!64482)

(assert (=> bm!505798 (= call!505801 ($colon$colon!1938 (exprs!5945 lt!2330155) (ite (or c!1098115 c!1098117) (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (h!70806 (exprs!5945 (h!70807 zl!343))))))))

(declare-fun b!6111998 () Bool)

(declare-fun e!3726759 () Bool)

(assert (=> b!6111998 (= e!3726759 (nullable!6054 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343))))))))

(declare-fun bm!505799 () Bool)

(assert (=> bm!505799 (= call!505804 call!505801)))

(declare-fun b!6111999 () Bool)

(declare-fun c!1098116 () Bool)

(assert (=> b!6111999 (= c!1098116 ((_ is Star!16061) (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(assert (=> b!6111999 (= e!3726756 e!3726755)))

(declare-fun bm!505800 () Bool)

(assert (=> bm!505800 (= call!505800 call!505805)))

(declare-fun b!6112000 () Bool)

(declare-fun e!3726757 () (InoxSet Context!10890))

(assert (=> b!6112000 (= e!3726757 ((_ map or) call!505803 call!505805))))

(declare-fun b!6112001 () Bool)

(assert (=> b!6112001 (= e!3726755 call!505800)))

(declare-fun b!6112002 () Bool)

(assert (=> b!6112002 (= c!1098115 e!3726759)))

(declare-fun res!2534946 () Bool)

(assert (=> b!6112002 (=> (not res!2534946) (not e!3726759))))

(assert (=> b!6112002 (= res!2534946 ((_ is Concat!24906) (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(assert (=> b!6112002 (= e!3726758 e!3726757)))

(declare-fun b!6112003 () Bool)

(assert (=> b!6112003 (= e!3726757 e!3726756)))

(assert (=> b!6112003 (= c!1098117 ((_ is Concat!24906) (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun b!6112004 () Bool)

(assert (=> b!6112004 (= e!3726760 e!3726758)))

(assert (=> b!6112004 (= c!1098114 ((_ is Union!16061) (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(assert (= (and d!1915324 c!1098113) b!6111995))

(assert (= (and d!1915324 (not c!1098113)) b!6112004))

(assert (= (and b!6112004 c!1098114) b!6111994))

(assert (= (and b!6112004 (not c!1098114)) b!6112002))

(assert (= (and b!6112002 res!2534946) b!6111998))

(assert (= (and b!6112002 c!1098115) b!6112000))

(assert (= (and b!6112002 (not c!1098115)) b!6112003))

(assert (= (and b!6112003 c!1098117) b!6111997))

(assert (= (and b!6112003 (not c!1098117)) b!6111999))

(assert (= (and b!6111999 c!1098116) b!6112001))

(assert (= (and b!6111999 (not c!1098116)) b!6111996))

(assert (= (or b!6111997 b!6112001) bm!505799))

(assert (= (or b!6111997 b!6112001) bm!505800))

(assert (= (or b!6112000 bm!505799) bm!505798))

(assert (= (or b!6112000 bm!505800) bm!505796))

(assert (= (or b!6111994 b!6112000) bm!505795))

(assert (= (or b!6111994 bm!505796) bm!505797))

(declare-fun m!6960922 () Bool)

(assert (=> b!6111998 m!6960922))

(declare-fun m!6960924 () Bool)

(assert (=> bm!505795 m!6960924))

(assert (=> b!6111995 m!6960794))

(declare-fun m!6960926 () Bool)

(assert (=> bm!505797 m!6960926))

(declare-fun m!6960928 () Bool)

(assert (=> bm!505798 m!6960928))

(assert (=> b!6111832 d!1915324))

(declare-fun d!1915336 () Bool)

(declare-fun dynLambda!25344 (Int Context!10890) (InoxSet Context!10890))

(assert (=> d!1915336 (= (flatMap!1566 z!1189 lambda!332953) (dynLambda!25344 lambda!332953 (h!70807 zl!343)))))

(declare-fun lt!2330188 () Unit!157399)

(declare-fun choose!45427 ((InoxSet Context!10890) Context!10890 Int) Unit!157399)

(assert (=> d!1915336 (= lt!2330188 (choose!45427 z!1189 (h!70807 zl!343) lambda!332953))))

(assert (=> d!1915336 (= z!1189 (store ((as const (Array Context!10890 Bool)) false) (h!70807 zl!343) true))))

(assert (=> d!1915336 (= (lemmaFlatMapOnSingletonSet!1092 z!1189 (h!70807 zl!343) lambda!332953) lt!2330188)))

(declare-fun b_lambda!232793 () Bool)

(assert (=> (not b_lambda!232793) (not d!1915336)))

(declare-fun bs!1517048 () Bool)

(assert (= bs!1517048 d!1915336))

(assert (=> bs!1517048 m!6960790))

(declare-fun m!6960930 () Bool)

(assert (=> bs!1517048 m!6960930))

(declare-fun m!6960932 () Bool)

(assert (=> bs!1517048 m!6960932))

(declare-fun m!6960934 () Bool)

(assert (=> bs!1517048 m!6960934))

(assert (=> b!6111832 d!1915336))

(declare-fun bm!505801 () Bool)

(declare-fun call!505806 () (InoxSet Context!10890))

(assert (=> bm!505801 (= call!505806 (derivationStepZipperDown!1309 (h!70806 (exprs!5945 lt!2330155)) (Context!10891 (t!377939 (exprs!5945 lt!2330155))) (h!70808 s!2326)))))

(declare-fun b!6112009 () Bool)

(declare-fun e!3726763 () Bool)

(assert (=> b!6112009 (= e!3726763 (nullable!6054 (h!70806 (exprs!5945 lt!2330155))))))

(declare-fun e!3726765 () (InoxSet Context!10890))

(declare-fun b!6112010 () Bool)

(assert (=> b!6112010 (= e!3726765 ((_ map or) call!505806 (derivationStepZipperUp!1235 (Context!10891 (t!377939 (exprs!5945 lt!2330155))) (h!70808 s!2326))))))

(declare-fun b!6112011 () Bool)

(declare-fun e!3726764 () (InoxSet Context!10890))

(assert (=> b!6112011 (= e!3726764 ((as const (Array Context!10890 Bool)) false))))

(declare-fun b!6112012 () Bool)

(assert (=> b!6112012 (= e!3726765 e!3726764)))

(declare-fun c!1098119 () Bool)

(assert (=> b!6112012 (= c!1098119 ((_ is Cons!64358) (exprs!5945 lt!2330155)))))

(declare-fun b!6112013 () Bool)

(assert (=> b!6112013 (= e!3726764 call!505806)))

(declare-fun d!1915338 () Bool)

(declare-fun c!1098118 () Bool)

(assert (=> d!1915338 (= c!1098118 e!3726763)))

(declare-fun res!2534951 () Bool)

(assert (=> d!1915338 (=> (not res!2534951) (not e!3726763))))

(assert (=> d!1915338 (= res!2534951 ((_ is Cons!64358) (exprs!5945 lt!2330155)))))

(assert (=> d!1915338 (= (derivationStepZipperUp!1235 lt!2330155 (h!70808 s!2326)) e!3726765)))

(assert (= (and d!1915338 res!2534951) b!6112009))

(assert (= (and d!1915338 c!1098118) b!6112010))

(assert (= (and d!1915338 (not c!1098118)) b!6112012))

(assert (= (and b!6112012 c!1098119) b!6112013))

(assert (= (and b!6112012 (not c!1098119)) b!6112011))

(assert (= (or b!6112010 b!6112013) bm!505801))

(declare-fun m!6960936 () Bool)

(assert (=> bm!505801 m!6960936))

(declare-fun m!6960938 () Bool)

(assert (=> b!6112009 m!6960938))

(declare-fun m!6960940 () Bool)

(assert (=> b!6112010 m!6960940))

(assert (=> b!6111832 d!1915338))

(declare-fun d!1915340 () Bool)

(declare-fun lambda!332965 () Int)

(declare-fun forall!15182 (List!64482 Int) Bool)

(assert (=> d!1915340 (= (inv!83399 lt!2330155) (forall!15182 (exprs!5945 lt!2330155) lambda!332965))))

(declare-fun bs!1517051 () Bool)

(assert (= bs!1517051 d!1915340))

(declare-fun m!6960946 () Bool)

(assert (=> bs!1517051 m!6960946))

(assert (=> b!6111823 d!1915340))

(declare-fun e!3726772 () Bool)

(declare-fun d!1915344 () Bool)

(assert (=> d!1915344 (= (matchZipper!2073 ((_ map or) lt!2330152 lt!2330154) (t!377941 s!2326)) e!3726772)))

(declare-fun res!2534962 () Bool)

(assert (=> d!1915344 (=> res!2534962 e!3726772)))

(assert (=> d!1915344 (= res!2534962 (matchZipper!2073 lt!2330152 (t!377941 s!2326)))))

(declare-fun lt!2330194 () Unit!157399)

(declare-fun choose!45428 ((InoxSet Context!10890) (InoxSet Context!10890) List!64484) Unit!157399)

(assert (=> d!1915344 (= lt!2330194 (choose!45428 lt!2330152 lt!2330154 (t!377941 s!2326)))))

(assert (=> d!1915344 (= (lemmaZipperConcatMatchesSameAsBothZippers!892 lt!2330152 lt!2330154 (t!377941 s!2326)) lt!2330194)))

(declare-fun b!6112024 () Bool)

(assert (=> b!6112024 (= e!3726772 (matchZipper!2073 lt!2330154 (t!377941 s!2326)))))

(assert (= (and d!1915344 (not res!2534962)) b!6112024))

(assert (=> d!1915344 m!6960762))

(assert (=> d!1915344 m!6960760))

(declare-fun m!6960948 () Bool)

(assert (=> d!1915344 m!6960948))

(assert (=> b!6112024 m!6960772))

(assert (=> b!6111833 d!1915344))

(declare-fun d!1915346 () Bool)

(declare-fun c!1098122 () Bool)

(declare-fun isEmpty!36289 (List!64484) Bool)

(assert (=> d!1915346 (= c!1098122 (isEmpty!36289 (t!377941 s!2326)))))

(declare-fun e!3726775 () Bool)

(assert (=> d!1915346 (= (matchZipper!2073 lt!2330152 (t!377941 s!2326)) e!3726775)))

(declare-fun b!6112029 () Bool)

(declare-fun nullableZipper!1842 ((InoxSet Context!10890)) Bool)

(assert (=> b!6112029 (= e!3726775 (nullableZipper!1842 lt!2330152))))

(declare-fun b!6112030 () Bool)

(declare-fun derivationStepZipper!2034 ((InoxSet Context!10890) C!32392) (InoxSet Context!10890))

(declare-fun head!12643 (List!64484) C!32392)

(declare-fun tail!11728 (List!64484) List!64484)

(assert (=> b!6112030 (= e!3726775 (matchZipper!2073 (derivationStepZipper!2034 lt!2330152 (head!12643 (t!377941 s!2326))) (tail!11728 (t!377941 s!2326))))))

(assert (= (and d!1915346 c!1098122) b!6112029))

(assert (= (and d!1915346 (not c!1098122)) b!6112030))

(declare-fun m!6960962 () Bool)

(assert (=> d!1915346 m!6960962))

(declare-fun m!6960964 () Bool)

(assert (=> b!6112029 m!6960964))

(declare-fun m!6960966 () Bool)

(assert (=> b!6112030 m!6960966))

(assert (=> b!6112030 m!6960966))

(declare-fun m!6960968 () Bool)

(assert (=> b!6112030 m!6960968))

(declare-fun m!6960970 () Bool)

(assert (=> b!6112030 m!6960970))

(assert (=> b!6112030 m!6960968))

(assert (=> b!6112030 m!6960970))

(declare-fun m!6960972 () Bool)

(assert (=> b!6112030 m!6960972))

(assert (=> b!6111833 d!1915346))

(declare-fun d!1915356 () Bool)

(declare-fun c!1098123 () Bool)

(assert (=> d!1915356 (= c!1098123 (isEmpty!36289 (t!377941 s!2326)))))

(declare-fun e!3726776 () Bool)

(assert (=> d!1915356 (= (matchZipper!2073 ((_ map or) lt!2330152 lt!2330154) (t!377941 s!2326)) e!3726776)))

(declare-fun b!6112031 () Bool)

(assert (=> b!6112031 (= e!3726776 (nullableZipper!1842 ((_ map or) lt!2330152 lt!2330154)))))

(declare-fun b!6112032 () Bool)

(assert (=> b!6112032 (= e!3726776 (matchZipper!2073 (derivationStepZipper!2034 ((_ map or) lt!2330152 lt!2330154) (head!12643 (t!377941 s!2326))) (tail!11728 (t!377941 s!2326))))))

(assert (= (and d!1915356 c!1098123) b!6112031))

(assert (= (and d!1915356 (not c!1098123)) b!6112032))

(assert (=> d!1915356 m!6960962))

(declare-fun m!6960980 () Bool)

(assert (=> b!6112031 m!6960980))

(assert (=> b!6112032 m!6960966))

(assert (=> b!6112032 m!6960966))

(declare-fun m!6960982 () Bool)

(assert (=> b!6112032 m!6960982))

(assert (=> b!6112032 m!6960970))

(assert (=> b!6112032 m!6960982))

(assert (=> b!6112032 m!6960970))

(declare-fun m!6960984 () Bool)

(assert (=> b!6112032 m!6960984))

(assert (=> b!6111833 d!1915356))

(declare-fun d!1915360 () Bool)

(declare-fun c!1098124 () Bool)

(assert (=> d!1915360 (= c!1098124 (isEmpty!36289 (t!377941 s!2326)))))

(declare-fun e!3726777 () Bool)

(assert (=> d!1915360 (= (matchZipper!2073 lt!2330154 (t!377941 s!2326)) e!3726777)))

(declare-fun b!6112033 () Bool)

(assert (=> b!6112033 (= e!3726777 (nullableZipper!1842 lt!2330154))))

(declare-fun b!6112034 () Bool)

(assert (=> b!6112034 (= e!3726777 (matchZipper!2073 (derivationStepZipper!2034 lt!2330154 (head!12643 (t!377941 s!2326))) (tail!11728 (t!377941 s!2326))))))

(assert (= (and d!1915360 c!1098124) b!6112033))

(assert (= (and d!1915360 (not c!1098124)) b!6112034))

(assert (=> d!1915360 m!6960962))

(declare-fun m!6960986 () Bool)

(assert (=> b!6112033 m!6960986))

(assert (=> b!6112034 m!6960966))

(assert (=> b!6112034 m!6960966))

(declare-fun m!6960988 () Bool)

(assert (=> b!6112034 m!6960988))

(assert (=> b!6112034 m!6960970))

(assert (=> b!6112034 m!6960988))

(assert (=> b!6112034 m!6960970))

(declare-fun m!6960990 () Bool)

(assert (=> b!6112034 m!6960990))

(assert (=> b!6111844 d!1915360))

(declare-fun bs!1517065 () Bool)

(declare-fun d!1915362 () Bool)

(assert (= bs!1517065 (and d!1915362 d!1915340)))

(declare-fun lambda!332976 () Int)

(assert (=> bs!1517065 (= lambda!332976 lambda!332965)))

(declare-fun b!6112098 () Bool)

(declare-fun e!3726815 () Bool)

(declare-fun e!3726814 () Bool)

(assert (=> b!6112098 (= e!3726815 e!3726814)))

(declare-fun c!1098154 () Bool)

(assert (=> b!6112098 (= c!1098154 (isEmpty!36285 (unfocusZipperList!1482 zl!343)))))

(declare-fun b!6112099 () Bool)

(declare-fun e!3726818 () Bool)

(assert (=> b!6112099 (= e!3726814 e!3726818)))

(declare-fun c!1098152 () Bool)

(declare-fun tail!11729 (List!64482) List!64482)

(assert (=> b!6112099 (= c!1098152 (isEmpty!36285 (tail!11729 (unfocusZipperList!1482 zl!343))))))

(declare-fun b!6112100 () Bool)

(declare-fun e!3726816 () Regex!16061)

(assert (=> b!6112100 (= e!3726816 (h!70806 (unfocusZipperList!1482 zl!343)))))

(declare-fun b!6112101 () Bool)

(declare-fun lt!2330201 () Regex!16061)

(declare-fun isEmptyLang!1487 (Regex!16061) Bool)

(assert (=> b!6112101 (= e!3726814 (isEmptyLang!1487 lt!2330201))))

(declare-fun b!6112102 () Bool)

(declare-fun e!3726817 () Regex!16061)

(assert (=> b!6112102 (= e!3726817 (Union!16061 (h!70806 (unfocusZipperList!1482 zl!343)) (generalisedUnion!1905 (t!377939 (unfocusZipperList!1482 zl!343)))))))

(declare-fun b!6112103 () Bool)

(declare-fun isUnion!917 (Regex!16061) Bool)

(assert (=> b!6112103 (= e!3726818 (isUnion!917 lt!2330201))))

(declare-fun b!6112104 () Bool)

(assert (=> b!6112104 (= e!3726817 EmptyLang!16061)))

(declare-fun b!6112105 () Bool)

(declare-fun head!12644 (List!64482) Regex!16061)

(assert (=> b!6112105 (= e!3726818 (= lt!2330201 (head!12644 (unfocusZipperList!1482 zl!343))))))

(declare-fun b!6112106 () Bool)

(assert (=> b!6112106 (= e!3726816 e!3726817)))

(declare-fun c!1098155 () Bool)

(assert (=> b!6112106 (= c!1098155 ((_ is Cons!64358) (unfocusZipperList!1482 zl!343)))))

(assert (=> d!1915362 e!3726815))

(declare-fun res!2534973 () Bool)

(assert (=> d!1915362 (=> (not res!2534973) (not e!3726815))))

(assert (=> d!1915362 (= res!2534973 (validRegex!7797 lt!2330201))))

(assert (=> d!1915362 (= lt!2330201 e!3726816)))

(declare-fun c!1098153 () Bool)

(declare-fun e!3726819 () Bool)

(assert (=> d!1915362 (= c!1098153 e!3726819)))

(declare-fun res!2534972 () Bool)

(assert (=> d!1915362 (=> (not res!2534972) (not e!3726819))))

(assert (=> d!1915362 (= res!2534972 ((_ is Cons!64358) (unfocusZipperList!1482 zl!343)))))

(assert (=> d!1915362 (forall!15182 (unfocusZipperList!1482 zl!343) lambda!332976)))

(assert (=> d!1915362 (= (generalisedUnion!1905 (unfocusZipperList!1482 zl!343)) lt!2330201)))

(declare-fun b!6112107 () Bool)

(assert (=> b!6112107 (= e!3726819 (isEmpty!36285 (t!377939 (unfocusZipperList!1482 zl!343))))))

(assert (= (and d!1915362 res!2534972) b!6112107))

(assert (= (and d!1915362 c!1098153) b!6112100))

(assert (= (and d!1915362 (not c!1098153)) b!6112106))

(assert (= (and b!6112106 c!1098155) b!6112102))

(assert (= (and b!6112106 (not c!1098155)) b!6112104))

(assert (= (and d!1915362 res!2534973) b!6112098))

(assert (= (and b!6112098 c!1098154) b!6112101))

(assert (= (and b!6112098 (not c!1098154)) b!6112099))

(assert (= (and b!6112099 c!1098152) b!6112105))

(assert (= (and b!6112099 (not c!1098152)) b!6112103))

(declare-fun m!6961002 () Bool)

(assert (=> b!6112102 m!6961002))

(declare-fun m!6961004 () Bool)

(assert (=> d!1915362 m!6961004))

(assert (=> d!1915362 m!6960776))

(declare-fun m!6961006 () Bool)

(assert (=> d!1915362 m!6961006))

(declare-fun m!6961008 () Bool)

(assert (=> b!6112107 m!6961008))

(assert (=> b!6112098 m!6960776))

(declare-fun m!6961010 () Bool)

(assert (=> b!6112098 m!6961010))

(declare-fun m!6961012 () Bool)

(assert (=> b!6112103 m!6961012))

(assert (=> b!6112105 m!6960776))

(declare-fun m!6961014 () Bool)

(assert (=> b!6112105 m!6961014))

(declare-fun m!6961016 () Bool)

(assert (=> b!6112101 m!6961016))

(assert (=> b!6112099 m!6960776))

(declare-fun m!6961018 () Bool)

(assert (=> b!6112099 m!6961018))

(assert (=> b!6112099 m!6961018))

(declare-fun m!6961020 () Bool)

(assert (=> b!6112099 m!6961020))

(assert (=> b!6111825 d!1915362))

(declare-fun bs!1517067 () Bool)

(declare-fun d!1915368 () Bool)

(assert (= bs!1517067 (and d!1915368 d!1915340)))

(declare-fun lambda!332979 () Int)

(assert (=> bs!1517067 (= lambda!332979 lambda!332965)))

(declare-fun bs!1517068 () Bool)

(assert (= bs!1517068 (and d!1915368 d!1915362)))

(assert (=> bs!1517068 (= lambda!332979 lambda!332976)))

(declare-fun lt!2330204 () List!64482)

(assert (=> d!1915368 (forall!15182 lt!2330204 lambda!332979)))

(declare-fun e!3726831 () List!64482)

(assert (=> d!1915368 (= lt!2330204 e!3726831)))

(declare-fun c!1098164 () Bool)

(assert (=> d!1915368 (= c!1098164 ((_ is Cons!64359) zl!343))))

(assert (=> d!1915368 (= (unfocusZipperList!1482 zl!343) lt!2330204)))

(declare-fun b!6112127 () Bool)

(assert (=> b!6112127 (= e!3726831 (Cons!64358 (generalisedConcat!1658 (exprs!5945 (h!70807 zl!343))) (unfocusZipperList!1482 (t!377940 zl!343))))))

(declare-fun b!6112128 () Bool)

(assert (=> b!6112128 (= e!3726831 Nil!64358)))

(assert (= (and d!1915368 c!1098164) b!6112127))

(assert (= (and d!1915368 (not c!1098164)) b!6112128))

(declare-fun m!6961040 () Bool)

(assert (=> d!1915368 m!6961040))

(assert (=> b!6112127 m!6960806))

(declare-fun m!6961042 () Bool)

(assert (=> b!6112127 m!6961042))

(assert (=> b!6111825 d!1915368))

(declare-fun d!1915378 () Bool)

(declare-fun e!3726850 () Bool)

(assert (=> d!1915378 e!3726850))

(declare-fun res!2534991 () Bool)

(assert (=> d!1915378 (=> (not res!2534991) (not e!3726850))))

(declare-fun lt!2330207 () List!64483)

(declare-fun noDuplicate!1908 (List!64483) Bool)

(assert (=> d!1915378 (= res!2534991 (noDuplicate!1908 lt!2330207))))

(declare-fun choose!45430 ((InoxSet Context!10890)) List!64483)

(assert (=> d!1915378 (= lt!2330207 (choose!45430 z!1189))))

(assert (=> d!1915378 (= (toList!9845 z!1189) lt!2330207)))

(declare-fun b!6112159 () Bool)

(declare-fun content!11947 (List!64483) (InoxSet Context!10890))

(assert (=> b!6112159 (= e!3726850 (= (content!11947 lt!2330207) z!1189))))

(assert (= (and d!1915378 res!2534991) b!6112159))

(declare-fun m!6961044 () Bool)

(assert (=> d!1915378 m!6961044))

(declare-fun m!6961046 () Bool)

(assert (=> d!1915378 m!6961046))

(declare-fun m!6961048 () Bool)

(assert (=> b!6112159 m!6961048))

(assert (=> b!6111835 d!1915378))

(declare-fun bs!1517076 () Bool)

(declare-fun d!1915380 () Bool)

(assert (= bs!1517076 (and d!1915380 d!1915340)))

(declare-fun lambda!332988 () Int)

(assert (=> bs!1517076 (= lambda!332988 lambda!332965)))

(declare-fun bs!1517077 () Bool)

(assert (= bs!1517077 (and d!1915380 d!1915362)))

(assert (=> bs!1517077 (= lambda!332988 lambda!332976)))

(declare-fun bs!1517078 () Bool)

(assert (= bs!1517078 (and d!1915380 d!1915368)))

(assert (=> bs!1517078 (= lambda!332988 lambda!332979)))

(declare-fun e!3726874 () Bool)

(assert (=> d!1915380 e!3726874))

(declare-fun res!2535004 () Bool)

(assert (=> d!1915380 (=> (not res!2535004) (not e!3726874))))

(declare-fun lt!2330210 () Regex!16061)

(assert (=> d!1915380 (= res!2535004 (validRegex!7797 lt!2330210))))

(declare-fun e!3726875 () Regex!16061)

(assert (=> d!1915380 (= lt!2330210 e!3726875)))

(declare-fun c!1098186 () Bool)

(declare-fun e!3726872 () Bool)

(assert (=> d!1915380 (= c!1098186 e!3726872)))

(declare-fun res!2535003 () Bool)

(assert (=> d!1915380 (=> (not res!2535003) (not e!3726872))))

(assert (=> d!1915380 (= res!2535003 ((_ is Cons!64358) (exprs!5945 (h!70807 zl!343))))))

(assert (=> d!1915380 (forall!15182 (exprs!5945 (h!70807 zl!343)) lambda!332988)))

(assert (=> d!1915380 (= (generalisedConcat!1658 (exprs!5945 (h!70807 zl!343))) lt!2330210)))

(declare-fun b!6112195 () Bool)

(assert (=> b!6112195 (= e!3726875 (h!70806 (exprs!5945 (h!70807 zl!343))))))

(declare-fun b!6112196 () Bool)

(declare-fun e!3726873 () Regex!16061)

(assert (=> b!6112196 (= e!3726875 e!3726873)))

(declare-fun c!1098187 () Bool)

(assert (=> b!6112196 (= c!1098187 ((_ is Cons!64358) (exprs!5945 (h!70807 zl!343))))))

(declare-fun b!6112197 () Bool)

(declare-fun e!3726877 () Bool)

(declare-fun e!3726876 () Bool)

(assert (=> b!6112197 (= e!3726877 e!3726876)))

(declare-fun c!1098188 () Bool)

(assert (=> b!6112197 (= c!1098188 (isEmpty!36285 (tail!11729 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun b!6112198 () Bool)

(assert (=> b!6112198 (= e!3726873 (Concat!24906 (h!70806 (exprs!5945 (h!70807 zl!343))) (generalisedConcat!1658 (t!377939 (exprs!5945 (h!70807 zl!343))))))))

(declare-fun b!6112199 () Bool)

(assert (=> b!6112199 (= e!3726872 (isEmpty!36285 (t!377939 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun b!6112200 () Bool)

(assert (=> b!6112200 (= e!3726876 (= lt!2330210 (head!12644 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun b!6112201 () Bool)

(declare-fun isEmptyExpr!1478 (Regex!16061) Bool)

(assert (=> b!6112201 (= e!3726877 (isEmptyExpr!1478 lt!2330210))))

(declare-fun b!6112202 () Bool)

(assert (=> b!6112202 (= e!3726873 EmptyExpr!16061)))

(declare-fun b!6112203 () Bool)

(declare-fun isConcat!1001 (Regex!16061) Bool)

(assert (=> b!6112203 (= e!3726876 (isConcat!1001 lt!2330210))))

(declare-fun b!6112204 () Bool)

(assert (=> b!6112204 (= e!3726874 e!3726877)))

(declare-fun c!1098185 () Bool)

(assert (=> b!6112204 (= c!1098185 (isEmpty!36285 (exprs!5945 (h!70807 zl!343))))))

(assert (= (and d!1915380 res!2535003) b!6112199))

(assert (= (and d!1915380 c!1098186) b!6112195))

(assert (= (and d!1915380 (not c!1098186)) b!6112196))

(assert (= (and b!6112196 c!1098187) b!6112198))

(assert (= (and b!6112196 (not c!1098187)) b!6112202))

(assert (= (and d!1915380 res!2535004) b!6112204))

(assert (= (and b!6112204 c!1098185) b!6112201))

(assert (= (and b!6112204 (not c!1098185)) b!6112197))

(assert (= (and b!6112197 c!1098188) b!6112200))

(assert (= (and b!6112197 (not c!1098188)) b!6112203))

(declare-fun m!6961058 () Bool)

(assert (=> b!6112203 m!6961058))

(assert (=> b!6112199 m!6960780))

(declare-fun m!6961060 () Bool)

(assert (=> b!6112201 m!6961060))

(declare-fun m!6961062 () Bool)

(assert (=> b!6112197 m!6961062))

(assert (=> b!6112197 m!6961062))

(declare-fun m!6961064 () Bool)

(assert (=> b!6112197 m!6961064))

(declare-fun m!6961066 () Bool)

(assert (=> d!1915380 m!6961066))

(declare-fun m!6961068 () Bool)

(assert (=> d!1915380 m!6961068))

(declare-fun m!6961070 () Bool)

(assert (=> b!6112200 m!6961070))

(declare-fun m!6961072 () Bool)

(assert (=> b!6112198 m!6961072))

(declare-fun m!6961074 () Bool)

(assert (=> b!6112204 m!6961074))

(assert (=> b!6111826 d!1915380))

(declare-fun d!1915384 () Bool)

(declare-fun lt!2330216 () Regex!16061)

(assert (=> d!1915384 (validRegex!7797 lt!2330216)))

(assert (=> d!1915384 (= lt!2330216 (generalisedUnion!1905 (unfocusZipperList!1482 zl!343)))))

(assert (=> d!1915384 (= (unfocusZipper!1803 zl!343) lt!2330216)))

(declare-fun bs!1517079 () Bool)

(assert (= bs!1517079 d!1915384))

(declare-fun m!6961076 () Bool)

(assert (=> bs!1517079 m!6961076))

(assert (=> bs!1517079 m!6960776))

(assert (=> bs!1517079 m!6960776))

(assert (=> bs!1517079 m!6960778))

(assert (=> b!6111827 d!1915384))

(declare-fun b!6112355 () Bool)

(declare-fun res!2535048 () Bool)

(declare-fun e!3726953 () Bool)

(assert (=> b!6112355 (=> (not res!2535048) (not e!3726953))))

(declare-fun lt!2330234 () Option!15952)

(declare-fun get!22194 (Option!15952) tuple2!66080)

(assert (=> b!6112355 (= res!2535048 (matchR!8244 (regOne!32634 r!7292) (_1!36343 (get!22194 lt!2330234))))))

(declare-fun b!6112356 () Bool)

(declare-fun e!3726956 () Bool)

(assert (=> b!6112356 (= e!3726956 (not (isDefined!12655 lt!2330234)))))

(declare-fun b!6112357 () Bool)

(declare-fun e!3726954 () Option!15952)

(declare-fun e!3726955 () Option!15952)

(assert (=> b!6112357 (= e!3726954 e!3726955)))

(declare-fun c!1098218 () Bool)

(assert (=> b!6112357 (= c!1098218 ((_ is Nil!64360) s!2326))))

(declare-fun d!1915386 () Bool)

(assert (=> d!1915386 e!3726956))

(declare-fun res!2535045 () Bool)

(assert (=> d!1915386 (=> res!2535045 e!3726956)))

(assert (=> d!1915386 (= res!2535045 e!3726953)))

(declare-fun res!2535046 () Bool)

(assert (=> d!1915386 (=> (not res!2535046) (not e!3726953))))

(assert (=> d!1915386 (= res!2535046 (isDefined!12655 lt!2330234))))

(assert (=> d!1915386 (= lt!2330234 e!3726954)))

(declare-fun c!1098217 () Bool)

(declare-fun e!3726957 () Bool)

(assert (=> d!1915386 (= c!1098217 e!3726957)))

(declare-fun res!2535049 () Bool)

(assert (=> d!1915386 (=> (not res!2535049) (not e!3726957))))

(assert (=> d!1915386 (= res!2535049 (matchR!8244 (regOne!32634 r!7292) Nil!64360))))

(assert (=> d!1915386 (validRegex!7797 (regOne!32634 r!7292))))

(assert (=> d!1915386 (= (findConcatSeparation!2366 (regOne!32634 r!7292) (regTwo!32634 r!7292) Nil!64360 s!2326 s!2326) lt!2330234)))

(declare-fun b!6112358 () Bool)

(assert (=> b!6112358 (= e!3726955 None!15951)))

(declare-fun b!6112359 () Bool)

(assert (=> b!6112359 (= e!3726954 (Some!15951 (tuple2!66081 Nil!64360 s!2326)))))

(declare-fun b!6112360 () Bool)

(declare-fun ++!14148 (List!64484 List!64484) List!64484)

(assert (=> b!6112360 (= e!3726953 (= (++!14148 (_1!36343 (get!22194 lt!2330234)) (_2!36343 (get!22194 lt!2330234))) s!2326))))

(declare-fun b!6112361 () Bool)

(declare-fun res!2535047 () Bool)

(assert (=> b!6112361 (=> (not res!2535047) (not e!3726953))))

(assert (=> b!6112361 (= res!2535047 (matchR!8244 (regTwo!32634 r!7292) (_2!36343 (get!22194 lt!2330234))))))

(declare-fun b!6112362 () Bool)

(declare-fun lt!2330232 () Unit!157399)

(declare-fun lt!2330233 () Unit!157399)

(assert (=> b!6112362 (= lt!2330232 lt!2330233)))

(assert (=> b!6112362 (= (++!14148 (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360)) (t!377941 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2243 (List!64484 C!32392 List!64484 List!64484) Unit!157399)

(assert (=> b!6112362 (= lt!2330233 (lemmaMoveElementToOtherListKeepsConcatEq!2243 Nil!64360 (h!70808 s!2326) (t!377941 s!2326) s!2326))))

(assert (=> b!6112362 (= e!3726955 (findConcatSeparation!2366 (regOne!32634 r!7292) (regTwo!32634 r!7292) (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360)) (t!377941 s!2326) s!2326))))

(declare-fun b!6112363 () Bool)

(assert (=> b!6112363 (= e!3726957 (matchR!8244 (regTwo!32634 r!7292) s!2326))))

(assert (= (and d!1915386 res!2535049) b!6112363))

(assert (= (and d!1915386 c!1098217) b!6112359))

(assert (= (and d!1915386 (not c!1098217)) b!6112357))

(assert (= (and b!6112357 c!1098218) b!6112358))

(assert (= (and b!6112357 (not c!1098218)) b!6112362))

(assert (= (and d!1915386 res!2535046) b!6112355))

(assert (= (and b!6112355 res!2535048) b!6112361))

(assert (= (and b!6112361 res!2535047) b!6112360))

(assert (= (and d!1915386 (not res!2535045)) b!6112356))

(declare-fun m!6961120 () Bool)

(assert (=> b!6112363 m!6961120))

(declare-fun m!6961122 () Bool)

(assert (=> b!6112361 m!6961122))

(declare-fun m!6961124 () Bool)

(assert (=> b!6112361 m!6961124))

(assert (=> b!6112355 m!6961122))

(declare-fun m!6961126 () Bool)

(assert (=> b!6112355 m!6961126))

(declare-fun m!6961128 () Bool)

(assert (=> d!1915386 m!6961128))

(declare-fun m!6961130 () Bool)

(assert (=> d!1915386 m!6961130))

(declare-fun m!6961132 () Bool)

(assert (=> d!1915386 m!6961132))

(assert (=> b!6112356 m!6961128))

(declare-fun m!6961134 () Bool)

(assert (=> b!6112362 m!6961134))

(assert (=> b!6112362 m!6961134))

(declare-fun m!6961136 () Bool)

(assert (=> b!6112362 m!6961136))

(declare-fun m!6961138 () Bool)

(assert (=> b!6112362 m!6961138))

(assert (=> b!6112362 m!6961134))

(declare-fun m!6961140 () Bool)

(assert (=> b!6112362 m!6961140))

(assert (=> b!6112360 m!6961122))

(declare-fun m!6961142 () Bool)

(assert (=> b!6112360 m!6961142))

(assert (=> b!6111837 d!1915386))

(declare-fun bs!1517091 () Bool)

(declare-fun d!1915396 () Bool)

(assert (= bs!1517091 (and d!1915396 b!6111837)))

(declare-fun lambda!332997 () Int)

(assert (=> bs!1517091 (= lambda!332997 lambda!332951)))

(assert (=> bs!1517091 (not (= lambda!332997 lambda!332952))))

(assert (=> d!1915396 true))

(assert (=> d!1915396 true))

(assert (=> d!1915396 true))

(assert (=> d!1915396 (= (isDefined!12655 (findConcatSeparation!2366 (regOne!32634 r!7292) (regTwo!32634 r!7292) Nil!64360 s!2326 s!2326)) (Exists!3131 lambda!332997))))

(declare-fun lt!2330237 () Unit!157399)

(declare-fun choose!45431 (Regex!16061 Regex!16061 List!64484) Unit!157399)

(assert (=> d!1915396 (= lt!2330237 (choose!45431 (regOne!32634 r!7292) (regTwo!32634 r!7292) s!2326))))

(assert (=> d!1915396 (validRegex!7797 (regOne!32634 r!7292))))

(assert (=> d!1915396 (= (lemmaFindConcatSeparationEquivalentToExists!2130 (regOne!32634 r!7292) (regTwo!32634 r!7292) s!2326) lt!2330237)))

(declare-fun bs!1517092 () Bool)

(assert (= bs!1517092 d!1915396))

(assert (=> bs!1517092 m!6961132))

(declare-fun m!6961144 () Bool)

(assert (=> bs!1517092 m!6961144))

(declare-fun m!6961146 () Bool)

(assert (=> bs!1517092 m!6961146))

(assert (=> bs!1517092 m!6960810))

(assert (=> bs!1517092 m!6960812))

(assert (=> bs!1517092 m!6960810))

(assert (=> b!6111837 d!1915396))

(declare-fun bs!1517093 () Bool)

(declare-fun d!1915398 () Bool)

(assert (= bs!1517093 (and d!1915398 b!6111837)))

(declare-fun lambda!333002 () Int)

(assert (=> bs!1517093 (= lambda!333002 lambda!332951)))

(assert (=> bs!1517093 (not (= lambda!333002 lambda!332952))))

(declare-fun bs!1517094 () Bool)

(assert (= bs!1517094 (and d!1915398 d!1915396)))

(assert (=> bs!1517094 (= lambda!333002 lambda!332997)))

(assert (=> d!1915398 true))

(assert (=> d!1915398 true))

(assert (=> d!1915398 true))

(declare-fun lambda!333003 () Int)

(assert (=> bs!1517093 (not (= lambda!333003 lambda!332951))))

(assert (=> bs!1517093 (= lambda!333003 lambda!332952)))

(assert (=> bs!1517094 (not (= lambda!333003 lambda!332997))))

(declare-fun bs!1517095 () Bool)

(assert (= bs!1517095 d!1915398))

(assert (=> bs!1517095 (not (= lambda!333003 lambda!333002))))

(assert (=> d!1915398 true))

(assert (=> d!1915398 true))

(assert (=> d!1915398 true))

(assert (=> d!1915398 (= (Exists!3131 lambda!333002) (Exists!3131 lambda!333003))))

(declare-fun lt!2330240 () Unit!157399)

(declare-fun choose!45432 (Regex!16061 Regex!16061 List!64484) Unit!157399)

(assert (=> d!1915398 (= lt!2330240 (choose!45432 (regOne!32634 r!7292) (regTwo!32634 r!7292) s!2326))))

(assert (=> d!1915398 (validRegex!7797 (regOne!32634 r!7292))))

(assert (=> d!1915398 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1668 (regOne!32634 r!7292) (regTwo!32634 r!7292) s!2326) lt!2330240)))

(declare-fun m!6961148 () Bool)

(assert (=> bs!1517095 m!6961148))

(declare-fun m!6961150 () Bool)

(assert (=> bs!1517095 m!6961150))

(declare-fun m!6961152 () Bool)

(assert (=> bs!1517095 m!6961152))

(assert (=> bs!1517095 m!6961132))

(assert (=> b!6111837 d!1915398))

(declare-fun d!1915400 () Bool)

(declare-fun isEmpty!36290 (Option!15952) Bool)

(assert (=> d!1915400 (= (isDefined!12655 (findConcatSeparation!2366 (regOne!32634 r!7292) (regTwo!32634 r!7292) Nil!64360 s!2326 s!2326)) (not (isEmpty!36290 (findConcatSeparation!2366 (regOne!32634 r!7292) (regTwo!32634 r!7292) Nil!64360 s!2326 s!2326))))))

(declare-fun bs!1517096 () Bool)

(assert (= bs!1517096 d!1915400))

(assert (=> bs!1517096 m!6960810))

(declare-fun m!6961154 () Bool)

(assert (=> bs!1517096 m!6961154))

(assert (=> b!6111837 d!1915400))

(declare-fun d!1915402 () Bool)

(declare-fun choose!45433 (Int) Bool)

(assert (=> d!1915402 (= (Exists!3131 lambda!332951) (choose!45433 lambda!332951))))

(declare-fun bs!1517097 () Bool)

(assert (= bs!1517097 d!1915402))

(declare-fun m!6961156 () Bool)

(assert (=> bs!1517097 m!6961156))

(assert (=> b!6111837 d!1915402))

(declare-fun d!1915404 () Bool)

(assert (=> d!1915404 (= (Exists!3131 lambda!332952) (choose!45433 lambda!332952))))

(declare-fun bs!1517098 () Bool)

(assert (= bs!1517098 d!1915404))

(declare-fun m!6961158 () Bool)

(assert (=> bs!1517098 m!6961158))

(assert (=> b!6111837 d!1915404))

(declare-fun d!1915406 () Bool)

(assert (=> d!1915406 (= (isEmpty!36285 (t!377939 (exprs!5945 (h!70807 zl!343)))) ((_ is Nil!64358) (t!377939 (exprs!5945 (h!70807 zl!343)))))))

(assert (=> b!6111828 d!1915406))

(declare-fun bs!1517099 () Bool)

(declare-fun d!1915408 () Bool)

(assert (= bs!1517099 (and d!1915408 d!1915340)))

(declare-fun lambda!333004 () Int)

(assert (=> bs!1517099 (= lambda!333004 lambda!332965)))

(declare-fun bs!1517100 () Bool)

(assert (= bs!1517100 (and d!1915408 d!1915362)))

(assert (=> bs!1517100 (= lambda!333004 lambda!332976)))

(declare-fun bs!1517101 () Bool)

(assert (= bs!1517101 (and d!1915408 d!1915368)))

(assert (=> bs!1517101 (= lambda!333004 lambda!332979)))

(declare-fun bs!1517102 () Bool)

(assert (= bs!1517102 (and d!1915408 d!1915380)))

(assert (=> bs!1517102 (= lambda!333004 lambda!332988)))

(assert (=> d!1915408 (= (inv!83399 (h!70807 zl!343)) (forall!15182 (exprs!5945 (h!70807 zl!343)) lambda!333004))))

(declare-fun bs!1517103 () Bool)

(assert (= bs!1517103 d!1915408))

(declare-fun m!6961160 () Bool)

(assert (=> bs!1517103 m!6961160))

(assert (=> b!6111829 d!1915408))

(declare-fun bs!1517104 () Bool)

(declare-fun d!1915410 () Bool)

(assert (= bs!1517104 (and d!1915410 d!1915408)))

(declare-fun lambda!333005 () Int)

(assert (=> bs!1517104 (= lambda!333005 lambda!333004)))

(declare-fun bs!1517105 () Bool)

(assert (= bs!1517105 (and d!1915410 d!1915368)))

(assert (=> bs!1517105 (= lambda!333005 lambda!332979)))

(declare-fun bs!1517106 () Bool)

(assert (= bs!1517106 (and d!1915410 d!1915380)))

(assert (=> bs!1517106 (= lambda!333005 lambda!332988)))

(declare-fun bs!1517107 () Bool)

(assert (= bs!1517107 (and d!1915410 d!1915362)))

(assert (=> bs!1517107 (= lambda!333005 lambda!332976)))

(declare-fun bs!1517108 () Bool)

(assert (= bs!1517108 (and d!1915410 d!1915340)))

(assert (=> bs!1517108 (= lambda!333005 lambda!332965)))

(assert (=> d!1915410 (= (inv!83399 setElem!41296) (forall!15182 (exprs!5945 setElem!41296) lambda!333005))))

(declare-fun bs!1517109 () Bool)

(assert (= bs!1517109 d!1915410))

(declare-fun m!6961162 () Bool)

(assert (=> bs!1517109 m!6961162))

(assert (=> setNonEmpty!41296 d!1915410))

(declare-fun d!1915412 () Bool)

(declare-fun res!2535074 () Bool)

(declare-fun e!3726980 () Bool)

(assert (=> d!1915412 (=> res!2535074 e!3726980)))

(assert (=> d!1915412 (= res!2535074 ((_ is ElementMatch!16061) r!7292))))

(assert (=> d!1915412 (= (validRegex!7797 r!7292) e!3726980)))

(declare-fun bm!505840 () Bool)

(declare-fun call!505845 () Bool)

(declare-fun c!1098223 () Bool)

(declare-fun c!1098224 () Bool)

(assert (=> bm!505840 (= call!505845 (validRegex!7797 (ite c!1098223 (reg!16390 r!7292) (ite c!1098224 (regOne!32635 r!7292) (regOne!32634 r!7292)))))))

(declare-fun b!6112394 () Bool)

(declare-fun e!3726984 () Bool)

(declare-fun e!3726981 () Bool)

(assert (=> b!6112394 (= e!3726984 e!3726981)))

(declare-fun res!2535073 () Bool)

(assert (=> b!6112394 (=> (not res!2535073) (not e!3726981))))

(declare-fun call!505847 () Bool)

(assert (=> b!6112394 (= res!2535073 call!505847)))

(declare-fun b!6112395 () Bool)

(declare-fun res!2535075 () Bool)

(assert (=> b!6112395 (=> res!2535075 e!3726984)))

(assert (=> b!6112395 (= res!2535075 (not ((_ is Concat!24906) r!7292)))))

(declare-fun e!3726978 () Bool)

(assert (=> b!6112395 (= e!3726978 e!3726984)))

(declare-fun b!6112396 () Bool)

(declare-fun e!3726983 () Bool)

(assert (=> b!6112396 (= e!3726983 call!505845)))

(declare-fun bm!505841 () Bool)

(declare-fun call!505846 () Bool)

(assert (=> bm!505841 (= call!505846 (validRegex!7797 (ite c!1098224 (regTwo!32635 r!7292) (regTwo!32634 r!7292))))))

(declare-fun b!6112397 () Bool)

(declare-fun res!2535076 () Bool)

(declare-fun e!3726979 () Bool)

(assert (=> b!6112397 (=> (not res!2535076) (not e!3726979))))

(assert (=> b!6112397 (= res!2535076 call!505847)))

(assert (=> b!6112397 (= e!3726978 e!3726979)))

(declare-fun bm!505842 () Bool)

(assert (=> bm!505842 (= call!505847 call!505845)))

(declare-fun b!6112398 () Bool)

(assert (=> b!6112398 (= e!3726981 call!505846)))

(declare-fun b!6112399 () Bool)

(declare-fun e!3726982 () Bool)

(assert (=> b!6112399 (= e!3726982 e!3726978)))

(assert (=> b!6112399 (= c!1098224 ((_ is Union!16061) r!7292))))

(declare-fun b!6112400 () Bool)

(assert (=> b!6112400 (= e!3726980 e!3726982)))

(assert (=> b!6112400 (= c!1098223 ((_ is Star!16061) r!7292))))

(declare-fun b!6112401 () Bool)

(assert (=> b!6112401 (= e!3726982 e!3726983)))

(declare-fun res!2535072 () Bool)

(assert (=> b!6112401 (= res!2535072 (not (nullable!6054 (reg!16390 r!7292))))))

(assert (=> b!6112401 (=> (not res!2535072) (not e!3726983))))

(declare-fun b!6112402 () Bool)

(assert (=> b!6112402 (= e!3726979 call!505846)))

(assert (= (and d!1915412 (not res!2535074)) b!6112400))

(assert (= (and b!6112400 c!1098223) b!6112401))

(assert (= (and b!6112400 (not c!1098223)) b!6112399))

(assert (= (and b!6112401 res!2535072) b!6112396))

(assert (= (and b!6112399 c!1098224) b!6112397))

(assert (= (and b!6112399 (not c!1098224)) b!6112395))

(assert (= (and b!6112397 res!2535076) b!6112402))

(assert (= (and b!6112395 (not res!2535075)) b!6112394))

(assert (= (and b!6112394 res!2535073) b!6112398))

(assert (= (or b!6112402 b!6112398) bm!505841))

(assert (= (or b!6112397 b!6112394) bm!505842))

(assert (= (or b!6112396 bm!505842) bm!505840))

(declare-fun m!6961164 () Bool)

(assert (=> bm!505840 m!6961164))

(declare-fun m!6961166 () Bool)

(assert (=> bm!505841 m!6961166))

(declare-fun m!6961168 () Bool)

(assert (=> b!6112401 m!6961168))

(assert (=> start!610866 d!1915412))

(declare-fun bs!1517110 () Bool)

(declare-fun b!6112445 () Bool)

(assert (= bs!1517110 (and b!6112445 b!6111837)))

(declare-fun lambda!333010 () Int)

(assert (=> bs!1517110 (not (= lambda!333010 lambda!332952))))

(declare-fun bs!1517111 () Bool)

(assert (= bs!1517111 (and b!6112445 d!1915398)))

(assert (=> bs!1517111 (not (= lambda!333010 lambda!333003))))

(declare-fun bs!1517112 () Bool)

(assert (= bs!1517112 (and b!6112445 d!1915396)))

(assert (=> bs!1517112 (not (= lambda!333010 lambda!332997))))

(assert (=> bs!1517111 (not (= lambda!333010 lambda!333002))))

(assert (=> bs!1517110 (not (= lambda!333010 lambda!332951))))

(assert (=> b!6112445 true))

(assert (=> b!6112445 true))

(declare-fun bs!1517113 () Bool)

(declare-fun b!6112435 () Bool)

(assert (= bs!1517113 (and b!6112435 b!6112445)))

(declare-fun lambda!333011 () Int)

(assert (=> bs!1517113 (not (= lambda!333011 lambda!333010))))

(declare-fun bs!1517114 () Bool)

(assert (= bs!1517114 (and b!6112435 b!6111837)))

(assert (=> bs!1517114 (= lambda!333011 lambda!332952)))

(declare-fun bs!1517115 () Bool)

(assert (= bs!1517115 (and b!6112435 d!1915398)))

(assert (=> bs!1517115 (= lambda!333011 lambda!333003)))

(declare-fun bs!1517116 () Bool)

(assert (= bs!1517116 (and b!6112435 d!1915396)))

(assert (=> bs!1517116 (not (= lambda!333011 lambda!332997))))

(assert (=> bs!1517115 (not (= lambda!333011 lambda!333002))))

(assert (=> bs!1517114 (not (= lambda!333011 lambda!332951))))

(assert (=> b!6112435 true))

(assert (=> b!6112435 true))

(declare-fun e!3727003 () Bool)

(declare-fun call!505853 () Bool)

(assert (=> b!6112435 (= e!3727003 call!505853)))

(declare-fun b!6112436 () Bool)

(declare-fun c!1098235 () Bool)

(assert (=> b!6112436 (= c!1098235 ((_ is Union!16061) r!7292))))

(declare-fun e!3727006 () Bool)

(declare-fun e!3727008 () Bool)

(assert (=> b!6112436 (= e!3727006 e!3727008)))

(declare-fun bm!505847 () Bool)

(declare-fun call!505852 () Bool)

(assert (=> bm!505847 (= call!505852 (isEmpty!36289 s!2326))))

(declare-fun b!6112437 () Bool)

(declare-fun e!3727004 () Bool)

(assert (=> b!6112437 (= e!3727004 (matchRSpec!3162 (regTwo!32635 r!7292) s!2326))))

(declare-fun d!1915414 () Bool)

(declare-fun c!1098233 () Bool)

(assert (=> d!1915414 (= c!1098233 ((_ is EmptyExpr!16061) r!7292))))

(declare-fun e!3727007 () Bool)

(assert (=> d!1915414 (= (matchRSpec!3162 r!7292 s!2326) e!3727007)))

(declare-fun bm!505848 () Bool)

(declare-fun c!1098236 () Bool)

(assert (=> bm!505848 (= call!505853 (Exists!3131 (ite c!1098236 lambda!333010 lambda!333011)))))

(declare-fun b!6112438 () Bool)

(declare-fun c!1098234 () Bool)

(assert (=> b!6112438 (= c!1098234 ((_ is ElementMatch!16061) r!7292))))

(declare-fun e!3727005 () Bool)

(assert (=> b!6112438 (= e!3727005 e!3727006)))

(declare-fun b!6112439 () Bool)

(assert (=> b!6112439 (= e!3727008 e!3727003)))

(assert (=> b!6112439 (= c!1098236 ((_ is Star!16061) r!7292))))

(declare-fun b!6112440 () Bool)

(declare-fun res!2535093 () Bool)

(declare-fun e!3727009 () Bool)

(assert (=> b!6112440 (=> res!2535093 e!3727009)))

(assert (=> b!6112440 (= res!2535093 call!505852)))

(assert (=> b!6112440 (= e!3727003 e!3727009)))

(declare-fun b!6112441 () Bool)

(assert (=> b!6112441 (= e!3727008 e!3727004)))

(declare-fun res!2535095 () Bool)

(assert (=> b!6112441 (= res!2535095 (matchRSpec!3162 (regOne!32635 r!7292) s!2326))))

(assert (=> b!6112441 (=> res!2535095 e!3727004)))

(declare-fun b!6112442 () Bool)

(assert (=> b!6112442 (= e!3727006 (= s!2326 (Cons!64360 (c!1098065 r!7292) Nil!64360)))))

(declare-fun b!6112443 () Bool)

(assert (=> b!6112443 (= e!3727007 call!505852)))

(declare-fun b!6112444 () Bool)

(assert (=> b!6112444 (= e!3727007 e!3727005)))

(declare-fun res!2535094 () Bool)

(assert (=> b!6112444 (= res!2535094 (not ((_ is EmptyLang!16061) r!7292)))))

(assert (=> b!6112444 (=> (not res!2535094) (not e!3727005))))

(assert (=> b!6112445 (= e!3727009 call!505853)))

(assert (= (and d!1915414 c!1098233) b!6112443))

(assert (= (and d!1915414 (not c!1098233)) b!6112444))

(assert (= (and b!6112444 res!2535094) b!6112438))

(assert (= (and b!6112438 c!1098234) b!6112442))

(assert (= (and b!6112438 (not c!1098234)) b!6112436))

(assert (= (and b!6112436 c!1098235) b!6112441))

(assert (= (and b!6112436 (not c!1098235)) b!6112439))

(assert (= (and b!6112441 (not res!2535095)) b!6112437))

(assert (= (and b!6112439 c!1098236) b!6112440))

(assert (= (and b!6112439 (not c!1098236)) b!6112435))

(assert (= (and b!6112440 (not res!2535093)) b!6112445))

(assert (= (or b!6112445 b!6112435) bm!505848))

(assert (= (or b!6112443 b!6112440) bm!505847))

(declare-fun m!6961170 () Bool)

(assert (=> bm!505847 m!6961170))

(declare-fun m!6961172 () Bool)

(assert (=> b!6112437 m!6961172))

(declare-fun m!6961174 () Bool)

(assert (=> bm!505848 m!6961174))

(declare-fun m!6961176 () Bool)

(assert (=> b!6112441 m!6961176))

(assert (=> b!6111831 d!1915414))

(declare-fun bm!505851 () Bool)

(declare-fun call!505856 () Bool)

(assert (=> bm!505851 (= call!505856 (isEmpty!36289 s!2326))))

(declare-fun b!6112474 () Bool)

(declare-fun res!2535117 () Bool)

(declare-fun e!3727026 () Bool)

(assert (=> b!6112474 (=> res!2535117 e!3727026)))

(declare-fun e!3727027 () Bool)

(assert (=> b!6112474 (= res!2535117 e!3727027)))

(declare-fun res!2535116 () Bool)

(assert (=> b!6112474 (=> (not res!2535116) (not e!3727027))))

(declare-fun lt!2330243 () Bool)

(assert (=> b!6112474 (= res!2535116 lt!2330243)))

(declare-fun b!6112475 () Bool)

(declare-fun e!3727028 () Bool)

(assert (=> b!6112475 (= e!3727028 (not lt!2330243))))

(declare-fun b!6112476 () Bool)

(declare-fun e!3727024 () Bool)

(assert (=> b!6112476 (= e!3727024 e!3727028)))

(declare-fun c!1098243 () Bool)

(assert (=> b!6112476 (= c!1098243 ((_ is EmptyLang!16061) r!7292))))

(declare-fun d!1915416 () Bool)

(assert (=> d!1915416 e!3727024))

(declare-fun c!1098244 () Bool)

(assert (=> d!1915416 (= c!1098244 ((_ is EmptyExpr!16061) r!7292))))

(declare-fun e!3727025 () Bool)

(assert (=> d!1915416 (= lt!2330243 e!3727025)))

(declare-fun c!1098245 () Bool)

(assert (=> d!1915416 (= c!1098245 (isEmpty!36289 s!2326))))

(assert (=> d!1915416 (validRegex!7797 r!7292)))

(assert (=> d!1915416 (= (matchR!8244 r!7292 s!2326) lt!2330243)))

(declare-fun b!6112477 () Bool)

(declare-fun e!3727029 () Bool)

(assert (=> b!6112477 (= e!3727029 (not (= (head!12643 s!2326) (c!1098065 r!7292))))))

(declare-fun b!6112478 () Bool)

(declare-fun e!3727030 () Bool)

(assert (=> b!6112478 (= e!3727030 e!3727029)))

(declare-fun res!2535114 () Bool)

(assert (=> b!6112478 (=> res!2535114 e!3727029)))

(assert (=> b!6112478 (= res!2535114 call!505856)))

(declare-fun b!6112479 () Bool)

(declare-fun res!2535112 () Bool)

(assert (=> b!6112479 (=> res!2535112 e!3727026)))

(assert (=> b!6112479 (= res!2535112 (not ((_ is ElementMatch!16061) r!7292)))))

(assert (=> b!6112479 (= e!3727028 e!3727026)))

(declare-fun b!6112480 () Bool)

(declare-fun res!2535119 () Bool)

(assert (=> b!6112480 (=> res!2535119 e!3727029)))

(assert (=> b!6112480 (= res!2535119 (not (isEmpty!36289 (tail!11728 s!2326))))))

(declare-fun b!6112481 () Bool)

(assert (=> b!6112481 (= e!3727024 (= lt!2330243 call!505856))))

(declare-fun b!6112482 () Bool)

(declare-fun derivativeStep!4782 (Regex!16061 C!32392) Regex!16061)

(assert (=> b!6112482 (= e!3727025 (matchR!8244 (derivativeStep!4782 r!7292 (head!12643 s!2326)) (tail!11728 s!2326)))))

(declare-fun b!6112483 () Bool)

(assert (=> b!6112483 (= e!3727025 (nullable!6054 r!7292))))

(declare-fun b!6112484 () Bool)

(assert (=> b!6112484 (= e!3727027 (= (head!12643 s!2326) (c!1098065 r!7292)))))

(declare-fun b!6112485 () Bool)

(declare-fun res!2535115 () Bool)

(assert (=> b!6112485 (=> (not res!2535115) (not e!3727027))))

(assert (=> b!6112485 (= res!2535115 (isEmpty!36289 (tail!11728 s!2326)))))

(declare-fun b!6112486 () Bool)

(assert (=> b!6112486 (= e!3727026 e!3727030)))

(declare-fun res!2535113 () Bool)

(assert (=> b!6112486 (=> (not res!2535113) (not e!3727030))))

(assert (=> b!6112486 (= res!2535113 (not lt!2330243))))

(declare-fun b!6112487 () Bool)

(declare-fun res!2535118 () Bool)

(assert (=> b!6112487 (=> (not res!2535118) (not e!3727027))))

(assert (=> b!6112487 (= res!2535118 (not call!505856))))

(assert (= (and d!1915416 c!1098245) b!6112483))

(assert (= (and d!1915416 (not c!1098245)) b!6112482))

(assert (= (and d!1915416 c!1098244) b!6112481))

(assert (= (and d!1915416 (not c!1098244)) b!6112476))

(assert (= (and b!6112476 c!1098243) b!6112475))

(assert (= (and b!6112476 (not c!1098243)) b!6112479))

(assert (= (and b!6112479 (not res!2535112)) b!6112474))

(assert (= (and b!6112474 res!2535116) b!6112487))

(assert (= (and b!6112487 res!2535118) b!6112485))

(assert (= (and b!6112485 res!2535115) b!6112484))

(assert (= (and b!6112474 (not res!2535117)) b!6112486))

(assert (= (and b!6112486 res!2535113) b!6112478))

(assert (= (and b!6112478 (not res!2535114)) b!6112480))

(assert (= (and b!6112480 (not res!2535119)) b!6112477))

(assert (= (or b!6112481 b!6112478 b!6112487) bm!505851))

(assert (=> bm!505851 m!6961170))

(declare-fun m!6961178 () Bool)

(assert (=> b!6112483 m!6961178))

(declare-fun m!6961180 () Bool)

(assert (=> b!6112482 m!6961180))

(assert (=> b!6112482 m!6961180))

(declare-fun m!6961182 () Bool)

(assert (=> b!6112482 m!6961182))

(declare-fun m!6961184 () Bool)

(assert (=> b!6112482 m!6961184))

(assert (=> b!6112482 m!6961182))

(assert (=> b!6112482 m!6961184))

(declare-fun m!6961186 () Bool)

(assert (=> b!6112482 m!6961186))

(assert (=> b!6112484 m!6961180))

(assert (=> b!6112480 m!6961184))

(assert (=> b!6112480 m!6961184))

(declare-fun m!6961188 () Bool)

(assert (=> b!6112480 m!6961188))

(assert (=> d!1915416 m!6961170))

(assert (=> d!1915416 m!6960800))

(assert (=> b!6112485 m!6961184))

(assert (=> b!6112485 m!6961184))

(assert (=> b!6112485 m!6961188))

(assert (=> b!6112477 m!6961180))

(assert (=> b!6111831 d!1915416))

(declare-fun d!1915418 () Bool)

(assert (=> d!1915418 (= (matchR!8244 r!7292 s!2326) (matchRSpec!3162 r!7292 s!2326))))

(declare-fun lt!2330246 () Unit!157399)

(declare-fun choose!45434 (Regex!16061 List!64484) Unit!157399)

(assert (=> d!1915418 (= lt!2330246 (choose!45434 r!7292 s!2326))))

(assert (=> d!1915418 (validRegex!7797 r!7292)))

(assert (=> d!1915418 (= (mainMatchTheorem!3162 r!7292 s!2326) lt!2330246)))

(declare-fun bs!1517117 () Bool)

(assert (= bs!1517117 d!1915418))

(assert (=> bs!1517117 m!6960766))

(assert (=> bs!1517117 m!6960764))

(declare-fun m!6961190 () Bool)

(assert (=> bs!1517117 m!6961190))

(assert (=> bs!1517117 m!6960800))

(assert (=> b!6111831 d!1915418))

(declare-fun b!6112492 () Bool)

(declare-fun e!3727033 () Bool)

(declare-fun tp!1707251 () Bool)

(assert (=> b!6112492 (= e!3727033 (and tp_is_empty!41375 tp!1707251))))

(assert (=> b!6111836 (= tp!1707182 e!3727033)))

(assert (= (and b!6111836 ((_ is Cons!64360) (t!377941 s!2326))) b!6112492))

(declare-fun b!6112504 () Bool)

(declare-fun e!3727036 () Bool)

(declare-fun tp!1707262 () Bool)

(declare-fun tp!1707266 () Bool)

(assert (=> b!6112504 (= e!3727036 (and tp!1707262 tp!1707266))))

(declare-fun b!6112506 () Bool)

(declare-fun tp!1707265 () Bool)

(declare-fun tp!1707263 () Bool)

(assert (=> b!6112506 (= e!3727036 (and tp!1707265 tp!1707263))))

(declare-fun b!6112503 () Bool)

(assert (=> b!6112503 (= e!3727036 tp_is_empty!41375)))

(declare-fun b!6112505 () Bool)

(declare-fun tp!1707264 () Bool)

(assert (=> b!6112505 (= e!3727036 tp!1707264)))

(assert (=> b!6111842 (= tp!1707183 e!3727036)))

(assert (= (and b!6111842 ((_ is ElementMatch!16061) (regOne!32635 r!7292))) b!6112503))

(assert (= (and b!6111842 ((_ is Concat!24906) (regOne!32635 r!7292))) b!6112504))

(assert (= (and b!6111842 ((_ is Star!16061) (regOne!32635 r!7292))) b!6112505))

(assert (= (and b!6111842 ((_ is Union!16061) (regOne!32635 r!7292))) b!6112506))

(declare-fun b!6112508 () Bool)

(declare-fun e!3727037 () Bool)

(declare-fun tp!1707267 () Bool)

(declare-fun tp!1707271 () Bool)

(assert (=> b!6112508 (= e!3727037 (and tp!1707267 tp!1707271))))

(declare-fun b!6112510 () Bool)

(declare-fun tp!1707270 () Bool)

(declare-fun tp!1707268 () Bool)

(assert (=> b!6112510 (= e!3727037 (and tp!1707270 tp!1707268))))

(declare-fun b!6112507 () Bool)

(assert (=> b!6112507 (= e!3727037 tp_is_empty!41375)))

(declare-fun b!6112509 () Bool)

(declare-fun tp!1707269 () Bool)

(assert (=> b!6112509 (= e!3727037 tp!1707269)))

(assert (=> b!6111842 (= tp!1707188 e!3727037)))

(assert (= (and b!6111842 ((_ is ElementMatch!16061) (regTwo!32635 r!7292))) b!6112507))

(assert (= (and b!6111842 ((_ is Concat!24906) (regTwo!32635 r!7292))) b!6112508))

(assert (= (and b!6111842 ((_ is Star!16061) (regTwo!32635 r!7292))) b!6112509))

(assert (= (and b!6111842 ((_ is Union!16061) (regTwo!32635 r!7292))) b!6112510))

(declare-fun b!6112515 () Bool)

(declare-fun e!3727040 () Bool)

(declare-fun tp!1707276 () Bool)

(declare-fun tp!1707277 () Bool)

(assert (=> b!6112515 (= e!3727040 (and tp!1707276 tp!1707277))))

(assert (=> b!6111838 (= tp!1707181 e!3727040)))

(assert (= (and b!6111838 ((_ is Cons!64358) (exprs!5945 (h!70807 zl!343)))) b!6112515))

(declare-fun b!6112523 () Bool)

(declare-fun e!3727046 () Bool)

(declare-fun tp!1707282 () Bool)

(assert (=> b!6112523 (= e!3727046 tp!1707282)))

(declare-fun tp!1707283 () Bool)

(declare-fun e!3727045 () Bool)

(declare-fun b!6112522 () Bool)

(assert (=> b!6112522 (= e!3727045 (and (inv!83399 (h!70807 (t!377940 zl!343))) e!3727046 tp!1707283))))

(assert (=> b!6111829 (= tp!1707189 e!3727045)))

(assert (= b!6112522 b!6112523))

(assert (= (and b!6111829 ((_ is Cons!64359) (t!377940 zl!343))) b!6112522))

(declare-fun m!6961192 () Bool)

(assert (=> b!6112522 m!6961192))

(declare-fun condSetEmpty!41302 () Bool)

(assert (=> setNonEmpty!41296 (= condSetEmpty!41302 (= setRest!41296 ((as const (Array Context!10890 Bool)) false)))))

(declare-fun setRes!41302 () Bool)

(assert (=> setNonEmpty!41296 (= tp!1707186 setRes!41302)))

(declare-fun setIsEmpty!41302 () Bool)

(assert (=> setIsEmpty!41302 setRes!41302))

(declare-fun e!3727049 () Bool)

(declare-fun tp!1707288 () Bool)

(declare-fun setElem!41302 () Context!10890)

(declare-fun setNonEmpty!41302 () Bool)

(assert (=> setNonEmpty!41302 (= setRes!41302 (and tp!1707288 (inv!83399 setElem!41302) e!3727049))))

(declare-fun setRest!41302 () (InoxSet Context!10890))

(assert (=> setNonEmpty!41302 (= setRest!41296 ((_ map or) (store ((as const (Array Context!10890 Bool)) false) setElem!41302 true) setRest!41302))))

(declare-fun b!6112528 () Bool)

(declare-fun tp!1707289 () Bool)

(assert (=> b!6112528 (= e!3727049 tp!1707289)))

(assert (= (and setNonEmpty!41296 condSetEmpty!41302) setIsEmpty!41302))

(assert (= (and setNonEmpty!41296 (not condSetEmpty!41302)) setNonEmpty!41302))

(assert (= setNonEmpty!41302 b!6112528))

(declare-fun m!6961194 () Bool)

(assert (=> setNonEmpty!41302 m!6961194))

(declare-fun b!6112529 () Bool)

(declare-fun e!3727050 () Bool)

(declare-fun tp!1707290 () Bool)

(declare-fun tp!1707291 () Bool)

(assert (=> b!6112529 (= e!3727050 (and tp!1707290 tp!1707291))))

(assert (=> b!6111824 (= tp!1707184 e!3727050)))

(assert (= (and b!6111824 ((_ is Cons!64358) (exprs!5945 setElem!41296))) b!6112529))

(declare-fun b!6112531 () Bool)

(declare-fun e!3727051 () Bool)

(declare-fun tp!1707292 () Bool)

(declare-fun tp!1707296 () Bool)

(assert (=> b!6112531 (= e!3727051 (and tp!1707292 tp!1707296))))

(declare-fun b!6112533 () Bool)

(declare-fun tp!1707295 () Bool)

(declare-fun tp!1707293 () Bool)

(assert (=> b!6112533 (= e!3727051 (and tp!1707295 tp!1707293))))

(declare-fun b!6112530 () Bool)

(assert (=> b!6112530 (= e!3727051 tp_is_empty!41375)))

(declare-fun b!6112532 () Bool)

(declare-fun tp!1707294 () Bool)

(assert (=> b!6112532 (= e!3727051 tp!1707294)))

(assert (=> b!6111839 (= tp!1707187 e!3727051)))

(assert (= (and b!6111839 ((_ is ElementMatch!16061) (regOne!32634 r!7292))) b!6112530))

(assert (= (and b!6111839 ((_ is Concat!24906) (regOne!32634 r!7292))) b!6112531))

(assert (= (and b!6111839 ((_ is Star!16061) (regOne!32634 r!7292))) b!6112532))

(assert (= (and b!6111839 ((_ is Union!16061) (regOne!32634 r!7292))) b!6112533))

(declare-fun b!6112535 () Bool)

(declare-fun e!3727052 () Bool)

(declare-fun tp!1707297 () Bool)

(declare-fun tp!1707301 () Bool)

(assert (=> b!6112535 (= e!3727052 (and tp!1707297 tp!1707301))))

(declare-fun b!6112537 () Bool)

(declare-fun tp!1707300 () Bool)

(declare-fun tp!1707298 () Bool)

(assert (=> b!6112537 (= e!3727052 (and tp!1707300 tp!1707298))))

(declare-fun b!6112534 () Bool)

(assert (=> b!6112534 (= e!3727052 tp_is_empty!41375)))

(declare-fun b!6112536 () Bool)

(declare-fun tp!1707299 () Bool)

(assert (=> b!6112536 (= e!3727052 tp!1707299)))

(assert (=> b!6111839 (= tp!1707185 e!3727052)))

(assert (= (and b!6111839 ((_ is ElementMatch!16061) (regTwo!32634 r!7292))) b!6112534))

(assert (= (and b!6111839 ((_ is Concat!24906) (regTwo!32634 r!7292))) b!6112535))

(assert (= (and b!6111839 ((_ is Star!16061) (regTwo!32634 r!7292))) b!6112536))

(assert (= (and b!6111839 ((_ is Union!16061) (regTwo!32634 r!7292))) b!6112537))

(declare-fun b!6112539 () Bool)

(declare-fun e!3727053 () Bool)

(declare-fun tp!1707302 () Bool)

(declare-fun tp!1707306 () Bool)

(assert (=> b!6112539 (= e!3727053 (and tp!1707302 tp!1707306))))

(declare-fun b!6112541 () Bool)

(declare-fun tp!1707305 () Bool)

(declare-fun tp!1707303 () Bool)

(assert (=> b!6112541 (= e!3727053 (and tp!1707305 tp!1707303))))

(declare-fun b!6112538 () Bool)

(assert (=> b!6112538 (= e!3727053 tp_is_empty!41375)))

(declare-fun b!6112540 () Bool)

(declare-fun tp!1707304 () Bool)

(assert (=> b!6112540 (= e!3727053 tp!1707304)))

(assert (=> b!6111840 (= tp!1707190 e!3727053)))

(assert (= (and b!6111840 ((_ is ElementMatch!16061) (reg!16390 r!7292))) b!6112538))

(assert (= (and b!6111840 ((_ is Concat!24906) (reg!16390 r!7292))) b!6112539))

(assert (= (and b!6111840 ((_ is Star!16061) (reg!16390 r!7292))) b!6112540))

(assert (= (and b!6111840 ((_ is Union!16061) (reg!16390 r!7292))) b!6112541))

(declare-fun b_lambda!232799 () Bool)

(assert (= b_lambda!232793 (or b!6111832 b_lambda!232799)))

(declare-fun bs!1517118 () Bool)

(declare-fun d!1915420 () Bool)

(assert (= bs!1517118 (and d!1915420 b!6111832)))

(assert (=> bs!1517118 (= (dynLambda!25344 lambda!332953 (h!70807 zl!343)) (derivationStepZipperUp!1235 (h!70807 zl!343) (h!70808 s!2326)))))

(assert (=> bs!1517118 m!6960788))

(assert (=> d!1915336 d!1915420))

(check-sat (not d!1915336) (not b!6112480) (not b!6111922) (not b!6111937) (not d!1915306) (not b!6112536) (not b!6112127) (not b!6112506) (not bm!505797) (not b!6112523) (not b!6112510) (not bm!505795) (not b!6112437) (not b!6111938) (not b!6112009) (not d!1915378) (not bm!505801) (not bm!505798) (not b!6111923) (not bm!505848) (not b!6112363) (not b!6112102) (not setNonEmpty!41302) (not b!6112484) (not b!6112356) (not b!6112200) (not d!1915416) (not b!6112107) (not bm!505851) (not b!6112492) (not b!6112537) (not bs!1517118) (not b!6112101) (not b!6111998) (not d!1915418) (not b!6112032) (not b!6112361) (not b!6112203) (not b!6112030) (not d!1915308) (not b!6112529) (not b!6112505) (not d!1915400) (not bm!505840) (not d!1915396) (not b!6112532) (not d!1915384) (not b!6112360) (not b!6112099) (not b!6112535) (not b!6112034) (not b!6112522) (not d!1915340) (not b!6112482) (not bm!505782) tp_is_empty!41375 (not b!6112508) (not d!1915402) (not d!1915398) (not b!6112515) (not b!6112362) (not b!6112533) (not b!6112504) (not d!1915360) (not b!6112029) (not b!6112441) (not b!6112201) (not b!6112477) (not b!6112098) (not b!6112031) (not b!6112528) (not d!1915346) (not d!1915368) (not b!6112485) (not d!1915410) (not d!1915362) (not b!6112010) (not b!6112401) (not b!6112531) (not b!6112199) (not d!1915380) (not d!1915386) (not bm!505847) (not b!6112197) (not b!6112105) (not b!6112483) (not b!6112355) (not d!1915344) (not bm!505781) (not b!6112539) (not b!6112509) (not b!6112541) (not d!1915404) (not b!6112159) (not b!6112540) (not b!6112204) (not b!6112024) (not b!6112103) (not b_lambda!232799) (not b!6112198) (not b!6112033) (not bm!505841) (not d!1915408) (not d!1915356))
(check-sat)
(get-model)

(declare-fun d!1915474 () Bool)

(assert (=> d!1915474 (= (isEmpty!36289 (t!377941 s!2326)) ((_ is Nil!64360) (t!377941 s!2326)))))

(assert (=> d!1915360 d!1915474))

(declare-fun bm!505867 () Bool)

(declare-fun call!505873 () List!64482)

(declare-fun c!1098269 () Bool)

(declare-fun call!505875 () (InoxSet Context!10890))

(assert (=> bm!505867 (= call!505875 (derivationStepZipperDown!1309 (ite c!1098269 (regTwo!32635 (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343)))))))) (regOne!32634 (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343))))))))) (ite c!1098269 (ite (or c!1098114 c!1098115) lt!2330155 (Context!10891 call!505804)) (Context!10891 call!505873)) (h!70808 s!2326)))))

(declare-fun d!1915482 () Bool)

(declare-fun c!1098268 () Bool)

(assert (=> d!1915482 (= c!1098268 (and ((_ is ElementMatch!16061) (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343)))))))) (= (c!1098065 (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343)))))))) (h!70808 s!2326))))))

(declare-fun e!3727127 () (InoxSet Context!10890))

(assert (=> d!1915482 (= (derivationStepZipperDown!1309 (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343))))))) (ite (or c!1098114 c!1098115) lt!2330155 (Context!10891 call!505804)) (h!70808 s!2326)) e!3727127)))

(declare-fun b!6112648 () Bool)

(declare-fun e!3727125 () (InoxSet Context!10890))

(declare-fun call!505874 () (InoxSet Context!10890))

(assert (=> b!6112648 (= e!3727125 ((_ map or) call!505874 call!505875))))

(declare-fun bm!505868 () Bool)

(declare-fun call!505877 () (InoxSet Context!10890))

(assert (=> bm!505868 (= call!505877 call!505874)))

(declare-fun b!6112649 () Bool)

(assert (=> b!6112649 (= e!3727127 (store ((as const (Array Context!10890 Bool)) false) (ite (or c!1098114 c!1098115) lt!2330155 (Context!10891 call!505804)) true))))

(declare-fun c!1098272 () Bool)

(declare-fun c!1098270 () Bool)

(declare-fun bm!505869 () Bool)

(declare-fun call!505876 () List!64482)

(assert (=> bm!505869 (= call!505874 (derivationStepZipperDown!1309 (ite c!1098269 (regOne!32635 (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343)))))))) (ite c!1098270 (regTwo!32634 (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343)))))))) (ite c!1098272 (regOne!32634 (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343)))))))) (reg!16390 (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343))))))))))) (ite (or c!1098269 c!1098270) (ite (or c!1098114 c!1098115) lt!2330155 (Context!10891 call!505804)) (Context!10891 call!505876)) (h!70808 s!2326)))))

(declare-fun b!6112650 () Bool)

(declare-fun e!3727122 () (InoxSet Context!10890))

(assert (=> b!6112650 (= e!3727122 ((as const (Array Context!10890 Bool)) false))))

(declare-fun b!6112651 () Bool)

(declare-fun e!3727123 () (InoxSet Context!10890))

(declare-fun call!505872 () (InoxSet Context!10890))

(assert (=> b!6112651 (= e!3727123 call!505872)))

(declare-fun bm!505870 () Bool)

(assert (=> bm!505870 (= call!505873 ($colon$colon!1938 (exprs!5945 (ite (or c!1098114 c!1098115) lt!2330155 (Context!10891 call!505804))) (ite (or c!1098270 c!1098272) (regTwo!32634 (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343)))))))) (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343))))))))))))

(declare-fun b!6112652 () Bool)

(declare-fun e!3727126 () Bool)

(assert (=> b!6112652 (= e!3727126 (nullable!6054 (regOne!32634 (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343))))))))))))

(declare-fun bm!505871 () Bool)

(assert (=> bm!505871 (= call!505876 call!505873)))

(declare-fun c!1098271 () Bool)

(declare-fun b!6112653 () Bool)

(assert (=> b!6112653 (= c!1098271 ((_ is Star!16061) (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343)))))))))))

(assert (=> b!6112653 (= e!3727123 e!3727122)))

(declare-fun bm!505872 () Bool)

(assert (=> bm!505872 (= call!505872 call!505877)))

(declare-fun b!6112654 () Bool)

(declare-fun e!3727124 () (InoxSet Context!10890))

(assert (=> b!6112654 (= e!3727124 ((_ map or) call!505875 call!505877))))

(declare-fun b!6112655 () Bool)

(assert (=> b!6112655 (= e!3727122 call!505872)))

(declare-fun b!6112656 () Bool)

(assert (=> b!6112656 (= c!1098270 e!3727126)))

(declare-fun res!2535181 () Bool)

(assert (=> b!6112656 (=> (not res!2535181) (not e!3727126))))

(assert (=> b!6112656 (= res!2535181 ((_ is Concat!24906) (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343)))))))))))

(assert (=> b!6112656 (= e!3727125 e!3727124)))

(declare-fun b!6112657 () Bool)

(assert (=> b!6112657 (= e!3727124 e!3727123)))

(assert (=> b!6112657 (= c!1098272 ((_ is Concat!24906) (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343)))))))))))

(declare-fun b!6112658 () Bool)

(assert (=> b!6112658 (= e!3727127 e!3727125)))

(assert (=> b!6112658 (= c!1098269 ((_ is Union!16061) (ite c!1098114 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098115 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098117 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343)))))))))))

(assert (= (and d!1915482 c!1098268) b!6112649))

(assert (= (and d!1915482 (not c!1098268)) b!6112658))

(assert (= (and b!6112658 c!1098269) b!6112648))

(assert (= (and b!6112658 (not c!1098269)) b!6112656))

(assert (= (and b!6112656 res!2535181) b!6112652))

(assert (= (and b!6112656 c!1098270) b!6112654))

(assert (= (and b!6112656 (not c!1098270)) b!6112657))

(assert (= (and b!6112657 c!1098272) b!6112651))

(assert (= (and b!6112657 (not c!1098272)) b!6112653))

(assert (= (and b!6112653 c!1098271) b!6112655))

(assert (= (and b!6112653 (not c!1098271)) b!6112650))

(assert (= (or b!6112651 b!6112655) bm!505871))

(assert (= (or b!6112651 b!6112655) bm!505872))

(assert (= (or b!6112654 bm!505871) bm!505870))

(assert (= (or b!6112654 bm!505872) bm!505868))

(assert (= (or b!6112648 b!6112654) bm!505867))

(assert (= (or b!6112648 bm!505868) bm!505869))

(declare-fun m!6961314 () Bool)

(assert (=> b!6112652 m!6961314))

(declare-fun m!6961316 () Bool)

(assert (=> bm!505867 m!6961316))

(declare-fun m!6961318 () Bool)

(assert (=> b!6112649 m!6961318))

(declare-fun m!6961320 () Bool)

(assert (=> bm!505869 m!6961320))

(declare-fun m!6961322 () Bool)

(assert (=> bm!505870 m!6961322))

(assert (=> bm!505797 d!1915482))

(assert (=> d!1915356 d!1915474))

(declare-fun d!1915490 () Bool)

(assert (=> d!1915490 (= (isConcat!1001 lt!2330210) ((_ is Concat!24906) lt!2330210))))

(assert (=> b!6112203 d!1915490))

(assert (=> b!6112127 d!1915380))

(declare-fun bs!1517150 () Bool)

(declare-fun d!1915492 () Bool)

(assert (= bs!1517150 (and d!1915492 d!1915408)))

(declare-fun lambda!333024 () Int)

(assert (=> bs!1517150 (= lambda!333024 lambda!333004)))

(declare-fun bs!1517151 () Bool)

(assert (= bs!1517151 (and d!1915492 d!1915368)))

(assert (=> bs!1517151 (= lambda!333024 lambda!332979)))

(declare-fun bs!1517152 () Bool)

(assert (= bs!1517152 (and d!1915492 d!1915362)))

(assert (=> bs!1517152 (= lambda!333024 lambda!332976)))

(declare-fun bs!1517153 () Bool)

(assert (= bs!1517153 (and d!1915492 d!1915340)))

(assert (=> bs!1517153 (= lambda!333024 lambda!332965)))

(declare-fun bs!1517155 () Bool)

(assert (= bs!1517155 (and d!1915492 d!1915410)))

(assert (=> bs!1517155 (= lambda!333024 lambda!333005)))

(declare-fun bs!1517156 () Bool)

(assert (= bs!1517156 (and d!1915492 d!1915380)))

(assert (=> bs!1517156 (= lambda!333024 lambda!332988)))

(declare-fun lt!2330250 () List!64482)

(assert (=> d!1915492 (forall!15182 lt!2330250 lambda!333024)))

(declare-fun e!3727130 () List!64482)

(assert (=> d!1915492 (= lt!2330250 e!3727130)))

(declare-fun c!1098273 () Bool)

(assert (=> d!1915492 (= c!1098273 ((_ is Cons!64359) (t!377940 zl!343)))))

(assert (=> d!1915492 (= (unfocusZipperList!1482 (t!377940 zl!343)) lt!2330250)))

(declare-fun b!6112661 () Bool)

(assert (=> b!6112661 (= e!3727130 (Cons!64358 (generalisedConcat!1658 (exprs!5945 (h!70807 (t!377940 zl!343)))) (unfocusZipperList!1482 (t!377940 (t!377940 zl!343)))))))

(declare-fun b!6112662 () Bool)

(assert (=> b!6112662 (= e!3727130 Nil!64358)))

(assert (= (and d!1915492 c!1098273) b!6112661))

(assert (= (and d!1915492 (not c!1098273)) b!6112662))

(declare-fun m!6961328 () Bool)

(assert (=> d!1915492 m!6961328))

(declare-fun m!6961330 () Bool)

(assert (=> b!6112661 m!6961330))

(declare-fun m!6961332 () Bool)

(assert (=> b!6112661 m!6961332))

(assert (=> b!6112127 d!1915492))

(declare-fun d!1915500 () Bool)

(assert (=> d!1915500 (= (isEmpty!36285 (unfocusZipperList!1482 zl!343)) ((_ is Nil!64358) (unfocusZipperList!1482 zl!343)))))

(assert (=> b!6112098 d!1915500))

(assert (=> b!6111937 d!1915308))

(declare-fun d!1915502 () Bool)

(declare-fun res!2535194 () Bool)

(declare-fun e!3727149 () Bool)

(assert (=> d!1915502 (=> res!2535194 e!3727149)))

(assert (=> d!1915502 (= res!2535194 ((_ is Nil!64358) (exprs!5945 setElem!41296)))))

(assert (=> d!1915502 (= (forall!15182 (exprs!5945 setElem!41296) lambda!333005) e!3727149)))

(declare-fun b!6112689 () Bool)

(declare-fun e!3727150 () Bool)

(assert (=> b!6112689 (= e!3727149 e!3727150)))

(declare-fun res!2535195 () Bool)

(assert (=> b!6112689 (=> (not res!2535195) (not e!3727150))))

(declare-fun dynLambda!25345 (Int Regex!16061) Bool)

(assert (=> b!6112689 (= res!2535195 (dynLambda!25345 lambda!333005 (h!70806 (exprs!5945 setElem!41296))))))

(declare-fun b!6112690 () Bool)

(assert (=> b!6112690 (= e!3727150 (forall!15182 (t!377939 (exprs!5945 setElem!41296)) lambda!333005))))

(assert (= (and d!1915502 (not res!2535194)) b!6112689))

(assert (= (and b!6112689 res!2535195) b!6112690))

(declare-fun b_lambda!232803 () Bool)

(assert (=> (not b_lambda!232803) (not b!6112689)))

(declare-fun m!6961352 () Bool)

(assert (=> b!6112689 m!6961352))

(declare-fun m!6961354 () Bool)

(assert (=> b!6112690 m!6961354))

(assert (=> d!1915410 d!1915502))

(declare-fun d!1915506 () Bool)

(assert (=> d!1915506 (= (isEmptyExpr!1478 lt!2330210) ((_ is EmptyExpr!16061) lt!2330210))))

(assert (=> b!6112201 d!1915506))

(declare-fun d!1915508 () Bool)

(assert (=> d!1915508 (= (head!12643 s!2326) (h!70808 s!2326))))

(assert (=> b!6112477 d!1915508))

(declare-fun d!1915510 () Bool)

(declare-fun c!1098282 () Bool)

(assert (=> d!1915510 (= c!1098282 (isEmpty!36289 (tail!11728 (t!377941 s!2326))))))

(declare-fun e!3727151 () Bool)

(assert (=> d!1915510 (= (matchZipper!2073 (derivationStepZipper!2034 lt!2330152 (head!12643 (t!377941 s!2326))) (tail!11728 (t!377941 s!2326))) e!3727151)))

(declare-fun b!6112691 () Bool)

(assert (=> b!6112691 (= e!3727151 (nullableZipper!1842 (derivationStepZipper!2034 lt!2330152 (head!12643 (t!377941 s!2326)))))))

(declare-fun b!6112692 () Bool)

(assert (=> b!6112692 (= e!3727151 (matchZipper!2073 (derivationStepZipper!2034 (derivationStepZipper!2034 lt!2330152 (head!12643 (t!377941 s!2326))) (head!12643 (tail!11728 (t!377941 s!2326)))) (tail!11728 (tail!11728 (t!377941 s!2326)))))))

(assert (= (and d!1915510 c!1098282) b!6112691))

(assert (= (and d!1915510 (not c!1098282)) b!6112692))

(assert (=> d!1915510 m!6960970))

(declare-fun m!6961356 () Bool)

(assert (=> d!1915510 m!6961356))

(assert (=> b!6112691 m!6960968))

(declare-fun m!6961358 () Bool)

(assert (=> b!6112691 m!6961358))

(assert (=> b!6112692 m!6960970))

(declare-fun m!6961360 () Bool)

(assert (=> b!6112692 m!6961360))

(assert (=> b!6112692 m!6960968))

(assert (=> b!6112692 m!6961360))

(declare-fun m!6961362 () Bool)

(assert (=> b!6112692 m!6961362))

(assert (=> b!6112692 m!6960970))

(declare-fun m!6961364 () Bool)

(assert (=> b!6112692 m!6961364))

(assert (=> b!6112692 m!6961362))

(assert (=> b!6112692 m!6961364))

(declare-fun m!6961366 () Bool)

(assert (=> b!6112692 m!6961366))

(assert (=> b!6112030 d!1915510))

(declare-fun bs!1517178 () Bool)

(declare-fun d!1915512 () Bool)

(assert (= bs!1517178 (and d!1915512 b!6111832)))

(declare-fun lambda!333030 () Int)

(assert (=> bs!1517178 (= (= (head!12643 (t!377941 s!2326)) (h!70808 s!2326)) (= lambda!333030 lambda!332953))))

(assert (=> d!1915512 true))

(assert (=> d!1915512 (= (derivationStepZipper!2034 lt!2330152 (head!12643 (t!377941 s!2326))) (flatMap!1566 lt!2330152 lambda!333030))))

(declare-fun bs!1517179 () Bool)

(assert (= bs!1517179 d!1915512))

(declare-fun m!6961374 () Bool)

(assert (=> bs!1517179 m!6961374))

(assert (=> b!6112030 d!1915512))

(declare-fun d!1915516 () Bool)

(assert (=> d!1915516 (= (head!12643 (t!377941 s!2326)) (h!70808 (t!377941 s!2326)))))

(assert (=> b!6112030 d!1915516))

(declare-fun d!1915518 () Bool)

(assert (=> d!1915518 (= (tail!11728 (t!377941 s!2326)) (t!377941 (t!377941 s!2326)))))

(assert (=> b!6112030 d!1915518))

(declare-fun d!1915520 () Bool)

(declare-fun c!1098285 () Bool)

(assert (=> d!1915520 (= c!1098285 (isEmpty!36289 (tail!11728 (t!377941 s!2326))))))

(declare-fun e!3727152 () Bool)

(assert (=> d!1915520 (= (matchZipper!2073 (derivationStepZipper!2034 ((_ map or) lt!2330152 lt!2330154) (head!12643 (t!377941 s!2326))) (tail!11728 (t!377941 s!2326))) e!3727152)))

(declare-fun b!6112695 () Bool)

(assert (=> b!6112695 (= e!3727152 (nullableZipper!1842 (derivationStepZipper!2034 ((_ map or) lt!2330152 lt!2330154) (head!12643 (t!377941 s!2326)))))))

(declare-fun b!6112696 () Bool)

(assert (=> b!6112696 (= e!3727152 (matchZipper!2073 (derivationStepZipper!2034 (derivationStepZipper!2034 ((_ map or) lt!2330152 lt!2330154) (head!12643 (t!377941 s!2326))) (head!12643 (tail!11728 (t!377941 s!2326)))) (tail!11728 (tail!11728 (t!377941 s!2326)))))))

(assert (= (and d!1915520 c!1098285) b!6112695))

(assert (= (and d!1915520 (not c!1098285)) b!6112696))

(assert (=> d!1915520 m!6960970))

(assert (=> d!1915520 m!6961356))

(assert (=> b!6112695 m!6960982))

(declare-fun m!6961376 () Bool)

(assert (=> b!6112695 m!6961376))

(assert (=> b!6112696 m!6960970))

(assert (=> b!6112696 m!6961360))

(assert (=> b!6112696 m!6960982))

(assert (=> b!6112696 m!6961360))

(declare-fun m!6961378 () Bool)

(assert (=> b!6112696 m!6961378))

(assert (=> b!6112696 m!6960970))

(assert (=> b!6112696 m!6961364))

(assert (=> b!6112696 m!6961378))

(assert (=> b!6112696 m!6961364))

(declare-fun m!6961380 () Bool)

(assert (=> b!6112696 m!6961380))

(assert (=> b!6112032 d!1915520))

(declare-fun bs!1517180 () Bool)

(declare-fun d!1915522 () Bool)

(assert (= bs!1517180 (and d!1915522 b!6111832)))

(declare-fun lambda!333031 () Int)

(assert (=> bs!1517180 (= (= (head!12643 (t!377941 s!2326)) (h!70808 s!2326)) (= lambda!333031 lambda!332953))))

(declare-fun bs!1517181 () Bool)

(assert (= bs!1517181 (and d!1915522 d!1915512)))

(assert (=> bs!1517181 (= lambda!333031 lambda!333030)))

(assert (=> d!1915522 true))

(assert (=> d!1915522 (= (derivationStepZipper!2034 ((_ map or) lt!2330152 lt!2330154) (head!12643 (t!377941 s!2326))) (flatMap!1566 ((_ map or) lt!2330152 lt!2330154) lambda!333031))))

(declare-fun bs!1517182 () Bool)

(assert (= bs!1517182 d!1915522))

(declare-fun m!6961382 () Bool)

(assert (=> bs!1517182 m!6961382))

(assert (=> b!6112032 d!1915522))

(assert (=> b!6112032 d!1915516))

(assert (=> b!6112032 d!1915518))

(declare-fun d!1915524 () Bool)

(declare-fun c!1098286 () Bool)

(assert (=> d!1915524 (= c!1098286 (isEmpty!36289 (tail!11728 (t!377941 s!2326))))))

(declare-fun e!3727153 () Bool)

(assert (=> d!1915524 (= (matchZipper!2073 (derivationStepZipper!2034 lt!2330154 (head!12643 (t!377941 s!2326))) (tail!11728 (t!377941 s!2326))) e!3727153)))

(declare-fun b!6112697 () Bool)

(assert (=> b!6112697 (= e!3727153 (nullableZipper!1842 (derivationStepZipper!2034 lt!2330154 (head!12643 (t!377941 s!2326)))))))

(declare-fun b!6112698 () Bool)

(assert (=> b!6112698 (= e!3727153 (matchZipper!2073 (derivationStepZipper!2034 (derivationStepZipper!2034 lt!2330154 (head!12643 (t!377941 s!2326))) (head!12643 (tail!11728 (t!377941 s!2326)))) (tail!11728 (tail!11728 (t!377941 s!2326)))))))

(assert (= (and d!1915524 c!1098286) b!6112697))

(assert (= (and d!1915524 (not c!1098286)) b!6112698))

(assert (=> d!1915524 m!6960970))

(assert (=> d!1915524 m!6961356))

(assert (=> b!6112697 m!6960988))

(declare-fun m!6961384 () Bool)

(assert (=> b!6112697 m!6961384))

(assert (=> b!6112698 m!6960970))

(assert (=> b!6112698 m!6961360))

(assert (=> b!6112698 m!6960988))

(assert (=> b!6112698 m!6961360))

(declare-fun m!6961386 () Bool)

(assert (=> b!6112698 m!6961386))

(assert (=> b!6112698 m!6960970))

(assert (=> b!6112698 m!6961364))

(assert (=> b!6112698 m!6961386))

(assert (=> b!6112698 m!6961364))

(declare-fun m!6961388 () Bool)

(assert (=> b!6112698 m!6961388))

(assert (=> b!6112034 d!1915524))

(declare-fun bs!1517184 () Bool)

(declare-fun d!1915528 () Bool)

(assert (= bs!1517184 (and d!1915528 b!6111832)))

(declare-fun lambda!333032 () Int)

(assert (=> bs!1517184 (= (= (head!12643 (t!377941 s!2326)) (h!70808 s!2326)) (= lambda!333032 lambda!332953))))

(declare-fun bs!1517185 () Bool)

(assert (= bs!1517185 (and d!1915528 d!1915512)))

(assert (=> bs!1517185 (= lambda!333032 lambda!333030)))

(declare-fun bs!1517186 () Bool)

(assert (= bs!1517186 (and d!1915528 d!1915522)))

(assert (=> bs!1517186 (= lambda!333032 lambda!333031)))

(assert (=> d!1915528 true))

(assert (=> d!1915528 (= (derivationStepZipper!2034 lt!2330154 (head!12643 (t!377941 s!2326))) (flatMap!1566 lt!2330154 lambda!333032))))

(declare-fun bs!1517187 () Bool)

(assert (= bs!1517187 d!1915528))

(declare-fun m!6961398 () Bool)

(assert (=> bs!1517187 m!6961398))

(assert (=> b!6112034 d!1915528))

(assert (=> b!6112034 d!1915516))

(assert (=> b!6112034 d!1915518))

(declare-fun d!1915534 () Bool)

(declare-fun res!2535200 () Bool)

(declare-fun e!3727158 () Bool)

(assert (=> d!1915534 (=> res!2535200 e!3727158)))

(assert (=> d!1915534 (= res!2535200 ((_ is Nil!64358) (exprs!5945 lt!2330155)))))

(assert (=> d!1915534 (= (forall!15182 (exprs!5945 lt!2330155) lambda!332965) e!3727158)))

(declare-fun b!6112703 () Bool)

(declare-fun e!3727159 () Bool)

(assert (=> b!6112703 (= e!3727158 e!3727159)))

(declare-fun res!2535201 () Bool)

(assert (=> b!6112703 (=> (not res!2535201) (not e!3727159))))

(assert (=> b!6112703 (= res!2535201 (dynLambda!25345 lambda!332965 (h!70806 (exprs!5945 lt!2330155))))))

(declare-fun b!6112704 () Bool)

(assert (=> b!6112704 (= e!3727159 (forall!15182 (t!377939 (exprs!5945 lt!2330155)) lambda!332965))))

(assert (= (and d!1915534 (not res!2535200)) b!6112703))

(assert (= (and b!6112703 res!2535201) b!6112704))

(declare-fun b_lambda!232809 () Bool)

(assert (=> (not b_lambda!232809) (not b!6112703)))

(declare-fun m!6961400 () Bool)

(assert (=> b!6112703 m!6961400))

(declare-fun m!6961402 () Bool)

(assert (=> b!6112704 m!6961402))

(assert (=> d!1915340 d!1915534))

(declare-fun d!1915536 () Bool)

(assert (=> d!1915536 (= (isEmpty!36290 (findConcatSeparation!2366 (regOne!32634 r!7292) (regTwo!32634 r!7292) Nil!64360 s!2326 s!2326)) (not ((_ is Some!15951) (findConcatSeparation!2366 (regOne!32634 r!7292) (regTwo!32634 r!7292) Nil!64360 s!2326 s!2326))))))

(assert (=> d!1915400 d!1915536))

(declare-fun d!1915540 () Bool)

(assert (=> d!1915540 (= (isDefined!12655 lt!2330234) (not (isEmpty!36290 lt!2330234)))))

(declare-fun bs!1517188 () Bool)

(assert (= bs!1517188 d!1915540))

(declare-fun m!6961404 () Bool)

(assert (=> bs!1517188 m!6961404))

(assert (=> b!6112356 d!1915540))

(declare-fun d!1915542 () Bool)

(assert (=> d!1915542 (= (nullable!6054 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343))))) (nullableFct!2017 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343))))))))

(declare-fun bs!1517189 () Bool)

(assert (= bs!1517189 d!1915542))

(declare-fun m!6961408 () Bool)

(assert (=> bs!1517189 m!6961408))

(assert (=> b!6111998 d!1915542))

(declare-fun d!1915544 () Bool)

(assert (=> d!1915544 (= (Exists!3131 (ite c!1098236 lambda!333010 lambda!333011)) (choose!45433 (ite c!1098236 lambda!333010 lambda!333011)))))

(declare-fun bs!1517190 () Bool)

(assert (= bs!1517190 d!1915544))

(declare-fun m!6961414 () Bool)

(assert (=> bs!1517190 m!6961414))

(assert (=> bm!505848 d!1915544))

(declare-fun d!1915548 () Bool)

(assert (=> d!1915548 true))

(declare-fun setRes!41308 () Bool)

(assert (=> d!1915548 setRes!41308))

(declare-fun condSetEmpty!41308 () Bool)

(declare-fun res!2535211 () (InoxSet Context!10890))

(assert (=> d!1915548 (= condSetEmpty!41308 (= res!2535211 ((as const (Array Context!10890 Bool)) false)))))

(assert (=> d!1915548 (= (choose!45425 z!1189 lambda!332953) res!2535211)))

(declare-fun setIsEmpty!41308 () Bool)

(assert (=> setIsEmpty!41308 setRes!41308))

(declare-fun setElem!41308 () Context!10890)

(declare-fun e!3727171 () Bool)

(declare-fun tp!1707323 () Bool)

(declare-fun setNonEmpty!41308 () Bool)

(assert (=> setNonEmpty!41308 (= setRes!41308 (and tp!1707323 (inv!83399 setElem!41308) e!3727171))))

(declare-fun setRest!41308 () (InoxSet Context!10890))

(assert (=> setNonEmpty!41308 (= res!2535211 ((_ map or) (store ((as const (Array Context!10890 Bool)) false) setElem!41308 true) setRest!41308))))

(declare-fun b!6112718 () Bool)

(declare-fun tp!1707324 () Bool)

(assert (=> b!6112718 (= e!3727171 tp!1707324)))

(assert (= (and d!1915548 condSetEmpty!41308) setIsEmpty!41308))

(assert (= (and d!1915548 (not condSetEmpty!41308)) setNonEmpty!41308))

(assert (= setNonEmpty!41308 b!6112718))

(declare-fun m!6961420 () Bool)

(assert (=> setNonEmpty!41308 m!6961420))

(assert (=> d!1915306 d!1915548))

(declare-fun bs!1517191 () Bool)

(declare-fun d!1915552 () Bool)

(assert (= bs!1517191 (and d!1915552 d!1915408)))

(declare-fun lambda!333033 () Int)

(assert (=> bs!1517191 (= lambda!333033 lambda!333004)))

(declare-fun bs!1517192 () Bool)

(assert (= bs!1517192 (and d!1915552 d!1915492)))

(assert (=> bs!1517192 (= lambda!333033 lambda!333024)))

(declare-fun bs!1517193 () Bool)

(assert (= bs!1517193 (and d!1915552 d!1915368)))

(assert (=> bs!1517193 (= lambda!333033 lambda!332979)))

(declare-fun bs!1517194 () Bool)

(assert (= bs!1517194 (and d!1915552 d!1915362)))

(assert (=> bs!1517194 (= lambda!333033 lambda!332976)))

(declare-fun bs!1517195 () Bool)

(assert (= bs!1517195 (and d!1915552 d!1915340)))

(assert (=> bs!1517195 (= lambda!333033 lambda!332965)))

(declare-fun bs!1517196 () Bool)

(assert (= bs!1517196 (and d!1915552 d!1915410)))

(assert (=> bs!1517196 (= lambda!333033 lambda!333005)))

(declare-fun bs!1517197 () Bool)

(assert (= bs!1517197 (and d!1915552 d!1915380)))

(assert (=> bs!1517197 (= lambda!333033 lambda!332988)))

(declare-fun b!6112719 () Bool)

(declare-fun e!3727173 () Bool)

(declare-fun e!3727172 () Bool)

(assert (=> b!6112719 (= e!3727173 e!3727172)))

(declare-fun c!1098291 () Bool)

(assert (=> b!6112719 (= c!1098291 (isEmpty!36285 (t!377939 (unfocusZipperList!1482 zl!343))))))

(declare-fun b!6112720 () Bool)

(declare-fun e!3727176 () Bool)

(assert (=> b!6112720 (= e!3727172 e!3727176)))

(declare-fun c!1098289 () Bool)

(assert (=> b!6112720 (= c!1098289 (isEmpty!36285 (tail!11729 (t!377939 (unfocusZipperList!1482 zl!343)))))))

(declare-fun b!6112721 () Bool)

(declare-fun e!3727174 () Regex!16061)

(assert (=> b!6112721 (= e!3727174 (h!70806 (t!377939 (unfocusZipperList!1482 zl!343))))))

(declare-fun b!6112722 () Bool)

(declare-fun lt!2330252 () Regex!16061)

(assert (=> b!6112722 (= e!3727172 (isEmptyLang!1487 lt!2330252))))

(declare-fun b!6112723 () Bool)

(declare-fun e!3727175 () Regex!16061)

(assert (=> b!6112723 (= e!3727175 (Union!16061 (h!70806 (t!377939 (unfocusZipperList!1482 zl!343))) (generalisedUnion!1905 (t!377939 (t!377939 (unfocusZipperList!1482 zl!343))))))))

(declare-fun b!6112724 () Bool)

(assert (=> b!6112724 (= e!3727176 (isUnion!917 lt!2330252))))

(declare-fun b!6112725 () Bool)

(assert (=> b!6112725 (= e!3727175 EmptyLang!16061)))

(declare-fun b!6112726 () Bool)

(assert (=> b!6112726 (= e!3727176 (= lt!2330252 (head!12644 (t!377939 (unfocusZipperList!1482 zl!343)))))))

(declare-fun b!6112727 () Bool)

(assert (=> b!6112727 (= e!3727174 e!3727175)))

(declare-fun c!1098292 () Bool)

(assert (=> b!6112727 (= c!1098292 ((_ is Cons!64358) (t!377939 (unfocusZipperList!1482 zl!343))))))

(assert (=> d!1915552 e!3727173))

(declare-fun res!2535213 () Bool)

(assert (=> d!1915552 (=> (not res!2535213) (not e!3727173))))

(assert (=> d!1915552 (= res!2535213 (validRegex!7797 lt!2330252))))

(assert (=> d!1915552 (= lt!2330252 e!3727174)))

(declare-fun c!1098290 () Bool)

(declare-fun e!3727177 () Bool)

(assert (=> d!1915552 (= c!1098290 e!3727177)))

(declare-fun res!2535212 () Bool)

(assert (=> d!1915552 (=> (not res!2535212) (not e!3727177))))

(assert (=> d!1915552 (= res!2535212 ((_ is Cons!64358) (t!377939 (unfocusZipperList!1482 zl!343))))))

(assert (=> d!1915552 (forall!15182 (t!377939 (unfocusZipperList!1482 zl!343)) lambda!333033)))

(assert (=> d!1915552 (= (generalisedUnion!1905 (t!377939 (unfocusZipperList!1482 zl!343))) lt!2330252)))

(declare-fun b!6112728 () Bool)

(assert (=> b!6112728 (= e!3727177 (isEmpty!36285 (t!377939 (t!377939 (unfocusZipperList!1482 zl!343)))))))

(assert (= (and d!1915552 res!2535212) b!6112728))

(assert (= (and d!1915552 c!1098290) b!6112721))

(assert (= (and d!1915552 (not c!1098290)) b!6112727))

(assert (= (and b!6112727 c!1098292) b!6112723))

(assert (= (and b!6112727 (not c!1098292)) b!6112725))

(assert (= (and d!1915552 res!2535213) b!6112719))

(assert (= (and b!6112719 c!1098291) b!6112722))

(assert (= (and b!6112719 (not c!1098291)) b!6112720))

(assert (= (and b!6112720 c!1098289) b!6112726))

(assert (= (and b!6112720 (not c!1098289)) b!6112724))

(declare-fun m!6961422 () Bool)

(assert (=> b!6112723 m!6961422))

(declare-fun m!6961424 () Bool)

(assert (=> d!1915552 m!6961424))

(declare-fun m!6961426 () Bool)

(assert (=> d!1915552 m!6961426))

(declare-fun m!6961428 () Bool)

(assert (=> b!6112728 m!6961428))

(assert (=> b!6112719 m!6961008))

(declare-fun m!6961430 () Bool)

(assert (=> b!6112724 m!6961430))

(declare-fun m!6961432 () Bool)

(assert (=> b!6112726 m!6961432))

(declare-fun m!6961434 () Bool)

(assert (=> b!6112722 m!6961434))

(declare-fun m!6961436 () Bool)

(assert (=> b!6112720 m!6961436))

(assert (=> b!6112720 m!6961436))

(declare-fun m!6961438 () Bool)

(assert (=> b!6112720 m!6961438))

(assert (=> b!6112102 d!1915552))

(declare-fun d!1915554 () Bool)

(assert (=> d!1915554 (= (isEmpty!36289 s!2326) ((_ is Nil!64360) s!2326))))

(assert (=> bm!505851 d!1915554))

(assert (=> bm!505847 d!1915554))

(declare-fun call!505884 () List!64482)

(declare-fun c!1098294 () Bool)

(declare-fun bm!505878 () Bool)

(declare-fun call!505886 () (InoxSet Context!10890))

(assert (=> bm!505878 (= call!505886 (derivationStepZipperDown!1309 (ite c!1098294 (regTwo!32635 (h!70806 (exprs!5945 lt!2330155))) (regOne!32634 (h!70806 (exprs!5945 lt!2330155)))) (ite c!1098294 (Context!10891 (t!377939 (exprs!5945 lt!2330155))) (Context!10891 call!505884)) (h!70808 s!2326)))))

(declare-fun d!1915556 () Bool)

(declare-fun c!1098293 () Bool)

(assert (=> d!1915556 (= c!1098293 (and ((_ is ElementMatch!16061) (h!70806 (exprs!5945 lt!2330155))) (= (c!1098065 (h!70806 (exprs!5945 lt!2330155))) (h!70808 s!2326))))))

(declare-fun e!3727183 () (InoxSet Context!10890))

(assert (=> d!1915556 (= (derivationStepZipperDown!1309 (h!70806 (exprs!5945 lt!2330155)) (Context!10891 (t!377939 (exprs!5945 lt!2330155))) (h!70808 s!2326)) e!3727183)))

(declare-fun b!6112729 () Bool)

(declare-fun e!3727181 () (InoxSet Context!10890))

(declare-fun call!505885 () (InoxSet Context!10890))

(assert (=> b!6112729 (= e!3727181 ((_ map or) call!505885 call!505886))))

(declare-fun bm!505879 () Bool)

(declare-fun call!505888 () (InoxSet Context!10890))

(assert (=> bm!505879 (= call!505888 call!505885)))

(declare-fun b!6112730 () Bool)

(assert (=> b!6112730 (= e!3727183 (store ((as const (Array Context!10890 Bool)) false) (Context!10891 (t!377939 (exprs!5945 lt!2330155))) true))))

(declare-fun c!1098297 () Bool)

(declare-fun c!1098295 () Bool)

(declare-fun bm!505880 () Bool)

(declare-fun call!505887 () List!64482)

(assert (=> bm!505880 (= call!505885 (derivationStepZipperDown!1309 (ite c!1098294 (regOne!32635 (h!70806 (exprs!5945 lt!2330155))) (ite c!1098295 (regTwo!32634 (h!70806 (exprs!5945 lt!2330155))) (ite c!1098297 (regOne!32634 (h!70806 (exprs!5945 lt!2330155))) (reg!16390 (h!70806 (exprs!5945 lt!2330155)))))) (ite (or c!1098294 c!1098295) (Context!10891 (t!377939 (exprs!5945 lt!2330155))) (Context!10891 call!505887)) (h!70808 s!2326)))))

(declare-fun b!6112731 () Bool)

(declare-fun e!3727178 () (InoxSet Context!10890))

(assert (=> b!6112731 (= e!3727178 ((as const (Array Context!10890 Bool)) false))))

(declare-fun b!6112732 () Bool)

(declare-fun e!3727179 () (InoxSet Context!10890))

(declare-fun call!505883 () (InoxSet Context!10890))

(assert (=> b!6112732 (= e!3727179 call!505883)))

(declare-fun bm!505881 () Bool)

(assert (=> bm!505881 (= call!505884 ($colon$colon!1938 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 lt!2330155)))) (ite (or c!1098295 c!1098297) (regTwo!32634 (h!70806 (exprs!5945 lt!2330155))) (h!70806 (exprs!5945 lt!2330155)))))))

(declare-fun b!6112733 () Bool)

(declare-fun e!3727182 () Bool)

(assert (=> b!6112733 (= e!3727182 (nullable!6054 (regOne!32634 (h!70806 (exprs!5945 lt!2330155)))))))

(declare-fun bm!505882 () Bool)

(assert (=> bm!505882 (= call!505887 call!505884)))

(declare-fun b!6112734 () Bool)

(declare-fun c!1098296 () Bool)

(assert (=> b!6112734 (= c!1098296 ((_ is Star!16061) (h!70806 (exprs!5945 lt!2330155))))))

(assert (=> b!6112734 (= e!3727179 e!3727178)))

(declare-fun bm!505883 () Bool)

(assert (=> bm!505883 (= call!505883 call!505888)))

(declare-fun b!6112735 () Bool)

(declare-fun e!3727180 () (InoxSet Context!10890))

(assert (=> b!6112735 (= e!3727180 ((_ map or) call!505886 call!505888))))

(declare-fun b!6112736 () Bool)

(assert (=> b!6112736 (= e!3727178 call!505883)))

(declare-fun b!6112737 () Bool)

(assert (=> b!6112737 (= c!1098295 e!3727182)))

(declare-fun res!2535214 () Bool)

(assert (=> b!6112737 (=> (not res!2535214) (not e!3727182))))

(assert (=> b!6112737 (= res!2535214 ((_ is Concat!24906) (h!70806 (exprs!5945 lt!2330155))))))

(assert (=> b!6112737 (= e!3727181 e!3727180)))

(declare-fun b!6112738 () Bool)

(assert (=> b!6112738 (= e!3727180 e!3727179)))

(assert (=> b!6112738 (= c!1098297 ((_ is Concat!24906) (h!70806 (exprs!5945 lt!2330155))))))

(declare-fun b!6112739 () Bool)

(assert (=> b!6112739 (= e!3727183 e!3727181)))

(assert (=> b!6112739 (= c!1098294 ((_ is Union!16061) (h!70806 (exprs!5945 lt!2330155))))))

(assert (= (and d!1915556 c!1098293) b!6112730))

(assert (= (and d!1915556 (not c!1098293)) b!6112739))

(assert (= (and b!6112739 c!1098294) b!6112729))

(assert (= (and b!6112739 (not c!1098294)) b!6112737))

(assert (= (and b!6112737 res!2535214) b!6112733))

(assert (= (and b!6112737 c!1098295) b!6112735))

(assert (= (and b!6112737 (not c!1098295)) b!6112738))

(assert (= (and b!6112738 c!1098297) b!6112732))

(assert (= (and b!6112738 (not c!1098297)) b!6112734))

(assert (= (and b!6112734 c!1098296) b!6112736))

(assert (= (and b!6112734 (not c!1098296)) b!6112731))

(assert (= (or b!6112732 b!6112736) bm!505882))

(assert (= (or b!6112732 b!6112736) bm!505883))

(assert (= (or b!6112735 bm!505882) bm!505881))

(assert (= (or b!6112735 bm!505883) bm!505879))

(assert (= (or b!6112729 b!6112735) bm!505878))

(assert (= (or b!6112729 bm!505879) bm!505880))

(declare-fun m!6961440 () Bool)

(assert (=> b!6112733 m!6961440))

(declare-fun m!6961442 () Bool)

(assert (=> bm!505878 m!6961442))

(declare-fun m!6961444 () Bool)

(assert (=> b!6112730 m!6961444))

(declare-fun m!6961446 () Bool)

(assert (=> bm!505880 m!6961446))

(declare-fun m!6961448 () Bool)

(assert (=> bm!505881 m!6961448))

(assert (=> bm!505801 d!1915556))

(declare-fun d!1915558 () Bool)

(assert (=> d!1915558 true))

(assert (=> d!1915558 true))

(declare-fun res!2535221 () Bool)

(assert (=> d!1915558 (= (choose!45433 lambda!332951) res!2535221)))

(assert (=> d!1915402 d!1915558))

(declare-fun d!1915560 () Bool)

(assert (=> d!1915560 (= (nullable!6054 r!7292) (nullableFct!2017 r!7292))))

(declare-fun bs!1517198 () Bool)

(assert (= bs!1517198 d!1915560))

(declare-fun m!6961450 () Bool)

(assert (=> bs!1517198 m!6961450))

(assert (=> b!6112483 d!1915560))

(declare-fun b!6112767 () Bool)

(declare-fun res!2535228 () Bool)

(declare-fun e!3727198 () Bool)

(assert (=> b!6112767 (=> (not res!2535228) (not e!3727198))))

(declare-fun lt!2330255 () List!64484)

(declare-fun size!40205 (List!64484) Int)

(assert (=> b!6112767 (= res!2535228 (= (size!40205 lt!2330255) (+ (size!40205 (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360))) (size!40205 (t!377941 s!2326)))))))

(declare-fun b!6112765 () Bool)

(declare-fun e!3727197 () List!64484)

(assert (=> b!6112765 (= e!3727197 (t!377941 s!2326))))

(declare-fun d!1915562 () Bool)

(assert (=> d!1915562 e!3727198))

(declare-fun res!2535227 () Bool)

(assert (=> d!1915562 (=> (not res!2535227) (not e!3727198))))

(declare-fun content!11948 (List!64484) (InoxSet C!32392))

(assert (=> d!1915562 (= res!2535227 (= (content!11948 lt!2330255) ((_ map or) (content!11948 (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360))) (content!11948 (t!377941 s!2326)))))))

(assert (=> d!1915562 (= lt!2330255 e!3727197)))

(declare-fun c!1098306 () Bool)

(assert (=> d!1915562 (= c!1098306 ((_ is Nil!64360) (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360))))))

(assert (=> d!1915562 (= (++!14148 (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360)) (t!377941 s!2326)) lt!2330255)))

(declare-fun b!6112768 () Bool)

(assert (=> b!6112768 (= e!3727198 (or (not (= (t!377941 s!2326) Nil!64360)) (= lt!2330255 (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360)))))))

(declare-fun b!6112766 () Bool)

(assert (=> b!6112766 (= e!3727197 (Cons!64360 (h!70808 (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360))) (++!14148 (t!377941 (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360))) (t!377941 s!2326))))))

(assert (= (and d!1915562 c!1098306) b!6112765))

(assert (= (and d!1915562 (not c!1098306)) b!6112766))

(assert (= (and d!1915562 res!2535227) b!6112767))

(assert (= (and b!6112767 res!2535228) b!6112768))

(declare-fun m!6961466 () Bool)

(assert (=> b!6112767 m!6961466))

(assert (=> b!6112767 m!6961134))

(declare-fun m!6961468 () Bool)

(assert (=> b!6112767 m!6961468))

(declare-fun m!6961470 () Bool)

(assert (=> b!6112767 m!6961470))

(declare-fun m!6961472 () Bool)

(assert (=> d!1915562 m!6961472))

(assert (=> d!1915562 m!6961134))

(declare-fun m!6961476 () Bool)

(assert (=> d!1915562 m!6961476))

(declare-fun m!6961478 () Bool)

(assert (=> d!1915562 m!6961478))

(declare-fun m!6961480 () Bool)

(assert (=> b!6112766 m!6961480))

(assert (=> b!6112362 d!1915562))

(declare-fun b!6112771 () Bool)

(declare-fun res!2535230 () Bool)

(declare-fun e!3727200 () Bool)

(assert (=> b!6112771 (=> (not res!2535230) (not e!3727200))))

(declare-fun lt!2330256 () List!64484)

(assert (=> b!6112771 (= res!2535230 (= (size!40205 lt!2330256) (+ (size!40205 Nil!64360) (size!40205 (Cons!64360 (h!70808 s!2326) Nil!64360)))))))

(declare-fun b!6112769 () Bool)

(declare-fun e!3727199 () List!64484)

(assert (=> b!6112769 (= e!3727199 (Cons!64360 (h!70808 s!2326) Nil!64360))))

(declare-fun d!1915572 () Bool)

(assert (=> d!1915572 e!3727200))

(declare-fun res!2535229 () Bool)

(assert (=> d!1915572 (=> (not res!2535229) (not e!3727200))))

(assert (=> d!1915572 (= res!2535229 (= (content!11948 lt!2330256) ((_ map or) (content!11948 Nil!64360) (content!11948 (Cons!64360 (h!70808 s!2326) Nil!64360)))))))

(assert (=> d!1915572 (= lt!2330256 e!3727199)))

(declare-fun c!1098307 () Bool)

(assert (=> d!1915572 (= c!1098307 ((_ is Nil!64360) Nil!64360))))

(assert (=> d!1915572 (= (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360)) lt!2330256)))

(declare-fun b!6112772 () Bool)

(assert (=> b!6112772 (= e!3727200 (or (not (= (Cons!64360 (h!70808 s!2326) Nil!64360) Nil!64360)) (= lt!2330256 Nil!64360)))))

(declare-fun b!6112770 () Bool)

(assert (=> b!6112770 (= e!3727199 (Cons!64360 (h!70808 Nil!64360) (++!14148 (t!377941 Nil!64360) (Cons!64360 (h!70808 s!2326) Nil!64360))))))

(assert (= (and d!1915572 c!1098307) b!6112769))

(assert (= (and d!1915572 (not c!1098307)) b!6112770))

(assert (= (and d!1915572 res!2535229) b!6112771))

(assert (= (and b!6112771 res!2535230) b!6112772))

(declare-fun m!6961488 () Bool)

(assert (=> b!6112771 m!6961488))

(declare-fun m!6961490 () Bool)

(assert (=> b!6112771 m!6961490))

(declare-fun m!6961492 () Bool)

(assert (=> b!6112771 m!6961492))

(declare-fun m!6961494 () Bool)

(assert (=> d!1915572 m!6961494))

(declare-fun m!6961496 () Bool)

(assert (=> d!1915572 m!6961496))

(declare-fun m!6961498 () Bool)

(assert (=> d!1915572 m!6961498))

(declare-fun m!6961500 () Bool)

(assert (=> b!6112770 m!6961500))

(assert (=> b!6112362 d!1915572))

(declare-fun d!1915576 () Bool)

(assert (=> d!1915576 (= (++!14148 (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360)) (t!377941 s!2326)) s!2326)))

(declare-fun lt!2330259 () Unit!157399)

(declare-fun choose!45435 (List!64484 C!32392 List!64484 List!64484) Unit!157399)

(assert (=> d!1915576 (= lt!2330259 (choose!45435 Nil!64360 (h!70808 s!2326) (t!377941 s!2326) s!2326))))

(assert (=> d!1915576 (= (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) (t!377941 s!2326))) s!2326)))

(assert (=> d!1915576 (= (lemmaMoveElementToOtherListKeepsConcatEq!2243 Nil!64360 (h!70808 s!2326) (t!377941 s!2326) s!2326) lt!2330259)))

(declare-fun bs!1517214 () Bool)

(assert (= bs!1517214 d!1915576))

(assert (=> bs!1517214 m!6961134))

(assert (=> bs!1517214 m!6961134))

(assert (=> bs!1517214 m!6961136))

(declare-fun m!6961504 () Bool)

(assert (=> bs!1517214 m!6961504))

(declare-fun m!6961506 () Bool)

(assert (=> bs!1517214 m!6961506))

(assert (=> b!6112362 d!1915576))

(declare-fun b!6112784 () Bool)

(declare-fun res!2535235 () Bool)

(declare-fun e!3727207 () Bool)

(assert (=> b!6112784 (=> (not res!2535235) (not e!3727207))))

(declare-fun lt!2330262 () Option!15952)

(assert (=> b!6112784 (= res!2535235 (matchR!8244 (regOne!32634 r!7292) (_1!36343 (get!22194 lt!2330262))))))

(declare-fun b!6112785 () Bool)

(declare-fun e!3727210 () Bool)

(assert (=> b!6112785 (= e!3727210 (not (isDefined!12655 lt!2330262)))))

(declare-fun b!6112786 () Bool)

(declare-fun e!3727208 () Option!15952)

(declare-fun e!3727209 () Option!15952)

(assert (=> b!6112786 (= e!3727208 e!3727209)))

(declare-fun c!1098316 () Bool)

(assert (=> b!6112786 (= c!1098316 ((_ is Nil!64360) (t!377941 s!2326)))))

(declare-fun d!1915584 () Bool)

(assert (=> d!1915584 e!3727210))

(declare-fun res!2535232 () Bool)

(assert (=> d!1915584 (=> res!2535232 e!3727210)))

(assert (=> d!1915584 (= res!2535232 e!3727207)))

(declare-fun res!2535233 () Bool)

(assert (=> d!1915584 (=> (not res!2535233) (not e!3727207))))

(assert (=> d!1915584 (= res!2535233 (isDefined!12655 lt!2330262))))

(assert (=> d!1915584 (= lt!2330262 e!3727208)))

(declare-fun c!1098315 () Bool)

(declare-fun e!3727211 () Bool)

(assert (=> d!1915584 (= c!1098315 e!3727211)))

(declare-fun res!2535236 () Bool)

(assert (=> d!1915584 (=> (not res!2535236) (not e!3727211))))

(assert (=> d!1915584 (= res!2535236 (matchR!8244 (regOne!32634 r!7292) (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360))))))

(assert (=> d!1915584 (validRegex!7797 (regOne!32634 r!7292))))

(assert (=> d!1915584 (= (findConcatSeparation!2366 (regOne!32634 r!7292) (regTwo!32634 r!7292) (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360)) (t!377941 s!2326) s!2326) lt!2330262)))

(declare-fun b!6112787 () Bool)

(assert (=> b!6112787 (= e!3727209 None!15951)))

(declare-fun b!6112788 () Bool)

(assert (=> b!6112788 (= e!3727208 (Some!15951 (tuple2!66081 (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360)) (t!377941 s!2326))))))

(declare-fun b!6112789 () Bool)

(assert (=> b!6112789 (= e!3727207 (= (++!14148 (_1!36343 (get!22194 lt!2330262)) (_2!36343 (get!22194 lt!2330262))) s!2326))))

(declare-fun b!6112790 () Bool)

(declare-fun res!2535234 () Bool)

(assert (=> b!6112790 (=> (not res!2535234) (not e!3727207))))

(assert (=> b!6112790 (= res!2535234 (matchR!8244 (regTwo!32634 r!7292) (_2!36343 (get!22194 lt!2330262))))))

(declare-fun b!6112791 () Bool)

(declare-fun lt!2330260 () Unit!157399)

(declare-fun lt!2330261 () Unit!157399)

(assert (=> b!6112791 (= lt!2330260 lt!2330261)))

(assert (=> b!6112791 (= (++!14148 (++!14148 (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360)) (Cons!64360 (h!70808 (t!377941 s!2326)) Nil!64360)) (t!377941 (t!377941 s!2326))) s!2326)))

(assert (=> b!6112791 (= lt!2330261 (lemmaMoveElementToOtherListKeepsConcatEq!2243 (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360)) (h!70808 (t!377941 s!2326)) (t!377941 (t!377941 s!2326)) s!2326))))

(assert (=> b!6112791 (= e!3727209 (findConcatSeparation!2366 (regOne!32634 r!7292) (regTwo!32634 r!7292) (++!14148 (++!14148 Nil!64360 (Cons!64360 (h!70808 s!2326) Nil!64360)) (Cons!64360 (h!70808 (t!377941 s!2326)) Nil!64360)) (t!377941 (t!377941 s!2326)) s!2326))))

(declare-fun b!6112792 () Bool)

(assert (=> b!6112792 (= e!3727211 (matchR!8244 (regTwo!32634 r!7292) (t!377941 s!2326)))))

(assert (= (and d!1915584 res!2535236) b!6112792))

(assert (= (and d!1915584 c!1098315) b!6112788))

(assert (= (and d!1915584 (not c!1098315)) b!6112786))

(assert (= (and b!6112786 c!1098316) b!6112787))

(assert (= (and b!6112786 (not c!1098316)) b!6112791))

(assert (= (and d!1915584 res!2535233) b!6112784))

(assert (= (and b!6112784 res!2535235) b!6112790))

(assert (= (and b!6112790 res!2535234) b!6112789))

(assert (= (and d!1915584 (not res!2535232)) b!6112785))

(declare-fun m!6961516 () Bool)

(assert (=> b!6112792 m!6961516))

(declare-fun m!6961518 () Bool)

(assert (=> b!6112790 m!6961518))

(declare-fun m!6961520 () Bool)

(assert (=> b!6112790 m!6961520))

(assert (=> b!6112784 m!6961518))

(declare-fun m!6961522 () Bool)

(assert (=> b!6112784 m!6961522))

(declare-fun m!6961524 () Bool)

(assert (=> d!1915584 m!6961524))

(assert (=> d!1915584 m!6961134))

(declare-fun m!6961526 () Bool)

(assert (=> d!1915584 m!6961526))

(assert (=> d!1915584 m!6961132))

(assert (=> b!6112785 m!6961524))

(assert (=> b!6112791 m!6961134))

(declare-fun m!6961528 () Bool)

(assert (=> b!6112791 m!6961528))

(assert (=> b!6112791 m!6961528))

(declare-fun m!6961532 () Bool)

(assert (=> b!6112791 m!6961532))

(assert (=> b!6112791 m!6961134))

(declare-fun m!6961534 () Bool)

(assert (=> b!6112791 m!6961534))

(assert (=> b!6112791 m!6961528))

(declare-fun m!6961536 () Bool)

(assert (=> b!6112791 m!6961536))

(assert (=> b!6112789 m!6961518))

(declare-fun m!6961540 () Bool)

(assert (=> b!6112789 m!6961540))

(assert (=> b!6112362 d!1915584))

(assert (=> d!1915344 d!1915356))

(assert (=> d!1915344 d!1915346))

(declare-fun e!3727231 () Bool)

(declare-fun d!1915588 () Bool)

(assert (=> d!1915588 (= (matchZipper!2073 ((_ map or) lt!2330152 lt!2330154) (t!377941 s!2326)) e!3727231)))

(declare-fun res!2535249 () Bool)

(assert (=> d!1915588 (=> res!2535249 e!3727231)))

(assert (=> d!1915588 (= res!2535249 (matchZipper!2073 lt!2330152 (t!377941 s!2326)))))

(assert (=> d!1915588 true))

(declare-fun _$48!1572 () Unit!157399)

(assert (=> d!1915588 (= (choose!45428 lt!2330152 lt!2330154 (t!377941 s!2326)) _$48!1572)))

(declare-fun b!6112819 () Bool)

(assert (=> b!6112819 (= e!3727231 (matchZipper!2073 lt!2330154 (t!377941 s!2326)))))

(assert (= (and d!1915588 (not res!2535249)) b!6112819))

(assert (=> d!1915588 m!6960762))

(assert (=> d!1915588 m!6960760))

(assert (=> b!6112819 m!6960772))

(assert (=> d!1915344 d!1915588))

(assert (=> d!1915416 d!1915554))

(assert (=> d!1915416 d!1915412))

(declare-fun d!1915598 () Bool)

(assert (=> d!1915598 (= (Exists!3131 lambda!333002) (choose!45433 lambda!333002))))

(declare-fun bs!1517215 () Bool)

(assert (= bs!1517215 d!1915598))

(declare-fun m!6961562 () Bool)

(assert (=> bs!1517215 m!6961562))

(assert (=> d!1915398 d!1915598))

(declare-fun d!1915600 () Bool)

(assert (=> d!1915600 (= (Exists!3131 lambda!333003) (choose!45433 lambda!333003))))

(declare-fun bs!1517216 () Bool)

(assert (= bs!1517216 d!1915600))

(declare-fun m!6961564 () Bool)

(assert (=> bs!1517216 m!6961564))

(assert (=> d!1915398 d!1915600))

(declare-fun bs!1517226 () Bool)

(declare-fun d!1915602 () Bool)

(assert (= bs!1517226 (and d!1915602 b!6112445)))

(declare-fun lambda!333046 () Int)

(assert (=> bs!1517226 (not (= lambda!333046 lambda!333010))))

(declare-fun bs!1517227 () Bool)

(assert (= bs!1517227 (and d!1915602 b!6111837)))

(assert (=> bs!1517227 (not (= lambda!333046 lambda!332952))))

(declare-fun bs!1517228 () Bool)

(assert (= bs!1517228 (and d!1915602 d!1915398)))

(assert (=> bs!1517228 (not (= lambda!333046 lambda!333003))))

(declare-fun bs!1517229 () Bool)

(assert (= bs!1517229 (and d!1915602 b!6112435)))

(assert (=> bs!1517229 (not (= lambda!333046 lambda!333011))))

(declare-fun bs!1517230 () Bool)

(assert (= bs!1517230 (and d!1915602 d!1915396)))

(assert (=> bs!1517230 (= lambda!333046 lambda!332997)))

(assert (=> bs!1517228 (= lambda!333046 lambda!333002)))

(assert (=> bs!1517227 (= lambda!333046 lambda!332951)))

(assert (=> d!1915602 true))

(assert (=> d!1915602 true))

(assert (=> d!1915602 true))

(declare-fun bs!1517231 () Bool)

(assert (= bs!1517231 d!1915602))

(declare-fun lambda!333047 () Int)

(assert (=> bs!1517231 (not (= lambda!333047 lambda!333046))))

(assert (=> bs!1517226 (not (= lambda!333047 lambda!333010))))

(assert (=> bs!1517227 (= lambda!333047 lambda!332952)))

(assert (=> bs!1517228 (= lambda!333047 lambda!333003)))

(assert (=> bs!1517229 (= lambda!333047 lambda!333011)))

(assert (=> bs!1517230 (not (= lambda!333047 lambda!332997))))

(assert (=> bs!1517228 (not (= lambda!333047 lambda!333002))))

(assert (=> bs!1517227 (not (= lambda!333047 lambda!332951))))

(assert (=> d!1915602 true))

(assert (=> d!1915602 true))

(assert (=> d!1915602 true))

(assert (=> d!1915602 (= (Exists!3131 lambda!333046) (Exists!3131 lambda!333047))))

(assert (=> d!1915602 true))

(declare-fun _$90!1794 () Unit!157399)

(assert (=> d!1915602 (= (choose!45432 (regOne!32634 r!7292) (regTwo!32634 r!7292) s!2326) _$90!1794)))

(declare-fun m!6961608 () Bool)

(assert (=> bs!1517231 m!6961608))

(declare-fun m!6961610 () Bool)

(assert (=> bs!1517231 m!6961610))

(assert (=> d!1915398 d!1915602))

(declare-fun d!1915616 () Bool)

(declare-fun res!2535280 () Bool)

(declare-fun e!3727266 () Bool)

(assert (=> d!1915616 (=> res!2535280 e!3727266)))

(assert (=> d!1915616 (= res!2535280 ((_ is ElementMatch!16061) (regOne!32634 r!7292)))))

(assert (=> d!1915616 (= (validRegex!7797 (regOne!32634 r!7292)) e!3727266)))

(declare-fun c!1098340 () Bool)

(declare-fun call!505917 () Bool)

(declare-fun c!1098339 () Bool)

(declare-fun bm!505912 () Bool)

(assert (=> bm!505912 (= call!505917 (validRegex!7797 (ite c!1098339 (reg!16390 (regOne!32634 r!7292)) (ite c!1098340 (regOne!32635 (regOne!32634 r!7292)) (regOne!32634 (regOne!32634 r!7292))))))))

(declare-fun b!6112878 () Bool)

(declare-fun e!3727270 () Bool)

(declare-fun e!3727267 () Bool)

(assert (=> b!6112878 (= e!3727270 e!3727267)))

(declare-fun res!2535279 () Bool)

(assert (=> b!6112878 (=> (not res!2535279) (not e!3727267))))

(declare-fun call!505919 () Bool)

(assert (=> b!6112878 (= res!2535279 call!505919)))

(declare-fun b!6112879 () Bool)

(declare-fun res!2535281 () Bool)

(assert (=> b!6112879 (=> res!2535281 e!3727270)))

(assert (=> b!6112879 (= res!2535281 (not ((_ is Concat!24906) (regOne!32634 r!7292))))))

(declare-fun e!3727264 () Bool)

(assert (=> b!6112879 (= e!3727264 e!3727270)))

(declare-fun b!6112880 () Bool)

(declare-fun e!3727269 () Bool)

(assert (=> b!6112880 (= e!3727269 call!505917)))

(declare-fun bm!505913 () Bool)

(declare-fun call!505918 () Bool)

(assert (=> bm!505913 (= call!505918 (validRegex!7797 (ite c!1098340 (regTwo!32635 (regOne!32634 r!7292)) (regTwo!32634 (regOne!32634 r!7292)))))))

(declare-fun b!6112881 () Bool)

(declare-fun res!2535282 () Bool)

(declare-fun e!3727265 () Bool)

(assert (=> b!6112881 (=> (not res!2535282) (not e!3727265))))

(assert (=> b!6112881 (= res!2535282 call!505919)))

(assert (=> b!6112881 (= e!3727264 e!3727265)))

(declare-fun bm!505914 () Bool)

(assert (=> bm!505914 (= call!505919 call!505917)))

(declare-fun b!6112882 () Bool)

(assert (=> b!6112882 (= e!3727267 call!505918)))

(declare-fun b!6112883 () Bool)

(declare-fun e!3727268 () Bool)

(assert (=> b!6112883 (= e!3727268 e!3727264)))

(assert (=> b!6112883 (= c!1098340 ((_ is Union!16061) (regOne!32634 r!7292)))))

(declare-fun b!6112884 () Bool)

(assert (=> b!6112884 (= e!3727266 e!3727268)))

(assert (=> b!6112884 (= c!1098339 ((_ is Star!16061) (regOne!32634 r!7292)))))

(declare-fun b!6112885 () Bool)

(assert (=> b!6112885 (= e!3727268 e!3727269)))

(declare-fun res!2535278 () Bool)

(assert (=> b!6112885 (= res!2535278 (not (nullable!6054 (reg!16390 (regOne!32634 r!7292)))))))

(assert (=> b!6112885 (=> (not res!2535278) (not e!3727269))))

(declare-fun b!6112886 () Bool)

(assert (=> b!6112886 (= e!3727265 call!505918)))

(assert (= (and d!1915616 (not res!2535280)) b!6112884))

(assert (= (and b!6112884 c!1098339) b!6112885))

(assert (= (and b!6112884 (not c!1098339)) b!6112883))

(assert (= (and b!6112885 res!2535278) b!6112880))

(assert (= (and b!6112883 c!1098340) b!6112881))

(assert (= (and b!6112883 (not c!1098340)) b!6112879))

(assert (= (and b!6112881 res!2535282) b!6112886))

(assert (= (and b!6112879 (not res!2535281)) b!6112878))

(assert (= (and b!6112878 res!2535279) b!6112882))

(assert (= (or b!6112886 b!6112882) bm!505913))

(assert (= (or b!6112881 b!6112878) bm!505914))

(assert (= (or b!6112880 bm!505914) bm!505912))

(declare-fun m!6961618 () Bool)

(assert (=> bm!505912 m!6961618))

(declare-fun m!6961620 () Bool)

(assert (=> bm!505913 m!6961620))

(declare-fun m!6961622 () Bool)

(assert (=> b!6112885 m!6961622))

(assert (=> d!1915398 d!1915616))

(declare-fun b!6112891 () Bool)

(declare-fun res!2535284 () Bool)

(declare-fun e!3727273 () Bool)

(assert (=> b!6112891 (=> (not res!2535284) (not e!3727273))))

(declare-fun lt!2330269 () List!64484)

(assert (=> b!6112891 (= res!2535284 (= (size!40205 lt!2330269) (+ (size!40205 (_1!36343 (get!22194 lt!2330234))) (size!40205 (_2!36343 (get!22194 lt!2330234))))))))

(declare-fun b!6112889 () Bool)

(declare-fun e!3727272 () List!64484)

(assert (=> b!6112889 (= e!3727272 (_2!36343 (get!22194 lt!2330234)))))

(declare-fun d!1915622 () Bool)

(assert (=> d!1915622 e!3727273))

(declare-fun res!2535283 () Bool)

(assert (=> d!1915622 (=> (not res!2535283) (not e!3727273))))

(assert (=> d!1915622 (= res!2535283 (= (content!11948 lt!2330269) ((_ map or) (content!11948 (_1!36343 (get!22194 lt!2330234))) (content!11948 (_2!36343 (get!22194 lt!2330234))))))))

(assert (=> d!1915622 (= lt!2330269 e!3727272)))

(declare-fun c!1098342 () Bool)

(assert (=> d!1915622 (= c!1098342 ((_ is Nil!64360) (_1!36343 (get!22194 lt!2330234))))))

(assert (=> d!1915622 (= (++!14148 (_1!36343 (get!22194 lt!2330234)) (_2!36343 (get!22194 lt!2330234))) lt!2330269)))

(declare-fun b!6112892 () Bool)

(assert (=> b!6112892 (= e!3727273 (or (not (= (_2!36343 (get!22194 lt!2330234)) Nil!64360)) (= lt!2330269 (_1!36343 (get!22194 lt!2330234)))))))

(declare-fun b!6112890 () Bool)

(assert (=> b!6112890 (= e!3727272 (Cons!64360 (h!70808 (_1!36343 (get!22194 lt!2330234))) (++!14148 (t!377941 (_1!36343 (get!22194 lt!2330234))) (_2!36343 (get!22194 lt!2330234)))))))

(assert (= (and d!1915622 c!1098342) b!6112889))

(assert (= (and d!1915622 (not c!1098342)) b!6112890))

(assert (= (and d!1915622 res!2535283) b!6112891))

(assert (= (and b!6112891 res!2535284) b!6112892))

(declare-fun m!6961624 () Bool)

(assert (=> b!6112891 m!6961624))

(declare-fun m!6961626 () Bool)

(assert (=> b!6112891 m!6961626))

(declare-fun m!6961628 () Bool)

(assert (=> b!6112891 m!6961628))

(declare-fun m!6961630 () Bool)

(assert (=> d!1915622 m!6961630))

(declare-fun m!6961632 () Bool)

(assert (=> d!1915622 m!6961632))

(declare-fun m!6961634 () Bool)

(assert (=> d!1915622 m!6961634))

(declare-fun m!6961636 () Bool)

(assert (=> b!6112890 m!6961636))

(assert (=> b!6112360 d!1915622))

(declare-fun d!1915624 () Bool)

(assert (=> d!1915624 (= (get!22194 lt!2330234) (v!52086 lt!2330234))))

(assert (=> b!6112360 d!1915624))

(declare-fun bs!1517243 () Bool)

(declare-fun b!6112912 () Bool)

(assert (= bs!1517243 (and b!6112912 d!1915602)))

(declare-fun lambda!333049 () Int)

(assert (=> bs!1517243 (not (= lambda!333049 lambda!333046))))

(assert (=> bs!1517243 (not (= lambda!333049 lambda!333047))))

(declare-fun bs!1517244 () Bool)

(assert (= bs!1517244 (and b!6112912 b!6112445)))

(assert (=> bs!1517244 (= (and (= (reg!16390 (regOne!32635 r!7292)) (reg!16390 r!7292)) (= (regOne!32635 r!7292) r!7292)) (= lambda!333049 lambda!333010))))

(declare-fun bs!1517245 () Bool)

(assert (= bs!1517245 (and b!6112912 b!6111837)))

(assert (=> bs!1517245 (not (= lambda!333049 lambda!332952))))

(declare-fun bs!1517246 () Bool)

(assert (= bs!1517246 (and b!6112912 d!1915398)))

(assert (=> bs!1517246 (not (= lambda!333049 lambda!333003))))

(declare-fun bs!1517247 () Bool)

(assert (= bs!1517247 (and b!6112912 b!6112435)))

(assert (=> bs!1517247 (not (= lambda!333049 lambda!333011))))

(declare-fun bs!1517248 () Bool)

(assert (= bs!1517248 (and b!6112912 d!1915396)))

(assert (=> bs!1517248 (not (= lambda!333049 lambda!332997))))

(assert (=> bs!1517246 (not (= lambda!333049 lambda!333002))))

(assert (=> bs!1517245 (not (= lambda!333049 lambda!332951))))

(assert (=> b!6112912 true))

(assert (=> b!6112912 true))

(declare-fun bs!1517249 () Bool)

(declare-fun b!6112902 () Bool)

(assert (= bs!1517249 (and b!6112902 d!1915602)))

(declare-fun lambda!333050 () Int)

(assert (=> bs!1517249 (not (= lambda!333050 lambda!333046))))

(assert (=> bs!1517249 (= (and (= (regOne!32634 (regOne!32635 r!7292)) (regOne!32634 r!7292)) (= (regTwo!32634 (regOne!32635 r!7292)) (regTwo!32634 r!7292))) (= lambda!333050 lambda!333047))))

(declare-fun bs!1517252 () Bool)

(assert (= bs!1517252 (and b!6112902 b!6112445)))

(assert (=> bs!1517252 (not (= lambda!333050 lambda!333010))))

(declare-fun bs!1517254 () Bool)

(assert (= bs!1517254 (and b!6112902 b!6111837)))

(assert (=> bs!1517254 (= (and (= (regOne!32634 (regOne!32635 r!7292)) (regOne!32634 r!7292)) (= (regTwo!32634 (regOne!32635 r!7292)) (regTwo!32634 r!7292))) (= lambda!333050 lambda!332952))))

(declare-fun bs!1517256 () Bool)

(assert (= bs!1517256 (and b!6112902 d!1915398)))

(assert (=> bs!1517256 (= (and (= (regOne!32634 (regOne!32635 r!7292)) (regOne!32634 r!7292)) (= (regTwo!32634 (regOne!32635 r!7292)) (regTwo!32634 r!7292))) (= lambda!333050 lambda!333003))))

(declare-fun bs!1517258 () Bool)

(assert (= bs!1517258 (and b!6112902 b!6112435)))

(assert (=> bs!1517258 (= (and (= (regOne!32634 (regOne!32635 r!7292)) (regOne!32634 r!7292)) (= (regTwo!32634 (regOne!32635 r!7292)) (regTwo!32634 r!7292))) (= lambda!333050 lambda!333011))))

(declare-fun bs!1517259 () Bool)

(assert (= bs!1517259 (and b!6112902 d!1915396)))

(assert (=> bs!1517259 (not (= lambda!333050 lambda!332997))))

(assert (=> bs!1517256 (not (= lambda!333050 lambda!333002))))

(declare-fun bs!1517261 () Bool)

(assert (= bs!1517261 (and b!6112902 b!6112912)))

(assert (=> bs!1517261 (not (= lambda!333050 lambda!333049))))

(assert (=> bs!1517254 (not (= lambda!333050 lambda!332951))))

(assert (=> b!6112902 true))

(assert (=> b!6112902 true))

(declare-fun e!3727281 () Bool)

(declare-fun call!505924 () Bool)

(assert (=> b!6112902 (= e!3727281 call!505924)))

(declare-fun b!6112903 () Bool)

(declare-fun c!1098347 () Bool)

(assert (=> b!6112903 (= c!1098347 ((_ is Union!16061) (regOne!32635 r!7292)))))

(declare-fun e!3727284 () Bool)

(declare-fun e!3727286 () Bool)

(assert (=> b!6112903 (= e!3727284 e!3727286)))

(declare-fun bm!505918 () Bool)

(declare-fun call!505923 () Bool)

(assert (=> bm!505918 (= call!505923 (isEmpty!36289 s!2326))))

(declare-fun b!6112904 () Bool)

(declare-fun e!3727282 () Bool)

(assert (=> b!6112904 (= e!3727282 (matchRSpec!3162 (regTwo!32635 (regOne!32635 r!7292)) s!2326))))

(declare-fun d!1915628 () Bool)

(declare-fun c!1098345 () Bool)

(assert (=> d!1915628 (= c!1098345 ((_ is EmptyExpr!16061) (regOne!32635 r!7292)))))

(declare-fun e!3727285 () Bool)

(assert (=> d!1915628 (= (matchRSpec!3162 (regOne!32635 r!7292) s!2326) e!3727285)))

(declare-fun bm!505919 () Bool)

(declare-fun c!1098348 () Bool)

(assert (=> bm!505919 (= call!505924 (Exists!3131 (ite c!1098348 lambda!333049 lambda!333050)))))

(declare-fun b!6112905 () Bool)

(declare-fun c!1098346 () Bool)

(assert (=> b!6112905 (= c!1098346 ((_ is ElementMatch!16061) (regOne!32635 r!7292)))))

(declare-fun e!3727283 () Bool)

(assert (=> b!6112905 (= e!3727283 e!3727284)))

(declare-fun b!6112906 () Bool)

(assert (=> b!6112906 (= e!3727286 e!3727281)))

(assert (=> b!6112906 (= c!1098348 ((_ is Star!16061) (regOne!32635 r!7292)))))

(declare-fun b!6112907 () Bool)

(declare-fun res!2535290 () Bool)

(declare-fun e!3727287 () Bool)

(assert (=> b!6112907 (=> res!2535290 e!3727287)))

(assert (=> b!6112907 (= res!2535290 call!505923)))

(assert (=> b!6112907 (= e!3727281 e!3727287)))

(declare-fun b!6112908 () Bool)

(assert (=> b!6112908 (= e!3727286 e!3727282)))

(declare-fun res!2535292 () Bool)

(assert (=> b!6112908 (= res!2535292 (matchRSpec!3162 (regOne!32635 (regOne!32635 r!7292)) s!2326))))

(assert (=> b!6112908 (=> res!2535292 e!3727282)))

(declare-fun b!6112909 () Bool)

(assert (=> b!6112909 (= e!3727284 (= s!2326 (Cons!64360 (c!1098065 (regOne!32635 r!7292)) Nil!64360)))))

(declare-fun b!6112910 () Bool)

(assert (=> b!6112910 (= e!3727285 call!505923)))

(declare-fun b!6112911 () Bool)

(assert (=> b!6112911 (= e!3727285 e!3727283)))

(declare-fun res!2535291 () Bool)

(assert (=> b!6112911 (= res!2535291 (not ((_ is EmptyLang!16061) (regOne!32635 r!7292))))))

(assert (=> b!6112911 (=> (not res!2535291) (not e!3727283))))

(assert (=> b!6112912 (= e!3727287 call!505924)))

(assert (= (and d!1915628 c!1098345) b!6112910))

(assert (= (and d!1915628 (not c!1098345)) b!6112911))

(assert (= (and b!6112911 res!2535291) b!6112905))

(assert (= (and b!6112905 c!1098346) b!6112909))

(assert (= (and b!6112905 (not c!1098346)) b!6112903))

(assert (= (and b!6112903 c!1098347) b!6112908))

(assert (= (and b!6112903 (not c!1098347)) b!6112906))

(assert (= (and b!6112908 (not res!2535292)) b!6112904))

(assert (= (and b!6112906 c!1098348) b!6112907))

(assert (= (and b!6112906 (not c!1098348)) b!6112902))

(assert (= (and b!6112907 (not res!2535290)) b!6112912))

(assert (= (or b!6112912 b!6112902) bm!505919))

(assert (= (or b!6112910 b!6112907) bm!505918))

(assert (=> bm!505918 m!6961170))

(declare-fun m!6961662 () Bool)

(assert (=> b!6112904 m!6961662))

(declare-fun m!6961664 () Bool)

(assert (=> bm!505919 m!6961664))

(declare-fun m!6961666 () Bool)

(assert (=> b!6112908 m!6961666))

(assert (=> b!6112441 d!1915628))

(declare-fun call!505930 () List!64482)

(declare-fun c!1098358 () Bool)

(declare-fun call!505932 () (InoxSet Context!10890))

(declare-fun bm!505924 () Bool)

(assert (=> bm!505924 (= call!505932 (derivationStepZipperDown!1309 (ite c!1098358 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343))))) (ite c!1098358 (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343)))) (Context!10891 call!505930)) (h!70808 s!2326)))))

(declare-fun d!1915640 () Bool)

(declare-fun c!1098357 () Bool)

(assert (=> d!1915640 (= c!1098357 (and ((_ is ElementMatch!16061) (h!70806 (exprs!5945 (h!70807 zl!343)))) (= (c!1098065 (h!70806 (exprs!5945 (h!70807 zl!343)))) (h!70808 s!2326))))))

(declare-fun e!3727306 () (InoxSet Context!10890))

(assert (=> d!1915640 (= (derivationStepZipperDown!1309 (h!70806 (exprs!5945 (h!70807 zl!343))) (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343)))) (h!70808 s!2326)) e!3727306)))

(declare-fun b!6112934 () Bool)

(declare-fun e!3727304 () (InoxSet Context!10890))

(declare-fun call!505931 () (InoxSet Context!10890))

(assert (=> b!6112934 (= e!3727304 ((_ map or) call!505931 call!505932))))

(declare-fun bm!505925 () Bool)

(declare-fun call!505934 () (InoxSet Context!10890))

(assert (=> bm!505925 (= call!505934 call!505931)))

(declare-fun b!6112935 () Bool)

(assert (=> b!6112935 (= e!3727306 (store ((as const (Array Context!10890 Bool)) false) (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343)))) true))))

(declare-fun bm!505926 () Bool)

(declare-fun call!505933 () List!64482)

(declare-fun c!1098361 () Bool)

(declare-fun c!1098359 () Bool)

(assert (=> bm!505926 (= call!505931 (derivationStepZipperDown!1309 (ite c!1098358 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098359 (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (ite c!1098361 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (reg!16390 (h!70806 (exprs!5945 (h!70807 zl!343))))))) (ite (or c!1098358 c!1098359) (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343)))) (Context!10891 call!505933)) (h!70808 s!2326)))))

(declare-fun b!6112936 () Bool)

(declare-fun e!3727301 () (InoxSet Context!10890))

(assert (=> b!6112936 (= e!3727301 ((as const (Array Context!10890 Bool)) false))))

(declare-fun b!6112937 () Bool)

(declare-fun e!3727302 () (InoxSet Context!10890))

(declare-fun call!505929 () (InoxSet Context!10890))

(assert (=> b!6112937 (= e!3727302 call!505929)))

(declare-fun bm!505927 () Bool)

(assert (=> bm!505927 (= call!505930 ($colon$colon!1938 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343))))) (ite (or c!1098359 c!1098361) (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (h!70806 (exprs!5945 (h!70807 zl!343))))))))

(declare-fun b!6112938 () Bool)

(declare-fun e!3727305 () Bool)

(assert (=> b!6112938 (= e!3727305 (nullable!6054 (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343))))))))

(declare-fun bm!505928 () Bool)

(assert (=> bm!505928 (= call!505933 call!505930)))

(declare-fun b!6112939 () Bool)

(declare-fun c!1098360 () Bool)

(assert (=> b!6112939 (= c!1098360 ((_ is Star!16061) (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(assert (=> b!6112939 (= e!3727302 e!3727301)))

(declare-fun bm!505929 () Bool)

(assert (=> bm!505929 (= call!505929 call!505934)))

(declare-fun b!6112940 () Bool)

(declare-fun e!3727303 () (InoxSet Context!10890))

(assert (=> b!6112940 (= e!3727303 ((_ map or) call!505932 call!505934))))

(declare-fun b!6112941 () Bool)

(assert (=> b!6112941 (= e!3727301 call!505929)))

(declare-fun b!6112942 () Bool)

(assert (=> b!6112942 (= c!1098359 e!3727305)))

(declare-fun res!2535298 () Bool)

(assert (=> b!6112942 (=> (not res!2535298) (not e!3727305))))

(assert (=> b!6112942 (= res!2535298 ((_ is Concat!24906) (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(assert (=> b!6112942 (= e!3727304 e!3727303)))

(declare-fun b!6112943 () Bool)

(assert (=> b!6112943 (= e!3727303 e!3727302)))

(assert (=> b!6112943 (= c!1098361 ((_ is Concat!24906) (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun b!6112944 () Bool)

(assert (=> b!6112944 (= e!3727306 e!3727304)))

(assert (=> b!6112944 (= c!1098358 ((_ is Union!16061) (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(assert (= (and d!1915640 c!1098357) b!6112935))

(assert (= (and d!1915640 (not c!1098357)) b!6112944))

(assert (= (and b!6112944 c!1098358) b!6112934))

(assert (= (and b!6112944 (not c!1098358)) b!6112942))

(assert (= (and b!6112942 res!2535298) b!6112938))

(assert (= (and b!6112942 c!1098359) b!6112940))

(assert (= (and b!6112942 (not c!1098359)) b!6112943))

(assert (= (and b!6112943 c!1098361) b!6112937))

(assert (= (and b!6112943 (not c!1098361)) b!6112939))

(assert (= (and b!6112939 c!1098360) b!6112941))

(assert (= (and b!6112939 (not c!1098360)) b!6112936))

(assert (= (or b!6112937 b!6112941) bm!505928))

(assert (= (or b!6112937 b!6112941) bm!505929))

(assert (= (or b!6112940 bm!505928) bm!505927))

(assert (= (or b!6112940 bm!505929) bm!505925))

(assert (= (or b!6112934 b!6112940) bm!505924))

(assert (= (or b!6112934 bm!505925) bm!505926))

(assert (=> b!6112938 m!6960922))

(declare-fun m!6961668 () Bool)

(assert (=> bm!505924 m!6961668))

(declare-fun m!6961670 () Bool)

(assert (=> b!6112935 m!6961670))

(declare-fun m!6961672 () Bool)

(assert (=> bm!505926 m!6961672))

(declare-fun m!6961674 () Bool)

(assert (=> bm!505927 m!6961674))

(assert (=> bm!505782 d!1915640))

(declare-fun d!1915642 () Bool)

(assert (=> d!1915642 (= (head!12644 (exprs!5945 (h!70807 zl!343))) (h!70806 (exprs!5945 (h!70807 zl!343))))))

(assert (=> b!6112200 d!1915642))

(declare-fun d!1915644 () Bool)

(assert (=> d!1915644 (= (nullable!6054 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (nullableFct!2017 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))))))

(declare-fun bs!1517275 () Bool)

(assert (= bs!1517275 d!1915644))

(declare-fun m!6961676 () Bool)

(assert (=> bs!1517275 m!6961676))

(assert (=> b!6111922 d!1915644))

(declare-fun bs!1517276 () Bool)

(declare-fun d!1915646 () Bool)

(assert (= bs!1517276 (and d!1915646 d!1915408)))

(declare-fun lambda!333053 () Int)

(assert (=> bs!1517276 (= lambda!333053 lambda!333004)))

(declare-fun bs!1517277 () Bool)

(assert (= bs!1517277 (and d!1915646 d!1915492)))

(assert (=> bs!1517277 (= lambda!333053 lambda!333024)))

(declare-fun bs!1517278 () Bool)

(assert (= bs!1517278 (and d!1915646 d!1915552)))

(assert (=> bs!1517278 (= lambda!333053 lambda!333033)))

(declare-fun bs!1517279 () Bool)

(assert (= bs!1517279 (and d!1915646 d!1915368)))

(assert (=> bs!1517279 (= lambda!333053 lambda!332979)))

(declare-fun bs!1517280 () Bool)

(assert (= bs!1517280 (and d!1915646 d!1915362)))

(assert (=> bs!1517280 (= lambda!333053 lambda!332976)))

(declare-fun bs!1517281 () Bool)

(assert (= bs!1517281 (and d!1915646 d!1915340)))

(assert (=> bs!1517281 (= lambda!333053 lambda!332965)))

(declare-fun bs!1517282 () Bool)

(assert (= bs!1517282 (and d!1915646 d!1915410)))

(assert (=> bs!1517282 (= lambda!333053 lambda!333005)))

(declare-fun bs!1517283 () Bool)

(assert (= bs!1517283 (and d!1915646 d!1915380)))

(assert (=> bs!1517283 (= lambda!333053 lambda!332988)))

(declare-fun e!3727309 () Bool)

(assert (=> d!1915646 e!3727309))

(declare-fun res!2535300 () Bool)

(assert (=> d!1915646 (=> (not res!2535300) (not e!3727309))))

(declare-fun lt!2330270 () Regex!16061)

(assert (=> d!1915646 (= res!2535300 (validRegex!7797 lt!2330270))))

(declare-fun e!3727310 () Regex!16061)

(assert (=> d!1915646 (= lt!2330270 e!3727310)))

(declare-fun c!1098363 () Bool)

(declare-fun e!3727307 () Bool)

(assert (=> d!1915646 (= c!1098363 e!3727307)))

(declare-fun res!2535299 () Bool)

(assert (=> d!1915646 (=> (not res!2535299) (not e!3727307))))

(assert (=> d!1915646 (= res!2535299 ((_ is Cons!64358) (t!377939 (exprs!5945 (h!70807 zl!343)))))))

(assert (=> d!1915646 (forall!15182 (t!377939 (exprs!5945 (h!70807 zl!343))) lambda!333053)))

(assert (=> d!1915646 (= (generalisedConcat!1658 (t!377939 (exprs!5945 (h!70807 zl!343)))) lt!2330270)))

(declare-fun b!6112945 () Bool)

(assert (=> b!6112945 (= e!3727310 (h!70806 (t!377939 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun b!6112946 () Bool)

(declare-fun e!3727308 () Regex!16061)

(assert (=> b!6112946 (= e!3727310 e!3727308)))

(declare-fun c!1098364 () Bool)

(assert (=> b!6112946 (= c!1098364 ((_ is Cons!64358) (t!377939 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun b!6112947 () Bool)

(declare-fun e!3727312 () Bool)

(declare-fun e!3727311 () Bool)

(assert (=> b!6112947 (= e!3727312 e!3727311)))

(declare-fun c!1098365 () Bool)

(assert (=> b!6112947 (= c!1098365 (isEmpty!36285 (tail!11729 (t!377939 (exprs!5945 (h!70807 zl!343))))))))

(declare-fun b!6112948 () Bool)

(assert (=> b!6112948 (= e!3727308 (Concat!24906 (h!70806 (t!377939 (exprs!5945 (h!70807 zl!343)))) (generalisedConcat!1658 (t!377939 (t!377939 (exprs!5945 (h!70807 zl!343)))))))))

(declare-fun b!6112949 () Bool)

(assert (=> b!6112949 (= e!3727307 (isEmpty!36285 (t!377939 (t!377939 (exprs!5945 (h!70807 zl!343))))))))

(declare-fun b!6112950 () Bool)

(assert (=> b!6112950 (= e!3727311 (= lt!2330270 (head!12644 (t!377939 (exprs!5945 (h!70807 zl!343))))))))

(declare-fun b!6112951 () Bool)

(assert (=> b!6112951 (= e!3727312 (isEmptyExpr!1478 lt!2330270))))

(declare-fun b!6112952 () Bool)

(assert (=> b!6112952 (= e!3727308 EmptyExpr!16061)))

(declare-fun b!6112953 () Bool)

(assert (=> b!6112953 (= e!3727311 (isConcat!1001 lt!2330270))))

(declare-fun b!6112954 () Bool)

(assert (=> b!6112954 (= e!3727309 e!3727312)))

(declare-fun c!1098362 () Bool)

(assert (=> b!6112954 (= c!1098362 (isEmpty!36285 (t!377939 (exprs!5945 (h!70807 zl!343)))))))

(assert (= (and d!1915646 res!2535299) b!6112949))

(assert (= (and d!1915646 c!1098363) b!6112945))

(assert (= (and d!1915646 (not c!1098363)) b!6112946))

(assert (= (and b!6112946 c!1098364) b!6112948))

(assert (= (and b!6112946 (not c!1098364)) b!6112952))

(assert (= (and d!1915646 res!2535300) b!6112954))

(assert (= (and b!6112954 c!1098362) b!6112951))

(assert (= (and b!6112954 (not c!1098362)) b!6112947))

(assert (= (and b!6112947 c!1098365) b!6112950))

(assert (= (and b!6112947 (not c!1098365)) b!6112953))

(declare-fun m!6961698 () Bool)

(assert (=> b!6112953 m!6961698))

(declare-fun m!6961700 () Bool)

(assert (=> b!6112949 m!6961700))

(declare-fun m!6961702 () Bool)

(assert (=> b!6112951 m!6961702))

(declare-fun m!6961704 () Bool)

(assert (=> b!6112947 m!6961704))

(assert (=> b!6112947 m!6961704))

(declare-fun m!6961706 () Bool)

(assert (=> b!6112947 m!6961706))

(declare-fun m!6961708 () Bool)

(assert (=> d!1915646 m!6961708))

(declare-fun m!6961710 () Bool)

(assert (=> d!1915646 m!6961710))

(declare-fun m!6961714 () Bool)

(assert (=> b!6112950 m!6961714))

(declare-fun m!6961718 () Bool)

(assert (=> b!6112948 m!6961718))

(assert (=> b!6112954 m!6960780))

(assert (=> b!6112198 d!1915646))

(declare-fun d!1915652 () Bool)

(declare-fun c!1098370 () Bool)

(assert (=> d!1915652 (= c!1098370 ((_ is Nil!64359) lt!2330207))))

(declare-fun e!3727319 () (InoxSet Context!10890))

(assert (=> d!1915652 (= (content!11947 lt!2330207) e!3727319)))

(declare-fun b!6112967 () Bool)

(assert (=> b!6112967 (= e!3727319 ((as const (Array Context!10890 Bool)) false))))

(declare-fun b!6112968 () Bool)

(assert (=> b!6112968 (= e!3727319 ((_ map or) (store ((as const (Array Context!10890 Bool)) false) (h!70807 lt!2330207) true) (content!11947 (t!377940 lt!2330207))))))

(assert (= (and d!1915652 c!1098370) b!6112967))

(assert (= (and d!1915652 (not c!1098370)) b!6112968))

(declare-fun m!6961730 () Bool)

(assert (=> b!6112968 m!6961730))

(declare-fun m!6961732 () Bool)

(assert (=> b!6112968 m!6961732))

(assert (=> b!6112159 d!1915652))

(assert (=> d!1915396 d!1915386))

(assert (=> d!1915396 d!1915616))

(assert (=> d!1915396 d!1915400))

(declare-fun d!1915656 () Bool)

(assert (=> d!1915656 (= (Exists!3131 lambda!332997) (choose!45433 lambda!332997))))

(declare-fun bs!1517284 () Bool)

(assert (= bs!1517284 d!1915656))

(declare-fun m!6961734 () Bool)

(assert (=> bs!1517284 m!6961734))

(assert (=> d!1915396 d!1915656))

(declare-fun bs!1517288 () Bool)

(declare-fun d!1915658 () Bool)

(assert (= bs!1517288 (and d!1915658 d!1915602)))

(declare-fun lambda!333057 () Int)

(assert (=> bs!1517288 (= lambda!333057 lambda!333046)))

(assert (=> bs!1517288 (not (= lambda!333057 lambda!333047))))

(declare-fun bs!1517289 () Bool)

(assert (= bs!1517289 (and d!1915658 b!6112445)))

(assert (=> bs!1517289 (not (= lambda!333057 lambda!333010))))

(declare-fun bs!1517290 () Bool)

(assert (= bs!1517290 (and d!1915658 b!6111837)))

(assert (=> bs!1517290 (not (= lambda!333057 lambda!332952))))

(declare-fun bs!1517291 () Bool)

(assert (= bs!1517291 (and d!1915658 d!1915398)))

(assert (=> bs!1517291 (not (= lambda!333057 lambda!333003))))

(declare-fun bs!1517292 () Bool)

(assert (= bs!1517292 (and d!1915658 b!6112435)))

(assert (=> bs!1517292 (not (= lambda!333057 lambda!333011))))

(declare-fun bs!1517293 () Bool)

(assert (= bs!1517293 (and d!1915658 d!1915396)))

(assert (=> bs!1517293 (= lambda!333057 lambda!332997)))

(assert (=> bs!1517291 (= lambda!333057 lambda!333002)))

(declare-fun bs!1517294 () Bool)

(assert (= bs!1517294 (and d!1915658 b!6112912)))

(assert (=> bs!1517294 (not (= lambda!333057 lambda!333049))))

(assert (=> bs!1517290 (= lambda!333057 lambda!332951)))

(declare-fun bs!1517295 () Bool)

(assert (= bs!1517295 (and d!1915658 b!6112902)))

(assert (=> bs!1517295 (not (= lambda!333057 lambda!333050))))

(assert (=> d!1915658 true))

(assert (=> d!1915658 true))

(assert (=> d!1915658 true))

(assert (=> d!1915658 (= (isDefined!12655 (findConcatSeparation!2366 (regOne!32634 r!7292) (regTwo!32634 r!7292) Nil!64360 s!2326 s!2326)) (Exists!3131 lambda!333057))))

(assert (=> d!1915658 true))

(declare-fun _$89!2170 () Unit!157399)

(assert (=> d!1915658 (= (choose!45431 (regOne!32634 r!7292) (regTwo!32634 r!7292) s!2326) _$89!2170)))

(declare-fun bs!1517296 () Bool)

(assert (= bs!1517296 d!1915658))

(assert (=> bs!1517296 m!6960810))

(assert (=> bs!1517296 m!6960810))

(assert (=> bs!1517296 m!6960812))

(declare-fun m!6961784 () Bool)

(assert (=> bs!1517296 m!6961784))

(assert (=> d!1915396 d!1915658))

(declare-fun bs!1517297 () Bool)

(declare-fun d!1915676 () Bool)

(assert (= bs!1517297 (and d!1915676 d!1915408)))

(declare-fun lambda!333058 () Int)

(assert (=> bs!1517297 (= lambda!333058 lambda!333004)))

(declare-fun bs!1517298 () Bool)

(assert (= bs!1517298 (and d!1915676 d!1915492)))

(assert (=> bs!1517298 (= lambda!333058 lambda!333024)))

(declare-fun bs!1517299 () Bool)

(assert (= bs!1517299 (and d!1915676 d!1915552)))

(assert (=> bs!1517299 (= lambda!333058 lambda!333033)))

(declare-fun bs!1517300 () Bool)

(assert (= bs!1517300 (and d!1915676 d!1915368)))

(assert (=> bs!1517300 (= lambda!333058 lambda!332979)))

(declare-fun bs!1517301 () Bool)

(assert (= bs!1517301 (and d!1915676 d!1915362)))

(assert (=> bs!1517301 (= lambda!333058 lambda!332976)))

(declare-fun bs!1517302 () Bool)

(assert (= bs!1517302 (and d!1915676 d!1915646)))

(assert (=> bs!1517302 (= lambda!333058 lambda!333053)))

(declare-fun bs!1517303 () Bool)

(assert (= bs!1517303 (and d!1915676 d!1915340)))

(assert (=> bs!1517303 (= lambda!333058 lambda!332965)))

(declare-fun bs!1517304 () Bool)

(assert (= bs!1517304 (and d!1915676 d!1915410)))

(assert (=> bs!1517304 (= lambda!333058 lambda!333005)))

(declare-fun bs!1517305 () Bool)

(assert (= bs!1517305 (and d!1915676 d!1915380)))

(assert (=> bs!1517305 (= lambda!333058 lambda!332988)))

(assert (=> d!1915676 (= (inv!83399 (h!70807 (t!377940 zl!343))) (forall!15182 (exprs!5945 (h!70807 (t!377940 zl!343))) lambda!333058))))

(declare-fun bs!1517306 () Bool)

(assert (= bs!1517306 d!1915676))

(declare-fun m!6961786 () Bool)

(assert (=> bs!1517306 m!6961786))

(assert (=> b!6112522 d!1915676))

(declare-fun d!1915678 () Bool)

(assert (=> d!1915678 (= (isEmpty!36289 (tail!11728 s!2326)) ((_ is Nil!64360) (tail!11728 s!2326)))))

(assert (=> b!6112485 d!1915678))

(declare-fun d!1915680 () Bool)

(assert (=> d!1915680 (= (tail!11728 s!2326) (t!377941 s!2326))))

(assert (=> b!6112485 d!1915680))

(declare-fun bm!505932 () Bool)

(declare-fun call!505937 () (InoxSet Context!10890))

(assert (=> bm!505932 (= call!505937 (derivationStepZipperDown!1309 (h!70806 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 lt!2330155))))) (Context!10891 (t!377939 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 lt!2330155)))))) (h!70808 s!2326)))))

(declare-fun b!6113001 () Bool)

(declare-fun e!3727337 () Bool)

(assert (=> b!6113001 (= e!3727337 (nullable!6054 (h!70806 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 lt!2330155)))))))))

(declare-fun e!3727339 () (InoxSet Context!10890))

(declare-fun b!6113002 () Bool)

(assert (=> b!6113002 (= e!3727339 ((_ map or) call!505937 (derivationStepZipperUp!1235 (Context!10891 (t!377939 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 lt!2330155)))))) (h!70808 s!2326))))))

(declare-fun b!6113003 () Bool)

(declare-fun e!3727338 () (InoxSet Context!10890))

(assert (=> b!6113003 (= e!3727338 ((as const (Array Context!10890 Bool)) false))))

(declare-fun b!6113004 () Bool)

(assert (=> b!6113004 (= e!3727339 e!3727338)))

(declare-fun c!1098379 () Bool)

(assert (=> b!6113004 (= c!1098379 ((_ is Cons!64358) (exprs!5945 (Context!10891 (t!377939 (exprs!5945 lt!2330155))))))))

(declare-fun b!6113005 () Bool)

(assert (=> b!6113005 (= e!3727338 call!505937)))

(declare-fun d!1915682 () Bool)

(declare-fun c!1098378 () Bool)

(assert (=> d!1915682 (= c!1098378 e!3727337)))

(declare-fun res!2535326 () Bool)

(assert (=> d!1915682 (=> (not res!2535326) (not e!3727337))))

(assert (=> d!1915682 (= res!2535326 ((_ is Cons!64358) (exprs!5945 (Context!10891 (t!377939 (exprs!5945 lt!2330155))))))))

(assert (=> d!1915682 (= (derivationStepZipperUp!1235 (Context!10891 (t!377939 (exprs!5945 lt!2330155))) (h!70808 s!2326)) e!3727339)))

(assert (= (and d!1915682 res!2535326) b!6113001))

(assert (= (and d!1915682 c!1098378) b!6113002))

(assert (= (and d!1915682 (not c!1098378)) b!6113004))

(assert (= (and b!6113004 c!1098379) b!6113005))

(assert (= (and b!6113004 (not c!1098379)) b!6113003))

(assert (= (or b!6113002 b!6113005) bm!505932))

(declare-fun m!6961788 () Bool)

(assert (=> bm!505932 m!6961788))

(declare-fun m!6961790 () Bool)

(assert (=> b!6113001 m!6961790))

(declare-fun m!6961792 () Bool)

(assert (=> b!6113002 m!6961792))

(assert (=> b!6112010 d!1915682))

(declare-fun d!1915684 () Bool)

(declare-fun res!2535329 () Bool)

(declare-fun e!3727342 () Bool)

(assert (=> d!1915684 (=> res!2535329 e!3727342)))

(assert (=> d!1915684 (= res!2535329 ((_ is ElementMatch!16061) lt!2330201))))

(assert (=> d!1915684 (= (validRegex!7797 lt!2330201) e!3727342)))

(declare-fun call!505938 () Bool)

(declare-fun c!1098381 () Bool)

(declare-fun c!1098380 () Bool)

(declare-fun bm!505933 () Bool)

(assert (=> bm!505933 (= call!505938 (validRegex!7797 (ite c!1098380 (reg!16390 lt!2330201) (ite c!1098381 (regOne!32635 lt!2330201) (regOne!32634 lt!2330201)))))))

(declare-fun b!6113006 () Bool)

(declare-fun e!3727346 () Bool)

(declare-fun e!3727343 () Bool)

(assert (=> b!6113006 (= e!3727346 e!3727343)))

(declare-fun res!2535328 () Bool)

(assert (=> b!6113006 (=> (not res!2535328) (not e!3727343))))

(declare-fun call!505940 () Bool)

(assert (=> b!6113006 (= res!2535328 call!505940)))

(declare-fun b!6113007 () Bool)

(declare-fun res!2535330 () Bool)

(assert (=> b!6113007 (=> res!2535330 e!3727346)))

(assert (=> b!6113007 (= res!2535330 (not ((_ is Concat!24906) lt!2330201)))))

(declare-fun e!3727340 () Bool)

(assert (=> b!6113007 (= e!3727340 e!3727346)))

(declare-fun b!6113008 () Bool)

(declare-fun e!3727345 () Bool)

(assert (=> b!6113008 (= e!3727345 call!505938)))

(declare-fun bm!505934 () Bool)

(declare-fun call!505939 () Bool)

(assert (=> bm!505934 (= call!505939 (validRegex!7797 (ite c!1098381 (regTwo!32635 lt!2330201) (regTwo!32634 lt!2330201))))))

(declare-fun b!6113009 () Bool)

(declare-fun res!2535331 () Bool)

(declare-fun e!3727341 () Bool)

(assert (=> b!6113009 (=> (not res!2535331) (not e!3727341))))

(assert (=> b!6113009 (= res!2535331 call!505940)))

(assert (=> b!6113009 (= e!3727340 e!3727341)))

(declare-fun bm!505935 () Bool)

(assert (=> bm!505935 (= call!505940 call!505938)))

(declare-fun b!6113010 () Bool)

(assert (=> b!6113010 (= e!3727343 call!505939)))

(declare-fun b!6113011 () Bool)

(declare-fun e!3727344 () Bool)

(assert (=> b!6113011 (= e!3727344 e!3727340)))

(assert (=> b!6113011 (= c!1098381 ((_ is Union!16061) lt!2330201))))

(declare-fun b!6113012 () Bool)

(assert (=> b!6113012 (= e!3727342 e!3727344)))

(assert (=> b!6113012 (= c!1098380 ((_ is Star!16061) lt!2330201))))

(declare-fun b!6113013 () Bool)

(assert (=> b!6113013 (= e!3727344 e!3727345)))

(declare-fun res!2535327 () Bool)

(assert (=> b!6113013 (= res!2535327 (not (nullable!6054 (reg!16390 lt!2330201))))))

(assert (=> b!6113013 (=> (not res!2535327) (not e!3727345))))

(declare-fun b!6113014 () Bool)

(assert (=> b!6113014 (= e!3727341 call!505939)))

(assert (= (and d!1915684 (not res!2535329)) b!6113012))

(assert (= (and b!6113012 c!1098380) b!6113013))

(assert (= (and b!6113012 (not c!1098380)) b!6113011))

(assert (= (and b!6113013 res!2535327) b!6113008))

(assert (= (and b!6113011 c!1098381) b!6113009))

(assert (= (and b!6113011 (not c!1098381)) b!6113007))

(assert (= (and b!6113009 res!2535331) b!6113014))

(assert (= (and b!6113007 (not res!2535330)) b!6113006))

(assert (= (and b!6113006 res!2535328) b!6113010))

(assert (= (or b!6113014 b!6113010) bm!505934))

(assert (= (or b!6113009 b!6113006) bm!505935))

(assert (= (or b!6113008 bm!505935) bm!505933))

(declare-fun m!6961794 () Bool)

(assert (=> bm!505933 m!6961794))

(declare-fun m!6961796 () Bool)

(assert (=> bm!505934 m!6961796))

(declare-fun m!6961798 () Bool)

(assert (=> b!6113013 m!6961798))

(assert (=> d!1915362 d!1915684))

(declare-fun d!1915686 () Bool)

(declare-fun res!2535332 () Bool)

(declare-fun e!3727347 () Bool)

(assert (=> d!1915686 (=> res!2535332 e!3727347)))

(assert (=> d!1915686 (= res!2535332 ((_ is Nil!64358) (unfocusZipperList!1482 zl!343)))))

(assert (=> d!1915686 (= (forall!15182 (unfocusZipperList!1482 zl!343) lambda!332976) e!3727347)))

(declare-fun b!6113015 () Bool)

(declare-fun e!3727348 () Bool)

(assert (=> b!6113015 (= e!3727347 e!3727348)))

(declare-fun res!2535333 () Bool)

(assert (=> b!6113015 (=> (not res!2535333) (not e!3727348))))

(assert (=> b!6113015 (= res!2535333 (dynLambda!25345 lambda!332976 (h!70806 (unfocusZipperList!1482 zl!343))))))

(declare-fun b!6113016 () Bool)

(assert (=> b!6113016 (= e!3727348 (forall!15182 (t!377939 (unfocusZipperList!1482 zl!343)) lambda!332976))))

(assert (= (and d!1915686 (not res!2535332)) b!6113015))

(assert (= (and b!6113015 res!2535333) b!6113016))

(declare-fun b_lambda!232817 () Bool)

(assert (=> (not b_lambda!232817) (not b!6113015)))

(declare-fun m!6961800 () Bool)

(assert (=> b!6113015 m!6961800))

(declare-fun m!6961802 () Bool)

(assert (=> b!6113016 m!6961802))

(assert (=> d!1915362 d!1915686))

(declare-fun d!1915688 () Bool)

(assert (=> d!1915688 (= (isEmpty!36285 (exprs!5945 (h!70807 zl!343))) ((_ is Nil!64358) (exprs!5945 (h!70807 zl!343))))))

(assert (=> b!6112204 d!1915688))

(declare-fun d!1915690 () Bool)

(assert (=> d!1915690 (= (isEmpty!36285 (tail!11729 (unfocusZipperList!1482 zl!343))) ((_ is Nil!64358) (tail!11729 (unfocusZipperList!1482 zl!343))))))

(assert (=> b!6112099 d!1915690))

(declare-fun d!1915692 () Bool)

(assert (=> d!1915692 (= (tail!11729 (unfocusZipperList!1482 zl!343)) (t!377939 (unfocusZipperList!1482 zl!343)))))

(assert (=> b!6112099 d!1915692))

(declare-fun d!1915694 () Bool)

(declare-fun res!2535338 () Bool)

(declare-fun e!3727363 () Bool)

(assert (=> d!1915694 (=> res!2535338 e!3727363)))

(assert (=> d!1915694 (= res!2535338 ((_ is Nil!64359) lt!2330207))))

(assert (=> d!1915694 (= (noDuplicate!1908 lt!2330207) e!3727363)))

(declare-fun b!6113041 () Bool)

(declare-fun e!3727364 () Bool)

(assert (=> b!6113041 (= e!3727363 e!3727364)))

(declare-fun res!2535339 () Bool)

(assert (=> b!6113041 (=> (not res!2535339) (not e!3727364))))

(declare-fun contains!20024 (List!64483 Context!10890) Bool)

(assert (=> b!6113041 (= res!2535339 (not (contains!20024 (t!377940 lt!2330207) (h!70807 lt!2330207))))))

(declare-fun b!6113042 () Bool)

(assert (=> b!6113042 (= e!3727364 (noDuplicate!1908 (t!377940 lt!2330207)))))

(assert (= (and d!1915694 (not res!2535338)) b!6113041))

(assert (= (and b!6113041 res!2535339) b!6113042))

(declare-fun m!6961804 () Bool)

(assert (=> b!6113041 m!6961804))

(declare-fun m!6961806 () Bool)

(assert (=> b!6113042 m!6961806))

(assert (=> d!1915378 d!1915694))

(declare-fun d!1915696 () Bool)

(declare-fun e!3727371 () Bool)

(assert (=> d!1915696 e!3727371))

(declare-fun res!2535344 () Bool)

(assert (=> d!1915696 (=> (not res!2535344) (not e!3727371))))

(declare-fun res!2535345 () List!64483)

(assert (=> d!1915696 (= res!2535344 (noDuplicate!1908 res!2535345))))

(declare-fun e!3727373 () Bool)

(assert (=> d!1915696 e!3727373))

(assert (=> d!1915696 (= (choose!45430 z!1189) res!2535345)))

(declare-fun b!6113050 () Bool)

(declare-fun e!3727372 () Bool)

(declare-fun tp!1707329 () Bool)

(assert (=> b!6113050 (= e!3727372 tp!1707329)))

(declare-fun b!6113049 () Bool)

(declare-fun tp!1707330 () Bool)

(assert (=> b!6113049 (= e!3727373 (and (inv!83399 (h!70807 res!2535345)) e!3727372 tp!1707330))))

(declare-fun b!6113051 () Bool)

(assert (=> b!6113051 (= e!3727371 (= (content!11947 res!2535345) z!1189))))

(assert (= b!6113049 b!6113050))

(assert (= (and d!1915696 ((_ is Cons!64359) res!2535345)) b!6113049))

(assert (= (and d!1915696 res!2535344) b!6113051))

(declare-fun m!6961808 () Bool)

(assert (=> d!1915696 m!6961808))

(declare-fun m!6961810 () Bool)

(assert (=> b!6113049 m!6961810))

(declare-fun m!6961812 () Bool)

(assert (=> b!6113051 m!6961812))

(assert (=> d!1915378 d!1915696))

(declare-fun bm!505944 () Bool)

(declare-fun call!505949 () (InoxSet Context!10890))

(assert (=> bm!505944 (= call!505949 (derivationStepZipperDown!1309 (h!70806 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343)))))) (Context!10891 (t!377939 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343))))))) (h!70808 s!2326)))))

(declare-fun b!6113052 () Bool)

(declare-fun e!3727374 () Bool)

(assert (=> b!6113052 (= e!3727374 (nullable!6054 (h!70806 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343))))))))))

(declare-fun b!6113053 () Bool)

(declare-fun e!3727376 () (InoxSet Context!10890))

(assert (=> b!6113053 (= e!3727376 ((_ map or) call!505949 (derivationStepZipperUp!1235 (Context!10891 (t!377939 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343))))))) (h!70808 s!2326))))))

(declare-fun b!6113054 () Bool)

(declare-fun e!3727375 () (InoxSet Context!10890))

(assert (=> b!6113054 (= e!3727375 ((as const (Array Context!10890 Bool)) false))))

(declare-fun b!6113055 () Bool)

(assert (=> b!6113055 (= e!3727376 e!3727375)))

(declare-fun c!1098393 () Bool)

(assert (=> b!6113055 (= c!1098393 ((_ is Cons!64358) (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343)))))))))

(declare-fun b!6113056 () Bool)

(assert (=> b!6113056 (= e!3727375 call!505949)))

(declare-fun d!1915698 () Bool)

(declare-fun c!1098392 () Bool)

(assert (=> d!1915698 (= c!1098392 e!3727374)))

(declare-fun res!2535346 () Bool)

(assert (=> d!1915698 (=> (not res!2535346) (not e!3727374))))

(assert (=> d!1915698 (= res!2535346 ((_ is Cons!64358) (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343)))))))))

(assert (=> d!1915698 (= (derivationStepZipperUp!1235 (Context!10891 (t!377939 (exprs!5945 (h!70807 zl!343)))) (h!70808 s!2326)) e!3727376)))

(assert (= (and d!1915698 res!2535346) b!6113052))

(assert (= (and d!1915698 c!1098392) b!6113053))

(assert (= (and d!1915698 (not c!1098392)) b!6113055))

(assert (= (and b!6113055 c!1098393) b!6113056))

(assert (= (and b!6113055 (not c!1098393)) b!6113054))

(assert (= (or b!6113053 b!6113056) bm!505944))

(declare-fun m!6961814 () Bool)

(assert (=> bm!505944 m!6961814))

(declare-fun m!6961816 () Bool)

(assert (=> b!6113052 m!6961816))

(declare-fun m!6961818 () Bool)

(assert (=> b!6113053 m!6961818))

(assert (=> b!6111938 d!1915698))

(declare-fun d!1915700 () Bool)

(assert (=> d!1915700 true))

(assert (=> d!1915700 true))

(declare-fun res!2535347 () Bool)

(assert (=> d!1915700 (= (choose!45433 lambda!332952) res!2535347)))

(assert (=> d!1915404 d!1915700))

(declare-fun d!1915702 () Bool)

(assert (=> d!1915702 (= (head!12644 (unfocusZipperList!1482 zl!343)) (h!70806 (unfocusZipperList!1482 zl!343)))))

(assert (=> b!6112105 d!1915702))

(declare-fun d!1915704 () Bool)

(declare-fun lambda!333061 () Int)

(declare-fun exists!2406 ((InoxSet Context!10890) Int) Bool)

(assert (=> d!1915704 (= (nullableZipper!1842 lt!2330152) (exists!2406 lt!2330152 lambda!333061))))

(declare-fun bs!1517307 () Bool)

(assert (= bs!1517307 d!1915704))

(declare-fun m!6961820 () Bool)

(assert (=> bs!1517307 m!6961820))

(assert (=> b!6112029 d!1915704))

(declare-fun d!1915706 () Bool)

(assert (=> d!1915706 (= (isUnion!917 lt!2330201) ((_ is Union!16061) lt!2330201))))

(assert (=> b!6112103 d!1915706))

(declare-fun bs!1517309 () Bool)

(declare-fun d!1915712 () Bool)

(assert (= bs!1517309 (and d!1915712 d!1915704)))

(declare-fun lambda!333062 () Int)

(assert (=> bs!1517309 (= lambda!333062 lambda!333061)))

(assert (=> d!1915712 (= (nullableZipper!1842 ((_ map or) lt!2330152 lt!2330154)) (exists!2406 ((_ map or) lt!2330152 lt!2330154) lambda!333062))))

(declare-fun bs!1517310 () Bool)

(assert (= bs!1517310 d!1915712))

(declare-fun m!6961830 () Bool)

(assert (=> bs!1517310 m!6961830))

(assert (=> b!6112031 d!1915712))

(declare-fun bm!505952 () Bool)

(declare-fun call!505957 () Bool)

(assert (=> bm!505952 (= call!505957 (isEmpty!36289 (_1!36343 (get!22194 lt!2330234))))))

(declare-fun b!6113076 () Bool)

(declare-fun res!2535359 () Bool)

(declare-fun e!3727391 () Bool)

(assert (=> b!6113076 (=> res!2535359 e!3727391)))

(declare-fun e!3727392 () Bool)

(assert (=> b!6113076 (= res!2535359 e!3727392)))

(declare-fun res!2535358 () Bool)

(assert (=> b!6113076 (=> (not res!2535358) (not e!3727392))))

(declare-fun lt!2330283 () Bool)

(assert (=> b!6113076 (= res!2535358 lt!2330283)))

(declare-fun b!6113077 () Bool)

(declare-fun e!3727393 () Bool)

(assert (=> b!6113077 (= e!3727393 (not lt!2330283))))

(declare-fun b!6113078 () Bool)

(declare-fun e!3727389 () Bool)

(assert (=> b!6113078 (= e!3727389 e!3727393)))

(declare-fun c!1098403 () Bool)

(assert (=> b!6113078 (= c!1098403 ((_ is EmptyLang!16061) (regOne!32634 r!7292)))))

(declare-fun d!1915718 () Bool)

(assert (=> d!1915718 e!3727389))

(declare-fun c!1098404 () Bool)

(assert (=> d!1915718 (= c!1098404 ((_ is EmptyExpr!16061) (regOne!32634 r!7292)))))

(declare-fun e!3727390 () Bool)

(assert (=> d!1915718 (= lt!2330283 e!3727390)))

(declare-fun c!1098405 () Bool)

(assert (=> d!1915718 (= c!1098405 (isEmpty!36289 (_1!36343 (get!22194 lt!2330234))))))

(assert (=> d!1915718 (validRegex!7797 (regOne!32634 r!7292))))

(assert (=> d!1915718 (= (matchR!8244 (regOne!32634 r!7292) (_1!36343 (get!22194 lt!2330234))) lt!2330283)))

(declare-fun b!6113079 () Bool)

(declare-fun e!3727394 () Bool)

(assert (=> b!6113079 (= e!3727394 (not (= (head!12643 (_1!36343 (get!22194 lt!2330234))) (c!1098065 (regOne!32634 r!7292)))))))

(declare-fun b!6113080 () Bool)

(declare-fun e!3727395 () Bool)

(assert (=> b!6113080 (= e!3727395 e!3727394)))

(declare-fun res!2535356 () Bool)

(assert (=> b!6113080 (=> res!2535356 e!3727394)))

(assert (=> b!6113080 (= res!2535356 call!505957)))

(declare-fun b!6113081 () Bool)

(declare-fun res!2535354 () Bool)

(assert (=> b!6113081 (=> res!2535354 e!3727391)))

(assert (=> b!6113081 (= res!2535354 (not ((_ is ElementMatch!16061) (regOne!32634 r!7292))))))

(assert (=> b!6113081 (= e!3727393 e!3727391)))

(declare-fun b!6113082 () Bool)

(declare-fun res!2535361 () Bool)

(assert (=> b!6113082 (=> res!2535361 e!3727394)))

(assert (=> b!6113082 (= res!2535361 (not (isEmpty!36289 (tail!11728 (_1!36343 (get!22194 lt!2330234))))))))

(declare-fun b!6113083 () Bool)

(assert (=> b!6113083 (= e!3727389 (= lt!2330283 call!505957))))

(declare-fun b!6113084 () Bool)

(assert (=> b!6113084 (= e!3727390 (matchR!8244 (derivativeStep!4782 (regOne!32634 r!7292) (head!12643 (_1!36343 (get!22194 lt!2330234)))) (tail!11728 (_1!36343 (get!22194 lt!2330234)))))))

(declare-fun b!6113085 () Bool)

(assert (=> b!6113085 (= e!3727390 (nullable!6054 (regOne!32634 r!7292)))))

(declare-fun b!6113086 () Bool)

(assert (=> b!6113086 (= e!3727392 (= (head!12643 (_1!36343 (get!22194 lt!2330234))) (c!1098065 (regOne!32634 r!7292))))))

(declare-fun b!6113087 () Bool)

(declare-fun res!2535357 () Bool)

(assert (=> b!6113087 (=> (not res!2535357) (not e!3727392))))

(assert (=> b!6113087 (= res!2535357 (isEmpty!36289 (tail!11728 (_1!36343 (get!22194 lt!2330234)))))))

(declare-fun b!6113088 () Bool)

(assert (=> b!6113088 (= e!3727391 e!3727395)))

(declare-fun res!2535355 () Bool)

(assert (=> b!6113088 (=> (not res!2535355) (not e!3727395))))

(assert (=> b!6113088 (= res!2535355 (not lt!2330283))))

(declare-fun b!6113089 () Bool)

(declare-fun res!2535360 () Bool)

(assert (=> b!6113089 (=> (not res!2535360) (not e!3727392))))

(assert (=> b!6113089 (= res!2535360 (not call!505957))))

(assert (= (and d!1915718 c!1098405) b!6113085))

(assert (= (and d!1915718 (not c!1098405)) b!6113084))

(assert (= (and d!1915718 c!1098404) b!6113083))

(assert (= (and d!1915718 (not c!1098404)) b!6113078))

(assert (= (and b!6113078 c!1098403) b!6113077))

(assert (= (and b!6113078 (not c!1098403)) b!6113081))

(assert (= (and b!6113081 (not res!2535354)) b!6113076))

(assert (= (and b!6113076 res!2535358) b!6113089))

(assert (= (and b!6113089 res!2535360) b!6113087))

(assert (= (and b!6113087 res!2535357) b!6113086))

(assert (= (and b!6113076 (not res!2535359)) b!6113088))

(assert (= (and b!6113088 res!2535355) b!6113080))

(assert (= (and b!6113080 (not res!2535356)) b!6113082))

(assert (= (and b!6113082 (not res!2535361)) b!6113079))

(assert (= (or b!6113083 b!6113080 b!6113089) bm!505952))

(declare-fun m!6961838 () Bool)

(assert (=> bm!505952 m!6961838))

(declare-fun m!6961840 () Bool)

(assert (=> b!6113085 m!6961840))

(declare-fun m!6961842 () Bool)

(assert (=> b!6113084 m!6961842))

(assert (=> b!6113084 m!6961842))

(declare-fun m!6961844 () Bool)

(assert (=> b!6113084 m!6961844))

(declare-fun m!6961846 () Bool)

(assert (=> b!6113084 m!6961846))

(assert (=> b!6113084 m!6961844))

(assert (=> b!6113084 m!6961846))

(declare-fun m!6961848 () Bool)

(assert (=> b!6113084 m!6961848))

(assert (=> b!6113086 m!6961842))

(assert (=> b!6113082 m!6961846))

(assert (=> b!6113082 m!6961846))

(declare-fun m!6961850 () Bool)

(assert (=> b!6113082 m!6961850))

(assert (=> d!1915718 m!6961838))

(assert (=> d!1915718 m!6961132))

(assert (=> b!6113087 m!6961846))

(assert (=> b!6113087 m!6961846))

(assert (=> b!6113087 m!6961850))

(assert (=> b!6113079 m!6961842))

(assert (=> b!6112355 d!1915718))

(assert (=> b!6112355 d!1915624))

(declare-fun bs!1517311 () Bool)

(declare-fun d!1915724 () Bool)

(assert (= bs!1517311 (and d!1915724 d!1915704)))

(declare-fun lambda!333063 () Int)

(assert (=> bs!1517311 (= lambda!333063 lambda!333061)))

(declare-fun bs!1517312 () Bool)

(assert (= bs!1517312 (and d!1915724 d!1915712)))

(assert (=> bs!1517312 (= lambda!333063 lambda!333062)))

(assert (=> d!1915724 (= (nullableZipper!1842 lt!2330154) (exists!2406 lt!2330154 lambda!333063))))

(declare-fun bs!1517313 () Bool)

(assert (= bs!1517313 d!1915724))

(declare-fun m!6961852 () Bool)

(assert (=> bs!1517313 m!6961852))

(assert (=> b!6112033 d!1915724))

(assert (=> d!1915336 d!1915306))

(declare-fun d!1915726 () Bool)

(assert (=> d!1915726 (= (flatMap!1566 z!1189 lambda!332953) (dynLambda!25344 lambda!332953 (h!70807 zl!343)))))

(assert (=> d!1915726 true))

(declare-fun _$13!2960 () Unit!157399)

(assert (=> d!1915726 (= (choose!45427 z!1189 (h!70807 zl!343) lambda!332953) _$13!2960)))

(declare-fun b_lambda!232819 () Bool)

(assert (=> (not b_lambda!232819) (not d!1915726)))

(declare-fun bs!1517314 () Bool)

(assert (= bs!1517314 d!1915726))

(assert (=> bs!1517314 m!6960790))

(assert (=> bs!1517314 m!6960930))

(assert (=> d!1915336 d!1915726))

(assert (=> b!6112024 d!1915360))

(declare-fun d!1915728 () Bool)

(assert (=> d!1915728 (= ($colon$colon!1938 (exprs!5945 lt!2330155) (ite (or c!1098115 c!1098117) (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (h!70806 (exprs!5945 (h!70807 zl!343))))) (Cons!64358 (ite (or c!1098115 c!1098117) (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))) (h!70806 (exprs!5945 (h!70807 zl!343)))) (exprs!5945 lt!2330155)))))

(assert (=> bm!505798 d!1915728))

(declare-fun d!1915730 () Bool)

(assert (=> d!1915730 (= (isEmptyLang!1487 lt!2330201) ((_ is EmptyLang!16061) lt!2330201))))

(assert (=> b!6112101 d!1915730))

(declare-fun bs!1517315 () Bool)

(declare-fun b!6113114 () Bool)

(assert (= bs!1517315 (and b!6113114 d!1915602)))

(declare-fun lambda!333064 () Int)

(assert (=> bs!1517315 (not (= lambda!333064 lambda!333046))))

(assert (=> bs!1517315 (not (= lambda!333064 lambda!333047))))

(declare-fun bs!1517316 () Bool)

(assert (= bs!1517316 (and b!6113114 b!6112445)))

(assert (=> bs!1517316 (= (and (= (reg!16390 (regTwo!32635 r!7292)) (reg!16390 r!7292)) (= (regTwo!32635 r!7292) r!7292)) (= lambda!333064 lambda!333010))))

(declare-fun bs!1517317 () Bool)

(assert (= bs!1517317 (and b!6113114 b!6111837)))

(assert (=> bs!1517317 (not (= lambda!333064 lambda!332952))))

(declare-fun bs!1517318 () Bool)

(assert (= bs!1517318 (and b!6113114 d!1915398)))

(assert (=> bs!1517318 (not (= lambda!333064 lambda!333003))))

(declare-fun bs!1517319 () Bool)

(assert (= bs!1517319 (and b!6113114 b!6112435)))

(assert (=> bs!1517319 (not (= lambda!333064 lambda!333011))))

(declare-fun bs!1517320 () Bool)

(assert (= bs!1517320 (and b!6113114 d!1915396)))

(assert (=> bs!1517320 (not (= lambda!333064 lambda!332997))))

(declare-fun bs!1517321 () Bool)

(assert (= bs!1517321 (and b!6113114 b!6112912)))

(assert (=> bs!1517321 (= (and (= (reg!16390 (regTwo!32635 r!7292)) (reg!16390 (regOne!32635 r!7292))) (= (regTwo!32635 r!7292) (regOne!32635 r!7292))) (= lambda!333064 lambda!333049))))

(assert (=> bs!1517317 (not (= lambda!333064 lambda!332951))))

(declare-fun bs!1517322 () Bool)

(assert (= bs!1517322 (and b!6113114 b!6112902)))

(assert (=> bs!1517322 (not (= lambda!333064 lambda!333050))))

(declare-fun bs!1517323 () Bool)

(assert (= bs!1517323 (and b!6113114 d!1915658)))

(assert (=> bs!1517323 (not (= lambda!333064 lambda!333057))))

(assert (=> bs!1517318 (not (= lambda!333064 lambda!333002))))

(assert (=> b!6113114 true))

(assert (=> b!6113114 true))

(declare-fun bs!1517324 () Bool)

(declare-fun b!6113104 () Bool)

(assert (= bs!1517324 (and b!6113104 d!1915602)))

(declare-fun lambda!333065 () Int)

(assert (=> bs!1517324 (not (= lambda!333065 lambda!333046))))

(assert (=> bs!1517324 (= (and (= (regOne!32634 (regTwo!32635 r!7292)) (regOne!32634 r!7292)) (= (regTwo!32634 (regTwo!32635 r!7292)) (regTwo!32634 r!7292))) (= lambda!333065 lambda!333047))))

(declare-fun bs!1517325 () Bool)

(assert (= bs!1517325 (and b!6113104 b!6112445)))

(assert (=> bs!1517325 (not (= lambda!333065 lambda!333010))))

(declare-fun bs!1517326 () Bool)

(assert (= bs!1517326 (and b!6113104 b!6111837)))

(assert (=> bs!1517326 (= (and (= (regOne!32634 (regTwo!32635 r!7292)) (regOne!32634 r!7292)) (= (regTwo!32634 (regTwo!32635 r!7292)) (regTwo!32634 r!7292))) (= lambda!333065 lambda!332952))))

(declare-fun bs!1517327 () Bool)

(assert (= bs!1517327 (and b!6113104 d!1915398)))

(assert (=> bs!1517327 (= (and (= (regOne!32634 (regTwo!32635 r!7292)) (regOne!32634 r!7292)) (= (regTwo!32634 (regTwo!32635 r!7292)) (regTwo!32634 r!7292))) (= lambda!333065 lambda!333003))))

(declare-fun bs!1517328 () Bool)

(assert (= bs!1517328 (and b!6113104 b!6113114)))

(assert (=> bs!1517328 (not (= lambda!333065 lambda!333064))))

(declare-fun bs!1517329 () Bool)

(assert (= bs!1517329 (and b!6113104 b!6112435)))

(assert (=> bs!1517329 (= (and (= (regOne!32634 (regTwo!32635 r!7292)) (regOne!32634 r!7292)) (= (regTwo!32634 (regTwo!32635 r!7292)) (regTwo!32634 r!7292))) (= lambda!333065 lambda!333011))))

(declare-fun bs!1517330 () Bool)

(assert (= bs!1517330 (and b!6113104 d!1915396)))

(assert (=> bs!1517330 (not (= lambda!333065 lambda!332997))))

(declare-fun bs!1517333 () Bool)

(assert (= bs!1517333 (and b!6113104 b!6112912)))

(assert (=> bs!1517333 (not (= lambda!333065 lambda!333049))))

(assert (=> bs!1517326 (not (= lambda!333065 lambda!332951))))

(declare-fun bs!1517335 () Bool)

(assert (= bs!1517335 (and b!6113104 b!6112902)))

(assert (=> bs!1517335 (= (and (= (regOne!32634 (regTwo!32635 r!7292)) (regOne!32634 (regOne!32635 r!7292))) (= (regTwo!32634 (regTwo!32635 r!7292)) (regTwo!32634 (regOne!32635 r!7292)))) (= lambda!333065 lambda!333050))))

(declare-fun bs!1517337 () Bool)

(assert (= bs!1517337 (and b!6113104 d!1915658)))

(assert (=> bs!1517337 (not (= lambda!333065 lambda!333057))))

(assert (=> bs!1517327 (not (= lambda!333065 lambda!333002))))

(assert (=> b!6113104 true))

(assert (=> b!6113104 true))

(declare-fun e!3727408 () Bool)

(declare-fun call!505963 () Bool)

(assert (=> b!6113104 (= e!3727408 call!505963)))

(declare-fun b!6113105 () Bool)

(declare-fun c!1098410 () Bool)

(assert (=> b!6113105 (= c!1098410 ((_ is Union!16061) (regTwo!32635 r!7292)))))

(declare-fun e!3727411 () Bool)

(declare-fun e!3727413 () Bool)

(assert (=> b!6113105 (= e!3727411 e!3727413)))

(declare-fun bm!505957 () Bool)

(declare-fun call!505962 () Bool)

(assert (=> bm!505957 (= call!505962 (isEmpty!36289 s!2326))))

(declare-fun b!6113106 () Bool)

(declare-fun e!3727409 () Bool)

(assert (=> b!6113106 (= e!3727409 (matchRSpec!3162 (regTwo!32635 (regTwo!32635 r!7292)) s!2326))))

(declare-fun d!1915732 () Bool)

(declare-fun c!1098408 () Bool)

(assert (=> d!1915732 (= c!1098408 ((_ is EmptyExpr!16061) (regTwo!32635 r!7292)))))

(declare-fun e!3727412 () Bool)

(assert (=> d!1915732 (= (matchRSpec!3162 (regTwo!32635 r!7292) s!2326) e!3727412)))

(declare-fun bm!505958 () Bool)

(declare-fun c!1098411 () Bool)

(assert (=> bm!505958 (= call!505963 (Exists!3131 (ite c!1098411 lambda!333064 lambda!333065)))))

(declare-fun b!6113107 () Bool)

(declare-fun c!1098409 () Bool)

(assert (=> b!6113107 (= c!1098409 ((_ is ElementMatch!16061) (regTwo!32635 r!7292)))))

(declare-fun e!3727410 () Bool)

(assert (=> b!6113107 (= e!3727410 e!3727411)))

(declare-fun b!6113108 () Bool)

(assert (=> b!6113108 (= e!3727413 e!3727408)))

(assert (=> b!6113108 (= c!1098411 ((_ is Star!16061) (regTwo!32635 r!7292)))))

(declare-fun b!6113109 () Bool)

(declare-fun res!2535372 () Bool)

(declare-fun e!3727414 () Bool)

(assert (=> b!6113109 (=> res!2535372 e!3727414)))

(assert (=> b!6113109 (= res!2535372 call!505962)))

(assert (=> b!6113109 (= e!3727408 e!3727414)))

(declare-fun b!6113110 () Bool)

(assert (=> b!6113110 (= e!3727413 e!3727409)))

(declare-fun res!2535374 () Bool)

(assert (=> b!6113110 (= res!2535374 (matchRSpec!3162 (regOne!32635 (regTwo!32635 r!7292)) s!2326))))

(assert (=> b!6113110 (=> res!2535374 e!3727409)))

(declare-fun b!6113111 () Bool)

(assert (=> b!6113111 (= e!3727411 (= s!2326 (Cons!64360 (c!1098065 (regTwo!32635 r!7292)) Nil!64360)))))

(declare-fun b!6113112 () Bool)

(assert (=> b!6113112 (= e!3727412 call!505962)))

(declare-fun b!6113113 () Bool)

(assert (=> b!6113113 (= e!3727412 e!3727410)))

(declare-fun res!2535373 () Bool)

(assert (=> b!6113113 (= res!2535373 (not ((_ is EmptyLang!16061) (regTwo!32635 r!7292))))))

(assert (=> b!6113113 (=> (not res!2535373) (not e!3727410))))

(assert (=> b!6113114 (= e!3727414 call!505963)))

(assert (= (and d!1915732 c!1098408) b!6113112))

(assert (= (and d!1915732 (not c!1098408)) b!6113113))

(assert (= (and b!6113113 res!2535373) b!6113107))

(assert (= (and b!6113107 c!1098409) b!6113111))

(assert (= (and b!6113107 (not c!1098409)) b!6113105))

(assert (= (and b!6113105 c!1098410) b!6113110))

(assert (= (and b!6113105 (not c!1098410)) b!6113108))

(assert (= (and b!6113110 (not res!2535374)) b!6113106))

(assert (= (and b!6113108 c!1098411) b!6113109))

(assert (= (and b!6113108 (not c!1098411)) b!6113104))

(assert (= (and b!6113109 (not res!2535372)) b!6113114))

(assert (= (or b!6113114 b!6113104) bm!505958))

(assert (= (or b!6113112 b!6113109) bm!505957))

(assert (=> bm!505957 m!6961170))

(declare-fun m!6961866 () Bool)

(assert (=> b!6113106 m!6961866))

(declare-fun m!6961868 () Bool)

(assert (=> bm!505958 m!6961868))

(declare-fun m!6961870 () Bool)

(assert (=> b!6113110 m!6961870))

(assert (=> b!6112437 d!1915732))

(declare-fun d!1915744 () Bool)

(declare-fun res!2535382 () Bool)

(declare-fun e!3727426 () Bool)

(assert (=> d!1915744 (=> res!2535382 e!3727426)))

(assert (=> d!1915744 (= res!2535382 ((_ is ElementMatch!16061) lt!2330210))))

(assert (=> d!1915744 (= (validRegex!7797 lt!2330210) e!3727426)))

(declare-fun c!1098417 () Bool)

(declare-fun call!505966 () Bool)

(declare-fun c!1098416 () Bool)

(declare-fun bm!505961 () Bool)

(assert (=> bm!505961 (= call!505966 (validRegex!7797 (ite c!1098416 (reg!16390 lt!2330210) (ite c!1098417 (regOne!32635 lt!2330210) (regOne!32634 lt!2330210)))))))

(declare-fun b!6113128 () Bool)

(declare-fun e!3727430 () Bool)

(declare-fun e!3727427 () Bool)

(assert (=> b!6113128 (= e!3727430 e!3727427)))

(declare-fun res!2535381 () Bool)

(assert (=> b!6113128 (=> (not res!2535381) (not e!3727427))))

(declare-fun call!505968 () Bool)

(assert (=> b!6113128 (= res!2535381 call!505968)))

(declare-fun b!6113129 () Bool)

(declare-fun res!2535383 () Bool)

(assert (=> b!6113129 (=> res!2535383 e!3727430)))

(assert (=> b!6113129 (= res!2535383 (not ((_ is Concat!24906) lt!2330210)))))

(declare-fun e!3727424 () Bool)

(assert (=> b!6113129 (= e!3727424 e!3727430)))

(declare-fun b!6113130 () Bool)

(declare-fun e!3727429 () Bool)

(assert (=> b!6113130 (= e!3727429 call!505966)))

(declare-fun bm!505962 () Bool)

(declare-fun call!505967 () Bool)

(assert (=> bm!505962 (= call!505967 (validRegex!7797 (ite c!1098417 (regTwo!32635 lt!2330210) (regTwo!32634 lt!2330210))))))

(declare-fun b!6113131 () Bool)

(declare-fun res!2535384 () Bool)

(declare-fun e!3727425 () Bool)

(assert (=> b!6113131 (=> (not res!2535384) (not e!3727425))))

(assert (=> b!6113131 (= res!2535384 call!505968)))

(assert (=> b!6113131 (= e!3727424 e!3727425)))

(declare-fun bm!505963 () Bool)

(assert (=> bm!505963 (= call!505968 call!505966)))

(declare-fun b!6113132 () Bool)

(assert (=> b!6113132 (= e!3727427 call!505967)))

(declare-fun b!6113133 () Bool)

(declare-fun e!3727428 () Bool)

(assert (=> b!6113133 (= e!3727428 e!3727424)))

(assert (=> b!6113133 (= c!1098417 ((_ is Union!16061) lt!2330210))))

(declare-fun b!6113134 () Bool)

(assert (=> b!6113134 (= e!3727426 e!3727428)))

(assert (=> b!6113134 (= c!1098416 ((_ is Star!16061) lt!2330210))))

(declare-fun b!6113135 () Bool)

(assert (=> b!6113135 (= e!3727428 e!3727429)))

(declare-fun res!2535380 () Bool)

(assert (=> b!6113135 (= res!2535380 (not (nullable!6054 (reg!16390 lt!2330210))))))

(assert (=> b!6113135 (=> (not res!2535380) (not e!3727429))))

(declare-fun b!6113136 () Bool)

(assert (=> b!6113136 (= e!3727425 call!505967)))

(assert (= (and d!1915744 (not res!2535382)) b!6113134))

(assert (= (and b!6113134 c!1098416) b!6113135))

(assert (= (and b!6113134 (not c!1098416)) b!6113133))

(assert (= (and b!6113135 res!2535380) b!6113130))

(assert (= (and b!6113133 c!1098417) b!6113131))

(assert (= (and b!6113133 (not c!1098417)) b!6113129))

(assert (= (and b!6113131 res!2535384) b!6113136))

(assert (= (and b!6113129 (not res!2535383)) b!6113128))

(assert (= (and b!6113128 res!2535381) b!6113132))

(assert (= (or b!6113136 b!6113132) bm!505962))

(assert (= (or b!6113131 b!6113128) bm!505963))

(assert (= (or b!6113130 bm!505963) bm!505961))

(declare-fun m!6961872 () Bool)

(assert (=> bm!505961 m!6961872))

(declare-fun m!6961874 () Bool)

(assert (=> bm!505962 m!6961874))

(declare-fun m!6961876 () Bool)

(assert (=> b!6113135 m!6961876))

(assert (=> d!1915380 d!1915744))

(declare-fun d!1915746 () Bool)

(declare-fun res!2535385 () Bool)

(declare-fun e!3727432 () Bool)

(assert (=> d!1915746 (=> res!2535385 e!3727432)))

(assert (=> d!1915746 (= res!2535385 ((_ is Nil!64358) (exprs!5945 (h!70807 zl!343))))))

(assert (=> d!1915746 (= (forall!15182 (exprs!5945 (h!70807 zl!343)) lambda!332988) e!3727432)))

(declare-fun b!6113138 () Bool)

(declare-fun e!3727433 () Bool)

(assert (=> b!6113138 (= e!3727432 e!3727433)))

(declare-fun res!2535386 () Bool)

(assert (=> b!6113138 (=> (not res!2535386) (not e!3727433))))

(assert (=> b!6113138 (= res!2535386 (dynLambda!25345 lambda!332988 (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun b!6113139 () Bool)

(assert (=> b!6113139 (= e!3727433 (forall!15182 (t!377939 (exprs!5945 (h!70807 zl!343))) lambda!332988))))

(assert (= (and d!1915746 (not res!2535385)) b!6113138))

(assert (= (and b!6113138 res!2535386) b!6113139))

(declare-fun b_lambda!232823 () Bool)

(assert (=> (not b_lambda!232823) (not b!6113138)))

(declare-fun m!6961878 () Bool)

(assert (=> b!6113138 m!6961878))

(declare-fun m!6961882 () Bool)

(assert (=> b!6113139 m!6961882))

(assert (=> d!1915380 d!1915746))

(assert (=> bs!1517118 d!1915320))

(declare-fun d!1915748 () Bool)

(declare-fun res!2535389 () Bool)

(declare-fun e!3727438 () Bool)

(assert (=> d!1915748 (=> res!2535389 e!3727438)))

(assert (=> d!1915748 (= res!2535389 ((_ is ElementMatch!16061) (ite c!1098224 (regTwo!32635 r!7292) (regTwo!32634 r!7292))))))

(assert (=> d!1915748 (= (validRegex!7797 (ite c!1098224 (regTwo!32635 r!7292) (regTwo!32634 r!7292))) e!3727438)))

(declare-fun bm!505964 () Bool)

(declare-fun c!1098418 () Bool)

(declare-fun call!505969 () Bool)

(declare-fun c!1098419 () Bool)

(assert (=> bm!505964 (= call!505969 (validRegex!7797 (ite c!1098418 (reg!16390 (ite c!1098224 (regTwo!32635 r!7292) (regTwo!32634 r!7292))) (ite c!1098419 (regOne!32635 (ite c!1098224 (regTwo!32635 r!7292) (regTwo!32634 r!7292))) (regOne!32634 (ite c!1098224 (regTwo!32635 r!7292) (regTwo!32634 r!7292)))))))))

(declare-fun b!6113145 () Bool)

(declare-fun e!3727442 () Bool)

(declare-fun e!3727439 () Bool)

(assert (=> b!6113145 (= e!3727442 e!3727439)))

(declare-fun res!2535388 () Bool)

(assert (=> b!6113145 (=> (not res!2535388) (not e!3727439))))

(declare-fun call!505971 () Bool)

(assert (=> b!6113145 (= res!2535388 call!505971)))

(declare-fun b!6113146 () Bool)

(declare-fun res!2535390 () Bool)

(assert (=> b!6113146 (=> res!2535390 e!3727442)))

(assert (=> b!6113146 (= res!2535390 (not ((_ is Concat!24906) (ite c!1098224 (regTwo!32635 r!7292) (regTwo!32634 r!7292)))))))

(declare-fun e!3727436 () Bool)

(assert (=> b!6113146 (= e!3727436 e!3727442)))

(declare-fun b!6113147 () Bool)

(declare-fun e!3727441 () Bool)

(assert (=> b!6113147 (= e!3727441 call!505969)))

(declare-fun bm!505965 () Bool)

(declare-fun call!505970 () Bool)

(assert (=> bm!505965 (= call!505970 (validRegex!7797 (ite c!1098419 (regTwo!32635 (ite c!1098224 (regTwo!32635 r!7292) (regTwo!32634 r!7292))) (regTwo!32634 (ite c!1098224 (regTwo!32635 r!7292) (regTwo!32634 r!7292))))))))

(declare-fun b!6113148 () Bool)

(declare-fun res!2535391 () Bool)

(declare-fun e!3727437 () Bool)

(assert (=> b!6113148 (=> (not res!2535391) (not e!3727437))))

(assert (=> b!6113148 (= res!2535391 call!505971)))

(assert (=> b!6113148 (= e!3727436 e!3727437)))

(declare-fun bm!505966 () Bool)

(assert (=> bm!505966 (= call!505971 call!505969)))

(declare-fun b!6113149 () Bool)

(assert (=> b!6113149 (= e!3727439 call!505970)))

(declare-fun b!6113150 () Bool)

(declare-fun e!3727440 () Bool)

(assert (=> b!6113150 (= e!3727440 e!3727436)))

(assert (=> b!6113150 (= c!1098419 ((_ is Union!16061) (ite c!1098224 (regTwo!32635 r!7292) (regTwo!32634 r!7292))))))

(declare-fun b!6113151 () Bool)

(assert (=> b!6113151 (= e!3727438 e!3727440)))

(assert (=> b!6113151 (= c!1098418 ((_ is Star!16061) (ite c!1098224 (regTwo!32635 r!7292) (regTwo!32634 r!7292))))))

(declare-fun b!6113152 () Bool)

(assert (=> b!6113152 (= e!3727440 e!3727441)))

(declare-fun res!2535387 () Bool)

(assert (=> b!6113152 (= res!2535387 (not (nullable!6054 (reg!16390 (ite c!1098224 (regTwo!32635 r!7292) (regTwo!32634 r!7292))))))))

(assert (=> b!6113152 (=> (not res!2535387) (not e!3727441))))

(declare-fun b!6113153 () Bool)

(assert (=> b!6113153 (= e!3727437 call!505970)))

(assert (= (and d!1915748 (not res!2535389)) b!6113151))

(assert (= (and b!6113151 c!1098418) b!6113152))

(assert (= (and b!6113151 (not c!1098418)) b!6113150))

(assert (= (and b!6113152 res!2535387) b!6113147))

(assert (= (and b!6113150 c!1098419) b!6113148))

(assert (= (and b!6113150 (not c!1098419)) b!6113146))

(assert (= (and b!6113148 res!2535391) b!6113153))

(assert (= (and b!6113146 (not res!2535390)) b!6113145))

(assert (= (and b!6113145 res!2535388) b!6113149))

(assert (= (or b!6113153 b!6113149) bm!505965))

(assert (= (or b!6113148 b!6113145) bm!505966))

(assert (= (or b!6113147 bm!505966) bm!505964))

(declare-fun m!6961886 () Bool)

(assert (=> bm!505964 m!6961886))

(declare-fun m!6961888 () Bool)

(assert (=> bm!505965 m!6961888))

(declare-fun m!6961890 () Bool)

(assert (=> b!6113152 m!6961890))

(assert (=> bm!505841 d!1915748))

(declare-fun bm!505967 () Bool)

(declare-fun call!505972 () Bool)

(assert (=> bm!505967 (= call!505972 (isEmpty!36289 s!2326))))

(declare-fun b!6113169 () Bool)

(declare-fun res!2535397 () Bool)

(declare-fun e!3727451 () Bool)

(assert (=> b!6113169 (=> res!2535397 e!3727451)))

(declare-fun e!3727452 () Bool)

(assert (=> b!6113169 (= res!2535397 e!3727452)))

(declare-fun res!2535396 () Bool)

(assert (=> b!6113169 (=> (not res!2535396) (not e!3727452))))

(declare-fun lt!2330284 () Bool)

(assert (=> b!6113169 (= res!2535396 lt!2330284)))

(declare-fun b!6113170 () Bool)

(declare-fun e!3727453 () Bool)

(assert (=> b!6113170 (= e!3727453 (not lt!2330284))))

(declare-fun b!6113171 () Bool)

(declare-fun e!3727449 () Bool)

(assert (=> b!6113171 (= e!3727449 e!3727453)))

(declare-fun c!1098420 () Bool)

(assert (=> b!6113171 (= c!1098420 ((_ is EmptyLang!16061) (regTwo!32634 r!7292)))))

(declare-fun d!1915750 () Bool)

(assert (=> d!1915750 e!3727449))

(declare-fun c!1098421 () Bool)

(assert (=> d!1915750 (= c!1098421 ((_ is EmptyExpr!16061) (regTwo!32634 r!7292)))))

(declare-fun e!3727450 () Bool)

(assert (=> d!1915750 (= lt!2330284 e!3727450)))

(declare-fun c!1098422 () Bool)

(assert (=> d!1915750 (= c!1098422 (isEmpty!36289 s!2326))))

(assert (=> d!1915750 (validRegex!7797 (regTwo!32634 r!7292))))

(assert (=> d!1915750 (= (matchR!8244 (regTwo!32634 r!7292) s!2326) lt!2330284)))

(declare-fun b!6113172 () Bool)

(declare-fun e!3727454 () Bool)

(assert (=> b!6113172 (= e!3727454 (not (= (head!12643 s!2326) (c!1098065 (regTwo!32634 r!7292)))))))

(declare-fun b!6113173 () Bool)

(declare-fun e!3727455 () Bool)

(assert (=> b!6113173 (= e!3727455 e!3727454)))

(declare-fun res!2535394 () Bool)

(assert (=> b!6113173 (=> res!2535394 e!3727454)))

(assert (=> b!6113173 (= res!2535394 call!505972)))

(declare-fun b!6113174 () Bool)

(declare-fun res!2535392 () Bool)

(assert (=> b!6113174 (=> res!2535392 e!3727451)))

(assert (=> b!6113174 (= res!2535392 (not ((_ is ElementMatch!16061) (regTwo!32634 r!7292))))))

(assert (=> b!6113174 (= e!3727453 e!3727451)))

(declare-fun b!6113175 () Bool)

(declare-fun res!2535399 () Bool)

(assert (=> b!6113175 (=> res!2535399 e!3727454)))

(assert (=> b!6113175 (= res!2535399 (not (isEmpty!36289 (tail!11728 s!2326))))))

(declare-fun b!6113176 () Bool)

(assert (=> b!6113176 (= e!3727449 (= lt!2330284 call!505972))))

(declare-fun b!6113177 () Bool)

(assert (=> b!6113177 (= e!3727450 (matchR!8244 (derivativeStep!4782 (regTwo!32634 r!7292) (head!12643 s!2326)) (tail!11728 s!2326)))))

(declare-fun b!6113178 () Bool)

(assert (=> b!6113178 (= e!3727450 (nullable!6054 (regTwo!32634 r!7292)))))

(declare-fun b!6113179 () Bool)

(assert (=> b!6113179 (= e!3727452 (= (head!12643 s!2326) (c!1098065 (regTwo!32634 r!7292))))))

(declare-fun b!6113180 () Bool)

(declare-fun res!2535395 () Bool)

(assert (=> b!6113180 (=> (not res!2535395) (not e!3727452))))

(assert (=> b!6113180 (= res!2535395 (isEmpty!36289 (tail!11728 s!2326)))))

(declare-fun b!6113181 () Bool)

(assert (=> b!6113181 (= e!3727451 e!3727455)))

(declare-fun res!2535393 () Bool)

(assert (=> b!6113181 (=> (not res!2535393) (not e!3727455))))

(assert (=> b!6113181 (= res!2535393 (not lt!2330284))))

(declare-fun b!6113182 () Bool)

(declare-fun res!2535398 () Bool)

(assert (=> b!6113182 (=> (not res!2535398) (not e!3727452))))

(assert (=> b!6113182 (= res!2535398 (not call!505972))))

(assert (= (and d!1915750 c!1098422) b!6113178))

(assert (= (and d!1915750 (not c!1098422)) b!6113177))

(assert (= (and d!1915750 c!1098421) b!6113176))

(assert (= (and d!1915750 (not c!1098421)) b!6113171))

(assert (= (and b!6113171 c!1098420) b!6113170))

(assert (= (and b!6113171 (not c!1098420)) b!6113174))

(assert (= (and b!6113174 (not res!2535392)) b!6113169))

(assert (= (and b!6113169 res!2535396) b!6113182))

(assert (= (and b!6113182 res!2535398) b!6113180))

(assert (= (and b!6113180 res!2535395) b!6113179))

(assert (= (and b!6113169 (not res!2535397)) b!6113181))

(assert (= (and b!6113181 res!2535393) b!6113173))

(assert (= (and b!6113173 (not res!2535394)) b!6113175))

(assert (= (and b!6113175 (not res!2535399)) b!6113172))

(assert (= (or b!6113176 b!6113173 b!6113182) bm!505967))

(assert (=> bm!505967 m!6961170))

(declare-fun m!6961892 () Bool)

(assert (=> b!6113178 m!6961892))

(assert (=> b!6113177 m!6961180))

(assert (=> b!6113177 m!6961180))

(declare-fun m!6961894 () Bool)

(assert (=> b!6113177 m!6961894))

(assert (=> b!6113177 m!6961184))

(assert (=> b!6113177 m!6961894))

(assert (=> b!6113177 m!6961184))

(declare-fun m!6961896 () Bool)

(assert (=> b!6113177 m!6961896))

(assert (=> b!6113179 m!6961180))

(assert (=> b!6113175 m!6961184))

(assert (=> b!6113175 m!6961184))

(assert (=> b!6113175 m!6961188))

(assert (=> d!1915750 m!6961170))

(declare-fun m!6961898 () Bool)

(assert (=> d!1915750 m!6961898))

(assert (=> b!6113180 m!6961184))

(assert (=> b!6113180 m!6961184))

(assert (=> b!6113180 m!6961188))

(assert (=> b!6113172 m!6961180))

(assert (=> b!6112363 d!1915750))

(declare-fun b!6113292 () Bool)

(declare-fun e!3727497 () Bool)

(declare-fun e!3727496 () Bool)

(assert (=> b!6113292 (= e!3727497 e!3727496)))

(declare-fun res!2535413 () Bool)

(declare-fun call!505977 () Bool)

(assert (=> b!6113292 (= res!2535413 call!505977)))

(assert (=> b!6113292 (=> (not res!2535413) (not e!3727496))))

(declare-fun b!6113293 () Bool)

(declare-fun e!3727495 () Bool)

(assert (=> b!6113293 (= e!3727497 e!3727495)))

(declare-fun res!2535411 () Bool)

(assert (=> b!6113293 (= res!2535411 call!505977)))

(assert (=> b!6113293 (=> res!2535411 e!3727495)))

(declare-fun b!6113294 () Bool)

(declare-fun call!505978 () Bool)

(assert (=> b!6113294 (= e!3727495 call!505978)))

(declare-fun d!1915752 () Bool)

(declare-fun res!2535414 () Bool)

(declare-fun e!3727494 () Bool)

(assert (=> d!1915752 (=> res!2535414 e!3727494)))

(assert (=> d!1915752 (= res!2535414 ((_ is EmptyExpr!16061) (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(assert (=> d!1915752 (= (nullableFct!2017 (h!70806 (exprs!5945 (h!70807 zl!343)))) e!3727494)))

(declare-fun bm!505972 () Bool)

(declare-fun c!1098425 () Bool)

(assert (=> bm!505972 (= call!505978 (nullable!6054 (ite c!1098425 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regTwo!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))))))))

(declare-fun b!6113295 () Bool)

(assert (=> b!6113295 (= e!3727496 call!505978)))

(declare-fun b!6113296 () Bool)

(declare-fun e!3727498 () Bool)

(declare-fun e!3727499 () Bool)

(assert (=> b!6113296 (= e!3727498 e!3727499)))

(declare-fun res!2535412 () Bool)

(assert (=> b!6113296 (=> res!2535412 e!3727499)))

(assert (=> b!6113296 (= res!2535412 ((_ is Star!16061) (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun bm!505973 () Bool)

(assert (=> bm!505973 (= call!505977 (nullable!6054 (ite c!1098425 (regOne!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))))))))

(declare-fun b!6113297 () Bool)

(assert (=> b!6113297 (= e!3727494 e!3727498)))

(declare-fun res!2535410 () Bool)

(assert (=> b!6113297 (=> (not res!2535410) (not e!3727498))))

(assert (=> b!6113297 (= res!2535410 (and (not ((_ is EmptyLang!16061) (h!70806 (exprs!5945 (h!70807 zl!343))))) (not ((_ is ElementMatch!16061) (h!70806 (exprs!5945 (h!70807 zl!343)))))))))

(declare-fun b!6113298 () Bool)

(assert (=> b!6113298 (= e!3727499 e!3727497)))

(assert (=> b!6113298 (= c!1098425 ((_ is Union!16061) (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(assert (= (and d!1915752 (not res!2535414)) b!6113297))

(assert (= (and b!6113297 res!2535410) b!6113296))

(assert (= (and b!6113296 (not res!2535412)) b!6113298))

(assert (= (and b!6113298 c!1098425) b!6113293))

(assert (= (and b!6113298 (not c!1098425)) b!6113292))

(assert (= (and b!6113293 (not res!2535411)) b!6113294))

(assert (= (and b!6113292 res!2535413) b!6113295))

(assert (= (or b!6113294 b!6113295) bm!505972))

(assert (= (or b!6113293 b!6113292) bm!505973))

(declare-fun m!6961910 () Bool)

(assert (=> bm!505972 m!6961910))

(declare-fun m!6961912 () Bool)

(assert (=> bm!505973 m!6961912))

(assert (=> d!1915308 d!1915752))

(declare-fun bs!1517345 () Bool)

(declare-fun d!1915766 () Bool)

(assert (= bs!1517345 (and d!1915766 d!1915408)))

(declare-fun lambda!333067 () Int)

(assert (=> bs!1517345 (= lambda!333067 lambda!333004)))

(declare-fun bs!1517346 () Bool)

(assert (= bs!1517346 (and d!1915766 d!1915492)))

(assert (=> bs!1517346 (= lambda!333067 lambda!333024)))

(declare-fun bs!1517347 () Bool)

(assert (= bs!1517347 (and d!1915766 d!1915552)))

(assert (=> bs!1517347 (= lambda!333067 lambda!333033)))

(declare-fun bs!1517348 () Bool)

(assert (= bs!1517348 (and d!1915766 d!1915368)))

(assert (=> bs!1517348 (= lambda!333067 lambda!332979)))

(declare-fun bs!1517349 () Bool)

(assert (= bs!1517349 (and d!1915766 d!1915362)))

(assert (=> bs!1517349 (= lambda!333067 lambda!332976)))

(declare-fun bs!1517350 () Bool)

(assert (= bs!1517350 (and d!1915766 d!1915676)))

(assert (=> bs!1517350 (= lambda!333067 lambda!333058)))

(declare-fun bs!1517351 () Bool)

(assert (= bs!1517351 (and d!1915766 d!1915646)))

(assert (=> bs!1517351 (= lambda!333067 lambda!333053)))

(declare-fun bs!1517352 () Bool)

(assert (= bs!1517352 (and d!1915766 d!1915340)))

(assert (=> bs!1517352 (= lambda!333067 lambda!332965)))

(declare-fun bs!1517353 () Bool)

(assert (= bs!1517353 (and d!1915766 d!1915410)))

(assert (=> bs!1517353 (= lambda!333067 lambda!333005)))

(declare-fun bs!1517354 () Bool)

(assert (= bs!1517354 (and d!1915766 d!1915380)))

(assert (=> bs!1517354 (= lambda!333067 lambda!332988)))

(assert (=> d!1915766 (= (inv!83399 setElem!41302) (forall!15182 (exprs!5945 setElem!41302) lambda!333067))))

(declare-fun bs!1517355 () Bool)

(assert (= bs!1517355 d!1915766))

(declare-fun m!6961914 () Bool)

(assert (=> bs!1517355 m!6961914))

(assert (=> setNonEmpty!41302 d!1915766))

(declare-fun bm!505974 () Bool)

(declare-fun call!505979 () Bool)

(assert (=> bm!505974 (= call!505979 (isEmpty!36289 (tail!11728 s!2326)))))

(declare-fun b!6113299 () Bool)

(declare-fun res!2535420 () Bool)

(declare-fun e!3727502 () Bool)

(assert (=> b!6113299 (=> res!2535420 e!3727502)))

(declare-fun e!3727503 () Bool)

(assert (=> b!6113299 (= res!2535420 e!3727503)))

(declare-fun res!2535419 () Bool)

(assert (=> b!6113299 (=> (not res!2535419) (not e!3727503))))

(declare-fun lt!2330285 () Bool)

(assert (=> b!6113299 (= res!2535419 lt!2330285)))

(declare-fun b!6113300 () Bool)

(declare-fun e!3727504 () Bool)

(assert (=> b!6113300 (= e!3727504 (not lt!2330285))))

(declare-fun b!6113301 () Bool)

(declare-fun e!3727500 () Bool)

(assert (=> b!6113301 (= e!3727500 e!3727504)))

(declare-fun c!1098426 () Bool)

(assert (=> b!6113301 (= c!1098426 ((_ is EmptyLang!16061) (derivativeStep!4782 r!7292 (head!12643 s!2326))))))

(declare-fun d!1915768 () Bool)

(assert (=> d!1915768 e!3727500))

(declare-fun c!1098427 () Bool)

(assert (=> d!1915768 (= c!1098427 ((_ is EmptyExpr!16061) (derivativeStep!4782 r!7292 (head!12643 s!2326))))))

(declare-fun e!3727501 () Bool)

(assert (=> d!1915768 (= lt!2330285 e!3727501)))

(declare-fun c!1098428 () Bool)

(assert (=> d!1915768 (= c!1098428 (isEmpty!36289 (tail!11728 s!2326)))))

(assert (=> d!1915768 (validRegex!7797 (derivativeStep!4782 r!7292 (head!12643 s!2326)))))

(assert (=> d!1915768 (= (matchR!8244 (derivativeStep!4782 r!7292 (head!12643 s!2326)) (tail!11728 s!2326)) lt!2330285)))

(declare-fun b!6113302 () Bool)

(declare-fun e!3727505 () Bool)

(assert (=> b!6113302 (= e!3727505 (not (= (head!12643 (tail!11728 s!2326)) (c!1098065 (derivativeStep!4782 r!7292 (head!12643 s!2326))))))))

(declare-fun b!6113303 () Bool)

(declare-fun e!3727506 () Bool)

(assert (=> b!6113303 (= e!3727506 e!3727505)))

(declare-fun res!2535417 () Bool)

(assert (=> b!6113303 (=> res!2535417 e!3727505)))

(assert (=> b!6113303 (= res!2535417 call!505979)))

(declare-fun b!6113304 () Bool)

(declare-fun res!2535415 () Bool)

(assert (=> b!6113304 (=> res!2535415 e!3727502)))

(assert (=> b!6113304 (= res!2535415 (not ((_ is ElementMatch!16061) (derivativeStep!4782 r!7292 (head!12643 s!2326)))))))

(assert (=> b!6113304 (= e!3727504 e!3727502)))

(declare-fun b!6113305 () Bool)

(declare-fun res!2535422 () Bool)

(assert (=> b!6113305 (=> res!2535422 e!3727505)))

(assert (=> b!6113305 (= res!2535422 (not (isEmpty!36289 (tail!11728 (tail!11728 s!2326)))))))

(declare-fun b!6113306 () Bool)

(assert (=> b!6113306 (= e!3727500 (= lt!2330285 call!505979))))

(declare-fun b!6113307 () Bool)

(assert (=> b!6113307 (= e!3727501 (matchR!8244 (derivativeStep!4782 (derivativeStep!4782 r!7292 (head!12643 s!2326)) (head!12643 (tail!11728 s!2326))) (tail!11728 (tail!11728 s!2326))))))

(declare-fun b!6113308 () Bool)

(assert (=> b!6113308 (= e!3727501 (nullable!6054 (derivativeStep!4782 r!7292 (head!12643 s!2326))))))

(declare-fun b!6113309 () Bool)

(assert (=> b!6113309 (= e!3727503 (= (head!12643 (tail!11728 s!2326)) (c!1098065 (derivativeStep!4782 r!7292 (head!12643 s!2326)))))))

(declare-fun b!6113310 () Bool)

(declare-fun res!2535418 () Bool)

(assert (=> b!6113310 (=> (not res!2535418) (not e!3727503))))

(assert (=> b!6113310 (= res!2535418 (isEmpty!36289 (tail!11728 (tail!11728 s!2326))))))

(declare-fun b!6113311 () Bool)

(assert (=> b!6113311 (= e!3727502 e!3727506)))

(declare-fun res!2535416 () Bool)

(assert (=> b!6113311 (=> (not res!2535416) (not e!3727506))))

(assert (=> b!6113311 (= res!2535416 (not lt!2330285))))

(declare-fun b!6113312 () Bool)

(declare-fun res!2535421 () Bool)

(assert (=> b!6113312 (=> (not res!2535421) (not e!3727503))))

(assert (=> b!6113312 (= res!2535421 (not call!505979))))

(assert (= (and d!1915768 c!1098428) b!6113308))

(assert (= (and d!1915768 (not c!1098428)) b!6113307))

(assert (= (and d!1915768 c!1098427) b!6113306))

(assert (= (and d!1915768 (not c!1098427)) b!6113301))

(assert (= (and b!6113301 c!1098426) b!6113300))

(assert (= (and b!6113301 (not c!1098426)) b!6113304))

(assert (= (and b!6113304 (not res!2535415)) b!6113299))

(assert (= (and b!6113299 res!2535419) b!6113312))

(assert (= (and b!6113312 res!2535421) b!6113310))

(assert (= (and b!6113310 res!2535418) b!6113309))

(assert (= (and b!6113299 (not res!2535420)) b!6113311))

(assert (= (and b!6113311 res!2535416) b!6113303))

(assert (= (and b!6113303 (not res!2535417)) b!6113305))

(assert (= (and b!6113305 (not res!2535422)) b!6113302))

(assert (= (or b!6113306 b!6113303 b!6113312) bm!505974))

(assert (=> bm!505974 m!6961184))

(assert (=> bm!505974 m!6961188))

(assert (=> b!6113308 m!6961182))

(declare-fun m!6961916 () Bool)

(assert (=> b!6113308 m!6961916))

(assert (=> b!6113307 m!6961184))

(declare-fun m!6961918 () Bool)

(assert (=> b!6113307 m!6961918))

(assert (=> b!6113307 m!6961182))

(assert (=> b!6113307 m!6961918))

(declare-fun m!6961920 () Bool)

(assert (=> b!6113307 m!6961920))

(assert (=> b!6113307 m!6961184))

(declare-fun m!6961922 () Bool)

(assert (=> b!6113307 m!6961922))

(assert (=> b!6113307 m!6961920))

(assert (=> b!6113307 m!6961922))

(declare-fun m!6961924 () Bool)

(assert (=> b!6113307 m!6961924))

(assert (=> b!6113309 m!6961184))

(assert (=> b!6113309 m!6961918))

(assert (=> b!6113305 m!6961184))

(assert (=> b!6113305 m!6961922))

(assert (=> b!6113305 m!6961922))

(declare-fun m!6961926 () Bool)

(assert (=> b!6113305 m!6961926))

(assert (=> d!1915768 m!6961184))

(assert (=> d!1915768 m!6961188))

(assert (=> d!1915768 m!6961182))

(declare-fun m!6961928 () Bool)

(assert (=> d!1915768 m!6961928))

(assert (=> b!6113310 m!6961184))

(assert (=> b!6113310 m!6961922))

(assert (=> b!6113310 m!6961922))

(assert (=> b!6113310 m!6961926))

(assert (=> b!6113302 m!6961184))

(assert (=> b!6113302 m!6961918))

(assert (=> b!6112482 d!1915768))

(declare-fun b!6113333 () Bool)

(declare-fun e!3727521 () Regex!16061)

(assert (=> b!6113333 (= e!3727521 (ite (= (head!12643 s!2326) (c!1098065 r!7292)) EmptyExpr!16061 EmptyLang!16061))))

(declare-fun b!6113334 () Bool)

(declare-fun e!3727519 () Regex!16061)

(assert (=> b!6113334 (= e!3727519 e!3727521)))

(declare-fun c!1098441 () Bool)

(assert (=> b!6113334 (= c!1098441 ((_ is ElementMatch!16061) r!7292))))

(declare-fun d!1915770 () Bool)

(declare-fun lt!2330288 () Regex!16061)

(assert (=> d!1915770 (validRegex!7797 lt!2330288)))

(assert (=> d!1915770 (= lt!2330288 e!3727519)))

(declare-fun c!1098439 () Bool)

(assert (=> d!1915770 (= c!1098439 (or ((_ is EmptyExpr!16061) r!7292) ((_ is EmptyLang!16061) r!7292)))))

(assert (=> d!1915770 (validRegex!7797 r!7292)))

(assert (=> d!1915770 (= (derivativeStep!4782 r!7292 (head!12643 s!2326)) lt!2330288)))

(declare-fun c!1098443 () Bool)

(declare-fun bm!505983 () Bool)

(declare-fun call!505990 () Regex!16061)

(declare-fun c!1098440 () Bool)

(assert (=> bm!505983 (= call!505990 (derivativeStep!4782 (ite c!1098443 (regOne!32635 r!7292) (ite c!1098440 (regTwo!32634 r!7292) (regOne!32634 r!7292))) (head!12643 s!2326)))))

(declare-fun b!6113335 () Bool)

(declare-fun e!3727520 () Regex!16061)

(declare-fun call!505988 () Regex!16061)

(assert (=> b!6113335 (= e!3727520 (Concat!24906 call!505988 r!7292))))

(declare-fun b!6113336 () Bool)

(assert (=> b!6113336 (= c!1098440 (nullable!6054 (regOne!32634 r!7292)))))

(declare-fun e!3727517 () Regex!16061)

(assert (=> b!6113336 (= e!3727520 e!3727517)))

(declare-fun b!6113337 () Bool)

(declare-fun call!505989 () Regex!16061)

(assert (=> b!6113337 (= e!3727517 (Union!16061 (Concat!24906 call!505989 (regTwo!32634 r!7292)) EmptyLang!16061))))

(declare-fun bm!505984 () Bool)

(declare-fun call!505991 () Regex!16061)

(assert (=> bm!505984 (= call!505988 call!505991)))

(declare-fun b!6113338 () Bool)

(declare-fun e!3727518 () Regex!16061)

(assert (=> b!6113338 (= e!3727518 (Union!16061 call!505990 call!505991))))

(declare-fun bm!505985 () Bool)

(assert (=> bm!505985 (= call!505989 call!505990)))

(declare-fun b!6113339 () Bool)

(assert (=> b!6113339 (= e!3727519 EmptyLang!16061)))

(declare-fun b!6113340 () Bool)

(assert (=> b!6113340 (= c!1098443 ((_ is Union!16061) r!7292))))

(assert (=> b!6113340 (= e!3727521 e!3727518)))

(declare-fun b!6113341 () Bool)

(assert (=> b!6113341 (= e!3727518 e!3727520)))

(declare-fun c!1098442 () Bool)

(assert (=> b!6113341 (= c!1098442 ((_ is Star!16061) r!7292))))

(declare-fun bm!505986 () Bool)

(assert (=> bm!505986 (= call!505991 (derivativeStep!4782 (ite c!1098443 (regTwo!32635 r!7292) (ite c!1098442 (reg!16390 r!7292) (regOne!32634 r!7292))) (head!12643 s!2326)))))

(declare-fun b!6113342 () Bool)

(assert (=> b!6113342 (= e!3727517 (Union!16061 (Concat!24906 call!505988 (regTwo!32634 r!7292)) call!505989))))

(assert (= (and d!1915770 c!1098439) b!6113339))

(assert (= (and d!1915770 (not c!1098439)) b!6113334))

(assert (= (and b!6113334 c!1098441) b!6113333))

(assert (= (and b!6113334 (not c!1098441)) b!6113340))

(assert (= (and b!6113340 c!1098443) b!6113338))

(assert (= (and b!6113340 (not c!1098443)) b!6113341))

(assert (= (and b!6113341 c!1098442) b!6113335))

(assert (= (and b!6113341 (not c!1098442)) b!6113336))

(assert (= (and b!6113336 c!1098440) b!6113342))

(assert (= (and b!6113336 (not c!1098440)) b!6113337))

(assert (= (or b!6113342 b!6113337) bm!505985))

(assert (= (or b!6113335 b!6113342) bm!505984))

(assert (= (or b!6113338 bm!505984) bm!505986))

(assert (= (or b!6113338 bm!505985) bm!505983))

(declare-fun m!6961930 () Bool)

(assert (=> d!1915770 m!6961930))

(assert (=> d!1915770 m!6960800))

(assert (=> bm!505983 m!6961180))

(declare-fun m!6961932 () Bool)

(assert (=> bm!505983 m!6961932))

(assert (=> b!6113336 m!6961840))

(assert (=> bm!505986 m!6961180))

(declare-fun m!6961934 () Bool)

(assert (=> bm!505986 m!6961934))

(assert (=> b!6112482 d!1915770))

(assert (=> b!6112482 d!1915508))

(assert (=> b!6112482 d!1915680))

(declare-fun d!1915772 () Bool)

(declare-fun res!2535423 () Bool)

(declare-fun e!3727522 () Bool)

(assert (=> d!1915772 (=> res!2535423 e!3727522)))

(assert (=> d!1915772 (= res!2535423 ((_ is Nil!64358) (exprs!5945 (h!70807 zl!343))))))

(assert (=> d!1915772 (= (forall!15182 (exprs!5945 (h!70807 zl!343)) lambda!333004) e!3727522)))

(declare-fun b!6113343 () Bool)

(declare-fun e!3727523 () Bool)

(assert (=> b!6113343 (= e!3727522 e!3727523)))

(declare-fun res!2535424 () Bool)

(assert (=> b!6113343 (=> (not res!2535424) (not e!3727523))))

(assert (=> b!6113343 (= res!2535424 (dynLambda!25345 lambda!333004 (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun b!6113344 () Bool)

(assert (=> b!6113344 (= e!3727523 (forall!15182 (t!377939 (exprs!5945 (h!70807 zl!343))) lambda!333004))))

(assert (= (and d!1915772 (not res!2535423)) b!6113343))

(assert (= (and b!6113343 res!2535424) b!6113344))

(declare-fun b_lambda!232839 () Bool)

(assert (=> (not b_lambda!232839) (not b!6113343)))

(declare-fun m!6961936 () Bool)

(assert (=> b!6113343 m!6961936))

(declare-fun m!6961938 () Bool)

(assert (=> b!6113344 m!6961938))

(assert (=> d!1915408 d!1915772))

(assert (=> b!6112480 d!1915678))

(assert (=> b!6112480 d!1915680))

(assert (=> d!1915418 d!1915416))

(assert (=> d!1915418 d!1915414))

(declare-fun d!1915774 () Bool)

(assert (=> d!1915774 (= (matchR!8244 r!7292 s!2326) (matchRSpec!3162 r!7292 s!2326))))

(assert (=> d!1915774 true))

(declare-fun _$88!4608 () Unit!157399)

(assert (=> d!1915774 (= (choose!45434 r!7292 s!2326) _$88!4608)))

(declare-fun bs!1517356 () Bool)

(assert (= bs!1517356 d!1915774))

(assert (=> bs!1517356 m!6960766))

(assert (=> bs!1517356 m!6960764))

(assert (=> d!1915418 d!1915774))

(assert (=> d!1915418 d!1915412))

(declare-fun bm!505987 () Bool)

(declare-fun call!505992 () Bool)

(assert (=> bm!505987 (= call!505992 (isEmpty!36289 (_2!36343 (get!22194 lt!2330234))))))

(declare-fun b!6113345 () Bool)

(declare-fun res!2535430 () Bool)

(declare-fun e!3727526 () Bool)

(assert (=> b!6113345 (=> res!2535430 e!3727526)))

(declare-fun e!3727527 () Bool)

(assert (=> b!6113345 (= res!2535430 e!3727527)))

(declare-fun res!2535429 () Bool)

(assert (=> b!6113345 (=> (not res!2535429) (not e!3727527))))

(declare-fun lt!2330289 () Bool)

(assert (=> b!6113345 (= res!2535429 lt!2330289)))

(declare-fun b!6113346 () Bool)

(declare-fun e!3727528 () Bool)

(assert (=> b!6113346 (= e!3727528 (not lt!2330289))))

(declare-fun b!6113347 () Bool)

(declare-fun e!3727524 () Bool)

(assert (=> b!6113347 (= e!3727524 e!3727528)))

(declare-fun c!1098444 () Bool)

(assert (=> b!6113347 (= c!1098444 ((_ is EmptyLang!16061) (regTwo!32634 r!7292)))))

(declare-fun d!1915776 () Bool)

(assert (=> d!1915776 e!3727524))

(declare-fun c!1098445 () Bool)

(assert (=> d!1915776 (= c!1098445 ((_ is EmptyExpr!16061) (regTwo!32634 r!7292)))))

(declare-fun e!3727525 () Bool)

(assert (=> d!1915776 (= lt!2330289 e!3727525)))

(declare-fun c!1098446 () Bool)

(assert (=> d!1915776 (= c!1098446 (isEmpty!36289 (_2!36343 (get!22194 lt!2330234))))))

(assert (=> d!1915776 (validRegex!7797 (regTwo!32634 r!7292))))

(assert (=> d!1915776 (= (matchR!8244 (regTwo!32634 r!7292) (_2!36343 (get!22194 lt!2330234))) lt!2330289)))

(declare-fun b!6113348 () Bool)

(declare-fun e!3727529 () Bool)

(assert (=> b!6113348 (= e!3727529 (not (= (head!12643 (_2!36343 (get!22194 lt!2330234))) (c!1098065 (regTwo!32634 r!7292)))))))

(declare-fun b!6113349 () Bool)

(declare-fun e!3727530 () Bool)

(assert (=> b!6113349 (= e!3727530 e!3727529)))

(declare-fun res!2535427 () Bool)

(assert (=> b!6113349 (=> res!2535427 e!3727529)))

(assert (=> b!6113349 (= res!2535427 call!505992)))

(declare-fun b!6113350 () Bool)

(declare-fun res!2535425 () Bool)

(assert (=> b!6113350 (=> res!2535425 e!3727526)))

(assert (=> b!6113350 (= res!2535425 (not ((_ is ElementMatch!16061) (regTwo!32634 r!7292))))))

(assert (=> b!6113350 (= e!3727528 e!3727526)))

(declare-fun b!6113351 () Bool)

(declare-fun res!2535432 () Bool)

(assert (=> b!6113351 (=> res!2535432 e!3727529)))

(assert (=> b!6113351 (= res!2535432 (not (isEmpty!36289 (tail!11728 (_2!36343 (get!22194 lt!2330234))))))))

(declare-fun b!6113352 () Bool)

(assert (=> b!6113352 (= e!3727524 (= lt!2330289 call!505992))))

(declare-fun b!6113353 () Bool)

(assert (=> b!6113353 (= e!3727525 (matchR!8244 (derivativeStep!4782 (regTwo!32634 r!7292) (head!12643 (_2!36343 (get!22194 lt!2330234)))) (tail!11728 (_2!36343 (get!22194 lt!2330234)))))))

(declare-fun b!6113354 () Bool)

(assert (=> b!6113354 (= e!3727525 (nullable!6054 (regTwo!32634 r!7292)))))

(declare-fun b!6113355 () Bool)

(assert (=> b!6113355 (= e!3727527 (= (head!12643 (_2!36343 (get!22194 lt!2330234))) (c!1098065 (regTwo!32634 r!7292))))))

(declare-fun b!6113356 () Bool)

(declare-fun res!2535428 () Bool)

(assert (=> b!6113356 (=> (not res!2535428) (not e!3727527))))

(assert (=> b!6113356 (= res!2535428 (isEmpty!36289 (tail!11728 (_2!36343 (get!22194 lt!2330234)))))))

(declare-fun b!6113357 () Bool)

(assert (=> b!6113357 (= e!3727526 e!3727530)))

(declare-fun res!2535426 () Bool)

(assert (=> b!6113357 (=> (not res!2535426) (not e!3727530))))

(assert (=> b!6113357 (= res!2535426 (not lt!2330289))))

(declare-fun b!6113358 () Bool)

(declare-fun res!2535431 () Bool)

(assert (=> b!6113358 (=> (not res!2535431) (not e!3727527))))

(assert (=> b!6113358 (= res!2535431 (not call!505992))))

(assert (= (and d!1915776 c!1098446) b!6113354))

(assert (= (and d!1915776 (not c!1098446)) b!6113353))

(assert (= (and d!1915776 c!1098445) b!6113352))

(assert (= (and d!1915776 (not c!1098445)) b!6113347))

(assert (= (and b!6113347 c!1098444) b!6113346))

(assert (= (and b!6113347 (not c!1098444)) b!6113350))

(assert (= (and b!6113350 (not res!2535425)) b!6113345))

(assert (= (and b!6113345 res!2535429) b!6113358))

(assert (= (and b!6113358 res!2535431) b!6113356))

(assert (= (and b!6113356 res!2535428) b!6113355))

(assert (= (and b!6113345 (not res!2535430)) b!6113357))

(assert (= (and b!6113357 res!2535426) b!6113349))

(assert (= (and b!6113349 (not res!2535427)) b!6113351))

(assert (= (and b!6113351 (not res!2535432)) b!6113348))

(assert (= (or b!6113352 b!6113349 b!6113358) bm!505987))

(declare-fun m!6961940 () Bool)

(assert (=> bm!505987 m!6961940))

(assert (=> b!6113354 m!6961892))

(declare-fun m!6961942 () Bool)

(assert (=> b!6113353 m!6961942))

(assert (=> b!6113353 m!6961942))

(declare-fun m!6961944 () Bool)

(assert (=> b!6113353 m!6961944))

(declare-fun m!6961946 () Bool)

(assert (=> b!6113353 m!6961946))

(assert (=> b!6113353 m!6961944))

(assert (=> b!6113353 m!6961946))

(declare-fun m!6961948 () Bool)

(assert (=> b!6113353 m!6961948))

(assert (=> b!6113355 m!6961942))

(assert (=> b!6113351 m!6961946))

(assert (=> b!6113351 m!6961946))

(declare-fun m!6961950 () Bool)

(assert (=> b!6113351 m!6961950))

(assert (=> d!1915776 m!6961940))

(assert (=> d!1915776 m!6961898))

(assert (=> b!6113356 m!6961946))

(assert (=> b!6113356 m!6961946))

(assert (=> b!6113356 m!6961950))

(assert (=> b!6113348 m!6961942))

(assert (=> b!6112361 d!1915776))

(assert (=> b!6112361 d!1915624))

(declare-fun d!1915778 () Bool)

(assert (=> d!1915778 (= (isEmpty!36285 (t!377939 (unfocusZipperList!1482 zl!343))) ((_ is Nil!64358) (t!377939 (unfocusZipperList!1482 zl!343))))))

(assert (=> b!6112107 d!1915778))

(declare-fun d!1915780 () Bool)

(declare-fun res!2535435 () Bool)

(declare-fun e!3727533 () Bool)

(assert (=> d!1915780 (=> res!2535435 e!3727533)))

(assert (=> d!1915780 (= res!2535435 ((_ is ElementMatch!16061) (ite c!1098223 (reg!16390 r!7292) (ite c!1098224 (regOne!32635 r!7292) (regOne!32634 r!7292)))))))

(assert (=> d!1915780 (= (validRegex!7797 (ite c!1098223 (reg!16390 r!7292) (ite c!1098224 (regOne!32635 r!7292) (regOne!32634 r!7292)))) e!3727533)))

(declare-fun call!505993 () Bool)

(declare-fun c!1098448 () Bool)

(declare-fun bm!505988 () Bool)

(declare-fun c!1098447 () Bool)

(assert (=> bm!505988 (= call!505993 (validRegex!7797 (ite c!1098447 (reg!16390 (ite c!1098223 (reg!16390 r!7292) (ite c!1098224 (regOne!32635 r!7292) (regOne!32634 r!7292)))) (ite c!1098448 (regOne!32635 (ite c!1098223 (reg!16390 r!7292) (ite c!1098224 (regOne!32635 r!7292) (regOne!32634 r!7292)))) (regOne!32634 (ite c!1098223 (reg!16390 r!7292) (ite c!1098224 (regOne!32635 r!7292) (regOne!32634 r!7292))))))))))

(declare-fun b!6113359 () Bool)

(declare-fun e!3727537 () Bool)

(declare-fun e!3727534 () Bool)

(assert (=> b!6113359 (= e!3727537 e!3727534)))

(declare-fun res!2535434 () Bool)

(assert (=> b!6113359 (=> (not res!2535434) (not e!3727534))))

(declare-fun call!505995 () Bool)

(assert (=> b!6113359 (= res!2535434 call!505995)))

(declare-fun b!6113360 () Bool)

(declare-fun res!2535436 () Bool)

(assert (=> b!6113360 (=> res!2535436 e!3727537)))

(assert (=> b!6113360 (= res!2535436 (not ((_ is Concat!24906) (ite c!1098223 (reg!16390 r!7292) (ite c!1098224 (regOne!32635 r!7292) (regOne!32634 r!7292))))))))

(declare-fun e!3727531 () Bool)

(assert (=> b!6113360 (= e!3727531 e!3727537)))

(declare-fun b!6113361 () Bool)

(declare-fun e!3727536 () Bool)

(assert (=> b!6113361 (= e!3727536 call!505993)))

(declare-fun call!505994 () Bool)

(declare-fun bm!505989 () Bool)

(assert (=> bm!505989 (= call!505994 (validRegex!7797 (ite c!1098448 (regTwo!32635 (ite c!1098223 (reg!16390 r!7292) (ite c!1098224 (regOne!32635 r!7292) (regOne!32634 r!7292)))) (regTwo!32634 (ite c!1098223 (reg!16390 r!7292) (ite c!1098224 (regOne!32635 r!7292) (regOne!32634 r!7292)))))))))

(declare-fun b!6113362 () Bool)

(declare-fun res!2535437 () Bool)

(declare-fun e!3727532 () Bool)

(assert (=> b!6113362 (=> (not res!2535437) (not e!3727532))))

(assert (=> b!6113362 (= res!2535437 call!505995)))

(assert (=> b!6113362 (= e!3727531 e!3727532)))

(declare-fun bm!505990 () Bool)

(assert (=> bm!505990 (= call!505995 call!505993)))

(declare-fun b!6113363 () Bool)

(assert (=> b!6113363 (= e!3727534 call!505994)))

(declare-fun b!6113364 () Bool)

(declare-fun e!3727535 () Bool)

(assert (=> b!6113364 (= e!3727535 e!3727531)))

(assert (=> b!6113364 (= c!1098448 ((_ is Union!16061) (ite c!1098223 (reg!16390 r!7292) (ite c!1098224 (regOne!32635 r!7292) (regOne!32634 r!7292)))))))

(declare-fun b!6113365 () Bool)

(assert (=> b!6113365 (= e!3727533 e!3727535)))

(assert (=> b!6113365 (= c!1098447 ((_ is Star!16061) (ite c!1098223 (reg!16390 r!7292) (ite c!1098224 (regOne!32635 r!7292) (regOne!32634 r!7292)))))))

(declare-fun b!6113366 () Bool)

(assert (=> b!6113366 (= e!3727535 e!3727536)))

(declare-fun res!2535433 () Bool)

(assert (=> b!6113366 (= res!2535433 (not (nullable!6054 (reg!16390 (ite c!1098223 (reg!16390 r!7292) (ite c!1098224 (regOne!32635 r!7292) (regOne!32634 r!7292)))))))))

(assert (=> b!6113366 (=> (not res!2535433) (not e!3727536))))

(declare-fun b!6113367 () Bool)

(assert (=> b!6113367 (= e!3727532 call!505994)))

(assert (= (and d!1915780 (not res!2535435)) b!6113365))

(assert (= (and b!6113365 c!1098447) b!6113366))

(assert (= (and b!6113365 (not c!1098447)) b!6113364))

(assert (= (and b!6113366 res!2535433) b!6113361))

(assert (= (and b!6113364 c!1098448) b!6113362))

(assert (= (and b!6113364 (not c!1098448)) b!6113360))

(assert (= (and b!6113362 res!2535437) b!6113367))

(assert (= (and b!6113360 (not res!2535436)) b!6113359))

(assert (= (and b!6113359 res!2535434) b!6113363))

(assert (= (or b!6113367 b!6113363) bm!505989))

(assert (= (or b!6113362 b!6113359) bm!505990))

(assert (= (or b!6113361 bm!505990) bm!505988))

(declare-fun m!6961952 () Bool)

(assert (=> bm!505988 m!6961952))

(declare-fun m!6961954 () Bool)

(assert (=> bm!505989 m!6961954))

(declare-fun m!6961956 () Bool)

(assert (=> b!6113366 m!6961956))

(assert (=> bm!505840 d!1915780))

(assert (=> d!1915346 d!1915474))

(declare-fun bm!505991 () Bool)

(declare-fun call!505996 () (InoxSet Context!10890))

(assert (=> bm!505991 (= call!505996 (derivationStepZipperDown!1309 (h!70806 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))))) (Context!10891 (t!377939 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))))))))) (h!70808 s!2326)))))

(declare-fun b!6113368 () Bool)

(declare-fun e!3727538 () Bool)

(assert (=> b!6113368 (= e!3727538 (nullable!6054 (h!70806 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))))))))))))

(declare-fun b!6113369 () Bool)

(declare-fun e!3727540 () (InoxSet Context!10890))

(assert (=> b!6113369 (= e!3727540 ((_ map or) call!505996 (derivationStepZipperUp!1235 (Context!10891 (t!377939 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))))))))) (h!70808 s!2326))))))

(declare-fun b!6113370 () Bool)

(declare-fun e!3727539 () (InoxSet Context!10890))

(assert (=> b!6113370 (= e!3727539 ((as const (Array Context!10890 Bool)) false))))

(declare-fun b!6113371 () Bool)

(assert (=> b!6113371 (= e!3727540 e!3727539)))

(declare-fun c!1098450 () Bool)

(assert (=> b!6113371 (= c!1098450 ((_ is Cons!64358) (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))))))))

(declare-fun b!6113372 () Bool)

(assert (=> b!6113372 (= e!3727539 call!505996)))

(declare-fun d!1915782 () Bool)

(declare-fun c!1098449 () Bool)

(assert (=> d!1915782 (= c!1098449 e!3727538)))

(declare-fun res!2535438 () Bool)

(assert (=> d!1915782 (=> (not res!2535438) (not e!3727538))))

(assert (=> d!1915782 (= res!2535438 ((_ is Cons!64358) (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))))))))

(assert (=> d!1915782 (= (derivationStepZipperUp!1235 (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (h!70808 s!2326)) e!3727540)))

(assert (= (and d!1915782 res!2535438) b!6113368))

(assert (= (and d!1915782 c!1098449) b!6113369))

(assert (= (and d!1915782 (not c!1098449)) b!6113371))

(assert (= (and b!6113371 c!1098450) b!6113372))

(assert (= (and b!6113371 (not c!1098450)) b!6113370))

(assert (= (or b!6113369 b!6113372) bm!505991))

(declare-fun m!6961958 () Bool)

(assert (=> bm!505991 m!6961958))

(declare-fun m!6961960 () Bool)

(assert (=> b!6113368 m!6961960))

(declare-fun m!6961962 () Bool)

(assert (=> b!6113369 m!6961962))

(assert (=> b!6111923 d!1915782))

(declare-fun c!1098452 () Bool)

(declare-fun call!505998 () List!64482)

(declare-fun call!506000 () (InoxSet Context!10890))

(declare-fun bm!505992 () Bool)

(assert (=> bm!505992 (= call!506000 (derivationStepZipperDown!1309 (ite c!1098452 (regTwo!32635 (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))))) (regOne!32634 (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343))))))) (ite c!1098452 (ite c!1098114 lt!2330155 (Context!10891 call!505801)) (Context!10891 call!505998)) (h!70808 s!2326)))))

(declare-fun d!1915784 () Bool)

(declare-fun c!1098451 () Bool)

(assert (=> d!1915784 (= c!1098451 (and ((_ is ElementMatch!16061) (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))))) (= (c!1098065 (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))))) (h!70808 s!2326))))))

(declare-fun e!3727546 () (InoxSet Context!10890))

(assert (=> d!1915784 (= (derivationStepZipperDown!1309 (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343))))) (ite c!1098114 lt!2330155 (Context!10891 call!505801)) (h!70808 s!2326)) e!3727546)))

(declare-fun b!6113373 () Bool)

(declare-fun e!3727544 () (InoxSet Context!10890))

(declare-fun call!505999 () (InoxSet Context!10890))

(assert (=> b!6113373 (= e!3727544 ((_ map or) call!505999 call!506000))))

(declare-fun bm!505993 () Bool)

(declare-fun call!506002 () (InoxSet Context!10890))

(assert (=> bm!505993 (= call!506002 call!505999)))

(declare-fun b!6113374 () Bool)

(assert (=> b!6113374 (= e!3727546 (store ((as const (Array Context!10890 Bool)) false) (ite c!1098114 lt!2330155 (Context!10891 call!505801)) true))))

(declare-fun c!1098453 () Bool)

(declare-fun call!506001 () List!64482)

(declare-fun bm!505994 () Bool)

(declare-fun c!1098455 () Bool)

(assert (=> bm!505994 (= call!505999 (derivationStepZipperDown!1309 (ite c!1098452 (regOne!32635 (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))))) (ite c!1098453 (regTwo!32634 (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))))) (ite c!1098455 (regOne!32634 (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))))) (reg!16390 (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343))))))))) (ite (or c!1098452 c!1098453) (ite c!1098114 lt!2330155 (Context!10891 call!505801)) (Context!10891 call!506001)) (h!70808 s!2326)))))

(declare-fun b!6113375 () Bool)

(declare-fun e!3727541 () (InoxSet Context!10890))

(assert (=> b!6113375 (= e!3727541 ((as const (Array Context!10890 Bool)) false))))

(declare-fun b!6113376 () Bool)

(declare-fun e!3727542 () (InoxSet Context!10890))

(declare-fun call!505997 () (InoxSet Context!10890))

(assert (=> b!6113376 (= e!3727542 call!505997)))

(declare-fun bm!505995 () Bool)

(assert (=> bm!505995 (= call!505998 ($colon$colon!1938 (exprs!5945 (ite c!1098114 lt!2330155 (Context!10891 call!505801))) (ite (or c!1098453 c!1098455) (regTwo!32634 (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))))) (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343))))))))))

(declare-fun b!6113377 () Bool)

(declare-fun e!3727545 () Bool)

(assert (=> b!6113377 (= e!3727545 (nullable!6054 (regOne!32634 (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343))))))))))

(declare-fun bm!505996 () Bool)

(assert (=> bm!505996 (= call!506001 call!505998)))

(declare-fun b!6113378 () Bool)

(declare-fun c!1098454 () Bool)

(assert (=> b!6113378 (= c!1098454 ((_ is Star!16061) (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))))))))

(assert (=> b!6113378 (= e!3727542 e!3727541)))

(declare-fun bm!505997 () Bool)

(assert (=> bm!505997 (= call!505997 call!506002)))

(declare-fun b!6113379 () Bool)

(declare-fun e!3727543 () (InoxSet Context!10890))

(assert (=> b!6113379 (= e!3727543 ((_ map or) call!506000 call!506002))))

(declare-fun b!6113380 () Bool)

(assert (=> b!6113380 (= e!3727541 call!505997)))

(declare-fun b!6113381 () Bool)

(assert (=> b!6113381 (= c!1098453 e!3727545)))

(declare-fun res!2535439 () Bool)

(assert (=> b!6113381 (=> (not res!2535439) (not e!3727545))))

(assert (=> b!6113381 (= res!2535439 ((_ is Concat!24906) (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))))))))

(assert (=> b!6113381 (= e!3727544 e!3727543)))

(declare-fun b!6113382 () Bool)

(assert (=> b!6113382 (= e!3727543 e!3727542)))

(assert (=> b!6113382 (= c!1098455 ((_ is Concat!24906) (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))))))))

(declare-fun b!6113383 () Bool)

(assert (=> b!6113383 (= e!3727546 e!3727544)))

(assert (=> b!6113383 (= c!1098452 ((_ is Union!16061) (ite c!1098114 (regTwo!32635 (h!70806 (exprs!5945 (h!70807 zl!343)))) (regOne!32634 (h!70806 (exprs!5945 (h!70807 zl!343)))))))))

(assert (= (and d!1915784 c!1098451) b!6113374))

(assert (= (and d!1915784 (not c!1098451)) b!6113383))

(assert (= (and b!6113383 c!1098452) b!6113373))

(assert (= (and b!6113383 (not c!1098452)) b!6113381))

(assert (= (and b!6113381 res!2535439) b!6113377))

(assert (= (and b!6113381 c!1098453) b!6113379))

(assert (= (and b!6113381 (not c!1098453)) b!6113382))

(assert (= (and b!6113382 c!1098455) b!6113376))

(assert (= (and b!6113382 (not c!1098455)) b!6113378))

(assert (= (and b!6113378 c!1098454) b!6113380))

(assert (= (and b!6113378 (not c!1098454)) b!6113375))

(assert (= (or b!6113376 b!6113380) bm!505996))

(assert (= (or b!6113376 b!6113380) bm!505997))

(assert (= (or b!6113379 bm!505996) bm!505995))

(assert (= (or b!6113379 bm!505997) bm!505993))

(assert (= (or b!6113373 b!6113379) bm!505992))

(assert (= (or b!6113373 bm!505993) bm!505994))

(declare-fun m!6961964 () Bool)

(assert (=> b!6113377 m!6961964))

(declare-fun m!6961966 () Bool)

(assert (=> bm!505992 m!6961966))

(declare-fun m!6961968 () Bool)

(assert (=> b!6113374 m!6961968))

(declare-fun m!6961970 () Bool)

(assert (=> bm!505994 m!6961970))

(declare-fun m!6961972 () Bool)

(assert (=> bm!505995 m!6961972))

(assert (=> bm!505795 d!1915784))

(declare-fun d!1915786 () Bool)

(assert (=> d!1915786 (= (nullable!6054 (reg!16390 r!7292)) (nullableFct!2017 (reg!16390 r!7292)))))

(declare-fun bs!1517357 () Bool)

(assert (= bs!1517357 d!1915786))

(declare-fun m!6961974 () Bool)

(assert (=> bs!1517357 m!6961974))

(assert (=> b!6112401 d!1915786))

(assert (=> d!1915386 d!1915540))

(declare-fun bm!505998 () Bool)

(declare-fun call!506003 () Bool)

(assert (=> bm!505998 (= call!506003 (isEmpty!36289 Nil!64360))))

(declare-fun b!6113384 () Bool)

(declare-fun res!2535445 () Bool)

(declare-fun e!3727549 () Bool)

(assert (=> b!6113384 (=> res!2535445 e!3727549)))

(declare-fun e!3727550 () Bool)

(assert (=> b!6113384 (= res!2535445 e!3727550)))

(declare-fun res!2535444 () Bool)

(assert (=> b!6113384 (=> (not res!2535444) (not e!3727550))))

(declare-fun lt!2330290 () Bool)

(assert (=> b!6113384 (= res!2535444 lt!2330290)))

(declare-fun b!6113385 () Bool)

(declare-fun e!3727551 () Bool)

(assert (=> b!6113385 (= e!3727551 (not lt!2330290))))

(declare-fun b!6113386 () Bool)

(declare-fun e!3727547 () Bool)

(assert (=> b!6113386 (= e!3727547 e!3727551)))

(declare-fun c!1098456 () Bool)

(assert (=> b!6113386 (= c!1098456 ((_ is EmptyLang!16061) (regOne!32634 r!7292)))))

(declare-fun d!1915788 () Bool)

(assert (=> d!1915788 e!3727547))

(declare-fun c!1098457 () Bool)

(assert (=> d!1915788 (= c!1098457 ((_ is EmptyExpr!16061) (regOne!32634 r!7292)))))

(declare-fun e!3727548 () Bool)

(assert (=> d!1915788 (= lt!2330290 e!3727548)))

(declare-fun c!1098458 () Bool)

(assert (=> d!1915788 (= c!1098458 (isEmpty!36289 Nil!64360))))

(assert (=> d!1915788 (validRegex!7797 (regOne!32634 r!7292))))

(assert (=> d!1915788 (= (matchR!8244 (regOne!32634 r!7292) Nil!64360) lt!2330290)))

(declare-fun b!6113387 () Bool)

(declare-fun e!3727552 () Bool)

(assert (=> b!6113387 (= e!3727552 (not (= (head!12643 Nil!64360) (c!1098065 (regOne!32634 r!7292)))))))

(declare-fun b!6113388 () Bool)

(declare-fun e!3727553 () Bool)

(assert (=> b!6113388 (= e!3727553 e!3727552)))

(declare-fun res!2535442 () Bool)

(assert (=> b!6113388 (=> res!2535442 e!3727552)))

(assert (=> b!6113388 (= res!2535442 call!506003)))

(declare-fun b!6113389 () Bool)

(declare-fun res!2535440 () Bool)

(assert (=> b!6113389 (=> res!2535440 e!3727549)))

(assert (=> b!6113389 (= res!2535440 (not ((_ is ElementMatch!16061) (regOne!32634 r!7292))))))

(assert (=> b!6113389 (= e!3727551 e!3727549)))

(declare-fun b!6113390 () Bool)

(declare-fun res!2535447 () Bool)

(assert (=> b!6113390 (=> res!2535447 e!3727552)))

(assert (=> b!6113390 (= res!2535447 (not (isEmpty!36289 (tail!11728 Nil!64360))))))

(declare-fun b!6113391 () Bool)

(assert (=> b!6113391 (= e!3727547 (= lt!2330290 call!506003))))

(declare-fun b!6113392 () Bool)

(assert (=> b!6113392 (= e!3727548 (matchR!8244 (derivativeStep!4782 (regOne!32634 r!7292) (head!12643 Nil!64360)) (tail!11728 Nil!64360)))))

(declare-fun b!6113393 () Bool)

(assert (=> b!6113393 (= e!3727548 (nullable!6054 (regOne!32634 r!7292)))))

(declare-fun b!6113394 () Bool)

(assert (=> b!6113394 (= e!3727550 (= (head!12643 Nil!64360) (c!1098065 (regOne!32634 r!7292))))))

(declare-fun b!6113395 () Bool)

(declare-fun res!2535443 () Bool)

(assert (=> b!6113395 (=> (not res!2535443) (not e!3727550))))

(assert (=> b!6113395 (= res!2535443 (isEmpty!36289 (tail!11728 Nil!64360)))))

(declare-fun b!6113396 () Bool)

(assert (=> b!6113396 (= e!3727549 e!3727553)))

(declare-fun res!2535441 () Bool)

(assert (=> b!6113396 (=> (not res!2535441) (not e!3727553))))

(assert (=> b!6113396 (= res!2535441 (not lt!2330290))))

(declare-fun b!6113397 () Bool)

(declare-fun res!2535446 () Bool)

(assert (=> b!6113397 (=> (not res!2535446) (not e!3727550))))

(assert (=> b!6113397 (= res!2535446 (not call!506003))))

(assert (= (and d!1915788 c!1098458) b!6113393))

(assert (= (and d!1915788 (not c!1098458)) b!6113392))

(assert (= (and d!1915788 c!1098457) b!6113391))

(assert (= (and d!1915788 (not c!1098457)) b!6113386))

(assert (= (and b!6113386 c!1098456) b!6113385))

(assert (= (and b!6113386 (not c!1098456)) b!6113389))

(assert (= (and b!6113389 (not res!2535440)) b!6113384))

(assert (= (and b!6113384 res!2535444) b!6113397))

(assert (= (and b!6113397 res!2535446) b!6113395))

(assert (= (and b!6113395 res!2535443) b!6113394))

(assert (= (and b!6113384 (not res!2535445)) b!6113396))

(assert (= (and b!6113396 res!2535441) b!6113388))

(assert (= (and b!6113388 (not res!2535442)) b!6113390))

(assert (= (and b!6113390 (not res!2535447)) b!6113387))

(assert (= (or b!6113391 b!6113388 b!6113397) bm!505998))

(declare-fun m!6961976 () Bool)

(assert (=> bm!505998 m!6961976))

(assert (=> b!6113393 m!6961840))

(declare-fun m!6961978 () Bool)

(assert (=> b!6113392 m!6961978))

(assert (=> b!6113392 m!6961978))

(declare-fun m!6961980 () Bool)

(assert (=> b!6113392 m!6961980))

(declare-fun m!6961982 () Bool)

(assert (=> b!6113392 m!6961982))

(assert (=> b!6113392 m!6961980))

(assert (=> b!6113392 m!6961982))

(declare-fun m!6961984 () Bool)

(assert (=> b!6113392 m!6961984))

(assert (=> b!6113394 m!6961978))

(assert (=> b!6113390 m!6961982))

(assert (=> b!6113390 m!6961982))

(declare-fun m!6961986 () Bool)

(assert (=> b!6113390 m!6961986))

(assert (=> d!1915788 m!6961976))

(assert (=> d!1915788 m!6961132))

(assert (=> b!6113395 m!6961982))

(assert (=> b!6113395 m!6961982))

(assert (=> b!6113395 m!6961986))

(assert (=> b!6113387 m!6961978))

(assert (=> d!1915386 d!1915788))

(assert (=> d!1915386 d!1915616))

(assert (=> b!6112199 d!1915406))

(declare-fun call!506005 () List!64482)

(declare-fun bm!505999 () Bool)

(declare-fun call!506007 () (InoxSet Context!10890))

(declare-fun c!1098460 () Bool)

(assert (=> bm!505999 (= call!506007 (derivationStepZipperDown!1309 (ite c!1098460 (regTwo!32635 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (regOne!32634 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))))))) (ite c!1098460 (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (Context!10891 call!506005)) (h!70808 s!2326)))))

(declare-fun d!1915790 () Bool)

(declare-fun c!1098459 () Bool)

(assert (=> d!1915790 (= c!1098459 (and ((_ is ElementMatch!16061) (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (= (c!1098065 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (h!70808 s!2326))))))

(declare-fun e!3727559 () (InoxSet Context!10890))

(assert (=> d!1915790 (= (derivationStepZipperDown!1309 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))))) (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (h!70808 s!2326)) e!3727559)))

(declare-fun b!6113398 () Bool)

(declare-fun e!3727557 () (InoxSet Context!10890))

(declare-fun call!506006 () (InoxSet Context!10890))

(assert (=> b!6113398 (= e!3727557 ((_ map or) call!506006 call!506007))))

(declare-fun bm!506000 () Bool)

(declare-fun call!506009 () (InoxSet Context!10890))

(assert (=> bm!506000 (= call!506009 call!506006)))

(declare-fun b!6113399 () Bool)

(assert (=> b!6113399 (= e!3727559 (store ((as const (Array Context!10890 Bool)) false) (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) true))))

(declare-fun bm!506001 () Bool)

(declare-fun c!1098461 () Bool)

(declare-fun c!1098463 () Bool)

(declare-fun call!506008 () List!64482)

(assert (=> bm!506001 (= call!506006 (derivationStepZipperDown!1309 (ite c!1098460 (regOne!32635 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (ite c!1098461 (regTwo!32634 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (ite c!1098463 (regOne!32634 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (reg!16390 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))))))))) (ite (or c!1098460 c!1098461) (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (Context!10891 call!506008)) (h!70808 s!2326)))))

(declare-fun b!6113400 () Bool)

(declare-fun e!3727554 () (InoxSet Context!10890))

(assert (=> b!6113400 (= e!3727554 ((as const (Array Context!10890 Bool)) false))))

(declare-fun b!6113401 () Bool)

(declare-fun e!3727555 () (InoxSet Context!10890))

(declare-fun call!506004 () (InoxSet Context!10890))

(assert (=> b!6113401 (= e!3727555 call!506004)))

(declare-fun bm!506002 () Bool)

(assert (=> bm!506002 (= call!506005 ($colon$colon!1938 (exprs!5945 (Context!10891 (t!377939 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))))))) (ite (or c!1098461 c!1098463) (regTwo!32634 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))) (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))))))))))

(declare-fun b!6113402 () Bool)

(declare-fun e!3727558 () Bool)

(assert (=> b!6113402 (= e!3727558 (nullable!6054 (regOne!32634 (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))))))))))

(declare-fun bm!506003 () Bool)

(assert (=> bm!506003 (= call!506008 call!506005)))

(declare-fun b!6113403 () Bool)

(declare-fun c!1098462 () Bool)

(assert (=> b!6113403 (= c!1098462 ((_ is Star!16061) (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))))))

(assert (=> b!6113403 (= e!3727555 e!3727554)))

(declare-fun bm!506004 () Bool)

(assert (=> bm!506004 (= call!506004 call!506009)))

(declare-fun b!6113404 () Bool)

(declare-fun e!3727556 () (InoxSet Context!10890))

(assert (=> b!6113404 (= e!3727556 ((_ map or) call!506007 call!506009))))

(declare-fun b!6113405 () Bool)

(assert (=> b!6113405 (= e!3727554 call!506004)))

(declare-fun b!6113406 () Bool)

(assert (=> b!6113406 (= c!1098461 e!3727558)))

(declare-fun res!2535448 () Bool)

(assert (=> b!6113406 (=> (not res!2535448) (not e!3727558))))

(assert (=> b!6113406 (= res!2535448 ((_ is Concat!24906) (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))))))

(assert (=> b!6113406 (= e!3727557 e!3727556)))

(declare-fun b!6113407 () Bool)

(assert (=> b!6113407 (= e!3727556 e!3727555)))

(assert (=> b!6113407 (= c!1098463 ((_ is Concat!24906) (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))))))

(declare-fun b!6113408 () Bool)

(assert (=> b!6113408 (= e!3727559 e!3727557)))

(assert (=> b!6113408 (= c!1098460 ((_ is Union!16061) (h!70806 (exprs!5945 (Context!10891 (Cons!64358 (h!70806 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343)))))))))))

(assert (= (and d!1915790 c!1098459) b!6113399))

(assert (= (and d!1915790 (not c!1098459)) b!6113408))

(assert (= (and b!6113408 c!1098460) b!6113398))

(assert (= (and b!6113408 (not c!1098460)) b!6113406))

(assert (= (and b!6113406 res!2535448) b!6113402))

(assert (= (and b!6113406 c!1098461) b!6113404))

(assert (= (and b!6113406 (not c!1098461)) b!6113407))

(assert (= (and b!6113407 c!1098463) b!6113401))

(assert (= (and b!6113407 (not c!1098463)) b!6113403))

(assert (= (and b!6113403 c!1098462) b!6113405))

(assert (= (and b!6113403 (not c!1098462)) b!6113400))

(assert (= (or b!6113401 b!6113405) bm!506003))

(assert (= (or b!6113401 b!6113405) bm!506004))

(assert (= (or b!6113404 bm!506003) bm!506002))

(assert (= (or b!6113404 bm!506004) bm!506000))

(assert (= (or b!6113398 b!6113404) bm!505999))

(assert (= (or b!6113398 bm!506000) bm!506001))

(declare-fun m!6961988 () Bool)

(assert (=> b!6113402 m!6961988))

(declare-fun m!6961990 () Bool)

(assert (=> bm!505999 m!6961990))

(declare-fun m!6961992 () Bool)

(assert (=> b!6113399 m!6961992))

(declare-fun m!6961994 () Bool)

(assert (=> bm!506001 m!6961994))

(declare-fun m!6961996 () Bool)

(assert (=> bm!506002 m!6961996))

(assert (=> bm!505781 d!1915790))

(declare-fun d!1915792 () Bool)

(declare-fun res!2535449 () Bool)

(declare-fun e!3727560 () Bool)

(assert (=> d!1915792 (=> res!2535449 e!3727560)))

(assert (=> d!1915792 (= res!2535449 ((_ is Nil!64358) lt!2330204))))

(assert (=> d!1915792 (= (forall!15182 lt!2330204 lambda!332979) e!3727560)))

(declare-fun b!6113409 () Bool)

(declare-fun e!3727561 () Bool)

(assert (=> b!6113409 (= e!3727560 e!3727561)))

(declare-fun res!2535450 () Bool)

(assert (=> b!6113409 (=> (not res!2535450) (not e!3727561))))

(assert (=> b!6113409 (= res!2535450 (dynLambda!25345 lambda!332979 (h!70806 lt!2330204)))))

(declare-fun b!6113410 () Bool)

(assert (=> b!6113410 (= e!3727561 (forall!15182 (t!377939 lt!2330204) lambda!332979))))

(assert (= (and d!1915792 (not res!2535449)) b!6113409))

(assert (= (and b!6113409 res!2535450) b!6113410))

(declare-fun b_lambda!232841 () Bool)

(assert (=> (not b_lambda!232841) (not b!6113409)))

(declare-fun m!6961998 () Bool)

(assert (=> b!6113409 m!6961998))

(declare-fun m!6962000 () Bool)

(assert (=> b!6113410 m!6962000))

(assert (=> d!1915368 d!1915792))

(declare-fun d!1915794 () Bool)

(assert (=> d!1915794 (= (isEmpty!36285 (tail!11729 (exprs!5945 (h!70807 zl!343)))) ((_ is Nil!64358) (tail!11729 (exprs!5945 (h!70807 zl!343)))))))

(assert (=> b!6112197 d!1915794))

(declare-fun d!1915796 () Bool)

(assert (=> d!1915796 (= (tail!11729 (exprs!5945 (h!70807 zl!343))) (t!377939 (exprs!5945 (h!70807 zl!343))))))

(assert (=> b!6112197 d!1915796))

(assert (=> b!6112484 d!1915508))

(declare-fun d!1915798 () Bool)

(assert (=> d!1915798 (= (nullable!6054 (h!70806 (exprs!5945 lt!2330155))) (nullableFct!2017 (h!70806 (exprs!5945 lt!2330155))))))

(declare-fun bs!1517358 () Bool)

(assert (= bs!1517358 d!1915798))

(declare-fun m!6962002 () Bool)

(assert (=> bs!1517358 m!6962002))

(assert (=> b!6112009 d!1915798))

(declare-fun d!1915800 () Bool)

(declare-fun res!2535453 () Bool)

(declare-fun e!3727564 () Bool)

(assert (=> d!1915800 (=> res!2535453 e!3727564)))

(assert (=> d!1915800 (= res!2535453 ((_ is ElementMatch!16061) lt!2330216))))

(assert (=> d!1915800 (= (validRegex!7797 lt!2330216) e!3727564)))

(declare-fun c!1098465 () Bool)

(declare-fun call!506010 () Bool)

(declare-fun c!1098464 () Bool)

(declare-fun bm!506005 () Bool)

(assert (=> bm!506005 (= call!506010 (validRegex!7797 (ite c!1098464 (reg!16390 lt!2330216) (ite c!1098465 (regOne!32635 lt!2330216) (regOne!32634 lt!2330216)))))))

(declare-fun b!6113411 () Bool)

(declare-fun e!3727568 () Bool)

(declare-fun e!3727565 () Bool)

(assert (=> b!6113411 (= e!3727568 e!3727565)))

(declare-fun res!2535452 () Bool)

(assert (=> b!6113411 (=> (not res!2535452) (not e!3727565))))

(declare-fun call!506012 () Bool)

(assert (=> b!6113411 (= res!2535452 call!506012)))

(declare-fun b!6113412 () Bool)

(declare-fun res!2535454 () Bool)

(assert (=> b!6113412 (=> res!2535454 e!3727568)))

(assert (=> b!6113412 (= res!2535454 (not ((_ is Concat!24906) lt!2330216)))))

(declare-fun e!3727562 () Bool)

(assert (=> b!6113412 (= e!3727562 e!3727568)))

(declare-fun b!6113413 () Bool)

(declare-fun e!3727567 () Bool)

(assert (=> b!6113413 (= e!3727567 call!506010)))

(declare-fun bm!506006 () Bool)

(declare-fun call!506011 () Bool)

(assert (=> bm!506006 (= call!506011 (validRegex!7797 (ite c!1098465 (regTwo!32635 lt!2330216) (regTwo!32634 lt!2330216))))))

(declare-fun b!6113414 () Bool)

(declare-fun res!2535455 () Bool)

(declare-fun e!3727563 () Bool)

(assert (=> b!6113414 (=> (not res!2535455) (not e!3727563))))

(assert (=> b!6113414 (= res!2535455 call!506012)))

(assert (=> b!6113414 (= e!3727562 e!3727563)))

(declare-fun bm!506007 () Bool)

(assert (=> bm!506007 (= call!506012 call!506010)))

(declare-fun b!6113415 () Bool)

(assert (=> b!6113415 (= e!3727565 call!506011)))

(declare-fun b!6113416 () Bool)

(declare-fun e!3727566 () Bool)

(assert (=> b!6113416 (= e!3727566 e!3727562)))

(assert (=> b!6113416 (= c!1098465 ((_ is Union!16061) lt!2330216))))

(declare-fun b!6113417 () Bool)

(assert (=> b!6113417 (= e!3727564 e!3727566)))

(assert (=> b!6113417 (= c!1098464 ((_ is Star!16061) lt!2330216))))

(declare-fun b!6113418 () Bool)

(assert (=> b!6113418 (= e!3727566 e!3727567)))

(declare-fun res!2535451 () Bool)

(assert (=> b!6113418 (= res!2535451 (not (nullable!6054 (reg!16390 lt!2330216))))))

(assert (=> b!6113418 (=> (not res!2535451) (not e!3727567))))

(declare-fun b!6113419 () Bool)

(assert (=> b!6113419 (= e!3727563 call!506011)))

(assert (= (and d!1915800 (not res!2535453)) b!6113417))

(assert (= (and b!6113417 c!1098464) b!6113418))

(assert (= (and b!6113417 (not c!1098464)) b!6113416))

(assert (= (and b!6113418 res!2535451) b!6113413))

(assert (= (and b!6113416 c!1098465) b!6113414))

(assert (= (and b!6113416 (not c!1098465)) b!6113412))

(assert (= (and b!6113414 res!2535455) b!6113419))

(assert (= (and b!6113412 (not res!2535454)) b!6113411))

(assert (= (and b!6113411 res!2535452) b!6113415))

(assert (= (or b!6113419 b!6113415) bm!506006))

(assert (= (or b!6113414 b!6113411) bm!506007))

(assert (= (or b!6113413 bm!506007) bm!506005))

(declare-fun m!6962004 () Bool)

(assert (=> bm!506005 m!6962004))

(declare-fun m!6962006 () Bool)

(assert (=> bm!506006 m!6962006))

(declare-fun m!6962008 () Bool)

(assert (=> b!6113418 m!6962008))

(assert (=> d!1915384 d!1915800))

(assert (=> d!1915384 d!1915362))

(assert (=> d!1915384 d!1915368))

(declare-fun b!6113421 () Bool)

(declare-fun e!3727569 () Bool)

(declare-fun tp!1707479 () Bool)

(declare-fun tp!1707483 () Bool)

(assert (=> b!6113421 (= e!3727569 (and tp!1707479 tp!1707483))))

(declare-fun b!6113423 () Bool)

(declare-fun tp!1707482 () Bool)

(declare-fun tp!1707480 () Bool)

(assert (=> b!6113423 (= e!3727569 (and tp!1707482 tp!1707480))))

(declare-fun b!6113420 () Bool)

(assert (=> b!6113420 (= e!3727569 tp_is_empty!41375)))

(declare-fun b!6113422 () Bool)

(declare-fun tp!1707481 () Bool)

(assert (=> b!6113422 (= e!3727569 tp!1707481)))

(assert (=> b!6112529 (= tp!1707290 e!3727569)))

(assert (= (and b!6112529 ((_ is ElementMatch!16061) (h!70806 (exprs!5945 setElem!41296)))) b!6113420))

(assert (= (and b!6112529 ((_ is Concat!24906) (h!70806 (exprs!5945 setElem!41296)))) b!6113421))

(assert (= (and b!6112529 ((_ is Star!16061) (h!70806 (exprs!5945 setElem!41296)))) b!6113422))

(assert (= (and b!6112529 ((_ is Union!16061) (h!70806 (exprs!5945 setElem!41296)))) b!6113423))

(declare-fun b!6113424 () Bool)

(declare-fun e!3727570 () Bool)

(declare-fun tp!1707484 () Bool)

(declare-fun tp!1707485 () Bool)

(assert (=> b!6113424 (= e!3727570 (and tp!1707484 tp!1707485))))

(assert (=> b!6112529 (= tp!1707291 e!3727570)))

(assert (= (and b!6112529 ((_ is Cons!64358) (t!377939 (exprs!5945 setElem!41296)))) b!6113424))

(declare-fun b!6113426 () Bool)

(declare-fun e!3727571 () Bool)

(declare-fun tp!1707486 () Bool)

(declare-fun tp!1707490 () Bool)

(assert (=> b!6113426 (= e!3727571 (and tp!1707486 tp!1707490))))

(declare-fun b!6113428 () Bool)

(declare-fun tp!1707489 () Bool)

(declare-fun tp!1707487 () Bool)

(assert (=> b!6113428 (= e!3727571 (and tp!1707489 tp!1707487))))

(declare-fun b!6113425 () Bool)

(assert (=> b!6113425 (= e!3727571 tp_is_empty!41375)))

(declare-fun b!6113427 () Bool)

(declare-fun tp!1707488 () Bool)

(assert (=> b!6113427 (= e!3727571 tp!1707488)))

(assert (=> b!6112537 (= tp!1707300 e!3727571)))

(assert (= (and b!6112537 ((_ is ElementMatch!16061) (regOne!32635 (regTwo!32634 r!7292)))) b!6113425))

(assert (= (and b!6112537 ((_ is Concat!24906) (regOne!32635 (regTwo!32634 r!7292)))) b!6113426))

(assert (= (and b!6112537 ((_ is Star!16061) (regOne!32635 (regTwo!32634 r!7292)))) b!6113427))

(assert (= (and b!6112537 ((_ is Union!16061) (regOne!32635 (regTwo!32634 r!7292)))) b!6113428))

(declare-fun b!6113430 () Bool)

(declare-fun e!3727572 () Bool)

(declare-fun tp!1707491 () Bool)

(declare-fun tp!1707495 () Bool)

(assert (=> b!6113430 (= e!3727572 (and tp!1707491 tp!1707495))))

(declare-fun b!6113432 () Bool)

(declare-fun tp!1707494 () Bool)

(declare-fun tp!1707492 () Bool)

(assert (=> b!6113432 (= e!3727572 (and tp!1707494 tp!1707492))))

(declare-fun b!6113429 () Bool)

(assert (=> b!6113429 (= e!3727572 tp_is_empty!41375)))

(declare-fun b!6113431 () Bool)

(declare-fun tp!1707493 () Bool)

(assert (=> b!6113431 (= e!3727572 tp!1707493)))

(assert (=> b!6112537 (= tp!1707298 e!3727572)))

(assert (= (and b!6112537 ((_ is ElementMatch!16061) (regTwo!32635 (regTwo!32634 r!7292)))) b!6113429))

(assert (= (and b!6112537 ((_ is Concat!24906) (regTwo!32635 (regTwo!32634 r!7292)))) b!6113430))

(assert (= (and b!6112537 ((_ is Star!16061) (regTwo!32635 (regTwo!32634 r!7292)))) b!6113431))

(assert (= (and b!6112537 ((_ is Union!16061) (regTwo!32635 (regTwo!32634 r!7292)))) b!6113432))

(declare-fun b!6113434 () Bool)

(declare-fun e!3727573 () Bool)

(declare-fun tp!1707496 () Bool)

(declare-fun tp!1707500 () Bool)

(assert (=> b!6113434 (= e!3727573 (and tp!1707496 tp!1707500))))

(declare-fun b!6113436 () Bool)

(declare-fun tp!1707499 () Bool)

(declare-fun tp!1707497 () Bool)

(assert (=> b!6113436 (= e!3727573 (and tp!1707499 tp!1707497))))

(declare-fun b!6113433 () Bool)

(assert (=> b!6113433 (= e!3727573 tp_is_empty!41375)))

(declare-fun b!6113435 () Bool)

(declare-fun tp!1707498 () Bool)

(assert (=> b!6113435 (= e!3727573 tp!1707498)))

(assert (=> b!6112531 (= tp!1707292 e!3727573)))

(assert (= (and b!6112531 ((_ is ElementMatch!16061) (regOne!32634 (regOne!32634 r!7292)))) b!6113433))

(assert (= (and b!6112531 ((_ is Concat!24906) (regOne!32634 (regOne!32634 r!7292)))) b!6113434))

(assert (= (and b!6112531 ((_ is Star!16061) (regOne!32634 (regOne!32634 r!7292)))) b!6113435))

(assert (= (and b!6112531 ((_ is Union!16061) (regOne!32634 (regOne!32634 r!7292)))) b!6113436))

(declare-fun b!6113438 () Bool)

(declare-fun e!3727574 () Bool)

(declare-fun tp!1707501 () Bool)

(declare-fun tp!1707505 () Bool)

(assert (=> b!6113438 (= e!3727574 (and tp!1707501 tp!1707505))))

(declare-fun b!6113440 () Bool)

(declare-fun tp!1707504 () Bool)

(declare-fun tp!1707502 () Bool)

(assert (=> b!6113440 (= e!3727574 (and tp!1707504 tp!1707502))))

(declare-fun b!6113437 () Bool)

(assert (=> b!6113437 (= e!3727574 tp_is_empty!41375)))

(declare-fun b!6113439 () Bool)

(declare-fun tp!1707503 () Bool)

(assert (=> b!6113439 (= e!3727574 tp!1707503)))

(assert (=> b!6112531 (= tp!1707296 e!3727574)))

(assert (= (and b!6112531 ((_ is ElementMatch!16061) (regTwo!32634 (regOne!32634 r!7292)))) b!6113437))

(assert (= (and b!6112531 ((_ is Concat!24906) (regTwo!32634 (regOne!32634 r!7292)))) b!6113438))

(assert (= (and b!6112531 ((_ is Star!16061) (regTwo!32634 (regOne!32634 r!7292)))) b!6113439))

(assert (= (and b!6112531 ((_ is Union!16061) (regTwo!32634 (regOne!32634 r!7292)))) b!6113440))

(declare-fun b!6113442 () Bool)

(declare-fun e!3727575 () Bool)

(declare-fun tp!1707506 () Bool)

(declare-fun tp!1707510 () Bool)

(assert (=> b!6113442 (= e!3727575 (and tp!1707506 tp!1707510))))

(declare-fun b!6113444 () Bool)

(declare-fun tp!1707509 () Bool)

(declare-fun tp!1707507 () Bool)

(assert (=> b!6113444 (= e!3727575 (and tp!1707509 tp!1707507))))

(declare-fun b!6113441 () Bool)

(assert (=> b!6113441 (= e!3727575 tp_is_empty!41375)))

(declare-fun b!6113443 () Bool)

(declare-fun tp!1707508 () Bool)

(assert (=> b!6113443 (= e!3727575 tp!1707508)))

(assert (=> b!6112532 (= tp!1707294 e!3727575)))

(assert (= (and b!6112532 ((_ is ElementMatch!16061) (reg!16390 (regOne!32634 r!7292)))) b!6113441))

(assert (= (and b!6112532 ((_ is Concat!24906) (reg!16390 (regOne!32634 r!7292)))) b!6113442))

(assert (= (and b!6112532 ((_ is Star!16061) (reg!16390 (regOne!32634 r!7292)))) b!6113443))

(assert (= (and b!6112532 ((_ is Union!16061) (reg!16390 (regOne!32634 r!7292)))) b!6113444))

(declare-fun b!6113446 () Bool)

(declare-fun e!3727576 () Bool)

(declare-fun tp!1707511 () Bool)

(declare-fun tp!1707515 () Bool)

(assert (=> b!6113446 (= e!3727576 (and tp!1707511 tp!1707515))))

(declare-fun b!6113448 () Bool)

(declare-fun tp!1707514 () Bool)

(declare-fun tp!1707512 () Bool)

(assert (=> b!6113448 (= e!3727576 (and tp!1707514 tp!1707512))))

(declare-fun b!6113445 () Bool)

(assert (=> b!6113445 (= e!3727576 tp_is_empty!41375)))

(declare-fun b!6113447 () Bool)

(declare-fun tp!1707513 () Bool)

(assert (=> b!6113447 (= e!3727576 tp!1707513)))

(assert (=> b!6112541 (= tp!1707305 e!3727576)))

(assert (= (and b!6112541 ((_ is ElementMatch!16061) (regOne!32635 (reg!16390 r!7292)))) b!6113445))

(assert (= (and b!6112541 ((_ is Concat!24906) (regOne!32635 (reg!16390 r!7292)))) b!6113446))

(assert (= (and b!6112541 ((_ is Star!16061) (regOne!32635 (reg!16390 r!7292)))) b!6113447))

(assert (= (and b!6112541 ((_ is Union!16061) (regOne!32635 (reg!16390 r!7292)))) b!6113448))

(declare-fun b!6113450 () Bool)

(declare-fun e!3727577 () Bool)

(declare-fun tp!1707516 () Bool)

(declare-fun tp!1707520 () Bool)

(assert (=> b!6113450 (= e!3727577 (and tp!1707516 tp!1707520))))

(declare-fun b!6113452 () Bool)

(declare-fun tp!1707519 () Bool)

(declare-fun tp!1707517 () Bool)

(assert (=> b!6113452 (= e!3727577 (and tp!1707519 tp!1707517))))

(declare-fun b!6113449 () Bool)

(assert (=> b!6113449 (= e!3727577 tp_is_empty!41375)))

(declare-fun b!6113451 () Bool)

(declare-fun tp!1707518 () Bool)

(assert (=> b!6113451 (= e!3727577 tp!1707518)))

(assert (=> b!6112541 (= tp!1707303 e!3727577)))

(assert (= (and b!6112541 ((_ is ElementMatch!16061) (regTwo!32635 (reg!16390 r!7292)))) b!6113449))

(assert (= (and b!6112541 ((_ is Concat!24906) (regTwo!32635 (reg!16390 r!7292)))) b!6113450))

(assert (= (and b!6112541 ((_ is Star!16061) (regTwo!32635 (reg!16390 r!7292)))) b!6113451))

(assert (= (and b!6112541 ((_ is Union!16061) (regTwo!32635 (reg!16390 r!7292)))) b!6113452))

(declare-fun b!6113454 () Bool)

(declare-fun e!3727578 () Bool)

(declare-fun tp!1707521 () Bool)

(declare-fun tp!1707525 () Bool)

(assert (=> b!6113454 (= e!3727578 (and tp!1707521 tp!1707525))))

(declare-fun b!6113456 () Bool)

(declare-fun tp!1707524 () Bool)

(declare-fun tp!1707522 () Bool)

(assert (=> b!6113456 (= e!3727578 (and tp!1707524 tp!1707522))))

(declare-fun b!6113453 () Bool)

(assert (=> b!6113453 (= e!3727578 tp_is_empty!41375)))

(declare-fun b!6113455 () Bool)

(declare-fun tp!1707523 () Bool)

(assert (=> b!6113455 (= e!3727578 tp!1707523)))

(assert (=> b!6112505 (= tp!1707264 e!3727578)))

(assert (= (and b!6112505 ((_ is ElementMatch!16061) (reg!16390 (regOne!32635 r!7292)))) b!6113453))

(assert (= (and b!6112505 ((_ is Concat!24906) (reg!16390 (regOne!32635 r!7292)))) b!6113454))

(assert (= (and b!6112505 ((_ is Star!16061) (reg!16390 (regOne!32635 r!7292)))) b!6113455))

(assert (= (and b!6112505 ((_ is Union!16061) (reg!16390 (regOne!32635 r!7292)))) b!6113456))

(declare-fun b!6113458 () Bool)

(declare-fun e!3727579 () Bool)

(declare-fun tp!1707526 () Bool)

(declare-fun tp!1707530 () Bool)

(assert (=> b!6113458 (= e!3727579 (and tp!1707526 tp!1707530))))

(declare-fun b!6113460 () Bool)

(declare-fun tp!1707529 () Bool)

(declare-fun tp!1707527 () Bool)

(assert (=> b!6113460 (= e!3727579 (and tp!1707529 tp!1707527))))

(declare-fun b!6113457 () Bool)

(assert (=> b!6113457 (= e!3727579 tp_is_empty!41375)))

(declare-fun b!6113459 () Bool)

(declare-fun tp!1707528 () Bool)

(assert (=> b!6113459 (= e!3727579 tp!1707528)))

(assert (=> b!6112539 (= tp!1707302 e!3727579)))

(assert (= (and b!6112539 ((_ is ElementMatch!16061) (regOne!32634 (reg!16390 r!7292)))) b!6113457))

(assert (= (and b!6112539 ((_ is Concat!24906) (regOne!32634 (reg!16390 r!7292)))) b!6113458))

(assert (= (and b!6112539 ((_ is Star!16061) (regOne!32634 (reg!16390 r!7292)))) b!6113459))

(assert (= (and b!6112539 ((_ is Union!16061) (regOne!32634 (reg!16390 r!7292)))) b!6113460))

(declare-fun b!6113462 () Bool)

(declare-fun e!3727580 () Bool)

(declare-fun tp!1707531 () Bool)

(declare-fun tp!1707535 () Bool)

(assert (=> b!6113462 (= e!3727580 (and tp!1707531 tp!1707535))))

(declare-fun b!6113464 () Bool)

(declare-fun tp!1707534 () Bool)

(declare-fun tp!1707532 () Bool)

(assert (=> b!6113464 (= e!3727580 (and tp!1707534 tp!1707532))))

(declare-fun b!6113461 () Bool)

(assert (=> b!6113461 (= e!3727580 tp_is_empty!41375)))

(declare-fun b!6113463 () Bool)

(declare-fun tp!1707533 () Bool)

(assert (=> b!6113463 (= e!3727580 tp!1707533)))

(assert (=> b!6112539 (= tp!1707306 e!3727580)))

(assert (= (and b!6112539 ((_ is ElementMatch!16061) (regTwo!32634 (reg!16390 r!7292)))) b!6113461))

(assert (= (and b!6112539 ((_ is Concat!24906) (regTwo!32634 (reg!16390 r!7292)))) b!6113462))

(assert (= (and b!6112539 ((_ is Star!16061) (regTwo!32634 (reg!16390 r!7292)))) b!6113463))

(assert (= (and b!6112539 ((_ is Union!16061) (regTwo!32634 (reg!16390 r!7292)))) b!6113464))

(declare-fun b!6113466 () Bool)

(declare-fun e!3727581 () Bool)

(declare-fun tp!1707536 () Bool)

(declare-fun tp!1707540 () Bool)

(assert (=> b!6113466 (= e!3727581 (and tp!1707536 tp!1707540))))

(declare-fun b!6113468 () Bool)

(declare-fun tp!1707539 () Bool)

(declare-fun tp!1707537 () Bool)

(assert (=> b!6113468 (= e!3727581 (and tp!1707539 tp!1707537))))

(declare-fun b!6113465 () Bool)

(assert (=> b!6113465 (= e!3727581 tp_is_empty!41375)))

(declare-fun b!6113467 () Bool)

(declare-fun tp!1707538 () Bool)

(assert (=> b!6113467 (= e!3727581 tp!1707538)))

(assert (=> b!6112540 (= tp!1707304 e!3727581)))

(assert (= (and b!6112540 ((_ is ElementMatch!16061) (reg!16390 (reg!16390 r!7292)))) b!6113465))

(assert (= (and b!6112540 ((_ is Concat!24906) (reg!16390 (reg!16390 r!7292)))) b!6113466))

(assert (= (and b!6112540 ((_ is Star!16061) (reg!16390 (reg!16390 r!7292)))) b!6113467))

(assert (= (and b!6112540 ((_ is Union!16061) (reg!16390 (reg!16390 r!7292)))) b!6113468))

(declare-fun b!6113470 () Bool)

(declare-fun e!3727582 () Bool)

(declare-fun tp!1707541 () Bool)

(declare-fun tp!1707545 () Bool)

(assert (=> b!6113470 (= e!3727582 (and tp!1707541 tp!1707545))))

(declare-fun b!6113472 () Bool)

(declare-fun tp!1707544 () Bool)

(declare-fun tp!1707542 () Bool)

(assert (=> b!6113472 (= e!3727582 (and tp!1707544 tp!1707542))))

(declare-fun b!6113469 () Bool)

(assert (=> b!6113469 (= e!3727582 tp_is_empty!41375)))

(declare-fun b!6113471 () Bool)

(declare-fun tp!1707543 () Bool)

(assert (=> b!6113471 (= e!3727582 tp!1707543)))

(assert (=> b!6112504 (= tp!1707262 e!3727582)))

(assert (= (and b!6112504 ((_ is ElementMatch!16061) (regOne!32634 (regOne!32635 r!7292)))) b!6113469))

(assert (= (and b!6112504 ((_ is Concat!24906) (regOne!32634 (regOne!32635 r!7292)))) b!6113470))

(assert (= (and b!6112504 ((_ is Star!16061) (regOne!32634 (regOne!32635 r!7292)))) b!6113471))

(assert (= (and b!6112504 ((_ is Union!16061) (regOne!32634 (regOne!32635 r!7292)))) b!6113472))

(declare-fun b!6113474 () Bool)

(declare-fun e!3727583 () Bool)

(declare-fun tp!1707546 () Bool)

(declare-fun tp!1707550 () Bool)

(assert (=> b!6113474 (= e!3727583 (and tp!1707546 tp!1707550))))

(declare-fun b!6113476 () Bool)

(declare-fun tp!1707549 () Bool)

(declare-fun tp!1707547 () Bool)

(assert (=> b!6113476 (= e!3727583 (and tp!1707549 tp!1707547))))

(declare-fun b!6113473 () Bool)

(assert (=> b!6113473 (= e!3727583 tp_is_empty!41375)))

(declare-fun b!6113475 () Bool)

(declare-fun tp!1707548 () Bool)

(assert (=> b!6113475 (= e!3727583 tp!1707548)))

(assert (=> b!6112504 (= tp!1707266 e!3727583)))

(assert (= (and b!6112504 ((_ is ElementMatch!16061) (regTwo!32634 (regOne!32635 r!7292)))) b!6113473))

(assert (= (and b!6112504 ((_ is Concat!24906) (regTwo!32634 (regOne!32635 r!7292)))) b!6113474))

(assert (= (and b!6112504 ((_ is Star!16061) (regTwo!32634 (regOne!32635 r!7292)))) b!6113475))

(assert (= (and b!6112504 ((_ is Union!16061) (regTwo!32634 (regOne!32635 r!7292)))) b!6113476))

(declare-fun condSetEmpty!41310 () Bool)

(assert (=> setNonEmpty!41302 (= condSetEmpty!41310 (= setRest!41302 ((as const (Array Context!10890 Bool)) false)))))

(declare-fun setRes!41310 () Bool)

(assert (=> setNonEmpty!41302 (= tp!1707288 setRes!41310)))

(declare-fun setIsEmpty!41310 () Bool)

(assert (=> setIsEmpty!41310 setRes!41310))

(declare-fun tp!1707551 () Bool)

(declare-fun setNonEmpty!41310 () Bool)

(declare-fun setElem!41310 () Context!10890)

(declare-fun e!3727584 () Bool)

(assert (=> setNonEmpty!41310 (= setRes!41310 (and tp!1707551 (inv!83399 setElem!41310) e!3727584))))

(declare-fun setRest!41310 () (InoxSet Context!10890))

(assert (=> setNonEmpty!41310 (= setRest!41302 ((_ map or) (store ((as const (Array Context!10890 Bool)) false) setElem!41310 true) setRest!41310))))

(declare-fun b!6113477 () Bool)

(declare-fun tp!1707552 () Bool)

(assert (=> b!6113477 (= e!3727584 tp!1707552)))

(assert (= (and setNonEmpty!41302 condSetEmpty!41310) setIsEmpty!41310))

(assert (= (and setNonEmpty!41302 (not condSetEmpty!41310)) setNonEmpty!41310))

(assert (= setNonEmpty!41310 b!6113477))

(declare-fun m!6962010 () Bool)

(assert (=> setNonEmpty!41310 m!6962010))

(declare-fun b!6113479 () Bool)

(declare-fun e!3727585 () Bool)

(declare-fun tp!1707553 () Bool)

(declare-fun tp!1707557 () Bool)

(assert (=> b!6113479 (= e!3727585 (and tp!1707553 tp!1707557))))

(declare-fun b!6113481 () Bool)

(declare-fun tp!1707556 () Bool)

(declare-fun tp!1707554 () Bool)

(assert (=> b!6113481 (= e!3727585 (and tp!1707556 tp!1707554))))

(declare-fun b!6113478 () Bool)

(assert (=> b!6113478 (= e!3727585 tp_is_empty!41375)))

(declare-fun b!6113480 () Bool)

(declare-fun tp!1707555 () Bool)

(assert (=> b!6113480 (= e!3727585 tp!1707555)))

(assert (=> b!6112506 (= tp!1707265 e!3727585)))

(assert (= (and b!6112506 ((_ is ElementMatch!16061) (regOne!32635 (regOne!32635 r!7292)))) b!6113478))

(assert (= (and b!6112506 ((_ is Concat!24906) (regOne!32635 (regOne!32635 r!7292)))) b!6113479))

(assert (= (and b!6112506 ((_ is Star!16061) (regOne!32635 (regOne!32635 r!7292)))) b!6113480))

(assert (= (and b!6112506 ((_ is Union!16061) (regOne!32635 (regOne!32635 r!7292)))) b!6113481))

(declare-fun b!6113483 () Bool)

(declare-fun e!3727586 () Bool)

(declare-fun tp!1707558 () Bool)

(declare-fun tp!1707562 () Bool)

(assert (=> b!6113483 (= e!3727586 (and tp!1707558 tp!1707562))))

(declare-fun b!6113485 () Bool)

(declare-fun tp!1707561 () Bool)

(declare-fun tp!1707559 () Bool)

(assert (=> b!6113485 (= e!3727586 (and tp!1707561 tp!1707559))))

(declare-fun b!6113482 () Bool)

(assert (=> b!6113482 (= e!3727586 tp_is_empty!41375)))

(declare-fun b!6113484 () Bool)

(declare-fun tp!1707560 () Bool)

(assert (=> b!6113484 (= e!3727586 tp!1707560)))

(assert (=> b!6112506 (= tp!1707263 e!3727586)))

(assert (= (and b!6112506 ((_ is ElementMatch!16061) (regTwo!32635 (regOne!32635 r!7292)))) b!6113482))

(assert (= (and b!6112506 ((_ is Concat!24906) (regTwo!32635 (regOne!32635 r!7292)))) b!6113483))

(assert (= (and b!6112506 ((_ is Star!16061) (regTwo!32635 (regOne!32635 r!7292)))) b!6113484))

(assert (= (and b!6112506 ((_ is Union!16061) (regTwo!32635 (regOne!32635 r!7292)))) b!6113485))

(declare-fun b!6113487 () Bool)

(declare-fun e!3727587 () Bool)

(declare-fun tp!1707563 () Bool)

(declare-fun tp!1707567 () Bool)

(assert (=> b!6113487 (= e!3727587 (and tp!1707563 tp!1707567))))

(declare-fun b!6113489 () Bool)

(declare-fun tp!1707566 () Bool)

(declare-fun tp!1707564 () Bool)

(assert (=> b!6113489 (= e!3727587 (and tp!1707566 tp!1707564))))

(declare-fun b!6113486 () Bool)

(assert (=> b!6113486 (= e!3727587 tp_is_empty!41375)))

(declare-fun b!6113488 () Bool)

(declare-fun tp!1707565 () Bool)

(assert (=> b!6113488 (= e!3727587 tp!1707565)))

(assert (=> b!6112533 (= tp!1707295 e!3727587)))

(assert (= (and b!6112533 ((_ is ElementMatch!16061) (regOne!32635 (regOne!32634 r!7292)))) b!6113486))

(assert (= (and b!6112533 ((_ is Concat!24906) (regOne!32635 (regOne!32634 r!7292)))) b!6113487))

(assert (= (and b!6112533 ((_ is Star!16061) (regOne!32635 (regOne!32634 r!7292)))) b!6113488))

(assert (= (and b!6112533 ((_ is Union!16061) (regOne!32635 (regOne!32634 r!7292)))) b!6113489))

(declare-fun b!6113491 () Bool)

(declare-fun e!3727588 () Bool)

(declare-fun tp!1707568 () Bool)

(declare-fun tp!1707572 () Bool)

(assert (=> b!6113491 (= e!3727588 (and tp!1707568 tp!1707572))))

(declare-fun b!6113493 () Bool)

(declare-fun tp!1707571 () Bool)

(declare-fun tp!1707569 () Bool)

(assert (=> b!6113493 (= e!3727588 (and tp!1707571 tp!1707569))))

(declare-fun b!6113490 () Bool)

(assert (=> b!6113490 (= e!3727588 tp_is_empty!41375)))

(declare-fun b!6113492 () Bool)

(declare-fun tp!1707570 () Bool)

(assert (=> b!6113492 (= e!3727588 tp!1707570)))

(assert (=> b!6112533 (= tp!1707293 e!3727588)))

(assert (= (and b!6112533 ((_ is ElementMatch!16061) (regTwo!32635 (regOne!32634 r!7292)))) b!6113490))

(assert (= (and b!6112533 ((_ is Concat!24906) (regTwo!32635 (regOne!32634 r!7292)))) b!6113491))

(assert (= (and b!6112533 ((_ is Star!16061) (regTwo!32635 (regOne!32634 r!7292)))) b!6113492))

(assert (= (and b!6112533 ((_ is Union!16061) (regTwo!32635 (regOne!32634 r!7292)))) b!6113493))

(declare-fun b!6113495 () Bool)

(declare-fun e!3727589 () Bool)

(declare-fun tp!1707573 () Bool)

(declare-fun tp!1707577 () Bool)

(assert (=> b!6113495 (= e!3727589 (and tp!1707573 tp!1707577))))

(declare-fun b!6113497 () Bool)

(declare-fun tp!1707576 () Bool)

(declare-fun tp!1707574 () Bool)

(assert (=> b!6113497 (= e!3727589 (and tp!1707576 tp!1707574))))

(declare-fun b!6113494 () Bool)

(assert (=> b!6113494 (= e!3727589 tp_is_empty!41375)))

(declare-fun b!6113496 () Bool)

(declare-fun tp!1707575 () Bool)

(assert (=> b!6113496 (= e!3727589 tp!1707575)))

(assert (=> b!6112536 (= tp!1707299 e!3727589)))

(assert (= (and b!6112536 ((_ is ElementMatch!16061) (reg!16390 (regTwo!32634 r!7292)))) b!6113494))

(assert (= (and b!6112536 ((_ is Concat!24906) (reg!16390 (regTwo!32634 r!7292)))) b!6113495))

(assert (= (and b!6112536 ((_ is Star!16061) (reg!16390 (regTwo!32634 r!7292)))) b!6113496))

(assert (= (and b!6112536 ((_ is Union!16061) (reg!16390 (regTwo!32634 r!7292)))) b!6113497))

(declare-fun b!6113498 () Bool)

(declare-fun e!3727590 () Bool)

(declare-fun tp!1707578 () Bool)

(declare-fun tp!1707579 () Bool)

(assert (=> b!6113498 (= e!3727590 (and tp!1707578 tp!1707579))))

(assert (=> b!6112523 (= tp!1707282 e!3727590)))

(assert (= (and b!6112523 ((_ is Cons!64358) (exprs!5945 (h!70807 (t!377940 zl!343))))) b!6113498))

(declare-fun b!6113500 () Bool)

(declare-fun e!3727591 () Bool)

(declare-fun tp!1707580 () Bool)

(declare-fun tp!1707584 () Bool)

(assert (=> b!6113500 (= e!3727591 (and tp!1707580 tp!1707584))))

(declare-fun b!6113502 () Bool)

(declare-fun tp!1707583 () Bool)

(declare-fun tp!1707581 () Bool)

(assert (=> b!6113502 (= e!3727591 (and tp!1707583 tp!1707581))))

(declare-fun b!6113499 () Bool)

(assert (=> b!6113499 (= e!3727591 tp_is_empty!41375)))

(declare-fun b!6113501 () Bool)

(declare-fun tp!1707582 () Bool)

(assert (=> b!6113501 (= e!3727591 tp!1707582)))

(assert (=> b!6112509 (= tp!1707269 e!3727591)))

(assert (= (and b!6112509 ((_ is ElementMatch!16061) (reg!16390 (regTwo!32635 r!7292)))) b!6113499))

(assert (= (and b!6112509 ((_ is Concat!24906) (reg!16390 (regTwo!32635 r!7292)))) b!6113500))

(assert (= (and b!6112509 ((_ is Star!16061) (reg!16390 (regTwo!32635 r!7292)))) b!6113501))

(assert (= (and b!6112509 ((_ is Union!16061) (reg!16390 (regTwo!32635 r!7292)))) b!6113502))

(declare-fun b!6113504 () Bool)

(declare-fun e!3727592 () Bool)

(declare-fun tp!1707585 () Bool)

(declare-fun tp!1707589 () Bool)

(assert (=> b!6113504 (= e!3727592 (and tp!1707585 tp!1707589))))

(declare-fun b!6113506 () Bool)

(declare-fun tp!1707588 () Bool)

(declare-fun tp!1707586 () Bool)

(assert (=> b!6113506 (= e!3727592 (and tp!1707588 tp!1707586))))

(declare-fun b!6113503 () Bool)

(assert (=> b!6113503 (= e!3727592 tp_is_empty!41375)))

(declare-fun b!6113505 () Bool)

(declare-fun tp!1707587 () Bool)

(assert (=> b!6113505 (= e!3727592 tp!1707587)))

(assert (=> b!6112510 (= tp!1707270 e!3727592)))

(assert (= (and b!6112510 ((_ is ElementMatch!16061) (regOne!32635 (regTwo!32635 r!7292)))) b!6113503))

(assert (= (and b!6112510 ((_ is Concat!24906) (regOne!32635 (regTwo!32635 r!7292)))) b!6113504))

(assert (= (and b!6112510 ((_ is Star!16061) (regOne!32635 (regTwo!32635 r!7292)))) b!6113505))

(assert (= (and b!6112510 ((_ is Union!16061) (regOne!32635 (regTwo!32635 r!7292)))) b!6113506))

(declare-fun b!6113508 () Bool)

(declare-fun e!3727593 () Bool)

(declare-fun tp!1707590 () Bool)

(declare-fun tp!1707594 () Bool)

(assert (=> b!6113508 (= e!3727593 (and tp!1707590 tp!1707594))))

(declare-fun b!6113510 () Bool)

(declare-fun tp!1707593 () Bool)

(declare-fun tp!1707591 () Bool)

(assert (=> b!6113510 (= e!3727593 (and tp!1707593 tp!1707591))))

(declare-fun b!6113507 () Bool)

(assert (=> b!6113507 (= e!3727593 tp_is_empty!41375)))

(declare-fun b!6113509 () Bool)

(declare-fun tp!1707592 () Bool)

(assert (=> b!6113509 (= e!3727593 tp!1707592)))

(assert (=> b!6112510 (= tp!1707268 e!3727593)))

(assert (= (and b!6112510 ((_ is ElementMatch!16061) (regTwo!32635 (regTwo!32635 r!7292)))) b!6113507))

(assert (= (and b!6112510 ((_ is Concat!24906) (regTwo!32635 (regTwo!32635 r!7292)))) b!6113508))

(assert (= (and b!6112510 ((_ is Star!16061) (regTwo!32635 (regTwo!32635 r!7292)))) b!6113509))

(assert (= (and b!6112510 ((_ is Union!16061) (regTwo!32635 (regTwo!32635 r!7292)))) b!6113510))

(declare-fun b!6113512 () Bool)

(declare-fun e!3727594 () Bool)

(declare-fun tp!1707595 () Bool)

(declare-fun tp!1707599 () Bool)

(assert (=> b!6113512 (= e!3727594 (and tp!1707595 tp!1707599))))

(declare-fun b!6113514 () Bool)

(declare-fun tp!1707598 () Bool)

(declare-fun tp!1707596 () Bool)

(assert (=> b!6113514 (= e!3727594 (and tp!1707598 tp!1707596))))

(declare-fun b!6113511 () Bool)

(assert (=> b!6113511 (= e!3727594 tp_is_empty!41375)))

(declare-fun b!6113513 () Bool)

(declare-fun tp!1707597 () Bool)

(assert (=> b!6113513 (= e!3727594 tp!1707597)))

(assert (=> b!6112508 (= tp!1707267 e!3727594)))

(assert (= (and b!6112508 ((_ is ElementMatch!16061) (regOne!32634 (regTwo!32635 r!7292)))) b!6113511))

(assert (= (and b!6112508 ((_ is Concat!24906) (regOne!32634 (regTwo!32635 r!7292)))) b!6113512))

(assert (= (and b!6112508 ((_ is Star!16061) (regOne!32634 (regTwo!32635 r!7292)))) b!6113513))

(assert (= (and b!6112508 ((_ is Union!16061) (regOne!32634 (regTwo!32635 r!7292)))) b!6113514))

(declare-fun b!6113516 () Bool)

(declare-fun e!3727595 () Bool)

(declare-fun tp!1707600 () Bool)

(declare-fun tp!1707604 () Bool)

(assert (=> b!6113516 (= e!3727595 (and tp!1707600 tp!1707604))))

(declare-fun b!6113518 () Bool)

(declare-fun tp!1707603 () Bool)

(declare-fun tp!1707601 () Bool)

(assert (=> b!6113518 (= e!3727595 (and tp!1707603 tp!1707601))))

(declare-fun b!6113515 () Bool)

(assert (=> b!6113515 (= e!3727595 tp_is_empty!41375)))

(declare-fun b!6113517 () Bool)

(declare-fun tp!1707602 () Bool)

(assert (=> b!6113517 (= e!3727595 tp!1707602)))

(assert (=> b!6112508 (= tp!1707271 e!3727595)))

(assert (= (and b!6112508 ((_ is ElementMatch!16061) (regTwo!32634 (regTwo!32635 r!7292)))) b!6113515))

(assert (= (and b!6112508 ((_ is Concat!24906) (regTwo!32634 (regTwo!32635 r!7292)))) b!6113516))

(assert (= (and b!6112508 ((_ is Star!16061) (regTwo!32634 (regTwo!32635 r!7292)))) b!6113517))

(assert (= (and b!6112508 ((_ is Union!16061) (regTwo!32634 (regTwo!32635 r!7292)))) b!6113518))

(declare-fun b!6113520 () Bool)

(declare-fun e!3727596 () Bool)

(declare-fun tp!1707605 () Bool)

(declare-fun tp!1707609 () Bool)

(assert (=> b!6113520 (= e!3727596 (and tp!1707605 tp!1707609))))

(declare-fun b!6113522 () Bool)

(declare-fun tp!1707608 () Bool)

(declare-fun tp!1707606 () Bool)

(assert (=> b!6113522 (= e!3727596 (and tp!1707608 tp!1707606))))

(declare-fun b!6113519 () Bool)

(assert (=> b!6113519 (= e!3727596 tp_is_empty!41375)))

(declare-fun b!6113521 () Bool)

(declare-fun tp!1707607 () Bool)

(assert (=> b!6113521 (= e!3727596 tp!1707607)))

(assert (=> b!6112535 (= tp!1707297 e!3727596)))

(assert (= (and b!6112535 ((_ is ElementMatch!16061) (regOne!32634 (regTwo!32634 r!7292)))) b!6113519))

(assert (= (and b!6112535 ((_ is Concat!24906) (regOne!32634 (regTwo!32634 r!7292)))) b!6113520))

(assert (= (and b!6112535 ((_ is Star!16061) (regOne!32634 (regTwo!32634 r!7292)))) b!6113521))

(assert (= (and b!6112535 ((_ is Union!16061) (regOne!32634 (regTwo!32634 r!7292)))) b!6113522))

(declare-fun b!6113524 () Bool)

(declare-fun e!3727597 () Bool)

(declare-fun tp!1707610 () Bool)

(declare-fun tp!1707614 () Bool)

(assert (=> b!6113524 (= e!3727597 (and tp!1707610 tp!1707614))))

(declare-fun b!6113526 () Bool)

(declare-fun tp!1707613 () Bool)

(declare-fun tp!1707611 () Bool)

(assert (=> b!6113526 (= e!3727597 (and tp!1707613 tp!1707611))))

(declare-fun b!6113523 () Bool)

(assert (=> b!6113523 (= e!3727597 tp_is_empty!41375)))

(declare-fun b!6113525 () Bool)

(declare-fun tp!1707612 () Bool)

(assert (=> b!6113525 (= e!3727597 tp!1707612)))

(assert (=> b!6112535 (= tp!1707301 e!3727597)))

(assert (= (and b!6112535 ((_ is ElementMatch!16061) (regTwo!32634 (regTwo!32634 r!7292)))) b!6113523))

(assert (= (and b!6112535 ((_ is Concat!24906) (regTwo!32634 (regTwo!32634 r!7292)))) b!6113524))

(assert (= (and b!6112535 ((_ is Star!16061) (regTwo!32634 (regTwo!32634 r!7292)))) b!6113525))

(assert (= (and b!6112535 ((_ is Union!16061) (regTwo!32634 (regTwo!32634 r!7292)))) b!6113526))

(declare-fun b!6113528 () Bool)

(declare-fun e!3727599 () Bool)

(declare-fun tp!1707615 () Bool)

(assert (=> b!6113528 (= e!3727599 tp!1707615)))

(declare-fun b!6113527 () Bool)

(declare-fun tp!1707616 () Bool)

(declare-fun e!3727598 () Bool)

(assert (=> b!6113527 (= e!3727598 (and (inv!83399 (h!70807 (t!377940 (t!377940 zl!343)))) e!3727599 tp!1707616))))

(assert (=> b!6112522 (= tp!1707283 e!3727598)))

(assert (= b!6113527 b!6113528))

(assert (= (and b!6112522 ((_ is Cons!64359) (t!377940 (t!377940 zl!343)))) b!6113527))

(declare-fun m!6962012 () Bool)

(assert (=> b!6113527 m!6962012))

(declare-fun b!6113530 () Bool)

(declare-fun e!3727600 () Bool)

(declare-fun tp!1707617 () Bool)

(declare-fun tp!1707621 () Bool)

(assert (=> b!6113530 (= e!3727600 (and tp!1707617 tp!1707621))))

(declare-fun b!6113532 () Bool)

(declare-fun tp!1707620 () Bool)

(declare-fun tp!1707618 () Bool)

(assert (=> b!6113532 (= e!3727600 (and tp!1707620 tp!1707618))))

(declare-fun b!6113529 () Bool)

(assert (=> b!6113529 (= e!3727600 tp_is_empty!41375)))

(declare-fun b!6113531 () Bool)

(declare-fun tp!1707619 () Bool)

(assert (=> b!6113531 (= e!3727600 tp!1707619)))

(assert (=> b!6112515 (= tp!1707276 e!3727600)))

(assert (= (and b!6112515 ((_ is ElementMatch!16061) (h!70806 (exprs!5945 (h!70807 zl!343))))) b!6113529))

(assert (= (and b!6112515 ((_ is Concat!24906) (h!70806 (exprs!5945 (h!70807 zl!343))))) b!6113530))

(assert (= (and b!6112515 ((_ is Star!16061) (h!70806 (exprs!5945 (h!70807 zl!343))))) b!6113531))

(assert (= (and b!6112515 ((_ is Union!16061) (h!70806 (exprs!5945 (h!70807 zl!343))))) b!6113532))

(declare-fun b!6113533 () Bool)

(declare-fun e!3727601 () Bool)

(declare-fun tp!1707622 () Bool)

(declare-fun tp!1707623 () Bool)

(assert (=> b!6113533 (= e!3727601 (and tp!1707622 tp!1707623))))

(assert (=> b!6112515 (= tp!1707277 e!3727601)))

(assert (= (and b!6112515 ((_ is Cons!64358) (t!377939 (exprs!5945 (h!70807 zl!343))))) b!6113533))

(declare-fun b!6113534 () Bool)

(declare-fun e!3727602 () Bool)

(declare-fun tp!1707624 () Bool)

(assert (=> b!6113534 (= e!3727602 (and tp_is_empty!41375 tp!1707624))))

(assert (=> b!6112492 (= tp!1707251 e!3727602)))

(assert (= (and b!6112492 ((_ is Cons!64360) (t!377941 (t!377941 s!2326)))) b!6113534))

(declare-fun b!6113535 () Bool)

(declare-fun e!3727603 () Bool)

(declare-fun tp!1707625 () Bool)

(declare-fun tp!1707626 () Bool)

(assert (=> b!6113535 (= e!3727603 (and tp!1707625 tp!1707626))))

(assert (=> b!6112528 (= tp!1707289 e!3727603)))

(assert (= (and b!6112528 ((_ is Cons!64358) (exprs!5945 setElem!41302))) b!6113535))

(declare-fun b_lambda!232843 () Bool)

(assert (= b_lambda!232803 (or d!1915410 b_lambda!232843)))

(declare-fun bs!1517359 () Bool)

(declare-fun d!1915802 () Bool)

(assert (= bs!1517359 (and d!1915802 d!1915410)))

(assert (=> bs!1517359 (= (dynLambda!25345 lambda!333005 (h!70806 (exprs!5945 setElem!41296))) (validRegex!7797 (h!70806 (exprs!5945 setElem!41296))))))

(declare-fun m!6962014 () Bool)

(assert (=> bs!1517359 m!6962014))

(assert (=> b!6112689 d!1915802))

(declare-fun b_lambda!232845 () Bool)

(assert (= b_lambda!232841 (or d!1915368 b_lambda!232845)))

(declare-fun bs!1517360 () Bool)

(declare-fun d!1915804 () Bool)

(assert (= bs!1517360 (and d!1915804 d!1915368)))

(assert (=> bs!1517360 (= (dynLambda!25345 lambda!332979 (h!70806 lt!2330204)) (validRegex!7797 (h!70806 lt!2330204)))))

(declare-fun m!6962016 () Bool)

(assert (=> bs!1517360 m!6962016))

(assert (=> b!6113409 d!1915804))

(declare-fun b_lambda!232847 () Bool)

(assert (= b_lambda!232817 (or d!1915362 b_lambda!232847)))

(declare-fun bs!1517361 () Bool)

(declare-fun d!1915806 () Bool)

(assert (= bs!1517361 (and d!1915806 d!1915362)))

(assert (=> bs!1517361 (= (dynLambda!25345 lambda!332976 (h!70806 (unfocusZipperList!1482 zl!343))) (validRegex!7797 (h!70806 (unfocusZipperList!1482 zl!343))))))

(declare-fun m!6962018 () Bool)

(assert (=> bs!1517361 m!6962018))

(assert (=> b!6113015 d!1915806))

(declare-fun b_lambda!232849 () Bool)

(assert (= b_lambda!232809 (or d!1915340 b_lambda!232849)))

(declare-fun bs!1517362 () Bool)

(declare-fun d!1915808 () Bool)

(assert (= bs!1517362 (and d!1915808 d!1915340)))

(assert (=> bs!1517362 (= (dynLambda!25345 lambda!332965 (h!70806 (exprs!5945 lt!2330155))) (validRegex!7797 (h!70806 (exprs!5945 lt!2330155))))))

(declare-fun m!6962020 () Bool)

(assert (=> bs!1517362 m!6962020))

(assert (=> b!6112703 d!1915808))

(declare-fun b_lambda!232851 () Bool)

(assert (= b_lambda!232823 (or d!1915380 b_lambda!232851)))

(declare-fun bs!1517363 () Bool)

(declare-fun d!1915810 () Bool)

(assert (= bs!1517363 (and d!1915810 d!1915380)))

(assert (=> bs!1517363 (= (dynLambda!25345 lambda!332988 (h!70806 (exprs!5945 (h!70807 zl!343)))) (validRegex!7797 (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(declare-fun m!6962022 () Bool)

(assert (=> bs!1517363 m!6962022))

(assert (=> b!6113138 d!1915810))

(declare-fun b_lambda!232853 () Bool)

(assert (= b_lambda!232819 (or b!6111832 b_lambda!232853)))

(assert (=> d!1915726 d!1915420))

(declare-fun b_lambda!232855 () Bool)

(assert (= b_lambda!232839 (or d!1915408 b_lambda!232855)))

(declare-fun bs!1517364 () Bool)

(declare-fun d!1915812 () Bool)

(assert (= bs!1517364 (and d!1915812 d!1915408)))

(assert (=> bs!1517364 (= (dynLambda!25345 lambda!333004 (h!70806 (exprs!5945 (h!70807 zl!343)))) (validRegex!7797 (h!70806 (exprs!5945 (h!70807 zl!343)))))))

(assert (=> bs!1517364 m!6962022))

(assert (=> b!6113343 d!1915812))

(check-sat (not b!6113178) (not b!6113467) (not d!1915622) (not b!6113462) (not b!6112723) (not b!6113084) (not b!6112891) (not b!6113310) (not b!6112691) (not bs!1517363) (not b!6113387) (not bm!505957) (not d!1915646) (not b!6113309) (not bm!505952) (not b_lambda!232853) (not b!6113512) (not b!6113180) (not b!6112652) (not b!6113481) (not d!1915600) (not d!1915524) (not bm!505962) (not b!6113534) (not b!6112789) (not b!6113475) (not b!6112950) (not b!6113471) (not b!6113525) (not b!6113527) (not d!1915768) (not bs!1517360) (not b!6113431) (not b!6113393) (not d!1915766) (not b!6112819) (not bs!1517361) (not bm!505989) (not b!6113442) (not d!1915788) (not b!6113348) (not b!6113456) (not b!6112718) (not b!6113509) (not b!6113434) (not b!6113474) (not setNonEmpty!41308) (not b!6113172) (not b!6113051) (not b!6113394) (not b!6113422) (not bm!505870) (not b!6113439) (not b!6113505) (not b!6113432) (not bm!505972) (not b!6112885) (not b_lambda!232849) (not b!6113427) (not b!6113516) (not bm!506006) (not b!6113369) (not b!6113443) (not b!6113521) (not b!6113455) (not b!6113390) (not bs!1517359) (not d!1915676) (not b!6112968) (not b!6113459) (not b!6112695) (not d!1915560) (not b_lambda!232851) (not bm!506001) (not b!6113470) (not b!6112697) (not b!6113513) (not bm!505991) (not b!6112890) (not bs!1517362) (not b_lambda!232847) (not b!6113395) (not b!6112947) (not b!6112692) (not b!6113488) (not d!1915544) (not bm!505974) (not b!6113502) (not b!6113460) (not d!1915528) (not bm!505919) (not b!6113366) (not b!6113480) (not b!6112733) (not bm!506002) (not d!1915644) (not b!6113510) (not d!1915540) (not d!1915522) (not b!6113522) (not bm!505987) (not b!6113177) (not b!6113479) (not b!6113050) (not b!6113053) (not b!6113451) (not bm!505983) (not b!6113466) (not d!1915584) (not bm!505927) (not b!6113049) (not b!6113458) (not b!6113087) (not d!1915576) (not b!6112690) (not b!6113353) (not b!6113392) (not b!6113440) (not bm!505999) (not d!1915770) (not d!1915718) (not b!6113368) (not b!6113307) (not d!1915776) (not b!6112719) (not b!6113418) (not b!6112728) (not b!6113520) (not b!6113305) (not d!1915696) (not b!6113421) (not d!1915602) (not bm!505912) (not b!6113152) (not d!1915598) (not b!6113535) (not b!6113495) (not b!6113518) (not b!6112951) (not bm!506005) (not b!6113175) (not b!6113491) (not b!6113086) tp_is_empty!41375 (not b!6113085) (not b!6113476) (not b!6113484) (not b!6113528) (not b!6113344) (not b!6113377) (not b!6112954) (not b!6113013) (not b!6112770) (not b!6113110) (not b!6113501) (not b!6112698) (not b!6113016) (not bm!505998) (not d!1915786) (not d!1915572) (not bm!505964) (not b!6113447) (not b!6113446) (not bm!505918) (not b!6113308) (not setNonEmpty!41310) (not bm!505933) (not d!1915750) (not b!6113424) (not d!1915510) (not b!6113533) (not b!6113351) (not b!6113493) (not b!6113448) (not b!6113524) (not d!1915520) (not bs!1517364) (not b!6113506) (not b!6113402) (not b!6113436) (not d!1915656) (not d!1915552) (not b!6112785) (not d!1915774) (not b!6113302) (not b!6112726) (not b!6113079) (not d!1915724) (not b!6112704) (not b!6113450) (not b!6112696) (not b!6112661) (not bm!505934) (not b!6113517) (not bm!505958) (not b!6113435) (not b!6113468) (not bm!505995) (not bm!505926) (not bm!505881) (not b!6113526) (not b!6112720) (not b!6112792) (not bm!505913) (not b!6113463) (not b!6113504) (not b!6113508) (not b!6112904) (not b!6113472) (not b!6113423) (not b!6112791) (not bm!505944) (not b!6112908) (not b!6113430) (not bm!505986) (not b!6113355) (not b!6112771) (not b!6112948) (not b!6113428) (not bm!505992) (not b!6113514) (not b!6113483) (not b!6113002) (not b!6113135) (not d!1915562) (not bm!505932) (not d!1915588) (not bm!505988) (not d!1915542) (not b!6113496) (not d!1915712) (not b!6112724) (not b!6113438) (not b!6113426) (not bm!505961) (not bm!505878) (not bm!505965) (not b!6113454) (not b!6113530) (not d!1915658) (not b!6113410) (not b!6112766) (not b!6112790) (not bm!505973) (not b!6112767) (not d!1915512) (not b!6113336) (not d!1915798) (not b!6113485) (not b!6113452) (not b!6113041) (not bm!505869) (not b!6113042) (not b!6113106) (not b!6113532) (not b_lambda!232855) (not bm!505880) (not b!6112949) (not b!6113498) (not bm!505867) (not b!6113477) (not b!6112784) (not b!6113489) (not b!6113492) (not b!6113179) (not b!6112938) (not b!6113052) (not b_lambda!232799) (not b!6113531) (not bm!505967) (not b!6113139) (not b_lambda!232845) (not bm!505994) (not b!6113354) (not b!6113497) (not b!6113001) (not b!6113464) (not b!6113082) (not b!6112953) (not b_lambda!232843) (not b!6113500) (not bm!505924) (not d!1915492) (not b!6113356) (not b!6113444) (not b!6112722) (not d!1915726) (not d!1915704) (not b!6113487))
(check-sat)
