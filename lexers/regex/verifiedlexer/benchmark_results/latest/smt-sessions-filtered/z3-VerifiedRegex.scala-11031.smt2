; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572158 () Bool)

(assert start!572158)

(declare-fun b!5464960 () Bool)

(assert (=> b!5464960 true))

(assert (=> b!5464960 true))

(declare-fun lambda!290284 () Int)

(declare-fun lambda!290283 () Int)

(assert (=> b!5464960 (not (= lambda!290284 lambda!290283))))

(assert (=> b!5464960 true))

(assert (=> b!5464960 true))

(declare-fun lambda!290285 () Int)

(assert (=> b!5464960 (not (= lambda!290285 lambda!290283))))

(assert (=> b!5464960 (not (= lambda!290285 lambda!290284))))

(assert (=> b!5464960 true))

(assert (=> b!5464960 true))

(declare-fun b!5464945 () Bool)

(declare-fun tp!1503122 () Bool)

(declare-fun e!3383651 () Bool)

(declare-fun e!3383649 () Bool)

(declare-datatypes ((C!30888 0))(
  ( (C!30889 (val!25146 Int)) )
))
(declare-datatypes ((Regex!15309 0))(
  ( (ElementMatch!15309 (c!954849 C!30888)) (Concat!24154 (regOne!31130 Regex!15309) (regTwo!31130 Regex!15309)) (EmptyExpr!15309) (Star!15309 (reg!15638 Regex!15309)) (EmptyLang!15309) (Union!15309 (regOne!31131 Regex!15309) (regTwo!31131 Regex!15309)) )
))
(declare-datatypes ((List!62226 0))(
  ( (Nil!62102) (Cons!62102 (h!68550 Regex!15309) (t!375455 List!62226)) )
))
(declare-datatypes ((Context!9386 0))(
  ( (Context!9387 (exprs!5193 List!62226)) )
))
(declare-datatypes ((List!62227 0))(
  ( (Nil!62103) (Cons!62103 (h!68551 Context!9386) (t!375456 List!62227)) )
))
(declare-fun zl!343 () List!62227)

(declare-fun inv!81519 (Context!9386) Bool)

(assert (=> b!5464945 (= e!3383651 (and (inv!81519 (h!68551 zl!343)) e!3383649 tp!1503122))))

(declare-fun b!5464946 () Bool)

(declare-fun e!3383647 () Bool)

(declare-fun tp_is_empty!39871 () Bool)

(assert (=> b!5464946 (= e!3383647 tp_is_empty!39871)))

(declare-fun b!5464947 () Bool)

(declare-fun tp!1503125 () Bool)

(assert (=> b!5464947 (= e!3383647 tp!1503125)))

(declare-fun b!5464948 () Bool)

(declare-fun res!2328199 () Bool)

(declare-fun e!3383650 () Bool)

(assert (=> b!5464948 (=> res!2328199 e!3383650)))

(declare-datatypes ((List!62228 0))(
  ( (Nil!62104) (Cons!62104 (h!68552 C!30888) (t!375457 List!62228)) )
))
(declare-fun s!2326 () List!62228)

(get-info :version)

(assert (=> b!5464948 (= res!2328199 (not ((_ is Nil!62104) s!2326)))))

(declare-fun b!5464949 () Bool)

(declare-fun e!3383652 () Bool)

(declare-fun tp!1503124 () Bool)

(assert (=> b!5464949 (= e!3383652 tp!1503124)))

(declare-fun b!5464950 () Bool)

(declare-fun res!2328196 () Bool)

(declare-fun e!3383645 () Bool)

(assert (=> b!5464950 (=> res!2328196 e!3383645)))

(assert (=> b!5464950 (= res!2328196 (not ((_ is Cons!62102) (exprs!5193 (h!68551 zl!343)))))))

(declare-fun b!5464951 () Bool)

(declare-fun tp!1503120 () Bool)

(declare-fun tp!1503119 () Bool)

(assert (=> b!5464951 (= e!3383647 (and tp!1503120 tp!1503119))))

(declare-fun b!5464952 () Bool)

(declare-fun res!2328189 () Bool)

(declare-fun e!3383646 () Bool)

(assert (=> b!5464952 (=> (not res!2328189) (not e!3383646))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9386))

(declare-fun toList!9093 ((InoxSet Context!9386)) List!62227)

(assert (=> b!5464952 (= res!2328189 (= (toList!9093 z!1189) zl!343))))

(declare-fun res!2328197 () Bool)

(assert (=> start!572158 (=> (not res!2328197) (not e!3383646))))

(declare-fun r!7292 () Regex!15309)

(declare-fun validRegex!7045 (Regex!15309) Bool)

(assert (=> start!572158 (= res!2328197 (validRegex!7045 r!7292))))

(assert (=> start!572158 e!3383646))

(assert (=> start!572158 e!3383647))

(declare-fun condSetEmpty!35803 () Bool)

(assert (=> start!572158 (= condSetEmpty!35803 (= z!1189 ((as const (Array Context!9386 Bool)) false)))))

(declare-fun setRes!35803 () Bool)

(assert (=> start!572158 setRes!35803))

(assert (=> start!572158 e!3383651))

(declare-fun e!3383644 () Bool)

(assert (=> start!572158 e!3383644))

(declare-fun b!5464953 () Bool)

(declare-fun tp!1503123 () Bool)

(declare-fun tp!1503121 () Bool)

(assert (=> b!5464953 (= e!3383647 (and tp!1503123 tp!1503121))))

(declare-fun b!5464954 () Bool)

(assert (=> b!5464954 (= e!3383646 (not e!3383645))))

(declare-fun res!2328194 () Bool)

(assert (=> b!5464954 (=> res!2328194 e!3383645)))

(assert (=> b!5464954 (= res!2328194 (not ((_ is Cons!62103) zl!343)))))

(declare-fun lt!2233108 () Bool)

(declare-fun matchRSpec!2412 (Regex!15309 List!62228) Bool)

(assert (=> b!5464954 (= lt!2233108 (matchRSpec!2412 r!7292 s!2326))))

(declare-fun matchR!7494 (Regex!15309 List!62228) Bool)

(assert (=> b!5464954 (= lt!2233108 (matchR!7494 r!7292 s!2326))))

(declare-datatypes ((Unit!155068 0))(
  ( (Unit!155069) )
))
(declare-fun lt!2233106 () Unit!155068)

(declare-fun mainMatchTheorem!2412 (Regex!15309 List!62228) Unit!155068)

(assert (=> b!5464954 (= lt!2233106 (mainMatchTheorem!2412 r!7292 s!2326))))

(declare-fun b!5464955 () Bool)

(assert (=> b!5464955 (= e!3383650 true)))

(declare-fun nullable!5466 (Regex!15309) Bool)

(declare-fun nullableZipper!1490 ((InoxSet Context!9386)) Bool)

(assert (=> b!5464955 (= (nullable!5466 r!7292) (nullableZipper!1490 z!1189))))

(declare-fun lt!2233109 () Unit!155068)

(declare-fun lemmaUnfocusPreservesNullability!10 (Regex!15309 (InoxSet Context!9386)) Unit!155068)

(assert (=> b!5464955 (= lt!2233109 (lemmaUnfocusPreservesNullability!10 r!7292 z!1189))))

(declare-fun b!5464956 () Bool)

(declare-fun res!2328190 () Bool)

(assert (=> b!5464956 (=> (not res!2328190) (not e!3383646))))

(declare-fun unfocusZipper!1051 (List!62227) Regex!15309)

(assert (=> b!5464956 (= res!2328190 (= r!7292 (unfocusZipper!1051 zl!343)))))

(declare-fun b!5464957 () Bool)

(declare-fun res!2328193 () Bool)

(assert (=> b!5464957 (=> res!2328193 e!3383645)))

(declare-fun generalisedConcat!978 (List!62226) Regex!15309)

(assert (=> b!5464957 (= res!2328193 (not (= r!7292 (generalisedConcat!978 (exprs!5193 (h!68551 zl!343))))))))

(declare-fun b!5464958 () Bool)

(declare-fun res!2328200 () Bool)

(assert (=> b!5464958 (=> res!2328200 e!3383645)))

(declare-fun isEmpty!34074 (List!62227) Bool)

(assert (=> b!5464958 (= res!2328200 (not (isEmpty!34074 (t!375456 zl!343))))))

(declare-fun b!5464959 () Bool)

(declare-fun e!3383648 () Bool)

(declare-fun lt!2233104 () Bool)

(assert (=> b!5464959 (= e!3383648 lt!2233104)))

(declare-fun setIsEmpty!35803 () Bool)

(assert (=> setIsEmpty!35803 setRes!35803))

(assert (=> b!5464960 (= e!3383645 e!3383650)))

(declare-fun res!2328195 () Bool)

(assert (=> b!5464960 (=> res!2328195 e!3383650)))

(assert (=> b!5464960 (= res!2328195 (not (= lt!2233108 e!3383648)))))

(declare-fun res!2328191 () Bool)

(assert (=> b!5464960 (=> res!2328191 e!3383648)))

(declare-fun isEmpty!34075 (List!62228) Bool)

(assert (=> b!5464960 (= res!2328191 (isEmpty!34075 s!2326))))

(declare-fun Exists!2488 (Int) Bool)

(assert (=> b!5464960 (= (Exists!2488 lambda!290283) (Exists!2488 lambda!290285))))

(declare-fun lt!2233107 () Unit!155068)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1138 (Regex!15309 Regex!15309 List!62228) Unit!155068)

(assert (=> b!5464960 (= lt!2233107 (lemmaExistCutMatchRandMatchRSpecEquivalent!1138 (reg!15638 r!7292) r!7292 s!2326))))

(assert (=> b!5464960 (= (Exists!2488 lambda!290283) (Exists!2488 lambda!290284))))

(declare-fun lt!2233103 () Unit!155068)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!462 (Regex!15309 List!62228) Unit!155068)

(assert (=> b!5464960 (= lt!2233103 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!462 (reg!15638 r!7292) s!2326))))

(assert (=> b!5464960 (= lt!2233104 (Exists!2488 lambda!290283))))

(declare-datatypes ((tuple2!65012 0))(
  ( (tuple2!65013 (_1!35809 List!62228) (_2!35809 List!62228)) )
))
(declare-datatypes ((Option!15418 0))(
  ( (None!15417) (Some!15417 (v!51446 tuple2!65012)) )
))
(declare-fun isDefined!12121 (Option!15418) Bool)

(declare-fun findConcatSeparation!1832 (Regex!15309 Regex!15309 List!62228 List!62228 List!62228) Option!15418)

(assert (=> b!5464960 (= lt!2233104 (isDefined!12121 (findConcatSeparation!1832 (reg!15638 r!7292) r!7292 Nil!62104 s!2326 s!2326)))))

(declare-fun lt!2233105 () Unit!155068)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1596 (Regex!15309 Regex!15309 List!62228) Unit!155068)

(assert (=> b!5464960 (= lt!2233105 (lemmaFindConcatSeparationEquivalentToExists!1596 (reg!15638 r!7292) r!7292 s!2326))))

(declare-fun b!5464961 () Bool)

(declare-fun res!2328198 () Bool)

(assert (=> b!5464961 (=> res!2328198 e!3383645)))

(assert (=> b!5464961 (= res!2328198 (or ((_ is EmptyExpr!15309) r!7292) ((_ is EmptyLang!15309) r!7292) ((_ is ElementMatch!15309) r!7292) ((_ is Union!15309) r!7292) ((_ is Concat!24154) r!7292)))))

(declare-fun tp!1503118 () Bool)

(declare-fun setNonEmpty!35803 () Bool)

(declare-fun setElem!35803 () Context!9386)

(assert (=> setNonEmpty!35803 (= setRes!35803 (and tp!1503118 (inv!81519 setElem!35803) e!3383652))))

(declare-fun setRest!35803 () (InoxSet Context!9386))

(assert (=> setNonEmpty!35803 (= z!1189 ((_ map or) (store ((as const (Array Context!9386 Bool)) false) setElem!35803 true) setRest!35803))))

(declare-fun b!5464962 () Bool)

(declare-fun res!2328192 () Bool)

(assert (=> b!5464962 (=> res!2328192 e!3383645)))

(declare-fun generalisedUnion!1238 (List!62226) Regex!15309)

(declare-fun unfocusZipperList!751 (List!62227) List!62226)

(assert (=> b!5464962 (= res!2328192 (not (= r!7292 (generalisedUnion!1238 (unfocusZipperList!751 zl!343)))))))

(declare-fun b!5464963 () Bool)

(declare-fun tp!1503116 () Bool)

(assert (=> b!5464963 (= e!3383649 tp!1503116)))

(declare-fun b!5464964 () Bool)

(declare-fun tp!1503117 () Bool)

(assert (=> b!5464964 (= e!3383644 (and tp_is_empty!39871 tp!1503117))))

(assert (= (and start!572158 res!2328197) b!5464952))

(assert (= (and b!5464952 res!2328189) b!5464956))

(assert (= (and b!5464956 res!2328190) b!5464954))

(assert (= (and b!5464954 (not res!2328194)) b!5464958))

(assert (= (and b!5464958 (not res!2328200)) b!5464957))

(assert (= (and b!5464957 (not res!2328193)) b!5464950))

(assert (= (and b!5464950 (not res!2328196)) b!5464962))

(assert (= (and b!5464962 (not res!2328192)) b!5464961))

(assert (= (and b!5464961 (not res!2328198)) b!5464960))

(assert (= (and b!5464960 (not res!2328191)) b!5464959))

(assert (= (and b!5464960 (not res!2328195)) b!5464948))

(assert (= (and b!5464948 (not res!2328199)) b!5464955))

(assert (= (and start!572158 ((_ is ElementMatch!15309) r!7292)) b!5464946))

(assert (= (and start!572158 ((_ is Concat!24154) r!7292)) b!5464953))

(assert (= (and start!572158 ((_ is Star!15309) r!7292)) b!5464947))

(assert (= (and start!572158 ((_ is Union!15309) r!7292)) b!5464951))

(assert (= (and start!572158 condSetEmpty!35803) setIsEmpty!35803))

(assert (= (and start!572158 (not condSetEmpty!35803)) setNonEmpty!35803))

(assert (= setNonEmpty!35803 b!5464949))

(assert (= b!5464945 b!5464963))

(assert (= (and start!572158 ((_ is Cons!62103) zl!343)) b!5464945))

(assert (= (and start!572158 ((_ is Cons!62104) s!2326)) b!5464964))

(declare-fun m!6485016 () Bool)

(assert (=> b!5464962 m!6485016))

(assert (=> b!5464962 m!6485016))

(declare-fun m!6485018 () Bool)

(assert (=> b!5464962 m!6485018))

(declare-fun m!6485020 () Bool)

(assert (=> b!5464958 m!6485020))

(declare-fun m!6485022 () Bool)

(assert (=> b!5464955 m!6485022))

(declare-fun m!6485024 () Bool)

(assert (=> b!5464955 m!6485024))

(declare-fun m!6485026 () Bool)

(assert (=> b!5464955 m!6485026))

(declare-fun m!6485028 () Bool)

(assert (=> b!5464956 m!6485028))

(declare-fun m!6485030 () Bool)

(assert (=> b!5464960 m!6485030))

(declare-fun m!6485032 () Bool)

(assert (=> b!5464960 m!6485032))

(declare-fun m!6485034 () Bool)

(assert (=> b!5464960 m!6485034))

(declare-fun m!6485036 () Bool)

(assert (=> b!5464960 m!6485036))

(declare-fun m!6485038 () Bool)

(assert (=> b!5464960 m!6485038))

(assert (=> b!5464960 m!6485038))

(declare-fun m!6485040 () Bool)

(assert (=> b!5464960 m!6485040))

(declare-fun m!6485042 () Bool)

(assert (=> b!5464960 m!6485042))

(declare-fun m!6485044 () Bool)

(assert (=> b!5464960 m!6485044))

(assert (=> b!5464960 m!6485034))

(assert (=> b!5464960 m!6485034))

(declare-fun m!6485046 () Bool)

(assert (=> b!5464960 m!6485046))

(declare-fun m!6485048 () Bool)

(assert (=> b!5464957 m!6485048))

(declare-fun m!6485050 () Bool)

(assert (=> start!572158 m!6485050))

(declare-fun m!6485052 () Bool)

(assert (=> b!5464952 m!6485052))

(declare-fun m!6485054 () Bool)

(assert (=> b!5464954 m!6485054))

(declare-fun m!6485056 () Bool)

(assert (=> b!5464954 m!6485056))

(declare-fun m!6485058 () Bool)

(assert (=> b!5464954 m!6485058))

(declare-fun m!6485060 () Bool)

(assert (=> setNonEmpty!35803 m!6485060))

(declare-fun m!6485062 () Bool)

(assert (=> b!5464945 m!6485062))

(check-sat (not b!5464947) (not b!5464958) (not b!5464963) (not b!5464945) (not b!5464955) (not b!5464964) (not setNonEmpty!35803) (not b!5464951) (not b!5464957) (not b!5464960) (not b!5464954) (not b!5464953) (not b!5464962) (not b!5464952) (not b!5464956) tp_is_empty!39871 (not start!572158) (not b!5464949))
(check-sat)
