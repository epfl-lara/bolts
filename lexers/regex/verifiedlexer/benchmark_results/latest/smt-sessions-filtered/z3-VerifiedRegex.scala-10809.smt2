; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!554938 () Bool)

(assert start!554938)

(declare-fun b!5252731 () Bool)

(assert (=> b!5252731 true))

(assert (=> b!5252731 true))

(declare-fun lambda!264576 () Int)

(declare-fun lambda!264575 () Int)

(assert (=> b!5252731 (not (= lambda!264576 lambda!264575))))

(assert (=> b!5252731 true))

(assert (=> b!5252731 true))

(declare-fun b!5252718 () Bool)

(assert (=> b!5252718 true))

(declare-fun b!5252707 () Bool)

(declare-fun e!3267845 () Bool)

(declare-fun e!3267862 () Bool)

(assert (=> b!5252707 (= e!3267845 e!3267862)))

(declare-fun res!2229183 () Bool)

(assert (=> b!5252707 (=> res!2229183 e!3267862)))

(declare-fun e!3267867 () Bool)

(assert (=> b!5252707 (= res!2229183 e!3267867)))

(declare-fun res!2229173 () Bool)

(assert (=> b!5252707 (=> (not res!2229173) (not e!3267867))))

(declare-datatypes ((C!30000 0))(
  ( (C!30001 (val!24702 Int)) )
))
(declare-datatypes ((List!60894 0))(
  ( (Nil!60770) (Cons!60770 (h!67218 C!30000) (t!374077 List!60894)) )
))
(declare-fun s!2326 () List!60894)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14865 0))(
  ( (ElementMatch!14865 (c!908689 C!30000)) (Concat!23710 (regOne!30242 Regex!14865) (regTwo!30242 Regex!14865)) (EmptyExpr!14865) (Star!14865 (reg!15194 Regex!14865)) (EmptyLang!14865) (Union!14865 (regOne!30243 Regex!14865) (regTwo!30243 Regex!14865)) )
))
(declare-datatypes ((List!60895 0))(
  ( (Nil!60771) (Cons!60771 (h!67219 Regex!14865) (t!374078 List!60895)) )
))
(declare-datatypes ((Context!8498 0))(
  ( (Context!8499 (exprs!4749 List!60895)) )
))
(declare-fun lt!2152845 () (InoxSet Context!8498))

(declare-fun lt!2152883 () Bool)

(declare-fun matchZipper!1109 ((InoxSet Context!8498) List!60894) Bool)

(assert (=> b!5252707 (= res!2229173 (not (= (matchZipper!1109 lt!2152845 (t!374077 s!2326)) lt!2152883)))))

(declare-fun lt!2152864 () (InoxSet Context!8498))

(declare-fun e!3267859 () Bool)

(assert (=> b!5252707 (= (matchZipper!1109 lt!2152864 (t!374077 s!2326)) e!3267859)))

(declare-fun res!2229176 () Bool)

(assert (=> b!5252707 (=> res!2229176 e!3267859)))

(assert (=> b!5252707 (= res!2229176 lt!2152883)))

(declare-fun lt!2152859 () (InoxSet Context!8498))

(assert (=> b!5252707 (= lt!2152883 (matchZipper!1109 lt!2152859 (t!374077 s!2326)))))

(declare-datatypes ((Unit!152934 0))(
  ( (Unit!152935) )
))
(declare-fun lt!2152857 () Unit!152934)

(declare-fun lt!2152841 () (InoxSet Context!8498))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!102 ((InoxSet Context!8498) (InoxSet Context!8498) List!60894) Unit!152934)

(assert (=> b!5252707 (= lt!2152857 (lemmaZipperConcatMatchesSameAsBothZippers!102 lt!2152859 lt!2152841 (t!374077 s!2326)))))

(declare-fun b!5252708 () Bool)

(declare-fun e!3267865 () Bool)

(declare-fun lt!2152863 () (InoxSet Context!8498))

(assert (=> b!5252708 (= e!3267865 (matchZipper!1109 lt!2152863 (t!374077 s!2326)))))

(declare-fun b!5252709 () Bool)

(declare-fun e!3267851 () Bool)

(assert (=> b!5252709 (= e!3267851 (matchZipper!1109 lt!2152863 (t!374077 s!2326)))))

(declare-fun b!5252710 () Bool)

(declare-fun e!3267870 () Unit!152934)

(declare-fun Unit!152936 () Unit!152934)

(assert (=> b!5252710 (= e!3267870 Unit!152936)))

(declare-fun lt!2152866 () Unit!152934)

(assert (=> b!5252710 (= lt!2152866 (lemmaZipperConcatMatchesSameAsBothZippers!102 lt!2152859 lt!2152863 (t!374077 s!2326)))))

(declare-fun res!2229185 () Bool)

(assert (=> b!5252710 (= res!2229185 lt!2152883)))

(declare-fun e!3267864 () Bool)

(assert (=> b!5252710 (=> res!2229185 e!3267864)))

(assert (=> b!5252710 (= (matchZipper!1109 ((_ map or) lt!2152859 lt!2152863) (t!374077 s!2326)) e!3267864)))

(declare-fun b!5252711 () Bool)

(declare-fun e!3267860 () Bool)

(declare-fun tp!1469408 () Bool)

(declare-fun tp!1469404 () Bool)

(assert (=> b!5252711 (= e!3267860 (and tp!1469408 tp!1469404))))

(declare-fun setElem!33551 () Context!8498)

(declare-fun tp!1469407 () Bool)

(declare-fun setRes!33551 () Bool)

(declare-fun setNonEmpty!33551 () Bool)

(declare-fun e!3267846 () Bool)

(declare-fun inv!80409 (Context!8498) Bool)

(assert (=> setNonEmpty!33551 (= setRes!33551 (and tp!1469407 (inv!80409 setElem!33551) e!3267846))))

(declare-fun z!1189 () (InoxSet Context!8498))

(declare-fun setRest!33551 () (InoxSet Context!8498))

(assert (=> setNonEmpty!33551 (= z!1189 ((_ map or) (store ((as const (Array Context!8498 Bool)) false) setElem!33551 true) setRest!33551))))

(declare-fun b!5252712 () Bool)

(declare-fun res!2229172 () Bool)

(declare-fun e!3267850 () Bool)

(assert (=> b!5252712 (=> res!2229172 e!3267850)))

(declare-fun r!7292 () Regex!14865)

(declare-datatypes ((List!60896 0))(
  ( (Nil!60772) (Cons!60772 (h!67220 Context!8498) (t!374079 List!60896)) )
))
(declare-fun zl!343 () List!60896)

(declare-fun generalisedUnion!794 (List!60895) Regex!14865)

(declare-fun unfocusZipperList!307 (List!60896) List!60895)

(assert (=> b!5252712 (= res!2229172 (not (= r!7292 (generalisedUnion!794 (unfocusZipperList!307 zl!343)))))))

(declare-fun b!5252713 () Bool)

(assert (=> b!5252713 (= e!3267867 (not (matchZipper!1109 lt!2152841 (t!374077 s!2326))))))

(declare-fun b!5252714 () Bool)

(declare-fun tp!1469400 () Bool)

(assert (=> b!5252714 (= e!3267860 tp!1469400)))

(declare-fun b!5252715 () Bool)

(declare-fun e!3267857 () Bool)

(assert (=> b!5252715 (= e!3267857 (not e!3267850))))

(declare-fun res!2229180 () Bool)

(assert (=> b!5252715 (=> res!2229180 e!3267850)))

(get-info :version)

(assert (=> b!5252715 (= res!2229180 (not ((_ is Cons!60772) zl!343)))))

(declare-fun lt!2152843 () Bool)

(declare-fun matchRSpec!1968 (Regex!14865 List!60894) Bool)

(assert (=> b!5252715 (= lt!2152843 (matchRSpec!1968 r!7292 s!2326))))

(declare-fun matchR!7050 (Regex!14865 List!60894) Bool)

(assert (=> b!5252715 (= lt!2152843 (matchR!7050 r!7292 s!2326))))

(declare-fun lt!2152838 () Unit!152934)

(declare-fun mainMatchTheorem!1968 (Regex!14865 List!60894) Unit!152934)

(assert (=> b!5252715 (= lt!2152838 (mainMatchTheorem!1968 r!7292 s!2326))))

(declare-fun b!5252716 () Bool)

(declare-fun e!3267868 () Bool)

(assert (=> b!5252716 (= e!3267862 e!3267868)))

(declare-fun res!2229181 () Bool)

(assert (=> b!5252716 (=> res!2229181 e!3267868)))

(declare-fun lt!2152879 () Bool)

(declare-fun e!3267858 () Bool)

(assert (=> b!5252716 (= res!2229181 (not (= lt!2152879 e!3267858)))))

(declare-fun res!2229175 () Bool)

(assert (=> b!5252716 (=> res!2229175 e!3267858)))

(declare-fun lt!2152853 () Bool)

(assert (=> b!5252716 (= res!2229175 lt!2152853)))

(assert (=> b!5252716 (= lt!2152879 (matchZipper!1109 z!1189 s!2326))))

(declare-fun lt!2152840 () (InoxSet Context!8498))

(assert (=> b!5252716 (= lt!2152853 (matchZipper!1109 lt!2152840 s!2326))))

(declare-fun lt!2152836 () Unit!152934)

(declare-fun e!3267844 () Unit!152934)

(assert (=> b!5252716 (= lt!2152836 e!3267844)))

(declare-fun c!908686 () Bool)

(declare-fun nullable!5034 (Regex!14865) Bool)

(assert (=> b!5252716 (= c!908686 (nullable!5034 (regTwo!30243 (regOne!30242 r!7292))))))

(declare-fun lt!2152862 () (InoxSet Context!8498))

(declare-fun lambda!264577 () Int)

(declare-fun lt!2152868 () Context!8498)

(declare-fun flatMap!592 ((InoxSet Context!8498) Int) (InoxSet Context!8498))

(declare-fun derivationStepZipperUp!237 (Context!8498 C!30000) (InoxSet Context!8498))

(assert (=> b!5252716 (= (flatMap!592 lt!2152862 lambda!264577) (derivationStepZipperUp!237 lt!2152868 (h!67218 s!2326)))))

(declare-fun lt!2152881 () Unit!152934)

(declare-fun lemmaFlatMapOnSingletonSet!124 ((InoxSet Context!8498) Context!8498 Int) Unit!152934)

(assert (=> b!5252716 (= lt!2152881 (lemmaFlatMapOnSingletonSet!124 lt!2152862 lt!2152868 lambda!264577))))

(declare-fun lt!2152884 () (InoxSet Context!8498))

(assert (=> b!5252716 (= lt!2152884 (derivationStepZipperUp!237 lt!2152868 (h!67218 s!2326)))))

(declare-fun lt!2152876 () Unit!152934)

(assert (=> b!5252716 (= lt!2152876 e!3267870)))

(declare-fun c!908687 () Bool)

(assert (=> b!5252716 (= c!908687 (nullable!5034 (regOne!30243 (regOne!30242 r!7292))))))

(declare-fun lt!2152874 () Context!8498)

(assert (=> b!5252716 (= (flatMap!592 lt!2152840 lambda!264577) (derivationStepZipperUp!237 lt!2152874 (h!67218 s!2326)))))

(declare-fun lt!2152860 () Unit!152934)

(assert (=> b!5252716 (= lt!2152860 (lemmaFlatMapOnSingletonSet!124 lt!2152840 lt!2152874 lambda!264577))))

(declare-fun lt!2152846 () (InoxSet Context!8498))

(assert (=> b!5252716 (= lt!2152846 (derivationStepZipperUp!237 lt!2152874 (h!67218 s!2326)))))

(assert (=> b!5252716 (= lt!2152862 (store ((as const (Array Context!8498 Bool)) false) lt!2152868 true))))

(declare-fun lt!2152852 () List!60895)

(assert (=> b!5252716 (= lt!2152868 (Context!8499 lt!2152852))))

(assert (=> b!5252716 (= lt!2152852 (Cons!60771 (regTwo!30243 (regOne!30242 r!7292)) (t!374078 (exprs!4749 (h!67220 zl!343)))))))

(assert (=> b!5252716 (= lt!2152840 (store ((as const (Array Context!8498 Bool)) false) lt!2152874 true))))

(declare-fun lt!2152856 () List!60895)

(assert (=> b!5252716 (= lt!2152874 (Context!8499 lt!2152856))))

(assert (=> b!5252716 (= lt!2152856 (Cons!60771 (regOne!30243 (regOne!30242 r!7292)) (t!374078 (exprs!4749 (h!67220 zl!343)))))))

(declare-fun b!5252717 () Bool)

(declare-fun e!3267869 () Bool)

(assert (=> b!5252717 (= e!3267869 e!3267857)))

(declare-fun res!2229177 () Bool)

(assert (=> b!5252717 (=> (not res!2229177) (not e!3267857))))

(declare-fun lt!2152861 () Regex!14865)

(assert (=> b!5252717 (= res!2229177 (= r!7292 lt!2152861))))

(declare-fun unfocusZipper!607 (List!60896) Regex!14865)

(assert (=> b!5252717 (= lt!2152861 (unfocusZipper!607 zl!343))))

(declare-fun e!3267847 () Bool)

(declare-fun e!3267848 () Bool)

(assert (=> b!5252718 (= e!3267847 e!3267848)))

(declare-fun res!2229188 () Bool)

(assert (=> b!5252718 (=> res!2229188 e!3267848)))

(assert (=> b!5252718 (= res!2229188 (or (and ((_ is ElementMatch!14865) (regOne!30242 r!7292)) (= (c!908689 (regOne!30242 r!7292)) (h!67218 s!2326))) (not ((_ is Union!14865) (regOne!30242 r!7292)))))))

(declare-fun lt!2152849 () Unit!152934)

(declare-fun e!3267863 () Unit!152934)

(assert (=> b!5252718 (= lt!2152849 e!3267863)))

(declare-fun c!908688 () Bool)

(assert (=> b!5252718 (= c!908688 (nullable!5034 (h!67219 (exprs!4749 (h!67220 zl!343)))))))

(assert (=> b!5252718 (= (flatMap!592 z!1189 lambda!264577) (derivationStepZipperUp!237 (h!67220 zl!343) (h!67218 s!2326)))))

(declare-fun lt!2152877 () Unit!152934)

(assert (=> b!5252718 (= lt!2152877 (lemmaFlatMapOnSingletonSet!124 z!1189 (h!67220 zl!343) lambda!264577))))

(declare-fun lt!2152869 () Context!8498)

(assert (=> b!5252718 (= lt!2152863 (derivationStepZipperUp!237 lt!2152869 (h!67218 s!2326)))))

(declare-fun derivationStepZipperDown!313 (Regex!14865 Context!8498 C!30000) (InoxSet Context!8498))

(assert (=> b!5252718 (= lt!2152845 (derivationStepZipperDown!313 (h!67219 (exprs!4749 (h!67220 zl!343))) lt!2152869 (h!67218 s!2326)))))

(assert (=> b!5252718 (= lt!2152869 (Context!8499 (t!374078 (exprs!4749 (h!67220 zl!343)))))))

(declare-fun lt!2152855 () (InoxSet Context!8498))

(assert (=> b!5252718 (= lt!2152855 (derivationStepZipperUp!237 (Context!8499 (Cons!60771 (h!67219 (exprs!4749 (h!67220 zl!343))) (t!374078 (exprs!4749 (h!67220 zl!343))))) (h!67218 s!2326)))))

(declare-fun b!5252719 () Bool)

(declare-fun tp_is_empty!38983 () Bool)

(assert (=> b!5252719 (= e!3267860 tp_is_empty!38983)))

(declare-fun b!5252720 () Bool)

(declare-fun Unit!152937 () Unit!152934)

(assert (=> b!5252720 (= e!3267870 Unit!152937)))

(declare-fun b!5252721 () Bool)

(declare-fun res!2229178 () Bool)

(assert (=> b!5252721 (=> res!2229178 e!3267850)))

(assert (=> b!5252721 (= res!2229178 (not ((_ is Cons!60771) (exprs!4749 (h!67220 zl!343)))))))

(declare-fun b!5252722 () Bool)

(declare-fun res!2229182 () Bool)

(assert (=> b!5252722 (=> (not res!2229182) (not e!3267869))))

(declare-fun toList!8649 ((InoxSet Context!8498)) List!60896)

(assert (=> b!5252722 (= res!2229182 (= (toList!8649 z!1189) zl!343))))

(declare-fun b!5252723 () Bool)

(declare-fun e!3267866 () Bool)

(declare-fun e!3267854 () Bool)

(assert (=> b!5252723 (= e!3267866 e!3267854)))

(declare-fun res!2229192 () Bool)

(assert (=> b!5252723 (=> res!2229192 e!3267854)))

(declare-fun lt!2152885 () Bool)

(declare-fun lt!2152835 () Bool)

(assert (=> b!5252723 (= res!2229192 (and (not (= lt!2152879 lt!2152835)) (not lt!2152885)))))

(declare-fun lt!2152844 () Regex!14865)

(assert (=> b!5252723 (= lt!2152885 (matchRSpec!1968 lt!2152844 s!2326))))

(declare-fun lt!2152858 () Unit!152934)

(assert (=> b!5252723 (= lt!2152858 (mainMatchTheorem!1968 lt!2152844 s!2326))))

(declare-fun lt!2152878 () Regex!14865)

(assert (=> b!5252723 (= lt!2152835 (matchRSpec!1968 lt!2152878 s!2326))))

(declare-fun lt!2152865 () Unit!152934)

(assert (=> b!5252723 (= lt!2152865 (mainMatchTheorem!1968 lt!2152878 s!2326))))

(assert (=> b!5252723 (= lt!2152885 (matchZipper!1109 lt!2152862 s!2326))))

(assert (=> b!5252723 (= lt!2152885 (matchR!7050 lt!2152844 s!2326))))

(declare-fun lt!2152880 () Unit!152934)

(declare-fun lt!2152886 () List!60896)

(declare-fun theoremZipperRegexEquiv!299 ((InoxSet Context!8498) List!60896 Regex!14865 List!60894) Unit!152934)

(assert (=> b!5252723 (= lt!2152880 (theoremZipperRegexEquiv!299 lt!2152862 lt!2152886 lt!2152844 s!2326))))

(declare-fun generalisedConcat!534 (List!60895) Regex!14865)

(assert (=> b!5252723 (= lt!2152844 (generalisedConcat!534 lt!2152852))))

(assert (=> b!5252723 (= lt!2152835 lt!2152853)))

(assert (=> b!5252723 (= lt!2152835 (matchR!7050 lt!2152878 s!2326))))

(declare-fun lt!2152834 () Unit!152934)

(declare-fun lt!2152848 () List!60896)

(assert (=> b!5252723 (= lt!2152834 (theoremZipperRegexEquiv!299 lt!2152840 lt!2152848 lt!2152878 s!2326))))

(assert (=> b!5252723 (= lt!2152878 (generalisedConcat!534 lt!2152856))))

(declare-fun b!5252724 () Bool)

(assert (=> b!5252724 (= e!3267859 (matchZipper!1109 lt!2152841 (t!374077 s!2326)))))

(declare-fun b!5252725 () Bool)

(declare-fun tp!1469402 () Bool)

(assert (=> b!5252725 (= e!3267846 tp!1469402)))

(declare-fun b!5252726 () Bool)

(declare-fun res!2229195 () Bool)

(assert (=> b!5252726 (=> res!2229195 e!3267868)))

(assert (=> b!5252726 (= res!2229195 (or (not (= lt!2152861 r!7292)) (not (= (exprs!4749 (h!67220 zl!343)) (Cons!60771 (regOne!30242 r!7292) (t!374078 (exprs!4749 (h!67220 zl!343))))))))))

(declare-fun e!3267856 () Bool)

(declare-fun tp!1469401 () Bool)

(declare-fun b!5252727 () Bool)

(declare-fun e!3267852 () Bool)

(assert (=> b!5252727 (= e!3267852 (and (inv!80409 (h!67220 zl!343)) e!3267856 tp!1469401))))

(declare-fun b!5252728 () Bool)

(declare-fun e!3267849 () Bool)

(assert (=> b!5252728 (= e!3267854 e!3267849)))

(declare-fun res!2229169 () Bool)

(assert (=> b!5252728 (=> res!2229169 e!3267849)))

(declare-fun lt!2152837 () Regex!14865)

(assert (=> b!5252728 (= res!2229169 (not (= r!7292 lt!2152837)))))

(assert (=> b!5252728 (= lt!2152837 (Concat!23710 (Union!14865 (regOne!30243 (regOne!30242 r!7292)) (regTwo!30243 (regOne!30242 r!7292))) (regTwo!30242 r!7292)))))

(declare-fun b!5252729 () Bool)

(declare-fun Unit!152938 () Unit!152934)

(assert (=> b!5252729 (= e!3267844 Unit!152938)))

(declare-fun b!5252730 () Bool)

(assert (=> b!5252730 (= e!3267864 (matchZipper!1109 lt!2152863 (t!374077 s!2326)))))

(assert (=> b!5252731 (= e!3267850 e!3267847)))

(declare-fun res!2229189 () Bool)

(assert (=> b!5252731 (=> res!2229189 e!3267847)))

(declare-fun lt!2152873 () Bool)

(assert (=> b!5252731 (= res!2229189 (or (not (= lt!2152843 lt!2152873)) ((_ is Nil!60770) s!2326)))))

(declare-fun Exists!2046 (Int) Bool)

(assert (=> b!5252731 (= (Exists!2046 lambda!264575) (Exists!2046 lambda!264576))))

(declare-fun lt!2152875 () Unit!152934)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!700 (Regex!14865 Regex!14865 List!60894) Unit!152934)

(assert (=> b!5252731 (= lt!2152875 (lemmaExistCutMatchRandMatchRSpecEquivalent!700 (regOne!30242 r!7292) (regTwo!30242 r!7292) s!2326))))

(assert (=> b!5252731 (= lt!2152873 (Exists!2046 lambda!264575))))

(declare-datatypes ((tuple2!64128 0))(
  ( (tuple2!64129 (_1!35367 List!60894) (_2!35367 List!60894)) )
))
(declare-datatypes ((Option!14976 0))(
  ( (None!14975) (Some!14975 (v!51004 tuple2!64128)) )
))
(declare-fun isDefined!11679 (Option!14976) Bool)

(declare-fun findConcatSeparation!1390 (Regex!14865 Regex!14865 List!60894 List!60894 List!60894) Option!14976)

(assert (=> b!5252731 (= lt!2152873 (isDefined!11679 (findConcatSeparation!1390 (regOne!30242 r!7292) (regTwo!30242 r!7292) Nil!60770 s!2326 s!2326)))))

(declare-fun lt!2152851 () Unit!152934)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1154 (Regex!14865 Regex!14865 List!60894) Unit!152934)

(assert (=> b!5252731 (= lt!2152851 (lemmaFindConcatSeparationEquivalentToExists!1154 (regOne!30242 r!7292) (regTwo!30242 r!7292) s!2326))))

(declare-fun res!2229191 () Bool)

(assert (=> start!554938 (=> (not res!2229191) (not e!3267869))))

(declare-fun validRegex!6601 (Regex!14865) Bool)

(assert (=> start!554938 (= res!2229191 (validRegex!6601 r!7292))))

(assert (=> start!554938 e!3267869))

(assert (=> start!554938 e!3267860))

(declare-fun condSetEmpty!33551 () Bool)

(assert (=> start!554938 (= condSetEmpty!33551 (= z!1189 ((as const (Array Context!8498 Bool)) false)))))

(assert (=> start!554938 setRes!33551))

(assert (=> start!554938 e!3267852))

(declare-fun e!3267855 () Bool)

(assert (=> start!554938 e!3267855))

(declare-fun b!5252732 () Bool)

(declare-fun Unit!152939 () Unit!152934)

(assert (=> b!5252732 (= e!3267863 Unit!152939)))

(declare-fun lt!2152870 () Unit!152934)

(assert (=> b!5252732 (= lt!2152870 (lemmaZipperConcatMatchesSameAsBothZippers!102 lt!2152845 lt!2152863 (t!374077 s!2326)))))

(declare-fun res!2229186 () Bool)

(assert (=> b!5252732 (= res!2229186 (matchZipper!1109 lt!2152845 (t!374077 s!2326)))))

(assert (=> b!5252732 (=> res!2229186 e!3267865)))

(assert (=> b!5252732 (= (matchZipper!1109 ((_ map or) lt!2152845 lt!2152863) (t!374077 s!2326)) e!3267865)))

(declare-fun b!5252733 () Bool)

(declare-fun Unit!152940 () Unit!152934)

(assert (=> b!5252733 (= e!3267844 Unit!152940)))

(declare-fun lt!2152854 () Unit!152934)

(assert (=> b!5252733 (= lt!2152854 (lemmaZipperConcatMatchesSameAsBothZippers!102 lt!2152841 lt!2152863 (t!374077 s!2326)))))

(declare-fun res!2229174 () Bool)

(assert (=> b!5252733 (= res!2229174 (matchZipper!1109 lt!2152841 (t!374077 s!2326)))))

(assert (=> b!5252733 (=> res!2229174 e!3267851)))

(assert (=> b!5252733 (= (matchZipper!1109 ((_ map or) lt!2152841 lt!2152863) (t!374077 s!2326)) e!3267851)))

(declare-fun b!5252734 () Bool)

(declare-fun res!2229187 () Bool)

(assert (=> b!5252734 (=> res!2229187 e!3267850)))

(declare-fun isEmpty!32707 (List!60896) Bool)

(assert (=> b!5252734 (= res!2229187 (not (isEmpty!32707 (t!374079 zl!343))))))

(declare-fun b!5252735 () Bool)

(declare-fun res!2229190 () Bool)

(assert (=> b!5252735 (=> res!2229190 e!3267847)))

(declare-fun isEmpty!32708 (List!60895) Bool)

(assert (=> b!5252735 (= res!2229190 (isEmpty!32708 (t!374078 (exprs!4749 (h!67220 zl!343)))))))

(declare-fun setIsEmpty!33551 () Bool)

(assert (=> setIsEmpty!33551 setRes!33551))

(declare-fun b!5252736 () Bool)

(declare-fun res!2229179 () Bool)

(assert (=> b!5252736 (=> res!2229179 e!3267850)))

(assert (=> b!5252736 (= res!2229179 (not (= r!7292 (generalisedConcat!534 (exprs!4749 (h!67220 zl!343))))))))

(declare-fun b!5252737 () Bool)

(declare-fun res!2229184 () Bool)

(assert (=> b!5252737 (=> res!2229184 e!3267850)))

(assert (=> b!5252737 (= res!2229184 (or ((_ is EmptyExpr!14865) r!7292) ((_ is EmptyLang!14865) r!7292) ((_ is ElementMatch!14865) r!7292) ((_ is Union!14865) r!7292) (not ((_ is Concat!23710) r!7292))))))

(declare-fun b!5252738 () Bool)

(declare-fun e!3267853 () Bool)

(assert (=> b!5252738 (= e!3267868 e!3267853)))

(declare-fun res!2229193 () Bool)

(assert (=> b!5252738 (=> res!2229193 e!3267853)))

(declare-fun lt!2152839 () Int)

(declare-fun lt!2152882 () Int)

(assert (=> b!5252738 (= res!2229193 (>= lt!2152839 lt!2152882))))

(declare-fun zipperDepthTotal!46 (List!60896) Int)

(assert (=> b!5252738 (= lt!2152882 (zipperDepthTotal!46 zl!343))))

(assert (=> b!5252738 (= lt!2152839 (zipperDepthTotal!46 lt!2152848))))

(assert (=> b!5252738 (= lt!2152848 (Cons!60772 lt!2152874 Nil!60772))))

(declare-fun b!5252739 () Bool)

(declare-fun Unit!152941 () Unit!152934)

(assert (=> b!5252739 (= e!3267863 Unit!152941)))

(declare-fun b!5252740 () Bool)

(declare-fun tp!1469406 () Bool)

(assert (=> b!5252740 (= e!3267855 (and tp_is_empty!38983 tp!1469406))))

(declare-fun b!5252741 () Bool)

(assert (=> b!5252741 (= e!3267858 (matchZipper!1109 lt!2152862 s!2326))))

(declare-fun b!5252742 () Bool)

(assert (=> b!5252742 (= e!3267848 e!3267845)))

(declare-fun res!2229171 () Bool)

(assert (=> b!5252742 (=> res!2229171 e!3267845)))

(assert (=> b!5252742 (= res!2229171 (not (= lt!2152845 lt!2152864)))))

(assert (=> b!5252742 (= lt!2152864 ((_ map or) lt!2152859 lt!2152841))))

(assert (=> b!5252742 (= lt!2152841 (derivationStepZipperDown!313 (regTwo!30243 (regOne!30242 r!7292)) lt!2152869 (h!67218 s!2326)))))

(assert (=> b!5252742 (= lt!2152859 (derivationStepZipperDown!313 (regOne!30243 (regOne!30242 r!7292)) lt!2152869 (h!67218 s!2326)))))

(declare-fun b!5252743 () Bool)

(declare-fun tp!1469405 () Bool)

(declare-fun tp!1469403 () Bool)

(assert (=> b!5252743 (= e!3267860 (and tp!1469405 tp!1469403))))

(declare-fun b!5252744 () Bool)

(assert (=> b!5252744 (= e!3267853 e!3267866)))

(declare-fun res!2229170 () Bool)

(assert (=> b!5252744 (=> res!2229170 e!3267866)))

(assert (=> b!5252744 (= res!2229170 (>= (zipperDepthTotal!46 lt!2152886) lt!2152882))))

(assert (=> b!5252744 (= lt!2152886 (Cons!60772 lt!2152868 Nil!60772))))

(declare-fun b!5252745 () Bool)

(declare-fun e!3267861 () Bool)

(assert (=> b!5252745 (= e!3267861 (validRegex!6601 lt!2152837))))

(declare-fun lt!2152847 () Bool)

(assert (=> b!5252745 (= lt!2152847 (matchRSpec!1968 lt!2152837 s!2326))))

(declare-fun lt!2152872 () Unit!152934)

(assert (=> b!5252745 (= lt!2152872 (mainMatchTheorem!1968 lt!2152837 s!2326))))

(declare-fun lt!2152867 () Bool)

(declare-fun lt!2152833 () Regex!14865)

(assert (=> b!5252745 (= lt!2152867 (matchRSpec!1968 lt!2152833 s!2326))))

(declare-fun lt!2152871 () Unit!152934)

(assert (=> b!5252745 (= lt!2152871 (mainMatchTheorem!1968 lt!2152833 s!2326))))

(assert (=> b!5252745 (= lt!2152847 lt!2152867)))

(assert (=> b!5252745 (= lt!2152867 (matchR!7050 lt!2152833 s!2326))))

(assert (=> b!5252745 (= lt!2152847 (matchR!7050 lt!2152837 s!2326))))

(assert (=> b!5252745 (= lt!2152833 (Union!14865 (Concat!23710 (regOne!30243 (regOne!30242 r!7292)) (regTwo!30242 r!7292)) (Concat!23710 (regTwo!30243 (regOne!30242 r!7292)) (regTwo!30242 r!7292))))))

(declare-fun lt!2152842 () Unit!152934)

(declare-fun lemmaConcatDistributesInUnion!10 (Regex!14865 Regex!14865 Regex!14865 List!60894) Unit!152934)

(assert (=> b!5252745 (= lt!2152842 (lemmaConcatDistributesInUnion!10 (regOne!30243 (regOne!30242 r!7292)) (regTwo!30243 (regOne!30242 r!7292)) (regTwo!30242 r!7292) s!2326))))

(declare-fun b!5252746 () Bool)

(declare-fun tp!1469409 () Bool)

(assert (=> b!5252746 (= e!3267856 tp!1469409)))

(declare-fun b!5252747 () Bool)

(assert (=> b!5252747 (= e!3267849 e!3267861)))

(declare-fun res!2229194 () Bool)

(assert (=> b!5252747 (=> res!2229194 e!3267861)))

(declare-fun lt!2152850 () Regex!14865)

(assert (=> b!5252747 (= res!2229194 (or (not (= lt!2152878 (Concat!23710 (regOne!30243 (regOne!30242 r!7292)) lt!2152850))) (not (= lt!2152844 (Concat!23710 (regTwo!30243 (regOne!30242 r!7292)) lt!2152850))) (not (= (regTwo!30242 r!7292) lt!2152850))))))

(assert (=> b!5252747 (= lt!2152850 (generalisedConcat!534 (t!374078 (exprs!4749 (h!67220 zl!343)))))))

(assert (= (and start!554938 res!2229191) b!5252722))

(assert (= (and b!5252722 res!2229182) b!5252717))

(assert (= (and b!5252717 res!2229177) b!5252715))

(assert (= (and b!5252715 (not res!2229180)) b!5252734))

(assert (= (and b!5252734 (not res!2229187)) b!5252736))

(assert (= (and b!5252736 (not res!2229179)) b!5252721))

(assert (= (and b!5252721 (not res!2229178)) b!5252712))

(assert (= (and b!5252712 (not res!2229172)) b!5252737))

(assert (= (and b!5252737 (not res!2229184)) b!5252731))

(assert (= (and b!5252731 (not res!2229189)) b!5252735))

(assert (= (and b!5252735 (not res!2229190)) b!5252718))

(assert (= (and b!5252718 c!908688) b!5252732))

(assert (= (and b!5252718 (not c!908688)) b!5252739))

(assert (= (and b!5252732 (not res!2229186)) b!5252708))

(assert (= (and b!5252718 (not res!2229188)) b!5252742))

(assert (= (and b!5252742 (not res!2229171)) b!5252707))

(assert (= (and b!5252707 (not res!2229176)) b!5252724))

(assert (= (and b!5252707 res!2229173) b!5252713))

(assert (= (and b!5252707 (not res!2229183)) b!5252716))

(assert (= (and b!5252716 c!908687) b!5252710))

(assert (= (and b!5252716 (not c!908687)) b!5252720))

(assert (= (and b!5252710 (not res!2229185)) b!5252730))

(assert (= (and b!5252716 c!908686) b!5252733))

(assert (= (and b!5252716 (not c!908686)) b!5252729))

(assert (= (and b!5252733 (not res!2229174)) b!5252709))

(assert (= (and b!5252716 (not res!2229175)) b!5252741))

(assert (= (and b!5252716 (not res!2229181)) b!5252726))

(assert (= (and b!5252726 (not res!2229195)) b!5252738))

(assert (= (and b!5252738 (not res!2229193)) b!5252744))

(assert (= (and b!5252744 (not res!2229170)) b!5252723))

(assert (= (and b!5252723 (not res!2229192)) b!5252728))

(assert (= (and b!5252728 (not res!2229169)) b!5252747))

(assert (= (and b!5252747 (not res!2229194)) b!5252745))

(assert (= (and start!554938 ((_ is ElementMatch!14865) r!7292)) b!5252719))

(assert (= (and start!554938 ((_ is Concat!23710) r!7292)) b!5252711))

(assert (= (and start!554938 ((_ is Star!14865) r!7292)) b!5252714))

(assert (= (and start!554938 ((_ is Union!14865) r!7292)) b!5252743))

(assert (= (and start!554938 condSetEmpty!33551) setIsEmpty!33551))

(assert (= (and start!554938 (not condSetEmpty!33551)) setNonEmpty!33551))

(assert (= setNonEmpty!33551 b!5252725))

(assert (= b!5252727 b!5252746))

(assert (= (and start!554938 ((_ is Cons!60772) zl!343)) b!5252727))

(assert (= (and start!554938 ((_ is Cons!60770) s!2326)) b!5252740))

(declare-fun m!6295714 () Bool)

(assert (=> b!5252731 m!6295714))

(declare-fun m!6295716 () Bool)

(assert (=> b!5252731 m!6295716))

(declare-fun m!6295718 () Bool)

(assert (=> b!5252731 m!6295718))

(declare-fun m!6295720 () Bool)

(assert (=> b!5252731 m!6295720))

(declare-fun m!6295722 () Bool)

(assert (=> b!5252731 m!6295722))

(assert (=> b!5252731 m!6295718))

(assert (=> b!5252731 m!6295714))

(declare-fun m!6295724 () Bool)

(assert (=> b!5252731 m!6295724))

(declare-fun m!6295726 () Bool)

(assert (=> b!5252712 m!6295726))

(assert (=> b!5252712 m!6295726))

(declare-fun m!6295728 () Bool)

(assert (=> b!5252712 m!6295728))

(declare-fun m!6295730 () Bool)

(assert (=> b!5252713 m!6295730))

(declare-fun m!6295732 () Bool)

(assert (=> b!5252722 m!6295732))

(declare-fun m!6295734 () Bool)

(assert (=> b!5252736 m!6295734))

(declare-fun m!6295736 () Bool)

(assert (=> b!5252734 m!6295736))

(declare-fun m!6295738 () Bool)

(assert (=> b!5252723 m!6295738))

(declare-fun m!6295740 () Bool)

(assert (=> b!5252723 m!6295740))

(declare-fun m!6295742 () Bool)

(assert (=> b!5252723 m!6295742))

(declare-fun m!6295744 () Bool)

(assert (=> b!5252723 m!6295744))

(declare-fun m!6295746 () Bool)

(assert (=> b!5252723 m!6295746))

(declare-fun m!6295748 () Bool)

(assert (=> b!5252723 m!6295748))

(declare-fun m!6295750 () Bool)

(assert (=> b!5252723 m!6295750))

(declare-fun m!6295752 () Bool)

(assert (=> b!5252723 m!6295752))

(declare-fun m!6295754 () Bool)

(assert (=> b!5252723 m!6295754))

(declare-fun m!6295756 () Bool)

(assert (=> b!5252723 m!6295756))

(declare-fun m!6295758 () Bool)

(assert (=> b!5252723 m!6295758))

(assert (=> b!5252724 m!6295730))

(declare-fun m!6295760 () Bool)

(assert (=> b!5252727 m!6295760))

(declare-fun m!6295762 () Bool)

(assert (=> b!5252716 m!6295762))

(declare-fun m!6295764 () Bool)

(assert (=> b!5252716 m!6295764))

(declare-fun m!6295766 () Bool)

(assert (=> b!5252716 m!6295766))

(declare-fun m!6295768 () Bool)

(assert (=> b!5252716 m!6295768))

(declare-fun m!6295770 () Bool)

(assert (=> b!5252716 m!6295770))

(declare-fun m!6295772 () Bool)

(assert (=> b!5252716 m!6295772))

(declare-fun m!6295774 () Bool)

(assert (=> b!5252716 m!6295774))

(declare-fun m!6295776 () Bool)

(assert (=> b!5252716 m!6295776))

(declare-fun m!6295778 () Bool)

(assert (=> b!5252716 m!6295778))

(declare-fun m!6295780 () Bool)

(assert (=> b!5252716 m!6295780))

(declare-fun m!6295782 () Bool)

(assert (=> b!5252716 m!6295782))

(declare-fun m!6295784 () Bool)

(assert (=> b!5252716 m!6295784))

(declare-fun m!6295786 () Bool)

(assert (=> b!5252738 m!6295786))

(declare-fun m!6295788 () Bool)

(assert (=> b!5252738 m!6295788))

(declare-fun m!6295790 () Bool)

(assert (=> b!5252730 m!6295790))

(declare-fun m!6295792 () Bool)

(assert (=> b!5252710 m!6295792))

(declare-fun m!6295794 () Bool)

(assert (=> b!5252710 m!6295794))

(declare-fun m!6295796 () Bool)

(assert (=> b!5252732 m!6295796))

(declare-fun m!6295798 () Bool)

(assert (=> b!5252732 m!6295798))

(declare-fun m!6295800 () Bool)

(assert (=> b!5252732 m!6295800))

(assert (=> b!5252707 m!6295798))

(declare-fun m!6295802 () Bool)

(assert (=> b!5252707 m!6295802))

(declare-fun m!6295804 () Bool)

(assert (=> b!5252707 m!6295804))

(declare-fun m!6295806 () Bool)

(assert (=> b!5252707 m!6295806))

(assert (=> b!5252741 m!6295744))

(declare-fun m!6295808 () Bool)

(assert (=> b!5252742 m!6295808))

(declare-fun m!6295810 () Bool)

(assert (=> b!5252742 m!6295810))

(declare-fun m!6295812 () Bool)

(assert (=> b!5252717 m!6295812))

(declare-fun m!6295814 () Bool)

(assert (=> b!5252718 m!6295814))

(declare-fun m!6295816 () Bool)

(assert (=> b!5252718 m!6295816))

(declare-fun m!6295818 () Bool)

(assert (=> b!5252718 m!6295818))

(declare-fun m!6295820 () Bool)

(assert (=> b!5252718 m!6295820))

(declare-fun m!6295822 () Bool)

(assert (=> b!5252718 m!6295822))

(declare-fun m!6295824 () Bool)

(assert (=> b!5252718 m!6295824))

(declare-fun m!6295826 () Bool)

(assert (=> b!5252718 m!6295826))

(declare-fun m!6295828 () Bool)

(assert (=> b!5252744 m!6295828))

(declare-fun m!6295830 () Bool)

(assert (=> b!5252715 m!6295830))

(declare-fun m!6295832 () Bool)

(assert (=> b!5252715 m!6295832))

(declare-fun m!6295834 () Bool)

(assert (=> b!5252715 m!6295834))

(assert (=> b!5252708 m!6295790))

(assert (=> b!5252709 m!6295790))

(declare-fun m!6295836 () Bool)

(assert (=> setNonEmpty!33551 m!6295836))

(declare-fun m!6295838 () Bool)

(assert (=> b!5252733 m!6295838))

(assert (=> b!5252733 m!6295730))

(declare-fun m!6295840 () Bool)

(assert (=> b!5252733 m!6295840))

(declare-fun m!6295842 () Bool)

(assert (=> start!554938 m!6295842))

(declare-fun m!6295844 () Bool)

(assert (=> b!5252747 m!6295844))

(declare-fun m!6295846 () Bool)

(assert (=> b!5252735 m!6295846))

(declare-fun m!6295848 () Bool)

(assert (=> b!5252745 m!6295848))

(declare-fun m!6295850 () Bool)

(assert (=> b!5252745 m!6295850))

(declare-fun m!6295852 () Bool)

(assert (=> b!5252745 m!6295852))

(declare-fun m!6295854 () Bool)

(assert (=> b!5252745 m!6295854))

(declare-fun m!6295856 () Bool)

(assert (=> b!5252745 m!6295856))

(declare-fun m!6295858 () Bool)

(assert (=> b!5252745 m!6295858))

(declare-fun m!6295860 () Bool)

(assert (=> b!5252745 m!6295860))

(declare-fun m!6295862 () Bool)

(assert (=> b!5252745 m!6295862))

(check-sat (not b!5252731) (not start!554938) (not b!5252707) tp_is_empty!38983 (not b!5252712) (not b!5252713) (not b!5252730) (not b!5252711) (not b!5252717) (not b!5252738) (not b!5252722) (not b!5252718) (not b!5252709) (not b!5252743) (not b!5252732) (not b!5252747) (not b!5252736) (not b!5252744) (not b!5252745) (not b!5252724) (not b!5252741) (not b!5252742) (not b!5252714) (not setNonEmpty!33551) (not b!5252715) (not b!5252716) (not b!5252733) (not b!5252708) (not b!5252727) (not b!5252746) (not b!5252710) (not b!5252725) (not b!5252723) (not b!5252734) (not b!5252740) (not b!5252735))
(check-sat)
