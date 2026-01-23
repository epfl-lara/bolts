; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566850 () Bool)

(assert start!566850)

(declare-fun b!5396067 () Bool)

(assert (=> b!5396067 true))

(assert (=> b!5396067 true))

(declare-fun lambda!280662 () Int)

(declare-fun lambda!280661 () Int)

(assert (=> b!5396067 (not (= lambda!280662 lambda!280661))))

(assert (=> b!5396067 true))

(assert (=> b!5396067 true))

(declare-fun b!5396076 () Bool)

(assert (=> b!5396076 true))

(declare-fun b!5396085 () Bool)

(assert (=> b!5396085 true))

(declare-fun b!5396054 () Bool)

(declare-fun e!3346060 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30580 0))(
  ( (C!30581 (val!24992 Int)) )
))
(declare-datatypes ((Regex!15155 0))(
  ( (ElementMatch!15155 (c!940347 C!30580)) (Concat!24000 (regOne!30822 Regex!15155) (regTwo!30822 Regex!15155)) (EmptyExpr!15155) (Star!15155 (reg!15484 Regex!15155)) (EmptyLang!15155) (Union!15155 (regOne!30823 Regex!15155) (regTwo!30823 Regex!15155)) )
))
(declare-datatypes ((List!61764 0))(
  ( (Nil!61640) (Cons!61640 (h!68088 Regex!15155) (t!374987 List!61764)) )
))
(declare-datatypes ((Context!9078 0))(
  ( (Context!9079 (exprs!5039 List!61764)) )
))
(declare-fun lt!2199201 () (InoxSet Context!9078))

(declare-datatypes ((List!61765 0))(
  ( (Nil!61641) (Cons!61641 (h!68089 C!30580) (t!374988 List!61765)) )
))
(declare-fun s!2326 () List!61765)

(declare-fun matchZipper!1399 ((InoxSet Context!9078) List!61765) Bool)

(assert (=> b!5396054 (= e!3346060 (matchZipper!1399 lt!2199201 (t!374988 s!2326)))))

(declare-fun b!5396055 () Bool)

(declare-fun e!3346066 () Bool)

(declare-fun tp_is_empty!39563 () Bool)

(assert (=> b!5396055 (= e!3346066 tp_is_empty!39563)))

(declare-fun b!5396056 () Bool)

(declare-fun e!3346073 () Bool)

(declare-fun e!3346076 () Bool)

(assert (=> b!5396056 (= e!3346073 e!3346076)))

(declare-fun res!2293562 () Bool)

(assert (=> b!5396056 (=> res!2293562 e!3346076)))

(declare-fun e!3346063 () Bool)

(assert (=> b!5396056 (= res!2293562 e!3346063)))

(declare-fun res!2293553 () Bool)

(assert (=> b!5396056 (=> (not res!2293553) (not e!3346063))))

(declare-fun lt!2199179 () Bool)

(assert (=> b!5396056 (= res!2293553 (not lt!2199179))))

(declare-fun lt!2199184 () (InoxSet Context!9078))

(assert (=> b!5396056 (= lt!2199179 (matchZipper!1399 lt!2199184 (t!374988 s!2326)))))

(declare-fun b!5396057 () Bool)

(declare-fun res!2293532 () Bool)

(declare-fun e!3346071 () Bool)

(assert (=> b!5396057 (=> res!2293532 e!3346071)))

(declare-fun r!7292 () Regex!15155)

(declare-datatypes ((List!61766 0))(
  ( (Nil!61642) (Cons!61642 (h!68090 Context!9078) (t!374989 List!61766)) )
))
(declare-fun zl!343 () List!61766)

(declare-fun generalisedUnion!1084 (List!61764) Regex!15155)

(declare-fun unfocusZipperList!597 (List!61766) List!61764)

(assert (=> b!5396057 (= res!2293532 (not (= r!7292 (generalisedUnion!1084 (unfocusZipperList!597 zl!343)))))))

(declare-fun res!2293551 () Bool)

(declare-fun e!3346067 () Bool)

(assert (=> start!566850 (=> (not res!2293551) (not e!3346067))))

(declare-fun validRegex!6891 (Regex!15155) Bool)

(assert (=> start!566850 (= res!2293551 (validRegex!6891 r!7292))))

(assert (=> start!566850 e!3346067))

(assert (=> start!566850 e!3346066))

(declare-fun condSetEmpty!35093 () Bool)

(declare-fun z!1189 () (InoxSet Context!9078))

(assert (=> start!566850 (= condSetEmpty!35093 (= z!1189 ((as const (Array Context!9078 Bool)) false)))))

(declare-fun setRes!35093 () Bool)

(assert (=> start!566850 setRes!35093))

(declare-fun e!3346078 () Bool)

(assert (=> start!566850 e!3346078))

(declare-fun e!3346083 () Bool)

(assert (=> start!566850 e!3346083))

(declare-fun b!5396058 () Bool)

(declare-fun e!3346070 () Bool)

(declare-fun e!3346077 () Bool)

(assert (=> b!5396058 (= e!3346070 e!3346077)))

(declare-fun res!2293559 () Bool)

(assert (=> b!5396058 (=> res!2293559 e!3346077)))

(declare-fun lt!2199181 () (InoxSet Context!9078))

(assert (=> b!5396058 (= res!2293559 (not (= lt!2199184 lt!2199181)))))

(declare-fun lt!2199219 () Context!9078)

(declare-fun derivationStepZipperDown!603 (Regex!15155 Context!9078 C!30580) (InoxSet Context!9078))

(assert (=> b!5396058 (= lt!2199181 (derivationStepZipperDown!603 (reg!15484 (regOne!30822 r!7292)) lt!2199219 (h!68089 s!2326)))))

(declare-fun lt!2199187 () List!61764)

(assert (=> b!5396058 (= lt!2199219 (Context!9079 lt!2199187))))

(declare-fun lt!2199176 () Regex!15155)

(assert (=> b!5396058 (= lt!2199187 (Cons!61640 lt!2199176 (t!374987 (exprs!5039 (h!68090 zl!343)))))))

(assert (=> b!5396058 (= lt!2199176 (Star!15155 (reg!15484 (regOne!30822 r!7292))))))

(declare-fun b!5396059 () Bool)

(declare-fun res!2293543 () Bool)

(assert (=> b!5396059 (=> res!2293543 e!3346071)))

(get-info :version)

(assert (=> b!5396059 (= res!2293543 (or ((_ is EmptyExpr!15155) r!7292) ((_ is EmptyLang!15155) r!7292) ((_ is ElementMatch!15155) r!7292) ((_ is Union!15155) r!7292) (not ((_ is Concat!24000) r!7292))))))

(declare-fun b!5396060 () Bool)

(declare-fun res!2293564 () Bool)

(declare-fun e!3346081 () Bool)

(assert (=> b!5396060 (=> res!2293564 e!3346081)))

(declare-fun lt!2199209 () (InoxSet Context!9078))

(declare-datatypes ((tuple2!64708 0))(
  ( (tuple2!64709 (_1!35657 List!61765) (_2!35657 List!61765)) )
))
(declare-fun lt!2199175 () tuple2!64708)

(assert (=> b!5396060 (= res!2293564 (not (matchZipper!1399 lt!2199209 (_1!35657 lt!2199175))))))

(declare-fun b!5396061 () Bool)

(declare-fun tp!1493665 () Bool)

(assert (=> b!5396061 (= e!3346083 (and tp_is_empty!39563 tp!1493665))))

(declare-fun b!5396062 () Bool)

(declare-fun e!3346062 () Bool)

(declare-fun e!3346080 () Bool)

(assert (=> b!5396062 (= e!3346062 e!3346080)))

(declare-fun res!2293557 () Bool)

(assert (=> b!5396062 (=> res!2293557 e!3346080)))

(declare-fun lt!2199217 () Bool)

(declare-fun lt!2199183 () (InoxSet Context!9078))

(assert (=> b!5396062 (= res!2293557 (not (= lt!2199217 (matchZipper!1399 lt!2199183 (t!374988 s!2326)))))))

(declare-fun lt!2199208 () (InoxSet Context!9078))

(assert (=> b!5396062 (= lt!2199217 (matchZipper!1399 lt!2199208 s!2326))))

(declare-fun b!5396063 () Bool)

(declare-fun e!3346084 () Bool)

(assert (=> b!5396063 (= e!3346080 e!3346084)))

(declare-fun res!2293538 () Bool)

(assert (=> b!5396063 (=> res!2293538 e!3346084)))

(declare-fun lt!2199216 () Regex!15155)

(assert (=> b!5396063 (= res!2293538 (not (= r!7292 lt!2199216)))))

(assert (=> b!5396063 (= lt!2199216 (Concat!24000 lt!2199176 (regTwo!30822 r!7292)))))

(declare-fun e!3346069 () Bool)

(declare-fun b!5396064 () Bool)

(declare-fun tp!1493664 () Bool)

(declare-fun inv!81134 (Context!9078) Bool)

(assert (=> b!5396064 (= e!3346078 (and (inv!81134 (h!68090 zl!343)) e!3346069 tp!1493664))))

(declare-fun b!5396065 () Bool)

(declare-fun res!2293536 () Bool)

(assert (=> b!5396065 (=> res!2293536 e!3346076)))

(assert (=> b!5396065 (= res!2293536 (or (not lt!2199179) (not lt!2199217)))))

(declare-fun b!5396066 () Bool)

(declare-fun res!2293546 () Bool)

(assert (=> b!5396066 (=> res!2293546 e!3346080)))

(declare-fun lt!2199213 () Regex!15155)

(assert (=> b!5396066 (= res!2293546 (not (= lt!2199213 r!7292)))))

(declare-fun setElem!35093 () Context!9078)

(declare-fun e!3346064 () Bool)

(declare-fun tp!1493663 () Bool)

(declare-fun setNonEmpty!35093 () Bool)

(assert (=> setNonEmpty!35093 (= setRes!35093 (and tp!1493663 (inv!81134 setElem!35093) e!3346064))))

(declare-fun setRest!35093 () (InoxSet Context!9078))

(assert (=> setNonEmpty!35093 (= z!1189 ((_ map or) (store ((as const (Array Context!9078 Bool)) false) setElem!35093 true) setRest!35093))))

(declare-fun e!3346082 () Bool)

(assert (=> b!5396067 (= e!3346071 e!3346082)))

(declare-fun res!2293533 () Bool)

(assert (=> b!5396067 (=> res!2293533 e!3346082)))

(declare-fun lt!2199177 () Bool)

(declare-fun lt!2199214 () Bool)

(assert (=> b!5396067 (= res!2293533 (or (not (= lt!2199214 lt!2199177)) ((_ is Nil!61641) s!2326)))))

(declare-fun Exists!2336 (Int) Bool)

(assert (=> b!5396067 (= (Exists!2336 lambda!280661) (Exists!2336 lambda!280662))))

(declare-datatypes ((Unit!154142 0))(
  ( (Unit!154143) )
))
(declare-fun lt!2199194 () Unit!154142)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!990 (Regex!15155 Regex!15155 List!61765) Unit!154142)

(assert (=> b!5396067 (= lt!2199194 (lemmaExistCutMatchRandMatchRSpecEquivalent!990 (regOne!30822 r!7292) (regTwo!30822 r!7292) s!2326))))

(assert (=> b!5396067 (= lt!2199177 (Exists!2336 lambda!280661))))

(declare-datatypes ((Option!15266 0))(
  ( (None!15265) (Some!15265 (v!51294 tuple2!64708)) )
))
(declare-fun isDefined!11969 (Option!15266) Bool)

(declare-fun findConcatSeparation!1680 (Regex!15155 Regex!15155 List!61765 List!61765 List!61765) Option!15266)

(assert (=> b!5396067 (= lt!2199177 (isDefined!11969 (findConcatSeparation!1680 (regOne!30822 r!7292) (regTwo!30822 r!7292) Nil!61641 s!2326 s!2326)))))

(declare-fun lt!2199196 () Unit!154142)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1444 (Regex!15155 Regex!15155 List!61765) Unit!154142)

(assert (=> b!5396067 (= lt!2199196 (lemmaFindConcatSeparationEquivalentToExists!1444 (regOne!30822 r!7292) (regTwo!30822 r!7292) s!2326))))

(declare-fun b!5396068 () Bool)

(declare-fun e!3346061 () Unit!154142)

(declare-fun Unit!154144 () Unit!154142)

(assert (=> b!5396068 (= e!3346061 Unit!154144)))

(declare-fun lt!2199189 () Unit!154142)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!392 ((InoxSet Context!9078) (InoxSet Context!9078) List!61765) Unit!154142)

(assert (=> b!5396068 (= lt!2199189 (lemmaZipperConcatMatchesSameAsBothZippers!392 lt!2199184 lt!2199201 (t!374988 s!2326)))))

(declare-fun res!2293537 () Bool)

(assert (=> b!5396068 (= res!2293537 (matchZipper!1399 lt!2199184 (t!374988 s!2326)))))

(assert (=> b!5396068 (=> res!2293537 e!3346060)))

(assert (=> b!5396068 (= (matchZipper!1399 ((_ map or) lt!2199184 lt!2199201) (t!374988 s!2326)) e!3346060)))

(declare-fun b!5396069 () Bool)

(declare-fun e!3346072 () Bool)

(assert (=> b!5396069 (= e!3346072 (not e!3346071))))

(declare-fun res!2293548 () Bool)

(assert (=> b!5396069 (=> res!2293548 e!3346071)))

(assert (=> b!5396069 (= res!2293548 (not ((_ is Cons!61642) zl!343)))))

(declare-fun matchRSpec!2258 (Regex!15155 List!61765) Bool)

(assert (=> b!5396069 (= lt!2199214 (matchRSpec!2258 r!7292 s!2326))))

(declare-fun matchR!7340 (Regex!15155 List!61765) Bool)

(assert (=> b!5396069 (= lt!2199214 (matchR!7340 r!7292 s!2326))))

(declare-fun lt!2199190 () Unit!154142)

(declare-fun mainMatchTheorem!2258 (Regex!15155 List!61765) Unit!154142)

(assert (=> b!5396069 (= lt!2199190 (mainMatchTheorem!2258 r!7292 s!2326))))

(declare-fun b!5396070 () Bool)

(declare-fun e!3346079 () Bool)

(declare-fun e!3346074 () Bool)

(assert (=> b!5396070 (= e!3346079 e!3346074)))

(declare-fun res!2293544 () Bool)

(assert (=> b!5396070 (=> res!2293544 e!3346074)))

(declare-fun lt!2199222 () List!61766)

(declare-fun unfocusZipper!897 (List!61766) Regex!15155)

(assert (=> b!5396070 (= res!2293544 (not (= (unfocusZipper!897 lt!2199222) lt!2199216)))))

(assert (=> b!5396070 (= lt!2199222 (Cons!61642 lt!2199219 Nil!61642))))

(declare-fun setIsEmpty!35093 () Bool)

(assert (=> setIsEmpty!35093 setRes!35093))

(declare-fun b!5396071 () Bool)

(declare-fun res!2293555 () Bool)

(assert (=> b!5396071 (=> res!2293555 e!3346073)))

(assert (=> b!5396071 (= res!2293555 (not (matchZipper!1399 z!1189 s!2326)))))

(declare-fun b!5396072 () Bool)

(assert (=> b!5396072 (= e!3346063 (not (matchZipper!1399 lt!2199201 (t!374988 s!2326))))))

(declare-fun b!5396073 () Bool)

(assert (=> b!5396073 (= e!3346074 e!3346073)))

(declare-fun res!2293534 () Bool)

(assert (=> b!5396073 (=> res!2293534 e!3346073)))

(assert (=> b!5396073 (= res!2293534 lt!2199214)))

(declare-fun lt!2199203 () Regex!15155)

(assert (=> b!5396073 (= (matchR!7340 lt!2199203 s!2326) (matchRSpec!2258 lt!2199203 s!2326))))

(declare-fun lt!2199210 () Unit!154142)

(assert (=> b!5396073 (= lt!2199210 (mainMatchTheorem!2258 lt!2199203 s!2326))))

(declare-fun b!5396074 () Bool)

(declare-fun e!3346075 () Bool)

(assert (=> b!5396074 (= e!3346075 e!3346081)))

(declare-fun res!2293556 () Bool)

(assert (=> b!5396074 (=> res!2293556 e!3346081)))

(declare-fun lt!2199200 () List!61765)

(assert (=> b!5396074 (= res!2293556 (not (= s!2326 lt!2199200)))))

(declare-fun ++!13483 (List!61765 List!61765) List!61765)

(assert (=> b!5396074 (= lt!2199200 (++!13483 (_1!35657 lt!2199175) (_2!35657 lt!2199175)))))

(declare-fun lt!2199186 () Option!15266)

(declare-fun get!21235 (Option!15266) tuple2!64708)

(assert (=> b!5396074 (= lt!2199175 (get!21235 lt!2199186))))

(assert (=> b!5396074 (isDefined!11969 lt!2199186)))

(declare-fun lt!2199185 () (InoxSet Context!9078))

(declare-fun findConcatSeparationZippers!12 ((InoxSet Context!9078) (InoxSet Context!9078) List!61765 List!61765 List!61765) Option!15266)

(assert (=> b!5396074 (= lt!2199186 (findConcatSeparationZippers!12 lt!2199209 lt!2199185 Nil!61641 s!2326 s!2326))))

(declare-fun lt!2199195 () Unit!154142)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!12 ((InoxSet Context!9078) Context!9078 List!61765) Unit!154142)

(assert (=> b!5396074 (= lt!2199195 (lemmaConcatZipperMatchesStringThenFindConcatDefined!12 lt!2199209 lt!2199219 s!2326))))

(declare-fun b!5396075 () Bool)

(assert (=> b!5396075 (= e!3346067 e!3346072)))

(declare-fun res!2293539 () Bool)

(assert (=> b!5396075 (=> (not res!2293539) (not e!3346072))))

(assert (=> b!5396075 (= res!2293539 (= r!7292 lt!2199213))))

(assert (=> b!5396075 (= lt!2199213 (unfocusZipper!897 zl!343))))

(assert (=> b!5396076 (= e!3346082 e!3346070)))

(declare-fun res!2293558 () Bool)

(assert (=> b!5396076 (=> res!2293558 e!3346070)))

(assert (=> b!5396076 (= res!2293558 (or (and ((_ is ElementMatch!15155) (regOne!30822 r!7292)) (= (c!940347 (regOne!30822 r!7292)) (h!68089 s!2326))) ((_ is Union!15155) (regOne!30822 r!7292))))))

(declare-fun lt!2199198 () Unit!154142)

(assert (=> b!5396076 (= lt!2199198 e!3346061)))

(declare-fun c!940346 () Bool)

(declare-fun lt!2199193 () Bool)

(assert (=> b!5396076 (= c!940346 lt!2199193)))

(declare-fun nullable!5324 (Regex!15155) Bool)

(assert (=> b!5396076 (= lt!2199193 (nullable!5324 (h!68088 (exprs!5039 (h!68090 zl!343)))))))

(declare-fun lambda!280663 () Int)

(declare-fun flatMap!882 ((InoxSet Context!9078) Int) (InoxSet Context!9078))

(declare-fun derivationStepZipperUp!527 (Context!9078 C!30580) (InoxSet Context!9078))

(assert (=> b!5396076 (= (flatMap!882 z!1189 lambda!280663) (derivationStepZipperUp!527 (h!68090 zl!343) (h!68089 s!2326)))))

(declare-fun lt!2199215 () Unit!154142)

(declare-fun lemmaFlatMapOnSingletonSet!414 ((InoxSet Context!9078) Context!9078 Int) Unit!154142)

(assert (=> b!5396076 (= lt!2199215 (lemmaFlatMapOnSingletonSet!414 z!1189 (h!68090 zl!343) lambda!280663))))

(declare-fun lt!2199220 () Context!9078)

(assert (=> b!5396076 (= lt!2199201 (derivationStepZipperUp!527 lt!2199220 (h!68089 s!2326)))))

(assert (=> b!5396076 (= lt!2199184 (derivationStepZipperDown!603 (h!68088 (exprs!5039 (h!68090 zl!343))) lt!2199220 (h!68089 s!2326)))))

(assert (=> b!5396076 (= lt!2199220 (Context!9079 (t!374987 (exprs!5039 (h!68090 zl!343)))))))

(declare-fun lt!2199202 () (InoxSet Context!9078))

(assert (=> b!5396076 (= lt!2199202 (derivationStepZipperUp!527 (Context!9079 (Cons!61640 (h!68088 (exprs!5039 (h!68090 zl!343))) (t!374987 (exprs!5039 (h!68090 zl!343))))) (h!68089 s!2326)))))

(declare-fun b!5396077 () Bool)

(declare-fun tp!1493660 () Bool)

(declare-fun tp!1493656 () Bool)

(assert (=> b!5396077 (= e!3346066 (and tp!1493660 tp!1493656))))

(declare-fun b!5396078 () Bool)

(assert (=> b!5396078 (= e!3346077 e!3346062)))

(declare-fun res!2293561 () Bool)

(assert (=> b!5396078 (=> res!2293561 e!3346062)))

(assert (=> b!5396078 (= res!2293561 (not (= lt!2199183 lt!2199181)))))

(declare-fun lt!2199182 () Context!9078)

(assert (=> b!5396078 (= (flatMap!882 lt!2199208 lambda!280663) (derivationStepZipperUp!527 lt!2199182 (h!68089 s!2326)))))

(declare-fun lt!2199205 () Unit!154142)

(assert (=> b!5396078 (= lt!2199205 (lemmaFlatMapOnSingletonSet!414 lt!2199208 lt!2199182 lambda!280663))))

(declare-fun lt!2199192 () (InoxSet Context!9078))

(assert (=> b!5396078 (= lt!2199192 (derivationStepZipperUp!527 lt!2199182 (h!68089 s!2326)))))

(declare-fun derivationStepZipper!1394 ((InoxSet Context!9078) C!30580) (InoxSet Context!9078))

(assert (=> b!5396078 (= lt!2199183 (derivationStepZipper!1394 lt!2199208 (h!68089 s!2326)))))

(assert (=> b!5396078 (= lt!2199208 (store ((as const (Array Context!9078 Bool)) false) lt!2199182 true))))

(assert (=> b!5396078 (= lt!2199182 (Context!9079 (Cons!61640 (reg!15484 (regOne!30822 r!7292)) lt!2199187)))))

(declare-fun b!5396079 () Bool)

(declare-fun res!2293547 () Bool)

(assert (=> b!5396079 (=> (not res!2293547) (not e!3346067))))

(declare-fun toList!8939 ((InoxSet Context!9078)) List!61766)

(assert (=> b!5396079 (= res!2293547 (= (toList!8939 z!1189) zl!343))))

(declare-fun b!5396080 () Bool)

(declare-fun res!2293550 () Bool)

(assert (=> b!5396080 (=> res!2293550 e!3346073)))

(assert (=> b!5396080 (= res!2293550 (not lt!2199193))))

(declare-fun b!5396081 () Bool)

(declare-fun e!3346065 () Bool)

(assert (=> b!5396081 (= e!3346065 (nullable!5324 (regOne!30822 (regOne!30822 r!7292))))))

(declare-fun b!5396082 () Bool)

(declare-fun res!2293549 () Bool)

(assert (=> b!5396082 (=> res!2293549 e!3346081)))

(assert (=> b!5396082 (= res!2293549 (not (matchZipper!1399 lt!2199185 (_2!35657 lt!2199175))))))

(declare-fun b!5396083 () Bool)

(declare-fun e!3346068 () Bool)

(assert (=> b!5396083 (= e!3346084 e!3346068)))

(declare-fun res!2293535 () Bool)

(assert (=> b!5396083 (=> res!2293535 e!3346068)))

(assert (=> b!5396083 (= res!2293535 (not (= (unfocusZipper!897 (Cons!61642 lt!2199182 Nil!61642)) lt!2199203)))))

(assert (=> b!5396083 (= lt!2199203 (Concat!24000 (reg!15484 (regOne!30822 r!7292)) lt!2199216))))

(declare-fun b!5396084 () Bool)

(declare-fun tp!1493658 () Bool)

(declare-fun tp!1493662 () Bool)

(assert (=> b!5396084 (= e!3346066 (and tp!1493658 tp!1493662))))

(assert (=> b!5396085 (= e!3346076 e!3346075)))

(declare-fun res!2293560 () Bool)

(assert (=> b!5396085 (=> res!2293560 e!3346075)))

(declare-fun appendTo!14 ((InoxSet Context!9078) Context!9078) (InoxSet Context!9078))

(assert (=> b!5396085 (= res!2293560 (not (= (appendTo!14 lt!2199209 lt!2199219) lt!2199208)))))

(declare-fun lt!2199221 () List!61764)

(declare-fun lambda!280664 () Int)

(declare-fun map!14117 ((InoxSet Context!9078) Int) (InoxSet Context!9078))

(declare-fun ++!13484 (List!61764 List!61764) List!61764)

(assert (=> b!5396085 (= (map!14117 lt!2199209 lambda!280664) (store ((as const (Array Context!9078 Bool)) false) (Context!9079 (++!13484 lt!2199221 lt!2199187)) true))))

(declare-fun lambda!280665 () Int)

(declare-fun lt!2199204 () Unit!154142)

(declare-fun lemmaConcatPreservesForall!180 (List!61764 List!61764 Int) Unit!154142)

(assert (=> b!5396085 (= lt!2199204 (lemmaConcatPreservesForall!180 lt!2199221 lt!2199187 lambda!280665))))

(declare-fun lt!2199211 () Unit!154142)

(declare-fun lt!2199180 () Context!9078)

(declare-fun lemmaMapOnSingletonSet!14 ((InoxSet Context!9078) Context!9078 Int) Unit!154142)

(assert (=> b!5396085 (= lt!2199211 (lemmaMapOnSingletonSet!14 lt!2199209 lt!2199180 lambda!280664))))

(declare-fun b!5396086 () Bool)

(assert (=> b!5396086 (= e!3346081 (validRegex!6891 (reg!15484 (regOne!30822 r!7292))))))

(assert (=> b!5396086 (matchR!7340 lt!2199216 (_2!35657 lt!2199175))))

(declare-fun lt!2199207 () Unit!154142)

(declare-fun theoremZipperRegexEquiv!469 ((InoxSet Context!9078) List!61766 Regex!15155 List!61765) Unit!154142)

(assert (=> b!5396086 (= lt!2199207 (theoremZipperRegexEquiv!469 lt!2199185 lt!2199222 lt!2199216 (_2!35657 lt!2199175)))))

(assert (=> b!5396086 (matchR!7340 (reg!15484 (regOne!30822 r!7292)) (_1!35657 lt!2199175))))

(declare-fun lt!2199206 () List!61766)

(declare-fun lt!2199199 () Unit!154142)

(assert (=> b!5396086 (= lt!2199199 (theoremZipperRegexEquiv!469 lt!2199209 lt!2199206 (reg!15484 (regOne!30822 r!7292)) (_1!35657 lt!2199175)))))

(assert (=> b!5396086 (matchZipper!1399 (store ((as const (Array Context!9078 Bool)) false) (Context!9079 (++!13484 lt!2199221 lt!2199187)) true) lt!2199200)))

(declare-fun lt!2199218 () Unit!154142)

(assert (=> b!5396086 (= lt!2199218 (lemmaConcatPreservesForall!180 lt!2199221 lt!2199187 lambda!280665))))

(declare-fun lt!2199197 () Unit!154142)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!28 (Context!9078 Context!9078 List!61765 List!61765) Unit!154142)

(assert (=> b!5396086 (= lt!2199197 (lemmaConcatenateContextMatchesConcatOfStrings!28 lt!2199180 lt!2199219 (_1!35657 lt!2199175) (_2!35657 lt!2199175)))))

(declare-fun b!5396087 () Bool)

(assert (=> b!5396087 (= e!3346068 e!3346079)))

(declare-fun res!2293563 () Bool)

(assert (=> b!5396087 (=> res!2293563 e!3346079)))

(assert (=> b!5396087 (= res!2293563 (not (= (unfocusZipper!897 lt!2199206) (reg!15484 (regOne!30822 r!7292)))))))

(assert (=> b!5396087 (= lt!2199206 (Cons!61642 lt!2199180 Nil!61642))))

(assert (=> b!5396087 (= (flatMap!882 lt!2199185 lambda!280663) (derivationStepZipperUp!527 lt!2199219 (h!68089 s!2326)))))

(declare-fun lt!2199188 () Unit!154142)

(assert (=> b!5396087 (= lt!2199188 (lemmaFlatMapOnSingletonSet!414 lt!2199185 lt!2199219 lambda!280663))))

(assert (=> b!5396087 (= (flatMap!882 lt!2199209 lambda!280663) (derivationStepZipperUp!527 lt!2199180 (h!68089 s!2326)))))

(declare-fun lt!2199212 () Unit!154142)

(assert (=> b!5396087 (= lt!2199212 (lemmaFlatMapOnSingletonSet!414 lt!2199209 lt!2199180 lambda!280663))))

(declare-fun lt!2199178 () (InoxSet Context!9078))

(assert (=> b!5396087 (= lt!2199178 (derivationStepZipperUp!527 lt!2199219 (h!68089 s!2326)))))

(declare-fun lt!2199191 () (InoxSet Context!9078))

(assert (=> b!5396087 (= lt!2199191 (derivationStepZipperUp!527 lt!2199180 (h!68089 s!2326)))))

(assert (=> b!5396087 (= lt!2199185 (store ((as const (Array Context!9078 Bool)) false) lt!2199219 true))))

(assert (=> b!5396087 (= lt!2199209 (store ((as const (Array Context!9078 Bool)) false) lt!2199180 true))))

(assert (=> b!5396087 (= lt!2199180 (Context!9079 lt!2199221))))

(assert (=> b!5396087 (= lt!2199221 (Cons!61640 (reg!15484 (regOne!30822 r!7292)) Nil!61640))))

(declare-fun b!5396088 () Bool)

(declare-fun tp!1493657 () Bool)

(assert (=> b!5396088 (= e!3346069 tp!1493657)))

(declare-fun b!5396089 () Bool)

(declare-fun res!2293565 () Bool)

(assert (=> b!5396089 (=> res!2293565 e!3346071)))

(declare-fun generalisedConcat!824 (List!61764) Regex!15155)

(assert (=> b!5396089 (= res!2293565 (not (= r!7292 (generalisedConcat!824 (exprs!5039 (h!68090 zl!343))))))))

(declare-fun b!5396090 () Bool)

(declare-fun res!2293541 () Bool)

(assert (=> b!5396090 (=> res!2293541 e!3346071)))

(declare-fun isEmpty!33633 (List!61766) Bool)

(assert (=> b!5396090 (= res!2293541 (not (isEmpty!33633 (t!374989 zl!343))))))

(declare-fun b!5396091 () Bool)

(declare-fun tp!1493659 () Bool)

(assert (=> b!5396091 (= e!3346064 tp!1493659)))

(declare-fun b!5396092 () Bool)

(declare-fun res!2293545 () Bool)

(assert (=> b!5396092 (=> res!2293545 e!3346071)))

(assert (=> b!5396092 (= res!2293545 (not ((_ is Cons!61640) (exprs!5039 (h!68090 zl!343)))))))

(declare-fun b!5396093 () Bool)

(declare-fun Unit!154145 () Unit!154142)

(assert (=> b!5396093 (= e!3346061 Unit!154145)))

(declare-fun b!5396094 () Bool)

(declare-fun res!2293554 () Bool)

(assert (=> b!5396094 (=> res!2293554 e!3346082)))

(declare-fun isEmpty!33634 (List!61764) Bool)

(assert (=> b!5396094 (= res!2293554 (isEmpty!33634 (t!374987 (exprs!5039 (h!68090 zl!343)))))))

(declare-fun b!5396095 () Bool)

(declare-fun res!2293552 () Bool)

(assert (=> b!5396095 (=> res!2293552 e!3346070)))

(assert (=> b!5396095 (= res!2293552 e!3346065)))

(declare-fun res!2293542 () Bool)

(assert (=> b!5396095 (=> (not res!2293542) (not e!3346065))))

(assert (=> b!5396095 (= res!2293542 ((_ is Concat!24000) (regOne!30822 r!7292)))))

(declare-fun b!5396096 () Bool)

(declare-fun res!2293540 () Bool)

(assert (=> b!5396096 (=> res!2293540 e!3346070)))

(assert (=> b!5396096 (= res!2293540 (or ((_ is Concat!24000) (regOne!30822 r!7292)) (not ((_ is Star!15155) (regOne!30822 r!7292)))))))

(declare-fun b!5396097 () Bool)

(declare-fun tp!1493661 () Bool)

(assert (=> b!5396097 (= e!3346066 tp!1493661)))

(assert (= (and start!566850 res!2293551) b!5396079))

(assert (= (and b!5396079 res!2293547) b!5396075))

(assert (= (and b!5396075 res!2293539) b!5396069))

(assert (= (and b!5396069 (not res!2293548)) b!5396090))

(assert (= (and b!5396090 (not res!2293541)) b!5396089))

(assert (= (and b!5396089 (not res!2293565)) b!5396092))

(assert (= (and b!5396092 (not res!2293545)) b!5396057))

(assert (= (and b!5396057 (not res!2293532)) b!5396059))

(assert (= (and b!5396059 (not res!2293543)) b!5396067))

(assert (= (and b!5396067 (not res!2293533)) b!5396094))

(assert (= (and b!5396094 (not res!2293554)) b!5396076))

(assert (= (and b!5396076 c!940346) b!5396068))

(assert (= (and b!5396076 (not c!940346)) b!5396093))

(assert (= (and b!5396068 (not res!2293537)) b!5396054))

(assert (= (and b!5396076 (not res!2293558)) b!5396095))

(assert (= (and b!5396095 res!2293542) b!5396081))

(assert (= (and b!5396095 (not res!2293552)) b!5396096))

(assert (= (and b!5396096 (not res!2293540)) b!5396058))

(assert (= (and b!5396058 (not res!2293559)) b!5396078))

(assert (= (and b!5396078 (not res!2293561)) b!5396062))

(assert (= (and b!5396062 (not res!2293557)) b!5396066))

(assert (= (and b!5396066 (not res!2293546)) b!5396063))

(assert (= (and b!5396063 (not res!2293538)) b!5396083))

(assert (= (and b!5396083 (not res!2293535)) b!5396087))

(assert (= (and b!5396087 (not res!2293563)) b!5396070))

(assert (= (and b!5396070 (not res!2293544)) b!5396073))

(assert (= (and b!5396073 (not res!2293534)) b!5396071))

(assert (= (and b!5396071 (not res!2293555)) b!5396080))

(assert (= (and b!5396080 (not res!2293550)) b!5396056))

(assert (= (and b!5396056 res!2293553) b!5396072))

(assert (= (and b!5396056 (not res!2293562)) b!5396065))

(assert (= (and b!5396065 (not res!2293536)) b!5396085))

(assert (= (and b!5396085 (not res!2293560)) b!5396074))

(assert (= (and b!5396074 (not res!2293556)) b!5396060))

(assert (= (and b!5396060 (not res!2293564)) b!5396082))

(assert (= (and b!5396082 (not res!2293549)) b!5396086))

(assert (= (and start!566850 ((_ is ElementMatch!15155) r!7292)) b!5396055))

(assert (= (and start!566850 ((_ is Concat!24000) r!7292)) b!5396077))

(assert (= (and start!566850 ((_ is Star!15155) r!7292)) b!5396097))

(assert (= (and start!566850 ((_ is Union!15155) r!7292)) b!5396084))

(assert (= (and start!566850 condSetEmpty!35093) setIsEmpty!35093))

(assert (= (and start!566850 (not condSetEmpty!35093)) setNonEmpty!35093))

(assert (= setNonEmpty!35093 b!5396091))

(assert (= b!5396064 b!5396088))

(assert (= (and start!566850 ((_ is Cons!61642) zl!343)) b!5396064))

(assert (= (and start!566850 ((_ is Cons!61641) s!2326)) b!5396061))

(declare-fun m!6420964 () Bool)

(assert (=> b!5396089 m!6420964))

(declare-fun m!6420966 () Bool)

(assert (=> b!5396083 m!6420966))

(declare-fun m!6420968 () Bool)

(assert (=> b!5396067 m!6420968))

(declare-fun m!6420970 () Bool)

(assert (=> b!5396067 m!6420970))

(declare-fun m!6420972 () Bool)

(assert (=> b!5396067 m!6420972))

(declare-fun m!6420974 () Bool)

(assert (=> b!5396067 m!6420974))

(assert (=> b!5396067 m!6420972))

(declare-fun m!6420976 () Bool)

(assert (=> b!5396067 m!6420976))

(assert (=> b!5396067 m!6420968))

(declare-fun m!6420978 () Bool)

(assert (=> b!5396067 m!6420978))

(declare-fun m!6420980 () Bool)

(assert (=> b!5396082 m!6420980))

(declare-fun m!6420982 () Bool)

(assert (=> b!5396056 m!6420982))

(declare-fun m!6420984 () Bool)

(assert (=> b!5396090 m!6420984))

(declare-fun m!6420986 () Bool)

(assert (=> b!5396064 m!6420986))

(declare-fun m!6420988 () Bool)

(assert (=> b!5396057 m!6420988))

(assert (=> b!5396057 m!6420988))

(declare-fun m!6420990 () Bool)

(assert (=> b!5396057 m!6420990))

(declare-fun m!6420992 () Bool)

(assert (=> b!5396086 m!6420992))

(declare-fun m!6420994 () Bool)

(assert (=> b!5396086 m!6420994))

(declare-fun m!6420996 () Bool)

(assert (=> b!5396086 m!6420996))

(declare-fun m!6420998 () Bool)

(assert (=> b!5396086 m!6420998))

(assert (=> b!5396086 m!6420996))

(declare-fun m!6421000 () Bool)

(assert (=> b!5396086 m!6421000))

(declare-fun m!6421002 () Bool)

(assert (=> b!5396086 m!6421002))

(declare-fun m!6421004 () Bool)

(assert (=> b!5396086 m!6421004))

(declare-fun m!6421006 () Bool)

(assert (=> b!5396086 m!6421006))

(declare-fun m!6421008 () Bool)

(assert (=> b!5396086 m!6421008))

(declare-fun m!6421010 () Bool)

(assert (=> b!5396086 m!6421010))

(declare-fun m!6421012 () Bool)

(assert (=> setNonEmpty!35093 m!6421012))

(declare-fun m!6421014 () Bool)

(assert (=> b!5396076 m!6421014))

(declare-fun m!6421016 () Bool)

(assert (=> b!5396076 m!6421016))

(declare-fun m!6421018 () Bool)

(assert (=> b!5396076 m!6421018))

(declare-fun m!6421020 () Bool)

(assert (=> b!5396076 m!6421020))

(declare-fun m!6421022 () Bool)

(assert (=> b!5396076 m!6421022))

(declare-fun m!6421024 () Bool)

(assert (=> b!5396076 m!6421024))

(declare-fun m!6421026 () Bool)

(assert (=> b!5396076 m!6421026))

(declare-fun m!6421028 () Bool)

(assert (=> start!566850 m!6421028))

(declare-fun m!6421030 () Bool)

(assert (=> b!5396072 m!6421030))

(declare-fun m!6421032 () Bool)

(assert (=> b!5396062 m!6421032))

(declare-fun m!6421034 () Bool)

(assert (=> b!5396062 m!6421034))

(declare-fun m!6421036 () Bool)

(assert (=> b!5396070 m!6421036))

(declare-fun m!6421038 () Bool)

(assert (=> b!5396068 m!6421038))

(assert (=> b!5396068 m!6420982))

(declare-fun m!6421040 () Bool)

(assert (=> b!5396068 m!6421040))

(declare-fun m!6421042 () Bool)

(assert (=> b!5396073 m!6421042))

(declare-fun m!6421044 () Bool)

(assert (=> b!5396073 m!6421044))

(declare-fun m!6421046 () Bool)

(assert (=> b!5396073 m!6421046))

(declare-fun m!6421048 () Bool)

(assert (=> b!5396069 m!6421048))

(declare-fun m!6421050 () Bool)

(assert (=> b!5396069 m!6421050))

(declare-fun m!6421052 () Bool)

(assert (=> b!5396069 m!6421052))

(declare-fun m!6421054 () Bool)

(assert (=> b!5396085 m!6421054))

(declare-fun m!6421056 () Bool)

(assert (=> b!5396085 m!6421056))

(assert (=> b!5396085 m!6421008))

(assert (=> b!5396085 m!6420996))

(assert (=> b!5396085 m!6421002))

(declare-fun m!6421058 () Bool)

(assert (=> b!5396085 m!6421058))

(declare-fun m!6421060 () Bool)

(assert (=> b!5396081 m!6421060))

(declare-fun m!6421062 () Bool)

(assert (=> b!5396094 m!6421062))

(declare-fun m!6421064 () Bool)

(assert (=> b!5396058 m!6421064))

(declare-fun m!6421066 () Bool)

(assert (=> b!5396071 m!6421066))

(declare-fun m!6421068 () Bool)

(assert (=> b!5396078 m!6421068))

(declare-fun m!6421070 () Bool)

(assert (=> b!5396078 m!6421070))

(declare-fun m!6421072 () Bool)

(assert (=> b!5396078 m!6421072))

(declare-fun m!6421074 () Bool)

(assert (=> b!5396078 m!6421074))

(declare-fun m!6421076 () Bool)

(assert (=> b!5396078 m!6421076))

(declare-fun m!6421078 () Bool)

(assert (=> b!5396079 m!6421078))

(declare-fun m!6421080 () Bool)

(assert (=> b!5396075 m!6421080))

(declare-fun m!6421082 () Bool)

(assert (=> b!5396074 m!6421082))

(declare-fun m!6421084 () Bool)

(assert (=> b!5396074 m!6421084))

(declare-fun m!6421086 () Bool)

(assert (=> b!5396074 m!6421086))

(declare-fun m!6421088 () Bool)

(assert (=> b!5396074 m!6421088))

(declare-fun m!6421090 () Bool)

(assert (=> b!5396074 m!6421090))

(declare-fun m!6421092 () Bool)

(assert (=> b!5396087 m!6421092))

(declare-fun m!6421094 () Bool)

(assert (=> b!5396087 m!6421094))

(declare-fun m!6421096 () Bool)

(assert (=> b!5396087 m!6421096))

(declare-fun m!6421098 () Bool)

(assert (=> b!5396087 m!6421098))

(declare-fun m!6421100 () Bool)

(assert (=> b!5396087 m!6421100))

(declare-fun m!6421102 () Bool)

(assert (=> b!5396087 m!6421102))

(declare-fun m!6421104 () Bool)

(assert (=> b!5396087 m!6421104))

(declare-fun m!6421106 () Bool)

(assert (=> b!5396087 m!6421106))

(declare-fun m!6421108 () Bool)

(assert (=> b!5396087 m!6421108))

(declare-fun m!6421110 () Bool)

(assert (=> b!5396060 m!6421110))

(assert (=> b!5396054 m!6421030))

(check-sat (not b!5396067) (not start!566850) (not b!5396071) (not b!5396072) (not b!5396056) (not b!5396076) (not b!5396089) (not b!5396068) (not b!5396086) (not b!5396058) (not b!5396090) (not b!5396064) (not b!5396088) (not b!5396060) (not b!5396077) (not b!5396075) (not b!5396073) (not b!5396057) (not b!5396079) (not b!5396083) (not b!5396087) (not b!5396084) tp_is_empty!39563 (not setNonEmpty!35093) (not b!5396081) (not b!5396062) (not b!5396091) (not b!5396078) (not b!5396082) (not b!5396085) (not b!5396094) (not b!5396097) (not b!5396061) (not b!5396070) (not b!5396074) (not b!5396054) (not b!5396069))
(check-sat)
(get-model)

(declare-fun d!1724173 () Bool)

(declare-fun c!940350 () Bool)

(declare-fun isEmpty!33636 (List!61765) Bool)

(assert (=> d!1724173 (= c!940350 (isEmpty!33636 (t!374988 s!2326)))))

(declare-fun e!3346087 () Bool)

(assert (=> d!1724173 (= (matchZipper!1399 lt!2199201 (t!374988 s!2326)) e!3346087)))

(declare-fun b!5396110 () Bool)

(declare-fun nullableZipper!1428 ((InoxSet Context!9078)) Bool)

(assert (=> b!5396110 (= e!3346087 (nullableZipper!1428 lt!2199201))))

(declare-fun b!5396111 () Bool)

(declare-fun head!11574 (List!61765) C!30580)

(declare-fun tail!10671 (List!61765) List!61765)

(assert (=> b!5396111 (= e!3346087 (matchZipper!1399 (derivationStepZipper!1394 lt!2199201 (head!11574 (t!374988 s!2326))) (tail!10671 (t!374988 s!2326))))))

(assert (= (and d!1724173 c!940350) b!5396110))

(assert (= (and d!1724173 (not c!940350)) b!5396111))

(declare-fun m!6421112 () Bool)

(assert (=> d!1724173 m!6421112))

(declare-fun m!6421114 () Bool)

(assert (=> b!5396110 m!6421114))

(declare-fun m!6421116 () Bool)

(assert (=> b!5396111 m!6421116))

(assert (=> b!5396111 m!6421116))

(declare-fun m!6421118 () Bool)

(assert (=> b!5396111 m!6421118))

(declare-fun m!6421120 () Bool)

(assert (=> b!5396111 m!6421120))

(assert (=> b!5396111 m!6421118))

(assert (=> b!5396111 m!6421120))

(declare-fun m!6421122 () Bool)

(assert (=> b!5396111 m!6421122))

(assert (=> b!5396072 d!1724173))

(declare-fun bm!386172 () Bool)

(declare-fun call!386177 () Bool)

(assert (=> bm!386172 (= call!386177 (isEmpty!33636 s!2326))))

(declare-fun b!5396204 () Bool)

(declare-fun e!3346149 () Bool)

(assert (=> b!5396204 (= e!3346149 (nullable!5324 lt!2199203))))

(declare-fun b!5396205 () Bool)

(declare-fun res!2293606 () Bool)

(declare-fun e!3346145 () Bool)

(assert (=> b!5396205 (=> res!2293606 e!3346145)))

(assert (=> b!5396205 (= res!2293606 (not ((_ is ElementMatch!15155) lt!2199203)))))

(declare-fun e!3346150 () Bool)

(assert (=> b!5396205 (= e!3346150 e!3346145)))

(declare-fun b!5396206 () Bool)

(declare-fun lt!2199233 () Bool)

(assert (=> b!5396206 (= e!3346150 (not lt!2199233))))

(declare-fun b!5396207 () Bool)

(declare-fun e!3346148 () Bool)

(assert (=> b!5396207 (= e!3346148 (= (head!11574 s!2326) (c!940347 lt!2199203)))))

(declare-fun b!5396208 () Bool)

(declare-fun res!2293611 () Bool)

(assert (=> b!5396208 (=> res!2293611 e!3346145)))

(assert (=> b!5396208 (= res!2293611 e!3346148)))

(declare-fun res!2293608 () Bool)

(assert (=> b!5396208 (=> (not res!2293608) (not e!3346148))))

(assert (=> b!5396208 (= res!2293608 lt!2199233)))

(declare-fun b!5396209 () Bool)

(declare-fun e!3346147 () Bool)

(assert (=> b!5396209 (= e!3346145 e!3346147)))

(declare-fun res!2293607 () Bool)

(assert (=> b!5396209 (=> (not res!2293607) (not e!3346147))))

(assert (=> b!5396209 (= res!2293607 (not lt!2199233))))

(declare-fun b!5396210 () Bool)

(declare-fun derivativeStep!4248 (Regex!15155 C!30580) Regex!15155)

(assert (=> b!5396210 (= e!3346149 (matchR!7340 (derivativeStep!4248 lt!2199203 (head!11574 s!2326)) (tail!10671 s!2326)))))

(declare-fun d!1724177 () Bool)

(declare-fun e!3346144 () Bool)

(assert (=> d!1724177 e!3346144))

(declare-fun c!940379 () Bool)

(assert (=> d!1724177 (= c!940379 ((_ is EmptyExpr!15155) lt!2199203))))

(assert (=> d!1724177 (= lt!2199233 e!3346149)))

(declare-fun c!940381 () Bool)

(assert (=> d!1724177 (= c!940381 (isEmpty!33636 s!2326))))

(assert (=> d!1724177 (validRegex!6891 lt!2199203)))

(assert (=> d!1724177 (= (matchR!7340 lt!2199203 s!2326) lt!2199233)))

(declare-fun b!5396211 () Bool)

(declare-fun res!2293609 () Bool)

(assert (=> b!5396211 (=> (not res!2293609) (not e!3346148))))

(assert (=> b!5396211 (= res!2293609 (not call!386177))))

(declare-fun b!5396212 () Bool)

(declare-fun e!3346146 () Bool)

(assert (=> b!5396212 (= e!3346147 e!3346146)))

(declare-fun res!2293610 () Bool)

(assert (=> b!5396212 (=> res!2293610 e!3346146)))

(assert (=> b!5396212 (= res!2293610 call!386177)))

(declare-fun b!5396213 () Bool)

(assert (=> b!5396213 (= e!3346144 (= lt!2199233 call!386177))))

(declare-fun b!5396214 () Bool)

(declare-fun res!2293613 () Bool)

(assert (=> b!5396214 (=> res!2293613 e!3346146)))

(assert (=> b!5396214 (= res!2293613 (not (isEmpty!33636 (tail!10671 s!2326))))))

(declare-fun b!5396215 () Bool)

(declare-fun res!2293612 () Bool)

(assert (=> b!5396215 (=> (not res!2293612) (not e!3346148))))

(assert (=> b!5396215 (= res!2293612 (isEmpty!33636 (tail!10671 s!2326)))))

(declare-fun b!5396216 () Bool)

(assert (=> b!5396216 (= e!3346146 (not (= (head!11574 s!2326) (c!940347 lt!2199203))))))

(declare-fun b!5396217 () Bool)

(assert (=> b!5396217 (= e!3346144 e!3346150)))

(declare-fun c!940380 () Bool)

(assert (=> b!5396217 (= c!940380 ((_ is EmptyLang!15155) lt!2199203))))

(assert (= (and d!1724177 c!940381) b!5396204))

(assert (= (and d!1724177 (not c!940381)) b!5396210))

(assert (= (and d!1724177 c!940379) b!5396213))

(assert (= (and d!1724177 (not c!940379)) b!5396217))

(assert (= (and b!5396217 c!940380) b!5396206))

(assert (= (and b!5396217 (not c!940380)) b!5396205))

(assert (= (and b!5396205 (not res!2293606)) b!5396208))

(assert (= (and b!5396208 res!2293608) b!5396211))

(assert (= (and b!5396211 res!2293609) b!5396215))

(assert (= (and b!5396215 res!2293612) b!5396207))

(assert (= (and b!5396208 (not res!2293611)) b!5396209))

(assert (= (and b!5396209 res!2293607) b!5396212))

(assert (= (and b!5396212 (not res!2293610)) b!5396214))

(assert (= (and b!5396214 (not res!2293613)) b!5396216))

(assert (= (or b!5396213 b!5396211 b!5396212) bm!386172))

(declare-fun m!6421150 () Bool)

(assert (=> b!5396216 m!6421150))

(declare-fun m!6421152 () Bool)

(assert (=> d!1724177 m!6421152))

(declare-fun m!6421154 () Bool)

(assert (=> d!1724177 m!6421154))

(assert (=> bm!386172 m!6421152))

(declare-fun m!6421156 () Bool)

(assert (=> b!5396214 m!6421156))

(assert (=> b!5396214 m!6421156))

(declare-fun m!6421158 () Bool)

(assert (=> b!5396214 m!6421158))

(declare-fun m!6421160 () Bool)

(assert (=> b!5396204 m!6421160))

(assert (=> b!5396207 m!6421150))

(assert (=> b!5396215 m!6421156))

(assert (=> b!5396215 m!6421156))

(assert (=> b!5396215 m!6421158))

(assert (=> b!5396210 m!6421150))

(assert (=> b!5396210 m!6421150))

(declare-fun m!6421162 () Bool)

(assert (=> b!5396210 m!6421162))

(assert (=> b!5396210 m!6421156))

(assert (=> b!5396210 m!6421162))

(assert (=> b!5396210 m!6421156))

(declare-fun m!6421164 () Bool)

(assert (=> b!5396210 m!6421164))

(assert (=> b!5396073 d!1724177))

(declare-fun bs!1247795 () Bool)

(declare-fun b!5396329 () Bool)

(assert (= bs!1247795 (and b!5396329 b!5396067)))

(declare-fun lambda!280680 () Int)

(assert (=> bs!1247795 (not (= lambda!280680 lambda!280661))))

(assert (=> bs!1247795 (not (= lambda!280680 lambda!280662))))

(assert (=> b!5396329 true))

(assert (=> b!5396329 true))

(declare-fun bs!1247796 () Bool)

(declare-fun b!5396330 () Bool)

(assert (= bs!1247796 (and b!5396330 b!5396067)))

(declare-fun lambda!280681 () Int)

(assert (=> bs!1247796 (not (= lambda!280681 lambda!280661))))

(assert (=> bs!1247796 (= (and (= (regOne!30822 lt!2199203) (regOne!30822 r!7292)) (= (regTwo!30822 lt!2199203) (regTwo!30822 r!7292))) (= lambda!280681 lambda!280662))))

(declare-fun bs!1247797 () Bool)

(assert (= bs!1247797 (and b!5396330 b!5396329)))

(assert (=> bs!1247797 (not (= lambda!280681 lambda!280680))))

(assert (=> b!5396330 true))

(assert (=> b!5396330 true))

(declare-fun bm!386198 () Bool)

(declare-fun call!386204 () Bool)

(declare-fun c!940420 () Bool)

(assert (=> bm!386198 (= call!386204 (Exists!2336 (ite c!940420 lambda!280680 lambda!280681)))))

(declare-fun b!5396321 () Bool)

(declare-fun e!3346216 () Bool)

(declare-fun e!3346215 () Bool)

(assert (=> b!5396321 (= e!3346216 e!3346215)))

(declare-fun res!2293641 () Bool)

(assert (=> b!5396321 (= res!2293641 (matchRSpec!2258 (regOne!30823 lt!2199203) s!2326))))

(assert (=> b!5396321 (=> res!2293641 e!3346215)))

(declare-fun b!5396322 () Bool)

(declare-fun c!940422 () Bool)

(assert (=> b!5396322 (= c!940422 ((_ is Union!15155) lt!2199203))))

(declare-fun e!3346213 () Bool)

(assert (=> b!5396322 (= e!3346213 e!3346216)))

(declare-fun d!1724191 () Bool)

(declare-fun c!940423 () Bool)

(assert (=> d!1724191 (= c!940423 ((_ is EmptyExpr!15155) lt!2199203))))

(declare-fun e!3346211 () Bool)

(assert (=> d!1724191 (= (matchRSpec!2258 lt!2199203 s!2326) e!3346211)))

(declare-fun b!5396323 () Bool)

(declare-fun e!3346210 () Bool)

(assert (=> b!5396323 (= e!3346211 e!3346210)))

(declare-fun res!2293642 () Bool)

(assert (=> b!5396323 (= res!2293642 (not ((_ is EmptyLang!15155) lt!2199203)))))

(assert (=> b!5396323 (=> (not res!2293642) (not e!3346210))))

(declare-fun b!5396324 () Bool)

(declare-fun res!2293643 () Bool)

(declare-fun e!3346214 () Bool)

(assert (=> b!5396324 (=> res!2293643 e!3346214)))

(declare-fun call!386203 () Bool)

(assert (=> b!5396324 (= res!2293643 call!386203)))

(declare-fun e!3346212 () Bool)

(assert (=> b!5396324 (= e!3346212 e!3346214)))

(declare-fun b!5396325 () Bool)

(assert (=> b!5396325 (= e!3346216 e!3346212)))

(assert (=> b!5396325 (= c!940420 ((_ is Star!15155) lt!2199203))))

(declare-fun b!5396326 () Bool)

(assert (=> b!5396326 (= e!3346211 call!386203)))

(declare-fun b!5396327 () Bool)

(assert (=> b!5396327 (= e!3346213 (= s!2326 (Cons!61641 (c!940347 lt!2199203) Nil!61641)))))

(declare-fun b!5396328 () Bool)

(declare-fun c!940421 () Bool)

(assert (=> b!5396328 (= c!940421 ((_ is ElementMatch!15155) lt!2199203))))

(assert (=> b!5396328 (= e!3346210 e!3346213)))

(declare-fun bm!386199 () Bool)

(assert (=> bm!386199 (= call!386203 (isEmpty!33636 s!2326))))

(assert (=> b!5396329 (= e!3346214 call!386204)))

(assert (=> b!5396330 (= e!3346212 call!386204)))

(declare-fun b!5396331 () Bool)

(assert (=> b!5396331 (= e!3346215 (matchRSpec!2258 (regTwo!30823 lt!2199203) s!2326))))

(assert (= (and d!1724191 c!940423) b!5396326))

(assert (= (and d!1724191 (not c!940423)) b!5396323))

(assert (= (and b!5396323 res!2293642) b!5396328))

(assert (= (and b!5396328 c!940421) b!5396327))

(assert (= (and b!5396328 (not c!940421)) b!5396322))

(assert (= (and b!5396322 c!940422) b!5396321))

(assert (= (and b!5396322 (not c!940422)) b!5396325))

(assert (= (and b!5396321 (not res!2293641)) b!5396331))

(assert (= (and b!5396325 c!940420) b!5396324))

(assert (= (and b!5396325 (not c!940420)) b!5396330))

(assert (= (and b!5396324 (not res!2293643)) b!5396329))

(assert (= (or b!5396329 b!5396330) bm!386198))

(assert (= (or b!5396326 b!5396324) bm!386199))

(declare-fun m!6421256 () Bool)

(assert (=> bm!386198 m!6421256))

(declare-fun m!6421260 () Bool)

(assert (=> b!5396321 m!6421260))

(assert (=> bm!386199 m!6421152))

(declare-fun m!6421270 () Bool)

(assert (=> b!5396331 m!6421270))

(assert (=> b!5396073 d!1724191))

(declare-fun d!1724225 () Bool)

(assert (=> d!1724225 (= (matchR!7340 lt!2199203 s!2326) (matchRSpec!2258 lt!2199203 s!2326))))

(declare-fun lt!2199244 () Unit!154142)

(declare-fun choose!40609 (Regex!15155 List!61765) Unit!154142)

(assert (=> d!1724225 (= lt!2199244 (choose!40609 lt!2199203 s!2326))))

(assert (=> d!1724225 (validRegex!6891 lt!2199203)))

(assert (=> d!1724225 (= (mainMatchTheorem!2258 lt!2199203 s!2326) lt!2199244)))

(declare-fun bs!1247798 () Bool)

(assert (= bs!1247798 d!1724225))

(assert (=> bs!1247798 m!6421042))

(assert (=> bs!1247798 m!6421044))

(declare-fun m!6421276 () Bool)

(assert (=> bs!1247798 m!6421276))

(assert (=> bs!1247798 m!6421154))

(assert (=> b!5396073 d!1724225))

(declare-fun d!1724229 () Bool)

(assert (=> d!1724229 (= (isEmpty!33634 (t!374987 (exprs!5039 (h!68090 zl!343)))) ((_ is Nil!61640) (t!374987 (exprs!5039 (h!68090 zl!343)))))))

(assert (=> b!5396094 d!1724229))

(assert (=> b!5396054 d!1724173))

(declare-fun d!1724231 () Bool)

(declare-fun isEmpty!33637 (Option!15266) Bool)

(assert (=> d!1724231 (= (isDefined!11969 lt!2199186) (not (isEmpty!33637 lt!2199186)))))

(declare-fun bs!1247799 () Bool)

(assert (= bs!1247799 d!1724231))

(declare-fun m!6421278 () Bool)

(assert (=> bs!1247799 m!6421278))

(assert (=> b!5396074 d!1724231))

(declare-fun d!1724233 () Bool)

(assert (=> d!1724233 (isDefined!11969 (findConcatSeparationZippers!12 lt!2199209 (store ((as const (Array Context!9078 Bool)) false) lt!2199219 true) Nil!61641 s!2326 s!2326))))

(declare-fun lt!2199256 () Unit!154142)

(declare-fun choose!40610 ((InoxSet Context!9078) Context!9078 List!61765) Unit!154142)

(assert (=> d!1724233 (= lt!2199256 (choose!40610 lt!2199209 lt!2199219 s!2326))))

(assert (=> d!1724233 (matchZipper!1399 (appendTo!14 lt!2199209 lt!2199219) s!2326)))

(assert (=> d!1724233 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!12 lt!2199209 lt!2199219 s!2326) lt!2199256)))

(declare-fun bs!1247801 () Bool)

(assert (= bs!1247801 d!1724233))

(assert (=> bs!1247801 m!6421054))

(declare-fun m!6421306 () Bool)

(assert (=> bs!1247801 m!6421306))

(assert (=> bs!1247801 m!6421054))

(assert (=> bs!1247801 m!6421094))

(declare-fun m!6421308 () Bool)

(assert (=> bs!1247801 m!6421308))

(assert (=> bs!1247801 m!6421308))

(declare-fun m!6421310 () Bool)

(assert (=> bs!1247801 m!6421310))

(declare-fun m!6421312 () Bool)

(assert (=> bs!1247801 m!6421312))

(assert (=> bs!1247801 m!6421094))

(assert (=> b!5396074 d!1724233))

(declare-fun b!5396382 () Bool)

(declare-fun e!3346246 () List!61765)

(assert (=> b!5396382 (= e!3346246 (_2!35657 lt!2199175))))

(declare-fun b!5396384 () Bool)

(declare-fun res!2293672 () Bool)

(declare-fun e!3346245 () Bool)

(assert (=> b!5396384 (=> (not res!2293672) (not e!3346245))))

(declare-fun lt!2199265 () List!61765)

(declare-fun size!39823 (List!61765) Int)

(assert (=> b!5396384 (= res!2293672 (= (size!39823 lt!2199265) (+ (size!39823 (_1!35657 lt!2199175)) (size!39823 (_2!35657 lt!2199175)))))))

(declare-fun b!5396383 () Bool)

(assert (=> b!5396383 (= e!3346246 (Cons!61641 (h!68089 (_1!35657 lt!2199175)) (++!13483 (t!374988 (_1!35657 lt!2199175)) (_2!35657 lt!2199175))))))

(declare-fun b!5396385 () Bool)

(assert (=> b!5396385 (= e!3346245 (or (not (= (_2!35657 lt!2199175) Nil!61641)) (= lt!2199265 (_1!35657 lt!2199175))))))

(declare-fun d!1724239 () Bool)

(assert (=> d!1724239 e!3346245))

(declare-fun res!2293673 () Bool)

(assert (=> d!1724239 (=> (not res!2293673) (not e!3346245))))

(declare-fun content!11033 (List!61765) (InoxSet C!30580))

(assert (=> d!1724239 (= res!2293673 (= (content!11033 lt!2199265) ((_ map or) (content!11033 (_1!35657 lt!2199175)) (content!11033 (_2!35657 lt!2199175)))))))

(assert (=> d!1724239 (= lt!2199265 e!3346246)))

(declare-fun c!940435 () Bool)

(assert (=> d!1724239 (= c!940435 ((_ is Nil!61641) (_1!35657 lt!2199175)))))

(assert (=> d!1724239 (= (++!13483 (_1!35657 lt!2199175) (_2!35657 lt!2199175)) lt!2199265)))

(assert (= (and d!1724239 c!940435) b!5396382))

(assert (= (and d!1724239 (not c!940435)) b!5396383))

(assert (= (and d!1724239 res!2293673) b!5396384))

(assert (= (and b!5396384 res!2293672) b!5396385))

(declare-fun m!6421328 () Bool)

(assert (=> b!5396384 m!6421328))

(declare-fun m!6421330 () Bool)

(assert (=> b!5396384 m!6421330))

(declare-fun m!6421332 () Bool)

(assert (=> b!5396384 m!6421332))

(declare-fun m!6421334 () Bool)

(assert (=> b!5396383 m!6421334))

(declare-fun m!6421336 () Bool)

(assert (=> d!1724239 m!6421336))

(declare-fun m!6421338 () Bool)

(assert (=> d!1724239 m!6421338))

(declare-fun m!6421340 () Bool)

(assert (=> d!1724239 m!6421340))

(assert (=> b!5396074 d!1724239))

(declare-fun d!1724245 () Bool)

(assert (=> d!1724245 (= (get!21235 lt!2199186) (v!51294 lt!2199186))))

(assert (=> b!5396074 d!1724245))

(declare-fun b!5396478 () Bool)

(declare-fun res!2293724 () Bool)

(declare-fun e!3346296 () Bool)

(assert (=> b!5396478 (=> (not res!2293724) (not e!3346296))))

(declare-fun lt!2199275 () Option!15266)

(assert (=> b!5396478 (= res!2293724 (matchZipper!1399 lt!2199185 (_2!35657 (get!21235 lt!2199275))))))

(declare-fun b!5396479 () Bool)

(declare-fun lt!2199276 () Unit!154142)

(declare-fun lt!2199277 () Unit!154142)

(assert (=> b!5396479 (= lt!2199276 lt!2199277)))

(assert (=> b!5396479 (= (++!13483 (++!13483 Nil!61641 (Cons!61641 (h!68089 s!2326) Nil!61641)) (t!374988 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1823 (List!61765 C!30580 List!61765 List!61765) Unit!154142)

(assert (=> b!5396479 (= lt!2199277 (lemmaMoveElementToOtherListKeepsConcatEq!1823 Nil!61641 (h!68089 s!2326) (t!374988 s!2326) s!2326))))

(declare-fun e!3346298 () Option!15266)

(assert (=> b!5396479 (= e!3346298 (findConcatSeparationZippers!12 lt!2199209 lt!2199185 (++!13483 Nil!61641 (Cons!61641 (h!68089 s!2326) Nil!61641)) (t!374988 s!2326) s!2326))))

(declare-fun b!5396481 () Bool)

(assert (=> b!5396481 (= e!3346296 (= (++!13483 (_1!35657 (get!21235 lt!2199275)) (_2!35657 (get!21235 lt!2199275))) s!2326))))

(declare-fun b!5396482 () Bool)

(declare-fun e!3346297 () Bool)

(assert (=> b!5396482 (= e!3346297 (matchZipper!1399 lt!2199185 s!2326))))

(declare-fun d!1724247 () Bool)

(declare-fun e!3346299 () Bool)

(assert (=> d!1724247 e!3346299))

(declare-fun res!2293725 () Bool)

(assert (=> d!1724247 (=> res!2293725 e!3346299)))

(assert (=> d!1724247 (= res!2293725 e!3346296)))

(declare-fun res!2293728 () Bool)

(assert (=> d!1724247 (=> (not res!2293728) (not e!3346296))))

(assert (=> d!1724247 (= res!2293728 (isDefined!11969 lt!2199275))))

(declare-fun e!3346300 () Option!15266)

(assert (=> d!1724247 (= lt!2199275 e!3346300)))

(declare-fun c!940457 () Bool)

(assert (=> d!1724247 (= c!940457 e!3346297)))

(declare-fun res!2293726 () Bool)

(assert (=> d!1724247 (=> (not res!2293726) (not e!3346297))))

(assert (=> d!1724247 (= res!2293726 (matchZipper!1399 lt!2199209 Nil!61641))))

(assert (=> d!1724247 (= (++!13483 Nil!61641 s!2326) s!2326)))

(assert (=> d!1724247 (= (findConcatSeparationZippers!12 lt!2199209 lt!2199185 Nil!61641 s!2326 s!2326) lt!2199275)))

(declare-fun b!5396480 () Bool)

(assert (=> b!5396480 (= e!3346299 (not (isDefined!11969 lt!2199275)))))

(declare-fun b!5396483 () Bool)

(assert (=> b!5396483 (= e!3346300 (Some!15265 (tuple2!64709 Nil!61641 s!2326)))))

(declare-fun b!5396484 () Bool)

(assert (=> b!5396484 (= e!3346298 None!15265)))

(declare-fun b!5396485 () Bool)

(declare-fun res!2293727 () Bool)

(assert (=> b!5396485 (=> (not res!2293727) (not e!3346296))))

(assert (=> b!5396485 (= res!2293727 (matchZipper!1399 lt!2199209 (_1!35657 (get!21235 lt!2199275))))))

(declare-fun b!5396486 () Bool)

(assert (=> b!5396486 (= e!3346300 e!3346298)))

(declare-fun c!940458 () Bool)

(assert (=> b!5396486 (= c!940458 ((_ is Nil!61641) s!2326))))

(assert (= (and d!1724247 res!2293726) b!5396482))

(assert (= (and d!1724247 c!940457) b!5396483))

(assert (= (and d!1724247 (not c!940457)) b!5396486))

(assert (= (and b!5396486 c!940458) b!5396484))

(assert (= (and b!5396486 (not c!940458)) b!5396479))

(assert (= (and d!1724247 res!2293728) b!5396485))

(assert (= (and b!5396485 res!2293727) b!5396478))

(assert (= (and b!5396478 res!2293724) b!5396481))

(assert (= (and d!1724247 (not res!2293725)) b!5396480))

(declare-fun m!6421358 () Bool)

(assert (=> b!5396479 m!6421358))

(assert (=> b!5396479 m!6421358))

(declare-fun m!6421360 () Bool)

(assert (=> b!5396479 m!6421360))

(declare-fun m!6421362 () Bool)

(assert (=> b!5396479 m!6421362))

(assert (=> b!5396479 m!6421358))

(declare-fun m!6421364 () Bool)

(assert (=> b!5396479 m!6421364))

(declare-fun m!6421366 () Bool)

(assert (=> d!1724247 m!6421366))

(declare-fun m!6421368 () Bool)

(assert (=> d!1724247 m!6421368))

(declare-fun m!6421370 () Bool)

(assert (=> d!1724247 m!6421370))

(assert (=> b!5396480 m!6421366))

(declare-fun m!6421372 () Bool)

(assert (=> b!5396485 m!6421372))

(declare-fun m!6421374 () Bool)

(assert (=> b!5396485 m!6421374))

(declare-fun m!6421376 () Bool)

(assert (=> b!5396482 m!6421376))

(assert (=> b!5396481 m!6421372))

(declare-fun m!6421378 () Bool)

(assert (=> b!5396481 m!6421378))

(assert (=> b!5396478 m!6421372))

(declare-fun m!6421380 () Bool)

(assert (=> b!5396478 m!6421380))

(assert (=> b!5396074 d!1724247))

(declare-fun d!1724251 () Bool)

(declare-fun lt!2199280 () Regex!15155)

(assert (=> d!1724251 (validRegex!6891 lt!2199280)))

(assert (=> d!1724251 (= lt!2199280 (generalisedUnion!1084 (unfocusZipperList!597 zl!343)))))

(assert (=> d!1724251 (= (unfocusZipper!897 zl!343) lt!2199280)))

(declare-fun bs!1247806 () Bool)

(assert (= bs!1247806 d!1724251))

(declare-fun m!6421388 () Bool)

(assert (=> bs!1247806 m!6421388))

(assert (=> bs!1247806 m!6420988))

(assert (=> bs!1247806 m!6420988))

(assert (=> bs!1247806 m!6420990))

(assert (=> b!5396075 d!1724251))

(declare-fun d!1724255 () Bool)

(declare-fun c!940463 () Bool)

(assert (=> d!1724255 (= c!940463 (isEmpty!33636 (t!374988 s!2326)))))

(declare-fun e!3346308 () Bool)

(assert (=> d!1724255 (= (matchZipper!1399 lt!2199184 (t!374988 s!2326)) e!3346308)))

(declare-fun b!5396498 () Bool)

(assert (=> b!5396498 (= e!3346308 (nullableZipper!1428 lt!2199184))))

(declare-fun b!5396499 () Bool)

(assert (=> b!5396499 (= e!3346308 (matchZipper!1399 (derivationStepZipper!1394 lt!2199184 (head!11574 (t!374988 s!2326))) (tail!10671 (t!374988 s!2326))))))

(assert (= (and d!1724255 c!940463) b!5396498))

(assert (= (and d!1724255 (not c!940463)) b!5396499))

(assert (=> d!1724255 m!6421112))

(declare-fun m!6421390 () Bool)

(assert (=> b!5396498 m!6421390))

(assert (=> b!5396499 m!6421116))

(assert (=> b!5396499 m!6421116))

(declare-fun m!6421392 () Bool)

(assert (=> b!5396499 m!6421392))

(assert (=> b!5396499 m!6421120))

(assert (=> b!5396499 m!6421392))

(assert (=> b!5396499 m!6421120))

(declare-fun m!6421394 () Bool)

(assert (=> b!5396499 m!6421394))

(assert (=> b!5396056 d!1724255))

(declare-fun bs!1247813 () Bool)

(declare-fun d!1724257 () Bool)

(assert (= bs!1247813 (and d!1724257 b!5396085)))

(declare-fun lambda!280690 () Int)

(assert (=> bs!1247813 (= lambda!280690 lambda!280665)))

(declare-fun b!5396545 () Bool)

(declare-fun e!3346342 () Bool)

(declare-fun lt!2199291 () Regex!15155)

(declare-fun isEmptyLang!970 (Regex!15155) Bool)

(assert (=> b!5396545 (= e!3346342 (isEmptyLang!970 lt!2199291))))

(declare-fun b!5396546 () Bool)

(declare-fun e!3346339 () Bool)

(assert (=> b!5396546 (= e!3346342 e!3346339)))

(declare-fun c!940483 () Bool)

(declare-fun tail!10672 (List!61764) List!61764)

(assert (=> b!5396546 (= c!940483 (isEmpty!33634 (tail!10672 (unfocusZipperList!597 zl!343))))))

(declare-fun b!5396547 () Bool)

(declare-fun e!3346337 () Regex!15155)

(assert (=> b!5396547 (= e!3346337 (h!68088 (unfocusZipperList!597 zl!343)))))

(declare-fun e!3346338 () Bool)

(assert (=> d!1724257 e!3346338))

(declare-fun res!2293743 () Bool)

(assert (=> d!1724257 (=> (not res!2293743) (not e!3346338))))

(assert (=> d!1724257 (= res!2293743 (validRegex!6891 lt!2199291))))

(assert (=> d!1724257 (= lt!2199291 e!3346337)))

(declare-fun c!940481 () Bool)

(declare-fun e!3346341 () Bool)

(assert (=> d!1724257 (= c!940481 e!3346341)))

(declare-fun res!2293744 () Bool)

(assert (=> d!1724257 (=> (not res!2293744) (not e!3346341))))

(assert (=> d!1724257 (= res!2293744 ((_ is Cons!61640) (unfocusZipperList!597 zl!343)))))

(declare-fun forall!14521 (List!61764 Int) Bool)

(assert (=> d!1724257 (forall!14521 (unfocusZipperList!597 zl!343) lambda!280690)))

(assert (=> d!1724257 (= (generalisedUnion!1084 (unfocusZipperList!597 zl!343)) lt!2199291)))

(declare-fun b!5396548 () Bool)

(assert (=> b!5396548 (= e!3346341 (isEmpty!33634 (t!374987 (unfocusZipperList!597 zl!343))))))

(declare-fun b!5396549 () Bool)

(declare-fun isUnion!402 (Regex!15155) Bool)

(assert (=> b!5396549 (= e!3346339 (isUnion!402 lt!2199291))))

(declare-fun b!5396550 () Bool)

(declare-fun e!3346340 () Regex!15155)

(assert (=> b!5396550 (= e!3346337 e!3346340)))

(declare-fun c!940482 () Bool)

(assert (=> b!5396550 (= c!940482 ((_ is Cons!61640) (unfocusZipperList!597 zl!343)))))

(declare-fun b!5396551 () Bool)

(assert (=> b!5396551 (= e!3346338 e!3346342)))

(declare-fun c!940484 () Bool)

(assert (=> b!5396551 (= c!940484 (isEmpty!33634 (unfocusZipperList!597 zl!343)))))

(declare-fun b!5396552 () Bool)

(assert (=> b!5396552 (= e!3346340 (Union!15155 (h!68088 (unfocusZipperList!597 zl!343)) (generalisedUnion!1084 (t!374987 (unfocusZipperList!597 zl!343)))))))

(declare-fun b!5396553 () Bool)

(declare-fun head!11575 (List!61764) Regex!15155)

(assert (=> b!5396553 (= e!3346339 (= lt!2199291 (head!11575 (unfocusZipperList!597 zl!343))))))

(declare-fun b!5396554 () Bool)

(assert (=> b!5396554 (= e!3346340 EmptyLang!15155)))

(assert (= (and d!1724257 res!2293744) b!5396548))

(assert (= (and d!1724257 c!940481) b!5396547))

(assert (= (and d!1724257 (not c!940481)) b!5396550))

(assert (= (and b!5396550 c!940482) b!5396552))

(assert (= (and b!5396550 (not c!940482)) b!5396554))

(assert (= (and d!1724257 res!2293743) b!5396551))

(assert (= (and b!5396551 c!940484) b!5396545))

(assert (= (and b!5396551 (not c!940484)) b!5396546))

(assert (= (and b!5396546 c!940483) b!5396553))

(assert (= (and b!5396546 (not c!940483)) b!5396549))

(declare-fun m!6421440 () Bool)

(assert (=> b!5396549 m!6421440))

(declare-fun m!6421442 () Bool)

(assert (=> b!5396548 m!6421442))

(declare-fun m!6421444 () Bool)

(assert (=> b!5396552 m!6421444))

(declare-fun m!6421446 () Bool)

(assert (=> b!5396545 m!6421446))

(declare-fun m!6421448 () Bool)

(assert (=> d!1724257 m!6421448))

(assert (=> d!1724257 m!6420988))

(declare-fun m!6421450 () Bool)

(assert (=> d!1724257 m!6421450))

(assert (=> b!5396551 m!6420988))

(declare-fun m!6421452 () Bool)

(assert (=> b!5396551 m!6421452))

(assert (=> b!5396553 m!6420988))

(declare-fun m!6421454 () Bool)

(assert (=> b!5396553 m!6421454))

(assert (=> b!5396546 m!6420988))

(declare-fun m!6421456 () Bool)

(assert (=> b!5396546 m!6421456))

(assert (=> b!5396546 m!6421456))

(declare-fun m!6421458 () Bool)

(assert (=> b!5396546 m!6421458))

(assert (=> b!5396057 d!1724257))

(declare-fun bs!1247814 () Bool)

(declare-fun d!1724279 () Bool)

(assert (= bs!1247814 (and d!1724279 b!5396085)))

(declare-fun lambda!280693 () Int)

(assert (=> bs!1247814 (= lambda!280693 lambda!280665)))

(declare-fun bs!1247815 () Bool)

(assert (= bs!1247815 (and d!1724279 d!1724257)))

(assert (=> bs!1247815 (= lambda!280693 lambda!280690)))

(declare-fun lt!2199295 () List!61764)

(assert (=> d!1724279 (forall!14521 lt!2199295 lambda!280693)))

(declare-fun e!3346350 () List!61764)

(assert (=> d!1724279 (= lt!2199295 e!3346350)))

(declare-fun c!940489 () Bool)

(assert (=> d!1724279 (= c!940489 ((_ is Cons!61642) zl!343))))

(assert (=> d!1724279 (= (unfocusZipperList!597 zl!343) lt!2199295)))

(declare-fun b!5396569 () Bool)

(assert (=> b!5396569 (= e!3346350 (Cons!61640 (generalisedConcat!824 (exprs!5039 (h!68090 zl!343))) (unfocusZipperList!597 (t!374989 zl!343))))))

(declare-fun b!5396570 () Bool)

(assert (=> b!5396570 (= e!3346350 Nil!61640)))

(assert (= (and d!1724279 c!940489) b!5396569))

(assert (= (and d!1724279 (not c!940489)) b!5396570))

(declare-fun m!6421486 () Bool)

(assert (=> d!1724279 m!6421486))

(assert (=> b!5396569 m!6420964))

(declare-fun m!6421488 () Bool)

(assert (=> b!5396569 m!6421488))

(assert (=> b!5396057 d!1724279))

(declare-fun b!5396581 () Bool)

(declare-fun e!3346359 () (InoxSet Context!9078))

(assert (=> b!5396581 (= e!3346359 ((as const (Array Context!9078 Bool)) false))))

(declare-fun b!5396582 () Bool)

(declare-fun call!386221 () (InoxSet Context!9078))

(assert (=> b!5396582 (= e!3346359 call!386221)))

(declare-fun e!3346358 () (InoxSet Context!9078))

(declare-fun b!5396583 () Bool)

(assert (=> b!5396583 (= e!3346358 ((_ map or) call!386221 (derivationStepZipperUp!527 (Context!9079 (t!374987 (exprs!5039 lt!2199220))) (h!68089 s!2326))))))

(declare-fun bm!386216 () Bool)

(assert (=> bm!386216 (= call!386221 (derivationStepZipperDown!603 (h!68088 (exprs!5039 lt!2199220)) (Context!9079 (t!374987 (exprs!5039 lt!2199220))) (h!68089 s!2326)))))

(declare-fun d!1724285 () Bool)

(declare-fun c!940495 () Bool)

(declare-fun e!3346357 () Bool)

(assert (=> d!1724285 (= c!940495 e!3346357)))

(declare-fun res!2293753 () Bool)

(assert (=> d!1724285 (=> (not res!2293753) (not e!3346357))))

(assert (=> d!1724285 (= res!2293753 ((_ is Cons!61640) (exprs!5039 lt!2199220)))))

(assert (=> d!1724285 (= (derivationStepZipperUp!527 lt!2199220 (h!68089 s!2326)) e!3346358)))

(declare-fun b!5396584 () Bool)

(assert (=> b!5396584 (= e!3346357 (nullable!5324 (h!68088 (exprs!5039 lt!2199220))))))

(declare-fun b!5396585 () Bool)

(assert (=> b!5396585 (= e!3346358 e!3346359)))

(declare-fun c!940494 () Bool)

(assert (=> b!5396585 (= c!940494 ((_ is Cons!61640) (exprs!5039 lt!2199220)))))

(assert (= (and d!1724285 res!2293753) b!5396584))

(assert (= (and d!1724285 c!940495) b!5396583))

(assert (= (and d!1724285 (not c!940495)) b!5396585))

(assert (= (and b!5396585 c!940494) b!5396582))

(assert (= (and b!5396585 (not c!940494)) b!5396581))

(assert (= (or b!5396583 b!5396582) bm!386216))

(declare-fun m!6421490 () Bool)

(assert (=> b!5396583 m!6421490))

(declare-fun m!6421492 () Bool)

(assert (=> bm!386216 m!6421492))

(declare-fun m!6421494 () Bool)

(assert (=> b!5396584 m!6421494))

(assert (=> b!5396076 d!1724285))

(declare-fun d!1724287 () Bool)

(declare-fun nullableFct!1580 (Regex!15155) Bool)

(assert (=> d!1724287 (= (nullable!5324 (h!68088 (exprs!5039 (h!68090 zl!343)))) (nullableFct!1580 (h!68088 (exprs!5039 (h!68090 zl!343)))))))

(declare-fun bs!1247820 () Bool)

(assert (= bs!1247820 d!1724287))

(declare-fun m!6421496 () Bool)

(assert (=> bs!1247820 m!6421496))

(assert (=> b!5396076 d!1724287))

(declare-fun b!5396586 () Bool)

(declare-fun e!3346362 () (InoxSet Context!9078))

(assert (=> b!5396586 (= e!3346362 ((as const (Array Context!9078 Bool)) false))))

(declare-fun b!5396587 () Bool)

(declare-fun call!386222 () (InoxSet Context!9078))

(assert (=> b!5396587 (= e!3346362 call!386222)))

(declare-fun e!3346361 () (InoxSet Context!9078))

(declare-fun b!5396588 () Bool)

(assert (=> b!5396588 (= e!3346361 ((_ map or) call!386222 (derivationStepZipperUp!527 (Context!9079 (t!374987 (exprs!5039 (Context!9079 (Cons!61640 (h!68088 (exprs!5039 (h!68090 zl!343))) (t!374987 (exprs!5039 (h!68090 zl!343)))))))) (h!68089 s!2326))))))

(declare-fun bm!386217 () Bool)

(assert (=> bm!386217 (= call!386222 (derivationStepZipperDown!603 (h!68088 (exprs!5039 (Context!9079 (Cons!61640 (h!68088 (exprs!5039 (h!68090 zl!343))) (t!374987 (exprs!5039 (h!68090 zl!343))))))) (Context!9079 (t!374987 (exprs!5039 (Context!9079 (Cons!61640 (h!68088 (exprs!5039 (h!68090 zl!343))) (t!374987 (exprs!5039 (h!68090 zl!343)))))))) (h!68089 s!2326)))))

(declare-fun d!1724289 () Bool)

(declare-fun c!940497 () Bool)

(declare-fun e!3346360 () Bool)

(assert (=> d!1724289 (= c!940497 e!3346360)))

(declare-fun res!2293754 () Bool)

(assert (=> d!1724289 (=> (not res!2293754) (not e!3346360))))

(assert (=> d!1724289 (= res!2293754 ((_ is Cons!61640) (exprs!5039 (Context!9079 (Cons!61640 (h!68088 (exprs!5039 (h!68090 zl!343))) (t!374987 (exprs!5039 (h!68090 zl!343))))))))))

(assert (=> d!1724289 (= (derivationStepZipperUp!527 (Context!9079 (Cons!61640 (h!68088 (exprs!5039 (h!68090 zl!343))) (t!374987 (exprs!5039 (h!68090 zl!343))))) (h!68089 s!2326)) e!3346361)))

(declare-fun b!5396589 () Bool)

(assert (=> b!5396589 (= e!3346360 (nullable!5324 (h!68088 (exprs!5039 (Context!9079 (Cons!61640 (h!68088 (exprs!5039 (h!68090 zl!343))) (t!374987 (exprs!5039 (h!68090 zl!343)))))))))))

(declare-fun b!5396590 () Bool)

(assert (=> b!5396590 (= e!3346361 e!3346362)))

(declare-fun c!940496 () Bool)

(assert (=> b!5396590 (= c!940496 ((_ is Cons!61640) (exprs!5039 (Context!9079 (Cons!61640 (h!68088 (exprs!5039 (h!68090 zl!343))) (t!374987 (exprs!5039 (h!68090 zl!343))))))))))

(assert (= (and d!1724289 res!2293754) b!5396589))

(assert (= (and d!1724289 c!940497) b!5396588))

(assert (= (and d!1724289 (not c!940497)) b!5396590))

(assert (= (and b!5396590 c!940496) b!5396587))

(assert (= (and b!5396590 (not c!940496)) b!5396586))

(assert (= (or b!5396588 b!5396587) bm!386217))

(declare-fun m!6421510 () Bool)

(assert (=> b!5396588 m!6421510))

(declare-fun m!6421512 () Bool)

(assert (=> bm!386217 m!6421512))

(declare-fun m!6421514 () Bool)

(assert (=> b!5396589 m!6421514))

(assert (=> b!5396076 d!1724289))

(declare-fun b!5396605 () Bool)

(declare-fun e!3346372 () (InoxSet Context!9078))

(assert (=> b!5396605 (= e!3346372 ((as const (Array Context!9078 Bool)) false))))

(declare-fun b!5396606 () Bool)

(declare-fun call!386224 () (InoxSet Context!9078))

(assert (=> b!5396606 (= e!3346372 call!386224)))

(declare-fun b!5396607 () Bool)

(declare-fun e!3346371 () (InoxSet Context!9078))

(assert (=> b!5396607 (= e!3346371 ((_ map or) call!386224 (derivationStepZipperUp!527 (Context!9079 (t!374987 (exprs!5039 (h!68090 zl!343)))) (h!68089 s!2326))))))

(declare-fun bm!386219 () Bool)

(assert (=> bm!386219 (= call!386224 (derivationStepZipperDown!603 (h!68088 (exprs!5039 (h!68090 zl!343))) (Context!9079 (t!374987 (exprs!5039 (h!68090 zl!343)))) (h!68089 s!2326)))))

(declare-fun d!1724293 () Bool)

(declare-fun c!940502 () Bool)

(declare-fun e!3346370 () Bool)

(assert (=> d!1724293 (= c!940502 e!3346370)))

(declare-fun res!2293763 () Bool)

(assert (=> d!1724293 (=> (not res!2293763) (not e!3346370))))

(assert (=> d!1724293 (= res!2293763 ((_ is Cons!61640) (exprs!5039 (h!68090 zl!343))))))

(assert (=> d!1724293 (= (derivationStepZipperUp!527 (h!68090 zl!343) (h!68089 s!2326)) e!3346371)))

(declare-fun b!5396608 () Bool)

(assert (=> b!5396608 (= e!3346370 (nullable!5324 (h!68088 (exprs!5039 (h!68090 zl!343)))))))

(declare-fun b!5396609 () Bool)

(assert (=> b!5396609 (= e!3346371 e!3346372)))

(declare-fun c!940501 () Bool)

(assert (=> b!5396609 (= c!940501 ((_ is Cons!61640) (exprs!5039 (h!68090 zl!343))))))

(assert (= (and d!1724293 res!2293763) b!5396608))

(assert (= (and d!1724293 c!940502) b!5396607))

(assert (= (and d!1724293 (not c!940502)) b!5396609))

(assert (= (and b!5396609 c!940501) b!5396606))

(assert (= (and b!5396609 (not c!940501)) b!5396605))

(assert (= (or b!5396607 b!5396606) bm!386219))

(declare-fun m!6421516 () Bool)

(assert (=> b!5396607 m!6421516))

(declare-fun m!6421518 () Bool)

(assert (=> bm!386219 m!6421518))

(assert (=> b!5396608 m!6421026))

(assert (=> b!5396076 d!1724293))

(declare-fun bm!386233 () Bool)

(declare-fun call!386243 () List!61764)

(declare-fun call!386238 () List!61764)

(assert (=> bm!386233 (= call!386243 call!386238)))

(declare-fun b!5396648 () Bool)

(declare-fun c!940519 () Bool)

(assert (=> b!5396648 (= c!940519 ((_ is Star!15155) (h!68088 (exprs!5039 (h!68090 zl!343)))))))

(declare-fun e!3346397 () (InoxSet Context!9078))

(declare-fun e!3346394 () (InoxSet Context!9078))

(assert (=> b!5396648 (= e!3346397 e!3346394)))

(declare-fun d!1724295 () Bool)

(declare-fun c!940521 () Bool)

(assert (=> d!1724295 (= c!940521 (and ((_ is ElementMatch!15155) (h!68088 (exprs!5039 (h!68090 zl!343)))) (= (c!940347 (h!68088 (exprs!5039 (h!68090 zl!343)))) (h!68089 s!2326))))))

(declare-fun e!3346398 () (InoxSet Context!9078))

(assert (=> d!1724295 (= (derivationStepZipperDown!603 (h!68088 (exprs!5039 (h!68090 zl!343))) lt!2199220 (h!68089 s!2326)) e!3346398)))

(declare-fun b!5396649 () Bool)

(declare-fun c!940518 () Bool)

(declare-fun e!3346396 () Bool)

(assert (=> b!5396649 (= c!940518 e!3346396)))

(declare-fun res!2293774 () Bool)

(assert (=> b!5396649 (=> (not res!2293774) (not e!3346396))))

(assert (=> b!5396649 (= res!2293774 ((_ is Concat!24000) (h!68088 (exprs!5039 (h!68090 zl!343)))))))

(declare-fun e!3346395 () (InoxSet Context!9078))

(declare-fun e!3346393 () (InoxSet Context!9078))

(assert (=> b!5396649 (= e!3346395 e!3346393)))

(declare-fun b!5396650 () Bool)

(declare-fun call!386239 () (InoxSet Context!9078))

(declare-fun call!386240 () (InoxSet Context!9078))

(assert (=> b!5396650 (= e!3346393 ((_ map or) call!386239 call!386240))))

(declare-fun c!940517 () Bool)

(declare-fun bm!386234 () Bool)

(assert (=> bm!386234 (= call!386239 (derivationStepZipperDown!603 (ite c!940517 (regOne!30823 (h!68088 (exprs!5039 (h!68090 zl!343)))) (regOne!30822 (h!68088 (exprs!5039 (h!68090 zl!343))))) (ite c!940517 lt!2199220 (Context!9079 call!386238)) (h!68089 s!2326)))))

(declare-fun b!5396651 () Bool)

(assert (=> b!5396651 (= e!3346398 e!3346395)))

(assert (=> b!5396651 (= c!940517 ((_ is Union!15155) (h!68088 (exprs!5039 (h!68090 zl!343)))))))

(declare-fun b!5396652 () Bool)

(assert (=> b!5396652 (= e!3346394 ((as const (Array Context!9078 Bool)) false))))

(declare-fun bm!386235 () Bool)

(declare-fun call!386241 () (InoxSet Context!9078))

(assert (=> bm!386235 (= call!386241 call!386240)))

(declare-fun bm!386236 () Bool)

(declare-fun c!940520 () Bool)

(declare-fun $colon$colon!1478 (List!61764 Regex!15155) List!61764)

(assert (=> bm!386236 (= call!386238 ($colon$colon!1478 (exprs!5039 lt!2199220) (ite (or c!940518 c!940520) (regTwo!30822 (h!68088 (exprs!5039 (h!68090 zl!343)))) (h!68088 (exprs!5039 (h!68090 zl!343))))))))

(declare-fun b!5396653 () Bool)

(assert (=> b!5396653 (= e!3346396 (nullable!5324 (regOne!30822 (h!68088 (exprs!5039 (h!68090 zl!343))))))))

(declare-fun b!5396654 () Bool)

(assert (=> b!5396654 (= e!3346393 e!3346397)))

(assert (=> b!5396654 (= c!940520 ((_ is Concat!24000) (h!68088 (exprs!5039 (h!68090 zl!343)))))))

(declare-fun bm!386237 () Bool)

(declare-fun call!386242 () (InoxSet Context!9078))

(assert (=> bm!386237 (= call!386240 call!386242)))

(declare-fun b!5396655 () Bool)

(assert (=> b!5396655 (= e!3346398 (store ((as const (Array Context!9078 Bool)) false) lt!2199220 true))))

(declare-fun b!5396656 () Bool)

(assert (=> b!5396656 (= e!3346394 call!386241)))

(declare-fun bm!386238 () Bool)

(assert (=> bm!386238 (= call!386242 (derivationStepZipperDown!603 (ite c!940517 (regTwo!30823 (h!68088 (exprs!5039 (h!68090 zl!343)))) (ite c!940518 (regTwo!30822 (h!68088 (exprs!5039 (h!68090 zl!343)))) (ite c!940520 (regOne!30822 (h!68088 (exprs!5039 (h!68090 zl!343)))) (reg!15484 (h!68088 (exprs!5039 (h!68090 zl!343))))))) (ite (or c!940517 c!940518) lt!2199220 (Context!9079 call!386243)) (h!68089 s!2326)))))

(declare-fun b!5396657 () Bool)

(assert (=> b!5396657 (= e!3346395 ((_ map or) call!386239 call!386242))))

(declare-fun b!5396658 () Bool)

(assert (=> b!5396658 (= e!3346397 call!386241)))

(assert (= (and d!1724295 c!940521) b!5396655))

(assert (= (and d!1724295 (not c!940521)) b!5396651))

(assert (= (and b!5396651 c!940517) b!5396657))

(assert (= (and b!5396651 (not c!940517)) b!5396649))

(assert (= (and b!5396649 res!2293774) b!5396653))

(assert (= (and b!5396649 c!940518) b!5396650))

(assert (= (and b!5396649 (not c!940518)) b!5396654))

(assert (= (and b!5396654 c!940520) b!5396658))

(assert (= (and b!5396654 (not c!940520)) b!5396648))

(assert (= (and b!5396648 c!940519) b!5396656))

(assert (= (and b!5396648 (not c!940519)) b!5396652))

(assert (= (or b!5396658 b!5396656) bm!386233))

(assert (= (or b!5396658 b!5396656) bm!386235))

(assert (= (or b!5396650 bm!386233) bm!386236))

(assert (= (or b!5396650 bm!386235) bm!386237))

(assert (= (or b!5396657 bm!386237) bm!386238))

(assert (= (or b!5396657 b!5396650) bm!386234))

(declare-fun m!6421568 () Bool)

(assert (=> b!5396655 m!6421568))

(declare-fun m!6421570 () Bool)

(assert (=> bm!386238 m!6421570))

(declare-fun m!6421572 () Bool)

(assert (=> bm!386236 m!6421572))

(declare-fun m!6421574 () Bool)

(assert (=> b!5396653 m!6421574))

(declare-fun m!6421576 () Bool)

(assert (=> bm!386234 m!6421576))

(assert (=> b!5396076 d!1724295))

(declare-fun d!1724315 () Bool)

(declare-fun choose!40614 ((InoxSet Context!9078) Int) (InoxSet Context!9078))

(assert (=> d!1724315 (= (flatMap!882 z!1189 lambda!280663) (choose!40614 z!1189 lambda!280663))))

(declare-fun bs!1247830 () Bool)

(assert (= bs!1247830 d!1724315))

(declare-fun m!6421578 () Bool)

(assert (=> bs!1247830 m!6421578))

(assert (=> b!5396076 d!1724315))

(declare-fun d!1724317 () Bool)

(declare-fun dynLambda!24294 (Int Context!9078) (InoxSet Context!9078))

(assert (=> d!1724317 (= (flatMap!882 z!1189 lambda!280663) (dynLambda!24294 lambda!280663 (h!68090 zl!343)))))

(declare-fun lt!2199315 () Unit!154142)

(declare-fun choose!40615 ((InoxSet Context!9078) Context!9078 Int) Unit!154142)

(assert (=> d!1724317 (= lt!2199315 (choose!40615 z!1189 (h!68090 zl!343) lambda!280663))))

(assert (=> d!1724317 (= z!1189 (store ((as const (Array Context!9078 Bool)) false) (h!68090 zl!343) true))))

(assert (=> d!1724317 (= (lemmaFlatMapOnSingletonSet!414 z!1189 (h!68090 zl!343) lambda!280663) lt!2199315)))

(declare-fun b_lambda!206357 () Bool)

(assert (=> (not b_lambda!206357) (not d!1724317)))

(declare-fun bs!1247835 () Bool)

(assert (= bs!1247835 d!1724317))

(assert (=> bs!1247835 m!6421018))

(declare-fun m!6421592 () Bool)

(assert (=> bs!1247835 m!6421592))

(declare-fun m!6421594 () Bool)

(assert (=> bs!1247835 m!6421594))

(declare-fun m!6421596 () Bool)

(assert (=> bs!1247835 m!6421596))

(assert (=> b!5396076 d!1724317))

(declare-fun e!3346415 () Bool)

(declare-fun d!1724323 () Bool)

(assert (=> d!1724323 (= (matchZipper!1399 ((_ map or) lt!2199184 lt!2199201) (t!374988 s!2326)) e!3346415)))

(declare-fun res!2293788 () Bool)

(assert (=> d!1724323 (=> res!2293788 e!3346415)))

(assert (=> d!1724323 (= res!2293788 (matchZipper!1399 lt!2199184 (t!374988 s!2326)))))

(declare-fun lt!2199319 () Unit!154142)

(declare-fun choose!40616 ((InoxSet Context!9078) (InoxSet Context!9078) List!61765) Unit!154142)

(assert (=> d!1724323 (= lt!2199319 (choose!40616 lt!2199184 lt!2199201 (t!374988 s!2326)))))

(assert (=> d!1724323 (= (lemmaZipperConcatMatchesSameAsBothZippers!392 lt!2199184 lt!2199201 (t!374988 s!2326)) lt!2199319)))

(declare-fun b!5396686 () Bool)

(assert (=> b!5396686 (= e!3346415 (matchZipper!1399 lt!2199201 (t!374988 s!2326)))))

(assert (= (and d!1724323 (not res!2293788)) b!5396686))

(assert (=> d!1724323 m!6421040))

(assert (=> d!1724323 m!6420982))

(declare-fun m!6421600 () Bool)

(assert (=> d!1724323 m!6421600))

(assert (=> b!5396686 m!6421030))

(assert (=> b!5396068 d!1724323))

(assert (=> b!5396068 d!1724255))

(declare-fun d!1724327 () Bool)

(declare-fun c!940529 () Bool)

(assert (=> d!1724327 (= c!940529 (isEmpty!33636 (t!374988 s!2326)))))

(declare-fun e!3346416 () Bool)

(assert (=> d!1724327 (= (matchZipper!1399 ((_ map or) lt!2199184 lt!2199201) (t!374988 s!2326)) e!3346416)))

(declare-fun b!5396687 () Bool)

(assert (=> b!5396687 (= e!3346416 (nullableZipper!1428 ((_ map or) lt!2199184 lt!2199201)))))

(declare-fun b!5396688 () Bool)

(assert (=> b!5396688 (= e!3346416 (matchZipper!1399 (derivationStepZipper!1394 ((_ map or) lt!2199184 lt!2199201) (head!11574 (t!374988 s!2326))) (tail!10671 (t!374988 s!2326))))))

(assert (= (and d!1724327 c!940529) b!5396687))

(assert (= (and d!1724327 (not c!940529)) b!5396688))

(assert (=> d!1724327 m!6421112))

(declare-fun m!6421602 () Bool)

(assert (=> b!5396687 m!6421602))

(assert (=> b!5396688 m!6421116))

(assert (=> b!5396688 m!6421116))

(declare-fun m!6421604 () Bool)

(assert (=> b!5396688 m!6421604))

(assert (=> b!5396688 m!6421120))

(assert (=> b!5396688 m!6421604))

(assert (=> b!5396688 m!6421120))

(declare-fun m!6421606 () Bool)

(assert (=> b!5396688 m!6421606))

(assert (=> b!5396068 d!1724327))

(declare-fun bs!1247842 () Bool)

(declare-fun d!1724329 () Bool)

(assert (= bs!1247842 (and d!1724329 b!5396085)))

(declare-fun lambda!280706 () Int)

(assert (=> bs!1247842 (= lambda!280706 lambda!280665)))

(declare-fun bs!1247843 () Bool)

(assert (= bs!1247843 (and d!1724329 d!1724257)))

(assert (=> bs!1247843 (= lambda!280706 lambda!280690)))

(declare-fun bs!1247844 () Bool)

(assert (= bs!1247844 (and d!1724329 d!1724279)))

(assert (=> bs!1247844 (= lambda!280706 lambda!280693)))

(declare-fun b!5396744 () Bool)

(declare-fun e!3346453 () Bool)

(declare-fun e!3346451 () Bool)

(assert (=> b!5396744 (= e!3346453 e!3346451)))

(declare-fun c!940555 () Bool)

(assert (=> b!5396744 (= c!940555 (isEmpty!33634 (tail!10672 (exprs!5039 (h!68090 zl!343)))))))

(declare-fun b!5396745 () Bool)

(declare-fun e!3346454 () Regex!15155)

(assert (=> b!5396745 (= e!3346454 EmptyExpr!15155)))

(declare-fun b!5396746 () Bool)

(declare-fun lt!2199327 () Regex!15155)

(assert (=> b!5396746 (= e!3346451 (= lt!2199327 (head!11575 (exprs!5039 (h!68090 zl!343)))))))

(declare-fun b!5396747 () Bool)

(declare-fun e!3346450 () Regex!15155)

(assert (=> b!5396747 (= e!3346450 (h!68088 (exprs!5039 (h!68090 zl!343))))))

(declare-fun b!5396748 () Bool)

(assert (=> b!5396748 (= e!3346454 (Concat!24000 (h!68088 (exprs!5039 (h!68090 zl!343))) (generalisedConcat!824 (t!374987 (exprs!5039 (h!68090 zl!343))))))))

(declare-fun b!5396749 () Bool)

(declare-fun isEmptyExpr!962 (Regex!15155) Bool)

(assert (=> b!5396749 (= e!3346453 (isEmptyExpr!962 lt!2199327))))

(declare-fun b!5396750 () Bool)

(assert (=> b!5396750 (= e!3346450 e!3346454)))

(declare-fun c!940552 () Bool)

(assert (=> b!5396750 (= c!940552 ((_ is Cons!61640) (exprs!5039 (h!68090 zl!343))))))

(declare-fun e!3346452 () Bool)

(assert (=> d!1724329 e!3346452))

(declare-fun res!2293800 () Bool)

(assert (=> d!1724329 (=> (not res!2293800) (not e!3346452))))

(assert (=> d!1724329 (= res!2293800 (validRegex!6891 lt!2199327))))

(assert (=> d!1724329 (= lt!2199327 e!3346450)))

(declare-fun c!940554 () Bool)

(declare-fun e!3346449 () Bool)

(assert (=> d!1724329 (= c!940554 e!3346449)))

(declare-fun res!2293799 () Bool)

(assert (=> d!1724329 (=> (not res!2293799) (not e!3346449))))

(assert (=> d!1724329 (= res!2293799 ((_ is Cons!61640) (exprs!5039 (h!68090 zl!343))))))

(assert (=> d!1724329 (forall!14521 (exprs!5039 (h!68090 zl!343)) lambda!280706)))

(assert (=> d!1724329 (= (generalisedConcat!824 (exprs!5039 (h!68090 zl!343))) lt!2199327)))

(declare-fun b!5396743 () Bool)

(assert (=> b!5396743 (= e!3346452 e!3346453)))

(declare-fun c!940553 () Bool)

(assert (=> b!5396743 (= c!940553 (isEmpty!33634 (exprs!5039 (h!68090 zl!343))))))

(declare-fun b!5396751 () Bool)

(assert (=> b!5396751 (= e!3346449 (isEmpty!33634 (t!374987 (exprs!5039 (h!68090 zl!343)))))))

(declare-fun b!5396752 () Bool)

(declare-fun isConcat!485 (Regex!15155) Bool)

(assert (=> b!5396752 (= e!3346451 (isConcat!485 lt!2199327))))

(assert (= (and d!1724329 res!2293799) b!5396751))

(assert (= (and d!1724329 c!940554) b!5396747))

(assert (= (and d!1724329 (not c!940554)) b!5396750))

(assert (= (and b!5396750 c!940552) b!5396748))

(assert (= (and b!5396750 (not c!940552)) b!5396745))

(assert (= (and d!1724329 res!2293800) b!5396743))

(assert (= (and b!5396743 c!940553) b!5396749))

(assert (= (and b!5396743 (not c!940553)) b!5396744))

(assert (= (and b!5396744 c!940555) b!5396746))

(assert (= (and b!5396744 (not c!940555)) b!5396752))

(declare-fun m!6421628 () Bool)

(assert (=> b!5396746 m!6421628))

(declare-fun m!6421630 () Bool)

(assert (=> b!5396743 m!6421630))

(assert (=> b!5396751 m!6421062))

(declare-fun m!6421632 () Bool)

(assert (=> b!5396752 m!6421632))

(declare-fun m!6421634 () Bool)

(assert (=> b!5396748 m!6421634))

(declare-fun m!6421636 () Bool)

(assert (=> b!5396744 m!6421636))

(assert (=> b!5396744 m!6421636))

(declare-fun m!6421640 () Bool)

(assert (=> b!5396744 m!6421640))

(declare-fun m!6421642 () Bool)

(assert (=> d!1724329 m!6421642))

(declare-fun m!6421644 () Bool)

(assert (=> d!1724329 m!6421644))

(declare-fun m!6421646 () Bool)

(assert (=> b!5396749 m!6421646))

(assert (=> b!5396089 d!1724329))

(declare-fun bs!1247851 () Bool)

(declare-fun b!5396763 () Bool)

(assert (= bs!1247851 (and b!5396763 b!5396067)))

(declare-fun lambda!280708 () Int)

(assert (=> bs!1247851 (not (= lambda!280708 lambda!280661))))

(assert (=> bs!1247851 (not (= lambda!280708 lambda!280662))))

(declare-fun bs!1247852 () Bool)

(assert (= bs!1247852 (and b!5396763 b!5396329)))

(assert (=> bs!1247852 (= (and (= (reg!15484 r!7292) (reg!15484 lt!2199203)) (= r!7292 lt!2199203)) (= lambda!280708 lambda!280680))))

(declare-fun bs!1247853 () Bool)

(assert (= bs!1247853 (and b!5396763 b!5396330)))

(assert (=> bs!1247853 (not (= lambda!280708 lambda!280681))))

(assert (=> b!5396763 true))

(assert (=> b!5396763 true))

(declare-fun bs!1247854 () Bool)

(declare-fun b!5396764 () Bool)

(assert (= bs!1247854 (and b!5396764 b!5396330)))

(declare-fun lambda!280709 () Int)

(assert (=> bs!1247854 (= (and (= (regOne!30822 r!7292) (regOne!30822 lt!2199203)) (= (regTwo!30822 r!7292) (regTwo!30822 lt!2199203))) (= lambda!280709 lambda!280681))))

(declare-fun bs!1247855 () Bool)

(assert (= bs!1247855 (and b!5396764 b!5396067)))

(assert (=> bs!1247855 (= lambda!280709 lambda!280662)))

(declare-fun bs!1247856 () Bool)

(assert (= bs!1247856 (and b!5396764 b!5396329)))

(assert (=> bs!1247856 (not (= lambda!280709 lambda!280680))))

(declare-fun bs!1247857 () Bool)

(assert (= bs!1247857 (and b!5396764 b!5396763)))

(assert (=> bs!1247857 (not (= lambda!280709 lambda!280708))))

(assert (=> bs!1247855 (not (= lambda!280709 lambda!280661))))

(assert (=> b!5396764 true))

(assert (=> b!5396764 true))

(declare-fun bm!386242 () Bool)

(declare-fun call!386248 () Bool)

(declare-fun c!940557 () Bool)

(assert (=> bm!386242 (= call!386248 (Exists!2336 (ite c!940557 lambda!280708 lambda!280709)))))

(declare-fun b!5396755 () Bool)

(declare-fun e!3346462 () Bool)

(declare-fun e!3346461 () Bool)

(assert (=> b!5396755 (= e!3346462 e!3346461)))

(declare-fun res!2293801 () Bool)

(assert (=> b!5396755 (= res!2293801 (matchRSpec!2258 (regOne!30823 r!7292) s!2326))))

(assert (=> b!5396755 (=> res!2293801 e!3346461)))

(declare-fun b!5396756 () Bool)

(declare-fun c!940559 () Bool)

(assert (=> b!5396756 (= c!940559 ((_ is Union!15155) r!7292))))

(declare-fun e!3346459 () Bool)

(assert (=> b!5396756 (= e!3346459 e!3346462)))

(declare-fun d!1724333 () Bool)

(declare-fun c!940560 () Bool)

(assert (=> d!1724333 (= c!940560 ((_ is EmptyExpr!15155) r!7292))))

(declare-fun e!3346457 () Bool)

(assert (=> d!1724333 (= (matchRSpec!2258 r!7292 s!2326) e!3346457)))

(declare-fun b!5396757 () Bool)

(declare-fun e!3346456 () Bool)

(assert (=> b!5396757 (= e!3346457 e!3346456)))

(declare-fun res!2293802 () Bool)

(assert (=> b!5396757 (= res!2293802 (not ((_ is EmptyLang!15155) r!7292)))))

(assert (=> b!5396757 (=> (not res!2293802) (not e!3346456))))

(declare-fun b!5396758 () Bool)

(declare-fun res!2293803 () Bool)

(declare-fun e!3346460 () Bool)

(assert (=> b!5396758 (=> res!2293803 e!3346460)))

(declare-fun call!386247 () Bool)

(assert (=> b!5396758 (= res!2293803 call!386247)))

(declare-fun e!3346458 () Bool)

(assert (=> b!5396758 (= e!3346458 e!3346460)))

(declare-fun b!5396759 () Bool)

(assert (=> b!5396759 (= e!3346462 e!3346458)))

(assert (=> b!5396759 (= c!940557 ((_ is Star!15155) r!7292))))

(declare-fun b!5396760 () Bool)

(assert (=> b!5396760 (= e!3346457 call!386247)))

(declare-fun b!5396761 () Bool)

(assert (=> b!5396761 (= e!3346459 (= s!2326 (Cons!61641 (c!940347 r!7292) Nil!61641)))))

(declare-fun b!5396762 () Bool)

(declare-fun c!940558 () Bool)

(assert (=> b!5396762 (= c!940558 ((_ is ElementMatch!15155) r!7292))))

(assert (=> b!5396762 (= e!3346456 e!3346459)))

(declare-fun bm!386243 () Bool)

(assert (=> bm!386243 (= call!386247 (isEmpty!33636 s!2326))))

(assert (=> b!5396763 (= e!3346460 call!386248)))

(assert (=> b!5396764 (= e!3346458 call!386248)))

(declare-fun b!5396765 () Bool)

(assert (=> b!5396765 (= e!3346461 (matchRSpec!2258 (regTwo!30823 r!7292) s!2326))))

(assert (= (and d!1724333 c!940560) b!5396760))

(assert (= (and d!1724333 (not c!940560)) b!5396757))

(assert (= (and b!5396757 res!2293802) b!5396762))

(assert (= (and b!5396762 c!940558) b!5396761))

(assert (= (and b!5396762 (not c!940558)) b!5396756))

(assert (= (and b!5396756 c!940559) b!5396755))

(assert (= (and b!5396756 (not c!940559)) b!5396759))

(assert (= (and b!5396755 (not res!2293801)) b!5396765))

(assert (= (and b!5396759 c!940557) b!5396758))

(assert (= (and b!5396759 (not c!940557)) b!5396764))

(assert (= (and b!5396758 (not res!2293803)) b!5396763))

(assert (= (or b!5396763 b!5396764) bm!386242))

(assert (= (or b!5396760 b!5396758) bm!386243))

(declare-fun m!6421650 () Bool)

(assert (=> bm!386242 m!6421650))

(declare-fun m!6421652 () Bool)

(assert (=> b!5396755 m!6421652))

(assert (=> bm!386243 m!6421152))

(declare-fun m!6421654 () Bool)

(assert (=> b!5396765 m!6421654))

(assert (=> b!5396069 d!1724333))

(declare-fun bm!386244 () Bool)

(declare-fun call!386249 () Bool)

(assert (=> bm!386244 (= call!386249 (isEmpty!33636 s!2326))))

(declare-fun b!5396766 () Bool)

(declare-fun e!3346468 () Bool)

(assert (=> b!5396766 (= e!3346468 (nullable!5324 r!7292))))

(declare-fun b!5396767 () Bool)

(declare-fun res!2293804 () Bool)

(declare-fun e!3346464 () Bool)

(assert (=> b!5396767 (=> res!2293804 e!3346464)))

(assert (=> b!5396767 (= res!2293804 (not ((_ is ElementMatch!15155) r!7292)))))

(declare-fun e!3346469 () Bool)

(assert (=> b!5396767 (= e!3346469 e!3346464)))

(declare-fun b!5396768 () Bool)

(declare-fun lt!2199329 () Bool)

(assert (=> b!5396768 (= e!3346469 (not lt!2199329))))

(declare-fun b!5396769 () Bool)

(declare-fun e!3346467 () Bool)

(assert (=> b!5396769 (= e!3346467 (= (head!11574 s!2326) (c!940347 r!7292)))))

(declare-fun b!5396770 () Bool)

(declare-fun res!2293809 () Bool)

(assert (=> b!5396770 (=> res!2293809 e!3346464)))

(assert (=> b!5396770 (= res!2293809 e!3346467)))

(declare-fun res!2293806 () Bool)

(assert (=> b!5396770 (=> (not res!2293806) (not e!3346467))))

(assert (=> b!5396770 (= res!2293806 lt!2199329)))

(declare-fun b!5396771 () Bool)

(declare-fun e!3346466 () Bool)

(assert (=> b!5396771 (= e!3346464 e!3346466)))

(declare-fun res!2293805 () Bool)

(assert (=> b!5396771 (=> (not res!2293805) (not e!3346466))))

(assert (=> b!5396771 (= res!2293805 (not lt!2199329))))

(declare-fun b!5396772 () Bool)

(assert (=> b!5396772 (= e!3346468 (matchR!7340 (derivativeStep!4248 r!7292 (head!11574 s!2326)) (tail!10671 s!2326)))))

(declare-fun d!1724337 () Bool)

(declare-fun e!3346463 () Bool)

(assert (=> d!1724337 e!3346463))

(declare-fun c!940561 () Bool)

(assert (=> d!1724337 (= c!940561 ((_ is EmptyExpr!15155) r!7292))))

(assert (=> d!1724337 (= lt!2199329 e!3346468)))

(declare-fun c!940563 () Bool)

(assert (=> d!1724337 (= c!940563 (isEmpty!33636 s!2326))))

(assert (=> d!1724337 (validRegex!6891 r!7292)))

(assert (=> d!1724337 (= (matchR!7340 r!7292 s!2326) lt!2199329)))

(declare-fun b!5396773 () Bool)

(declare-fun res!2293807 () Bool)

(assert (=> b!5396773 (=> (not res!2293807) (not e!3346467))))

(assert (=> b!5396773 (= res!2293807 (not call!386249))))

(declare-fun b!5396774 () Bool)

(declare-fun e!3346465 () Bool)

(assert (=> b!5396774 (= e!3346466 e!3346465)))

(declare-fun res!2293808 () Bool)

(assert (=> b!5396774 (=> res!2293808 e!3346465)))

(assert (=> b!5396774 (= res!2293808 call!386249)))

(declare-fun b!5396775 () Bool)

(assert (=> b!5396775 (= e!3346463 (= lt!2199329 call!386249))))

(declare-fun b!5396776 () Bool)

(declare-fun res!2293811 () Bool)

(assert (=> b!5396776 (=> res!2293811 e!3346465)))

(assert (=> b!5396776 (= res!2293811 (not (isEmpty!33636 (tail!10671 s!2326))))))

(declare-fun b!5396777 () Bool)

(declare-fun res!2293810 () Bool)

(assert (=> b!5396777 (=> (not res!2293810) (not e!3346467))))

(assert (=> b!5396777 (= res!2293810 (isEmpty!33636 (tail!10671 s!2326)))))

(declare-fun b!5396778 () Bool)

(assert (=> b!5396778 (= e!3346465 (not (= (head!11574 s!2326) (c!940347 r!7292))))))

(declare-fun b!5396779 () Bool)

(assert (=> b!5396779 (= e!3346463 e!3346469)))

(declare-fun c!940562 () Bool)

(assert (=> b!5396779 (= c!940562 ((_ is EmptyLang!15155) r!7292))))

(assert (= (and d!1724337 c!940563) b!5396766))

(assert (= (and d!1724337 (not c!940563)) b!5396772))

(assert (= (and d!1724337 c!940561) b!5396775))

(assert (= (and d!1724337 (not c!940561)) b!5396779))

(assert (= (and b!5396779 c!940562) b!5396768))

(assert (= (and b!5396779 (not c!940562)) b!5396767))

(assert (= (and b!5396767 (not res!2293804)) b!5396770))

(assert (= (and b!5396770 res!2293806) b!5396773))

(assert (= (and b!5396773 res!2293807) b!5396777))

(assert (= (and b!5396777 res!2293810) b!5396769))

(assert (= (and b!5396770 (not res!2293809)) b!5396771))

(assert (= (and b!5396771 res!2293805) b!5396774))

(assert (= (and b!5396774 (not res!2293808)) b!5396776))

(assert (= (and b!5396776 (not res!2293811)) b!5396778))

(assert (= (or b!5396775 b!5396773 b!5396774) bm!386244))

(assert (=> b!5396778 m!6421150))

(assert (=> d!1724337 m!6421152))

(assert (=> d!1724337 m!6421028))

(assert (=> bm!386244 m!6421152))

(assert (=> b!5396776 m!6421156))

(assert (=> b!5396776 m!6421156))

(assert (=> b!5396776 m!6421158))

(declare-fun m!6421656 () Bool)

(assert (=> b!5396766 m!6421656))

(assert (=> b!5396769 m!6421150))

(assert (=> b!5396777 m!6421156))

(assert (=> b!5396777 m!6421156))

(assert (=> b!5396777 m!6421158))

(assert (=> b!5396772 m!6421150))

(assert (=> b!5396772 m!6421150))

(declare-fun m!6421658 () Bool)

(assert (=> b!5396772 m!6421658))

(assert (=> b!5396772 m!6421156))

(assert (=> b!5396772 m!6421658))

(assert (=> b!5396772 m!6421156))

(declare-fun m!6421660 () Bool)

(assert (=> b!5396772 m!6421660))

(assert (=> b!5396069 d!1724337))

(declare-fun d!1724339 () Bool)

(assert (=> d!1724339 (= (matchR!7340 r!7292 s!2326) (matchRSpec!2258 r!7292 s!2326))))

(declare-fun lt!2199330 () Unit!154142)

(assert (=> d!1724339 (= lt!2199330 (choose!40609 r!7292 s!2326))))

(assert (=> d!1724339 (validRegex!6891 r!7292)))

(assert (=> d!1724339 (= (mainMatchTheorem!2258 r!7292 s!2326) lt!2199330)))

(declare-fun bs!1247858 () Bool)

(assert (= bs!1247858 d!1724339))

(assert (=> bs!1247858 m!6421050))

(assert (=> bs!1247858 m!6421048))

(declare-fun m!6421662 () Bool)

(assert (=> bs!1247858 m!6421662))

(assert (=> bs!1247858 m!6421028))

(assert (=> b!5396069 d!1724339))

(declare-fun d!1724341 () Bool)

(declare-fun lt!2199331 () Regex!15155)

(assert (=> d!1724341 (validRegex!6891 lt!2199331)))

(assert (=> d!1724341 (= lt!2199331 (generalisedUnion!1084 (unfocusZipperList!597 lt!2199222)))))

(assert (=> d!1724341 (= (unfocusZipper!897 lt!2199222) lt!2199331)))

(declare-fun bs!1247859 () Bool)

(assert (= bs!1247859 d!1724341))

(declare-fun m!6421664 () Bool)

(assert (=> bs!1247859 m!6421664))

(declare-fun m!6421666 () Bool)

(assert (=> bs!1247859 m!6421666))

(assert (=> bs!1247859 m!6421666))

(declare-fun m!6421668 () Bool)

(assert (=> bs!1247859 m!6421668))

(assert (=> b!5396070 d!1724341))

(declare-fun d!1724343 () Bool)

(assert (=> d!1724343 (= (isEmpty!33633 (t!374989 zl!343)) ((_ is Nil!61642) (t!374989 zl!343)))))

(assert (=> b!5396090 d!1724343))

(declare-fun d!1724345 () Bool)

(declare-fun c!940564 () Bool)

(assert (=> d!1724345 (= c!940564 (isEmpty!33636 s!2326))))

(declare-fun e!3346470 () Bool)

(assert (=> d!1724345 (= (matchZipper!1399 z!1189 s!2326) e!3346470)))

(declare-fun b!5396780 () Bool)

(assert (=> b!5396780 (= e!3346470 (nullableZipper!1428 z!1189))))

(declare-fun b!5396781 () Bool)

(assert (=> b!5396781 (= e!3346470 (matchZipper!1399 (derivationStepZipper!1394 z!1189 (head!11574 s!2326)) (tail!10671 s!2326)))))

(assert (= (and d!1724345 c!940564) b!5396780))

(assert (= (and d!1724345 (not c!940564)) b!5396781))

(assert (=> d!1724345 m!6421152))

(declare-fun m!6421670 () Bool)

(assert (=> b!5396780 m!6421670))

(assert (=> b!5396781 m!6421150))

(assert (=> b!5396781 m!6421150))

(declare-fun m!6421672 () Bool)

(assert (=> b!5396781 m!6421672))

(assert (=> b!5396781 m!6421156))

(assert (=> b!5396781 m!6421672))

(assert (=> b!5396781 m!6421156))

(declare-fun m!6421674 () Bool)

(assert (=> b!5396781 m!6421674))

(assert (=> b!5396071 d!1724345))

(declare-fun d!1724347 () Bool)

(declare-fun lt!2199332 () Regex!15155)

(assert (=> d!1724347 (validRegex!6891 lt!2199332)))

(assert (=> d!1724347 (= lt!2199332 (generalisedUnion!1084 (unfocusZipperList!597 (Cons!61642 lt!2199182 Nil!61642))))))

(assert (=> d!1724347 (= (unfocusZipper!897 (Cons!61642 lt!2199182 Nil!61642)) lt!2199332)))

(declare-fun bs!1247860 () Bool)

(assert (= bs!1247860 d!1724347))

(declare-fun m!6421676 () Bool)

(assert (=> bs!1247860 m!6421676))

(declare-fun m!6421678 () Bool)

(assert (=> bs!1247860 m!6421678))

(assert (=> bs!1247860 m!6421678))

(declare-fun m!6421680 () Bool)

(assert (=> bs!1247860 m!6421680))

(assert (=> b!5396083 d!1724347))

(declare-fun bs!1247861 () Bool)

(declare-fun d!1724349 () Bool)

(assert (= bs!1247861 (and d!1724349 b!5396085)))

(declare-fun lambda!280712 () Int)

(assert (=> bs!1247861 (= lambda!280712 lambda!280665)))

(declare-fun bs!1247862 () Bool)

(assert (= bs!1247862 (and d!1724349 d!1724257)))

(assert (=> bs!1247862 (= lambda!280712 lambda!280690)))

(declare-fun bs!1247863 () Bool)

(assert (= bs!1247863 (and d!1724349 d!1724279)))

(assert (=> bs!1247863 (= lambda!280712 lambda!280693)))

(declare-fun bs!1247864 () Bool)

(assert (= bs!1247864 (and d!1724349 d!1724329)))

(assert (=> bs!1247864 (= lambda!280712 lambda!280706)))

(assert (=> d!1724349 (= (inv!81134 (h!68090 zl!343)) (forall!14521 (exprs!5039 (h!68090 zl!343)) lambda!280712))))

(declare-fun bs!1247865 () Bool)

(assert (= bs!1247865 d!1724349))

(declare-fun m!6421682 () Bool)

(assert (=> bs!1247865 m!6421682))

(assert (=> b!5396064 d!1724349))

(declare-fun bs!1247866 () Bool)

(declare-fun d!1724351 () Bool)

(assert (= bs!1247866 (and d!1724351 b!5396085)))

(declare-fun lambda!280717 () Int)

(assert (=> bs!1247866 (= (= (exprs!5039 lt!2199219) lt!2199187) (= lambda!280717 lambda!280664))))

(assert (=> d!1724351 true))

(assert (=> d!1724351 (= (appendTo!14 lt!2199209 lt!2199219) (map!14117 lt!2199209 lambda!280717))))

(declare-fun bs!1247867 () Bool)

(assert (= bs!1247867 d!1724351))

(declare-fun m!6421684 () Bool)

(assert (=> bs!1247867 m!6421684))

(assert (=> b!5396085 d!1724351))

(declare-fun d!1724353 () Bool)

(assert (=> d!1724353 (forall!14521 (++!13484 lt!2199221 lt!2199187) lambda!280665)))

(declare-fun lt!2199346 () Unit!154142)

(declare-fun choose!40620 (List!61764 List!61764 Int) Unit!154142)

(assert (=> d!1724353 (= lt!2199346 (choose!40620 lt!2199221 lt!2199187 lambda!280665))))

(assert (=> d!1724353 (forall!14521 lt!2199221 lambda!280665)))

(assert (=> d!1724353 (= (lemmaConcatPreservesForall!180 lt!2199221 lt!2199187 lambda!280665) lt!2199346)))

(declare-fun bs!1247868 () Bool)

(assert (= bs!1247868 d!1724353))

(assert (=> bs!1247868 m!6421008))

(assert (=> bs!1247868 m!6421008))

(declare-fun m!6421702 () Bool)

(assert (=> bs!1247868 m!6421702))

(declare-fun m!6421704 () Bool)

(assert (=> bs!1247868 m!6421704))

(declare-fun m!6421706 () Bool)

(assert (=> bs!1247868 m!6421706))

(assert (=> b!5396085 d!1724353))

(declare-fun d!1724355 () Bool)

(declare-fun dynLambda!24295 (Int Context!9078) Context!9078)

(assert (=> d!1724355 (= (map!14117 lt!2199209 lambda!280664) (store ((as const (Array Context!9078 Bool)) false) (dynLambda!24295 lambda!280664 lt!2199180) true))))

(declare-fun lt!2199349 () Unit!154142)

(declare-fun choose!40621 ((InoxSet Context!9078) Context!9078 Int) Unit!154142)

(assert (=> d!1724355 (= lt!2199349 (choose!40621 lt!2199209 lt!2199180 lambda!280664))))

(assert (=> d!1724355 (= lt!2199209 (store ((as const (Array Context!9078 Bool)) false) lt!2199180 true))))

(assert (=> d!1724355 (= (lemmaMapOnSingletonSet!14 lt!2199209 lt!2199180 lambda!280664) lt!2199349)))

(declare-fun b_lambda!206359 () Bool)

(assert (=> (not b_lambda!206359) (not d!1724355)))

(declare-fun bs!1247871 () Bool)

(assert (= bs!1247871 d!1724355))

(declare-fun m!6421714 () Bool)

(assert (=> bs!1247871 m!6421714))

(declare-fun m!6421716 () Bool)

(assert (=> bs!1247871 m!6421716))

(declare-fun m!6421718 () Bool)

(assert (=> bs!1247871 m!6421718))

(assert (=> bs!1247871 m!6421098))

(assert (=> bs!1247871 m!6421714))

(assert (=> bs!1247871 m!6421058))

(assert (=> b!5396085 d!1724355))

(declare-fun b!5396824 () Bool)

(declare-fun e!3346493 () List!61764)

(assert (=> b!5396824 (= e!3346493 (Cons!61640 (h!68088 lt!2199221) (++!13484 (t!374987 lt!2199221) lt!2199187)))))

(declare-fun b!5396825 () Bool)

(declare-fun res!2293836 () Bool)

(declare-fun e!3346492 () Bool)

(assert (=> b!5396825 (=> (not res!2293836) (not e!3346492))))

(declare-fun lt!2199354 () List!61764)

(declare-fun size!39825 (List!61764) Int)

(assert (=> b!5396825 (= res!2293836 (= (size!39825 lt!2199354) (+ (size!39825 lt!2199221) (size!39825 lt!2199187))))))

(declare-fun d!1724363 () Bool)

(assert (=> d!1724363 e!3346492))

(declare-fun res!2293835 () Bool)

(assert (=> d!1724363 (=> (not res!2293835) (not e!3346492))))

(declare-fun content!11035 (List!61764) (InoxSet Regex!15155))

(assert (=> d!1724363 (= res!2293835 (= (content!11035 lt!2199354) ((_ map or) (content!11035 lt!2199221) (content!11035 lt!2199187))))))

(assert (=> d!1724363 (= lt!2199354 e!3346493)))

(declare-fun c!940574 () Bool)

(assert (=> d!1724363 (= c!940574 ((_ is Nil!61640) lt!2199221))))

(assert (=> d!1724363 (= (++!13484 lt!2199221 lt!2199187) lt!2199354)))

(declare-fun b!5396823 () Bool)

(assert (=> b!5396823 (= e!3346493 lt!2199187)))

(declare-fun b!5396826 () Bool)

(assert (=> b!5396826 (= e!3346492 (or (not (= lt!2199187 Nil!61640)) (= lt!2199354 lt!2199221)))))

(assert (= (and d!1724363 c!940574) b!5396823))

(assert (= (and d!1724363 (not c!940574)) b!5396824))

(assert (= (and d!1724363 res!2293835) b!5396825))

(assert (= (and b!5396825 res!2293836) b!5396826))

(declare-fun m!6421720 () Bool)

(assert (=> b!5396824 m!6421720))

(declare-fun m!6421722 () Bool)

(assert (=> b!5396825 m!6421722))

(declare-fun m!6421724 () Bool)

(assert (=> b!5396825 m!6421724))

(declare-fun m!6421726 () Bool)

(assert (=> b!5396825 m!6421726))

(declare-fun m!6421728 () Bool)

(assert (=> d!1724363 m!6421728))

(declare-fun m!6421730 () Bool)

(assert (=> d!1724363 m!6421730))

(declare-fun m!6421732 () Bool)

(assert (=> d!1724363 m!6421732))

(assert (=> b!5396085 d!1724363))

(declare-fun d!1724365 () Bool)

(declare-fun choose!40622 ((InoxSet Context!9078) Int) (InoxSet Context!9078))

(assert (=> d!1724365 (= (map!14117 lt!2199209 lambda!280664) (choose!40622 lt!2199209 lambda!280664))))

(declare-fun bs!1247872 () Bool)

(assert (= bs!1247872 d!1724365))

(declare-fun m!6421734 () Bool)

(assert (=> bs!1247872 m!6421734))

(assert (=> b!5396085 d!1724365))

(declare-fun bs!1247873 () Bool)

(declare-fun d!1724367 () Bool)

(assert (= bs!1247873 (and d!1724367 d!1724349)))

(declare-fun lambda!280721 () Int)

(assert (=> bs!1247873 (= lambda!280721 lambda!280712)))

(declare-fun bs!1247874 () Bool)

(assert (= bs!1247874 (and d!1724367 d!1724329)))

(assert (=> bs!1247874 (= lambda!280721 lambda!280706)))

(declare-fun bs!1247875 () Bool)

(assert (= bs!1247875 (and d!1724367 d!1724257)))

(assert (=> bs!1247875 (= lambda!280721 lambda!280690)))

(declare-fun bs!1247877 () Bool)

(assert (= bs!1247877 (and d!1724367 b!5396085)))

(assert (=> bs!1247877 (= lambda!280721 lambda!280665)))

(declare-fun bs!1247878 () Bool)

(assert (= bs!1247878 (and d!1724367 d!1724279)))

(assert (=> bs!1247878 (= lambda!280721 lambda!280693)))

(assert (=> d!1724367 (= (inv!81134 setElem!35093) (forall!14521 (exprs!5039 setElem!35093) lambda!280721))))

(declare-fun bs!1247881 () Bool)

(assert (= bs!1247881 d!1724367))

(declare-fun m!6421736 () Bool)

(assert (=> bs!1247881 m!6421736))

(assert (=> setNonEmpty!35093 d!1724367))

(declare-fun bm!386245 () Bool)

(declare-fun call!386250 () Bool)

(assert (=> bm!386245 (= call!386250 (isEmpty!33636 (_1!35657 lt!2199175)))))

(declare-fun b!5396827 () Bool)

(declare-fun e!3346499 () Bool)

(assert (=> b!5396827 (= e!3346499 (nullable!5324 (reg!15484 (regOne!30822 r!7292))))))

(declare-fun b!5396828 () Bool)

(declare-fun res!2293837 () Bool)

(declare-fun e!3346495 () Bool)

(assert (=> b!5396828 (=> res!2293837 e!3346495)))

(assert (=> b!5396828 (= res!2293837 (not ((_ is ElementMatch!15155) (reg!15484 (regOne!30822 r!7292)))))))

(declare-fun e!3346500 () Bool)

(assert (=> b!5396828 (= e!3346500 e!3346495)))

(declare-fun b!5396829 () Bool)

(declare-fun lt!2199356 () Bool)

(assert (=> b!5396829 (= e!3346500 (not lt!2199356))))

(declare-fun b!5396830 () Bool)

(declare-fun e!3346498 () Bool)

(assert (=> b!5396830 (= e!3346498 (= (head!11574 (_1!35657 lt!2199175)) (c!940347 (reg!15484 (regOne!30822 r!7292)))))))

(declare-fun b!5396831 () Bool)

(declare-fun res!2293842 () Bool)

(assert (=> b!5396831 (=> res!2293842 e!3346495)))

(assert (=> b!5396831 (= res!2293842 e!3346498)))

(declare-fun res!2293839 () Bool)

(assert (=> b!5396831 (=> (not res!2293839) (not e!3346498))))

(assert (=> b!5396831 (= res!2293839 lt!2199356)))

(declare-fun b!5396832 () Bool)

(declare-fun e!3346497 () Bool)

(assert (=> b!5396832 (= e!3346495 e!3346497)))

(declare-fun res!2293838 () Bool)

(assert (=> b!5396832 (=> (not res!2293838) (not e!3346497))))

(assert (=> b!5396832 (= res!2293838 (not lt!2199356))))

(declare-fun b!5396833 () Bool)

(assert (=> b!5396833 (= e!3346499 (matchR!7340 (derivativeStep!4248 (reg!15484 (regOne!30822 r!7292)) (head!11574 (_1!35657 lt!2199175))) (tail!10671 (_1!35657 lt!2199175))))))

(declare-fun d!1724369 () Bool)

(declare-fun e!3346494 () Bool)

(assert (=> d!1724369 e!3346494))

(declare-fun c!940575 () Bool)

(assert (=> d!1724369 (= c!940575 ((_ is EmptyExpr!15155) (reg!15484 (regOne!30822 r!7292))))))

(assert (=> d!1724369 (= lt!2199356 e!3346499)))

(declare-fun c!940577 () Bool)

(assert (=> d!1724369 (= c!940577 (isEmpty!33636 (_1!35657 lt!2199175)))))

(assert (=> d!1724369 (validRegex!6891 (reg!15484 (regOne!30822 r!7292)))))

(assert (=> d!1724369 (= (matchR!7340 (reg!15484 (regOne!30822 r!7292)) (_1!35657 lt!2199175)) lt!2199356)))

(declare-fun b!5396834 () Bool)

(declare-fun res!2293840 () Bool)

(assert (=> b!5396834 (=> (not res!2293840) (not e!3346498))))

(assert (=> b!5396834 (= res!2293840 (not call!386250))))

(declare-fun b!5396835 () Bool)

(declare-fun e!3346496 () Bool)

(assert (=> b!5396835 (= e!3346497 e!3346496)))

(declare-fun res!2293841 () Bool)

(assert (=> b!5396835 (=> res!2293841 e!3346496)))

(assert (=> b!5396835 (= res!2293841 call!386250)))

(declare-fun b!5396836 () Bool)

(assert (=> b!5396836 (= e!3346494 (= lt!2199356 call!386250))))

(declare-fun b!5396837 () Bool)

(declare-fun res!2293844 () Bool)

(assert (=> b!5396837 (=> res!2293844 e!3346496)))

(assert (=> b!5396837 (= res!2293844 (not (isEmpty!33636 (tail!10671 (_1!35657 lt!2199175)))))))

(declare-fun b!5396838 () Bool)

(declare-fun res!2293843 () Bool)

(assert (=> b!5396838 (=> (not res!2293843) (not e!3346498))))

(assert (=> b!5396838 (= res!2293843 (isEmpty!33636 (tail!10671 (_1!35657 lt!2199175))))))

(declare-fun b!5396839 () Bool)

(assert (=> b!5396839 (= e!3346496 (not (= (head!11574 (_1!35657 lt!2199175)) (c!940347 (reg!15484 (regOne!30822 r!7292))))))))

(declare-fun b!5396840 () Bool)

(assert (=> b!5396840 (= e!3346494 e!3346500)))

(declare-fun c!940576 () Bool)

(assert (=> b!5396840 (= c!940576 ((_ is EmptyLang!15155) (reg!15484 (regOne!30822 r!7292))))))

(assert (= (and d!1724369 c!940577) b!5396827))

(assert (= (and d!1724369 (not c!940577)) b!5396833))

(assert (= (and d!1724369 c!940575) b!5396836))

(assert (= (and d!1724369 (not c!940575)) b!5396840))

(assert (= (and b!5396840 c!940576) b!5396829))

(assert (= (and b!5396840 (not c!940576)) b!5396828))

(assert (= (and b!5396828 (not res!2293837)) b!5396831))

(assert (= (and b!5396831 res!2293839) b!5396834))

(assert (= (and b!5396834 res!2293840) b!5396838))

(assert (= (and b!5396838 res!2293843) b!5396830))

(assert (= (and b!5396831 (not res!2293842)) b!5396832))

(assert (= (and b!5396832 res!2293838) b!5396835))

(assert (= (and b!5396835 (not res!2293841)) b!5396837))

(assert (= (and b!5396837 (not res!2293844)) b!5396839))

(assert (= (or b!5396836 b!5396834 b!5396835) bm!386245))

(declare-fun m!6421742 () Bool)

(assert (=> b!5396839 m!6421742))

(declare-fun m!6421744 () Bool)

(assert (=> d!1724369 m!6421744))

(assert (=> d!1724369 m!6420994))

(assert (=> bm!386245 m!6421744))

(declare-fun m!6421746 () Bool)

(assert (=> b!5396837 m!6421746))

(assert (=> b!5396837 m!6421746))

(declare-fun m!6421748 () Bool)

(assert (=> b!5396837 m!6421748))

(declare-fun m!6421750 () Bool)

(assert (=> b!5396827 m!6421750))

(assert (=> b!5396830 m!6421742))

(assert (=> b!5396838 m!6421746))

(assert (=> b!5396838 m!6421746))

(assert (=> b!5396838 m!6421748))

(assert (=> b!5396833 m!6421742))

(assert (=> b!5396833 m!6421742))

(declare-fun m!6421752 () Bool)

(assert (=> b!5396833 m!6421752))

(assert (=> b!5396833 m!6421746))

(assert (=> b!5396833 m!6421752))

(assert (=> b!5396833 m!6421746))

(declare-fun m!6421754 () Bool)

(assert (=> b!5396833 m!6421754))

(assert (=> b!5396086 d!1724369))

(declare-fun d!1724373 () Bool)

(declare-fun res!2293860 () Bool)

(declare-fun e!3346521 () Bool)

(assert (=> d!1724373 (=> res!2293860 e!3346521)))

(assert (=> d!1724373 (= res!2293860 ((_ is ElementMatch!15155) (reg!15484 (regOne!30822 r!7292))))))

(assert (=> d!1724373 (= (validRegex!6891 (reg!15484 (regOne!30822 r!7292))) e!3346521)))

(declare-fun b!5396863 () Bool)

(declare-fun e!3346518 () Bool)

(declare-fun e!3346519 () Bool)

(assert (=> b!5396863 (= e!3346518 e!3346519)))

(declare-fun res!2293861 () Bool)

(assert (=> b!5396863 (=> (not res!2293861) (not e!3346519))))

(declare-fun call!386259 () Bool)

(assert (=> b!5396863 (= res!2293861 call!386259)))

(declare-fun b!5396864 () Bool)

(declare-fun e!3346520 () Bool)

(declare-fun e!3346522 () Bool)

(assert (=> b!5396864 (= e!3346520 e!3346522)))

(declare-fun c!940583 () Bool)

(assert (=> b!5396864 (= c!940583 ((_ is Union!15155) (reg!15484 (regOne!30822 r!7292))))))

(declare-fun bm!386252 () Bool)

(declare-fun call!386258 () Bool)

(assert (=> bm!386252 (= call!386259 call!386258)))

(declare-fun b!5396865 () Bool)

(declare-fun e!3346523 () Bool)

(assert (=> b!5396865 (= e!3346523 call!386258)))

(declare-fun b!5396866 () Bool)

(declare-fun res!2293863 () Bool)

(declare-fun e!3346517 () Bool)

(assert (=> b!5396866 (=> (not res!2293863) (not e!3346517))))

(assert (=> b!5396866 (= res!2293863 call!386259)))

(assert (=> b!5396866 (= e!3346522 e!3346517)))

(declare-fun bm!386253 () Bool)

(declare-fun call!386257 () Bool)

(assert (=> bm!386253 (= call!386257 (validRegex!6891 (ite c!940583 (regTwo!30823 (reg!15484 (regOne!30822 r!7292))) (regTwo!30822 (reg!15484 (regOne!30822 r!7292))))))))

(declare-fun b!5396867 () Bool)

(assert (=> b!5396867 (= e!3346520 e!3346523)))

(declare-fun res!2293862 () Bool)

(assert (=> b!5396867 (= res!2293862 (not (nullable!5324 (reg!15484 (reg!15484 (regOne!30822 r!7292))))))))

(assert (=> b!5396867 (=> (not res!2293862) (not e!3346523))))

(declare-fun b!5396868 () Bool)

(assert (=> b!5396868 (= e!3346521 e!3346520)))

(declare-fun c!940582 () Bool)

(assert (=> b!5396868 (= c!940582 ((_ is Star!15155) (reg!15484 (regOne!30822 r!7292))))))

(declare-fun b!5396869 () Bool)

(assert (=> b!5396869 (= e!3346517 call!386257)))

(declare-fun b!5396870 () Bool)

(declare-fun res!2293859 () Bool)

(assert (=> b!5396870 (=> res!2293859 e!3346518)))

(assert (=> b!5396870 (= res!2293859 (not ((_ is Concat!24000) (reg!15484 (regOne!30822 r!7292)))))))

(assert (=> b!5396870 (= e!3346522 e!3346518)))

(declare-fun bm!386254 () Bool)

(assert (=> bm!386254 (= call!386258 (validRegex!6891 (ite c!940582 (reg!15484 (reg!15484 (regOne!30822 r!7292))) (ite c!940583 (regOne!30823 (reg!15484 (regOne!30822 r!7292))) (regOne!30822 (reg!15484 (regOne!30822 r!7292)))))))))

(declare-fun b!5396871 () Bool)

(assert (=> b!5396871 (= e!3346519 call!386257)))

(assert (= (and d!1724373 (not res!2293860)) b!5396868))

(assert (= (and b!5396868 c!940582) b!5396867))

(assert (= (and b!5396868 (not c!940582)) b!5396864))

(assert (= (and b!5396867 res!2293862) b!5396865))

(assert (= (and b!5396864 c!940583) b!5396866))

(assert (= (and b!5396864 (not c!940583)) b!5396870))

(assert (= (and b!5396866 res!2293863) b!5396869))

(assert (= (and b!5396870 (not res!2293859)) b!5396863))

(assert (= (and b!5396863 res!2293861) b!5396871))

(assert (= (or b!5396869 b!5396871) bm!386253))

(assert (= (or b!5396866 b!5396863) bm!386252))

(assert (= (or b!5396865 bm!386252) bm!386254))

(declare-fun m!6421756 () Bool)

(assert (=> bm!386253 m!6421756))

(declare-fun m!6421758 () Bool)

(assert (=> b!5396867 m!6421758))

(declare-fun m!6421760 () Bool)

(assert (=> bm!386254 m!6421760))

(assert (=> b!5396086 d!1724373))

(assert (=> b!5396086 d!1724363))

(declare-fun bm!386255 () Bool)

(declare-fun call!386260 () Bool)

(assert (=> bm!386255 (= call!386260 (isEmpty!33636 (_2!35657 lt!2199175)))))

(declare-fun b!5396872 () Bool)

(declare-fun e!3346529 () Bool)

(assert (=> b!5396872 (= e!3346529 (nullable!5324 lt!2199216))))

(declare-fun b!5396873 () Bool)

(declare-fun res!2293864 () Bool)

(declare-fun e!3346525 () Bool)

(assert (=> b!5396873 (=> res!2293864 e!3346525)))

(assert (=> b!5396873 (= res!2293864 (not ((_ is ElementMatch!15155) lt!2199216)))))

(declare-fun e!3346530 () Bool)

(assert (=> b!5396873 (= e!3346530 e!3346525)))

(declare-fun b!5396874 () Bool)

(declare-fun lt!2199359 () Bool)

(assert (=> b!5396874 (= e!3346530 (not lt!2199359))))

(declare-fun b!5396875 () Bool)

(declare-fun e!3346528 () Bool)

(assert (=> b!5396875 (= e!3346528 (= (head!11574 (_2!35657 lt!2199175)) (c!940347 lt!2199216)))))

(declare-fun b!5396876 () Bool)

(declare-fun res!2293869 () Bool)

(assert (=> b!5396876 (=> res!2293869 e!3346525)))

(assert (=> b!5396876 (= res!2293869 e!3346528)))

(declare-fun res!2293866 () Bool)

(assert (=> b!5396876 (=> (not res!2293866) (not e!3346528))))

(assert (=> b!5396876 (= res!2293866 lt!2199359)))

(declare-fun b!5396877 () Bool)

(declare-fun e!3346527 () Bool)

(assert (=> b!5396877 (= e!3346525 e!3346527)))

(declare-fun res!2293865 () Bool)

(assert (=> b!5396877 (=> (not res!2293865) (not e!3346527))))

(assert (=> b!5396877 (= res!2293865 (not lt!2199359))))

(declare-fun b!5396878 () Bool)

(assert (=> b!5396878 (= e!3346529 (matchR!7340 (derivativeStep!4248 lt!2199216 (head!11574 (_2!35657 lt!2199175))) (tail!10671 (_2!35657 lt!2199175))))))

(declare-fun d!1724375 () Bool)

(declare-fun e!3346524 () Bool)

(assert (=> d!1724375 e!3346524))

(declare-fun c!940584 () Bool)

(assert (=> d!1724375 (= c!940584 ((_ is EmptyExpr!15155) lt!2199216))))

(assert (=> d!1724375 (= lt!2199359 e!3346529)))

(declare-fun c!940586 () Bool)

(assert (=> d!1724375 (= c!940586 (isEmpty!33636 (_2!35657 lt!2199175)))))

(assert (=> d!1724375 (validRegex!6891 lt!2199216)))

(assert (=> d!1724375 (= (matchR!7340 lt!2199216 (_2!35657 lt!2199175)) lt!2199359)))

(declare-fun b!5396879 () Bool)

(declare-fun res!2293867 () Bool)

(assert (=> b!5396879 (=> (not res!2293867) (not e!3346528))))

(assert (=> b!5396879 (= res!2293867 (not call!386260))))

(declare-fun b!5396880 () Bool)

(declare-fun e!3346526 () Bool)

(assert (=> b!5396880 (= e!3346527 e!3346526)))

(declare-fun res!2293868 () Bool)

(assert (=> b!5396880 (=> res!2293868 e!3346526)))

(assert (=> b!5396880 (= res!2293868 call!386260)))

(declare-fun b!5396881 () Bool)

(assert (=> b!5396881 (= e!3346524 (= lt!2199359 call!386260))))

(declare-fun b!5396882 () Bool)

(declare-fun res!2293871 () Bool)

(assert (=> b!5396882 (=> res!2293871 e!3346526)))

(assert (=> b!5396882 (= res!2293871 (not (isEmpty!33636 (tail!10671 (_2!35657 lt!2199175)))))))

(declare-fun b!5396883 () Bool)

(declare-fun res!2293870 () Bool)

(assert (=> b!5396883 (=> (not res!2293870) (not e!3346528))))

(assert (=> b!5396883 (= res!2293870 (isEmpty!33636 (tail!10671 (_2!35657 lt!2199175))))))

(declare-fun b!5396884 () Bool)

(assert (=> b!5396884 (= e!3346526 (not (= (head!11574 (_2!35657 lt!2199175)) (c!940347 lt!2199216))))))

(declare-fun b!5396885 () Bool)

(assert (=> b!5396885 (= e!3346524 e!3346530)))

(declare-fun c!940585 () Bool)

(assert (=> b!5396885 (= c!940585 ((_ is EmptyLang!15155) lt!2199216))))

(assert (= (and d!1724375 c!940586) b!5396872))

(assert (= (and d!1724375 (not c!940586)) b!5396878))

(assert (= (and d!1724375 c!940584) b!5396881))

(assert (= (and d!1724375 (not c!940584)) b!5396885))

(assert (= (and b!5396885 c!940585) b!5396874))

(assert (= (and b!5396885 (not c!940585)) b!5396873))

(assert (= (and b!5396873 (not res!2293864)) b!5396876))

(assert (= (and b!5396876 res!2293866) b!5396879))

(assert (= (and b!5396879 res!2293867) b!5396883))

(assert (= (and b!5396883 res!2293870) b!5396875))

(assert (= (and b!5396876 (not res!2293869)) b!5396877))

(assert (= (and b!5396877 res!2293865) b!5396880))

(assert (= (and b!5396880 (not res!2293868)) b!5396882))

(assert (= (and b!5396882 (not res!2293871)) b!5396884))

(assert (= (or b!5396881 b!5396879 b!5396880) bm!386255))

(declare-fun m!6421762 () Bool)

(assert (=> b!5396884 m!6421762))

(declare-fun m!6421764 () Bool)

(assert (=> d!1724375 m!6421764))

(declare-fun m!6421766 () Bool)

(assert (=> d!1724375 m!6421766))

(assert (=> bm!386255 m!6421764))

(declare-fun m!6421768 () Bool)

(assert (=> b!5396882 m!6421768))

(assert (=> b!5396882 m!6421768))

(declare-fun m!6421770 () Bool)

(assert (=> b!5396882 m!6421770))

(declare-fun m!6421772 () Bool)

(assert (=> b!5396872 m!6421772))

(assert (=> b!5396875 m!6421762))

(assert (=> b!5396883 m!6421768))

(assert (=> b!5396883 m!6421768))

(assert (=> b!5396883 m!6421770))

(assert (=> b!5396878 m!6421762))

(assert (=> b!5396878 m!6421762))

(declare-fun m!6421774 () Bool)

(assert (=> b!5396878 m!6421774))

(assert (=> b!5396878 m!6421768))

(assert (=> b!5396878 m!6421774))

(assert (=> b!5396878 m!6421768))

(declare-fun m!6421776 () Bool)

(assert (=> b!5396878 m!6421776))

(assert (=> b!5396086 d!1724375))

(declare-fun d!1724377 () Bool)

(declare-fun c!940587 () Bool)

(assert (=> d!1724377 (= c!940587 (isEmpty!33636 lt!2199200))))

(declare-fun e!3346533 () Bool)

(assert (=> d!1724377 (= (matchZipper!1399 (store ((as const (Array Context!9078 Bool)) false) (Context!9079 (++!13484 lt!2199221 lt!2199187)) true) lt!2199200) e!3346533)))

(declare-fun b!5396890 () Bool)

(assert (=> b!5396890 (= e!3346533 (nullableZipper!1428 (store ((as const (Array Context!9078 Bool)) false) (Context!9079 (++!13484 lt!2199221 lt!2199187)) true)))))

(declare-fun b!5396891 () Bool)

(assert (=> b!5396891 (= e!3346533 (matchZipper!1399 (derivationStepZipper!1394 (store ((as const (Array Context!9078 Bool)) false) (Context!9079 (++!13484 lt!2199221 lt!2199187)) true) (head!11574 lt!2199200)) (tail!10671 lt!2199200)))))

(assert (= (and d!1724377 c!940587) b!5396890))

(assert (= (and d!1724377 (not c!940587)) b!5396891))

(declare-fun m!6421778 () Bool)

(assert (=> d!1724377 m!6421778))

(assert (=> b!5396890 m!6420996))

(declare-fun m!6421780 () Bool)

(assert (=> b!5396890 m!6421780))

(declare-fun m!6421782 () Bool)

(assert (=> b!5396891 m!6421782))

(assert (=> b!5396891 m!6420996))

(assert (=> b!5396891 m!6421782))

(declare-fun m!6421784 () Bool)

(assert (=> b!5396891 m!6421784))

(declare-fun m!6421786 () Bool)

(assert (=> b!5396891 m!6421786))

(assert (=> b!5396891 m!6421784))

(assert (=> b!5396891 m!6421786))

(declare-fun m!6421788 () Bool)

(assert (=> b!5396891 m!6421788))

(assert (=> b!5396086 d!1724377))

(declare-fun d!1724379 () Bool)

(assert (=> d!1724379 (= (matchR!7340 (reg!15484 (regOne!30822 r!7292)) (_1!35657 lt!2199175)) (matchZipper!1399 lt!2199209 (_1!35657 lt!2199175)))))

(declare-fun lt!2199363 () Unit!154142)

(declare-fun choose!40625 ((InoxSet Context!9078) List!61766 Regex!15155 List!61765) Unit!154142)

(assert (=> d!1724379 (= lt!2199363 (choose!40625 lt!2199209 lt!2199206 (reg!15484 (regOne!30822 r!7292)) (_1!35657 lt!2199175)))))

(assert (=> d!1724379 (validRegex!6891 (reg!15484 (regOne!30822 r!7292)))))

(assert (=> d!1724379 (= (theoremZipperRegexEquiv!469 lt!2199209 lt!2199206 (reg!15484 (regOne!30822 r!7292)) (_1!35657 lt!2199175)) lt!2199363)))

(declare-fun bs!1247893 () Bool)

(assert (= bs!1247893 d!1724379))

(assert (=> bs!1247893 m!6421006))

(assert (=> bs!1247893 m!6421110))

(declare-fun m!6421810 () Bool)

(assert (=> bs!1247893 m!6421810))

(assert (=> bs!1247893 m!6420994))

(assert (=> b!5396086 d!1724379))

(assert (=> b!5396086 d!1724353))

(declare-fun bs!1247897 () Bool)

(declare-fun d!1724389 () Bool)

(assert (= bs!1247897 (and d!1724389 d!1724349)))

(declare-fun lambda!280735 () Int)

(assert (=> bs!1247897 (= lambda!280735 lambda!280712)))

(declare-fun bs!1247898 () Bool)

(assert (= bs!1247898 (and d!1724389 d!1724329)))

(assert (=> bs!1247898 (= lambda!280735 lambda!280706)))

(declare-fun bs!1247899 () Bool)

(assert (= bs!1247899 (and d!1724389 d!1724257)))

(assert (=> bs!1247899 (= lambda!280735 lambda!280690)))

(declare-fun bs!1247900 () Bool)

(assert (= bs!1247900 (and d!1724389 b!5396085)))

(assert (=> bs!1247900 (= lambda!280735 lambda!280665)))

(declare-fun bs!1247901 () Bool)

(assert (= bs!1247901 (and d!1724389 d!1724367)))

(assert (=> bs!1247901 (= lambda!280735 lambda!280721)))

(declare-fun bs!1247902 () Bool)

(assert (= bs!1247902 (and d!1724389 d!1724279)))

(assert (=> bs!1247902 (= lambda!280735 lambda!280693)))

(assert (=> d!1724389 (matchZipper!1399 (store ((as const (Array Context!9078 Bool)) false) (Context!9079 (++!13484 (exprs!5039 lt!2199180) (exprs!5039 lt!2199219))) true) (++!13483 (_1!35657 lt!2199175) (_2!35657 lt!2199175)))))

(declare-fun lt!2199373 () Unit!154142)

(assert (=> d!1724389 (= lt!2199373 (lemmaConcatPreservesForall!180 (exprs!5039 lt!2199180) (exprs!5039 lt!2199219) lambda!280735))))

(declare-fun lt!2199372 () Unit!154142)

(declare-fun choose!40626 (Context!9078 Context!9078 List!61765 List!61765) Unit!154142)

(assert (=> d!1724389 (= lt!2199372 (choose!40626 lt!2199180 lt!2199219 (_1!35657 lt!2199175) (_2!35657 lt!2199175)))))

(assert (=> d!1724389 (matchZipper!1399 (store ((as const (Array Context!9078 Bool)) false) lt!2199180 true) (_1!35657 lt!2199175))))

(assert (=> d!1724389 (= (lemmaConcatenateContextMatchesConcatOfStrings!28 lt!2199180 lt!2199219 (_1!35657 lt!2199175) (_2!35657 lt!2199175)) lt!2199372)))

(declare-fun bs!1247905 () Bool)

(assert (= bs!1247905 d!1724389))

(declare-fun m!6421824 () Bool)

(assert (=> bs!1247905 m!6421824))

(assert (=> bs!1247905 m!6421082))

(declare-fun m!6421826 () Bool)

(assert (=> bs!1247905 m!6421826))

(declare-fun m!6421828 () Bool)

(assert (=> bs!1247905 m!6421828))

(assert (=> bs!1247905 m!6421082))

(assert (=> bs!1247905 m!6421098))

(declare-fun m!6421830 () Bool)

(assert (=> bs!1247905 m!6421830))

(declare-fun m!6421832 () Bool)

(assert (=> bs!1247905 m!6421832))

(assert (=> bs!1247905 m!6421824))

(assert (=> bs!1247905 m!6421098))

(declare-fun m!6421834 () Bool)

(assert (=> bs!1247905 m!6421834))

(assert (=> b!5396086 d!1724389))

(declare-fun d!1724399 () Bool)

(assert (=> d!1724399 (= (matchR!7340 lt!2199216 (_2!35657 lt!2199175)) (matchZipper!1399 lt!2199185 (_2!35657 lt!2199175)))))

(declare-fun lt!2199376 () Unit!154142)

(assert (=> d!1724399 (= lt!2199376 (choose!40625 lt!2199185 lt!2199222 lt!2199216 (_2!35657 lt!2199175)))))

(assert (=> d!1724399 (validRegex!6891 lt!2199216)))

(assert (=> d!1724399 (= (theoremZipperRegexEquiv!469 lt!2199185 lt!2199222 lt!2199216 (_2!35657 lt!2199175)) lt!2199376)))

(declare-fun bs!1247906 () Bool)

(assert (= bs!1247906 d!1724399))

(assert (=> bs!1247906 m!6421004))

(assert (=> bs!1247906 m!6420980))

(declare-fun m!6421836 () Bool)

(assert (=> bs!1247906 m!6421836))

(assert (=> bs!1247906 m!6421766))

(assert (=> b!5396086 d!1724399))

(declare-fun b!5396909 () Bool)

(declare-fun e!3346544 () (InoxSet Context!9078))

(assert (=> b!5396909 (= e!3346544 ((as const (Array Context!9078 Bool)) false))))

(declare-fun b!5396910 () Bool)

(declare-fun call!386267 () (InoxSet Context!9078))

(assert (=> b!5396910 (= e!3346544 call!386267)))

(declare-fun e!3346543 () (InoxSet Context!9078))

(declare-fun b!5396911 () Bool)

(assert (=> b!5396911 (= e!3346543 ((_ map or) call!386267 (derivationStepZipperUp!527 (Context!9079 (t!374987 (exprs!5039 lt!2199180))) (h!68089 s!2326))))))

(declare-fun bm!386262 () Bool)

(assert (=> bm!386262 (= call!386267 (derivationStepZipperDown!603 (h!68088 (exprs!5039 lt!2199180)) (Context!9079 (t!374987 (exprs!5039 lt!2199180))) (h!68089 s!2326)))))

(declare-fun d!1724401 () Bool)

(declare-fun c!940597 () Bool)

(declare-fun e!3346542 () Bool)

(assert (=> d!1724401 (= c!940597 e!3346542)))

(declare-fun res!2293877 () Bool)

(assert (=> d!1724401 (=> (not res!2293877) (not e!3346542))))

(assert (=> d!1724401 (= res!2293877 ((_ is Cons!61640) (exprs!5039 lt!2199180)))))

(assert (=> d!1724401 (= (derivationStepZipperUp!527 lt!2199180 (h!68089 s!2326)) e!3346543)))

(declare-fun b!5396912 () Bool)

(assert (=> b!5396912 (= e!3346542 (nullable!5324 (h!68088 (exprs!5039 lt!2199180))))))

(declare-fun b!5396913 () Bool)

(assert (=> b!5396913 (= e!3346543 e!3346544)))

(declare-fun c!940596 () Bool)

(assert (=> b!5396913 (= c!940596 ((_ is Cons!61640) (exprs!5039 lt!2199180)))))

(assert (= (and d!1724401 res!2293877) b!5396912))

(assert (= (and d!1724401 c!940597) b!5396911))

(assert (= (and d!1724401 (not c!940597)) b!5396913))

(assert (= (and b!5396913 c!940596) b!5396910))

(assert (= (and b!5396913 (not c!940596)) b!5396909))

(assert (= (or b!5396911 b!5396910) bm!386262))

(declare-fun m!6421838 () Bool)

(assert (=> b!5396911 m!6421838))

(declare-fun m!6421842 () Bool)

(assert (=> bm!386262 m!6421842))

(declare-fun m!6421844 () Bool)

(assert (=> b!5396912 m!6421844))

(assert (=> b!5396087 d!1724401))

(declare-fun d!1724403 () Bool)

(declare-fun lt!2199377 () Regex!15155)

(assert (=> d!1724403 (validRegex!6891 lt!2199377)))

(assert (=> d!1724403 (= lt!2199377 (generalisedUnion!1084 (unfocusZipperList!597 lt!2199206)))))

(assert (=> d!1724403 (= (unfocusZipper!897 lt!2199206) lt!2199377)))

(declare-fun bs!1247907 () Bool)

(assert (= bs!1247907 d!1724403))

(declare-fun m!6421848 () Bool)

(assert (=> bs!1247907 m!6421848))

(declare-fun m!6421852 () Bool)

(assert (=> bs!1247907 m!6421852))

(assert (=> bs!1247907 m!6421852))

(declare-fun m!6421854 () Bool)

(assert (=> bs!1247907 m!6421854))

(assert (=> b!5396087 d!1724403))

(declare-fun d!1724405 () Bool)

(assert (=> d!1724405 (= (flatMap!882 lt!2199209 lambda!280663) (choose!40614 lt!2199209 lambda!280663))))

(declare-fun bs!1247908 () Bool)

(assert (= bs!1247908 d!1724405))

(declare-fun m!6421858 () Bool)

(assert (=> bs!1247908 m!6421858))

(assert (=> b!5396087 d!1724405))

(declare-fun d!1724409 () Bool)

(assert (=> d!1724409 (= (flatMap!882 lt!2199209 lambda!280663) (dynLambda!24294 lambda!280663 lt!2199180))))

(declare-fun lt!2199378 () Unit!154142)

(assert (=> d!1724409 (= lt!2199378 (choose!40615 lt!2199209 lt!2199180 lambda!280663))))

(assert (=> d!1724409 (= lt!2199209 (store ((as const (Array Context!9078 Bool)) false) lt!2199180 true))))

(assert (=> d!1724409 (= (lemmaFlatMapOnSingletonSet!414 lt!2199209 lt!2199180 lambda!280663) lt!2199378)))

(declare-fun b_lambda!206363 () Bool)

(assert (=> (not b_lambda!206363) (not d!1724409)))

(declare-fun bs!1247909 () Bool)

(assert (= bs!1247909 d!1724409))

(assert (=> bs!1247909 m!6421106))

(declare-fun m!6421866 () Bool)

(assert (=> bs!1247909 m!6421866))

(declare-fun m!6421868 () Bool)

(assert (=> bs!1247909 m!6421868))

(assert (=> bs!1247909 m!6421098))

(assert (=> b!5396087 d!1724409))

(declare-fun d!1724411 () Bool)

(assert (=> d!1724411 (= (flatMap!882 lt!2199185 lambda!280663) (dynLambda!24294 lambda!280663 lt!2199219))))

(declare-fun lt!2199379 () Unit!154142)

(assert (=> d!1724411 (= lt!2199379 (choose!40615 lt!2199185 lt!2199219 lambda!280663))))

(assert (=> d!1724411 (= lt!2199185 (store ((as const (Array Context!9078 Bool)) false) lt!2199219 true))))

(assert (=> d!1724411 (= (lemmaFlatMapOnSingletonSet!414 lt!2199185 lt!2199219 lambda!280663) lt!2199379)))

(declare-fun b_lambda!206365 () Bool)

(assert (=> (not b_lambda!206365) (not d!1724411)))

(declare-fun bs!1247910 () Bool)

(assert (= bs!1247910 d!1724411))

(assert (=> bs!1247910 m!6421108))

(declare-fun m!6421870 () Bool)

(assert (=> bs!1247910 m!6421870))

(declare-fun m!6421872 () Bool)

(assert (=> bs!1247910 m!6421872))

(assert (=> bs!1247910 m!6421094))

(assert (=> b!5396087 d!1724411))

(declare-fun b!5396920 () Bool)

(declare-fun e!3346550 () (InoxSet Context!9078))

(assert (=> b!5396920 (= e!3346550 ((as const (Array Context!9078 Bool)) false))))

(declare-fun b!5396921 () Bool)

(declare-fun call!386268 () (InoxSet Context!9078))

(assert (=> b!5396921 (= e!3346550 call!386268)))

(declare-fun b!5396922 () Bool)

(declare-fun e!3346549 () (InoxSet Context!9078))

(assert (=> b!5396922 (= e!3346549 ((_ map or) call!386268 (derivationStepZipperUp!527 (Context!9079 (t!374987 (exprs!5039 lt!2199219))) (h!68089 s!2326))))))

(declare-fun bm!386263 () Bool)

(assert (=> bm!386263 (= call!386268 (derivationStepZipperDown!603 (h!68088 (exprs!5039 lt!2199219)) (Context!9079 (t!374987 (exprs!5039 lt!2199219))) (h!68089 s!2326)))))

(declare-fun d!1724413 () Bool)

(declare-fun c!940600 () Bool)

(declare-fun e!3346548 () Bool)

(assert (=> d!1724413 (= c!940600 e!3346548)))

(declare-fun res!2293878 () Bool)

(assert (=> d!1724413 (=> (not res!2293878) (not e!3346548))))

(assert (=> d!1724413 (= res!2293878 ((_ is Cons!61640) (exprs!5039 lt!2199219)))))

(assert (=> d!1724413 (= (derivationStepZipperUp!527 lt!2199219 (h!68089 s!2326)) e!3346549)))

(declare-fun b!5396923 () Bool)

(assert (=> b!5396923 (= e!3346548 (nullable!5324 (h!68088 (exprs!5039 lt!2199219))))))

(declare-fun b!5396924 () Bool)

(assert (=> b!5396924 (= e!3346549 e!3346550)))

(declare-fun c!940599 () Bool)

(assert (=> b!5396924 (= c!940599 ((_ is Cons!61640) (exprs!5039 lt!2199219)))))

(assert (= (and d!1724413 res!2293878) b!5396923))

(assert (= (and d!1724413 c!940600) b!5396922))

(assert (= (and d!1724413 (not c!940600)) b!5396924))

(assert (= (and b!5396924 c!940599) b!5396921))

(assert (= (and b!5396924 (not c!940599)) b!5396920))

(assert (= (or b!5396922 b!5396921) bm!386263))

(declare-fun m!6421874 () Bool)

(assert (=> b!5396922 m!6421874))

(declare-fun m!6421876 () Bool)

(assert (=> bm!386263 m!6421876))

(declare-fun m!6421878 () Bool)

(assert (=> b!5396923 m!6421878))

(assert (=> b!5396087 d!1724413))

(declare-fun d!1724415 () Bool)

(assert (=> d!1724415 (= (flatMap!882 lt!2199185 lambda!280663) (choose!40614 lt!2199185 lambda!280663))))

(declare-fun bs!1247911 () Bool)

(assert (= bs!1247911 d!1724415))

(declare-fun m!6421880 () Bool)

(assert (=> bs!1247911 m!6421880))

(assert (=> b!5396087 d!1724415))

(declare-fun b!5396993 () Bool)

(declare-fun e!3346584 () Bool)

(declare-fun lt!2199387 () Option!15266)

(assert (=> b!5396993 (= e!3346584 (not (isDefined!11969 lt!2199387)))))

(declare-fun b!5396994 () Bool)

(declare-fun e!3346582 () Bool)

(assert (=> b!5396994 (= e!3346582 (= (++!13483 (_1!35657 (get!21235 lt!2199387)) (_2!35657 (get!21235 lt!2199387))) s!2326))))

(declare-fun b!5396995 () Bool)

(declare-fun res!2293893 () Bool)

(assert (=> b!5396995 (=> (not res!2293893) (not e!3346582))))

(assert (=> b!5396995 (= res!2293893 (matchR!7340 (regTwo!30822 r!7292) (_2!35657 (get!21235 lt!2199387))))))

(declare-fun b!5396996 () Bool)

(declare-fun e!3346583 () Option!15266)

(assert (=> b!5396996 (= e!3346583 (Some!15265 (tuple2!64709 Nil!61641 s!2326)))))

(declare-fun d!1724417 () Bool)

(assert (=> d!1724417 e!3346584))

(declare-fun res!2293889 () Bool)

(assert (=> d!1724417 (=> res!2293889 e!3346584)))

(assert (=> d!1724417 (= res!2293889 e!3346582)))

(declare-fun res!2293891 () Bool)

(assert (=> d!1724417 (=> (not res!2293891) (not e!3346582))))

(assert (=> d!1724417 (= res!2293891 (isDefined!11969 lt!2199387))))

(assert (=> d!1724417 (= lt!2199387 e!3346583)))

(declare-fun c!940605 () Bool)

(declare-fun e!3346586 () Bool)

(assert (=> d!1724417 (= c!940605 e!3346586)))

(declare-fun res!2293890 () Bool)

(assert (=> d!1724417 (=> (not res!2293890) (not e!3346586))))

(assert (=> d!1724417 (= res!2293890 (matchR!7340 (regOne!30822 r!7292) Nil!61641))))

(assert (=> d!1724417 (validRegex!6891 (regOne!30822 r!7292))))

(assert (=> d!1724417 (= (findConcatSeparation!1680 (regOne!30822 r!7292) (regTwo!30822 r!7292) Nil!61641 s!2326 s!2326) lt!2199387)))

(declare-fun b!5396997 () Bool)

(declare-fun e!3346585 () Option!15266)

(assert (=> b!5396997 (= e!3346583 e!3346585)))

(declare-fun c!940606 () Bool)

(assert (=> b!5396997 (= c!940606 ((_ is Nil!61641) s!2326))))

(declare-fun b!5396998 () Bool)

(assert (=> b!5396998 (= e!3346585 None!15265)))

(declare-fun b!5396999 () Bool)

(assert (=> b!5396999 (= e!3346586 (matchR!7340 (regTwo!30822 r!7292) s!2326))))

(declare-fun b!5397000 () Bool)

(declare-fun lt!2199388 () Unit!154142)

(declare-fun lt!2199389 () Unit!154142)

(assert (=> b!5397000 (= lt!2199388 lt!2199389)))

(assert (=> b!5397000 (= (++!13483 (++!13483 Nil!61641 (Cons!61641 (h!68089 s!2326) Nil!61641)) (t!374988 s!2326)) s!2326)))

(assert (=> b!5397000 (= lt!2199389 (lemmaMoveElementToOtherListKeepsConcatEq!1823 Nil!61641 (h!68089 s!2326) (t!374988 s!2326) s!2326))))

(assert (=> b!5397000 (= e!3346585 (findConcatSeparation!1680 (regOne!30822 r!7292) (regTwo!30822 r!7292) (++!13483 Nil!61641 (Cons!61641 (h!68089 s!2326) Nil!61641)) (t!374988 s!2326) s!2326))))

(declare-fun b!5397001 () Bool)

(declare-fun res!2293892 () Bool)

(assert (=> b!5397001 (=> (not res!2293892) (not e!3346582))))

(assert (=> b!5397001 (= res!2293892 (matchR!7340 (regOne!30822 r!7292) (_1!35657 (get!21235 lt!2199387))))))

(assert (= (and d!1724417 res!2293890) b!5396999))

(assert (= (and d!1724417 c!940605) b!5396996))

(assert (= (and d!1724417 (not c!940605)) b!5396997))

(assert (= (and b!5396997 c!940606) b!5396998))

(assert (= (and b!5396997 (not c!940606)) b!5397000))

(assert (= (and d!1724417 res!2293891) b!5397001))

(assert (= (and b!5397001 res!2293892) b!5396995))

(assert (= (and b!5396995 res!2293893) b!5396994))

(assert (= (and d!1724417 (not res!2293889)) b!5396993))

(declare-fun m!6421890 () Bool)

(assert (=> b!5396999 m!6421890))

(assert (=> b!5397000 m!6421358))

(assert (=> b!5397000 m!6421358))

(assert (=> b!5397000 m!6421360))

(assert (=> b!5397000 m!6421362))

(assert (=> b!5397000 m!6421358))

(declare-fun m!6421892 () Bool)

(assert (=> b!5397000 m!6421892))

(declare-fun m!6421894 () Bool)

(assert (=> d!1724417 m!6421894))

(declare-fun m!6421896 () Bool)

(assert (=> d!1724417 m!6421896))

(declare-fun m!6421898 () Bool)

(assert (=> d!1724417 m!6421898))

(declare-fun m!6421900 () Bool)

(assert (=> b!5397001 m!6421900))

(declare-fun m!6421902 () Bool)

(assert (=> b!5397001 m!6421902))

(assert (=> b!5396995 m!6421900))

(declare-fun m!6421904 () Bool)

(assert (=> b!5396995 m!6421904))

(assert (=> b!5396993 m!6421894))

(assert (=> b!5396994 m!6421900))

(declare-fun m!6421906 () Bool)

(assert (=> b!5396994 m!6421906))

(assert (=> b!5396067 d!1724417))

(declare-fun d!1724429 () Bool)

(declare-fun choose!40630 (Int) Bool)

(assert (=> d!1724429 (= (Exists!2336 lambda!280661) (choose!40630 lambda!280661))))

(declare-fun bs!1247917 () Bool)

(assert (= bs!1247917 d!1724429))

(declare-fun m!6421908 () Bool)

(assert (=> bs!1247917 m!6421908))

(assert (=> b!5396067 d!1724429))

(declare-fun d!1724431 () Bool)

(assert (=> d!1724431 (= (Exists!2336 lambda!280662) (choose!40630 lambda!280662))))

(declare-fun bs!1247918 () Bool)

(assert (= bs!1247918 d!1724431))

(declare-fun m!6421910 () Bool)

(assert (=> bs!1247918 m!6421910))

(assert (=> b!5396067 d!1724431))

(declare-fun bs!1247919 () Bool)

(declare-fun d!1724433 () Bool)

(assert (= bs!1247919 (and d!1724433 b!5396067)))

(declare-fun lambda!280738 () Int)

(assert (=> bs!1247919 (not (= lambda!280738 lambda!280662))))

(declare-fun bs!1247920 () Bool)

(assert (= bs!1247920 (and d!1724433 b!5396329)))

(assert (=> bs!1247920 (not (= lambda!280738 lambda!280680))))

(declare-fun bs!1247921 () Bool)

(assert (= bs!1247921 (and d!1724433 b!5396763)))

(assert (=> bs!1247921 (not (= lambda!280738 lambda!280708))))

(assert (=> bs!1247919 (= lambda!280738 lambda!280661)))

(declare-fun bs!1247922 () Bool)

(assert (= bs!1247922 (and d!1724433 b!5396330)))

(assert (=> bs!1247922 (not (= lambda!280738 lambda!280681))))

(declare-fun bs!1247923 () Bool)

(assert (= bs!1247923 (and d!1724433 b!5396764)))

(assert (=> bs!1247923 (not (= lambda!280738 lambda!280709))))

(assert (=> d!1724433 true))

(assert (=> d!1724433 true))

(assert (=> d!1724433 true))

(assert (=> d!1724433 (= (isDefined!11969 (findConcatSeparation!1680 (regOne!30822 r!7292) (regTwo!30822 r!7292) Nil!61641 s!2326 s!2326)) (Exists!2336 lambda!280738))))

(declare-fun lt!2199392 () Unit!154142)

(declare-fun choose!40631 (Regex!15155 Regex!15155 List!61765) Unit!154142)

(assert (=> d!1724433 (= lt!2199392 (choose!40631 (regOne!30822 r!7292) (regTwo!30822 r!7292) s!2326))))

(assert (=> d!1724433 (validRegex!6891 (regOne!30822 r!7292))))

(assert (=> d!1724433 (= (lemmaFindConcatSeparationEquivalentToExists!1444 (regOne!30822 r!7292) (regTwo!30822 r!7292) s!2326) lt!2199392)))

(declare-fun bs!1247924 () Bool)

(assert (= bs!1247924 d!1724433))

(declare-fun m!6421912 () Bool)

(assert (=> bs!1247924 m!6421912))

(assert (=> bs!1247924 m!6420968))

(assert (=> bs!1247924 m!6420970))

(declare-fun m!6421914 () Bool)

(assert (=> bs!1247924 m!6421914))

(assert (=> bs!1247924 m!6420968))

(assert (=> bs!1247924 m!6421898))

(assert (=> b!5396067 d!1724433))

(declare-fun bs!1247925 () Bool)

(declare-fun d!1724435 () Bool)

(assert (= bs!1247925 (and d!1724435 b!5396067)))

(declare-fun lambda!280743 () Int)

(assert (=> bs!1247925 (not (= lambda!280743 lambda!280662))))

(declare-fun bs!1247926 () Bool)

(assert (= bs!1247926 (and d!1724435 b!5396329)))

(assert (=> bs!1247926 (not (= lambda!280743 lambda!280680))))

(declare-fun bs!1247927 () Bool)

(assert (= bs!1247927 (and d!1724435 d!1724433)))

(assert (=> bs!1247927 (= lambda!280743 lambda!280738)))

(declare-fun bs!1247928 () Bool)

(assert (= bs!1247928 (and d!1724435 b!5396763)))

(assert (=> bs!1247928 (not (= lambda!280743 lambda!280708))))

(assert (=> bs!1247925 (= lambda!280743 lambda!280661)))

(declare-fun bs!1247929 () Bool)

(assert (= bs!1247929 (and d!1724435 b!5396330)))

(assert (=> bs!1247929 (not (= lambda!280743 lambda!280681))))

(declare-fun bs!1247930 () Bool)

(assert (= bs!1247930 (and d!1724435 b!5396764)))

(assert (=> bs!1247930 (not (= lambda!280743 lambda!280709))))

(assert (=> d!1724435 true))

(assert (=> d!1724435 true))

(assert (=> d!1724435 true))

(declare-fun lambda!280744 () Int)

(assert (=> bs!1247925 (= lambda!280744 lambda!280662)))

(assert (=> bs!1247926 (not (= lambda!280744 lambda!280680))))

(assert (=> bs!1247927 (not (= lambda!280744 lambda!280738))))

(assert (=> bs!1247928 (not (= lambda!280744 lambda!280708))))

(assert (=> bs!1247925 (not (= lambda!280744 lambda!280661))))

(declare-fun bs!1247931 () Bool)

(assert (= bs!1247931 d!1724435))

(assert (=> bs!1247931 (not (= lambda!280744 lambda!280743))))

(assert (=> bs!1247929 (= (and (= (regOne!30822 r!7292) (regOne!30822 lt!2199203)) (= (regTwo!30822 r!7292) (regTwo!30822 lt!2199203))) (= lambda!280744 lambda!280681))))

(assert (=> bs!1247930 (= lambda!280744 lambda!280709)))

(assert (=> d!1724435 true))

(assert (=> d!1724435 true))

(assert (=> d!1724435 true))

(assert (=> d!1724435 (= (Exists!2336 lambda!280743) (Exists!2336 lambda!280744))))

(declare-fun lt!2199395 () Unit!154142)

(declare-fun choose!40632 (Regex!15155 Regex!15155 List!61765) Unit!154142)

(assert (=> d!1724435 (= lt!2199395 (choose!40632 (regOne!30822 r!7292) (regTwo!30822 r!7292) s!2326))))

(assert (=> d!1724435 (validRegex!6891 (regOne!30822 r!7292))))

(assert (=> d!1724435 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!990 (regOne!30822 r!7292) (regTwo!30822 r!7292) s!2326) lt!2199395)))

(declare-fun m!6421916 () Bool)

(assert (=> bs!1247931 m!6421916))

(declare-fun m!6421918 () Bool)

(assert (=> bs!1247931 m!6421918))

(declare-fun m!6421920 () Bool)

(assert (=> bs!1247931 m!6421920))

(assert (=> bs!1247931 m!6421898))

(assert (=> b!5396067 d!1724435))

(declare-fun d!1724437 () Bool)

(assert (=> d!1724437 (= (isDefined!11969 (findConcatSeparation!1680 (regOne!30822 r!7292) (regTwo!30822 r!7292) Nil!61641 s!2326 s!2326)) (not (isEmpty!33637 (findConcatSeparation!1680 (regOne!30822 r!7292) (regTwo!30822 r!7292) Nil!61641 s!2326 s!2326))))))

(declare-fun bs!1247932 () Bool)

(assert (= bs!1247932 d!1724437))

(assert (=> bs!1247932 m!6420968))

(declare-fun m!6421922 () Bool)

(assert (=> bs!1247932 m!6421922))

(assert (=> b!5396067 d!1724437))

(declare-fun d!1724439 () Bool)

(declare-fun res!2293907 () Bool)

(declare-fun e!3346597 () Bool)

(assert (=> d!1724439 (=> res!2293907 e!3346597)))

(assert (=> d!1724439 (= res!2293907 ((_ is ElementMatch!15155) r!7292))))

(assert (=> d!1724439 (= (validRegex!6891 r!7292) e!3346597)))

(declare-fun b!5397014 () Bool)

(declare-fun e!3346594 () Bool)

(declare-fun e!3346595 () Bool)

(assert (=> b!5397014 (= e!3346594 e!3346595)))

(declare-fun res!2293908 () Bool)

(assert (=> b!5397014 (=> (not res!2293908) (not e!3346595))))

(declare-fun call!386271 () Bool)

(assert (=> b!5397014 (= res!2293908 call!386271)))

(declare-fun b!5397015 () Bool)

(declare-fun e!3346596 () Bool)

(declare-fun e!3346598 () Bool)

(assert (=> b!5397015 (= e!3346596 e!3346598)))

(declare-fun c!940608 () Bool)

(assert (=> b!5397015 (= c!940608 ((_ is Union!15155) r!7292))))

(declare-fun bm!386264 () Bool)

(declare-fun call!386270 () Bool)

(assert (=> bm!386264 (= call!386271 call!386270)))

(declare-fun b!5397016 () Bool)

(declare-fun e!3346599 () Bool)

(assert (=> b!5397016 (= e!3346599 call!386270)))

(declare-fun b!5397017 () Bool)

(declare-fun res!2293910 () Bool)

(declare-fun e!3346593 () Bool)

(assert (=> b!5397017 (=> (not res!2293910) (not e!3346593))))

(assert (=> b!5397017 (= res!2293910 call!386271)))

(assert (=> b!5397017 (= e!3346598 e!3346593)))

(declare-fun bm!386265 () Bool)

(declare-fun call!386269 () Bool)

(assert (=> bm!386265 (= call!386269 (validRegex!6891 (ite c!940608 (regTwo!30823 r!7292) (regTwo!30822 r!7292))))))

(declare-fun b!5397018 () Bool)

(assert (=> b!5397018 (= e!3346596 e!3346599)))

(declare-fun res!2293909 () Bool)

(assert (=> b!5397018 (= res!2293909 (not (nullable!5324 (reg!15484 r!7292))))))

(assert (=> b!5397018 (=> (not res!2293909) (not e!3346599))))

(declare-fun b!5397019 () Bool)

(assert (=> b!5397019 (= e!3346597 e!3346596)))

(declare-fun c!940607 () Bool)

(assert (=> b!5397019 (= c!940607 ((_ is Star!15155) r!7292))))

(declare-fun b!5397020 () Bool)

(assert (=> b!5397020 (= e!3346593 call!386269)))

(declare-fun b!5397021 () Bool)

(declare-fun res!2293906 () Bool)

(assert (=> b!5397021 (=> res!2293906 e!3346594)))

(assert (=> b!5397021 (= res!2293906 (not ((_ is Concat!24000) r!7292)))))

(assert (=> b!5397021 (= e!3346598 e!3346594)))

(declare-fun bm!386266 () Bool)

(assert (=> bm!386266 (= call!386270 (validRegex!6891 (ite c!940607 (reg!15484 r!7292) (ite c!940608 (regOne!30823 r!7292) (regOne!30822 r!7292)))))))

(declare-fun b!5397022 () Bool)

(assert (=> b!5397022 (= e!3346595 call!386269)))

(assert (= (and d!1724439 (not res!2293907)) b!5397019))

(assert (= (and b!5397019 c!940607) b!5397018))

(assert (= (and b!5397019 (not c!940607)) b!5397015))

(assert (= (and b!5397018 res!2293909) b!5397016))

(assert (= (and b!5397015 c!940608) b!5397017))

(assert (= (and b!5397015 (not c!940608)) b!5397021))

(assert (= (and b!5397017 res!2293910) b!5397020))

(assert (= (and b!5397021 (not res!2293906)) b!5397014))

(assert (= (and b!5397014 res!2293908) b!5397022))

(assert (= (or b!5397020 b!5397022) bm!386265))

(assert (= (or b!5397017 b!5397014) bm!386264))

(assert (= (or b!5397016 bm!386264) bm!386266))

(declare-fun m!6421924 () Bool)

(assert (=> bm!386265 m!6421924))

(declare-fun m!6421926 () Bool)

(assert (=> b!5397018 m!6421926))

(declare-fun m!6421928 () Bool)

(assert (=> bm!386266 m!6421928))

(assert (=> start!566850 d!1724439))

(declare-fun bm!386267 () Bool)

(declare-fun call!386277 () List!61764)

(declare-fun call!386272 () List!61764)

(assert (=> bm!386267 (= call!386277 call!386272)))

(declare-fun b!5397023 () Bool)

(declare-fun c!940611 () Bool)

(assert (=> b!5397023 (= c!940611 ((_ is Star!15155) (reg!15484 (regOne!30822 r!7292))))))

(declare-fun e!3346604 () (InoxSet Context!9078))

(declare-fun e!3346601 () (InoxSet Context!9078))

(assert (=> b!5397023 (= e!3346604 e!3346601)))

(declare-fun d!1724441 () Bool)

(declare-fun c!940613 () Bool)

(assert (=> d!1724441 (= c!940613 (and ((_ is ElementMatch!15155) (reg!15484 (regOne!30822 r!7292))) (= (c!940347 (reg!15484 (regOne!30822 r!7292))) (h!68089 s!2326))))))

(declare-fun e!3346605 () (InoxSet Context!9078))

(assert (=> d!1724441 (= (derivationStepZipperDown!603 (reg!15484 (regOne!30822 r!7292)) lt!2199219 (h!68089 s!2326)) e!3346605)))

(declare-fun b!5397024 () Bool)

(declare-fun c!940610 () Bool)

(declare-fun e!3346603 () Bool)

(assert (=> b!5397024 (= c!940610 e!3346603)))

(declare-fun res!2293911 () Bool)

(assert (=> b!5397024 (=> (not res!2293911) (not e!3346603))))

(assert (=> b!5397024 (= res!2293911 ((_ is Concat!24000) (reg!15484 (regOne!30822 r!7292))))))

(declare-fun e!3346602 () (InoxSet Context!9078))

(declare-fun e!3346600 () (InoxSet Context!9078))

(assert (=> b!5397024 (= e!3346602 e!3346600)))

(declare-fun b!5397025 () Bool)

(declare-fun call!386273 () (InoxSet Context!9078))

(declare-fun call!386274 () (InoxSet Context!9078))

(assert (=> b!5397025 (= e!3346600 ((_ map or) call!386273 call!386274))))

(declare-fun bm!386268 () Bool)

(declare-fun c!940609 () Bool)

(assert (=> bm!386268 (= call!386273 (derivationStepZipperDown!603 (ite c!940609 (regOne!30823 (reg!15484 (regOne!30822 r!7292))) (regOne!30822 (reg!15484 (regOne!30822 r!7292)))) (ite c!940609 lt!2199219 (Context!9079 call!386272)) (h!68089 s!2326)))))

(declare-fun b!5397026 () Bool)

(assert (=> b!5397026 (= e!3346605 e!3346602)))

(assert (=> b!5397026 (= c!940609 ((_ is Union!15155) (reg!15484 (regOne!30822 r!7292))))))

(declare-fun b!5397027 () Bool)

(assert (=> b!5397027 (= e!3346601 ((as const (Array Context!9078 Bool)) false))))

(declare-fun bm!386269 () Bool)

(declare-fun call!386275 () (InoxSet Context!9078))

(assert (=> bm!386269 (= call!386275 call!386274)))

(declare-fun bm!386270 () Bool)

(declare-fun c!940612 () Bool)

(assert (=> bm!386270 (= call!386272 ($colon$colon!1478 (exprs!5039 lt!2199219) (ite (or c!940610 c!940612) (regTwo!30822 (reg!15484 (regOne!30822 r!7292))) (reg!15484 (regOne!30822 r!7292)))))))

(declare-fun b!5397028 () Bool)

(assert (=> b!5397028 (= e!3346603 (nullable!5324 (regOne!30822 (reg!15484 (regOne!30822 r!7292)))))))

(declare-fun b!5397029 () Bool)

(assert (=> b!5397029 (= e!3346600 e!3346604)))

(assert (=> b!5397029 (= c!940612 ((_ is Concat!24000) (reg!15484 (regOne!30822 r!7292))))))

(declare-fun bm!386271 () Bool)

(declare-fun call!386276 () (InoxSet Context!9078))

(assert (=> bm!386271 (= call!386274 call!386276)))

(declare-fun b!5397030 () Bool)

(assert (=> b!5397030 (= e!3346605 (store ((as const (Array Context!9078 Bool)) false) lt!2199219 true))))

(declare-fun b!5397031 () Bool)

(assert (=> b!5397031 (= e!3346601 call!386275)))

(declare-fun bm!386272 () Bool)

(assert (=> bm!386272 (= call!386276 (derivationStepZipperDown!603 (ite c!940609 (regTwo!30823 (reg!15484 (regOne!30822 r!7292))) (ite c!940610 (regTwo!30822 (reg!15484 (regOne!30822 r!7292))) (ite c!940612 (regOne!30822 (reg!15484 (regOne!30822 r!7292))) (reg!15484 (reg!15484 (regOne!30822 r!7292)))))) (ite (or c!940609 c!940610) lt!2199219 (Context!9079 call!386277)) (h!68089 s!2326)))))

(declare-fun b!5397032 () Bool)

(assert (=> b!5397032 (= e!3346602 ((_ map or) call!386273 call!386276))))

(declare-fun b!5397033 () Bool)

(assert (=> b!5397033 (= e!3346604 call!386275)))

(assert (= (and d!1724441 c!940613) b!5397030))

(assert (= (and d!1724441 (not c!940613)) b!5397026))

(assert (= (and b!5397026 c!940609) b!5397032))

(assert (= (and b!5397026 (not c!940609)) b!5397024))

(assert (= (and b!5397024 res!2293911) b!5397028))

(assert (= (and b!5397024 c!940610) b!5397025))

(assert (= (and b!5397024 (not c!940610)) b!5397029))

(assert (= (and b!5397029 c!940612) b!5397033))

(assert (= (and b!5397029 (not c!940612)) b!5397023))

(assert (= (and b!5397023 c!940611) b!5397031))

(assert (= (and b!5397023 (not c!940611)) b!5397027))

(assert (= (or b!5397033 b!5397031) bm!386267))

(assert (= (or b!5397033 b!5397031) bm!386269))

(assert (= (or b!5397025 bm!386267) bm!386270))

(assert (= (or b!5397025 bm!386269) bm!386271))

(assert (= (or b!5397032 bm!386271) bm!386272))

(assert (= (or b!5397032 b!5397025) bm!386268))

(assert (=> b!5397030 m!6421094))

(declare-fun m!6421930 () Bool)

(assert (=> bm!386272 m!6421930))

(declare-fun m!6421932 () Bool)

(assert (=> bm!386270 m!6421932))

(declare-fun m!6421934 () Bool)

(assert (=> b!5397028 m!6421934))

(declare-fun m!6421936 () Bool)

(assert (=> bm!386268 m!6421936))

(assert (=> b!5396058 d!1724441))

(declare-fun d!1724443 () Bool)

(assert (=> d!1724443 (= (flatMap!882 lt!2199208 lambda!280663) (choose!40614 lt!2199208 lambda!280663))))

(declare-fun bs!1247933 () Bool)

(assert (= bs!1247933 d!1724443))

(declare-fun m!6421938 () Bool)

(assert (=> bs!1247933 m!6421938))

(assert (=> b!5396078 d!1724443))

(declare-fun b!5397034 () Bool)

(declare-fun e!3346608 () (InoxSet Context!9078))

(assert (=> b!5397034 (= e!3346608 ((as const (Array Context!9078 Bool)) false))))

(declare-fun b!5397035 () Bool)

(declare-fun call!386278 () (InoxSet Context!9078))

(assert (=> b!5397035 (= e!3346608 call!386278)))

(declare-fun b!5397036 () Bool)

(declare-fun e!3346607 () (InoxSet Context!9078))

(assert (=> b!5397036 (= e!3346607 ((_ map or) call!386278 (derivationStepZipperUp!527 (Context!9079 (t!374987 (exprs!5039 lt!2199182))) (h!68089 s!2326))))))

(declare-fun bm!386273 () Bool)

(assert (=> bm!386273 (= call!386278 (derivationStepZipperDown!603 (h!68088 (exprs!5039 lt!2199182)) (Context!9079 (t!374987 (exprs!5039 lt!2199182))) (h!68089 s!2326)))))

(declare-fun d!1724445 () Bool)

(declare-fun c!940615 () Bool)

(declare-fun e!3346606 () Bool)

(assert (=> d!1724445 (= c!940615 e!3346606)))

(declare-fun res!2293912 () Bool)

(assert (=> d!1724445 (=> (not res!2293912) (not e!3346606))))

(assert (=> d!1724445 (= res!2293912 ((_ is Cons!61640) (exprs!5039 lt!2199182)))))

(assert (=> d!1724445 (= (derivationStepZipperUp!527 lt!2199182 (h!68089 s!2326)) e!3346607)))

(declare-fun b!5397037 () Bool)

(assert (=> b!5397037 (= e!3346606 (nullable!5324 (h!68088 (exprs!5039 lt!2199182))))))

(declare-fun b!5397038 () Bool)

(assert (=> b!5397038 (= e!3346607 e!3346608)))

(declare-fun c!940614 () Bool)

(assert (=> b!5397038 (= c!940614 ((_ is Cons!61640) (exprs!5039 lt!2199182)))))

(assert (= (and d!1724445 res!2293912) b!5397037))

(assert (= (and d!1724445 c!940615) b!5397036))

(assert (= (and d!1724445 (not c!940615)) b!5397038))

(assert (= (and b!5397038 c!940614) b!5397035))

(assert (= (and b!5397038 (not c!940614)) b!5397034))

(assert (= (or b!5397036 b!5397035) bm!386273))

(declare-fun m!6421940 () Bool)

(assert (=> b!5397036 m!6421940))

(declare-fun m!6421942 () Bool)

(assert (=> bm!386273 m!6421942))

(declare-fun m!6421944 () Bool)

(assert (=> b!5397037 m!6421944))

(assert (=> b!5396078 d!1724445))

(declare-fun d!1724447 () Bool)

(assert (=> d!1724447 (= (flatMap!882 lt!2199208 lambda!280663) (dynLambda!24294 lambda!280663 lt!2199182))))

(declare-fun lt!2199396 () Unit!154142)

(assert (=> d!1724447 (= lt!2199396 (choose!40615 lt!2199208 lt!2199182 lambda!280663))))

(assert (=> d!1724447 (= lt!2199208 (store ((as const (Array Context!9078 Bool)) false) lt!2199182 true))))

(assert (=> d!1724447 (= (lemmaFlatMapOnSingletonSet!414 lt!2199208 lt!2199182 lambda!280663) lt!2199396)))

(declare-fun b_lambda!206377 () Bool)

(assert (=> (not b_lambda!206377) (not d!1724447)))

(declare-fun bs!1247934 () Bool)

(assert (= bs!1247934 d!1724447))

(assert (=> bs!1247934 m!6421074))

(declare-fun m!6421946 () Bool)

(assert (=> bs!1247934 m!6421946))

(declare-fun m!6421948 () Bool)

(assert (=> bs!1247934 m!6421948))

(assert (=> bs!1247934 m!6421076))

(assert (=> b!5396078 d!1724447))

(declare-fun bs!1247935 () Bool)

(declare-fun d!1724449 () Bool)

(assert (= bs!1247935 (and d!1724449 b!5396076)))

(declare-fun lambda!280747 () Int)

(assert (=> bs!1247935 (= lambda!280747 lambda!280663)))

(assert (=> d!1724449 true))

(assert (=> d!1724449 (= (derivationStepZipper!1394 lt!2199208 (h!68089 s!2326)) (flatMap!882 lt!2199208 lambda!280747))))

(declare-fun bs!1247936 () Bool)

(assert (= bs!1247936 d!1724449))

(declare-fun m!6421950 () Bool)

(assert (=> bs!1247936 m!6421950))

(assert (=> b!5396078 d!1724449))

(declare-fun d!1724451 () Bool)

(declare-fun e!3346611 () Bool)

(assert (=> d!1724451 e!3346611))

(declare-fun res!2293915 () Bool)

(assert (=> d!1724451 (=> (not res!2293915) (not e!3346611))))

(declare-fun lt!2199399 () List!61766)

(declare-fun noDuplicate!1380 (List!61766) Bool)

(assert (=> d!1724451 (= res!2293915 (noDuplicate!1380 lt!2199399))))

(declare-fun choose!40633 ((InoxSet Context!9078)) List!61766)

(assert (=> d!1724451 (= lt!2199399 (choose!40633 z!1189))))

(assert (=> d!1724451 (= (toList!8939 z!1189) lt!2199399)))

(declare-fun b!5397043 () Bool)

(declare-fun content!11036 (List!61766) (InoxSet Context!9078))

(assert (=> b!5397043 (= e!3346611 (= (content!11036 lt!2199399) z!1189))))

(assert (= (and d!1724451 res!2293915) b!5397043))

(declare-fun m!6421952 () Bool)

(assert (=> d!1724451 m!6421952))

(declare-fun m!6421954 () Bool)

(assert (=> d!1724451 m!6421954))

(declare-fun m!6421956 () Bool)

(assert (=> b!5397043 m!6421956))

(assert (=> b!5396079 d!1724451))

(declare-fun d!1724453 () Bool)

(declare-fun c!940618 () Bool)

(assert (=> d!1724453 (= c!940618 (isEmpty!33636 (_1!35657 lt!2199175)))))

(declare-fun e!3346612 () Bool)

(assert (=> d!1724453 (= (matchZipper!1399 lt!2199209 (_1!35657 lt!2199175)) e!3346612)))

(declare-fun b!5397044 () Bool)

(assert (=> b!5397044 (= e!3346612 (nullableZipper!1428 lt!2199209))))

(declare-fun b!5397045 () Bool)

(assert (=> b!5397045 (= e!3346612 (matchZipper!1399 (derivationStepZipper!1394 lt!2199209 (head!11574 (_1!35657 lt!2199175))) (tail!10671 (_1!35657 lt!2199175))))))

(assert (= (and d!1724453 c!940618) b!5397044))

(assert (= (and d!1724453 (not c!940618)) b!5397045))

(assert (=> d!1724453 m!6421744))

(declare-fun m!6421958 () Bool)

(assert (=> b!5397044 m!6421958))

(assert (=> b!5397045 m!6421742))

(assert (=> b!5397045 m!6421742))

(declare-fun m!6421960 () Bool)

(assert (=> b!5397045 m!6421960))

(assert (=> b!5397045 m!6421746))

(assert (=> b!5397045 m!6421960))

(assert (=> b!5397045 m!6421746))

(declare-fun m!6421962 () Bool)

(assert (=> b!5397045 m!6421962))

(assert (=> b!5396060 d!1724453))

(declare-fun d!1724455 () Bool)

(assert (=> d!1724455 (= (nullable!5324 (regOne!30822 (regOne!30822 r!7292))) (nullableFct!1580 (regOne!30822 (regOne!30822 r!7292))))))

(declare-fun bs!1247937 () Bool)

(assert (= bs!1247937 d!1724455))

(declare-fun m!6421964 () Bool)

(assert (=> bs!1247937 m!6421964))

(assert (=> b!5396081 d!1724455))

(declare-fun d!1724457 () Bool)

(declare-fun c!940619 () Bool)

(assert (=> d!1724457 (= c!940619 (isEmpty!33636 (t!374988 s!2326)))))

(declare-fun e!3346613 () Bool)

(assert (=> d!1724457 (= (matchZipper!1399 lt!2199183 (t!374988 s!2326)) e!3346613)))

(declare-fun b!5397046 () Bool)

(assert (=> b!5397046 (= e!3346613 (nullableZipper!1428 lt!2199183))))

(declare-fun b!5397047 () Bool)

(assert (=> b!5397047 (= e!3346613 (matchZipper!1399 (derivationStepZipper!1394 lt!2199183 (head!11574 (t!374988 s!2326))) (tail!10671 (t!374988 s!2326))))))

(assert (= (and d!1724457 c!940619) b!5397046))

(assert (= (and d!1724457 (not c!940619)) b!5397047))

(assert (=> d!1724457 m!6421112))

(declare-fun m!6421966 () Bool)

(assert (=> b!5397046 m!6421966))

(assert (=> b!5397047 m!6421116))

(assert (=> b!5397047 m!6421116))

(declare-fun m!6421968 () Bool)

(assert (=> b!5397047 m!6421968))

(assert (=> b!5397047 m!6421120))

(assert (=> b!5397047 m!6421968))

(assert (=> b!5397047 m!6421120))

(declare-fun m!6421970 () Bool)

(assert (=> b!5397047 m!6421970))

(assert (=> b!5396062 d!1724457))

(declare-fun d!1724459 () Bool)

(declare-fun c!940620 () Bool)

(assert (=> d!1724459 (= c!940620 (isEmpty!33636 s!2326))))

(declare-fun e!3346614 () Bool)

(assert (=> d!1724459 (= (matchZipper!1399 lt!2199208 s!2326) e!3346614)))

(declare-fun b!5397048 () Bool)

(assert (=> b!5397048 (= e!3346614 (nullableZipper!1428 lt!2199208))))

(declare-fun b!5397049 () Bool)

(assert (=> b!5397049 (= e!3346614 (matchZipper!1399 (derivationStepZipper!1394 lt!2199208 (head!11574 s!2326)) (tail!10671 s!2326)))))

(assert (= (and d!1724459 c!940620) b!5397048))

(assert (= (and d!1724459 (not c!940620)) b!5397049))

(assert (=> d!1724459 m!6421152))

(declare-fun m!6421972 () Bool)

(assert (=> b!5397048 m!6421972))

(assert (=> b!5397049 m!6421150))

(assert (=> b!5397049 m!6421150))

(declare-fun m!6421974 () Bool)

(assert (=> b!5397049 m!6421974))

(assert (=> b!5397049 m!6421156))

(assert (=> b!5397049 m!6421974))

(assert (=> b!5397049 m!6421156))

(declare-fun m!6421976 () Bool)

(assert (=> b!5397049 m!6421976))

(assert (=> b!5396062 d!1724459))

(declare-fun d!1724461 () Bool)

(declare-fun c!940621 () Bool)

(assert (=> d!1724461 (= c!940621 (isEmpty!33636 (_2!35657 lt!2199175)))))

(declare-fun e!3346615 () Bool)

(assert (=> d!1724461 (= (matchZipper!1399 lt!2199185 (_2!35657 lt!2199175)) e!3346615)))

(declare-fun b!5397050 () Bool)

(assert (=> b!5397050 (= e!3346615 (nullableZipper!1428 lt!2199185))))

(declare-fun b!5397051 () Bool)

(assert (=> b!5397051 (= e!3346615 (matchZipper!1399 (derivationStepZipper!1394 lt!2199185 (head!11574 (_2!35657 lt!2199175))) (tail!10671 (_2!35657 lt!2199175))))))

(assert (= (and d!1724461 c!940621) b!5397050))

(assert (= (and d!1724461 (not c!940621)) b!5397051))

(assert (=> d!1724461 m!6421764))

(declare-fun m!6421978 () Bool)

(assert (=> b!5397050 m!6421978))

(assert (=> b!5397051 m!6421762))

(assert (=> b!5397051 m!6421762))

(declare-fun m!6421980 () Bool)

(assert (=> b!5397051 m!6421980))

(assert (=> b!5397051 m!6421768))

(assert (=> b!5397051 m!6421980))

(assert (=> b!5397051 m!6421768))

(declare-fun m!6421982 () Bool)

(assert (=> b!5397051 m!6421982))

(assert (=> b!5396082 d!1724461))

(declare-fun b!5397056 () Bool)

(declare-fun e!3346618 () Bool)

(declare-fun tp!1493728 () Bool)

(declare-fun tp!1493729 () Bool)

(assert (=> b!5397056 (= e!3346618 (and tp!1493728 tp!1493729))))

(assert (=> b!5396088 (= tp!1493657 e!3346618)))

(assert (= (and b!5396088 ((_ is Cons!61640) (exprs!5039 (h!68090 zl!343)))) b!5397056))

(declare-fun b!5397064 () Bool)

(declare-fun e!3346624 () Bool)

(declare-fun tp!1493734 () Bool)

(assert (=> b!5397064 (= e!3346624 tp!1493734)))

(declare-fun b!5397063 () Bool)

(declare-fun tp!1493735 () Bool)

(declare-fun e!3346623 () Bool)

(assert (=> b!5397063 (= e!3346623 (and (inv!81134 (h!68090 (t!374989 zl!343))) e!3346624 tp!1493735))))

(assert (=> b!5396064 (= tp!1493664 e!3346623)))

(assert (= b!5397063 b!5397064))

(assert (= (and b!5396064 ((_ is Cons!61642) (t!374989 zl!343))) b!5397063))

(declare-fun m!6421984 () Bool)

(assert (=> b!5397063 m!6421984))

(declare-fun e!3346627 () Bool)

(assert (=> b!5396084 (= tp!1493658 e!3346627)))

(declare-fun b!5397076 () Bool)

(declare-fun tp!1493747 () Bool)

(declare-fun tp!1493748 () Bool)

(assert (=> b!5397076 (= e!3346627 (and tp!1493747 tp!1493748))))

(declare-fun b!5397077 () Bool)

(declare-fun tp!1493750 () Bool)

(assert (=> b!5397077 (= e!3346627 tp!1493750)))

(declare-fun b!5397078 () Bool)

(declare-fun tp!1493749 () Bool)

(declare-fun tp!1493746 () Bool)

(assert (=> b!5397078 (= e!3346627 (and tp!1493749 tp!1493746))))

(declare-fun b!5397075 () Bool)

(assert (=> b!5397075 (= e!3346627 tp_is_empty!39563)))

(assert (= (and b!5396084 ((_ is ElementMatch!15155) (regOne!30823 r!7292))) b!5397075))

(assert (= (and b!5396084 ((_ is Concat!24000) (regOne!30823 r!7292))) b!5397076))

(assert (= (and b!5396084 ((_ is Star!15155) (regOne!30823 r!7292))) b!5397077))

(assert (= (and b!5396084 ((_ is Union!15155) (regOne!30823 r!7292))) b!5397078))

(declare-fun e!3346628 () Bool)

(assert (=> b!5396084 (= tp!1493662 e!3346628)))

(declare-fun b!5397080 () Bool)

(declare-fun tp!1493752 () Bool)

(declare-fun tp!1493753 () Bool)

(assert (=> b!5397080 (= e!3346628 (and tp!1493752 tp!1493753))))

(declare-fun b!5397081 () Bool)

(declare-fun tp!1493755 () Bool)

(assert (=> b!5397081 (= e!3346628 tp!1493755)))

(declare-fun b!5397082 () Bool)

(declare-fun tp!1493754 () Bool)

(declare-fun tp!1493751 () Bool)

(assert (=> b!5397082 (= e!3346628 (and tp!1493754 tp!1493751))))

(declare-fun b!5397079 () Bool)

(assert (=> b!5397079 (= e!3346628 tp_is_empty!39563)))

(assert (= (and b!5396084 ((_ is ElementMatch!15155) (regTwo!30823 r!7292))) b!5397079))

(assert (= (and b!5396084 ((_ is Concat!24000) (regTwo!30823 r!7292))) b!5397080))

(assert (= (and b!5396084 ((_ is Star!15155) (regTwo!30823 r!7292))) b!5397081))

(assert (= (and b!5396084 ((_ is Union!15155) (regTwo!30823 r!7292))) b!5397082))

(declare-fun b!5397083 () Bool)

(declare-fun e!3346629 () Bool)

(declare-fun tp!1493756 () Bool)

(declare-fun tp!1493757 () Bool)

(assert (=> b!5397083 (= e!3346629 (and tp!1493756 tp!1493757))))

(assert (=> b!5396091 (= tp!1493659 e!3346629)))

(assert (= (and b!5396091 ((_ is Cons!61640) (exprs!5039 setElem!35093))) b!5397083))

(declare-fun b!5397088 () Bool)

(declare-fun e!3346632 () Bool)

(declare-fun tp!1493760 () Bool)

(assert (=> b!5397088 (= e!3346632 (and tp_is_empty!39563 tp!1493760))))

(assert (=> b!5396061 (= tp!1493665 e!3346632)))

(assert (= (and b!5396061 ((_ is Cons!61641) (t!374988 s!2326))) b!5397088))

(declare-fun e!3346633 () Bool)

(assert (=> b!5396097 (= tp!1493661 e!3346633)))

(declare-fun b!5397090 () Bool)

(declare-fun tp!1493762 () Bool)

(declare-fun tp!1493763 () Bool)

(assert (=> b!5397090 (= e!3346633 (and tp!1493762 tp!1493763))))

(declare-fun b!5397091 () Bool)

(declare-fun tp!1493765 () Bool)

(assert (=> b!5397091 (= e!3346633 tp!1493765)))

(declare-fun b!5397092 () Bool)

(declare-fun tp!1493764 () Bool)

(declare-fun tp!1493761 () Bool)

(assert (=> b!5397092 (= e!3346633 (and tp!1493764 tp!1493761))))

(declare-fun b!5397089 () Bool)

(assert (=> b!5397089 (= e!3346633 tp_is_empty!39563)))

(assert (= (and b!5396097 ((_ is ElementMatch!15155) (reg!15484 r!7292))) b!5397089))

(assert (= (and b!5396097 ((_ is Concat!24000) (reg!15484 r!7292))) b!5397090))

(assert (= (and b!5396097 ((_ is Star!15155) (reg!15484 r!7292))) b!5397091))

(assert (= (and b!5396097 ((_ is Union!15155) (reg!15484 r!7292))) b!5397092))

(declare-fun condSetEmpty!35099 () Bool)

(assert (=> setNonEmpty!35093 (= condSetEmpty!35099 (= setRest!35093 ((as const (Array Context!9078 Bool)) false)))))

(declare-fun setRes!35099 () Bool)

(assert (=> setNonEmpty!35093 (= tp!1493663 setRes!35099)))

(declare-fun setIsEmpty!35099 () Bool)

(assert (=> setIsEmpty!35099 setRes!35099))

(declare-fun tp!1493770 () Bool)

(declare-fun setNonEmpty!35099 () Bool)

(declare-fun e!3346636 () Bool)

(declare-fun setElem!35099 () Context!9078)

(assert (=> setNonEmpty!35099 (= setRes!35099 (and tp!1493770 (inv!81134 setElem!35099) e!3346636))))

(declare-fun setRest!35099 () (InoxSet Context!9078))

(assert (=> setNonEmpty!35099 (= setRest!35093 ((_ map or) (store ((as const (Array Context!9078 Bool)) false) setElem!35099 true) setRest!35099))))

(declare-fun b!5397097 () Bool)

(declare-fun tp!1493771 () Bool)

(assert (=> b!5397097 (= e!3346636 tp!1493771)))

(assert (= (and setNonEmpty!35093 condSetEmpty!35099) setIsEmpty!35099))

(assert (= (and setNonEmpty!35093 (not condSetEmpty!35099)) setNonEmpty!35099))

(assert (= setNonEmpty!35099 b!5397097))

(declare-fun m!6421986 () Bool)

(assert (=> setNonEmpty!35099 m!6421986))

(declare-fun e!3346637 () Bool)

(assert (=> b!5396077 (= tp!1493660 e!3346637)))

(declare-fun b!5397099 () Bool)

(declare-fun tp!1493773 () Bool)

(declare-fun tp!1493774 () Bool)

(assert (=> b!5397099 (= e!3346637 (and tp!1493773 tp!1493774))))

(declare-fun b!5397100 () Bool)

(declare-fun tp!1493776 () Bool)

(assert (=> b!5397100 (= e!3346637 tp!1493776)))

(declare-fun b!5397101 () Bool)

(declare-fun tp!1493775 () Bool)

(declare-fun tp!1493772 () Bool)

(assert (=> b!5397101 (= e!3346637 (and tp!1493775 tp!1493772))))

(declare-fun b!5397098 () Bool)

(assert (=> b!5397098 (= e!3346637 tp_is_empty!39563)))

(assert (= (and b!5396077 ((_ is ElementMatch!15155) (regOne!30822 r!7292))) b!5397098))

(assert (= (and b!5396077 ((_ is Concat!24000) (regOne!30822 r!7292))) b!5397099))

(assert (= (and b!5396077 ((_ is Star!15155) (regOne!30822 r!7292))) b!5397100))

(assert (= (and b!5396077 ((_ is Union!15155) (regOne!30822 r!7292))) b!5397101))

(declare-fun e!3346638 () Bool)

(assert (=> b!5396077 (= tp!1493656 e!3346638)))

(declare-fun b!5397103 () Bool)

(declare-fun tp!1493778 () Bool)

(declare-fun tp!1493779 () Bool)

(assert (=> b!5397103 (= e!3346638 (and tp!1493778 tp!1493779))))

(declare-fun b!5397104 () Bool)

(declare-fun tp!1493781 () Bool)

(assert (=> b!5397104 (= e!3346638 tp!1493781)))

(declare-fun b!5397105 () Bool)

(declare-fun tp!1493780 () Bool)

(declare-fun tp!1493777 () Bool)

(assert (=> b!5397105 (= e!3346638 (and tp!1493780 tp!1493777))))

(declare-fun b!5397102 () Bool)

(assert (=> b!5397102 (= e!3346638 tp_is_empty!39563)))

(assert (= (and b!5396077 ((_ is ElementMatch!15155) (regTwo!30822 r!7292))) b!5397102))

(assert (= (and b!5396077 ((_ is Concat!24000) (regTwo!30822 r!7292))) b!5397103))

(assert (= (and b!5396077 ((_ is Star!15155) (regTwo!30822 r!7292))) b!5397104))

(assert (= (and b!5396077 ((_ is Union!15155) (regTwo!30822 r!7292))) b!5397105))

(declare-fun b_lambda!206379 () Bool)

(assert (= b_lambda!206357 (or b!5396076 b_lambda!206379)))

(declare-fun bs!1247938 () Bool)

(declare-fun d!1724463 () Bool)

(assert (= bs!1247938 (and d!1724463 b!5396076)))

(assert (=> bs!1247938 (= (dynLambda!24294 lambda!280663 (h!68090 zl!343)) (derivationStepZipperUp!527 (h!68090 zl!343) (h!68089 s!2326)))))

(assert (=> bs!1247938 m!6421016))

(assert (=> d!1724317 d!1724463))

(declare-fun b_lambda!206381 () Bool)

(assert (= b_lambda!206377 (or b!5396076 b_lambda!206381)))

(declare-fun bs!1247939 () Bool)

(declare-fun d!1724465 () Bool)

(assert (= bs!1247939 (and d!1724465 b!5396076)))

(assert (=> bs!1247939 (= (dynLambda!24294 lambda!280663 lt!2199182) (derivationStepZipperUp!527 lt!2199182 (h!68089 s!2326)))))

(assert (=> bs!1247939 m!6421068))

(assert (=> d!1724447 d!1724465))

(declare-fun b_lambda!206383 () Bool)

(assert (= b_lambda!206363 (or b!5396076 b_lambda!206383)))

(declare-fun bs!1247940 () Bool)

(declare-fun d!1724467 () Bool)

(assert (= bs!1247940 (and d!1724467 b!5396076)))

(assert (=> bs!1247940 (= (dynLambda!24294 lambda!280663 lt!2199180) (derivationStepZipperUp!527 lt!2199180 (h!68089 s!2326)))))

(assert (=> bs!1247940 m!6421096))

(assert (=> d!1724409 d!1724467))

(declare-fun b_lambda!206385 () Bool)

(assert (= b_lambda!206365 (or b!5396076 b_lambda!206385)))

(declare-fun bs!1247941 () Bool)

(declare-fun d!1724469 () Bool)

(assert (= bs!1247941 (and d!1724469 b!5396076)))

(assert (=> bs!1247941 (= (dynLambda!24294 lambda!280663 lt!2199219) (derivationStepZipperUp!527 lt!2199219 (h!68089 s!2326)))))

(assert (=> bs!1247941 m!6421092))

(assert (=> d!1724411 d!1724469))

(declare-fun b_lambda!206387 () Bool)

(assert (= b_lambda!206359 (or b!5396085 b_lambda!206387)))

(declare-fun bs!1247942 () Bool)

(declare-fun d!1724471 () Bool)

(assert (= bs!1247942 (and d!1724471 b!5396085)))

(declare-fun lt!2199400 () Unit!154142)

(assert (=> bs!1247942 (= lt!2199400 (lemmaConcatPreservesForall!180 (exprs!5039 lt!2199180) lt!2199187 lambda!280665))))

(assert (=> bs!1247942 (= (dynLambda!24295 lambda!280664 lt!2199180) (Context!9079 (++!13484 (exprs!5039 lt!2199180) lt!2199187)))))

(declare-fun m!6421988 () Bool)

(assert (=> bs!1247942 m!6421988))

(declare-fun m!6421990 () Bool)

(assert (=> bs!1247942 m!6421990))

(assert (=> d!1724355 d!1724471))

(check-sat (not b!5397001) (not b!5396499) (not b_lambda!206383) (not b!5396882) (not b!5396839) (not b!5396215) (not d!1724341) (not b!5396607) (not d!1724377) (not b!5396583) (not b!5396545) (not b!5396216) (not b!5396872) (not b!5396478) (not b_lambda!206387) (not d!1724233) (not b!5397000) (not bm!386272) (not d!1724379) (not b!5396479) (not d!1724369) (not b!5396995) (not d!1724231) (not b!5396485) (not d!1724247) (not d!1724355) (not bm!386273) (not b!5396207) (not b!5396746) (not d!1724431) (not d!1724447) (not d!1724459) (not b!5397076) (not b!5396569) (not bs!1247941) (not b!5396766) (not d!1724435) (not b!5396748) (not b!5397097) (not b!5396688) (not b!5396383) (not bm!386216) (not b!5396776) (not b!5397083) (not d!1724351) (not d!1724225) (not d!1724349) (not b!5397049) (not bm!386242) (not d!1724451) (not d!1724461) (not b!5396777) (not d!1724443) (not b!5396204) (not b!5396830) (not d!1724173) (not d!1724457) (not d!1724327) (not b!5396824) (not b!5397037) (not d!1724403) (not bm!386244) (not b!5396111) (not b!5397063) (not b!5396384) (not b!5396825) (not bs!1247938) (not b!5396837) (not b!5396482) (not b!5396912) (not d!1724315) (not bm!386255) tp_is_empty!39563 (not d!1724255) (not b!5397018) (not d!1724239) (not bm!386253) (not d!1724353) (not bm!386199) (not b!5397100) (not b!5396923) (not d!1724365) (not b!5396891) (not b!5396552) (not b!5396653) (not b!5397103) (not setNonEmpty!35099) (not bm!386245) (not b!5396752) (not b!5397050) (not b!5396498) (not d!1724417) (not b!5397105) (not b!5396922) (not b_lambda!206385) (not bm!386219) (not bs!1247942) (not b!5397046) (not d!1724411) (not bs!1247939) (not d!1724345) (not b!5396833) (not b!5396744) (not d!1724437) (not b!5396993) (not bm!386236) (not b!5397048) (not b!5397043) (not bm!386234) (not d!1724415) (not b!5396994) (not d!1724405) (not bm!386172) (not b!5397077) (not bm!386243) (not b!5396827) (not b!5396769) (not b!5397104) (not b!5397036) (not b!5397051) (not d!1724177) (not bm!386254) (not b!5396781) (not b!5397044) (not bs!1247940) (not b!5396210) (not b!5397056) (not d!1724329) (not bm!386266) (not b!5397090) (not b!5396884) (not b!5396867) (not b!5397099) (not b!5396589) (not b!5396321) (not bm!386217) (not b!5396911) (not b!5396546) (not bm!386198) (not b!5397081) (not bm!386263) (not b!5396553) (not d!1724337) (not d!1724375) (not bm!386265) (not b!5397082) (not d!1724287) (not b!5396838) (not b!5396743) (not d!1724339) (not b!5396890) (not b!5397101) (not d!1724389) (not d!1724455) (not b_lambda!206379) (not b_lambda!206381) (not b!5396549) (not b!5396751) (not b!5397080) (not b!5396772) (not bm!386268) (not b!5397064) (not b!5396481) (not d!1724363) (not b!5396875) (not d!1724433) (not bm!386262) (not d!1724409) (not b!5397047) (not b!5397092) (not b!5396110) (not b!5397045) (not d!1724257) (not b!5397088) (not b!5396749) (not d!1724323) (not b!5397078) (not d!1724367) (not b!5396999) (not b!5396687) (not d!1724449) (not b!5396780) (not bm!386238) (not b!5396331) (not d!1724251) (not d!1724399) (not d!1724453) (not d!1724317) (not b!5396883) (not b!5397028) (not bm!386270) (not d!1724429) (not b!5396608) (not b!5396765) (not b!5396548) (not d!1724279) (not d!1724347) (not b!5396686) (not b!5396214) (not b!5396878) (not b!5396588) (not b!5396778) (not b!5396480) (not b!5396584) (not b!5396755) (not b!5397091) (not b!5396551))
(check-sat)
