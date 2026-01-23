; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!596328 () Bool)

(assert start!596328)

(declare-fun b!5820139 () Bool)

(assert (=> b!5820139 true))

(declare-fun b!5820146 () Bool)

(assert (=> b!5820146 true))

(declare-fun res!2454295 () Bool)

(declare-fun e!3571929 () Bool)

(assert (=> start!596328 (=> (not res!2454295) (not e!3571929))))

(declare-datatypes ((C!31988 0))(
  ( (C!31989 (val!25696 Int)) )
))
(declare-datatypes ((Regex!15859 0))(
  ( (ElementMatch!15859 (c!1031421 C!31988)) (Concat!24704 (regOne!32230 Regex!15859) (regTwo!32230 Regex!15859)) (EmptyExpr!15859) (Star!15859 (reg!16188 Regex!15859)) (EmptyLang!15859) (Union!15859 (regOne!32231 Regex!15859) (regTwo!32231 Regex!15859)) )
))
(declare-fun r!7292 () Regex!15859)

(declare-fun validRegex!7595 (Regex!15859) Bool)

(assert (=> start!596328 (= res!2454295 (validRegex!7595 r!7292))))

(assert (=> start!596328 e!3571929))

(declare-fun e!3571930 () Bool)

(assert (=> start!596328 e!3571930))

(declare-fun condSetEmpty!39288 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63876 0))(
  ( (Nil!63752) (Cons!63752 (h!70200 Regex!15859) (t!377231 List!63876)) )
))
(declare-datatypes ((Context!10486 0))(
  ( (Context!10487 (exprs!5743 List!63876)) )
))
(declare-fun z!1189 () (InoxSet Context!10486))

(assert (=> start!596328 (= condSetEmpty!39288 (= z!1189 ((as const (Array Context!10486 Bool)) false)))))

(declare-fun setRes!39288 () Bool)

(assert (=> start!596328 setRes!39288))

(declare-fun e!3571932 () Bool)

(assert (=> start!596328 e!3571932))

(declare-fun e!3571931 () Bool)

(assert (=> start!596328 e!3571931))

(declare-fun b!5820137 () Bool)

(declare-fun e!3571935 () Bool)

(assert (=> b!5820137 (= e!3571929 (not e!3571935))))

(declare-fun res!2454289 () Bool)

(assert (=> b!5820137 (=> res!2454289 e!3571935)))

(declare-fun e!3571933 () Bool)

(assert (=> b!5820137 (= res!2454289 e!3571933)))

(declare-fun res!2454294 () Bool)

(assert (=> b!5820137 (=> (not res!2454294) (not e!3571933))))

(declare-datatypes ((List!63877 0))(
  ( (Nil!63753) (Cons!63753 (h!70201 Context!10486) (t!377232 List!63877)) )
))
(declare-fun zl!343 () List!63877)

(get-info :version)

(assert (=> b!5820137 (= res!2454294 ((_ is Cons!63753) zl!343))))

(declare-fun lt!2302012 () Bool)

(declare-datatypes ((List!63878 0))(
  ( (Nil!63754) (Cons!63754 (h!70202 C!31988) (t!377233 List!63878)) )
))
(declare-fun s!2326 () List!63878)

(declare-fun matchRSpec!2962 (Regex!15859 List!63878) Bool)

(assert (=> b!5820137 (= lt!2302012 (matchRSpec!2962 r!7292 s!2326))))

(declare-fun matchR!8044 (Regex!15859 List!63878) Bool)

(assert (=> b!5820137 (= lt!2302012 (matchR!8044 r!7292 s!2326))))

(declare-datatypes ((Unit!156990 0))(
  ( (Unit!156991) )
))
(declare-fun lt!2302008 () Unit!156990)

(declare-fun mainMatchTheorem!2962 (Regex!15859 List!63878) Unit!156990)

(assert (=> b!5820137 (= lt!2302008 (mainMatchTheorem!2962 r!7292 s!2326))))

(declare-fun b!5820138 () Bool)

(declare-fun isEmpty!35642 (List!63877) Bool)

(assert (=> b!5820138 (= e!3571933 (isEmpty!35642 (t!377232 zl!343)))))

(declare-fun e!3571928 () Bool)

(assert (=> b!5820139 (= e!3571935 e!3571928)))

(declare-fun res!2454290 () Bool)

(assert (=> b!5820139 (=> res!2454290 e!3571928)))

(assert (=> b!5820139 (= res!2454290 lt!2302012)))

(declare-fun lt!2302011 () List!63876)

(declare-fun lambda!318399 () Int)

(declare-fun exists!2280 (List!63876 Int) Bool)

(assert (=> b!5820139 (= lt!2302012 (exists!2280 lt!2302011 lambda!318399))))

(declare-fun lt!2302010 () Unit!156990)

(declare-fun matchRGenUnionSpec!300 (Regex!15859 List!63876 List!63878) Unit!156990)

(assert (=> b!5820139 (= lt!2302010 (matchRGenUnionSpec!300 r!7292 lt!2302011 s!2326))))

(declare-fun unfocusZipperList!1281 (List!63877) List!63876)

(assert (=> b!5820139 (= lt!2302011 (unfocusZipperList!1281 zl!343))))

(declare-fun setIsEmpty!39288 () Bool)

(assert (=> setIsEmpty!39288 setRes!39288))

(declare-fun tp!1606039 () Bool)

(declare-fun e!3571934 () Bool)

(declare-fun b!5820140 () Bool)

(declare-fun inv!82894 (Context!10486) Bool)

(assert (=> b!5820140 (= e!3571932 (and (inv!82894 (h!70201 zl!343)) e!3571934 tp!1606039))))

(declare-fun b!5820141 () Bool)

(declare-fun res!2454296 () Bool)

(assert (=> b!5820141 (=> (not res!2454296) (not e!3571929))))

(declare-fun toList!9643 ((InoxSet Context!10486)) List!63877)

(assert (=> b!5820141 (= res!2454296 (= (toList!9643 z!1189) zl!343))))

(declare-fun b!5820142 () Bool)

(declare-fun res!2454293 () Bool)

(assert (=> b!5820142 (=> (not res!2454293) (not e!3571929))))

(declare-fun unfocusZipper!1601 (List!63877) Regex!15859)

(assert (=> b!5820142 (= res!2454293 (= r!7292 (unfocusZipper!1601 zl!343)))))

(declare-fun b!5820143 () Bool)

(declare-fun tp!1606035 () Bool)

(assert (=> b!5820143 (= e!3571934 tp!1606035)))

(declare-fun b!5820144 () Bool)

(declare-fun res!2454287 () Bool)

(assert (=> b!5820144 (=> res!2454287 e!3571928)))

(assert (=> b!5820144 (= res!2454287 (exists!2280 lt!2302011 lambda!318399))))

(declare-fun b!5820145 () Bool)

(declare-fun tp_is_empty!40971 () Bool)

(assert (=> b!5820145 (= e!3571930 tp_is_empty!40971)))

(declare-fun lambda!318400 () Int)

(declare-fun exists!2281 (List!63877 Int) Bool)

(assert (=> b!5820146 (= e!3571928 (exists!2281 zl!343 lambda!318400))))

(assert (=> b!5820146 (exists!2281 zl!343 lambda!318400)))

(declare-fun lt!2302009 () Unit!156990)

(declare-fun lemmaZipperMatchesExistsMatchingContext!80 (List!63877 List!63878) Unit!156990)

(assert (=> b!5820146 (= lt!2302009 (lemmaZipperMatchesExistsMatchingContext!80 zl!343 s!2326))))

(declare-fun b!5820147 () Bool)

(declare-fun tp!1606040 () Bool)

(declare-fun tp!1606032 () Bool)

(assert (=> b!5820147 (= e!3571930 (and tp!1606040 tp!1606032))))

(declare-fun b!5820148 () Bool)

(declare-fun res!2454291 () Bool)

(assert (=> b!5820148 (=> res!2454291 e!3571935)))

(assert (=> b!5820148 (= res!2454291 (isEmpty!35642 (t!377232 zl!343)))))

(declare-fun b!5820149 () Bool)

(declare-fun tp!1606031 () Bool)

(assert (=> b!5820149 (= e!3571930 tp!1606031)))

(declare-fun setNonEmpty!39288 () Bool)

(declare-fun tp!1606037 () Bool)

(declare-fun e!3571927 () Bool)

(declare-fun setElem!39288 () Context!10486)

(assert (=> setNonEmpty!39288 (= setRes!39288 (and tp!1606037 (inv!82894 setElem!39288) e!3571927))))

(declare-fun setRest!39288 () (InoxSet Context!10486))

(assert (=> setNonEmpty!39288 (= z!1189 ((_ map or) (store ((as const (Array Context!10486 Bool)) false) setElem!39288 true) setRest!39288))))

(declare-fun b!5820150 () Bool)

(declare-fun tp!1606033 () Bool)

(assert (=> b!5820150 (= e!3571927 tp!1606033)))

(declare-fun b!5820151 () Bool)

(declare-fun tp!1606038 () Bool)

(declare-fun tp!1606034 () Bool)

(assert (=> b!5820151 (= e!3571930 (and tp!1606038 tp!1606034))))

(declare-fun b!5820152 () Bool)

(declare-fun res!2454288 () Bool)

(assert (=> b!5820152 (=> res!2454288 e!3571935)))

(assert (=> b!5820152 (= res!2454288 (or (not ((_ is Cons!63753) zl!343)) ((_ is Nil!63754) s!2326) (not (= zl!343 (Cons!63753 (h!70201 zl!343) (t!377232 zl!343))))))))

(declare-fun b!5820153 () Bool)

(declare-fun tp!1606036 () Bool)

(assert (=> b!5820153 (= e!3571931 (and tp_is_empty!40971 tp!1606036))))

(declare-fun b!5820154 () Bool)

(declare-fun res!2454292 () Bool)

(assert (=> b!5820154 (=> res!2454292 e!3571928)))

(declare-fun matchZipper!1965 ((InoxSet Context!10486) List!63878) Bool)

(assert (=> b!5820154 (= res!2454292 (not (matchZipper!1965 z!1189 s!2326)))))

(assert (= (and start!596328 res!2454295) b!5820141))

(assert (= (and b!5820141 res!2454296) b!5820142))

(assert (= (and b!5820142 res!2454293) b!5820137))

(assert (= (and b!5820137 res!2454294) b!5820138))

(assert (= (and b!5820137 (not res!2454289)) b!5820152))

(assert (= (and b!5820152 (not res!2454288)) b!5820148))

(assert (= (and b!5820148 (not res!2454291)) b!5820139))

(assert (= (and b!5820139 (not res!2454290)) b!5820144))

(assert (= (and b!5820144 (not res!2454287)) b!5820154))

(assert (= (and b!5820154 (not res!2454292)) b!5820146))

(assert (= (and start!596328 ((_ is ElementMatch!15859) r!7292)) b!5820145))

(assert (= (and start!596328 ((_ is Concat!24704) r!7292)) b!5820151))

(assert (= (and start!596328 ((_ is Star!15859) r!7292)) b!5820149))

(assert (= (and start!596328 ((_ is Union!15859) r!7292)) b!5820147))

(assert (= (and start!596328 condSetEmpty!39288) setIsEmpty!39288))

(assert (= (and start!596328 (not condSetEmpty!39288)) setNonEmpty!39288))

(assert (= setNonEmpty!39288 b!5820150))

(assert (= b!5820140 b!5820143))

(assert (= (and start!596328 ((_ is Cons!63753) zl!343)) b!5820140))

(assert (= (and start!596328 ((_ is Cons!63754) s!2326)) b!5820153))

(declare-fun m!6755566 () Bool)

(assert (=> b!5820146 m!6755566))

(assert (=> b!5820146 m!6755566))

(declare-fun m!6755568 () Bool)

(assert (=> b!5820146 m!6755568))

(declare-fun m!6755570 () Bool)

(assert (=> b!5820138 m!6755570))

(declare-fun m!6755572 () Bool)

(assert (=> b!5820141 m!6755572))

(declare-fun m!6755574 () Bool)

(assert (=> b!5820139 m!6755574))

(declare-fun m!6755576 () Bool)

(assert (=> b!5820139 m!6755576))

(declare-fun m!6755578 () Bool)

(assert (=> b!5820139 m!6755578))

(declare-fun m!6755580 () Bool)

(assert (=> b!5820154 m!6755580))

(assert (=> b!5820144 m!6755574))

(declare-fun m!6755582 () Bool)

(assert (=> b!5820137 m!6755582))

(declare-fun m!6755584 () Bool)

(assert (=> b!5820137 m!6755584))

(declare-fun m!6755586 () Bool)

(assert (=> b!5820137 m!6755586))

(declare-fun m!6755588 () Bool)

(assert (=> start!596328 m!6755588))

(declare-fun m!6755590 () Bool)

(assert (=> b!5820142 m!6755590))

(assert (=> b!5820148 m!6755570))

(declare-fun m!6755592 () Bool)

(assert (=> setNonEmpty!39288 m!6755592))

(declare-fun m!6755594 () Bool)

(assert (=> b!5820140 m!6755594))

(check-sat (not b!5820140) (not b!5820151) (not b!5820139) (not b!5820149) (not b!5820143) (not b!5820144) (not b!5820150) (not b!5820138) (not start!596328) (not b!5820141) (not b!5820137) (not b!5820142) tp_is_empty!40971 (not b!5820147) (not b!5820154) (not b!5820148) (not b!5820146) (not b!5820153) (not setNonEmpty!39288))
(check-sat)
