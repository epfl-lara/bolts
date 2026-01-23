; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!702316 () Bool)

(assert start!702316)

(declare-fun b!7234909 () Bool)

(assert (=> b!7234909 true))

(declare-fun b!7234903 () Bool)

(assert (=> b!7234903 true))

(declare-fun e!4337382 () Bool)

(declare-fun e!4337388 () Bool)

(assert (=> b!7234903 (= e!4337382 e!4337388)))

(declare-fun res!2935160 () Bool)

(assert (=> b!7234903 (=> res!2935160 e!4337388)))

(declare-datatypes ((C!37304 0))(
  ( (C!37305 (val!28600 Int)) )
))
(declare-datatypes ((Regex!18515 0))(
  ( (ElementMatch!18515 (c!1342693 C!37304)) (Concat!27360 (regOne!37542 Regex!18515) (regTwo!37542 Regex!18515)) (EmptyExpr!18515) (Star!18515 (reg!18844 Regex!18515)) (EmptyLang!18515) (Union!18515 (regOne!37543 Regex!18515) (regTwo!37543 Regex!18515)) )
))
(declare-datatypes ((List!70153 0))(
  ( (Nil!70029) (Cons!70029 (h!76477 Regex!18515) (t!384204 List!70153)) )
))
(declare-datatypes ((Context!14910 0))(
  ( (Context!14911 (exprs!7955 List!70153)) )
))
(declare-fun ct1!232 () Context!14910)

(declare-fun nullable!7828 (Regex!18515) Bool)

(assert (=> b!7234903 (= res!2935160 (not (nullable!7828 (h!76477 (exprs!7955 ct1!232)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2574988 () (InoxSet Context!14910))

(declare-fun lt!2574992 () Context!14910)

(declare-fun lambda!440081 () Int)

(declare-datatypes ((List!70154 0))(
  ( (Nil!70030) (Cons!70030 (h!76478 C!37304) (t!384205 List!70154)) )
))
(declare-fun s1!1971 () List!70154)

(declare-fun flatMap!2719 ((InoxSet Context!14910) Int) (InoxSet Context!14910))

(declare-fun derivationStepZipperUp!2389 (Context!14910 C!37304) (InoxSet Context!14910))

(assert (=> b!7234903 (= (flatMap!2719 lt!2574988 lambda!440081) (derivationStepZipperUp!2389 lt!2574992 (h!76478 s1!1971)))))

(declare-datatypes ((Unit!163568 0))(
  ( (Unit!163569) )
))
(declare-fun lt!2574984 () Unit!163568)

(declare-fun lemmaFlatMapOnSingletonSet!2146 ((InoxSet Context!14910) Context!14910 Int) Unit!163568)

(assert (=> b!7234903 (= lt!2574984 (lemmaFlatMapOnSingletonSet!2146 lt!2574988 lt!2574992 lambda!440081))))

(declare-fun lambda!440079 () Int)

(declare-fun lt!2574981 () Unit!163568)

(declare-fun ct2!328 () Context!14910)

(declare-fun lemmaConcatPreservesForall!1324 (List!70153 List!70153 Int) Unit!163568)

(assert (=> b!7234903 (= lt!2574981 (lemmaConcatPreservesForall!1324 (exprs!7955 ct1!232) (exprs!7955 ct2!328) lambda!440079))))

(declare-fun lt!2574993 () (InoxSet Context!14910))

(assert (=> b!7234903 (= (flatMap!2719 lt!2574993 lambda!440081) (derivationStepZipperUp!2389 ct1!232 (h!76478 s1!1971)))))

(declare-fun lt!2574982 () Unit!163568)

(assert (=> b!7234903 (= lt!2574982 (lemmaFlatMapOnSingletonSet!2146 lt!2574993 ct1!232 lambda!440081))))

(declare-fun lt!2574985 () (InoxSet Context!14910))

(declare-fun lt!2574980 () List!70153)

(declare-fun derivationStepZipperDown!2559 (Regex!18515 Context!14910 C!37304) (InoxSet Context!14910))

(declare-fun tail!14146 (List!70153) List!70153)

(assert (=> b!7234903 (= lt!2574985 (derivationStepZipperDown!2559 (h!76477 (exprs!7955 ct1!232)) (Context!14911 (tail!14146 lt!2574980)) (h!76478 s1!1971)))))

(declare-fun b!7234904 () Bool)

(declare-fun e!4337387 () Bool)

(declare-fun e!4337385 () Bool)

(assert (=> b!7234904 (= e!4337387 e!4337385)))

(declare-fun res!2935162 () Bool)

(assert (=> b!7234904 (=> (not res!2935162) (not e!4337385))))

(get-info :version)

(assert (=> b!7234904 (= res!2935162 (and (not ((_ is Nil!70029) (exprs!7955 ct1!232))) ((_ is Cons!70030) s1!1971)))))

(assert (=> b!7234904 (= lt!2574988 (store ((as const (Array Context!14910 Bool)) false) lt!2574992 true))))

(assert (=> b!7234904 (= lt!2574992 (Context!14911 lt!2574980))))

(declare-fun ++!16330 (List!70153 List!70153) List!70153)

(assert (=> b!7234904 (= lt!2574980 (++!16330 (exprs!7955 ct1!232) (exprs!7955 ct2!328)))))

(declare-fun lt!2574983 () Unit!163568)

(assert (=> b!7234904 (= lt!2574983 (lemmaConcatPreservesForall!1324 (exprs!7955 ct1!232) (exprs!7955 ct2!328) lambda!440079))))

(declare-fun b!7234905 () Bool)

(declare-fun res!2935164 () Bool)

(assert (=> b!7234905 (=> (not res!2935164) (not e!4337387))))

(declare-fun s2!1849 () List!70154)

(declare-fun matchZipper!3425 ((InoxSet Context!14910) List!70154) Bool)

(assert (=> b!7234905 (= res!2935164 (matchZipper!3425 (store ((as const (Array Context!14910 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7234906 () Bool)

(declare-fun e!4337380 () Bool)

(declare-fun tp_is_empty!46495 () Bool)

(declare-fun tp!2034431 () Bool)

(assert (=> b!7234906 (= e!4337380 (and tp_is_empty!46495 tp!2034431))))

(declare-fun b!7234907 () Bool)

(declare-fun e!4337386 () Bool)

(declare-fun tp!2034429 () Bool)

(assert (=> b!7234907 (= e!4337386 tp!2034429)))

(declare-fun b!7234908 () Bool)

(declare-fun e!4337383 () Bool)

(assert (=> b!7234908 (= e!4337383 e!4337382)))

(declare-fun res!2935159 () Bool)

(assert (=> b!7234908 (=> res!2935159 e!4337382)))

(declare-fun isEmpty!40360 (List!70153) Bool)

(assert (=> b!7234908 (= res!2935159 (isEmpty!40360 lt!2574980))))

(declare-fun lt!2574986 () Unit!163568)

(assert (=> b!7234908 (= lt!2574986 (lemmaConcatPreservesForall!1324 (exprs!7955 ct1!232) (exprs!7955 ct2!328) lambda!440079))))

(declare-fun lt!2574990 () (InoxSet Context!14910))

(assert (=> b!7234908 (= lt!2574990 (derivationStepZipperUp!2389 lt!2574992 (h!76478 s1!1971)))))

(declare-fun lt!2574975 () Unit!163568)

(assert (=> b!7234908 (= lt!2574975 (lemmaConcatPreservesForall!1324 (exprs!7955 ct1!232) (exprs!7955 ct2!328) lambda!440079))))

(declare-fun lt!2574977 () (InoxSet Context!14910))

(assert (=> b!7234908 (= lt!2574977 (derivationStepZipperDown!2559 (h!76477 (exprs!7955 ct1!232)) (Context!14911 (tail!14146 (exprs!7955 ct1!232))) (h!76478 s1!1971)))))

(declare-fun e!4337379 () Bool)

(declare-fun e!4337381 () Bool)

(assert (=> b!7234909 (= e!4337379 (not e!4337381))))

(declare-fun res!2935161 () Bool)

(assert (=> b!7234909 (=> res!2935161 e!4337381)))

(declare-fun lt!2574989 () (InoxSet Context!14910))

(declare-fun lambda!440080 () Int)

(declare-fun exists!4173 ((InoxSet Context!14910) Int) Bool)

(assert (=> b!7234909 (= res!2935161 (not (exists!4173 lt!2574989 lambda!440080)))))

(declare-datatypes ((List!70155 0))(
  ( (Nil!70031) (Cons!70031 (h!76479 Context!14910) (t!384206 List!70155)) )
))
(declare-fun lt!2574979 () List!70155)

(declare-fun exists!4174 (List!70155 Int) Bool)

(assert (=> b!7234909 (exists!4174 lt!2574979 lambda!440080)))

(declare-fun lt!2574994 () Unit!163568)

(declare-fun lemmaZipperMatchesExistsMatchingContext!658 (List!70155 List!70154) Unit!163568)

(assert (=> b!7234909 (= lt!2574994 (lemmaZipperMatchesExistsMatchingContext!658 lt!2574979 (t!384205 s1!1971)))))

(declare-fun toList!11372 ((InoxSet Context!14910)) List!70155)

(assert (=> b!7234909 (= lt!2574979 (toList!11372 lt!2574989))))

(declare-fun b!7234910 () Bool)

(declare-fun e!4337384 () Bool)

(declare-fun tp!2034432 () Bool)

(assert (=> b!7234910 (= e!4337384 (and tp_is_empty!46495 tp!2034432))))

(declare-fun b!7234911 () Bool)

(declare-fun e!4337378 () Bool)

(declare-fun tp!2034430 () Bool)

(assert (=> b!7234911 (= e!4337378 tp!2034430)))

(declare-fun res!2935166 () Bool)

(assert (=> start!702316 (=> (not res!2935166) (not e!4337387))))

(assert (=> start!702316 (= res!2935166 (matchZipper!3425 lt!2574993 s1!1971))))

(assert (=> start!702316 (= lt!2574993 (store ((as const (Array Context!14910 Bool)) false) ct1!232 true))))

(assert (=> start!702316 e!4337387))

(declare-fun inv!89297 (Context!14910) Bool)

(assert (=> start!702316 (and (inv!89297 ct1!232) e!4337386)))

(assert (=> start!702316 e!4337380))

(assert (=> start!702316 e!4337384))

(assert (=> start!702316 (and (inv!89297 ct2!328) e!4337378)))

(declare-fun b!7234902 () Bool)

(assert (=> b!7234902 (= e!4337388 (not (= (exprs!7955 ct1!232) Nil!70029)))))

(declare-fun b!7234912 () Bool)

(assert (=> b!7234912 (= e!4337385 e!4337379)))

(declare-fun res!2935165 () Bool)

(assert (=> b!7234912 (=> (not res!2935165) (not e!4337379))))

(assert (=> b!7234912 (= res!2935165 (matchZipper!3425 lt!2574989 (t!384205 s1!1971)))))

(declare-fun derivationStepZipper!3307 ((InoxSet Context!14910) C!37304) (InoxSet Context!14910))

(assert (=> b!7234912 (= lt!2574989 (derivationStepZipper!3307 lt!2574993 (h!76478 s1!1971)))))

(declare-fun b!7234913 () Bool)

(assert (=> b!7234913 (= e!4337381 e!4337383)))

(declare-fun res!2935163 () Bool)

(assert (=> b!7234913 (=> res!2935163 e!4337383)))

(assert (=> b!7234913 (= res!2935163 (isEmpty!40360 (exprs!7955 ct1!232)))))

(declare-fun lt!2574978 () (InoxSet Context!14910))

(assert (=> b!7234913 (= lt!2574978 (derivationStepZipperUp!2389 ct1!232 (h!76478 s1!1971)))))

(declare-fun lt!2574995 () Unit!163568)

(declare-fun lt!2574976 () Context!14910)

(assert (=> b!7234913 (= lt!2574995 (lemmaConcatPreservesForall!1324 (exprs!7955 lt!2574976) (exprs!7955 ct2!328) lambda!440079))))

(declare-fun ++!16331 (List!70154 List!70154) List!70154)

(assert (=> b!7234913 (matchZipper!3425 (store ((as const (Array Context!14910 Bool)) false) (Context!14911 (++!16330 (exprs!7955 lt!2574976) (exprs!7955 ct2!328))) true) (++!16331 (t!384205 s1!1971) s2!1849))))

(declare-fun lt!2574987 () Unit!163568)

(assert (=> b!7234913 (= lt!2574987 (lemmaConcatPreservesForall!1324 (exprs!7955 lt!2574976) (exprs!7955 ct2!328) lambda!440079))))

(declare-fun lt!2574991 () Unit!163568)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!306 (Context!14910 Context!14910 List!70154 List!70154) Unit!163568)

(assert (=> b!7234913 (= lt!2574991 (lemmaConcatenateContextMatchesConcatOfStrings!306 lt!2574976 ct2!328 (t!384205 s1!1971) s2!1849))))

(declare-fun getWitness!2044 ((InoxSet Context!14910) Int) Context!14910)

(assert (=> b!7234913 (= lt!2574976 (getWitness!2044 lt!2574989 lambda!440080))))

(assert (= (and start!702316 res!2935166) b!7234905))

(assert (= (and b!7234905 res!2935164) b!7234904))

(assert (= (and b!7234904 res!2935162) b!7234912))

(assert (= (and b!7234912 res!2935165) b!7234909))

(assert (= (and b!7234909 (not res!2935161)) b!7234913))

(assert (= (and b!7234913 (not res!2935163)) b!7234908))

(assert (= (and b!7234908 (not res!2935159)) b!7234903))

(assert (= (and b!7234903 (not res!2935160)) b!7234902))

(assert (= start!702316 b!7234907))

(assert (= (and start!702316 ((_ is Cons!70030) s1!1971)) b!7234906))

(assert (= (and start!702316 ((_ is Cons!70030) s2!1849)) b!7234910))

(assert (= start!702316 b!7234911))

(declare-fun m!7905182 () Bool)

(assert (=> b!7234908 m!7905182))

(declare-fun m!7905184 () Bool)

(assert (=> b!7234908 m!7905184))

(assert (=> b!7234908 m!7905184))

(declare-fun m!7905186 () Bool)

(assert (=> b!7234908 m!7905186))

(declare-fun m!7905188 () Bool)

(assert (=> b!7234908 m!7905188))

(declare-fun m!7905190 () Bool)

(assert (=> b!7234908 m!7905190))

(declare-fun m!7905192 () Bool)

(assert (=> b!7234913 m!7905192))

(declare-fun m!7905194 () Bool)

(assert (=> b!7234913 m!7905194))

(assert (=> b!7234913 m!7905192))

(declare-fun m!7905196 () Bool)

(assert (=> b!7234913 m!7905196))

(declare-fun m!7905198 () Bool)

(assert (=> b!7234913 m!7905198))

(declare-fun m!7905200 () Bool)

(assert (=> b!7234913 m!7905200))

(declare-fun m!7905202 () Bool)

(assert (=> b!7234913 m!7905202))

(assert (=> b!7234913 m!7905198))

(declare-fun m!7905204 () Bool)

(assert (=> b!7234913 m!7905204))

(declare-fun m!7905206 () Bool)

(assert (=> b!7234913 m!7905206))

(declare-fun m!7905208 () Bool)

(assert (=> b!7234913 m!7905208))

(assert (=> b!7234913 m!7905202))

(declare-fun m!7905210 () Bool)

(assert (=> b!7234904 m!7905210))

(declare-fun m!7905212 () Bool)

(assert (=> b!7234904 m!7905212))

(assert (=> b!7234904 m!7905184))

(declare-fun m!7905214 () Bool)

(assert (=> b!7234905 m!7905214))

(assert (=> b!7234905 m!7905214))

(declare-fun m!7905216 () Bool)

(assert (=> b!7234905 m!7905216))

(declare-fun m!7905218 () Bool)

(assert (=> start!702316 m!7905218))

(declare-fun m!7905220 () Bool)

(assert (=> start!702316 m!7905220))

(declare-fun m!7905222 () Bool)

(assert (=> start!702316 m!7905222))

(declare-fun m!7905224 () Bool)

(assert (=> start!702316 m!7905224))

(declare-fun m!7905226 () Bool)

(assert (=> b!7234912 m!7905226))

(declare-fun m!7905228 () Bool)

(assert (=> b!7234912 m!7905228))

(declare-fun m!7905230 () Bool)

(assert (=> b!7234903 m!7905230))

(declare-fun m!7905232 () Bool)

(assert (=> b!7234903 m!7905232))

(assert (=> b!7234903 m!7905196))

(assert (=> b!7234903 m!7905184))

(declare-fun m!7905234 () Bool)

(assert (=> b!7234903 m!7905234))

(declare-fun m!7905236 () Bool)

(assert (=> b!7234903 m!7905236))

(assert (=> b!7234903 m!7905182))

(declare-fun m!7905238 () Bool)

(assert (=> b!7234903 m!7905238))

(declare-fun m!7905240 () Bool)

(assert (=> b!7234903 m!7905240))

(declare-fun m!7905242 () Bool)

(assert (=> b!7234903 m!7905242))

(declare-fun m!7905244 () Bool)

(assert (=> b!7234909 m!7905244))

(declare-fun m!7905246 () Bool)

(assert (=> b!7234909 m!7905246))

(declare-fun m!7905248 () Bool)

(assert (=> b!7234909 m!7905248))

(declare-fun m!7905250 () Bool)

(assert (=> b!7234909 m!7905250))

(check-sat tp_is_empty!46495 (not b!7234903) (not b!7234906) (not b!7234907) (not b!7234913) (not b!7234908) (not b!7234909) (not b!7234904) (not start!702316) (not b!7234912) (not b!7234910) (not b!7234905) (not b!7234911))
(check-sat)
