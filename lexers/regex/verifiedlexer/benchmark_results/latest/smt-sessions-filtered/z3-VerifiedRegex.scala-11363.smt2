; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!602276 () Bool)

(assert start!602276)

(declare-fun b!5924782 () Bool)

(assert (=> b!5924782 true))

(assert (=> b!5924782 true))

(declare-fun lambda!323103 () Int)

(declare-fun lambda!323102 () Int)

(assert (=> b!5924782 (not (= lambda!323103 lambda!323102))))

(assert (=> b!5924782 true))

(assert (=> b!5924782 true))

(declare-fun b!5924781 () Bool)

(assert (=> b!5924781 true))

(declare-fun b!5924778 () Bool)

(declare-fun e!3626678 () Bool)

(declare-fun e!3626674 () Bool)

(assert (=> b!5924778 (= e!3626678 e!3626674)))

(declare-fun res!2482992 () Bool)

(assert (=> b!5924778 (=> res!2482992 e!3626674)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32216 0))(
  ( (C!32217 (val!25810 Int)) )
))
(declare-datatypes ((Regex!15973 0))(
  ( (ElementMatch!15973 (c!1052981 C!32216)) (Concat!24818 (regOne!32458 Regex!15973) (regTwo!32458 Regex!15973)) (EmptyExpr!15973) (Star!15973 (reg!16302 Regex!15973)) (EmptyLang!15973) (Union!15973 (regOne!32459 Regex!15973) (regTwo!32459 Regex!15973)) )
))
(declare-datatypes ((List!64218 0))(
  ( (Nil!64094) (Cons!64094 (h!70542 Regex!15973) (t!377611 List!64218)) )
))
(declare-datatypes ((Context!10714 0))(
  ( (Context!10715 (exprs!5857 List!64218)) )
))
(declare-fun lt!2310193 () (InoxSet Context!10714))

(declare-fun lt!2310196 () (InoxSet Context!10714))

(assert (=> b!5924778 (= res!2482992 (not (= lt!2310193 lt!2310196)))))

(declare-fun r!7292 () Regex!15973)

(declare-datatypes ((List!64219 0))(
  ( (Nil!64095) (Cons!64095 (h!70543 C!32216) (t!377612 List!64219)) )
))
(declare-fun s!2326 () List!64219)

(declare-fun derivationStepZipperDown!1223 (Regex!15973 Context!10714 C!32216) (InoxSet Context!10714))

(assert (=> b!5924778 (= lt!2310196 (derivationStepZipperDown!1223 r!7292 (Context!10715 Nil!64094) (h!70543 s!2326)))))

(declare-fun derivationStepZipperUp!1149 (Context!10714 C!32216) (InoxSet Context!10714))

(assert (=> b!5924778 (= lt!2310193 (derivationStepZipperUp!1149 (Context!10715 (Cons!64094 r!7292 Nil!64094)) (h!70543 s!2326)))))

(declare-fun b!5924779 () Bool)

(declare-fun e!3626682 () Bool)

(declare-fun tp_is_empty!41199 () Bool)

(assert (=> b!5924779 (= e!3626682 tp_is_empty!41199)))

(declare-fun b!5924780 () Bool)

(declare-fun e!3626679 () Bool)

(declare-fun e!3626683 () Bool)

(assert (=> b!5924780 (= e!3626679 (not e!3626683))))

(declare-fun res!2482995 () Bool)

(assert (=> b!5924780 (=> res!2482995 e!3626683)))

(declare-datatypes ((List!64220 0))(
  ( (Nil!64096) (Cons!64096 (h!70544 Context!10714) (t!377613 List!64220)) )
))
(declare-fun zl!343 () List!64220)

(get-info :version)

(assert (=> b!5924780 (= res!2482995 (not ((_ is Cons!64096) zl!343)))))

(declare-fun lt!2310197 () Bool)

(declare-fun matchRSpec!3074 (Regex!15973 List!64219) Bool)

(assert (=> b!5924780 (= lt!2310197 (matchRSpec!3074 r!7292 s!2326))))

(declare-fun matchR!8156 (Regex!15973 List!64219) Bool)

(assert (=> b!5924780 (= lt!2310197 (matchR!8156 r!7292 s!2326))))

(declare-datatypes ((Unit!157217 0))(
  ( (Unit!157218) )
))
(declare-fun lt!2310194 () Unit!157217)

(declare-fun mainMatchTheorem!3074 (Regex!15973 List!64219) Unit!157217)

(assert (=> b!5924780 (= lt!2310194 (mainMatchTheorem!3074 r!7292 s!2326))))

(assert (=> b!5924782 (= e!3626683 e!3626678)))

(declare-fun res!2483000 () Bool)

(assert (=> b!5924782 (=> res!2483000 e!3626678)))

(declare-fun lt!2310199 () Bool)

(assert (=> b!5924782 (= res!2483000 (or (not (= lt!2310197 lt!2310199)) ((_ is Nil!64095) s!2326)))))

(declare-fun Exists!3043 (Int) Bool)

(assert (=> b!5924782 (= (Exists!3043 lambda!323102) (Exists!3043 lambda!323103))))

(declare-fun lt!2310195 () Unit!157217)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1580 (Regex!15973 Regex!15973 List!64219) Unit!157217)

(assert (=> b!5924782 (= lt!2310195 (lemmaExistCutMatchRandMatchRSpecEquivalent!1580 (regOne!32458 r!7292) (regTwo!32458 r!7292) s!2326))))

(assert (=> b!5924782 (= lt!2310199 (Exists!3043 lambda!323102))))

(declare-datatypes ((tuple2!65904 0))(
  ( (tuple2!65905 (_1!36255 List!64219) (_2!36255 List!64219)) )
))
(declare-datatypes ((Option!15864 0))(
  ( (None!15863) (Some!15863 (v!51961 tuple2!65904)) )
))
(declare-fun isDefined!12567 (Option!15864) Bool)

(declare-fun findConcatSeparation!2278 (Regex!15973 Regex!15973 List!64219 List!64219 List!64219) Option!15864)

(assert (=> b!5924782 (= lt!2310199 (isDefined!12567 (findConcatSeparation!2278 (regOne!32458 r!7292) (regTwo!32458 r!7292) Nil!64095 s!2326 s!2326)))))

(declare-fun lt!2310200 () Unit!157217)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2042 (Regex!15973 Regex!15973 List!64219) Unit!157217)

(assert (=> b!5924782 (= lt!2310200 (lemmaFindConcatSeparationEquivalentToExists!2042 (regOne!32458 r!7292) (regTwo!32458 r!7292) s!2326))))

(declare-fun b!5924783 () Bool)

(declare-fun tp!1647718 () Bool)

(declare-fun tp!1647715 () Bool)

(assert (=> b!5924783 (= e!3626682 (and tp!1647718 tp!1647715))))

(declare-fun b!5924784 () Bool)

(declare-fun res!2482990 () Bool)

(assert (=> b!5924784 (=> (not res!2482990) (not e!3626679))))

(declare-fun z!1189 () (InoxSet Context!10714))

(declare-fun toList!9757 ((InoxSet Context!10714)) List!64220)

(assert (=> b!5924784 (= res!2482990 (= (toList!9757 z!1189) zl!343))))

(declare-fun b!5924785 () Bool)

(declare-fun e!3626676 () Bool)

(declare-fun tp!1647717 () Bool)

(assert (=> b!5924785 (= e!3626676 tp!1647717)))

(declare-fun b!5924786 () Bool)

(declare-fun res!2482997 () Bool)

(assert (=> b!5924786 (=> res!2482997 e!3626683)))

(assert (=> b!5924786 (= res!2482997 (not ((_ is Cons!64094) (exprs!5857 (h!70544 zl!343)))))))

(declare-fun b!5924787 () Bool)

(declare-fun e!3626680 () Bool)

(declare-fun tp!1647721 () Bool)

(assert (=> b!5924787 (= e!3626680 (and tp_is_empty!41199 tp!1647721))))

(declare-fun b!5924788 () Bool)

(declare-fun e!3626681 () Bool)

(declare-fun tp!1647722 () Bool)

(assert (=> b!5924788 (= e!3626681 tp!1647722)))

(declare-fun b!5924789 () Bool)

(declare-fun res!2482988 () Bool)

(assert (=> b!5924789 (=> res!2482988 e!3626683)))

(assert (=> b!5924789 (= res!2482988 (or ((_ is EmptyExpr!15973) r!7292) ((_ is EmptyLang!15973) r!7292) ((_ is ElementMatch!15973) r!7292) ((_ is Union!15973) r!7292) (not ((_ is Concat!24818) r!7292))))))

(declare-fun b!5924790 () Bool)

(declare-fun res!2482991 () Bool)

(assert (=> b!5924790 (=> res!2482991 e!3626683)))

(declare-fun generalisedUnion!1817 (List!64218) Regex!15973)

(declare-fun unfocusZipperList!1394 (List!64220) List!64218)

(assert (=> b!5924790 (= res!2482991 (not (= r!7292 (generalisedUnion!1817 (unfocusZipperList!1394 zl!343)))))))

(declare-fun e!3626677 () Bool)

(assert (=> b!5924781 (= e!3626674 e!3626677)))

(declare-fun res!2482989 () Bool)

(assert (=> b!5924781 (=> res!2482989 e!3626677)))

(declare-fun derivationStepZipper!1954 ((InoxSet Context!10714) C!32216) (InoxSet Context!10714))

(assert (=> b!5924781 (= res!2482989 (not (= (derivationStepZipper!1954 z!1189 (h!70543 s!2326)) lt!2310196)))))

(declare-fun lambda!323104 () Int)

(declare-fun flatMap!1486 ((InoxSet Context!10714) Int) (InoxSet Context!10714))

(assert (=> b!5924781 (= (flatMap!1486 z!1189 lambda!323104) (derivationStepZipperUp!1149 (h!70544 zl!343) (h!70543 s!2326)))))

(declare-fun lt!2310198 () Unit!157217)

(declare-fun lemmaFlatMapOnSingletonSet!1012 ((InoxSet Context!10714) Context!10714 Int) Unit!157217)

(assert (=> b!5924781 (= lt!2310198 (lemmaFlatMapOnSingletonSet!1012 z!1189 (h!70544 zl!343) lambda!323104))))

(declare-fun res!2482994 () Bool)

(assert (=> start!602276 (=> (not res!2482994) (not e!3626679))))

(declare-fun validRegex!7709 (Regex!15973) Bool)

(assert (=> start!602276 (= res!2482994 (validRegex!7709 r!7292))))

(assert (=> start!602276 e!3626679))

(assert (=> start!602276 e!3626682))

(declare-fun condSetEmpty!40202 () Bool)

(assert (=> start!602276 (= condSetEmpty!40202 (= z!1189 ((as const (Array Context!10714 Bool)) false)))))

(declare-fun setRes!40202 () Bool)

(assert (=> start!602276 setRes!40202))

(declare-fun e!3626675 () Bool)

(assert (=> start!602276 e!3626675))

(assert (=> start!602276 e!3626680))

(declare-fun b!5924791 () Bool)

(declare-fun res!2482993 () Bool)

(assert (=> b!5924791 (=> res!2482993 e!3626683)))

(declare-fun generalisedConcat!1570 (List!64218) Regex!15973)

(assert (=> b!5924791 (= res!2482993 (not (= r!7292 (generalisedConcat!1570 (exprs!5857 (h!70544 zl!343))))))))

(declare-fun b!5924792 () Bool)

(declare-fun tp!1647719 () Bool)

(assert (=> b!5924792 (= e!3626682 tp!1647719)))

(declare-fun tp!1647713 () Bool)

(declare-fun setNonEmpty!40202 () Bool)

(declare-fun setElem!40202 () Context!10714)

(declare-fun inv!83179 (Context!10714) Bool)

(assert (=> setNonEmpty!40202 (= setRes!40202 (and tp!1647713 (inv!83179 setElem!40202) e!3626676))))

(declare-fun setRest!40202 () (InoxSet Context!10714))

(assert (=> setNonEmpty!40202 (= z!1189 ((_ map or) (store ((as const (Array Context!10714 Bool)) false) setElem!40202 true) setRest!40202))))

(declare-fun b!5924793 () Bool)

(declare-fun res!2482999 () Bool)

(assert (=> b!5924793 (=> (not res!2482999) (not e!3626679))))

(declare-fun unfocusZipper!1715 (List!64220) Regex!15973)

(assert (=> b!5924793 (= res!2482999 (= r!7292 (unfocusZipper!1715 zl!343)))))

(declare-fun b!5924794 () Bool)

(declare-fun res!2482998 () Bool)

(assert (=> b!5924794 (=> res!2482998 e!3626678)))

(declare-fun isEmpty!35953 (List!64218) Bool)

(assert (=> b!5924794 (= res!2482998 (not (isEmpty!35953 (t!377611 (exprs!5857 (h!70544 zl!343))))))))

(declare-fun tp!1647714 () Bool)

(declare-fun b!5924795 () Bool)

(assert (=> b!5924795 (= e!3626675 (and (inv!83179 (h!70544 zl!343)) e!3626681 tp!1647714))))

(declare-fun b!5924796 () Bool)

(declare-fun res!2482996 () Bool)

(assert (=> b!5924796 (=> res!2482996 e!3626683)))

(declare-fun isEmpty!35954 (List!64220) Bool)

(assert (=> b!5924796 (= res!2482996 (not (isEmpty!35954 (t!377613 zl!343))))))

(declare-fun setIsEmpty!40202 () Bool)

(assert (=> setIsEmpty!40202 setRes!40202))

(declare-fun b!5924797 () Bool)

(declare-fun tp!1647716 () Bool)

(declare-fun tp!1647720 () Bool)

(assert (=> b!5924797 (= e!3626682 (and tp!1647716 tp!1647720))))

(declare-fun b!5924798 () Bool)

(assert (=> b!5924798 (= e!3626677 (inv!83179 (Context!10715 (Cons!64094 (regTwo!32458 r!7292) Nil!64094))))))

(assert (= (and start!602276 res!2482994) b!5924784))

(assert (= (and b!5924784 res!2482990) b!5924793))

(assert (= (and b!5924793 res!2482999) b!5924780))

(assert (= (and b!5924780 (not res!2482995)) b!5924796))

(assert (= (and b!5924796 (not res!2482996)) b!5924791))

(assert (= (and b!5924791 (not res!2482993)) b!5924786))

(assert (= (and b!5924786 (not res!2482997)) b!5924790))

(assert (= (and b!5924790 (not res!2482991)) b!5924789))

(assert (= (and b!5924789 (not res!2482988)) b!5924782))

(assert (= (and b!5924782 (not res!2483000)) b!5924794))

(assert (= (and b!5924794 (not res!2482998)) b!5924778))

(assert (= (and b!5924778 (not res!2482992)) b!5924781))

(assert (= (and b!5924781 (not res!2482989)) b!5924798))

(assert (= (and start!602276 ((_ is ElementMatch!15973) r!7292)) b!5924779))

(assert (= (and start!602276 ((_ is Concat!24818) r!7292)) b!5924797))

(assert (= (and start!602276 ((_ is Star!15973) r!7292)) b!5924792))

(assert (= (and start!602276 ((_ is Union!15973) r!7292)) b!5924783))

(assert (= (and start!602276 condSetEmpty!40202) setIsEmpty!40202))

(assert (= (and start!602276 (not condSetEmpty!40202)) setNonEmpty!40202))

(assert (= setNonEmpty!40202 b!5924785))

(assert (= b!5924795 b!5924788))

(assert (= (and start!602276 ((_ is Cons!64096) zl!343)) b!5924795))

(assert (= (and start!602276 ((_ is Cons!64095) s!2326)) b!5924787))

(declare-fun m!6819236 () Bool)

(assert (=> b!5924793 m!6819236))

(declare-fun m!6819238 () Bool)

(assert (=> b!5924791 m!6819238))

(declare-fun m!6819240 () Bool)

(assert (=> b!5924782 m!6819240))

(declare-fun m!6819242 () Bool)

(assert (=> b!5924782 m!6819242))

(declare-fun m!6819244 () Bool)

(assert (=> b!5924782 m!6819244))

(assert (=> b!5924782 m!6819240))

(assert (=> b!5924782 m!6819242))

(declare-fun m!6819246 () Bool)

(assert (=> b!5924782 m!6819246))

(declare-fun m!6819248 () Bool)

(assert (=> b!5924782 m!6819248))

(declare-fun m!6819250 () Bool)

(assert (=> b!5924782 m!6819250))

(declare-fun m!6819252 () Bool)

(assert (=> b!5924790 m!6819252))

(assert (=> b!5924790 m!6819252))

(declare-fun m!6819254 () Bool)

(assert (=> b!5924790 m!6819254))

(declare-fun m!6819256 () Bool)

(assert (=> b!5924796 m!6819256))

(declare-fun m!6819258 () Bool)

(assert (=> setNonEmpty!40202 m!6819258))

(declare-fun m!6819260 () Bool)

(assert (=> b!5924795 m!6819260))

(declare-fun m!6819262 () Bool)

(assert (=> b!5924781 m!6819262))

(declare-fun m!6819264 () Bool)

(assert (=> b!5924781 m!6819264))

(declare-fun m!6819266 () Bool)

(assert (=> b!5924781 m!6819266))

(declare-fun m!6819268 () Bool)

(assert (=> b!5924781 m!6819268))

(declare-fun m!6819270 () Bool)

(assert (=> start!602276 m!6819270))

(declare-fun m!6819272 () Bool)

(assert (=> b!5924780 m!6819272))

(declare-fun m!6819274 () Bool)

(assert (=> b!5924780 m!6819274))

(declare-fun m!6819276 () Bool)

(assert (=> b!5924780 m!6819276))

(declare-fun m!6819278 () Bool)

(assert (=> b!5924784 m!6819278))

(declare-fun m!6819280 () Bool)

(assert (=> b!5924794 m!6819280))

(declare-fun m!6819282 () Bool)

(assert (=> b!5924798 m!6819282))

(declare-fun m!6819284 () Bool)

(assert (=> b!5924778 m!6819284))

(declare-fun m!6819286 () Bool)

(assert (=> b!5924778 m!6819286))

(check-sat (not b!5924783) (not b!5924780) (not b!5924790) (not b!5924784) (not b!5924791) (not b!5924787) (not b!5924792) (not b!5924778) (not setNonEmpty!40202) (not b!5924788) (not b!5924794) (not b!5924797) (not b!5924795) tp_is_empty!41199 (not b!5924793) (not b!5924798) (not b!5924782) (not b!5924785) (not start!602276) (not b!5924781) (not b!5924796))
(check-sat)
(get-model)

(declare-fun d!1857794 () Bool)

(declare-fun lambda!323107 () Int)

(declare-fun forall!15055 (List!64218 Int) Bool)

(assert (=> d!1857794 (= (inv!83179 (Context!10715 (Cons!64094 (regTwo!32458 r!7292) Nil!64094))) (forall!15055 (exprs!5857 (Context!10715 (Cons!64094 (regTwo!32458 r!7292) Nil!64094))) lambda!323107))))

(declare-fun bs!1402202 () Bool)

(assert (= bs!1402202 d!1857794))

(declare-fun m!6819288 () Bool)

(assert (=> bs!1402202 m!6819288))

(assert (=> b!5924798 d!1857794))

(declare-fun bs!1402203 () Bool)

(declare-fun d!1857796 () Bool)

(assert (= bs!1402203 (and d!1857796 d!1857794)))

(declare-fun lambda!323110 () Int)

(assert (=> bs!1402203 (= lambda!323110 lambda!323107)))

(declare-fun b!5924847 () Bool)

(declare-fun e!3626713 () Bool)

(declare-fun lt!2310203 () Regex!15973)

(declare-fun isEmptyLang!1409 (Regex!15973) Bool)

(assert (=> b!5924847 (= e!3626713 (isEmptyLang!1409 lt!2310203))))

(declare-fun b!5924848 () Bool)

(declare-fun e!3626709 () Bool)

(assert (=> b!5924848 (= e!3626713 e!3626709)))

(declare-fun c!1053003 () Bool)

(declare-fun tail!11570 (List!64218) List!64218)

(assert (=> b!5924848 (= c!1053003 (isEmpty!35953 (tail!11570 (unfocusZipperList!1394 zl!343))))))

(declare-fun b!5924849 () Bool)

(declare-fun e!3626708 () Regex!15973)

(assert (=> b!5924849 (= e!3626708 EmptyLang!15973)))

(declare-fun b!5924850 () Bool)

(declare-fun isUnion!839 (Regex!15973) Bool)

(assert (=> b!5924850 (= e!3626709 (isUnion!839 lt!2310203))))

(declare-fun b!5924851 () Bool)

(declare-fun e!3626711 () Bool)

(assert (=> b!5924851 (= e!3626711 (isEmpty!35953 (t!377611 (unfocusZipperList!1394 zl!343))))))

(declare-fun b!5924852 () Bool)

(declare-fun e!3626710 () Regex!15973)

(assert (=> b!5924852 (= e!3626710 (h!70542 (unfocusZipperList!1394 zl!343)))))

(declare-fun b!5924853 () Bool)

(assert (=> b!5924853 (= e!3626710 e!3626708)))

(declare-fun c!1053001 () Bool)

(assert (=> b!5924853 (= c!1053001 ((_ is Cons!64094) (unfocusZipperList!1394 zl!343)))))

(declare-fun e!3626712 () Bool)

(assert (=> d!1857796 e!3626712))

(declare-fun res!2483008 () Bool)

(assert (=> d!1857796 (=> (not res!2483008) (not e!3626712))))

(assert (=> d!1857796 (= res!2483008 (validRegex!7709 lt!2310203))))

(assert (=> d!1857796 (= lt!2310203 e!3626710)))

(declare-fun c!1053002 () Bool)

(assert (=> d!1857796 (= c!1053002 e!3626711)))

(declare-fun res!2483007 () Bool)

(assert (=> d!1857796 (=> (not res!2483007) (not e!3626711))))

(assert (=> d!1857796 (= res!2483007 ((_ is Cons!64094) (unfocusZipperList!1394 zl!343)))))

(assert (=> d!1857796 (forall!15055 (unfocusZipperList!1394 zl!343) lambda!323110)))

(assert (=> d!1857796 (= (generalisedUnion!1817 (unfocusZipperList!1394 zl!343)) lt!2310203)))

(declare-fun b!5924854 () Bool)

(declare-fun head!12485 (List!64218) Regex!15973)

(assert (=> b!5924854 (= e!3626709 (= lt!2310203 (head!12485 (unfocusZipperList!1394 zl!343))))))

(declare-fun b!5924855 () Bool)

(assert (=> b!5924855 (= e!3626712 e!3626713)))

(declare-fun c!1053000 () Bool)

(assert (=> b!5924855 (= c!1053000 (isEmpty!35953 (unfocusZipperList!1394 zl!343)))))

(declare-fun b!5924856 () Bool)

(assert (=> b!5924856 (= e!3626708 (Union!15973 (h!70542 (unfocusZipperList!1394 zl!343)) (generalisedUnion!1817 (t!377611 (unfocusZipperList!1394 zl!343)))))))

(assert (= (and d!1857796 res!2483007) b!5924851))

(assert (= (and d!1857796 c!1053002) b!5924852))

(assert (= (and d!1857796 (not c!1053002)) b!5924853))

(assert (= (and b!5924853 c!1053001) b!5924856))

(assert (= (and b!5924853 (not c!1053001)) b!5924849))

(assert (= (and d!1857796 res!2483008) b!5924855))

(assert (= (and b!5924855 c!1053000) b!5924847))

(assert (= (and b!5924855 (not c!1053000)) b!5924848))

(assert (= (and b!5924848 c!1053003) b!5924854))

(assert (= (and b!5924848 (not c!1053003)) b!5924850))

(assert (=> b!5924854 m!6819252))

(declare-fun m!6819290 () Bool)

(assert (=> b!5924854 m!6819290))

(assert (=> b!5924848 m!6819252))

(declare-fun m!6819292 () Bool)

(assert (=> b!5924848 m!6819292))

(assert (=> b!5924848 m!6819292))

(declare-fun m!6819294 () Bool)

(assert (=> b!5924848 m!6819294))

(assert (=> b!5924855 m!6819252))

(declare-fun m!6819296 () Bool)

(assert (=> b!5924855 m!6819296))

(declare-fun m!6819298 () Bool)

(assert (=> d!1857796 m!6819298))

(assert (=> d!1857796 m!6819252))

(declare-fun m!6819300 () Bool)

(assert (=> d!1857796 m!6819300))

(declare-fun m!6819302 () Bool)

(assert (=> b!5924851 m!6819302))

(declare-fun m!6819304 () Bool)

(assert (=> b!5924856 m!6819304))

(declare-fun m!6819306 () Bool)

(assert (=> b!5924847 m!6819306))

(declare-fun m!6819308 () Bool)

(assert (=> b!5924850 m!6819308))

(assert (=> b!5924790 d!1857796))

(declare-fun bs!1402204 () Bool)

(declare-fun d!1857800 () Bool)

(assert (= bs!1402204 (and d!1857800 d!1857794)))

(declare-fun lambda!323113 () Int)

(assert (=> bs!1402204 (= lambda!323113 lambda!323107)))

(declare-fun bs!1402205 () Bool)

(assert (= bs!1402205 (and d!1857800 d!1857796)))

(assert (=> bs!1402205 (= lambda!323113 lambda!323110)))

(declare-fun lt!2310206 () List!64218)

(assert (=> d!1857800 (forall!15055 lt!2310206 lambda!323113)))

(declare-fun e!3626716 () List!64218)

(assert (=> d!1857800 (= lt!2310206 e!3626716)))

(declare-fun c!1053006 () Bool)

(assert (=> d!1857800 (= c!1053006 ((_ is Cons!64096) zl!343))))

(assert (=> d!1857800 (= (unfocusZipperList!1394 zl!343) lt!2310206)))

(declare-fun b!5924861 () Bool)

(assert (=> b!5924861 (= e!3626716 (Cons!64094 (generalisedConcat!1570 (exprs!5857 (h!70544 zl!343))) (unfocusZipperList!1394 (t!377613 zl!343))))))

(declare-fun b!5924862 () Bool)

(assert (=> b!5924862 (= e!3626716 Nil!64094)))

(assert (= (and d!1857800 c!1053006) b!5924861))

(assert (= (and d!1857800 (not c!1053006)) b!5924862))

(declare-fun m!6819310 () Bool)

(assert (=> d!1857800 m!6819310))

(assert (=> b!5924861 m!6819238))

(declare-fun m!6819312 () Bool)

(assert (=> b!5924861 m!6819312))

(assert (=> b!5924790 d!1857800))

(declare-fun bm!469997 () Bool)

(declare-fun call!470002 () (InoxSet Context!10714))

(declare-fun call!470006 () (InoxSet Context!10714))

(assert (=> bm!469997 (= call!470002 call!470006)))

(declare-fun b!5924911 () Bool)

(declare-fun e!3626746 () (InoxSet Context!10714))

(assert (=> b!5924911 (= e!3626746 (store ((as const (Array Context!10714 Bool)) false) (Context!10715 Nil!64094) true))))

(declare-fun b!5924912 () Bool)

(declare-fun e!3626749 () (InoxSet Context!10714))

(declare-fun call!470007 () (InoxSet Context!10714))

(assert (=> b!5924912 (= e!3626749 call!470007)))

(declare-fun b!5924914 () Bool)

(declare-fun e!3626747 () (InoxSet Context!10714))

(declare-fun call!470004 () (InoxSet Context!10714))

(assert (=> b!5924914 (= e!3626747 ((_ map or) call!470006 call!470004))))

(declare-fun b!5924915 () Bool)

(declare-fun e!3626744 () (InoxSet Context!10714))

(assert (=> b!5924915 (= e!3626744 call!470007)))

(declare-fun b!5924916 () Bool)

(declare-fun e!3626745 () (InoxSet Context!10714))

(assert (=> b!5924916 (= e!3626745 e!3626749)))

(declare-fun c!1053032 () Bool)

(assert (=> b!5924916 (= c!1053032 ((_ is Concat!24818) r!7292))))

(declare-fun b!5924917 () Bool)

(declare-fun c!1053030 () Bool)

(assert (=> b!5924917 (= c!1053030 ((_ is Star!15973) r!7292))))

(assert (=> b!5924917 (= e!3626749 e!3626744)))

(declare-fun call!470005 () List!64218)

(declare-fun bm!469998 () Bool)

(declare-fun c!1053031 () Bool)

(assert (=> bm!469998 (= call!470004 (derivationStepZipperDown!1223 (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292)) (ite c!1053031 (Context!10715 Nil!64094) (Context!10715 call!470005)) (h!70543 s!2326)))))

(declare-fun c!1053028 () Bool)

(declare-fun call!470003 () List!64218)

(declare-fun bm!469999 () Bool)

(assert (=> bm!469999 (= call!470006 (derivationStepZipperDown!1223 (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292)))) (ite (or c!1053031 c!1053028) (Context!10715 Nil!64094) (Context!10715 call!470003)) (h!70543 s!2326)))))

(declare-fun b!5924918 () Bool)

(declare-fun e!3626748 () Bool)

(declare-fun nullable!5968 (Regex!15973) Bool)

(assert (=> b!5924918 (= e!3626748 (nullable!5968 (regOne!32458 r!7292)))))

(declare-fun bm!470000 () Bool)

(assert (=> bm!470000 (= call!470007 call!470002)))

(declare-fun b!5924919 () Bool)

(assert (=> b!5924919 (= e!3626745 ((_ map or) call!470004 call!470002))))

(declare-fun bm!470001 () Bool)

(assert (=> bm!470001 (= call!470003 call!470005)))

(declare-fun b!5924920 () Bool)

(assert (=> b!5924920 (= c!1053028 e!3626748)))

(declare-fun res!2483015 () Bool)

(assert (=> b!5924920 (=> (not res!2483015) (not e!3626748))))

(assert (=> b!5924920 (= res!2483015 ((_ is Concat!24818) r!7292))))

(assert (=> b!5924920 (= e!3626747 e!3626745)))

(declare-fun d!1857802 () Bool)

(declare-fun c!1053029 () Bool)

(assert (=> d!1857802 (= c!1053029 (and ((_ is ElementMatch!15973) r!7292) (= (c!1052981 r!7292) (h!70543 s!2326))))))

(assert (=> d!1857802 (= (derivationStepZipperDown!1223 r!7292 (Context!10715 Nil!64094) (h!70543 s!2326)) e!3626746)))

(declare-fun b!5924913 () Bool)

(assert (=> b!5924913 (= e!3626746 e!3626747)))

(assert (=> b!5924913 (= c!1053031 ((_ is Union!15973) r!7292))))

(declare-fun bm!470002 () Bool)

(declare-fun $colon$colon!1860 (List!64218 Regex!15973) List!64218)

(assert (=> bm!470002 (= call!470005 ($colon$colon!1860 (exprs!5857 (Context!10715 Nil!64094)) (ite (or c!1053028 c!1053032) (regTwo!32458 r!7292) r!7292)))))

(declare-fun b!5924921 () Bool)

(assert (=> b!5924921 (= e!3626744 ((as const (Array Context!10714 Bool)) false))))

(assert (= (and d!1857802 c!1053029) b!5924911))

(assert (= (and d!1857802 (not c!1053029)) b!5924913))

(assert (= (and b!5924913 c!1053031) b!5924914))

(assert (= (and b!5924913 (not c!1053031)) b!5924920))

(assert (= (and b!5924920 res!2483015) b!5924918))

(assert (= (and b!5924920 c!1053028) b!5924919))

(assert (= (and b!5924920 (not c!1053028)) b!5924916))

(assert (= (and b!5924916 c!1053032) b!5924912))

(assert (= (and b!5924916 (not c!1053032)) b!5924917))

(assert (= (and b!5924917 c!1053030) b!5924915))

(assert (= (and b!5924917 (not c!1053030)) b!5924921))

(assert (= (or b!5924912 b!5924915) bm!470001))

(assert (= (or b!5924912 b!5924915) bm!470000))

(assert (= (or b!5924919 bm!470001) bm!470002))

(assert (= (or b!5924919 bm!470000) bm!469997))

(assert (= (or b!5924914 b!5924919) bm!469998))

(assert (= (or b!5924914 bm!469997) bm!469999))

(declare-fun m!6819330 () Bool)

(assert (=> bm!470002 m!6819330))

(declare-fun m!6819332 () Bool)

(assert (=> bm!469998 m!6819332))

(declare-fun m!6819334 () Bool)

(assert (=> bm!469999 m!6819334))

(declare-fun m!6819336 () Bool)

(assert (=> b!5924911 m!6819336))

(declare-fun m!6819338 () Bool)

(assert (=> b!5924918 m!6819338))

(assert (=> b!5924778 d!1857802))

(declare-fun b!5924950 () Bool)

(declare-fun e!3626766 () (InoxSet Context!10714))

(declare-fun call!470010 () (InoxSet Context!10714))

(assert (=> b!5924950 (= e!3626766 call!470010)))

(declare-fun e!3626768 () (InoxSet Context!10714))

(declare-fun b!5924951 () Bool)

(assert (=> b!5924951 (= e!3626768 ((_ map or) call!470010 (derivationStepZipperUp!1149 (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (h!70543 s!2326))))))

(declare-fun b!5924952 () Bool)

(assert (=> b!5924952 (= e!3626766 ((as const (Array Context!10714 Bool)) false))))

(declare-fun b!5924953 () Bool)

(assert (=> b!5924953 (= e!3626768 e!3626766)))

(declare-fun c!1053042 () Bool)

(assert (=> b!5924953 (= c!1053042 ((_ is Cons!64094) (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094)))))))

(declare-fun d!1857808 () Bool)

(declare-fun c!1053041 () Bool)

(declare-fun e!3626767 () Bool)

(assert (=> d!1857808 (= c!1053041 e!3626767)))

(declare-fun res!2483028 () Bool)

(assert (=> d!1857808 (=> (not res!2483028) (not e!3626767))))

(assert (=> d!1857808 (= res!2483028 ((_ is Cons!64094) (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094)))))))

(assert (=> d!1857808 (= (derivationStepZipperUp!1149 (Context!10715 (Cons!64094 r!7292 Nil!64094)) (h!70543 s!2326)) e!3626768)))

(declare-fun bm!470005 () Bool)

(assert (=> bm!470005 (= call!470010 (derivationStepZipperDown!1223 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094)))) (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (h!70543 s!2326)))))

(declare-fun b!5924954 () Bool)

(assert (=> b!5924954 (= e!3626767 (nullable!5968 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))))))

(assert (= (and d!1857808 res!2483028) b!5924954))

(assert (= (and d!1857808 c!1053041) b!5924951))

(assert (= (and d!1857808 (not c!1053041)) b!5924953))

(assert (= (and b!5924953 c!1053042) b!5924950))

(assert (= (and b!5924953 (not c!1053042)) b!5924952))

(assert (= (or b!5924951 b!5924950) bm!470005))

(declare-fun m!6819340 () Bool)

(assert (=> b!5924951 m!6819340))

(declare-fun m!6819342 () Bool)

(assert (=> bm!470005 m!6819342))

(declare-fun m!6819344 () Bool)

(assert (=> b!5924954 m!6819344))

(assert (=> b!5924778 d!1857808))

(declare-fun b!5924986 () Bool)

(declare-fun e!3626787 () Option!15864)

(declare-fun e!3626790 () Option!15864)

(assert (=> b!5924986 (= e!3626787 e!3626790)))

(declare-fun c!1053050 () Bool)

(assert (=> b!5924986 (= c!1053050 ((_ is Nil!64095) s!2326))))

(declare-fun b!5924987 () Bool)

(declare-fun res!2483050 () Bool)

(declare-fun e!3626789 () Bool)

(assert (=> b!5924987 (=> (not res!2483050) (not e!3626789))))

(declare-fun lt!2310226 () Option!15864)

(declare-fun get!22072 (Option!15864) tuple2!65904)

(assert (=> b!5924987 (= res!2483050 (matchR!8156 (regOne!32458 r!7292) (_1!36255 (get!22072 lt!2310226))))))

(declare-fun b!5924988 () Bool)

(assert (=> b!5924988 (= e!3626790 None!15863)))

(declare-fun b!5924989 () Bool)

(declare-fun ++!14070 (List!64219 List!64219) List!64219)

(assert (=> b!5924989 (= e!3626789 (= (++!14070 (_1!36255 (get!22072 lt!2310226)) (_2!36255 (get!22072 lt!2310226))) s!2326))))

(declare-fun b!5924990 () Bool)

(declare-fun e!3626788 () Bool)

(assert (=> b!5924990 (= e!3626788 (matchR!8156 (regTwo!32458 r!7292) s!2326))))

(declare-fun b!5924991 () Bool)

(declare-fun res!2483051 () Bool)

(assert (=> b!5924991 (=> (not res!2483051) (not e!3626789))))

(assert (=> b!5924991 (= res!2483051 (matchR!8156 (regTwo!32458 r!7292) (_2!36255 (get!22072 lt!2310226))))))

(declare-fun b!5924992 () Bool)

(declare-fun e!3626786 () Bool)

(assert (=> b!5924992 (= e!3626786 (not (isDefined!12567 lt!2310226)))))

(declare-fun d!1857810 () Bool)

(assert (=> d!1857810 e!3626786))

(declare-fun res!2483048 () Bool)

(assert (=> d!1857810 (=> res!2483048 e!3626786)))

(assert (=> d!1857810 (= res!2483048 e!3626789)))

(declare-fun res!2483049 () Bool)

(assert (=> d!1857810 (=> (not res!2483049) (not e!3626789))))

(assert (=> d!1857810 (= res!2483049 (isDefined!12567 lt!2310226))))

(assert (=> d!1857810 (= lt!2310226 e!3626787)))

(declare-fun c!1053049 () Bool)

(assert (=> d!1857810 (= c!1053049 e!3626788)))

(declare-fun res!2483052 () Bool)

(assert (=> d!1857810 (=> (not res!2483052) (not e!3626788))))

(assert (=> d!1857810 (= res!2483052 (matchR!8156 (regOne!32458 r!7292) Nil!64095))))

(assert (=> d!1857810 (validRegex!7709 (regOne!32458 r!7292))))

(assert (=> d!1857810 (= (findConcatSeparation!2278 (regOne!32458 r!7292) (regTwo!32458 r!7292) Nil!64095 s!2326 s!2326) lt!2310226)))

(declare-fun b!5924993 () Bool)

(assert (=> b!5924993 (= e!3626787 (Some!15863 (tuple2!65905 Nil!64095 s!2326)))))

(declare-fun b!5924994 () Bool)

(declare-fun lt!2310225 () Unit!157217)

(declare-fun lt!2310227 () Unit!157217)

(assert (=> b!5924994 (= lt!2310225 lt!2310227)))

(assert (=> b!5924994 (= (++!14070 (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095)) (t!377612 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2165 (List!64219 C!32216 List!64219 List!64219) Unit!157217)

(assert (=> b!5924994 (= lt!2310227 (lemmaMoveElementToOtherListKeepsConcatEq!2165 Nil!64095 (h!70543 s!2326) (t!377612 s!2326) s!2326))))

(assert (=> b!5924994 (= e!3626790 (findConcatSeparation!2278 (regOne!32458 r!7292) (regTwo!32458 r!7292) (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095)) (t!377612 s!2326) s!2326))))

(assert (= (and d!1857810 res!2483052) b!5924990))

(assert (= (and d!1857810 c!1053049) b!5924993))

(assert (= (and d!1857810 (not c!1053049)) b!5924986))

(assert (= (and b!5924986 c!1053050) b!5924988))

(assert (= (and b!5924986 (not c!1053050)) b!5924994))

(assert (= (and d!1857810 res!2483049) b!5924987))

(assert (= (and b!5924987 res!2483050) b!5924991))

(assert (= (and b!5924991 res!2483051) b!5924989))

(assert (= (and d!1857810 (not res!2483048)) b!5924992))

(declare-fun m!6819378 () Bool)

(assert (=> b!5924992 m!6819378))

(declare-fun m!6819380 () Bool)

(assert (=> b!5924994 m!6819380))

(assert (=> b!5924994 m!6819380))

(declare-fun m!6819382 () Bool)

(assert (=> b!5924994 m!6819382))

(declare-fun m!6819384 () Bool)

(assert (=> b!5924994 m!6819384))

(assert (=> b!5924994 m!6819380))

(declare-fun m!6819386 () Bool)

(assert (=> b!5924994 m!6819386))

(declare-fun m!6819388 () Bool)

(assert (=> b!5924991 m!6819388))

(declare-fun m!6819390 () Bool)

(assert (=> b!5924991 m!6819390))

(assert (=> b!5924987 m!6819388))

(declare-fun m!6819392 () Bool)

(assert (=> b!5924987 m!6819392))

(assert (=> b!5924989 m!6819388))

(declare-fun m!6819394 () Bool)

(assert (=> b!5924989 m!6819394))

(assert (=> d!1857810 m!6819378))

(declare-fun m!6819396 () Bool)

(assert (=> d!1857810 m!6819396))

(declare-fun m!6819398 () Bool)

(assert (=> d!1857810 m!6819398))

(declare-fun m!6819400 () Bool)

(assert (=> b!5924990 m!6819400))

(assert (=> b!5924782 d!1857810))

(declare-fun d!1857820 () Bool)

(declare-fun choose!44663 (Int) Bool)

(assert (=> d!1857820 (= (Exists!3043 lambda!323102) (choose!44663 lambda!323102))))

(declare-fun bs!1402210 () Bool)

(assert (= bs!1402210 d!1857820))

(declare-fun m!6819402 () Bool)

(assert (=> bs!1402210 m!6819402))

(assert (=> b!5924782 d!1857820))

(declare-fun d!1857822 () Bool)

(assert (=> d!1857822 (= (Exists!3043 lambda!323103) (choose!44663 lambda!323103))))

(declare-fun bs!1402211 () Bool)

(assert (= bs!1402211 d!1857822))

(declare-fun m!6819404 () Bool)

(assert (=> bs!1402211 m!6819404))

(assert (=> b!5924782 d!1857822))

(declare-fun bs!1402214 () Bool)

(declare-fun d!1857824 () Bool)

(assert (= bs!1402214 (and d!1857824 b!5924782)))

(declare-fun lambda!323124 () Int)

(assert (=> bs!1402214 (= lambda!323124 lambda!323102)))

(assert (=> bs!1402214 (not (= lambda!323124 lambda!323103))))

(assert (=> d!1857824 true))

(assert (=> d!1857824 true))

(assert (=> d!1857824 true))

(assert (=> d!1857824 (= (isDefined!12567 (findConcatSeparation!2278 (regOne!32458 r!7292) (regTwo!32458 r!7292) Nil!64095 s!2326 s!2326)) (Exists!3043 lambda!323124))))

(declare-fun lt!2310233 () Unit!157217)

(declare-fun choose!44665 (Regex!15973 Regex!15973 List!64219) Unit!157217)

(assert (=> d!1857824 (= lt!2310233 (choose!44665 (regOne!32458 r!7292) (regTwo!32458 r!7292) s!2326))))

(assert (=> d!1857824 (validRegex!7709 (regOne!32458 r!7292))))

(assert (=> d!1857824 (= (lemmaFindConcatSeparationEquivalentToExists!2042 (regOne!32458 r!7292) (regTwo!32458 r!7292) s!2326) lt!2310233)))

(declare-fun bs!1402215 () Bool)

(assert (= bs!1402215 d!1857824))

(assert (=> bs!1402215 m!6819398))

(assert (=> bs!1402215 m!6819242))

(declare-fun m!6819406 () Bool)

(assert (=> bs!1402215 m!6819406))

(declare-fun m!6819408 () Bool)

(assert (=> bs!1402215 m!6819408))

(assert (=> bs!1402215 m!6819242))

(assert (=> bs!1402215 m!6819244))

(assert (=> b!5924782 d!1857824))

(declare-fun bs!1402219 () Bool)

(declare-fun d!1857826 () Bool)

(assert (= bs!1402219 (and d!1857826 b!5924782)))

(declare-fun lambda!323135 () Int)

(assert (=> bs!1402219 (= lambda!323135 lambda!323102)))

(assert (=> bs!1402219 (not (= lambda!323135 lambda!323103))))

(declare-fun bs!1402220 () Bool)

(assert (= bs!1402220 (and d!1857826 d!1857824)))

(assert (=> bs!1402220 (= lambda!323135 lambda!323124)))

(assert (=> d!1857826 true))

(assert (=> d!1857826 true))

(assert (=> d!1857826 true))

(declare-fun lambda!323136 () Int)

(assert (=> bs!1402219 (not (= lambda!323136 lambda!323102))))

(assert (=> bs!1402219 (= lambda!323136 lambda!323103)))

(assert (=> bs!1402220 (not (= lambda!323136 lambda!323124))))

(declare-fun bs!1402221 () Bool)

(assert (= bs!1402221 d!1857826))

(assert (=> bs!1402221 (not (= lambda!323136 lambda!323135))))

(assert (=> d!1857826 true))

(assert (=> d!1857826 true))

(assert (=> d!1857826 true))

(assert (=> d!1857826 (= (Exists!3043 lambda!323135) (Exists!3043 lambda!323136))))

(declare-fun lt!2310239 () Unit!157217)

(declare-fun choose!44666 (Regex!15973 Regex!15973 List!64219) Unit!157217)

(assert (=> d!1857826 (= lt!2310239 (choose!44666 (regOne!32458 r!7292) (regTwo!32458 r!7292) s!2326))))

(assert (=> d!1857826 (validRegex!7709 (regOne!32458 r!7292))))

(assert (=> d!1857826 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1580 (regOne!32458 r!7292) (regTwo!32458 r!7292) s!2326) lt!2310239)))

(declare-fun m!6819426 () Bool)

(assert (=> bs!1402221 m!6819426))

(declare-fun m!6819428 () Bool)

(assert (=> bs!1402221 m!6819428))

(declare-fun m!6819430 () Bool)

(assert (=> bs!1402221 m!6819430))

(assert (=> bs!1402221 m!6819398))

(assert (=> b!5924782 d!1857826))

(declare-fun d!1857838 () Bool)

(declare-fun isEmpty!35956 (Option!15864) Bool)

(assert (=> d!1857838 (= (isDefined!12567 (findConcatSeparation!2278 (regOne!32458 r!7292) (regTwo!32458 r!7292) Nil!64095 s!2326 s!2326)) (not (isEmpty!35956 (findConcatSeparation!2278 (regOne!32458 r!7292) (regTwo!32458 r!7292) Nil!64095 s!2326 s!2326))))))

(declare-fun bs!1402222 () Bool)

(assert (= bs!1402222 d!1857838))

(assert (=> bs!1402222 m!6819242))

(declare-fun m!6819432 () Bool)

(assert (=> bs!1402222 m!6819432))

(assert (=> b!5924782 d!1857838))

(declare-fun bs!1402223 () Bool)

(declare-fun d!1857840 () Bool)

(assert (= bs!1402223 (and d!1857840 d!1857794)))

(declare-fun lambda!323137 () Int)

(assert (=> bs!1402223 (= lambda!323137 lambda!323107)))

(declare-fun bs!1402224 () Bool)

(assert (= bs!1402224 (and d!1857840 d!1857796)))

(assert (=> bs!1402224 (= lambda!323137 lambda!323110)))

(declare-fun bs!1402225 () Bool)

(assert (= bs!1402225 (and d!1857840 d!1857800)))

(assert (=> bs!1402225 (= lambda!323137 lambda!323113)))

(assert (=> d!1857840 (= (inv!83179 setElem!40202) (forall!15055 (exprs!5857 setElem!40202) lambda!323137))))

(declare-fun bs!1402226 () Bool)

(assert (= bs!1402226 d!1857840))

(declare-fun m!6819434 () Bool)

(assert (=> bs!1402226 m!6819434))

(assert (=> setNonEmpty!40202 d!1857840))

(declare-fun bs!1402233 () Bool)

(declare-fun b!5925126 () Bool)

(assert (= bs!1402233 (and b!5925126 d!1857826)))

(declare-fun lambda!323149 () Int)

(assert (=> bs!1402233 (not (= lambda!323149 lambda!323135))))

(declare-fun bs!1402234 () Bool)

(assert (= bs!1402234 (and b!5925126 d!1857824)))

(assert (=> bs!1402234 (not (= lambda!323149 lambda!323124))))

(assert (=> bs!1402233 (not (= lambda!323149 lambda!323136))))

(declare-fun bs!1402235 () Bool)

(assert (= bs!1402235 (and b!5925126 b!5924782)))

(assert (=> bs!1402235 (not (= lambda!323149 lambda!323102))))

(assert (=> bs!1402235 (not (= lambda!323149 lambda!323103))))

(assert (=> b!5925126 true))

(assert (=> b!5925126 true))

(declare-fun bs!1402241 () Bool)

(declare-fun b!5925119 () Bool)

(assert (= bs!1402241 (and b!5925119 d!1857824)))

(declare-fun lambda!323151 () Int)

(assert (=> bs!1402241 (not (= lambda!323151 lambda!323124))))

(declare-fun bs!1402242 () Bool)

(assert (= bs!1402242 (and b!5925119 d!1857826)))

(assert (=> bs!1402242 (= lambda!323151 lambda!323136)))

(declare-fun bs!1402243 () Bool)

(assert (= bs!1402243 (and b!5925119 b!5924782)))

(assert (=> bs!1402243 (not (= lambda!323151 lambda!323102))))

(assert (=> bs!1402243 (= lambda!323151 lambda!323103)))

(declare-fun bs!1402244 () Bool)

(assert (= bs!1402244 (and b!5925119 b!5925126)))

(assert (=> bs!1402244 (not (= lambda!323151 lambda!323149))))

(assert (=> bs!1402242 (not (= lambda!323151 lambda!323135))))

(assert (=> b!5925119 true))

(assert (=> b!5925119 true))

(declare-fun b!5925116 () Bool)

(declare-fun e!3626865 () Bool)

(declare-fun e!3626864 () Bool)

(assert (=> b!5925116 (= e!3626865 e!3626864)))

(declare-fun res!2483106 () Bool)

(assert (=> b!5925116 (= res!2483106 (matchRSpec!3074 (regOne!32459 r!7292) s!2326))))

(assert (=> b!5925116 (=> res!2483106 e!3626864)))

(declare-fun b!5925117 () Bool)

(declare-fun e!3626867 () Bool)

(declare-fun call!470015 () Bool)

(assert (=> b!5925117 (= e!3626867 call!470015)))

(declare-fun b!5925118 () Bool)

(declare-fun e!3626861 () Bool)

(assert (=> b!5925118 (= e!3626867 e!3626861)))

(declare-fun res!2483104 () Bool)

(assert (=> b!5925118 (= res!2483104 (not ((_ is EmptyLang!15973) r!7292)))))

(assert (=> b!5925118 (=> (not res!2483104) (not e!3626861))))

(declare-fun call!470016 () Bool)

(declare-fun bm!470010 () Bool)

(declare-fun c!1053087 () Bool)

(assert (=> bm!470010 (= call!470016 (Exists!3043 (ite c!1053087 lambda!323149 lambda!323151)))))

(declare-fun e!3626863 () Bool)

(assert (=> b!5925119 (= e!3626863 call!470016)))

(declare-fun b!5925120 () Bool)

(declare-fun c!1053086 () Bool)

(assert (=> b!5925120 (= c!1053086 ((_ is Union!15973) r!7292))))

(declare-fun e!3626862 () Bool)

(assert (=> b!5925120 (= e!3626862 e!3626865)))

(declare-fun bm!470011 () Bool)

(declare-fun isEmpty!35957 (List!64219) Bool)

(assert (=> bm!470011 (= call!470015 (isEmpty!35957 s!2326))))

(declare-fun b!5925122 () Bool)

(assert (=> b!5925122 (= e!3626862 (= s!2326 (Cons!64095 (c!1052981 r!7292) Nil!64095)))))

(declare-fun b!5925123 () Bool)

(declare-fun c!1053089 () Bool)

(assert (=> b!5925123 (= c!1053089 ((_ is ElementMatch!15973) r!7292))))

(assert (=> b!5925123 (= e!3626861 e!3626862)))

(declare-fun b!5925121 () Bool)

(assert (=> b!5925121 (= e!3626864 (matchRSpec!3074 (regTwo!32459 r!7292) s!2326))))

(declare-fun d!1857842 () Bool)

(declare-fun c!1053088 () Bool)

(assert (=> d!1857842 (= c!1053088 ((_ is EmptyExpr!15973) r!7292))))

(assert (=> d!1857842 (= (matchRSpec!3074 r!7292 s!2326) e!3626867)))

(declare-fun b!5925124 () Bool)

(declare-fun res!2483105 () Bool)

(declare-fun e!3626866 () Bool)

(assert (=> b!5925124 (=> res!2483105 e!3626866)))

(assert (=> b!5925124 (= res!2483105 call!470015)))

(assert (=> b!5925124 (= e!3626863 e!3626866)))

(declare-fun b!5925125 () Bool)

(assert (=> b!5925125 (= e!3626865 e!3626863)))

(assert (=> b!5925125 (= c!1053087 ((_ is Star!15973) r!7292))))

(assert (=> b!5925126 (= e!3626866 call!470016)))

(assert (= (and d!1857842 c!1053088) b!5925117))

(assert (= (and d!1857842 (not c!1053088)) b!5925118))

(assert (= (and b!5925118 res!2483104) b!5925123))

(assert (= (and b!5925123 c!1053089) b!5925122))

(assert (= (and b!5925123 (not c!1053089)) b!5925120))

(assert (= (and b!5925120 c!1053086) b!5925116))

(assert (= (and b!5925120 (not c!1053086)) b!5925125))

(assert (= (and b!5925116 (not res!2483106)) b!5925121))

(assert (= (and b!5925125 c!1053087) b!5925124))

(assert (= (and b!5925125 (not c!1053087)) b!5925119))

(assert (= (and b!5925124 (not res!2483105)) b!5925126))

(assert (= (or b!5925126 b!5925119) bm!470010))

(assert (= (or b!5925117 b!5925124) bm!470011))

(declare-fun m!6819480 () Bool)

(assert (=> b!5925116 m!6819480))

(declare-fun m!6819482 () Bool)

(assert (=> bm!470010 m!6819482))

(declare-fun m!6819484 () Bool)

(assert (=> bm!470011 m!6819484))

(declare-fun m!6819486 () Bool)

(assert (=> b!5925121 m!6819486))

(assert (=> b!5924780 d!1857842))

(declare-fun b!5925180 () Bool)

(declare-fun e!3626899 () Bool)

(assert (=> b!5925180 (= e!3626899 (nullable!5968 r!7292))))

(declare-fun b!5925181 () Bool)

(declare-fun res!2483137 () Bool)

(declare-fun e!3626905 () Bool)

(assert (=> b!5925181 (=> (not res!2483137) (not e!3626905))))

(declare-fun call!470026 () Bool)

(assert (=> b!5925181 (= res!2483137 (not call!470026))))

(declare-fun b!5925182 () Bool)

(declare-fun e!3626901 () Bool)

(declare-fun e!3626904 () Bool)

(assert (=> b!5925182 (= e!3626901 e!3626904)))

(declare-fun res!2483140 () Bool)

(assert (=> b!5925182 (=> res!2483140 e!3626904)))

(assert (=> b!5925182 (= res!2483140 call!470026)))

(declare-fun b!5925183 () Bool)

(declare-fun res!2483134 () Bool)

(declare-fun e!3626903 () Bool)

(assert (=> b!5925183 (=> res!2483134 e!3626903)))

(assert (=> b!5925183 (= res!2483134 e!3626905)))

(declare-fun res!2483141 () Bool)

(assert (=> b!5925183 (=> (not res!2483141) (not e!3626905))))

(declare-fun lt!2310257 () Bool)

(assert (=> b!5925183 (= res!2483141 lt!2310257)))

(declare-fun b!5925184 () Bool)

(declare-fun head!12487 (List!64219) C!32216)

(assert (=> b!5925184 (= e!3626905 (= (head!12487 s!2326) (c!1052981 r!7292)))))

(declare-fun b!5925185 () Bool)

(assert (=> b!5925185 (= e!3626904 (not (= (head!12487 s!2326) (c!1052981 r!7292))))))

(declare-fun b!5925186 () Bool)

(declare-fun res!2483135 () Bool)

(assert (=> b!5925186 (=> res!2483135 e!3626904)))

(declare-fun tail!11572 (List!64219) List!64219)

(assert (=> b!5925186 (= res!2483135 (not (isEmpty!35957 (tail!11572 s!2326))))))

(declare-fun d!1857854 () Bool)

(declare-fun e!3626902 () Bool)

(assert (=> d!1857854 e!3626902))

(declare-fun c!1053104 () Bool)

(assert (=> d!1857854 (= c!1053104 ((_ is EmptyExpr!15973) r!7292))))

(assert (=> d!1857854 (= lt!2310257 e!3626899)))

(declare-fun c!1053106 () Bool)

(assert (=> d!1857854 (= c!1053106 (isEmpty!35957 s!2326))))

(assert (=> d!1857854 (validRegex!7709 r!7292)))

(assert (=> d!1857854 (= (matchR!8156 r!7292 s!2326) lt!2310257)))

(declare-fun b!5925187 () Bool)

(declare-fun res!2483138 () Bool)

(assert (=> b!5925187 (=> res!2483138 e!3626903)))

(assert (=> b!5925187 (= res!2483138 (not ((_ is ElementMatch!15973) r!7292)))))

(declare-fun e!3626900 () Bool)

(assert (=> b!5925187 (= e!3626900 e!3626903)))

(declare-fun b!5925188 () Bool)

(assert (=> b!5925188 (= e!3626900 (not lt!2310257))))

(declare-fun b!5925189 () Bool)

(assert (=> b!5925189 (= e!3626903 e!3626901)))

(declare-fun res!2483139 () Bool)

(assert (=> b!5925189 (=> (not res!2483139) (not e!3626901))))

(assert (=> b!5925189 (= res!2483139 (not lt!2310257))))

(declare-fun b!5925190 () Bool)

(assert (=> b!5925190 (= e!3626902 e!3626900)))

(declare-fun c!1053105 () Bool)

(assert (=> b!5925190 (= c!1053105 ((_ is EmptyLang!15973) r!7292))))

(declare-fun b!5925191 () Bool)

(declare-fun derivativeStep!4703 (Regex!15973 C!32216) Regex!15973)

(assert (=> b!5925191 (= e!3626899 (matchR!8156 (derivativeStep!4703 r!7292 (head!12487 s!2326)) (tail!11572 s!2326)))))

(declare-fun b!5925192 () Bool)

(declare-fun res!2483136 () Bool)

(assert (=> b!5925192 (=> (not res!2483136) (not e!3626905))))

(assert (=> b!5925192 (= res!2483136 (isEmpty!35957 (tail!11572 s!2326)))))

(declare-fun b!5925193 () Bool)

(assert (=> b!5925193 (= e!3626902 (= lt!2310257 call!470026))))

(declare-fun bm!470021 () Bool)

(assert (=> bm!470021 (= call!470026 (isEmpty!35957 s!2326))))

(assert (= (and d!1857854 c!1053106) b!5925180))

(assert (= (and d!1857854 (not c!1053106)) b!5925191))

(assert (= (and d!1857854 c!1053104) b!5925193))

(assert (= (and d!1857854 (not c!1053104)) b!5925190))

(assert (= (and b!5925190 c!1053105) b!5925188))

(assert (= (and b!5925190 (not c!1053105)) b!5925187))

(assert (= (and b!5925187 (not res!2483138)) b!5925183))

(assert (= (and b!5925183 res!2483141) b!5925181))

(assert (= (and b!5925181 res!2483137) b!5925192))

(assert (= (and b!5925192 res!2483136) b!5925184))

(assert (= (and b!5925183 (not res!2483134)) b!5925189))

(assert (= (and b!5925189 res!2483139) b!5925182))

(assert (= (and b!5925182 (not res!2483140)) b!5925186))

(assert (= (and b!5925186 (not res!2483135)) b!5925185))

(assert (= (or b!5925193 b!5925181 b!5925182) bm!470021))

(declare-fun m!6819506 () Bool)

(assert (=> b!5925192 m!6819506))

(assert (=> b!5925192 m!6819506))

(declare-fun m!6819508 () Bool)

(assert (=> b!5925192 m!6819508))

(declare-fun m!6819510 () Bool)

(assert (=> b!5925180 m!6819510))

(assert (=> bm!470021 m!6819484))

(assert (=> d!1857854 m!6819484))

(assert (=> d!1857854 m!6819270))

(declare-fun m!6819512 () Bool)

(assert (=> b!5925184 m!6819512))

(assert (=> b!5925185 m!6819512))

(assert (=> b!5925186 m!6819506))

(assert (=> b!5925186 m!6819506))

(assert (=> b!5925186 m!6819508))

(assert (=> b!5925191 m!6819512))

(assert (=> b!5925191 m!6819512))

(declare-fun m!6819514 () Bool)

(assert (=> b!5925191 m!6819514))

(assert (=> b!5925191 m!6819506))

(assert (=> b!5925191 m!6819514))

(assert (=> b!5925191 m!6819506))

(declare-fun m!6819516 () Bool)

(assert (=> b!5925191 m!6819516))

(assert (=> b!5924780 d!1857854))

(declare-fun d!1857866 () Bool)

(assert (=> d!1857866 (= (matchR!8156 r!7292 s!2326) (matchRSpec!3074 r!7292 s!2326))))

(declare-fun lt!2310260 () Unit!157217)

(declare-fun choose!44668 (Regex!15973 List!64219) Unit!157217)

(assert (=> d!1857866 (= lt!2310260 (choose!44668 r!7292 s!2326))))

(assert (=> d!1857866 (validRegex!7709 r!7292)))

(assert (=> d!1857866 (= (mainMatchTheorem!3074 r!7292 s!2326) lt!2310260)))

(declare-fun bs!1402256 () Bool)

(assert (= bs!1402256 d!1857866))

(assert (=> bs!1402256 m!6819274))

(assert (=> bs!1402256 m!6819272))

(declare-fun m!6819526 () Bool)

(assert (=> bs!1402256 m!6819526))

(assert (=> bs!1402256 m!6819270))

(assert (=> b!5924780 d!1857866))

(declare-fun bs!1402257 () Bool)

(declare-fun d!1857872 () Bool)

(assert (= bs!1402257 (and d!1857872 d!1857794)))

(declare-fun lambda!323162 () Int)

(assert (=> bs!1402257 (= lambda!323162 lambda!323107)))

(declare-fun bs!1402258 () Bool)

(assert (= bs!1402258 (and d!1857872 d!1857796)))

(assert (=> bs!1402258 (= lambda!323162 lambda!323110)))

(declare-fun bs!1402259 () Bool)

(assert (= bs!1402259 (and d!1857872 d!1857800)))

(assert (=> bs!1402259 (= lambda!323162 lambda!323113)))

(declare-fun bs!1402260 () Bool)

(assert (= bs!1402260 (and d!1857872 d!1857840)))

(assert (=> bs!1402260 (= lambda!323162 lambda!323137)))

(declare-fun b!5925255 () Bool)

(declare-fun e!3626948 () Bool)

(declare-fun e!3626943 () Bool)

(assert (=> b!5925255 (= e!3626948 e!3626943)))

(declare-fun c!1053128 () Bool)

(assert (=> b!5925255 (= c!1053128 (isEmpty!35953 (tail!11570 (exprs!5857 (h!70544 zl!343)))))))

(declare-fun b!5925256 () Bool)

(declare-fun lt!2310263 () Regex!15973)

(declare-fun isEmptyExpr!1401 (Regex!15973) Bool)

(assert (=> b!5925256 (= e!3626948 (isEmptyExpr!1401 lt!2310263))))

(declare-fun b!5925257 () Bool)

(declare-fun e!3626945 () Bool)

(assert (=> b!5925257 (= e!3626945 e!3626948)))

(declare-fun c!1053126 () Bool)

(assert (=> b!5925257 (= c!1053126 (isEmpty!35953 (exprs!5857 (h!70544 zl!343))))))

(declare-fun b!5925258 () Bool)

(declare-fun e!3626944 () Bool)

(assert (=> b!5925258 (= e!3626944 (isEmpty!35953 (t!377611 (exprs!5857 (h!70544 zl!343)))))))

(declare-fun b!5925259 () Bool)

(assert (=> b!5925259 (= e!3626943 (= lt!2310263 (head!12485 (exprs!5857 (h!70544 zl!343)))))))

(declare-fun b!5925260 () Bool)

(declare-fun e!3626947 () Regex!15973)

(assert (=> b!5925260 (= e!3626947 EmptyExpr!15973)))

(assert (=> d!1857872 e!3626945))

(declare-fun res!2483168 () Bool)

(assert (=> d!1857872 (=> (not res!2483168) (not e!3626945))))

(assert (=> d!1857872 (= res!2483168 (validRegex!7709 lt!2310263))))

(declare-fun e!3626946 () Regex!15973)

(assert (=> d!1857872 (= lt!2310263 e!3626946)))

(declare-fun c!1053125 () Bool)

(assert (=> d!1857872 (= c!1053125 e!3626944)))

(declare-fun res!2483167 () Bool)

(assert (=> d!1857872 (=> (not res!2483167) (not e!3626944))))

(assert (=> d!1857872 (= res!2483167 ((_ is Cons!64094) (exprs!5857 (h!70544 zl!343))))))

(assert (=> d!1857872 (forall!15055 (exprs!5857 (h!70544 zl!343)) lambda!323162)))

(assert (=> d!1857872 (= (generalisedConcat!1570 (exprs!5857 (h!70544 zl!343))) lt!2310263)))

(declare-fun b!5925261 () Bool)

(declare-fun isConcat!924 (Regex!15973) Bool)

(assert (=> b!5925261 (= e!3626943 (isConcat!924 lt!2310263))))

(declare-fun b!5925262 () Bool)

(assert (=> b!5925262 (= e!3626947 (Concat!24818 (h!70542 (exprs!5857 (h!70544 zl!343))) (generalisedConcat!1570 (t!377611 (exprs!5857 (h!70544 zl!343))))))))

(declare-fun b!5925263 () Bool)

(assert (=> b!5925263 (= e!3626946 (h!70542 (exprs!5857 (h!70544 zl!343))))))

(declare-fun b!5925264 () Bool)

(assert (=> b!5925264 (= e!3626946 e!3626947)))

(declare-fun c!1053127 () Bool)

(assert (=> b!5925264 (= c!1053127 ((_ is Cons!64094) (exprs!5857 (h!70544 zl!343))))))

(assert (= (and d!1857872 res!2483167) b!5925258))

(assert (= (and d!1857872 c!1053125) b!5925263))

(assert (= (and d!1857872 (not c!1053125)) b!5925264))

(assert (= (and b!5925264 c!1053127) b!5925262))

(assert (= (and b!5925264 (not c!1053127)) b!5925260))

(assert (= (and d!1857872 res!2483168) b!5925257))

(assert (= (and b!5925257 c!1053126) b!5925256))

(assert (= (and b!5925257 (not c!1053126)) b!5925255))

(assert (= (and b!5925255 c!1053128) b!5925259))

(assert (= (and b!5925255 (not c!1053128)) b!5925261))

(declare-fun m!6819528 () Bool)

(assert (=> b!5925262 m!6819528))

(declare-fun m!6819530 () Bool)

(assert (=> b!5925259 m!6819530))

(declare-fun m!6819532 () Bool)

(assert (=> b!5925256 m!6819532))

(declare-fun m!6819534 () Bool)

(assert (=> b!5925261 m!6819534))

(declare-fun m!6819536 () Bool)

(assert (=> b!5925255 m!6819536))

(assert (=> b!5925255 m!6819536))

(declare-fun m!6819538 () Bool)

(assert (=> b!5925255 m!6819538))

(assert (=> b!5925258 m!6819280))

(declare-fun m!6819540 () Bool)

(assert (=> d!1857872 m!6819540))

(declare-fun m!6819542 () Bool)

(assert (=> d!1857872 m!6819542))

(declare-fun m!6819544 () Bool)

(assert (=> b!5925257 m!6819544))

(assert (=> b!5924791 d!1857872))

(declare-fun bs!1402261 () Bool)

(declare-fun d!1857874 () Bool)

(assert (= bs!1402261 (and d!1857874 b!5924781)))

(declare-fun lambda!323165 () Int)

(assert (=> bs!1402261 (= lambda!323165 lambda!323104)))

(assert (=> d!1857874 true))

(assert (=> d!1857874 (= (derivationStepZipper!1954 z!1189 (h!70543 s!2326)) (flatMap!1486 z!1189 lambda!323165))))

(declare-fun bs!1402262 () Bool)

(assert (= bs!1402262 d!1857874))

(declare-fun m!6819546 () Bool)

(assert (=> bs!1402262 m!6819546))

(assert (=> b!5924781 d!1857874))

(declare-fun d!1857876 () Bool)

(declare-fun choose!44670 ((InoxSet Context!10714) Int) (InoxSet Context!10714))

(assert (=> d!1857876 (= (flatMap!1486 z!1189 lambda!323104) (choose!44670 z!1189 lambda!323104))))

(declare-fun bs!1402265 () Bool)

(assert (= bs!1402265 d!1857876))

(declare-fun m!6819548 () Bool)

(assert (=> bs!1402265 m!6819548))

(assert (=> b!5924781 d!1857876))

(declare-fun b!5925278 () Bool)

(declare-fun e!3626956 () (InoxSet Context!10714))

(declare-fun call!470036 () (InoxSet Context!10714))

(assert (=> b!5925278 (= e!3626956 call!470036)))

(declare-fun e!3626958 () (InoxSet Context!10714))

(declare-fun b!5925279 () Bool)

(assert (=> b!5925279 (= e!3626958 ((_ map or) call!470036 (derivationStepZipperUp!1149 (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343)))) (h!70543 s!2326))))))

(declare-fun b!5925280 () Bool)

(assert (=> b!5925280 (= e!3626956 ((as const (Array Context!10714 Bool)) false))))

(declare-fun b!5925281 () Bool)

(assert (=> b!5925281 (= e!3626958 e!3626956)))

(declare-fun c!1053136 () Bool)

(assert (=> b!5925281 (= c!1053136 ((_ is Cons!64094) (exprs!5857 (h!70544 zl!343))))))

(declare-fun d!1857878 () Bool)

(declare-fun c!1053135 () Bool)

(declare-fun e!3626957 () Bool)

(assert (=> d!1857878 (= c!1053135 e!3626957)))

(declare-fun res!2483172 () Bool)

(assert (=> d!1857878 (=> (not res!2483172) (not e!3626957))))

(assert (=> d!1857878 (= res!2483172 ((_ is Cons!64094) (exprs!5857 (h!70544 zl!343))))))

(assert (=> d!1857878 (= (derivationStepZipperUp!1149 (h!70544 zl!343) (h!70543 s!2326)) e!3626958)))

(declare-fun bm!470031 () Bool)

(assert (=> bm!470031 (= call!470036 (derivationStepZipperDown!1223 (h!70542 (exprs!5857 (h!70544 zl!343))) (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343)))) (h!70543 s!2326)))))

(declare-fun b!5925282 () Bool)

(assert (=> b!5925282 (= e!3626957 (nullable!5968 (h!70542 (exprs!5857 (h!70544 zl!343)))))))

(assert (= (and d!1857878 res!2483172) b!5925282))

(assert (= (and d!1857878 c!1053135) b!5925279))

(assert (= (and d!1857878 (not c!1053135)) b!5925281))

(assert (= (and b!5925281 c!1053136) b!5925278))

(assert (= (and b!5925281 (not c!1053136)) b!5925280))

(assert (= (or b!5925279 b!5925278) bm!470031))

(declare-fun m!6819550 () Bool)

(assert (=> b!5925279 m!6819550))

(declare-fun m!6819552 () Bool)

(assert (=> bm!470031 m!6819552))

(declare-fun m!6819554 () Bool)

(assert (=> b!5925282 m!6819554))

(assert (=> b!5924781 d!1857878))

(declare-fun d!1857880 () Bool)

(declare-fun dynLambda!25060 (Int Context!10714) (InoxSet Context!10714))

(assert (=> d!1857880 (= (flatMap!1486 z!1189 lambda!323104) (dynLambda!25060 lambda!323104 (h!70544 zl!343)))))

(declare-fun lt!2310266 () Unit!157217)

(declare-fun choose!44671 ((InoxSet Context!10714) Context!10714 Int) Unit!157217)

(assert (=> d!1857880 (= lt!2310266 (choose!44671 z!1189 (h!70544 zl!343) lambda!323104))))

(assert (=> d!1857880 (= z!1189 (store ((as const (Array Context!10714 Bool)) false) (h!70544 zl!343) true))))

(assert (=> d!1857880 (= (lemmaFlatMapOnSingletonSet!1012 z!1189 (h!70544 zl!343) lambda!323104) lt!2310266)))

(declare-fun b_lambda!222535 () Bool)

(assert (=> (not b_lambda!222535) (not d!1857880)))

(declare-fun bs!1402271 () Bool)

(assert (= bs!1402271 d!1857880))

(assert (=> bs!1402271 m!6819264))

(declare-fun m!6819564 () Bool)

(assert (=> bs!1402271 m!6819564))

(declare-fun m!6819566 () Bool)

(assert (=> bs!1402271 m!6819566))

(declare-fun m!6819568 () Bool)

(assert (=> bs!1402271 m!6819568))

(assert (=> b!5924781 d!1857880))

(declare-fun d!1857884 () Bool)

(declare-fun e!3626961 () Bool)

(assert (=> d!1857884 e!3626961))

(declare-fun res!2483175 () Bool)

(assert (=> d!1857884 (=> (not res!2483175) (not e!3626961))))

(declare-fun lt!2310269 () List!64220)

(declare-fun noDuplicate!1831 (List!64220) Bool)

(assert (=> d!1857884 (= res!2483175 (noDuplicate!1831 lt!2310269))))

(declare-fun choose!44672 ((InoxSet Context!10714)) List!64220)

(assert (=> d!1857884 (= lt!2310269 (choose!44672 z!1189))))

(assert (=> d!1857884 (= (toList!9757 z!1189) lt!2310269)))

(declare-fun b!5925285 () Bool)

(declare-fun content!11804 (List!64220) (InoxSet Context!10714))

(assert (=> b!5925285 (= e!3626961 (= (content!11804 lt!2310269) z!1189))))

(assert (= (and d!1857884 res!2483175) b!5925285))

(declare-fun m!6819570 () Bool)

(assert (=> d!1857884 m!6819570))

(declare-fun m!6819572 () Bool)

(assert (=> d!1857884 m!6819572))

(declare-fun m!6819574 () Bool)

(assert (=> b!5925285 m!6819574))

(assert (=> b!5924784 d!1857884))

(declare-fun d!1857886 () Bool)

(assert (=> d!1857886 (= (isEmpty!35953 (t!377611 (exprs!5857 (h!70544 zl!343)))) ((_ is Nil!64094) (t!377611 (exprs!5857 (h!70544 zl!343)))))))

(assert (=> b!5924794 d!1857886))

(declare-fun d!1857888 () Bool)

(declare-fun res!2483204 () Bool)

(declare-fun e!3626991 () Bool)

(assert (=> d!1857888 (=> res!2483204 e!3626991)))

(assert (=> d!1857888 (= res!2483204 ((_ is ElementMatch!15973) r!7292))))

(assert (=> d!1857888 (= (validRegex!7709 r!7292) e!3626991)))

(declare-fun b!5925332 () Bool)

(declare-fun e!3626994 () Bool)

(declare-fun call!470047 () Bool)

(assert (=> b!5925332 (= e!3626994 call!470047)))

(declare-fun b!5925333 () Bool)

(declare-fun e!3626993 () Bool)

(declare-fun e!3626996 () Bool)

(assert (=> b!5925333 (= e!3626993 e!3626996)))

(declare-fun c!1053147 () Bool)

(assert (=> b!5925333 (= c!1053147 ((_ is Union!15973) r!7292))))

(declare-fun bm!470040 () Bool)

(declare-fun call!470045 () Bool)

(assert (=> bm!470040 (= call!470047 call!470045)))

(declare-fun bm!470041 () Bool)

(declare-fun c!1053148 () Bool)

(assert (=> bm!470041 (= call!470045 (validRegex!7709 (ite c!1053148 (reg!16302 r!7292) (ite c!1053147 (regTwo!32459 r!7292) (regTwo!32458 r!7292)))))))

(declare-fun b!5925334 () Bool)

(declare-fun e!3626995 () Bool)

(assert (=> b!5925334 (= e!3626995 call!470047)))

(declare-fun b!5925335 () Bool)

(declare-fun e!3626990 () Bool)

(assert (=> b!5925335 (= e!3626990 call!470045)))

(declare-fun b!5925336 () Bool)

(declare-fun e!3626992 () Bool)

(assert (=> b!5925336 (= e!3626992 e!3626994)))

(declare-fun res!2483206 () Bool)

(assert (=> b!5925336 (=> (not res!2483206) (not e!3626994))))

(declare-fun call!470046 () Bool)

(assert (=> b!5925336 (= res!2483206 call!470046)))

(declare-fun b!5925337 () Bool)

(declare-fun res!2483205 () Bool)

(assert (=> b!5925337 (=> (not res!2483205) (not e!3626995))))

(assert (=> b!5925337 (= res!2483205 call!470046)))

(assert (=> b!5925337 (= e!3626996 e!3626995)))

(declare-fun bm!470042 () Bool)

(assert (=> bm!470042 (= call!470046 (validRegex!7709 (ite c!1053147 (regOne!32459 r!7292) (regOne!32458 r!7292))))))

(declare-fun b!5925338 () Bool)

(declare-fun res!2483203 () Bool)

(assert (=> b!5925338 (=> res!2483203 e!3626992)))

(assert (=> b!5925338 (= res!2483203 (not ((_ is Concat!24818) r!7292)))))

(assert (=> b!5925338 (= e!3626996 e!3626992)))

(declare-fun b!5925339 () Bool)

(assert (=> b!5925339 (= e!3626991 e!3626993)))

(assert (=> b!5925339 (= c!1053148 ((_ is Star!15973) r!7292))))

(declare-fun b!5925340 () Bool)

(assert (=> b!5925340 (= e!3626993 e!3626990)))

(declare-fun res!2483202 () Bool)

(assert (=> b!5925340 (= res!2483202 (not (nullable!5968 (reg!16302 r!7292))))))

(assert (=> b!5925340 (=> (not res!2483202) (not e!3626990))))

(assert (= (and d!1857888 (not res!2483204)) b!5925339))

(assert (= (and b!5925339 c!1053148) b!5925340))

(assert (= (and b!5925339 (not c!1053148)) b!5925333))

(assert (= (and b!5925340 res!2483202) b!5925335))

(assert (= (and b!5925333 c!1053147) b!5925337))

(assert (= (and b!5925333 (not c!1053147)) b!5925338))

(assert (= (and b!5925337 res!2483205) b!5925334))

(assert (= (and b!5925338 (not res!2483203)) b!5925336))

(assert (= (and b!5925336 res!2483206) b!5925332))

(assert (= (or b!5925334 b!5925332) bm!470040))

(assert (= (or b!5925337 b!5925336) bm!470042))

(assert (= (or b!5925335 bm!470040) bm!470041))

(declare-fun m!6819576 () Bool)

(assert (=> bm!470041 m!6819576))

(declare-fun m!6819578 () Bool)

(assert (=> bm!470042 m!6819578))

(declare-fun m!6819580 () Bool)

(assert (=> b!5925340 m!6819580))

(assert (=> start!602276 d!1857888))

(declare-fun d!1857890 () Bool)

(declare-fun lt!2310275 () Regex!15973)

(assert (=> d!1857890 (validRegex!7709 lt!2310275)))

(assert (=> d!1857890 (= lt!2310275 (generalisedUnion!1817 (unfocusZipperList!1394 zl!343)))))

(assert (=> d!1857890 (= (unfocusZipper!1715 zl!343) lt!2310275)))

(declare-fun bs!1402272 () Bool)

(assert (= bs!1402272 d!1857890))

(declare-fun m!6819594 () Bool)

(assert (=> bs!1402272 m!6819594))

(assert (=> bs!1402272 m!6819252))

(assert (=> bs!1402272 m!6819252))

(assert (=> bs!1402272 m!6819254))

(assert (=> b!5924793 d!1857890))

(declare-fun bs!1402273 () Bool)

(declare-fun d!1857894 () Bool)

(assert (= bs!1402273 (and d!1857894 d!1857794)))

(declare-fun lambda!323168 () Int)

(assert (=> bs!1402273 (= lambda!323168 lambda!323107)))

(declare-fun bs!1402274 () Bool)

(assert (= bs!1402274 (and d!1857894 d!1857840)))

(assert (=> bs!1402274 (= lambda!323168 lambda!323137)))

(declare-fun bs!1402275 () Bool)

(assert (= bs!1402275 (and d!1857894 d!1857796)))

(assert (=> bs!1402275 (= lambda!323168 lambda!323110)))

(declare-fun bs!1402276 () Bool)

(assert (= bs!1402276 (and d!1857894 d!1857800)))

(assert (=> bs!1402276 (= lambda!323168 lambda!323113)))

(declare-fun bs!1402277 () Bool)

(assert (= bs!1402277 (and d!1857894 d!1857872)))

(assert (=> bs!1402277 (= lambda!323168 lambda!323162)))

(assert (=> d!1857894 (= (inv!83179 (h!70544 zl!343)) (forall!15055 (exprs!5857 (h!70544 zl!343)) lambda!323168))))

(declare-fun bs!1402278 () Bool)

(assert (= bs!1402278 d!1857894))

(declare-fun m!6819596 () Bool)

(assert (=> bs!1402278 m!6819596))

(assert (=> b!5924795 d!1857894))

(declare-fun d!1857896 () Bool)

(assert (=> d!1857896 (= (isEmpty!35954 (t!377613 zl!343)) ((_ is Nil!64096) (t!377613 zl!343)))))

(assert (=> b!5924796 d!1857896))

(declare-fun b!5925359 () Bool)

(declare-fun e!3627006 () Bool)

(declare-fun tp!1647727 () Bool)

(declare-fun tp!1647728 () Bool)

(assert (=> b!5925359 (= e!3627006 (and tp!1647727 tp!1647728))))

(assert (=> b!5924785 (= tp!1647717 e!3627006)))

(assert (= (and b!5924785 ((_ is Cons!64094) (exprs!5857 setElem!40202))) b!5925359))

(declare-fun b!5925360 () Bool)

(declare-fun e!3627007 () Bool)

(declare-fun tp!1647729 () Bool)

(declare-fun tp!1647730 () Bool)

(assert (=> b!5925360 (= e!3627007 (and tp!1647729 tp!1647730))))

(assert (=> b!5924788 (= tp!1647722 e!3627007)))

(assert (= (and b!5924788 ((_ is Cons!64094) (exprs!5857 (h!70544 zl!343)))) b!5925360))

(declare-fun b!5925376 () Bool)

(declare-fun e!3627010 () Bool)

(declare-fun tp!1647745 () Bool)

(declare-fun tp!1647742 () Bool)

(assert (=> b!5925376 (= e!3627010 (and tp!1647745 tp!1647742))))

(declare-fun b!5925373 () Bool)

(assert (=> b!5925373 (= e!3627010 tp_is_empty!41199)))

(assert (=> b!5924797 (= tp!1647716 e!3627010)))

(declare-fun b!5925374 () Bool)

(declare-fun tp!1647744 () Bool)

(declare-fun tp!1647743 () Bool)

(assert (=> b!5925374 (= e!3627010 (and tp!1647744 tp!1647743))))

(declare-fun b!5925375 () Bool)

(declare-fun tp!1647741 () Bool)

(assert (=> b!5925375 (= e!3627010 tp!1647741)))

(assert (= (and b!5924797 ((_ is ElementMatch!15973) (regOne!32458 r!7292))) b!5925373))

(assert (= (and b!5924797 ((_ is Concat!24818) (regOne!32458 r!7292))) b!5925374))

(assert (= (and b!5924797 ((_ is Star!15973) (regOne!32458 r!7292))) b!5925375))

(assert (= (and b!5924797 ((_ is Union!15973) (regOne!32458 r!7292))) b!5925376))

(declare-fun b!5925386 () Bool)

(declare-fun e!3627013 () Bool)

(declare-fun tp!1647756 () Bool)

(declare-fun tp!1647752 () Bool)

(assert (=> b!5925386 (= e!3627013 (and tp!1647756 tp!1647752))))

(declare-fun b!5925383 () Bool)

(assert (=> b!5925383 (= e!3627013 tp_is_empty!41199)))

(assert (=> b!5924797 (= tp!1647720 e!3627013)))

(declare-fun b!5925384 () Bool)

(declare-fun tp!1647755 () Bool)

(declare-fun tp!1647754 () Bool)

(assert (=> b!5925384 (= e!3627013 (and tp!1647755 tp!1647754))))

(declare-fun b!5925385 () Bool)

(declare-fun tp!1647750 () Bool)

(assert (=> b!5925385 (= e!3627013 tp!1647750)))

(assert (= (and b!5924797 ((_ is ElementMatch!15973) (regTwo!32458 r!7292))) b!5925383))

(assert (= (and b!5924797 ((_ is Concat!24818) (regTwo!32458 r!7292))) b!5925384))

(assert (= (and b!5924797 ((_ is Star!15973) (regTwo!32458 r!7292))) b!5925385))

(assert (= (and b!5924797 ((_ is Union!15973) (regTwo!32458 r!7292))) b!5925386))

(declare-fun b!5925392 () Bool)

(declare-fun e!3627014 () Bool)

(declare-fun tp!1647765 () Bool)

(declare-fun tp!1647762 () Bool)

(assert (=> b!5925392 (= e!3627014 (and tp!1647765 tp!1647762))))

(declare-fun b!5925389 () Bool)

(assert (=> b!5925389 (= e!3627014 tp_is_empty!41199)))

(assert (=> b!5924783 (= tp!1647718 e!3627014)))

(declare-fun b!5925390 () Bool)

(declare-fun tp!1647764 () Bool)

(declare-fun tp!1647763 () Bool)

(assert (=> b!5925390 (= e!3627014 (and tp!1647764 tp!1647763))))

(declare-fun b!5925391 () Bool)

(declare-fun tp!1647761 () Bool)

(assert (=> b!5925391 (= e!3627014 tp!1647761)))

(assert (= (and b!5924783 ((_ is ElementMatch!15973) (regOne!32459 r!7292))) b!5925389))

(assert (= (and b!5924783 ((_ is Concat!24818) (regOne!32459 r!7292))) b!5925390))

(assert (= (and b!5924783 ((_ is Star!15973) (regOne!32459 r!7292))) b!5925391))

(assert (= (and b!5924783 ((_ is Union!15973) (regOne!32459 r!7292))) b!5925392))

(declare-fun b!5925396 () Bool)

(declare-fun e!3627015 () Bool)

(declare-fun tp!1647770 () Bool)

(declare-fun tp!1647767 () Bool)

(assert (=> b!5925396 (= e!3627015 (and tp!1647770 tp!1647767))))

(declare-fun b!5925393 () Bool)

(assert (=> b!5925393 (= e!3627015 tp_is_empty!41199)))

(assert (=> b!5924783 (= tp!1647715 e!3627015)))

(declare-fun b!5925394 () Bool)

(declare-fun tp!1647769 () Bool)

(declare-fun tp!1647768 () Bool)

(assert (=> b!5925394 (= e!3627015 (and tp!1647769 tp!1647768))))

(declare-fun b!5925395 () Bool)

(declare-fun tp!1647766 () Bool)

(assert (=> b!5925395 (= e!3627015 tp!1647766)))

(assert (= (and b!5924783 ((_ is ElementMatch!15973) (regTwo!32459 r!7292))) b!5925393))

(assert (= (and b!5924783 ((_ is Concat!24818) (regTwo!32459 r!7292))) b!5925394))

(assert (= (and b!5924783 ((_ is Star!15973) (regTwo!32459 r!7292))) b!5925395))

(assert (= (and b!5924783 ((_ is Union!15973) (regTwo!32459 r!7292))) b!5925396))

(declare-fun b!5925400 () Bool)

(declare-fun e!3627016 () Bool)

(declare-fun tp!1647775 () Bool)

(declare-fun tp!1647772 () Bool)

(assert (=> b!5925400 (= e!3627016 (and tp!1647775 tp!1647772))))

(declare-fun b!5925397 () Bool)

(assert (=> b!5925397 (= e!3627016 tp_is_empty!41199)))

(assert (=> b!5924792 (= tp!1647719 e!3627016)))

(declare-fun b!5925398 () Bool)

(declare-fun tp!1647774 () Bool)

(declare-fun tp!1647773 () Bool)

(assert (=> b!5925398 (= e!3627016 (and tp!1647774 tp!1647773))))

(declare-fun b!5925399 () Bool)

(declare-fun tp!1647771 () Bool)

(assert (=> b!5925399 (= e!3627016 tp!1647771)))

(assert (= (and b!5924792 ((_ is ElementMatch!15973) (reg!16302 r!7292))) b!5925397))

(assert (= (and b!5924792 ((_ is Concat!24818) (reg!16302 r!7292))) b!5925398))

(assert (= (and b!5924792 ((_ is Star!15973) (reg!16302 r!7292))) b!5925399))

(assert (= (and b!5924792 ((_ is Union!15973) (reg!16302 r!7292))) b!5925400))

(declare-fun b!5925413 () Bool)

(declare-fun e!3627022 () Bool)

(declare-fun tp!1647783 () Bool)

(assert (=> b!5925413 (= e!3627022 (and tp_is_empty!41199 tp!1647783))))

(assert (=> b!5924787 (= tp!1647721 e!3627022)))

(assert (= (and b!5924787 ((_ is Cons!64095) (t!377612 s!2326))) b!5925413))

(declare-fun condSetEmpty!40205 () Bool)

(assert (=> setNonEmpty!40202 (= condSetEmpty!40205 (= setRest!40202 ((as const (Array Context!10714 Bool)) false)))))

(declare-fun setRes!40205 () Bool)

(assert (=> setNonEmpty!40202 (= tp!1647713 setRes!40205)))

(declare-fun setIsEmpty!40205 () Bool)

(assert (=> setIsEmpty!40205 setRes!40205))

(declare-fun e!3627031 () Bool)

(declare-fun setElem!40205 () Context!10714)

(declare-fun tp!1647797 () Bool)

(declare-fun setNonEmpty!40205 () Bool)

(assert (=> setNonEmpty!40205 (= setRes!40205 (and tp!1647797 (inv!83179 setElem!40205) e!3627031))))

(declare-fun setRest!40205 () (InoxSet Context!10714))

(assert (=> setNonEmpty!40205 (= setRest!40202 ((_ map or) (store ((as const (Array Context!10714 Bool)) false) setElem!40205 true) setRest!40205))))

(declare-fun b!5925426 () Bool)

(declare-fun tp!1647796 () Bool)

(assert (=> b!5925426 (= e!3627031 tp!1647796)))

(assert (= (and setNonEmpty!40202 condSetEmpty!40205) setIsEmpty!40205))

(assert (= (and setNonEmpty!40202 (not condSetEmpty!40205)) setNonEmpty!40205))

(assert (= setNonEmpty!40205 b!5925426))

(declare-fun m!6819602 () Bool)

(assert (=> setNonEmpty!40205 m!6819602))

(declare-fun b!5925447 () Bool)

(declare-fun e!3627042 () Bool)

(declare-fun tp!1647817 () Bool)

(assert (=> b!5925447 (= e!3627042 tp!1647817)))

(declare-fun tp!1647818 () Bool)

(declare-fun b!5925446 () Bool)

(declare-fun e!3627041 () Bool)

(assert (=> b!5925446 (= e!3627041 (and (inv!83179 (h!70544 (t!377613 zl!343))) e!3627042 tp!1647818))))

(assert (=> b!5924795 (= tp!1647714 e!3627041)))

(assert (= b!5925446 b!5925447))

(assert (= (and b!5924795 ((_ is Cons!64096) (t!377613 zl!343))) b!5925446))

(declare-fun m!6819604 () Bool)

(assert (=> b!5925446 m!6819604))

(declare-fun b_lambda!222537 () Bool)

(assert (= b_lambda!222535 (or b!5924781 b_lambda!222537)))

(declare-fun bs!1402280 () Bool)

(declare-fun d!1857898 () Bool)

(assert (= bs!1402280 (and d!1857898 b!5924781)))

(assert (=> bs!1402280 (= (dynLambda!25060 lambda!323104 (h!70544 zl!343)) (derivationStepZipperUp!1149 (h!70544 zl!343) (h!70543 s!2326)))))

(assert (=> bs!1402280 m!6819266))

(assert (=> d!1857880 d!1857898))

(check-sat (not b!5925279) (not b!5924855) (not b!5925256) (not b!5924991) (not d!1857880) (not b!5925398) (not d!1857854) (not b!5925186) (not b!5925399) (not b!5924847) (not b!5924989) (not d!1857866) (not d!1857820) (not b!5924992) (not b!5925191) (not d!1857796) (not b!5925257) (not b!5924854) (not b!5924994) (not b!5925180) (not b!5925391) (not b!5924848) (not b!5925340) (not b!5925386) (not bm!470021) (not bm!470002) (not b!5925255) (not d!1857800) (not b!5925282) (not b!5925116) (not b!5925375) (not b!5925360) (not b!5924990) (not b!5924856) (not bm!469998) (not b!5925447) (not bs!1402280) (not b!5925121) (not b_lambda!222537) (not b!5925395) (not b!5925261) (not b!5925258) (not b!5925374) (not b!5924918) (not b!5924954) (not b!5925390) (not b!5925262) (not b!5925384) (not bm!470031) (not d!1857872) (not b!5924861) (not d!1857840) (not b!5925184) (not d!1857884) (not b!5924851) (not b!5925413) (not d!1857838) (not d!1857794) (not b!5925359) (not d!1857822) (not b!5924850) (not d!1857894) (not d!1857810) tp_is_empty!41199 (not setNonEmpty!40205) (not b!5925192) (not d!1857874) (not b!5925285) (not b!5925259) (not b!5925185) (not bm!470041) (not bm!470042) (not b!5925385) (not b!5925446) (not b!5925426) (not b!5925392) (not b!5924987) (not d!1857824) (not d!1857890) (not bm!470011) (not d!1857826) (not bm!470010) (not b!5925396) (not b!5924951) (not bm!470005) (not b!5925376) (not bm!469999) (not d!1857876) (not b!5925400) (not b!5925394))
(check-sat)
(get-model)

(declare-fun d!1857902 () Bool)

(assert (=> d!1857902 (= (isEmpty!35957 s!2326) ((_ is Nil!64095) s!2326))))

(assert (=> bm!470021 d!1857902))

(declare-fun d!1857904 () Bool)

(assert (=> d!1857904 (= (isUnion!839 lt!2310203) ((_ is Union!15973) lt!2310203))))

(assert (=> b!5924850 d!1857904))

(declare-fun b!5925463 () Bool)

(declare-fun e!3627050 () (InoxSet Context!10714))

(declare-fun call!470049 () (InoxSet Context!10714))

(assert (=> b!5925463 (= e!3627050 call!470049)))

(declare-fun b!5925464 () Bool)

(declare-fun e!3627052 () (InoxSet Context!10714))

(assert (=> b!5925464 (= e!3627052 ((_ map or) call!470049 (derivationStepZipperUp!1149 (Context!10715 (t!377611 (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094)))))))) (h!70543 s!2326))))))

(declare-fun b!5925465 () Bool)

(assert (=> b!5925465 (= e!3627050 ((as const (Array Context!10714 Bool)) false))))

(declare-fun b!5925466 () Bool)

(assert (=> b!5925466 (= e!3627052 e!3627050)))

(declare-fun c!1053153 () Bool)

(assert (=> b!5925466 (= c!1053153 ((_ is Cons!64094) (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))))))))

(declare-fun d!1857906 () Bool)

(declare-fun c!1053152 () Bool)

(declare-fun e!3627051 () Bool)

(assert (=> d!1857906 (= c!1053152 e!3627051)))

(declare-fun res!2483215 () Bool)

(assert (=> d!1857906 (=> (not res!2483215) (not e!3627051))))

(assert (=> d!1857906 (= res!2483215 ((_ is Cons!64094) (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))))))))

(assert (=> d!1857906 (= (derivationStepZipperUp!1149 (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (h!70543 s!2326)) e!3627052)))

(declare-fun bm!470044 () Bool)

(assert (=> bm!470044 (= call!470049 (derivationStepZipperDown!1223 (h!70542 (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))))) (Context!10715 (t!377611 (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094)))))))) (h!70543 s!2326)))))

(declare-fun b!5925467 () Bool)

(assert (=> b!5925467 (= e!3627051 (nullable!5968 (h!70542 (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094)))))))))))

(assert (= (and d!1857906 res!2483215) b!5925467))

(assert (= (and d!1857906 c!1053152) b!5925464))

(assert (= (and d!1857906 (not c!1053152)) b!5925466))

(assert (= (and b!5925466 c!1053153) b!5925463))

(assert (= (and b!5925466 (not c!1053153)) b!5925465))

(assert (= (or b!5925464 b!5925463) bm!470044))

(declare-fun m!6819608 () Bool)

(assert (=> b!5925464 m!6819608))

(declare-fun m!6819610 () Bool)

(assert (=> bm!470044 m!6819610))

(declare-fun m!6819612 () Bool)

(assert (=> b!5925467 m!6819612))

(assert (=> b!5924951 d!1857906))

(declare-fun d!1857908 () Bool)

(assert (=> d!1857908 (= ($colon$colon!1860 (exprs!5857 (Context!10715 Nil!64094)) (ite (or c!1053028 c!1053032) (regTwo!32458 r!7292) r!7292)) (Cons!64094 (ite (or c!1053028 c!1053032) (regTwo!32458 r!7292) r!7292) (exprs!5857 (Context!10715 Nil!64094))))))

(assert (=> bm!470002 d!1857908))

(declare-fun d!1857910 () Bool)

(assert (=> d!1857910 (= (head!12485 (unfocusZipperList!1394 zl!343)) (h!70542 (unfocusZipperList!1394 zl!343)))))

(assert (=> b!5924854 d!1857910))

(declare-fun d!1857912 () Bool)

(assert (=> d!1857912 (= (isEmpty!35953 (tail!11570 (exprs!5857 (h!70544 zl!343)))) ((_ is Nil!64094) (tail!11570 (exprs!5857 (h!70544 zl!343)))))))

(assert (=> b!5925255 d!1857912))

(declare-fun d!1857914 () Bool)

(assert (=> d!1857914 (= (tail!11570 (exprs!5857 (h!70544 zl!343))) (t!377611 (exprs!5857 (h!70544 zl!343))))))

(assert (=> b!5925255 d!1857914))

(declare-fun d!1857916 () Bool)

(assert (=> d!1857916 true))

(assert (=> d!1857916 true))

(declare-fun res!2483218 () Bool)

(assert (=> d!1857916 (= (choose!44663 lambda!323102) res!2483218)))

(assert (=> d!1857820 d!1857916))

(declare-fun d!1857918 () Bool)

(declare-fun c!1053156 () Bool)

(assert (=> d!1857918 (= c!1053156 ((_ is Nil!64096) lt!2310269))))

(declare-fun e!3627055 () (InoxSet Context!10714))

(assert (=> d!1857918 (= (content!11804 lt!2310269) e!3627055)))

(declare-fun b!5925472 () Bool)

(assert (=> b!5925472 (= e!3627055 ((as const (Array Context!10714 Bool)) false))))

(declare-fun b!5925473 () Bool)

(assert (=> b!5925473 (= e!3627055 ((_ map or) (store ((as const (Array Context!10714 Bool)) false) (h!70544 lt!2310269) true) (content!11804 (t!377613 lt!2310269))))))

(assert (= (and d!1857918 c!1053156) b!5925472))

(assert (= (and d!1857918 (not c!1053156)) b!5925473))

(declare-fun m!6819614 () Bool)

(assert (=> b!5925473 m!6819614))

(declare-fun m!6819616 () Bool)

(assert (=> b!5925473 m!6819616))

(assert (=> b!5925285 d!1857918))

(declare-fun bs!1402282 () Bool)

(declare-fun d!1857920 () Bool)

(assert (= bs!1402282 (and d!1857920 d!1857794)))

(declare-fun lambda!323169 () Int)

(assert (=> bs!1402282 (= lambda!323169 lambda!323107)))

(declare-fun bs!1402283 () Bool)

(assert (= bs!1402283 (and d!1857920 d!1857840)))

(assert (=> bs!1402283 (= lambda!323169 lambda!323137)))

(declare-fun bs!1402284 () Bool)

(assert (= bs!1402284 (and d!1857920 d!1857796)))

(assert (=> bs!1402284 (= lambda!323169 lambda!323110)))

(declare-fun bs!1402285 () Bool)

(assert (= bs!1402285 (and d!1857920 d!1857894)))

(assert (=> bs!1402285 (= lambda!323169 lambda!323168)))

(declare-fun bs!1402286 () Bool)

(assert (= bs!1402286 (and d!1857920 d!1857800)))

(assert (=> bs!1402286 (= lambda!323169 lambda!323113)))

(declare-fun bs!1402287 () Bool)

(assert (= bs!1402287 (and d!1857920 d!1857872)))

(assert (=> bs!1402287 (= lambda!323169 lambda!323162)))

(assert (=> d!1857920 (= (inv!83179 (h!70544 (t!377613 zl!343))) (forall!15055 (exprs!5857 (h!70544 (t!377613 zl!343))) lambda!323169))))

(declare-fun bs!1402288 () Bool)

(assert (= bs!1402288 d!1857920))

(declare-fun m!6819618 () Bool)

(assert (=> bs!1402288 m!6819618))

(assert (=> b!5925446 d!1857920))

(declare-fun bs!1402289 () Bool)

(declare-fun d!1857922 () Bool)

(assert (= bs!1402289 (and d!1857922 d!1857840)))

(declare-fun lambda!323170 () Int)

(assert (=> bs!1402289 (= lambda!323170 lambda!323137)))

(declare-fun bs!1402290 () Bool)

(assert (= bs!1402290 (and d!1857922 d!1857796)))

(assert (=> bs!1402290 (= lambda!323170 lambda!323110)))

(declare-fun bs!1402291 () Bool)

(assert (= bs!1402291 (and d!1857922 d!1857894)))

(assert (=> bs!1402291 (= lambda!323170 lambda!323168)))

(declare-fun bs!1402292 () Bool)

(assert (= bs!1402292 (and d!1857922 d!1857800)))

(assert (=> bs!1402292 (= lambda!323170 lambda!323113)))

(declare-fun bs!1402293 () Bool)

(assert (= bs!1402293 (and d!1857922 d!1857872)))

(assert (=> bs!1402293 (= lambda!323170 lambda!323162)))

(declare-fun bs!1402294 () Bool)

(assert (= bs!1402294 (and d!1857922 d!1857920)))

(assert (=> bs!1402294 (= lambda!323170 lambda!323169)))

(declare-fun bs!1402295 () Bool)

(assert (= bs!1402295 (and d!1857922 d!1857794)))

(assert (=> bs!1402295 (= lambda!323170 lambda!323107)))

(assert (=> d!1857922 (= (inv!83179 setElem!40205) (forall!15055 (exprs!5857 setElem!40205) lambda!323170))))

(declare-fun bs!1402296 () Bool)

(assert (= bs!1402296 d!1857922))

(declare-fun m!6819620 () Bool)

(assert (=> bs!1402296 m!6819620))

(assert (=> setNonEmpty!40205 d!1857922))

(declare-fun bm!470045 () Bool)

(declare-fun call!470050 () (InoxSet Context!10714))

(declare-fun call!470054 () (InoxSet Context!10714))

(assert (=> bm!470045 (= call!470050 call!470054)))

(declare-fun b!5925474 () Bool)

(declare-fun e!3627058 () (InoxSet Context!10714))

(assert (=> b!5925474 (= e!3627058 (store ((as const (Array Context!10714 Bool)) false) (ite (or c!1053031 c!1053028) (Context!10715 Nil!64094) (Context!10715 call!470003)) true))))

(declare-fun b!5925475 () Bool)

(declare-fun e!3627061 () (InoxSet Context!10714))

(declare-fun call!470055 () (InoxSet Context!10714))

(assert (=> b!5925475 (= e!3627061 call!470055)))

(declare-fun b!5925477 () Bool)

(declare-fun e!3627059 () (InoxSet Context!10714))

(declare-fun call!470052 () (InoxSet Context!10714))

(assert (=> b!5925477 (= e!3627059 ((_ map or) call!470054 call!470052))))

(declare-fun b!5925478 () Bool)

(declare-fun e!3627056 () (InoxSet Context!10714))

(assert (=> b!5925478 (= e!3627056 call!470055)))

(declare-fun b!5925479 () Bool)

(declare-fun e!3627057 () (InoxSet Context!10714))

(assert (=> b!5925479 (= e!3627057 e!3627061)))

(declare-fun c!1053161 () Bool)

(assert (=> b!5925479 (= c!1053161 ((_ is Concat!24818) (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292))))))))

(declare-fun b!5925480 () Bool)

(declare-fun c!1053159 () Bool)

(assert (=> b!5925480 (= c!1053159 ((_ is Star!15973) (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292))))))))

(assert (=> b!5925480 (= e!3627061 e!3627056)))

(declare-fun bm!470046 () Bool)

(declare-fun c!1053160 () Bool)

(declare-fun call!470053 () List!64218)

(assert (=> bm!470046 (= call!470052 (derivationStepZipperDown!1223 (ite c!1053160 (regTwo!32459 (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292))))) (regOne!32458 (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292)))))) (ite c!1053160 (ite (or c!1053031 c!1053028) (Context!10715 Nil!64094) (Context!10715 call!470003)) (Context!10715 call!470053)) (h!70543 s!2326)))))

(declare-fun call!470051 () List!64218)

(declare-fun c!1053157 () Bool)

(declare-fun bm!470047 () Bool)

(assert (=> bm!470047 (= call!470054 (derivationStepZipperDown!1223 (ite c!1053160 (regOne!32459 (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292))))) (ite c!1053157 (regTwo!32458 (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292))))) (ite c!1053161 (regOne!32458 (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292))))) (reg!16302 (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292)))))))) (ite (or c!1053160 c!1053157) (ite (or c!1053031 c!1053028) (Context!10715 Nil!64094) (Context!10715 call!470003)) (Context!10715 call!470051)) (h!70543 s!2326)))))

(declare-fun e!3627060 () Bool)

(declare-fun b!5925481 () Bool)

(assert (=> b!5925481 (= e!3627060 (nullable!5968 (regOne!32458 (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292)))))))))

(declare-fun bm!470048 () Bool)

(assert (=> bm!470048 (= call!470055 call!470050)))

(declare-fun b!5925482 () Bool)

(assert (=> b!5925482 (= e!3627057 ((_ map or) call!470052 call!470050))))

(declare-fun bm!470049 () Bool)

(assert (=> bm!470049 (= call!470051 call!470053)))

(declare-fun b!5925483 () Bool)

(assert (=> b!5925483 (= c!1053157 e!3627060)))

(declare-fun res!2483219 () Bool)

(assert (=> b!5925483 (=> (not res!2483219) (not e!3627060))))

(assert (=> b!5925483 (= res!2483219 ((_ is Concat!24818) (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292))))))))

(assert (=> b!5925483 (= e!3627059 e!3627057)))

(declare-fun c!1053158 () Bool)

(declare-fun d!1857924 () Bool)

(assert (=> d!1857924 (= c!1053158 (and ((_ is ElementMatch!15973) (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292))))) (= (c!1052981 (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292))))) (h!70543 s!2326))))))

(assert (=> d!1857924 (= (derivationStepZipperDown!1223 (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292)))) (ite (or c!1053031 c!1053028) (Context!10715 Nil!64094) (Context!10715 call!470003)) (h!70543 s!2326)) e!3627058)))

(declare-fun b!5925476 () Bool)

(assert (=> b!5925476 (= e!3627058 e!3627059)))

(assert (=> b!5925476 (= c!1053160 ((_ is Union!15973) (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292))))))))

(declare-fun bm!470050 () Bool)

(assert (=> bm!470050 (= call!470053 ($colon$colon!1860 (exprs!5857 (ite (or c!1053031 c!1053028) (Context!10715 Nil!64094) (Context!10715 call!470003))) (ite (or c!1053157 c!1053161) (regTwo!32458 (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292))))) (ite c!1053031 (regOne!32459 r!7292) (ite c!1053028 (regTwo!32458 r!7292) (ite c!1053032 (regOne!32458 r!7292) (reg!16302 r!7292)))))))))

(declare-fun b!5925484 () Bool)

(assert (=> b!5925484 (= e!3627056 ((as const (Array Context!10714 Bool)) false))))

(assert (= (and d!1857924 c!1053158) b!5925474))

(assert (= (and d!1857924 (not c!1053158)) b!5925476))

(assert (= (and b!5925476 c!1053160) b!5925477))

(assert (= (and b!5925476 (not c!1053160)) b!5925483))

(assert (= (and b!5925483 res!2483219) b!5925481))

(assert (= (and b!5925483 c!1053157) b!5925482))

(assert (= (and b!5925483 (not c!1053157)) b!5925479))

(assert (= (and b!5925479 c!1053161) b!5925475))

(assert (= (and b!5925479 (not c!1053161)) b!5925480))

(assert (= (and b!5925480 c!1053159) b!5925478))

(assert (= (and b!5925480 (not c!1053159)) b!5925484))

(assert (= (or b!5925475 b!5925478) bm!470049))

(assert (= (or b!5925475 b!5925478) bm!470048))

(assert (= (or b!5925482 bm!470049) bm!470050))

(assert (= (or b!5925482 bm!470048) bm!470045))

(assert (= (or b!5925477 b!5925482) bm!470046))

(assert (= (or b!5925477 bm!470045) bm!470047))

(declare-fun m!6819622 () Bool)

(assert (=> bm!470050 m!6819622))

(declare-fun m!6819624 () Bool)

(assert (=> bm!470046 m!6819624))

(declare-fun m!6819626 () Bool)

(assert (=> bm!470047 m!6819626))

(declare-fun m!6819628 () Bool)

(assert (=> b!5925474 m!6819628))

(declare-fun m!6819630 () Bool)

(assert (=> b!5925481 m!6819630))

(assert (=> bm!469999 d!1857924))

(declare-fun d!1857926 () Bool)

(declare-fun res!2483224 () Bool)

(declare-fun e!3627066 () Bool)

(assert (=> d!1857926 (=> res!2483224 e!3627066)))

(assert (=> d!1857926 (= res!2483224 ((_ is Nil!64094) lt!2310206))))

(assert (=> d!1857926 (= (forall!15055 lt!2310206 lambda!323113) e!3627066)))

(declare-fun b!5925489 () Bool)

(declare-fun e!3627067 () Bool)

(assert (=> b!5925489 (= e!3627066 e!3627067)))

(declare-fun res!2483225 () Bool)

(assert (=> b!5925489 (=> (not res!2483225) (not e!3627067))))

(declare-fun dynLambda!25061 (Int Regex!15973) Bool)

(assert (=> b!5925489 (= res!2483225 (dynLambda!25061 lambda!323113 (h!70542 lt!2310206)))))

(declare-fun b!5925490 () Bool)

(assert (=> b!5925490 (= e!3627067 (forall!15055 (t!377611 lt!2310206) lambda!323113))))

(assert (= (and d!1857926 (not res!2483224)) b!5925489))

(assert (= (and b!5925489 res!2483225) b!5925490))

(declare-fun b_lambda!222541 () Bool)

(assert (=> (not b_lambda!222541) (not b!5925489)))

(declare-fun m!6819632 () Bool)

(assert (=> b!5925489 m!6819632))

(declare-fun m!6819634 () Bool)

(assert (=> b!5925490 m!6819634))

(assert (=> d!1857800 d!1857926))

(declare-fun b!5925491 () Bool)

(declare-fun e!3627068 () Bool)

(assert (=> b!5925491 (= e!3627068 (nullable!5968 (regTwo!32458 r!7292)))))

(declare-fun b!5925492 () Bool)

(declare-fun res!2483229 () Bool)

(declare-fun e!3627074 () Bool)

(assert (=> b!5925492 (=> (not res!2483229) (not e!3627074))))

(declare-fun call!470056 () Bool)

(assert (=> b!5925492 (= res!2483229 (not call!470056))))

(declare-fun b!5925493 () Bool)

(declare-fun e!3627070 () Bool)

(declare-fun e!3627073 () Bool)

(assert (=> b!5925493 (= e!3627070 e!3627073)))

(declare-fun res!2483232 () Bool)

(assert (=> b!5925493 (=> res!2483232 e!3627073)))

(assert (=> b!5925493 (= res!2483232 call!470056)))

(declare-fun b!5925494 () Bool)

(declare-fun res!2483226 () Bool)

(declare-fun e!3627072 () Bool)

(assert (=> b!5925494 (=> res!2483226 e!3627072)))

(assert (=> b!5925494 (= res!2483226 e!3627074)))

(declare-fun res!2483233 () Bool)

(assert (=> b!5925494 (=> (not res!2483233) (not e!3627074))))

(declare-fun lt!2310279 () Bool)

(assert (=> b!5925494 (= res!2483233 lt!2310279)))

(declare-fun b!5925495 () Bool)

(assert (=> b!5925495 (= e!3627074 (= (head!12487 (_2!36255 (get!22072 lt!2310226))) (c!1052981 (regTwo!32458 r!7292))))))

(declare-fun b!5925496 () Bool)

(assert (=> b!5925496 (= e!3627073 (not (= (head!12487 (_2!36255 (get!22072 lt!2310226))) (c!1052981 (regTwo!32458 r!7292)))))))

(declare-fun b!5925497 () Bool)

(declare-fun res!2483227 () Bool)

(assert (=> b!5925497 (=> res!2483227 e!3627073)))

(assert (=> b!5925497 (= res!2483227 (not (isEmpty!35957 (tail!11572 (_2!36255 (get!22072 lt!2310226))))))))

(declare-fun d!1857928 () Bool)

(declare-fun e!3627071 () Bool)

(assert (=> d!1857928 e!3627071))

(declare-fun c!1053162 () Bool)

(assert (=> d!1857928 (= c!1053162 ((_ is EmptyExpr!15973) (regTwo!32458 r!7292)))))

(assert (=> d!1857928 (= lt!2310279 e!3627068)))

(declare-fun c!1053164 () Bool)

(assert (=> d!1857928 (= c!1053164 (isEmpty!35957 (_2!36255 (get!22072 lt!2310226))))))

(assert (=> d!1857928 (validRegex!7709 (regTwo!32458 r!7292))))

(assert (=> d!1857928 (= (matchR!8156 (regTwo!32458 r!7292) (_2!36255 (get!22072 lt!2310226))) lt!2310279)))

(declare-fun b!5925498 () Bool)

(declare-fun res!2483230 () Bool)

(assert (=> b!5925498 (=> res!2483230 e!3627072)))

(assert (=> b!5925498 (= res!2483230 (not ((_ is ElementMatch!15973) (regTwo!32458 r!7292))))))

(declare-fun e!3627069 () Bool)

(assert (=> b!5925498 (= e!3627069 e!3627072)))

(declare-fun b!5925499 () Bool)

(assert (=> b!5925499 (= e!3627069 (not lt!2310279))))

(declare-fun b!5925500 () Bool)

(assert (=> b!5925500 (= e!3627072 e!3627070)))

(declare-fun res!2483231 () Bool)

(assert (=> b!5925500 (=> (not res!2483231) (not e!3627070))))

(assert (=> b!5925500 (= res!2483231 (not lt!2310279))))

(declare-fun b!5925501 () Bool)

(assert (=> b!5925501 (= e!3627071 e!3627069)))

(declare-fun c!1053163 () Bool)

(assert (=> b!5925501 (= c!1053163 ((_ is EmptyLang!15973) (regTwo!32458 r!7292)))))

(declare-fun b!5925502 () Bool)

(assert (=> b!5925502 (= e!3627068 (matchR!8156 (derivativeStep!4703 (regTwo!32458 r!7292) (head!12487 (_2!36255 (get!22072 lt!2310226)))) (tail!11572 (_2!36255 (get!22072 lt!2310226)))))))

(declare-fun b!5925503 () Bool)

(declare-fun res!2483228 () Bool)

(assert (=> b!5925503 (=> (not res!2483228) (not e!3627074))))

(assert (=> b!5925503 (= res!2483228 (isEmpty!35957 (tail!11572 (_2!36255 (get!22072 lt!2310226)))))))

(declare-fun b!5925504 () Bool)

(assert (=> b!5925504 (= e!3627071 (= lt!2310279 call!470056))))

(declare-fun bm!470051 () Bool)

(assert (=> bm!470051 (= call!470056 (isEmpty!35957 (_2!36255 (get!22072 lt!2310226))))))

(assert (= (and d!1857928 c!1053164) b!5925491))

(assert (= (and d!1857928 (not c!1053164)) b!5925502))

(assert (= (and d!1857928 c!1053162) b!5925504))

(assert (= (and d!1857928 (not c!1053162)) b!5925501))

(assert (= (and b!5925501 c!1053163) b!5925499))

(assert (= (and b!5925501 (not c!1053163)) b!5925498))

(assert (= (and b!5925498 (not res!2483230)) b!5925494))

(assert (= (and b!5925494 res!2483233) b!5925492))

(assert (= (and b!5925492 res!2483229) b!5925503))

(assert (= (and b!5925503 res!2483228) b!5925495))

(assert (= (and b!5925494 (not res!2483226)) b!5925500))

(assert (= (and b!5925500 res!2483231) b!5925493))

(assert (= (and b!5925493 (not res!2483232)) b!5925497))

(assert (= (and b!5925497 (not res!2483227)) b!5925496))

(assert (= (or b!5925504 b!5925492 b!5925493) bm!470051))

(declare-fun m!6819636 () Bool)

(assert (=> b!5925503 m!6819636))

(assert (=> b!5925503 m!6819636))

(declare-fun m!6819638 () Bool)

(assert (=> b!5925503 m!6819638))

(declare-fun m!6819640 () Bool)

(assert (=> b!5925491 m!6819640))

(declare-fun m!6819642 () Bool)

(assert (=> bm!470051 m!6819642))

(assert (=> d!1857928 m!6819642))

(declare-fun m!6819644 () Bool)

(assert (=> d!1857928 m!6819644))

(declare-fun m!6819646 () Bool)

(assert (=> b!5925495 m!6819646))

(assert (=> b!5925496 m!6819646))

(assert (=> b!5925497 m!6819636))

(assert (=> b!5925497 m!6819636))

(assert (=> b!5925497 m!6819638))

(assert (=> b!5925502 m!6819646))

(assert (=> b!5925502 m!6819646))

(declare-fun m!6819648 () Bool)

(assert (=> b!5925502 m!6819648))

(assert (=> b!5925502 m!6819636))

(assert (=> b!5925502 m!6819648))

(assert (=> b!5925502 m!6819636))

(declare-fun m!6819650 () Bool)

(assert (=> b!5925502 m!6819650))

(assert (=> b!5924991 d!1857928))

(declare-fun d!1857930 () Bool)

(assert (=> d!1857930 (= (get!22072 lt!2310226) (v!51961 lt!2310226))))

(assert (=> b!5924991 d!1857930))

(assert (=> b!5924861 d!1857872))

(declare-fun bs!1402297 () Bool)

(declare-fun d!1857932 () Bool)

(assert (= bs!1402297 (and d!1857932 d!1857840)))

(declare-fun lambda!323171 () Int)

(assert (=> bs!1402297 (= lambda!323171 lambda!323137)))

(declare-fun bs!1402298 () Bool)

(assert (= bs!1402298 (and d!1857932 d!1857796)))

(assert (=> bs!1402298 (= lambda!323171 lambda!323110)))

(declare-fun bs!1402299 () Bool)

(assert (= bs!1402299 (and d!1857932 d!1857800)))

(assert (=> bs!1402299 (= lambda!323171 lambda!323113)))

(declare-fun bs!1402300 () Bool)

(assert (= bs!1402300 (and d!1857932 d!1857872)))

(assert (=> bs!1402300 (= lambda!323171 lambda!323162)))

(declare-fun bs!1402301 () Bool)

(assert (= bs!1402301 (and d!1857932 d!1857920)))

(assert (=> bs!1402301 (= lambda!323171 lambda!323169)))

(declare-fun bs!1402302 () Bool)

(assert (= bs!1402302 (and d!1857932 d!1857794)))

(assert (=> bs!1402302 (= lambda!323171 lambda!323107)))

(declare-fun bs!1402303 () Bool)

(assert (= bs!1402303 (and d!1857932 d!1857922)))

(assert (=> bs!1402303 (= lambda!323171 lambda!323170)))

(declare-fun bs!1402304 () Bool)

(assert (= bs!1402304 (and d!1857932 d!1857894)))

(assert (=> bs!1402304 (= lambda!323171 lambda!323168)))

(declare-fun lt!2310280 () List!64218)

(assert (=> d!1857932 (forall!15055 lt!2310280 lambda!323171)))

(declare-fun e!3627075 () List!64218)

(assert (=> d!1857932 (= lt!2310280 e!3627075)))

(declare-fun c!1053165 () Bool)

(assert (=> d!1857932 (= c!1053165 ((_ is Cons!64096) (t!377613 zl!343)))))

(assert (=> d!1857932 (= (unfocusZipperList!1394 (t!377613 zl!343)) lt!2310280)))

(declare-fun b!5925505 () Bool)

(assert (=> b!5925505 (= e!3627075 (Cons!64094 (generalisedConcat!1570 (exprs!5857 (h!70544 (t!377613 zl!343)))) (unfocusZipperList!1394 (t!377613 (t!377613 zl!343)))))))

(declare-fun b!5925506 () Bool)

(assert (=> b!5925506 (= e!3627075 Nil!64094)))

(assert (= (and d!1857932 c!1053165) b!5925505))

(assert (= (and d!1857932 (not c!1053165)) b!5925506))

(declare-fun m!6819652 () Bool)

(assert (=> d!1857932 m!6819652))

(declare-fun m!6819654 () Bool)

(assert (=> b!5925505 m!6819654))

(declare-fun m!6819656 () Bool)

(assert (=> b!5925505 m!6819656))

(assert (=> b!5924861 d!1857932))

(declare-fun d!1857934 () Bool)

(declare-fun res!2483234 () Bool)

(declare-fun e!3627076 () Bool)

(assert (=> d!1857934 (=> res!2483234 e!3627076)))

(assert (=> d!1857934 (= res!2483234 ((_ is Nil!64094) (exprs!5857 setElem!40202)))))

(assert (=> d!1857934 (= (forall!15055 (exprs!5857 setElem!40202) lambda!323137) e!3627076)))

(declare-fun b!5925507 () Bool)

(declare-fun e!3627077 () Bool)

(assert (=> b!5925507 (= e!3627076 e!3627077)))

(declare-fun res!2483235 () Bool)

(assert (=> b!5925507 (=> (not res!2483235) (not e!3627077))))

(assert (=> b!5925507 (= res!2483235 (dynLambda!25061 lambda!323137 (h!70542 (exprs!5857 setElem!40202))))))

(declare-fun b!5925508 () Bool)

(assert (=> b!5925508 (= e!3627077 (forall!15055 (t!377611 (exprs!5857 setElem!40202)) lambda!323137))))

(assert (= (and d!1857934 (not res!2483234)) b!5925507))

(assert (= (and b!5925507 res!2483235) b!5925508))

(declare-fun b_lambda!222543 () Bool)

(assert (=> (not b_lambda!222543) (not b!5925507)))

(declare-fun m!6819658 () Bool)

(assert (=> b!5925507 m!6819658))

(declare-fun m!6819660 () Bool)

(assert (=> b!5925508 m!6819660))

(assert (=> d!1857840 d!1857934))

(declare-fun bs!1402305 () Bool)

(declare-fun b!5925519 () Bool)

(assert (= bs!1402305 (and b!5925519 b!5925119)))

(declare-fun lambda!323172 () Int)

(assert (=> bs!1402305 (not (= lambda!323172 lambda!323151))))

(declare-fun bs!1402306 () Bool)

(assert (= bs!1402306 (and b!5925519 d!1857824)))

(assert (=> bs!1402306 (not (= lambda!323172 lambda!323124))))

(declare-fun bs!1402307 () Bool)

(assert (= bs!1402307 (and b!5925519 d!1857826)))

(assert (=> bs!1402307 (not (= lambda!323172 lambda!323136))))

(declare-fun bs!1402308 () Bool)

(assert (= bs!1402308 (and b!5925519 b!5924782)))

(assert (=> bs!1402308 (not (= lambda!323172 lambda!323102))))

(assert (=> bs!1402308 (not (= lambda!323172 lambda!323103))))

(declare-fun bs!1402309 () Bool)

(assert (= bs!1402309 (and b!5925519 b!5925126)))

(assert (=> bs!1402309 (= (and (= (reg!16302 (regTwo!32459 r!7292)) (reg!16302 r!7292)) (= (regTwo!32459 r!7292) r!7292)) (= lambda!323172 lambda!323149))))

(assert (=> bs!1402307 (not (= lambda!323172 lambda!323135))))

(assert (=> b!5925519 true))

(assert (=> b!5925519 true))

(declare-fun bs!1402310 () Bool)

(declare-fun b!5925512 () Bool)

(assert (= bs!1402310 (and b!5925512 b!5925119)))

(declare-fun lambda!323173 () Int)

(assert (=> bs!1402310 (= (and (= (regOne!32458 (regTwo!32459 r!7292)) (regOne!32458 r!7292)) (= (regTwo!32458 (regTwo!32459 r!7292)) (regTwo!32458 r!7292))) (= lambda!323173 lambda!323151))))

(declare-fun bs!1402311 () Bool)

(assert (= bs!1402311 (and b!5925512 b!5925519)))

(assert (=> bs!1402311 (not (= lambda!323173 lambda!323172))))

(declare-fun bs!1402312 () Bool)

(assert (= bs!1402312 (and b!5925512 d!1857824)))

(assert (=> bs!1402312 (not (= lambda!323173 lambda!323124))))

(declare-fun bs!1402313 () Bool)

(assert (= bs!1402313 (and b!5925512 d!1857826)))

(assert (=> bs!1402313 (= (and (= (regOne!32458 (regTwo!32459 r!7292)) (regOne!32458 r!7292)) (= (regTwo!32458 (regTwo!32459 r!7292)) (regTwo!32458 r!7292))) (= lambda!323173 lambda!323136))))

(declare-fun bs!1402314 () Bool)

(assert (= bs!1402314 (and b!5925512 b!5924782)))

(assert (=> bs!1402314 (not (= lambda!323173 lambda!323102))))

(assert (=> bs!1402314 (= (and (= (regOne!32458 (regTwo!32459 r!7292)) (regOne!32458 r!7292)) (= (regTwo!32458 (regTwo!32459 r!7292)) (regTwo!32458 r!7292))) (= lambda!323173 lambda!323103))))

(declare-fun bs!1402315 () Bool)

(assert (= bs!1402315 (and b!5925512 b!5925126)))

(assert (=> bs!1402315 (not (= lambda!323173 lambda!323149))))

(assert (=> bs!1402313 (not (= lambda!323173 lambda!323135))))

(assert (=> b!5925512 true))

(assert (=> b!5925512 true))

(declare-fun b!5925509 () Bool)

(declare-fun e!3627082 () Bool)

(declare-fun e!3627081 () Bool)

(assert (=> b!5925509 (= e!3627082 e!3627081)))

(declare-fun res!2483238 () Bool)

(assert (=> b!5925509 (= res!2483238 (matchRSpec!3074 (regOne!32459 (regTwo!32459 r!7292)) s!2326))))

(assert (=> b!5925509 (=> res!2483238 e!3627081)))

(declare-fun b!5925510 () Bool)

(declare-fun e!3627084 () Bool)

(declare-fun call!470057 () Bool)

(assert (=> b!5925510 (= e!3627084 call!470057)))

(declare-fun b!5925511 () Bool)

(declare-fun e!3627078 () Bool)

(assert (=> b!5925511 (= e!3627084 e!3627078)))

(declare-fun res!2483236 () Bool)

(assert (=> b!5925511 (= res!2483236 (not ((_ is EmptyLang!15973) (regTwo!32459 r!7292))))))

(assert (=> b!5925511 (=> (not res!2483236) (not e!3627078))))

(declare-fun call!470058 () Bool)

(declare-fun c!1053167 () Bool)

(declare-fun bm!470052 () Bool)

(assert (=> bm!470052 (= call!470058 (Exists!3043 (ite c!1053167 lambda!323172 lambda!323173)))))

(declare-fun e!3627080 () Bool)

(assert (=> b!5925512 (= e!3627080 call!470058)))

(declare-fun b!5925513 () Bool)

(declare-fun c!1053166 () Bool)

(assert (=> b!5925513 (= c!1053166 ((_ is Union!15973) (regTwo!32459 r!7292)))))

(declare-fun e!3627079 () Bool)

(assert (=> b!5925513 (= e!3627079 e!3627082)))

(declare-fun bm!470053 () Bool)

(assert (=> bm!470053 (= call!470057 (isEmpty!35957 s!2326))))

(declare-fun b!5925515 () Bool)

(assert (=> b!5925515 (= e!3627079 (= s!2326 (Cons!64095 (c!1052981 (regTwo!32459 r!7292)) Nil!64095)))))

(declare-fun b!5925516 () Bool)

(declare-fun c!1053169 () Bool)

(assert (=> b!5925516 (= c!1053169 ((_ is ElementMatch!15973) (regTwo!32459 r!7292)))))

(assert (=> b!5925516 (= e!3627078 e!3627079)))

(declare-fun b!5925514 () Bool)

(assert (=> b!5925514 (= e!3627081 (matchRSpec!3074 (regTwo!32459 (regTwo!32459 r!7292)) s!2326))))

(declare-fun d!1857936 () Bool)

(declare-fun c!1053168 () Bool)

(assert (=> d!1857936 (= c!1053168 ((_ is EmptyExpr!15973) (regTwo!32459 r!7292)))))

(assert (=> d!1857936 (= (matchRSpec!3074 (regTwo!32459 r!7292) s!2326) e!3627084)))

(declare-fun b!5925517 () Bool)

(declare-fun res!2483237 () Bool)

(declare-fun e!3627083 () Bool)

(assert (=> b!5925517 (=> res!2483237 e!3627083)))

(assert (=> b!5925517 (= res!2483237 call!470057)))

(assert (=> b!5925517 (= e!3627080 e!3627083)))

(declare-fun b!5925518 () Bool)

(assert (=> b!5925518 (= e!3627082 e!3627080)))

(assert (=> b!5925518 (= c!1053167 ((_ is Star!15973) (regTwo!32459 r!7292)))))

(assert (=> b!5925519 (= e!3627083 call!470058)))

(assert (= (and d!1857936 c!1053168) b!5925510))

(assert (= (and d!1857936 (not c!1053168)) b!5925511))

(assert (= (and b!5925511 res!2483236) b!5925516))

(assert (= (and b!5925516 c!1053169) b!5925515))

(assert (= (and b!5925516 (not c!1053169)) b!5925513))

(assert (= (and b!5925513 c!1053166) b!5925509))

(assert (= (and b!5925513 (not c!1053166)) b!5925518))

(assert (= (and b!5925509 (not res!2483238)) b!5925514))

(assert (= (and b!5925518 c!1053167) b!5925517))

(assert (= (and b!5925518 (not c!1053167)) b!5925512))

(assert (= (and b!5925517 (not res!2483237)) b!5925519))

(assert (= (or b!5925519 b!5925512) bm!470052))

(assert (= (or b!5925510 b!5925517) bm!470053))

(declare-fun m!6819662 () Bool)

(assert (=> b!5925509 m!6819662))

(declare-fun m!6819664 () Bool)

(assert (=> bm!470052 m!6819664))

(assert (=> bm!470053 m!6819484))

(declare-fun m!6819666 () Bool)

(assert (=> b!5925514 m!6819666))

(assert (=> b!5925121 d!1857936))

(declare-fun d!1857938 () Bool)

(declare-fun res!2483241 () Bool)

(declare-fun e!3627086 () Bool)

(assert (=> d!1857938 (=> res!2483241 e!3627086)))

(assert (=> d!1857938 (= res!2483241 ((_ is ElementMatch!15973) lt!2310275))))

(assert (=> d!1857938 (= (validRegex!7709 lt!2310275) e!3627086)))

(declare-fun b!5925520 () Bool)

(declare-fun e!3627089 () Bool)

(declare-fun call!470061 () Bool)

(assert (=> b!5925520 (= e!3627089 call!470061)))

(declare-fun b!5925521 () Bool)

(declare-fun e!3627088 () Bool)

(declare-fun e!3627091 () Bool)

(assert (=> b!5925521 (= e!3627088 e!3627091)))

(declare-fun c!1053170 () Bool)

(assert (=> b!5925521 (= c!1053170 ((_ is Union!15973) lt!2310275))))

(declare-fun bm!470054 () Bool)

(declare-fun call!470059 () Bool)

(assert (=> bm!470054 (= call!470061 call!470059)))

(declare-fun c!1053171 () Bool)

(declare-fun bm!470055 () Bool)

(assert (=> bm!470055 (= call!470059 (validRegex!7709 (ite c!1053171 (reg!16302 lt!2310275) (ite c!1053170 (regTwo!32459 lt!2310275) (regTwo!32458 lt!2310275)))))))

(declare-fun b!5925522 () Bool)

(declare-fun e!3627090 () Bool)

(assert (=> b!5925522 (= e!3627090 call!470061)))

(declare-fun b!5925523 () Bool)

(declare-fun e!3627085 () Bool)

(assert (=> b!5925523 (= e!3627085 call!470059)))

(declare-fun b!5925524 () Bool)

(declare-fun e!3627087 () Bool)

(assert (=> b!5925524 (= e!3627087 e!3627089)))

(declare-fun res!2483243 () Bool)

(assert (=> b!5925524 (=> (not res!2483243) (not e!3627089))))

(declare-fun call!470060 () Bool)

(assert (=> b!5925524 (= res!2483243 call!470060)))

(declare-fun b!5925525 () Bool)

(declare-fun res!2483242 () Bool)

(assert (=> b!5925525 (=> (not res!2483242) (not e!3627090))))

(assert (=> b!5925525 (= res!2483242 call!470060)))

(assert (=> b!5925525 (= e!3627091 e!3627090)))

(declare-fun bm!470056 () Bool)

(assert (=> bm!470056 (= call!470060 (validRegex!7709 (ite c!1053170 (regOne!32459 lt!2310275) (regOne!32458 lt!2310275))))))

(declare-fun b!5925526 () Bool)

(declare-fun res!2483240 () Bool)

(assert (=> b!5925526 (=> res!2483240 e!3627087)))

(assert (=> b!5925526 (= res!2483240 (not ((_ is Concat!24818) lt!2310275)))))

(assert (=> b!5925526 (= e!3627091 e!3627087)))

(declare-fun b!5925527 () Bool)

(assert (=> b!5925527 (= e!3627086 e!3627088)))

(assert (=> b!5925527 (= c!1053171 ((_ is Star!15973) lt!2310275))))

(declare-fun b!5925528 () Bool)

(assert (=> b!5925528 (= e!3627088 e!3627085)))

(declare-fun res!2483239 () Bool)

(assert (=> b!5925528 (= res!2483239 (not (nullable!5968 (reg!16302 lt!2310275))))))

(assert (=> b!5925528 (=> (not res!2483239) (not e!3627085))))

(assert (= (and d!1857938 (not res!2483241)) b!5925527))

(assert (= (and b!5925527 c!1053171) b!5925528))

(assert (= (and b!5925527 (not c!1053171)) b!5925521))

(assert (= (and b!5925528 res!2483239) b!5925523))

(assert (= (and b!5925521 c!1053170) b!5925525))

(assert (= (and b!5925521 (not c!1053170)) b!5925526))

(assert (= (and b!5925525 res!2483242) b!5925522))

(assert (= (and b!5925526 (not res!2483240)) b!5925524))

(assert (= (and b!5925524 res!2483243) b!5925520))

(assert (= (or b!5925522 b!5925520) bm!470054))

(assert (= (or b!5925525 b!5925524) bm!470056))

(assert (= (or b!5925523 bm!470054) bm!470055))

(declare-fun m!6819668 () Bool)

(assert (=> bm!470055 m!6819668))

(declare-fun m!6819670 () Bool)

(assert (=> bm!470056 m!6819670))

(declare-fun m!6819672 () Bool)

(assert (=> b!5925528 m!6819672))

(assert (=> d!1857890 d!1857938))

(assert (=> d!1857890 d!1857796))

(assert (=> d!1857890 d!1857800))

(declare-fun d!1857940 () Bool)

(assert (=> d!1857940 (= (isEmpty!35953 (tail!11570 (unfocusZipperList!1394 zl!343))) ((_ is Nil!64094) (tail!11570 (unfocusZipperList!1394 zl!343))))))

(assert (=> b!5924848 d!1857940))

(declare-fun d!1857942 () Bool)

(assert (=> d!1857942 (= (tail!11570 (unfocusZipperList!1394 zl!343)) (t!377611 (unfocusZipperList!1394 zl!343)))))

(assert (=> b!5924848 d!1857942))

(declare-fun d!1857944 () Bool)

(assert (=> d!1857944 (= (flatMap!1486 z!1189 lambda!323165) (choose!44670 z!1189 lambda!323165))))

(declare-fun bs!1402316 () Bool)

(assert (= bs!1402316 d!1857944))

(declare-fun m!6819674 () Bool)

(assert (=> bs!1402316 m!6819674))

(assert (=> d!1857874 d!1857944))

(declare-fun d!1857946 () Bool)

(assert (=> d!1857946 (= (isEmpty!35957 (tail!11572 s!2326)) ((_ is Nil!64095) (tail!11572 s!2326)))))

(assert (=> b!5925192 d!1857946))

(declare-fun d!1857948 () Bool)

(assert (=> d!1857948 (= (tail!11572 s!2326) (t!377612 s!2326))))

(assert (=> b!5925192 d!1857948))

(declare-fun d!1857950 () Bool)

(declare-fun nullableFct!1939 (Regex!15973) Bool)

(assert (=> d!1857950 (= (nullable!5968 (h!70542 (exprs!5857 (h!70544 zl!343)))) (nullableFct!1939 (h!70542 (exprs!5857 (h!70544 zl!343)))))))

(declare-fun bs!1402317 () Bool)

(assert (= bs!1402317 d!1857950))

(declare-fun m!6819676 () Bool)

(assert (=> bs!1402317 m!6819676))

(assert (=> b!5925282 d!1857950))

(declare-fun d!1857952 () Bool)

(declare-fun res!2483246 () Bool)

(declare-fun e!3627093 () Bool)

(assert (=> d!1857952 (=> res!2483246 e!3627093)))

(assert (=> d!1857952 (= res!2483246 ((_ is ElementMatch!15973) lt!2310263))))

(assert (=> d!1857952 (= (validRegex!7709 lt!2310263) e!3627093)))

(declare-fun b!5925529 () Bool)

(declare-fun e!3627096 () Bool)

(declare-fun call!470064 () Bool)

(assert (=> b!5925529 (= e!3627096 call!470064)))

(declare-fun b!5925530 () Bool)

(declare-fun e!3627095 () Bool)

(declare-fun e!3627098 () Bool)

(assert (=> b!5925530 (= e!3627095 e!3627098)))

(declare-fun c!1053172 () Bool)

(assert (=> b!5925530 (= c!1053172 ((_ is Union!15973) lt!2310263))))

(declare-fun bm!470057 () Bool)

(declare-fun call!470062 () Bool)

(assert (=> bm!470057 (= call!470064 call!470062)))

(declare-fun c!1053173 () Bool)

(declare-fun bm!470058 () Bool)

(assert (=> bm!470058 (= call!470062 (validRegex!7709 (ite c!1053173 (reg!16302 lt!2310263) (ite c!1053172 (regTwo!32459 lt!2310263) (regTwo!32458 lt!2310263)))))))

(declare-fun b!5925531 () Bool)

(declare-fun e!3627097 () Bool)

(assert (=> b!5925531 (= e!3627097 call!470064)))

(declare-fun b!5925532 () Bool)

(declare-fun e!3627092 () Bool)

(assert (=> b!5925532 (= e!3627092 call!470062)))

(declare-fun b!5925533 () Bool)

(declare-fun e!3627094 () Bool)

(assert (=> b!5925533 (= e!3627094 e!3627096)))

(declare-fun res!2483248 () Bool)

(assert (=> b!5925533 (=> (not res!2483248) (not e!3627096))))

(declare-fun call!470063 () Bool)

(assert (=> b!5925533 (= res!2483248 call!470063)))

(declare-fun b!5925534 () Bool)

(declare-fun res!2483247 () Bool)

(assert (=> b!5925534 (=> (not res!2483247) (not e!3627097))))

(assert (=> b!5925534 (= res!2483247 call!470063)))

(assert (=> b!5925534 (= e!3627098 e!3627097)))

(declare-fun bm!470059 () Bool)

(assert (=> bm!470059 (= call!470063 (validRegex!7709 (ite c!1053172 (regOne!32459 lt!2310263) (regOne!32458 lt!2310263))))))

(declare-fun b!5925535 () Bool)

(declare-fun res!2483245 () Bool)

(assert (=> b!5925535 (=> res!2483245 e!3627094)))

(assert (=> b!5925535 (= res!2483245 (not ((_ is Concat!24818) lt!2310263)))))

(assert (=> b!5925535 (= e!3627098 e!3627094)))

(declare-fun b!5925536 () Bool)

(assert (=> b!5925536 (= e!3627093 e!3627095)))

(assert (=> b!5925536 (= c!1053173 ((_ is Star!15973) lt!2310263))))

(declare-fun b!5925537 () Bool)

(assert (=> b!5925537 (= e!3627095 e!3627092)))

(declare-fun res!2483244 () Bool)

(assert (=> b!5925537 (= res!2483244 (not (nullable!5968 (reg!16302 lt!2310263))))))

(assert (=> b!5925537 (=> (not res!2483244) (not e!3627092))))

(assert (= (and d!1857952 (not res!2483246)) b!5925536))

(assert (= (and b!5925536 c!1053173) b!5925537))

(assert (= (and b!5925536 (not c!1053173)) b!5925530))

(assert (= (and b!5925537 res!2483244) b!5925532))

(assert (= (and b!5925530 c!1053172) b!5925534))

(assert (= (and b!5925530 (not c!1053172)) b!5925535))

(assert (= (and b!5925534 res!2483247) b!5925531))

(assert (= (and b!5925535 (not res!2483245)) b!5925533))

(assert (= (and b!5925533 res!2483248) b!5925529))

(assert (= (or b!5925531 b!5925529) bm!470057))

(assert (= (or b!5925534 b!5925533) bm!470059))

(assert (= (or b!5925532 bm!470057) bm!470058))

(declare-fun m!6819678 () Bool)

(assert (=> bm!470058 m!6819678))

(declare-fun m!6819680 () Bool)

(assert (=> bm!470059 m!6819680))

(declare-fun m!6819682 () Bool)

(assert (=> b!5925537 m!6819682))

(assert (=> d!1857872 d!1857952))

(declare-fun d!1857954 () Bool)

(declare-fun res!2483249 () Bool)

(declare-fun e!3627099 () Bool)

(assert (=> d!1857954 (=> res!2483249 e!3627099)))

(assert (=> d!1857954 (= res!2483249 ((_ is Nil!64094) (exprs!5857 (h!70544 zl!343))))))

(assert (=> d!1857954 (= (forall!15055 (exprs!5857 (h!70544 zl!343)) lambda!323162) e!3627099)))

(declare-fun b!5925538 () Bool)

(declare-fun e!3627100 () Bool)

(assert (=> b!5925538 (= e!3627099 e!3627100)))

(declare-fun res!2483250 () Bool)

(assert (=> b!5925538 (=> (not res!2483250) (not e!3627100))))

(assert (=> b!5925538 (= res!2483250 (dynLambda!25061 lambda!323162 (h!70542 (exprs!5857 (h!70544 zl!343)))))))

(declare-fun b!5925539 () Bool)

(assert (=> b!5925539 (= e!3627100 (forall!15055 (t!377611 (exprs!5857 (h!70544 zl!343))) lambda!323162))))

(assert (= (and d!1857954 (not res!2483249)) b!5925538))

(assert (= (and b!5925538 res!2483250) b!5925539))

(declare-fun b_lambda!222545 () Bool)

(assert (=> (not b_lambda!222545) (not b!5925538)))

(declare-fun m!6819684 () Bool)

(assert (=> b!5925538 m!6819684))

(declare-fun m!6819686 () Bool)

(assert (=> b!5925539 m!6819686))

(assert (=> d!1857872 d!1857954))

(declare-fun d!1857956 () Bool)

(assert (=> d!1857956 (= (nullable!5968 (reg!16302 r!7292)) (nullableFct!1939 (reg!16302 r!7292)))))

(declare-fun bs!1402318 () Bool)

(assert (= bs!1402318 d!1857956))

(declare-fun m!6819688 () Bool)

(assert (=> bs!1402318 m!6819688))

(assert (=> b!5925340 d!1857956))

(declare-fun bs!1402319 () Bool)

(declare-fun b!5925550 () Bool)

(assert (= bs!1402319 (and b!5925550 b!5925119)))

(declare-fun lambda!323174 () Int)

(assert (=> bs!1402319 (not (= lambda!323174 lambda!323151))))

(declare-fun bs!1402320 () Bool)

(assert (= bs!1402320 (and b!5925550 b!5925519)))

(assert (=> bs!1402320 (= (and (= (reg!16302 (regOne!32459 r!7292)) (reg!16302 (regTwo!32459 r!7292))) (= (regOne!32459 r!7292) (regTwo!32459 r!7292))) (= lambda!323174 lambda!323172))))

(declare-fun bs!1402321 () Bool)

(assert (= bs!1402321 (and b!5925550 d!1857824)))

(assert (=> bs!1402321 (not (= lambda!323174 lambda!323124))))

(declare-fun bs!1402322 () Bool)

(assert (= bs!1402322 (and b!5925550 d!1857826)))

(assert (=> bs!1402322 (not (= lambda!323174 lambda!323136))))

(declare-fun bs!1402323 () Bool)

(assert (= bs!1402323 (and b!5925550 b!5925512)))

(assert (=> bs!1402323 (not (= lambda!323174 lambda!323173))))

(declare-fun bs!1402324 () Bool)

(assert (= bs!1402324 (and b!5925550 b!5924782)))

(assert (=> bs!1402324 (not (= lambda!323174 lambda!323102))))

(assert (=> bs!1402324 (not (= lambda!323174 lambda!323103))))

(declare-fun bs!1402325 () Bool)

(assert (= bs!1402325 (and b!5925550 b!5925126)))

(assert (=> bs!1402325 (= (and (= (reg!16302 (regOne!32459 r!7292)) (reg!16302 r!7292)) (= (regOne!32459 r!7292) r!7292)) (= lambda!323174 lambda!323149))))

(assert (=> bs!1402322 (not (= lambda!323174 lambda!323135))))

(assert (=> b!5925550 true))

(assert (=> b!5925550 true))

(declare-fun bs!1402326 () Bool)

(declare-fun b!5925543 () Bool)

(assert (= bs!1402326 (and b!5925543 b!5925119)))

(declare-fun lambda!323175 () Int)

(assert (=> bs!1402326 (= (and (= (regOne!32458 (regOne!32459 r!7292)) (regOne!32458 r!7292)) (= (regTwo!32458 (regOne!32459 r!7292)) (regTwo!32458 r!7292))) (= lambda!323175 lambda!323151))))

(declare-fun bs!1402327 () Bool)

(assert (= bs!1402327 (and b!5925543 b!5925519)))

(assert (=> bs!1402327 (not (= lambda!323175 lambda!323172))))

(declare-fun bs!1402328 () Bool)

(assert (= bs!1402328 (and b!5925543 d!1857824)))

(assert (=> bs!1402328 (not (= lambda!323175 lambda!323124))))

(declare-fun bs!1402329 () Bool)

(assert (= bs!1402329 (and b!5925543 d!1857826)))

(assert (=> bs!1402329 (= (and (= (regOne!32458 (regOne!32459 r!7292)) (regOne!32458 r!7292)) (= (regTwo!32458 (regOne!32459 r!7292)) (regTwo!32458 r!7292))) (= lambda!323175 lambda!323136))))

(declare-fun bs!1402330 () Bool)

(assert (= bs!1402330 (and b!5925543 b!5925512)))

(assert (=> bs!1402330 (= (and (= (regOne!32458 (regOne!32459 r!7292)) (regOne!32458 (regTwo!32459 r!7292))) (= (regTwo!32458 (regOne!32459 r!7292)) (regTwo!32458 (regTwo!32459 r!7292)))) (= lambda!323175 lambda!323173))))

(declare-fun bs!1402331 () Bool)

(assert (= bs!1402331 (and b!5925543 b!5924782)))

(assert (=> bs!1402331 (= (and (= (regOne!32458 (regOne!32459 r!7292)) (regOne!32458 r!7292)) (= (regTwo!32458 (regOne!32459 r!7292)) (regTwo!32458 r!7292))) (= lambda!323175 lambda!323103))))

(declare-fun bs!1402332 () Bool)

(assert (= bs!1402332 (and b!5925543 b!5925126)))

(assert (=> bs!1402332 (not (= lambda!323175 lambda!323149))))

(assert (=> bs!1402329 (not (= lambda!323175 lambda!323135))))

(declare-fun bs!1402333 () Bool)

(assert (= bs!1402333 (and b!5925543 b!5925550)))

(assert (=> bs!1402333 (not (= lambda!323175 lambda!323174))))

(assert (=> bs!1402331 (not (= lambda!323175 lambda!323102))))

(assert (=> b!5925543 true))

(assert (=> b!5925543 true))

(declare-fun b!5925540 () Bool)

(declare-fun e!3627105 () Bool)

(declare-fun e!3627104 () Bool)

(assert (=> b!5925540 (= e!3627105 e!3627104)))

(declare-fun res!2483253 () Bool)

(assert (=> b!5925540 (= res!2483253 (matchRSpec!3074 (regOne!32459 (regOne!32459 r!7292)) s!2326))))

(assert (=> b!5925540 (=> res!2483253 e!3627104)))

(declare-fun b!5925541 () Bool)

(declare-fun e!3627107 () Bool)

(declare-fun call!470065 () Bool)

(assert (=> b!5925541 (= e!3627107 call!470065)))

(declare-fun b!5925542 () Bool)

(declare-fun e!3627101 () Bool)

(assert (=> b!5925542 (= e!3627107 e!3627101)))

(declare-fun res!2483251 () Bool)

(assert (=> b!5925542 (= res!2483251 (not ((_ is EmptyLang!15973) (regOne!32459 r!7292))))))

(assert (=> b!5925542 (=> (not res!2483251) (not e!3627101))))

(declare-fun c!1053175 () Bool)

(declare-fun call!470066 () Bool)

(declare-fun bm!470060 () Bool)

(assert (=> bm!470060 (= call!470066 (Exists!3043 (ite c!1053175 lambda!323174 lambda!323175)))))

(declare-fun e!3627103 () Bool)

(assert (=> b!5925543 (= e!3627103 call!470066)))

(declare-fun b!5925544 () Bool)

(declare-fun c!1053174 () Bool)

(assert (=> b!5925544 (= c!1053174 ((_ is Union!15973) (regOne!32459 r!7292)))))

(declare-fun e!3627102 () Bool)

(assert (=> b!5925544 (= e!3627102 e!3627105)))

(declare-fun bm!470061 () Bool)

(assert (=> bm!470061 (= call!470065 (isEmpty!35957 s!2326))))

(declare-fun b!5925546 () Bool)

(assert (=> b!5925546 (= e!3627102 (= s!2326 (Cons!64095 (c!1052981 (regOne!32459 r!7292)) Nil!64095)))))

(declare-fun b!5925547 () Bool)

(declare-fun c!1053177 () Bool)

(assert (=> b!5925547 (= c!1053177 ((_ is ElementMatch!15973) (regOne!32459 r!7292)))))

(assert (=> b!5925547 (= e!3627101 e!3627102)))

(declare-fun b!5925545 () Bool)

(assert (=> b!5925545 (= e!3627104 (matchRSpec!3074 (regTwo!32459 (regOne!32459 r!7292)) s!2326))))

(declare-fun d!1857958 () Bool)

(declare-fun c!1053176 () Bool)

(assert (=> d!1857958 (= c!1053176 ((_ is EmptyExpr!15973) (regOne!32459 r!7292)))))

(assert (=> d!1857958 (= (matchRSpec!3074 (regOne!32459 r!7292) s!2326) e!3627107)))

(declare-fun b!5925548 () Bool)

(declare-fun res!2483252 () Bool)

(declare-fun e!3627106 () Bool)

(assert (=> b!5925548 (=> res!2483252 e!3627106)))

(assert (=> b!5925548 (= res!2483252 call!470065)))

(assert (=> b!5925548 (= e!3627103 e!3627106)))

(declare-fun b!5925549 () Bool)

(assert (=> b!5925549 (= e!3627105 e!3627103)))

(assert (=> b!5925549 (= c!1053175 ((_ is Star!15973) (regOne!32459 r!7292)))))

(assert (=> b!5925550 (= e!3627106 call!470066)))

(assert (= (and d!1857958 c!1053176) b!5925541))

(assert (= (and d!1857958 (not c!1053176)) b!5925542))

(assert (= (and b!5925542 res!2483251) b!5925547))

(assert (= (and b!5925547 c!1053177) b!5925546))

(assert (= (and b!5925547 (not c!1053177)) b!5925544))

(assert (= (and b!5925544 c!1053174) b!5925540))

(assert (= (and b!5925544 (not c!1053174)) b!5925549))

(assert (= (and b!5925540 (not res!2483253)) b!5925545))

(assert (= (and b!5925549 c!1053175) b!5925548))

(assert (= (and b!5925549 (not c!1053175)) b!5925543))

(assert (= (and b!5925548 (not res!2483252)) b!5925550))

(assert (= (or b!5925550 b!5925543) bm!470060))

(assert (= (or b!5925541 b!5925548) bm!470061))

(declare-fun m!6819690 () Bool)

(assert (=> b!5925540 m!6819690))

(declare-fun m!6819692 () Bool)

(assert (=> bm!470060 m!6819692))

(assert (=> bm!470061 m!6819484))

(declare-fun m!6819694 () Bool)

(assert (=> b!5925545 m!6819694))

(assert (=> b!5925116 d!1857958))

(declare-fun b!5925551 () Bool)

(declare-fun e!3627108 () Bool)

(assert (=> b!5925551 (= e!3627108 (nullable!5968 (regOne!32458 r!7292)))))

(declare-fun b!5925552 () Bool)

(declare-fun res!2483257 () Bool)

(declare-fun e!3627114 () Bool)

(assert (=> b!5925552 (=> (not res!2483257) (not e!3627114))))

(declare-fun call!470067 () Bool)

(assert (=> b!5925552 (= res!2483257 (not call!470067))))

(declare-fun b!5925553 () Bool)

(declare-fun e!3627110 () Bool)

(declare-fun e!3627113 () Bool)

(assert (=> b!5925553 (= e!3627110 e!3627113)))

(declare-fun res!2483260 () Bool)

(assert (=> b!5925553 (=> res!2483260 e!3627113)))

(assert (=> b!5925553 (= res!2483260 call!470067)))

(declare-fun b!5925554 () Bool)

(declare-fun res!2483254 () Bool)

(declare-fun e!3627112 () Bool)

(assert (=> b!5925554 (=> res!2483254 e!3627112)))

(assert (=> b!5925554 (= res!2483254 e!3627114)))

(declare-fun res!2483261 () Bool)

(assert (=> b!5925554 (=> (not res!2483261) (not e!3627114))))

(declare-fun lt!2310281 () Bool)

(assert (=> b!5925554 (= res!2483261 lt!2310281)))

(declare-fun b!5925555 () Bool)

(assert (=> b!5925555 (= e!3627114 (= (head!12487 (_1!36255 (get!22072 lt!2310226))) (c!1052981 (regOne!32458 r!7292))))))

(declare-fun b!5925556 () Bool)

(assert (=> b!5925556 (= e!3627113 (not (= (head!12487 (_1!36255 (get!22072 lt!2310226))) (c!1052981 (regOne!32458 r!7292)))))))

(declare-fun b!5925557 () Bool)

(declare-fun res!2483255 () Bool)

(assert (=> b!5925557 (=> res!2483255 e!3627113)))

(assert (=> b!5925557 (= res!2483255 (not (isEmpty!35957 (tail!11572 (_1!36255 (get!22072 lt!2310226))))))))

(declare-fun d!1857960 () Bool)

(declare-fun e!3627111 () Bool)

(assert (=> d!1857960 e!3627111))

(declare-fun c!1053178 () Bool)

(assert (=> d!1857960 (= c!1053178 ((_ is EmptyExpr!15973) (regOne!32458 r!7292)))))

(assert (=> d!1857960 (= lt!2310281 e!3627108)))

(declare-fun c!1053180 () Bool)

(assert (=> d!1857960 (= c!1053180 (isEmpty!35957 (_1!36255 (get!22072 lt!2310226))))))

(assert (=> d!1857960 (validRegex!7709 (regOne!32458 r!7292))))

(assert (=> d!1857960 (= (matchR!8156 (regOne!32458 r!7292) (_1!36255 (get!22072 lt!2310226))) lt!2310281)))

(declare-fun b!5925558 () Bool)

(declare-fun res!2483258 () Bool)

(assert (=> b!5925558 (=> res!2483258 e!3627112)))

(assert (=> b!5925558 (= res!2483258 (not ((_ is ElementMatch!15973) (regOne!32458 r!7292))))))

(declare-fun e!3627109 () Bool)

(assert (=> b!5925558 (= e!3627109 e!3627112)))

(declare-fun b!5925559 () Bool)

(assert (=> b!5925559 (= e!3627109 (not lt!2310281))))

(declare-fun b!5925560 () Bool)

(assert (=> b!5925560 (= e!3627112 e!3627110)))

(declare-fun res!2483259 () Bool)

(assert (=> b!5925560 (=> (not res!2483259) (not e!3627110))))

(assert (=> b!5925560 (= res!2483259 (not lt!2310281))))

(declare-fun b!5925561 () Bool)

(assert (=> b!5925561 (= e!3627111 e!3627109)))

(declare-fun c!1053179 () Bool)

(assert (=> b!5925561 (= c!1053179 ((_ is EmptyLang!15973) (regOne!32458 r!7292)))))

(declare-fun b!5925562 () Bool)

(assert (=> b!5925562 (= e!3627108 (matchR!8156 (derivativeStep!4703 (regOne!32458 r!7292) (head!12487 (_1!36255 (get!22072 lt!2310226)))) (tail!11572 (_1!36255 (get!22072 lt!2310226)))))))

(declare-fun b!5925563 () Bool)

(declare-fun res!2483256 () Bool)

(assert (=> b!5925563 (=> (not res!2483256) (not e!3627114))))

(assert (=> b!5925563 (= res!2483256 (isEmpty!35957 (tail!11572 (_1!36255 (get!22072 lt!2310226)))))))

(declare-fun b!5925564 () Bool)

(assert (=> b!5925564 (= e!3627111 (= lt!2310281 call!470067))))

(declare-fun bm!470062 () Bool)

(assert (=> bm!470062 (= call!470067 (isEmpty!35957 (_1!36255 (get!22072 lt!2310226))))))

(assert (= (and d!1857960 c!1053180) b!5925551))

(assert (= (and d!1857960 (not c!1053180)) b!5925562))

(assert (= (and d!1857960 c!1053178) b!5925564))

(assert (= (and d!1857960 (not c!1053178)) b!5925561))

(assert (= (and b!5925561 c!1053179) b!5925559))

(assert (= (and b!5925561 (not c!1053179)) b!5925558))

(assert (= (and b!5925558 (not res!2483258)) b!5925554))

(assert (= (and b!5925554 res!2483261) b!5925552))

(assert (= (and b!5925552 res!2483257) b!5925563))

(assert (= (and b!5925563 res!2483256) b!5925555))

(assert (= (and b!5925554 (not res!2483254)) b!5925560))

(assert (= (and b!5925560 res!2483259) b!5925553))

(assert (= (and b!5925553 (not res!2483260)) b!5925557))

(assert (= (and b!5925557 (not res!2483255)) b!5925556))

(assert (= (or b!5925564 b!5925552 b!5925553) bm!470062))

(declare-fun m!6819696 () Bool)

(assert (=> b!5925563 m!6819696))

(assert (=> b!5925563 m!6819696))

(declare-fun m!6819698 () Bool)

(assert (=> b!5925563 m!6819698))

(assert (=> b!5925551 m!6819338))

(declare-fun m!6819700 () Bool)

(assert (=> bm!470062 m!6819700))

(assert (=> d!1857960 m!6819700))

(assert (=> d!1857960 m!6819398))

(declare-fun m!6819702 () Bool)

(assert (=> b!5925555 m!6819702))

(assert (=> b!5925556 m!6819702))

(assert (=> b!5925557 m!6819696))

(assert (=> b!5925557 m!6819696))

(assert (=> b!5925557 m!6819698))

(assert (=> b!5925562 m!6819702))

(assert (=> b!5925562 m!6819702))

(declare-fun m!6819704 () Bool)

(assert (=> b!5925562 m!6819704))

(assert (=> b!5925562 m!6819696))

(assert (=> b!5925562 m!6819704))

(assert (=> b!5925562 m!6819696))

(declare-fun m!6819706 () Bool)

(assert (=> b!5925562 m!6819706))

(assert (=> b!5924987 d!1857960))

(assert (=> b!5924987 d!1857930))

(declare-fun d!1857962 () Bool)

(assert (=> d!1857962 (= (head!12487 s!2326) (h!70543 s!2326))))

(assert (=> b!5925184 d!1857962))

(declare-fun d!1857964 () Bool)

(declare-fun e!3627120 () Bool)

(assert (=> d!1857964 e!3627120))

(declare-fun res!2483266 () Bool)

(assert (=> d!1857964 (=> (not res!2483266) (not e!3627120))))

(declare-fun lt!2310284 () List!64219)

(declare-fun content!11805 (List!64219) (InoxSet C!32216))

(assert (=> d!1857964 (= res!2483266 (= (content!11805 lt!2310284) ((_ map or) (content!11805 (_1!36255 (get!22072 lt!2310226))) (content!11805 (_2!36255 (get!22072 lt!2310226))))))))

(declare-fun e!3627119 () List!64219)

(assert (=> d!1857964 (= lt!2310284 e!3627119)))

(declare-fun c!1053183 () Bool)

(assert (=> d!1857964 (= c!1053183 ((_ is Nil!64095) (_1!36255 (get!22072 lt!2310226))))))

(assert (=> d!1857964 (= (++!14070 (_1!36255 (get!22072 lt!2310226)) (_2!36255 (get!22072 lt!2310226))) lt!2310284)))

(declare-fun b!5925576 () Bool)

(assert (=> b!5925576 (= e!3627120 (or (not (= (_2!36255 (get!22072 lt!2310226)) Nil!64095)) (= lt!2310284 (_1!36255 (get!22072 lt!2310226)))))))

(declare-fun b!5925573 () Bool)

(assert (=> b!5925573 (= e!3627119 (_2!36255 (get!22072 lt!2310226)))))

(declare-fun b!5925575 () Bool)

(declare-fun res!2483267 () Bool)

(assert (=> b!5925575 (=> (not res!2483267) (not e!3627120))))

(declare-fun size!40139 (List!64219) Int)

(assert (=> b!5925575 (= res!2483267 (= (size!40139 lt!2310284) (+ (size!40139 (_1!36255 (get!22072 lt!2310226))) (size!40139 (_2!36255 (get!22072 lt!2310226))))))))

(declare-fun b!5925574 () Bool)

(assert (=> b!5925574 (= e!3627119 (Cons!64095 (h!70543 (_1!36255 (get!22072 lt!2310226))) (++!14070 (t!377612 (_1!36255 (get!22072 lt!2310226))) (_2!36255 (get!22072 lt!2310226)))))))

(assert (= (and d!1857964 c!1053183) b!5925573))

(assert (= (and d!1857964 (not c!1053183)) b!5925574))

(assert (= (and d!1857964 res!2483266) b!5925575))

(assert (= (and b!5925575 res!2483267) b!5925576))

(declare-fun m!6819708 () Bool)

(assert (=> d!1857964 m!6819708))

(declare-fun m!6819710 () Bool)

(assert (=> d!1857964 m!6819710))

(declare-fun m!6819712 () Bool)

(assert (=> d!1857964 m!6819712))

(declare-fun m!6819714 () Bool)

(assert (=> b!5925575 m!6819714))

(declare-fun m!6819716 () Bool)

(assert (=> b!5925575 m!6819716))

(declare-fun m!6819718 () Bool)

(assert (=> b!5925575 m!6819718))

(declare-fun m!6819720 () Bool)

(assert (=> b!5925574 m!6819720))

(assert (=> b!5924989 d!1857964))

(assert (=> b!5924989 d!1857930))

(assert (=> b!5925186 d!1857946))

(assert (=> b!5925186 d!1857948))

(assert (=> d!1857824 d!1857810))

(declare-fun d!1857966 () Bool)

(declare-fun res!2483270 () Bool)

(declare-fun e!3627122 () Bool)

(assert (=> d!1857966 (=> res!2483270 e!3627122)))

(assert (=> d!1857966 (= res!2483270 ((_ is ElementMatch!15973) (regOne!32458 r!7292)))))

(assert (=> d!1857966 (= (validRegex!7709 (regOne!32458 r!7292)) e!3627122)))

(declare-fun b!5925577 () Bool)

(declare-fun e!3627125 () Bool)

(declare-fun call!470070 () Bool)

(assert (=> b!5925577 (= e!3627125 call!470070)))

(declare-fun b!5925578 () Bool)

(declare-fun e!3627124 () Bool)

(declare-fun e!3627127 () Bool)

(assert (=> b!5925578 (= e!3627124 e!3627127)))

(declare-fun c!1053184 () Bool)

(assert (=> b!5925578 (= c!1053184 ((_ is Union!15973) (regOne!32458 r!7292)))))

(declare-fun bm!470063 () Bool)

(declare-fun call!470068 () Bool)

(assert (=> bm!470063 (= call!470070 call!470068)))

(declare-fun bm!470064 () Bool)

(declare-fun c!1053185 () Bool)

(assert (=> bm!470064 (= call!470068 (validRegex!7709 (ite c!1053185 (reg!16302 (regOne!32458 r!7292)) (ite c!1053184 (regTwo!32459 (regOne!32458 r!7292)) (regTwo!32458 (regOne!32458 r!7292))))))))

(declare-fun b!5925579 () Bool)

(declare-fun e!3627126 () Bool)

(assert (=> b!5925579 (= e!3627126 call!470070)))

(declare-fun b!5925580 () Bool)

(declare-fun e!3627121 () Bool)

(assert (=> b!5925580 (= e!3627121 call!470068)))

(declare-fun b!5925581 () Bool)

(declare-fun e!3627123 () Bool)

(assert (=> b!5925581 (= e!3627123 e!3627125)))

(declare-fun res!2483272 () Bool)

(assert (=> b!5925581 (=> (not res!2483272) (not e!3627125))))

(declare-fun call!470069 () Bool)

(assert (=> b!5925581 (= res!2483272 call!470069)))

(declare-fun b!5925582 () Bool)

(declare-fun res!2483271 () Bool)

(assert (=> b!5925582 (=> (not res!2483271) (not e!3627126))))

(assert (=> b!5925582 (= res!2483271 call!470069)))

(assert (=> b!5925582 (= e!3627127 e!3627126)))

(declare-fun bm!470065 () Bool)

(assert (=> bm!470065 (= call!470069 (validRegex!7709 (ite c!1053184 (regOne!32459 (regOne!32458 r!7292)) (regOne!32458 (regOne!32458 r!7292)))))))

(declare-fun b!5925583 () Bool)

(declare-fun res!2483269 () Bool)

(assert (=> b!5925583 (=> res!2483269 e!3627123)))

(assert (=> b!5925583 (= res!2483269 (not ((_ is Concat!24818) (regOne!32458 r!7292))))))

(assert (=> b!5925583 (= e!3627127 e!3627123)))

(declare-fun b!5925584 () Bool)

(assert (=> b!5925584 (= e!3627122 e!3627124)))

(assert (=> b!5925584 (= c!1053185 ((_ is Star!15973) (regOne!32458 r!7292)))))

(declare-fun b!5925585 () Bool)

(assert (=> b!5925585 (= e!3627124 e!3627121)))

(declare-fun res!2483268 () Bool)

(assert (=> b!5925585 (= res!2483268 (not (nullable!5968 (reg!16302 (regOne!32458 r!7292)))))))

(assert (=> b!5925585 (=> (not res!2483268) (not e!3627121))))

(assert (= (and d!1857966 (not res!2483270)) b!5925584))

(assert (= (and b!5925584 c!1053185) b!5925585))

(assert (= (and b!5925584 (not c!1053185)) b!5925578))

(assert (= (and b!5925585 res!2483268) b!5925580))

(assert (= (and b!5925578 c!1053184) b!5925582))

(assert (= (and b!5925578 (not c!1053184)) b!5925583))

(assert (= (and b!5925582 res!2483271) b!5925579))

(assert (= (and b!5925583 (not res!2483269)) b!5925581))

(assert (= (and b!5925581 res!2483272) b!5925577))

(assert (= (or b!5925579 b!5925577) bm!470063))

(assert (= (or b!5925582 b!5925581) bm!470065))

(assert (= (or b!5925580 bm!470063) bm!470064))

(declare-fun m!6819722 () Bool)

(assert (=> bm!470064 m!6819722))

(declare-fun m!6819724 () Bool)

(assert (=> bm!470065 m!6819724))

(declare-fun m!6819726 () Bool)

(assert (=> b!5925585 m!6819726))

(assert (=> d!1857824 d!1857966))

(assert (=> d!1857824 d!1857838))

(declare-fun d!1857968 () Bool)

(assert (=> d!1857968 (= (Exists!3043 lambda!323124) (choose!44663 lambda!323124))))

(declare-fun bs!1402334 () Bool)

(assert (= bs!1402334 d!1857968))

(declare-fun m!6819728 () Bool)

(assert (=> bs!1402334 m!6819728))

(assert (=> d!1857824 d!1857968))

(declare-fun bs!1402335 () Bool)

(declare-fun d!1857970 () Bool)

(assert (= bs!1402335 (and d!1857970 b!5925119)))

(declare-fun lambda!323178 () Int)

(assert (=> bs!1402335 (not (= lambda!323178 lambda!323151))))

(declare-fun bs!1402336 () Bool)

(assert (= bs!1402336 (and d!1857970 b!5925519)))

(assert (=> bs!1402336 (not (= lambda!323178 lambda!323172))))

(declare-fun bs!1402337 () Bool)

(assert (= bs!1402337 (and d!1857970 d!1857824)))

(assert (=> bs!1402337 (= lambda!323178 lambda!323124)))

(declare-fun bs!1402338 () Bool)

(assert (= bs!1402338 (and d!1857970 d!1857826)))

(assert (=> bs!1402338 (not (= lambda!323178 lambda!323136))))

(declare-fun bs!1402339 () Bool)

(assert (= bs!1402339 (and d!1857970 b!5925543)))

(assert (=> bs!1402339 (not (= lambda!323178 lambda!323175))))

(declare-fun bs!1402340 () Bool)

(assert (= bs!1402340 (and d!1857970 b!5925512)))

(assert (=> bs!1402340 (not (= lambda!323178 lambda!323173))))

(declare-fun bs!1402341 () Bool)

(assert (= bs!1402341 (and d!1857970 b!5924782)))

(assert (=> bs!1402341 (not (= lambda!323178 lambda!323103))))

(declare-fun bs!1402342 () Bool)

(assert (= bs!1402342 (and d!1857970 b!5925126)))

(assert (=> bs!1402342 (not (= lambda!323178 lambda!323149))))

(assert (=> bs!1402338 (= lambda!323178 lambda!323135)))

(declare-fun bs!1402343 () Bool)

(assert (= bs!1402343 (and d!1857970 b!5925550)))

(assert (=> bs!1402343 (not (= lambda!323178 lambda!323174))))

(assert (=> bs!1402341 (= lambda!323178 lambda!323102)))

(assert (=> d!1857970 true))

(assert (=> d!1857970 true))

(assert (=> d!1857970 true))

(assert (=> d!1857970 (= (isDefined!12567 (findConcatSeparation!2278 (regOne!32458 r!7292) (regTwo!32458 r!7292) Nil!64095 s!2326 s!2326)) (Exists!3043 lambda!323178))))

(assert (=> d!1857970 true))

(declare-fun _$89!1969 () Unit!157217)

(assert (=> d!1857970 (= (choose!44665 (regOne!32458 r!7292) (regTwo!32458 r!7292) s!2326) _$89!1969)))

(declare-fun bs!1402344 () Bool)

(assert (= bs!1402344 d!1857970))

(assert (=> bs!1402344 m!6819242))

(assert (=> bs!1402344 m!6819242))

(assert (=> bs!1402344 m!6819244))

(declare-fun m!6819730 () Bool)

(assert (=> bs!1402344 m!6819730))

(assert (=> d!1857824 d!1857970))

(assert (=> bs!1402280 d!1857878))

(assert (=> b!5925258 d!1857886))

(declare-fun d!1857972 () Bool)

(declare-fun res!2483279 () Bool)

(declare-fun e!3627131 () Bool)

(assert (=> d!1857972 (=> res!2483279 e!3627131)))

(assert (=> d!1857972 (= res!2483279 ((_ is ElementMatch!15973) lt!2310203))))

(assert (=> d!1857972 (= (validRegex!7709 lt!2310203) e!3627131)))

(declare-fun b!5925590 () Bool)

(declare-fun e!3627134 () Bool)

(declare-fun call!470073 () Bool)

(assert (=> b!5925590 (= e!3627134 call!470073)))

(declare-fun b!5925591 () Bool)

(declare-fun e!3627133 () Bool)

(declare-fun e!3627136 () Bool)

(assert (=> b!5925591 (= e!3627133 e!3627136)))

(declare-fun c!1053186 () Bool)

(assert (=> b!5925591 (= c!1053186 ((_ is Union!15973) lt!2310203))))

(declare-fun bm!470066 () Bool)

(declare-fun call!470071 () Bool)

(assert (=> bm!470066 (= call!470073 call!470071)))

(declare-fun bm!470067 () Bool)

(declare-fun c!1053187 () Bool)

(assert (=> bm!470067 (= call!470071 (validRegex!7709 (ite c!1053187 (reg!16302 lt!2310203) (ite c!1053186 (regTwo!32459 lt!2310203) (regTwo!32458 lt!2310203)))))))

(declare-fun b!5925592 () Bool)

(declare-fun e!3627135 () Bool)

(assert (=> b!5925592 (= e!3627135 call!470073)))

(declare-fun b!5925593 () Bool)

(declare-fun e!3627130 () Bool)

(assert (=> b!5925593 (= e!3627130 call!470071)))

(declare-fun b!5925594 () Bool)

(declare-fun e!3627132 () Bool)

(assert (=> b!5925594 (= e!3627132 e!3627134)))

(declare-fun res!2483281 () Bool)

(assert (=> b!5925594 (=> (not res!2483281) (not e!3627134))))

(declare-fun call!470072 () Bool)

(assert (=> b!5925594 (= res!2483281 call!470072)))

(declare-fun b!5925595 () Bool)

(declare-fun res!2483280 () Bool)

(assert (=> b!5925595 (=> (not res!2483280) (not e!3627135))))

(assert (=> b!5925595 (= res!2483280 call!470072)))

(assert (=> b!5925595 (= e!3627136 e!3627135)))

(declare-fun bm!470068 () Bool)

(assert (=> bm!470068 (= call!470072 (validRegex!7709 (ite c!1053186 (regOne!32459 lt!2310203) (regOne!32458 lt!2310203))))))

(declare-fun b!5925596 () Bool)

(declare-fun res!2483278 () Bool)

(assert (=> b!5925596 (=> res!2483278 e!3627132)))

(assert (=> b!5925596 (= res!2483278 (not ((_ is Concat!24818) lt!2310203)))))

(assert (=> b!5925596 (= e!3627136 e!3627132)))

(declare-fun b!5925597 () Bool)

(assert (=> b!5925597 (= e!3627131 e!3627133)))

(assert (=> b!5925597 (= c!1053187 ((_ is Star!15973) lt!2310203))))

(declare-fun b!5925598 () Bool)

(assert (=> b!5925598 (= e!3627133 e!3627130)))

(declare-fun res!2483277 () Bool)

(assert (=> b!5925598 (= res!2483277 (not (nullable!5968 (reg!16302 lt!2310203))))))

(assert (=> b!5925598 (=> (not res!2483277) (not e!3627130))))

(assert (= (and d!1857972 (not res!2483279)) b!5925597))

(assert (= (and b!5925597 c!1053187) b!5925598))

(assert (= (and b!5925597 (not c!1053187)) b!5925591))

(assert (= (and b!5925598 res!2483277) b!5925593))

(assert (= (and b!5925591 c!1053186) b!5925595))

(assert (= (and b!5925591 (not c!1053186)) b!5925596))

(assert (= (and b!5925595 res!2483280) b!5925592))

(assert (= (and b!5925596 (not res!2483278)) b!5925594))

(assert (= (and b!5925594 res!2483281) b!5925590))

(assert (= (or b!5925592 b!5925590) bm!470066))

(assert (= (or b!5925595 b!5925594) bm!470068))

(assert (= (or b!5925593 bm!470066) bm!470067))

(declare-fun m!6819732 () Bool)

(assert (=> bm!470067 m!6819732))

(declare-fun m!6819734 () Bool)

(assert (=> bm!470068 m!6819734))

(declare-fun m!6819736 () Bool)

(assert (=> b!5925598 m!6819736))

(assert (=> d!1857796 d!1857972))

(declare-fun d!1857974 () Bool)

(declare-fun res!2483282 () Bool)

(declare-fun e!3627137 () Bool)

(assert (=> d!1857974 (=> res!2483282 e!3627137)))

(assert (=> d!1857974 (= res!2483282 ((_ is Nil!64094) (unfocusZipperList!1394 zl!343)))))

(assert (=> d!1857974 (= (forall!15055 (unfocusZipperList!1394 zl!343) lambda!323110) e!3627137)))

(declare-fun b!5925599 () Bool)

(declare-fun e!3627138 () Bool)

(assert (=> b!5925599 (= e!3627137 e!3627138)))

(declare-fun res!2483283 () Bool)

(assert (=> b!5925599 (=> (not res!2483283) (not e!3627138))))

(assert (=> b!5925599 (= res!2483283 (dynLambda!25061 lambda!323110 (h!70542 (unfocusZipperList!1394 zl!343))))))

(declare-fun b!5925600 () Bool)

(assert (=> b!5925600 (= e!3627138 (forall!15055 (t!377611 (unfocusZipperList!1394 zl!343)) lambda!323110))))

(assert (= (and d!1857974 (not res!2483282)) b!5925599))

(assert (= (and b!5925599 res!2483283) b!5925600))

(declare-fun b_lambda!222547 () Bool)

(assert (=> (not b_lambda!222547) (not b!5925599)))

(declare-fun m!6819738 () Bool)

(assert (=> b!5925599 m!6819738))

(declare-fun m!6819740 () Bool)

(assert (=> b!5925600 m!6819740))

(assert (=> d!1857796 d!1857974))

(declare-fun d!1857976 () Bool)

(declare-fun res!2483284 () Bool)

(declare-fun e!3627139 () Bool)

(assert (=> d!1857976 (=> res!2483284 e!3627139)))

(assert (=> d!1857976 (= res!2483284 ((_ is Nil!64094) (exprs!5857 (Context!10715 (Cons!64094 (regTwo!32458 r!7292) Nil!64094)))))))

(assert (=> d!1857976 (= (forall!15055 (exprs!5857 (Context!10715 (Cons!64094 (regTwo!32458 r!7292) Nil!64094))) lambda!323107) e!3627139)))

(declare-fun b!5925601 () Bool)

(declare-fun e!3627140 () Bool)

(assert (=> b!5925601 (= e!3627139 e!3627140)))

(declare-fun res!2483285 () Bool)

(assert (=> b!5925601 (=> (not res!2483285) (not e!3627140))))

(assert (=> b!5925601 (= res!2483285 (dynLambda!25061 lambda!323107 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 (regTwo!32458 r!7292) Nil!64094))))))))

(declare-fun b!5925602 () Bool)

(assert (=> b!5925602 (= e!3627140 (forall!15055 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 (regTwo!32458 r!7292) Nil!64094)))) lambda!323107))))

(assert (= (and d!1857976 (not res!2483284)) b!5925601))

(assert (= (and b!5925601 res!2483285) b!5925602))

(declare-fun b_lambda!222549 () Bool)

(assert (=> (not b_lambda!222549) (not b!5925601)))

(declare-fun m!6819742 () Bool)

(assert (=> b!5925601 m!6819742))

(declare-fun m!6819744 () Bool)

(assert (=> b!5925602 m!6819744))

(assert (=> d!1857794 d!1857976))

(declare-fun b!5925603 () Bool)

(declare-fun e!3627141 () (InoxSet Context!10714))

(declare-fun call!470074 () (InoxSet Context!10714))

(assert (=> b!5925603 (= e!3627141 call!470074)))

(declare-fun e!3627143 () (InoxSet Context!10714))

(declare-fun b!5925604 () Bool)

(assert (=> b!5925604 (= e!3627143 ((_ map or) call!470074 (derivationStepZipperUp!1149 (Context!10715 (t!377611 (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343))))))) (h!70543 s!2326))))))

(declare-fun b!5925605 () Bool)

(assert (=> b!5925605 (= e!3627141 ((as const (Array Context!10714 Bool)) false))))

(declare-fun b!5925606 () Bool)

(assert (=> b!5925606 (= e!3627143 e!3627141)))

(declare-fun c!1053189 () Bool)

(assert (=> b!5925606 (= c!1053189 ((_ is Cons!64094) (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343)))))))))

(declare-fun d!1857978 () Bool)

(declare-fun c!1053188 () Bool)

(declare-fun e!3627142 () Bool)

(assert (=> d!1857978 (= c!1053188 e!3627142)))

(declare-fun res!2483286 () Bool)

(assert (=> d!1857978 (=> (not res!2483286) (not e!3627142))))

(assert (=> d!1857978 (= res!2483286 ((_ is Cons!64094) (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343)))))))))

(assert (=> d!1857978 (= (derivationStepZipperUp!1149 (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343)))) (h!70543 s!2326)) e!3627143)))

(declare-fun bm!470069 () Bool)

(assert (=> bm!470069 (= call!470074 (derivationStepZipperDown!1223 (h!70542 (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343)))))) (Context!10715 (t!377611 (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343))))))) (h!70543 s!2326)))))

(declare-fun b!5925607 () Bool)

(assert (=> b!5925607 (= e!3627142 (nullable!5968 (h!70542 (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343))))))))))

(assert (= (and d!1857978 res!2483286) b!5925607))

(assert (= (and d!1857978 c!1053188) b!5925604))

(assert (= (and d!1857978 (not c!1053188)) b!5925606))

(assert (= (and b!5925606 c!1053189) b!5925603))

(assert (= (and b!5925606 (not c!1053189)) b!5925605))

(assert (= (or b!5925604 b!5925603) bm!470069))

(declare-fun m!6819746 () Bool)

(assert (=> b!5925604 m!6819746))

(declare-fun m!6819748 () Bool)

(assert (=> bm!470069 m!6819748))

(declare-fun m!6819750 () Bool)

(assert (=> b!5925607 m!6819750))

(assert (=> b!5925279 d!1857978))

(declare-fun d!1857980 () Bool)

(assert (=> d!1857980 true))

(declare-fun setRes!40211 () Bool)

(assert (=> d!1857980 setRes!40211))

(declare-fun condSetEmpty!40211 () Bool)

(declare-fun res!2483289 () (InoxSet Context!10714))

(assert (=> d!1857980 (= condSetEmpty!40211 (= res!2483289 ((as const (Array Context!10714 Bool)) false)))))

(assert (=> d!1857980 (= (choose!44670 z!1189 lambda!323104) res!2483289)))

(declare-fun setIsEmpty!40211 () Bool)

(assert (=> setIsEmpty!40211 setRes!40211))

(declare-fun tp!1647844 () Bool)

(declare-fun e!3627146 () Bool)

(declare-fun setNonEmpty!40211 () Bool)

(declare-fun setElem!40211 () Context!10714)

(assert (=> setNonEmpty!40211 (= setRes!40211 (and tp!1647844 (inv!83179 setElem!40211) e!3627146))))

(declare-fun setRest!40211 () (InoxSet Context!10714))

(assert (=> setNonEmpty!40211 (= res!2483289 ((_ map or) (store ((as const (Array Context!10714 Bool)) false) setElem!40211 true) setRest!40211))))

(declare-fun b!5925610 () Bool)

(declare-fun tp!1647843 () Bool)

(assert (=> b!5925610 (= e!3627146 tp!1647843)))

(assert (= (and d!1857980 condSetEmpty!40211) setIsEmpty!40211))

(assert (= (and d!1857980 (not condSetEmpty!40211)) setNonEmpty!40211))

(assert (= setNonEmpty!40211 b!5925610))

(declare-fun m!6819752 () Bool)

(assert (=> setNonEmpty!40211 m!6819752))

(assert (=> d!1857876 d!1857980))

(declare-fun d!1857982 () Bool)

(assert (=> d!1857982 (= (nullable!5968 r!7292) (nullableFct!1939 r!7292))))

(declare-fun bs!1402345 () Bool)

(assert (= bs!1402345 d!1857982))

(declare-fun m!6819754 () Bool)

(assert (=> bs!1402345 m!6819754))

(assert (=> b!5925180 d!1857982))

(declare-fun d!1857984 () Bool)

(assert (=> d!1857984 (= (Exists!3043 lambda!323135) (choose!44663 lambda!323135))))

(declare-fun bs!1402346 () Bool)

(assert (= bs!1402346 d!1857984))

(declare-fun m!6819756 () Bool)

(assert (=> bs!1402346 m!6819756))

(assert (=> d!1857826 d!1857984))

(declare-fun d!1857986 () Bool)

(assert (=> d!1857986 (= (Exists!3043 lambda!323136) (choose!44663 lambda!323136))))

(declare-fun bs!1402347 () Bool)

(assert (= bs!1402347 d!1857986))

(declare-fun m!6819758 () Bool)

(assert (=> bs!1402347 m!6819758))

(assert (=> d!1857826 d!1857986))

(declare-fun bs!1402348 () Bool)

(declare-fun d!1857988 () Bool)

(assert (= bs!1402348 (and d!1857988 b!5925119)))

(declare-fun lambda!323183 () Int)

(assert (=> bs!1402348 (not (= lambda!323183 lambda!323151))))

(declare-fun bs!1402349 () Bool)

(assert (= bs!1402349 (and d!1857988 b!5925519)))

(assert (=> bs!1402349 (not (= lambda!323183 lambda!323172))))

(declare-fun bs!1402350 () Bool)

(assert (= bs!1402350 (and d!1857988 d!1857826)))

(assert (=> bs!1402350 (not (= lambda!323183 lambda!323136))))

(declare-fun bs!1402351 () Bool)

(assert (= bs!1402351 (and d!1857988 b!5925543)))

(assert (=> bs!1402351 (not (= lambda!323183 lambda!323175))))

(declare-fun bs!1402352 () Bool)

(assert (= bs!1402352 (and d!1857988 b!5925512)))

(assert (=> bs!1402352 (not (= lambda!323183 lambda!323173))))

(declare-fun bs!1402353 () Bool)

(assert (= bs!1402353 (and d!1857988 b!5924782)))

(assert (=> bs!1402353 (not (= lambda!323183 lambda!323103))))

(declare-fun bs!1402354 () Bool)

(assert (= bs!1402354 (and d!1857988 b!5925126)))

(assert (=> bs!1402354 (not (= lambda!323183 lambda!323149))))

(assert (=> bs!1402350 (= lambda!323183 lambda!323135)))

(declare-fun bs!1402355 () Bool)

(assert (= bs!1402355 (and d!1857988 d!1857824)))

(assert (=> bs!1402355 (= lambda!323183 lambda!323124)))

(declare-fun bs!1402356 () Bool)

(assert (= bs!1402356 (and d!1857988 d!1857970)))

(assert (=> bs!1402356 (= lambda!323183 lambda!323178)))

(declare-fun bs!1402357 () Bool)

(assert (= bs!1402357 (and d!1857988 b!5925550)))

(assert (=> bs!1402357 (not (= lambda!323183 lambda!323174))))

(assert (=> bs!1402353 (= lambda!323183 lambda!323102)))

(assert (=> d!1857988 true))

(assert (=> d!1857988 true))

(assert (=> d!1857988 true))

(declare-fun lambda!323184 () Int)

(assert (=> bs!1402348 (= lambda!323184 lambda!323151)))

(assert (=> bs!1402349 (not (= lambda!323184 lambda!323172))))

(assert (=> bs!1402350 (= lambda!323184 lambda!323136)))

(declare-fun bs!1402358 () Bool)

(assert (= bs!1402358 d!1857988))

(assert (=> bs!1402358 (not (= lambda!323184 lambda!323183))))

(assert (=> bs!1402351 (= (and (= (regOne!32458 r!7292) (regOne!32458 (regOne!32459 r!7292))) (= (regTwo!32458 r!7292) (regTwo!32458 (regOne!32459 r!7292)))) (= lambda!323184 lambda!323175))))

(assert (=> bs!1402352 (= (and (= (regOne!32458 r!7292) (regOne!32458 (regTwo!32459 r!7292))) (= (regTwo!32458 r!7292) (regTwo!32458 (regTwo!32459 r!7292)))) (= lambda!323184 lambda!323173))))

(assert (=> bs!1402353 (= lambda!323184 lambda!323103)))

(assert (=> bs!1402354 (not (= lambda!323184 lambda!323149))))

(assert (=> bs!1402350 (not (= lambda!323184 lambda!323135))))

(assert (=> bs!1402355 (not (= lambda!323184 lambda!323124))))

(assert (=> bs!1402356 (not (= lambda!323184 lambda!323178))))

(assert (=> bs!1402357 (not (= lambda!323184 lambda!323174))))

(assert (=> bs!1402353 (not (= lambda!323184 lambda!323102))))

(assert (=> d!1857988 true))

(assert (=> d!1857988 true))

(assert (=> d!1857988 true))

(assert (=> d!1857988 (= (Exists!3043 lambda!323183) (Exists!3043 lambda!323184))))

(assert (=> d!1857988 true))

(declare-fun _$90!1593 () Unit!157217)

(assert (=> d!1857988 (= (choose!44666 (regOne!32458 r!7292) (regTwo!32458 r!7292) s!2326) _$90!1593)))

(declare-fun m!6819760 () Bool)

(assert (=> bs!1402358 m!6819760))

(declare-fun m!6819762 () Bool)

(assert (=> bs!1402358 m!6819762))

(assert (=> d!1857826 d!1857988))

(assert (=> d!1857826 d!1857966))

(declare-fun bs!1402359 () Bool)

(declare-fun d!1857990 () Bool)

(assert (= bs!1402359 (and d!1857990 d!1857840)))

(declare-fun lambda!323185 () Int)

(assert (=> bs!1402359 (= lambda!323185 lambda!323137)))

(declare-fun bs!1402360 () Bool)

(assert (= bs!1402360 (and d!1857990 d!1857796)))

(assert (=> bs!1402360 (= lambda!323185 lambda!323110)))

(declare-fun bs!1402361 () Bool)

(assert (= bs!1402361 (and d!1857990 d!1857800)))

(assert (=> bs!1402361 (= lambda!323185 lambda!323113)))

(declare-fun bs!1402362 () Bool)

(assert (= bs!1402362 (and d!1857990 d!1857872)))

(assert (=> bs!1402362 (= lambda!323185 lambda!323162)))

(declare-fun bs!1402363 () Bool)

(assert (= bs!1402363 (and d!1857990 d!1857932)))

(assert (=> bs!1402363 (= lambda!323185 lambda!323171)))

(declare-fun bs!1402364 () Bool)

(assert (= bs!1402364 (and d!1857990 d!1857920)))

(assert (=> bs!1402364 (= lambda!323185 lambda!323169)))

(declare-fun bs!1402365 () Bool)

(assert (= bs!1402365 (and d!1857990 d!1857794)))

(assert (=> bs!1402365 (= lambda!323185 lambda!323107)))

(declare-fun bs!1402366 () Bool)

(assert (= bs!1402366 (and d!1857990 d!1857922)))

(assert (=> bs!1402366 (= lambda!323185 lambda!323170)))

(declare-fun bs!1402367 () Bool)

(assert (= bs!1402367 (and d!1857990 d!1857894)))

(assert (=> bs!1402367 (= lambda!323185 lambda!323168)))

(declare-fun b!5925619 () Bool)

(declare-fun e!3627156 () Bool)

(declare-fun e!3627151 () Bool)

(assert (=> b!5925619 (= e!3627156 e!3627151)))

(declare-fun c!1053193 () Bool)

(assert (=> b!5925619 (= c!1053193 (isEmpty!35953 (tail!11570 (t!377611 (exprs!5857 (h!70544 zl!343))))))))

(declare-fun b!5925620 () Bool)

(declare-fun lt!2310285 () Regex!15973)

(assert (=> b!5925620 (= e!3627156 (isEmptyExpr!1401 lt!2310285))))

(declare-fun b!5925621 () Bool)

(declare-fun e!3627153 () Bool)

(assert (=> b!5925621 (= e!3627153 e!3627156)))

(declare-fun c!1053191 () Bool)

(assert (=> b!5925621 (= c!1053191 (isEmpty!35953 (t!377611 (exprs!5857 (h!70544 zl!343)))))))

(declare-fun b!5925622 () Bool)

(declare-fun e!3627152 () Bool)

(assert (=> b!5925622 (= e!3627152 (isEmpty!35953 (t!377611 (t!377611 (exprs!5857 (h!70544 zl!343))))))))

(declare-fun b!5925623 () Bool)

(assert (=> b!5925623 (= e!3627151 (= lt!2310285 (head!12485 (t!377611 (exprs!5857 (h!70544 zl!343))))))))

(declare-fun b!5925624 () Bool)

(declare-fun e!3627155 () Regex!15973)

(assert (=> b!5925624 (= e!3627155 EmptyExpr!15973)))

(assert (=> d!1857990 e!3627153))

(declare-fun res!2483299 () Bool)

(assert (=> d!1857990 (=> (not res!2483299) (not e!3627153))))

(assert (=> d!1857990 (= res!2483299 (validRegex!7709 lt!2310285))))

(declare-fun e!3627154 () Regex!15973)

(assert (=> d!1857990 (= lt!2310285 e!3627154)))

(declare-fun c!1053190 () Bool)

(assert (=> d!1857990 (= c!1053190 e!3627152)))

(declare-fun res!2483298 () Bool)

(assert (=> d!1857990 (=> (not res!2483298) (not e!3627152))))

(assert (=> d!1857990 (= res!2483298 ((_ is Cons!64094) (t!377611 (exprs!5857 (h!70544 zl!343)))))))

(assert (=> d!1857990 (forall!15055 (t!377611 (exprs!5857 (h!70544 zl!343))) lambda!323185)))

(assert (=> d!1857990 (= (generalisedConcat!1570 (t!377611 (exprs!5857 (h!70544 zl!343)))) lt!2310285)))

(declare-fun b!5925625 () Bool)

(assert (=> b!5925625 (= e!3627151 (isConcat!924 lt!2310285))))

(declare-fun b!5925626 () Bool)

(assert (=> b!5925626 (= e!3627155 (Concat!24818 (h!70542 (t!377611 (exprs!5857 (h!70544 zl!343)))) (generalisedConcat!1570 (t!377611 (t!377611 (exprs!5857 (h!70544 zl!343)))))))))

(declare-fun b!5925627 () Bool)

(assert (=> b!5925627 (= e!3627154 (h!70542 (t!377611 (exprs!5857 (h!70544 zl!343)))))))

(declare-fun b!5925628 () Bool)

(assert (=> b!5925628 (= e!3627154 e!3627155)))

(declare-fun c!1053192 () Bool)

(assert (=> b!5925628 (= c!1053192 ((_ is Cons!64094) (t!377611 (exprs!5857 (h!70544 zl!343)))))))

(assert (= (and d!1857990 res!2483298) b!5925622))

(assert (= (and d!1857990 c!1053190) b!5925627))

(assert (= (and d!1857990 (not c!1053190)) b!5925628))

(assert (= (and b!5925628 c!1053192) b!5925626))

(assert (= (and b!5925628 (not c!1053192)) b!5925624))

(assert (= (and d!1857990 res!2483299) b!5925621))

(assert (= (and b!5925621 c!1053191) b!5925620))

(assert (= (and b!5925621 (not c!1053191)) b!5925619))

(assert (= (and b!5925619 c!1053193) b!5925623))

(assert (= (and b!5925619 (not c!1053193)) b!5925625))

(declare-fun m!6819764 () Bool)

(assert (=> b!5925626 m!6819764))

(declare-fun m!6819766 () Bool)

(assert (=> b!5925623 m!6819766))

(declare-fun m!6819768 () Bool)

(assert (=> b!5925620 m!6819768))

(declare-fun m!6819770 () Bool)

(assert (=> b!5925625 m!6819770))

(declare-fun m!6819772 () Bool)

(assert (=> b!5925619 m!6819772))

(assert (=> b!5925619 m!6819772))

(declare-fun m!6819774 () Bool)

(assert (=> b!5925619 m!6819774))

(declare-fun m!6819776 () Bool)

(assert (=> b!5925622 m!6819776))

(declare-fun m!6819778 () Bool)

(assert (=> d!1857990 m!6819778))

(declare-fun m!6819780 () Bool)

(assert (=> d!1857990 m!6819780))

(assert (=> b!5925621 m!6819280))

(assert (=> b!5925262 d!1857990))

(declare-fun d!1857992 () Bool)

(assert (=> d!1857992 (= (isEmpty!35956 (findConcatSeparation!2278 (regOne!32458 r!7292) (regTwo!32458 r!7292) Nil!64095 s!2326 s!2326)) (not ((_ is Some!15863) (findConcatSeparation!2278 (regOne!32458 r!7292) (regTwo!32458 r!7292) Nil!64095 s!2326 s!2326))))))

(assert (=> d!1857838 d!1857992))

(assert (=> d!1857866 d!1857854))

(assert (=> d!1857866 d!1857842))

(declare-fun d!1857994 () Bool)

(assert (=> d!1857994 (= (matchR!8156 r!7292 s!2326) (matchRSpec!3074 r!7292 s!2326))))

(assert (=> d!1857994 true))

(declare-fun _$88!4407 () Unit!157217)

(assert (=> d!1857994 (= (choose!44668 r!7292 s!2326) _$88!4407)))

(declare-fun bs!1402368 () Bool)

(assert (= bs!1402368 d!1857994))

(assert (=> bs!1402368 m!6819274))

(assert (=> bs!1402368 m!6819272))

(assert (=> d!1857866 d!1857994))

(assert (=> d!1857866 d!1857888))

(declare-fun d!1857996 () Bool)

(assert (=> d!1857996 (= (isEmpty!35953 (t!377611 (unfocusZipperList!1394 zl!343))) ((_ is Nil!64094) (t!377611 (unfocusZipperList!1394 zl!343))))))

(assert (=> b!5924851 d!1857996))

(declare-fun d!1857998 () Bool)

(assert (=> d!1857998 (= (isEmpty!35953 (unfocusZipperList!1394 zl!343)) ((_ is Nil!64094) (unfocusZipperList!1394 zl!343)))))

(assert (=> b!5924855 d!1857998))

(declare-fun d!1858000 () Bool)

(declare-fun res!2483302 () Bool)

(declare-fun e!3627158 () Bool)

(assert (=> d!1858000 (=> res!2483302 e!3627158)))

(assert (=> d!1858000 (= res!2483302 ((_ is ElementMatch!15973) (ite c!1053148 (reg!16302 r!7292) (ite c!1053147 (regTwo!32459 r!7292) (regTwo!32458 r!7292)))))))

(assert (=> d!1858000 (= (validRegex!7709 (ite c!1053148 (reg!16302 r!7292) (ite c!1053147 (regTwo!32459 r!7292) (regTwo!32458 r!7292)))) e!3627158)))

(declare-fun b!5925629 () Bool)

(declare-fun e!3627161 () Bool)

(declare-fun call!470077 () Bool)

(assert (=> b!5925629 (= e!3627161 call!470077)))

(declare-fun b!5925630 () Bool)

(declare-fun e!3627160 () Bool)

(declare-fun e!3627163 () Bool)

(assert (=> b!5925630 (= e!3627160 e!3627163)))

(declare-fun c!1053194 () Bool)

(assert (=> b!5925630 (= c!1053194 ((_ is Union!15973) (ite c!1053148 (reg!16302 r!7292) (ite c!1053147 (regTwo!32459 r!7292) (regTwo!32458 r!7292)))))))

(declare-fun bm!470070 () Bool)

(declare-fun call!470075 () Bool)

(assert (=> bm!470070 (= call!470077 call!470075)))

(declare-fun bm!470071 () Bool)

(declare-fun c!1053195 () Bool)

(assert (=> bm!470071 (= call!470075 (validRegex!7709 (ite c!1053195 (reg!16302 (ite c!1053148 (reg!16302 r!7292) (ite c!1053147 (regTwo!32459 r!7292) (regTwo!32458 r!7292)))) (ite c!1053194 (regTwo!32459 (ite c!1053148 (reg!16302 r!7292) (ite c!1053147 (regTwo!32459 r!7292) (regTwo!32458 r!7292)))) (regTwo!32458 (ite c!1053148 (reg!16302 r!7292) (ite c!1053147 (regTwo!32459 r!7292) (regTwo!32458 r!7292))))))))))

(declare-fun b!5925631 () Bool)

(declare-fun e!3627162 () Bool)

(assert (=> b!5925631 (= e!3627162 call!470077)))

(declare-fun b!5925632 () Bool)

(declare-fun e!3627157 () Bool)

(assert (=> b!5925632 (= e!3627157 call!470075)))

(declare-fun b!5925633 () Bool)

(declare-fun e!3627159 () Bool)

(assert (=> b!5925633 (= e!3627159 e!3627161)))

(declare-fun res!2483304 () Bool)

(assert (=> b!5925633 (=> (not res!2483304) (not e!3627161))))

(declare-fun call!470076 () Bool)

(assert (=> b!5925633 (= res!2483304 call!470076)))

(declare-fun b!5925634 () Bool)

(declare-fun res!2483303 () Bool)

(assert (=> b!5925634 (=> (not res!2483303) (not e!3627162))))

(assert (=> b!5925634 (= res!2483303 call!470076)))

(assert (=> b!5925634 (= e!3627163 e!3627162)))

(declare-fun bm!470072 () Bool)

(assert (=> bm!470072 (= call!470076 (validRegex!7709 (ite c!1053194 (regOne!32459 (ite c!1053148 (reg!16302 r!7292) (ite c!1053147 (regTwo!32459 r!7292) (regTwo!32458 r!7292)))) (regOne!32458 (ite c!1053148 (reg!16302 r!7292) (ite c!1053147 (regTwo!32459 r!7292) (regTwo!32458 r!7292)))))))))

(declare-fun b!5925635 () Bool)

(declare-fun res!2483301 () Bool)

(assert (=> b!5925635 (=> res!2483301 e!3627159)))

(assert (=> b!5925635 (= res!2483301 (not ((_ is Concat!24818) (ite c!1053148 (reg!16302 r!7292) (ite c!1053147 (regTwo!32459 r!7292) (regTwo!32458 r!7292))))))))

(assert (=> b!5925635 (= e!3627163 e!3627159)))

(declare-fun b!5925636 () Bool)

(assert (=> b!5925636 (= e!3627158 e!3627160)))

(assert (=> b!5925636 (= c!1053195 ((_ is Star!15973) (ite c!1053148 (reg!16302 r!7292) (ite c!1053147 (regTwo!32459 r!7292) (regTwo!32458 r!7292)))))))

(declare-fun b!5925637 () Bool)

(assert (=> b!5925637 (= e!3627160 e!3627157)))

(declare-fun res!2483300 () Bool)

(assert (=> b!5925637 (= res!2483300 (not (nullable!5968 (reg!16302 (ite c!1053148 (reg!16302 r!7292) (ite c!1053147 (regTwo!32459 r!7292) (regTwo!32458 r!7292)))))))))

(assert (=> b!5925637 (=> (not res!2483300) (not e!3627157))))

(assert (= (and d!1858000 (not res!2483302)) b!5925636))

(assert (= (and b!5925636 c!1053195) b!5925637))

(assert (= (and b!5925636 (not c!1053195)) b!5925630))

(assert (= (and b!5925637 res!2483300) b!5925632))

(assert (= (and b!5925630 c!1053194) b!5925634))

(assert (= (and b!5925630 (not c!1053194)) b!5925635))

(assert (= (and b!5925634 res!2483303) b!5925631))

(assert (= (and b!5925635 (not res!2483301)) b!5925633))

(assert (= (and b!5925633 res!2483304) b!5925629))

(assert (= (or b!5925631 b!5925629) bm!470070))

(assert (= (or b!5925634 b!5925633) bm!470072))

(assert (= (or b!5925632 bm!470070) bm!470071))

(declare-fun m!6819782 () Bool)

(assert (=> bm!470071 m!6819782))

(declare-fun m!6819784 () Bool)

(assert (=> bm!470072 m!6819784))

(declare-fun m!6819786 () Bool)

(assert (=> b!5925637 m!6819786))

(assert (=> bm!470041 d!1858000))

(declare-fun bm!470073 () Bool)

(declare-fun call!470078 () (InoxSet Context!10714))

(declare-fun call!470082 () (InoxSet Context!10714))

(assert (=> bm!470073 (= call!470078 call!470082)))

(declare-fun b!5925638 () Bool)

(declare-fun e!3627166 () (InoxSet Context!10714))

(assert (=> b!5925638 (= e!3627166 (store ((as const (Array Context!10714 Bool)) false) (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) true))))

(declare-fun b!5925639 () Bool)

(declare-fun e!3627169 () (InoxSet Context!10714))

(declare-fun call!470083 () (InoxSet Context!10714))

(assert (=> b!5925639 (= e!3627169 call!470083)))

(declare-fun b!5925641 () Bool)

(declare-fun e!3627167 () (InoxSet Context!10714))

(declare-fun call!470080 () (InoxSet Context!10714))

(assert (=> b!5925641 (= e!3627167 ((_ map or) call!470082 call!470080))))

(declare-fun b!5925642 () Bool)

(declare-fun e!3627164 () (InoxSet Context!10714))

(assert (=> b!5925642 (= e!3627164 call!470083)))

(declare-fun b!5925643 () Bool)

(declare-fun e!3627165 () (InoxSet Context!10714))

(assert (=> b!5925643 (= e!3627165 e!3627169)))

(declare-fun c!1053200 () Bool)

(assert (=> b!5925643 (= c!1053200 ((_ is Concat!24818) (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))))))

(declare-fun b!5925644 () Bool)

(declare-fun c!1053198 () Bool)

(assert (=> b!5925644 (= c!1053198 ((_ is Star!15973) (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))))))

(assert (=> b!5925644 (= e!3627169 e!3627164)))

(declare-fun bm!470074 () Bool)

(declare-fun c!1053199 () Bool)

(declare-fun call!470081 () List!64218)

(assert (=> bm!470074 (= call!470080 (derivationStepZipperDown!1223 (ite c!1053199 (regTwo!32459 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (regOne!32458 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094)))))) (ite c!1053199 (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (Context!10715 call!470081)) (h!70543 s!2326)))))

(declare-fun c!1053196 () Bool)

(declare-fun call!470079 () List!64218)

(declare-fun bm!470075 () Bool)

(assert (=> bm!470075 (= call!470082 (derivationStepZipperDown!1223 (ite c!1053199 (regOne!32459 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (ite c!1053196 (regTwo!32458 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (ite c!1053200 (regOne!32458 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (reg!16302 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094)))))))) (ite (or c!1053199 c!1053196) (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (Context!10715 call!470079)) (h!70543 s!2326)))))

(declare-fun b!5925645 () Bool)

(declare-fun e!3627168 () Bool)

(assert (=> b!5925645 (= e!3627168 (nullable!5968 (regOne!32458 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094)))))))))

(declare-fun bm!470076 () Bool)

(assert (=> bm!470076 (= call!470083 call!470078)))

(declare-fun b!5925646 () Bool)

(assert (=> b!5925646 (= e!3627165 ((_ map or) call!470080 call!470078))))

(declare-fun bm!470077 () Bool)

(assert (=> bm!470077 (= call!470079 call!470081)))

(declare-fun b!5925647 () Bool)

(assert (=> b!5925647 (= c!1053196 e!3627168)))

(declare-fun res!2483305 () Bool)

(assert (=> b!5925647 (=> (not res!2483305) (not e!3627168))))

(assert (=> b!5925647 (= res!2483305 ((_ is Concat!24818) (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))))))

(assert (=> b!5925647 (= e!3627167 e!3627165)))

(declare-fun d!1858002 () Bool)

(declare-fun c!1053197 () Bool)

(assert (=> d!1858002 (= c!1053197 (and ((_ is ElementMatch!15973) (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (= (c!1052981 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (h!70543 s!2326))))))

(assert (=> d!1858002 (= (derivationStepZipperDown!1223 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094)))) (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (h!70543 s!2326)) e!3627166)))

(declare-fun b!5925640 () Bool)

(assert (=> b!5925640 (= e!3627166 e!3627167)))

(assert (=> b!5925640 (= c!1053199 ((_ is Union!15973) (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))))))

(declare-fun bm!470078 () Bool)

(assert (=> bm!470078 (= call!470081 ($colon$colon!1860 (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094)))))) (ite (or c!1053196 c!1053200) (regTwo!32458 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094)))))))))

(declare-fun b!5925648 () Bool)

(assert (=> b!5925648 (= e!3627164 ((as const (Array Context!10714 Bool)) false))))

(assert (= (and d!1858002 c!1053197) b!5925638))

(assert (= (and d!1858002 (not c!1053197)) b!5925640))

(assert (= (and b!5925640 c!1053199) b!5925641))

(assert (= (and b!5925640 (not c!1053199)) b!5925647))

(assert (= (and b!5925647 res!2483305) b!5925645))

(assert (= (and b!5925647 c!1053196) b!5925646))

(assert (= (and b!5925647 (not c!1053196)) b!5925643))

(assert (= (and b!5925643 c!1053200) b!5925639))

(assert (= (and b!5925643 (not c!1053200)) b!5925644))

(assert (= (and b!5925644 c!1053198) b!5925642))

(assert (= (and b!5925644 (not c!1053198)) b!5925648))

(assert (= (or b!5925639 b!5925642) bm!470077))

(assert (= (or b!5925639 b!5925642) bm!470076))

(assert (= (or b!5925646 bm!470077) bm!470078))

(assert (= (or b!5925646 bm!470076) bm!470073))

(assert (= (or b!5925641 b!5925646) bm!470074))

(assert (= (or b!5925641 bm!470073) bm!470075))

(declare-fun m!6819788 () Bool)

(assert (=> bm!470078 m!6819788))

(declare-fun m!6819790 () Bool)

(assert (=> bm!470074 m!6819790))

(declare-fun m!6819792 () Bool)

(assert (=> bm!470075 m!6819792))

(declare-fun m!6819794 () Bool)

(assert (=> b!5925638 m!6819794))

(declare-fun m!6819796 () Bool)

(assert (=> b!5925645 m!6819796))

(assert (=> bm!470005 d!1858002))

(declare-fun d!1858004 () Bool)

(assert (=> d!1858004 (= (isEmptyExpr!1401 lt!2310263) ((_ is EmptyExpr!15973) lt!2310263))))

(assert (=> b!5925256 d!1858004))

(declare-fun d!1858006 () Bool)

(assert (=> d!1858006 (= (Exists!3043 (ite c!1053087 lambda!323149 lambda!323151)) (choose!44663 (ite c!1053087 lambda!323149 lambda!323151)))))

(declare-fun bs!1402369 () Bool)

(assert (= bs!1402369 d!1858006))

(declare-fun m!6819798 () Bool)

(assert (=> bs!1402369 m!6819798))

(assert (=> bm!470010 d!1858006))

(declare-fun d!1858008 () Bool)

(assert (=> d!1858008 (= (isEmptyLang!1409 lt!2310203) ((_ is EmptyLang!15973) lt!2310203))))

(assert (=> b!5924847 d!1858008))

(declare-fun bm!470079 () Bool)

(declare-fun call!470084 () (InoxSet Context!10714))

(declare-fun call!470088 () (InoxSet Context!10714))

(assert (=> bm!470079 (= call!470084 call!470088)))

(declare-fun b!5925649 () Bool)

(declare-fun e!3627172 () (InoxSet Context!10714))

(assert (=> b!5925649 (= e!3627172 (store ((as const (Array Context!10714 Bool)) false) (ite c!1053031 (Context!10715 Nil!64094) (Context!10715 call!470005)) true))))

(declare-fun b!5925650 () Bool)

(declare-fun e!3627175 () (InoxSet Context!10714))

(declare-fun call!470089 () (InoxSet Context!10714))

(assert (=> b!5925650 (= e!3627175 call!470089)))

(declare-fun b!5925652 () Bool)

(declare-fun e!3627173 () (InoxSet Context!10714))

(declare-fun call!470086 () (InoxSet Context!10714))

(assert (=> b!5925652 (= e!3627173 ((_ map or) call!470088 call!470086))))

(declare-fun b!5925653 () Bool)

(declare-fun e!3627170 () (InoxSet Context!10714))

(assert (=> b!5925653 (= e!3627170 call!470089)))

(declare-fun b!5925654 () Bool)

(declare-fun e!3627171 () (InoxSet Context!10714))

(assert (=> b!5925654 (= e!3627171 e!3627175)))

(declare-fun c!1053205 () Bool)

(assert (=> b!5925654 (= c!1053205 ((_ is Concat!24818) (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292))))))

(declare-fun b!5925655 () Bool)

(declare-fun c!1053203 () Bool)

(assert (=> b!5925655 (= c!1053203 ((_ is Star!15973) (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292))))))

(assert (=> b!5925655 (= e!3627175 e!3627170)))

(declare-fun c!1053204 () Bool)

(declare-fun bm!470080 () Bool)

(declare-fun call!470087 () List!64218)

(assert (=> bm!470080 (= call!470086 (derivationStepZipperDown!1223 (ite c!1053204 (regTwo!32459 (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292))) (regOne!32458 (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292)))) (ite c!1053204 (ite c!1053031 (Context!10715 Nil!64094) (Context!10715 call!470005)) (Context!10715 call!470087)) (h!70543 s!2326)))))

(declare-fun c!1053201 () Bool)

(declare-fun bm!470081 () Bool)

(declare-fun call!470085 () List!64218)

(assert (=> bm!470081 (= call!470088 (derivationStepZipperDown!1223 (ite c!1053204 (regOne!32459 (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292))) (ite c!1053201 (regTwo!32458 (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292))) (ite c!1053205 (regOne!32458 (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292))) (reg!16302 (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292)))))) (ite (or c!1053204 c!1053201) (ite c!1053031 (Context!10715 Nil!64094) (Context!10715 call!470005)) (Context!10715 call!470085)) (h!70543 s!2326)))))

(declare-fun b!5925656 () Bool)

(declare-fun e!3627174 () Bool)

(assert (=> b!5925656 (= e!3627174 (nullable!5968 (regOne!32458 (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292)))))))

(declare-fun bm!470082 () Bool)

(assert (=> bm!470082 (= call!470089 call!470084)))

(declare-fun b!5925657 () Bool)

(assert (=> b!5925657 (= e!3627171 ((_ map or) call!470086 call!470084))))

(declare-fun bm!470083 () Bool)

(assert (=> bm!470083 (= call!470085 call!470087)))

(declare-fun b!5925658 () Bool)

(assert (=> b!5925658 (= c!1053201 e!3627174)))

(declare-fun res!2483306 () Bool)

(assert (=> b!5925658 (=> (not res!2483306) (not e!3627174))))

(assert (=> b!5925658 (= res!2483306 ((_ is Concat!24818) (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292))))))

(assert (=> b!5925658 (= e!3627173 e!3627171)))

(declare-fun c!1053202 () Bool)

(declare-fun d!1858010 () Bool)

(assert (=> d!1858010 (= c!1053202 (and ((_ is ElementMatch!15973) (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292))) (= (c!1052981 (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292))) (h!70543 s!2326))))))

(assert (=> d!1858010 (= (derivationStepZipperDown!1223 (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292)) (ite c!1053031 (Context!10715 Nil!64094) (Context!10715 call!470005)) (h!70543 s!2326)) e!3627172)))

(declare-fun b!5925651 () Bool)

(assert (=> b!5925651 (= e!3627172 e!3627173)))

(assert (=> b!5925651 (= c!1053204 ((_ is Union!15973) (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292))))))

(declare-fun bm!470084 () Bool)

(assert (=> bm!470084 (= call!470087 ($colon$colon!1860 (exprs!5857 (ite c!1053031 (Context!10715 Nil!64094) (Context!10715 call!470005))) (ite (or c!1053201 c!1053205) (regTwo!32458 (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292))) (ite c!1053031 (regTwo!32459 r!7292) (regOne!32458 r!7292)))))))

(declare-fun b!5925659 () Bool)

(assert (=> b!5925659 (= e!3627170 ((as const (Array Context!10714 Bool)) false))))

(assert (= (and d!1858010 c!1053202) b!5925649))

(assert (= (and d!1858010 (not c!1053202)) b!5925651))

(assert (= (and b!5925651 c!1053204) b!5925652))

(assert (= (and b!5925651 (not c!1053204)) b!5925658))

(assert (= (and b!5925658 res!2483306) b!5925656))

(assert (= (and b!5925658 c!1053201) b!5925657))

(assert (= (and b!5925658 (not c!1053201)) b!5925654))

(assert (= (and b!5925654 c!1053205) b!5925650))

(assert (= (and b!5925654 (not c!1053205)) b!5925655))

(assert (= (and b!5925655 c!1053203) b!5925653))

(assert (= (and b!5925655 (not c!1053203)) b!5925659))

(assert (= (or b!5925650 b!5925653) bm!470083))

(assert (= (or b!5925650 b!5925653) bm!470082))

(assert (= (or b!5925657 bm!470083) bm!470084))

(assert (= (or b!5925657 bm!470082) bm!470079))

(assert (= (or b!5925652 b!5925657) bm!470080))

(assert (= (or b!5925652 bm!470079) bm!470081))

(declare-fun m!6819800 () Bool)

(assert (=> bm!470084 m!6819800))

(declare-fun m!6819802 () Bool)

(assert (=> bm!470080 m!6819802))

(declare-fun m!6819804 () Bool)

(assert (=> bm!470081 m!6819804))

(declare-fun m!6819806 () Bool)

(assert (=> b!5925649 m!6819806))

(declare-fun m!6819808 () Bool)

(assert (=> b!5925656 m!6819808))

(assert (=> bm!469998 d!1858010))

(declare-fun d!1858012 () Bool)

(assert (=> d!1858012 (= (nullable!5968 (regOne!32458 r!7292)) (nullableFct!1939 (regOne!32458 r!7292)))))

(declare-fun bs!1402370 () Bool)

(assert (= bs!1402370 d!1858012))

(declare-fun m!6819810 () Bool)

(assert (=> bs!1402370 m!6819810))

(assert (=> b!5924918 d!1858012))

(declare-fun d!1858014 () Bool)

(assert (=> d!1858014 (= (isDefined!12567 lt!2310226) (not (isEmpty!35956 lt!2310226)))))

(declare-fun bs!1402371 () Bool)

(assert (= bs!1402371 d!1858014))

(declare-fun m!6819812 () Bool)

(assert (=> bs!1402371 m!6819812))

(assert (=> b!5924992 d!1858014))

(declare-fun b!5925660 () Bool)

(declare-fun e!3627176 () Bool)

(assert (=> b!5925660 (= e!3627176 (nullable!5968 (derivativeStep!4703 r!7292 (head!12487 s!2326))))))

(declare-fun b!5925661 () Bool)

(declare-fun res!2483310 () Bool)

(declare-fun e!3627182 () Bool)

(assert (=> b!5925661 (=> (not res!2483310) (not e!3627182))))

(declare-fun call!470090 () Bool)

(assert (=> b!5925661 (= res!2483310 (not call!470090))))

(declare-fun b!5925662 () Bool)

(declare-fun e!3627178 () Bool)

(declare-fun e!3627181 () Bool)

(assert (=> b!5925662 (= e!3627178 e!3627181)))

(declare-fun res!2483313 () Bool)

(assert (=> b!5925662 (=> res!2483313 e!3627181)))

(assert (=> b!5925662 (= res!2483313 call!470090)))

(declare-fun b!5925663 () Bool)

(declare-fun res!2483307 () Bool)

(declare-fun e!3627180 () Bool)

(assert (=> b!5925663 (=> res!2483307 e!3627180)))

(assert (=> b!5925663 (= res!2483307 e!3627182)))

(declare-fun res!2483314 () Bool)

(assert (=> b!5925663 (=> (not res!2483314) (not e!3627182))))

(declare-fun lt!2310286 () Bool)

(assert (=> b!5925663 (= res!2483314 lt!2310286)))

(declare-fun b!5925664 () Bool)

(assert (=> b!5925664 (= e!3627182 (= (head!12487 (tail!11572 s!2326)) (c!1052981 (derivativeStep!4703 r!7292 (head!12487 s!2326)))))))

(declare-fun b!5925665 () Bool)

(assert (=> b!5925665 (= e!3627181 (not (= (head!12487 (tail!11572 s!2326)) (c!1052981 (derivativeStep!4703 r!7292 (head!12487 s!2326))))))))

(declare-fun b!5925666 () Bool)

(declare-fun res!2483308 () Bool)

(assert (=> b!5925666 (=> res!2483308 e!3627181)))

(assert (=> b!5925666 (= res!2483308 (not (isEmpty!35957 (tail!11572 (tail!11572 s!2326)))))))

(declare-fun d!1858016 () Bool)

(declare-fun e!3627179 () Bool)

(assert (=> d!1858016 e!3627179))

(declare-fun c!1053206 () Bool)

(assert (=> d!1858016 (= c!1053206 ((_ is EmptyExpr!15973) (derivativeStep!4703 r!7292 (head!12487 s!2326))))))

(assert (=> d!1858016 (= lt!2310286 e!3627176)))

(declare-fun c!1053208 () Bool)

(assert (=> d!1858016 (= c!1053208 (isEmpty!35957 (tail!11572 s!2326)))))

(assert (=> d!1858016 (validRegex!7709 (derivativeStep!4703 r!7292 (head!12487 s!2326)))))

(assert (=> d!1858016 (= (matchR!8156 (derivativeStep!4703 r!7292 (head!12487 s!2326)) (tail!11572 s!2326)) lt!2310286)))

(declare-fun b!5925667 () Bool)

(declare-fun res!2483311 () Bool)

(assert (=> b!5925667 (=> res!2483311 e!3627180)))

(assert (=> b!5925667 (= res!2483311 (not ((_ is ElementMatch!15973) (derivativeStep!4703 r!7292 (head!12487 s!2326)))))))

(declare-fun e!3627177 () Bool)

(assert (=> b!5925667 (= e!3627177 e!3627180)))

(declare-fun b!5925668 () Bool)

(assert (=> b!5925668 (= e!3627177 (not lt!2310286))))

(declare-fun b!5925669 () Bool)

(assert (=> b!5925669 (= e!3627180 e!3627178)))

(declare-fun res!2483312 () Bool)

(assert (=> b!5925669 (=> (not res!2483312) (not e!3627178))))

(assert (=> b!5925669 (= res!2483312 (not lt!2310286))))

(declare-fun b!5925670 () Bool)

(assert (=> b!5925670 (= e!3627179 e!3627177)))

(declare-fun c!1053207 () Bool)

(assert (=> b!5925670 (= c!1053207 ((_ is EmptyLang!15973) (derivativeStep!4703 r!7292 (head!12487 s!2326))))))

(declare-fun b!5925671 () Bool)

(assert (=> b!5925671 (= e!3627176 (matchR!8156 (derivativeStep!4703 (derivativeStep!4703 r!7292 (head!12487 s!2326)) (head!12487 (tail!11572 s!2326))) (tail!11572 (tail!11572 s!2326))))))

(declare-fun b!5925672 () Bool)

(declare-fun res!2483309 () Bool)

(assert (=> b!5925672 (=> (not res!2483309) (not e!3627182))))

(assert (=> b!5925672 (= res!2483309 (isEmpty!35957 (tail!11572 (tail!11572 s!2326))))))

(declare-fun b!5925673 () Bool)

(assert (=> b!5925673 (= e!3627179 (= lt!2310286 call!470090))))

(declare-fun bm!470085 () Bool)

(assert (=> bm!470085 (= call!470090 (isEmpty!35957 (tail!11572 s!2326)))))

(assert (= (and d!1858016 c!1053208) b!5925660))

(assert (= (and d!1858016 (not c!1053208)) b!5925671))

(assert (= (and d!1858016 c!1053206) b!5925673))

(assert (= (and d!1858016 (not c!1053206)) b!5925670))

(assert (= (and b!5925670 c!1053207) b!5925668))

(assert (= (and b!5925670 (not c!1053207)) b!5925667))

(assert (= (and b!5925667 (not res!2483311)) b!5925663))

(assert (= (and b!5925663 res!2483314) b!5925661))

(assert (= (and b!5925661 res!2483310) b!5925672))

(assert (= (and b!5925672 res!2483309) b!5925664))

(assert (= (and b!5925663 (not res!2483307)) b!5925669))

(assert (= (and b!5925669 res!2483312) b!5925662))

(assert (= (and b!5925662 (not res!2483313)) b!5925666))

(assert (= (and b!5925666 (not res!2483308)) b!5925665))

(assert (= (or b!5925673 b!5925661 b!5925662) bm!470085))

(assert (=> b!5925672 m!6819506))

(declare-fun m!6819814 () Bool)

(assert (=> b!5925672 m!6819814))

(assert (=> b!5925672 m!6819814))

(declare-fun m!6819816 () Bool)

(assert (=> b!5925672 m!6819816))

(assert (=> b!5925660 m!6819514))

(declare-fun m!6819818 () Bool)

(assert (=> b!5925660 m!6819818))

(assert (=> bm!470085 m!6819506))

(assert (=> bm!470085 m!6819508))

(assert (=> d!1858016 m!6819506))

(assert (=> d!1858016 m!6819508))

(assert (=> d!1858016 m!6819514))

(declare-fun m!6819820 () Bool)

(assert (=> d!1858016 m!6819820))

(assert (=> b!5925664 m!6819506))

(declare-fun m!6819822 () Bool)

(assert (=> b!5925664 m!6819822))

(assert (=> b!5925665 m!6819506))

(assert (=> b!5925665 m!6819822))

(assert (=> b!5925666 m!6819506))

(assert (=> b!5925666 m!6819814))

(assert (=> b!5925666 m!6819814))

(assert (=> b!5925666 m!6819816))

(assert (=> b!5925671 m!6819506))

(assert (=> b!5925671 m!6819822))

(assert (=> b!5925671 m!6819514))

(assert (=> b!5925671 m!6819822))

(declare-fun m!6819824 () Bool)

(assert (=> b!5925671 m!6819824))

(assert (=> b!5925671 m!6819506))

(assert (=> b!5925671 m!6819814))

(assert (=> b!5925671 m!6819824))

(assert (=> b!5925671 m!6819814))

(declare-fun m!6819826 () Bool)

(assert (=> b!5925671 m!6819826))

(assert (=> b!5925191 d!1858016))

(declare-fun bm!470094 () Bool)

(declare-fun call!470102 () Regex!15973)

(declare-fun call!470099 () Regex!15973)

(assert (=> bm!470094 (= call!470102 call!470099)))

(declare-fun b!5925694 () Bool)

(declare-fun e!3627194 () Regex!15973)

(assert (=> b!5925694 (= e!3627194 (ite (= (head!12487 s!2326) (c!1052981 r!7292)) EmptyExpr!15973 EmptyLang!15973))))

(declare-fun c!1053220 () Bool)

(declare-fun bm!470095 () Bool)

(declare-fun c!1053221 () Bool)

(assert (=> bm!470095 (= call!470099 (derivativeStep!4703 (ite c!1053220 (regOne!32459 r!7292) (ite c!1053221 (regTwo!32458 r!7292) (regOne!32458 r!7292))) (head!12487 s!2326)))))

(declare-fun b!5925695 () Bool)

(assert (=> b!5925695 (= c!1053221 (nullable!5968 (regOne!32458 r!7292)))))

(declare-fun e!3627195 () Regex!15973)

(declare-fun e!3627193 () Regex!15973)

(assert (=> b!5925695 (= e!3627195 e!3627193)))

(declare-fun bm!470096 () Bool)

(declare-fun c!1053222 () Bool)

(declare-fun call!470100 () Regex!15973)

(assert (=> bm!470096 (= call!470100 (derivativeStep!4703 (ite c!1053220 (regTwo!32459 r!7292) (ite c!1053222 (reg!16302 r!7292) (regOne!32458 r!7292))) (head!12487 s!2326)))))

(declare-fun b!5925696 () Bool)

(assert (=> b!5925696 (= c!1053220 ((_ is Union!15973) r!7292))))

(declare-fun e!3627197 () Regex!15973)

(assert (=> b!5925696 (= e!3627194 e!3627197)))

(declare-fun d!1858018 () Bool)

(declare-fun lt!2310289 () Regex!15973)

(assert (=> d!1858018 (validRegex!7709 lt!2310289)))

(declare-fun e!3627196 () Regex!15973)

(assert (=> d!1858018 (= lt!2310289 e!3627196)))

(declare-fun c!1053219 () Bool)

(assert (=> d!1858018 (= c!1053219 (or ((_ is EmptyExpr!15973) r!7292) ((_ is EmptyLang!15973) r!7292)))))

(assert (=> d!1858018 (validRegex!7709 r!7292)))

(assert (=> d!1858018 (= (derivativeStep!4703 r!7292 (head!12487 s!2326)) lt!2310289)))

(declare-fun b!5925697 () Bool)

(assert (=> b!5925697 (= e!3627196 EmptyLang!15973)))

(declare-fun b!5925698 () Bool)

(assert (=> b!5925698 (= e!3627193 (Union!15973 (Concat!24818 call!470102 (regTwo!32458 r!7292)) EmptyLang!15973))))

(declare-fun b!5925699 () Bool)

(declare-fun call!470101 () Regex!15973)

(assert (=> b!5925699 (= e!3627195 (Concat!24818 call!470101 r!7292))))

(declare-fun b!5925700 () Bool)

(assert (=> b!5925700 (= e!3627196 e!3627194)))

(declare-fun c!1053223 () Bool)

(assert (=> b!5925700 (= c!1053223 ((_ is ElementMatch!15973) r!7292))))

(declare-fun bm!470097 () Bool)

(assert (=> bm!470097 (= call!470101 call!470100)))

(declare-fun b!5925701 () Bool)

(assert (=> b!5925701 (= e!3627197 e!3627195)))

(assert (=> b!5925701 (= c!1053222 ((_ is Star!15973) r!7292))))

(declare-fun b!5925702 () Bool)

(assert (=> b!5925702 (= e!3627197 (Union!15973 call!470099 call!470100))))

(declare-fun b!5925703 () Bool)

(assert (=> b!5925703 (= e!3627193 (Union!15973 (Concat!24818 call!470101 (regTwo!32458 r!7292)) call!470102))))

(assert (= (and d!1858018 c!1053219) b!5925697))

(assert (= (and d!1858018 (not c!1053219)) b!5925700))

(assert (= (and b!5925700 c!1053223) b!5925694))

(assert (= (and b!5925700 (not c!1053223)) b!5925696))

(assert (= (and b!5925696 c!1053220) b!5925702))

(assert (= (and b!5925696 (not c!1053220)) b!5925701))

(assert (= (and b!5925701 c!1053222) b!5925699))

(assert (= (and b!5925701 (not c!1053222)) b!5925695))

(assert (= (and b!5925695 c!1053221) b!5925703))

(assert (= (and b!5925695 (not c!1053221)) b!5925698))

(assert (= (or b!5925703 b!5925698) bm!470094))

(assert (= (or b!5925699 b!5925703) bm!470097))

(assert (= (or b!5925702 bm!470097) bm!470096))

(assert (= (or b!5925702 bm!470094) bm!470095))

(assert (=> bm!470095 m!6819512))

(declare-fun m!6819828 () Bool)

(assert (=> bm!470095 m!6819828))

(assert (=> b!5925695 m!6819338))

(assert (=> bm!470096 m!6819512))

(declare-fun m!6819830 () Bool)

(assert (=> bm!470096 m!6819830))

(declare-fun m!6819832 () Bool)

(assert (=> d!1858018 m!6819832))

(assert (=> d!1858018 m!6819270))

(assert (=> b!5925191 d!1858018))

(assert (=> b!5925191 d!1857962))

(assert (=> b!5925191 d!1857948))

(declare-fun d!1858020 () Bool)

(declare-fun e!3627199 () Bool)

(assert (=> d!1858020 e!3627199))

(declare-fun res!2483315 () Bool)

(assert (=> d!1858020 (=> (not res!2483315) (not e!3627199))))

(declare-fun lt!2310290 () List!64219)

(assert (=> d!1858020 (= res!2483315 (= (content!11805 lt!2310290) ((_ map or) (content!11805 (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095))) (content!11805 (t!377612 s!2326)))))))

(declare-fun e!3627198 () List!64219)

(assert (=> d!1858020 (= lt!2310290 e!3627198)))

(declare-fun c!1053224 () Bool)

(assert (=> d!1858020 (= c!1053224 ((_ is Nil!64095) (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095))))))

(assert (=> d!1858020 (= (++!14070 (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095)) (t!377612 s!2326)) lt!2310290)))

(declare-fun b!5925707 () Bool)

(assert (=> b!5925707 (= e!3627199 (or (not (= (t!377612 s!2326) Nil!64095)) (= lt!2310290 (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095)))))))

(declare-fun b!5925704 () Bool)

(assert (=> b!5925704 (= e!3627198 (t!377612 s!2326))))

(declare-fun b!5925706 () Bool)

(declare-fun res!2483316 () Bool)

(assert (=> b!5925706 (=> (not res!2483316) (not e!3627199))))

(assert (=> b!5925706 (= res!2483316 (= (size!40139 lt!2310290) (+ (size!40139 (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095))) (size!40139 (t!377612 s!2326)))))))

(declare-fun b!5925705 () Bool)

(assert (=> b!5925705 (= e!3627198 (Cons!64095 (h!70543 (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095))) (++!14070 (t!377612 (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095))) (t!377612 s!2326))))))

(assert (= (and d!1858020 c!1053224) b!5925704))

(assert (= (and d!1858020 (not c!1053224)) b!5925705))

(assert (= (and d!1858020 res!2483315) b!5925706))

(assert (= (and b!5925706 res!2483316) b!5925707))

(declare-fun m!6819834 () Bool)

(assert (=> d!1858020 m!6819834))

(assert (=> d!1858020 m!6819380))

(declare-fun m!6819836 () Bool)

(assert (=> d!1858020 m!6819836))

(declare-fun m!6819838 () Bool)

(assert (=> d!1858020 m!6819838))

(declare-fun m!6819840 () Bool)

(assert (=> b!5925706 m!6819840))

(assert (=> b!5925706 m!6819380))

(declare-fun m!6819842 () Bool)

(assert (=> b!5925706 m!6819842))

(declare-fun m!6819844 () Bool)

(assert (=> b!5925706 m!6819844))

(declare-fun m!6819846 () Bool)

(assert (=> b!5925705 m!6819846))

(assert (=> b!5924994 d!1858020))

(declare-fun d!1858022 () Bool)

(declare-fun e!3627201 () Bool)

(assert (=> d!1858022 e!3627201))

(declare-fun res!2483317 () Bool)

(assert (=> d!1858022 (=> (not res!2483317) (not e!3627201))))

(declare-fun lt!2310291 () List!64219)

(assert (=> d!1858022 (= res!2483317 (= (content!11805 lt!2310291) ((_ map or) (content!11805 Nil!64095) (content!11805 (Cons!64095 (h!70543 s!2326) Nil!64095)))))))

(declare-fun e!3627200 () List!64219)

(assert (=> d!1858022 (= lt!2310291 e!3627200)))

(declare-fun c!1053225 () Bool)

(assert (=> d!1858022 (= c!1053225 ((_ is Nil!64095) Nil!64095))))

(assert (=> d!1858022 (= (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095)) lt!2310291)))

(declare-fun b!5925711 () Bool)

(assert (=> b!5925711 (= e!3627201 (or (not (= (Cons!64095 (h!70543 s!2326) Nil!64095) Nil!64095)) (= lt!2310291 Nil!64095)))))

(declare-fun b!5925708 () Bool)

(assert (=> b!5925708 (= e!3627200 (Cons!64095 (h!70543 s!2326) Nil!64095))))

(declare-fun b!5925710 () Bool)

(declare-fun res!2483318 () Bool)

(assert (=> b!5925710 (=> (not res!2483318) (not e!3627201))))

(assert (=> b!5925710 (= res!2483318 (= (size!40139 lt!2310291) (+ (size!40139 Nil!64095) (size!40139 (Cons!64095 (h!70543 s!2326) Nil!64095)))))))

(declare-fun b!5925709 () Bool)

(assert (=> b!5925709 (= e!3627200 (Cons!64095 (h!70543 Nil!64095) (++!14070 (t!377612 Nil!64095) (Cons!64095 (h!70543 s!2326) Nil!64095))))))

(assert (= (and d!1858022 c!1053225) b!5925708))

(assert (= (and d!1858022 (not c!1053225)) b!5925709))

(assert (= (and d!1858022 res!2483317) b!5925710))

(assert (= (and b!5925710 res!2483318) b!5925711))

(declare-fun m!6819848 () Bool)

(assert (=> d!1858022 m!6819848))

(declare-fun m!6819850 () Bool)

(assert (=> d!1858022 m!6819850))

(declare-fun m!6819852 () Bool)

(assert (=> d!1858022 m!6819852))

(declare-fun m!6819854 () Bool)

(assert (=> b!5925710 m!6819854))

(declare-fun m!6819856 () Bool)

(assert (=> b!5925710 m!6819856))

(declare-fun m!6819858 () Bool)

(assert (=> b!5925710 m!6819858))

(declare-fun m!6819860 () Bool)

(assert (=> b!5925709 m!6819860))

(assert (=> b!5924994 d!1858022))

(declare-fun d!1858024 () Bool)

(assert (=> d!1858024 (= (++!14070 (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095)) (t!377612 s!2326)) s!2326)))

(declare-fun lt!2310294 () Unit!157217)

(declare-fun choose!44675 (List!64219 C!32216 List!64219 List!64219) Unit!157217)

(assert (=> d!1858024 (= lt!2310294 (choose!44675 Nil!64095 (h!70543 s!2326) (t!377612 s!2326) s!2326))))

(assert (=> d!1858024 (= (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) (t!377612 s!2326))) s!2326)))

(assert (=> d!1858024 (= (lemmaMoveElementToOtherListKeepsConcatEq!2165 Nil!64095 (h!70543 s!2326) (t!377612 s!2326) s!2326) lt!2310294)))

(declare-fun bs!1402372 () Bool)

(assert (= bs!1402372 d!1858024))

(assert (=> bs!1402372 m!6819380))

(assert (=> bs!1402372 m!6819380))

(assert (=> bs!1402372 m!6819382))

(declare-fun m!6819862 () Bool)

(assert (=> bs!1402372 m!6819862))

(declare-fun m!6819864 () Bool)

(assert (=> bs!1402372 m!6819864))

(assert (=> b!5924994 d!1858024))

(declare-fun b!5925712 () Bool)

(declare-fun e!3627203 () Option!15864)

(declare-fun e!3627206 () Option!15864)

(assert (=> b!5925712 (= e!3627203 e!3627206)))

(declare-fun c!1053227 () Bool)

(assert (=> b!5925712 (= c!1053227 ((_ is Nil!64095) (t!377612 s!2326)))))

(declare-fun b!5925713 () Bool)

(declare-fun res!2483321 () Bool)

(declare-fun e!3627205 () Bool)

(assert (=> b!5925713 (=> (not res!2483321) (not e!3627205))))

(declare-fun lt!2310296 () Option!15864)

(assert (=> b!5925713 (= res!2483321 (matchR!8156 (regOne!32458 r!7292) (_1!36255 (get!22072 lt!2310296))))))

(declare-fun b!5925714 () Bool)

(assert (=> b!5925714 (= e!3627206 None!15863)))

(declare-fun b!5925715 () Bool)

(assert (=> b!5925715 (= e!3627205 (= (++!14070 (_1!36255 (get!22072 lt!2310296)) (_2!36255 (get!22072 lt!2310296))) s!2326))))

(declare-fun b!5925716 () Bool)

(declare-fun e!3627204 () Bool)

(assert (=> b!5925716 (= e!3627204 (matchR!8156 (regTwo!32458 r!7292) (t!377612 s!2326)))))

(declare-fun b!5925717 () Bool)

(declare-fun res!2483322 () Bool)

(assert (=> b!5925717 (=> (not res!2483322) (not e!3627205))))

(assert (=> b!5925717 (= res!2483322 (matchR!8156 (regTwo!32458 r!7292) (_2!36255 (get!22072 lt!2310296))))))

(declare-fun b!5925718 () Bool)

(declare-fun e!3627202 () Bool)

(assert (=> b!5925718 (= e!3627202 (not (isDefined!12567 lt!2310296)))))

(declare-fun d!1858026 () Bool)

(assert (=> d!1858026 e!3627202))

(declare-fun res!2483319 () Bool)

(assert (=> d!1858026 (=> res!2483319 e!3627202)))

(assert (=> d!1858026 (= res!2483319 e!3627205)))

(declare-fun res!2483320 () Bool)

(assert (=> d!1858026 (=> (not res!2483320) (not e!3627205))))

(assert (=> d!1858026 (= res!2483320 (isDefined!12567 lt!2310296))))

(assert (=> d!1858026 (= lt!2310296 e!3627203)))

(declare-fun c!1053226 () Bool)

(assert (=> d!1858026 (= c!1053226 e!3627204)))

(declare-fun res!2483323 () Bool)

(assert (=> d!1858026 (=> (not res!2483323) (not e!3627204))))

(assert (=> d!1858026 (= res!2483323 (matchR!8156 (regOne!32458 r!7292) (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095))))))

(assert (=> d!1858026 (validRegex!7709 (regOne!32458 r!7292))))

(assert (=> d!1858026 (= (findConcatSeparation!2278 (regOne!32458 r!7292) (regTwo!32458 r!7292) (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095)) (t!377612 s!2326) s!2326) lt!2310296)))

(declare-fun b!5925719 () Bool)

(assert (=> b!5925719 (= e!3627203 (Some!15863 (tuple2!65905 (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095)) (t!377612 s!2326))))))

(declare-fun b!5925720 () Bool)

(declare-fun lt!2310295 () Unit!157217)

(declare-fun lt!2310297 () Unit!157217)

(assert (=> b!5925720 (= lt!2310295 lt!2310297)))

(assert (=> b!5925720 (= (++!14070 (++!14070 (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095)) (Cons!64095 (h!70543 (t!377612 s!2326)) Nil!64095)) (t!377612 (t!377612 s!2326))) s!2326)))

(assert (=> b!5925720 (= lt!2310297 (lemmaMoveElementToOtherListKeepsConcatEq!2165 (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095)) (h!70543 (t!377612 s!2326)) (t!377612 (t!377612 s!2326)) s!2326))))

(assert (=> b!5925720 (= e!3627206 (findConcatSeparation!2278 (regOne!32458 r!7292) (regTwo!32458 r!7292) (++!14070 (++!14070 Nil!64095 (Cons!64095 (h!70543 s!2326) Nil!64095)) (Cons!64095 (h!70543 (t!377612 s!2326)) Nil!64095)) (t!377612 (t!377612 s!2326)) s!2326))))

(assert (= (and d!1858026 res!2483323) b!5925716))

(assert (= (and d!1858026 c!1053226) b!5925719))

(assert (= (and d!1858026 (not c!1053226)) b!5925712))

(assert (= (and b!5925712 c!1053227) b!5925714))

(assert (= (and b!5925712 (not c!1053227)) b!5925720))

(assert (= (and d!1858026 res!2483320) b!5925713))

(assert (= (and b!5925713 res!2483321) b!5925717))

(assert (= (and b!5925717 res!2483322) b!5925715))

(assert (= (and d!1858026 (not res!2483319)) b!5925718))

(declare-fun m!6819866 () Bool)

(assert (=> b!5925718 m!6819866))

(assert (=> b!5925720 m!6819380))

(declare-fun m!6819868 () Bool)

(assert (=> b!5925720 m!6819868))

(assert (=> b!5925720 m!6819868))

(declare-fun m!6819870 () Bool)

(assert (=> b!5925720 m!6819870))

(assert (=> b!5925720 m!6819380))

(declare-fun m!6819872 () Bool)

(assert (=> b!5925720 m!6819872))

(assert (=> b!5925720 m!6819868))

(declare-fun m!6819874 () Bool)

(assert (=> b!5925720 m!6819874))

(declare-fun m!6819876 () Bool)

(assert (=> b!5925717 m!6819876))

(declare-fun m!6819878 () Bool)

(assert (=> b!5925717 m!6819878))

(assert (=> b!5925713 m!6819876))

(declare-fun m!6819880 () Bool)

(assert (=> b!5925713 m!6819880))

(assert (=> b!5925715 m!6819876))

(declare-fun m!6819882 () Bool)

(assert (=> b!5925715 m!6819882))

(assert (=> d!1858026 m!6819866))

(assert (=> d!1858026 m!6819380))

(declare-fun m!6819884 () Bool)

(assert (=> d!1858026 m!6819884))

(assert (=> d!1858026 m!6819398))

(declare-fun m!6819886 () Bool)

(assert (=> b!5925716 m!6819886))

(assert (=> b!5924994 d!1858026))

(assert (=> d!1857880 d!1857876))

(declare-fun d!1858028 () Bool)

(assert (=> d!1858028 (= (flatMap!1486 z!1189 lambda!323104) (dynLambda!25060 lambda!323104 (h!70544 zl!343)))))

(assert (=> d!1858028 true))

(declare-fun _$13!2678 () Unit!157217)

(assert (=> d!1858028 (= (choose!44671 z!1189 (h!70544 zl!343) lambda!323104) _$13!2678)))

(declare-fun b_lambda!222551 () Bool)

(assert (=> (not b_lambda!222551) (not d!1858028)))

(declare-fun bs!1402373 () Bool)

(assert (= bs!1402373 d!1858028))

(assert (=> bs!1402373 m!6819264))

(assert (=> bs!1402373 m!6819564))

(assert (=> d!1857880 d!1858028))

(assert (=> bm!470011 d!1857902))

(declare-fun d!1858030 () Bool)

(assert (=> d!1858030 true))

(assert (=> d!1858030 true))

(declare-fun res!2483324 () Bool)

(assert (=> d!1858030 (= (choose!44663 lambda!323103) res!2483324)))

(assert (=> d!1857822 d!1858030))

(declare-fun d!1858032 () Bool)

(declare-fun res!2483329 () Bool)

(declare-fun e!3627211 () Bool)

(assert (=> d!1858032 (=> res!2483329 e!3627211)))

(assert (=> d!1858032 (= res!2483329 ((_ is Nil!64096) lt!2310269))))

(assert (=> d!1858032 (= (noDuplicate!1831 lt!2310269) e!3627211)))

(declare-fun b!5925725 () Bool)

(declare-fun e!3627212 () Bool)

(assert (=> b!5925725 (= e!3627211 e!3627212)))

(declare-fun res!2483330 () Bool)

(assert (=> b!5925725 (=> (not res!2483330) (not e!3627212))))

(declare-fun contains!19958 (List!64220 Context!10714) Bool)

(assert (=> b!5925725 (= res!2483330 (not (contains!19958 (t!377613 lt!2310269) (h!70544 lt!2310269))))))

(declare-fun b!5925726 () Bool)

(assert (=> b!5925726 (= e!3627212 (noDuplicate!1831 (t!377613 lt!2310269)))))

(assert (= (and d!1858032 (not res!2483329)) b!5925725))

(assert (= (and b!5925725 res!2483330) b!5925726))

(declare-fun m!6819888 () Bool)

(assert (=> b!5925725 m!6819888))

(declare-fun m!6819890 () Bool)

(assert (=> b!5925726 m!6819890))

(assert (=> d!1857884 d!1858032))

(declare-fun d!1858034 () Bool)

(declare-fun e!3627220 () Bool)

(assert (=> d!1858034 e!3627220))

(declare-fun res!2483335 () Bool)

(assert (=> d!1858034 (=> (not res!2483335) (not e!3627220))))

(declare-fun res!2483336 () List!64220)

(assert (=> d!1858034 (= res!2483335 (noDuplicate!1831 res!2483336))))

(declare-fun e!3627219 () Bool)

(assert (=> d!1858034 e!3627219))

(assert (=> d!1858034 (= (choose!44672 z!1189) res!2483336)))

(declare-fun b!5925734 () Bool)

(declare-fun e!3627221 () Bool)

(declare-fun tp!1647849 () Bool)

(assert (=> b!5925734 (= e!3627221 tp!1647849)))

(declare-fun tp!1647850 () Bool)

(declare-fun b!5925733 () Bool)

(assert (=> b!5925733 (= e!3627219 (and (inv!83179 (h!70544 res!2483336)) e!3627221 tp!1647850))))

(declare-fun b!5925735 () Bool)

(assert (=> b!5925735 (= e!3627220 (= (content!11804 res!2483336) z!1189))))

(assert (= b!5925733 b!5925734))

(assert (= (and d!1858034 ((_ is Cons!64096) res!2483336)) b!5925733))

(assert (= (and d!1858034 res!2483335) b!5925735))

(declare-fun m!6819892 () Bool)

(assert (=> d!1858034 m!6819892))

(declare-fun m!6819894 () Bool)

(assert (=> b!5925733 m!6819894))

(declare-fun m!6819896 () Bool)

(assert (=> b!5925735 m!6819896))

(assert (=> d!1857884 d!1858034))

(assert (=> d!1857854 d!1857902))

(assert (=> d!1857854 d!1857888))

(assert (=> d!1857810 d!1858014))

(declare-fun b!5925736 () Bool)

(declare-fun e!3627222 () Bool)

(assert (=> b!5925736 (= e!3627222 (nullable!5968 (regOne!32458 r!7292)))))

(declare-fun b!5925737 () Bool)

(declare-fun res!2483340 () Bool)

(declare-fun e!3627228 () Bool)

(assert (=> b!5925737 (=> (not res!2483340) (not e!3627228))))

(declare-fun call!470103 () Bool)

(assert (=> b!5925737 (= res!2483340 (not call!470103))))

(declare-fun b!5925738 () Bool)

(declare-fun e!3627224 () Bool)

(declare-fun e!3627227 () Bool)

(assert (=> b!5925738 (= e!3627224 e!3627227)))

(declare-fun res!2483343 () Bool)

(assert (=> b!5925738 (=> res!2483343 e!3627227)))

(assert (=> b!5925738 (= res!2483343 call!470103)))

(declare-fun b!5925739 () Bool)

(declare-fun res!2483337 () Bool)

(declare-fun e!3627226 () Bool)

(assert (=> b!5925739 (=> res!2483337 e!3627226)))

(assert (=> b!5925739 (= res!2483337 e!3627228)))

(declare-fun res!2483344 () Bool)

(assert (=> b!5925739 (=> (not res!2483344) (not e!3627228))))

(declare-fun lt!2310298 () Bool)

(assert (=> b!5925739 (= res!2483344 lt!2310298)))

(declare-fun b!5925740 () Bool)

(assert (=> b!5925740 (= e!3627228 (= (head!12487 Nil!64095) (c!1052981 (regOne!32458 r!7292))))))

(declare-fun b!5925741 () Bool)

(assert (=> b!5925741 (= e!3627227 (not (= (head!12487 Nil!64095) (c!1052981 (regOne!32458 r!7292)))))))

(declare-fun b!5925742 () Bool)

(declare-fun res!2483338 () Bool)

(assert (=> b!5925742 (=> res!2483338 e!3627227)))

(assert (=> b!5925742 (= res!2483338 (not (isEmpty!35957 (tail!11572 Nil!64095))))))

(declare-fun d!1858036 () Bool)

(declare-fun e!3627225 () Bool)

(assert (=> d!1858036 e!3627225))

(declare-fun c!1053228 () Bool)

(assert (=> d!1858036 (= c!1053228 ((_ is EmptyExpr!15973) (regOne!32458 r!7292)))))

(assert (=> d!1858036 (= lt!2310298 e!3627222)))

(declare-fun c!1053230 () Bool)

(assert (=> d!1858036 (= c!1053230 (isEmpty!35957 Nil!64095))))

(assert (=> d!1858036 (validRegex!7709 (regOne!32458 r!7292))))

(assert (=> d!1858036 (= (matchR!8156 (regOne!32458 r!7292) Nil!64095) lt!2310298)))

(declare-fun b!5925743 () Bool)

(declare-fun res!2483341 () Bool)

(assert (=> b!5925743 (=> res!2483341 e!3627226)))

(assert (=> b!5925743 (= res!2483341 (not ((_ is ElementMatch!15973) (regOne!32458 r!7292))))))

(declare-fun e!3627223 () Bool)

(assert (=> b!5925743 (= e!3627223 e!3627226)))

(declare-fun b!5925744 () Bool)

(assert (=> b!5925744 (= e!3627223 (not lt!2310298))))

(declare-fun b!5925745 () Bool)

(assert (=> b!5925745 (= e!3627226 e!3627224)))

(declare-fun res!2483342 () Bool)

(assert (=> b!5925745 (=> (not res!2483342) (not e!3627224))))

(assert (=> b!5925745 (= res!2483342 (not lt!2310298))))

(declare-fun b!5925746 () Bool)

(assert (=> b!5925746 (= e!3627225 e!3627223)))

(declare-fun c!1053229 () Bool)

(assert (=> b!5925746 (= c!1053229 ((_ is EmptyLang!15973) (regOne!32458 r!7292)))))

(declare-fun b!5925747 () Bool)

(assert (=> b!5925747 (= e!3627222 (matchR!8156 (derivativeStep!4703 (regOne!32458 r!7292) (head!12487 Nil!64095)) (tail!11572 Nil!64095)))))

(declare-fun b!5925748 () Bool)

(declare-fun res!2483339 () Bool)

(assert (=> b!5925748 (=> (not res!2483339) (not e!3627228))))

(assert (=> b!5925748 (= res!2483339 (isEmpty!35957 (tail!11572 Nil!64095)))))

(declare-fun b!5925749 () Bool)

(assert (=> b!5925749 (= e!3627225 (= lt!2310298 call!470103))))

(declare-fun bm!470098 () Bool)

(assert (=> bm!470098 (= call!470103 (isEmpty!35957 Nil!64095))))

(assert (= (and d!1858036 c!1053230) b!5925736))

(assert (= (and d!1858036 (not c!1053230)) b!5925747))

(assert (= (and d!1858036 c!1053228) b!5925749))

(assert (= (and d!1858036 (not c!1053228)) b!5925746))

(assert (= (and b!5925746 c!1053229) b!5925744))

(assert (= (and b!5925746 (not c!1053229)) b!5925743))

(assert (= (and b!5925743 (not res!2483341)) b!5925739))

(assert (= (and b!5925739 res!2483344) b!5925737))

(assert (= (and b!5925737 res!2483340) b!5925748))

(assert (= (and b!5925748 res!2483339) b!5925740))

(assert (= (and b!5925739 (not res!2483337)) b!5925745))

(assert (= (and b!5925745 res!2483342) b!5925738))

(assert (= (and b!5925738 (not res!2483343)) b!5925742))

(assert (= (and b!5925742 (not res!2483338)) b!5925741))

(assert (= (or b!5925749 b!5925737 b!5925738) bm!470098))

(declare-fun m!6819898 () Bool)

(assert (=> b!5925748 m!6819898))

(assert (=> b!5925748 m!6819898))

(declare-fun m!6819900 () Bool)

(assert (=> b!5925748 m!6819900))

(assert (=> b!5925736 m!6819338))

(declare-fun m!6819902 () Bool)

(assert (=> bm!470098 m!6819902))

(assert (=> d!1858036 m!6819902))

(assert (=> d!1858036 m!6819398))

(declare-fun m!6819904 () Bool)

(assert (=> b!5925740 m!6819904))

(assert (=> b!5925741 m!6819904))

(assert (=> b!5925742 m!6819898))

(assert (=> b!5925742 m!6819898))

(assert (=> b!5925742 m!6819900))

(assert (=> b!5925747 m!6819904))

(assert (=> b!5925747 m!6819904))

(declare-fun m!6819906 () Bool)

(assert (=> b!5925747 m!6819906))

(assert (=> b!5925747 m!6819898))

(assert (=> b!5925747 m!6819906))

(assert (=> b!5925747 m!6819898))

(declare-fun m!6819908 () Bool)

(assert (=> b!5925747 m!6819908))

(assert (=> d!1857810 d!1858036))

(assert (=> d!1857810 d!1857966))

(assert (=> b!5925185 d!1857962))

(declare-fun b!5925750 () Bool)

(declare-fun e!3627229 () Bool)

(assert (=> b!5925750 (= e!3627229 (nullable!5968 (regTwo!32458 r!7292)))))

(declare-fun b!5925751 () Bool)

(declare-fun res!2483348 () Bool)

(declare-fun e!3627235 () Bool)

(assert (=> b!5925751 (=> (not res!2483348) (not e!3627235))))

(declare-fun call!470104 () Bool)

(assert (=> b!5925751 (= res!2483348 (not call!470104))))

(declare-fun b!5925752 () Bool)

(declare-fun e!3627231 () Bool)

(declare-fun e!3627234 () Bool)

(assert (=> b!5925752 (= e!3627231 e!3627234)))

(declare-fun res!2483351 () Bool)

(assert (=> b!5925752 (=> res!2483351 e!3627234)))

(assert (=> b!5925752 (= res!2483351 call!470104)))

(declare-fun b!5925753 () Bool)

(declare-fun res!2483345 () Bool)

(declare-fun e!3627233 () Bool)

(assert (=> b!5925753 (=> res!2483345 e!3627233)))

(assert (=> b!5925753 (= res!2483345 e!3627235)))

(declare-fun res!2483352 () Bool)

(assert (=> b!5925753 (=> (not res!2483352) (not e!3627235))))

(declare-fun lt!2310299 () Bool)

(assert (=> b!5925753 (= res!2483352 lt!2310299)))

(declare-fun b!5925754 () Bool)

(assert (=> b!5925754 (= e!3627235 (= (head!12487 s!2326) (c!1052981 (regTwo!32458 r!7292))))))

(declare-fun b!5925755 () Bool)

(assert (=> b!5925755 (= e!3627234 (not (= (head!12487 s!2326) (c!1052981 (regTwo!32458 r!7292)))))))

(declare-fun b!5925756 () Bool)

(declare-fun res!2483346 () Bool)

(assert (=> b!5925756 (=> res!2483346 e!3627234)))

(assert (=> b!5925756 (= res!2483346 (not (isEmpty!35957 (tail!11572 s!2326))))))

(declare-fun d!1858038 () Bool)

(declare-fun e!3627232 () Bool)

(assert (=> d!1858038 e!3627232))

(declare-fun c!1053231 () Bool)

(assert (=> d!1858038 (= c!1053231 ((_ is EmptyExpr!15973) (regTwo!32458 r!7292)))))

(assert (=> d!1858038 (= lt!2310299 e!3627229)))

(declare-fun c!1053233 () Bool)

(assert (=> d!1858038 (= c!1053233 (isEmpty!35957 s!2326))))

(assert (=> d!1858038 (validRegex!7709 (regTwo!32458 r!7292))))

(assert (=> d!1858038 (= (matchR!8156 (regTwo!32458 r!7292) s!2326) lt!2310299)))

(declare-fun b!5925757 () Bool)

(declare-fun res!2483349 () Bool)

(assert (=> b!5925757 (=> res!2483349 e!3627233)))

(assert (=> b!5925757 (= res!2483349 (not ((_ is ElementMatch!15973) (regTwo!32458 r!7292))))))

(declare-fun e!3627230 () Bool)

(assert (=> b!5925757 (= e!3627230 e!3627233)))

(declare-fun b!5925758 () Bool)

(assert (=> b!5925758 (= e!3627230 (not lt!2310299))))

(declare-fun b!5925759 () Bool)

(assert (=> b!5925759 (= e!3627233 e!3627231)))

(declare-fun res!2483350 () Bool)

(assert (=> b!5925759 (=> (not res!2483350) (not e!3627231))))

(assert (=> b!5925759 (= res!2483350 (not lt!2310299))))

(declare-fun b!5925760 () Bool)

(assert (=> b!5925760 (= e!3627232 e!3627230)))

(declare-fun c!1053232 () Bool)

(assert (=> b!5925760 (= c!1053232 ((_ is EmptyLang!15973) (regTwo!32458 r!7292)))))

(declare-fun b!5925761 () Bool)

(assert (=> b!5925761 (= e!3627229 (matchR!8156 (derivativeStep!4703 (regTwo!32458 r!7292) (head!12487 s!2326)) (tail!11572 s!2326)))))

(declare-fun b!5925762 () Bool)

(declare-fun res!2483347 () Bool)

(assert (=> b!5925762 (=> (not res!2483347) (not e!3627235))))

(assert (=> b!5925762 (= res!2483347 (isEmpty!35957 (tail!11572 s!2326)))))

(declare-fun b!5925763 () Bool)

(assert (=> b!5925763 (= e!3627232 (= lt!2310299 call!470104))))

(declare-fun bm!470099 () Bool)

(assert (=> bm!470099 (= call!470104 (isEmpty!35957 s!2326))))

(assert (= (and d!1858038 c!1053233) b!5925750))

(assert (= (and d!1858038 (not c!1053233)) b!5925761))

(assert (= (and d!1858038 c!1053231) b!5925763))

(assert (= (and d!1858038 (not c!1053231)) b!5925760))

(assert (= (and b!5925760 c!1053232) b!5925758))

(assert (= (and b!5925760 (not c!1053232)) b!5925757))

(assert (= (and b!5925757 (not res!2483349)) b!5925753))

(assert (= (and b!5925753 res!2483352) b!5925751))

(assert (= (and b!5925751 res!2483348) b!5925762))

(assert (= (and b!5925762 res!2483347) b!5925754))

(assert (= (and b!5925753 (not res!2483345)) b!5925759))

(assert (= (and b!5925759 res!2483350) b!5925752))

(assert (= (and b!5925752 (not res!2483351)) b!5925756))

(assert (= (and b!5925756 (not res!2483346)) b!5925755))

(assert (= (or b!5925763 b!5925751 b!5925752) bm!470099))

(assert (=> b!5925762 m!6819506))

(assert (=> b!5925762 m!6819506))

(assert (=> b!5925762 m!6819508))

(assert (=> b!5925750 m!6819640))

(assert (=> bm!470099 m!6819484))

(assert (=> d!1858038 m!6819484))

(assert (=> d!1858038 m!6819644))

(assert (=> b!5925754 m!6819512))

(assert (=> b!5925755 m!6819512))

(assert (=> b!5925756 m!6819506))

(assert (=> b!5925756 m!6819506))

(assert (=> b!5925756 m!6819508))

(assert (=> b!5925761 m!6819512))

(assert (=> b!5925761 m!6819512))

(declare-fun m!6819910 () Bool)

(assert (=> b!5925761 m!6819910))

(assert (=> b!5925761 m!6819506))

(assert (=> b!5925761 m!6819910))

(assert (=> b!5925761 m!6819506))

(declare-fun m!6819912 () Bool)

(assert (=> b!5925761 m!6819912))

(assert (=> b!5924990 d!1858038))

(declare-fun d!1858040 () Bool)

(declare-fun res!2483353 () Bool)

(declare-fun e!3627236 () Bool)

(assert (=> d!1858040 (=> res!2483353 e!3627236)))

(assert (=> d!1858040 (= res!2483353 ((_ is Nil!64094) (exprs!5857 (h!70544 zl!343))))))

(assert (=> d!1858040 (= (forall!15055 (exprs!5857 (h!70544 zl!343)) lambda!323168) e!3627236)))

(declare-fun b!5925764 () Bool)

(declare-fun e!3627237 () Bool)

(assert (=> b!5925764 (= e!3627236 e!3627237)))

(declare-fun res!2483354 () Bool)

(assert (=> b!5925764 (=> (not res!2483354) (not e!3627237))))

(assert (=> b!5925764 (= res!2483354 (dynLambda!25061 lambda!323168 (h!70542 (exprs!5857 (h!70544 zl!343)))))))

(declare-fun b!5925765 () Bool)

(assert (=> b!5925765 (= e!3627237 (forall!15055 (t!377611 (exprs!5857 (h!70544 zl!343))) lambda!323168))))

(assert (= (and d!1858040 (not res!2483353)) b!5925764))

(assert (= (and b!5925764 res!2483354) b!5925765))

(declare-fun b_lambda!222553 () Bool)

(assert (=> (not b_lambda!222553) (not b!5925764)))

(declare-fun m!6819914 () Bool)

(assert (=> b!5925764 m!6819914))

(declare-fun m!6819916 () Bool)

(assert (=> b!5925765 m!6819916))

(assert (=> d!1857894 d!1858040))

(declare-fun d!1858042 () Bool)

(assert (=> d!1858042 (= (nullable!5968 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))) (nullableFct!1939 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 r!7292 Nil!64094))))))))

(declare-fun bs!1402374 () Bool)

(assert (= bs!1402374 d!1858042))

(declare-fun m!6819918 () Bool)

(assert (=> bs!1402374 m!6819918))

(assert (=> b!5924954 d!1858042))

(declare-fun d!1858044 () Bool)

(assert (=> d!1858044 (= (isEmpty!35953 (exprs!5857 (h!70544 zl!343))) ((_ is Nil!64094) (exprs!5857 (h!70544 zl!343))))))

(assert (=> b!5925257 d!1858044))

(declare-fun d!1858046 () Bool)

(assert (=> d!1858046 (= (head!12485 (exprs!5857 (h!70544 zl!343))) (h!70542 (exprs!5857 (h!70544 zl!343))))))

(assert (=> b!5925259 d!1858046))

(declare-fun bs!1402375 () Bool)

(declare-fun d!1858048 () Bool)

(assert (= bs!1402375 (and d!1858048 d!1857840)))

(declare-fun lambda!323186 () Int)

(assert (=> bs!1402375 (= lambda!323186 lambda!323137)))

(declare-fun bs!1402376 () Bool)

(assert (= bs!1402376 (and d!1858048 d!1857796)))

(assert (=> bs!1402376 (= lambda!323186 lambda!323110)))

(declare-fun bs!1402377 () Bool)

(assert (= bs!1402377 (and d!1858048 d!1857800)))

(assert (=> bs!1402377 (= lambda!323186 lambda!323113)))

(declare-fun bs!1402378 () Bool)

(assert (= bs!1402378 (and d!1858048 d!1857872)))

(assert (=> bs!1402378 (= lambda!323186 lambda!323162)))

(declare-fun bs!1402379 () Bool)

(assert (= bs!1402379 (and d!1858048 d!1857932)))

(assert (=> bs!1402379 (= lambda!323186 lambda!323171)))

(declare-fun bs!1402380 () Bool)

(assert (= bs!1402380 (and d!1858048 d!1857920)))

(assert (=> bs!1402380 (= lambda!323186 lambda!323169)))

(declare-fun bs!1402381 () Bool)

(assert (= bs!1402381 (and d!1858048 d!1857794)))

(assert (=> bs!1402381 (= lambda!323186 lambda!323107)))

(declare-fun bs!1402382 () Bool)

(assert (= bs!1402382 (and d!1858048 d!1857990)))

(assert (=> bs!1402382 (= lambda!323186 lambda!323185)))

(declare-fun bs!1402383 () Bool)

(assert (= bs!1402383 (and d!1858048 d!1857922)))

(assert (=> bs!1402383 (= lambda!323186 lambda!323170)))

(declare-fun bs!1402384 () Bool)

(assert (= bs!1402384 (and d!1858048 d!1857894)))

(assert (=> bs!1402384 (= lambda!323186 lambda!323168)))

(declare-fun b!5925766 () Bool)

(declare-fun e!3627243 () Bool)

(declare-fun lt!2310300 () Regex!15973)

(assert (=> b!5925766 (= e!3627243 (isEmptyLang!1409 lt!2310300))))

(declare-fun b!5925767 () Bool)

(declare-fun e!3627239 () Bool)

(assert (=> b!5925767 (= e!3627243 e!3627239)))

(declare-fun c!1053237 () Bool)

(assert (=> b!5925767 (= c!1053237 (isEmpty!35953 (tail!11570 (t!377611 (unfocusZipperList!1394 zl!343)))))))

(declare-fun b!5925768 () Bool)

(declare-fun e!3627238 () Regex!15973)

(assert (=> b!5925768 (= e!3627238 EmptyLang!15973)))

(declare-fun b!5925769 () Bool)

(assert (=> b!5925769 (= e!3627239 (isUnion!839 lt!2310300))))

(declare-fun b!5925770 () Bool)

(declare-fun e!3627241 () Bool)

(assert (=> b!5925770 (= e!3627241 (isEmpty!35953 (t!377611 (t!377611 (unfocusZipperList!1394 zl!343)))))))

(declare-fun b!5925771 () Bool)

(declare-fun e!3627240 () Regex!15973)

(assert (=> b!5925771 (= e!3627240 (h!70542 (t!377611 (unfocusZipperList!1394 zl!343))))))

(declare-fun b!5925772 () Bool)

(assert (=> b!5925772 (= e!3627240 e!3627238)))

(declare-fun c!1053235 () Bool)

(assert (=> b!5925772 (= c!1053235 ((_ is Cons!64094) (t!377611 (unfocusZipperList!1394 zl!343))))))

(declare-fun e!3627242 () Bool)

(assert (=> d!1858048 e!3627242))

(declare-fun res!2483356 () Bool)

(assert (=> d!1858048 (=> (not res!2483356) (not e!3627242))))

(assert (=> d!1858048 (= res!2483356 (validRegex!7709 lt!2310300))))

(assert (=> d!1858048 (= lt!2310300 e!3627240)))

(declare-fun c!1053236 () Bool)

(assert (=> d!1858048 (= c!1053236 e!3627241)))

(declare-fun res!2483355 () Bool)

(assert (=> d!1858048 (=> (not res!2483355) (not e!3627241))))

(assert (=> d!1858048 (= res!2483355 ((_ is Cons!64094) (t!377611 (unfocusZipperList!1394 zl!343))))))

(assert (=> d!1858048 (forall!15055 (t!377611 (unfocusZipperList!1394 zl!343)) lambda!323186)))

(assert (=> d!1858048 (= (generalisedUnion!1817 (t!377611 (unfocusZipperList!1394 zl!343))) lt!2310300)))

(declare-fun b!5925773 () Bool)

(assert (=> b!5925773 (= e!3627239 (= lt!2310300 (head!12485 (t!377611 (unfocusZipperList!1394 zl!343)))))))

(declare-fun b!5925774 () Bool)

(assert (=> b!5925774 (= e!3627242 e!3627243)))

(declare-fun c!1053234 () Bool)

(assert (=> b!5925774 (= c!1053234 (isEmpty!35953 (t!377611 (unfocusZipperList!1394 zl!343))))))

(declare-fun b!5925775 () Bool)

(assert (=> b!5925775 (= e!3627238 (Union!15973 (h!70542 (t!377611 (unfocusZipperList!1394 zl!343))) (generalisedUnion!1817 (t!377611 (t!377611 (unfocusZipperList!1394 zl!343))))))))

(assert (= (and d!1858048 res!2483355) b!5925770))

(assert (= (and d!1858048 c!1053236) b!5925771))

(assert (= (and d!1858048 (not c!1053236)) b!5925772))

(assert (= (and b!5925772 c!1053235) b!5925775))

(assert (= (and b!5925772 (not c!1053235)) b!5925768))

(assert (= (and d!1858048 res!2483356) b!5925774))

(assert (= (and b!5925774 c!1053234) b!5925766))

(assert (= (and b!5925774 (not c!1053234)) b!5925767))

(assert (= (and b!5925767 c!1053237) b!5925773))

(assert (= (and b!5925767 (not c!1053237)) b!5925769))

(declare-fun m!6819920 () Bool)

(assert (=> b!5925773 m!6819920))

(declare-fun m!6819922 () Bool)

(assert (=> b!5925767 m!6819922))

(assert (=> b!5925767 m!6819922))

(declare-fun m!6819924 () Bool)

(assert (=> b!5925767 m!6819924))

(assert (=> b!5925774 m!6819302))

(declare-fun m!6819926 () Bool)

(assert (=> d!1858048 m!6819926))

(declare-fun m!6819928 () Bool)

(assert (=> d!1858048 m!6819928))

(declare-fun m!6819930 () Bool)

(assert (=> b!5925770 m!6819930))

(declare-fun m!6819932 () Bool)

(assert (=> b!5925775 m!6819932))

(declare-fun m!6819934 () Bool)

(assert (=> b!5925766 m!6819934))

(declare-fun m!6819936 () Bool)

(assert (=> b!5925769 m!6819936))

(assert (=> b!5924856 d!1858048))

(declare-fun d!1858050 () Bool)

(declare-fun res!2483359 () Bool)

(declare-fun e!3627245 () Bool)

(assert (=> d!1858050 (=> res!2483359 e!3627245)))

(assert (=> d!1858050 (= res!2483359 ((_ is ElementMatch!15973) (ite c!1053147 (regOne!32459 r!7292) (regOne!32458 r!7292))))))

(assert (=> d!1858050 (= (validRegex!7709 (ite c!1053147 (regOne!32459 r!7292) (regOne!32458 r!7292))) e!3627245)))

(declare-fun b!5925776 () Bool)

(declare-fun e!3627248 () Bool)

(declare-fun call!470107 () Bool)

(assert (=> b!5925776 (= e!3627248 call!470107)))

(declare-fun b!5925777 () Bool)

(declare-fun e!3627247 () Bool)

(declare-fun e!3627250 () Bool)

(assert (=> b!5925777 (= e!3627247 e!3627250)))

(declare-fun c!1053238 () Bool)

(assert (=> b!5925777 (= c!1053238 ((_ is Union!15973) (ite c!1053147 (regOne!32459 r!7292) (regOne!32458 r!7292))))))

(declare-fun bm!470100 () Bool)

(declare-fun call!470105 () Bool)

(assert (=> bm!470100 (= call!470107 call!470105)))

(declare-fun c!1053239 () Bool)

(declare-fun bm!470101 () Bool)

(assert (=> bm!470101 (= call!470105 (validRegex!7709 (ite c!1053239 (reg!16302 (ite c!1053147 (regOne!32459 r!7292) (regOne!32458 r!7292))) (ite c!1053238 (regTwo!32459 (ite c!1053147 (regOne!32459 r!7292) (regOne!32458 r!7292))) (regTwo!32458 (ite c!1053147 (regOne!32459 r!7292) (regOne!32458 r!7292)))))))))

(declare-fun b!5925778 () Bool)

(declare-fun e!3627249 () Bool)

(assert (=> b!5925778 (= e!3627249 call!470107)))

(declare-fun b!5925779 () Bool)

(declare-fun e!3627244 () Bool)

(assert (=> b!5925779 (= e!3627244 call!470105)))

(declare-fun b!5925780 () Bool)

(declare-fun e!3627246 () Bool)

(assert (=> b!5925780 (= e!3627246 e!3627248)))

(declare-fun res!2483361 () Bool)

(assert (=> b!5925780 (=> (not res!2483361) (not e!3627248))))

(declare-fun call!470106 () Bool)

(assert (=> b!5925780 (= res!2483361 call!470106)))

(declare-fun b!5925781 () Bool)

(declare-fun res!2483360 () Bool)

(assert (=> b!5925781 (=> (not res!2483360) (not e!3627249))))

(assert (=> b!5925781 (= res!2483360 call!470106)))

(assert (=> b!5925781 (= e!3627250 e!3627249)))

(declare-fun bm!470102 () Bool)

(assert (=> bm!470102 (= call!470106 (validRegex!7709 (ite c!1053238 (regOne!32459 (ite c!1053147 (regOne!32459 r!7292) (regOne!32458 r!7292))) (regOne!32458 (ite c!1053147 (regOne!32459 r!7292) (regOne!32458 r!7292))))))))

(declare-fun b!5925782 () Bool)

(declare-fun res!2483358 () Bool)

(assert (=> b!5925782 (=> res!2483358 e!3627246)))

(assert (=> b!5925782 (= res!2483358 (not ((_ is Concat!24818) (ite c!1053147 (regOne!32459 r!7292) (regOne!32458 r!7292)))))))

(assert (=> b!5925782 (= e!3627250 e!3627246)))

(declare-fun b!5925783 () Bool)

(assert (=> b!5925783 (= e!3627245 e!3627247)))

(assert (=> b!5925783 (= c!1053239 ((_ is Star!15973) (ite c!1053147 (regOne!32459 r!7292) (regOne!32458 r!7292))))))

(declare-fun b!5925784 () Bool)

(assert (=> b!5925784 (= e!3627247 e!3627244)))

(declare-fun res!2483357 () Bool)

(assert (=> b!5925784 (= res!2483357 (not (nullable!5968 (reg!16302 (ite c!1053147 (regOne!32459 r!7292) (regOne!32458 r!7292))))))))

(assert (=> b!5925784 (=> (not res!2483357) (not e!3627244))))

(assert (= (and d!1858050 (not res!2483359)) b!5925783))

(assert (= (and b!5925783 c!1053239) b!5925784))

(assert (= (and b!5925783 (not c!1053239)) b!5925777))

(assert (= (and b!5925784 res!2483357) b!5925779))

(assert (= (and b!5925777 c!1053238) b!5925781))

(assert (= (and b!5925777 (not c!1053238)) b!5925782))

(assert (= (and b!5925781 res!2483360) b!5925778))

(assert (= (and b!5925782 (not res!2483358)) b!5925780))

(assert (= (and b!5925780 res!2483361) b!5925776))

(assert (= (or b!5925778 b!5925776) bm!470100))

(assert (= (or b!5925781 b!5925780) bm!470102))

(assert (= (or b!5925779 bm!470100) bm!470101))

(declare-fun m!6819938 () Bool)

(assert (=> bm!470101 m!6819938))

(declare-fun m!6819940 () Bool)

(assert (=> bm!470102 m!6819940))

(declare-fun m!6819942 () Bool)

(assert (=> b!5925784 m!6819942))

(assert (=> bm!470042 d!1858050))

(declare-fun d!1858052 () Bool)

(assert (=> d!1858052 (= (isConcat!924 lt!2310263) ((_ is Concat!24818) lt!2310263))))

(assert (=> b!5925261 d!1858052))

(declare-fun bm!470103 () Bool)

(declare-fun call!470108 () (InoxSet Context!10714))

(declare-fun call!470112 () (InoxSet Context!10714))

(assert (=> bm!470103 (= call!470108 call!470112)))

(declare-fun b!5925785 () Bool)

(declare-fun e!3627253 () (InoxSet Context!10714))

(assert (=> b!5925785 (= e!3627253 (store ((as const (Array Context!10714 Bool)) false) (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343)))) true))))

(declare-fun b!5925786 () Bool)

(declare-fun e!3627256 () (InoxSet Context!10714))

(declare-fun call!470113 () (InoxSet Context!10714))

(assert (=> b!5925786 (= e!3627256 call!470113)))

(declare-fun b!5925788 () Bool)

(declare-fun e!3627254 () (InoxSet Context!10714))

(declare-fun call!470110 () (InoxSet Context!10714))

(assert (=> b!5925788 (= e!3627254 ((_ map or) call!470112 call!470110))))

(declare-fun b!5925789 () Bool)

(declare-fun e!3627251 () (InoxSet Context!10714))

(assert (=> b!5925789 (= e!3627251 call!470113)))

(declare-fun b!5925790 () Bool)

(declare-fun e!3627252 () (InoxSet Context!10714))

(assert (=> b!5925790 (= e!3627252 e!3627256)))

(declare-fun c!1053244 () Bool)

(assert (=> b!5925790 (= c!1053244 ((_ is Concat!24818) (h!70542 (exprs!5857 (h!70544 zl!343)))))))

(declare-fun b!5925791 () Bool)

(declare-fun c!1053242 () Bool)

(assert (=> b!5925791 (= c!1053242 ((_ is Star!15973) (h!70542 (exprs!5857 (h!70544 zl!343)))))))

(assert (=> b!5925791 (= e!3627256 e!3627251)))

(declare-fun call!470111 () List!64218)

(declare-fun c!1053243 () Bool)

(declare-fun bm!470104 () Bool)

(assert (=> bm!470104 (= call!470110 (derivationStepZipperDown!1223 (ite c!1053243 (regTwo!32459 (h!70542 (exprs!5857 (h!70544 zl!343)))) (regOne!32458 (h!70542 (exprs!5857 (h!70544 zl!343))))) (ite c!1053243 (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343)))) (Context!10715 call!470111)) (h!70543 s!2326)))))

(declare-fun c!1053240 () Bool)

(declare-fun bm!470105 () Bool)

(declare-fun call!470109 () List!64218)

(assert (=> bm!470105 (= call!470112 (derivationStepZipperDown!1223 (ite c!1053243 (regOne!32459 (h!70542 (exprs!5857 (h!70544 zl!343)))) (ite c!1053240 (regTwo!32458 (h!70542 (exprs!5857 (h!70544 zl!343)))) (ite c!1053244 (regOne!32458 (h!70542 (exprs!5857 (h!70544 zl!343)))) (reg!16302 (h!70542 (exprs!5857 (h!70544 zl!343))))))) (ite (or c!1053243 c!1053240) (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343)))) (Context!10715 call!470109)) (h!70543 s!2326)))))

(declare-fun b!5925792 () Bool)

(declare-fun e!3627255 () Bool)

(assert (=> b!5925792 (= e!3627255 (nullable!5968 (regOne!32458 (h!70542 (exprs!5857 (h!70544 zl!343))))))))

(declare-fun bm!470106 () Bool)

(assert (=> bm!470106 (= call!470113 call!470108)))

(declare-fun b!5925793 () Bool)

(assert (=> b!5925793 (= e!3627252 ((_ map or) call!470110 call!470108))))

(declare-fun bm!470107 () Bool)

(assert (=> bm!470107 (= call!470109 call!470111)))

(declare-fun b!5925794 () Bool)

(assert (=> b!5925794 (= c!1053240 e!3627255)))

(declare-fun res!2483362 () Bool)

(assert (=> b!5925794 (=> (not res!2483362) (not e!3627255))))

(assert (=> b!5925794 (= res!2483362 ((_ is Concat!24818) (h!70542 (exprs!5857 (h!70544 zl!343)))))))

(assert (=> b!5925794 (= e!3627254 e!3627252)))

(declare-fun d!1858054 () Bool)

(declare-fun c!1053241 () Bool)

(assert (=> d!1858054 (= c!1053241 (and ((_ is ElementMatch!15973) (h!70542 (exprs!5857 (h!70544 zl!343)))) (= (c!1052981 (h!70542 (exprs!5857 (h!70544 zl!343)))) (h!70543 s!2326))))))

(assert (=> d!1858054 (= (derivationStepZipperDown!1223 (h!70542 (exprs!5857 (h!70544 zl!343))) (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343)))) (h!70543 s!2326)) e!3627253)))

(declare-fun b!5925787 () Bool)

(assert (=> b!5925787 (= e!3627253 e!3627254)))

(assert (=> b!5925787 (= c!1053243 ((_ is Union!15973) (h!70542 (exprs!5857 (h!70544 zl!343)))))))

(declare-fun bm!470108 () Bool)

(assert (=> bm!470108 (= call!470111 ($colon$colon!1860 (exprs!5857 (Context!10715 (t!377611 (exprs!5857 (h!70544 zl!343))))) (ite (or c!1053240 c!1053244) (regTwo!32458 (h!70542 (exprs!5857 (h!70544 zl!343)))) (h!70542 (exprs!5857 (h!70544 zl!343))))))))

(declare-fun b!5925795 () Bool)

(assert (=> b!5925795 (= e!3627251 ((as const (Array Context!10714 Bool)) false))))

(assert (= (and d!1858054 c!1053241) b!5925785))

(assert (= (and d!1858054 (not c!1053241)) b!5925787))

(assert (= (and b!5925787 c!1053243) b!5925788))

(assert (= (and b!5925787 (not c!1053243)) b!5925794))

(assert (= (and b!5925794 res!2483362) b!5925792))

(assert (= (and b!5925794 c!1053240) b!5925793))

(assert (= (and b!5925794 (not c!1053240)) b!5925790))

(assert (= (and b!5925790 c!1053244) b!5925786))

(assert (= (and b!5925790 (not c!1053244)) b!5925791))

(assert (= (and b!5925791 c!1053242) b!5925789))

(assert (= (and b!5925791 (not c!1053242)) b!5925795))

(assert (= (or b!5925786 b!5925789) bm!470107))

(assert (= (or b!5925786 b!5925789) bm!470106))

(assert (= (or b!5925793 bm!470107) bm!470108))

(assert (= (or b!5925793 bm!470106) bm!470103))

(assert (= (or b!5925788 b!5925793) bm!470104))

(assert (= (or b!5925788 bm!470103) bm!470105))

(declare-fun m!6819944 () Bool)

(assert (=> bm!470108 m!6819944))

(declare-fun m!6819946 () Bool)

(assert (=> bm!470104 m!6819946))

(declare-fun m!6819948 () Bool)

(assert (=> bm!470105 m!6819948))

(declare-fun m!6819950 () Bool)

(assert (=> b!5925785 m!6819950))

(declare-fun m!6819952 () Bool)

(assert (=> b!5925792 m!6819952))

(assert (=> bm!470031 d!1858054))

(declare-fun b!5925799 () Bool)

(declare-fun e!3627257 () Bool)

(declare-fun tp!1647855 () Bool)

(declare-fun tp!1647852 () Bool)

(assert (=> b!5925799 (= e!3627257 (and tp!1647855 tp!1647852))))

(declare-fun b!5925796 () Bool)

(assert (=> b!5925796 (= e!3627257 tp_is_empty!41199)))

(assert (=> b!5925394 (= tp!1647769 e!3627257)))

(declare-fun b!5925797 () Bool)

(declare-fun tp!1647854 () Bool)

(declare-fun tp!1647853 () Bool)

(assert (=> b!5925797 (= e!3627257 (and tp!1647854 tp!1647853))))

(declare-fun b!5925798 () Bool)

(declare-fun tp!1647851 () Bool)

(assert (=> b!5925798 (= e!3627257 tp!1647851)))

(assert (= (and b!5925394 ((_ is ElementMatch!15973) (regOne!32458 (regTwo!32459 r!7292)))) b!5925796))

(assert (= (and b!5925394 ((_ is Concat!24818) (regOne!32458 (regTwo!32459 r!7292)))) b!5925797))

(assert (= (and b!5925394 ((_ is Star!15973) (regOne!32458 (regTwo!32459 r!7292)))) b!5925798))

(assert (= (and b!5925394 ((_ is Union!15973) (regOne!32458 (regTwo!32459 r!7292)))) b!5925799))

(declare-fun b!5925803 () Bool)

(declare-fun e!3627258 () Bool)

(declare-fun tp!1647860 () Bool)

(declare-fun tp!1647857 () Bool)

(assert (=> b!5925803 (= e!3627258 (and tp!1647860 tp!1647857))))

(declare-fun b!5925800 () Bool)

(assert (=> b!5925800 (= e!3627258 tp_is_empty!41199)))

(assert (=> b!5925394 (= tp!1647768 e!3627258)))

(declare-fun b!5925801 () Bool)

(declare-fun tp!1647859 () Bool)

(declare-fun tp!1647858 () Bool)

(assert (=> b!5925801 (= e!3627258 (and tp!1647859 tp!1647858))))

(declare-fun b!5925802 () Bool)

(declare-fun tp!1647856 () Bool)

(assert (=> b!5925802 (= e!3627258 tp!1647856)))

(assert (= (and b!5925394 ((_ is ElementMatch!15973) (regTwo!32458 (regTwo!32459 r!7292)))) b!5925800))

(assert (= (and b!5925394 ((_ is Concat!24818) (regTwo!32458 (regTwo!32459 r!7292)))) b!5925801))

(assert (= (and b!5925394 ((_ is Star!15973) (regTwo!32458 (regTwo!32459 r!7292)))) b!5925802))

(assert (= (and b!5925394 ((_ is Union!15973) (regTwo!32458 (regTwo!32459 r!7292)))) b!5925803))

(declare-fun b!5925807 () Bool)

(declare-fun e!3627259 () Bool)

(declare-fun tp!1647865 () Bool)

(declare-fun tp!1647862 () Bool)

(assert (=> b!5925807 (= e!3627259 (and tp!1647865 tp!1647862))))

(declare-fun b!5925804 () Bool)

(assert (=> b!5925804 (= e!3627259 tp_is_empty!41199)))

(assert (=> b!5925395 (= tp!1647766 e!3627259)))

(declare-fun b!5925805 () Bool)

(declare-fun tp!1647864 () Bool)

(declare-fun tp!1647863 () Bool)

(assert (=> b!5925805 (= e!3627259 (and tp!1647864 tp!1647863))))

(declare-fun b!5925806 () Bool)

(declare-fun tp!1647861 () Bool)

(assert (=> b!5925806 (= e!3627259 tp!1647861)))

(assert (= (and b!5925395 ((_ is ElementMatch!15973) (reg!16302 (regTwo!32459 r!7292)))) b!5925804))

(assert (= (and b!5925395 ((_ is Concat!24818) (reg!16302 (regTwo!32459 r!7292)))) b!5925805))

(assert (= (and b!5925395 ((_ is Star!15973) (reg!16302 (regTwo!32459 r!7292)))) b!5925806))

(assert (= (and b!5925395 ((_ is Union!15973) (reg!16302 (regTwo!32459 r!7292)))) b!5925807))

(declare-fun b!5925811 () Bool)

(declare-fun e!3627260 () Bool)

(declare-fun tp!1647870 () Bool)

(declare-fun tp!1647867 () Bool)

(assert (=> b!5925811 (= e!3627260 (and tp!1647870 tp!1647867))))

(declare-fun b!5925808 () Bool)

(assert (=> b!5925808 (= e!3627260 tp_is_empty!41199)))

(assert (=> b!5925396 (= tp!1647770 e!3627260)))

(declare-fun b!5925809 () Bool)

(declare-fun tp!1647869 () Bool)

(declare-fun tp!1647868 () Bool)

(assert (=> b!5925809 (= e!3627260 (and tp!1647869 tp!1647868))))

(declare-fun b!5925810 () Bool)

(declare-fun tp!1647866 () Bool)

(assert (=> b!5925810 (= e!3627260 tp!1647866)))

(assert (= (and b!5925396 ((_ is ElementMatch!15973) (regOne!32459 (regTwo!32459 r!7292)))) b!5925808))

(assert (= (and b!5925396 ((_ is Concat!24818) (regOne!32459 (regTwo!32459 r!7292)))) b!5925809))

(assert (= (and b!5925396 ((_ is Star!15973) (regOne!32459 (regTwo!32459 r!7292)))) b!5925810))

(assert (= (and b!5925396 ((_ is Union!15973) (regOne!32459 (regTwo!32459 r!7292)))) b!5925811))

(declare-fun b!5925815 () Bool)

(declare-fun e!3627261 () Bool)

(declare-fun tp!1647875 () Bool)

(declare-fun tp!1647872 () Bool)

(assert (=> b!5925815 (= e!3627261 (and tp!1647875 tp!1647872))))

(declare-fun b!5925812 () Bool)

(assert (=> b!5925812 (= e!3627261 tp_is_empty!41199)))

(assert (=> b!5925396 (= tp!1647767 e!3627261)))

(declare-fun b!5925813 () Bool)

(declare-fun tp!1647874 () Bool)

(declare-fun tp!1647873 () Bool)

(assert (=> b!5925813 (= e!3627261 (and tp!1647874 tp!1647873))))

(declare-fun b!5925814 () Bool)

(declare-fun tp!1647871 () Bool)

(assert (=> b!5925814 (= e!3627261 tp!1647871)))

(assert (= (and b!5925396 ((_ is ElementMatch!15973) (regTwo!32459 (regTwo!32459 r!7292)))) b!5925812))

(assert (= (and b!5925396 ((_ is Concat!24818) (regTwo!32459 (regTwo!32459 r!7292)))) b!5925813))

(assert (= (and b!5925396 ((_ is Star!15973) (regTwo!32459 (regTwo!32459 r!7292)))) b!5925814))

(assert (= (and b!5925396 ((_ is Union!15973) (regTwo!32459 (regTwo!32459 r!7292)))) b!5925815))

(declare-fun b!5925817 () Bool)

(declare-fun e!3627263 () Bool)

(declare-fun tp!1647876 () Bool)

(assert (=> b!5925817 (= e!3627263 tp!1647876)))

(declare-fun b!5925816 () Bool)

(declare-fun e!3627262 () Bool)

(declare-fun tp!1647877 () Bool)

(assert (=> b!5925816 (= e!3627262 (and (inv!83179 (h!70544 (t!377613 (t!377613 zl!343)))) e!3627263 tp!1647877))))

(assert (=> b!5925446 (= tp!1647818 e!3627262)))

(assert (= b!5925816 b!5925817))

(assert (= (and b!5925446 ((_ is Cons!64096) (t!377613 (t!377613 zl!343)))) b!5925816))

(declare-fun m!6819954 () Bool)

(assert (=> b!5925816 m!6819954))

(declare-fun b!5925818 () Bool)

(declare-fun e!3627264 () Bool)

(declare-fun tp!1647878 () Bool)

(declare-fun tp!1647879 () Bool)

(assert (=> b!5925818 (= e!3627264 (and tp!1647878 tp!1647879))))

(assert (=> b!5925447 (= tp!1647817 e!3627264)))

(assert (= (and b!5925447 ((_ is Cons!64094) (exprs!5857 (h!70544 (t!377613 zl!343))))) b!5925818))

(declare-fun condSetEmpty!40212 () Bool)

(assert (=> setNonEmpty!40205 (= condSetEmpty!40212 (= setRest!40205 ((as const (Array Context!10714 Bool)) false)))))

(declare-fun setRes!40212 () Bool)

(assert (=> setNonEmpty!40205 (= tp!1647797 setRes!40212)))

(declare-fun setIsEmpty!40212 () Bool)

(assert (=> setIsEmpty!40212 setRes!40212))

(declare-fun e!3627265 () Bool)

(declare-fun setNonEmpty!40212 () Bool)

(declare-fun setElem!40212 () Context!10714)

(declare-fun tp!1647881 () Bool)

(assert (=> setNonEmpty!40212 (= setRes!40212 (and tp!1647881 (inv!83179 setElem!40212) e!3627265))))

(declare-fun setRest!40212 () (InoxSet Context!10714))

(assert (=> setNonEmpty!40212 (= setRest!40205 ((_ map or) (store ((as const (Array Context!10714 Bool)) false) setElem!40212 true) setRest!40212))))

(declare-fun b!5925819 () Bool)

(declare-fun tp!1647880 () Bool)

(assert (=> b!5925819 (= e!3627265 tp!1647880)))

(assert (= (and setNonEmpty!40205 condSetEmpty!40212) setIsEmpty!40212))

(assert (= (and setNonEmpty!40205 (not condSetEmpty!40212)) setNonEmpty!40212))

(assert (= setNonEmpty!40212 b!5925819))

(declare-fun m!6819956 () Bool)

(assert (=> setNonEmpty!40212 m!6819956))

(declare-fun b!5925823 () Bool)

(declare-fun e!3627266 () Bool)

(declare-fun tp!1647886 () Bool)

(declare-fun tp!1647883 () Bool)

(assert (=> b!5925823 (= e!3627266 (and tp!1647886 tp!1647883))))

(declare-fun b!5925820 () Bool)

(assert (=> b!5925820 (= e!3627266 tp_is_empty!41199)))

(assert (=> b!5925359 (= tp!1647727 e!3627266)))

(declare-fun b!5925821 () Bool)

(declare-fun tp!1647885 () Bool)

(declare-fun tp!1647884 () Bool)

(assert (=> b!5925821 (= e!3627266 (and tp!1647885 tp!1647884))))

(declare-fun b!5925822 () Bool)

(declare-fun tp!1647882 () Bool)

(assert (=> b!5925822 (= e!3627266 tp!1647882)))

(assert (= (and b!5925359 ((_ is ElementMatch!15973) (h!70542 (exprs!5857 setElem!40202)))) b!5925820))

(assert (= (and b!5925359 ((_ is Concat!24818) (h!70542 (exprs!5857 setElem!40202)))) b!5925821))

(assert (= (and b!5925359 ((_ is Star!15973) (h!70542 (exprs!5857 setElem!40202)))) b!5925822))

(assert (= (and b!5925359 ((_ is Union!15973) (h!70542 (exprs!5857 setElem!40202)))) b!5925823))

(declare-fun b!5925824 () Bool)

(declare-fun e!3627267 () Bool)

(declare-fun tp!1647887 () Bool)

(declare-fun tp!1647888 () Bool)

(assert (=> b!5925824 (= e!3627267 (and tp!1647887 tp!1647888))))

(assert (=> b!5925359 (= tp!1647728 e!3627267)))

(assert (= (and b!5925359 ((_ is Cons!64094) (t!377611 (exprs!5857 setElem!40202)))) b!5925824))

(declare-fun b!5925828 () Bool)

(declare-fun e!3627268 () Bool)

(declare-fun tp!1647893 () Bool)

(declare-fun tp!1647890 () Bool)

(assert (=> b!5925828 (= e!3627268 (and tp!1647893 tp!1647890))))

(declare-fun b!5925825 () Bool)

(assert (=> b!5925825 (= e!3627268 tp_is_empty!41199)))

(assert (=> b!5925375 (= tp!1647741 e!3627268)))

(declare-fun b!5925826 () Bool)

(declare-fun tp!1647892 () Bool)

(declare-fun tp!1647891 () Bool)

(assert (=> b!5925826 (= e!3627268 (and tp!1647892 tp!1647891))))

(declare-fun b!5925827 () Bool)

(declare-fun tp!1647889 () Bool)

(assert (=> b!5925827 (= e!3627268 tp!1647889)))

(assert (= (and b!5925375 ((_ is ElementMatch!15973) (reg!16302 (regOne!32458 r!7292)))) b!5925825))

(assert (= (and b!5925375 ((_ is Concat!24818) (reg!16302 (regOne!32458 r!7292)))) b!5925826))

(assert (= (and b!5925375 ((_ is Star!15973) (reg!16302 (regOne!32458 r!7292)))) b!5925827))

(assert (= (and b!5925375 ((_ is Union!15973) (reg!16302 (regOne!32458 r!7292)))) b!5925828))

(declare-fun b!5925832 () Bool)

(declare-fun e!3627269 () Bool)

(declare-fun tp!1647898 () Bool)

(declare-fun tp!1647895 () Bool)

(assert (=> b!5925832 (= e!3627269 (and tp!1647898 tp!1647895))))

(declare-fun b!5925829 () Bool)

(assert (=> b!5925829 (= e!3627269 tp_is_empty!41199)))

(assert (=> b!5925376 (= tp!1647745 e!3627269)))

(declare-fun b!5925830 () Bool)

(declare-fun tp!1647897 () Bool)

(declare-fun tp!1647896 () Bool)

(assert (=> b!5925830 (= e!3627269 (and tp!1647897 tp!1647896))))

(declare-fun b!5925831 () Bool)

(declare-fun tp!1647894 () Bool)

(assert (=> b!5925831 (= e!3627269 tp!1647894)))

(assert (= (and b!5925376 ((_ is ElementMatch!15973) (regOne!32459 (regOne!32458 r!7292)))) b!5925829))

(assert (= (and b!5925376 ((_ is Concat!24818) (regOne!32459 (regOne!32458 r!7292)))) b!5925830))

(assert (= (and b!5925376 ((_ is Star!15973) (regOne!32459 (regOne!32458 r!7292)))) b!5925831))

(assert (= (and b!5925376 ((_ is Union!15973) (regOne!32459 (regOne!32458 r!7292)))) b!5925832))

(declare-fun b!5925836 () Bool)

(declare-fun e!3627270 () Bool)

(declare-fun tp!1647903 () Bool)

(declare-fun tp!1647900 () Bool)

(assert (=> b!5925836 (= e!3627270 (and tp!1647903 tp!1647900))))

(declare-fun b!5925833 () Bool)

(assert (=> b!5925833 (= e!3627270 tp_is_empty!41199)))

(assert (=> b!5925376 (= tp!1647742 e!3627270)))

(declare-fun b!5925834 () Bool)

(declare-fun tp!1647902 () Bool)

(declare-fun tp!1647901 () Bool)

(assert (=> b!5925834 (= e!3627270 (and tp!1647902 tp!1647901))))

(declare-fun b!5925835 () Bool)

(declare-fun tp!1647899 () Bool)

(assert (=> b!5925835 (= e!3627270 tp!1647899)))

(assert (= (and b!5925376 ((_ is ElementMatch!15973) (regTwo!32459 (regOne!32458 r!7292)))) b!5925833))

(assert (= (and b!5925376 ((_ is Concat!24818) (regTwo!32459 (regOne!32458 r!7292)))) b!5925834))

(assert (= (and b!5925376 ((_ is Star!15973) (regTwo!32459 (regOne!32458 r!7292)))) b!5925835))

(assert (= (and b!5925376 ((_ is Union!15973) (regTwo!32459 (regOne!32458 r!7292)))) b!5925836))

(declare-fun b!5925840 () Bool)

(declare-fun e!3627271 () Bool)

(declare-fun tp!1647908 () Bool)

(declare-fun tp!1647905 () Bool)

(assert (=> b!5925840 (= e!3627271 (and tp!1647908 tp!1647905))))

(declare-fun b!5925837 () Bool)

(assert (=> b!5925837 (= e!3627271 tp_is_empty!41199)))

(assert (=> b!5925384 (= tp!1647755 e!3627271)))

(declare-fun b!5925838 () Bool)

(declare-fun tp!1647907 () Bool)

(declare-fun tp!1647906 () Bool)

(assert (=> b!5925838 (= e!3627271 (and tp!1647907 tp!1647906))))

(declare-fun b!5925839 () Bool)

(declare-fun tp!1647904 () Bool)

(assert (=> b!5925839 (= e!3627271 tp!1647904)))

(assert (= (and b!5925384 ((_ is ElementMatch!15973) (regOne!32458 (regTwo!32458 r!7292)))) b!5925837))

(assert (= (and b!5925384 ((_ is Concat!24818) (regOne!32458 (regTwo!32458 r!7292)))) b!5925838))

(assert (= (and b!5925384 ((_ is Star!15973) (regOne!32458 (regTwo!32458 r!7292)))) b!5925839))

(assert (= (and b!5925384 ((_ is Union!15973) (regOne!32458 (regTwo!32458 r!7292)))) b!5925840))

(declare-fun b!5925844 () Bool)

(declare-fun e!3627272 () Bool)

(declare-fun tp!1647913 () Bool)

(declare-fun tp!1647910 () Bool)

(assert (=> b!5925844 (= e!3627272 (and tp!1647913 tp!1647910))))

(declare-fun b!5925841 () Bool)

(assert (=> b!5925841 (= e!3627272 tp_is_empty!41199)))

(assert (=> b!5925384 (= tp!1647754 e!3627272)))

(declare-fun b!5925842 () Bool)

(declare-fun tp!1647912 () Bool)

(declare-fun tp!1647911 () Bool)

(assert (=> b!5925842 (= e!3627272 (and tp!1647912 tp!1647911))))

(declare-fun b!5925843 () Bool)

(declare-fun tp!1647909 () Bool)

(assert (=> b!5925843 (= e!3627272 tp!1647909)))

(assert (= (and b!5925384 ((_ is ElementMatch!15973) (regTwo!32458 (regTwo!32458 r!7292)))) b!5925841))

(assert (= (and b!5925384 ((_ is Concat!24818) (regTwo!32458 (regTwo!32458 r!7292)))) b!5925842))

(assert (= (and b!5925384 ((_ is Star!15973) (regTwo!32458 (regTwo!32458 r!7292)))) b!5925843))

(assert (= (and b!5925384 ((_ is Union!15973) (regTwo!32458 (regTwo!32458 r!7292)))) b!5925844))

(declare-fun b!5925848 () Bool)

(declare-fun e!3627273 () Bool)

(declare-fun tp!1647918 () Bool)

(declare-fun tp!1647915 () Bool)

(assert (=> b!5925848 (= e!3627273 (and tp!1647918 tp!1647915))))

(declare-fun b!5925845 () Bool)

(assert (=> b!5925845 (= e!3627273 tp_is_empty!41199)))

(assert (=> b!5925385 (= tp!1647750 e!3627273)))

(declare-fun b!5925846 () Bool)

(declare-fun tp!1647917 () Bool)

(declare-fun tp!1647916 () Bool)

(assert (=> b!5925846 (= e!3627273 (and tp!1647917 tp!1647916))))

(declare-fun b!5925847 () Bool)

(declare-fun tp!1647914 () Bool)

(assert (=> b!5925847 (= e!3627273 tp!1647914)))

(assert (= (and b!5925385 ((_ is ElementMatch!15973) (reg!16302 (regTwo!32458 r!7292)))) b!5925845))

(assert (= (and b!5925385 ((_ is Concat!24818) (reg!16302 (regTwo!32458 r!7292)))) b!5925846))

(assert (= (and b!5925385 ((_ is Star!15973) (reg!16302 (regTwo!32458 r!7292)))) b!5925847))

(assert (= (and b!5925385 ((_ is Union!15973) (reg!16302 (regTwo!32458 r!7292)))) b!5925848))

(declare-fun b!5925852 () Bool)

(declare-fun e!3627274 () Bool)

(declare-fun tp!1647923 () Bool)

(declare-fun tp!1647920 () Bool)

(assert (=> b!5925852 (= e!3627274 (and tp!1647923 tp!1647920))))

(declare-fun b!5925849 () Bool)

(assert (=> b!5925849 (= e!3627274 tp_is_empty!41199)))

(assert (=> b!5925386 (= tp!1647756 e!3627274)))

(declare-fun b!5925850 () Bool)

(declare-fun tp!1647922 () Bool)

(declare-fun tp!1647921 () Bool)

(assert (=> b!5925850 (= e!3627274 (and tp!1647922 tp!1647921))))

(declare-fun b!5925851 () Bool)

(declare-fun tp!1647919 () Bool)

(assert (=> b!5925851 (= e!3627274 tp!1647919)))

(assert (= (and b!5925386 ((_ is ElementMatch!15973) (regOne!32459 (regTwo!32458 r!7292)))) b!5925849))

(assert (= (and b!5925386 ((_ is Concat!24818) (regOne!32459 (regTwo!32458 r!7292)))) b!5925850))

(assert (= (and b!5925386 ((_ is Star!15973) (regOne!32459 (regTwo!32458 r!7292)))) b!5925851))

(assert (= (and b!5925386 ((_ is Union!15973) (regOne!32459 (regTwo!32458 r!7292)))) b!5925852))

(declare-fun b!5925856 () Bool)

(declare-fun e!3627275 () Bool)

(declare-fun tp!1647928 () Bool)

(declare-fun tp!1647925 () Bool)

(assert (=> b!5925856 (= e!3627275 (and tp!1647928 tp!1647925))))

(declare-fun b!5925853 () Bool)

(assert (=> b!5925853 (= e!3627275 tp_is_empty!41199)))

(assert (=> b!5925386 (= tp!1647752 e!3627275)))

(declare-fun b!5925854 () Bool)

(declare-fun tp!1647927 () Bool)

(declare-fun tp!1647926 () Bool)

(assert (=> b!5925854 (= e!3627275 (and tp!1647927 tp!1647926))))

(declare-fun b!5925855 () Bool)

(declare-fun tp!1647924 () Bool)

(assert (=> b!5925855 (= e!3627275 tp!1647924)))

(assert (= (and b!5925386 ((_ is ElementMatch!15973) (regTwo!32459 (regTwo!32458 r!7292)))) b!5925853))

(assert (= (and b!5925386 ((_ is Concat!24818) (regTwo!32459 (regTwo!32458 r!7292)))) b!5925854))

(assert (= (and b!5925386 ((_ is Star!15973) (regTwo!32459 (regTwo!32458 r!7292)))) b!5925855))

(assert (= (and b!5925386 ((_ is Union!15973) (regTwo!32459 (regTwo!32458 r!7292)))) b!5925856))

(declare-fun b!5925860 () Bool)

(declare-fun e!3627276 () Bool)

(declare-fun tp!1647933 () Bool)

(declare-fun tp!1647930 () Bool)

(assert (=> b!5925860 (= e!3627276 (and tp!1647933 tp!1647930))))

(declare-fun b!5925857 () Bool)

(assert (=> b!5925857 (= e!3627276 tp_is_empty!41199)))

(assert (=> b!5925398 (= tp!1647774 e!3627276)))

(declare-fun b!5925858 () Bool)

(declare-fun tp!1647932 () Bool)

(declare-fun tp!1647931 () Bool)

(assert (=> b!5925858 (= e!3627276 (and tp!1647932 tp!1647931))))

(declare-fun b!5925859 () Bool)

(declare-fun tp!1647929 () Bool)

(assert (=> b!5925859 (= e!3627276 tp!1647929)))

(assert (= (and b!5925398 ((_ is ElementMatch!15973) (regOne!32458 (reg!16302 r!7292)))) b!5925857))

(assert (= (and b!5925398 ((_ is Concat!24818) (regOne!32458 (reg!16302 r!7292)))) b!5925858))

(assert (= (and b!5925398 ((_ is Star!15973) (regOne!32458 (reg!16302 r!7292)))) b!5925859))

(assert (= (and b!5925398 ((_ is Union!15973) (regOne!32458 (reg!16302 r!7292)))) b!5925860))

(declare-fun b!5925864 () Bool)

(declare-fun e!3627277 () Bool)

(declare-fun tp!1647938 () Bool)

(declare-fun tp!1647935 () Bool)

(assert (=> b!5925864 (= e!3627277 (and tp!1647938 tp!1647935))))

(declare-fun b!5925861 () Bool)

(assert (=> b!5925861 (= e!3627277 tp_is_empty!41199)))

(assert (=> b!5925398 (= tp!1647773 e!3627277)))

(declare-fun b!5925862 () Bool)

(declare-fun tp!1647937 () Bool)

(declare-fun tp!1647936 () Bool)

(assert (=> b!5925862 (= e!3627277 (and tp!1647937 tp!1647936))))

(declare-fun b!5925863 () Bool)

(declare-fun tp!1647934 () Bool)

(assert (=> b!5925863 (= e!3627277 tp!1647934)))

(assert (= (and b!5925398 ((_ is ElementMatch!15973) (regTwo!32458 (reg!16302 r!7292)))) b!5925861))

(assert (= (and b!5925398 ((_ is Concat!24818) (regTwo!32458 (reg!16302 r!7292)))) b!5925862))

(assert (= (and b!5925398 ((_ is Star!15973) (regTwo!32458 (reg!16302 r!7292)))) b!5925863))

(assert (= (and b!5925398 ((_ is Union!15973) (regTwo!32458 (reg!16302 r!7292)))) b!5925864))

(declare-fun b!5925868 () Bool)

(declare-fun e!3627278 () Bool)

(declare-fun tp!1647943 () Bool)

(declare-fun tp!1647940 () Bool)

(assert (=> b!5925868 (= e!3627278 (and tp!1647943 tp!1647940))))

(declare-fun b!5925865 () Bool)

(assert (=> b!5925865 (= e!3627278 tp_is_empty!41199)))

(assert (=> b!5925390 (= tp!1647764 e!3627278)))

(declare-fun b!5925866 () Bool)

(declare-fun tp!1647942 () Bool)

(declare-fun tp!1647941 () Bool)

(assert (=> b!5925866 (= e!3627278 (and tp!1647942 tp!1647941))))

(declare-fun b!5925867 () Bool)

(declare-fun tp!1647939 () Bool)

(assert (=> b!5925867 (= e!3627278 tp!1647939)))

(assert (= (and b!5925390 ((_ is ElementMatch!15973) (regOne!32458 (regOne!32459 r!7292)))) b!5925865))

(assert (= (and b!5925390 ((_ is Concat!24818) (regOne!32458 (regOne!32459 r!7292)))) b!5925866))

(assert (= (and b!5925390 ((_ is Star!15973) (regOne!32458 (regOne!32459 r!7292)))) b!5925867))

(assert (= (and b!5925390 ((_ is Union!15973) (regOne!32458 (regOne!32459 r!7292)))) b!5925868))

(declare-fun b!5925872 () Bool)

(declare-fun e!3627279 () Bool)

(declare-fun tp!1647948 () Bool)

(declare-fun tp!1647945 () Bool)

(assert (=> b!5925872 (= e!3627279 (and tp!1647948 tp!1647945))))

(declare-fun b!5925869 () Bool)

(assert (=> b!5925869 (= e!3627279 tp_is_empty!41199)))

(assert (=> b!5925390 (= tp!1647763 e!3627279)))

(declare-fun b!5925870 () Bool)

(declare-fun tp!1647947 () Bool)

(declare-fun tp!1647946 () Bool)

(assert (=> b!5925870 (= e!3627279 (and tp!1647947 tp!1647946))))

(declare-fun b!5925871 () Bool)

(declare-fun tp!1647944 () Bool)

(assert (=> b!5925871 (= e!3627279 tp!1647944)))

(assert (= (and b!5925390 ((_ is ElementMatch!15973) (regTwo!32458 (regOne!32459 r!7292)))) b!5925869))

(assert (= (and b!5925390 ((_ is Concat!24818) (regTwo!32458 (regOne!32459 r!7292)))) b!5925870))

(assert (= (and b!5925390 ((_ is Star!15973) (regTwo!32458 (regOne!32459 r!7292)))) b!5925871))

(assert (= (and b!5925390 ((_ is Union!15973) (regTwo!32458 (regOne!32459 r!7292)))) b!5925872))

(declare-fun b!5925876 () Bool)

(declare-fun e!3627280 () Bool)

(declare-fun tp!1647953 () Bool)

(declare-fun tp!1647950 () Bool)

(assert (=> b!5925876 (= e!3627280 (and tp!1647953 tp!1647950))))

(declare-fun b!5925873 () Bool)

(assert (=> b!5925873 (= e!3627280 tp_is_empty!41199)))

(assert (=> b!5925399 (= tp!1647771 e!3627280)))

(declare-fun b!5925874 () Bool)

(declare-fun tp!1647952 () Bool)

(declare-fun tp!1647951 () Bool)

(assert (=> b!5925874 (= e!3627280 (and tp!1647952 tp!1647951))))

(declare-fun b!5925875 () Bool)

(declare-fun tp!1647949 () Bool)

(assert (=> b!5925875 (= e!3627280 tp!1647949)))

(assert (= (and b!5925399 ((_ is ElementMatch!15973) (reg!16302 (reg!16302 r!7292)))) b!5925873))

(assert (= (and b!5925399 ((_ is Concat!24818) (reg!16302 (reg!16302 r!7292)))) b!5925874))

(assert (= (and b!5925399 ((_ is Star!15973) (reg!16302 (reg!16302 r!7292)))) b!5925875))

(assert (= (and b!5925399 ((_ is Union!15973) (reg!16302 (reg!16302 r!7292)))) b!5925876))

(declare-fun b!5925880 () Bool)

(declare-fun e!3627281 () Bool)

(declare-fun tp!1647958 () Bool)

(declare-fun tp!1647955 () Bool)

(assert (=> b!5925880 (= e!3627281 (and tp!1647958 tp!1647955))))

(declare-fun b!5925877 () Bool)

(assert (=> b!5925877 (= e!3627281 tp_is_empty!41199)))

(assert (=> b!5925400 (= tp!1647775 e!3627281)))

(declare-fun b!5925878 () Bool)

(declare-fun tp!1647957 () Bool)

(declare-fun tp!1647956 () Bool)

(assert (=> b!5925878 (= e!3627281 (and tp!1647957 tp!1647956))))

(declare-fun b!5925879 () Bool)

(declare-fun tp!1647954 () Bool)

(assert (=> b!5925879 (= e!3627281 tp!1647954)))

(assert (= (and b!5925400 ((_ is ElementMatch!15973) (regOne!32459 (reg!16302 r!7292)))) b!5925877))

(assert (= (and b!5925400 ((_ is Concat!24818) (regOne!32459 (reg!16302 r!7292)))) b!5925878))

(assert (= (and b!5925400 ((_ is Star!15973) (regOne!32459 (reg!16302 r!7292)))) b!5925879))

(assert (= (and b!5925400 ((_ is Union!15973) (regOne!32459 (reg!16302 r!7292)))) b!5925880))

(declare-fun b!5925884 () Bool)

(declare-fun e!3627282 () Bool)

(declare-fun tp!1647963 () Bool)

(declare-fun tp!1647960 () Bool)

(assert (=> b!5925884 (= e!3627282 (and tp!1647963 tp!1647960))))

(declare-fun b!5925881 () Bool)

(assert (=> b!5925881 (= e!3627282 tp_is_empty!41199)))

(assert (=> b!5925400 (= tp!1647772 e!3627282)))

(declare-fun b!5925882 () Bool)

(declare-fun tp!1647962 () Bool)

(declare-fun tp!1647961 () Bool)

(assert (=> b!5925882 (= e!3627282 (and tp!1647962 tp!1647961))))

(declare-fun b!5925883 () Bool)

(declare-fun tp!1647959 () Bool)

(assert (=> b!5925883 (= e!3627282 tp!1647959)))

(assert (= (and b!5925400 ((_ is ElementMatch!15973) (regTwo!32459 (reg!16302 r!7292)))) b!5925881))

(assert (= (and b!5925400 ((_ is Concat!24818) (regTwo!32459 (reg!16302 r!7292)))) b!5925882))

(assert (= (and b!5925400 ((_ is Star!15973) (regTwo!32459 (reg!16302 r!7292)))) b!5925883))

(assert (= (and b!5925400 ((_ is Union!15973) (regTwo!32459 (reg!16302 r!7292)))) b!5925884))

(declare-fun b!5925888 () Bool)

(declare-fun e!3627283 () Bool)

(declare-fun tp!1647968 () Bool)

(declare-fun tp!1647965 () Bool)

(assert (=> b!5925888 (= e!3627283 (and tp!1647968 tp!1647965))))

(declare-fun b!5925885 () Bool)

(assert (=> b!5925885 (= e!3627283 tp_is_empty!41199)))

(assert (=> b!5925391 (= tp!1647761 e!3627283)))

(declare-fun b!5925886 () Bool)

(declare-fun tp!1647967 () Bool)

(declare-fun tp!1647966 () Bool)

(assert (=> b!5925886 (= e!3627283 (and tp!1647967 tp!1647966))))

(declare-fun b!5925887 () Bool)

(declare-fun tp!1647964 () Bool)

(assert (=> b!5925887 (= e!3627283 tp!1647964)))

(assert (= (and b!5925391 ((_ is ElementMatch!15973) (reg!16302 (regOne!32459 r!7292)))) b!5925885))

(assert (= (and b!5925391 ((_ is Concat!24818) (reg!16302 (regOne!32459 r!7292)))) b!5925886))

(assert (= (and b!5925391 ((_ is Star!15973) (reg!16302 (regOne!32459 r!7292)))) b!5925887))

(assert (= (and b!5925391 ((_ is Union!15973) (reg!16302 (regOne!32459 r!7292)))) b!5925888))

(declare-fun b!5925892 () Bool)

(declare-fun e!3627284 () Bool)

(declare-fun tp!1647973 () Bool)

(declare-fun tp!1647970 () Bool)

(assert (=> b!5925892 (= e!3627284 (and tp!1647973 tp!1647970))))

(declare-fun b!5925889 () Bool)

(assert (=> b!5925889 (= e!3627284 tp_is_empty!41199)))

(assert (=> b!5925392 (= tp!1647765 e!3627284)))

(declare-fun b!5925890 () Bool)

(declare-fun tp!1647972 () Bool)

(declare-fun tp!1647971 () Bool)

(assert (=> b!5925890 (= e!3627284 (and tp!1647972 tp!1647971))))

(declare-fun b!5925891 () Bool)

(declare-fun tp!1647969 () Bool)

(assert (=> b!5925891 (= e!3627284 tp!1647969)))

(assert (= (and b!5925392 ((_ is ElementMatch!15973) (regOne!32459 (regOne!32459 r!7292)))) b!5925889))

(assert (= (and b!5925392 ((_ is Concat!24818) (regOne!32459 (regOne!32459 r!7292)))) b!5925890))

(assert (= (and b!5925392 ((_ is Star!15973) (regOne!32459 (regOne!32459 r!7292)))) b!5925891))

(assert (= (and b!5925392 ((_ is Union!15973) (regOne!32459 (regOne!32459 r!7292)))) b!5925892))

(declare-fun b!5925896 () Bool)

(declare-fun e!3627285 () Bool)

(declare-fun tp!1647978 () Bool)

(declare-fun tp!1647975 () Bool)

(assert (=> b!5925896 (= e!3627285 (and tp!1647978 tp!1647975))))

(declare-fun b!5925893 () Bool)

(assert (=> b!5925893 (= e!3627285 tp_is_empty!41199)))

(assert (=> b!5925392 (= tp!1647762 e!3627285)))

(declare-fun b!5925894 () Bool)

(declare-fun tp!1647977 () Bool)

(declare-fun tp!1647976 () Bool)

(assert (=> b!5925894 (= e!3627285 (and tp!1647977 tp!1647976))))

(declare-fun b!5925895 () Bool)

(declare-fun tp!1647974 () Bool)

(assert (=> b!5925895 (= e!3627285 tp!1647974)))

(assert (= (and b!5925392 ((_ is ElementMatch!15973) (regTwo!32459 (regOne!32459 r!7292)))) b!5925893))

(assert (= (and b!5925392 ((_ is Concat!24818) (regTwo!32459 (regOne!32459 r!7292)))) b!5925894))

(assert (= (and b!5925392 ((_ is Star!15973) (regTwo!32459 (regOne!32459 r!7292)))) b!5925895))

(assert (= (and b!5925392 ((_ is Union!15973) (regTwo!32459 (regOne!32459 r!7292)))) b!5925896))

(declare-fun b!5925900 () Bool)

(declare-fun e!3627286 () Bool)

(declare-fun tp!1647983 () Bool)

(declare-fun tp!1647980 () Bool)

(assert (=> b!5925900 (= e!3627286 (and tp!1647983 tp!1647980))))

(declare-fun b!5925897 () Bool)

(assert (=> b!5925897 (= e!3627286 tp_is_empty!41199)))

(assert (=> b!5925374 (= tp!1647744 e!3627286)))

(declare-fun b!5925898 () Bool)

(declare-fun tp!1647982 () Bool)

(declare-fun tp!1647981 () Bool)

(assert (=> b!5925898 (= e!3627286 (and tp!1647982 tp!1647981))))

(declare-fun b!5925899 () Bool)

(declare-fun tp!1647979 () Bool)

(assert (=> b!5925899 (= e!3627286 tp!1647979)))

(assert (= (and b!5925374 ((_ is ElementMatch!15973) (regOne!32458 (regOne!32458 r!7292)))) b!5925897))

(assert (= (and b!5925374 ((_ is Concat!24818) (regOne!32458 (regOne!32458 r!7292)))) b!5925898))

(assert (= (and b!5925374 ((_ is Star!15973) (regOne!32458 (regOne!32458 r!7292)))) b!5925899))

(assert (= (and b!5925374 ((_ is Union!15973) (regOne!32458 (regOne!32458 r!7292)))) b!5925900))

(declare-fun b!5925904 () Bool)

(declare-fun e!3627287 () Bool)

(declare-fun tp!1647988 () Bool)

(declare-fun tp!1647985 () Bool)

(assert (=> b!5925904 (= e!3627287 (and tp!1647988 tp!1647985))))

(declare-fun b!5925901 () Bool)

(assert (=> b!5925901 (= e!3627287 tp_is_empty!41199)))

(assert (=> b!5925374 (= tp!1647743 e!3627287)))

(declare-fun b!5925902 () Bool)

(declare-fun tp!1647987 () Bool)

(declare-fun tp!1647986 () Bool)

(assert (=> b!5925902 (= e!3627287 (and tp!1647987 tp!1647986))))

(declare-fun b!5925903 () Bool)

(declare-fun tp!1647984 () Bool)

(assert (=> b!5925903 (= e!3627287 tp!1647984)))

(assert (= (and b!5925374 ((_ is ElementMatch!15973) (regTwo!32458 (regOne!32458 r!7292)))) b!5925901))

(assert (= (and b!5925374 ((_ is Concat!24818) (regTwo!32458 (regOne!32458 r!7292)))) b!5925902))

(assert (= (and b!5925374 ((_ is Star!15973) (regTwo!32458 (regOne!32458 r!7292)))) b!5925903))

(assert (= (and b!5925374 ((_ is Union!15973) (regTwo!32458 (regOne!32458 r!7292)))) b!5925904))

(declare-fun b!5925905 () Bool)

(declare-fun e!3627288 () Bool)

(declare-fun tp!1647989 () Bool)

(declare-fun tp!1647990 () Bool)

(assert (=> b!5925905 (= e!3627288 (and tp!1647989 tp!1647990))))

(assert (=> b!5925426 (= tp!1647796 e!3627288)))

(assert (= (and b!5925426 ((_ is Cons!64094) (exprs!5857 setElem!40205))) b!5925905))

(declare-fun b!5925906 () Bool)

(declare-fun e!3627289 () Bool)

(declare-fun tp!1647991 () Bool)

(assert (=> b!5925906 (= e!3627289 (and tp_is_empty!41199 tp!1647991))))

(assert (=> b!5925413 (= tp!1647783 e!3627289)))

(assert (= (and b!5925413 ((_ is Cons!64095) (t!377612 (t!377612 s!2326)))) b!5925906))

(declare-fun b!5925910 () Bool)

(declare-fun e!3627290 () Bool)

(declare-fun tp!1647996 () Bool)

(declare-fun tp!1647993 () Bool)

(assert (=> b!5925910 (= e!3627290 (and tp!1647996 tp!1647993))))

(declare-fun b!5925907 () Bool)

(assert (=> b!5925907 (= e!3627290 tp_is_empty!41199)))

(assert (=> b!5925360 (= tp!1647729 e!3627290)))

(declare-fun b!5925908 () Bool)

(declare-fun tp!1647995 () Bool)

(declare-fun tp!1647994 () Bool)

(assert (=> b!5925908 (= e!3627290 (and tp!1647995 tp!1647994))))

(declare-fun b!5925909 () Bool)

(declare-fun tp!1647992 () Bool)

(assert (=> b!5925909 (= e!3627290 tp!1647992)))

(assert (= (and b!5925360 ((_ is ElementMatch!15973) (h!70542 (exprs!5857 (h!70544 zl!343))))) b!5925907))

(assert (= (and b!5925360 ((_ is Concat!24818) (h!70542 (exprs!5857 (h!70544 zl!343))))) b!5925908))

(assert (= (and b!5925360 ((_ is Star!15973) (h!70542 (exprs!5857 (h!70544 zl!343))))) b!5925909))

(assert (= (and b!5925360 ((_ is Union!15973) (h!70542 (exprs!5857 (h!70544 zl!343))))) b!5925910))

(declare-fun b!5925911 () Bool)

(declare-fun e!3627291 () Bool)

(declare-fun tp!1647997 () Bool)

(declare-fun tp!1647998 () Bool)

(assert (=> b!5925911 (= e!3627291 (and tp!1647997 tp!1647998))))

(assert (=> b!5925360 (= tp!1647730 e!3627291)))

(assert (= (and b!5925360 ((_ is Cons!64094) (t!377611 (exprs!5857 (h!70544 zl!343))))) b!5925911))

(declare-fun b_lambda!222555 () Bool)

(assert (= b_lambda!222551 (or b!5924781 b_lambda!222555)))

(assert (=> d!1858028 d!1857898))

(declare-fun b_lambda!222557 () Bool)

(assert (= b_lambda!222549 (or d!1857794 b_lambda!222557)))

(declare-fun bs!1402385 () Bool)

(declare-fun d!1858056 () Bool)

(assert (= bs!1402385 (and d!1858056 d!1857794)))

(assert (=> bs!1402385 (= (dynLambda!25061 lambda!323107 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 (regTwo!32458 r!7292) Nil!64094))))) (validRegex!7709 (h!70542 (exprs!5857 (Context!10715 (Cons!64094 (regTwo!32458 r!7292) Nil!64094))))))))

(declare-fun m!6819958 () Bool)

(assert (=> bs!1402385 m!6819958))

(assert (=> b!5925601 d!1858056))

(declare-fun b_lambda!222559 () Bool)

(assert (= b_lambda!222543 (or d!1857840 b_lambda!222559)))

(declare-fun bs!1402386 () Bool)

(declare-fun d!1858059 () Bool)

(assert (= bs!1402386 (and d!1858059 d!1857840)))

(assert (=> bs!1402386 (= (dynLambda!25061 lambda!323137 (h!70542 (exprs!5857 setElem!40202))) (validRegex!7709 (h!70542 (exprs!5857 setElem!40202))))))

(declare-fun m!6819960 () Bool)

(assert (=> bs!1402386 m!6819960))

(assert (=> b!5925507 d!1858059))

(declare-fun b_lambda!222561 () Bool)

(assert (= b_lambda!222553 (or d!1857894 b_lambda!222561)))

(declare-fun bs!1402387 () Bool)

(declare-fun d!1858062 () Bool)

(assert (= bs!1402387 (and d!1858062 d!1857894)))

(assert (=> bs!1402387 (= (dynLambda!25061 lambda!323168 (h!70542 (exprs!5857 (h!70544 zl!343)))) (validRegex!7709 (h!70542 (exprs!5857 (h!70544 zl!343)))))))

(declare-fun m!6819962 () Bool)

(assert (=> bs!1402387 m!6819962))

(assert (=> b!5925764 d!1858062))

(declare-fun b_lambda!222563 () Bool)

(assert (= b_lambda!222545 (or d!1857872 b_lambda!222563)))

(declare-fun bs!1402388 () Bool)

(declare-fun d!1858064 () Bool)

(assert (= bs!1402388 (and d!1858064 d!1857872)))

(assert (=> bs!1402388 (= (dynLambda!25061 lambda!323162 (h!70542 (exprs!5857 (h!70544 zl!343)))) (validRegex!7709 (h!70542 (exprs!5857 (h!70544 zl!343)))))))

(assert (=> bs!1402388 m!6819962))

(assert (=> b!5925538 d!1858064))

(declare-fun b_lambda!222565 () Bool)

(assert (= b_lambda!222541 (or d!1857800 b_lambda!222565)))

(declare-fun bs!1402389 () Bool)

(declare-fun d!1858068 () Bool)

(assert (= bs!1402389 (and d!1858068 d!1857800)))

(assert (=> bs!1402389 (= (dynLambda!25061 lambda!323113 (h!70542 lt!2310206)) (validRegex!7709 (h!70542 lt!2310206)))))

(declare-fun m!6819964 () Bool)

(assert (=> bs!1402389 m!6819964))

(assert (=> b!5925489 d!1858068))

(declare-fun b_lambda!222567 () Bool)

(assert (= b_lambda!222547 (or d!1857796 b_lambda!222567)))

(declare-fun bs!1402390 () Bool)

(declare-fun d!1858070 () Bool)

(assert (= bs!1402390 (and d!1858070 d!1857796)))

(assert (=> bs!1402390 (= (dynLambda!25061 lambda!323110 (h!70542 (unfocusZipperList!1394 zl!343))) (validRegex!7709 (h!70542 (unfocusZipperList!1394 zl!343))))))

(declare-fun m!6819966 () Bool)

(assert (=> bs!1402390 m!6819966))

(assert (=> b!5925599 d!1858070))

(check-sat (not b!5925607) (not b!5925735) (not bm!470068) (not bm!470108) (not bs!1402389) (not b!5925801) (not d!1858018) (not b!5925900) (not b!5925805) (not bs!1402388) (not b!5925904) (not bm!470056) (not b!5925740) (not b!5925876) (not d!1858012) (not bm!470078) (not b!5925879) (not b!5925806) (not b!5925528) (not b!5925842) (not b!5925905) (not d!1857922) (not b_lambda!222565) (not b!5925734) (not b!5925871) (not b!5925895) (not b!5925888) (not d!1858038) (not b!5925706) (not d!1857988) (not b!5925840) (not b!5925870) (not b!5925864) (not b!5925709) (not b!5925718) (not b!5925509) (not b!5925851) (not b!5925539) (not b!5925556) (not bm!470067) (not d!1857964) (not b!5925467) (not b!5925761) (not b!5925872) (not b!5925495) (not d!1857920) (not b!5925645) (not bm!470080) (not b!5925867) (not b_lambda!222557) (not b!5925826) (not bm!470044) (not d!1857986) (not b!5925736) (not d!1858014) (not d!1857982) (not b!5925557) (not b!5925797) (not bm!470058) (not b!5925537) (not b!5925767) (not bs!1402386) (not d!1858026) (not bm!470061) (not b!5925836) (not d!1858036) (not b!5925848) (not b!5925496) (not b!5925505) (not b!5925854) (not bm!470069) (not d!1858006) (not b!5925811) (not d!1857994) (not b!5925838) (not b!5925713) (not b!5925784) (not b!5925656) (not b!5925716) (not b!5925878) (not b!5925847) (not d!1858016) (not b!5925491) (not b!5925908) (not b!5925890) (not b!5925622) (not b!5925909) (not b!5925717) (not b!5925831) (not d!1858022) (not d!1857984) (not b!5925720) (not b!5925813) (not b!5925839) (not d!1857950) (not bm!470055) (not bm!470050) (not b_lambda!222537) (not b!5925765) (not b!5925755) (not b_lambda!222563) (not bm!470046) (not b!5925882) (not b!5925705) (not bm!470075) (not bm!470098) (not b!5925598) (not b!5925883) (not bs!1402390) (not bm!470065) (not b!5925490) (not b!5925880) (not b!5925621) (not b!5925610) (not b!5925892) (not b!5925824) (not b!5925602) (not b!5925906) (not b!5925715) (not d!1858048) (not b!5925887) (not b_lambda!222555) (not b!5925822) (not bs!1402385) (not b!5925514) (not b!5925770) (not b!5925620) (not b!5925875) (not b!5925619) (not bm!470072) (not b!5925551) (not d!1857968) (not b!5925792) (not b!5925604) (not b!5925672) (not b!5925626) (not b!5925710) (not bm!470053) (not bm!470051) (not bm!470085) (not b!5925886) (not b!5925473) (not b!5925894) (not b!5925574) (not b!5925910) (not b!5925562) (not b!5925817) (not b!5925821) (not b!5925665) (not b!5925860) (not b!5925823) (not b!5925818) (not bm!470071) (not b!5925891) (not b!5925866) (not b!5925899) (not b!5925815) (not b!5925623) (not bm!470074) (not d!1857932) (not b!5925862) (not b!5925540) (not bm!470081) (not d!1857956) (not b!5925481) (not setNonEmpty!40211) (not bm!470096) (not b!5925508) (not b!5925464) (not b!5925666) (not b!5925850) (not b!5925725) (not bm!470084) (not b!5925775) tp_is_empty!41199 (not b!5925742) (not b!5925575) (not b!5925660) (not b!5925774) (not b!5925807) (not b!5925503) (not bm!470062) (not d!1858034) (not b!5925898) (not b!5925600) (not b!5925827) (not b!5925799) (not d!1857928) (not b!5925585) (not d!1857990) (not b!5925762) (not b!5925747) (not b!5925903) (not b!5925545) (not b!5925664) (not bm!470095) (not b!5925625) (not d!1857970) (not b!5925846) (not b_lambda!222561) (not b!5925555) (not bs!1402387) (not b!5925637) (not b_lambda!222559) (not bm!470060) (not d!1858042) (not bm!470104) (not b!5925896) (not b!5925852) (not b!5925856) (not b!5925726) (not b!5925502) (not b!5925834) (not b!5925874) (not bm!470102) (not b!5925741) (not bm!470059) (not d!1858028) (not b!5925843) (not b!5925671) (not b!5925884) (not bm!470052) (not b!5925855) (not b!5925563) (not b!5925766) (not d!1857944) (not b!5925803) (not b!5925863) (not b!5925816) (not b!5925748) (not b!5925769) (not b!5925810) (not b!5925868) (not b!5925754) (not b_lambda!222567) (not b!5925844) (not b!5925497) (not d!1858020) (not d!1857960) (not b!5925911) (not bm!470101) (not b!5925750) (not b!5925859) (not setNonEmpty!40212) (not b!5925832) (not b!5925835) (not b!5925809) (not b!5925828) (not bm!470099) (not b!5925695) (not d!1858024) (not b!5925798) (not bm!470064) (not b!5925733) (not bm!470047) (not b!5925902) (not b!5925830) (not bm!470105) (not b!5925858) (not b!5925819) (not b!5925814) (not b!5925802) (not b!5925756) (not b!5925773))
(check-sat)
