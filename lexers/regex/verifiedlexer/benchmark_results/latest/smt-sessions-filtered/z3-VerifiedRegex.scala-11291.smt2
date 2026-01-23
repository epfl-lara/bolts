; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595516 () Bool)

(assert start!595516)

(declare-fun b!5812056 () Bool)

(assert (=> b!5812056 true))

(assert (=> b!5812056 true))

(declare-fun lambda!317544 () Int)

(declare-fun lambda!317543 () Int)

(assert (=> b!5812056 (not (= lambda!317544 lambda!317543))))

(assert (=> b!5812056 true))

(assert (=> b!5812056 true))

(declare-fun lambda!317545 () Int)

(assert (=> b!5812056 (not (= lambda!317545 lambda!317543))))

(assert (=> b!5812056 (not (= lambda!317545 lambda!317544))))

(assert (=> b!5812056 true))

(assert (=> b!5812056 true))

(declare-fun b!5812074 () Bool)

(assert (=> b!5812074 true))

(declare-fun b!5812083 () Bool)

(assert (=> b!5812083 true))

(declare-fun e!3567492 () Bool)

(declare-fun e!3567485 () Bool)

(declare-fun b!5812053 () Bool)

(declare-fun tp!1603898 () Bool)

(declare-datatypes ((C!31928 0))(
  ( (C!31929 (val!25666 Int)) )
))
(declare-datatypes ((Regex!15829 0))(
  ( (ElementMatch!15829 (c!1029931 C!31928)) (Concat!24674 (regOne!32170 Regex!15829) (regTwo!32170 Regex!15829)) (EmptyExpr!15829) (Star!15829 (reg!16158 Regex!15829)) (EmptyLang!15829) (Union!15829 (regOne!32171 Regex!15829) (regTwo!32171 Regex!15829)) )
))
(declare-datatypes ((List!63786 0))(
  ( (Nil!63662) (Cons!63662 (h!70110 Regex!15829) (t!377141 List!63786)) )
))
(declare-datatypes ((Context!10426 0))(
  ( (Context!10427 (exprs!5713 List!63786)) )
))
(declare-datatypes ((List!63787 0))(
  ( (Nil!63663) (Cons!63663 (h!70111 Context!10426) (t!377142 List!63787)) )
))
(declare-fun zl!343 () List!63787)

(declare-fun inv!82819 (Context!10426) Bool)

(assert (=> b!5812053 (= e!3567492 (and (inv!82819 (h!70111 zl!343)) e!3567485 tp!1603898))))

(declare-fun b!5812054 () Bool)

(declare-fun e!3567482 () Bool)

(declare-fun e!3567477 () Bool)

(assert (=> b!5812054 (= e!3567482 (not e!3567477))))

(declare-fun res!2450910 () Bool)

(assert (=> b!5812054 (=> res!2450910 e!3567477)))

(get-info :version)

(assert (=> b!5812054 (= res!2450910 (not ((_ is Cons!63663) zl!343)))))

(declare-fun lt!2300247 () Bool)

(declare-fun r!7292 () Regex!15829)

(declare-datatypes ((List!63788 0))(
  ( (Nil!63664) (Cons!63664 (h!70112 C!31928) (t!377143 List!63788)) )
))
(declare-fun s!2326 () List!63788)

(declare-fun matchRSpec!2932 (Regex!15829 List!63788) Bool)

(assert (=> b!5812054 (= lt!2300247 (matchRSpec!2932 r!7292 s!2326))))

(declare-fun matchR!8014 (Regex!15829 List!63788) Bool)

(assert (=> b!5812054 (= lt!2300247 (matchR!8014 r!7292 s!2326))))

(declare-datatypes ((Unit!156918 0))(
  ( (Unit!156919) )
))
(declare-fun lt!2300239 () Unit!156918)

(declare-fun mainMatchTheorem!2932 (Regex!15829 List!63788) Unit!156918)

(assert (=> b!5812054 (= lt!2300239 (mainMatchTheorem!2932 r!7292 s!2326))))

(declare-fun b!5812055 () Bool)

(declare-fun e!3567484 () Bool)

(declare-fun tp_is_empty!40911 () Bool)

(declare-fun tp!1603901 () Bool)

(assert (=> b!5812055 (= e!3567484 (and tp_is_empty!40911 tp!1603901))))

(declare-fun setIsEmpty!39148 () Bool)

(declare-fun setRes!39148 () Bool)

(assert (=> setIsEmpty!39148 setRes!39148))

(declare-fun e!3567479 () Bool)

(assert (=> b!5812056 (= e!3567477 e!3567479)))

(declare-fun res!2450900 () Bool)

(assert (=> b!5812056 (=> res!2450900 e!3567479)))

(declare-fun e!3567486 () Bool)

(assert (=> b!5812056 (= res!2450900 (not (= lt!2300247 e!3567486)))))

(declare-fun res!2450914 () Bool)

(assert (=> b!5812056 (=> res!2450914 e!3567486)))

(declare-fun isEmpty!35579 (List!63788) Bool)

(assert (=> b!5812056 (= res!2450914 (isEmpty!35579 s!2326))))

(declare-fun Exists!2929 (Int) Bool)

(assert (=> b!5812056 (= (Exists!2929 lambda!317543) (Exists!2929 lambda!317545))))

(declare-fun lt!2300235 () Unit!156918)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1558 (Regex!15829 Regex!15829 List!63788) Unit!156918)

(assert (=> b!5812056 (= lt!2300235 (lemmaExistCutMatchRandMatchRSpecEquivalent!1558 (reg!16158 r!7292) r!7292 s!2326))))

(assert (=> b!5812056 (= (Exists!2929 lambda!317543) (Exists!2929 lambda!317544))))

(declare-fun lt!2300230 () Unit!156918)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!610 (Regex!15829 List!63788) Unit!156918)

(assert (=> b!5812056 (= lt!2300230 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!610 (reg!16158 r!7292) s!2326))))

(declare-fun lt!2300232 () Bool)

(assert (=> b!5812056 (= lt!2300232 (Exists!2929 lambda!317543))))

(declare-datatypes ((tuple2!65852 0))(
  ( (tuple2!65853 (_1!36229 List!63788) (_2!36229 List!63788)) )
))
(declare-datatypes ((Option!15838 0))(
  ( (None!15837) (Some!15837 (v!51901 tuple2!65852)) )
))
(declare-fun isDefined!12541 (Option!15838) Bool)

(declare-fun findConcatSeparation!2252 (Regex!15829 Regex!15829 List!63788 List!63788 List!63788) Option!15838)

(assert (=> b!5812056 (= lt!2300232 (isDefined!12541 (findConcatSeparation!2252 (reg!16158 r!7292) r!7292 Nil!63664 s!2326 s!2326)))))

(declare-fun lt!2300229 () Unit!156918)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2016 (Regex!15829 Regex!15829 List!63788) Unit!156918)

(assert (=> b!5812056 (= lt!2300229 (lemmaFindConcatSeparationEquivalentToExists!2016 (reg!16158 r!7292) r!7292 s!2326))))

(declare-fun b!5812057 () Bool)

(declare-fun e!3567490 () Bool)

(declare-fun e!3567481 () Bool)

(assert (=> b!5812057 (= e!3567490 e!3567481)))

(declare-fun res!2450913 () Bool)

(assert (=> b!5812057 (=> res!2450913 e!3567481)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2300228 () (InoxSet Context!10426))

(declare-fun lt!2300231 () Context!10426)

(declare-fun derivationStepZipperDown!1167 (Regex!15829 Context!10426 C!31928) (InoxSet Context!10426))

(assert (=> b!5812057 (= res!2450913 (not (= lt!2300228 (derivationStepZipperDown!1167 (reg!16158 r!7292) lt!2300231 (h!70112 s!2326)))))))

(declare-fun lt!2300250 () List!63786)

(assert (=> b!5812057 (= lt!2300231 (Context!10427 lt!2300250))))

(declare-fun lambda!317546 () Int)

(declare-fun lt!2300238 () (InoxSet Context!10426))

(declare-fun lt!2300236 () Context!10426)

(declare-fun flatMap!1436 ((InoxSet Context!10426) Int) (InoxSet Context!10426))

(declare-fun derivationStepZipperUp!1093 (Context!10426 C!31928) (InoxSet Context!10426))

(assert (=> b!5812057 (= (flatMap!1436 lt!2300238 lambda!317546) (derivationStepZipperUp!1093 lt!2300236 (h!70112 s!2326)))))

(declare-fun lt!2300244 () Unit!156918)

(declare-fun lemmaFlatMapOnSingletonSet!968 ((InoxSet Context!10426) Context!10426 Int) Unit!156918)

(assert (=> b!5812057 (= lt!2300244 (lemmaFlatMapOnSingletonSet!968 lt!2300238 lt!2300236 lambda!317546))))

(declare-fun lt!2300251 () (InoxSet Context!10426))

(assert (=> b!5812057 (= lt!2300251 (derivationStepZipperUp!1093 lt!2300236 (h!70112 s!2326)))))

(assert (=> b!5812057 (= lt!2300238 (store ((as const (Array Context!10426 Bool)) false) lt!2300236 true))))

(assert (=> b!5812057 (= lt!2300236 (Context!10427 (Cons!63662 (reg!16158 r!7292) lt!2300250)))))

(assert (=> b!5812057 (= lt!2300250 (Cons!63662 r!7292 Nil!63662))))

(declare-fun b!5812058 () Bool)

(declare-fun res!2450915 () Bool)

(assert (=> b!5812058 (=> res!2450915 e!3567481)))

(declare-fun lt!2300226 () Regex!15829)

(assert (=> b!5812058 (= res!2450915 (or (not (= lt!2300226 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5812059 () Bool)

(declare-fun res!2450920 () Bool)

(assert (=> b!5812059 (=> res!2450920 e!3567477)))

(assert (=> b!5812059 (= res!2450920 (not ((_ is Cons!63662) (exprs!5713 (h!70111 zl!343)))))))

(declare-fun b!5812060 () Bool)

(declare-fun e!3567488 () Bool)

(declare-fun e!3567491 () Bool)

(assert (=> b!5812060 (= e!3567488 e!3567491)))

(declare-fun res!2450907 () Bool)

(assert (=> b!5812060 (=> res!2450907 e!3567491)))

(declare-fun lt!2300256 () Bool)

(assert (=> b!5812060 (= res!2450907 lt!2300256)))

(declare-fun lt!2300243 () Regex!15829)

(assert (=> b!5812060 (= lt!2300256 (matchRSpec!2932 lt!2300243 s!2326))))

(assert (=> b!5812060 (= lt!2300256 (matchR!8014 lt!2300243 s!2326))))

(declare-fun lt!2300246 () Unit!156918)

(assert (=> b!5812060 (= lt!2300246 (mainMatchTheorem!2932 lt!2300243 s!2326))))

(declare-fun b!5812062 () Bool)

(declare-fun res!2450912 () Bool)

(assert (=> b!5812062 (=> res!2450912 e!3567491)))

(declare-fun z!1189 () (InoxSet Context!10426))

(declare-fun matchZipper!1957 ((InoxSet Context!10426) List!63788) Bool)

(assert (=> b!5812062 (= res!2450912 (not (matchZipper!1957 z!1189 s!2326)))))

(declare-fun b!5812063 () Bool)

(declare-fun res!2450902 () Bool)

(declare-fun e!3567487 () Bool)

(assert (=> b!5812063 (=> (not res!2450902) (not e!3567487))))

(declare-fun toList!9613 ((InoxSet Context!10426)) List!63787)

(assert (=> b!5812063 (= res!2450902 (= (toList!9613 z!1189) zl!343))))

(declare-fun setElem!39148 () Context!10426)

(declare-fun setNonEmpty!39148 () Bool)

(declare-fun tp!1603899 () Bool)

(declare-fun e!3567478 () Bool)

(assert (=> setNonEmpty!39148 (= setRes!39148 (and tp!1603899 (inv!82819 setElem!39148) e!3567478))))

(declare-fun setRest!39148 () (InoxSet Context!10426))

(assert (=> setNonEmpty!39148 (= z!1189 ((_ map or) (store ((as const (Array Context!10426 Bool)) false) setElem!39148 true) setRest!39148))))

(declare-fun b!5812064 () Bool)

(declare-fun res!2450905 () Bool)

(assert (=> b!5812064 (=> res!2450905 e!3567477)))

(assert (=> b!5812064 (= res!2450905 (or ((_ is EmptyExpr!15829) r!7292) ((_ is EmptyLang!15829) r!7292) ((_ is ElementMatch!15829) r!7292) ((_ is Union!15829) r!7292) ((_ is Concat!24674) r!7292)))))

(declare-fun b!5812065 () Bool)

(declare-fun e!3567480 () Bool)

(assert (=> b!5812065 (= e!3567480 e!3567488)))

(declare-fun res!2450901 () Bool)

(assert (=> b!5812065 (=> res!2450901 e!3567488)))

(declare-fun lt!2300233 () (InoxSet Context!10426))

(declare-fun derivationStepZipper!1898 ((InoxSet Context!10426) C!31928) (InoxSet Context!10426))

(assert (=> b!5812065 (= res!2450901 (not (= lt!2300228 (derivationStepZipper!1898 lt!2300233 (h!70112 s!2326)))))))

(assert (=> b!5812065 (= (flatMap!1436 lt!2300233 lambda!317546) (derivationStepZipperUp!1093 lt!2300231 (h!70112 s!2326)))))

(declare-fun lt!2300240 () Unit!156918)

(assert (=> b!5812065 (= lt!2300240 (lemmaFlatMapOnSingletonSet!968 lt!2300233 lt!2300231 lambda!317546))))

(declare-fun lt!2300245 () (InoxSet Context!10426))

(declare-fun lt!2300252 () Context!10426)

(assert (=> b!5812065 (= (flatMap!1436 lt!2300245 lambda!317546) (derivationStepZipperUp!1093 lt!2300252 (h!70112 s!2326)))))

(declare-fun lt!2300241 () Unit!156918)

(assert (=> b!5812065 (= lt!2300241 (lemmaFlatMapOnSingletonSet!968 lt!2300245 lt!2300252 lambda!317546))))

(declare-fun lt!2300225 () (InoxSet Context!10426))

(assert (=> b!5812065 (= lt!2300225 (derivationStepZipperUp!1093 lt!2300231 (h!70112 s!2326)))))

(declare-fun lt!2300253 () (InoxSet Context!10426))

(assert (=> b!5812065 (= lt!2300253 (derivationStepZipperUp!1093 lt!2300252 (h!70112 s!2326)))))

(assert (=> b!5812065 (= lt!2300233 (store ((as const (Array Context!10426 Bool)) false) lt!2300231 true))))

(assert (=> b!5812065 (= lt!2300245 (store ((as const (Array Context!10426 Bool)) false) lt!2300252 true))))

(assert (=> b!5812065 (= lt!2300252 (Context!10427 (Cons!63662 (reg!16158 r!7292) Nil!63662)))))

(declare-fun b!5812066 () Bool)

(declare-fun e!3567489 () Bool)

(declare-fun lt!2300254 () tuple2!65852)

(declare-fun ++!14042 (List!63788 List!63788) List!63788)

(assert (=> b!5812066 (= e!3567489 (= s!2326 (++!14042 (_1!36229 lt!2300254) (_2!36229 lt!2300254))))))

(declare-fun lt!2300227 () Option!15838)

(declare-fun get!21979 (Option!15838) tuple2!65852)

(assert (=> b!5812066 (= lt!2300254 (get!21979 lt!2300227))))

(assert (=> b!5812066 (isDefined!12541 lt!2300227)))

(declare-fun findConcatSeparationZippers!146 ((InoxSet Context!10426) (InoxSet Context!10426) List!63788 List!63788 List!63788) Option!15838)

(assert (=> b!5812066 (= lt!2300227 (findConcatSeparationZippers!146 lt!2300245 lt!2300233 Nil!63664 s!2326 s!2326))))

(declare-fun lt!2300248 () Unit!156918)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!146 ((InoxSet Context!10426) Context!10426 List!63788) Unit!156918)

(assert (=> b!5812066 (= lt!2300248 (lemmaConcatZipperMatchesStringThenFindConcatDefined!146 lt!2300245 lt!2300231 s!2326))))

(declare-fun b!5812067 () Bool)

(declare-fun res!2450922 () Bool)

(assert (=> b!5812067 (=> res!2450922 e!3567488)))

(declare-fun unfocusZipper!1571 (List!63787) Regex!15829)

(assert (=> b!5812067 (= res!2450922 (not (= (unfocusZipper!1571 (Cons!63663 lt!2300252 Nil!63663)) (reg!16158 r!7292))))))

(declare-fun b!5812068 () Bool)

(declare-fun e!3567483 () Bool)

(assert (=> b!5812068 (= e!3567483 tp_is_empty!40911)))

(declare-fun b!5812069 () Bool)

(declare-fun tp!1603903 () Bool)

(assert (=> b!5812069 (= e!3567478 tp!1603903)))

(declare-fun b!5812070 () Bool)

(assert (=> b!5812070 (= e!3567486 lt!2300232)))

(declare-fun b!5812071 () Bool)

(declare-fun res!2450917 () Bool)

(assert (=> b!5812071 (=> res!2450917 e!3567481)))

(assert (=> b!5812071 (= res!2450917 (not (= (matchZipper!1957 lt!2300238 s!2326) (matchZipper!1957 (derivationStepZipper!1898 lt!2300238 (h!70112 s!2326)) (t!377143 s!2326)))))))

(declare-fun b!5812072 () Bool)

(declare-fun tp!1603895 () Bool)

(assert (=> b!5812072 (= e!3567485 tp!1603895)))

(declare-fun b!5812073 () Bool)

(declare-fun res!2450911 () Bool)

(assert (=> b!5812073 (=> res!2450911 e!3567479)))

(assert (=> b!5812073 (= res!2450911 ((_ is Nil!63664) s!2326))))

(declare-fun e!3567493 () Bool)

(assert (=> b!5812074 (= e!3567493 e!3567490)))

(declare-fun res!2450921 () Bool)

(assert (=> b!5812074 (=> res!2450921 e!3567490)))

(declare-fun lt!2300255 () (InoxSet Context!10426))

(assert (=> b!5812074 (= res!2450921 (not (= lt!2300228 lt!2300255)))))

(assert (=> b!5812074 (= (flatMap!1436 z!1189 lambda!317546) (derivationStepZipperUp!1093 (h!70111 zl!343) (h!70112 s!2326)))))

(declare-fun lt!2300234 () Unit!156918)

(assert (=> b!5812074 (= lt!2300234 (lemmaFlatMapOnSingletonSet!968 z!1189 (h!70111 zl!343) lambda!317546))))

(declare-fun b!5812075 () Bool)

(declare-fun res!2450916 () Bool)

(assert (=> b!5812075 (=> res!2450916 e!3567477)))

(declare-fun isEmpty!35580 (List!63787) Bool)

(assert (=> b!5812075 (= res!2450916 (not (isEmpty!35580 (t!377142 zl!343))))))

(declare-fun b!5812076 () Bool)

(declare-fun tp!1603896 () Bool)

(assert (=> b!5812076 (= e!3567483 tp!1603896)))

(declare-fun res!2450908 () Bool)

(assert (=> start!595516 (=> (not res!2450908) (not e!3567487))))

(declare-fun validRegex!7565 (Regex!15829) Bool)

(assert (=> start!595516 (= res!2450908 (validRegex!7565 r!7292))))

(assert (=> start!595516 e!3567487))

(assert (=> start!595516 e!3567483))

(declare-fun condSetEmpty!39148 () Bool)

(assert (=> start!595516 (= condSetEmpty!39148 (= z!1189 ((as const (Array Context!10426 Bool)) false)))))

(assert (=> start!595516 setRes!39148))

(assert (=> start!595516 e!3567492))

(assert (=> start!595516 e!3567484))

(declare-fun b!5812061 () Bool)

(assert (=> b!5812061 (= e!3567487 e!3567482)))

(declare-fun res!2450909 () Bool)

(assert (=> b!5812061 (=> (not res!2450909) (not e!3567482))))

(assert (=> b!5812061 (= res!2450909 (= r!7292 lt!2300226))))

(assert (=> b!5812061 (= lt!2300226 (unfocusZipper!1571 zl!343))))

(declare-fun b!5812077 () Bool)

(assert (=> b!5812077 (= e!3567479 e!3567493)))

(declare-fun res!2450906 () Bool)

(assert (=> b!5812077 (=> res!2450906 e!3567493)))

(declare-fun lt!2300242 () (InoxSet Context!10426))

(assert (=> b!5812077 (= res!2450906 (not (= lt!2300242 lt!2300255)))))

(assert (=> b!5812077 (= lt!2300255 (derivationStepZipperDown!1167 r!7292 (Context!10427 Nil!63662) (h!70112 s!2326)))))

(assert (=> b!5812077 (= lt!2300242 (derivationStepZipperUp!1093 (Context!10427 (Cons!63662 r!7292 Nil!63662)) (h!70112 s!2326)))))

(assert (=> b!5812077 (= lt!2300228 (derivationStepZipper!1898 z!1189 (h!70112 s!2326)))))

(declare-fun b!5812078 () Bool)

(declare-fun res!2450919 () Bool)

(assert (=> b!5812078 (=> res!2450919 e!3567477)))

(declare-fun generalisedConcat!1444 (List!63786) Regex!15829)

(assert (=> b!5812078 (= res!2450919 (not (= r!7292 (generalisedConcat!1444 (exprs!5713 (h!70111 zl!343))))))))

(declare-fun b!5812079 () Bool)

(declare-fun tp!1603900 () Bool)

(declare-fun tp!1603897 () Bool)

(assert (=> b!5812079 (= e!3567483 (and tp!1603900 tp!1603897))))

(declare-fun b!5812080 () Bool)

(declare-fun tp!1603902 () Bool)

(declare-fun tp!1603904 () Bool)

(assert (=> b!5812080 (= e!3567483 (and tp!1603902 tp!1603904))))

(declare-fun b!5812081 () Bool)

(assert (=> b!5812081 (= e!3567481 e!3567480)))

(declare-fun res!2450903 () Bool)

(assert (=> b!5812081 (=> res!2450903 e!3567480)))

(assert (=> b!5812081 (= res!2450903 (not (= (unfocusZipper!1571 (Cons!63663 lt!2300236 Nil!63663)) lt!2300243)))))

(assert (=> b!5812081 (= lt!2300243 (Concat!24674 (reg!16158 r!7292) r!7292))))

(declare-fun b!5812082 () Bool)

(declare-fun res!2450899 () Bool)

(assert (=> b!5812082 (=> res!2450899 e!3567477)))

(declare-fun generalisedUnion!1692 (List!63786) Regex!15829)

(declare-fun unfocusZipperList!1257 (List!63787) List!63786)

(assert (=> b!5812082 (= res!2450899 (not (= r!7292 (generalisedUnion!1692 (unfocusZipperList!1257 zl!343)))))))

(assert (=> b!5812083 (= e!3567491 e!3567489)))

(declare-fun res!2450904 () Bool)

(assert (=> b!5812083 (=> res!2450904 e!3567489)))

(declare-fun appendTo!138 ((InoxSet Context!10426) Context!10426) (InoxSet Context!10426))

(assert (=> b!5812083 (= res!2450904 (not (= (appendTo!138 lt!2300245 lt!2300231) lt!2300238)))))

(declare-fun lambda!317547 () Int)

(declare-fun map!14596 ((InoxSet Context!10426) Int) (InoxSet Context!10426))

(declare-fun ++!14043 (List!63786 List!63786) List!63786)

(assert (=> b!5812083 (= (map!14596 lt!2300245 lambda!317547) (store ((as const (Array Context!10426 Bool)) false) (Context!10427 (++!14043 (Cons!63662 (reg!16158 r!7292) Nil!63662) lt!2300250)) true))))

(declare-fun lt!2300237 () Unit!156918)

(declare-fun lambda!317548 () Int)

(declare-fun lemmaConcatPreservesForall!330 (List!63786 List!63786 Int) Unit!156918)

(assert (=> b!5812083 (= lt!2300237 (lemmaConcatPreservesForall!330 (Cons!63662 (reg!16158 r!7292) Nil!63662) lt!2300250 lambda!317548))))

(declare-fun lt!2300249 () Unit!156918)

(declare-fun lemmaMapOnSingletonSet!156 ((InoxSet Context!10426) Context!10426 Int) Unit!156918)

(assert (=> b!5812083 (= lt!2300249 (lemmaMapOnSingletonSet!156 lt!2300245 lt!2300252 lambda!317547))))

(declare-fun b!5812084 () Bool)

(declare-fun res!2450918 () Bool)

(assert (=> b!5812084 (=> res!2450918 e!3567488)))

(assert (=> b!5812084 (= res!2450918 (not (= (unfocusZipper!1571 (Cons!63663 lt!2300231 Nil!63663)) r!7292)))))

(assert (= (and start!595516 res!2450908) b!5812063))

(assert (= (and b!5812063 res!2450902) b!5812061))

(assert (= (and b!5812061 res!2450909) b!5812054))

(assert (= (and b!5812054 (not res!2450910)) b!5812075))

(assert (= (and b!5812075 (not res!2450916)) b!5812078))

(assert (= (and b!5812078 (not res!2450919)) b!5812059))

(assert (= (and b!5812059 (not res!2450920)) b!5812082))

(assert (= (and b!5812082 (not res!2450899)) b!5812064))

(assert (= (and b!5812064 (not res!2450905)) b!5812056))

(assert (= (and b!5812056 (not res!2450914)) b!5812070))

(assert (= (and b!5812056 (not res!2450900)) b!5812073))

(assert (= (and b!5812073 (not res!2450911)) b!5812077))

(assert (= (and b!5812077 (not res!2450906)) b!5812074))

(assert (= (and b!5812074 (not res!2450921)) b!5812057))

(assert (= (and b!5812057 (not res!2450913)) b!5812071))

(assert (= (and b!5812071 (not res!2450917)) b!5812058))

(assert (= (and b!5812058 (not res!2450915)) b!5812081))

(assert (= (and b!5812081 (not res!2450903)) b!5812065))

(assert (= (and b!5812065 (not res!2450901)) b!5812067))

(assert (= (and b!5812067 (not res!2450922)) b!5812084))

(assert (= (and b!5812084 (not res!2450918)) b!5812060))

(assert (= (and b!5812060 (not res!2450907)) b!5812062))

(assert (= (and b!5812062 (not res!2450912)) b!5812083))

(assert (= (and b!5812083 (not res!2450904)) b!5812066))

(assert (= (and start!595516 ((_ is ElementMatch!15829) r!7292)) b!5812068))

(assert (= (and start!595516 ((_ is Concat!24674) r!7292)) b!5812080))

(assert (= (and start!595516 ((_ is Star!15829) r!7292)) b!5812076))

(assert (= (and start!595516 ((_ is Union!15829) r!7292)) b!5812079))

(assert (= (and start!595516 condSetEmpty!39148) setIsEmpty!39148))

(assert (= (and start!595516 (not condSetEmpty!39148)) setNonEmpty!39148))

(assert (= setNonEmpty!39148 b!5812069))

(assert (= b!5812053 b!5812072))

(assert (= (and start!595516 ((_ is Cons!63663) zl!343)) b!5812053))

(assert (= (and start!595516 ((_ is Cons!63664) s!2326)) b!5812055))

(declare-fun m!6750284 () Bool)

(assert (=> b!5812066 m!6750284))

(declare-fun m!6750286 () Bool)

(assert (=> b!5812066 m!6750286))

(declare-fun m!6750288 () Bool)

(assert (=> b!5812066 m!6750288))

(declare-fun m!6750290 () Bool)

(assert (=> b!5812066 m!6750290))

(declare-fun m!6750292 () Bool)

(assert (=> b!5812066 m!6750292))

(declare-fun m!6750294 () Bool)

(assert (=> b!5812067 m!6750294))

(declare-fun m!6750296 () Bool)

(assert (=> b!5812081 m!6750296))

(declare-fun m!6750298 () Bool)

(assert (=> b!5812061 m!6750298))

(declare-fun m!6750300 () Bool)

(assert (=> b!5812074 m!6750300))

(declare-fun m!6750302 () Bool)

(assert (=> b!5812074 m!6750302))

(declare-fun m!6750304 () Bool)

(assert (=> b!5812074 m!6750304))

(declare-fun m!6750306 () Bool)

(assert (=> b!5812083 m!6750306))

(declare-fun m!6750308 () Bool)

(assert (=> b!5812083 m!6750308))

(declare-fun m!6750310 () Bool)

(assert (=> b!5812083 m!6750310))

(declare-fun m!6750312 () Bool)

(assert (=> b!5812083 m!6750312))

(declare-fun m!6750314 () Bool)

(assert (=> b!5812083 m!6750314))

(declare-fun m!6750316 () Bool)

(assert (=> b!5812083 m!6750316))

(declare-fun m!6750318 () Bool)

(assert (=> b!5812065 m!6750318))

(declare-fun m!6750320 () Bool)

(assert (=> b!5812065 m!6750320))

(declare-fun m!6750322 () Bool)

(assert (=> b!5812065 m!6750322))

(declare-fun m!6750324 () Bool)

(assert (=> b!5812065 m!6750324))

(declare-fun m!6750326 () Bool)

(assert (=> b!5812065 m!6750326))

(declare-fun m!6750328 () Bool)

(assert (=> b!5812065 m!6750328))

(declare-fun m!6750330 () Bool)

(assert (=> b!5812065 m!6750330))

(declare-fun m!6750332 () Bool)

(assert (=> b!5812065 m!6750332))

(declare-fun m!6750334 () Bool)

(assert (=> b!5812065 m!6750334))

(declare-fun m!6750336 () Bool)

(assert (=> start!595516 m!6750336))

(declare-fun m!6750338 () Bool)

(assert (=> b!5812063 m!6750338))

(declare-fun m!6750340 () Bool)

(assert (=> b!5812057 m!6750340))

(declare-fun m!6750342 () Bool)

(assert (=> b!5812057 m!6750342))

(declare-fun m!6750344 () Bool)

(assert (=> b!5812057 m!6750344))

(declare-fun m!6750346 () Bool)

(assert (=> b!5812057 m!6750346))

(declare-fun m!6750348 () Bool)

(assert (=> b!5812057 m!6750348))

(declare-fun m!6750350 () Bool)

(assert (=> b!5812053 m!6750350))

(declare-fun m!6750352 () Bool)

(assert (=> b!5812075 m!6750352))

(declare-fun m!6750354 () Bool)

(assert (=> b!5812082 m!6750354))

(assert (=> b!5812082 m!6750354))

(declare-fun m!6750356 () Bool)

(assert (=> b!5812082 m!6750356))

(declare-fun m!6750358 () Bool)

(assert (=> b!5812077 m!6750358))

(declare-fun m!6750360 () Bool)

(assert (=> b!5812077 m!6750360))

(declare-fun m!6750362 () Bool)

(assert (=> b!5812077 m!6750362))

(declare-fun m!6750364 () Bool)

(assert (=> b!5812071 m!6750364))

(declare-fun m!6750366 () Bool)

(assert (=> b!5812071 m!6750366))

(assert (=> b!5812071 m!6750366))

(declare-fun m!6750368 () Bool)

(assert (=> b!5812071 m!6750368))

(declare-fun m!6750370 () Bool)

(assert (=> b!5812060 m!6750370))

(declare-fun m!6750372 () Bool)

(assert (=> b!5812060 m!6750372))

(declare-fun m!6750374 () Bool)

(assert (=> b!5812060 m!6750374))

(declare-fun m!6750376 () Bool)

(assert (=> b!5812056 m!6750376))

(declare-fun m!6750378 () Bool)

(assert (=> b!5812056 m!6750378))

(declare-fun m!6750380 () Bool)

(assert (=> b!5812056 m!6750380))

(assert (=> b!5812056 m!6750376))

(declare-fun m!6750382 () Bool)

(assert (=> b!5812056 m!6750382))

(declare-fun m!6750384 () Bool)

(assert (=> b!5812056 m!6750384))

(declare-fun m!6750386 () Bool)

(assert (=> b!5812056 m!6750386))

(declare-fun m!6750388 () Bool)

(assert (=> b!5812056 m!6750388))

(assert (=> b!5812056 m!6750376))

(assert (=> b!5812056 m!6750388))

(declare-fun m!6750390 () Bool)

(assert (=> b!5812056 m!6750390))

(declare-fun m!6750392 () Bool)

(assert (=> b!5812056 m!6750392))

(declare-fun m!6750394 () Bool)

(assert (=> setNonEmpty!39148 m!6750394))

(declare-fun m!6750396 () Bool)

(assert (=> b!5812084 m!6750396))

(declare-fun m!6750398 () Bool)

(assert (=> b!5812078 m!6750398))

(declare-fun m!6750400 () Bool)

(assert (=> b!5812062 m!6750400))

(declare-fun m!6750402 () Bool)

(assert (=> b!5812054 m!6750402))

(declare-fun m!6750404 () Bool)

(assert (=> b!5812054 m!6750404))

(declare-fun m!6750406 () Bool)

(assert (=> b!5812054 m!6750406))

(check-sat (not setNonEmpty!39148) (not b!5812056) (not b!5812074) (not b!5812065) (not b!5812069) (not b!5812078) (not b!5812067) (not b!5812076) (not b!5812075) (not b!5812062) (not b!5812054) (not b!5812082) (not b!5812080) (not b!5812079) (not b!5812055) (not b!5812063) (not b!5812060) (not b!5812072) (not b!5812071) tp_is_empty!40911 (not b!5812084) (not b!5812081) (not b!5812057) (not b!5812083) (not b!5812066) (not start!595516) (not b!5812077) (not b!5812061) (not b!5812053))
(check-sat)
(get-model)

(declare-fun d!1830294 () Bool)

(declare-fun e!3567517 () Bool)

(assert (=> d!1830294 e!3567517))

(declare-fun res!2450932 () Bool)

(assert (=> d!1830294 (=> (not res!2450932) (not e!3567517))))

(declare-fun lt!2300265 () List!63787)

(declare-fun noDuplicate!1721 (List!63787) Bool)

(assert (=> d!1830294 (= res!2450932 (noDuplicate!1721 lt!2300265))))

(declare-fun choose!44134 ((InoxSet Context!10426)) List!63787)

(assert (=> d!1830294 (= lt!2300265 (choose!44134 z!1189))))

(assert (=> d!1830294 (= (toList!9613 z!1189) lt!2300265)))

(declare-fun b!5812132 () Bool)

(declare-fun content!11668 (List!63787) (InoxSet Context!10426))

(assert (=> b!5812132 (= e!3567517 (= (content!11668 lt!2300265) z!1189))))

(assert (= (and d!1830294 res!2450932) b!5812132))

(declare-fun m!6750424 () Bool)

(assert (=> d!1830294 m!6750424))

(declare-fun m!6750426 () Bool)

(assert (=> d!1830294 m!6750426))

(declare-fun m!6750428 () Bool)

(assert (=> b!5812132 m!6750428))

(assert (=> b!5812063 d!1830294))

(declare-fun bs!1372220 () Bool)

(declare-fun d!1830298 () Bool)

(assert (= bs!1372220 (and d!1830298 b!5812083)))

(declare-fun lambda!317556 () Int)

(assert (=> bs!1372220 (= (= (exprs!5713 lt!2300231) lt!2300250) (= lambda!317556 lambda!317547))))

(assert (=> d!1830298 true))

(assert (=> d!1830298 (= (appendTo!138 lt!2300245 lt!2300231) (map!14596 lt!2300245 lambda!317556))))

(declare-fun bs!1372221 () Bool)

(assert (= bs!1372221 d!1830298))

(declare-fun m!6750454 () Bool)

(assert (=> bs!1372221 m!6750454))

(assert (=> b!5812083 d!1830298))

(declare-fun e!3567549 () Bool)

(declare-fun lt!2300274 () List!63786)

(declare-fun b!5812194 () Bool)

(assert (=> b!5812194 (= e!3567549 (or (not (= lt!2300250 Nil!63662)) (= lt!2300274 (Cons!63662 (reg!16158 r!7292) Nil!63662))))))

(declare-fun b!5812192 () Bool)

(declare-fun e!3567550 () List!63786)

(assert (=> b!5812192 (= e!3567550 (Cons!63662 (h!70110 (Cons!63662 (reg!16158 r!7292) Nil!63662)) (++!14043 (t!377141 (Cons!63662 (reg!16158 r!7292) Nil!63662)) lt!2300250)))))

(declare-fun b!5812191 () Bool)

(assert (=> b!5812191 (= e!3567550 lt!2300250)))

(declare-fun d!1830308 () Bool)

(assert (=> d!1830308 e!3567549))

(declare-fun res!2450946 () Bool)

(assert (=> d!1830308 (=> (not res!2450946) (not e!3567549))))

(declare-fun content!11669 (List!63786) (InoxSet Regex!15829))

(assert (=> d!1830308 (= res!2450946 (= (content!11669 lt!2300274) ((_ map or) (content!11669 (Cons!63662 (reg!16158 r!7292) Nil!63662)) (content!11669 lt!2300250))))))

(assert (=> d!1830308 (= lt!2300274 e!3567550)))

(declare-fun c!1029972 () Bool)

(assert (=> d!1830308 (= c!1029972 ((_ is Nil!63662) (Cons!63662 (reg!16158 r!7292) Nil!63662)))))

(assert (=> d!1830308 (= (++!14043 (Cons!63662 (reg!16158 r!7292) Nil!63662) lt!2300250) lt!2300274)))

(declare-fun b!5812193 () Bool)

(declare-fun res!2450945 () Bool)

(assert (=> b!5812193 (=> (not res!2450945) (not e!3567549))))

(declare-fun size!40114 (List!63786) Int)

(assert (=> b!5812193 (= res!2450945 (= (size!40114 lt!2300274) (+ (size!40114 (Cons!63662 (reg!16158 r!7292) Nil!63662)) (size!40114 lt!2300250))))))

(assert (= (and d!1830308 c!1029972) b!5812191))

(assert (= (and d!1830308 (not c!1029972)) b!5812192))

(assert (= (and d!1830308 res!2450946) b!5812193))

(assert (= (and b!5812193 res!2450945) b!5812194))

(declare-fun m!6750478 () Bool)

(assert (=> b!5812192 m!6750478))

(declare-fun m!6750480 () Bool)

(assert (=> d!1830308 m!6750480))

(declare-fun m!6750482 () Bool)

(assert (=> d!1830308 m!6750482))

(declare-fun m!6750484 () Bool)

(assert (=> d!1830308 m!6750484))

(declare-fun m!6750486 () Bool)

(assert (=> b!5812193 m!6750486))

(declare-fun m!6750488 () Bool)

(assert (=> b!5812193 m!6750488))

(declare-fun m!6750490 () Bool)

(assert (=> b!5812193 m!6750490))

(assert (=> b!5812083 d!1830308))

(declare-fun d!1830314 () Bool)

(declare-fun dynLambda!24926 (Int Context!10426) Context!10426)

(assert (=> d!1830314 (= (map!14596 lt!2300245 lambda!317547) (store ((as const (Array Context!10426 Bool)) false) (dynLambda!24926 lambda!317547 lt!2300252) true))))

(declare-fun lt!2300277 () Unit!156918)

(declare-fun choose!44136 ((InoxSet Context!10426) Context!10426 Int) Unit!156918)

(assert (=> d!1830314 (= lt!2300277 (choose!44136 lt!2300245 lt!2300252 lambda!317547))))

(assert (=> d!1830314 (= lt!2300245 (store ((as const (Array Context!10426 Bool)) false) lt!2300252 true))))

(assert (=> d!1830314 (= (lemmaMapOnSingletonSet!156 lt!2300245 lt!2300252 lambda!317547) lt!2300277)))

(declare-fun b_lambda!219119 () Bool)

(assert (=> (not b_lambda!219119) (not d!1830314)))

(declare-fun bs!1372224 () Bool)

(assert (= bs!1372224 d!1830314))

(declare-fun m!6750492 () Bool)

(assert (=> bs!1372224 m!6750492))

(declare-fun m!6750494 () Bool)

(assert (=> bs!1372224 m!6750494))

(assert (=> bs!1372224 m!6750308))

(assert (=> bs!1372224 m!6750494))

(declare-fun m!6750496 () Bool)

(assert (=> bs!1372224 m!6750496))

(assert (=> bs!1372224 m!6750334))

(assert (=> b!5812083 d!1830314))

(declare-fun d!1830316 () Bool)

(declare-fun forall!14935 (List!63786 Int) Bool)

(assert (=> d!1830316 (forall!14935 (++!14043 (Cons!63662 (reg!16158 r!7292) Nil!63662) lt!2300250) lambda!317548)))

(declare-fun lt!2300286 () Unit!156918)

(declare-fun choose!44137 (List!63786 List!63786 Int) Unit!156918)

(assert (=> d!1830316 (= lt!2300286 (choose!44137 (Cons!63662 (reg!16158 r!7292) Nil!63662) lt!2300250 lambda!317548))))

(assert (=> d!1830316 (forall!14935 (Cons!63662 (reg!16158 r!7292) Nil!63662) lambda!317548)))

(assert (=> d!1830316 (= (lemmaConcatPreservesForall!330 (Cons!63662 (reg!16158 r!7292) Nil!63662) lt!2300250 lambda!317548) lt!2300286)))

(declare-fun bs!1372225 () Bool)

(assert (= bs!1372225 d!1830316))

(assert (=> bs!1372225 m!6750312))

(assert (=> bs!1372225 m!6750312))

(declare-fun m!6750498 () Bool)

(assert (=> bs!1372225 m!6750498))

(declare-fun m!6750500 () Bool)

(assert (=> bs!1372225 m!6750500))

(declare-fun m!6750502 () Bool)

(assert (=> bs!1372225 m!6750502))

(assert (=> b!5812083 d!1830316))

(declare-fun d!1830318 () Bool)

(declare-fun choose!44138 ((InoxSet Context!10426) Int) (InoxSet Context!10426))

(assert (=> d!1830318 (= (map!14596 lt!2300245 lambda!317547) (choose!44138 lt!2300245 lambda!317547))))

(declare-fun bs!1372226 () Bool)

(assert (= bs!1372226 d!1830318))

(declare-fun m!6750504 () Bool)

(assert (=> bs!1372226 m!6750504))

(assert (=> b!5812083 d!1830318))

(declare-fun bs!1372227 () Bool)

(declare-fun d!1830320 () Bool)

(assert (= bs!1372227 (and d!1830320 b!5812083)))

(declare-fun lambda!317562 () Int)

(assert (=> bs!1372227 (= lambda!317562 lambda!317548)))

(assert (=> d!1830320 (= (inv!82819 (h!70111 zl!343)) (forall!14935 (exprs!5713 (h!70111 zl!343)) lambda!317562))))

(declare-fun bs!1372228 () Bool)

(assert (= bs!1372228 d!1830320))

(declare-fun m!6750530 () Bool)

(assert (=> bs!1372228 m!6750530))

(assert (=> b!5812053 d!1830320))

(declare-fun d!1830324 () Bool)

(declare-fun choose!44139 ((InoxSet Context!10426) Int) (InoxSet Context!10426))

(assert (=> d!1830324 (= (flatMap!1436 z!1189 lambda!317546) (choose!44139 z!1189 lambda!317546))))

(declare-fun bs!1372229 () Bool)

(assert (= bs!1372229 d!1830324))

(declare-fun m!6750532 () Bool)

(assert (=> bs!1372229 m!6750532))

(assert (=> b!5812074 d!1830324))

(declare-fun d!1830326 () Bool)

(declare-fun c!1029994 () Bool)

(declare-fun e!3567587 () Bool)

(assert (=> d!1830326 (= c!1029994 e!3567587)))

(declare-fun res!2450972 () Bool)

(assert (=> d!1830326 (=> (not res!2450972) (not e!3567587))))

(assert (=> d!1830326 (= res!2450972 ((_ is Cons!63662) (exprs!5713 (h!70111 zl!343))))))

(declare-fun e!3567589 () (InoxSet Context!10426))

(assert (=> d!1830326 (= (derivationStepZipperUp!1093 (h!70111 zl!343) (h!70112 s!2326)) e!3567589)))

(declare-fun call!453944 () (InoxSet Context!10426))

(declare-fun b!5812260 () Bool)

(assert (=> b!5812260 (= e!3567589 ((_ map or) call!453944 (derivationStepZipperUp!1093 (Context!10427 (t!377141 (exprs!5713 (h!70111 zl!343)))) (h!70112 s!2326))))))

(declare-fun b!5812261 () Bool)

(declare-fun e!3567588 () (InoxSet Context!10426))

(assert (=> b!5812261 (= e!3567588 call!453944)))

(declare-fun bm!453939 () Bool)

(assert (=> bm!453939 (= call!453944 (derivationStepZipperDown!1167 (h!70110 (exprs!5713 (h!70111 zl!343))) (Context!10427 (t!377141 (exprs!5713 (h!70111 zl!343)))) (h!70112 s!2326)))))

(declare-fun b!5812262 () Bool)

(assert (=> b!5812262 (= e!3567588 ((as const (Array Context!10426 Bool)) false))))

(declare-fun b!5812263 () Bool)

(declare-fun nullable!5853 (Regex!15829) Bool)

(assert (=> b!5812263 (= e!3567587 (nullable!5853 (h!70110 (exprs!5713 (h!70111 zl!343)))))))

(declare-fun b!5812264 () Bool)

(assert (=> b!5812264 (= e!3567589 e!3567588)))

(declare-fun c!1029993 () Bool)

(assert (=> b!5812264 (= c!1029993 ((_ is Cons!63662) (exprs!5713 (h!70111 zl!343))))))

(assert (= (and d!1830326 res!2450972) b!5812263))

(assert (= (and d!1830326 c!1029994) b!5812260))

(assert (= (and d!1830326 (not c!1029994)) b!5812264))

(assert (= (and b!5812264 c!1029993) b!5812261))

(assert (= (and b!5812264 (not c!1029993)) b!5812262))

(assert (= (or b!5812260 b!5812261) bm!453939))

(declare-fun m!6750582 () Bool)

(assert (=> b!5812260 m!6750582))

(declare-fun m!6750584 () Bool)

(assert (=> bm!453939 m!6750584))

(declare-fun m!6750586 () Bool)

(assert (=> b!5812263 m!6750586))

(assert (=> b!5812074 d!1830326))

(declare-fun d!1830344 () Bool)

(declare-fun dynLambda!24927 (Int Context!10426) (InoxSet Context!10426))

(assert (=> d!1830344 (= (flatMap!1436 z!1189 lambda!317546) (dynLambda!24927 lambda!317546 (h!70111 zl!343)))))

(declare-fun lt!2300300 () Unit!156918)

(declare-fun choose!44141 ((InoxSet Context!10426) Context!10426 Int) Unit!156918)

(assert (=> d!1830344 (= lt!2300300 (choose!44141 z!1189 (h!70111 zl!343) lambda!317546))))

(assert (=> d!1830344 (= z!1189 (store ((as const (Array Context!10426 Bool)) false) (h!70111 zl!343) true))))

(assert (=> d!1830344 (= (lemmaFlatMapOnSingletonSet!968 z!1189 (h!70111 zl!343) lambda!317546) lt!2300300)))

(declare-fun b_lambda!219123 () Bool)

(assert (=> (not b_lambda!219123) (not d!1830344)))

(declare-fun bs!1372234 () Bool)

(assert (= bs!1372234 d!1830344))

(assert (=> bs!1372234 m!6750300))

(declare-fun m!6750588 () Bool)

(assert (=> bs!1372234 m!6750588))

(declare-fun m!6750590 () Bool)

(assert (=> bs!1372234 m!6750590))

(declare-fun m!6750592 () Bool)

(assert (=> bs!1372234 m!6750592))

(assert (=> b!5812074 d!1830344))

(declare-fun bs!1372235 () Bool)

(declare-fun d!1830346 () Bool)

(assert (= bs!1372235 (and d!1830346 b!5812083)))

(declare-fun lambda!317565 () Int)

(assert (=> bs!1372235 (= lambda!317565 lambda!317548)))

(declare-fun bs!1372236 () Bool)

(assert (= bs!1372236 (and d!1830346 d!1830320)))

(assert (=> bs!1372236 (= lambda!317565 lambda!317562)))

(assert (=> d!1830346 (= (inv!82819 setElem!39148) (forall!14935 (exprs!5713 setElem!39148) lambda!317565))))

(declare-fun bs!1372237 () Bool)

(assert (= bs!1372237 d!1830346))

(declare-fun m!6750594 () Bool)

(assert (=> bs!1372237 m!6750594))

(assert (=> setNonEmpty!39148 d!1830346))

(declare-fun d!1830348 () Bool)

(declare-fun lt!2300303 () Regex!15829)

(assert (=> d!1830348 (validRegex!7565 lt!2300303)))

(assert (=> d!1830348 (= lt!2300303 (generalisedUnion!1692 (unfocusZipperList!1257 (Cons!63663 lt!2300231 Nil!63663))))))

(assert (=> d!1830348 (= (unfocusZipper!1571 (Cons!63663 lt!2300231 Nil!63663)) lt!2300303)))

(declare-fun bs!1372238 () Bool)

(assert (= bs!1372238 d!1830348))

(declare-fun m!6750596 () Bool)

(assert (=> bs!1372238 m!6750596))

(declare-fun m!6750598 () Bool)

(assert (=> bs!1372238 m!6750598))

(assert (=> bs!1372238 m!6750598))

(declare-fun m!6750600 () Bool)

(assert (=> bs!1372238 m!6750600))

(assert (=> b!5812084 d!1830348))

(declare-fun bs!1372243 () Bool)

(declare-fun b!5812418 () Bool)

(assert (= bs!1372243 (and b!5812418 b!5812056)))

(declare-fun lambda!317574 () Int)

(assert (=> bs!1372243 (not (= lambda!317574 lambda!317543))))

(assert (=> bs!1372243 (= lambda!317574 lambda!317544)))

(assert (=> bs!1372243 (not (= lambda!317574 lambda!317545))))

(assert (=> b!5812418 true))

(assert (=> b!5812418 true))

(declare-fun bs!1372247 () Bool)

(declare-fun b!5812411 () Bool)

(assert (= bs!1372247 (and b!5812411 b!5812056)))

(declare-fun lambda!317576 () Int)

(assert (=> bs!1372247 (not (= lambda!317576 lambda!317543))))

(assert (=> bs!1372247 (not (= lambda!317576 lambda!317544))))

(assert (=> bs!1372247 (= (and (= (regOne!32170 r!7292) (reg!16158 r!7292)) (= (regTwo!32170 r!7292) r!7292)) (= lambda!317576 lambda!317545))))

(declare-fun bs!1372248 () Bool)

(assert (= bs!1372248 (and b!5812411 b!5812418)))

(assert (=> bs!1372248 (not (= lambda!317576 lambda!317574))))

(assert (=> b!5812411 true))

(assert (=> b!5812411 true))

(declare-fun b!5812409 () Bool)

(declare-fun e!3567681 () Bool)

(declare-fun e!3567678 () Bool)

(assert (=> b!5812409 (= e!3567681 e!3567678)))

(declare-fun res!2451049 () Bool)

(assert (=> b!5812409 (= res!2451049 (matchRSpec!2932 (regOne!32171 r!7292) s!2326))))

(assert (=> b!5812409 (=> res!2451049 e!3567678)))

(declare-fun d!1830350 () Bool)

(declare-fun c!1030031 () Bool)

(assert (=> d!1830350 (= c!1030031 ((_ is EmptyExpr!15829) r!7292))))

(declare-fun e!3567680 () Bool)

(assert (=> d!1830350 (= (matchRSpec!2932 r!7292 s!2326) e!3567680)))

(declare-fun c!1030030 () Bool)

(declare-fun bm!453962 () Bool)

(declare-fun call!453967 () Bool)

(assert (=> bm!453962 (= call!453967 (Exists!2929 (ite c!1030030 lambda!317574 lambda!317576)))))

(declare-fun b!5812410 () Bool)

(declare-fun c!1030032 () Bool)

(assert (=> b!5812410 (= c!1030032 ((_ is Union!15829) r!7292))))

(declare-fun e!3567676 () Bool)

(assert (=> b!5812410 (= e!3567676 e!3567681)))

(declare-fun e!3567677 () Bool)

(assert (=> b!5812411 (= e!3567677 call!453967)))

(declare-fun b!5812412 () Bool)

(declare-fun call!453968 () Bool)

(assert (=> b!5812412 (= e!3567680 call!453968)))

(declare-fun b!5812413 () Bool)

(assert (=> b!5812413 (= e!3567676 (= s!2326 (Cons!63664 (c!1029931 r!7292) Nil!63664)))))

(declare-fun b!5812414 () Bool)

(assert (=> b!5812414 (= e!3567678 (matchRSpec!2932 (regTwo!32171 r!7292) s!2326))))

(declare-fun bm!453963 () Bool)

(assert (=> bm!453963 (= call!453968 (isEmpty!35579 s!2326))))

(declare-fun b!5812415 () Bool)

(declare-fun e!3567679 () Bool)

(assert (=> b!5812415 (= e!3567680 e!3567679)))

(declare-fun res!2451047 () Bool)

(assert (=> b!5812415 (= res!2451047 (not ((_ is EmptyLang!15829) r!7292)))))

(assert (=> b!5812415 (=> (not res!2451047) (not e!3567679))))

(declare-fun b!5812416 () Bool)

(declare-fun res!2451048 () Bool)

(declare-fun e!3567675 () Bool)

(assert (=> b!5812416 (=> res!2451048 e!3567675)))

(assert (=> b!5812416 (= res!2451048 call!453968)))

(assert (=> b!5812416 (= e!3567677 e!3567675)))

(declare-fun b!5812417 () Bool)

(assert (=> b!5812417 (= e!3567681 e!3567677)))

(assert (=> b!5812417 (= c!1030030 ((_ is Star!15829) r!7292))))

(assert (=> b!5812418 (= e!3567675 call!453967)))

(declare-fun b!5812419 () Bool)

(declare-fun c!1030033 () Bool)

(assert (=> b!5812419 (= c!1030033 ((_ is ElementMatch!15829) r!7292))))

(assert (=> b!5812419 (= e!3567679 e!3567676)))

(assert (= (and d!1830350 c!1030031) b!5812412))

(assert (= (and d!1830350 (not c!1030031)) b!5812415))

(assert (= (and b!5812415 res!2451047) b!5812419))

(assert (= (and b!5812419 c!1030033) b!5812413))

(assert (= (and b!5812419 (not c!1030033)) b!5812410))

(assert (= (and b!5812410 c!1030032) b!5812409))

(assert (= (and b!5812410 (not c!1030032)) b!5812417))

(assert (= (and b!5812409 (not res!2451049)) b!5812414))

(assert (= (and b!5812417 c!1030030) b!5812416))

(assert (= (and b!5812417 (not c!1030030)) b!5812411))

(assert (= (and b!5812416 (not res!2451048)) b!5812418))

(assert (= (or b!5812418 b!5812411) bm!453962))

(assert (= (or b!5812412 b!5812416) bm!453963))

(declare-fun m!6750652 () Bool)

(assert (=> b!5812409 m!6750652))

(declare-fun m!6750654 () Bool)

(assert (=> bm!453962 m!6750654))

(declare-fun m!6750656 () Bool)

(assert (=> b!5812414 m!6750656))

(assert (=> bm!453963 m!6750378))

(assert (=> b!5812054 d!1830350))

(declare-fun b!5812469 () Bool)

(declare-fun e!3567714 () Bool)

(declare-fun head!12266 (List!63788) C!31928)

(assert (=> b!5812469 (= e!3567714 (= (head!12266 s!2326) (c!1029931 r!7292)))))

(declare-fun b!5812470 () Bool)

(declare-fun e!3567710 () Bool)

(assert (=> b!5812470 (= e!3567710 (nullable!5853 r!7292))))

(declare-fun b!5812472 () Bool)

(declare-fun e!3567712 () Bool)

(assert (=> b!5812472 (= e!3567712 (not (= (head!12266 s!2326) (c!1029931 r!7292))))))

(declare-fun b!5812473 () Bool)

(declare-fun res!2451080 () Bool)

(assert (=> b!5812473 (=> (not res!2451080) (not e!3567714))))

(declare-fun call!453971 () Bool)

(assert (=> b!5812473 (= res!2451080 (not call!453971))))

(declare-fun b!5812474 () Bool)

(declare-fun e!3567711 () Bool)

(declare-fun e!3567713 () Bool)

(assert (=> b!5812474 (= e!3567711 e!3567713)))

(declare-fun res!2451084 () Bool)

(assert (=> b!5812474 (=> (not res!2451084) (not e!3567713))))

(declare-fun lt!2300318 () Bool)

(assert (=> b!5812474 (= res!2451084 (not lt!2300318))))

(declare-fun b!5812475 () Bool)

(assert (=> b!5812475 (= e!3567713 e!3567712)))

(declare-fun res!2451083 () Bool)

(assert (=> b!5812475 (=> res!2451083 e!3567712)))

(assert (=> b!5812475 (= res!2451083 call!453971)))

(declare-fun b!5812476 () Bool)

(declare-fun res!2451077 () Bool)

(assert (=> b!5812476 (=> res!2451077 e!3567711)))

(assert (=> b!5812476 (= res!2451077 (not ((_ is ElementMatch!15829) r!7292)))))

(declare-fun e!3567708 () Bool)

(assert (=> b!5812476 (= e!3567708 e!3567711)))

(declare-fun bm!453966 () Bool)

(assert (=> bm!453966 (= call!453971 (isEmpty!35579 s!2326))))

(declare-fun b!5812477 () Bool)

(declare-fun derivativeStep!4596 (Regex!15829 C!31928) Regex!15829)

(declare-fun tail!11361 (List!63788) List!63788)

(assert (=> b!5812477 (= e!3567710 (matchR!8014 (derivativeStep!4596 r!7292 (head!12266 s!2326)) (tail!11361 s!2326)))))

(declare-fun b!5812478 () Bool)

(declare-fun res!2451079 () Bool)

(assert (=> b!5812478 (=> (not res!2451079) (not e!3567714))))

(assert (=> b!5812478 (= res!2451079 (isEmpty!35579 (tail!11361 s!2326)))))

(declare-fun b!5812479 () Bool)

(declare-fun res!2451082 () Bool)

(assert (=> b!5812479 (=> res!2451082 e!3567712)))

(assert (=> b!5812479 (= res!2451082 (not (isEmpty!35579 (tail!11361 s!2326))))))

(declare-fun b!5812480 () Bool)

(declare-fun e!3567709 () Bool)

(assert (=> b!5812480 (= e!3567709 (= lt!2300318 call!453971))))

(declare-fun d!1830370 () Bool)

(assert (=> d!1830370 e!3567709))

(declare-fun c!1030046 () Bool)

(assert (=> d!1830370 (= c!1030046 ((_ is EmptyExpr!15829) r!7292))))

(assert (=> d!1830370 (= lt!2300318 e!3567710)))

(declare-fun c!1030047 () Bool)

(assert (=> d!1830370 (= c!1030047 (isEmpty!35579 s!2326))))

(assert (=> d!1830370 (validRegex!7565 r!7292)))

(assert (=> d!1830370 (= (matchR!8014 r!7292 s!2326) lt!2300318)))

(declare-fun b!5812471 () Bool)

(assert (=> b!5812471 (= e!3567708 (not lt!2300318))))

(declare-fun b!5812481 () Bool)

(declare-fun res!2451078 () Bool)

(assert (=> b!5812481 (=> res!2451078 e!3567711)))

(assert (=> b!5812481 (= res!2451078 e!3567714)))

(declare-fun res!2451081 () Bool)

(assert (=> b!5812481 (=> (not res!2451081) (not e!3567714))))

(assert (=> b!5812481 (= res!2451081 lt!2300318)))

(declare-fun b!5812482 () Bool)

(assert (=> b!5812482 (= e!3567709 e!3567708)))

(declare-fun c!1030045 () Bool)

(assert (=> b!5812482 (= c!1030045 ((_ is EmptyLang!15829) r!7292))))

(assert (= (and d!1830370 c!1030047) b!5812470))

(assert (= (and d!1830370 (not c!1030047)) b!5812477))

(assert (= (and d!1830370 c!1030046) b!5812480))

(assert (= (and d!1830370 (not c!1030046)) b!5812482))

(assert (= (and b!5812482 c!1030045) b!5812471))

(assert (= (and b!5812482 (not c!1030045)) b!5812476))

(assert (= (and b!5812476 (not res!2451077)) b!5812481))

(assert (= (and b!5812481 res!2451081) b!5812473))

(assert (= (and b!5812473 res!2451080) b!5812478))

(assert (= (and b!5812478 res!2451079) b!5812469))

(assert (= (and b!5812481 (not res!2451078)) b!5812474))

(assert (= (and b!5812474 res!2451084) b!5812475))

(assert (= (and b!5812475 (not res!2451083)) b!5812479))

(assert (= (and b!5812479 (not res!2451082)) b!5812472))

(assert (= (or b!5812480 b!5812473 b!5812475) bm!453966))

(declare-fun m!6750686 () Bool)

(assert (=> b!5812479 m!6750686))

(assert (=> b!5812479 m!6750686))

(declare-fun m!6750688 () Bool)

(assert (=> b!5812479 m!6750688))

(assert (=> b!5812478 m!6750686))

(assert (=> b!5812478 m!6750686))

(assert (=> b!5812478 m!6750688))

(declare-fun m!6750690 () Bool)

(assert (=> b!5812472 m!6750690))

(declare-fun m!6750692 () Bool)

(assert (=> b!5812470 m!6750692))

(assert (=> bm!453966 m!6750378))

(assert (=> d!1830370 m!6750378))

(assert (=> d!1830370 m!6750336))

(assert (=> b!5812477 m!6750690))

(assert (=> b!5812477 m!6750690))

(declare-fun m!6750694 () Bool)

(assert (=> b!5812477 m!6750694))

(assert (=> b!5812477 m!6750686))

(assert (=> b!5812477 m!6750694))

(assert (=> b!5812477 m!6750686))

(declare-fun m!6750696 () Bool)

(assert (=> b!5812477 m!6750696))

(assert (=> b!5812469 m!6750690))

(assert (=> b!5812054 d!1830370))

(declare-fun d!1830386 () Bool)

(assert (=> d!1830386 (= (matchR!8014 r!7292 s!2326) (matchRSpec!2932 r!7292 s!2326))))

(declare-fun lt!2300324 () Unit!156918)

(declare-fun choose!44145 (Regex!15829 List!63788) Unit!156918)

(assert (=> d!1830386 (= lt!2300324 (choose!44145 r!7292 s!2326))))

(assert (=> d!1830386 (validRegex!7565 r!7292)))

(assert (=> d!1830386 (= (mainMatchTheorem!2932 r!7292 s!2326) lt!2300324)))

(declare-fun bs!1372267 () Bool)

(assert (= bs!1372267 d!1830386))

(assert (=> bs!1372267 m!6750404))

(assert (=> bs!1372267 m!6750402))

(declare-fun m!6750698 () Bool)

(assert (=> bs!1372267 m!6750698))

(assert (=> bs!1372267 m!6750336))

(assert (=> b!5812054 d!1830386))

(declare-fun d!1830388 () Bool)

(declare-fun c!1030049 () Bool)

(declare-fun e!3567719 () Bool)

(assert (=> d!1830388 (= c!1030049 e!3567719)))

(declare-fun res!2451095 () Bool)

(assert (=> d!1830388 (=> (not res!2451095) (not e!3567719))))

(assert (=> d!1830388 (= res!2451095 ((_ is Cons!63662) (exprs!5713 lt!2300252)))))

(declare-fun e!3567721 () (InoxSet Context!10426))

(assert (=> d!1830388 (= (derivationStepZipperUp!1093 lt!2300252 (h!70112 s!2326)) e!3567721)))

(declare-fun call!453972 () (InoxSet Context!10426))

(declare-fun b!5812493 () Bool)

(assert (=> b!5812493 (= e!3567721 ((_ map or) call!453972 (derivationStepZipperUp!1093 (Context!10427 (t!377141 (exprs!5713 lt!2300252))) (h!70112 s!2326))))))

(declare-fun b!5812494 () Bool)

(declare-fun e!3567720 () (InoxSet Context!10426))

(assert (=> b!5812494 (= e!3567720 call!453972)))

(declare-fun bm!453967 () Bool)

(assert (=> bm!453967 (= call!453972 (derivationStepZipperDown!1167 (h!70110 (exprs!5713 lt!2300252)) (Context!10427 (t!377141 (exprs!5713 lt!2300252))) (h!70112 s!2326)))))

(declare-fun b!5812495 () Bool)

(assert (=> b!5812495 (= e!3567720 ((as const (Array Context!10426 Bool)) false))))

(declare-fun b!5812496 () Bool)

(assert (=> b!5812496 (= e!3567719 (nullable!5853 (h!70110 (exprs!5713 lt!2300252))))))

(declare-fun b!5812497 () Bool)

(assert (=> b!5812497 (= e!3567721 e!3567720)))

(declare-fun c!1030048 () Bool)

(assert (=> b!5812497 (= c!1030048 ((_ is Cons!63662) (exprs!5713 lt!2300252)))))

(assert (= (and d!1830388 res!2451095) b!5812496))

(assert (= (and d!1830388 c!1030049) b!5812493))

(assert (= (and d!1830388 (not c!1030049)) b!5812497))

(assert (= (and b!5812497 c!1030048) b!5812494))

(assert (= (and b!5812497 (not c!1030048)) b!5812495))

(assert (= (or b!5812493 b!5812494) bm!453967))

(declare-fun m!6750700 () Bool)

(assert (=> b!5812493 m!6750700))

(declare-fun m!6750702 () Bool)

(assert (=> bm!453967 m!6750702))

(declare-fun m!6750704 () Bool)

(assert (=> b!5812496 m!6750704))

(assert (=> b!5812065 d!1830388))

(declare-fun d!1830390 () Bool)

(assert (=> d!1830390 (= (flatMap!1436 lt!2300233 lambda!317546) (dynLambda!24927 lambda!317546 lt!2300231))))

(declare-fun lt!2300325 () Unit!156918)

(assert (=> d!1830390 (= lt!2300325 (choose!44141 lt!2300233 lt!2300231 lambda!317546))))

(assert (=> d!1830390 (= lt!2300233 (store ((as const (Array Context!10426 Bool)) false) lt!2300231 true))))

(assert (=> d!1830390 (= (lemmaFlatMapOnSingletonSet!968 lt!2300233 lt!2300231 lambda!317546) lt!2300325)))

(declare-fun b_lambda!219125 () Bool)

(assert (=> (not b_lambda!219125) (not d!1830390)))

(declare-fun bs!1372269 () Bool)

(assert (= bs!1372269 d!1830390))

(assert (=> bs!1372269 m!6750324))

(declare-fun m!6750712 () Bool)

(assert (=> bs!1372269 m!6750712))

(declare-fun m!6750714 () Bool)

(assert (=> bs!1372269 m!6750714))

(assert (=> bs!1372269 m!6750318))

(assert (=> b!5812065 d!1830390))

(declare-fun d!1830394 () Bool)

(assert (=> d!1830394 (= (flatMap!1436 lt!2300245 lambda!317546) (dynLambda!24927 lambda!317546 lt!2300252))))

(declare-fun lt!2300326 () Unit!156918)

(assert (=> d!1830394 (= lt!2300326 (choose!44141 lt!2300245 lt!2300252 lambda!317546))))

(assert (=> d!1830394 (= lt!2300245 (store ((as const (Array Context!10426 Bool)) false) lt!2300252 true))))

(assert (=> d!1830394 (= (lemmaFlatMapOnSingletonSet!968 lt!2300245 lt!2300252 lambda!317546) lt!2300326)))

(declare-fun b_lambda!219127 () Bool)

(assert (=> (not b_lambda!219127) (not d!1830394)))

(declare-fun bs!1372271 () Bool)

(assert (= bs!1372271 d!1830394))

(assert (=> bs!1372271 m!6750320))

(declare-fun m!6750718 () Bool)

(assert (=> bs!1372271 m!6750718))

(declare-fun m!6750720 () Bool)

(assert (=> bs!1372271 m!6750720))

(assert (=> bs!1372271 m!6750334))

(assert (=> b!5812065 d!1830394))

(declare-fun d!1830400 () Bool)

(declare-fun c!1030051 () Bool)

(declare-fun e!3567722 () Bool)

(assert (=> d!1830400 (= c!1030051 e!3567722)))

(declare-fun res!2451096 () Bool)

(assert (=> d!1830400 (=> (not res!2451096) (not e!3567722))))

(assert (=> d!1830400 (= res!2451096 ((_ is Cons!63662) (exprs!5713 lt!2300231)))))

(declare-fun e!3567724 () (InoxSet Context!10426))

(assert (=> d!1830400 (= (derivationStepZipperUp!1093 lt!2300231 (h!70112 s!2326)) e!3567724)))

(declare-fun b!5812498 () Bool)

(declare-fun call!453973 () (InoxSet Context!10426))

(assert (=> b!5812498 (= e!3567724 ((_ map or) call!453973 (derivationStepZipperUp!1093 (Context!10427 (t!377141 (exprs!5713 lt!2300231))) (h!70112 s!2326))))))

(declare-fun b!5812499 () Bool)

(declare-fun e!3567723 () (InoxSet Context!10426))

(assert (=> b!5812499 (= e!3567723 call!453973)))

(declare-fun bm!453968 () Bool)

(assert (=> bm!453968 (= call!453973 (derivationStepZipperDown!1167 (h!70110 (exprs!5713 lt!2300231)) (Context!10427 (t!377141 (exprs!5713 lt!2300231))) (h!70112 s!2326)))))

(declare-fun b!5812500 () Bool)

(assert (=> b!5812500 (= e!3567723 ((as const (Array Context!10426 Bool)) false))))

(declare-fun b!5812501 () Bool)

(assert (=> b!5812501 (= e!3567722 (nullable!5853 (h!70110 (exprs!5713 lt!2300231))))))

(declare-fun b!5812502 () Bool)

(assert (=> b!5812502 (= e!3567724 e!3567723)))

(declare-fun c!1030050 () Bool)

(assert (=> b!5812502 (= c!1030050 ((_ is Cons!63662) (exprs!5713 lt!2300231)))))

(assert (= (and d!1830400 res!2451096) b!5812501))

(assert (= (and d!1830400 c!1030051) b!5812498))

(assert (= (and d!1830400 (not c!1030051)) b!5812502))

(assert (= (and b!5812502 c!1030050) b!5812499))

(assert (= (and b!5812502 (not c!1030050)) b!5812500))

(assert (= (or b!5812498 b!5812499) bm!453968))

(declare-fun m!6750722 () Bool)

(assert (=> b!5812498 m!6750722))

(declare-fun m!6750724 () Bool)

(assert (=> bm!453968 m!6750724))

(declare-fun m!6750726 () Bool)

(assert (=> b!5812501 m!6750726))

(assert (=> b!5812065 d!1830400))

(declare-fun d!1830402 () Bool)

(assert (=> d!1830402 (= (flatMap!1436 lt!2300233 lambda!317546) (choose!44139 lt!2300233 lambda!317546))))

(declare-fun bs!1372272 () Bool)

(assert (= bs!1372272 d!1830402))

(declare-fun m!6750728 () Bool)

(assert (=> bs!1372272 m!6750728))

(assert (=> b!5812065 d!1830402))

(declare-fun bs!1372273 () Bool)

(declare-fun d!1830404 () Bool)

(assert (= bs!1372273 (and d!1830404 b!5812074)))

(declare-fun lambda!317595 () Int)

(assert (=> bs!1372273 (= lambda!317595 lambda!317546)))

(assert (=> d!1830404 true))

(assert (=> d!1830404 (= (derivationStepZipper!1898 lt!2300233 (h!70112 s!2326)) (flatMap!1436 lt!2300233 lambda!317595))))

(declare-fun bs!1372274 () Bool)

(assert (= bs!1372274 d!1830404))

(declare-fun m!6750730 () Bool)

(assert (=> bs!1372274 m!6750730))

(assert (=> b!5812065 d!1830404))

(declare-fun d!1830406 () Bool)

(assert (=> d!1830406 (= (flatMap!1436 lt!2300245 lambda!317546) (choose!44139 lt!2300245 lambda!317546))))

(declare-fun bs!1372275 () Bool)

(assert (= bs!1372275 d!1830406))

(declare-fun m!6750732 () Bool)

(assert (=> bs!1372275 m!6750732))

(assert (=> b!5812065 d!1830406))

(declare-fun b!5812550 () Bool)

(declare-fun e!3567755 () Bool)

(declare-fun call!453981 () Bool)

(assert (=> b!5812550 (= e!3567755 call!453981)))

(declare-fun b!5812551 () Bool)

(declare-fun e!3567760 () Bool)

(declare-fun e!3567756 () Bool)

(assert (=> b!5812551 (= e!3567760 e!3567756)))

(declare-fun c!1030065 () Bool)

(assert (=> b!5812551 (= c!1030065 ((_ is Star!15829) r!7292))))

(declare-fun b!5812552 () Bool)

(declare-fun res!2451123 () Bool)

(declare-fun e!3567758 () Bool)

(assert (=> b!5812552 (=> (not res!2451123) (not e!3567758))))

(declare-fun call!453982 () Bool)

(assert (=> b!5812552 (= res!2451123 call!453982)))

(declare-fun e!3567754 () Bool)

(assert (=> b!5812552 (= e!3567754 e!3567758)))

(declare-fun b!5812553 () Bool)

(assert (=> b!5812553 (= e!3567758 call!453981)))

(declare-fun b!5812554 () Bool)

(declare-fun e!3567759 () Bool)

(assert (=> b!5812554 (= e!3567756 e!3567759)))

(declare-fun res!2451126 () Bool)

(assert (=> b!5812554 (= res!2451126 (not (nullable!5853 (reg!16158 r!7292))))))

(assert (=> b!5812554 (=> (not res!2451126) (not e!3567759))))

(declare-fun d!1830408 () Bool)

(declare-fun res!2451122 () Bool)

(assert (=> d!1830408 (=> res!2451122 e!3567760)))

(assert (=> d!1830408 (= res!2451122 ((_ is ElementMatch!15829) r!7292))))

(assert (=> d!1830408 (= (validRegex!7565 r!7292) e!3567760)))

(declare-fun bm!453975 () Bool)

(declare-fun c!1030064 () Bool)

(assert (=> bm!453975 (= call!453982 (validRegex!7565 (ite c!1030064 (regOne!32171 r!7292) (regOne!32170 r!7292))))))

(declare-fun b!5812555 () Bool)

(declare-fun e!3567757 () Bool)

(assert (=> b!5812555 (= e!3567757 e!3567755)))

(declare-fun res!2451125 () Bool)

(assert (=> b!5812555 (=> (not res!2451125) (not e!3567755))))

(assert (=> b!5812555 (= res!2451125 call!453982)))

(declare-fun bm!453976 () Bool)

(declare-fun call!453980 () Bool)

(assert (=> bm!453976 (= call!453981 call!453980)))

(declare-fun bm!453977 () Bool)

(assert (=> bm!453977 (= call!453980 (validRegex!7565 (ite c!1030065 (reg!16158 r!7292) (ite c!1030064 (regTwo!32171 r!7292) (regTwo!32170 r!7292)))))))

(declare-fun b!5812556 () Bool)

(declare-fun res!2451124 () Bool)

(assert (=> b!5812556 (=> res!2451124 e!3567757)))

(assert (=> b!5812556 (= res!2451124 (not ((_ is Concat!24674) r!7292)))))

(assert (=> b!5812556 (= e!3567754 e!3567757)))

(declare-fun b!5812557 () Bool)

(assert (=> b!5812557 (= e!3567759 call!453980)))

(declare-fun b!5812558 () Bool)

(assert (=> b!5812558 (= e!3567756 e!3567754)))

(assert (=> b!5812558 (= c!1030064 ((_ is Union!15829) r!7292))))

(assert (= (and d!1830408 (not res!2451122)) b!5812551))

(assert (= (and b!5812551 c!1030065) b!5812554))

(assert (= (and b!5812551 (not c!1030065)) b!5812558))

(assert (= (and b!5812554 res!2451126) b!5812557))

(assert (= (and b!5812558 c!1030064) b!5812552))

(assert (= (and b!5812558 (not c!1030064)) b!5812556))

(assert (= (and b!5812552 res!2451123) b!5812553))

(assert (= (and b!5812556 (not res!2451124)) b!5812555))

(assert (= (and b!5812555 res!2451125) b!5812550))

(assert (= (or b!5812553 b!5812550) bm!453976))

(assert (= (or b!5812552 b!5812555) bm!453975))

(assert (= (or b!5812557 bm!453976) bm!453977))

(declare-fun m!6750734 () Bool)

(assert (=> b!5812554 m!6750734))

(declare-fun m!6750736 () Bool)

(assert (=> bm!453975 m!6750736))

(declare-fun m!6750738 () Bool)

(assert (=> bm!453977 m!6750738))

(assert (=> start!595516 d!1830408))

(declare-fun d!1830410 () Bool)

(assert (=> d!1830410 (= (isEmpty!35580 (t!377142 zl!343)) ((_ is Nil!63663) (t!377142 zl!343)))))

(assert (=> b!5812075 d!1830410))

(declare-fun call!454000 () (InoxSet Context!10426))

(declare-fun c!1030077 () Bool)

(declare-fun call!453996 () List!63786)

(declare-fun bm!453990 () Bool)

(assert (=> bm!453990 (= call!454000 (derivationStepZipperDown!1167 (ite c!1030077 (regOne!32171 r!7292) (regOne!32170 r!7292)) (ite c!1030077 (Context!10427 Nil!63662) (Context!10427 call!453996)) (h!70112 s!2326)))))

(declare-fun d!1830412 () Bool)

(declare-fun c!1030079 () Bool)

(assert (=> d!1830412 (= c!1030079 (and ((_ is ElementMatch!15829) r!7292) (= (c!1029931 r!7292) (h!70112 s!2326))))))

(declare-fun e!3567778 () (InoxSet Context!10426))

(assert (=> d!1830412 (= (derivationStepZipperDown!1167 r!7292 (Context!10427 Nil!63662) (h!70112 s!2326)) e!3567778)))

(declare-fun call!453999 () (InoxSet Context!10426))

(declare-fun call!453995 () List!63786)

(declare-fun c!1030080 () Bool)

(declare-fun c!1030078 () Bool)

(declare-fun bm!453991 () Bool)

(assert (=> bm!453991 (= call!453999 (derivationStepZipperDown!1167 (ite c!1030077 (regTwo!32171 r!7292) (ite c!1030080 (regTwo!32170 r!7292) (ite c!1030078 (regOne!32170 r!7292) (reg!16158 r!7292)))) (ite (or c!1030077 c!1030080) (Context!10427 Nil!63662) (Context!10427 call!453995)) (h!70112 s!2326)))))

(declare-fun bm!453992 () Bool)

(declare-fun call!453998 () (InoxSet Context!10426))

(declare-fun call!453997 () (InoxSet Context!10426))

(assert (=> bm!453992 (= call!453998 call!453997)))

(declare-fun bm!453993 () Bool)

(assert (=> bm!453993 (= call!453995 call!453996)))

(declare-fun b!5812585 () Bool)

(declare-fun e!3567777 () (InoxSet Context!10426))

(assert (=> b!5812585 (= e!3567778 e!3567777)))

(assert (=> b!5812585 (= c!1030077 ((_ is Union!15829) r!7292))))

(declare-fun b!5812586 () Bool)

(assert (=> b!5812586 (= e!3567777 ((_ map or) call!454000 call!453999))))

(declare-fun b!5812587 () Bool)

(declare-fun e!3567780 () Bool)

(assert (=> b!5812587 (= e!3567780 (nullable!5853 (regOne!32170 r!7292)))))

(declare-fun b!5812588 () Bool)

(declare-fun c!1030076 () Bool)

(assert (=> b!5812588 (= c!1030076 ((_ is Star!15829) r!7292))))

(declare-fun e!3567775 () (InoxSet Context!10426))

(declare-fun e!3567779 () (InoxSet Context!10426))

(assert (=> b!5812588 (= e!3567775 e!3567779)))

(declare-fun bm!453994 () Bool)

(assert (=> bm!453994 (= call!453997 call!453999)))

(declare-fun b!5812589 () Bool)

(assert (=> b!5812589 (= e!3567779 ((as const (Array Context!10426 Bool)) false))))

(declare-fun b!5812590 () Bool)

(assert (=> b!5812590 (= e!3567778 (store ((as const (Array Context!10426 Bool)) false) (Context!10427 Nil!63662) true))))

(declare-fun b!5812591 () Bool)

(assert (=> b!5812591 (= e!3567775 call!453998)))

(declare-fun b!5812592 () Bool)

(declare-fun e!3567776 () (InoxSet Context!10426))

(assert (=> b!5812592 (= e!3567776 ((_ map or) call!454000 call!453997))))

(declare-fun bm!453995 () Bool)

(declare-fun $colon$colon!1808 (List!63786 Regex!15829) List!63786)

(assert (=> bm!453995 (= call!453996 ($colon$colon!1808 (exprs!5713 (Context!10427 Nil!63662)) (ite (or c!1030080 c!1030078) (regTwo!32170 r!7292) r!7292)))))

(declare-fun b!5812593 () Bool)

(assert (=> b!5812593 (= e!3567776 e!3567775)))

(assert (=> b!5812593 (= c!1030078 ((_ is Concat!24674) r!7292))))

(declare-fun b!5812594 () Bool)

(assert (=> b!5812594 (= c!1030080 e!3567780)))

(declare-fun res!2451133 () Bool)

(assert (=> b!5812594 (=> (not res!2451133) (not e!3567780))))

(assert (=> b!5812594 (= res!2451133 ((_ is Concat!24674) r!7292))))

(assert (=> b!5812594 (= e!3567777 e!3567776)))

(declare-fun b!5812595 () Bool)

(assert (=> b!5812595 (= e!3567779 call!453998)))

(assert (= (and d!1830412 c!1030079) b!5812590))

(assert (= (and d!1830412 (not c!1030079)) b!5812585))

(assert (= (and b!5812585 c!1030077) b!5812586))

(assert (= (and b!5812585 (not c!1030077)) b!5812594))

(assert (= (and b!5812594 res!2451133) b!5812587))

(assert (= (and b!5812594 c!1030080) b!5812592))

(assert (= (and b!5812594 (not c!1030080)) b!5812593))

(assert (= (and b!5812593 c!1030078) b!5812591))

(assert (= (and b!5812593 (not c!1030078)) b!5812588))

(assert (= (and b!5812588 c!1030076) b!5812595))

(assert (= (and b!5812588 (not c!1030076)) b!5812589))

(assert (= (or b!5812591 b!5812595) bm!453993))

(assert (= (or b!5812591 b!5812595) bm!453992))

(assert (= (or b!5812592 bm!453993) bm!453995))

(assert (= (or b!5812592 bm!453992) bm!453994))

(assert (= (or b!5812586 bm!453994) bm!453991))

(assert (= (or b!5812586 b!5812592) bm!453990))

(declare-fun m!6750758 () Bool)

(assert (=> bm!453990 m!6750758))

(declare-fun m!6750760 () Bool)

(assert (=> bm!453995 m!6750760))

(declare-fun m!6750762 () Bool)

(assert (=> b!5812590 m!6750762))

(declare-fun m!6750764 () Bool)

(assert (=> bm!453991 m!6750764))

(declare-fun m!6750766 () Bool)

(assert (=> b!5812587 m!6750766))

(assert (=> b!5812077 d!1830412))

(declare-fun d!1830418 () Bool)

(declare-fun c!1030082 () Bool)

(declare-fun e!3567781 () Bool)

(assert (=> d!1830418 (= c!1030082 e!3567781)))

(declare-fun res!2451134 () Bool)

(assert (=> d!1830418 (=> (not res!2451134) (not e!3567781))))

(assert (=> d!1830418 (= res!2451134 ((_ is Cons!63662) (exprs!5713 (Context!10427 (Cons!63662 r!7292 Nil!63662)))))))

(declare-fun e!3567783 () (InoxSet Context!10426))

(assert (=> d!1830418 (= (derivationStepZipperUp!1093 (Context!10427 (Cons!63662 r!7292 Nil!63662)) (h!70112 s!2326)) e!3567783)))

(declare-fun b!5812596 () Bool)

(declare-fun call!454001 () (InoxSet Context!10426))

(assert (=> b!5812596 (= e!3567783 ((_ map or) call!454001 (derivationStepZipperUp!1093 (Context!10427 (t!377141 (exprs!5713 (Context!10427 (Cons!63662 r!7292 Nil!63662))))) (h!70112 s!2326))))))

(declare-fun b!5812597 () Bool)

(declare-fun e!3567782 () (InoxSet Context!10426))

(assert (=> b!5812597 (= e!3567782 call!454001)))

(declare-fun bm!453996 () Bool)

(assert (=> bm!453996 (= call!454001 (derivationStepZipperDown!1167 (h!70110 (exprs!5713 (Context!10427 (Cons!63662 r!7292 Nil!63662)))) (Context!10427 (t!377141 (exprs!5713 (Context!10427 (Cons!63662 r!7292 Nil!63662))))) (h!70112 s!2326)))))

(declare-fun b!5812598 () Bool)

(assert (=> b!5812598 (= e!3567782 ((as const (Array Context!10426 Bool)) false))))

(declare-fun b!5812599 () Bool)

(assert (=> b!5812599 (= e!3567781 (nullable!5853 (h!70110 (exprs!5713 (Context!10427 (Cons!63662 r!7292 Nil!63662))))))))

(declare-fun b!5812600 () Bool)

(assert (=> b!5812600 (= e!3567783 e!3567782)))

(declare-fun c!1030081 () Bool)

(assert (=> b!5812600 (= c!1030081 ((_ is Cons!63662) (exprs!5713 (Context!10427 (Cons!63662 r!7292 Nil!63662)))))))

(assert (= (and d!1830418 res!2451134) b!5812599))

(assert (= (and d!1830418 c!1030082) b!5812596))

(assert (= (and d!1830418 (not c!1030082)) b!5812600))

(assert (= (and b!5812600 c!1030081) b!5812597))

(assert (= (and b!5812600 (not c!1030081)) b!5812598))

(assert (= (or b!5812596 b!5812597) bm!453996))

(declare-fun m!6750768 () Bool)

(assert (=> b!5812596 m!6750768))

(declare-fun m!6750770 () Bool)

(assert (=> bm!453996 m!6750770))

(declare-fun m!6750772 () Bool)

(assert (=> b!5812599 m!6750772))

(assert (=> b!5812077 d!1830418))

(declare-fun bs!1372282 () Bool)

(declare-fun d!1830420 () Bool)

(assert (= bs!1372282 (and d!1830420 b!5812074)))

(declare-fun lambda!317599 () Int)

(assert (=> bs!1372282 (= lambda!317599 lambda!317546)))

(declare-fun bs!1372283 () Bool)

(assert (= bs!1372283 (and d!1830420 d!1830404)))

(assert (=> bs!1372283 (= lambda!317599 lambda!317595)))

(assert (=> d!1830420 true))

(assert (=> d!1830420 (= (derivationStepZipper!1898 z!1189 (h!70112 s!2326)) (flatMap!1436 z!1189 lambda!317599))))

(declare-fun bs!1372284 () Bool)

(assert (= bs!1372284 d!1830420))

(declare-fun m!6750774 () Bool)

(assert (=> bs!1372284 m!6750774))

(assert (=> b!5812077 d!1830420))

(declare-fun d!1830422 () Bool)

(declare-fun e!3567807 () Bool)

(assert (=> d!1830422 e!3567807))

(declare-fun res!2451146 () Bool)

(assert (=> d!1830422 (=> (not res!2451146) (not e!3567807))))

(declare-fun lt!2300344 () List!63788)

(declare-fun content!11671 (List!63788) (InoxSet C!31928))

(assert (=> d!1830422 (= res!2451146 (= (content!11671 lt!2300344) ((_ map or) (content!11671 (_1!36229 lt!2300254)) (content!11671 (_2!36229 lt!2300254)))))))

(declare-fun e!3567806 () List!63788)

(assert (=> d!1830422 (= lt!2300344 e!3567806)))

(declare-fun c!1030097 () Bool)

(assert (=> d!1830422 (= c!1030097 ((_ is Nil!63664) (_1!36229 lt!2300254)))))

(assert (=> d!1830422 (= (++!14042 (_1!36229 lt!2300254) (_2!36229 lt!2300254)) lt!2300344)))

(declare-fun b!5812642 () Bool)

(assert (=> b!5812642 (= e!3567807 (or (not (= (_2!36229 lt!2300254) Nil!63664)) (= lt!2300344 (_1!36229 lt!2300254))))))

(declare-fun b!5812639 () Bool)

(assert (=> b!5812639 (= e!3567806 (_2!36229 lt!2300254))))

(declare-fun b!5812640 () Bool)

(assert (=> b!5812640 (= e!3567806 (Cons!63664 (h!70112 (_1!36229 lt!2300254)) (++!14042 (t!377143 (_1!36229 lt!2300254)) (_2!36229 lt!2300254))))))

(declare-fun b!5812641 () Bool)

(declare-fun res!2451145 () Bool)

(assert (=> b!5812641 (=> (not res!2451145) (not e!3567807))))

(declare-fun size!40115 (List!63788) Int)

(assert (=> b!5812641 (= res!2451145 (= (size!40115 lt!2300344) (+ (size!40115 (_1!36229 lt!2300254)) (size!40115 (_2!36229 lt!2300254)))))))

(assert (= (and d!1830422 c!1030097) b!5812639))

(assert (= (and d!1830422 (not c!1030097)) b!5812640))

(assert (= (and d!1830422 res!2451146) b!5812641))

(assert (= (and b!5812641 res!2451145) b!5812642))

(declare-fun m!6750776 () Bool)

(assert (=> d!1830422 m!6750776))

(declare-fun m!6750778 () Bool)

(assert (=> d!1830422 m!6750778))

(declare-fun m!6750780 () Bool)

(assert (=> d!1830422 m!6750780))

(declare-fun m!6750782 () Bool)

(assert (=> b!5812640 m!6750782))

(declare-fun m!6750784 () Bool)

(assert (=> b!5812641 m!6750784))

(declare-fun m!6750786 () Bool)

(assert (=> b!5812641 m!6750786))

(declare-fun m!6750788 () Bool)

(assert (=> b!5812641 m!6750788))

(assert (=> b!5812066 d!1830422))

(declare-fun d!1830424 () Bool)

(assert (=> d!1830424 (isDefined!12541 (findConcatSeparationZippers!146 lt!2300245 (store ((as const (Array Context!10426 Bool)) false) lt!2300231 true) Nil!63664 s!2326 s!2326))))

(declare-fun lt!2300351 () Unit!156918)

(declare-fun choose!44147 ((InoxSet Context!10426) Context!10426 List!63788) Unit!156918)

(assert (=> d!1830424 (= lt!2300351 (choose!44147 lt!2300245 lt!2300231 s!2326))))

(assert (=> d!1830424 (matchZipper!1957 (appendTo!138 lt!2300245 lt!2300231) s!2326)))

(assert (=> d!1830424 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!146 lt!2300245 lt!2300231 s!2326) lt!2300351)))

(declare-fun bs!1372299 () Bool)

(assert (= bs!1372299 d!1830424))

(declare-fun m!6750820 () Bool)

(assert (=> bs!1372299 m!6750820))

(declare-fun m!6750822 () Bool)

(assert (=> bs!1372299 m!6750822))

(assert (=> bs!1372299 m!6750314))

(declare-fun m!6750824 () Bool)

(assert (=> bs!1372299 m!6750824))

(declare-fun m!6750826 () Bool)

(assert (=> bs!1372299 m!6750826))

(assert (=> bs!1372299 m!6750318))

(assert (=> bs!1372299 m!6750820))

(assert (=> bs!1372299 m!6750318))

(assert (=> bs!1372299 m!6750314))

(assert (=> b!5812066 d!1830424))

(declare-fun b!5812714 () Bool)

(declare-fun e!3567851 () Option!15838)

(assert (=> b!5812714 (= e!3567851 None!15837)))

(declare-fun b!5812715 () Bool)

(declare-fun e!3567850 () Bool)

(declare-fun lt!2300369 () Option!15838)

(assert (=> b!5812715 (= e!3567850 (not (isDefined!12541 lt!2300369)))))

(declare-fun b!5812716 () Bool)

(declare-fun e!3567849 () Option!15838)

(assert (=> b!5812716 (= e!3567849 e!3567851)))

(declare-fun c!1030119 () Bool)

(assert (=> b!5812716 (= c!1030119 ((_ is Nil!63664) s!2326))))

(declare-fun b!5812717 () Bool)

(declare-fun res!2451178 () Bool)

(declare-fun e!3567848 () Bool)

(assert (=> b!5812717 (=> (not res!2451178) (not e!3567848))))

(assert (=> b!5812717 (= res!2451178 (matchZipper!1957 lt!2300233 (_2!36229 (get!21979 lt!2300369))))))

(declare-fun b!5812718 () Bool)

(declare-fun lt!2300370 () Unit!156918)

(declare-fun lt!2300368 () Unit!156918)

(assert (=> b!5812718 (= lt!2300370 lt!2300368)))

(assert (=> b!5812718 (= (++!14042 (++!14042 Nil!63664 (Cons!63664 (h!70112 s!2326) Nil!63664)) (t!377143 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2146 (List!63788 C!31928 List!63788 List!63788) Unit!156918)

(assert (=> b!5812718 (= lt!2300368 (lemmaMoveElementToOtherListKeepsConcatEq!2146 Nil!63664 (h!70112 s!2326) (t!377143 s!2326) s!2326))))

(assert (=> b!5812718 (= e!3567851 (findConcatSeparationZippers!146 lt!2300245 lt!2300233 (++!14042 Nil!63664 (Cons!63664 (h!70112 s!2326) Nil!63664)) (t!377143 s!2326) s!2326))))

(declare-fun b!5812719 () Bool)

(assert (=> b!5812719 (= e!3567848 (= (++!14042 (_1!36229 (get!21979 lt!2300369)) (_2!36229 (get!21979 lt!2300369))) s!2326))))

(declare-fun b!5812720 () Bool)

(assert (=> b!5812720 (= e!3567849 (Some!15837 (tuple2!65853 Nil!63664 s!2326)))))

(declare-fun d!1830432 () Bool)

(assert (=> d!1830432 e!3567850))

(declare-fun res!2451180 () Bool)

(assert (=> d!1830432 (=> res!2451180 e!3567850)))

(assert (=> d!1830432 (= res!2451180 e!3567848)))

(declare-fun res!2451177 () Bool)

(assert (=> d!1830432 (=> (not res!2451177) (not e!3567848))))

(assert (=> d!1830432 (= res!2451177 (isDefined!12541 lt!2300369))))

(assert (=> d!1830432 (= lt!2300369 e!3567849)))

(declare-fun c!1030120 () Bool)

(declare-fun e!3567847 () Bool)

(assert (=> d!1830432 (= c!1030120 e!3567847)))

(declare-fun res!2451179 () Bool)

(assert (=> d!1830432 (=> (not res!2451179) (not e!3567847))))

(assert (=> d!1830432 (= res!2451179 (matchZipper!1957 lt!2300245 Nil!63664))))

(assert (=> d!1830432 (= (++!14042 Nil!63664 s!2326) s!2326)))

(assert (=> d!1830432 (= (findConcatSeparationZippers!146 lt!2300245 lt!2300233 Nil!63664 s!2326 s!2326) lt!2300369)))

(declare-fun b!5812721 () Bool)

(declare-fun res!2451176 () Bool)

(assert (=> b!5812721 (=> (not res!2451176) (not e!3567848))))

(assert (=> b!5812721 (= res!2451176 (matchZipper!1957 lt!2300245 (_1!36229 (get!21979 lt!2300369))))))

(declare-fun b!5812722 () Bool)

(assert (=> b!5812722 (= e!3567847 (matchZipper!1957 lt!2300233 s!2326))))

(assert (= (and d!1830432 res!2451179) b!5812722))

(assert (= (and d!1830432 c!1030120) b!5812720))

(assert (= (and d!1830432 (not c!1030120)) b!5812716))

(assert (= (and b!5812716 c!1030119) b!5812714))

(assert (= (and b!5812716 (not c!1030119)) b!5812718))

(assert (= (and d!1830432 res!2451177) b!5812721))

(assert (= (and b!5812721 res!2451176) b!5812717))

(assert (= (and b!5812717 res!2451178) b!5812719))

(assert (= (and d!1830432 (not res!2451180)) b!5812715))

(declare-fun m!6750888 () Bool)

(assert (=> b!5812715 m!6750888))

(declare-fun m!6750890 () Bool)

(assert (=> b!5812722 m!6750890))

(declare-fun m!6750892 () Bool)

(assert (=> b!5812717 m!6750892))

(declare-fun m!6750894 () Bool)

(assert (=> b!5812717 m!6750894))

(assert (=> d!1830432 m!6750888))

(declare-fun m!6750896 () Bool)

(assert (=> d!1830432 m!6750896))

(declare-fun m!6750898 () Bool)

(assert (=> d!1830432 m!6750898))

(assert (=> b!5812719 m!6750892))

(declare-fun m!6750900 () Bool)

(assert (=> b!5812719 m!6750900))

(declare-fun m!6750902 () Bool)

(assert (=> b!5812718 m!6750902))

(assert (=> b!5812718 m!6750902))

(declare-fun m!6750904 () Bool)

(assert (=> b!5812718 m!6750904))

(declare-fun m!6750906 () Bool)

(assert (=> b!5812718 m!6750906))

(assert (=> b!5812718 m!6750902))

(declare-fun m!6750908 () Bool)

(assert (=> b!5812718 m!6750908))

(assert (=> b!5812721 m!6750892))

(declare-fun m!6750910 () Bool)

(assert (=> b!5812721 m!6750910))

(assert (=> b!5812066 d!1830432))

(declare-fun d!1830458 () Bool)

(assert (=> d!1830458 (= (get!21979 lt!2300227) (v!51901 lt!2300227))))

(assert (=> b!5812066 d!1830458))

(declare-fun d!1830462 () Bool)

(declare-fun isEmpty!35583 (Option!15838) Bool)

(assert (=> d!1830462 (= (isDefined!12541 lt!2300227) (not (isEmpty!35583 lt!2300227)))))

(declare-fun bs!1372320 () Bool)

(assert (= bs!1372320 d!1830462))

(declare-fun m!6750918 () Bool)

(assert (=> bs!1372320 m!6750918))

(assert (=> b!5812066 d!1830462))

(declare-fun d!1830464 () Bool)

(declare-fun choose!44148 (Int) Bool)

(assert (=> d!1830464 (= (Exists!2929 lambda!317544) (choose!44148 lambda!317544))))

(declare-fun bs!1372321 () Bool)

(assert (= bs!1372321 d!1830464))

(declare-fun m!6750920 () Bool)

(assert (=> bs!1372321 m!6750920))

(assert (=> b!5812056 d!1830464))

(declare-fun d!1830466 () Bool)

(assert (=> d!1830466 (= (isDefined!12541 (findConcatSeparation!2252 (reg!16158 r!7292) r!7292 Nil!63664 s!2326 s!2326)) (not (isEmpty!35583 (findConcatSeparation!2252 (reg!16158 r!7292) r!7292 Nil!63664 s!2326 s!2326))))))

(declare-fun bs!1372322 () Bool)

(assert (= bs!1372322 d!1830466))

(assert (=> bs!1372322 m!6750388))

(declare-fun m!6750922 () Bool)

(assert (=> bs!1372322 m!6750922))

(assert (=> b!5812056 d!1830466))

(declare-fun bs!1372330 () Bool)

(declare-fun d!1830468 () Bool)

(assert (= bs!1372330 (and d!1830468 b!5812056)))

(declare-fun lambda!317618 () Int)

(assert (=> bs!1372330 (not (= lambda!317618 lambda!317545))))

(assert (=> bs!1372330 (= lambda!317618 lambda!317543)))

(declare-fun bs!1372332 () Bool)

(assert (= bs!1372332 (and d!1830468 b!5812418)))

(assert (=> bs!1372332 (not (= lambda!317618 lambda!317574))))

(declare-fun bs!1372333 () Bool)

(assert (= bs!1372333 (and d!1830468 b!5812411)))

(assert (=> bs!1372333 (not (= lambda!317618 lambda!317576))))

(assert (=> bs!1372330 (not (= lambda!317618 lambda!317544))))

(assert (=> d!1830468 true))

(assert (=> d!1830468 true))

(assert (=> d!1830468 true))

(declare-fun lambda!317619 () Int)

(assert (=> bs!1372330 (= lambda!317619 lambda!317545)))

(declare-fun bs!1372334 () Bool)

(assert (= bs!1372334 d!1830468))

(assert (=> bs!1372334 (not (= lambda!317619 lambda!317618))))

(assert (=> bs!1372330 (not (= lambda!317619 lambda!317543))))

(assert (=> bs!1372332 (not (= lambda!317619 lambda!317574))))

(assert (=> bs!1372333 (= (and (= (reg!16158 r!7292) (regOne!32170 r!7292)) (= r!7292 (regTwo!32170 r!7292))) (= lambda!317619 lambda!317576))))

(assert (=> bs!1372330 (not (= lambda!317619 lambda!317544))))

(assert (=> d!1830468 true))

(assert (=> d!1830468 true))

(assert (=> d!1830468 true))

(assert (=> d!1830468 (= (Exists!2929 lambda!317618) (Exists!2929 lambda!317619))))

(declare-fun lt!2300378 () Unit!156918)

(declare-fun choose!44149 (Regex!15829 Regex!15829 List!63788) Unit!156918)

(assert (=> d!1830468 (= lt!2300378 (choose!44149 (reg!16158 r!7292) r!7292 s!2326))))

(assert (=> d!1830468 (validRegex!7565 (reg!16158 r!7292))))

(assert (=> d!1830468 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1558 (reg!16158 r!7292) r!7292 s!2326) lt!2300378)))

(declare-fun m!6750936 () Bool)

(assert (=> bs!1372334 m!6750936))

(declare-fun m!6750938 () Bool)

(assert (=> bs!1372334 m!6750938))

(declare-fun m!6750940 () Bool)

(assert (=> bs!1372334 m!6750940))

(declare-fun m!6750942 () Bool)

(assert (=> bs!1372334 m!6750942))

(assert (=> b!5812056 d!1830468))

(declare-fun bs!1372335 () Bool)

(declare-fun d!1830482 () Bool)

(assert (= bs!1372335 (and d!1830482 d!1830468)))

(declare-fun lambda!317624 () Int)

(assert (=> bs!1372335 (= (= (Star!15829 (reg!16158 r!7292)) r!7292) (= lambda!317624 lambda!317618))))

(declare-fun bs!1372336 () Bool)

(assert (= bs!1372336 (and d!1830482 b!5812056)))

(assert (=> bs!1372336 (= (= (Star!15829 (reg!16158 r!7292)) r!7292) (= lambda!317624 lambda!317543))))

(declare-fun bs!1372337 () Bool)

(assert (= bs!1372337 (and d!1830482 b!5812418)))

(assert (=> bs!1372337 (not (= lambda!317624 lambda!317574))))

(declare-fun bs!1372338 () Bool)

(assert (= bs!1372338 (and d!1830482 b!5812411)))

(assert (=> bs!1372338 (not (= lambda!317624 lambda!317576))))

(assert (=> bs!1372336 (not (= lambda!317624 lambda!317544))))

(assert (=> bs!1372335 (not (= lambda!317624 lambda!317619))))

(assert (=> bs!1372336 (not (= lambda!317624 lambda!317545))))

(assert (=> d!1830482 true))

(assert (=> d!1830482 true))

(declare-fun lambda!317625 () Int)

(assert (=> bs!1372335 (not (= lambda!317625 lambda!317618))))

(assert (=> bs!1372336 (not (= lambda!317625 lambda!317543))))

(declare-fun bs!1372339 () Bool)

(assert (= bs!1372339 d!1830482))

(assert (=> bs!1372339 (not (= lambda!317625 lambda!317624))))

(assert (=> bs!1372337 (= (= (Star!15829 (reg!16158 r!7292)) r!7292) (= lambda!317625 lambda!317574))))

(assert (=> bs!1372338 (not (= lambda!317625 lambda!317576))))

(assert (=> bs!1372336 (= (= (Star!15829 (reg!16158 r!7292)) r!7292) (= lambda!317625 lambda!317544))))

(assert (=> bs!1372335 (not (= lambda!317625 lambda!317619))))

(assert (=> bs!1372336 (not (= lambda!317625 lambda!317545))))

(assert (=> d!1830482 true))

(assert (=> d!1830482 true))

(assert (=> d!1830482 (= (Exists!2929 lambda!317624) (Exists!2929 lambda!317625))))

(declare-fun lt!2300382 () Unit!156918)

(declare-fun choose!44150 (Regex!15829 List!63788) Unit!156918)

(assert (=> d!1830482 (= lt!2300382 (choose!44150 (reg!16158 r!7292) s!2326))))

(assert (=> d!1830482 (validRegex!7565 (reg!16158 r!7292))))

(assert (=> d!1830482 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!610 (reg!16158 r!7292) s!2326) lt!2300382)))

(declare-fun m!6750944 () Bool)

(assert (=> bs!1372339 m!6750944))

(declare-fun m!6750946 () Bool)

(assert (=> bs!1372339 m!6750946))

(declare-fun m!6750948 () Bool)

(assert (=> bs!1372339 m!6750948))

(assert (=> bs!1372339 m!6750942))

(assert (=> b!5812056 d!1830482))

(declare-fun d!1830484 () Bool)

(assert (=> d!1830484 (= (Exists!2929 lambda!317543) (choose!44148 lambda!317543))))

(declare-fun bs!1372340 () Bool)

(assert (= bs!1372340 d!1830484))

(declare-fun m!6750950 () Bool)

(assert (=> bs!1372340 m!6750950))

(assert (=> b!5812056 d!1830484))

(declare-fun d!1830486 () Bool)

(assert (=> d!1830486 (= (Exists!2929 lambda!317545) (choose!44148 lambda!317545))))

(declare-fun bs!1372341 () Bool)

(assert (= bs!1372341 d!1830486))

(declare-fun m!6750952 () Bool)

(assert (=> bs!1372341 m!6750952))

(assert (=> b!5812056 d!1830486))

(declare-fun d!1830488 () Bool)

(assert (=> d!1830488 (= (isEmpty!35579 s!2326) ((_ is Nil!63664) s!2326))))

(assert (=> b!5812056 d!1830488))

(declare-fun b!5812815 () Bool)

(declare-fun e!3567897 () Bool)

(declare-fun lt!2300390 () Option!15838)

(assert (=> b!5812815 (= e!3567897 (= (++!14042 (_1!36229 (get!21979 lt!2300390)) (_2!36229 (get!21979 lt!2300390))) s!2326))))

(declare-fun b!5812816 () Bool)

(declare-fun e!3567894 () Bool)

(assert (=> b!5812816 (= e!3567894 (matchR!8014 r!7292 s!2326))))

(declare-fun b!5812817 () Bool)

(declare-fun e!3567893 () Option!15838)

(assert (=> b!5812817 (= e!3567893 None!15837)))

(declare-fun b!5812818 () Bool)

(declare-fun e!3567896 () Option!15838)

(assert (=> b!5812818 (= e!3567896 e!3567893)))

(declare-fun c!1030126 () Bool)

(assert (=> b!5812818 (= c!1030126 ((_ is Nil!63664) s!2326))))

(declare-fun b!5812819 () Bool)

(declare-fun res!2451209 () Bool)

(assert (=> b!5812819 (=> (not res!2451209) (not e!3567897))))

(assert (=> b!5812819 (= res!2451209 (matchR!8014 r!7292 (_2!36229 (get!21979 lt!2300390))))))

(declare-fun b!5812820 () Bool)

(declare-fun lt!2300389 () Unit!156918)

(declare-fun lt!2300391 () Unit!156918)

(assert (=> b!5812820 (= lt!2300389 lt!2300391)))

(assert (=> b!5812820 (= (++!14042 (++!14042 Nil!63664 (Cons!63664 (h!70112 s!2326) Nil!63664)) (t!377143 s!2326)) s!2326)))

(assert (=> b!5812820 (= lt!2300391 (lemmaMoveElementToOtherListKeepsConcatEq!2146 Nil!63664 (h!70112 s!2326) (t!377143 s!2326) s!2326))))

(assert (=> b!5812820 (= e!3567893 (findConcatSeparation!2252 (reg!16158 r!7292) r!7292 (++!14042 Nil!63664 (Cons!63664 (h!70112 s!2326) Nil!63664)) (t!377143 s!2326) s!2326))))

(declare-fun b!5812821 () Bool)

(declare-fun res!2451213 () Bool)

(assert (=> b!5812821 (=> (not res!2451213) (not e!3567897))))

(assert (=> b!5812821 (= res!2451213 (matchR!8014 (reg!16158 r!7292) (_1!36229 (get!21979 lt!2300390))))))

(declare-fun b!5812822 () Bool)

(declare-fun e!3567895 () Bool)

(assert (=> b!5812822 (= e!3567895 (not (isDefined!12541 lt!2300390)))))

(declare-fun b!5812823 () Bool)

(assert (=> b!5812823 (= e!3567896 (Some!15837 (tuple2!65853 Nil!63664 s!2326)))))

(declare-fun d!1830490 () Bool)

(assert (=> d!1830490 e!3567895))

(declare-fun res!2451212 () Bool)

(assert (=> d!1830490 (=> res!2451212 e!3567895)))

(assert (=> d!1830490 (= res!2451212 e!3567897)))

(declare-fun res!2451210 () Bool)

(assert (=> d!1830490 (=> (not res!2451210) (not e!3567897))))

(assert (=> d!1830490 (= res!2451210 (isDefined!12541 lt!2300390))))

(assert (=> d!1830490 (= lt!2300390 e!3567896)))

(declare-fun c!1030127 () Bool)

(assert (=> d!1830490 (= c!1030127 e!3567894)))

(declare-fun res!2451211 () Bool)

(assert (=> d!1830490 (=> (not res!2451211) (not e!3567894))))

(assert (=> d!1830490 (= res!2451211 (matchR!8014 (reg!16158 r!7292) Nil!63664))))

(assert (=> d!1830490 (validRegex!7565 (reg!16158 r!7292))))

(assert (=> d!1830490 (= (findConcatSeparation!2252 (reg!16158 r!7292) r!7292 Nil!63664 s!2326 s!2326) lt!2300390)))

(assert (= (and d!1830490 res!2451211) b!5812816))

(assert (= (and d!1830490 c!1030127) b!5812823))

(assert (= (and d!1830490 (not c!1030127)) b!5812818))

(assert (= (and b!5812818 c!1030126) b!5812817))

(assert (= (and b!5812818 (not c!1030126)) b!5812820))

(assert (= (and d!1830490 res!2451210) b!5812821))

(assert (= (and b!5812821 res!2451213) b!5812819))

(assert (= (and b!5812819 res!2451209) b!5812815))

(assert (= (and d!1830490 (not res!2451212)) b!5812822))

(declare-fun m!6750954 () Bool)

(assert (=> b!5812815 m!6750954))

(declare-fun m!6750956 () Bool)

(assert (=> b!5812815 m!6750956))

(assert (=> b!5812816 m!6750404))

(assert (=> b!5812819 m!6750954))

(declare-fun m!6750958 () Bool)

(assert (=> b!5812819 m!6750958))

(assert (=> b!5812821 m!6750954))

(declare-fun m!6750960 () Bool)

(assert (=> b!5812821 m!6750960))

(declare-fun m!6750962 () Bool)

(assert (=> d!1830490 m!6750962))

(declare-fun m!6750964 () Bool)

(assert (=> d!1830490 m!6750964))

(assert (=> d!1830490 m!6750942))

(assert (=> b!5812820 m!6750902))

(assert (=> b!5812820 m!6750902))

(assert (=> b!5812820 m!6750904))

(assert (=> b!5812820 m!6750906))

(assert (=> b!5812820 m!6750902))

(declare-fun m!6750966 () Bool)

(assert (=> b!5812820 m!6750966))

(assert (=> b!5812822 m!6750962))

(assert (=> b!5812056 d!1830490))

(declare-fun bs!1372342 () Bool)

(declare-fun d!1830492 () Bool)

(assert (= bs!1372342 (and d!1830492 d!1830468)))

(declare-fun lambda!317628 () Int)

(assert (=> bs!1372342 (= lambda!317628 lambda!317618)))

(declare-fun bs!1372343 () Bool)

(assert (= bs!1372343 (and d!1830492 b!5812056)))

(assert (=> bs!1372343 (= lambda!317628 lambda!317543)))

(declare-fun bs!1372344 () Bool)

(assert (= bs!1372344 (and d!1830492 d!1830482)))

(assert (=> bs!1372344 (= (= r!7292 (Star!15829 (reg!16158 r!7292))) (= lambda!317628 lambda!317624))))

(declare-fun bs!1372345 () Bool)

(assert (= bs!1372345 (and d!1830492 b!5812418)))

(assert (=> bs!1372345 (not (= lambda!317628 lambda!317574))))

(declare-fun bs!1372346 () Bool)

(assert (= bs!1372346 (and d!1830492 b!5812411)))

(assert (=> bs!1372346 (not (= lambda!317628 lambda!317576))))

(assert (=> bs!1372344 (not (= lambda!317628 lambda!317625))))

(assert (=> bs!1372343 (not (= lambda!317628 lambda!317544))))

(assert (=> bs!1372342 (not (= lambda!317628 lambda!317619))))

(assert (=> bs!1372343 (not (= lambda!317628 lambda!317545))))

(assert (=> d!1830492 true))

(assert (=> d!1830492 true))

(assert (=> d!1830492 true))

(assert (=> d!1830492 (= (isDefined!12541 (findConcatSeparation!2252 (reg!16158 r!7292) r!7292 Nil!63664 s!2326 s!2326)) (Exists!2929 lambda!317628))))

(declare-fun lt!2300394 () Unit!156918)

(declare-fun choose!44154 (Regex!15829 Regex!15829 List!63788) Unit!156918)

(assert (=> d!1830492 (= lt!2300394 (choose!44154 (reg!16158 r!7292) r!7292 s!2326))))

(assert (=> d!1830492 (validRegex!7565 (reg!16158 r!7292))))

(assert (=> d!1830492 (= (lemmaFindConcatSeparationEquivalentToExists!2016 (reg!16158 r!7292) r!7292 s!2326) lt!2300394)))

(declare-fun bs!1372347 () Bool)

(assert (= bs!1372347 d!1830492))

(declare-fun m!6750968 () Bool)

(assert (=> bs!1372347 m!6750968))

(assert (=> bs!1372347 m!6750942))

(assert (=> bs!1372347 m!6750388))

(assert (=> bs!1372347 m!6750390))

(declare-fun m!6750970 () Bool)

(assert (=> bs!1372347 m!6750970))

(assert (=> bs!1372347 m!6750388))

(assert (=> b!5812056 d!1830492))

(declare-fun bs!1372348 () Bool)

(declare-fun d!1830494 () Bool)

(assert (= bs!1372348 (and d!1830494 b!5812083)))

(declare-fun lambda!317631 () Int)

(assert (=> bs!1372348 (= lambda!317631 lambda!317548)))

(declare-fun bs!1372349 () Bool)

(assert (= bs!1372349 (and d!1830494 d!1830320)))

(assert (=> bs!1372349 (= lambda!317631 lambda!317562)))

(declare-fun bs!1372350 () Bool)

(assert (= bs!1372350 (and d!1830494 d!1830346)))

(assert (=> bs!1372350 (= lambda!317631 lambda!317565)))

(declare-fun b!5812849 () Bool)

(declare-fun e!3567915 () Bool)

(declare-fun lt!2300397 () Regex!15829)

(declare-fun isConcat!824 (Regex!15829) Bool)

(assert (=> b!5812849 (= e!3567915 (isConcat!824 lt!2300397))))

(declare-fun b!5812850 () Bool)

(declare-fun e!3567914 () Bool)

(declare-fun e!3567913 () Bool)

(assert (=> b!5812850 (= e!3567914 e!3567913)))

(declare-fun c!1030138 () Bool)

(declare-fun isEmpty!35584 (List!63786) Bool)

(assert (=> b!5812850 (= c!1030138 (isEmpty!35584 (exprs!5713 (h!70111 zl!343))))))

(declare-fun b!5812851 () Bool)

(declare-fun e!3567917 () Regex!15829)

(assert (=> b!5812851 (= e!3567917 (h!70110 (exprs!5713 (h!70111 zl!343))))))

(declare-fun b!5812852 () Bool)

(declare-fun e!3567912 () Regex!15829)

(assert (=> b!5812852 (= e!3567917 e!3567912)))

(declare-fun c!1030137 () Bool)

(assert (=> b!5812852 (= c!1030137 ((_ is Cons!63662) (exprs!5713 (h!70111 zl!343))))))

(declare-fun b!5812853 () Bool)

(declare-fun isEmptyExpr!1301 (Regex!15829) Bool)

(assert (=> b!5812853 (= e!3567913 (isEmptyExpr!1301 lt!2300397))))

(declare-fun b!5812854 () Bool)

(assert (=> b!5812854 (= e!3567912 EmptyExpr!15829)))

(declare-fun b!5812848 () Bool)

(assert (=> b!5812848 (= e!3567913 e!3567915)))

(declare-fun c!1030139 () Bool)

(declare-fun tail!11362 (List!63786) List!63786)

(assert (=> b!5812848 (= c!1030139 (isEmpty!35584 (tail!11362 (exprs!5713 (h!70111 zl!343)))))))

(assert (=> d!1830494 e!3567914))

(declare-fun res!2451222 () Bool)

(assert (=> d!1830494 (=> (not res!2451222) (not e!3567914))))

(assert (=> d!1830494 (= res!2451222 (validRegex!7565 lt!2300397))))

(assert (=> d!1830494 (= lt!2300397 e!3567917)))

(declare-fun c!1030136 () Bool)

(declare-fun e!3567916 () Bool)

(assert (=> d!1830494 (= c!1030136 e!3567916)))

(declare-fun res!2451223 () Bool)

(assert (=> d!1830494 (=> (not res!2451223) (not e!3567916))))

(assert (=> d!1830494 (= res!2451223 ((_ is Cons!63662) (exprs!5713 (h!70111 zl!343))))))

(assert (=> d!1830494 (forall!14935 (exprs!5713 (h!70111 zl!343)) lambda!317631)))

(assert (=> d!1830494 (= (generalisedConcat!1444 (exprs!5713 (h!70111 zl!343))) lt!2300397)))

(declare-fun b!5812855 () Bool)

(assert (=> b!5812855 (= e!3567912 (Concat!24674 (h!70110 (exprs!5713 (h!70111 zl!343))) (generalisedConcat!1444 (t!377141 (exprs!5713 (h!70111 zl!343))))))))

(declare-fun b!5812856 () Bool)

(assert (=> b!5812856 (= e!3567916 (isEmpty!35584 (t!377141 (exprs!5713 (h!70111 zl!343)))))))

(declare-fun b!5812857 () Bool)

(declare-fun head!12267 (List!63786) Regex!15829)

(assert (=> b!5812857 (= e!3567915 (= lt!2300397 (head!12267 (exprs!5713 (h!70111 zl!343)))))))

(assert (= (and d!1830494 res!2451223) b!5812856))

(assert (= (and d!1830494 c!1030136) b!5812851))

(assert (= (and d!1830494 (not c!1030136)) b!5812852))

(assert (= (and b!5812852 c!1030137) b!5812855))

(assert (= (and b!5812852 (not c!1030137)) b!5812854))

(assert (= (and d!1830494 res!2451222) b!5812850))

(assert (= (and b!5812850 c!1030138) b!5812853))

(assert (= (and b!5812850 (not c!1030138)) b!5812848))

(assert (= (and b!5812848 c!1030139) b!5812857))

(assert (= (and b!5812848 (not c!1030139)) b!5812849))

(declare-fun m!6750972 () Bool)

(assert (=> b!5812855 m!6750972))

(declare-fun m!6750974 () Bool)

(assert (=> b!5812848 m!6750974))

(assert (=> b!5812848 m!6750974))

(declare-fun m!6750976 () Bool)

(assert (=> b!5812848 m!6750976))

(declare-fun m!6750978 () Bool)

(assert (=> b!5812853 m!6750978))

(declare-fun m!6750980 () Bool)

(assert (=> b!5812849 m!6750980))

(declare-fun m!6750982 () Bool)

(assert (=> d!1830494 m!6750982))

(declare-fun m!6750984 () Bool)

(assert (=> d!1830494 m!6750984))

(declare-fun m!6750986 () Bool)

(assert (=> b!5812857 m!6750986))

(declare-fun m!6750988 () Bool)

(assert (=> b!5812856 m!6750988))

(declare-fun m!6750990 () Bool)

(assert (=> b!5812850 m!6750990))

(assert (=> b!5812078 d!1830494))

(declare-fun d!1830496 () Bool)

(declare-fun lt!2300398 () Regex!15829)

(assert (=> d!1830496 (validRegex!7565 lt!2300398)))

(assert (=> d!1830496 (= lt!2300398 (generalisedUnion!1692 (unfocusZipperList!1257 (Cons!63663 lt!2300252 Nil!63663))))))

(assert (=> d!1830496 (= (unfocusZipper!1571 (Cons!63663 lt!2300252 Nil!63663)) lt!2300398)))

(declare-fun bs!1372351 () Bool)

(assert (= bs!1372351 d!1830496))

(declare-fun m!6750992 () Bool)

(assert (=> bs!1372351 m!6750992))

(declare-fun m!6750994 () Bool)

(assert (=> bs!1372351 m!6750994))

(assert (=> bs!1372351 m!6750994))

(declare-fun m!6750996 () Bool)

(assert (=> bs!1372351 m!6750996))

(assert (=> b!5812067 d!1830496))

(declare-fun c!1030141 () Bool)

(declare-fun bm!454002 () Bool)

(declare-fun call!454008 () List!63786)

(declare-fun call!454012 () (InoxSet Context!10426))

(assert (=> bm!454002 (= call!454012 (derivationStepZipperDown!1167 (ite c!1030141 (regOne!32171 (reg!16158 r!7292)) (regOne!32170 (reg!16158 r!7292))) (ite c!1030141 lt!2300231 (Context!10427 call!454008)) (h!70112 s!2326)))))

(declare-fun d!1830498 () Bool)

(declare-fun c!1030143 () Bool)

(assert (=> d!1830498 (= c!1030143 (and ((_ is ElementMatch!15829) (reg!16158 r!7292)) (= (c!1029931 (reg!16158 r!7292)) (h!70112 s!2326))))))

(declare-fun e!3567921 () (InoxSet Context!10426))

(assert (=> d!1830498 (= (derivationStepZipperDown!1167 (reg!16158 r!7292) lt!2300231 (h!70112 s!2326)) e!3567921)))

(declare-fun call!454007 () List!63786)

(declare-fun c!1030142 () Bool)

(declare-fun c!1030144 () Bool)

(declare-fun call!454011 () (InoxSet Context!10426))

(declare-fun bm!454003 () Bool)

(assert (=> bm!454003 (= call!454011 (derivationStepZipperDown!1167 (ite c!1030141 (regTwo!32171 (reg!16158 r!7292)) (ite c!1030144 (regTwo!32170 (reg!16158 r!7292)) (ite c!1030142 (regOne!32170 (reg!16158 r!7292)) (reg!16158 (reg!16158 r!7292))))) (ite (or c!1030141 c!1030144) lt!2300231 (Context!10427 call!454007)) (h!70112 s!2326)))))

(declare-fun bm!454004 () Bool)

(declare-fun call!454010 () (InoxSet Context!10426))

(declare-fun call!454009 () (InoxSet Context!10426))

(assert (=> bm!454004 (= call!454010 call!454009)))

(declare-fun bm!454005 () Bool)

(assert (=> bm!454005 (= call!454007 call!454008)))

(declare-fun b!5812858 () Bool)

(declare-fun e!3567920 () (InoxSet Context!10426))

(assert (=> b!5812858 (= e!3567921 e!3567920)))

(assert (=> b!5812858 (= c!1030141 ((_ is Union!15829) (reg!16158 r!7292)))))

(declare-fun b!5812859 () Bool)

(assert (=> b!5812859 (= e!3567920 ((_ map or) call!454012 call!454011))))

(declare-fun b!5812860 () Bool)

(declare-fun e!3567923 () Bool)

(assert (=> b!5812860 (= e!3567923 (nullable!5853 (regOne!32170 (reg!16158 r!7292))))))

(declare-fun b!5812861 () Bool)

(declare-fun c!1030140 () Bool)

(assert (=> b!5812861 (= c!1030140 ((_ is Star!15829) (reg!16158 r!7292)))))

(declare-fun e!3567918 () (InoxSet Context!10426))

(declare-fun e!3567922 () (InoxSet Context!10426))

(assert (=> b!5812861 (= e!3567918 e!3567922)))

(declare-fun bm!454006 () Bool)

(assert (=> bm!454006 (= call!454009 call!454011)))

(declare-fun b!5812862 () Bool)

(assert (=> b!5812862 (= e!3567922 ((as const (Array Context!10426 Bool)) false))))

(declare-fun b!5812863 () Bool)

(assert (=> b!5812863 (= e!3567921 (store ((as const (Array Context!10426 Bool)) false) lt!2300231 true))))

(declare-fun b!5812864 () Bool)

(assert (=> b!5812864 (= e!3567918 call!454010)))

(declare-fun b!5812865 () Bool)

(declare-fun e!3567919 () (InoxSet Context!10426))

(assert (=> b!5812865 (= e!3567919 ((_ map or) call!454012 call!454009))))

(declare-fun bm!454007 () Bool)

(assert (=> bm!454007 (= call!454008 ($colon$colon!1808 (exprs!5713 lt!2300231) (ite (or c!1030144 c!1030142) (regTwo!32170 (reg!16158 r!7292)) (reg!16158 r!7292))))))

(declare-fun b!5812866 () Bool)

(assert (=> b!5812866 (= e!3567919 e!3567918)))

(assert (=> b!5812866 (= c!1030142 ((_ is Concat!24674) (reg!16158 r!7292)))))

(declare-fun b!5812867 () Bool)

(assert (=> b!5812867 (= c!1030144 e!3567923)))

(declare-fun res!2451224 () Bool)

(assert (=> b!5812867 (=> (not res!2451224) (not e!3567923))))

(assert (=> b!5812867 (= res!2451224 ((_ is Concat!24674) (reg!16158 r!7292)))))

(assert (=> b!5812867 (= e!3567920 e!3567919)))

(declare-fun b!5812868 () Bool)

(assert (=> b!5812868 (= e!3567922 call!454010)))

(assert (= (and d!1830498 c!1030143) b!5812863))

(assert (= (and d!1830498 (not c!1030143)) b!5812858))

(assert (= (and b!5812858 c!1030141) b!5812859))

(assert (= (and b!5812858 (not c!1030141)) b!5812867))

(assert (= (and b!5812867 res!2451224) b!5812860))

(assert (= (and b!5812867 c!1030144) b!5812865))

(assert (= (and b!5812867 (not c!1030144)) b!5812866))

(assert (= (and b!5812866 c!1030142) b!5812864))

(assert (= (and b!5812866 (not c!1030142)) b!5812861))

(assert (= (and b!5812861 c!1030140) b!5812868))

(assert (= (and b!5812861 (not c!1030140)) b!5812862))

(assert (= (or b!5812864 b!5812868) bm!454005))

(assert (= (or b!5812864 b!5812868) bm!454004))

(assert (= (or b!5812865 bm!454005) bm!454007))

(assert (= (or b!5812865 bm!454004) bm!454006))

(assert (= (or b!5812859 bm!454006) bm!454003))

(assert (= (or b!5812859 b!5812865) bm!454002))

(declare-fun m!6750998 () Bool)

(assert (=> bm!454002 m!6750998))

(declare-fun m!6751000 () Bool)

(assert (=> bm!454007 m!6751000))

(assert (=> b!5812863 m!6750318))

(declare-fun m!6751002 () Bool)

(assert (=> bm!454003 m!6751002))

(declare-fun m!6751004 () Bool)

(assert (=> b!5812860 m!6751004))

(assert (=> b!5812057 d!1830498))

(declare-fun d!1830500 () Bool)

(assert (=> d!1830500 (= (flatMap!1436 lt!2300238 lambda!317546) (choose!44139 lt!2300238 lambda!317546))))

(declare-fun bs!1372352 () Bool)

(assert (= bs!1372352 d!1830500))

(declare-fun m!6751006 () Bool)

(assert (=> bs!1372352 m!6751006))

(assert (=> b!5812057 d!1830500))

(declare-fun d!1830502 () Bool)

(declare-fun c!1030146 () Bool)

(declare-fun e!3567924 () Bool)

(assert (=> d!1830502 (= c!1030146 e!3567924)))

(declare-fun res!2451225 () Bool)

(assert (=> d!1830502 (=> (not res!2451225) (not e!3567924))))

(assert (=> d!1830502 (= res!2451225 ((_ is Cons!63662) (exprs!5713 lt!2300236)))))

(declare-fun e!3567926 () (InoxSet Context!10426))

(assert (=> d!1830502 (= (derivationStepZipperUp!1093 lt!2300236 (h!70112 s!2326)) e!3567926)))

(declare-fun b!5812869 () Bool)

(declare-fun call!454013 () (InoxSet Context!10426))

(assert (=> b!5812869 (= e!3567926 ((_ map or) call!454013 (derivationStepZipperUp!1093 (Context!10427 (t!377141 (exprs!5713 lt!2300236))) (h!70112 s!2326))))))

(declare-fun b!5812870 () Bool)

(declare-fun e!3567925 () (InoxSet Context!10426))

(assert (=> b!5812870 (= e!3567925 call!454013)))

(declare-fun bm!454008 () Bool)

(assert (=> bm!454008 (= call!454013 (derivationStepZipperDown!1167 (h!70110 (exprs!5713 lt!2300236)) (Context!10427 (t!377141 (exprs!5713 lt!2300236))) (h!70112 s!2326)))))

(declare-fun b!5812871 () Bool)

(assert (=> b!5812871 (= e!3567925 ((as const (Array Context!10426 Bool)) false))))

(declare-fun b!5812872 () Bool)

(assert (=> b!5812872 (= e!3567924 (nullable!5853 (h!70110 (exprs!5713 lt!2300236))))))

(declare-fun b!5812873 () Bool)

(assert (=> b!5812873 (= e!3567926 e!3567925)))

(declare-fun c!1030145 () Bool)

(assert (=> b!5812873 (= c!1030145 ((_ is Cons!63662) (exprs!5713 lt!2300236)))))

(assert (= (and d!1830502 res!2451225) b!5812872))

(assert (= (and d!1830502 c!1030146) b!5812869))

(assert (= (and d!1830502 (not c!1030146)) b!5812873))

(assert (= (and b!5812873 c!1030145) b!5812870))

(assert (= (and b!5812873 (not c!1030145)) b!5812871))

(assert (= (or b!5812869 b!5812870) bm!454008))

(declare-fun m!6751008 () Bool)

(assert (=> b!5812869 m!6751008))

(declare-fun m!6751010 () Bool)

(assert (=> bm!454008 m!6751010))

(declare-fun m!6751012 () Bool)

(assert (=> b!5812872 m!6751012))

(assert (=> b!5812057 d!1830502))

(declare-fun d!1830504 () Bool)

(assert (=> d!1830504 (= (flatMap!1436 lt!2300238 lambda!317546) (dynLambda!24927 lambda!317546 lt!2300236))))

(declare-fun lt!2300399 () Unit!156918)

(assert (=> d!1830504 (= lt!2300399 (choose!44141 lt!2300238 lt!2300236 lambda!317546))))

(assert (=> d!1830504 (= lt!2300238 (store ((as const (Array Context!10426 Bool)) false) lt!2300236 true))))

(assert (=> d!1830504 (= (lemmaFlatMapOnSingletonSet!968 lt!2300238 lt!2300236 lambda!317546) lt!2300399)))

(declare-fun b_lambda!219145 () Bool)

(assert (=> (not b_lambda!219145) (not d!1830504)))

(declare-fun bs!1372353 () Bool)

(assert (= bs!1372353 d!1830504))

(assert (=> bs!1372353 m!6750344))

(declare-fun m!6751014 () Bool)

(assert (=> bs!1372353 m!6751014))

(declare-fun m!6751016 () Bool)

(assert (=> bs!1372353 m!6751016))

(assert (=> bs!1372353 m!6750340))

(assert (=> b!5812057 d!1830504))

(declare-fun d!1830506 () Bool)

(declare-fun lt!2300400 () Regex!15829)

(assert (=> d!1830506 (validRegex!7565 lt!2300400)))

(assert (=> d!1830506 (= lt!2300400 (generalisedUnion!1692 (unfocusZipperList!1257 (Cons!63663 lt!2300236 Nil!63663))))))

(assert (=> d!1830506 (= (unfocusZipper!1571 (Cons!63663 lt!2300236 Nil!63663)) lt!2300400)))

(declare-fun bs!1372354 () Bool)

(assert (= bs!1372354 d!1830506))

(declare-fun m!6751018 () Bool)

(assert (=> bs!1372354 m!6751018))

(declare-fun m!6751020 () Bool)

(assert (=> bs!1372354 m!6751020))

(assert (=> bs!1372354 m!6751020))

(declare-fun m!6751022 () Bool)

(assert (=> bs!1372354 m!6751022))

(assert (=> b!5812081 d!1830506))

(declare-fun bs!1372355 () Bool)

(declare-fun b!5812883 () Bool)

(assert (= bs!1372355 (and b!5812883 d!1830468)))

(declare-fun lambda!317632 () Int)

(assert (=> bs!1372355 (not (= lambda!317632 lambda!317618))))

(declare-fun bs!1372356 () Bool)

(assert (= bs!1372356 (and b!5812883 b!5812056)))

(assert (=> bs!1372356 (not (= lambda!317632 lambda!317543))))

(declare-fun bs!1372357 () Bool)

(assert (= bs!1372357 (and b!5812883 d!1830482)))

(assert (=> bs!1372357 (not (= lambda!317632 lambda!317624))))

(declare-fun bs!1372358 () Bool)

(assert (= bs!1372358 (and b!5812883 b!5812418)))

(assert (=> bs!1372358 (= (and (= (reg!16158 lt!2300243) (reg!16158 r!7292)) (= lt!2300243 r!7292)) (= lambda!317632 lambda!317574))))

(declare-fun bs!1372359 () Bool)

(assert (= bs!1372359 (and b!5812883 b!5812411)))

(assert (=> bs!1372359 (not (= lambda!317632 lambda!317576))))

(declare-fun bs!1372360 () Bool)

(assert (= bs!1372360 (and b!5812883 d!1830492)))

(assert (=> bs!1372360 (not (= lambda!317632 lambda!317628))))

(assert (=> bs!1372357 (= (and (= (reg!16158 lt!2300243) (reg!16158 r!7292)) (= lt!2300243 (Star!15829 (reg!16158 r!7292)))) (= lambda!317632 lambda!317625))))

(assert (=> bs!1372356 (= (and (= (reg!16158 lt!2300243) (reg!16158 r!7292)) (= lt!2300243 r!7292)) (= lambda!317632 lambda!317544))))

(assert (=> bs!1372355 (not (= lambda!317632 lambda!317619))))

(assert (=> bs!1372356 (not (= lambda!317632 lambda!317545))))

(assert (=> b!5812883 true))

(assert (=> b!5812883 true))

(declare-fun bs!1372361 () Bool)

(declare-fun b!5812876 () Bool)

(assert (= bs!1372361 (and b!5812876 d!1830468)))

(declare-fun lambda!317633 () Int)

(assert (=> bs!1372361 (not (= lambda!317633 lambda!317618))))

(declare-fun bs!1372362 () Bool)

(assert (= bs!1372362 (and b!5812876 b!5812056)))

(assert (=> bs!1372362 (not (= lambda!317633 lambda!317543))))

(declare-fun bs!1372363 () Bool)

(assert (= bs!1372363 (and b!5812876 b!5812418)))

(assert (=> bs!1372363 (not (= lambda!317633 lambda!317574))))

(declare-fun bs!1372364 () Bool)

(assert (= bs!1372364 (and b!5812876 b!5812411)))

(assert (=> bs!1372364 (= (and (= (regOne!32170 lt!2300243) (regOne!32170 r!7292)) (= (regTwo!32170 lt!2300243) (regTwo!32170 r!7292))) (= lambda!317633 lambda!317576))))

(declare-fun bs!1372365 () Bool)

(assert (= bs!1372365 (and b!5812876 d!1830492)))

(assert (=> bs!1372365 (not (= lambda!317633 lambda!317628))))

(declare-fun bs!1372366 () Bool)

(assert (= bs!1372366 (and b!5812876 d!1830482)))

(assert (=> bs!1372366 (not (= lambda!317633 lambda!317625))))

(assert (=> bs!1372362 (not (= lambda!317633 lambda!317544))))

(assert (=> bs!1372361 (= (and (= (regOne!32170 lt!2300243) (reg!16158 r!7292)) (= (regTwo!32170 lt!2300243) r!7292)) (= lambda!317633 lambda!317619))))

(assert (=> bs!1372362 (= (and (= (regOne!32170 lt!2300243) (reg!16158 r!7292)) (= (regTwo!32170 lt!2300243) r!7292)) (= lambda!317633 lambda!317545))))

(assert (=> bs!1372366 (not (= lambda!317633 lambda!317624))))

(declare-fun bs!1372367 () Bool)

(assert (= bs!1372367 (and b!5812876 b!5812883)))

(assert (=> bs!1372367 (not (= lambda!317633 lambda!317632))))

(assert (=> b!5812876 true))

(assert (=> b!5812876 true))

(declare-fun b!5812874 () Bool)

(declare-fun e!3567933 () Bool)

(declare-fun e!3567930 () Bool)

(assert (=> b!5812874 (= e!3567933 e!3567930)))

(declare-fun res!2451228 () Bool)

(assert (=> b!5812874 (= res!2451228 (matchRSpec!2932 (regOne!32171 lt!2300243) s!2326))))

(assert (=> b!5812874 (=> res!2451228 e!3567930)))

(declare-fun d!1830508 () Bool)

(declare-fun c!1030148 () Bool)

(assert (=> d!1830508 (= c!1030148 ((_ is EmptyExpr!15829) lt!2300243))))

(declare-fun e!3567932 () Bool)

(assert (=> d!1830508 (= (matchRSpec!2932 lt!2300243 s!2326) e!3567932)))

(declare-fun bm!454009 () Bool)

(declare-fun c!1030147 () Bool)

(declare-fun call!454014 () Bool)

(assert (=> bm!454009 (= call!454014 (Exists!2929 (ite c!1030147 lambda!317632 lambda!317633)))))

(declare-fun b!5812875 () Bool)

(declare-fun c!1030149 () Bool)

(assert (=> b!5812875 (= c!1030149 ((_ is Union!15829) lt!2300243))))

(declare-fun e!3567928 () Bool)

(assert (=> b!5812875 (= e!3567928 e!3567933)))

(declare-fun e!3567929 () Bool)

(assert (=> b!5812876 (= e!3567929 call!454014)))

(declare-fun b!5812877 () Bool)

(declare-fun call!454015 () Bool)

(assert (=> b!5812877 (= e!3567932 call!454015)))

(declare-fun b!5812878 () Bool)

(assert (=> b!5812878 (= e!3567928 (= s!2326 (Cons!63664 (c!1029931 lt!2300243) Nil!63664)))))

(declare-fun b!5812879 () Bool)

(assert (=> b!5812879 (= e!3567930 (matchRSpec!2932 (regTwo!32171 lt!2300243) s!2326))))

(declare-fun bm!454010 () Bool)

(assert (=> bm!454010 (= call!454015 (isEmpty!35579 s!2326))))

(declare-fun b!5812880 () Bool)

(declare-fun e!3567931 () Bool)

(assert (=> b!5812880 (= e!3567932 e!3567931)))

(declare-fun res!2451226 () Bool)

(assert (=> b!5812880 (= res!2451226 (not ((_ is EmptyLang!15829) lt!2300243)))))

(assert (=> b!5812880 (=> (not res!2451226) (not e!3567931))))

(declare-fun b!5812881 () Bool)

(declare-fun res!2451227 () Bool)

(declare-fun e!3567927 () Bool)

(assert (=> b!5812881 (=> res!2451227 e!3567927)))

(assert (=> b!5812881 (= res!2451227 call!454015)))

(assert (=> b!5812881 (= e!3567929 e!3567927)))

(declare-fun b!5812882 () Bool)

(assert (=> b!5812882 (= e!3567933 e!3567929)))

(assert (=> b!5812882 (= c!1030147 ((_ is Star!15829) lt!2300243))))

(assert (=> b!5812883 (= e!3567927 call!454014)))

(declare-fun b!5812884 () Bool)

(declare-fun c!1030150 () Bool)

(assert (=> b!5812884 (= c!1030150 ((_ is ElementMatch!15829) lt!2300243))))

(assert (=> b!5812884 (= e!3567931 e!3567928)))

(assert (= (and d!1830508 c!1030148) b!5812877))

(assert (= (and d!1830508 (not c!1030148)) b!5812880))

(assert (= (and b!5812880 res!2451226) b!5812884))

(assert (= (and b!5812884 c!1030150) b!5812878))

(assert (= (and b!5812884 (not c!1030150)) b!5812875))

(assert (= (and b!5812875 c!1030149) b!5812874))

(assert (= (and b!5812875 (not c!1030149)) b!5812882))

(assert (= (and b!5812874 (not res!2451228)) b!5812879))

(assert (= (and b!5812882 c!1030147) b!5812881))

(assert (= (and b!5812882 (not c!1030147)) b!5812876))

(assert (= (and b!5812881 (not res!2451227)) b!5812883))

(assert (= (or b!5812883 b!5812876) bm!454009))

(assert (= (or b!5812877 b!5812881) bm!454010))

(declare-fun m!6751024 () Bool)

(assert (=> b!5812874 m!6751024))

(declare-fun m!6751026 () Bool)

(assert (=> bm!454009 m!6751026))

(declare-fun m!6751028 () Bool)

(assert (=> b!5812879 m!6751028))

(assert (=> bm!454010 m!6750378))

(assert (=> b!5812060 d!1830508))

(declare-fun b!5812885 () Bool)

(declare-fun e!3567940 () Bool)

(assert (=> b!5812885 (= e!3567940 (= (head!12266 s!2326) (c!1029931 lt!2300243)))))

(declare-fun b!5812886 () Bool)

(declare-fun e!3567936 () Bool)

(assert (=> b!5812886 (= e!3567936 (nullable!5853 lt!2300243))))

(declare-fun b!5812888 () Bool)

(declare-fun e!3567938 () Bool)

(assert (=> b!5812888 (= e!3567938 (not (= (head!12266 s!2326) (c!1029931 lt!2300243))))))

(declare-fun b!5812889 () Bool)

(declare-fun res!2451232 () Bool)

(assert (=> b!5812889 (=> (not res!2451232) (not e!3567940))))

(declare-fun call!454016 () Bool)

(assert (=> b!5812889 (= res!2451232 (not call!454016))))

(declare-fun b!5812890 () Bool)

(declare-fun e!3567937 () Bool)

(declare-fun e!3567939 () Bool)

(assert (=> b!5812890 (= e!3567937 e!3567939)))

(declare-fun res!2451236 () Bool)

(assert (=> b!5812890 (=> (not res!2451236) (not e!3567939))))

(declare-fun lt!2300401 () Bool)

(assert (=> b!5812890 (= res!2451236 (not lt!2300401))))

(declare-fun b!5812891 () Bool)

(assert (=> b!5812891 (= e!3567939 e!3567938)))

(declare-fun res!2451235 () Bool)

(assert (=> b!5812891 (=> res!2451235 e!3567938)))

(assert (=> b!5812891 (= res!2451235 call!454016)))

(declare-fun b!5812892 () Bool)

(declare-fun res!2451229 () Bool)

(assert (=> b!5812892 (=> res!2451229 e!3567937)))

(assert (=> b!5812892 (= res!2451229 (not ((_ is ElementMatch!15829) lt!2300243)))))

(declare-fun e!3567934 () Bool)

(assert (=> b!5812892 (= e!3567934 e!3567937)))

(declare-fun bm!454011 () Bool)

(assert (=> bm!454011 (= call!454016 (isEmpty!35579 s!2326))))

(declare-fun b!5812893 () Bool)

(assert (=> b!5812893 (= e!3567936 (matchR!8014 (derivativeStep!4596 lt!2300243 (head!12266 s!2326)) (tail!11361 s!2326)))))

(declare-fun b!5812894 () Bool)

(declare-fun res!2451231 () Bool)

(assert (=> b!5812894 (=> (not res!2451231) (not e!3567940))))

(assert (=> b!5812894 (= res!2451231 (isEmpty!35579 (tail!11361 s!2326)))))

(declare-fun b!5812895 () Bool)

(declare-fun res!2451234 () Bool)

(assert (=> b!5812895 (=> res!2451234 e!3567938)))

(assert (=> b!5812895 (= res!2451234 (not (isEmpty!35579 (tail!11361 s!2326))))))

(declare-fun b!5812896 () Bool)

(declare-fun e!3567935 () Bool)

(assert (=> b!5812896 (= e!3567935 (= lt!2300401 call!454016))))

(declare-fun d!1830510 () Bool)

(assert (=> d!1830510 e!3567935))

(declare-fun c!1030152 () Bool)

(assert (=> d!1830510 (= c!1030152 ((_ is EmptyExpr!15829) lt!2300243))))

(assert (=> d!1830510 (= lt!2300401 e!3567936)))

(declare-fun c!1030153 () Bool)

(assert (=> d!1830510 (= c!1030153 (isEmpty!35579 s!2326))))

(assert (=> d!1830510 (validRegex!7565 lt!2300243)))

(assert (=> d!1830510 (= (matchR!8014 lt!2300243 s!2326) lt!2300401)))

(declare-fun b!5812887 () Bool)

(assert (=> b!5812887 (= e!3567934 (not lt!2300401))))

(declare-fun b!5812897 () Bool)

(declare-fun res!2451230 () Bool)

(assert (=> b!5812897 (=> res!2451230 e!3567937)))

(assert (=> b!5812897 (= res!2451230 e!3567940)))

(declare-fun res!2451233 () Bool)

(assert (=> b!5812897 (=> (not res!2451233) (not e!3567940))))

(assert (=> b!5812897 (= res!2451233 lt!2300401)))

(declare-fun b!5812898 () Bool)

(assert (=> b!5812898 (= e!3567935 e!3567934)))

(declare-fun c!1030151 () Bool)

(assert (=> b!5812898 (= c!1030151 ((_ is EmptyLang!15829) lt!2300243))))

(assert (= (and d!1830510 c!1030153) b!5812886))

(assert (= (and d!1830510 (not c!1030153)) b!5812893))

(assert (= (and d!1830510 c!1030152) b!5812896))

(assert (= (and d!1830510 (not c!1030152)) b!5812898))

(assert (= (and b!5812898 c!1030151) b!5812887))

(assert (= (and b!5812898 (not c!1030151)) b!5812892))

(assert (= (and b!5812892 (not res!2451229)) b!5812897))

(assert (= (and b!5812897 res!2451233) b!5812889))

(assert (= (and b!5812889 res!2451232) b!5812894))

(assert (= (and b!5812894 res!2451231) b!5812885))

(assert (= (and b!5812897 (not res!2451230)) b!5812890))

(assert (= (and b!5812890 res!2451236) b!5812891))

(assert (= (and b!5812891 (not res!2451235)) b!5812895))

(assert (= (and b!5812895 (not res!2451234)) b!5812888))

(assert (= (or b!5812896 b!5812889 b!5812891) bm!454011))

(assert (=> b!5812895 m!6750686))

(assert (=> b!5812895 m!6750686))

(assert (=> b!5812895 m!6750688))

(assert (=> b!5812894 m!6750686))

(assert (=> b!5812894 m!6750686))

(assert (=> b!5812894 m!6750688))

(assert (=> b!5812888 m!6750690))

(declare-fun m!6751030 () Bool)

(assert (=> b!5812886 m!6751030))

(assert (=> bm!454011 m!6750378))

(assert (=> d!1830510 m!6750378))

(declare-fun m!6751032 () Bool)

(assert (=> d!1830510 m!6751032))

(assert (=> b!5812893 m!6750690))

(assert (=> b!5812893 m!6750690))

(declare-fun m!6751034 () Bool)

(assert (=> b!5812893 m!6751034))

(assert (=> b!5812893 m!6750686))

(assert (=> b!5812893 m!6751034))

(assert (=> b!5812893 m!6750686))

(declare-fun m!6751036 () Bool)

(assert (=> b!5812893 m!6751036))

(assert (=> b!5812885 m!6750690))

(assert (=> b!5812060 d!1830510))

(declare-fun d!1830512 () Bool)

(assert (=> d!1830512 (= (matchR!8014 lt!2300243 s!2326) (matchRSpec!2932 lt!2300243 s!2326))))

(declare-fun lt!2300402 () Unit!156918)

(assert (=> d!1830512 (= lt!2300402 (choose!44145 lt!2300243 s!2326))))

(assert (=> d!1830512 (validRegex!7565 lt!2300243)))

(assert (=> d!1830512 (= (mainMatchTheorem!2932 lt!2300243 s!2326) lt!2300402)))

(declare-fun bs!1372368 () Bool)

(assert (= bs!1372368 d!1830512))

(assert (=> bs!1372368 m!6750372))

(assert (=> bs!1372368 m!6750370))

(declare-fun m!6751038 () Bool)

(assert (=> bs!1372368 m!6751038))

(assert (=> bs!1372368 m!6751032))

(assert (=> b!5812060 d!1830512))

(declare-fun d!1830514 () Bool)

(declare-fun c!1030156 () Bool)

(assert (=> d!1830514 (= c!1030156 (isEmpty!35579 s!2326))))

(declare-fun e!3567943 () Bool)

(assert (=> d!1830514 (= (matchZipper!1957 z!1189 s!2326) e!3567943)))

(declare-fun b!5812903 () Bool)

(declare-fun nullableZipper!1736 ((InoxSet Context!10426)) Bool)

(assert (=> b!5812903 (= e!3567943 (nullableZipper!1736 z!1189))))

(declare-fun b!5812904 () Bool)

(assert (=> b!5812904 (= e!3567943 (matchZipper!1957 (derivationStepZipper!1898 z!1189 (head!12266 s!2326)) (tail!11361 s!2326)))))

(assert (= (and d!1830514 c!1030156) b!5812903))

(assert (= (and d!1830514 (not c!1030156)) b!5812904))

(assert (=> d!1830514 m!6750378))

(declare-fun m!6751040 () Bool)

(assert (=> b!5812903 m!6751040))

(assert (=> b!5812904 m!6750690))

(assert (=> b!5812904 m!6750690))

(declare-fun m!6751042 () Bool)

(assert (=> b!5812904 m!6751042))

(assert (=> b!5812904 m!6750686))

(assert (=> b!5812904 m!6751042))

(assert (=> b!5812904 m!6750686))

(declare-fun m!6751044 () Bool)

(assert (=> b!5812904 m!6751044))

(assert (=> b!5812062 d!1830514))

(declare-fun bs!1372369 () Bool)

(declare-fun d!1830516 () Bool)

(assert (= bs!1372369 (and d!1830516 b!5812083)))

(declare-fun lambda!317636 () Int)

(assert (=> bs!1372369 (= lambda!317636 lambda!317548)))

(declare-fun bs!1372370 () Bool)

(assert (= bs!1372370 (and d!1830516 d!1830320)))

(assert (=> bs!1372370 (= lambda!317636 lambda!317562)))

(declare-fun bs!1372371 () Bool)

(assert (= bs!1372371 (and d!1830516 d!1830346)))

(assert (=> bs!1372371 (= lambda!317636 lambda!317565)))

(declare-fun bs!1372372 () Bool)

(assert (= bs!1372372 (and d!1830516 d!1830494)))

(assert (=> bs!1372372 (= lambda!317636 lambda!317631)))

(declare-fun b!5812925 () Bool)

(declare-fun e!3567959 () Bool)

(declare-fun lt!2300405 () Regex!15829)

(declare-fun isEmptyLang!1310 (Regex!15829) Bool)

(assert (=> b!5812925 (= e!3567959 (isEmptyLang!1310 lt!2300405))))

(declare-fun b!5812926 () Bool)

(declare-fun e!3567957 () Bool)

(declare-fun isUnion!740 (Regex!15829) Bool)

(assert (=> b!5812926 (= e!3567957 (isUnion!740 lt!2300405))))

(declare-fun b!5812927 () Bool)

(declare-fun e!3567958 () Regex!15829)

(declare-fun e!3567961 () Regex!15829)

(assert (=> b!5812927 (= e!3567958 e!3567961)))

(declare-fun c!1030166 () Bool)

(assert (=> b!5812927 (= c!1030166 ((_ is Cons!63662) (unfocusZipperList!1257 zl!343)))))

(declare-fun b!5812928 () Bool)

(assert (=> b!5812928 (= e!3567957 (= lt!2300405 (head!12267 (unfocusZipperList!1257 zl!343))))))

(declare-fun b!5812929 () Bool)

(declare-fun e!3567956 () Bool)

(assert (=> b!5812929 (= e!3567956 e!3567959)))

(declare-fun c!1030168 () Bool)

(assert (=> b!5812929 (= c!1030168 (isEmpty!35584 (unfocusZipperList!1257 zl!343)))))

(declare-fun b!5812930 () Bool)

(assert (=> b!5812930 (= e!3567961 (Union!15829 (h!70110 (unfocusZipperList!1257 zl!343)) (generalisedUnion!1692 (t!377141 (unfocusZipperList!1257 zl!343)))))))

(assert (=> d!1830516 e!3567956))

(declare-fun res!2451241 () Bool)

(assert (=> d!1830516 (=> (not res!2451241) (not e!3567956))))

(assert (=> d!1830516 (= res!2451241 (validRegex!7565 lt!2300405))))

(assert (=> d!1830516 (= lt!2300405 e!3567958)))

(declare-fun c!1030167 () Bool)

(declare-fun e!3567960 () Bool)

(assert (=> d!1830516 (= c!1030167 e!3567960)))

(declare-fun res!2451242 () Bool)

(assert (=> d!1830516 (=> (not res!2451242) (not e!3567960))))

(assert (=> d!1830516 (= res!2451242 ((_ is Cons!63662) (unfocusZipperList!1257 zl!343)))))

(assert (=> d!1830516 (forall!14935 (unfocusZipperList!1257 zl!343) lambda!317636)))

(assert (=> d!1830516 (= (generalisedUnion!1692 (unfocusZipperList!1257 zl!343)) lt!2300405)))

(declare-fun b!5812931 () Bool)

(assert (=> b!5812931 (= e!3567960 (isEmpty!35584 (t!377141 (unfocusZipperList!1257 zl!343))))))

(declare-fun b!5812932 () Bool)

(assert (=> b!5812932 (= e!3567959 e!3567957)))

(declare-fun c!1030165 () Bool)

(assert (=> b!5812932 (= c!1030165 (isEmpty!35584 (tail!11362 (unfocusZipperList!1257 zl!343))))))

(declare-fun b!5812933 () Bool)

(assert (=> b!5812933 (= e!3567958 (h!70110 (unfocusZipperList!1257 zl!343)))))

(declare-fun b!5812934 () Bool)

(assert (=> b!5812934 (= e!3567961 EmptyLang!15829)))

(assert (= (and d!1830516 res!2451242) b!5812931))

(assert (= (and d!1830516 c!1030167) b!5812933))

(assert (= (and d!1830516 (not c!1030167)) b!5812927))

(assert (= (and b!5812927 c!1030166) b!5812930))

(assert (= (and b!5812927 (not c!1030166)) b!5812934))

(assert (= (and d!1830516 res!2451241) b!5812929))

(assert (= (and b!5812929 c!1030168) b!5812925))

(assert (= (and b!5812929 (not c!1030168)) b!5812932))

(assert (= (and b!5812932 c!1030165) b!5812928))

(assert (= (and b!5812932 (not c!1030165)) b!5812926))

(assert (=> b!5812929 m!6750354))

(declare-fun m!6751046 () Bool)

(assert (=> b!5812929 m!6751046))

(declare-fun m!6751048 () Bool)

(assert (=> b!5812930 m!6751048))

(declare-fun m!6751050 () Bool)

(assert (=> b!5812926 m!6751050))

(declare-fun m!6751052 () Bool)

(assert (=> d!1830516 m!6751052))

(assert (=> d!1830516 m!6750354))

(declare-fun m!6751054 () Bool)

(assert (=> d!1830516 m!6751054))

(assert (=> b!5812928 m!6750354))

(declare-fun m!6751056 () Bool)

(assert (=> b!5812928 m!6751056))

(declare-fun m!6751058 () Bool)

(assert (=> b!5812931 m!6751058))

(declare-fun m!6751060 () Bool)

(assert (=> b!5812925 m!6751060))

(assert (=> b!5812932 m!6750354))

(declare-fun m!6751062 () Bool)

(assert (=> b!5812932 m!6751062))

(assert (=> b!5812932 m!6751062))

(declare-fun m!6751064 () Bool)

(assert (=> b!5812932 m!6751064))

(assert (=> b!5812082 d!1830516))

(declare-fun bs!1372373 () Bool)

(declare-fun d!1830518 () Bool)

(assert (= bs!1372373 (and d!1830518 d!1830346)))

(declare-fun lambda!317639 () Int)

(assert (=> bs!1372373 (= lambda!317639 lambda!317565)))

(declare-fun bs!1372374 () Bool)

(assert (= bs!1372374 (and d!1830518 d!1830516)))

(assert (=> bs!1372374 (= lambda!317639 lambda!317636)))

(declare-fun bs!1372375 () Bool)

(assert (= bs!1372375 (and d!1830518 b!5812083)))

(assert (=> bs!1372375 (= lambda!317639 lambda!317548)))

(declare-fun bs!1372376 () Bool)

(assert (= bs!1372376 (and d!1830518 d!1830494)))

(assert (=> bs!1372376 (= lambda!317639 lambda!317631)))

(declare-fun bs!1372377 () Bool)

(assert (= bs!1372377 (and d!1830518 d!1830320)))

(assert (=> bs!1372377 (= lambda!317639 lambda!317562)))

(declare-fun lt!2300408 () List!63786)

(assert (=> d!1830518 (forall!14935 lt!2300408 lambda!317639)))

(declare-fun e!3567964 () List!63786)

(assert (=> d!1830518 (= lt!2300408 e!3567964)))

(declare-fun c!1030171 () Bool)

(assert (=> d!1830518 (= c!1030171 ((_ is Cons!63663) zl!343))))

(assert (=> d!1830518 (= (unfocusZipperList!1257 zl!343) lt!2300408)))

(declare-fun b!5812939 () Bool)

(assert (=> b!5812939 (= e!3567964 (Cons!63662 (generalisedConcat!1444 (exprs!5713 (h!70111 zl!343))) (unfocusZipperList!1257 (t!377142 zl!343))))))

(declare-fun b!5812940 () Bool)

(assert (=> b!5812940 (= e!3567964 Nil!63662)))

(assert (= (and d!1830518 c!1030171) b!5812939))

(assert (= (and d!1830518 (not c!1030171)) b!5812940))

(declare-fun m!6751066 () Bool)

(assert (=> d!1830518 m!6751066))

(assert (=> b!5812939 m!6750398))

(declare-fun m!6751068 () Bool)

(assert (=> b!5812939 m!6751068))

(assert (=> b!5812082 d!1830518))

(declare-fun d!1830520 () Bool)

(declare-fun c!1030172 () Bool)

(assert (=> d!1830520 (= c!1030172 (isEmpty!35579 s!2326))))

(declare-fun e!3567965 () Bool)

(assert (=> d!1830520 (= (matchZipper!1957 lt!2300238 s!2326) e!3567965)))

(declare-fun b!5812941 () Bool)

(assert (=> b!5812941 (= e!3567965 (nullableZipper!1736 lt!2300238))))

(declare-fun b!5812942 () Bool)

(assert (=> b!5812942 (= e!3567965 (matchZipper!1957 (derivationStepZipper!1898 lt!2300238 (head!12266 s!2326)) (tail!11361 s!2326)))))

(assert (= (and d!1830520 c!1030172) b!5812941))

(assert (= (and d!1830520 (not c!1030172)) b!5812942))

(assert (=> d!1830520 m!6750378))

(declare-fun m!6751070 () Bool)

(assert (=> b!5812941 m!6751070))

(assert (=> b!5812942 m!6750690))

(assert (=> b!5812942 m!6750690))

(declare-fun m!6751072 () Bool)

(assert (=> b!5812942 m!6751072))

(assert (=> b!5812942 m!6750686))

(assert (=> b!5812942 m!6751072))

(assert (=> b!5812942 m!6750686))

(declare-fun m!6751074 () Bool)

(assert (=> b!5812942 m!6751074))

(assert (=> b!5812071 d!1830520))

(declare-fun d!1830522 () Bool)

(declare-fun c!1030173 () Bool)

(assert (=> d!1830522 (= c!1030173 (isEmpty!35579 (t!377143 s!2326)))))

(declare-fun e!3567966 () Bool)

(assert (=> d!1830522 (= (matchZipper!1957 (derivationStepZipper!1898 lt!2300238 (h!70112 s!2326)) (t!377143 s!2326)) e!3567966)))

(declare-fun b!5812943 () Bool)

(assert (=> b!5812943 (= e!3567966 (nullableZipper!1736 (derivationStepZipper!1898 lt!2300238 (h!70112 s!2326))))))

(declare-fun b!5812944 () Bool)

(assert (=> b!5812944 (= e!3567966 (matchZipper!1957 (derivationStepZipper!1898 (derivationStepZipper!1898 lt!2300238 (h!70112 s!2326)) (head!12266 (t!377143 s!2326))) (tail!11361 (t!377143 s!2326))))))

(assert (= (and d!1830522 c!1030173) b!5812943))

(assert (= (and d!1830522 (not c!1030173)) b!5812944))

(declare-fun m!6751076 () Bool)

(assert (=> d!1830522 m!6751076))

(assert (=> b!5812943 m!6750366))

(declare-fun m!6751078 () Bool)

(assert (=> b!5812943 m!6751078))

(declare-fun m!6751080 () Bool)

(assert (=> b!5812944 m!6751080))

(assert (=> b!5812944 m!6750366))

(assert (=> b!5812944 m!6751080))

(declare-fun m!6751082 () Bool)

(assert (=> b!5812944 m!6751082))

(declare-fun m!6751084 () Bool)

(assert (=> b!5812944 m!6751084))

(assert (=> b!5812944 m!6751082))

(assert (=> b!5812944 m!6751084))

(declare-fun m!6751086 () Bool)

(assert (=> b!5812944 m!6751086))

(assert (=> b!5812071 d!1830522))

(declare-fun bs!1372378 () Bool)

(declare-fun d!1830524 () Bool)

(assert (= bs!1372378 (and d!1830524 b!5812074)))

(declare-fun lambda!317640 () Int)

(assert (=> bs!1372378 (= lambda!317640 lambda!317546)))

(declare-fun bs!1372379 () Bool)

(assert (= bs!1372379 (and d!1830524 d!1830404)))

(assert (=> bs!1372379 (= lambda!317640 lambda!317595)))

(declare-fun bs!1372380 () Bool)

(assert (= bs!1372380 (and d!1830524 d!1830420)))

(assert (=> bs!1372380 (= lambda!317640 lambda!317599)))

(assert (=> d!1830524 true))

(assert (=> d!1830524 (= (derivationStepZipper!1898 lt!2300238 (h!70112 s!2326)) (flatMap!1436 lt!2300238 lambda!317640))))

(declare-fun bs!1372381 () Bool)

(assert (= bs!1372381 d!1830524))

(declare-fun m!6751088 () Bool)

(assert (=> bs!1372381 m!6751088))

(assert (=> b!5812071 d!1830524))

(declare-fun d!1830526 () Bool)

(declare-fun lt!2300409 () Regex!15829)

(assert (=> d!1830526 (validRegex!7565 lt!2300409)))

(assert (=> d!1830526 (= lt!2300409 (generalisedUnion!1692 (unfocusZipperList!1257 zl!343)))))

(assert (=> d!1830526 (= (unfocusZipper!1571 zl!343) lt!2300409)))

(declare-fun bs!1372382 () Bool)

(assert (= bs!1372382 d!1830526))

(declare-fun m!6751090 () Bool)

(assert (=> bs!1372382 m!6751090))

(assert (=> bs!1372382 m!6750354))

(assert (=> bs!1372382 m!6750354))

(assert (=> bs!1372382 m!6750356))

(assert (=> b!5812061 d!1830526))

(declare-fun b!5812952 () Bool)

(declare-fun e!3567972 () Bool)

(declare-fun tp!1603967 () Bool)

(assert (=> b!5812952 (= e!3567972 tp!1603967)))

(declare-fun b!5812951 () Bool)

(declare-fun tp!1603968 () Bool)

(declare-fun e!3567971 () Bool)

(assert (=> b!5812951 (= e!3567971 (and (inv!82819 (h!70111 (t!377142 zl!343))) e!3567972 tp!1603968))))

(assert (=> b!5812053 (= tp!1603898 e!3567971)))

(assert (= b!5812951 b!5812952))

(assert (= (and b!5812053 ((_ is Cons!63663) (t!377142 zl!343))) b!5812951))

(declare-fun m!6751092 () Bool)

(assert (=> b!5812951 m!6751092))

(declare-fun b!5812957 () Bool)

(declare-fun e!3567975 () Bool)

(declare-fun tp!1603973 () Bool)

(declare-fun tp!1603974 () Bool)

(assert (=> b!5812957 (= e!3567975 (and tp!1603973 tp!1603974))))

(assert (=> b!5812072 (= tp!1603895 e!3567975)))

(assert (= (and b!5812072 ((_ is Cons!63662) (exprs!5713 (h!70111 zl!343)))) b!5812957))

(declare-fun b!5812958 () Bool)

(declare-fun e!3567976 () Bool)

(declare-fun tp!1603975 () Bool)

(declare-fun tp!1603976 () Bool)

(assert (=> b!5812958 (= e!3567976 (and tp!1603975 tp!1603976))))

(assert (=> b!5812069 (= tp!1603903 e!3567976)))

(assert (= (and b!5812069 ((_ is Cons!63662) (exprs!5713 setElem!39148))) b!5812958))

(declare-fun b!5812963 () Bool)

(declare-fun e!3567979 () Bool)

(declare-fun tp!1603979 () Bool)

(assert (=> b!5812963 (= e!3567979 (and tp_is_empty!40911 tp!1603979))))

(assert (=> b!5812055 (= tp!1603901 e!3567979)))

(assert (= (and b!5812055 ((_ is Cons!63664) (t!377143 s!2326))) b!5812963))

(declare-fun b!5812974 () Bool)

(declare-fun e!3567982 () Bool)

(assert (=> b!5812974 (= e!3567982 tp_is_empty!40911)))

(declare-fun b!5812975 () Bool)

(declare-fun tp!1603992 () Bool)

(declare-fun tp!1603994 () Bool)

(assert (=> b!5812975 (= e!3567982 (and tp!1603992 tp!1603994))))

(declare-fun b!5812977 () Bool)

(declare-fun tp!1603991 () Bool)

(declare-fun tp!1603993 () Bool)

(assert (=> b!5812977 (= e!3567982 (and tp!1603991 tp!1603993))))

(declare-fun b!5812976 () Bool)

(declare-fun tp!1603990 () Bool)

(assert (=> b!5812976 (= e!3567982 tp!1603990)))

(assert (=> b!5812079 (= tp!1603900 e!3567982)))

(assert (= (and b!5812079 ((_ is ElementMatch!15829) (regOne!32171 r!7292))) b!5812974))

(assert (= (and b!5812079 ((_ is Concat!24674) (regOne!32171 r!7292))) b!5812975))

(assert (= (and b!5812079 ((_ is Star!15829) (regOne!32171 r!7292))) b!5812976))

(assert (= (and b!5812079 ((_ is Union!15829) (regOne!32171 r!7292))) b!5812977))

(declare-fun b!5812978 () Bool)

(declare-fun e!3567983 () Bool)

(assert (=> b!5812978 (= e!3567983 tp_is_empty!40911)))

(declare-fun b!5812979 () Bool)

(declare-fun tp!1603997 () Bool)

(declare-fun tp!1603999 () Bool)

(assert (=> b!5812979 (= e!3567983 (and tp!1603997 tp!1603999))))

(declare-fun b!5812981 () Bool)

(declare-fun tp!1603996 () Bool)

(declare-fun tp!1603998 () Bool)

(assert (=> b!5812981 (= e!3567983 (and tp!1603996 tp!1603998))))

(declare-fun b!5812980 () Bool)

(declare-fun tp!1603995 () Bool)

(assert (=> b!5812980 (= e!3567983 tp!1603995)))

(assert (=> b!5812079 (= tp!1603897 e!3567983)))

(assert (= (and b!5812079 ((_ is ElementMatch!15829) (regTwo!32171 r!7292))) b!5812978))

(assert (= (and b!5812079 ((_ is Concat!24674) (regTwo!32171 r!7292))) b!5812979))

(assert (= (and b!5812079 ((_ is Star!15829) (regTwo!32171 r!7292))) b!5812980))

(assert (= (and b!5812079 ((_ is Union!15829) (regTwo!32171 r!7292))) b!5812981))

(declare-fun condSetEmpty!39154 () Bool)

(assert (=> setNonEmpty!39148 (= condSetEmpty!39154 (= setRest!39148 ((as const (Array Context!10426 Bool)) false)))))

(declare-fun setRes!39154 () Bool)

(assert (=> setNonEmpty!39148 (= tp!1603899 setRes!39154)))

(declare-fun setIsEmpty!39154 () Bool)

(assert (=> setIsEmpty!39154 setRes!39154))

(declare-fun setNonEmpty!39154 () Bool)

(declare-fun setElem!39154 () Context!10426)

(declare-fun e!3567986 () Bool)

(declare-fun tp!1604005 () Bool)

(assert (=> setNonEmpty!39154 (= setRes!39154 (and tp!1604005 (inv!82819 setElem!39154) e!3567986))))

(declare-fun setRest!39154 () (InoxSet Context!10426))

(assert (=> setNonEmpty!39154 (= setRest!39148 ((_ map or) (store ((as const (Array Context!10426 Bool)) false) setElem!39154 true) setRest!39154))))

(declare-fun b!5812986 () Bool)

(declare-fun tp!1604004 () Bool)

(assert (=> b!5812986 (= e!3567986 tp!1604004)))

(assert (= (and setNonEmpty!39148 condSetEmpty!39154) setIsEmpty!39154))

(assert (= (and setNonEmpty!39148 (not condSetEmpty!39154)) setNonEmpty!39154))

(assert (= setNonEmpty!39154 b!5812986))

(declare-fun m!6751094 () Bool)

(assert (=> setNonEmpty!39154 m!6751094))

(declare-fun b!5812987 () Bool)

(declare-fun e!3567987 () Bool)

(assert (=> b!5812987 (= e!3567987 tp_is_empty!40911)))

(declare-fun b!5812988 () Bool)

(declare-fun tp!1604008 () Bool)

(declare-fun tp!1604010 () Bool)

(assert (=> b!5812988 (= e!3567987 (and tp!1604008 tp!1604010))))

(declare-fun b!5812990 () Bool)

(declare-fun tp!1604007 () Bool)

(declare-fun tp!1604009 () Bool)

(assert (=> b!5812990 (= e!3567987 (and tp!1604007 tp!1604009))))

(declare-fun b!5812989 () Bool)

(declare-fun tp!1604006 () Bool)

(assert (=> b!5812989 (= e!3567987 tp!1604006)))

(assert (=> b!5812080 (= tp!1603902 e!3567987)))

(assert (= (and b!5812080 ((_ is ElementMatch!15829) (regOne!32170 r!7292))) b!5812987))

(assert (= (and b!5812080 ((_ is Concat!24674) (regOne!32170 r!7292))) b!5812988))

(assert (= (and b!5812080 ((_ is Star!15829) (regOne!32170 r!7292))) b!5812989))

(assert (= (and b!5812080 ((_ is Union!15829) (regOne!32170 r!7292))) b!5812990))

(declare-fun b!5812991 () Bool)

(declare-fun e!3567988 () Bool)

(assert (=> b!5812991 (= e!3567988 tp_is_empty!40911)))

(declare-fun b!5812992 () Bool)

(declare-fun tp!1604013 () Bool)

(declare-fun tp!1604015 () Bool)

(assert (=> b!5812992 (= e!3567988 (and tp!1604013 tp!1604015))))

(declare-fun b!5812994 () Bool)

(declare-fun tp!1604012 () Bool)

(declare-fun tp!1604014 () Bool)

(assert (=> b!5812994 (= e!3567988 (and tp!1604012 tp!1604014))))

(declare-fun b!5812993 () Bool)

(declare-fun tp!1604011 () Bool)

(assert (=> b!5812993 (= e!3567988 tp!1604011)))

(assert (=> b!5812080 (= tp!1603904 e!3567988)))

(assert (= (and b!5812080 ((_ is ElementMatch!15829) (regTwo!32170 r!7292))) b!5812991))

(assert (= (and b!5812080 ((_ is Concat!24674) (regTwo!32170 r!7292))) b!5812992))

(assert (= (and b!5812080 ((_ is Star!15829) (regTwo!32170 r!7292))) b!5812993))

(assert (= (and b!5812080 ((_ is Union!15829) (regTwo!32170 r!7292))) b!5812994))

(declare-fun b!5812995 () Bool)

(declare-fun e!3567989 () Bool)

(assert (=> b!5812995 (= e!3567989 tp_is_empty!40911)))

(declare-fun b!5812996 () Bool)

(declare-fun tp!1604018 () Bool)

(declare-fun tp!1604020 () Bool)

(assert (=> b!5812996 (= e!3567989 (and tp!1604018 tp!1604020))))

(declare-fun b!5812998 () Bool)

(declare-fun tp!1604017 () Bool)

(declare-fun tp!1604019 () Bool)

(assert (=> b!5812998 (= e!3567989 (and tp!1604017 tp!1604019))))

(declare-fun b!5812997 () Bool)

(declare-fun tp!1604016 () Bool)

(assert (=> b!5812997 (= e!3567989 tp!1604016)))

(assert (=> b!5812076 (= tp!1603896 e!3567989)))

(assert (= (and b!5812076 ((_ is ElementMatch!15829) (reg!16158 r!7292))) b!5812995))

(assert (= (and b!5812076 ((_ is Concat!24674) (reg!16158 r!7292))) b!5812996))

(assert (= (and b!5812076 ((_ is Star!15829) (reg!16158 r!7292))) b!5812997))

(assert (= (and b!5812076 ((_ is Union!15829) (reg!16158 r!7292))) b!5812998))

(declare-fun b_lambda!219147 () Bool)

(assert (= b_lambda!219127 (or b!5812074 b_lambda!219147)))

(declare-fun bs!1372383 () Bool)

(declare-fun d!1830528 () Bool)

(assert (= bs!1372383 (and d!1830528 b!5812074)))

(assert (=> bs!1372383 (= (dynLambda!24927 lambda!317546 lt!2300252) (derivationStepZipperUp!1093 lt!2300252 (h!70112 s!2326)))))

(assert (=> bs!1372383 m!6750328))

(assert (=> d!1830394 d!1830528))

(declare-fun b_lambda!219149 () Bool)

(assert (= b_lambda!219119 (or b!5812083 b_lambda!219149)))

(declare-fun bs!1372384 () Bool)

(declare-fun d!1830530 () Bool)

(assert (= bs!1372384 (and d!1830530 b!5812083)))

(declare-fun lt!2300410 () Unit!156918)

(assert (=> bs!1372384 (= lt!2300410 (lemmaConcatPreservesForall!330 (exprs!5713 lt!2300252) lt!2300250 lambda!317548))))

(assert (=> bs!1372384 (= (dynLambda!24926 lambda!317547 lt!2300252) (Context!10427 (++!14043 (exprs!5713 lt!2300252) lt!2300250)))))

(declare-fun m!6751096 () Bool)

(assert (=> bs!1372384 m!6751096))

(declare-fun m!6751098 () Bool)

(assert (=> bs!1372384 m!6751098))

(assert (=> d!1830314 d!1830530))

(declare-fun b_lambda!219151 () Bool)

(assert (= b_lambda!219145 (or b!5812074 b_lambda!219151)))

(declare-fun bs!1372385 () Bool)

(declare-fun d!1830532 () Bool)

(assert (= bs!1372385 (and d!1830532 b!5812074)))

(assert (=> bs!1372385 (= (dynLambda!24927 lambda!317546 lt!2300236) (derivationStepZipperUp!1093 lt!2300236 (h!70112 s!2326)))))

(assert (=> bs!1372385 m!6750348))

(assert (=> d!1830504 d!1830532))

(declare-fun b_lambda!219153 () Bool)

(assert (= b_lambda!219125 (or b!5812074 b_lambda!219153)))

(declare-fun bs!1372386 () Bool)

(declare-fun d!1830534 () Bool)

(assert (= bs!1372386 (and d!1830534 b!5812074)))

(assert (=> bs!1372386 (= (dynLambda!24927 lambda!317546 lt!2300231) (derivationStepZipperUp!1093 lt!2300231 (h!70112 s!2326)))))

(assert (=> bs!1372386 m!6750326))

(assert (=> d!1830390 d!1830534))

(declare-fun b_lambda!219155 () Bool)

(assert (= b_lambda!219123 (or b!5812074 b_lambda!219155)))

(declare-fun bs!1372387 () Bool)

(declare-fun d!1830536 () Bool)

(assert (= bs!1372387 (and d!1830536 b!5812074)))

(assert (=> bs!1372387 (= (dynLambda!24927 lambda!317546 (h!70111 zl!343)) (derivationStepZipperUp!1093 (h!70111 zl!343) (h!70112 s!2326)))))

(assert (=> bs!1372387 m!6750302))

(assert (=> d!1830344 d!1830536))

(check-sat (not b!5812992) (not b!5812903) (not b!5812822) (not b!5812979) (not d!1830316) (not b!5812980) (not b!5812886) (not b!5812815) (not b!5812596) (not b_lambda!219155) (not d!1830462) (not b!5812477) (not b!5812718) (not bm!454003) (not bs!1372383) (not bm!454002) (not b!5812869) (not d!1830298) (not b!5812849) (not bs!1372385) (not b!5812855) (not bm!453967) (not b!5812943) (not b!5812904) (not b!5812472) (not d!1830504) (not b!5812989) (not d!1830514) (not bs!1372384) (not bs!1372386) (not b!5812929) (not b!5812496) (not b!5812599) (not bm!454008) (not d!1830492) (not b_lambda!219153) (not bm!454010) (not b!5812469) (not b!5812715) (not b!5812988) (not b!5812816) (not d!1830432) tp_is_empty!40911 (not b!5812414) (not d!1830518) (not b!5812944) (not d!1830506) (not b!5812975) (not d!1830318) (not b!5812856) (not d!1830520) (not b!5812942) (not b!5812850) (not d!1830466) (not d!1830516) (not b!5812848) (not b!5812952) (not b!5812925) (not b!5812409) (not d!1830406) (not bm!454007) (not b!5812717) (not b!5812819) (not b!5812719) (not b!5812501) (not b!5812640) (not bm!453966) (not d!1830424) (not d!1830464) (not b!5812470) (not bm!454011) (not d!1830420) (not bm!454009) (not d!1830294) (not bm!453962) (not d!1830404) (not b!5812931) (not d!1830510) (not bm!453968) (not b!5812498) (not b!5812879) (not d!1830522) (not b!5812939) (not b!5812963) (not b!5812478) (not bm!453995) (not d!1830344) (not d!1830346) (not b!5812263) (not b!5812997) (not bm!453991) (not b!5812893) (not d!1830486) (not d!1830496) (not b!5812860) (not b!5812721) (not b!5812930) (not d!1830402) (not b!5812885) (not b_lambda!219147) (not b!5812957) (not b!5812857) (not b!5812951) (not b!5812926) (not b!5812479) (not d!1830490) (not b!5812193) (not b!5812554) (not d!1830512) (not b!5812872) (not b!5812894) (not b!5812888) (not d!1830348) (not b!5812928) (not d!1830386) (not b!5812996) (not b!5812853) (not d!1830422) (not b!5812820) (not d!1830494) (not d!1830324) (not bm!453975) (not b!5812986) (not d!1830524) (not d!1830370) (not b!5812192) (not bm!453939) (not d!1830484) (not b!5812990) (not bm!453963) (not b!5812993) (not b!5812587) (not d!1830482) (not b!5812994) (not bm!453996) (not b!5812998) (not d!1830314) (not b!5812821) (not d!1830390) (not b_lambda!219151) (not b!5812981) (not b!5812493) (not b!5812722) (not d!1830320) (not b!5812132) (not d!1830394) (not b!5812977) (not b!5812958) (not b!5812932) (not setNonEmpty!39154) (not b!5812895) (not b!5812976) (not d!1830308) (not b!5812874) (not b!5812260) (not b!5812941) (not bm!453990) (not d!1830468) (not b_lambda!219149) (not bs!1372387) (not d!1830500) (not bm!453977) (not b!5812641) (not d!1830526))
(check-sat)
