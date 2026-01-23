; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!594936 () Bool)

(assert start!594936)

(declare-fun b!5806041 () Bool)

(assert (=> b!5806041 true))

(assert (=> b!5806041 true))

(declare-fun lambda!316848 () Int)

(declare-fun lambda!316847 () Int)

(assert (=> b!5806041 (not (= lambda!316848 lambda!316847))))

(assert (=> b!5806041 true))

(assert (=> b!5806041 true))

(declare-fun lambda!316849 () Int)

(assert (=> b!5806041 (not (= lambda!316849 lambda!316847))))

(assert (=> b!5806041 (not (= lambda!316849 lambda!316848))))

(assert (=> b!5806041 true))

(assert (=> b!5806041 true))

(declare-fun b!5806027 () Bool)

(assert (=> b!5806027 true))

(declare-fun b!5806022 () Bool)

(declare-fun e!3564231 () Bool)

(declare-fun e!3564216 () Bool)

(assert (=> b!5806022 (= e!3564231 (not e!3564216))))

(declare-fun res!2448323 () Bool)

(assert (=> b!5806022 (=> res!2448323 e!3564216)))

(declare-datatypes ((C!31908 0))(
  ( (C!31909 (val!25656 Int)) )
))
(declare-datatypes ((Regex!15819 0))(
  ( (ElementMatch!15819 (c!1028567 C!31908)) (Concat!24664 (regOne!32150 Regex!15819) (regTwo!32150 Regex!15819)) (EmptyExpr!15819) (Star!15819 (reg!16148 Regex!15819)) (EmptyLang!15819) (Union!15819 (regOne!32151 Regex!15819) (regTwo!32151 Regex!15819)) )
))
(declare-datatypes ((List!63756 0))(
  ( (Nil!63632) (Cons!63632 (h!70080 Regex!15819) (t!377109 List!63756)) )
))
(declare-datatypes ((Context!10406 0))(
  ( (Context!10407 (exprs!5703 List!63756)) )
))
(declare-datatypes ((List!63757 0))(
  ( (Nil!63633) (Cons!63633 (h!70081 Context!10406) (t!377110 List!63757)) )
))
(declare-fun zl!343 () List!63757)

(get-info :version)

(assert (=> b!5806022 (= res!2448323 (not ((_ is Cons!63633) zl!343)))))

(declare-fun lt!2298849 () Bool)

(declare-fun r!7292 () Regex!15819)

(declare-datatypes ((List!63758 0))(
  ( (Nil!63634) (Cons!63634 (h!70082 C!31908) (t!377111 List!63758)) )
))
(declare-fun s!2326 () List!63758)

(declare-fun matchRSpec!2922 (Regex!15819 List!63758) Bool)

(assert (=> b!5806022 (= lt!2298849 (matchRSpec!2922 r!7292 s!2326))))

(declare-fun matchR!8004 (Regex!15819 List!63758) Bool)

(assert (=> b!5806022 (= lt!2298849 (matchR!8004 r!7292 s!2326))))

(declare-datatypes ((Unit!156898 0))(
  ( (Unit!156899) )
))
(declare-fun lt!2298830 () Unit!156898)

(declare-fun mainMatchTheorem!2922 (Regex!15819 List!63758) Unit!156898)

(assert (=> b!5806022 (= lt!2298830 (mainMatchTheorem!2922 r!7292 s!2326))))

(declare-fun b!5806023 () Bool)

(declare-fun res!2448336 () Bool)

(assert (=> b!5806023 (=> res!2448336 e!3564216)))

(assert (=> b!5806023 (= res!2448336 (or ((_ is EmptyExpr!15819) r!7292) ((_ is EmptyLang!15819) r!7292) ((_ is ElementMatch!15819) r!7292) ((_ is Union!15819) r!7292) ((_ is Concat!24664) r!7292)))))

(declare-fun b!5806024 () Bool)

(declare-fun e!3564232 () Bool)

(declare-fun tp!1602795 () Bool)

(assert (=> b!5806024 (= e!3564232 tp!1602795)))

(declare-fun b!5806025 () Bool)

(declare-fun e!3564228 () Bool)

(declare-fun e!3564219 () Bool)

(assert (=> b!5806025 (= e!3564228 e!3564219)))

(declare-fun res!2448330 () Bool)

(assert (=> b!5806025 (=> res!2448330 e!3564219)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2298841 () (InoxSet Context!10406))

(declare-fun lt!2298846 () (InoxSet Context!10406))

(assert (=> b!5806025 (= res!2448330 (not (= lt!2298841 lt!2298846)))))

(declare-fun derivationStepZipperDown!1157 (Regex!15819 Context!10406 C!31908) (InoxSet Context!10406))

(assert (=> b!5806025 (= lt!2298846 (derivationStepZipperDown!1157 r!7292 (Context!10407 Nil!63632) (h!70082 s!2326)))))

(declare-fun derivationStepZipperUp!1083 (Context!10406 C!31908) (InoxSet Context!10406))

(assert (=> b!5806025 (= lt!2298841 (derivationStepZipperUp!1083 (Context!10407 (Cons!63632 r!7292 Nil!63632)) (h!70082 s!2326)))))

(declare-fun lt!2298851 () (InoxSet Context!10406))

(declare-fun z!1189 () (InoxSet Context!10406))

(declare-fun derivationStepZipper!1888 ((InoxSet Context!10406) C!31908) (InoxSet Context!10406))

(assert (=> b!5806025 (= lt!2298851 (derivationStepZipper!1888 z!1189 (h!70082 s!2326)))))

(declare-fun e!3564226 () Bool)

(assert (=> b!5806027 (= e!3564219 e!3564226)))

(declare-fun res!2448326 () Bool)

(assert (=> b!5806027 (=> res!2448326 e!3564226)))

(assert (=> b!5806027 (= res!2448326 (not (= lt!2298851 lt!2298846)))))

(declare-fun lambda!316850 () Int)

(declare-fun flatMap!1426 ((InoxSet Context!10406) Int) (InoxSet Context!10406))

(assert (=> b!5806027 (= (flatMap!1426 z!1189 lambda!316850) (derivationStepZipperUp!1083 (h!70081 zl!343) (h!70082 s!2326)))))

(declare-fun lt!2298837 () Unit!156898)

(declare-fun lemmaFlatMapOnSingletonSet!958 ((InoxSet Context!10406) Context!10406 Int) Unit!156898)

(assert (=> b!5806027 (= lt!2298837 (lemmaFlatMapOnSingletonSet!958 z!1189 (h!70081 zl!343) lambda!316850))))

(declare-fun b!5806028 () Bool)

(declare-fun res!2448324 () Bool)

(assert (=> b!5806028 (=> res!2448324 e!3564216)))

(declare-fun isEmpty!35543 (List!63757) Bool)

(assert (=> b!5806028 (= res!2448324 (not (isEmpty!35543 (t!377110 zl!343))))))

(declare-fun b!5806029 () Bool)

(declare-fun e!3564218 () Bool)

(declare-fun e!3564217 () Bool)

(assert (=> b!5806029 (= e!3564218 e!3564217)))

(declare-fun res!2448329 () Bool)

(assert (=> b!5806029 (=> res!2448329 e!3564217)))

(declare-fun lt!2298843 () Context!10406)

(declare-fun lt!2298845 () Regex!15819)

(declare-fun unfocusZipper!1561 (List!63757) Regex!15819)

(assert (=> b!5806029 (= res!2448329 (not (= (unfocusZipper!1561 (Cons!63633 lt!2298843 Nil!63633)) lt!2298845)))))

(assert (=> b!5806029 (= lt!2298845 (Concat!24664 (reg!16148 r!7292) r!7292))))

(declare-fun b!5806030 () Bool)

(declare-fun e!3564227 () Bool)

(declare-fun e!3564225 () Bool)

(assert (=> b!5806030 (= e!3564227 e!3564225)))

(declare-fun res!2448342 () Bool)

(assert (=> b!5806030 (=> (not res!2448342) (not e!3564225))))

(declare-fun Exists!2919 (Int) Bool)

(assert (=> b!5806030 (= res!2448342 (= (Exists!2919 lambda!316847) (Exists!2919 lambda!316848)))))

(declare-fun b!5806031 () Bool)

(declare-fun res!2448321 () Bool)

(assert (=> b!5806031 (=> res!2448321 e!3564216)))

(declare-fun generalisedConcat!1434 (List!63756) Regex!15819)

(assert (=> b!5806031 (= res!2448321 (not (= r!7292 (generalisedConcat!1434 (exprs!5703 (h!70081 zl!343))))))))

(declare-fun b!5806032 () Bool)

(declare-fun e!3564233 () Bool)

(declare-fun tp!1602792 () Bool)

(declare-fun inv!82794 (Context!10406) Bool)

(assert (=> b!5806032 (= e!3564233 (and (inv!82794 (h!70081 zl!343)) e!3564232 tp!1602792))))

(declare-fun b!5806033 () Bool)

(declare-fun e!3564229 () Bool)

(declare-fun e!3564224 () Bool)

(assert (=> b!5806033 (= e!3564229 e!3564224)))

(declare-fun res!2448341 () Bool)

(assert (=> b!5806033 (=> res!2448341 e!3564224)))

(declare-fun lt!2298853 () Bool)

(assert (=> b!5806033 (= res!2448341 (not lt!2298853))))

(declare-fun e!3564223 () Bool)

(assert (=> b!5806033 e!3564223))

(declare-fun res!2448325 () Bool)

(assert (=> b!5806033 (=> (not res!2448325) (not e!3564223))))

(assert (=> b!5806033 (= res!2448325 (= lt!2298853 (matchRSpec!2922 lt!2298845 s!2326)))))

(assert (=> b!5806033 (= lt!2298853 (matchR!8004 lt!2298845 s!2326))))

(declare-fun lt!2298839 () Unit!156898)

(assert (=> b!5806033 (= lt!2298839 (mainMatchTheorem!2922 lt!2298845 s!2326))))

(declare-fun b!5806034 () Bool)

(assert (=> b!5806034 (= e!3564223 e!3564227)))

(declare-fun res!2448335 () Bool)

(assert (=> b!5806034 (=> res!2448335 e!3564227)))

(assert (=> b!5806034 (= res!2448335 (not lt!2298853))))

(declare-fun b!5806035 () Bool)

(declare-fun res!2448339 () Bool)

(assert (=> b!5806035 (=> res!2448339 e!3564229)))

(declare-fun lt!2298850 () Context!10406)

(assert (=> b!5806035 (= res!2448339 (not (= (unfocusZipper!1561 (Cons!63633 lt!2298850 Nil!63633)) r!7292)))))

(declare-fun b!5806036 () Bool)

(declare-fun e!3564230 () Bool)

(declare-fun tp_is_empty!40891 () Bool)

(assert (=> b!5806036 (= e!3564230 tp_is_empty!40891)))

(declare-fun b!5806037 () Bool)

(assert (=> b!5806037 (= e!3564217 e!3564229)))

(declare-fun res!2448344 () Bool)

(assert (=> b!5806037 (=> res!2448344 e!3564229)))

(declare-fun lt!2298832 () (InoxSet Context!10406))

(assert (=> b!5806037 (= res!2448344 (not (= lt!2298851 (derivationStepZipper!1888 lt!2298832 (h!70082 s!2326)))))))

(assert (=> b!5806037 (= (flatMap!1426 lt!2298832 lambda!316850) (derivationStepZipperUp!1083 lt!2298850 (h!70082 s!2326)))))

(declare-fun lt!2298848 () Unit!156898)

(assert (=> b!5806037 (= lt!2298848 (lemmaFlatMapOnSingletonSet!958 lt!2298832 lt!2298850 lambda!316850))))

(declare-fun lt!2298833 () (InoxSet Context!10406))

(declare-fun lt!2298854 () Context!10406)

(assert (=> b!5806037 (= (flatMap!1426 lt!2298833 lambda!316850) (derivationStepZipperUp!1083 lt!2298854 (h!70082 s!2326)))))

(declare-fun lt!2298834 () Unit!156898)

(assert (=> b!5806037 (= lt!2298834 (lemmaFlatMapOnSingletonSet!958 lt!2298833 lt!2298854 lambda!316850))))

(declare-fun lt!2298840 () (InoxSet Context!10406))

(assert (=> b!5806037 (= lt!2298840 (derivationStepZipperUp!1083 lt!2298850 (h!70082 s!2326)))))

(declare-fun lt!2298828 () (InoxSet Context!10406))

(assert (=> b!5806037 (= lt!2298828 (derivationStepZipperUp!1083 lt!2298854 (h!70082 s!2326)))))

(assert (=> b!5806037 (= lt!2298832 (store ((as const (Array Context!10406 Bool)) false) lt!2298850 true))))

(assert (=> b!5806037 (= lt!2298833 (store ((as const (Array Context!10406 Bool)) false) lt!2298854 true))))

(assert (=> b!5806037 (= lt!2298854 (Context!10407 (Cons!63632 (reg!16148 r!7292) Nil!63632)))))

(declare-fun setElem!39074 () Context!10406)

(declare-fun e!3564215 () Bool)

(declare-fun setRes!39074 () Bool)

(declare-fun setNonEmpty!39074 () Bool)

(declare-fun tp!1602791 () Bool)

(assert (=> setNonEmpty!39074 (= setRes!39074 (and tp!1602791 (inv!82794 setElem!39074) e!3564215))))

(declare-fun setRest!39074 () (InoxSet Context!10406))

(assert (=> setNonEmpty!39074 (= z!1189 ((_ map or) (store ((as const (Array Context!10406 Bool)) false) setElem!39074 true) setRest!39074))))

(declare-fun b!5806038 () Bool)

(declare-fun e!3564222 () Bool)

(declare-fun lt!2298847 () Bool)

(assert (=> b!5806038 (= e!3564222 lt!2298847)))

(declare-fun b!5806039 () Bool)

(declare-fun tp!1602790 () Bool)

(assert (=> b!5806039 (= e!3564215 tp!1602790)))

(declare-fun b!5806040 () Bool)

(declare-datatypes ((tuple2!65832 0))(
  ( (tuple2!65833 (_1!36219 List!63758) (_2!36219 List!63758)) )
))
(declare-fun lt!2298855 () tuple2!65832)

(declare-fun ++!14031 (List!63758 List!63758) List!63758)

(assert (=> b!5806040 (= e!3564224 (= s!2326 (++!14031 (_1!36219 lt!2298855) (_2!36219 lt!2298855))))))

(declare-datatypes ((Option!15828 0))(
  ( (None!15827) (Some!15827 (v!51891 tuple2!65832)) )
))
(declare-fun lt!2298844 () Option!15828)

(declare-fun get!21966 (Option!15828) tuple2!65832)

(assert (=> b!5806040 (= lt!2298855 (get!21966 lt!2298844))))

(assert (=> b!5806041 (= e!3564216 e!3564228)))

(declare-fun res!2448340 () Bool)

(assert (=> b!5806041 (=> res!2448340 e!3564228)))

(assert (=> b!5806041 (= res!2448340 (not (= lt!2298849 e!3564222)))))

(declare-fun res!2448337 () Bool)

(assert (=> b!5806041 (=> res!2448337 e!3564222)))

(declare-fun isEmpty!35544 (List!63758) Bool)

(assert (=> b!5806041 (= res!2448337 (isEmpty!35544 s!2326))))

(assert (=> b!5806041 (= (Exists!2919 lambda!316847) (Exists!2919 lambda!316849))))

(declare-fun lt!2298836 () Unit!156898)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1548 (Regex!15819 Regex!15819 List!63758) Unit!156898)

(assert (=> b!5806041 (= lt!2298836 (lemmaExistCutMatchRandMatchRSpecEquivalent!1548 (reg!16148 r!7292) r!7292 s!2326))))

(assert (=> b!5806041 (= (Exists!2919 lambda!316847) (Exists!2919 lambda!316848))))

(declare-fun lt!2298835 () Unit!156898)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!600 (Regex!15819 List!63758) Unit!156898)

(assert (=> b!5806041 (= lt!2298835 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!600 (reg!16148 r!7292) s!2326))))

(assert (=> b!5806041 (= lt!2298847 (Exists!2919 lambda!316847))))

(declare-fun isDefined!12531 (Option!15828) Bool)

(assert (=> b!5806041 (= lt!2298847 (isDefined!12531 lt!2298844))))

(declare-fun findConcatSeparation!2242 (Regex!15819 Regex!15819 List!63758 List!63758 List!63758) Option!15828)

(assert (=> b!5806041 (= lt!2298844 (findConcatSeparation!2242 (reg!16148 r!7292) r!7292 Nil!63634 s!2326 s!2326))))

(declare-fun lt!2298842 () Unit!156898)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2006 (Regex!15819 Regex!15819 List!63758) Unit!156898)

(assert (=> b!5806041 (= lt!2298842 (lemmaFindConcatSeparationEquivalentToExists!2006 (reg!16148 r!7292) r!7292 s!2326))))

(declare-fun b!5806042 () Bool)

(declare-fun res!2448333 () Bool)

(assert (=> b!5806042 (=> res!2448333 e!3564216)))

(assert (=> b!5806042 (= res!2448333 (not ((_ is Cons!63632) (exprs!5703 (h!70081 zl!343)))))))

(declare-fun setIsEmpty!39074 () Bool)

(assert (=> setIsEmpty!39074 setRes!39074))

(declare-fun b!5806043 () Bool)

(assert (=> b!5806043 (= e!3564225 (= lt!2298847 (Exists!2919 lambda!316847)))))

(declare-fun b!5806044 () Bool)

(declare-fun res!2448332 () Bool)

(assert (=> b!5806044 (=> res!2448332 e!3564218)))

(declare-fun lt!2298831 () Regex!15819)

(assert (=> b!5806044 (= res!2448332 (or (not (= lt!2298831 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun res!2448343 () Bool)

(declare-fun e!3564220 () Bool)

(assert (=> start!594936 (=> (not res!2448343) (not e!3564220))))

(declare-fun validRegex!7555 (Regex!15819) Bool)

(assert (=> start!594936 (= res!2448343 (validRegex!7555 r!7292))))

(assert (=> start!594936 e!3564220))

(assert (=> start!594936 e!3564230))

(declare-fun condSetEmpty!39074 () Bool)

(assert (=> start!594936 (= condSetEmpty!39074 (= z!1189 ((as const (Array Context!10406 Bool)) false)))))

(assert (=> start!594936 setRes!39074))

(assert (=> start!594936 e!3564233))

(declare-fun e!3564221 () Bool)

(assert (=> start!594936 e!3564221))

(declare-fun b!5806026 () Bool)

(declare-fun tp!1602794 () Bool)

(assert (=> b!5806026 (= e!3564230 tp!1602794)))

(declare-fun b!5806045 () Bool)

(declare-fun res!2448338 () Bool)

(assert (=> b!5806045 (=> (not res!2448338) (not e!3564220))))

(declare-fun toList!9603 ((InoxSet Context!10406)) List!63757)

(assert (=> b!5806045 (= res!2448338 (= (toList!9603 z!1189) zl!343))))

(declare-fun b!5806046 () Bool)

(declare-fun tp!1602793 () Bool)

(declare-fun tp!1602787 () Bool)

(assert (=> b!5806046 (= e!3564230 (and tp!1602793 tp!1602787))))

(declare-fun b!5806047 () Bool)

(declare-fun tp!1602796 () Bool)

(assert (=> b!5806047 (= e!3564221 (and tp_is_empty!40891 tp!1602796))))

(declare-fun b!5806048 () Bool)

(declare-fun res!2448327 () Bool)

(assert (=> b!5806048 (=> res!2448327 e!3564228)))

(assert (=> b!5806048 (= res!2448327 ((_ is Nil!63634) s!2326))))

(declare-fun b!5806049 () Bool)

(assert (=> b!5806049 (= e!3564226 e!3564218)))

(declare-fun res!2448331 () Bool)

(assert (=> b!5806049 (=> res!2448331 e!3564218)))

(assert (=> b!5806049 (= res!2448331 (not (= lt!2298851 (derivationStepZipperDown!1157 (reg!16148 r!7292) lt!2298850 (h!70082 s!2326)))))))

(declare-fun lt!2298852 () List!63756)

(assert (=> b!5806049 (= lt!2298850 (Context!10407 lt!2298852))))

(declare-fun lt!2298829 () (InoxSet Context!10406))

(assert (=> b!5806049 (= (flatMap!1426 lt!2298829 lambda!316850) (derivationStepZipperUp!1083 lt!2298843 (h!70082 s!2326)))))

(declare-fun lt!2298856 () Unit!156898)

(assert (=> b!5806049 (= lt!2298856 (lemmaFlatMapOnSingletonSet!958 lt!2298829 lt!2298843 lambda!316850))))

(declare-fun lt!2298838 () (InoxSet Context!10406))

(assert (=> b!5806049 (= lt!2298838 (derivationStepZipperUp!1083 lt!2298843 (h!70082 s!2326)))))

(assert (=> b!5806049 (= lt!2298829 (store ((as const (Array Context!10406 Bool)) false) lt!2298843 true))))

(assert (=> b!5806049 (= lt!2298843 (Context!10407 (Cons!63632 (reg!16148 r!7292) lt!2298852)))))

(assert (=> b!5806049 (= lt!2298852 (Cons!63632 r!7292 Nil!63632))))

(declare-fun b!5806050 () Bool)

(declare-fun res!2448328 () Bool)

(assert (=> b!5806050 (=> res!2448328 e!3564229)))

(assert (=> b!5806050 (= res!2448328 (not (= (unfocusZipper!1561 (Cons!63633 lt!2298854 Nil!63633)) (reg!16148 r!7292))))))

(declare-fun b!5806051 () Bool)

(declare-fun res!2448322 () Bool)

(assert (=> b!5806051 (=> res!2448322 e!3564216)))

(declare-fun generalisedUnion!1682 (List!63756) Regex!15819)

(declare-fun unfocusZipperList!1247 (List!63757) List!63756)

(assert (=> b!5806051 (= res!2448322 (not (= r!7292 (generalisedUnion!1682 (unfocusZipperList!1247 zl!343)))))))

(declare-fun b!5806052 () Bool)

(assert (=> b!5806052 (= e!3564220 e!3564231)))

(declare-fun res!2448334 () Bool)

(assert (=> b!5806052 (=> (not res!2448334) (not e!3564231))))

(assert (=> b!5806052 (= res!2448334 (= r!7292 lt!2298831))))

(assert (=> b!5806052 (= lt!2298831 (unfocusZipper!1561 zl!343))))

(declare-fun b!5806053 () Bool)

(declare-fun res!2448320 () Bool)

(assert (=> b!5806053 (=> res!2448320 e!3564218)))

(declare-fun matchZipper!1947 ((InoxSet Context!10406) List!63758) Bool)

(assert (=> b!5806053 (= res!2448320 (not (= (matchZipper!1947 lt!2298829 s!2326) (matchZipper!1947 (derivationStepZipper!1888 lt!2298829 (h!70082 s!2326)) (t!377111 s!2326)))))))

(declare-fun b!5806054 () Bool)

(declare-fun tp!1602788 () Bool)

(declare-fun tp!1602789 () Bool)

(assert (=> b!5806054 (= e!3564230 (and tp!1602788 tp!1602789))))

(assert (= (and start!594936 res!2448343) b!5806045))

(assert (= (and b!5806045 res!2448338) b!5806052))

(assert (= (and b!5806052 res!2448334) b!5806022))

(assert (= (and b!5806022 (not res!2448323)) b!5806028))

(assert (= (and b!5806028 (not res!2448324)) b!5806031))

(assert (= (and b!5806031 (not res!2448321)) b!5806042))

(assert (= (and b!5806042 (not res!2448333)) b!5806051))

(assert (= (and b!5806051 (not res!2448322)) b!5806023))

(assert (= (and b!5806023 (not res!2448336)) b!5806041))

(assert (= (and b!5806041 (not res!2448337)) b!5806038))

(assert (= (and b!5806041 (not res!2448340)) b!5806048))

(assert (= (and b!5806048 (not res!2448327)) b!5806025))

(assert (= (and b!5806025 (not res!2448330)) b!5806027))

(assert (= (and b!5806027 (not res!2448326)) b!5806049))

(assert (= (and b!5806049 (not res!2448331)) b!5806053))

(assert (= (and b!5806053 (not res!2448320)) b!5806044))

(assert (= (and b!5806044 (not res!2448332)) b!5806029))

(assert (= (and b!5806029 (not res!2448329)) b!5806037))

(assert (= (and b!5806037 (not res!2448344)) b!5806050))

(assert (= (and b!5806050 (not res!2448328)) b!5806035))

(assert (= (and b!5806035 (not res!2448339)) b!5806033))

(assert (= (and b!5806033 res!2448325) b!5806034))

(assert (= (and b!5806034 (not res!2448335)) b!5806030))

(assert (= (and b!5806030 res!2448342) b!5806043))

(assert (= (and b!5806033 (not res!2448341)) b!5806040))

(assert (= (and start!594936 ((_ is ElementMatch!15819) r!7292)) b!5806036))

(assert (= (and start!594936 ((_ is Concat!24664) r!7292)) b!5806046))

(assert (= (and start!594936 ((_ is Star!15819) r!7292)) b!5806026))

(assert (= (and start!594936 ((_ is Union!15819) r!7292)) b!5806054))

(assert (= (and start!594936 condSetEmpty!39074) setIsEmpty!39074))

(assert (= (and start!594936 (not condSetEmpty!39074)) setNonEmpty!39074))

(assert (= setNonEmpty!39074 b!5806039))

(assert (= b!5806032 b!5806024))

(assert (= (and start!594936 ((_ is Cons!63633) zl!343)) b!5806032))

(assert (= (and start!594936 ((_ is Cons!63634) s!2326)) b!5806047))

(declare-fun m!6745508 () Bool)

(assert (=> b!5806040 m!6745508))

(declare-fun m!6745510 () Bool)

(assert (=> b!5806040 m!6745510))

(declare-fun m!6745512 () Bool)

(assert (=> b!5806022 m!6745512))

(declare-fun m!6745514 () Bool)

(assert (=> b!5806022 m!6745514))

(declare-fun m!6745516 () Bool)

(assert (=> b!5806022 m!6745516))

(declare-fun m!6745518 () Bool)

(assert (=> start!594936 m!6745518))

(declare-fun m!6745520 () Bool)

(assert (=> b!5806051 m!6745520))

(assert (=> b!5806051 m!6745520))

(declare-fun m!6745522 () Bool)

(assert (=> b!5806051 m!6745522))

(declare-fun m!6745524 () Bool)

(assert (=> b!5806052 m!6745524))

(declare-fun m!6745526 () Bool)

(assert (=> b!5806027 m!6745526))

(declare-fun m!6745528 () Bool)

(assert (=> b!5806027 m!6745528))

(declare-fun m!6745530 () Bool)

(assert (=> b!5806027 m!6745530))

(declare-fun m!6745532 () Bool)

(assert (=> b!5806030 m!6745532))

(declare-fun m!6745534 () Bool)

(assert (=> b!5806030 m!6745534))

(declare-fun m!6745536 () Bool)

(assert (=> b!5806029 m!6745536))

(declare-fun m!6745538 () Bool)

(assert (=> b!5806045 m!6745538))

(declare-fun m!6745540 () Bool)

(assert (=> b!5806049 m!6745540))

(declare-fun m!6745542 () Bool)

(assert (=> b!5806049 m!6745542))

(declare-fun m!6745544 () Bool)

(assert (=> b!5806049 m!6745544))

(declare-fun m!6745546 () Bool)

(assert (=> b!5806049 m!6745546))

(declare-fun m!6745548 () Bool)

(assert (=> b!5806049 m!6745548))

(declare-fun m!6745550 () Bool)

(assert (=> b!5806050 m!6745550))

(declare-fun m!6745552 () Bool)

(assert (=> b!5806035 m!6745552))

(declare-fun m!6745554 () Bool)

(assert (=> b!5806025 m!6745554))

(declare-fun m!6745556 () Bool)

(assert (=> b!5806025 m!6745556))

(declare-fun m!6745558 () Bool)

(assert (=> b!5806025 m!6745558))

(declare-fun m!6745560 () Bool)

(assert (=> b!5806037 m!6745560))

(declare-fun m!6745562 () Bool)

(assert (=> b!5806037 m!6745562))

(declare-fun m!6745564 () Bool)

(assert (=> b!5806037 m!6745564))

(declare-fun m!6745566 () Bool)

(assert (=> b!5806037 m!6745566))

(declare-fun m!6745568 () Bool)

(assert (=> b!5806037 m!6745568))

(declare-fun m!6745570 () Bool)

(assert (=> b!5806037 m!6745570))

(declare-fun m!6745572 () Bool)

(assert (=> b!5806037 m!6745572))

(declare-fun m!6745574 () Bool)

(assert (=> b!5806037 m!6745574))

(declare-fun m!6745576 () Bool)

(assert (=> b!5806037 m!6745576))

(declare-fun m!6745578 () Bool)

(assert (=> b!5806033 m!6745578))

(declare-fun m!6745580 () Bool)

(assert (=> b!5806033 m!6745580))

(declare-fun m!6745582 () Bool)

(assert (=> b!5806033 m!6745582))

(declare-fun m!6745584 () Bool)

(assert (=> b!5806031 m!6745584))

(declare-fun m!6745586 () Bool)

(assert (=> setNonEmpty!39074 m!6745586))

(declare-fun m!6745588 () Bool)

(assert (=> b!5806041 m!6745588))

(declare-fun m!6745590 () Bool)

(assert (=> b!5806041 m!6745590))

(declare-fun m!6745592 () Bool)

(assert (=> b!5806041 m!6745592))

(assert (=> b!5806041 m!6745532))

(assert (=> b!5806041 m!6745534))

(declare-fun m!6745594 () Bool)

(assert (=> b!5806041 m!6745594))

(declare-fun m!6745596 () Bool)

(assert (=> b!5806041 m!6745596))

(declare-fun m!6745598 () Bool)

(assert (=> b!5806041 m!6745598))

(declare-fun m!6745600 () Bool)

(assert (=> b!5806041 m!6745600))

(assert (=> b!5806041 m!6745532))

(assert (=> b!5806041 m!6745532))

(declare-fun m!6745602 () Bool)

(assert (=> b!5806053 m!6745602))

(declare-fun m!6745604 () Bool)

(assert (=> b!5806053 m!6745604))

(assert (=> b!5806053 m!6745604))

(declare-fun m!6745606 () Bool)

(assert (=> b!5806053 m!6745606))

(assert (=> b!5806043 m!6745532))

(declare-fun m!6745608 () Bool)

(assert (=> b!5806032 m!6745608))

(declare-fun m!6745610 () Bool)

(assert (=> b!5806028 m!6745610))

(check-sat (not b!5806030) (not b!5806045) (not b!5806027) (not b!5806041) (not b!5806037) (not b!5806047) (not b!5806039) (not b!5806053) (not b!5806052) (not b!5806024) (not b!5806025) (not b!5806022) (not b!5806028) (not b!5806032) (not b!5806049) tp_is_empty!40891 (not start!594936) (not b!5806040) (not b!5806035) (not b!5806033) (not b!5806054) (not b!5806043) (not setNonEmpty!39074) (not b!5806026) (not b!5806046) (not b!5806029) (not b!5806031) (not b!5806051) (not b!5806050))
(check-sat)
(get-model)

(declare-fun d!1828797 () Bool)

(assert (=> d!1828797 (= (isEmpty!35543 (t!377110 zl!343)) ((_ is Nil!63633) (t!377110 zl!343)))))

(assert (=> b!5806028 d!1828797))

(declare-fun d!1828799 () Bool)

(declare-fun lt!2298859 () Regex!15819)

(assert (=> d!1828799 (validRegex!7555 lt!2298859)))

(assert (=> d!1828799 (= lt!2298859 (generalisedUnion!1682 (unfocusZipperList!1247 (Cons!63633 lt!2298843 Nil!63633))))))

(assert (=> d!1828799 (= (unfocusZipper!1561 (Cons!63633 lt!2298843 Nil!63633)) lt!2298859)))

(declare-fun bs!1370926 () Bool)

(assert (= bs!1370926 d!1828799))

(declare-fun m!6745612 () Bool)

(assert (=> bs!1370926 m!6745612))

(declare-fun m!6745614 () Bool)

(assert (=> bs!1370926 m!6745614))

(assert (=> bs!1370926 m!6745614))

(declare-fun m!6745616 () Bool)

(assert (=> bs!1370926 m!6745616))

(assert (=> b!5806029 d!1828799))

(declare-fun bm!453262 () Bool)

(declare-fun call!453271 () List!63756)

(declare-fun call!453268 () List!63756)

(assert (=> bm!453262 (= call!453271 call!453268)))

(declare-fun b!5806117 () Bool)

(declare-fun c!1028594 () Bool)

(assert (=> b!5806117 (= c!1028594 ((_ is Star!15819) (reg!16148 r!7292)))))

(declare-fun e!3564271 () (InoxSet Context!10406))

(declare-fun e!3564268 () (InoxSet Context!10406))

(assert (=> b!5806117 (= e!3564271 e!3564268)))

(declare-fun bm!453263 () Bool)

(declare-fun c!1028596 () Bool)

(declare-fun c!1028592 () Bool)

(declare-fun call!453267 () (InoxSet Context!10406))

(declare-fun c!1028595 () Bool)

(assert (=> bm!453263 (= call!453267 (derivationStepZipperDown!1157 (ite c!1028595 (regOne!32151 (reg!16148 r!7292)) (ite c!1028596 (regTwo!32150 (reg!16148 r!7292)) (ite c!1028592 (regOne!32150 (reg!16148 r!7292)) (reg!16148 (reg!16148 r!7292))))) (ite (or c!1028595 c!1028596) lt!2298850 (Context!10407 call!453271)) (h!70082 s!2326)))))

(declare-fun bm!453264 () Bool)

(declare-fun $colon$colon!1800 (List!63756 Regex!15819) List!63756)

(assert (=> bm!453264 (= call!453268 ($colon$colon!1800 (exprs!5703 lt!2298850) (ite (or c!1028596 c!1028592) (regTwo!32150 (reg!16148 r!7292)) (reg!16148 r!7292))))))

(declare-fun b!5806118 () Bool)

(assert (=> b!5806118 (= e!3564268 ((as const (Array Context!10406 Bool)) false))))

(declare-fun b!5806119 () Bool)

(declare-fun e!3564266 () (InoxSet Context!10406))

(declare-fun call!453272 () (InoxSet Context!10406))

(assert (=> b!5806119 (= e!3564266 ((_ map or) call!453267 call!453272))))

(declare-fun b!5806120 () Bool)

(declare-fun call!453269 () (InoxSet Context!10406))

(assert (=> b!5806120 (= e!3564271 call!453269)))

(declare-fun b!5806121 () Bool)

(declare-fun e!3564269 () Bool)

(assert (=> b!5806121 (= c!1028596 e!3564269)))

(declare-fun res!2448353 () Bool)

(assert (=> b!5806121 (=> (not res!2448353) (not e!3564269))))

(assert (=> b!5806121 (= res!2448353 ((_ is Concat!24664) (reg!16148 r!7292)))))

(declare-fun e!3564270 () (InoxSet Context!10406))

(assert (=> b!5806121 (= e!3564266 e!3564270)))

(declare-fun b!5806122 () Bool)

(declare-fun e!3564267 () (InoxSet Context!10406))

(assert (=> b!5806122 (= e!3564267 (store ((as const (Array Context!10406 Bool)) false) lt!2298850 true))))

(declare-fun b!5806123 () Bool)

(declare-fun nullable!5845 (Regex!15819) Bool)

(assert (=> b!5806123 (= e!3564269 (nullable!5845 (regOne!32150 (reg!16148 r!7292))))))

(declare-fun b!5806124 () Bool)

(declare-fun call!453270 () (InoxSet Context!10406))

(assert (=> b!5806124 (= e!3564270 ((_ map or) call!453272 call!453270))))

(declare-fun b!5806125 () Bool)

(assert (=> b!5806125 (= e!3564268 call!453269)))

(declare-fun bm!453266 () Bool)

(assert (=> bm!453266 (= call!453269 call!453270)))

(declare-fun bm!453267 () Bool)

(assert (=> bm!453267 (= call!453272 (derivationStepZipperDown!1157 (ite c!1028595 (regTwo!32151 (reg!16148 r!7292)) (regOne!32150 (reg!16148 r!7292))) (ite c!1028595 lt!2298850 (Context!10407 call!453268)) (h!70082 s!2326)))))

(declare-fun b!5806126 () Bool)

(assert (=> b!5806126 (= e!3564267 e!3564266)))

(assert (=> b!5806126 (= c!1028595 ((_ is Union!15819) (reg!16148 r!7292)))))

(declare-fun b!5806127 () Bool)

(assert (=> b!5806127 (= e!3564270 e!3564271)))

(assert (=> b!5806127 (= c!1028592 ((_ is Concat!24664) (reg!16148 r!7292)))))

(declare-fun bm!453265 () Bool)

(assert (=> bm!453265 (= call!453270 call!453267)))

(declare-fun d!1828801 () Bool)

(declare-fun c!1028593 () Bool)

(assert (=> d!1828801 (= c!1028593 (and ((_ is ElementMatch!15819) (reg!16148 r!7292)) (= (c!1028567 (reg!16148 r!7292)) (h!70082 s!2326))))))

(assert (=> d!1828801 (= (derivationStepZipperDown!1157 (reg!16148 r!7292) lt!2298850 (h!70082 s!2326)) e!3564267)))

(assert (= (and d!1828801 c!1028593) b!5806122))

(assert (= (and d!1828801 (not c!1028593)) b!5806126))

(assert (= (and b!5806126 c!1028595) b!5806119))

(assert (= (and b!5806126 (not c!1028595)) b!5806121))

(assert (= (and b!5806121 res!2448353) b!5806123))

(assert (= (and b!5806121 c!1028596) b!5806124))

(assert (= (and b!5806121 (not c!1028596)) b!5806127))

(assert (= (and b!5806127 c!1028592) b!5806120))

(assert (= (and b!5806127 (not c!1028592)) b!5806117))

(assert (= (and b!5806117 c!1028594) b!5806125))

(assert (= (and b!5806117 (not c!1028594)) b!5806118))

(assert (= (or b!5806120 b!5806125) bm!453262))

(assert (= (or b!5806120 b!5806125) bm!453266))

(assert (= (or b!5806124 bm!453262) bm!453264))

(assert (= (or b!5806124 bm!453266) bm!453265))

(assert (= (or b!5806119 b!5806124) bm!453267))

(assert (= (or b!5806119 bm!453265) bm!453263))

(declare-fun m!6745660 () Bool)

(assert (=> bm!453267 m!6745660))

(declare-fun m!6745662 () Bool)

(assert (=> bm!453264 m!6745662))

(assert (=> b!5806122 m!6745562))

(declare-fun m!6745664 () Bool)

(assert (=> bm!453263 m!6745664))

(declare-fun m!6745666 () Bool)

(assert (=> b!5806123 m!6745666))

(assert (=> b!5806049 d!1828801))

(declare-fun d!1828811 () Bool)

(declare-fun choose!44063 ((InoxSet Context!10406) Int) (InoxSet Context!10406))

(assert (=> d!1828811 (= (flatMap!1426 lt!2298829 lambda!316850) (choose!44063 lt!2298829 lambda!316850))))

(declare-fun bs!1370929 () Bool)

(assert (= bs!1370929 d!1828811))

(declare-fun m!6745670 () Bool)

(assert (=> bs!1370929 m!6745670))

(assert (=> b!5806049 d!1828811))

(declare-fun b!5806169 () Bool)

(declare-fun e!3564295 () Bool)

(assert (=> b!5806169 (= e!3564295 (nullable!5845 (h!70080 (exprs!5703 lt!2298843))))))

(declare-fun b!5806170 () Bool)

(declare-fun e!3564297 () (InoxSet Context!10406))

(assert (=> b!5806170 (= e!3564297 ((as const (Array Context!10406 Bool)) false))))

(declare-fun b!5806171 () Bool)

(declare-fun call!453285 () (InoxSet Context!10406))

(assert (=> b!5806171 (= e!3564297 call!453285)))

(declare-fun bm!453280 () Bool)

(assert (=> bm!453280 (= call!453285 (derivationStepZipperDown!1157 (h!70080 (exprs!5703 lt!2298843)) (Context!10407 (t!377109 (exprs!5703 lt!2298843))) (h!70082 s!2326)))))

(declare-fun d!1828815 () Bool)

(declare-fun c!1028615 () Bool)

(assert (=> d!1828815 (= c!1028615 e!3564295)))

(declare-fun res!2448361 () Bool)

(assert (=> d!1828815 (=> (not res!2448361) (not e!3564295))))

(assert (=> d!1828815 (= res!2448361 ((_ is Cons!63632) (exprs!5703 lt!2298843)))))

(declare-fun e!3564296 () (InoxSet Context!10406))

(assert (=> d!1828815 (= (derivationStepZipperUp!1083 lt!2298843 (h!70082 s!2326)) e!3564296)))

(declare-fun b!5806172 () Bool)

(assert (=> b!5806172 (= e!3564296 e!3564297)))

(declare-fun c!1028616 () Bool)

(assert (=> b!5806172 (= c!1028616 ((_ is Cons!63632) (exprs!5703 lt!2298843)))))

(declare-fun b!5806173 () Bool)

(assert (=> b!5806173 (= e!3564296 ((_ map or) call!453285 (derivationStepZipperUp!1083 (Context!10407 (t!377109 (exprs!5703 lt!2298843))) (h!70082 s!2326))))))

(assert (= (and d!1828815 res!2448361) b!5806169))

(assert (= (and d!1828815 c!1028615) b!5806173))

(assert (= (and d!1828815 (not c!1028615)) b!5806172))

(assert (= (and b!5806172 c!1028616) b!5806171))

(assert (= (and b!5806172 (not c!1028616)) b!5806170))

(assert (= (or b!5806173 b!5806171) bm!453280))

(declare-fun m!6745694 () Bool)

(assert (=> b!5806169 m!6745694))

(declare-fun m!6745696 () Bool)

(assert (=> bm!453280 m!6745696))

(declare-fun m!6745698 () Bool)

(assert (=> b!5806173 m!6745698))

(assert (=> b!5806049 d!1828815))

(declare-fun d!1828827 () Bool)

(declare-fun dynLambda!24914 (Int Context!10406) (InoxSet Context!10406))

(assert (=> d!1828827 (= (flatMap!1426 lt!2298829 lambda!316850) (dynLambda!24914 lambda!316850 lt!2298843))))

(declare-fun lt!2298872 () Unit!156898)

(declare-fun choose!44064 ((InoxSet Context!10406) Context!10406 Int) Unit!156898)

(assert (=> d!1828827 (= lt!2298872 (choose!44064 lt!2298829 lt!2298843 lambda!316850))))

(assert (=> d!1828827 (= lt!2298829 (store ((as const (Array Context!10406 Bool)) false) lt!2298843 true))))

(assert (=> d!1828827 (= (lemmaFlatMapOnSingletonSet!958 lt!2298829 lt!2298843 lambda!316850) lt!2298872)))

(declare-fun b_lambda!218885 () Bool)

(assert (=> (not b_lambda!218885) (not d!1828827)))

(declare-fun bs!1370936 () Bool)

(assert (= bs!1370936 d!1828827))

(assert (=> bs!1370936 m!6745540))

(declare-fun m!6745710 () Bool)

(assert (=> bs!1370936 m!6745710))

(declare-fun m!6745712 () Bool)

(assert (=> bs!1370936 m!6745712))

(assert (=> bs!1370936 m!6745544))

(assert (=> b!5806049 d!1828827))

(declare-fun d!1828833 () Bool)

(declare-fun choose!44065 (Int) Bool)

(assert (=> d!1828833 (= (Exists!2919 lambda!316847) (choose!44065 lambda!316847))))

(declare-fun bs!1370937 () Bool)

(assert (= bs!1370937 d!1828833))

(declare-fun m!6745714 () Bool)

(assert (=> bs!1370937 m!6745714))

(assert (=> b!5806030 d!1828833))

(declare-fun d!1828835 () Bool)

(assert (=> d!1828835 (= (Exists!2919 lambda!316848) (choose!44065 lambda!316848))))

(declare-fun bs!1370938 () Bool)

(assert (= bs!1370938 d!1828835))

(declare-fun m!6745716 () Bool)

(assert (=> bs!1370938 m!6745716))

(assert (=> b!5806030 d!1828835))

(declare-fun b!5806228 () Bool)

(declare-fun e!3564329 () List!63758)

(assert (=> b!5806228 (= e!3564329 (_2!36219 lt!2298855))))

(declare-fun d!1828837 () Bool)

(declare-fun e!3564330 () Bool)

(assert (=> d!1828837 e!3564330))

(declare-fun res!2448375 () Bool)

(assert (=> d!1828837 (=> (not res!2448375) (not e!3564330))))

(declare-fun lt!2298880 () List!63758)

(declare-fun content!11650 (List!63758) (InoxSet C!31908))

(assert (=> d!1828837 (= res!2448375 (= (content!11650 lt!2298880) ((_ map or) (content!11650 (_1!36219 lt!2298855)) (content!11650 (_2!36219 lt!2298855)))))))

(assert (=> d!1828837 (= lt!2298880 e!3564329)))

(declare-fun c!1028638 () Bool)

(assert (=> d!1828837 (= c!1028638 ((_ is Nil!63634) (_1!36219 lt!2298855)))))

(assert (=> d!1828837 (= (++!14031 (_1!36219 lt!2298855) (_2!36219 lt!2298855)) lt!2298880)))

(declare-fun b!5806231 () Bool)

(assert (=> b!5806231 (= e!3564330 (or (not (= (_2!36219 lt!2298855) Nil!63634)) (= lt!2298880 (_1!36219 lt!2298855))))))

(declare-fun b!5806230 () Bool)

(declare-fun res!2448374 () Bool)

(assert (=> b!5806230 (=> (not res!2448374) (not e!3564330))))

(declare-fun size!40103 (List!63758) Int)

(assert (=> b!5806230 (= res!2448374 (= (size!40103 lt!2298880) (+ (size!40103 (_1!36219 lt!2298855)) (size!40103 (_2!36219 lt!2298855)))))))

(declare-fun b!5806229 () Bool)

(assert (=> b!5806229 (= e!3564329 (Cons!63634 (h!70082 (_1!36219 lt!2298855)) (++!14031 (t!377111 (_1!36219 lt!2298855)) (_2!36219 lt!2298855))))))

(assert (= (and d!1828837 c!1028638) b!5806228))

(assert (= (and d!1828837 (not c!1028638)) b!5806229))

(assert (= (and d!1828837 res!2448375) b!5806230))

(assert (= (and b!5806230 res!2448374) b!5806231))

(declare-fun m!6745728 () Bool)

(assert (=> d!1828837 m!6745728))

(declare-fun m!6745730 () Bool)

(assert (=> d!1828837 m!6745730))

(declare-fun m!6745732 () Bool)

(assert (=> d!1828837 m!6745732))

(declare-fun m!6745734 () Bool)

(assert (=> b!5806230 m!6745734))

(declare-fun m!6745736 () Bool)

(assert (=> b!5806230 m!6745736))

(declare-fun m!6745738 () Bool)

(assert (=> b!5806230 m!6745738))

(declare-fun m!6745740 () Bool)

(assert (=> b!5806229 m!6745740))

(assert (=> b!5806040 d!1828837))

(declare-fun d!1828843 () Bool)

(assert (=> d!1828843 (= (get!21966 lt!2298844) (v!51891 lt!2298844))))

(assert (=> b!5806040 d!1828843))

(declare-fun d!1828847 () Bool)

(declare-fun lt!2298882 () Regex!15819)

(assert (=> d!1828847 (validRegex!7555 lt!2298882)))

(assert (=> d!1828847 (= lt!2298882 (generalisedUnion!1682 (unfocusZipperList!1247 (Cons!63633 lt!2298854 Nil!63633))))))

(assert (=> d!1828847 (= (unfocusZipper!1561 (Cons!63633 lt!2298854 Nil!63633)) lt!2298882)))

(declare-fun bs!1370942 () Bool)

(assert (= bs!1370942 d!1828847))

(declare-fun m!6745762 () Bool)

(assert (=> bs!1370942 m!6745762))

(declare-fun m!6745764 () Bool)

(assert (=> bs!1370942 m!6745764))

(assert (=> bs!1370942 m!6745764))

(declare-fun m!6745766 () Bool)

(assert (=> bs!1370942 m!6745766))

(assert (=> b!5806050 d!1828847))

(declare-fun b!5806327 () Bool)

(declare-fun e!3564395 () Regex!15819)

(assert (=> b!5806327 (= e!3564395 (Concat!24664 (h!70080 (exprs!5703 (h!70081 zl!343))) (generalisedConcat!1434 (t!377109 (exprs!5703 (h!70081 zl!343))))))))

(declare-fun b!5806328 () Bool)

(declare-fun e!3564396 () Regex!15819)

(assert (=> b!5806328 (= e!3564396 e!3564395)))

(declare-fun c!1028668 () Bool)

(assert (=> b!5806328 (= c!1028668 ((_ is Cons!63632) (exprs!5703 (h!70081 zl!343))))))

(declare-fun b!5806329 () Bool)

(declare-fun e!3564394 () Bool)

(declare-fun lt!2298888 () Regex!15819)

(declare-fun head!12250 (List!63756) Regex!15819)

(assert (=> b!5806329 (= e!3564394 (= lt!2298888 (head!12250 (exprs!5703 (h!70081 zl!343)))))))

(declare-fun b!5806330 () Bool)

(declare-fun e!3564392 () Bool)

(declare-fun e!3564393 () Bool)

(assert (=> b!5806330 (= e!3564392 e!3564393)))

(declare-fun c!1028670 () Bool)

(declare-fun isEmpty!35546 (List!63756) Bool)

(assert (=> b!5806330 (= c!1028670 (isEmpty!35546 (exprs!5703 (h!70081 zl!343))))))

(declare-fun b!5806331 () Bool)

(declare-fun isEmptyExpr!1293 (Regex!15819) Bool)

(assert (=> b!5806331 (= e!3564393 (isEmptyExpr!1293 lt!2298888))))

(declare-fun b!5806333 () Bool)

(assert (=> b!5806333 (= e!3564393 e!3564394)))

(declare-fun c!1028671 () Bool)

(declare-fun tail!11345 (List!63756) List!63756)

(assert (=> b!5806333 (= c!1028671 (isEmpty!35546 (tail!11345 (exprs!5703 (h!70081 zl!343)))))))

(declare-fun b!5806334 () Bool)

(assert (=> b!5806334 (= e!3564396 (h!70080 (exprs!5703 (h!70081 zl!343))))))

(declare-fun b!5806335 () Bool)

(declare-fun isConcat!816 (Regex!15819) Bool)

(assert (=> b!5806335 (= e!3564394 (isConcat!816 lt!2298888))))

(declare-fun b!5806336 () Bool)

(declare-fun e!3564391 () Bool)

(assert (=> b!5806336 (= e!3564391 (isEmpty!35546 (t!377109 (exprs!5703 (h!70081 zl!343)))))))

(declare-fun b!5806332 () Bool)

(assert (=> b!5806332 (= e!3564395 EmptyExpr!15819)))

(declare-fun d!1828849 () Bool)

(assert (=> d!1828849 e!3564392))

(declare-fun res!2448414 () Bool)

(assert (=> d!1828849 (=> (not res!2448414) (not e!3564392))))

(assert (=> d!1828849 (= res!2448414 (validRegex!7555 lt!2298888))))

(assert (=> d!1828849 (= lt!2298888 e!3564396)))

(declare-fun c!1028669 () Bool)

(assert (=> d!1828849 (= c!1028669 e!3564391)))

(declare-fun res!2448413 () Bool)

(assert (=> d!1828849 (=> (not res!2448413) (not e!3564391))))

(assert (=> d!1828849 (= res!2448413 ((_ is Cons!63632) (exprs!5703 (h!70081 zl!343))))))

(declare-fun lambda!316872 () Int)

(declare-fun forall!14927 (List!63756 Int) Bool)

(assert (=> d!1828849 (forall!14927 (exprs!5703 (h!70081 zl!343)) lambda!316872)))

(assert (=> d!1828849 (= (generalisedConcat!1434 (exprs!5703 (h!70081 zl!343))) lt!2298888)))

(assert (= (and d!1828849 res!2448413) b!5806336))

(assert (= (and d!1828849 c!1028669) b!5806334))

(assert (= (and d!1828849 (not c!1028669)) b!5806328))

(assert (= (and b!5806328 c!1028668) b!5806327))

(assert (= (and b!5806328 (not c!1028668)) b!5806332))

(assert (= (and d!1828849 res!2448414) b!5806330))

(assert (= (and b!5806330 c!1028670) b!5806331))

(assert (= (and b!5806330 (not c!1028670)) b!5806333))

(assert (= (and b!5806333 c!1028671) b!5806329))

(assert (= (and b!5806333 (not c!1028671)) b!5806335))

(declare-fun m!6745778 () Bool)

(assert (=> b!5806330 m!6745778))

(declare-fun m!6745780 () Bool)

(assert (=> b!5806329 m!6745780))

(declare-fun m!6745782 () Bool)

(assert (=> b!5806335 m!6745782))

(declare-fun m!6745784 () Bool)

(assert (=> b!5806333 m!6745784))

(assert (=> b!5806333 m!6745784))

(declare-fun m!6745786 () Bool)

(assert (=> b!5806333 m!6745786))

(declare-fun m!6745788 () Bool)

(assert (=> d!1828849 m!6745788))

(declare-fun m!6745790 () Bool)

(assert (=> d!1828849 m!6745790))

(declare-fun m!6745792 () Bool)

(assert (=> b!5806336 m!6745792))

(declare-fun m!6745794 () Bool)

(assert (=> b!5806327 m!6745794))

(declare-fun m!6745796 () Bool)

(assert (=> b!5806331 m!6745796))

(assert (=> b!5806031 d!1828849))

(declare-fun d!1828855 () Bool)

(assert (=> d!1828855 (= (Exists!2919 lambda!316849) (choose!44065 lambda!316849))))

(declare-fun bs!1370947 () Bool)

(assert (= bs!1370947 d!1828855))

(declare-fun m!6745798 () Bool)

(assert (=> bs!1370947 m!6745798))

(assert (=> b!5806041 d!1828855))

(assert (=> b!5806041 d!1828835))

(declare-fun bs!1370959 () Bool)

(declare-fun d!1828857 () Bool)

(assert (= bs!1370959 (and d!1828857 b!5806041)))

(declare-fun lambda!316881 () Int)

(assert (=> bs!1370959 (= lambda!316881 lambda!316847)))

(assert (=> bs!1370959 (not (= lambda!316881 lambda!316848))))

(assert (=> bs!1370959 (not (= lambda!316881 lambda!316849))))

(assert (=> d!1828857 true))

(assert (=> d!1828857 true))

(assert (=> d!1828857 true))

(declare-fun lambda!316882 () Int)

(assert (=> bs!1370959 (not (= lambda!316882 lambda!316847))))

(assert (=> bs!1370959 (not (= lambda!316882 lambda!316848))))

(assert (=> bs!1370959 (= lambda!316882 lambda!316849)))

(declare-fun bs!1370960 () Bool)

(assert (= bs!1370960 d!1828857))

(assert (=> bs!1370960 (not (= lambda!316882 lambda!316881))))

(assert (=> d!1828857 true))

(assert (=> d!1828857 true))

(assert (=> d!1828857 true))

(assert (=> d!1828857 (= (Exists!2919 lambda!316881) (Exists!2919 lambda!316882))))

(declare-fun lt!2298898 () Unit!156898)

(declare-fun choose!44067 (Regex!15819 Regex!15819 List!63758) Unit!156898)

(assert (=> d!1828857 (= lt!2298898 (choose!44067 (reg!16148 r!7292) r!7292 s!2326))))

(assert (=> d!1828857 (validRegex!7555 (reg!16148 r!7292))))

(assert (=> d!1828857 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1548 (reg!16148 r!7292) r!7292 s!2326) lt!2298898)))

(declare-fun m!6745832 () Bool)

(assert (=> bs!1370960 m!6745832))

(declare-fun m!6745834 () Bool)

(assert (=> bs!1370960 m!6745834))

(declare-fun m!6745836 () Bool)

(assert (=> bs!1370960 m!6745836))

(declare-fun m!6745838 () Bool)

(assert (=> bs!1370960 m!6745838))

(assert (=> b!5806041 d!1828857))

(declare-fun d!1828871 () Bool)

(assert (=> d!1828871 (= (isEmpty!35544 s!2326) ((_ is Nil!63634) s!2326))))

(assert (=> b!5806041 d!1828871))

(declare-fun d!1828873 () Bool)

(declare-fun isEmpty!35547 (Option!15828) Bool)

(assert (=> d!1828873 (= (isDefined!12531 lt!2298844) (not (isEmpty!35547 lt!2298844)))))

(declare-fun bs!1370961 () Bool)

(assert (= bs!1370961 d!1828873))

(declare-fun m!6745854 () Bool)

(assert (=> bs!1370961 m!6745854))

(assert (=> b!5806041 d!1828873))

(assert (=> b!5806041 d!1828833))

(declare-fun bs!1370974 () Bool)

(declare-fun d!1828879 () Bool)

(assert (= bs!1370974 (and d!1828879 b!5806041)))

(declare-fun lambda!316894 () Int)

(assert (=> bs!1370974 (= (= (Star!15819 (reg!16148 r!7292)) r!7292) (= lambda!316894 lambda!316847))))

(assert (=> bs!1370974 (not (= lambda!316894 lambda!316849))))

(assert (=> bs!1370974 (not (= lambda!316894 lambda!316848))))

(declare-fun bs!1370975 () Bool)

(assert (= bs!1370975 (and d!1828879 d!1828857)))

(assert (=> bs!1370975 (not (= lambda!316894 lambda!316882))))

(assert (=> bs!1370975 (= (= (Star!15819 (reg!16148 r!7292)) r!7292) (= lambda!316894 lambda!316881))))

(assert (=> d!1828879 true))

(assert (=> d!1828879 true))

(declare-fun lambda!316895 () Int)

(assert (=> bs!1370974 (not (= lambda!316895 lambda!316847))))

(assert (=> bs!1370974 (not (= lambda!316895 lambda!316849))))

(assert (=> bs!1370974 (= (= (Star!15819 (reg!16148 r!7292)) r!7292) (= lambda!316895 lambda!316848))))

(assert (=> bs!1370975 (not (= lambda!316895 lambda!316882))))

(assert (=> bs!1370975 (not (= lambda!316895 lambda!316881))))

(declare-fun bs!1370976 () Bool)

(assert (= bs!1370976 d!1828879))

(assert (=> bs!1370976 (not (= lambda!316895 lambda!316894))))

(assert (=> d!1828879 true))

(assert (=> d!1828879 true))

(assert (=> d!1828879 (= (Exists!2919 lambda!316894) (Exists!2919 lambda!316895))))

(declare-fun lt!2298909 () Unit!156898)

(declare-fun choose!44068 (Regex!15819 List!63758) Unit!156898)

(assert (=> d!1828879 (= lt!2298909 (choose!44068 (reg!16148 r!7292) s!2326))))

(assert (=> d!1828879 (validRegex!7555 (reg!16148 r!7292))))

(assert (=> d!1828879 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!600 (reg!16148 r!7292) s!2326) lt!2298909)))

(declare-fun m!6745888 () Bool)

(assert (=> bs!1370976 m!6745888))

(declare-fun m!6745890 () Bool)

(assert (=> bs!1370976 m!6745890))

(declare-fun m!6745892 () Bool)

(assert (=> bs!1370976 m!6745892))

(assert (=> bs!1370976 m!6745838))

(assert (=> b!5806041 d!1828879))

(declare-fun b!5806524 () Bool)

(declare-fun e!3564498 () Bool)

(declare-fun lt!2298929 () Option!15828)

(assert (=> b!5806524 (= e!3564498 (not (isDefined!12531 lt!2298929)))))

(declare-fun b!5806525 () Bool)

(declare-fun res!2448522 () Bool)

(declare-fun e!3564499 () Bool)

(assert (=> b!5806525 (=> (not res!2448522) (not e!3564499))))

(assert (=> b!5806525 (= res!2448522 (matchR!8004 r!7292 (_2!36219 (get!21966 lt!2298929))))))

(declare-fun b!5806526 () Bool)

(declare-fun e!3564495 () Option!15828)

(declare-fun e!3564496 () Option!15828)

(assert (=> b!5806526 (= e!3564495 e!3564496)))

(declare-fun c!1028712 () Bool)

(assert (=> b!5806526 (= c!1028712 ((_ is Nil!63634) s!2326))))

(declare-fun b!5806527 () Bool)

(assert (=> b!5806527 (= e!3564496 None!15827)))

(declare-fun b!5806528 () Bool)

(declare-fun e!3564497 () Bool)

(assert (=> b!5806528 (= e!3564497 (matchR!8004 r!7292 s!2326))))

(declare-fun b!5806529 () Bool)

(declare-fun lt!2298928 () Unit!156898)

(declare-fun lt!2298930 () Unit!156898)

(assert (=> b!5806529 (= lt!2298928 lt!2298930)))

(assert (=> b!5806529 (= (++!14031 (++!14031 Nil!63634 (Cons!63634 (h!70082 s!2326) Nil!63634)) (t!377111 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2137 (List!63758 C!31908 List!63758 List!63758) Unit!156898)

(assert (=> b!5806529 (= lt!2298930 (lemmaMoveElementToOtherListKeepsConcatEq!2137 Nil!63634 (h!70082 s!2326) (t!377111 s!2326) s!2326))))

(assert (=> b!5806529 (= e!3564496 (findConcatSeparation!2242 (reg!16148 r!7292) r!7292 (++!14031 Nil!63634 (Cons!63634 (h!70082 s!2326) Nil!63634)) (t!377111 s!2326) s!2326))))

(declare-fun b!5806530 () Bool)

(declare-fun res!2448526 () Bool)

(assert (=> b!5806530 (=> (not res!2448526) (not e!3564499))))

(assert (=> b!5806530 (= res!2448526 (matchR!8004 (reg!16148 r!7292) (_1!36219 (get!21966 lt!2298929))))))

(declare-fun b!5806532 () Bool)

(assert (=> b!5806532 (= e!3564495 (Some!15827 (tuple2!65833 Nil!63634 s!2326)))))

(declare-fun b!5806531 () Bool)

(assert (=> b!5806531 (= e!3564499 (= (++!14031 (_1!36219 (get!21966 lt!2298929)) (_2!36219 (get!21966 lt!2298929))) s!2326))))

(declare-fun d!1828897 () Bool)

(assert (=> d!1828897 e!3564498))

(declare-fun res!2448523 () Bool)

(assert (=> d!1828897 (=> res!2448523 e!3564498)))

(assert (=> d!1828897 (= res!2448523 e!3564499)))

(declare-fun res!2448524 () Bool)

(assert (=> d!1828897 (=> (not res!2448524) (not e!3564499))))

(assert (=> d!1828897 (= res!2448524 (isDefined!12531 lt!2298929))))

(assert (=> d!1828897 (= lt!2298929 e!3564495)))

(declare-fun c!1028713 () Bool)

(assert (=> d!1828897 (= c!1028713 e!3564497)))

(declare-fun res!2448525 () Bool)

(assert (=> d!1828897 (=> (not res!2448525) (not e!3564497))))

(assert (=> d!1828897 (= res!2448525 (matchR!8004 (reg!16148 r!7292) Nil!63634))))

(assert (=> d!1828897 (validRegex!7555 (reg!16148 r!7292))))

(assert (=> d!1828897 (= (findConcatSeparation!2242 (reg!16148 r!7292) r!7292 Nil!63634 s!2326 s!2326) lt!2298929)))

(assert (= (and d!1828897 res!2448525) b!5806528))

(assert (= (and d!1828897 c!1028713) b!5806532))

(assert (= (and d!1828897 (not c!1028713)) b!5806526))

(assert (= (and b!5806526 c!1028712) b!5806527))

(assert (= (and b!5806526 (not c!1028712)) b!5806529))

(assert (= (and d!1828897 res!2448524) b!5806530))

(assert (= (and b!5806530 res!2448526) b!5806525))

(assert (= (and b!5806525 res!2448522) b!5806531))

(assert (= (and d!1828897 (not res!2448523)) b!5806524))

(declare-fun m!6745922 () Bool)

(assert (=> b!5806531 m!6745922))

(declare-fun m!6745924 () Bool)

(assert (=> b!5806531 m!6745924))

(assert (=> b!5806530 m!6745922))

(declare-fun m!6745926 () Bool)

(assert (=> b!5806530 m!6745926))

(assert (=> b!5806528 m!6745514))

(declare-fun m!6745928 () Bool)

(assert (=> d!1828897 m!6745928))

(declare-fun m!6745930 () Bool)

(assert (=> d!1828897 m!6745930))

(assert (=> d!1828897 m!6745838))

(declare-fun m!6745932 () Bool)

(assert (=> b!5806529 m!6745932))

(assert (=> b!5806529 m!6745932))

(declare-fun m!6745934 () Bool)

(assert (=> b!5806529 m!6745934))

(declare-fun m!6745936 () Bool)

(assert (=> b!5806529 m!6745936))

(assert (=> b!5806529 m!6745932))

(declare-fun m!6745938 () Bool)

(assert (=> b!5806529 m!6745938))

(assert (=> b!5806524 m!6745928))

(assert (=> b!5806525 m!6745922))

(declare-fun m!6745940 () Bool)

(assert (=> b!5806525 m!6745940))

(assert (=> b!5806041 d!1828897))

(declare-fun bs!1370993 () Bool)

(declare-fun d!1828905 () Bool)

(assert (= bs!1370993 (and d!1828905 b!5806041)))

(declare-fun lambda!316907 () Int)

(assert (=> bs!1370993 (= lambda!316907 lambda!316847)))

(assert (=> bs!1370993 (not (= lambda!316907 lambda!316849))))

(declare-fun bs!1370994 () Bool)

(assert (= bs!1370994 (and d!1828905 d!1828879)))

(assert (=> bs!1370994 (not (= lambda!316907 lambda!316895))))

(assert (=> bs!1370993 (not (= lambda!316907 lambda!316848))))

(declare-fun bs!1370995 () Bool)

(assert (= bs!1370995 (and d!1828905 d!1828857)))

(assert (=> bs!1370995 (not (= lambda!316907 lambda!316882))))

(assert (=> bs!1370995 (= lambda!316907 lambda!316881)))

(assert (=> bs!1370994 (= (= r!7292 (Star!15819 (reg!16148 r!7292))) (= lambda!316907 lambda!316894))))

(assert (=> d!1828905 true))

(assert (=> d!1828905 true))

(assert (=> d!1828905 true))

(assert (=> d!1828905 (= (isDefined!12531 (findConcatSeparation!2242 (reg!16148 r!7292) r!7292 Nil!63634 s!2326 s!2326)) (Exists!2919 lambda!316907))))

(declare-fun lt!2298936 () Unit!156898)

(declare-fun choose!44069 (Regex!15819 Regex!15819 List!63758) Unit!156898)

(assert (=> d!1828905 (= lt!2298936 (choose!44069 (reg!16148 r!7292) r!7292 s!2326))))

(assert (=> d!1828905 (validRegex!7555 (reg!16148 r!7292))))

(assert (=> d!1828905 (= (lemmaFindConcatSeparationEquivalentToExists!2006 (reg!16148 r!7292) r!7292 s!2326) lt!2298936)))

(declare-fun bs!1370997 () Bool)

(assert (= bs!1370997 d!1828905))

(assert (=> bs!1370997 m!6745838))

(declare-fun m!6745950 () Bool)

(assert (=> bs!1370997 m!6745950))

(assert (=> bs!1370997 m!6745592))

(assert (=> bs!1370997 m!6745592))

(declare-fun m!6745952 () Bool)

(assert (=> bs!1370997 m!6745952))

(declare-fun m!6745954 () Bool)

(assert (=> bs!1370997 m!6745954))

(assert (=> b!5806041 d!1828905))

(declare-fun bs!1371013 () Bool)

(declare-fun d!1828913 () Bool)

(assert (= bs!1371013 (and d!1828913 d!1828849)))

(declare-fun lambda!316912 () Int)

(assert (=> bs!1371013 (= lambda!316912 lambda!316872)))

(declare-fun b!5806630 () Bool)

(declare-fun e!3564551 () Regex!15819)

(declare-fun e!3564550 () Regex!15819)

(assert (=> b!5806630 (= e!3564551 e!3564550)))

(declare-fun c!1028731 () Bool)

(assert (=> b!5806630 (= c!1028731 ((_ is Cons!63632) (unfocusZipperList!1247 zl!343)))))

(declare-fun b!5806631 () Bool)

(assert (=> b!5806631 (= e!3564551 (h!70080 (unfocusZipperList!1247 zl!343)))))

(declare-fun b!5806632 () Bool)

(declare-fun e!3564545 () Bool)

(declare-fun lt!2298943 () Regex!15819)

(declare-fun isEmptyLang!1302 (Regex!15819) Bool)

(assert (=> b!5806632 (= e!3564545 (isEmptyLang!1302 lt!2298943))))

(declare-fun b!5806633 () Bool)

(declare-fun e!3564552 () Bool)

(declare-fun isUnion!732 (Regex!15819) Bool)

(assert (=> b!5806633 (= e!3564552 (isUnion!732 lt!2298943))))

(declare-fun b!5806634 () Bool)

(declare-fun e!3564549 () Bool)

(assert (=> b!5806634 (= e!3564549 e!3564545)))

(declare-fun c!1028729 () Bool)

(assert (=> b!5806634 (= c!1028729 (isEmpty!35546 (unfocusZipperList!1247 zl!343)))))

(declare-fun b!5806629 () Bool)

(assert (=> b!5806629 (= e!3564550 (Union!15819 (h!70080 (unfocusZipperList!1247 zl!343)) (generalisedUnion!1682 (t!377109 (unfocusZipperList!1247 zl!343)))))))

(assert (=> d!1828913 e!3564549))

(declare-fun res!2448542 () Bool)

(assert (=> d!1828913 (=> (not res!2448542) (not e!3564549))))

(assert (=> d!1828913 (= res!2448542 (validRegex!7555 lt!2298943))))

(assert (=> d!1828913 (= lt!2298943 e!3564551)))

(declare-fun c!1028728 () Bool)

(declare-fun e!3564546 () Bool)

(assert (=> d!1828913 (= c!1028728 e!3564546)))

(declare-fun res!2448543 () Bool)

(assert (=> d!1828913 (=> (not res!2448543) (not e!3564546))))

(assert (=> d!1828913 (= res!2448543 ((_ is Cons!63632) (unfocusZipperList!1247 zl!343)))))

(assert (=> d!1828913 (forall!14927 (unfocusZipperList!1247 zl!343) lambda!316912)))

(assert (=> d!1828913 (= (generalisedUnion!1682 (unfocusZipperList!1247 zl!343)) lt!2298943)))

(declare-fun b!5806635 () Bool)

(assert (=> b!5806635 (= e!3564552 (= lt!2298943 (head!12250 (unfocusZipperList!1247 zl!343))))))

(declare-fun b!5806636 () Bool)

(assert (=> b!5806636 (= e!3564545 e!3564552)))

(declare-fun c!1028730 () Bool)

(assert (=> b!5806636 (= c!1028730 (isEmpty!35546 (tail!11345 (unfocusZipperList!1247 zl!343))))))

(declare-fun b!5806637 () Bool)

(assert (=> b!5806637 (= e!3564546 (isEmpty!35546 (t!377109 (unfocusZipperList!1247 zl!343))))))

(declare-fun b!5806638 () Bool)

(assert (=> b!5806638 (= e!3564550 EmptyLang!15819)))

(assert (= (and d!1828913 res!2448543) b!5806637))

(assert (= (and d!1828913 c!1028728) b!5806631))

(assert (= (and d!1828913 (not c!1028728)) b!5806630))

(assert (= (and b!5806630 c!1028731) b!5806629))

(assert (= (and b!5806630 (not c!1028731)) b!5806638))

(assert (= (and d!1828913 res!2448542) b!5806634))

(assert (= (and b!5806634 c!1028729) b!5806632))

(assert (= (and b!5806634 (not c!1028729)) b!5806636))

(assert (= (and b!5806636 c!1028730) b!5806635))

(assert (= (and b!5806636 (not c!1028730)) b!5806633))

(declare-fun m!6746006 () Bool)

(assert (=> b!5806633 m!6746006))

(declare-fun m!6746008 () Bool)

(assert (=> d!1828913 m!6746008))

(assert (=> d!1828913 m!6745520))

(declare-fun m!6746010 () Bool)

(assert (=> d!1828913 m!6746010))

(assert (=> b!5806636 m!6745520))

(declare-fun m!6746012 () Bool)

(assert (=> b!5806636 m!6746012))

(assert (=> b!5806636 m!6746012))

(declare-fun m!6746014 () Bool)

(assert (=> b!5806636 m!6746014))

(declare-fun m!6746016 () Bool)

(assert (=> b!5806632 m!6746016))

(declare-fun m!6746018 () Bool)

(assert (=> b!5806637 m!6746018))

(assert (=> b!5806635 m!6745520))

(declare-fun m!6746020 () Bool)

(assert (=> b!5806635 m!6746020))

(assert (=> b!5806634 m!6745520))

(declare-fun m!6746022 () Bool)

(assert (=> b!5806634 m!6746022))

(declare-fun m!6746024 () Bool)

(assert (=> b!5806629 m!6746024))

(assert (=> b!5806051 d!1828913))

(declare-fun bs!1371018 () Bool)

(declare-fun d!1828939 () Bool)

(assert (= bs!1371018 (and d!1828939 d!1828849)))

(declare-fun lambda!316915 () Int)

(assert (=> bs!1371018 (= lambda!316915 lambda!316872)))

(declare-fun bs!1371019 () Bool)

(assert (= bs!1371019 (and d!1828939 d!1828913)))

(assert (=> bs!1371019 (= lambda!316915 lambda!316912)))

(declare-fun lt!2298946 () List!63756)

(assert (=> d!1828939 (forall!14927 lt!2298946 lambda!316915)))

(declare-fun e!3564556 () List!63756)

(assert (=> d!1828939 (= lt!2298946 e!3564556)))

(declare-fun c!1028734 () Bool)

(assert (=> d!1828939 (= c!1028734 ((_ is Cons!63633) zl!343))))

(assert (=> d!1828939 (= (unfocusZipperList!1247 zl!343) lt!2298946)))

(declare-fun b!5806644 () Bool)

(assert (=> b!5806644 (= e!3564556 (Cons!63632 (generalisedConcat!1434 (exprs!5703 (h!70081 zl!343))) (unfocusZipperList!1247 (t!377110 zl!343))))))

(declare-fun b!5806645 () Bool)

(assert (=> b!5806645 (= e!3564556 Nil!63632)))

(assert (= (and d!1828939 c!1028734) b!5806644))

(assert (= (and d!1828939 (not c!1028734)) b!5806645))

(declare-fun m!6746026 () Bool)

(assert (=> d!1828939 m!6746026))

(assert (=> b!5806644 m!6745584))

(declare-fun m!6746028 () Bool)

(assert (=> b!5806644 m!6746028))

(assert (=> b!5806051 d!1828939))

(declare-fun bs!1371020 () Bool)

(declare-fun d!1828945 () Bool)

(assert (= bs!1371020 (and d!1828945 d!1828849)))

(declare-fun lambda!316918 () Int)

(assert (=> bs!1371020 (= lambda!316918 lambda!316872)))

(declare-fun bs!1371021 () Bool)

(assert (= bs!1371021 (and d!1828945 d!1828913)))

(assert (=> bs!1371021 (= lambda!316918 lambda!316912)))

(declare-fun bs!1371022 () Bool)

(assert (= bs!1371022 (and d!1828945 d!1828939)))

(assert (=> bs!1371022 (= lambda!316918 lambda!316915)))

(assert (=> d!1828945 (= (inv!82794 (h!70081 zl!343)) (forall!14927 (exprs!5703 (h!70081 zl!343)) lambda!316918))))

(declare-fun bs!1371023 () Bool)

(assert (= bs!1371023 d!1828945))

(declare-fun m!6746030 () Bool)

(assert (=> bs!1371023 m!6746030))

(assert (=> b!5806032 d!1828945))

(declare-fun d!1828947 () Bool)

(declare-fun lt!2298947 () Regex!15819)

(assert (=> d!1828947 (validRegex!7555 lt!2298947)))

(assert (=> d!1828947 (= lt!2298947 (generalisedUnion!1682 (unfocusZipperList!1247 zl!343)))))

(assert (=> d!1828947 (= (unfocusZipper!1561 zl!343) lt!2298947)))

(declare-fun bs!1371024 () Bool)

(assert (= bs!1371024 d!1828947))

(declare-fun m!6746032 () Bool)

(assert (=> bs!1371024 m!6746032))

(assert (=> bs!1371024 m!6745520))

(assert (=> bs!1371024 m!6745520))

(assert (=> bs!1371024 m!6745522))

(assert (=> b!5806052 d!1828947))

(declare-fun bs!1371025 () Bool)

(declare-fun b!5806681 () Bool)

(assert (= bs!1371025 (and b!5806681 b!5806041)))

(declare-fun lambda!316923 () Int)

(assert (=> bs!1371025 (not (= lambda!316923 lambda!316847))))

(assert (=> bs!1371025 (not (= lambda!316923 lambda!316849))))

(declare-fun bs!1371026 () Bool)

(assert (= bs!1371026 (and b!5806681 d!1828879)))

(assert (=> bs!1371026 (= (= r!7292 (Star!15819 (reg!16148 r!7292))) (= lambda!316923 lambda!316895))))

(assert (=> bs!1371025 (= lambda!316923 lambda!316848)))

(declare-fun bs!1371027 () Bool)

(assert (= bs!1371027 (and b!5806681 d!1828857)))

(assert (=> bs!1371027 (not (= lambda!316923 lambda!316882))))

(assert (=> bs!1371027 (not (= lambda!316923 lambda!316881))))

(declare-fun bs!1371028 () Bool)

(assert (= bs!1371028 (and b!5806681 d!1828905)))

(assert (=> bs!1371028 (not (= lambda!316923 lambda!316907))))

(assert (=> bs!1371026 (not (= lambda!316923 lambda!316894))))

(assert (=> b!5806681 true))

(assert (=> b!5806681 true))

(declare-fun bs!1371029 () Bool)

(declare-fun b!5806686 () Bool)

(assert (= bs!1371029 (and b!5806686 b!5806041)))

(declare-fun lambda!316924 () Int)

(assert (=> bs!1371029 (= (and (= (regOne!32150 r!7292) (reg!16148 r!7292)) (= (regTwo!32150 r!7292) r!7292)) (= lambda!316924 lambda!316849))))

(declare-fun bs!1371030 () Bool)

(assert (= bs!1371030 (and b!5806686 d!1828879)))

(assert (=> bs!1371030 (not (= lambda!316924 lambda!316895))))

(assert (=> bs!1371029 (not (= lambda!316924 lambda!316848))))

(declare-fun bs!1371031 () Bool)

(assert (= bs!1371031 (and b!5806686 d!1828857)))

(assert (=> bs!1371031 (= (and (= (regOne!32150 r!7292) (reg!16148 r!7292)) (= (regTwo!32150 r!7292) r!7292)) (= lambda!316924 lambda!316882))))

(assert (=> bs!1371031 (not (= lambda!316924 lambda!316881))))

(declare-fun bs!1371032 () Bool)

(assert (= bs!1371032 (and b!5806686 d!1828905)))

(assert (=> bs!1371032 (not (= lambda!316924 lambda!316907))))

(assert (=> bs!1371030 (not (= lambda!316924 lambda!316894))))

(assert (=> bs!1371029 (not (= lambda!316924 lambda!316847))))

(declare-fun bs!1371033 () Bool)

(assert (= bs!1371033 (and b!5806686 b!5806681)))

(assert (=> bs!1371033 (not (= lambda!316924 lambda!316923))))

(assert (=> b!5806686 true))

(assert (=> b!5806686 true))

(declare-fun b!5806678 () Bool)

(declare-fun c!1028745 () Bool)

(assert (=> b!5806678 (= c!1028745 ((_ is Union!15819) r!7292))))

(declare-fun e!3564577 () Bool)

(declare-fun e!3564578 () Bool)

(assert (=> b!5806678 (= e!3564577 e!3564578)))

(declare-fun b!5806679 () Bool)

(declare-fun e!3564575 () Bool)

(assert (=> b!5806679 (= e!3564578 e!3564575)))

(declare-fun c!1028744 () Bool)

(assert (=> b!5806679 (= c!1028744 ((_ is Star!15819) r!7292))))

(declare-fun b!5806680 () Bool)

(declare-fun e!3564576 () Bool)

(declare-fun e!3564580 () Bool)

(assert (=> b!5806680 (= e!3564576 e!3564580)))

(declare-fun res!2448562 () Bool)

(assert (=> b!5806680 (= res!2448562 (not ((_ is EmptyLang!15819) r!7292)))))

(assert (=> b!5806680 (=> (not res!2448562) (not e!3564580))))

(declare-fun e!3564579 () Bool)

(declare-fun call!453333 () Bool)

(assert (=> b!5806681 (= e!3564579 call!453333)))

(declare-fun d!1828949 () Bool)

(declare-fun c!1028746 () Bool)

(assert (=> d!1828949 (= c!1028746 ((_ is EmptyExpr!15819) r!7292))))

(assert (=> d!1828949 (= (matchRSpec!2922 r!7292 s!2326) e!3564576)))

(declare-fun b!5806682 () Bool)

(declare-fun e!3564581 () Bool)

(assert (=> b!5806682 (= e!3564578 e!3564581)))

(declare-fun res!2448561 () Bool)

(assert (=> b!5806682 (= res!2448561 (matchRSpec!2922 (regOne!32151 r!7292) s!2326))))

(assert (=> b!5806682 (=> res!2448561 e!3564581)))

(declare-fun b!5806683 () Bool)

(declare-fun res!2448560 () Bool)

(assert (=> b!5806683 (=> res!2448560 e!3564579)))

(declare-fun call!453332 () Bool)

(assert (=> b!5806683 (= res!2448560 call!453332)))

(assert (=> b!5806683 (= e!3564575 e!3564579)))

(declare-fun b!5806684 () Bool)

(assert (=> b!5806684 (= e!3564577 (= s!2326 (Cons!63634 (c!1028567 r!7292) Nil!63634)))))

(declare-fun b!5806685 () Bool)

(assert (=> b!5806685 (= e!3564581 (matchRSpec!2922 (regTwo!32151 r!7292) s!2326))))

(assert (=> b!5806686 (= e!3564575 call!453333)))

(declare-fun bm!453327 () Bool)

(assert (=> bm!453327 (= call!453332 (isEmpty!35544 s!2326))))

(declare-fun b!5806687 () Bool)

(assert (=> b!5806687 (= e!3564576 call!453332)))

(declare-fun b!5806688 () Bool)

(declare-fun c!1028743 () Bool)

(assert (=> b!5806688 (= c!1028743 ((_ is ElementMatch!15819) r!7292))))

(assert (=> b!5806688 (= e!3564580 e!3564577)))

(declare-fun bm!453328 () Bool)

(assert (=> bm!453328 (= call!453333 (Exists!2919 (ite c!1028744 lambda!316923 lambda!316924)))))

(assert (= (and d!1828949 c!1028746) b!5806687))

(assert (= (and d!1828949 (not c!1028746)) b!5806680))

(assert (= (and b!5806680 res!2448562) b!5806688))

(assert (= (and b!5806688 c!1028743) b!5806684))

(assert (= (and b!5806688 (not c!1028743)) b!5806678))

(assert (= (and b!5806678 c!1028745) b!5806682))

(assert (= (and b!5806678 (not c!1028745)) b!5806679))

(assert (= (and b!5806682 (not res!2448561)) b!5806685))

(assert (= (and b!5806679 c!1028744) b!5806683))

(assert (= (and b!5806679 (not c!1028744)) b!5806686))

(assert (= (and b!5806683 (not res!2448560)) b!5806681))

(assert (= (or b!5806681 b!5806686) bm!453328))

(assert (= (or b!5806687 b!5806683) bm!453327))

(declare-fun m!6746034 () Bool)

(assert (=> b!5806682 m!6746034))

(declare-fun m!6746036 () Bool)

(assert (=> b!5806685 m!6746036))

(assert (=> bm!453327 m!6745598))

(declare-fun m!6746038 () Bool)

(assert (=> bm!453328 m!6746038))

(assert (=> b!5806022 d!1828949))

(declare-fun b!5806717 () Bool)

(declare-fun e!3564601 () Bool)

(declare-fun lt!2298950 () Bool)

(assert (=> b!5806717 (= e!3564601 (not lt!2298950))))

(declare-fun b!5806718 () Bool)

(declare-fun e!3564596 () Bool)

(assert (=> b!5806718 (= e!3564596 e!3564601)))

(declare-fun c!1028753 () Bool)

(assert (=> b!5806718 (= c!1028753 ((_ is EmptyLang!15819) r!7292))))

(declare-fun d!1828951 () Bool)

(assert (=> d!1828951 e!3564596))

(declare-fun c!1028755 () Bool)

(assert (=> d!1828951 (= c!1028755 ((_ is EmptyExpr!15819) r!7292))))

(declare-fun e!3564597 () Bool)

(assert (=> d!1828951 (= lt!2298950 e!3564597)))

(declare-fun c!1028754 () Bool)

(assert (=> d!1828951 (= c!1028754 (isEmpty!35544 s!2326))))

(assert (=> d!1828951 (validRegex!7555 r!7292)))

(assert (=> d!1828951 (= (matchR!8004 r!7292 s!2326) lt!2298950)))

(declare-fun b!5806719 () Bool)

(declare-fun res!2448581 () Bool)

(declare-fun e!3564598 () Bool)

(assert (=> b!5806719 (=> res!2448581 e!3564598)))

(declare-fun tail!11346 (List!63758) List!63758)

(assert (=> b!5806719 (= res!2448581 (not (isEmpty!35544 (tail!11346 s!2326))))))

(declare-fun b!5806720 () Bool)

(declare-fun e!3564600 () Bool)

(assert (=> b!5806720 (= e!3564600 e!3564598)))

(declare-fun res!2448585 () Bool)

(assert (=> b!5806720 (=> res!2448585 e!3564598)))

(declare-fun call!453336 () Bool)

(assert (=> b!5806720 (= res!2448585 call!453336)))

(declare-fun b!5806721 () Bool)

(assert (=> b!5806721 (= e!3564597 (nullable!5845 r!7292))))

(declare-fun b!5806722 () Bool)

(declare-fun e!3564599 () Bool)

(assert (=> b!5806722 (= e!3564599 e!3564600)))

(declare-fun res!2448584 () Bool)

(assert (=> b!5806722 (=> (not res!2448584) (not e!3564600))))

(assert (=> b!5806722 (= res!2448584 (not lt!2298950))))

(declare-fun b!5806723 () Bool)

(declare-fun res!2448582 () Bool)

(declare-fun e!3564602 () Bool)

(assert (=> b!5806723 (=> (not res!2448582) (not e!3564602))))

(assert (=> b!5806723 (= res!2448582 (not call!453336))))

(declare-fun b!5806724 () Bool)

(assert (=> b!5806724 (= e!3564596 (= lt!2298950 call!453336))))

(declare-fun b!5806725 () Bool)

(declare-fun res!2448586 () Bool)

(assert (=> b!5806725 (=> res!2448586 e!3564599)))

(assert (=> b!5806725 (= res!2448586 e!3564602)))

(declare-fun res!2448579 () Bool)

(assert (=> b!5806725 (=> (not res!2448579) (not e!3564602))))

(assert (=> b!5806725 (= res!2448579 lt!2298950)))

(declare-fun b!5806726 () Bool)

(declare-fun derivativeStep!4588 (Regex!15819 C!31908) Regex!15819)

(declare-fun head!12251 (List!63758) C!31908)

(assert (=> b!5806726 (= e!3564597 (matchR!8004 (derivativeStep!4588 r!7292 (head!12251 s!2326)) (tail!11346 s!2326)))))

(declare-fun b!5806727 () Bool)

(assert (=> b!5806727 (= e!3564602 (= (head!12251 s!2326) (c!1028567 r!7292)))))

(declare-fun b!5806728 () Bool)

(assert (=> b!5806728 (= e!3564598 (not (= (head!12251 s!2326) (c!1028567 r!7292))))))

(declare-fun b!5806729 () Bool)

(declare-fun res!2448580 () Bool)

(assert (=> b!5806729 (=> res!2448580 e!3564599)))

(assert (=> b!5806729 (= res!2448580 (not ((_ is ElementMatch!15819) r!7292)))))

(assert (=> b!5806729 (= e!3564601 e!3564599)))

(declare-fun b!5806730 () Bool)

(declare-fun res!2448583 () Bool)

(assert (=> b!5806730 (=> (not res!2448583) (not e!3564602))))

(assert (=> b!5806730 (= res!2448583 (isEmpty!35544 (tail!11346 s!2326)))))

(declare-fun bm!453331 () Bool)

(assert (=> bm!453331 (= call!453336 (isEmpty!35544 s!2326))))

(assert (= (and d!1828951 c!1028754) b!5806721))

(assert (= (and d!1828951 (not c!1028754)) b!5806726))

(assert (= (and d!1828951 c!1028755) b!5806724))

(assert (= (and d!1828951 (not c!1028755)) b!5806718))

(assert (= (and b!5806718 c!1028753) b!5806717))

(assert (= (and b!5806718 (not c!1028753)) b!5806729))

(assert (= (and b!5806729 (not res!2448580)) b!5806725))

(assert (= (and b!5806725 res!2448579) b!5806723))

(assert (= (and b!5806723 res!2448582) b!5806730))

(assert (= (and b!5806730 res!2448583) b!5806727))

(assert (= (and b!5806725 (not res!2448586)) b!5806722))

(assert (= (and b!5806722 res!2448584) b!5806720))

(assert (= (and b!5806720 (not res!2448585)) b!5806719))

(assert (= (and b!5806719 (not res!2448581)) b!5806728))

(assert (= (or b!5806724 b!5806720 b!5806723) bm!453331))

(declare-fun m!6746040 () Bool)

(assert (=> b!5806721 m!6746040))

(assert (=> bm!453331 m!6745598))

(declare-fun m!6746042 () Bool)

(assert (=> b!5806726 m!6746042))

(assert (=> b!5806726 m!6746042))

(declare-fun m!6746044 () Bool)

(assert (=> b!5806726 m!6746044))

(declare-fun m!6746046 () Bool)

(assert (=> b!5806726 m!6746046))

(assert (=> b!5806726 m!6746044))

(assert (=> b!5806726 m!6746046))

(declare-fun m!6746048 () Bool)

(assert (=> b!5806726 m!6746048))

(assert (=> b!5806728 m!6746042))

(assert (=> b!5806719 m!6746046))

(assert (=> b!5806719 m!6746046))

(declare-fun m!6746050 () Bool)

(assert (=> b!5806719 m!6746050))

(assert (=> b!5806730 m!6746046))

(assert (=> b!5806730 m!6746046))

(assert (=> b!5806730 m!6746050))

(assert (=> b!5806727 m!6746042))

(assert (=> d!1828951 m!6745598))

(assert (=> d!1828951 m!6745518))

(assert (=> b!5806022 d!1828951))

(declare-fun d!1828953 () Bool)

(assert (=> d!1828953 (= (matchR!8004 r!7292 s!2326) (matchRSpec!2922 r!7292 s!2326))))

(declare-fun lt!2298953 () Unit!156898)

(declare-fun choose!44072 (Regex!15819 List!63758) Unit!156898)

(assert (=> d!1828953 (= lt!2298953 (choose!44072 r!7292 s!2326))))

(assert (=> d!1828953 (validRegex!7555 r!7292)))

(assert (=> d!1828953 (= (mainMatchTheorem!2922 r!7292 s!2326) lt!2298953)))

(declare-fun bs!1371034 () Bool)

(assert (= bs!1371034 d!1828953))

(assert (=> bs!1371034 m!6745514))

(assert (=> bs!1371034 m!6745512))

(declare-fun m!6746052 () Bool)

(assert (=> bs!1371034 m!6746052))

(assert (=> bs!1371034 m!6745518))

(assert (=> b!5806022 d!1828953))

(declare-fun bs!1371035 () Bool)

(declare-fun b!5806734 () Bool)

(assert (= bs!1371035 (and b!5806734 b!5806041)))

(declare-fun lambda!316925 () Int)

(assert (=> bs!1371035 (not (= lambda!316925 lambda!316849))))

(declare-fun bs!1371036 () Bool)

(assert (= bs!1371036 (and b!5806734 b!5806686)))

(assert (=> bs!1371036 (not (= lambda!316925 lambda!316924))))

(declare-fun bs!1371037 () Bool)

(assert (= bs!1371037 (and b!5806734 d!1828879)))

(assert (=> bs!1371037 (= (and (= (reg!16148 lt!2298845) (reg!16148 r!7292)) (= lt!2298845 (Star!15819 (reg!16148 r!7292)))) (= lambda!316925 lambda!316895))))

(assert (=> bs!1371035 (= (and (= (reg!16148 lt!2298845) (reg!16148 r!7292)) (= lt!2298845 r!7292)) (= lambda!316925 lambda!316848))))

(declare-fun bs!1371038 () Bool)

(assert (= bs!1371038 (and b!5806734 d!1828857)))

(assert (=> bs!1371038 (not (= lambda!316925 lambda!316882))))

(assert (=> bs!1371038 (not (= lambda!316925 lambda!316881))))

(declare-fun bs!1371039 () Bool)

(assert (= bs!1371039 (and b!5806734 d!1828905)))

(assert (=> bs!1371039 (not (= lambda!316925 lambda!316907))))

(assert (=> bs!1371037 (not (= lambda!316925 lambda!316894))))

(assert (=> bs!1371035 (not (= lambda!316925 lambda!316847))))

(declare-fun bs!1371040 () Bool)

(assert (= bs!1371040 (and b!5806734 b!5806681)))

(assert (=> bs!1371040 (= (and (= (reg!16148 lt!2298845) (reg!16148 r!7292)) (= lt!2298845 r!7292)) (= lambda!316925 lambda!316923))))

(assert (=> b!5806734 true))

(assert (=> b!5806734 true))

(declare-fun bs!1371041 () Bool)

(declare-fun b!5806739 () Bool)

(assert (= bs!1371041 (and b!5806739 b!5806041)))

(declare-fun lambda!316926 () Int)

(assert (=> bs!1371041 (= (and (= (regOne!32150 lt!2298845) (reg!16148 r!7292)) (= (regTwo!32150 lt!2298845) r!7292)) (= lambda!316926 lambda!316849))))

(declare-fun bs!1371042 () Bool)

(assert (= bs!1371042 (and b!5806739 b!5806686)))

(assert (=> bs!1371042 (= (and (= (regOne!32150 lt!2298845) (regOne!32150 r!7292)) (= (regTwo!32150 lt!2298845) (regTwo!32150 r!7292))) (= lambda!316926 lambda!316924))))

(declare-fun bs!1371043 () Bool)

(assert (= bs!1371043 (and b!5806739 d!1828879)))

(assert (=> bs!1371043 (not (= lambda!316926 lambda!316895))))

(assert (=> bs!1371041 (not (= lambda!316926 lambda!316848))))

(declare-fun bs!1371044 () Bool)

(assert (= bs!1371044 (and b!5806739 d!1828857)))

(assert (=> bs!1371044 (= (and (= (regOne!32150 lt!2298845) (reg!16148 r!7292)) (= (regTwo!32150 lt!2298845) r!7292)) (= lambda!316926 lambda!316882))))

(assert (=> bs!1371044 (not (= lambda!316926 lambda!316881))))

(assert (=> bs!1371043 (not (= lambda!316926 lambda!316894))))

(assert (=> bs!1371041 (not (= lambda!316926 lambda!316847))))

(declare-fun bs!1371045 () Bool)

(assert (= bs!1371045 (and b!5806739 b!5806681)))

(assert (=> bs!1371045 (not (= lambda!316926 lambda!316923))))

(declare-fun bs!1371046 () Bool)

(assert (= bs!1371046 (and b!5806739 d!1828905)))

(assert (=> bs!1371046 (not (= lambda!316926 lambda!316907))))

(declare-fun bs!1371047 () Bool)

(assert (= bs!1371047 (and b!5806739 b!5806734)))

(assert (=> bs!1371047 (not (= lambda!316926 lambda!316925))))

(assert (=> b!5806739 true))

(assert (=> b!5806739 true))

(declare-fun b!5806731 () Bool)

(declare-fun c!1028758 () Bool)

(assert (=> b!5806731 (= c!1028758 ((_ is Union!15819) lt!2298845))))

(declare-fun e!3564605 () Bool)

(declare-fun e!3564606 () Bool)

(assert (=> b!5806731 (= e!3564605 e!3564606)))

(declare-fun b!5806732 () Bool)

(declare-fun e!3564603 () Bool)

(assert (=> b!5806732 (= e!3564606 e!3564603)))

(declare-fun c!1028757 () Bool)

(assert (=> b!5806732 (= c!1028757 ((_ is Star!15819) lt!2298845))))

(declare-fun b!5806733 () Bool)

(declare-fun e!3564604 () Bool)

(declare-fun e!3564608 () Bool)

(assert (=> b!5806733 (= e!3564604 e!3564608)))

(declare-fun res!2448589 () Bool)

(assert (=> b!5806733 (= res!2448589 (not ((_ is EmptyLang!15819) lt!2298845)))))

(assert (=> b!5806733 (=> (not res!2448589) (not e!3564608))))

(declare-fun e!3564607 () Bool)

(declare-fun call!453338 () Bool)

(assert (=> b!5806734 (= e!3564607 call!453338)))

(declare-fun d!1828955 () Bool)

(declare-fun c!1028759 () Bool)

(assert (=> d!1828955 (= c!1028759 ((_ is EmptyExpr!15819) lt!2298845))))

(assert (=> d!1828955 (= (matchRSpec!2922 lt!2298845 s!2326) e!3564604)))

(declare-fun b!5806735 () Bool)

(declare-fun e!3564609 () Bool)

(assert (=> b!5806735 (= e!3564606 e!3564609)))

(declare-fun res!2448588 () Bool)

(assert (=> b!5806735 (= res!2448588 (matchRSpec!2922 (regOne!32151 lt!2298845) s!2326))))

(assert (=> b!5806735 (=> res!2448588 e!3564609)))

(declare-fun b!5806736 () Bool)

(declare-fun res!2448587 () Bool)

(assert (=> b!5806736 (=> res!2448587 e!3564607)))

(declare-fun call!453337 () Bool)

(assert (=> b!5806736 (= res!2448587 call!453337)))

(assert (=> b!5806736 (= e!3564603 e!3564607)))

(declare-fun b!5806737 () Bool)

(assert (=> b!5806737 (= e!3564605 (= s!2326 (Cons!63634 (c!1028567 lt!2298845) Nil!63634)))))

(declare-fun b!5806738 () Bool)

(assert (=> b!5806738 (= e!3564609 (matchRSpec!2922 (regTwo!32151 lt!2298845) s!2326))))

(assert (=> b!5806739 (= e!3564603 call!453338)))

(declare-fun bm!453332 () Bool)

(assert (=> bm!453332 (= call!453337 (isEmpty!35544 s!2326))))

(declare-fun b!5806740 () Bool)

(assert (=> b!5806740 (= e!3564604 call!453337)))

(declare-fun b!5806741 () Bool)

(declare-fun c!1028756 () Bool)

(assert (=> b!5806741 (= c!1028756 ((_ is ElementMatch!15819) lt!2298845))))

(assert (=> b!5806741 (= e!3564608 e!3564605)))

(declare-fun bm!453333 () Bool)

(assert (=> bm!453333 (= call!453338 (Exists!2919 (ite c!1028757 lambda!316925 lambda!316926)))))

(assert (= (and d!1828955 c!1028759) b!5806740))

(assert (= (and d!1828955 (not c!1028759)) b!5806733))

(assert (= (and b!5806733 res!2448589) b!5806741))

(assert (= (and b!5806741 c!1028756) b!5806737))

(assert (= (and b!5806741 (not c!1028756)) b!5806731))

(assert (= (and b!5806731 c!1028758) b!5806735))

(assert (= (and b!5806731 (not c!1028758)) b!5806732))

(assert (= (and b!5806735 (not res!2448588)) b!5806738))

(assert (= (and b!5806732 c!1028757) b!5806736))

(assert (= (and b!5806732 (not c!1028757)) b!5806739))

(assert (= (and b!5806736 (not res!2448587)) b!5806734))

(assert (= (or b!5806734 b!5806739) bm!453333))

(assert (= (or b!5806740 b!5806736) bm!453332))

(declare-fun m!6746054 () Bool)

(assert (=> b!5806735 m!6746054))

(declare-fun m!6746056 () Bool)

(assert (=> b!5806738 m!6746056))

(assert (=> bm!453332 m!6745598))

(declare-fun m!6746058 () Bool)

(assert (=> bm!453333 m!6746058))

(assert (=> b!5806033 d!1828955))

(declare-fun b!5806742 () Bool)

(declare-fun e!3564615 () Bool)

(declare-fun lt!2298954 () Bool)

(assert (=> b!5806742 (= e!3564615 (not lt!2298954))))

(declare-fun b!5806743 () Bool)

(declare-fun e!3564610 () Bool)

(assert (=> b!5806743 (= e!3564610 e!3564615)))

(declare-fun c!1028760 () Bool)

(assert (=> b!5806743 (= c!1028760 ((_ is EmptyLang!15819) lt!2298845))))

(declare-fun d!1828957 () Bool)

(assert (=> d!1828957 e!3564610))

(declare-fun c!1028762 () Bool)

(assert (=> d!1828957 (= c!1028762 ((_ is EmptyExpr!15819) lt!2298845))))

(declare-fun e!3564611 () Bool)

(assert (=> d!1828957 (= lt!2298954 e!3564611)))

(declare-fun c!1028761 () Bool)

(assert (=> d!1828957 (= c!1028761 (isEmpty!35544 s!2326))))

(assert (=> d!1828957 (validRegex!7555 lt!2298845)))

(assert (=> d!1828957 (= (matchR!8004 lt!2298845 s!2326) lt!2298954)))

(declare-fun b!5806744 () Bool)

(declare-fun res!2448592 () Bool)

(declare-fun e!3564612 () Bool)

(assert (=> b!5806744 (=> res!2448592 e!3564612)))

(assert (=> b!5806744 (= res!2448592 (not (isEmpty!35544 (tail!11346 s!2326))))))

(declare-fun b!5806745 () Bool)

(declare-fun e!3564614 () Bool)

(assert (=> b!5806745 (= e!3564614 e!3564612)))

(declare-fun res!2448596 () Bool)

(assert (=> b!5806745 (=> res!2448596 e!3564612)))

(declare-fun call!453339 () Bool)

(assert (=> b!5806745 (= res!2448596 call!453339)))

(declare-fun b!5806746 () Bool)

(assert (=> b!5806746 (= e!3564611 (nullable!5845 lt!2298845))))

(declare-fun b!5806747 () Bool)

(declare-fun e!3564613 () Bool)

(assert (=> b!5806747 (= e!3564613 e!3564614)))

(declare-fun res!2448595 () Bool)

(assert (=> b!5806747 (=> (not res!2448595) (not e!3564614))))

(assert (=> b!5806747 (= res!2448595 (not lt!2298954))))

(declare-fun b!5806748 () Bool)

(declare-fun res!2448593 () Bool)

(declare-fun e!3564616 () Bool)

(assert (=> b!5806748 (=> (not res!2448593) (not e!3564616))))

(assert (=> b!5806748 (= res!2448593 (not call!453339))))

(declare-fun b!5806749 () Bool)

(assert (=> b!5806749 (= e!3564610 (= lt!2298954 call!453339))))

(declare-fun b!5806750 () Bool)

(declare-fun res!2448597 () Bool)

(assert (=> b!5806750 (=> res!2448597 e!3564613)))

(assert (=> b!5806750 (= res!2448597 e!3564616)))

(declare-fun res!2448590 () Bool)

(assert (=> b!5806750 (=> (not res!2448590) (not e!3564616))))

(assert (=> b!5806750 (= res!2448590 lt!2298954)))

(declare-fun b!5806751 () Bool)

(assert (=> b!5806751 (= e!3564611 (matchR!8004 (derivativeStep!4588 lt!2298845 (head!12251 s!2326)) (tail!11346 s!2326)))))

(declare-fun b!5806752 () Bool)

(assert (=> b!5806752 (= e!3564616 (= (head!12251 s!2326) (c!1028567 lt!2298845)))))

(declare-fun b!5806753 () Bool)

(assert (=> b!5806753 (= e!3564612 (not (= (head!12251 s!2326) (c!1028567 lt!2298845))))))

(declare-fun b!5806754 () Bool)

(declare-fun res!2448591 () Bool)

(assert (=> b!5806754 (=> res!2448591 e!3564613)))

(assert (=> b!5806754 (= res!2448591 (not ((_ is ElementMatch!15819) lt!2298845)))))

(assert (=> b!5806754 (= e!3564615 e!3564613)))

(declare-fun b!5806755 () Bool)

(declare-fun res!2448594 () Bool)

(assert (=> b!5806755 (=> (not res!2448594) (not e!3564616))))

(assert (=> b!5806755 (= res!2448594 (isEmpty!35544 (tail!11346 s!2326)))))

(declare-fun bm!453334 () Bool)

(assert (=> bm!453334 (= call!453339 (isEmpty!35544 s!2326))))

(assert (= (and d!1828957 c!1028761) b!5806746))

(assert (= (and d!1828957 (not c!1028761)) b!5806751))

(assert (= (and d!1828957 c!1028762) b!5806749))

(assert (= (and d!1828957 (not c!1028762)) b!5806743))

(assert (= (and b!5806743 c!1028760) b!5806742))

(assert (= (and b!5806743 (not c!1028760)) b!5806754))

(assert (= (and b!5806754 (not res!2448591)) b!5806750))

(assert (= (and b!5806750 res!2448590) b!5806748))

(assert (= (and b!5806748 res!2448593) b!5806755))

(assert (= (and b!5806755 res!2448594) b!5806752))

(assert (= (and b!5806750 (not res!2448597)) b!5806747))

(assert (= (and b!5806747 res!2448595) b!5806745))

(assert (= (and b!5806745 (not res!2448596)) b!5806744))

(assert (= (and b!5806744 (not res!2448592)) b!5806753))

(assert (= (or b!5806749 b!5806745 b!5806748) bm!453334))

(declare-fun m!6746060 () Bool)

(assert (=> b!5806746 m!6746060))

(assert (=> bm!453334 m!6745598))

(assert (=> b!5806751 m!6746042))

(assert (=> b!5806751 m!6746042))

(declare-fun m!6746062 () Bool)

(assert (=> b!5806751 m!6746062))

(assert (=> b!5806751 m!6746046))

(assert (=> b!5806751 m!6746062))

(assert (=> b!5806751 m!6746046))

(declare-fun m!6746064 () Bool)

(assert (=> b!5806751 m!6746064))

(assert (=> b!5806753 m!6746042))

(assert (=> b!5806744 m!6746046))

(assert (=> b!5806744 m!6746046))

(assert (=> b!5806744 m!6746050))

(assert (=> b!5806755 m!6746046))

(assert (=> b!5806755 m!6746046))

(assert (=> b!5806755 m!6746050))

(assert (=> b!5806752 m!6746042))

(assert (=> d!1828957 m!6745598))

(declare-fun m!6746066 () Bool)

(assert (=> d!1828957 m!6746066))

(assert (=> b!5806033 d!1828957))

(declare-fun d!1828959 () Bool)

(assert (=> d!1828959 (= (matchR!8004 lt!2298845 s!2326) (matchRSpec!2922 lt!2298845 s!2326))))

(declare-fun lt!2298955 () Unit!156898)

(assert (=> d!1828959 (= lt!2298955 (choose!44072 lt!2298845 s!2326))))

(assert (=> d!1828959 (validRegex!7555 lt!2298845)))

(assert (=> d!1828959 (= (mainMatchTheorem!2922 lt!2298845 s!2326) lt!2298955)))

(declare-fun bs!1371048 () Bool)

(assert (= bs!1371048 d!1828959))

(assert (=> bs!1371048 m!6745580))

(assert (=> bs!1371048 m!6745578))

(declare-fun m!6746068 () Bool)

(assert (=> bs!1371048 m!6746068))

(assert (=> bs!1371048 m!6746066))

(assert (=> b!5806033 d!1828959))

(declare-fun b!5806774 () Bool)

(declare-fun e!3564637 () Bool)

(declare-fun call!453348 () Bool)

(assert (=> b!5806774 (= e!3564637 call!453348)))

(declare-fun b!5806775 () Bool)

(declare-fun e!3564631 () Bool)

(declare-fun e!3564634 () Bool)

(assert (=> b!5806775 (= e!3564631 e!3564634)))

(declare-fun res!2448611 () Bool)

(assert (=> b!5806775 (=> (not res!2448611) (not e!3564634))))

(declare-fun call!453347 () Bool)

(assert (=> b!5806775 (= res!2448611 call!453347)))

(declare-fun d!1828961 () Bool)

(declare-fun res!2448610 () Bool)

(declare-fun e!3564632 () Bool)

(assert (=> d!1828961 (=> res!2448610 e!3564632)))

(assert (=> d!1828961 (= res!2448610 ((_ is ElementMatch!15819) r!7292))))

(assert (=> d!1828961 (= (validRegex!7555 r!7292) e!3564632)))

(declare-fun b!5806776 () Bool)

(declare-fun e!3564635 () Bool)

(declare-fun e!3564636 () Bool)

(assert (=> b!5806776 (= e!3564635 e!3564636)))

(declare-fun c!1028767 () Bool)

(assert (=> b!5806776 (= c!1028767 ((_ is Union!15819) r!7292))))

(declare-fun b!5806777 () Bool)

(declare-fun res!2448608 () Bool)

(assert (=> b!5806777 (=> (not res!2448608) (not e!3564637))))

(assert (=> b!5806777 (= res!2448608 call!453347)))

(assert (=> b!5806777 (= e!3564636 e!3564637)))

(declare-fun bm!453341 () Bool)

(assert (=> bm!453341 (= call!453347 (validRegex!7555 (ite c!1028767 (regOne!32151 r!7292) (regOne!32150 r!7292))))))

(declare-fun bm!453342 () Bool)

(declare-fun call!453346 () Bool)

(assert (=> bm!453342 (= call!453348 call!453346)))

(declare-fun b!5806778 () Bool)

(declare-fun res!2448612 () Bool)

(assert (=> b!5806778 (=> res!2448612 e!3564631)))

(assert (=> b!5806778 (= res!2448612 (not ((_ is Concat!24664) r!7292)))))

(assert (=> b!5806778 (= e!3564636 e!3564631)))

(declare-fun b!5806779 () Bool)

(assert (=> b!5806779 (= e!3564632 e!3564635)))

(declare-fun c!1028768 () Bool)

(assert (=> b!5806779 (= c!1028768 ((_ is Star!15819) r!7292))))

(declare-fun b!5806780 () Bool)

(declare-fun e!3564633 () Bool)

(assert (=> b!5806780 (= e!3564635 e!3564633)))

(declare-fun res!2448609 () Bool)

(assert (=> b!5806780 (= res!2448609 (not (nullable!5845 (reg!16148 r!7292))))))

(assert (=> b!5806780 (=> (not res!2448609) (not e!3564633))))

(declare-fun bm!453343 () Bool)

(assert (=> bm!453343 (= call!453346 (validRegex!7555 (ite c!1028768 (reg!16148 r!7292) (ite c!1028767 (regTwo!32151 r!7292) (regTwo!32150 r!7292)))))))

(declare-fun b!5806781 () Bool)

(assert (=> b!5806781 (= e!3564634 call!453348)))

(declare-fun b!5806782 () Bool)

(assert (=> b!5806782 (= e!3564633 call!453346)))

(assert (= (and d!1828961 (not res!2448610)) b!5806779))

(assert (= (and b!5806779 c!1028768) b!5806780))

(assert (= (and b!5806779 (not c!1028768)) b!5806776))

(assert (= (and b!5806780 res!2448609) b!5806782))

(assert (= (and b!5806776 c!1028767) b!5806777))

(assert (= (and b!5806776 (not c!1028767)) b!5806778))

(assert (= (and b!5806777 res!2448608) b!5806774))

(assert (= (and b!5806778 (not res!2448612)) b!5806775))

(assert (= (and b!5806775 res!2448611) b!5806781))

(assert (= (or b!5806774 b!5806781) bm!453342))

(assert (= (or b!5806777 b!5806775) bm!453341))

(assert (= (or b!5806782 bm!453342) bm!453343))

(declare-fun m!6746070 () Bool)

(assert (=> bm!453341 m!6746070))

(declare-fun m!6746072 () Bool)

(assert (=> b!5806780 m!6746072))

(declare-fun m!6746074 () Bool)

(assert (=> bm!453343 m!6746074))

(assert (=> start!594936 d!1828961))

(declare-fun d!1828963 () Bool)

(declare-fun c!1028771 () Bool)

(assert (=> d!1828963 (= c!1028771 (isEmpty!35544 s!2326))))

(declare-fun e!3564640 () Bool)

(assert (=> d!1828963 (= (matchZipper!1947 lt!2298829 s!2326) e!3564640)))

(declare-fun b!5806787 () Bool)

(declare-fun nullableZipper!1728 ((InoxSet Context!10406)) Bool)

(assert (=> b!5806787 (= e!3564640 (nullableZipper!1728 lt!2298829))))

(declare-fun b!5806788 () Bool)

(assert (=> b!5806788 (= e!3564640 (matchZipper!1947 (derivationStepZipper!1888 lt!2298829 (head!12251 s!2326)) (tail!11346 s!2326)))))

(assert (= (and d!1828963 c!1028771) b!5806787))

(assert (= (and d!1828963 (not c!1028771)) b!5806788))

(assert (=> d!1828963 m!6745598))

(declare-fun m!6746076 () Bool)

(assert (=> b!5806787 m!6746076))

(assert (=> b!5806788 m!6746042))

(assert (=> b!5806788 m!6746042))

(declare-fun m!6746078 () Bool)

(assert (=> b!5806788 m!6746078))

(assert (=> b!5806788 m!6746046))

(assert (=> b!5806788 m!6746078))

(assert (=> b!5806788 m!6746046))

(declare-fun m!6746080 () Bool)

(assert (=> b!5806788 m!6746080))

(assert (=> b!5806053 d!1828963))

(declare-fun d!1828965 () Bool)

(declare-fun c!1028772 () Bool)

(assert (=> d!1828965 (= c!1028772 (isEmpty!35544 (t!377111 s!2326)))))

(declare-fun e!3564641 () Bool)

(assert (=> d!1828965 (= (matchZipper!1947 (derivationStepZipper!1888 lt!2298829 (h!70082 s!2326)) (t!377111 s!2326)) e!3564641)))

(declare-fun b!5806789 () Bool)

(assert (=> b!5806789 (= e!3564641 (nullableZipper!1728 (derivationStepZipper!1888 lt!2298829 (h!70082 s!2326))))))

(declare-fun b!5806790 () Bool)

(assert (=> b!5806790 (= e!3564641 (matchZipper!1947 (derivationStepZipper!1888 (derivationStepZipper!1888 lt!2298829 (h!70082 s!2326)) (head!12251 (t!377111 s!2326))) (tail!11346 (t!377111 s!2326))))))

(assert (= (and d!1828965 c!1028772) b!5806789))

(assert (= (and d!1828965 (not c!1028772)) b!5806790))

(declare-fun m!6746082 () Bool)

(assert (=> d!1828965 m!6746082))

(assert (=> b!5806789 m!6745604))

(declare-fun m!6746084 () Bool)

(assert (=> b!5806789 m!6746084))

(declare-fun m!6746086 () Bool)

(assert (=> b!5806790 m!6746086))

(assert (=> b!5806790 m!6745604))

(assert (=> b!5806790 m!6746086))

(declare-fun m!6746088 () Bool)

(assert (=> b!5806790 m!6746088))

(declare-fun m!6746090 () Bool)

(assert (=> b!5806790 m!6746090))

(assert (=> b!5806790 m!6746088))

(assert (=> b!5806790 m!6746090))

(declare-fun m!6746092 () Bool)

(assert (=> b!5806790 m!6746092))

(assert (=> b!5806053 d!1828965))

(declare-fun bs!1371049 () Bool)

(declare-fun d!1828967 () Bool)

(assert (= bs!1371049 (and d!1828967 b!5806027)))

(declare-fun lambda!316929 () Int)

(assert (=> bs!1371049 (= lambda!316929 lambda!316850)))

(assert (=> d!1828967 true))

(assert (=> d!1828967 (= (derivationStepZipper!1888 lt!2298829 (h!70082 s!2326)) (flatMap!1426 lt!2298829 lambda!316929))))

(declare-fun bs!1371050 () Bool)

(assert (= bs!1371050 d!1828967))

(declare-fun m!6746094 () Bool)

(assert (=> bs!1371050 m!6746094))

(assert (=> b!5806053 d!1828967))

(assert (=> b!5806043 d!1828833))

(declare-fun d!1828969 () Bool)

(declare-fun lt!2298956 () Regex!15819)

(assert (=> d!1828969 (validRegex!7555 lt!2298956)))

(assert (=> d!1828969 (= lt!2298956 (generalisedUnion!1682 (unfocusZipperList!1247 (Cons!63633 lt!2298850 Nil!63633))))))

(assert (=> d!1828969 (= (unfocusZipper!1561 (Cons!63633 lt!2298850 Nil!63633)) lt!2298956)))

(declare-fun bs!1371051 () Bool)

(assert (= bs!1371051 d!1828969))

(declare-fun m!6746096 () Bool)

(assert (=> bs!1371051 m!6746096))

(declare-fun m!6746098 () Bool)

(assert (=> bs!1371051 m!6746098))

(assert (=> bs!1371051 m!6746098))

(declare-fun m!6746100 () Bool)

(assert (=> bs!1371051 m!6746100))

(assert (=> b!5806035 d!1828969))

(declare-fun bm!453344 () Bool)

(declare-fun call!453353 () List!63756)

(declare-fun call!453350 () List!63756)

(assert (=> bm!453344 (= call!453353 call!453350)))

(declare-fun b!5806793 () Bool)

(declare-fun c!1028777 () Bool)

(assert (=> b!5806793 (= c!1028777 ((_ is Star!15819) r!7292))))

(declare-fun e!3564647 () (InoxSet Context!10406))

(declare-fun e!3564644 () (InoxSet Context!10406))

(assert (=> b!5806793 (= e!3564647 e!3564644)))

(declare-fun c!1028779 () Bool)

(declare-fun c!1028775 () Bool)

(declare-fun bm!453345 () Bool)

(declare-fun c!1028778 () Bool)

(declare-fun call!453349 () (InoxSet Context!10406))

(assert (=> bm!453345 (= call!453349 (derivationStepZipperDown!1157 (ite c!1028778 (regOne!32151 r!7292) (ite c!1028779 (regTwo!32150 r!7292) (ite c!1028775 (regOne!32150 r!7292) (reg!16148 r!7292)))) (ite (or c!1028778 c!1028779) (Context!10407 Nil!63632) (Context!10407 call!453353)) (h!70082 s!2326)))))

(declare-fun bm!453346 () Bool)

(assert (=> bm!453346 (= call!453350 ($colon$colon!1800 (exprs!5703 (Context!10407 Nil!63632)) (ite (or c!1028779 c!1028775) (regTwo!32150 r!7292) r!7292)))))

(declare-fun b!5806794 () Bool)

(assert (=> b!5806794 (= e!3564644 ((as const (Array Context!10406 Bool)) false))))

(declare-fun b!5806795 () Bool)

(declare-fun e!3564642 () (InoxSet Context!10406))

(declare-fun call!453354 () (InoxSet Context!10406))

(assert (=> b!5806795 (= e!3564642 ((_ map or) call!453349 call!453354))))

(declare-fun b!5806796 () Bool)

(declare-fun call!453351 () (InoxSet Context!10406))

(assert (=> b!5806796 (= e!3564647 call!453351)))

(declare-fun b!5806797 () Bool)

(declare-fun e!3564645 () Bool)

(assert (=> b!5806797 (= c!1028779 e!3564645)))

(declare-fun res!2448613 () Bool)

(assert (=> b!5806797 (=> (not res!2448613) (not e!3564645))))

(assert (=> b!5806797 (= res!2448613 ((_ is Concat!24664) r!7292))))

(declare-fun e!3564646 () (InoxSet Context!10406))

(assert (=> b!5806797 (= e!3564642 e!3564646)))

(declare-fun b!5806798 () Bool)

(declare-fun e!3564643 () (InoxSet Context!10406))

(assert (=> b!5806798 (= e!3564643 (store ((as const (Array Context!10406 Bool)) false) (Context!10407 Nil!63632) true))))

(declare-fun b!5806799 () Bool)

(assert (=> b!5806799 (= e!3564645 (nullable!5845 (regOne!32150 r!7292)))))

(declare-fun b!5806800 () Bool)

(declare-fun call!453352 () (InoxSet Context!10406))

(assert (=> b!5806800 (= e!3564646 ((_ map or) call!453354 call!453352))))

(declare-fun b!5806801 () Bool)

(assert (=> b!5806801 (= e!3564644 call!453351)))

(declare-fun bm!453348 () Bool)

(assert (=> bm!453348 (= call!453351 call!453352)))

(declare-fun bm!453349 () Bool)

(assert (=> bm!453349 (= call!453354 (derivationStepZipperDown!1157 (ite c!1028778 (regTwo!32151 r!7292) (regOne!32150 r!7292)) (ite c!1028778 (Context!10407 Nil!63632) (Context!10407 call!453350)) (h!70082 s!2326)))))

(declare-fun b!5806802 () Bool)

(assert (=> b!5806802 (= e!3564643 e!3564642)))

(assert (=> b!5806802 (= c!1028778 ((_ is Union!15819) r!7292))))

(declare-fun b!5806803 () Bool)

(assert (=> b!5806803 (= e!3564646 e!3564647)))

(assert (=> b!5806803 (= c!1028775 ((_ is Concat!24664) r!7292))))

(declare-fun bm!453347 () Bool)

(assert (=> bm!453347 (= call!453352 call!453349)))

(declare-fun d!1828971 () Bool)

(declare-fun c!1028776 () Bool)

(assert (=> d!1828971 (= c!1028776 (and ((_ is ElementMatch!15819) r!7292) (= (c!1028567 r!7292) (h!70082 s!2326))))))

(assert (=> d!1828971 (= (derivationStepZipperDown!1157 r!7292 (Context!10407 Nil!63632) (h!70082 s!2326)) e!3564643)))

(assert (= (and d!1828971 c!1028776) b!5806798))

(assert (= (and d!1828971 (not c!1028776)) b!5806802))

(assert (= (and b!5806802 c!1028778) b!5806795))

(assert (= (and b!5806802 (not c!1028778)) b!5806797))

(assert (= (and b!5806797 res!2448613) b!5806799))

(assert (= (and b!5806797 c!1028779) b!5806800))

(assert (= (and b!5806797 (not c!1028779)) b!5806803))

(assert (= (and b!5806803 c!1028775) b!5806796))

(assert (= (and b!5806803 (not c!1028775)) b!5806793))

(assert (= (and b!5806793 c!1028777) b!5806801))

(assert (= (and b!5806793 (not c!1028777)) b!5806794))

(assert (= (or b!5806796 b!5806801) bm!453344))

(assert (= (or b!5806796 b!5806801) bm!453348))

(assert (= (or b!5806800 bm!453344) bm!453346))

(assert (= (or b!5806800 bm!453348) bm!453347))

(assert (= (or b!5806795 b!5806800) bm!453349))

(assert (= (or b!5806795 bm!453347) bm!453345))

(declare-fun m!6746102 () Bool)

(assert (=> bm!453349 m!6746102))

(declare-fun m!6746104 () Bool)

(assert (=> bm!453346 m!6746104))

(declare-fun m!6746106 () Bool)

(assert (=> b!5806798 m!6746106))

(declare-fun m!6746108 () Bool)

(assert (=> bm!453345 m!6746108))

(declare-fun m!6746110 () Bool)

(assert (=> b!5806799 m!6746110))

(assert (=> b!5806025 d!1828971))

(declare-fun b!5806804 () Bool)

(declare-fun e!3564648 () Bool)

(assert (=> b!5806804 (= e!3564648 (nullable!5845 (h!70080 (exprs!5703 (Context!10407 (Cons!63632 r!7292 Nil!63632))))))))

(declare-fun b!5806805 () Bool)

(declare-fun e!3564650 () (InoxSet Context!10406))

(assert (=> b!5806805 (= e!3564650 ((as const (Array Context!10406 Bool)) false))))

(declare-fun b!5806806 () Bool)

(declare-fun call!453355 () (InoxSet Context!10406))

(assert (=> b!5806806 (= e!3564650 call!453355)))

(declare-fun bm!453350 () Bool)

(assert (=> bm!453350 (= call!453355 (derivationStepZipperDown!1157 (h!70080 (exprs!5703 (Context!10407 (Cons!63632 r!7292 Nil!63632)))) (Context!10407 (t!377109 (exprs!5703 (Context!10407 (Cons!63632 r!7292 Nil!63632))))) (h!70082 s!2326)))))

(declare-fun d!1828973 () Bool)

(declare-fun c!1028780 () Bool)

(assert (=> d!1828973 (= c!1028780 e!3564648)))

(declare-fun res!2448614 () Bool)

(assert (=> d!1828973 (=> (not res!2448614) (not e!3564648))))

(assert (=> d!1828973 (= res!2448614 ((_ is Cons!63632) (exprs!5703 (Context!10407 (Cons!63632 r!7292 Nil!63632)))))))

(declare-fun e!3564649 () (InoxSet Context!10406))

(assert (=> d!1828973 (= (derivationStepZipperUp!1083 (Context!10407 (Cons!63632 r!7292 Nil!63632)) (h!70082 s!2326)) e!3564649)))

(declare-fun b!5806807 () Bool)

(assert (=> b!5806807 (= e!3564649 e!3564650)))

(declare-fun c!1028781 () Bool)

(assert (=> b!5806807 (= c!1028781 ((_ is Cons!63632) (exprs!5703 (Context!10407 (Cons!63632 r!7292 Nil!63632)))))))

(declare-fun b!5806808 () Bool)

(assert (=> b!5806808 (= e!3564649 ((_ map or) call!453355 (derivationStepZipperUp!1083 (Context!10407 (t!377109 (exprs!5703 (Context!10407 (Cons!63632 r!7292 Nil!63632))))) (h!70082 s!2326))))))

(assert (= (and d!1828973 res!2448614) b!5806804))

(assert (= (and d!1828973 c!1028780) b!5806808))

(assert (= (and d!1828973 (not c!1028780)) b!5806807))

(assert (= (and b!5806807 c!1028781) b!5806806))

(assert (= (and b!5806807 (not c!1028781)) b!5806805))

(assert (= (or b!5806808 b!5806806) bm!453350))

(declare-fun m!6746112 () Bool)

(assert (=> b!5806804 m!6746112))

(declare-fun m!6746114 () Bool)

(assert (=> bm!453350 m!6746114))

(declare-fun m!6746116 () Bool)

(assert (=> b!5806808 m!6746116))

(assert (=> b!5806025 d!1828973))

(declare-fun bs!1371052 () Bool)

(declare-fun d!1828975 () Bool)

(assert (= bs!1371052 (and d!1828975 b!5806027)))

(declare-fun lambda!316930 () Int)

(assert (=> bs!1371052 (= lambda!316930 lambda!316850)))

(declare-fun bs!1371053 () Bool)

(assert (= bs!1371053 (and d!1828975 d!1828967)))

(assert (=> bs!1371053 (= lambda!316930 lambda!316929)))

(assert (=> d!1828975 true))

(assert (=> d!1828975 (= (derivationStepZipper!1888 z!1189 (h!70082 s!2326)) (flatMap!1426 z!1189 lambda!316930))))

(declare-fun bs!1371054 () Bool)

(assert (= bs!1371054 d!1828975))

(declare-fun m!6746118 () Bool)

(assert (=> bs!1371054 m!6746118))

(assert (=> b!5806025 d!1828975))

(declare-fun d!1828977 () Bool)

(declare-fun e!3564653 () Bool)

(assert (=> d!1828977 e!3564653))

(declare-fun res!2448617 () Bool)

(assert (=> d!1828977 (=> (not res!2448617) (not e!3564653))))

(declare-fun lt!2298959 () List!63757)

(declare-fun noDuplicate!1714 (List!63757) Bool)

(assert (=> d!1828977 (= res!2448617 (noDuplicate!1714 lt!2298959))))

(declare-fun choose!44074 ((InoxSet Context!10406)) List!63757)

(assert (=> d!1828977 (= lt!2298959 (choose!44074 z!1189))))

(assert (=> d!1828977 (= (toList!9603 z!1189) lt!2298959)))

(declare-fun b!5806811 () Bool)

(declare-fun content!11652 (List!63757) (InoxSet Context!10406))

(assert (=> b!5806811 (= e!3564653 (= (content!11652 lt!2298959) z!1189))))

(assert (= (and d!1828977 res!2448617) b!5806811))

(declare-fun m!6746120 () Bool)

(assert (=> d!1828977 m!6746120))

(declare-fun m!6746122 () Bool)

(assert (=> d!1828977 m!6746122))

(declare-fun m!6746124 () Bool)

(assert (=> b!5806811 m!6746124))

(assert (=> b!5806045 d!1828977))

(declare-fun bs!1371055 () Bool)

(declare-fun d!1828979 () Bool)

(assert (= bs!1371055 (and d!1828979 b!5806027)))

(declare-fun lambda!316931 () Int)

(assert (=> bs!1371055 (= lambda!316931 lambda!316850)))

(declare-fun bs!1371056 () Bool)

(assert (= bs!1371056 (and d!1828979 d!1828967)))

(assert (=> bs!1371056 (= lambda!316931 lambda!316929)))

(declare-fun bs!1371057 () Bool)

(assert (= bs!1371057 (and d!1828979 d!1828975)))

(assert (=> bs!1371057 (= lambda!316931 lambda!316930)))

(assert (=> d!1828979 true))

(assert (=> d!1828979 (= (derivationStepZipper!1888 lt!2298832 (h!70082 s!2326)) (flatMap!1426 lt!2298832 lambda!316931))))

(declare-fun bs!1371058 () Bool)

(assert (= bs!1371058 d!1828979))

(declare-fun m!6746126 () Bool)

(assert (=> bs!1371058 m!6746126))

(assert (=> b!5806037 d!1828979))

(declare-fun d!1828981 () Bool)

(assert (=> d!1828981 (= (flatMap!1426 lt!2298832 lambda!316850) (choose!44063 lt!2298832 lambda!316850))))

(declare-fun bs!1371059 () Bool)

(assert (= bs!1371059 d!1828981))

(declare-fun m!6746128 () Bool)

(assert (=> bs!1371059 m!6746128))

(assert (=> b!5806037 d!1828981))

(declare-fun d!1828983 () Bool)

(assert (=> d!1828983 (= (flatMap!1426 lt!2298833 lambda!316850) (choose!44063 lt!2298833 lambda!316850))))

(declare-fun bs!1371060 () Bool)

(assert (= bs!1371060 d!1828983))

(declare-fun m!6746130 () Bool)

(assert (=> bs!1371060 m!6746130))

(assert (=> b!5806037 d!1828983))

(declare-fun b!5806812 () Bool)

(declare-fun e!3564654 () Bool)

(assert (=> b!5806812 (= e!3564654 (nullable!5845 (h!70080 (exprs!5703 lt!2298854))))))

(declare-fun b!5806813 () Bool)

(declare-fun e!3564656 () (InoxSet Context!10406))

(assert (=> b!5806813 (= e!3564656 ((as const (Array Context!10406 Bool)) false))))

(declare-fun b!5806814 () Bool)

(declare-fun call!453356 () (InoxSet Context!10406))

(assert (=> b!5806814 (= e!3564656 call!453356)))

(declare-fun bm!453351 () Bool)

(assert (=> bm!453351 (= call!453356 (derivationStepZipperDown!1157 (h!70080 (exprs!5703 lt!2298854)) (Context!10407 (t!377109 (exprs!5703 lt!2298854))) (h!70082 s!2326)))))

(declare-fun d!1828985 () Bool)

(declare-fun c!1028782 () Bool)

(assert (=> d!1828985 (= c!1028782 e!3564654)))

(declare-fun res!2448618 () Bool)

(assert (=> d!1828985 (=> (not res!2448618) (not e!3564654))))

(assert (=> d!1828985 (= res!2448618 ((_ is Cons!63632) (exprs!5703 lt!2298854)))))

(declare-fun e!3564655 () (InoxSet Context!10406))

(assert (=> d!1828985 (= (derivationStepZipperUp!1083 lt!2298854 (h!70082 s!2326)) e!3564655)))

(declare-fun b!5806815 () Bool)

(assert (=> b!5806815 (= e!3564655 e!3564656)))

(declare-fun c!1028783 () Bool)

(assert (=> b!5806815 (= c!1028783 ((_ is Cons!63632) (exprs!5703 lt!2298854)))))

(declare-fun b!5806816 () Bool)

(assert (=> b!5806816 (= e!3564655 ((_ map or) call!453356 (derivationStepZipperUp!1083 (Context!10407 (t!377109 (exprs!5703 lt!2298854))) (h!70082 s!2326))))))

(assert (= (and d!1828985 res!2448618) b!5806812))

(assert (= (and d!1828985 c!1028782) b!5806816))

(assert (= (and d!1828985 (not c!1028782)) b!5806815))

(assert (= (and b!5806815 c!1028783) b!5806814))

(assert (= (and b!5806815 (not c!1028783)) b!5806813))

(assert (= (or b!5806816 b!5806814) bm!453351))

(declare-fun m!6746132 () Bool)

(assert (=> b!5806812 m!6746132))

(declare-fun m!6746134 () Bool)

(assert (=> bm!453351 m!6746134))

(declare-fun m!6746136 () Bool)

(assert (=> b!5806816 m!6746136))

(assert (=> b!5806037 d!1828985))

(declare-fun b!5806817 () Bool)

(declare-fun e!3564657 () Bool)

(assert (=> b!5806817 (= e!3564657 (nullable!5845 (h!70080 (exprs!5703 lt!2298850))))))

(declare-fun b!5806818 () Bool)

(declare-fun e!3564659 () (InoxSet Context!10406))

(assert (=> b!5806818 (= e!3564659 ((as const (Array Context!10406 Bool)) false))))

(declare-fun b!5806819 () Bool)

(declare-fun call!453357 () (InoxSet Context!10406))

(assert (=> b!5806819 (= e!3564659 call!453357)))

(declare-fun bm!453352 () Bool)

(assert (=> bm!453352 (= call!453357 (derivationStepZipperDown!1157 (h!70080 (exprs!5703 lt!2298850)) (Context!10407 (t!377109 (exprs!5703 lt!2298850))) (h!70082 s!2326)))))

(declare-fun d!1828987 () Bool)

(declare-fun c!1028784 () Bool)

(assert (=> d!1828987 (= c!1028784 e!3564657)))

(declare-fun res!2448619 () Bool)

(assert (=> d!1828987 (=> (not res!2448619) (not e!3564657))))

(assert (=> d!1828987 (= res!2448619 ((_ is Cons!63632) (exprs!5703 lt!2298850)))))

(declare-fun e!3564658 () (InoxSet Context!10406))

(assert (=> d!1828987 (= (derivationStepZipperUp!1083 lt!2298850 (h!70082 s!2326)) e!3564658)))

(declare-fun b!5806820 () Bool)

(assert (=> b!5806820 (= e!3564658 e!3564659)))

(declare-fun c!1028785 () Bool)

(assert (=> b!5806820 (= c!1028785 ((_ is Cons!63632) (exprs!5703 lt!2298850)))))

(declare-fun b!5806821 () Bool)

(assert (=> b!5806821 (= e!3564658 ((_ map or) call!453357 (derivationStepZipperUp!1083 (Context!10407 (t!377109 (exprs!5703 lt!2298850))) (h!70082 s!2326))))))

(assert (= (and d!1828987 res!2448619) b!5806817))

(assert (= (and d!1828987 c!1028784) b!5806821))

(assert (= (and d!1828987 (not c!1028784)) b!5806820))

(assert (= (and b!5806820 c!1028785) b!5806819))

(assert (= (and b!5806820 (not c!1028785)) b!5806818))

(assert (= (or b!5806821 b!5806819) bm!453352))

(declare-fun m!6746138 () Bool)

(assert (=> b!5806817 m!6746138))

(declare-fun m!6746140 () Bool)

(assert (=> bm!453352 m!6746140))

(declare-fun m!6746142 () Bool)

(assert (=> b!5806821 m!6746142))

(assert (=> b!5806037 d!1828987))

(declare-fun d!1828989 () Bool)

(assert (=> d!1828989 (= (flatMap!1426 lt!2298832 lambda!316850) (dynLambda!24914 lambda!316850 lt!2298850))))

(declare-fun lt!2298960 () Unit!156898)

(assert (=> d!1828989 (= lt!2298960 (choose!44064 lt!2298832 lt!2298850 lambda!316850))))

(assert (=> d!1828989 (= lt!2298832 (store ((as const (Array Context!10406 Bool)) false) lt!2298850 true))))

(assert (=> d!1828989 (= (lemmaFlatMapOnSingletonSet!958 lt!2298832 lt!2298850 lambda!316850) lt!2298960)))

(declare-fun b_lambda!218903 () Bool)

(assert (=> (not b_lambda!218903) (not d!1828989)))

(declare-fun bs!1371061 () Bool)

(assert (= bs!1371061 d!1828989))

(assert (=> bs!1371061 m!6745560))

(declare-fun m!6746144 () Bool)

(assert (=> bs!1371061 m!6746144))

(declare-fun m!6746146 () Bool)

(assert (=> bs!1371061 m!6746146))

(assert (=> bs!1371061 m!6745562))

(assert (=> b!5806037 d!1828989))

(declare-fun d!1828991 () Bool)

(assert (=> d!1828991 (= (flatMap!1426 lt!2298833 lambda!316850) (dynLambda!24914 lambda!316850 lt!2298854))))

(declare-fun lt!2298961 () Unit!156898)

(assert (=> d!1828991 (= lt!2298961 (choose!44064 lt!2298833 lt!2298854 lambda!316850))))

(assert (=> d!1828991 (= lt!2298833 (store ((as const (Array Context!10406 Bool)) false) lt!2298854 true))))

(assert (=> d!1828991 (= (lemmaFlatMapOnSingletonSet!958 lt!2298833 lt!2298854 lambda!316850) lt!2298961)))

(declare-fun b_lambda!218905 () Bool)

(assert (=> (not b_lambda!218905) (not d!1828991)))

(declare-fun bs!1371062 () Bool)

(assert (= bs!1371062 d!1828991))

(assert (=> bs!1371062 m!6745566))

(declare-fun m!6746148 () Bool)

(assert (=> bs!1371062 m!6746148))

(declare-fun m!6746150 () Bool)

(assert (=> bs!1371062 m!6746150))

(assert (=> bs!1371062 m!6745572))

(assert (=> b!5806037 d!1828991))

(declare-fun d!1828993 () Bool)

(assert (=> d!1828993 (= (flatMap!1426 z!1189 lambda!316850) (choose!44063 z!1189 lambda!316850))))

(declare-fun bs!1371063 () Bool)

(assert (= bs!1371063 d!1828993))

(declare-fun m!6746152 () Bool)

(assert (=> bs!1371063 m!6746152))

(assert (=> b!5806027 d!1828993))

(declare-fun b!5806822 () Bool)

(declare-fun e!3564660 () Bool)

(assert (=> b!5806822 (= e!3564660 (nullable!5845 (h!70080 (exprs!5703 (h!70081 zl!343)))))))

(declare-fun b!5806823 () Bool)

(declare-fun e!3564662 () (InoxSet Context!10406))

(assert (=> b!5806823 (= e!3564662 ((as const (Array Context!10406 Bool)) false))))

(declare-fun b!5806824 () Bool)

(declare-fun call!453358 () (InoxSet Context!10406))

(assert (=> b!5806824 (= e!3564662 call!453358)))

(declare-fun bm!453353 () Bool)

(assert (=> bm!453353 (= call!453358 (derivationStepZipperDown!1157 (h!70080 (exprs!5703 (h!70081 zl!343))) (Context!10407 (t!377109 (exprs!5703 (h!70081 zl!343)))) (h!70082 s!2326)))))

(declare-fun d!1828995 () Bool)

(declare-fun c!1028786 () Bool)

(assert (=> d!1828995 (= c!1028786 e!3564660)))

(declare-fun res!2448620 () Bool)

(assert (=> d!1828995 (=> (not res!2448620) (not e!3564660))))

(assert (=> d!1828995 (= res!2448620 ((_ is Cons!63632) (exprs!5703 (h!70081 zl!343))))))

(declare-fun e!3564661 () (InoxSet Context!10406))

(assert (=> d!1828995 (= (derivationStepZipperUp!1083 (h!70081 zl!343) (h!70082 s!2326)) e!3564661)))

(declare-fun b!5806825 () Bool)

(assert (=> b!5806825 (= e!3564661 e!3564662)))

(declare-fun c!1028787 () Bool)

(assert (=> b!5806825 (= c!1028787 ((_ is Cons!63632) (exprs!5703 (h!70081 zl!343))))))

(declare-fun b!5806826 () Bool)

(assert (=> b!5806826 (= e!3564661 ((_ map or) call!453358 (derivationStepZipperUp!1083 (Context!10407 (t!377109 (exprs!5703 (h!70081 zl!343)))) (h!70082 s!2326))))))

(assert (= (and d!1828995 res!2448620) b!5806822))

(assert (= (and d!1828995 c!1028786) b!5806826))

(assert (= (and d!1828995 (not c!1028786)) b!5806825))

(assert (= (and b!5806825 c!1028787) b!5806824))

(assert (= (and b!5806825 (not c!1028787)) b!5806823))

(assert (= (or b!5806826 b!5806824) bm!453353))

(declare-fun m!6746154 () Bool)

(assert (=> b!5806822 m!6746154))

(declare-fun m!6746156 () Bool)

(assert (=> bm!453353 m!6746156))

(declare-fun m!6746158 () Bool)

(assert (=> b!5806826 m!6746158))

(assert (=> b!5806027 d!1828995))

(declare-fun d!1828997 () Bool)

(assert (=> d!1828997 (= (flatMap!1426 z!1189 lambda!316850) (dynLambda!24914 lambda!316850 (h!70081 zl!343)))))

(declare-fun lt!2298962 () Unit!156898)

(assert (=> d!1828997 (= lt!2298962 (choose!44064 z!1189 (h!70081 zl!343) lambda!316850))))

(assert (=> d!1828997 (= z!1189 (store ((as const (Array Context!10406 Bool)) false) (h!70081 zl!343) true))))

(assert (=> d!1828997 (= (lemmaFlatMapOnSingletonSet!958 z!1189 (h!70081 zl!343) lambda!316850) lt!2298962)))

(declare-fun b_lambda!218907 () Bool)

(assert (=> (not b_lambda!218907) (not d!1828997)))

(declare-fun bs!1371064 () Bool)

(assert (= bs!1371064 d!1828997))

(assert (=> bs!1371064 m!6745526))

(declare-fun m!6746160 () Bool)

(assert (=> bs!1371064 m!6746160))

(declare-fun m!6746162 () Bool)

(assert (=> bs!1371064 m!6746162))

(declare-fun m!6746164 () Bool)

(assert (=> bs!1371064 m!6746164))

(assert (=> b!5806027 d!1828997))

(declare-fun bs!1371065 () Bool)

(declare-fun d!1828999 () Bool)

(assert (= bs!1371065 (and d!1828999 d!1828849)))

(declare-fun lambda!316932 () Int)

(assert (=> bs!1371065 (= lambda!316932 lambda!316872)))

(declare-fun bs!1371066 () Bool)

(assert (= bs!1371066 (and d!1828999 d!1828913)))

(assert (=> bs!1371066 (= lambda!316932 lambda!316912)))

(declare-fun bs!1371067 () Bool)

(assert (= bs!1371067 (and d!1828999 d!1828939)))

(assert (=> bs!1371067 (= lambda!316932 lambda!316915)))

(declare-fun bs!1371068 () Bool)

(assert (= bs!1371068 (and d!1828999 d!1828945)))

(assert (=> bs!1371068 (= lambda!316932 lambda!316918)))

(assert (=> d!1828999 (= (inv!82794 setElem!39074) (forall!14927 (exprs!5703 setElem!39074) lambda!316932))))

(declare-fun bs!1371069 () Bool)

(assert (= bs!1371069 d!1828999))

(declare-fun m!6746166 () Bool)

(assert (=> bs!1371069 m!6746166))

(assert (=> setNonEmpty!39074 d!1828999))

(declare-fun b!5806831 () Bool)

(declare-fun e!3564665 () Bool)

(declare-fun tp!1602859 () Bool)

(declare-fun tp!1602860 () Bool)

(assert (=> b!5806831 (= e!3564665 (and tp!1602859 tp!1602860))))

(assert (=> b!5806039 (= tp!1602790 e!3564665)))

(assert (= (and b!5806039 ((_ is Cons!63632) (exprs!5703 setElem!39074))) b!5806831))

(declare-fun e!3564668 () Bool)

(assert (=> b!5806054 (= tp!1602788 e!3564668)))

(declare-fun b!5806842 () Bool)

(assert (=> b!5806842 (= e!3564668 tp_is_empty!40891)))

(declare-fun b!5806845 () Bool)

(declare-fun tp!1602871 () Bool)

(declare-fun tp!1602872 () Bool)

(assert (=> b!5806845 (= e!3564668 (and tp!1602871 tp!1602872))))

(declare-fun b!5806844 () Bool)

(declare-fun tp!1602875 () Bool)

(assert (=> b!5806844 (= e!3564668 tp!1602875)))

(declare-fun b!5806843 () Bool)

(declare-fun tp!1602874 () Bool)

(declare-fun tp!1602873 () Bool)

(assert (=> b!5806843 (= e!3564668 (and tp!1602874 tp!1602873))))

(assert (= (and b!5806054 ((_ is ElementMatch!15819) (regOne!32151 r!7292))) b!5806842))

(assert (= (and b!5806054 ((_ is Concat!24664) (regOne!32151 r!7292))) b!5806843))

(assert (= (and b!5806054 ((_ is Star!15819) (regOne!32151 r!7292))) b!5806844))

(assert (= (and b!5806054 ((_ is Union!15819) (regOne!32151 r!7292))) b!5806845))

(declare-fun e!3564669 () Bool)

(assert (=> b!5806054 (= tp!1602789 e!3564669)))

(declare-fun b!5806846 () Bool)

(assert (=> b!5806846 (= e!3564669 tp_is_empty!40891)))

(declare-fun b!5806849 () Bool)

(declare-fun tp!1602876 () Bool)

(declare-fun tp!1602877 () Bool)

(assert (=> b!5806849 (= e!3564669 (and tp!1602876 tp!1602877))))

(declare-fun b!5806848 () Bool)

(declare-fun tp!1602880 () Bool)

(assert (=> b!5806848 (= e!3564669 tp!1602880)))

(declare-fun b!5806847 () Bool)

(declare-fun tp!1602879 () Bool)

(declare-fun tp!1602878 () Bool)

(assert (=> b!5806847 (= e!3564669 (and tp!1602879 tp!1602878))))

(assert (= (and b!5806054 ((_ is ElementMatch!15819) (regTwo!32151 r!7292))) b!5806846))

(assert (= (and b!5806054 ((_ is Concat!24664) (regTwo!32151 r!7292))) b!5806847))

(assert (= (and b!5806054 ((_ is Star!15819) (regTwo!32151 r!7292))) b!5806848))

(assert (= (and b!5806054 ((_ is Union!15819) (regTwo!32151 r!7292))) b!5806849))

(declare-fun b!5806850 () Bool)

(declare-fun e!3564670 () Bool)

(declare-fun tp!1602881 () Bool)

(declare-fun tp!1602882 () Bool)

(assert (=> b!5806850 (= e!3564670 (and tp!1602881 tp!1602882))))

(assert (=> b!5806024 (= tp!1602795 e!3564670)))

(assert (= (and b!5806024 ((_ is Cons!63632) (exprs!5703 (h!70081 zl!343)))) b!5806850))

(declare-fun e!3564671 () Bool)

(assert (=> b!5806026 (= tp!1602794 e!3564671)))

(declare-fun b!5806851 () Bool)

(assert (=> b!5806851 (= e!3564671 tp_is_empty!40891)))

(declare-fun b!5806854 () Bool)

(declare-fun tp!1602883 () Bool)

(declare-fun tp!1602884 () Bool)

(assert (=> b!5806854 (= e!3564671 (and tp!1602883 tp!1602884))))

(declare-fun b!5806853 () Bool)

(declare-fun tp!1602887 () Bool)

(assert (=> b!5806853 (= e!3564671 tp!1602887)))

(declare-fun b!5806852 () Bool)

(declare-fun tp!1602886 () Bool)

(declare-fun tp!1602885 () Bool)

(assert (=> b!5806852 (= e!3564671 (and tp!1602886 tp!1602885))))

(assert (= (and b!5806026 ((_ is ElementMatch!15819) (reg!16148 r!7292))) b!5806851))

(assert (= (and b!5806026 ((_ is Concat!24664) (reg!16148 r!7292))) b!5806852))

(assert (= (and b!5806026 ((_ is Star!15819) (reg!16148 r!7292))) b!5806853))

(assert (= (and b!5806026 ((_ is Union!15819) (reg!16148 r!7292))) b!5806854))

(declare-fun e!3564672 () Bool)

(assert (=> b!5806046 (= tp!1602793 e!3564672)))

(declare-fun b!5806855 () Bool)

(assert (=> b!5806855 (= e!3564672 tp_is_empty!40891)))

(declare-fun b!5806858 () Bool)

(declare-fun tp!1602888 () Bool)

(declare-fun tp!1602889 () Bool)

(assert (=> b!5806858 (= e!3564672 (and tp!1602888 tp!1602889))))

(declare-fun b!5806857 () Bool)

(declare-fun tp!1602892 () Bool)

(assert (=> b!5806857 (= e!3564672 tp!1602892)))

(declare-fun b!5806856 () Bool)

(declare-fun tp!1602891 () Bool)

(declare-fun tp!1602890 () Bool)

(assert (=> b!5806856 (= e!3564672 (and tp!1602891 tp!1602890))))

(assert (= (and b!5806046 ((_ is ElementMatch!15819) (regOne!32150 r!7292))) b!5806855))

(assert (= (and b!5806046 ((_ is Concat!24664) (regOne!32150 r!7292))) b!5806856))

(assert (= (and b!5806046 ((_ is Star!15819) (regOne!32150 r!7292))) b!5806857))

(assert (= (and b!5806046 ((_ is Union!15819) (regOne!32150 r!7292))) b!5806858))

(declare-fun e!3564673 () Bool)

(assert (=> b!5806046 (= tp!1602787 e!3564673)))

(declare-fun b!5806859 () Bool)

(assert (=> b!5806859 (= e!3564673 tp_is_empty!40891)))

(declare-fun b!5806862 () Bool)

(declare-fun tp!1602893 () Bool)

(declare-fun tp!1602894 () Bool)

(assert (=> b!5806862 (= e!3564673 (and tp!1602893 tp!1602894))))

(declare-fun b!5806861 () Bool)

(declare-fun tp!1602897 () Bool)

(assert (=> b!5806861 (= e!3564673 tp!1602897)))

(declare-fun b!5806860 () Bool)

(declare-fun tp!1602896 () Bool)

(declare-fun tp!1602895 () Bool)

(assert (=> b!5806860 (= e!3564673 (and tp!1602896 tp!1602895))))

(assert (= (and b!5806046 ((_ is ElementMatch!15819) (regTwo!32150 r!7292))) b!5806859))

(assert (= (and b!5806046 ((_ is Concat!24664) (regTwo!32150 r!7292))) b!5806860))

(assert (= (and b!5806046 ((_ is Star!15819) (regTwo!32150 r!7292))) b!5806861))

(assert (= (and b!5806046 ((_ is Union!15819) (regTwo!32150 r!7292))) b!5806862))

(declare-fun b!5806870 () Bool)

(declare-fun e!3564679 () Bool)

(declare-fun tp!1602902 () Bool)

(assert (=> b!5806870 (= e!3564679 tp!1602902)))

(declare-fun e!3564678 () Bool)

(declare-fun tp!1602903 () Bool)

(declare-fun b!5806869 () Bool)

(assert (=> b!5806869 (= e!3564678 (and (inv!82794 (h!70081 (t!377110 zl!343))) e!3564679 tp!1602903))))

(assert (=> b!5806032 (= tp!1602792 e!3564678)))

(assert (= b!5806869 b!5806870))

(assert (= (and b!5806032 ((_ is Cons!63633) (t!377110 zl!343))) b!5806869))

(declare-fun m!6746168 () Bool)

(assert (=> b!5806869 m!6746168))

(declare-fun condSetEmpty!39080 () Bool)

(assert (=> setNonEmpty!39074 (= condSetEmpty!39080 (= setRest!39074 ((as const (Array Context!10406 Bool)) false)))))

(declare-fun setRes!39080 () Bool)

(assert (=> setNonEmpty!39074 (= tp!1602791 setRes!39080)))

(declare-fun setIsEmpty!39080 () Bool)

(assert (=> setIsEmpty!39080 setRes!39080))

(declare-fun e!3564682 () Bool)

(declare-fun setNonEmpty!39080 () Bool)

(declare-fun setElem!39080 () Context!10406)

(declare-fun tp!1602909 () Bool)

(assert (=> setNonEmpty!39080 (= setRes!39080 (and tp!1602909 (inv!82794 setElem!39080) e!3564682))))

(declare-fun setRest!39080 () (InoxSet Context!10406))

(assert (=> setNonEmpty!39080 (= setRest!39074 ((_ map or) (store ((as const (Array Context!10406 Bool)) false) setElem!39080 true) setRest!39080))))

(declare-fun b!5806875 () Bool)

(declare-fun tp!1602908 () Bool)

(assert (=> b!5806875 (= e!3564682 tp!1602908)))

(assert (= (and setNonEmpty!39074 condSetEmpty!39080) setIsEmpty!39080))

(assert (= (and setNonEmpty!39074 (not condSetEmpty!39080)) setNonEmpty!39080))

(assert (= setNonEmpty!39080 b!5806875))

(declare-fun m!6746170 () Bool)

(assert (=> setNonEmpty!39080 m!6746170))

(declare-fun b!5806880 () Bool)

(declare-fun e!3564685 () Bool)

(declare-fun tp!1602912 () Bool)

(assert (=> b!5806880 (= e!3564685 (and tp_is_empty!40891 tp!1602912))))

(assert (=> b!5806047 (= tp!1602796 e!3564685)))

(assert (= (and b!5806047 ((_ is Cons!63634) (t!377111 s!2326))) b!5806880))

(declare-fun b_lambda!218909 () Bool)

(assert (= b_lambda!218903 (or b!5806027 b_lambda!218909)))

(declare-fun bs!1371070 () Bool)

(declare-fun d!1829001 () Bool)

(assert (= bs!1371070 (and d!1829001 b!5806027)))

(assert (=> bs!1371070 (= (dynLambda!24914 lambda!316850 lt!2298850) (derivationStepZipperUp!1083 lt!2298850 (h!70082 s!2326)))))

(assert (=> bs!1371070 m!6745576))

(assert (=> d!1828989 d!1829001))

(declare-fun b_lambda!218911 () Bool)

(assert (= b_lambda!218905 (or b!5806027 b_lambda!218911)))

(declare-fun bs!1371071 () Bool)

(declare-fun d!1829003 () Bool)

(assert (= bs!1371071 (and d!1829003 b!5806027)))

(assert (=> bs!1371071 (= (dynLambda!24914 lambda!316850 lt!2298854) (derivationStepZipperUp!1083 lt!2298854 (h!70082 s!2326)))))

(assert (=> bs!1371071 m!6745568))

(assert (=> d!1828991 d!1829003))

(declare-fun b_lambda!218913 () Bool)

(assert (= b_lambda!218907 (or b!5806027 b_lambda!218913)))

(declare-fun bs!1371072 () Bool)

(declare-fun d!1829005 () Bool)

(assert (= bs!1371072 (and d!1829005 b!5806027)))

(assert (=> bs!1371072 (= (dynLambda!24914 lambda!316850 (h!70081 zl!343)) (derivationStepZipperUp!1083 (h!70081 zl!343) (h!70082 s!2326)))))

(assert (=> bs!1371072 m!6745528))

(assert (=> d!1828997 d!1829005))

(declare-fun b_lambda!218915 () Bool)

(assert (= b_lambda!218885 (or b!5806027 b_lambda!218915)))

(declare-fun bs!1371073 () Bool)

(declare-fun d!1829007 () Bool)

(assert (= bs!1371073 (and d!1829007 b!5806027)))

(assert (=> bs!1371073 (= (dynLambda!24914 lambda!316850 lt!2298843) (derivationStepZipperUp!1083 lt!2298843 (h!70082 s!2326)))))

(assert (=> bs!1371073 m!6745542))

(assert (=> d!1828827 d!1829007))

(check-sat (not b!5806857) (not bm!453331) (not b!5806329) (not b!5806632) (not b!5806633) (not b!5806808) (not bm!453352) (not b!5806230) (not b!5806525) (not bs!1371071) (not bm!453327) (not b!5806327) (not d!1828905) (not b!5806636) tp_is_empty!40891 (not b!5806336) (not bm!453280) (not b!5806843) (not b!5806629) (not d!1828991) (not b!5806817) (not b!5806861) (not b!5806852) (not d!1828855) (not bm!453328) (not b!5806728) (not b!5806682) (not d!1828979) (not b!5806123) (not bm!453341) (not d!1828939) (not d!1828837) (not bm!453345) (not b!5806335) (not b!5806727) (not b!5806644) (not b!5806787) (not b!5806530) (not bm!453333) (not b!5806858) (not d!1828989) (not d!1828965) (not b!5806635) (not b!5806847) (not b!5806529) (not b!5806870) (not b!5806730) (not bm!453349) (not d!1828811) (not b!5806826) (not bs!1371073) (not d!1828833) (not d!1828969) (not b!5806848) (not b!5806856) (not b!5806173) (not b!5806755) (not d!1828857) (not d!1828997) (not d!1828827) (not b!5806850) (not b!5806831) (not d!1828849) (not d!1828879) (not b!5806331) (not d!1828847) (not d!1828873) (not b!5806685) (not b!5806854) (not b!5806229) (not d!1828959) (not b!5806860) (not d!1828835) (not b!5806634) (not b!5806812) (not b!5806744) (not d!1828951) (not bm!453264) (not b!5806719) (not b!5806524) (not b!5806790) (not bm!453350) (not d!1828913) (not d!1828945) (not b!5806752) (not b!5806637) (not bm!453343) (not b!5806804) (not d!1828799) (not d!1828993) (not b!5806780) (not b!5806788) (not b!5806528) (not b!5806753) (not setNonEmpty!39080) (not bm!453267) (not b!5806875) (not b!5806721) (not b!5806880) (not bm!453351) (not b_lambda!218913) (not b!5806816) (not bm!453334) (not bm!453332) (not bm!453353) (not b_lambda!218909) (not d!1828947) (not b!5806746) (not b!5806811) (not bs!1371070) (not b!5806735) (not d!1828975) (not bm!453346) (not d!1828953) (not b!5806333) (not b!5806821) (not d!1828999) (not bm!453263) (not bs!1371072) (not b!5806862) (not b!5806853) (not b!5806822) (not d!1828963) (not b!5806751) (not b!5806330) (not b!5806869) (not d!1828957) (not d!1828983) (not b!5806726) (not b!5806169) (not d!1828967) (not b!5806845) (not d!1828977) (not b!5806738) (not b!5806799) (not b!5806531) (not b!5806849) (not b!5806789) (not b_lambda!218915) (not b!5806844) (not d!1828981) (not d!1828897) (not b_lambda!218911))
(check-sat)
