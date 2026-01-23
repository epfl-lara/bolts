; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!601616 () Bool)

(assert start!601616)

(declare-fun b!5913904 () Bool)

(assert (=> b!5913904 true))

(assert (=> b!5913904 true))

(declare-fun lambda!322606 () Int)

(declare-fun lambda!322605 () Int)

(assert (=> b!5913904 (not (= lambda!322606 lambda!322605))))

(assert (=> b!5913904 true))

(assert (=> b!5913904 true))

(declare-fun b!5913898 () Bool)

(declare-fun res!2479677 () Bool)

(declare-fun e!3621193 () Bool)

(assert (=> b!5913898 (=> res!2479677 e!3621193)))

(declare-datatypes ((C!32196 0))(
  ( (C!32197 (val!25800 Int)) )
))
(declare-datatypes ((Regex!15963 0))(
  ( (ElementMatch!15963 (c!1051009 C!32196)) (Concat!24808 (regOne!32438 Regex!15963) (regTwo!32438 Regex!15963)) (EmptyExpr!15963) (Star!15963 (reg!16292 Regex!15963)) (EmptyLang!15963) (Union!15963 (regOne!32439 Regex!15963) (regTwo!32439 Regex!15963)) )
))
(declare-fun r!7292 () Regex!15963)

(declare-datatypes ((List!64188 0))(
  ( (Nil!64064) (Cons!64064 (h!70512 Regex!15963) (t!377577 List!64188)) )
))
(declare-datatypes ((Context!10694 0))(
  ( (Context!10695 (exprs!5847 List!64188)) )
))
(declare-datatypes ((List!64189 0))(
  ( (Nil!64065) (Cons!64065 (h!70513 Context!10694) (t!377578 List!64189)) )
))
(declare-fun zl!343 () List!64189)

(declare-fun generalisedConcat!1560 (List!64188) Regex!15963)

(assert (=> b!5913898 (= res!2479677 (not (= r!7292 (generalisedConcat!1560 (exprs!5847 (h!70513 zl!343))))))))

(declare-fun b!5913899 () Bool)

(declare-fun e!3621186 () Bool)

(declare-fun e!3621191 () Bool)

(assert (=> b!5913899 (= e!3621186 e!3621191)))

(declare-fun res!2479683 () Bool)

(assert (=> b!5913899 (=> res!2479683 e!3621191)))

(declare-fun lt!2309411 () Bool)

(declare-fun lt!2309408 () Bool)

(assert (=> b!5913899 (= res!2479683 (not (= lt!2309411 lt!2309408)))))

(assert (=> b!5913899 (= lt!2309408 lt!2309411)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10694))

(declare-fun nullableZipper!1790 ((InoxSet Context!10694)) Bool)

(assert (=> b!5913899 (= lt!2309411 (nullableZipper!1790 z!1189))))

(declare-fun nullable!5958 (Regex!15963) Bool)

(assert (=> b!5913899 (= lt!2309408 (nullable!5958 r!7292))))

(declare-datatypes ((Unit!157197 0))(
  ( (Unit!157198) )
))
(declare-fun lt!2309407 () Unit!157197)

(declare-fun lemmaUnfocusPreservesNullability!32 (Regex!15963 (InoxSet Context!10694)) Unit!157197)

(assert (=> b!5913899 (= lt!2309407 (lemmaUnfocusPreservesNullability!32 r!7292 z!1189))))

(declare-fun b!5913900 () Bool)

(declare-fun res!2479680 () Bool)

(assert (=> b!5913900 (=> res!2479680 e!3621193)))

(get-info :version)

(assert (=> b!5913900 (= res!2479680 (not ((_ is Cons!64064) (exprs!5847 (h!70513 zl!343)))))))

(declare-fun b!5913901 () Bool)

(declare-fun res!2479686 () Bool)

(assert (=> b!5913901 (=> res!2479686 e!3621193)))

(assert (=> b!5913901 (= res!2479686 (or ((_ is EmptyExpr!15963) r!7292) ((_ is EmptyLang!15963) r!7292) ((_ is ElementMatch!15963) r!7292) ((_ is Union!15963) r!7292) (not ((_ is Concat!24808) r!7292))))))

(declare-fun b!5913902 () Bool)

(declare-fun e!3621190 () Bool)

(declare-fun tp!1643144 () Bool)

(assert (=> b!5913902 (= e!3621190 tp!1643144)))

(declare-fun b!5913903 () Bool)

(declare-fun res!2479676 () Bool)

(declare-fun e!3621188 () Bool)

(assert (=> b!5913903 (=> (not res!2479676) (not e!3621188))))

(declare-fun unfocusZipper!1705 (List!64189) Regex!15963)

(assert (=> b!5913903 (= res!2479676 (= r!7292 (unfocusZipper!1705 zl!343)))))

(assert (=> b!5913904 (= e!3621193 e!3621186)))

(declare-fun res!2479684 () Bool)

(assert (=> b!5913904 (=> res!2479684 e!3621186)))

(declare-datatypes ((List!64190 0))(
  ( (Nil!64066) (Cons!64066 (h!70514 C!32196) (t!377579 List!64190)) )
))
(declare-fun s!2326 () List!64190)

(declare-fun lt!2309413 () Bool)

(declare-fun lt!2309414 () Bool)

(assert (=> b!5913904 (= res!2479684 (or (not (= lt!2309414 lt!2309413)) (not ((_ is Nil!64066) s!2326))))))

(declare-fun Exists!3033 (Int) Bool)

(assert (=> b!5913904 (= (Exists!3033 lambda!322605) (Exists!3033 lambda!322606))))

(declare-fun lt!2309409 () Unit!157197)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1570 (Regex!15963 Regex!15963 List!64190) Unit!157197)

(assert (=> b!5913904 (= lt!2309409 (lemmaExistCutMatchRandMatchRSpecEquivalent!1570 (regOne!32438 r!7292) (regTwo!32438 r!7292) s!2326))))

(assert (=> b!5913904 (= lt!2309413 (Exists!3033 lambda!322605))))

(declare-datatypes ((tuple2!65884 0))(
  ( (tuple2!65885 (_1!36245 List!64190) (_2!36245 List!64190)) )
))
(declare-datatypes ((Option!15854 0))(
  ( (None!15853) (Some!15853 (v!51947 tuple2!65884)) )
))
(declare-fun isDefined!12557 (Option!15854) Bool)

(declare-fun findConcatSeparation!2268 (Regex!15963 Regex!15963 List!64190 List!64190 List!64190) Option!15854)

(assert (=> b!5913904 (= lt!2309413 (isDefined!12557 (findConcatSeparation!2268 (regOne!32438 r!7292) (regTwo!32438 r!7292) Nil!64066 s!2326 s!2326)))))

(declare-fun lt!2309410 () Unit!157197)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2032 (Regex!15963 Regex!15963 List!64190) Unit!157197)

(assert (=> b!5913904 (= lt!2309410 (lemmaFindConcatSeparationEquivalentToExists!2032 (regOne!32438 r!7292) (regTwo!32438 r!7292) s!2326))))

(declare-fun b!5913905 () Bool)

(declare-fun e!3621185 () Bool)

(declare-fun tp!1643140 () Bool)

(declare-fun tp!1643138 () Bool)

(assert (=> b!5913905 (= e!3621185 (and tp!1643140 tp!1643138))))

(declare-fun setIsEmpty!40128 () Bool)

(declare-fun setRes!40128 () Bool)

(assert (=> setIsEmpty!40128 setRes!40128))

(declare-fun b!5913906 () Bool)

(assert (=> b!5913906 (= e!3621188 (not e!3621193))))

(declare-fun res!2479685 () Bool)

(assert (=> b!5913906 (=> res!2479685 e!3621193)))

(assert (=> b!5913906 (= res!2479685 (not ((_ is Cons!64065) zl!343)))))

(declare-fun matchRSpec!3064 (Regex!15963 List!64190) Bool)

(assert (=> b!5913906 (= lt!2309414 (matchRSpec!3064 r!7292 s!2326))))

(declare-fun matchR!8146 (Regex!15963 List!64190) Bool)

(assert (=> b!5913906 (= lt!2309414 (matchR!8146 r!7292 s!2326))))

(declare-fun lt!2309406 () Unit!157197)

(declare-fun mainMatchTheorem!3064 (Regex!15963 List!64190) Unit!157197)

(assert (=> b!5913906 (= lt!2309406 (mainMatchTheorem!3064 r!7292 s!2326))))

(declare-fun setNonEmpty!40128 () Bool)

(declare-fun e!3621187 () Bool)

(declare-fun setElem!40128 () Context!10694)

(declare-fun tp!1643142 () Bool)

(declare-fun inv!83154 (Context!10694) Bool)

(assert (=> setNonEmpty!40128 (= setRes!40128 (and tp!1643142 (inv!83154 setElem!40128) e!3621187))))

(declare-fun setRest!40128 () (InoxSet Context!10694))

(assert (=> setNonEmpty!40128 (= z!1189 ((_ map or) (store ((as const (Array Context!10694 Bool)) false) setElem!40128 true) setRest!40128))))

(declare-fun b!5913908 () Bool)

(declare-fun lt!2309412 () Bool)

(assert (=> b!5913908 (= e!3621191 (or (not (= lt!2309412 lt!2309414)) (= lt!2309414 lt!2309412)))))

(declare-fun matchZipper!2019 ((InoxSet Context!10694) List!64190) Bool)

(assert (=> b!5913908 (= lt!2309412 (matchZipper!2019 z!1189 s!2326))))

(declare-fun b!5913909 () Bool)

(declare-fun tp_is_empty!41179 () Bool)

(assert (=> b!5913909 (= e!3621185 tp_is_empty!41179)))

(declare-fun b!5913910 () Bool)

(declare-fun e!3621189 () Bool)

(declare-fun tp!1643145 () Bool)

(assert (=> b!5913910 (= e!3621189 (and tp_is_empty!41179 tp!1643145))))

(declare-fun b!5913911 () Bool)

(declare-fun tp!1643146 () Bool)

(declare-fun e!3621192 () Bool)

(assert (=> b!5913911 (= e!3621192 (and (inv!83154 (h!70513 zl!343)) e!3621190 tp!1643146))))

(declare-fun b!5913912 () Bool)

(declare-fun tp!1643143 () Bool)

(declare-fun tp!1643137 () Bool)

(assert (=> b!5913912 (= e!3621185 (and tp!1643143 tp!1643137))))

(declare-fun b!5913913 () Bool)

(declare-fun res!2479681 () Bool)

(assert (=> b!5913913 (=> res!2479681 e!3621193)))

(declare-fun generalisedUnion!1807 (List!64188) Regex!15963)

(declare-fun unfocusZipperList!1384 (List!64189) List!64188)

(assert (=> b!5913913 (= res!2479681 (not (= r!7292 (generalisedUnion!1807 (unfocusZipperList!1384 zl!343)))))))

(declare-fun b!5913914 () Bool)

(declare-fun tp!1643141 () Bool)

(assert (=> b!5913914 (= e!3621185 tp!1643141)))

(declare-fun b!5913915 () Bool)

(declare-fun res!2479679 () Bool)

(assert (=> b!5913915 (=> (not res!2479679) (not e!3621188))))

(declare-fun toList!9747 ((InoxSet Context!10694)) List!64189)

(assert (=> b!5913915 (= res!2479679 (= (toList!9747 z!1189) zl!343))))

(declare-fun b!5913916 () Bool)

(declare-fun tp!1643139 () Bool)

(assert (=> b!5913916 (= e!3621187 tp!1643139)))

(declare-fun res!2479678 () Bool)

(assert (=> start!601616 (=> (not res!2479678) (not e!3621188))))

(declare-fun validRegex!7699 (Regex!15963) Bool)

(assert (=> start!601616 (= res!2479678 (validRegex!7699 r!7292))))

(assert (=> start!601616 e!3621188))

(assert (=> start!601616 e!3621185))

(declare-fun condSetEmpty!40128 () Bool)

(assert (=> start!601616 (= condSetEmpty!40128 (= z!1189 ((as const (Array Context!10694 Bool)) false)))))

(assert (=> start!601616 setRes!40128))

(assert (=> start!601616 e!3621192))

(assert (=> start!601616 e!3621189))

(declare-fun b!5913907 () Bool)

(declare-fun res!2479682 () Bool)

(assert (=> b!5913907 (=> res!2479682 e!3621193)))

(declare-fun isEmpty!35918 (List!64189) Bool)

(assert (=> b!5913907 (= res!2479682 (not (isEmpty!35918 (t!377578 zl!343))))))

(assert (= (and start!601616 res!2479678) b!5913915))

(assert (= (and b!5913915 res!2479679) b!5913903))

(assert (= (and b!5913903 res!2479676) b!5913906))

(assert (= (and b!5913906 (not res!2479685)) b!5913907))

(assert (= (and b!5913907 (not res!2479682)) b!5913898))

(assert (= (and b!5913898 (not res!2479677)) b!5913900))

(assert (= (and b!5913900 (not res!2479680)) b!5913913))

(assert (= (and b!5913913 (not res!2479681)) b!5913901))

(assert (= (and b!5913901 (not res!2479686)) b!5913904))

(assert (= (and b!5913904 (not res!2479684)) b!5913899))

(assert (= (and b!5913899 (not res!2479683)) b!5913908))

(assert (= (and start!601616 ((_ is ElementMatch!15963) r!7292)) b!5913909))

(assert (= (and start!601616 ((_ is Concat!24808) r!7292)) b!5913912))

(assert (= (and start!601616 ((_ is Star!15963) r!7292)) b!5913914))

(assert (= (and start!601616 ((_ is Union!15963) r!7292)) b!5913905))

(assert (= (and start!601616 condSetEmpty!40128) setIsEmpty!40128))

(assert (= (and start!601616 (not condSetEmpty!40128)) setNonEmpty!40128))

(assert (= setNonEmpty!40128 b!5913916))

(assert (= b!5913911 b!5913902))

(assert (= (and start!601616 ((_ is Cons!64065) zl!343)) b!5913911))

(assert (= (and start!601616 ((_ is Cons!64066) s!2326)) b!5913910))

(declare-fun m!6812688 () Bool)

(assert (=> start!601616 m!6812688))

(declare-fun m!6812690 () Bool)

(assert (=> b!5913899 m!6812690))

(declare-fun m!6812692 () Bool)

(assert (=> b!5913899 m!6812692))

(declare-fun m!6812694 () Bool)

(assert (=> b!5913899 m!6812694))

(declare-fun m!6812696 () Bool)

(assert (=> b!5913915 m!6812696))

(declare-fun m!6812698 () Bool)

(assert (=> setNonEmpty!40128 m!6812698))

(declare-fun m!6812700 () Bool)

(assert (=> b!5913906 m!6812700))

(declare-fun m!6812702 () Bool)

(assert (=> b!5913906 m!6812702))

(declare-fun m!6812704 () Bool)

(assert (=> b!5913906 m!6812704))

(declare-fun m!6812706 () Bool)

(assert (=> b!5913903 m!6812706))

(declare-fun m!6812708 () Bool)

(assert (=> b!5913908 m!6812708))

(declare-fun m!6812710 () Bool)

(assert (=> b!5913904 m!6812710))

(declare-fun m!6812712 () Bool)

(assert (=> b!5913904 m!6812712))

(declare-fun m!6812714 () Bool)

(assert (=> b!5913904 m!6812714))

(declare-fun m!6812716 () Bool)

(assert (=> b!5913904 m!6812716))

(declare-fun m!6812718 () Bool)

(assert (=> b!5913904 m!6812718))

(assert (=> b!5913904 m!6812716))

(assert (=> b!5913904 m!6812710))

(declare-fun m!6812720 () Bool)

(assert (=> b!5913904 m!6812720))

(declare-fun m!6812722 () Bool)

(assert (=> b!5913913 m!6812722))

(assert (=> b!5913913 m!6812722))

(declare-fun m!6812724 () Bool)

(assert (=> b!5913913 m!6812724))

(declare-fun m!6812726 () Bool)

(assert (=> b!5913907 m!6812726))

(declare-fun m!6812728 () Bool)

(assert (=> b!5913911 m!6812728))

(declare-fun m!6812730 () Bool)

(assert (=> b!5913898 m!6812730))

(check-sat (not b!5913907) (not b!5913905) (not b!5913916) (not b!5913902) (not setNonEmpty!40128) (not b!5913915) (not start!601616) (not b!5913914) (not b!5913898) (not b!5913910) (not b!5913906) (not b!5913899) (not b!5913904) (not b!5913913) (not b!5913911) tp_is_empty!41179 (not b!5913908) (not b!5913912) (not b!5913903))
(check-sat)
