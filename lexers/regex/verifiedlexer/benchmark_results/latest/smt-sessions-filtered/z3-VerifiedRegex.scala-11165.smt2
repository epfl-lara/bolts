; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!580460 () Bool)

(assert start!580460)

(declare-fun b!5588535 () Bool)

(assert (=> b!5588535 true))

(assert (=> b!5588535 true))

(declare-fun lambda!299913 () Int)

(declare-fun lambda!299912 () Int)

(assert (=> b!5588535 (not (= lambda!299913 lambda!299912))))

(assert (=> b!5588535 true))

(assert (=> b!5588535 true))

(declare-fun b!5588545 () Bool)

(assert (=> b!5588545 true))

(declare-fun b!5588512 () Bool)

(declare-datatypes ((Unit!155708 0))(
  ( (Unit!155709) )
))
(declare-fun e!3447873 () Unit!155708)

(declare-fun Unit!155710 () Unit!155708)

(assert (=> b!5588512 (= e!3447873 Unit!155710)))

(declare-datatypes ((C!31424 0))(
  ( (C!31425 (val!25414 Int)) )
))
(declare-datatypes ((List!63030 0))(
  ( (Nil!62906) (Cons!62906 (h!69354 C!31424) (t!376306 List!63030)) )
))
(declare-fun s!2326 () List!63030)

(declare-fun lt!2255195 () Unit!155708)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!15577 0))(
  ( (ElementMatch!15577 (c!979094 C!31424)) (Concat!24422 (regOne!31666 Regex!15577) (regTwo!31666 Regex!15577)) (EmptyExpr!15577) (Star!15577 (reg!15906 Regex!15577)) (EmptyLang!15577) (Union!15577 (regOne!31667 Regex!15577) (regTwo!31667 Regex!15577)) )
))
(declare-datatypes ((List!63031 0))(
  ( (Nil!62907) (Cons!62907 (h!69355 Regex!15577) (t!376307 List!63031)) )
))
(declare-datatypes ((Context!9922 0))(
  ( (Context!9923 (exprs!5461 List!63031)) )
))
(declare-fun lt!2255192 () (InoxSet Context!9922))

(declare-fun lt!2255201 () (InoxSet Context!9922))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!602 ((InoxSet Context!9922) (InoxSet Context!9922) List!63030) Unit!155708)

(assert (=> b!5588512 (= lt!2255195 (lemmaZipperConcatMatchesSameAsBothZippers!602 lt!2255192 lt!2255201 (t!376306 s!2326)))))

(declare-fun res!2371256 () Bool)

(declare-fun matchZipper!1715 ((InoxSet Context!9922) List!63030) Bool)

(assert (=> b!5588512 (= res!2371256 (matchZipper!1715 lt!2255192 (t!376306 s!2326)))))

(declare-fun e!3447880 () Bool)

(assert (=> b!5588512 (=> res!2371256 e!3447880)))

(assert (=> b!5588512 (= (matchZipper!1715 ((_ map or) lt!2255192 lt!2255201) (t!376306 s!2326)) e!3447880)))

(declare-fun tp!1545820 () Bool)

(declare-fun b!5588513 () Bool)

(declare-fun e!3447878 () Bool)

(declare-fun e!3447865 () Bool)

(declare-datatypes ((List!63032 0))(
  ( (Nil!62908) (Cons!62908 (h!69356 Context!9922) (t!376308 List!63032)) )
))
(declare-fun zl!343 () List!63032)

(declare-fun inv!82189 (Context!9922) Bool)

(assert (=> b!5588513 (= e!3447865 (and (inv!82189 (h!69356 zl!343)) e!3447878 tp!1545820))))

(declare-fun b!5588514 () Bool)

(declare-fun tp!1545826 () Bool)

(assert (=> b!5588514 (= e!3447878 tp!1545826)))

(declare-fun b!5588515 () Bool)

(declare-fun res!2371255 () Bool)

(declare-fun e!3447876 () Bool)

(assert (=> b!5588515 (=> res!2371255 e!3447876)))

(declare-fun isEmpty!34722 (List!63032) Bool)

(assert (=> b!5588515 (= res!2371255 (not (isEmpty!34722 (t!376308 zl!343))))))

(declare-fun b!5588516 () Bool)

(declare-fun e!3447884 () Unit!155708)

(declare-fun Unit!155711 () Unit!155708)

(assert (=> b!5588516 (= e!3447884 Unit!155711)))

(declare-fun b!5588517 () Bool)

(declare-fun res!2371258 () Bool)

(declare-fun e!3447872 () Bool)

(assert (=> b!5588517 (=> res!2371258 e!3447872)))

(declare-fun isEmpty!34723 (List!63031) Bool)

(assert (=> b!5588517 (= res!2371258 (isEmpty!34723 (t!376307 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun b!5588518 () Bool)

(declare-fun Unit!155712 () Unit!155708)

(assert (=> b!5588518 (= e!3447884 Unit!155712)))

(declare-fun lt!2255199 () (InoxSet Context!9922))

(declare-fun lt!2255184 () Unit!155708)

(assert (=> b!5588518 (= lt!2255184 (lemmaZipperConcatMatchesSameAsBothZippers!602 lt!2255199 lt!2255201 (t!376306 s!2326)))))

(declare-fun res!2371257 () Bool)

(declare-fun lt!2255205 () Bool)

(assert (=> b!5588518 (= res!2371257 lt!2255205)))

(declare-fun e!3447874 () Bool)

(assert (=> b!5588518 (=> res!2371257 e!3447874)))

(assert (=> b!5588518 (= (matchZipper!1715 ((_ map or) lt!2255199 lt!2255201) (t!376306 s!2326)) e!3447874)))

(declare-fun b!5588519 () Bool)

(declare-fun e!3447869 () Bool)

(declare-fun lt!2255189 () (InoxSet Context!9922))

(assert (=> b!5588519 (= e!3447869 (matchZipper!1715 lt!2255189 (t!376306 s!2326)))))

(declare-fun b!5588520 () Bool)

(declare-fun e!3447866 () Bool)

(assert (=> b!5588520 (= e!3447866 (not e!3447876))))

(declare-fun res!2371267 () Bool)

(assert (=> b!5588520 (=> res!2371267 e!3447876)))

(get-info :version)

(assert (=> b!5588520 (= res!2371267 (not ((_ is Cons!62908) zl!343)))))

(declare-fun lt!2255191 () Bool)

(declare-fun r!7292 () Regex!15577)

(declare-fun matchRSpec!2680 (Regex!15577 List!63030) Bool)

(assert (=> b!5588520 (= lt!2255191 (matchRSpec!2680 r!7292 s!2326))))

(declare-fun matchR!7762 (Regex!15577 List!63030) Bool)

(assert (=> b!5588520 (= lt!2255191 (matchR!7762 r!7292 s!2326))))

(declare-fun lt!2255200 () Unit!155708)

(declare-fun mainMatchTheorem!2680 (Regex!15577 List!63030) Unit!155708)

(assert (=> b!5588520 (= lt!2255200 (mainMatchTheorem!2680 r!7292 s!2326))))

(declare-fun b!5588521 () Bool)

(declare-fun e!3447882 () Bool)

(declare-fun tp!1545825 () Bool)

(declare-fun tp!1545822 () Bool)

(assert (=> b!5588521 (= e!3447882 (and tp!1545825 tp!1545822))))

(declare-fun res!2371259 () Bool)

(assert (=> start!580460 (=> (not res!2371259) (not e!3447866))))

(declare-fun validRegex!7313 (Regex!15577) Bool)

(assert (=> start!580460 (= res!2371259 (validRegex!7313 r!7292))))

(assert (=> start!580460 e!3447866))

(assert (=> start!580460 e!3447882))

(declare-fun condSetEmpty!37237 () Bool)

(declare-fun z!1189 () (InoxSet Context!9922))

(assert (=> start!580460 (= condSetEmpty!37237 (= z!1189 ((as const (Array Context!9922 Bool)) false)))))

(declare-fun setRes!37237 () Bool)

(assert (=> start!580460 setRes!37237))

(assert (=> start!580460 e!3447865))

(declare-fun e!3447867 () Bool)

(assert (=> start!580460 e!3447867))

(declare-fun b!5588522 () Bool)

(declare-fun e!3447881 () Bool)

(declare-fun e!3447870 () Bool)

(assert (=> b!5588522 (= e!3447881 e!3447870)))

(declare-fun res!2371268 () Bool)

(assert (=> b!5588522 (=> res!2371268 e!3447870)))

(declare-fun lt!2255213 () (InoxSet Context!9922))

(assert (=> b!5588522 (= res!2371268 (not (= lt!2255192 lt!2255213)))))

(assert (=> b!5588522 (= lt!2255213 ((_ map or) lt!2255199 lt!2255189))))

(declare-fun lt!2255202 () Context!9922)

(declare-fun derivationStepZipperDown!919 (Regex!15577 Context!9922 C!31424) (InoxSet Context!9922))

(assert (=> b!5588522 (= lt!2255189 (derivationStepZipperDown!919 (regTwo!31667 (regOne!31666 r!7292)) lt!2255202 (h!69354 s!2326)))))

(assert (=> b!5588522 (= lt!2255199 (derivationStepZipperDown!919 (regOne!31667 (regOne!31666 r!7292)) lt!2255202 (h!69354 s!2326)))))

(declare-fun b!5588523 () Bool)

(declare-fun e!3447883 () Bool)

(declare-fun tp!1545821 () Bool)

(assert (=> b!5588523 (= e!3447883 tp!1545821)))

(declare-fun b!5588524 () Bool)

(declare-fun e!3447879 () Bool)

(assert (=> b!5588524 (= e!3447870 e!3447879)))

(declare-fun res!2371264 () Bool)

(assert (=> b!5588524 (=> res!2371264 e!3447879)))

(declare-fun e!3447871 () Bool)

(assert (=> b!5588524 (= res!2371264 e!3447871)))

(declare-fun res!2371261 () Bool)

(assert (=> b!5588524 (=> (not res!2371261) (not e!3447871))))

(assert (=> b!5588524 (= res!2371261 (not (= (matchZipper!1715 lt!2255192 (t!376306 s!2326)) lt!2255205)))))

(assert (=> b!5588524 (= (matchZipper!1715 lt!2255213 (t!376306 s!2326)) e!3447869)))

(declare-fun res!2371263 () Bool)

(assert (=> b!5588524 (=> res!2371263 e!3447869)))

(assert (=> b!5588524 (= res!2371263 lt!2255205)))

(assert (=> b!5588524 (= lt!2255205 (matchZipper!1715 lt!2255199 (t!376306 s!2326)))))

(declare-fun lt!2255196 () Unit!155708)

(assert (=> b!5588524 (= lt!2255196 (lemmaZipperConcatMatchesSameAsBothZippers!602 lt!2255199 lt!2255189 (t!376306 s!2326)))))

(declare-fun setIsEmpty!37237 () Bool)

(assert (=> setIsEmpty!37237 setRes!37237))

(declare-fun b!5588525 () Bool)

(declare-fun tp!1545823 () Bool)

(assert (=> b!5588525 (= e!3447882 tp!1545823)))

(declare-fun b!5588526 () Bool)

(declare-fun e!3447877 () Unit!155708)

(declare-fun Unit!155713 () Unit!155708)

(assert (=> b!5588526 (= e!3447877 Unit!155713)))

(declare-fun lt!2255207 () Unit!155708)

(assert (=> b!5588526 (= lt!2255207 (lemmaZipperConcatMatchesSameAsBothZippers!602 lt!2255189 lt!2255201 (t!376306 s!2326)))))

(declare-fun res!2371250 () Bool)

(assert (=> b!5588526 (= res!2371250 (matchZipper!1715 lt!2255189 (t!376306 s!2326)))))

(declare-fun e!3447875 () Bool)

(assert (=> b!5588526 (=> res!2371250 e!3447875)))

(assert (=> b!5588526 (= (matchZipper!1715 ((_ map or) lt!2255189 lt!2255201) (t!376306 s!2326)) e!3447875)))

(declare-fun b!5588527 () Bool)

(declare-fun tp_is_empty!40407 () Bool)

(declare-fun tp!1545824 () Bool)

(assert (=> b!5588527 (= e!3447867 (and tp_is_empty!40407 tp!1545824))))

(declare-fun setNonEmpty!37237 () Bool)

(declare-fun setElem!37237 () Context!9922)

(declare-fun tp!1545819 () Bool)

(assert (=> setNonEmpty!37237 (= setRes!37237 (and tp!1545819 (inv!82189 setElem!37237) e!3447883))))

(declare-fun setRest!37237 () (InoxSet Context!9922))

(assert (=> setNonEmpty!37237 (= z!1189 ((_ map or) (store ((as const (Array Context!9922 Bool)) false) setElem!37237 true) setRest!37237))))

(declare-fun b!5588528 () Bool)

(declare-fun Unit!155714 () Unit!155708)

(assert (=> b!5588528 (= e!3447877 Unit!155714)))

(declare-fun b!5588529 () Bool)

(assert (=> b!5588529 (= e!3447871 (not (matchZipper!1715 lt!2255189 (t!376306 s!2326))))))

(declare-fun b!5588530 () Bool)

(declare-fun res!2371260 () Bool)

(assert (=> b!5588530 (=> res!2371260 e!3447876)))

(declare-fun generalisedConcat!1192 (List!63031) Regex!15577)

(assert (=> b!5588530 (= res!2371260 (not (= r!7292 (generalisedConcat!1192 (exprs!5461 (h!69356 zl!343))))))))

(declare-fun b!5588531 () Bool)

(declare-fun res!2371249 () Bool)

(assert (=> b!5588531 (=> res!2371249 e!3447876)))

(assert (=> b!5588531 (= res!2371249 (or ((_ is EmptyExpr!15577) r!7292) ((_ is EmptyLang!15577) r!7292) ((_ is ElementMatch!15577) r!7292) ((_ is Union!15577) r!7292) (not ((_ is Concat!24422) r!7292))))))

(declare-fun b!5588532 () Bool)

(assert (=> b!5588532 (= e!3447882 tp_is_empty!40407)))

(declare-fun b!5588533 () Bool)

(declare-fun tp!1545827 () Bool)

(declare-fun tp!1545818 () Bool)

(assert (=> b!5588533 (= e!3447882 (and tp!1545827 tp!1545818))))

(declare-fun b!5588534 () Bool)

(declare-fun res!2371265 () Bool)

(assert (=> b!5588534 (=> (not res!2371265) (not e!3447866))))

(declare-fun toList!9361 ((InoxSet Context!9922)) List!63032)

(assert (=> b!5588534 (= res!2371265 (= (toList!9361 z!1189) zl!343))))

(assert (=> b!5588535 (= e!3447876 e!3447872)))

(declare-fun res!2371254 () Bool)

(assert (=> b!5588535 (=> res!2371254 e!3447872)))

(declare-fun lt!2255206 () Bool)

(assert (=> b!5588535 (= res!2371254 (or (not (= lt!2255191 lt!2255206)) ((_ is Nil!62906) s!2326)))))

(declare-fun Exists!2677 (Int) Bool)

(assert (=> b!5588535 (= (Exists!2677 lambda!299912) (Exists!2677 lambda!299913))))

(declare-fun lt!2255208 () Unit!155708)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1306 (Regex!15577 Regex!15577 List!63030) Unit!155708)

(assert (=> b!5588535 (= lt!2255208 (lemmaExistCutMatchRandMatchRSpecEquivalent!1306 (regOne!31666 r!7292) (regTwo!31666 r!7292) s!2326))))

(assert (=> b!5588535 (= lt!2255206 (Exists!2677 lambda!299912))))

(declare-datatypes ((tuple2!65348 0))(
  ( (tuple2!65349 (_1!35977 List!63030) (_2!35977 List!63030)) )
))
(declare-datatypes ((Option!15586 0))(
  ( (None!15585) (Some!15585 (v!51626 tuple2!65348)) )
))
(declare-fun isDefined!12289 (Option!15586) Bool)

(declare-fun findConcatSeparation!2000 (Regex!15577 Regex!15577 List!63030 List!63030 List!63030) Option!15586)

(assert (=> b!5588535 (= lt!2255206 (isDefined!12289 (findConcatSeparation!2000 (regOne!31666 r!7292) (regTwo!31666 r!7292) Nil!62906 s!2326 s!2326)))))

(declare-fun lt!2255193 () Unit!155708)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1764 (Regex!15577 Regex!15577 List!63030) Unit!155708)

(assert (=> b!5588535 (= lt!2255193 (lemmaFindConcatSeparationEquivalentToExists!1764 (regOne!31666 r!7292) (regTwo!31666 r!7292) s!2326))))

(declare-fun b!5588536 () Bool)

(declare-fun e!3447868 () Bool)

(assert (=> b!5588536 (= e!3447879 e!3447868)))

(declare-fun res!2371251 () Bool)

(assert (=> b!5588536 (=> res!2371251 e!3447868)))

(declare-fun nullable!5609 (Regex!15577) Bool)

(assert (=> b!5588536 (= res!2371251 (not (nullable!5609 (regOne!31666 r!7292))))))

(declare-fun lt!2255198 () Unit!155708)

(assert (=> b!5588536 (= lt!2255198 e!3447877)))

(declare-fun c!979093 () Bool)

(declare-fun lt!2255187 () Bool)

(assert (=> b!5588536 (= c!979093 lt!2255187)))

(assert (=> b!5588536 (= lt!2255187 (nullable!5609 (regTwo!31667 (regOne!31666 r!7292))))))

(declare-fun lt!2255203 () (InoxSet Context!9922))

(declare-fun lt!2255204 () Context!9922)

(declare-fun lambda!299914 () Int)

(declare-fun flatMap!1190 ((InoxSet Context!9922) Int) (InoxSet Context!9922))

(declare-fun derivationStepZipperUp!845 (Context!9922 C!31424) (InoxSet Context!9922))

(assert (=> b!5588536 (= (flatMap!1190 lt!2255203 lambda!299914) (derivationStepZipperUp!845 lt!2255204 (h!69354 s!2326)))))

(declare-fun lt!2255186 () Unit!155708)

(declare-fun lemmaFlatMapOnSingletonSet!722 ((InoxSet Context!9922) Context!9922 Int) Unit!155708)

(assert (=> b!5588536 (= lt!2255186 (lemmaFlatMapOnSingletonSet!722 lt!2255203 lt!2255204 lambda!299914))))

(declare-fun lt!2255212 () (InoxSet Context!9922))

(assert (=> b!5588536 (= lt!2255212 (derivationStepZipperUp!845 lt!2255204 (h!69354 s!2326)))))

(declare-fun lt!2255210 () Unit!155708)

(assert (=> b!5588536 (= lt!2255210 e!3447884)))

(declare-fun c!979092 () Bool)

(declare-fun lt!2255185 () Bool)

(assert (=> b!5588536 (= c!979092 lt!2255185)))

(assert (=> b!5588536 (= lt!2255185 (nullable!5609 (regOne!31667 (regOne!31666 r!7292))))))

(declare-fun lt!2255209 () Context!9922)

(declare-fun lt!2255188 () (InoxSet Context!9922))

(assert (=> b!5588536 (= (flatMap!1190 lt!2255188 lambda!299914) (derivationStepZipperUp!845 lt!2255209 (h!69354 s!2326)))))

(declare-fun lt!2255197 () Unit!155708)

(assert (=> b!5588536 (= lt!2255197 (lemmaFlatMapOnSingletonSet!722 lt!2255188 lt!2255209 lambda!299914))))

(declare-fun lt!2255211 () (InoxSet Context!9922))

(assert (=> b!5588536 (= lt!2255211 (derivationStepZipperUp!845 lt!2255209 (h!69354 s!2326)))))

(assert (=> b!5588536 (= lt!2255203 (store ((as const (Array Context!9922 Bool)) false) lt!2255204 true))))

(assert (=> b!5588536 (= lt!2255204 (Context!9923 (Cons!62907 (regTwo!31667 (regOne!31666 r!7292)) (t!376307 (exprs!5461 (h!69356 zl!343))))))))

(assert (=> b!5588536 (= lt!2255188 (store ((as const (Array Context!9922 Bool)) false) lt!2255209 true))))

(assert (=> b!5588536 (= lt!2255209 (Context!9923 (Cons!62907 (regOne!31667 (regOne!31666 r!7292)) (t!376307 (exprs!5461 (h!69356 zl!343))))))))

(declare-fun b!5588537 () Bool)

(assert (=> b!5588537 (= e!3447868 (or lt!2255185 lt!2255187))))

(declare-fun b!5588538 () Bool)

(assert (=> b!5588538 (= e!3447875 (matchZipper!1715 lt!2255201 (t!376306 s!2326)))))

(declare-fun b!5588539 () Bool)

(declare-fun Unit!155715 () Unit!155708)

(assert (=> b!5588539 (= e!3447873 Unit!155715)))

(declare-fun b!5588540 () Bool)

(assert (=> b!5588540 (= e!3447880 (matchZipper!1715 lt!2255201 (t!376306 s!2326)))))

(declare-fun b!5588541 () Bool)

(declare-fun res!2371262 () Bool)

(assert (=> b!5588541 (=> res!2371262 e!3447876)))

(assert (=> b!5588541 (= res!2371262 (not ((_ is Cons!62907) (exprs!5461 (h!69356 zl!343)))))))

(declare-fun b!5588542 () Bool)

(declare-fun res!2371252 () Bool)

(assert (=> b!5588542 (=> (not res!2371252) (not e!3447866))))

(declare-fun unfocusZipper!1319 (List!63032) Regex!15577)

(assert (=> b!5588542 (= res!2371252 (= r!7292 (unfocusZipper!1319 zl!343)))))

(declare-fun b!5588543 () Bool)

(declare-fun res!2371266 () Bool)

(assert (=> b!5588543 (=> res!2371266 e!3447876)))

(declare-fun generalisedUnion!1440 (List!63031) Regex!15577)

(declare-fun unfocusZipperList!1005 (List!63032) List!63031)

(assert (=> b!5588543 (= res!2371266 (not (= r!7292 (generalisedUnion!1440 (unfocusZipperList!1005 zl!343)))))))

(declare-fun b!5588544 () Bool)

(assert (=> b!5588544 (= e!3447874 (matchZipper!1715 lt!2255201 (t!376306 s!2326)))))

(assert (=> b!5588545 (= e!3447872 e!3447881)))

(declare-fun res!2371253 () Bool)

(assert (=> b!5588545 (=> res!2371253 e!3447881)))

(assert (=> b!5588545 (= res!2371253 (or (and ((_ is ElementMatch!15577) (regOne!31666 r!7292)) (= (c!979094 (regOne!31666 r!7292)) (h!69354 s!2326))) (not ((_ is Union!15577) (regOne!31666 r!7292)))))))

(declare-fun lt!2255214 () Unit!155708)

(assert (=> b!5588545 (= lt!2255214 e!3447873)))

(declare-fun c!979091 () Bool)

(assert (=> b!5588545 (= c!979091 (nullable!5609 (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(assert (=> b!5588545 (= (flatMap!1190 z!1189 lambda!299914) (derivationStepZipperUp!845 (h!69356 zl!343) (h!69354 s!2326)))))

(declare-fun lt!2255190 () Unit!155708)

(assert (=> b!5588545 (= lt!2255190 (lemmaFlatMapOnSingletonSet!722 z!1189 (h!69356 zl!343) lambda!299914))))

(assert (=> b!5588545 (= lt!2255201 (derivationStepZipperUp!845 lt!2255202 (h!69354 s!2326)))))

(assert (=> b!5588545 (= lt!2255192 (derivationStepZipperDown!919 (h!69355 (exprs!5461 (h!69356 zl!343))) lt!2255202 (h!69354 s!2326)))))

(assert (=> b!5588545 (= lt!2255202 (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun lt!2255194 () (InoxSet Context!9922))

(assert (=> b!5588545 (= lt!2255194 (derivationStepZipperUp!845 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))) (h!69354 s!2326)))))

(assert (= (and start!580460 res!2371259) b!5588534))

(assert (= (and b!5588534 res!2371265) b!5588542))

(assert (= (and b!5588542 res!2371252) b!5588520))

(assert (= (and b!5588520 (not res!2371267)) b!5588515))

(assert (= (and b!5588515 (not res!2371255)) b!5588530))

(assert (= (and b!5588530 (not res!2371260)) b!5588541))

(assert (= (and b!5588541 (not res!2371262)) b!5588543))

(assert (= (and b!5588543 (not res!2371266)) b!5588531))

(assert (= (and b!5588531 (not res!2371249)) b!5588535))

(assert (= (and b!5588535 (not res!2371254)) b!5588517))

(assert (= (and b!5588517 (not res!2371258)) b!5588545))

(assert (= (and b!5588545 c!979091) b!5588512))

(assert (= (and b!5588545 (not c!979091)) b!5588539))

(assert (= (and b!5588512 (not res!2371256)) b!5588540))

(assert (= (and b!5588545 (not res!2371253)) b!5588522))

(assert (= (and b!5588522 (not res!2371268)) b!5588524))

(assert (= (and b!5588524 (not res!2371263)) b!5588519))

(assert (= (and b!5588524 res!2371261) b!5588529))

(assert (= (and b!5588524 (not res!2371264)) b!5588536))

(assert (= (and b!5588536 c!979092) b!5588518))

(assert (= (and b!5588536 (not c!979092)) b!5588516))

(assert (= (and b!5588518 (not res!2371257)) b!5588544))

(assert (= (and b!5588536 c!979093) b!5588526))

(assert (= (and b!5588536 (not c!979093)) b!5588528))

(assert (= (and b!5588526 (not res!2371250)) b!5588538))

(assert (= (and b!5588536 (not res!2371251)) b!5588537))

(assert (= (and start!580460 ((_ is ElementMatch!15577) r!7292)) b!5588532))

(assert (= (and start!580460 ((_ is Concat!24422) r!7292)) b!5588521))

(assert (= (and start!580460 ((_ is Star!15577) r!7292)) b!5588525))

(assert (= (and start!580460 ((_ is Union!15577) r!7292)) b!5588533))

(assert (= (and start!580460 condSetEmpty!37237) setIsEmpty!37237))

(assert (= (and start!580460 (not condSetEmpty!37237)) setNonEmpty!37237))

(assert (= setNonEmpty!37237 b!5588523))

(assert (= b!5588513 b!5588514))

(assert (= (and start!580460 ((_ is Cons!62908) zl!343)) b!5588513))

(assert (= (and start!580460 ((_ is Cons!62906) s!2326)) b!5588527))

(declare-fun m!6568920 () Bool)

(assert (=> b!5588512 m!6568920))

(declare-fun m!6568922 () Bool)

(assert (=> b!5588512 m!6568922))

(declare-fun m!6568924 () Bool)

(assert (=> b!5588512 m!6568924))

(declare-fun m!6568926 () Bool)

(assert (=> b!5588542 m!6568926))

(declare-fun m!6568928 () Bool)

(assert (=> b!5588538 m!6568928))

(declare-fun m!6568930 () Bool)

(assert (=> b!5588522 m!6568930))

(declare-fun m!6568932 () Bool)

(assert (=> b!5588522 m!6568932))

(declare-fun m!6568934 () Bool)

(assert (=> b!5588529 m!6568934))

(assert (=> b!5588524 m!6568922))

(declare-fun m!6568936 () Bool)

(assert (=> b!5588524 m!6568936))

(declare-fun m!6568938 () Bool)

(assert (=> b!5588524 m!6568938))

(declare-fun m!6568940 () Bool)

(assert (=> b!5588524 m!6568940))

(assert (=> b!5588519 m!6568934))

(declare-fun m!6568942 () Bool)

(assert (=> b!5588545 m!6568942))

(declare-fun m!6568944 () Bool)

(assert (=> b!5588545 m!6568944))

(declare-fun m!6568946 () Bool)

(assert (=> b!5588545 m!6568946))

(declare-fun m!6568948 () Bool)

(assert (=> b!5588545 m!6568948))

(declare-fun m!6568950 () Bool)

(assert (=> b!5588545 m!6568950))

(declare-fun m!6568952 () Bool)

(assert (=> b!5588545 m!6568952))

(declare-fun m!6568954 () Bool)

(assert (=> b!5588545 m!6568954))

(assert (=> b!5588540 m!6568928))

(declare-fun m!6568956 () Bool)

(assert (=> b!5588517 m!6568956))

(declare-fun m!6568958 () Bool)

(assert (=> b!5588520 m!6568958))

(declare-fun m!6568960 () Bool)

(assert (=> b!5588520 m!6568960))

(declare-fun m!6568962 () Bool)

(assert (=> b!5588520 m!6568962))

(assert (=> b!5588544 m!6568928))

(declare-fun m!6568964 () Bool)

(assert (=> b!5588534 m!6568964))

(declare-fun m!6568966 () Bool)

(assert (=> b!5588515 m!6568966))

(declare-fun m!6568968 () Bool)

(assert (=> b!5588543 m!6568968))

(assert (=> b!5588543 m!6568968))

(declare-fun m!6568970 () Bool)

(assert (=> b!5588543 m!6568970))

(declare-fun m!6568972 () Bool)

(assert (=> b!5588536 m!6568972))

(declare-fun m!6568974 () Bool)

(assert (=> b!5588536 m!6568974))

(declare-fun m!6568976 () Bool)

(assert (=> b!5588536 m!6568976))

(declare-fun m!6568978 () Bool)

(assert (=> b!5588536 m!6568978))

(declare-fun m!6568980 () Bool)

(assert (=> b!5588536 m!6568980))

(declare-fun m!6568982 () Bool)

(assert (=> b!5588536 m!6568982))

(declare-fun m!6568984 () Bool)

(assert (=> b!5588536 m!6568984))

(declare-fun m!6568986 () Bool)

(assert (=> b!5588536 m!6568986))

(declare-fun m!6568988 () Bool)

(assert (=> b!5588536 m!6568988))

(declare-fun m!6568990 () Bool)

(assert (=> b!5588536 m!6568990))

(declare-fun m!6568992 () Bool)

(assert (=> b!5588536 m!6568992))

(declare-fun m!6568994 () Bool)

(assert (=> start!580460 m!6568994))

(declare-fun m!6568996 () Bool)

(assert (=> b!5588526 m!6568996))

(assert (=> b!5588526 m!6568934))

(declare-fun m!6568998 () Bool)

(assert (=> b!5588526 m!6568998))

(declare-fun m!6569000 () Bool)

(assert (=> b!5588530 m!6569000))

(declare-fun m!6569002 () Bool)

(assert (=> b!5588518 m!6569002))

(declare-fun m!6569004 () Bool)

(assert (=> b!5588518 m!6569004))

(declare-fun m!6569006 () Bool)

(assert (=> b!5588513 m!6569006))

(declare-fun m!6569008 () Bool)

(assert (=> b!5588535 m!6569008))

(declare-fun m!6569010 () Bool)

(assert (=> b!5588535 m!6569010))

(declare-fun m!6569012 () Bool)

(assert (=> b!5588535 m!6569012))

(assert (=> b!5588535 m!6569008))

(declare-fun m!6569014 () Bool)

(assert (=> b!5588535 m!6569014))

(declare-fun m!6569016 () Bool)

(assert (=> b!5588535 m!6569016))

(assert (=> b!5588535 m!6569010))

(declare-fun m!6569018 () Bool)

(assert (=> b!5588535 m!6569018))

(declare-fun m!6569020 () Bool)

(assert (=> setNonEmpty!37237 m!6569020))

(check-sat (not b!5588512) (not b!5588513) (not b!5588536) (not b!5588544) (not b!5588525) (not start!580460) (not setNonEmpty!37237) (not b!5588518) tp_is_empty!40407 (not b!5588529) (not b!5588538) (not b!5588523) (not b!5588535) (not b!5588527) (not b!5588521) (not b!5588526) (not b!5588524) (not b!5588530) (not b!5588534) (not b!5588542) (not b!5588533) (not b!5588545) (not b!5588520) (not b!5588517) (not b!5588540) (not b!5588515) (not b!5588522) (not b!5588543) (not b!5588519) (not b!5588514))
(check-sat)
(get-model)

(declare-fun d!1766332 () Bool)

(declare-fun lt!2255229 () Regex!15577)

(assert (=> d!1766332 (validRegex!7313 lt!2255229)))

(assert (=> d!1766332 (= lt!2255229 (generalisedUnion!1440 (unfocusZipperList!1005 zl!343)))))

(assert (=> d!1766332 (= (unfocusZipper!1319 zl!343) lt!2255229)))

(declare-fun bs!1292288 () Bool)

(assert (= bs!1292288 d!1766332))

(declare-fun m!6569160 () Bool)

(assert (=> bs!1292288 m!6569160))

(assert (=> bs!1292288 m!6568968))

(assert (=> bs!1292288 m!6568968))

(assert (=> bs!1292288 m!6568970))

(assert (=> b!5588542 d!1766332))

(declare-fun d!1766334 () Bool)

(declare-fun e!3447977 () Bool)

(assert (=> d!1766334 (= (matchZipper!1715 ((_ map or) lt!2255192 lt!2255201) (t!376306 s!2326)) e!3447977)))

(declare-fun res!2371306 () Bool)

(assert (=> d!1766334 (=> res!2371306 e!3447977)))

(assert (=> d!1766334 (= res!2371306 (matchZipper!1715 lt!2255192 (t!376306 s!2326)))))

(declare-fun lt!2255232 () Unit!155708)

(declare-fun choose!42376 ((InoxSet Context!9922) (InoxSet Context!9922) List!63030) Unit!155708)

(assert (=> d!1766334 (= lt!2255232 (choose!42376 lt!2255192 lt!2255201 (t!376306 s!2326)))))

(assert (=> d!1766334 (= (lemmaZipperConcatMatchesSameAsBothZippers!602 lt!2255192 lt!2255201 (t!376306 s!2326)) lt!2255232)))

(declare-fun b!5588699 () Bool)

(assert (=> b!5588699 (= e!3447977 (matchZipper!1715 lt!2255201 (t!376306 s!2326)))))

(assert (= (and d!1766334 (not res!2371306)) b!5588699))

(assert (=> d!1766334 m!6568924))

(assert (=> d!1766334 m!6568922))

(declare-fun m!6569162 () Bool)

(assert (=> d!1766334 m!6569162))

(assert (=> b!5588699 m!6568928))

(assert (=> b!5588512 d!1766334))

(declare-fun d!1766336 () Bool)

(declare-fun c!979156 () Bool)

(declare-fun isEmpty!34725 (List!63030) Bool)

(assert (=> d!1766336 (= c!979156 (isEmpty!34725 (t!376306 s!2326)))))

(declare-fun e!3447990 () Bool)

(assert (=> d!1766336 (= (matchZipper!1715 lt!2255192 (t!376306 s!2326)) e!3447990)))

(declare-fun b!5588722 () Bool)

(declare-fun nullableZipper!1572 ((InoxSet Context!9922)) Bool)

(assert (=> b!5588722 (= e!3447990 (nullableZipper!1572 lt!2255192))))

(declare-fun b!5588723 () Bool)

(declare-fun derivationStepZipper!1676 ((InoxSet Context!9922) C!31424) (InoxSet Context!9922))

(declare-fun head!11923 (List!63030) C!31424)

(declare-fun tail!11018 (List!63030) List!63030)

(assert (=> b!5588723 (= e!3447990 (matchZipper!1715 (derivationStepZipper!1676 lt!2255192 (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))))))

(assert (= (and d!1766336 c!979156) b!5588722))

(assert (= (and d!1766336 (not c!979156)) b!5588723))

(declare-fun m!6569164 () Bool)

(assert (=> d!1766336 m!6569164))

(declare-fun m!6569166 () Bool)

(assert (=> b!5588722 m!6569166))

(declare-fun m!6569168 () Bool)

(assert (=> b!5588723 m!6569168))

(assert (=> b!5588723 m!6569168))

(declare-fun m!6569170 () Bool)

(assert (=> b!5588723 m!6569170))

(declare-fun m!6569172 () Bool)

(assert (=> b!5588723 m!6569172))

(assert (=> b!5588723 m!6569170))

(assert (=> b!5588723 m!6569172))

(declare-fun m!6569174 () Bool)

(assert (=> b!5588723 m!6569174))

(assert (=> b!5588512 d!1766336))

(declare-fun d!1766338 () Bool)

(declare-fun c!979157 () Bool)

(assert (=> d!1766338 (= c!979157 (isEmpty!34725 (t!376306 s!2326)))))

(declare-fun e!3447991 () Bool)

(assert (=> d!1766338 (= (matchZipper!1715 ((_ map or) lt!2255192 lt!2255201) (t!376306 s!2326)) e!3447991)))

(declare-fun b!5588724 () Bool)

(assert (=> b!5588724 (= e!3447991 (nullableZipper!1572 ((_ map or) lt!2255192 lt!2255201)))))

(declare-fun b!5588725 () Bool)

(assert (=> b!5588725 (= e!3447991 (matchZipper!1715 (derivationStepZipper!1676 ((_ map or) lt!2255192 lt!2255201) (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))))))

(assert (= (and d!1766338 c!979157) b!5588724))

(assert (= (and d!1766338 (not c!979157)) b!5588725))

(assert (=> d!1766338 m!6569164))

(declare-fun m!6569176 () Bool)

(assert (=> b!5588724 m!6569176))

(assert (=> b!5588725 m!6569168))

(assert (=> b!5588725 m!6569168))

(declare-fun m!6569178 () Bool)

(assert (=> b!5588725 m!6569178))

(assert (=> b!5588725 m!6569172))

(assert (=> b!5588725 m!6569178))

(assert (=> b!5588725 m!6569172))

(declare-fun m!6569180 () Bool)

(assert (=> b!5588725 m!6569180))

(assert (=> b!5588512 d!1766338))

(declare-fun d!1766340 () Bool)

(declare-fun e!3448009 () Bool)

(assert (=> d!1766340 e!3448009))

(declare-fun res!2371326 () Bool)

(assert (=> d!1766340 (=> (not res!2371326) (not e!3448009))))

(declare-fun lt!2255246 () Regex!15577)

(assert (=> d!1766340 (= res!2371326 (validRegex!7313 lt!2255246))))

(declare-fun e!3448012 () Regex!15577)

(assert (=> d!1766340 (= lt!2255246 e!3448012)))

(declare-fun c!979168 () Bool)

(declare-fun e!3448011 () Bool)

(assert (=> d!1766340 (= c!979168 e!3448011)))

(declare-fun res!2371327 () Bool)

(assert (=> d!1766340 (=> (not res!2371327) (not e!3448011))))

(assert (=> d!1766340 (= res!2371327 ((_ is Cons!62907) (unfocusZipperList!1005 zl!343)))))

(declare-fun lambda!299920 () Int)

(declare-fun forall!14743 (List!63031 Int) Bool)

(assert (=> d!1766340 (forall!14743 (unfocusZipperList!1005 zl!343) lambda!299920)))

(assert (=> d!1766340 (= (generalisedUnion!1440 (unfocusZipperList!1005 zl!343)) lt!2255246)))

(declare-fun b!5588755 () Bool)

(declare-fun e!3448014 () Bool)

(declare-fun isUnion!570 (Regex!15577) Bool)

(assert (=> b!5588755 (= e!3448014 (isUnion!570 lt!2255246))))

(declare-fun b!5588756 () Bool)

(declare-fun head!11924 (List!63031) Regex!15577)

(assert (=> b!5588756 (= e!3448014 (= lt!2255246 (head!11924 (unfocusZipperList!1005 zl!343))))))

(declare-fun b!5588757 () Bool)

(declare-fun e!3448013 () Regex!15577)

(assert (=> b!5588757 (= e!3448013 (Union!15577 (h!69355 (unfocusZipperList!1005 zl!343)) (generalisedUnion!1440 (t!376307 (unfocusZipperList!1005 zl!343)))))))

(declare-fun b!5588758 () Bool)

(assert (=> b!5588758 (= e!3448012 e!3448013)))

(declare-fun c!979171 () Bool)

(assert (=> b!5588758 (= c!979171 ((_ is Cons!62907) (unfocusZipperList!1005 zl!343)))))

(declare-fun b!5588759 () Bool)

(assert (=> b!5588759 (= e!3448012 (h!69355 (unfocusZipperList!1005 zl!343)))))

(declare-fun b!5588760 () Bool)

(declare-fun e!3448010 () Bool)

(declare-fun isEmptyLang!1140 (Regex!15577) Bool)

(assert (=> b!5588760 (= e!3448010 (isEmptyLang!1140 lt!2255246))))

(declare-fun b!5588761 () Bool)

(assert (=> b!5588761 (= e!3448009 e!3448010)))

(declare-fun c!979170 () Bool)

(assert (=> b!5588761 (= c!979170 (isEmpty!34723 (unfocusZipperList!1005 zl!343)))))

(declare-fun b!5588762 () Bool)

(assert (=> b!5588762 (= e!3448010 e!3448014)))

(declare-fun c!979169 () Bool)

(declare-fun tail!11019 (List!63031) List!63031)

(assert (=> b!5588762 (= c!979169 (isEmpty!34723 (tail!11019 (unfocusZipperList!1005 zl!343))))))

(declare-fun b!5588763 () Bool)

(assert (=> b!5588763 (= e!3448013 EmptyLang!15577)))

(declare-fun b!5588764 () Bool)

(assert (=> b!5588764 (= e!3448011 (isEmpty!34723 (t!376307 (unfocusZipperList!1005 zl!343))))))

(assert (= (and d!1766340 res!2371327) b!5588764))

(assert (= (and d!1766340 c!979168) b!5588759))

(assert (= (and d!1766340 (not c!979168)) b!5588758))

(assert (= (and b!5588758 c!979171) b!5588757))

(assert (= (and b!5588758 (not c!979171)) b!5588763))

(assert (= (and d!1766340 res!2371326) b!5588761))

(assert (= (and b!5588761 c!979170) b!5588760))

(assert (= (and b!5588761 (not c!979170)) b!5588762))

(assert (= (and b!5588762 c!979169) b!5588756))

(assert (= (and b!5588762 (not c!979169)) b!5588755))

(declare-fun m!6569210 () Bool)

(assert (=> b!5588757 m!6569210))

(assert (=> b!5588761 m!6568968))

(declare-fun m!6569212 () Bool)

(assert (=> b!5588761 m!6569212))

(assert (=> b!5588756 m!6568968))

(declare-fun m!6569214 () Bool)

(assert (=> b!5588756 m!6569214))

(declare-fun m!6569216 () Bool)

(assert (=> b!5588755 m!6569216))

(declare-fun m!6569218 () Bool)

(assert (=> b!5588764 m!6569218))

(declare-fun m!6569220 () Bool)

(assert (=> b!5588760 m!6569220))

(assert (=> b!5588762 m!6568968))

(declare-fun m!6569222 () Bool)

(assert (=> b!5588762 m!6569222))

(assert (=> b!5588762 m!6569222))

(declare-fun m!6569224 () Bool)

(assert (=> b!5588762 m!6569224))

(declare-fun m!6569226 () Bool)

(assert (=> d!1766340 m!6569226))

(assert (=> d!1766340 m!6568968))

(declare-fun m!6569228 () Bool)

(assert (=> d!1766340 m!6569228))

(assert (=> b!5588543 d!1766340))

(declare-fun bs!1292293 () Bool)

(declare-fun d!1766348 () Bool)

(assert (= bs!1292293 (and d!1766348 d!1766340)))

(declare-fun lambda!299926 () Int)

(assert (=> bs!1292293 (= lambda!299926 lambda!299920)))

(declare-fun lt!2255250 () List!63031)

(assert (=> d!1766348 (forall!14743 lt!2255250 lambda!299926)))

(declare-fun e!3448019 () List!63031)

(assert (=> d!1766348 (= lt!2255250 e!3448019)))

(declare-fun c!979174 () Bool)

(assert (=> d!1766348 (= c!979174 ((_ is Cons!62908) zl!343))))

(assert (=> d!1766348 (= (unfocusZipperList!1005 zl!343) lt!2255250)))

(declare-fun b!5588773 () Bool)

(assert (=> b!5588773 (= e!3448019 (Cons!62907 (generalisedConcat!1192 (exprs!5461 (h!69356 zl!343))) (unfocusZipperList!1005 (t!376308 zl!343))))))

(declare-fun b!5588774 () Bool)

(assert (=> b!5588774 (= e!3448019 Nil!62907)))

(assert (= (and d!1766348 c!979174) b!5588773))

(assert (= (and d!1766348 (not c!979174)) b!5588774))

(declare-fun m!6569234 () Bool)

(assert (=> d!1766348 m!6569234))

(assert (=> b!5588773 m!6569000))

(declare-fun m!6569236 () Bool)

(assert (=> b!5588773 m!6569236))

(assert (=> b!5588543 d!1766348))

(declare-fun bs!1292294 () Bool)

(declare-fun d!1766352 () Bool)

(assert (= bs!1292294 (and d!1766352 d!1766340)))

(declare-fun lambda!299929 () Int)

(assert (=> bs!1292294 (= lambda!299929 lambda!299920)))

(declare-fun bs!1292295 () Bool)

(assert (= bs!1292295 (and d!1766352 d!1766348)))

(assert (=> bs!1292295 (= lambda!299929 lambda!299926)))

(assert (=> d!1766352 (= (inv!82189 (h!69356 zl!343)) (forall!14743 (exprs!5461 (h!69356 zl!343)) lambda!299929))))

(declare-fun bs!1292296 () Bool)

(assert (= bs!1292296 d!1766352))

(declare-fun m!6569238 () Bool)

(assert (=> bs!1292296 m!6569238))

(assert (=> b!5588513 d!1766352))

(assert (=> b!5588524 d!1766336))

(declare-fun d!1766354 () Bool)

(declare-fun c!979175 () Bool)

(assert (=> d!1766354 (= c!979175 (isEmpty!34725 (t!376306 s!2326)))))

(declare-fun e!3448020 () Bool)

(assert (=> d!1766354 (= (matchZipper!1715 lt!2255213 (t!376306 s!2326)) e!3448020)))

(declare-fun b!5588775 () Bool)

(assert (=> b!5588775 (= e!3448020 (nullableZipper!1572 lt!2255213))))

(declare-fun b!5588776 () Bool)

(assert (=> b!5588776 (= e!3448020 (matchZipper!1715 (derivationStepZipper!1676 lt!2255213 (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))))))

(assert (= (and d!1766354 c!979175) b!5588775))

(assert (= (and d!1766354 (not c!979175)) b!5588776))

(assert (=> d!1766354 m!6569164))

(declare-fun m!6569240 () Bool)

(assert (=> b!5588775 m!6569240))

(assert (=> b!5588776 m!6569168))

(assert (=> b!5588776 m!6569168))

(declare-fun m!6569242 () Bool)

(assert (=> b!5588776 m!6569242))

(assert (=> b!5588776 m!6569172))

(assert (=> b!5588776 m!6569242))

(assert (=> b!5588776 m!6569172))

(declare-fun m!6569244 () Bool)

(assert (=> b!5588776 m!6569244))

(assert (=> b!5588524 d!1766354))

(declare-fun d!1766356 () Bool)

(declare-fun c!979176 () Bool)

(assert (=> d!1766356 (= c!979176 (isEmpty!34725 (t!376306 s!2326)))))

(declare-fun e!3448021 () Bool)

(assert (=> d!1766356 (= (matchZipper!1715 lt!2255199 (t!376306 s!2326)) e!3448021)))

(declare-fun b!5588777 () Bool)

(assert (=> b!5588777 (= e!3448021 (nullableZipper!1572 lt!2255199))))

(declare-fun b!5588778 () Bool)

(assert (=> b!5588778 (= e!3448021 (matchZipper!1715 (derivationStepZipper!1676 lt!2255199 (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))))))

(assert (= (and d!1766356 c!979176) b!5588777))

(assert (= (and d!1766356 (not c!979176)) b!5588778))

(assert (=> d!1766356 m!6569164))

(declare-fun m!6569246 () Bool)

(assert (=> b!5588777 m!6569246))

(assert (=> b!5588778 m!6569168))

(assert (=> b!5588778 m!6569168))

(declare-fun m!6569248 () Bool)

(assert (=> b!5588778 m!6569248))

(assert (=> b!5588778 m!6569172))

(assert (=> b!5588778 m!6569248))

(assert (=> b!5588778 m!6569172))

(declare-fun m!6569250 () Bool)

(assert (=> b!5588778 m!6569250))

(assert (=> b!5588524 d!1766356))

(declare-fun e!3448022 () Bool)

(declare-fun d!1766358 () Bool)

(assert (=> d!1766358 (= (matchZipper!1715 ((_ map or) lt!2255199 lt!2255189) (t!376306 s!2326)) e!3448022)))

(declare-fun res!2371332 () Bool)

(assert (=> d!1766358 (=> res!2371332 e!3448022)))

(assert (=> d!1766358 (= res!2371332 (matchZipper!1715 lt!2255199 (t!376306 s!2326)))))

(declare-fun lt!2255251 () Unit!155708)

(assert (=> d!1766358 (= lt!2255251 (choose!42376 lt!2255199 lt!2255189 (t!376306 s!2326)))))

(assert (=> d!1766358 (= (lemmaZipperConcatMatchesSameAsBothZippers!602 lt!2255199 lt!2255189 (t!376306 s!2326)) lt!2255251)))

(declare-fun b!5588779 () Bool)

(assert (=> b!5588779 (= e!3448022 (matchZipper!1715 lt!2255189 (t!376306 s!2326)))))

(assert (= (and d!1766358 (not res!2371332)) b!5588779))

(declare-fun m!6569252 () Bool)

(assert (=> d!1766358 m!6569252))

(assert (=> d!1766358 m!6568938))

(declare-fun m!6569254 () Bool)

(assert (=> d!1766358 m!6569254))

(assert (=> b!5588779 m!6568934))

(assert (=> b!5588524 d!1766358))

(declare-fun b!5588806 () Bool)

(declare-fun res!2371354 () Bool)

(declare-fun e!3448046 () Bool)

(assert (=> b!5588806 (=> (not res!2371354) (not e!3448046))))

(declare-fun call!418435 () Bool)

(assert (=> b!5588806 (= res!2371354 call!418435)))

(declare-fun e!3448045 () Bool)

(assert (=> b!5588806 (= e!3448045 e!3448046)))

(declare-fun b!5588807 () Bool)

(declare-fun call!418437 () Bool)

(assert (=> b!5588807 (= e!3448046 call!418437)))

(declare-fun d!1766360 () Bool)

(declare-fun res!2371352 () Bool)

(declare-fun e!3448043 () Bool)

(assert (=> d!1766360 (=> res!2371352 e!3448043)))

(assert (=> d!1766360 (= res!2371352 ((_ is ElementMatch!15577) r!7292))))

(assert (=> d!1766360 (= (validRegex!7313 r!7292) e!3448043)))

(declare-fun bm!418430 () Bool)

(declare-fun call!418436 () Bool)

(assert (=> bm!418430 (= call!418437 call!418436)))

(declare-fun b!5588808 () Bool)

(declare-fun e!3448047 () Bool)

(assert (=> b!5588808 (= e!3448043 e!3448047)))

(declare-fun c!979181 () Bool)

(assert (=> b!5588808 (= c!979181 ((_ is Star!15577) r!7292))))

(declare-fun b!5588809 () Bool)

(declare-fun e!3448044 () Bool)

(assert (=> b!5588809 (= e!3448044 call!418436)))

(declare-fun bm!418431 () Bool)

(declare-fun c!979182 () Bool)

(assert (=> bm!418431 (= call!418435 (validRegex!7313 (ite c!979182 (regOne!31667 r!7292) (regOne!31666 r!7292))))))

(declare-fun b!5588810 () Bool)

(declare-fun res!2371351 () Bool)

(declare-fun e!3448041 () Bool)

(assert (=> b!5588810 (=> res!2371351 e!3448041)))

(assert (=> b!5588810 (= res!2371351 (not ((_ is Concat!24422) r!7292)))))

(assert (=> b!5588810 (= e!3448045 e!3448041)))

(declare-fun b!5588811 () Bool)

(assert (=> b!5588811 (= e!3448047 e!3448044)))

(declare-fun res!2371355 () Bool)

(assert (=> b!5588811 (= res!2371355 (not (nullable!5609 (reg!15906 r!7292))))))

(assert (=> b!5588811 (=> (not res!2371355) (not e!3448044))))

(declare-fun b!5588812 () Bool)

(declare-fun e!3448042 () Bool)

(assert (=> b!5588812 (= e!3448041 e!3448042)))

(declare-fun res!2371353 () Bool)

(assert (=> b!5588812 (=> (not res!2371353) (not e!3448042))))

(assert (=> b!5588812 (= res!2371353 call!418435)))

(declare-fun bm!418432 () Bool)

(assert (=> bm!418432 (= call!418436 (validRegex!7313 (ite c!979181 (reg!15906 r!7292) (ite c!979182 (regTwo!31667 r!7292) (regTwo!31666 r!7292)))))))

(declare-fun b!5588813 () Bool)

(assert (=> b!5588813 (= e!3448047 e!3448045)))

(assert (=> b!5588813 (= c!979182 ((_ is Union!15577) r!7292))))

(declare-fun b!5588814 () Bool)

(assert (=> b!5588814 (= e!3448042 call!418437)))

(assert (= (and d!1766360 (not res!2371352)) b!5588808))

(assert (= (and b!5588808 c!979181) b!5588811))

(assert (= (and b!5588808 (not c!979181)) b!5588813))

(assert (= (and b!5588811 res!2371355) b!5588809))

(assert (= (and b!5588813 c!979182) b!5588806))

(assert (= (and b!5588813 (not c!979182)) b!5588810))

(assert (= (and b!5588806 res!2371354) b!5588807))

(assert (= (and b!5588810 (not res!2371351)) b!5588812))

(assert (= (and b!5588812 res!2371353) b!5588814))

(assert (= (or b!5588807 b!5588814) bm!418430))

(assert (= (or b!5588806 b!5588812) bm!418431))

(assert (= (or b!5588809 bm!418430) bm!418432))

(declare-fun m!6569256 () Bool)

(assert (=> bm!418431 m!6569256))

(declare-fun m!6569258 () Bool)

(assert (=> b!5588811 m!6569258))

(declare-fun m!6569260 () Bool)

(assert (=> bm!418432 m!6569260))

(assert (=> start!580460 d!1766360))

(declare-fun d!1766362 () Bool)

(declare-fun c!979183 () Bool)

(assert (=> d!1766362 (= c!979183 (isEmpty!34725 (t!376306 s!2326)))))

(declare-fun e!3448048 () Bool)

(assert (=> d!1766362 (= (matchZipper!1715 lt!2255201 (t!376306 s!2326)) e!3448048)))

(declare-fun b!5588815 () Bool)

(assert (=> b!5588815 (= e!3448048 (nullableZipper!1572 lt!2255201))))

(declare-fun b!5588816 () Bool)

(assert (=> b!5588816 (= e!3448048 (matchZipper!1715 (derivationStepZipper!1676 lt!2255201 (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))))))

(assert (= (and d!1766362 c!979183) b!5588815))

(assert (= (and d!1766362 (not c!979183)) b!5588816))

(assert (=> d!1766362 m!6569164))

(declare-fun m!6569262 () Bool)

(assert (=> b!5588815 m!6569262))

(assert (=> b!5588816 m!6569168))

(assert (=> b!5588816 m!6569168))

(declare-fun m!6569264 () Bool)

(assert (=> b!5588816 m!6569264))

(assert (=> b!5588816 m!6569172))

(assert (=> b!5588816 m!6569264))

(assert (=> b!5588816 m!6569172))

(declare-fun m!6569266 () Bool)

(assert (=> b!5588816 m!6569266))

(assert (=> b!5588544 d!1766362))

(declare-fun bs!1292303 () Bool)

(declare-fun b!5588886 () Bool)

(assert (= bs!1292303 (and b!5588886 b!5588535)))

(declare-fun lambda!299947 () Int)

(assert (=> bs!1292303 (not (= lambda!299947 lambda!299912))))

(assert (=> bs!1292303 (not (= lambda!299947 lambda!299913))))

(assert (=> b!5588886 true))

(assert (=> b!5588886 true))

(declare-fun bs!1292304 () Bool)

(declare-fun b!5588883 () Bool)

(assert (= bs!1292304 (and b!5588883 b!5588535)))

(declare-fun lambda!299948 () Int)

(assert (=> bs!1292304 (not (= lambda!299948 lambda!299912))))

(assert (=> bs!1292304 (= lambda!299948 lambda!299913)))

(declare-fun bs!1292305 () Bool)

(assert (= bs!1292305 (and b!5588883 b!5588886)))

(assert (=> bs!1292305 (not (= lambda!299948 lambda!299947))))

(assert (=> b!5588883 true))

(assert (=> b!5588883 true))

(declare-fun bm!418437 () Bool)

(declare-fun call!418443 () Bool)

(declare-fun c!979202 () Bool)

(assert (=> bm!418437 (= call!418443 (Exists!2677 (ite c!979202 lambda!299947 lambda!299948)))))

(declare-fun d!1766364 () Bool)

(declare-fun c!979203 () Bool)

(assert (=> d!1766364 (= c!979203 ((_ is EmptyExpr!15577) r!7292))))

(declare-fun e!3448086 () Bool)

(assert (=> d!1766364 (= (matchRSpec!2680 r!7292 s!2326) e!3448086)))

(declare-fun b!5588881 () Bool)

(declare-fun e!3448088 () Bool)

(declare-fun e!3448087 () Bool)

(assert (=> b!5588881 (= e!3448088 e!3448087)))

(declare-fun res!2371388 () Bool)

(assert (=> b!5588881 (= res!2371388 (matchRSpec!2680 (regOne!31667 r!7292) s!2326))))

(assert (=> b!5588881 (=> res!2371388 e!3448087)))

(declare-fun b!5588882 () Bool)

(declare-fun call!418442 () Bool)

(assert (=> b!5588882 (= e!3448086 call!418442)))

(declare-fun e!3448090 () Bool)

(assert (=> b!5588883 (= e!3448090 call!418443)))

(declare-fun b!5588884 () Bool)

(assert (=> b!5588884 (= e!3448087 (matchRSpec!2680 (regTwo!31667 r!7292) s!2326))))

(declare-fun b!5588885 () Bool)

(declare-fun res!2371389 () Bool)

(declare-fun e!3448085 () Bool)

(assert (=> b!5588885 (=> res!2371389 e!3448085)))

(assert (=> b!5588885 (= res!2371389 call!418442)))

(assert (=> b!5588885 (= e!3448090 e!3448085)))

(assert (=> b!5588886 (= e!3448085 call!418443)))

(declare-fun b!5588887 () Bool)

(declare-fun c!979201 () Bool)

(assert (=> b!5588887 (= c!979201 ((_ is Union!15577) r!7292))))

(declare-fun e!3448089 () Bool)

(assert (=> b!5588887 (= e!3448089 e!3448088)))

(declare-fun b!5588888 () Bool)

(assert (=> b!5588888 (= e!3448089 (= s!2326 (Cons!62906 (c!979094 r!7292) Nil!62906)))))

(declare-fun bm!418438 () Bool)

(assert (=> bm!418438 (= call!418442 (isEmpty!34725 s!2326))))

(declare-fun b!5588889 () Bool)

(declare-fun c!979200 () Bool)

(assert (=> b!5588889 (= c!979200 ((_ is ElementMatch!15577) r!7292))))

(declare-fun e!3448091 () Bool)

(assert (=> b!5588889 (= e!3448091 e!3448089)))

(declare-fun b!5588890 () Bool)

(assert (=> b!5588890 (= e!3448088 e!3448090)))

(assert (=> b!5588890 (= c!979202 ((_ is Star!15577) r!7292))))

(declare-fun b!5588891 () Bool)

(assert (=> b!5588891 (= e!3448086 e!3448091)))

(declare-fun res!2371390 () Bool)

(assert (=> b!5588891 (= res!2371390 (not ((_ is EmptyLang!15577) r!7292)))))

(assert (=> b!5588891 (=> (not res!2371390) (not e!3448091))))

(assert (= (and d!1766364 c!979203) b!5588882))

(assert (= (and d!1766364 (not c!979203)) b!5588891))

(assert (= (and b!5588891 res!2371390) b!5588889))

(assert (= (and b!5588889 c!979200) b!5588888))

(assert (= (and b!5588889 (not c!979200)) b!5588887))

(assert (= (and b!5588887 c!979201) b!5588881))

(assert (= (and b!5588887 (not c!979201)) b!5588890))

(assert (= (and b!5588881 (not res!2371388)) b!5588884))

(assert (= (and b!5588890 c!979202) b!5588885))

(assert (= (and b!5588890 (not c!979202)) b!5588883))

(assert (= (and b!5588885 (not res!2371389)) b!5588886))

(assert (= (or b!5588886 b!5588883) bm!418437))

(assert (= (or b!5588882 b!5588885) bm!418438))

(declare-fun m!6569278 () Bool)

(assert (=> bm!418437 m!6569278))

(declare-fun m!6569280 () Bool)

(assert (=> b!5588881 m!6569280))

(declare-fun m!6569282 () Bool)

(assert (=> b!5588884 m!6569282))

(declare-fun m!6569284 () Bool)

(assert (=> bm!418438 m!6569284))

(assert (=> b!5588520 d!1766364))

(declare-fun b!5588945 () Bool)

(declare-fun res!2371418 () Bool)

(declare-fun e!3448127 () Bool)

(assert (=> b!5588945 (=> (not res!2371418) (not e!3448127))))

(assert (=> b!5588945 (= res!2371418 (isEmpty!34725 (tail!11018 s!2326)))))

(declare-fun b!5588946 () Bool)

(declare-fun e!3448124 () Bool)

(declare-fun e!3448119 () Bool)

(assert (=> b!5588946 (= e!3448124 e!3448119)))

(declare-fun c!979222 () Bool)

(assert (=> b!5588946 (= c!979222 ((_ is EmptyLang!15577) r!7292))))

(declare-fun b!5588947 () Bool)

(declare-fun lt!2255259 () Bool)

(declare-fun call!418452 () Bool)

(assert (=> b!5588947 (= e!3448124 (= lt!2255259 call!418452))))

(declare-fun b!5588948 () Bool)

(declare-fun res!2371419 () Bool)

(declare-fun e!3448123 () Bool)

(assert (=> b!5588948 (=> res!2371419 e!3448123)))

(assert (=> b!5588948 (= res!2371419 (not ((_ is ElementMatch!15577) r!7292)))))

(assert (=> b!5588948 (= e!3448119 e!3448123)))

(declare-fun b!5588949 () Bool)

(declare-fun res!2371411 () Bool)

(assert (=> b!5588949 (=> res!2371411 e!3448123)))

(assert (=> b!5588949 (= res!2371411 e!3448127)))

(declare-fun res!2371416 () Bool)

(assert (=> b!5588949 (=> (not res!2371416) (not e!3448127))))

(assert (=> b!5588949 (= res!2371416 lt!2255259)))

(declare-fun b!5588950 () Bool)

(declare-fun e!3448120 () Bool)

(assert (=> b!5588950 (= e!3448120 (nullable!5609 r!7292))))

(declare-fun b!5588951 () Bool)

(declare-fun derivativeStep!4424 (Regex!15577 C!31424) Regex!15577)

(assert (=> b!5588951 (= e!3448120 (matchR!7762 (derivativeStep!4424 r!7292 (head!11923 s!2326)) (tail!11018 s!2326)))))

(declare-fun b!5588952 () Bool)

(assert (=> b!5588952 (= e!3448119 (not lt!2255259))))

(declare-fun bm!418447 () Bool)

(assert (=> bm!418447 (= call!418452 (isEmpty!34725 s!2326))))

(declare-fun d!1766374 () Bool)

(assert (=> d!1766374 e!3448124))

(declare-fun c!979221 () Bool)

(assert (=> d!1766374 (= c!979221 ((_ is EmptyExpr!15577) r!7292))))

(assert (=> d!1766374 (= lt!2255259 e!3448120)))

(declare-fun c!979220 () Bool)

(assert (=> d!1766374 (= c!979220 (isEmpty!34725 s!2326))))

(assert (=> d!1766374 (validRegex!7313 r!7292)))

(assert (=> d!1766374 (= (matchR!7762 r!7292 s!2326) lt!2255259)))

(declare-fun b!5588953 () Bool)

(declare-fun e!3448125 () Bool)

(assert (=> b!5588953 (= e!3448123 e!3448125)))

(declare-fun res!2371414 () Bool)

(assert (=> b!5588953 (=> (not res!2371414) (not e!3448125))))

(assert (=> b!5588953 (= res!2371414 (not lt!2255259))))

(declare-fun b!5588954 () Bool)

(declare-fun e!3448126 () Bool)

(assert (=> b!5588954 (= e!3448125 e!3448126)))

(declare-fun res!2371415 () Bool)

(assert (=> b!5588954 (=> res!2371415 e!3448126)))

(assert (=> b!5588954 (= res!2371415 call!418452)))

(declare-fun b!5588955 () Bool)

(declare-fun res!2371410 () Bool)

(assert (=> b!5588955 (=> (not res!2371410) (not e!3448127))))

(assert (=> b!5588955 (= res!2371410 (not call!418452))))

(declare-fun b!5588956 () Bool)

(declare-fun res!2371417 () Bool)

(assert (=> b!5588956 (=> res!2371417 e!3448126)))

(assert (=> b!5588956 (= res!2371417 (not (isEmpty!34725 (tail!11018 s!2326))))))

(declare-fun b!5588957 () Bool)

(assert (=> b!5588957 (= e!3448127 (= (head!11923 s!2326) (c!979094 r!7292)))))

(declare-fun b!5588958 () Bool)

(assert (=> b!5588958 (= e!3448126 (not (= (head!11923 s!2326) (c!979094 r!7292))))))

(assert (= (and d!1766374 c!979220) b!5588950))

(assert (= (and d!1766374 (not c!979220)) b!5588951))

(assert (= (and d!1766374 c!979221) b!5588947))

(assert (= (and d!1766374 (not c!979221)) b!5588946))

(assert (= (and b!5588946 c!979222) b!5588952))

(assert (= (and b!5588946 (not c!979222)) b!5588948))

(assert (= (and b!5588948 (not res!2371419)) b!5588949))

(assert (= (and b!5588949 res!2371416) b!5588955))

(assert (= (and b!5588955 res!2371410) b!5588945))

(assert (= (and b!5588945 res!2371418) b!5588957))

(assert (= (and b!5588949 (not res!2371411)) b!5588953))

(assert (= (and b!5588953 res!2371414) b!5588954))

(assert (= (and b!5588954 (not res!2371415)) b!5588956))

(assert (= (and b!5588956 (not res!2371417)) b!5588958))

(assert (= (or b!5588947 b!5588954 b!5588955) bm!418447))

(declare-fun m!6569294 () Bool)

(assert (=> b!5588957 m!6569294))

(declare-fun m!6569296 () Bool)

(assert (=> b!5588950 m!6569296))

(assert (=> b!5588958 m!6569294))

(assert (=> bm!418447 m!6569284))

(assert (=> b!5588951 m!6569294))

(assert (=> b!5588951 m!6569294))

(declare-fun m!6569298 () Bool)

(assert (=> b!5588951 m!6569298))

(declare-fun m!6569300 () Bool)

(assert (=> b!5588951 m!6569300))

(assert (=> b!5588951 m!6569298))

(assert (=> b!5588951 m!6569300))

(declare-fun m!6569302 () Bool)

(assert (=> b!5588951 m!6569302))

(assert (=> d!1766374 m!6569284))

(assert (=> d!1766374 m!6568994))

(assert (=> b!5588945 m!6569300))

(assert (=> b!5588945 m!6569300))

(declare-fun m!6569304 () Bool)

(assert (=> b!5588945 m!6569304))

(assert (=> b!5588956 m!6569300))

(assert (=> b!5588956 m!6569300))

(assert (=> b!5588956 m!6569304))

(assert (=> b!5588520 d!1766374))

(declare-fun d!1766378 () Bool)

(assert (=> d!1766378 (= (matchR!7762 r!7292 s!2326) (matchRSpec!2680 r!7292 s!2326))))

(declare-fun lt!2255262 () Unit!155708)

(declare-fun choose!42378 (Regex!15577 List!63030) Unit!155708)

(assert (=> d!1766378 (= lt!2255262 (choose!42378 r!7292 s!2326))))

(assert (=> d!1766378 (validRegex!7313 r!7292)))

(assert (=> d!1766378 (= (mainMatchTheorem!2680 r!7292 s!2326) lt!2255262)))

(declare-fun bs!1292313 () Bool)

(assert (= bs!1292313 d!1766378))

(assert (=> bs!1292313 m!6568960))

(assert (=> bs!1292313 m!6568958))

(declare-fun m!6569306 () Bool)

(assert (=> bs!1292313 m!6569306))

(assert (=> bs!1292313 m!6568994))

(assert (=> b!5588520 d!1766378))

(declare-fun d!1766380 () Bool)

(declare-fun c!979223 () Bool)

(assert (=> d!1766380 (= c!979223 (isEmpty!34725 (t!376306 s!2326)))))

(declare-fun e!3448134 () Bool)

(assert (=> d!1766380 (= (matchZipper!1715 lt!2255189 (t!376306 s!2326)) e!3448134)))

(declare-fun b!5588973 () Bool)

(assert (=> b!5588973 (= e!3448134 (nullableZipper!1572 lt!2255189))))

(declare-fun b!5588974 () Bool)

(assert (=> b!5588974 (= e!3448134 (matchZipper!1715 (derivationStepZipper!1676 lt!2255189 (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))))))

(assert (= (and d!1766380 c!979223) b!5588973))

(assert (= (and d!1766380 (not c!979223)) b!5588974))

(assert (=> d!1766380 m!6569164))

(declare-fun m!6569308 () Bool)

(assert (=> b!5588973 m!6569308))

(assert (=> b!5588974 m!6569168))

(assert (=> b!5588974 m!6569168))

(declare-fun m!6569310 () Bool)

(assert (=> b!5588974 m!6569310))

(assert (=> b!5588974 m!6569172))

(assert (=> b!5588974 m!6569310))

(assert (=> b!5588974 m!6569172))

(declare-fun m!6569312 () Bool)

(assert (=> b!5588974 m!6569312))

(assert (=> b!5588529 d!1766380))

(assert (=> b!5588540 d!1766362))

(declare-fun bs!1292315 () Bool)

(declare-fun d!1766382 () Bool)

(assert (= bs!1292315 (and d!1766382 d!1766340)))

(declare-fun lambda!299953 () Int)

(assert (=> bs!1292315 (= lambda!299953 lambda!299920)))

(declare-fun bs!1292316 () Bool)

(assert (= bs!1292316 (and d!1766382 d!1766348)))

(assert (=> bs!1292316 (= lambda!299953 lambda!299926)))

(declare-fun bs!1292317 () Bool)

(assert (= bs!1292317 (and d!1766382 d!1766352)))

(assert (=> bs!1292317 (= lambda!299953 lambda!299929)))

(declare-fun b!5589009 () Bool)

(declare-fun e!3448154 () Bool)

(declare-fun e!3448156 () Bool)

(assert (=> b!5589009 (= e!3448154 e!3448156)))

(declare-fun c!979238 () Bool)

(assert (=> b!5589009 (= c!979238 (isEmpty!34723 (tail!11019 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun b!5589010 () Bool)

(declare-fun e!3448159 () Regex!15577)

(assert (=> b!5589010 (= e!3448159 EmptyExpr!15577)))

(declare-fun b!5589011 () Bool)

(declare-fun lt!2255269 () Regex!15577)

(declare-fun isEmptyExpr!1131 (Regex!15577) Bool)

(assert (=> b!5589011 (= e!3448154 (isEmptyExpr!1131 lt!2255269))))

(declare-fun b!5589012 () Bool)

(assert (=> b!5589012 (= e!3448159 (Concat!24422 (h!69355 (exprs!5461 (h!69356 zl!343))) (generalisedConcat!1192 (t!376307 (exprs!5461 (h!69356 zl!343))))))))

(declare-fun e!3448158 () Bool)

(assert (=> d!1766382 e!3448158))

(declare-fun res!2371447 () Bool)

(assert (=> d!1766382 (=> (not res!2371447) (not e!3448158))))

(assert (=> d!1766382 (= res!2371447 (validRegex!7313 lt!2255269))))

(declare-fun e!3448157 () Regex!15577)

(assert (=> d!1766382 (= lt!2255269 e!3448157)))

(declare-fun c!979235 () Bool)

(declare-fun e!3448155 () Bool)

(assert (=> d!1766382 (= c!979235 e!3448155)))

(declare-fun res!2371446 () Bool)

(assert (=> d!1766382 (=> (not res!2371446) (not e!3448155))))

(assert (=> d!1766382 (= res!2371446 ((_ is Cons!62907) (exprs!5461 (h!69356 zl!343))))))

(assert (=> d!1766382 (forall!14743 (exprs!5461 (h!69356 zl!343)) lambda!299953)))

(assert (=> d!1766382 (= (generalisedConcat!1192 (exprs!5461 (h!69356 zl!343))) lt!2255269)))

(declare-fun b!5589013 () Bool)

(assert (=> b!5589013 (= e!3448158 e!3448154)))

(declare-fun c!979237 () Bool)

(assert (=> b!5589013 (= c!979237 (isEmpty!34723 (exprs!5461 (h!69356 zl!343))))))

(declare-fun b!5589014 () Bool)

(assert (=> b!5589014 (= e!3448157 e!3448159)))

(declare-fun c!979236 () Bool)

(assert (=> b!5589014 (= c!979236 ((_ is Cons!62907) (exprs!5461 (h!69356 zl!343))))))

(declare-fun b!5589015 () Bool)

(declare-fun isConcat!654 (Regex!15577) Bool)

(assert (=> b!5589015 (= e!3448156 (isConcat!654 lt!2255269))))

(declare-fun b!5589016 () Bool)

(assert (=> b!5589016 (= e!3448155 (isEmpty!34723 (t!376307 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun b!5589017 () Bool)

(assert (=> b!5589017 (= e!3448157 (h!69355 (exprs!5461 (h!69356 zl!343))))))

(declare-fun b!5589018 () Bool)

(assert (=> b!5589018 (= e!3448156 (= lt!2255269 (head!11924 (exprs!5461 (h!69356 zl!343)))))))

(assert (= (and d!1766382 res!2371446) b!5589016))

(assert (= (and d!1766382 c!979235) b!5589017))

(assert (= (and d!1766382 (not c!979235)) b!5589014))

(assert (= (and b!5589014 c!979236) b!5589012))

(assert (= (and b!5589014 (not c!979236)) b!5589010))

(assert (= (and d!1766382 res!2371447) b!5589013))

(assert (= (and b!5589013 c!979237) b!5589011))

(assert (= (and b!5589013 (not c!979237)) b!5589009))

(assert (= (and b!5589009 c!979238) b!5589018))

(assert (= (and b!5589009 (not c!979238)) b!5589015))

(declare-fun m!6569328 () Bool)

(assert (=> b!5589018 m!6569328))

(declare-fun m!6569330 () Bool)

(assert (=> b!5589015 m!6569330))

(declare-fun m!6569332 () Bool)

(assert (=> b!5589012 m!6569332))

(declare-fun m!6569334 () Bool)

(assert (=> d!1766382 m!6569334))

(declare-fun m!6569336 () Bool)

(assert (=> d!1766382 m!6569336))

(declare-fun m!6569338 () Bool)

(assert (=> b!5589009 m!6569338))

(assert (=> b!5589009 m!6569338))

(declare-fun m!6569340 () Bool)

(assert (=> b!5589009 m!6569340))

(declare-fun m!6569342 () Bool)

(assert (=> b!5589011 m!6569342))

(declare-fun m!6569344 () Bool)

(assert (=> b!5589013 m!6569344))

(assert (=> b!5589016 m!6568956))

(assert (=> b!5588530 d!1766382))

(declare-fun b!5589080 () Bool)

(declare-fun e!3448196 () Bool)

(assert (=> b!5589080 (= e!3448196 (nullable!5609 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292)))))))

(declare-fun b!5589081 () Bool)

(declare-fun e!3448200 () (InoxSet Context!9922))

(declare-fun call!418471 () (InoxSet Context!9922))

(assert (=> b!5589081 (= e!3448200 call!418471)))

(declare-fun call!418473 () List!63031)

(declare-fun bm!418463 () Bool)

(declare-fun c!979267 () Bool)

(declare-fun c!979269 () Bool)

(declare-fun $colon$colon!1640 (List!63031 Regex!15577) List!63031)

(assert (=> bm!418463 (= call!418473 ($colon$colon!1640 (exprs!5461 lt!2255202) (ite (or c!979269 c!979267) (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (regTwo!31667 (regOne!31666 r!7292)))))))

(declare-fun call!418468 () List!63031)

(declare-fun c!979268 () Bool)

(declare-fun call!418469 () (InoxSet Context!9922))

(declare-fun bm!418464 () Bool)

(assert (=> bm!418464 (= call!418469 (derivationStepZipperDown!919 (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292)))))) (ite (or c!979268 c!979269) lt!2255202 (Context!9923 call!418468)) (h!69354 s!2326)))))

(declare-fun b!5589082 () Bool)

(declare-fun e!3448199 () (InoxSet Context!9922))

(declare-fun e!3448198 () (InoxSet Context!9922))

(assert (=> b!5589082 (= e!3448199 e!3448198)))

(assert (=> b!5589082 (= c!979268 ((_ is Union!15577) (regTwo!31667 (regOne!31666 r!7292))))))

(declare-fun d!1766388 () Bool)

(declare-fun c!979266 () Bool)

(assert (=> d!1766388 (= c!979266 (and ((_ is ElementMatch!15577) (regTwo!31667 (regOne!31666 r!7292))) (= (c!979094 (regTwo!31667 (regOne!31666 r!7292))) (h!69354 s!2326))))))

(assert (=> d!1766388 (= (derivationStepZipperDown!919 (regTwo!31667 (regOne!31666 r!7292)) lt!2255202 (h!69354 s!2326)) e!3448199)))

(declare-fun bm!418465 () Bool)

(declare-fun call!418470 () (InoxSet Context!9922))

(assert (=> bm!418465 (= call!418470 call!418469)))

(declare-fun b!5589083 () Bool)

(declare-fun e!3448195 () (InoxSet Context!9922))

(assert (=> b!5589083 (= e!3448195 e!3448200)))

(assert (=> b!5589083 (= c!979267 ((_ is Concat!24422) (regTwo!31667 (regOne!31666 r!7292))))))

(declare-fun b!5589084 () Bool)

(assert (=> b!5589084 (= c!979269 e!3448196)))

(declare-fun res!2371457 () Bool)

(assert (=> b!5589084 (=> (not res!2371457) (not e!3448196))))

(assert (=> b!5589084 (= res!2371457 ((_ is Concat!24422) (regTwo!31667 (regOne!31666 r!7292))))))

(assert (=> b!5589084 (= e!3448198 e!3448195)))

(declare-fun b!5589085 () Bool)

(declare-fun e!3448197 () (InoxSet Context!9922))

(assert (=> b!5589085 (= e!3448197 call!418471)))

(declare-fun bm!418466 () Bool)

(assert (=> bm!418466 (= call!418468 call!418473)))

(declare-fun b!5589086 () Bool)

(assert (=> b!5589086 (= e!3448199 (store ((as const (Array Context!9922 Bool)) false) lt!2255202 true))))

(declare-fun b!5589087 () Bool)

(declare-fun call!418472 () (InoxSet Context!9922))

(assert (=> b!5589087 (= e!3448198 ((_ map or) call!418469 call!418472))))

(declare-fun b!5589088 () Bool)

(assert (=> b!5589088 (= e!3448195 ((_ map or) call!418472 call!418470))))

(declare-fun b!5589089 () Bool)

(declare-fun c!979265 () Bool)

(assert (=> b!5589089 (= c!979265 ((_ is Star!15577) (regTwo!31667 (regOne!31666 r!7292))))))

(assert (=> b!5589089 (= e!3448200 e!3448197)))

(declare-fun b!5589090 () Bool)

(assert (=> b!5589090 (= e!3448197 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418467 () Bool)

(assert (=> bm!418467 (= call!418471 call!418470)))

(declare-fun bm!418468 () Bool)

(assert (=> bm!418468 (= call!418472 (derivationStepZipperDown!919 (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292)))) (ite c!979268 lt!2255202 (Context!9923 call!418473)) (h!69354 s!2326)))))

(assert (= (and d!1766388 c!979266) b!5589086))

(assert (= (and d!1766388 (not c!979266)) b!5589082))

(assert (= (and b!5589082 c!979268) b!5589087))

(assert (= (and b!5589082 (not c!979268)) b!5589084))

(assert (= (and b!5589084 res!2371457) b!5589080))

(assert (= (and b!5589084 c!979269) b!5589088))

(assert (= (and b!5589084 (not c!979269)) b!5589083))

(assert (= (and b!5589083 c!979267) b!5589081))

(assert (= (and b!5589083 (not c!979267)) b!5589089))

(assert (= (and b!5589089 c!979265) b!5589085))

(assert (= (and b!5589089 (not c!979265)) b!5589090))

(assert (= (or b!5589081 b!5589085) bm!418466))

(assert (= (or b!5589081 b!5589085) bm!418467))

(assert (= (or b!5589088 bm!418466) bm!418463))

(assert (= (or b!5589088 bm!418467) bm!418465))

(assert (= (or b!5589087 b!5589088) bm!418468))

(assert (= (or b!5589087 bm!418465) bm!418464))

(declare-fun m!6569380 () Bool)

(assert (=> bm!418468 m!6569380))

(declare-fun m!6569382 () Bool)

(assert (=> b!5589080 m!6569382))

(declare-fun m!6569384 () Bool)

(assert (=> b!5589086 m!6569384))

(declare-fun m!6569386 () Bool)

(assert (=> bm!418463 m!6569386))

(declare-fun m!6569388 () Bool)

(assert (=> bm!418464 m!6569388))

(assert (=> b!5588522 d!1766388))

(declare-fun b!5589091 () Bool)

(declare-fun e!3448202 () Bool)

(assert (=> b!5589091 (= e!3448202 (nullable!5609 (regOne!31666 (regOne!31667 (regOne!31666 r!7292)))))))

(declare-fun b!5589092 () Bool)

(declare-fun e!3448206 () (InoxSet Context!9922))

(declare-fun call!418477 () (InoxSet Context!9922))

(assert (=> b!5589092 (= e!3448206 call!418477)))

(declare-fun call!418479 () List!63031)

(declare-fun c!979274 () Bool)

(declare-fun bm!418469 () Bool)

(declare-fun c!979272 () Bool)

(assert (=> bm!418469 (= call!418479 ($colon$colon!1640 (exprs!5461 lt!2255202) (ite (or c!979274 c!979272) (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (regOne!31667 (regOne!31666 r!7292)))))))

(declare-fun c!979273 () Bool)

(declare-fun call!418474 () List!63031)

(declare-fun bm!418470 () Bool)

(declare-fun call!418475 () (InoxSet Context!9922))

(assert (=> bm!418470 (= call!418475 (derivationStepZipperDown!919 (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292)))))) (ite (or c!979273 c!979274) lt!2255202 (Context!9923 call!418474)) (h!69354 s!2326)))))

(declare-fun b!5589093 () Bool)

(declare-fun e!3448205 () (InoxSet Context!9922))

(declare-fun e!3448204 () (InoxSet Context!9922))

(assert (=> b!5589093 (= e!3448205 e!3448204)))

(assert (=> b!5589093 (= c!979273 ((_ is Union!15577) (regOne!31667 (regOne!31666 r!7292))))))

(declare-fun d!1766402 () Bool)

(declare-fun c!979271 () Bool)

(assert (=> d!1766402 (= c!979271 (and ((_ is ElementMatch!15577) (regOne!31667 (regOne!31666 r!7292))) (= (c!979094 (regOne!31667 (regOne!31666 r!7292))) (h!69354 s!2326))))))

(assert (=> d!1766402 (= (derivationStepZipperDown!919 (regOne!31667 (regOne!31666 r!7292)) lt!2255202 (h!69354 s!2326)) e!3448205)))

(declare-fun bm!418471 () Bool)

(declare-fun call!418476 () (InoxSet Context!9922))

(assert (=> bm!418471 (= call!418476 call!418475)))

(declare-fun b!5589094 () Bool)

(declare-fun e!3448201 () (InoxSet Context!9922))

(assert (=> b!5589094 (= e!3448201 e!3448206)))

(assert (=> b!5589094 (= c!979272 ((_ is Concat!24422) (regOne!31667 (regOne!31666 r!7292))))))

(declare-fun b!5589095 () Bool)

(assert (=> b!5589095 (= c!979274 e!3448202)))

(declare-fun res!2371458 () Bool)

(assert (=> b!5589095 (=> (not res!2371458) (not e!3448202))))

(assert (=> b!5589095 (= res!2371458 ((_ is Concat!24422) (regOne!31667 (regOne!31666 r!7292))))))

(assert (=> b!5589095 (= e!3448204 e!3448201)))

(declare-fun b!5589096 () Bool)

(declare-fun e!3448203 () (InoxSet Context!9922))

(assert (=> b!5589096 (= e!3448203 call!418477)))

(declare-fun bm!418472 () Bool)

(assert (=> bm!418472 (= call!418474 call!418479)))

(declare-fun b!5589097 () Bool)

(assert (=> b!5589097 (= e!3448205 (store ((as const (Array Context!9922 Bool)) false) lt!2255202 true))))

(declare-fun b!5589098 () Bool)

(declare-fun call!418478 () (InoxSet Context!9922))

(assert (=> b!5589098 (= e!3448204 ((_ map or) call!418475 call!418478))))

(declare-fun b!5589099 () Bool)

(assert (=> b!5589099 (= e!3448201 ((_ map or) call!418478 call!418476))))

(declare-fun b!5589100 () Bool)

(declare-fun c!979270 () Bool)

(assert (=> b!5589100 (= c!979270 ((_ is Star!15577) (regOne!31667 (regOne!31666 r!7292))))))

(assert (=> b!5589100 (= e!3448206 e!3448203)))

(declare-fun b!5589101 () Bool)

(assert (=> b!5589101 (= e!3448203 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418473 () Bool)

(assert (=> bm!418473 (= call!418477 call!418476)))

(declare-fun bm!418474 () Bool)

(assert (=> bm!418474 (= call!418478 (derivationStepZipperDown!919 (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292)))) (ite c!979273 lt!2255202 (Context!9923 call!418479)) (h!69354 s!2326)))))

(assert (= (and d!1766402 c!979271) b!5589097))

(assert (= (and d!1766402 (not c!979271)) b!5589093))

(assert (= (and b!5589093 c!979273) b!5589098))

(assert (= (and b!5589093 (not c!979273)) b!5589095))

(assert (= (and b!5589095 res!2371458) b!5589091))

(assert (= (and b!5589095 c!979274) b!5589099))

(assert (= (and b!5589095 (not c!979274)) b!5589094))

(assert (= (and b!5589094 c!979272) b!5589092))

(assert (= (and b!5589094 (not c!979272)) b!5589100))

(assert (= (and b!5589100 c!979270) b!5589096))

(assert (= (and b!5589100 (not c!979270)) b!5589101))

(assert (= (or b!5589092 b!5589096) bm!418472))

(assert (= (or b!5589092 b!5589096) bm!418473))

(assert (= (or b!5589099 bm!418472) bm!418469))

(assert (= (or b!5589099 bm!418473) bm!418471))

(assert (= (or b!5589098 b!5589099) bm!418474))

(assert (= (or b!5589098 bm!418471) bm!418470))

(declare-fun m!6569390 () Bool)

(assert (=> bm!418474 m!6569390))

(declare-fun m!6569392 () Bool)

(assert (=> b!5589091 m!6569392))

(assert (=> b!5589097 m!6569384))

(declare-fun m!6569394 () Bool)

(assert (=> bm!418469 m!6569394))

(declare-fun m!6569396 () Bool)

(assert (=> bm!418470 m!6569396))

(assert (=> b!5588522 d!1766402))

(declare-fun e!3448210 () Bool)

(declare-fun d!1766404 () Bool)

(assert (=> d!1766404 (= (matchZipper!1715 ((_ map or) lt!2255199 lt!2255201) (t!376306 s!2326)) e!3448210)))

(declare-fun res!2371462 () Bool)

(assert (=> d!1766404 (=> res!2371462 e!3448210)))

(assert (=> d!1766404 (= res!2371462 (matchZipper!1715 lt!2255199 (t!376306 s!2326)))))

(declare-fun lt!2255283 () Unit!155708)

(assert (=> d!1766404 (= lt!2255283 (choose!42376 lt!2255199 lt!2255201 (t!376306 s!2326)))))

(assert (=> d!1766404 (= (lemmaZipperConcatMatchesSameAsBothZippers!602 lt!2255199 lt!2255201 (t!376306 s!2326)) lt!2255283)))

(declare-fun b!5589105 () Bool)

(assert (=> b!5589105 (= e!3448210 (matchZipper!1715 lt!2255201 (t!376306 s!2326)))))

(assert (= (and d!1766404 (not res!2371462)) b!5589105))

(assert (=> d!1766404 m!6569004))

(assert (=> d!1766404 m!6568938))

(declare-fun m!6569404 () Bool)

(assert (=> d!1766404 m!6569404))

(assert (=> b!5589105 m!6568928))

(assert (=> b!5588518 d!1766404))

(declare-fun d!1766408 () Bool)

(declare-fun c!979275 () Bool)

(assert (=> d!1766408 (= c!979275 (isEmpty!34725 (t!376306 s!2326)))))

(declare-fun e!3448212 () Bool)

(assert (=> d!1766408 (= (matchZipper!1715 ((_ map or) lt!2255199 lt!2255201) (t!376306 s!2326)) e!3448212)))

(declare-fun b!5589107 () Bool)

(assert (=> b!5589107 (= e!3448212 (nullableZipper!1572 ((_ map or) lt!2255199 lt!2255201)))))

(declare-fun b!5589108 () Bool)

(assert (=> b!5589108 (= e!3448212 (matchZipper!1715 (derivationStepZipper!1676 ((_ map or) lt!2255199 lt!2255201) (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))))))

(assert (= (and d!1766408 c!979275) b!5589107))

(assert (= (and d!1766408 (not c!979275)) b!5589108))

(assert (=> d!1766408 m!6569164))

(declare-fun m!6569408 () Bool)

(assert (=> b!5589107 m!6569408))

(assert (=> b!5589108 m!6569168))

(assert (=> b!5589108 m!6569168))

(declare-fun m!6569410 () Bool)

(assert (=> b!5589108 m!6569410))

(assert (=> b!5589108 m!6569172))

(assert (=> b!5589108 m!6569410))

(assert (=> b!5589108 m!6569172))

(declare-fun m!6569412 () Bool)

(assert (=> b!5589108 m!6569412))

(assert (=> b!5588518 d!1766408))

(declare-fun bs!1292324 () Bool)

(declare-fun d!1766412 () Bool)

(assert (= bs!1292324 (and d!1766412 d!1766340)))

(declare-fun lambda!299960 () Int)

(assert (=> bs!1292324 (= lambda!299960 lambda!299920)))

(declare-fun bs!1292325 () Bool)

(assert (= bs!1292325 (and d!1766412 d!1766348)))

(assert (=> bs!1292325 (= lambda!299960 lambda!299926)))

(declare-fun bs!1292326 () Bool)

(assert (= bs!1292326 (and d!1766412 d!1766352)))

(assert (=> bs!1292326 (= lambda!299960 lambda!299929)))

(declare-fun bs!1292327 () Bool)

(assert (= bs!1292327 (and d!1766412 d!1766382)))

(assert (=> bs!1292327 (= lambda!299960 lambda!299953)))

(assert (=> d!1766412 (= (inv!82189 setElem!37237) (forall!14743 (exprs!5461 setElem!37237) lambda!299960))))

(declare-fun bs!1292331 () Bool)

(assert (= bs!1292331 d!1766412))

(declare-fun m!6569420 () Bool)

(assert (=> bs!1292331 m!6569420))

(assert (=> setNonEmpty!37237 d!1766412))

(assert (=> b!5588538 d!1766362))

(assert (=> b!5588519 d!1766380))

(declare-fun d!1766416 () Bool)

(declare-fun e!3448228 () Bool)

(assert (=> d!1766416 e!3448228))

(declare-fun res!2371468 () Bool)

(assert (=> d!1766416 (=> (not res!2371468) (not e!3448228))))

(declare-fun lt!2255287 () List!63032)

(declare-fun noDuplicate!1552 (List!63032) Bool)

(assert (=> d!1766416 (= res!2371468 (noDuplicate!1552 lt!2255287))))

(declare-fun choose!42382 ((InoxSet Context!9922)) List!63032)

(assert (=> d!1766416 (= lt!2255287 (choose!42382 z!1189))))

(assert (=> d!1766416 (= (toList!9361 z!1189) lt!2255287)))

(declare-fun b!5589135 () Bool)

(declare-fun content!11347 (List!63032) (InoxSet Context!9922))

(assert (=> b!5589135 (= e!3448228 (= (content!11347 lt!2255287) z!1189))))

(assert (= (and d!1766416 res!2371468) b!5589135))

(declare-fun m!6569432 () Bool)

(assert (=> d!1766416 m!6569432))

(declare-fun m!6569434 () Bool)

(assert (=> d!1766416 m!6569434))

(declare-fun m!6569436 () Bool)

(assert (=> b!5589135 m!6569436))

(assert (=> b!5588534 d!1766416))

(declare-fun d!1766422 () Bool)

(declare-fun dynLambda!24601 (Int Context!9922) (InoxSet Context!9922))

(assert (=> d!1766422 (= (flatMap!1190 z!1189 lambda!299914) (dynLambda!24601 lambda!299914 (h!69356 zl!343)))))

(declare-fun lt!2255290 () Unit!155708)

(declare-fun choose!42383 ((InoxSet Context!9922) Context!9922 Int) Unit!155708)

(assert (=> d!1766422 (= lt!2255290 (choose!42383 z!1189 (h!69356 zl!343) lambda!299914))))

(assert (=> d!1766422 (= z!1189 (store ((as const (Array Context!9922 Bool)) false) (h!69356 zl!343) true))))

(assert (=> d!1766422 (= (lemmaFlatMapOnSingletonSet!722 z!1189 (h!69356 zl!343) lambda!299914) lt!2255290)))

(declare-fun b_lambda!211769 () Bool)

(assert (=> (not b_lambda!211769) (not d!1766422)))

(declare-fun bs!1292334 () Bool)

(assert (= bs!1292334 d!1766422))

(assert (=> bs!1292334 m!6568946))

(declare-fun m!6569446 () Bool)

(assert (=> bs!1292334 m!6569446))

(declare-fun m!6569448 () Bool)

(assert (=> bs!1292334 m!6569448))

(declare-fun m!6569450 () Bool)

(assert (=> bs!1292334 m!6569450))

(assert (=> b!5588545 d!1766422))

(declare-fun call!418494 () (InoxSet Context!9922))

(declare-fun e!3448258 () (InoxSet Context!9922))

(declare-fun b!5589200 () Bool)

(assert (=> b!5589200 (= e!3448258 ((_ map or) call!418494 (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 lt!2255202))) (h!69354 s!2326))))))

(declare-fun b!5589201 () Bool)

(declare-fun e!3448259 () (InoxSet Context!9922))

(assert (=> b!5589201 (= e!3448259 call!418494)))

(declare-fun b!5589202 () Bool)

(assert (=> b!5589202 (= e!3448258 e!3448259)))

(declare-fun c!979291 () Bool)

(assert (=> b!5589202 (= c!979291 ((_ is Cons!62907) (exprs!5461 lt!2255202)))))

(declare-fun bm!418489 () Bool)

(assert (=> bm!418489 (= call!418494 (derivationStepZipperDown!919 (h!69355 (exprs!5461 lt!2255202)) (Context!9923 (t!376307 (exprs!5461 lt!2255202))) (h!69354 s!2326)))))

(declare-fun b!5589203 () Bool)

(declare-fun e!3448260 () Bool)

(assert (=> b!5589203 (= e!3448260 (nullable!5609 (h!69355 (exprs!5461 lt!2255202))))))

(declare-fun d!1766424 () Bool)

(declare-fun c!979292 () Bool)

(assert (=> d!1766424 (= c!979292 e!3448260)))

(declare-fun res!2371471 () Bool)

(assert (=> d!1766424 (=> (not res!2371471) (not e!3448260))))

(assert (=> d!1766424 (= res!2371471 ((_ is Cons!62907) (exprs!5461 lt!2255202)))))

(assert (=> d!1766424 (= (derivationStepZipperUp!845 lt!2255202 (h!69354 s!2326)) e!3448258)))

(declare-fun b!5589204 () Bool)

(assert (=> b!5589204 (= e!3448259 ((as const (Array Context!9922 Bool)) false))))

(assert (= (and d!1766424 res!2371471) b!5589203))

(assert (= (and d!1766424 c!979292) b!5589200))

(assert (= (and d!1766424 (not c!979292)) b!5589202))

(assert (= (and b!5589202 c!979291) b!5589201))

(assert (= (and b!5589202 (not c!979291)) b!5589204))

(assert (= (or b!5589200 b!5589201) bm!418489))

(declare-fun m!6569456 () Bool)

(assert (=> b!5589200 m!6569456))

(declare-fun m!6569458 () Bool)

(assert (=> bm!418489 m!6569458))

(declare-fun m!6569460 () Bool)

(assert (=> b!5589203 m!6569460))

(assert (=> b!5588545 d!1766424))

(declare-fun d!1766432 () Bool)

(declare-fun nullableFct!1718 (Regex!15577) Bool)

(assert (=> d!1766432 (= (nullable!5609 (h!69355 (exprs!5461 (h!69356 zl!343)))) (nullableFct!1718 (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun bs!1292338 () Bool)

(assert (= bs!1292338 d!1766432))

(declare-fun m!6569462 () Bool)

(assert (=> bs!1292338 m!6569462))

(assert (=> b!5588545 d!1766432))

(declare-fun b!5589205 () Bool)

(declare-fun call!418495 () (InoxSet Context!9922))

(declare-fun e!3448261 () (InoxSet Context!9922))

(assert (=> b!5589205 (= e!3448261 ((_ map or) call!418495 (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (h!69354 s!2326))))))

(declare-fun b!5589206 () Bool)

(declare-fun e!3448262 () (InoxSet Context!9922))

(assert (=> b!5589206 (= e!3448262 call!418495)))

(declare-fun b!5589207 () Bool)

(assert (=> b!5589207 (= e!3448261 e!3448262)))

(declare-fun c!979293 () Bool)

(assert (=> b!5589207 (= c!979293 ((_ is Cons!62907) (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))))))))

(declare-fun bm!418490 () Bool)

(assert (=> bm!418490 (= call!418495 (derivationStepZipperDown!919 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))))) (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (h!69354 s!2326)))))

(declare-fun b!5589208 () Bool)

(declare-fun e!3448263 () Bool)

(assert (=> b!5589208 (= e!3448263 (nullable!5609 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))))))

(declare-fun d!1766434 () Bool)

(declare-fun c!979294 () Bool)

(assert (=> d!1766434 (= c!979294 e!3448263)))

(declare-fun res!2371472 () Bool)

(assert (=> d!1766434 (=> (not res!2371472) (not e!3448263))))

(assert (=> d!1766434 (= res!2371472 ((_ is Cons!62907) (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))))))))

(assert (=> d!1766434 (= (derivationStepZipperUp!845 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))) (h!69354 s!2326)) e!3448261)))

(declare-fun b!5589209 () Bool)

(assert (=> b!5589209 (= e!3448262 ((as const (Array Context!9922 Bool)) false))))

(assert (= (and d!1766434 res!2371472) b!5589208))

(assert (= (and d!1766434 c!979294) b!5589205))

(assert (= (and d!1766434 (not c!979294)) b!5589207))

(assert (= (and b!5589207 c!979293) b!5589206))

(assert (= (and b!5589207 (not c!979293)) b!5589209))

(assert (= (or b!5589205 b!5589206) bm!418490))

(declare-fun m!6569464 () Bool)

(assert (=> b!5589205 m!6569464))

(declare-fun m!6569466 () Bool)

(assert (=> bm!418490 m!6569466))

(declare-fun m!6569468 () Bool)

(assert (=> b!5589208 m!6569468))

(assert (=> b!5588545 d!1766434))

(declare-fun b!5589210 () Bool)

(declare-fun e!3448265 () Bool)

(assert (=> b!5589210 (= e!3448265 (nullable!5609 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343))))))))

(declare-fun b!5589211 () Bool)

(declare-fun e!3448269 () (InoxSet Context!9922))

(declare-fun call!418499 () (InoxSet Context!9922))

(assert (=> b!5589211 (= e!3448269 call!418499)))

(declare-fun c!979299 () Bool)

(declare-fun c!979297 () Bool)

(declare-fun bm!418491 () Bool)

(declare-fun call!418501 () List!63031)

(assert (=> bm!418491 (= call!418501 ($colon$colon!1640 (exprs!5461 lt!2255202) (ite (or c!979299 c!979297) (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (h!69355 (exprs!5461 (h!69356 zl!343))))))))

(declare-fun call!418496 () List!63031)

(declare-fun c!979298 () Bool)

(declare-fun call!418497 () (InoxSet Context!9922))

(declare-fun bm!418492 () Bool)

(assert (=> bm!418492 (= call!418497 (derivationStepZipperDown!919 (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343))))))) (ite (or c!979298 c!979299) lt!2255202 (Context!9923 call!418496)) (h!69354 s!2326)))))

(declare-fun b!5589212 () Bool)

(declare-fun e!3448268 () (InoxSet Context!9922))

(declare-fun e!3448267 () (InoxSet Context!9922))

(assert (=> b!5589212 (= e!3448268 e!3448267)))

(assert (=> b!5589212 (= c!979298 ((_ is Union!15577) (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun d!1766436 () Bool)

(declare-fun c!979296 () Bool)

(assert (=> d!1766436 (= c!979296 (and ((_ is ElementMatch!15577) (h!69355 (exprs!5461 (h!69356 zl!343)))) (= (c!979094 (h!69355 (exprs!5461 (h!69356 zl!343)))) (h!69354 s!2326))))))

(assert (=> d!1766436 (= (derivationStepZipperDown!919 (h!69355 (exprs!5461 (h!69356 zl!343))) lt!2255202 (h!69354 s!2326)) e!3448268)))

(declare-fun bm!418493 () Bool)

(declare-fun call!418498 () (InoxSet Context!9922))

(assert (=> bm!418493 (= call!418498 call!418497)))

(declare-fun b!5589213 () Bool)

(declare-fun e!3448264 () (InoxSet Context!9922))

(assert (=> b!5589213 (= e!3448264 e!3448269)))

(assert (=> b!5589213 (= c!979297 ((_ is Concat!24422) (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun b!5589214 () Bool)

(assert (=> b!5589214 (= c!979299 e!3448265)))

(declare-fun res!2371473 () Bool)

(assert (=> b!5589214 (=> (not res!2371473) (not e!3448265))))

(assert (=> b!5589214 (= res!2371473 ((_ is Concat!24422) (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(assert (=> b!5589214 (= e!3448267 e!3448264)))

(declare-fun b!5589215 () Bool)

(declare-fun e!3448266 () (InoxSet Context!9922))

(assert (=> b!5589215 (= e!3448266 call!418499)))

(declare-fun bm!418494 () Bool)

(assert (=> bm!418494 (= call!418496 call!418501)))

(declare-fun b!5589216 () Bool)

(assert (=> b!5589216 (= e!3448268 (store ((as const (Array Context!9922 Bool)) false) lt!2255202 true))))

(declare-fun b!5589217 () Bool)

(declare-fun call!418500 () (InoxSet Context!9922))

(assert (=> b!5589217 (= e!3448267 ((_ map or) call!418497 call!418500))))

(declare-fun b!5589218 () Bool)

(assert (=> b!5589218 (= e!3448264 ((_ map or) call!418500 call!418498))))

(declare-fun b!5589219 () Bool)

(declare-fun c!979295 () Bool)

(assert (=> b!5589219 (= c!979295 ((_ is Star!15577) (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(assert (=> b!5589219 (= e!3448269 e!3448266)))

(declare-fun b!5589220 () Bool)

(assert (=> b!5589220 (= e!3448266 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418495 () Bool)

(assert (=> bm!418495 (= call!418499 call!418498)))

(declare-fun bm!418496 () Bool)

(assert (=> bm!418496 (= call!418500 (derivationStepZipperDown!919 (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343))))) (ite c!979298 lt!2255202 (Context!9923 call!418501)) (h!69354 s!2326)))))

(assert (= (and d!1766436 c!979296) b!5589216))

(assert (= (and d!1766436 (not c!979296)) b!5589212))

(assert (= (and b!5589212 c!979298) b!5589217))

(assert (= (and b!5589212 (not c!979298)) b!5589214))

(assert (= (and b!5589214 res!2371473) b!5589210))

(assert (= (and b!5589214 c!979299) b!5589218))

(assert (= (and b!5589214 (not c!979299)) b!5589213))

(assert (= (and b!5589213 c!979297) b!5589211))

(assert (= (and b!5589213 (not c!979297)) b!5589219))

(assert (= (and b!5589219 c!979295) b!5589215))

(assert (= (and b!5589219 (not c!979295)) b!5589220))

(assert (= (or b!5589211 b!5589215) bm!418494))

(assert (= (or b!5589211 b!5589215) bm!418495))

(assert (= (or b!5589218 bm!418494) bm!418491))

(assert (= (or b!5589218 bm!418495) bm!418493))

(assert (= (or b!5589217 b!5589218) bm!418496))

(assert (= (or b!5589217 bm!418493) bm!418492))

(declare-fun m!6569470 () Bool)

(assert (=> bm!418496 m!6569470))

(declare-fun m!6569472 () Bool)

(assert (=> b!5589210 m!6569472))

(assert (=> b!5589216 m!6569384))

(declare-fun m!6569474 () Bool)

(assert (=> bm!418491 m!6569474))

(declare-fun m!6569476 () Bool)

(assert (=> bm!418492 m!6569476))

(assert (=> b!5588545 d!1766436))

(declare-fun e!3448270 () (InoxSet Context!9922))

(declare-fun call!418502 () (InoxSet Context!9922))

(declare-fun b!5589221 () Bool)

(assert (=> b!5589221 (= e!3448270 ((_ map or) call!418502 (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343)))) (h!69354 s!2326))))))

(declare-fun b!5589222 () Bool)

(declare-fun e!3448271 () (InoxSet Context!9922))

(assert (=> b!5589222 (= e!3448271 call!418502)))

(declare-fun b!5589223 () Bool)

(assert (=> b!5589223 (= e!3448270 e!3448271)))

(declare-fun c!979300 () Bool)

(assert (=> b!5589223 (= c!979300 ((_ is Cons!62907) (exprs!5461 (h!69356 zl!343))))))

(declare-fun bm!418497 () Bool)

(assert (=> bm!418497 (= call!418502 (derivationStepZipperDown!919 (h!69355 (exprs!5461 (h!69356 zl!343))) (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343)))) (h!69354 s!2326)))))

(declare-fun b!5589224 () Bool)

(declare-fun e!3448272 () Bool)

(assert (=> b!5589224 (= e!3448272 (nullable!5609 (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun d!1766438 () Bool)

(declare-fun c!979301 () Bool)

(assert (=> d!1766438 (= c!979301 e!3448272)))

(declare-fun res!2371474 () Bool)

(assert (=> d!1766438 (=> (not res!2371474) (not e!3448272))))

(assert (=> d!1766438 (= res!2371474 ((_ is Cons!62907) (exprs!5461 (h!69356 zl!343))))))

(assert (=> d!1766438 (= (derivationStepZipperUp!845 (h!69356 zl!343) (h!69354 s!2326)) e!3448270)))

(declare-fun b!5589225 () Bool)

(assert (=> b!5589225 (= e!3448271 ((as const (Array Context!9922 Bool)) false))))

(assert (= (and d!1766438 res!2371474) b!5589224))

(assert (= (and d!1766438 c!979301) b!5589221))

(assert (= (and d!1766438 (not c!979301)) b!5589223))

(assert (= (and b!5589223 c!979300) b!5589222))

(assert (= (and b!5589223 (not c!979300)) b!5589225))

(assert (= (or b!5589221 b!5589222) bm!418497))

(declare-fun m!6569478 () Bool)

(assert (=> b!5589221 m!6569478))

(declare-fun m!6569480 () Bool)

(assert (=> bm!418497 m!6569480))

(assert (=> b!5589224 m!6568950))

(assert (=> b!5588545 d!1766438))

(declare-fun d!1766440 () Bool)

(declare-fun choose!42385 ((InoxSet Context!9922) Int) (InoxSet Context!9922))

(assert (=> d!1766440 (= (flatMap!1190 z!1189 lambda!299914) (choose!42385 z!1189 lambda!299914))))

(declare-fun bs!1292339 () Bool)

(assert (= bs!1292339 d!1766440))

(declare-fun m!6569482 () Bool)

(assert (=> bs!1292339 m!6569482))

(assert (=> b!5588545 d!1766440))

(declare-fun d!1766442 () Bool)

(assert (=> d!1766442 (= (isEmpty!34722 (t!376308 zl!343)) ((_ is Nil!62908) (t!376308 zl!343)))))

(assert (=> b!5588515 d!1766442))

(declare-fun b!5589244 () Bool)

(declare-fun e!3448284 () Bool)

(declare-fun lt!2255297 () Option!15586)

(declare-fun ++!13806 (List!63030 List!63030) List!63030)

(declare-fun get!21662 (Option!15586) tuple2!65348)

(assert (=> b!5589244 (= e!3448284 (= (++!13806 (_1!35977 (get!21662 lt!2255297)) (_2!35977 (get!21662 lt!2255297))) s!2326))))

(declare-fun d!1766444 () Bool)

(declare-fun e!3448283 () Bool)

(assert (=> d!1766444 e!3448283))

(declare-fun res!2371486 () Bool)

(assert (=> d!1766444 (=> res!2371486 e!3448283)))

(assert (=> d!1766444 (= res!2371486 e!3448284)))

(declare-fun res!2371488 () Bool)

(assert (=> d!1766444 (=> (not res!2371488) (not e!3448284))))

(assert (=> d!1766444 (= res!2371488 (isDefined!12289 lt!2255297))))

(declare-fun e!3448286 () Option!15586)

(assert (=> d!1766444 (= lt!2255297 e!3448286)))

(declare-fun c!979307 () Bool)

(declare-fun e!3448287 () Bool)

(assert (=> d!1766444 (= c!979307 e!3448287)))

(declare-fun res!2371485 () Bool)

(assert (=> d!1766444 (=> (not res!2371485) (not e!3448287))))

(assert (=> d!1766444 (= res!2371485 (matchR!7762 (regOne!31666 r!7292) Nil!62906))))

(assert (=> d!1766444 (validRegex!7313 (regOne!31666 r!7292))))

(assert (=> d!1766444 (= (findConcatSeparation!2000 (regOne!31666 r!7292) (regTwo!31666 r!7292) Nil!62906 s!2326 s!2326) lt!2255297)))

(declare-fun b!5589245 () Bool)

(declare-fun e!3448285 () Option!15586)

(assert (=> b!5589245 (= e!3448286 e!3448285)))

(declare-fun c!979306 () Bool)

(assert (=> b!5589245 (= c!979306 ((_ is Nil!62906) s!2326))))

(declare-fun b!5589246 () Bool)

(assert (=> b!5589246 (= e!3448285 None!15585)))

(declare-fun b!5589247 () Bool)

(declare-fun res!2371489 () Bool)

(assert (=> b!5589247 (=> (not res!2371489) (not e!3448284))))

(assert (=> b!5589247 (= res!2371489 (matchR!7762 (regOne!31666 r!7292) (_1!35977 (get!21662 lt!2255297))))))

(declare-fun b!5589248 () Bool)

(declare-fun res!2371487 () Bool)

(assert (=> b!5589248 (=> (not res!2371487) (not e!3448284))))

(assert (=> b!5589248 (= res!2371487 (matchR!7762 (regTwo!31666 r!7292) (_2!35977 (get!21662 lt!2255297))))))

(declare-fun b!5589249 () Bool)

(assert (=> b!5589249 (= e!3448283 (not (isDefined!12289 lt!2255297)))))

(declare-fun b!5589250 () Bool)

(declare-fun lt!2255299 () Unit!155708)

(declare-fun lt!2255298 () Unit!155708)

(assert (=> b!5589250 (= lt!2255299 lt!2255298)))

(assert (=> b!5589250 (= (++!13806 (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906)) (t!376306 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1975 (List!63030 C!31424 List!63030 List!63030) Unit!155708)

(assert (=> b!5589250 (= lt!2255298 (lemmaMoveElementToOtherListKeepsConcatEq!1975 Nil!62906 (h!69354 s!2326) (t!376306 s!2326) s!2326))))

(assert (=> b!5589250 (= e!3448285 (findConcatSeparation!2000 (regOne!31666 r!7292) (regTwo!31666 r!7292) (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906)) (t!376306 s!2326) s!2326))))

(declare-fun b!5589251 () Bool)

(assert (=> b!5589251 (= e!3448286 (Some!15585 (tuple2!65349 Nil!62906 s!2326)))))

(declare-fun b!5589252 () Bool)

(assert (=> b!5589252 (= e!3448287 (matchR!7762 (regTwo!31666 r!7292) s!2326))))

(assert (= (and d!1766444 res!2371485) b!5589252))

(assert (= (and d!1766444 c!979307) b!5589251))

(assert (= (and d!1766444 (not c!979307)) b!5589245))

(assert (= (and b!5589245 c!979306) b!5589246))

(assert (= (and b!5589245 (not c!979306)) b!5589250))

(assert (= (and d!1766444 res!2371488) b!5589247))

(assert (= (and b!5589247 res!2371489) b!5589248))

(assert (= (and b!5589248 res!2371487) b!5589244))

(assert (= (and d!1766444 (not res!2371486)) b!5589249))

(declare-fun m!6569484 () Bool)

(assert (=> b!5589244 m!6569484))

(declare-fun m!6569486 () Bool)

(assert (=> b!5589244 m!6569486))

(declare-fun m!6569488 () Bool)

(assert (=> b!5589249 m!6569488))

(declare-fun m!6569490 () Bool)

(assert (=> b!5589252 m!6569490))

(assert (=> b!5589247 m!6569484))

(declare-fun m!6569492 () Bool)

(assert (=> b!5589247 m!6569492))

(assert (=> d!1766444 m!6569488))

(declare-fun m!6569494 () Bool)

(assert (=> d!1766444 m!6569494))

(declare-fun m!6569496 () Bool)

(assert (=> d!1766444 m!6569496))

(assert (=> b!5589248 m!6569484))

(declare-fun m!6569498 () Bool)

(assert (=> b!5589248 m!6569498))

(declare-fun m!6569500 () Bool)

(assert (=> b!5589250 m!6569500))

(assert (=> b!5589250 m!6569500))

(declare-fun m!6569502 () Bool)

(assert (=> b!5589250 m!6569502))

(declare-fun m!6569504 () Bool)

(assert (=> b!5589250 m!6569504))

(assert (=> b!5589250 m!6569500))

(declare-fun m!6569506 () Bool)

(assert (=> b!5589250 m!6569506))

(assert (=> b!5588535 d!1766444))

(declare-fun d!1766446 () Bool)

(declare-fun choose!42387 (Int) Bool)

(assert (=> d!1766446 (= (Exists!2677 lambda!299913) (choose!42387 lambda!299913))))

(declare-fun bs!1292340 () Bool)

(assert (= bs!1292340 d!1766446))

(declare-fun m!6569508 () Bool)

(assert (=> bs!1292340 m!6569508))

(assert (=> b!5588535 d!1766446))

(declare-fun d!1766448 () Bool)

(assert (=> d!1766448 (= (Exists!2677 lambda!299912) (choose!42387 lambda!299912))))

(declare-fun bs!1292341 () Bool)

(assert (= bs!1292341 d!1766448))

(declare-fun m!6569510 () Bool)

(assert (=> bs!1292341 m!6569510))

(assert (=> b!5588535 d!1766448))

(declare-fun bs!1292342 () Bool)

(declare-fun d!1766450 () Bool)

(assert (= bs!1292342 (and d!1766450 b!5588535)))

(declare-fun lambda!299964 () Int)

(assert (=> bs!1292342 (= lambda!299964 lambda!299912)))

(assert (=> bs!1292342 (not (= lambda!299964 lambda!299913))))

(declare-fun bs!1292343 () Bool)

(assert (= bs!1292343 (and d!1766450 b!5588886)))

(assert (=> bs!1292343 (not (= lambda!299964 lambda!299947))))

(declare-fun bs!1292344 () Bool)

(assert (= bs!1292344 (and d!1766450 b!5588883)))

(assert (=> bs!1292344 (not (= lambda!299964 lambda!299948))))

(assert (=> d!1766450 true))

(assert (=> d!1766450 true))

(assert (=> d!1766450 true))

(assert (=> d!1766450 (= (isDefined!12289 (findConcatSeparation!2000 (regOne!31666 r!7292) (regTwo!31666 r!7292) Nil!62906 s!2326 s!2326)) (Exists!2677 lambda!299964))))

(declare-fun lt!2255302 () Unit!155708)

(declare-fun choose!42388 (Regex!15577 Regex!15577 List!63030) Unit!155708)

(assert (=> d!1766450 (= lt!2255302 (choose!42388 (regOne!31666 r!7292) (regTwo!31666 r!7292) s!2326))))

(assert (=> d!1766450 (validRegex!7313 (regOne!31666 r!7292))))

(assert (=> d!1766450 (= (lemmaFindConcatSeparationEquivalentToExists!1764 (regOne!31666 r!7292) (regTwo!31666 r!7292) s!2326) lt!2255302)))

(declare-fun bs!1292345 () Bool)

(assert (= bs!1292345 d!1766450))

(assert (=> bs!1292345 m!6569010))

(assert (=> bs!1292345 m!6569012))

(declare-fun m!6569512 () Bool)

(assert (=> bs!1292345 m!6569512))

(assert (=> bs!1292345 m!6569010))

(declare-fun m!6569514 () Bool)

(assert (=> bs!1292345 m!6569514))

(assert (=> bs!1292345 m!6569496))

(assert (=> b!5588535 d!1766450))

(declare-fun bs!1292346 () Bool)

(declare-fun d!1766452 () Bool)

(assert (= bs!1292346 (and d!1766452 b!5588886)))

(declare-fun lambda!299969 () Int)

(assert (=> bs!1292346 (not (= lambda!299969 lambda!299947))))

(declare-fun bs!1292347 () Bool)

(assert (= bs!1292347 (and d!1766452 b!5588535)))

(assert (=> bs!1292347 (not (= lambda!299969 lambda!299913))))

(assert (=> bs!1292347 (= lambda!299969 lambda!299912)))

(declare-fun bs!1292348 () Bool)

(assert (= bs!1292348 (and d!1766452 d!1766450)))

(assert (=> bs!1292348 (= lambda!299969 lambda!299964)))

(declare-fun bs!1292349 () Bool)

(assert (= bs!1292349 (and d!1766452 b!5588883)))

(assert (=> bs!1292349 (not (= lambda!299969 lambda!299948))))

(assert (=> d!1766452 true))

(assert (=> d!1766452 true))

(assert (=> d!1766452 true))

(declare-fun lambda!299970 () Int)

(assert (=> bs!1292346 (not (= lambda!299970 lambda!299947))))

(declare-fun bs!1292350 () Bool)

(assert (= bs!1292350 d!1766452))

(assert (=> bs!1292350 (not (= lambda!299970 lambda!299969))))

(assert (=> bs!1292347 (= lambda!299970 lambda!299913)))

(assert (=> bs!1292347 (not (= lambda!299970 lambda!299912))))

(assert (=> bs!1292348 (not (= lambda!299970 lambda!299964))))

(assert (=> bs!1292349 (= lambda!299970 lambda!299948)))

(assert (=> d!1766452 true))

(assert (=> d!1766452 true))

(assert (=> d!1766452 true))

(assert (=> d!1766452 (= (Exists!2677 lambda!299969) (Exists!2677 lambda!299970))))

(declare-fun lt!2255305 () Unit!155708)

(declare-fun choose!42389 (Regex!15577 Regex!15577 List!63030) Unit!155708)

(assert (=> d!1766452 (= lt!2255305 (choose!42389 (regOne!31666 r!7292) (regTwo!31666 r!7292) s!2326))))

(assert (=> d!1766452 (validRegex!7313 (regOne!31666 r!7292))))

(assert (=> d!1766452 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1306 (regOne!31666 r!7292) (regTwo!31666 r!7292) s!2326) lt!2255305)))

(declare-fun m!6569516 () Bool)

(assert (=> bs!1292350 m!6569516))

(declare-fun m!6569518 () Bool)

(assert (=> bs!1292350 m!6569518))

(declare-fun m!6569520 () Bool)

(assert (=> bs!1292350 m!6569520))

(assert (=> bs!1292350 m!6569496))

(assert (=> b!5588535 d!1766452))

(declare-fun d!1766454 () Bool)

(declare-fun isEmpty!34727 (Option!15586) Bool)

(assert (=> d!1766454 (= (isDefined!12289 (findConcatSeparation!2000 (regOne!31666 r!7292) (regTwo!31666 r!7292) Nil!62906 s!2326 s!2326)) (not (isEmpty!34727 (findConcatSeparation!2000 (regOne!31666 r!7292) (regTwo!31666 r!7292) Nil!62906 s!2326 s!2326))))))

(declare-fun bs!1292351 () Bool)

(assert (= bs!1292351 d!1766454))

(assert (=> bs!1292351 m!6569010))

(declare-fun m!6569522 () Bool)

(assert (=> bs!1292351 m!6569522))

(assert (=> b!5588535 d!1766454))

(declare-fun e!3448294 () Bool)

(declare-fun d!1766456 () Bool)

(assert (=> d!1766456 (= (matchZipper!1715 ((_ map or) lt!2255189 lt!2255201) (t!376306 s!2326)) e!3448294)))

(declare-fun res!2371502 () Bool)

(assert (=> d!1766456 (=> res!2371502 e!3448294)))

(assert (=> d!1766456 (= res!2371502 (matchZipper!1715 lt!2255189 (t!376306 s!2326)))))

(declare-fun lt!2255306 () Unit!155708)

(assert (=> d!1766456 (= lt!2255306 (choose!42376 lt!2255189 lt!2255201 (t!376306 s!2326)))))

(assert (=> d!1766456 (= (lemmaZipperConcatMatchesSameAsBothZippers!602 lt!2255189 lt!2255201 (t!376306 s!2326)) lt!2255306)))

(declare-fun b!5589265 () Bool)

(assert (=> b!5589265 (= e!3448294 (matchZipper!1715 lt!2255201 (t!376306 s!2326)))))

(assert (= (and d!1766456 (not res!2371502)) b!5589265))

(assert (=> d!1766456 m!6568998))

(assert (=> d!1766456 m!6568934))

(declare-fun m!6569524 () Bool)

(assert (=> d!1766456 m!6569524))

(assert (=> b!5589265 m!6568928))

(assert (=> b!5588526 d!1766456))

(assert (=> b!5588526 d!1766380))

(declare-fun d!1766458 () Bool)

(declare-fun c!979308 () Bool)

(assert (=> d!1766458 (= c!979308 (isEmpty!34725 (t!376306 s!2326)))))

(declare-fun e!3448295 () Bool)

(assert (=> d!1766458 (= (matchZipper!1715 ((_ map or) lt!2255189 lt!2255201) (t!376306 s!2326)) e!3448295)))

(declare-fun b!5589266 () Bool)

(assert (=> b!5589266 (= e!3448295 (nullableZipper!1572 ((_ map or) lt!2255189 lt!2255201)))))

(declare-fun b!5589267 () Bool)

(assert (=> b!5589267 (= e!3448295 (matchZipper!1715 (derivationStepZipper!1676 ((_ map or) lt!2255189 lt!2255201) (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))))))

(assert (= (and d!1766458 c!979308) b!5589266))

(assert (= (and d!1766458 (not c!979308)) b!5589267))

(assert (=> d!1766458 m!6569164))

(declare-fun m!6569526 () Bool)

(assert (=> b!5589266 m!6569526))

(assert (=> b!5589267 m!6569168))

(assert (=> b!5589267 m!6569168))

(declare-fun m!6569528 () Bool)

(assert (=> b!5589267 m!6569528))

(assert (=> b!5589267 m!6569172))

(assert (=> b!5589267 m!6569528))

(assert (=> b!5589267 m!6569172))

(declare-fun m!6569530 () Bool)

(assert (=> b!5589267 m!6569530))

(assert (=> b!5588526 d!1766458))

(declare-fun d!1766460 () Bool)

(assert (=> d!1766460 (= (nullable!5609 (regTwo!31667 (regOne!31666 r!7292))) (nullableFct!1718 (regTwo!31667 (regOne!31666 r!7292))))))

(declare-fun bs!1292352 () Bool)

(assert (= bs!1292352 d!1766460))

(declare-fun m!6569532 () Bool)

(assert (=> bs!1292352 m!6569532))

(assert (=> b!5588536 d!1766460))

(declare-fun d!1766462 () Bool)

(assert (=> d!1766462 (= (flatMap!1190 lt!2255188 lambda!299914) (choose!42385 lt!2255188 lambda!299914))))

(declare-fun bs!1292353 () Bool)

(assert (= bs!1292353 d!1766462))

(declare-fun m!6569534 () Bool)

(assert (=> bs!1292353 m!6569534))

(assert (=> b!5588536 d!1766462))

(declare-fun d!1766464 () Bool)

(assert (=> d!1766464 (= (nullable!5609 (regOne!31666 r!7292)) (nullableFct!1718 (regOne!31666 r!7292)))))

(declare-fun bs!1292354 () Bool)

(assert (= bs!1292354 d!1766464))

(declare-fun m!6569536 () Bool)

(assert (=> bs!1292354 m!6569536))

(assert (=> b!5588536 d!1766464))

(declare-fun d!1766466 () Bool)

(assert (=> d!1766466 (= (flatMap!1190 lt!2255203 lambda!299914) (choose!42385 lt!2255203 lambda!299914))))

(declare-fun bs!1292355 () Bool)

(assert (= bs!1292355 d!1766466))

(declare-fun m!6569538 () Bool)

(assert (=> bs!1292355 m!6569538))

(assert (=> b!5588536 d!1766466))

(declare-fun e!3448296 () (InoxSet Context!9922))

(declare-fun b!5589268 () Bool)

(declare-fun call!418503 () (InoxSet Context!9922))

(assert (=> b!5589268 (= e!3448296 ((_ map or) call!418503 (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 lt!2255209))) (h!69354 s!2326))))))

(declare-fun b!5589269 () Bool)

(declare-fun e!3448297 () (InoxSet Context!9922))

(assert (=> b!5589269 (= e!3448297 call!418503)))

(declare-fun b!5589270 () Bool)

(assert (=> b!5589270 (= e!3448296 e!3448297)))

(declare-fun c!979309 () Bool)

(assert (=> b!5589270 (= c!979309 ((_ is Cons!62907) (exprs!5461 lt!2255209)))))

(declare-fun bm!418498 () Bool)

(assert (=> bm!418498 (= call!418503 (derivationStepZipperDown!919 (h!69355 (exprs!5461 lt!2255209)) (Context!9923 (t!376307 (exprs!5461 lt!2255209))) (h!69354 s!2326)))))

(declare-fun b!5589271 () Bool)

(declare-fun e!3448298 () Bool)

(assert (=> b!5589271 (= e!3448298 (nullable!5609 (h!69355 (exprs!5461 lt!2255209))))))

(declare-fun d!1766468 () Bool)

(declare-fun c!979310 () Bool)

(assert (=> d!1766468 (= c!979310 e!3448298)))

(declare-fun res!2371503 () Bool)

(assert (=> d!1766468 (=> (not res!2371503) (not e!3448298))))

(assert (=> d!1766468 (= res!2371503 ((_ is Cons!62907) (exprs!5461 lt!2255209)))))

(assert (=> d!1766468 (= (derivationStepZipperUp!845 lt!2255209 (h!69354 s!2326)) e!3448296)))

(declare-fun b!5589272 () Bool)

(assert (=> b!5589272 (= e!3448297 ((as const (Array Context!9922 Bool)) false))))

(assert (= (and d!1766468 res!2371503) b!5589271))

(assert (= (and d!1766468 c!979310) b!5589268))

(assert (= (and d!1766468 (not c!979310)) b!5589270))

(assert (= (and b!5589270 c!979309) b!5589269))

(assert (= (and b!5589270 (not c!979309)) b!5589272))

(assert (= (or b!5589268 b!5589269) bm!418498))

(declare-fun m!6569540 () Bool)

(assert (=> b!5589268 m!6569540))

(declare-fun m!6569542 () Bool)

(assert (=> bm!418498 m!6569542))

(declare-fun m!6569544 () Bool)

(assert (=> b!5589271 m!6569544))

(assert (=> b!5588536 d!1766468))

(declare-fun e!3448299 () (InoxSet Context!9922))

(declare-fun b!5589273 () Bool)

(declare-fun call!418504 () (InoxSet Context!9922))

(assert (=> b!5589273 (= e!3448299 ((_ map or) call!418504 (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 lt!2255204))) (h!69354 s!2326))))))

(declare-fun b!5589274 () Bool)

(declare-fun e!3448300 () (InoxSet Context!9922))

(assert (=> b!5589274 (= e!3448300 call!418504)))

(declare-fun b!5589275 () Bool)

(assert (=> b!5589275 (= e!3448299 e!3448300)))

(declare-fun c!979311 () Bool)

(assert (=> b!5589275 (= c!979311 ((_ is Cons!62907) (exprs!5461 lt!2255204)))))

(declare-fun bm!418499 () Bool)

(assert (=> bm!418499 (= call!418504 (derivationStepZipperDown!919 (h!69355 (exprs!5461 lt!2255204)) (Context!9923 (t!376307 (exprs!5461 lt!2255204))) (h!69354 s!2326)))))

(declare-fun b!5589276 () Bool)

(declare-fun e!3448301 () Bool)

(assert (=> b!5589276 (= e!3448301 (nullable!5609 (h!69355 (exprs!5461 lt!2255204))))))

(declare-fun d!1766470 () Bool)

(declare-fun c!979312 () Bool)

(assert (=> d!1766470 (= c!979312 e!3448301)))

(declare-fun res!2371504 () Bool)

(assert (=> d!1766470 (=> (not res!2371504) (not e!3448301))))

(assert (=> d!1766470 (= res!2371504 ((_ is Cons!62907) (exprs!5461 lt!2255204)))))

(assert (=> d!1766470 (= (derivationStepZipperUp!845 lt!2255204 (h!69354 s!2326)) e!3448299)))

(declare-fun b!5589277 () Bool)

(assert (=> b!5589277 (= e!3448300 ((as const (Array Context!9922 Bool)) false))))

(assert (= (and d!1766470 res!2371504) b!5589276))

(assert (= (and d!1766470 c!979312) b!5589273))

(assert (= (and d!1766470 (not c!979312)) b!5589275))

(assert (= (and b!5589275 c!979311) b!5589274))

(assert (= (and b!5589275 (not c!979311)) b!5589277))

(assert (= (or b!5589273 b!5589274) bm!418499))

(declare-fun m!6569546 () Bool)

(assert (=> b!5589273 m!6569546))

(declare-fun m!6569548 () Bool)

(assert (=> bm!418499 m!6569548))

(declare-fun m!6569550 () Bool)

(assert (=> b!5589276 m!6569550))

(assert (=> b!5588536 d!1766470))

(declare-fun d!1766472 () Bool)

(assert (=> d!1766472 (= (flatMap!1190 lt!2255203 lambda!299914) (dynLambda!24601 lambda!299914 lt!2255204))))

(declare-fun lt!2255307 () Unit!155708)

(assert (=> d!1766472 (= lt!2255307 (choose!42383 lt!2255203 lt!2255204 lambda!299914))))

(assert (=> d!1766472 (= lt!2255203 (store ((as const (Array Context!9922 Bool)) false) lt!2255204 true))))

(assert (=> d!1766472 (= (lemmaFlatMapOnSingletonSet!722 lt!2255203 lt!2255204 lambda!299914) lt!2255307)))

(declare-fun b_lambda!211777 () Bool)

(assert (=> (not b_lambda!211777) (not d!1766472)))

(declare-fun bs!1292356 () Bool)

(assert (= bs!1292356 d!1766472))

(assert (=> bs!1292356 m!6568980))

(declare-fun m!6569552 () Bool)

(assert (=> bs!1292356 m!6569552))

(declare-fun m!6569554 () Bool)

(assert (=> bs!1292356 m!6569554))

(assert (=> bs!1292356 m!6568974))

(assert (=> b!5588536 d!1766472))

(declare-fun d!1766474 () Bool)

(assert (=> d!1766474 (= (nullable!5609 (regOne!31667 (regOne!31666 r!7292))) (nullableFct!1718 (regOne!31667 (regOne!31666 r!7292))))))

(declare-fun bs!1292357 () Bool)

(assert (= bs!1292357 d!1766474))

(declare-fun m!6569556 () Bool)

(assert (=> bs!1292357 m!6569556))

(assert (=> b!5588536 d!1766474))

(declare-fun d!1766476 () Bool)

(assert (=> d!1766476 (= (flatMap!1190 lt!2255188 lambda!299914) (dynLambda!24601 lambda!299914 lt!2255209))))

(declare-fun lt!2255308 () Unit!155708)

(assert (=> d!1766476 (= lt!2255308 (choose!42383 lt!2255188 lt!2255209 lambda!299914))))

(assert (=> d!1766476 (= lt!2255188 (store ((as const (Array Context!9922 Bool)) false) lt!2255209 true))))

(assert (=> d!1766476 (= (lemmaFlatMapOnSingletonSet!722 lt!2255188 lt!2255209 lambda!299914) lt!2255308)))

(declare-fun b_lambda!211779 () Bool)

(assert (=> (not b_lambda!211779) (not d!1766476)))

(declare-fun bs!1292358 () Bool)

(assert (= bs!1292358 d!1766476))

(assert (=> bs!1292358 m!6568992))

(declare-fun m!6569558 () Bool)

(assert (=> bs!1292358 m!6569558))

(declare-fun m!6569560 () Bool)

(assert (=> bs!1292358 m!6569560))

(assert (=> bs!1292358 m!6568982))

(assert (=> b!5588536 d!1766476))

(declare-fun d!1766478 () Bool)

(assert (=> d!1766478 (= (isEmpty!34723 (t!376307 (exprs!5461 (h!69356 zl!343)))) ((_ is Nil!62907) (t!376307 (exprs!5461 (h!69356 zl!343)))))))

(assert (=> b!5588517 d!1766478))

(declare-fun b!5589282 () Bool)

(declare-fun e!3448304 () Bool)

(declare-fun tp!1545888 () Bool)

(assert (=> b!5589282 (= e!3448304 (and tp_is_empty!40407 tp!1545888))))

(assert (=> b!5588527 (= tp!1545824 e!3448304)))

(assert (= (and b!5588527 ((_ is Cons!62906) (t!376306 s!2326))) b!5589282))

(declare-fun b!5589287 () Bool)

(declare-fun e!3448307 () Bool)

(declare-fun tp!1545893 () Bool)

(declare-fun tp!1545894 () Bool)

(assert (=> b!5589287 (= e!3448307 (and tp!1545893 tp!1545894))))

(assert (=> b!5588523 (= tp!1545821 e!3448307)))

(assert (= (and b!5588523 ((_ is Cons!62907) (exprs!5461 setElem!37237))) b!5589287))

(declare-fun condSetEmpty!37243 () Bool)

(assert (=> setNonEmpty!37237 (= condSetEmpty!37243 (= setRest!37237 ((as const (Array Context!9922 Bool)) false)))))

(declare-fun setRes!37243 () Bool)

(assert (=> setNonEmpty!37237 (= tp!1545819 setRes!37243)))

(declare-fun setIsEmpty!37243 () Bool)

(assert (=> setIsEmpty!37243 setRes!37243))

(declare-fun setNonEmpty!37243 () Bool)

(declare-fun setElem!37243 () Context!9922)

(declare-fun e!3448310 () Bool)

(declare-fun tp!1545899 () Bool)

(assert (=> setNonEmpty!37243 (= setRes!37243 (and tp!1545899 (inv!82189 setElem!37243) e!3448310))))

(declare-fun setRest!37243 () (InoxSet Context!9922))

(assert (=> setNonEmpty!37243 (= setRest!37237 ((_ map or) (store ((as const (Array Context!9922 Bool)) false) setElem!37243 true) setRest!37243))))

(declare-fun b!5589292 () Bool)

(declare-fun tp!1545900 () Bool)

(assert (=> b!5589292 (= e!3448310 tp!1545900)))

(assert (= (and setNonEmpty!37237 condSetEmpty!37243) setIsEmpty!37243))

(assert (= (and setNonEmpty!37237 (not condSetEmpty!37243)) setNonEmpty!37243))

(assert (= setNonEmpty!37243 b!5589292))

(declare-fun m!6569562 () Bool)

(assert (=> setNonEmpty!37243 m!6569562))

(declare-fun b!5589300 () Bool)

(declare-fun e!3448316 () Bool)

(declare-fun tp!1545905 () Bool)

(assert (=> b!5589300 (= e!3448316 tp!1545905)))

(declare-fun e!3448315 () Bool)

(declare-fun tp!1545906 () Bool)

(declare-fun b!5589299 () Bool)

(assert (=> b!5589299 (= e!3448315 (and (inv!82189 (h!69356 (t!376308 zl!343))) e!3448316 tp!1545906))))

(assert (=> b!5588513 (= tp!1545820 e!3448315)))

(assert (= b!5589299 b!5589300))

(assert (= (and b!5588513 ((_ is Cons!62908) (t!376308 zl!343))) b!5589299))

(declare-fun m!6569564 () Bool)

(assert (=> b!5589299 m!6569564))

(declare-fun b!5589314 () Bool)

(declare-fun e!3448319 () Bool)

(declare-fun tp!1545919 () Bool)

(declare-fun tp!1545918 () Bool)

(assert (=> b!5589314 (= e!3448319 (and tp!1545919 tp!1545918))))

(declare-fun b!5589311 () Bool)

(assert (=> b!5589311 (= e!3448319 tp_is_empty!40407)))

(declare-fun b!5589313 () Bool)

(declare-fun tp!1545921 () Bool)

(assert (=> b!5589313 (= e!3448319 tp!1545921)))

(assert (=> b!5588533 (= tp!1545827 e!3448319)))

(declare-fun b!5589312 () Bool)

(declare-fun tp!1545920 () Bool)

(declare-fun tp!1545917 () Bool)

(assert (=> b!5589312 (= e!3448319 (and tp!1545920 tp!1545917))))

(assert (= (and b!5588533 ((_ is ElementMatch!15577) (regOne!31667 r!7292))) b!5589311))

(assert (= (and b!5588533 ((_ is Concat!24422) (regOne!31667 r!7292))) b!5589312))

(assert (= (and b!5588533 ((_ is Star!15577) (regOne!31667 r!7292))) b!5589313))

(assert (= (and b!5588533 ((_ is Union!15577) (regOne!31667 r!7292))) b!5589314))

(declare-fun b!5589318 () Bool)

(declare-fun e!3448320 () Bool)

(declare-fun tp!1545924 () Bool)

(declare-fun tp!1545923 () Bool)

(assert (=> b!5589318 (= e!3448320 (and tp!1545924 tp!1545923))))

(declare-fun b!5589315 () Bool)

(assert (=> b!5589315 (= e!3448320 tp_is_empty!40407)))

(declare-fun b!5589317 () Bool)

(declare-fun tp!1545926 () Bool)

(assert (=> b!5589317 (= e!3448320 tp!1545926)))

(assert (=> b!5588533 (= tp!1545818 e!3448320)))

(declare-fun b!5589316 () Bool)

(declare-fun tp!1545925 () Bool)

(declare-fun tp!1545922 () Bool)

(assert (=> b!5589316 (= e!3448320 (and tp!1545925 tp!1545922))))

(assert (= (and b!5588533 ((_ is ElementMatch!15577) (regTwo!31667 r!7292))) b!5589315))

(assert (= (and b!5588533 ((_ is Concat!24422) (regTwo!31667 r!7292))) b!5589316))

(assert (= (and b!5588533 ((_ is Star!15577) (regTwo!31667 r!7292))) b!5589317))

(assert (= (and b!5588533 ((_ is Union!15577) (regTwo!31667 r!7292))) b!5589318))

(declare-fun b!5589319 () Bool)

(declare-fun e!3448321 () Bool)

(declare-fun tp!1545927 () Bool)

(declare-fun tp!1545928 () Bool)

(assert (=> b!5589319 (= e!3448321 (and tp!1545927 tp!1545928))))

(assert (=> b!5588514 (= tp!1545826 e!3448321)))

(assert (= (and b!5588514 ((_ is Cons!62907) (exprs!5461 (h!69356 zl!343)))) b!5589319))

(declare-fun b!5589323 () Bool)

(declare-fun e!3448322 () Bool)

(declare-fun tp!1545931 () Bool)

(declare-fun tp!1545930 () Bool)

(assert (=> b!5589323 (= e!3448322 (and tp!1545931 tp!1545930))))

(declare-fun b!5589320 () Bool)

(assert (=> b!5589320 (= e!3448322 tp_is_empty!40407)))

(declare-fun b!5589322 () Bool)

(declare-fun tp!1545933 () Bool)

(assert (=> b!5589322 (= e!3448322 tp!1545933)))

(assert (=> b!5588525 (= tp!1545823 e!3448322)))

(declare-fun b!5589321 () Bool)

(declare-fun tp!1545932 () Bool)

(declare-fun tp!1545929 () Bool)

(assert (=> b!5589321 (= e!3448322 (and tp!1545932 tp!1545929))))

(assert (= (and b!5588525 ((_ is ElementMatch!15577) (reg!15906 r!7292))) b!5589320))

(assert (= (and b!5588525 ((_ is Concat!24422) (reg!15906 r!7292))) b!5589321))

(assert (= (and b!5588525 ((_ is Star!15577) (reg!15906 r!7292))) b!5589322))

(assert (= (and b!5588525 ((_ is Union!15577) (reg!15906 r!7292))) b!5589323))

(declare-fun b!5589327 () Bool)

(declare-fun e!3448323 () Bool)

(declare-fun tp!1545936 () Bool)

(declare-fun tp!1545935 () Bool)

(assert (=> b!5589327 (= e!3448323 (and tp!1545936 tp!1545935))))

(declare-fun b!5589324 () Bool)

(assert (=> b!5589324 (= e!3448323 tp_is_empty!40407)))

(declare-fun b!5589326 () Bool)

(declare-fun tp!1545938 () Bool)

(assert (=> b!5589326 (= e!3448323 tp!1545938)))

(assert (=> b!5588521 (= tp!1545825 e!3448323)))

(declare-fun b!5589325 () Bool)

(declare-fun tp!1545937 () Bool)

(declare-fun tp!1545934 () Bool)

(assert (=> b!5589325 (= e!3448323 (and tp!1545937 tp!1545934))))

(assert (= (and b!5588521 ((_ is ElementMatch!15577) (regOne!31666 r!7292))) b!5589324))

(assert (= (and b!5588521 ((_ is Concat!24422) (regOne!31666 r!7292))) b!5589325))

(assert (= (and b!5588521 ((_ is Star!15577) (regOne!31666 r!7292))) b!5589326))

(assert (= (and b!5588521 ((_ is Union!15577) (regOne!31666 r!7292))) b!5589327))

(declare-fun b!5589331 () Bool)

(declare-fun e!3448324 () Bool)

(declare-fun tp!1545941 () Bool)

(declare-fun tp!1545940 () Bool)

(assert (=> b!5589331 (= e!3448324 (and tp!1545941 tp!1545940))))

(declare-fun b!5589328 () Bool)

(assert (=> b!5589328 (= e!3448324 tp_is_empty!40407)))

(declare-fun b!5589330 () Bool)

(declare-fun tp!1545943 () Bool)

(assert (=> b!5589330 (= e!3448324 tp!1545943)))

(assert (=> b!5588521 (= tp!1545822 e!3448324)))

(declare-fun b!5589329 () Bool)

(declare-fun tp!1545942 () Bool)

(declare-fun tp!1545939 () Bool)

(assert (=> b!5589329 (= e!3448324 (and tp!1545942 tp!1545939))))

(assert (= (and b!5588521 ((_ is ElementMatch!15577) (regTwo!31666 r!7292))) b!5589328))

(assert (= (and b!5588521 ((_ is Concat!24422) (regTwo!31666 r!7292))) b!5589329))

(assert (= (and b!5588521 ((_ is Star!15577) (regTwo!31666 r!7292))) b!5589330))

(assert (= (and b!5588521 ((_ is Union!15577) (regTwo!31666 r!7292))) b!5589331))

(declare-fun b_lambda!211781 () Bool)

(assert (= b_lambda!211769 (or b!5588545 b_lambda!211781)))

(declare-fun bs!1292359 () Bool)

(declare-fun d!1766480 () Bool)

(assert (= bs!1292359 (and d!1766480 b!5588545)))

(assert (=> bs!1292359 (= (dynLambda!24601 lambda!299914 (h!69356 zl!343)) (derivationStepZipperUp!845 (h!69356 zl!343) (h!69354 s!2326)))))

(assert (=> bs!1292359 m!6568944))

(assert (=> d!1766422 d!1766480))

(declare-fun b_lambda!211783 () Bool)

(assert (= b_lambda!211777 (or b!5588545 b_lambda!211783)))

(declare-fun bs!1292360 () Bool)

(declare-fun d!1766482 () Bool)

(assert (= bs!1292360 (and d!1766482 b!5588545)))

(assert (=> bs!1292360 (= (dynLambda!24601 lambda!299914 lt!2255204) (derivationStepZipperUp!845 lt!2255204 (h!69354 s!2326)))))

(assert (=> bs!1292360 m!6568986))

(assert (=> d!1766472 d!1766482))

(declare-fun b_lambda!211785 () Bool)

(assert (= b_lambda!211779 (or b!5588545 b_lambda!211785)))

(declare-fun bs!1292361 () Bool)

(declare-fun d!1766484 () Bool)

(assert (= bs!1292361 (and d!1766484 b!5588545)))

(assert (=> bs!1292361 (= (dynLambda!24601 lambda!299914 lt!2255209) (derivationStepZipperUp!845 lt!2255209 (h!69354 s!2326)))))

(assert (=> bs!1292361 m!6568978))

(assert (=> d!1766476 d!1766484))

(check-sat (not bm!418447) (not d!1766466) (not b!5589091) (not d!1766358) (not b_lambda!211785) (not b!5588811) (not b!5589313) (not b!5588815) (not b!5588761) (not b!5589012) (not bm!418432) (not d!1766382) (not b!5589325) (not d!1766408) (not b!5588881) (not bm!418468) (not b!5589267) (not d!1766352) (not b!5589252) (not b!5588760) (not b!5589107) (not b!5589268) (not d!1766416) (not b!5588779) (not b!5589299) (not d!1766412) (not b!5589271) (not b!5589250) (not bm!418437) (not b!5588974) (not d!1766374) (not b!5589205) (not b!5589009) (not d!1766422) (not b!5588957) (not d!1766474) (not b!5588725) (not bm!418438) (not setNonEmpty!37243) (not b!5589282) (not b!5588755) (not bm!418470) (not d!1766378) (not b!5589317) (not d!1766448) (not b!5588723) (not b!5589135) (not bm!418469) (not d!1766454) (not d!1766462) (not b!5588778) (not b!5588951) (not d!1766336) (not b_lambda!211781) (not d!1766452) (not bs!1292359) (not d!1766460) (not b!5589322) (not d!1766456) (not b!5588762) (not b!5588956) (not b!5588756) (not b!5588764) (not b!5589319) (not bm!418492) (not b!5589329) (not b!5589327) (not b!5588775) (not d!1766446) (not d!1766404) (not b!5589287) (not b!5589316) (not b!5589331) (not b!5589276) (not b!5589273) (not b!5588776) (not bm!418497) (not b!5589266) (not d!1766334) (not b!5589080) (not bm!418474) (not b!5588884) (not d!1766362) (not b!5588816) (not d!1766458) (not b!5589018) (not b!5588777) (not d!1766444) (not b!5589210) (not bm!418490) (not b!5589108) (not b!5589249) (not bm!418431) (not b!5589013) (not b_lambda!211783) (not b!5589221) (not d!1766464) (not b!5589208) (not b!5589300) (not b!5589203) (not b!5589292) (not d!1766348) (not b!5589312) (not bm!418491) (not d!1766340) (not bm!418463) (not bs!1292361) (not d!1766354) (not b!5588757) (not b!5589016) (not b!5589265) (not d!1766432) (not d!1766476) tp_is_empty!40407 (not b!5588724) (not b!5589330) (not b!5589326) (not d!1766472) (not bm!418496) (not d!1766356) (not b!5588945) (not b!5589314) (not b!5589244) (not b!5588950) (not b!5589248) (not b!5589247) (not d!1766332) (not d!1766338) (not b!5588773) (not b!5589011) (not b!5589105) (not b!5588699) (not bm!418499) (not b!5589224) (not b!5589323) (not b!5589321) (not b!5588958) (not b!5589318) (not b!5589200) (not bm!418489) (not bm!418464) (not bm!418498) (not b!5588722) (not bs!1292360) (not b!5589015) (not b!5588973) (not d!1766380) (not d!1766450) (not d!1766440))
(check-sat)
(get-model)

(declare-fun d!1766494 () Bool)

(declare-fun c!979316 () Bool)

(assert (=> d!1766494 (= c!979316 (isEmpty!34725 (tail!11018 (t!376306 s!2326))))))

(declare-fun e!3448326 () Bool)

(assert (=> d!1766494 (= (matchZipper!1715 (derivationStepZipper!1676 lt!2255199 (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))) e!3448326)))

(declare-fun b!5589336 () Bool)

(assert (=> b!5589336 (= e!3448326 (nullableZipper!1572 (derivationStepZipper!1676 lt!2255199 (head!11923 (t!376306 s!2326)))))))

(declare-fun b!5589337 () Bool)

(assert (=> b!5589337 (= e!3448326 (matchZipper!1715 (derivationStepZipper!1676 (derivationStepZipper!1676 lt!2255199 (head!11923 (t!376306 s!2326))) (head!11923 (tail!11018 (t!376306 s!2326)))) (tail!11018 (tail!11018 (t!376306 s!2326)))))))

(assert (= (and d!1766494 c!979316) b!5589336))

(assert (= (and d!1766494 (not c!979316)) b!5589337))

(assert (=> d!1766494 m!6569172))

(declare-fun m!6569580 () Bool)

(assert (=> d!1766494 m!6569580))

(assert (=> b!5589336 m!6569248))

(declare-fun m!6569582 () Bool)

(assert (=> b!5589336 m!6569582))

(assert (=> b!5589337 m!6569172))

(declare-fun m!6569584 () Bool)

(assert (=> b!5589337 m!6569584))

(assert (=> b!5589337 m!6569248))

(assert (=> b!5589337 m!6569584))

(declare-fun m!6569586 () Bool)

(assert (=> b!5589337 m!6569586))

(assert (=> b!5589337 m!6569172))

(declare-fun m!6569588 () Bool)

(assert (=> b!5589337 m!6569588))

(assert (=> b!5589337 m!6569586))

(assert (=> b!5589337 m!6569588))

(declare-fun m!6569590 () Bool)

(assert (=> b!5589337 m!6569590))

(assert (=> b!5588778 d!1766494))

(declare-fun bs!1292364 () Bool)

(declare-fun d!1766498 () Bool)

(assert (= bs!1292364 (and d!1766498 b!5588545)))

(declare-fun lambda!299976 () Int)

(assert (=> bs!1292364 (= (= (head!11923 (t!376306 s!2326)) (h!69354 s!2326)) (= lambda!299976 lambda!299914))))

(assert (=> d!1766498 true))

(assert (=> d!1766498 (= (derivationStepZipper!1676 lt!2255199 (head!11923 (t!376306 s!2326))) (flatMap!1190 lt!2255199 lambda!299976))))

(declare-fun bs!1292365 () Bool)

(assert (= bs!1292365 d!1766498))

(declare-fun m!6569592 () Bool)

(assert (=> bs!1292365 m!6569592))

(assert (=> b!5588778 d!1766498))

(declare-fun d!1766506 () Bool)

(assert (=> d!1766506 (= (head!11923 (t!376306 s!2326)) (h!69354 (t!376306 s!2326)))))

(assert (=> b!5588778 d!1766506))

(declare-fun d!1766508 () Bool)

(assert (=> d!1766508 (= (tail!11018 (t!376306 s!2326)) (t!376306 (t!376306 s!2326)))))

(assert (=> b!5588778 d!1766508))

(declare-fun d!1766510 () Bool)

(declare-fun c!979322 () Bool)

(assert (=> d!1766510 (= c!979322 (isEmpty!34725 (tail!11018 (t!376306 s!2326))))))

(declare-fun e!3448334 () Bool)

(assert (=> d!1766510 (= (matchZipper!1715 (derivationStepZipper!1676 ((_ map or) lt!2255199 lt!2255201) (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))) e!3448334)))

(declare-fun b!5589354 () Bool)

(assert (=> b!5589354 (= e!3448334 (nullableZipper!1572 (derivationStepZipper!1676 ((_ map or) lt!2255199 lt!2255201) (head!11923 (t!376306 s!2326)))))))

(declare-fun b!5589355 () Bool)

(assert (=> b!5589355 (= e!3448334 (matchZipper!1715 (derivationStepZipper!1676 (derivationStepZipper!1676 ((_ map or) lt!2255199 lt!2255201) (head!11923 (t!376306 s!2326))) (head!11923 (tail!11018 (t!376306 s!2326)))) (tail!11018 (tail!11018 (t!376306 s!2326)))))))

(assert (= (and d!1766510 c!979322) b!5589354))

(assert (= (and d!1766510 (not c!979322)) b!5589355))

(assert (=> d!1766510 m!6569172))

(assert (=> d!1766510 m!6569580))

(assert (=> b!5589354 m!6569410))

(declare-fun m!6569608 () Bool)

(assert (=> b!5589354 m!6569608))

(assert (=> b!5589355 m!6569172))

(assert (=> b!5589355 m!6569584))

(assert (=> b!5589355 m!6569410))

(assert (=> b!5589355 m!6569584))

(declare-fun m!6569610 () Bool)

(assert (=> b!5589355 m!6569610))

(assert (=> b!5589355 m!6569172))

(assert (=> b!5589355 m!6569588))

(assert (=> b!5589355 m!6569610))

(assert (=> b!5589355 m!6569588))

(declare-fun m!6569614 () Bool)

(assert (=> b!5589355 m!6569614))

(assert (=> b!5589108 d!1766510))

(declare-fun bs!1292366 () Bool)

(declare-fun d!1766512 () Bool)

(assert (= bs!1292366 (and d!1766512 b!5588545)))

(declare-fun lambda!299977 () Int)

(assert (=> bs!1292366 (= (= (head!11923 (t!376306 s!2326)) (h!69354 s!2326)) (= lambda!299977 lambda!299914))))

(declare-fun bs!1292367 () Bool)

(assert (= bs!1292367 (and d!1766512 d!1766498)))

(assert (=> bs!1292367 (= lambda!299977 lambda!299976)))

(assert (=> d!1766512 true))

(assert (=> d!1766512 (= (derivationStepZipper!1676 ((_ map or) lt!2255199 lt!2255201) (head!11923 (t!376306 s!2326))) (flatMap!1190 ((_ map or) lt!2255199 lt!2255201) lambda!299977))))

(declare-fun bs!1292368 () Bool)

(assert (= bs!1292368 d!1766512))

(declare-fun m!6569616 () Bool)

(assert (=> bs!1292368 m!6569616))

(assert (=> b!5589108 d!1766512))

(assert (=> b!5589108 d!1766506))

(assert (=> b!5589108 d!1766508))

(declare-fun d!1766516 () Bool)

(assert (=> d!1766516 true))

(declare-fun setRes!37246 () Bool)

(assert (=> d!1766516 setRes!37246))

(declare-fun condSetEmpty!37246 () Bool)

(declare-fun res!2371516 () (InoxSet Context!9922))

(assert (=> d!1766516 (= condSetEmpty!37246 (= res!2371516 ((as const (Array Context!9922 Bool)) false)))))

(assert (=> d!1766516 (= (choose!42385 lt!2255203 lambda!299914) res!2371516)))

(declare-fun setIsEmpty!37246 () Bool)

(assert (=> setIsEmpty!37246 setRes!37246))

(declare-fun setNonEmpty!37246 () Bool)

(declare-fun setElem!37246 () Context!9922)

(declare-fun tp!1545949 () Bool)

(declare-fun e!3448343 () Bool)

(assert (=> setNonEmpty!37246 (= setRes!37246 (and tp!1545949 (inv!82189 setElem!37246) e!3448343))))

(declare-fun setRest!37246 () (InoxSet Context!9922))

(assert (=> setNonEmpty!37246 (= res!2371516 ((_ map or) (store ((as const (Array Context!9922 Bool)) false) setElem!37246 true) setRest!37246))))

(declare-fun b!5589369 () Bool)

(declare-fun tp!1545948 () Bool)

(assert (=> b!5589369 (= e!3448343 tp!1545948)))

(assert (= (and d!1766516 condSetEmpty!37246) setIsEmpty!37246))

(assert (= (and d!1766516 (not condSetEmpty!37246)) setNonEmpty!37246))

(assert (= setNonEmpty!37246 b!5589369))

(declare-fun m!6569618 () Bool)

(assert (=> setNonEmpty!37246 m!6569618))

(assert (=> d!1766466 d!1766516))

(assert (=> d!1766422 d!1766440))

(declare-fun d!1766520 () Bool)

(assert (=> d!1766520 (= (flatMap!1190 z!1189 lambda!299914) (dynLambda!24601 lambda!299914 (h!69356 zl!343)))))

(assert (=> d!1766520 true))

(declare-fun _$13!2176 () Unit!155708)

(assert (=> d!1766520 (= (choose!42383 z!1189 (h!69356 zl!343) lambda!299914) _$13!2176)))

(declare-fun b_lambda!211787 () Bool)

(assert (=> (not b_lambda!211787) (not d!1766520)))

(declare-fun bs!1292370 () Bool)

(assert (= bs!1292370 d!1766520))

(assert (=> bs!1292370 m!6568946))

(assert (=> bs!1292370 m!6569446))

(assert (=> d!1766422 d!1766520))

(declare-fun b!5589381 () Bool)

(declare-fun e!3448352 () Bool)

(assert (=> b!5589381 (= e!3448352 (nullable!5609 (regOne!31666 (h!69355 (exprs!5461 lt!2255202)))))))

(declare-fun b!5589382 () Bool)

(declare-fun e!3448356 () (InoxSet Context!9922))

(declare-fun call!418517 () (InoxSet Context!9922))

(assert (=> b!5589382 (= e!3448356 call!418517)))

(declare-fun c!979334 () Bool)

(declare-fun call!418519 () List!63031)

(declare-fun bm!418509 () Bool)

(declare-fun c!979336 () Bool)

(assert (=> bm!418509 (= call!418519 ($colon$colon!1640 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255202)))) (ite (or c!979336 c!979334) (regTwo!31666 (h!69355 (exprs!5461 lt!2255202))) (h!69355 (exprs!5461 lt!2255202)))))))

(declare-fun call!418515 () (InoxSet Context!9922))

(declare-fun call!418514 () List!63031)

(declare-fun bm!418510 () Bool)

(declare-fun c!979335 () Bool)

(assert (=> bm!418510 (= call!418515 (derivationStepZipperDown!919 (ite c!979335 (regOne!31667 (h!69355 (exprs!5461 lt!2255202))) (ite c!979336 (regTwo!31666 (h!69355 (exprs!5461 lt!2255202))) (ite c!979334 (regOne!31666 (h!69355 (exprs!5461 lt!2255202))) (reg!15906 (h!69355 (exprs!5461 lt!2255202)))))) (ite (or c!979335 c!979336) (Context!9923 (t!376307 (exprs!5461 lt!2255202))) (Context!9923 call!418514)) (h!69354 s!2326)))))

(declare-fun b!5589383 () Bool)

(declare-fun e!3448355 () (InoxSet Context!9922))

(declare-fun e!3448354 () (InoxSet Context!9922))

(assert (=> b!5589383 (= e!3448355 e!3448354)))

(assert (=> b!5589383 (= c!979335 ((_ is Union!15577) (h!69355 (exprs!5461 lt!2255202))))))

(declare-fun d!1766526 () Bool)

(declare-fun c!979333 () Bool)

(assert (=> d!1766526 (= c!979333 (and ((_ is ElementMatch!15577) (h!69355 (exprs!5461 lt!2255202))) (= (c!979094 (h!69355 (exprs!5461 lt!2255202))) (h!69354 s!2326))))))

(assert (=> d!1766526 (= (derivationStepZipperDown!919 (h!69355 (exprs!5461 lt!2255202)) (Context!9923 (t!376307 (exprs!5461 lt!2255202))) (h!69354 s!2326)) e!3448355)))

(declare-fun bm!418511 () Bool)

(declare-fun call!418516 () (InoxSet Context!9922))

(assert (=> bm!418511 (= call!418516 call!418515)))

(declare-fun b!5589384 () Bool)

(declare-fun e!3448351 () (InoxSet Context!9922))

(assert (=> b!5589384 (= e!3448351 e!3448356)))

(assert (=> b!5589384 (= c!979334 ((_ is Concat!24422) (h!69355 (exprs!5461 lt!2255202))))))

(declare-fun b!5589385 () Bool)

(assert (=> b!5589385 (= c!979336 e!3448352)))

(declare-fun res!2371520 () Bool)

(assert (=> b!5589385 (=> (not res!2371520) (not e!3448352))))

(assert (=> b!5589385 (= res!2371520 ((_ is Concat!24422) (h!69355 (exprs!5461 lt!2255202))))))

(assert (=> b!5589385 (= e!3448354 e!3448351)))

(declare-fun b!5589386 () Bool)

(declare-fun e!3448353 () (InoxSet Context!9922))

(assert (=> b!5589386 (= e!3448353 call!418517)))

(declare-fun bm!418512 () Bool)

(assert (=> bm!418512 (= call!418514 call!418519)))

(declare-fun b!5589387 () Bool)

(assert (=> b!5589387 (= e!3448355 (store ((as const (Array Context!9922 Bool)) false) (Context!9923 (t!376307 (exprs!5461 lt!2255202))) true))))

(declare-fun b!5589388 () Bool)

(declare-fun call!418518 () (InoxSet Context!9922))

(assert (=> b!5589388 (= e!3448354 ((_ map or) call!418515 call!418518))))

(declare-fun b!5589389 () Bool)

(assert (=> b!5589389 (= e!3448351 ((_ map or) call!418518 call!418516))))

(declare-fun b!5589390 () Bool)

(declare-fun c!979332 () Bool)

(assert (=> b!5589390 (= c!979332 ((_ is Star!15577) (h!69355 (exprs!5461 lt!2255202))))))

(assert (=> b!5589390 (= e!3448356 e!3448353)))

(declare-fun b!5589391 () Bool)

(assert (=> b!5589391 (= e!3448353 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418513 () Bool)

(assert (=> bm!418513 (= call!418517 call!418516)))

(declare-fun bm!418514 () Bool)

(assert (=> bm!418514 (= call!418518 (derivationStepZipperDown!919 (ite c!979335 (regTwo!31667 (h!69355 (exprs!5461 lt!2255202))) (regOne!31666 (h!69355 (exprs!5461 lt!2255202)))) (ite c!979335 (Context!9923 (t!376307 (exprs!5461 lt!2255202))) (Context!9923 call!418519)) (h!69354 s!2326)))))

(assert (= (and d!1766526 c!979333) b!5589387))

(assert (= (and d!1766526 (not c!979333)) b!5589383))

(assert (= (and b!5589383 c!979335) b!5589388))

(assert (= (and b!5589383 (not c!979335)) b!5589385))

(assert (= (and b!5589385 res!2371520) b!5589381))

(assert (= (and b!5589385 c!979336) b!5589389))

(assert (= (and b!5589385 (not c!979336)) b!5589384))

(assert (= (and b!5589384 c!979334) b!5589382))

(assert (= (and b!5589384 (not c!979334)) b!5589390))

(assert (= (and b!5589390 c!979332) b!5589386))

(assert (= (and b!5589390 (not c!979332)) b!5589391))

(assert (= (or b!5589382 b!5589386) bm!418512))

(assert (= (or b!5589382 b!5589386) bm!418513))

(assert (= (or b!5589389 bm!418512) bm!418509))

(assert (= (or b!5589389 bm!418513) bm!418511))

(assert (= (or b!5589388 b!5589389) bm!418514))

(assert (= (or b!5589388 bm!418511) bm!418510))

(declare-fun m!6569632 () Bool)

(assert (=> bm!418514 m!6569632))

(declare-fun m!6569634 () Bool)

(assert (=> b!5589381 m!6569634))

(declare-fun m!6569636 () Bool)

(assert (=> b!5589387 m!6569636))

(declare-fun m!6569638 () Bool)

(assert (=> bm!418509 m!6569638))

(declare-fun m!6569640 () Bool)

(assert (=> bm!418510 m!6569640))

(assert (=> bm!418489 d!1766526))

(declare-fun d!1766528 () Bool)

(assert (=> d!1766528 (= (isEmpty!34725 s!2326) ((_ is Nil!62906) s!2326))))

(assert (=> bm!418438 d!1766528))

(declare-fun d!1766530 () Bool)

(assert (=> d!1766530 (= ($colon$colon!1640 (exprs!5461 lt!2255202) (ite (or c!979274 c!979272) (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (regOne!31667 (regOne!31666 r!7292)))) (Cons!62907 (ite (or c!979274 c!979272) (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (regOne!31667 (regOne!31666 r!7292))) (exprs!5461 lt!2255202)))))

(assert (=> bm!418469 d!1766530))

(declare-fun b!5589392 () Bool)

(declare-fun e!3448358 () Bool)

(assert (=> b!5589392 (= e!3448358 (nullable!5609 (regOne!31666 (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343))))))))))))

(declare-fun b!5589393 () Bool)

(declare-fun e!3448362 () (InoxSet Context!9922))

(declare-fun call!418523 () (InoxSet Context!9922))

(assert (=> b!5589393 (= e!3448362 call!418523)))

(declare-fun bm!418515 () Bool)

(declare-fun call!418525 () List!63031)

(declare-fun c!979339 () Bool)

(declare-fun c!979341 () Bool)

(assert (=> bm!418515 (= call!418525 ($colon$colon!1640 (exprs!5461 (ite (or c!979298 c!979299) lt!2255202 (Context!9923 call!418496))) (ite (or c!979341 c!979339) (regTwo!31666 (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343)))))))) (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343))))))))))))

(declare-fun c!979340 () Bool)

(declare-fun call!418520 () List!63031)

(declare-fun bm!418516 () Bool)

(declare-fun call!418521 () (InoxSet Context!9922))

(assert (=> bm!418516 (= call!418521 (derivationStepZipperDown!919 (ite c!979340 (regOne!31667 (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343)))))))) (ite c!979341 (regTwo!31666 (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343)))))))) (ite c!979339 (regOne!31666 (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343)))))))) (reg!15906 (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343))))))))))) (ite (or c!979340 c!979341) (ite (or c!979298 c!979299) lt!2255202 (Context!9923 call!418496)) (Context!9923 call!418520)) (h!69354 s!2326)))))

(declare-fun b!5589394 () Bool)

(declare-fun e!3448361 () (InoxSet Context!9922))

(declare-fun e!3448360 () (InoxSet Context!9922))

(assert (=> b!5589394 (= e!3448361 e!3448360)))

(assert (=> b!5589394 (= c!979340 ((_ is Union!15577) (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343)))))))))))

(declare-fun c!979338 () Bool)

(declare-fun d!1766532 () Bool)

(assert (=> d!1766532 (= c!979338 (and ((_ is ElementMatch!15577) (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343)))))))) (= (c!979094 (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343)))))))) (h!69354 s!2326))))))

(assert (=> d!1766532 (= (derivationStepZipperDown!919 (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343))))))) (ite (or c!979298 c!979299) lt!2255202 (Context!9923 call!418496)) (h!69354 s!2326)) e!3448361)))

(declare-fun bm!418517 () Bool)

(declare-fun call!418522 () (InoxSet Context!9922))

(assert (=> bm!418517 (= call!418522 call!418521)))

(declare-fun b!5589395 () Bool)

(declare-fun e!3448357 () (InoxSet Context!9922))

(assert (=> b!5589395 (= e!3448357 e!3448362)))

(assert (=> b!5589395 (= c!979339 ((_ is Concat!24422) (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343)))))))))))

(declare-fun b!5589396 () Bool)

(assert (=> b!5589396 (= c!979341 e!3448358)))

(declare-fun res!2371521 () Bool)

(assert (=> b!5589396 (=> (not res!2371521) (not e!3448358))))

(assert (=> b!5589396 (= res!2371521 ((_ is Concat!24422) (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343)))))))))))

(assert (=> b!5589396 (= e!3448360 e!3448357)))

(declare-fun b!5589397 () Bool)

(declare-fun e!3448359 () (InoxSet Context!9922))

(assert (=> b!5589397 (= e!3448359 call!418523)))

(declare-fun bm!418518 () Bool)

(assert (=> bm!418518 (= call!418520 call!418525)))

(declare-fun b!5589398 () Bool)

(assert (=> b!5589398 (= e!3448361 (store ((as const (Array Context!9922 Bool)) false) (ite (or c!979298 c!979299) lt!2255202 (Context!9923 call!418496)) true))))

(declare-fun b!5589399 () Bool)

(declare-fun call!418524 () (InoxSet Context!9922))

(assert (=> b!5589399 (= e!3448360 ((_ map or) call!418521 call!418524))))

(declare-fun b!5589400 () Bool)

(assert (=> b!5589400 (= e!3448357 ((_ map or) call!418524 call!418522))))

(declare-fun b!5589401 () Bool)

(declare-fun c!979337 () Bool)

(assert (=> b!5589401 (= c!979337 ((_ is Star!15577) (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343)))))))))))

(assert (=> b!5589401 (= e!3448362 e!3448359)))

(declare-fun b!5589402 () Bool)

(assert (=> b!5589402 (= e!3448359 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418519 () Bool)

(assert (=> bm!418519 (= call!418523 call!418522)))

(declare-fun bm!418520 () Bool)

(assert (=> bm!418520 (= call!418524 (derivationStepZipperDown!919 (ite c!979340 (regTwo!31667 (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343)))))))) (regOne!31666 (ite c!979298 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979299 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979297 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343))))))))) (ite c!979340 (ite (or c!979298 c!979299) lt!2255202 (Context!9923 call!418496)) (Context!9923 call!418525)) (h!69354 s!2326)))))

(assert (= (and d!1766532 c!979338) b!5589398))

(assert (= (and d!1766532 (not c!979338)) b!5589394))

(assert (= (and b!5589394 c!979340) b!5589399))

(assert (= (and b!5589394 (not c!979340)) b!5589396))

(assert (= (and b!5589396 res!2371521) b!5589392))

(assert (= (and b!5589396 c!979341) b!5589400))

(assert (= (and b!5589396 (not c!979341)) b!5589395))

(assert (= (and b!5589395 c!979339) b!5589393))

(assert (= (and b!5589395 (not c!979339)) b!5589401))

(assert (= (and b!5589401 c!979337) b!5589397))

(assert (= (and b!5589401 (not c!979337)) b!5589402))

(assert (= (or b!5589393 b!5589397) bm!418518))

(assert (= (or b!5589393 b!5589397) bm!418519))

(assert (= (or b!5589400 bm!418518) bm!418515))

(assert (= (or b!5589400 bm!418519) bm!418517))

(assert (= (or b!5589399 b!5589400) bm!418520))

(assert (= (or b!5589399 bm!418517) bm!418516))

(declare-fun m!6569642 () Bool)

(assert (=> bm!418520 m!6569642))

(declare-fun m!6569644 () Bool)

(assert (=> b!5589392 m!6569644))

(declare-fun m!6569646 () Bool)

(assert (=> b!5589398 m!6569646))

(declare-fun m!6569648 () Bool)

(assert (=> bm!418515 m!6569648))

(declare-fun m!6569650 () Bool)

(assert (=> bm!418516 m!6569650))

(assert (=> bm!418492 d!1766532))

(declare-fun b!5589403 () Bool)

(declare-fun res!2371525 () Bool)

(declare-fun e!3448368 () Bool)

(assert (=> b!5589403 (=> (not res!2371525) (not e!3448368))))

(declare-fun call!418526 () Bool)

(assert (=> b!5589403 (= res!2371525 call!418526)))

(declare-fun e!3448367 () Bool)

(assert (=> b!5589403 (= e!3448367 e!3448368)))

(declare-fun b!5589404 () Bool)

(declare-fun call!418528 () Bool)

(assert (=> b!5589404 (= e!3448368 call!418528)))

(declare-fun d!1766534 () Bool)

(declare-fun res!2371523 () Bool)

(declare-fun e!3448365 () Bool)

(assert (=> d!1766534 (=> res!2371523 e!3448365)))

(assert (=> d!1766534 (= res!2371523 ((_ is ElementMatch!15577) lt!2255229))))

(assert (=> d!1766534 (= (validRegex!7313 lt!2255229) e!3448365)))

(declare-fun bm!418521 () Bool)

(declare-fun call!418527 () Bool)

(assert (=> bm!418521 (= call!418528 call!418527)))

(declare-fun b!5589405 () Bool)

(declare-fun e!3448369 () Bool)

(assert (=> b!5589405 (= e!3448365 e!3448369)))

(declare-fun c!979342 () Bool)

(assert (=> b!5589405 (= c!979342 ((_ is Star!15577) lt!2255229))))

(declare-fun b!5589406 () Bool)

(declare-fun e!3448366 () Bool)

(assert (=> b!5589406 (= e!3448366 call!418527)))

(declare-fun bm!418522 () Bool)

(declare-fun c!979343 () Bool)

(assert (=> bm!418522 (= call!418526 (validRegex!7313 (ite c!979343 (regOne!31667 lt!2255229) (regOne!31666 lt!2255229))))))

(declare-fun b!5589407 () Bool)

(declare-fun res!2371522 () Bool)

(declare-fun e!3448363 () Bool)

(assert (=> b!5589407 (=> res!2371522 e!3448363)))

(assert (=> b!5589407 (= res!2371522 (not ((_ is Concat!24422) lt!2255229)))))

(assert (=> b!5589407 (= e!3448367 e!3448363)))

(declare-fun b!5589408 () Bool)

(assert (=> b!5589408 (= e!3448369 e!3448366)))

(declare-fun res!2371526 () Bool)

(assert (=> b!5589408 (= res!2371526 (not (nullable!5609 (reg!15906 lt!2255229))))))

(assert (=> b!5589408 (=> (not res!2371526) (not e!3448366))))

(declare-fun b!5589409 () Bool)

(declare-fun e!3448364 () Bool)

(assert (=> b!5589409 (= e!3448363 e!3448364)))

(declare-fun res!2371524 () Bool)

(assert (=> b!5589409 (=> (not res!2371524) (not e!3448364))))

(assert (=> b!5589409 (= res!2371524 call!418526)))

(declare-fun bm!418523 () Bool)

(assert (=> bm!418523 (= call!418527 (validRegex!7313 (ite c!979342 (reg!15906 lt!2255229) (ite c!979343 (regTwo!31667 lt!2255229) (regTwo!31666 lt!2255229)))))))

(declare-fun b!5589410 () Bool)

(assert (=> b!5589410 (= e!3448369 e!3448367)))

(assert (=> b!5589410 (= c!979343 ((_ is Union!15577) lt!2255229))))

(declare-fun b!5589411 () Bool)

(assert (=> b!5589411 (= e!3448364 call!418528)))

(assert (= (and d!1766534 (not res!2371523)) b!5589405))

(assert (= (and b!5589405 c!979342) b!5589408))

(assert (= (and b!5589405 (not c!979342)) b!5589410))

(assert (= (and b!5589408 res!2371526) b!5589406))

(assert (= (and b!5589410 c!979343) b!5589403))

(assert (= (and b!5589410 (not c!979343)) b!5589407))

(assert (= (and b!5589403 res!2371525) b!5589404))

(assert (= (and b!5589407 (not res!2371522)) b!5589409))

(assert (= (and b!5589409 res!2371524) b!5589411))

(assert (= (or b!5589404 b!5589411) bm!418521))

(assert (= (or b!5589403 b!5589409) bm!418522))

(assert (= (or b!5589406 bm!418521) bm!418523))

(declare-fun m!6569652 () Bool)

(assert (=> bm!418522 m!6569652))

(declare-fun m!6569654 () Bool)

(assert (=> b!5589408 m!6569654))

(declare-fun m!6569656 () Bool)

(assert (=> bm!418523 m!6569656))

(assert (=> d!1766332 d!1766534))

(assert (=> d!1766332 d!1766340))

(assert (=> d!1766332 d!1766348))

(declare-fun d!1766536 () Bool)

(assert (=> d!1766536 (= (isEmpty!34723 (tail!11019 (unfocusZipperList!1005 zl!343))) ((_ is Nil!62907) (tail!11019 (unfocusZipperList!1005 zl!343))))))

(assert (=> b!5588762 d!1766536))

(declare-fun d!1766538 () Bool)

(assert (=> d!1766538 (= (tail!11019 (unfocusZipperList!1005 zl!343)) (t!376307 (unfocusZipperList!1005 zl!343)))))

(assert (=> b!5588762 d!1766538))

(declare-fun bs!1292382 () Bool)

(declare-fun b!5589417 () Bool)

(assert (= bs!1292382 (and b!5589417 b!5588886)))

(declare-fun lambda!299980 () Int)

(assert (=> bs!1292382 (= (and (= (reg!15906 (regOne!31667 r!7292)) (reg!15906 r!7292)) (= (regOne!31667 r!7292) r!7292)) (= lambda!299980 lambda!299947))))

(declare-fun bs!1292383 () Bool)

(assert (= bs!1292383 (and b!5589417 d!1766452)))

(assert (=> bs!1292383 (not (= lambda!299980 lambda!299970))))

(assert (=> bs!1292383 (not (= lambda!299980 lambda!299969))))

(declare-fun bs!1292384 () Bool)

(assert (= bs!1292384 (and b!5589417 b!5588535)))

(assert (=> bs!1292384 (not (= lambda!299980 lambda!299913))))

(assert (=> bs!1292384 (not (= lambda!299980 lambda!299912))))

(declare-fun bs!1292385 () Bool)

(assert (= bs!1292385 (and b!5589417 d!1766450)))

(assert (=> bs!1292385 (not (= lambda!299980 lambda!299964))))

(declare-fun bs!1292386 () Bool)

(assert (= bs!1292386 (and b!5589417 b!5588883)))

(assert (=> bs!1292386 (not (= lambda!299980 lambda!299948))))

(assert (=> b!5589417 true))

(assert (=> b!5589417 true))

(declare-fun bs!1292387 () Bool)

(declare-fun b!5589414 () Bool)

(assert (= bs!1292387 (and b!5589414 d!1766452)))

(declare-fun lambda!299981 () Int)

(assert (=> bs!1292387 (= (and (= (regOne!31666 (regOne!31667 r!7292)) (regOne!31666 r!7292)) (= (regTwo!31666 (regOne!31667 r!7292)) (regTwo!31666 r!7292))) (= lambda!299981 lambda!299970))))

(assert (=> bs!1292387 (not (= lambda!299981 lambda!299969))))

(declare-fun bs!1292388 () Bool)

(assert (= bs!1292388 (and b!5589414 b!5588535)))

(assert (=> bs!1292388 (= (and (= (regOne!31666 (regOne!31667 r!7292)) (regOne!31666 r!7292)) (= (regTwo!31666 (regOne!31667 r!7292)) (regTwo!31666 r!7292))) (= lambda!299981 lambda!299913))))

(assert (=> bs!1292388 (not (= lambda!299981 lambda!299912))))

(declare-fun bs!1292389 () Bool)

(assert (= bs!1292389 (and b!5589414 b!5588886)))

(assert (=> bs!1292389 (not (= lambda!299981 lambda!299947))))

(declare-fun bs!1292390 () Bool)

(assert (= bs!1292390 (and b!5589414 b!5589417)))

(assert (=> bs!1292390 (not (= lambda!299981 lambda!299980))))

(declare-fun bs!1292392 () Bool)

(assert (= bs!1292392 (and b!5589414 d!1766450)))

(assert (=> bs!1292392 (not (= lambda!299981 lambda!299964))))

(declare-fun bs!1292393 () Bool)

(assert (= bs!1292393 (and b!5589414 b!5588883)))

(assert (=> bs!1292393 (= (and (= (regOne!31666 (regOne!31667 r!7292)) (regOne!31666 r!7292)) (= (regTwo!31666 (regOne!31667 r!7292)) (regTwo!31666 r!7292))) (= lambda!299981 lambda!299948))))

(assert (=> b!5589414 true))

(assert (=> b!5589414 true))

(declare-fun call!418530 () Bool)

(declare-fun bm!418524 () Bool)

(declare-fun c!979346 () Bool)

(assert (=> bm!418524 (= call!418530 (Exists!2677 (ite c!979346 lambda!299980 lambda!299981)))))

(declare-fun d!1766540 () Bool)

(declare-fun c!979347 () Bool)

(assert (=> d!1766540 (= c!979347 ((_ is EmptyExpr!15577) (regOne!31667 r!7292)))))

(declare-fun e!3448371 () Bool)

(assert (=> d!1766540 (= (matchRSpec!2680 (regOne!31667 r!7292) s!2326) e!3448371)))

(declare-fun b!5589412 () Bool)

(declare-fun e!3448373 () Bool)

(declare-fun e!3448372 () Bool)

(assert (=> b!5589412 (= e!3448373 e!3448372)))

(declare-fun res!2371527 () Bool)

(assert (=> b!5589412 (= res!2371527 (matchRSpec!2680 (regOne!31667 (regOne!31667 r!7292)) s!2326))))

(assert (=> b!5589412 (=> res!2371527 e!3448372)))

(declare-fun b!5589413 () Bool)

(declare-fun call!418529 () Bool)

(assert (=> b!5589413 (= e!3448371 call!418529)))

(declare-fun e!3448375 () Bool)

(assert (=> b!5589414 (= e!3448375 call!418530)))

(declare-fun b!5589415 () Bool)

(assert (=> b!5589415 (= e!3448372 (matchRSpec!2680 (regTwo!31667 (regOne!31667 r!7292)) s!2326))))

(declare-fun b!5589416 () Bool)

(declare-fun res!2371528 () Bool)

(declare-fun e!3448370 () Bool)

(assert (=> b!5589416 (=> res!2371528 e!3448370)))

(assert (=> b!5589416 (= res!2371528 call!418529)))

(assert (=> b!5589416 (= e!3448375 e!3448370)))

(assert (=> b!5589417 (= e!3448370 call!418530)))

(declare-fun b!5589418 () Bool)

(declare-fun c!979345 () Bool)

(assert (=> b!5589418 (= c!979345 ((_ is Union!15577) (regOne!31667 r!7292)))))

(declare-fun e!3448374 () Bool)

(assert (=> b!5589418 (= e!3448374 e!3448373)))

(declare-fun b!5589419 () Bool)

(assert (=> b!5589419 (= e!3448374 (= s!2326 (Cons!62906 (c!979094 (regOne!31667 r!7292)) Nil!62906)))))

(declare-fun bm!418525 () Bool)

(assert (=> bm!418525 (= call!418529 (isEmpty!34725 s!2326))))

(declare-fun b!5589420 () Bool)

(declare-fun c!979344 () Bool)

(assert (=> b!5589420 (= c!979344 ((_ is ElementMatch!15577) (regOne!31667 r!7292)))))

(declare-fun e!3448376 () Bool)

(assert (=> b!5589420 (= e!3448376 e!3448374)))

(declare-fun b!5589421 () Bool)

(assert (=> b!5589421 (= e!3448373 e!3448375)))

(assert (=> b!5589421 (= c!979346 ((_ is Star!15577) (regOne!31667 r!7292)))))

(declare-fun b!5589422 () Bool)

(assert (=> b!5589422 (= e!3448371 e!3448376)))

(declare-fun res!2371529 () Bool)

(assert (=> b!5589422 (= res!2371529 (not ((_ is EmptyLang!15577) (regOne!31667 r!7292))))))

(assert (=> b!5589422 (=> (not res!2371529) (not e!3448376))))

(assert (= (and d!1766540 c!979347) b!5589413))

(assert (= (and d!1766540 (not c!979347)) b!5589422))

(assert (= (and b!5589422 res!2371529) b!5589420))

(assert (= (and b!5589420 c!979344) b!5589419))

(assert (= (and b!5589420 (not c!979344)) b!5589418))

(assert (= (and b!5589418 c!979345) b!5589412))

(assert (= (and b!5589418 (not c!979345)) b!5589421))

(assert (= (and b!5589412 (not res!2371527)) b!5589415))

(assert (= (and b!5589421 c!979346) b!5589416))

(assert (= (and b!5589421 (not c!979346)) b!5589414))

(assert (= (and b!5589416 (not res!2371528)) b!5589417))

(assert (= (or b!5589417 b!5589414) bm!418524))

(assert (= (or b!5589413 b!5589416) bm!418525))

(declare-fun m!6569672 () Bool)

(assert (=> bm!418524 m!6569672))

(declare-fun m!6569674 () Bool)

(assert (=> b!5589412 m!6569674))

(declare-fun m!6569676 () Bool)

(assert (=> b!5589415 m!6569676))

(assert (=> bm!418525 m!6569284))

(assert (=> b!5588881 d!1766540))

(declare-fun b!5589439 () Bool)

(declare-fun res!2371541 () Bool)

(declare-fun e!3448390 () Bool)

(assert (=> b!5589439 (=> (not res!2371541) (not e!3448390))))

(declare-fun call!418532 () Bool)

(assert (=> b!5589439 (= res!2371541 call!418532)))

(declare-fun e!3448389 () Bool)

(assert (=> b!5589439 (= e!3448389 e!3448390)))

(declare-fun b!5589440 () Bool)

(declare-fun call!418534 () Bool)

(assert (=> b!5589440 (= e!3448390 call!418534)))

(declare-fun d!1766548 () Bool)

(declare-fun res!2371539 () Bool)

(declare-fun e!3448387 () Bool)

(assert (=> d!1766548 (=> res!2371539 e!3448387)))

(assert (=> d!1766548 (= res!2371539 ((_ is ElementMatch!15577) (ite c!979182 (regOne!31667 r!7292) (regOne!31666 r!7292))))))

(assert (=> d!1766548 (= (validRegex!7313 (ite c!979182 (regOne!31667 r!7292) (regOne!31666 r!7292))) e!3448387)))

(declare-fun bm!418527 () Bool)

(declare-fun call!418533 () Bool)

(assert (=> bm!418527 (= call!418534 call!418533)))

(declare-fun b!5589441 () Bool)

(declare-fun e!3448391 () Bool)

(assert (=> b!5589441 (= e!3448387 e!3448391)))

(declare-fun c!979352 () Bool)

(assert (=> b!5589441 (= c!979352 ((_ is Star!15577) (ite c!979182 (regOne!31667 r!7292) (regOne!31666 r!7292))))))

(declare-fun b!5589442 () Bool)

(declare-fun e!3448388 () Bool)

(assert (=> b!5589442 (= e!3448388 call!418533)))

(declare-fun c!979353 () Bool)

(declare-fun bm!418528 () Bool)

(assert (=> bm!418528 (= call!418532 (validRegex!7313 (ite c!979353 (regOne!31667 (ite c!979182 (regOne!31667 r!7292) (regOne!31666 r!7292))) (regOne!31666 (ite c!979182 (regOne!31667 r!7292) (regOne!31666 r!7292))))))))

(declare-fun b!5589443 () Bool)

(declare-fun res!2371538 () Bool)

(declare-fun e!3448385 () Bool)

(assert (=> b!5589443 (=> res!2371538 e!3448385)))

(assert (=> b!5589443 (= res!2371538 (not ((_ is Concat!24422) (ite c!979182 (regOne!31667 r!7292) (regOne!31666 r!7292)))))))

(assert (=> b!5589443 (= e!3448389 e!3448385)))

(declare-fun b!5589444 () Bool)

(assert (=> b!5589444 (= e!3448391 e!3448388)))

(declare-fun res!2371542 () Bool)

(assert (=> b!5589444 (= res!2371542 (not (nullable!5609 (reg!15906 (ite c!979182 (regOne!31667 r!7292) (regOne!31666 r!7292))))))))

(assert (=> b!5589444 (=> (not res!2371542) (not e!3448388))))

(declare-fun b!5589445 () Bool)

(declare-fun e!3448386 () Bool)

(assert (=> b!5589445 (= e!3448385 e!3448386)))

(declare-fun res!2371540 () Bool)

(assert (=> b!5589445 (=> (not res!2371540) (not e!3448386))))

(assert (=> b!5589445 (= res!2371540 call!418532)))

(declare-fun bm!418529 () Bool)

(assert (=> bm!418529 (= call!418533 (validRegex!7313 (ite c!979352 (reg!15906 (ite c!979182 (regOne!31667 r!7292) (regOne!31666 r!7292))) (ite c!979353 (regTwo!31667 (ite c!979182 (regOne!31667 r!7292) (regOne!31666 r!7292))) (regTwo!31666 (ite c!979182 (regOne!31667 r!7292) (regOne!31666 r!7292)))))))))

(declare-fun b!5589446 () Bool)

(assert (=> b!5589446 (= e!3448391 e!3448389)))

(assert (=> b!5589446 (= c!979353 ((_ is Union!15577) (ite c!979182 (regOne!31667 r!7292) (regOne!31666 r!7292))))))

(declare-fun b!5589447 () Bool)

(assert (=> b!5589447 (= e!3448386 call!418534)))

(assert (= (and d!1766548 (not res!2371539)) b!5589441))

(assert (= (and b!5589441 c!979352) b!5589444))

(assert (= (and b!5589441 (not c!979352)) b!5589446))

(assert (= (and b!5589444 res!2371542) b!5589442))

(assert (= (and b!5589446 c!979353) b!5589439))

(assert (= (and b!5589446 (not c!979353)) b!5589443))

(assert (= (and b!5589439 res!2371541) b!5589440))

(assert (= (and b!5589443 (not res!2371538)) b!5589445))

(assert (= (and b!5589445 res!2371540) b!5589447))

(assert (= (or b!5589440 b!5589447) bm!418527))

(assert (= (or b!5589439 b!5589445) bm!418528))

(assert (= (or b!5589442 bm!418527) bm!418529))

(declare-fun m!6569678 () Bool)

(assert (=> bm!418528 m!6569678))

(declare-fun m!6569680 () Bool)

(assert (=> b!5589444 m!6569680))

(declare-fun m!6569682 () Bool)

(assert (=> bm!418529 m!6569682))

(assert (=> bm!418431 d!1766548))

(declare-fun b!5589448 () Bool)

(declare-fun e!3448393 () Bool)

(assert (=> b!5589448 (= e!3448393 (nullable!5609 (regOne!31666 (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343))))))))))

(declare-fun b!5589449 () Bool)

(declare-fun e!3448397 () (InoxSet Context!9922))

(declare-fun call!418538 () (InoxSet Context!9922))

(assert (=> b!5589449 (= e!3448397 call!418538)))

(declare-fun bm!418530 () Bool)

(declare-fun call!418540 () List!63031)

(declare-fun c!979358 () Bool)

(declare-fun c!979356 () Bool)

(assert (=> bm!418530 (= call!418540 ($colon$colon!1640 (exprs!5461 (ite c!979298 lt!2255202 (Context!9923 call!418501))) (ite (or c!979358 c!979356) (regTwo!31666 (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))))) (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343))))))))))

(declare-fun c!979357 () Bool)

(declare-fun bm!418531 () Bool)

(declare-fun call!418536 () (InoxSet Context!9922))

(declare-fun call!418535 () List!63031)

(assert (=> bm!418531 (= call!418536 (derivationStepZipperDown!919 (ite c!979357 (regOne!31667 (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))))) (ite c!979358 (regTwo!31666 (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))))) (ite c!979356 (regOne!31666 (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))))) (reg!15906 (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343))))))))) (ite (or c!979357 c!979358) (ite c!979298 lt!2255202 (Context!9923 call!418501)) (Context!9923 call!418535)) (h!69354 s!2326)))))

(declare-fun b!5589450 () Bool)

(declare-fun e!3448396 () (InoxSet Context!9922))

(declare-fun e!3448395 () (InoxSet Context!9922))

(assert (=> b!5589450 (= e!3448396 e!3448395)))

(assert (=> b!5589450 (= c!979357 ((_ is Union!15577) (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))))))))

(declare-fun c!979355 () Bool)

(declare-fun d!1766550 () Bool)

(assert (=> d!1766550 (= c!979355 (and ((_ is ElementMatch!15577) (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))))) (= (c!979094 (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))))) (h!69354 s!2326))))))

(assert (=> d!1766550 (= (derivationStepZipperDown!919 (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343))))) (ite c!979298 lt!2255202 (Context!9923 call!418501)) (h!69354 s!2326)) e!3448396)))

(declare-fun bm!418532 () Bool)

(declare-fun call!418537 () (InoxSet Context!9922))

(assert (=> bm!418532 (= call!418537 call!418536)))

(declare-fun b!5589451 () Bool)

(declare-fun e!3448392 () (InoxSet Context!9922))

(assert (=> b!5589451 (= e!3448392 e!3448397)))

(assert (=> b!5589451 (= c!979356 ((_ is Concat!24422) (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))))))))

(declare-fun b!5589452 () Bool)

(assert (=> b!5589452 (= c!979358 e!3448393)))

(declare-fun res!2371543 () Bool)

(assert (=> b!5589452 (=> (not res!2371543) (not e!3448393))))

(assert (=> b!5589452 (= res!2371543 ((_ is Concat!24422) (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))))))))

(assert (=> b!5589452 (= e!3448395 e!3448392)))

(declare-fun b!5589453 () Bool)

(declare-fun e!3448394 () (InoxSet Context!9922))

(assert (=> b!5589453 (= e!3448394 call!418538)))

(declare-fun bm!418533 () Bool)

(assert (=> bm!418533 (= call!418535 call!418540)))

(declare-fun b!5589454 () Bool)

(assert (=> b!5589454 (= e!3448396 (store ((as const (Array Context!9922 Bool)) false) (ite c!979298 lt!2255202 (Context!9923 call!418501)) true))))

(declare-fun b!5589455 () Bool)

(declare-fun call!418539 () (InoxSet Context!9922))

(assert (=> b!5589455 (= e!3448395 ((_ map or) call!418536 call!418539))))

(declare-fun b!5589456 () Bool)

(assert (=> b!5589456 (= e!3448392 ((_ map or) call!418539 call!418537))))

(declare-fun b!5589457 () Bool)

(declare-fun c!979354 () Bool)

(assert (=> b!5589457 (= c!979354 ((_ is Star!15577) (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))))))))

(assert (=> b!5589457 (= e!3448397 e!3448394)))

(declare-fun b!5589458 () Bool)

(assert (=> b!5589458 (= e!3448394 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418534 () Bool)

(assert (=> bm!418534 (= call!418538 call!418537)))

(declare-fun bm!418535 () Bool)

(assert (=> bm!418535 (= call!418539 (derivationStepZipperDown!919 (ite c!979357 (regTwo!31667 (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))))) (regOne!31666 (ite c!979298 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343))))))) (ite c!979357 (ite c!979298 lt!2255202 (Context!9923 call!418501)) (Context!9923 call!418540)) (h!69354 s!2326)))))

(assert (= (and d!1766550 c!979355) b!5589454))

(assert (= (and d!1766550 (not c!979355)) b!5589450))

(assert (= (and b!5589450 c!979357) b!5589455))

(assert (= (and b!5589450 (not c!979357)) b!5589452))

(assert (= (and b!5589452 res!2371543) b!5589448))

(assert (= (and b!5589452 c!979358) b!5589456))

(assert (= (and b!5589452 (not c!979358)) b!5589451))

(assert (= (and b!5589451 c!979356) b!5589449))

(assert (= (and b!5589451 (not c!979356)) b!5589457))

(assert (= (and b!5589457 c!979354) b!5589453))

(assert (= (and b!5589457 (not c!979354)) b!5589458))

(assert (= (or b!5589449 b!5589453) bm!418533))

(assert (= (or b!5589449 b!5589453) bm!418534))

(assert (= (or b!5589456 bm!418533) bm!418530))

(assert (= (or b!5589456 bm!418534) bm!418532))

(assert (= (or b!5589455 b!5589456) bm!418535))

(assert (= (or b!5589455 bm!418532) bm!418531))

(declare-fun m!6569688 () Bool)

(assert (=> bm!418535 m!6569688))

(declare-fun m!6569690 () Bool)

(assert (=> b!5589448 m!6569690))

(declare-fun m!6569692 () Bool)

(assert (=> b!5589454 m!6569692))

(declare-fun m!6569694 () Bool)

(assert (=> bm!418530 m!6569694))

(declare-fun m!6569696 () Bool)

(assert (=> bm!418531 m!6569696))

(assert (=> bm!418496 d!1766550))

(declare-fun d!1766554 () Bool)

(declare-fun res!2371549 () Bool)

(declare-fun e!3448408 () Bool)

(assert (=> d!1766554 (=> res!2371549 e!3448408)))

(assert (=> d!1766554 (= res!2371549 ((_ is Nil!62907) lt!2255250))))

(assert (=> d!1766554 (= (forall!14743 lt!2255250 lambda!299926) e!3448408)))

(declare-fun b!5589474 () Bool)

(declare-fun e!3448409 () Bool)

(assert (=> b!5589474 (= e!3448408 e!3448409)))

(declare-fun res!2371550 () Bool)

(assert (=> b!5589474 (=> (not res!2371550) (not e!3448409))))

(declare-fun dynLambda!24602 (Int Regex!15577) Bool)

(assert (=> b!5589474 (= res!2371550 (dynLambda!24602 lambda!299926 (h!69355 lt!2255250)))))

(declare-fun b!5589475 () Bool)

(assert (=> b!5589475 (= e!3448409 (forall!14743 (t!376307 lt!2255250) lambda!299926))))

(assert (= (and d!1766554 (not res!2371549)) b!5589474))

(assert (= (and b!5589474 res!2371550) b!5589475))

(declare-fun b_lambda!211789 () Bool)

(assert (=> (not b_lambda!211789) (not b!5589474)))

(declare-fun m!6569702 () Bool)

(assert (=> b!5589474 m!6569702))

(declare-fun m!6569704 () Bool)

(assert (=> b!5589475 m!6569704))

(assert (=> d!1766348 d!1766554))

(declare-fun b!5589476 () Bool)

(declare-fun res!2371554 () Bool)

(declare-fun e!3448415 () Bool)

(assert (=> b!5589476 (=> (not res!2371554) (not e!3448415))))

(declare-fun call!418547 () Bool)

(assert (=> b!5589476 (= res!2371554 call!418547)))

(declare-fun e!3448414 () Bool)

(assert (=> b!5589476 (= e!3448414 e!3448415)))

(declare-fun b!5589477 () Bool)

(declare-fun call!418549 () Bool)

(assert (=> b!5589477 (= e!3448415 call!418549)))

(declare-fun d!1766556 () Bool)

(declare-fun res!2371552 () Bool)

(declare-fun e!3448412 () Bool)

(assert (=> d!1766556 (=> res!2371552 e!3448412)))

(assert (=> d!1766556 (= res!2371552 ((_ is ElementMatch!15577) (ite c!979181 (reg!15906 r!7292) (ite c!979182 (regTwo!31667 r!7292) (regTwo!31666 r!7292)))))))

(assert (=> d!1766556 (= (validRegex!7313 (ite c!979181 (reg!15906 r!7292) (ite c!979182 (regTwo!31667 r!7292) (regTwo!31666 r!7292)))) e!3448412)))

(declare-fun bm!418542 () Bool)

(declare-fun call!418548 () Bool)

(assert (=> bm!418542 (= call!418549 call!418548)))

(declare-fun b!5589478 () Bool)

(declare-fun e!3448416 () Bool)

(assert (=> b!5589478 (= e!3448412 e!3448416)))

(declare-fun c!979364 () Bool)

(assert (=> b!5589478 (= c!979364 ((_ is Star!15577) (ite c!979181 (reg!15906 r!7292) (ite c!979182 (regTwo!31667 r!7292) (regTwo!31666 r!7292)))))))

(declare-fun b!5589479 () Bool)

(declare-fun e!3448413 () Bool)

(assert (=> b!5589479 (= e!3448413 call!418548)))

(declare-fun c!979365 () Bool)

(declare-fun bm!418543 () Bool)

(assert (=> bm!418543 (= call!418547 (validRegex!7313 (ite c!979365 (regOne!31667 (ite c!979181 (reg!15906 r!7292) (ite c!979182 (regTwo!31667 r!7292) (regTwo!31666 r!7292)))) (regOne!31666 (ite c!979181 (reg!15906 r!7292) (ite c!979182 (regTwo!31667 r!7292) (regTwo!31666 r!7292)))))))))

(declare-fun b!5589480 () Bool)

(declare-fun res!2371551 () Bool)

(declare-fun e!3448410 () Bool)

(assert (=> b!5589480 (=> res!2371551 e!3448410)))

(assert (=> b!5589480 (= res!2371551 (not ((_ is Concat!24422) (ite c!979181 (reg!15906 r!7292) (ite c!979182 (regTwo!31667 r!7292) (regTwo!31666 r!7292))))))))

(assert (=> b!5589480 (= e!3448414 e!3448410)))

(declare-fun b!5589481 () Bool)

(assert (=> b!5589481 (= e!3448416 e!3448413)))

(declare-fun res!2371555 () Bool)

(assert (=> b!5589481 (= res!2371555 (not (nullable!5609 (reg!15906 (ite c!979181 (reg!15906 r!7292) (ite c!979182 (regTwo!31667 r!7292) (regTwo!31666 r!7292)))))))))

(assert (=> b!5589481 (=> (not res!2371555) (not e!3448413))))

(declare-fun b!5589482 () Bool)

(declare-fun e!3448411 () Bool)

(assert (=> b!5589482 (= e!3448410 e!3448411)))

(declare-fun res!2371553 () Bool)

(assert (=> b!5589482 (=> (not res!2371553) (not e!3448411))))

(assert (=> b!5589482 (= res!2371553 call!418547)))

(declare-fun bm!418544 () Bool)

(assert (=> bm!418544 (= call!418548 (validRegex!7313 (ite c!979364 (reg!15906 (ite c!979181 (reg!15906 r!7292) (ite c!979182 (regTwo!31667 r!7292) (regTwo!31666 r!7292)))) (ite c!979365 (regTwo!31667 (ite c!979181 (reg!15906 r!7292) (ite c!979182 (regTwo!31667 r!7292) (regTwo!31666 r!7292)))) (regTwo!31666 (ite c!979181 (reg!15906 r!7292) (ite c!979182 (regTwo!31667 r!7292) (regTwo!31666 r!7292))))))))))

(declare-fun b!5589483 () Bool)

(assert (=> b!5589483 (= e!3448416 e!3448414)))

(assert (=> b!5589483 (= c!979365 ((_ is Union!15577) (ite c!979181 (reg!15906 r!7292) (ite c!979182 (regTwo!31667 r!7292) (regTwo!31666 r!7292)))))))

(declare-fun b!5589484 () Bool)

(assert (=> b!5589484 (= e!3448411 call!418549)))

(assert (= (and d!1766556 (not res!2371552)) b!5589478))

(assert (= (and b!5589478 c!979364) b!5589481))

(assert (= (and b!5589478 (not c!979364)) b!5589483))

(assert (= (and b!5589481 res!2371555) b!5589479))

(assert (= (and b!5589483 c!979365) b!5589476))

(assert (= (and b!5589483 (not c!979365)) b!5589480))

(assert (= (and b!5589476 res!2371554) b!5589477))

(assert (= (and b!5589480 (not res!2371551)) b!5589482))

(assert (= (and b!5589482 res!2371553) b!5589484))

(assert (= (or b!5589477 b!5589484) bm!418542))

(assert (= (or b!5589476 b!5589482) bm!418543))

(assert (= (or b!5589479 bm!418542) bm!418544))

(declare-fun m!6569712 () Bool)

(assert (=> bm!418543 m!6569712))

(declare-fun m!6569714 () Bool)

(assert (=> b!5589481 m!6569714))

(declare-fun m!6569716 () Bool)

(assert (=> bm!418544 m!6569716))

(assert (=> bm!418432 d!1766556))

(declare-fun d!1766560 () Bool)

(declare-fun res!2371560 () Bool)

(declare-fun e!3448422 () Bool)

(assert (=> d!1766560 (=> res!2371560 e!3448422)))

(assert (=> d!1766560 (= res!2371560 ((_ is Nil!62908) lt!2255287))))

(assert (=> d!1766560 (= (noDuplicate!1552 lt!2255287) e!3448422)))

(declare-fun b!5589491 () Bool)

(declare-fun e!3448423 () Bool)

(assert (=> b!5589491 (= e!3448422 e!3448423)))

(declare-fun res!2371561 () Bool)

(assert (=> b!5589491 (=> (not res!2371561) (not e!3448423))))

(declare-fun contains!19809 (List!63032 Context!9922) Bool)

(assert (=> b!5589491 (= res!2371561 (not (contains!19809 (t!376308 lt!2255287) (h!69356 lt!2255287))))))

(declare-fun b!5589492 () Bool)

(assert (=> b!5589492 (= e!3448423 (noDuplicate!1552 (t!376308 lt!2255287)))))

(assert (= (and d!1766560 (not res!2371560)) b!5589491))

(assert (= (and b!5589491 res!2371561) b!5589492))

(declare-fun m!6569726 () Bool)

(assert (=> b!5589491 m!6569726))

(declare-fun m!6569728 () Bool)

(assert (=> b!5589492 m!6569728))

(assert (=> d!1766416 d!1766560))

(declare-fun d!1766566 () Bool)

(declare-fun e!3448430 () Bool)

(assert (=> d!1766566 e!3448430))

(declare-fun res!2371567 () Bool)

(assert (=> d!1766566 (=> (not res!2371567) (not e!3448430))))

(declare-fun res!2371566 () List!63032)

(assert (=> d!1766566 (= res!2371567 (noDuplicate!1552 res!2371566))))

(declare-fun e!3448431 () Bool)

(assert (=> d!1766566 e!3448431))

(assert (=> d!1766566 (= (choose!42382 z!1189) res!2371566)))

(declare-fun b!5589500 () Bool)

(declare-fun e!3448432 () Bool)

(declare-fun tp!1545955 () Bool)

(assert (=> b!5589500 (= e!3448432 tp!1545955)))

(declare-fun tp!1545954 () Bool)

(declare-fun b!5589499 () Bool)

(assert (=> b!5589499 (= e!3448431 (and (inv!82189 (h!69356 res!2371566)) e!3448432 tp!1545954))))

(declare-fun b!5589501 () Bool)

(assert (=> b!5589501 (= e!3448430 (= (content!11347 res!2371566) z!1189))))

(assert (= b!5589499 b!5589500))

(assert (= (and d!1766566 ((_ is Cons!62908) res!2371566)) b!5589499))

(assert (= (and d!1766566 res!2371567) b!5589501))

(declare-fun m!6569732 () Bool)

(assert (=> d!1766566 m!6569732))

(declare-fun m!6569734 () Bool)

(assert (=> b!5589499 m!6569734))

(declare-fun m!6569736 () Bool)

(assert (=> b!5589501 m!6569736))

(assert (=> d!1766416 d!1766566))

(declare-fun d!1766570 () Bool)

(assert (=> d!1766570 (= (nullable!5609 (h!69355 (exprs!5461 lt!2255209))) (nullableFct!1718 (h!69355 (exprs!5461 lt!2255209))))))

(declare-fun bs!1292406 () Bool)

(assert (= bs!1292406 d!1766570))

(declare-fun m!6569738 () Bool)

(assert (=> bs!1292406 m!6569738))

(assert (=> b!5589271 d!1766570))

(declare-fun d!1766572 () Bool)

(assert (=> d!1766572 (= (isEmpty!34725 (t!376306 s!2326)) ((_ is Nil!62906) (t!376306 s!2326)))))

(assert (=> d!1766356 d!1766572))

(declare-fun d!1766574 () Bool)

(assert (=> d!1766574 (= (nullable!5609 (h!69355 (exprs!5461 lt!2255204))) (nullableFct!1718 (h!69355 (exprs!5461 lt!2255204))))))

(declare-fun bs!1292407 () Bool)

(assert (= bs!1292407 d!1766574))

(declare-fun m!6569740 () Bool)

(assert (=> bs!1292407 m!6569740))

(assert (=> b!5589276 d!1766574))

(assert (=> b!5589224 d!1766432))

(declare-fun d!1766576 () Bool)

(assert (=> d!1766576 (= (isDefined!12289 lt!2255297) (not (isEmpty!34727 lt!2255297)))))

(declare-fun bs!1292408 () Bool)

(assert (= bs!1292408 d!1766576))

(declare-fun m!6569742 () Bool)

(assert (=> bs!1292408 m!6569742))

(assert (=> d!1766444 d!1766576))

(declare-fun b!5589506 () Bool)

(declare-fun res!2371578 () Bool)

(declare-fun e!3448443 () Bool)

(assert (=> b!5589506 (=> (not res!2371578) (not e!3448443))))

(assert (=> b!5589506 (= res!2371578 (isEmpty!34725 (tail!11018 Nil!62906)))))

(declare-fun b!5589507 () Bool)

(declare-fun e!3448440 () Bool)

(declare-fun e!3448437 () Bool)

(assert (=> b!5589507 (= e!3448440 e!3448437)))

(declare-fun c!979369 () Bool)

(assert (=> b!5589507 (= c!979369 ((_ is EmptyLang!15577) (regOne!31666 r!7292)))))

(declare-fun b!5589508 () Bool)

(declare-fun lt!2255311 () Bool)

(declare-fun call!418550 () Bool)

(assert (=> b!5589508 (= e!3448440 (= lt!2255311 call!418550))))

(declare-fun b!5589509 () Bool)

(declare-fun res!2371579 () Bool)

(declare-fun e!3448439 () Bool)

(assert (=> b!5589509 (=> res!2371579 e!3448439)))

(assert (=> b!5589509 (= res!2371579 (not ((_ is ElementMatch!15577) (regOne!31666 r!7292))))))

(assert (=> b!5589509 (= e!3448437 e!3448439)))

(declare-fun b!5589510 () Bool)

(declare-fun res!2371573 () Bool)

(assert (=> b!5589510 (=> res!2371573 e!3448439)))

(assert (=> b!5589510 (= res!2371573 e!3448443)))

(declare-fun res!2371576 () Bool)

(assert (=> b!5589510 (=> (not res!2371576) (not e!3448443))))

(assert (=> b!5589510 (= res!2371576 lt!2255311)))

(declare-fun b!5589511 () Bool)

(declare-fun e!3448438 () Bool)

(assert (=> b!5589511 (= e!3448438 (nullable!5609 (regOne!31666 r!7292)))))

(declare-fun b!5589512 () Bool)

(assert (=> b!5589512 (= e!3448438 (matchR!7762 (derivativeStep!4424 (regOne!31666 r!7292) (head!11923 Nil!62906)) (tail!11018 Nil!62906)))))

(declare-fun b!5589513 () Bool)

(assert (=> b!5589513 (= e!3448437 (not lt!2255311))))

(declare-fun bm!418545 () Bool)

(assert (=> bm!418545 (= call!418550 (isEmpty!34725 Nil!62906))))

(declare-fun d!1766578 () Bool)

(assert (=> d!1766578 e!3448440))

(declare-fun c!979368 () Bool)

(assert (=> d!1766578 (= c!979368 ((_ is EmptyExpr!15577) (regOne!31666 r!7292)))))

(assert (=> d!1766578 (= lt!2255311 e!3448438)))

(declare-fun c!979367 () Bool)

(assert (=> d!1766578 (= c!979367 (isEmpty!34725 Nil!62906))))

(assert (=> d!1766578 (validRegex!7313 (regOne!31666 r!7292))))

(assert (=> d!1766578 (= (matchR!7762 (regOne!31666 r!7292) Nil!62906) lt!2255311)))

(declare-fun b!5589514 () Bool)

(declare-fun e!3448441 () Bool)

(assert (=> b!5589514 (= e!3448439 e!3448441)))

(declare-fun res!2371574 () Bool)

(assert (=> b!5589514 (=> (not res!2371574) (not e!3448441))))

(assert (=> b!5589514 (= res!2371574 (not lt!2255311))))

(declare-fun b!5589515 () Bool)

(declare-fun e!3448442 () Bool)

(assert (=> b!5589515 (= e!3448441 e!3448442)))

(declare-fun res!2371575 () Bool)

(assert (=> b!5589515 (=> res!2371575 e!3448442)))

(assert (=> b!5589515 (= res!2371575 call!418550)))

(declare-fun b!5589516 () Bool)

(declare-fun res!2371572 () Bool)

(assert (=> b!5589516 (=> (not res!2371572) (not e!3448443))))

(assert (=> b!5589516 (= res!2371572 (not call!418550))))

(declare-fun b!5589517 () Bool)

(declare-fun res!2371577 () Bool)

(assert (=> b!5589517 (=> res!2371577 e!3448442)))

(assert (=> b!5589517 (= res!2371577 (not (isEmpty!34725 (tail!11018 Nil!62906))))))

(declare-fun b!5589518 () Bool)

(assert (=> b!5589518 (= e!3448443 (= (head!11923 Nil!62906) (c!979094 (regOne!31666 r!7292))))))

(declare-fun b!5589519 () Bool)

(assert (=> b!5589519 (= e!3448442 (not (= (head!11923 Nil!62906) (c!979094 (regOne!31666 r!7292)))))))

(assert (= (and d!1766578 c!979367) b!5589511))

(assert (= (and d!1766578 (not c!979367)) b!5589512))

(assert (= (and d!1766578 c!979368) b!5589508))

(assert (= (and d!1766578 (not c!979368)) b!5589507))

(assert (= (and b!5589507 c!979369) b!5589513))

(assert (= (and b!5589507 (not c!979369)) b!5589509))

(assert (= (and b!5589509 (not res!2371579)) b!5589510))

(assert (= (and b!5589510 res!2371576) b!5589516))

(assert (= (and b!5589516 res!2371572) b!5589506))

(assert (= (and b!5589506 res!2371578) b!5589518))

(assert (= (and b!5589510 (not res!2371573)) b!5589514))

(assert (= (and b!5589514 res!2371574) b!5589515))

(assert (= (and b!5589515 (not res!2371575)) b!5589517))

(assert (= (and b!5589517 (not res!2371577)) b!5589519))

(assert (= (or b!5589508 b!5589515 b!5589516) bm!418545))

(declare-fun m!6569744 () Bool)

(assert (=> b!5589518 m!6569744))

(assert (=> b!5589511 m!6568984))

(assert (=> b!5589519 m!6569744))

(declare-fun m!6569746 () Bool)

(assert (=> bm!418545 m!6569746))

(assert (=> b!5589512 m!6569744))

(assert (=> b!5589512 m!6569744))

(declare-fun m!6569748 () Bool)

(assert (=> b!5589512 m!6569748))

(declare-fun m!6569750 () Bool)

(assert (=> b!5589512 m!6569750))

(assert (=> b!5589512 m!6569748))

(assert (=> b!5589512 m!6569750))

(declare-fun m!6569752 () Bool)

(assert (=> b!5589512 m!6569752))

(assert (=> d!1766578 m!6569746))

(assert (=> d!1766578 m!6569496))

(assert (=> b!5589506 m!6569750))

(assert (=> b!5589506 m!6569750))

(declare-fun m!6569754 () Bool)

(assert (=> b!5589506 m!6569754))

(assert (=> b!5589517 m!6569750))

(assert (=> b!5589517 m!6569750))

(assert (=> b!5589517 m!6569754))

(assert (=> d!1766444 d!1766578))

(declare-fun b!5589520 () Bool)

(declare-fun res!2371583 () Bool)

(declare-fun e!3448449 () Bool)

(assert (=> b!5589520 (=> (not res!2371583) (not e!3448449))))

(declare-fun call!418551 () Bool)

(assert (=> b!5589520 (= res!2371583 call!418551)))

(declare-fun e!3448448 () Bool)

(assert (=> b!5589520 (= e!3448448 e!3448449)))

(declare-fun b!5589521 () Bool)

(declare-fun call!418553 () Bool)

(assert (=> b!5589521 (= e!3448449 call!418553)))

(declare-fun d!1766580 () Bool)

(declare-fun res!2371581 () Bool)

(declare-fun e!3448446 () Bool)

(assert (=> d!1766580 (=> res!2371581 e!3448446)))

(assert (=> d!1766580 (= res!2371581 ((_ is ElementMatch!15577) (regOne!31666 r!7292)))))

(assert (=> d!1766580 (= (validRegex!7313 (regOne!31666 r!7292)) e!3448446)))

(declare-fun bm!418546 () Bool)

(declare-fun call!418552 () Bool)

(assert (=> bm!418546 (= call!418553 call!418552)))

(declare-fun b!5589522 () Bool)

(declare-fun e!3448450 () Bool)

(assert (=> b!5589522 (= e!3448446 e!3448450)))

(declare-fun c!979370 () Bool)

(assert (=> b!5589522 (= c!979370 ((_ is Star!15577) (regOne!31666 r!7292)))))

(declare-fun b!5589523 () Bool)

(declare-fun e!3448447 () Bool)

(assert (=> b!5589523 (= e!3448447 call!418552)))

(declare-fun bm!418547 () Bool)

(declare-fun c!979371 () Bool)

(assert (=> bm!418547 (= call!418551 (validRegex!7313 (ite c!979371 (regOne!31667 (regOne!31666 r!7292)) (regOne!31666 (regOne!31666 r!7292)))))))

(declare-fun b!5589524 () Bool)

(declare-fun res!2371580 () Bool)

(declare-fun e!3448444 () Bool)

(assert (=> b!5589524 (=> res!2371580 e!3448444)))

(assert (=> b!5589524 (= res!2371580 (not ((_ is Concat!24422) (regOne!31666 r!7292))))))

(assert (=> b!5589524 (= e!3448448 e!3448444)))

(declare-fun b!5589525 () Bool)

(assert (=> b!5589525 (= e!3448450 e!3448447)))

(declare-fun res!2371584 () Bool)

(assert (=> b!5589525 (= res!2371584 (not (nullable!5609 (reg!15906 (regOne!31666 r!7292)))))))

(assert (=> b!5589525 (=> (not res!2371584) (not e!3448447))))

(declare-fun b!5589526 () Bool)

(declare-fun e!3448445 () Bool)

(assert (=> b!5589526 (= e!3448444 e!3448445)))

(declare-fun res!2371582 () Bool)

(assert (=> b!5589526 (=> (not res!2371582) (not e!3448445))))

(assert (=> b!5589526 (= res!2371582 call!418551)))

(declare-fun bm!418548 () Bool)

(assert (=> bm!418548 (= call!418552 (validRegex!7313 (ite c!979370 (reg!15906 (regOne!31666 r!7292)) (ite c!979371 (regTwo!31667 (regOne!31666 r!7292)) (regTwo!31666 (regOne!31666 r!7292))))))))

(declare-fun b!5589527 () Bool)

(assert (=> b!5589527 (= e!3448450 e!3448448)))

(assert (=> b!5589527 (= c!979371 ((_ is Union!15577) (regOne!31666 r!7292)))))

(declare-fun b!5589528 () Bool)

(assert (=> b!5589528 (= e!3448445 call!418553)))

(assert (= (and d!1766580 (not res!2371581)) b!5589522))

(assert (= (and b!5589522 c!979370) b!5589525))

(assert (= (and b!5589522 (not c!979370)) b!5589527))

(assert (= (and b!5589525 res!2371584) b!5589523))

(assert (= (and b!5589527 c!979371) b!5589520))

(assert (= (and b!5589527 (not c!979371)) b!5589524))

(assert (= (and b!5589520 res!2371583) b!5589521))

(assert (= (and b!5589524 (not res!2371580)) b!5589526))

(assert (= (and b!5589526 res!2371582) b!5589528))

(assert (= (or b!5589521 b!5589528) bm!418546))

(assert (= (or b!5589520 b!5589526) bm!418547))

(assert (= (or b!5589523 bm!418546) bm!418548))

(declare-fun m!6569756 () Bool)

(assert (=> bm!418547 m!6569756))

(declare-fun m!6569758 () Bool)

(assert (=> b!5589525 m!6569758))

(declare-fun m!6569762 () Bool)

(assert (=> bm!418548 m!6569762))

(assert (=> d!1766444 d!1766580))

(declare-fun bs!1292409 () Bool)

(declare-fun d!1766582 () Bool)

(assert (= bs!1292409 (and d!1766582 d!1766340)))

(declare-fun lambda!299985 () Int)

(assert (=> bs!1292409 (= lambda!299985 lambda!299920)))

(declare-fun bs!1292410 () Bool)

(assert (= bs!1292410 (and d!1766582 d!1766382)))

(assert (=> bs!1292410 (= lambda!299985 lambda!299953)))

(declare-fun bs!1292411 () Bool)

(assert (= bs!1292411 (and d!1766582 d!1766352)))

(assert (=> bs!1292411 (= lambda!299985 lambda!299929)))

(declare-fun bs!1292412 () Bool)

(assert (= bs!1292412 (and d!1766582 d!1766412)))

(assert (=> bs!1292412 (= lambda!299985 lambda!299960)))

(declare-fun bs!1292413 () Bool)

(assert (= bs!1292413 (and d!1766582 d!1766348)))

(assert (=> bs!1292413 (= lambda!299985 lambda!299926)))

(declare-fun e!3448453 () Bool)

(assert (=> d!1766582 e!3448453))

(declare-fun res!2371587 () Bool)

(assert (=> d!1766582 (=> (not res!2371587) (not e!3448453))))

(declare-fun lt!2255312 () Regex!15577)

(assert (=> d!1766582 (= res!2371587 (validRegex!7313 lt!2255312))))

(declare-fun e!3448456 () Regex!15577)

(assert (=> d!1766582 (= lt!2255312 e!3448456)))

(declare-fun c!979372 () Bool)

(declare-fun e!3448455 () Bool)

(assert (=> d!1766582 (= c!979372 e!3448455)))

(declare-fun res!2371588 () Bool)

(assert (=> d!1766582 (=> (not res!2371588) (not e!3448455))))

(assert (=> d!1766582 (= res!2371588 ((_ is Cons!62907) (t!376307 (unfocusZipperList!1005 zl!343))))))

(assert (=> d!1766582 (forall!14743 (t!376307 (unfocusZipperList!1005 zl!343)) lambda!299985)))

(assert (=> d!1766582 (= (generalisedUnion!1440 (t!376307 (unfocusZipperList!1005 zl!343))) lt!2255312)))

(declare-fun b!5589531 () Bool)

(declare-fun e!3448458 () Bool)

(assert (=> b!5589531 (= e!3448458 (isUnion!570 lt!2255312))))

(declare-fun b!5589532 () Bool)

(assert (=> b!5589532 (= e!3448458 (= lt!2255312 (head!11924 (t!376307 (unfocusZipperList!1005 zl!343)))))))

(declare-fun b!5589533 () Bool)

(declare-fun e!3448457 () Regex!15577)

(assert (=> b!5589533 (= e!3448457 (Union!15577 (h!69355 (t!376307 (unfocusZipperList!1005 zl!343))) (generalisedUnion!1440 (t!376307 (t!376307 (unfocusZipperList!1005 zl!343))))))))

(declare-fun b!5589534 () Bool)

(assert (=> b!5589534 (= e!3448456 e!3448457)))

(declare-fun c!979375 () Bool)

(assert (=> b!5589534 (= c!979375 ((_ is Cons!62907) (t!376307 (unfocusZipperList!1005 zl!343))))))

(declare-fun b!5589535 () Bool)

(assert (=> b!5589535 (= e!3448456 (h!69355 (t!376307 (unfocusZipperList!1005 zl!343))))))

(declare-fun b!5589536 () Bool)

(declare-fun e!3448454 () Bool)

(assert (=> b!5589536 (= e!3448454 (isEmptyLang!1140 lt!2255312))))

(declare-fun b!5589537 () Bool)

(assert (=> b!5589537 (= e!3448453 e!3448454)))

(declare-fun c!979374 () Bool)

(assert (=> b!5589537 (= c!979374 (isEmpty!34723 (t!376307 (unfocusZipperList!1005 zl!343))))))

(declare-fun b!5589538 () Bool)

(assert (=> b!5589538 (= e!3448454 e!3448458)))

(declare-fun c!979373 () Bool)

(assert (=> b!5589538 (= c!979373 (isEmpty!34723 (tail!11019 (t!376307 (unfocusZipperList!1005 zl!343)))))))

(declare-fun b!5589539 () Bool)

(assert (=> b!5589539 (= e!3448457 EmptyLang!15577)))

(declare-fun b!5589540 () Bool)

(assert (=> b!5589540 (= e!3448455 (isEmpty!34723 (t!376307 (t!376307 (unfocusZipperList!1005 zl!343)))))))

(assert (= (and d!1766582 res!2371588) b!5589540))

(assert (= (and d!1766582 c!979372) b!5589535))

(assert (= (and d!1766582 (not c!979372)) b!5589534))

(assert (= (and b!5589534 c!979375) b!5589533))

(assert (= (and b!5589534 (not c!979375)) b!5589539))

(assert (= (and d!1766582 res!2371587) b!5589537))

(assert (= (and b!5589537 c!979374) b!5589536))

(assert (= (and b!5589537 (not c!979374)) b!5589538))

(assert (= (and b!5589538 c!979373) b!5589532))

(assert (= (and b!5589538 (not c!979373)) b!5589531))

(declare-fun m!6569766 () Bool)

(assert (=> b!5589533 m!6569766))

(assert (=> b!5589537 m!6569218))

(declare-fun m!6569768 () Bool)

(assert (=> b!5589532 m!6569768))

(declare-fun m!6569770 () Bool)

(assert (=> b!5589531 m!6569770))

(declare-fun m!6569772 () Bool)

(assert (=> b!5589540 m!6569772))

(declare-fun m!6569774 () Bool)

(assert (=> b!5589536 m!6569774))

(declare-fun m!6569776 () Bool)

(assert (=> b!5589538 m!6569776))

(assert (=> b!5589538 m!6569776))

(declare-fun m!6569778 () Bool)

(assert (=> b!5589538 m!6569778))

(declare-fun m!6569780 () Bool)

(assert (=> d!1766582 m!6569780))

(declare-fun m!6569782 () Bool)

(assert (=> d!1766582 m!6569782))

(assert (=> b!5588757 d!1766582))

(declare-fun d!1766586 () Bool)

(assert (=> d!1766586 (= (nullable!5609 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292)))) (nullableFct!1718 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292)))))))

(declare-fun bs!1292414 () Bool)

(assert (= bs!1292414 d!1766586))

(declare-fun m!6569784 () Bool)

(assert (=> bs!1292414 m!6569784))

(assert (=> b!5589080 d!1766586))

(declare-fun d!1766588 () Bool)

(assert (=> d!1766588 (= (Exists!2677 (ite c!979202 lambda!299947 lambda!299948)) (choose!42387 (ite c!979202 lambda!299947 lambda!299948)))))

(declare-fun bs!1292415 () Bool)

(assert (= bs!1292415 d!1766588))

(declare-fun m!6569786 () Bool)

(assert (=> bs!1292415 m!6569786))

(assert (=> bm!418437 d!1766588))

(assert (=> b!5588779 d!1766380))

(assert (=> d!1766338 d!1766572))

(declare-fun d!1766590 () Bool)

(declare-fun lambda!299988 () Int)

(declare-fun exists!2165 ((InoxSet Context!9922) Int) Bool)

(assert (=> d!1766590 (= (nullableZipper!1572 lt!2255213) (exists!2165 lt!2255213 lambda!299988))))

(declare-fun bs!1292416 () Bool)

(assert (= bs!1292416 d!1766590))

(declare-fun m!6569788 () Bool)

(assert (=> bs!1292416 m!6569788))

(assert (=> b!5588775 d!1766590))

(declare-fun d!1766592 () Bool)

(declare-fun c!979378 () Bool)

(assert (=> d!1766592 (= c!979378 (isEmpty!34725 (tail!11018 (t!376306 s!2326))))))

(declare-fun e!3448459 () Bool)

(assert (=> d!1766592 (= (matchZipper!1715 (derivationStepZipper!1676 ((_ map or) lt!2255192 lt!2255201) (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))) e!3448459)))

(declare-fun b!5589541 () Bool)

(assert (=> b!5589541 (= e!3448459 (nullableZipper!1572 (derivationStepZipper!1676 ((_ map or) lt!2255192 lt!2255201) (head!11923 (t!376306 s!2326)))))))

(declare-fun b!5589542 () Bool)

(assert (=> b!5589542 (= e!3448459 (matchZipper!1715 (derivationStepZipper!1676 (derivationStepZipper!1676 ((_ map or) lt!2255192 lt!2255201) (head!11923 (t!376306 s!2326))) (head!11923 (tail!11018 (t!376306 s!2326)))) (tail!11018 (tail!11018 (t!376306 s!2326)))))))

(assert (= (and d!1766592 c!979378) b!5589541))

(assert (= (and d!1766592 (not c!979378)) b!5589542))

(assert (=> d!1766592 m!6569172))

(assert (=> d!1766592 m!6569580))

(assert (=> b!5589541 m!6569178))

(declare-fun m!6569790 () Bool)

(assert (=> b!5589541 m!6569790))

(assert (=> b!5589542 m!6569172))

(assert (=> b!5589542 m!6569584))

(assert (=> b!5589542 m!6569178))

(assert (=> b!5589542 m!6569584))

(declare-fun m!6569792 () Bool)

(assert (=> b!5589542 m!6569792))

(assert (=> b!5589542 m!6569172))

(assert (=> b!5589542 m!6569588))

(assert (=> b!5589542 m!6569792))

(assert (=> b!5589542 m!6569588))

(declare-fun m!6569794 () Bool)

(assert (=> b!5589542 m!6569794))

(assert (=> b!5588725 d!1766592))

(declare-fun bs!1292418 () Bool)

(declare-fun d!1766596 () Bool)

(assert (= bs!1292418 (and d!1766596 b!5588545)))

(declare-fun lambda!299989 () Int)

(assert (=> bs!1292418 (= (= (head!11923 (t!376306 s!2326)) (h!69354 s!2326)) (= lambda!299989 lambda!299914))))

(declare-fun bs!1292419 () Bool)

(assert (= bs!1292419 (and d!1766596 d!1766498)))

(assert (=> bs!1292419 (= lambda!299989 lambda!299976)))

(declare-fun bs!1292420 () Bool)

(assert (= bs!1292420 (and d!1766596 d!1766512)))

(assert (=> bs!1292420 (= lambda!299989 lambda!299977)))

(assert (=> d!1766596 true))

(assert (=> d!1766596 (= (derivationStepZipper!1676 ((_ map or) lt!2255192 lt!2255201) (head!11923 (t!376306 s!2326))) (flatMap!1190 ((_ map or) lt!2255192 lt!2255201) lambda!299989))))

(declare-fun bs!1292421 () Bool)

(assert (= bs!1292421 d!1766596))

(declare-fun m!6569796 () Bool)

(assert (=> bs!1292421 m!6569796))

(assert (=> b!5588725 d!1766596))

(assert (=> b!5588725 d!1766506))

(assert (=> b!5588725 d!1766508))

(declare-fun d!1766598 () Bool)

(declare-fun c!979379 () Bool)

(assert (=> d!1766598 (= c!979379 (isEmpty!34725 (t!376306 s!2326)))))

(declare-fun e!3448460 () Bool)

(assert (=> d!1766598 (= (matchZipper!1715 ((_ map or) lt!2255199 lt!2255189) (t!376306 s!2326)) e!3448460)))

(declare-fun b!5589543 () Bool)

(assert (=> b!5589543 (= e!3448460 (nullableZipper!1572 ((_ map or) lt!2255199 lt!2255189)))))

(declare-fun b!5589544 () Bool)

(assert (=> b!5589544 (= e!3448460 (matchZipper!1715 (derivationStepZipper!1676 ((_ map or) lt!2255199 lt!2255189) (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))))))

(assert (= (and d!1766598 c!979379) b!5589543))

(assert (= (and d!1766598 (not c!979379)) b!5589544))

(assert (=> d!1766598 m!6569164))

(declare-fun m!6569798 () Bool)

(assert (=> b!5589543 m!6569798))

(assert (=> b!5589544 m!6569168))

(assert (=> b!5589544 m!6569168))

(declare-fun m!6569800 () Bool)

(assert (=> b!5589544 m!6569800))

(assert (=> b!5589544 m!6569172))

(assert (=> b!5589544 m!6569800))

(assert (=> b!5589544 m!6569172))

(declare-fun m!6569802 () Bool)

(assert (=> b!5589544 m!6569802))

(assert (=> d!1766358 d!1766598))

(assert (=> d!1766358 d!1766356))

(declare-fun d!1766600 () Bool)

(declare-fun e!3448463 () Bool)

(assert (=> d!1766600 (= (matchZipper!1715 ((_ map or) lt!2255199 lt!2255189) (t!376306 s!2326)) e!3448463)))

(declare-fun res!2371591 () Bool)

(assert (=> d!1766600 (=> res!2371591 e!3448463)))

(assert (=> d!1766600 (= res!2371591 (matchZipper!1715 lt!2255199 (t!376306 s!2326)))))

(assert (=> d!1766600 true))

(declare-fun _$48!1156 () Unit!155708)

(assert (=> d!1766600 (= (choose!42376 lt!2255199 lt!2255189 (t!376306 s!2326)) _$48!1156)))

(declare-fun b!5589547 () Bool)

(assert (=> b!5589547 (= e!3448463 (matchZipper!1715 lt!2255189 (t!376306 s!2326)))))

(assert (= (and d!1766600 (not res!2371591)) b!5589547))

(assert (=> d!1766600 m!6569252))

(assert (=> d!1766600 m!6568938))

(assert (=> b!5589547 m!6568934))

(assert (=> d!1766358 d!1766600))

(declare-fun d!1766602 () Bool)

(assert (=> d!1766602 (= (head!11924 (exprs!5461 (h!69356 zl!343))) (h!69355 (exprs!5461 (h!69356 zl!343))))))

(assert (=> b!5589018 d!1766602))

(declare-fun b!5589550 () Bool)

(declare-fun res!2371600 () Bool)

(declare-fun e!3448472 () Bool)

(assert (=> b!5589550 (=> (not res!2371600) (not e!3448472))))

(assert (=> b!5589550 (= res!2371600 (isEmpty!34725 (tail!11018 (_1!35977 (get!21662 lt!2255297)))))))

(declare-fun b!5589551 () Bool)

(declare-fun e!3448469 () Bool)

(declare-fun e!3448466 () Bool)

(assert (=> b!5589551 (= e!3448469 e!3448466)))

(declare-fun c!979382 () Bool)

(assert (=> b!5589551 (= c!979382 ((_ is EmptyLang!15577) (regOne!31666 r!7292)))))

(declare-fun b!5589552 () Bool)

(declare-fun lt!2255313 () Bool)

(declare-fun call!418554 () Bool)

(assert (=> b!5589552 (= e!3448469 (= lt!2255313 call!418554))))

(declare-fun b!5589553 () Bool)

(declare-fun res!2371601 () Bool)

(declare-fun e!3448468 () Bool)

(assert (=> b!5589553 (=> res!2371601 e!3448468)))

(assert (=> b!5589553 (= res!2371601 (not ((_ is ElementMatch!15577) (regOne!31666 r!7292))))))

(assert (=> b!5589553 (= e!3448466 e!3448468)))

(declare-fun b!5589554 () Bool)

(declare-fun res!2371595 () Bool)

(assert (=> b!5589554 (=> res!2371595 e!3448468)))

(assert (=> b!5589554 (= res!2371595 e!3448472)))

(declare-fun res!2371598 () Bool)

(assert (=> b!5589554 (=> (not res!2371598) (not e!3448472))))

(assert (=> b!5589554 (= res!2371598 lt!2255313)))

(declare-fun b!5589555 () Bool)

(declare-fun e!3448467 () Bool)

(assert (=> b!5589555 (= e!3448467 (nullable!5609 (regOne!31666 r!7292)))))

(declare-fun b!5589556 () Bool)

(assert (=> b!5589556 (= e!3448467 (matchR!7762 (derivativeStep!4424 (regOne!31666 r!7292) (head!11923 (_1!35977 (get!21662 lt!2255297)))) (tail!11018 (_1!35977 (get!21662 lt!2255297)))))))

(declare-fun b!5589557 () Bool)

(assert (=> b!5589557 (= e!3448466 (not lt!2255313))))

(declare-fun bm!418549 () Bool)

(assert (=> bm!418549 (= call!418554 (isEmpty!34725 (_1!35977 (get!21662 lt!2255297))))))

(declare-fun d!1766604 () Bool)

(assert (=> d!1766604 e!3448469))

(declare-fun c!979381 () Bool)

(assert (=> d!1766604 (= c!979381 ((_ is EmptyExpr!15577) (regOne!31666 r!7292)))))

(assert (=> d!1766604 (= lt!2255313 e!3448467)))

(declare-fun c!979380 () Bool)

(assert (=> d!1766604 (= c!979380 (isEmpty!34725 (_1!35977 (get!21662 lt!2255297))))))

(assert (=> d!1766604 (validRegex!7313 (regOne!31666 r!7292))))

(assert (=> d!1766604 (= (matchR!7762 (regOne!31666 r!7292) (_1!35977 (get!21662 lt!2255297))) lt!2255313)))

(declare-fun b!5589558 () Bool)

(declare-fun e!3448470 () Bool)

(assert (=> b!5589558 (= e!3448468 e!3448470)))

(declare-fun res!2371596 () Bool)

(assert (=> b!5589558 (=> (not res!2371596) (not e!3448470))))

(assert (=> b!5589558 (= res!2371596 (not lt!2255313))))

(declare-fun b!5589559 () Bool)

(declare-fun e!3448471 () Bool)

(assert (=> b!5589559 (= e!3448470 e!3448471)))

(declare-fun res!2371597 () Bool)

(assert (=> b!5589559 (=> res!2371597 e!3448471)))

(assert (=> b!5589559 (= res!2371597 call!418554)))

(declare-fun b!5589560 () Bool)

(declare-fun res!2371594 () Bool)

(assert (=> b!5589560 (=> (not res!2371594) (not e!3448472))))

(assert (=> b!5589560 (= res!2371594 (not call!418554))))

(declare-fun b!5589561 () Bool)

(declare-fun res!2371599 () Bool)

(assert (=> b!5589561 (=> res!2371599 e!3448471)))

(assert (=> b!5589561 (= res!2371599 (not (isEmpty!34725 (tail!11018 (_1!35977 (get!21662 lt!2255297))))))))

(declare-fun b!5589562 () Bool)

(assert (=> b!5589562 (= e!3448472 (= (head!11923 (_1!35977 (get!21662 lt!2255297))) (c!979094 (regOne!31666 r!7292))))))

(declare-fun b!5589563 () Bool)

(assert (=> b!5589563 (= e!3448471 (not (= (head!11923 (_1!35977 (get!21662 lt!2255297))) (c!979094 (regOne!31666 r!7292)))))))

(assert (= (and d!1766604 c!979380) b!5589555))

(assert (= (and d!1766604 (not c!979380)) b!5589556))

(assert (= (and d!1766604 c!979381) b!5589552))

(assert (= (and d!1766604 (not c!979381)) b!5589551))

(assert (= (and b!5589551 c!979382) b!5589557))

(assert (= (and b!5589551 (not c!979382)) b!5589553))

(assert (= (and b!5589553 (not res!2371601)) b!5589554))

(assert (= (and b!5589554 res!2371598) b!5589560))

(assert (= (and b!5589560 res!2371594) b!5589550))

(assert (= (and b!5589550 res!2371600) b!5589562))

(assert (= (and b!5589554 (not res!2371595)) b!5589558))

(assert (= (and b!5589558 res!2371596) b!5589559))

(assert (= (and b!5589559 (not res!2371597)) b!5589561))

(assert (= (and b!5589561 (not res!2371599)) b!5589563))

(assert (= (or b!5589552 b!5589559 b!5589560) bm!418549))

(declare-fun m!6569804 () Bool)

(assert (=> b!5589562 m!6569804))

(assert (=> b!5589555 m!6568984))

(assert (=> b!5589563 m!6569804))

(declare-fun m!6569806 () Bool)

(assert (=> bm!418549 m!6569806))

(assert (=> b!5589556 m!6569804))

(assert (=> b!5589556 m!6569804))

(declare-fun m!6569808 () Bool)

(assert (=> b!5589556 m!6569808))

(declare-fun m!6569810 () Bool)

(assert (=> b!5589556 m!6569810))

(assert (=> b!5589556 m!6569808))

(assert (=> b!5589556 m!6569810))

(declare-fun m!6569812 () Bool)

(assert (=> b!5589556 m!6569812))

(assert (=> d!1766604 m!6569806))

(assert (=> d!1766604 m!6569496))

(assert (=> b!5589550 m!6569810))

(assert (=> b!5589550 m!6569810))

(declare-fun m!6569814 () Bool)

(assert (=> b!5589550 m!6569814))

(assert (=> b!5589561 m!6569810))

(assert (=> b!5589561 m!6569810))

(assert (=> b!5589561 m!6569814))

(assert (=> b!5589247 d!1766604))

(declare-fun d!1766608 () Bool)

(assert (=> d!1766608 (= (get!21662 lt!2255297) (v!51626 lt!2255297))))

(assert (=> b!5589247 d!1766608))

(declare-fun d!1766610 () Bool)

(assert (=> d!1766610 (= (isEmptyExpr!1131 lt!2255269) ((_ is EmptyExpr!15577) lt!2255269))))

(assert (=> b!5589011 d!1766610))

(declare-fun d!1766612 () Bool)

(assert (=> d!1766612 (= (nullable!5609 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343))))) (nullableFct!1718 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343))))))))

(declare-fun bs!1292422 () Bool)

(assert (= bs!1292422 d!1766612))

(declare-fun m!6569816 () Bool)

(assert (=> bs!1292422 m!6569816))

(assert (=> b!5589210 d!1766612))

(declare-fun b!5589565 () Bool)

(declare-fun call!418555 () (InoxSet Context!9922))

(declare-fun e!3448474 () (InoxSet Context!9922))

(assert (=> b!5589565 (= e!3448474 ((_ map or) call!418555 (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255202)))))) (h!69354 s!2326))))))

(declare-fun b!5589566 () Bool)

(declare-fun e!3448475 () (InoxSet Context!9922))

(assert (=> b!5589566 (= e!3448475 call!418555)))

(declare-fun b!5589567 () Bool)

(assert (=> b!5589567 (= e!3448474 e!3448475)))

(declare-fun c!979383 () Bool)

(assert (=> b!5589567 (= c!979383 ((_ is Cons!62907) (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255202))))))))

(declare-fun bm!418550 () Bool)

(assert (=> bm!418550 (= call!418555 (derivationStepZipperDown!919 (h!69355 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255202))))) (Context!9923 (t!376307 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255202)))))) (h!69354 s!2326)))))

(declare-fun b!5589568 () Bool)

(declare-fun e!3448476 () Bool)

(assert (=> b!5589568 (= e!3448476 (nullable!5609 (h!69355 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255202)))))))))

(declare-fun d!1766614 () Bool)

(declare-fun c!979384 () Bool)

(assert (=> d!1766614 (= c!979384 e!3448476)))

(declare-fun res!2371603 () Bool)

(assert (=> d!1766614 (=> (not res!2371603) (not e!3448476))))

(assert (=> d!1766614 (= res!2371603 ((_ is Cons!62907) (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255202))))))))

(assert (=> d!1766614 (= (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 lt!2255202))) (h!69354 s!2326)) e!3448474)))

(declare-fun b!5589569 () Bool)

(assert (=> b!5589569 (= e!3448475 ((as const (Array Context!9922 Bool)) false))))

(assert (= (and d!1766614 res!2371603) b!5589568))

(assert (= (and d!1766614 c!979384) b!5589565))

(assert (= (and d!1766614 (not c!979384)) b!5589567))

(assert (= (and b!5589567 c!979383) b!5589566))

(assert (= (and b!5589567 (not c!979383)) b!5589569))

(assert (= (or b!5589565 b!5589566) bm!418550))

(declare-fun m!6569818 () Bool)

(assert (=> b!5589565 m!6569818))

(declare-fun m!6569820 () Bool)

(assert (=> bm!418550 m!6569820))

(declare-fun m!6569822 () Bool)

(assert (=> b!5589568 m!6569822))

(assert (=> b!5589200 d!1766614))

(assert (=> bm!418447 d!1766528))

(declare-fun d!1766616 () Bool)

(assert (=> d!1766616 (= (nullable!5609 (h!69355 (exprs!5461 lt!2255202))) (nullableFct!1718 (h!69355 (exprs!5461 lt!2255202))))))

(declare-fun bs!1292423 () Bool)

(assert (= bs!1292423 d!1766616))

(declare-fun m!6569824 () Bool)

(assert (=> bs!1292423 m!6569824))

(assert (=> b!5589203 d!1766616))

(declare-fun b!5589570 () Bool)

(declare-fun e!3448478 () Bool)

(assert (=> b!5589570 (= e!3448478 (nullable!5609 (regOne!31666 (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292)))))))))))

(declare-fun b!5589571 () Bool)

(declare-fun e!3448482 () (InoxSet Context!9922))

(declare-fun call!418559 () (InoxSet Context!9922))

(assert (=> b!5589571 (= e!3448482 call!418559)))

(declare-fun c!979389 () Bool)

(declare-fun c!979387 () Bool)

(declare-fun call!418561 () List!63031)

(declare-fun bm!418551 () Bool)

(assert (=> bm!418551 (= call!418561 ($colon$colon!1640 (exprs!5461 (ite (or c!979273 c!979274) lt!2255202 (Context!9923 call!418474))) (ite (or c!979389 c!979387) (regTwo!31666 (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292))))))) (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292)))))))))))

(declare-fun call!418557 () (InoxSet Context!9922))

(declare-fun bm!418552 () Bool)

(declare-fun call!418556 () List!63031)

(declare-fun c!979388 () Bool)

(assert (=> bm!418552 (= call!418557 (derivationStepZipperDown!919 (ite c!979388 (regOne!31667 (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292))))))) (ite c!979389 (regTwo!31666 (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292))))))) (ite c!979387 (regOne!31666 (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292))))))) (reg!15906 (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292)))))))))) (ite (or c!979388 c!979389) (ite (or c!979273 c!979274) lt!2255202 (Context!9923 call!418474)) (Context!9923 call!418556)) (h!69354 s!2326)))))

(declare-fun b!5589572 () Bool)

(declare-fun e!3448481 () (InoxSet Context!9922))

(declare-fun e!3448480 () (InoxSet Context!9922))

(assert (=> b!5589572 (= e!3448481 e!3448480)))

(assert (=> b!5589572 (= c!979388 ((_ is Union!15577) (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292))))))))))

(declare-fun c!979386 () Bool)

(declare-fun d!1766618 () Bool)

(assert (=> d!1766618 (= c!979386 (and ((_ is ElementMatch!15577) (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292))))))) (= (c!979094 (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292))))))) (h!69354 s!2326))))))

(assert (=> d!1766618 (= (derivationStepZipperDown!919 (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292)))))) (ite (or c!979273 c!979274) lt!2255202 (Context!9923 call!418474)) (h!69354 s!2326)) e!3448481)))

(declare-fun bm!418553 () Bool)

(declare-fun call!418558 () (InoxSet Context!9922))

(assert (=> bm!418553 (= call!418558 call!418557)))

(declare-fun b!5589573 () Bool)

(declare-fun e!3448477 () (InoxSet Context!9922))

(assert (=> b!5589573 (= e!3448477 e!3448482)))

(assert (=> b!5589573 (= c!979387 ((_ is Concat!24422) (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292))))))))))

(declare-fun b!5589574 () Bool)

(assert (=> b!5589574 (= c!979389 e!3448478)))

(declare-fun res!2371604 () Bool)

(assert (=> b!5589574 (=> (not res!2371604) (not e!3448478))))

(assert (=> b!5589574 (= res!2371604 ((_ is Concat!24422) (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292))))))))))

(assert (=> b!5589574 (= e!3448480 e!3448477)))

(declare-fun b!5589575 () Bool)

(declare-fun e!3448479 () (InoxSet Context!9922))

(assert (=> b!5589575 (= e!3448479 call!418559)))

(declare-fun bm!418554 () Bool)

(assert (=> bm!418554 (= call!418556 call!418561)))

(declare-fun b!5589576 () Bool)

(assert (=> b!5589576 (= e!3448481 (store ((as const (Array Context!9922 Bool)) false) (ite (or c!979273 c!979274) lt!2255202 (Context!9923 call!418474)) true))))

(declare-fun b!5589577 () Bool)

(declare-fun call!418560 () (InoxSet Context!9922))

(assert (=> b!5589577 (= e!3448480 ((_ map or) call!418557 call!418560))))

(declare-fun b!5589578 () Bool)

(assert (=> b!5589578 (= e!3448477 ((_ map or) call!418560 call!418558))))

(declare-fun b!5589579 () Bool)

(declare-fun c!979385 () Bool)

(assert (=> b!5589579 (= c!979385 ((_ is Star!15577) (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292))))))))))

(assert (=> b!5589579 (= e!3448482 e!3448479)))

(declare-fun b!5589580 () Bool)

(assert (=> b!5589580 (= e!3448479 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418555 () Bool)

(assert (=> bm!418555 (= call!418559 call!418558)))

(declare-fun bm!418556 () Bool)

(assert (=> bm!418556 (= call!418560 (derivationStepZipperDown!919 (ite c!979388 (regTwo!31667 (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292))))))) (regOne!31666 (ite c!979273 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (ite c!979274 (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))) (ite c!979272 (regOne!31666 (regOne!31667 (regOne!31666 r!7292))) (reg!15906 (regOne!31667 (regOne!31666 r!7292)))))))) (ite c!979388 (ite (or c!979273 c!979274) lt!2255202 (Context!9923 call!418474)) (Context!9923 call!418561)) (h!69354 s!2326)))))

(assert (= (and d!1766618 c!979386) b!5589576))

(assert (= (and d!1766618 (not c!979386)) b!5589572))

(assert (= (and b!5589572 c!979388) b!5589577))

(assert (= (and b!5589572 (not c!979388)) b!5589574))

(assert (= (and b!5589574 res!2371604) b!5589570))

(assert (= (and b!5589574 c!979389) b!5589578))

(assert (= (and b!5589574 (not c!979389)) b!5589573))

(assert (= (and b!5589573 c!979387) b!5589571))

(assert (= (and b!5589573 (not c!979387)) b!5589579))

(assert (= (and b!5589579 c!979385) b!5589575))

(assert (= (and b!5589579 (not c!979385)) b!5589580))

(assert (= (or b!5589571 b!5589575) bm!418554))

(assert (= (or b!5589571 b!5589575) bm!418555))

(assert (= (or b!5589578 bm!418554) bm!418551))

(assert (= (or b!5589578 bm!418555) bm!418553))

(assert (= (or b!5589577 b!5589578) bm!418556))

(assert (= (or b!5589577 bm!418553) bm!418552))

(declare-fun m!6569826 () Bool)

(assert (=> bm!418556 m!6569826))

(declare-fun m!6569828 () Bool)

(assert (=> b!5589570 m!6569828))

(declare-fun m!6569830 () Bool)

(assert (=> b!5589576 m!6569830))

(declare-fun m!6569832 () Bool)

(assert (=> bm!418551 m!6569832))

(declare-fun m!6569834 () Bool)

(assert (=> bm!418552 m!6569834))

(assert (=> bm!418470 d!1766618))

(assert (=> b!5589105 d!1766362))

(declare-fun b!5589595 () Bool)

(declare-fun e!3448496 () Bool)

(assert (=> b!5589595 (= e!3448496 (nullable!5609 (regOne!31666 (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292)))))))))

(declare-fun b!5589596 () Bool)

(declare-fun e!3448500 () (InoxSet Context!9922))

(declare-fun call!418565 () (InoxSet Context!9922))

(assert (=> b!5589596 (= e!3448500 call!418565)))

(declare-fun call!418567 () List!63031)

(declare-fun bm!418557 () Bool)

(declare-fun c!979396 () Bool)

(declare-fun c!979394 () Bool)

(assert (=> bm!418557 (= call!418567 ($colon$colon!1640 (exprs!5461 (ite c!979273 lt!2255202 (Context!9923 call!418479))) (ite (or c!979396 c!979394) (regTwo!31666 (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292))))) (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292)))))))))

(declare-fun call!418563 () (InoxSet Context!9922))

(declare-fun bm!418558 () Bool)

(declare-fun c!979395 () Bool)

(declare-fun call!418562 () List!63031)

(assert (=> bm!418558 (= call!418563 (derivationStepZipperDown!919 (ite c!979395 (regOne!31667 (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292))))) (ite c!979396 (regTwo!31666 (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292))))) (ite c!979394 (regOne!31666 (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292))))) (reg!15906 (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292)))))))) (ite (or c!979395 c!979396) (ite c!979273 lt!2255202 (Context!9923 call!418479)) (Context!9923 call!418562)) (h!69354 s!2326)))))

(declare-fun b!5589597 () Bool)

(declare-fun e!3448499 () (InoxSet Context!9922))

(declare-fun e!3448498 () (InoxSet Context!9922))

(assert (=> b!5589597 (= e!3448499 e!3448498)))

(assert (=> b!5589597 (= c!979395 ((_ is Union!15577) (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292))))))))

(declare-fun c!979393 () Bool)

(declare-fun d!1766620 () Bool)

(assert (=> d!1766620 (= c!979393 (and ((_ is ElementMatch!15577) (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292))))) (= (c!979094 (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292))))) (h!69354 s!2326))))))

(assert (=> d!1766620 (= (derivationStepZipperDown!919 (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292)))) (ite c!979273 lt!2255202 (Context!9923 call!418479)) (h!69354 s!2326)) e!3448499)))

(declare-fun bm!418559 () Bool)

(declare-fun call!418564 () (InoxSet Context!9922))

(assert (=> bm!418559 (= call!418564 call!418563)))

(declare-fun b!5589598 () Bool)

(declare-fun e!3448495 () (InoxSet Context!9922))

(assert (=> b!5589598 (= e!3448495 e!3448500)))

(assert (=> b!5589598 (= c!979394 ((_ is Concat!24422) (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292))))))))

(declare-fun b!5589599 () Bool)

(assert (=> b!5589599 (= c!979396 e!3448496)))

(declare-fun res!2371615 () Bool)

(assert (=> b!5589599 (=> (not res!2371615) (not e!3448496))))

(assert (=> b!5589599 (= res!2371615 ((_ is Concat!24422) (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292))))))))

(assert (=> b!5589599 (= e!3448498 e!3448495)))

(declare-fun b!5589600 () Bool)

(declare-fun e!3448497 () (InoxSet Context!9922))

(assert (=> b!5589600 (= e!3448497 call!418565)))

(declare-fun bm!418560 () Bool)

(assert (=> bm!418560 (= call!418562 call!418567)))

(declare-fun b!5589601 () Bool)

(assert (=> b!5589601 (= e!3448499 (store ((as const (Array Context!9922 Bool)) false) (ite c!979273 lt!2255202 (Context!9923 call!418479)) true))))

(declare-fun b!5589602 () Bool)

(declare-fun call!418566 () (InoxSet Context!9922))

(assert (=> b!5589602 (= e!3448498 ((_ map or) call!418563 call!418566))))

(declare-fun b!5589603 () Bool)

(assert (=> b!5589603 (= e!3448495 ((_ map or) call!418566 call!418564))))

(declare-fun b!5589604 () Bool)

(declare-fun c!979392 () Bool)

(assert (=> b!5589604 (= c!979392 ((_ is Star!15577) (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292))))))))

(assert (=> b!5589604 (= e!3448500 e!3448497)))

(declare-fun b!5589605 () Bool)

(assert (=> b!5589605 (= e!3448497 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418561 () Bool)

(assert (=> bm!418561 (= call!418565 call!418564)))

(declare-fun bm!418562 () Bool)

(assert (=> bm!418562 (= call!418566 (derivationStepZipperDown!919 (ite c!979395 (regTwo!31667 (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292))))) (regOne!31666 (ite c!979273 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292)))))) (ite c!979395 (ite c!979273 lt!2255202 (Context!9923 call!418479)) (Context!9923 call!418567)) (h!69354 s!2326)))))

(assert (= (and d!1766620 c!979393) b!5589601))

(assert (= (and d!1766620 (not c!979393)) b!5589597))

(assert (= (and b!5589597 c!979395) b!5589602))

(assert (= (and b!5589597 (not c!979395)) b!5589599))

(assert (= (and b!5589599 res!2371615) b!5589595))

(assert (= (and b!5589599 c!979396) b!5589603))

(assert (= (and b!5589599 (not c!979396)) b!5589598))

(assert (= (and b!5589598 c!979394) b!5589596))

(assert (= (and b!5589598 (not c!979394)) b!5589604))

(assert (= (and b!5589604 c!979392) b!5589600))

(assert (= (and b!5589604 (not c!979392)) b!5589605))

(assert (= (or b!5589596 b!5589600) bm!418560))

(assert (= (or b!5589596 b!5589600) bm!418561))

(assert (= (or b!5589603 bm!418560) bm!418557))

(assert (= (or b!5589603 bm!418561) bm!418559))

(assert (= (or b!5589602 b!5589603) bm!418562))

(assert (= (or b!5589602 bm!418559) bm!418558))

(declare-fun m!6569836 () Bool)

(assert (=> bm!418562 m!6569836))

(declare-fun m!6569838 () Bool)

(assert (=> b!5589595 m!6569838))

(declare-fun m!6569840 () Bool)

(assert (=> b!5589601 m!6569840))

(declare-fun m!6569842 () Bool)

(assert (=> bm!418557 m!6569842))

(declare-fun m!6569844 () Bool)

(assert (=> bm!418558 m!6569844))

(assert (=> bm!418474 d!1766620))

(assert (=> d!1766404 d!1766408))

(assert (=> d!1766404 d!1766356))

(declare-fun d!1766622 () Bool)

(declare-fun e!3448501 () Bool)

(assert (=> d!1766622 (= (matchZipper!1715 ((_ map or) lt!2255199 lt!2255201) (t!376306 s!2326)) e!3448501)))

(declare-fun res!2371616 () Bool)

(assert (=> d!1766622 (=> res!2371616 e!3448501)))

(assert (=> d!1766622 (= res!2371616 (matchZipper!1715 lt!2255199 (t!376306 s!2326)))))

(assert (=> d!1766622 true))

(declare-fun _$48!1158 () Unit!155708)

(assert (=> d!1766622 (= (choose!42376 lt!2255199 lt!2255201 (t!376306 s!2326)) _$48!1158)))

(declare-fun b!5589606 () Bool)

(assert (=> b!5589606 (= e!3448501 (matchZipper!1715 lt!2255201 (t!376306 s!2326)))))

(assert (= (and d!1766622 (not res!2371616)) b!5589606))

(assert (=> d!1766622 m!6569004))

(assert (=> d!1766622 m!6568938))

(assert (=> b!5589606 m!6568928))

(assert (=> d!1766404 d!1766622))

(declare-fun bs!1292424 () Bool)

(declare-fun d!1766624 () Bool)

(assert (= bs!1292424 (and d!1766624 d!1766590)))

(declare-fun lambda!299990 () Int)

(assert (=> bs!1292424 (= lambda!299990 lambda!299988)))

(assert (=> d!1766624 (= (nullableZipper!1572 ((_ map or) lt!2255189 lt!2255201)) (exists!2165 ((_ map or) lt!2255189 lt!2255201) lambda!299990))))

(declare-fun bs!1292425 () Bool)

(assert (= bs!1292425 d!1766624))

(declare-fun m!6569846 () Bool)

(assert (=> bs!1292425 m!6569846))

(assert (=> b!5589266 d!1766624))

(declare-fun bs!1292426 () Bool)

(declare-fun d!1766626 () Bool)

(assert (= bs!1292426 (and d!1766626 d!1766590)))

(declare-fun lambda!299991 () Int)

(assert (=> bs!1292426 (= lambda!299991 lambda!299988)))

(declare-fun bs!1292427 () Bool)

(assert (= bs!1292427 (and d!1766626 d!1766624)))

(assert (=> bs!1292427 (= lambda!299991 lambda!299990)))

(assert (=> d!1766626 (= (nullableZipper!1572 lt!2255189) (exists!2165 lt!2255189 lambda!299991))))

(declare-fun bs!1292428 () Bool)

(assert (= bs!1292428 d!1766626))

(declare-fun m!6569848 () Bool)

(assert (=> bs!1292428 m!6569848))

(assert (=> b!5588973 d!1766626))

(declare-fun b!5589607 () Bool)

(declare-fun e!3448503 () Bool)

(assert (=> b!5589607 (= e!3448503 (nullable!5609 (regOne!31666 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))))))))))

(declare-fun b!5589608 () Bool)

(declare-fun e!3448507 () (InoxSet Context!9922))

(declare-fun call!418575 () (InoxSet Context!9922))

(assert (=> b!5589608 (= e!3448507 call!418575)))

(declare-fun c!979401 () Bool)

(declare-fun bm!418567 () Bool)

(declare-fun c!979399 () Bool)

(declare-fun call!418577 () List!63031)

(assert (=> bm!418567 (= call!418577 ($colon$colon!1640 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))))))) (ite (or c!979401 c!979399) (regTwo!31666 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))))))))))

(declare-fun c!979400 () Bool)

(declare-fun call!418573 () (InoxSet Context!9922))

(declare-fun bm!418568 () Bool)

(declare-fun call!418572 () List!63031)

(assert (=> bm!418568 (= call!418573 (derivationStepZipperDown!919 (ite c!979400 (regOne!31667 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (ite c!979401 (regTwo!31666 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (ite c!979399 (regOne!31666 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (reg!15906 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))))))))) (ite (or c!979400 c!979401) (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (Context!9923 call!418572)) (h!69354 s!2326)))))

(declare-fun b!5589609 () Bool)

(declare-fun e!3448506 () (InoxSet Context!9922))

(declare-fun e!3448505 () (InoxSet Context!9922))

(assert (=> b!5589609 (= e!3448506 e!3448505)))

(assert (=> b!5589609 (= c!979400 ((_ is Union!15577) (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))))))

(declare-fun d!1766628 () Bool)

(declare-fun c!979398 () Bool)

(assert (=> d!1766628 (= c!979398 (and ((_ is ElementMatch!15577) (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (= (c!979094 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (h!69354 s!2326))))))

(assert (=> d!1766628 (= (derivationStepZipperDown!919 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))))) (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (h!69354 s!2326)) e!3448506)))

(declare-fun bm!418569 () Bool)

(declare-fun call!418574 () (InoxSet Context!9922))

(assert (=> bm!418569 (= call!418574 call!418573)))

(declare-fun b!5589610 () Bool)

(declare-fun e!3448502 () (InoxSet Context!9922))

(assert (=> b!5589610 (= e!3448502 e!3448507)))

(assert (=> b!5589610 (= c!979399 ((_ is Concat!24422) (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))))))

(declare-fun b!5589611 () Bool)

(assert (=> b!5589611 (= c!979401 e!3448503)))

(declare-fun res!2371617 () Bool)

(assert (=> b!5589611 (=> (not res!2371617) (not e!3448503))))

(assert (=> b!5589611 (= res!2371617 ((_ is Concat!24422) (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))))))

(assert (=> b!5589611 (= e!3448505 e!3448502)))

(declare-fun b!5589612 () Bool)

(declare-fun e!3448504 () (InoxSet Context!9922))

(assert (=> b!5589612 (= e!3448504 call!418575)))

(declare-fun bm!418570 () Bool)

(assert (=> bm!418570 (= call!418572 call!418577)))

(declare-fun b!5589613 () Bool)

(assert (=> b!5589613 (= e!3448506 (store ((as const (Array Context!9922 Bool)) false) (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) true))))

(declare-fun b!5589614 () Bool)

(declare-fun call!418576 () (InoxSet Context!9922))

(assert (=> b!5589614 (= e!3448505 ((_ map or) call!418573 call!418576))))

(declare-fun b!5589615 () Bool)

(assert (=> b!5589615 (= e!3448502 ((_ map or) call!418576 call!418574))))

(declare-fun b!5589616 () Bool)

(declare-fun c!979397 () Bool)

(assert (=> b!5589616 (= c!979397 ((_ is Star!15577) (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))))))

(assert (=> b!5589616 (= e!3448507 e!3448504)))

(declare-fun b!5589617 () Bool)

(assert (=> b!5589617 (= e!3448504 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418571 () Bool)

(assert (=> bm!418571 (= call!418575 call!418574)))

(declare-fun bm!418572 () Bool)

(assert (=> bm!418572 (= call!418576 (derivationStepZipperDown!919 (ite c!979400 (regTwo!31667 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (regOne!31666 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))))))) (ite c!979400 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (Context!9923 call!418577)) (h!69354 s!2326)))))

(assert (= (and d!1766628 c!979398) b!5589613))

(assert (= (and d!1766628 (not c!979398)) b!5589609))

(assert (= (and b!5589609 c!979400) b!5589614))

(assert (= (and b!5589609 (not c!979400)) b!5589611))

(assert (= (and b!5589611 res!2371617) b!5589607))

(assert (= (and b!5589611 c!979401) b!5589615))

(assert (= (and b!5589611 (not c!979401)) b!5589610))

(assert (= (and b!5589610 c!979399) b!5589608))

(assert (= (and b!5589610 (not c!979399)) b!5589616))

(assert (= (and b!5589616 c!979397) b!5589612))

(assert (= (and b!5589616 (not c!979397)) b!5589617))

(assert (= (or b!5589608 b!5589612) bm!418570))

(assert (= (or b!5589608 b!5589612) bm!418571))

(assert (= (or b!5589615 bm!418570) bm!418567))

(assert (= (or b!5589615 bm!418571) bm!418569))

(assert (= (or b!5589614 b!5589615) bm!418572))

(assert (= (or b!5589614 bm!418569) bm!418568))

(declare-fun m!6569850 () Bool)

(assert (=> bm!418572 m!6569850))

(declare-fun m!6569852 () Bool)

(assert (=> b!5589607 m!6569852))

(declare-fun m!6569854 () Bool)

(assert (=> b!5589613 m!6569854))

(declare-fun m!6569856 () Bool)

(assert (=> bm!418567 m!6569856))

(declare-fun m!6569858 () Bool)

(assert (=> bm!418568 m!6569858))

(assert (=> bm!418490 d!1766628))

(declare-fun d!1766630 () Bool)

(declare-fun c!979402 () Bool)

(assert (=> d!1766630 (= c!979402 (isEmpty!34725 (tail!11018 (t!376306 s!2326))))))

(declare-fun e!3448508 () Bool)

(assert (=> d!1766630 (= (matchZipper!1715 (derivationStepZipper!1676 lt!2255213 (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))) e!3448508)))

(declare-fun b!5589618 () Bool)

(assert (=> b!5589618 (= e!3448508 (nullableZipper!1572 (derivationStepZipper!1676 lt!2255213 (head!11923 (t!376306 s!2326)))))))

(declare-fun b!5589619 () Bool)

(assert (=> b!5589619 (= e!3448508 (matchZipper!1715 (derivationStepZipper!1676 (derivationStepZipper!1676 lt!2255213 (head!11923 (t!376306 s!2326))) (head!11923 (tail!11018 (t!376306 s!2326)))) (tail!11018 (tail!11018 (t!376306 s!2326)))))))

(assert (= (and d!1766630 c!979402) b!5589618))

(assert (= (and d!1766630 (not c!979402)) b!5589619))

(assert (=> d!1766630 m!6569172))

(assert (=> d!1766630 m!6569580))

(assert (=> b!5589618 m!6569242))

(declare-fun m!6569860 () Bool)

(assert (=> b!5589618 m!6569860))

(assert (=> b!5589619 m!6569172))

(assert (=> b!5589619 m!6569584))

(assert (=> b!5589619 m!6569242))

(assert (=> b!5589619 m!6569584))

(declare-fun m!6569862 () Bool)

(assert (=> b!5589619 m!6569862))

(assert (=> b!5589619 m!6569172))

(assert (=> b!5589619 m!6569588))

(assert (=> b!5589619 m!6569862))

(assert (=> b!5589619 m!6569588))

(declare-fun m!6569864 () Bool)

(assert (=> b!5589619 m!6569864))

(assert (=> b!5588776 d!1766630))

(declare-fun bs!1292429 () Bool)

(declare-fun d!1766632 () Bool)

(assert (= bs!1292429 (and d!1766632 b!5588545)))

(declare-fun lambda!299992 () Int)

(assert (=> bs!1292429 (= (= (head!11923 (t!376306 s!2326)) (h!69354 s!2326)) (= lambda!299992 lambda!299914))))

(declare-fun bs!1292430 () Bool)

(assert (= bs!1292430 (and d!1766632 d!1766498)))

(assert (=> bs!1292430 (= lambda!299992 lambda!299976)))

(declare-fun bs!1292431 () Bool)

(assert (= bs!1292431 (and d!1766632 d!1766512)))

(assert (=> bs!1292431 (= lambda!299992 lambda!299977)))

(declare-fun bs!1292432 () Bool)

(assert (= bs!1292432 (and d!1766632 d!1766596)))

(assert (=> bs!1292432 (= lambda!299992 lambda!299989)))

(assert (=> d!1766632 true))

(assert (=> d!1766632 (= (derivationStepZipper!1676 lt!2255213 (head!11923 (t!376306 s!2326))) (flatMap!1190 lt!2255213 lambda!299992))))

(declare-fun bs!1292433 () Bool)

(assert (= bs!1292433 d!1766632))

(declare-fun m!6569866 () Bool)

(assert (=> bs!1292433 m!6569866))

(assert (=> b!5588776 d!1766632))

(assert (=> b!5588776 d!1766506))

(assert (=> b!5588776 d!1766508))

(declare-fun call!418580 () (InoxSet Context!9922))

(declare-fun e!3448515 () (InoxSet Context!9922))

(declare-fun b!5589627 () Bool)

(assert (=> b!5589627 (= e!3448515 ((_ map or) call!418580 (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255209)))))) (h!69354 s!2326))))))

(declare-fun b!5589628 () Bool)

(declare-fun e!3448516 () (InoxSet Context!9922))

(assert (=> b!5589628 (= e!3448516 call!418580)))

(declare-fun b!5589629 () Bool)

(assert (=> b!5589629 (= e!3448515 e!3448516)))

(declare-fun c!979404 () Bool)

(assert (=> b!5589629 (= c!979404 ((_ is Cons!62907) (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255209))))))))

(declare-fun bm!418575 () Bool)

(assert (=> bm!418575 (= call!418580 (derivationStepZipperDown!919 (h!69355 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255209))))) (Context!9923 (t!376307 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255209)))))) (h!69354 s!2326)))))

(declare-fun b!5589630 () Bool)

(declare-fun e!3448517 () Bool)

(assert (=> b!5589630 (= e!3448517 (nullable!5609 (h!69355 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255209)))))))))

(declare-fun d!1766634 () Bool)

(declare-fun c!979405 () Bool)

(assert (=> d!1766634 (= c!979405 e!3448517)))

(declare-fun res!2371623 () Bool)

(assert (=> d!1766634 (=> (not res!2371623) (not e!3448517))))

(assert (=> d!1766634 (= res!2371623 ((_ is Cons!62907) (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255209))))))))

(assert (=> d!1766634 (= (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 lt!2255209))) (h!69354 s!2326)) e!3448515)))

(declare-fun b!5589631 () Bool)

(assert (=> b!5589631 (= e!3448516 ((as const (Array Context!9922 Bool)) false))))

(assert (= (and d!1766634 res!2371623) b!5589630))

(assert (= (and d!1766634 c!979405) b!5589627))

(assert (= (and d!1766634 (not c!979405)) b!5589629))

(assert (= (and b!5589629 c!979404) b!5589628))

(assert (= (and b!5589629 (not c!979404)) b!5589631))

(assert (= (or b!5589627 b!5589628) bm!418575))

(declare-fun m!6569868 () Bool)

(assert (=> b!5589627 m!6569868))

(declare-fun m!6569870 () Bool)

(assert (=> bm!418575 m!6569870))

(declare-fun m!6569872 () Bool)

(assert (=> b!5589630 m!6569872))

(assert (=> b!5589268 d!1766634))

(declare-fun e!3448518 () (InoxSet Context!9922))

(declare-fun call!418581 () (InoxSet Context!9922))

(declare-fun b!5589632 () Bool)

(assert (=> b!5589632 (= e!3448518 ((_ map or) call!418581 (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255204)))))) (h!69354 s!2326))))))

(declare-fun b!5589633 () Bool)

(declare-fun e!3448519 () (InoxSet Context!9922))

(assert (=> b!5589633 (= e!3448519 call!418581)))

(declare-fun b!5589634 () Bool)

(assert (=> b!5589634 (= e!3448518 e!3448519)))

(declare-fun c!979406 () Bool)

(assert (=> b!5589634 (= c!979406 ((_ is Cons!62907) (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255204))))))))

(declare-fun bm!418576 () Bool)

(assert (=> bm!418576 (= call!418581 (derivationStepZipperDown!919 (h!69355 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255204))))) (Context!9923 (t!376307 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255204)))))) (h!69354 s!2326)))))

(declare-fun b!5589635 () Bool)

(declare-fun e!3448520 () Bool)

(assert (=> b!5589635 (= e!3448520 (nullable!5609 (h!69355 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255204)))))))))

(declare-fun d!1766636 () Bool)

(declare-fun c!979407 () Bool)

(assert (=> d!1766636 (= c!979407 e!3448520)))

(declare-fun res!2371624 () Bool)

(assert (=> d!1766636 (=> (not res!2371624) (not e!3448520))))

(assert (=> d!1766636 (= res!2371624 ((_ is Cons!62907) (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255204))))))))

(assert (=> d!1766636 (= (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 lt!2255204))) (h!69354 s!2326)) e!3448518)))

(declare-fun b!5589636 () Bool)

(assert (=> b!5589636 (= e!3448519 ((as const (Array Context!9922 Bool)) false))))

(assert (= (and d!1766636 res!2371624) b!5589635))

(assert (= (and d!1766636 c!979407) b!5589632))

(assert (= (and d!1766636 (not c!979407)) b!5589634))

(assert (= (and b!5589634 c!979406) b!5589633))

(assert (= (and b!5589634 (not c!979406)) b!5589636))

(assert (= (or b!5589632 b!5589633) bm!418576))

(declare-fun m!6569878 () Bool)

(assert (=> b!5589632 m!6569878))

(declare-fun m!6569880 () Bool)

(assert (=> bm!418576 m!6569880))

(declare-fun m!6569882 () Bool)

(assert (=> b!5589635 m!6569882))

(assert (=> b!5589273 d!1766636))

(assert (=> bs!1292361 d!1766468))

(assert (=> d!1766408 d!1766572))

(declare-fun e!3448521 () (InoxSet Context!9922))

(declare-fun call!418582 () (InoxSet Context!9922))

(declare-fun b!5589637 () Bool)

(assert (=> b!5589637 (= e!3448521 ((_ map or) call!418582 (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343))))))) (h!69354 s!2326))))))

(declare-fun b!5589638 () Bool)

(declare-fun e!3448522 () (InoxSet Context!9922))

(assert (=> b!5589638 (= e!3448522 call!418582)))

(declare-fun b!5589639 () Bool)

(assert (=> b!5589639 (= e!3448521 e!3448522)))

(declare-fun c!979408 () Bool)

(assert (=> b!5589639 (= c!979408 ((_ is Cons!62907) (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343)))))))))

(declare-fun bm!418577 () Bool)

(assert (=> bm!418577 (= call!418582 (derivationStepZipperDown!919 (h!69355 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343)))))) (Context!9923 (t!376307 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343))))))) (h!69354 s!2326)))))

(declare-fun b!5589640 () Bool)

(declare-fun e!3448523 () Bool)

(assert (=> b!5589640 (= e!3448523 (nullable!5609 (h!69355 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343))))))))))

(declare-fun d!1766640 () Bool)

(declare-fun c!979409 () Bool)

(assert (=> d!1766640 (= c!979409 e!3448523)))

(declare-fun res!2371625 () Bool)

(assert (=> d!1766640 (=> (not res!2371625) (not e!3448523))))

(assert (=> d!1766640 (= res!2371625 ((_ is Cons!62907) (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343)))))))))

(assert (=> d!1766640 (= (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343)))) (h!69354 s!2326)) e!3448521)))

(declare-fun b!5589641 () Bool)

(assert (=> b!5589641 (= e!3448522 ((as const (Array Context!9922 Bool)) false))))

(assert (= (and d!1766640 res!2371625) b!5589640))

(assert (= (and d!1766640 c!979409) b!5589637))

(assert (= (and d!1766640 (not c!979409)) b!5589639))

(assert (= (and b!5589639 c!979408) b!5589638))

(assert (= (and b!5589639 (not c!979408)) b!5589641))

(assert (= (or b!5589637 b!5589638) bm!418577))

(declare-fun m!6569884 () Bool)

(assert (=> b!5589637 m!6569884))

(declare-fun m!6569886 () Bool)

(assert (=> bm!418577 m!6569886))

(declare-fun m!6569888 () Bool)

(assert (=> b!5589640 m!6569888))

(assert (=> b!5589221 d!1766640))

(declare-fun d!1766642 () Bool)

(declare-fun c!979412 () Bool)

(assert (=> d!1766642 (= c!979412 ((_ is Nil!62908) lt!2255287))))

(declare-fun e!3448528 () (InoxSet Context!9922))

(assert (=> d!1766642 (= (content!11347 lt!2255287) e!3448528)))

(declare-fun b!5589648 () Bool)

(assert (=> b!5589648 (= e!3448528 ((as const (Array Context!9922 Bool)) false))))

(declare-fun b!5589649 () Bool)

(assert (=> b!5589649 (= e!3448528 ((_ map or) (store ((as const (Array Context!9922 Bool)) false) (h!69356 lt!2255287) true) (content!11347 (t!376308 lt!2255287))))))

(assert (= (and d!1766642 c!979412) b!5589648))

(assert (= (and d!1766642 (not c!979412)) b!5589649))

(declare-fun m!6569890 () Bool)

(assert (=> b!5589649 m!6569890))

(declare-fun m!6569892 () Bool)

(assert (=> b!5589649 m!6569892))

(assert (=> b!5589135 d!1766642))

(declare-fun b!5589650 () Bool)

(declare-fun res!2371634 () Bool)

(declare-fun e!3448535 () Bool)

(assert (=> b!5589650 (=> (not res!2371634) (not e!3448535))))

(assert (=> b!5589650 (= res!2371634 (isEmpty!34725 (tail!11018 s!2326)))))

(declare-fun b!5589651 () Bool)

(declare-fun e!3448532 () Bool)

(declare-fun e!3448529 () Bool)

(assert (=> b!5589651 (= e!3448532 e!3448529)))

(declare-fun c!979415 () Bool)

(assert (=> b!5589651 (= c!979415 ((_ is EmptyLang!15577) (regTwo!31666 r!7292)))))

(declare-fun b!5589652 () Bool)

(declare-fun lt!2255314 () Bool)

(declare-fun call!418583 () Bool)

(assert (=> b!5589652 (= e!3448532 (= lt!2255314 call!418583))))

(declare-fun b!5589653 () Bool)

(declare-fun res!2371635 () Bool)

(declare-fun e!3448531 () Bool)

(assert (=> b!5589653 (=> res!2371635 e!3448531)))

(assert (=> b!5589653 (= res!2371635 (not ((_ is ElementMatch!15577) (regTwo!31666 r!7292))))))

(assert (=> b!5589653 (= e!3448529 e!3448531)))

(declare-fun b!5589654 () Bool)

(declare-fun res!2371629 () Bool)

(assert (=> b!5589654 (=> res!2371629 e!3448531)))

(assert (=> b!5589654 (= res!2371629 e!3448535)))

(declare-fun res!2371632 () Bool)

(assert (=> b!5589654 (=> (not res!2371632) (not e!3448535))))

(assert (=> b!5589654 (= res!2371632 lt!2255314)))

(declare-fun b!5589655 () Bool)

(declare-fun e!3448530 () Bool)

(assert (=> b!5589655 (= e!3448530 (nullable!5609 (regTwo!31666 r!7292)))))

(declare-fun b!5589656 () Bool)

(assert (=> b!5589656 (= e!3448530 (matchR!7762 (derivativeStep!4424 (regTwo!31666 r!7292) (head!11923 s!2326)) (tail!11018 s!2326)))))

(declare-fun b!5589657 () Bool)

(assert (=> b!5589657 (= e!3448529 (not lt!2255314))))

(declare-fun bm!418578 () Bool)

(assert (=> bm!418578 (= call!418583 (isEmpty!34725 s!2326))))

(declare-fun d!1766646 () Bool)

(assert (=> d!1766646 e!3448532))

(declare-fun c!979414 () Bool)

(assert (=> d!1766646 (= c!979414 ((_ is EmptyExpr!15577) (regTwo!31666 r!7292)))))

(assert (=> d!1766646 (= lt!2255314 e!3448530)))

(declare-fun c!979413 () Bool)

(assert (=> d!1766646 (= c!979413 (isEmpty!34725 s!2326))))

(assert (=> d!1766646 (validRegex!7313 (regTwo!31666 r!7292))))

(assert (=> d!1766646 (= (matchR!7762 (regTwo!31666 r!7292) s!2326) lt!2255314)))

(declare-fun b!5589658 () Bool)

(declare-fun e!3448533 () Bool)

(assert (=> b!5589658 (= e!3448531 e!3448533)))

(declare-fun res!2371630 () Bool)

(assert (=> b!5589658 (=> (not res!2371630) (not e!3448533))))

(assert (=> b!5589658 (= res!2371630 (not lt!2255314))))

(declare-fun b!5589659 () Bool)

(declare-fun e!3448534 () Bool)

(assert (=> b!5589659 (= e!3448533 e!3448534)))

(declare-fun res!2371631 () Bool)

(assert (=> b!5589659 (=> res!2371631 e!3448534)))

(assert (=> b!5589659 (= res!2371631 call!418583)))

(declare-fun b!5589660 () Bool)

(declare-fun res!2371628 () Bool)

(assert (=> b!5589660 (=> (not res!2371628) (not e!3448535))))

(assert (=> b!5589660 (= res!2371628 (not call!418583))))

(declare-fun b!5589661 () Bool)

(declare-fun res!2371633 () Bool)

(assert (=> b!5589661 (=> res!2371633 e!3448534)))

(assert (=> b!5589661 (= res!2371633 (not (isEmpty!34725 (tail!11018 s!2326))))))

(declare-fun b!5589662 () Bool)

(assert (=> b!5589662 (= e!3448535 (= (head!11923 s!2326) (c!979094 (regTwo!31666 r!7292))))))

(declare-fun b!5589663 () Bool)

(assert (=> b!5589663 (= e!3448534 (not (= (head!11923 s!2326) (c!979094 (regTwo!31666 r!7292)))))))

(assert (= (and d!1766646 c!979413) b!5589655))

(assert (= (and d!1766646 (not c!979413)) b!5589656))

(assert (= (and d!1766646 c!979414) b!5589652))

(assert (= (and d!1766646 (not c!979414)) b!5589651))

(assert (= (and b!5589651 c!979415) b!5589657))

(assert (= (and b!5589651 (not c!979415)) b!5589653))

(assert (= (and b!5589653 (not res!2371635)) b!5589654))

(assert (= (and b!5589654 res!2371632) b!5589660))

(assert (= (and b!5589660 res!2371628) b!5589650))

(assert (= (and b!5589650 res!2371634) b!5589662))

(assert (= (and b!5589654 (not res!2371629)) b!5589658))

(assert (= (and b!5589658 res!2371630) b!5589659))

(assert (= (and b!5589659 (not res!2371631)) b!5589661))

(assert (= (and b!5589661 (not res!2371633)) b!5589663))

(assert (= (or b!5589652 b!5589659 b!5589660) bm!418578))

(assert (=> b!5589662 m!6569294))

(declare-fun m!6569894 () Bool)

(assert (=> b!5589655 m!6569894))

(assert (=> b!5589663 m!6569294))

(assert (=> bm!418578 m!6569284))

(assert (=> b!5589656 m!6569294))

(assert (=> b!5589656 m!6569294))

(declare-fun m!6569896 () Bool)

(assert (=> b!5589656 m!6569896))

(assert (=> b!5589656 m!6569300))

(assert (=> b!5589656 m!6569896))

(assert (=> b!5589656 m!6569300))

(declare-fun m!6569898 () Bool)

(assert (=> b!5589656 m!6569898))

(assert (=> d!1766646 m!6569284))

(declare-fun m!6569900 () Bool)

(assert (=> d!1766646 m!6569900))

(assert (=> b!5589650 m!6569300))

(assert (=> b!5589650 m!6569300))

(assert (=> b!5589650 m!6569304))

(assert (=> b!5589661 m!6569300))

(assert (=> b!5589661 m!6569300))

(assert (=> b!5589661 m!6569304))

(assert (=> b!5589252 d!1766646))

(assert (=> d!1766354 d!1766572))

(assert (=> d!1766472 d!1766466))

(declare-fun d!1766648 () Bool)

(assert (=> d!1766648 (= (flatMap!1190 lt!2255203 lambda!299914) (dynLambda!24601 lambda!299914 lt!2255204))))

(assert (=> d!1766648 true))

(declare-fun _$13!2177 () Unit!155708)

(assert (=> d!1766648 (= (choose!42383 lt!2255203 lt!2255204 lambda!299914) _$13!2177)))

(declare-fun b_lambda!211793 () Bool)

(assert (=> (not b_lambda!211793) (not d!1766648)))

(declare-fun bs!1292434 () Bool)

(assert (= bs!1292434 d!1766648))

(assert (=> bs!1292434 m!6568980))

(assert (=> bs!1292434 m!6569552))

(assert (=> d!1766472 d!1766648))

(declare-fun d!1766650 () Bool)

(assert (=> d!1766650 (= (isConcat!654 lt!2255269) ((_ is Concat!24422) lt!2255269))))

(assert (=> b!5589015 d!1766650))

(declare-fun b!5589695 () Bool)

(declare-fun e!3448556 () List!63030)

(assert (=> b!5589695 (= e!3448556 (_2!35977 (get!21662 lt!2255297)))))

(declare-fun b!5589696 () Bool)

(assert (=> b!5589696 (= e!3448556 (Cons!62906 (h!69354 (_1!35977 (get!21662 lt!2255297))) (++!13806 (t!376306 (_1!35977 (get!21662 lt!2255297))) (_2!35977 (get!21662 lt!2255297)))))))

(declare-fun d!1766654 () Bool)

(declare-fun e!3448555 () Bool)

(assert (=> d!1766654 e!3448555))

(declare-fun res!2371647 () Bool)

(assert (=> d!1766654 (=> (not res!2371647) (not e!3448555))))

(declare-fun lt!2255318 () List!63030)

(declare-fun content!11350 (List!63030) (InoxSet C!31424))

(assert (=> d!1766654 (= res!2371647 (= (content!11350 lt!2255318) ((_ map or) (content!11350 (_1!35977 (get!21662 lt!2255297))) (content!11350 (_2!35977 (get!21662 lt!2255297))))))))

(assert (=> d!1766654 (= lt!2255318 e!3448556)))

(declare-fun c!979426 () Bool)

(assert (=> d!1766654 (= c!979426 ((_ is Nil!62906) (_1!35977 (get!21662 lt!2255297))))))

(assert (=> d!1766654 (= (++!13806 (_1!35977 (get!21662 lt!2255297)) (_2!35977 (get!21662 lt!2255297))) lt!2255318)))

(declare-fun b!5589697 () Bool)

(declare-fun res!2371648 () Bool)

(assert (=> b!5589697 (=> (not res!2371648) (not e!3448555))))

(declare-fun size!39963 (List!63030) Int)

(assert (=> b!5589697 (= res!2371648 (= (size!39963 lt!2255318) (+ (size!39963 (_1!35977 (get!21662 lt!2255297))) (size!39963 (_2!35977 (get!21662 lt!2255297))))))))

(declare-fun b!5589698 () Bool)

(assert (=> b!5589698 (= e!3448555 (or (not (= (_2!35977 (get!21662 lt!2255297)) Nil!62906)) (= lt!2255318 (_1!35977 (get!21662 lt!2255297)))))))

(assert (= (and d!1766654 c!979426) b!5589695))

(assert (= (and d!1766654 (not c!979426)) b!5589696))

(assert (= (and d!1766654 res!2371647) b!5589697))

(assert (= (and b!5589697 res!2371648) b!5589698))

(declare-fun m!6569924 () Bool)

(assert (=> b!5589696 m!6569924))

(declare-fun m!6569926 () Bool)

(assert (=> d!1766654 m!6569926))

(declare-fun m!6569928 () Bool)

(assert (=> d!1766654 m!6569928))

(declare-fun m!6569930 () Bool)

(assert (=> d!1766654 m!6569930))

(declare-fun m!6569932 () Bool)

(assert (=> b!5589697 m!6569932))

(declare-fun m!6569934 () Bool)

(assert (=> b!5589697 m!6569934))

(declare-fun m!6569936 () Bool)

(assert (=> b!5589697 m!6569936))

(assert (=> b!5589244 d!1766654))

(assert (=> b!5589244 d!1766608))

(declare-fun b!5589699 () Bool)

(declare-fun res!2371655 () Bool)

(declare-fun e!3448563 () Bool)

(assert (=> b!5589699 (=> (not res!2371655) (not e!3448563))))

(assert (=> b!5589699 (= res!2371655 (isEmpty!34725 (tail!11018 (_2!35977 (get!21662 lt!2255297)))))))

(declare-fun b!5589700 () Bool)

(declare-fun e!3448560 () Bool)

(declare-fun e!3448557 () Bool)

(assert (=> b!5589700 (= e!3448560 e!3448557)))

(declare-fun c!979429 () Bool)

(assert (=> b!5589700 (= c!979429 ((_ is EmptyLang!15577) (regTwo!31666 r!7292)))))

(declare-fun b!5589701 () Bool)

(declare-fun lt!2255319 () Bool)

(declare-fun call!418586 () Bool)

(assert (=> b!5589701 (= e!3448560 (= lt!2255319 call!418586))))

(declare-fun b!5589702 () Bool)

(declare-fun res!2371656 () Bool)

(declare-fun e!3448559 () Bool)

(assert (=> b!5589702 (=> res!2371656 e!3448559)))

(assert (=> b!5589702 (= res!2371656 (not ((_ is ElementMatch!15577) (regTwo!31666 r!7292))))))

(assert (=> b!5589702 (= e!3448557 e!3448559)))

(declare-fun b!5589703 () Bool)

(declare-fun res!2371650 () Bool)

(assert (=> b!5589703 (=> res!2371650 e!3448559)))

(assert (=> b!5589703 (= res!2371650 e!3448563)))

(declare-fun res!2371653 () Bool)

(assert (=> b!5589703 (=> (not res!2371653) (not e!3448563))))

(assert (=> b!5589703 (= res!2371653 lt!2255319)))

(declare-fun b!5589704 () Bool)

(declare-fun e!3448558 () Bool)

(assert (=> b!5589704 (= e!3448558 (nullable!5609 (regTwo!31666 r!7292)))))

(declare-fun b!5589705 () Bool)

(assert (=> b!5589705 (= e!3448558 (matchR!7762 (derivativeStep!4424 (regTwo!31666 r!7292) (head!11923 (_2!35977 (get!21662 lt!2255297)))) (tail!11018 (_2!35977 (get!21662 lt!2255297)))))))

(declare-fun b!5589706 () Bool)

(assert (=> b!5589706 (= e!3448557 (not lt!2255319))))

(declare-fun bm!418581 () Bool)

(assert (=> bm!418581 (= call!418586 (isEmpty!34725 (_2!35977 (get!21662 lt!2255297))))))

(declare-fun d!1766662 () Bool)

(assert (=> d!1766662 e!3448560))

(declare-fun c!979428 () Bool)

(assert (=> d!1766662 (= c!979428 ((_ is EmptyExpr!15577) (regTwo!31666 r!7292)))))

(assert (=> d!1766662 (= lt!2255319 e!3448558)))

(declare-fun c!979427 () Bool)

(assert (=> d!1766662 (= c!979427 (isEmpty!34725 (_2!35977 (get!21662 lt!2255297))))))

(assert (=> d!1766662 (validRegex!7313 (regTwo!31666 r!7292))))

(assert (=> d!1766662 (= (matchR!7762 (regTwo!31666 r!7292) (_2!35977 (get!21662 lt!2255297))) lt!2255319)))

(declare-fun b!5589707 () Bool)

(declare-fun e!3448561 () Bool)

(assert (=> b!5589707 (= e!3448559 e!3448561)))

(declare-fun res!2371651 () Bool)

(assert (=> b!5589707 (=> (not res!2371651) (not e!3448561))))

(assert (=> b!5589707 (= res!2371651 (not lt!2255319))))

(declare-fun b!5589708 () Bool)

(declare-fun e!3448562 () Bool)

(assert (=> b!5589708 (= e!3448561 e!3448562)))

(declare-fun res!2371652 () Bool)

(assert (=> b!5589708 (=> res!2371652 e!3448562)))

(assert (=> b!5589708 (= res!2371652 call!418586)))

(declare-fun b!5589709 () Bool)

(declare-fun res!2371649 () Bool)

(assert (=> b!5589709 (=> (not res!2371649) (not e!3448563))))

(assert (=> b!5589709 (= res!2371649 (not call!418586))))

(declare-fun b!5589710 () Bool)

(declare-fun res!2371654 () Bool)

(assert (=> b!5589710 (=> res!2371654 e!3448562)))

(assert (=> b!5589710 (= res!2371654 (not (isEmpty!34725 (tail!11018 (_2!35977 (get!21662 lt!2255297))))))))

(declare-fun b!5589711 () Bool)

(assert (=> b!5589711 (= e!3448563 (= (head!11923 (_2!35977 (get!21662 lt!2255297))) (c!979094 (regTwo!31666 r!7292))))))

(declare-fun b!5589712 () Bool)

(assert (=> b!5589712 (= e!3448562 (not (= (head!11923 (_2!35977 (get!21662 lt!2255297))) (c!979094 (regTwo!31666 r!7292)))))))

(assert (= (and d!1766662 c!979427) b!5589704))

(assert (= (and d!1766662 (not c!979427)) b!5589705))

(assert (= (and d!1766662 c!979428) b!5589701))

(assert (= (and d!1766662 (not c!979428)) b!5589700))

(assert (= (and b!5589700 c!979429) b!5589706))

(assert (= (and b!5589700 (not c!979429)) b!5589702))

(assert (= (and b!5589702 (not res!2371656)) b!5589703))

(assert (= (and b!5589703 res!2371653) b!5589709))

(assert (= (and b!5589709 res!2371649) b!5589699))

(assert (= (and b!5589699 res!2371655) b!5589711))

(assert (= (and b!5589703 (not res!2371650)) b!5589707))

(assert (= (and b!5589707 res!2371651) b!5589708))

(assert (= (and b!5589708 (not res!2371652)) b!5589710))

(assert (= (and b!5589710 (not res!2371654)) b!5589712))

(assert (= (or b!5589701 b!5589708 b!5589709) bm!418581))

(declare-fun m!6569938 () Bool)

(assert (=> b!5589711 m!6569938))

(assert (=> b!5589704 m!6569894))

(assert (=> b!5589712 m!6569938))

(declare-fun m!6569940 () Bool)

(assert (=> bm!418581 m!6569940))

(assert (=> b!5589705 m!6569938))

(assert (=> b!5589705 m!6569938))

(declare-fun m!6569942 () Bool)

(assert (=> b!5589705 m!6569942))

(declare-fun m!6569944 () Bool)

(assert (=> b!5589705 m!6569944))

(assert (=> b!5589705 m!6569942))

(assert (=> b!5589705 m!6569944))

(declare-fun m!6569946 () Bool)

(assert (=> b!5589705 m!6569946))

(assert (=> d!1766662 m!6569940))

(assert (=> d!1766662 m!6569900))

(assert (=> b!5589699 m!6569944))

(assert (=> b!5589699 m!6569944))

(declare-fun m!6569948 () Bool)

(assert (=> b!5589699 m!6569948))

(assert (=> b!5589710 m!6569944))

(assert (=> b!5589710 m!6569944))

(assert (=> b!5589710 m!6569948))

(assert (=> b!5589248 d!1766662))

(assert (=> b!5589248 d!1766608))

(declare-fun d!1766664 () Bool)

(assert (=> d!1766664 (= (isEmpty!34725 (tail!11018 s!2326)) ((_ is Nil!62906) (tail!11018 s!2326)))))

(assert (=> b!5588956 d!1766664))

(declare-fun d!1766666 () Bool)

(assert (=> d!1766666 (= (tail!11018 s!2326) (t!376306 s!2326))))

(assert (=> b!5588956 d!1766666))

(assert (=> d!1766374 d!1766528))

(assert (=> d!1766374 d!1766360))

(declare-fun d!1766668 () Bool)

(assert (=> d!1766668 (= (Exists!2677 lambda!299969) (choose!42387 lambda!299969))))

(declare-fun bs!1292446 () Bool)

(assert (= bs!1292446 d!1766668))

(declare-fun m!6569950 () Bool)

(assert (=> bs!1292446 m!6569950))

(assert (=> d!1766452 d!1766668))

(declare-fun d!1766670 () Bool)

(assert (=> d!1766670 (= (Exists!2677 lambda!299970) (choose!42387 lambda!299970))))

(declare-fun bs!1292448 () Bool)

(assert (= bs!1292448 d!1766670))

(declare-fun m!6569952 () Bool)

(assert (=> bs!1292448 m!6569952))

(assert (=> d!1766452 d!1766670))

(declare-fun bs!1292458 () Bool)

(declare-fun d!1766672 () Bool)

(assert (= bs!1292458 (and d!1766672 b!5589414)))

(declare-fun lambda!300001 () Int)

(assert (=> bs!1292458 (not (= lambda!300001 lambda!299981))))

(declare-fun bs!1292459 () Bool)

(assert (= bs!1292459 (and d!1766672 d!1766452)))

(assert (=> bs!1292459 (not (= lambda!300001 lambda!299970))))

(assert (=> bs!1292459 (= lambda!300001 lambda!299969)))

(declare-fun bs!1292460 () Bool)

(assert (= bs!1292460 (and d!1766672 b!5588535)))

(assert (=> bs!1292460 (not (= lambda!300001 lambda!299913))))

(assert (=> bs!1292460 (= lambda!300001 lambda!299912)))

(declare-fun bs!1292461 () Bool)

(assert (= bs!1292461 (and d!1766672 b!5588886)))

(assert (=> bs!1292461 (not (= lambda!300001 lambda!299947))))

(declare-fun bs!1292462 () Bool)

(assert (= bs!1292462 (and d!1766672 b!5589417)))

(assert (=> bs!1292462 (not (= lambda!300001 lambda!299980))))

(declare-fun bs!1292463 () Bool)

(assert (= bs!1292463 (and d!1766672 d!1766450)))

(assert (=> bs!1292463 (= lambda!300001 lambda!299964)))

(declare-fun bs!1292464 () Bool)

(assert (= bs!1292464 (and d!1766672 b!5588883)))

(assert (=> bs!1292464 (not (= lambda!300001 lambda!299948))))

(assert (=> d!1766672 true))

(assert (=> d!1766672 true))

(assert (=> d!1766672 true))

(declare-fun lambda!300004 () Int)

(assert (=> bs!1292458 (= (and (= (regOne!31666 r!7292) (regOne!31666 (regOne!31667 r!7292))) (= (regTwo!31666 r!7292) (regTwo!31666 (regOne!31667 r!7292)))) (= lambda!300004 lambda!299981))))

(assert (=> bs!1292459 (= lambda!300004 lambda!299970)))

(assert (=> bs!1292459 (not (= lambda!300004 lambda!299969))))

(assert (=> bs!1292460 (= lambda!300004 lambda!299913)))

(assert (=> bs!1292460 (not (= lambda!300004 lambda!299912))))

(declare-fun bs!1292466 () Bool)

(assert (= bs!1292466 d!1766672))

(assert (=> bs!1292466 (not (= lambda!300004 lambda!300001))))

(assert (=> bs!1292461 (not (= lambda!300004 lambda!299947))))

(assert (=> bs!1292462 (not (= lambda!300004 lambda!299980))))

(assert (=> bs!1292463 (not (= lambda!300004 lambda!299964))))

(assert (=> bs!1292464 (= lambda!300004 lambda!299948)))

(assert (=> d!1766672 true))

(assert (=> d!1766672 true))

(assert (=> d!1766672 true))

(assert (=> d!1766672 (= (Exists!2677 lambda!300001) (Exists!2677 lambda!300004))))

(assert (=> d!1766672 true))

(declare-fun _$90!1316 () Unit!155708)

(assert (=> d!1766672 (= (choose!42389 (regOne!31666 r!7292) (regTwo!31666 r!7292) s!2326) _$90!1316)))

(declare-fun m!6569962 () Bool)

(assert (=> bs!1292466 m!6569962))

(declare-fun m!6569964 () Bool)

(assert (=> bs!1292466 m!6569964))

(assert (=> d!1766452 d!1766672))

(assert (=> d!1766452 d!1766580))

(declare-fun d!1766678 () Bool)

(assert (=> d!1766678 (= (nullable!5609 r!7292) (nullableFct!1718 r!7292))))

(declare-fun bs!1292467 () Bool)

(assert (= bs!1292467 d!1766678))

(declare-fun m!6569966 () Bool)

(assert (=> bs!1292467 m!6569966))

(assert (=> b!5588950 d!1766678))

(declare-fun d!1766680 () Bool)

(assert (=> d!1766680 (= (nullable!5609 (regOne!31666 (regOne!31667 (regOne!31666 r!7292)))) (nullableFct!1718 (regOne!31666 (regOne!31667 (regOne!31666 r!7292)))))))

(declare-fun bs!1292468 () Bool)

(assert (= bs!1292468 d!1766680))

(declare-fun m!6569968 () Bool)

(assert (=> bs!1292468 m!6569968))

(assert (=> b!5589091 d!1766680))

(declare-fun d!1766682 () Bool)

(declare-fun c!979432 () Bool)

(assert (=> d!1766682 (= c!979432 (isEmpty!34725 (tail!11018 (t!376306 s!2326))))))

(declare-fun e!3448568 () Bool)

(assert (=> d!1766682 (= (matchZipper!1715 (derivationStepZipper!1676 ((_ map or) lt!2255189 lt!2255201) (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))) e!3448568)))

(declare-fun b!5589721 () Bool)

(assert (=> b!5589721 (= e!3448568 (nullableZipper!1572 (derivationStepZipper!1676 ((_ map or) lt!2255189 lt!2255201) (head!11923 (t!376306 s!2326)))))))

(declare-fun b!5589722 () Bool)

(assert (=> b!5589722 (= e!3448568 (matchZipper!1715 (derivationStepZipper!1676 (derivationStepZipper!1676 ((_ map or) lt!2255189 lt!2255201) (head!11923 (t!376306 s!2326))) (head!11923 (tail!11018 (t!376306 s!2326)))) (tail!11018 (tail!11018 (t!376306 s!2326)))))))

(assert (= (and d!1766682 c!979432) b!5589721))

(assert (= (and d!1766682 (not c!979432)) b!5589722))

(assert (=> d!1766682 m!6569172))

(assert (=> d!1766682 m!6569580))

(assert (=> b!5589721 m!6569528))

(declare-fun m!6569970 () Bool)

(assert (=> b!5589721 m!6569970))

(assert (=> b!5589722 m!6569172))

(assert (=> b!5589722 m!6569584))

(assert (=> b!5589722 m!6569528))

(assert (=> b!5589722 m!6569584))

(declare-fun m!6569972 () Bool)

(assert (=> b!5589722 m!6569972))

(assert (=> b!5589722 m!6569172))

(assert (=> b!5589722 m!6569588))

(assert (=> b!5589722 m!6569972))

(assert (=> b!5589722 m!6569588))

(declare-fun m!6569974 () Bool)

(assert (=> b!5589722 m!6569974))

(assert (=> b!5589267 d!1766682))

(declare-fun bs!1292469 () Bool)

(declare-fun d!1766684 () Bool)

(assert (= bs!1292469 (and d!1766684 d!1766596)))

(declare-fun lambda!300005 () Int)

(assert (=> bs!1292469 (= lambda!300005 lambda!299989)))

(declare-fun bs!1292470 () Bool)

(assert (= bs!1292470 (and d!1766684 d!1766632)))

(assert (=> bs!1292470 (= lambda!300005 lambda!299992)))

(declare-fun bs!1292471 () Bool)

(assert (= bs!1292471 (and d!1766684 b!5588545)))

(assert (=> bs!1292471 (= (= (head!11923 (t!376306 s!2326)) (h!69354 s!2326)) (= lambda!300005 lambda!299914))))

(declare-fun bs!1292472 () Bool)

(assert (= bs!1292472 (and d!1766684 d!1766498)))

(assert (=> bs!1292472 (= lambda!300005 lambda!299976)))

(declare-fun bs!1292473 () Bool)

(assert (= bs!1292473 (and d!1766684 d!1766512)))

(assert (=> bs!1292473 (= lambda!300005 lambda!299977)))

(assert (=> d!1766684 true))

(assert (=> d!1766684 (= (derivationStepZipper!1676 ((_ map or) lt!2255189 lt!2255201) (head!11923 (t!376306 s!2326))) (flatMap!1190 ((_ map or) lt!2255189 lt!2255201) lambda!300005))))

(declare-fun bs!1292474 () Bool)

(assert (= bs!1292474 d!1766684))

(declare-fun m!6569976 () Bool)

(assert (=> bs!1292474 m!6569976))

(assert (=> b!5589267 d!1766684))

(assert (=> b!5589267 d!1766506))

(assert (=> b!5589267 d!1766508))

(assert (=> b!5588773 d!1766382))

(declare-fun bs!1292475 () Bool)

(declare-fun d!1766686 () Bool)

(assert (= bs!1292475 (and d!1766686 d!1766340)))

(declare-fun lambda!300006 () Int)

(assert (=> bs!1292475 (= lambda!300006 lambda!299920)))

(declare-fun bs!1292476 () Bool)

(assert (= bs!1292476 (and d!1766686 d!1766382)))

(assert (=> bs!1292476 (= lambda!300006 lambda!299953)))

(declare-fun bs!1292477 () Bool)

(assert (= bs!1292477 (and d!1766686 d!1766352)))

(assert (=> bs!1292477 (= lambda!300006 lambda!299929)))

(declare-fun bs!1292478 () Bool)

(assert (= bs!1292478 (and d!1766686 d!1766412)))

(assert (=> bs!1292478 (= lambda!300006 lambda!299960)))

(declare-fun bs!1292479 () Bool)

(assert (= bs!1292479 (and d!1766686 d!1766348)))

(assert (=> bs!1292479 (= lambda!300006 lambda!299926)))

(declare-fun bs!1292480 () Bool)

(assert (= bs!1292480 (and d!1766686 d!1766582)))

(assert (=> bs!1292480 (= lambda!300006 lambda!299985)))

(declare-fun lt!2255320 () List!63031)

(assert (=> d!1766686 (forall!14743 lt!2255320 lambda!300006)))

(declare-fun e!3448569 () List!63031)

(assert (=> d!1766686 (= lt!2255320 e!3448569)))

(declare-fun c!979433 () Bool)

(assert (=> d!1766686 (= c!979433 ((_ is Cons!62908) (t!376308 zl!343)))))

(assert (=> d!1766686 (= (unfocusZipperList!1005 (t!376308 zl!343)) lt!2255320)))

(declare-fun b!5589723 () Bool)

(assert (=> b!5589723 (= e!3448569 (Cons!62907 (generalisedConcat!1192 (exprs!5461 (h!69356 (t!376308 zl!343)))) (unfocusZipperList!1005 (t!376308 (t!376308 zl!343)))))))

(declare-fun b!5589724 () Bool)

(assert (=> b!5589724 (= e!3448569 Nil!62907)))

(assert (= (and d!1766686 c!979433) b!5589723))

(assert (= (and d!1766686 (not c!979433)) b!5589724))

(declare-fun m!6569978 () Bool)

(assert (=> d!1766686 m!6569978))

(declare-fun m!6569980 () Bool)

(assert (=> b!5589723 m!6569980))

(declare-fun m!6569982 () Bool)

(assert (=> b!5589723 m!6569982))

(assert (=> b!5588773 d!1766686))

(declare-fun bs!1292481 () Bool)

(declare-fun d!1766688 () Bool)

(assert (= bs!1292481 (and d!1766688 d!1766340)))

(declare-fun lambda!300007 () Int)

(assert (=> bs!1292481 (= lambda!300007 lambda!299920)))

(declare-fun bs!1292482 () Bool)

(assert (= bs!1292482 (and d!1766688 d!1766352)))

(assert (=> bs!1292482 (= lambda!300007 lambda!299929)))

(declare-fun bs!1292483 () Bool)

(assert (= bs!1292483 (and d!1766688 d!1766412)))

(assert (=> bs!1292483 (= lambda!300007 lambda!299960)))

(declare-fun bs!1292484 () Bool)

(assert (= bs!1292484 (and d!1766688 d!1766348)))

(assert (=> bs!1292484 (= lambda!300007 lambda!299926)))

(declare-fun bs!1292485 () Bool)

(assert (= bs!1292485 (and d!1766688 d!1766582)))

(assert (=> bs!1292485 (= lambda!300007 lambda!299985)))

(declare-fun bs!1292486 () Bool)

(assert (= bs!1292486 (and d!1766688 d!1766382)))

(assert (=> bs!1292486 (= lambda!300007 lambda!299953)))

(declare-fun bs!1292487 () Bool)

(assert (= bs!1292487 (and d!1766688 d!1766686)))

(assert (=> bs!1292487 (= lambda!300007 lambda!300006)))

(declare-fun b!5589733 () Bool)

(declare-fun e!3448574 () Bool)

(declare-fun e!3448576 () Bool)

(assert (=> b!5589733 (= e!3448574 e!3448576)))

(declare-fun c!979439 () Bool)

(assert (=> b!5589733 (= c!979439 (isEmpty!34723 (tail!11019 (t!376307 (exprs!5461 (h!69356 zl!343))))))))

(declare-fun b!5589734 () Bool)

(declare-fun e!3448579 () Regex!15577)

(assert (=> b!5589734 (= e!3448579 EmptyExpr!15577)))

(declare-fun b!5589735 () Bool)

(declare-fun lt!2255323 () Regex!15577)

(assert (=> b!5589735 (= e!3448574 (isEmptyExpr!1131 lt!2255323))))

(declare-fun b!5589736 () Bool)

(assert (=> b!5589736 (= e!3448579 (Concat!24422 (h!69355 (t!376307 (exprs!5461 (h!69356 zl!343)))) (generalisedConcat!1192 (t!376307 (t!376307 (exprs!5461 (h!69356 zl!343)))))))))

(declare-fun e!3448578 () Bool)

(assert (=> d!1766688 e!3448578))

(declare-fun res!2371670 () Bool)

(assert (=> d!1766688 (=> (not res!2371670) (not e!3448578))))

(assert (=> d!1766688 (= res!2371670 (validRegex!7313 lt!2255323))))

(declare-fun e!3448577 () Regex!15577)

(assert (=> d!1766688 (= lt!2255323 e!3448577)))

(declare-fun c!979436 () Bool)

(declare-fun e!3448575 () Bool)

(assert (=> d!1766688 (= c!979436 e!3448575)))

(declare-fun res!2371669 () Bool)

(assert (=> d!1766688 (=> (not res!2371669) (not e!3448575))))

(assert (=> d!1766688 (= res!2371669 ((_ is Cons!62907) (t!376307 (exprs!5461 (h!69356 zl!343)))))))

(assert (=> d!1766688 (forall!14743 (t!376307 (exprs!5461 (h!69356 zl!343))) lambda!300007)))

(assert (=> d!1766688 (= (generalisedConcat!1192 (t!376307 (exprs!5461 (h!69356 zl!343)))) lt!2255323)))

(declare-fun b!5589737 () Bool)

(assert (=> b!5589737 (= e!3448578 e!3448574)))

(declare-fun c!979438 () Bool)

(assert (=> b!5589737 (= c!979438 (isEmpty!34723 (t!376307 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun b!5589738 () Bool)

(assert (=> b!5589738 (= e!3448577 e!3448579)))

(declare-fun c!979437 () Bool)

(assert (=> b!5589738 (= c!979437 ((_ is Cons!62907) (t!376307 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun b!5589739 () Bool)

(assert (=> b!5589739 (= e!3448576 (isConcat!654 lt!2255323))))

(declare-fun b!5589740 () Bool)

(assert (=> b!5589740 (= e!3448575 (isEmpty!34723 (t!376307 (t!376307 (exprs!5461 (h!69356 zl!343))))))))

(declare-fun b!5589741 () Bool)

(assert (=> b!5589741 (= e!3448577 (h!69355 (t!376307 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun b!5589742 () Bool)

(assert (=> b!5589742 (= e!3448576 (= lt!2255323 (head!11924 (t!376307 (exprs!5461 (h!69356 zl!343))))))))

(assert (= (and d!1766688 res!2371669) b!5589740))

(assert (= (and d!1766688 c!979436) b!5589741))

(assert (= (and d!1766688 (not c!979436)) b!5589738))

(assert (= (and b!5589738 c!979437) b!5589736))

(assert (= (and b!5589738 (not c!979437)) b!5589734))

(assert (= (and d!1766688 res!2371670) b!5589737))

(assert (= (and b!5589737 c!979438) b!5589735))

(assert (= (and b!5589737 (not c!979438)) b!5589733))

(assert (= (and b!5589733 c!979439) b!5589742))

(assert (= (and b!5589733 (not c!979439)) b!5589739))

(declare-fun m!6569984 () Bool)

(assert (=> b!5589742 m!6569984))

(declare-fun m!6569986 () Bool)

(assert (=> b!5589739 m!6569986))

(declare-fun m!6569988 () Bool)

(assert (=> b!5589736 m!6569988))

(declare-fun m!6569990 () Bool)

(assert (=> d!1766688 m!6569990))

(declare-fun m!6569992 () Bool)

(assert (=> d!1766688 m!6569992))

(declare-fun m!6569996 () Bool)

(assert (=> b!5589733 m!6569996))

(assert (=> b!5589733 m!6569996))

(declare-fun m!6569998 () Bool)

(assert (=> b!5589733 m!6569998))

(declare-fun m!6570002 () Bool)

(assert (=> b!5589735 m!6570002))

(assert (=> b!5589737 m!6568956))

(declare-fun m!6570008 () Bool)

(assert (=> b!5589740 m!6570008))

(assert (=> b!5589012 d!1766688))

(assert (=> d!1766458 d!1766572))

(assert (=> d!1766378 d!1766374))

(assert (=> d!1766378 d!1766364))

(declare-fun d!1766690 () Bool)

(assert (=> d!1766690 (= (matchR!7762 r!7292 s!2326) (matchRSpec!2680 r!7292 s!2326))))

(assert (=> d!1766690 true))

(declare-fun _$88!3865 () Unit!155708)

(assert (=> d!1766690 (= (choose!42378 r!7292 s!2326) _$88!3865)))

(declare-fun bs!1292488 () Bool)

(assert (= bs!1292488 d!1766690))

(assert (=> bs!1292488 m!6568960))

(assert (=> bs!1292488 m!6568958))

(assert (=> d!1766378 d!1766690))

(assert (=> d!1766378 d!1766360))

(declare-fun b!5589783 () Bool)

(declare-fun e!3448611 () Bool)

(declare-fun e!3448610 () Bool)

(assert (=> b!5589783 (= e!3448611 e!3448610)))

(declare-fun res!2371697 () Bool)

(assert (=> b!5589783 (=> (not res!2371697) (not e!3448610))))

(assert (=> b!5589783 (= res!2371697 (and (not ((_ is EmptyLang!15577) (regOne!31667 (regOne!31666 r!7292)))) (not ((_ is ElementMatch!15577) (regOne!31667 (regOne!31666 r!7292))))))))

(declare-fun b!5589784 () Bool)

(declare-fun e!3448608 () Bool)

(declare-fun e!3448613 () Bool)

(assert (=> b!5589784 (= e!3448608 e!3448613)))

(declare-fun res!2371696 () Bool)

(declare-fun call!418595 () Bool)

(assert (=> b!5589784 (= res!2371696 call!418595)))

(assert (=> b!5589784 (=> (not res!2371696) (not e!3448613))))

(declare-fun bm!418589 () Bool)

(declare-fun call!418594 () Bool)

(declare-fun c!979448 () Bool)

(assert (=> bm!418589 (= call!418594 (nullable!5609 (ite c!979448 (regTwo!31667 (regOne!31667 (regOne!31666 r!7292))) (regTwo!31666 (regOne!31667 (regOne!31666 r!7292))))))))

(declare-fun bm!418590 () Bool)

(assert (=> bm!418590 (= call!418595 (nullable!5609 (ite c!979448 (regOne!31667 (regOne!31667 (regOne!31666 r!7292))) (regOne!31666 (regOne!31667 (regOne!31666 r!7292))))))))

(declare-fun b!5589785 () Bool)

(declare-fun e!3448612 () Bool)

(assert (=> b!5589785 (= e!3448610 e!3448612)))

(declare-fun res!2371698 () Bool)

(assert (=> b!5589785 (=> res!2371698 e!3448612)))

(assert (=> b!5589785 (= res!2371698 ((_ is Star!15577) (regOne!31667 (regOne!31666 r!7292))))))

(declare-fun d!1766696 () Bool)

(declare-fun res!2371695 () Bool)

(assert (=> d!1766696 (=> res!2371695 e!3448611)))

(assert (=> d!1766696 (= res!2371695 ((_ is EmptyExpr!15577) (regOne!31667 (regOne!31666 r!7292))))))

(assert (=> d!1766696 (= (nullableFct!1718 (regOne!31667 (regOne!31666 r!7292))) e!3448611)))

(declare-fun b!5589786 () Bool)

(declare-fun e!3448609 () Bool)

(assert (=> b!5589786 (= e!3448608 e!3448609)))

(declare-fun res!2371699 () Bool)

(assert (=> b!5589786 (= res!2371699 call!418595)))

(assert (=> b!5589786 (=> res!2371699 e!3448609)))

(declare-fun b!5589787 () Bool)

(assert (=> b!5589787 (= e!3448609 call!418594)))

(declare-fun b!5589788 () Bool)

(assert (=> b!5589788 (= e!3448612 e!3448608)))

(assert (=> b!5589788 (= c!979448 ((_ is Union!15577) (regOne!31667 (regOne!31666 r!7292))))))

(declare-fun b!5589789 () Bool)

(assert (=> b!5589789 (= e!3448613 call!418594)))

(assert (= (and d!1766696 (not res!2371695)) b!5589783))

(assert (= (and b!5589783 res!2371697) b!5589785))

(assert (= (and b!5589785 (not res!2371698)) b!5589788))

(assert (= (and b!5589788 c!979448) b!5589786))

(assert (= (and b!5589788 (not c!979448)) b!5589784))

(assert (= (and b!5589786 (not res!2371699)) b!5589787))

(assert (= (and b!5589784 res!2371696) b!5589789))

(assert (= (or b!5589787 b!5589789) bm!418589))

(assert (= (or b!5589786 b!5589784) bm!418590))

(declare-fun m!6570064 () Bool)

(assert (=> bm!418589 m!6570064))

(declare-fun m!6570066 () Bool)

(assert (=> bm!418590 m!6570066))

(assert (=> d!1766474 d!1766696))

(declare-fun bs!1292491 () Bool)

(declare-fun d!1766706 () Bool)

(assert (= bs!1292491 (and d!1766706 d!1766340)))

(declare-fun lambda!300008 () Int)

(assert (=> bs!1292491 (= lambda!300008 lambda!299920)))

(declare-fun bs!1292492 () Bool)

(assert (= bs!1292492 (and d!1766706 d!1766688)))

(assert (=> bs!1292492 (= lambda!300008 lambda!300007)))

(declare-fun bs!1292493 () Bool)

(assert (= bs!1292493 (and d!1766706 d!1766352)))

(assert (=> bs!1292493 (= lambda!300008 lambda!299929)))

(declare-fun bs!1292494 () Bool)

(assert (= bs!1292494 (and d!1766706 d!1766412)))

(assert (=> bs!1292494 (= lambda!300008 lambda!299960)))

(declare-fun bs!1292495 () Bool)

(assert (= bs!1292495 (and d!1766706 d!1766348)))

(assert (=> bs!1292495 (= lambda!300008 lambda!299926)))

(declare-fun bs!1292496 () Bool)

(assert (= bs!1292496 (and d!1766706 d!1766582)))

(assert (=> bs!1292496 (= lambda!300008 lambda!299985)))

(declare-fun bs!1292497 () Bool)

(assert (= bs!1292497 (and d!1766706 d!1766382)))

(assert (=> bs!1292497 (= lambda!300008 lambda!299953)))

(declare-fun bs!1292498 () Bool)

(assert (= bs!1292498 (and d!1766706 d!1766686)))

(assert (=> bs!1292498 (= lambda!300008 lambda!300006)))

(assert (=> d!1766706 (= (inv!82189 setElem!37243) (forall!14743 (exprs!5461 setElem!37243) lambda!300008))))

(declare-fun bs!1292499 () Bool)

(assert (= bs!1292499 d!1766706))

(declare-fun m!6570082 () Bool)

(assert (=> bs!1292499 m!6570082))

(assert (=> setNonEmpty!37243 d!1766706))

(declare-fun d!1766712 () Bool)

(assert (=> d!1766712 (= (isEmpty!34723 (t!376307 (unfocusZipperList!1005 zl!343))) ((_ is Nil!62907) (t!376307 (unfocusZipperList!1005 zl!343))))))

(assert (=> b!5588764 d!1766712))

(declare-fun d!1766714 () Bool)

(assert (=> d!1766714 true))

(assert (=> d!1766714 true))

(declare-fun res!2371706 () Bool)

(assert (=> d!1766714 (= (choose!42387 lambda!299913) res!2371706)))

(assert (=> d!1766446 d!1766714))

(declare-fun d!1766716 () Bool)

(assert (=> d!1766716 (= (nullable!5609 (reg!15906 r!7292)) (nullableFct!1718 (reg!15906 r!7292)))))

(declare-fun bs!1292500 () Bool)

(assert (= bs!1292500 d!1766716))

(declare-fun m!6570084 () Bool)

(assert (=> bs!1292500 m!6570084))

(assert (=> b!5588811 d!1766716))

(assert (=> bs!1292360 d!1766470))

(declare-fun bs!1292501 () Bool)

(declare-fun d!1766718 () Bool)

(assert (= bs!1292501 (and d!1766718 d!1766590)))

(declare-fun lambda!300009 () Int)

(assert (=> bs!1292501 (= lambda!300009 lambda!299988)))

(declare-fun bs!1292502 () Bool)

(assert (= bs!1292502 (and d!1766718 d!1766624)))

(assert (=> bs!1292502 (= lambda!300009 lambda!299990)))

(declare-fun bs!1292503 () Bool)

(assert (= bs!1292503 (and d!1766718 d!1766626)))

(assert (=> bs!1292503 (= lambda!300009 lambda!299991)))

(assert (=> d!1766718 (= (nullableZipper!1572 lt!2255192) (exists!2165 lt!2255192 lambda!300009))))

(declare-fun bs!1292504 () Bool)

(assert (= bs!1292504 d!1766718))

(declare-fun m!6570086 () Bool)

(assert (=> bs!1292504 m!6570086))

(assert (=> b!5588722 d!1766718))

(declare-fun d!1766720 () Bool)

(declare-fun c!979450 () Bool)

(assert (=> d!1766720 (= c!979450 (isEmpty!34725 (tail!11018 (t!376306 s!2326))))))

(declare-fun e!3448620 () Bool)

(assert (=> d!1766720 (= (matchZipper!1715 (derivationStepZipper!1676 lt!2255189 (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))) e!3448620)))

(declare-fun b!5589798 () Bool)

(assert (=> b!5589798 (= e!3448620 (nullableZipper!1572 (derivationStepZipper!1676 lt!2255189 (head!11923 (t!376306 s!2326)))))))

(declare-fun b!5589799 () Bool)

(assert (=> b!5589799 (= e!3448620 (matchZipper!1715 (derivationStepZipper!1676 (derivationStepZipper!1676 lt!2255189 (head!11923 (t!376306 s!2326))) (head!11923 (tail!11018 (t!376306 s!2326)))) (tail!11018 (tail!11018 (t!376306 s!2326)))))))

(assert (= (and d!1766720 c!979450) b!5589798))

(assert (= (and d!1766720 (not c!979450)) b!5589799))

(assert (=> d!1766720 m!6569172))

(assert (=> d!1766720 m!6569580))

(assert (=> b!5589798 m!6569310))

(declare-fun m!6570088 () Bool)

(assert (=> b!5589798 m!6570088))

(assert (=> b!5589799 m!6569172))

(assert (=> b!5589799 m!6569584))

(assert (=> b!5589799 m!6569310))

(assert (=> b!5589799 m!6569584))

(declare-fun m!6570090 () Bool)

(assert (=> b!5589799 m!6570090))

(assert (=> b!5589799 m!6569172))

(assert (=> b!5589799 m!6569588))

(assert (=> b!5589799 m!6570090))

(assert (=> b!5589799 m!6569588))

(declare-fun m!6570096 () Bool)

(assert (=> b!5589799 m!6570096))

(assert (=> b!5588974 d!1766720))

(declare-fun bs!1292505 () Bool)

(declare-fun d!1766724 () Bool)

(assert (= bs!1292505 (and d!1766724 d!1766596)))

(declare-fun lambda!300010 () Int)

(assert (=> bs!1292505 (= lambda!300010 lambda!299989)))

(declare-fun bs!1292506 () Bool)

(assert (= bs!1292506 (and d!1766724 d!1766632)))

(assert (=> bs!1292506 (= lambda!300010 lambda!299992)))

(declare-fun bs!1292507 () Bool)

(assert (= bs!1292507 (and d!1766724 b!5588545)))

(assert (=> bs!1292507 (= (= (head!11923 (t!376306 s!2326)) (h!69354 s!2326)) (= lambda!300010 lambda!299914))))

(declare-fun bs!1292508 () Bool)

(assert (= bs!1292508 (and d!1766724 d!1766684)))

(assert (=> bs!1292508 (= lambda!300010 lambda!300005)))

(declare-fun bs!1292509 () Bool)

(assert (= bs!1292509 (and d!1766724 d!1766498)))

(assert (=> bs!1292509 (= lambda!300010 lambda!299976)))

(declare-fun bs!1292510 () Bool)

(assert (= bs!1292510 (and d!1766724 d!1766512)))

(assert (=> bs!1292510 (= lambda!300010 lambda!299977)))

(assert (=> d!1766724 true))

(assert (=> d!1766724 (= (derivationStepZipper!1676 lt!2255189 (head!11923 (t!376306 s!2326))) (flatMap!1190 lt!2255189 lambda!300010))))

(declare-fun bs!1292511 () Bool)

(assert (= bs!1292511 d!1766724))

(declare-fun m!6570098 () Bool)

(assert (=> bs!1292511 m!6570098))

(assert (=> b!5588974 d!1766724))

(assert (=> b!5588974 d!1766506))

(assert (=> b!5588974 d!1766508))

(assert (=> b!5589249 d!1766576))

(declare-fun d!1766726 () Bool)

(assert (=> d!1766726 (= (nullable!5609 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (nullableFct!1718 (h!69355 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))))))

(declare-fun bs!1292512 () Bool)

(assert (= bs!1292512 d!1766726))

(declare-fun m!6570100 () Bool)

(assert (=> bs!1292512 m!6570100))

(assert (=> b!5589208 d!1766726))

(declare-fun d!1766728 () Bool)

(assert (=> d!1766728 (= ($colon$colon!1640 (exprs!5461 lt!2255202) (ite (or c!979269 c!979267) (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (regTwo!31667 (regOne!31666 r!7292)))) (Cons!62907 (ite (or c!979269 c!979267) (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (regTwo!31667 (regOne!31666 r!7292))) (exprs!5461 lt!2255202)))))

(assert (=> bm!418463 d!1766728))

(declare-fun bs!1292513 () Bool)

(declare-fun d!1766730 () Bool)

(assert (= bs!1292513 (and d!1766730 d!1766590)))

(declare-fun lambda!300011 () Int)

(assert (=> bs!1292513 (= lambda!300011 lambda!299988)))

(declare-fun bs!1292514 () Bool)

(assert (= bs!1292514 (and d!1766730 d!1766624)))

(assert (=> bs!1292514 (= lambda!300011 lambda!299990)))

(declare-fun bs!1292515 () Bool)

(assert (= bs!1292515 (and d!1766730 d!1766626)))

(assert (=> bs!1292515 (= lambda!300011 lambda!299991)))

(declare-fun bs!1292516 () Bool)

(assert (= bs!1292516 (and d!1766730 d!1766718)))

(assert (=> bs!1292516 (= lambda!300011 lambda!300009)))

(assert (=> d!1766730 (= (nullableZipper!1572 lt!2255201) (exists!2165 lt!2255201 lambda!300011))))

(declare-fun bs!1292517 () Bool)

(assert (= bs!1292517 d!1766730))

(declare-fun m!6570102 () Bool)

(assert (=> bs!1292517 m!6570102))

(assert (=> b!5588815 d!1766730))

(declare-fun b!5589808 () Bool)

(declare-fun e!3448632 () Bool)

(declare-fun e!3448631 () Bool)

(assert (=> b!5589808 (= e!3448632 e!3448631)))

(declare-fun res!2371717 () Bool)

(assert (=> b!5589808 (=> (not res!2371717) (not e!3448631))))

(assert (=> b!5589808 (= res!2371717 (and (not ((_ is EmptyLang!15577) (h!69355 (exprs!5461 (h!69356 zl!343))))) (not ((_ is ElementMatch!15577) (h!69355 (exprs!5461 (h!69356 zl!343)))))))))

(declare-fun b!5589809 () Bool)

(declare-fun e!3448629 () Bool)

(declare-fun e!3448634 () Bool)

(assert (=> b!5589809 (= e!3448629 e!3448634)))

(declare-fun res!2371716 () Bool)

(declare-fun call!418597 () Bool)

(assert (=> b!5589809 (= res!2371716 call!418597)))

(assert (=> b!5589809 (=> (not res!2371716) (not e!3448634))))

(declare-fun bm!418591 () Bool)

(declare-fun call!418596 () Bool)

(declare-fun c!979451 () Bool)

(assert (=> bm!418591 (= call!418596 (nullable!5609 (ite c!979451 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))))))))

(declare-fun bm!418592 () Bool)

(assert (=> bm!418592 (= call!418597 (nullable!5609 (ite c!979451 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))))))))

(declare-fun b!5589810 () Bool)

(declare-fun e!3448633 () Bool)

(assert (=> b!5589810 (= e!3448631 e!3448633)))

(declare-fun res!2371718 () Bool)

(assert (=> b!5589810 (=> res!2371718 e!3448633)))

(assert (=> b!5589810 (= res!2371718 ((_ is Star!15577) (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun d!1766732 () Bool)

(declare-fun res!2371715 () Bool)

(assert (=> d!1766732 (=> res!2371715 e!3448632)))

(assert (=> d!1766732 (= res!2371715 ((_ is EmptyExpr!15577) (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(assert (=> d!1766732 (= (nullableFct!1718 (h!69355 (exprs!5461 (h!69356 zl!343)))) e!3448632)))

(declare-fun b!5589811 () Bool)

(declare-fun e!3448630 () Bool)

(assert (=> b!5589811 (= e!3448629 e!3448630)))

(declare-fun res!2371719 () Bool)

(assert (=> b!5589811 (= res!2371719 call!418597)))

(assert (=> b!5589811 (=> res!2371719 e!3448630)))

(declare-fun b!5589812 () Bool)

(assert (=> b!5589812 (= e!3448630 call!418596)))

(declare-fun b!5589813 () Bool)

(assert (=> b!5589813 (= e!3448633 e!3448629)))

(assert (=> b!5589813 (= c!979451 ((_ is Union!15577) (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun b!5589814 () Bool)

(assert (=> b!5589814 (= e!3448634 call!418596)))

(assert (= (and d!1766732 (not res!2371715)) b!5589808))

(assert (= (and b!5589808 res!2371717) b!5589810))

(assert (= (and b!5589810 (not res!2371718)) b!5589813))

(assert (= (and b!5589813 c!979451) b!5589811))

(assert (= (and b!5589813 (not c!979451)) b!5589809))

(assert (= (and b!5589811 (not res!2371719)) b!5589812))

(assert (= (and b!5589809 res!2371716) b!5589814))

(assert (= (or b!5589812 b!5589814) bm!418591))

(assert (= (or b!5589811 b!5589809) bm!418592))

(declare-fun m!6570108 () Bool)

(assert (=> bm!418591 m!6570108))

(declare-fun m!6570112 () Bool)

(assert (=> bm!418592 m!6570112))

(assert (=> d!1766432 d!1766732))

(assert (=> b!5589016 d!1766478))

(declare-fun d!1766736 () Bool)

(assert (=> d!1766736 true))

(assert (=> d!1766736 true))

(declare-fun res!2371722 () Bool)

(assert (=> d!1766736 (= (choose!42387 lambda!299912) res!2371722)))

(assert (=> d!1766448 d!1766736))

(declare-fun d!1766738 () Bool)

(assert (=> d!1766738 (= (head!11923 s!2326) (h!69354 s!2326))))

(assert (=> b!5588957 d!1766738))

(declare-fun call!418604 () (InoxSet Context!9922))

(declare-fun e!3448644 () (InoxSet Context!9922))

(declare-fun b!5589829 () Bool)

(assert (=> b!5589829 (= e!3448644 ((_ map or) call!418604 (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))))))))) (h!69354 s!2326))))))

(declare-fun b!5589830 () Bool)

(declare-fun e!3448645 () (InoxSet Context!9922))

(assert (=> b!5589830 (= e!3448645 call!418604)))

(declare-fun b!5589831 () Bool)

(assert (=> b!5589831 (= e!3448644 e!3448645)))

(declare-fun c!979457 () Bool)

(assert (=> b!5589831 (= c!979457 ((_ is Cons!62907) (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))))))))

(declare-fun bm!418599 () Bool)

(assert (=> bm!418599 (= call!418604 (derivationStepZipperDown!919 (h!69355 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))))) (Context!9923 (t!376307 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))))))))) (h!69354 s!2326)))))

(declare-fun b!5589832 () Bool)

(declare-fun e!3448646 () Bool)

(assert (=> b!5589832 (= e!3448646 (nullable!5609 (h!69355 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))))))))))))

(declare-fun d!1766740 () Bool)

(declare-fun c!979458 () Bool)

(assert (=> d!1766740 (= c!979458 e!3448646)))

(declare-fun res!2371724 () Bool)

(assert (=> d!1766740 (=> (not res!2371724) (not e!3448646))))

(assert (=> d!1766740 (= res!2371724 ((_ is Cons!62907) (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))))))))

(assert (=> d!1766740 (= (derivationStepZipperUp!845 (Context!9923 (t!376307 (exprs!5461 (Context!9923 (Cons!62907 (h!69355 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343)))))))) (h!69354 s!2326)) e!3448644)))

(declare-fun b!5589833 () Bool)

(assert (=> b!5589833 (= e!3448645 ((as const (Array Context!9922 Bool)) false))))

(assert (= (and d!1766740 res!2371724) b!5589832))

(assert (= (and d!1766740 c!979458) b!5589829))

(assert (= (and d!1766740 (not c!979458)) b!5589831))

(assert (= (and b!5589831 c!979457) b!5589830))

(assert (= (and b!5589831 (not c!979457)) b!5589833))

(assert (= (or b!5589829 b!5589830) bm!418599))

(declare-fun m!6570114 () Bool)

(assert (=> b!5589829 m!6570114))

(declare-fun m!6570116 () Bool)

(assert (=> bm!418599 m!6570116))

(declare-fun m!6570118 () Bool)

(assert (=> b!5589832 m!6570118))

(assert (=> b!5589205 d!1766740))

(declare-fun d!1766742 () Bool)

(assert (=> d!1766742 (= (isUnion!570 lt!2255246) ((_ is Union!15577) lt!2255246))))

(assert (=> b!5588755 d!1766742))

(declare-fun b!5589834 () Bool)

(declare-fun e!3448650 () Bool)

(declare-fun e!3448649 () Bool)

(assert (=> b!5589834 (= e!3448650 e!3448649)))

(declare-fun res!2371727 () Bool)

(assert (=> b!5589834 (=> (not res!2371727) (not e!3448649))))

(assert (=> b!5589834 (= res!2371727 (and (not ((_ is EmptyLang!15577) (regTwo!31667 (regOne!31666 r!7292)))) (not ((_ is ElementMatch!15577) (regTwo!31667 (regOne!31666 r!7292))))))))

(declare-fun b!5589835 () Bool)

(declare-fun e!3448647 () Bool)

(declare-fun e!3448652 () Bool)

(assert (=> b!5589835 (= e!3448647 e!3448652)))

(declare-fun res!2371726 () Bool)

(declare-fun call!418606 () Bool)

(assert (=> b!5589835 (= res!2371726 call!418606)))

(assert (=> b!5589835 (=> (not res!2371726) (not e!3448652))))

(declare-fun bm!418600 () Bool)

(declare-fun call!418605 () Bool)

(declare-fun c!979459 () Bool)

(assert (=> bm!418600 (= call!418605 (nullable!5609 (ite c!979459 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))))))))

(declare-fun bm!418601 () Bool)

(assert (=> bm!418601 (= call!418606 (nullable!5609 (ite c!979459 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))))))))

(declare-fun b!5589836 () Bool)

(declare-fun e!3448651 () Bool)

(assert (=> b!5589836 (= e!3448649 e!3448651)))

(declare-fun res!2371728 () Bool)

(assert (=> b!5589836 (=> res!2371728 e!3448651)))

(assert (=> b!5589836 (= res!2371728 ((_ is Star!15577) (regTwo!31667 (regOne!31666 r!7292))))))

(declare-fun d!1766744 () Bool)

(declare-fun res!2371725 () Bool)

(assert (=> d!1766744 (=> res!2371725 e!3448650)))

(assert (=> d!1766744 (= res!2371725 ((_ is EmptyExpr!15577) (regTwo!31667 (regOne!31666 r!7292))))))

(assert (=> d!1766744 (= (nullableFct!1718 (regTwo!31667 (regOne!31666 r!7292))) e!3448650)))

(declare-fun b!5589837 () Bool)

(declare-fun e!3448648 () Bool)

(assert (=> b!5589837 (= e!3448647 e!3448648)))

(declare-fun res!2371729 () Bool)

(assert (=> b!5589837 (= res!2371729 call!418606)))

(assert (=> b!5589837 (=> res!2371729 e!3448648)))

(declare-fun b!5589838 () Bool)

(assert (=> b!5589838 (= e!3448648 call!418605)))

(declare-fun b!5589839 () Bool)

(assert (=> b!5589839 (= e!3448651 e!3448647)))

(assert (=> b!5589839 (= c!979459 ((_ is Union!15577) (regTwo!31667 (regOne!31666 r!7292))))))

(declare-fun b!5589840 () Bool)

(assert (=> b!5589840 (= e!3448652 call!418605)))

(assert (= (and d!1766744 (not res!2371725)) b!5589834))

(assert (= (and b!5589834 res!2371727) b!5589836))

(assert (= (and b!5589836 (not res!2371728)) b!5589839))

(assert (= (and b!5589839 c!979459) b!5589837))

(assert (= (and b!5589839 (not c!979459)) b!5589835))

(assert (= (and b!5589837 (not res!2371729)) b!5589838))

(assert (= (and b!5589835 res!2371726) b!5589840))

(assert (= (or b!5589838 b!5589840) bm!418600))

(assert (= (or b!5589837 b!5589835) bm!418601))

(declare-fun m!6570130 () Bool)

(assert (=> bm!418600 m!6570130))

(declare-fun m!6570132 () Bool)

(assert (=> bm!418601 m!6570132))

(assert (=> d!1766460 d!1766744))

(assert (=> d!1766380 d!1766572))

(declare-fun d!1766748 () Bool)

(assert (=> d!1766748 (= (isEmpty!34727 (findConcatSeparation!2000 (regOne!31666 r!7292) (regTwo!31666 r!7292) Nil!62906 s!2326 s!2326)) (not ((_ is Some!15585) (findConcatSeparation!2000 (regOne!31666 r!7292) (regTwo!31666 r!7292) Nil!62906 s!2326 s!2326))))))

(assert (=> d!1766454 d!1766748))

(declare-fun bs!1292518 () Bool)

(declare-fun d!1766752 () Bool)

(assert (= bs!1292518 (and d!1766752 d!1766590)))

(declare-fun lambda!300012 () Int)

(assert (=> bs!1292518 (= lambda!300012 lambda!299988)))

(declare-fun bs!1292519 () Bool)

(assert (= bs!1292519 (and d!1766752 d!1766718)))

(assert (=> bs!1292519 (= lambda!300012 lambda!300009)))

(declare-fun bs!1292520 () Bool)

(assert (= bs!1292520 (and d!1766752 d!1766730)))

(assert (=> bs!1292520 (= lambda!300012 lambda!300011)))

(declare-fun bs!1292521 () Bool)

(assert (= bs!1292521 (and d!1766752 d!1766626)))

(assert (=> bs!1292521 (= lambda!300012 lambda!299991)))

(declare-fun bs!1292522 () Bool)

(assert (= bs!1292522 (and d!1766752 d!1766624)))

(assert (=> bs!1292522 (= lambda!300012 lambda!299990)))

(assert (=> d!1766752 (= (nullableZipper!1572 ((_ map or) lt!2255199 lt!2255201)) (exists!2165 ((_ map or) lt!2255199 lt!2255201) lambda!300012))))

(declare-fun bs!1292523 () Bool)

(assert (= bs!1292523 d!1766752))

(declare-fun m!6570138 () Bool)

(assert (=> bs!1292523 m!6570138))

(assert (=> b!5589107 d!1766752))

(declare-fun bs!1292524 () Bool)

(declare-fun d!1766754 () Bool)

(assert (= bs!1292524 (and d!1766754 d!1766688)))

(declare-fun lambda!300013 () Int)

(assert (=> bs!1292524 (= lambda!300013 lambda!300007)))

(declare-fun bs!1292525 () Bool)

(assert (= bs!1292525 (and d!1766754 d!1766352)))

(assert (=> bs!1292525 (= lambda!300013 lambda!299929)))

(declare-fun bs!1292526 () Bool)

(assert (= bs!1292526 (and d!1766754 d!1766412)))

(assert (=> bs!1292526 (= lambda!300013 lambda!299960)))

(declare-fun bs!1292527 () Bool)

(assert (= bs!1292527 (and d!1766754 d!1766348)))

(assert (=> bs!1292527 (= lambda!300013 lambda!299926)))

(declare-fun bs!1292528 () Bool)

(assert (= bs!1292528 (and d!1766754 d!1766582)))

(assert (=> bs!1292528 (= lambda!300013 lambda!299985)))

(declare-fun bs!1292529 () Bool)

(assert (= bs!1292529 (and d!1766754 d!1766340)))

(assert (=> bs!1292529 (= lambda!300013 lambda!299920)))

(declare-fun bs!1292530 () Bool)

(assert (= bs!1292530 (and d!1766754 d!1766706)))

(assert (=> bs!1292530 (= lambda!300013 lambda!300008)))

(declare-fun bs!1292531 () Bool)

(assert (= bs!1292531 (and d!1766754 d!1766382)))

(assert (=> bs!1292531 (= lambda!300013 lambda!299953)))

(declare-fun bs!1292532 () Bool)

(assert (= bs!1292532 (and d!1766754 d!1766686)))

(assert (=> bs!1292532 (= lambda!300013 lambda!300006)))

(assert (=> d!1766754 (= (inv!82189 (h!69356 (t!376308 zl!343))) (forall!14743 (exprs!5461 (h!69356 (t!376308 zl!343))) lambda!300013))))

(declare-fun bs!1292534 () Bool)

(assert (= bs!1292534 d!1766754))

(declare-fun m!6570146 () Bool)

(assert (=> bs!1292534 m!6570146))

(assert (=> b!5589299 d!1766754))

(declare-fun d!1766760 () Bool)

(assert (=> d!1766760 (= ($colon$colon!1640 (exprs!5461 lt!2255202) (ite (or c!979299 c!979297) (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (h!69355 (exprs!5461 (h!69356 zl!343))))) (Cons!62907 (ite (or c!979299 c!979297) (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (h!69355 (exprs!5461 (h!69356 zl!343)))) (exprs!5461 lt!2255202)))))

(assert (=> bm!418491 d!1766760))

(declare-fun bs!1292536 () Bool)

(declare-fun d!1766762 () Bool)

(assert (= bs!1292536 (and d!1766762 d!1766590)))

(declare-fun lambda!300015 () Int)

(assert (=> bs!1292536 (= lambda!300015 lambda!299988)))

(declare-fun bs!1292537 () Bool)

(assert (= bs!1292537 (and d!1766762 d!1766752)))

(assert (=> bs!1292537 (= lambda!300015 lambda!300012)))

(declare-fun bs!1292538 () Bool)

(assert (= bs!1292538 (and d!1766762 d!1766718)))

(assert (=> bs!1292538 (= lambda!300015 lambda!300009)))

(declare-fun bs!1292539 () Bool)

(assert (= bs!1292539 (and d!1766762 d!1766730)))

(assert (=> bs!1292539 (= lambda!300015 lambda!300011)))

(declare-fun bs!1292540 () Bool)

(assert (= bs!1292540 (and d!1766762 d!1766626)))

(assert (=> bs!1292540 (= lambda!300015 lambda!299991)))

(declare-fun bs!1292541 () Bool)

(assert (= bs!1292541 (and d!1766762 d!1766624)))

(assert (=> bs!1292541 (= lambda!300015 lambda!299990)))

(assert (=> d!1766762 (= (nullableZipper!1572 lt!2255199) (exists!2165 lt!2255199 lambda!300015))))

(declare-fun bs!1292542 () Bool)

(assert (= bs!1292542 d!1766762))

(declare-fun m!6570150 () Bool)

(assert (=> bs!1292542 m!6570150))

(assert (=> b!5588777 d!1766762))

(assert (=> d!1766476 d!1766462))

(declare-fun d!1766766 () Bool)

(assert (=> d!1766766 (= (flatMap!1190 lt!2255188 lambda!299914) (dynLambda!24601 lambda!299914 lt!2255209))))

(assert (=> d!1766766 true))

(declare-fun _$13!2180 () Unit!155708)

(assert (=> d!1766766 (= (choose!42383 lt!2255188 lt!2255209 lambda!299914) _$13!2180)))

(declare-fun b_lambda!211795 () Bool)

(assert (=> (not b_lambda!211795) (not d!1766766)))

(declare-fun bs!1292543 () Bool)

(assert (= bs!1292543 d!1766766))

(assert (=> bs!1292543 m!6568992))

(assert (=> bs!1292543 m!6569558))

(assert (=> d!1766476 d!1766766))

(declare-fun d!1766768 () Bool)

(assert (=> d!1766768 (= (isEmpty!34723 (exprs!5461 (h!69356 zl!343))) ((_ is Nil!62907) (exprs!5461 (h!69356 zl!343))))))

(assert (=> b!5589013 d!1766768))

(assert (=> b!5588699 d!1766362))

(declare-fun b!5589857 () Bool)

(declare-fun res!2371746 () Bool)

(declare-fun e!3448672 () Bool)

(assert (=> b!5589857 (=> (not res!2371746) (not e!3448672))))

(assert (=> b!5589857 (= res!2371746 (isEmpty!34725 (tail!11018 (tail!11018 s!2326))))))

(declare-fun b!5589858 () Bool)

(declare-fun e!3448669 () Bool)

(declare-fun e!3448666 () Bool)

(assert (=> b!5589858 (= e!3448669 e!3448666)))

(declare-fun c!979465 () Bool)

(assert (=> b!5589858 (= c!979465 ((_ is EmptyLang!15577) (derivativeStep!4424 r!7292 (head!11923 s!2326))))))

(declare-fun b!5589859 () Bool)

(declare-fun lt!2255333 () Bool)

(declare-fun call!418612 () Bool)

(assert (=> b!5589859 (= e!3448669 (= lt!2255333 call!418612))))

(declare-fun b!5589860 () Bool)

(declare-fun res!2371747 () Bool)

(declare-fun e!3448668 () Bool)

(assert (=> b!5589860 (=> res!2371747 e!3448668)))

(assert (=> b!5589860 (= res!2371747 (not ((_ is ElementMatch!15577) (derivativeStep!4424 r!7292 (head!11923 s!2326)))))))

(assert (=> b!5589860 (= e!3448666 e!3448668)))

(declare-fun b!5589861 () Bool)

(declare-fun res!2371741 () Bool)

(assert (=> b!5589861 (=> res!2371741 e!3448668)))

(assert (=> b!5589861 (= res!2371741 e!3448672)))

(declare-fun res!2371744 () Bool)

(assert (=> b!5589861 (=> (not res!2371744) (not e!3448672))))

(assert (=> b!5589861 (= res!2371744 lt!2255333)))

(declare-fun b!5589862 () Bool)

(declare-fun e!3448667 () Bool)

(assert (=> b!5589862 (= e!3448667 (nullable!5609 (derivativeStep!4424 r!7292 (head!11923 s!2326))))))

(declare-fun b!5589863 () Bool)

(assert (=> b!5589863 (= e!3448667 (matchR!7762 (derivativeStep!4424 (derivativeStep!4424 r!7292 (head!11923 s!2326)) (head!11923 (tail!11018 s!2326))) (tail!11018 (tail!11018 s!2326))))))

(declare-fun b!5589864 () Bool)

(assert (=> b!5589864 (= e!3448666 (not lt!2255333))))

(declare-fun bm!418607 () Bool)

(assert (=> bm!418607 (= call!418612 (isEmpty!34725 (tail!11018 s!2326)))))

(declare-fun d!1766770 () Bool)

(assert (=> d!1766770 e!3448669))

(declare-fun c!979464 () Bool)

(assert (=> d!1766770 (= c!979464 ((_ is EmptyExpr!15577) (derivativeStep!4424 r!7292 (head!11923 s!2326))))))

(assert (=> d!1766770 (= lt!2255333 e!3448667)))

(declare-fun c!979463 () Bool)

(assert (=> d!1766770 (= c!979463 (isEmpty!34725 (tail!11018 s!2326)))))

(assert (=> d!1766770 (validRegex!7313 (derivativeStep!4424 r!7292 (head!11923 s!2326)))))

(assert (=> d!1766770 (= (matchR!7762 (derivativeStep!4424 r!7292 (head!11923 s!2326)) (tail!11018 s!2326)) lt!2255333)))

(declare-fun b!5589865 () Bool)

(declare-fun e!3448670 () Bool)

(assert (=> b!5589865 (= e!3448668 e!3448670)))

(declare-fun res!2371742 () Bool)

(assert (=> b!5589865 (=> (not res!2371742) (not e!3448670))))

(assert (=> b!5589865 (= res!2371742 (not lt!2255333))))

(declare-fun b!5589866 () Bool)

(declare-fun e!3448671 () Bool)

(assert (=> b!5589866 (= e!3448670 e!3448671)))

(declare-fun res!2371743 () Bool)

(assert (=> b!5589866 (=> res!2371743 e!3448671)))

(assert (=> b!5589866 (= res!2371743 call!418612)))

(declare-fun b!5589867 () Bool)

(declare-fun res!2371740 () Bool)

(assert (=> b!5589867 (=> (not res!2371740) (not e!3448672))))

(assert (=> b!5589867 (= res!2371740 (not call!418612))))

(declare-fun b!5589868 () Bool)

(declare-fun res!2371745 () Bool)

(assert (=> b!5589868 (=> res!2371745 e!3448671)))

(assert (=> b!5589868 (= res!2371745 (not (isEmpty!34725 (tail!11018 (tail!11018 s!2326)))))))

(declare-fun b!5589869 () Bool)

(assert (=> b!5589869 (= e!3448672 (= (head!11923 (tail!11018 s!2326)) (c!979094 (derivativeStep!4424 r!7292 (head!11923 s!2326)))))))

(declare-fun b!5589870 () Bool)

(assert (=> b!5589870 (= e!3448671 (not (= (head!11923 (tail!11018 s!2326)) (c!979094 (derivativeStep!4424 r!7292 (head!11923 s!2326))))))))

(assert (= (and d!1766770 c!979463) b!5589862))

(assert (= (and d!1766770 (not c!979463)) b!5589863))

(assert (= (and d!1766770 c!979464) b!5589859))

(assert (= (and d!1766770 (not c!979464)) b!5589858))

(assert (= (and b!5589858 c!979465) b!5589864))

(assert (= (and b!5589858 (not c!979465)) b!5589860))

(assert (= (and b!5589860 (not res!2371747)) b!5589861))

(assert (= (and b!5589861 res!2371744) b!5589867))

(assert (= (and b!5589867 res!2371740) b!5589857))

(assert (= (and b!5589857 res!2371746) b!5589869))

(assert (= (and b!5589861 (not res!2371741)) b!5589865))

(assert (= (and b!5589865 res!2371742) b!5589866))

(assert (= (and b!5589866 (not res!2371743)) b!5589868))

(assert (= (and b!5589868 (not res!2371745)) b!5589870))

(assert (= (or b!5589859 b!5589866 b!5589867) bm!418607))

(assert (=> b!5589869 m!6569300))

(declare-fun m!6570152 () Bool)

(assert (=> b!5589869 m!6570152))

(assert (=> b!5589862 m!6569298))

(declare-fun m!6570156 () Bool)

(assert (=> b!5589862 m!6570156))

(assert (=> b!5589870 m!6569300))

(assert (=> b!5589870 m!6570152))

(assert (=> bm!418607 m!6569300))

(assert (=> bm!418607 m!6569304))

(assert (=> b!5589863 m!6569300))

(assert (=> b!5589863 m!6570152))

(assert (=> b!5589863 m!6569298))

(assert (=> b!5589863 m!6570152))

(declare-fun m!6570158 () Bool)

(assert (=> b!5589863 m!6570158))

(assert (=> b!5589863 m!6569300))

(declare-fun m!6570160 () Bool)

(assert (=> b!5589863 m!6570160))

(assert (=> b!5589863 m!6570158))

(assert (=> b!5589863 m!6570160))

(declare-fun m!6570164 () Bool)

(assert (=> b!5589863 m!6570164))

(assert (=> d!1766770 m!6569300))

(assert (=> d!1766770 m!6569304))

(assert (=> d!1766770 m!6569298))

(declare-fun m!6570168 () Bool)

(assert (=> d!1766770 m!6570168))

(assert (=> b!5589857 m!6569300))

(assert (=> b!5589857 m!6570160))

(assert (=> b!5589857 m!6570160))

(declare-fun m!6570170 () Bool)

(assert (=> b!5589857 m!6570170))

(assert (=> b!5589868 m!6569300))

(assert (=> b!5589868 m!6570160))

(assert (=> b!5589868 m!6570160))

(assert (=> b!5589868 m!6570170))

(assert (=> b!5588951 d!1766770))

(declare-fun b!5589946 () Bool)

(declare-fun e!3448718 () Regex!15577)

(declare-fun e!3448722 () Regex!15577)

(assert (=> b!5589946 (= e!3448718 e!3448722)))

(declare-fun c!979499 () Bool)

(assert (=> b!5589946 (= c!979499 ((_ is ElementMatch!15577) r!7292))))

(declare-fun bm!418640 () Bool)

(declare-fun c!979498 () Bool)

(declare-fun call!418646 () Regex!15577)

(declare-fun c!979500 () Bool)

(declare-fun c!979497 () Bool)

(assert (=> bm!418640 (= call!418646 (derivativeStep!4424 (ite c!979498 (regOne!31667 r!7292) (ite c!979497 (reg!15906 r!7292) (ite c!979500 (regTwo!31666 r!7292) (regOne!31666 r!7292)))) (head!11923 s!2326)))))

(declare-fun b!5589947 () Bool)

(assert (=> b!5589947 (= e!3448722 (ite (= (head!11923 s!2326) (c!979094 r!7292)) EmptyExpr!15577 EmptyLang!15577))))

(declare-fun b!5589948 () Bool)

(assert (=> b!5589948 (= c!979500 (nullable!5609 (regOne!31666 r!7292)))))

(declare-fun e!3448721 () Regex!15577)

(declare-fun e!3448719 () Regex!15577)

(assert (=> b!5589948 (= e!3448721 e!3448719)))

(declare-fun b!5589949 () Bool)

(declare-fun e!3448720 () Regex!15577)

(declare-fun call!418645 () Regex!15577)

(assert (=> b!5589949 (= e!3448720 (Union!15577 call!418646 call!418645))))

(declare-fun bm!418641 () Bool)

(declare-fun call!418648 () Regex!15577)

(declare-fun call!418647 () Regex!15577)

(assert (=> bm!418641 (= call!418648 call!418647)))

(declare-fun b!5589950 () Bool)

(assert (=> b!5589950 (= e!3448718 EmptyLang!15577)))

(declare-fun bm!418642 () Bool)

(assert (=> bm!418642 (= call!418645 (derivativeStep!4424 (ite c!979498 (regTwo!31667 r!7292) (regOne!31666 r!7292)) (head!11923 s!2326)))))

(declare-fun b!5589951 () Bool)

(assert (=> b!5589951 (= c!979498 ((_ is Union!15577) r!7292))))

(assert (=> b!5589951 (= e!3448722 e!3448720)))

(declare-fun d!1766780 () Bool)

(declare-fun lt!2255336 () Regex!15577)

(assert (=> d!1766780 (validRegex!7313 lt!2255336)))

(assert (=> d!1766780 (= lt!2255336 e!3448718)))

(declare-fun c!979496 () Bool)

(assert (=> d!1766780 (= c!979496 (or ((_ is EmptyExpr!15577) r!7292) ((_ is EmptyLang!15577) r!7292)))))

(assert (=> d!1766780 (validRegex!7313 r!7292)))

(assert (=> d!1766780 (= (derivativeStep!4424 r!7292 (head!11923 s!2326)) lt!2255336)))

(declare-fun b!5589952 () Bool)

(assert (=> b!5589952 (= e!3448719 (Union!15577 (Concat!24422 call!418645 (regTwo!31666 r!7292)) call!418648))))

(declare-fun bm!418643 () Bool)

(assert (=> bm!418643 (= call!418647 call!418646)))

(declare-fun b!5589953 () Bool)

(assert (=> b!5589953 (= e!3448721 (Concat!24422 call!418647 r!7292))))

(declare-fun b!5589954 () Bool)

(assert (=> b!5589954 (= e!3448719 (Union!15577 (Concat!24422 call!418648 (regTwo!31666 r!7292)) EmptyLang!15577))))

(declare-fun b!5589955 () Bool)

(assert (=> b!5589955 (= e!3448720 e!3448721)))

(assert (=> b!5589955 (= c!979497 ((_ is Star!15577) r!7292))))

(assert (= (and d!1766780 c!979496) b!5589950))

(assert (= (and d!1766780 (not c!979496)) b!5589946))

(assert (= (and b!5589946 c!979499) b!5589947))

(assert (= (and b!5589946 (not c!979499)) b!5589951))

(assert (= (and b!5589951 c!979498) b!5589949))

(assert (= (and b!5589951 (not c!979498)) b!5589955))

(assert (= (and b!5589955 c!979497) b!5589953))

(assert (= (and b!5589955 (not c!979497)) b!5589948))

(assert (= (and b!5589948 c!979500) b!5589952))

(assert (= (and b!5589948 (not c!979500)) b!5589954))

(assert (= (or b!5589952 b!5589954) bm!418641))

(assert (= (or b!5589953 bm!418641) bm!418643))

(assert (= (or b!5589949 b!5589952) bm!418642))

(assert (= (or b!5589949 bm!418643) bm!418640))

(assert (=> bm!418640 m!6569294))

(declare-fun m!6570224 () Bool)

(assert (=> bm!418640 m!6570224))

(assert (=> b!5589948 m!6568984))

(assert (=> bm!418642 m!6569294))

(declare-fun m!6570226 () Bool)

(assert (=> bm!418642 m!6570226))

(declare-fun m!6570228 () Bool)

(assert (=> d!1766780 m!6570228))

(assert (=> d!1766780 m!6568994))

(assert (=> b!5588951 d!1766780))

(assert (=> b!5588951 d!1766738))

(assert (=> b!5588951 d!1766666))

(declare-fun b!5589956 () Bool)

(declare-fun res!2371766 () Bool)

(declare-fun e!3448728 () Bool)

(assert (=> b!5589956 (=> (not res!2371766) (not e!3448728))))

(declare-fun call!418649 () Bool)

(assert (=> b!5589956 (= res!2371766 call!418649)))

(declare-fun e!3448727 () Bool)

(assert (=> b!5589956 (= e!3448727 e!3448728)))

(declare-fun b!5589957 () Bool)

(declare-fun call!418651 () Bool)

(assert (=> b!5589957 (= e!3448728 call!418651)))

(declare-fun d!1766806 () Bool)

(declare-fun res!2371764 () Bool)

(declare-fun e!3448725 () Bool)

(assert (=> d!1766806 (=> res!2371764 e!3448725)))

(assert (=> d!1766806 (= res!2371764 ((_ is ElementMatch!15577) lt!2255246))))

(assert (=> d!1766806 (= (validRegex!7313 lt!2255246) e!3448725)))

(declare-fun bm!418644 () Bool)

(declare-fun call!418650 () Bool)

(assert (=> bm!418644 (= call!418651 call!418650)))

(declare-fun b!5589958 () Bool)

(declare-fun e!3448729 () Bool)

(assert (=> b!5589958 (= e!3448725 e!3448729)))

(declare-fun c!979501 () Bool)

(assert (=> b!5589958 (= c!979501 ((_ is Star!15577) lt!2255246))))

(declare-fun b!5589959 () Bool)

(declare-fun e!3448726 () Bool)

(assert (=> b!5589959 (= e!3448726 call!418650)))

(declare-fun bm!418645 () Bool)

(declare-fun c!979502 () Bool)

(assert (=> bm!418645 (= call!418649 (validRegex!7313 (ite c!979502 (regOne!31667 lt!2255246) (regOne!31666 lt!2255246))))))

(declare-fun b!5589960 () Bool)

(declare-fun res!2371763 () Bool)

(declare-fun e!3448723 () Bool)

(assert (=> b!5589960 (=> res!2371763 e!3448723)))

(assert (=> b!5589960 (= res!2371763 (not ((_ is Concat!24422) lt!2255246)))))

(assert (=> b!5589960 (= e!3448727 e!3448723)))

(declare-fun b!5589961 () Bool)

(assert (=> b!5589961 (= e!3448729 e!3448726)))

(declare-fun res!2371767 () Bool)

(assert (=> b!5589961 (= res!2371767 (not (nullable!5609 (reg!15906 lt!2255246))))))

(assert (=> b!5589961 (=> (not res!2371767) (not e!3448726))))

(declare-fun b!5589962 () Bool)

(declare-fun e!3448724 () Bool)

(assert (=> b!5589962 (= e!3448723 e!3448724)))

(declare-fun res!2371765 () Bool)

(assert (=> b!5589962 (=> (not res!2371765) (not e!3448724))))

(assert (=> b!5589962 (= res!2371765 call!418649)))

(declare-fun bm!418646 () Bool)

(assert (=> bm!418646 (= call!418650 (validRegex!7313 (ite c!979501 (reg!15906 lt!2255246) (ite c!979502 (regTwo!31667 lt!2255246) (regTwo!31666 lt!2255246)))))))

(declare-fun b!5589963 () Bool)

(assert (=> b!5589963 (= e!3448729 e!3448727)))

(assert (=> b!5589963 (= c!979502 ((_ is Union!15577) lt!2255246))))

(declare-fun b!5589964 () Bool)

(assert (=> b!5589964 (= e!3448724 call!418651)))

(assert (= (and d!1766806 (not res!2371764)) b!5589958))

(assert (= (and b!5589958 c!979501) b!5589961))

(assert (= (and b!5589958 (not c!979501)) b!5589963))

(assert (= (and b!5589961 res!2371767) b!5589959))

(assert (= (and b!5589963 c!979502) b!5589956))

(assert (= (and b!5589963 (not c!979502)) b!5589960))

(assert (= (and b!5589956 res!2371766) b!5589957))

(assert (= (and b!5589960 (not res!2371763)) b!5589962))

(assert (= (and b!5589962 res!2371765) b!5589964))

(assert (= (or b!5589957 b!5589964) bm!418644))

(assert (= (or b!5589956 b!5589962) bm!418645))

(assert (= (or b!5589959 bm!418644) bm!418646))

(declare-fun m!6570230 () Bool)

(assert (=> bm!418645 m!6570230))

(declare-fun m!6570232 () Bool)

(assert (=> b!5589961 m!6570232))

(declare-fun m!6570234 () Bool)

(assert (=> bm!418646 m!6570234))

(assert (=> d!1766340 d!1766806))

(declare-fun d!1766808 () Bool)

(declare-fun res!2371772 () Bool)

(declare-fun e!3448732 () Bool)

(assert (=> d!1766808 (=> res!2371772 e!3448732)))

(assert (=> d!1766808 (= res!2371772 ((_ is Nil!62907) (unfocusZipperList!1005 zl!343)))))

(assert (=> d!1766808 (= (forall!14743 (unfocusZipperList!1005 zl!343) lambda!299920) e!3448732)))

(declare-fun b!5589969 () Bool)

(declare-fun e!3448733 () Bool)

(assert (=> b!5589969 (= e!3448732 e!3448733)))

(declare-fun res!2371773 () Bool)

(assert (=> b!5589969 (=> (not res!2371773) (not e!3448733))))

(assert (=> b!5589969 (= res!2371773 (dynLambda!24602 lambda!299920 (h!69355 (unfocusZipperList!1005 zl!343))))))

(declare-fun b!5589970 () Bool)

(assert (=> b!5589970 (= e!3448733 (forall!14743 (t!376307 (unfocusZipperList!1005 zl!343)) lambda!299920))))

(assert (= (and d!1766808 (not res!2371772)) b!5589969))

(assert (= (and b!5589969 res!2371773) b!5589970))

(declare-fun b_lambda!211799 () Bool)

(assert (=> (not b_lambda!211799) (not b!5589969)))

(declare-fun m!6570236 () Bool)

(assert (=> b!5589969 m!6570236))

(declare-fun m!6570238 () Bool)

(assert (=> b!5589970 m!6570238))

(assert (=> d!1766340 d!1766808))

(declare-fun b!5589971 () Bool)

(declare-fun e!3448735 () Bool)

(assert (=> b!5589971 (= e!3448735 (nullable!5609 (regOne!31666 (h!69355 (exprs!5461 lt!2255204)))))))

(declare-fun b!5589972 () Bool)

(declare-fun e!3448739 () (InoxSet Context!9922))

(declare-fun call!418655 () (InoxSet Context!9922))

(assert (=> b!5589972 (= e!3448739 call!418655)))

(declare-fun bm!418647 () Bool)

(declare-fun c!979505 () Bool)

(declare-fun call!418657 () List!63031)

(declare-fun c!979507 () Bool)

(assert (=> bm!418647 (= call!418657 ($colon$colon!1640 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255204)))) (ite (or c!979507 c!979505) (regTwo!31666 (h!69355 (exprs!5461 lt!2255204))) (h!69355 (exprs!5461 lt!2255204)))))))

(declare-fun c!979506 () Bool)

(declare-fun call!418653 () (InoxSet Context!9922))

(declare-fun bm!418648 () Bool)

(declare-fun call!418652 () List!63031)

(assert (=> bm!418648 (= call!418653 (derivationStepZipperDown!919 (ite c!979506 (regOne!31667 (h!69355 (exprs!5461 lt!2255204))) (ite c!979507 (regTwo!31666 (h!69355 (exprs!5461 lt!2255204))) (ite c!979505 (regOne!31666 (h!69355 (exprs!5461 lt!2255204))) (reg!15906 (h!69355 (exprs!5461 lt!2255204)))))) (ite (or c!979506 c!979507) (Context!9923 (t!376307 (exprs!5461 lt!2255204))) (Context!9923 call!418652)) (h!69354 s!2326)))))

(declare-fun b!5589973 () Bool)

(declare-fun e!3448738 () (InoxSet Context!9922))

(declare-fun e!3448737 () (InoxSet Context!9922))

(assert (=> b!5589973 (= e!3448738 e!3448737)))

(assert (=> b!5589973 (= c!979506 ((_ is Union!15577) (h!69355 (exprs!5461 lt!2255204))))))

(declare-fun d!1766810 () Bool)

(declare-fun c!979504 () Bool)

(assert (=> d!1766810 (= c!979504 (and ((_ is ElementMatch!15577) (h!69355 (exprs!5461 lt!2255204))) (= (c!979094 (h!69355 (exprs!5461 lt!2255204))) (h!69354 s!2326))))))

(assert (=> d!1766810 (= (derivationStepZipperDown!919 (h!69355 (exprs!5461 lt!2255204)) (Context!9923 (t!376307 (exprs!5461 lt!2255204))) (h!69354 s!2326)) e!3448738)))

(declare-fun bm!418649 () Bool)

(declare-fun call!418654 () (InoxSet Context!9922))

(assert (=> bm!418649 (= call!418654 call!418653)))

(declare-fun b!5589974 () Bool)

(declare-fun e!3448734 () (InoxSet Context!9922))

(assert (=> b!5589974 (= e!3448734 e!3448739)))

(assert (=> b!5589974 (= c!979505 ((_ is Concat!24422) (h!69355 (exprs!5461 lt!2255204))))))

(declare-fun b!5589975 () Bool)

(assert (=> b!5589975 (= c!979507 e!3448735)))

(declare-fun res!2371774 () Bool)

(assert (=> b!5589975 (=> (not res!2371774) (not e!3448735))))

(assert (=> b!5589975 (= res!2371774 ((_ is Concat!24422) (h!69355 (exprs!5461 lt!2255204))))))

(assert (=> b!5589975 (= e!3448737 e!3448734)))

(declare-fun b!5589976 () Bool)

(declare-fun e!3448736 () (InoxSet Context!9922))

(assert (=> b!5589976 (= e!3448736 call!418655)))

(declare-fun bm!418650 () Bool)

(assert (=> bm!418650 (= call!418652 call!418657)))

(declare-fun b!5589977 () Bool)

(assert (=> b!5589977 (= e!3448738 (store ((as const (Array Context!9922 Bool)) false) (Context!9923 (t!376307 (exprs!5461 lt!2255204))) true))))

(declare-fun b!5589978 () Bool)

(declare-fun call!418656 () (InoxSet Context!9922))

(assert (=> b!5589978 (= e!3448737 ((_ map or) call!418653 call!418656))))

(declare-fun b!5589979 () Bool)

(assert (=> b!5589979 (= e!3448734 ((_ map or) call!418656 call!418654))))

(declare-fun b!5589980 () Bool)

(declare-fun c!979503 () Bool)

(assert (=> b!5589980 (= c!979503 ((_ is Star!15577) (h!69355 (exprs!5461 lt!2255204))))))

(assert (=> b!5589980 (= e!3448739 e!3448736)))

(declare-fun b!5589981 () Bool)

(assert (=> b!5589981 (= e!3448736 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418651 () Bool)

(assert (=> bm!418651 (= call!418655 call!418654)))

(declare-fun bm!418652 () Bool)

(assert (=> bm!418652 (= call!418656 (derivationStepZipperDown!919 (ite c!979506 (regTwo!31667 (h!69355 (exprs!5461 lt!2255204))) (regOne!31666 (h!69355 (exprs!5461 lt!2255204)))) (ite c!979506 (Context!9923 (t!376307 (exprs!5461 lt!2255204))) (Context!9923 call!418657)) (h!69354 s!2326)))))

(assert (= (and d!1766810 c!979504) b!5589977))

(assert (= (and d!1766810 (not c!979504)) b!5589973))

(assert (= (and b!5589973 c!979506) b!5589978))

(assert (= (and b!5589973 (not c!979506)) b!5589975))

(assert (= (and b!5589975 res!2371774) b!5589971))

(assert (= (and b!5589975 c!979507) b!5589979))

(assert (= (and b!5589975 (not c!979507)) b!5589974))

(assert (= (and b!5589974 c!979505) b!5589972))

(assert (= (and b!5589974 (not c!979505)) b!5589980))

(assert (= (and b!5589980 c!979503) b!5589976))

(assert (= (and b!5589980 (not c!979503)) b!5589981))

(assert (= (or b!5589972 b!5589976) bm!418650))

(assert (= (or b!5589972 b!5589976) bm!418651))

(assert (= (or b!5589979 bm!418650) bm!418647))

(assert (= (or b!5589979 bm!418651) bm!418649))

(assert (= (or b!5589978 b!5589979) bm!418652))

(assert (= (or b!5589978 bm!418649) bm!418648))

(declare-fun m!6570240 () Bool)

(assert (=> bm!418652 m!6570240))

(declare-fun m!6570242 () Bool)

(assert (=> b!5589971 m!6570242))

(declare-fun m!6570244 () Bool)

(assert (=> b!5589977 m!6570244))

(declare-fun m!6570246 () Bool)

(assert (=> bm!418647 m!6570246))

(declare-fun m!6570248 () Bool)

(assert (=> bm!418648 m!6570248))

(assert (=> bm!418499 d!1766810))

(declare-fun d!1766812 () Bool)

(declare-fun res!2371779 () Bool)

(declare-fun e!3448742 () Bool)

(assert (=> d!1766812 (=> res!2371779 e!3448742)))

(assert (=> d!1766812 (= res!2371779 ((_ is Nil!62907) (exprs!5461 setElem!37237)))))

(assert (=> d!1766812 (= (forall!14743 (exprs!5461 setElem!37237) lambda!299960) e!3448742)))

(declare-fun b!5589986 () Bool)

(declare-fun e!3448743 () Bool)

(assert (=> b!5589986 (= e!3448742 e!3448743)))

(declare-fun res!2371780 () Bool)

(assert (=> b!5589986 (=> (not res!2371780) (not e!3448743))))

(assert (=> b!5589986 (= res!2371780 (dynLambda!24602 lambda!299960 (h!69355 (exprs!5461 setElem!37237))))))

(declare-fun b!5589987 () Bool)

(assert (=> b!5589987 (= e!3448743 (forall!14743 (t!376307 (exprs!5461 setElem!37237)) lambda!299960))))

(assert (= (and d!1766812 (not res!2371779)) b!5589986))

(assert (= (and b!5589986 res!2371780) b!5589987))

(declare-fun b_lambda!211801 () Bool)

(assert (=> (not b_lambda!211801) (not b!5589986)))

(declare-fun m!6570250 () Bool)

(assert (=> b!5589986 m!6570250))

(declare-fun m!6570252 () Bool)

(assert (=> b!5589987 m!6570252))

(assert (=> d!1766412 d!1766812))

(declare-fun b!5589988 () Bool)

(declare-fun e!3448747 () Bool)

(declare-fun e!3448746 () Bool)

(assert (=> b!5589988 (= e!3448747 e!3448746)))

(declare-fun res!2371783 () Bool)

(assert (=> b!5589988 (=> (not res!2371783) (not e!3448746))))

(assert (=> b!5589988 (= res!2371783 (and (not ((_ is EmptyLang!15577) (regOne!31666 r!7292))) (not ((_ is ElementMatch!15577) (regOne!31666 r!7292)))))))

(declare-fun b!5589989 () Bool)

(declare-fun e!3448744 () Bool)

(declare-fun e!3448749 () Bool)

(assert (=> b!5589989 (= e!3448744 e!3448749)))

(declare-fun res!2371782 () Bool)

(declare-fun call!418659 () Bool)

(assert (=> b!5589989 (= res!2371782 call!418659)))

(assert (=> b!5589989 (=> (not res!2371782) (not e!3448749))))

(declare-fun bm!418653 () Bool)

(declare-fun call!418658 () Bool)

(declare-fun c!979508 () Bool)

(assert (=> bm!418653 (= call!418658 (nullable!5609 (ite c!979508 (regTwo!31667 (regOne!31666 r!7292)) (regTwo!31666 (regOne!31666 r!7292)))))))

(declare-fun bm!418654 () Bool)

(assert (=> bm!418654 (= call!418659 (nullable!5609 (ite c!979508 (regOne!31667 (regOne!31666 r!7292)) (regOne!31666 (regOne!31666 r!7292)))))))

(declare-fun b!5589990 () Bool)

(declare-fun e!3448748 () Bool)

(assert (=> b!5589990 (= e!3448746 e!3448748)))

(declare-fun res!2371784 () Bool)

(assert (=> b!5589990 (=> res!2371784 e!3448748)))

(assert (=> b!5589990 (= res!2371784 ((_ is Star!15577) (regOne!31666 r!7292)))))

(declare-fun d!1766814 () Bool)

(declare-fun res!2371781 () Bool)

(assert (=> d!1766814 (=> res!2371781 e!3448747)))

(assert (=> d!1766814 (= res!2371781 ((_ is EmptyExpr!15577) (regOne!31666 r!7292)))))

(assert (=> d!1766814 (= (nullableFct!1718 (regOne!31666 r!7292)) e!3448747)))

(declare-fun b!5589991 () Bool)

(declare-fun e!3448745 () Bool)

(assert (=> b!5589991 (= e!3448744 e!3448745)))

(declare-fun res!2371785 () Bool)

(assert (=> b!5589991 (= res!2371785 call!418659)))

(assert (=> b!5589991 (=> res!2371785 e!3448745)))

(declare-fun b!5589992 () Bool)

(assert (=> b!5589992 (= e!3448745 call!418658)))

(declare-fun b!5589993 () Bool)

(assert (=> b!5589993 (= e!3448748 e!3448744)))

(assert (=> b!5589993 (= c!979508 ((_ is Union!15577) (regOne!31666 r!7292)))))

(declare-fun b!5589994 () Bool)

(assert (=> b!5589994 (= e!3448749 call!418658)))

(assert (= (and d!1766814 (not res!2371781)) b!5589988))

(assert (= (and b!5589988 res!2371783) b!5589990))

(assert (= (and b!5589990 (not res!2371784)) b!5589993))

(assert (= (and b!5589993 c!979508) b!5589991))

(assert (= (and b!5589993 (not c!979508)) b!5589989))

(assert (= (and b!5589991 (not res!2371785)) b!5589992))

(assert (= (and b!5589989 res!2371782) b!5589994))

(assert (= (or b!5589992 b!5589994) bm!418653))

(assert (= (or b!5589991 b!5589989) bm!418654))

(declare-fun m!6570254 () Bool)

(assert (=> bm!418653 m!6570254))

(declare-fun m!6570256 () Bool)

(assert (=> bm!418654 m!6570256))

(assert (=> d!1766464 d!1766814))

(declare-fun b!5589995 () Bool)

(declare-fun e!3448751 () Bool)

(assert (=> b!5589995 (= e!3448751 (nullable!5609 (regOne!31666 (h!69355 (exprs!5461 lt!2255209)))))))

(declare-fun b!5589996 () Bool)

(declare-fun e!3448755 () (InoxSet Context!9922))

(declare-fun call!418663 () (InoxSet Context!9922))

(assert (=> b!5589996 (= e!3448755 call!418663)))

(declare-fun bm!418655 () Bool)

(declare-fun c!979513 () Bool)

(declare-fun c!979511 () Bool)

(declare-fun call!418665 () List!63031)

(assert (=> bm!418655 (= call!418665 ($colon$colon!1640 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 lt!2255209)))) (ite (or c!979513 c!979511) (regTwo!31666 (h!69355 (exprs!5461 lt!2255209))) (h!69355 (exprs!5461 lt!2255209)))))))

(declare-fun c!979512 () Bool)

(declare-fun call!418661 () (InoxSet Context!9922))

(declare-fun call!418660 () List!63031)

(declare-fun bm!418656 () Bool)

(assert (=> bm!418656 (= call!418661 (derivationStepZipperDown!919 (ite c!979512 (regOne!31667 (h!69355 (exprs!5461 lt!2255209))) (ite c!979513 (regTwo!31666 (h!69355 (exprs!5461 lt!2255209))) (ite c!979511 (regOne!31666 (h!69355 (exprs!5461 lt!2255209))) (reg!15906 (h!69355 (exprs!5461 lt!2255209)))))) (ite (or c!979512 c!979513) (Context!9923 (t!376307 (exprs!5461 lt!2255209))) (Context!9923 call!418660)) (h!69354 s!2326)))))

(declare-fun b!5589997 () Bool)

(declare-fun e!3448754 () (InoxSet Context!9922))

(declare-fun e!3448753 () (InoxSet Context!9922))

(assert (=> b!5589997 (= e!3448754 e!3448753)))

(assert (=> b!5589997 (= c!979512 ((_ is Union!15577) (h!69355 (exprs!5461 lt!2255209))))))

(declare-fun d!1766816 () Bool)

(declare-fun c!979510 () Bool)

(assert (=> d!1766816 (= c!979510 (and ((_ is ElementMatch!15577) (h!69355 (exprs!5461 lt!2255209))) (= (c!979094 (h!69355 (exprs!5461 lt!2255209))) (h!69354 s!2326))))))

(assert (=> d!1766816 (= (derivationStepZipperDown!919 (h!69355 (exprs!5461 lt!2255209)) (Context!9923 (t!376307 (exprs!5461 lt!2255209))) (h!69354 s!2326)) e!3448754)))

(declare-fun bm!418657 () Bool)

(declare-fun call!418662 () (InoxSet Context!9922))

(assert (=> bm!418657 (= call!418662 call!418661)))

(declare-fun b!5589998 () Bool)

(declare-fun e!3448750 () (InoxSet Context!9922))

(assert (=> b!5589998 (= e!3448750 e!3448755)))

(assert (=> b!5589998 (= c!979511 ((_ is Concat!24422) (h!69355 (exprs!5461 lt!2255209))))))

(declare-fun b!5589999 () Bool)

(assert (=> b!5589999 (= c!979513 e!3448751)))

(declare-fun res!2371786 () Bool)

(assert (=> b!5589999 (=> (not res!2371786) (not e!3448751))))

(assert (=> b!5589999 (= res!2371786 ((_ is Concat!24422) (h!69355 (exprs!5461 lt!2255209))))))

(assert (=> b!5589999 (= e!3448753 e!3448750)))

(declare-fun b!5590000 () Bool)

(declare-fun e!3448752 () (InoxSet Context!9922))

(assert (=> b!5590000 (= e!3448752 call!418663)))

(declare-fun bm!418658 () Bool)

(assert (=> bm!418658 (= call!418660 call!418665)))

(declare-fun b!5590001 () Bool)

(assert (=> b!5590001 (= e!3448754 (store ((as const (Array Context!9922 Bool)) false) (Context!9923 (t!376307 (exprs!5461 lt!2255209))) true))))

(declare-fun b!5590002 () Bool)

(declare-fun call!418664 () (InoxSet Context!9922))

(assert (=> b!5590002 (= e!3448753 ((_ map or) call!418661 call!418664))))

(declare-fun b!5590003 () Bool)

(assert (=> b!5590003 (= e!3448750 ((_ map or) call!418664 call!418662))))

(declare-fun b!5590004 () Bool)

(declare-fun c!979509 () Bool)

(assert (=> b!5590004 (= c!979509 ((_ is Star!15577) (h!69355 (exprs!5461 lt!2255209))))))

(assert (=> b!5590004 (= e!3448755 e!3448752)))

(declare-fun b!5590005 () Bool)

(assert (=> b!5590005 (= e!3448752 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418659 () Bool)

(assert (=> bm!418659 (= call!418663 call!418662)))

(declare-fun bm!418660 () Bool)

(assert (=> bm!418660 (= call!418664 (derivationStepZipperDown!919 (ite c!979512 (regTwo!31667 (h!69355 (exprs!5461 lt!2255209))) (regOne!31666 (h!69355 (exprs!5461 lt!2255209)))) (ite c!979512 (Context!9923 (t!376307 (exprs!5461 lt!2255209))) (Context!9923 call!418665)) (h!69354 s!2326)))))

(assert (= (and d!1766816 c!979510) b!5590001))

(assert (= (and d!1766816 (not c!979510)) b!5589997))

(assert (= (and b!5589997 c!979512) b!5590002))

(assert (= (and b!5589997 (not c!979512)) b!5589999))

(assert (= (and b!5589999 res!2371786) b!5589995))

(assert (= (and b!5589999 c!979513) b!5590003))

(assert (= (and b!5589999 (not c!979513)) b!5589998))

(assert (= (and b!5589998 c!979511) b!5589996))

(assert (= (and b!5589998 (not c!979511)) b!5590004))

(assert (= (and b!5590004 c!979509) b!5590000))

(assert (= (and b!5590004 (not c!979509)) b!5590005))

(assert (= (or b!5589996 b!5590000) bm!418658))

(assert (= (or b!5589996 b!5590000) bm!418659))

(assert (= (or b!5590003 bm!418658) bm!418655))

(assert (= (or b!5590003 bm!418659) bm!418657))

(assert (= (or b!5590002 b!5590003) bm!418660))

(assert (= (or b!5590002 bm!418657) bm!418656))

(declare-fun m!6570258 () Bool)

(assert (=> bm!418660 m!6570258))

(declare-fun m!6570260 () Bool)

(assert (=> b!5589995 m!6570260))

(declare-fun m!6570262 () Bool)

(assert (=> b!5590001 m!6570262))

(declare-fun m!6570264 () Bool)

(assert (=> bm!418655 m!6570264))

(declare-fun m!6570266 () Bool)

(assert (=> bm!418656 m!6570266))

(assert (=> bm!418498 d!1766816))

(declare-fun d!1766818 () Bool)

(assert (=> d!1766818 (= (isEmpty!34723 (unfocusZipperList!1005 zl!343)) ((_ is Nil!62907) (unfocusZipperList!1005 zl!343)))))

(assert (=> b!5588761 d!1766818))

(assert (=> b!5588945 d!1766664))

(assert (=> b!5588945 d!1766666))

(declare-fun d!1766820 () Bool)

(assert (=> d!1766820 (= (isEmpty!34723 (tail!11019 (exprs!5461 (h!69356 zl!343)))) ((_ is Nil!62907) (tail!11019 (exprs!5461 (h!69356 zl!343)))))))

(assert (=> b!5589009 d!1766820))

(declare-fun d!1766822 () Bool)

(assert (=> d!1766822 (= (tail!11019 (exprs!5461 (h!69356 zl!343))) (t!376307 (exprs!5461 (h!69356 zl!343))))))

(assert (=> b!5589009 d!1766822))

(declare-fun bs!1292567 () Bool)

(declare-fun b!5590011 () Bool)

(assert (= bs!1292567 (and b!5590011 d!1766452)))

(declare-fun lambda!300022 () Int)

(assert (=> bs!1292567 (not (= lambda!300022 lambda!299970))))

(assert (=> bs!1292567 (not (= lambda!300022 lambda!299969))))

(declare-fun bs!1292568 () Bool)

(assert (= bs!1292568 (and b!5590011 b!5588535)))

(assert (=> bs!1292568 (not (= lambda!300022 lambda!299913))))

(assert (=> bs!1292568 (not (= lambda!300022 lambda!299912))))

(declare-fun bs!1292570 () Bool)

(assert (= bs!1292570 (and b!5590011 d!1766672)))

(assert (=> bs!1292570 (not (= lambda!300022 lambda!300001))))

(declare-fun bs!1292571 () Bool)

(assert (= bs!1292571 (and b!5590011 b!5589414)))

(assert (=> bs!1292571 (not (= lambda!300022 lambda!299981))))

(assert (=> bs!1292570 (not (= lambda!300022 lambda!300004))))

(declare-fun bs!1292572 () Bool)

(assert (= bs!1292572 (and b!5590011 b!5588886)))

(assert (=> bs!1292572 (= (and (= (reg!15906 (regTwo!31667 r!7292)) (reg!15906 r!7292)) (= (regTwo!31667 r!7292) r!7292)) (= lambda!300022 lambda!299947))))

(declare-fun bs!1292573 () Bool)

(assert (= bs!1292573 (and b!5590011 b!5589417)))

(assert (=> bs!1292573 (= (and (= (reg!15906 (regTwo!31667 r!7292)) (reg!15906 (regOne!31667 r!7292))) (= (regTwo!31667 r!7292) (regOne!31667 r!7292))) (= lambda!300022 lambda!299980))))

(declare-fun bs!1292574 () Bool)

(assert (= bs!1292574 (and b!5590011 d!1766450)))

(assert (=> bs!1292574 (not (= lambda!300022 lambda!299964))))

(declare-fun bs!1292575 () Bool)

(assert (= bs!1292575 (and b!5590011 b!5588883)))

(assert (=> bs!1292575 (not (= lambda!300022 lambda!299948))))

(assert (=> b!5590011 true))

(assert (=> b!5590011 true))

(declare-fun bs!1292576 () Bool)

(declare-fun b!5590008 () Bool)

(assert (= bs!1292576 (and b!5590008 d!1766452)))

(declare-fun lambda!300024 () Int)

(assert (=> bs!1292576 (= (and (= (regOne!31666 (regTwo!31667 r!7292)) (regOne!31666 r!7292)) (= (regTwo!31666 (regTwo!31667 r!7292)) (regTwo!31666 r!7292))) (= lambda!300024 lambda!299970))))

(assert (=> bs!1292576 (not (= lambda!300024 lambda!299969))))

(declare-fun bs!1292577 () Bool)

(assert (= bs!1292577 (and b!5590008 b!5588535)))

(assert (=> bs!1292577 (= (and (= (regOne!31666 (regTwo!31667 r!7292)) (regOne!31666 r!7292)) (= (regTwo!31666 (regTwo!31667 r!7292)) (regTwo!31666 r!7292))) (= lambda!300024 lambda!299913))))

(assert (=> bs!1292577 (not (= lambda!300024 lambda!299912))))

(declare-fun bs!1292578 () Bool)

(assert (= bs!1292578 (and b!5590008 d!1766672)))

(assert (=> bs!1292578 (not (= lambda!300024 lambda!300001))))

(declare-fun bs!1292579 () Bool)

(assert (= bs!1292579 (and b!5590008 b!5590011)))

(assert (=> bs!1292579 (not (= lambda!300024 lambda!300022))))

(declare-fun bs!1292580 () Bool)

(assert (= bs!1292580 (and b!5590008 b!5589414)))

(assert (=> bs!1292580 (= (and (= (regOne!31666 (regTwo!31667 r!7292)) (regOne!31666 (regOne!31667 r!7292))) (= (regTwo!31666 (regTwo!31667 r!7292)) (regTwo!31666 (regOne!31667 r!7292)))) (= lambda!300024 lambda!299981))))

(assert (=> bs!1292578 (= (and (= (regOne!31666 (regTwo!31667 r!7292)) (regOne!31666 r!7292)) (= (regTwo!31666 (regTwo!31667 r!7292)) (regTwo!31666 r!7292))) (= lambda!300024 lambda!300004))))

(declare-fun bs!1292581 () Bool)

(assert (= bs!1292581 (and b!5590008 b!5588886)))

(assert (=> bs!1292581 (not (= lambda!300024 lambda!299947))))

(declare-fun bs!1292582 () Bool)

(assert (= bs!1292582 (and b!5590008 b!5589417)))

(assert (=> bs!1292582 (not (= lambda!300024 lambda!299980))))

(declare-fun bs!1292583 () Bool)

(assert (= bs!1292583 (and b!5590008 d!1766450)))

(assert (=> bs!1292583 (not (= lambda!300024 lambda!299964))))

(declare-fun bs!1292584 () Bool)

(assert (= bs!1292584 (and b!5590008 b!5588883)))

(assert (=> bs!1292584 (= (and (= (regOne!31666 (regTwo!31667 r!7292)) (regOne!31666 r!7292)) (= (regTwo!31666 (regTwo!31667 r!7292)) (regTwo!31666 r!7292))) (= lambda!300024 lambda!299948))))

(assert (=> b!5590008 true))

(assert (=> b!5590008 true))

(declare-fun c!979516 () Bool)

(declare-fun bm!418661 () Bool)

(declare-fun call!418667 () Bool)

(assert (=> bm!418661 (= call!418667 (Exists!2677 (ite c!979516 lambda!300022 lambda!300024)))))

(declare-fun d!1766824 () Bool)

(declare-fun c!979517 () Bool)

(assert (=> d!1766824 (= c!979517 ((_ is EmptyExpr!15577) (regTwo!31667 r!7292)))))

(declare-fun e!3448757 () Bool)

(assert (=> d!1766824 (= (matchRSpec!2680 (regTwo!31667 r!7292) s!2326) e!3448757)))

(declare-fun b!5590006 () Bool)

(declare-fun e!3448759 () Bool)

(declare-fun e!3448758 () Bool)

(assert (=> b!5590006 (= e!3448759 e!3448758)))

(declare-fun res!2371787 () Bool)

(assert (=> b!5590006 (= res!2371787 (matchRSpec!2680 (regOne!31667 (regTwo!31667 r!7292)) s!2326))))

(assert (=> b!5590006 (=> res!2371787 e!3448758)))

(declare-fun b!5590007 () Bool)

(declare-fun call!418666 () Bool)

(assert (=> b!5590007 (= e!3448757 call!418666)))

(declare-fun e!3448761 () Bool)

(assert (=> b!5590008 (= e!3448761 call!418667)))

(declare-fun b!5590009 () Bool)

(assert (=> b!5590009 (= e!3448758 (matchRSpec!2680 (regTwo!31667 (regTwo!31667 r!7292)) s!2326))))

(declare-fun b!5590010 () Bool)

(declare-fun res!2371788 () Bool)

(declare-fun e!3448756 () Bool)

(assert (=> b!5590010 (=> res!2371788 e!3448756)))

(assert (=> b!5590010 (= res!2371788 call!418666)))

(assert (=> b!5590010 (= e!3448761 e!3448756)))

(assert (=> b!5590011 (= e!3448756 call!418667)))

(declare-fun b!5590012 () Bool)

(declare-fun c!979515 () Bool)

(assert (=> b!5590012 (= c!979515 ((_ is Union!15577) (regTwo!31667 r!7292)))))

(declare-fun e!3448760 () Bool)

(assert (=> b!5590012 (= e!3448760 e!3448759)))

(declare-fun b!5590013 () Bool)

(assert (=> b!5590013 (= e!3448760 (= s!2326 (Cons!62906 (c!979094 (regTwo!31667 r!7292)) Nil!62906)))))

(declare-fun bm!418662 () Bool)

(assert (=> bm!418662 (= call!418666 (isEmpty!34725 s!2326))))

(declare-fun b!5590014 () Bool)

(declare-fun c!979514 () Bool)

(assert (=> b!5590014 (= c!979514 ((_ is ElementMatch!15577) (regTwo!31667 r!7292)))))

(declare-fun e!3448762 () Bool)

(assert (=> b!5590014 (= e!3448762 e!3448760)))

(declare-fun b!5590015 () Bool)

(assert (=> b!5590015 (= e!3448759 e!3448761)))

(assert (=> b!5590015 (= c!979516 ((_ is Star!15577) (regTwo!31667 r!7292)))))

(declare-fun b!5590016 () Bool)

(assert (=> b!5590016 (= e!3448757 e!3448762)))

(declare-fun res!2371789 () Bool)

(assert (=> b!5590016 (= res!2371789 (not ((_ is EmptyLang!15577) (regTwo!31667 r!7292))))))

(assert (=> b!5590016 (=> (not res!2371789) (not e!3448762))))

(assert (= (and d!1766824 c!979517) b!5590007))

(assert (= (and d!1766824 (not c!979517)) b!5590016))

(assert (= (and b!5590016 res!2371789) b!5590014))

(assert (= (and b!5590014 c!979514) b!5590013))

(assert (= (and b!5590014 (not c!979514)) b!5590012))

(assert (= (and b!5590012 c!979515) b!5590006))

(assert (= (and b!5590012 (not c!979515)) b!5590015))

(assert (= (and b!5590006 (not res!2371787)) b!5590009))

(assert (= (and b!5590015 c!979516) b!5590010))

(assert (= (and b!5590015 (not c!979516)) b!5590008))

(assert (= (and b!5590010 (not res!2371788)) b!5590011))

(assert (= (or b!5590011 b!5590008) bm!418661))

(assert (= (or b!5590007 b!5590010) bm!418662))

(declare-fun m!6570290 () Bool)

(assert (=> bm!418661 m!6570290))

(declare-fun m!6570292 () Bool)

(assert (=> b!5590006 m!6570292))

(declare-fun m!6570294 () Bool)

(assert (=> b!5590009 m!6570294))

(assert (=> bm!418662 m!6569284))

(assert (=> b!5588884 d!1766824))

(declare-fun b!5590030 () Bool)

(declare-fun e!3448774 () Bool)

(assert (=> b!5590030 (= e!3448774 (nullable!5609 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343))))))))

(declare-fun b!5590031 () Bool)

(declare-fun e!3448778 () (InoxSet Context!9922))

(declare-fun call!418674 () (InoxSet Context!9922))

(assert (=> b!5590031 (= e!3448778 call!418674)))

(declare-fun call!418676 () List!63031)

(declare-fun bm!418666 () Bool)

(declare-fun c!979525 () Bool)

(declare-fun c!979523 () Bool)

(assert (=> bm!418666 (= call!418676 ($colon$colon!1640 (exprs!5461 (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343))))) (ite (or c!979525 c!979523) (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (h!69355 (exprs!5461 (h!69356 zl!343))))))))

(declare-fun call!418672 () (InoxSet Context!9922))

(declare-fun c!979524 () Bool)

(declare-fun call!418671 () List!63031)

(declare-fun bm!418667 () Bool)

(assert (=> bm!418667 (= call!418672 (derivationStepZipperDown!919 (ite c!979524 (regOne!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979525 (regTwo!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (ite c!979523 (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343)))) (reg!15906 (h!69355 (exprs!5461 (h!69356 zl!343))))))) (ite (or c!979524 c!979525) (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343)))) (Context!9923 call!418671)) (h!69354 s!2326)))))

(declare-fun b!5590032 () Bool)

(declare-fun e!3448777 () (InoxSet Context!9922))

(declare-fun e!3448776 () (InoxSet Context!9922))

(assert (=> b!5590032 (= e!3448777 e!3448776)))

(assert (=> b!5590032 (= c!979524 ((_ is Union!15577) (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun d!1766838 () Bool)

(declare-fun c!979522 () Bool)

(assert (=> d!1766838 (= c!979522 (and ((_ is ElementMatch!15577) (h!69355 (exprs!5461 (h!69356 zl!343)))) (= (c!979094 (h!69355 (exprs!5461 (h!69356 zl!343)))) (h!69354 s!2326))))))

(assert (=> d!1766838 (= (derivationStepZipperDown!919 (h!69355 (exprs!5461 (h!69356 zl!343))) (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343)))) (h!69354 s!2326)) e!3448777)))

(declare-fun bm!418668 () Bool)

(declare-fun call!418673 () (InoxSet Context!9922))

(assert (=> bm!418668 (= call!418673 call!418672)))

(declare-fun b!5590033 () Bool)

(declare-fun e!3448773 () (InoxSet Context!9922))

(assert (=> b!5590033 (= e!3448773 e!3448778)))

(assert (=> b!5590033 (= c!979523 ((_ is Concat!24422) (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun b!5590034 () Bool)

(assert (=> b!5590034 (= c!979525 e!3448774)))

(declare-fun res!2371797 () Bool)

(assert (=> b!5590034 (=> (not res!2371797) (not e!3448774))))

(assert (=> b!5590034 (= res!2371797 ((_ is Concat!24422) (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(assert (=> b!5590034 (= e!3448776 e!3448773)))

(declare-fun b!5590035 () Bool)

(declare-fun e!3448775 () (InoxSet Context!9922))

(assert (=> b!5590035 (= e!3448775 call!418674)))

(declare-fun bm!418669 () Bool)

(assert (=> bm!418669 (= call!418671 call!418676)))

(declare-fun b!5590036 () Bool)

(assert (=> b!5590036 (= e!3448777 (store ((as const (Array Context!9922 Bool)) false) (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343)))) true))))

(declare-fun b!5590037 () Bool)

(declare-fun call!418675 () (InoxSet Context!9922))

(assert (=> b!5590037 (= e!3448776 ((_ map or) call!418672 call!418675))))

(declare-fun b!5590038 () Bool)

(assert (=> b!5590038 (= e!3448773 ((_ map or) call!418675 call!418673))))

(declare-fun b!5590039 () Bool)

(declare-fun c!979521 () Bool)

(assert (=> b!5590039 (= c!979521 ((_ is Star!15577) (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(assert (=> b!5590039 (= e!3448778 e!3448775)))

(declare-fun b!5590040 () Bool)

(assert (=> b!5590040 (= e!3448775 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418670 () Bool)

(assert (=> bm!418670 (= call!418674 call!418673)))

(declare-fun bm!418671 () Bool)

(assert (=> bm!418671 (= call!418675 (derivationStepZipperDown!919 (ite c!979524 (regTwo!31667 (h!69355 (exprs!5461 (h!69356 zl!343)))) (regOne!31666 (h!69355 (exprs!5461 (h!69356 zl!343))))) (ite c!979524 (Context!9923 (t!376307 (exprs!5461 (h!69356 zl!343)))) (Context!9923 call!418676)) (h!69354 s!2326)))))

(assert (= (and d!1766838 c!979522) b!5590036))

(assert (= (and d!1766838 (not c!979522)) b!5590032))

(assert (= (and b!5590032 c!979524) b!5590037))

(assert (= (and b!5590032 (not c!979524)) b!5590034))

(assert (= (and b!5590034 res!2371797) b!5590030))

(assert (= (and b!5590034 c!979525) b!5590038))

(assert (= (and b!5590034 (not c!979525)) b!5590033))

(assert (= (and b!5590033 c!979523) b!5590031))

(assert (= (and b!5590033 (not c!979523)) b!5590039))

(assert (= (and b!5590039 c!979521) b!5590035))

(assert (= (and b!5590039 (not c!979521)) b!5590040))

(assert (= (or b!5590031 b!5590035) bm!418669))

(assert (= (or b!5590031 b!5590035) bm!418670))

(assert (= (or b!5590038 bm!418669) bm!418666))

(assert (= (or b!5590038 bm!418670) bm!418668))

(assert (= (or b!5590037 b!5590038) bm!418671))

(assert (= (or b!5590037 bm!418668) bm!418667))

(declare-fun m!6570298 () Bool)

(assert (=> bm!418671 m!6570298))

(assert (=> b!5590030 m!6569472))

(declare-fun m!6570300 () Bool)

(assert (=> b!5590036 m!6570300))

(declare-fun m!6570302 () Bool)

(assert (=> bm!418666 m!6570302))

(declare-fun m!6570310 () Bool)

(assert (=> bm!418667 m!6570310))

(assert (=> bm!418497 d!1766838))

(declare-fun b!5590052 () Bool)

(declare-fun e!3448789 () List!63030)

(assert (=> b!5590052 (= e!3448789 (t!376306 s!2326))))

(declare-fun b!5590053 () Bool)

(assert (=> b!5590053 (= e!3448789 (Cons!62906 (h!69354 (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906))) (++!13806 (t!376306 (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906))) (t!376306 s!2326))))))

(declare-fun d!1766844 () Bool)

(declare-fun e!3448788 () Bool)

(assert (=> d!1766844 e!3448788))

(declare-fun res!2371805 () Bool)

(assert (=> d!1766844 (=> (not res!2371805) (not e!3448788))))

(declare-fun lt!2255337 () List!63030)

(assert (=> d!1766844 (= res!2371805 (= (content!11350 lt!2255337) ((_ map or) (content!11350 (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906))) (content!11350 (t!376306 s!2326)))))))

(assert (=> d!1766844 (= lt!2255337 e!3448789)))

(declare-fun c!979528 () Bool)

(assert (=> d!1766844 (= c!979528 ((_ is Nil!62906) (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906))))))

(assert (=> d!1766844 (= (++!13806 (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906)) (t!376306 s!2326)) lt!2255337)))

(declare-fun b!5590054 () Bool)

(declare-fun res!2371806 () Bool)

(assert (=> b!5590054 (=> (not res!2371806) (not e!3448788))))

(assert (=> b!5590054 (= res!2371806 (= (size!39963 lt!2255337) (+ (size!39963 (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906))) (size!39963 (t!376306 s!2326)))))))

(declare-fun b!5590055 () Bool)

(assert (=> b!5590055 (= e!3448788 (or (not (= (t!376306 s!2326) Nil!62906)) (= lt!2255337 (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906)))))))

(assert (= (and d!1766844 c!979528) b!5590052))

(assert (= (and d!1766844 (not c!979528)) b!5590053))

(assert (= (and d!1766844 res!2371805) b!5590054))

(assert (= (and b!5590054 res!2371806) b!5590055))

(declare-fun m!6570316 () Bool)

(assert (=> b!5590053 m!6570316))

(declare-fun m!6570318 () Bool)

(assert (=> d!1766844 m!6570318))

(assert (=> d!1766844 m!6569500))

(declare-fun m!6570320 () Bool)

(assert (=> d!1766844 m!6570320))

(declare-fun m!6570322 () Bool)

(assert (=> d!1766844 m!6570322))

(declare-fun m!6570324 () Bool)

(assert (=> b!5590054 m!6570324))

(assert (=> b!5590054 m!6569500))

(declare-fun m!6570326 () Bool)

(assert (=> b!5590054 m!6570326))

(declare-fun m!6570328 () Bool)

(assert (=> b!5590054 m!6570328))

(assert (=> b!5589250 d!1766844))

(declare-fun b!5590056 () Bool)

(declare-fun e!3448791 () List!63030)

(assert (=> b!5590056 (= e!3448791 (Cons!62906 (h!69354 s!2326) Nil!62906))))

(declare-fun b!5590057 () Bool)

(assert (=> b!5590057 (= e!3448791 (Cons!62906 (h!69354 Nil!62906) (++!13806 (t!376306 Nil!62906) (Cons!62906 (h!69354 s!2326) Nil!62906))))))

(declare-fun d!1766850 () Bool)

(declare-fun e!3448790 () Bool)

(assert (=> d!1766850 e!3448790))

(declare-fun res!2371807 () Bool)

(assert (=> d!1766850 (=> (not res!2371807) (not e!3448790))))

(declare-fun lt!2255338 () List!63030)

(assert (=> d!1766850 (= res!2371807 (= (content!11350 lt!2255338) ((_ map or) (content!11350 Nil!62906) (content!11350 (Cons!62906 (h!69354 s!2326) Nil!62906)))))))

(assert (=> d!1766850 (= lt!2255338 e!3448791)))

(declare-fun c!979529 () Bool)

(assert (=> d!1766850 (= c!979529 ((_ is Nil!62906) Nil!62906))))

(assert (=> d!1766850 (= (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906)) lt!2255338)))

(declare-fun b!5590058 () Bool)

(declare-fun res!2371808 () Bool)

(assert (=> b!5590058 (=> (not res!2371808) (not e!3448790))))

(assert (=> b!5590058 (= res!2371808 (= (size!39963 lt!2255338) (+ (size!39963 Nil!62906) (size!39963 (Cons!62906 (h!69354 s!2326) Nil!62906)))))))

(declare-fun b!5590059 () Bool)

(assert (=> b!5590059 (= e!3448790 (or (not (= (Cons!62906 (h!69354 s!2326) Nil!62906) Nil!62906)) (= lt!2255338 Nil!62906)))))

(assert (= (and d!1766850 c!979529) b!5590056))

(assert (= (and d!1766850 (not c!979529)) b!5590057))

(assert (= (and d!1766850 res!2371807) b!5590058))

(assert (= (and b!5590058 res!2371808) b!5590059))

(declare-fun m!6570332 () Bool)

(assert (=> b!5590057 m!6570332))

(declare-fun m!6570334 () Bool)

(assert (=> d!1766850 m!6570334))

(declare-fun m!6570336 () Bool)

(assert (=> d!1766850 m!6570336))

(declare-fun m!6570338 () Bool)

(assert (=> d!1766850 m!6570338))

(declare-fun m!6570340 () Bool)

(assert (=> b!5590058 m!6570340))

(declare-fun m!6570342 () Bool)

(assert (=> b!5590058 m!6570342))

(declare-fun m!6570344 () Bool)

(assert (=> b!5590058 m!6570344))

(assert (=> b!5589250 d!1766850))

(declare-fun d!1766860 () Bool)

(assert (=> d!1766860 (= (++!13806 (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906)) (t!376306 s!2326)) s!2326)))

(declare-fun lt!2255342 () Unit!155708)

(declare-fun choose!42391 (List!63030 C!31424 List!63030 List!63030) Unit!155708)

(assert (=> d!1766860 (= lt!2255342 (choose!42391 Nil!62906 (h!69354 s!2326) (t!376306 s!2326) s!2326))))

(assert (=> d!1766860 (= (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) (t!376306 s!2326))) s!2326)))

(assert (=> d!1766860 (= (lemmaMoveElementToOtherListKeepsConcatEq!1975 Nil!62906 (h!69354 s!2326) (t!376306 s!2326) s!2326) lt!2255342)))

(declare-fun bs!1292604 () Bool)

(assert (= bs!1292604 d!1766860))

(assert (=> bs!1292604 m!6569500))

(assert (=> bs!1292604 m!6569500))

(assert (=> bs!1292604 m!6569502))

(declare-fun m!6570366 () Bool)

(assert (=> bs!1292604 m!6570366))

(declare-fun m!6570368 () Bool)

(assert (=> bs!1292604 m!6570368))

(assert (=> b!5589250 d!1766860))

(declare-fun b!5590074 () Bool)

(declare-fun e!3448804 () Bool)

(declare-fun lt!2255343 () Option!15586)

(assert (=> b!5590074 (= e!3448804 (= (++!13806 (_1!35977 (get!21662 lt!2255343)) (_2!35977 (get!21662 lt!2255343))) s!2326))))

(declare-fun d!1766874 () Bool)

(declare-fun e!3448803 () Bool)

(assert (=> d!1766874 e!3448803))

(declare-fun res!2371818 () Bool)

(assert (=> d!1766874 (=> res!2371818 e!3448803)))

(assert (=> d!1766874 (= res!2371818 e!3448804)))

(declare-fun res!2371820 () Bool)

(assert (=> d!1766874 (=> (not res!2371820) (not e!3448804))))

(assert (=> d!1766874 (= res!2371820 (isDefined!12289 lt!2255343))))

(declare-fun e!3448806 () Option!15586)

(assert (=> d!1766874 (= lt!2255343 e!3448806)))

(declare-fun c!979534 () Bool)

(declare-fun e!3448807 () Bool)

(assert (=> d!1766874 (= c!979534 e!3448807)))

(declare-fun res!2371817 () Bool)

(assert (=> d!1766874 (=> (not res!2371817) (not e!3448807))))

(assert (=> d!1766874 (= res!2371817 (matchR!7762 (regOne!31666 r!7292) (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906))))))

(assert (=> d!1766874 (validRegex!7313 (regOne!31666 r!7292))))

(assert (=> d!1766874 (= (findConcatSeparation!2000 (regOne!31666 r!7292) (regTwo!31666 r!7292) (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906)) (t!376306 s!2326) s!2326) lt!2255343)))

(declare-fun b!5590075 () Bool)

(declare-fun e!3448805 () Option!15586)

(assert (=> b!5590075 (= e!3448806 e!3448805)))

(declare-fun c!979533 () Bool)

(assert (=> b!5590075 (= c!979533 ((_ is Nil!62906) (t!376306 s!2326)))))

(declare-fun b!5590076 () Bool)

(assert (=> b!5590076 (= e!3448805 None!15585)))

(declare-fun b!5590077 () Bool)

(declare-fun res!2371821 () Bool)

(assert (=> b!5590077 (=> (not res!2371821) (not e!3448804))))

(assert (=> b!5590077 (= res!2371821 (matchR!7762 (regOne!31666 r!7292) (_1!35977 (get!21662 lt!2255343))))))

(declare-fun b!5590078 () Bool)

(declare-fun res!2371819 () Bool)

(assert (=> b!5590078 (=> (not res!2371819) (not e!3448804))))

(assert (=> b!5590078 (= res!2371819 (matchR!7762 (regTwo!31666 r!7292) (_2!35977 (get!21662 lt!2255343))))))

(declare-fun b!5590079 () Bool)

(assert (=> b!5590079 (= e!3448803 (not (isDefined!12289 lt!2255343)))))

(declare-fun b!5590080 () Bool)

(declare-fun lt!2255345 () Unit!155708)

(declare-fun lt!2255344 () Unit!155708)

(assert (=> b!5590080 (= lt!2255345 lt!2255344)))

(assert (=> b!5590080 (= (++!13806 (++!13806 (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906)) (Cons!62906 (h!69354 (t!376306 s!2326)) Nil!62906)) (t!376306 (t!376306 s!2326))) s!2326)))

(assert (=> b!5590080 (= lt!2255344 (lemmaMoveElementToOtherListKeepsConcatEq!1975 (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906)) (h!69354 (t!376306 s!2326)) (t!376306 (t!376306 s!2326)) s!2326))))

(assert (=> b!5590080 (= e!3448805 (findConcatSeparation!2000 (regOne!31666 r!7292) (regTwo!31666 r!7292) (++!13806 (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906)) (Cons!62906 (h!69354 (t!376306 s!2326)) Nil!62906)) (t!376306 (t!376306 s!2326)) s!2326))))

(declare-fun b!5590081 () Bool)

(assert (=> b!5590081 (= e!3448806 (Some!15585 (tuple2!65349 (++!13806 Nil!62906 (Cons!62906 (h!69354 s!2326) Nil!62906)) (t!376306 s!2326))))))

(declare-fun b!5590082 () Bool)

(assert (=> b!5590082 (= e!3448807 (matchR!7762 (regTwo!31666 r!7292) (t!376306 s!2326)))))

(assert (= (and d!1766874 res!2371817) b!5590082))

(assert (= (and d!1766874 c!979534) b!5590081))

(assert (= (and d!1766874 (not c!979534)) b!5590075))

(assert (= (and b!5590075 c!979533) b!5590076))

(assert (= (and b!5590075 (not c!979533)) b!5590080))

(assert (= (and d!1766874 res!2371820) b!5590077))

(assert (= (and b!5590077 res!2371821) b!5590078))

(assert (= (and b!5590078 res!2371819) b!5590074))

(assert (= (and d!1766874 (not res!2371818)) b!5590079))

(declare-fun m!6570384 () Bool)

(assert (=> b!5590074 m!6570384))

(declare-fun m!6570390 () Bool)

(assert (=> b!5590074 m!6570390))

(declare-fun m!6570394 () Bool)

(assert (=> b!5590079 m!6570394))

(declare-fun m!6570396 () Bool)

(assert (=> b!5590082 m!6570396))

(assert (=> b!5590077 m!6570384))

(declare-fun m!6570398 () Bool)

(assert (=> b!5590077 m!6570398))

(assert (=> d!1766874 m!6570394))

(assert (=> d!1766874 m!6569500))

(declare-fun m!6570400 () Bool)

(assert (=> d!1766874 m!6570400))

(assert (=> d!1766874 m!6569496))

(assert (=> b!5590078 m!6570384))

(declare-fun m!6570404 () Bool)

(assert (=> b!5590078 m!6570404))

(assert (=> b!5590080 m!6569500))

(declare-fun m!6570406 () Bool)

(assert (=> b!5590080 m!6570406))

(assert (=> b!5590080 m!6570406))

(declare-fun m!6570412 () Bool)

(assert (=> b!5590080 m!6570412))

(assert (=> b!5590080 m!6569500))

(declare-fun m!6570416 () Bool)

(assert (=> b!5590080 m!6570416))

(assert (=> b!5590080 m!6570406))

(declare-fun m!6570418 () Bool)

(assert (=> b!5590080 m!6570418))

(assert (=> b!5589250 d!1766874))

(declare-fun d!1766894 () Bool)

(assert (=> d!1766894 (= (head!11924 (unfocusZipperList!1005 zl!343)) (h!69355 (unfocusZipperList!1005 zl!343)))))

(assert (=> b!5588756 d!1766894))

(assert (=> d!1766362 d!1766572))

(assert (=> b!5588958 d!1766738))

(assert (=> d!1766450 d!1766444))

(assert (=> d!1766450 d!1766454))

(declare-fun bs!1292632 () Bool)

(declare-fun d!1766900 () Bool)

(assert (= bs!1292632 (and d!1766900 b!5590008)))

(declare-fun lambda!300034 () Int)

(assert (=> bs!1292632 (not (= lambda!300034 lambda!300024))))

(declare-fun bs!1292633 () Bool)

(assert (= bs!1292633 (and d!1766900 d!1766452)))

(assert (=> bs!1292633 (not (= lambda!300034 lambda!299970))))

(assert (=> bs!1292633 (= lambda!300034 lambda!299969)))

(declare-fun bs!1292634 () Bool)

(assert (= bs!1292634 (and d!1766900 b!5588535)))

(assert (=> bs!1292634 (not (= lambda!300034 lambda!299913))))

(assert (=> bs!1292634 (= lambda!300034 lambda!299912)))

(declare-fun bs!1292635 () Bool)

(assert (= bs!1292635 (and d!1766900 d!1766672)))

(assert (=> bs!1292635 (= lambda!300034 lambda!300001)))

(declare-fun bs!1292636 () Bool)

(assert (= bs!1292636 (and d!1766900 b!5590011)))

(assert (=> bs!1292636 (not (= lambda!300034 lambda!300022))))

(declare-fun bs!1292637 () Bool)

(assert (= bs!1292637 (and d!1766900 b!5589414)))

(assert (=> bs!1292637 (not (= lambda!300034 lambda!299981))))

(assert (=> bs!1292635 (not (= lambda!300034 lambda!300004))))

(declare-fun bs!1292638 () Bool)

(assert (= bs!1292638 (and d!1766900 b!5588886)))

(assert (=> bs!1292638 (not (= lambda!300034 lambda!299947))))

(declare-fun bs!1292639 () Bool)

(assert (= bs!1292639 (and d!1766900 b!5589417)))

(assert (=> bs!1292639 (not (= lambda!300034 lambda!299980))))

(declare-fun bs!1292640 () Bool)

(assert (= bs!1292640 (and d!1766900 d!1766450)))

(assert (=> bs!1292640 (= lambda!300034 lambda!299964)))

(declare-fun bs!1292641 () Bool)

(assert (= bs!1292641 (and d!1766900 b!5588883)))

(assert (=> bs!1292641 (not (= lambda!300034 lambda!299948))))

(assert (=> d!1766900 true))

(assert (=> d!1766900 true))

(assert (=> d!1766900 true))

(assert (=> d!1766900 (= (isDefined!12289 (findConcatSeparation!2000 (regOne!31666 r!7292) (regTwo!31666 r!7292) Nil!62906 s!2326 s!2326)) (Exists!2677 lambda!300034))))

(assert (=> d!1766900 true))

(declare-fun _$89!1692 () Unit!155708)

(assert (=> d!1766900 (= (choose!42388 (regOne!31666 r!7292) (regTwo!31666 r!7292) s!2326) _$89!1692)))

(declare-fun bs!1292642 () Bool)

(assert (= bs!1292642 d!1766900))

(assert (=> bs!1292642 m!6569010))

(assert (=> bs!1292642 m!6569010))

(assert (=> bs!1292642 m!6569012))

(declare-fun m!6570482 () Bool)

(assert (=> bs!1292642 m!6570482))

(assert (=> d!1766450 d!1766900))

(assert (=> d!1766450 d!1766580))

(declare-fun d!1766936 () Bool)

(assert (=> d!1766936 (= (Exists!2677 lambda!299964) (choose!42387 lambda!299964))))

(declare-fun bs!1292643 () Bool)

(assert (= bs!1292643 d!1766936))

(declare-fun m!6570484 () Bool)

(assert (=> bs!1292643 m!6570484))

(assert (=> d!1766450 d!1766936))

(declare-fun b!5590151 () Bool)

(declare-fun e!3448850 () Bool)

(assert (=> b!5590151 (= e!3448850 (nullable!5609 (regOne!31666 (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292)))))))))))

(declare-fun b!5590152 () Bool)

(declare-fun e!3448854 () (InoxSet Context!9922))

(declare-fun call!418709 () (InoxSet Context!9922))

(assert (=> b!5590152 (= e!3448854 call!418709)))

(declare-fun c!979562 () Bool)

(declare-fun bm!418701 () Bool)

(declare-fun call!418711 () List!63031)

(declare-fun c!979564 () Bool)

(assert (=> bm!418701 (= call!418711 ($colon$colon!1640 (exprs!5461 (ite (or c!979268 c!979269) lt!2255202 (Context!9923 call!418468))) (ite (or c!979564 c!979562) (regTwo!31666 (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292))))))) (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292)))))))))))

(declare-fun c!979563 () Bool)

(declare-fun bm!418702 () Bool)

(declare-fun call!418706 () List!63031)

(declare-fun call!418707 () (InoxSet Context!9922))

(assert (=> bm!418702 (= call!418707 (derivationStepZipperDown!919 (ite c!979563 (regOne!31667 (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292))))))) (ite c!979564 (regTwo!31666 (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292))))))) (ite c!979562 (regOne!31666 (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292))))))) (reg!15906 (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292)))))))))) (ite (or c!979563 c!979564) (ite (or c!979268 c!979269) lt!2255202 (Context!9923 call!418468)) (Context!9923 call!418706)) (h!69354 s!2326)))))

(declare-fun b!5590153 () Bool)

(declare-fun e!3448853 () (InoxSet Context!9922))

(declare-fun e!3448852 () (InoxSet Context!9922))

(assert (=> b!5590153 (= e!3448853 e!3448852)))

(assert (=> b!5590153 (= c!979563 ((_ is Union!15577) (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292))))))))))

(declare-fun c!979561 () Bool)

(declare-fun d!1766938 () Bool)

(assert (=> d!1766938 (= c!979561 (and ((_ is ElementMatch!15577) (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292))))))) (= (c!979094 (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292))))))) (h!69354 s!2326))))))

(assert (=> d!1766938 (= (derivationStepZipperDown!919 (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292)))))) (ite (or c!979268 c!979269) lt!2255202 (Context!9923 call!418468)) (h!69354 s!2326)) e!3448853)))

(declare-fun bm!418703 () Bool)

(declare-fun call!418708 () (InoxSet Context!9922))

(assert (=> bm!418703 (= call!418708 call!418707)))

(declare-fun b!5590154 () Bool)

(declare-fun e!3448849 () (InoxSet Context!9922))

(assert (=> b!5590154 (= e!3448849 e!3448854)))

(assert (=> b!5590154 (= c!979562 ((_ is Concat!24422) (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292))))))))))

(declare-fun b!5590155 () Bool)

(assert (=> b!5590155 (= c!979564 e!3448850)))

(declare-fun res!2371843 () Bool)

(assert (=> b!5590155 (=> (not res!2371843) (not e!3448850))))

(assert (=> b!5590155 (= res!2371843 ((_ is Concat!24422) (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292))))))))))

(assert (=> b!5590155 (= e!3448852 e!3448849)))

(declare-fun b!5590156 () Bool)

(declare-fun e!3448851 () (InoxSet Context!9922))

(assert (=> b!5590156 (= e!3448851 call!418709)))

(declare-fun bm!418704 () Bool)

(assert (=> bm!418704 (= call!418706 call!418711)))

(declare-fun b!5590157 () Bool)

(assert (=> b!5590157 (= e!3448853 (store ((as const (Array Context!9922 Bool)) false) (ite (or c!979268 c!979269) lt!2255202 (Context!9923 call!418468)) true))))

(declare-fun b!5590158 () Bool)

(declare-fun call!418710 () (InoxSet Context!9922))

(assert (=> b!5590158 (= e!3448852 ((_ map or) call!418707 call!418710))))

(declare-fun b!5590159 () Bool)

(assert (=> b!5590159 (= e!3448849 ((_ map or) call!418710 call!418708))))

(declare-fun b!5590160 () Bool)

(declare-fun c!979560 () Bool)

(assert (=> b!5590160 (= c!979560 ((_ is Star!15577) (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292))))))))))

(assert (=> b!5590160 (= e!3448854 e!3448851)))

(declare-fun b!5590161 () Bool)

(assert (=> b!5590161 (= e!3448851 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418705 () Bool)

(assert (=> bm!418705 (= call!418709 call!418708)))

(declare-fun bm!418706 () Bool)

(assert (=> bm!418706 (= call!418710 (derivationStepZipperDown!919 (ite c!979563 (regTwo!31667 (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292))))))) (regOne!31666 (ite c!979268 (regOne!31667 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979269 (regTwo!31666 (regTwo!31667 (regOne!31666 r!7292))) (ite c!979267 (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))) (reg!15906 (regTwo!31667 (regOne!31666 r!7292)))))))) (ite c!979563 (ite (or c!979268 c!979269) lt!2255202 (Context!9923 call!418468)) (Context!9923 call!418711)) (h!69354 s!2326)))))

(assert (= (and d!1766938 c!979561) b!5590157))

(assert (= (and d!1766938 (not c!979561)) b!5590153))

(assert (= (and b!5590153 c!979563) b!5590158))

(assert (= (and b!5590153 (not c!979563)) b!5590155))

(assert (= (and b!5590155 res!2371843) b!5590151))

(assert (= (and b!5590155 c!979564) b!5590159))

(assert (= (and b!5590155 (not c!979564)) b!5590154))

(assert (= (and b!5590154 c!979562) b!5590152))

(assert (= (and b!5590154 (not c!979562)) b!5590160))

(assert (= (and b!5590160 c!979560) b!5590156))

(assert (= (and b!5590160 (not c!979560)) b!5590161))

(assert (= (or b!5590152 b!5590156) bm!418704))

(assert (= (or b!5590152 b!5590156) bm!418705))

(assert (= (or b!5590159 bm!418704) bm!418701))

(assert (= (or b!5590159 bm!418705) bm!418703))

(assert (= (or b!5590158 b!5590159) bm!418706))

(assert (= (or b!5590158 bm!418703) bm!418702))

(declare-fun m!6570486 () Bool)

(assert (=> bm!418706 m!6570486))

(declare-fun m!6570488 () Bool)

(assert (=> b!5590151 m!6570488))

(declare-fun m!6570490 () Bool)

(assert (=> b!5590157 m!6570490))

(declare-fun m!6570492 () Bool)

(assert (=> bm!418701 m!6570492))

(declare-fun m!6570494 () Bool)

(assert (=> bm!418702 m!6570494))

(assert (=> bm!418464 d!1766938))

(declare-fun d!1766940 () Bool)

(assert (=> d!1766940 (= (isEmptyLang!1140 lt!2255246) ((_ is EmptyLang!15577) lt!2255246))))

(assert (=> b!5588760 d!1766940))

(declare-fun d!1766942 () Bool)

(declare-fun c!979565 () Bool)

(assert (=> d!1766942 (= c!979565 (isEmpty!34725 (tail!11018 (t!376306 s!2326))))))

(declare-fun e!3448857 () Bool)

(assert (=> d!1766942 (= (matchZipper!1715 (derivationStepZipper!1676 lt!2255201 (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))) e!3448857)))

(declare-fun b!5590166 () Bool)

(assert (=> b!5590166 (= e!3448857 (nullableZipper!1572 (derivationStepZipper!1676 lt!2255201 (head!11923 (t!376306 s!2326)))))))

(declare-fun b!5590167 () Bool)

(assert (=> b!5590167 (= e!3448857 (matchZipper!1715 (derivationStepZipper!1676 (derivationStepZipper!1676 lt!2255201 (head!11923 (t!376306 s!2326))) (head!11923 (tail!11018 (t!376306 s!2326)))) (tail!11018 (tail!11018 (t!376306 s!2326)))))))

(assert (= (and d!1766942 c!979565) b!5590166))

(assert (= (and d!1766942 (not c!979565)) b!5590167))

(assert (=> d!1766942 m!6569172))

(assert (=> d!1766942 m!6569580))

(assert (=> b!5590166 m!6569264))

(declare-fun m!6570496 () Bool)

(assert (=> b!5590166 m!6570496))

(assert (=> b!5590167 m!6569172))

(assert (=> b!5590167 m!6569584))

(assert (=> b!5590167 m!6569264))

(assert (=> b!5590167 m!6569584))

(declare-fun m!6570498 () Bool)

(assert (=> b!5590167 m!6570498))

(assert (=> b!5590167 m!6569172))

(assert (=> b!5590167 m!6569588))

(assert (=> b!5590167 m!6570498))

(assert (=> b!5590167 m!6569588))

(declare-fun m!6570500 () Bool)

(assert (=> b!5590167 m!6570500))

(assert (=> b!5588816 d!1766942))

(declare-fun bs!1292648 () Bool)

(declare-fun d!1766944 () Bool)

(assert (= bs!1292648 (and d!1766944 d!1766596)))

(declare-fun lambda!300038 () Int)

(assert (=> bs!1292648 (= lambda!300038 lambda!299989)))

(declare-fun bs!1292650 () Bool)

(assert (= bs!1292650 (and d!1766944 d!1766632)))

(assert (=> bs!1292650 (= lambda!300038 lambda!299992)))

(declare-fun bs!1292651 () Bool)

(assert (= bs!1292651 (and d!1766944 b!5588545)))

(assert (=> bs!1292651 (= (= (head!11923 (t!376306 s!2326)) (h!69354 s!2326)) (= lambda!300038 lambda!299914))))

(declare-fun bs!1292652 () Bool)

(assert (= bs!1292652 (and d!1766944 d!1766684)))

(assert (=> bs!1292652 (= lambda!300038 lambda!300005)))

(declare-fun bs!1292654 () Bool)

(assert (= bs!1292654 (and d!1766944 d!1766498)))

(assert (=> bs!1292654 (= lambda!300038 lambda!299976)))

(declare-fun bs!1292656 () Bool)

(assert (= bs!1292656 (and d!1766944 d!1766724)))

(assert (=> bs!1292656 (= lambda!300038 lambda!300010)))

(declare-fun bs!1292657 () Bool)

(assert (= bs!1292657 (and d!1766944 d!1766512)))

(assert (=> bs!1292657 (= lambda!300038 lambda!299977)))

(assert (=> d!1766944 true))

(assert (=> d!1766944 (= (derivationStepZipper!1676 lt!2255201 (head!11923 (t!376306 s!2326))) (flatMap!1190 lt!2255201 lambda!300038))))

(declare-fun bs!1292660 () Bool)

(assert (= bs!1292660 d!1766944))

(declare-fun m!6570502 () Bool)

(assert (=> bs!1292660 m!6570502))

(assert (=> b!5588816 d!1766944))

(assert (=> b!5588816 d!1766506))

(assert (=> b!5588816 d!1766508))

(assert (=> b!5589265 d!1766362))

(declare-fun d!1766946 () Bool)

(assert (=> d!1766946 true))

(declare-fun setRes!37252 () Bool)

(assert (=> d!1766946 setRes!37252))

(declare-fun condSetEmpty!37252 () Bool)

(declare-fun res!2371848 () (InoxSet Context!9922))

(assert (=> d!1766946 (= condSetEmpty!37252 (= res!2371848 ((as const (Array Context!9922 Bool)) false)))))

(assert (=> d!1766946 (= (choose!42385 lt!2255188 lambda!299914) res!2371848)))

(declare-fun setIsEmpty!37252 () Bool)

(assert (=> setIsEmpty!37252 setRes!37252))

(declare-fun tp!1545973 () Bool)

(declare-fun setNonEmpty!37252 () Bool)

(declare-fun e!3448858 () Bool)

(declare-fun setElem!37252 () Context!9922)

(assert (=> setNonEmpty!37252 (= setRes!37252 (and tp!1545973 (inv!82189 setElem!37252) e!3448858))))

(declare-fun setRest!37252 () (InoxSet Context!9922))

(assert (=> setNonEmpty!37252 (= res!2371848 ((_ map or) (store ((as const (Array Context!9922 Bool)) false) setElem!37252 true) setRest!37252))))

(declare-fun b!5590168 () Bool)

(declare-fun tp!1545972 () Bool)

(assert (=> b!5590168 (= e!3448858 tp!1545972)))

(assert (= (and d!1766946 condSetEmpty!37252) setIsEmpty!37252))

(assert (= (and d!1766946 (not condSetEmpty!37252)) setNonEmpty!37252))

(assert (= setNonEmpty!37252 b!5590168))

(declare-fun m!6570504 () Bool)

(assert (=> setNonEmpty!37252 m!6570504))

(assert (=> d!1766462 d!1766946))

(declare-fun d!1766948 () Bool)

(declare-fun res!2371849 () Bool)

(declare-fun e!3448859 () Bool)

(assert (=> d!1766948 (=> res!2371849 e!3448859)))

(assert (=> d!1766948 (= res!2371849 ((_ is Nil!62907) (exprs!5461 (h!69356 zl!343))))))

(assert (=> d!1766948 (= (forall!14743 (exprs!5461 (h!69356 zl!343)) lambda!299929) e!3448859)))

(declare-fun b!5590169 () Bool)

(declare-fun e!3448860 () Bool)

(assert (=> b!5590169 (= e!3448859 e!3448860)))

(declare-fun res!2371850 () Bool)

(assert (=> b!5590169 (=> (not res!2371850) (not e!3448860))))

(assert (=> b!5590169 (= res!2371850 (dynLambda!24602 lambda!299929 (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun b!5590170 () Bool)

(assert (=> b!5590170 (= e!3448860 (forall!14743 (t!376307 (exprs!5461 (h!69356 zl!343))) lambda!299929))))

(assert (= (and d!1766948 (not res!2371849)) b!5590169))

(assert (= (and b!5590169 res!2371850) b!5590170))

(declare-fun b_lambda!211815 () Bool)

(assert (=> (not b_lambda!211815) (not b!5590169)))

(declare-fun m!6570508 () Bool)

(assert (=> b!5590169 m!6570508))

(declare-fun m!6570510 () Bool)

(assert (=> b!5590170 m!6570510))

(assert (=> d!1766352 d!1766948))

(declare-fun d!1766952 () Bool)

(declare-fun c!979566 () Bool)

(assert (=> d!1766952 (= c!979566 (isEmpty!34725 (tail!11018 (t!376306 s!2326))))))

(declare-fun e!3448861 () Bool)

(assert (=> d!1766952 (= (matchZipper!1715 (derivationStepZipper!1676 lt!2255192 (head!11923 (t!376306 s!2326))) (tail!11018 (t!376306 s!2326))) e!3448861)))

(declare-fun b!5590171 () Bool)

(assert (=> b!5590171 (= e!3448861 (nullableZipper!1572 (derivationStepZipper!1676 lt!2255192 (head!11923 (t!376306 s!2326)))))))

(declare-fun b!5590172 () Bool)

(assert (=> b!5590172 (= e!3448861 (matchZipper!1715 (derivationStepZipper!1676 (derivationStepZipper!1676 lt!2255192 (head!11923 (t!376306 s!2326))) (head!11923 (tail!11018 (t!376306 s!2326)))) (tail!11018 (tail!11018 (t!376306 s!2326)))))))

(assert (= (and d!1766952 c!979566) b!5590171))

(assert (= (and d!1766952 (not c!979566)) b!5590172))

(assert (=> d!1766952 m!6569172))

(assert (=> d!1766952 m!6569580))

(assert (=> b!5590171 m!6569170))

(declare-fun m!6570514 () Bool)

(assert (=> b!5590171 m!6570514))

(assert (=> b!5590172 m!6569172))

(assert (=> b!5590172 m!6569584))

(assert (=> b!5590172 m!6569170))

(assert (=> b!5590172 m!6569584))

(declare-fun m!6570516 () Bool)

(assert (=> b!5590172 m!6570516))

(assert (=> b!5590172 m!6569172))

(assert (=> b!5590172 m!6569588))

(assert (=> b!5590172 m!6570516))

(assert (=> b!5590172 m!6569588))

(declare-fun m!6570518 () Bool)

(assert (=> b!5590172 m!6570518))

(assert (=> b!5588723 d!1766952))

(declare-fun bs!1292669 () Bool)

(declare-fun d!1766956 () Bool)

(assert (= bs!1292669 (and d!1766956 d!1766596)))

(declare-fun lambda!300040 () Int)

(assert (=> bs!1292669 (= lambda!300040 lambda!299989)))

(declare-fun bs!1292670 () Bool)

(assert (= bs!1292670 (and d!1766956 d!1766632)))

(assert (=> bs!1292670 (= lambda!300040 lambda!299992)))

(declare-fun bs!1292671 () Bool)

(assert (= bs!1292671 (and d!1766956 b!5588545)))

(assert (=> bs!1292671 (= (= (head!11923 (t!376306 s!2326)) (h!69354 s!2326)) (= lambda!300040 lambda!299914))))

(declare-fun bs!1292672 () Bool)

(assert (= bs!1292672 (and d!1766956 d!1766684)))

(assert (=> bs!1292672 (= lambda!300040 lambda!300005)))

(declare-fun bs!1292673 () Bool)

(assert (= bs!1292673 (and d!1766956 d!1766498)))

(assert (=> bs!1292673 (= lambda!300040 lambda!299976)))

(declare-fun bs!1292674 () Bool)

(assert (= bs!1292674 (and d!1766956 d!1766944)))

(assert (=> bs!1292674 (= lambda!300040 lambda!300038)))

(declare-fun bs!1292675 () Bool)

(assert (= bs!1292675 (and d!1766956 d!1766724)))

(assert (=> bs!1292675 (= lambda!300040 lambda!300010)))

(declare-fun bs!1292676 () Bool)

(assert (= bs!1292676 (and d!1766956 d!1766512)))

(assert (=> bs!1292676 (= lambda!300040 lambda!299977)))

(assert (=> d!1766956 true))

(assert (=> d!1766956 (= (derivationStepZipper!1676 lt!2255192 (head!11923 (t!376306 s!2326))) (flatMap!1190 lt!2255192 lambda!300040))))

(declare-fun bs!1292677 () Bool)

(assert (= bs!1292677 d!1766956))

(declare-fun m!6570526 () Bool)

(assert (=> bs!1292677 m!6570526))

(assert (=> b!5588723 d!1766956))

(assert (=> b!5588723 d!1766506))

(assert (=> b!5588723 d!1766508))

(declare-fun b!5590184 () Bool)

(declare-fun res!2371855 () Bool)

(declare-fun e!3448873 () Bool)

(assert (=> b!5590184 (=> (not res!2371855) (not e!3448873))))

(declare-fun call!418718 () Bool)

(assert (=> b!5590184 (= res!2371855 call!418718)))

(declare-fun e!3448872 () Bool)

(assert (=> b!5590184 (= e!3448872 e!3448873)))

(declare-fun b!5590185 () Bool)

(declare-fun call!418720 () Bool)

(assert (=> b!5590185 (= e!3448873 call!418720)))

(declare-fun d!1766958 () Bool)

(declare-fun res!2371853 () Bool)

(declare-fun e!3448870 () Bool)

(assert (=> d!1766958 (=> res!2371853 e!3448870)))

(assert (=> d!1766958 (= res!2371853 ((_ is ElementMatch!15577) lt!2255269))))

(assert (=> d!1766958 (= (validRegex!7313 lt!2255269) e!3448870)))

(declare-fun bm!418713 () Bool)

(declare-fun call!418719 () Bool)

(assert (=> bm!418713 (= call!418720 call!418719)))

(declare-fun b!5590186 () Bool)

(declare-fun e!3448874 () Bool)

(assert (=> b!5590186 (= e!3448870 e!3448874)))

(declare-fun c!979572 () Bool)

(assert (=> b!5590186 (= c!979572 ((_ is Star!15577) lt!2255269))))

(declare-fun b!5590187 () Bool)

(declare-fun e!3448871 () Bool)

(assert (=> b!5590187 (= e!3448871 call!418719)))

(declare-fun bm!418714 () Bool)

(declare-fun c!979573 () Bool)

(assert (=> bm!418714 (= call!418718 (validRegex!7313 (ite c!979573 (regOne!31667 lt!2255269) (regOne!31666 lt!2255269))))))

(declare-fun b!5590188 () Bool)

(declare-fun res!2371852 () Bool)

(declare-fun e!3448868 () Bool)

(assert (=> b!5590188 (=> res!2371852 e!3448868)))

(assert (=> b!5590188 (= res!2371852 (not ((_ is Concat!24422) lt!2255269)))))

(assert (=> b!5590188 (= e!3448872 e!3448868)))

(declare-fun b!5590189 () Bool)

(assert (=> b!5590189 (= e!3448874 e!3448871)))

(declare-fun res!2371856 () Bool)

(assert (=> b!5590189 (= res!2371856 (not (nullable!5609 (reg!15906 lt!2255269))))))

(assert (=> b!5590189 (=> (not res!2371856) (not e!3448871))))

(declare-fun b!5590190 () Bool)

(declare-fun e!3448869 () Bool)

(assert (=> b!5590190 (= e!3448868 e!3448869)))

(declare-fun res!2371854 () Bool)

(assert (=> b!5590190 (=> (not res!2371854) (not e!3448869))))

(assert (=> b!5590190 (= res!2371854 call!418718)))

(declare-fun bm!418715 () Bool)

(assert (=> bm!418715 (= call!418719 (validRegex!7313 (ite c!979572 (reg!15906 lt!2255269) (ite c!979573 (regTwo!31667 lt!2255269) (regTwo!31666 lt!2255269)))))))

(declare-fun b!5590191 () Bool)

(assert (=> b!5590191 (= e!3448874 e!3448872)))

(assert (=> b!5590191 (= c!979573 ((_ is Union!15577) lt!2255269))))

(declare-fun b!5590192 () Bool)

(assert (=> b!5590192 (= e!3448869 call!418720)))

(assert (= (and d!1766958 (not res!2371853)) b!5590186))

(assert (= (and b!5590186 c!979572) b!5590189))

(assert (= (and b!5590186 (not c!979572)) b!5590191))

(assert (= (and b!5590189 res!2371856) b!5590187))

(assert (= (and b!5590191 c!979573) b!5590184))

(assert (= (and b!5590191 (not c!979573)) b!5590188))

(assert (= (and b!5590184 res!2371855) b!5590185))

(assert (= (and b!5590188 (not res!2371852)) b!5590190))

(assert (= (and b!5590190 res!2371854) b!5590192))

(assert (= (or b!5590185 b!5590192) bm!418713))

(assert (= (or b!5590184 b!5590190) bm!418714))

(assert (= (or b!5590187 bm!418713) bm!418715))

(declare-fun m!6570532 () Bool)

(assert (=> bm!418714 m!6570532))

(declare-fun m!6570534 () Bool)

(assert (=> b!5590189 m!6570534))

(declare-fun m!6570536 () Bool)

(assert (=> bm!418715 m!6570536))

(assert (=> d!1766382 d!1766958))

(declare-fun d!1766964 () Bool)

(declare-fun res!2371857 () Bool)

(declare-fun e!3448875 () Bool)

(assert (=> d!1766964 (=> res!2371857 e!3448875)))

(assert (=> d!1766964 (= res!2371857 ((_ is Nil!62907) (exprs!5461 (h!69356 zl!343))))))

(assert (=> d!1766964 (= (forall!14743 (exprs!5461 (h!69356 zl!343)) lambda!299953) e!3448875)))

(declare-fun b!5590195 () Bool)

(declare-fun e!3448876 () Bool)

(assert (=> b!5590195 (= e!3448875 e!3448876)))

(declare-fun res!2371858 () Bool)

(assert (=> b!5590195 (=> (not res!2371858) (not e!3448876))))

(assert (=> b!5590195 (= res!2371858 (dynLambda!24602 lambda!299953 (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun b!5590196 () Bool)

(assert (=> b!5590196 (= e!3448876 (forall!14743 (t!376307 (exprs!5461 (h!69356 zl!343))) lambda!299953))))

(assert (= (and d!1766964 (not res!2371857)) b!5590195))

(assert (= (and b!5590195 res!2371858) b!5590196))

(declare-fun b_lambda!211817 () Bool)

(assert (=> (not b_lambda!211817) (not b!5590195)))

(declare-fun m!6570538 () Bool)

(assert (=> b!5590195 m!6570538))

(declare-fun m!6570540 () Bool)

(assert (=> b!5590196 m!6570540))

(assert (=> d!1766382 d!1766964))

(assert (=> d!1766334 d!1766338))

(assert (=> d!1766334 d!1766336))

(declare-fun e!3448879 () Bool)

(declare-fun d!1766966 () Bool)

(assert (=> d!1766966 (= (matchZipper!1715 ((_ map or) lt!2255192 lt!2255201) (t!376306 s!2326)) e!3448879)))

(declare-fun res!2371859 () Bool)

(assert (=> d!1766966 (=> res!2371859 e!3448879)))

(assert (=> d!1766966 (= res!2371859 (matchZipper!1715 lt!2255192 (t!376306 s!2326)))))

(assert (=> d!1766966 true))

(declare-fun _$48!1161 () Unit!155708)

(assert (=> d!1766966 (= (choose!42376 lt!2255192 lt!2255201 (t!376306 s!2326)) _$48!1161)))

(declare-fun b!5590199 () Bool)

(assert (=> b!5590199 (= e!3448879 (matchZipper!1715 lt!2255201 (t!376306 s!2326)))))

(assert (= (and d!1766966 (not res!2371859)) b!5590199))

(assert (=> d!1766966 m!6568924))

(assert (=> d!1766966 m!6568922))

(assert (=> b!5590199 m!6568928))

(assert (=> d!1766334 d!1766966))

(assert (=> d!1766336 d!1766572))

(declare-fun b!5590200 () Bool)

(declare-fun e!3448881 () Bool)

(assert (=> b!5590200 (= e!3448881 (nullable!5609 (regOne!31666 (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292)))))))))

(declare-fun b!5590201 () Bool)

(declare-fun e!3448885 () (InoxSet Context!9922))

(declare-fun call!418724 () (InoxSet Context!9922))

(assert (=> b!5590201 (= e!3448885 call!418724)))

(declare-fun c!979578 () Bool)

(declare-fun call!418726 () List!63031)

(declare-fun bm!418716 () Bool)

(declare-fun c!979580 () Bool)

(assert (=> bm!418716 (= call!418726 ($colon$colon!1640 (exprs!5461 (ite c!979268 lt!2255202 (Context!9923 call!418473))) (ite (or c!979580 c!979578) (regTwo!31666 (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))))) (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292)))))))))

(declare-fun bm!418717 () Bool)

(declare-fun call!418722 () (InoxSet Context!9922))

(declare-fun call!418721 () List!63031)

(declare-fun c!979579 () Bool)

(assert (=> bm!418717 (= call!418722 (derivationStepZipperDown!919 (ite c!979579 (regOne!31667 (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))))) (ite c!979580 (regTwo!31666 (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))))) (ite c!979578 (regOne!31666 (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))))) (reg!15906 (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292)))))))) (ite (or c!979579 c!979580) (ite c!979268 lt!2255202 (Context!9923 call!418473)) (Context!9923 call!418721)) (h!69354 s!2326)))))

(declare-fun b!5590202 () Bool)

(declare-fun e!3448884 () (InoxSet Context!9922))

(declare-fun e!3448883 () (InoxSet Context!9922))

(assert (=> b!5590202 (= e!3448884 e!3448883)))

(assert (=> b!5590202 (= c!979579 ((_ is Union!15577) (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))))))))

(declare-fun c!979577 () Bool)

(declare-fun d!1766968 () Bool)

(assert (=> d!1766968 (= c!979577 (and ((_ is ElementMatch!15577) (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))))) (= (c!979094 (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))))) (h!69354 s!2326))))))

(assert (=> d!1766968 (= (derivationStepZipperDown!919 (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292)))) (ite c!979268 lt!2255202 (Context!9923 call!418473)) (h!69354 s!2326)) e!3448884)))

(declare-fun bm!418718 () Bool)

(declare-fun call!418723 () (InoxSet Context!9922))

(assert (=> bm!418718 (= call!418723 call!418722)))

(declare-fun b!5590203 () Bool)

(declare-fun e!3448880 () (InoxSet Context!9922))

(assert (=> b!5590203 (= e!3448880 e!3448885)))

(assert (=> b!5590203 (= c!979578 ((_ is Concat!24422) (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))))))))

(declare-fun b!5590204 () Bool)

(assert (=> b!5590204 (= c!979580 e!3448881)))

(declare-fun res!2371860 () Bool)

(assert (=> b!5590204 (=> (not res!2371860) (not e!3448881))))

(assert (=> b!5590204 (= res!2371860 ((_ is Concat!24422) (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))))))))

(assert (=> b!5590204 (= e!3448883 e!3448880)))

(declare-fun b!5590205 () Bool)

(declare-fun e!3448882 () (InoxSet Context!9922))

(assert (=> b!5590205 (= e!3448882 call!418724)))

(declare-fun bm!418719 () Bool)

(assert (=> bm!418719 (= call!418721 call!418726)))

(declare-fun b!5590206 () Bool)

(assert (=> b!5590206 (= e!3448884 (store ((as const (Array Context!9922 Bool)) false) (ite c!979268 lt!2255202 (Context!9923 call!418473)) true))))

(declare-fun b!5590207 () Bool)

(declare-fun call!418725 () (InoxSet Context!9922))

(assert (=> b!5590207 (= e!3448883 ((_ map or) call!418722 call!418725))))

(declare-fun b!5590208 () Bool)

(assert (=> b!5590208 (= e!3448880 ((_ map or) call!418725 call!418723))))

(declare-fun b!5590209 () Bool)

(declare-fun c!979576 () Bool)

(assert (=> b!5590209 (= c!979576 ((_ is Star!15577) (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))))))))

(assert (=> b!5590209 (= e!3448885 e!3448882)))

(declare-fun b!5590210 () Bool)

(assert (=> b!5590210 (= e!3448882 ((as const (Array Context!9922 Bool)) false))))

(declare-fun bm!418720 () Bool)

(assert (=> bm!418720 (= call!418724 call!418723)))

(declare-fun bm!418721 () Bool)

(assert (=> bm!418721 (= call!418725 (derivationStepZipperDown!919 (ite c!979579 (regTwo!31667 (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292))))) (regOne!31666 (ite c!979268 (regTwo!31667 (regTwo!31667 (regOne!31666 r!7292))) (regOne!31666 (regTwo!31667 (regOne!31666 r!7292)))))) (ite c!979579 (ite c!979268 lt!2255202 (Context!9923 call!418473)) (Context!9923 call!418726)) (h!69354 s!2326)))))

(assert (= (and d!1766968 c!979577) b!5590206))

(assert (= (and d!1766968 (not c!979577)) b!5590202))

(assert (= (and b!5590202 c!979579) b!5590207))

(assert (= (and b!5590202 (not c!979579)) b!5590204))

(assert (= (and b!5590204 res!2371860) b!5590200))

(assert (= (and b!5590204 c!979580) b!5590208))

(assert (= (and b!5590204 (not c!979580)) b!5590203))

(assert (= (and b!5590203 c!979578) b!5590201))

(assert (= (and b!5590203 (not c!979578)) b!5590209))

(assert (= (and b!5590209 c!979576) b!5590205))

(assert (= (and b!5590209 (not c!979576)) b!5590210))

(assert (= (or b!5590201 b!5590205) bm!418719))

(assert (= (or b!5590201 b!5590205) bm!418720))

(assert (= (or b!5590208 bm!418719) bm!418716))

(assert (= (or b!5590208 bm!418720) bm!418718))

(assert (= (or b!5590207 b!5590208) bm!418721))

(assert (= (or b!5590207 bm!418718) bm!418717))

(declare-fun m!6570546 () Bool)

(assert (=> bm!418721 m!6570546))

(declare-fun m!6570550 () Bool)

(assert (=> b!5590200 m!6570550))

(declare-fun m!6570552 () Bool)

(assert (=> b!5590206 m!6570552))

(declare-fun m!6570554 () Bool)

(assert (=> bm!418716 m!6570554))

(declare-fun m!6570556 () Bool)

(assert (=> bm!418717 m!6570556))

(assert (=> bm!418468 d!1766968))

(declare-fun d!1766974 () Bool)

(assert (=> d!1766974 true))

(declare-fun setRes!37253 () Bool)

(assert (=> d!1766974 setRes!37253))

(declare-fun condSetEmpty!37253 () Bool)

(declare-fun res!2371869 () (InoxSet Context!9922))

(assert (=> d!1766974 (= condSetEmpty!37253 (= res!2371869 ((as const (Array Context!9922 Bool)) false)))))

(assert (=> d!1766974 (= (choose!42385 z!1189 lambda!299914) res!2371869)))

(declare-fun setIsEmpty!37253 () Bool)

(assert (=> setIsEmpty!37253 setRes!37253))

(declare-fun setNonEmpty!37253 () Bool)

(declare-fun e!3448894 () Bool)

(declare-fun tp!1545975 () Bool)

(declare-fun setElem!37253 () Context!9922)

(assert (=> setNonEmpty!37253 (= setRes!37253 (and tp!1545975 (inv!82189 setElem!37253) e!3448894))))

(declare-fun setRest!37253 () (InoxSet Context!9922))

(assert (=> setNonEmpty!37253 (= res!2371869 ((_ map or) (store ((as const (Array Context!9922 Bool)) false) setElem!37253 true) setRest!37253))))

(declare-fun b!5590227 () Bool)

(declare-fun tp!1545974 () Bool)

(assert (=> b!5590227 (= e!3448894 tp!1545974)))

(assert (= (and d!1766974 condSetEmpty!37253) setIsEmpty!37253))

(assert (= (and d!1766974 (not condSetEmpty!37253)) setNonEmpty!37253))

(assert (= setNonEmpty!37253 b!5590227))

(declare-fun m!6570558 () Bool)

(assert (=> setNonEmpty!37253 m!6570558))

(assert (=> d!1766440 d!1766974))

(assert (=> d!1766456 d!1766458))

(assert (=> d!1766456 d!1766380))

(declare-fun d!1766976 () Bool)

(declare-fun e!3448895 () Bool)

(assert (=> d!1766976 (= (matchZipper!1715 ((_ map or) lt!2255189 lt!2255201) (t!376306 s!2326)) e!3448895)))

(declare-fun res!2371870 () Bool)

(assert (=> d!1766976 (=> res!2371870 e!3448895)))

(assert (=> d!1766976 (= res!2371870 (matchZipper!1715 lt!2255189 (t!376306 s!2326)))))

(assert (=> d!1766976 true))

(declare-fun _$48!1162 () Unit!155708)

(assert (=> d!1766976 (= (choose!42376 lt!2255189 lt!2255201 (t!376306 s!2326)) _$48!1162)))

(declare-fun b!5590228 () Bool)

(assert (=> b!5590228 (= e!3448895 (matchZipper!1715 lt!2255201 (t!376306 s!2326)))))

(assert (= (and d!1766976 (not res!2371870)) b!5590228))

(assert (=> d!1766976 m!6568998))

(assert (=> d!1766976 m!6568934))

(assert (=> b!5590228 m!6568928))

(assert (=> d!1766456 d!1766976))

(declare-fun bs!1292686 () Bool)

(declare-fun d!1766978 () Bool)

(assert (= bs!1292686 (and d!1766978 d!1766590)))

(declare-fun lambda!300042 () Int)

(assert (=> bs!1292686 (= lambda!300042 lambda!299988)))

(declare-fun bs!1292687 () Bool)

(assert (= bs!1292687 (and d!1766978 d!1766752)))

(assert (=> bs!1292687 (= lambda!300042 lambda!300012)))

(declare-fun bs!1292688 () Bool)

(assert (= bs!1292688 (and d!1766978 d!1766718)))

(assert (=> bs!1292688 (= lambda!300042 lambda!300009)))

(declare-fun bs!1292689 () Bool)

(assert (= bs!1292689 (and d!1766978 d!1766730)))

(assert (=> bs!1292689 (= lambda!300042 lambda!300011)))

(declare-fun bs!1292690 () Bool)

(assert (= bs!1292690 (and d!1766978 d!1766762)))

(assert (=> bs!1292690 (= lambda!300042 lambda!300015)))

(declare-fun bs!1292691 () Bool)

(assert (= bs!1292691 (and d!1766978 d!1766626)))

(assert (=> bs!1292691 (= lambda!300042 lambda!299991)))

(declare-fun bs!1292692 () Bool)

(assert (= bs!1292692 (and d!1766978 d!1766624)))

(assert (=> bs!1292692 (= lambda!300042 lambda!299990)))

(assert (=> d!1766978 (= (nullableZipper!1572 ((_ map or) lt!2255192 lt!2255201)) (exists!2165 ((_ map or) lt!2255192 lt!2255201) lambda!300042))))

(declare-fun bs!1292693 () Bool)

(assert (= bs!1292693 d!1766978))

(declare-fun m!6570572 () Bool)

(assert (=> bs!1292693 m!6570572))

(assert (=> b!5588724 d!1766978))

(assert (=> bs!1292359 d!1766438))

(declare-fun b!5590243 () Bool)

(declare-fun e!3448902 () Bool)

(declare-fun tp!1545978 () Bool)

(declare-fun tp!1545977 () Bool)

(assert (=> b!5590243 (= e!3448902 (and tp!1545978 tp!1545977))))

(declare-fun b!5590240 () Bool)

(assert (=> b!5590240 (= e!3448902 tp_is_empty!40407)))

(declare-fun b!5590242 () Bool)

(declare-fun tp!1545980 () Bool)

(assert (=> b!5590242 (= e!3448902 tp!1545980)))

(assert (=> b!5589323 (= tp!1545931 e!3448902)))

(declare-fun b!5590241 () Bool)

(declare-fun tp!1545979 () Bool)

(declare-fun tp!1545976 () Bool)

(assert (=> b!5590241 (= e!3448902 (and tp!1545979 tp!1545976))))

(assert (= (and b!5589323 ((_ is ElementMatch!15577) (regOne!31667 (reg!15906 r!7292)))) b!5590240))

(assert (= (and b!5589323 ((_ is Concat!24422) (regOne!31667 (reg!15906 r!7292)))) b!5590241))

(assert (= (and b!5589323 ((_ is Star!15577) (regOne!31667 (reg!15906 r!7292)))) b!5590242))

(assert (= (and b!5589323 ((_ is Union!15577) (regOne!31667 (reg!15906 r!7292)))) b!5590243))

(declare-fun b!5590247 () Bool)

(declare-fun e!3448903 () Bool)

(declare-fun tp!1545983 () Bool)

(declare-fun tp!1545982 () Bool)

(assert (=> b!5590247 (= e!3448903 (and tp!1545983 tp!1545982))))

(declare-fun b!5590244 () Bool)

(assert (=> b!5590244 (= e!3448903 tp_is_empty!40407)))

(declare-fun b!5590246 () Bool)

(declare-fun tp!1545985 () Bool)

(assert (=> b!5590246 (= e!3448903 tp!1545985)))

(assert (=> b!5589323 (= tp!1545930 e!3448903)))

(declare-fun b!5590245 () Bool)

(declare-fun tp!1545984 () Bool)

(declare-fun tp!1545981 () Bool)

(assert (=> b!5590245 (= e!3448903 (and tp!1545984 tp!1545981))))

(assert (= (and b!5589323 ((_ is ElementMatch!15577) (regTwo!31667 (reg!15906 r!7292)))) b!5590244))

(assert (= (and b!5589323 ((_ is Concat!24422) (regTwo!31667 (reg!15906 r!7292)))) b!5590245))

(assert (= (and b!5589323 ((_ is Star!15577) (regTwo!31667 (reg!15906 r!7292)))) b!5590246))

(assert (= (and b!5589323 ((_ is Union!15577) (regTwo!31667 (reg!15906 r!7292)))) b!5590247))

(declare-fun b!5590249 () Bool)

(declare-fun e!3448905 () Bool)

(declare-fun tp!1545986 () Bool)

(assert (=> b!5590249 (= e!3448905 tp!1545986)))

(declare-fun e!3448904 () Bool)

(declare-fun tp!1545987 () Bool)

(declare-fun b!5590248 () Bool)

(assert (=> b!5590248 (= e!3448904 (and (inv!82189 (h!69356 (t!376308 (t!376308 zl!343)))) e!3448905 tp!1545987))))

(assert (=> b!5589299 (= tp!1545906 e!3448904)))

(assert (= b!5590248 b!5590249))

(assert (= (and b!5589299 ((_ is Cons!62908) (t!376308 (t!376308 zl!343)))) b!5590248))

(declare-fun m!6570578 () Bool)

(assert (=> b!5590248 m!6570578))

(declare-fun b!5590253 () Bool)

(declare-fun e!3448906 () Bool)

(declare-fun tp!1545990 () Bool)

(declare-fun tp!1545989 () Bool)

(assert (=> b!5590253 (= e!3448906 (and tp!1545990 tp!1545989))))

(declare-fun b!5590250 () Bool)

(assert (=> b!5590250 (= e!3448906 tp_is_empty!40407)))

(declare-fun b!5590252 () Bool)

(declare-fun tp!1545992 () Bool)

(assert (=> b!5590252 (= e!3448906 tp!1545992)))

(assert (=> b!5589322 (= tp!1545933 e!3448906)))

(declare-fun b!5590251 () Bool)

(declare-fun tp!1545991 () Bool)

(declare-fun tp!1545988 () Bool)

(assert (=> b!5590251 (= e!3448906 (and tp!1545991 tp!1545988))))

(assert (= (and b!5589322 ((_ is ElementMatch!15577) (reg!15906 (reg!15906 r!7292)))) b!5590250))

(assert (= (and b!5589322 ((_ is Concat!24422) (reg!15906 (reg!15906 r!7292)))) b!5590251))

(assert (= (and b!5589322 ((_ is Star!15577) (reg!15906 (reg!15906 r!7292)))) b!5590252))

(assert (= (and b!5589322 ((_ is Union!15577) (reg!15906 (reg!15906 r!7292)))) b!5590253))

(declare-fun b!5590257 () Bool)

(declare-fun e!3448907 () Bool)

(declare-fun tp!1545995 () Bool)

(declare-fun tp!1545994 () Bool)

(assert (=> b!5590257 (= e!3448907 (and tp!1545995 tp!1545994))))

(declare-fun b!5590254 () Bool)

(assert (=> b!5590254 (= e!3448907 tp_is_empty!40407)))

(declare-fun b!5590256 () Bool)

(declare-fun tp!1545997 () Bool)

(assert (=> b!5590256 (= e!3448907 tp!1545997)))

(assert (=> b!5589331 (= tp!1545941 e!3448907)))

(declare-fun b!5590255 () Bool)

(declare-fun tp!1545996 () Bool)

(declare-fun tp!1545993 () Bool)

(assert (=> b!5590255 (= e!3448907 (and tp!1545996 tp!1545993))))

(assert (= (and b!5589331 ((_ is ElementMatch!15577) (regOne!31667 (regTwo!31666 r!7292)))) b!5590254))

(assert (= (and b!5589331 ((_ is Concat!24422) (regOne!31667 (regTwo!31666 r!7292)))) b!5590255))

(assert (= (and b!5589331 ((_ is Star!15577) (regOne!31667 (regTwo!31666 r!7292)))) b!5590256))

(assert (= (and b!5589331 ((_ is Union!15577) (regOne!31667 (regTwo!31666 r!7292)))) b!5590257))

(declare-fun b!5590266 () Bool)

(declare-fun e!3448911 () Bool)

(declare-fun tp!1546000 () Bool)

(declare-fun tp!1545999 () Bool)

(assert (=> b!5590266 (= e!3448911 (and tp!1546000 tp!1545999))))

(declare-fun b!5590263 () Bool)

(assert (=> b!5590263 (= e!3448911 tp_is_empty!40407)))

(declare-fun b!5590265 () Bool)

(declare-fun tp!1546002 () Bool)

(assert (=> b!5590265 (= e!3448911 tp!1546002)))

(assert (=> b!5589331 (= tp!1545940 e!3448911)))

(declare-fun b!5590264 () Bool)

(declare-fun tp!1546001 () Bool)

(declare-fun tp!1545998 () Bool)

(assert (=> b!5590264 (= e!3448911 (and tp!1546001 tp!1545998))))

(assert (= (and b!5589331 ((_ is ElementMatch!15577) (regTwo!31667 (regTwo!31666 r!7292)))) b!5590263))

(assert (= (and b!5589331 ((_ is Concat!24422) (regTwo!31667 (regTwo!31666 r!7292)))) b!5590264))

(assert (= (and b!5589331 ((_ is Star!15577) (regTwo!31667 (regTwo!31666 r!7292)))) b!5590265))

(assert (= (and b!5589331 ((_ is Union!15577) (regTwo!31667 (regTwo!31666 r!7292)))) b!5590266))

(declare-fun b!5590267 () Bool)

(declare-fun e!3448912 () Bool)

(declare-fun tp!1546003 () Bool)

(declare-fun tp!1546004 () Bool)

(assert (=> b!5590267 (= e!3448912 (and tp!1546003 tp!1546004))))

(assert (=> b!5589300 (= tp!1545905 e!3448912)))

(assert (= (and b!5589300 ((_ is Cons!62907) (exprs!5461 (h!69356 (t!376308 zl!343))))) b!5590267))

(declare-fun b!5590271 () Bool)

(declare-fun e!3448913 () Bool)

(declare-fun tp!1546007 () Bool)

(declare-fun tp!1546006 () Bool)

(assert (=> b!5590271 (= e!3448913 (and tp!1546007 tp!1546006))))

(declare-fun b!5590268 () Bool)

(assert (=> b!5590268 (= e!3448913 tp_is_empty!40407)))

(declare-fun b!5590270 () Bool)

(declare-fun tp!1546009 () Bool)

(assert (=> b!5590270 (= e!3448913 tp!1546009)))

(assert (=> b!5589312 (= tp!1545920 e!3448913)))

(declare-fun b!5590269 () Bool)

(declare-fun tp!1546008 () Bool)

(declare-fun tp!1546005 () Bool)

(assert (=> b!5590269 (= e!3448913 (and tp!1546008 tp!1546005))))

(assert (= (and b!5589312 ((_ is ElementMatch!15577) (regOne!31666 (regOne!31667 r!7292)))) b!5590268))

(assert (= (and b!5589312 ((_ is Concat!24422) (regOne!31666 (regOne!31667 r!7292)))) b!5590269))

(assert (= (and b!5589312 ((_ is Star!15577) (regOne!31666 (regOne!31667 r!7292)))) b!5590270))

(assert (= (and b!5589312 ((_ is Union!15577) (regOne!31666 (regOne!31667 r!7292)))) b!5590271))

(declare-fun b!5590276 () Bool)

(declare-fun e!3448915 () Bool)

(declare-fun tp!1546012 () Bool)

(declare-fun tp!1546011 () Bool)

(assert (=> b!5590276 (= e!3448915 (and tp!1546012 tp!1546011))))

(declare-fun b!5590273 () Bool)

(assert (=> b!5590273 (= e!3448915 tp_is_empty!40407)))

(declare-fun b!5590275 () Bool)

(declare-fun tp!1546014 () Bool)

(assert (=> b!5590275 (= e!3448915 tp!1546014)))

(assert (=> b!5589312 (= tp!1545917 e!3448915)))

(declare-fun b!5590274 () Bool)

(declare-fun tp!1546013 () Bool)

(declare-fun tp!1546010 () Bool)

(assert (=> b!5590274 (= e!3448915 (and tp!1546013 tp!1546010))))

(assert (= (and b!5589312 ((_ is ElementMatch!15577) (regTwo!31666 (regOne!31667 r!7292)))) b!5590273))

(assert (= (and b!5589312 ((_ is Concat!24422) (regTwo!31666 (regOne!31667 r!7292)))) b!5590274))

(assert (= (and b!5589312 ((_ is Star!15577) (regTwo!31666 (regOne!31667 r!7292)))) b!5590275))

(assert (= (and b!5589312 ((_ is Union!15577) (regTwo!31666 (regOne!31667 r!7292)))) b!5590276))

(declare-fun b!5590277 () Bool)

(declare-fun e!3448916 () Bool)

(declare-fun tp!1546015 () Bool)

(declare-fun tp!1546016 () Bool)

(assert (=> b!5590277 (= e!3448916 (and tp!1546015 tp!1546016))))

(assert (=> b!5589292 (= tp!1545900 e!3448916)))

(assert (= (and b!5589292 ((_ is Cons!62907) (exprs!5461 setElem!37243))) b!5590277))

(declare-fun b!5590281 () Bool)

(declare-fun e!3448917 () Bool)

(declare-fun tp!1546019 () Bool)

(declare-fun tp!1546018 () Bool)

(assert (=> b!5590281 (= e!3448917 (and tp!1546019 tp!1546018))))

(declare-fun b!5590278 () Bool)

(assert (=> b!5590278 (= e!3448917 tp_is_empty!40407)))

(declare-fun b!5590280 () Bool)

(declare-fun tp!1546021 () Bool)

(assert (=> b!5590280 (= e!3448917 tp!1546021)))

(assert (=> b!5589314 (= tp!1545919 e!3448917)))

(declare-fun b!5590279 () Bool)

(declare-fun tp!1546020 () Bool)

(declare-fun tp!1546017 () Bool)

(assert (=> b!5590279 (= e!3448917 (and tp!1546020 tp!1546017))))

(assert (= (and b!5589314 ((_ is ElementMatch!15577) (regOne!31667 (regOne!31667 r!7292)))) b!5590278))

(assert (= (and b!5589314 ((_ is Concat!24422) (regOne!31667 (regOne!31667 r!7292)))) b!5590279))

(assert (= (and b!5589314 ((_ is Star!15577) (regOne!31667 (regOne!31667 r!7292)))) b!5590280))

(assert (= (and b!5589314 ((_ is Union!15577) (regOne!31667 (regOne!31667 r!7292)))) b!5590281))

(declare-fun b!5590287 () Bool)

(declare-fun e!3448919 () Bool)

(declare-fun tp!1546024 () Bool)

(declare-fun tp!1546023 () Bool)

(assert (=> b!5590287 (= e!3448919 (and tp!1546024 tp!1546023))))

(declare-fun b!5590284 () Bool)

(assert (=> b!5590284 (= e!3448919 tp_is_empty!40407)))

(declare-fun b!5590286 () Bool)

(declare-fun tp!1546026 () Bool)

(assert (=> b!5590286 (= e!3448919 tp!1546026)))

(assert (=> b!5589314 (= tp!1545918 e!3448919)))

(declare-fun b!5590285 () Bool)

(declare-fun tp!1546025 () Bool)

(declare-fun tp!1546022 () Bool)

(assert (=> b!5590285 (= e!3448919 (and tp!1546025 tp!1546022))))

(assert (= (and b!5589314 ((_ is ElementMatch!15577) (regTwo!31667 (regOne!31667 r!7292)))) b!5590284))

(assert (= (and b!5589314 ((_ is Concat!24422) (regTwo!31667 (regOne!31667 r!7292)))) b!5590285))

(assert (= (and b!5589314 ((_ is Star!15577) (regTwo!31667 (regOne!31667 r!7292)))) b!5590286))

(assert (= (and b!5589314 ((_ is Union!15577) (regTwo!31667 (regOne!31667 r!7292)))) b!5590287))

(declare-fun b!5590291 () Bool)

(declare-fun e!3448920 () Bool)

(declare-fun tp!1546029 () Bool)

(declare-fun tp!1546028 () Bool)

(assert (=> b!5590291 (= e!3448920 (and tp!1546029 tp!1546028))))

(declare-fun b!5590288 () Bool)

(assert (=> b!5590288 (= e!3448920 tp_is_empty!40407)))

(declare-fun b!5590290 () Bool)

(declare-fun tp!1546031 () Bool)

(assert (=> b!5590290 (= e!3448920 tp!1546031)))

(assert (=> b!5589330 (= tp!1545943 e!3448920)))

(declare-fun b!5590289 () Bool)

(declare-fun tp!1546030 () Bool)

(declare-fun tp!1546027 () Bool)

(assert (=> b!5590289 (= e!3448920 (and tp!1546030 tp!1546027))))

(assert (= (and b!5589330 ((_ is ElementMatch!15577) (reg!15906 (regTwo!31666 r!7292)))) b!5590288))

(assert (= (and b!5589330 ((_ is Concat!24422) (reg!15906 (regTwo!31666 r!7292)))) b!5590289))

(assert (= (and b!5589330 ((_ is Star!15577) (reg!15906 (regTwo!31666 r!7292)))) b!5590290))

(assert (= (and b!5589330 ((_ is Union!15577) (reg!15906 (regTwo!31666 r!7292)))) b!5590291))

(declare-fun b!5590295 () Bool)

(declare-fun e!3448921 () Bool)

(declare-fun tp!1546034 () Bool)

(declare-fun tp!1546033 () Bool)

(assert (=> b!5590295 (= e!3448921 (and tp!1546034 tp!1546033))))

(declare-fun b!5590292 () Bool)

(assert (=> b!5590292 (= e!3448921 tp_is_empty!40407)))

(declare-fun b!5590294 () Bool)

(declare-fun tp!1546036 () Bool)

(assert (=> b!5590294 (= e!3448921 tp!1546036)))

(assert (=> b!5589321 (= tp!1545932 e!3448921)))

(declare-fun b!5590293 () Bool)

(declare-fun tp!1546035 () Bool)

(declare-fun tp!1546032 () Bool)

(assert (=> b!5590293 (= e!3448921 (and tp!1546035 tp!1546032))))

(assert (= (and b!5589321 ((_ is ElementMatch!15577) (regOne!31666 (reg!15906 r!7292)))) b!5590292))

(assert (= (and b!5589321 ((_ is Concat!24422) (regOne!31666 (reg!15906 r!7292)))) b!5590293))

(assert (= (and b!5589321 ((_ is Star!15577) (regOne!31666 (reg!15906 r!7292)))) b!5590294))

(assert (= (and b!5589321 ((_ is Union!15577) (regOne!31666 (reg!15906 r!7292)))) b!5590295))

(declare-fun b!5590299 () Bool)

(declare-fun e!3448922 () Bool)

(declare-fun tp!1546039 () Bool)

(declare-fun tp!1546038 () Bool)

(assert (=> b!5590299 (= e!3448922 (and tp!1546039 tp!1546038))))

(declare-fun b!5590296 () Bool)

(assert (=> b!5590296 (= e!3448922 tp_is_empty!40407)))

(declare-fun b!5590298 () Bool)

(declare-fun tp!1546041 () Bool)

(assert (=> b!5590298 (= e!3448922 tp!1546041)))

(assert (=> b!5589321 (= tp!1545929 e!3448922)))

(declare-fun b!5590297 () Bool)

(declare-fun tp!1546040 () Bool)

(declare-fun tp!1546037 () Bool)

(assert (=> b!5590297 (= e!3448922 (and tp!1546040 tp!1546037))))

(assert (= (and b!5589321 ((_ is ElementMatch!15577) (regTwo!31666 (reg!15906 r!7292)))) b!5590296))

(assert (= (and b!5589321 ((_ is Concat!24422) (regTwo!31666 (reg!15906 r!7292)))) b!5590297))

(assert (= (and b!5589321 ((_ is Star!15577) (regTwo!31666 (reg!15906 r!7292)))) b!5590298))

(assert (= (and b!5589321 ((_ is Union!15577) (regTwo!31666 (reg!15906 r!7292)))) b!5590299))

(declare-fun condSetEmpty!37254 () Bool)

(assert (=> setNonEmpty!37243 (= condSetEmpty!37254 (= setRest!37243 ((as const (Array Context!9922 Bool)) false)))))

(declare-fun setRes!37254 () Bool)

(assert (=> setNonEmpty!37243 (= tp!1545899 setRes!37254)))

(declare-fun setIsEmpty!37254 () Bool)

(assert (=> setIsEmpty!37254 setRes!37254))

(declare-fun tp!1546042 () Bool)

(declare-fun setElem!37254 () Context!9922)

(declare-fun setNonEmpty!37254 () Bool)

(declare-fun e!3448923 () Bool)

(assert (=> setNonEmpty!37254 (= setRes!37254 (and tp!1546042 (inv!82189 setElem!37254) e!3448923))))

(declare-fun setRest!37254 () (InoxSet Context!9922))

(assert (=> setNonEmpty!37254 (= setRest!37243 ((_ map or) (store ((as const (Array Context!9922 Bool)) false) setElem!37254 true) setRest!37254))))

(declare-fun b!5590300 () Bool)

(declare-fun tp!1546043 () Bool)

(assert (=> b!5590300 (= e!3448923 tp!1546043)))

(assert (= (and setNonEmpty!37243 condSetEmpty!37254) setIsEmpty!37254))

(assert (= (and setNonEmpty!37243 (not condSetEmpty!37254)) setNonEmpty!37254))

(assert (= setNonEmpty!37254 b!5590300))

(declare-fun m!6570598 () Bool)

(assert (=> setNonEmpty!37254 m!6570598))

(declare-fun b!5590304 () Bool)

(declare-fun e!3448924 () Bool)

(declare-fun tp!1546046 () Bool)

(declare-fun tp!1546045 () Bool)

(assert (=> b!5590304 (= e!3448924 (and tp!1546046 tp!1546045))))

(declare-fun b!5590301 () Bool)

(assert (=> b!5590301 (= e!3448924 tp_is_empty!40407)))

(declare-fun b!5590303 () Bool)

(declare-fun tp!1546048 () Bool)

(assert (=> b!5590303 (= e!3448924 tp!1546048)))

(assert (=> b!5589313 (= tp!1545921 e!3448924)))

(declare-fun b!5590302 () Bool)

(declare-fun tp!1546047 () Bool)

(declare-fun tp!1546044 () Bool)

(assert (=> b!5590302 (= e!3448924 (and tp!1546047 tp!1546044))))

(assert (= (and b!5589313 ((_ is ElementMatch!15577) (reg!15906 (regOne!31667 r!7292)))) b!5590301))

(assert (= (and b!5589313 ((_ is Concat!24422) (reg!15906 (regOne!31667 r!7292)))) b!5590302))

(assert (= (and b!5589313 ((_ is Star!15577) (reg!15906 (regOne!31667 r!7292)))) b!5590303))

(assert (= (and b!5589313 ((_ is Union!15577) (reg!15906 (regOne!31667 r!7292)))) b!5590304))

(declare-fun b!5590308 () Bool)

(declare-fun e!3448925 () Bool)

(declare-fun tp!1546051 () Bool)

(declare-fun tp!1546050 () Bool)

(assert (=> b!5590308 (= e!3448925 (and tp!1546051 tp!1546050))))

(declare-fun b!5590305 () Bool)

(assert (=> b!5590305 (= e!3448925 tp_is_empty!40407)))

(declare-fun b!5590307 () Bool)

(declare-fun tp!1546053 () Bool)

(assert (=> b!5590307 (= e!3448925 tp!1546053)))

(assert (=> b!5589329 (= tp!1545942 e!3448925)))

(declare-fun b!5590306 () Bool)

(declare-fun tp!1546052 () Bool)

(declare-fun tp!1546049 () Bool)

(assert (=> b!5590306 (= e!3448925 (and tp!1546052 tp!1546049))))

(assert (= (and b!5589329 ((_ is ElementMatch!15577) (regOne!31666 (regTwo!31666 r!7292)))) b!5590305))

(assert (= (and b!5589329 ((_ is Concat!24422) (regOne!31666 (regTwo!31666 r!7292)))) b!5590306))

(assert (= (and b!5589329 ((_ is Star!15577) (regOne!31666 (regTwo!31666 r!7292)))) b!5590307))

(assert (= (and b!5589329 ((_ is Union!15577) (regOne!31666 (regTwo!31666 r!7292)))) b!5590308))

(declare-fun b!5590312 () Bool)

(declare-fun e!3448926 () Bool)

(declare-fun tp!1546056 () Bool)

(declare-fun tp!1546055 () Bool)

(assert (=> b!5590312 (= e!3448926 (and tp!1546056 tp!1546055))))

(declare-fun b!5590309 () Bool)

(assert (=> b!5590309 (= e!3448926 tp_is_empty!40407)))

(declare-fun b!5590311 () Bool)

(declare-fun tp!1546058 () Bool)

(assert (=> b!5590311 (= e!3448926 tp!1546058)))

(assert (=> b!5589329 (= tp!1545939 e!3448926)))

(declare-fun b!5590310 () Bool)

(declare-fun tp!1546057 () Bool)

(declare-fun tp!1546054 () Bool)

(assert (=> b!5590310 (= e!3448926 (and tp!1546057 tp!1546054))))

(assert (= (and b!5589329 ((_ is ElementMatch!15577) (regTwo!31666 (regTwo!31666 r!7292)))) b!5590309))

(assert (= (and b!5589329 ((_ is Concat!24422) (regTwo!31666 (regTwo!31666 r!7292)))) b!5590310))

(assert (= (and b!5589329 ((_ is Star!15577) (regTwo!31666 (regTwo!31666 r!7292)))) b!5590311))

(assert (= (and b!5589329 ((_ is Union!15577) (regTwo!31666 (regTwo!31666 r!7292)))) b!5590312))

(declare-fun b!5590316 () Bool)

(declare-fun e!3448927 () Bool)

(declare-fun tp!1546061 () Bool)

(declare-fun tp!1546060 () Bool)

(assert (=> b!5590316 (= e!3448927 (and tp!1546061 tp!1546060))))

(declare-fun b!5590313 () Bool)

(assert (=> b!5590313 (= e!3448927 tp_is_empty!40407)))

(declare-fun b!5590315 () Bool)

(declare-fun tp!1546063 () Bool)

(assert (=> b!5590315 (= e!3448927 tp!1546063)))

(assert (=> b!5589319 (= tp!1545927 e!3448927)))

(declare-fun b!5590314 () Bool)

(declare-fun tp!1546062 () Bool)

(declare-fun tp!1546059 () Bool)

(assert (=> b!5590314 (= e!3448927 (and tp!1546062 tp!1546059))))

(assert (= (and b!5589319 ((_ is ElementMatch!15577) (h!69355 (exprs!5461 (h!69356 zl!343))))) b!5590313))

(assert (= (and b!5589319 ((_ is Concat!24422) (h!69355 (exprs!5461 (h!69356 zl!343))))) b!5590314))

(assert (= (and b!5589319 ((_ is Star!15577) (h!69355 (exprs!5461 (h!69356 zl!343))))) b!5590315))

(assert (= (and b!5589319 ((_ is Union!15577) (h!69355 (exprs!5461 (h!69356 zl!343))))) b!5590316))

(declare-fun b!5590317 () Bool)

(declare-fun e!3448928 () Bool)

(declare-fun tp!1546064 () Bool)

(declare-fun tp!1546065 () Bool)

(assert (=> b!5590317 (= e!3448928 (and tp!1546064 tp!1546065))))

(assert (=> b!5589319 (= tp!1545928 e!3448928)))

(assert (= (and b!5589319 ((_ is Cons!62907) (t!376307 (exprs!5461 (h!69356 zl!343))))) b!5590317))

(declare-fun b!5590321 () Bool)

(declare-fun e!3448929 () Bool)

(declare-fun tp!1546068 () Bool)

(declare-fun tp!1546067 () Bool)

(assert (=> b!5590321 (= e!3448929 (and tp!1546068 tp!1546067))))

(declare-fun b!5590318 () Bool)

(assert (=> b!5590318 (= e!3448929 tp_is_empty!40407)))

(declare-fun b!5590320 () Bool)

(declare-fun tp!1546070 () Bool)

(assert (=> b!5590320 (= e!3448929 tp!1546070)))

(assert (=> b!5589327 (= tp!1545936 e!3448929)))

(declare-fun b!5590319 () Bool)

(declare-fun tp!1546069 () Bool)

(declare-fun tp!1546066 () Bool)

(assert (=> b!5590319 (= e!3448929 (and tp!1546069 tp!1546066))))

(assert (= (and b!5589327 ((_ is ElementMatch!15577) (regOne!31667 (regOne!31666 r!7292)))) b!5590318))

(assert (= (and b!5589327 ((_ is Concat!24422) (regOne!31667 (regOne!31666 r!7292)))) b!5590319))

(assert (= (and b!5589327 ((_ is Star!15577) (regOne!31667 (regOne!31666 r!7292)))) b!5590320))

(assert (= (and b!5589327 ((_ is Union!15577) (regOne!31667 (regOne!31666 r!7292)))) b!5590321))

(declare-fun b!5590325 () Bool)

(declare-fun e!3448930 () Bool)

(declare-fun tp!1546073 () Bool)

(declare-fun tp!1546072 () Bool)

(assert (=> b!5590325 (= e!3448930 (and tp!1546073 tp!1546072))))

(declare-fun b!5590322 () Bool)

(assert (=> b!5590322 (= e!3448930 tp_is_empty!40407)))

(declare-fun b!5590324 () Bool)

(declare-fun tp!1546075 () Bool)

(assert (=> b!5590324 (= e!3448930 tp!1546075)))

(assert (=> b!5589327 (= tp!1545935 e!3448930)))

(declare-fun b!5590323 () Bool)

(declare-fun tp!1546074 () Bool)

(declare-fun tp!1546071 () Bool)

(assert (=> b!5590323 (= e!3448930 (and tp!1546074 tp!1546071))))

(assert (= (and b!5589327 ((_ is ElementMatch!15577) (regTwo!31667 (regOne!31666 r!7292)))) b!5590322))

(assert (= (and b!5589327 ((_ is Concat!24422) (regTwo!31667 (regOne!31666 r!7292)))) b!5590323))

(assert (= (and b!5589327 ((_ is Star!15577) (regTwo!31667 (regOne!31666 r!7292)))) b!5590324))

(assert (= (and b!5589327 ((_ is Union!15577) (regTwo!31667 (regOne!31666 r!7292)))) b!5590325))

(declare-fun b!5590329 () Bool)

(declare-fun e!3448931 () Bool)

(declare-fun tp!1546078 () Bool)

(declare-fun tp!1546077 () Bool)

(assert (=> b!5590329 (= e!3448931 (and tp!1546078 tp!1546077))))

(declare-fun b!5590326 () Bool)

(assert (=> b!5590326 (= e!3448931 tp_is_empty!40407)))

(declare-fun b!5590328 () Bool)

(declare-fun tp!1546080 () Bool)

(assert (=> b!5590328 (= e!3448931 tp!1546080)))

(assert (=> b!5589316 (= tp!1545925 e!3448931)))

(declare-fun b!5590327 () Bool)

(declare-fun tp!1546079 () Bool)

(declare-fun tp!1546076 () Bool)

(assert (=> b!5590327 (= e!3448931 (and tp!1546079 tp!1546076))))

(assert (= (and b!5589316 ((_ is ElementMatch!15577) (regOne!31666 (regTwo!31667 r!7292)))) b!5590326))

(assert (= (and b!5589316 ((_ is Concat!24422) (regOne!31666 (regTwo!31667 r!7292)))) b!5590327))

(assert (= (and b!5589316 ((_ is Star!15577) (regOne!31666 (regTwo!31667 r!7292)))) b!5590328))

(assert (= (and b!5589316 ((_ is Union!15577) (regOne!31666 (regTwo!31667 r!7292)))) b!5590329))

(declare-fun b!5590333 () Bool)

(declare-fun e!3448932 () Bool)

(declare-fun tp!1546083 () Bool)

(declare-fun tp!1546082 () Bool)

(assert (=> b!5590333 (= e!3448932 (and tp!1546083 tp!1546082))))

(declare-fun b!5590330 () Bool)

(assert (=> b!5590330 (= e!3448932 tp_is_empty!40407)))

(declare-fun b!5590332 () Bool)

(declare-fun tp!1546085 () Bool)

(assert (=> b!5590332 (= e!3448932 tp!1546085)))

(assert (=> b!5589316 (= tp!1545922 e!3448932)))

(declare-fun b!5590331 () Bool)

(declare-fun tp!1546084 () Bool)

(declare-fun tp!1546081 () Bool)

(assert (=> b!5590331 (= e!3448932 (and tp!1546084 tp!1546081))))

(assert (= (and b!5589316 ((_ is ElementMatch!15577) (regTwo!31666 (regTwo!31667 r!7292)))) b!5590330))

(assert (= (and b!5589316 ((_ is Concat!24422) (regTwo!31666 (regTwo!31667 r!7292)))) b!5590331))

(assert (= (and b!5589316 ((_ is Star!15577) (regTwo!31666 (regTwo!31667 r!7292)))) b!5590332))

(assert (= (and b!5589316 ((_ is Union!15577) (regTwo!31666 (regTwo!31667 r!7292)))) b!5590333))

(declare-fun b!5590337 () Bool)

(declare-fun e!3448933 () Bool)

(declare-fun tp!1546088 () Bool)

(declare-fun tp!1546087 () Bool)

(assert (=> b!5590337 (= e!3448933 (and tp!1546088 tp!1546087))))

(declare-fun b!5590334 () Bool)

(assert (=> b!5590334 (= e!3448933 tp_is_empty!40407)))

(declare-fun b!5590336 () Bool)

(declare-fun tp!1546090 () Bool)

(assert (=> b!5590336 (= e!3448933 tp!1546090)))

(assert (=> b!5589317 (= tp!1545926 e!3448933)))

(declare-fun b!5590335 () Bool)

(declare-fun tp!1546089 () Bool)

(declare-fun tp!1546086 () Bool)

(assert (=> b!5590335 (= e!3448933 (and tp!1546089 tp!1546086))))

(assert (= (and b!5589317 ((_ is ElementMatch!15577) (reg!15906 (regTwo!31667 r!7292)))) b!5590334))

(assert (= (and b!5589317 ((_ is Concat!24422) (reg!15906 (regTwo!31667 r!7292)))) b!5590335))

(assert (= (and b!5589317 ((_ is Star!15577) (reg!15906 (regTwo!31667 r!7292)))) b!5590336))

(assert (= (and b!5589317 ((_ is Union!15577) (reg!15906 (regTwo!31667 r!7292)))) b!5590337))

(declare-fun b!5590341 () Bool)

(declare-fun e!3448934 () Bool)

(declare-fun tp!1546093 () Bool)

(declare-fun tp!1546092 () Bool)

(assert (=> b!5590341 (= e!3448934 (and tp!1546093 tp!1546092))))

(declare-fun b!5590338 () Bool)

(assert (=> b!5590338 (= e!3448934 tp_is_empty!40407)))

(declare-fun b!5590340 () Bool)

(declare-fun tp!1546095 () Bool)

(assert (=> b!5590340 (= e!3448934 tp!1546095)))

(assert (=> b!5589287 (= tp!1545893 e!3448934)))

(declare-fun b!5590339 () Bool)

(declare-fun tp!1546094 () Bool)

(declare-fun tp!1546091 () Bool)

(assert (=> b!5590339 (= e!3448934 (and tp!1546094 tp!1546091))))

(assert (= (and b!5589287 ((_ is ElementMatch!15577) (h!69355 (exprs!5461 setElem!37237)))) b!5590338))

(assert (= (and b!5589287 ((_ is Concat!24422) (h!69355 (exprs!5461 setElem!37237)))) b!5590339))

(assert (= (and b!5589287 ((_ is Star!15577) (h!69355 (exprs!5461 setElem!37237)))) b!5590340))

(assert (= (and b!5589287 ((_ is Union!15577) (h!69355 (exprs!5461 setElem!37237)))) b!5590341))

(declare-fun b!5590342 () Bool)

(declare-fun e!3448935 () Bool)

(declare-fun tp!1546096 () Bool)

(declare-fun tp!1546097 () Bool)

(assert (=> b!5590342 (= e!3448935 (and tp!1546096 tp!1546097))))

(assert (=> b!5589287 (= tp!1545894 e!3448935)))

(assert (= (and b!5589287 ((_ is Cons!62907) (t!376307 (exprs!5461 setElem!37237)))) b!5590342))

(declare-fun b!5590346 () Bool)

(declare-fun e!3448936 () Bool)

(declare-fun tp!1546100 () Bool)

(declare-fun tp!1546099 () Bool)

(assert (=> b!5590346 (= e!3448936 (and tp!1546100 tp!1546099))))

(declare-fun b!5590343 () Bool)

(assert (=> b!5590343 (= e!3448936 tp_is_empty!40407)))

(declare-fun b!5590345 () Bool)

(declare-fun tp!1546102 () Bool)

(assert (=> b!5590345 (= e!3448936 tp!1546102)))

(assert (=> b!5589325 (= tp!1545937 e!3448936)))

(declare-fun b!5590344 () Bool)

(declare-fun tp!1546101 () Bool)

(declare-fun tp!1546098 () Bool)

(assert (=> b!5590344 (= e!3448936 (and tp!1546101 tp!1546098))))

(assert (= (and b!5589325 ((_ is ElementMatch!15577) (regOne!31666 (regOne!31666 r!7292)))) b!5590343))

(assert (= (and b!5589325 ((_ is Concat!24422) (regOne!31666 (regOne!31666 r!7292)))) b!5590344))

(assert (= (and b!5589325 ((_ is Star!15577) (regOne!31666 (regOne!31666 r!7292)))) b!5590345))

(assert (= (and b!5589325 ((_ is Union!15577) (regOne!31666 (regOne!31666 r!7292)))) b!5590346))

(declare-fun b!5590350 () Bool)

(declare-fun e!3448937 () Bool)

(declare-fun tp!1546105 () Bool)

(declare-fun tp!1546104 () Bool)

(assert (=> b!5590350 (= e!3448937 (and tp!1546105 tp!1546104))))

(declare-fun b!5590347 () Bool)

(assert (=> b!5590347 (= e!3448937 tp_is_empty!40407)))

(declare-fun b!5590349 () Bool)

(declare-fun tp!1546107 () Bool)

(assert (=> b!5590349 (= e!3448937 tp!1546107)))

(assert (=> b!5589325 (= tp!1545934 e!3448937)))

(declare-fun b!5590348 () Bool)

(declare-fun tp!1546106 () Bool)

(declare-fun tp!1546103 () Bool)

(assert (=> b!5590348 (= e!3448937 (and tp!1546106 tp!1546103))))

(assert (= (and b!5589325 ((_ is ElementMatch!15577) (regTwo!31666 (regOne!31666 r!7292)))) b!5590347))

(assert (= (and b!5589325 ((_ is Concat!24422) (regTwo!31666 (regOne!31666 r!7292)))) b!5590348))

(assert (= (and b!5589325 ((_ is Star!15577) (regTwo!31666 (regOne!31666 r!7292)))) b!5590349))

(assert (= (and b!5589325 ((_ is Union!15577) (regTwo!31666 (regOne!31666 r!7292)))) b!5590350))

(declare-fun b!5590354 () Bool)

(declare-fun e!3448938 () Bool)

(declare-fun tp!1546110 () Bool)

(declare-fun tp!1546109 () Bool)

(assert (=> b!5590354 (= e!3448938 (and tp!1546110 tp!1546109))))

(declare-fun b!5590351 () Bool)

(assert (=> b!5590351 (= e!3448938 tp_is_empty!40407)))

(declare-fun b!5590353 () Bool)

(declare-fun tp!1546112 () Bool)

(assert (=> b!5590353 (= e!3448938 tp!1546112)))

(assert (=> b!5589326 (= tp!1545938 e!3448938)))

(declare-fun b!5590352 () Bool)

(declare-fun tp!1546111 () Bool)

(declare-fun tp!1546108 () Bool)

(assert (=> b!5590352 (= e!3448938 (and tp!1546111 tp!1546108))))

(assert (= (and b!5589326 ((_ is ElementMatch!15577) (reg!15906 (regOne!31666 r!7292)))) b!5590351))

(assert (= (and b!5589326 ((_ is Concat!24422) (reg!15906 (regOne!31666 r!7292)))) b!5590352))

(assert (= (and b!5589326 ((_ is Star!15577) (reg!15906 (regOne!31666 r!7292)))) b!5590353))

(assert (= (and b!5589326 ((_ is Union!15577) (reg!15906 (regOne!31666 r!7292)))) b!5590354))

(declare-fun b!5590372 () Bool)

(declare-fun e!3448946 () Bool)

(declare-fun tp!1546115 () Bool)

(declare-fun tp!1546114 () Bool)

(assert (=> b!5590372 (= e!3448946 (and tp!1546115 tp!1546114))))

(declare-fun b!5590369 () Bool)

(assert (=> b!5590369 (= e!3448946 tp_is_empty!40407)))

(declare-fun b!5590371 () Bool)

(declare-fun tp!1546117 () Bool)

(assert (=> b!5590371 (= e!3448946 tp!1546117)))

(assert (=> b!5589318 (= tp!1545924 e!3448946)))

(declare-fun b!5590370 () Bool)

(declare-fun tp!1546116 () Bool)

(declare-fun tp!1546113 () Bool)

(assert (=> b!5590370 (= e!3448946 (and tp!1546116 tp!1546113))))

(assert (= (and b!5589318 ((_ is ElementMatch!15577) (regOne!31667 (regTwo!31667 r!7292)))) b!5590369))

(assert (= (and b!5589318 ((_ is Concat!24422) (regOne!31667 (regTwo!31667 r!7292)))) b!5590370))

(assert (= (and b!5589318 ((_ is Star!15577) (regOne!31667 (regTwo!31667 r!7292)))) b!5590371))

(assert (= (and b!5589318 ((_ is Union!15577) (regOne!31667 (regTwo!31667 r!7292)))) b!5590372))

(declare-fun b!5590376 () Bool)

(declare-fun e!3448947 () Bool)

(declare-fun tp!1546120 () Bool)

(declare-fun tp!1546119 () Bool)

(assert (=> b!5590376 (= e!3448947 (and tp!1546120 tp!1546119))))

(declare-fun b!5590373 () Bool)

(assert (=> b!5590373 (= e!3448947 tp_is_empty!40407)))

(declare-fun b!5590375 () Bool)

(declare-fun tp!1546122 () Bool)

(assert (=> b!5590375 (= e!3448947 tp!1546122)))

(assert (=> b!5589318 (= tp!1545923 e!3448947)))

(declare-fun b!5590374 () Bool)

(declare-fun tp!1546121 () Bool)

(declare-fun tp!1546118 () Bool)

(assert (=> b!5590374 (= e!3448947 (and tp!1546121 tp!1546118))))

(assert (= (and b!5589318 ((_ is ElementMatch!15577) (regTwo!31667 (regTwo!31667 r!7292)))) b!5590373))

(assert (= (and b!5589318 ((_ is Concat!24422) (regTwo!31667 (regTwo!31667 r!7292)))) b!5590374))

(assert (= (and b!5589318 ((_ is Star!15577) (regTwo!31667 (regTwo!31667 r!7292)))) b!5590375))

(assert (= (and b!5589318 ((_ is Union!15577) (regTwo!31667 (regTwo!31667 r!7292)))) b!5590376))

(declare-fun b!5590377 () Bool)

(declare-fun e!3448948 () Bool)

(declare-fun tp!1546123 () Bool)

(assert (=> b!5590377 (= e!3448948 (and tp_is_empty!40407 tp!1546123))))

(assert (=> b!5589282 (= tp!1545888 e!3448948)))

(assert (= (and b!5589282 ((_ is Cons!62906) (t!376306 (t!376306 s!2326)))) b!5590377))

(declare-fun b_lambda!211819 () Bool)

(assert (= b_lambda!211817 (or d!1766382 b_lambda!211819)))

(declare-fun bs!1292710 () Bool)

(declare-fun d!1767000 () Bool)

(assert (= bs!1292710 (and d!1767000 d!1766382)))

(assert (=> bs!1292710 (= (dynLambda!24602 lambda!299953 (h!69355 (exprs!5461 (h!69356 zl!343)))) (validRegex!7313 (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(declare-fun m!6570614 () Bool)

(assert (=> bs!1292710 m!6570614))

(assert (=> b!5590195 d!1767000))

(declare-fun b_lambda!211821 () Bool)

(assert (= b_lambda!211789 (or d!1766348 b_lambda!211821)))

(declare-fun bs!1292711 () Bool)

(declare-fun d!1767002 () Bool)

(assert (= bs!1292711 (and d!1767002 d!1766348)))

(assert (=> bs!1292711 (= (dynLambda!24602 lambda!299926 (h!69355 lt!2255250)) (validRegex!7313 (h!69355 lt!2255250)))))

(declare-fun m!6570618 () Bool)

(assert (=> bs!1292711 m!6570618))

(assert (=> b!5589474 d!1767002))

(declare-fun b_lambda!211823 () Bool)

(assert (= b_lambda!211793 (or b!5588545 b_lambda!211823)))

(assert (=> d!1766648 d!1766482))

(declare-fun b_lambda!211825 () Bool)

(assert (= b_lambda!211787 (or b!5588545 b_lambda!211825)))

(assert (=> d!1766520 d!1766480))

(declare-fun b_lambda!211827 () Bool)

(assert (= b_lambda!211799 (or d!1766340 b_lambda!211827)))

(declare-fun bs!1292712 () Bool)

(declare-fun d!1767004 () Bool)

(assert (= bs!1292712 (and d!1767004 d!1766340)))

(assert (=> bs!1292712 (= (dynLambda!24602 lambda!299920 (h!69355 (unfocusZipperList!1005 zl!343))) (validRegex!7313 (h!69355 (unfocusZipperList!1005 zl!343))))))

(declare-fun m!6570622 () Bool)

(assert (=> bs!1292712 m!6570622))

(assert (=> b!5589969 d!1767004))

(declare-fun b_lambda!211829 () Bool)

(assert (= b_lambda!211801 (or d!1766412 b_lambda!211829)))

(declare-fun bs!1292713 () Bool)

(declare-fun d!1767008 () Bool)

(assert (= bs!1292713 (and d!1767008 d!1766412)))

(assert (=> bs!1292713 (= (dynLambda!24602 lambda!299960 (h!69355 (exprs!5461 setElem!37237))) (validRegex!7313 (h!69355 (exprs!5461 setElem!37237))))))

(declare-fun m!6570624 () Bool)

(assert (=> bs!1292713 m!6570624))

(assert (=> b!5589986 d!1767008))

(declare-fun b_lambda!211831 () Bool)

(assert (= b_lambda!211795 (or b!5588545 b_lambda!211831)))

(assert (=> d!1766766 d!1766484))

(declare-fun b_lambda!211833 () Bool)

(assert (= b_lambda!211815 (or d!1766352 b_lambda!211833)))

(declare-fun bs!1292714 () Bool)

(declare-fun d!1767010 () Bool)

(assert (= bs!1292714 (and d!1767010 d!1766352)))

(assert (=> bs!1292714 (= (dynLambda!24602 lambda!299929 (h!69355 (exprs!5461 (h!69356 zl!343)))) (validRegex!7313 (h!69355 (exprs!5461 (h!69356 zl!343)))))))

(assert (=> bs!1292714 m!6570614))

(assert (=> b!5590169 d!1767010))

(check-sat (not b!5590277) (not b!5590248) (not d!1766570) (not bm!418510) (not b_lambda!211785) (not b!5590339) (not b!5589563) (not b!5589491) (not b!5590079) (not b!5589499) (not b!5589512) (not d!1766586) (not d!1766724) (not d!1766510) (not b!5590337) (not bm!418607) (not d!1766582) (not b!5589619) (not d!1766682) (not b!5590247) (not bm!418701) (not bm!418642) (not b!5589736) (not d!1766616) (not d!1766678) (not d!1766684) (not b!5589525) (not b!5589663) (not b!5589961) (not b!5590332) (not b!5589369) (not b!5589735) (not b!5589739) (not bm!418562) (not d!1766576) (not setNonEmpty!37253) (not d!1766716) (not b!5590279) (not bm!418543) (not bs!1292712) (not b!5590331) (not bm!418523) (not bm!418721) (not bm!418531) (not b!5589354) (not b!5590354) (not b!5589705) (not bm!418653) (not b!5589632) (not bm!418557) (not bm!418529) (not bm!418548) (not bs!1292710) (not d!1766592) (not b!5590342) (not b!5589537) (not bm!418581) (not b!5590286) (not bm!418662) (not b!5589568) (not b!5589868) (not b!5590307) (not bm!418552) (not bm!418601) (not d!1766604) (not b!5590299) (not d!1766626) (not b!5590253) (not b!5590303) (not b!5590314) (not b!5589544) (not b!5590171) (not b!5589799) (not b!5590371) (not setNonEmpty!37252) (not d!1766706) (not bm!418556) (not d!1766780) (not b!5590374) (not bm!418599) (not d!1766590) (not bm!418568) (not b!5590310) (not b!5590285) (not b!5589832) (not b!5589630) (not b!5589649) (not b!5589704) (not b!5589565) (not b!5589697) (not b!5589538) (not b!5590276) (not b!5590315) (not bm!418600) (not b!5590323) (not b!5590200) (not b!5589518) (not bm!418716) (not b!5590074) (not b!5589870) (not b!5590370) (not b!5590341) (not b!5590336) (not b!5590006) (not b!5589556) (not b!5590294) (not bm!418578) (not bm!418715) (not b_lambda!211821) (not b!5589517) (not b!5589506) (not bm!418648) (not d!1766718) (not b!5590269) (not d!1766766) (not bm!418567) (not b!5589722) (not bm!418646) (not b!5589532) (not bm!418717) (not d!1766646) (not b!5590325) (not d!1766860) (not b!5590078) (not d!1766622) (not d!1766598) (not d!1766520) (not b!5590304) (not b!5590057) (not bm!418654) (not b!5589412) (not b_lambda!211823) (not b!5589606) (not b!5590295) (not b!5590352) (not bm!418545) (not b!5590227) (not b!5590293) (not b!5590246) (not d!1766956) (not d!1766612) (not b_lambda!211819) (not b_lambda!211781) (not d!1766730) (not bm!418535) (not b!5589656) (not bm!418647) (not d!1766686) (not b!5589536) (not d!1766566) (not b!5590349) (not b_lambda!211831) (not d!1766632) (not b!5589415) (not b!5589533) (not bm!418550) (not b!5590082) (not b!5589555) (not b!5589863) (not d!1766850) (not b!5590030) (not b!5589475) (not b!5590308) (not b!5590377) (not d!1766720) (not b!5590080) (not setNonEmpty!37246) (not d!1766630) (not b!5589829) (not bm!418714) (not b!5590265) (not b!5590257) (not d!1766670) (not b!5590270) (not bm!418660) (not d!1766668) (not bm!418551) (not b!5590321) (not bm!418706) (not b!5589381) (not b!5590291) (not b!5589561) (not bm!418645) (not b!5590245) (not b!5590271) (not d!1766966) (not bm!418509) (not b!5589661) (not b!5589857) (not b!5589492) (not b!5590298) (not bs!1292711) (not d!1766726) (not d!1766600) (not b!5590170) (not bm!418572) (not b!5590340) (not b!5590348) (not bs!1292714) (not b!5589650) (not b!5589662) (not bm!418576) (not b!5589481) (not b!5590243) (not d!1766976) (not setNonEmpty!37254) (not b!5590281) (not bm!418547) (not b!5590009) (not b!5590311) (not b!5589635) (not b!5590058) (not bm!418577) (not b!5589862) (not bm!418575) (not bm!418655) (not d!1766494) (not b!5589547) (not b!5590333) (not b!5590324) (not d!1766624) (not b!5590267) (not b!5590312) (not b!5589501) (not b!5590335) (not bm!418516) (not b!5590167) (not bs!1292713) (not b!5590199) (not b!5589392) (not b!5589798) (not d!1766690) (not b!5590166) (not b!5589723) (not b!5590376) (not b!5589543) (not b_lambda!211825) (not bm!418520) (not b!5590189) (not d!1766512) (not d!1766688) (not b!5590302) (not b_lambda!211827) (not b!5590372) (not d!1766662) (not b!5590264) (not d!1766680) (not b!5590196) (not d!1766944) (not bm!418656) (not b_lambda!211783) (not d!1766752) (not b!5589519) (not b!5589712) (not b!5590255) (not d!1766574) (not b!5589995) (not b!5589337) (not b!5590241) (not d!1766762) (not b!5590053) (not d!1766936) (not b!5590300) (not b!5589970) (not b!5590242) (not b!5589511) (not d!1766844) (not bm!418544) (not b!5589696) (not b!5589637) (not b!5590320) (not bm!418671) (not b!5590346) (not b!5590345) (not bm!418702) (not bm!418528) (not d!1766588) (not b!5590350) (not bm!418522) (not b!5589740) (not bm!418530) (not b!5590316) (not b!5589336) (not b!5590306) (not bm!418590) (not bm!418592) (not d!1766648) (not b!5589531) (not d!1766578) (not b!5589699) (not b!5589500) (not d!1766596) (not bm!418589) (not b!5590280) (not b!5589607) (not bm!418667) (not b!5590344) (not b!5589570) (not b!5590275) (not b_lambda!211829) (not b!5590077) tp_is_empty!40407 (not b!5590297) (not b!5590274) (not b!5589721) (not bm!418640) (not bm!418661) (not b!5589444) (not d!1766672) (not b!5589710) (not b!5589869) (not d!1766754) (not d!1766942) (not b!5590172) (not b!5589711) (not b!5589987) (not d!1766978) (not b!5590317) (not b_lambda!211833) (not b!5589640) (not d!1766900) (not b!5590252) (not b!5590251) (not b!5589408) (not b!5589627) (not bm!418525) (not b!5589562) (not b!5589618) (not b!5589737) (not b!5590256) (not b!5589540) (not d!1766874) (not b!5589742) (not b!5590287) (not bm!418514) (not bm!418549) (not d!1766952) (not b!5589655) (not b!5590249) (not b!5590328) (not b!5590151) (not b!5589550) (not b!5590266) (not bm!418515) (not b!5589733) (not b!5589542) (not b!5589595) (not b!5590375) (not b!5589355) (not b!5590327) (not bm!418591) (not b!5590168) (not b!5590319) (not bm!418652) (not bm!418558) (not bm!418524) (not b!5590054) (not d!1766498) (not d!1766770) (not b!5589448) (not d!1766654) (not b!5589541) (not b!5590290) (not b!5589948) (not bm!418666) (not b!5590329) (not b!5590353) (not b!5590228) (not b!5590289) (not b!5589971))
(check-sat)
