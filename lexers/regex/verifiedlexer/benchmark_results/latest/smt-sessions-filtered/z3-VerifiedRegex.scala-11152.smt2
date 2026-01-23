; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!579034 () Bool)

(assert start!579034)

(declare-fun b!5573875 () Bool)

(assert (=> b!5573875 true))

(assert (=> b!5573875 true))

(declare-fun lambda!298705 () Int)

(declare-fun lambda!298704 () Int)

(assert (=> b!5573875 (not (= lambda!298705 lambda!298704))))

(assert (=> b!5573875 true))

(assert (=> b!5573875 true))

(declare-fun b!5573873 () Bool)

(assert (=> b!5573873 true))

(declare-fun b!5573853 () Bool)

(declare-fun res!2365831 () Bool)

(declare-fun e!3439698 () Bool)

(assert (=> b!5573853 (=> res!2365831 e!3439698)))

(declare-datatypes ((C!31372 0))(
  ( (C!31373 (val!25388 Int)) )
))
(declare-datatypes ((Regex!15551 0))(
  ( (ElementMatch!15551 (c!975602 C!31372)) (Concat!24396 (regOne!31614 Regex!15551) (regTwo!31614 Regex!15551)) (EmptyExpr!15551) (Star!15551 (reg!15880 Regex!15551)) (EmptyLang!15551) (Union!15551 (regOne!31615 Regex!15551) (regTwo!31615 Regex!15551)) )
))
(declare-fun r!7292 () Regex!15551)

(declare-datatypes ((List!62952 0))(
  ( (Nil!62828) (Cons!62828 (h!69276 Regex!15551) (t!376221 List!62952)) )
))
(declare-datatypes ((Context!9870 0))(
  ( (Context!9871 (exprs!5435 List!62952)) )
))
(declare-datatypes ((List!62953 0))(
  ( (Nil!62829) (Cons!62829 (h!69277 Context!9870) (t!376222 List!62953)) )
))
(declare-fun zl!343 () List!62953)

(declare-fun generalisedConcat!1166 (List!62952) Regex!15551)

(assert (=> b!5573853 (= res!2365831 (not (= r!7292 (generalisedConcat!1166 (exprs!5435 (h!69277 zl!343))))))))

(declare-fun b!5573854 () Bool)

(declare-fun res!2365826 () Bool)

(assert (=> b!5573854 (=> res!2365826 e!3439698)))

(declare-fun isEmpty!34632 (List!62953) Bool)

(assert (=> b!5573854 (= res!2365826 (not (isEmpty!34632 (t!376222 zl!343))))))

(declare-fun setIsEmpty!37061 () Bool)

(declare-fun setRes!37061 () Bool)

(assert (=> setIsEmpty!37061 setRes!37061))

(declare-fun b!5573855 () Bool)

(declare-fun e!3439705 () Bool)

(declare-fun tp_is_empty!40355 () Bool)

(declare-fun tp!1542739 () Bool)

(assert (=> b!5573855 (= e!3439705 (and tp_is_empty!40355 tp!1542739))))

(declare-fun b!5573856 () Bool)

(declare-fun e!3439700 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2252120 () (InoxSet Context!9870))

(declare-datatypes ((List!62954 0))(
  ( (Nil!62830) (Cons!62830 (h!69278 C!31372) (t!376223 List!62954)) )
))
(declare-fun s!2326 () List!62954)

(declare-fun matchZipper!1689 ((InoxSet Context!9870) List!62954) Bool)

(assert (=> b!5573856 (= e!3439700 (matchZipper!1689 lt!2252120 (t!376223 s!2326)))))

(declare-fun b!5573857 () Bool)

(declare-fun e!3439704 () Bool)

(declare-fun tp!1542745 () Bool)

(assert (=> b!5573857 (= e!3439704 tp!1542745)))

(declare-fun b!5573858 () Bool)

(declare-fun tp!1542747 () Bool)

(declare-fun tp!1542740 () Bool)

(assert (=> b!5573858 (= e!3439704 (and tp!1542747 tp!1542740))))

(declare-fun b!5573859 () Bool)

(declare-datatypes ((Unit!155576 0))(
  ( (Unit!155577) )
))
(declare-fun e!3439707 () Unit!155576)

(declare-fun Unit!155578 () Unit!155576)

(assert (=> b!5573859 (= e!3439707 Unit!155578)))

(declare-fun lt!2252124 () (InoxSet Context!9870))

(declare-fun lt!2252129 () Unit!155576)

(declare-fun lt!2252132 () (InoxSet Context!9870))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!576 ((InoxSet Context!9870) (InoxSet Context!9870) List!62954) Unit!155576)

(assert (=> b!5573859 (= lt!2252129 (lemmaZipperConcatMatchesSameAsBothZippers!576 lt!2252132 lt!2252124 (t!376223 s!2326)))))

(declare-fun res!2365817 () Bool)

(assert (=> b!5573859 (= res!2365817 (matchZipper!1689 lt!2252132 (t!376223 s!2326)))))

(declare-fun e!3439701 () Bool)

(assert (=> b!5573859 (=> res!2365817 e!3439701)))

(assert (=> b!5573859 (= (matchZipper!1689 ((_ map or) lt!2252132 lt!2252124) (t!376223 s!2326)) e!3439701)))

(declare-fun b!5573860 () Bool)

(declare-fun res!2365830 () Bool)

(declare-fun e!3439710 () Bool)

(assert (=> b!5573860 (=> res!2365830 e!3439710)))

(declare-fun isEmpty!34633 (List!62952) Bool)

(assert (=> b!5573860 (= res!2365830 (isEmpty!34633 (t!376221 (exprs!5435 (h!69277 zl!343)))))))

(declare-fun b!5573861 () Bool)

(declare-fun e!3439706 () Bool)

(declare-fun e!3439703 () Bool)

(assert (=> b!5573861 (= e!3439706 e!3439703)))

(declare-fun res!2365824 () Bool)

(assert (=> b!5573861 (=> res!2365824 e!3439703)))

(declare-fun lt!2252116 () Bool)

(assert (=> b!5573861 (= res!2365824 (= (matchZipper!1689 lt!2252132 (t!376223 s!2326)) lt!2252116))))

(declare-fun lt!2252121 () (InoxSet Context!9870))

(assert (=> b!5573861 (= (matchZipper!1689 lt!2252121 (t!376223 s!2326)) e!3439700)))

(declare-fun res!2365828 () Bool)

(assert (=> b!5573861 (=> res!2365828 e!3439700)))

(assert (=> b!5573861 (= res!2365828 lt!2252116)))

(declare-fun lt!2252125 () (InoxSet Context!9870))

(assert (=> b!5573861 (= lt!2252116 (matchZipper!1689 lt!2252125 (t!376223 s!2326)))))

(declare-fun lt!2252117 () Unit!155576)

(assert (=> b!5573861 (= lt!2252117 (lemmaZipperConcatMatchesSameAsBothZippers!576 lt!2252125 lt!2252120 (t!376223 s!2326)))))

(declare-fun b!5573862 () Bool)

(declare-fun e!3439699 () Bool)

(declare-fun tp!1542746 () Bool)

(assert (=> b!5573862 (= e!3439699 tp!1542746)))

(declare-fun b!5573863 () Bool)

(declare-fun res!2365818 () Bool)

(declare-fun e!3439708 () Bool)

(assert (=> b!5573863 (=> (not res!2365818) (not e!3439708))))

(declare-fun z!1189 () (InoxSet Context!9870))

(declare-fun toList!9335 ((InoxSet Context!9870)) List!62953)

(assert (=> b!5573863 (= res!2365818 (= (toList!9335 z!1189) zl!343))))

(declare-fun b!5573864 () Bool)

(declare-fun e!3439711 () Bool)

(assert (=> b!5573864 (= e!3439711 e!3439706)))

(declare-fun res!2365820 () Bool)

(assert (=> b!5573864 (=> res!2365820 e!3439706)))

(assert (=> b!5573864 (= res!2365820 (not (= lt!2252132 lt!2252121)))))

(assert (=> b!5573864 (= lt!2252121 ((_ map or) lt!2252125 lt!2252120))))

(declare-fun lt!2252122 () Context!9870)

(declare-fun derivationStepZipperDown!893 (Regex!15551 Context!9870 C!31372) (InoxSet Context!9870))

(assert (=> b!5573864 (= lt!2252120 (derivationStepZipperDown!893 (regTwo!31615 (regOne!31614 r!7292)) lt!2252122 (h!69278 s!2326)))))

(assert (=> b!5573864 (= lt!2252125 (derivationStepZipperDown!893 (regOne!31615 (regOne!31614 r!7292)) lt!2252122 (h!69278 s!2326)))))

(declare-fun b!5573865 () Bool)

(declare-fun res!2365823 () Bool)

(assert (=> b!5573865 (=> res!2365823 e!3439698)))

(get-info :version)

(assert (=> b!5573865 (= res!2365823 (or ((_ is EmptyExpr!15551) r!7292) ((_ is EmptyLang!15551) r!7292) ((_ is ElementMatch!15551) r!7292) ((_ is Union!15551) r!7292) (not ((_ is Concat!24396) r!7292))))))

(declare-fun b!5573866 () Bool)

(assert (=> b!5573866 (= e!3439703 (matchZipper!1689 lt!2252120 (t!376223 s!2326)))))

(declare-fun b!5573867 () Bool)

(declare-fun res!2365821 () Bool)

(assert (=> b!5573867 (=> res!2365821 e!3439698)))

(assert (=> b!5573867 (= res!2365821 (not ((_ is Cons!62828) (exprs!5435 (h!69277 zl!343)))))))

(declare-fun b!5573868 () Bool)

(declare-fun tp!1542742 () Bool)

(declare-fun tp!1542738 () Bool)

(assert (=> b!5573868 (= e!3439704 (and tp!1542742 tp!1542738))))

(declare-fun b!5573869 () Bool)

(declare-fun res!2365829 () Bool)

(assert (=> b!5573869 (=> (not res!2365829) (not e!3439708))))

(declare-fun unfocusZipper!1293 (List!62953) Regex!15551)

(assert (=> b!5573869 (= res!2365829 (= r!7292 (unfocusZipper!1293 zl!343)))))

(declare-fun tp!1542741 () Bool)

(declare-fun setNonEmpty!37061 () Bool)

(declare-fun setElem!37061 () Context!9870)

(declare-fun inv!82124 (Context!9870) Bool)

(assert (=> setNonEmpty!37061 (= setRes!37061 (and tp!1542741 (inv!82124 setElem!37061) e!3439699))))

(declare-fun setRest!37061 () (InoxSet Context!9870))

(assert (=> setNonEmpty!37061 (= z!1189 ((_ map or) (store ((as const (Array Context!9870 Bool)) false) setElem!37061 true) setRest!37061))))

(declare-fun res!2365832 () Bool)

(assert (=> start!579034 (=> (not res!2365832) (not e!3439708))))

(declare-fun validRegex!7287 (Regex!15551) Bool)

(assert (=> start!579034 (= res!2365832 (validRegex!7287 r!7292))))

(assert (=> start!579034 e!3439708))

(assert (=> start!579034 e!3439704))

(declare-fun condSetEmpty!37061 () Bool)

(assert (=> start!579034 (= condSetEmpty!37061 (= z!1189 ((as const (Array Context!9870 Bool)) false)))))

(assert (=> start!579034 setRes!37061))

(declare-fun e!3439702 () Bool)

(assert (=> start!579034 e!3439702))

(assert (=> start!579034 e!3439705))

(declare-fun b!5573870 () Bool)

(declare-fun Unit!155579 () Unit!155576)

(assert (=> b!5573870 (= e!3439707 Unit!155579)))

(declare-fun b!5573871 () Bool)

(assert (=> b!5573871 (= e!3439704 tp_is_empty!40355)))

(declare-fun tp!1542744 () Bool)

(declare-fun e!3439709 () Bool)

(declare-fun b!5573872 () Bool)

(assert (=> b!5573872 (= e!3439702 (and (inv!82124 (h!69277 zl!343)) e!3439709 tp!1542744))))

(assert (=> b!5573873 (= e!3439710 e!3439711)))

(declare-fun res!2365819 () Bool)

(assert (=> b!5573873 (=> res!2365819 e!3439711)))

(assert (=> b!5573873 (= res!2365819 (or (and ((_ is ElementMatch!15551) (regOne!31614 r!7292)) (= (c!975602 (regOne!31614 r!7292)) (h!69278 s!2326))) (not ((_ is Union!15551) (regOne!31614 r!7292)))))))

(declare-fun lt!2252119 () Unit!155576)

(assert (=> b!5573873 (= lt!2252119 e!3439707)))

(declare-fun c!975601 () Bool)

(declare-fun nullable!5583 (Regex!15551) Bool)

(assert (=> b!5573873 (= c!975601 (nullable!5583 (h!69276 (exprs!5435 (h!69277 zl!343)))))))

(declare-fun lambda!298706 () Int)

(declare-fun flatMap!1164 ((InoxSet Context!9870) Int) (InoxSet Context!9870))

(declare-fun derivationStepZipperUp!819 (Context!9870 C!31372) (InoxSet Context!9870))

(assert (=> b!5573873 (= (flatMap!1164 z!1189 lambda!298706) (derivationStepZipperUp!819 (h!69277 zl!343) (h!69278 s!2326)))))

(declare-fun lt!2252128 () Unit!155576)

(declare-fun lemmaFlatMapOnSingletonSet!696 ((InoxSet Context!9870) Context!9870 Int) Unit!155576)

(assert (=> b!5573873 (= lt!2252128 (lemmaFlatMapOnSingletonSet!696 z!1189 (h!69277 zl!343) lambda!298706))))

(assert (=> b!5573873 (= lt!2252124 (derivationStepZipperUp!819 lt!2252122 (h!69278 s!2326)))))

(assert (=> b!5573873 (= lt!2252132 (derivationStepZipperDown!893 (h!69276 (exprs!5435 (h!69277 zl!343))) lt!2252122 (h!69278 s!2326)))))

(assert (=> b!5573873 (= lt!2252122 (Context!9871 (t!376221 (exprs!5435 (h!69277 zl!343)))))))

(declare-fun lt!2252130 () (InoxSet Context!9870))

(assert (=> b!5573873 (= lt!2252130 (derivationStepZipperUp!819 (Context!9871 (Cons!62828 (h!69276 (exprs!5435 (h!69277 zl!343))) (t!376221 (exprs!5435 (h!69277 zl!343))))) (h!69278 s!2326)))))

(declare-fun b!5573874 () Bool)

(assert (=> b!5573874 (= e!3439701 (matchZipper!1689 lt!2252124 (t!376223 s!2326)))))

(assert (=> b!5573875 (= e!3439698 e!3439710)))

(declare-fun res!2365822 () Bool)

(assert (=> b!5573875 (=> res!2365822 e!3439710)))

(declare-fun lt!2252131 () Bool)

(declare-fun lt!2252127 () Bool)

(assert (=> b!5573875 (= res!2365822 (or (not (= lt!2252131 lt!2252127)) ((_ is Nil!62830) s!2326)))))

(declare-fun Exists!2651 (Int) Bool)

(assert (=> b!5573875 (= (Exists!2651 lambda!298704) (Exists!2651 lambda!298705))))

(declare-fun lt!2252126 () Unit!155576)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1280 (Regex!15551 Regex!15551 List!62954) Unit!155576)

(assert (=> b!5573875 (= lt!2252126 (lemmaExistCutMatchRandMatchRSpecEquivalent!1280 (regOne!31614 r!7292) (regTwo!31614 r!7292) s!2326))))

(assert (=> b!5573875 (= lt!2252127 (Exists!2651 lambda!298704))))

(declare-datatypes ((tuple2!65296 0))(
  ( (tuple2!65297 (_1!35951 List!62954) (_2!35951 List!62954)) )
))
(declare-datatypes ((Option!15560 0))(
  ( (None!15559) (Some!15559 (v!51600 tuple2!65296)) )
))
(declare-fun isDefined!12263 (Option!15560) Bool)

(declare-fun findConcatSeparation!1974 (Regex!15551 Regex!15551 List!62954 List!62954 List!62954) Option!15560)

(assert (=> b!5573875 (= lt!2252127 (isDefined!12263 (findConcatSeparation!1974 (regOne!31614 r!7292) (regTwo!31614 r!7292) Nil!62830 s!2326 s!2326)))))

(declare-fun lt!2252118 () Unit!155576)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1738 (Regex!15551 Regex!15551 List!62954) Unit!155576)

(assert (=> b!5573875 (= lt!2252118 (lemmaFindConcatSeparationEquivalentToExists!1738 (regOne!31614 r!7292) (regTwo!31614 r!7292) s!2326))))

(declare-fun b!5573876 () Bool)

(declare-fun res!2365825 () Bool)

(assert (=> b!5573876 (=> res!2365825 e!3439698)))

(declare-fun generalisedUnion!1414 (List!62952) Regex!15551)

(declare-fun unfocusZipperList!979 (List!62953) List!62952)

(assert (=> b!5573876 (= res!2365825 (not (= r!7292 (generalisedUnion!1414 (unfocusZipperList!979 zl!343)))))))

(declare-fun b!5573877 () Bool)

(assert (=> b!5573877 (= e!3439708 (not e!3439698))))

(declare-fun res!2365827 () Bool)

(assert (=> b!5573877 (=> res!2365827 e!3439698)))

(assert (=> b!5573877 (= res!2365827 (not ((_ is Cons!62829) zl!343)))))

(declare-fun matchRSpec!2654 (Regex!15551 List!62954) Bool)

(assert (=> b!5573877 (= lt!2252131 (matchRSpec!2654 r!7292 s!2326))))

(declare-fun matchR!7736 (Regex!15551 List!62954) Bool)

(assert (=> b!5573877 (= lt!2252131 (matchR!7736 r!7292 s!2326))))

(declare-fun lt!2252123 () Unit!155576)

(declare-fun mainMatchTheorem!2654 (Regex!15551 List!62954) Unit!155576)

(assert (=> b!5573877 (= lt!2252123 (mainMatchTheorem!2654 r!7292 s!2326))))

(declare-fun b!5573878 () Bool)

(declare-fun tp!1542743 () Bool)

(assert (=> b!5573878 (= e!3439709 tp!1542743)))

(assert (= (and start!579034 res!2365832) b!5573863))

(assert (= (and b!5573863 res!2365818) b!5573869))

(assert (= (and b!5573869 res!2365829) b!5573877))

(assert (= (and b!5573877 (not res!2365827)) b!5573854))

(assert (= (and b!5573854 (not res!2365826)) b!5573853))

(assert (= (and b!5573853 (not res!2365831)) b!5573867))

(assert (= (and b!5573867 (not res!2365821)) b!5573876))

(assert (= (and b!5573876 (not res!2365825)) b!5573865))

(assert (= (and b!5573865 (not res!2365823)) b!5573875))

(assert (= (and b!5573875 (not res!2365822)) b!5573860))

(assert (= (and b!5573860 (not res!2365830)) b!5573873))

(assert (= (and b!5573873 c!975601) b!5573859))

(assert (= (and b!5573873 (not c!975601)) b!5573870))

(assert (= (and b!5573859 (not res!2365817)) b!5573874))

(assert (= (and b!5573873 (not res!2365819)) b!5573864))

(assert (= (and b!5573864 (not res!2365820)) b!5573861))

(assert (= (and b!5573861 (not res!2365828)) b!5573856))

(assert (= (and b!5573861 (not res!2365824)) b!5573866))

(assert (= (and start!579034 ((_ is ElementMatch!15551) r!7292)) b!5573871))

(assert (= (and start!579034 ((_ is Concat!24396) r!7292)) b!5573858))

(assert (= (and start!579034 ((_ is Star!15551) r!7292)) b!5573857))

(assert (= (and start!579034 ((_ is Union!15551) r!7292)) b!5573868))

(assert (= (and start!579034 condSetEmpty!37061) setIsEmpty!37061))

(assert (= (and start!579034 (not condSetEmpty!37061)) setNonEmpty!37061))

(assert (= setNonEmpty!37061 b!5573862))

(assert (= b!5573872 b!5573878))

(assert (= (and start!579034 ((_ is Cons!62829) zl!343)) b!5573872))

(assert (= (and start!579034 ((_ is Cons!62830) s!2326)) b!5573855))

(declare-fun m!6557618 () Bool)

(assert (=> setNonEmpty!37061 m!6557618))

(declare-fun m!6557620 () Bool)

(assert (=> b!5573872 m!6557620))

(declare-fun m!6557622 () Bool)

(assert (=> b!5573876 m!6557622))

(assert (=> b!5573876 m!6557622))

(declare-fun m!6557624 () Bool)

(assert (=> b!5573876 m!6557624))

(declare-fun m!6557626 () Bool)

(assert (=> b!5573854 m!6557626))

(declare-fun m!6557628 () Bool)

(assert (=> start!579034 m!6557628))

(declare-fun m!6557630 () Bool)

(assert (=> b!5573873 m!6557630))

(declare-fun m!6557632 () Bool)

(assert (=> b!5573873 m!6557632))

(declare-fun m!6557634 () Bool)

(assert (=> b!5573873 m!6557634))

(declare-fun m!6557636 () Bool)

(assert (=> b!5573873 m!6557636))

(declare-fun m!6557638 () Bool)

(assert (=> b!5573873 m!6557638))

(declare-fun m!6557640 () Bool)

(assert (=> b!5573873 m!6557640))

(declare-fun m!6557642 () Bool)

(assert (=> b!5573873 m!6557642))

(declare-fun m!6557644 () Bool)

(assert (=> b!5573859 m!6557644))

(declare-fun m!6557646 () Bool)

(assert (=> b!5573859 m!6557646))

(declare-fun m!6557648 () Bool)

(assert (=> b!5573859 m!6557648))

(declare-fun m!6557650 () Bool)

(assert (=> b!5573877 m!6557650))

(declare-fun m!6557652 () Bool)

(assert (=> b!5573877 m!6557652))

(declare-fun m!6557654 () Bool)

(assert (=> b!5573877 m!6557654))

(declare-fun m!6557656 () Bool)

(assert (=> b!5573863 m!6557656))

(declare-fun m!6557658 () Bool)

(assert (=> b!5573869 m!6557658))

(assert (=> b!5573861 m!6557646))

(declare-fun m!6557660 () Bool)

(assert (=> b!5573861 m!6557660))

(declare-fun m!6557662 () Bool)

(assert (=> b!5573861 m!6557662))

(declare-fun m!6557664 () Bool)

(assert (=> b!5573861 m!6557664))

(declare-fun m!6557666 () Bool)

(assert (=> b!5573864 m!6557666))

(declare-fun m!6557668 () Bool)

(assert (=> b!5573864 m!6557668))

(declare-fun m!6557670 () Bool)

(assert (=> b!5573856 m!6557670))

(assert (=> b!5573866 m!6557670))

(declare-fun m!6557672 () Bool)

(assert (=> b!5573875 m!6557672))

(assert (=> b!5573875 m!6557672))

(declare-fun m!6557674 () Bool)

(assert (=> b!5573875 m!6557674))

(declare-fun m!6557676 () Bool)

(assert (=> b!5573875 m!6557676))

(declare-fun m!6557678 () Bool)

(assert (=> b!5573875 m!6557678))

(declare-fun m!6557680 () Bool)

(assert (=> b!5573875 m!6557680))

(assert (=> b!5573875 m!6557674))

(declare-fun m!6557682 () Bool)

(assert (=> b!5573875 m!6557682))

(declare-fun m!6557684 () Bool)

(assert (=> b!5573874 m!6557684))

(declare-fun m!6557686 () Bool)

(assert (=> b!5573853 m!6557686))

(declare-fun m!6557688 () Bool)

(assert (=> b!5573860 m!6557688))

(check-sat (not b!5573866) (not b!5573876) (not b!5573875) (not b!5573859) (not b!5573868) (not b!5573873) (not b!5573856) (not start!579034) (not b!5573877) (not b!5573853) (not b!5573860) (not setNonEmpty!37061) (not b!5573854) (not b!5573855) (not b!5573878) (not b!5573872) (not b!5573863) (not b!5573869) (not b!5573861) (not b!5573862) (not b!5573857) (not b!5573864) (not b!5573858) (not b!5573874) tp_is_empty!40355)
(check-sat)
