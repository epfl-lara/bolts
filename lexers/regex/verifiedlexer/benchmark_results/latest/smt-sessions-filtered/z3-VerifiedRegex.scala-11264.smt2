; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!591940 () Bool)

(assert start!591940)

(declare-fun b!5763152 () Bool)

(assert (=> b!5763152 true))

(assert (=> b!5763152 true))

(declare-fun lambda!312916 () Int)

(declare-fun lambda!312915 () Int)

(assert (=> b!5763152 (not (= lambda!312916 lambda!312915))))

(assert (=> b!5763152 true))

(assert (=> b!5763152 true))

(declare-fun b!5763167 () Bool)

(assert (=> b!5763167 true))

(declare-fun b!5763149 () Bool)

(declare-fun e!3540992 () Bool)

(declare-fun tp!1592843 () Bool)

(assert (=> b!5763149 (= e!3540992 tp!1592843)))

(declare-fun b!5763150 () Bool)

(declare-fun e!3540997 () Bool)

(declare-fun e!3540988 () Bool)

(assert (=> b!5763150 (= e!3540997 e!3540988)))

(declare-fun res!2432353 () Bool)

(assert (=> b!5763150 (=> res!2432353 e!3540988)))

(declare-fun lt!2289023 () Bool)

(declare-fun lt!2289026 () Bool)

(assert (=> b!5763150 (= res!2432353 (not (= lt!2289023 lt!2289026)))))

(declare-datatypes ((C!31820 0))(
  ( (C!31821 (val!25612 Int)) )
))
(declare-datatypes ((Regex!15775 0))(
  ( (ElementMatch!15775 (c!1018649 C!31820)) (Concat!24620 (regOne!32062 Regex!15775) (regTwo!32062 Regex!15775)) (EmptyExpr!15775) (Star!15775 (reg!16104 Regex!15775)) (EmptyLang!15775) (Union!15775 (regOne!32063 Regex!15775) (regTwo!32063 Regex!15775)) )
))
(declare-fun r!7292 () Regex!15775)

(declare-datatypes ((List!63624 0))(
  ( (Nil!63500) (Cons!63500 (h!69948 C!31820) (t!376958 List!63624)) )
))
(declare-fun s!2326 () List!63624)

(declare-fun matchRSpec!2878 (Regex!15775 List!63624) Bool)

(assert (=> b!5763150 (= lt!2289026 (matchRSpec!2878 (regTwo!32062 r!7292) s!2326))))

(declare-fun matchR!7960 (Regex!15775 List!63624) Bool)

(assert (=> b!5763150 (= lt!2289026 (matchR!7960 (regTwo!32062 r!7292) s!2326))))

(declare-datatypes ((Unit!156632 0))(
  ( (Unit!156633) )
))
(declare-fun lt!2289018 () Unit!156632)

(declare-fun mainMatchTheorem!2878 (Regex!15775 List!63624) Unit!156632)

(assert (=> b!5763150 (= lt!2289018 (mainMatchTheorem!2878 (regTwo!32062 r!7292) s!2326))))

(assert (=> b!5763150 (= (matchR!7960 (regOne!32062 r!7292) s!2326) (matchRSpec!2878 (regOne!32062 r!7292) s!2326))))

(declare-fun lt!2289019 () Unit!156632)

(assert (=> b!5763150 (= lt!2289019 (mainMatchTheorem!2878 (regOne!32062 r!7292) s!2326))))

(declare-fun b!5763151 () Bool)

(declare-fun res!2432335 () Bool)

(declare-fun e!3540998 () Bool)

(assert (=> b!5763151 (=> res!2432335 e!3540998)))

(declare-datatypes ((List!63625 0))(
  ( (Nil!63501) (Cons!63501 (h!69949 Regex!15775) (t!376959 List!63625)) )
))
(declare-datatypes ((Context!10318 0))(
  ( (Context!10319 (exprs!5659 List!63625)) )
))
(declare-datatypes ((List!63626 0))(
  ( (Nil!63502) (Cons!63502 (h!69950 Context!10318) (t!376960 List!63626)) )
))
(declare-fun zl!343 () List!63626)

(declare-fun isEmpty!35389 (List!63625) Bool)

(assert (=> b!5763151 (= res!2432335 (isEmpty!35389 (t!376959 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun e!3540994 () Bool)

(assert (=> b!5763152 (= e!3540994 e!3540998)))

(declare-fun res!2432344 () Bool)

(assert (=> b!5763152 (=> res!2432344 e!3540998)))

(declare-fun lt!2289024 () Bool)

(get-info :version)

(assert (=> b!5763152 (= res!2432344 (or (not (= lt!2289023 lt!2289024)) ((_ is Nil!63500) s!2326)))))

(declare-fun Exists!2875 (Int) Bool)

(assert (=> b!5763152 (= (Exists!2875 lambda!312915) (Exists!2875 lambda!312916))))

(declare-fun lt!2289020 () Unit!156632)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1504 (Regex!15775 Regex!15775 List!63624) Unit!156632)

(assert (=> b!5763152 (= lt!2289020 (lemmaExistCutMatchRandMatchRSpecEquivalent!1504 (regOne!32062 r!7292) (regTwo!32062 r!7292) s!2326))))

(assert (=> b!5763152 (= lt!2289024 (Exists!2875 lambda!312915))))

(declare-datatypes ((tuple2!65744 0))(
  ( (tuple2!65745 (_1!36175 List!63624) (_2!36175 List!63624)) )
))
(declare-datatypes ((Option!15784 0))(
  ( (None!15783) (Some!15783 (v!51842 tuple2!65744)) )
))
(declare-fun isDefined!12487 (Option!15784) Bool)

(declare-fun findConcatSeparation!2198 (Regex!15775 Regex!15775 List!63624 List!63624 List!63624) Option!15784)

(assert (=> b!5763152 (= lt!2289024 (isDefined!12487 (findConcatSeparation!2198 (regOne!32062 r!7292) (regTwo!32062 r!7292) Nil!63500 s!2326 s!2326)))))

(declare-fun lt!2289022 () Unit!156632)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1962 (Regex!15775 Regex!15775 List!63624) Unit!156632)

(assert (=> b!5763152 (= lt!2289022 (lemmaFindConcatSeparationEquivalentToExists!1962 (regOne!32062 r!7292) (regTwo!32062 r!7292) s!2326))))

(declare-fun b!5763153 () Bool)

(declare-fun e!3540995 () Bool)

(declare-fun tp!1592840 () Bool)

(assert (=> b!5763153 (= e!3540995 tp!1592840)))

(declare-fun res!2432350 () Bool)

(declare-fun e!3540993 () Bool)

(assert (=> start!591940 (=> (not res!2432350) (not e!3540993))))

(declare-fun validRegex!7511 (Regex!15775) Bool)

(assert (=> start!591940 (= res!2432350 (validRegex!7511 r!7292))))

(assert (=> start!591940 e!3540993))

(declare-fun e!3540999 () Bool)

(assert (=> start!591940 e!3540999))

(declare-fun condSetEmpty!38707 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10318))

(assert (=> start!591940 (= condSetEmpty!38707 (= z!1189 ((as const (Array Context!10318 Bool)) false)))))

(declare-fun setRes!38707 () Bool)

(assert (=> start!591940 setRes!38707))

(declare-fun e!3541000 () Bool)

(assert (=> start!591940 e!3541000))

(declare-fun e!3541002 () Bool)

(assert (=> start!591940 e!3541002))

(declare-fun b!5763154 () Bool)

(declare-fun res!2432342 () Bool)

(assert (=> b!5763154 (=> res!2432342 e!3540994)))

(declare-fun generalisedConcat!1390 (List!63625) Regex!15775)

(assert (=> b!5763154 (= res!2432342 (not (= r!7292 (generalisedConcat!1390 (exprs!5659 (h!69950 zl!343))))))))

(declare-fun b!5763155 () Bool)

(declare-fun res!2432340 () Bool)

(assert (=> b!5763155 (=> (not res!2432340) (not e!3540993))))

(declare-fun toList!9559 ((InoxSet Context!10318)) List!63626)

(assert (=> b!5763155 (= res!2432340 (= (toList!9559 z!1189) zl!343))))

(declare-fun b!5763156 () Bool)

(declare-fun res!2432347 () Bool)

(assert (=> b!5763156 (=> res!2432347 e!3540994)))

(declare-fun generalisedUnion!1638 (List!63625) Regex!15775)

(declare-fun unfocusZipperList!1203 (List!63626) List!63625)

(assert (=> b!5763156 (= res!2432347 (not (= r!7292 (generalisedUnion!1638 (unfocusZipperList!1203 zl!343)))))))

(declare-fun b!5763157 () Bool)

(declare-fun res!2432349 () Bool)

(declare-fun e!3540996 () Bool)

(assert (=> b!5763157 (=> res!2432349 e!3540996)))

(declare-fun e!3540991 () Bool)

(assert (=> b!5763157 (= res!2432349 e!3540991)))

(declare-fun res!2432343 () Bool)

(assert (=> b!5763157 (=> (not res!2432343) (not e!3540991))))

(assert (=> b!5763157 (= res!2432343 ((_ is Concat!24620) (regOne!32062 r!7292)))))

(declare-fun setIsEmpty!38707 () Bool)

(assert (=> setIsEmpty!38707 setRes!38707))

(declare-fun b!5763158 () Bool)

(declare-fun e!3540990 () Bool)

(declare-fun lt!2289025 () (InoxSet Context!10318))

(declare-fun matchZipper!1913 ((InoxSet Context!10318) List!63624) Bool)

(assert (=> b!5763158 (= e!3540990 (matchZipper!1913 lt!2289025 (t!376958 s!2326)))))

(declare-fun b!5763159 () Bool)

(declare-fun tp!1592838 () Bool)

(assert (=> b!5763159 (= e!3540999 tp!1592838)))

(declare-fun b!5763160 () Bool)

(declare-fun tp!1592846 () Bool)

(declare-fun tp!1592844 () Bool)

(assert (=> b!5763160 (= e!3540999 (and tp!1592846 tp!1592844))))

(declare-fun b!5763161 () Bool)

(declare-fun res!2432352 () Bool)

(assert (=> b!5763161 (=> res!2432352 e!3540996)))

(assert (=> b!5763161 (= res!2432352 (or ((_ is Concat!24620) (regOne!32062 r!7292)) ((_ is Star!15775) (regOne!32062 r!7292)) (not ((_ is EmptyExpr!15775) (regOne!32062 r!7292)))))))

(declare-fun b!5763162 () Bool)

(declare-fun tp!1592841 () Bool)

(declare-fun inv!82684 (Context!10318) Bool)

(assert (=> b!5763162 (= e!3541000 (and (inv!82684 (h!69950 zl!343)) e!3540995 tp!1592841))))

(declare-fun b!5763163 () Bool)

(declare-fun res!2432337 () Bool)

(assert (=> b!5763163 (=> res!2432337 e!3540994)))

(declare-fun isEmpty!35390 (List!63626) Bool)

(assert (=> b!5763163 (= res!2432337 (not (isEmpty!35390 (t!376960 zl!343))))))

(declare-fun b!5763164 () Bool)

(declare-fun e!3541001 () Bool)

(assert (=> b!5763164 (= e!3540988 e!3541001)))

(declare-fun res!2432348 () Bool)

(assert (=> b!5763164 (=> res!2432348 e!3541001)))

(declare-fun lt!2289015 () (InoxSet Context!10318))

(declare-fun derivationStepZipper!1854 ((InoxSet Context!10318) C!31820) (InoxSet Context!10318))

(assert (=> b!5763164 (= res!2432348 (not (= lt!2289025 (derivationStepZipper!1854 lt!2289015 (h!69948 s!2326)))))))

(declare-fun lt!2289027 () Context!10318)

(declare-fun lambda!312917 () Int)

(declare-fun flatMap!1388 ((InoxSet Context!10318) Int) (InoxSet Context!10318))

(declare-fun derivationStepZipperUp!1043 (Context!10318 C!31820) (InoxSet Context!10318))

(assert (=> b!5763164 (= (flatMap!1388 lt!2289015 lambda!312917) (derivationStepZipperUp!1043 lt!2289027 (h!69948 s!2326)))))

(declare-fun lt!2289013 () Unit!156632)

(declare-fun lemmaFlatMapOnSingletonSet!920 ((InoxSet Context!10318) Context!10318 Int) Unit!156632)

(assert (=> b!5763164 (= lt!2289013 (lemmaFlatMapOnSingletonSet!920 lt!2289015 lt!2289027 lambda!312917))))

(assert (=> b!5763164 (= lt!2289015 (store ((as const (Array Context!10318 Bool)) false) lt!2289027 true))))

(declare-fun b!5763165 () Bool)

(declare-fun tp!1592842 () Bool)

(declare-fun tp!1592837 () Bool)

(assert (=> b!5763165 (= e!3540999 (and tp!1592842 tp!1592837))))

(declare-fun b!5763166 () Bool)

(assert (=> b!5763166 (= e!3540996 e!3540997)))

(declare-fun res!2432345 () Bool)

(assert (=> b!5763166 (=> res!2432345 e!3540997)))

(declare-fun lt!2289021 () (InoxSet Context!10318))

(assert (=> b!5763166 (= res!2432345 (or (not (= lt!2289021 ((as const (Array Context!10318 Bool)) false))) (not (= r!7292 (Concat!24620 (regOne!32062 r!7292) (regTwo!32062 r!7292)))) (not (= (regOne!32062 r!7292) EmptyExpr!15775))))))

(assert (=> b!5763166 (not (matchZipper!1913 lt!2289021 (t!376958 s!2326)))))

(declare-fun lt!2289017 () Unit!156632)

(declare-fun lemmaEmptyZipperMatchesNothing!60 ((InoxSet Context!10318) List!63624) Unit!156632)

(assert (=> b!5763166 (= lt!2289017 (lemmaEmptyZipperMatchesNothing!60 lt!2289021 (t!376958 s!2326)))))

(declare-fun tp!1592839 () Bool)

(declare-fun setElem!38707 () Context!10318)

(declare-fun setNonEmpty!38707 () Bool)

(assert (=> setNonEmpty!38707 (= setRes!38707 (and tp!1592839 (inv!82684 setElem!38707) e!3540992))))

(declare-fun setRest!38707 () (InoxSet Context!10318))

(assert (=> setNonEmpty!38707 (= z!1189 ((_ map or) (store ((as const (Array Context!10318 Bool)) false) setElem!38707 true) setRest!38707))))

(assert (=> b!5763167 (= e!3540998 e!3540996)))

(declare-fun res!2432346 () Bool)

(assert (=> b!5763167 (=> res!2432346 e!3540996)))

(assert (=> b!5763167 (= res!2432346 (or (and ((_ is ElementMatch!15775) (regOne!32062 r!7292)) (= (c!1018649 (regOne!32062 r!7292)) (h!69948 s!2326))) ((_ is Union!15775) (regOne!32062 r!7292))))))

(declare-fun lt!2289014 () Unit!156632)

(declare-fun e!3540989 () Unit!156632)

(assert (=> b!5763167 (= lt!2289014 e!3540989)))

(declare-fun c!1018648 () Bool)

(declare-fun nullable!5807 (Regex!15775) Bool)

(assert (=> b!5763167 (= c!1018648 (nullable!5807 (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(assert (=> b!5763167 (= (flatMap!1388 z!1189 lambda!312917) (derivationStepZipperUp!1043 (h!69950 zl!343) (h!69948 s!2326)))))

(declare-fun lt!2289029 () Unit!156632)

(assert (=> b!5763167 (= lt!2289029 (lemmaFlatMapOnSingletonSet!920 z!1189 (h!69950 zl!343) lambda!312917))))

(assert (=> b!5763167 (= lt!2289025 (derivationStepZipperUp!1043 lt!2289027 (h!69948 s!2326)))))

(declare-fun derivationStepZipperDown!1117 (Regex!15775 Context!10318 C!31820) (InoxSet Context!10318))

(assert (=> b!5763167 (= lt!2289021 (derivationStepZipperDown!1117 (h!69949 (exprs!5659 (h!69950 zl!343))) lt!2289027 (h!69948 s!2326)))))

(assert (=> b!5763167 (= lt!2289027 (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun lt!2289030 () (InoxSet Context!10318))

(assert (=> b!5763167 (= lt!2289030 (derivationStepZipperUp!1043 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))) (h!69948 s!2326)))))

(declare-fun b!5763168 () Bool)

(declare-fun res!2432351 () Bool)

(assert (=> b!5763168 (=> res!2432351 e!3540994)))

(assert (=> b!5763168 (= res!2432351 (or ((_ is EmptyExpr!15775) r!7292) ((_ is EmptyLang!15775) r!7292) ((_ is ElementMatch!15775) r!7292) ((_ is Union!15775) r!7292) (not ((_ is Concat!24620) r!7292))))))

(declare-fun b!5763169 () Bool)

(declare-fun tp_is_empty!40803 () Bool)

(assert (=> b!5763169 (= e!3540999 tp_is_empty!40803)))

(declare-fun b!5763170 () Bool)

(assert (=> b!5763170 (= e!3541001 (= (derivationStepZipper!1854 z!1189 (h!69948 s!2326)) ((_ map or) lt!2289021 lt!2289025)))))

(declare-fun b!5763171 () Bool)

(declare-fun Unit!156634 () Unit!156632)

(assert (=> b!5763171 (= e!3540989 Unit!156634)))

(declare-fun lt!2289016 () Unit!156632)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!800 ((InoxSet Context!10318) (InoxSet Context!10318) List!63624) Unit!156632)

(assert (=> b!5763171 (= lt!2289016 (lemmaZipperConcatMatchesSameAsBothZippers!800 lt!2289021 lt!2289025 (t!376958 s!2326)))))

(declare-fun res!2432338 () Bool)

(assert (=> b!5763171 (= res!2432338 (matchZipper!1913 lt!2289021 (t!376958 s!2326)))))

(assert (=> b!5763171 (=> res!2432338 e!3540990)))

(assert (=> b!5763171 (= (matchZipper!1913 ((_ map or) lt!2289021 lt!2289025) (t!376958 s!2326)) e!3540990)))

(declare-fun b!5763172 () Bool)

(declare-fun tp!1592845 () Bool)

(assert (=> b!5763172 (= e!3541002 (and tp_is_empty!40803 tp!1592845))))

(declare-fun b!5763173 () Bool)

(assert (=> b!5763173 (= e!3540991 (nullable!5807 (regOne!32062 (regOne!32062 r!7292))))))

(declare-fun b!5763174 () Bool)

(declare-fun res!2432336 () Bool)

(assert (=> b!5763174 (=> (not res!2432336) (not e!3540993))))

(declare-fun unfocusZipper!1517 (List!63626) Regex!15775)

(assert (=> b!5763174 (= res!2432336 (= r!7292 (unfocusZipper!1517 zl!343)))))

(declare-fun b!5763175 () Bool)

(declare-fun res!2432339 () Bool)

(assert (=> b!5763175 (=> res!2432339 e!3540994)))

(assert (=> b!5763175 (= res!2432339 (not ((_ is Cons!63501) (exprs!5659 (h!69950 zl!343)))))))

(declare-fun b!5763176 () Bool)

(declare-fun Unit!156635 () Unit!156632)

(assert (=> b!5763176 (= e!3540989 Unit!156635)))

(declare-fun b!5763177 () Bool)

(assert (=> b!5763177 (= e!3540993 (not e!3540994))))

(declare-fun res!2432341 () Bool)

(assert (=> b!5763177 (=> res!2432341 e!3540994)))

(assert (=> b!5763177 (= res!2432341 (not ((_ is Cons!63502) zl!343)))))

(assert (=> b!5763177 (= lt!2289023 (matchRSpec!2878 r!7292 s!2326))))

(assert (=> b!5763177 (= lt!2289023 (matchR!7960 r!7292 s!2326))))

(declare-fun lt!2289028 () Unit!156632)

(assert (=> b!5763177 (= lt!2289028 (mainMatchTheorem!2878 r!7292 s!2326))))

(assert (= (and start!591940 res!2432350) b!5763155))

(assert (= (and b!5763155 res!2432340) b!5763174))

(assert (= (and b!5763174 res!2432336) b!5763177))

(assert (= (and b!5763177 (not res!2432341)) b!5763163))

(assert (= (and b!5763163 (not res!2432337)) b!5763154))

(assert (= (and b!5763154 (not res!2432342)) b!5763175))

(assert (= (and b!5763175 (not res!2432339)) b!5763156))

(assert (= (and b!5763156 (not res!2432347)) b!5763168))

(assert (= (and b!5763168 (not res!2432351)) b!5763152))

(assert (= (and b!5763152 (not res!2432344)) b!5763151))

(assert (= (and b!5763151 (not res!2432335)) b!5763167))

(assert (= (and b!5763167 c!1018648) b!5763171))

(assert (= (and b!5763167 (not c!1018648)) b!5763176))

(assert (= (and b!5763171 (not res!2432338)) b!5763158))

(assert (= (and b!5763167 (not res!2432346)) b!5763157))

(assert (= (and b!5763157 res!2432343) b!5763173))

(assert (= (and b!5763157 (not res!2432349)) b!5763161))

(assert (= (and b!5763161 (not res!2432352)) b!5763166))

(assert (= (and b!5763166 (not res!2432345)) b!5763150))

(assert (= (and b!5763150 (not res!2432353)) b!5763164))

(assert (= (and b!5763164 (not res!2432348)) b!5763170))

(assert (= (and start!591940 ((_ is ElementMatch!15775) r!7292)) b!5763169))

(assert (= (and start!591940 ((_ is Concat!24620) r!7292)) b!5763160))

(assert (= (and start!591940 ((_ is Star!15775) r!7292)) b!5763159))

(assert (= (and start!591940 ((_ is Union!15775) r!7292)) b!5763165))

(assert (= (and start!591940 condSetEmpty!38707) setIsEmpty!38707))

(assert (= (and start!591940 (not condSetEmpty!38707)) setNonEmpty!38707))

(assert (= setNonEmpty!38707 b!5763149))

(assert (= b!5763162 b!5763153))

(assert (= (and start!591940 ((_ is Cons!63502) zl!343)) b!5763162))

(assert (= (and start!591940 ((_ is Cons!63500) s!2326)) b!5763172))

(declare-fun m!6709900 () Bool)

(assert (=> b!5763173 m!6709900))

(declare-fun m!6709902 () Bool)

(assert (=> b!5763154 m!6709902))

(declare-fun m!6709904 () Bool)

(assert (=> b!5763167 m!6709904))

(declare-fun m!6709906 () Bool)

(assert (=> b!5763167 m!6709906))

(declare-fun m!6709908 () Bool)

(assert (=> b!5763167 m!6709908))

(declare-fun m!6709910 () Bool)

(assert (=> b!5763167 m!6709910))

(declare-fun m!6709912 () Bool)

(assert (=> b!5763167 m!6709912))

(declare-fun m!6709914 () Bool)

(assert (=> b!5763167 m!6709914))

(declare-fun m!6709916 () Bool)

(assert (=> b!5763167 m!6709916))

(declare-fun m!6709918 () Bool)

(assert (=> b!5763164 m!6709918))

(declare-fun m!6709920 () Bool)

(assert (=> b!5763164 m!6709920))

(declare-fun m!6709922 () Bool)

(assert (=> b!5763164 m!6709922))

(assert (=> b!5763164 m!6709916))

(declare-fun m!6709924 () Bool)

(assert (=> b!5763164 m!6709924))

(declare-fun m!6709926 () Bool)

(assert (=> b!5763151 m!6709926))

(declare-fun m!6709928 () Bool)

(assert (=> b!5763158 m!6709928))

(declare-fun m!6709930 () Bool)

(assert (=> b!5763174 m!6709930))

(declare-fun m!6709932 () Bool)

(assert (=> b!5763177 m!6709932))

(declare-fun m!6709934 () Bool)

(assert (=> b!5763177 m!6709934))

(declare-fun m!6709936 () Bool)

(assert (=> b!5763177 m!6709936))

(declare-fun m!6709938 () Bool)

(assert (=> b!5763170 m!6709938))

(declare-fun m!6709940 () Bool)

(assert (=> b!5763150 m!6709940))

(declare-fun m!6709942 () Bool)

(assert (=> b!5763150 m!6709942))

(declare-fun m!6709944 () Bool)

(assert (=> b!5763150 m!6709944))

(declare-fun m!6709946 () Bool)

(assert (=> b!5763150 m!6709946))

(declare-fun m!6709948 () Bool)

(assert (=> b!5763150 m!6709948))

(declare-fun m!6709950 () Bool)

(assert (=> b!5763150 m!6709950))

(declare-fun m!6709952 () Bool)

(assert (=> setNonEmpty!38707 m!6709952))

(declare-fun m!6709954 () Bool)

(assert (=> b!5763162 m!6709954))

(declare-fun m!6709956 () Bool)

(assert (=> b!5763163 m!6709956))

(declare-fun m!6709958 () Bool)

(assert (=> b!5763156 m!6709958))

(assert (=> b!5763156 m!6709958))

(declare-fun m!6709960 () Bool)

(assert (=> b!5763156 m!6709960))

(declare-fun m!6709962 () Bool)

(assert (=> b!5763166 m!6709962))

(declare-fun m!6709964 () Bool)

(assert (=> b!5763166 m!6709964))

(declare-fun m!6709966 () Bool)

(assert (=> b!5763155 m!6709966))

(declare-fun m!6709968 () Bool)

(assert (=> start!591940 m!6709968))

(declare-fun m!6709970 () Bool)

(assert (=> b!5763171 m!6709970))

(assert (=> b!5763171 m!6709962))

(declare-fun m!6709972 () Bool)

(assert (=> b!5763171 m!6709972))

(declare-fun m!6709974 () Bool)

(assert (=> b!5763152 m!6709974))

(declare-fun m!6709976 () Bool)

(assert (=> b!5763152 m!6709976))

(declare-fun m!6709978 () Bool)

(assert (=> b!5763152 m!6709978))

(assert (=> b!5763152 m!6709974))

(declare-fun m!6709980 () Bool)

(assert (=> b!5763152 m!6709980))

(declare-fun m!6709982 () Bool)

(assert (=> b!5763152 m!6709982))

(assert (=> b!5763152 m!6709976))

(declare-fun m!6709984 () Bool)

(assert (=> b!5763152 m!6709984))

(check-sat (not b!5763149) (not b!5763159) (not b!5763171) (not b!5763173) (not b!5763150) (not b!5763153) (not b!5763152) (not start!591940) (not b!5763172) (not b!5763162) (not b!5763165) (not setNonEmpty!38707) (not b!5763166) (not b!5763155) (not b!5763154) (not b!5763156) (not b!5763151) (not b!5763167) (not b!5763160) (not b!5763170) (not b!5763164) (not b!5763158) tp_is_empty!40803 (not b!5763177) (not b!5763163) (not b!5763174))
(check-sat)
(get-model)

(declare-fun d!1815691 () Bool)

(declare-fun lambda!312926 () Int)

(declare-fun forall!14893 (List!63625 Int) Bool)

(assert (=> d!1815691 (= (inv!82684 setElem!38707) (forall!14893 (exprs!5659 setElem!38707) lambda!312926))))

(declare-fun bs!1351650 () Bool)

(assert (= bs!1351650 d!1815691))

(declare-fun m!6710046 () Bool)

(assert (=> bs!1351650 m!6710046))

(assert (=> setNonEmpty!38707 d!1815691))

(declare-fun d!1815697 () Bool)

(declare-fun c!1018685 () Bool)

(declare-fun isEmpty!35392 (List!63624) Bool)

(assert (=> d!1815697 (= c!1018685 (isEmpty!35392 (t!376958 s!2326)))))

(declare-fun e!3541066 () Bool)

(assert (=> d!1815697 (= (matchZipper!1913 lt!2289021 (t!376958 s!2326)) e!3541066)))

(declare-fun b!5763282 () Bool)

(declare-fun nullableZipper!1702 ((InoxSet Context!10318)) Bool)

(assert (=> b!5763282 (= e!3541066 (nullableZipper!1702 lt!2289021))))

(declare-fun b!5763283 () Bool)

(declare-fun head!12186 (List!63624) C!31820)

(declare-fun tail!11281 (List!63624) List!63624)

(assert (=> b!5763283 (= e!3541066 (matchZipper!1913 (derivationStepZipper!1854 lt!2289021 (head!12186 (t!376958 s!2326))) (tail!11281 (t!376958 s!2326))))))

(assert (= (and d!1815697 c!1018685) b!5763282))

(assert (= (and d!1815697 (not c!1018685)) b!5763283))

(declare-fun m!6710062 () Bool)

(assert (=> d!1815697 m!6710062))

(declare-fun m!6710064 () Bool)

(assert (=> b!5763282 m!6710064))

(declare-fun m!6710066 () Bool)

(assert (=> b!5763283 m!6710066))

(assert (=> b!5763283 m!6710066))

(declare-fun m!6710068 () Bool)

(assert (=> b!5763283 m!6710068))

(declare-fun m!6710070 () Bool)

(assert (=> b!5763283 m!6710070))

(assert (=> b!5763283 m!6710068))

(assert (=> b!5763283 m!6710070))

(declare-fun m!6710072 () Bool)

(assert (=> b!5763283 m!6710072))

(assert (=> b!5763166 d!1815697))

(declare-fun d!1815709 () Bool)

(assert (=> d!1815709 (not (matchZipper!1913 lt!2289021 (t!376958 s!2326)))))

(declare-fun lt!2289054 () Unit!156632)

(declare-fun choose!43705 ((InoxSet Context!10318) List!63624) Unit!156632)

(assert (=> d!1815709 (= lt!2289054 (choose!43705 lt!2289021 (t!376958 s!2326)))))

(assert (=> d!1815709 (= lt!2289021 ((as const (Array Context!10318 Bool)) false))))

(assert (=> d!1815709 (= (lemmaEmptyZipperMatchesNothing!60 lt!2289021 (t!376958 s!2326)) lt!2289054)))

(declare-fun bs!1351659 () Bool)

(assert (= bs!1351659 d!1815709))

(assert (=> bs!1351659 m!6709962))

(declare-fun m!6710078 () Bool)

(assert (=> bs!1351659 m!6710078))

(assert (=> b!5763166 d!1815709))

(declare-fun bs!1351663 () Bool)

(declare-fun d!1815717 () Bool)

(assert (= bs!1351663 (and d!1815717 d!1815691)))

(declare-fun lambda!312941 () Int)

(assert (=> bs!1351663 (= lambda!312941 lambda!312926)))

(declare-fun b!5763375 () Bool)

(declare-fun e!3541123 () Bool)

(declare-fun e!3541122 () Bool)

(assert (=> b!5763375 (= e!3541123 e!3541122)))

(declare-fun c!1018713 () Bool)

(assert (=> b!5763375 (= c!1018713 (isEmpty!35389 (unfocusZipperList!1203 zl!343)))))

(declare-fun b!5763376 () Bool)

(declare-fun e!3541121 () Regex!15775)

(assert (=> b!5763376 (= e!3541121 (h!69949 (unfocusZipperList!1203 zl!343)))))

(declare-fun b!5763377 () Bool)

(declare-fun e!3541118 () Bool)

(assert (=> b!5763377 (= e!3541122 e!3541118)))

(declare-fun c!1018715 () Bool)

(declare-fun tail!11282 (List!63625) List!63625)

(assert (=> b!5763377 (= c!1018715 (isEmpty!35389 (tail!11282 (unfocusZipperList!1203 zl!343))))))

(assert (=> d!1815717 e!3541123))

(declare-fun res!2432424 () Bool)

(assert (=> d!1815717 (=> (not res!2432424) (not e!3541123))))

(declare-fun lt!2289059 () Regex!15775)

(assert (=> d!1815717 (= res!2432424 (validRegex!7511 lt!2289059))))

(assert (=> d!1815717 (= lt!2289059 e!3541121)))

(declare-fun c!1018712 () Bool)

(declare-fun e!3541120 () Bool)

(assert (=> d!1815717 (= c!1018712 e!3541120)))

(declare-fun res!2432423 () Bool)

(assert (=> d!1815717 (=> (not res!2432423) (not e!3541120))))

(assert (=> d!1815717 (= res!2432423 ((_ is Cons!63501) (unfocusZipperList!1203 zl!343)))))

(assert (=> d!1815717 (forall!14893 (unfocusZipperList!1203 zl!343) lambda!312941)))

(assert (=> d!1815717 (= (generalisedUnion!1638 (unfocusZipperList!1203 zl!343)) lt!2289059)))

(declare-fun b!5763378 () Bool)

(declare-fun e!3541119 () Regex!15775)

(assert (=> b!5763378 (= e!3541119 EmptyLang!15775)))

(declare-fun b!5763379 () Bool)

(declare-fun isEmptyLang!1271 (Regex!15775) Bool)

(assert (=> b!5763379 (= e!3541122 (isEmptyLang!1271 lt!2289059))))

(declare-fun b!5763380 () Bool)

(assert (=> b!5763380 (= e!3541119 (Union!15775 (h!69949 (unfocusZipperList!1203 zl!343)) (generalisedUnion!1638 (t!376959 (unfocusZipperList!1203 zl!343)))))))

(declare-fun b!5763381 () Bool)

(assert (=> b!5763381 (= e!3541120 (isEmpty!35389 (t!376959 (unfocusZipperList!1203 zl!343))))))

(declare-fun b!5763382 () Bool)

(declare-fun isUnion!701 (Regex!15775) Bool)

(assert (=> b!5763382 (= e!3541118 (isUnion!701 lt!2289059))))

(declare-fun b!5763383 () Bool)

(declare-fun head!12187 (List!63625) Regex!15775)

(assert (=> b!5763383 (= e!3541118 (= lt!2289059 (head!12187 (unfocusZipperList!1203 zl!343))))))

(declare-fun b!5763384 () Bool)

(assert (=> b!5763384 (= e!3541121 e!3541119)))

(declare-fun c!1018714 () Bool)

(assert (=> b!5763384 (= c!1018714 ((_ is Cons!63501) (unfocusZipperList!1203 zl!343)))))

(assert (= (and d!1815717 res!2432423) b!5763381))

(assert (= (and d!1815717 c!1018712) b!5763376))

(assert (= (and d!1815717 (not c!1018712)) b!5763384))

(assert (= (and b!5763384 c!1018714) b!5763380))

(assert (= (and b!5763384 (not c!1018714)) b!5763378))

(assert (= (and d!1815717 res!2432424) b!5763375))

(assert (= (and b!5763375 c!1018713) b!5763379))

(assert (= (and b!5763375 (not c!1018713)) b!5763377))

(assert (= (and b!5763377 c!1018715) b!5763383))

(assert (= (and b!5763377 (not c!1018715)) b!5763382))

(assert (=> b!5763377 m!6709958))

(declare-fun m!6710100 () Bool)

(assert (=> b!5763377 m!6710100))

(assert (=> b!5763377 m!6710100))

(declare-fun m!6710102 () Bool)

(assert (=> b!5763377 m!6710102))

(assert (=> b!5763383 m!6709958))

(declare-fun m!6710104 () Bool)

(assert (=> b!5763383 m!6710104))

(declare-fun m!6710106 () Bool)

(assert (=> b!5763380 m!6710106))

(declare-fun m!6710108 () Bool)

(assert (=> b!5763382 m!6710108))

(declare-fun m!6710110 () Bool)

(assert (=> b!5763381 m!6710110))

(declare-fun m!6710112 () Bool)

(assert (=> b!5763379 m!6710112))

(assert (=> b!5763375 m!6709958))

(declare-fun m!6710114 () Bool)

(assert (=> b!5763375 m!6710114))

(declare-fun m!6710116 () Bool)

(assert (=> d!1815717 m!6710116))

(assert (=> d!1815717 m!6709958))

(declare-fun m!6710118 () Bool)

(assert (=> d!1815717 m!6710118))

(assert (=> b!5763156 d!1815717))

(declare-fun bs!1351686 () Bool)

(declare-fun d!1815723 () Bool)

(assert (= bs!1351686 (and d!1815723 d!1815691)))

(declare-fun lambda!312949 () Int)

(assert (=> bs!1351686 (= lambda!312949 lambda!312926)))

(declare-fun bs!1351688 () Bool)

(assert (= bs!1351688 (and d!1815723 d!1815717)))

(assert (=> bs!1351688 (= lambda!312949 lambda!312941)))

(declare-fun lt!2289068 () List!63625)

(assert (=> d!1815723 (forall!14893 lt!2289068 lambda!312949)))

(declare-fun e!3541154 () List!63625)

(assert (=> d!1815723 (= lt!2289068 e!3541154)))

(declare-fun c!1018732 () Bool)

(assert (=> d!1815723 (= c!1018732 ((_ is Cons!63502) zl!343))))

(assert (=> d!1815723 (= (unfocusZipperList!1203 zl!343) lt!2289068)))

(declare-fun b!5763439 () Bool)

(assert (=> b!5763439 (= e!3541154 (Cons!63501 (generalisedConcat!1390 (exprs!5659 (h!69950 zl!343))) (unfocusZipperList!1203 (t!376960 zl!343))))))

(declare-fun b!5763440 () Bool)

(assert (=> b!5763440 (= e!3541154 Nil!63501)))

(assert (= (and d!1815723 c!1018732) b!5763439))

(assert (= (and d!1815723 (not c!1018732)) b!5763440))

(declare-fun m!6710146 () Bool)

(assert (=> d!1815723 m!6710146))

(assert (=> b!5763439 m!6709902))

(declare-fun m!6710148 () Bool)

(assert (=> b!5763439 m!6710148))

(assert (=> b!5763156 d!1815723))

(declare-fun d!1815737 () Bool)

(declare-fun e!3541164 () Bool)

(assert (=> d!1815737 e!3541164))

(declare-fun res!2432457 () Bool)

(assert (=> d!1815737 (=> (not res!2432457) (not e!3541164))))

(declare-fun lt!2289073 () List!63626)

(declare-fun noDuplicate!1682 (List!63626) Bool)

(assert (=> d!1815737 (= res!2432457 (noDuplicate!1682 lt!2289073))))

(declare-fun choose!43708 ((InoxSet Context!10318)) List!63626)

(assert (=> d!1815737 (= lt!2289073 (choose!43708 z!1189))))

(assert (=> d!1815737 (= (toList!9559 z!1189) lt!2289073)))

(declare-fun b!5763457 () Bool)

(declare-fun content!11589 (List!63626) (InoxSet Context!10318))

(assert (=> b!5763457 (= e!3541164 (= (content!11589 lt!2289073) z!1189))))

(assert (= (and d!1815737 res!2432457) b!5763457))

(declare-fun m!6710160 () Bool)

(assert (=> d!1815737 m!6710160))

(declare-fun m!6710162 () Bool)

(assert (=> d!1815737 m!6710162))

(declare-fun m!6710164 () Bool)

(assert (=> b!5763457 m!6710164))

(assert (=> b!5763155 d!1815737))

(declare-fun d!1815743 () Bool)

(declare-fun c!1018736 () Bool)

(assert (=> d!1815743 (= c!1018736 (isEmpty!35392 (t!376958 s!2326)))))

(declare-fun e!3541165 () Bool)

(assert (=> d!1815743 (= (matchZipper!1913 lt!2289025 (t!376958 s!2326)) e!3541165)))

(declare-fun b!5763458 () Bool)

(assert (=> b!5763458 (= e!3541165 (nullableZipper!1702 lt!2289025))))

(declare-fun b!5763459 () Bool)

(assert (=> b!5763459 (= e!3541165 (matchZipper!1913 (derivationStepZipper!1854 lt!2289025 (head!12186 (t!376958 s!2326))) (tail!11281 (t!376958 s!2326))))))

(assert (= (and d!1815743 c!1018736) b!5763458))

(assert (= (and d!1815743 (not c!1018736)) b!5763459))

(assert (=> d!1815743 m!6710062))

(declare-fun m!6710166 () Bool)

(assert (=> b!5763458 m!6710166))

(assert (=> b!5763459 m!6710066))

(assert (=> b!5763459 m!6710066))

(declare-fun m!6710168 () Bool)

(assert (=> b!5763459 m!6710168))

(assert (=> b!5763459 m!6710070))

(assert (=> b!5763459 m!6710168))

(assert (=> b!5763459 m!6710070))

(declare-fun m!6710170 () Bool)

(assert (=> b!5763459 m!6710170))

(assert (=> b!5763158 d!1815743))

(declare-fun b!5763565 () Bool)

(declare-fun e!3541229 () (InoxSet Context!10318))

(declare-fun e!3541231 () (InoxSet Context!10318))

(assert (=> b!5763565 (= e!3541229 e!3541231)))

(declare-fun c!1018782 () Bool)

(assert (=> b!5763565 (= c!1018782 ((_ is Union!15775) (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun b!5763566 () Bool)

(declare-fun c!1018786 () Bool)

(declare-fun e!3541226 () Bool)

(assert (=> b!5763566 (= c!1018786 e!3541226)))

(declare-fun res!2432473 () Bool)

(assert (=> b!5763566 (=> (not res!2432473) (not e!3541226))))

(assert (=> b!5763566 (= res!2432473 ((_ is Concat!24620) (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun e!3541228 () (InoxSet Context!10318))

(assert (=> b!5763566 (= e!3541231 e!3541228)))

(declare-fun d!1815745 () Bool)

(declare-fun c!1018783 () Bool)

(assert (=> d!1815745 (= c!1018783 (and ((_ is ElementMatch!15775) (h!69949 (exprs!5659 (h!69950 zl!343)))) (= (c!1018649 (h!69949 (exprs!5659 (h!69950 zl!343)))) (h!69948 s!2326))))))

(assert (=> d!1815745 (= (derivationStepZipperDown!1117 (h!69949 (exprs!5659 (h!69950 zl!343))) lt!2289027 (h!69948 s!2326)) e!3541229)))

(declare-fun call!442549 () (InoxSet Context!10318))

(declare-fun c!1018785 () Bool)

(declare-fun bm!442539 () Bool)

(declare-fun call!442548 () List!63625)

(assert (=> bm!442539 (= call!442549 (derivationStepZipperDown!1117 (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343))))))) (ite (or c!1018782 c!1018786) lt!2289027 (Context!10319 call!442548)) (h!69948 s!2326)))))

(declare-fun bm!442540 () Bool)

(declare-fun call!442545 () List!63625)

(assert (=> bm!442540 (= call!442548 call!442545)))

(declare-fun call!442547 () (InoxSet Context!10318))

(declare-fun bm!442541 () Bool)

(assert (=> bm!442541 (= call!442547 (derivationStepZipperDown!1117 (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343))))) (ite c!1018782 lt!2289027 (Context!10319 call!442545)) (h!69948 s!2326)))))

(declare-fun b!5763567 () Bool)

(declare-fun e!3541227 () (InoxSet Context!10318))

(assert (=> b!5763567 (= e!3541228 e!3541227)))

(assert (=> b!5763567 (= c!1018785 ((_ is Concat!24620) (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun b!5763568 () Bool)

(declare-fun call!442546 () (InoxSet Context!10318))

(assert (=> b!5763568 (= e!3541228 ((_ map or) call!442547 call!442546))))

(declare-fun b!5763569 () Bool)

(declare-fun call!442544 () (InoxSet Context!10318))

(assert (=> b!5763569 (= e!3541227 call!442544)))

(declare-fun b!5763570 () Bool)

(assert (=> b!5763570 (= e!3541231 ((_ map or) call!442549 call!442547))))

(declare-fun bm!442542 () Bool)

(assert (=> bm!442542 (= call!442546 call!442549)))

(declare-fun bm!442543 () Bool)

(assert (=> bm!442543 (= call!442544 call!442546)))

(declare-fun b!5763571 () Bool)

(declare-fun e!3541230 () (InoxSet Context!10318))

(assert (=> b!5763571 (= e!3541230 call!442544)))

(declare-fun b!5763572 () Bool)

(declare-fun c!1018784 () Bool)

(assert (=> b!5763572 (= c!1018784 ((_ is Star!15775) (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(assert (=> b!5763572 (= e!3541227 e!3541230)))

(declare-fun b!5763573 () Bool)

(assert (=> b!5763573 (= e!3541230 ((as const (Array Context!10318 Bool)) false))))

(declare-fun bm!442544 () Bool)

(declare-fun $colon$colon!1770 (List!63625 Regex!15775) List!63625)

(assert (=> bm!442544 (= call!442545 ($colon$colon!1770 (exprs!5659 lt!2289027) (ite (or c!1018786 c!1018785) (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (h!69949 (exprs!5659 (h!69950 zl!343))))))))

(declare-fun b!5763574 () Bool)

(assert (=> b!5763574 (= e!3541226 (nullable!5807 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343))))))))

(declare-fun b!5763575 () Bool)

(assert (=> b!5763575 (= e!3541229 (store ((as const (Array Context!10318 Bool)) false) lt!2289027 true))))

(assert (= (and d!1815745 c!1018783) b!5763575))

(assert (= (and d!1815745 (not c!1018783)) b!5763565))

(assert (= (and b!5763565 c!1018782) b!5763570))

(assert (= (and b!5763565 (not c!1018782)) b!5763566))

(assert (= (and b!5763566 res!2432473) b!5763574))

(assert (= (and b!5763566 c!1018786) b!5763568))

(assert (= (and b!5763566 (not c!1018786)) b!5763567))

(assert (= (and b!5763567 c!1018785) b!5763569))

(assert (= (and b!5763567 (not c!1018785)) b!5763572))

(assert (= (and b!5763572 c!1018784) b!5763571))

(assert (= (and b!5763572 (not c!1018784)) b!5763573))

(assert (= (or b!5763569 b!5763571) bm!442540))

(assert (= (or b!5763569 b!5763571) bm!442543))

(assert (= (or b!5763568 bm!442540) bm!442544))

(assert (= (or b!5763568 bm!442543) bm!442542))

(assert (= (or b!5763570 b!5763568) bm!442541))

(assert (= (or b!5763570 bm!442542) bm!442539))

(declare-fun m!6710218 () Bool)

(assert (=> bm!442539 m!6710218))

(declare-fun m!6710220 () Bool)

(assert (=> b!5763574 m!6710220))

(declare-fun m!6710222 () Bool)

(assert (=> bm!442544 m!6710222))

(assert (=> b!5763575 m!6709918))

(declare-fun m!6710224 () Bool)

(assert (=> bm!442541 m!6710224))

(assert (=> b!5763167 d!1815745))

(declare-fun b!5763607 () Bool)

(declare-fun e!3541250 () (InoxSet Context!10318))

(declare-fun call!442552 () (InoxSet Context!10318))

(assert (=> b!5763607 (= e!3541250 call!442552)))

(declare-fun b!5763608 () Bool)

(declare-fun e!3541251 () (InoxSet Context!10318))

(assert (=> b!5763608 (= e!3541251 e!3541250)))

(declare-fun c!1018794 () Bool)

(assert (=> b!5763608 (= c!1018794 ((_ is Cons!63501) (exprs!5659 lt!2289027)))))

(declare-fun b!5763609 () Bool)

(declare-fun e!3541249 () Bool)

(assert (=> b!5763609 (= e!3541249 (nullable!5807 (h!69949 (exprs!5659 lt!2289027))))))

(declare-fun d!1815761 () Bool)

(declare-fun c!1018793 () Bool)

(assert (=> d!1815761 (= c!1018793 e!3541249)))

(declare-fun res!2432493 () Bool)

(assert (=> d!1815761 (=> (not res!2432493) (not e!3541249))))

(assert (=> d!1815761 (= res!2432493 ((_ is Cons!63501) (exprs!5659 lt!2289027)))))

(assert (=> d!1815761 (= (derivationStepZipperUp!1043 lt!2289027 (h!69948 s!2326)) e!3541251)))

(declare-fun b!5763610 () Bool)

(assert (=> b!5763610 (= e!3541251 ((_ map or) call!442552 (derivationStepZipperUp!1043 (Context!10319 (t!376959 (exprs!5659 lt!2289027))) (h!69948 s!2326))))))

(declare-fun b!5763611 () Bool)

(assert (=> b!5763611 (= e!3541250 ((as const (Array Context!10318 Bool)) false))))

(declare-fun bm!442547 () Bool)

(assert (=> bm!442547 (= call!442552 (derivationStepZipperDown!1117 (h!69949 (exprs!5659 lt!2289027)) (Context!10319 (t!376959 (exprs!5659 lt!2289027))) (h!69948 s!2326)))))

(assert (= (and d!1815761 res!2432493) b!5763609))

(assert (= (and d!1815761 c!1018793) b!5763610))

(assert (= (and d!1815761 (not c!1018793)) b!5763608))

(assert (= (and b!5763608 c!1018794) b!5763607))

(assert (= (and b!5763608 (not c!1018794)) b!5763611))

(assert (= (or b!5763610 b!5763607) bm!442547))

(declare-fun m!6710250 () Bool)

(assert (=> b!5763609 m!6710250))

(declare-fun m!6710252 () Bool)

(assert (=> b!5763610 m!6710252))

(declare-fun m!6710254 () Bool)

(assert (=> bm!442547 m!6710254))

(assert (=> b!5763167 d!1815761))

(declare-fun d!1815769 () Bool)

(declare-fun nullableFct!1848 (Regex!15775) Bool)

(assert (=> d!1815769 (= (nullable!5807 (h!69949 (exprs!5659 (h!69950 zl!343)))) (nullableFct!1848 (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun bs!1351706 () Bool)

(assert (= bs!1351706 d!1815769))

(declare-fun m!6710260 () Bool)

(assert (=> bs!1351706 m!6710260))

(assert (=> b!5763167 d!1815769))

(declare-fun b!5763612 () Bool)

(declare-fun e!3541253 () (InoxSet Context!10318))

(declare-fun call!442553 () (InoxSet Context!10318))

(assert (=> b!5763612 (= e!3541253 call!442553)))

(declare-fun b!5763613 () Bool)

(declare-fun e!3541254 () (InoxSet Context!10318))

(assert (=> b!5763613 (= e!3541254 e!3541253)))

(declare-fun c!1018796 () Bool)

(assert (=> b!5763613 (= c!1018796 ((_ is Cons!63501) (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))))))))

(declare-fun b!5763614 () Bool)

(declare-fun e!3541252 () Bool)

(assert (=> b!5763614 (= e!3541252 (nullable!5807 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))))))

(declare-fun d!1815773 () Bool)

(declare-fun c!1018795 () Bool)

(assert (=> d!1815773 (= c!1018795 e!3541252)))

(declare-fun res!2432494 () Bool)

(assert (=> d!1815773 (=> (not res!2432494) (not e!3541252))))

(assert (=> d!1815773 (= res!2432494 ((_ is Cons!63501) (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))))))))

(assert (=> d!1815773 (= (derivationStepZipperUp!1043 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))) (h!69948 s!2326)) e!3541254)))

(declare-fun b!5763615 () Bool)

(assert (=> b!5763615 (= e!3541254 ((_ map or) call!442553 (derivationStepZipperUp!1043 (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (h!69948 s!2326))))))

(declare-fun b!5763616 () Bool)

(assert (=> b!5763616 (= e!3541253 ((as const (Array Context!10318 Bool)) false))))

(declare-fun bm!442548 () Bool)

(assert (=> bm!442548 (= call!442553 (derivationStepZipperDown!1117 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))))) (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (h!69948 s!2326)))))

(assert (= (and d!1815773 res!2432494) b!5763614))

(assert (= (and d!1815773 c!1018795) b!5763615))

(assert (= (and d!1815773 (not c!1018795)) b!5763613))

(assert (= (and b!5763613 c!1018796) b!5763612))

(assert (= (and b!5763613 (not c!1018796)) b!5763616))

(assert (= (or b!5763615 b!5763612) bm!442548))

(declare-fun m!6710262 () Bool)

(assert (=> b!5763614 m!6710262))

(declare-fun m!6710264 () Bool)

(assert (=> b!5763615 m!6710264))

(declare-fun m!6710266 () Bool)

(assert (=> bm!442548 m!6710266))

(assert (=> b!5763167 d!1815773))

(declare-fun d!1815775 () Bool)

(declare-fun dynLambda!24857 (Int Context!10318) (InoxSet Context!10318))

(assert (=> d!1815775 (= (flatMap!1388 z!1189 lambda!312917) (dynLambda!24857 lambda!312917 (h!69950 zl!343)))))

(declare-fun lt!2289094 () Unit!156632)

(declare-fun choose!43710 ((InoxSet Context!10318) Context!10318 Int) Unit!156632)

(assert (=> d!1815775 (= lt!2289094 (choose!43710 z!1189 (h!69950 zl!343) lambda!312917))))

(assert (=> d!1815775 (= z!1189 (store ((as const (Array Context!10318 Bool)) false) (h!69950 zl!343) true))))

(assert (=> d!1815775 (= (lemmaFlatMapOnSingletonSet!920 z!1189 (h!69950 zl!343) lambda!312917) lt!2289094)))

(declare-fun b_lambda!217587 () Bool)

(assert (=> (not b_lambda!217587) (not d!1815775)))

(declare-fun bs!1351707 () Bool)

(assert (= bs!1351707 d!1815775))

(assert (=> bs!1351707 m!6709906))

(declare-fun m!6710268 () Bool)

(assert (=> bs!1351707 m!6710268))

(declare-fun m!6710270 () Bool)

(assert (=> bs!1351707 m!6710270))

(declare-fun m!6710272 () Bool)

(assert (=> bs!1351707 m!6710272))

(assert (=> b!5763167 d!1815775))

(declare-fun d!1815777 () Bool)

(declare-fun choose!43711 ((InoxSet Context!10318) Int) (InoxSet Context!10318))

(assert (=> d!1815777 (= (flatMap!1388 z!1189 lambda!312917) (choose!43711 z!1189 lambda!312917))))

(declare-fun bs!1351708 () Bool)

(assert (= bs!1351708 d!1815777))

(declare-fun m!6710274 () Bool)

(assert (=> bs!1351708 m!6710274))

(assert (=> b!5763167 d!1815777))

(declare-fun b!5763625 () Bool)

(declare-fun e!3541260 () (InoxSet Context!10318))

(declare-fun call!442554 () (InoxSet Context!10318))

(assert (=> b!5763625 (= e!3541260 call!442554)))

(declare-fun b!5763626 () Bool)

(declare-fun e!3541261 () (InoxSet Context!10318))

(assert (=> b!5763626 (= e!3541261 e!3541260)))

(declare-fun c!1018798 () Bool)

(assert (=> b!5763626 (= c!1018798 ((_ is Cons!63501) (exprs!5659 (h!69950 zl!343))))))

(declare-fun b!5763627 () Bool)

(declare-fun e!3541259 () Bool)

(assert (=> b!5763627 (= e!3541259 (nullable!5807 (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun d!1815779 () Bool)

(declare-fun c!1018797 () Bool)

(assert (=> d!1815779 (= c!1018797 e!3541259)))

(declare-fun res!2432501 () Bool)

(assert (=> d!1815779 (=> (not res!2432501) (not e!3541259))))

(assert (=> d!1815779 (= res!2432501 ((_ is Cons!63501) (exprs!5659 (h!69950 zl!343))))))

(assert (=> d!1815779 (= (derivationStepZipperUp!1043 (h!69950 zl!343) (h!69948 s!2326)) e!3541261)))

(declare-fun b!5763628 () Bool)

(assert (=> b!5763628 (= e!3541261 ((_ map or) call!442554 (derivationStepZipperUp!1043 (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343)))) (h!69948 s!2326))))))

(declare-fun b!5763629 () Bool)

(assert (=> b!5763629 (= e!3541260 ((as const (Array Context!10318 Bool)) false))))

(declare-fun bm!442549 () Bool)

(assert (=> bm!442549 (= call!442554 (derivationStepZipperDown!1117 (h!69949 (exprs!5659 (h!69950 zl!343))) (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343)))) (h!69948 s!2326)))))

(assert (= (and d!1815779 res!2432501) b!5763627))

(assert (= (and d!1815779 c!1018797) b!5763628))

(assert (= (and d!1815779 (not c!1018797)) b!5763626))

(assert (= (and b!5763626 c!1018798) b!5763625))

(assert (= (and b!5763626 (not c!1018798)) b!5763629))

(assert (= (or b!5763628 b!5763625) bm!442549))

(assert (=> b!5763627 m!6709914))

(declare-fun m!6710276 () Bool)

(assert (=> b!5763628 m!6710276))

(declare-fun m!6710278 () Bool)

(assert (=> bm!442549 m!6710278))

(assert (=> b!5763167 d!1815779))

(declare-fun bs!1351726 () Bool)

(declare-fun b!5763724 () Bool)

(assert (= bs!1351726 (and b!5763724 b!5763152)))

(declare-fun lambda!312967 () Int)

(assert (=> bs!1351726 (not (= lambda!312967 lambda!312915))))

(assert (=> bs!1351726 (not (= lambda!312967 lambda!312916))))

(assert (=> b!5763724 true))

(assert (=> b!5763724 true))

(declare-fun bs!1351727 () Bool)

(declare-fun b!5763721 () Bool)

(assert (= bs!1351727 (and b!5763721 b!5763152)))

(declare-fun lambda!312968 () Int)

(assert (=> bs!1351727 (not (= lambda!312968 lambda!312915))))

(assert (=> bs!1351727 (= lambda!312968 lambda!312916)))

(declare-fun bs!1351728 () Bool)

(assert (= bs!1351728 (and b!5763721 b!5763724)))

(assert (=> bs!1351728 (not (= lambda!312968 lambda!312967))))

(assert (=> b!5763721 true))

(assert (=> b!5763721 true))

(declare-fun b!5763718 () Bool)

(declare-fun e!3541308 () Bool)

(assert (=> b!5763718 (= e!3541308 (matchRSpec!2878 (regTwo!32063 r!7292) s!2326))))

(declare-fun b!5763719 () Bool)

(declare-fun e!3541306 () Bool)

(declare-fun e!3541304 () Bool)

(assert (=> b!5763719 (= e!3541306 e!3541304)))

(declare-fun c!1018810 () Bool)

(assert (=> b!5763719 (= c!1018810 ((_ is Star!15775) r!7292))))

(declare-fun b!5763720 () Bool)

(declare-fun e!3541310 () Bool)

(declare-fun call!442560 () Bool)

(assert (=> b!5763720 (= e!3541310 call!442560)))

(declare-fun call!442559 () Bool)

(assert (=> b!5763721 (= e!3541304 call!442559)))

(declare-fun d!1815781 () Bool)

(declare-fun c!1018809 () Bool)

(assert (=> d!1815781 (= c!1018809 ((_ is EmptyExpr!15775) r!7292))))

(assert (=> d!1815781 (= (matchRSpec!2878 r!7292 s!2326) e!3541310)))

(declare-fun bm!442554 () Bool)

(assert (=> bm!442554 (= call!442559 (Exists!2875 (ite c!1018810 lambda!312967 lambda!312968)))))

(declare-fun b!5763722 () Bool)

(declare-fun e!3541305 () Bool)

(assert (=> b!5763722 (= e!3541305 (= s!2326 (Cons!63500 (c!1018649 r!7292) Nil!63500)))))

(declare-fun b!5763723 () Bool)

(assert (=> b!5763723 (= e!3541306 e!3541308)))

(declare-fun res!2432522 () Bool)

(assert (=> b!5763723 (= res!2432522 (matchRSpec!2878 (regOne!32063 r!7292) s!2326))))

(assert (=> b!5763723 (=> res!2432522 e!3541308)))

(declare-fun e!3541309 () Bool)

(assert (=> b!5763724 (= e!3541309 call!442559)))

(declare-fun b!5763725 () Bool)

(declare-fun c!1018811 () Bool)

(assert (=> b!5763725 (= c!1018811 ((_ is Union!15775) r!7292))))

(assert (=> b!5763725 (= e!3541305 e!3541306)))

(declare-fun b!5763726 () Bool)

(declare-fun e!3541307 () Bool)

(assert (=> b!5763726 (= e!3541310 e!3541307)))

(declare-fun res!2432520 () Bool)

(assert (=> b!5763726 (= res!2432520 (not ((_ is EmptyLang!15775) r!7292)))))

(assert (=> b!5763726 (=> (not res!2432520) (not e!3541307))))

(declare-fun bm!442555 () Bool)

(assert (=> bm!442555 (= call!442560 (isEmpty!35392 s!2326))))

(declare-fun b!5763727 () Bool)

(declare-fun res!2432521 () Bool)

(assert (=> b!5763727 (=> res!2432521 e!3541309)))

(assert (=> b!5763727 (= res!2432521 call!442560)))

(assert (=> b!5763727 (= e!3541304 e!3541309)))

(declare-fun b!5763728 () Bool)

(declare-fun c!1018808 () Bool)

(assert (=> b!5763728 (= c!1018808 ((_ is ElementMatch!15775) r!7292))))

(assert (=> b!5763728 (= e!3541307 e!3541305)))

(assert (= (and d!1815781 c!1018809) b!5763720))

(assert (= (and d!1815781 (not c!1018809)) b!5763726))

(assert (= (and b!5763726 res!2432520) b!5763728))

(assert (= (and b!5763728 c!1018808) b!5763722))

(assert (= (and b!5763728 (not c!1018808)) b!5763725))

(assert (= (and b!5763725 c!1018811) b!5763723))

(assert (= (and b!5763725 (not c!1018811)) b!5763719))

(assert (= (and b!5763723 (not res!2432522)) b!5763718))

(assert (= (and b!5763719 c!1018810) b!5763727))

(assert (= (and b!5763719 (not c!1018810)) b!5763721))

(assert (= (and b!5763727 (not res!2432521)) b!5763724))

(assert (= (or b!5763724 b!5763721) bm!442554))

(assert (= (or b!5763720 b!5763727) bm!442555))

(declare-fun m!6710300 () Bool)

(assert (=> b!5763718 m!6710300))

(declare-fun m!6710302 () Bool)

(assert (=> bm!442554 m!6710302))

(declare-fun m!6710304 () Bool)

(assert (=> b!5763723 m!6710304))

(declare-fun m!6710306 () Bool)

(assert (=> bm!442555 m!6710306))

(assert (=> b!5763177 d!1815781))

(declare-fun b!5763757 () Bool)

(declare-fun res!2432541 () Bool)

(declare-fun e!3541330 () Bool)

(assert (=> b!5763757 (=> res!2432541 e!3541330)))

(declare-fun e!3541328 () Bool)

(assert (=> b!5763757 (= res!2432541 e!3541328)))

(declare-fun res!2432544 () Bool)

(assert (=> b!5763757 (=> (not res!2432544) (not e!3541328))))

(declare-fun lt!2289098 () Bool)

(assert (=> b!5763757 (= res!2432544 lt!2289098)))

(declare-fun b!5763759 () Bool)

(declare-fun e!3541326 () Bool)

(declare-fun derivativeStep!4556 (Regex!15775 C!31820) Regex!15775)

(assert (=> b!5763759 (= e!3541326 (matchR!7960 (derivativeStep!4556 r!7292 (head!12186 s!2326)) (tail!11281 s!2326)))))

(declare-fun b!5763760 () Bool)

(assert (=> b!5763760 (= e!3541328 (= (head!12186 s!2326) (c!1018649 r!7292)))))

(declare-fun b!5763761 () Bool)

(declare-fun e!3541325 () Bool)

(assert (=> b!5763761 (= e!3541325 (not lt!2289098))))

(declare-fun b!5763762 () Bool)

(declare-fun e!3541327 () Bool)

(assert (=> b!5763762 (= e!3541327 (not (= (head!12186 s!2326) (c!1018649 r!7292))))))

(declare-fun b!5763763 () Bool)

(declare-fun res!2432543 () Bool)

(assert (=> b!5763763 (=> (not res!2432543) (not e!3541328))))

(declare-fun call!442563 () Bool)

(assert (=> b!5763763 (= res!2432543 (not call!442563))))

(declare-fun bm!442558 () Bool)

(assert (=> bm!442558 (= call!442563 (isEmpty!35392 s!2326))))

(declare-fun b!5763758 () Bool)

(declare-fun res!2432540 () Bool)

(assert (=> b!5763758 (=> res!2432540 e!3541330)))

(assert (=> b!5763758 (= res!2432540 (not ((_ is ElementMatch!15775) r!7292)))))

(assert (=> b!5763758 (= e!3541325 e!3541330)))

(declare-fun d!1815793 () Bool)

(declare-fun e!3541331 () Bool)

(assert (=> d!1815793 e!3541331))

(declare-fun c!1018820 () Bool)

(assert (=> d!1815793 (= c!1018820 ((_ is EmptyExpr!15775) r!7292))))

(assert (=> d!1815793 (= lt!2289098 e!3541326)))

(declare-fun c!1018819 () Bool)

(assert (=> d!1815793 (= c!1018819 (isEmpty!35392 s!2326))))

(assert (=> d!1815793 (validRegex!7511 r!7292)))

(assert (=> d!1815793 (= (matchR!7960 r!7292 s!2326) lt!2289098)))

(declare-fun b!5763764 () Bool)

(declare-fun res!2432545 () Bool)

(assert (=> b!5763764 (=> res!2432545 e!3541327)))

(assert (=> b!5763764 (= res!2432545 (not (isEmpty!35392 (tail!11281 s!2326))))))

(declare-fun b!5763765 () Bool)

(assert (=> b!5763765 (= e!3541326 (nullable!5807 r!7292))))

(declare-fun b!5763766 () Bool)

(declare-fun e!3541329 () Bool)

(assert (=> b!5763766 (= e!3541329 e!3541327)))

(declare-fun res!2432546 () Bool)

(assert (=> b!5763766 (=> res!2432546 e!3541327)))

(assert (=> b!5763766 (= res!2432546 call!442563)))

(declare-fun b!5763767 () Bool)

(assert (=> b!5763767 (= e!3541331 e!3541325)))

(declare-fun c!1018818 () Bool)

(assert (=> b!5763767 (= c!1018818 ((_ is EmptyLang!15775) r!7292))))

(declare-fun b!5763768 () Bool)

(declare-fun res!2432542 () Bool)

(assert (=> b!5763768 (=> (not res!2432542) (not e!3541328))))

(assert (=> b!5763768 (= res!2432542 (isEmpty!35392 (tail!11281 s!2326)))))

(declare-fun b!5763769 () Bool)

(assert (=> b!5763769 (= e!3541331 (= lt!2289098 call!442563))))

(declare-fun b!5763770 () Bool)

(assert (=> b!5763770 (= e!3541330 e!3541329)))

(declare-fun res!2432539 () Bool)

(assert (=> b!5763770 (=> (not res!2432539) (not e!3541329))))

(assert (=> b!5763770 (= res!2432539 (not lt!2289098))))

(assert (= (and d!1815793 c!1018819) b!5763765))

(assert (= (and d!1815793 (not c!1018819)) b!5763759))

(assert (= (and d!1815793 c!1018820) b!5763769))

(assert (= (and d!1815793 (not c!1018820)) b!5763767))

(assert (= (and b!5763767 c!1018818) b!5763761))

(assert (= (and b!5763767 (not c!1018818)) b!5763758))

(assert (= (and b!5763758 (not res!2432540)) b!5763757))

(assert (= (and b!5763757 res!2432544) b!5763763))

(assert (= (and b!5763763 res!2432543) b!5763768))

(assert (= (and b!5763768 res!2432542) b!5763760))

(assert (= (and b!5763757 (not res!2432541)) b!5763770))

(assert (= (and b!5763770 res!2432539) b!5763766))

(assert (= (and b!5763766 (not res!2432546)) b!5763764))

(assert (= (and b!5763764 (not res!2432545)) b!5763762))

(assert (= (or b!5763769 b!5763763 b!5763766) bm!442558))

(declare-fun m!6710308 () Bool)

(assert (=> b!5763762 m!6710308))

(assert (=> b!5763760 m!6710308))

(assert (=> b!5763759 m!6710308))

(assert (=> b!5763759 m!6710308))

(declare-fun m!6710310 () Bool)

(assert (=> b!5763759 m!6710310))

(declare-fun m!6710312 () Bool)

(assert (=> b!5763759 m!6710312))

(assert (=> b!5763759 m!6710310))

(assert (=> b!5763759 m!6710312))

(declare-fun m!6710314 () Bool)

(assert (=> b!5763759 m!6710314))

(assert (=> b!5763764 m!6710312))

(assert (=> b!5763764 m!6710312))

(declare-fun m!6710316 () Bool)

(assert (=> b!5763764 m!6710316))

(assert (=> d!1815793 m!6710306))

(assert (=> d!1815793 m!6709968))

(assert (=> bm!442558 m!6710306))

(assert (=> b!5763768 m!6710312))

(assert (=> b!5763768 m!6710312))

(assert (=> b!5763768 m!6710316))

(declare-fun m!6710318 () Bool)

(assert (=> b!5763765 m!6710318))

(assert (=> b!5763177 d!1815793))

(declare-fun d!1815795 () Bool)

(assert (=> d!1815795 (= (matchR!7960 r!7292 s!2326) (matchRSpec!2878 r!7292 s!2326))))

(declare-fun lt!2289101 () Unit!156632)

(declare-fun choose!43712 (Regex!15775 List!63624) Unit!156632)

(assert (=> d!1815795 (= lt!2289101 (choose!43712 r!7292 s!2326))))

(assert (=> d!1815795 (validRegex!7511 r!7292)))

(assert (=> d!1815795 (= (mainMatchTheorem!2878 r!7292 s!2326) lt!2289101)))

(declare-fun bs!1351729 () Bool)

(assert (= bs!1351729 d!1815795))

(assert (=> bs!1351729 m!6709934))

(assert (=> bs!1351729 m!6709932))

(declare-fun m!6710320 () Bool)

(assert (=> bs!1351729 m!6710320))

(assert (=> bs!1351729 m!6709968))

(assert (=> b!5763177 d!1815795))

(declare-fun b!5763789 () Bool)

(declare-fun res!2432561 () Bool)

(declare-fun e!3541343 () Bool)

(assert (=> b!5763789 (=> (not res!2432561) (not e!3541343))))

(declare-fun lt!2289109 () Option!15784)

(declare-fun get!21910 (Option!15784) tuple2!65744)

(assert (=> b!5763789 (= res!2432561 (matchR!7960 (regTwo!32062 r!7292) (_2!36175 (get!21910 lt!2289109))))))

(declare-fun b!5763790 () Bool)

(declare-fun e!3541345 () Bool)

(assert (=> b!5763790 (= e!3541345 (not (isDefined!12487 lt!2289109)))))

(declare-fun b!5763791 () Bool)

(declare-fun ++!13989 (List!63624 List!63624) List!63624)

(assert (=> b!5763791 (= e!3541343 (= (++!13989 (_1!36175 (get!21910 lt!2289109)) (_2!36175 (get!21910 lt!2289109))) s!2326))))

(declare-fun b!5763792 () Bool)

(declare-fun e!3541342 () Option!15784)

(assert (=> b!5763792 (= e!3541342 None!15783)))

(declare-fun b!5763793 () Bool)

(declare-fun e!3541344 () Bool)

(assert (=> b!5763793 (= e!3541344 (matchR!7960 (regTwo!32062 r!7292) s!2326))))

(declare-fun b!5763794 () Bool)

(declare-fun e!3541346 () Option!15784)

(assert (=> b!5763794 (= e!3541346 (Some!15783 (tuple2!65745 Nil!63500 s!2326)))))

(declare-fun b!5763795 () Bool)

(declare-fun res!2432558 () Bool)

(assert (=> b!5763795 (=> (not res!2432558) (not e!3541343))))

(assert (=> b!5763795 (= res!2432558 (matchR!7960 (regOne!32062 r!7292) (_1!36175 (get!21910 lt!2289109))))))

(declare-fun d!1815797 () Bool)

(assert (=> d!1815797 e!3541345))

(declare-fun res!2432557 () Bool)

(assert (=> d!1815797 (=> res!2432557 e!3541345)))

(assert (=> d!1815797 (= res!2432557 e!3541343)))

(declare-fun res!2432560 () Bool)

(assert (=> d!1815797 (=> (not res!2432560) (not e!3541343))))

(assert (=> d!1815797 (= res!2432560 (isDefined!12487 lt!2289109))))

(assert (=> d!1815797 (= lt!2289109 e!3541346)))

(declare-fun c!1018826 () Bool)

(assert (=> d!1815797 (= c!1018826 e!3541344)))

(declare-fun res!2432559 () Bool)

(assert (=> d!1815797 (=> (not res!2432559) (not e!3541344))))

(assert (=> d!1815797 (= res!2432559 (matchR!7960 (regOne!32062 r!7292) Nil!63500))))

(assert (=> d!1815797 (validRegex!7511 (regOne!32062 r!7292))))

(assert (=> d!1815797 (= (findConcatSeparation!2198 (regOne!32062 r!7292) (regTwo!32062 r!7292) Nil!63500 s!2326 s!2326) lt!2289109)))

(declare-fun b!5763796 () Bool)

(declare-fun lt!2289110 () Unit!156632)

(declare-fun lt!2289108 () Unit!156632)

(assert (=> b!5763796 (= lt!2289110 lt!2289108)))

(assert (=> b!5763796 (= (++!13989 (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500)) (t!376958 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2106 (List!63624 C!31820 List!63624 List!63624) Unit!156632)

(assert (=> b!5763796 (= lt!2289108 (lemmaMoveElementToOtherListKeepsConcatEq!2106 Nil!63500 (h!69948 s!2326) (t!376958 s!2326) s!2326))))

(assert (=> b!5763796 (= e!3541342 (findConcatSeparation!2198 (regOne!32062 r!7292) (regTwo!32062 r!7292) (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500)) (t!376958 s!2326) s!2326))))

(declare-fun b!5763797 () Bool)

(assert (=> b!5763797 (= e!3541346 e!3541342)))

(declare-fun c!1018825 () Bool)

(assert (=> b!5763797 (= c!1018825 ((_ is Nil!63500) s!2326))))

(assert (= (and d!1815797 res!2432559) b!5763793))

(assert (= (and d!1815797 c!1018826) b!5763794))

(assert (= (and d!1815797 (not c!1018826)) b!5763797))

(assert (= (and b!5763797 c!1018825) b!5763792))

(assert (= (and b!5763797 (not c!1018825)) b!5763796))

(assert (= (and d!1815797 res!2432560) b!5763795))

(assert (= (and b!5763795 res!2432558) b!5763789))

(assert (= (and b!5763789 res!2432561) b!5763791))

(assert (= (and d!1815797 (not res!2432557)) b!5763790))

(declare-fun m!6710322 () Bool)

(assert (=> b!5763796 m!6710322))

(assert (=> b!5763796 m!6710322))

(declare-fun m!6710324 () Bool)

(assert (=> b!5763796 m!6710324))

(declare-fun m!6710326 () Bool)

(assert (=> b!5763796 m!6710326))

(assert (=> b!5763796 m!6710322))

(declare-fun m!6710328 () Bool)

(assert (=> b!5763796 m!6710328))

(assert (=> b!5763793 m!6709940))

(declare-fun m!6710330 () Bool)

(assert (=> b!5763790 m!6710330))

(declare-fun m!6710332 () Bool)

(assert (=> b!5763791 m!6710332))

(declare-fun m!6710334 () Bool)

(assert (=> b!5763791 m!6710334))

(assert (=> b!5763795 m!6710332))

(declare-fun m!6710336 () Bool)

(assert (=> b!5763795 m!6710336))

(assert (=> d!1815797 m!6710330))

(declare-fun m!6710338 () Bool)

(assert (=> d!1815797 m!6710338))

(declare-fun m!6710340 () Bool)

(assert (=> d!1815797 m!6710340))

(assert (=> b!5763789 m!6710332))

(declare-fun m!6710342 () Bool)

(assert (=> b!5763789 m!6710342))

(assert (=> b!5763152 d!1815797))

(declare-fun d!1815799 () Bool)

(declare-fun choose!43713 (Int) Bool)

(assert (=> d!1815799 (= (Exists!2875 lambda!312916) (choose!43713 lambda!312916))))

(declare-fun bs!1351730 () Bool)

(assert (= bs!1351730 d!1815799))

(declare-fun m!6710344 () Bool)

(assert (=> bs!1351730 m!6710344))

(assert (=> b!5763152 d!1815799))

(declare-fun d!1815801 () Bool)

(assert (=> d!1815801 (= (Exists!2875 lambda!312915) (choose!43713 lambda!312915))))

(declare-fun bs!1351731 () Bool)

(assert (= bs!1351731 d!1815801))

(declare-fun m!6710346 () Bool)

(assert (=> bs!1351731 m!6710346))

(assert (=> b!5763152 d!1815801))

(declare-fun bs!1351732 () Bool)

(declare-fun d!1815803 () Bool)

(assert (= bs!1351732 (and d!1815803 b!5763152)))

(declare-fun lambda!312971 () Int)

(assert (=> bs!1351732 (= lambda!312971 lambda!312915)))

(assert (=> bs!1351732 (not (= lambda!312971 lambda!312916))))

(declare-fun bs!1351733 () Bool)

(assert (= bs!1351733 (and d!1815803 b!5763724)))

(assert (=> bs!1351733 (not (= lambda!312971 lambda!312967))))

(declare-fun bs!1351734 () Bool)

(assert (= bs!1351734 (and d!1815803 b!5763721)))

(assert (=> bs!1351734 (not (= lambda!312971 lambda!312968))))

(assert (=> d!1815803 true))

(assert (=> d!1815803 true))

(assert (=> d!1815803 true))

(assert (=> d!1815803 (= (isDefined!12487 (findConcatSeparation!2198 (regOne!32062 r!7292) (regTwo!32062 r!7292) Nil!63500 s!2326 s!2326)) (Exists!2875 lambda!312971))))

(declare-fun lt!2289113 () Unit!156632)

(declare-fun choose!43714 (Regex!15775 Regex!15775 List!63624) Unit!156632)

(assert (=> d!1815803 (= lt!2289113 (choose!43714 (regOne!32062 r!7292) (regTwo!32062 r!7292) s!2326))))

(assert (=> d!1815803 (validRegex!7511 (regOne!32062 r!7292))))

(assert (=> d!1815803 (= (lemmaFindConcatSeparationEquivalentToExists!1962 (regOne!32062 r!7292) (regTwo!32062 r!7292) s!2326) lt!2289113)))

(declare-fun bs!1351735 () Bool)

(assert (= bs!1351735 d!1815803))

(declare-fun m!6710348 () Bool)

(assert (=> bs!1351735 m!6710348))

(assert (=> bs!1351735 m!6709976))

(assert (=> bs!1351735 m!6709978))

(assert (=> bs!1351735 m!6709976))

(declare-fun m!6710350 () Bool)

(assert (=> bs!1351735 m!6710350))

(assert (=> bs!1351735 m!6710340))

(assert (=> b!5763152 d!1815803))

(declare-fun bs!1351736 () Bool)

(declare-fun d!1815805 () Bool)

(assert (= bs!1351736 (and d!1815805 b!5763721)))

(declare-fun lambda!312976 () Int)

(assert (=> bs!1351736 (not (= lambda!312976 lambda!312968))))

(declare-fun bs!1351737 () Bool)

(assert (= bs!1351737 (and d!1815805 d!1815803)))

(assert (=> bs!1351737 (= lambda!312976 lambda!312971)))

(declare-fun bs!1351738 () Bool)

(assert (= bs!1351738 (and d!1815805 b!5763152)))

(assert (=> bs!1351738 (= lambda!312976 lambda!312915)))

(declare-fun bs!1351739 () Bool)

(assert (= bs!1351739 (and d!1815805 b!5763724)))

(assert (=> bs!1351739 (not (= lambda!312976 lambda!312967))))

(assert (=> bs!1351738 (not (= lambda!312976 lambda!312916))))

(assert (=> d!1815805 true))

(assert (=> d!1815805 true))

(assert (=> d!1815805 true))

(declare-fun lambda!312977 () Int)

(assert (=> bs!1351736 (= lambda!312977 lambda!312968)))

(assert (=> bs!1351737 (not (= lambda!312977 lambda!312971))))

(declare-fun bs!1351740 () Bool)

(assert (= bs!1351740 d!1815805))

(assert (=> bs!1351740 (not (= lambda!312977 lambda!312976))))

(assert (=> bs!1351738 (not (= lambda!312977 lambda!312915))))

(assert (=> bs!1351739 (not (= lambda!312977 lambda!312967))))

(assert (=> bs!1351738 (= lambda!312977 lambda!312916)))

(assert (=> d!1815805 true))

(assert (=> d!1815805 true))

(assert (=> d!1815805 true))

(assert (=> d!1815805 (= (Exists!2875 lambda!312976) (Exists!2875 lambda!312977))))

(declare-fun lt!2289116 () Unit!156632)

(declare-fun choose!43715 (Regex!15775 Regex!15775 List!63624) Unit!156632)

(assert (=> d!1815805 (= lt!2289116 (choose!43715 (regOne!32062 r!7292) (regTwo!32062 r!7292) s!2326))))

(assert (=> d!1815805 (validRegex!7511 (regOne!32062 r!7292))))

(assert (=> d!1815805 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1504 (regOne!32062 r!7292) (regTwo!32062 r!7292) s!2326) lt!2289116)))

(declare-fun m!6710352 () Bool)

(assert (=> bs!1351740 m!6710352))

(declare-fun m!6710354 () Bool)

(assert (=> bs!1351740 m!6710354))

(declare-fun m!6710356 () Bool)

(assert (=> bs!1351740 m!6710356))

(assert (=> bs!1351740 m!6710340))

(assert (=> b!5763152 d!1815805))

(declare-fun d!1815807 () Bool)

(declare-fun isEmpty!35394 (Option!15784) Bool)

(assert (=> d!1815807 (= (isDefined!12487 (findConcatSeparation!2198 (regOne!32062 r!7292) (regTwo!32062 r!7292) Nil!63500 s!2326 s!2326)) (not (isEmpty!35394 (findConcatSeparation!2198 (regOne!32062 r!7292) (regTwo!32062 r!7292) Nil!63500 s!2326 s!2326))))))

(declare-fun bs!1351741 () Bool)

(assert (= bs!1351741 d!1815807))

(assert (=> bs!1351741 m!6709976))

(declare-fun m!6710358 () Bool)

(assert (=> bs!1351741 m!6710358))

(assert (=> b!5763152 d!1815807))

(declare-fun e!3541355 () Bool)

(declare-fun d!1815809 () Bool)

(assert (=> d!1815809 (= (matchZipper!1913 ((_ map or) lt!2289021 lt!2289025) (t!376958 s!2326)) e!3541355)))

(declare-fun res!2432576 () Bool)

(assert (=> d!1815809 (=> res!2432576 e!3541355)))

(assert (=> d!1815809 (= res!2432576 (matchZipper!1913 lt!2289021 (t!376958 s!2326)))))

(declare-fun lt!2289119 () Unit!156632)

(declare-fun choose!43716 ((InoxSet Context!10318) (InoxSet Context!10318) List!63624) Unit!156632)

(assert (=> d!1815809 (= lt!2289119 (choose!43716 lt!2289021 lt!2289025 (t!376958 s!2326)))))

(assert (=> d!1815809 (= (lemmaZipperConcatMatchesSameAsBothZippers!800 lt!2289021 lt!2289025 (t!376958 s!2326)) lt!2289119)))

(declare-fun b!5763812 () Bool)

(assert (=> b!5763812 (= e!3541355 (matchZipper!1913 lt!2289025 (t!376958 s!2326)))))

(assert (= (and d!1815809 (not res!2432576)) b!5763812))

(assert (=> d!1815809 m!6709972))

(assert (=> d!1815809 m!6709962))

(declare-fun m!6710360 () Bool)

(assert (=> d!1815809 m!6710360))

(assert (=> b!5763812 m!6709928))

(assert (=> b!5763171 d!1815809))

(assert (=> b!5763171 d!1815697))

(declare-fun d!1815811 () Bool)

(declare-fun c!1018827 () Bool)

(assert (=> d!1815811 (= c!1018827 (isEmpty!35392 (t!376958 s!2326)))))

(declare-fun e!3541356 () Bool)

(assert (=> d!1815811 (= (matchZipper!1913 ((_ map or) lt!2289021 lt!2289025) (t!376958 s!2326)) e!3541356)))

(declare-fun b!5763813 () Bool)

(assert (=> b!5763813 (= e!3541356 (nullableZipper!1702 ((_ map or) lt!2289021 lt!2289025)))))

(declare-fun b!5763814 () Bool)

(assert (=> b!5763814 (= e!3541356 (matchZipper!1913 (derivationStepZipper!1854 ((_ map or) lt!2289021 lt!2289025) (head!12186 (t!376958 s!2326))) (tail!11281 (t!376958 s!2326))))))

(assert (= (and d!1815811 c!1018827) b!5763813))

(assert (= (and d!1815811 (not c!1018827)) b!5763814))

(assert (=> d!1815811 m!6710062))

(declare-fun m!6710362 () Bool)

(assert (=> b!5763813 m!6710362))

(assert (=> b!5763814 m!6710066))

(assert (=> b!5763814 m!6710066))

(declare-fun m!6710364 () Bool)

(assert (=> b!5763814 m!6710364))

(assert (=> b!5763814 m!6710070))

(assert (=> b!5763814 m!6710364))

(assert (=> b!5763814 m!6710070))

(declare-fun m!6710366 () Bool)

(assert (=> b!5763814 m!6710366))

(assert (=> b!5763171 d!1815811))

(declare-fun d!1815813 () Bool)

(assert (=> d!1815813 (= (isEmpty!35389 (t!376959 (exprs!5659 (h!69950 zl!343)))) ((_ is Nil!63501) (t!376959 (exprs!5659 (h!69950 zl!343)))))))

(assert (=> b!5763151 d!1815813))

(declare-fun bs!1351742 () Bool)

(declare-fun d!1815815 () Bool)

(assert (= bs!1351742 (and d!1815815 b!5763167)))

(declare-fun lambda!312980 () Int)

(assert (=> bs!1351742 (= lambda!312980 lambda!312917)))

(assert (=> d!1815815 true))

(assert (=> d!1815815 (= (derivationStepZipper!1854 z!1189 (h!69948 s!2326)) (flatMap!1388 z!1189 lambda!312980))))

(declare-fun bs!1351743 () Bool)

(assert (= bs!1351743 d!1815815))

(declare-fun m!6710368 () Bool)

(assert (=> bs!1351743 m!6710368))

(assert (=> b!5763170 d!1815815))

(declare-fun bs!1351744 () Bool)

(declare-fun b!5763823 () Bool)

(assert (= bs!1351744 (and b!5763823 b!5763721)))

(declare-fun lambda!312981 () Int)

(assert (=> bs!1351744 (not (= lambda!312981 lambda!312968))))

(declare-fun bs!1351745 () Bool)

(assert (= bs!1351745 (and b!5763823 d!1815803)))

(assert (=> bs!1351745 (not (= lambda!312981 lambda!312971))))

(declare-fun bs!1351746 () Bool)

(assert (= bs!1351746 (and b!5763823 d!1815805)))

(assert (=> bs!1351746 (not (= lambda!312981 lambda!312976))))

(assert (=> bs!1351746 (not (= lambda!312981 lambda!312977))))

(declare-fun bs!1351747 () Bool)

(assert (= bs!1351747 (and b!5763823 b!5763152)))

(assert (=> bs!1351747 (not (= lambda!312981 lambda!312915))))

(declare-fun bs!1351748 () Bool)

(assert (= bs!1351748 (and b!5763823 b!5763724)))

(assert (=> bs!1351748 (= (and (= (reg!16104 (regOne!32062 r!7292)) (reg!16104 r!7292)) (= (regOne!32062 r!7292) r!7292)) (= lambda!312981 lambda!312967))))

(assert (=> bs!1351747 (not (= lambda!312981 lambda!312916))))

(assert (=> b!5763823 true))

(assert (=> b!5763823 true))

(declare-fun bs!1351749 () Bool)

(declare-fun b!5763820 () Bool)

(assert (= bs!1351749 (and b!5763820 b!5763721)))

(declare-fun lambda!312982 () Int)

(assert (=> bs!1351749 (= (and (= (regOne!32062 (regOne!32062 r!7292)) (regOne!32062 r!7292)) (= (regTwo!32062 (regOne!32062 r!7292)) (regTwo!32062 r!7292))) (= lambda!312982 lambda!312968))))

(declare-fun bs!1351750 () Bool)

(assert (= bs!1351750 (and b!5763820 d!1815803)))

(assert (=> bs!1351750 (not (= lambda!312982 lambda!312971))))

(declare-fun bs!1351751 () Bool)

(assert (= bs!1351751 (and b!5763820 b!5763823)))

(assert (=> bs!1351751 (not (= lambda!312982 lambda!312981))))

(declare-fun bs!1351752 () Bool)

(assert (= bs!1351752 (and b!5763820 d!1815805)))

(assert (=> bs!1351752 (not (= lambda!312982 lambda!312976))))

(assert (=> bs!1351752 (= (and (= (regOne!32062 (regOne!32062 r!7292)) (regOne!32062 r!7292)) (= (regTwo!32062 (regOne!32062 r!7292)) (regTwo!32062 r!7292))) (= lambda!312982 lambda!312977))))

(declare-fun bs!1351753 () Bool)

(assert (= bs!1351753 (and b!5763820 b!5763152)))

(assert (=> bs!1351753 (not (= lambda!312982 lambda!312915))))

(declare-fun bs!1351754 () Bool)

(assert (= bs!1351754 (and b!5763820 b!5763724)))

(assert (=> bs!1351754 (not (= lambda!312982 lambda!312967))))

(assert (=> bs!1351753 (= (and (= (regOne!32062 (regOne!32062 r!7292)) (regOne!32062 r!7292)) (= (regTwo!32062 (regOne!32062 r!7292)) (regTwo!32062 r!7292))) (= lambda!312982 lambda!312916))))

(assert (=> b!5763820 true))

(assert (=> b!5763820 true))

(declare-fun b!5763817 () Bool)

(declare-fun e!3541361 () Bool)

(assert (=> b!5763817 (= e!3541361 (matchRSpec!2878 (regTwo!32063 (regOne!32062 r!7292)) s!2326))))

(declare-fun b!5763818 () Bool)

(declare-fun e!3541359 () Bool)

(declare-fun e!3541357 () Bool)

(assert (=> b!5763818 (= e!3541359 e!3541357)))

(declare-fun c!1018832 () Bool)

(assert (=> b!5763818 (= c!1018832 ((_ is Star!15775) (regOne!32062 r!7292)))))

(declare-fun b!5763819 () Bool)

(declare-fun e!3541363 () Bool)

(declare-fun call!442565 () Bool)

(assert (=> b!5763819 (= e!3541363 call!442565)))

(declare-fun call!442564 () Bool)

(assert (=> b!5763820 (= e!3541357 call!442564)))

(declare-fun d!1815817 () Bool)

(declare-fun c!1018831 () Bool)

(assert (=> d!1815817 (= c!1018831 ((_ is EmptyExpr!15775) (regOne!32062 r!7292)))))

(assert (=> d!1815817 (= (matchRSpec!2878 (regOne!32062 r!7292) s!2326) e!3541363)))

(declare-fun bm!442559 () Bool)

(assert (=> bm!442559 (= call!442564 (Exists!2875 (ite c!1018832 lambda!312981 lambda!312982)))))

(declare-fun b!5763821 () Bool)

(declare-fun e!3541358 () Bool)

(assert (=> b!5763821 (= e!3541358 (= s!2326 (Cons!63500 (c!1018649 (regOne!32062 r!7292)) Nil!63500)))))

(declare-fun b!5763822 () Bool)

(assert (=> b!5763822 (= e!3541359 e!3541361)))

(declare-fun res!2432579 () Bool)

(assert (=> b!5763822 (= res!2432579 (matchRSpec!2878 (regOne!32063 (regOne!32062 r!7292)) s!2326))))

(assert (=> b!5763822 (=> res!2432579 e!3541361)))

(declare-fun e!3541362 () Bool)

(assert (=> b!5763823 (= e!3541362 call!442564)))

(declare-fun b!5763824 () Bool)

(declare-fun c!1018833 () Bool)

(assert (=> b!5763824 (= c!1018833 ((_ is Union!15775) (regOne!32062 r!7292)))))

(assert (=> b!5763824 (= e!3541358 e!3541359)))

(declare-fun b!5763825 () Bool)

(declare-fun e!3541360 () Bool)

(assert (=> b!5763825 (= e!3541363 e!3541360)))

(declare-fun res!2432577 () Bool)

(assert (=> b!5763825 (= res!2432577 (not ((_ is EmptyLang!15775) (regOne!32062 r!7292))))))

(assert (=> b!5763825 (=> (not res!2432577) (not e!3541360))))

(declare-fun bm!442560 () Bool)

(assert (=> bm!442560 (= call!442565 (isEmpty!35392 s!2326))))

(declare-fun b!5763826 () Bool)

(declare-fun res!2432578 () Bool)

(assert (=> b!5763826 (=> res!2432578 e!3541362)))

(assert (=> b!5763826 (= res!2432578 call!442565)))

(assert (=> b!5763826 (= e!3541357 e!3541362)))

(declare-fun b!5763827 () Bool)

(declare-fun c!1018830 () Bool)

(assert (=> b!5763827 (= c!1018830 ((_ is ElementMatch!15775) (regOne!32062 r!7292)))))

(assert (=> b!5763827 (= e!3541360 e!3541358)))

(assert (= (and d!1815817 c!1018831) b!5763819))

(assert (= (and d!1815817 (not c!1018831)) b!5763825))

(assert (= (and b!5763825 res!2432577) b!5763827))

(assert (= (and b!5763827 c!1018830) b!5763821))

(assert (= (and b!5763827 (not c!1018830)) b!5763824))

(assert (= (and b!5763824 c!1018833) b!5763822))

(assert (= (and b!5763824 (not c!1018833)) b!5763818))

(assert (= (and b!5763822 (not res!2432579)) b!5763817))

(assert (= (and b!5763818 c!1018832) b!5763826))

(assert (= (and b!5763818 (not c!1018832)) b!5763820))

(assert (= (and b!5763826 (not res!2432578)) b!5763823))

(assert (= (or b!5763823 b!5763820) bm!442559))

(assert (= (or b!5763819 b!5763826) bm!442560))

(declare-fun m!6710370 () Bool)

(assert (=> b!5763817 m!6710370))

(declare-fun m!6710372 () Bool)

(assert (=> bm!442559 m!6710372))

(declare-fun m!6710374 () Bool)

(assert (=> b!5763822 m!6710374))

(assert (=> bm!442560 m!6710306))

(assert (=> b!5763150 d!1815817))

(declare-fun d!1815819 () Bool)

(assert (=> d!1815819 (= (matchR!7960 (regOne!32062 r!7292) s!2326) (matchRSpec!2878 (regOne!32062 r!7292) s!2326))))

(declare-fun lt!2289120 () Unit!156632)

(assert (=> d!1815819 (= lt!2289120 (choose!43712 (regOne!32062 r!7292) s!2326))))

(assert (=> d!1815819 (validRegex!7511 (regOne!32062 r!7292))))

(assert (=> d!1815819 (= (mainMatchTheorem!2878 (regOne!32062 r!7292) s!2326) lt!2289120)))

(declare-fun bs!1351755 () Bool)

(assert (= bs!1351755 d!1815819))

(assert (=> bs!1351755 m!6709946))

(assert (=> bs!1351755 m!6709948))

(declare-fun m!6710376 () Bool)

(assert (=> bs!1351755 m!6710376))

(assert (=> bs!1351755 m!6710340))

(assert (=> b!5763150 d!1815819))

(declare-fun b!5763828 () Bool)

(declare-fun res!2432582 () Bool)

(declare-fun e!3541369 () Bool)

(assert (=> b!5763828 (=> res!2432582 e!3541369)))

(declare-fun e!3541367 () Bool)

(assert (=> b!5763828 (= res!2432582 e!3541367)))

(declare-fun res!2432585 () Bool)

(assert (=> b!5763828 (=> (not res!2432585) (not e!3541367))))

(declare-fun lt!2289121 () Bool)

(assert (=> b!5763828 (= res!2432585 lt!2289121)))

(declare-fun b!5763830 () Bool)

(declare-fun e!3541365 () Bool)

(assert (=> b!5763830 (= e!3541365 (matchR!7960 (derivativeStep!4556 (regOne!32062 r!7292) (head!12186 s!2326)) (tail!11281 s!2326)))))

(declare-fun b!5763831 () Bool)

(assert (=> b!5763831 (= e!3541367 (= (head!12186 s!2326) (c!1018649 (regOne!32062 r!7292))))))

(declare-fun b!5763832 () Bool)

(declare-fun e!3541364 () Bool)

(assert (=> b!5763832 (= e!3541364 (not lt!2289121))))

(declare-fun b!5763833 () Bool)

(declare-fun e!3541366 () Bool)

(assert (=> b!5763833 (= e!3541366 (not (= (head!12186 s!2326) (c!1018649 (regOne!32062 r!7292)))))))

(declare-fun b!5763834 () Bool)

(declare-fun res!2432584 () Bool)

(assert (=> b!5763834 (=> (not res!2432584) (not e!3541367))))

(declare-fun call!442566 () Bool)

(assert (=> b!5763834 (= res!2432584 (not call!442566))))

(declare-fun bm!442561 () Bool)

(assert (=> bm!442561 (= call!442566 (isEmpty!35392 s!2326))))

(declare-fun b!5763829 () Bool)

(declare-fun res!2432581 () Bool)

(assert (=> b!5763829 (=> res!2432581 e!3541369)))

(assert (=> b!5763829 (= res!2432581 (not ((_ is ElementMatch!15775) (regOne!32062 r!7292))))))

(assert (=> b!5763829 (= e!3541364 e!3541369)))

(declare-fun d!1815821 () Bool)

(declare-fun e!3541370 () Bool)

(assert (=> d!1815821 e!3541370))

(declare-fun c!1018836 () Bool)

(assert (=> d!1815821 (= c!1018836 ((_ is EmptyExpr!15775) (regOne!32062 r!7292)))))

(assert (=> d!1815821 (= lt!2289121 e!3541365)))

(declare-fun c!1018835 () Bool)

(assert (=> d!1815821 (= c!1018835 (isEmpty!35392 s!2326))))

(assert (=> d!1815821 (validRegex!7511 (regOne!32062 r!7292))))

(assert (=> d!1815821 (= (matchR!7960 (regOne!32062 r!7292) s!2326) lt!2289121)))

(declare-fun b!5763835 () Bool)

(declare-fun res!2432586 () Bool)

(assert (=> b!5763835 (=> res!2432586 e!3541366)))

(assert (=> b!5763835 (= res!2432586 (not (isEmpty!35392 (tail!11281 s!2326))))))

(declare-fun b!5763836 () Bool)

(assert (=> b!5763836 (= e!3541365 (nullable!5807 (regOne!32062 r!7292)))))

(declare-fun b!5763837 () Bool)

(declare-fun e!3541368 () Bool)

(assert (=> b!5763837 (= e!3541368 e!3541366)))

(declare-fun res!2432587 () Bool)

(assert (=> b!5763837 (=> res!2432587 e!3541366)))

(assert (=> b!5763837 (= res!2432587 call!442566)))

(declare-fun b!5763838 () Bool)

(assert (=> b!5763838 (= e!3541370 e!3541364)))

(declare-fun c!1018834 () Bool)

(assert (=> b!5763838 (= c!1018834 ((_ is EmptyLang!15775) (regOne!32062 r!7292)))))

(declare-fun b!5763839 () Bool)

(declare-fun res!2432583 () Bool)

(assert (=> b!5763839 (=> (not res!2432583) (not e!3541367))))

(assert (=> b!5763839 (= res!2432583 (isEmpty!35392 (tail!11281 s!2326)))))

(declare-fun b!5763840 () Bool)

(assert (=> b!5763840 (= e!3541370 (= lt!2289121 call!442566))))

(declare-fun b!5763841 () Bool)

(assert (=> b!5763841 (= e!3541369 e!3541368)))

(declare-fun res!2432580 () Bool)

(assert (=> b!5763841 (=> (not res!2432580) (not e!3541368))))

(assert (=> b!5763841 (= res!2432580 (not lt!2289121))))

(assert (= (and d!1815821 c!1018835) b!5763836))

(assert (= (and d!1815821 (not c!1018835)) b!5763830))

(assert (= (and d!1815821 c!1018836) b!5763840))

(assert (= (and d!1815821 (not c!1018836)) b!5763838))

(assert (= (and b!5763838 c!1018834) b!5763832))

(assert (= (and b!5763838 (not c!1018834)) b!5763829))

(assert (= (and b!5763829 (not res!2432581)) b!5763828))

(assert (= (and b!5763828 res!2432585) b!5763834))

(assert (= (and b!5763834 res!2432584) b!5763839))

(assert (= (and b!5763839 res!2432583) b!5763831))

(assert (= (and b!5763828 (not res!2432582)) b!5763841))

(assert (= (and b!5763841 res!2432580) b!5763837))

(assert (= (and b!5763837 (not res!2432587)) b!5763835))

(assert (= (and b!5763835 (not res!2432586)) b!5763833))

(assert (= (or b!5763840 b!5763834 b!5763837) bm!442561))

(assert (=> b!5763833 m!6710308))

(assert (=> b!5763831 m!6710308))

(assert (=> b!5763830 m!6710308))

(assert (=> b!5763830 m!6710308))

(declare-fun m!6710378 () Bool)

(assert (=> b!5763830 m!6710378))

(assert (=> b!5763830 m!6710312))

(assert (=> b!5763830 m!6710378))

(assert (=> b!5763830 m!6710312))

(declare-fun m!6710380 () Bool)

(assert (=> b!5763830 m!6710380))

(assert (=> b!5763835 m!6710312))

(assert (=> b!5763835 m!6710312))

(assert (=> b!5763835 m!6710316))

(assert (=> d!1815821 m!6710306))

(assert (=> d!1815821 m!6710340))

(assert (=> bm!442561 m!6710306))

(assert (=> b!5763839 m!6710312))

(assert (=> b!5763839 m!6710312))

(assert (=> b!5763839 m!6710316))

(declare-fun m!6710382 () Bool)

(assert (=> b!5763836 m!6710382))

(assert (=> b!5763150 d!1815821))

(declare-fun bs!1351756 () Bool)

(declare-fun b!5763848 () Bool)

(assert (= bs!1351756 (and b!5763848 b!5763721)))

(declare-fun lambda!312983 () Int)

(assert (=> bs!1351756 (not (= lambda!312983 lambda!312968))))

(declare-fun bs!1351757 () Bool)

(assert (= bs!1351757 (and b!5763848 d!1815803)))

(assert (=> bs!1351757 (not (= lambda!312983 lambda!312971))))

(declare-fun bs!1351758 () Bool)

(assert (= bs!1351758 (and b!5763848 b!5763823)))

(assert (=> bs!1351758 (= (and (= (reg!16104 (regTwo!32062 r!7292)) (reg!16104 (regOne!32062 r!7292))) (= (regTwo!32062 r!7292) (regOne!32062 r!7292))) (= lambda!312983 lambda!312981))))

(declare-fun bs!1351759 () Bool)

(assert (= bs!1351759 (and b!5763848 d!1815805)))

(assert (=> bs!1351759 (not (= lambda!312983 lambda!312976))))

(assert (=> bs!1351759 (not (= lambda!312983 lambda!312977))))

(declare-fun bs!1351760 () Bool)

(assert (= bs!1351760 (and b!5763848 b!5763820)))

(assert (=> bs!1351760 (not (= lambda!312983 lambda!312982))))

(declare-fun bs!1351761 () Bool)

(assert (= bs!1351761 (and b!5763848 b!5763152)))

(assert (=> bs!1351761 (not (= lambda!312983 lambda!312915))))

(declare-fun bs!1351762 () Bool)

(assert (= bs!1351762 (and b!5763848 b!5763724)))

(assert (=> bs!1351762 (= (and (= (reg!16104 (regTwo!32062 r!7292)) (reg!16104 r!7292)) (= (regTwo!32062 r!7292) r!7292)) (= lambda!312983 lambda!312967))))

(assert (=> bs!1351761 (not (= lambda!312983 lambda!312916))))

(assert (=> b!5763848 true))

(assert (=> b!5763848 true))

(declare-fun bs!1351763 () Bool)

(declare-fun b!5763845 () Bool)

(assert (= bs!1351763 (and b!5763845 b!5763721)))

(declare-fun lambda!312984 () Int)

(assert (=> bs!1351763 (= (and (= (regOne!32062 (regTwo!32062 r!7292)) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32062 r!7292)) (regTwo!32062 r!7292))) (= lambda!312984 lambda!312968))))

(declare-fun bs!1351764 () Bool)

(assert (= bs!1351764 (and b!5763845 d!1815803)))

(assert (=> bs!1351764 (not (= lambda!312984 lambda!312971))))

(declare-fun bs!1351765 () Bool)

(assert (= bs!1351765 (and b!5763845 d!1815805)))

(assert (=> bs!1351765 (not (= lambda!312984 lambda!312976))))

(assert (=> bs!1351765 (= (and (= (regOne!32062 (regTwo!32062 r!7292)) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32062 r!7292)) (regTwo!32062 r!7292))) (= lambda!312984 lambda!312977))))

(declare-fun bs!1351766 () Bool)

(assert (= bs!1351766 (and b!5763845 b!5763820)))

(assert (=> bs!1351766 (= (and (= (regOne!32062 (regTwo!32062 r!7292)) (regOne!32062 (regOne!32062 r!7292))) (= (regTwo!32062 (regTwo!32062 r!7292)) (regTwo!32062 (regOne!32062 r!7292)))) (= lambda!312984 lambda!312982))))

(declare-fun bs!1351767 () Bool)

(assert (= bs!1351767 (and b!5763845 b!5763152)))

(assert (=> bs!1351767 (not (= lambda!312984 lambda!312915))))

(declare-fun bs!1351768 () Bool)

(assert (= bs!1351768 (and b!5763845 b!5763724)))

(assert (=> bs!1351768 (not (= lambda!312984 lambda!312967))))

(assert (=> bs!1351767 (= (and (= (regOne!32062 (regTwo!32062 r!7292)) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32062 r!7292)) (regTwo!32062 r!7292))) (= lambda!312984 lambda!312916))))

(declare-fun bs!1351769 () Bool)

(assert (= bs!1351769 (and b!5763845 b!5763848)))

(assert (=> bs!1351769 (not (= lambda!312984 lambda!312983))))

(declare-fun bs!1351770 () Bool)

(assert (= bs!1351770 (and b!5763845 b!5763823)))

(assert (=> bs!1351770 (not (= lambda!312984 lambda!312981))))

(assert (=> b!5763845 true))

(assert (=> b!5763845 true))

(declare-fun b!5763842 () Bool)

(declare-fun e!3541375 () Bool)

(assert (=> b!5763842 (= e!3541375 (matchRSpec!2878 (regTwo!32063 (regTwo!32062 r!7292)) s!2326))))

(declare-fun b!5763843 () Bool)

(declare-fun e!3541373 () Bool)

(declare-fun e!3541371 () Bool)

(assert (=> b!5763843 (= e!3541373 e!3541371)))

(declare-fun c!1018839 () Bool)

(assert (=> b!5763843 (= c!1018839 ((_ is Star!15775) (regTwo!32062 r!7292)))))

(declare-fun b!5763844 () Bool)

(declare-fun e!3541377 () Bool)

(declare-fun call!442568 () Bool)

(assert (=> b!5763844 (= e!3541377 call!442568)))

(declare-fun call!442567 () Bool)

(assert (=> b!5763845 (= e!3541371 call!442567)))

(declare-fun d!1815823 () Bool)

(declare-fun c!1018838 () Bool)

(assert (=> d!1815823 (= c!1018838 ((_ is EmptyExpr!15775) (regTwo!32062 r!7292)))))

(assert (=> d!1815823 (= (matchRSpec!2878 (regTwo!32062 r!7292) s!2326) e!3541377)))

(declare-fun bm!442562 () Bool)

(assert (=> bm!442562 (= call!442567 (Exists!2875 (ite c!1018839 lambda!312983 lambda!312984)))))

(declare-fun b!5763846 () Bool)

(declare-fun e!3541372 () Bool)

(assert (=> b!5763846 (= e!3541372 (= s!2326 (Cons!63500 (c!1018649 (regTwo!32062 r!7292)) Nil!63500)))))

(declare-fun b!5763847 () Bool)

(assert (=> b!5763847 (= e!3541373 e!3541375)))

(declare-fun res!2432590 () Bool)

(assert (=> b!5763847 (= res!2432590 (matchRSpec!2878 (regOne!32063 (regTwo!32062 r!7292)) s!2326))))

(assert (=> b!5763847 (=> res!2432590 e!3541375)))

(declare-fun e!3541376 () Bool)

(assert (=> b!5763848 (= e!3541376 call!442567)))

(declare-fun b!5763849 () Bool)

(declare-fun c!1018840 () Bool)

(assert (=> b!5763849 (= c!1018840 ((_ is Union!15775) (regTwo!32062 r!7292)))))

(assert (=> b!5763849 (= e!3541372 e!3541373)))

(declare-fun b!5763850 () Bool)

(declare-fun e!3541374 () Bool)

(assert (=> b!5763850 (= e!3541377 e!3541374)))

(declare-fun res!2432588 () Bool)

(assert (=> b!5763850 (= res!2432588 (not ((_ is EmptyLang!15775) (regTwo!32062 r!7292))))))

(assert (=> b!5763850 (=> (not res!2432588) (not e!3541374))))

(declare-fun bm!442563 () Bool)

(assert (=> bm!442563 (= call!442568 (isEmpty!35392 s!2326))))

(declare-fun b!5763851 () Bool)

(declare-fun res!2432589 () Bool)

(assert (=> b!5763851 (=> res!2432589 e!3541376)))

(assert (=> b!5763851 (= res!2432589 call!442568)))

(assert (=> b!5763851 (= e!3541371 e!3541376)))

(declare-fun b!5763852 () Bool)

(declare-fun c!1018837 () Bool)

(assert (=> b!5763852 (= c!1018837 ((_ is ElementMatch!15775) (regTwo!32062 r!7292)))))

(assert (=> b!5763852 (= e!3541374 e!3541372)))

(assert (= (and d!1815823 c!1018838) b!5763844))

(assert (= (and d!1815823 (not c!1018838)) b!5763850))

(assert (= (and b!5763850 res!2432588) b!5763852))

(assert (= (and b!5763852 c!1018837) b!5763846))

(assert (= (and b!5763852 (not c!1018837)) b!5763849))

(assert (= (and b!5763849 c!1018840) b!5763847))

(assert (= (and b!5763849 (not c!1018840)) b!5763843))

(assert (= (and b!5763847 (not res!2432590)) b!5763842))

(assert (= (and b!5763843 c!1018839) b!5763851))

(assert (= (and b!5763843 (not c!1018839)) b!5763845))

(assert (= (and b!5763851 (not res!2432589)) b!5763848))

(assert (= (or b!5763848 b!5763845) bm!442562))

(assert (= (or b!5763844 b!5763851) bm!442563))

(declare-fun m!6710384 () Bool)

(assert (=> b!5763842 m!6710384))

(declare-fun m!6710386 () Bool)

(assert (=> bm!442562 m!6710386))

(declare-fun m!6710388 () Bool)

(assert (=> b!5763847 m!6710388))

(assert (=> bm!442563 m!6710306))

(assert (=> b!5763150 d!1815823))

(declare-fun b!5763853 () Bool)

(declare-fun res!2432593 () Bool)

(declare-fun e!3541383 () Bool)

(assert (=> b!5763853 (=> res!2432593 e!3541383)))

(declare-fun e!3541381 () Bool)

(assert (=> b!5763853 (= res!2432593 e!3541381)))

(declare-fun res!2432596 () Bool)

(assert (=> b!5763853 (=> (not res!2432596) (not e!3541381))))

(declare-fun lt!2289122 () Bool)

(assert (=> b!5763853 (= res!2432596 lt!2289122)))

(declare-fun b!5763855 () Bool)

(declare-fun e!3541379 () Bool)

(assert (=> b!5763855 (= e!3541379 (matchR!7960 (derivativeStep!4556 (regTwo!32062 r!7292) (head!12186 s!2326)) (tail!11281 s!2326)))))

(declare-fun b!5763856 () Bool)

(assert (=> b!5763856 (= e!3541381 (= (head!12186 s!2326) (c!1018649 (regTwo!32062 r!7292))))))

(declare-fun b!5763857 () Bool)

(declare-fun e!3541378 () Bool)

(assert (=> b!5763857 (= e!3541378 (not lt!2289122))))

(declare-fun b!5763858 () Bool)

(declare-fun e!3541380 () Bool)

(assert (=> b!5763858 (= e!3541380 (not (= (head!12186 s!2326) (c!1018649 (regTwo!32062 r!7292)))))))

(declare-fun b!5763859 () Bool)

(declare-fun res!2432595 () Bool)

(assert (=> b!5763859 (=> (not res!2432595) (not e!3541381))))

(declare-fun call!442569 () Bool)

(assert (=> b!5763859 (= res!2432595 (not call!442569))))

(declare-fun bm!442564 () Bool)

(assert (=> bm!442564 (= call!442569 (isEmpty!35392 s!2326))))

(declare-fun b!5763854 () Bool)

(declare-fun res!2432592 () Bool)

(assert (=> b!5763854 (=> res!2432592 e!3541383)))

(assert (=> b!5763854 (= res!2432592 (not ((_ is ElementMatch!15775) (regTwo!32062 r!7292))))))

(assert (=> b!5763854 (= e!3541378 e!3541383)))

(declare-fun d!1815825 () Bool)

(declare-fun e!3541384 () Bool)

(assert (=> d!1815825 e!3541384))

(declare-fun c!1018843 () Bool)

(assert (=> d!1815825 (= c!1018843 ((_ is EmptyExpr!15775) (regTwo!32062 r!7292)))))

(assert (=> d!1815825 (= lt!2289122 e!3541379)))

(declare-fun c!1018842 () Bool)

(assert (=> d!1815825 (= c!1018842 (isEmpty!35392 s!2326))))

(assert (=> d!1815825 (validRegex!7511 (regTwo!32062 r!7292))))

(assert (=> d!1815825 (= (matchR!7960 (regTwo!32062 r!7292) s!2326) lt!2289122)))

(declare-fun b!5763860 () Bool)

(declare-fun res!2432597 () Bool)

(assert (=> b!5763860 (=> res!2432597 e!3541380)))

(assert (=> b!5763860 (= res!2432597 (not (isEmpty!35392 (tail!11281 s!2326))))))

(declare-fun b!5763861 () Bool)

(assert (=> b!5763861 (= e!3541379 (nullable!5807 (regTwo!32062 r!7292)))))

(declare-fun b!5763862 () Bool)

(declare-fun e!3541382 () Bool)

(assert (=> b!5763862 (= e!3541382 e!3541380)))

(declare-fun res!2432598 () Bool)

(assert (=> b!5763862 (=> res!2432598 e!3541380)))

(assert (=> b!5763862 (= res!2432598 call!442569)))

(declare-fun b!5763863 () Bool)

(assert (=> b!5763863 (= e!3541384 e!3541378)))

(declare-fun c!1018841 () Bool)

(assert (=> b!5763863 (= c!1018841 ((_ is EmptyLang!15775) (regTwo!32062 r!7292)))))

(declare-fun b!5763864 () Bool)

(declare-fun res!2432594 () Bool)

(assert (=> b!5763864 (=> (not res!2432594) (not e!3541381))))

(assert (=> b!5763864 (= res!2432594 (isEmpty!35392 (tail!11281 s!2326)))))

(declare-fun b!5763865 () Bool)

(assert (=> b!5763865 (= e!3541384 (= lt!2289122 call!442569))))

(declare-fun b!5763866 () Bool)

(assert (=> b!5763866 (= e!3541383 e!3541382)))

(declare-fun res!2432591 () Bool)

(assert (=> b!5763866 (=> (not res!2432591) (not e!3541382))))

(assert (=> b!5763866 (= res!2432591 (not lt!2289122))))

(assert (= (and d!1815825 c!1018842) b!5763861))

(assert (= (and d!1815825 (not c!1018842)) b!5763855))

(assert (= (and d!1815825 c!1018843) b!5763865))

(assert (= (and d!1815825 (not c!1018843)) b!5763863))

(assert (= (and b!5763863 c!1018841) b!5763857))

(assert (= (and b!5763863 (not c!1018841)) b!5763854))

(assert (= (and b!5763854 (not res!2432592)) b!5763853))

(assert (= (and b!5763853 res!2432596) b!5763859))

(assert (= (and b!5763859 res!2432595) b!5763864))

(assert (= (and b!5763864 res!2432594) b!5763856))

(assert (= (and b!5763853 (not res!2432593)) b!5763866))

(assert (= (and b!5763866 res!2432591) b!5763862))

(assert (= (and b!5763862 (not res!2432598)) b!5763860))

(assert (= (and b!5763860 (not res!2432597)) b!5763858))

(assert (= (or b!5763865 b!5763859 b!5763862) bm!442564))

(assert (=> b!5763858 m!6710308))

(assert (=> b!5763856 m!6710308))

(assert (=> b!5763855 m!6710308))

(assert (=> b!5763855 m!6710308))

(declare-fun m!6710390 () Bool)

(assert (=> b!5763855 m!6710390))

(assert (=> b!5763855 m!6710312))

(assert (=> b!5763855 m!6710390))

(assert (=> b!5763855 m!6710312))

(declare-fun m!6710392 () Bool)

(assert (=> b!5763855 m!6710392))

(assert (=> b!5763860 m!6710312))

(assert (=> b!5763860 m!6710312))

(assert (=> b!5763860 m!6710316))

(assert (=> d!1815825 m!6710306))

(declare-fun m!6710394 () Bool)

(assert (=> d!1815825 m!6710394))

(assert (=> bm!442564 m!6710306))

(assert (=> b!5763864 m!6710312))

(assert (=> b!5763864 m!6710312))

(assert (=> b!5763864 m!6710316))

(declare-fun m!6710396 () Bool)

(assert (=> b!5763861 m!6710396))

(assert (=> b!5763150 d!1815825))

(declare-fun d!1815827 () Bool)

(assert (=> d!1815827 (= (matchR!7960 (regTwo!32062 r!7292) s!2326) (matchRSpec!2878 (regTwo!32062 r!7292) s!2326))))

(declare-fun lt!2289123 () Unit!156632)

(assert (=> d!1815827 (= lt!2289123 (choose!43712 (regTwo!32062 r!7292) s!2326))))

(assert (=> d!1815827 (validRegex!7511 (regTwo!32062 r!7292))))

(assert (=> d!1815827 (= (mainMatchTheorem!2878 (regTwo!32062 r!7292) s!2326) lt!2289123)))

(declare-fun bs!1351771 () Bool)

(assert (= bs!1351771 d!1815827))

(assert (=> bs!1351771 m!6709940))

(assert (=> bs!1351771 m!6709950))

(declare-fun m!6710398 () Bool)

(assert (=> bs!1351771 m!6710398))

(assert (=> bs!1351771 m!6710394))

(assert (=> b!5763150 d!1815827))

(declare-fun d!1815829 () Bool)

(declare-fun lt!2289126 () Regex!15775)

(assert (=> d!1815829 (validRegex!7511 lt!2289126)))

(assert (=> d!1815829 (= lt!2289126 (generalisedUnion!1638 (unfocusZipperList!1203 zl!343)))))

(assert (=> d!1815829 (= (unfocusZipper!1517 zl!343) lt!2289126)))

(declare-fun bs!1351772 () Bool)

(assert (= bs!1351772 d!1815829))

(declare-fun m!6710400 () Bool)

(assert (=> bs!1351772 m!6710400))

(assert (=> bs!1351772 m!6709958))

(assert (=> bs!1351772 m!6709958))

(assert (=> bs!1351772 m!6709960))

(assert (=> b!5763174 d!1815829))

(declare-fun bs!1351773 () Bool)

(declare-fun d!1815831 () Bool)

(assert (= bs!1351773 (and d!1815831 b!5763167)))

(declare-fun lambda!312985 () Int)

(assert (=> bs!1351773 (= lambda!312985 lambda!312917)))

(declare-fun bs!1351774 () Bool)

(assert (= bs!1351774 (and d!1815831 d!1815815)))

(assert (=> bs!1351774 (= lambda!312985 lambda!312980)))

(assert (=> d!1815831 true))

(assert (=> d!1815831 (= (derivationStepZipper!1854 lt!2289015 (h!69948 s!2326)) (flatMap!1388 lt!2289015 lambda!312985))))

(declare-fun bs!1351775 () Bool)

(assert (= bs!1351775 d!1815831))

(declare-fun m!6710402 () Bool)

(assert (=> bs!1351775 m!6710402))

(assert (=> b!5763164 d!1815831))

(declare-fun d!1815833 () Bool)

(assert (=> d!1815833 (= (flatMap!1388 lt!2289015 lambda!312917) (choose!43711 lt!2289015 lambda!312917))))

(declare-fun bs!1351776 () Bool)

(assert (= bs!1351776 d!1815833))

(declare-fun m!6710404 () Bool)

(assert (=> bs!1351776 m!6710404))

(assert (=> b!5763164 d!1815833))

(assert (=> b!5763164 d!1815761))

(declare-fun d!1815835 () Bool)

(assert (=> d!1815835 (= (flatMap!1388 lt!2289015 lambda!312917) (dynLambda!24857 lambda!312917 lt!2289027))))

(declare-fun lt!2289127 () Unit!156632)

(assert (=> d!1815835 (= lt!2289127 (choose!43710 lt!2289015 lt!2289027 lambda!312917))))

(assert (=> d!1815835 (= lt!2289015 (store ((as const (Array Context!10318 Bool)) false) lt!2289027 true))))

(assert (=> d!1815835 (= (lemmaFlatMapOnSingletonSet!920 lt!2289015 lt!2289027 lambda!312917) lt!2289127)))

(declare-fun b_lambda!217593 () Bool)

(assert (=> (not b_lambda!217593) (not d!1815835)))

(declare-fun bs!1351777 () Bool)

(assert (= bs!1351777 d!1815835))

(assert (=> bs!1351777 m!6709922))

(declare-fun m!6710406 () Bool)

(assert (=> bs!1351777 m!6710406))

(declare-fun m!6710408 () Bool)

(assert (=> bs!1351777 m!6710408))

(assert (=> bs!1351777 m!6709918))

(assert (=> b!5763164 d!1815835))

(declare-fun d!1815837 () Bool)

(declare-fun res!2432611 () Bool)

(declare-fun e!3541404 () Bool)

(assert (=> d!1815837 (=> res!2432611 e!3541404)))

(assert (=> d!1815837 (= res!2432611 ((_ is ElementMatch!15775) r!7292))))

(assert (=> d!1815837 (= (validRegex!7511 r!7292) e!3541404)))

(declare-fun b!5763885 () Bool)

(declare-fun e!3541399 () Bool)

(declare-fun call!442576 () Bool)

(assert (=> b!5763885 (= e!3541399 call!442576)))

(declare-fun b!5763886 () Bool)

(declare-fun e!3541401 () Bool)

(declare-fun e!3541403 () Bool)

(assert (=> b!5763886 (= e!3541401 e!3541403)))

(declare-fun res!2432609 () Bool)

(assert (=> b!5763886 (=> (not res!2432609) (not e!3541403))))

(declare-fun call!442577 () Bool)

(assert (=> b!5763886 (= res!2432609 call!442577)))

(declare-fun c!1018849 () Bool)

(declare-fun call!442578 () Bool)

(declare-fun c!1018848 () Bool)

(declare-fun bm!442571 () Bool)

(assert (=> bm!442571 (= call!442578 (validRegex!7511 (ite c!1018848 (reg!16104 r!7292) (ite c!1018849 (regOne!32063 r!7292) (regOne!32062 r!7292)))))))

(declare-fun b!5763887 () Bool)

(assert (=> b!5763887 (= e!3541403 call!442576)))

(declare-fun b!5763888 () Bool)

(declare-fun e!3541402 () Bool)

(assert (=> b!5763888 (= e!3541402 call!442578)))

(declare-fun b!5763889 () Bool)

(declare-fun e!3541400 () Bool)

(assert (=> b!5763889 (= e!3541400 e!3541402)))

(declare-fun res!2432613 () Bool)

(assert (=> b!5763889 (= res!2432613 (not (nullable!5807 (reg!16104 r!7292))))))

(assert (=> b!5763889 (=> (not res!2432613) (not e!3541402))))

(declare-fun b!5763890 () Bool)

(declare-fun res!2432610 () Bool)

(assert (=> b!5763890 (=> (not res!2432610) (not e!3541399))))

(assert (=> b!5763890 (= res!2432610 call!442577)))

(declare-fun e!3541405 () Bool)

(assert (=> b!5763890 (= e!3541405 e!3541399)))

(declare-fun b!5763891 () Bool)

(assert (=> b!5763891 (= e!3541404 e!3541400)))

(assert (=> b!5763891 (= c!1018848 ((_ is Star!15775) r!7292))))

(declare-fun bm!442572 () Bool)

(assert (=> bm!442572 (= call!442576 (validRegex!7511 (ite c!1018849 (regTwo!32063 r!7292) (regTwo!32062 r!7292))))))

(declare-fun b!5763892 () Bool)

(assert (=> b!5763892 (= e!3541400 e!3541405)))

(assert (=> b!5763892 (= c!1018849 ((_ is Union!15775) r!7292))))

(declare-fun bm!442573 () Bool)

(assert (=> bm!442573 (= call!442577 call!442578)))

(declare-fun b!5763893 () Bool)

(declare-fun res!2432612 () Bool)

(assert (=> b!5763893 (=> res!2432612 e!3541401)))

(assert (=> b!5763893 (= res!2432612 (not ((_ is Concat!24620) r!7292)))))

(assert (=> b!5763893 (= e!3541405 e!3541401)))

(assert (= (and d!1815837 (not res!2432611)) b!5763891))

(assert (= (and b!5763891 c!1018848) b!5763889))

(assert (= (and b!5763891 (not c!1018848)) b!5763892))

(assert (= (and b!5763889 res!2432613) b!5763888))

(assert (= (and b!5763892 c!1018849) b!5763890))

(assert (= (and b!5763892 (not c!1018849)) b!5763893))

(assert (= (and b!5763890 res!2432610) b!5763885))

(assert (= (and b!5763893 (not res!2432612)) b!5763886))

(assert (= (and b!5763886 res!2432609) b!5763887))

(assert (= (or b!5763885 b!5763887) bm!442572))

(assert (= (or b!5763890 b!5763886) bm!442573))

(assert (= (or b!5763888 bm!442573) bm!442571))

(declare-fun m!6710410 () Bool)

(assert (=> bm!442571 m!6710410))

(declare-fun m!6710412 () Bool)

(assert (=> b!5763889 m!6710412))

(declare-fun m!6710414 () Bool)

(assert (=> bm!442572 m!6710414))

(assert (=> start!591940 d!1815837))

(declare-fun bs!1351778 () Bool)

(declare-fun d!1815839 () Bool)

(assert (= bs!1351778 (and d!1815839 d!1815691)))

(declare-fun lambda!312988 () Int)

(assert (=> bs!1351778 (= lambda!312988 lambda!312926)))

(declare-fun bs!1351779 () Bool)

(assert (= bs!1351779 (and d!1815839 d!1815717)))

(assert (=> bs!1351779 (= lambda!312988 lambda!312941)))

(declare-fun bs!1351780 () Bool)

(assert (= bs!1351780 (and d!1815839 d!1815723)))

(assert (=> bs!1351780 (= lambda!312988 lambda!312949)))

(declare-fun b!5763914 () Bool)

(declare-fun e!3541421 () Bool)

(assert (=> b!5763914 (= e!3541421 (isEmpty!35389 (t!376959 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun b!5763915 () Bool)

(declare-fun e!3541418 () Bool)

(declare-fun lt!2289130 () Regex!15775)

(declare-fun isEmptyExpr!1261 (Regex!15775) Bool)

(assert (=> b!5763915 (= e!3541418 (isEmptyExpr!1261 lt!2289130))))

(declare-fun b!5763916 () Bool)

(declare-fun e!3541422 () Bool)

(assert (=> b!5763916 (= e!3541418 e!3541422)))

(declare-fun c!1018858 () Bool)

(assert (=> b!5763916 (= c!1018858 (isEmpty!35389 (tail!11282 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun b!5763917 () Bool)

(declare-fun e!3541420 () Regex!15775)

(declare-fun e!3541423 () Regex!15775)

(assert (=> b!5763917 (= e!3541420 e!3541423)))

(declare-fun c!1018861 () Bool)

(assert (=> b!5763917 (= c!1018861 ((_ is Cons!63501) (exprs!5659 (h!69950 zl!343))))))

(declare-fun b!5763918 () Bool)

(declare-fun e!3541419 () Bool)

(assert (=> b!5763918 (= e!3541419 e!3541418)))

(declare-fun c!1018860 () Bool)

(assert (=> b!5763918 (= c!1018860 (isEmpty!35389 (exprs!5659 (h!69950 zl!343))))))

(declare-fun b!5763919 () Bool)

(assert (=> b!5763919 (= e!3541423 (Concat!24620 (h!69949 (exprs!5659 (h!69950 zl!343))) (generalisedConcat!1390 (t!376959 (exprs!5659 (h!69950 zl!343))))))))

(declare-fun b!5763920 () Bool)

(assert (=> b!5763920 (= e!3541422 (= lt!2289130 (head!12187 (exprs!5659 (h!69950 zl!343)))))))

(assert (=> d!1815839 e!3541419))

(declare-fun res!2432619 () Bool)

(assert (=> d!1815839 (=> (not res!2432619) (not e!3541419))))

(assert (=> d!1815839 (= res!2432619 (validRegex!7511 lt!2289130))))

(assert (=> d!1815839 (= lt!2289130 e!3541420)))

(declare-fun c!1018859 () Bool)

(assert (=> d!1815839 (= c!1018859 e!3541421)))

(declare-fun res!2432618 () Bool)

(assert (=> d!1815839 (=> (not res!2432618) (not e!3541421))))

(assert (=> d!1815839 (= res!2432618 ((_ is Cons!63501) (exprs!5659 (h!69950 zl!343))))))

(assert (=> d!1815839 (forall!14893 (exprs!5659 (h!69950 zl!343)) lambda!312988)))

(assert (=> d!1815839 (= (generalisedConcat!1390 (exprs!5659 (h!69950 zl!343))) lt!2289130)))

(declare-fun b!5763921 () Bool)

(assert (=> b!5763921 (= e!3541420 (h!69949 (exprs!5659 (h!69950 zl!343))))))

(declare-fun b!5763922 () Bool)

(declare-fun isConcat!784 (Regex!15775) Bool)

(assert (=> b!5763922 (= e!3541422 (isConcat!784 lt!2289130))))

(declare-fun b!5763923 () Bool)

(assert (=> b!5763923 (= e!3541423 EmptyExpr!15775)))

(assert (= (and d!1815839 res!2432618) b!5763914))

(assert (= (and d!1815839 c!1018859) b!5763921))

(assert (= (and d!1815839 (not c!1018859)) b!5763917))

(assert (= (and b!5763917 c!1018861) b!5763919))

(assert (= (and b!5763917 (not c!1018861)) b!5763923))

(assert (= (and d!1815839 res!2432619) b!5763918))

(assert (= (and b!5763918 c!1018860) b!5763915))

(assert (= (and b!5763918 (not c!1018860)) b!5763916))

(assert (= (and b!5763916 c!1018858) b!5763920))

(assert (= (and b!5763916 (not c!1018858)) b!5763922))

(assert (=> b!5763914 m!6709926))

(declare-fun m!6710416 () Bool)

(assert (=> b!5763922 m!6710416))

(declare-fun m!6710418 () Bool)

(assert (=> b!5763916 m!6710418))

(assert (=> b!5763916 m!6710418))

(declare-fun m!6710420 () Bool)

(assert (=> b!5763916 m!6710420))

(declare-fun m!6710422 () Bool)

(assert (=> b!5763915 m!6710422))

(declare-fun m!6710424 () Bool)

(assert (=> d!1815839 m!6710424))

(declare-fun m!6710426 () Bool)

(assert (=> d!1815839 m!6710426))

(declare-fun m!6710428 () Bool)

(assert (=> b!5763920 m!6710428))

(declare-fun m!6710430 () Bool)

(assert (=> b!5763918 m!6710430))

(declare-fun m!6710432 () Bool)

(assert (=> b!5763919 m!6710432))

(assert (=> b!5763154 d!1815839))

(declare-fun d!1815841 () Bool)

(assert (=> d!1815841 (= (nullable!5807 (regOne!32062 (regOne!32062 r!7292))) (nullableFct!1848 (regOne!32062 (regOne!32062 r!7292))))))

(declare-fun bs!1351781 () Bool)

(assert (= bs!1351781 d!1815841))

(declare-fun m!6710434 () Bool)

(assert (=> bs!1351781 m!6710434))

(assert (=> b!5763173 d!1815841))

(declare-fun d!1815843 () Bool)

(assert (=> d!1815843 (= (isEmpty!35390 (t!376960 zl!343)) ((_ is Nil!63502) (t!376960 zl!343)))))

(assert (=> b!5763163 d!1815843))

(declare-fun bs!1351782 () Bool)

(declare-fun d!1815845 () Bool)

(assert (= bs!1351782 (and d!1815845 d!1815691)))

(declare-fun lambda!312989 () Int)

(assert (=> bs!1351782 (= lambda!312989 lambda!312926)))

(declare-fun bs!1351783 () Bool)

(assert (= bs!1351783 (and d!1815845 d!1815717)))

(assert (=> bs!1351783 (= lambda!312989 lambda!312941)))

(declare-fun bs!1351784 () Bool)

(assert (= bs!1351784 (and d!1815845 d!1815723)))

(assert (=> bs!1351784 (= lambda!312989 lambda!312949)))

(declare-fun bs!1351785 () Bool)

(assert (= bs!1351785 (and d!1815845 d!1815839)))

(assert (=> bs!1351785 (= lambda!312989 lambda!312988)))

(assert (=> d!1815845 (= (inv!82684 (h!69950 zl!343)) (forall!14893 (exprs!5659 (h!69950 zl!343)) lambda!312989))))

(declare-fun bs!1351786 () Bool)

(assert (= bs!1351786 d!1815845))

(declare-fun m!6710436 () Bool)

(assert (=> bs!1351786 m!6710436))

(assert (=> b!5763162 d!1815845))

(declare-fun condSetEmpty!38713 () Bool)

(assert (=> setNonEmpty!38707 (= condSetEmpty!38713 (= setRest!38707 ((as const (Array Context!10318 Bool)) false)))))

(declare-fun setRes!38713 () Bool)

(assert (=> setNonEmpty!38707 (= tp!1592839 setRes!38713)))

(declare-fun setIsEmpty!38713 () Bool)

(assert (=> setIsEmpty!38713 setRes!38713))

(declare-fun setNonEmpty!38713 () Bool)

(declare-fun e!3541426 () Bool)

(declare-fun setElem!38713 () Context!10318)

(declare-fun tp!1592910 () Bool)

(assert (=> setNonEmpty!38713 (= setRes!38713 (and tp!1592910 (inv!82684 setElem!38713) e!3541426))))

(declare-fun setRest!38713 () (InoxSet Context!10318))

(assert (=> setNonEmpty!38713 (= setRest!38707 ((_ map or) (store ((as const (Array Context!10318 Bool)) false) setElem!38713 true) setRest!38713))))

(declare-fun b!5763928 () Bool)

(declare-fun tp!1592909 () Bool)

(assert (=> b!5763928 (= e!3541426 tp!1592909)))

(assert (= (and setNonEmpty!38707 condSetEmpty!38713) setIsEmpty!38713))

(assert (= (and setNonEmpty!38707 (not condSetEmpty!38713)) setNonEmpty!38713))

(assert (= setNonEmpty!38713 b!5763928))

(declare-fun m!6710438 () Bool)

(assert (=> setNonEmpty!38713 m!6710438))

(declare-fun b!5763941 () Bool)

(declare-fun e!3541429 () Bool)

(declare-fun tp!1592922 () Bool)

(assert (=> b!5763941 (= e!3541429 tp!1592922)))

(assert (=> b!5763160 (= tp!1592846 e!3541429)))

(declare-fun b!5763942 () Bool)

(declare-fun tp!1592925 () Bool)

(declare-fun tp!1592921 () Bool)

(assert (=> b!5763942 (= e!3541429 (and tp!1592925 tp!1592921))))

(declare-fun b!5763940 () Bool)

(declare-fun tp!1592924 () Bool)

(declare-fun tp!1592923 () Bool)

(assert (=> b!5763940 (= e!3541429 (and tp!1592924 tp!1592923))))

(declare-fun b!5763939 () Bool)

(assert (=> b!5763939 (= e!3541429 tp_is_empty!40803)))

(assert (= (and b!5763160 ((_ is ElementMatch!15775) (regOne!32062 r!7292))) b!5763939))

(assert (= (and b!5763160 ((_ is Concat!24620) (regOne!32062 r!7292))) b!5763940))

(assert (= (and b!5763160 ((_ is Star!15775) (regOne!32062 r!7292))) b!5763941))

(assert (= (and b!5763160 ((_ is Union!15775) (regOne!32062 r!7292))) b!5763942))

(declare-fun b!5763945 () Bool)

(declare-fun e!3541430 () Bool)

(declare-fun tp!1592927 () Bool)

(assert (=> b!5763945 (= e!3541430 tp!1592927)))

(assert (=> b!5763160 (= tp!1592844 e!3541430)))

(declare-fun b!5763946 () Bool)

(declare-fun tp!1592930 () Bool)

(declare-fun tp!1592926 () Bool)

(assert (=> b!5763946 (= e!3541430 (and tp!1592930 tp!1592926))))

(declare-fun b!5763944 () Bool)

(declare-fun tp!1592929 () Bool)

(declare-fun tp!1592928 () Bool)

(assert (=> b!5763944 (= e!3541430 (and tp!1592929 tp!1592928))))

(declare-fun b!5763943 () Bool)

(assert (=> b!5763943 (= e!3541430 tp_is_empty!40803)))

(assert (= (and b!5763160 ((_ is ElementMatch!15775) (regTwo!32062 r!7292))) b!5763943))

(assert (= (and b!5763160 ((_ is Concat!24620) (regTwo!32062 r!7292))) b!5763944))

(assert (= (and b!5763160 ((_ is Star!15775) (regTwo!32062 r!7292))) b!5763945))

(assert (= (and b!5763160 ((_ is Union!15775) (regTwo!32062 r!7292))) b!5763946))

(declare-fun b!5763949 () Bool)

(declare-fun e!3541431 () Bool)

(declare-fun tp!1592932 () Bool)

(assert (=> b!5763949 (= e!3541431 tp!1592932)))

(assert (=> b!5763165 (= tp!1592842 e!3541431)))

(declare-fun b!5763950 () Bool)

(declare-fun tp!1592935 () Bool)

(declare-fun tp!1592931 () Bool)

(assert (=> b!5763950 (= e!3541431 (and tp!1592935 tp!1592931))))

(declare-fun b!5763948 () Bool)

(declare-fun tp!1592934 () Bool)

(declare-fun tp!1592933 () Bool)

(assert (=> b!5763948 (= e!3541431 (and tp!1592934 tp!1592933))))

(declare-fun b!5763947 () Bool)

(assert (=> b!5763947 (= e!3541431 tp_is_empty!40803)))

(assert (= (and b!5763165 ((_ is ElementMatch!15775) (regOne!32063 r!7292))) b!5763947))

(assert (= (and b!5763165 ((_ is Concat!24620) (regOne!32063 r!7292))) b!5763948))

(assert (= (and b!5763165 ((_ is Star!15775) (regOne!32063 r!7292))) b!5763949))

(assert (= (and b!5763165 ((_ is Union!15775) (regOne!32063 r!7292))) b!5763950))

(declare-fun b!5763953 () Bool)

(declare-fun e!3541432 () Bool)

(declare-fun tp!1592937 () Bool)

(assert (=> b!5763953 (= e!3541432 tp!1592937)))

(assert (=> b!5763165 (= tp!1592837 e!3541432)))

(declare-fun b!5763954 () Bool)

(declare-fun tp!1592940 () Bool)

(declare-fun tp!1592936 () Bool)

(assert (=> b!5763954 (= e!3541432 (and tp!1592940 tp!1592936))))

(declare-fun b!5763952 () Bool)

(declare-fun tp!1592939 () Bool)

(declare-fun tp!1592938 () Bool)

(assert (=> b!5763952 (= e!3541432 (and tp!1592939 tp!1592938))))

(declare-fun b!5763951 () Bool)

(assert (=> b!5763951 (= e!3541432 tp_is_empty!40803)))

(assert (= (and b!5763165 ((_ is ElementMatch!15775) (regTwo!32063 r!7292))) b!5763951))

(assert (= (and b!5763165 ((_ is Concat!24620) (regTwo!32063 r!7292))) b!5763952))

(assert (= (and b!5763165 ((_ is Star!15775) (regTwo!32063 r!7292))) b!5763953))

(assert (= (and b!5763165 ((_ is Union!15775) (regTwo!32063 r!7292))) b!5763954))

(declare-fun b!5763957 () Bool)

(declare-fun e!3541433 () Bool)

(declare-fun tp!1592942 () Bool)

(assert (=> b!5763957 (= e!3541433 tp!1592942)))

(assert (=> b!5763159 (= tp!1592838 e!3541433)))

(declare-fun b!5763958 () Bool)

(declare-fun tp!1592945 () Bool)

(declare-fun tp!1592941 () Bool)

(assert (=> b!5763958 (= e!3541433 (and tp!1592945 tp!1592941))))

(declare-fun b!5763956 () Bool)

(declare-fun tp!1592944 () Bool)

(declare-fun tp!1592943 () Bool)

(assert (=> b!5763956 (= e!3541433 (and tp!1592944 tp!1592943))))

(declare-fun b!5763955 () Bool)

(assert (=> b!5763955 (= e!3541433 tp_is_empty!40803)))

(assert (= (and b!5763159 ((_ is ElementMatch!15775) (reg!16104 r!7292))) b!5763955))

(assert (= (and b!5763159 ((_ is Concat!24620) (reg!16104 r!7292))) b!5763956))

(assert (= (and b!5763159 ((_ is Star!15775) (reg!16104 r!7292))) b!5763957))

(assert (= (and b!5763159 ((_ is Union!15775) (reg!16104 r!7292))) b!5763958))

(declare-fun b!5763963 () Bool)

(declare-fun e!3541436 () Bool)

(declare-fun tp!1592950 () Bool)

(declare-fun tp!1592951 () Bool)

(assert (=> b!5763963 (= e!3541436 (and tp!1592950 tp!1592951))))

(assert (=> b!5763149 (= tp!1592843 e!3541436)))

(assert (= (and b!5763149 ((_ is Cons!63501) (exprs!5659 setElem!38707))) b!5763963))

(declare-fun b!5763964 () Bool)

(declare-fun e!3541437 () Bool)

(declare-fun tp!1592952 () Bool)

(declare-fun tp!1592953 () Bool)

(assert (=> b!5763964 (= e!3541437 (and tp!1592952 tp!1592953))))

(assert (=> b!5763153 (= tp!1592840 e!3541437)))

(assert (= (and b!5763153 ((_ is Cons!63501) (exprs!5659 (h!69950 zl!343)))) b!5763964))

(declare-fun b!5763969 () Bool)

(declare-fun e!3541440 () Bool)

(declare-fun tp!1592956 () Bool)

(assert (=> b!5763969 (= e!3541440 (and tp_is_empty!40803 tp!1592956))))

(assert (=> b!5763172 (= tp!1592845 e!3541440)))

(assert (= (and b!5763172 ((_ is Cons!63500) (t!376958 s!2326))) b!5763969))

(declare-fun b!5763977 () Bool)

(declare-fun e!3541446 () Bool)

(declare-fun tp!1592961 () Bool)

(assert (=> b!5763977 (= e!3541446 tp!1592961)))

(declare-fun tp!1592962 () Bool)

(declare-fun e!3541445 () Bool)

(declare-fun b!5763976 () Bool)

(assert (=> b!5763976 (= e!3541445 (and (inv!82684 (h!69950 (t!376960 zl!343))) e!3541446 tp!1592962))))

(assert (=> b!5763162 (= tp!1592841 e!3541445)))

(assert (= b!5763976 b!5763977))

(assert (= (and b!5763162 ((_ is Cons!63502) (t!376960 zl!343))) b!5763976))

(declare-fun m!6710440 () Bool)

(assert (=> b!5763976 m!6710440))

(declare-fun b_lambda!217595 () Bool)

(assert (= b_lambda!217587 (or b!5763167 b_lambda!217595)))

(declare-fun bs!1351787 () Bool)

(declare-fun d!1815847 () Bool)

(assert (= bs!1351787 (and d!1815847 b!5763167)))

(assert (=> bs!1351787 (= (dynLambda!24857 lambda!312917 (h!69950 zl!343)) (derivationStepZipperUp!1043 (h!69950 zl!343) (h!69948 s!2326)))))

(assert (=> bs!1351787 m!6709910))

(assert (=> d!1815775 d!1815847))

(declare-fun b_lambda!217597 () Bool)

(assert (= b_lambda!217593 (or b!5763167 b_lambda!217597)))

(declare-fun bs!1351788 () Bool)

(declare-fun d!1815849 () Bool)

(assert (= bs!1351788 (and d!1815849 b!5763167)))

(assert (=> bs!1351788 (= (dynLambda!24857 lambda!312917 lt!2289027) (derivationStepZipperUp!1043 lt!2289027 (h!69948 s!2326)))))

(assert (=> bs!1351788 m!6709916))

(assert (=> d!1815835 d!1815849))

(check-sat (not b!5763919) (not setNonEmpty!38713) (not b!5763379) (not d!1815709) (not b!5763949) (not bs!1351788) (not b!5763822) (not b!5763458) (not bm!442544) (not b_lambda!217597) (not b!5763375) (not b!5763858) (not b!5763718) (not b!5763759) (not bm!442571) (not b!5763839) (not d!1815775) (not b!5763976) (not b!5763945) (not b!5763814) (not b!5763860) (not b!5763764) (not b!5763946) (not b!5763831) (not b!5763796) (not b!5763381) (not b!5763760) (not bs!1351787) (not bm!442549) (not d!1815839) (not b!5763283) (not b!5763941) (not b_lambda!217595) (not b!5763615) (not bm!442563) (not d!1815803) (not bm!442539) (not bm!442560) (not b!5763768) (not b!5763914) (not d!1815795) (not d!1815723) (not b!5763765) (not b!5763928) (not bm!442561) (not b!5763953) (not b!5763916) (not d!1815827) (not b!5763382) (not b!5763791) (not bm!442548) (not d!1815777) (not d!1815805) (not b!5763817) (not bm!442559) (not b!5763847) (not d!1815737) (not d!1815691) (not d!1815769) (not d!1815845) (not d!1815793) (not b!5763830) (not b!5763957) (not d!1815697) (not b!5763942) (not bm!442572) (not b!5763380) (not b!5763861) (not b!5763915) (not d!1815811) (not d!1815825) (not b!5763954) (not d!1815743) (not b!5763952) (not b!5763459) (not b!5763627) (not bm!442547) (not d!1815801) (not bm!442558) (not b!5763948) (not bm!442541) (not d!1815833) (not b!5763762) (not b!5763950) (not b!5763574) (not b!5763789) (not b!5763614) (not d!1815717) (not b!5763383) (not b!5763609) (not b!5763723) (not b!5763855) (not d!1815819) (not d!1815809) (not b!5763282) (not bm!442564) (not b!5763836) (not b!5763439) (not bm!442554) (not d!1815841) (not d!1815807) (not b!5763944) (not d!1815821) (not bm!442555) (not bm!442562) (not b!5763958) (not b!5763377) (not b!5763940) (not b!5763457) (not b!5763813) (not b!5763920) tp_is_empty!40803 (not b!5763922) (not b!5763969) (not b!5763956) (not d!1815797) (not d!1815829) (not b!5763864) (not b!5763790) (not d!1815799) (not d!1815831) (not d!1815835) (not b!5763856) (not b!5763795) (not b!5763793) (not b!5763610) (not b!5763628) (not d!1815815) (not b!5763833) (not b!5763812) (not b!5763835) (not b!5763963) (not b!5763977) (not b!5763842) (not b!5763918) (not b!5763889) (not b!5763964))
(check-sat)
(get-model)

(declare-fun d!1816083 () Bool)

(declare-fun res!2432819 () Bool)

(declare-fun e!3541784 () Bool)

(assert (=> d!1816083 (=> res!2432819 e!3541784)))

(assert (=> d!1816083 (= res!2432819 ((_ is ElementMatch!15775) lt!2289059))))

(assert (=> d!1816083 (= (validRegex!7511 lt!2289059) e!3541784)))

(declare-fun b!5764566 () Bool)

(declare-fun e!3541779 () Bool)

(declare-fun call!442679 () Bool)

(assert (=> b!5764566 (= e!3541779 call!442679)))

(declare-fun b!5764567 () Bool)

(declare-fun e!3541781 () Bool)

(declare-fun e!3541783 () Bool)

(assert (=> b!5764567 (= e!3541781 e!3541783)))

(declare-fun res!2432817 () Bool)

(assert (=> b!5764567 (=> (not res!2432817) (not e!3541783))))

(declare-fun call!442680 () Bool)

(assert (=> b!5764567 (= res!2432817 call!442680)))

(declare-fun c!1019002 () Bool)

(declare-fun c!1019003 () Bool)

(declare-fun call!442681 () Bool)

(declare-fun bm!442674 () Bool)

(assert (=> bm!442674 (= call!442681 (validRegex!7511 (ite c!1019002 (reg!16104 lt!2289059) (ite c!1019003 (regOne!32063 lt!2289059) (regOne!32062 lt!2289059)))))))

(declare-fun b!5764568 () Bool)

(assert (=> b!5764568 (= e!3541783 call!442679)))

(declare-fun b!5764569 () Bool)

(declare-fun e!3541782 () Bool)

(assert (=> b!5764569 (= e!3541782 call!442681)))

(declare-fun b!5764570 () Bool)

(declare-fun e!3541780 () Bool)

(assert (=> b!5764570 (= e!3541780 e!3541782)))

(declare-fun res!2432821 () Bool)

(assert (=> b!5764570 (= res!2432821 (not (nullable!5807 (reg!16104 lt!2289059))))))

(assert (=> b!5764570 (=> (not res!2432821) (not e!3541782))))

(declare-fun b!5764571 () Bool)

(declare-fun res!2432818 () Bool)

(assert (=> b!5764571 (=> (not res!2432818) (not e!3541779))))

(assert (=> b!5764571 (= res!2432818 call!442680)))

(declare-fun e!3541785 () Bool)

(assert (=> b!5764571 (= e!3541785 e!3541779)))

(declare-fun b!5764572 () Bool)

(assert (=> b!5764572 (= e!3541784 e!3541780)))

(assert (=> b!5764572 (= c!1019002 ((_ is Star!15775) lt!2289059))))

(declare-fun bm!442675 () Bool)

(assert (=> bm!442675 (= call!442679 (validRegex!7511 (ite c!1019003 (regTwo!32063 lt!2289059) (regTwo!32062 lt!2289059))))))

(declare-fun b!5764573 () Bool)

(assert (=> b!5764573 (= e!3541780 e!3541785)))

(assert (=> b!5764573 (= c!1019003 ((_ is Union!15775) lt!2289059))))

(declare-fun bm!442676 () Bool)

(assert (=> bm!442676 (= call!442680 call!442681)))

(declare-fun b!5764574 () Bool)

(declare-fun res!2432820 () Bool)

(assert (=> b!5764574 (=> res!2432820 e!3541781)))

(assert (=> b!5764574 (= res!2432820 (not ((_ is Concat!24620) lt!2289059)))))

(assert (=> b!5764574 (= e!3541785 e!3541781)))

(assert (= (and d!1816083 (not res!2432819)) b!5764572))

(assert (= (and b!5764572 c!1019002) b!5764570))

(assert (= (and b!5764572 (not c!1019002)) b!5764573))

(assert (= (and b!5764570 res!2432821) b!5764569))

(assert (= (and b!5764573 c!1019003) b!5764571))

(assert (= (and b!5764573 (not c!1019003)) b!5764574))

(assert (= (and b!5764571 res!2432818) b!5764566))

(assert (= (and b!5764574 (not res!2432820)) b!5764567))

(assert (= (and b!5764567 res!2432817) b!5764568))

(assert (= (or b!5764566 b!5764568) bm!442675))

(assert (= (or b!5764571 b!5764567) bm!442676))

(assert (= (or b!5764569 bm!442676) bm!442674))

(declare-fun m!6710918 () Bool)

(assert (=> bm!442674 m!6710918))

(declare-fun m!6710920 () Bool)

(assert (=> b!5764570 m!6710920))

(declare-fun m!6710922 () Bool)

(assert (=> bm!442675 m!6710922))

(assert (=> d!1815717 d!1816083))

(declare-fun d!1816085 () Bool)

(declare-fun res!2432826 () Bool)

(declare-fun e!3541790 () Bool)

(assert (=> d!1816085 (=> res!2432826 e!3541790)))

(assert (=> d!1816085 (= res!2432826 ((_ is Nil!63501) (unfocusZipperList!1203 zl!343)))))

(assert (=> d!1816085 (= (forall!14893 (unfocusZipperList!1203 zl!343) lambda!312941) e!3541790)))

(declare-fun b!5764579 () Bool)

(declare-fun e!3541791 () Bool)

(assert (=> b!5764579 (= e!3541790 e!3541791)))

(declare-fun res!2432827 () Bool)

(assert (=> b!5764579 (=> (not res!2432827) (not e!3541791))))

(declare-fun dynLambda!24859 (Int Regex!15775) Bool)

(assert (=> b!5764579 (= res!2432827 (dynLambda!24859 lambda!312941 (h!69949 (unfocusZipperList!1203 zl!343))))))

(declare-fun b!5764580 () Bool)

(assert (=> b!5764580 (= e!3541791 (forall!14893 (t!376959 (unfocusZipperList!1203 zl!343)) lambda!312941))))

(assert (= (and d!1816085 (not res!2432826)) b!5764579))

(assert (= (and b!5764579 res!2432827) b!5764580))

(declare-fun b_lambda!217627 () Bool)

(assert (=> (not b_lambda!217627) (not b!5764579)))

(declare-fun m!6710924 () Bool)

(assert (=> b!5764579 m!6710924))

(declare-fun m!6710926 () Bool)

(assert (=> b!5764580 m!6710926))

(assert (=> d!1815717 d!1816085))

(declare-fun b!5764581 () Bool)

(declare-fun res!2432830 () Bool)

(declare-fun e!3541797 () Bool)

(assert (=> b!5764581 (=> res!2432830 e!3541797)))

(declare-fun e!3541795 () Bool)

(assert (=> b!5764581 (= res!2432830 e!3541795)))

(declare-fun res!2432833 () Bool)

(assert (=> b!5764581 (=> (not res!2432833) (not e!3541795))))

(declare-fun lt!2289156 () Bool)

(assert (=> b!5764581 (= res!2432833 lt!2289156)))

(declare-fun b!5764583 () Bool)

(declare-fun e!3541793 () Bool)

(assert (=> b!5764583 (= e!3541793 (matchR!7960 (derivativeStep!4556 (derivativeStep!4556 r!7292 (head!12186 s!2326)) (head!12186 (tail!11281 s!2326))) (tail!11281 (tail!11281 s!2326))))))

(declare-fun b!5764584 () Bool)

(assert (=> b!5764584 (= e!3541795 (= (head!12186 (tail!11281 s!2326)) (c!1018649 (derivativeStep!4556 r!7292 (head!12186 s!2326)))))))

(declare-fun b!5764585 () Bool)

(declare-fun e!3541792 () Bool)

(assert (=> b!5764585 (= e!3541792 (not lt!2289156))))

(declare-fun b!5764586 () Bool)

(declare-fun e!3541794 () Bool)

(assert (=> b!5764586 (= e!3541794 (not (= (head!12186 (tail!11281 s!2326)) (c!1018649 (derivativeStep!4556 r!7292 (head!12186 s!2326))))))))

(declare-fun b!5764587 () Bool)

(declare-fun res!2432832 () Bool)

(assert (=> b!5764587 (=> (not res!2432832) (not e!3541795))))

(declare-fun call!442682 () Bool)

(assert (=> b!5764587 (= res!2432832 (not call!442682))))

(declare-fun bm!442677 () Bool)

(assert (=> bm!442677 (= call!442682 (isEmpty!35392 (tail!11281 s!2326)))))

(declare-fun b!5764582 () Bool)

(declare-fun res!2432829 () Bool)

(assert (=> b!5764582 (=> res!2432829 e!3541797)))

(assert (=> b!5764582 (= res!2432829 (not ((_ is ElementMatch!15775) (derivativeStep!4556 r!7292 (head!12186 s!2326)))))))

(assert (=> b!5764582 (= e!3541792 e!3541797)))

(declare-fun d!1816087 () Bool)

(declare-fun e!3541798 () Bool)

(assert (=> d!1816087 e!3541798))

(declare-fun c!1019006 () Bool)

(assert (=> d!1816087 (= c!1019006 ((_ is EmptyExpr!15775) (derivativeStep!4556 r!7292 (head!12186 s!2326))))))

(assert (=> d!1816087 (= lt!2289156 e!3541793)))

(declare-fun c!1019005 () Bool)

(assert (=> d!1816087 (= c!1019005 (isEmpty!35392 (tail!11281 s!2326)))))

(assert (=> d!1816087 (validRegex!7511 (derivativeStep!4556 r!7292 (head!12186 s!2326)))))

(assert (=> d!1816087 (= (matchR!7960 (derivativeStep!4556 r!7292 (head!12186 s!2326)) (tail!11281 s!2326)) lt!2289156)))

(declare-fun b!5764588 () Bool)

(declare-fun res!2432834 () Bool)

(assert (=> b!5764588 (=> res!2432834 e!3541794)))

(assert (=> b!5764588 (= res!2432834 (not (isEmpty!35392 (tail!11281 (tail!11281 s!2326)))))))

(declare-fun b!5764589 () Bool)

(assert (=> b!5764589 (= e!3541793 (nullable!5807 (derivativeStep!4556 r!7292 (head!12186 s!2326))))))

(declare-fun b!5764590 () Bool)

(declare-fun e!3541796 () Bool)

(assert (=> b!5764590 (= e!3541796 e!3541794)))

(declare-fun res!2432835 () Bool)

(assert (=> b!5764590 (=> res!2432835 e!3541794)))

(assert (=> b!5764590 (= res!2432835 call!442682)))

(declare-fun b!5764591 () Bool)

(assert (=> b!5764591 (= e!3541798 e!3541792)))

(declare-fun c!1019004 () Bool)

(assert (=> b!5764591 (= c!1019004 ((_ is EmptyLang!15775) (derivativeStep!4556 r!7292 (head!12186 s!2326))))))

(declare-fun b!5764592 () Bool)

(declare-fun res!2432831 () Bool)

(assert (=> b!5764592 (=> (not res!2432831) (not e!3541795))))

(assert (=> b!5764592 (= res!2432831 (isEmpty!35392 (tail!11281 (tail!11281 s!2326))))))

(declare-fun b!5764593 () Bool)

(assert (=> b!5764593 (= e!3541798 (= lt!2289156 call!442682))))

(declare-fun b!5764594 () Bool)

(assert (=> b!5764594 (= e!3541797 e!3541796)))

(declare-fun res!2432828 () Bool)

(assert (=> b!5764594 (=> (not res!2432828) (not e!3541796))))

(assert (=> b!5764594 (= res!2432828 (not lt!2289156))))

(assert (= (and d!1816087 c!1019005) b!5764589))

(assert (= (and d!1816087 (not c!1019005)) b!5764583))

(assert (= (and d!1816087 c!1019006) b!5764593))

(assert (= (and d!1816087 (not c!1019006)) b!5764591))

(assert (= (and b!5764591 c!1019004) b!5764585))

(assert (= (and b!5764591 (not c!1019004)) b!5764582))

(assert (= (and b!5764582 (not res!2432829)) b!5764581))

(assert (= (and b!5764581 res!2432833) b!5764587))

(assert (= (and b!5764587 res!2432832) b!5764592))

(assert (= (and b!5764592 res!2432831) b!5764584))

(assert (= (and b!5764581 (not res!2432830)) b!5764594))

(assert (= (and b!5764594 res!2432828) b!5764590))

(assert (= (and b!5764590 (not res!2432835)) b!5764588))

(assert (= (and b!5764588 (not res!2432834)) b!5764586))

(assert (= (or b!5764593 b!5764587 b!5764590) bm!442677))

(assert (=> b!5764586 m!6710312))

(declare-fun m!6710928 () Bool)

(assert (=> b!5764586 m!6710928))

(assert (=> b!5764584 m!6710312))

(assert (=> b!5764584 m!6710928))

(assert (=> b!5764583 m!6710312))

(assert (=> b!5764583 m!6710928))

(assert (=> b!5764583 m!6710310))

(assert (=> b!5764583 m!6710928))

(declare-fun m!6710930 () Bool)

(assert (=> b!5764583 m!6710930))

(assert (=> b!5764583 m!6710312))

(declare-fun m!6710932 () Bool)

(assert (=> b!5764583 m!6710932))

(assert (=> b!5764583 m!6710930))

(assert (=> b!5764583 m!6710932))

(declare-fun m!6710934 () Bool)

(assert (=> b!5764583 m!6710934))

(assert (=> b!5764588 m!6710312))

(assert (=> b!5764588 m!6710932))

(assert (=> b!5764588 m!6710932))

(declare-fun m!6710936 () Bool)

(assert (=> b!5764588 m!6710936))

(assert (=> d!1816087 m!6710312))

(assert (=> d!1816087 m!6710316))

(assert (=> d!1816087 m!6710310))

(declare-fun m!6710938 () Bool)

(assert (=> d!1816087 m!6710938))

(assert (=> bm!442677 m!6710312))

(assert (=> bm!442677 m!6710316))

(assert (=> b!5764592 m!6710312))

(assert (=> b!5764592 m!6710932))

(assert (=> b!5764592 m!6710932))

(assert (=> b!5764592 m!6710936))

(assert (=> b!5764589 m!6710310))

(declare-fun m!6710940 () Bool)

(assert (=> b!5764589 m!6710940))

(assert (=> b!5763759 d!1816087))

(declare-fun b!5764615 () Bool)

(declare-fun e!3541813 () Regex!15775)

(declare-fun e!3541811 () Regex!15775)

(assert (=> b!5764615 (= e!3541813 e!3541811)))

(declare-fun c!1019021 () Bool)

(assert (=> b!5764615 (= c!1019021 ((_ is Star!15775) r!7292))))

(declare-fun bm!442687 () Bool)

(declare-fun call!442694 () Regex!15775)

(declare-fun c!1019018 () Bool)

(assert (=> bm!442687 (= call!442694 (derivativeStep!4556 (ite c!1019018 (regTwo!32063 r!7292) (ite c!1019021 (reg!16104 r!7292) (regOne!32062 r!7292))) (head!12186 s!2326)))))

(declare-fun bm!442688 () Bool)

(declare-fun call!442691 () Regex!15775)

(declare-fun call!442693 () Regex!15775)

(assert (=> bm!442688 (= call!442691 call!442693)))

(declare-fun b!5764616 () Bool)

(assert (=> b!5764616 (= e!3541813 (Union!15775 call!442693 call!442694))))

(declare-fun b!5764617 () Bool)

(assert (=> b!5764617 (= c!1019018 ((_ is Union!15775) r!7292))))

(declare-fun e!3541809 () Regex!15775)

(assert (=> b!5764617 (= e!3541809 e!3541813)))

(declare-fun b!5764618 () Bool)

(assert (=> b!5764618 (= e!3541809 (ite (= (head!12186 s!2326) (c!1018649 r!7292)) EmptyExpr!15775 EmptyLang!15775))))

(declare-fun b!5764619 () Bool)

(declare-fun e!3541810 () Regex!15775)

(declare-fun call!442692 () Regex!15775)

(assert (=> b!5764619 (= e!3541810 (Union!15775 (Concat!24620 call!442692 (regTwo!32062 r!7292)) call!442691))))

(declare-fun bm!442689 () Bool)

(assert (=> bm!442689 (= call!442692 call!442694)))

(declare-fun b!5764620 () Bool)

(assert (=> b!5764620 (= e!3541810 (Union!15775 (Concat!24620 call!442691 (regTwo!32062 r!7292)) EmptyLang!15775))))

(declare-fun d!1816089 () Bool)

(declare-fun lt!2289159 () Regex!15775)

(assert (=> d!1816089 (validRegex!7511 lt!2289159)))

(declare-fun e!3541812 () Regex!15775)

(assert (=> d!1816089 (= lt!2289159 e!3541812)))

(declare-fun c!1019019 () Bool)

(assert (=> d!1816089 (= c!1019019 (or ((_ is EmptyExpr!15775) r!7292) ((_ is EmptyLang!15775) r!7292)))))

(assert (=> d!1816089 (validRegex!7511 r!7292)))

(assert (=> d!1816089 (= (derivativeStep!4556 r!7292 (head!12186 s!2326)) lt!2289159)))

(declare-fun c!1019020 () Bool)

(declare-fun bm!442686 () Bool)

(assert (=> bm!442686 (= call!442693 (derivativeStep!4556 (ite c!1019018 (regOne!32063 r!7292) (ite c!1019020 (regTwo!32062 r!7292) (regOne!32062 r!7292))) (head!12186 s!2326)))))

(declare-fun b!5764621 () Bool)

(assert (=> b!5764621 (= e!3541812 EmptyLang!15775)))

(declare-fun b!5764622 () Bool)

(assert (=> b!5764622 (= e!3541812 e!3541809)))

(declare-fun c!1019017 () Bool)

(assert (=> b!5764622 (= c!1019017 ((_ is ElementMatch!15775) r!7292))))

(declare-fun b!5764623 () Bool)

(assert (=> b!5764623 (= e!3541811 (Concat!24620 call!442692 r!7292))))

(declare-fun b!5764624 () Bool)

(assert (=> b!5764624 (= c!1019020 (nullable!5807 (regOne!32062 r!7292)))))

(assert (=> b!5764624 (= e!3541811 e!3541810)))

(assert (= (and d!1816089 c!1019019) b!5764621))

(assert (= (and d!1816089 (not c!1019019)) b!5764622))

(assert (= (and b!5764622 c!1019017) b!5764618))

(assert (= (and b!5764622 (not c!1019017)) b!5764617))

(assert (= (and b!5764617 c!1019018) b!5764616))

(assert (= (and b!5764617 (not c!1019018)) b!5764615))

(assert (= (and b!5764615 c!1019021) b!5764623))

(assert (= (and b!5764615 (not c!1019021)) b!5764624))

(assert (= (and b!5764624 c!1019020) b!5764619))

(assert (= (and b!5764624 (not c!1019020)) b!5764620))

(assert (= (or b!5764619 b!5764620) bm!442688))

(assert (= (or b!5764623 b!5764619) bm!442689))

(assert (= (or b!5764616 bm!442689) bm!442687))

(assert (= (or b!5764616 bm!442688) bm!442686))

(assert (=> bm!442687 m!6710308))

(declare-fun m!6710942 () Bool)

(assert (=> bm!442687 m!6710942))

(declare-fun m!6710944 () Bool)

(assert (=> d!1816089 m!6710944))

(assert (=> d!1816089 m!6709968))

(assert (=> bm!442686 m!6710308))

(declare-fun m!6710946 () Bool)

(assert (=> bm!442686 m!6710946))

(assert (=> b!5764624 m!6710382))

(assert (=> b!5763759 d!1816089))

(declare-fun d!1816091 () Bool)

(assert (=> d!1816091 (= (head!12186 s!2326) (h!69948 s!2326))))

(assert (=> b!5763759 d!1816091))

(declare-fun d!1816093 () Bool)

(assert (=> d!1816093 (= (tail!11281 s!2326) (t!376958 s!2326))))

(assert (=> b!5763759 d!1816093))

(declare-fun d!1816095 () Bool)

(assert (=> d!1816095 (= (isEmpty!35389 (t!376959 (unfocusZipperList!1203 zl!343))) ((_ is Nil!63501) (t!376959 (unfocusZipperList!1203 zl!343))))))

(assert (=> b!5763381 d!1816095))

(declare-fun d!1816097 () Bool)

(assert (=> d!1816097 (= (isEmpty!35392 s!2326) ((_ is Nil!63500) s!2326))))

(assert (=> d!1815825 d!1816097))

(declare-fun d!1816099 () Bool)

(declare-fun res!2432838 () Bool)

(declare-fun e!3541819 () Bool)

(assert (=> d!1816099 (=> res!2432838 e!3541819)))

(assert (=> d!1816099 (= res!2432838 ((_ is ElementMatch!15775) (regTwo!32062 r!7292)))))

(assert (=> d!1816099 (= (validRegex!7511 (regTwo!32062 r!7292)) e!3541819)))

(declare-fun b!5764625 () Bool)

(declare-fun e!3541814 () Bool)

(declare-fun call!442695 () Bool)

(assert (=> b!5764625 (= e!3541814 call!442695)))

(declare-fun b!5764626 () Bool)

(declare-fun e!3541816 () Bool)

(declare-fun e!3541818 () Bool)

(assert (=> b!5764626 (= e!3541816 e!3541818)))

(declare-fun res!2432836 () Bool)

(assert (=> b!5764626 (=> (not res!2432836) (not e!3541818))))

(declare-fun call!442696 () Bool)

(assert (=> b!5764626 (= res!2432836 call!442696)))

(declare-fun c!1019022 () Bool)

(declare-fun bm!442690 () Bool)

(declare-fun call!442697 () Bool)

(declare-fun c!1019023 () Bool)

(assert (=> bm!442690 (= call!442697 (validRegex!7511 (ite c!1019022 (reg!16104 (regTwo!32062 r!7292)) (ite c!1019023 (regOne!32063 (regTwo!32062 r!7292)) (regOne!32062 (regTwo!32062 r!7292))))))))

(declare-fun b!5764627 () Bool)

(assert (=> b!5764627 (= e!3541818 call!442695)))

(declare-fun b!5764628 () Bool)

(declare-fun e!3541817 () Bool)

(assert (=> b!5764628 (= e!3541817 call!442697)))

(declare-fun b!5764629 () Bool)

(declare-fun e!3541815 () Bool)

(assert (=> b!5764629 (= e!3541815 e!3541817)))

(declare-fun res!2432840 () Bool)

(assert (=> b!5764629 (= res!2432840 (not (nullable!5807 (reg!16104 (regTwo!32062 r!7292)))))))

(assert (=> b!5764629 (=> (not res!2432840) (not e!3541817))))

(declare-fun b!5764630 () Bool)

(declare-fun res!2432837 () Bool)

(assert (=> b!5764630 (=> (not res!2432837) (not e!3541814))))

(assert (=> b!5764630 (= res!2432837 call!442696)))

(declare-fun e!3541820 () Bool)

(assert (=> b!5764630 (= e!3541820 e!3541814)))

(declare-fun b!5764631 () Bool)

(assert (=> b!5764631 (= e!3541819 e!3541815)))

(assert (=> b!5764631 (= c!1019022 ((_ is Star!15775) (regTwo!32062 r!7292)))))

(declare-fun bm!442691 () Bool)

(assert (=> bm!442691 (= call!442695 (validRegex!7511 (ite c!1019023 (regTwo!32063 (regTwo!32062 r!7292)) (regTwo!32062 (regTwo!32062 r!7292)))))))

(declare-fun b!5764632 () Bool)

(assert (=> b!5764632 (= e!3541815 e!3541820)))

(assert (=> b!5764632 (= c!1019023 ((_ is Union!15775) (regTwo!32062 r!7292)))))

(declare-fun bm!442692 () Bool)

(assert (=> bm!442692 (= call!442696 call!442697)))

(declare-fun b!5764633 () Bool)

(declare-fun res!2432839 () Bool)

(assert (=> b!5764633 (=> res!2432839 e!3541816)))

(assert (=> b!5764633 (= res!2432839 (not ((_ is Concat!24620) (regTwo!32062 r!7292))))))

(assert (=> b!5764633 (= e!3541820 e!3541816)))

(assert (= (and d!1816099 (not res!2432838)) b!5764631))

(assert (= (and b!5764631 c!1019022) b!5764629))

(assert (= (and b!5764631 (not c!1019022)) b!5764632))

(assert (= (and b!5764629 res!2432840) b!5764628))

(assert (= (and b!5764632 c!1019023) b!5764630))

(assert (= (and b!5764632 (not c!1019023)) b!5764633))

(assert (= (and b!5764630 res!2432837) b!5764625))

(assert (= (and b!5764633 (not res!2432839)) b!5764626))

(assert (= (and b!5764626 res!2432836) b!5764627))

(assert (= (or b!5764625 b!5764627) bm!442691))

(assert (= (or b!5764630 b!5764626) bm!442692))

(assert (= (or b!5764628 bm!442692) bm!442690))

(declare-fun m!6710948 () Bool)

(assert (=> bm!442690 m!6710948))

(declare-fun m!6710950 () Bool)

(assert (=> b!5764629 m!6710950))

(declare-fun m!6710952 () Bool)

(assert (=> bm!442691 m!6710952))

(assert (=> d!1815825 d!1816099))

(declare-fun d!1816101 () Bool)

(assert (=> d!1816101 (= (isEmpty!35389 (exprs!5659 (h!69950 zl!343))) ((_ is Nil!63501) (exprs!5659 (h!69950 zl!343))))))

(assert (=> b!5763918 d!1816101))

(declare-fun d!1816103 () Bool)

(declare-fun c!1019026 () Bool)

(assert (=> d!1816103 (= c!1019026 ((_ is Nil!63502) lt!2289073))))

(declare-fun e!3541823 () (InoxSet Context!10318))

(assert (=> d!1816103 (= (content!11589 lt!2289073) e!3541823)))

(declare-fun b!5764638 () Bool)

(assert (=> b!5764638 (= e!3541823 ((as const (Array Context!10318 Bool)) false))))

(declare-fun b!5764639 () Bool)

(assert (=> b!5764639 (= e!3541823 ((_ map or) (store ((as const (Array Context!10318 Bool)) false) (h!69950 lt!2289073) true) (content!11589 (t!376960 lt!2289073))))))

(assert (= (and d!1816103 c!1019026) b!5764638))

(assert (= (and d!1816103 (not c!1019026)) b!5764639))

(declare-fun m!6710954 () Bool)

(assert (=> b!5764639 m!6710954))

(declare-fun m!6710956 () Bool)

(assert (=> b!5764639 m!6710956))

(assert (=> b!5763457 d!1816103))

(declare-fun bs!1352094 () Bool)

(declare-fun b!5764646 () Bool)

(assert (= bs!1352094 (and b!5764646 b!5763721)))

(declare-fun lambda!313024 () Int)

(assert (=> bs!1352094 (not (= lambda!313024 lambda!312968))))

(declare-fun bs!1352095 () Bool)

(assert (= bs!1352095 (and b!5764646 d!1815803)))

(assert (=> bs!1352095 (not (= lambda!313024 lambda!312971))))

(declare-fun bs!1352096 () Bool)

(assert (= bs!1352096 (and b!5764646 d!1815805)))

(assert (=> bs!1352096 (not (= lambda!313024 lambda!312976))))

(assert (=> bs!1352096 (not (= lambda!313024 lambda!312977))))

(declare-fun bs!1352097 () Bool)

(assert (= bs!1352097 (and b!5764646 b!5763152)))

(assert (=> bs!1352097 (not (= lambda!313024 lambda!312915))))

(declare-fun bs!1352098 () Bool)

(assert (= bs!1352098 (and b!5764646 b!5763724)))

(assert (=> bs!1352098 (= (and (= (reg!16104 (regOne!32063 (regOne!32062 r!7292))) (reg!16104 r!7292)) (= (regOne!32063 (regOne!32062 r!7292)) r!7292)) (= lambda!313024 lambda!312967))))

(assert (=> bs!1352097 (not (= lambda!313024 lambda!312916))))

(declare-fun bs!1352099 () Bool)

(assert (= bs!1352099 (and b!5764646 b!5763848)))

(assert (=> bs!1352099 (= (and (= (reg!16104 (regOne!32063 (regOne!32062 r!7292))) (reg!16104 (regTwo!32062 r!7292))) (= (regOne!32063 (regOne!32062 r!7292)) (regTwo!32062 r!7292))) (= lambda!313024 lambda!312983))))

(declare-fun bs!1352100 () Bool)

(assert (= bs!1352100 (and b!5764646 b!5763823)))

(assert (=> bs!1352100 (= (and (= (reg!16104 (regOne!32063 (regOne!32062 r!7292))) (reg!16104 (regOne!32062 r!7292))) (= (regOne!32063 (regOne!32062 r!7292)) (regOne!32062 r!7292))) (= lambda!313024 lambda!312981))))

(declare-fun bs!1352101 () Bool)

(assert (= bs!1352101 (and b!5764646 b!5763845)))

(assert (=> bs!1352101 (not (= lambda!313024 lambda!312984))))

(declare-fun bs!1352102 () Bool)

(assert (= bs!1352102 (and b!5764646 b!5763820)))

(assert (=> bs!1352102 (not (= lambda!313024 lambda!312982))))

(assert (=> b!5764646 true))

(assert (=> b!5764646 true))

(declare-fun bs!1352103 () Bool)

(declare-fun b!5764643 () Bool)

(assert (= bs!1352103 (and b!5764643 b!5763721)))

(declare-fun lambda!313025 () Int)

(assert (=> bs!1352103 (= (and (= (regOne!32062 (regOne!32063 (regOne!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regOne!32063 (regOne!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313025 lambda!312968))))

(declare-fun bs!1352104 () Bool)

(assert (= bs!1352104 (and b!5764643 d!1815803)))

(assert (=> bs!1352104 (not (= lambda!313025 lambda!312971))))

(declare-fun bs!1352105 () Bool)

(assert (= bs!1352105 (and b!5764643 d!1815805)))

(assert (=> bs!1352105 (not (= lambda!313025 lambda!312976))))

(assert (=> bs!1352105 (= (and (= (regOne!32062 (regOne!32063 (regOne!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regOne!32063 (regOne!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313025 lambda!312977))))

(declare-fun bs!1352106 () Bool)

(assert (= bs!1352106 (and b!5764643 b!5763152)))

(assert (=> bs!1352106 (not (= lambda!313025 lambda!312915))))

(declare-fun bs!1352107 () Bool)

(assert (= bs!1352107 (and b!5764643 b!5764646)))

(assert (=> bs!1352107 (not (= lambda!313025 lambda!313024))))

(declare-fun bs!1352108 () Bool)

(assert (= bs!1352108 (and b!5764643 b!5763724)))

(assert (=> bs!1352108 (not (= lambda!313025 lambda!312967))))

(assert (=> bs!1352106 (= (and (= (regOne!32062 (regOne!32063 (regOne!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regOne!32063 (regOne!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313025 lambda!312916))))

(declare-fun bs!1352109 () Bool)

(assert (= bs!1352109 (and b!5764643 b!5763848)))

(assert (=> bs!1352109 (not (= lambda!313025 lambda!312983))))

(declare-fun bs!1352110 () Bool)

(assert (= bs!1352110 (and b!5764643 b!5763823)))

(assert (=> bs!1352110 (not (= lambda!313025 lambda!312981))))

(declare-fun bs!1352111 () Bool)

(assert (= bs!1352111 (and b!5764643 b!5763845)))

(assert (=> bs!1352111 (= (and (= (regOne!32062 (regOne!32063 (regOne!32062 r!7292))) (regOne!32062 (regTwo!32062 r!7292))) (= (regTwo!32062 (regOne!32063 (regOne!32062 r!7292))) (regTwo!32062 (regTwo!32062 r!7292)))) (= lambda!313025 lambda!312984))))

(declare-fun bs!1352112 () Bool)

(assert (= bs!1352112 (and b!5764643 b!5763820)))

(assert (=> bs!1352112 (= (and (= (regOne!32062 (regOne!32063 (regOne!32062 r!7292))) (regOne!32062 (regOne!32062 r!7292))) (= (regTwo!32062 (regOne!32063 (regOne!32062 r!7292))) (regTwo!32062 (regOne!32062 r!7292)))) (= lambda!313025 lambda!312982))))

(assert (=> b!5764643 true))

(assert (=> b!5764643 true))

(declare-fun b!5764640 () Bool)

(declare-fun e!3541828 () Bool)

(assert (=> b!5764640 (= e!3541828 (matchRSpec!2878 (regTwo!32063 (regOne!32063 (regOne!32062 r!7292))) s!2326))))

(declare-fun b!5764641 () Bool)

(declare-fun e!3541826 () Bool)

(declare-fun e!3541824 () Bool)

(assert (=> b!5764641 (= e!3541826 e!3541824)))

(declare-fun c!1019029 () Bool)

(assert (=> b!5764641 (= c!1019029 ((_ is Star!15775) (regOne!32063 (regOne!32062 r!7292))))))

(declare-fun b!5764642 () Bool)

(declare-fun e!3541830 () Bool)

(declare-fun call!442699 () Bool)

(assert (=> b!5764642 (= e!3541830 call!442699)))

(declare-fun call!442698 () Bool)

(assert (=> b!5764643 (= e!3541824 call!442698)))

(declare-fun d!1816105 () Bool)

(declare-fun c!1019028 () Bool)

(assert (=> d!1816105 (= c!1019028 ((_ is EmptyExpr!15775) (regOne!32063 (regOne!32062 r!7292))))))

(assert (=> d!1816105 (= (matchRSpec!2878 (regOne!32063 (regOne!32062 r!7292)) s!2326) e!3541830)))

(declare-fun bm!442693 () Bool)

(assert (=> bm!442693 (= call!442698 (Exists!2875 (ite c!1019029 lambda!313024 lambda!313025)))))

(declare-fun b!5764644 () Bool)

(declare-fun e!3541825 () Bool)

(assert (=> b!5764644 (= e!3541825 (= s!2326 (Cons!63500 (c!1018649 (regOne!32063 (regOne!32062 r!7292))) Nil!63500)))))

(declare-fun b!5764645 () Bool)

(assert (=> b!5764645 (= e!3541826 e!3541828)))

(declare-fun res!2432843 () Bool)

(assert (=> b!5764645 (= res!2432843 (matchRSpec!2878 (regOne!32063 (regOne!32063 (regOne!32062 r!7292))) s!2326))))

(assert (=> b!5764645 (=> res!2432843 e!3541828)))

(declare-fun e!3541829 () Bool)

(assert (=> b!5764646 (= e!3541829 call!442698)))

(declare-fun b!5764647 () Bool)

(declare-fun c!1019030 () Bool)

(assert (=> b!5764647 (= c!1019030 ((_ is Union!15775) (regOne!32063 (regOne!32062 r!7292))))))

(assert (=> b!5764647 (= e!3541825 e!3541826)))

(declare-fun b!5764648 () Bool)

(declare-fun e!3541827 () Bool)

(assert (=> b!5764648 (= e!3541830 e!3541827)))

(declare-fun res!2432841 () Bool)

(assert (=> b!5764648 (= res!2432841 (not ((_ is EmptyLang!15775) (regOne!32063 (regOne!32062 r!7292)))))))

(assert (=> b!5764648 (=> (not res!2432841) (not e!3541827))))

(declare-fun bm!442694 () Bool)

(assert (=> bm!442694 (= call!442699 (isEmpty!35392 s!2326))))

(declare-fun b!5764649 () Bool)

(declare-fun res!2432842 () Bool)

(assert (=> b!5764649 (=> res!2432842 e!3541829)))

(assert (=> b!5764649 (= res!2432842 call!442699)))

(assert (=> b!5764649 (= e!3541824 e!3541829)))

(declare-fun b!5764650 () Bool)

(declare-fun c!1019027 () Bool)

(assert (=> b!5764650 (= c!1019027 ((_ is ElementMatch!15775) (regOne!32063 (regOne!32062 r!7292))))))

(assert (=> b!5764650 (= e!3541827 e!3541825)))

(assert (= (and d!1816105 c!1019028) b!5764642))

(assert (= (and d!1816105 (not c!1019028)) b!5764648))

(assert (= (and b!5764648 res!2432841) b!5764650))

(assert (= (and b!5764650 c!1019027) b!5764644))

(assert (= (and b!5764650 (not c!1019027)) b!5764647))

(assert (= (and b!5764647 c!1019030) b!5764645))

(assert (= (and b!5764647 (not c!1019030)) b!5764641))

(assert (= (and b!5764645 (not res!2432843)) b!5764640))

(assert (= (and b!5764641 c!1019029) b!5764649))

(assert (= (and b!5764641 (not c!1019029)) b!5764643))

(assert (= (and b!5764649 (not res!2432842)) b!5764646))

(assert (= (or b!5764646 b!5764643) bm!442693))

(assert (= (or b!5764642 b!5764649) bm!442694))

(declare-fun m!6710958 () Bool)

(assert (=> b!5764640 m!6710958))

(declare-fun m!6710960 () Bool)

(assert (=> bm!442693 m!6710960))

(declare-fun m!6710962 () Bool)

(assert (=> b!5764645 m!6710962))

(assert (=> bm!442694 m!6710306))

(assert (=> b!5763822 d!1816105))

(assert (=> bm!442560 d!1816097))

(assert (=> bm!442555 d!1816097))

(declare-fun d!1816107 () Bool)

(assert (=> d!1816107 true))

(assert (=> d!1816107 true))

(declare-fun res!2432846 () Bool)

(assert (=> d!1816107 (= (choose!43713 lambda!312915) res!2432846)))

(assert (=> d!1815801 d!1816107))

(declare-fun d!1816109 () Bool)

(declare-fun res!2432849 () Bool)

(declare-fun e!3541836 () Bool)

(assert (=> d!1816109 (=> res!2432849 e!3541836)))

(assert (=> d!1816109 (= res!2432849 ((_ is ElementMatch!15775) (ite c!1018849 (regTwo!32063 r!7292) (regTwo!32062 r!7292))))))

(assert (=> d!1816109 (= (validRegex!7511 (ite c!1018849 (regTwo!32063 r!7292) (regTwo!32062 r!7292))) e!3541836)))

(declare-fun b!5764651 () Bool)

(declare-fun e!3541831 () Bool)

(declare-fun call!442700 () Bool)

(assert (=> b!5764651 (= e!3541831 call!442700)))

(declare-fun b!5764652 () Bool)

(declare-fun e!3541833 () Bool)

(declare-fun e!3541835 () Bool)

(assert (=> b!5764652 (= e!3541833 e!3541835)))

(declare-fun res!2432847 () Bool)

(assert (=> b!5764652 (=> (not res!2432847) (not e!3541835))))

(declare-fun call!442701 () Bool)

(assert (=> b!5764652 (= res!2432847 call!442701)))

(declare-fun c!1019032 () Bool)

(declare-fun call!442702 () Bool)

(declare-fun bm!442695 () Bool)

(declare-fun c!1019031 () Bool)

(assert (=> bm!442695 (= call!442702 (validRegex!7511 (ite c!1019031 (reg!16104 (ite c!1018849 (regTwo!32063 r!7292) (regTwo!32062 r!7292))) (ite c!1019032 (regOne!32063 (ite c!1018849 (regTwo!32063 r!7292) (regTwo!32062 r!7292))) (regOne!32062 (ite c!1018849 (regTwo!32063 r!7292) (regTwo!32062 r!7292)))))))))

(declare-fun b!5764653 () Bool)

(assert (=> b!5764653 (= e!3541835 call!442700)))

(declare-fun b!5764654 () Bool)

(declare-fun e!3541834 () Bool)

(assert (=> b!5764654 (= e!3541834 call!442702)))

(declare-fun b!5764655 () Bool)

(declare-fun e!3541832 () Bool)

(assert (=> b!5764655 (= e!3541832 e!3541834)))

(declare-fun res!2432851 () Bool)

(assert (=> b!5764655 (= res!2432851 (not (nullable!5807 (reg!16104 (ite c!1018849 (regTwo!32063 r!7292) (regTwo!32062 r!7292))))))))

(assert (=> b!5764655 (=> (not res!2432851) (not e!3541834))))

(declare-fun b!5764656 () Bool)

(declare-fun res!2432848 () Bool)

(assert (=> b!5764656 (=> (not res!2432848) (not e!3541831))))

(assert (=> b!5764656 (= res!2432848 call!442701)))

(declare-fun e!3541837 () Bool)

(assert (=> b!5764656 (= e!3541837 e!3541831)))

(declare-fun b!5764657 () Bool)

(assert (=> b!5764657 (= e!3541836 e!3541832)))

(assert (=> b!5764657 (= c!1019031 ((_ is Star!15775) (ite c!1018849 (regTwo!32063 r!7292) (regTwo!32062 r!7292))))))

(declare-fun bm!442696 () Bool)

(assert (=> bm!442696 (= call!442700 (validRegex!7511 (ite c!1019032 (regTwo!32063 (ite c!1018849 (regTwo!32063 r!7292) (regTwo!32062 r!7292))) (regTwo!32062 (ite c!1018849 (regTwo!32063 r!7292) (regTwo!32062 r!7292))))))))

(declare-fun b!5764658 () Bool)

(assert (=> b!5764658 (= e!3541832 e!3541837)))

(assert (=> b!5764658 (= c!1019032 ((_ is Union!15775) (ite c!1018849 (regTwo!32063 r!7292) (regTwo!32062 r!7292))))))

(declare-fun bm!442697 () Bool)

(assert (=> bm!442697 (= call!442701 call!442702)))

(declare-fun b!5764659 () Bool)

(declare-fun res!2432850 () Bool)

(assert (=> b!5764659 (=> res!2432850 e!3541833)))

(assert (=> b!5764659 (= res!2432850 (not ((_ is Concat!24620) (ite c!1018849 (regTwo!32063 r!7292) (regTwo!32062 r!7292)))))))

(assert (=> b!5764659 (= e!3541837 e!3541833)))

(assert (= (and d!1816109 (not res!2432849)) b!5764657))

(assert (= (and b!5764657 c!1019031) b!5764655))

(assert (= (and b!5764657 (not c!1019031)) b!5764658))

(assert (= (and b!5764655 res!2432851) b!5764654))

(assert (= (and b!5764658 c!1019032) b!5764656))

(assert (= (and b!5764658 (not c!1019032)) b!5764659))

(assert (= (and b!5764656 res!2432848) b!5764651))

(assert (= (and b!5764659 (not res!2432850)) b!5764652))

(assert (= (and b!5764652 res!2432847) b!5764653))

(assert (= (or b!5764651 b!5764653) bm!442696))

(assert (= (or b!5764656 b!5764652) bm!442697))

(assert (= (or b!5764654 bm!442697) bm!442695))

(declare-fun m!6710964 () Bool)

(assert (=> bm!442695 m!6710964))

(declare-fun m!6710966 () Bool)

(assert (=> b!5764655 m!6710966))

(declare-fun m!6710968 () Bool)

(assert (=> bm!442696 m!6710968))

(assert (=> bm!442572 d!1816109))

(declare-fun d!1816111 () Bool)

(assert (=> d!1816111 (= (isDefined!12487 lt!2289109) (not (isEmpty!35394 lt!2289109)))))

(declare-fun bs!1352113 () Bool)

(assert (= bs!1352113 d!1816111))

(declare-fun m!6710970 () Bool)

(assert (=> bs!1352113 m!6710970))

(assert (=> d!1815797 d!1816111))

(declare-fun b!5764660 () Bool)

(declare-fun res!2432854 () Bool)

(declare-fun e!3541843 () Bool)

(assert (=> b!5764660 (=> res!2432854 e!3541843)))

(declare-fun e!3541841 () Bool)

(assert (=> b!5764660 (= res!2432854 e!3541841)))

(declare-fun res!2432857 () Bool)

(assert (=> b!5764660 (=> (not res!2432857) (not e!3541841))))

(declare-fun lt!2289160 () Bool)

(assert (=> b!5764660 (= res!2432857 lt!2289160)))

(declare-fun b!5764662 () Bool)

(declare-fun e!3541839 () Bool)

(assert (=> b!5764662 (= e!3541839 (matchR!7960 (derivativeStep!4556 (regOne!32062 r!7292) (head!12186 Nil!63500)) (tail!11281 Nil!63500)))))

(declare-fun b!5764663 () Bool)

(assert (=> b!5764663 (= e!3541841 (= (head!12186 Nil!63500) (c!1018649 (regOne!32062 r!7292))))))

(declare-fun b!5764664 () Bool)

(declare-fun e!3541838 () Bool)

(assert (=> b!5764664 (= e!3541838 (not lt!2289160))))

(declare-fun b!5764665 () Bool)

(declare-fun e!3541840 () Bool)

(assert (=> b!5764665 (= e!3541840 (not (= (head!12186 Nil!63500) (c!1018649 (regOne!32062 r!7292)))))))

(declare-fun b!5764666 () Bool)

(declare-fun res!2432856 () Bool)

(assert (=> b!5764666 (=> (not res!2432856) (not e!3541841))))

(declare-fun call!442703 () Bool)

(assert (=> b!5764666 (= res!2432856 (not call!442703))))

(declare-fun bm!442698 () Bool)

(assert (=> bm!442698 (= call!442703 (isEmpty!35392 Nil!63500))))

(declare-fun b!5764661 () Bool)

(declare-fun res!2432853 () Bool)

(assert (=> b!5764661 (=> res!2432853 e!3541843)))

(assert (=> b!5764661 (= res!2432853 (not ((_ is ElementMatch!15775) (regOne!32062 r!7292))))))

(assert (=> b!5764661 (= e!3541838 e!3541843)))

(declare-fun d!1816113 () Bool)

(declare-fun e!3541844 () Bool)

(assert (=> d!1816113 e!3541844))

(declare-fun c!1019035 () Bool)

(assert (=> d!1816113 (= c!1019035 ((_ is EmptyExpr!15775) (regOne!32062 r!7292)))))

(assert (=> d!1816113 (= lt!2289160 e!3541839)))

(declare-fun c!1019034 () Bool)

(assert (=> d!1816113 (= c!1019034 (isEmpty!35392 Nil!63500))))

(assert (=> d!1816113 (validRegex!7511 (regOne!32062 r!7292))))

(assert (=> d!1816113 (= (matchR!7960 (regOne!32062 r!7292) Nil!63500) lt!2289160)))

(declare-fun b!5764667 () Bool)

(declare-fun res!2432858 () Bool)

(assert (=> b!5764667 (=> res!2432858 e!3541840)))

(assert (=> b!5764667 (= res!2432858 (not (isEmpty!35392 (tail!11281 Nil!63500))))))

(declare-fun b!5764668 () Bool)

(assert (=> b!5764668 (= e!3541839 (nullable!5807 (regOne!32062 r!7292)))))

(declare-fun b!5764669 () Bool)

(declare-fun e!3541842 () Bool)

(assert (=> b!5764669 (= e!3541842 e!3541840)))

(declare-fun res!2432859 () Bool)

(assert (=> b!5764669 (=> res!2432859 e!3541840)))

(assert (=> b!5764669 (= res!2432859 call!442703)))

(declare-fun b!5764670 () Bool)

(assert (=> b!5764670 (= e!3541844 e!3541838)))

(declare-fun c!1019033 () Bool)

(assert (=> b!5764670 (= c!1019033 ((_ is EmptyLang!15775) (regOne!32062 r!7292)))))

(declare-fun b!5764671 () Bool)

(declare-fun res!2432855 () Bool)

(assert (=> b!5764671 (=> (not res!2432855) (not e!3541841))))

(assert (=> b!5764671 (= res!2432855 (isEmpty!35392 (tail!11281 Nil!63500)))))

(declare-fun b!5764672 () Bool)

(assert (=> b!5764672 (= e!3541844 (= lt!2289160 call!442703))))

(declare-fun b!5764673 () Bool)

(assert (=> b!5764673 (= e!3541843 e!3541842)))

(declare-fun res!2432852 () Bool)

(assert (=> b!5764673 (=> (not res!2432852) (not e!3541842))))

(assert (=> b!5764673 (= res!2432852 (not lt!2289160))))

(assert (= (and d!1816113 c!1019034) b!5764668))

(assert (= (and d!1816113 (not c!1019034)) b!5764662))

(assert (= (and d!1816113 c!1019035) b!5764672))

(assert (= (and d!1816113 (not c!1019035)) b!5764670))

(assert (= (and b!5764670 c!1019033) b!5764664))

(assert (= (and b!5764670 (not c!1019033)) b!5764661))

(assert (= (and b!5764661 (not res!2432853)) b!5764660))

(assert (= (and b!5764660 res!2432857) b!5764666))

(assert (= (and b!5764666 res!2432856) b!5764671))

(assert (= (and b!5764671 res!2432855) b!5764663))

(assert (= (and b!5764660 (not res!2432854)) b!5764673))

(assert (= (and b!5764673 res!2432852) b!5764669))

(assert (= (and b!5764669 (not res!2432859)) b!5764667))

(assert (= (and b!5764667 (not res!2432858)) b!5764665))

(assert (= (or b!5764672 b!5764666 b!5764669) bm!442698))

(declare-fun m!6710972 () Bool)

(assert (=> b!5764665 m!6710972))

(assert (=> b!5764663 m!6710972))

(assert (=> b!5764662 m!6710972))

(assert (=> b!5764662 m!6710972))

(declare-fun m!6710974 () Bool)

(assert (=> b!5764662 m!6710974))

(declare-fun m!6710976 () Bool)

(assert (=> b!5764662 m!6710976))

(assert (=> b!5764662 m!6710974))

(assert (=> b!5764662 m!6710976))

(declare-fun m!6710978 () Bool)

(assert (=> b!5764662 m!6710978))

(assert (=> b!5764667 m!6710976))

(assert (=> b!5764667 m!6710976))

(declare-fun m!6710980 () Bool)

(assert (=> b!5764667 m!6710980))

(declare-fun m!6710982 () Bool)

(assert (=> d!1816113 m!6710982))

(assert (=> d!1816113 m!6710340))

(assert (=> bm!442698 m!6710982))

(assert (=> b!5764671 m!6710976))

(assert (=> b!5764671 m!6710976))

(assert (=> b!5764671 m!6710980))

(assert (=> b!5764668 m!6710382))

(assert (=> d!1815797 d!1816113))

(declare-fun d!1816115 () Bool)

(declare-fun res!2432862 () Bool)

(declare-fun e!3541850 () Bool)

(assert (=> d!1816115 (=> res!2432862 e!3541850)))

(assert (=> d!1816115 (= res!2432862 ((_ is ElementMatch!15775) (regOne!32062 r!7292)))))

(assert (=> d!1816115 (= (validRegex!7511 (regOne!32062 r!7292)) e!3541850)))

(declare-fun b!5764674 () Bool)

(declare-fun e!3541845 () Bool)

(declare-fun call!442704 () Bool)

(assert (=> b!5764674 (= e!3541845 call!442704)))

(declare-fun b!5764675 () Bool)

(declare-fun e!3541847 () Bool)

(declare-fun e!3541849 () Bool)

(assert (=> b!5764675 (= e!3541847 e!3541849)))

(declare-fun res!2432860 () Bool)

(assert (=> b!5764675 (=> (not res!2432860) (not e!3541849))))

(declare-fun call!442705 () Bool)

(assert (=> b!5764675 (= res!2432860 call!442705)))

(declare-fun call!442706 () Bool)

(declare-fun c!1019037 () Bool)

(declare-fun c!1019036 () Bool)

(declare-fun bm!442699 () Bool)

(assert (=> bm!442699 (= call!442706 (validRegex!7511 (ite c!1019036 (reg!16104 (regOne!32062 r!7292)) (ite c!1019037 (regOne!32063 (regOne!32062 r!7292)) (regOne!32062 (regOne!32062 r!7292))))))))

(declare-fun b!5764676 () Bool)

(assert (=> b!5764676 (= e!3541849 call!442704)))

(declare-fun b!5764677 () Bool)

(declare-fun e!3541848 () Bool)

(assert (=> b!5764677 (= e!3541848 call!442706)))

(declare-fun b!5764678 () Bool)

(declare-fun e!3541846 () Bool)

(assert (=> b!5764678 (= e!3541846 e!3541848)))

(declare-fun res!2432864 () Bool)

(assert (=> b!5764678 (= res!2432864 (not (nullable!5807 (reg!16104 (regOne!32062 r!7292)))))))

(assert (=> b!5764678 (=> (not res!2432864) (not e!3541848))))

(declare-fun b!5764679 () Bool)

(declare-fun res!2432861 () Bool)

(assert (=> b!5764679 (=> (not res!2432861) (not e!3541845))))

(assert (=> b!5764679 (= res!2432861 call!442705)))

(declare-fun e!3541851 () Bool)

(assert (=> b!5764679 (= e!3541851 e!3541845)))

(declare-fun b!5764680 () Bool)

(assert (=> b!5764680 (= e!3541850 e!3541846)))

(assert (=> b!5764680 (= c!1019036 ((_ is Star!15775) (regOne!32062 r!7292)))))

(declare-fun bm!442700 () Bool)

(assert (=> bm!442700 (= call!442704 (validRegex!7511 (ite c!1019037 (regTwo!32063 (regOne!32062 r!7292)) (regTwo!32062 (regOne!32062 r!7292)))))))

(declare-fun b!5764681 () Bool)

(assert (=> b!5764681 (= e!3541846 e!3541851)))

(assert (=> b!5764681 (= c!1019037 ((_ is Union!15775) (regOne!32062 r!7292)))))

(declare-fun bm!442701 () Bool)

(assert (=> bm!442701 (= call!442705 call!442706)))

(declare-fun b!5764682 () Bool)

(declare-fun res!2432863 () Bool)

(assert (=> b!5764682 (=> res!2432863 e!3541847)))

(assert (=> b!5764682 (= res!2432863 (not ((_ is Concat!24620) (regOne!32062 r!7292))))))

(assert (=> b!5764682 (= e!3541851 e!3541847)))

(assert (= (and d!1816115 (not res!2432862)) b!5764680))

(assert (= (and b!5764680 c!1019036) b!5764678))

(assert (= (and b!5764680 (not c!1019036)) b!5764681))

(assert (= (and b!5764678 res!2432864) b!5764677))

(assert (= (and b!5764681 c!1019037) b!5764679))

(assert (= (and b!5764681 (not c!1019037)) b!5764682))

(assert (= (and b!5764679 res!2432861) b!5764674))

(assert (= (and b!5764682 (not res!2432863)) b!5764675))

(assert (= (and b!5764675 res!2432860) b!5764676))

(assert (= (or b!5764674 b!5764676) bm!442700))

(assert (= (or b!5764679 b!5764675) bm!442701))

(assert (= (or b!5764677 bm!442701) bm!442699))

(declare-fun m!6710984 () Bool)

(assert (=> bm!442699 m!6710984))

(declare-fun m!6710986 () Bool)

(assert (=> b!5764678 m!6710986))

(declare-fun m!6710988 () Bool)

(assert (=> bm!442700 m!6710988))

(assert (=> d!1815797 d!1816115))

(assert (=> b!5763833 d!1816091))

(declare-fun d!1816117 () Bool)

(assert (=> d!1816117 true))

(assert (=> d!1816117 true))

(declare-fun res!2432865 () Bool)

(assert (=> d!1816117 (= (choose!43713 lambda!312916) res!2432865)))

(assert (=> d!1815799 d!1816117))

(assert (=> bs!1351787 d!1815779))

(declare-fun bs!1352114 () Bool)

(declare-fun b!5764689 () Bool)

(assert (= bs!1352114 (and b!5764689 b!5763721)))

(declare-fun lambda!313026 () Int)

(assert (=> bs!1352114 (not (= lambda!313026 lambda!312968))))

(declare-fun bs!1352115 () Bool)

(assert (= bs!1352115 (and b!5764689 d!1815803)))

(assert (=> bs!1352115 (not (= lambda!313026 lambda!312971))))

(declare-fun bs!1352116 () Bool)

(assert (= bs!1352116 (and b!5764689 d!1815805)))

(assert (=> bs!1352116 (not (= lambda!313026 lambda!312976))))

(assert (=> bs!1352116 (not (= lambda!313026 lambda!312977))))

(declare-fun bs!1352117 () Bool)

(assert (= bs!1352117 (and b!5764689 b!5763152)))

(assert (=> bs!1352117 (not (= lambda!313026 lambda!312915))))

(declare-fun bs!1352118 () Bool)

(assert (= bs!1352118 (and b!5764689 b!5764643)))

(assert (=> bs!1352118 (not (= lambda!313026 lambda!313025))))

(declare-fun bs!1352119 () Bool)

(assert (= bs!1352119 (and b!5764689 b!5764646)))

(assert (=> bs!1352119 (= (and (= (reg!16104 (regOne!32063 r!7292)) (reg!16104 (regOne!32063 (regOne!32062 r!7292)))) (= (regOne!32063 r!7292) (regOne!32063 (regOne!32062 r!7292)))) (= lambda!313026 lambda!313024))))

(declare-fun bs!1352120 () Bool)

(assert (= bs!1352120 (and b!5764689 b!5763724)))

(assert (=> bs!1352120 (= (and (= (reg!16104 (regOne!32063 r!7292)) (reg!16104 r!7292)) (= (regOne!32063 r!7292) r!7292)) (= lambda!313026 lambda!312967))))

(assert (=> bs!1352117 (not (= lambda!313026 lambda!312916))))

(declare-fun bs!1352121 () Bool)

(assert (= bs!1352121 (and b!5764689 b!5763848)))

(assert (=> bs!1352121 (= (and (= (reg!16104 (regOne!32063 r!7292)) (reg!16104 (regTwo!32062 r!7292))) (= (regOne!32063 r!7292) (regTwo!32062 r!7292))) (= lambda!313026 lambda!312983))))

(declare-fun bs!1352122 () Bool)

(assert (= bs!1352122 (and b!5764689 b!5763823)))

(assert (=> bs!1352122 (= (and (= (reg!16104 (regOne!32063 r!7292)) (reg!16104 (regOne!32062 r!7292))) (= (regOne!32063 r!7292) (regOne!32062 r!7292))) (= lambda!313026 lambda!312981))))

(declare-fun bs!1352123 () Bool)

(assert (= bs!1352123 (and b!5764689 b!5763845)))

(assert (=> bs!1352123 (not (= lambda!313026 lambda!312984))))

(declare-fun bs!1352124 () Bool)

(assert (= bs!1352124 (and b!5764689 b!5763820)))

(assert (=> bs!1352124 (not (= lambda!313026 lambda!312982))))

(assert (=> b!5764689 true))

(assert (=> b!5764689 true))

(declare-fun bs!1352125 () Bool)

(declare-fun b!5764686 () Bool)

(assert (= bs!1352125 (and b!5764686 b!5763721)))

(declare-fun lambda!313027 () Int)

(assert (=> bs!1352125 (= (and (= (regOne!32062 (regOne!32063 r!7292)) (regOne!32062 r!7292)) (= (regTwo!32062 (regOne!32063 r!7292)) (regTwo!32062 r!7292))) (= lambda!313027 lambda!312968))))

(declare-fun bs!1352126 () Bool)

(assert (= bs!1352126 (and b!5764686 d!1815803)))

(assert (=> bs!1352126 (not (= lambda!313027 lambda!312971))))

(declare-fun bs!1352127 () Bool)

(assert (= bs!1352127 (and b!5764686 d!1815805)))

(assert (=> bs!1352127 (not (= lambda!313027 lambda!312976))))

(assert (=> bs!1352127 (= (and (= (regOne!32062 (regOne!32063 r!7292)) (regOne!32062 r!7292)) (= (regTwo!32062 (regOne!32063 r!7292)) (regTwo!32062 r!7292))) (= lambda!313027 lambda!312977))))

(declare-fun bs!1352128 () Bool)

(assert (= bs!1352128 (and b!5764686 b!5763152)))

(assert (=> bs!1352128 (not (= lambda!313027 lambda!312915))))

(declare-fun bs!1352129 () Bool)

(assert (= bs!1352129 (and b!5764686 b!5764646)))

(assert (=> bs!1352129 (not (= lambda!313027 lambda!313024))))

(declare-fun bs!1352130 () Bool)

(assert (= bs!1352130 (and b!5764686 b!5763724)))

(assert (=> bs!1352130 (not (= lambda!313027 lambda!312967))))

(assert (=> bs!1352128 (= (and (= (regOne!32062 (regOne!32063 r!7292)) (regOne!32062 r!7292)) (= (regTwo!32062 (regOne!32063 r!7292)) (regTwo!32062 r!7292))) (= lambda!313027 lambda!312916))))

(declare-fun bs!1352131 () Bool)

(assert (= bs!1352131 (and b!5764686 b!5763848)))

(assert (=> bs!1352131 (not (= lambda!313027 lambda!312983))))

(declare-fun bs!1352132 () Bool)

(assert (= bs!1352132 (and b!5764686 b!5763823)))

(assert (=> bs!1352132 (not (= lambda!313027 lambda!312981))))

(declare-fun bs!1352133 () Bool)

(assert (= bs!1352133 (and b!5764686 b!5763845)))

(assert (=> bs!1352133 (= (and (= (regOne!32062 (regOne!32063 r!7292)) (regOne!32062 (regTwo!32062 r!7292))) (= (regTwo!32062 (regOne!32063 r!7292)) (regTwo!32062 (regTwo!32062 r!7292)))) (= lambda!313027 lambda!312984))))

(declare-fun bs!1352134 () Bool)

(assert (= bs!1352134 (and b!5764686 b!5763820)))

(assert (=> bs!1352134 (= (and (= (regOne!32062 (regOne!32063 r!7292)) (regOne!32062 (regOne!32062 r!7292))) (= (regTwo!32062 (regOne!32063 r!7292)) (regTwo!32062 (regOne!32062 r!7292)))) (= lambda!313027 lambda!312982))))

(declare-fun bs!1352135 () Bool)

(assert (= bs!1352135 (and b!5764686 b!5764643)))

(assert (=> bs!1352135 (= (and (= (regOne!32062 (regOne!32063 r!7292)) (regOne!32062 (regOne!32063 (regOne!32062 r!7292)))) (= (regTwo!32062 (regOne!32063 r!7292)) (regTwo!32062 (regOne!32063 (regOne!32062 r!7292))))) (= lambda!313027 lambda!313025))))

(declare-fun bs!1352136 () Bool)

(assert (= bs!1352136 (and b!5764686 b!5764689)))

(assert (=> bs!1352136 (not (= lambda!313027 lambda!313026))))

(assert (=> b!5764686 true))

(assert (=> b!5764686 true))

(declare-fun b!5764683 () Bool)

(declare-fun e!3541856 () Bool)

(assert (=> b!5764683 (= e!3541856 (matchRSpec!2878 (regTwo!32063 (regOne!32063 r!7292)) s!2326))))

(declare-fun b!5764684 () Bool)

(declare-fun e!3541854 () Bool)

(declare-fun e!3541852 () Bool)

(assert (=> b!5764684 (= e!3541854 e!3541852)))

(declare-fun c!1019040 () Bool)

(assert (=> b!5764684 (= c!1019040 ((_ is Star!15775) (regOne!32063 r!7292)))))

(declare-fun b!5764685 () Bool)

(declare-fun e!3541858 () Bool)

(declare-fun call!442708 () Bool)

(assert (=> b!5764685 (= e!3541858 call!442708)))

(declare-fun call!442707 () Bool)

(assert (=> b!5764686 (= e!3541852 call!442707)))

(declare-fun d!1816119 () Bool)

(declare-fun c!1019039 () Bool)

(assert (=> d!1816119 (= c!1019039 ((_ is EmptyExpr!15775) (regOne!32063 r!7292)))))

(assert (=> d!1816119 (= (matchRSpec!2878 (regOne!32063 r!7292) s!2326) e!3541858)))

(declare-fun bm!442702 () Bool)

(assert (=> bm!442702 (= call!442707 (Exists!2875 (ite c!1019040 lambda!313026 lambda!313027)))))

(declare-fun b!5764687 () Bool)

(declare-fun e!3541853 () Bool)

(assert (=> b!5764687 (= e!3541853 (= s!2326 (Cons!63500 (c!1018649 (regOne!32063 r!7292)) Nil!63500)))))

(declare-fun b!5764688 () Bool)

(assert (=> b!5764688 (= e!3541854 e!3541856)))

(declare-fun res!2432868 () Bool)

(assert (=> b!5764688 (= res!2432868 (matchRSpec!2878 (regOne!32063 (regOne!32063 r!7292)) s!2326))))

(assert (=> b!5764688 (=> res!2432868 e!3541856)))

(declare-fun e!3541857 () Bool)

(assert (=> b!5764689 (= e!3541857 call!442707)))

(declare-fun b!5764690 () Bool)

(declare-fun c!1019041 () Bool)

(assert (=> b!5764690 (= c!1019041 ((_ is Union!15775) (regOne!32063 r!7292)))))

(assert (=> b!5764690 (= e!3541853 e!3541854)))

(declare-fun b!5764691 () Bool)

(declare-fun e!3541855 () Bool)

(assert (=> b!5764691 (= e!3541858 e!3541855)))

(declare-fun res!2432866 () Bool)

(assert (=> b!5764691 (= res!2432866 (not ((_ is EmptyLang!15775) (regOne!32063 r!7292))))))

(assert (=> b!5764691 (=> (not res!2432866) (not e!3541855))))

(declare-fun bm!442703 () Bool)

(assert (=> bm!442703 (= call!442708 (isEmpty!35392 s!2326))))

(declare-fun b!5764692 () Bool)

(declare-fun res!2432867 () Bool)

(assert (=> b!5764692 (=> res!2432867 e!3541857)))

(assert (=> b!5764692 (= res!2432867 call!442708)))

(assert (=> b!5764692 (= e!3541852 e!3541857)))

(declare-fun b!5764693 () Bool)

(declare-fun c!1019038 () Bool)

(assert (=> b!5764693 (= c!1019038 ((_ is ElementMatch!15775) (regOne!32063 r!7292)))))

(assert (=> b!5764693 (= e!3541855 e!3541853)))

(assert (= (and d!1816119 c!1019039) b!5764685))

(assert (= (and d!1816119 (not c!1019039)) b!5764691))

(assert (= (and b!5764691 res!2432866) b!5764693))

(assert (= (and b!5764693 c!1019038) b!5764687))

(assert (= (and b!5764693 (not c!1019038)) b!5764690))

(assert (= (and b!5764690 c!1019041) b!5764688))

(assert (= (and b!5764690 (not c!1019041)) b!5764684))

(assert (= (and b!5764688 (not res!2432868)) b!5764683))

(assert (= (and b!5764684 c!1019040) b!5764692))

(assert (= (and b!5764684 (not c!1019040)) b!5764686))

(assert (= (and b!5764692 (not res!2432867)) b!5764689))

(assert (= (or b!5764689 b!5764686) bm!442702))

(assert (= (or b!5764685 b!5764692) bm!442703))

(declare-fun m!6710990 () Bool)

(assert (=> b!5764683 m!6710990))

(declare-fun m!6710992 () Bool)

(assert (=> bm!442702 m!6710992))

(declare-fun m!6710994 () Bool)

(assert (=> b!5764688 m!6710994))

(assert (=> bm!442703 m!6710306))

(assert (=> b!5763723 d!1816119))

(declare-fun d!1816121 () Bool)

(assert (=> d!1816121 (= (nullable!5807 (regOne!32062 r!7292)) (nullableFct!1848 (regOne!32062 r!7292)))))

(declare-fun bs!1352137 () Bool)

(assert (= bs!1352137 d!1816121))

(declare-fun m!6710996 () Bool)

(assert (=> bs!1352137 m!6710996))

(assert (=> b!5763836 d!1816121))

(declare-fun d!1816123 () Bool)

(assert (=> d!1816123 (= (isEmpty!35389 (tail!11282 (unfocusZipperList!1203 zl!343))) ((_ is Nil!63501) (tail!11282 (unfocusZipperList!1203 zl!343))))))

(assert (=> b!5763377 d!1816123))

(declare-fun d!1816125 () Bool)

(assert (=> d!1816125 (= (tail!11282 (unfocusZipperList!1203 zl!343)) (t!376959 (unfocusZipperList!1203 zl!343)))))

(assert (=> b!5763377 d!1816125))

(declare-fun d!1816127 () Bool)

(assert (=> d!1816127 (= ($colon$colon!1770 (exprs!5659 lt!2289027) (ite (or c!1018786 c!1018785) (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (h!69949 (exprs!5659 (h!69950 zl!343))))) (Cons!63501 (ite (or c!1018786 c!1018785) (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (h!69949 (exprs!5659 (h!69950 zl!343)))) (exprs!5659 lt!2289027)))))

(assert (=> bm!442544 d!1816127))

(assert (=> b!5763914 d!1815813))

(declare-fun d!1816129 () Bool)

(assert (=> d!1816129 (= (Exists!2875 (ite c!1018839 lambda!312983 lambda!312984)) (choose!43713 (ite c!1018839 lambda!312983 lambda!312984)))))

(declare-fun bs!1352138 () Bool)

(assert (= bs!1352138 d!1816129))

(declare-fun m!6710998 () Bool)

(assert (=> bs!1352138 m!6710998))

(assert (=> bm!442562 d!1816129))

(declare-fun d!1816131 () Bool)

(declare-fun res!2432871 () Bool)

(declare-fun e!3541864 () Bool)

(assert (=> d!1816131 (=> res!2432871 e!3541864)))

(assert (=> d!1816131 (= res!2432871 ((_ is ElementMatch!15775) lt!2289126))))

(assert (=> d!1816131 (= (validRegex!7511 lt!2289126) e!3541864)))

(declare-fun b!5764694 () Bool)

(declare-fun e!3541859 () Bool)

(declare-fun call!442709 () Bool)

(assert (=> b!5764694 (= e!3541859 call!442709)))

(declare-fun b!5764695 () Bool)

(declare-fun e!3541861 () Bool)

(declare-fun e!3541863 () Bool)

(assert (=> b!5764695 (= e!3541861 e!3541863)))

(declare-fun res!2432869 () Bool)

(assert (=> b!5764695 (=> (not res!2432869) (not e!3541863))))

(declare-fun call!442710 () Bool)

(assert (=> b!5764695 (= res!2432869 call!442710)))

(declare-fun c!1019042 () Bool)

(declare-fun bm!442704 () Bool)

(declare-fun call!442711 () Bool)

(declare-fun c!1019043 () Bool)

(assert (=> bm!442704 (= call!442711 (validRegex!7511 (ite c!1019042 (reg!16104 lt!2289126) (ite c!1019043 (regOne!32063 lt!2289126) (regOne!32062 lt!2289126)))))))

(declare-fun b!5764696 () Bool)

(assert (=> b!5764696 (= e!3541863 call!442709)))

(declare-fun b!5764697 () Bool)

(declare-fun e!3541862 () Bool)

(assert (=> b!5764697 (= e!3541862 call!442711)))

(declare-fun b!5764698 () Bool)

(declare-fun e!3541860 () Bool)

(assert (=> b!5764698 (= e!3541860 e!3541862)))

(declare-fun res!2432873 () Bool)

(assert (=> b!5764698 (= res!2432873 (not (nullable!5807 (reg!16104 lt!2289126))))))

(assert (=> b!5764698 (=> (not res!2432873) (not e!3541862))))

(declare-fun b!5764699 () Bool)

(declare-fun res!2432870 () Bool)

(assert (=> b!5764699 (=> (not res!2432870) (not e!3541859))))

(assert (=> b!5764699 (= res!2432870 call!442710)))

(declare-fun e!3541865 () Bool)

(assert (=> b!5764699 (= e!3541865 e!3541859)))

(declare-fun b!5764700 () Bool)

(assert (=> b!5764700 (= e!3541864 e!3541860)))

(assert (=> b!5764700 (= c!1019042 ((_ is Star!15775) lt!2289126))))

(declare-fun bm!442705 () Bool)

(assert (=> bm!442705 (= call!442709 (validRegex!7511 (ite c!1019043 (regTwo!32063 lt!2289126) (regTwo!32062 lt!2289126))))))

(declare-fun b!5764701 () Bool)

(assert (=> b!5764701 (= e!3541860 e!3541865)))

(assert (=> b!5764701 (= c!1019043 ((_ is Union!15775) lt!2289126))))

(declare-fun bm!442706 () Bool)

(assert (=> bm!442706 (= call!442710 call!442711)))

(declare-fun b!5764702 () Bool)

(declare-fun res!2432872 () Bool)

(assert (=> b!5764702 (=> res!2432872 e!3541861)))

(assert (=> b!5764702 (= res!2432872 (not ((_ is Concat!24620) lt!2289126)))))

(assert (=> b!5764702 (= e!3541865 e!3541861)))

(assert (= (and d!1816131 (not res!2432871)) b!5764700))

(assert (= (and b!5764700 c!1019042) b!5764698))

(assert (= (and b!5764700 (not c!1019042)) b!5764701))

(assert (= (and b!5764698 res!2432873) b!5764697))

(assert (= (and b!5764701 c!1019043) b!5764699))

(assert (= (and b!5764701 (not c!1019043)) b!5764702))

(assert (= (and b!5764699 res!2432870) b!5764694))

(assert (= (and b!5764702 (not res!2432872)) b!5764695))

(assert (= (and b!5764695 res!2432869) b!5764696))

(assert (= (or b!5764694 b!5764696) bm!442705))

(assert (= (or b!5764699 b!5764695) bm!442706))

(assert (= (or b!5764697 bm!442706) bm!442704))

(declare-fun m!6711000 () Bool)

(assert (=> bm!442704 m!6711000))

(declare-fun m!6711002 () Bool)

(assert (=> b!5764698 m!6711002))

(declare-fun m!6711004 () Bool)

(assert (=> bm!442705 m!6711004))

(assert (=> d!1815829 d!1816131))

(assert (=> d!1815829 d!1815717))

(assert (=> d!1815829 d!1815723))

(declare-fun b!5764703 () Bool)

(declare-fun e!3541867 () (InoxSet Context!10318))

(declare-fun call!442712 () (InoxSet Context!10318))

(assert (=> b!5764703 (= e!3541867 call!442712)))

(declare-fun b!5764704 () Bool)

(declare-fun e!3541868 () (InoxSet Context!10318))

(assert (=> b!5764704 (= e!3541868 e!3541867)))

(declare-fun c!1019045 () Bool)

(assert (=> b!5764704 (= c!1019045 ((_ is Cons!63501) (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343)))))))))

(declare-fun b!5764705 () Bool)

(declare-fun e!3541866 () Bool)

(assert (=> b!5764705 (= e!3541866 (nullable!5807 (h!69949 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343))))))))))

(declare-fun d!1816133 () Bool)

(declare-fun c!1019044 () Bool)

(assert (=> d!1816133 (= c!1019044 e!3541866)))

(declare-fun res!2432874 () Bool)

(assert (=> d!1816133 (=> (not res!2432874) (not e!3541866))))

(assert (=> d!1816133 (= res!2432874 ((_ is Cons!63501) (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343)))))))))

(assert (=> d!1816133 (= (derivationStepZipperUp!1043 (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343)))) (h!69948 s!2326)) e!3541868)))

(declare-fun b!5764706 () Bool)

(assert (=> b!5764706 (= e!3541868 ((_ map or) call!442712 (derivationStepZipperUp!1043 (Context!10319 (t!376959 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343))))))) (h!69948 s!2326))))))

(declare-fun b!5764707 () Bool)

(assert (=> b!5764707 (= e!3541867 ((as const (Array Context!10318 Bool)) false))))

(declare-fun bm!442707 () Bool)

(assert (=> bm!442707 (= call!442712 (derivationStepZipperDown!1117 (h!69949 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343)))))) (Context!10319 (t!376959 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343))))))) (h!69948 s!2326)))))

(assert (= (and d!1816133 res!2432874) b!5764705))

(assert (= (and d!1816133 c!1019044) b!5764706))

(assert (= (and d!1816133 (not c!1019044)) b!5764704))

(assert (= (and b!5764704 c!1019045) b!5764703))

(assert (= (and b!5764704 (not c!1019045)) b!5764707))

(assert (= (or b!5764706 b!5764703) bm!442707))

(declare-fun m!6711006 () Bool)

(assert (=> b!5764705 m!6711006))

(declare-fun m!6711008 () Bool)

(assert (=> b!5764706 m!6711008))

(declare-fun m!6711010 () Bool)

(assert (=> bm!442707 m!6711010))

(assert (=> b!5763628 d!1816133))

(declare-fun d!1816135 () Bool)

(assert (=> d!1816135 (= (nullable!5807 (regTwo!32062 r!7292)) (nullableFct!1848 (regTwo!32062 r!7292)))))

(declare-fun bs!1352139 () Bool)

(assert (= bs!1352139 d!1816135))

(declare-fun m!6711012 () Bool)

(assert (=> bs!1352139 m!6711012))

(assert (=> b!5763861 d!1816135))

(declare-fun d!1816137 () Bool)

(declare-fun res!2432875 () Bool)

(declare-fun e!3541869 () Bool)

(assert (=> d!1816137 (=> res!2432875 e!3541869)))

(assert (=> d!1816137 (= res!2432875 ((_ is Nil!63501) lt!2289068))))

(assert (=> d!1816137 (= (forall!14893 lt!2289068 lambda!312949) e!3541869)))

(declare-fun b!5764708 () Bool)

(declare-fun e!3541870 () Bool)

(assert (=> b!5764708 (= e!3541869 e!3541870)))

(declare-fun res!2432876 () Bool)

(assert (=> b!5764708 (=> (not res!2432876) (not e!3541870))))

(assert (=> b!5764708 (= res!2432876 (dynLambda!24859 lambda!312949 (h!69949 lt!2289068)))))

(declare-fun b!5764709 () Bool)

(assert (=> b!5764709 (= e!3541870 (forall!14893 (t!376959 lt!2289068) lambda!312949))))

(assert (= (and d!1816137 (not res!2432875)) b!5764708))

(assert (= (and b!5764708 res!2432876) b!5764709))

(declare-fun b_lambda!217629 () Bool)

(assert (=> (not b_lambda!217629) (not b!5764708)))

(declare-fun m!6711014 () Bool)

(assert (=> b!5764708 m!6711014))

(declare-fun m!6711016 () Bool)

(assert (=> b!5764709 m!6711016))

(assert (=> d!1815723 d!1816137))

(assert (=> bm!442558 d!1816097))

(assert (=> b!5763858 d!1816091))

(declare-fun b!5764710 () Bool)

(declare-fun e!3541874 () (InoxSet Context!10318))

(declare-fun e!3541876 () (InoxSet Context!10318))

(assert (=> b!5764710 (= e!3541874 e!3541876)))

(declare-fun c!1019046 () Bool)

(assert (=> b!5764710 (= c!1019046 ((_ is Union!15775) (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343)))))))))))

(declare-fun b!5764711 () Bool)

(declare-fun c!1019050 () Bool)

(declare-fun e!3541871 () Bool)

(assert (=> b!5764711 (= c!1019050 e!3541871)))

(declare-fun res!2432877 () Bool)

(assert (=> b!5764711 (=> (not res!2432877) (not e!3541871))))

(assert (=> b!5764711 (= res!2432877 ((_ is Concat!24620) (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343)))))))))))

(declare-fun e!3541873 () (InoxSet Context!10318))

(assert (=> b!5764711 (= e!3541876 e!3541873)))

(declare-fun d!1816139 () Bool)

(declare-fun c!1019047 () Bool)

(assert (=> d!1816139 (= c!1019047 (and ((_ is ElementMatch!15775) (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343)))))))) (= (c!1018649 (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343)))))))) (h!69948 s!2326))))))

(assert (=> d!1816139 (= (derivationStepZipperDown!1117 (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343))))))) (ite (or c!1018782 c!1018786) lt!2289027 (Context!10319 call!442548)) (h!69948 s!2326)) e!3541874)))

(declare-fun call!442718 () (InoxSet Context!10318))

(declare-fun c!1019049 () Bool)

(declare-fun bm!442708 () Bool)

(declare-fun call!442717 () List!63625)

(assert (=> bm!442708 (= call!442718 (derivationStepZipperDown!1117 (ite c!1019046 (regOne!32063 (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343)))))))) (ite c!1019050 (regTwo!32062 (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343)))))))) (ite c!1019049 (regOne!32062 (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343)))))))) (reg!16104 (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343))))))))))) (ite (or c!1019046 c!1019050) (ite (or c!1018782 c!1018786) lt!2289027 (Context!10319 call!442548)) (Context!10319 call!442717)) (h!69948 s!2326)))))

(declare-fun bm!442709 () Bool)

(declare-fun call!442714 () List!63625)

(assert (=> bm!442709 (= call!442717 call!442714)))

(declare-fun call!442716 () (InoxSet Context!10318))

(declare-fun bm!442710 () Bool)

(assert (=> bm!442710 (= call!442716 (derivationStepZipperDown!1117 (ite c!1019046 (regTwo!32063 (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343)))))))) (regOne!32062 (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343))))))))) (ite c!1019046 (ite (or c!1018782 c!1018786) lt!2289027 (Context!10319 call!442548)) (Context!10319 call!442714)) (h!69948 s!2326)))))

(declare-fun b!5764712 () Bool)

(declare-fun e!3541872 () (InoxSet Context!10318))

(assert (=> b!5764712 (= e!3541873 e!3541872)))

(assert (=> b!5764712 (= c!1019049 ((_ is Concat!24620) (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343)))))))))))

(declare-fun b!5764713 () Bool)

(declare-fun call!442715 () (InoxSet Context!10318))

(assert (=> b!5764713 (= e!3541873 ((_ map or) call!442716 call!442715))))

(declare-fun b!5764714 () Bool)

(declare-fun call!442713 () (InoxSet Context!10318))

(assert (=> b!5764714 (= e!3541872 call!442713)))

(declare-fun b!5764715 () Bool)

(assert (=> b!5764715 (= e!3541876 ((_ map or) call!442718 call!442716))))

(declare-fun bm!442711 () Bool)

(assert (=> bm!442711 (= call!442715 call!442718)))

(declare-fun bm!442712 () Bool)

(assert (=> bm!442712 (= call!442713 call!442715)))

(declare-fun b!5764716 () Bool)

(declare-fun e!3541875 () (InoxSet Context!10318))

(assert (=> b!5764716 (= e!3541875 call!442713)))

(declare-fun c!1019048 () Bool)

(declare-fun b!5764717 () Bool)

(assert (=> b!5764717 (= c!1019048 ((_ is Star!15775) (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343)))))))))))

(assert (=> b!5764717 (= e!3541872 e!3541875)))

(declare-fun b!5764718 () Bool)

(assert (=> b!5764718 (= e!3541875 ((as const (Array Context!10318 Bool)) false))))

(declare-fun bm!442713 () Bool)

(assert (=> bm!442713 (= call!442714 ($colon$colon!1770 (exprs!5659 (ite (or c!1018782 c!1018786) lt!2289027 (Context!10319 call!442548))) (ite (or c!1019050 c!1019049) (regTwo!32062 (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343)))))))) (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343))))))))))))

(declare-fun b!5764719 () Bool)

(assert (=> b!5764719 (= e!3541871 (nullable!5807 (regOne!32062 (ite c!1018782 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018786 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1018785 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343))))))))))))

(declare-fun b!5764720 () Bool)

(assert (=> b!5764720 (= e!3541874 (store ((as const (Array Context!10318 Bool)) false) (ite (or c!1018782 c!1018786) lt!2289027 (Context!10319 call!442548)) true))))

(assert (= (and d!1816139 c!1019047) b!5764720))

(assert (= (and d!1816139 (not c!1019047)) b!5764710))

(assert (= (and b!5764710 c!1019046) b!5764715))

(assert (= (and b!5764710 (not c!1019046)) b!5764711))

(assert (= (and b!5764711 res!2432877) b!5764719))

(assert (= (and b!5764711 c!1019050) b!5764713))

(assert (= (and b!5764711 (not c!1019050)) b!5764712))

(assert (= (and b!5764712 c!1019049) b!5764714))

(assert (= (and b!5764712 (not c!1019049)) b!5764717))

(assert (= (and b!5764717 c!1019048) b!5764716))

(assert (= (and b!5764717 (not c!1019048)) b!5764718))

(assert (= (or b!5764714 b!5764716) bm!442709))

(assert (= (or b!5764714 b!5764716) bm!442712))

(assert (= (or b!5764713 bm!442709) bm!442713))

(assert (= (or b!5764713 bm!442712) bm!442711))

(assert (= (or b!5764715 b!5764713) bm!442710))

(assert (= (or b!5764715 bm!442711) bm!442708))

(declare-fun m!6711018 () Bool)

(assert (=> bm!442708 m!6711018))

(declare-fun m!6711020 () Bool)

(assert (=> b!5764719 m!6711020))

(declare-fun m!6711022 () Bool)

(assert (=> bm!442713 m!6711022))

(declare-fun m!6711024 () Bool)

(assert (=> b!5764720 m!6711024))

(declare-fun m!6711026 () Bool)

(assert (=> bm!442710 m!6711026))

(assert (=> bm!442539 d!1816139))

(assert (=> d!1815795 d!1815793))

(assert (=> d!1815795 d!1815781))

(declare-fun d!1816141 () Bool)

(assert (=> d!1816141 (= (matchR!7960 r!7292 s!2326) (matchRSpec!2878 r!7292 s!2326))))

(assert (=> d!1816141 true))

(declare-fun _$88!4069 () Unit!156632)

(assert (=> d!1816141 (= (choose!43712 r!7292 s!2326) _$88!4069)))

(declare-fun bs!1352140 () Bool)

(assert (= bs!1352140 d!1816141))

(assert (=> bs!1352140 m!6709934))

(assert (=> bs!1352140 m!6709932))

(assert (=> d!1815795 d!1816141))

(assert (=> d!1815795 d!1815837))

(declare-fun d!1816143 () Bool)

(declare-fun c!1019051 () Bool)

(assert (=> d!1816143 (= c!1019051 (isEmpty!35392 (tail!11281 (t!376958 s!2326))))))

(declare-fun e!3541877 () Bool)

(assert (=> d!1816143 (= (matchZipper!1913 (derivationStepZipper!1854 ((_ map or) lt!2289021 lt!2289025) (head!12186 (t!376958 s!2326))) (tail!11281 (t!376958 s!2326))) e!3541877)))

(declare-fun b!5764721 () Bool)

(assert (=> b!5764721 (= e!3541877 (nullableZipper!1702 (derivationStepZipper!1854 ((_ map or) lt!2289021 lt!2289025) (head!12186 (t!376958 s!2326)))))))

(declare-fun b!5764722 () Bool)

(assert (=> b!5764722 (= e!3541877 (matchZipper!1913 (derivationStepZipper!1854 (derivationStepZipper!1854 ((_ map or) lt!2289021 lt!2289025) (head!12186 (t!376958 s!2326))) (head!12186 (tail!11281 (t!376958 s!2326)))) (tail!11281 (tail!11281 (t!376958 s!2326)))))))

(assert (= (and d!1816143 c!1019051) b!5764721))

(assert (= (and d!1816143 (not c!1019051)) b!5764722))

(assert (=> d!1816143 m!6710070))

(declare-fun m!6711028 () Bool)

(assert (=> d!1816143 m!6711028))

(assert (=> b!5764721 m!6710364))

(declare-fun m!6711030 () Bool)

(assert (=> b!5764721 m!6711030))

(assert (=> b!5764722 m!6710070))

(declare-fun m!6711032 () Bool)

(assert (=> b!5764722 m!6711032))

(assert (=> b!5764722 m!6710364))

(assert (=> b!5764722 m!6711032))

(declare-fun m!6711034 () Bool)

(assert (=> b!5764722 m!6711034))

(assert (=> b!5764722 m!6710070))

(declare-fun m!6711036 () Bool)

(assert (=> b!5764722 m!6711036))

(assert (=> b!5764722 m!6711034))

(assert (=> b!5764722 m!6711036))

(declare-fun m!6711038 () Bool)

(assert (=> b!5764722 m!6711038))

(assert (=> b!5763814 d!1816143))

(declare-fun bs!1352141 () Bool)

(declare-fun d!1816145 () Bool)

(assert (= bs!1352141 (and d!1816145 b!5763167)))

(declare-fun lambda!313028 () Int)

(assert (=> bs!1352141 (= (= (head!12186 (t!376958 s!2326)) (h!69948 s!2326)) (= lambda!313028 lambda!312917))))

(declare-fun bs!1352142 () Bool)

(assert (= bs!1352142 (and d!1816145 d!1815815)))

(assert (=> bs!1352142 (= (= (head!12186 (t!376958 s!2326)) (h!69948 s!2326)) (= lambda!313028 lambda!312980))))

(declare-fun bs!1352143 () Bool)

(assert (= bs!1352143 (and d!1816145 d!1815831)))

(assert (=> bs!1352143 (= (= (head!12186 (t!376958 s!2326)) (h!69948 s!2326)) (= lambda!313028 lambda!312985))))

(assert (=> d!1816145 true))

(assert (=> d!1816145 (= (derivationStepZipper!1854 ((_ map or) lt!2289021 lt!2289025) (head!12186 (t!376958 s!2326))) (flatMap!1388 ((_ map or) lt!2289021 lt!2289025) lambda!313028))))

(declare-fun bs!1352144 () Bool)

(assert (= bs!1352144 d!1816145))

(declare-fun m!6711040 () Bool)

(assert (=> bs!1352144 m!6711040))

(assert (=> b!5763814 d!1816145))

(declare-fun d!1816147 () Bool)

(assert (=> d!1816147 (= (head!12186 (t!376958 s!2326)) (h!69948 (t!376958 s!2326)))))

(assert (=> b!5763814 d!1816147))

(declare-fun d!1816149 () Bool)

(assert (=> d!1816149 (= (tail!11281 (t!376958 s!2326)) (t!376958 (t!376958 s!2326)))))

(assert (=> b!5763814 d!1816149))

(assert (=> d!1815803 d!1815797))

(assert (=> d!1815803 d!1816115))

(assert (=> d!1815803 d!1815807))

(declare-fun d!1816151 () Bool)

(assert (=> d!1816151 (= (Exists!2875 lambda!312971) (choose!43713 lambda!312971))))

(declare-fun bs!1352145 () Bool)

(assert (= bs!1352145 d!1816151))

(declare-fun m!6711042 () Bool)

(assert (=> bs!1352145 m!6711042))

(assert (=> d!1815803 d!1816151))

(declare-fun bs!1352146 () Bool)

(declare-fun d!1816153 () Bool)

(assert (= bs!1352146 (and d!1816153 b!5763721)))

(declare-fun lambda!313031 () Int)

(assert (=> bs!1352146 (not (= lambda!313031 lambda!312968))))

(declare-fun bs!1352147 () Bool)

(assert (= bs!1352147 (and d!1816153 d!1815803)))

(assert (=> bs!1352147 (= lambda!313031 lambda!312971)))

(declare-fun bs!1352148 () Bool)

(assert (= bs!1352148 (and d!1816153 b!5764686)))

(assert (=> bs!1352148 (not (= lambda!313031 lambda!313027))))

(declare-fun bs!1352149 () Bool)

(assert (= bs!1352149 (and d!1816153 d!1815805)))

(assert (=> bs!1352149 (= lambda!313031 lambda!312976)))

(assert (=> bs!1352149 (not (= lambda!313031 lambda!312977))))

(declare-fun bs!1352150 () Bool)

(assert (= bs!1352150 (and d!1816153 b!5763152)))

(assert (=> bs!1352150 (= lambda!313031 lambda!312915)))

(declare-fun bs!1352151 () Bool)

(assert (= bs!1352151 (and d!1816153 b!5764646)))

(assert (=> bs!1352151 (not (= lambda!313031 lambda!313024))))

(declare-fun bs!1352152 () Bool)

(assert (= bs!1352152 (and d!1816153 b!5763724)))

(assert (=> bs!1352152 (not (= lambda!313031 lambda!312967))))

(assert (=> bs!1352150 (not (= lambda!313031 lambda!312916))))

(declare-fun bs!1352153 () Bool)

(assert (= bs!1352153 (and d!1816153 b!5763848)))

(assert (=> bs!1352153 (not (= lambda!313031 lambda!312983))))

(declare-fun bs!1352154 () Bool)

(assert (= bs!1352154 (and d!1816153 b!5763823)))

(assert (=> bs!1352154 (not (= lambda!313031 lambda!312981))))

(declare-fun bs!1352155 () Bool)

(assert (= bs!1352155 (and d!1816153 b!5763845)))

(assert (=> bs!1352155 (not (= lambda!313031 lambda!312984))))

(declare-fun bs!1352156 () Bool)

(assert (= bs!1352156 (and d!1816153 b!5763820)))

(assert (=> bs!1352156 (not (= lambda!313031 lambda!312982))))

(declare-fun bs!1352157 () Bool)

(assert (= bs!1352157 (and d!1816153 b!5764643)))

(assert (=> bs!1352157 (not (= lambda!313031 lambda!313025))))

(declare-fun bs!1352158 () Bool)

(assert (= bs!1352158 (and d!1816153 b!5764689)))

(assert (=> bs!1352158 (not (= lambda!313031 lambda!313026))))

(assert (=> d!1816153 true))

(assert (=> d!1816153 true))

(assert (=> d!1816153 true))

(assert (=> d!1816153 (= (isDefined!12487 (findConcatSeparation!2198 (regOne!32062 r!7292) (regTwo!32062 r!7292) Nil!63500 s!2326 s!2326)) (Exists!2875 lambda!313031))))

(assert (=> d!1816153 true))

(declare-fun _$89!1883 () Unit!156632)

(assert (=> d!1816153 (= (choose!43714 (regOne!32062 r!7292) (regTwo!32062 r!7292) s!2326) _$89!1883)))

(declare-fun bs!1352159 () Bool)

(assert (= bs!1352159 d!1816153))

(assert (=> bs!1352159 m!6709976))

(assert (=> bs!1352159 m!6709976))

(assert (=> bs!1352159 m!6709978))

(declare-fun m!6711044 () Bool)

(assert (=> bs!1352159 m!6711044))

(assert (=> d!1815803 d!1816153))

(declare-fun bs!1352160 () Bool)

(declare-fun b!5764733 () Bool)

(assert (= bs!1352160 (and b!5764733 b!5763721)))

(declare-fun lambda!313032 () Int)

(assert (=> bs!1352160 (not (= lambda!313032 lambda!312968))))

(declare-fun bs!1352161 () Bool)

(assert (= bs!1352161 (and b!5764733 d!1815803)))

(assert (=> bs!1352161 (not (= lambda!313032 lambda!312971))))

(declare-fun bs!1352162 () Bool)

(assert (= bs!1352162 (and b!5764733 b!5764686)))

(assert (=> bs!1352162 (not (= lambda!313032 lambda!313027))))

(declare-fun bs!1352163 () Bool)

(assert (= bs!1352163 (and b!5764733 d!1815805)))

(assert (=> bs!1352163 (not (= lambda!313032 lambda!312977))))

(declare-fun bs!1352164 () Bool)

(assert (= bs!1352164 (and b!5764733 b!5763152)))

(assert (=> bs!1352164 (not (= lambda!313032 lambda!312915))))

(declare-fun bs!1352165 () Bool)

(assert (= bs!1352165 (and b!5764733 b!5764646)))

(assert (=> bs!1352165 (= (and (= (reg!16104 (regTwo!32063 (regTwo!32062 r!7292))) (reg!16104 (regOne!32063 (regOne!32062 r!7292)))) (= (regTwo!32063 (regTwo!32062 r!7292)) (regOne!32063 (regOne!32062 r!7292)))) (= lambda!313032 lambda!313024))))

(declare-fun bs!1352166 () Bool)

(assert (= bs!1352166 (and b!5764733 b!5763724)))

(assert (=> bs!1352166 (= (and (= (reg!16104 (regTwo!32063 (regTwo!32062 r!7292))) (reg!16104 r!7292)) (= (regTwo!32063 (regTwo!32062 r!7292)) r!7292)) (= lambda!313032 lambda!312967))))

(assert (=> bs!1352164 (not (= lambda!313032 lambda!312916))))

(declare-fun bs!1352167 () Bool)

(assert (= bs!1352167 (and b!5764733 b!5763848)))

(assert (=> bs!1352167 (= (and (= (reg!16104 (regTwo!32063 (regTwo!32062 r!7292))) (reg!16104 (regTwo!32062 r!7292))) (= (regTwo!32063 (regTwo!32062 r!7292)) (regTwo!32062 r!7292))) (= lambda!313032 lambda!312983))))

(declare-fun bs!1352168 () Bool)

(assert (= bs!1352168 (and b!5764733 b!5763823)))

(assert (=> bs!1352168 (= (and (= (reg!16104 (regTwo!32063 (regTwo!32062 r!7292))) (reg!16104 (regOne!32062 r!7292))) (= (regTwo!32063 (regTwo!32062 r!7292)) (regOne!32062 r!7292))) (= lambda!313032 lambda!312981))))

(declare-fun bs!1352169 () Bool)

(assert (= bs!1352169 (and b!5764733 d!1816153)))

(assert (=> bs!1352169 (not (= lambda!313032 lambda!313031))))

(assert (=> bs!1352163 (not (= lambda!313032 lambda!312976))))

(declare-fun bs!1352170 () Bool)

(assert (= bs!1352170 (and b!5764733 b!5763845)))

(assert (=> bs!1352170 (not (= lambda!313032 lambda!312984))))

(declare-fun bs!1352171 () Bool)

(assert (= bs!1352171 (and b!5764733 b!5763820)))

(assert (=> bs!1352171 (not (= lambda!313032 lambda!312982))))

(declare-fun bs!1352172 () Bool)

(assert (= bs!1352172 (and b!5764733 b!5764643)))

(assert (=> bs!1352172 (not (= lambda!313032 lambda!313025))))

(declare-fun bs!1352173 () Bool)

(assert (= bs!1352173 (and b!5764733 b!5764689)))

(assert (=> bs!1352173 (= (and (= (reg!16104 (regTwo!32063 (regTwo!32062 r!7292))) (reg!16104 (regOne!32063 r!7292))) (= (regTwo!32063 (regTwo!32062 r!7292)) (regOne!32063 r!7292))) (= lambda!313032 lambda!313026))))

(assert (=> b!5764733 true))

(assert (=> b!5764733 true))

(declare-fun bs!1352174 () Bool)

(declare-fun b!5764730 () Bool)

(assert (= bs!1352174 (and b!5764730 b!5763721)))

(declare-fun lambda!313033 () Int)

(assert (=> bs!1352174 (= (and (= (regOne!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313033 lambda!312968))))

(declare-fun bs!1352175 () Bool)

(assert (= bs!1352175 (and b!5764730 d!1815803)))

(assert (=> bs!1352175 (not (= lambda!313033 lambda!312971))))

(declare-fun bs!1352176 () Bool)

(assert (= bs!1352176 (and b!5764730 b!5764686)))

(assert (=> bs!1352176 (= (and (= (regOne!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regOne!32062 (regOne!32063 r!7292))) (= (regTwo!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regTwo!32062 (regOne!32063 r!7292)))) (= lambda!313033 lambda!313027))))

(declare-fun bs!1352177 () Bool)

(assert (= bs!1352177 (and b!5764730 b!5763152)))

(assert (=> bs!1352177 (not (= lambda!313033 lambda!312915))))

(declare-fun bs!1352178 () Bool)

(assert (= bs!1352178 (and b!5764730 b!5764646)))

(assert (=> bs!1352178 (not (= lambda!313033 lambda!313024))))

(declare-fun bs!1352179 () Bool)

(assert (= bs!1352179 (and b!5764730 b!5763724)))

(assert (=> bs!1352179 (not (= lambda!313033 lambda!312967))))

(assert (=> bs!1352177 (= (and (= (regOne!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313033 lambda!312916))))

(declare-fun bs!1352180 () Bool)

(assert (= bs!1352180 (and b!5764730 b!5763848)))

(assert (=> bs!1352180 (not (= lambda!313033 lambda!312983))))

(declare-fun bs!1352181 () Bool)

(assert (= bs!1352181 (and b!5764730 b!5763823)))

(assert (=> bs!1352181 (not (= lambda!313033 lambda!312981))))

(declare-fun bs!1352182 () Bool)

(assert (= bs!1352182 (and b!5764730 d!1816153)))

(assert (=> bs!1352182 (not (= lambda!313033 lambda!313031))))

(declare-fun bs!1352183 () Bool)

(assert (= bs!1352183 (and b!5764730 d!1815805)))

(assert (=> bs!1352183 (not (= lambda!313033 lambda!312976))))

(declare-fun bs!1352184 () Bool)

(assert (= bs!1352184 (and b!5764730 b!5764733)))

(assert (=> bs!1352184 (not (= lambda!313033 lambda!313032))))

(assert (=> bs!1352183 (= (and (= (regOne!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313033 lambda!312977))))

(declare-fun bs!1352185 () Bool)

(assert (= bs!1352185 (and b!5764730 b!5763845)))

(assert (=> bs!1352185 (= (and (= (regOne!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regOne!32062 (regTwo!32062 r!7292))) (= (regTwo!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regTwo!32062 (regTwo!32062 r!7292)))) (= lambda!313033 lambda!312984))))

(declare-fun bs!1352186 () Bool)

(assert (= bs!1352186 (and b!5764730 b!5763820)))

(assert (=> bs!1352186 (= (and (= (regOne!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regOne!32062 (regOne!32062 r!7292))) (= (regTwo!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regTwo!32062 (regOne!32062 r!7292)))) (= lambda!313033 lambda!312982))))

(declare-fun bs!1352187 () Bool)

(assert (= bs!1352187 (and b!5764730 b!5764643)))

(assert (=> bs!1352187 (= (and (= (regOne!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regOne!32062 (regOne!32063 (regOne!32062 r!7292)))) (= (regTwo!32062 (regTwo!32063 (regTwo!32062 r!7292))) (regTwo!32062 (regOne!32063 (regOne!32062 r!7292))))) (= lambda!313033 lambda!313025))))

(declare-fun bs!1352188 () Bool)

(assert (= bs!1352188 (and b!5764730 b!5764689)))

(assert (=> bs!1352188 (not (= lambda!313033 lambda!313026))))

(assert (=> b!5764730 true))

(assert (=> b!5764730 true))

(declare-fun b!5764727 () Bool)

(declare-fun e!3541884 () Bool)

(assert (=> b!5764727 (= e!3541884 (matchRSpec!2878 (regTwo!32063 (regTwo!32063 (regTwo!32062 r!7292))) s!2326))))

(declare-fun b!5764728 () Bool)

(declare-fun e!3541882 () Bool)

(declare-fun e!3541880 () Bool)

(assert (=> b!5764728 (= e!3541882 e!3541880)))

(declare-fun c!1019054 () Bool)

(assert (=> b!5764728 (= c!1019054 ((_ is Star!15775) (regTwo!32063 (regTwo!32062 r!7292))))))

(declare-fun b!5764729 () Bool)

(declare-fun e!3541886 () Bool)

(declare-fun call!442720 () Bool)

(assert (=> b!5764729 (= e!3541886 call!442720)))

(declare-fun call!442719 () Bool)

(assert (=> b!5764730 (= e!3541880 call!442719)))

(declare-fun d!1816155 () Bool)

(declare-fun c!1019053 () Bool)

(assert (=> d!1816155 (= c!1019053 ((_ is EmptyExpr!15775) (regTwo!32063 (regTwo!32062 r!7292))))))

(assert (=> d!1816155 (= (matchRSpec!2878 (regTwo!32063 (regTwo!32062 r!7292)) s!2326) e!3541886)))

(declare-fun bm!442714 () Bool)

(assert (=> bm!442714 (= call!442719 (Exists!2875 (ite c!1019054 lambda!313032 lambda!313033)))))

(declare-fun b!5764731 () Bool)

(declare-fun e!3541881 () Bool)

(assert (=> b!5764731 (= e!3541881 (= s!2326 (Cons!63500 (c!1018649 (regTwo!32063 (regTwo!32062 r!7292))) Nil!63500)))))

(declare-fun b!5764732 () Bool)

(assert (=> b!5764732 (= e!3541882 e!3541884)))

(declare-fun res!2432884 () Bool)

(assert (=> b!5764732 (= res!2432884 (matchRSpec!2878 (regOne!32063 (regTwo!32063 (regTwo!32062 r!7292))) s!2326))))

(assert (=> b!5764732 (=> res!2432884 e!3541884)))

(declare-fun e!3541885 () Bool)

(assert (=> b!5764733 (= e!3541885 call!442719)))

(declare-fun b!5764734 () Bool)

(declare-fun c!1019055 () Bool)

(assert (=> b!5764734 (= c!1019055 ((_ is Union!15775) (regTwo!32063 (regTwo!32062 r!7292))))))

(assert (=> b!5764734 (= e!3541881 e!3541882)))

(declare-fun b!5764735 () Bool)

(declare-fun e!3541883 () Bool)

(assert (=> b!5764735 (= e!3541886 e!3541883)))

(declare-fun res!2432882 () Bool)

(assert (=> b!5764735 (= res!2432882 (not ((_ is EmptyLang!15775) (regTwo!32063 (regTwo!32062 r!7292)))))))

(assert (=> b!5764735 (=> (not res!2432882) (not e!3541883))))

(declare-fun bm!442715 () Bool)

(assert (=> bm!442715 (= call!442720 (isEmpty!35392 s!2326))))

(declare-fun b!5764736 () Bool)

(declare-fun res!2432883 () Bool)

(assert (=> b!5764736 (=> res!2432883 e!3541885)))

(assert (=> b!5764736 (= res!2432883 call!442720)))

(assert (=> b!5764736 (= e!3541880 e!3541885)))

(declare-fun b!5764737 () Bool)

(declare-fun c!1019052 () Bool)

(assert (=> b!5764737 (= c!1019052 ((_ is ElementMatch!15775) (regTwo!32063 (regTwo!32062 r!7292))))))

(assert (=> b!5764737 (= e!3541883 e!3541881)))

(assert (= (and d!1816155 c!1019053) b!5764729))

(assert (= (and d!1816155 (not c!1019053)) b!5764735))

(assert (= (and b!5764735 res!2432882) b!5764737))

(assert (= (and b!5764737 c!1019052) b!5764731))

(assert (= (and b!5764737 (not c!1019052)) b!5764734))

(assert (= (and b!5764734 c!1019055) b!5764732))

(assert (= (and b!5764734 (not c!1019055)) b!5764728))

(assert (= (and b!5764732 (not res!2432884)) b!5764727))

(assert (= (and b!5764728 c!1019054) b!5764736))

(assert (= (and b!5764728 (not c!1019054)) b!5764730))

(assert (= (and b!5764736 (not res!2432883)) b!5764733))

(assert (= (or b!5764733 b!5764730) bm!442714))

(assert (= (or b!5764729 b!5764736) bm!442715))

(declare-fun m!6711046 () Bool)

(assert (=> b!5764727 m!6711046))

(declare-fun m!6711048 () Bool)

(assert (=> bm!442714 m!6711048))

(declare-fun m!6711050 () Bool)

(assert (=> b!5764732 m!6711050))

(assert (=> bm!442715 m!6710306))

(assert (=> b!5763842 d!1816155))

(assert (=> b!5763793 d!1815825))

(declare-fun b!5764738 () Bool)

(declare-fun e!3541890 () (InoxSet Context!10318))

(declare-fun e!3541892 () (InoxSet Context!10318))

(assert (=> b!5764738 (= e!3541890 e!3541892)))

(declare-fun c!1019056 () Bool)

(assert (=> b!5764738 (= c!1019056 ((_ is Union!15775) (h!69949 (exprs!5659 lt!2289027))))))

(declare-fun b!5764739 () Bool)

(declare-fun c!1019060 () Bool)

(declare-fun e!3541887 () Bool)

(assert (=> b!5764739 (= c!1019060 e!3541887)))

(declare-fun res!2432885 () Bool)

(assert (=> b!5764739 (=> (not res!2432885) (not e!3541887))))

(assert (=> b!5764739 (= res!2432885 ((_ is Concat!24620) (h!69949 (exprs!5659 lt!2289027))))))

(declare-fun e!3541889 () (InoxSet Context!10318))

(assert (=> b!5764739 (= e!3541892 e!3541889)))

(declare-fun d!1816157 () Bool)

(declare-fun c!1019057 () Bool)

(assert (=> d!1816157 (= c!1019057 (and ((_ is ElementMatch!15775) (h!69949 (exprs!5659 lt!2289027))) (= (c!1018649 (h!69949 (exprs!5659 lt!2289027))) (h!69948 s!2326))))))

(assert (=> d!1816157 (= (derivationStepZipperDown!1117 (h!69949 (exprs!5659 lt!2289027)) (Context!10319 (t!376959 (exprs!5659 lt!2289027))) (h!69948 s!2326)) e!3541890)))

(declare-fun bm!442716 () Bool)

(declare-fun call!442726 () (InoxSet Context!10318))

(declare-fun c!1019059 () Bool)

(declare-fun call!442725 () List!63625)

(assert (=> bm!442716 (= call!442726 (derivationStepZipperDown!1117 (ite c!1019056 (regOne!32063 (h!69949 (exprs!5659 lt!2289027))) (ite c!1019060 (regTwo!32062 (h!69949 (exprs!5659 lt!2289027))) (ite c!1019059 (regOne!32062 (h!69949 (exprs!5659 lt!2289027))) (reg!16104 (h!69949 (exprs!5659 lt!2289027)))))) (ite (or c!1019056 c!1019060) (Context!10319 (t!376959 (exprs!5659 lt!2289027))) (Context!10319 call!442725)) (h!69948 s!2326)))))

(declare-fun bm!442717 () Bool)

(declare-fun call!442722 () List!63625)

(assert (=> bm!442717 (= call!442725 call!442722)))

(declare-fun bm!442718 () Bool)

(declare-fun call!442724 () (InoxSet Context!10318))

(assert (=> bm!442718 (= call!442724 (derivationStepZipperDown!1117 (ite c!1019056 (regTwo!32063 (h!69949 (exprs!5659 lt!2289027))) (regOne!32062 (h!69949 (exprs!5659 lt!2289027)))) (ite c!1019056 (Context!10319 (t!376959 (exprs!5659 lt!2289027))) (Context!10319 call!442722)) (h!69948 s!2326)))))

(declare-fun b!5764740 () Bool)

(declare-fun e!3541888 () (InoxSet Context!10318))

(assert (=> b!5764740 (= e!3541889 e!3541888)))

(assert (=> b!5764740 (= c!1019059 ((_ is Concat!24620) (h!69949 (exprs!5659 lt!2289027))))))

(declare-fun b!5764741 () Bool)

(declare-fun call!442723 () (InoxSet Context!10318))

(assert (=> b!5764741 (= e!3541889 ((_ map or) call!442724 call!442723))))

(declare-fun b!5764742 () Bool)

(declare-fun call!442721 () (InoxSet Context!10318))

(assert (=> b!5764742 (= e!3541888 call!442721)))

(declare-fun b!5764743 () Bool)

(assert (=> b!5764743 (= e!3541892 ((_ map or) call!442726 call!442724))))

(declare-fun bm!442719 () Bool)

(assert (=> bm!442719 (= call!442723 call!442726)))

(declare-fun bm!442720 () Bool)

(assert (=> bm!442720 (= call!442721 call!442723)))

(declare-fun b!5764744 () Bool)

(declare-fun e!3541891 () (InoxSet Context!10318))

(assert (=> b!5764744 (= e!3541891 call!442721)))

(declare-fun b!5764745 () Bool)

(declare-fun c!1019058 () Bool)

(assert (=> b!5764745 (= c!1019058 ((_ is Star!15775) (h!69949 (exprs!5659 lt!2289027))))))

(assert (=> b!5764745 (= e!3541888 e!3541891)))

(declare-fun b!5764746 () Bool)

(assert (=> b!5764746 (= e!3541891 ((as const (Array Context!10318 Bool)) false))))

(declare-fun bm!442721 () Bool)

(assert (=> bm!442721 (= call!442722 ($colon$colon!1770 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 lt!2289027)))) (ite (or c!1019060 c!1019059) (regTwo!32062 (h!69949 (exprs!5659 lt!2289027))) (h!69949 (exprs!5659 lt!2289027)))))))

(declare-fun b!5764747 () Bool)

(assert (=> b!5764747 (= e!3541887 (nullable!5807 (regOne!32062 (h!69949 (exprs!5659 lt!2289027)))))))

(declare-fun b!5764748 () Bool)

(assert (=> b!5764748 (= e!3541890 (store ((as const (Array Context!10318 Bool)) false) (Context!10319 (t!376959 (exprs!5659 lt!2289027))) true))))

(assert (= (and d!1816157 c!1019057) b!5764748))

(assert (= (and d!1816157 (not c!1019057)) b!5764738))

(assert (= (and b!5764738 c!1019056) b!5764743))

(assert (= (and b!5764738 (not c!1019056)) b!5764739))

(assert (= (and b!5764739 res!2432885) b!5764747))

(assert (= (and b!5764739 c!1019060) b!5764741))

(assert (= (and b!5764739 (not c!1019060)) b!5764740))

(assert (= (and b!5764740 c!1019059) b!5764742))

(assert (= (and b!5764740 (not c!1019059)) b!5764745))

(assert (= (and b!5764745 c!1019058) b!5764744))

(assert (= (and b!5764745 (not c!1019058)) b!5764746))

(assert (= (or b!5764742 b!5764744) bm!442717))

(assert (= (or b!5764742 b!5764744) bm!442720))

(assert (= (or b!5764741 bm!442717) bm!442721))

(assert (= (or b!5764741 bm!442720) bm!442719))

(assert (= (or b!5764743 b!5764741) bm!442718))

(assert (= (or b!5764743 bm!442719) bm!442716))

(declare-fun m!6711052 () Bool)

(assert (=> bm!442716 m!6711052))

(declare-fun m!6711054 () Bool)

(assert (=> b!5764747 m!6711054))

(declare-fun m!6711056 () Bool)

(assert (=> bm!442721 m!6711056))

(declare-fun m!6711058 () Bool)

(assert (=> b!5764748 m!6711058))

(declare-fun m!6711060 () Bool)

(assert (=> bm!442718 m!6711060))

(assert (=> bm!442547 d!1816157))

(declare-fun d!1816159 () Bool)

(assert (=> d!1816159 (= (Exists!2875 lambda!312976) (choose!43713 lambda!312976))))

(declare-fun bs!1352189 () Bool)

(assert (= bs!1352189 d!1816159))

(declare-fun m!6711062 () Bool)

(assert (=> bs!1352189 m!6711062))

(assert (=> d!1815805 d!1816159))

(declare-fun d!1816161 () Bool)

(assert (=> d!1816161 (= (Exists!2875 lambda!312977) (choose!43713 lambda!312977))))

(declare-fun bs!1352190 () Bool)

(assert (= bs!1352190 d!1816161))

(declare-fun m!6711064 () Bool)

(assert (=> bs!1352190 m!6711064))

(assert (=> d!1815805 d!1816161))

(declare-fun bs!1352191 () Bool)

(declare-fun d!1816163 () Bool)

(assert (= bs!1352191 (and d!1816163 b!5763721)))

(declare-fun lambda!313038 () Int)

(assert (=> bs!1352191 (not (= lambda!313038 lambda!312968))))

(declare-fun bs!1352192 () Bool)

(assert (= bs!1352192 (and d!1816163 d!1815803)))

(assert (=> bs!1352192 (= lambda!313038 lambda!312971)))

(declare-fun bs!1352193 () Bool)

(assert (= bs!1352193 (and d!1816163 b!5764686)))

(assert (=> bs!1352193 (not (= lambda!313038 lambda!313027))))

(declare-fun bs!1352194 () Bool)

(assert (= bs!1352194 (and d!1816163 b!5764646)))

(assert (=> bs!1352194 (not (= lambda!313038 lambda!313024))))

(declare-fun bs!1352195 () Bool)

(assert (= bs!1352195 (and d!1816163 b!5763724)))

(assert (=> bs!1352195 (not (= lambda!313038 lambda!312967))))

(declare-fun bs!1352196 () Bool)

(assert (= bs!1352196 (and d!1816163 b!5763152)))

(assert (=> bs!1352196 (not (= lambda!313038 lambda!312916))))

(declare-fun bs!1352197 () Bool)

(assert (= bs!1352197 (and d!1816163 b!5763848)))

(assert (=> bs!1352197 (not (= lambda!313038 lambda!312983))))

(declare-fun bs!1352198 () Bool)

(assert (= bs!1352198 (and d!1816163 b!5763823)))

(assert (=> bs!1352198 (not (= lambda!313038 lambda!312981))))

(declare-fun bs!1352199 () Bool)

(assert (= bs!1352199 (and d!1816163 d!1816153)))

(assert (=> bs!1352199 (= lambda!313038 lambda!313031)))

(declare-fun bs!1352200 () Bool)

(assert (= bs!1352200 (and d!1816163 d!1815805)))

(assert (=> bs!1352200 (= lambda!313038 lambda!312976)))

(declare-fun bs!1352201 () Bool)

(assert (= bs!1352201 (and d!1816163 b!5764733)))

(assert (=> bs!1352201 (not (= lambda!313038 lambda!313032))))

(assert (=> bs!1352200 (not (= lambda!313038 lambda!312977))))

(declare-fun bs!1352202 () Bool)

(assert (= bs!1352202 (and d!1816163 b!5763845)))

(assert (=> bs!1352202 (not (= lambda!313038 lambda!312984))))

(declare-fun bs!1352203 () Bool)

(assert (= bs!1352203 (and d!1816163 b!5763820)))

(assert (=> bs!1352203 (not (= lambda!313038 lambda!312982))))

(assert (=> bs!1352196 (= lambda!313038 lambda!312915)))

(declare-fun bs!1352204 () Bool)

(assert (= bs!1352204 (and d!1816163 b!5764730)))

(assert (=> bs!1352204 (not (= lambda!313038 lambda!313033))))

(declare-fun bs!1352205 () Bool)

(assert (= bs!1352205 (and d!1816163 b!5764643)))

(assert (=> bs!1352205 (not (= lambda!313038 lambda!313025))))

(declare-fun bs!1352206 () Bool)

(assert (= bs!1352206 (and d!1816163 b!5764689)))

(assert (=> bs!1352206 (not (= lambda!313038 lambda!313026))))

(assert (=> d!1816163 true))

(assert (=> d!1816163 true))

(assert (=> d!1816163 true))

(declare-fun lambda!313039 () Int)

(assert (=> bs!1352191 (= lambda!313039 lambda!312968)))

(assert (=> bs!1352192 (not (= lambda!313039 lambda!312971))))

(assert (=> bs!1352193 (= (and (= (regOne!32062 r!7292) (regOne!32062 (regOne!32063 r!7292))) (= (regTwo!32062 r!7292) (regTwo!32062 (regOne!32063 r!7292)))) (= lambda!313039 lambda!313027))))

(assert (=> bs!1352194 (not (= lambda!313039 lambda!313024))))

(declare-fun bs!1352207 () Bool)

(assert (= bs!1352207 d!1816163))

(assert (=> bs!1352207 (not (= lambda!313039 lambda!313038))))

(assert (=> bs!1352195 (not (= lambda!313039 lambda!312967))))

(assert (=> bs!1352196 (= lambda!313039 lambda!312916)))

(assert (=> bs!1352197 (not (= lambda!313039 lambda!312983))))

(assert (=> bs!1352198 (not (= lambda!313039 lambda!312981))))

(assert (=> bs!1352199 (not (= lambda!313039 lambda!313031))))

(assert (=> bs!1352200 (not (= lambda!313039 lambda!312976))))

(assert (=> bs!1352201 (not (= lambda!313039 lambda!313032))))

(assert (=> bs!1352200 (= lambda!313039 lambda!312977)))

(assert (=> bs!1352202 (= (and (= (regOne!32062 r!7292) (regOne!32062 (regTwo!32062 r!7292))) (= (regTwo!32062 r!7292) (regTwo!32062 (regTwo!32062 r!7292)))) (= lambda!313039 lambda!312984))))

(assert (=> bs!1352203 (= (and (= (regOne!32062 r!7292) (regOne!32062 (regOne!32062 r!7292))) (= (regTwo!32062 r!7292) (regTwo!32062 (regOne!32062 r!7292)))) (= lambda!313039 lambda!312982))))

(assert (=> bs!1352196 (not (= lambda!313039 lambda!312915))))

(assert (=> bs!1352204 (= (and (= (regOne!32062 r!7292) (regOne!32062 (regTwo!32063 (regTwo!32062 r!7292)))) (= (regTwo!32062 r!7292) (regTwo!32062 (regTwo!32063 (regTwo!32062 r!7292))))) (= lambda!313039 lambda!313033))))

(assert (=> bs!1352205 (= (and (= (regOne!32062 r!7292) (regOne!32062 (regOne!32063 (regOne!32062 r!7292)))) (= (regTwo!32062 r!7292) (regTwo!32062 (regOne!32063 (regOne!32062 r!7292))))) (= lambda!313039 lambda!313025))))

(assert (=> bs!1352206 (not (= lambda!313039 lambda!313026))))

(assert (=> d!1816163 true))

(assert (=> d!1816163 true))

(assert (=> d!1816163 true))

(assert (=> d!1816163 (= (Exists!2875 lambda!313038) (Exists!2875 lambda!313039))))

(assert (=> d!1816163 true))

(declare-fun _$90!1507 () Unit!156632)

(assert (=> d!1816163 (= (choose!43715 (regOne!32062 r!7292) (regTwo!32062 r!7292) s!2326) _$90!1507)))

(declare-fun m!6711066 () Bool)

(assert (=> bs!1352207 m!6711066))

(declare-fun m!6711068 () Bool)

(assert (=> bs!1352207 m!6711068))

(assert (=> d!1815805 d!1816163))

(assert (=> d!1815805 d!1816115))

(assert (=> bs!1351788 d!1815761))

(declare-fun bs!1352208 () Bool)

(declare-fun d!1816165 () Bool)

(assert (= bs!1352208 (and d!1816165 d!1815717)))

(declare-fun lambda!313040 () Int)

(assert (=> bs!1352208 (= lambda!313040 lambda!312941)))

(declare-fun bs!1352209 () Bool)

(assert (= bs!1352209 (and d!1816165 d!1815723)))

(assert (=> bs!1352209 (= lambda!313040 lambda!312949)))

(declare-fun bs!1352210 () Bool)

(assert (= bs!1352210 (and d!1816165 d!1815845)))

(assert (=> bs!1352210 (= lambda!313040 lambda!312989)))

(declare-fun bs!1352211 () Bool)

(assert (= bs!1352211 (and d!1816165 d!1815839)))

(assert (=> bs!1352211 (= lambda!313040 lambda!312988)))

(declare-fun bs!1352212 () Bool)

(assert (= bs!1352212 (and d!1816165 d!1815691)))

(assert (=> bs!1352212 (= lambda!313040 lambda!312926)))

(declare-fun b!5764757 () Bool)

(declare-fun e!3541902 () Bool)

(declare-fun e!3541901 () Bool)

(assert (=> b!5764757 (= e!3541902 e!3541901)))

(declare-fun c!1019062 () Bool)

(assert (=> b!5764757 (= c!1019062 (isEmpty!35389 (t!376959 (unfocusZipperList!1203 zl!343))))))

(declare-fun b!5764758 () Bool)

(declare-fun e!3541900 () Regex!15775)

(assert (=> b!5764758 (= e!3541900 (h!69949 (t!376959 (unfocusZipperList!1203 zl!343))))))

(declare-fun b!5764759 () Bool)

(declare-fun e!3541897 () Bool)

(assert (=> b!5764759 (= e!3541901 e!3541897)))

(declare-fun c!1019064 () Bool)

(assert (=> b!5764759 (= c!1019064 (isEmpty!35389 (tail!11282 (t!376959 (unfocusZipperList!1203 zl!343)))))))

(assert (=> d!1816165 e!3541902))

(declare-fun res!2432895 () Bool)

(assert (=> d!1816165 (=> (not res!2432895) (not e!3541902))))

(declare-fun lt!2289161 () Regex!15775)

(assert (=> d!1816165 (= res!2432895 (validRegex!7511 lt!2289161))))

(assert (=> d!1816165 (= lt!2289161 e!3541900)))

(declare-fun c!1019061 () Bool)

(declare-fun e!3541899 () Bool)

(assert (=> d!1816165 (= c!1019061 e!3541899)))

(declare-fun res!2432894 () Bool)

(assert (=> d!1816165 (=> (not res!2432894) (not e!3541899))))

(assert (=> d!1816165 (= res!2432894 ((_ is Cons!63501) (t!376959 (unfocusZipperList!1203 zl!343))))))

(assert (=> d!1816165 (forall!14893 (t!376959 (unfocusZipperList!1203 zl!343)) lambda!313040)))

(assert (=> d!1816165 (= (generalisedUnion!1638 (t!376959 (unfocusZipperList!1203 zl!343))) lt!2289161)))

(declare-fun b!5764760 () Bool)

(declare-fun e!3541898 () Regex!15775)

(assert (=> b!5764760 (= e!3541898 EmptyLang!15775)))

(declare-fun b!5764761 () Bool)

(assert (=> b!5764761 (= e!3541901 (isEmptyLang!1271 lt!2289161))))

(declare-fun b!5764762 () Bool)

(assert (=> b!5764762 (= e!3541898 (Union!15775 (h!69949 (t!376959 (unfocusZipperList!1203 zl!343))) (generalisedUnion!1638 (t!376959 (t!376959 (unfocusZipperList!1203 zl!343))))))))

(declare-fun b!5764763 () Bool)

(assert (=> b!5764763 (= e!3541899 (isEmpty!35389 (t!376959 (t!376959 (unfocusZipperList!1203 zl!343)))))))

(declare-fun b!5764764 () Bool)

(assert (=> b!5764764 (= e!3541897 (isUnion!701 lt!2289161))))

(declare-fun b!5764765 () Bool)

(assert (=> b!5764765 (= e!3541897 (= lt!2289161 (head!12187 (t!376959 (unfocusZipperList!1203 zl!343)))))))

(declare-fun b!5764766 () Bool)

(assert (=> b!5764766 (= e!3541900 e!3541898)))

(declare-fun c!1019063 () Bool)

(assert (=> b!5764766 (= c!1019063 ((_ is Cons!63501) (t!376959 (unfocusZipperList!1203 zl!343))))))

(assert (= (and d!1816165 res!2432894) b!5764763))

(assert (= (and d!1816165 c!1019061) b!5764758))

(assert (= (and d!1816165 (not c!1019061)) b!5764766))

(assert (= (and b!5764766 c!1019063) b!5764762))

(assert (= (and b!5764766 (not c!1019063)) b!5764760))

(assert (= (and d!1816165 res!2432895) b!5764757))

(assert (= (and b!5764757 c!1019062) b!5764761))

(assert (= (and b!5764757 (not c!1019062)) b!5764759))

(assert (= (and b!5764759 c!1019064) b!5764765))

(assert (= (and b!5764759 (not c!1019064)) b!5764764))

(declare-fun m!6711070 () Bool)

(assert (=> b!5764759 m!6711070))

(assert (=> b!5764759 m!6711070))

(declare-fun m!6711072 () Bool)

(assert (=> b!5764759 m!6711072))

(declare-fun m!6711074 () Bool)

(assert (=> b!5764765 m!6711074))

(declare-fun m!6711076 () Bool)

(assert (=> b!5764762 m!6711076))

(declare-fun m!6711078 () Bool)

(assert (=> b!5764764 m!6711078))

(declare-fun m!6711080 () Bool)

(assert (=> b!5764763 m!6711080))

(declare-fun m!6711082 () Bool)

(assert (=> b!5764761 m!6711082))

(assert (=> b!5764757 m!6710110))

(declare-fun m!6711084 () Bool)

(assert (=> d!1816165 m!6711084))

(declare-fun m!6711086 () Bool)

(assert (=> d!1816165 m!6711086))

(assert (=> b!5763380 d!1816165))

(declare-fun b!5764781 () Bool)

(declare-fun e!3541920 () Bool)

(declare-fun e!3541916 () Bool)

(assert (=> b!5764781 (= e!3541920 e!3541916)))

(declare-fun c!1019067 () Bool)

(assert (=> b!5764781 (= c!1019067 ((_ is Union!15775) (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun b!5764782 () Bool)

(declare-fun e!3541919 () Bool)

(assert (=> b!5764782 (= e!3541919 e!3541920)))

(declare-fun res!2432906 () Bool)

(assert (=> b!5764782 (=> res!2432906 e!3541920)))

(assert (=> b!5764782 (= res!2432906 ((_ is Star!15775) (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun d!1816167 () Bool)

(declare-fun res!2432907 () Bool)

(declare-fun e!3541918 () Bool)

(assert (=> d!1816167 (=> res!2432907 e!3541918)))

(assert (=> d!1816167 (= res!2432907 ((_ is EmptyExpr!15775) (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(assert (=> d!1816167 (= (nullableFct!1848 (h!69949 (exprs!5659 (h!69950 zl!343)))) e!3541918)))

(declare-fun b!5764783 () Bool)

(declare-fun e!3541917 () Bool)

(declare-fun call!442731 () Bool)

(assert (=> b!5764783 (= e!3541917 call!442731)))

(declare-fun b!5764784 () Bool)

(declare-fun e!3541915 () Bool)

(assert (=> b!5764784 (= e!3541916 e!3541915)))

(declare-fun res!2432908 () Bool)

(declare-fun call!442732 () Bool)

(assert (=> b!5764784 (= res!2432908 call!442732)))

(assert (=> b!5764784 (=> res!2432908 e!3541915)))

(declare-fun b!5764785 () Bool)

(assert (=> b!5764785 (= e!3541915 call!442731)))

(declare-fun bm!442726 () Bool)

(assert (=> bm!442726 (= call!442732 (nullable!5807 (ite c!1019067 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))))))))

(declare-fun b!5764786 () Bool)

(assert (=> b!5764786 (= e!3541918 e!3541919)))

(declare-fun res!2432909 () Bool)

(assert (=> b!5764786 (=> (not res!2432909) (not e!3541919))))

(assert (=> b!5764786 (= res!2432909 (and (not ((_ is EmptyLang!15775) (h!69949 (exprs!5659 (h!69950 zl!343))))) (not ((_ is ElementMatch!15775) (h!69949 (exprs!5659 (h!69950 zl!343)))))))))

(declare-fun bm!442727 () Bool)

(assert (=> bm!442727 (= call!442731 (nullable!5807 (ite c!1019067 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))))))))

(declare-fun b!5764787 () Bool)

(assert (=> b!5764787 (= e!3541916 e!3541917)))

(declare-fun res!2432910 () Bool)

(assert (=> b!5764787 (= res!2432910 call!442732)))

(assert (=> b!5764787 (=> (not res!2432910) (not e!3541917))))

(assert (= (and d!1816167 (not res!2432907)) b!5764786))

(assert (= (and b!5764786 res!2432909) b!5764782))

(assert (= (and b!5764782 (not res!2432906)) b!5764781))

(assert (= (and b!5764781 c!1019067) b!5764784))

(assert (= (and b!5764781 (not c!1019067)) b!5764787))

(assert (= (and b!5764784 (not res!2432908)) b!5764785))

(assert (= (and b!5764787 res!2432910) b!5764783))

(assert (= (or b!5764785 b!5764783) bm!442727))

(assert (= (or b!5764784 b!5764787) bm!442726))

(declare-fun m!6711088 () Bool)

(assert (=> bm!442726 m!6711088))

(declare-fun m!6711090 () Bool)

(assert (=> bm!442727 m!6711090))

(assert (=> d!1815769 d!1816167))

(declare-fun d!1816169 () Bool)

(assert (=> d!1816169 (= (isEmpty!35392 (tail!11281 s!2326)) ((_ is Nil!63500) (tail!11281 s!2326)))))

(assert (=> b!5763839 d!1816169))

(assert (=> b!5763839 d!1816093))

(declare-fun d!1816171 () Bool)

(assert (=> d!1816171 (= (flatMap!1388 lt!2289015 lambda!312985) (choose!43711 lt!2289015 lambda!312985))))

(declare-fun bs!1352213 () Bool)

(assert (= bs!1352213 d!1816171))

(declare-fun m!6711092 () Bool)

(assert (=> bs!1352213 m!6711092))

(assert (=> d!1815831 d!1816171))

(assert (=> d!1815827 d!1815825))

(assert (=> d!1815827 d!1815823))

(declare-fun d!1816173 () Bool)

(assert (=> d!1816173 (= (matchR!7960 (regTwo!32062 r!7292) s!2326) (matchRSpec!2878 (regTwo!32062 r!7292) s!2326))))

(assert (=> d!1816173 true))

(declare-fun _$88!4070 () Unit!156632)

(assert (=> d!1816173 (= (choose!43712 (regTwo!32062 r!7292) s!2326) _$88!4070)))

(declare-fun bs!1352214 () Bool)

(assert (= bs!1352214 d!1816173))

(assert (=> bs!1352214 m!6709940))

(assert (=> bs!1352214 m!6709950))

(assert (=> d!1815827 d!1816173))

(assert (=> d!1815827 d!1816099))

(assert (=> b!5763762 d!1816091))

(assert (=> b!5763856 d!1816091))

(declare-fun d!1816175 () Bool)

(declare-fun res!2432911 () Bool)

(declare-fun e!3541921 () Bool)

(assert (=> d!1816175 (=> res!2432911 e!3541921)))

(assert (=> d!1816175 (= res!2432911 ((_ is Nil!63501) (exprs!5659 setElem!38707)))))

(assert (=> d!1816175 (= (forall!14893 (exprs!5659 setElem!38707) lambda!312926) e!3541921)))

(declare-fun b!5764788 () Bool)

(declare-fun e!3541922 () Bool)

(assert (=> b!5764788 (= e!3541921 e!3541922)))

(declare-fun res!2432912 () Bool)

(assert (=> b!5764788 (=> (not res!2432912) (not e!3541922))))

(assert (=> b!5764788 (= res!2432912 (dynLambda!24859 lambda!312926 (h!69949 (exprs!5659 setElem!38707))))))

(declare-fun b!5764789 () Bool)

(assert (=> b!5764789 (= e!3541922 (forall!14893 (t!376959 (exprs!5659 setElem!38707)) lambda!312926))))

(assert (= (and d!1816175 (not res!2432911)) b!5764788))

(assert (= (and b!5764788 res!2432912) b!5764789))

(declare-fun b_lambda!217631 () Bool)

(assert (=> (not b_lambda!217631) (not b!5764788)))

(declare-fun m!6711094 () Bool)

(assert (=> b!5764788 m!6711094))

(declare-fun m!6711096 () Bool)

(assert (=> b!5764789 m!6711096))

(assert (=> d!1815691 d!1816175))

(assert (=> b!5763439 d!1815839))

(declare-fun bs!1352215 () Bool)

(declare-fun d!1816177 () Bool)

(assert (= bs!1352215 (and d!1816177 d!1815717)))

(declare-fun lambda!313041 () Int)

(assert (=> bs!1352215 (= lambda!313041 lambda!312941)))

(declare-fun bs!1352216 () Bool)

(assert (= bs!1352216 (and d!1816177 d!1816165)))

(assert (=> bs!1352216 (= lambda!313041 lambda!313040)))

(declare-fun bs!1352217 () Bool)

(assert (= bs!1352217 (and d!1816177 d!1815723)))

(assert (=> bs!1352217 (= lambda!313041 lambda!312949)))

(declare-fun bs!1352218 () Bool)

(assert (= bs!1352218 (and d!1816177 d!1815845)))

(assert (=> bs!1352218 (= lambda!313041 lambda!312989)))

(declare-fun bs!1352219 () Bool)

(assert (= bs!1352219 (and d!1816177 d!1815839)))

(assert (=> bs!1352219 (= lambda!313041 lambda!312988)))

(declare-fun bs!1352220 () Bool)

(assert (= bs!1352220 (and d!1816177 d!1815691)))

(assert (=> bs!1352220 (= lambda!313041 lambda!312926)))

(declare-fun lt!2289162 () List!63625)

(assert (=> d!1816177 (forall!14893 lt!2289162 lambda!313041)))

(declare-fun e!3541923 () List!63625)

(assert (=> d!1816177 (= lt!2289162 e!3541923)))

(declare-fun c!1019068 () Bool)

(assert (=> d!1816177 (= c!1019068 ((_ is Cons!63502) (t!376960 zl!343)))))

(assert (=> d!1816177 (= (unfocusZipperList!1203 (t!376960 zl!343)) lt!2289162)))

(declare-fun b!5764790 () Bool)

(assert (=> b!5764790 (= e!3541923 (Cons!63501 (generalisedConcat!1390 (exprs!5659 (h!69950 (t!376960 zl!343)))) (unfocusZipperList!1203 (t!376960 (t!376960 zl!343)))))))

(declare-fun b!5764791 () Bool)

(assert (=> b!5764791 (= e!3541923 Nil!63501)))

(assert (= (and d!1816177 c!1019068) b!5764790))

(assert (= (and d!1816177 (not c!1019068)) b!5764791))

(declare-fun m!6711098 () Bool)

(assert (=> d!1816177 m!6711098))

(declare-fun m!6711100 () Bool)

(assert (=> b!5764790 m!6711100))

(declare-fun m!6711102 () Bool)

(assert (=> b!5764790 m!6711102))

(assert (=> b!5763439 d!1816177))

(assert (=> b!5763835 d!1816169))

(assert (=> b!5763835 d!1816093))

(assert (=> d!1815821 d!1816097))

(assert (=> d!1815821 d!1816115))

(declare-fun d!1816179 () Bool)

(declare-fun e!3541928 () Bool)

(assert (=> d!1816179 e!3541928))

(declare-fun res!2432917 () Bool)

(assert (=> d!1816179 (=> (not res!2432917) (not e!3541928))))

(declare-fun lt!2289165 () List!63624)

(declare-fun content!11591 (List!63624) (InoxSet C!31820))

(assert (=> d!1816179 (= res!2432917 (= (content!11591 lt!2289165) ((_ map or) (content!11591 (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500))) (content!11591 (t!376958 s!2326)))))))

(declare-fun e!3541929 () List!63624)

(assert (=> d!1816179 (= lt!2289165 e!3541929)))

(declare-fun c!1019071 () Bool)

(assert (=> d!1816179 (= c!1019071 ((_ is Nil!63500) (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500))))))

(assert (=> d!1816179 (= (++!13989 (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500)) (t!376958 s!2326)) lt!2289165)))

(declare-fun b!5764802 () Bool)

(declare-fun res!2432918 () Bool)

(assert (=> b!5764802 (=> (not res!2432918) (not e!3541928))))

(declare-fun size!40075 (List!63624) Int)

(assert (=> b!5764802 (= res!2432918 (= (size!40075 lt!2289165) (+ (size!40075 (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500))) (size!40075 (t!376958 s!2326)))))))

(declare-fun b!5764803 () Bool)

(assert (=> b!5764803 (= e!3541928 (or (not (= (t!376958 s!2326) Nil!63500)) (= lt!2289165 (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500)))))))

(declare-fun b!5764801 () Bool)

(assert (=> b!5764801 (= e!3541929 (Cons!63500 (h!69948 (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500))) (++!13989 (t!376958 (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500))) (t!376958 s!2326))))))

(declare-fun b!5764800 () Bool)

(assert (=> b!5764800 (= e!3541929 (t!376958 s!2326))))

(assert (= (and d!1816179 c!1019071) b!5764800))

(assert (= (and d!1816179 (not c!1019071)) b!5764801))

(assert (= (and d!1816179 res!2432917) b!5764802))

(assert (= (and b!5764802 res!2432918) b!5764803))

(declare-fun m!6711104 () Bool)

(assert (=> d!1816179 m!6711104))

(assert (=> d!1816179 m!6710322))

(declare-fun m!6711106 () Bool)

(assert (=> d!1816179 m!6711106))

(declare-fun m!6711108 () Bool)

(assert (=> d!1816179 m!6711108))

(declare-fun m!6711110 () Bool)

(assert (=> b!5764802 m!6711110))

(assert (=> b!5764802 m!6710322))

(declare-fun m!6711112 () Bool)

(assert (=> b!5764802 m!6711112))

(declare-fun m!6711114 () Bool)

(assert (=> b!5764802 m!6711114))

(declare-fun m!6711116 () Bool)

(assert (=> b!5764801 m!6711116))

(assert (=> b!5763796 d!1816179))

(declare-fun d!1816181 () Bool)

(declare-fun e!3541930 () Bool)

(assert (=> d!1816181 e!3541930))

(declare-fun res!2432919 () Bool)

(assert (=> d!1816181 (=> (not res!2432919) (not e!3541930))))

(declare-fun lt!2289166 () List!63624)

(assert (=> d!1816181 (= res!2432919 (= (content!11591 lt!2289166) ((_ map or) (content!11591 Nil!63500) (content!11591 (Cons!63500 (h!69948 s!2326) Nil!63500)))))))

(declare-fun e!3541931 () List!63624)

(assert (=> d!1816181 (= lt!2289166 e!3541931)))

(declare-fun c!1019072 () Bool)

(assert (=> d!1816181 (= c!1019072 ((_ is Nil!63500) Nil!63500))))

(assert (=> d!1816181 (= (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500)) lt!2289166)))

(declare-fun b!5764806 () Bool)

(declare-fun res!2432920 () Bool)

(assert (=> b!5764806 (=> (not res!2432920) (not e!3541930))))

(assert (=> b!5764806 (= res!2432920 (= (size!40075 lt!2289166) (+ (size!40075 Nil!63500) (size!40075 (Cons!63500 (h!69948 s!2326) Nil!63500)))))))

(declare-fun b!5764807 () Bool)

(assert (=> b!5764807 (= e!3541930 (or (not (= (Cons!63500 (h!69948 s!2326) Nil!63500) Nil!63500)) (= lt!2289166 Nil!63500)))))

(declare-fun b!5764805 () Bool)

(assert (=> b!5764805 (= e!3541931 (Cons!63500 (h!69948 Nil!63500) (++!13989 (t!376958 Nil!63500) (Cons!63500 (h!69948 s!2326) Nil!63500))))))

(declare-fun b!5764804 () Bool)

(assert (=> b!5764804 (= e!3541931 (Cons!63500 (h!69948 s!2326) Nil!63500))))

(assert (= (and d!1816181 c!1019072) b!5764804))

(assert (= (and d!1816181 (not c!1019072)) b!5764805))

(assert (= (and d!1816181 res!2432919) b!5764806))

(assert (= (and b!5764806 res!2432920) b!5764807))

(declare-fun m!6711118 () Bool)

(assert (=> d!1816181 m!6711118))

(declare-fun m!6711120 () Bool)

(assert (=> d!1816181 m!6711120))

(declare-fun m!6711122 () Bool)

(assert (=> d!1816181 m!6711122))

(declare-fun m!6711124 () Bool)

(assert (=> b!5764806 m!6711124))

(declare-fun m!6711126 () Bool)

(assert (=> b!5764806 m!6711126))

(declare-fun m!6711128 () Bool)

(assert (=> b!5764806 m!6711128))

(declare-fun m!6711130 () Bool)

(assert (=> b!5764805 m!6711130))

(assert (=> b!5763796 d!1816181))

(declare-fun d!1816183 () Bool)

(assert (=> d!1816183 (= (++!13989 (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500)) (t!376958 s!2326)) s!2326)))

(declare-fun lt!2289169 () Unit!156632)

(declare-fun choose!43718 (List!63624 C!31820 List!63624 List!63624) Unit!156632)

(assert (=> d!1816183 (= lt!2289169 (choose!43718 Nil!63500 (h!69948 s!2326) (t!376958 s!2326) s!2326))))

(assert (=> d!1816183 (= (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) (t!376958 s!2326))) s!2326)))

(assert (=> d!1816183 (= (lemmaMoveElementToOtherListKeepsConcatEq!2106 Nil!63500 (h!69948 s!2326) (t!376958 s!2326) s!2326) lt!2289169)))

(declare-fun bs!1352221 () Bool)

(assert (= bs!1352221 d!1816183))

(assert (=> bs!1352221 m!6710322))

(assert (=> bs!1352221 m!6710322))

(assert (=> bs!1352221 m!6710324))

(declare-fun m!6711132 () Bool)

(assert (=> bs!1352221 m!6711132))

(declare-fun m!6711134 () Bool)

(assert (=> bs!1352221 m!6711134))

(assert (=> b!5763796 d!1816183))

(declare-fun b!5764808 () Bool)

(declare-fun res!2432925 () Bool)

(declare-fun e!3541933 () Bool)

(assert (=> b!5764808 (=> (not res!2432925) (not e!3541933))))

(declare-fun lt!2289171 () Option!15784)

(assert (=> b!5764808 (= res!2432925 (matchR!7960 (regTwo!32062 r!7292) (_2!36175 (get!21910 lt!2289171))))))

(declare-fun b!5764809 () Bool)

(declare-fun e!3541935 () Bool)

(assert (=> b!5764809 (= e!3541935 (not (isDefined!12487 lt!2289171)))))

(declare-fun b!5764810 () Bool)

(assert (=> b!5764810 (= e!3541933 (= (++!13989 (_1!36175 (get!21910 lt!2289171)) (_2!36175 (get!21910 lt!2289171))) s!2326))))

(declare-fun b!5764811 () Bool)

(declare-fun e!3541932 () Option!15784)

(assert (=> b!5764811 (= e!3541932 None!15783)))

(declare-fun b!5764812 () Bool)

(declare-fun e!3541934 () Bool)

(assert (=> b!5764812 (= e!3541934 (matchR!7960 (regTwo!32062 r!7292) (t!376958 s!2326)))))

(declare-fun b!5764813 () Bool)

(declare-fun e!3541936 () Option!15784)

(assert (=> b!5764813 (= e!3541936 (Some!15783 (tuple2!65745 (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500)) (t!376958 s!2326))))))

(declare-fun b!5764814 () Bool)

(declare-fun res!2432922 () Bool)

(assert (=> b!5764814 (=> (not res!2432922) (not e!3541933))))

(assert (=> b!5764814 (= res!2432922 (matchR!7960 (regOne!32062 r!7292) (_1!36175 (get!21910 lt!2289171))))))

(declare-fun d!1816185 () Bool)

(assert (=> d!1816185 e!3541935))

(declare-fun res!2432921 () Bool)

(assert (=> d!1816185 (=> res!2432921 e!3541935)))

(assert (=> d!1816185 (= res!2432921 e!3541933)))

(declare-fun res!2432924 () Bool)

(assert (=> d!1816185 (=> (not res!2432924) (not e!3541933))))

(assert (=> d!1816185 (= res!2432924 (isDefined!12487 lt!2289171))))

(assert (=> d!1816185 (= lt!2289171 e!3541936)))

(declare-fun c!1019074 () Bool)

(assert (=> d!1816185 (= c!1019074 e!3541934)))

(declare-fun res!2432923 () Bool)

(assert (=> d!1816185 (=> (not res!2432923) (not e!3541934))))

(assert (=> d!1816185 (= res!2432923 (matchR!7960 (regOne!32062 r!7292) (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500))))))

(assert (=> d!1816185 (validRegex!7511 (regOne!32062 r!7292))))

(assert (=> d!1816185 (= (findConcatSeparation!2198 (regOne!32062 r!7292) (regTwo!32062 r!7292) (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500)) (t!376958 s!2326) s!2326) lt!2289171)))

(declare-fun b!5764815 () Bool)

(declare-fun lt!2289172 () Unit!156632)

(declare-fun lt!2289170 () Unit!156632)

(assert (=> b!5764815 (= lt!2289172 lt!2289170)))

(assert (=> b!5764815 (= (++!13989 (++!13989 (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500)) (Cons!63500 (h!69948 (t!376958 s!2326)) Nil!63500)) (t!376958 (t!376958 s!2326))) s!2326)))

(assert (=> b!5764815 (= lt!2289170 (lemmaMoveElementToOtherListKeepsConcatEq!2106 (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500)) (h!69948 (t!376958 s!2326)) (t!376958 (t!376958 s!2326)) s!2326))))

(assert (=> b!5764815 (= e!3541932 (findConcatSeparation!2198 (regOne!32062 r!7292) (regTwo!32062 r!7292) (++!13989 (++!13989 Nil!63500 (Cons!63500 (h!69948 s!2326) Nil!63500)) (Cons!63500 (h!69948 (t!376958 s!2326)) Nil!63500)) (t!376958 (t!376958 s!2326)) s!2326))))

(declare-fun b!5764816 () Bool)

(assert (=> b!5764816 (= e!3541936 e!3541932)))

(declare-fun c!1019073 () Bool)

(assert (=> b!5764816 (= c!1019073 ((_ is Nil!63500) (t!376958 s!2326)))))

(assert (= (and d!1816185 res!2432923) b!5764812))

(assert (= (and d!1816185 c!1019074) b!5764813))

(assert (= (and d!1816185 (not c!1019074)) b!5764816))

(assert (= (and b!5764816 c!1019073) b!5764811))

(assert (= (and b!5764816 (not c!1019073)) b!5764815))

(assert (= (and d!1816185 res!2432924) b!5764814))

(assert (= (and b!5764814 res!2432922) b!5764808))

(assert (= (and b!5764808 res!2432925) b!5764810))

(assert (= (and d!1816185 (not res!2432921)) b!5764809))

(assert (=> b!5764815 m!6710322))

(declare-fun m!6711136 () Bool)

(assert (=> b!5764815 m!6711136))

(assert (=> b!5764815 m!6711136))

(declare-fun m!6711138 () Bool)

(assert (=> b!5764815 m!6711138))

(assert (=> b!5764815 m!6710322))

(declare-fun m!6711140 () Bool)

(assert (=> b!5764815 m!6711140))

(assert (=> b!5764815 m!6711136))

(declare-fun m!6711142 () Bool)

(assert (=> b!5764815 m!6711142))

(declare-fun m!6711144 () Bool)

(assert (=> b!5764812 m!6711144))

(declare-fun m!6711146 () Bool)

(assert (=> b!5764809 m!6711146))

(declare-fun m!6711148 () Bool)

(assert (=> b!5764810 m!6711148))

(declare-fun m!6711150 () Bool)

(assert (=> b!5764810 m!6711150))

(assert (=> b!5764814 m!6711148))

(declare-fun m!6711152 () Bool)

(assert (=> b!5764814 m!6711152))

(assert (=> d!1816185 m!6711146))

(assert (=> d!1816185 m!6710322))

(declare-fun m!6711154 () Bool)

(assert (=> d!1816185 m!6711154))

(assert (=> d!1816185 m!6710340))

(assert (=> b!5764808 m!6711148))

(declare-fun m!6711156 () Bool)

(assert (=> b!5764808 m!6711156))

(assert (=> b!5763796 d!1816185))

(declare-fun d!1816187 () Bool)

(declare-fun c!1019075 () Bool)

(assert (=> d!1816187 (= c!1019075 (isEmpty!35392 (tail!11281 (t!376958 s!2326))))))

(declare-fun e!3541937 () Bool)

(assert (=> d!1816187 (= (matchZipper!1913 (derivationStepZipper!1854 lt!2289021 (head!12186 (t!376958 s!2326))) (tail!11281 (t!376958 s!2326))) e!3541937)))

(declare-fun b!5764817 () Bool)

(assert (=> b!5764817 (= e!3541937 (nullableZipper!1702 (derivationStepZipper!1854 lt!2289021 (head!12186 (t!376958 s!2326)))))))

(declare-fun b!5764818 () Bool)

(assert (=> b!5764818 (= e!3541937 (matchZipper!1913 (derivationStepZipper!1854 (derivationStepZipper!1854 lt!2289021 (head!12186 (t!376958 s!2326))) (head!12186 (tail!11281 (t!376958 s!2326)))) (tail!11281 (tail!11281 (t!376958 s!2326)))))))

(assert (= (and d!1816187 c!1019075) b!5764817))

(assert (= (and d!1816187 (not c!1019075)) b!5764818))

(assert (=> d!1816187 m!6710070))

(assert (=> d!1816187 m!6711028))

(assert (=> b!5764817 m!6710068))

(declare-fun m!6711158 () Bool)

(assert (=> b!5764817 m!6711158))

(assert (=> b!5764818 m!6710070))

(assert (=> b!5764818 m!6711032))

(assert (=> b!5764818 m!6710068))

(assert (=> b!5764818 m!6711032))

(declare-fun m!6711160 () Bool)

(assert (=> b!5764818 m!6711160))

(assert (=> b!5764818 m!6710070))

(assert (=> b!5764818 m!6711036))

(assert (=> b!5764818 m!6711160))

(assert (=> b!5764818 m!6711036))

(declare-fun m!6711162 () Bool)

(assert (=> b!5764818 m!6711162))

(assert (=> b!5763283 d!1816187))

(declare-fun bs!1352222 () Bool)

(declare-fun d!1816189 () Bool)

(assert (= bs!1352222 (and d!1816189 b!5763167)))

(declare-fun lambda!313042 () Int)

(assert (=> bs!1352222 (= (= (head!12186 (t!376958 s!2326)) (h!69948 s!2326)) (= lambda!313042 lambda!312917))))

(declare-fun bs!1352223 () Bool)

(assert (= bs!1352223 (and d!1816189 d!1815815)))

(assert (=> bs!1352223 (= (= (head!12186 (t!376958 s!2326)) (h!69948 s!2326)) (= lambda!313042 lambda!312980))))

(declare-fun bs!1352224 () Bool)

(assert (= bs!1352224 (and d!1816189 d!1815831)))

(assert (=> bs!1352224 (= (= (head!12186 (t!376958 s!2326)) (h!69948 s!2326)) (= lambda!313042 lambda!312985))))

(declare-fun bs!1352225 () Bool)

(assert (= bs!1352225 (and d!1816189 d!1816145)))

(assert (=> bs!1352225 (= lambda!313042 lambda!313028)))

(assert (=> d!1816189 true))

(assert (=> d!1816189 (= (derivationStepZipper!1854 lt!2289021 (head!12186 (t!376958 s!2326))) (flatMap!1388 lt!2289021 lambda!313042))))

(declare-fun bs!1352226 () Bool)

(assert (= bs!1352226 d!1816189))

(declare-fun m!6711164 () Bool)

(assert (=> bs!1352226 m!6711164))

(assert (=> b!5763283 d!1816189))

(assert (=> b!5763283 d!1816147))

(assert (=> b!5763283 d!1816149))

(assert (=> d!1815835 d!1815833))

(declare-fun d!1816191 () Bool)

(assert (=> d!1816191 (= (flatMap!1388 lt!2289015 lambda!312917) (dynLambda!24857 lambda!312917 lt!2289027))))

(assert (=> d!1816191 true))

(declare-fun _$13!2464 () Unit!156632)

(assert (=> d!1816191 (= (choose!43710 lt!2289015 lt!2289027 lambda!312917) _$13!2464)))

(declare-fun b_lambda!217633 () Bool)

(assert (=> (not b_lambda!217633) (not d!1816191)))

(declare-fun bs!1352227 () Bool)

(assert (= bs!1352227 d!1816191))

(assert (=> bs!1352227 m!6709922))

(assert (=> bs!1352227 m!6710406))

(assert (=> d!1815835 d!1816191))

(assert (=> b!5763864 d!1816169))

(assert (=> b!5763864 d!1816093))

(declare-fun b!5764819 () Bool)

(declare-fun e!3541939 () (InoxSet Context!10318))

(declare-fun call!442733 () (InoxSet Context!10318))

(assert (=> b!5764819 (= e!3541939 call!442733)))

(declare-fun b!5764820 () Bool)

(declare-fun e!3541940 () (InoxSet Context!10318))

(assert (=> b!5764820 (= e!3541940 e!3541939)))

(declare-fun c!1019077 () Bool)

(assert (=> b!5764820 (= c!1019077 ((_ is Cons!63501) (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))))))))

(declare-fun b!5764821 () Bool)

(declare-fun e!3541938 () Bool)

(assert (=> b!5764821 (= e!3541938 (nullable!5807 (h!69949 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))))))))))))

(declare-fun d!1816193 () Bool)

(declare-fun c!1019076 () Bool)

(assert (=> d!1816193 (= c!1019076 e!3541938)))

(declare-fun res!2432926 () Bool)

(assert (=> d!1816193 (=> (not res!2432926) (not e!3541938))))

(assert (=> d!1816193 (= res!2432926 ((_ is Cons!63501) (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))))))))

(assert (=> d!1816193 (= (derivationStepZipperUp!1043 (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (h!69948 s!2326)) e!3541940)))

(declare-fun b!5764822 () Bool)

(assert (=> b!5764822 (= e!3541940 ((_ map or) call!442733 (derivationStepZipperUp!1043 (Context!10319 (t!376959 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))))))))) (h!69948 s!2326))))))

(declare-fun b!5764823 () Bool)

(assert (=> b!5764823 (= e!3541939 ((as const (Array Context!10318 Bool)) false))))

(declare-fun bm!442728 () Bool)

(assert (=> bm!442728 (= call!442733 (derivationStepZipperDown!1117 (h!69949 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))))) (Context!10319 (t!376959 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))))))))) (h!69948 s!2326)))))

(assert (= (and d!1816193 res!2432926) b!5764821))

(assert (= (and d!1816193 c!1019076) b!5764822))

(assert (= (and d!1816193 (not c!1019076)) b!5764820))

(assert (= (and b!5764820 c!1019077) b!5764819))

(assert (= (and b!5764820 (not c!1019077)) b!5764823))

(assert (= (or b!5764822 b!5764819) bm!442728))

(declare-fun m!6711166 () Bool)

(assert (=> b!5764821 m!6711166))

(declare-fun m!6711168 () Bool)

(assert (=> b!5764822 m!6711168))

(declare-fun m!6711170 () Bool)

(assert (=> bm!442728 m!6711170))

(assert (=> b!5763615 d!1816193))

(declare-fun d!1816195 () Bool)

(declare-fun lambda!313045 () Int)

(declare-fun exists!2241 ((InoxSet Context!10318) Int) Bool)

(assert (=> d!1816195 (= (nullableZipper!1702 ((_ map or) lt!2289021 lt!2289025)) (exists!2241 ((_ map or) lt!2289021 lt!2289025) lambda!313045))))

(declare-fun bs!1352228 () Bool)

(assert (= bs!1352228 d!1816195))

(declare-fun m!6711172 () Bool)

(assert (=> bs!1352228 m!6711172))

(assert (=> b!5763813 d!1816195))

(declare-fun d!1816197 () Bool)

(assert (=> d!1816197 (= (isConcat!784 lt!2289130) ((_ is Concat!24620) lt!2289130))))

(assert (=> b!5763922 d!1816197))

(assert (=> b!5763627 d!1815769))

(assert (=> b!5763860 d!1816169))

(assert (=> b!5763860 d!1816093))

(declare-fun b!5764824 () Bool)

(declare-fun e!3541946 () Bool)

(declare-fun e!3541942 () Bool)

(assert (=> b!5764824 (= e!3541946 e!3541942)))

(declare-fun c!1019080 () Bool)

(assert (=> b!5764824 (= c!1019080 ((_ is Union!15775) (regOne!32062 (regOne!32062 r!7292))))))

(declare-fun b!5764825 () Bool)

(declare-fun e!3541945 () Bool)

(assert (=> b!5764825 (= e!3541945 e!3541946)))

(declare-fun res!2432927 () Bool)

(assert (=> b!5764825 (=> res!2432927 e!3541946)))

(assert (=> b!5764825 (= res!2432927 ((_ is Star!15775) (regOne!32062 (regOne!32062 r!7292))))))

(declare-fun d!1816199 () Bool)

(declare-fun res!2432928 () Bool)

(declare-fun e!3541944 () Bool)

(assert (=> d!1816199 (=> res!2432928 e!3541944)))

(assert (=> d!1816199 (= res!2432928 ((_ is EmptyExpr!15775) (regOne!32062 (regOne!32062 r!7292))))))

(assert (=> d!1816199 (= (nullableFct!1848 (regOne!32062 (regOne!32062 r!7292))) e!3541944)))

(declare-fun b!5764826 () Bool)

(declare-fun e!3541943 () Bool)

(declare-fun call!442734 () Bool)

(assert (=> b!5764826 (= e!3541943 call!442734)))

(declare-fun b!5764827 () Bool)

(declare-fun e!3541941 () Bool)

(assert (=> b!5764827 (= e!3541942 e!3541941)))

(declare-fun res!2432929 () Bool)

(declare-fun call!442735 () Bool)

(assert (=> b!5764827 (= res!2432929 call!442735)))

(assert (=> b!5764827 (=> res!2432929 e!3541941)))

(declare-fun b!5764828 () Bool)

(assert (=> b!5764828 (= e!3541941 call!442734)))

(declare-fun bm!442729 () Bool)

(assert (=> bm!442729 (= call!442735 (nullable!5807 (ite c!1019080 (regOne!32063 (regOne!32062 (regOne!32062 r!7292))) (regOne!32062 (regOne!32062 (regOne!32062 r!7292))))))))

(declare-fun b!5764829 () Bool)

(assert (=> b!5764829 (= e!3541944 e!3541945)))

(declare-fun res!2432930 () Bool)

(assert (=> b!5764829 (=> (not res!2432930) (not e!3541945))))

(assert (=> b!5764829 (= res!2432930 (and (not ((_ is EmptyLang!15775) (regOne!32062 (regOne!32062 r!7292)))) (not ((_ is ElementMatch!15775) (regOne!32062 (regOne!32062 r!7292))))))))

(declare-fun bm!442730 () Bool)

(assert (=> bm!442730 (= call!442734 (nullable!5807 (ite c!1019080 (regTwo!32063 (regOne!32062 (regOne!32062 r!7292))) (regTwo!32062 (regOne!32062 (regOne!32062 r!7292))))))))

(declare-fun b!5764830 () Bool)

(assert (=> b!5764830 (= e!3541942 e!3541943)))

(declare-fun res!2432931 () Bool)

(assert (=> b!5764830 (= res!2432931 call!442735)))

(assert (=> b!5764830 (=> (not res!2432931) (not e!3541943))))

(assert (= (and d!1816199 (not res!2432928)) b!5764829))

(assert (= (and b!5764829 res!2432930) b!5764825))

(assert (= (and b!5764825 (not res!2432927)) b!5764824))

(assert (= (and b!5764824 c!1019080) b!5764827))

(assert (= (and b!5764824 (not c!1019080)) b!5764830))

(assert (= (and b!5764827 (not res!2432929)) b!5764828))

(assert (= (and b!5764830 res!2432931) b!5764826))

(assert (= (or b!5764828 b!5764826) bm!442730))

(assert (= (or b!5764827 b!5764830) bm!442729))

(declare-fun m!6711174 () Bool)

(assert (=> bm!442729 m!6711174))

(declare-fun m!6711176 () Bool)

(assert (=> bm!442730 m!6711176))

(assert (=> d!1815841 d!1816199))

(assert (=> d!1815793 d!1816097))

(assert (=> d!1815793 d!1815837))

(declare-fun d!1816201 () Bool)

(assert (=> d!1816201 (= (isEmpty!35389 (tail!11282 (exprs!5659 (h!69950 zl!343)))) ((_ is Nil!63501) (tail!11282 (exprs!5659 (h!69950 zl!343)))))))

(assert (=> b!5763916 d!1816201))

(declare-fun d!1816203 () Bool)

(assert (=> d!1816203 (= (tail!11282 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))))

(assert (=> b!5763916 d!1816203))

(declare-fun d!1816205 () Bool)

(assert (=> d!1816205 (= (isEmptyLang!1271 lt!2289059) ((_ is EmptyLang!15775) lt!2289059))))

(assert (=> b!5763379 d!1816205))

(declare-fun b!5764831 () Bool)

(declare-fun res!2432934 () Bool)

(declare-fun e!3541952 () Bool)

(assert (=> b!5764831 (=> res!2432934 e!3541952)))

(declare-fun e!3541950 () Bool)

(assert (=> b!5764831 (= res!2432934 e!3541950)))

(declare-fun res!2432937 () Bool)

(assert (=> b!5764831 (=> (not res!2432937) (not e!3541950))))

(declare-fun lt!2289173 () Bool)

(assert (=> b!5764831 (= res!2432937 lt!2289173)))

(declare-fun b!5764833 () Bool)

(declare-fun e!3541948 () Bool)

(assert (=> b!5764833 (= e!3541948 (matchR!7960 (derivativeStep!4556 (derivativeStep!4556 (regTwo!32062 r!7292) (head!12186 s!2326)) (head!12186 (tail!11281 s!2326))) (tail!11281 (tail!11281 s!2326))))))

(declare-fun b!5764834 () Bool)

(assert (=> b!5764834 (= e!3541950 (= (head!12186 (tail!11281 s!2326)) (c!1018649 (derivativeStep!4556 (regTwo!32062 r!7292) (head!12186 s!2326)))))))

(declare-fun b!5764835 () Bool)

(declare-fun e!3541947 () Bool)

(assert (=> b!5764835 (= e!3541947 (not lt!2289173))))

(declare-fun b!5764836 () Bool)

(declare-fun e!3541949 () Bool)

(assert (=> b!5764836 (= e!3541949 (not (= (head!12186 (tail!11281 s!2326)) (c!1018649 (derivativeStep!4556 (regTwo!32062 r!7292) (head!12186 s!2326))))))))

(declare-fun b!5764837 () Bool)

(declare-fun res!2432936 () Bool)

(assert (=> b!5764837 (=> (not res!2432936) (not e!3541950))))

(declare-fun call!442736 () Bool)

(assert (=> b!5764837 (= res!2432936 (not call!442736))))

(declare-fun bm!442731 () Bool)

(assert (=> bm!442731 (= call!442736 (isEmpty!35392 (tail!11281 s!2326)))))

(declare-fun b!5764832 () Bool)

(declare-fun res!2432933 () Bool)

(assert (=> b!5764832 (=> res!2432933 e!3541952)))

(assert (=> b!5764832 (= res!2432933 (not ((_ is ElementMatch!15775) (derivativeStep!4556 (regTwo!32062 r!7292) (head!12186 s!2326)))))))

(assert (=> b!5764832 (= e!3541947 e!3541952)))

(declare-fun d!1816207 () Bool)

(declare-fun e!3541953 () Bool)

(assert (=> d!1816207 e!3541953))

(declare-fun c!1019083 () Bool)

(assert (=> d!1816207 (= c!1019083 ((_ is EmptyExpr!15775) (derivativeStep!4556 (regTwo!32062 r!7292) (head!12186 s!2326))))))

(assert (=> d!1816207 (= lt!2289173 e!3541948)))

(declare-fun c!1019082 () Bool)

(assert (=> d!1816207 (= c!1019082 (isEmpty!35392 (tail!11281 s!2326)))))

(assert (=> d!1816207 (validRegex!7511 (derivativeStep!4556 (regTwo!32062 r!7292) (head!12186 s!2326)))))

(assert (=> d!1816207 (= (matchR!7960 (derivativeStep!4556 (regTwo!32062 r!7292) (head!12186 s!2326)) (tail!11281 s!2326)) lt!2289173)))

(declare-fun b!5764838 () Bool)

(declare-fun res!2432938 () Bool)

(assert (=> b!5764838 (=> res!2432938 e!3541949)))

(assert (=> b!5764838 (= res!2432938 (not (isEmpty!35392 (tail!11281 (tail!11281 s!2326)))))))

(declare-fun b!5764839 () Bool)

(assert (=> b!5764839 (= e!3541948 (nullable!5807 (derivativeStep!4556 (regTwo!32062 r!7292) (head!12186 s!2326))))))

(declare-fun b!5764840 () Bool)

(declare-fun e!3541951 () Bool)

(assert (=> b!5764840 (= e!3541951 e!3541949)))

(declare-fun res!2432939 () Bool)

(assert (=> b!5764840 (=> res!2432939 e!3541949)))

(assert (=> b!5764840 (= res!2432939 call!442736)))

(declare-fun b!5764841 () Bool)

(assert (=> b!5764841 (= e!3541953 e!3541947)))

(declare-fun c!1019081 () Bool)

(assert (=> b!5764841 (= c!1019081 ((_ is EmptyLang!15775) (derivativeStep!4556 (regTwo!32062 r!7292) (head!12186 s!2326))))))

(declare-fun b!5764842 () Bool)

(declare-fun res!2432935 () Bool)

(assert (=> b!5764842 (=> (not res!2432935) (not e!3541950))))

(assert (=> b!5764842 (= res!2432935 (isEmpty!35392 (tail!11281 (tail!11281 s!2326))))))

(declare-fun b!5764843 () Bool)

(assert (=> b!5764843 (= e!3541953 (= lt!2289173 call!442736))))

(declare-fun b!5764844 () Bool)

(assert (=> b!5764844 (= e!3541952 e!3541951)))

(declare-fun res!2432932 () Bool)

(assert (=> b!5764844 (=> (not res!2432932) (not e!3541951))))

(assert (=> b!5764844 (= res!2432932 (not lt!2289173))))

(assert (= (and d!1816207 c!1019082) b!5764839))

(assert (= (and d!1816207 (not c!1019082)) b!5764833))

(assert (= (and d!1816207 c!1019083) b!5764843))

(assert (= (and d!1816207 (not c!1019083)) b!5764841))

(assert (= (and b!5764841 c!1019081) b!5764835))

(assert (= (and b!5764841 (not c!1019081)) b!5764832))

(assert (= (and b!5764832 (not res!2432933)) b!5764831))

(assert (= (and b!5764831 res!2432937) b!5764837))

(assert (= (and b!5764837 res!2432936) b!5764842))

(assert (= (and b!5764842 res!2432935) b!5764834))

(assert (= (and b!5764831 (not res!2432934)) b!5764844))

(assert (= (and b!5764844 res!2432932) b!5764840))

(assert (= (and b!5764840 (not res!2432939)) b!5764838))

(assert (= (and b!5764838 (not res!2432938)) b!5764836))

(assert (= (or b!5764843 b!5764837 b!5764840) bm!442731))

(assert (=> b!5764836 m!6710312))

(assert (=> b!5764836 m!6710928))

(assert (=> b!5764834 m!6710312))

(assert (=> b!5764834 m!6710928))

(assert (=> b!5764833 m!6710312))

(assert (=> b!5764833 m!6710928))

(assert (=> b!5764833 m!6710390))

(assert (=> b!5764833 m!6710928))

(declare-fun m!6711178 () Bool)

(assert (=> b!5764833 m!6711178))

(assert (=> b!5764833 m!6710312))

(assert (=> b!5764833 m!6710932))

(assert (=> b!5764833 m!6711178))

(assert (=> b!5764833 m!6710932))

(declare-fun m!6711180 () Bool)

(assert (=> b!5764833 m!6711180))

(assert (=> b!5764838 m!6710312))

(assert (=> b!5764838 m!6710932))

(assert (=> b!5764838 m!6710932))

(assert (=> b!5764838 m!6710936))

(assert (=> d!1816207 m!6710312))

(assert (=> d!1816207 m!6710316))

(assert (=> d!1816207 m!6710390))

(declare-fun m!6711182 () Bool)

(assert (=> d!1816207 m!6711182))

(assert (=> bm!442731 m!6710312))

(assert (=> bm!442731 m!6710316))

(assert (=> b!5764842 m!6710312))

(assert (=> b!5764842 m!6710932))

(assert (=> b!5764842 m!6710932))

(assert (=> b!5764842 m!6710936))

(assert (=> b!5764839 m!6710390))

(declare-fun m!6711184 () Bool)

(assert (=> b!5764839 m!6711184))

(assert (=> b!5763855 d!1816207))

(declare-fun b!5764845 () Bool)

(declare-fun e!3541958 () Regex!15775)

(declare-fun e!3541956 () Regex!15775)

(assert (=> b!5764845 (= e!3541958 e!3541956)))

(declare-fun c!1019088 () Bool)

(assert (=> b!5764845 (= c!1019088 ((_ is Star!15775) (regTwo!32062 r!7292)))))

(declare-fun bm!442733 () Bool)

(declare-fun call!442740 () Regex!15775)

(declare-fun c!1019085 () Bool)

(assert (=> bm!442733 (= call!442740 (derivativeStep!4556 (ite c!1019085 (regTwo!32063 (regTwo!32062 r!7292)) (ite c!1019088 (reg!16104 (regTwo!32062 r!7292)) (regOne!32062 (regTwo!32062 r!7292)))) (head!12186 s!2326)))))

(declare-fun bm!442734 () Bool)

(declare-fun call!442737 () Regex!15775)

(declare-fun call!442739 () Regex!15775)

(assert (=> bm!442734 (= call!442737 call!442739)))

(declare-fun b!5764846 () Bool)

(assert (=> b!5764846 (= e!3541958 (Union!15775 call!442739 call!442740))))

(declare-fun b!5764847 () Bool)

(assert (=> b!5764847 (= c!1019085 ((_ is Union!15775) (regTwo!32062 r!7292)))))

(declare-fun e!3541954 () Regex!15775)

(assert (=> b!5764847 (= e!3541954 e!3541958)))

(declare-fun b!5764848 () Bool)

(assert (=> b!5764848 (= e!3541954 (ite (= (head!12186 s!2326) (c!1018649 (regTwo!32062 r!7292))) EmptyExpr!15775 EmptyLang!15775))))

(declare-fun e!3541955 () Regex!15775)

(declare-fun call!442738 () Regex!15775)

(declare-fun b!5764849 () Bool)

(assert (=> b!5764849 (= e!3541955 (Union!15775 (Concat!24620 call!442738 (regTwo!32062 (regTwo!32062 r!7292))) call!442737))))

(declare-fun bm!442735 () Bool)

(assert (=> bm!442735 (= call!442738 call!442740)))

(declare-fun b!5764850 () Bool)

(assert (=> b!5764850 (= e!3541955 (Union!15775 (Concat!24620 call!442737 (regTwo!32062 (regTwo!32062 r!7292))) EmptyLang!15775))))

(declare-fun d!1816209 () Bool)

(declare-fun lt!2289174 () Regex!15775)

(assert (=> d!1816209 (validRegex!7511 lt!2289174)))

(declare-fun e!3541957 () Regex!15775)

(assert (=> d!1816209 (= lt!2289174 e!3541957)))

(declare-fun c!1019086 () Bool)

(assert (=> d!1816209 (= c!1019086 (or ((_ is EmptyExpr!15775) (regTwo!32062 r!7292)) ((_ is EmptyLang!15775) (regTwo!32062 r!7292))))))

(assert (=> d!1816209 (validRegex!7511 (regTwo!32062 r!7292))))

(assert (=> d!1816209 (= (derivativeStep!4556 (regTwo!32062 r!7292) (head!12186 s!2326)) lt!2289174)))

(declare-fun c!1019087 () Bool)

(declare-fun bm!442732 () Bool)

(assert (=> bm!442732 (= call!442739 (derivativeStep!4556 (ite c!1019085 (regOne!32063 (regTwo!32062 r!7292)) (ite c!1019087 (regTwo!32062 (regTwo!32062 r!7292)) (regOne!32062 (regTwo!32062 r!7292)))) (head!12186 s!2326)))))

(declare-fun b!5764851 () Bool)

(assert (=> b!5764851 (= e!3541957 EmptyLang!15775)))

(declare-fun b!5764852 () Bool)

(assert (=> b!5764852 (= e!3541957 e!3541954)))

(declare-fun c!1019084 () Bool)

(assert (=> b!5764852 (= c!1019084 ((_ is ElementMatch!15775) (regTwo!32062 r!7292)))))

(declare-fun b!5764853 () Bool)

(assert (=> b!5764853 (= e!3541956 (Concat!24620 call!442738 (regTwo!32062 r!7292)))))

(declare-fun b!5764854 () Bool)

(assert (=> b!5764854 (= c!1019087 (nullable!5807 (regOne!32062 (regTwo!32062 r!7292))))))

(assert (=> b!5764854 (= e!3541956 e!3541955)))

(assert (= (and d!1816209 c!1019086) b!5764851))

(assert (= (and d!1816209 (not c!1019086)) b!5764852))

(assert (= (and b!5764852 c!1019084) b!5764848))

(assert (= (and b!5764852 (not c!1019084)) b!5764847))

(assert (= (and b!5764847 c!1019085) b!5764846))

(assert (= (and b!5764847 (not c!1019085)) b!5764845))

(assert (= (and b!5764845 c!1019088) b!5764853))

(assert (= (and b!5764845 (not c!1019088)) b!5764854))

(assert (= (and b!5764854 c!1019087) b!5764849))

(assert (= (and b!5764854 (not c!1019087)) b!5764850))

(assert (= (or b!5764849 b!5764850) bm!442734))

(assert (= (or b!5764853 b!5764849) bm!442735))

(assert (= (or b!5764846 bm!442735) bm!442733))

(assert (= (or b!5764846 bm!442734) bm!442732))

(assert (=> bm!442733 m!6710308))

(declare-fun m!6711186 () Bool)

(assert (=> bm!442733 m!6711186))

(declare-fun m!6711188 () Bool)

(assert (=> d!1816209 m!6711188))

(assert (=> d!1816209 m!6710394))

(assert (=> bm!442732 m!6710308))

(declare-fun m!6711190 () Bool)

(assert (=> bm!442732 m!6711190))

(declare-fun m!6711192 () Bool)

(assert (=> b!5764854 m!6711192))

(assert (=> b!5763855 d!1816209))

(assert (=> b!5763855 d!1816091))

(assert (=> b!5763855 d!1816093))

(declare-fun d!1816211 () Bool)

(assert (=> d!1816211 (= (head!12187 (exprs!5659 (h!69950 zl!343))) (h!69949 (exprs!5659 (h!69950 zl!343))))))

(assert (=> b!5763920 d!1816211))

(declare-fun d!1816213 () Bool)

(assert (=> d!1816213 (= (head!12187 (unfocusZipperList!1203 zl!343)) (h!69949 (unfocusZipperList!1203 zl!343)))))

(assert (=> b!5763383 d!1816213))

(declare-fun d!1816215 () Bool)

(assert (=> d!1816215 (= (isEmpty!35392 (t!376958 s!2326)) ((_ is Nil!63500) (t!376958 s!2326)))))

(assert (=> d!1815697 d!1816215))

(declare-fun d!1816217 () Bool)

(assert (=> d!1816217 true))

(declare-fun setRes!38721 () Bool)

(assert (=> d!1816217 setRes!38721))

(declare-fun condSetEmpty!38721 () Bool)

(declare-fun res!2432942 () (InoxSet Context!10318))

(assert (=> d!1816217 (= condSetEmpty!38721 (= res!2432942 ((as const (Array Context!10318 Bool)) false)))))

(assert (=> d!1816217 (= (choose!43711 z!1189 lambda!312917) res!2432942)))

(declare-fun setIsEmpty!38721 () Bool)

(assert (=> setIsEmpty!38721 setRes!38721))

(declare-fun e!3541961 () Bool)

(declare-fun tp!1593130 () Bool)

(declare-fun setElem!38721 () Context!10318)

(declare-fun setNonEmpty!38721 () Bool)

(assert (=> setNonEmpty!38721 (= setRes!38721 (and tp!1593130 (inv!82684 setElem!38721) e!3541961))))

(declare-fun setRest!38721 () (InoxSet Context!10318))

(assert (=> setNonEmpty!38721 (= res!2432942 ((_ map or) (store ((as const (Array Context!10318 Bool)) false) setElem!38721 true) setRest!38721))))

(declare-fun b!5764857 () Bool)

(declare-fun tp!1593129 () Bool)

(assert (=> b!5764857 (= e!3541961 tp!1593129)))

(assert (= (and d!1816217 condSetEmpty!38721) setIsEmpty!38721))

(assert (= (and d!1816217 (not condSetEmpty!38721)) setNonEmpty!38721))

(assert (= setNonEmpty!38721 b!5764857))

(declare-fun m!6711194 () Bool)

(assert (=> setNonEmpty!38721 m!6711194))

(assert (=> d!1815777 d!1816217))

(assert (=> bm!442563 d!1816097))

(declare-fun d!1816219 () Bool)

(assert (=> d!1816219 (= (isEmpty!35389 (unfocusZipperList!1203 zl!343)) ((_ is Nil!63501) (unfocusZipperList!1203 zl!343)))))

(assert (=> b!5763375 d!1816219))

(assert (=> d!1815743 d!1816215))

(declare-fun bs!1352229 () Bool)

(declare-fun d!1816221 () Bool)

(assert (= bs!1352229 (and d!1816221 d!1815717)))

(declare-fun lambda!313046 () Int)

(assert (=> bs!1352229 (= lambda!313046 lambda!312941)))

(declare-fun bs!1352230 () Bool)

(assert (= bs!1352230 (and d!1816221 d!1816177)))

(assert (=> bs!1352230 (= lambda!313046 lambda!313041)))

(declare-fun bs!1352231 () Bool)

(assert (= bs!1352231 (and d!1816221 d!1816165)))

(assert (=> bs!1352231 (= lambda!313046 lambda!313040)))

(declare-fun bs!1352232 () Bool)

(assert (= bs!1352232 (and d!1816221 d!1815723)))

(assert (=> bs!1352232 (= lambda!313046 lambda!312949)))

(declare-fun bs!1352233 () Bool)

(assert (= bs!1352233 (and d!1816221 d!1815845)))

(assert (=> bs!1352233 (= lambda!313046 lambda!312989)))

(declare-fun bs!1352234 () Bool)

(assert (= bs!1352234 (and d!1816221 d!1815839)))

(assert (=> bs!1352234 (= lambda!313046 lambda!312988)))

(declare-fun bs!1352235 () Bool)

(assert (= bs!1352235 (and d!1816221 d!1815691)))

(assert (=> bs!1352235 (= lambda!313046 lambda!312926)))

(assert (=> d!1816221 (= (inv!82684 setElem!38713) (forall!14893 (exprs!5659 setElem!38713) lambda!313046))))

(declare-fun bs!1352236 () Bool)

(assert (= bs!1352236 d!1816221))

(declare-fun m!6711196 () Bool)

(assert (=> bs!1352236 m!6711196))

(assert (=> setNonEmpty!38713 d!1816221))

(declare-fun d!1816223 () Bool)

(declare-fun c!1019089 () Bool)

(assert (=> d!1816223 (= c!1019089 (isEmpty!35392 (tail!11281 (t!376958 s!2326))))))

(declare-fun e!3541962 () Bool)

(assert (=> d!1816223 (= (matchZipper!1913 (derivationStepZipper!1854 lt!2289025 (head!12186 (t!376958 s!2326))) (tail!11281 (t!376958 s!2326))) e!3541962)))

(declare-fun b!5764858 () Bool)

(assert (=> b!5764858 (= e!3541962 (nullableZipper!1702 (derivationStepZipper!1854 lt!2289025 (head!12186 (t!376958 s!2326)))))))

(declare-fun b!5764859 () Bool)

(assert (=> b!5764859 (= e!3541962 (matchZipper!1913 (derivationStepZipper!1854 (derivationStepZipper!1854 lt!2289025 (head!12186 (t!376958 s!2326))) (head!12186 (tail!11281 (t!376958 s!2326)))) (tail!11281 (tail!11281 (t!376958 s!2326)))))))

(assert (= (and d!1816223 c!1019089) b!5764858))

(assert (= (and d!1816223 (not c!1019089)) b!5764859))

(assert (=> d!1816223 m!6710070))

(assert (=> d!1816223 m!6711028))

(assert (=> b!5764858 m!6710168))

(declare-fun m!6711198 () Bool)

(assert (=> b!5764858 m!6711198))

(assert (=> b!5764859 m!6710070))

(assert (=> b!5764859 m!6711032))

(assert (=> b!5764859 m!6710168))

(assert (=> b!5764859 m!6711032))

(declare-fun m!6711200 () Bool)

(assert (=> b!5764859 m!6711200))

(assert (=> b!5764859 m!6710070))

(assert (=> b!5764859 m!6711036))

(assert (=> b!5764859 m!6711200))

(assert (=> b!5764859 m!6711036))

(declare-fun m!6711202 () Bool)

(assert (=> b!5764859 m!6711202))

(assert (=> b!5763459 d!1816223))

(declare-fun bs!1352237 () Bool)

(declare-fun d!1816225 () Bool)

(assert (= bs!1352237 (and d!1816225 b!5763167)))

(declare-fun lambda!313047 () Int)

(assert (=> bs!1352237 (= (= (head!12186 (t!376958 s!2326)) (h!69948 s!2326)) (= lambda!313047 lambda!312917))))

(declare-fun bs!1352238 () Bool)

(assert (= bs!1352238 (and d!1816225 d!1815831)))

(assert (=> bs!1352238 (= (= (head!12186 (t!376958 s!2326)) (h!69948 s!2326)) (= lambda!313047 lambda!312985))))

(declare-fun bs!1352239 () Bool)

(assert (= bs!1352239 (and d!1816225 d!1816145)))

(assert (=> bs!1352239 (= lambda!313047 lambda!313028)))

(declare-fun bs!1352240 () Bool)

(assert (= bs!1352240 (and d!1816225 d!1815815)))

(assert (=> bs!1352240 (= (= (head!12186 (t!376958 s!2326)) (h!69948 s!2326)) (= lambda!313047 lambda!312980))))

(declare-fun bs!1352241 () Bool)

(assert (= bs!1352241 (and d!1816225 d!1816189)))

(assert (=> bs!1352241 (= lambda!313047 lambda!313042)))

(assert (=> d!1816225 true))

(assert (=> d!1816225 (= (derivationStepZipper!1854 lt!2289025 (head!12186 (t!376958 s!2326))) (flatMap!1388 lt!2289025 lambda!313047))))

(declare-fun bs!1352242 () Bool)

(assert (= bs!1352242 d!1816225))

(declare-fun m!6711204 () Bool)

(assert (=> bs!1352242 m!6711204))

(assert (=> b!5763459 d!1816225))

(assert (=> b!5763459 d!1816147))

(assert (=> b!5763459 d!1816149))

(declare-fun d!1816227 () Bool)

(assert (=> d!1816227 (= (Exists!2875 (ite c!1018810 lambda!312967 lambda!312968)) (choose!43713 (ite c!1018810 lambda!312967 lambda!312968)))))

(declare-fun bs!1352243 () Bool)

(assert (= bs!1352243 d!1816227))

(declare-fun m!6711206 () Bool)

(assert (=> bs!1352243 m!6711206))

(assert (=> bm!442554 d!1816227))

(assert (=> bm!442561 d!1816097))

(declare-fun d!1816229 () Bool)

(declare-fun res!2432945 () Bool)

(declare-fun e!3541968 () Bool)

(assert (=> d!1816229 (=> res!2432945 e!3541968)))

(assert (=> d!1816229 (= res!2432945 ((_ is ElementMatch!15775) (ite c!1018848 (reg!16104 r!7292) (ite c!1018849 (regOne!32063 r!7292) (regOne!32062 r!7292)))))))

(assert (=> d!1816229 (= (validRegex!7511 (ite c!1018848 (reg!16104 r!7292) (ite c!1018849 (regOne!32063 r!7292) (regOne!32062 r!7292)))) e!3541968)))

(declare-fun b!5764860 () Bool)

(declare-fun e!3541963 () Bool)

(declare-fun call!442741 () Bool)

(assert (=> b!5764860 (= e!3541963 call!442741)))

(declare-fun b!5764861 () Bool)

(declare-fun e!3541965 () Bool)

(declare-fun e!3541967 () Bool)

(assert (=> b!5764861 (= e!3541965 e!3541967)))

(declare-fun res!2432943 () Bool)

(assert (=> b!5764861 (=> (not res!2432943) (not e!3541967))))

(declare-fun call!442742 () Bool)

(assert (=> b!5764861 (= res!2432943 call!442742)))

(declare-fun c!1019091 () Bool)

(declare-fun call!442743 () Bool)

(declare-fun bm!442736 () Bool)

(declare-fun c!1019090 () Bool)

(assert (=> bm!442736 (= call!442743 (validRegex!7511 (ite c!1019090 (reg!16104 (ite c!1018848 (reg!16104 r!7292) (ite c!1018849 (regOne!32063 r!7292) (regOne!32062 r!7292)))) (ite c!1019091 (regOne!32063 (ite c!1018848 (reg!16104 r!7292) (ite c!1018849 (regOne!32063 r!7292) (regOne!32062 r!7292)))) (regOne!32062 (ite c!1018848 (reg!16104 r!7292) (ite c!1018849 (regOne!32063 r!7292) (regOne!32062 r!7292))))))))))

(declare-fun b!5764862 () Bool)

(assert (=> b!5764862 (= e!3541967 call!442741)))

(declare-fun b!5764863 () Bool)

(declare-fun e!3541966 () Bool)

(assert (=> b!5764863 (= e!3541966 call!442743)))

(declare-fun b!5764864 () Bool)

(declare-fun e!3541964 () Bool)

(assert (=> b!5764864 (= e!3541964 e!3541966)))

(declare-fun res!2432947 () Bool)

(assert (=> b!5764864 (= res!2432947 (not (nullable!5807 (reg!16104 (ite c!1018848 (reg!16104 r!7292) (ite c!1018849 (regOne!32063 r!7292) (regOne!32062 r!7292)))))))))

(assert (=> b!5764864 (=> (not res!2432947) (not e!3541966))))

(declare-fun b!5764865 () Bool)

(declare-fun res!2432944 () Bool)

(assert (=> b!5764865 (=> (not res!2432944) (not e!3541963))))

(assert (=> b!5764865 (= res!2432944 call!442742)))

(declare-fun e!3541969 () Bool)

(assert (=> b!5764865 (= e!3541969 e!3541963)))

(declare-fun b!5764866 () Bool)

(assert (=> b!5764866 (= e!3541968 e!3541964)))

(assert (=> b!5764866 (= c!1019090 ((_ is Star!15775) (ite c!1018848 (reg!16104 r!7292) (ite c!1018849 (regOne!32063 r!7292) (regOne!32062 r!7292)))))))

(declare-fun bm!442737 () Bool)

(assert (=> bm!442737 (= call!442741 (validRegex!7511 (ite c!1019091 (regTwo!32063 (ite c!1018848 (reg!16104 r!7292) (ite c!1018849 (regOne!32063 r!7292) (regOne!32062 r!7292)))) (regTwo!32062 (ite c!1018848 (reg!16104 r!7292) (ite c!1018849 (regOne!32063 r!7292) (regOne!32062 r!7292)))))))))

(declare-fun b!5764867 () Bool)

(assert (=> b!5764867 (= e!3541964 e!3541969)))

(assert (=> b!5764867 (= c!1019091 ((_ is Union!15775) (ite c!1018848 (reg!16104 r!7292) (ite c!1018849 (regOne!32063 r!7292) (regOne!32062 r!7292)))))))

(declare-fun bm!442738 () Bool)

(assert (=> bm!442738 (= call!442742 call!442743)))

(declare-fun b!5764868 () Bool)

(declare-fun res!2432946 () Bool)

(assert (=> b!5764868 (=> res!2432946 e!3541965)))

(assert (=> b!5764868 (= res!2432946 (not ((_ is Concat!24620) (ite c!1018848 (reg!16104 r!7292) (ite c!1018849 (regOne!32063 r!7292) (regOne!32062 r!7292))))))))

(assert (=> b!5764868 (= e!3541969 e!3541965)))

(assert (= (and d!1816229 (not res!2432945)) b!5764866))

(assert (= (and b!5764866 c!1019090) b!5764864))

(assert (= (and b!5764866 (not c!1019090)) b!5764867))

(assert (= (and b!5764864 res!2432947) b!5764863))

(assert (= (and b!5764867 c!1019091) b!5764865))

(assert (= (and b!5764867 (not c!1019091)) b!5764868))

(assert (= (and b!5764865 res!2432944) b!5764860))

(assert (= (and b!5764868 (not res!2432946)) b!5764861))

(assert (= (and b!5764861 res!2432943) b!5764862))

(assert (= (or b!5764860 b!5764862) bm!442737))

(assert (= (or b!5764865 b!5764861) bm!442738))

(assert (= (or b!5764863 bm!442738) bm!442736))

(declare-fun m!6711208 () Bool)

(assert (=> bm!442736 m!6711208))

(declare-fun m!6711210 () Bool)

(assert (=> b!5764864 m!6711210))

(declare-fun m!6711212 () Bool)

(assert (=> bm!442737 m!6711212))

(assert (=> bm!442571 d!1816229))

(declare-fun d!1816231 () Bool)

(assert (=> d!1816231 (= (Exists!2875 (ite c!1018832 lambda!312981 lambda!312982)) (choose!43713 (ite c!1018832 lambda!312981 lambda!312982)))))

(declare-fun bs!1352244 () Bool)

(assert (= bs!1352244 d!1816231))

(declare-fun m!6711214 () Bool)

(assert (=> bs!1352244 m!6711214))

(assert (=> bm!442559 d!1816231))

(declare-fun d!1816233 () Bool)

(declare-fun res!2432952 () Bool)

(declare-fun e!3541974 () Bool)

(assert (=> d!1816233 (=> res!2432952 e!3541974)))

(assert (=> d!1816233 (= res!2432952 ((_ is Nil!63502) lt!2289073))))

(assert (=> d!1816233 (= (noDuplicate!1682 lt!2289073) e!3541974)))

(declare-fun b!5764873 () Bool)

(declare-fun e!3541975 () Bool)

(assert (=> b!5764873 (= e!3541974 e!3541975)))

(declare-fun res!2432953 () Bool)

(assert (=> b!5764873 (=> (not res!2432953) (not e!3541975))))

(declare-fun contains!19867 (List!63626 Context!10318) Bool)

(assert (=> b!5764873 (= res!2432953 (not (contains!19867 (t!376960 lt!2289073) (h!69950 lt!2289073))))))

(declare-fun b!5764874 () Bool)

(assert (=> b!5764874 (= e!3541975 (noDuplicate!1682 (t!376960 lt!2289073)))))

(assert (= (and d!1816233 (not res!2432952)) b!5764873))

(assert (= (and b!5764873 res!2432953) b!5764874))

(declare-fun m!6711216 () Bool)

(assert (=> b!5764873 m!6711216))

(declare-fun m!6711218 () Bool)

(assert (=> b!5764874 m!6711218))

(assert (=> d!1815737 d!1816233))

(declare-fun d!1816235 () Bool)

(declare-fun e!3541983 () Bool)

(assert (=> d!1816235 e!3541983))

(declare-fun res!2432958 () Bool)

(assert (=> d!1816235 (=> (not res!2432958) (not e!3541983))))

(declare-fun res!2432959 () List!63626)

(assert (=> d!1816235 (= res!2432958 (noDuplicate!1682 res!2432959))))

(declare-fun e!3541984 () Bool)

(assert (=> d!1816235 e!3541984))

(assert (=> d!1816235 (= (choose!43708 z!1189) res!2432959)))

(declare-fun b!5764882 () Bool)

(declare-fun e!3541982 () Bool)

(declare-fun tp!1593135 () Bool)

(assert (=> b!5764882 (= e!3541982 tp!1593135)))

(declare-fun b!5764881 () Bool)

(declare-fun tp!1593136 () Bool)

(assert (=> b!5764881 (= e!3541984 (and (inv!82684 (h!69950 res!2432959)) e!3541982 tp!1593136))))

(declare-fun b!5764883 () Bool)

(assert (=> b!5764883 (= e!3541983 (= (content!11589 res!2432959) z!1189))))

(assert (= b!5764881 b!5764882))

(assert (= (and d!1816235 ((_ is Cons!63502) res!2432959)) b!5764881))

(assert (= (and d!1816235 res!2432958) b!5764883))

(declare-fun m!6711220 () Bool)

(assert (=> d!1816235 m!6711220))

(declare-fun m!6711222 () Bool)

(assert (=> b!5764881 m!6711222))

(declare-fun m!6711224 () Bool)

(assert (=> b!5764883 m!6711224))

(assert (=> d!1815737 d!1816235))

(declare-fun b!5764884 () Bool)

(declare-fun e!3541988 () (InoxSet Context!10318))

(declare-fun e!3541990 () (InoxSet Context!10318))

(assert (=> b!5764884 (= e!3541988 e!3541990)))

(declare-fun c!1019092 () Bool)

(assert (=> b!5764884 (= c!1019092 ((_ is Union!15775) (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun b!5764885 () Bool)

(declare-fun c!1019096 () Bool)

(declare-fun e!3541985 () Bool)

(assert (=> b!5764885 (= c!1019096 e!3541985)))

(declare-fun res!2432960 () Bool)

(assert (=> b!5764885 (=> (not res!2432960) (not e!3541985))))

(assert (=> b!5764885 (= res!2432960 ((_ is Concat!24620) (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun e!3541987 () (InoxSet Context!10318))

(assert (=> b!5764885 (= e!3541990 e!3541987)))

(declare-fun d!1816237 () Bool)

(declare-fun c!1019093 () Bool)

(assert (=> d!1816237 (= c!1019093 (and ((_ is ElementMatch!15775) (h!69949 (exprs!5659 (h!69950 zl!343)))) (= (c!1018649 (h!69949 (exprs!5659 (h!69950 zl!343)))) (h!69948 s!2326))))))

(assert (=> d!1816237 (= (derivationStepZipperDown!1117 (h!69949 (exprs!5659 (h!69950 zl!343))) (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343)))) (h!69948 s!2326)) e!3541988)))

(declare-fun call!442748 () List!63625)

(declare-fun c!1019095 () Bool)

(declare-fun bm!442739 () Bool)

(declare-fun call!442749 () (InoxSet Context!10318))

(assert (=> bm!442739 (= call!442749 (derivationStepZipperDown!1117 (ite c!1019092 (regOne!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1019096 (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (ite c!1019095 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (reg!16104 (h!69949 (exprs!5659 (h!69950 zl!343))))))) (ite (or c!1019092 c!1019096) (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343)))) (Context!10319 call!442748)) (h!69948 s!2326)))))

(declare-fun bm!442740 () Bool)

(declare-fun call!442745 () List!63625)

(assert (=> bm!442740 (= call!442748 call!442745)))

(declare-fun call!442747 () (InoxSet Context!10318))

(declare-fun bm!442741 () Bool)

(assert (=> bm!442741 (= call!442747 (derivationStepZipperDown!1117 (ite c!1019092 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343))))) (ite c!1019092 (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343)))) (Context!10319 call!442745)) (h!69948 s!2326)))))

(declare-fun b!5764886 () Bool)

(declare-fun e!3541986 () (InoxSet Context!10318))

(assert (=> b!5764886 (= e!3541987 e!3541986)))

(assert (=> b!5764886 (= c!1019095 ((_ is Concat!24620) (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun b!5764887 () Bool)

(declare-fun call!442746 () (InoxSet Context!10318))

(assert (=> b!5764887 (= e!3541987 ((_ map or) call!442747 call!442746))))

(declare-fun b!5764888 () Bool)

(declare-fun call!442744 () (InoxSet Context!10318))

(assert (=> b!5764888 (= e!3541986 call!442744)))

(declare-fun b!5764889 () Bool)

(assert (=> b!5764889 (= e!3541990 ((_ map or) call!442749 call!442747))))

(declare-fun bm!442742 () Bool)

(assert (=> bm!442742 (= call!442746 call!442749)))

(declare-fun bm!442743 () Bool)

(assert (=> bm!442743 (= call!442744 call!442746)))

(declare-fun b!5764890 () Bool)

(declare-fun e!3541989 () (InoxSet Context!10318))

(assert (=> b!5764890 (= e!3541989 call!442744)))

(declare-fun b!5764891 () Bool)

(declare-fun c!1019094 () Bool)

(assert (=> b!5764891 (= c!1019094 ((_ is Star!15775) (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(assert (=> b!5764891 (= e!3541986 e!3541989)))

(declare-fun b!5764892 () Bool)

(assert (=> b!5764892 (= e!3541989 ((as const (Array Context!10318 Bool)) false))))

(declare-fun bm!442744 () Bool)

(assert (=> bm!442744 (= call!442745 ($colon$colon!1770 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343))))) (ite (or c!1019096 c!1019095) (regTwo!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))) (h!69949 (exprs!5659 (h!69950 zl!343))))))))

(declare-fun b!5764893 () Bool)

(assert (=> b!5764893 (= e!3541985 (nullable!5807 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343))))))))

(declare-fun b!5764894 () Bool)

(assert (=> b!5764894 (= e!3541988 (store ((as const (Array Context!10318 Bool)) false) (Context!10319 (t!376959 (exprs!5659 (h!69950 zl!343)))) true))))

(assert (= (and d!1816237 c!1019093) b!5764894))

(assert (= (and d!1816237 (not c!1019093)) b!5764884))

(assert (= (and b!5764884 c!1019092) b!5764889))

(assert (= (and b!5764884 (not c!1019092)) b!5764885))

(assert (= (and b!5764885 res!2432960) b!5764893))

(assert (= (and b!5764885 c!1019096) b!5764887))

(assert (= (and b!5764885 (not c!1019096)) b!5764886))

(assert (= (and b!5764886 c!1019095) b!5764888))

(assert (= (and b!5764886 (not c!1019095)) b!5764891))

(assert (= (and b!5764891 c!1019094) b!5764890))

(assert (= (and b!5764891 (not c!1019094)) b!5764892))

(assert (= (or b!5764888 b!5764890) bm!442740))

(assert (= (or b!5764888 b!5764890) bm!442743))

(assert (= (or b!5764887 bm!442740) bm!442744))

(assert (= (or b!5764887 bm!442743) bm!442742))

(assert (= (or b!5764889 b!5764887) bm!442741))

(assert (= (or b!5764889 bm!442742) bm!442739))

(declare-fun m!6711226 () Bool)

(assert (=> bm!442739 m!6711226))

(assert (=> b!5764893 m!6710220))

(declare-fun m!6711228 () Bool)

(assert (=> bm!442744 m!6711228))

(declare-fun m!6711230 () Bool)

(assert (=> b!5764894 m!6711230))

(declare-fun m!6711232 () Bool)

(assert (=> bm!442741 m!6711232))

(assert (=> bm!442549 d!1816237))

(declare-fun b!5764895 () Bool)

(declare-fun res!2432963 () Bool)

(declare-fun e!3541996 () Bool)

(assert (=> b!5764895 (=> res!2432963 e!3541996)))

(declare-fun e!3541994 () Bool)

(assert (=> b!5764895 (= res!2432963 e!3541994)))

(declare-fun res!2432966 () Bool)

(assert (=> b!5764895 (=> (not res!2432966) (not e!3541994))))

(declare-fun lt!2289175 () Bool)

(assert (=> b!5764895 (= res!2432966 lt!2289175)))

(declare-fun b!5764897 () Bool)

(declare-fun e!3541992 () Bool)

(assert (=> b!5764897 (= e!3541992 (matchR!7960 (derivativeStep!4556 (regOne!32062 r!7292) (head!12186 (_1!36175 (get!21910 lt!2289109)))) (tail!11281 (_1!36175 (get!21910 lt!2289109)))))))

(declare-fun b!5764898 () Bool)

(assert (=> b!5764898 (= e!3541994 (= (head!12186 (_1!36175 (get!21910 lt!2289109))) (c!1018649 (regOne!32062 r!7292))))))

(declare-fun b!5764899 () Bool)

(declare-fun e!3541991 () Bool)

(assert (=> b!5764899 (= e!3541991 (not lt!2289175))))

(declare-fun b!5764900 () Bool)

(declare-fun e!3541993 () Bool)

(assert (=> b!5764900 (= e!3541993 (not (= (head!12186 (_1!36175 (get!21910 lt!2289109))) (c!1018649 (regOne!32062 r!7292)))))))

(declare-fun b!5764901 () Bool)

(declare-fun res!2432965 () Bool)

(assert (=> b!5764901 (=> (not res!2432965) (not e!3541994))))

(declare-fun call!442750 () Bool)

(assert (=> b!5764901 (= res!2432965 (not call!442750))))

(declare-fun bm!442745 () Bool)

(assert (=> bm!442745 (= call!442750 (isEmpty!35392 (_1!36175 (get!21910 lt!2289109))))))

(declare-fun b!5764896 () Bool)

(declare-fun res!2432962 () Bool)

(assert (=> b!5764896 (=> res!2432962 e!3541996)))

(assert (=> b!5764896 (= res!2432962 (not ((_ is ElementMatch!15775) (regOne!32062 r!7292))))))

(assert (=> b!5764896 (= e!3541991 e!3541996)))

(declare-fun d!1816239 () Bool)

(declare-fun e!3541997 () Bool)

(assert (=> d!1816239 e!3541997))

(declare-fun c!1019099 () Bool)

(assert (=> d!1816239 (= c!1019099 ((_ is EmptyExpr!15775) (regOne!32062 r!7292)))))

(assert (=> d!1816239 (= lt!2289175 e!3541992)))

(declare-fun c!1019098 () Bool)

(assert (=> d!1816239 (= c!1019098 (isEmpty!35392 (_1!36175 (get!21910 lt!2289109))))))

(assert (=> d!1816239 (validRegex!7511 (regOne!32062 r!7292))))

(assert (=> d!1816239 (= (matchR!7960 (regOne!32062 r!7292) (_1!36175 (get!21910 lt!2289109))) lt!2289175)))

(declare-fun b!5764902 () Bool)

(declare-fun res!2432967 () Bool)

(assert (=> b!5764902 (=> res!2432967 e!3541993)))

(assert (=> b!5764902 (= res!2432967 (not (isEmpty!35392 (tail!11281 (_1!36175 (get!21910 lt!2289109))))))))

(declare-fun b!5764903 () Bool)

(assert (=> b!5764903 (= e!3541992 (nullable!5807 (regOne!32062 r!7292)))))

(declare-fun b!5764904 () Bool)

(declare-fun e!3541995 () Bool)

(assert (=> b!5764904 (= e!3541995 e!3541993)))

(declare-fun res!2432968 () Bool)

(assert (=> b!5764904 (=> res!2432968 e!3541993)))

(assert (=> b!5764904 (= res!2432968 call!442750)))

(declare-fun b!5764905 () Bool)

(assert (=> b!5764905 (= e!3541997 e!3541991)))

(declare-fun c!1019097 () Bool)

(assert (=> b!5764905 (= c!1019097 ((_ is EmptyLang!15775) (regOne!32062 r!7292)))))

(declare-fun b!5764906 () Bool)

(declare-fun res!2432964 () Bool)

(assert (=> b!5764906 (=> (not res!2432964) (not e!3541994))))

(assert (=> b!5764906 (= res!2432964 (isEmpty!35392 (tail!11281 (_1!36175 (get!21910 lt!2289109)))))))

(declare-fun b!5764907 () Bool)

(assert (=> b!5764907 (= e!3541997 (= lt!2289175 call!442750))))

(declare-fun b!5764908 () Bool)

(assert (=> b!5764908 (= e!3541996 e!3541995)))

(declare-fun res!2432961 () Bool)

(assert (=> b!5764908 (=> (not res!2432961) (not e!3541995))))

(assert (=> b!5764908 (= res!2432961 (not lt!2289175))))

(assert (= (and d!1816239 c!1019098) b!5764903))

(assert (= (and d!1816239 (not c!1019098)) b!5764897))

(assert (= (and d!1816239 c!1019099) b!5764907))

(assert (= (and d!1816239 (not c!1019099)) b!5764905))

(assert (= (and b!5764905 c!1019097) b!5764899))

(assert (= (and b!5764905 (not c!1019097)) b!5764896))

(assert (= (and b!5764896 (not res!2432962)) b!5764895))

(assert (= (and b!5764895 res!2432966) b!5764901))

(assert (= (and b!5764901 res!2432965) b!5764906))

(assert (= (and b!5764906 res!2432964) b!5764898))

(assert (= (and b!5764895 (not res!2432963)) b!5764908))

(assert (= (and b!5764908 res!2432961) b!5764904))

(assert (= (and b!5764904 (not res!2432968)) b!5764902))

(assert (= (and b!5764902 (not res!2432967)) b!5764900))

(assert (= (or b!5764907 b!5764901 b!5764904) bm!442745))

(declare-fun m!6711234 () Bool)

(assert (=> b!5764900 m!6711234))

(assert (=> b!5764898 m!6711234))

(assert (=> b!5764897 m!6711234))

(assert (=> b!5764897 m!6711234))

(declare-fun m!6711236 () Bool)

(assert (=> b!5764897 m!6711236))

(declare-fun m!6711238 () Bool)

(assert (=> b!5764897 m!6711238))

(assert (=> b!5764897 m!6711236))

(assert (=> b!5764897 m!6711238))

(declare-fun m!6711240 () Bool)

(assert (=> b!5764897 m!6711240))

(assert (=> b!5764902 m!6711238))

(assert (=> b!5764902 m!6711238))

(declare-fun m!6711242 () Bool)

(assert (=> b!5764902 m!6711242))

(declare-fun m!6711244 () Bool)

(assert (=> d!1816239 m!6711244))

(assert (=> d!1816239 m!6710340))

(assert (=> bm!442745 m!6711244))

(assert (=> b!5764906 m!6711238))

(assert (=> b!5764906 m!6711238))

(assert (=> b!5764906 m!6711242))

(assert (=> b!5764903 m!6710382))

(assert (=> b!5763795 d!1816239))

(declare-fun d!1816241 () Bool)

(assert (=> d!1816241 (= (get!21910 lt!2289109) (v!51842 lt!2289109))))

(assert (=> b!5763795 d!1816241))

(declare-fun bs!1352245 () Bool)

(declare-fun d!1816243 () Bool)

(assert (= bs!1352245 (and d!1816243 d!1816195)))

(declare-fun lambda!313048 () Int)

(assert (=> bs!1352245 (= lambda!313048 lambda!313045)))

(assert (=> d!1816243 (= (nullableZipper!1702 lt!2289021) (exists!2241 lt!2289021 lambda!313048))))

(declare-fun bs!1352246 () Bool)

(assert (= bs!1352246 d!1816243))

(declare-fun m!6711246 () Bool)

(assert (=> bs!1352246 m!6711246))

(assert (=> b!5763282 d!1816243))

(declare-fun bs!1352247 () Bool)

(declare-fun b!5764915 () Bool)

(assert (= bs!1352247 (and b!5764915 b!5763721)))

(declare-fun lambda!313049 () Int)

(assert (=> bs!1352247 (not (= lambda!313049 lambda!312968))))

(declare-fun bs!1352248 () Bool)

(assert (= bs!1352248 (and b!5764915 d!1815803)))

(assert (=> bs!1352248 (not (= lambda!313049 lambda!312971))))

(declare-fun bs!1352249 () Bool)

(assert (= bs!1352249 (and b!5764915 b!5764686)))

(assert (=> bs!1352249 (not (= lambda!313049 lambda!313027))))

(declare-fun bs!1352250 () Bool)

(assert (= bs!1352250 (and b!5764915 b!5764646)))

(assert (=> bs!1352250 (= (and (= (reg!16104 (regTwo!32063 r!7292)) (reg!16104 (regOne!32063 (regOne!32062 r!7292)))) (= (regTwo!32063 r!7292) (regOne!32063 (regOne!32062 r!7292)))) (= lambda!313049 lambda!313024))))

(declare-fun bs!1352251 () Bool)

(assert (= bs!1352251 (and b!5764915 d!1816163)))

(assert (=> bs!1352251 (not (= lambda!313049 lambda!313038))))

(assert (=> bs!1352251 (not (= lambda!313049 lambda!313039))))

(declare-fun bs!1352252 () Bool)

(assert (= bs!1352252 (and b!5764915 b!5763724)))

(assert (=> bs!1352252 (= (and (= (reg!16104 (regTwo!32063 r!7292)) (reg!16104 r!7292)) (= (regTwo!32063 r!7292) r!7292)) (= lambda!313049 lambda!312967))))

(declare-fun bs!1352253 () Bool)

(assert (= bs!1352253 (and b!5764915 b!5763152)))

(assert (=> bs!1352253 (not (= lambda!313049 lambda!312916))))

(declare-fun bs!1352254 () Bool)

(assert (= bs!1352254 (and b!5764915 b!5763848)))

(assert (=> bs!1352254 (= (and (= (reg!16104 (regTwo!32063 r!7292)) (reg!16104 (regTwo!32062 r!7292))) (= (regTwo!32063 r!7292) (regTwo!32062 r!7292))) (= lambda!313049 lambda!312983))))

(declare-fun bs!1352255 () Bool)

(assert (= bs!1352255 (and b!5764915 b!5763823)))

(assert (=> bs!1352255 (= (and (= (reg!16104 (regTwo!32063 r!7292)) (reg!16104 (regOne!32062 r!7292))) (= (regTwo!32063 r!7292) (regOne!32062 r!7292))) (= lambda!313049 lambda!312981))))

(declare-fun bs!1352256 () Bool)

(assert (= bs!1352256 (and b!5764915 d!1816153)))

(assert (=> bs!1352256 (not (= lambda!313049 lambda!313031))))

(declare-fun bs!1352257 () Bool)

(assert (= bs!1352257 (and b!5764915 d!1815805)))

(assert (=> bs!1352257 (not (= lambda!313049 lambda!312976))))

(declare-fun bs!1352258 () Bool)

(assert (= bs!1352258 (and b!5764915 b!5764733)))

(assert (=> bs!1352258 (= (and (= (reg!16104 (regTwo!32063 r!7292)) (reg!16104 (regTwo!32063 (regTwo!32062 r!7292)))) (= (regTwo!32063 r!7292) (regTwo!32063 (regTwo!32062 r!7292)))) (= lambda!313049 lambda!313032))))

(assert (=> bs!1352257 (not (= lambda!313049 lambda!312977))))

(declare-fun bs!1352259 () Bool)

(assert (= bs!1352259 (and b!5764915 b!5763845)))

(assert (=> bs!1352259 (not (= lambda!313049 lambda!312984))))

(declare-fun bs!1352260 () Bool)

(assert (= bs!1352260 (and b!5764915 b!5763820)))

(assert (=> bs!1352260 (not (= lambda!313049 lambda!312982))))

(assert (=> bs!1352253 (not (= lambda!313049 lambda!312915))))

(declare-fun bs!1352261 () Bool)

(assert (= bs!1352261 (and b!5764915 b!5764730)))

(assert (=> bs!1352261 (not (= lambda!313049 lambda!313033))))

(declare-fun bs!1352262 () Bool)

(assert (= bs!1352262 (and b!5764915 b!5764643)))

(assert (=> bs!1352262 (not (= lambda!313049 lambda!313025))))

(declare-fun bs!1352263 () Bool)

(assert (= bs!1352263 (and b!5764915 b!5764689)))

(assert (=> bs!1352263 (= (and (= (reg!16104 (regTwo!32063 r!7292)) (reg!16104 (regOne!32063 r!7292))) (= (regTwo!32063 r!7292) (regOne!32063 r!7292))) (= lambda!313049 lambda!313026))))

(assert (=> b!5764915 true))

(assert (=> b!5764915 true))

(declare-fun bs!1352264 () Bool)

(declare-fun b!5764912 () Bool)

(assert (= bs!1352264 (and b!5764912 b!5763721)))

(declare-fun lambda!313050 () Int)

(assert (=> bs!1352264 (= (and (= (regOne!32062 (regTwo!32063 r!7292)) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32063 r!7292)) (regTwo!32062 r!7292))) (= lambda!313050 lambda!312968))))

(declare-fun bs!1352265 () Bool)

(assert (= bs!1352265 (and b!5764912 d!1815803)))

(assert (=> bs!1352265 (not (= lambda!313050 lambda!312971))))

(declare-fun bs!1352266 () Bool)

(assert (= bs!1352266 (and b!5764912 b!5764686)))

(assert (=> bs!1352266 (= (and (= (regOne!32062 (regTwo!32063 r!7292)) (regOne!32062 (regOne!32063 r!7292))) (= (regTwo!32062 (regTwo!32063 r!7292)) (regTwo!32062 (regOne!32063 r!7292)))) (= lambda!313050 lambda!313027))))

(declare-fun bs!1352267 () Bool)

(assert (= bs!1352267 (and b!5764912 b!5764915)))

(assert (=> bs!1352267 (not (= lambda!313050 lambda!313049))))

(declare-fun bs!1352268 () Bool)

(assert (= bs!1352268 (and b!5764912 b!5764646)))

(assert (=> bs!1352268 (not (= lambda!313050 lambda!313024))))

(declare-fun bs!1352269 () Bool)

(assert (= bs!1352269 (and b!5764912 d!1816163)))

(assert (=> bs!1352269 (not (= lambda!313050 lambda!313038))))

(assert (=> bs!1352269 (= (and (= (regOne!32062 (regTwo!32063 r!7292)) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32063 r!7292)) (regTwo!32062 r!7292))) (= lambda!313050 lambda!313039))))

(declare-fun bs!1352270 () Bool)

(assert (= bs!1352270 (and b!5764912 b!5763724)))

(assert (=> bs!1352270 (not (= lambda!313050 lambda!312967))))

(declare-fun bs!1352271 () Bool)

(assert (= bs!1352271 (and b!5764912 b!5763152)))

(assert (=> bs!1352271 (= (and (= (regOne!32062 (regTwo!32063 r!7292)) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32063 r!7292)) (regTwo!32062 r!7292))) (= lambda!313050 lambda!312916))))

(declare-fun bs!1352272 () Bool)

(assert (= bs!1352272 (and b!5764912 b!5763848)))

(assert (=> bs!1352272 (not (= lambda!313050 lambda!312983))))

(declare-fun bs!1352273 () Bool)

(assert (= bs!1352273 (and b!5764912 b!5763823)))

(assert (=> bs!1352273 (not (= lambda!313050 lambda!312981))))

(declare-fun bs!1352274 () Bool)

(assert (= bs!1352274 (and b!5764912 d!1816153)))

(assert (=> bs!1352274 (not (= lambda!313050 lambda!313031))))

(declare-fun bs!1352275 () Bool)

(assert (= bs!1352275 (and b!5764912 d!1815805)))

(assert (=> bs!1352275 (not (= lambda!313050 lambda!312976))))

(declare-fun bs!1352276 () Bool)

(assert (= bs!1352276 (and b!5764912 b!5764733)))

(assert (=> bs!1352276 (not (= lambda!313050 lambda!313032))))

(assert (=> bs!1352275 (= (and (= (regOne!32062 (regTwo!32063 r!7292)) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32063 r!7292)) (regTwo!32062 r!7292))) (= lambda!313050 lambda!312977))))

(declare-fun bs!1352277 () Bool)

(assert (= bs!1352277 (and b!5764912 b!5763845)))

(assert (=> bs!1352277 (= (and (= (regOne!32062 (regTwo!32063 r!7292)) (regOne!32062 (regTwo!32062 r!7292))) (= (regTwo!32062 (regTwo!32063 r!7292)) (regTwo!32062 (regTwo!32062 r!7292)))) (= lambda!313050 lambda!312984))))

(declare-fun bs!1352278 () Bool)

(assert (= bs!1352278 (and b!5764912 b!5763820)))

(assert (=> bs!1352278 (= (and (= (regOne!32062 (regTwo!32063 r!7292)) (regOne!32062 (regOne!32062 r!7292))) (= (regTwo!32062 (regTwo!32063 r!7292)) (regTwo!32062 (regOne!32062 r!7292)))) (= lambda!313050 lambda!312982))))

(assert (=> bs!1352271 (not (= lambda!313050 lambda!312915))))

(declare-fun bs!1352279 () Bool)

(assert (= bs!1352279 (and b!5764912 b!5764730)))

(assert (=> bs!1352279 (= (and (= (regOne!32062 (regTwo!32063 r!7292)) (regOne!32062 (regTwo!32063 (regTwo!32062 r!7292)))) (= (regTwo!32062 (regTwo!32063 r!7292)) (regTwo!32062 (regTwo!32063 (regTwo!32062 r!7292))))) (= lambda!313050 lambda!313033))))

(declare-fun bs!1352280 () Bool)

(assert (= bs!1352280 (and b!5764912 b!5764643)))

(assert (=> bs!1352280 (= (and (= (regOne!32062 (regTwo!32063 r!7292)) (regOne!32062 (regOne!32063 (regOne!32062 r!7292)))) (= (regTwo!32062 (regTwo!32063 r!7292)) (regTwo!32062 (regOne!32063 (regOne!32062 r!7292))))) (= lambda!313050 lambda!313025))))

(declare-fun bs!1352281 () Bool)

(assert (= bs!1352281 (and b!5764912 b!5764689)))

(assert (=> bs!1352281 (not (= lambda!313050 lambda!313026))))

(assert (=> b!5764912 true))

(assert (=> b!5764912 true))

(declare-fun b!5764909 () Bool)

(declare-fun e!3542002 () Bool)

(assert (=> b!5764909 (= e!3542002 (matchRSpec!2878 (regTwo!32063 (regTwo!32063 r!7292)) s!2326))))

(declare-fun b!5764910 () Bool)

(declare-fun e!3542000 () Bool)

(declare-fun e!3541998 () Bool)

(assert (=> b!5764910 (= e!3542000 e!3541998)))

(declare-fun c!1019102 () Bool)

(assert (=> b!5764910 (= c!1019102 ((_ is Star!15775) (regTwo!32063 r!7292)))))

(declare-fun b!5764911 () Bool)

(declare-fun e!3542004 () Bool)

(declare-fun call!442752 () Bool)

(assert (=> b!5764911 (= e!3542004 call!442752)))

(declare-fun call!442751 () Bool)

(assert (=> b!5764912 (= e!3541998 call!442751)))

(declare-fun d!1816245 () Bool)

(declare-fun c!1019101 () Bool)

(assert (=> d!1816245 (= c!1019101 ((_ is EmptyExpr!15775) (regTwo!32063 r!7292)))))

(assert (=> d!1816245 (= (matchRSpec!2878 (regTwo!32063 r!7292) s!2326) e!3542004)))

(declare-fun bm!442746 () Bool)

(assert (=> bm!442746 (= call!442751 (Exists!2875 (ite c!1019102 lambda!313049 lambda!313050)))))

(declare-fun b!5764913 () Bool)

(declare-fun e!3541999 () Bool)

(assert (=> b!5764913 (= e!3541999 (= s!2326 (Cons!63500 (c!1018649 (regTwo!32063 r!7292)) Nil!63500)))))

(declare-fun b!5764914 () Bool)

(assert (=> b!5764914 (= e!3542000 e!3542002)))

(declare-fun res!2432971 () Bool)

(assert (=> b!5764914 (= res!2432971 (matchRSpec!2878 (regOne!32063 (regTwo!32063 r!7292)) s!2326))))

(assert (=> b!5764914 (=> res!2432971 e!3542002)))

(declare-fun e!3542003 () Bool)

(assert (=> b!5764915 (= e!3542003 call!442751)))

(declare-fun b!5764916 () Bool)

(declare-fun c!1019103 () Bool)

(assert (=> b!5764916 (= c!1019103 ((_ is Union!15775) (regTwo!32063 r!7292)))))

(assert (=> b!5764916 (= e!3541999 e!3542000)))

(declare-fun b!5764917 () Bool)

(declare-fun e!3542001 () Bool)

(assert (=> b!5764917 (= e!3542004 e!3542001)))

(declare-fun res!2432969 () Bool)

(assert (=> b!5764917 (= res!2432969 (not ((_ is EmptyLang!15775) (regTwo!32063 r!7292))))))

(assert (=> b!5764917 (=> (not res!2432969) (not e!3542001))))

(declare-fun bm!442747 () Bool)

(assert (=> bm!442747 (= call!442752 (isEmpty!35392 s!2326))))

(declare-fun b!5764918 () Bool)

(declare-fun res!2432970 () Bool)

(assert (=> b!5764918 (=> res!2432970 e!3542003)))

(assert (=> b!5764918 (= res!2432970 call!442752)))

(assert (=> b!5764918 (= e!3541998 e!3542003)))

(declare-fun b!5764919 () Bool)

(declare-fun c!1019100 () Bool)

(assert (=> b!5764919 (= c!1019100 ((_ is ElementMatch!15775) (regTwo!32063 r!7292)))))

(assert (=> b!5764919 (= e!3542001 e!3541999)))

(assert (= (and d!1816245 c!1019101) b!5764911))

(assert (= (and d!1816245 (not c!1019101)) b!5764917))

(assert (= (and b!5764917 res!2432969) b!5764919))

(assert (= (and b!5764919 c!1019100) b!5764913))

(assert (= (and b!5764919 (not c!1019100)) b!5764916))

(assert (= (and b!5764916 c!1019103) b!5764914))

(assert (= (and b!5764916 (not c!1019103)) b!5764910))

(assert (= (and b!5764914 (not res!2432971)) b!5764909))

(assert (= (and b!5764910 c!1019102) b!5764918))

(assert (= (and b!5764910 (not c!1019102)) b!5764912))

(assert (= (and b!5764918 (not res!2432970)) b!5764915))

(assert (= (or b!5764915 b!5764912) bm!442746))

(assert (= (or b!5764911 b!5764918) bm!442747))

(declare-fun m!6711248 () Bool)

(assert (=> b!5764909 m!6711248))

(declare-fun m!6711250 () Bool)

(assert (=> bm!442746 m!6711250))

(declare-fun m!6711252 () Bool)

(assert (=> b!5764914 m!6711252))

(assert (=> bm!442747 m!6710306))

(assert (=> b!5763718 d!1816245))

(declare-fun d!1816247 () Bool)

(declare-fun res!2432974 () Bool)

(declare-fun e!3542010 () Bool)

(assert (=> d!1816247 (=> res!2432974 e!3542010)))

(assert (=> d!1816247 (= res!2432974 ((_ is ElementMatch!15775) lt!2289130))))

(assert (=> d!1816247 (= (validRegex!7511 lt!2289130) e!3542010)))

(declare-fun b!5764920 () Bool)

(declare-fun e!3542005 () Bool)

(declare-fun call!442753 () Bool)

(assert (=> b!5764920 (= e!3542005 call!442753)))

(declare-fun b!5764921 () Bool)

(declare-fun e!3542007 () Bool)

(declare-fun e!3542009 () Bool)

(assert (=> b!5764921 (= e!3542007 e!3542009)))

(declare-fun res!2432972 () Bool)

(assert (=> b!5764921 (=> (not res!2432972) (not e!3542009))))

(declare-fun call!442754 () Bool)

(assert (=> b!5764921 (= res!2432972 call!442754)))

(declare-fun c!1019104 () Bool)

(declare-fun call!442755 () Bool)

(declare-fun c!1019105 () Bool)

(declare-fun bm!442748 () Bool)

(assert (=> bm!442748 (= call!442755 (validRegex!7511 (ite c!1019104 (reg!16104 lt!2289130) (ite c!1019105 (regOne!32063 lt!2289130) (regOne!32062 lt!2289130)))))))

(declare-fun b!5764922 () Bool)

(assert (=> b!5764922 (= e!3542009 call!442753)))

(declare-fun b!5764923 () Bool)

(declare-fun e!3542008 () Bool)

(assert (=> b!5764923 (= e!3542008 call!442755)))

(declare-fun b!5764924 () Bool)

(declare-fun e!3542006 () Bool)

(assert (=> b!5764924 (= e!3542006 e!3542008)))

(declare-fun res!2432976 () Bool)

(assert (=> b!5764924 (= res!2432976 (not (nullable!5807 (reg!16104 lt!2289130))))))

(assert (=> b!5764924 (=> (not res!2432976) (not e!3542008))))

(declare-fun b!5764925 () Bool)

(declare-fun res!2432973 () Bool)

(assert (=> b!5764925 (=> (not res!2432973) (not e!3542005))))

(assert (=> b!5764925 (= res!2432973 call!442754)))

(declare-fun e!3542011 () Bool)

(assert (=> b!5764925 (= e!3542011 e!3542005)))

(declare-fun b!5764926 () Bool)

(assert (=> b!5764926 (= e!3542010 e!3542006)))

(assert (=> b!5764926 (= c!1019104 ((_ is Star!15775) lt!2289130))))

(declare-fun bm!442749 () Bool)

(assert (=> bm!442749 (= call!442753 (validRegex!7511 (ite c!1019105 (regTwo!32063 lt!2289130) (regTwo!32062 lt!2289130))))))

(declare-fun b!5764927 () Bool)

(assert (=> b!5764927 (= e!3542006 e!3542011)))

(assert (=> b!5764927 (= c!1019105 ((_ is Union!15775) lt!2289130))))

(declare-fun bm!442750 () Bool)

(assert (=> bm!442750 (= call!442754 call!442755)))

(declare-fun b!5764928 () Bool)

(declare-fun res!2432975 () Bool)

(assert (=> b!5764928 (=> res!2432975 e!3542007)))

(assert (=> b!5764928 (= res!2432975 (not ((_ is Concat!24620) lt!2289130)))))

(assert (=> b!5764928 (= e!3542011 e!3542007)))

(assert (= (and d!1816247 (not res!2432974)) b!5764926))

(assert (= (and b!5764926 c!1019104) b!5764924))

(assert (= (and b!5764926 (not c!1019104)) b!5764927))

(assert (= (and b!5764924 res!2432976) b!5764923))

(assert (= (and b!5764927 c!1019105) b!5764925))

(assert (= (and b!5764927 (not c!1019105)) b!5764928))

(assert (= (and b!5764925 res!2432973) b!5764920))

(assert (= (and b!5764928 (not res!2432975)) b!5764921))

(assert (= (and b!5764921 res!2432972) b!5764922))

(assert (= (or b!5764920 b!5764922) bm!442749))

(assert (= (or b!5764925 b!5764921) bm!442750))

(assert (= (or b!5764923 bm!442750) bm!442748))

(declare-fun m!6711254 () Bool)

(assert (=> bm!442748 m!6711254))

(declare-fun m!6711256 () Bool)

(assert (=> b!5764924 m!6711256))

(declare-fun m!6711258 () Bool)

(assert (=> bm!442749 m!6711258))

(assert (=> d!1815839 d!1816247))

(declare-fun d!1816249 () Bool)

(declare-fun res!2432977 () Bool)

(declare-fun e!3542012 () Bool)

(assert (=> d!1816249 (=> res!2432977 e!3542012)))

(assert (=> d!1816249 (= res!2432977 ((_ is Nil!63501) (exprs!5659 (h!69950 zl!343))))))

(assert (=> d!1816249 (= (forall!14893 (exprs!5659 (h!69950 zl!343)) lambda!312988) e!3542012)))

(declare-fun b!5764929 () Bool)

(declare-fun e!3542013 () Bool)

(assert (=> b!5764929 (= e!3542012 e!3542013)))

(declare-fun res!2432978 () Bool)

(assert (=> b!5764929 (=> (not res!2432978) (not e!3542013))))

(assert (=> b!5764929 (= res!2432978 (dynLambda!24859 lambda!312988 (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun b!5764930 () Bool)

(assert (=> b!5764930 (= e!3542013 (forall!14893 (t!376959 (exprs!5659 (h!69950 zl!343))) lambda!312988))))

(assert (= (and d!1816249 (not res!2432977)) b!5764929))

(assert (= (and b!5764929 res!2432978) b!5764930))

(declare-fun b_lambda!217635 () Bool)

(assert (=> (not b_lambda!217635) (not b!5764929)))

(declare-fun m!6711260 () Bool)

(assert (=> b!5764929 m!6711260))

(declare-fun m!6711262 () Bool)

(assert (=> b!5764930 m!6711262))

(assert (=> d!1815839 d!1816249))

(assert (=> b!5763831 d!1816091))

(declare-fun bs!1352282 () Bool)

(declare-fun b!5764937 () Bool)

(assert (= bs!1352282 (and b!5764937 b!5763721)))

(declare-fun lambda!313051 () Int)

(assert (=> bs!1352282 (not (= lambda!313051 lambda!312968))))

(declare-fun bs!1352283 () Bool)

(assert (= bs!1352283 (and b!5764937 d!1815803)))

(assert (=> bs!1352283 (not (= lambda!313051 lambda!312971))))

(declare-fun bs!1352284 () Bool)

(assert (= bs!1352284 (and b!5764937 b!5764686)))

(assert (=> bs!1352284 (not (= lambda!313051 lambda!313027))))

(declare-fun bs!1352285 () Bool)

(assert (= bs!1352285 (and b!5764937 b!5764915)))

(assert (=> bs!1352285 (= (and (= (reg!16104 (regTwo!32063 (regOne!32062 r!7292))) (reg!16104 (regTwo!32063 r!7292))) (= (regTwo!32063 (regOne!32062 r!7292)) (regTwo!32063 r!7292))) (= lambda!313051 lambda!313049))))

(declare-fun bs!1352286 () Bool)

(assert (= bs!1352286 (and b!5764937 b!5764646)))

(assert (=> bs!1352286 (= (and (= (reg!16104 (regTwo!32063 (regOne!32062 r!7292))) (reg!16104 (regOne!32063 (regOne!32062 r!7292)))) (= (regTwo!32063 (regOne!32062 r!7292)) (regOne!32063 (regOne!32062 r!7292)))) (= lambda!313051 lambda!313024))))

(declare-fun bs!1352287 () Bool)

(assert (= bs!1352287 (and b!5764937 d!1816163)))

(assert (=> bs!1352287 (not (= lambda!313051 lambda!313038))))

(assert (=> bs!1352287 (not (= lambda!313051 lambda!313039))))

(declare-fun bs!1352288 () Bool)

(assert (= bs!1352288 (and b!5764937 b!5763724)))

(assert (=> bs!1352288 (= (and (= (reg!16104 (regTwo!32063 (regOne!32062 r!7292))) (reg!16104 r!7292)) (= (regTwo!32063 (regOne!32062 r!7292)) r!7292)) (= lambda!313051 lambda!312967))))

(declare-fun bs!1352289 () Bool)

(assert (= bs!1352289 (and b!5764937 b!5763152)))

(assert (=> bs!1352289 (not (= lambda!313051 lambda!312916))))

(declare-fun bs!1352290 () Bool)

(assert (= bs!1352290 (and b!5764937 b!5763848)))

(assert (=> bs!1352290 (= (and (= (reg!16104 (regTwo!32063 (regOne!32062 r!7292))) (reg!16104 (regTwo!32062 r!7292))) (= (regTwo!32063 (regOne!32062 r!7292)) (regTwo!32062 r!7292))) (= lambda!313051 lambda!312983))))

(declare-fun bs!1352291 () Bool)

(assert (= bs!1352291 (and b!5764937 b!5763823)))

(assert (=> bs!1352291 (= (and (= (reg!16104 (regTwo!32063 (regOne!32062 r!7292))) (reg!16104 (regOne!32062 r!7292))) (= (regTwo!32063 (regOne!32062 r!7292)) (regOne!32062 r!7292))) (= lambda!313051 lambda!312981))))

(declare-fun bs!1352292 () Bool)

(assert (= bs!1352292 (and b!5764937 d!1816153)))

(assert (=> bs!1352292 (not (= lambda!313051 lambda!313031))))

(declare-fun bs!1352293 () Bool)

(assert (= bs!1352293 (and b!5764937 d!1815805)))

(assert (=> bs!1352293 (not (= lambda!313051 lambda!312976))))

(declare-fun bs!1352294 () Bool)

(assert (= bs!1352294 (and b!5764937 b!5764733)))

(assert (=> bs!1352294 (= (and (= (reg!16104 (regTwo!32063 (regOne!32062 r!7292))) (reg!16104 (regTwo!32063 (regTwo!32062 r!7292)))) (= (regTwo!32063 (regOne!32062 r!7292)) (regTwo!32063 (regTwo!32062 r!7292)))) (= lambda!313051 lambda!313032))))

(assert (=> bs!1352293 (not (= lambda!313051 lambda!312977))))

(declare-fun bs!1352295 () Bool)

(assert (= bs!1352295 (and b!5764937 b!5764912)))

(assert (=> bs!1352295 (not (= lambda!313051 lambda!313050))))

(declare-fun bs!1352296 () Bool)

(assert (= bs!1352296 (and b!5764937 b!5763845)))

(assert (=> bs!1352296 (not (= lambda!313051 lambda!312984))))

(declare-fun bs!1352297 () Bool)

(assert (= bs!1352297 (and b!5764937 b!5763820)))

(assert (=> bs!1352297 (not (= lambda!313051 lambda!312982))))

(assert (=> bs!1352289 (not (= lambda!313051 lambda!312915))))

(declare-fun bs!1352298 () Bool)

(assert (= bs!1352298 (and b!5764937 b!5764730)))

(assert (=> bs!1352298 (not (= lambda!313051 lambda!313033))))

(declare-fun bs!1352299 () Bool)

(assert (= bs!1352299 (and b!5764937 b!5764643)))

(assert (=> bs!1352299 (not (= lambda!313051 lambda!313025))))

(declare-fun bs!1352300 () Bool)

(assert (= bs!1352300 (and b!5764937 b!5764689)))

(assert (=> bs!1352300 (= (and (= (reg!16104 (regTwo!32063 (regOne!32062 r!7292))) (reg!16104 (regOne!32063 r!7292))) (= (regTwo!32063 (regOne!32062 r!7292)) (regOne!32063 r!7292))) (= lambda!313051 lambda!313026))))

(assert (=> b!5764937 true))

(assert (=> b!5764937 true))

(declare-fun bs!1352301 () Bool)

(declare-fun b!5764934 () Bool)

(assert (= bs!1352301 (and b!5764934 b!5763721)))

(declare-fun lambda!313052 () Int)

(assert (=> bs!1352301 (= (and (= (regOne!32062 (regTwo!32063 (regOne!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32063 (regOne!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313052 lambda!312968))))

(declare-fun bs!1352302 () Bool)

(assert (= bs!1352302 (and b!5764934 d!1815803)))

(assert (=> bs!1352302 (not (= lambda!313052 lambda!312971))))

(declare-fun bs!1352303 () Bool)

(assert (= bs!1352303 (and b!5764934 b!5764686)))

(assert (=> bs!1352303 (= (and (= (regOne!32062 (regTwo!32063 (regOne!32062 r!7292))) (regOne!32062 (regOne!32063 r!7292))) (= (regTwo!32062 (regTwo!32063 (regOne!32062 r!7292))) (regTwo!32062 (regOne!32063 r!7292)))) (= lambda!313052 lambda!313027))))

(declare-fun bs!1352304 () Bool)

(assert (= bs!1352304 (and b!5764934 b!5764915)))

(assert (=> bs!1352304 (not (= lambda!313052 lambda!313049))))

(declare-fun bs!1352305 () Bool)

(assert (= bs!1352305 (and b!5764934 b!5764646)))

(assert (=> bs!1352305 (not (= lambda!313052 lambda!313024))))

(declare-fun bs!1352306 () Bool)

(assert (= bs!1352306 (and b!5764934 d!1816163)))

(assert (=> bs!1352306 (not (= lambda!313052 lambda!313038))))

(assert (=> bs!1352306 (= (and (= (regOne!32062 (regTwo!32063 (regOne!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32063 (regOne!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313052 lambda!313039))))

(declare-fun bs!1352307 () Bool)

(assert (= bs!1352307 (and b!5764934 b!5763724)))

(assert (=> bs!1352307 (not (= lambda!313052 lambda!312967))))

(declare-fun bs!1352308 () Bool)

(assert (= bs!1352308 (and b!5764934 b!5763152)))

(assert (=> bs!1352308 (= (and (= (regOne!32062 (regTwo!32063 (regOne!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32063 (regOne!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313052 lambda!312916))))

(declare-fun bs!1352309 () Bool)

(assert (= bs!1352309 (and b!5764934 b!5763848)))

(assert (=> bs!1352309 (not (= lambda!313052 lambda!312983))))

(declare-fun bs!1352310 () Bool)

(assert (= bs!1352310 (and b!5764934 b!5763823)))

(assert (=> bs!1352310 (not (= lambda!313052 lambda!312981))))

(declare-fun bs!1352311 () Bool)

(assert (= bs!1352311 (and b!5764934 d!1816153)))

(assert (=> bs!1352311 (not (= lambda!313052 lambda!313031))))

(declare-fun bs!1352312 () Bool)

(assert (= bs!1352312 (and b!5764934 b!5764937)))

(assert (=> bs!1352312 (not (= lambda!313052 lambda!313051))))

(declare-fun bs!1352313 () Bool)

(assert (= bs!1352313 (and b!5764934 d!1815805)))

(assert (=> bs!1352313 (not (= lambda!313052 lambda!312976))))

(declare-fun bs!1352314 () Bool)

(assert (= bs!1352314 (and b!5764934 b!5764733)))

(assert (=> bs!1352314 (not (= lambda!313052 lambda!313032))))

(assert (=> bs!1352313 (= (and (= (regOne!32062 (regTwo!32063 (regOne!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regTwo!32063 (regOne!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313052 lambda!312977))))

(declare-fun bs!1352315 () Bool)

(assert (= bs!1352315 (and b!5764934 b!5764912)))

(assert (=> bs!1352315 (= (and (= (regOne!32062 (regTwo!32063 (regOne!32062 r!7292))) (regOne!32062 (regTwo!32063 r!7292))) (= (regTwo!32062 (regTwo!32063 (regOne!32062 r!7292))) (regTwo!32062 (regTwo!32063 r!7292)))) (= lambda!313052 lambda!313050))))

(declare-fun bs!1352316 () Bool)

(assert (= bs!1352316 (and b!5764934 b!5763845)))

(assert (=> bs!1352316 (= (and (= (regOne!32062 (regTwo!32063 (regOne!32062 r!7292))) (regOne!32062 (regTwo!32062 r!7292))) (= (regTwo!32062 (regTwo!32063 (regOne!32062 r!7292))) (regTwo!32062 (regTwo!32062 r!7292)))) (= lambda!313052 lambda!312984))))

(declare-fun bs!1352317 () Bool)

(assert (= bs!1352317 (and b!5764934 b!5763820)))

(assert (=> bs!1352317 (= (and (= (regOne!32062 (regTwo!32063 (regOne!32062 r!7292))) (regOne!32062 (regOne!32062 r!7292))) (= (regTwo!32062 (regTwo!32063 (regOne!32062 r!7292))) (regTwo!32062 (regOne!32062 r!7292)))) (= lambda!313052 lambda!312982))))

(assert (=> bs!1352308 (not (= lambda!313052 lambda!312915))))

(declare-fun bs!1352318 () Bool)

(assert (= bs!1352318 (and b!5764934 b!5764730)))

(assert (=> bs!1352318 (= (and (= (regOne!32062 (regTwo!32063 (regOne!32062 r!7292))) (regOne!32062 (regTwo!32063 (regTwo!32062 r!7292)))) (= (regTwo!32062 (regTwo!32063 (regOne!32062 r!7292))) (regTwo!32062 (regTwo!32063 (regTwo!32062 r!7292))))) (= lambda!313052 lambda!313033))))

(declare-fun bs!1352319 () Bool)

(assert (= bs!1352319 (and b!5764934 b!5764643)))

(assert (=> bs!1352319 (= (and (= (regOne!32062 (regTwo!32063 (regOne!32062 r!7292))) (regOne!32062 (regOne!32063 (regOne!32062 r!7292)))) (= (regTwo!32062 (regTwo!32063 (regOne!32062 r!7292))) (regTwo!32062 (regOne!32063 (regOne!32062 r!7292))))) (= lambda!313052 lambda!313025))))

(declare-fun bs!1352320 () Bool)

(assert (= bs!1352320 (and b!5764934 b!5764689)))

(assert (=> bs!1352320 (not (= lambda!313052 lambda!313026))))

(assert (=> b!5764934 true))

(assert (=> b!5764934 true))

(declare-fun b!5764931 () Bool)

(declare-fun e!3542018 () Bool)

(assert (=> b!5764931 (= e!3542018 (matchRSpec!2878 (regTwo!32063 (regTwo!32063 (regOne!32062 r!7292))) s!2326))))

(declare-fun b!5764932 () Bool)

(declare-fun e!3542016 () Bool)

(declare-fun e!3542014 () Bool)

(assert (=> b!5764932 (= e!3542016 e!3542014)))

(declare-fun c!1019108 () Bool)

(assert (=> b!5764932 (= c!1019108 ((_ is Star!15775) (regTwo!32063 (regOne!32062 r!7292))))))

(declare-fun b!5764933 () Bool)

(declare-fun e!3542020 () Bool)

(declare-fun call!442757 () Bool)

(assert (=> b!5764933 (= e!3542020 call!442757)))

(declare-fun call!442756 () Bool)

(assert (=> b!5764934 (= e!3542014 call!442756)))

(declare-fun d!1816251 () Bool)

(declare-fun c!1019107 () Bool)

(assert (=> d!1816251 (= c!1019107 ((_ is EmptyExpr!15775) (regTwo!32063 (regOne!32062 r!7292))))))

(assert (=> d!1816251 (= (matchRSpec!2878 (regTwo!32063 (regOne!32062 r!7292)) s!2326) e!3542020)))

(declare-fun bm!442751 () Bool)

(assert (=> bm!442751 (= call!442756 (Exists!2875 (ite c!1019108 lambda!313051 lambda!313052)))))

(declare-fun b!5764935 () Bool)

(declare-fun e!3542015 () Bool)

(assert (=> b!5764935 (= e!3542015 (= s!2326 (Cons!63500 (c!1018649 (regTwo!32063 (regOne!32062 r!7292))) Nil!63500)))))

(declare-fun b!5764936 () Bool)

(assert (=> b!5764936 (= e!3542016 e!3542018)))

(declare-fun res!2432981 () Bool)

(assert (=> b!5764936 (= res!2432981 (matchRSpec!2878 (regOne!32063 (regTwo!32063 (regOne!32062 r!7292))) s!2326))))

(assert (=> b!5764936 (=> res!2432981 e!3542018)))

(declare-fun e!3542019 () Bool)

(assert (=> b!5764937 (= e!3542019 call!442756)))

(declare-fun b!5764938 () Bool)

(declare-fun c!1019109 () Bool)

(assert (=> b!5764938 (= c!1019109 ((_ is Union!15775) (regTwo!32063 (regOne!32062 r!7292))))))

(assert (=> b!5764938 (= e!3542015 e!3542016)))

(declare-fun b!5764939 () Bool)

(declare-fun e!3542017 () Bool)

(assert (=> b!5764939 (= e!3542020 e!3542017)))

(declare-fun res!2432979 () Bool)

(assert (=> b!5764939 (= res!2432979 (not ((_ is EmptyLang!15775) (regTwo!32063 (regOne!32062 r!7292)))))))

(assert (=> b!5764939 (=> (not res!2432979) (not e!3542017))))

(declare-fun bm!442752 () Bool)

(assert (=> bm!442752 (= call!442757 (isEmpty!35392 s!2326))))

(declare-fun b!5764940 () Bool)

(declare-fun res!2432980 () Bool)

(assert (=> b!5764940 (=> res!2432980 e!3542019)))

(assert (=> b!5764940 (= res!2432980 call!442757)))

(assert (=> b!5764940 (= e!3542014 e!3542019)))

(declare-fun b!5764941 () Bool)

(declare-fun c!1019106 () Bool)

(assert (=> b!5764941 (= c!1019106 ((_ is ElementMatch!15775) (regTwo!32063 (regOne!32062 r!7292))))))

(assert (=> b!5764941 (= e!3542017 e!3542015)))

(assert (= (and d!1816251 c!1019107) b!5764933))

(assert (= (and d!1816251 (not c!1019107)) b!5764939))

(assert (= (and b!5764939 res!2432979) b!5764941))

(assert (= (and b!5764941 c!1019106) b!5764935))

(assert (= (and b!5764941 (not c!1019106)) b!5764938))

(assert (= (and b!5764938 c!1019109) b!5764936))

(assert (= (and b!5764938 (not c!1019109)) b!5764932))

(assert (= (and b!5764936 (not res!2432981)) b!5764931))

(assert (= (and b!5764932 c!1019108) b!5764940))

(assert (= (and b!5764932 (not c!1019108)) b!5764934))

(assert (= (and b!5764940 (not res!2432980)) b!5764937))

(assert (= (or b!5764937 b!5764934) bm!442751))

(assert (= (or b!5764933 b!5764940) bm!442752))

(declare-fun m!6711264 () Bool)

(assert (=> b!5764931 m!6711264))

(declare-fun m!6711266 () Bool)

(assert (=> bm!442751 m!6711266))

(declare-fun m!6711268 () Bool)

(assert (=> b!5764936 m!6711268))

(assert (=> bm!442752 m!6710306))

(assert (=> b!5763817 d!1816251))

(declare-fun bs!1352321 () Bool)

(declare-fun b!5764948 () Bool)

(assert (= bs!1352321 (and b!5764948 b!5763721)))

(declare-fun lambda!313053 () Int)

(assert (=> bs!1352321 (not (= lambda!313053 lambda!312968))))

(declare-fun bs!1352322 () Bool)

(assert (= bs!1352322 (and b!5764948 d!1815803)))

(assert (=> bs!1352322 (not (= lambda!313053 lambda!312971))))

(declare-fun bs!1352323 () Bool)

(assert (= bs!1352323 (and b!5764948 b!5764686)))

(assert (=> bs!1352323 (not (= lambda!313053 lambda!313027))))

(declare-fun bs!1352324 () Bool)

(assert (= bs!1352324 (and b!5764948 b!5764915)))

(assert (=> bs!1352324 (= (and (= (reg!16104 (regOne!32063 (regTwo!32062 r!7292))) (reg!16104 (regTwo!32063 r!7292))) (= (regOne!32063 (regTwo!32062 r!7292)) (regTwo!32063 r!7292))) (= lambda!313053 lambda!313049))))

(declare-fun bs!1352325 () Bool)

(assert (= bs!1352325 (and b!5764948 b!5764646)))

(assert (=> bs!1352325 (= (and (= (reg!16104 (regOne!32063 (regTwo!32062 r!7292))) (reg!16104 (regOne!32063 (regOne!32062 r!7292)))) (= (regOne!32063 (regTwo!32062 r!7292)) (regOne!32063 (regOne!32062 r!7292)))) (= lambda!313053 lambda!313024))))

(declare-fun bs!1352326 () Bool)

(assert (= bs!1352326 (and b!5764948 d!1816163)))

(assert (=> bs!1352326 (not (= lambda!313053 lambda!313038))))

(assert (=> bs!1352326 (not (= lambda!313053 lambda!313039))))

(declare-fun bs!1352327 () Bool)

(assert (= bs!1352327 (and b!5764948 b!5763724)))

(assert (=> bs!1352327 (= (and (= (reg!16104 (regOne!32063 (regTwo!32062 r!7292))) (reg!16104 r!7292)) (= (regOne!32063 (regTwo!32062 r!7292)) r!7292)) (= lambda!313053 lambda!312967))))

(declare-fun bs!1352328 () Bool)

(assert (= bs!1352328 (and b!5764948 b!5764934)))

(assert (=> bs!1352328 (not (= lambda!313053 lambda!313052))))

(declare-fun bs!1352329 () Bool)

(assert (= bs!1352329 (and b!5764948 b!5763152)))

(assert (=> bs!1352329 (not (= lambda!313053 lambda!312916))))

(declare-fun bs!1352330 () Bool)

(assert (= bs!1352330 (and b!5764948 b!5763848)))

(assert (=> bs!1352330 (= (and (= (reg!16104 (regOne!32063 (regTwo!32062 r!7292))) (reg!16104 (regTwo!32062 r!7292))) (= (regOne!32063 (regTwo!32062 r!7292)) (regTwo!32062 r!7292))) (= lambda!313053 lambda!312983))))

(declare-fun bs!1352331 () Bool)

(assert (= bs!1352331 (and b!5764948 b!5763823)))

(assert (=> bs!1352331 (= (and (= (reg!16104 (regOne!32063 (regTwo!32062 r!7292))) (reg!16104 (regOne!32062 r!7292))) (= (regOne!32063 (regTwo!32062 r!7292)) (regOne!32062 r!7292))) (= lambda!313053 lambda!312981))))

(declare-fun bs!1352332 () Bool)

(assert (= bs!1352332 (and b!5764948 d!1816153)))

(assert (=> bs!1352332 (not (= lambda!313053 lambda!313031))))

(declare-fun bs!1352333 () Bool)

(assert (= bs!1352333 (and b!5764948 b!5764937)))

(assert (=> bs!1352333 (= (and (= (reg!16104 (regOne!32063 (regTwo!32062 r!7292))) (reg!16104 (regTwo!32063 (regOne!32062 r!7292)))) (= (regOne!32063 (regTwo!32062 r!7292)) (regTwo!32063 (regOne!32062 r!7292)))) (= lambda!313053 lambda!313051))))

(declare-fun bs!1352334 () Bool)

(assert (= bs!1352334 (and b!5764948 d!1815805)))

(assert (=> bs!1352334 (not (= lambda!313053 lambda!312976))))

(declare-fun bs!1352335 () Bool)

(assert (= bs!1352335 (and b!5764948 b!5764733)))

(assert (=> bs!1352335 (= (and (= (reg!16104 (regOne!32063 (regTwo!32062 r!7292))) (reg!16104 (regTwo!32063 (regTwo!32062 r!7292)))) (= (regOne!32063 (regTwo!32062 r!7292)) (regTwo!32063 (regTwo!32062 r!7292)))) (= lambda!313053 lambda!313032))))

(assert (=> bs!1352334 (not (= lambda!313053 lambda!312977))))

(declare-fun bs!1352336 () Bool)

(assert (= bs!1352336 (and b!5764948 b!5764912)))

(assert (=> bs!1352336 (not (= lambda!313053 lambda!313050))))

(declare-fun bs!1352337 () Bool)

(assert (= bs!1352337 (and b!5764948 b!5763845)))

(assert (=> bs!1352337 (not (= lambda!313053 lambda!312984))))

(declare-fun bs!1352338 () Bool)

(assert (= bs!1352338 (and b!5764948 b!5763820)))

(assert (=> bs!1352338 (not (= lambda!313053 lambda!312982))))

(assert (=> bs!1352329 (not (= lambda!313053 lambda!312915))))

(declare-fun bs!1352339 () Bool)

(assert (= bs!1352339 (and b!5764948 b!5764730)))

(assert (=> bs!1352339 (not (= lambda!313053 lambda!313033))))

(declare-fun bs!1352340 () Bool)

(assert (= bs!1352340 (and b!5764948 b!5764643)))

(assert (=> bs!1352340 (not (= lambda!313053 lambda!313025))))

(declare-fun bs!1352341 () Bool)

(assert (= bs!1352341 (and b!5764948 b!5764689)))

(assert (=> bs!1352341 (= (and (= (reg!16104 (regOne!32063 (regTwo!32062 r!7292))) (reg!16104 (regOne!32063 r!7292))) (= (regOne!32063 (regTwo!32062 r!7292)) (regOne!32063 r!7292))) (= lambda!313053 lambda!313026))))

(assert (=> b!5764948 true))

(assert (=> b!5764948 true))

(declare-fun bs!1352342 () Bool)

(declare-fun b!5764945 () Bool)

(assert (= bs!1352342 (and b!5764945 b!5763721)))

(declare-fun lambda!313054 () Int)

(assert (=> bs!1352342 (= (and (= (regOne!32062 (regOne!32063 (regTwo!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regOne!32063 (regTwo!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313054 lambda!312968))))

(declare-fun bs!1352343 () Bool)

(assert (= bs!1352343 (and b!5764945 d!1815803)))

(assert (=> bs!1352343 (not (= lambda!313054 lambda!312971))))

(declare-fun bs!1352344 () Bool)

(assert (= bs!1352344 (and b!5764945 b!5764686)))

(assert (=> bs!1352344 (= (and (= (regOne!32062 (regOne!32063 (regTwo!32062 r!7292))) (regOne!32062 (regOne!32063 r!7292))) (= (regTwo!32062 (regOne!32063 (regTwo!32062 r!7292))) (regTwo!32062 (regOne!32063 r!7292)))) (= lambda!313054 lambda!313027))))

(declare-fun bs!1352345 () Bool)

(assert (= bs!1352345 (and b!5764945 b!5764915)))

(assert (=> bs!1352345 (not (= lambda!313054 lambda!313049))))

(declare-fun bs!1352346 () Bool)

(assert (= bs!1352346 (and b!5764945 b!5764646)))

(assert (=> bs!1352346 (not (= lambda!313054 lambda!313024))))

(declare-fun bs!1352347 () Bool)

(assert (= bs!1352347 (and b!5764945 d!1816163)))

(assert (=> bs!1352347 (not (= lambda!313054 lambda!313038))))

(assert (=> bs!1352347 (= (and (= (regOne!32062 (regOne!32063 (regTwo!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regOne!32063 (regTwo!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313054 lambda!313039))))

(declare-fun bs!1352348 () Bool)

(assert (= bs!1352348 (and b!5764945 b!5763724)))

(assert (=> bs!1352348 (not (= lambda!313054 lambda!312967))))

(declare-fun bs!1352349 () Bool)

(assert (= bs!1352349 (and b!5764945 b!5764934)))

(assert (=> bs!1352349 (= (and (= (regOne!32062 (regOne!32063 (regTwo!32062 r!7292))) (regOne!32062 (regTwo!32063 (regOne!32062 r!7292)))) (= (regTwo!32062 (regOne!32063 (regTwo!32062 r!7292))) (regTwo!32062 (regTwo!32063 (regOne!32062 r!7292))))) (= lambda!313054 lambda!313052))))

(declare-fun bs!1352350 () Bool)

(assert (= bs!1352350 (and b!5764945 b!5763152)))

(assert (=> bs!1352350 (= (and (= (regOne!32062 (regOne!32063 (regTwo!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regOne!32063 (regTwo!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313054 lambda!312916))))

(declare-fun bs!1352351 () Bool)

(assert (= bs!1352351 (and b!5764945 b!5764948)))

(assert (=> bs!1352351 (not (= lambda!313054 lambda!313053))))

(declare-fun bs!1352352 () Bool)

(assert (= bs!1352352 (and b!5764945 b!5763848)))

(assert (=> bs!1352352 (not (= lambda!313054 lambda!312983))))

(declare-fun bs!1352353 () Bool)

(assert (= bs!1352353 (and b!5764945 b!5763823)))

(assert (=> bs!1352353 (not (= lambda!313054 lambda!312981))))

(declare-fun bs!1352354 () Bool)

(assert (= bs!1352354 (and b!5764945 d!1816153)))

(assert (=> bs!1352354 (not (= lambda!313054 lambda!313031))))

(declare-fun bs!1352355 () Bool)

(assert (= bs!1352355 (and b!5764945 b!5764937)))

(assert (=> bs!1352355 (not (= lambda!313054 lambda!313051))))

(declare-fun bs!1352356 () Bool)

(assert (= bs!1352356 (and b!5764945 d!1815805)))

(assert (=> bs!1352356 (not (= lambda!313054 lambda!312976))))

(declare-fun bs!1352357 () Bool)

(assert (= bs!1352357 (and b!5764945 b!5764733)))

(assert (=> bs!1352357 (not (= lambda!313054 lambda!313032))))

(assert (=> bs!1352356 (= (and (= (regOne!32062 (regOne!32063 (regTwo!32062 r!7292))) (regOne!32062 r!7292)) (= (regTwo!32062 (regOne!32063 (regTwo!32062 r!7292))) (regTwo!32062 r!7292))) (= lambda!313054 lambda!312977))))

(declare-fun bs!1352358 () Bool)

(assert (= bs!1352358 (and b!5764945 b!5764912)))

(assert (=> bs!1352358 (= (and (= (regOne!32062 (regOne!32063 (regTwo!32062 r!7292))) (regOne!32062 (regTwo!32063 r!7292))) (= (regTwo!32062 (regOne!32063 (regTwo!32062 r!7292))) (regTwo!32062 (regTwo!32063 r!7292)))) (= lambda!313054 lambda!313050))))

(declare-fun bs!1352359 () Bool)

(assert (= bs!1352359 (and b!5764945 b!5763845)))

(assert (=> bs!1352359 (= (and (= (regOne!32062 (regOne!32063 (regTwo!32062 r!7292))) (regOne!32062 (regTwo!32062 r!7292))) (= (regTwo!32062 (regOne!32063 (regTwo!32062 r!7292))) (regTwo!32062 (regTwo!32062 r!7292)))) (= lambda!313054 lambda!312984))))

(declare-fun bs!1352360 () Bool)

(assert (= bs!1352360 (and b!5764945 b!5763820)))

(assert (=> bs!1352360 (= (and (= (regOne!32062 (regOne!32063 (regTwo!32062 r!7292))) (regOne!32062 (regOne!32062 r!7292))) (= (regTwo!32062 (regOne!32063 (regTwo!32062 r!7292))) (regTwo!32062 (regOne!32062 r!7292)))) (= lambda!313054 lambda!312982))))

(assert (=> bs!1352350 (not (= lambda!313054 lambda!312915))))

(declare-fun bs!1352361 () Bool)

(assert (= bs!1352361 (and b!5764945 b!5764730)))

(assert (=> bs!1352361 (= (and (= (regOne!32062 (regOne!32063 (regTwo!32062 r!7292))) (regOne!32062 (regTwo!32063 (regTwo!32062 r!7292)))) (= (regTwo!32062 (regOne!32063 (regTwo!32062 r!7292))) (regTwo!32062 (regTwo!32063 (regTwo!32062 r!7292))))) (= lambda!313054 lambda!313033))))

(declare-fun bs!1352362 () Bool)

(assert (= bs!1352362 (and b!5764945 b!5764643)))

(assert (=> bs!1352362 (= (and (= (regOne!32062 (regOne!32063 (regTwo!32062 r!7292))) (regOne!32062 (regOne!32063 (regOne!32062 r!7292)))) (= (regTwo!32062 (regOne!32063 (regTwo!32062 r!7292))) (regTwo!32062 (regOne!32063 (regOne!32062 r!7292))))) (= lambda!313054 lambda!313025))))

(declare-fun bs!1352363 () Bool)

(assert (= bs!1352363 (and b!5764945 b!5764689)))

(assert (=> bs!1352363 (not (= lambda!313054 lambda!313026))))

(assert (=> b!5764945 true))

(assert (=> b!5764945 true))

(declare-fun b!5764942 () Bool)

(declare-fun e!3542025 () Bool)

(assert (=> b!5764942 (= e!3542025 (matchRSpec!2878 (regTwo!32063 (regOne!32063 (regTwo!32062 r!7292))) s!2326))))

(declare-fun b!5764943 () Bool)

(declare-fun e!3542023 () Bool)

(declare-fun e!3542021 () Bool)

(assert (=> b!5764943 (= e!3542023 e!3542021)))

(declare-fun c!1019112 () Bool)

(assert (=> b!5764943 (= c!1019112 ((_ is Star!15775) (regOne!32063 (regTwo!32062 r!7292))))))

(declare-fun b!5764944 () Bool)

(declare-fun e!3542027 () Bool)

(declare-fun call!442759 () Bool)

(assert (=> b!5764944 (= e!3542027 call!442759)))

(declare-fun call!442758 () Bool)

(assert (=> b!5764945 (= e!3542021 call!442758)))

(declare-fun d!1816253 () Bool)

(declare-fun c!1019111 () Bool)

(assert (=> d!1816253 (= c!1019111 ((_ is EmptyExpr!15775) (regOne!32063 (regTwo!32062 r!7292))))))

(assert (=> d!1816253 (= (matchRSpec!2878 (regOne!32063 (regTwo!32062 r!7292)) s!2326) e!3542027)))

(declare-fun bm!442753 () Bool)

(assert (=> bm!442753 (= call!442758 (Exists!2875 (ite c!1019112 lambda!313053 lambda!313054)))))

(declare-fun b!5764946 () Bool)

(declare-fun e!3542022 () Bool)

(assert (=> b!5764946 (= e!3542022 (= s!2326 (Cons!63500 (c!1018649 (regOne!32063 (regTwo!32062 r!7292))) Nil!63500)))))

(declare-fun b!5764947 () Bool)

(assert (=> b!5764947 (= e!3542023 e!3542025)))

(declare-fun res!2432984 () Bool)

(assert (=> b!5764947 (= res!2432984 (matchRSpec!2878 (regOne!32063 (regOne!32063 (regTwo!32062 r!7292))) s!2326))))

(assert (=> b!5764947 (=> res!2432984 e!3542025)))

(declare-fun e!3542026 () Bool)

(assert (=> b!5764948 (= e!3542026 call!442758)))

(declare-fun b!5764949 () Bool)

(declare-fun c!1019113 () Bool)

(assert (=> b!5764949 (= c!1019113 ((_ is Union!15775) (regOne!32063 (regTwo!32062 r!7292))))))

(assert (=> b!5764949 (= e!3542022 e!3542023)))

(declare-fun b!5764950 () Bool)

(declare-fun e!3542024 () Bool)

(assert (=> b!5764950 (= e!3542027 e!3542024)))

(declare-fun res!2432982 () Bool)

(assert (=> b!5764950 (= res!2432982 (not ((_ is EmptyLang!15775) (regOne!32063 (regTwo!32062 r!7292)))))))

(assert (=> b!5764950 (=> (not res!2432982) (not e!3542024))))

(declare-fun bm!442754 () Bool)

(assert (=> bm!442754 (= call!442759 (isEmpty!35392 s!2326))))

(declare-fun b!5764951 () Bool)

(declare-fun res!2432983 () Bool)

(assert (=> b!5764951 (=> res!2432983 e!3542026)))

(assert (=> b!5764951 (= res!2432983 call!442759)))

(assert (=> b!5764951 (= e!3542021 e!3542026)))

(declare-fun b!5764952 () Bool)

(declare-fun c!1019110 () Bool)

(assert (=> b!5764952 (= c!1019110 ((_ is ElementMatch!15775) (regOne!32063 (regTwo!32062 r!7292))))))

(assert (=> b!5764952 (= e!3542024 e!3542022)))

(assert (= (and d!1816253 c!1019111) b!5764944))

(assert (= (and d!1816253 (not c!1019111)) b!5764950))

(assert (= (and b!5764950 res!2432982) b!5764952))

(assert (= (and b!5764952 c!1019110) b!5764946))

(assert (= (and b!5764952 (not c!1019110)) b!5764949))

(assert (= (and b!5764949 c!1019113) b!5764947))

(assert (= (and b!5764949 (not c!1019113)) b!5764943))

(assert (= (and b!5764947 (not res!2432984)) b!5764942))

(assert (= (and b!5764943 c!1019112) b!5764951))

(assert (= (and b!5764943 (not c!1019112)) b!5764945))

(assert (= (and b!5764951 (not res!2432983)) b!5764948))

(assert (= (or b!5764948 b!5764945) bm!442753))

(assert (= (or b!5764944 b!5764951) bm!442754))

(declare-fun m!6711270 () Bool)

(assert (=> b!5764942 m!6711270))

(declare-fun m!6711272 () Bool)

(assert (=> bm!442753 m!6711272))

(declare-fun m!6711274 () Bool)

(assert (=> b!5764947 m!6711274))

(assert (=> bm!442754 m!6710306))

(assert (=> b!5763847 d!1816253))

(declare-fun d!1816255 () Bool)

(declare-fun e!3542028 () Bool)

(assert (=> d!1816255 e!3542028))

(declare-fun res!2432985 () Bool)

(assert (=> d!1816255 (=> (not res!2432985) (not e!3542028))))

(declare-fun lt!2289176 () List!63624)

(assert (=> d!1816255 (= res!2432985 (= (content!11591 lt!2289176) ((_ map or) (content!11591 (_1!36175 (get!21910 lt!2289109))) (content!11591 (_2!36175 (get!21910 lt!2289109))))))))

(declare-fun e!3542029 () List!63624)

(assert (=> d!1816255 (= lt!2289176 e!3542029)))

(declare-fun c!1019114 () Bool)

(assert (=> d!1816255 (= c!1019114 ((_ is Nil!63500) (_1!36175 (get!21910 lt!2289109))))))

(assert (=> d!1816255 (= (++!13989 (_1!36175 (get!21910 lt!2289109)) (_2!36175 (get!21910 lt!2289109))) lt!2289176)))

(declare-fun b!5764955 () Bool)

(declare-fun res!2432986 () Bool)

(assert (=> b!5764955 (=> (not res!2432986) (not e!3542028))))

(assert (=> b!5764955 (= res!2432986 (= (size!40075 lt!2289176) (+ (size!40075 (_1!36175 (get!21910 lt!2289109))) (size!40075 (_2!36175 (get!21910 lt!2289109))))))))

(declare-fun b!5764956 () Bool)

(assert (=> b!5764956 (= e!3542028 (or (not (= (_2!36175 (get!21910 lt!2289109)) Nil!63500)) (= lt!2289176 (_1!36175 (get!21910 lt!2289109)))))))

(declare-fun b!5764954 () Bool)

(assert (=> b!5764954 (= e!3542029 (Cons!63500 (h!69948 (_1!36175 (get!21910 lt!2289109))) (++!13989 (t!376958 (_1!36175 (get!21910 lt!2289109))) (_2!36175 (get!21910 lt!2289109)))))))

(declare-fun b!5764953 () Bool)

(assert (=> b!5764953 (= e!3542029 (_2!36175 (get!21910 lt!2289109)))))

(assert (= (and d!1816255 c!1019114) b!5764953))

(assert (= (and d!1816255 (not c!1019114)) b!5764954))

(assert (= (and d!1816255 res!2432985) b!5764955))

(assert (= (and b!5764955 res!2432986) b!5764956))

(declare-fun m!6711276 () Bool)

(assert (=> d!1816255 m!6711276))

(declare-fun m!6711278 () Bool)

(assert (=> d!1816255 m!6711278))

(declare-fun m!6711280 () Bool)

(assert (=> d!1816255 m!6711280))

(declare-fun m!6711282 () Bool)

(assert (=> b!5764955 m!6711282))

(declare-fun m!6711284 () Bool)

(assert (=> b!5764955 m!6711284))

(declare-fun m!6711286 () Bool)

(assert (=> b!5764955 m!6711286))

(declare-fun m!6711288 () Bool)

(assert (=> b!5764954 m!6711288))

(assert (=> b!5763791 d!1816255))

(assert (=> b!5763791 d!1816241))

(declare-fun d!1816257 () Bool)

(assert (=> d!1816257 (= (nullable!5807 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (nullableFct!1848 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))))))

(declare-fun bs!1352364 () Bool)

(assert (= bs!1352364 d!1816257))

(declare-fun m!6711290 () Bool)

(assert (=> bs!1352364 m!6711290))

(assert (=> b!5763614 d!1816257))

(declare-fun b!5764957 () Bool)

(declare-fun e!3542033 () (InoxSet Context!10318))

(declare-fun e!3542035 () (InoxSet Context!10318))

(assert (=> b!5764957 (= e!3542033 e!3542035)))

(declare-fun c!1019115 () Bool)

(assert (=> b!5764957 (= c!1019115 ((_ is Union!15775) (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))))))))

(declare-fun b!5764958 () Bool)

(declare-fun c!1019119 () Bool)

(declare-fun e!3542030 () Bool)

(assert (=> b!5764958 (= c!1019119 e!3542030)))

(declare-fun res!2432987 () Bool)

(assert (=> b!5764958 (=> (not res!2432987) (not e!3542030))))

(assert (=> b!5764958 (= res!2432987 ((_ is Concat!24620) (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))))))))

(declare-fun e!3542032 () (InoxSet Context!10318))

(assert (=> b!5764958 (= e!3542035 e!3542032)))

(declare-fun c!1019116 () Bool)

(declare-fun d!1816259 () Bool)

(assert (=> d!1816259 (= c!1019116 (and ((_ is ElementMatch!15775) (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))))) (= (c!1018649 (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))))) (h!69948 s!2326))))))

(assert (=> d!1816259 (= (derivationStepZipperDown!1117 (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343))))) (ite c!1018782 lt!2289027 (Context!10319 call!442545)) (h!69948 s!2326)) e!3542033)))

(declare-fun call!442764 () List!63625)

(declare-fun call!442765 () (InoxSet Context!10318))

(declare-fun c!1019118 () Bool)

(declare-fun bm!442755 () Bool)

(assert (=> bm!442755 (= call!442765 (derivationStepZipperDown!1117 (ite c!1019115 (regOne!32063 (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))))) (ite c!1019119 (regTwo!32062 (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))))) (ite c!1019118 (regOne!32062 (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))))) (reg!16104 (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343))))))))) (ite (or c!1019115 c!1019119) (ite c!1018782 lt!2289027 (Context!10319 call!442545)) (Context!10319 call!442764)) (h!69948 s!2326)))))

(declare-fun bm!442756 () Bool)

(declare-fun call!442761 () List!63625)

(assert (=> bm!442756 (= call!442764 call!442761)))

(declare-fun bm!442757 () Bool)

(declare-fun call!442763 () (InoxSet Context!10318))

(assert (=> bm!442757 (= call!442763 (derivationStepZipperDown!1117 (ite c!1019115 (regTwo!32063 (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))))) (regOne!32062 (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343))))))) (ite c!1019115 (ite c!1018782 lt!2289027 (Context!10319 call!442545)) (Context!10319 call!442761)) (h!69948 s!2326)))))

(declare-fun b!5764959 () Bool)

(declare-fun e!3542031 () (InoxSet Context!10318))

(assert (=> b!5764959 (= e!3542032 e!3542031)))

(assert (=> b!5764959 (= c!1019118 ((_ is Concat!24620) (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))))))))

(declare-fun b!5764960 () Bool)

(declare-fun call!442762 () (InoxSet Context!10318))

(assert (=> b!5764960 (= e!3542032 ((_ map or) call!442763 call!442762))))

(declare-fun b!5764961 () Bool)

(declare-fun call!442760 () (InoxSet Context!10318))

(assert (=> b!5764961 (= e!3542031 call!442760)))

(declare-fun b!5764962 () Bool)

(assert (=> b!5764962 (= e!3542035 ((_ map or) call!442765 call!442763))))

(declare-fun bm!442758 () Bool)

(assert (=> bm!442758 (= call!442762 call!442765)))

(declare-fun bm!442759 () Bool)

(assert (=> bm!442759 (= call!442760 call!442762)))

(declare-fun b!5764963 () Bool)

(declare-fun e!3542034 () (InoxSet Context!10318))

(assert (=> b!5764963 (= e!3542034 call!442760)))

(declare-fun b!5764964 () Bool)

(declare-fun c!1019117 () Bool)

(assert (=> b!5764964 (= c!1019117 ((_ is Star!15775) (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))))))))

(assert (=> b!5764964 (= e!3542031 e!3542034)))

(declare-fun b!5764965 () Bool)

(assert (=> b!5764965 (= e!3542034 ((as const (Array Context!10318 Bool)) false))))

(declare-fun bm!442760 () Bool)

(assert (=> bm!442760 (= call!442761 ($colon$colon!1770 (exprs!5659 (ite c!1018782 lt!2289027 (Context!10319 call!442545))) (ite (or c!1019119 c!1019118) (regTwo!32062 (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343)))))) (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343))))))))))

(declare-fun b!5764966 () Bool)

(assert (=> b!5764966 (= e!3542030 (nullable!5807 (regOne!32062 (ite c!1018782 (regTwo!32063 (h!69949 (exprs!5659 (h!69950 zl!343)))) (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343))))))))))

(declare-fun b!5764967 () Bool)

(assert (=> b!5764967 (= e!3542033 (store ((as const (Array Context!10318 Bool)) false) (ite c!1018782 lt!2289027 (Context!10319 call!442545)) true))))

(assert (= (and d!1816259 c!1019116) b!5764967))

(assert (= (and d!1816259 (not c!1019116)) b!5764957))

(assert (= (and b!5764957 c!1019115) b!5764962))

(assert (= (and b!5764957 (not c!1019115)) b!5764958))

(assert (= (and b!5764958 res!2432987) b!5764966))

(assert (= (and b!5764958 c!1019119) b!5764960))

(assert (= (and b!5764958 (not c!1019119)) b!5764959))

(assert (= (and b!5764959 c!1019118) b!5764961))

(assert (= (and b!5764959 (not c!1019118)) b!5764964))

(assert (= (and b!5764964 c!1019117) b!5764963))

(assert (= (and b!5764964 (not c!1019117)) b!5764965))

(assert (= (or b!5764961 b!5764963) bm!442756))

(assert (= (or b!5764961 b!5764963) bm!442759))

(assert (= (or b!5764960 bm!442756) bm!442760))

(assert (= (or b!5764960 bm!442759) bm!442758))

(assert (= (or b!5764962 b!5764960) bm!442757))

(assert (= (or b!5764962 bm!442758) bm!442755))

(declare-fun m!6711292 () Bool)

(assert (=> bm!442755 m!6711292))

(declare-fun m!6711294 () Bool)

(assert (=> b!5764966 m!6711294))

(declare-fun m!6711296 () Bool)

(assert (=> bm!442760 m!6711296))

(declare-fun m!6711298 () Bool)

(assert (=> b!5764967 m!6711298))

(declare-fun m!6711300 () Bool)

(assert (=> bm!442757 m!6711300))

(assert (=> bm!442541 d!1816259))

(declare-fun bs!1352365 () Bool)

(declare-fun d!1816261 () Bool)

(assert (= bs!1352365 (and d!1816261 d!1815717)))

(declare-fun lambda!313055 () Int)

(assert (=> bs!1352365 (= lambda!313055 lambda!312941)))

(declare-fun bs!1352366 () Bool)

(assert (= bs!1352366 (and d!1816261 d!1816177)))

(assert (=> bs!1352366 (= lambda!313055 lambda!313041)))

(declare-fun bs!1352367 () Bool)

(assert (= bs!1352367 (and d!1816261 d!1816221)))

(assert (=> bs!1352367 (= lambda!313055 lambda!313046)))

(declare-fun bs!1352368 () Bool)

(assert (= bs!1352368 (and d!1816261 d!1816165)))

(assert (=> bs!1352368 (= lambda!313055 lambda!313040)))

(declare-fun bs!1352369 () Bool)

(assert (= bs!1352369 (and d!1816261 d!1815723)))

(assert (=> bs!1352369 (= lambda!313055 lambda!312949)))

(declare-fun bs!1352370 () Bool)

(assert (= bs!1352370 (and d!1816261 d!1815845)))

(assert (=> bs!1352370 (= lambda!313055 lambda!312989)))

(declare-fun bs!1352371 () Bool)

(assert (= bs!1352371 (and d!1816261 d!1815839)))

(assert (=> bs!1352371 (= lambda!313055 lambda!312988)))

(declare-fun bs!1352372 () Bool)

(assert (= bs!1352372 (and d!1816261 d!1815691)))

(assert (=> bs!1352372 (= lambda!313055 lambda!312926)))

(assert (=> d!1816261 (= (inv!82684 (h!69950 (t!376960 zl!343))) (forall!14893 (exprs!5659 (h!69950 (t!376960 zl!343))) lambda!313055))))

(declare-fun bs!1352373 () Bool)

(assert (= bs!1352373 d!1816261))

(declare-fun m!6711302 () Bool)

(assert (=> bs!1352373 m!6711302))

(assert (=> b!5763976 d!1816261))

(declare-fun d!1816263 () Bool)

(assert (=> d!1816263 true))

(declare-fun setRes!38722 () Bool)

(assert (=> d!1816263 setRes!38722))

(declare-fun condSetEmpty!38722 () Bool)

(declare-fun res!2432988 () (InoxSet Context!10318))

(assert (=> d!1816263 (= condSetEmpty!38722 (= res!2432988 ((as const (Array Context!10318 Bool)) false)))))

(assert (=> d!1816263 (= (choose!43711 lt!2289015 lambda!312917) res!2432988)))

(declare-fun setIsEmpty!38722 () Bool)

(assert (=> setIsEmpty!38722 setRes!38722))

(declare-fun e!3542036 () Bool)

(declare-fun setElem!38722 () Context!10318)

(declare-fun tp!1593138 () Bool)

(declare-fun setNonEmpty!38722 () Bool)

(assert (=> setNonEmpty!38722 (= setRes!38722 (and tp!1593138 (inv!82684 setElem!38722) e!3542036))))

(declare-fun setRest!38722 () (InoxSet Context!10318))

(assert (=> setNonEmpty!38722 (= res!2432988 ((_ map or) (store ((as const (Array Context!10318 Bool)) false) setElem!38722 true) setRest!38722))))

(declare-fun b!5764968 () Bool)

(declare-fun tp!1593137 () Bool)

(assert (=> b!5764968 (= e!3542036 tp!1593137)))

(assert (= (and d!1816263 condSetEmpty!38722) setIsEmpty!38722))

(assert (= (and d!1816263 (not condSetEmpty!38722)) setNonEmpty!38722))

(assert (= setNonEmpty!38722 b!5764968))

(declare-fun m!6711304 () Bool)

(assert (=> setNonEmpty!38722 m!6711304))

(assert (=> d!1815833 d!1816263))

(declare-fun d!1816265 () Bool)

(assert (=> d!1816265 (= (nullable!5807 r!7292) (nullableFct!1848 r!7292))))

(declare-fun bs!1352374 () Bool)

(assert (= bs!1352374 d!1816265))

(declare-fun m!6711306 () Bool)

(assert (=> bs!1352374 m!6711306))

(assert (=> b!5763765 d!1816265))

(assert (=> bm!442564 d!1816097))

(assert (=> d!1815811 d!1816215))

(declare-fun d!1816267 () Bool)

(assert (=> d!1816267 (= (nullable!5807 (reg!16104 r!7292)) (nullableFct!1848 (reg!16104 r!7292)))))

(declare-fun bs!1352375 () Bool)

(assert (= bs!1352375 d!1816267))

(declare-fun m!6711308 () Bool)

(assert (=> bs!1352375 m!6711308))

(assert (=> b!5763889 d!1816267))

(declare-fun b!5764969 () Bool)

(declare-fun res!2432991 () Bool)

(declare-fun e!3542042 () Bool)

(assert (=> b!5764969 (=> res!2432991 e!3542042)))

(declare-fun e!3542040 () Bool)

(assert (=> b!5764969 (= res!2432991 e!3542040)))

(declare-fun res!2432994 () Bool)

(assert (=> b!5764969 (=> (not res!2432994) (not e!3542040))))

(declare-fun lt!2289177 () Bool)

(assert (=> b!5764969 (= res!2432994 lt!2289177)))

(declare-fun b!5764971 () Bool)

(declare-fun e!3542038 () Bool)

(assert (=> b!5764971 (= e!3542038 (matchR!7960 (derivativeStep!4556 (regTwo!32062 r!7292) (head!12186 (_2!36175 (get!21910 lt!2289109)))) (tail!11281 (_2!36175 (get!21910 lt!2289109)))))))

(declare-fun b!5764972 () Bool)

(assert (=> b!5764972 (= e!3542040 (= (head!12186 (_2!36175 (get!21910 lt!2289109))) (c!1018649 (regTwo!32062 r!7292))))))

(declare-fun b!5764973 () Bool)

(declare-fun e!3542037 () Bool)

(assert (=> b!5764973 (= e!3542037 (not lt!2289177))))

(declare-fun b!5764974 () Bool)

(declare-fun e!3542039 () Bool)

(assert (=> b!5764974 (= e!3542039 (not (= (head!12186 (_2!36175 (get!21910 lt!2289109))) (c!1018649 (regTwo!32062 r!7292)))))))

(declare-fun b!5764975 () Bool)

(declare-fun res!2432993 () Bool)

(assert (=> b!5764975 (=> (not res!2432993) (not e!3542040))))

(declare-fun call!442766 () Bool)

(assert (=> b!5764975 (= res!2432993 (not call!442766))))

(declare-fun bm!442761 () Bool)

(assert (=> bm!442761 (= call!442766 (isEmpty!35392 (_2!36175 (get!21910 lt!2289109))))))

(declare-fun b!5764970 () Bool)

(declare-fun res!2432990 () Bool)

(assert (=> b!5764970 (=> res!2432990 e!3542042)))

(assert (=> b!5764970 (= res!2432990 (not ((_ is ElementMatch!15775) (regTwo!32062 r!7292))))))

(assert (=> b!5764970 (= e!3542037 e!3542042)))

(declare-fun d!1816269 () Bool)

(declare-fun e!3542043 () Bool)

(assert (=> d!1816269 e!3542043))

(declare-fun c!1019122 () Bool)

(assert (=> d!1816269 (= c!1019122 ((_ is EmptyExpr!15775) (regTwo!32062 r!7292)))))

(assert (=> d!1816269 (= lt!2289177 e!3542038)))

(declare-fun c!1019121 () Bool)

(assert (=> d!1816269 (= c!1019121 (isEmpty!35392 (_2!36175 (get!21910 lt!2289109))))))

(assert (=> d!1816269 (validRegex!7511 (regTwo!32062 r!7292))))

(assert (=> d!1816269 (= (matchR!7960 (regTwo!32062 r!7292) (_2!36175 (get!21910 lt!2289109))) lt!2289177)))

(declare-fun b!5764976 () Bool)

(declare-fun res!2432995 () Bool)

(assert (=> b!5764976 (=> res!2432995 e!3542039)))

(assert (=> b!5764976 (= res!2432995 (not (isEmpty!35392 (tail!11281 (_2!36175 (get!21910 lt!2289109))))))))

(declare-fun b!5764977 () Bool)

(assert (=> b!5764977 (= e!3542038 (nullable!5807 (regTwo!32062 r!7292)))))

(declare-fun b!5764978 () Bool)

(declare-fun e!3542041 () Bool)

(assert (=> b!5764978 (= e!3542041 e!3542039)))

(declare-fun res!2432996 () Bool)

(assert (=> b!5764978 (=> res!2432996 e!3542039)))

(assert (=> b!5764978 (= res!2432996 call!442766)))

(declare-fun b!5764979 () Bool)

(assert (=> b!5764979 (= e!3542043 e!3542037)))

(declare-fun c!1019120 () Bool)

(assert (=> b!5764979 (= c!1019120 ((_ is EmptyLang!15775) (regTwo!32062 r!7292)))))

(declare-fun b!5764980 () Bool)

(declare-fun res!2432992 () Bool)

(assert (=> b!5764980 (=> (not res!2432992) (not e!3542040))))

(assert (=> b!5764980 (= res!2432992 (isEmpty!35392 (tail!11281 (_2!36175 (get!21910 lt!2289109)))))))

(declare-fun b!5764981 () Bool)

(assert (=> b!5764981 (= e!3542043 (= lt!2289177 call!442766))))

(declare-fun b!5764982 () Bool)

(assert (=> b!5764982 (= e!3542042 e!3542041)))

(declare-fun res!2432989 () Bool)

(assert (=> b!5764982 (=> (not res!2432989) (not e!3542041))))

(assert (=> b!5764982 (= res!2432989 (not lt!2289177))))

(assert (= (and d!1816269 c!1019121) b!5764977))

(assert (= (and d!1816269 (not c!1019121)) b!5764971))

(assert (= (and d!1816269 c!1019122) b!5764981))

(assert (= (and d!1816269 (not c!1019122)) b!5764979))

(assert (= (and b!5764979 c!1019120) b!5764973))

(assert (= (and b!5764979 (not c!1019120)) b!5764970))

(assert (= (and b!5764970 (not res!2432990)) b!5764969))

(assert (= (and b!5764969 res!2432994) b!5764975))

(assert (= (and b!5764975 res!2432993) b!5764980))

(assert (= (and b!5764980 res!2432992) b!5764972))

(assert (= (and b!5764969 (not res!2432991)) b!5764982))

(assert (= (and b!5764982 res!2432989) b!5764978))

(assert (= (and b!5764978 (not res!2432996)) b!5764976))

(assert (= (and b!5764976 (not res!2432995)) b!5764974))

(assert (= (or b!5764981 b!5764975 b!5764978) bm!442761))

(declare-fun m!6711310 () Bool)

(assert (=> b!5764974 m!6711310))

(assert (=> b!5764972 m!6711310))

(assert (=> b!5764971 m!6711310))

(assert (=> b!5764971 m!6711310))

(declare-fun m!6711312 () Bool)

(assert (=> b!5764971 m!6711312))

(declare-fun m!6711314 () Bool)

(assert (=> b!5764971 m!6711314))

(assert (=> b!5764971 m!6711312))

(assert (=> b!5764971 m!6711314))

(declare-fun m!6711316 () Bool)

(assert (=> b!5764971 m!6711316))

(assert (=> b!5764976 m!6711314))

(assert (=> b!5764976 m!6711314))

(declare-fun m!6711318 () Bool)

(assert (=> b!5764976 m!6711318))

(declare-fun m!6711320 () Bool)

(assert (=> d!1816269 m!6711320))

(assert (=> d!1816269 m!6710394))

(assert (=> bm!442761 m!6711320))

(assert (=> b!5764980 m!6711314))

(assert (=> b!5764980 m!6711314))

(assert (=> b!5764980 m!6711318))

(assert (=> b!5764977 m!6710396))

(assert (=> b!5763789 d!1816269))

(assert (=> b!5763789 d!1816241))

(declare-fun d!1816271 () Bool)

(assert (=> d!1816271 (= (nullable!5807 (h!69949 (exprs!5659 lt!2289027))) (nullableFct!1848 (h!69949 (exprs!5659 lt!2289027))))))

(declare-fun bs!1352376 () Bool)

(assert (= bs!1352376 d!1816271))

(declare-fun m!6711322 () Bool)

(assert (=> bs!1352376 m!6711322))

(assert (=> b!5763609 d!1816271))

(declare-fun d!1816273 () Bool)

(assert (=> d!1816273 (= (isUnion!701 lt!2289059) ((_ is Union!15775) lt!2289059))))

(assert (=> b!5763382 d!1816273))

(assert (=> d!1815809 d!1815811))

(assert (=> d!1815809 d!1815697))

(declare-fun e!3542046 () Bool)

(declare-fun d!1816275 () Bool)

(assert (=> d!1816275 (= (matchZipper!1913 ((_ map or) lt!2289021 lt!2289025) (t!376958 s!2326)) e!3542046)))

(declare-fun res!2432999 () Bool)

(assert (=> d!1816275 (=> res!2432999 e!3542046)))

(assert (=> d!1816275 (= res!2432999 (matchZipper!1913 lt!2289021 (t!376958 s!2326)))))

(assert (=> d!1816275 true))

(declare-fun _$48!1389 () Unit!156632)

(assert (=> d!1816275 (= (choose!43716 lt!2289021 lt!2289025 (t!376958 s!2326)) _$48!1389)))

(declare-fun b!5764985 () Bool)

(assert (=> b!5764985 (= e!3542046 (matchZipper!1913 lt!2289025 (t!376958 s!2326)))))

(assert (= (and d!1816275 (not res!2432999)) b!5764985))

(assert (=> d!1816275 m!6709972))

(assert (=> d!1816275 m!6709962))

(assert (=> b!5764985 m!6709928))

(assert (=> d!1815809 d!1816275))

(assert (=> b!5763760 d!1816091))

(declare-fun bs!1352377 () Bool)

(declare-fun d!1816277 () Bool)

(assert (= bs!1352377 (and d!1816277 d!1815717)))

(declare-fun lambda!313056 () Int)

(assert (=> bs!1352377 (= lambda!313056 lambda!312941)))

(declare-fun bs!1352378 () Bool)

(assert (= bs!1352378 (and d!1816277 d!1816177)))

(assert (=> bs!1352378 (= lambda!313056 lambda!313041)))

(declare-fun bs!1352379 () Bool)

(assert (= bs!1352379 (and d!1816277 d!1816221)))

(assert (=> bs!1352379 (= lambda!313056 lambda!313046)))

(declare-fun bs!1352380 () Bool)

(assert (= bs!1352380 (and d!1816277 d!1816165)))

(assert (=> bs!1352380 (= lambda!313056 lambda!313040)))

(declare-fun bs!1352381 () Bool)

(assert (= bs!1352381 (and d!1816277 d!1815723)))

(assert (=> bs!1352381 (= lambda!313056 lambda!312949)))

(declare-fun bs!1352382 () Bool)

(assert (= bs!1352382 (and d!1816277 d!1815845)))

(assert (=> bs!1352382 (= lambda!313056 lambda!312989)))

(declare-fun bs!1352383 () Bool)

(assert (= bs!1352383 (and d!1816277 d!1816261)))

(assert (=> bs!1352383 (= lambda!313056 lambda!313055)))

(declare-fun bs!1352384 () Bool)

(assert (= bs!1352384 (and d!1816277 d!1815839)))

(assert (=> bs!1352384 (= lambda!313056 lambda!312988)))

(declare-fun bs!1352385 () Bool)

(assert (= bs!1352385 (and d!1816277 d!1815691)))

(assert (=> bs!1352385 (= lambda!313056 lambda!312926)))

(declare-fun b!5764986 () Bool)

(declare-fun e!3542050 () Bool)

(assert (=> b!5764986 (= e!3542050 (isEmpty!35389 (t!376959 (t!376959 (exprs!5659 (h!69950 zl!343))))))))

(declare-fun b!5764987 () Bool)

(declare-fun e!3542047 () Bool)

(declare-fun lt!2289178 () Regex!15775)

(assert (=> b!5764987 (= e!3542047 (isEmptyExpr!1261 lt!2289178))))

(declare-fun b!5764988 () Bool)

(declare-fun e!3542051 () Bool)

(assert (=> b!5764988 (= e!3542047 e!3542051)))

(declare-fun c!1019123 () Bool)

(assert (=> b!5764988 (= c!1019123 (isEmpty!35389 (tail!11282 (t!376959 (exprs!5659 (h!69950 zl!343))))))))

(declare-fun b!5764989 () Bool)

(declare-fun e!3542049 () Regex!15775)

(declare-fun e!3542052 () Regex!15775)

(assert (=> b!5764989 (= e!3542049 e!3542052)))

(declare-fun c!1019126 () Bool)

(assert (=> b!5764989 (= c!1019126 ((_ is Cons!63501) (t!376959 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun b!5764990 () Bool)

(declare-fun e!3542048 () Bool)

(assert (=> b!5764990 (= e!3542048 e!3542047)))

(declare-fun c!1019125 () Bool)

(assert (=> b!5764990 (= c!1019125 (isEmpty!35389 (t!376959 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun b!5764991 () Bool)

(assert (=> b!5764991 (= e!3542052 (Concat!24620 (h!69949 (t!376959 (exprs!5659 (h!69950 zl!343)))) (generalisedConcat!1390 (t!376959 (t!376959 (exprs!5659 (h!69950 zl!343)))))))))

(declare-fun b!5764992 () Bool)

(assert (=> b!5764992 (= e!3542051 (= lt!2289178 (head!12187 (t!376959 (exprs!5659 (h!69950 zl!343))))))))

(assert (=> d!1816277 e!3542048))

(declare-fun res!2433001 () Bool)

(assert (=> d!1816277 (=> (not res!2433001) (not e!3542048))))

(assert (=> d!1816277 (= res!2433001 (validRegex!7511 lt!2289178))))

(assert (=> d!1816277 (= lt!2289178 e!3542049)))

(declare-fun c!1019124 () Bool)

(assert (=> d!1816277 (= c!1019124 e!3542050)))

(declare-fun res!2433000 () Bool)

(assert (=> d!1816277 (=> (not res!2433000) (not e!3542050))))

(assert (=> d!1816277 (= res!2433000 ((_ is Cons!63501) (t!376959 (exprs!5659 (h!69950 zl!343)))))))

(assert (=> d!1816277 (forall!14893 (t!376959 (exprs!5659 (h!69950 zl!343))) lambda!313056)))

(assert (=> d!1816277 (= (generalisedConcat!1390 (t!376959 (exprs!5659 (h!69950 zl!343)))) lt!2289178)))

(declare-fun b!5764993 () Bool)

(assert (=> b!5764993 (= e!3542049 (h!69949 (t!376959 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun b!5764994 () Bool)

(assert (=> b!5764994 (= e!3542051 (isConcat!784 lt!2289178))))

(declare-fun b!5764995 () Bool)

(assert (=> b!5764995 (= e!3542052 EmptyExpr!15775)))

(assert (= (and d!1816277 res!2433000) b!5764986))

(assert (= (and d!1816277 c!1019124) b!5764993))

(assert (= (and d!1816277 (not c!1019124)) b!5764989))

(assert (= (and b!5764989 c!1019126) b!5764991))

(assert (= (and b!5764989 (not c!1019126)) b!5764995))

(assert (= (and d!1816277 res!2433001) b!5764990))

(assert (= (and b!5764990 c!1019125) b!5764987))

(assert (= (and b!5764990 (not c!1019125)) b!5764988))

(assert (= (and b!5764988 c!1019123) b!5764992))

(assert (= (and b!5764988 (not c!1019123)) b!5764994))

(declare-fun m!6711324 () Bool)

(assert (=> b!5764986 m!6711324))

(declare-fun m!6711326 () Bool)

(assert (=> b!5764994 m!6711326))

(declare-fun m!6711328 () Bool)

(assert (=> b!5764988 m!6711328))

(assert (=> b!5764988 m!6711328))

(declare-fun m!6711330 () Bool)

(assert (=> b!5764988 m!6711330))

(declare-fun m!6711332 () Bool)

(assert (=> b!5764987 m!6711332))

(declare-fun m!6711334 () Bool)

(assert (=> d!1816277 m!6711334))

(declare-fun m!6711336 () Bool)

(assert (=> d!1816277 m!6711336))

(declare-fun m!6711338 () Bool)

(assert (=> b!5764992 m!6711338))

(assert (=> b!5764990 m!6709926))

(declare-fun m!6711340 () Bool)

(assert (=> b!5764991 m!6711340))

(assert (=> b!5763919 d!1816277))

(declare-fun d!1816279 () Bool)

(assert (=> d!1816279 (= (isEmpty!35394 (findConcatSeparation!2198 (regOne!32062 r!7292) (regTwo!32062 r!7292) Nil!63500 s!2326 s!2326)) (not ((_ is Some!15783) (findConcatSeparation!2198 (regOne!32062 r!7292) (regTwo!32062 r!7292) Nil!63500 s!2326 s!2326))))))

(assert (=> d!1815807 d!1816279))

(assert (=> d!1815775 d!1815777))

(declare-fun d!1816281 () Bool)

(assert (=> d!1816281 (= (flatMap!1388 z!1189 lambda!312917) (dynLambda!24857 lambda!312917 (h!69950 zl!343)))))

(assert (=> d!1816281 true))

(declare-fun _$13!2465 () Unit!156632)

(assert (=> d!1816281 (= (choose!43710 z!1189 (h!69950 zl!343) lambda!312917) _$13!2465)))

(declare-fun b_lambda!217637 () Bool)

(assert (=> (not b_lambda!217637) (not d!1816281)))

(declare-fun bs!1352386 () Bool)

(assert (= bs!1352386 d!1816281))

(assert (=> bs!1352386 m!6709906))

(assert (=> bs!1352386 m!6710268))

(assert (=> d!1815775 d!1816281))

(declare-fun d!1816283 () Bool)

(assert (=> d!1816283 (= (nullable!5807 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343))))) (nullableFct!1848 (regOne!32062 (h!69949 (exprs!5659 (h!69950 zl!343))))))))

(declare-fun bs!1352387 () Bool)

(assert (= bs!1352387 d!1816283))

(declare-fun m!6711342 () Bool)

(assert (=> bs!1352387 m!6711342))

(assert (=> b!5763574 d!1816283))

(declare-fun d!1816285 () Bool)

(declare-fun res!2433002 () Bool)

(declare-fun e!3542053 () Bool)

(assert (=> d!1816285 (=> res!2433002 e!3542053)))

(assert (=> d!1816285 (= res!2433002 ((_ is Nil!63501) (exprs!5659 (h!69950 zl!343))))))

(assert (=> d!1816285 (= (forall!14893 (exprs!5659 (h!69950 zl!343)) lambda!312989) e!3542053)))

(declare-fun b!5764996 () Bool)

(declare-fun e!3542054 () Bool)

(assert (=> b!5764996 (= e!3542053 e!3542054)))

(declare-fun res!2433003 () Bool)

(assert (=> b!5764996 (=> (not res!2433003) (not e!3542054))))

(assert (=> b!5764996 (= res!2433003 (dynLambda!24859 lambda!312989 (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun b!5764997 () Bool)

(assert (=> b!5764997 (= e!3542054 (forall!14893 (t!376959 (exprs!5659 (h!69950 zl!343))) lambda!312989))))

(assert (= (and d!1816285 (not res!2433002)) b!5764996))

(assert (= (and b!5764996 res!2433003) b!5764997))

(declare-fun b_lambda!217639 () Bool)

(assert (=> (not b_lambda!217639) (not b!5764996)))

(declare-fun m!6711344 () Bool)

(assert (=> b!5764996 m!6711344))

(declare-fun m!6711346 () Bool)

(assert (=> b!5764997 m!6711346))

(assert (=> d!1815845 d!1816285))

(declare-fun d!1816287 () Bool)

(assert (=> d!1816287 (= (isEmptyExpr!1261 lt!2289130) ((_ is EmptyExpr!15775) lt!2289130))))

(assert (=> b!5763915 d!1816287))

(declare-fun d!1816289 () Bool)

(assert (=> d!1816289 (= (flatMap!1388 z!1189 lambda!312980) (choose!43711 z!1189 lambda!312980))))

(declare-fun bs!1352388 () Bool)

(assert (= bs!1352388 d!1816289))

(declare-fun m!6711348 () Bool)

(assert (=> bs!1352388 m!6711348))

(assert (=> d!1815815 d!1816289))

(declare-fun bs!1352389 () Bool)

(declare-fun d!1816291 () Bool)

(assert (= bs!1352389 (and d!1816291 d!1816195)))

(declare-fun lambda!313057 () Int)

(assert (=> bs!1352389 (= lambda!313057 lambda!313045)))

(declare-fun bs!1352390 () Bool)

(assert (= bs!1352390 (and d!1816291 d!1816243)))

(assert (=> bs!1352390 (= lambda!313057 lambda!313048)))

(assert (=> d!1816291 (= (nullableZipper!1702 lt!2289025) (exists!2241 lt!2289025 lambda!313057))))

(declare-fun bs!1352391 () Bool)

(assert (= bs!1352391 d!1816291))

(declare-fun m!6711350 () Bool)

(assert (=> bs!1352391 m!6711350))

(assert (=> b!5763458 d!1816291))

(assert (=> b!5763812 d!1815743))

(assert (=> b!5763768 d!1816169))

(assert (=> b!5763768 d!1816093))

(declare-fun b!5764998 () Bool)

(declare-fun res!2433006 () Bool)

(declare-fun e!3542060 () Bool)

(assert (=> b!5764998 (=> res!2433006 e!3542060)))

(declare-fun e!3542058 () Bool)

(assert (=> b!5764998 (= res!2433006 e!3542058)))

(declare-fun res!2433009 () Bool)

(assert (=> b!5764998 (=> (not res!2433009) (not e!3542058))))

(declare-fun lt!2289179 () Bool)

(assert (=> b!5764998 (= res!2433009 lt!2289179)))

(declare-fun b!5765000 () Bool)

(declare-fun e!3542056 () Bool)

(assert (=> b!5765000 (= e!3542056 (matchR!7960 (derivativeStep!4556 (derivativeStep!4556 (regOne!32062 r!7292) (head!12186 s!2326)) (head!12186 (tail!11281 s!2326))) (tail!11281 (tail!11281 s!2326))))))

(declare-fun b!5765001 () Bool)

(assert (=> b!5765001 (= e!3542058 (= (head!12186 (tail!11281 s!2326)) (c!1018649 (derivativeStep!4556 (regOne!32062 r!7292) (head!12186 s!2326)))))))

(declare-fun b!5765002 () Bool)

(declare-fun e!3542055 () Bool)

(assert (=> b!5765002 (= e!3542055 (not lt!2289179))))

(declare-fun b!5765003 () Bool)

(declare-fun e!3542057 () Bool)

(assert (=> b!5765003 (= e!3542057 (not (= (head!12186 (tail!11281 s!2326)) (c!1018649 (derivativeStep!4556 (regOne!32062 r!7292) (head!12186 s!2326))))))))

(declare-fun b!5765004 () Bool)

(declare-fun res!2433008 () Bool)

(assert (=> b!5765004 (=> (not res!2433008) (not e!3542058))))

(declare-fun call!442767 () Bool)

(assert (=> b!5765004 (= res!2433008 (not call!442767))))

(declare-fun bm!442762 () Bool)

(assert (=> bm!442762 (= call!442767 (isEmpty!35392 (tail!11281 s!2326)))))

(declare-fun b!5764999 () Bool)

(declare-fun res!2433005 () Bool)

(assert (=> b!5764999 (=> res!2433005 e!3542060)))

(assert (=> b!5764999 (= res!2433005 (not ((_ is ElementMatch!15775) (derivativeStep!4556 (regOne!32062 r!7292) (head!12186 s!2326)))))))

(assert (=> b!5764999 (= e!3542055 e!3542060)))

(declare-fun d!1816293 () Bool)

(declare-fun e!3542061 () Bool)

(assert (=> d!1816293 e!3542061))

(declare-fun c!1019129 () Bool)

(assert (=> d!1816293 (= c!1019129 ((_ is EmptyExpr!15775) (derivativeStep!4556 (regOne!32062 r!7292) (head!12186 s!2326))))))

(assert (=> d!1816293 (= lt!2289179 e!3542056)))

(declare-fun c!1019128 () Bool)

(assert (=> d!1816293 (= c!1019128 (isEmpty!35392 (tail!11281 s!2326)))))

(assert (=> d!1816293 (validRegex!7511 (derivativeStep!4556 (regOne!32062 r!7292) (head!12186 s!2326)))))

(assert (=> d!1816293 (= (matchR!7960 (derivativeStep!4556 (regOne!32062 r!7292) (head!12186 s!2326)) (tail!11281 s!2326)) lt!2289179)))

(declare-fun b!5765005 () Bool)

(declare-fun res!2433010 () Bool)

(assert (=> b!5765005 (=> res!2433010 e!3542057)))

(assert (=> b!5765005 (= res!2433010 (not (isEmpty!35392 (tail!11281 (tail!11281 s!2326)))))))

(declare-fun b!5765006 () Bool)

(assert (=> b!5765006 (= e!3542056 (nullable!5807 (derivativeStep!4556 (regOne!32062 r!7292) (head!12186 s!2326))))))

(declare-fun b!5765007 () Bool)

(declare-fun e!3542059 () Bool)

(assert (=> b!5765007 (= e!3542059 e!3542057)))

(declare-fun res!2433011 () Bool)

(assert (=> b!5765007 (=> res!2433011 e!3542057)))

(assert (=> b!5765007 (= res!2433011 call!442767)))

(declare-fun b!5765008 () Bool)

(assert (=> b!5765008 (= e!3542061 e!3542055)))

(declare-fun c!1019127 () Bool)

(assert (=> b!5765008 (= c!1019127 ((_ is EmptyLang!15775) (derivativeStep!4556 (regOne!32062 r!7292) (head!12186 s!2326))))))

(declare-fun b!5765009 () Bool)

(declare-fun res!2433007 () Bool)

(assert (=> b!5765009 (=> (not res!2433007) (not e!3542058))))

(assert (=> b!5765009 (= res!2433007 (isEmpty!35392 (tail!11281 (tail!11281 s!2326))))))

(declare-fun b!5765010 () Bool)

(assert (=> b!5765010 (= e!3542061 (= lt!2289179 call!442767))))

(declare-fun b!5765011 () Bool)

(assert (=> b!5765011 (= e!3542060 e!3542059)))

(declare-fun res!2433004 () Bool)

(assert (=> b!5765011 (=> (not res!2433004) (not e!3542059))))

(assert (=> b!5765011 (= res!2433004 (not lt!2289179))))

(assert (= (and d!1816293 c!1019128) b!5765006))

(assert (= (and d!1816293 (not c!1019128)) b!5765000))

(assert (= (and d!1816293 c!1019129) b!5765010))

(assert (= (and d!1816293 (not c!1019129)) b!5765008))

(assert (= (and b!5765008 c!1019127) b!5765002))

(assert (= (and b!5765008 (not c!1019127)) b!5764999))

(assert (= (and b!5764999 (not res!2433005)) b!5764998))

(assert (= (and b!5764998 res!2433009) b!5765004))

(assert (= (and b!5765004 res!2433008) b!5765009))

(assert (= (and b!5765009 res!2433007) b!5765001))

(assert (= (and b!5764998 (not res!2433006)) b!5765011))

(assert (= (and b!5765011 res!2433004) b!5765007))

(assert (= (and b!5765007 (not res!2433011)) b!5765005))

(assert (= (and b!5765005 (not res!2433010)) b!5765003))

(assert (= (or b!5765010 b!5765004 b!5765007) bm!442762))

(assert (=> b!5765003 m!6710312))

(assert (=> b!5765003 m!6710928))

(assert (=> b!5765001 m!6710312))

(assert (=> b!5765001 m!6710928))

(assert (=> b!5765000 m!6710312))

(assert (=> b!5765000 m!6710928))

(assert (=> b!5765000 m!6710378))

(assert (=> b!5765000 m!6710928))

(declare-fun m!6711352 () Bool)

(assert (=> b!5765000 m!6711352))

(assert (=> b!5765000 m!6710312))

(assert (=> b!5765000 m!6710932))

(assert (=> b!5765000 m!6711352))

(assert (=> b!5765000 m!6710932))

(declare-fun m!6711354 () Bool)

(assert (=> b!5765000 m!6711354))

(assert (=> b!5765005 m!6710312))

(assert (=> b!5765005 m!6710932))

(assert (=> b!5765005 m!6710932))

(assert (=> b!5765005 m!6710936))

(assert (=> d!1816293 m!6710312))

(assert (=> d!1816293 m!6710316))

(assert (=> d!1816293 m!6710378))

(declare-fun m!6711356 () Bool)

(assert (=> d!1816293 m!6711356))

(assert (=> bm!442762 m!6710312))

(assert (=> bm!442762 m!6710316))

(assert (=> b!5765009 m!6710312))

(assert (=> b!5765009 m!6710932))

(assert (=> b!5765009 m!6710932))

(assert (=> b!5765009 m!6710936))

(assert (=> b!5765006 m!6710378))

(declare-fun m!6711358 () Bool)

(assert (=> b!5765006 m!6711358))

(assert (=> b!5763830 d!1816293))

(declare-fun b!5765012 () Bool)

(declare-fun e!3542066 () Regex!15775)

(declare-fun e!3542064 () Regex!15775)

(assert (=> b!5765012 (= e!3542066 e!3542064)))

(declare-fun c!1019134 () Bool)

(assert (=> b!5765012 (= c!1019134 ((_ is Star!15775) (regOne!32062 r!7292)))))

(declare-fun bm!442764 () Bool)

(declare-fun c!1019131 () Bool)

(declare-fun call!442771 () Regex!15775)

(assert (=> bm!442764 (= call!442771 (derivativeStep!4556 (ite c!1019131 (regTwo!32063 (regOne!32062 r!7292)) (ite c!1019134 (reg!16104 (regOne!32062 r!7292)) (regOne!32062 (regOne!32062 r!7292)))) (head!12186 s!2326)))))

(declare-fun bm!442765 () Bool)

(declare-fun call!442768 () Regex!15775)

(declare-fun call!442770 () Regex!15775)

(assert (=> bm!442765 (= call!442768 call!442770)))

(declare-fun b!5765013 () Bool)

(assert (=> b!5765013 (= e!3542066 (Union!15775 call!442770 call!442771))))

(declare-fun b!5765014 () Bool)

(assert (=> b!5765014 (= c!1019131 ((_ is Union!15775) (regOne!32062 r!7292)))))

(declare-fun e!3542062 () Regex!15775)

(assert (=> b!5765014 (= e!3542062 e!3542066)))

(declare-fun b!5765015 () Bool)

(assert (=> b!5765015 (= e!3542062 (ite (= (head!12186 s!2326) (c!1018649 (regOne!32062 r!7292))) EmptyExpr!15775 EmptyLang!15775))))

(declare-fun call!442769 () Regex!15775)

(declare-fun e!3542063 () Regex!15775)

(declare-fun b!5765016 () Bool)

(assert (=> b!5765016 (= e!3542063 (Union!15775 (Concat!24620 call!442769 (regTwo!32062 (regOne!32062 r!7292))) call!442768))))

(declare-fun bm!442766 () Bool)

(assert (=> bm!442766 (= call!442769 call!442771)))

(declare-fun b!5765017 () Bool)

(assert (=> b!5765017 (= e!3542063 (Union!15775 (Concat!24620 call!442768 (regTwo!32062 (regOne!32062 r!7292))) EmptyLang!15775))))

(declare-fun d!1816295 () Bool)

(declare-fun lt!2289180 () Regex!15775)

(assert (=> d!1816295 (validRegex!7511 lt!2289180)))

(declare-fun e!3542065 () Regex!15775)

(assert (=> d!1816295 (= lt!2289180 e!3542065)))

(declare-fun c!1019132 () Bool)

(assert (=> d!1816295 (= c!1019132 (or ((_ is EmptyExpr!15775) (regOne!32062 r!7292)) ((_ is EmptyLang!15775) (regOne!32062 r!7292))))))

(assert (=> d!1816295 (validRegex!7511 (regOne!32062 r!7292))))

(assert (=> d!1816295 (= (derivativeStep!4556 (regOne!32062 r!7292) (head!12186 s!2326)) lt!2289180)))

(declare-fun c!1019133 () Bool)

(declare-fun bm!442763 () Bool)

(assert (=> bm!442763 (= call!442770 (derivativeStep!4556 (ite c!1019131 (regOne!32063 (regOne!32062 r!7292)) (ite c!1019133 (regTwo!32062 (regOne!32062 r!7292)) (regOne!32062 (regOne!32062 r!7292)))) (head!12186 s!2326)))))

(declare-fun b!5765018 () Bool)

(assert (=> b!5765018 (= e!3542065 EmptyLang!15775)))

(declare-fun b!5765019 () Bool)

(assert (=> b!5765019 (= e!3542065 e!3542062)))

(declare-fun c!1019130 () Bool)

(assert (=> b!5765019 (= c!1019130 ((_ is ElementMatch!15775) (regOne!32062 r!7292)))))

(declare-fun b!5765020 () Bool)

(assert (=> b!5765020 (= e!3542064 (Concat!24620 call!442769 (regOne!32062 r!7292)))))

(declare-fun b!5765021 () Bool)

(assert (=> b!5765021 (= c!1019133 (nullable!5807 (regOne!32062 (regOne!32062 r!7292))))))

(assert (=> b!5765021 (= e!3542064 e!3542063)))

(assert (= (and d!1816295 c!1019132) b!5765018))

(assert (= (and d!1816295 (not c!1019132)) b!5765019))

(assert (= (and b!5765019 c!1019130) b!5765015))

(assert (= (and b!5765019 (not c!1019130)) b!5765014))

(assert (= (and b!5765014 c!1019131) b!5765013))

(assert (= (and b!5765014 (not c!1019131)) b!5765012))

(assert (= (and b!5765012 c!1019134) b!5765020))

(assert (= (and b!5765012 (not c!1019134)) b!5765021))

(assert (= (and b!5765021 c!1019133) b!5765016))

(assert (= (and b!5765021 (not c!1019133)) b!5765017))

(assert (= (or b!5765016 b!5765017) bm!442765))

(assert (= (or b!5765020 b!5765016) bm!442766))

(assert (= (or b!5765013 bm!442766) bm!442764))

(assert (= (or b!5765013 bm!442765) bm!442763))

(assert (=> bm!442764 m!6710308))

(declare-fun m!6711360 () Bool)

(assert (=> bm!442764 m!6711360))

(declare-fun m!6711362 () Bool)

(assert (=> d!1816295 m!6711362))

(assert (=> d!1816295 m!6710340))

(assert (=> bm!442763 m!6710308))

(declare-fun m!6711364 () Bool)

(assert (=> bm!442763 m!6711364))

(assert (=> b!5765021 m!6709900))

(assert (=> b!5763830 d!1816295))

(assert (=> b!5763830 d!1816091))

(assert (=> b!5763830 d!1816093))

(assert (=> b!5763764 d!1816169))

(assert (=> b!5763764 d!1816093))

(declare-fun b!5765022 () Bool)

(declare-fun e!3542068 () (InoxSet Context!10318))

(declare-fun call!442772 () (InoxSet Context!10318))

(assert (=> b!5765022 (= e!3542068 call!442772)))

(declare-fun b!5765023 () Bool)

(declare-fun e!3542069 () (InoxSet Context!10318))

(assert (=> b!5765023 (= e!3542069 e!3542068)))

(declare-fun c!1019136 () Bool)

(assert (=> b!5765023 (= c!1019136 ((_ is Cons!63501) (exprs!5659 (Context!10319 (t!376959 (exprs!5659 lt!2289027))))))))

(declare-fun b!5765024 () Bool)

(declare-fun e!3542067 () Bool)

(assert (=> b!5765024 (= e!3542067 (nullable!5807 (h!69949 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 lt!2289027)))))))))

(declare-fun d!1816297 () Bool)

(declare-fun c!1019135 () Bool)

(assert (=> d!1816297 (= c!1019135 e!3542067)))

(declare-fun res!2433012 () Bool)

(assert (=> d!1816297 (=> (not res!2433012) (not e!3542067))))

(assert (=> d!1816297 (= res!2433012 ((_ is Cons!63501) (exprs!5659 (Context!10319 (t!376959 (exprs!5659 lt!2289027))))))))

(assert (=> d!1816297 (= (derivationStepZipperUp!1043 (Context!10319 (t!376959 (exprs!5659 lt!2289027))) (h!69948 s!2326)) e!3542069)))

(declare-fun b!5765025 () Bool)

(assert (=> b!5765025 (= e!3542069 ((_ map or) call!442772 (derivationStepZipperUp!1043 (Context!10319 (t!376959 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 lt!2289027)))))) (h!69948 s!2326))))))

(declare-fun b!5765026 () Bool)

(assert (=> b!5765026 (= e!3542068 ((as const (Array Context!10318 Bool)) false))))

(declare-fun bm!442767 () Bool)

(assert (=> bm!442767 (= call!442772 (derivationStepZipperDown!1117 (h!69949 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 lt!2289027))))) (Context!10319 (t!376959 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 lt!2289027)))))) (h!69948 s!2326)))))

(assert (= (and d!1816297 res!2433012) b!5765024))

(assert (= (and d!1816297 c!1019135) b!5765025))

(assert (= (and d!1816297 (not c!1019135)) b!5765023))

(assert (= (and b!5765023 c!1019136) b!5765022))

(assert (= (and b!5765023 (not c!1019136)) b!5765026))

(assert (= (or b!5765025 b!5765022) bm!442767))

(declare-fun m!6711366 () Bool)

(assert (=> b!5765024 m!6711366))

(declare-fun m!6711368 () Bool)

(assert (=> b!5765025 m!6711368))

(declare-fun m!6711370 () Bool)

(assert (=> bm!442767 m!6711370))

(assert (=> b!5763610 d!1816297))

(assert (=> d!1815819 d!1815821))

(assert (=> d!1815819 d!1815817))

(declare-fun d!1816299 () Bool)

(assert (=> d!1816299 (= (matchR!7960 (regOne!32062 r!7292) s!2326) (matchRSpec!2878 (regOne!32062 r!7292) s!2326))))

(assert (=> d!1816299 true))

(declare-fun _$88!4071 () Unit!156632)

(assert (=> d!1816299 (= (choose!43712 (regOne!32062 r!7292) s!2326) _$88!4071)))

(declare-fun bs!1352392 () Bool)

(assert (= bs!1352392 d!1816299))

(assert (=> bs!1352392 m!6709946))

(assert (=> bs!1352392 m!6709948))

(assert (=> d!1815819 d!1816299))

(assert (=> d!1815819 d!1816115))

(assert (=> b!5763790 d!1816111))

(assert (=> d!1815709 d!1815697))

(declare-fun d!1816301 () Bool)

(assert (=> d!1816301 (not (matchZipper!1913 lt!2289021 (t!376958 s!2326)))))

(assert (=> d!1816301 true))

(declare-fun _$64!757 () Unit!156632)

(assert (=> d!1816301 (= (choose!43705 lt!2289021 (t!376958 s!2326)) _$64!757)))

(declare-fun bs!1352393 () Bool)

(assert (= bs!1352393 d!1816301))

(assert (=> bs!1352393 m!6709962))

(assert (=> d!1815709 d!1816301))

(declare-fun b!5765027 () Bool)

(declare-fun e!3542073 () (InoxSet Context!10318))

(declare-fun e!3542075 () (InoxSet Context!10318))

(assert (=> b!5765027 (= e!3542073 e!3542075)))

(declare-fun c!1019137 () Bool)

(assert (=> b!5765027 (= c!1019137 ((_ is Union!15775) (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))))))

(declare-fun b!5765028 () Bool)

(declare-fun c!1019141 () Bool)

(declare-fun e!3542070 () Bool)

(assert (=> b!5765028 (= c!1019141 e!3542070)))

(declare-fun res!2433013 () Bool)

(assert (=> b!5765028 (=> (not res!2433013) (not e!3542070))))

(assert (=> b!5765028 (= res!2433013 ((_ is Concat!24620) (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))))))

(declare-fun e!3542072 () (InoxSet Context!10318))

(assert (=> b!5765028 (= e!3542075 e!3542072)))

(declare-fun d!1816303 () Bool)

(declare-fun c!1019138 () Bool)

(assert (=> d!1816303 (= c!1019138 (and ((_ is ElementMatch!15775) (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (= (c!1018649 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (h!69948 s!2326))))))

(assert (=> d!1816303 (= (derivationStepZipperDown!1117 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))))) (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (h!69948 s!2326)) e!3542073)))

(declare-fun bm!442768 () Bool)

(declare-fun call!442778 () (InoxSet Context!10318))

(declare-fun c!1019140 () Bool)

(declare-fun call!442777 () List!63625)

(assert (=> bm!442768 (= call!442778 (derivationStepZipperDown!1117 (ite c!1019137 (regOne!32063 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (ite c!1019141 (regTwo!32062 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (ite c!1019140 (regOne!32062 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (reg!16104 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))))))))) (ite (or c!1019137 c!1019141) (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (Context!10319 call!442777)) (h!69948 s!2326)))))

(declare-fun bm!442769 () Bool)

(declare-fun call!442774 () List!63625)

(assert (=> bm!442769 (= call!442777 call!442774)))

(declare-fun call!442776 () (InoxSet Context!10318))

(declare-fun bm!442770 () Bool)

(assert (=> bm!442770 (= call!442776 (derivationStepZipperDown!1117 (ite c!1019137 (regTwo!32063 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (regOne!32062 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))))))) (ite c!1019137 (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (Context!10319 call!442774)) (h!69948 s!2326)))))

(declare-fun b!5765029 () Bool)

(declare-fun e!3542071 () (InoxSet Context!10318))

(assert (=> b!5765029 (= e!3542072 e!3542071)))

(assert (=> b!5765029 (= c!1019140 ((_ is Concat!24620) (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))))))

(declare-fun b!5765030 () Bool)

(declare-fun call!442775 () (InoxSet Context!10318))

(assert (=> b!5765030 (= e!3542072 ((_ map or) call!442776 call!442775))))

(declare-fun b!5765031 () Bool)

(declare-fun call!442773 () (InoxSet Context!10318))

(assert (=> b!5765031 (= e!3542071 call!442773)))

(declare-fun b!5765032 () Bool)

(assert (=> b!5765032 (= e!3542075 ((_ map or) call!442778 call!442776))))

(declare-fun bm!442771 () Bool)

(assert (=> bm!442771 (= call!442775 call!442778)))

(declare-fun bm!442772 () Bool)

(assert (=> bm!442772 (= call!442773 call!442775)))

(declare-fun b!5765033 () Bool)

(declare-fun e!3542074 () (InoxSet Context!10318))

(assert (=> b!5765033 (= e!3542074 call!442773)))

(declare-fun b!5765034 () Bool)

(declare-fun c!1019139 () Bool)

(assert (=> b!5765034 (= c!1019139 ((_ is Star!15775) (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))))))

(assert (=> b!5765034 (= e!3542071 e!3542074)))

(declare-fun b!5765035 () Bool)

(assert (=> b!5765035 (= e!3542074 ((as const (Array Context!10318 Bool)) false))))

(declare-fun bm!442773 () Bool)

(assert (=> bm!442773 (= call!442774 ($colon$colon!1770 (exprs!5659 (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))))))) (ite (or c!1019141 c!1019140) (regTwo!32062 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))))))))))

(declare-fun b!5765036 () Bool)

(assert (=> b!5765036 (= e!3542070 (nullable!5807 (regOne!32062 (h!69949 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343))))))))))))

(declare-fun b!5765037 () Bool)

(assert (=> b!5765037 (= e!3542073 (store ((as const (Array Context!10318 Bool)) false) (Context!10319 (t!376959 (exprs!5659 (Context!10319 (Cons!63501 (h!69949 (exprs!5659 (h!69950 zl!343))) (t!376959 (exprs!5659 (h!69950 zl!343)))))))) true))))

(assert (= (and d!1816303 c!1019138) b!5765037))

(assert (= (and d!1816303 (not c!1019138)) b!5765027))

(assert (= (and b!5765027 c!1019137) b!5765032))

(assert (= (and b!5765027 (not c!1019137)) b!5765028))

(assert (= (and b!5765028 res!2433013) b!5765036))

(assert (= (and b!5765028 c!1019141) b!5765030))

(assert (= (and b!5765028 (not c!1019141)) b!5765029))

(assert (= (and b!5765029 c!1019140) b!5765031))

(assert (= (and b!5765029 (not c!1019140)) b!5765034))

(assert (= (and b!5765034 c!1019139) b!5765033))

(assert (= (and b!5765034 (not c!1019139)) b!5765035))

(assert (= (or b!5765031 b!5765033) bm!442769))

(assert (= (or b!5765031 b!5765033) bm!442772))

(assert (= (or b!5765030 bm!442769) bm!442773))

(assert (= (or b!5765030 bm!442772) bm!442771))

(assert (= (or b!5765032 b!5765030) bm!442770))

(assert (= (or b!5765032 bm!442771) bm!442768))

(declare-fun m!6711372 () Bool)

(assert (=> bm!442768 m!6711372))

(declare-fun m!6711374 () Bool)

(assert (=> b!5765036 m!6711374))

(declare-fun m!6711376 () Bool)

(assert (=> bm!442773 m!6711376))

(declare-fun m!6711378 () Bool)

(assert (=> b!5765037 m!6711378))

(declare-fun m!6711380 () Bool)

(assert (=> bm!442770 m!6711380))

(assert (=> bm!442548 d!1816303))

(declare-fun b!5765040 () Bool)

(declare-fun e!3542076 () Bool)

(declare-fun tp!1593140 () Bool)

(assert (=> b!5765040 (= e!3542076 tp!1593140)))

(assert (=> b!5763952 (= tp!1592939 e!3542076)))

(declare-fun b!5765041 () Bool)

(declare-fun tp!1593143 () Bool)

(declare-fun tp!1593139 () Bool)

(assert (=> b!5765041 (= e!3542076 (and tp!1593143 tp!1593139))))

(declare-fun b!5765039 () Bool)

(declare-fun tp!1593142 () Bool)

(declare-fun tp!1593141 () Bool)

(assert (=> b!5765039 (= e!3542076 (and tp!1593142 tp!1593141))))

(declare-fun b!5765038 () Bool)

(assert (=> b!5765038 (= e!3542076 tp_is_empty!40803)))

(assert (= (and b!5763952 ((_ is ElementMatch!15775) (regOne!32062 (regTwo!32063 r!7292)))) b!5765038))

(assert (= (and b!5763952 ((_ is Concat!24620) (regOne!32062 (regTwo!32063 r!7292)))) b!5765039))

(assert (= (and b!5763952 ((_ is Star!15775) (regOne!32062 (regTwo!32063 r!7292)))) b!5765040))

(assert (= (and b!5763952 ((_ is Union!15775) (regOne!32062 (regTwo!32063 r!7292)))) b!5765041))

(declare-fun b!5765044 () Bool)

(declare-fun e!3542077 () Bool)

(declare-fun tp!1593145 () Bool)

(assert (=> b!5765044 (= e!3542077 tp!1593145)))

(assert (=> b!5763952 (= tp!1592938 e!3542077)))

(declare-fun b!5765045 () Bool)

(declare-fun tp!1593148 () Bool)

(declare-fun tp!1593144 () Bool)

(assert (=> b!5765045 (= e!3542077 (and tp!1593148 tp!1593144))))

(declare-fun b!5765043 () Bool)

(declare-fun tp!1593147 () Bool)

(declare-fun tp!1593146 () Bool)

(assert (=> b!5765043 (= e!3542077 (and tp!1593147 tp!1593146))))

(declare-fun b!5765042 () Bool)

(assert (=> b!5765042 (= e!3542077 tp_is_empty!40803)))

(assert (= (and b!5763952 ((_ is ElementMatch!15775) (regTwo!32062 (regTwo!32063 r!7292)))) b!5765042))

(assert (= (and b!5763952 ((_ is Concat!24620) (regTwo!32062 (regTwo!32063 r!7292)))) b!5765043))

(assert (= (and b!5763952 ((_ is Star!15775) (regTwo!32062 (regTwo!32063 r!7292)))) b!5765044))

(assert (= (and b!5763952 ((_ is Union!15775) (regTwo!32062 (regTwo!32063 r!7292)))) b!5765045))

(declare-fun b!5765046 () Bool)

(declare-fun e!3542078 () Bool)

(declare-fun tp!1593149 () Bool)

(declare-fun tp!1593150 () Bool)

(assert (=> b!5765046 (= e!3542078 (and tp!1593149 tp!1593150))))

(assert (=> b!5763928 (= tp!1592909 e!3542078)))

(assert (= (and b!5763928 ((_ is Cons!63501) (exprs!5659 setElem!38713))) b!5765046))

(declare-fun b!5765049 () Bool)

(declare-fun e!3542079 () Bool)

(declare-fun tp!1593152 () Bool)

(assert (=> b!5765049 (= e!3542079 tp!1593152)))

(assert (=> b!5763954 (= tp!1592940 e!3542079)))

(declare-fun b!5765050 () Bool)

(declare-fun tp!1593155 () Bool)

(declare-fun tp!1593151 () Bool)

(assert (=> b!5765050 (= e!3542079 (and tp!1593155 tp!1593151))))

(declare-fun b!5765048 () Bool)

(declare-fun tp!1593154 () Bool)

(declare-fun tp!1593153 () Bool)

(assert (=> b!5765048 (= e!3542079 (and tp!1593154 tp!1593153))))

(declare-fun b!5765047 () Bool)

(assert (=> b!5765047 (= e!3542079 tp_is_empty!40803)))

(assert (= (and b!5763954 ((_ is ElementMatch!15775) (regOne!32063 (regTwo!32063 r!7292)))) b!5765047))

(assert (= (and b!5763954 ((_ is Concat!24620) (regOne!32063 (regTwo!32063 r!7292)))) b!5765048))

(assert (= (and b!5763954 ((_ is Star!15775) (regOne!32063 (regTwo!32063 r!7292)))) b!5765049))

(assert (= (and b!5763954 ((_ is Union!15775) (regOne!32063 (regTwo!32063 r!7292)))) b!5765050))

(declare-fun b!5765053 () Bool)

(declare-fun e!3542080 () Bool)

(declare-fun tp!1593157 () Bool)

(assert (=> b!5765053 (= e!3542080 tp!1593157)))

(assert (=> b!5763954 (= tp!1592936 e!3542080)))

(declare-fun b!5765054 () Bool)

(declare-fun tp!1593160 () Bool)

(declare-fun tp!1593156 () Bool)

(assert (=> b!5765054 (= e!3542080 (and tp!1593160 tp!1593156))))

(declare-fun b!5765052 () Bool)

(declare-fun tp!1593159 () Bool)

(declare-fun tp!1593158 () Bool)

(assert (=> b!5765052 (= e!3542080 (and tp!1593159 tp!1593158))))

(declare-fun b!5765051 () Bool)

(assert (=> b!5765051 (= e!3542080 tp_is_empty!40803)))

(assert (= (and b!5763954 ((_ is ElementMatch!15775) (regTwo!32063 (regTwo!32063 r!7292)))) b!5765051))

(assert (= (and b!5763954 ((_ is Concat!24620) (regTwo!32063 (regTwo!32063 r!7292)))) b!5765052))

(assert (= (and b!5763954 ((_ is Star!15775) (regTwo!32063 (regTwo!32063 r!7292)))) b!5765053))

(assert (= (and b!5763954 ((_ is Union!15775) (regTwo!32063 (regTwo!32063 r!7292)))) b!5765054))

(declare-fun b!5765057 () Bool)

(declare-fun e!3542081 () Bool)

(declare-fun tp!1593162 () Bool)

(assert (=> b!5765057 (= e!3542081 tp!1593162)))

(assert (=> b!5763945 (= tp!1592927 e!3542081)))

(declare-fun b!5765058 () Bool)

(declare-fun tp!1593165 () Bool)

(declare-fun tp!1593161 () Bool)

(assert (=> b!5765058 (= e!3542081 (and tp!1593165 tp!1593161))))

(declare-fun b!5765056 () Bool)

(declare-fun tp!1593164 () Bool)

(declare-fun tp!1593163 () Bool)

(assert (=> b!5765056 (= e!3542081 (and tp!1593164 tp!1593163))))

(declare-fun b!5765055 () Bool)

(assert (=> b!5765055 (= e!3542081 tp_is_empty!40803)))

(assert (= (and b!5763945 ((_ is ElementMatch!15775) (reg!16104 (regTwo!32062 r!7292)))) b!5765055))

(assert (= (and b!5763945 ((_ is Concat!24620) (reg!16104 (regTwo!32062 r!7292)))) b!5765056))

(assert (= (and b!5763945 ((_ is Star!15775) (reg!16104 (regTwo!32062 r!7292)))) b!5765057))

(assert (= (and b!5763945 ((_ is Union!15775) (reg!16104 (regTwo!32062 r!7292)))) b!5765058))

(declare-fun b!5765061 () Bool)

(declare-fun e!3542082 () Bool)

(declare-fun tp!1593167 () Bool)

(assert (=> b!5765061 (= e!3542082 tp!1593167)))

(assert (=> b!5763953 (= tp!1592937 e!3542082)))

(declare-fun b!5765062 () Bool)

(declare-fun tp!1593170 () Bool)

(declare-fun tp!1593166 () Bool)

(assert (=> b!5765062 (= e!3542082 (and tp!1593170 tp!1593166))))

(declare-fun b!5765060 () Bool)

(declare-fun tp!1593169 () Bool)

(declare-fun tp!1593168 () Bool)

(assert (=> b!5765060 (= e!3542082 (and tp!1593169 tp!1593168))))

(declare-fun b!5765059 () Bool)

(assert (=> b!5765059 (= e!3542082 tp_is_empty!40803)))

(assert (= (and b!5763953 ((_ is ElementMatch!15775) (reg!16104 (regTwo!32063 r!7292)))) b!5765059))

(assert (= (and b!5763953 ((_ is Concat!24620) (reg!16104 (regTwo!32063 r!7292)))) b!5765060))

(assert (= (and b!5763953 ((_ is Star!15775) (reg!16104 (regTwo!32063 r!7292)))) b!5765061))

(assert (= (and b!5763953 ((_ is Union!15775) (reg!16104 (regTwo!32063 r!7292)))) b!5765062))

(declare-fun b!5765065 () Bool)

(declare-fun e!3542083 () Bool)

(declare-fun tp!1593172 () Bool)

(assert (=> b!5765065 (= e!3542083 tp!1593172)))

(assert (=> b!5763944 (= tp!1592929 e!3542083)))

(declare-fun b!5765066 () Bool)

(declare-fun tp!1593175 () Bool)

(declare-fun tp!1593171 () Bool)

(assert (=> b!5765066 (= e!3542083 (and tp!1593175 tp!1593171))))

(declare-fun b!5765064 () Bool)

(declare-fun tp!1593174 () Bool)

(declare-fun tp!1593173 () Bool)

(assert (=> b!5765064 (= e!3542083 (and tp!1593174 tp!1593173))))

(declare-fun b!5765063 () Bool)

(assert (=> b!5765063 (= e!3542083 tp_is_empty!40803)))

(assert (= (and b!5763944 ((_ is ElementMatch!15775) (regOne!32062 (regTwo!32062 r!7292)))) b!5765063))

(assert (= (and b!5763944 ((_ is Concat!24620) (regOne!32062 (regTwo!32062 r!7292)))) b!5765064))

(assert (= (and b!5763944 ((_ is Star!15775) (regOne!32062 (regTwo!32062 r!7292)))) b!5765065))

(assert (= (and b!5763944 ((_ is Union!15775) (regOne!32062 (regTwo!32062 r!7292)))) b!5765066))

(declare-fun b!5765069 () Bool)

(declare-fun e!3542084 () Bool)

(declare-fun tp!1593177 () Bool)

(assert (=> b!5765069 (= e!3542084 tp!1593177)))

(assert (=> b!5763944 (= tp!1592928 e!3542084)))

(declare-fun b!5765070 () Bool)

(declare-fun tp!1593180 () Bool)

(declare-fun tp!1593176 () Bool)

(assert (=> b!5765070 (= e!3542084 (and tp!1593180 tp!1593176))))

(declare-fun b!5765068 () Bool)

(declare-fun tp!1593179 () Bool)

(declare-fun tp!1593178 () Bool)

(assert (=> b!5765068 (= e!3542084 (and tp!1593179 tp!1593178))))

(declare-fun b!5765067 () Bool)

(assert (=> b!5765067 (= e!3542084 tp_is_empty!40803)))

(assert (= (and b!5763944 ((_ is ElementMatch!15775) (regTwo!32062 (regTwo!32062 r!7292)))) b!5765067))

(assert (= (and b!5763944 ((_ is Concat!24620) (regTwo!32062 (regTwo!32062 r!7292)))) b!5765068))

(assert (= (and b!5763944 ((_ is Star!15775) (regTwo!32062 (regTwo!32062 r!7292)))) b!5765069))

(assert (= (and b!5763944 ((_ is Union!15775) (regTwo!32062 (regTwo!32062 r!7292)))) b!5765070))

(declare-fun b!5765073 () Bool)

(declare-fun e!3542085 () Bool)

(declare-fun tp!1593182 () Bool)

(assert (=> b!5765073 (= e!3542085 tp!1593182)))

(assert (=> b!5763942 (= tp!1592925 e!3542085)))

(declare-fun b!5765074 () Bool)

(declare-fun tp!1593185 () Bool)

(declare-fun tp!1593181 () Bool)

(assert (=> b!5765074 (= e!3542085 (and tp!1593185 tp!1593181))))

(declare-fun b!5765072 () Bool)

(declare-fun tp!1593184 () Bool)

(declare-fun tp!1593183 () Bool)

(assert (=> b!5765072 (= e!3542085 (and tp!1593184 tp!1593183))))

(declare-fun b!5765071 () Bool)

(assert (=> b!5765071 (= e!3542085 tp_is_empty!40803)))

(assert (= (and b!5763942 ((_ is ElementMatch!15775) (regOne!32063 (regOne!32062 r!7292)))) b!5765071))

(assert (= (and b!5763942 ((_ is Concat!24620) (regOne!32063 (regOne!32062 r!7292)))) b!5765072))

(assert (= (and b!5763942 ((_ is Star!15775) (regOne!32063 (regOne!32062 r!7292)))) b!5765073))

(assert (= (and b!5763942 ((_ is Union!15775) (regOne!32063 (regOne!32062 r!7292)))) b!5765074))

(declare-fun b!5765077 () Bool)

(declare-fun e!3542086 () Bool)

(declare-fun tp!1593187 () Bool)

(assert (=> b!5765077 (= e!3542086 tp!1593187)))

(assert (=> b!5763942 (= tp!1592921 e!3542086)))

(declare-fun b!5765078 () Bool)

(declare-fun tp!1593190 () Bool)

(declare-fun tp!1593186 () Bool)

(assert (=> b!5765078 (= e!3542086 (and tp!1593190 tp!1593186))))

(declare-fun b!5765076 () Bool)

(declare-fun tp!1593189 () Bool)

(declare-fun tp!1593188 () Bool)

(assert (=> b!5765076 (= e!3542086 (and tp!1593189 tp!1593188))))

(declare-fun b!5765075 () Bool)

(assert (=> b!5765075 (= e!3542086 tp_is_empty!40803)))

(assert (= (and b!5763942 ((_ is ElementMatch!15775) (regTwo!32063 (regOne!32062 r!7292)))) b!5765075))

(assert (= (and b!5763942 ((_ is Concat!24620) (regTwo!32063 (regOne!32062 r!7292)))) b!5765076))

(assert (= (and b!5763942 ((_ is Star!15775) (regTwo!32063 (regOne!32062 r!7292)))) b!5765077))

(assert (= (and b!5763942 ((_ is Union!15775) (regTwo!32063 (regOne!32062 r!7292)))) b!5765078))

(declare-fun condSetEmpty!38723 () Bool)

(assert (=> setNonEmpty!38713 (= condSetEmpty!38723 (= setRest!38713 ((as const (Array Context!10318 Bool)) false)))))

(declare-fun setRes!38723 () Bool)

(assert (=> setNonEmpty!38713 (= tp!1592910 setRes!38723)))

(declare-fun setIsEmpty!38723 () Bool)

(assert (=> setIsEmpty!38723 setRes!38723))

(declare-fun e!3542087 () Bool)

(declare-fun setElem!38723 () Context!10318)

(declare-fun tp!1593192 () Bool)

(declare-fun setNonEmpty!38723 () Bool)

(assert (=> setNonEmpty!38723 (= setRes!38723 (and tp!1593192 (inv!82684 setElem!38723) e!3542087))))

(declare-fun setRest!38723 () (InoxSet Context!10318))

(assert (=> setNonEmpty!38723 (= setRest!38713 ((_ map or) (store ((as const (Array Context!10318 Bool)) false) setElem!38723 true) setRest!38723))))

(declare-fun b!5765079 () Bool)

(declare-fun tp!1593191 () Bool)

(assert (=> b!5765079 (= e!3542087 tp!1593191)))

(assert (= (and setNonEmpty!38713 condSetEmpty!38723) setIsEmpty!38723))

(assert (= (and setNonEmpty!38713 (not condSetEmpty!38723)) setNonEmpty!38723))

(assert (= setNonEmpty!38723 b!5765079))

(declare-fun m!6711382 () Bool)

(assert (=> setNonEmpty!38723 m!6711382))

(declare-fun b!5765082 () Bool)

(declare-fun e!3542088 () Bool)

(declare-fun tp!1593194 () Bool)

(assert (=> b!5765082 (= e!3542088 tp!1593194)))

(assert (=> b!5763956 (= tp!1592944 e!3542088)))

(declare-fun b!5765083 () Bool)

(declare-fun tp!1593197 () Bool)

(declare-fun tp!1593193 () Bool)

(assert (=> b!5765083 (= e!3542088 (and tp!1593197 tp!1593193))))

(declare-fun b!5765081 () Bool)

(declare-fun tp!1593196 () Bool)

(declare-fun tp!1593195 () Bool)

(assert (=> b!5765081 (= e!3542088 (and tp!1593196 tp!1593195))))

(declare-fun b!5765080 () Bool)

(assert (=> b!5765080 (= e!3542088 tp_is_empty!40803)))

(assert (= (and b!5763956 ((_ is ElementMatch!15775) (regOne!32062 (reg!16104 r!7292)))) b!5765080))

(assert (= (and b!5763956 ((_ is Concat!24620) (regOne!32062 (reg!16104 r!7292)))) b!5765081))

(assert (= (and b!5763956 ((_ is Star!15775) (regOne!32062 (reg!16104 r!7292)))) b!5765082))

(assert (= (and b!5763956 ((_ is Union!15775) (regOne!32062 (reg!16104 r!7292)))) b!5765083))

(declare-fun b!5765086 () Bool)

(declare-fun e!3542089 () Bool)

(declare-fun tp!1593199 () Bool)

(assert (=> b!5765086 (= e!3542089 tp!1593199)))

(assert (=> b!5763956 (= tp!1592943 e!3542089)))

(declare-fun b!5765087 () Bool)

(declare-fun tp!1593202 () Bool)

(declare-fun tp!1593198 () Bool)

(assert (=> b!5765087 (= e!3542089 (and tp!1593202 tp!1593198))))

(declare-fun b!5765085 () Bool)

(declare-fun tp!1593201 () Bool)

(declare-fun tp!1593200 () Bool)

(assert (=> b!5765085 (= e!3542089 (and tp!1593201 tp!1593200))))

(declare-fun b!5765084 () Bool)

(assert (=> b!5765084 (= e!3542089 tp_is_empty!40803)))

(assert (= (and b!5763956 ((_ is ElementMatch!15775) (regTwo!32062 (reg!16104 r!7292)))) b!5765084))

(assert (= (and b!5763956 ((_ is Concat!24620) (regTwo!32062 (reg!16104 r!7292)))) b!5765085))

(assert (= (and b!5763956 ((_ is Star!15775) (regTwo!32062 (reg!16104 r!7292)))) b!5765086))

(assert (= (and b!5763956 ((_ is Union!15775) (regTwo!32062 (reg!16104 r!7292)))) b!5765087))

(declare-fun b!5765090 () Bool)

(declare-fun e!3542090 () Bool)

(declare-fun tp!1593204 () Bool)

(assert (=> b!5765090 (= e!3542090 tp!1593204)))

(assert (=> b!5763957 (= tp!1592942 e!3542090)))

(declare-fun b!5765091 () Bool)

(declare-fun tp!1593207 () Bool)

(declare-fun tp!1593203 () Bool)

(assert (=> b!5765091 (= e!3542090 (and tp!1593207 tp!1593203))))

(declare-fun b!5765089 () Bool)

(declare-fun tp!1593206 () Bool)

(declare-fun tp!1593205 () Bool)

(assert (=> b!5765089 (= e!3542090 (and tp!1593206 tp!1593205))))

(declare-fun b!5765088 () Bool)

(assert (=> b!5765088 (= e!3542090 tp_is_empty!40803)))

(assert (= (and b!5763957 ((_ is ElementMatch!15775) (reg!16104 (reg!16104 r!7292)))) b!5765088))

(assert (= (and b!5763957 ((_ is Concat!24620) (reg!16104 (reg!16104 r!7292)))) b!5765089))

(assert (= (and b!5763957 ((_ is Star!15775) (reg!16104 (reg!16104 r!7292)))) b!5765090))

(assert (= (and b!5763957 ((_ is Union!15775) (reg!16104 (reg!16104 r!7292)))) b!5765091))

(declare-fun b!5765094 () Bool)

(declare-fun e!3542091 () Bool)

(declare-fun tp!1593209 () Bool)

(assert (=> b!5765094 (= e!3542091 tp!1593209)))

(assert (=> b!5763963 (= tp!1592950 e!3542091)))

(declare-fun b!5765095 () Bool)

(declare-fun tp!1593212 () Bool)

(declare-fun tp!1593208 () Bool)

(assert (=> b!5765095 (= e!3542091 (and tp!1593212 tp!1593208))))

(declare-fun b!5765093 () Bool)

(declare-fun tp!1593211 () Bool)

(declare-fun tp!1593210 () Bool)

(assert (=> b!5765093 (= e!3542091 (and tp!1593211 tp!1593210))))

(declare-fun b!5765092 () Bool)

(assert (=> b!5765092 (= e!3542091 tp_is_empty!40803)))

(assert (= (and b!5763963 ((_ is ElementMatch!15775) (h!69949 (exprs!5659 setElem!38707)))) b!5765092))

(assert (= (and b!5763963 ((_ is Concat!24620) (h!69949 (exprs!5659 setElem!38707)))) b!5765093))

(assert (= (and b!5763963 ((_ is Star!15775) (h!69949 (exprs!5659 setElem!38707)))) b!5765094))

(assert (= (and b!5763963 ((_ is Union!15775) (h!69949 (exprs!5659 setElem!38707)))) b!5765095))

(declare-fun b!5765096 () Bool)

(declare-fun e!3542092 () Bool)

(declare-fun tp!1593213 () Bool)

(declare-fun tp!1593214 () Bool)

(assert (=> b!5765096 (= e!3542092 (and tp!1593213 tp!1593214))))

(assert (=> b!5763963 (= tp!1592951 e!3542092)))

(assert (= (and b!5763963 ((_ is Cons!63501) (t!376959 (exprs!5659 setElem!38707)))) b!5765096))

(declare-fun b!5765097 () Bool)

(declare-fun e!3542093 () Bool)

(declare-fun tp!1593215 () Bool)

(declare-fun tp!1593216 () Bool)

(assert (=> b!5765097 (= e!3542093 (and tp!1593215 tp!1593216))))

(assert (=> b!5763977 (= tp!1592961 e!3542093)))

(assert (= (and b!5763977 ((_ is Cons!63501) (exprs!5659 (h!69950 (t!376960 zl!343))))) b!5765097))

(declare-fun b!5765100 () Bool)

(declare-fun e!3542094 () Bool)

(declare-fun tp!1593218 () Bool)

(assert (=> b!5765100 (= e!3542094 tp!1593218)))

(assert (=> b!5763964 (= tp!1592952 e!3542094)))

(declare-fun b!5765101 () Bool)

(declare-fun tp!1593221 () Bool)

(declare-fun tp!1593217 () Bool)

(assert (=> b!5765101 (= e!3542094 (and tp!1593221 tp!1593217))))

(declare-fun b!5765099 () Bool)

(declare-fun tp!1593220 () Bool)

(declare-fun tp!1593219 () Bool)

(assert (=> b!5765099 (= e!3542094 (and tp!1593220 tp!1593219))))

(declare-fun b!5765098 () Bool)

(assert (=> b!5765098 (= e!3542094 tp_is_empty!40803)))

(assert (= (and b!5763964 ((_ is ElementMatch!15775) (h!69949 (exprs!5659 (h!69950 zl!343))))) b!5765098))

(assert (= (and b!5763964 ((_ is Concat!24620) (h!69949 (exprs!5659 (h!69950 zl!343))))) b!5765099))

(assert (= (and b!5763964 ((_ is Star!15775) (h!69949 (exprs!5659 (h!69950 zl!343))))) b!5765100))

(assert (= (and b!5763964 ((_ is Union!15775) (h!69949 (exprs!5659 (h!69950 zl!343))))) b!5765101))

(declare-fun b!5765102 () Bool)

(declare-fun e!3542095 () Bool)

(declare-fun tp!1593222 () Bool)

(declare-fun tp!1593223 () Bool)

(assert (=> b!5765102 (= e!3542095 (and tp!1593222 tp!1593223))))

(assert (=> b!5763964 (= tp!1592953 e!3542095)))

(assert (= (and b!5763964 ((_ is Cons!63501) (t!376959 (exprs!5659 (h!69950 zl!343))))) b!5765102))

(declare-fun b!5765105 () Bool)

(declare-fun e!3542096 () Bool)

(declare-fun tp!1593225 () Bool)

(assert (=> b!5765105 (= e!3542096 tp!1593225)))

(assert (=> b!5763940 (= tp!1592924 e!3542096)))

(declare-fun b!5765106 () Bool)

(declare-fun tp!1593228 () Bool)

(declare-fun tp!1593224 () Bool)

(assert (=> b!5765106 (= e!3542096 (and tp!1593228 tp!1593224))))

(declare-fun b!5765104 () Bool)

(declare-fun tp!1593227 () Bool)

(declare-fun tp!1593226 () Bool)

(assert (=> b!5765104 (= e!3542096 (and tp!1593227 tp!1593226))))

(declare-fun b!5765103 () Bool)

(assert (=> b!5765103 (= e!3542096 tp_is_empty!40803)))

(assert (= (and b!5763940 ((_ is ElementMatch!15775) (regOne!32062 (regOne!32062 r!7292)))) b!5765103))

(assert (= (and b!5763940 ((_ is Concat!24620) (regOne!32062 (regOne!32062 r!7292)))) b!5765104))

(assert (= (and b!5763940 ((_ is Star!15775) (regOne!32062 (regOne!32062 r!7292)))) b!5765105))

(assert (= (and b!5763940 ((_ is Union!15775) (regOne!32062 (regOne!32062 r!7292)))) b!5765106))

(declare-fun b!5765109 () Bool)

(declare-fun e!3542097 () Bool)

(declare-fun tp!1593230 () Bool)

(assert (=> b!5765109 (= e!3542097 tp!1593230)))

(assert (=> b!5763940 (= tp!1592923 e!3542097)))

(declare-fun b!5765110 () Bool)

(declare-fun tp!1593233 () Bool)

(declare-fun tp!1593229 () Bool)

(assert (=> b!5765110 (= e!3542097 (and tp!1593233 tp!1593229))))

(declare-fun b!5765108 () Bool)

(declare-fun tp!1593232 () Bool)

(declare-fun tp!1593231 () Bool)

(assert (=> b!5765108 (= e!3542097 (and tp!1593232 tp!1593231))))

(declare-fun b!5765107 () Bool)

(assert (=> b!5765107 (= e!3542097 tp_is_empty!40803)))

(assert (= (and b!5763940 ((_ is ElementMatch!15775) (regTwo!32062 (regOne!32062 r!7292)))) b!5765107))

(assert (= (and b!5763940 ((_ is Concat!24620) (regTwo!32062 (regOne!32062 r!7292)))) b!5765108))

(assert (= (and b!5763940 ((_ is Star!15775) (regTwo!32062 (regOne!32062 r!7292)))) b!5765109))

(assert (= (and b!5763940 ((_ is Union!15775) (regTwo!32062 (regOne!32062 r!7292)))) b!5765110))

(declare-fun b!5765113 () Bool)

(declare-fun e!3542098 () Bool)

(declare-fun tp!1593235 () Bool)

(assert (=> b!5765113 (= e!3542098 tp!1593235)))

(assert (=> b!5763950 (= tp!1592935 e!3542098)))

(declare-fun b!5765114 () Bool)

(declare-fun tp!1593238 () Bool)

(declare-fun tp!1593234 () Bool)

(assert (=> b!5765114 (= e!3542098 (and tp!1593238 tp!1593234))))

(declare-fun b!5765112 () Bool)

(declare-fun tp!1593237 () Bool)

(declare-fun tp!1593236 () Bool)

(assert (=> b!5765112 (= e!3542098 (and tp!1593237 tp!1593236))))

(declare-fun b!5765111 () Bool)

(assert (=> b!5765111 (= e!3542098 tp_is_empty!40803)))

(assert (= (and b!5763950 ((_ is ElementMatch!15775) (regOne!32063 (regOne!32063 r!7292)))) b!5765111))

(assert (= (and b!5763950 ((_ is Concat!24620) (regOne!32063 (regOne!32063 r!7292)))) b!5765112))

(assert (= (and b!5763950 ((_ is Star!15775) (regOne!32063 (regOne!32063 r!7292)))) b!5765113))

(assert (= (and b!5763950 ((_ is Union!15775) (regOne!32063 (regOne!32063 r!7292)))) b!5765114))

(declare-fun b!5765117 () Bool)

(declare-fun e!3542099 () Bool)

(declare-fun tp!1593240 () Bool)

(assert (=> b!5765117 (= e!3542099 tp!1593240)))

(assert (=> b!5763950 (= tp!1592931 e!3542099)))

(declare-fun b!5765118 () Bool)

(declare-fun tp!1593243 () Bool)

(declare-fun tp!1593239 () Bool)

(assert (=> b!5765118 (= e!3542099 (and tp!1593243 tp!1593239))))

(declare-fun b!5765116 () Bool)

(declare-fun tp!1593242 () Bool)

(declare-fun tp!1593241 () Bool)

(assert (=> b!5765116 (= e!3542099 (and tp!1593242 tp!1593241))))

(declare-fun b!5765115 () Bool)

(assert (=> b!5765115 (= e!3542099 tp_is_empty!40803)))

(assert (= (and b!5763950 ((_ is ElementMatch!15775) (regTwo!32063 (regOne!32063 r!7292)))) b!5765115))

(assert (= (and b!5763950 ((_ is Concat!24620) (regTwo!32063 (regOne!32063 r!7292)))) b!5765116))

(assert (= (and b!5763950 ((_ is Star!15775) (regTwo!32063 (regOne!32063 r!7292)))) b!5765117))

(assert (= (and b!5763950 ((_ is Union!15775) (regTwo!32063 (regOne!32063 r!7292)))) b!5765118))

(declare-fun b!5765121 () Bool)

(declare-fun e!3542100 () Bool)

(declare-fun tp!1593245 () Bool)

(assert (=> b!5765121 (= e!3542100 tp!1593245)))

(assert (=> b!5763941 (= tp!1592922 e!3542100)))

(declare-fun b!5765122 () Bool)

(declare-fun tp!1593248 () Bool)

(declare-fun tp!1593244 () Bool)

(assert (=> b!5765122 (= e!3542100 (and tp!1593248 tp!1593244))))

(declare-fun b!5765120 () Bool)

(declare-fun tp!1593247 () Bool)

(declare-fun tp!1593246 () Bool)

(assert (=> b!5765120 (= e!3542100 (and tp!1593247 tp!1593246))))

(declare-fun b!5765119 () Bool)

(assert (=> b!5765119 (= e!3542100 tp_is_empty!40803)))

(assert (= (and b!5763941 ((_ is ElementMatch!15775) (reg!16104 (regOne!32062 r!7292)))) b!5765119))

(assert (= (and b!5763941 ((_ is Concat!24620) (reg!16104 (regOne!32062 r!7292)))) b!5765120))

(assert (= (and b!5763941 ((_ is Star!15775) (reg!16104 (regOne!32062 r!7292)))) b!5765121))

(assert (= (and b!5763941 ((_ is Union!15775) (reg!16104 (regOne!32062 r!7292)))) b!5765122))

(declare-fun b!5765125 () Bool)

(declare-fun e!3542101 () Bool)

(declare-fun tp!1593250 () Bool)

(assert (=> b!5765125 (= e!3542101 tp!1593250)))

(assert (=> b!5763948 (= tp!1592934 e!3542101)))

(declare-fun b!5765126 () Bool)

(declare-fun tp!1593253 () Bool)

(declare-fun tp!1593249 () Bool)

(assert (=> b!5765126 (= e!3542101 (and tp!1593253 tp!1593249))))

(declare-fun b!5765124 () Bool)

(declare-fun tp!1593252 () Bool)

(declare-fun tp!1593251 () Bool)

(assert (=> b!5765124 (= e!3542101 (and tp!1593252 tp!1593251))))

(declare-fun b!5765123 () Bool)

(assert (=> b!5765123 (= e!3542101 tp_is_empty!40803)))

(assert (= (and b!5763948 ((_ is ElementMatch!15775) (regOne!32062 (regOne!32063 r!7292)))) b!5765123))

(assert (= (and b!5763948 ((_ is Concat!24620) (regOne!32062 (regOne!32063 r!7292)))) b!5765124))

(assert (= (and b!5763948 ((_ is Star!15775) (regOne!32062 (regOne!32063 r!7292)))) b!5765125))

(assert (= (and b!5763948 ((_ is Union!15775) (regOne!32062 (regOne!32063 r!7292)))) b!5765126))

(declare-fun b!5765129 () Bool)

(declare-fun e!3542102 () Bool)

(declare-fun tp!1593255 () Bool)

(assert (=> b!5765129 (= e!3542102 tp!1593255)))

(assert (=> b!5763948 (= tp!1592933 e!3542102)))

(declare-fun b!5765130 () Bool)

(declare-fun tp!1593258 () Bool)

(declare-fun tp!1593254 () Bool)

(assert (=> b!5765130 (= e!3542102 (and tp!1593258 tp!1593254))))

(declare-fun b!5765128 () Bool)

(declare-fun tp!1593257 () Bool)

(declare-fun tp!1593256 () Bool)

(assert (=> b!5765128 (= e!3542102 (and tp!1593257 tp!1593256))))

(declare-fun b!5765127 () Bool)

(assert (=> b!5765127 (= e!3542102 tp_is_empty!40803)))

(assert (= (and b!5763948 ((_ is ElementMatch!15775) (regTwo!32062 (regOne!32063 r!7292)))) b!5765127))

(assert (= (and b!5763948 ((_ is Concat!24620) (regTwo!32062 (regOne!32063 r!7292)))) b!5765128))

(assert (= (and b!5763948 ((_ is Star!15775) (regTwo!32062 (regOne!32063 r!7292)))) b!5765129))

(assert (= (and b!5763948 ((_ is Union!15775) (regTwo!32062 (regOne!32063 r!7292)))) b!5765130))

(declare-fun b!5765133 () Bool)

(declare-fun e!3542103 () Bool)

(declare-fun tp!1593260 () Bool)

(assert (=> b!5765133 (= e!3542103 tp!1593260)))

(assert (=> b!5763958 (= tp!1592945 e!3542103)))

(declare-fun b!5765134 () Bool)

(declare-fun tp!1593263 () Bool)

(declare-fun tp!1593259 () Bool)

(assert (=> b!5765134 (= e!3542103 (and tp!1593263 tp!1593259))))

(declare-fun b!5765132 () Bool)

(declare-fun tp!1593262 () Bool)

(declare-fun tp!1593261 () Bool)

(assert (=> b!5765132 (= e!3542103 (and tp!1593262 tp!1593261))))

(declare-fun b!5765131 () Bool)

(assert (=> b!5765131 (= e!3542103 tp_is_empty!40803)))

(assert (= (and b!5763958 ((_ is ElementMatch!15775) (regOne!32063 (reg!16104 r!7292)))) b!5765131))

(assert (= (and b!5763958 ((_ is Concat!24620) (regOne!32063 (reg!16104 r!7292)))) b!5765132))

(assert (= (and b!5763958 ((_ is Star!15775) (regOne!32063 (reg!16104 r!7292)))) b!5765133))

(assert (= (and b!5763958 ((_ is Union!15775) (regOne!32063 (reg!16104 r!7292)))) b!5765134))

(declare-fun b!5765137 () Bool)

(declare-fun e!3542104 () Bool)

(declare-fun tp!1593265 () Bool)

(assert (=> b!5765137 (= e!3542104 tp!1593265)))

(assert (=> b!5763958 (= tp!1592941 e!3542104)))

(declare-fun b!5765138 () Bool)

(declare-fun tp!1593268 () Bool)

(declare-fun tp!1593264 () Bool)

(assert (=> b!5765138 (= e!3542104 (and tp!1593268 tp!1593264))))

(declare-fun b!5765136 () Bool)

(declare-fun tp!1593267 () Bool)

(declare-fun tp!1593266 () Bool)

(assert (=> b!5765136 (= e!3542104 (and tp!1593267 tp!1593266))))

(declare-fun b!5765135 () Bool)

(assert (=> b!5765135 (= e!3542104 tp_is_empty!40803)))

(assert (= (and b!5763958 ((_ is ElementMatch!15775) (regTwo!32063 (reg!16104 r!7292)))) b!5765135))

(assert (= (and b!5763958 ((_ is Concat!24620) (regTwo!32063 (reg!16104 r!7292)))) b!5765136))

(assert (= (and b!5763958 ((_ is Star!15775) (regTwo!32063 (reg!16104 r!7292)))) b!5765137))

(assert (= (and b!5763958 ((_ is Union!15775) (regTwo!32063 (reg!16104 r!7292)))) b!5765138))

(declare-fun b!5765141 () Bool)

(declare-fun e!3542105 () Bool)

(declare-fun tp!1593270 () Bool)

(assert (=> b!5765141 (= e!3542105 tp!1593270)))

(assert (=> b!5763949 (= tp!1592932 e!3542105)))

(declare-fun b!5765142 () Bool)

(declare-fun tp!1593273 () Bool)

(declare-fun tp!1593269 () Bool)

(assert (=> b!5765142 (= e!3542105 (and tp!1593273 tp!1593269))))

(declare-fun b!5765140 () Bool)

(declare-fun tp!1593272 () Bool)

(declare-fun tp!1593271 () Bool)

(assert (=> b!5765140 (= e!3542105 (and tp!1593272 tp!1593271))))

(declare-fun b!5765139 () Bool)

(assert (=> b!5765139 (= e!3542105 tp_is_empty!40803)))

(assert (= (and b!5763949 ((_ is ElementMatch!15775) (reg!16104 (regOne!32063 r!7292)))) b!5765139))

(assert (= (and b!5763949 ((_ is Concat!24620) (reg!16104 (regOne!32063 r!7292)))) b!5765140))

(assert (= (and b!5763949 ((_ is Star!15775) (reg!16104 (regOne!32063 r!7292)))) b!5765141))

(assert (= (and b!5763949 ((_ is Union!15775) (reg!16104 (regOne!32063 r!7292)))) b!5765142))

(declare-fun b!5765145 () Bool)

(declare-fun e!3542106 () Bool)

(declare-fun tp!1593275 () Bool)

(assert (=> b!5765145 (= e!3542106 tp!1593275)))

(assert (=> b!5763946 (= tp!1592930 e!3542106)))

(declare-fun b!5765146 () Bool)

(declare-fun tp!1593278 () Bool)

(declare-fun tp!1593274 () Bool)

(assert (=> b!5765146 (= e!3542106 (and tp!1593278 tp!1593274))))

(declare-fun b!5765144 () Bool)

(declare-fun tp!1593277 () Bool)

(declare-fun tp!1593276 () Bool)

(assert (=> b!5765144 (= e!3542106 (and tp!1593277 tp!1593276))))

(declare-fun b!5765143 () Bool)

(assert (=> b!5765143 (= e!3542106 tp_is_empty!40803)))

(assert (= (and b!5763946 ((_ is ElementMatch!15775) (regOne!32063 (regTwo!32062 r!7292)))) b!5765143))

(assert (= (and b!5763946 ((_ is Concat!24620) (regOne!32063 (regTwo!32062 r!7292)))) b!5765144))

(assert (= (and b!5763946 ((_ is Star!15775) (regOne!32063 (regTwo!32062 r!7292)))) b!5765145))

(assert (= (and b!5763946 ((_ is Union!15775) (regOne!32063 (regTwo!32062 r!7292)))) b!5765146))

(declare-fun b!5765149 () Bool)

(declare-fun e!3542107 () Bool)

(declare-fun tp!1593280 () Bool)

(assert (=> b!5765149 (= e!3542107 tp!1593280)))

(assert (=> b!5763946 (= tp!1592926 e!3542107)))

(declare-fun b!5765150 () Bool)

(declare-fun tp!1593283 () Bool)

(declare-fun tp!1593279 () Bool)

(assert (=> b!5765150 (= e!3542107 (and tp!1593283 tp!1593279))))

(declare-fun b!5765148 () Bool)

(declare-fun tp!1593282 () Bool)

(declare-fun tp!1593281 () Bool)

(assert (=> b!5765148 (= e!3542107 (and tp!1593282 tp!1593281))))

(declare-fun b!5765147 () Bool)

(assert (=> b!5765147 (= e!3542107 tp_is_empty!40803)))

(assert (= (and b!5763946 ((_ is ElementMatch!15775) (regTwo!32063 (regTwo!32062 r!7292)))) b!5765147))

(assert (= (and b!5763946 ((_ is Concat!24620) (regTwo!32063 (regTwo!32062 r!7292)))) b!5765148))

(assert (= (and b!5763946 ((_ is Star!15775) (regTwo!32063 (regTwo!32062 r!7292)))) b!5765149))

(assert (= (and b!5763946 ((_ is Union!15775) (regTwo!32063 (regTwo!32062 r!7292)))) b!5765150))

(declare-fun b!5765152 () Bool)

(declare-fun e!3542109 () Bool)

(declare-fun tp!1593284 () Bool)

(assert (=> b!5765152 (= e!3542109 tp!1593284)))

(declare-fun tp!1593285 () Bool)

(declare-fun b!5765151 () Bool)

(declare-fun e!3542108 () Bool)

(assert (=> b!5765151 (= e!3542108 (and (inv!82684 (h!69950 (t!376960 (t!376960 zl!343)))) e!3542109 tp!1593285))))

(assert (=> b!5763976 (= tp!1592962 e!3542108)))

(assert (= b!5765151 b!5765152))

(assert (= (and b!5763976 ((_ is Cons!63502) (t!376960 (t!376960 zl!343)))) b!5765151))

(declare-fun m!6711384 () Bool)

(assert (=> b!5765151 m!6711384))

(declare-fun b!5765153 () Bool)

(declare-fun e!3542110 () Bool)

(declare-fun tp!1593286 () Bool)

(assert (=> b!5765153 (= e!3542110 (and tp_is_empty!40803 tp!1593286))))

(assert (=> b!5763969 (= tp!1592956 e!3542110)))

(assert (= (and b!5763969 ((_ is Cons!63500) (t!376958 (t!376958 s!2326)))) b!5765153))

(declare-fun b_lambda!217641 () Bool)

(assert (= b_lambda!217633 (or b!5763167 b_lambda!217641)))

(assert (=> d!1816191 d!1815849))

(declare-fun b_lambda!217643 () Bool)

(assert (= b_lambda!217639 (or d!1815845 b_lambda!217643)))

(declare-fun bs!1352394 () Bool)

(declare-fun d!1816305 () Bool)

(assert (= bs!1352394 (and d!1816305 d!1815845)))

(assert (=> bs!1352394 (= (dynLambda!24859 lambda!312989 (h!69949 (exprs!5659 (h!69950 zl!343)))) (validRegex!7511 (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(declare-fun m!6711386 () Bool)

(assert (=> bs!1352394 m!6711386))

(assert (=> b!5764996 d!1816305))

(declare-fun b_lambda!217645 () Bool)

(assert (= b_lambda!217627 (or d!1815717 b_lambda!217645)))

(declare-fun bs!1352395 () Bool)

(declare-fun d!1816307 () Bool)

(assert (= bs!1352395 (and d!1816307 d!1815717)))

(assert (=> bs!1352395 (= (dynLambda!24859 lambda!312941 (h!69949 (unfocusZipperList!1203 zl!343))) (validRegex!7511 (h!69949 (unfocusZipperList!1203 zl!343))))))

(declare-fun m!6711388 () Bool)

(assert (=> bs!1352395 m!6711388))

(assert (=> b!5764579 d!1816307))

(declare-fun b_lambda!217647 () Bool)

(assert (= b_lambda!217635 (or d!1815839 b_lambda!217647)))

(declare-fun bs!1352396 () Bool)

(declare-fun d!1816309 () Bool)

(assert (= bs!1352396 (and d!1816309 d!1815839)))

(assert (=> bs!1352396 (= (dynLambda!24859 lambda!312988 (h!69949 (exprs!5659 (h!69950 zl!343)))) (validRegex!7511 (h!69949 (exprs!5659 (h!69950 zl!343)))))))

(assert (=> bs!1352396 m!6711386))

(assert (=> b!5764929 d!1816309))

(declare-fun b_lambda!217649 () Bool)

(assert (= b_lambda!217629 (or d!1815723 b_lambda!217649)))

(declare-fun bs!1352397 () Bool)

(declare-fun d!1816311 () Bool)

(assert (= bs!1352397 (and d!1816311 d!1815723)))

(assert (=> bs!1352397 (= (dynLambda!24859 lambda!312949 (h!69949 lt!2289068)) (validRegex!7511 (h!69949 lt!2289068)))))

(declare-fun m!6711390 () Bool)

(assert (=> bs!1352397 m!6711390))

(assert (=> b!5764708 d!1816311))

(declare-fun b_lambda!217651 () Bool)

(assert (= b_lambda!217631 (or d!1815691 b_lambda!217651)))

(declare-fun bs!1352398 () Bool)

(declare-fun d!1816313 () Bool)

(assert (= bs!1352398 (and d!1816313 d!1815691)))

(assert (=> bs!1352398 (= (dynLambda!24859 lambda!312926 (h!69949 (exprs!5659 setElem!38707))) (validRegex!7511 (h!69949 (exprs!5659 setElem!38707))))))

(declare-fun m!6711392 () Bool)

(assert (=> bs!1352398 m!6711392))

(assert (=> b!5764788 d!1816313))

(declare-fun b_lambda!217653 () Bool)

(assert (= b_lambda!217637 (or b!5763167 b_lambda!217653)))

(assert (=> d!1816281 d!1815847))

(check-sat (not b!5764790) (not b!5765094) (not bm!442696) (not b!5764991) (not b!5765099) (not bm!442761) (not b_lambda!217597) (not bm!442768) (not b!5765036) (not bm!442702) (not b_lambda!217645) (not b!5764954) (not d!1816223) (not b!5764705) (not b!5765052) (not d!1816183) (not setNonEmpty!38723) (not b!5765141) (not b!5765074) (not b!5764688) (not d!1816293) (not bm!442726) (not b!5764624) (not b!5764662) (not b!5764668) (not bs!1352398) (not d!1816159) (not b!5764898) (not bm!442741) (not d!1816111) (not b!5764706) (not b!5764997) (not b!5764909) (not bm!442753) (not b!5765109) (not b!5765128) (not b!5765090) (not b!5765146) (not b!5764645) (not b!5764834) (not bm!442744) (not bm!442729) (not b!5764971) (not b!5764976) (not b!5764727) (not d!1816299) (not bm!442716) (not b!5764977) (not d!1816191) (not b!5765108) (not b!5765091) (not b!5765072) (not d!1816275) (not bm!442755) (not b!5765070) (not bm!442677) (not d!1816177) (not bm!442730) (not b!5764721) (not b!5765106) (not b!5765089) (not b!5765069) (not b!5765024) (not bm!442736) (not bm!442731) (not bm!442770) (not b!5765114) (not b!5765045) (not d!1816207) (not b!5765048) (not b!5764709) (not b!5764583) (not b!5764810) (not b_lambda!217595) (not bm!442747) (not b!5764655) (not d!1816151) (not b!5765097) (not b!5765001) (not bm!442703) (not b!5764833) (not b!5764854) (not d!1816181) (not b!5765086) (not b!5764629) (not b!5765078) (not b!5765150) (not d!1816265) (not bm!442773) (not bm!442715) (not d!1816179) (not b!5764992) (not bm!442760) (not b!5765124) (not b!5764903) (not b!5765113) (not b!5764882) (not bm!442733) (not bm!442749) (not b!5764584) (not b_lambda!217653) (not d!1816135) (not bm!442674) (not b!5764802) (not b!5765095) (not b!5764757) (not b!5765046) (not b!5765082) (not bm!442748) (not b!5765079) (not b!5765000) (not b!5765044) (not b!5765100) (not b!5764762) (not b!5765140) (not b!5764966) (not b!5765110) (not b!5764817) (not b!5764990) (not b!5765039) (not b!5765085) (not b!5764930) (not bm!442693) (not b!5764914) (not b!5765112) (not b!5765130) (not bs!1352394) (not b!5765105) (not d!1816283) (not b!5765076) (not d!1816187) (not b!5764570) (not b!5765125) (not b!5764906) (not bm!442727) (not b!5764589) (not b!5765126) (not d!1816291) (not d!1816277) (not bm!442737) (not b!5764698) (not b!5765117) (not d!1816239) (not d!1816209) (not b!5764667) (not d!1816165) (not b!5765081) (not d!1816295) (not bm!442718) (not bm!442700) (not b!5765149) (not bm!442699) (not b!5764873) (not b!5764759) (not b!5765060) (not b!5764980) (not b!5764719) (not b!5764972) (not b!5764639) (not b!5764931) (not b!5765116) (not d!1816269) (not bm!442763) (not bm!442767) (not b!5764812) (not bm!442732) (not bm!442705) (not d!1816195) (not bm!442739) (not b!5765151) (not b!5764881) (not d!1816173) (not d!1816141) (not b!5765153) (not b!5765118) (not b!5765152) (not b!5765064) (not b!5764763) (not bm!442690) (not b!5765132) (not bm!442752) (not bm!442764) (not b!5764801) (not d!1816087) (not b!5765096) (not b!5764974) (not b!5765129) (not b!5764859) (not b_lambda!217643) (not b!5765049) (not b!5764836) (not b!5765087) (not b!5765104) (not bm!442746) (not d!1816089) (not bm!442754) (not b!5764864) (not d!1816129) (not b!5764897) (not d!1816221) (not b!5764988) (not d!1816145) (not d!1816301) (not d!1816189) (not b!5765142) (not b!5765005) (not d!1816143) (not d!1816153) (not bm!442675) (not b!5764968) (not b!5764588) (not b!5765025) (not b!5764815) (not setNonEmpty!38721) (not b!5764722) (not d!1816113) (not bs!1352397) (not d!1816121) (not b!5764747) (not b_lambda!217647) (not d!1816243) (not b!5765093) (not b!5764765) (not b!5765054) (not bm!442686) (not bs!1352395) (not bm!442708) (not b!5764936) (not bm!442721) (not b!5765137) (not b!5765144) (not bs!1352396) (not b!5764842) (not b!5764900) (not b!5765120) (not b!5765077) (not b!5764764) (not b!5765073) (not d!1816171) (not d!1816185) (not bm!442698) (not b!5765041) (not b!5764955) (not b!5765043) (not d!1816271) (not bm!442745) (not b!5764640) (not b!5764883) (not b!5764942) (not b!5765068) (not bm!442714) (not bm!442694) (not b_lambda!217641) (not b!5765061) (not b!5765050) (not b!5764893) tp_is_empty!40803 (not b!5765121) (not b!5764858) (not b_lambda!217651) (not d!1816235) (not b!5764987) (not b!5765056) (not b!5765148) (not d!1816267) (not bm!442751) (not b!5765021) (not d!1816161) (not b!5764839) (not b!5764586) (not b!5764732) (not bm!442687) (not d!1816163) (not bm!442710) (not b!5765003) (not b!5764663) (not d!1816289) (not b!5764947) (not b!5764924) (not setNonEmpty!38722) (not b!5765102) (not b!5764806) (not d!1816257) (not bm!442695) (not d!1816261) (not d!1816231) (not b!5765058) (not b!5765134) (not b!5764761) (not b!5764665) (not b!5764822) (not bm!442707) (not d!1816255) (not b!5765066) (not b!5764805) (not bm!442713) (not b!5764985) (not b!5764994) (not b!5764580) (not b!5764683) (not b!5764874) (not bm!442728) (not b!5765040) (not b!5765145) (not b!5764818) (not b!5764902) (not b!5765083) (not b!5764809) (not b_lambda!217649) (not b!5765006) (not b!5765122) (not b!5764986) (not d!1816227) (not d!1816281) (not b!5765065) (not bm!442762) (not b!5765138) (not b!5764789) (not b!5764814) (not b!5765062) (not b!5764808) (not b!5765053) (not b!5765009) (not bm!442757) (not b!5764838) (not b!5764678) (not b!5764592) (not bm!442704) (not b!5765057) (not bm!442691) (not b!5765101) (not b!5765133) (not b!5764857) (not b!5764821) (not b!5765136) (not d!1816225) (not b!5764671))
(check-sat)
