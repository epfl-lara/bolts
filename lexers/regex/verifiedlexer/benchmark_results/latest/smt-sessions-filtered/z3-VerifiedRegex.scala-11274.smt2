; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!593332 () Bool)

(assert start!593332)

(declare-fun b!5784923 () Bool)

(assert (=> b!5784923 true))

(assert (=> b!5784923 true))

(declare-fun lambda!315271 () Int)

(declare-fun lambda!315270 () Int)

(assert (=> b!5784923 (not (= lambda!315271 lambda!315270))))

(assert (=> b!5784923 true))

(assert (=> b!5784923 true))

(declare-fun lambda!315272 () Int)

(assert (=> b!5784923 (not (= lambda!315272 lambda!315270))))

(assert (=> b!5784923 (not (= lambda!315272 lambda!315271))))

(assert (=> b!5784923 true))

(assert (=> b!5784923 true))

(declare-fun b!5784913 () Bool)

(declare-fun e!3553145 () Bool)

(declare-fun tp!1595949 () Bool)

(assert (=> b!5784913 (= e!3553145 tp!1595949)))

(declare-fun setIsEmpty!38860 () Bool)

(declare-fun setRes!38860 () Bool)

(assert (=> setIsEmpty!38860 setRes!38860))

(declare-fun b!5784914 () Bool)

(declare-fun res!2441091 () Bool)

(declare-fun e!3553138 () Bool)

(assert (=> b!5784914 (=> res!2441091 e!3553138)))

(declare-datatypes ((C!31860 0))(
  ( (C!31861 (val!25632 Int)) )
))
(declare-datatypes ((Regex!15795 0))(
  ( (ElementMatch!15795 (c!1024163 C!31860)) (Concat!24640 (regOne!32102 Regex!15795) (regTwo!32102 Regex!15795)) (EmptyExpr!15795) (Star!15795 (reg!16124 Regex!15795)) (EmptyLang!15795) (Union!15795 (regOne!32103 Regex!15795) (regTwo!32103 Regex!15795)) )
))
(declare-fun r!7292 () Regex!15795)

(get-info :version)

(assert (=> b!5784914 (= res!2441091 (or ((_ is EmptyExpr!15795) r!7292) ((_ is EmptyLang!15795) r!7292) ((_ is ElementMatch!15795) r!7292) ((_ is Union!15795) r!7292) ((_ is Concat!24640) r!7292)))))

(declare-fun b!5784916 () Bool)

(declare-fun e!3553140 () Bool)

(declare-fun lt!2296373 () Bool)

(assert (=> b!5784916 (= e!3553140 lt!2296373)))

(declare-fun b!5784917 () Bool)

(declare-fun res!2441093 () Bool)

(assert (=> b!5784917 (=> res!2441093 e!3553138)))

(declare-datatypes ((List!63684 0))(
  ( (Nil!63560) (Cons!63560 (h!70008 Regex!15795) (t!377023 List!63684)) )
))
(declare-datatypes ((Context!10358 0))(
  ( (Context!10359 (exprs!5679 List!63684)) )
))
(declare-datatypes ((List!63685 0))(
  ( (Nil!63561) (Cons!63561 (h!70009 Context!10358) (t!377024 List!63685)) )
))
(declare-fun zl!343 () List!63685)

(declare-fun isEmpty!35463 (List!63685) Bool)

(assert (=> b!5784917 (= res!2441093 (not (isEmpty!35463 (t!377024 zl!343))))))

(declare-fun b!5784918 () Bool)

(declare-fun res!2441092 () Bool)

(declare-fun e!3553137 () Bool)

(assert (=> b!5784918 (=> (not res!2441092) (not e!3553137))))

(declare-fun unfocusZipper!1537 (List!63685) Regex!15795)

(assert (=> b!5784918 (= res!2441092 (= r!7292 (unfocusZipper!1537 zl!343)))))

(declare-fun b!5784919 () Bool)

(declare-fun res!2441089 () Bool)

(declare-fun e!3553142 () Bool)

(assert (=> b!5784919 (=> res!2441089 e!3553142)))

(declare-datatypes ((List!63686 0))(
  ( (Nil!63562) (Cons!63562 (h!70010 C!31860) (t!377025 List!63686)) )
))
(declare-fun s!2326 () List!63686)

(assert (=> b!5784919 (= res!2441089 (not ((_ is Nil!63562) s!2326)))))

(declare-fun b!5784920 () Bool)

(assert (=> b!5784920 (= e!3553137 (not e!3553138))))

(declare-fun res!2441085 () Bool)

(assert (=> b!5784920 (=> res!2441085 e!3553138)))

(assert (=> b!5784920 (= res!2441085 (not ((_ is Cons!63561) zl!343)))))

(declare-fun lt!2296368 () Bool)

(declare-fun matchRSpec!2898 (Regex!15795 List!63686) Bool)

(assert (=> b!5784920 (= lt!2296368 (matchRSpec!2898 r!7292 s!2326))))

(declare-fun matchR!7980 (Regex!15795 List!63686) Bool)

(assert (=> b!5784920 (= lt!2296368 (matchR!7980 r!7292 s!2326))))

(declare-datatypes ((Unit!156850 0))(
  ( (Unit!156851) )
))
(declare-fun lt!2296367 () Unit!156850)

(declare-fun mainMatchTheorem!2898 (Regex!15795 List!63686) Unit!156850)

(assert (=> b!5784920 (= lt!2296367 (mainMatchTheorem!2898 r!7292 s!2326))))

(declare-fun b!5784921 () Bool)

(declare-fun res!2441094 () Bool)

(assert (=> b!5784921 (=> res!2441094 e!3553138)))

(declare-fun generalisedConcat!1410 (List!63684) Regex!15795)

(assert (=> b!5784921 (= res!2441094 (not (= r!7292 (generalisedConcat!1410 (exprs!5679 (h!70009 zl!343))))))))

(declare-fun b!5784922 () Bool)

(declare-fun res!2441088 () Bool)

(assert (=> b!5784922 (=> res!2441088 e!3553138)))

(declare-fun generalisedUnion!1658 (List!63684) Regex!15795)

(declare-fun unfocusZipperList!1223 (List!63685) List!63684)

(assert (=> b!5784922 (= res!2441088 (not (= r!7292 (generalisedUnion!1658 (unfocusZipperList!1223 zl!343)))))))

(assert (=> b!5784923 (= e!3553138 e!3553142)))

(declare-fun res!2441095 () Bool)

(assert (=> b!5784923 (=> res!2441095 e!3553142)))

(assert (=> b!5784923 (= res!2441095 (not (= lt!2296368 e!3553140)))))

(declare-fun res!2441086 () Bool)

(assert (=> b!5784923 (=> res!2441086 e!3553140)))

(declare-fun isEmpty!35464 (List!63686) Bool)

(assert (=> b!5784923 (= res!2441086 (isEmpty!35464 s!2326))))

(declare-fun Exists!2895 (Int) Bool)

(assert (=> b!5784923 (= (Exists!2895 lambda!315270) (Exists!2895 lambda!315272))))

(declare-fun lt!2296366 () Unit!156850)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1524 (Regex!15795 Regex!15795 List!63686) Unit!156850)

(assert (=> b!5784923 (= lt!2296366 (lemmaExistCutMatchRandMatchRSpecEquivalent!1524 (reg!16124 r!7292) r!7292 s!2326))))

(assert (=> b!5784923 (= (Exists!2895 lambda!315270) (Exists!2895 lambda!315271))))

(declare-fun lt!2296374 () Unit!156850)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!576 (Regex!15795 List!63686) Unit!156850)

(assert (=> b!5784923 (= lt!2296374 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!576 (reg!16124 r!7292) s!2326))))

(assert (=> b!5784923 (= lt!2296373 (Exists!2895 lambda!315270))))

(declare-datatypes ((tuple2!65784 0))(
  ( (tuple2!65785 (_1!36195 List!63686) (_2!36195 List!63686)) )
))
(declare-datatypes ((Option!15804 0))(
  ( (None!15803) (Some!15803 (v!51863 tuple2!65784)) )
))
(declare-fun isDefined!12507 (Option!15804) Bool)

(declare-fun findConcatSeparation!2218 (Regex!15795 Regex!15795 List!63686 List!63686 List!63686) Option!15804)

(assert (=> b!5784923 (= lt!2296373 (isDefined!12507 (findConcatSeparation!2218 (reg!16124 r!7292) r!7292 Nil!63562 s!2326 s!2326)))))

(declare-fun lt!2296372 () Unit!156850)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1982 (Regex!15795 Regex!15795 List!63686) Unit!156850)

(assert (=> b!5784923 (= lt!2296372 (lemmaFindConcatSeparationEquivalentToExists!1982 (reg!16124 r!7292) r!7292 s!2326))))

(declare-fun e!3553144 () Bool)

(declare-fun b!5784924 () Bool)

(declare-fun tp!1595944 () Bool)

(declare-fun e!3553143 () Bool)

(declare-fun inv!82734 (Context!10358) Bool)

(assert (=> b!5784924 (= e!3553144 (and (inv!82734 (h!70009 zl!343)) e!3553143 tp!1595944))))

(declare-fun b!5784925 () Bool)

(declare-fun res!2441096 () Bool)

(assert (=> b!5784925 (=> (not res!2441096) (not e!3553137))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10358))

(declare-fun toList!9579 ((InoxSet Context!10358)) List!63685)

(assert (=> b!5784925 (= res!2441096 (= (toList!9579 z!1189) zl!343))))

(declare-fun b!5784926 () Bool)

(declare-fun e!3553141 () Bool)

(declare-fun tp_is_empty!40843 () Bool)

(declare-fun tp!1595952 () Bool)

(assert (=> b!5784926 (= e!3553141 (and tp_is_empty!40843 tp!1595952))))

(declare-fun b!5784927 () Bool)

(declare-fun tp!1595945 () Bool)

(declare-fun tp!1595946 () Bool)

(assert (=> b!5784927 (= e!3553145 (and tp!1595945 tp!1595946))))

(declare-fun res!2441087 () Bool)

(assert (=> start!593332 (=> (not res!2441087) (not e!3553137))))

(declare-fun validRegex!7531 (Regex!15795) Bool)

(assert (=> start!593332 (= res!2441087 (validRegex!7531 r!7292))))

(assert (=> start!593332 e!3553137))

(assert (=> start!593332 e!3553145))

(declare-fun condSetEmpty!38860 () Bool)

(assert (=> start!593332 (= condSetEmpty!38860 (= z!1189 ((as const (Array Context!10358 Bool)) false)))))

(assert (=> start!593332 setRes!38860))

(assert (=> start!593332 e!3553144))

(assert (=> start!593332 e!3553141))

(declare-fun b!5784915 () Bool)

(declare-fun tp!1595948 () Bool)

(assert (=> b!5784915 (= e!3553143 tp!1595948)))

(declare-fun b!5784928 () Bool)

(declare-fun lt!2296371 () Bool)

(declare-fun lt!2296369 () Bool)

(assert (=> b!5784928 (= e!3553142 (= lt!2296371 lt!2296369))))

(assert (=> b!5784928 (= lt!2296369 lt!2296371)))

(declare-fun nullableZipper!1716 ((InoxSet Context!10358)) Bool)

(assert (=> b!5784928 (= lt!2296371 (nullableZipper!1716 z!1189))))

(declare-fun nullable!5827 (Regex!15795) Bool)

(assert (=> b!5784928 (= lt!2296369 (nullable!5827 r!7292))))

(declare-fun lt!2296370 () Unit!156850)

(declare-fun lemmaUnfocusPreservesNullability!22 (Regex!15795 (InoxSet Context!10358)) Unit!156850)

(assert (=> b!5784928 (= lt!2296370 (lemmaUnfocusPreservesNullability!22 r!7292 z!1189))))

(declare-fun setElem!38860 () Context!10358)

(declare-fun tp!1595950 () Bool)

(declare-fun setNonEmpty!38860 () Bool)

(declare-fun e!3553139 () Bool)

(assert (=> setNonEmpty!38860 (= setRes!38860 (and tp!1595950 (inv!82734 setElem!38860) e!3553139))))

(declare-fun setRest!38860 () (InoxSet Context!10358))

(assert (=> setNonEmpty!38860 (= z!1189 ((_ map or) (store ((as const (Array Context!10358 Bool)) false) setElem!38860 true) setRest!38860))))

(declare-fun b!5784929 () Bool)

(declare-fun tp!1595947 () Bool)

(declare-fun tp!1595951 () Bool)

(assert (=> b!5784929 (= e!3553145 (and tp!1595947 tp!1595951))))

(declare-fun b!5784930 () Bool)

(assert (=> b!5784930 (= e!3553145 tp_is_empty!40843)))

(declare-fun b!5784931 () Bool)

(declare-fun res!2441090 () Bool)

(assert (=> b!5784931 (=> res!2441090 e!3553138)))

(assert (=> b!5784931 (= res!2441090 (not ((_ is Cons!63560) (exprs!5679 (h!70009 zl!343)))))))

(declare-fun b!5784932 () Bool)

(declare-fun tp!1595943 () Bool)

(assert (=> b!5784932 (= e!3553139 tp!1595943)))

(assert (= (and start!593332 res!2441087) b!5784925))

(assert (= (and b!5784925 res!2441096) b!5784918))

(assert (= (and b!5784918 res!2441092) b!5784920))

(assert (= (and b!5784920 (not res!2441085)) b!5784917))

(assert (= (and b!5784917 (not res!2441093)) b!5784921))

(assert (= (and b!5784921 (not res!2441094)) b!5784931))

(assert (= (and b!5784931 (not res!2441090)) b!5784922))

(assert (= (and b!5784922 (not res!2441088)) b!5784914))

(assert (= (and b!5784914 (not res!2441091)) b!5784923))

(assert (= (and b!5784923 (not res!2441086)) b!5784916))

(assert (= (and b!5784923 (not res!2441095)) b!5784919))

(assert (= (and b!5784919 (not res!2441089)) b!5784928))

(assert (= (and start!593332 ((_ is ElementMatch!15795) r!7292)) b!5784930))

(assert (= (and start!593332 ((_ is Concat!24640) r!7292)) b!5784927))

(assert (= (and start!593332 ((_ is Star!15795) r!7292)) b!5784913))

(assert (= (and start!593332 ((_ is Union!15795) r!7292)) b!5784929))

(assert (= (and start!593332 condSetEmpty!38860) setIsEmpty!38860))

(assert (= (and start!593332 (not condSetEmpty!38860)) setNonEmpty!38860))

(assert (= setNonEmpty!38860 b!5784932))

(assert (= b!5784924 b!5784915))

(assert (= (and start!593332 ((_ is Cons!63561) zl!343)) b!5784924))

(assert (= (and start!593332 ((_ is Cons!63562) s!2326)) b!5784926))

(declare-fun m!6730264 () Bool)

(assert (=> b!5784925 m!6730264))

(declare-fun m!6730266 () Bool)

(assert (=> b!5784922 m!6730266))

(assert (=> b!5784922 m!6730266))

(declare-fun m!6730268 () Bool)

(assert (=> b!5784922 m!6730268))

(declare-fun m!6730270 () Bool)

(assert (=> b!5784928 m!6730270))

(declare-fun m!6730272 () Bool)

(assert (=> b!5784928 m!6730272))

(declare-fun m!6730274 () Bool)

(assert (=> b!5784928 m!6730274))

(declare-fun m!6730276 () Bool)

(assert (=> b!5784923 m!6730276))

(declare-fun m!6730278 () Bool)

(assert (=> b!5784923 m!6730278))

(declare-fun m!6730280 () Bool)

(assert (=> b!5784923 m!6730280))

(declare-fun m!6730282 () Bool)

(assert (=> b!5784923 m!6730282))

(declare-fun m!6730284 () Bool)

(assert (=> b!5784923 m!6730284))

(declare-fun m!6730286 () Bool)

(assert (=> b!5784923 m!6730286))

(declare-fun m!6730288 () Bool)

(assert (=> b!5784923 m!6730288))

(assert (=> b!5784923 m!6730286))

(declare-fun m!6730290 () Bool)

(assert (=> b!5784923 m!6730290))

(declare-fun m!6730292 () Bool)

(assert (=> b!5784923 m!6730292))

(assert (=> b!5784923 m!6730282))

(assert (=> b!5784923 m!6730282))

(declare-fun m!6730294 () Bool)

(assert (=> b!5784920 m!6730294))

(declare-fun m!6730296 () Bool)

(assert (=> b!5784920 m!6730296))

(declare-fun m!6730298 () Bool)

(assert (=> b!5784920 m!6730298))

(declare-fun m!6730300 () Bool)

(assert (=> setNonEmpty!38860 m!6730300))

(declare-fun m!6730302 () Bool)

(assert (=> b!5784917 m!6730302))

(declare-fun m!6730304 () Bool)

(assert (=> start!593332 m!6730304))

(declare-fun m!6730306 () Bool)

(assert (=> b!5784918 m!6730306))

(declare-fun m!6730308 () Bool)

(assert (=> b!5784921 m!6730308))

(declare-fun m!6730310 () Bool)

(assert (=> b!5784924 m!6730310))

(check-sat (not start!593332) (not b!5784928) (not b!5784913) (not b!5784925) (not b!5784932) (not b!5784926) (not setNonEmpty!38860) (not b!5784917) (not b!5784923) (not b!5784927) (not b!5784924) tp_is_empty!40843 (not b!5784921) (not b!5784918) (not b!5784922) (not b!5784920) (not b!5784915) (not b!5784929))
(check-sat)
