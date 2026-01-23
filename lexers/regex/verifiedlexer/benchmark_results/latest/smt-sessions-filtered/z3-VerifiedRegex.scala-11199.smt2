; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!584678 () Bool)

(assert start!584678)

(declare-fun b!5654192 () Bool)

(assert (=> b!5654192 true))

(assert (=> b!5654192 true))

(declare-fun lambda!304246 () Int)

(declare-fun lambda!304245 () Int)

(assert (=> b!5654192 (not (= lambda!304246 lambda!304245))))

(assert (=> b!5654192 true))

(assert (=> b!5654192 true))

(declare-fun b!5654196 () Bool)

(assert (=> b!5654196 true))

(declare-fun b!5654184 () Bool)

(declare-fun res!2391817 () Bool)

(declare-fun e!3482622 () Bool)

(assert (=> b!5654184 (=> res!2391817 e!3482622)))

(declare-fun e!3482629 () Bool)

(assert (=> b!5654184 (= res!2391817 e!3482629)))

(declare-fun res!2391825 () Bool)

(assert (=> b!5654184 (=> (not res!2391825) (not e!3482629))))

(declare-datatypes ((C!31560 0))(
  ( (C!31561 (val!25482 Int)) )
))
(declare-datatypes ((Regex!15645 0))(
  ( (ElementMatch!15645 (c!993935 C!31560)) (Concat!24490 (regOne!31802 Regex!15645) (regTwo!31802 Regex!15645)) (EmptyExpr!15645) (Star!15645 (reg!15974 Regex!15645)) (EmptyLang!15645) (Union!15645 (regOne!31803 Regex!15645) (regTwo!31803 Regex!15645)) )
))
(declare-fun r!7292 () Regex!15645)

(get-info :version)

(assert (=> b!5654184 (= res!2391825 ((_ is Concat!24490) (regOne!31802 r!7292)))))

(declare-fun b!5654185 () Bool)

(declare-fun e!3482623 () Bool)

(declare-fun tp_is_empty!40543 () Bool)

(declare-fun tp!1566464 () Bool)

(assert (=> b!5654185 (= e!3482623 (and tp_is_empty!40543 tp!1566464))))

(declare-fun b!5654186 () Bool)

(declare-fun res!2391814 () Bool)

(declare-fun e!3482621 () Bool)

(assert (=> b!5654186 (=> (not res!2391814) (not e!3482621))))

(declare-datatypes ((List!63234 0))(
  ( (Nil!63110) (Cons!63110 (h!69558 Regex!15645) (t!376536 List!63234)) )
))
(declare-datatypes ((Context!10058 0))(
  ( (Context!10059 (exprs!5529 List!63234)) )
))
(declare-datatypes ((List!63235 0))(
  ( (Nil!63111) (Cons!63111 (h!69559 Context!10058) (t!376537 List!63235)) )
))
(declare-fun zl!343 () List!63235)

(declare-fun unfocusZipper!1387 (List!63235) Regex!15645)

(assert (=> b!5654186 (= res!2391814 (= r!7292 (unfocusZipper!1387 zl!343)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2266303 () (InoxSet Context!10058))

(declare-datatypes ((List!63236 0))(
  ( (Nil!63112) (Cons!63112 (h!69560 C!31560) (t!376538 List!63236)) )
))
(declare-fun s!2326 () List!63236)

(declare-fun b!5654187 () Bool)

(declare-fun e!3482619 () Bool)

(declare-fun lt!2266306 () (InoxSet Context!10058))

(declare-fun derivationStepZipper!1730 ((InoxSet Context!10058) C!31560) (InoxSet Context!10058))

(assert (=> b!5654187 (= e!3482619 (= (derivationStepZipper!1730 lt!2266303 (h!69560 s!2326)) lt!2266306))))

(declare-fun lambda!304247 () Int)

(declare-fun lt!2266307 () Context!10058)

(declare-fun flatMap!1258 ((InoxSet Context!10058) Int) (InoxSet Context!10058))

(declare-fun derivationStepZipperUp!913 (Context!10058 C!31560) (InoxSet Context!10058))

(assert (=> b!5654187 (= (flatMap!1258 lt!2266303 lambda!304247) (derivationStepZipperUp!913 lt!2266307 (h!69560 s!2326)))))

(declare-datatypes ((Unit!156112 0))(
  ( (Unit!156113) )
))
(declare-fun lt!2266296 () Unit!156112)

(declare-fun lemmaFlatMapOnSingletonSet!790 ((InoxSet Context!10058) Context!10058 Int) Unit!156112)

(assert (=> b!5654187 (= lt!2266296 (lemmaFlatMapOnSingletonSet!790 lt!2266303 lt!2266307 lambda!304247))))

(declare-fun lt!2266298 () (InoxSet Context!10058))

(assert (=> b!5654187 (= lt!2266298 (derivationStepZipperUp!913 lt!2266307 (h!69560 s!2326)))))

(assert (=> b!5654187 (= lt!2266303 (store ((as const (Array Context!10058 Bool)) false) lt!2266307 true))))

(declare-fun lt!2266294 () List!63234)

(assert (=> b!5654187 (= lt!2266307 (Context!10059 (Cons!63110 (regOne!31802 (regOne!31802 r!7292)) lt!2266294)))))

(declare-fun b!5654188 () Bool)

(declare-fun nullable!5677 (Regex!15645) Bool)

(assert (=> b!5654188 (= e!3482629 (nullable!5677 (regOne!31802 (regOne!31802 r!7292))))))

(declare-fun b!5654189 () Bool)

(declare-fun e!3482628 () Bool)

(declare-fun tp!1566457 () Bool)

(assert (=> b!5654189 (= e!3482628 tp!1566457)))

(declare-fun b!5654190 () Bool)

(declare-fun res!2391824 () Bool)

(declare-fun e!3482630 () Bool)

(assert (=> b!5654190 (=> res!2391824 e!3482630)))

(declare-fun generalisedConcat!1260 (List!63234) Regex!15645)

(assert (=> b!5654190 (= res!2391824 (not (= r!7292 (generalisedConcat!1260 (exprs!5529 (h!69559 zl!343))))))))

(declare-fun b!5654191 () Bool)

(declare-fun res!2391826 () Bool)

(assert (=> b!5654191 (=> res!2391826 e!3482622)))

(assert (=> b!5654191 (= res!2391826 (not ((_ is Concat!24490) (regOne!31802 r!7292))))))

(declare-fun e!3482620 () Bool)

(assert (=> b!5654192 (= e!3482630 e!3482620)))

(declare-fun res!2391827 () Bool)

(assert (=> b!5654192 (=> res!2391827 e!3482620)))

(declare-fun lt!2266297 () Bool)

(declare-fun lt!2266302 () Bool)

(assert (=> b!5654192 (= res!2391827 (or (not (= lt!2266302 lt!2266297)) ((_ is Nil!63112) s!2326)))))

(declare-fun Exists!2745 (Int) Bool)

(assert (=> b!5654192 (= (Exists!2745 lambda!304245) (Exists!2745 lambda!304246))))

(declare-fun lt!2266308 () Unit!156112)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1374 (Regex!15645 Regex!15645 List!63236) Unit!156112)

(assert (=> b!5654192 (= lt!2266308 (lemmaExistCutMatchRandMatchRSpecEquivalent!1374 (regOne!31802 r!7292) (regTwo!31802 r!7292) s!2326))))

(assert (=> b!5654192 (= lt!2266297 (Exists!2745 lambda!304245))))

(declare-datatypes ((tuple2!65484 0))(
  ( (tuple2!65485 (_1!36045 List!63236) (_2!36045 List!63236)) )
))
(declare-datatypes ((Option!15654 0))(
  ( (None!15653) (Some!15653 (v!51700 tuple2!65484)) )
))
(declare-fun isDefined!12357 (Option!15654) Bool)

(declare-fun findConcatSeparation!2068 (Regex!15645 Regex!15645 List!63236 List!63236 List!63236) Option!15654)

(assert (=> b!5654192 (= lt!2266297 (isDefined!12357 (findConcatSeparation!2068 (regOne!31802 r!7292) (regTwo!31802 r!7292) Nil!63112 s!2326 s!2326)))))

(declare-fun lt!2266304 () Unit!156112)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1832 (Regex!15645 Regex!15645 List!63236) Unit!156112)

(assert (=> b!5654192 (= lt!2266304 (lemmaFindConcatSeparationEquivalentToExists!1832 (regOne!31802 r!7292) (regTwo!31802 r!7292) s!2326))))

(declare-fun b!5654193 () Bool)

(declare-fun tp!1566460 () Bool)

(declare-fun tp!1566463 () Bool)

(assert (=> b!5654193 (= e!3482628 (and tp!1566460 tp!1566463))))

(declare-fun b!5654194 () Bool)

(declare-fun e!3482624 () Unit!156112)

(declare-fun Unit!156114 () Unit!156112)

(assert (=> b!5654194 (= e!3482624 Unit!156114)))

(declare-fun e!3482626 () Bool)

(declare-fun tp!1566459 () Bool)

(declare-fun setNonEmpty!37792 () Bool)

(declare-fun setRes!37792 () Bool)

(declare-fun setElem!37792 () Context!10058)

(declare-fun inv!82359 (Context!10058) Bool)

(assert (=> setNonEmpty!37792 (= setRes!37792 (and tp!1566459 (inv!82359 setElem!37792) e!3482626))))

(declare-fun z!1189 () (InoxSet Context!10058))

(declare-fun setRest!37792 () (InoxSet Context!10058))

(assert (=> setNonEmpty!37792 (= z!1189 ((_ map or) (store ((as const (Array Context!10058 Bool)) false) setElem!37792 true) setRest!37792))))

(declare-fun b!5654195 () Bool)

(declare-fun res!2391820 () Bool)

(assert (=> b!5654195 (=> res!2391820 e!3482630)))

(assert (=> b!5654195 (= res!2391820 (or ((_ is EmptyExpr!15645) r!7292) ((_ is EmptyLang!15645) r!7292) ((_ is ElementMatch!15645) r!7292) ((_ is Union!15645) r!7292) (not ((_ is Concat!24490) r!7292))))))

(declare-fun setIsEmpty!37792 () Bool)

(assert (=> setIsEmpty!37792 setRes!37792))

(declare-fun res!2391815 () Bool)

(assert (=> start!584678 (=> (not res!2391815) (not e!3482621))))

(declare-fun validRegex!7381 (Regex!15645) Bool)

(assert (=> start!584678 (= res!2391815 (validRegex!7381 r!7292))))

(assert (=> start!584678 e!3482621))

(assert (=> start!584678 e!3482628))

(declare-fun condSetEmpty!37792 () Bool)

(assert (=> start!584678 (= condSetEmpty!37792 (= z!1189 ((as const (Array Context!10058 Bool)) false)))))

(assert (=> start!584678 setRes!37792))

(declare-fun e!3482618 () Bool)

(assert (=> start!584678 e!3482618))

(assert (=> start!584678 e!3482623))

(assert (=> b!5654196 (= e!3482620 e!3482622)))

(declare-fun res!2391828 () Bool)

(assert (=> b!5654196 (=> res!2391828 e!3482622)))

(assert (=> b!5654196 (= res!2391828 (or (and ((_ is ElementMatch!15645) (regOne!31802 r!7292)) (= (c!993935 (regOne!31802 r!7292)) (h!69560 s!2326))) ((_ is Union!15645) (regOne!31802 r!7292))))))

(declare-fun lt!2266310 () Unit!156112)

(assert (=> b!5654196 (= lt!2266310 e!3482624)))

(declare-fun c!993934 () Bool)

(assert (=> b!5654196 (= c!993934 (nullable!5677 (h!69558 (exprs!5529 (h!69559 zl!343)))))))

(assert (=> b!5654196 (= (flatMap!1258 z!1189 lambda!304247) (derivationStepZipperUp!913 (h!69559 zl!343) (h!69560 s!2326)))))

(declare-fun lt!2266295 () Unit!156112)

(assert (=> b!5654196 (= lt!2266295 (lemmaFlatMapOnSingletonSet!790 z!1189 (h!69559 zl!343) lambda!304247))))

(declare-fun lt!2266300 () (InoxSet Context!10058))

(declare-fun lt!2266301 () Context!10058)

(assert (=> b!5654196 (= lt!2266300 (derivationStepZipperUp!913 lt!2266301 (h!69560 s!2326)))))

(declare-fun lt!2266309 () (InoxSet Context!10058))

(declare-fun derivationStepZipperDown!987 (Regex!15645 Context!10058 C!31560) (InoxSet Context!10058))

(assert (=> b!5654196 (= lt!2266309 (derivationStepZipperDown!987 (h!69558 (exprs!5529 (h!69559 zl!343))) lt!2266301 (h!69560 s!2326)))))

(assert (=> b!5654196 (= lt!2266301 (Context!10059 (t!376536 (exprs!5529 (h!69559 zl!343)))))))

(declare-fun lt!2266299 () (InoxSet Context!10058))

(assert (=> b!5654196 (= lt!2266299 (derivationStepZipperUp!913 (Context!10059 (Cons!63110 (h!69558 (exprs!5529 (h!69559 zl!343))) (t!376536 (exprs!5529 (h!69559 zl!343))))) (h!69560 s!2326)))))

(declare-fun b!5654197 () Bool)

(declare-fun res!2391816 () Bool)

(assert (=> b!5654197 (=> res!2391816 e!3482630)))

(declare-fun isEmpty!34953 (List!63235) Bool)

(assert (=> b!5654197 (= res!2391816 (not (isEmpty!34953 (t!376537 zl!343))))))

(declare-fun b!5654198 () Bool)

(assert (=> b!5654198 (= e!3482622 e!3482619)))

(declare-fun res!2391823 () Bool)

(assert (=> b!5654198 (=> res!2391823 e!3482619)))

(assert (=> b!5654198 (= res!2391823 (not (= lt!2266309 lt!2266306)))))

(assert (=> b!5654198 (= lt!2266306 (derivationStepZipperDown!987 (regOne!31802 (regOne!31802 r!7292)) (Context!10059 lt!2266294) (h!69560 s!2326)))))

(assert (=> b!5654198 (= lt!2266294 (Cons!63110 (regTwo!31802 (regOne!31802 r!7292)) (t!376536 (exprs!5529 (h!69559 zl!343)))))))

(declare-fun b!5654199 () Bool)

(declare-fun res!2391812 () Bool)

(assert (=> b!5654199 (=> res!2391812 e!3482620)))

(declare-fun isEmpty!34954 (List!63234) Bool)

(assert (=> b!5654199 (= res!2391812 (isEmpty!34954 (t!376536 (exprs!5529 (h!69559 zl!343)))))))

(declare-fun b!5654200 () Bool)

(declare-fun res!2391822 () Bool)

(assert (=> b!5654200 (=> (not res!2391822) (not e!3482621))))

(declare-fun toList!9429 ((InoxSet Context!10058)) List!63235)

(assert (=> b!5654200 (= res!2391822 (= (toList!9429 z!1189) zl!343))))

(declare-fun b!5654201 () Bool)

(declare-fun Unit!156115 () Unit!156112)

(assert (=> b!5654201 (= e!3482624 Unit!156115)))

(declare-fun lt!2266293 () Unit!156112)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!670 ((InoxSet Context!10058) (InoxSet Context!10058) List!63236) Unit!156112)

(assert (=> b!5654201 (= lt!2266293 (lemmaZipperConcatMatchesSameAsBothZippers!670 lt!2266309 lt!2266300 (t!376538 s!2326)))))

(declare-fun res!2391811 () Bool)

(declare-fun matchZipper!1783 ((InoxSet Context!10058) List!63236) Bool)

(assert (=> b!5654201 (= res!2391811 (matchZipper!1783 lt!2266309 (t!376538 s!2326)))))

(declare-fun e!3482625 () Bool)

(assert (=> b!5654201 (=> res!2391811 e!3482625)))

(assert (=> b!5654201 (= (matchZipper!1783 ((_ map or) lt!2266309 lt!2266300) (t!376538 s!2326)) e!3482625)))

(declare-fun b!5654202 () Bool)

(declare-fun res!2391813 () Bool)

(assert (=> b!5654202 (=> res!2391813 e!3482630)))

(assert (=> b!5654202 (= res!2391813 (not ((_ is Cons!63110) (exprs!5529 (h!69559 zl!343)))))))

(declare-fun b!5654203 () Bool)

(assert (=> b!5654203 (= e!3482625 (matchZipper!1783 lt!2266300 (t!376538 s!2326)))))

(declare-fun b!5654204 () Bool)

(declare-fun res!2391819 () Bool)

(assert (=> b!5654204 (=> res!2391819 e!3482619)))

(assert (=> b!5654204 (= res!2391819 (not (= (matchZipper!1783 lt!2266309 (t!376538 s!2326)) (matchZipper!1783 lt!2266306 (t!376538 s!2326)))))))

(declare-fun b!5654205 () Bool)

(declare-fun e!3482627 () Bool)

(declare-fun tp!1566462 () Bool)

(assert (=> b!5654205 (= e!3482618 (and (inv!82359 (h!69559 zl!343)) e!3482627 tp!1566462))))

(declare-fun b!5654206 () Bool)

(assert (=> b!5654206 (= e!3482621 (not e!3482630))))

(declare-fun res!2391821 () Bool)

(assert (=> b!5654206 (=> res!2391821 e!3482630)))

(assert (=> b!5654206 (= res!2391821 (not ((_ is Cons!63111) zl!343)))))

(declare-fun matchRSpec!2748 (Regex!15645 List!63236) Bool)

(assert (=> b!5654206 (= lt!2266302 (matchRSpec!2748 r!7292 s!2326))))

(declare-fun matchR!7830 (Regex!15645 List!63236) Bool)

(assert (=> b!5654206 (= lt!2266302 (matchR!7830 r!7292 s!2326))))

(declare-fun lt!2266305 () Unit!156112)

(declare-fun mainMatchTheorem!2748 (Regex!15645 List!63236) Unit!156112)

(assert (=> b!5654206 (= lt!2266305 (mainMatchTheorem!2748 r!7292 s!2326))))

(declare-fun b!5654207 () Bool)

(declare-fun tp!1566465 () Bool)

(assert (=> b!5654207 (= e!3482627 tp!1566465)))

(declare-fun b!5654208 () Bool)

(declare-fun tp!1566456 () Bool)

(assert (=> b!5654208 (= e!3482626 tp!1566456)))

(declare-fun b!5654209 () Bool)

(declare-fun tp!1566461 () Bool)

(declare-fun tp!1566458 () Bool)

(assert (=> b!5654209 (= e!3482628 (and tp!1566461 tp!1566458))))

(declare-fun b!5654210 () Bool)

(declare-fun res!2391818 () Bool)

(assert (=> b!5654210 (=> res!2391818 e!3482630)))

(declare-fun generalisedUnion!1508 (List!63234) Regex!15645)

(declare-fun unfocusZipperList!1073 (List!63235) List!63234)

(assert (=> b!5654210 (= res!2391818 (not (= r!7292 (generalisedUnion!1508 (unfocusZipperList!1073 zl!343)))))))

(declare-fun b!5654211 () Bool)

(assert (=> b!5654211 (= e!3482628 tp_is_empty!40543)))

(assert (= (and start!584678 res!2391815) b!5654200))

(assert (= (and b!5654200 res!2391822) b!5654186))

(assert (= (and b!5654186 res!2391814) b!5654206))

(assert (= (and b!5654206 (not res!2391821)) b!5654197))

(assert (= (and b!5654197 (not res!2391816)) b!5654190))

(assert (= (and b!5654190 (not res!2391824)) b!5654202))

(assert (= (and b!5654202 (not res!2391813)) b!5654210))

(assert (= (and b!5654210 (not res!2391818)) b!5654195))

(assert (= (and b!5654195 (not res!2391820)) b!5654192))

(assert (= (and b!5654192 (not res!2391827)) b!5654199))

(assert (= (and b!5654199 (not res!2391812)) b!5654196))

(assert (= (and b!5654196 c!993934) b!5654201))

(assert (= (and b!5654196 (not c!993934)) b!5654194))

(assert (= (and b!5654201 (not res!2391811)) b!5654203))

(assert (= (and b!5654196 (not res!2391828)) b!5654184))

(assert (= (and b!5654184 res!2391825) b!5654188))

(assert (= (and b!5654184 (not res!2391817)) b!5654191))

(assert (= (and b!5654191 (not res!2391826)) b!5654198))

(assert (= (and b!5654198 (not res!2391823)) b!5654204))

(assert (= (and b!5654204 (not res!2391819)) b!5654187))

(assert (= (and start!584678 ((_ is ElementMatch!15645) r!7292)) b!5654211))

(assert (= (and start!584678 ((_ is Concat!24490) r!7292)) b!5654193))

(assert (= (and start!584678 ((_ is Star!15645) r!7292)) b!5654189))

(assert (= (and start!584678 ((_ is Union!15645) r!7292)) b!5654209))

(assert (= (and start!584678 condSetEmpty!37792) setIsEmpty!37792))

(assert (= (and start!584678 (not condSetEmpty!37792)) setNonEmpty!37792))

(assert (= setNonEmpty!37792 b!5654208))

(assert (= b!5654205 b!5654207))

(assert (= (and start!584678 ((_ is Cons!63111) zl!343)) b!5654205))

(assert (= (and start!584678 ((_ is Cons!63112) s!2326)) b!5654185))

(declare-fun m!6620868 () Bool)

(assert (=> b!5654200 m!6620868))

(declare-fun m!6620870 () Bool)

(assert (=> b!5654197 m!6620870))

(declare-fun m!6620872 () Bool)

(assert (=> b!5654186 m!6620872))

(declare-fun m!6620874 () Bool)

(assert (=> b!5654205 m!6620874))

(declare-fun m!6620876 () Bool)

(assert (=> b!5654203 m!6620876))

(declare-fun m!6620878 () Bool)

(assert (=> b!5654187 m!6620878))

(declare-fun m!6620880 () Bool)

(assert (=> b!5654187 m!6620880))

(declare-fun m!6620882 () Bool)

(assert (=> b!5654187 m!6620882))

(declare-fun m!6620884 () Bool)

(assert (=> b!5654187 m!6620884))

(declare-fun m!6620886 () Bool)

(assert (=> b!5654187 m!6620886))

(declare-fun m!6620888 () Bool)

(assert (=> setNonEmpty!37792 m!6620888))

(declare-fun m!6620890 () Bool)

(assert (=> b!5654188 m!6620890))

(declare-fun m!6620892 () Bool)

(assert (=> b!5654192 m!6620892))

(declare-fun m!6620894 () Bool)

(assert (=> b!5654192 m!6620894))

(declare-fun m!6620896 () Bool)

(assert (=> b!5654192 m!6620896))

(assert (=> b!5654192 m!6620896))

(declare-fun m!6620898 () Bool)

(assert (=> b!5654192 m!6620898))

(declare-fun m!6620900 () Bool)

(assert (=> b!5654192 m!6620900))

(assert (=> b!5654192 m!6620892))

(declare-fun m!6620902 () Bool)

(assert (=> b!5654192 m!6620902))

(declare-fun m!6620904 () Bool)

(assert (=> b!5654199 m!6620904))

(declare-fun m!6620906 () Bool)

(assert (=> b!5654204 m!6620906))

(declare-fun m!6620908 () Bool)

(assert (=> b!5654204 m!6620908))

(declare-fun m!6620910 () Bool)

(assert (=> b!5654201 m!6620910))

(assert (=> b!5654201 m!6620906))

(declare-fun m!6620912 () Bool)

(assert (=> b!5654201 m!6620912))

(declare-fun m!6620914 () Bool)

(assert (=> b!5654196 m!6620914))

(declare-fun m!6620916 () Bool)

(assert (=> b!5654196 m!6620916))

(declare-fun m!6620918 () Bool)

(assert (=> b!5654196 m!6620918))

(declare-fun m!6620920 () Bool)

(assert (=> b!5654196 m!6620920))

(declare-fun m!6620922 () Bool)

(assert (=> b!5654196 m!6620922))

(declare-fun m!6620924 () Bool)

(assert (=> b!5654196 m!6620924))

(declare-fun m!6620926 () Bool)

(assert (=> b!5654196 m!6620926))

(declare-fun m!6620928 () Bool)

(assert (=> b!5654198 m!6620928))

(declare-fun m!6620930 () Bool)

(assert (=> start!584678 m!6620930))

(declare-fun m!6620932 () Bool)

(assert (=> b!5654206 m!6620932))

(declare-fun m!6620934 () Bool)

(assert (=> b!5654206 m!6620934))

(declare-fun m!6620936 () Bool)

(assert (=> b!5654206 m!6620936))

(declare-fun m!6620938 () Bool)

(assert (=> b!5654190 m!6620938))

(declare-fun m!6620940 () Bool)

(assert (=> b!5654210 m!6620940))

(assert (=> b!5654210 m!6620940))

(declare-fun m!6620942 () Bool)

(assert (=> b!5654210 m!6620942))

(check-sat (not b!5654209) (not b!5654210) (not b!5654206) (not b!5654204) (not b!5654208) (not b!5654196) (not b!5654200) (not b!5654187) (not b!5654185) (not b!5654205) (not b!5654193) (not setNonEmpty!37792) (not b!5654201) (not start!584678) (not b!5654192) (not b!5654207) (not b!5654203) (not b!5654197) (not b!5654190) (not b!5654188) (not b!5654186) (not b!5654199) (not b!5654189) (not b!5654198) tp_is_empty!40543)
(check-sat)
(get-model)

(declare-fun b!5654379 () Bool)

(declare-fun e!3482723 () Bool)

(declare-fun lt!2266331 () Option!15654)

(assert (=> b!5654379 (= e!3482723 (not (isDefined!12357 lt!2266331)))))

(declare-fun b!5654380 () Bool)

(declare-fun e!3482720 () Bool)

(assert (=> b!5654380 (= e!3482720 (matchR!7830 (regTwo!31802 r!7292) s!2326))))

(declare-fun b!5654381 () Bool)

(declare-fun lt!2266330 () Unit!156112)

(declare-fun lt!2266329 () Unit!156112)

(assert (=> b!5654381 (= lt!2266330 lt!2266329)))

(declare-fun ++!13852 (List!63236 List!63236) List!63236)

(assert (=> b!5654381 (= (++!13852 (++!13852 Nil!63112 (Cons!63112 (h!69560 s!2326) Nil!63112)) (t!376538 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2021 (List!63236 C!31560 List!63236 List!63236) Unit!156112)

(assert (=> b!5654381 (= lt!2266329 (lemmaMoveElementToOtherListKeepsConcatEq!2021 Nil!63112 (h!69560 s!2326) (t!376538 s!2326) s!2326))))

(declare-fun e!3482724 () Option!15654)

(assert (=> b!5654381 (= e!3482724 (findConcatSeparation!2068 (regOne!31802 r!7292) (regTwo!31802 r!7292) (++!13852 Nil!63112 (Cons!63112 (h!69560 s!2326) Nil!63112)) (t!376538 s!2326) s!2326))))

(declare-fun b!5654382 () Bool)

(declare-fun res!2391893 () Bool)

(declare-fun e!3482721 () Bool)

(assert (=> b!5654382 (=> (not res!2391893) (not e!3482721))))

(declare-fun get!21742 (Option!15654) tuple2!65484)

(assert (=> b!5654382 (= res!2391893 (matchR!7830 (regOne!31802 r!7292) (_1!36045 (get!21742 lt!2266331))))))

(declare-fun b!5654383 () Bool)

(assert (=> b!5654383 (= e!3482721 (= (++!13852 (_1!36045 (get!21742 lt!2266331)) (_2!36045 (get!21742 lt!2266331))) s!2326))))

(declare-fun b!5654384 () Bool)

(declare-fun res!2391891 () Bool)

(assert (=> b!5654384 (=> (not res!2391891) (not e!3482721))))

(assert (=> b!5654384 (= res!2391891 (matchR!7830 (regTwo!31802 r!7292) (_2!36045 (get!21742 lt!2266331))))))

(declare-fun d!1785748 () Bool)

(assert (=> d!1785748 e!3482723))

(declare-fun res!2391894 () Bool)

(assert (=> d!1785748 (=> res!2391894 e!3482723)))

(assert (=> d!1785748 (= res!2391894 e!3482721)))

(declare-fun res!2391890 () Bool)

(assert (=> d!1785748 (=> (not res!2391890) (not e!3482721))))

(assert (=> d!1785748 (= res!2391890 (isDefined!12357 lt!2266331))))

(declare-fun e!3482722 () Option!15654)

(assert (=> d!1785748 (= lt!2266331 e!3482722)))

(declare-fun c!993987 () Bool)

(assert (=> d!1785748 (= c!993987 e!3482720)))

(declare-fun res!2391892 () Bool)

(assert (=> d!1785748 (=> (not res!2391892) (not e!3482720))))

(assert (=> d!1785748 (= res!2391892 (matchR!7830 (regOne!31802 r!7292) Nil!63112))))

(assert (=> d!1785748 (validRegex!7381 (regOne!31802 r!7292))))

(assert (=> d!1785748 (= (findConcatSeparation!2068 (regOne!31802 r!7292) (regTwo!31802 r!7292) Nil!63112 s!2326 s!2326) lt!2266331)))

(declare-fun b!5654385 () Bool)

(assert (=> b!5654385 (= e!3482724 None!15653)))

(declare-fun b!5654386 () Bool)

(assert (=> b!5654386 (= e!3482722 e!3482724)))

(declare-fun c!993986 () Bool)

(assert (=> b!5654386 (= c!993986 ((_ is Nil!63112) s!2326))))

(declare-fun b!5654387 () Bool)

(assert (=> b!5654387 (= e!3482722 (Some!15653 (tuple2!65485 Nil!63112 s!2326)))))

(assert (= (and d!1785748 res!2391892) b!5654380))

(assert (= (and d!1785748 c!993987) b!5654387))

(assert (= (and d!1785748 (not c!993987)) b!5654386))

(assert (= (and b!5654386 c!993986) b!5654385))

(assert (= (and b!5654386 (not c!993986)) b!5654381))

(assert (= (and d!1785748 res!2391890) b!5654382))

(assert (= (and b!5654382 res!2391893) b!5654384))

(assert (= (and b!5654384 res!2391891) b!5654383))

(assert (= (and d!1785748 (not res!2391894)) b!5654379))

(declare-fun m!6620990 () Bool)

(assert (=> d!1785748 m!6620990))

(declare-fun m!6620992 () Bool)

(assert (=> d!1785748 m!6620992))

(declare-fun m!6620994 () Bool)

(assert (=> d!1785748 m!6620994))

(declare-fun m!6620996 () Bool)

(assert (=> b!5654383 m!6620996))

(declare-fun m!6620998 () Bool)

(assert (=> b!5654383 m!6620998))

(declare-fun m!6621000 () Bool)

(assert (=> b!5654380 m!6621000))

(declare-fun m!6621002 () Bool)

(assert (=> b!5654381 m!6621002))

(assert (=> b!5654381 m!6621002))

(declare-fun m!6621004 () Bool)

(assert (=> b!5654381 m!6621004))

(declare-fun m!6621006 () Bool)

(assert (=> b!5654381 m!6621006))

(assert (=> b!5654381 m!6621002))

(declare-fun m!6621008 () Bool)

(assert (=> b!5654381 m!6621008))

(assert (=> b!5654384 m!6620996))

(declare-fun m!6621010 () Bool)

(assert (=> b!5654384 m!6621010))

(assert (=> b!5654382 m!6620996))

(declare-fun m!6621012 () Bool)

(assert (=> b!5654382 m!6621012))

(assert (=> b!5654379 m!6620990))

(assert (=> b!5654192 d!1785748))

(declare-fun d!1785758 () Bool)

(declare-fun choose!42807 (Int) Bool)

(assert (=> d!1785758 (= (Exists!2745 lambda!304246) (choose!42807 lambda!304246))))

(declare-fun bs!1315067 () Bool)

(assert (= bs!1315067 d!1785758))

(declare-fun m!6621024 () Bool)

(assert (=> bs!1315067 m!6621024))

(assert (=> b!5654192 d!1785758))

(declare-fun d!1785762 () Bool)

(assert (=> d!1785762 (= (Exists!2745 lambda!304245) (choose!42807 lambda!304245))))

(declare-fun bs!1315068 () Bool)

(assert (= bs!1315068 d!1785762))

(declare-fun m!6621026 () Bool)

(assert (=> bs!1315068 m!6621026))

(assert (=> b!5654192 d!1785762))

(declare-fun bs!1315078 () Bool)

(declare-fun d!1785764 () Bool)

(assert (= bs!1315078 (and d!1785764 b!5654192)))

(declare-fun lambda!304266 () Int)

(assert (=> bs!1315078 (= lambda!304266 lambda!304245)))

(assert (=> bs!1315078 (not (= lambda!304266 lambda!304246))))

(assert (=> d!1785764 true))

(assert (=> d!1785764 true))

(assert (=> d!1785764 true))

(assert (=> d!1785764 (= (isDefined!12357 (findConcatSeparation!2068 (regOne!31802 r!7292) (regTwo!31802 r!7292) Nil!63112 s!2326 s!2326)) (Exists!2745 lambda!304266))))

(declare-fun lt!2266340 () Unit!156112)

(declare-fun choose!42808 (Regex!15645 Regex!15645 List!63236) Unit!156112)

(assert (=> d!1785764 (= lt!2266340 (choose!42808 (regOne!31802 r!7292) (regTwo!31802 r!7292) s!2326))))

(assert (=> d!1785764 (validRegex!7381 (regOne!31802 r!7292))))

(assert (=> d!1785764 (= (lemmaFindConcatSeparationEquivalentToExists!1832 (regOne!31802 r!7292) (regTwo!31802 r!7292) s!2326) lt!2266340)))

(declare-fun bs!1315079 () Bool)

(assert (= bs!1315079 d!1785764))

(declare-fun m!6621056 () Bool)

(assert (=> bs!1315079 m!6621056))

(assert (=> bs!1315079 m!6620892))

(assert (=> bs!1315079 m!6620892))

(assert (=> bs!1315079 m!6620894))

(declare-fun m!6621058 () Bool)

(assert (=> bs!1315079 m!6621058))

(assert (=> bs!1315079 m!6620994))

(assert (=> b!5654192 d!1785764))

(declare-fun bs!1315083 () Bool)

(declare-fun d!1785784 () Bool)

(assert (= bs!1315083 (and d!1785784 b!5654192)))

(declare-fun lambda!304271 () Int)

(assert (=> bs!1315083 (= lambda!304271 lambda!304245)))

(assert (=> bs!1315083 (not (= lambda!304271 lambda!304246))))

(declare-fun bs!1315084 () Bool)

(assert (= bs!1315084 (and d!1785784 d!1785764)))

(assert (=> bs!1315084 (= lambda!304271 lambda!304266)))

(assert (=> d!1785784 true))

(assert (=> d!1785784 true))

(assert (=> d!1785784 true))

(declare-fun lambda!304272 () Int)

(assert (=> bs!1315083 (not (= lambda!304272 lambda!304245))))

(assert (=> bs!1315083 (= lambda!304272 lambda!304246)))

(assert (=> bs!1315084 (not (= lambda!304272 lambda!304266))))

(declare-fun bs!1315085 () Bool)

(assert (= bs!1315085 d!1785784))

(assert (=> bs!1315085 (not (= lambda!304272 lambda!304271))))

(assert (=> d!1785784 true))

(assert (=> d!1785784 true))

(assert (=> d!1785784 true))

(assert (=> d!1785784 (= (Exists!2745 lambda!304271) (Exists!2745 lambda!304272))))

(declare-fun lt!2266349 () Unit!156112)

(declare-fun choose!42809 (Regex!15645 Regex!15645 List!63236) Unit!156112)

(assert (=> d!1785784 (= lt!2266349 (choose!42809 (regOne!31802 r!7292) (regTwo!31802 r!7292) s!2326))))

(assert (=> d!1785784 (validRegex!7381 (regOne!31802 r!7292))))

(assert (=> d!1785784 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1374 (regOne!31802 r!7292) (regTwo!31802 r!7292) s!2326) lt!2266349)))

(declare-fun m!6621120 () Bool)

(assert (=> bs!1315085 m!6621120))

(declare-fun m!6621122 () Bool)

(assert (=> bs!1315085 m!6621122))

(declare-fun m!6621124 () Bool)

(assert (=> bs!1315085 m!6621124))

(assert (=> bs!1315085 m!6620994))

(assert (=> b!5654192 d!1785784))

(declare-fun d!1785808 () Bool)

(declare-fun isEmpty!34956 (Option!15654) Bool)

(assert (=> d!1785808 (= (isDefined!12357 (findConcatSeparation!2068 (regOne!31802 r!7292) (regTwo!31802 r!7292) Nil!63112 s!2326 s!2326)) (not (isEmpty!34956 (findConcatSeparation!2068 (regOne!31802 r!7292) (regTwo!31802 r!7292) Nil!63112 s!2326 s!2326))))))

(declare-fun bs!1315086 () Bool)

(assert (= bs!1315086 d!1785808))

(assert (=> bs!1315086 m!6620892))

(declare-fun m!6621126 () Bool)

(assert (=> bs!1315086 m!6621126))

(assert (=> b!5654192 d!1785808))

(declare-fun d!1785810 () Bool)

(declare-fun e!3482803 () Bool)

(assert (=> d!1785810 (= (matchZipper!1783 ((_ map or) lt!2266309 lt!2266300) (t!376538 s!2326)) e!3482803)))

(declare-fun res!2391947 () Bool)

(assert (=> d!1785810 (=> res!2391947 e!3482803)))

(assert (=> d!1785810 (= res!2391947 (matchZipper!1783 lt!2266309 (t!376538 s!2326)))))

(declare-fun lt!2266358 () Unit!156112)

(declare-fun choose!42811 ((InoxSet Context!10058) (InoxSet Context!10058) List!63236) Unit!156112)

(assert (=> d!1785810 (= lt!2266358 (choose!42811 lt!2266309 lt!2266300 (t!376538 s!2326)))))

(assert (=> d!1785810 (= (lemmaZipperConcatMatchesSameAsBothZippers!670 lt!2266309 lt!2266300 (t!376538 s!2326)) lt!2266358)))

(declare-fun b!5654512 () Bool)

(assert (=> b!5654512 (= e!3482803 (matchZipper!1783 lt!2266300 (t!376538 s!2326)))))

(assert (= (and d!1785810 (not res!2391947)) b!5654512))

(assert (=> d!1785810 m!6620912))

(assert (=> d!1785810 m!6620906))

(declare-fun m!6621128 () Bool)

(assert (=> d!1785810 m!6621128))

(assert (=> b!5654512 m!6620876))

(assert (=> b!5654201 d!1785810))

(declare-fun d!1785812 () Bool)

(declare-fun c!994028 () Bool)

(declare-fun isEmpty!34957 (List!63236) Bool)

(assert (=> d!1785812 (= c!994028 (isEmpty!34957 (t!376538 s!2326)))))

(declare-fun e!3482811 () Bool)

(assert (=> d!1785812 (= (matchZipper!1783 lt!2266309 (t!376538 s!2326)) e!3482811)))

(declare-fun b!5654526 () Bool)

(declare-fun nullableZipper!1619 ((InoxSet Context!10058)) Bool)

(assert (=> b!5654526 (= e!3482811 (nullableZipper!1619 lt!2266309))))

(declare-fun b!5654527 () Bool)

(declare-fun head!12018 (List!63236) C!31560)

(declare-fun tail!11113 (List!63236) List!63236)

(assert (=> b!5654527 (= e!3482811 (matchZipper!1783 (derivationStepZipper!1730 lt!2266309 (head!12018 (t!376538 s!2326))) (tail!11113 (t!376538 s!2326))))))

(assert (= (and d!1785812 c!994028) b!5654526))

(assert (= (and d!1785812 (not c!994028)) b!5654527))

(declare-fun m!6621158 () Bool)

(assert (=> d!1785812 m!6621158))

(declare-fun m!6621160 () Bool)

(assert (=> b!5654526 m!6621160))

(declare-fun m!6621162 () Bool)

(assert (=> b!5654527 m!6621162))

(assert (=> b!5654527 m!6621162))

(declare-fun m!6621164 () Bool)

(assert (=> b!5654527 m!6621164))

(declare-fun m!6621166 () Bool)

(assert (=> b!5654527 m!6621166))

(assert (=> b!5654527 m!6621164))

(assert (=> b!5654527 m!6621166))

(declare-fun m!6621168 () Bool)

(assert (=> b!5654527 m!6621168))

(assert (=> b!5654201 d!1785812))

(declare-fun d!1785820 () Bool)

(declare-fun c!994029 () Bool)

(assert (=> d!1785820 (= c!994029 (isEmpty!34957 (t!376538 s!2326)))))

(declare-fun e!3482812 () Bool)

(assert (=> d!1785820 (= (matchZipper!1783 ((_ map or) lt!2266309 lt!2266300) (t!376538 s!2326)) e!3482812)))

(declare-fun b!5654528 () Bool)

(assert (=> b!5654528 (= e!3482812 (nullableZipper!1619 ((_ map or) lt!2266309 lt!2266300)))))

(declare-fun b!5654529 () Bool)

(assert (=> b!5654529 (= e!3482812 (matchZipper!1783 (derivationStepZipper!1730 ((_ map or) lt!2266309 lt!2266300) (head!12018 (t!376538 s!2326))) (tail!11113 (t!376538 s!2326))))))

(assert (= (and d!1785820 c!994029) b!5654528))

(assert (= (and d!1785820 (not c!994029)) b!5654529))

(assert (=> d!1785820 m!6621158))

(declare-fun m!6621170 () Bool)

(assert (=> b!5654528 m!6621170))

(assert (=> b!5654529 m!6621162))

(assert (=> b!5654529 m!6621162))

(declare-fun m!6621172 () Bool)

(assert (=> b!5654529 m!6621172))

(assert (=> b!5654529 m!6621166))

(assert (=> b!5654529 m!6621172))

(assert (=> b!5654529 m!6621166))

(declare-fun m!6621174 () Bool)

(assert (=> b!5654529 m!6621174))

(assert (=> b!5654201 d!1785820))

(declare-fun d!1785822 () Bool)

(declare-fun e!3482817 () Bool)

(assert (=> d!1785822 e!3482817))

(declare-fun res!2391959 () Bool)

(assert (=> d!1785822 (=> (not res!2391959) (not e!3482817))))

(declare-fun lt!2266367 () List!63235)

(declare-fun noDuplicate!1599 (List!63235) Bool)

(assert (=> d!1785822 (= res!2391959 (noDuplicate!1599 lt!2266367))))

(declare-fun choose!42812 ((InoxSet Context!10058)) List!63235)

(assert (=> d!1785822 (= lt!2266367 (choose!42812 z!1189))))

(assert (=> d!1785822 (= (toList!9429 z!1189) lt!2266367)))

(declare-fun b!5654536 () Bool)

(declare-fun content!11420 (List!63235) (InoxSet Context!10058))

(assert (=> b!5654536 (= e!3482817 (= (content!11420 lt!2266367) z!1189))))

(assert (= (and d!1785822 res!2391959) b!5654536))

(declare-fun m!6621180 () Bool)

(assert (=> d!1785822 m!6621180))

(declare-fun m!6621182 () Bool)

(assert (=> d!1785822 m!6621182))

(declare-fun m!6621184 () Bool)

(assert (=> b!5654536 m!6621184))

(assert (=> b!5654200 d!1785822))

(declare-fun d!1785826 () Bool)

(declare-fun e!3482835 () Bool)

(assert (=> d!1785826 e!3482835))

(declare-fun res!2391973 () Bool)

(assert (=> d!1785826 (=> (not res!2391973) (not e!3482835))))

(declare-fun lt!2266373 () Regex!15645)

(assert (=> d!1785826 (= res!2391973 (validRegex!7381 lt!2266373))))

(declare-fun e!3482834 () Regex!15645)

(assert (=> d!1785826 (= lt!2266373 e!3482834)))

(declare-fun c!994038 () Bool)

(declare-fun e!3482836 () Bool)

(assert (=> d!1785826 (= c!994038 e!3482836)))

(declare-fun res!2391972 () Bool)

(assert (=> d!1785826 (=> (not res!2391972) (not e!3482836))))

(assert (=> d!1785826 (= res!2391972 ((_ is Cons!63110) (unfocusZipperList!1073 zl!343)))))

(declare-fun lambda!304284 () Int)

(declare-fun forall!14796 (List!63234 Int) Bool)

(assert (=> d!1785826 (forall!14796 (unfocusZipperList!1073 zl!343) lambda!304284)))

(assert (=> d!1785826 (= (generalisedUnion!1508 (unfocusZipperList!1073 zl!343)) lt!2266373)))

(declare-fun b!5654565 () Bool)

(declare-fun e!3482837 () Regex!15645)

(assert (=> b!5654565 (= e!3482837 (Union!15645 (h!69558 (unfocusZipperList!1073 zl!343)) (generalisedUnion!1508 (t!376536 (unfocusZipperList!1073 zl!343)))))))

(declare-fun b!5654566 () Bool)

(declare-fun e!3482838 () Bool)

(declare-fun e!3482839 () Bool)

(assert (=> b!5654566 (= e!3482838 e!3482839)))

(declare-fun c!994041 () Bool)

(declare-fun tail!11114 (List!63234) List!63234)

(assert (=> b!5654566 (= c!994041 (isEmpty!34954 (tail!11114 (unfocusZipperList!1073 zl!343))))))

(declare-fun b!5654567 () Bool)

(assert (=> b!5654567 (= e!3482836 (isEmpty!34954 (t!376536 (unfocusZipperList!1073 zl!343))))))

(declare-fun b!5654568 () Bool)

(assert (=> b!5654568 (= e!3482834 (h!69558 (unfocusZipperList!1073 zl!343)))))

(declare-fun b!5654569 () Bool)

(declare-fun isUnion!618 (Regex!15645) Bool)

(assert (=> b!5654569 (= e!3482839 (isUnion!618 lt!2266373))))

(declare-fun b!5654570 () Bool)

(assert (=> b!5654570 (= e!3482835 e!3482838)))

(declare-fun c!994039 () Bool)

(assert (=> b!5654570 (= c!994039 (isEmpty!34954 (unfocusZipperList!1073 zl!343)))))

(declare-fun b!5654571 () Bool)

(assert (=> b!5654571 (= e!3482834 e!3482837)))

(declare-fun c!994040 () Bool)

(assert (=> b!5654571 (= c!994040 ((_ is Cons!63110) (unfocusZipperList!1073 zl!343)))))

(declare-fun b!5654572 () Bool)

(declare-fun head!12019 (List!63234) Regex!15645)

(assert (=> b!5654572 (= e!3482839 (= lt!2266373 (head!12019 (unfocusZipperList!1073 zl!343))))))

(declare-fun b!5654573 () Bool)

(declare-fun isEmptyLang!1188 (Regex!15645) Bool)

(assert (=> b!5654573 (= e!3482838 (isEmptyLang!1188 lt!2266373))))

(declare-fun b!5654574 () Bool)

(assert (=> b!5654574 (= e!3482837 EmptyLang!15645)))

(assert (= (and d!1785826 res!2391972) b!5654567))

(assert (= (and d!1785826 c!994038) b!5654568))

(assert (= (and d!1785826 (not c!994038)) b!5654571))

(assert (= (and b!5654571 c!994040) b!5654565))

(assert (= (and b!5654571 (not c!994040)) b!5654574))

(assert (= (and d!1785826 res!2391973) b!5654570))

(assert (= (and b!5654570 c!994039) b!5654573))

(assert (= (and b!5654570 (not c!994039)) b!5654566))

(assert (= (and b!5654566 c!994041) b!5654572))

(assert (= (and b!5654566 (not c!994041)) b!5654569))

(declare-fun m!6621194 () Bool)

(assert (=> b!5654573 m!6621194))

(assert (=> b!5654570 m!6620940))

(declare-fun m!6621196 () Bool)

(assert (=> b!5654570 m!6621196))

(assert (=> b!5654566 m!6620940))

(declare-fun m!6621198 () Bool)

(assert (=> b!5654566 m!6621198))

(assert (=> b!5654566 m!6621198))

(declare-fun m!6621200 () Bool)

(assert (=> b!5654566 m!6621200))

(assert (=> b!5654572 m!6620940))

(declare-fun m!6621202 () Bool)

(assert (=> b!5654572 m!6621202))

(declare-fun m!6621204 () Bool)

(assert (=> b!5654567 m!6621204))

(declare-fun m!6621206 () Bool)

(assert (=> d!1785826 m!6621206))

(assert (=> d!1785826 m!6620940))

(declare-fun m!6621208 () Bool)

(assert (=> d!1785826 m!6621208))

(declare-fun m!6621210 () Bool)

(assert (=> b!5654569 m!6621210))

(declare-fun m!6621212 () Bool)

(assert (=> b!5654565 m!6621212))

(assert (=> b!5654210 d!1785826))

(declare-fun bs!1315106 () Bool)

(declare-fun d!1785832 () Bool)

(assert (= bs!1315106 (and d!1785832 d!1785826)))

(declare-fun lambda!304293 () Int)

(assert (=> bs!1315106 (= lambda!304293 lambda!304284)))

(declare-fun lt!2266379 () List!63234)

(assert (=> d!1785832 (forall!14796 lt!2266379 lambda!304293)))

(declare-fun e!3482860 () List!63234)

(assert (=> d!1785832 (= lt!2266379 e!3482860)))

(declare-fun c!994058 () Bool)

(assert (=> d!1785832 (= c!994058 ((_ is Cons!63111) zl!343))))

(assert (=> d!1785832 (= (unfocusZipperList!1073 zl!343) lt!2266379)))

(declare-fun b!5654611 () Bool)

(assert (=> b!5654611 (= e!3482860 (Cons!63110 (generalisedConcat!1260 (exprs!5529 (h!69559 zl!343))) (unfocusZipperList!1073 (t!376537 zl!343))))))

(declare-fun b!5654612 () Bool)

(assert (=> b!5654612 (= e!3482860 Nil!63110)))

(assert (= (and d!1785832 c!994058) b!5654611))

(assert (= (and d!1785832 (not c!994058)) b!5654612))

(declare-fun m!6621242 () Bool)

(assert (=> d!1785832 m!6621242))

(assert (=> b!5654611 m!6620938))

(declare-fun m!6621244 () Bool)

(assert (=> b!5654611 m!6621244))

(assert (=> b!5654210 d!1785832))

(declare-fun bs!1315110 () Bool)

(declare-fun d!1785842 () Bool)

(assert (= bs!1315110 (and d!1785842 d!1785826)))

(declare-fun lambda!304296 () Int)

(assert (=> bs!1315110 (= lambda!304296 lambda!304284)))

(declare-fun bs!1315111 () Bool)

(assert (= bs!1315111 (and d!1785842 d!1785832)))

(assert (=> bs!1315111 (= lambda!304296 lambda!304293)))

(declare-fun b!5654692 () Bool)

(declare-fun e!3482899 () Regex!15645)

(assert (=> b!5654692 (= e!3482899 (h!69558 (exprs!5529 (h!69559 zl!343))))))

(declare-fun b!5654693 () Bool)

(declare-fun e!3482904 () Bool)

(declare-fun lt!2266383 () Regex!15645)

(assert (=> b!5654693 (= e!3482904 (= lt!2266383 (head!12019 (exprs!5529 (h!69559 zl!343)))))))

(declare-fun b!5654694 () Bool)

(declare-fun e!3482903 () Bool)

(assert (=> b!5654694 (= e!3482903 e!3482904)))

(declare-fun c!994069 () Bool)

(assert (=> b!5654694 (= c!994069 (isEmpty!34954 (tail!11114 (exprs!5529 (h!69559 zl!343)))))))

(declare-fun b!5654695 () Bool)

(declare-fun e!3482902 () Regex!15645)

(assert (=> b!5654695 (= e!3482902 EmptyExpr!15645)))

(declare-fun b!5654696 () Bool)

(declare-fun isConcat!700 (Regex!15645) Bool)

(assert (=> b!5654696 (= e!3482904 (isConcat!700 lt!2266383))))

(declare-fun b!5654697 () Bool)

(declare-fun e!3482901 () Bool)

(assert (=> b!5654697 (= e!3482901 e!3482903)))

(declare-fun c!994071 () Bool)

(assert (=> b!5654697 (= c!994071 (isEmpty!34954 (exprs!5529 (h!69559 zl!343))))))

(declare-fun b!5654698 () Bool)

(assert (=> b!5654698 (= e!3482899 e!3482902)))

(declare-fun c!994072 () Bool)

(assert (=> b!5654698 (= c!994072 ((_ is Cons!63110) (exprs!5529 (h!69559 zl!343))))))

(declare-fun b!5654699 () Bool)

(declare-fun isEmptyExpr!1177 (Regex!15645) Bool)

(assert (=> b!5654699 (= e!3482903 (isEmptyExpr!1177 lt!2266383))))

(assert (=> d!1785842 e!3482901))

(declare-fun res!2391986 () Bool)

(assert (=> d!1785842 (=> (not res!2391986) (not e!3482901))))

(assert (=> d!1785842 (= res!2391986 (validRegex!7381 lt!2266383))))

(assert (=> d!1785842 (= lt!2266383 e!3482899)))

(declare-fun c!994070 () Bool)

(declare-fun e!3482900 () Bool)

(assert (=> d!1785842 (= c!994070 e!3482900)))

(declare-fun res!2391985 () Bool)

(assert (=> d!1785842 (=> (not res!2391985) (not e!3482900))))

(assert (=> d!1785842 (= res!2391985 ((_ is Cons!63110) (exprs!5529 (h!69559 zl!343))))))

(assert (=> d!1785842 (forall!14796 (exprs!5529 (h!69559 zl!343)) lambda!304296)))

(assert (=> d!1785842 (= (generalisedConcat!1260 (exprs!5529 (h!69559 zl!343))) lt!2266383)))

(declare-fun b!5654700 () Bool)

(assert (=> b!5654700 (= e!3482900 (isEmpty!34954 (t!376536 (exprs!5529 (h!69559 zl!343)))))))

(declare-fun b!5654701 () Bool)

(assert (=> b!5654701 (= e!3482902 (Concat!24490 (h!69558 (exprs!5529 (h!69559 zl!343))) (generalisedConcat!1260 (t!376536 (exprs!5529 (h!69559 zl!343))))))))

(assert (= (and d!1785842 res!2391985) b!5654700))

(assert (= (and d!1785842 c!994070) b!5654692))

(assert (= (and d!1785842 (not c!994070)) b!5654698))

(assert (= (and b!5654698 c!994072) b!5654701))

(assert (= (and b!5654698 (not c!994072)) b!5654695))

(assert (= (and d!1785842 res!2391986) b!5654697))

(assert (= (and b!5654697 c!994071) b!5654699))

(assert (= (and b!5654697 (not c!994071)) b!5654694))

(assert (= (and b!5654694 c!994069) b!5654693))

(assert (= (and b!5654694 (not c!994069)) b!5654696))

(declare-fun m!6621254 () Bool)

(assert (=> b!5654693 m!6621254))

(assert (=> b!5654700 m!6620904))

(declare-fun m!6621256 () Bool)

(assert (=> b!5654699 m!6621256))

(declare-fun m!6621258 () Bool)

(assert (=> b!5654697 m!6621258))

(declare-fun m!6621260 () Bool)

(assert (=> d!1785842 m!6621260))

(declare-fun m!6621262 () Bool)

(assert (=> d!1785842 m!6621262))

(declare-fun m!6621264 () Bool)

(assert (=> b!5654701 m!6621264))

(declare-fun m!6621266 () Bool)

(assert (=> b!5654694 m!6621266))

(assert (=> b!5654694 m!6621266))

(declare-fun m!6621268 () Bool)

(assert (=> b!5654694 m!6621268))

(declare-fun m!6621270 () Bool)

(assert (=> b!5654696 m!6621270))

(assert (=> b!5654190 d!1785842))

(declare-fun d!1785848 () Bool)

(assert (=> d!1785848 (= (isEmpty!34954 (t!376536 (exprs!5529 (h!69559 zl!343)))) ((_ is Nil!63110) (t!376536 (exprs!5529 (h!69559 zl!343)))))))

(assert (=> b!5654199 d!1785848))

(declare-fun bm!427843 () Bool)

(declare-fun call!427849 () Bool)

(declare-fun c!994077 () Bool)

(assert (=> bm!427843 (= call!427849 (validRegex!7381 (ite c!994077 (regTwo!31803 r!7292) (regTwo!31802 r!7292))))))

(declare-fun b!5654720 () Bool)

(declare-fun e!3482923 () Bool)

(assert (=> b!5654720 (= e!3482923 call!427849)))

(declare-fun b!5654721 () Bool)

(declare-fun e!3482924 () Bool)

(declare-fun e!3482925 () Bool)

(assert (=> b!5654721 (= e!3482924 e!3482925)))

(assert (=> b!5654721 (= c!994077 ((_ is Union!15645) r!7292))))

(declare-fun b!5654722 () Bool)

(declare-fun e!3482922 () Bool)

(declare-fun e!3482921 () Bool)

(assert (=> b!5654722 (= e!3482922 e!3482921)))

(declare-fun res!2392000 () Bool)

(assert (=> b!5654722 (=> (not res!2392000) (not e!3482921))))

(declare-fun call!427848 () Bool)

(assert (=> b!5654722 (= res!2392000 call!427848)))

(declare-fun d!1785850 () Bool)

(declare-fun res!2391999 () Bool)

(declare-fun e!3482919 () Bool)

(assert (=> d!1785850 (=> res!2391999 e!3482919)))

(assert (=> d!1785850 (= res!2391999 ((_ is ElementMatch!15645) r!7292))))

(assert (=> d!1785850 (= (validRegex!7381 r!7292) e!3482919)))

(declare-fun b!5654723 () Bool)

(declare-fun res!2391998 () Bool)

(assert (=> b!5654723 (=> res!2391998 e!3482922)))

(assert (=> b!5654723 (= res!2391998 (not ((_ is Concat!24490) r!7292)))))

(assert (=> b!5654723 (= e!3482925 e!3482922)))

(declare-fun b!5654724 () Bool)

(declare-fun e!3482920 () Bool)

(declare-fun call!427850 () Bool)

(assert (=> b!5654724 (= e!3482920 call!427850)))

(declare-fun b!5654725 () Bool)

(declare-fun res!2391997 () Bool)

(assert (=> b!5654725 (=> (not res!2391997) (not e!3482923))))

(assert (=> b!5654725 (= res!2391997 call!427848)))

(assert (=> b!5654725 (= e!3482925 e!3482923)))

(declare-fun b!5654726 () Bool)

(assert (=> b!5654726 (= e!3482924 e!3482920)))

(declare-fun res!2392001 () Bool)

(assert (=> b!5654726 (= res!2392001 (not (nullable!5677 (reg!15974 r!7292))))))

(assert (=> b!5654726 (=> (not res!2392001) (not e!3482920))))

(declare-fun bm!427844 () Bool)

(assert (=> bm!427844 (= call!427848 call!427850)))

(declare-fun b!5654727 () Bool)

(assert (=> b!5654727 (= e!3482921 call!427849)))

(declare-fun b!5654728 () Bool)

(assert (=> b!5654728 (= e!3482919 e!3482924)))

(declare-fun c!994078 () Bool)

(assert (=> b!5654728 (= c!994078 ((_ is Star!15645) r!7292))))

(declare-fun bm!427845 () Bool)

(assert (=> bm!427845 (= call!427850 (validRegex!7381 (ite c!994078 (reg!15974 r!7292) (ite c!994077 (regOne!31803 r!7292) (regOne!31802 r!7292)))))))

(assert (= (and d!1785850 (not res!2391999)) b!5654728))

(assert (= (and b!5654728 c!994078) b!5654726))

(assert (= (and b!5654728 (not c!994078)) b!5654721))

(assert (= (and b!5654726 res!2392001) b!5654724))

(assert (= (and b!5654721 c!994077) b!5654725))

(assert (= (and b!5654721 (not c!994077)) b!5654723))

(assert (= (and b!5654725 res!2391997) b!5654720))

(assert (= (and b!5654723 (not res!2391998)) b!5654722))

(assert (= (and b!5654722 res!2392000) b!5654727))

(assert (= (or b!5654720 b!5654727) bm!427843))

(assert (= (or b!5654725 b!5654722) bm!427844))

(assert (= (or b!5654724 bm!427844) bm!427845))

(declare-fun m!6621272 () Bool)

(assert (=> bm!427843 m!6621272))

(declare-fun m!6621274 () Bool)

(assert (=> b!5654726 m!6621274))

(declare-fun m!6621276 () Bool)

(assert (=> bm!427845 m!6621276))

(assert (=> start!584678 d!1785850))

(declare-fun d!1785852 () Bool)

(declare-fun c!994092 () Bool)

(assert (=> d!1785852 (= c!994092 (and ((_ is ElementMatch!15645) (regOne!31802 (regOne!31802 r!7292))) (= (c!993935 (regOne!31802 (regOne!31802 r!7292))) (h!69560 s!2326))))))

(declare-fun e!3482938 () (InoxSet Context!10058))

(assert (=> d!1785852 (= (derivationStepZipperDown!987 (regOne!31802 (regOne!31802 r!7292)) (Context!10059 lt!2266294) (h!69560 s!2326)) e!3482938)))

(declare-fun b!5654751 () Bool)

(declare-fun e!3482939 () Bool)

(assert (=> b!5654751 (= e!3482939 (nullable!5677 (regOne!31802 (regOne!31802 (regOne!31802 r!7292)))))))

(declare-fun b!5654752 () Bool)

(declare-fun e!3482941 () (InoxSet Context!10058))

(declare-fun call!427867 () (InoxSet Context!10058))

(assert (=> b!5654752 (= e!3482941 call!427867)))

(declare-fun b!5654753 () Bool)

(declare-fun c!994090 () Bool)

(assert (=> b!5654753 (= c!994090 ((_ is Star!15645) (regOne!31802 (regOne!31802 r!7292))))))

(declare-fun e!3482940 () (InoxSet Context!10058))

(assert (=> b!5654753 (= e!3482940 e!3482941)))

(declare-fun b!5654754 () Bool)

(assert (=> b!5654754 (= e!3482940 call!427867)))

(declare-fun b!5654755 () Bool)

(declare-fun e!3482942 () (InoxSet Context!10058))

(assert (=> b!5654755 (= e!3482942 e!3482940)))

(declare-fun c!994089 () Bool)

(assert (=> b!5654755 (= c!994089 ((_ is Concat!24490) (regOne!31802 (regOne!31802 r!7292))))))

(declare-fun b!5654756 () Bool)

(declare-fun e!3482943 () (InoxSet Context!10058))

(assert (=> b!5654756 (= e!3482938 e!3482943)))

(declare-fun c!994091 () Bool)

(assert (=> b!5654756 (= c!994091 ((_ is Union!15645) (regOne!31802 (regOne!31802 r!7292))))))

(declare-fun b!5654757 () Bool)

(declare-fun c!994093 () Bool)

(assert (=> b!5654757 (= c!994093 e!3482939)))

(declare-fun res!2392004 () Bool)

(assert (=> b!5654757 (=> (not res!2392004) (not e!3482939))))

(assert (=> b!5654757 (= res!2392004 ((_ is Concat!24490) (regOne!31802 (regOne!31802 r!7292))))))

(assert (=> b!5654757 (= e!3482943 e!3482942)))

(declare-fun bm!427858 () Bool)

(declare-fun call!427863 () List!63234)

(declare-fun $colon$colon!1687 (List!63234 Regex!15645) List!63234)

(assert (=> bm!427858 (= call!427863 ($colon$colon!1687 (exprs!5529 (Context!10059 lt!2266294)) (ite (or c!994093 c!994089) (regTwo!31802 (regOne!31802 (regOne!31802 r!7292))) (regOne!31802 (regOne!31802 r!7292)))))))

(declare-fun bm!427859 () Bool)

(declare-fun call!427866 () (InoxSet Context!10058))

(assert (=> bm!427859 (= call!427866 (derivationStepZipperDown!987 (ite c!994091 (regTwo!31803 (regOne!31802 (regOne!31802 r!7292))) (regOne!31802 (regOne!31802 (regOne!31802 r!7292)))) (ite c!994091 (Context!10059 lt!2266294) (Context!10059 call!427863)) (h!69560 s!2326)))))

(declare-fun b!5654758 () Bool)

(declare-fun call!427868 () (InoxSet Context!10058))

(assert (=> b!5654758 (= e!3482943 ((_ map or) call!427868 call!427866))))

(declare-fun b!5654759 () Bool)

(assert (=> b!5654759 (= e!3482938 (store ((as const (Array Context!10058 Bool)) false) (Context!10059 lt!2266294) true))))

(declare-fun bm!427860 () Bool)

(declare-fun call!427865 () List!63234)

(assert (=> bm!427860 (= call!427865 call!427863)))

(declare-fun b!5654760 () Bool)

(assert (=> b!5654760 (= e!3482941 ((as const (Array Context!10058 Bool)) false))))

(declare-fun b!5654761 () Bool)

(declare-fun call!427864 () (InoxSet Context!10058))

(assert (=> b!5654761 (= e!3482942 ((_ map or) call!427866 call!427864))))

(declare-fun bm!427861 () Bool)

(assert (=> bm!427861 (= call!427868 (derivationStepZipperDown!987 (ite c!994091 (regOne!31803 (regOne!31802 (regOne!31802 r!7292))) (ite c!994093 (regTwo!31802 (regOne!31802 (regOne!31802 r!7292))) (ite c!994089 (regOne!31802 (regOne!31802 (regOne!31802 r!7292))) (reg!15974 (regOne!31802 (regOne!31802 r!7292)))))) (ite (or c!994091 c!994093) (Context!10059 lt!2266294) (Context!10059 call!427865)) (h!69560 s!2326)))))

(declare-fun bm!427862 () Bool)

(assert (=> bm!427862 (= call!427867 call!427864)))

(declare-fun bm!427863 () Bool)

(assert (=> bm!427863 (= call!427864 call!427868)))

(assert (= (and d!1785852 c!994092) b!5654759))

(assert (= (and d!1785852 (not c!994092)) b!5654756))

(assert (= (and b!5654756 c!994091) b!5654758))

(assert (= (and b!5654756 (not c!994091)) b!5654757))

(assert (= (and b!5654757 res!2392004) b!5654751))

(assert (= (and b!5654757 c!994093) b!5654761))

(assert (= (and b!5654757 (not c!994093)) b!5654755))

(assert (= (and b!5654755 c!994089) b!5654754))

(assert (= (and b!5654755 (not c!994089)) b!5654753))

(assert (= (and b!5654753 c!994090) b!5654752))

(assert (= (and b!5654753 (not c!994090)) b!5654760))

(assert (= (or b!5654754 b!5654752) bm!427860))

(assert (= (or b!5654754 b!5654752) bm!427862))

(assert (= (or b!5654761 bm!427860) bm!427858))

(assert (= (or b!5654761 bm!427862) bm!427863))

(assert (= (or b!5654758 b!5654761) bm!427859))

(assert (= (or b!5654758 bm!427863) bm!427861))

(declare-fun m!6621278 () Bool)

(assert (=> b!5654751 m!6621278))

(declare-fun m!6621280 () Bool)

(assert (=> bm!427858 m!6621280))

(declare-fun m!6621282 () Bool)

(assert (=> b!5654759 m!6621282))

(declare-fun m!6621284 () Bool)

(assert (=> bm!427861 m!6621284))

(declare-fun m!6621286 () Bool)

(assert (=> bm!427859 m!6621286))

(assert (=> b!5654198 d!1785852))

(declare-fun d!1785854 () Bool)

(declare-fun nullableFct!1766 (Regex!15645) Bool)

(assert (=> d!1785854 (= (nullable!5677 (regOne!31802 (regOne!31802 r!7292))) (nullableFct!1766 (regOne!31802 (regOne!31802 r!7292))))))

(declare-fun bs!1315112 () Bool)

(assert (= bs!1315112 d!1785854))

(declare-fun m!6621288 () Bool)

(assert (=> bs!1315112 m!6621288))

(assert (=> b!5654188 d!1785854))

(declare-fun d!1785856 () Bool)

(assert (=> d!1785856 (= (isEmpty!34953 (t!376537 zl!343)) ((_ is Nil!63111) (t!376537 zl!343)))))

(assert (=> b!5654197 d!1785856))

(declare-fun d!1785858 () Bool)

(declare-fun dynLambda!24690 (Int Context!10058) (InoxSet Context!10058))

(assert (=> d!1785858 (= (flatMap!1258 z!1189 lambda!304247) (dynLambda!24690 lambda!304247 (h!69559 zl!343)))))

(declare-fun lt!2266386 () Unit!156112)

(declare-fun choose!42815 ((InoxSet Context!10058) Context!10058 Int) Unit!156112)

(assert (=> d!1785858 (= lt!2266386 (choose!42815 z!1189 (h!69559 zl!343) lambda!304247))))

(assert (=> d!1785858 (= z!1189 (store ((as const (Array Context!10058 Bool)) false) (h!69559 zl!343) true))))

(assert (=> d!1785858 (= (lemmaFlatMapOnSingletonSet!790 z!1189 (h!69559 zl!343) lambda!304247) lt!2266386)))

(declare-fun b_lambda!213859 () Bool)

(assert (=> (not b_lambda!213859) (not d!1785858)))

(declare-fun bs!1315113 () Bool)

(assert (= bs!1315113 d!1785858))

(assert (=> bs!1315113 m!6620924))

(declare-fun m!6621290 () Bool)

(assert (=> bs!1315113 m!6621290))

(declare-fun m!6621292 () Bool)

(assert (=> bs!1315113 m!6621292))

(declare-fun m!6621294 () Bool)

(assert (=> bs!1315113 m!6621294))

(assert (=> b!5654196 d!1785858))

(declare-fun d!1785860 () Bool)

(assert (=> d!1785860 (= (nullable!5677 (h!69558 (exprs!5529 (h!69559 zl!343)))) (nullableFct!1766 (h!69558 (exprs!5529 (h!69559 zl!343)))))))

(declare-fun bs!1315114 () Bool)

(assert (= bs!1315114 d!1785860))

(declare-fun m!6621296 () Bool)

(assert (=> bs!1315114 m!6621296))

(assert (=> b!5654196 d!1785860))

(declare-fun b!5654772 () Bool)

(declare-fun e!3482952 () Bool)

(assert (=> b!5654772 (= e!3482952 (nullable!5677 (h!69558 (exprs!5529 (h!69559 zl!343)))))))

(declare-fun call!427871 () (InoxSet Context!10058))

(declare-fun e!3482950 () (InoxSet Context!10058))

(declare-fun b!5654773 () Bool)

(assert (=> b!5654773 (= e!3482950 ((_ map or) call!427871 (derivationStepZipperUp!913 (Context!10059 (t!376536 (exprs!5529 (h!69559 zl!343)))) (h!69560 s!2326))))))

(declare-fun b!5654774 () Bool)

(declare-fun e!3482951 () (InoxSet Context!10058))

(assert (=> b!5654774 (= e!3482951 ((as const (Array Context!10058 Bool)) false))))

(declare-fun d!1785862 () Bool)

(declare-fun c!994098 () Bool)

(assert (=> d!1785862 (= c!994098 e!3482952)))

(declare-fun res!2392007 () Bool)

(assert (=> d!1785862 (=> (not res!2392007) (not e!3482952))))

(assert (=> d!1785862 (= res!2392007 ((_ is Cons!63110) (exprs!5529 (h!69559 zl!343))))))

(assert (=> d!1785862 (= (derivationStepZipperUp!913 (h!69559 zl!343) (h!69560 s!2326)) e!3482950)))

(declare-fun b!5654775 () Bool)

(assert (=> b!5654775 (= e!3482950 e!3482951)))

(declare-fun c!994099 () Bool)

(assert (=> b!5654775 (= c!994099 ((_ is Cons!63110) (exprs!5529 (h!69559 zl!343))))))

(declare-fun bm!427866 () Bool)

(assert (=> bm!427866 (= call!427871 (derivationStepZipperDown!987 (h!69558 (exprs!5529 (h!69559 zl!343))) (Context!10059 (t!376536 (exprs!5529 (h!69559 zl!343)))) (h!69560 s!2326)))))

(declare-fun b!5654776 () Bool)

(assert (=> b!5654776 (= e!3482951 call!427871)))

(assert (= (and d!1785862 res!2392007) b!5654772))

(assert (= (and d!1785862 c!994098) b!5654773))

(assert (= (and d!1785862 (not c!994098)) b!5654775))

(assert (= (and b!5654775 c!994099) b!5654776))

(assert (= (and b!5654775 (not c!994099)) b!5654774))

(assert (= (or b!5654773 b!5654776) bm!427866))

(assert (=> b!5654772 m!6620922))

(declare-fun m!6621298 () Bool)

(assert (=> b!5654773 m!6621298))

(declare-fun m!6621300 () Bool)

(assert (=> bm!427866 m!6621300))

(assert (=> b!5654196 d!1785862))

(declare-fun d!1785864 () Bool)

(declare-fun c!994103 () Bool)

(assert (=> d!1785864 (= c!994103 (and ((_ is ElementMatch!15645) (h!69558 (exprs!5529 (h!69559 zl!343)))) (= (c!993935 (h!69558 (exprs!5529 (h!69559 zl!343)))) (h!69560 s!2326))))))

(declare-fun e!3482953 () (InoxSet Context!10058))

(assert (=> d!1785864 (= (derivationStepZipperDown!987 (h!69558 (exprs!5529 (h!69559 zl!343))) lt!2266301 (h!69560 s!2326)) e!3482953)))

(declare-fun b!5654777 () Bool)

(declare-fun e!3482954 () Bool)

(assert (=> b!5654777 (= e!3482954 (nullable!5677 (regOne!31802 (h!69558 (exprs!5529 (h!69559 zl!343))))))))

(declare-fun b!5654778 () Bool)

(declare-fun e!3482956 () (InoxSet Context!10058))

(declare-fun call!427876 () (InoxSet Context!10058))

(assert (=> b!5654778 (= e!3482956 call!427876)))

(declare-fun b!5654779 () Bool)

(declare-fun c!994101 () Bool)

(assert (=> b!5654779 (= c!994101 ((_ is Star!15645) (h!69558 (exprs!5529 (h!69559 zl!343)))))))

(declare-fun e!3482955 () (InoxSet Context!10058))

(assert (=> b!5654779 (= e!3482955 e!3482956)))

(declare-fun b!5654780 () Bool)

(assert (=> b!5654780 (= e!3482955 call!427876)))

(declare-fun b!5654781 () Bool)

(declare-fun e!3482957 () (InoxSet Context!10058))

(assert (=> b!5654781 (= e!3482957 e!3482955)))

(declare-fun c!994100 () Bool)

(assert (=> b!5654781 (= c!994100 ((_ is Concat!24490) (h!69558 (exprs!5529 (h!69559 zl!343)))))))

(declare-fun b!5654782 () Bool)

(declare-fun e!3482958 () (InoxSet Context!10058))

(assert (=> b!5654782 (= e!3482953 e!3482958)))

(declare-fun c!994102 () Bool)

(assert (=> b!5654782 (= c!994102 ((_ is Union!15645) (h!69558 (exprs!5529 (h!69559 zl!343)))))))

(declare-fun b!5654783 () Bool)

(declare-fun c!994104 () Bool)

(assert (=> b!5654783 (= c!994104 e!3482954)))

(declare-fun res!2392008 () Bool)

(assert (=> b!5654783 (=> (not res!2392008) (not e!3482954))))

(assert (=> b!5654783 (= res!2392008 ((_ is Concat!24490) (h!69558 (exprs!5529 (h!69559 zl!343)))))))

(assert (=> b!5654783 (= e!3482958 e!3482957)))

(declare-fun bm!427867 () Bool)

(declare-fun call!427872 () List!63234)

(assert (=> bm!427867 (= call!427872 ($colon$colon!1687 (exprs!5529 lt!2266301) (ite (or c!994104 c!994100) (regTwo!31802 (h!69558 (exprs!5529 (h!69559 zl!343)))) (h!69558 (exprs!5529 (h!69559 zl!343))))))))

(declare-fun call!427875 () (InoxSet Context!10058))

(declare-fun bm!427868 () Bool)

(assert (=> bm!427868 (= call!427875 (derivationStepZipperDown!987 (ite c!994102 (regTwo!31803 (h!69558 (exprs!5529 (h!69559 zl!343)))) (regOne!31802 (h!69558 (exprs!5529 (h!69559 zl!343))))) (ite c!994102 lt!2266301 (Context!10059 call!427872)) (h!69560 s!2326)))))

(declare-fun b!5654784 () Bool)

(declare-fun call!427877 () (InoxSet Context!10058))

(assert (=> b!5654784 (= e!3482958 ((_ map or) call!427877 call!427875))))

(declare-fun b!5654785 () Bool)

(assert (=> b!5654785 (= e!3482953 (store ((as const (Array Context!10058 Bool)) false) lt!2266301 true))))

(declare-fun bm!427869 () Bool)

(declare-fun call!427874 () List!63234)

(assert (=> bm!427869 (= call!427874 call!427872)))

(declare-fun b!5654786 () Bool)

(assert (=> b!5654786 (= e!3482956 ((as const (Array Context!10058 Bool)) false))))

(declare-fun b!5654787 () Bool)

(declare-fun call!427873 () (InoxSet Context!10058))

(assert (=> b!5654787 (= e!3482957 ((_ map or) call!427875 call!427873))))

(declare-fun bm!427870 () Bool)

(assert (=> bm!427870 (= call!427877 (derivationStepZipperDown!987 (ite c!994102 (regOne!31803 (h!69558 (exprs!5529 (h!69559 zl!343)))) (ite c!994104 (regTwo!31802 (h!69558 (exprs!5529 (h!69559 zl!343)))) (ite c!994100 (regOne!31802 (h!69558 (exprs!5529 (h!69559 zl!343)))) (reg!15974 (h!69558 (exprs!5529 (h!69559 zl!343))))))) (ite (or c!994102 c!994104) lt!2266301 (Context!10059 call!427874)) (h!69560 s!2326)))))

(declare-fun bm!427871 () Bool)

(assert (=> bm!427871 (= call!427876 call!427873)))

(declare-fun bm!427872 () Bool)

(assert (=> bm!427872 (= call!427873 call!427877)))

(assert (= (and d!1785864 c!994103) b!5654785))

(assert (= (and d!1785864 (not c!994103)) b!5654782))

(assert (= (and b!5654782 c!994102) b!5654784))

(assert (= (and b!5654782 (not c!994102)) b!5654783))

(assert (= (and b!5654783 res!2392008) b!5654777))

(assert (= (and b!5654783 c!994104) b!5654787))

(assert (= (and b!5654783 (not c!994104)) b!5654781))

(assert (= (and b!5654781 c!994100) b!5654780))

(assert (= (and b!5654781 (not c!994100)) b!5654779))

(assert (= (and b!5654779 c!994101) b!5654778))

(assert (= (and b!5654779 (not c!994101)) b!5654786))

(assert (= (or b!5654780 b!5654778) bm!427869))

(assert (= (or b!5654780 b!5654778) bm!427871))

(assert (= (or b!5654787 bm!427869) bm!427867))

(assert (= (or b!5654787 bm!427871) bm!427872))

(assert (= (or b!5654784 b!5654787) bm!427868))

(assert (= (or b!5654784 bm!427872) bm!427870))

(declare-fun m!6621302 () Bool)

(assert (=> b!5654777 m!6621302))

(declare-fun m!6621304 () Bool)

(assert (=> bm!427867 m!6621304))

(declare-fun m!6621306 () Bool)

(assert (=> b!5654785 m!6621306))

(declare-fun m!6621308 () Bool)

(assert (=> bm!427870 m!6621308))

(declare-fun m!6621310 () Bool)

(assert (=> bm!427868 m!6621310))

(assert (=> b!5654196 d!1785864))

(declare-fun b!5654788 () Bool)

(declare-fun e!3482961 () Bool)

(assert (=> b!5654788 (= e!3482961 (nullable!5677 (h!69558 (exprs!5529 lt!2266301))))))

(declare-fun call!427878 () (InoxSet Context!10058))

(declare-fun e!3482959 () (InoxSet Context!10058))

(declare-fun b!5654789 () Bool)

(assert (=> b!5654789 (= e!3482959 ((_ map or) call!427878 (derivationStepZipperUp!913 (Context!10059 (t!376536 (exprs!5529 lt!2266301))) (h!69560 s!2326))))))

(declare-fun b!5654790 () Bool)

(declare-fun e!3482960 () (InoxSet Context!10058))

(assert (=> b!5654790 (= e!3482960 ((as const (Array Context!10058 Bool)) false))))

(declare-fun d!1785866 () Bool)

(declare-fun c!994105 () Bool)

(assert (=> d!1785866 (= c!994105 e!3482961)))

(declare-fun res!2392009 () Bool)

(assert (=> d!1785866 (=> (not res!2392009) (not e!3482961))))

(assert (=> d!1785866 (= res!2392009 ((_ is Cons!63110) (exprs!5529 lt!2266301)))))

(assert (=> d!1785866 (= (derivationStepZipperUp!913 lt!2266301 (h!69560 s!2326)) e!3482959)))

(declare-fun b!5654791 () Bool)

(assert (=> b!5654791 (= e!3482959 e!3482960)))

(declare-fun c!994106 () Bool)

(assert (=> b!5654791 (= c!994106 ((_ is Cons!63110) (exprs!5529 lt!2266301)))))

(declare-fun bm!427873 () Bool)

(assert (=> bm!427873 (= call!427878 (derivationStepZipperDown!987 (h!69558 (exprs!5529 lt!2266301)) (Context!10059 (t!376536 (exprs!5529 lt!2266301))) (h!69560 s!2326)))))

(declare-fun b!5654792 () Bool)

(assert (=> b!5654792 (= e!3482960 call!427878)))

(assert (= (and d!1785866 res!2392009) b!5654788))

(assert (= (and d!1785866 c!994105) b!5654789))

(assert (= (and d!1785866 (not c!994105)) b!5654791))

(assert (= (and b!5654791 c!994106) b!5654792))

(assert (= (and b!5654791 (not c!994106)) b!5654790))

(assert (= (or b!5654789 b!5654792) bm!427873))

(declare-fun m!6621312 () Bool)

(assert (=> b!5654788 m!6621312))

(declare-fun m!6621314 () Bool)

(assert (=> b!5654789 m!6621314))

(declare-fun m!6621316 () Bool)

(assert (=> bm!427873 m!6621316))

(assert (=> b!5654196 d!1785866))

(declare-fun d!1785868 () Bool)

(declare-fun choose!42818 ((InoxSet Context!10058) Int) (InoxSet Context!10058))

(assert (=> d!1785868 (= (flatMap!1258 z!1189 lambda!304247) (choose!42818 z!1189 lambda!304247))))

(declare-fun bs!1315115 () Bool)

(assert (= bs!1315115 d!1785868))

(declare-fun m!6621318 () Bool)

(assert (=> bs!1315115 m!6621318))

(assert (=> b!5654196 d!1785868))

(declare-fun b!5654793 () Bool)

(declare-fun e!3482964 () Bool)

(assert (=> b!5654793 (= e!3482964 (nullable!5677 (h!69558 (exprs!5529 (Context!10059 (Cons!63110 (h!69558 (exprs!5529 (h!69559 zl!343))) (t!376536 (exprs!5529 (h!69559 zl!343)))))))))))

(declare-fun b!5654794 () Bool)

(declare-fun call!427879 () (InoxSet Context!10058))

(declare-fun e!3482962 () (InoxSet Context!10058))

(assert (=> b!5654794 (= e!3482962 ((_ map or) call!427879 (derivationStepZipperUp!913 (Context!10059 (t!376536 (exprs!5529 (Context!10059 (Cons!63110 (h!69558 (exprs!5529 (h!69559 zl!343))) (t!376536 (exprs!5529 (h!69559 zl!343)))))))) (h!69560 s!2326))))))

(declare-fun b!5654795 () Bool)

(declare-fun e!3482963 () (InoxSet Context!10058))

(assert (=> b!5654795 (= e!3482963 ((as const (Array Context!10058 Bool)) false))))

(declare-fun d!1785870 () Bool)

(declare-fun c!994107 () Bool)

(assert (=> d!1785870 (= c!994107 e!3482964)))

(declare-fun res!2392010 () Bool)

(assert (=> d!1785870 (=> (not res!2392010) (not e!3482964))))

(assert (=> d!1785870 (= res!2392010 ((_ is Cons!63110) (exprs!5529 (Context!10059 (Cons!63110 (h!69558 (exprs!5529 (h!69559 zl!343))) (t!376536 (exprs!5529 (h!69559 zl!343))))))))))

(assert (=> d!1785870 (= (derivationStepZipperUp!913 (Context!10059 (Cons!63110 (h!69558 (exprs!5529 (h!69559 zl!343))) (t!376536 (exprs!5529 (h!69559 zl!343))))) (h!69560 s!2326)) e!3482962)))

(declare-fun b!5654796 () Bool)

(assert (=> b!5654796 (= e!3482962 e!3482963)))

(declare-fun c!994108 () Bool)

(assert (=> b!5654796 (= c!994108 ((_ is Cons!63110) (exprs!5529 (Context!10059 (Cons!63110 (h!69558 (exprs!5529 (h!69559 zl!343))) (t!376536 (exprs!5529 (h!69559 zl!343))))))))))

(declare-fun bm!427874 () Bool)

(assert (=> bm!427874 (= call!427879 (derivationStepZipperDown!987 (h!69558 (exprs!5529 (Context!10059 (Cons!63110 (h!69558 (exprs!5529 (h!69559 zl!343))) (t!376536 (exprs!5529 (h!69559 zl!343))))))) (Context!10059 (t!376536 (exprs!5529 (Context!10059 (Cons!63110 (h!69558 (exprs!5529 (h!69559 zl!343))) (t!376536 (exprs!5529 (h!69559 zl!343)))))))) (h!69560 s!2326)))))

(declare-fun b!5654797 () Bool)

(assert (=> b!5654797 (= e!3482963 call!427879)))

(assert (= (and d!1785870 res!2392010) b!5654793))

(assert (= (and d!1785870 c!994107) b!5654794))

(assert (= (and d!1785870 (not c!994107)) b!5654796))

(assert (= (and b!5654796 c!994108) b!5654797))

(assert (= (and b!5654796 (not c!994108)) b!5654795))

(assert (= (or b!5654794 b!5654797) bm!427874))

(declare-fun m!6621320 () Bool)

(assert (=> b!5654793 m!6621320))

(declare-fun m!6621322 () Bool)

(assert (=> b!5654794 m!6621322))

(declare-fun m!6621324 () Bool)

(assert (=> bm!427874 m!6621324))

(assert (=> b!5654196 d!1785870))

(declare-fun bs!1315116 () Bool)

(declare-fun d!1785872 () Bool)

(assert (= bs!1315116 (and d!1785872 b!5654196)))

(declare-fun lambda!304299 () Int)

(assert (=> bs!1315116 (= lambda!304299 lambda!304247)))

(assert (=> d!1785872 true))

(assert (=> d!1785872 (= (derivationStepZipper!1730 lt!2266303 (h!69560 s!2326)) (flatMap!1258 lt!2266303 lambda!304299))))

(declare-fun bs!1315117 () Bool)

(assert (= bs!1315117 d!1785872))

(declare-fun m!6621326 () Bool)

(assert (=> bs!1315117 m!6621326))

(assert (=> b!5654187 d!1785872))

(declare-fun d!1785874 () Bool)

(assert (=> d!1785874 (= (flatMap!1258 lt!2266303 lambda!304247) (choose!42818 lt!2266303 lambda!304247))))

(declare-fun bs!1315118 () Bool)

(assert (= bs!1315118 d!1785874))

(declare-fun m!6621328 () Bool)

(assert (=> bs!1315118 m!6621328))

(assert (=> b!5654187 d!1785874))

(declare-fun b!5654800 () Bool)

(declare-fun e!3482967 () Bool)

(assert (=> b!5654800 (= e!3482967 (nullable!5677 (h!69558 (exprs!5529 lt!2266307))))))

(declare-fun b!5654801 () Bool)

(declare-fun e!3482965 () (InoxSet Context!10058))

(declare-fun call!427880 () (InoxSet Context!10058))

(assert (=> b!5654801 (= e!3482965 ((_ map or) call!427880 (derivationStepZipperUp!913 (Context!10059 (t!376536 (exprs!5529 lt!2266307))) (h!69560 s!2326))))))

(declare-fun b!5654802 () Bool)

(declare-fun e!3482966 () (InoxSet Context!10058))

(assert (=> b!5654802 (= e!3482966 ((as const (Array Context!10058 Bool)) false))))

(declare-fun d!1785876 () Bool)

(declare-fun c!994111 () Bool)

(assert (=> d!1785876 (= c!994111 e!3482967)))

(declare-fun res!2392011 () Bool)

(assert (=> d!1785876 (=> (not res!2392011) (not e!3482967))))

(assert (=> d!1785876 (= res!2392011 ((_ is Cons!63110) (exprs!5529 lt!2266307)))))

(assert (=> d!1785876 (= (derivationStepZipperUp!913 lt!2266307 (h!69560 s!2326)) e!3482965)))

(declare-fun b!5654803 () Bool)

(assert (=> b!5654803 (= e!3482965 e!3482966)))

(declare-fun c!994112 () Bool)

(assert (=> b!5654803 (= c!994112 ((_ is Cons!63110) (exprs!5529 lt!2266307)))))

(declare-fun bm!427875 () Bool)

(assert (=> bm!427875 (= call!427880 (derivationStepZipperDown!987 (h!69558 (exprs!5529 lt!2266307)) (Context!10059 (t!376536 (exprs!5529 lt!2266307))) (h!69560 s!2326)))))

(declare-fun b!5654804 () Bool)

(assert (=> b!5654804 (= e!3482966 call!427880)))

(assert (= (and d!1785876 res!2392011) b!5654800))

(assert (= (and d!1785876 c!994111) b!5654801))

(assert (= (and d!1785876 (not c!994111)) b!5654803))

(assert (= (and b!5654803 c!994112) b!5654804))

(assert (= (and b!5654803 (not c!994112)) b!5654802))

(assert (= (or b!5654801 b!5654804) bm!427875))

(declare-fun m!6621330 () Bool)

(assert (=> b!5654800 m!6621330))

(declare-fun m!6621332 () Bool)

(assert (=> b!5654801 m!6621332))

(declare-fun m!6621334 () Bool)

(assert (=> bm!427875 m!6621334))

(assert (=> b!5654187 d!1785876))

(declare-fun d!1785878 () Bool)

(assert (=> d!1785878 (= (flatMap!1258 lt!2266303 lambda!304247) (dynLambda!24690 lambda!304247 lt!2266307))))

(declare-fun lt!2266387 () Unit!156112)

(assert (=> d!1785878 (= lt!2266387 (choose!42815 lt!2266303 lt!2266307 lambda!304247))))

(assert (=> d!1785878 (= lt!2266303 (store ((as const (Array Context!10058 Bool)) false) lt!2266307 true))))

(assert (=> d!1785878 (= (lemmaFlatMapOnSingletonSet!790 lt!2266303 lt!2266307 lambda!304247) lt!2266387)))

(declare-fun b_lambda!213861 () Bool)

(assert (=> (not b_lambda!213861) (not d!1785878)))

(declare-fun bs!1315119 () Bool)

(assert (= bs!1315119 d!1785878))

(assert (=> bs!1315119 m!6620884))

(declare-fun m!6621336 () Bool)

(assert (=> bs!1315119 m!6621336))

(declare-fun m!6621338 () Bool)

(assert (=> bs!1315119 m!6621338))

(assert (=> bs!1315119 m!6620878))

(assert (=> b!5654187 d!1785878))

(declare-fun bs!1315120 () Bool)

(declare-fun b!5654840 () Bool)

(assert (= bs!1315120 (and b!5654840 b!5654192)))

(declare-fun lambda!304304 () Int)

(assert (=> bs!1315120 (not (= lambda!304304 lambda!304245))))

(assert (=> bs!1315120 (not (= lambda!304304 lambda!304246))))

(declare-fun bs!1315121 () Bool)

(assert (= bs!1315121 (and b!5654840 d!1785784)))

(assert (=> bs!1315121 (not (= lambda!304304 lambda!304272))))

(declare-fun bs!1315122 () Bool)

(assert (= bs!1315122 (and b!5654840 d!1785764)))

(assert (=> bs!1315122 (not (= lambda!304304 lambda!304266))))

(assert (=> bs!1315121 (not (= lambda!304304 lambda!304271))))

(assert (=> b!5654840 true))

(assert (=> b!5654840 true))

(declare-fun bs!1315123 () Bool)

(declare-fun b!5654845 () Bool)

(assert (= bs!1315123 (and b!5654845 b!5654192)))

(declare-fun lambda!304305 () Int)

(assert (=> bs!1315123 (not (= lambda!304305 lambda!304245))))

(assert (=> bs!1315123 (= lambda!304305 lambda!304246)))

(declare-fun bs!1315124 () Bool)

(assert (= bs!1315124 (and b!5654845 d!1785784)))

(assert (=> bs!1315124 (= lambda!304305 lambda!304272)))

(declare-fun bs!1315125 () Bool)

(assert (= bs!1315125 (and b!5654845 d!1785764)))

(assert (=> bs!1315125 (not (= lambda!304305 lambda!304266))))

(assert (=> bs!1315124 (not (= lambda!304305 lambda!304271))))

(declare-fun bs!1315126 () Bool)

(assert (= bs!1315126 (and b!5654845 b!5654840)))

(assert (=> bs!1315126 (not (= lambda!304305 lambda!304304))))

(assert (=> b!5654845 true))

(assert (=> b!5654845 true))

(declare-fun b!5654837 () Bool)

(declare-fun e!3482991 () Bool)

(declare-fun e!3482989 () Bool)

(assert (=> b!5654837 (= e!3482991 e!3482989)))

(declare-fun c!994123 () Bool)

(assert (=> b!5654837 (= c!994123 ((_ is Star!15645) r!7292))))

(declare-fun call!427886 () Bool)

(declare-fun bm!427880 () Bool)

(assert (=> bm!427880 (= call!427886 (Exists!2745 (ite c!994123 lambda!304304 lambda!304305)))))

(declare-fun b!5654838 () Bool)

(declare-fun e!3482987 () Bool)

(declare-fun e!3482988 () Bool)

(assert (=> b!5654838 (= e!3482987 e!3482988)))

(declare-fun res!2392030 () Bool)

(assert (=> b!5654838 (= res!2392030 (not ((_ is EmptyLang!15645) r!7292)))))

(assert (=> b!5654838 (=> (not res!2392030) (not e!3482988))))

(declare-fun d!1785880 () Bool)

(declare-fun c!994124 () Bool)

(assert (=> d!1785880 (= c!994124 ((_ is EmptyExpr!15645) r!7292))))

(assert (=> d!1785880 (= (matchRSpec!2748 r!7292 s!2326) e!3482987)))

(declare-fun b!5654839 () Bool)

(declare-fun e!3482990 () Bool)

(assert (=> b!5654839 (= e!3482990 (= s!2326 (Cons!63112 (c!993935 r!7292) Nil!63112)))))

(declare-fun e!3482992 () Bool)

(assert (=> b!5654840 (= e!3482992 call!427886)))

(declare-fun b!5654841 () Bool)

(declare-fun call!427885 () Bool)

(assert (=> b!5654841 (= e!3482987 call!427885)))

(declare-fun b!5654842 () Bool)

(declare-fun c!994121 () Bool)

(assert (=> b!5654842 (= c!994121 ((_ is ElementMatch!15645) r!7292))))

(assert (=> b!5654842 (= e!3482988 e!3482990)))

(declare-fun b!5654843 () Bool)

(declare-fun e!3482986 () Bool)

(assert (=> b!5654843 (= e!3482991 e!3482986)))

(declare-fun res!2392029 () Bool)

(assert (=> b!5654843 (= res!2392029 (matchRSpec!2748 (regOne!31803 r!7292) s!2326))))

(assert (=> b!5654843 (=> res!2392029 e!3482986)))

(declare-fun b!5654844 () Bool)

(declare-fun res!2392028 () Bool)

(assert (=> b!5654844 (=> res!2392028 e!3482992)))

(assert (=> b!5654844 (= res!2392028 call!427885)))

(assert (=> b!5654844 (= e!3482989 e!3482992)))

(assert (=> b!5654845 (= e!3482989 call!427886)))

(declare-fun b!5654846 () Bool)

(assert (=> b!5654846 (= e!3482986 (matchRSpec!2748 (regTwo!31803 r!7292) s!2326))))

(declare-fun b!5654847 () Bool)

(declare-fun c!994122 () Bool)

(assert (=> b!5654847 (= c!994122 ((_ is Union!15645) r!7292))))

(assert (=> b!5654847 (= e!3482990 e!3482991)))

(declare-fun bm!427881 () Bool)

(assert (=> bm!427881 (= call!427885 (isEmpty!34957 s!2326))))

(assert (= (and d!1785880 c!994124) b!5654841))

(assert (= (and d!1785880 (not c!994124)) b!5654838))

(assert (= (and b!5654838 res!2392030) b!5654842))

(assert (= (and b!5654842 c!994121) b!5654839))

(assert (= (and b!5654842 (not c!994121)) b!5654847))

(assert (= (and b!5654847 c!994122) b!5654843))

(assert (= (and b!5654847 (not c!994122)) b!5654837))

(assert (= (and b!5654843 (not res!2392029)) b!5654846))

(assert (= (and b!5654837 c!994123) b!5654844))

(assert (= (and b!5654837 (not c!994123)) b!5654845))

(assert (= (and b!5654844 (not res!2392028)) b!5654840))

(assert (= (or b!5654840 b!5654845) bm!427880))

(assert (= (or b!5654841 b!5654844) bm!427881))

(declare-fun m!6621340 () Bool)

(assert (=> bm!427880 m!6621340))

(declare-fun m!6621342 () Bool)

(assert (=> b!5654843 m!6621342))

(declare-fun m!6621344 () Bool)

(assert (=> b!5654846 m!6621344))

(declare-fun m!6621346 () Bool)

(assert (=> bm!427881 m!6621346))

(assert (=> b!5654206 d!1785880))

(declare-fun b!5654877 () Bool)

(declare-fun e!3483013 () Bool)

(declare-fun e!3483010 () Bool)

(assert (=> b!5654877 (= e!3483013 e!3483010)))

(declare-fun res!2392054 () Bool)

(assert (=> b!5654877 (=> res!2392054 e!3483010)))

(declare-fun call!427889 () Bool)

(assert (=> b!5654877 (= res!2392054 call!427889)))

(declare-fun b!5654878 () Bool)

(declare-fun e!3483009 () Bool)

(assert (=> b!5654878 (= e!3483009 (nullable!5677 r!7292))))

(declare-fun b!5654879 () Bool)

(declare-fun e!3483007 () Bool)

(declare-fun e!3483008 () Bool)

(assert (=> b!5654879 (= e!3483007 e!3483008)))

(declare-fun c!994132 () Bool)

(assert (=> b!5654879 (= c!994132 ((_ is EmptyLang!15645) r!7292))))

(declare-fun b!5654880 () Bool)

(declare-fun res!2392051 () Bool)

(assert (=> b!5654880 (=> res!2392051 e!3483010)))

(assert (=> b!5654880 (= res!2392051 (not (isEmpty!34957 (tail!11113 s!2326))))))

(declare-fun b!5654881 () Bool)

(declare-fun derivativeStep!4473 (Regex!15645 C!31560) Regex!15645)

(assert (=> b!5654881 (= e!3483009 (matchR!7830 (derivativeStep!4473 r!7292 (head!12018 s!2326)) (tail!11113 s!2326)))))

(declare-fun b!5654882 () Bool)

(declare-fun lt!2266390 () Bool)

(assert (=> b!5654882 (= e!3483007 (= lt!2266390 call!427889))))

(declare-fun bm!427884 () Bool)

(assert (=> bm!427884 (= call!427889 (isEmpty!34957 s!2326))))

(declare-fun d!1785882 () Bool)

(assert (=> d!1785882 e!3483007))

(declare-fun c!994131 () Bool)

(assert (=> d!1785882 (= c!994131 ((_ is EmptyExpr!15645) r!7292))))

(assert (=> d!1785882 (= lt!2266390 e!3483009)))

(declare-fun c!994133 () Bool)

(assert (=> d!1785882 (= c!994133 (isEmpty!34957 s!2326))))

(assert (=> d!1785882 (validRegex!7381 r!7292)))

(assert (=> d!1785882 (= (matchR!7830 r!7292 s!2326) lt!2266390)))

(declare-fun b!5654876 () Bool)

(assert (=> b!5654876 (= e!3483008 (not lt!2266390))))

(declare-fun b!5654883 () Bool)

(declare-fun res!2392053 () Bool)

(declare-fun e!3483011 () Bool)

(assert (=> b!5654883 (=> res!2392053 e!3483011)))

(declare-fun e!3483012 () Bool)

(assert (=> b!5654883 (= res!2392053 e!3483012)))

(declare-fun res!2392049 () Bool)

(assert (=> b!5654883 (=> (not res!2392049) (not e!3483012))))

(assert (=> b!5654883 (= res!2392049 lt!2266390)))

(declare-fun b!5654884 () Bool)

(assert (=> b!5654884 (= e!3483012 (= (head!12018 s!2326) (c!993935 r!7292)))))

(declare-fun b!5654885 () Bool)

(declare-fun res!2392048 () Bool)

(assert (=> b!5654885 (=> res!2392048 e!3483011)))

(assert (=> b!5654885 (= res!2392048 (not ((_ is ElementMatch!15645) r!7292)))))

(assert (=> b!5654885 (= e!3483008 e!3483011)))

(declare-fun b!5654886 () Bool)

(declare-fun res!2392047 () Bool)

(assert (=> b!5654886 (=> (not res!2392047) (not e!3483012))))

(assert (=> b!5654886 (= res!2392047 (not call!427889))))

(declare-fun b!5654887 () Bool)

(assert (=> b!5654887 (= e!3483010 (not (= (head!12018 s!2326) (c!993935 r!7292))))))

(declare-fun b!5654888 () Bool)

(declare-fun res!2392050 () Bool)

(assert (=> b!5654888 (=> (not res!2392050) (not e!3483012))))

(assert (=> b!5654888 (= res!2392050 (isEmpty!34957 (tail!11113 s!2326)))))

(declare-fun b!5654889 () Bool)

(assert (=> b!5654889 (= e!3483011 e!3483013)))

(declare-fun res!2392052 () Bool)

(assert (=> b!5654889 (=> (not res!2392052) (not e!3483013))))

(assert (=> b!5654889 (= res!2392052 (not lt!2266390))))

(assert (= (and d!1785882 c!994133) b!5654878))

(assert (= (and d!1785882 (not c!994133)) b!5654881))

(assert (= (and d!1785882 c!994131) b!5654882))

(assert (= (and d!1785882 (not c!994131)) b!5654879))

(assert (= (and b!5654879 c!994132) b!5654876))

(assert (= (and b!5654879 (not c!994132)) b!5654885))

(assert (= (and b!5654885 (not res!2392048)) b!5654883))

(assert (= (and b!5654883 res!2392049) b!5654886))

(assert (= (and b!5654886 res!2392047) b!5654888))

(assert (= (and b!5654888 res!2392050) b!5654884))

(assert (= (and b!5654883 (not res!2392053)) b!5654889))

(assert (= (and b!5654889 res!2392052) b!5654877))

(assert (= (and b!5654877 (not res!2392054)) b!5654880))

(assert (= (and b!5654880 (not res!2392051)) b!5654887))

(assert (= (or b!5654882 b!5654877 b!5654886) bm!427884))

(declare-fun m!6621348 () Bool)

(assert (=> b!5654887 m!6621348))

(assert (=> b!5654884 m!6621348))

(assert (=> b!5654881 m!6621348))

(assert (=> b!5654881 m!6621348))

(declare-fun m!6621350 () Bool)

(assert (=> b!5654881 m!6621350))

(declare-fun m!6621352 () Bool)

(assert (=> b!5654881 m!6621352))

(assert (=> b!5654881 m!6621350))

(assert (=> b!5654881 m!6621352))

(declare-fun m!6621354 () Bool)

(assert (=> b!5654881 m!6621354))

(assert (=> bm!427884 m!6621346))

(assert (=> b!5654880 m!6621352))

(assert (=> b!5654880 m!6621352))

(declare-fun m!6621356 () Bool)

(assert (=> b!5654880 m!6621356))

(assert (=> d!1785882 m!6621346))

(assert (=> d!1785882 m!6620930))

(assert (=> b!5654888 m!6621352))

(assert (=> b!5654888 m!6621352))

(assert (=> b!5654888 m!6621356))

(declare-fun m!6621358 () Bool)

(assert (=> b!5654878 m!6621358))

(assert (=> b!5654206 d!1785882))

(declare-fun d!1785884 () Bool)

(assert (=> d!1785884 (= (matchR!7830 r!7292 s!2326) (matchRSpec!2748 r!7292 s!2326))))

(declare-fun lt!2266393 () Unit!156112)

(declare-fun choose!42819 (Regex!15645 List!63236) Unit!156112)

(assert (=> d!1785884 (= lt!2266393 (choose!42819 r!7292 s!2326))))

(assert (=> d!1785884 (validRegex!7381 r!7292)))

(assert (=> d!1785884 (= (mainMatchTheorem!2748 r!7292 s!2326) lt!2266393)))

(declare-fun bs!1315127 () Bool)

(assert (= bs!1315127 d!1785884))

(assert (=> bs!1315127 m!6620934))

(assert (=> bs!1315127 m!6620932))

(declare-fun m!6621360 () Bool)

(assert (=> bs!1315127 m!6621360))

(assert (=> bs!1315127 m!6620930))

(assert (=> b!5654206 d!1785884))

(declare-fun d!1785886 () Bool)

(declare-fun lt!2266396 () Regex!15645)

(assert (=> d!1785886 (validRegex!7381 lt!2266396)))

(assert (=> d!1785886 (= lt!2266396 (generalisedUnion!1508 (unfocusZipperList!1073 zl!343)))))

(assert (=> d!1785886 (= (unfocusZipper!1387 zl!343) lt!2266396)))

(declare-fun bs!1315128 () Bool)

(assert (= bs!1315128 d!1785886))

(declare-fun m!6621362 () Bool)

(assert (=> bs!1315128 m!6621362))

(assert (=> bs!1315128 m!6620940))

(assert (=> bs!1315128 m!6620940))

(assert (=> bs!1315128 m!6620942))

(assert (=> b!5654186 d!1785886))

(declare-fun bs!1315129 () Bool)

(declare-fun d!1785888 () Bool)

(assert (= bs!1315129 (and d!1785888 d!1785826)))

(declare-fun lambda!304308 () Int)

(assert (=> bs!1315129 (= lambda!304308 lambda!304284)))

(declare-fun bs!1315130 () Bool)

(assert (= bs!1315130 (and d!1785888 d!1785832)))

(assert (=> bs!1315130 (= lambda!304308 lambda!304293)))

(declare-fun bs!1315131 () Bool)

(assert (= bs!1315131 (and d!1785888 d!1785842)))

(assert (=> bs!1315131 (= lambda!304308 lambda!304296)))

(assert (=> d!1785888 (= (inv!82359 (h!69559 zl!343)) (forall!14796 (exprs!5529 (h!69559 zl!343)) lambda!304308))))

(declare-fun bs!1315132 () Bool)

(assert (= bs!1315132 d!1785888))

(declare-fun m!6621364 () Bool)

(assert (=> bs!1315132 m!6621364))

(assert (=> b!5654205 d!1785888))

(assert (=> b!5654204 d!1785812))

(declare-fun d!1785890 () Bool)

(declare-fun c!994134 () Bool)

(assert (=> d!1785890 (= c!994134 (isEmpty!34957 (t!376538 s!2326)))))

(declare-fun e!3483014 () Bool)

(assert (=> d!1785890 (= (matchZipper!1783 lt!2266306 (t!376538 s!2326)) e!3483014)))

(declare-fun b!5654890 () Bool)

(assert (=> b!5654890 (= e!3483014 (nullableZipper!1619 lt!2266306))))

(declare-fun b!5654891 () Bool)

(assert (=> b!5654891 (= e!3483014 (matchZipper!1783 (derivationStepZipper!1730 lt!2266306 (head!12018 (t!376538 s!2326))) (tail!11113 (t!376538 s!2326))))))

(assert (= (and d!1785890 c!994134) b!5654890))

(assert (= (and d!1785890 (not c!994134)) b!5654891))

(assert (=> d!1785890 m!6621158))

(declare-fun m!6621366 () Bool)

(assert (=> b!5654890 m!6621366))

(assert (=> b!5654891 m!6621162))

(assert (=> b!5654891 m!6621162))

(declare-fun m!6621368 () Bool)

(assert (=> b!5654891 m!6621368))

(assert (=> b!5654891 m!6621166))

(assert (=> b!5654891 m!6621368))

(assert (=> b!5654891 m!6621166))

(declare-fun m!6621370 () Bool)

(assert (=> b!5654891 m!6621370))

(assert (=> b!5654204 d!1785890))

(declare-fun bs!1315133 () Bool)

(declare-fun d!1785892 () Bool)

(assert (= bs!1315133 (and d!1785892 d!1785826)))

(declare-fun lambda!304309 () Int)

(assert (=> bs!1315133 (= lambda!304309 lambda!304284)))

(declare-fun bs!1315134 () Bool)

(assert (= bs!1315134 (and d!1785892 d!1785832)))

(assert (=> bs!1315134 (= lambda!304309 lambda!304293)))

(declare-fun bs!1315135 () Bool)

(assert (= bs!1315135 (and d!1785892 d!1785842)))

(assert (=> bs!1315135 (= lambda!304309 lambda!304296)))

(declare-fun bs!1315136 () Bool)

(assert (= bs!1315136 (and d!1785892 d!1785888)))

(assert (=> bs!1315136 (= lambda!304309 lambda!304308)))

(assert (=> d!1785892 (= (inv!82359 setElem!37792) (forall!14796 (exprs!5529 setElem!37792) lambda!304309))))

(declare-fun bs!1315137 () Bool)

(assert (= bs!1315137 d!1785892))

(declare-fun m!6621372 () Bool)

(assert (=> bs!1315137 m!6621372))

(assert (=> setNonEmpty!37792 d!1785892))

(declare-fun d!1785894 () Bool)

(declare-fun c!994135 () Bool)

(assert (=> d!1785894 (= c!994135 (isEmpty!34957 (t!376538 s!2326)))))

(declare-fun e!3483015 () Bool)

(assert (=> d!1785894 (= (matchZipper!1783 lt!2266300 (t!376538 s!2326)) e!3483015)))

(declare-fun b!5654892 () Bool)

(assert (=> b!5654892 (= e!3483015 (nullableZipper!1619 lt!2266300))))

(declare-fun b!5654893 () Bool)

(assert (=> b!5654893 (= e!3483015 (matchZipper!1783 (derivationStepZipper!1730 lt!2266300 (head!12018 (t!376538 s!2326))) (tail!11113 (t!376538 s!2326))))))

(assert (= (and d!1785894 c!994135) b!5654892))

(assert (= (and d!1785894 (not c!994135)) b!5654893))

(assert (=> d!1785894 m!6621158))

(declare-fun m!6621374 () Bool)

(assert (=> b!5654892 m!6621374))

(assert (=> b!5654893 m!6621162))

(assert (=> b!5654893 m!6621162))

(declare-fun m!6621376 () Bool)

(assert (=> b!5654893 m!6621376))

(assert (=> b!5654893 m!6621166))

(assert (=> b!5654893 m!6621376))

(assert (=> b!5654893 m!6621166))

(declare-fun m!6621378 () Bool)

(assert (=> b!5654893 m!6621378))

(assert (=> b!5654203 d!1785894))

(declare-fun b!5654901 () Bool)

(declare-fun e!3483021 () Bool)

(declare-fun tp!1566528 () Bool)

(assert (=> b!5654901 (= e!3483021 tp!1566528)))

(declare-fun tp!1566529 () Bool)

(declare-fun e!3483020 () Bool)

(declare-fun b!5654900 () Bool)

(assert (=> b!5654900 (= e!3483020 (and (inv!82359 (h!69559 (t!376537 zl!343))) e!3483021 tp!1566529))))

(assert (=> b!5654205 (= tp!1566462 e!3483020)))

(assert (= b!5654900 b!5654901))

(assert (= (and b!5654205 ((_ is Cons!63111) (t!376537 zl!343))) b!5654900))

(declare-fun m!6621380 () Bool)

(assert (=> b!5654900 m!6621380))

(declare-fun b!5654906 () Bool)

(declare-fun e!3483024 () Bool)

(declare-fun tp!1566532 () Bool)

(assert (=> b!5654906 (= e!3483024 (and tp_is_empty!40543 tp!1566532))))

(assert (=> b!5654185 (= tp!1566464 e!3483024)))

(assert (= (and b!5654185 ((_ is Cons!63112) (t!376538 s!2326))) b!5654906))

(declare-fun e!3483027 () Bool)

(assert (=> b!5654209 (= tp!1566461 e!3483027)))

(declare-fun b!5654920 () Bool)

(declare-fun tp!1566546 () Bool)

(declare-fun tp!1566545 () Bool)

(assert (=> b!5654920 (= e!3483027 (and tp!1566546 tp!1566545))))

(declare-fun b!5654919 () Bool)

(declare-fun tp!1566547 () Bool)

(assert (=> b!5654919 (= e!3483027 tp!1566547)))

(declare-fun b!5654917 () Bool)

(assert (=> b!5654917 (= e!3483027 tp_is_empty!40543)))

(declare-fun b!5654918 () Bool)

(declare-fun tp!1566544 () Bool)

(declare-fun tp!1566543 () Bool)

(assert (=> b!5654918 (= e!3483027 (and tp!1566544 tp!1566543))))

(assert (= (and b!5654209 ((_ is ElementMatch!15645) (regOne!31803 r!7292))) b!5654917))

(assert (= (and b!5654209 ((_ is Concat!24490) (regOne!31803 r!7292))) b!5654918))

(assert (= (and b!5654209 ((_ is Star!15645) (regOne!31803 r!7292))) b!5654919))

(assert (= (and b!5654209 ((_ is Union!15645) (regOne!31803 r!7292))) b!5654920))

(declare-fun e!3483028 () Bool)

(assert (=> b!5654209 (= tp!1566458 e!3483028)))

(declare-fun b!5654924 () Bool)

(declare-fun tp!1566551 () Bool)

(declare-fun tp!1566550 () Bool)

(assert (=> b!5654924 (= e!3483028 (and tp!1566551 tp!1566550))))

(declare-fun b!5654923 () Bool)

(declare-fun tp!1566552 () Bool)

(assert (=> b!5654923 (= e!3483028 tp!1566552)))

(declare-fun b!5654921 () Bool)

(assert (=> b!5654921 (= e!3483028 tp_is_empty!40543)))

(declare-fun b!5654922 () Bool)

(declare-fun tp!1566549 () Bool)

(declare-fun tp!1566548 () Bool)

(assert (=> b!5654922 (= e!3483028 (and tp!1566549 tp!1566548))))

(assert (= (and b!5654209 ((_ is ElementMatch!15645) (regTwo!31803 r!7292))) b!5654921))

(assert (= (and b!5654209 ((_ is Concat!24490) (regTwo!31803 r!7292))) b!5654922))

(assert (= (and b!5654209 ((_ is Star!15645) (regTwo!31803 r!7292))) b!5654923))

(assert (= (and b!5654209 ((_ is Union!15645) (regTwo!31803 r!7292))) b!5654924))

(declare-fun condSetEmpty!37798 () Bool)

(assert (=> setNonEmpty!37792 (= condSetEmpty!37798 (= setRest!37792 ((as const (Array Context!10058 Bool)) false)))))

(declare-fun setRes!37798 () Bool)

(assert (=> setNonEmpty!37792 (= tp!1566459 setRes!37798)))

(declare-fun setIsEmpty!37798 () Bool)

(assert (=> setIsEmpty!37798 setRes!37798))

(declare-fun setElem!37798 () Context!10058)

(declare-fun tp!1566558 () Bool)

(declare-fun e!3483031 () Bool)

(declare-fun setNonEmpty!37798 () Bool)

(assert (=> setNonEmpty!37798 (= setRes!37798 (and tp!1566558 (inv!82359 setElem!37798) e!3483031))))

(declare-fun setRest!37798 () (InoxSet Context!10058))

(assert (=> setNonEmpty!37798 (= setRest!37792 ((_ map or) (store ((as const (Array Context!10058 Bool)) false) setElem!37798 true) setRest!37798))))

(declare-fun b!5654929 () Bool)

(declare-fun tp!1566557 () Bool)

(assert (=> b!5654929 (= e!3483031 tp!1566557)))

(assert (= (and setNonEmpty!37792 condSetEmpty!37798) setIsEmpty!37798))

(assert (= (and setNonEmpty!37792 (not condSetEmpty!37798)) setNonEmpty!37798))

(assert (= setNonEmpty!37798 b!5654929))

(declare-fun m!6621382 () Bool)

(assert (=> setNonEmpty!37798 m!6621382))

(declare-fun e!3483032 () Bool)

(assert (=> b!5654189 (= tp!1566457 e!3483032)))

(declare-fun b!5654933 () Bool)

(declare-fun tp!1566562 () Bool)

(declare-fun tp!1566561 () Bool)

(assert (=> b!5654933 (= e!3483032 (and tp!1566562 tp!1566561))))

(declare-fun b!5654932 () Bool)

(declare-fun tp!1566563 () Bool)

(assert (=> b!5654932 (= e!3483032 tp!1566563)))

(declare-fun b!5654930 () Bool)

(assert (=> b!5654930 (= e!3483032 tp_is_empty!40543)))

(declare-fun b!5654931 () Bool)

(declare-fun tp!1566560 () Bool)

(declare-fun tp!1566559 () Bool)

(assert (=> b!5654931 (= e!3483032 (and tp!1566560 tp!1566559))))

(assert (= (and b!5654189 ((_ is ElementMatch!15645) (reg!15974 r!7292))) b!5654930))

(assert (= (and b!5654189 ((_ is Concat!24490) (reg!15974 r!7292))) b!5654931))

(assert (= (and b!5654189 ((_ is Star!15645) (reg!15974 r!7292))) b!5654932))

(assert (= (and b!5654189 ((_ is Union!15645) (reg!15974 r!7292))) b!5654933))

(declare-fun b!5654938 () Bool)

(declare-fun e!3483035 () Bool)

(declare-fun tp!1566568 () Bool)

(declare-fun tp!1566569 () Bool)

(assert (=> b!5654938 (= e!3483035 (and tp!1566568 tp!1566569))))

(assert (=> b!5654208 (= tp!1566456 e!3483035)))

(assert (= (and b!5654208 ((_ is Cons!63110) (exprs!5529 setElem!37792))) b!5654938))

(declare-fun b!5654939 () Bool)

(declare-fun e!3483036 () Bool)

(declare-fun tp!1566570 () Bool)

(declare-fun tp!1566571 () Bool)

(assert (=> b!5654939 (= e!3483036 (and tp!1566570 tp!1566571))))

(assert (=> b!5654207 (= tp!1566465 e!3483036)))

(assert (= (and b!5654207 ((_ is Cons!63110) (exprs!5529 (h!69559 zl!343)))) b!5654939))

(declare-fun e!3483037 () Bool)

(assert (=> b!5654193 (= tp!1566460 e!3483037)))

(declare-fun b!5654943 () Bool)

(declare-fun tp!1566575 () Bool)

(declare-fun tp!1566574 () Bool)

(assert (=> b!5654943 (= e!3483037 (and tp!1566575 tp!1566574))))

(declare-fun b!5654942 () Bool)

(declare-fun tp!1566576 () Bool)

(assert (=> b!5654942 (= e!3483037 tp!1566576)))

(declare-fun b!5654940 () Bool)

(assert (=> b!5654940 (= e!3483037 tp_is_empty!40543)))

(declare-fun b!5654941 () Bool)

(declare-fun tp!1566573 () Bool)

(declare-fun tp!1566572 () Bool)

(assert (=> b!5654941 (= e!3483037 (and tp!1566573 tp!1566572))))

(assert (= (and b!5654193 ((_ is ElementMatch!15645) (regOne!31802 r!7292))) b!5654940))

(assert (= (and b!5654193 ((_ is Concat!24490) (regOne!31802 r!7292))) b!5654941))

(assert (= (and b!5654193 ((_ is Star!15645) (regOne!31802 r!7292))) b!5654942))

(assert (= (and b!5654193 ((_ is Union!15645) (regOne!31802 r!7292))) b!5654943))

(declare-fun e!3483038 () Bool)

(assert (=> b!5654193 (= tp!1566463 e!3483038)))

(declare-fun b!5654947 () Bool)

(declare-fun tp!1566580 () Bool)

(declare-fun tp!1566579 () Bool)

(assert (=> b!5654947 (= e!3483038 (and tp!1566580 tp!1566579))))

(declare-fun b!5654946 () Bool)

(declare-fun tp!1566581 () Bool)

(assert (=> b!5654946 (= e!3483038 tp!1566581)))

(declare-fun b!5654944 () Bool)

(assert (=> b!5654944 (= e!3483038 tp_is_empty!40543)))

(declare-fun b!5654945 () Bool)

(declare-fun tp!1566578 () Bool)

(declare-fun tp!1566577 () Bool)

(assert (=> b!5654945 (= e!3483038 (and tp!1566578 tp!1566577))))

(assert (= (and b!5654193 ((_ is ElementMatch!15645) (regTwo!31802 r!7292))) b!5654944))

(assert (= (and b!5654193 ((_ is Concat!24490) (regTwo!31802 r!7292))) b!5654945))

(assert (= (and b!5654193 ((_ is Star!15645) (regTwo!31802 r!7292))) b!5654946))

(assert (= (and b!5654193 ((_ is Union!15645) (regTwo!31802 r!7292))) b!5654947))

(declare-fun b_lambda!213863 () Bool)

(assert (= b_lambda!213859 (or b!5654196 b_lambda!213863)))

(declare-fun bs!1315138 () Bool)

(declare-fun d!1785896 () Bool)

(assert (= bs!1315138 (and d!1785896 b!5654196)))

(assert (=> bs!1315138 (= (dynLambda!24690 lambda!304247 (h!69559 zl!343)) (derivationStepZipperUp!913 (h!69559 zl!343) (h!69560 s!2326)))))

(assert (=> bs!1315138 m!6620918))

(assert (=> d!1785858 d!1785896))

(declare-fun b_lambda!213865 () Bool)

(assert (= b_lambda!213861 (or b!5654196 b_lambda!213865)))

(declare-fun bs!1315139 () Bool)

(declare-fun d!1785898 () Bool)

(assert (= bs!1315139 (and d!1785898 b!5654196)))

(assert (=> bs!1315139 (= (dynLambda!24690 lambda!304247 lt!2266307) (derivationStepZipperUp!913 lt!2266307 (h!69560 s!2326)))))

(assert (=> bs!1315139 m!6620882))

(assert (=> d!1785878 d!1785898))

(check-sat (not b!5654773) (not bm!427868) (not b!5654939) (not bm!427874) (not b_lambda!213863) (not b!5654526) (not b!5654843) (not b!5654924) (not d!1785868) (not d!1785892) (not d!1785886) (not b_lambda!213865) (not b!5654693) (not d!1785894) (not d!1785812) (not d!1785748) (not b!5654382) (not b!5654931) (not b!5654611) (not b!5654887) (not d!1785842) (not b!5654945) (not b!5654920) (not b!5654893) (not b!5654528) (not b!5654938) (not b!5654569) (not d!1785762) (not b!5654941) (not b!5654800) (not d!1785832) (not b!5654888) (not d!1785872) (not b!5654529) (not b!5654572) (not bm!427873) (not b!5654901) (not b!5654793) (not b!5654923) (not bm!427884) (not b!5654932) (not bm!427880) (not b!5654947) (not b!5654694) (not b!5654700) (not d!1785784) (not b!5654881) (not b!5654697) (not bm!427867) (not b!5654726) (not b!5654891) (not b!5654890) (not b!5654900) (not b!5654777) (not b!5654946) (not d!1785882) (not b!5654696) (not bs!1315139) (not b!5654699) (not bm!427843) (not b!5654573) (not setNonEmpty!37798) (not bm!427881) (not bm!427845) (not b!5654536) (not b!5654846) (not b!5654943) (not b!5654918) (not d!1785890) (not b!5654801) (not b!5654933) (not b!5654379) (not d!1785758) (not bm!427870) (not b!5654380) tp_is_empty!40543 (not d!1785854) (not d!1785808) (not b!5654922) (not b!5654527) (not d!1785810) (not b!5654906) (not d!1785884) (not b!5654751) (not b!5654884) (not bs!1315138) (not d!1785820) (not bm!427859) (not d!1785858) (not d!1785878) (not b!5654567) (not b!5654381) (not d!1785860) (not bm!427861) (not b!5654384) (not bm!427875) (not b!5654794) (not d!1785826) (not b!5654701) (not b!5654919) (not b!5654789) (not d!1785874) (not b!5654565) (not bm!427866) (not b!5654942) (not b!5654878) (not b!5654788) (not b!5654892) (not d!1785764) (not b!5654880) (not d!1785822) (not bm!427858) (not b!5654929) (not d!1785888) (not b!5654512) (not b!5654772) (not b!5654566) (not b!5654383) (not b!5654570))
(check-sat)
