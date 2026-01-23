; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!623974 () Bool)

(assert start!623974)

(declare-fun b!6277077 () Bool)

(assert (=> b!6277077 true))

(assert (=> b!6277077 true))

(declare-fun lambda!344083 () Int)

(declare-fun lambda!344082 () Int)

(assert (=> b!6277077 (not (= lambda!344083 lambda!344082))))

(assert (=> b!6277077 true))

(assert (=> b!6277077 true))

(declare-fun b!6277081 () Bool)

(assert (=> b!6277081 true))

(declare-fun bs!1568231 () Bool)

(declare-fun b!6277101 () Bool)

(assert (= bs!1568231 (and b!6277101 b!6277077)))

(declare-fun lambda!344085 () Int)

(declare-datatypes ((C!32664 0))(
  ( (C!32665 (val!26034 Int)) )
))
(declare-datatypes ((Regex!16197 0))(
  ( (ElementMatch!16197 (c!1137976 C!32664)) (Concat!25042 (regOne!32906 Regex!16197) (regTwo!32906 Regex!16197)) (EmptyExpr!16197) (Star!16197 (reg!16526 Regex!16197)) (EmptyLang!16197) (Union!16197 (regOne!32907 Regex!16197) (regTwo!32907 Regex!16197)) )
))
(declare-fun lt!2353423 () Regex!16197)

(declare-fun r!7292 () Regex!16197)

(assert (=> bs!1568231 (= (and (= (regOne!32906 (regOne!32906 r!7292)) (regOne!32906 r!7292)) (= lt!2353423 (regTwo!32906 r!7292))) (= lambda!344085 lambda!344082))))

(assert (=> bs!1568231 (not (= lambda!344085 lambda!344083))))

(assert (=> b!6277101 true))

(assert (=> b!6277101 true))

(assert (=> b!6277101 true))

(declare-datatypes ((List!64890 0))(
  ( (Nil!64766) (Cons!64766 (h!71214 Regex!16197) (t!378450 List!64890)) )
))
(declare-datatypes ((Context!11162 0))(
  ( (Context!11163 (exprs!6081 List!64890)) )
))
(declare-fun setElem!42704 () Context!11162)

(declare-fun setRes!42704 () Bool)

(declare-fun e!3817514 () Bool)

(declare-fun tp!1749939 () Bool)

(declare-fun setNonEmpty!42704 () Bool)

(declare-fun inv!83739 (Context!11162) Bool)

(assert (=> setNonEmpty!42704 (= setRes!42704 (and tp!1749939 (inv!83739 setElem!42704) e!3817514))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11162))

(declare-fun setRest!42704 () (InoxSet Context!11162))

(assert (=> setNonEmpty!42704 (= z!1189 ((_ map or) (store ((as const (Array Context!11162 Bool)) false) setElem!42704 true) setRest!42704))))

(declare-fun b!6277070 () Bool)

(declare-fun e!3817503 () Bool)

(declare-fun lt!2353407 () (InoxSet Context!11162))

(declare-datatypes ((List!64891 0))(
  ( (Nil!64767) (Cons!64767 (h!71215 C!32664) (t!378451 List!64891)) )
))
(declare-fun s!2326 () List!64891)

(declare-fun matchZipper!2209 ((InoxSet Context!11162) List!64891) Bool)

(assert (=> b!6277070 (= e!3817503 (matchZipper!2209 lt!2353407 (t!378451 s!2326)))))

(declare-fun b!6277071 () Bool)

(declare-fun res!2588981 () Bool)

(declare-fun e!3817510 () Bool)

(assert (=> b!6277071 (=> res!2588981 e!3817510)))

(declare-datatypes ((List!64892 0))(
  ( (Nil!64768) (Cons!64768 (h!71216 Context!11162) (t!378452 List!64892)) )
))
(declare-fun zl!343 () List!64892)

(declare-fun isEmpty!36805 (List!64892) Bool)

(assert (=> b!6277071 (= res!2588981 (not (isEmpty!36805 (t!378452 zl!343))))))

(declare-fun b!6277072 () Bool)

(declare-fun res!2588982 () Bool)

(declare-fun e!3817508 () Bool)

(assert (=> b!6277072 (=> res!2588982 e!3817508)))

(declare-fun isEmpty!36806 (List!64890) Bool)

(assert (=> b!6277072 (= res!2588982 (isEmpty!36806 (t!378450 (exprs!6081 (h!71216 zl!343)))))))

(declare-fun b!6277074 () Bool)

(declare-fun e!3817504 () Bool)

(declare-fun e!3817513 () Bool)

(assert (=> b!6277074 (= e!3817504 e!3817513)))

(declare-fun res!2588983 () Bool)

(assert (=> b!6277074 (=> res!2588983 e!3817513)))

(declare-fun lt!2353430 () (InoxSet Context!11162))

(declare-fun lt!2353416 () (InoxSet Context!11162))

(assert (=> b!6277074 (= res!2588983 (not (= lt!2353430 lt!2353416)))))

(declare-fun lt!2353429 () (InoxSet Context!11162))

(declare-fun lt!2353422 () (InoxSet Context!11162))

(assert (=> b!6277074 (= lt!2353416 ((_ map or) lt!2353429 lt!2353422))))

(declare-fun lt!2353425 () Context!11162)

(declare-fun derivationStepZipperUp!1371 (Context!11162 C!32664) (InoxSet Context!11162))

(assert (=> b!6277074 (= lt!2353422 (derivationStepZipperUp!1371 lt!2353425 (h!71215 s!2326)))))

(declare-fun lt!2353440 () (InoxSet Context!11162))

(declare-fun lt!2353414 () Context!11162)

(declare-fun lambda!344084 () Int)

(declare-fun flatMap!1702 ((InoxSet Context!11162) Int) (InoxSet Context!11162))

(assert (=> b!6277074 (= (flatMap!1702 lt!2353440 lambda!344084) (derivationStepZipperUp!1371 lt!2353414 (h!71215 s!2326)))))

(declare-datatypes ((Unit!158119 0))(
  ( (Unit!158120) )
))
(declare-fun lt!2353434 () Unit!158119)

(declare-fun lemmaFlatMapOnSingletonSet!1228 ((InoxSet Context!11162) Context!11162 Int) Unit!158119)

(assert (=> b!6277074 (= lt!2353434 (lemmaFlatMapOnSingletonSet!1228 lt!2353440 lt!2353414 lambda!344084))))

(declare-fun lt!2353421 () (InoxSet Context!11162))

(assert (=> b!6277074 (= lt!2353421 (derivationStepZipperUp!1371 lt!2353414 (h!71215 s!2326)))))

(declare-fun derivationStepZipper!2163 ((InoxSet Context!11162) C!32664) (InoxSet Context!11162))

(assert (=> b!6277074 (= lt!2353430 (derivationStepZipper!2163 lt!2353440 (h!71215 s!2326)))))

(declare-fun lt!2353418 () (InoxSet Context!11162))

(assert (=> b!6277074 (= lt!2353418 (store ((as const (Array Context!11162 Bool)) false) lt!2353425 true))))

(assert (=> b!6277074 (= lt!2353440 (store ((as const (Array Context!11162 Bool)) false) lt!2353414 true))))

(declare-fun lt!2353436 () List!64890)

(assert (=> b!6277074 (= lt!2353414 (Context!11163 lt!2353436))))

(declare-fun lt!2353419 () List!64890)

(assert (=> b!6277074 (= lt!2353436 (Cons!64766 (regOne!32906 (regOne!32906 r!7292)) lt!2353419))))

(declare-fun b!6277075 () Bool)

(declare-fun e!3817505 () Bool)

(declare-fun tp_is_empty!41647 () Bool)

(assert (=> b!6277075 (= e!3817505 tp_is_empty!41647)))

(declare-fun b!6277076 () Bool)

(declare-fun res!2588990 () Bool)

(declare-fun e!3817516 () Bool)

(assert (=> b!6277076 (=> res!2588990 e!3817516)))

(declare-fun lt!2353426 () List!64892)

(declare-fun zipperDepth!322 (List!64892) Int)

(assert (=> b!6277076 (= res!2588990 (> (zipperDepth!322 lt!2353426) (zipperDepth!322 zl!343)))))

(assert (=> b!6277077 (= e!3817510 e!3817508)))

(declare-fun res!2588979 () Bool)

(assert (=> b!6277077 (=> res!2588979 e!3817508)))

(declare-fun lt!2353438 () Bool)

(declare-fun lt!2353428 () Bool)

(get-info :version)

(assert (=> b!6277077 (= res!2588979 (or (not (= lt!2353428 lt!2353438)) ((_ is Nil!64767) s!2326)))))

(declare-fun Exists!3267 (Int) Bool)

(assert (=> b!6277077 (= (Exists!3267 lambda!344082) (Exists!3267 lambda!344083))))

(declare-fun lt!2353420 () Unit!158119)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1804 (Regex!16197 Regex!16197 List!64891) Unit!158119)

(assert (=> b!6277077 (= lt!2353420 (lemmaExistCutMatchRandMatchRSpecEquivalent!1804 (regOne!32906 r!7292) (regTwo!32906 r!7292) s!2326))))

(assert (=> b!6277077 (= lt!2353438 (Exists!3267 lambda!344082))))

(declare-datatypes ((tuple2!66352 0))(
  ( (tuple2!66353 (_1!36479 List!64891) (_2!36479 List!64891)) )
))
(declare-datatypes ((Option!16088 0))(
  ( (None!16087) (Some!16087 (v!52242 tuple2!66352)) )
))
(declare-fun isDefined!12791 (Option!16088) Bool)

(declare-fun findConcatSeparation!2502 (Regex!16197 Regex!16197 List!64891 List!64891 List!64891) Option!16088)

(assert (=> b!6277077 (= lt!2353438 (isDefined!12791 (findConcatSeparation!2502 (regOne!32906 r!7292) (regTwo!32906 r!7292) Nil!64767 s!2326 s!2326)))))

(declare-fun lt!2353409 () Unit!158119)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2266 (Regex!16197 Regex!16197 List!64891) Unit!158119)

(assert (=> b!6277077 (= lt!2353409 (lemmaFindConcatSeparationEquivalentToExists!2266 (regOne!32906 r!7292) (regTwo!32906 r!7292) s!2326))))

(declare-fun b!6277078 () Bool)

(declare-fun res!2588980 () Bool)

(declare-fun e!3817500 () Bool)

(assert (=> b!6277078 (=> (not res!2588980) (not e!3817500))))

(declare-fun unfocusZipper!1939 (List!64892) Regex!16197)

(assert (=> b!6277078 (= res!2588980 (= r!7292 (unfocusZipper!1939 zl!343)))))

(declare-fun b!6277079 () Bool)

(declare-fun e!3817498 () Bool)

(assert (=> b!6277079 (= e!3817513 e!3817498)))

(declare-fun res!2588971 () Bool)

(assert (=> b!6277079 (=> res!2588971 e!3817498)))

(declare-fun e!3817499 () Bool)

(assert (=> b!6277079 (= res!2588971 e!3817499)))

(declare-fun res!2588974 () Bool)

(assert (=> b!6277079 (=> (not res!2588974) (not e!3817499))))

(declare-fun lt!2353417 () Bool)

(assert (=> b!6277079 (= res!2588974 (not (= lt!2353417 (matchZipper!2209 lt!2353430 (t!378451 s!2326)))))))

(declare-fun e!3817509 () Bool)

(assert (=> b!6277079 (= (matchZipper!2209 lt!2353416 (t!378451 s!2326)) e!3817509)))

(declare-fun res!2588986 () Bool)

(assert (=> b!6277079 (=> res!2588986 e!3817509)))

(declare-fun lt!2353408 () Bool)

(assert (=> b!6277079 (= res!2588986 lt!2353408)))

(declare-fun lt!2353413 () Unit!158119)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1028 ((InoxSet Context!11162) (InoxSet Context!11162) List!64891) Unit!158119)

(assert (=> b!6277079 (= lt!2353413 (lemmaZipperConcatMatchesSameAsBothZippers!1028 lt!2353429 lt!2353422 (t!378451 s!2326)))))

(assert (=> b!6277079 (= (flatMap!1702 lt!2353418 lambda!344084) (derivationStepZipperUp!1371 lt!2353425 (h!71215 s!2326)))))

(declare-fun lt!2353433 () Unit!158119)

(assert (=> b!6277079 (= lt!2353433 (lemmaFlatMapOnSingletonSet!1228 lt!2353418 lt!2353425 lambda!344084))))

(declare-fun b!6277080 () Bool)

(declare-fun res!2588989 () Bool)

(assert (=> b!6277080 (=> res!2588989 e!3817498)))

(assert (=> b!6277080 (= res!2588989 (not (= (exprs!6081 (h!71216 zl!343)) (Cons!64766 (Concat!25042 (regOne!32906 (regOne!32906 r!7292)) (regTwo!32906 (regOne!32906 r!7292))) (t!378450 (exprs!6081 (h!71216 zl!343)))))))))

(declare-fun e!3817511 () Bool)

(assert (=> b!6277081 (= e!3817508 e!3817511)))

(declare-fun res!2588973 () Bool)

(assert (=> b!6277081 (=> res!2588973 e!3817511)))

(assert (=> b!6277081 (= res!2588973 (or (and ((_ is ElementMatch!16197) (regOne!32906 r!7292)) (= (c!1137976 (regOne!32906 r!7292)) (h!71215 s!2326))) ((_ is Union!16197) (regOne!32906 r!7292)) (not ((_ is Concat!25042) (regOne!32906 r!7292)))))))

(declare-fun lt!2353442 () Unit!158119)

(declare-fun e!3817512 () Unit!158119)

(assert (=> b!6277081 (= lt!2353442 e!3817512)))

(declare-fun c!1137975 () Bool)

(declare-fun nullable!6190 (Regex!16197) Bool)

(assert (=> b!6277081 (= c!1137975 (nullable!6190 (h!71214 (exprs!6081 (h!71216 zl!343)))))))

(assert (=> b!6277081 (= (flatMap!1702 z!1189 lambda!344084) (derivationStepZipperUp!1371 (h!71216 zl!343) (h!71215 s!2326)))))

(declare-fun lt!2353427 () Unit!158119)

(assert (=> b!6277081 (= lt!2353427 (lemmaFlatMapOnSingletonSet!1228 z!1189 (h!71216 zl!343) lambda!344084))))

(declare-fun lt!2353406 () Context!11162)

(assert (=> b!6277081 (= lt!2353407 (derivationStepZipperUp!1371 lt!2353406 (h!71215 s!2326)))))

(declare-fun lt!2353411 () (InoxSet Context!11162))

(declare-fun derivationStepZipperDown!1445 (Regex!16197 Context!11162 C!32664) (InoxSet Context!11162))

(assert (=> b!6277081 (= lt!2353411 (derivationStepZipperDown!1445 (h!71214 (exprs!6081 (h!71216 zl!343))) lt!2353406 (h!71215 s!2326)))))

(assert (=> b!6277081 (= lt!2353406 (Context!11163 (t!378450 (exprs!6081 (h!71216 zl!343)))))))

(declare-fun lt!2353415 () (InoxSet Context!11162))

(assert (=> b!6277081 (= lt!2353415 (derivationStepZipperUp!1371 (Context!11163 (Cons!64766 (h!71214 (exprs!6081 (h!71216 zl!343))) (t!378450 (exprs!6081 (h!71216 zl!343))))) (h!71215 s!2326)))))

(declare-fun b!6277082 () Bool)

(declare-fun e!3817506 () Bool)

(declare-fun lt!2353432 () (InoxSet Context!11162))

(assert (=> b!6277082 (= e!3817506 (matchZipper!2209 lt!2353432 (t!378451 s!2326)))))

(declare-fun b!6277083 () Bool)

(declare-fun res!2588977 () Bool)

(assert (=> b!6277083 (=> res!2588977 e!3817510)))

(assert (=> b!6277083 (= res!2588977 (not ((_ is Cons!64766) (exprs!6081 (h!71216 zl!343)))))))

(declare-fun b!6277084 () Bool)

(assert (=> b!6277084 (= e!3817498 e!3817516)))

(declare-fun res!2588993 () Bool)

(assert (=> b!6277084 (=> res!2588993 e!3817516)))

(declare-fun zipperDepthTotal!350 (List!64892) Int)

(assert (=> b!6277084 (= res!2588993 (>= (zipperDepthTotal!350 lt!2353426) (zipperDepthTotal!350 zl!343)))))

(assert (=> b!6277084 (= lt!2353426 (Cons!64768 lt!2353414 Nil!64768))))

(declare-fun b!6277085 () Bool)

(declare-fun e!3817502 () Bool)

(declare-fun tp!1749946 () Bool)

(assert (=> b!6277085 (= e!3817502 (and tp_is_empty!41647 tp!1749946))))

(declare-fun res!2588969 () Bool)

(assert (=> start!623974 (=> (not res!2588969) (not e!3817500))))

(declare-fun validRegex!7933 (Regex!16197) Bool)

(assert (=> start!623974 (= res!2588969 (validRegex!7933 r!7292))))

(assert (=> start!623974 e!3817500))

(assert (=> start!623974 e!3817505))

(declare-fun condSetEmpty!42704 () Bool)

(assert (=> start!623974 (= condSetEmpty!42704 (= z!1189 ((as const (Array Context!11162 Bool)) false)))))

(assert (=> start!623974 setRes!42704))

(declare-fun e!3817515 () Bool)

(assert (=> start!623974 e!3817515))

(assert (=> start!623974 e!3817502))

(declare-fun b!6277073 () Bool)

(declare-fun e!3817501 () Bool)

(assert (=> b!6277073 (= e!3817501 (not (matchZipper!2209 lt!2353432 (t!378451 s!2326))))))

(declare-fun b!6277086 () Bool)

(declare-fun e!3817497 () Bool)

(declare-fun tp!1749945 () Bool)

(assert (=> b!6277086 (= e!3817497 tp!1749945)))

(declare-fun b!6277087 () Bool)

(declare-fun e!3817507 () Bool)

(assert (=> b!6277087 (= e!3817507 e!3817504)))

(declare-fun res!2588984 () Bool)

(assert (=> b!6277087 (=> res!2588984 e!3817504)))

(assert (=> b!6277087 (= res!2588984 e!3817501)))

(declare-fun res!2588992 () Bool)

(assert (=> b!6277087 (=> (not res!2588992) (not e!3817501))))

(assert (=> b!6277087 (= res!2588992 (not (= lt!2353417 lt!2353408)))))

(assert (=> b!6277087 (= lt!2353417 (matchZipper!2209 lt!2353411 (t!378451 s!2326)))))

(declare-fun lt!2353444 () (InoxSet Context!11162))

(assert (=> b!6277087 (= (matchZipper!2209 lt!2353444 (t!378451 s!2326)) e!3817506)))

(declare-fun res!2588976 () Bool)

(assert (=> b!6277087 (=> res!2588976 e!3817506)))

(assert (=> b!6277087 (= res!2588976 lt!2353408)))

(assert (=> b!6277087 (= lt!2353408 (matchZipper!2209 lt!2353429 (t!378451 s!2326)))))

(declare-fun lt!2353431 () Unit!158119)

(assert (=> b!6277087 (= lt!2353431 (lemmaZipperConcatMatchesSameAsBothZippers!1028 lt!2353429 lt!2353432 (t!378451 s!2326)))))

(declare-fun b!6277088 () Bool)

(declare-fun tp!1749938 () Bool)

(assert (=> b!6277088 (= e!3817514 tp!1749938)))

(declare-fun b!6277089 () Bool)

(declare-fun tp!1749937 () Bool)

(declare-fun tp!1749944 () Bool)

(assert (=> b!6277089 (= e!3817505 (and tp!1749937 tp!1749944))))

(declare-fun b!6277090 () Bool)

(declare-fun res!2588972 () Bool)

(assert (=> b!6277090 (=> (not res!2588972) (not e!3817500))))

(declare-fun toList!9981 ((InoxSet Context!11162)) List!64892)

(assert (=> b!6277090 (= res!2588972 (= (toList!9981 z!1189) zl!343))))

(declare-fun b!6277091 () Bool)

(declare-fun Unit!158121 () Unit!158119)

(assert (=> b!6277091 (= e!3817512 Unit!158121)))

(declare-fun b!6277092 () Bool)

(declare-fun res!2588988 () Bool)

(assert (=> b!6277092 (=> res!2588988 e!3817510)))

(assert (=> b!6277092 (= res!2588988 (or ((_ is EmptyExpr!16197) r!7292) ((_ is EmptyLang!16197) r!7292) ((_ is ElementMatch!16197) r!7292) ((_ is Union!16197) r!7292) (not ((_ is Concat!25042) r!7292))))))

(declare-fun setIsEmpty!42704 () Bool)

(assert (=> setIsEmpty!42704 setRes!42704))

(declare-fun b!6277093 () Bool)

(assert (=> b!6277093 (= e!3817499 (not (matchZipper!2209 (derivationStepZipper!2163 lt!2353418 (h!71215 s!2326)) (t!378451 s!2326))))))

(declare-fun b!6277094 () Bool)

(assert (=> b!6277094 (= e!3817500 (not e!3817510))))

(declare-fun res!2588994 () Bool)

(assert (=> b!6277094 (=> res!2588994 e!3817510)))

(assert (=> b!6277094 (= res!2588994 (not ((_ is Cons!64768) zl!343)))))

(declare-fun matchRSpec!3298 (Regex!16197 List!64891) Bool)

(assert (=> b!6277094 (= lt!2353428 (matchRSpec!3298 r!7292 s!2326))))

(declare-fun matchR!8380 (Regex!16197 List!64891) Bool)

(assert (=> b!6277094 (= lt!2353428 (matchR!8380 r!7292 s!2326))))

(declare-fun lt!2353439 () Unit!158119)

(declare-fun mainMatchTheorem!3298 (Regex!16197 List!64891) Unit!158119)

(assert (=> b!6277094 (= lt!2353439 (mainMatchTheorem!3298 r!7292 s!2326))))

(declare-fun b!6277095 () Bool)

(declare-fun res!2588987 () Bool)

(assert (=> b!6277095 (=> res!2588987 e!3817498)))

(declare-fun contextDepthTotal!320 (Context!11162) Int)

(assert (=> b!6277095 (= res!2588987 (>= (contextDepthTotal!320 lt!2353414) (contextDepthTotal!320 (h!71216 zl!343))))))

(declare-fun b!6277096 () Bool)

(declare-fun tp!1749941 () Bool)

(assert (=> b!6277096 (= e!3817505 tp!1749941)))

(declare-fun b!6277097 () Bool)

(assert (=> b!6277097 (= e!3817511 e!3817507)))

(declare-fun res!2588985 () Bool)

(assert (=> b!6277097 (=> res!2588985 e!3817507)))

(assert (=> b!6277097 (= res!2588985 (not (= lt!2353411 lt!2353444)))))

(assert (=> b!6277097 (= lt!2353444 ((_ map or) lt!2353429 lt!2353432))))

(assert (=> b!6277097 (= lt!2353432 (derivationStepZipperDown!1445 (regTwo!32906 (regOne!32906 r!7292)) lt!2353406 (h!71215 s!2326)))))

(assert (=> b!6277097 (= lt!2353429 (derivationStepZipperDown!1445 (regOne!32906 (regOne!32906 r!7292)) lt!2353425 (h!71215 s!2326)))))

(assert (=> b!6277097 (= lt!2353425 (Context!11163 lt!2353419))))

(assert (=> b!6277097 (= lt!2353419 (Cons!64766 (regTwo!32906 (regOne!32906 r!7292)) (t!378450 (exprs!6081 (h!71216 zl!343)))))))

(declare-fun b!6277098 () Bool)

(declare-fun res!2588970 () Bool)

(assert (=> b!6277098 (=> res!2588970 e!3817510)))

(declare-fun generalisedConcat!1794 (List!64890) Regex!16197)

(assert (=> b!6277098 (= res!2588970 (not (= r!7292 (generalisedConcat!1794 (exprs!6081 (h!71216 zl!343))))))))

(declare-fun b!6277099 () Bool)

(declare-fun res!2588975 () Bool)

(assert (=> b!6277099 (=> res!2588975 e!3817510)))

(declare-fun generalisedUnion!2041 (List!64890) Regex!16197)

(declare-fun unfocusZipperList!1618 (List!64892) List!64890)

(assert (=> b!6277099 (= res!2588975 (not (= r!7292 (generalisedUnion!2041 (unfocusZipperList!1618 zl!343)))))))

(declare-fun b!6277100 () Bool)

(declare-fun tp!1749943 () Bool)

(declare-fun tp!1749940 () Bool)

(assert (=> b!6277100 (= e!3817505 (and tp!1749943 tp!1749940))))

(assert (=> b!6277101 (= e!3817516 (validRegex!7933 (regOne!32906 (regOne!32906 r!7292))))))

(assert (=> b!6277101 (= (isDefined!12791 (findConcatSeparation!2502 (regOne!32906 (regOne!32906 r!7292)) lt!2353423 Nil!64767 s!2326 s!2326)) (Exists!3267 lambda!344085))))

(declare-fun lt!2353435 () Unit!158119)

(assert (=> b!6277101 (= lt!2353435 (lemmaFindConcatSeparationEquivalentToExists!2266 (regOne!32906 (regOne!32906 r!7292)) lt!2353423 s!2326))))

(declare-fun lt!2353412 () Bool)

(declare-fun lt!2353443 () Regex!16197)

(assert (=> b!6277101 (= lt!2353412 (matchRSpec!3298 lt!2353443 s!2326))))

(declare-fun lt!2353441 () Unit!158119)

(assert (=> b!6277101 (= lt!2353441 (mainMatchTheorem!3298 lt!2353443 s!2326))))

(assert (=> b!6277101 (= (matchR!8380 lt!2353423 s!2326) (matchZipper!2209 lt!2353418 s!2326))))

(declare-fun lt!2353437 () Unit!158119)

(declare-fun theoremZipperRegexEquiv!767 ((InoxSet Context!11162) List!64892 Regex!16197 List!64891) Unit!158119)

(assert (=> b!6277101 (= lt!2353437 (theoremZipperRegexEquiv!767 lt!2353418 (Cons!64768 lt!2353425 Nil!64768) lt!2353423 s!2326))))

(assert (=> b!6277101 (= lt!2353423 (generalisedConcat!1794 lt!2353419))))

(assert (=> b!6277101 (= lt!2353412 (matchZipper!2209 lt!2353440 s!2326))))

(assert (=> b!6277101 (= lt!2353412 (matchR!8380 lt!2353443 s!2326))))

(declare-fun lt!2353424 () Unit!158119)

(assert (=> b!6277101 (= lt!2353424 (theoremZipperRegexEquiv!767 lt!2353440 lt!2353426 lt!2353443 s!2326))))

(assert (=> b!6277101 (= lt!2353443 (generalisedConcat!1794 lt!2353436))))

(declare-fun b!6277102 () Bool)

(declare-fun res!2588978 () Bool)

(assert (=> b!6277102 (=> res!2588978 e!3817511)))

(assert (=> b!6277102 (= res!2588978 (not (nullable!6190 (regOne!32906 (regOne!32906 r!7292)))))))

(declare-fun b!6277103 () Bool)

(assert (=> b!6277103 (= e!3817509 (matchZipper!2209 lt!2353422 (t!378451 s!2326)))))

(declare-fun b!6277104 () Bool)

(declare-fun Unit!158122 () Unit!158119)

(assert (=> b!6277104 (= e!3817512 Unit!158122)))

(declare-fun lt!2353410 () Unit!158119)

(assert (=> b!6277104 (= lt!2353410 (lemmaZipperConcatMatchesSameAsBothZippers!1028 lt!2353411 lt!2353407 (t!378451 s!2326)))))

(declare-fun res!2588991 () Bool)

(assert (=> b!6277104 (= res!2588991 (matchZipper!2209 lt!2353411 (t!378451 s!2326)))))

(assert (=> b!6277104 (=> res!2588991 e!3817503)))

(assert (=> b!6277104 (= (matchZipper!2209 ((_ map or) lt!2353411 lt!2353407) (t!378451 s!2326)) e!3817503)))

(declare-fun tp!1749942 () Bool)

(declare-fun b!6277105 () Bool)

(assert (=> b!6277105 (= e!3817515 (and (inv!83739 (h!71216 zl!343)) e!3817497 tp!1749942))))

(assert (= (and start!623974 res!2588969) b!6277090))

(assert (= (and b!6277090 res!2588972) b!6277078))

(assert (= (and b!6277078 res!2588980) b!6277094))

(assert (= (and b!6277094 (not res!2588994)) b!6277071))

(assert (= (and b!6277071 (not res!2588981)) b!6277098))

(assert (= (and b!6277098 (not res!2588970)) b!6277083))

(assert (= (and b!6277083 (not res!2588977)) b!6277099))

(assert (= (and b!6277099 (not res!2588975)) b!6277092))

(assert (= (and b!6277092 (not res!2588988)) b!6277077))

(assert (= (and b!6277077 (not res!2588979)) b!6277072))

(assert (= (and b!6277072 (not res!2588982)) b!6277081))

(assert (= (and b!6277081 c!1137975) b!6277104))

(assert (= (and b!6277081 (not c!1137975)) b!6277091))

(assert (= (and b!6277104 (not res!2588991)) b!6277070))

(assert (= (and b!6277081 (not res!2588973)) b!6277102))

(assert (= (and b!6277102 (not res!2588978)) b!6277097))

(assert (= (and b!6277097 (not res!2588985)) b!6277087))

(assert (= (and b!6277087 (not res!2588976)) b!6277082))

(assert (= (and b!6277087 res!2588992) b!6277073))

(assert (= (and b!6277087 (not res!2588984)) b!6277074))

(assert (= (and b!6277074 (not res!2588983)) b!6277079))

(assert (= (and b!6277079 (not res!2588986)) b!6277103))

(assert (= (and b!6277079 res!2588974) b!6277093))

(assert (= (and b!6277079 (not res!2588971)) b!6277080))

(assert (= (and b!6277080 (not res!2588989)) b!6277095))

(assert (= (and b!6277095 (not res!2588987)) b!6277084))

(assert (= (and b!6277084 (not res!2588993)) b!6277076))

(assert (= (and b!6277076 (not res!2588990)) b!6277101))

(assert (= (and start!623974 ((_ is ElementMatch!16197) r!7292)) b!6277075))

(assert (= (and start!623974 ((_ is Concat!25042) r!7292)) b!6277100))

(assert (= (and start!623974 ((_ is Star!16197) r!7292)) b!6277096))

(assert (= (and start!623974 ((_ is Union!16197) r!7292)) b!6277089))

(assert (= (and start!623974 condSetEmpty!42704) setIsEmpty!42704))

(assert (= (and start!623974 (not condSetEmpty!42704)) setNonEmpty!42704))

(assert (= setNonEmpty!42704 b!6277088))

(assert (= b!6277105 b!6277086))

(assert (= (and start!623974 ((_ is Cons!64768) zl!343)) b!6277105))

(assert (= (and start!623974 ((_ is Cons!64767) s!2326)) b!6277085))

(declare-fun m!7098370 () Bool)

(assert (=> b!6277097 m!7098370))

(declare-fun m!7098372 () Bool)

(assert (=> b!6277097 m!7098372))

(declare-fun m!7098374 () Bool)

(assert (=> b!6277078 m!7098374))

(declare-fun m!7098376 () Bool)

(assert (=> b!6277076 m!7098376))

(declare-fun m!7098378 () Bool)

(assert (=> b!6277076 m!7098378))

(declare-fun m!7098380 () Bool)

(assert (=> b!6277073 m!7098380))

(assert (=> b!6277082 m!7098380))

(declare-fun m!7098382 () Bool)

(assert (=> b!6277105 m!7098382))

(declare-fun m!7098384 () Bool)

(assert (=> b!6277074 m!7098384))

(declare-fun m!7098386 () Bool)

(assert (=> b!6277074 m!7098386))

(declare-fun m!7098388 () Bool)

(assert (=> b!6277074 m!7098388))

(declare-fun m!7098390 () Bool)

(assert (=> b!6277074 m!7098390))

(declare-fun m!7098392 () Bool)

(assert (=> b!6277074 m!7098392))

(declare-fun m!7098394 () Bool)

(assert (=> b!6277074 m!7098394))

(declare-fun m!7098396 () Bool)

(assert (=> b!6277074 m!7098396))

(declare-fun m!7098398 () Bool)

(assert (=> b!6277095 m!7098398))

(declare-fun m!7098400 () Bool)

(assert (=> b!6277095 m!7098400))

(declare-fun m!7098402 () Bool)

(assert (=> b!6277098 m!7098402))

(declare-fun m!7098404 () Bool)

(assert (=> b!6277101 m!7098404))

(declare-fun m!7098406 () Bool)

(assert (=> b!6277101 m!7098406))

(declare-fun m!7098408 () Bool)

(assert (=> b!6277101 m!7098408))

(declare-fun m!7098410 () Bool)

(assert (=> b!6277101 m!7098410))

(declare-fun m!7098412 () Bool)

(assert (=> b!6277101 m!7098412))

(declare-fun m!7098414 () Bool)

(assert (=> b!6277101 m!7098414))

(declare-fun m!7098416 () Bool)

(assert (=> b!6277101 m!7098416))

(declare-fun m!7098418 () Bool)

(assert (=> b!6277101 m!7098418))

(assert (=> b!6277101 m!7098404))

(declare-fun m!7098420 () Bool)

(assert (=> b!6277101 m!7098420))

(declare-fun m!7098422 () Bool)

(assert (=> b!6277101 m!7098422))

(declare-fun m!7098424 () Bool)

(assert (=> b!6277101 m!7098424))

(declare-fun m!7098426 () Bool)

(assert (=> b!6277101 m!7098426))

(declare-fun m!7098428 () Bool)

(assert (=> b!6277101 m!7098428))

(declare-fun m!7098430 () Bool)

(assert (=> b!6277101 m!7098430))

(declare-fun m!7098432 () Bool)

(assert (=> b!6277101 m!7098432))

(declare-fun m!7098434 () Bool)

(assert (=> b!6277087 m!7098434))

(declare-fun m!7098436 () Bool)

(assert (=> b!6277087 m!7098436))

(declare-fun m!7098438 () Bool)

(assert (=> b!6277087 m!7098438))

(declare-fun m!7098440 () Bool)

(assert (=> b!6277087 m!7098440))

(declare-fun m!7098442 () Bool)

(assert (=> b!6277099 m!7098442))

(assert (=> b!6277099 m!7098442))

(declare-fun m!7098444 () Bool)

(assert (=> b!6277099 m!7098444))

(declare-fun m!7098446 () Bool)

(assert (=> b!6277084 m!7098446))

(declare-fun m!7098448 () Bool)

(assert (=> b!6277084 m!7098448))

(declare-fun m!7098450 () Bool)

(assert (=> b!6277090 m!7098450))

(declare-fun m!7098452 () Bool)

(assert (=> b!6277079 m!7098452))

(declare-fun m!7098454 () Bool)

(assert (=> b!6277079 m!7098454))

(assert (=> b!6277079 m!7098390))

(declare-fun m!7098456 () Bool)

(assert (=> b!6277079 m!7098456))

(declare-fun m!7098458 () Bool)

(assert (=> b!6277079 m!7098458))

(declare-fun m!7098460 () Bool)

(assert (=> b!6277079 m!7098460))

(declare-fun m!7098462 () Bool)

(assert (=> b!6277104 m!7098462))

(assert (=> b!6277104 m!7098434))

(declare-fun m!7098464 () Bool)

(assert (=> b!6277104 m!7098464))

(declare-fun m!7098466 () Bool)

(assert (=> b!6277102 m!7098466))

(declare-fun m!7098468 () Bool)

(assert (=> b!6277070 m!7098468))

(declare-fun m!7098470 () Bool)

(assert (=> start!623974 m!7098470))

(declare-fun m!7098472 () Bool)

(assert (=> setNonEmpty!42704 m!7098472))

(declare-fun m!7098474 () Bool)

(assert (=> b!6277094 m!7098474))

(declare-fun m!7098476 () Bool)

(assert (=> b!6277094 m!7098476))

(declare-fun m!7098478 () Bool)

(assert (=> b!6277094 m!7098478))

(declare-fun m!7098480 () Bool)

(assert (=> b!6277093 m!7098480))

(assert (=> b!6277093 m!7098480))

(declare-fun m!7098482 () Bool)

(assert (=> b!6277093 m!7098482))

(declare-fun m!7098484 () Bool)

(assert (=> b!6277071 m!7098484))

(declare-fun m!7098486 () Bool)

(assert (=> b!6277081 m!7098486))

(declare-fun m!7098488 () Bool)

(assert (=> b!6277081 m!7098488))

(declare-fun m!7098490 () Bool)

(assert (=> b!6277081 m!7098490))

(declare-fun m!7098492 () Bool)

(assert (=> b!6277081 m!7098492))

(declare-fun m!7098494 () Bool)

(assert (=> b!6277081 m!7098494))

(declare-fun m!7098496 () Bool)

(assert (=> b!6277081 m!7098496))

(declare-fun m!7098498 () Bool)

(assert (=> b!6277081 m!7098498))

(declare-fun m!7098500 () Bool)

(assert (=> b!6277072 m!7098500))

(declare-fun m!7098502 () Bool)

(assert (=> b!6277103 m!7098502))

(declare-fun m!7098504 () Bool)

(assert (=> b!6277077 m!7098504))

(declare-fun m!7098506 () Bool)

(assert (=> b!6277077 m!7098506))

(declare-fun m!7098508 () Bool)

(assert (=> b!6277077 m!7098508))

(assert (=> b!6277077 m!7098508))

(declare-fun m!7098510 () Bool)

(assert (=> b!6277077 m!7098510))

(declare-fun m!7098512 () Bool)

(assert (=> b!6277077 m!7098512))

(assert (=> b!6277077 m!7098504))

(declare-fun m!7098514 () Bool)

(assert (=> b!6277077 m!7098514))

(check-sat (not b!6277077) (not b!6277087) (not b!6277097) (not b!6277098) (not b!6277079) (not b!6277102) (not b!6277096) (not b!6277088) (not b!6277082) (not b!6277090) (not b!6277105) (not b!6277086) (not start!623974) (not b!6277101) (not b!6277095) (not b!6277074) (not b!6277104) (not b!6277070) (not b!6277089) (not b!6277073) (not b!6277081) (not b!6277071) (not b!6277094) (not b!6277084) (not b!6277093) (not b!6277072) (not b!6277078) tp_is_empty!41647 (not b!6277085) (not b!6277103) (not b!6277100) (not b!6277076) (not setNonEmpty!42704) (not b!6277099))
(check-sat)
(get-model)

(declare-fun d!1970238 () Bool)

(declare-fun e!3817549 () Bool)

(assert (=> d!1970238 (= (matchZipper!2209 ((_ map or) lt!2353411 lt!2353407) (t!378451 s!2326)) e!3817549)))

(declare-fun res!2589004 () Bool)

(assert (=> d!1970238 (=> res!2589004 e!3817549)))

(assert (=> d!1970238 (= res!2589004 (matchZipper!2209 lt!2353411 (t!378451 s!2326)))))

(declare-fun lt!2353447 () Unit!158119)

(declare-fun choose!46583 ((InoxSet Context!11162) (InoxSet Context!11162) List!64891) Unit!158119)

(assert (=> d!1970238 (= lt!2353447 (choose!46583 lt!2353411 lt!2353407 (t!378451 s!2326)))))

(assert (=> d!1970238 (= (lemmaZipperConcatMatchesSameAsBothZippers!1028 lt!2353411 lt!2353407 (t!378451 s!2326)) lt!2353447)))

(declare-fun b!6277167 () Bool)

(assert (=> b!6277167 (= e!3817549 (matchZipper!2209 lt!2353407 (t!378451 s!2326)))))

(assert (= (and d!1970238 (not res!2589004)) b!6277167))

(assert (=> d!1970238 m!7098464))

(assert (=> d!1970238 m!7098434))

(declare-fun m!7098540 () Bool)

(assert (=> d!1970238 m!7098540))

(assert (=> b!6277167 m!7098468))

(assert (=> b!6277104 d!1970238))

(declare-fun d!1970242 () Bool)

(declare-fun c!1138004 () Bool)

(declare-fun isEmpty!36808 (List!64891) Bool)

(assert (=> d!1970242 (= c!1138004 (isEmpty!36808 (t!378451 s!2326)))))

(declare-fun e!3817555 () Bool)

(assert (=> d!1970242 (= (matchZipper!2209 lt!2353411 (t!378451 s!2326)) e!3817555)))

(declare-fun b!6277177 () Bool)

(declare-fun nullableZipper!1967 ((InoxSet Context!11162)) Bool)

(assert (=> b!6277177 (= e!3817555 (nullableZipper!1967 lt!2353411))))

(declare-fun b!6277178 () Bool)

(declare-fun head!12893 (List!64891) C!32664)

(declare-fun tail!11979 (List!64891) List!64891)

(assert (=> b!6277178 (= e!3817555 (matchZipper!2209 (derivationStepZipper!2163 lt!2353411 (head!12893 (t!378451 s!2326))) (tail!11979 (t!378451 s!2326))))))

(assert (= (and d!1970242 c!1138004) b!6277177))

(assert (= (and d!1970242 (not c!1138004)) b!6277178))

(declare-fun m!7098554 () Bool)

(assert (=> d!1970242 m!7098554))

(declare-fun m!7098556 () Bool)

(assert (=> b!6277177 m!7098556))

(declare-fun m!7098558 () Bool)

(assert (=> b!6277178 m!7098558))

(assert (=> b!6277178 m!7098558))

(declare-fun m!7098560 () Bool)

(assert (=> b!6277178 m!7098560))

(declare-fun m!7098562 () Bool)

(assert (=> b!6277178 m!7098562))

(assert (=> b!6277178 m!7098560))

(assert (=> b!6277178 m!7098562))

(declare-fun m!7098564 () Bool)

(assert (=> b!6277178 m!7098564))

(assert (=> b!6277104 d!1970242))

(declare-fun d!1970248 () Bool)

(declare-fun c!1138005 () Bool)

(assert (=> d!1970248 (= c!1138005 (isEmpty!36808 (t!378451 s!2326)))))

(declare-fun e!3817556 () Bool)

(assert (=> d!1970248 (= (matchZipper!2209 ((_ map or) lt!2353411 lt!2353407) (t!378451 s!2326)) e!3817556)))

(declare-fun b!6277179 () Bool)

(assert (=> b!6277179 (= e!3817556 (nullableZipper!1967 ((_ map or) lt!2353411 lt!2353407)))))

(declare-fun b!6277180 () Bool)

(assert (=> b!6277180 (= e!3817556 (matchZipper!2209 (derivationStepZipper!2163 ((_ map or) lt!2353411 lt!2353407) (head!12893 (t!378451 s!2326))) (tail!11979 (t!378451 s!2326))))))

(assert (= (and d!1970248 c!1138005) b!6277179))

(assert (= (and d!1970248 (not c!1138005)) b!6277180))

(assert (=> d!1970248 m!7098554))

(declare-fun m!7098566 () Bool)

(assert (=> b!6277179 m!7098566))

(assert (=> b!6277180 m!7098558))

(assert (=> b!6277180 m!7098558))

(declare-fun m!7098568 () Bool)

(assert (=> b!6277180 m!7098568))

(assert (=> b!6277180 m!7098562))

(assert (=> b!6277180 m!7098568))

(assert (=> b!6277180 m!7098562))

(declare-fun m!7098570 () Bool)

(assert (=> b!6277180 m!7098570))

(assert (=> b!6277104 d!1970248))

(declare-fun d!1970250 () Bool)

(declare-fun lt!2353456 () Int)

(assert (=> d!1970250 (>= lt!2353456 0)))

(declare-fun e!3817562 () Int)

(assert (=> d!1970250 (= lt!2353456 e!3817562)))

(declare-fun c!1138008 () Bool)

(assert (=> d!1970250 (= c!1138008 ((_ is Cons!64768) lt!2353426))))

(assert (=> d!1970250 (= (zipperDepthTotal!350 lt!2353426) lt!2353456)))

(declare-fun b!6277188 () Bool)

(assert (=> b!6277188 (= e!3817562 (+ (contextDepthTotal!320 (h!71216 lt!2353426)) (zipperDepthTotal!350 (t!378452 lt!2353426))))))

(declare-fun b!6277189 () Bool)

(assert (=> b!6277189 (= e!3817562 0)))

(assert (= (and d!1970250 c!1138008) b!6277188))

(assert (= (and d!1970250 (not c!1138008)) b!6277189))

(declare-fun m!7098574 () Bool)

(assert (=> b!6277188 m!7098574))

(declare-fun m!7098576 () Bool)

(assert (=> b!6277188 m!7098576))

(assert (=> b!6277084 d!1970250))

(declare-fun d!1970254 () Bool)

(declare-fun lt!2353457 () Int)

(assert (=> d!1970254 (>= lt!2353457 0)))

(declare-fun e!3817563 () Int)

(assert (=> d!1970254 (= lt!2353457 e!3817563)))

(declare-fun c!1138009 () Bool)

(assert (=> d!1970254 (= c!1138009 ((_ is Cons!64768) zl!343))))

(assert (=> d!1970254 (= (zipperDepthTotal!350 zl!343) lt!2353457)))

(declare-fun b!6277190 () Bool)

(assert (=> b!6277190 (= e!3817563 (+ (contextDepthTotal!320 (h!71216 zl!343)) (zipperDepthTotal!350 (t!378452 zl!343))))))

(declare-fun b!6277191 () Bool)

(assert (=> b!6277191 (= e!3817563 0)))

(assert (= (and d!1970254 c!1138009) b!6277190))

(assert (= (and d!1970254 (not c!1138009)) b!6277191))

(assert (=> b!6277190 m!7098400))

(declare-fun m!7098578 () Bool)

(assert (=> b!6277190 m!7098578))

(assert (=> b!6277084 d!1970254))

(declare-fun d!1970256 () Bool)

(declare-fun c!1138010 () Bool)

(assert (=> d!1970256 (= c!1138010 (isEmpty!36808 (t!378451 s!2326)))))

(declare-fun e!3817564 () Bool)

(assert (=> d!1970256 (= (matchZipper!2209 lt!2353432 (t!378451 s!2326)) e!3817564)))

(declare-fun b!6277192 () Bool)

(assert (=> b!6277192 (= e!3817564 (nullableZipper!1967 lt!2353432))))

(declare-fun b!6277193 () Bool)

(assert (=> b!6277193 (= e!3817564 (matchZipper!2209 (derivationStepZipper!2163 lt!2353432 (head!12893 (t!378451 s!2326))) (tail!11979 (t!378451 s!2326))))))

(assert (= (and d!1970256 c!1138010) b!6277192))

(assert (= (and d!1970256 (not c!1138010)) b!6277193))

(assert (=> d!1970256 m!7098554))

(declare-fun m!7098580 () Bool)

(assert (=> b!6277192 m!7098580))

(assert (=> b!6277193 m!7098558))

(assert (=> b!6277193 m!7098558))

(declare-fun m!7098582 () Bool)

(assert (=> b!6277193 m!7098582))

(assert (=> b!6277193 m!7098562))

(assert (=> b!6277193 m!7098582))

(assert (=> b!6277193 m!7098562))

(declare-fun m!7098584 () Bool)

(assert (=> b!6277193 m!7098584))

(assert (=> b!6277082 d!1970256))

(declare-fun d!1970258 () Bool)

(declare-fun c!1138011 () Bool)

(assert (=> d!1970258 (= c!1138011 (isEmpty!36808 (t!378451 s!2326)))))

(declare-fun e!3817565 () Bool)

(assert (=> d!1970258 (= (matchZipper!2209 lt!2353422 (t!378451 s!2326)) e!3817565)))

(declare-fun b!6277194 () Bool)

(assert (=> b!6277194 (= e!3817565 (nullableZipper!1967 lt!2353422))))

(declare-fun b!6277195 () Bool)

(assert (=> b!6277195 (= e!3817565 (matchZipper!2209 (derivationStepZipper!2163 lt!2353422 (head!12893 (t!378451 s!2326))) (tail!11979 (t!378451 s!2326))))))

(assert (= (and d!1970258 c!1138011) b!6277194))

(assert (= (and d!1970258 (not c!1138011)) b!6277195))

(assert (=> d!1970258 m!7098554))

(declare-fun m!7098586 () Bool)

(assert (=> b!6277194 m!7098586))

(assert (=> b!6277195 m!7098558))

(assert (=> b!6277195 m!7098558))

(declare-fun m!7098588 () Bool)

(assert (=> b!6277195 m!7098588))

(assert (=> b!6277195 m!7098562))

(assert (=> b!6277195 m!7098588))

(assert (=> b!6277195 m!7098562))

(declare-fun m!7098590 () Bool)

(assert (=> b!6277195 m!7098590))

(assert (=> b!6277103 d!1970258))

(declare-fun bs!1568240 () Bool)

(declare-fun b!6277287 () Bool)

(assert (= bs!1568240 (and b!6277287 b!6277077)))

(declare-fun lambda!344099 () Int)

(assert (=> bs!1568240 (not (= lambda!344099 lambda!344082))))

(assert (=> bs!1568240 (not (= lambda!344099 lambda!344083))))

(declare-fun bs!1568242 () Bool)

(assert (= bs!1568242 (and b!6277287 b!6277101)))

(assert (=> bs!1568242 (not (= lambda!344099 lambda!344085))))

(assert (=> b!6277287 true))

(assert (=> b!6277287 true))

(declare-fun bs!1568243 () Bool)

(declare-fun b!6277289 () Bool)

(assert (= bs!1568243 (and b!6277289 b!6277077)))

(declare-fun lambda!344100 () Int)

(assert (=> bs!1568243 (not (= lambda!344100 lambda!344082))))

(assert (=> bs!1568243 (= (and (= (regOne!32906 lt!2353443) (regOne!32906 r!7292)) (= (regTwo!32906 lt!2353443) (regTwo!32906 r!7292))) (= lambda!344100 lambda!344083))))

(declare-fun bs!1568244 () Bool)

(assert (= bs!1568244 (and b!6277289 b!6277101)))

(assert (=> bs!1568244 (not (= lambda!344100 lambda!344085))))

(declare-fun bs!1568245 () Bool)

(assert (= bs!1568245 (and b!6277289 b!6277287)))

(assert (=> bs!1568245 (not (= lambda!344100 lambda!344099))))

(assert (=> b!6277289 true))

(assert (=> b!6277289 true))

(declare-fun bm!531163 () Bool)

(declare-fun c!1138046 () Bool)

(declare-fun call!531168 () Bool)

(assert (=> bm!531163 (= call!531168 (Exists!3267 (ite c!1138046 lambda!344099 lambda!344100)))))

(declare-fun b!6277284 () Bool)

(declare-fun e!3817620 () Bool)

(assert (=> b!6277284 (= e!3817620 (= s!2326 (Cons!64767 (c!1137976 lt!2353443) Nil!64767)))))

(declare-fun b!6277285 () Bool)

(declare-fun c!1138045 () Bool)

(assert (=> b!6277285 (= c!1138045 ((_ is Union!16197) lt!2353443))))

(declare-fun e!3817618 () Bool)

(assert (=> b!6277285 (= e!3817620 e!3817618)))

(declare-fun d!1970260 () Bool)

(declare-fun c!1138048 () Bool)

(assert (=> d!1970260 (= c!1138048 ((_ is EmptyExpr!16197) lt!2353443))))

(declare-fun e!3817617 () Bool)

(assert (=> d!1970260 (= (matchRSpec!3298 lt!2353443 s!2326) e!3817617)))

(declare-fun b!6277286 () Bool)

(declare-fun c!1138047 () Bool)

(assert (=> b!6277286 (= c!1138047 ((_ is ElementMatch!16197) lt!2353443))))

(declare-fun e!3817619 () Bool)

(assert (=> b!6277286 (= e!3817619 e!3817620)))

(declare-fun e!3817615 () Bool)

(assert (=> b!6277287 (= e!3817615 call!531168)))

(declare-fun bm!531164 () Bool)

(declare-fun call!531169 () Bool)

(assert (=> bm!531164 (= call!531169 (isEmpty!36808 s!2326))))

(declare-fun b!6277288 () Bool)

(declare-fun e!3817621 () Bool)

(assert (=> b!6277288 (= e!3817618 e!3817621)))

(assert (=> b!6277288 (= c!1138046 ((_ is Star!16197) lt!2353443))))

(assert (=> b!6277289 (= e!3817621 call!531168)))

(declare-fun b!6277290 () Bool)

(assert (=> b!6277290 (= e!3817617 call!531169)))

(declare-fun b!6277291 () Bool)

(declare-fun e!3817616 () Bool)

(assert (=> b!6277291 (= e!3817618 e!3817616)))

(declare-fun res!2589034 () Bool)

(assert (=> b!6277291 (= res!2589034 (matchRSpec!3298 (regOne!32907 lt!2353443) s!2326))))

(assert (=> b!6277291 (=> res!2589034 e!3817616)))

(declare-fun b!6277292 () Bool)

(assert (=> b!6277292 (= e!3817616 (matchRSpec!3298 (regTwo!32907 lt!2353443) s!2326))))

(declare-fun b!6277293 () Bool)

(declare-fun res!2589035 () Bool)

(assert (=> b!6277293 (=> res!2589035 e!3817615)))

(assert (=> b!6277293 (= res!2589035 call!531169)))

(assert (=> b!6277293 (= e!3817621 e!3817615)))

(declare-fun b!6277294 () Bool)

(assert (=> b!6277294 (= e!3817617 e!3817619)))

(declare-fun res!2589033 () Bool)

(assert (=> b!6277294 (= res!2589033 (not ((_ is EmptyLang!16197) lt!2353443)))))

(assert (=> b!6277294 (=> (not res!2589033) (not e!3817619))))

(assert (= (and d!1970260 c!1138048) b!6277290))

(assert (= (and d!1970260 (not c!1138048)) b!6277294))

(assert (= (and b!6277294 res!2589033) b!6277286))

(assert (= (and b!6277286 c!1138047) b!6277284))

(assert (= (and b!6277286 (not c!1138047)) b!6277285))

(assert (= (and b!6277285 c!1138045) b!6277291))

(assert (= (and b!6277285 (not c!1138045)) b!6277288))

(assert (= (and b!6277291 (not res!2589034)) b!6277292))

(assert (= (and b!6277288 c!1138046) b!6277293))

(assert (= (and b!6277288 (not c!1138046)) b!6277289))

(assert (= (and b!6277293 (not res!2589035)) b!6277287))

(assert (= (or b!6277287 b!6277289) bm!531163))

(assert (= (or b!6277290 b!6277293) bm!531164))

(declare-fun m!7098658 () Bool)

(assert (=> bm!531163 m!7098658))

(declare-fun m!7098660 () Bool)

(assert (=> bm!531164 m!7098660))

(declare-fun m!7098662 () Bool)

(assert (=> b!6277291 m!7098662))

(declare-fun m!7098664 () Bool)

(assert (=> b!6277292 m!7098664))

(assert (=> b!6277101 d!1970260))

(declare-fun b!6277384 () Bool)

(declare-fun res!2589077 () Bool)

(declare-fun e!3817681 () Bool)

(assert (=> b!6277384 (=> res!2589077 e!3817681)))

(assert (=> b!6277384 (= res!2589077 (not ((_ is ElementMatch!16197) lt!2353423)))))

(declare-fun e!3817679 () Bool)

(assert (=> b!6277384 (= e!3817679 e!3817681)))

(declare-fun b!6277385 () Bool)

(declare-fun e!3817683 () Bool)

(assert (=> b!6277385 (= e!3817681 e!3817683)))

(declare-fun res!2589083 () Bool)

(assert (=> b!6277385 (=> (not res!2589083) (not e!3817683))))

(declare-fun lt!2353476 () Bool)

(assert (=> b!6277385 (= res!2589083 (not lt!2353476))))

(declare-fun bm!531176 () Bool)

(declare-fun call!531181 () Bool)

(assert (=> bm!531176 (= call!531181 (isEmpty!36808 s!2326))))

(declare-fun b!6277386 () Bool)

(declare-fun res!2589081 () Bool)

(declare-fun e!3817677 () Bool)

(assert (=> b!6277386 (=> (not res!2589081) (not e!3817677))))

(assert (=> b!6277386 (= res!2589081 (not call!531181))))

(declare-fun b!6277387 () Bool)

(assert (=> b!6277387 (= e!3817679 (not lt!2353476))))

(declare-fun b!6277388 () Bool)

(declare-fun e!3817678 () Bool)

(assert (=> b!6277388 (= e!3817678 (= lt!2353476 call!531181))))

(declare-fun b!6277389 () Bool)

(declare-fun res!2589084 () Bool)

(declare-fun e!3817680 () Bool)

(assert (=> b!6277389 (=> res!2589084 e!3817680)))

(assert (=> b!6277389 (= res!2589084 (not (isEmpty!36808 (tail!11979 s!2326))))))

(declare-fun d!1970282 () Bool)

(assert (=> d!1970282 e!3817678))

(declare-fun c!1138073 () Bool)

(assert (=> d!1970282 (= c!1138073 ((_ is EmptyExpr!16197) lt!2353423))))

(declare-fun e!3817682 () Bool)

(assert (=> d!1970282 (= lt!2353476 e!3817682)))

(declare-fun c!1138074 () Bool)

(assert (=> d!1970282 (= c!1138074 (isEmpty!36808 s!2326))))

(assert (=> d!1970282 (validRegex!7933 lt!2353423)))

(assert (=> d!1970282 (= (matchR!8380 lt!2353423 s!2326) lt!2353476)))

(declare-fun b!6277390 () Bool)

(declare-fun res!2589079 () Bool)

(assert (=> b!6277390 (=> (not res!2589079) (not e!3817677))))

(assert (=> b!6277390 (= res!2589079 (isEmpty!36808 (tail!11979 s!2326)))))

(declare-fun b!6277391 () Bool)

(assert (=> b!6277391 (= e!3817677 (= (head!12893 s!2326) (c!1137976 lt!2353423)))))

(declare-fun b!6277392 () Bool)

(declare-fun res!2589082 () Bool)

(assert (=> b!6277392 (=> res!2589082 e!3817681)))

(assert (=> b!6277392 (= res!2589082 e!3817677)))

(declare-fun res!2589080 () Bool)

(assert (=> b!6277392 (=> (not res!2589080) (not e!3817677))))

(assert (=> b!6277392 (= res!2589080 lt!2353476)))

(declare-fun b!6277393 () Bool)

(assert (=> b!6277393 (= e!3817678 e!3817679)))

(declare-fun c!1138075 () Bool)

(assert (=> b!6277393 (= c!1138075 ((_ is EmptyLang!16197) lt!2353423))))

(declare-fun b!6277394 () Bool)

(assert (=> b!6277394 (= e!3817682 (nullable!6190 lt!2353423))))

(declare-fun b!6277395 () Bool)

(assert (=> b!6277395 (= e!3817680 (not (= (head!12893 s!2326) (c!1137976 lt!2353423))))))

(declare-fun b!6277396 () Bool)

(assert (=> b!6277396 (= e!3817683 e!3817680)))

(declare-fun res!2589078 () Bool)

(assert (=> b!6277396 (=> res!2589078 e!3817680)))

(assert (=> b!6277396 (= res!2589078 call!531181)))

(declare-fun b!6277397 () Bool)

(declare-fun derivativeStep!4906 (Regex!16197 C!32664) Regex!16197)

(assert (=> b!6277397 (= e!3817682 (matchR!8380 (derivativeStep!4906 lt!2353423 (head!12893 s!2326)) (tail!11979 s!2326)))))

(assert (= (and d!1970282 c!1138074) b!6277394))

(assert (= (and d!1970282 (not c!1138074)) b!6277397))

(assert (= (and d!1970282 c!1138073) b!6277388))

(assert (= (and d!1970282 (not c!1138073)) b!6277393))

(assert (= (and b!6277393 c!1138075) b!6277387))

(assert (= (and b!6277393 (not c!1138075)) b!6277384))

(assert (= (and b!6277384 (not res!2589077)) b!6277392))

(assert (= (and b!6277392 res!2589080) b!6277386))

(assert (= (and b!6277386 res!2589081) b!6277390))

(assert (= (and b!6277390 res!2589079) b!6277391))

(assert (= (and b!6277392 (not res!2589082)) b!6277385))

(assert (= (and b!6277385 res!2589083) b!6277396))

(assert (= (and b!6277396 (not res!2589078)) b!6277389))

(assert (= (and b!6277389 (not res!2589084)) b!6277395))

(assert (= (or b!6277388 b!6277386 b!6277396) bm!531176))

(assert (=> bm!531176 m!7098660))

(declare-fun m!7098696 () Bool)

(assert (=> b!6277391 m!7098696))

(declare-fun m!7098698 () Bool)

(assert (=> b!6277390 m!7098698))

(assert (=> b!6277390 m!7098698))

(declare-fun m!7098700 () Bool)

(assert (=> b!6277390 m!7098700))

(declare-fun m!7098702 () Bool)

(assert (=> b!6277394 m!7098702))

(assert (=> b!6277397 m!7098696))

(assert (=> b!6277397 m!7098696))

(declare-fun m!7098704 () Bool)

(assert (=> b!6277397 m!7098704))

(assert (=> b!6277397 m!7098698))

(assert (=> b!6277397 m!7098704))

(assert (=> b!6277397 m!7098698))

(declare-fun m!7098706 () Bool)

(assert (=> b!6277397 m!7098706))

(assert (=> d!1970282 m!7098660))

(declare-fun m!7098708 () Bool)

(assert (=> d!1970282 m!7098708))

(assert (=> b!6277395 m!7098696))

(assert (=> b!6277389 m!7098698))

(assert (=> b!6277389 m!7098698))

(assert (=> b!6277389 m!7098700))

(assert (=> b!6277101 d!1970282))

(declare-fun d!1970290 () Bool)

(declare-fun e!3817730 () Bool)

(assert (=> d!1970290 e!3817730))

(declare-fun res!2589121 () Bool)

(assert (=> d!1970290 (=> (not res!2589121) (not e!3817730))))

(declare-fun lt!2353486 () Regex!16197)

(assert (=> d!1970290 (= res!2589121 (validRegex!7933 lt!2353486))))

(declare-fun e!3817725 () Regex!16197)

(assert (=> d!1970290 (= lt!2353486 e!3817725)))

(declare-fun c!1138097 () Bool)

(declare-fun e!3817729 () Bool)

(assert (=> d!1970290 (= c!1138097 e!3817729)))

(declare-fun res!2589122 () Bool)

(assert (=> d!1970290 (=> (not res!2589122) (not e!3817729))))

(assert (=> d!1970290 (= res!2589122 ((_ is Cons!64766) lt!2353436))))

(declare-fun lambda!344109 () Int)

(declare-fun forall!15330 (List!64890 Int) Bool)

(assert (=> d!1970290 (forall!15330 lt!2353436 lambda!344109)))

(assert (=> d!1970290 (= (generalisedConcat!1794 lt!2353436) lt!2353486)))

(declare-fun b!6277476 () Bool)

(assert (=> b!6277476 (= e!3817729 (isEmpty!36806 (t!378450 lt!2353436)))))

(declare-fun b!6277477 () Bool)

(declare-fun e!3817728 () Bool)

(declare-fun e!3817726 () Bool)

(assert (=> b!6277477 (= e!3817728 e!3817726)))

(declare-fun c!1138098 () Bool)

(declare-fun tail!11980 (List!64890) List!64890)

(assert (=> b!6277477 (= c!1138098 (isEmpty!36806 (tail!11980 lt!2353436)))))

(declare-fun b!6277478 () Bool)

(assert (=> b!6277478 (= e!3817730 e!3817728)))

(declare-fun c!1138099 () Bool)

(assert (=> b!6277478 (= c!1138099 (isEmpty!36806 lt!2353436))))

(declare-fun b!6277479 () Bool)

(assert (=> b!6277479 (= e!3817725 (h!71214 lt!2353436))))

(declare-fun b!6277480 () Bool)

(declare-fun e!3817727 () Regex!16197)

(assert (=> b!6277480 (= e!3817727 (Concat!25042 (h!71214 lt!2353436) (generalisedConcat!1794 (t!378450 lt!2353436))))))

(declare-fun b!6277481 () Bool)

(declare-fun isConcat!1126 (Regex!16197) Bool)

(assert (=> b!6277481 (= e!3817726 (isConcat!1126 lt!2353486))))

(declare-fun b!6277482 () Bool)

(assert (=> b!6277482 (= e!3817725 e!3817727)))

(declare-fun c!1138100 () Bool)

(assert (=> b!6277482 (= c!1138100 ((_ is Cons!64766) lt!2353436))))

(declare-fun b!6277483 () Bool)

(assert (=> b!6277483 (= e!3817727 EmptyExpr!16197)))

(declare-fun b!6277484 () Bool)

(declare-fun isEmptyExpr!1603 (Regex!16197) Bool)

(assert (=> b!6277484 (= e!3817728 (isEmptyExpr!1603 lt!2353486))))

(declare-fun b!6277485 () Bool)

(declare-fun head!12895 (List!64890) Regex!16197)

(assert (=> b!6277485 (= e!3817726 (= lt!2353486 (head!12895 lt!2353436)))))

(assert (= (and d!1970290 res!2589122) b!6277476))

(assert (= (and d!1970290 c!1138097) b!6277479))

(assert (= (and d!1970290 (not c!1138097)) b!6277482))

(assert (= (and b!6277482 c!1138100) b!6277480))

(assert (= (and b!6277482 (not c!1138100)) b!6277483))

(assert (= (and d!1970290 res!2589121) b!6277478))

(assert (= (and b!6277478 c!1138099) b!6277484))

(assert (= (and b!6277478 (not c!1138099)) b!6277477))

(assert (= (and b!6277477 c!1138098) b!6277485))

(assert (= (and b!6277477 (not c!1138098)) b!6277481))

(declare-fun m!7098740 () Bool)

(assert (=> b!6277481 m!7098740))

(declare-fun m!7098742 () Bool)

(assert (=> b!6277484 m!7098742))

(declare-fun m!7098744 () Bool)

(assert (=> b!6277480 m!7098744))

(declare-fun m!7098746 () Bool)

(assert (=> b!6277476 m!7098746))

(declare-fun m!7098748 () Bool)

(assert (=> b!6277478 m!7098748))

(declare-fun m!7098750 () Bool)

(assert (=> b!6277485 m!7098750))

(declare-fun m!7098752 () Bool)

(assert (=> b!6277477 m!7098752))

(assert (=> b!6277477 m!7098752))

(declare-fun m!7098754 () Bool)

(assert (=> b!6277477 m!7098754))

(declare-fun m!7098756 () Bool)

(assert (=> d!1970290 m!7098756))

(declare-fun m!7098758 () Bool)

(assert (=> d!1970290 m!7098758))

(assert (=> b!6277101 d!1970290))

(declare-fun d!1970300 () Bool)

(declare-fun c!1138101 () Bool)

(assert (=> d!1970300 (= c!1138101 (isEmpty!36808 s!2326))))

(declare-fun e!3817731 () Bool)

(assert (=> d!1970300 (= (matchZipper!2209 lt!2353418 s!2326) e!3817731)))

(declare-fun b!6277486 () Bool)

(assert (=> b!6277486 (= e!3817731 (nullableZipper!1967 lt!2353418))))

(declare-fun b!6277487 () Bool)

(assert (=> b!6277487 (= e!3817731 (matchZipper!2209 (derivationStepZipper!2163 lt!2353418 (head!12893 s!2326)) (tail!11979 s!2326)))))

(assert (= (and d!1970300 c!1138101) b!6277486))

(assert (= (and d!1970300 (not c!1138101)) b!6277487))

(assert (=> d!1970300 m!7098660))

(declare-fun m!7098760 () Bool)

(assert (=> b!6277486 m!7098760))

(assert (=> b!6277487 m!7098696))

(assert (=> b!6277487 m!7098696))

(declare-fun m!7098762 () Bool)

(assert (=> b!6277487 m!7098762))

(assert (=> b!6277487 m!7098698))

(assert (=> b!6277487 m!7098762))

(assert (=> b!6277487 m!7098698))

(declare-fun m!7098764 () Bool)

(assert (=> b!6277487 m!7098764))

(assert (=> b!6277101 d!1970300))

(declare-fun d!1970302 () Bool)

(declare-fun choose!46587 (Int) Bool)

(assert (=> d!1970302 (= (Exists!3267 lambda!344085) (choose!46587 lambda!344085))))

(declare-fun bs!1568252 () Bool)

(assert (= bs!1568252 d!1970302))

(declare-fun m!7098766 () Bool)

(assert (=> bs!1568252 m!7098766))

(assert (=> b!6277101 d!1970302))

(declare-fun d!1970304 () Bool)

(declare-fun isEmpty!36809 (Option!16088) Bool)

(assert (=> d!1970304 (= (isDefined!12791 (findConcatSeparation!2502 (regOne!32906 (regOne!32906 r!7292)) lt!2353423 Nil!64767 s!2326 s!2326)) (not (isEmpty!36809 (findConcatSeparation!2502 (regOne!32906 (regOne!32906 r!7292)) lt!2353423 Nil!64767 s!2326 s!2326))))))

(declare-fun bs!1568253 () Bool)

(assert (= bs!1568253 d!1970304))

(assert (=> bs!1568253 m!7098404))

(declare-fun m!7098768 () Bool)

(assert (=> bs!1568253 m!7098768))

(assert (=> b!6277101 d!1970304))

(declare-fun bs!1568256 () Bool)

(declare-fun d!1970306 () Bool)

(assert (= bs!1568256 (and d!1970306 b!6277287)))

(declare-fun lambda!344112 () Int)

(assert (=> bs!1568256 (not (= lambda!344112 lambda!344099))))

(declare-fun bs!1568257 () Bool)

(assert (= bs!1568257 (and d!1970306 b!6277077)))

(assert (=> bs!1568257 (not (= lambda!344112 lambda!344083))))

(assert (=> bs!1568257 (= (and (= (regOne!32906 (regOne!32906 r!7292)) (regOne!32906 r!7292)) (= lt!2353423 (regTwo!32906 r!7292))) (= lambda!344112 lambda!344082))))

(declare-fun bs!1568258 () Bool)

(assert (= bs!1568258 (and d!1970306 b!6277289)))

(assert (=> bs!1568258 (not (= lambda!344112 lambda!344100))))

(declare-fun bs!1568259 () Bool)

(assert (= bs!1568259 (and d!1970306 b!6277101)))

(assert (=> bs!1568259 (= lambda!344112 lambda!344085)))

(assert (=> d!1970306 true))

(assert (=> d!1970306 true))

(assert (=> d!1970306 true))

(assert (=> d!1970306 (= (isDefined!12791 (findConcatSeparation!2502 (regOne!32906 (regOne!32906 r!7292)) lt!2353423 Nil!64767 s!2326 s!2326)) (Exists!3267 lambda!344112))))

(declare-fun lt!2353499 () Unit!158119)

(declare-fun choose!46588 (Regex!16197 Regex!16197 List!64891) Unit!158119)

(assert (=> d!1970306 (= lt!2353499 (choose!46588 (regOne!32906 (regOne!32906 r!7292)) lt!2353423 s!2326))))

(assert (=> d!1970306 (validRegex!7933 (regOne!32906 (regOne!32906 r!7292)))))

(assert (=> d!1970306 (= (lemmaFindConcatSeparationEquivalentToExists!2266 (regOne!32906 (regOne!32906 r!7292)) lt!2353423 s!2326) lt!2353499)))

(declare-fun bs!1568260 () Bool)

(assert (= bs!1568260 d!1970306))

(assert (=> bs!1568260 m!7098432))

(assert (=> bs!1568260 m!7098404))

(declare-fun m!7098800 () Bool)

(assert (=> bs!1568260 m!7098800))

(assert (=> bs!1568260 m!7098404))

(assert (=> bs!1568260 m!7098420))

(declare-fun m!7098802 () Bool)

(assert (=> bs!1568260 m!7098802))

(assert (=> b!6277101 d!1970306))

(declare-fun b!6277543 () Bool)

(declare-fun res!2589148 () Bool)

(declare-fun e!3817768 () Bool)

(assert (=> b!6277543 (=> res!2589148 e!3817768)))

(assert (=> b!6277543 (= res!2589148 (not ((_ is ElementMatch!16197) lt!2353443)))))

(declare-fun e!3817766 () Bool)

(assert (=> b!6277543 (= e!3817766 e!3817768)))

(declare-fun b!6277544 () Bool)

(declare-fun e!3817770 () Bool)

(assert (=> b!6277544 (= e!3817768 e!3817770)))

(declare-fun res!2589154 () Bool)

(assert (=> b!6277544 (=> (not res!2589154) (not e!3817770))))

(declare-fun lt!2353500 () Bool)

(assert (=> b!6277544 (= res!2589154 (not lt!2353500))))

(declare-fun bm!531181 () Bool)

(declare-fun call!531186 () Bool)

(assert (=> bm!531181 (= call!531186 (isEmpty!36808 s!2326))))

(declare-fun b!6277545 () Bool)

(declare-fun res!2589152 () Bool)

(declare-fun e!3817764 () Bool)

(assert (=> b!6277545 (=> (not res!2589152) (not e!3817764))))

(assert (=> b!6277545 (= res!2589152 (not call!531186))))

(declare-fun b!6277546 () Bool)

(assert (=> b!6277546 (= e!3817766 (not lt!2353500))))

(declare-fun b!6277547 () Bool)

(declare-fun e!3817765 () Bool)

(assert (=> b!6277547 (= e!3817765 (= lt!2353500 call!531186))))

(declare-fun b!6277548 () Bool)

(declare-fun res!2589155 () Bool)

(declare-fun e!3817767 () Bool)

(assert (=> b!6277548 (=> res!2589155 e!3817767)))

(assert (=> b!6277548 (= res!2589155 (not (isEmpty!36808 (tail!11979 s!2326))))))

(declare-fun d!1970316 () Bool)

(assert (=> d!1970316 e!3817765))

(declare-fun c!1138117 () Bool)

(assert (=> d!1970316 (= c!1138117 ((_ is EmptyExpr!16197) lt!2353443))))

(declare-fun e!3817769 () Bool)

(assert (=> d!1970316 (= lt!2353500 e!3817769)))

(declare-fun c!1138118 () Bool)

(assert (=> d!1970316 (= c!1138118 (isEmpty!36808 s!2326))))

(assert (=> d!1970316 (validRegex!7933 lt!2353443)))

(assert (=> d!1970316 (= (matchR!8380 lt!2353443 s!2326) lt!2353500)))

(declare-fun b!6277549 () Bool)

(declare-fun res!2589150 () Bool)

(assert (=> b!6277549 (=> (not res!2589150) (not e!3817764))))

(assert (=> b!6277549 (= res!2589150 (isEmpty!36808 (tail!11979 s!2326)))))

(declare-fun b!6277550 () Bool)

(assert (=> b!6277550 (= e!3817764 (= (head!12893 s!2326) (c!1137976 lt!2353443)))))

(declare-fun b!6277551 () Bool)

(declare-fun res!2589153 () Bool)

(assert (=> b!6277551 (=> res!2589153 e!3817768)))

(assert (=> b!6277551 (= res!2589153 e!3817764)))

(declare-fun res!2589151 () Bool)

(assert (=> b!6277551 (=> (not res!2589151) (not e!3817764))))

(assert (=> b!6277551 (= res!2589151 lt!2353500)))

(declare-fun b!6277552 () Bool)

(assert (=> b!6277552 (= e!3817765 e!3817766)))

(declare-fun c!1138119 () Bool)

(assert (=> b!6277552 (= c!1138119 ((_ is EmptyLang!16197) lt!2353443))))

(declare-fun b!6277553 () Bool)

(assert (=> b!6277553 (= e!3817769 (nullable!6190 lt!2353443))))

(declare-fun b!6277554 () Bool)

(assert (=> b!6277554 (= e!3817767 (not (= (head!12893 s!2326) (c!1137976 lt!2353443))))))

(declare-fun b!6277555 () Bool)

(assert (=> b!6277555 (= e!3817770 e!3817767)))

(declare-fun res!2589149 () Bool)

(assert (=> b!6277555 (=> res!2589149 e!3817767)))

(assert (=> b!6277555 (= res!2589149 call!531186)))

(declare-fun b!6277556 () Bool)

(assert (=> b!6277556 (= e!3817769 (matchR!8380 (derivativeStep!4906 lt!2353443 (head!12893 s!2326)) (tail!11979 s!2326)))))

(assert (= (and d!1970316 c!1138118) b!6277553))

(assert (= (and d!1970316 (not c!1138118)) b!6277556))

(assert (= (and d!1970316 c!1138117) b!6277547))

(assert (= (and d!1970316 (not c!1138117)) b!6277552))

(assert (= (and b!6277552 c!1138119) b!6277546))

(assert (= (and b!6277552 (not c!1138119)) b!6277543))

(assert (= (and b!6277543 (not res!2589148)) b!6277551))

(assert (= (and b!6277551 res!2589151) b!6277545))

(assert (= (and b!6277545 res!2589152) b!6277549))

(assert (= (and b!6277549 res!2589150) b!6277550))

(assert (= (and b!6277551 (not res!2589153)) b!6277544))

(assert (= (and b!6277544 res!2589154) b!6277555))

(assert (= (and b!6277555 (not res!2589149)) b!6277548))

(assert (= (and b!6277548 (not res!2589155)) b!6277554))

(assert (= (or b!6277547 b!6277545 b!6277555) bm!531181))

(assert (=> bm!531181 m!7098660))

(assert (=> b!6277550 m!7098696))

(assert (=> b!6277549 m!7098698))

(assert (=> b!6277549 m!7098698))

(assert (=> b!6277549 m!7098700))

(declare-fun m!7098804 () Bool)

(assert (=> b!6277553 m!7098804))

(assert (=> b!6277556 m!7098696))

(assert (=> b!6277556 m!7098696))

(declare-fun m!7098806 () Bool)

(assert (=> b!6277556 m!7098806))

(assert (=> b!6277556 m!7098698))

(assert (=> b!6277556 m!7098806))

(assert (=> b!6277556 m!7098698))

(declare-fun m!7098808 () Bool)

(assert (=> b!6277556 m!7098808))

(assert (=> d!1970316 m!7098660))

(declare-fun m!7098810 () Bool)

(assert (=> d!1970316 m!7098810))

(assert (=> b!6277554 m!7098696))

(assert (=> b!6277548 m!7098698))

(assert (=> b!6277548 m!7098698))

(assert (=> b!6277548 m!7098700))

(assert (=> b!6277101 d!1970316))

(declare-fun d!1970318 () Bool)

(assert (=> d!1970318 (= (matchR!8380 lt!2353443 s!2326) (matchRSpec!3298 lt!2353443 s!2326))))

(declare-fun lt!2353503 () Unit!158119)

(declare-fun choose!46590 (Regex!16197 List!64891) Unit!158119)

(assert (=> d!1970318 (= lt!2353503 (choose!46590 lt!2353443 s!2326))))

(assert (=> d!1970318 (validRegex!7933 lt!2353443)))

(assert (=> d!1970318 (= (mainMatchTheorem!3298 lt!2353443 s!2326) lt!2353503)))

(declare-fun bs!1568261 () Bool)

(assert (= bs!1568261 d!1970318))

(assert (=> bs!1568261 m!7098426))

(assert (=> bs!1568261 m!7098422))

(declare-fun m!7098812 () Bool)

(assert (=> bs!1568261 m!7098812))

(assert (=> bs!1568261 m!7098810))

(assert (=> b!6277101 d!1970318))

(declare-fun d!1970320 () Bool)

(assert (=> d!1970320 (= (matchR!8380 lt!2353443 s!2326) (matchZipper!2209 lt!2353440 s!2326))))

(declare-fun lt!2353506 () Unit!158119)

(declare-fun choose!46591 ((InoxSet Context!11162) List!64892 Regex!16197 List!64891) Unit!158119)

(assert (=> d!1970320 (= lt!2353506 (choose!46591 lt!2353440 lt!2353426 lt!2353443 s!2326))))

(assert (=> d!1970320 (validRegex!7933 lt!2353443)))

(assert (=> d!1970320 (= (theoremZipperRegexEquiv!767 lt!2353440 lt!2353426 lt!2353443 s!2326) lt!2353506)))

(declare-fun bs!1568269 () Bool)

(assert (= bs!1568269 d!1970320))

(assert (=> bs!1568269 m!7098426))

(assert (=> bs!1568269 m!7098412))

(declare-fun m!7098814 () Bool)

(assert (=> bs!1568269 m!7098814))

(assert (=> bs!1568269 m!7098810))

(assert (=> b!6277101 d!1970320))

(declare-fun d!1970322 () Bool)

(assert (=> d!1970322 (= (matchR!8380 lt!2353423 s!2326) (matchZipper!2209 lt!2353418 s!2326))))

(declare-fun lt!2353507 () Unit!158119)

(assert (=> d!1970322 (= lt!2353507 (choose!46591 lt!2353418 (Cons!64768 lt!2353425 Nil!64768) lt!2353423 s!2326))))

(assert (=> d!1970322 (validRegex!7933 lt!2353423)))

(assert (=> d!1970322 (= (theoremZipperRegexEquiv!767 lt!2353418 (Cons!64768 lt!2353425 Nil!64768) lt!2353423 s!2326) lt!2353507)))

(declare-fun bs!1568270 () Bool)

(assert (= bs!1568270 d!1970322))

(assert (=> bs!1568270 m!7098408))

(assert (=> bs!1568270 m!7098410))

(declare-fun m!7098822 () Bool)

(assert (=> bs!1568270 m!7098822))

(assert (=> bs!1568270 m!7098708))

(assert (=> b!6277101 d!1970322))

(declare-fun b!6277608 () Bool)

(declare-fun res!2589184 () Bool)

(declare-fun e!3817803 () Bool)

(assert (=> b!6277608 (=> (not res!2589184) (not e!3817803))))

(declare-fun call!531200 () Bool)

(assert (=> b!6277608 (= res!2589184 call!531200)))

(declare-fun e!3817804 () Bool)

(assert (=> b!6277608 (= e!3817804 e!3817803)))

(declare-fun b!6277609 () Bool)

(declare-fun e!3817805 () Bool)

(assert (=> b!6277609 (= e!3817805 e!3817804)))

(declare-fun c!1138133 () Bool)

(assert (=> b!6277609 (= c!1138133 ((_ is Union!16197) (regOne!32906 (regOne!32906 r!7292))))))

(declare-fun bm!531194 () Bool)

(declare-fun call!531201 () Bool)

(assert (=> bm!531194 (= call!531200 call!531201)))

(declare-fun bm!531195 () Bool)

(declare-fun call!531199 () Bool)

(assert (=> bm!531195 (= call!531199 (validRegex!7933 (ite c!1138133 (regTwo!32907 (regOne!32906 (regOne!32906 r!7292))) (regTwo!32906 (regOne!32906 (regOne!32906 r!7292))))))))

(declare-fun b!6277610 () Bool)

(declare-fun e!3817808 () Bool)

(assert (=> b!6277610 (= e!3817808 e!3817805)))

(declare-fun c!1138134 () Bool)

(assert (=> b!6277610 (= c!1138134 ((_ is Star!16197) (regOne!32906 (regOne!32906 r!7292))))))

(declare-fun b!6277611 () Bool)

(assert (=> b!6277611 (= e!3817803 call!531199)))

(declare-fun b!6277612 () Bool)

(declare-fun e!3817809 () Bool)

(declare-fun e!3817807 () Bool)

(assert (=> b!6277612 (= e!3817809 e!3817807)))

(declare-fun res!2589183 () Bool)

(assert (=> b!6277612 (=> (not res!2589183) (not e!3817807))))

(assert (=> b!6277612 (= res!2589183 call!531200)))

(declare-fun b!6277613 () Bool)

(declare-fun e!3817806 () Bool)

(assert (=> b!6277613 (= e!3817805 e!3817806)))

(declare-fun res!2589185 () Bool)

(assert (=> b!6277613 (= res!2589185 (not (nullable!6190 (reg!16526 (regOne!32906 (regOne!32906 r!7292))))))))

(assert (=> b!6277613 (=> (not res!2589185) (not e!3817806))))

(declare-fun b!6277614 () Bool)

(declare-fun res!2589182 () Bool)

(assert (=> b!6277614 (=> res!2589182 e!3817809)))

(assert (=> b!6277614 (= res!2589182 (not ((_ is Concat!25042) (regOne!32906 (regOne!32906 r!7292)))))))

(assert (=> b!6277614 (= e!3817804 e!3817809)))

(declare-fun b!6277615 () Bool)

(assert (=> b!6277615 (= e!3817806 call!531201)))

(declare-fun b!6277616 () Bool)

(assert (=> b!6277616 (= e!3817807 call!531199)))

(declare-fun bm!531196 () Bool)

(assert (=> bm!531196 (= call!531201 (validRegex!7933 (ite c!1138134 (reg!16526 (regOne!32906 (regOne!32906 r!7292))) (ite c!1138133 (regOne!32907 (regOne!32906 (regOne!32906 r!7292))) (regOne!32906 (regOne!32906 (regOne!32906 r!7292)))))))))

(declare-fun d!1970326 () Bool)

(declare-fun res!2589181 () Bool)

(assert (=> d!1970326 (=> res!2589181 e!3817808)))

(assert (=> d!1970326 (= res!2589181 ((_ is ElementMatch!16197) (regOne!32906 (regOne!32906 r!7292))))))

(assert (=> d!1970326 (= (validRegex!7933 (regOne!32906 (regOne!32906 r!7292))) e!3817808)))

(assert (= (and d!1970326 (not res!2589181)) b!6277610))

(assert (= (and b!6277610 c!1138134) b!6277613))

(assert (= (and b!6277610 (not c!1138134)) b!6277609))

(assert (= (and b!6277613 res!2589185) b!6277615))

(assert (= (and b!6277609 c!1138133) b!6277608))

(assert (= (and b!6277609 (not c!1138133)) b!6277614))

(assert (= (and b!6277608 res!2589184) b!6277611))

(assert (= (and b!6277614 (not res!2589182)) b!6277612))

(assert (= (and b!6277612 res!2589183) b!6277616))

(assert (= (or b!6277611 b!6277616) bm!531195))

(assert (= (or b!6277608 b!6277612) bm!531194))

(assert (= (or b!6277615 bm!531194) bm!531196))

(declare-fun m!7098852 () Bool)

(assert (=> bm!531195 m!7098852))

(declare-fun m!7098854 () Bool)

(assert (=> b!6277613 m!7098854))

(declare-fun m!7098856 () Bool)

(assert (=> bm!531196 m!7098856))

(assert (=> b!6277101 d!1970326))

(declare-fun d!1970336 () Bool)

(declare-fun c!1138135 () Bool)

(assert (=> d!1970336 (= c!1138135 (isEmpty!36808 s!2326))))

(declare-fun e!3817810 () Bool)

(assert (=> d!1970336 (= (matchZipper!2209 lt!2353440 s!2326) e!3817810)))

(declare-fun b!6277617 () Bool)

(assert (=> b!6277617 (= e!3817810 (nullableZipper!1967 lt!2353440))))

(declare-fun b!6277618 () Bool)

(assert (=> b!6277618 (= e!3817810 (matchZipper!2209 (derivationStepZipper!2163 lt!2353440 (head!12893 s!2326)) (tail!11979 s!2326)))))

(assert (= (and d!1970336 c!1138135) b!6277617))

(assert (= (and d!1970336 (not c!1138135)) b!6277618))

(assert (=> d!1970336 m!7098660))

(declare-fun m!7098858 () Bool)

(assert (=> b!6277617 m!7098858))

(assert (=> b!6277618 m!7098696))

(assert (=> b!6277618 m!7098696))

(declare-fun m!7098860 () Bool)

(assert (=> b!6277618 m!7098860))

(assert (=> b!6277618 m!7098698))

(assert (=> b!6277618 m!7098860))

(assert (=> b!6277618 m!7098698))

(declare-fun m!7098862 () Bool)

(assert (=> b!6277618 m!7098862))

(assert (=> b!6277101 d!1970336))

(declare-fun b!6277664 () Bool)

(declare-fun e!3817838 () Option!16088)

(assert (=> b!6277664 (= e!3817838 (Some!16087 (tuple2!66353 Nil!64767 s!2326)))))

(declare-fun b!6277665 () Bool)

(declare-fun res!2589205 () Bool)

(declare-fun e!3817839 () Bool)

(assert (=> b!6277665 (=> (not res!2589205) (not e!3817839))))

(declare-fun lt!2353533 () Option!16088)

(declare-fun get!22384 (Option!16088) tuple2!66352)

(assert (=> b!6277665 (= res!2589205 (matchR!8380 (regOne!32906 (regOne!32906 r!7292)) (_1!36479 (get!22384 lt!2353533))))))

(declare-fun b!6277666 () Bool)

(declare-fun lt!2353531 () Unit!158119)

(declare-fun lt!2353532 () Unit!158119)

(assert (=> b!6277666 (= lt!2353531 lt!2353532)))

(declare-fun ++!14270 (List!64891 List!64891) List!64891)

(assert (=> b!6277666 (= (++!14270 (++!14270 Nil!64767 (Cons!64767 (h!71215 s!2326) Nil!64767)) (t!378451 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2365 (List!64891 C!32664 List!64891 List!64891) Unit!158119)

(assert (=> b!6277666 (= lt!2353532 (lemmaMoveElementToOtherListKeepsConcatEq!2365 Nil!64767 (h!71215 s!2326) (t!378451 s!2326) s!2326))))

(declare-fun e!3817842 () Option!16088)

(assert (=> b!6277666 (= e!3817842 (findConcatSeparation!2502 (regOne!32906 (regOne!32906 r!7292)) lt!2353423 (++!14270 Nil!64767 (Cons!64767 (h!71215 s!2326) Nil!64767)) (t!378451 s!2326) s!2326))))

(declare-fun b!6277667 () Bool)

(declare-fun e!3817840 () Bool)

(assert (=> b!6277667 (= e!3817840 (matchR!8380 lt!2353423 s!2326))))

(declare-fun d!1970338 () Bool)

(declare-fun e!3817841 () Bool)

(assert (=> d!1970338 e!3817841))

(declare-fun res!2589206 () Bool)

(assert (=> d!1970338 (=> res!2589206 e!3817841)))

(assert (=> d!1970338 (= res!2589206 e!3817839)))

(declare-fun res!2589208 () Bool)

(assert (=> d!1970338 (=> (not res!2589208) (not e!3817839))))

(assert (=> d!1970338 (= res!2589208 (isDefined!12791 lt!2353533))))

(assert (=> d!1970338 (= lt!2353533 e!3817838)))

(declare-fun c!1138154 () Bool)

(assert (=> d!1970338 (= c!1138154 e!3817840)))

(declare-fun res!2589209 () Bool)

(assert (=> d!1970338 (=> (not res!2589209) (not e!3817840))))

(assert (=> d!1970338 (= res!2589209 (matchR!8380 (regOne!32906 (regOne!32906 r!7292)) Nil!64767))))

(assert (=> d!1970338 (validRegex!7933 (regOne!32906 (regOne!32906 r!7292)))))

(assert (=> d!1970338 (= (findConcatSeparation!2502 (regOne!32906 (regOne!32906 r!7292)) lt!2353423 Nil!64767 s!2326 s!2326) lt!2353533)))

(declare-fun b!6277668 () Bool)

(declare-fun res!2589207 () Bool)

(assert (=> b!6277668 (=> (not res!2589207) (not e!3817839))))

(assert (=> b!6277668 (= res!2589207 (matchR!8380 lt!2353423 (_2!36479 (get!22384 lt!2353533))))))

(declare-fun b!6277669 () Bool)

(assert (=> b!6277669 (= e!3817842 None!16087)))

(declare-fun b!6277670 () Bool)

(assert (=> b!6277670 (= e!3817839 (= (++!14270 (_1!36479 (get!22384 lt!2353533)) (_2!36479 (get!22384 lt!2353533))) s!2326))))

(declare-fun b!6277671 () Bool)

(assert (=> b!6277671 (= e!3817841 (not (isDefined!12791 lt!2353533)))))

(declare-fun b!6277672 () Bool)

(assert (=> b!6277672 (= e!3817838 e!3817842)))

(declare-fun c!1138155 () Bool)

(assert (=> b!6277672 (= c!1138155 ((_ is Nil!64767) s!2326))))

(assert (= (and d!1970338 res!2589209) b!6277667))

(assert (= (and d!1970338 c!1138154) b!6277664))

(assert (= (and d!1970338 (not c!1138154)) b!6277672))

(assert (= (and b!6277672 c!1138155) b!6277669))

(assert (= (and b!6277672 (not c!1138155)) b!6277666))

(assert (= (and d!1970338 res!2589208) b!6277665))

(assert (= (and b!6277665 res!2589205) b!6277668))

(assert (= (and b!6277668 res!2589207) b!6277670))

(assert (= (and d!1970338 (not res!2589206)) b!6277671))

(declare-fun m!7098910 () Bool)

(assert (=> b!6277665 m!7098910))

(declare-fun m!7098916 () Bool)

(assert (=> b!6277665 m!7098916))

(declare-fun m!7098920 () Bool)

(assert (=> b!6277671 m!7098920))

(assert (=> d!1970338 m!7098920))

(declare-fun m!7098922 () Bool)

(assert (=> d!1970338 m!7098922))

(assert (=> d!1970338 m!7098432))

(assert (=> b!6277667 m!7098408))

(assert (=> b!6277670 m!7098910))

(declare-fun m!7098924 () Bool)

(assert (=> b!6277670 m!7098924))

(declare-fun m!7098926 () Bool)

(assert (=> b!6277666 m!7098926))

(assert (=> b!6277666 m!7098926))

(declare-fun m!7098928 () Bool)

(assert (=> b!6277666 m!7098928))

(declare-fun m!7098930 () Bool)

(assert (=> b!6277666 m!7098930))

(assert (=> b!6277666 m!7098926))

(declare-fun m!7098936 () Bool)

(assert (=> b!6277666 m!7098936))

(assert (=> b!6277668 m!7098910))

(declare-fun m!7098940 () Bool)

(assert (=> b!6277668 m!7098940))

(assert (=> b!6277101 d!1970338))

(declare-fun bs!1568289 () Bool)

(declare-fun d!1970358 () Bool)

(assert (= bs!1568289 (and d!1970358 d!1970290)))

(declare-fun lambda!344136 () Int)

(assert (=> bs!1568289 (= lambda!344136 lambda!344109)))

(declare-fun e!3817853 () Bool)

(assert (=> d!1970358 e!3817853))

(declare-fun res!2589213 () Bool)

(assert (=> d!1970358 (=> (not res!2589213) (not e!3817853))))

(declare-fun lt!2353537 () Regex!16197)

(assert (=> d!1970358 (= res!2589213 (validRegex!7933 lt!2353537))))

(declare-fun e!3817848 () Regex!16197)

(assert (=> d!1970358 (= lt!2353537 e!3817848)))

(declare-fun c!1138158 () Bool)

(declare-fun e!3817852 () Bool)

(assert (=> d!1970358 (= c!1138158 e!3817852)))

(declare-fun res!2589214 () Bool)

(assert (=> d!1970358 (=> (not res!2589214) (not e!3817852))))

(assert (=> d!1970358 (= res!2589214 ((_ is Cons!64766) lt!2353419))))

(assert (=> d!1970358 (forall!15330 lt!2353419 lambda!344136)))

(assert (=> d!1970358 (= (generalisedConcat!1794 lt!2353419) lt!2353537)))

(declare-fun b!6277680 () Bool)

(assert (=> b!6277680 (= e!3817852 (isEmpty!36806 (t!378450 lt!2353419)))))

(declare-fun b!6277681 () Bool)

(declare-fun e!3817851 () Bool)

(declare-fun e!3817849 () Bool)

(assert (=> b!6277681 (= e!3817851 e!3817849)))

(declare-fun c!1138159 () Bool)

(assert (=> b!6277681 (= c!1138159 (isEmpty!36806 (tail!11980 lt!2353419)))))

(declare-fun b!6277682 () Bool)

(assert (=> b!6277682 (= e!3817853 e!3817851)))

(declare-fun c!1138160 () Bool)

(assert (=> b!6277682 (= c!1138160 (isEmpty!36806 lt!2353419))))

(declare-fun b!6277683 () Bool)

(assert (=> b!6277683 (= e!3817848 (h!71214 lt!2353419))))

(declare-fun b!6277684 () Bool)

(declare-fun e!3817850 () Regex!16197)

(assert (=> b!6277684 (= e!3817850 (Concat!25042 (h!71214 lt!2353419) (generalisedConcat!1794 (t!378450 lt!2353419))))))

(declare-fun b!6277685 () Bool)

(assert (=> b!6277685 (= e!3817849 (isConcat!1126 lt!2353537))))

(declare-fun b!6277686 () Bool)

(assert (=> b!6277686 (= e!3817848 e!3817850)))

(declare-fun c!1138161 () Bool)

(assert (=> b!6277686 (= c!1138161 ((_ is Cons!64766) lt!2353419))))

(declare-fun b!6277687 () Bool)

(assert (=> b!6277687 (= e!3817850 EmptyExpr!16197)))

(declare-fun b!6277688 () Bool)

(assert (=> b!6277688 (= e!3817851 (isEmptyExpr!1603 lt!2353537))))

(declare-fun b!6277689 () Bool)

(assert (=> b!6277689 (= e!3817849 (= lt!2353537 (head!12895 lt!2353419)))))

(assert (= (and d!1970358 res!2589214) b!6277680))

(assert (= (and d!1970358 c!1138158) b!6277683))

(assert (= (and d!1970358 (not c!1138158)) b!6277686))

(assert (= (and b!6277686 c!1138161) b!6277684))

(assert (= (and b!6277686 (not c!1138161)) b!6277687))

(assert (= (and d!1970358 res!2589213) b!6277682))

(assert (= (and b!6277682 c!1138160) b!6277688))

(assert (= (and b!6277682 (not c!1138160)) b!6277681))

(assert (= (and b!6277681 c!1138159) b!6277689))

(assert (= (and b!6277681 (not c!1138159)) b!6277685))

(declare-fun m!7098952 () Bool)

(assert (=> b!6277685 m!7098952))

(declare-fun m!7098954 () Bool)

(assert (=> b!6277688 m!7098954))

(declare-fun m!7098956 () Bool)

(assert (=> b!6277684 m!7098956))

(declare-fun m!7098958 () Bool)

(assert (=> b!6277680 m!7098958))

(declare-fun m!7098960 () Bool)

(assert (=> b!6277682 m!7098960))

(declare-fun m!7098962 () Bool)

(assert (=> b!6277689 m!7098962))

(declare-fun m!7098964 () Bool)

(assert (=> b!6277681 m!7098964))

(assert (=> b!6277681 m!7098964))

(declare-fun m!7098966 () Bool)

(assert (=> b!6277681 m!7098966))

(declare-fun m!7098968 () Bool)

(assert (=> d!1970358 m!7098968))

(declare-fun m!7098970 () Bool)

(assert (=> d!1970358 m!7098970))

(assert (=> b!6277101 d!1970358))

(declare-fun d!1970364 () Bool)

(declare-fun dynLambda!25623 (Int Context!11162) (InoxSet Context!11162))

(assert (=> d!1970364 (= (flatMap!1702 z!1189 lambda!344084) (dynLambda!25623 lambda!344084 (h!71216 zl!343)))))

(declare-fun lt!2353545 () Unit!158119)

(declare-fun choose!46592 ((InoxSet Context!11162) Context!11162 Int) Unit!158119)

(assert (=> d!1970364 (= lt!2353545 (choose!46592 z!1189 (h!71216 zl!343) lambda!344084))))

(assert (=> d!1970364 (= z!1189 (store ((as const (Array Context!11162 Bool)) false) (h!71216 zl!343) true))))

(assert (=> d!1970364 (= (lemmaFlatMapOnSingletonSet!1228 z!1189 (h!71216 zl!343) lambda!344084) lt!2353545)))

(declare-fun b_lambda!239033 () Bool)

(assert (=> (not b_lambda!239033) (not d!1970364)))

(declare-fun bs!1568296 () Bool)

(assert (= bs!1568296 d!1970364))

(assert (=> bs!1568296 m!7098494))

(declare-fun m!7098994 () Bool)

(assert (=> bs!1568296 m!7098994))

(declare-fun m!7098996 () Bool)

(assert (=> bs!1568296 m!7098996))

(declare-fun m!7098998 () Bool)

(assert (=> bs!1568296 m!7098998))

(assert (=> b!6277081 d!1970364))

(declare-fun d!1970372 () Bool)

(declare-fun nullableFct!2141 (Regex!16197) Bool)

(assert (=> d!1970372 (= (nullable!6190 (h!71214 (exprs!6081 (h!71216 zl!343)))) (nullableFct!2141 (h!71214 (exprs!6081 (h!71216 zl!343)))))))

(declare-fun bs!1568299 () Bool)

(assert (= bs!1568299 d!1970372))

(declare-fun m!7099004 () Bool)

(assert (=> bs!1568299 m!7099004))

(assert (=> b!6277081 d!1970372))

(declare-fun b!6277710 () Bool)

(declare-fun e!3817867 () (InoxSet Context!11162))

(declare-fun e!3817866 () (InoxSet Context!11162))

(assert (=> b!6277710 (= e!3817867 e!3817866)))

(declare-fun c!1138168 () Bool)

(assert (=> b!6277710 (= c!1138168 ((_ is Cons!64766) (exprs!6081 lt!2353406)))))

(declare-fun b!6277711 () Bool)

(declare-fun call!531207 () (InoxSet Context!11162))

(assert (=> b!6277711 (= e!3817866 call!531207)))

(declare-fun b!6277713 () Bool)

(declare-fun e!3817868 () Bool)

(assert (=> b!6277713 (= e!3817868 (nullable!6190 (h!71214 (exprs!6081 lt!2353406))))))

(declare-fun bm!531202 () Bool)

(assert (=> bm!531202 (= call!531207 (derivationStepZipperDown!1445 (h!71214 (exprs!6081 lt!2353406)) (Context!11163 (t!378450 (exprs!6081 lt!2353406))) (h!71215 s!2326)))))

(declare-fun b!6277714 () Bool)

(assert (=> b!6277714 (= e!3817866 ((as const (Array Context!11162 Bool)) false))))

(declare-fun d!1970376 () Bool)

(declare-fun c!1138169 () Bool)

(assert (=> d!1970376 (= c!1138169 e!3817868)))

(declare-fun res!2589223 () Bool)

(assert (=> d!1970376 (=> (not res!2589223) (not e!3817868))))

(assert (=> d!1970376 (= res!2589223 ((_ is Cons!64766) (exprs!6081 lt!2353406)))))

(assert (=> d!1970376 (= (derivationStepZipperUp!1371 lt!2353406 (h!71215 s!2326)) e!3817867)))

(declare-fun b!6277712 () Bool)

(assert (=> b!6277712 (= e!3817867 ((_ map or) call!531207 (derivationStepZipperUp!1371 (Context!11163 (t!378450 (exprs!6081 lt!2353406))) (h!71215 s!2326))))))

(assert (= (and d!1970376 res!2589223) b!6277713))

(assert (= (and d!1970376 c!1138169) b!6277712))

(assert (= (and d!1970376 (not c!1138169)) b!6277710))

(assert (= (and b!6277710 c!1138168) b!6277711))

(assert (= (and b!6277710 (not c!1138168)) b!6277714))

(assert (= (or b!6277712 b!6277711) bm!531202))

(declare-fun m!7099006 () Bool)

(assert (=> b!6277713 m!7099006))

(declare-fun m!7099008 () Bool)

(assert (=> bm!531202 m!7099008))

(declare-fun m!7099010 () Bool)

(assert (=> b!6277712 m!7099010))

(assert (=> b!6277081 d!1970376))

(declare-fun b!6277715 () Bool)

(declare-fun e!3817870 () (InoxSet Context!11162))

(declare-fun e!3817869 () (InoxSet Context!11162))

(assert (=> b!6277715 (= e!3817870 e!3817869)))

(declare-fun c!1138170 () Bool)

(assert (=> b!6277715 (= c!1138170 ((_ is Cons!64766) (exprs!6081 (h!71216 zl!343))))))

(declare-fun b!6277716 () Bool)

(declare-fun call!531208 () (InoxSet Context!11162))

(assert (=> b!6277716 (= e!3817869 call!531208)))

(declare-fun b!6277718 () Bool)

(declare-fun e!3817871 () Bool)

(assert (=> b!6277718 (= e!3817871 (nullable!6190 (h!71214 (exprs!6081 (h!71216 zl!343)))))))

(declare-fun bm!531203 () Bool)

(assert (=> bm!531203 (= call!531208 (derivationStepZipperDown!1445 (h!71214 (exprs!6081 (h!71216 zl!343))) (Context!11163 (t!378450 (exprs!6081 (h!71216 zl!343)))) (h!71215 s!2326)))))

(declare-fun b!6277719 () Bool)

(assert (=> b!6277719 (= e!3817869 ((as const (Array Context!11162 Bool)) false))))

(declare-fun d!1970378 () Bool)

(declare-fun c!1138171 () Bool)

(assert (=> d!1970378 (= c!1138171 e!3817871)))

(declare-fun res!2589224 () Bool)

(assert (=> d!1970378 (=> (not res!2589224) (not e!3817871))))

(assert (=> d!1970378 (= res!2589224 ((_ is Cons!64766) (exprs!6081 (h!71216 zl!343))))))

(assert (=> d!1970378 (= (derivationStepZipperUp!1371 (h!71216 zl!343) (h!71215 s!2326)) e!3817870)))

(declare-fun b!6277717 () Bool)

(assert (=> b!6277717 (= e!3817870 ((_ map or) call!531208 (derivationStepZipperUp!1371 (Context!11163 (t!378450 (exprs!6081 (h!71216 zl!343)))) (h!71215 s!2326))))))

(assert (= (and d!1970378 res!2589224) b!6277718))

(assert (= (and d!1970378 c!1138171) b!6277717))

(assert (= (and d!1970378 (not c!1138171)) b!6277715))

(assert (= (and b!6277715 c!1138170) b!6277716))

(assert (= (and b!6277715 (not c!1138170)) b!6277719))

(assert (= (or b!6277717 b!6277716) bm!531203))

(assert (=> b!6277718 m!7098490))

(declare-fun m!7099012 () Bool)

(assert (=> bm!531203 m!7099012))

(declare-fun m!7099014 () Bool)

(assert (=> b!6277717 m!7099014))

(assert (=> b!6277081 d!1970378))

(declare-fun b!6277772 () Bool)

(declare-fun c!1138194 () Bool)

(assert (=> b!6277772 (= c!1138194 ((_ is Star!16197) (h!71214 (exprs!6081 (h!71216 zl!343)))))))

(declare-fun e!3817904 () (InoxSet Context!11162))

(declare-fun e!3817905 () (InoxSet Context!11162))

(assert (=> b!6277772 (= e!3817904 e!3817905)))

(declare-fun call!531234 () List!64890)

(declare-fun call!531235 () (InoxSet Context!11162))

(declare-fun c!1138196 () Bool)

(declare-fun c!1138193 () Bool)

(declare-fun c!1138192 () Bool)

(declare-fun bm!531228 () Bool)

(assert (=> bm!531228 (= call!531235 (derivationStepZipperDown!1445 (ite c!1138193 (regOne!32907 (h!71214 (exprs!6081 (h!71216 zl!343)))) (ite c!1138196 (regTwo!32906 (h!71214 (exprs!6081 (h!71216 zl!343)))) (ite c!1138192 (regOne!32906 (h!71214 (exprs!6081 (h!71216 zl!343)))) (reg!16526 (h!71214 (exprs!6081 (h!71216 zl!343))))))) (ite (or c!1138193 c!1138196) lt!2353406 (Context!11163 call!531234)) (h!71215 s!2326)))))

(declare-fun d!1970380 () Bool)

(declare-fun c!1138195 () Bool)

(assert (=> d!1970380 (= c!1138195 (and ((_ is ElementMatch!16197) (h!71214 (exprs!6081 (h!71216 zl!343)))) (= (c!1137976 (h!71214 (exprs!6081 (h!71216 zl!343)))) (h!71215 s!2326))))))

(declare-fun e!3817902 () (InoxSet Context!11162))

(assert (=> d!1970380 (= (derivationStepZipperDown!1445 (h!71214 (exprs!6081 (h!71216 zl!343))) lt!2353406 (h!71215 s!2326)) e!3817902)))

(declare-fun b!6277773 () Bool)

(declare-fun e!3817901 () Bool)

(assert (=> b!6277773 (= c!1138196 e!3817901)))

(declare-fun res!2589237 () Bool)

(assert (=> b!6277773 (=> (not res!2589237) (not e!3817901))))

(assert (=> b!6277773 (= res!2589237 ((_ is Concat!25042) (h!71214 (exprs!6081 (h!71216 zl!343)))))))

(declare-fun e!3817903 () (InoxSet Context!11162))

(declare-fun e!3817900 () (InoxSet Context!11162))

(assert (=> b!6277773 (= e!3817903 e!3817900)))

(declare-fun b!6277774 () Bool)

(assert (=> b!6277774 (= e!3817900 e!3817904)))

(assert (=> b!6277774 (= c!1138192 ((_ is Concat!25042) (h!71214 (exprs!6081 (h!71216 zl!343)))))))

(declare-fun b!6277775 () Bool)

(assert (=> b!6277775 (= e!3817901 (nullable!6190 (regOne!32906 (h!71214 (exprs!6081 (h!71216 zl!343))))))))

(declare-fun bm!531229 () Bool)

(declare-fun call!531233 () (InoxSet Context!11162))

(declare-fun call!531237 () (InoxSet Context!11162))

(assert (=> bm!531229 (= call!531233 call!531237)))

(declare-fun b!6277776 () Bool)

(declare-fun call!531236 () (InoxSet Context!11162))

(assert (=> b!6277776 (= e!3817900 ((_ map or) call!531236 call!531237))))

(declare-fun b!6277777 () Bool)

(assert (=> b!6277777 (= e!3817903 ((_ map or) call!531235 call!531236))))

(declare-fun b!6277778 () Bool)

(assert (=> b!6277778 (= e!3817905 ((as const (Array Context!11162 Bool)) false))))

(declare-fun call!531238 () List!64890)

(declare-fun bm!531230 () Bool)

(declare-fun $colon$colon!2062 (List!64890 Regex!16197) List!64890)

(assert (=> bm!531230 (= call!531238 ($colon$colon!2062 (exprs!6081 lt!2353406) (ite (or c!1138196 c!1138192) (regTwo!32906 (h!71214 (exprs!6081 (h!71216 zl!343)))) (h!71214 (exprs!6081 (h!71216 zl!343))))))))

(declare-fun b!6277779 () Bool)

(assert (=> b!6277779 (= e!3817905 call!531233)))

(declare-fun b!6277780 () Bool)

(assert (=> b!6277780 (= e!3817902 e!3817903)))

(assert (=> b!6277780 (= c!1138193 ((_ is Union!16197) (h!71214 (exprs!6081 (h!71216 zl!343)))))))

(declare-fun bm!531231 () Bool)

(assert (=> bm!531231 (= call!531237 call!531235)))

(declare-fun bm!531232 () Bool)

(assert (=> bm!531232 (= call!531236 (derivationStepZipperDown!1445 (ite c!1138193 (regTwo!32907 (h!71214 (exprs!6081 (h!71216 zl!343)))) (regOne!32906 (h!71214 (exprs!6081 (h!71216 zl!343))))) (ite c!1138193 lt!2353406 (Context!11163 call!531238)) (h!71215 s!2326)))))

(declare-fun b!6277781 () Bool)

(assert (=> b!6277781 (= e!3817902 (store ((as const (Array Context!11162 Bool)) false) lt!2353406 true))))

(declare-fun bm!531233 () Bool)

(assert (=> bm!531233 (= call!531234 call!531238)))

(declare-fun b!6277782 () Bool)

(assert (=> b!6277782 (= e!3817904 call!531233)))

(assert (= (and d!1970380 c!1138195) b!6277781))

(assert (= (and d!1970380 (not c!1138195)) b!6277780))

(assert (= (and b!6277780 c!1138193) b!6277777))

(assert (= (and b!6277780 (not c!1138193)) b!6277773))

(assert (= (and b!6277773 res!2589237) b!6277775))

(assert (= (and b!6277773 c!1138196) b!6277776))

(assert (= (and b!6277773 (not c!1138196)) b!6277774))

(assert (= (and b!6277774 c!1138192) b!6277782))

(assert (= (and b!6277774 (not c!1138192)) b!6277772))

(assert (= (and b!6277772 c!1138194) b!6277779))

(assert (= (and b!6277772 (not c!1138194)) b!6277778))

(assert (= (or b!6277782 b!6277779) bm!531233))

(assert (= (or b!6277782 b!6277779) bm!531229))

(assert (= (or b!6277776 bm!531233) bm!531230))

(assert (= (or b!6277776 bm!531229) bm!531231))

(assert (= (or b!6277777 b!6277776) bm!531232))

(assert (= (or b!6277777 bm!531231) bm!531228))

(declare-fun m!7099042 () Bool)

(assert (=> bm!531230 m!7099042))

(declare-fun m!7099044 () Bool)

(assert (=> bm!531228 m!7099044))

(declare-fun m!7099046 () Bool)

(assert (=> b!6277781 m!7099046))

(declare-fun m!7099048 () Bool)

(assert (=> b!6277775 m!7099048))

(declare-fun m!7099050 () Bool)

(assert (=> bm!531232 m!7099050))

(assert (=> b!6277081 d!1970380))

(declare-fun d!1970392 () Bool)

(declare-fun choose!46594 ((InoxSet Context!11162) Int) (InoxSet Context!11162))

(assert (=> d!1970392 (= (flatMap!1702 z!1189 lambda!344084) (choose!46594 z!1189 lambda!344084))))

(declare-fun bs!1568315 () Bool)

(assert (= bs!1568315 d!1970392))

(declare-fun m!7099054 () Bool)

(assert (=> bs!1568315 m!7099054))

(assert (=> b!6277081 d!1970392))

(declare-fun b!6277783 () Bool)

(declare-fun e!3817907 () (InoxSet Context!11162))

(declare-fun e!3817906 () (InoxSet Context!11162))

(assert (=> b!6277783 (= e!3817907 e!3817906)))

(declare-fun c!1138197 () Bool)

(assert (=> b!6277783 (= c!1138197 ((_ is Cons!64766) (exprs!6081 (Context!11163 (Cons!64766 (h!71214 (exprs!6081 (h!71216 zl!343))) (t!378450 (exprs!6081 (h!71216 zl!343))))))))))

(declare-fun b!6277784 () Bool)

(declare-fun call!531239 () (InoxSet Context!11162))

(assert (=> b!6277784 (= e!3817906 call!531239)))

(declare-fun b!6277786 () Bool)

(declare-fun e!3817908 () Bool)

(assert (=> b!6277786 (= e!3817908 (nullable!6190 (h!71214 (exprs!6081 (Context!11163 (Cons!64766 (h!71214 (exprs!6081 (h!71216 zl!343))) (t!378450 (exprs!6081 (h!71216 zl!343)))))))))))

(declare-fun bm!531234 () Bool)

(assert (=> bm!531234 (= call!531239 (derivationStepZipperDown!1445 (h!71214 (exprs!6081 (Context!11163 (Cons!64766 (h!71214 (exprs!6081 (h!71216 zl!343))) (t!378450 (exprs!6081 (h!71216 zl!343))))))) (Context!11163 (t!378450 (exprs!6081 (Context!11163 (Cons!64766 (h!71214 (exprs!6081 (h!71216 zl!343))) (t!378450 (exprs!6081 (h!71216 zl!343)))))))) (h!71215 s!2326)))))

(declare-fun b!6277787 () Bool)

(assert (=> b!6277787 (= e!3817906 ((as const (Array Context!11162 Bool)) false))))

(declare-fun d!1970396 () Bool)

(declare-fun c!1138198 () Bool)

(assert (=> d!1970396 (= c!1138198 e!3817908)))

(declare-fun res!2589238 () Bool)

(assert (=> d!1970396 (=> (not res!2589238) (not e!3817908))))

(assert (=> d!1970396 (= res!2589238 ((_ is Cons!64766) (exprs!6081 (Context!11163 (Cons!64766 (h!71214 (exprs!6081 (h!71216 zl!343))) (t!378450 (exprs!6081 (h!71216 zl!343))))))))))

(assert (=> d!1970396 (= (derivationStepZipperUp!1371 (Context!11163 (Cons!64766 (h!71214 (exprs!6081 (h!71216 zl!343))) (t!378450 (exprs!6081 (h!71216 zl!343))))) (h!71215 s!2326)) e!3817907)))

(declare-fun b!6277785 () Bool)

(assert (=> b!6277785 (= e!3817907 ((_ map or) call!531239 (derivationStepZipperUp!1371 (Context!11163 (t!378450 (exprs!6081 (Context!11163 (Cons!64766 (h!71214 (exprs!6081 (h!71216 zl!343))) (t!378450 (exprs!6081 (h!71216 zl!343)))))))) (h!71215 s!2326))))))

(assert (= (and d!1970396 res!2589238) b!6277786))

(assert (= (and d!1970396 c!1138198) b!6277785))

(assert (= (and d!1970396 (not c!1138198)) b!6277783))

(assert (= (and b!6277783 c!1138197) b!6277784))

(assert (= (and b!6277783 (not c!1138197)) b!6277787))

(assert (= (or b!6277785 b!6277784) bm!531234))

(declare-fun m!7099056 () Bool)

(assert (=> b!6277786 m!7099056))

(declare-fun m!7099058 () Bool)

(assert (=> bm!531234 m!7099058))

(declare-fun m!7099060 () Bool)

(assert (=> b!6277785 m!7099060))

(assert (=> b!6277081 d!1970396))

(declare-fun d!1970398 () Bool)

(assert (=> d!1970398 (= (nullable!6190 (regOne!32906 (regOne!32906 r!7292))) (nullableFct!2141 (regOne!32906 (regOne!32906 r!7292))))))

(declare-fun bs!1568316 () Bool)

(assert (= bs!1568316 d!1970398))

(declare-fun m!7099062 () Bool)

(assert (=> bs!1568316 m!7099062))

(assert (=> b!6277102 d!1970398))

(declare-fun d!1970400 () Bool)

(declare-fun lt!2353559 () Regex!16197)

(assert (=> d!1970400 (validRegex!7933 lt!2353559)))

(assert (=> d!1970400 (= lt!2353559 (generalisedUnion!2041 (unfocusZipperList!1618 zl!343)))))

(assert (=> d!1970400 (= (unfocusZipper!1939 zl!343) lt!2353559)))

(declare-fun bs!1568322 () Bool)

(assert (= bs!1568322 d!1970400))

(declare-fun m!7099070 () Bool)

(assert (=> bs!1568322 m!7099070))

(assert (=> bs!1568322 m!7098442))

(assert (=> bs!1568322 m!7098442))

(assert (=> bs!1568322 m!7098444))

(assert (=> b!6277078 d!1970400))

(declare-fun bs!1568336 () Bool)

(declare-fun d!1970406 () Bool)

(assert (= bs!1568336 (and d!1970406 d!1970290)))

(declare-fun lambda!344150 () Int)

(assert (=> bs!1568336 (= lambda!344150 lambda!344109)))

(declare-fun bs!1568337 () Bool)

(assert (= bs!1568337 (and d!1970406 d!1970358)))

(assert (=> bs!1568337 (= lambda!344150 lambda!344136)))

(declare-fun e!3817945 () Bool)

(assert (=> d!1970406 e!3817945))

(declare-fun res!2589248 () Bool)

(assert (=> d!1970406 (=> (not res!2589248) (not e!3817945))))

(declare-fun lt!2353566 () Regex!16197)

(assert (=> d!1970406 (= res!2589248 (validRegex!7933 lt!2353566))))

(declare-fun e!3817946 () Regex!16197)

(assert (=> d!1970406 (= lt!2353566 e!3817946)))

(declare-fun c!1138226 () Bool)

(declare-fun e!3817947 () Bool)

(assert (=> d!1970406 (= c!1138226 e!3817947)))

(declare-fun res!2589249 () Bool)

(assert (=> d!1970406 (=> (not res!2589249) (not e!3817947))))

(assert (=> d!1970406 (= res!2589249 ((_ is Cons!64766) (unfocusZipperList!1618 zl!343)))))

(assert (=> d!1970406 (forall!15330 (unfocusZipperList!1618 zl!343) lambda!344150)))

(assert (=> d!1970406 (= (generalisedUnion!2041 (unfocusZipperList!1618 zl!343)) lt!2353566)))

(declare-fun b!6277847 () Bool)

(declare-fun e!3817948 () Bool)

(declare-fun isEmptyLang!1610 (Regex!16197) Bool)

(assert (=> b!6277847 (= e!3817948 (isEmptyLang!1610 lt!2353566))))

(declare-fun b!6277848 () Bool)

(declare-fun e!3817944 () Regex!16197)

(assert (=> b!6277848 (= e!3817944 (Union!16197 (h!71214 (unfocusZipperList!1618 zl!343)) (generalisedUnion!2041 (t!378450 (unfocusZipperList!1618 zl!343)))))))

(declare-fun b!6277849 () Bool)

(declare-fun e!3817943 () Bool)

(declare-fun isUnion!1040 (Regex!16197) Bool)

(assert (=> b!6277849 (= e!3817943 (isUnion!1040 lt!2353566))))

(declare-fun b!6277850 () Bool)

(assert (=> b!6277850 (= e!3817945 e!3817948)))

(declare-fun c!1138227 () Bool)

(assert (=> b!6277850 (= c!1138227 (isEmpty!36806 (unfocusZipperList!1618 zl!343)))))

(declare-fun b!6277851 () Bool)

(assert (=> b!6277851 (= e!3817946 e!3817944)))

(declare-fun c!1138225 () Bool)

(assert (=> b!6277851 (= c!1138225 ((_ is Cons!64766) (unfocusZipperList!1618 zl!343)))))

(declare-fun b!6277852 () Bool)

(assert (=> b!6277852 (= e!3817946 (h!71214 (unfocusZipperList!1618 zl!343)))))

(declare-fun b!6277853 () Bool)

(assert (=> b!6277853 (= e!3817947 (isEmpty!36806 (t!378450 (unfocusZipperList!1618 zl!343))))))

(declare-fun b!6277854 () Bool)

(assert (=> b!6277854 (= e!3817943 (= lt!2353566 (head!12895 (unfocusZipperList!1618 zl!343))))))

(declare-fun b!6277855 () Bool)

(assert (=> b!6277855 (= e!3817948 e!3817943)))

(declare-fun c!1138228 () Bool)

(assert (=> b!6277855 (= c!1138228 (isEmpty!36806 (tail!11980 (unfocusZipperList!1618 zl!343))))))

(declare-fun b!6277856 () Bool)

(assert (=> b!6277856 (= e!3817944 EmptyLang!16197)))

(assert (= (and d!1970406 res!2589249) b!6277853))

(assert (= (and d!1970406 c!1138226) b!6277852))

(assert (= (and d!1970406 (not c!1138226)) b!6277851))

(assert (= (and b!6277851 c!1138225) b!6277848))

(assert (= (and b!6277851 (not c!1138225)) b!6277856))

(assert (= (and d!1970406 res!2589248) b!6277850))

(assert (= (and b!6277850 c!1138227) b!6277847))

(assert (= (and b!6277850 (not c!1138227)) b!6277855))

(assert (= (and b!6277855 c!1138228) b!6277854))

(assert (= (and b!6277855 (not c!1138228)) b!6277849))

(declare-fun m!7099104 () Bool)

(assert (=> b!6277853 m!7099104))

(assert (=> b!6277855 m!7098442))

(declare-fun m!7099106 () Bool)

(assert (=> b!6277855 m!7099106))

(assert (=> b!6277855 m!7099106))

(declare-fun m!7099108 () Bool)

(assert (=> b!6277855 m!7099108))

(declare-fun m!7099110 () Bool)

(assert (=> b!6277849 m!7099110))

(declare-fun m!7099112 () Bool)

(assert (=> b!6277848 m!7099112))

(declare-fun m!7099114 () Bool)

(assert (=> b!6277847 m!7099114))

(declare-fun m!7099116 () Bool)

(assert (=> d!1970406 m!7099116))

(assert (=> d!1970406 m!7098442))

(declare-fun m!7099118 () Bool)

(assert (=> d!1970406 m!7099118))

(assert (=> b!6277854 m!7098442))

(declare-fun m!7099120 () Bool)

(assert (=> b!6277854 m!7099120))

(assert (=> b!6277850 m!7098442))

(declare-fun m!7099122 () Bool)

(assert (=> b!6277850 m!7099122))

(assert (=> b!6277099 d!1970406))

(declare-fun bs!1568344 () Bool)

(declare-fun d!1970416 () Bool)

(assert (= bs!1568344 (and d!1970416 d!1970290)))

(declare-fun lambda!344153 () Int)

(assert (=> bs!1568344 (= lambda!344153 lambda!344109)))

(declare-fun bs!1568346 () Bool)

(assert (= bs!1568346 (and d!1970416 d!1970358)))

(assert (=> bs!1568346 (= lambda!344153 lambda!344136)))

(declare-fun bs!1568347 () Bool)

(assert (= bs!1568347 (and d!1970416 d!1970406)))

(assert (=> bs!1568347 (= lambda!344153 lambda!344150)))

(declare-fun lt!2353572 () List!64890)

(assert (=> d!1970416 (forall!15330 lt!2353572 lambda!344153)))

(declare-fun e!3817961 () List!64890)

(assert (=> d!1970416 (= lt!2353572 e!3817961)))

(declare-fun c!1138236 () Bool)

(assert (=> d!1970416 (= c!1138236 ((_ is Cons!64768) zl!343))))

(assert (=> d!1970416 (= (unfocusZipperList!1618 zl!343) lt!2353572)))

(declare-fun b!6277880 () Bool)

(assert (=> b!6277880 (= e!3817961 (Cons!64766 (generalisedConcat!1794 (exprs!6081 (h!71216 zl!343))) (unfocusZipperList!1618 (t!378452 zl!343))))))

(declare-fun b!6277881 () Bool)

(assert (=> b!6277881 (= e!3817961 Nil!64766)))

(assert (= (and d!1970416 c!1138236) b!6277880))

(assert (= (and d!1970416 (not c!1138236)) b!6277881))

(declare-fun m!7099162 () Bool)

(assert (=> d!1970416 m!7099162))

(assert (=> b!6277880 m!7098402))

(declare-fun m!7099164 () Bool)

(assert (=> b!6277880 m!7099164))

(assert (=> b!6277099 d!1970416))

(declare-fun d!1970436 () Bool)

(assert (=> d!1970436 (= (flatMap!1702 lt!2353418 lambda!344084) (dynLambda!25623 lambda!344084 lt!2353425))))

(declare-fun lt!2353574 () Unit!158119)

(assert (=> d!1970436 (= lt!2353574 (choose!46592 lt!2353418 lt!2353425 lambda!344084))))

(assert (=> d!1970436 (= lt!2353418 (store ((as const (Array Context!11162 Bool)) false) lt!2353425 true))))

(assert (=> d!1970436 (= (lemmaFlatMapOnSingletonSet!1228 lt!2353418 lt!2353425 lambda!344084) lt!2353574)))

(declare-fun b_lambda!239037 () Bool)

(assert (=> (not b_lambda!239037) (not d!1970436)))

(declare-fun bs!1568348 () Bool)

(assert (= bs!1568348 d!1970436))

(assert (=> bs!1568348 m!7098456))

(declare-fun m!7099166 () Bool)

(assert (=> bs!1568348 m!7099166))

(declare-fun m!7099168 () Bool)

(assert (=> bs!1568348 m!7099168))

(assert (=> bs!1568348 m!7098386))

(assert (=> b!6277079 d!1970436))

(declare-fun d!1970438 () Bool)

(assert (=> d!1970438 (= (flatMap!1702 lt!2353418 lambda!344084) (choose!46594 lt!2353418 lambda!344084))))

(declare-fun bs!1568349 () Bool)

(assert (= bs!1568349 d!1970438))

(declare-fun m!7099170 () Bool)

(assert (=> bs!1568349 m!7099170))

(assert (=> b!6277079 d!1970438))

(declare-fun d!1970440 () Bool)

(declare-fun c!1138237 () Bool)

(assert (=> d!1970440 (= c!1138237 (isEmpty!36808 (t!378451 s!2326)))))

(declare-fun e!3817965 () Bool)

(assert (=> d!1970440 (= (matchZipper!2209 lt!2353430 (t!378451 s!2326)) e!3817965)))

(declare-fun b!6277889 () Bool)

(assert (=> b!6277889 (= e!3817965 (nullableZipper!1967 lt!2353430))))

(declare-fun b!6277890 () Bool)

(assert (=> b!6277890 (= e!3817965 (matchZipper!2209 (derivationStepZipper!2163 lt!2353430 (head!12893 (t!378451 s!2326))) (tail!11979 (t!378451 s!2326))))))

(assert (= (and d!1970440 c!1138237) b!6277889))

(assert (= (and d!1970440 (not c!1138237)) b!6277890))

(assert (=> d!1970440 m!7098554))

(declare-fun m!7099172 () Bool)

(assert (=> b!6277889 m!7099172))

(assert (=> b!6277890 m!7098558))

(assert (=> b!6277890 m!7098558))

(declare-fun m!7099174 () Bool)

(assert (=> b!6277890 m!7099174))

(assert (=> b!6277890 m!7098562))

(assert (=> b!6277890 m!7099174))

(assert (=> b!6277890 m!7098562))

(declare-fun m!7099176 () Bool)

(assert (=> b!6277890 m!7099176))

(assert (=> b!6277079 d!1970440))

(declare-fun d!1970442 () Bool)

(declare-fun c!1138238 () Bool)

(assert (=> d!1970442 (= c!1138238 (isEmpty!36808 (t!378451 s!2326)))))

(declare-fun e!3817968 () Bool)

(assert (=> d!1970442 (= (matchZipper!2209 lt!2353416 (t!378451 s!2326)) e!3817968)))

(declare-fun b!6277893 () Bool)

(assert (=> b!6277893 (= e!3817968 (nullableZipper!1967 lt!2353416))))

(declare-fun b!6277894 () Bool)

(assert (=> b!6277894 (= e!3817968 (matchZipper!2209 (derivationStepZipper!2163 lt!2353416 (head!12893 (t!378451 s!2326))) (tail!11979 (t!378451 s!2326))))))

(assert (= (and d!1970442 c!1138238) b!6277893))

(assert (= (and d!1970442 (not c!1138238)) b!6277894))

(assert (=> d!1970442 m!7098554))

(declare-fun m!7099178 () Bool)

(assert (=> b!6277893 m!7099178))

(assert (=> b!6277894 m!7098558))

(assert (=> b!6277894 m!7098558))

(declare-fun m!7099180 () Bool)

(assert (=> b!6277894 m!7099180))

(assert (=> b!6277894 m!7098562))

(assert (=> b!6277894 m!7099180))

(assert (=> b!6277894 m!7098562))

(declare-fun m!7099182 () Bool)

(assert (=> b!6277894 m!7099182))

(assert (=> b!6277079 d!1970442))

(declare-fun b!6277896 () Bool)

(declare-fun e!3817971 () (InoxSet Context!11162))

(declare-fun e!3817970 () (InoxSet Context!11162))

(assert (=> b!6277896 (= e!3817971 e!3817970)))

(declare-fun c!1138239 () Bool)

(assert (=> b!6277896 (= c!1138239 ((_ is Cons!64766) (exprs!6081 lt!2353425)))))

(declare-fun b!6277897 () Bool)

(declare-fun call!531243 () (InoxSet Context!11162))

(assert (=> b!6277897 (= e!3817970 call!531243)))

(declare-fun b!6277899 () Bool)

(declare-fun e!3817972 () Bool)

(assert (=> b!6277899 (= e!3817972 (nullable!6190 (h!71214 (exprs!6081 lt!2353425))))))

(declare-fun bm!531238 () Bool)

(assert (=> bm!531238 (= call!531243 (derivationStepZipperDown!1445 (h!71214 (exprs!6081 lt!2353425)) (Context!11163 (t!378450 (exprs!6081 lt!2353425))) (h!71215 s!2326)))))

(declare-fun b!6277900 () Bool)

(assert (=> b!6277900 (= e!3817970 ((as const (Array Context!11162 Bool)) false))))

(declare-fun d!1970444 () Bool)

(declare-fun c!1138240 () Bool)

(assert (=> d!1970444 (= c!1138240 e!3817972)))

(declare-fun res!2589259 () Bool)

(assert (=> d!1970444 (=> (not res!2589259) (not e!3817972))))

(assert (=> d!1970444 (= res!2589259 ((_ is Cons!64766) (exprs!6081 lt!2353425)))))

(assert (=> d!1970444 (= (derivationStepZipperUp!1371 lt!2353425 (h!71215 s!2326)) e!3817971)))

(declare-fun b!6277898 () Bool)

(assert (=> b!6277898 (= e!3817971 ((_ map or) call!531243 (derivationStepZipperUp!1371 (Context!11163 (t!378450 (exprs!6081 lt!2353425))) (h!71215 s!2326))))))

(assert (= (and d!1970444 res!2589259) b!6277899))

(assert (= (and d!1970444 c!1138240) b!6277898))

(assert (= (and d!1970444 (not c!1138240)) b!6277896))

(assert (= (and b!6277896 c!1138239) b!6277897))

(assert (= (and b!6277896 (not c!1138239)) b!6277900))

(assert (= (or b!6277898 b!6277897) bm!531238))

(declare-fun m!7099186 () Bool)

(assert (=> b!6277899 m!7099186))

(declare-fun m!7099188 () Bool)

(assert (=> bm!531238 m!7099188))

(declare-fun m!7099190 () Bool)

(assert (=> b!6277898 m!7099190))

(assert (=> b!6277079 d!1970444))

(declare-fun e!3817976 () Bool)

(declare-fun d!1970446 () Bool)

(assert (=> d!1970446 (= (matchZipper!2209 ((_ map or) lt!2353429 lt!2353422) (t!378451 s!2326)) e!3817976)))

(declare-fun res!2589260 () Bool)

(assert (=> d!1970446 (=> res!2589260 e!3817976)))

(assert (=> d!1970446 (= res!2589260 (matchZipper!2209 lt!2353429 (t!378451 s!2326)))))

(declare-fun lt!2353575 () Unit!158119)

(assert (=> d!1970446 (= lt!2353575 (choose!46583 lt!2353429 lt!2353422 (t!378451 s!2326)))))

(assert (=> d!1970446 (= (lemmaZipperConcatMatchesSameAsBothZippers!1028 lt!2353429 lt!2353422 (t!378451 s!2326)) lt!2353575)))

(declare-fun b!6277906 () Bool)

(assert (=> b!6277906 (= e!3817976 (matchZipper!2209 lt!2353422 (t!378451 s!2326)))))

(assert (= (and d!1970446 (not res!2589260)) b!6277906))

(declare-fun m!7099192 () Bool)

(assert (=> d!1970446 m!7099192))

(assert (=> d!1970446 m!7098438))

(declare-fun m!7099194 () Bool)

(assert (=> d!1970446 m!7099194))

(assert (=> b!6277906 m!7098502))

(assert (=> b!6277079 d!1970446))

(declare-fun b!6277917 () Bool)

(declare-fun c!1138243 () Bool)

(assert (=> b!6277917 (= c!1138243 ((_ is Star!16197) (regTwo!32906 (regOne!32906 r!7292))))))

(declare-fun e!3817983 () (InoxSet Context!11162))

(declare-fun e!3817984 () (InoxSet Context!11162))

(assert (=> b!6277917 (= e!3817983 e!3817984)))

(declare-fun call!531246 () (InoxSet Context!11162))

(declare-fun bm!531239 () Bool)

(declare-fun call!531245 () List!64890)

(declare-fun c!1138242 () Bool)

(declare-fun c!1138245 () Bool)

(declare-fun c!1138241 () Bool)

(assert (=> bm!531239 (= call!531246 (derivationStepZipperDown!1445 (ite c!1138242 (regOne!32907 (regTwo!32906 (regOne!32906 r!7292))) (ite c!1138245 (regTwo!32906 (regTwo!32906 (regOne!32906 r!7292))) (ite c!1138241 (regOne!32906 (regTwo!32906 (regOne!32906 r!7292))) (reg!16526 (regTwo!32906 (regOne!32906 r!7292)))))) (ite (or c!1138242 c!1138245) lt!2353406 (Context!11163 call!531245)) (h!71215 s!2326)))))

(declare-fun d!1970448 () Bool)

(declare-fun c!1138244 () Bool)

(assert (=> d!1970448 (= c!1138244 (and ((_ is ElementMatch!16197) (regTwo!32906 (regOne!32906 r!7292))) (= (c!1137976 (regTwo!32906 (regOne!32906 r!7292))) (h!71215 s!2326))))))

(declare-fun e!3817981 () (InoxSet Context!11162))

(assert (=> d!1970448 (= (derivationStepZipperDown!1445 (regTwo!32906 (regOne!32906 r!7292)) lt!2353406 (h!71215 s!2326)) e!3817981)))

(declare-fun b!6277918 () Bool)

(declare-fun e!3817980 () Bool)

(assert (=> b!6277918 (= c!1138245 e!3817980)))

(declare-fun res!2589261 () Bool)

(assert (=> b!6277918 (=> (not res!2589261) (not e!3817980))))

(assert (=> b!6277918 (= res!2589261 ((_ is Concat!25042) (regTwo!32906 (regOne!32906 r!7292))))))

(declare-fun e!3817982 () (InoxSet Context!11162))

(declare-fun e!3817979 () (InoxSet Context!11162))

(assert (=> b!6277918 (= e!3817982 e!3817979)))

(declare-fun b!6277919 () Bool)

(assert (=> b!6277919 (= e!3817979 e!3817983)))

(assert (=> b!6277919 (= c!1138241 ((_ is Concat!25042) (regTwo!32906 (regOne!32906 r!7292))))))

(declare-fun b!6277920 () Bool)

(assert (=> b!6277920 (= e!3817980 (nullable!6190 (regOne!32906 (regTwo!32906 (regOne!32906 r!7292)))))))

(declare-fun bm!531240 () Bool)

(declare-fun call!531244 () (InoxSet Context!11162))

(declare-fun call!531248 () (InoxSet Context!11162))

(assert (=> bm!531240 (= call!531244 call!531248)))

(declare-fun b!6277921 () Bool)

(declare-fun call!531247 () (InoxSet Context!11162))

(assert (=> b!6277921 (= e!3817979 ((_ map or) call!531247 call!531248))))

(declare-fun b!6277922 () Bool)

(assert (=> b!6277922 (= e!3817982 ((_ map or) call!531246 call!531247))))

(declare-fun b!6277923 () Bool)

(assert (=> b!6277923 (= e!3817984 ((as const (Array Context!11162 Bool)) false))))

(declare-fun call!531249 () List!64890)

(declare-fun bm!531241 () Bool)

(assert (=> bm!531241 (= call!531249 ($colon$colon!2062 (exprs!6081 lt!2353406) (ite (or c!1138245 c!1138241) (regTwo!32906 (regTwo!32906 (regOne!32906 r!7292))) (regTwo!32906 (regOne!32906 r!7292)))))))

(declare-fun b!6277924 () Bool)

(assert (=> b!6277924 (= e!3817984 call!531244)))

(declare-fun b!6277925 () Bool)

(assert (=> b!6277925 (= e!3817981 e!3817982)))

(assert (=> b!6277925 (= c!1138242 ((_ is Union!16197) (regTwo!32906 (regOne!32906 r!7292))))))

(declare-fun bm!531242 () Bool)

(assert (=> bm!531242 (= call!531248 call!531246)))

(declare-fun bm!531243 () Bool)

(assert (=> bm!531243 (= call!531247 (derivationStepZipperDown!1445 (ite c!1138242 (regTwo!32907 (regTwo!32906 (regOne!32906 r!7292))) (regOne!32906 (regTwo!32906 (regOne!32906 r!7292)))) (ite c!1138242 lt!2353406 (Context!11163 call!531249)) (h!71215 s!2326)))))

(declare-fun b!6277926 () Bool)

(assert (=> b!6277926 (= e!3817981 (store ((as const (Array Context!11162 Bool)) false) lt!2353406 true))))

(declare-fun bm!531244 () Bool)

(assert (=> bm!531244 (= call!531245 call!531249)))

(declare-fun b!6277927 () Bool)

(assert (=> b!6277927 (= e!3817983 call!531244)))

(assert (= (and d!1970448 c!1138244) b!6277926))

(assert (= (and d!1970448 (not c!1138244)) b!6277925))

(assert (= (and b!6277925 c!1138242) b!6277922))

(assert (= (and b!6277925 (not c!1138242)) b!6277918))

(assert (= (and b!6277918 res!2589261) b!6277920))

(assert (= (and b!6277918 c!1138245) b!6277921))

(assert (= (and b!6277918 (not c!1138245)) b!6277919))

(assert (= (and b!6277919 c!1138241) b!6277927))

(assert (= (and b!6277919 (not c!1138241)) b!6277917))

(assert (= (and b!6277917 c!1138243) b!6277924))

(assert (= (and b!6277917 (not c!1138243)) b!6277923))

(assert (= (or b!6277927 b!6277924) bm!531244))

(assert (= (or b!6277927 b!6277924) bm!531240))

(assert (= (or b!6277921 bm!531244) bm!531241))

(assert (= (or b!6277921 bm!531240) bm!531242))

(assert (= (or b!6277922 b!6277921) bm!531243))

(assert (= (or b!6277922 bm!531242) bm!531239))

(declare-fun m!7099196 () Bool)

(assert (=> bm!531241 m!7099196))

(declare-fun m!7099198 () Bool)

(assert (=> bm!531239 m!7099198))

(assert (=> b!6277926 m!7099046))

(declare-fun m!7099200 () Bool)

(assert (=> b!6277920 m!7099200))

(declare-fun m!7099202 () Bool)

(assert (=> bm!531243 m!7099202))

(assert (=> b!6277097 d!1970448))

(declare-fun b!6277944 () Bool)

(declare-fun c!1138248 () Bool)

(assert (=> b!6277944 (= c!1138248 ((_ is Star!16197) (regOne!32906 (regOne!32906 r!7292))))))

(declare-fun e!3817994 () (InoxSet Context!11162))

(declare-fun e!3817995 () (InoxSet Context!11162))

(assert (=> b!6277944 (= e!3817994 e!3817995)))

(declare-fun c!1138246 () Bool)

(declare-fun c!1138247 () Bool)

(declare-fun call!531251 () List!64890)

(declare-fun call!531252 () (InoxSet Context!11162))

(declare-fun c!1138250 () Bool)

(declare-fun bm!531245 () Bool)

(assert (=> bm!531245 (= call!531252 (derivationStepZipperDown!1445 (ite c!1138247 (regOne!32907 (regOne!32906 (regOne!32906 r!7292))) (ite c!1138250 (regTwo!32906 (regOne!32906 (regOne!32906 r!7292))) (ite c!1138246 (regOne!32906 (regOne!32906 (regOne!32906 r!7292))) (reg!16526 (regOne!32906 (regOne!32906 r!7292)))))) (ite (or c!1138247 c!1138250) lt!2353425 (Context!11163 call!531251)) (h!71215 s!2326)))))

(declare-fun d!1970450 () Bool)

(declare-fun c!1138249 () Bool)

(assert (=> d!1970450 (= c!1138249 (and ((_ is ElementMatch!16197) (regOne!32906 (regOne!32906 r!7292))) (= (c!1137976 (regOne!32906 (regOne!32906 r!7292))) (h!71215 s!2326))))))

(declare-fun e!3817992 () (InoxSet Context!11162))

(assert (=> d!1970450 (= (derivationStepZipperDown!1445 (regOne!32906 (regOne!32906 r!7292)) lt!2353425 (h!71215 s!2326)) e!3817992)))

(declare-fun b!6277945 () Bool)

(declare-fun e!3817991 () Bool)

(assert (=> b!6277945 (= c!1138250 e!3817991)))

(declare-fun res!2589262 () Bool)

(assert (=> b!6277945 (=> (not res!2589262) (not e!3817991))))

(assert (=> b!6277945 (= res!2589262 ((_ is Concat!25042) (regOne!32906 (regOne!32906 r!7292))))))

(declare-fun e!3817993 () (InoxSet Context!11162))

(declare-fun e!3817989 () (InoxSet Context!11162))

(assert (=> b!6277945 (= e!3817993 e!3817989)))

(declare-fun b!6277946 () Bool)

(assert (=> b!6277946 (= e!3817989 e!3817994)))

(assert (=> b!6277946 (= c!1138246 ((_ is Concat!25042) (regOne!32906 (regOne!32906 r!7292))))))

(declare-fun b!6277947 () Bool)

(assert (=> b!6277947 (= e!3817991 (nullable!6190 (regOne!32906 (regOne!32906 (regOne!32906 r!7292)))))))

(declare-fun bm!531246 () Bool)

(declare-fun call!531250 () (InoxSet Context!11162))

(declare-fun call!531254 () (InoxSet Context!11162))

(assert (=> bm!531246 (= call!531250 call!531254)))

(declare-fun b!6277948 () Bool)

(declare-fun call!531253 () (InoxSet Context!11162))

(assert (=> b!6277948 (= e!3817989 ((_ map or) call!531253 call!531254))))

(declare-fun b!6277949 () Bool)

(assert (=> b!6277949 (= e!3817993 ((_ map or) call!531252 call!531253))))

(declare-fun b!6277950 () Bool)

(assert (=> b!6277950 (= e!3817995 ((as const (Array Context!11162 Bool)) false))))

(declare-fun bm!531247 () Bool)

(declare-fun call!531255 () List!64890)

(assert (=> bm!531247 (= call!531255 ($colon$colon!2062 (exprs!6081 lt!2353425) (ite (or c!1138250 c!1138246) (regTwo!32906 (regOne!32906 (regOne!32906 r!7292))) (regOne!32906 (regOne!32906 r!7292)))))))

(declare-fun b!6277951 () Bool)

(assert (=> b!6277951 (= e!3817995 call!531250)))

(declare-fun b!6277954 () Bool)

(assert (=> b!6277954 (= e!3817992 e!3817993)))

(assert (=> b!6277954 (= c!1138247 ((_ is Union!16197) (regOne!32906 (regOne!32906 r!7292))))))

(declare-fun bm!531248 () Bool)

(assert (=> bm!531248 (= call!531254 call!531252)))

(declare-fun bm!531249 () Bool)

(assert (=> bm!531249 (= call!531253 (derivationStepZipperDown!1445 (ite c!1138247 (regTwo!32907 (regOne!32906 (regOne!32906 r!7292))) (regOne!32906 (regOne!32906 (regOne!32906 r!7292)))) (ite c!1138247 lt!2353425 (Context!11163 call!531255)) (h!71215 s!2326)))))

(declare-fun b!6277955 () Bool)

(assert (=> b!6277955 (= e!3817992 (store ((as const (Array Context!11162 Bool)) false) lt!2353425 true))))

(declare-fun bm!531250 () Bool)

(assert (=> bm!531250 (= call!531251 call!531255)))

(declare-fun b!6277956 () Bool)

(assert (=> b!6277956 (= e!3817994 call!531250)))

(assert (= (and d!1970450 c!1138249) b!6277955))

(assert (= (and d!1970450 (not c!1138249)) b!6277954))

(assert (= (and b!6277954 c!1138247) b!6277949))

(assert (= (and b!6277954 (not c!1138247)) b!6277945))

(assert (= (and b!6277945 res!2589262) b!6277947))

(assert (= (and b!6277945 c!1138250) b!6277948))

(assert (= (and b!6277945 (not c!1138250)) b!6277946))

(assert (= (and b!6277946 c!1138246) b!6277956))

(assert (= (and b!6277946 (not c!1138246)) b!6277944))

(assert (= (and b!6277944 c!1138248) b!6277951))

(assert (= (and b!6277944 (not c!1138248)) b!6277950))

(assert (= (or b!6277956 b!6277951) bm!531250))

(assert (= (or b!6277956 b!6277951) bm!531246))

(assert (= (or b!6277948 bm!531250) bm!531247))

(assert (= (or b!6277948 bm!531246) bm!531248))

(assert (= (or b!6277949 b!6277948) bm!531249))

(assert (= (or b!6277949 bm!531248) bm!531245))

(declare-fun m!7099204 () Bool)

(assert (=> bm!531247 m!7099204))

(declare-fun m!7099208 () Bool)

(assert (=> bm!531245 m!7099208))

(assert (=> b!6277955 m!7098386))

(declare-fun m!7099210 () Bool)

(assert (=> b!6277947 m!7099210))

(declare-fun m!7099212 () Bool)

(assert (=> bm!531249 m!7099212))

(assert (=> b!6277097 d!1970450))

(declare-fun d!1970452 () Bool)

(assert (=> d!1970452 (= (Exists!3267 lambda!344082) (choose!46587 lambda!344082))))

(declare-fun bs!1568350 () Bool)

(assert (= bs!1568350 d!1970452))

(declare-fun m!7099214 () Bool)

(assert (=> bs!1568350 m!7099214))

(assert (=> b!6277077 d!1970452))

(declare-fun bs!1568354 () Bool)

(declare-fun d!1970454 () Bool)

(assert (= bs!1568354 (and d!1970454 b!6277287)))

(declare-fun lambda!344154 () Int)

(assert (=> bs!1568354 (not (= lambda!344154 lambda!344099))))

(declare-fun bs!1568355 () Bool)

(assert (= bs!1568355 (and d!1970454 b!6277077)))

(assert (=> bs!1568355 (not (= lambda!344154 lambda!344083))))

(assert (=> bs!1568355 (= lambda!344154 lambda!344082)))

(declare-fun bs!1568356 () Bool)

(assert (= bs!1568356 (and d!1970454 d!1970306)))

(assert (=> bs!1568356 (= (and (= (regOne!32906 r!7292) (regOne!32906 (regOne!32906 r!7292))) (= (regTwo!32906 r!7292) lt!2353423)) (= lambda!344154 lambda!344112))))

(declare-fun bs!1568357 () Bool)

(assert (= bs!1568357 (and d!1970454 b!6277289)))

(assert (=> bs!1568357 (not (= lambda!344154 lambda!344100))))

(declare-fun bs!1568358 () Bool)

(assert (= bs!1568358 (and d!1970454 b!6277101)))

(assert (=> bs!1568358 (= (and (= (regOne!32906 r!7292) (regOne!32906 (regOne!32906 r!7292))) (= (regTwo!32906 r!7292) lt!2353423)) (= lambda!344154 lambda!344085))))

(assert (=> d!1970454 true))

(assert (=> d!1970454 true))

(assert (=> d!1970454 true))

(assert (=> d!1970454 (= (isDefined!12791 (findConcatSeparation!2502 (regOne!32906 r!7292) (regTwo!32906 r!7292) Nil!64767 s!2326 s!2326)) (Exists!3267 lambda!344154))))

(declare-fun lt!2353576 () Unit!158119)

(assert (=> d!1970454 (= lt!2353576 (choose!46588 (regOne!32906 r!7292) (regTwo!32906 r!7292) s!2326))))

(assert (=> d!1970454 (validRegex!7933 (regOne!32906 r!7292))))

(assert (=> d!1970454 (= (lemmaFindConcatSeparationEquivalentToExists!2266 (regOne!32906 r!7292) (regTwo!32906 r!7292) s!2326) lt!2353576)))

(declare-fun bs!1568359 () Bool)

(assert (= bs!1568359 d!1970454))

(declare-fun m!7099216 () Bool)

(assert (=> bs!1568359 m!7099216))

(assert (=> bs!1568359 m!7098504))

(declare-fun m!7099218 () Bool)

(assert (=> bs!1568359 m!7099218))

(assert (=> bs!1568359 m!7098504))

(assert (=> bs!1568359 m!7098506))

(declare-fun m!7099220 () Bool)

(assert (=> bs!1568359 m!7099220))

(assert (=> b!6277077 d!1970454))

(declare-fun b!6277968 () Bool)

(declare-fun e!3818003 () Option!16088)

(assert (=> b!6277968 (= e!3818003 (Some!16087 (tuple2!66353 Nil!64767 s!2326)))))

(declare-fun b!6277969 () Bool)

(declare-fun res!2589263 () Bool)

(declare-fun e!3818004 () Bool)

(assert (=> b!6277969 (=> (not res!2589263) (not e!3818004))))

(declare-fun lt!2353579 () Option!16088)

(assert (=> b!6277969 (= res!2589263 (matchR!8380 (regOne!32906 r!7292) (_1!36479 (get!22384 lt!2353579))))))

(declare-fun b!6277970 () Bool)

(declare-fun lt!2353577 () Unit!158119)

(declare-fun lt!2353578 () Unit!158119)

(assert (=> b!6277970 (= lt!2353577 lt!2353578)))

(assert (=> b!6277970 (= (++!14270 (++!14270 Nil!64767 (Cons!64767 (h!71215 s!2326) Nil!64767)) (t!378451 s!2326)) s!2326)))

(assert (=> b!6277970 (= lt!2353578 (lemmaMoveElementToOtherListKeepsConcatEq!2365 Nil!64767 (h!71215 s!2326) (t!378451 s!2326) s!2326))))

(declare-fun e!3818007 () Option!16088)

(assert (=> b!6277970 (= e!3818007 (findConcatSeparation!2502 (regOne!32906 r!7292) (regTwo!32906 r!7292) (++!14270 Nil!64767 (Cons!64767 (h!71215 s!2326) Nil!64767)) (t!378451 s!2326) s!2326))))

(declare-fun b!6277971 () Bool)

(declare-fun e!3818005 () Bool)

(assert (=> b!6277971 (= e!3818005 (matchR!8380 (regTwo!32906 r!7292) s!2326))))

(declare-fun d!1970462 () Bool)

(declare-fun e!3818006 () Bool)

(assert (=> d!1970462 e!3818006))

(declare-fun res!2589264 () Bool)

(assert (=> d!1970462 (=> res!2589264 e!3818006)))

(assert (=> d!1970462 (= res!2589264 e!3818004)))

(declare-fun res!2589266 () Bool)

(assert (=> d!1970462 (=> (not res!2589266) (not e!3818004))))

(assert (=> d!1970462 (= res!2589266 (isDefined!12791 lt!2353579))))

(assert (=> d!1970462 (= lt!2353579 e!3818003)))

(declare-fun c!1138251 () Bool)

(assert (=> d!1970462 (= c!1138251 e!3818005)))

(declare-fun res!2589267 () Bool)

(assert (=> d!1970462 (=> (not res!2589267) (not e!3818005))))

(assert (=> d!1970462 (= res!2589267 (matchR!8380 (regOne!32906 r!7292) Nil!64767))))

(assert (=> d!1970462 (validRegex!7933 (regOne!32906 r!7292))))

(assert (=> d!1970462 (= (findConcatSeparation!2502 (regOne!32906 r!7292) (regTwo!32906 r!7292) Nil!64767 s!2326 s!2326) lt!2353579)))

(declare-fun b!6277972 () Bool)

(declare-fun res!2589265 () Bool)

(assert (=> b!6277972 (=> (not res!2589265) (not e!3818004))))

(assert (=> b!6277972 (= res!2589265 (matchR!8380 (regTwo!32906 r!7292) (_2!36479 (get!22384 lt!2353579))))))

(declare-fun b!6277973 () Bool)

(assert (=> b!6277973 (= e!3818007 None!16087)))

(declare-fun b!6277974 () Bool)

(assert (=> b!6277974 (= e!3818004 (= (++!14270 (_1!36479 (get!22384 lt!2353579)) (_2!36479 (get!22384 lt!2353579))) s!2326))))

(declare-fun b!6277975 () Bool)

(assert (=> b!6277975 (= e!3818006 (not (isDefined!12791 lt!2353579)))))

(declare-fun b!6277976 () Bool)

(assert (=> b!6277976 (= e!3818003 e!3818007)))

(declare-fun c!1138252 () Bool)

(assert (=> b!6277976 (= c!1138252 ((_ is Nil!64767) s!2326))))

(assert (= (and d!1970462 res!2589267) b!6277971))

(assert (= (and d!1970462 c!1138251) b!6277968))

(assert (= (and d!1970462 (not c!1138251)) b!6277976))

(assert (= (and b!6277976 c!1138252) b!6277973))

(assert (= (and b!6277976 (not c!1138252)) b!6277970))

(assert (= (and d!1970462 res!2589266) b!6277969))

(assert (= (and b!6277969 res!2589263) b!6277972))

(assert (= (and b!6277972 res!2589265) b!6277974))

(assert (= (and d!1970462 (not res!2589264)) b!6277975))

(declare-fun m!7099222 () Bool)

(assert (=> b!6277969 m!7099222))

(declare-fun m!7099224 () Bool)

(assert (=> b!6277969 m!7099224))

(declare-fun m!7099226 () Bool)

(assert (=> b!6277975 m!7099226))

(assert (=> d!1970462 m!7099226))

(declare-fun m!7099228 () Bool)

(assert (=> d!1970462 m!7099228))

(assert (=> d!1970462 m!7099216))

(declare-fun m!7099230 () Bool)

(assert (=> b!6277971 m!7099230))

(assert (=> b!6277974 m!7099222))

(declare-fun m!7099232 () Bool)

(assert (=> b!6277974 m!7099232))

(assert (=> b!6277970 m!7098926))

(assert (=> b!6277970 m!7098926))

(assert (=> b!6277970 m!7098928))

(assert (=> b!6277970 m!7098930))

(assert (=> b!6277970 m!7098926))

(declare-fun m!7099234 () Bool)

(assert (=> b!6277970 m!7099234))

(assert (=> b!6277972 m!7099222))

(declare-fun m!7099236 () Bool)

(assert (=> b!6277972 m!7099236))

(assert (=> b!6277077 d!1970462))

(declare-fun d!1970464 () Bool)

(assert (=> d!1970464 (= (Exists!3267 lambda!344083) (choose!46587 lambda!344083))))

(declare-fun bs!1568360 () Bool)

(assert (= bs!1568360 d!1970464))

(declare-fun m!7099238 () Bool)

(assert (=> bs!1568360 m!7099238))

(assert (=> b!6277077 d!1970464))

(declare-fun bs!1568361 () Bool)

(declare-fun d!1970466 () Bool)

(assert (= bs!1568361 (and d!1970466 b!6277287)))

(declare-fun lambda!344159 () Int)

(assert (=> bs!1568361 (not (= lambda!344159 lambda!344099))))

(declare-fun bs!1568362 () Bool)

(assert (= bs!1568362 (and d!1970466 b!6277077)))

(assert (=> bs!1568362 (not (= lambda!344159 lambda!344083))))

(declare-fun bs!1568363 () Bool)

(assert (= bs!1568363 (and d!1970466 d!1970454)))

(assert (=> bs!1568363 (= lambda!344159 lambda!344154)))

(assert (=> bs!1568362 (= lambda!344159 lambda!344082)))

(declare-fun bs!1568364 () Bool)

(assert (= bs!1568364 (and d!1970466 d!1970306)))

(assert (=> bs!1568364 (= (and (= (regOne!32906 r!7292) (regOne!32906 (regOne!32906 r!7292))) (= (regTwo!32906 r!7292) lt!2353423)) (= lambda!344159 lambda!344112))))

(declare-fun bs!1568365 () Bool)

(assert (= bs!1568365 (and d!1970466 b!6277289)))

(assert (=> bs!1568365 (not (= lambda!344159 lambda!344100))))

(declare-fun bs!1568366 () Bool)

(assert (= bs!1568366 (and d!1970466 b!6277101)))

(assert (=> bs!1568366 (= (and (= (regOne!32906 r!7292) (regOne!32906 (regOne!32906 r!7292))) (= (regTwo!32906 r!7292) lt!2353423)) (= lambda!344159 lambda!344085))))

(assert (=> d!1970466 true))

(assert (=> d!1970466 true))

(assert (=> d!1970466 true))

(declare-fun lambda!344160 () Int)

(assert (=> bs!1568361 (not (= lambda!344160 lambda!344099))))

(assert (=> bs!1568362 (= lambda!344160 lambda!344083)))

(assert (=> bs!1568363 (not (= lambda!344160 lambda!344154))))

(declare-fun bs!1568367 () Bool)

(assert (= bs!1568367 d!1970466))

(assert (=> bs!1568367 (not (= lambda!344160 lambda!344159))))

(assert (=> bs!1568362 (not (= lambda!344160 lambda!344082))))

(assert (=> bs!1568364 (not (= lambda!344160 lambda!344112))))

(assert (=> bs!1568365 (= (and (= (regOne!32906 r!7292) (regOne!32906 lt!2353443)) (= (regTwo!32906 r!7292) (regTwo!32906 lt!2353443))) (= lambda!344160 lambda!344100))))

(assert (=> bs!1568366 (not (= lambda!344160 lambda!344085))))

(assert (=> d!1970466 true))

(assert (=> d!1970466 true))

(assert (=> d!1970466 true))

(assert (=> d!1970466 (= (Exists!3267 lambda!344159) (Exists!3267 lambda!344160))))

(declare-fun lt!2353582 () Unit!158119)

(declare-fun choose!46596 (Regex!16197 Regex!16197 List!64891) Unit!158119)

(assert (=> d!1970466 (= lt!2353582 (choose!46596 (regOne!32906 r!7292) (regTwo!32906 r!7292) s!2326))))

(assert (=> d!1970466 (validRegex!7933 (regOne!32906 r!7292))))

(assert (=> d!1970466 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1804 (regOne!32906 r!7292) (regTwo!32906 r!7292) s!2326) lt!2353582)))

(declare-fun m!7099240 () Bool)

(assert (=> bs!1568367 m!7099240))

(declare-fun m!7099242 () Bool)

(assert (=> bs!1568367 m!7099242))

(declare-fun m!7099244 () Bool)

(assert (=> bs!1568367 m!7099244))

(assert (=> bs!1568367 m!7099216))

(assert (=> b!6277077 d!1970466))

(declare-fun d!1970468 () Bool)

(assert (=> d!1970468 (= (isDefined!12791 (findConcatSeparation!2502 (regOne!32906 r!7292) (regTwo!32906 r!7292) Nil!64767 s!2326 s!2326)) (not (isEmpty!36809 (findConcatSeparation!2502 (regOne!32906 r!7292) (regTwo!32906 r!7292) Nil!64767 s!2326 s!2326))))))

(declare-fun bs!1568368 () Bool)

(assert (= bs!1568368 d!1970468))

(assert (=> bs!1568368 m!7098504))

(declare-fun m!7099246 () Bool)

(assert (=> bs!1568368 m!7099246))

(assert (=> b!6277077 d!1970468))

(declare-fun bs!1568369 () Bool)

(declare-fun d!1970470 () Bool)

(assert (= bs!1568369 (and d!1970470 d!1970290)))

(declare-fun lambda!344161 () Int)

(assert (=> bs!1568369 (= lambda!344161 lambda!344109)))

(declare-fun bs!1568370 () Bool)

(assert (= bs!1568370 (and d!1970470 d!1970358)))

(assert (=> bs!1568370 (= lambda!344161 lambda!344136)))

(declare-fun bs!1568371 () Bool)

(assert (= bs!1568371 (and d!1970470 d!1970406)))

(assert (=> bs!1568371 (= lambda!344161 lambda!344150)))

(declare-fun bs!1568372 () Bool)

(assert (= bs!1568372 (and d!1970470 d!1970416)))

(assert (=> bs!1568372 (= lambda!344161 lambda!344153)))

(declare-fun e!3818017 () Bool)

(assert (=> d!1970470 e!3818017))

(declare-fun res!2589276 () Bool)

(assert (=> d!1970470 (=> (not res!2589276) (not e!3818017))))

(declare-fun lt!2353583 () Regex!16197)

(assert (=> d!1970470 (= res!2589276 (validRegex!7933 lt!2353583))))

(declare-fun e!3818012 () Regex!16197)

(assert (=> d!1970470 (= lt!2353583 e!3818012)))

(declare-fun c!1138253 () Bool)

(declare-fun e!3818016 () Bool)

(assert (=> d!1970470 (= c!1138253 e!3818016)))

(declare-fun res!2589277 () Bool)

(assert (=> d!1970470 (=> (not res!2589277) (not e!3818016))))

(assert (=> d!1970470 (= res!2589277 ((_ is Cons!64766) (exprs!6081 (h!71216 zl!343))))))

(assert (=> d!1970470 (forall!15330 (exprs!6081 (h!71216 zl!343)) lambda!344161)))

(assert (=> d!1970470 (= (generalisedConcat!1794 (exprs!6081 (h!71216 zl!343))) lt!2353583)))

(declare-fun b!6277985 () Bool)

(assert (=> b!6277985 (= e!3818016 (isEmpty!36806 (t!378450 (exprs!6081 (h!71216 zl!343)))))))

(declare-fun b!6277986 () Bool)

(declare-fun e!3818015 () Bool)

(declare-fun e!3818013 () Bool)

(assert (=> b!6277986 (= e!3818015 e!3818013)))

(declare-fun c!1138254 () Bool)

(assert (=> b!6277986 (= c!1138254 (isEmpty!36806 (tail!11980 (exprs!6081 (h!71216 zl!343)))))))

(declare-fun b!6277987 () Bool)

(assert (=> b!6277987 (= e!3818017 e!3818015)))

(declare-fun c!1138255 () Bool)

(assert (=> b!6277987 (= c!1138255 (isEmpty!36806 (exprs!6081 (h!71216 zl!343))))))

(declare-fun b!6277988 () Bool)

(assert (=> b!6277988 (= e!3818012 (h!71214 (exprs!6081 (h!71216 zl!343))))))

(declare-fun b!6277989 () Bool)

(declare-fun e!3818014 () Regex!16197)

(assert (=> b!6277989 (= e!3818014 (Concat!25042 (h!71214 (exprs!6081 (h!71216 zl!343))) (generalisedConcat!1794 (t!378450 (exprs!6081 (h!71216 zl!343))))))))

(declare-fun b!6277990 () Bool)

(assert (=> b!6277990 (= e!3818013 (isConcat!1126 lt!2353583))))

(declare-fun b!6277991 () Bool)

(assert (=> b!6277991 (= e!3818012 e!3818014)))

(declare-fun c!1138256 () Bool)

(assert (=> b!6277991 (= c!1138256 ((_ is Cons!64766) (exprs!6081 (h!71216 zl!343))))))

(declare-fun b!6277992 () Bool)

(assert (=> b!6277992 (= e!3818014 EmptyExpr!16197)))

(declare-fun b!6277993 () Bool)

(assert (=> b!6277993 (= e!3818015 (isEmptyExpr!1603 lt!2353583))))

(declare-fun b!6277994 () Bool)

(assert (=> b!6277994 (= e!3818013 (= lt!2353583 (head!12895 (exprs!6081 (h!71216 zl!343)))))))

(assert (= (and d!1970470 res!2589277) b!6277985))

(assert (= (and d!1970470 c!1138253) b!6277988))

(assert (= (and d!1970470 (not c!1138253)) b!6277991))

(assert (= (and b!6277991 c!1138256) b!6277989))

(assert (= (and b!6277991 (not c!1138256)) b!6277992))

(assert (= (and d!1970470 res!2589276) b!6277987))

(assert (= (and b!6277987 c!1138255) b!6277993))

(assert (= (and b!6277987 (not c!1138255)) b!6277986))

(assert (= (and b!6277986 c!1138254) b!6277994))

(assert (= (and b!6277986 (not c!1138254)) b!6277990))

(declare-fun m!7099248 () Bool)

(assert (=> b!6277990 m!7099248))

(declare-fun m!7099250 () Bool)

(assert (=> b!6277993 m!7099250))

(declare-fun m!7099252 () Bool)

(assert (=> b!6277989 m!7099252))

(assert (=> b!6277985 m!7098500))

(declare-fun m!7099254 () Bool)

(assert (=> b!6277987 m!7099254))

(declare-fun m!7099256 () Bool)

(assert (=> b!6277994 m!7099256))

(declare-fun m!7099258 () Bool)

(assert (=> b!6277986 m!7099258))

(assert (=> b!6277986 m!7099258))

(declare-fun m!7099260 () Bool)

(assert (=> b!6277986 m!7099260))

(declare-fun m!7099262 () Bool)

(assert (=> d!1970470 m!7099262))

(declare-fun m!7099264 () Bool)

(assert (=> d!1970470 m!7099264))

(assert (=> b!6277098 d!1970470))

(declare-fun b!6278001 () Bool)

(assert (=> b!6278001 true))

(declare-fun bs!1568373 () Bool)

(declare-fun b!6278003 () Bool)

(assert (= bs!1568373 (and b!6278003 b!6278001)))

(declare-fun lt!2353594 () Int)

(declare-fun lambda!344169 () Int)

(declare-fun lt!2353595 () Int)

(declare-fun lambda!344170 () Int)

(assert (=> bs!1568373 (= (= lt!2353595 lt!2353594) (= lambda!344170 lambda!344169))))

(assert (=> b!6278003 true))

(declare-fun d!1970472 () Bool)

(declare-fun e!3818023 () Bool)

(assert (=> d!1970472 e!3818023))

(declare-fun res!2589280 () Bool)

(assert (=> d!1970472 (=> (not res!2589280) (not e!3818023))))

(assert (=> d!1970472 (= res!2589280 (>= lt!2353595 0))))

(declare-fun e!3818022 () Int)

(assert (=> d!1970472 (= lt!2353595 e!3818022)))

(declare-fun c!1138265 () Bool)

(assert (=> d!1970472 (= c!1138265 ((_ is Cons!64768) lt!2353426))))

(assert (=> d!1970472 (= (zipperDepth!322 lt!2353426) lt!2353595)))

(assert (=> b!6278001 (= e!3818022 lt!2353594)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!214 (Context!11162) Int)

(assert (=> b!6278001 (= lt!2353594 (maxBigInt!0 (contextDepth!214 (h!71216 lt!2353426)) (zipperDepth!322 (t!378452 lt!2353426))))))

(declare-fun lt!2353593 () Unit!158119)

(declare-fun lambda!344168 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!198 (List!64892 Int Int Int) Unit!158119)

(assert (=> b!6278001 (= lt!2353593 (lemmaForallContextDepthBiggerThanTransitive!198 (t!378452 lt!2353426) lt!2353594 (zipperDepth!322 (t!378452 lt!2353426)) lambda!344168))))

(declare-fun forall!15332 (List!64892 Int) Bool)

(assert (=> b!6278001 (forall!15332 (t!378452 lt!2353426) lambda!344169)))

(declare-fun lt!2353592 () Unit!158119)

(assert (=> b!6278001 (= lt!2353592 lt!2353593)))

(declare-fun b!6278002 () Bool)

(assert (=> b!6278002 (= e!3818022 0)))

(assert (=> b!6278003 (= e!3818023 (forall!15332 lt!2353426 lambda!344170))))

(assert (= (and d!1970472 c!1138265) b!6278001))

(assert (= (and d!1970472 (not c!1138265)) b!6278002))

(assert (= (and d!1970472 res!2589280) b!6278003))

(declare-fun m!7099266 () Bool)

(assert (=> b!6278001 m!7099266))

(declare-fun m!7099268 () Bool)

(assert (=> b!6278001 m!7099268))

(declare-fun m!7099270 () Bool)

(assert (=> b!6278001 m!7099270))

(assert (=> b!6278001 m!7099270))

(assert (=> b!6278001 m!7099268))

(declare-fun m!7099272 () Bool)

(assert (=> b!6278001 m!7099272))

(assert (=> b!6278001 m!7099268))

(declare-fun m!7099274 () Bool)

(assert (=> b!6278001 m!7099274))

(declare-fun m!7099276 () Bool)

(assert (=> b!6278003 m!7099276))

(assert (=> b!6277076 d!1970472))

(declare-fun bs!1568374 () Bool)

(declare-fun b!6278006 () Bool)

(assert (= bs!1568374 (and b!6278006 b!6278001)))

(declare-fun lambda!344171 () Int)

(assert (=> bs!1568374 (= lambda!344171 lambda!344168)))

(declare-fun lambda!344172 () Int)

(declare-fun lt!2353598 () Int)

(assert (=> bs!1568374 (= (= lt!2353598 lt!2353594) (= lambda!344172 lambda!344169))))

(declare-fun bs!1568375 () Bool)

(assert (= bs!1568375 (and b!6278006 b!6278003)))

(assert (=> bs!1568375 (= (= lt!2353598 lt!2353595) (= lambda!344172 lambda!344170))))

(assert (=> b!6278006 true))

(declare-fun bs!1568376 () Bool)

(declare-fun b!6278008 () Bool)

(assert (= bs!1568376 (and b!6278008 b!6278001)))

(declare-fun lt!2353599 () Int)

(declare-fun lambda!344173 () Int)

(assert (=> bs!1568376 (= (= lt!2353599 lt!2353594) (= lambda!344173 lambda!344169))))

(declare-fun bs!1568377 () Bool)

(assert (= bs!1568377 (and b!6278008 b!6278003)))

(assert (=> bs!1568377 (= (= lt!2353599 lt!2353595) (= lambda!344173 lambda!344170))))

(declare-fun bs!1568378 () Bool)

(assert (= bs!1568378 (and b!6278008 b!6278006)))

(assert (=> bs!1568378 (= (= lt!2353599 lt!2353598) (= lambda!344173 lambda!344172))))

(assert (=> b!6278008 true))

(declare-fun d!1970474 () Bool)

(declare-fun e!3818025 () Bool)

(assert (=> d!1970474 e!3818025))

(declare-fun res!2589281 () Bool)

(assert (=> d!1970474 (=> (not res!2589281) (not e!3818025))))

(assert (=> d!1970474 (= res!2589281 (>= lt!2353599 0))))

(declare-fun e!3818024 () Int)

(assert (=> d!1970474 (= lt!2353599 e!3818024)))

(declare-fun c!1138266 () Bool)

(assert (=> d!1970474 (= c!1138266 ((_ is Cons!64768) zl!343))))

(assert (=> d!1970474 (= (zipperDepth!322 zl!343) lt!2353599)))

(assert (=> b!6278006 (= e!3818024 lt!2353598)))

(assert (=> b!6278006 (= lt!2353598 (maxBigInt!0 (contextDepth!214 (h!71216 zl!343)) (zipperDepth!322 (t!378452 zl!343))))))

(declare-fun lt!2353597 () Unit!158119)

(assert (=> b!6278006 (= lt!2353597 (lemmaForallContextDepthBiggerThanTransitive!198 (t!378452 zl!343) lt!2353598 (zipperDepth!322 (t!378452 zl!343)) lambda!344171))))

(assert (=> b!6278006 (forall!15332 (t!378452 zl!343) lambda!344172)))

(declare-fun lt!2353596 () Unit!158119)

(assert (=> b!6278006 (= lt!2353596 lt!2353597)))

(declare-fun b!6278007 () Bool)

(assert (=> b!6278007 (= e!3818024 0)))

(assert (=> b!6278008 (= e!3818025 (forall!15332 zl!343 lambda!344173))))

(assert (= (and d!1970474 c!1138266) b!6278006))

(assert (= (and d!1970474 (not c!1138266)) b!6278007))

(assert (= (and d!1970474 res!2589281) b!6278008))

(declare-fun m!7099278 () Bool)

(assert (=> b!6278006 m!7099278))

(declare-fun m!7099280 () Bool)

(assert (=> b!6278006 m!7099280))

(declare-fun m!7099282 () Bool)

(assert (=> b!6278006 m!7099282))

(assert (=> b!6278006 m!7099282))

(assert (=> b!6278006 m!7099280))

(declare-fun m!7099284 () Bool)

(assert (=> b!6278006 m!7099284))

(assert (=> b!6278006 m!7099280))

(declare-fun m!7099286 () Bool)

(assert (=> b!6278006 m!7099286))

(declare-fun m!7099288 () Bool)

(assert (=> b!6278008 m!7099288))

(assert (=> b!6277076 d!1970474))

(declare-fun d!1970476 () Bool)

(assert (=> d!1970476 (= (flatMap!1702 lt!2353440 lambda!344084) (choose!46594 lt!2353440 lambda!344084))))

(declare-fun bs!1568379 () Bool)

(assert (= bs!1568379 d!1970476))

(declare-fun m!7099290 () Bool)

(assert (=> bs!1568379 m!7099290))

(assert (=> b!6277074 d!1970476))

(declare-fun d!1970478 () Bool)

(assert (=> d!1970478 (= (flatMap!1702 lt!2353440 lambda!344084) (dynLambda!25623 lambda!344084 lt!2353414))))

(declare-fun lt!2353600 () Unit!158119)

(assert (=> d!1970478 (= lt!2353600 (choose!46592 lt!2353440 lt!2353414 lambda!344084))))

(assert (=> d!1970478 (= lt!2353440 (store ((as const (Array Context!11162 Bool)) false) lt!2353414 true))))

(assert (=> d!1970478 (= (lemmaFlatMapOnSingletonSet!1228 lt!2353440 lt!2353414 lambda!344084) lt!2353600)))

(declare-fun b_lambda!239045 () Bool)

(assert (=> (not b_lambda!239045) (not d!1970478)))

(declare-fun bs!1568380 () Bool)

(assert (= bs!1568380 d!1970478))

(assert (=> bs!1568380 m!7098394))

(declare-fun m!7099292 () Bool)

(assert (=> bs!1568380 m!7099292))

(declare-fun m!7099294 () Bool)

(assert (=> bs!1568380 m!7099294))

(assert (=> bs!1568380 m!7098392))

(assert (=> b!6277074 d!1970478))

(declare-fun b!6278009 () Bool)

(declare-fun e!3818027 () (InoxSet Context!11162))

(declare-fun e!3818026 () (InoxSet Context!11162))

(assert (=> b!6278009 (= e!3818027 e!3818026)))

(declare-fun c!1138267 () Bool)

(assert (=> b!6278009 (= c!1138267 ((_ is Cons!64766) (exprs!6081 lt!2353414)))))

(declare-fun b!6278010 () Bool)

(declare-fun call!531256 () (InoxSet Context!11162))

(assert (=> b!6278010 (= e!3818026 call!531256)))

(declare-fun b!6278012 () Bool)

(declare-fun e!3818028 () Bool)

(assert (=> b!6278012 (= e!3818028 (nullable!6190 (h!71214 (exprs!6081 lt!2353414))))))

(declare-fun bm!531251 () Bool)

(assert (=> bm!531251 (= call!531256 (derivationStepZipperDown!1445 (h!71214 (exprs!6081 lt!2353414)) (Context!11163 (t!378450 (exprs!6081 lt!2353414))) (h!71215 s!2326)))))

(declare-fun b!6278013 () Bool)

(assert (=> b!6278013 (= e!3818026 ((as const (Array Context!11162 Bool)) false))))

(declare-fun d!1970480 () Bool)

(declare-fun c!1138268 () Bool)

(assert (=> d!1970480 (= c!1138268 e!3818028)))

(declare-fun res!2589282 () Bool)

(assert (=> d!1970480 (=> (not res!2589282) (not e!3818028))))

(assert (=> d!1970480 (= res!2589282 ((_ is Cons!64766) (exprs!6081 lt!2353414)))))

(assert (=> d!1970480 (= (derivationStepZipperUp!1371 lt!2353414 (h!71215 s!2326)) e!3818027)))

(declare-fun b!6278011 () Bool)

(assert (=> b!6278011 (= e!3818027 ((_ map or) call!531256 (derivationStepZipperUp!1371 (Context!11163 (t!378450 (exprs!6081 lt!2353414))) (h!71215 s!2326))))))

(assert (= (and d!1970480 res!2589282) b!6278012))

(assert (= (and d!1970480 c!1138268) b!6278011))

(assert (= (and d!1970480 (not c!1138268)) b!6278009))

(assert (= (and b!6278009 c!1138267) b!6278010))

(assert (= (and b!6278009 (not c!1138267)) b!6278013))

(assert (= (or b!6278011 b!6278010) bm!531251))

(declare-fun m!7099296 () Bool)

(assert (=> b!6278012 m!7099296))

(declare-fun m!7099298 () Bool)

(assert (=> bm!531251 m!7099298))

(declare-fun m!7099300 () Bool)

(assert (=> b!6278011 m!7099300))

(assert (=> b!6277074 d!1970480))

(declare-fun bs!1568381 () Bool)

(declare-fun d!1970482 () Bool)

(assert (= bs!1568381 (and d!1970482 b!6277081)))

(declare-fun lambda!344176 () Int)

(assert (=> bs!1568381 (= lambda!344176 lambda!344084)))

(assert (=> d!1970482 true))

(assert (=> d!1970482 (= (derivationStepZipper!2163 lt!2353440 (h!71215 s!2326)) (flatMap!1702 lt!2353440 lambda!344176))))

(declare-fun bs!1568382 () Bool)

(assert (= bs!1568382 d!1970482))

(declare-fun m!7099302 () Bool)

(assert (=> bs!1568382 m!7099302))

(assert (=> b!6277074 d!1970482))

(assert (=> b!6277074 d!1970444))

(declare-fun d!1970484 () Bool)

(declare-fun lt!2353603 () Int)

(assert (=> d!1970484 (>= lt!2353603 0)))

(declare-fun e!3818031 () Int)

(assert (=> d!1970484 (= lt!2353603 e!3818031)))

(declare-fun c!1138274 () Bool)

(assert (=> d!1970484 (= c!1138274 ((_ is Cons!64766) (exprs!6081 lt!2353414)))))

(assert (=> d!1970484 (= (contextDepthTotal!320 lt!2353414) lt!2353603)))

(declare-fun b!6278020 () Bool)

(declare-fun regexDepthTotal!172 (Regex!16197) Int)

(assert (=> b!6278020 (= e!3818031 (+ (regexDepthTotal!172 (h!71214 (exprs!6081 lt!2353414))) (contextDepthTotal!320 (Context!11163 (t!378450 (exprs!6081 lt!2353414))))))))

(declare-fun b!6278021 () Bool)

(assert (=> b!6278021 (= e!3818031 1)))

(assert (= (and d!1970484 c!1138274) b!6278020))

(assert (= (and d!1970484 (not c!1138274)) b!6278021))

(declare-fun m!7099304 () Bool)

(assert (=> b!6278020 m!7099304))

(declare-fun m!7099306 () Bool)

(assert (=> b!6278020 m!7099306))

(assert (=> b!6277095 d!1970484))

(declare-fun d!1970486 () Bool)

(declare-fun lt!2353604 () Int)

(assert (=> d!1970486 (>= lt!2353604 0)))

(declare-fun e!3818032 () Int)

(assert (=> d!1970486 (= lt!2353604 e!3818032)))

(declare-fun c!1138275 () Bool)

(assert (=> d!1970486 (= c!1138275 ((_ is Cons!64766) (exprs!6081 (h!71216 zl!343))))))

(assert (=> d!1970486 (= (contextDepthTotal!320 (h!71216 zl!343)) lt!2353604)))

(declare-fun b!6278022 () Bool)

(assert (=> b!6278022 (= e!3818032 (+ (regexDepthTotal!172 (h!71214 (exprs!6081 (h!71216 zl!343)))) (contextDepthTotal!320 (Context!11163 (t!378450 (exprs!6081 (h!71216 zl!343)))))))))

(declare-fun b!6278023 () Bool)

(assert (=> b!6278023 (= e!3818032 1)))

(assert (= (and d!1970486 c!1138275) b!6278022))

(assert (= (and d!1970486 (not c!1138275)) b!6278023))

(declare-fun m!7099308 () Bool)

(assert (=> b!6278022 m!7099308))

(declare-fun m!7099310 () Bool)

(assert (=> b!6278022 m!7099310))

(assert (=> b!6277095 d!1970486))

(declare-fun d!1970488 () Bool)

(declare-fun c!1138276 () Bool)

(assert (=> d!1970488 (= c!1138276 (isEmpty!36808 (t!378451 s!2326)))))

(declare-fun e!3818033 () Bool)

(assert (=> d!1970488 (= (matchZipper!2209 (derivationStepZipper!2163 lt!2353418 (h!71215 s!2326)) (t!378451 s!2326)) e!3818033)))

(declare-fun b!6278024 () Bool)

(assert (=> b!6278024 (= e!3818033 (nullableZipper!1967 (derivationStepZipper!2163 lt!2353418 (h!71215 s!2326))))))

(declare-fun b!6278025 () Bool)

(assert (=> b!6278025 (= e!3818033 (matchZipper!2209 (derivationStepZipper!2163 (derivationStepZipper!2163 lt!2353418 (h!71215 s!2326)) (head!12893 (t!378451 s!2326))) (tail!11979 (t!378451 s!2326))))))

(assert (= (and d!1970488 c!1138276) b!6278024))

(assert (= (and d!1970488 (not c!1138276)) b!6278025))

(assert (=> d!1970488 m!7098554))

(assert (=> b!6278024 m!7098480))

(declare-fun m!7099312 () Bool)

(assert (=> b!6278024 m!7099312))

(assert (=> b!6278025 m!7098558))

(assert (=> b!6278025 m!7098480))

(assert (=> b!6278025 m!7098558))

(declare-fun m!7099314 () Bool)

(assert (=> b!6278025 m!7099314))

(assert (=> b!6278025 m!7098562))

(assert (=> b!6278025 m!7099314))

(assert (=> b!6278025 m!7098562))

(declare-fun m!7099316 () Bool)

(assert (=> b!6278025 m!7099316))

(assert (=> b!6277093 d!1970488))

(declare-fun bs!1568383 () Bool)

(declare-fun d!1970490 () Bool)

(assert (= bs!1568383 (and d!1970490 b!6277081)))

(declare-fun lambda!344177 () Int)

(assert (=> bs!1568383 (= lambda!344177 lambda!344084)))

(declare-fun bs!1568384 () Bool)

(assert (= bs!1568384 (and d!1970490 d!1970482)))

(assert (=> bs!1568384 (= lambda!344177 lambda!344176)))

(assert (=> d!1970490 true))

(assert (=> d!1970490 (= (derivationStepZipper!2163 lt!2353418 (h!71215 s!2326)) (flatMap!1702 lt!2353418 lambda!344177))))

(declare-fun bs!1568385 () Bool)

(assert (= bs!1568385 d!1970490))

(declare-fun m!7099318 () Bool)

(assert (=> bs!1568385 m!7099318))

(assert (=> b!6277093 d!1970490))

(assert (=> b!6277073 d!1970256))

(declare-fun bs!1568386 () Bool)

(declare-fun b!6278029 () Bool)

(assert (= bs!1568386 (and b!6278029 b!6277287)))

(declare-fun lambda!344178 () Int)

(assert (=> bs!1568386 (= (and (= (reg!16526 r!7292) (reg!16526 lt!2353443)) (= r!7292 lt!2353443)) (= lambda!344178 lambda!344099))))

(declare-fun bs!1568387 () Bool)

(assert (= bs!1568387 (and b!6278029 b!6277077)))

(assert (=> bs!1568387 (not (= lambda!344178 lambda!344083))))

(declare-fun bs!1568388 () Bool)

(assert (= bs!1568388 (and b!6278029 d!1970454)))

(assert (=> bs!1568388 (not (= lambda!344178 lambda!344154))))

(declare-fun bs!1568389 () Bool)

(assert (= bs!1568389 (and b!6278029 d!1970466)))

(assert (=> bs!1568389 (not (= lambda!344178 lambda!344160))))

(assert (=> bs!1568389 (not (= lambda!344178 lambda!344159))))

(assert (=> bs!1568387 (not (= lambda!344178 lambda!344082))))

(declare-fun bs!1568390 () Bool)

(assert (= bs!1568390 (and b!6278029 d!1970306)))

(assert (=> bs!1568390 (not (= lambda!344178 lambda!344112))))

(declare-fun bs!1568391 () Bool)

(assert (= bs!1568391 (and b!6278029 b!6277289)))

(assert (=> bs!1568391 (not (= lambda!344178 lambda!344100))))

(declare-fun bs!1568392 () Bool)

(assert (= bs!1568392 (and b!6278029 b!6277101)))

(assert (=> bs!1568392 (not (= lambda!344178 lambda!344085))))

(assert (=> b!6278029 true))

(assert (=> b!6278029 true))

(declare-fun bs!1568393 () Bool)

(declare-fun b!6278031 () Bool)

(assert (= bs!1568393 (and b!6278031 b!6277287)))

(declare-fun lambda!344179 () Int)

(assert (=> bs!1568393 (not (= lambda!344179 lambda!344099))))

(declare-fun bs!1568394 () Bool)

(assert (= bs!1568394 (and b!6278031 b!6278029)))

(assert (=> bs!1568394 (not (= lambda!344179 lambda!344178))))

(declare-fun bs!1568395 () Bool)

(assert (= bs!1568395 (and b!6278031 b!6277077)))

(assert (=> bs!1568395 (= lambda!344179 lambda!344083)))

(declare-fun bs!1568396 () Bool)

(assert (= bs!1568396 (and b!6278031 d!1970454)))

(assert (=> bs!1568396 (not (= lambda!344179 lambda!344154))))

(declare-fun bs!1568397 () Bool)

(assert (= bs!1568397 (and b!6278031 d!1970466)))

(assert (=> bs!1568397 (= lambda!344179 lambda!344160)))

(assert (=> bs!1568397 (not (= lambda!344179 lambda!344159))))

(assert (=> bs!1568395 (not (= lambda!344179 lambda!344082))))

(declare-fun bs!1568398 () Bool)

(assert (= bs!1568398 (and b!6278031 d!1970306)))

(assert (=> bs!1568398 (not (= lambda!344179 lambda!344112))))

(declare-fun bs!1568399 () Bool)

(assert (= bs!1568399 (and b!6278031 b!6277289)))

(assert (=> bs!1568399 (= (and (= (regOne!32906 r!7292) (regOne!32906 lt!2353443)) (= (regTwo!32906 r!7292) (regTwo!32906 lt!2353443))) (= lambda!344179 lambda!344100))))

(declare-fun bs!1568400 () Bool)

(assert (= bs!1568400 (and b!6278031 b!6277101)))

(assert (=> bs!1568400 (not (= lambda!344179 lambda!344085))))

(assert (=> b!6278031 true))

(assert (=> b!6278031 true))

(declare-fun call!531257 () Bool)

(declare-fun c!1138278 () Bool)

(declare-fun bm!531252 () Bool)

(assert (=> bm!531252 (= call!531257 (Exists!3267 (ite c!1138278 lambda!344178 lambda!344179)))))

(declare-fun b!6278026 () Bool)

(declare-fun e!3818039 () Bool)

(assert (=> b!6278026 (= e!3818039 (= s!2326 (Cons!64767 (c!1137976 r!7292) Nil!64767)))))

(declare-fun b!6278027 () Bool)

(declare-fun c!1138277 () Bool)

(assert (=> b!6278027 (= c!1138277 ((_ is Union!16197) r!7292))))

(declare-fun e!3818037 () Bool)

(assert (=> b!6278027 (= e!3818039 e!3818037)))

(declare-fun d!1970492 () Bool)

(declare-fun c!1138280 () Bool)

(assert (=> d!1970492 (= c!1138280 ((_ is EmptyExpr!16197) r!7292))))

(declare-fun e!3818036 () Bool)

(assert (=> d!1970492 (= (matchRSpec!3298 r!7292 s!2326) e!3818036)))

(declare-fun b!6278028 () Bool)

(declare-fun c!1138279 () Bool)

(assert (=> b!6278028 (= c!1138279 ((_ is ElementMatch!16197) r!7292))))

(declare-fun e!3818038 () Bool)

(assert (=> b!6278028 (= e!3818038 e!3818039)))

(declare-fun e!3818034 () Bool)

(assert (=> b!6278029 (= e!3818034 call!531257)))

(declare-fun bm!531253 () Bool)

(declare-fun call!531258 () Bool)

(assert (=> bm!531253 (= call!531258 (isEmpty!36808 s!2326))))

(declare-fun b!6278030 () Bool)

(declare-fun e!3818040 () Bool)

(assert (=> b!6278030 (= e!3818037 e!3818040)))

(assert (=> b!6278030 (= c!1138278 ((_ is Star!16197) r!7292))))

(assert (=> b!6278031 (= e!3818040 call!531257)))

(declare-fun b!6278032 () Bool)

(assert (=> b!6278032 (= e!3818036 call!531258)))

(declare-fun b!6278033 () Bool)

(declare-fun e!3818035 () Bool)

(assert (=> b!6278033 (= e!3818037 e!3818035)))

(declare-fun res!2589284 () Bool)

(assert (=> b!6278033 (= res!2589284 (matchRSpec!3298 (regOne!32907 r!7292) s!2326))))

(assert (=> b!6278033 (=> res!2589284 e!3818035)))

(declare-fun b!6278034 () Bool)

(assert (=> b!6278034 (= e!3818035 (matchRSpec!3298 (regTwo!32907 r!7292) s!2326))))

(declare-fun b!6278035 () Bool)

(declare-fun res!2589285 () Bool)

(assert (=> b!6278035 (=> res!2589285 e!3818034)))

(assert (=> b!6278035 (= res!2589285 call!531258)))

(assert (=> b!6278035 (= e!3818040 e!3818034)))

(declare-fun b!6278036 () Bool)

(assert (=> b!6278036 (= e!3818036 e!3818038)))

(declare-fun res!2589283 () Bool)

(assert (=> b!6278036 (= res!2589283 (not ((_ is EmptyLang!16197) r!7292)))))

(assert (=> b!6278036 (=> (not res!2589283) (not e!3818038))))

(assert (= (and d!1970492 c!1138280) b!6278032))

(assert (= (and d!1970492 (not c!1138280)) b!6278036))

(assert (= (and b!6278036 res!2589283) b!6278028))

(assert (= (and b!6278028 c!1138279) b!6278026))

(assert (= (and b!6278028 (not c!1138279)) b!6278027))

(assert (= (and b!6278027 c!1138277) b!6278033))

(assert (= (and b!6278027 (not c!1138277)) b!6278030))

(assert (= (and b!6278033 (not res!2589284)) b!6278034))

(assert (= (and b!6278030 c!1138278) b!6278035))

(assert (= (and b!6278030 (not c!1138278)) b!6278031))

(assert (= (and b!6278035 (not res!2589285)) b!6278029))

(assert (= (or b!6278029 b!6278031) bm!531252))

(assert (= (or b!6278032 b!6278035) bm!531253))

(declare-fun m!7099320 () Bool)

(assert (=> bm!531252 m!7099320))

(assert (=> bm!531253 m!7098660))

(declare-fun m!7099322 () Bool)

(assert (=> b!6278033 m!7099322))

(declare-fun m!7099324 () Bool)

(assert (=> b!6278034 m!7099324))

(assert (=> b!6277094 d!1970492))

(declare-fun b!6278037 () Bool)

(declare-fun res!2589286 () Bool)

(declare-fun e!3818045 () Bool)

(assert (=> b!6278037 (=> res!2589286 e!3818045)))

(assert (=> b!6278037 (= res!2589286 (not ((_ is ElementMatch!16197) r!7292)))))

(declare-fun e!3818043 () Bool)

(assert (=> b!6278037 (= e!3818043 e!3818045)))

(declare-fun b!6278038 () Bool)

(declare-fun e!3818047 () Bool)

(assert (=> b!6278038 (= e!3818045 e!3818047)))

(declare-fun res!2589292 () Bool)

(assert (=> b!6278038 (=> (not res!2589292) (not e!3818047))))

(declare-fun lt!2353605 () Bool)

(assert (=> b!6278038 (= res!2589292 (not lt!2353605))))

(declare-fun bm!531254 () Bool)

(declare-fun call!531259 () Bool)

(assert (=> bm!531254 (= call!531259 (isEmpty!36808 s!2326))))

(declare-fun b!6278039 () Bool)

(declare-fun res!2589290 () Bool)

(declare-fun e!3818041 () Bool)

(assert (=> b!6278039 (=> (not res!2589290) (not e!3818041))))

(assert (=> b!6278039 (= res!2589290 (not call!531259))))

(declare-fun b!6278040 () Bool)

(assert (=> b!6278040 (= e!3818043 (not lt!2353605))))

(declare-fun b!6278041 () Bool)

(declare-fun e!3818042 () Bool)

(assert (=> b!6278041 (= e!3818042 (= lt!2353605 call!531259))))

(declare-fun b!6278042 () Bool)

(declare-fun res!2589293 () Bool)

(declare-fun e!3818044 () Bool)

(assert (=> b!6278042 (=> res!2589293 e!3818044)))

(assert (=> b!6278042 (= res!2589293 (not (isEmpty!36808 (tail!11979 s!2326))))))

(declare-fun d!1970494 () Bool)

(assert (=> d!1970494 e!3818042))

(declare-fun c!1138281 () Bool)

(assert (=> d!1970494 (= c!1138281 ((_ is EmptyExpr!16197) r!7292))))

(declare-fun e!3818046 () Bool)

(assert (=> d!1970494 (= lt!2353605 e!3818046)))

(declare-fun c!1138282 () Bool)

(assert (=> d!1970494 (= c!1138282 (isEmpty!36808 s!2326))))

(assert (=> d!1970494 (validRegex!7933 r!7292)))

(assert (=> d!1970494 (= (matchR!8380 r!7292 s!2326) lt!2353605)))

(declare-fun b!6278043 () Bool)

(declare-fun res!2589288 () Bool)

(assert (=> b!6278043 (=> (not res!2589288) (not e!3818041))))

(assert (=> b!6278043 (= res!2589288 (isEmpty!36808 (tail!11979 s!2326)))))

(declare-fun b!6278044 () Bool)

(assert (=> b!6278044 (= e!3818041 (= (head!12893 s!2326) (c!1137976 r!7292)))))

(declare-fun b!6278045 () Bool)

(declare-fun res!2589291 () Bool)

(assert (=> b!6278045 (=> res!2589291 e!3818045)))

(assert (=> b!6278045 (= res!2589291 e!3818041)))

(declare-fun res!2589289 () Bool)

(assert (=> b!6278045 (=> (not res!2589289) (not e!3818041))))

(assert (=> b!6278045 (= res!2589289 lt!2353605)))

(declare-fun b!6278046 () Bool)

(assert (=> b!6278046 (= e!3818042 e!3818043)))

(declare-fun c!1138283 () Bool)

(assert (=> b!6278046 (= c!1138283 ((_ is EmptyLang!16197) r!7292))))

(declare-fun b!6278047 () Bool)

(assert (=> b!6278047 (= e!3818046 (nullable!6190 r!7292))))

(declare-fun b!6278048 () Bool)

(assert (=> b!6278048 (= e!3818044 (not (= (head!12893 s!2326) (c!1137976 r!7292))))))

(declare-fun b!6278049 () Bool)

(assert (=> b!6278049 (= e!3818047 e!3818044)))

(declare-fun res!2589287 () Bool)

(assert (=> b!6278049 (=> res!2589287 e!3818044)))

(assert (=> b!6278049 (= res!2589287 call!531259)))

(declare-fun b!6278050 () Bool)

(assert (=> b!6278050 (= e!3818046 (matchR!8380 (derivativeStep!4906 r!7292 (head!12893 s!2326)) (tail!11979 s!2326)))))

(assert (= (and d!1970494 c!1138282) b!6278047))

(assert (= (and d!1970494 (not c!1138282)) b!6278050))

(assert (= (and d!1970494 c!1138281) b!6278041))

(assert (= (and d!1970494 (not c!1138281)) b!6278046))

(assert (= (and b!6278046 c!1138283) b!6278040))

(assert (= (and b!6278046 (not c!1138283)) b!6278037))

(assert (= (and b!6278037 (not res!2589286)) b!6278045))

(assert (= (and b!6278045 res!2589289) b!6278039))

(assert (= (and b!6278039 res!2589290) b!6278043))

(assert (= (and b!6278043 res!2589288) b!6278044))

(assert (= (and b!6278045 (not res!2589291)) b!6278038))

(assert (= (and b!6278038 res!2589292) b!6278049))

(assert (= (and b!6278049 (not res!2589287)) b!6278042))

(assert (= (and b!6278042 (not res!2589293)) b!6278048))

(assert (= (or b!6278041 b!6278039 b!6278049) bm!531254))

(assert (=> bm!531254 m!7098660))

(assert (=> b!6278044 m!7098696))

(assert (=> b!6278043 m!7098698))

(assert (=> b!6278043 m!7098698))

(assert (=> b!6278043 m!7098700))

(declare-fun m!7099326 () Bool)

(assert (=> b!6278047 m!7099326))

(assert (=> b!6278050 m!7098696))

(assert (=> b!6278050 m!7098696))

(declare-fun m!7099328 () Bool)

(assert (=> b!6278050 m!7099328))

(assert (=> b!6278050 m!7098698))

(assert (=> b!6278050 m!7099328))

(assert (=> b!6278050 m!7098698))

(declare-fun m!7099330 () Bool)

(assert (=> b!6278050 m!7099330))

(assert (=> d!1970494 m!7098660))

(assert (=> d!1970494 m!7098470))

(assert (=> b!6278048 m!7098696))

(assert (=> b!6278042 m!7098698))

(assert (=> b!6278042 m!7098698))

(assert (=> b!6278042 m!7098700))

(assert (=> b!6277094 d!1970494))

(declare-fun d!1970496 () Bool)

(assert (=> d!1970496 (= (matchR!8380 r!7292 s!2326) (matchRSpec!3298 r!7292 s!2326))))

(declare-fun lt!2353606 () Unit!158119)

(assert (=> d!1970496 (= lt!2353606 (choose!46590 r!7292 s!2326))))

(assert (=> d!1970496 (validRegex!7933 r!7292)))

(assert (=> d!1970496 (= (mainMatchTheorem!3298 r!7292 s!2326) lt!2353606)))

(declare-fun bs!1568401 () Bool)

(assert (= bs!1568401 d!1970496))

(assert (=> bs!1568401 m!7098476))

(assert (=> bs!1568401 m!7098474))

(declare-fun m!7099332 () Bool)

(assert (=> bs!1568401 m!7099332))

(assert (=> bs!1568401 m!7098470))

(assert (=> b!6277094 d!1970496))

(declare-fun d!1970498 () Bool)

(assert (=> d!1970498 (= (isEmpty!36806 (t!378450 (exprs!6081 (h!71216 zl!343)))) ((_ is Nil!64766) (t!378450 (exprs!6081 (h!71216 zl!343)))))))

(assert (=> b!6277072 d!1970498))

(declare-fun d!1970500 () Bool)

(declare-fun c!1138284 () Bool)

(assert (=> d!1970500 (= c!1138284 (isEmpty!36808 (t!378451 s!2326)))))

(declare-fun e!3818048 () Bool)

(assert (=> d!1970500 (= (matchZipper!2209 lt!2353407 (t!378451 s!2326)) e!3818048)))

(declare-fun b!6278051 () Bool)

(assert (=> b!6278051 (= e!3818048 (nullableZipper!1967 lt!2353407))))

(declare-fun b!6278052 () Bool)

(assert (=> b!6278052 (= e!3818048 (matchZipper!2209 (derivationStepZipper!2163 lt!2353407 (head!12893 (t!378451 s!2326))) (tail!11979 (t!378451 s!2326))))))

(assert (= (and d!1970500 c!1138284) b!6278051))

(assert (= (and d!1970500 (not c!1138284)) b!6278052))

(assert (=> d!1970500 m!7098554))

(declare-fun m!7099334 () Bool)

(assert (=> b!6278051 m!7099334))

(assert (=> b!6278052 m!7098558))

(assert (=> b!6278052 m!7098558))

(declare-fun m!7099336 () Bool)

(assert (=> b!6278052 m!7099336))

(assert (=> b!6278052 m!7098562))

(assert (=> b!6278052 m!7099336))

(assert (=> b!6278052 m!7098562))

(declare-fun m!7099338 () Bool)

(assert (=> b!6278052 m!7099338))

(assert (=> b!6277070 d!1970500))

(declare-fun d!1970502 () Bool)

(assert (=> d!1970502 (= (isEmpty!36805 (t!378452 zl!343)) ((_ is Nil!64768) (t!378452 zl!343)))))

(assert (=> b!6277071 d!1970502))

(declare-fun d!1970504 () Bool)

(declare-fun e!3818051 () Bool)

(assert (=> d!1970504 e!3818051))

(declare-fun res!2589296 () Bool)

(assert (=> d!1970504 (=> (not res!2589296) (not e!3818051))))

(declare-fun lt!2353609 () List!64892)

(declare-fun noDuplicate!2031 (List!64892) Bool)

(assert (=> d!1970504 (= res!2589296 (noDuplicate!2031 lt!2353609))))

(declare-fun choose!46597 ((InoxSet Context!11162)) List!64892)

(assert (=> d!1970504 (= lt!2353609 (choose!46597 z!1189))))

(assert (=> d!1970504 (= (toList!9981 z!1189) lt!2353609)))

(declare-fun b!6278055 () Bool)

(declare-fun content!12172 (List!64892) (InoxSet Context!11162))

(assert (=> b!6278055 (= e!3818051 (= (content!12172 lt!2353609) z!1189))))

(assert (= (and d!1970504 res!2589296) b!6278055))

(declare-fun m!7099340 () Bool)

(assert (=> d!1970504 m!7099340))

(declare-fun m!7099342 () Bool)

(assert (=> d!1970504 m!7099342))

(declare-fun m!7099344 () Bool)

(assert (=> b!6278055 m!7099344))

(assert (=> b!6277090 d!1970504))

(declare-fun bs!1568402 () Bool)

(declare-fun d!1970506 () Bool)

(assert (= bs!1568402 (and d!1970506 d!1970290)))

(declare-fun lambda!344182 () Int)

(assert (=> bs!1568402 (= lambda!344182 lambda!344109)))

(declare-fun bs!1568403 () Bool)

(assert (= bs!1568403 (and d!1970506 d!1970470)))

(assert (=> bs!1568403 (= lambda!344182 lambda!344161)))

(declare-fun bs!1568404 () Bool)

(assert (= bs!1568404 (and d!1970506 d!1970416)))

(assert (=> bs!1568404 (= lambda!344182 lambda!344153)))

(declare-fun bs!1568405 () Bool)

(assert (= bs!1568405 (and d!1970506 d!1970406)))

(assert (=> bs!1568405 (= lambda!344182 lambda!344150)))

(declare-fun bs!1568406 () Bool)

(assert (= bs!1568406 (and d!1970506 d!1970358)))

(assert (=> bs!1568406 (= lambda!344182 lambda!344136)))

(assert (=> d!1970506 (= (inv!83739 setElem!42704) (forall!15330 (exprs!6081 setElem!42704) lambda!344182))))

(declare-fun bs!1568407 () Bool)

(assert (= bs!1568407 d!1970506))

(declare-fun m!7099346 () Bool)

(assert (=> bs!1568407 m!7099346))

(assert (=> setNonEmpty!42704 d!1970506))

(declare-fun b!6278056 () Bool)

(declare-fun res!2589300 () Bool)

(declare-fun e!3818052 () Bool)

(assert (=> b!6278056 (=> (not res!2589300) (not e!3818052))))

(declare-fun call!531261 () Bool)

(assert (=> b!6278056 (= res!2589300 call!531261)))

(declare-fun e!3818053 () Bool)

(assert (=> b!6278056 (= e!3818053 e!3818052)))

(declare-fun b!6278057 () Bool)

(declare-fun e!3818054 () Bool)

(assert (=> b!6278057 (= e!3818054 e!3818053)))

(declare-fun c!1138285 () Bool)

(assert (=> b!6278057 (= c!1138285 ((_ is Union!16197) r!7292))))

(declare-fun bm!531255 () Bool)

(declare-fun call!531262 () Bool)

(assert (=> bm!531255 (= call!531261 call!531262)))

(declare-fun bm!531256 () Bool)

(declare-fun call!531260 () Bool)

(assert (=> bm!531256 (= call!531260 (validRegex!7933 (ite c!1138285 (regTwo!32907 r!7292) (regTwo!32906 r!7292))))))

(declare-fun b!6278058 () Bool)

(declare-fun e!3818057 () Bool)

(assert (=> b!6278058 (= e!3818057 e!3818054)))

(declare-fun c!1138286 () Bool)

(assert (=> b!6278058 (= c!1138286 ((_ is Star!16197) r!7292))))

(declare-fun b!6278059 () Bool)

(assert (=> b!6278059 (= e!3818052 call!531260)))

(declare-fun b!6278060 () Bool)

(declare-fun e!3818058 () Bool)

(declare-fun e!3818056 () Bool)

(assert (=> b!6278060 (= e!3818058 e!3818056)))

(declare-fun res!2589299 () Bool)

(assert (=> b!6278060 (=> (not res!2589299) (not e!3818056))))

(assert (=> b!6278060 (= res!2589299 call!531261)))

(declare-fun b!6278061 () Bool)

(declare-fun e!3818055 () Bool)

(assert (=> b!6278061 (= e!3818054 e!3818055)))

(declare-fun res!2589301 () Bool)

(assert (=> b!6278061 (= res!2589301 (not (nullable!6190 (reg!16526 r!7292))))))

(assert (=> b!6278061 (=> (not res!2589301) (not e!3818055))))

(declare-fun b!6278062 () Bool)

(declare-fun res!2589298 () Bool)

(assert (=> b!6278062 (=> res!2589298 e!3818058)))

(assert (=> b!6278062 (= res!2589298 (not ((_ is Concat!25042) r!7292)))))

(assert (=> b!6278062 (= e!3818053 e!3818058)))

(declare-fun b!6278063 () Bool)

(assert (=> b!6278063 (= e!3818055 call!531262)))

(declare-fun b!6278064 () Bool)

(assert (=> b!6278064 (= e!3818056 call!531260)))

(declare-fun bm!531257 () Bool)

(assert (=> bm!531257 (= call!531262 (validRegex!7933 (ite c!1138286 (reg!16526 r!7292) (ite c!1138285 (regOne!32907 r!7292) (regOne!32906 r!7292)))))))

(declare-fun d!1970508 () Bool)

(declare-fun res!2589297 () Bool)

(assert (=> d!1970508 (=> res!2589297 e!3818057)))

(assert (=> d!1970508 (= res!2589297 ((_ is ElementMatch!16197) r!7292))))

(assert (=> d!1970508 (= (validRegex!7933 r!7292) e!3818057)))

(assert (= (and d!1970508 (not res!2589297)) b!6278058))

(assert (= (and b!6278058 c!1138286) b!6278061))

(assert (= (and b!6278058 (not c!1138286)) b!6278057))

(assert (= (and b!6278061 res!2589301) b!6278063))

(assert (= (and b!6278057 c!1138285) b!6278056))

(assert (= (and b!6278057 (not c!1138285)) b!6278062))

(assert (= (and b!6278056 res!2589300) b!6278059))

(assert (= (and b!6278062 (not res!2589298)) b!6278060))

(assert (= (and b!6278060 res!2589299) b!6278064))

(assert (= (or b!6278059 b!6278064) bm!531256))

(assert (= (or b!6278056 b!6278060) bm!531255))

(assert (= (or b!6278063 bm!531255) bm!531257))

(declare-fun m!7099348 () Bool)

(assert (=> bm!531256 m!7099348))

(declare-fun m!7099350 () Bool)

(assert (=> b!6278061 m!7099350))

(declare-fun m!7099352 () Bool)

(assert (=> bm!531257 m!7099352))

(assert (=> start!623974 d!1970508))

(assert (=> b!6277087 d!1970242))

(declare-fun d!1970510 () Bool)

(declare-fun c!1138287 () Bool)

(assert (=> d!1970510 (= c!1138287 (isEmpty!36808 (t!378451 s!2326)))))

(declare-fun e!3818059 () Bool)

(assert (=> d!1970510 (= (matchZipper!2209 lt!2353444 (t!378451 s!2326)) e!3818059)))

(declare-fun b!6278065 () Bool)

(assert (=> b!6278065 (= e!3818059 (nullableZipper!1967 lt!2353444))))

(declare-fun b!6278066 () Bool)

(assert (=> b!6278066 (= e!3818059 (matchZipper!2209 (derivationStepZipper!2163 lt!2353444 (head!12893 (t!378451 s!2326))) (tail!11979 (t!378451 s!2326))))))

(assert (= (and d!1970510 c!1138287) b!6278065))

(assert (= (and d!1970510 (not c!1138287)) b!6278066))

(assert (=> d!1970510 m!7098554))

(declare-fun m!7099354 () Bool)

(assert (=> b!6278065 m!7099354))

(assert (=> b!6278066 m!7098558))

(assert (=> b!6278066 m!7098558))

(declare-fun m!7099356 () Bool)

(assert (=> b!6278066 m!7099356))

(assert (=> b!6278066 m!7098562))

(assert (=> b!6278066 m!7099356))

(assert (=> b!6278066 m!7098562))

(declare-fun m!7099358 () Bool)

(assert (=> b!6278066 m!7099358))

(assert (=> b!6277087 d!1970510))

(declare-fun d!1970512 () Bool)

(declare-fun c!1138288 () Bool)

(assert (=> d!1970512 (= c!1138288 (isEmpty!36808 (t!378451 s!2326)))))

(declare-fun e!3818060 () Bool)

(assert (=> d!1970512 (= (matchZipper!2209 lt!2353429 (t!378451 s!2326)) e!3818060)))

(declare-fun b!6278067 () Bool)

(assert (=> b!6278067 (= e!3818060 (nullableZipper!1967 lt!2353429))))

(declare-fun b!6278068 () Bool)

(assert (=> b!6278068 (= e!3818060 (matchZipper!2209 (derivationStepZipper!2163 lt!2353429 (head!12893 (t!378451 s!2326))) (tail!11979 (t!378451 s!2326))))))

(assert (= (and d!1970512 c!1138288) b!6278067))

(assert (= (and d!1970512 (not c!1138288)) b!6278068))

(assert (=> d!1970512 m!7098554))

(declare-fun m!7099360 () Bool)

(assert (=> b!6278067 m!7099360))

(assert (=> b!6278068 m!7098558))

(assert (=> b!6278068 m!7098558))

(declare-fun m!7099362 () Bool)

(assert (=> b!6278068 m!7099362))

(assert (=> b!6278068 m!7098562))

(assert (=> b!6278068 m!7099362))

(assert (=> b!6278068 m!7098562))

(declare-fun m!7099364 () Bool)

(assert (=> b!6278068 m!7099364))

(assert (=> b!6277087 d!1970512))

(declare-fun d!1970514 () Bool)

(declare-fun e!3818061 () Bool)

(assert (=> d!1970514 (= (matchZipper!2209 ((_ map or) lt!2353429 lt!2353432) (t!378451 s!2326)) e!3818061)))

(declare-fun res!2589302 () Bool)

(assert (=> d!1970514 (=> res!2589302 e!3818061)))

(assert (=> d!1970514 (= res!2589302 (matchZipper!2209 lt!2353429 (t!378451 s!2326)))))

(declare-fun lt!2353610 () Unit!158119)

(assert (=> d!1970514 (= lt!2353610 (choose!46583 lt!2353429 lt!2353432 (t!378451 s!2326)))))

(assert (=> d!1970514 (= (lemmaZipperConcatMatchesSameAsBothZippers!1028 lt!2353429 lt!2353432 (t!378451 s!2326)) lt!2353610)))

(declare-fun b!6278069 () Bool)

(assert (=> b!6278069 (= e!3818061 (matchZipper!2209 lt!2353432 (t!378451 s!2326)))))

(assert (= (and d!1970514 (not res!2589302)) b!6278069))

(declare-fun m!7099366 () Bool)

(assert (=> d!1970514 m!7099366))

(assert (=> d!1970514 m!7098438))

(declare-fun m!7099368 () Bool)

(assert (=> d!1970514 m!7099368))

(assert (=> b!6278069 m!7098380))

(assert (=> b!6277087 d!1970514))

(declare-fun bs!1568408 () Bool)

(declare-fun d!1970516 () Bool)

(assert (= bs!1568408 (and d!1970516 d!1970506)))

(declare-fun lambda!344183 () Int)

(assert (=> bs!1568408 (= lambda!344183 lambda!344182)))

(declare-fun bs!1568409 () Bool)

(assert (= bs!1568409 (and d!1970516 d!1970290)))

(assert (=> bs!1568409 (= lambda!344183 lambda!344109)))

(declare-fun bs!1568410 () Bool)

(assert (= bs!1568410 (and d!1970516 d!1970470)))

(assert (=> bs!1568410 (= lambda!344183 lambda!344161)))

(declare-fun bs!1568411 () Bool)

(assert (= bs!1568411 (and d!1970516 d!1970416)))

(assert (=> bs!1568411 (= lambda!344183 lambda!344153)))

(declare-fun bs!1568412 () Bool)

(assert (= bs!1568412 (and d!1970516 d!1970406)))

(assert (=> bs!1568412 (= lambda!344183 lambda!344150)))

(declare-fun bs!1568413 () Bool)

(assert (= bs!1568413 (and d!1970516 d!1970358)))

(assert (=> bs!1568413 (= lambda!344183 lambda!344136)))

(assert (=> d!1970516 (= (inv!83739 (h!71216 zl!343)) (forall!15330 (exprs!6081 (h!71216 zl!343)) lambda!344183))))

(declare-fun bs!1568414 () Bool)

(assert (= bs!1568414 d!1970516))

(declare-fun m!7099370 () Bool)

(assert (=> bs!1568414 m!7099370))

(assert (=> b!6277105 d!1970516))

(declare-fun b!6278081 () Bool)

(declare-fun e!3818064 () Bool)

(declare-fun tp!1750017 () Bool)

(declare-fun tp!1750015 () Bool)

(assert (=> b!6278081 (= e!3818064 (and tp!1750017 tp!1750015))))

(assert (=> b!6277089 (= tp!1749937 e!3818064)))

(declare-fun b!6278082 () Bool)

(declare-fun tp!1750016 () Bool)

(assert (=> b!6278082 (= e!3818064 tp!1750016)))

(declare-fun b!6278083 () Bool)

(declare-fun tp!1750019 () Bool)

(declare-fun tp!1750018 () Bool)

(assert (=> b!6278083 (= e!3818064 (and tp!1750019 tp!1750018))))

(declare-fun b!6278080 () Bool)

(assert (=> b!6278080 (= e!3818064 tp_is_empty!41647)))

(assert (= (and b!6277089 ((_ is ElementMatch!16197) (regOne!32907 r!7292))) b!6278080))

(assert (= (and b!6277089 ((_ is Concat!25042) (regOne!32907 r!7292))) b!6278081))

(assert (= (and b!6277089 ((_ is Star!16197) (regOne!32907 r!7292))) b!6278082))

(assert (= (and b!6277089 ((_ is Union!16197) (regOne!32907 r!7292))) b!6278083))

(declare-fun b!6278085 () Bool)

(declare-fun e!3818065 () Bool)

(declare-fun tp!1750022 () Bool)

(declare-fun tp!1750020 () Bool)

(assert (=> b!6278085 (= e!3818065 (and tp!1750022 tp!1750020))))

(assert (=> b!6277089 (= tp!1749944 e!3818065)))

(declare-fun b!6278086 () Bool)

(declare-fun tp!1750021 () Bool)

(assert (=> b!6278086 (= e!3818065 tp!1750021)))

(declare-fun b!6278087 () Bool)

(declare-fun tp!1750024 () Bool)

(declare-fun tp!1750023 () Bool)

(assert (=> b!6278087 (= e!3818065 (and tp!1750024 tp!1750023))))

(declare-fun b!6278084 () Bool)

(assert (=> b!6278084 (= e!3818065 tp_is_empty!41647)))

(assert (= (and b!6277089 ((_ is ElementMatch!16197) (regTwo!32907 r!7292))) b!6278084))

(assert (= (and b!6277089 ((_ is Concat!25042) (regTwo!32907 r!7292))) b!6278085))

(assert (= (and b!6277089 ((_ is Star!16197) (regTwo!32907 r!7292))) b!6278086))

(assert (= (and b!6277089 ((_ is Union!16197) (regTwo!32907 r!7292))) b!6278087))

(declare-fun b!6278092 () Bool)

(declare-fun e!3818068 () Bool)

(declare-fun tp!1750029 () Bool)

(declare-fun tp!1750030 () Bool)

(assert (=> b!6278092 (= e!3818068 (and tp!1750029 tp!1750030))))

(assert (=> b!6277088 (= tp!1749938 e!3818068)))

(assert (= (and b!6277088 ((_ is Cons!64766) (exprs!6081 setElem!42704))) b!6278092))

(declare-fun b!6278093 () Bool)

(declare-fun e!3818069 () Bool)

(declare-fun tp!1750031 () Bool)

(declare-fun tp!1750032 () Bool)

(assert (=> b!6278093 (= e!3818069 (and tp!1750031 tp!1750032))))

(assert (=> b!6277086 (= tp!1749945 e!3818069)))

(assert (= (and b!6277086 ((_ is Cons!64766) (exprs!6081 (h!71216 zl!343)))) b!6278093))

(declare-fun b!6278095 () Bool)

(declare-fun e!3818070 () Bool)

(declare-fun tp!1750035 () Bool)

(declare-fun tp!1750033 () Bool)

(assert (=> b!6278095 (= e!3818070 (and tp!1750035 tp!1750033))))

(assert (=> b!6277096 (= tp!1749941 e!3818070)))

(declare-fun b!6278096 () Bool)

(declare-fun tp!1750034 () Bool)

(assert (=> b!6278096 (= e!3818070 tp!1750034)))

(declare-fun b!6278097 () Bool)

(declare-fun tp!1750037 () Bool)

(declare-fun tp!1750036 () Bool)

(assert (=> b!6278097 (= e!3818070 (and tp!1750037 tp!1750036))))

(declare-fun b!6278094 () Bool)

(assert (=> b!6278094 (= e!3818070 tp_is_empty!41647)))

(assert (= (and b!6277096 ((_ is ElementMatch!16197) (reg!16526 r!7292))) b!6278094))

(assert (= (and b!6277096 ((_ is Concat!25042) (reg!16526 r!7292))) b!6278095))

(assert (= (and b!6277096 ((_ is Star!16197) (reg!16526 r!7292))) b!6278096))

(assert (= (and b!6277096 ((_ is Union!16197) (reg!16526 r!7292))) b!6278097))

(declare-fun b!6278105 () Bool)

(declare-fun e!3818076 () Bool)

(declare-fun tp!1750042 () Bool)

(assert (=> b!6278105 (= e!3818076 tp!1750042)))

(declare-fun tp!1750043 () Bool)

(declare-fun e!3818075 () Bool)

(declare-fun b!6278104 () Bool)

(assert (=> b!6278104 (= e!3818075 (and (inv!83739 (h!71216 (t!378452 zl!343))) e!3818076 tp!1750043))))

(assert (=> b!6277105 (= tp!1749942 e!3818075)))

(assert (= b!6278104 b!6278105))

(assert (= (and b!6277105 ((_ is Cons!64768) (t!378452 zl!343))) b!6278104))

(declare-fun m!7099372 () Bool)

(assert (=> b!6278104 m!7099372))

(declare-fun b!6278110 () Bool)

(declare-fun e!3818079 () Bool)

(declare-fun tp!1750046 () Bool)

(assert (=> b!6278110 (= e!3818079 (and tp_is_empty!41647 tp!1750046))))

(assert (=> b!6277085 (= tp!1749946 e!3818079)))

(assert (= (and b!6277085 ((_ is Cons!64767) (t!378451 s!2326))) b!6278110))

(declare-fun b!6278112 () Bool)

(declare-fun e!3818080 () Bool)

(declare-fun tp!1750049 () Bool)

(declare-fun tp!1750047 () Bool)

(assert (=> b!6278112 (= e!3818080 (and tp!1750049 tp!1750047))))

(assert (=> b!6277100 (= tp!1749943 e!3818080)))

(declare-fun b!6278113 () Bool)

(declare-fun tp!1750048 () Bool)

(assert (=> b!6278113 (= e!3818080 tp!1750048)))

(declare-fun b!6278114 () Bool)

(declare-fun tp!1750051 () Bool)

(declare-fun tp!1750050 () Bool)

(assert (=> b!6278114 (= e!3818080 (and tp!1750051 tp!1750050))))

(declare-fun b!6278111 () Bool)

(assert (=> b!6278111 (= e!3818080 tp_is_empty!41647)))

(assert (= (and b!6277100 ((_ is ElementMatch!16197) (regOne!32906 r!7292))) b!6278111))

(assert (= (and b!6277100 ((_ is Concat!25042) (regOne!32906 r!7292))) b!6278112))

(assert (= (and b!6277100 ((_ is Star!16197) (regOne!32906 r!7292))) b!6278113))

(assert (= (and b!6277100 ((_ is Union!16197) (regOne!32906 r!7292))) b!6278114))

(declare-fun b!6278116 () Bool)

(declare-fun e!3818081 () Bool)

(declare-fun tp!1750054 () Bool)

(declare-fun tp!1750052 () Bool)

(assert (=> b!6278116 (= e!3818081 (and tp!1750054 tp!1750052))))

(assert (=> b!6277100 (= tp!1749940 e!3818081)))

(declare-fun b!6278117 () Bool)

(declare-fun tp!1750053 () Bool)

(assert (=> b!6278117 (= e!3818081 tp!1750053)))

(declare-fun b!6278118 () Bool)

(declare-fun tp!1750056 () Bool)

(declare-fun tp!1750055 () Bool)

(assert (=> b!6278118 (= e!3818081 (and tp!1750056 tp!1750055))))

(declare-fun b!6278115 () Bool)

(assert (=> b!6278115 (= e!3818081 tp_is_empty!41647)))

(assert (= (and b!6277100 ((_ is ElementMatch!16197) (regTwo!32906 r!7292))) b!6278115))

(assert (= (and b!6277100 ((_ is Concat!25042) (regTwo!32906 r!7292))) b!6278116))

(assert (= (and b!6277100 ((_ is Star!16197) (regTwo!32906 r!7292))) b!6278117))

(assert (= (and b!6277100 ((_ is Union!16197) (regTwo!32906 r!7292))) b!6278118))

(declare-fun condSetEmpty!42710 () Bool)

(assert (=> setNonEmpty!42704 (= condSetEmpty!42710 (= setRest!42704 ((as const (Array Context!11162 Bool)) false)))))

(declare-fun setRes!42710 () Bool)

(assert (=> setNonEmpty!42704 (= tp!1749939 setRes!42710)))

(declare-fun setIsEmpty!42710 () Bool)

(assert (=> setIsEmpty!42710 setRes!42710))

(declare-fun tp!1750062 () Bool)

(declare-fun setElem!42710 () Context!11162)

(declare-fun e!3818084 () Bool)

(declare-fun setNonEmpty!42710 () Bool)

(assert (=> setNonEmpty!42710 (= setRes!42710 (and tp!1750062 (inv!83739 setElem!42710) e!3818084))))

(declare-fun setRest!42710 () (InoxSet Context!11162))

(assert (=> setNonEmpty!42710 (= setRest!42704 ((_ map or) (store ((as const (Array Context!11162 Bool)) false) setElem!42710 true) setRest!42710))))

(declare-fun b!6278123 () Bool)

(declare-fun tp!1750061 () Bool)

(assert (=> b!6278123 (= e!3818084 tp!1750061)))

(assert (= (and setNonEmpty!42704 condSetEmpty!42710) setIsEmpty!42710))

(assert (= (and setNonEmpty!42704 (not condSetEmpty!42710)) setNonEmpty!42710))

(assert (= setNonEmpty!42710 b!6278123))

(declare-fun m!7099374 () Bool)

(assert (=> setNonEmpty!42710 m!7099374))

(declare-fun b_lambda!239047 () Bool)

(assert (= b_lambda!239045 (or b!6277081 b_lambda!239047)))

(declare-fun bs!1568415 () Bool)

(declare-fun d!1970518 () Bool)

(assert (= bs!1568415 (and d!1970518 b!6277081)))

(assert (=> bs!1568415 (= (dynLambda!25623 lambda!344084 lt!2353414) (derivationStepZipperUp!1371 lt!2353414 (h!71215 s!2326)))))

(assert (=> bs!1568415 m!7098388))

(assert (=> d!1970478 d!1970518))

(declare-fun b_lambda!239049 () Bool)

(assert (= b_lambda!239033 (or b!6277081 b_lambda!239049)))

(declare-fun bs!1568416 () Bool)

(declare-fun d!1970520 () Bool)

(assert (= bs!1568416 (and d!1970520 b!6277081)))

(assert (=> bs!1568416 (= (dynLambda!25623 lambda!344084 (h!71216 zl!343)) (derivationStepZipperUp!1371 (h!71216 zl!343) (h!71215 s!2326)))))

(assert (=> bs!1568416 m!7098498))

(assert (=> d!1970364 d!1970520))

(declare-fun b_lambda!239051 () Bool)

(assert (= b_lambda!239037 (or b!6277081 b_lambda!239051)))

(declare-fun bs!1568417 () Bool)

(declare-fun d!1970522 () Bool)

(assert (= bs!1568417 (and d!1970522 b!6277081)))

(assert (=> bs!1568417 (= (dynLambda!25623 lambda!344084 lt!2353425) (derivationStepZipperUp!1371 lt!2353425 (h!71215 s!2326)))))

(assert (=> bs!1568417 m!7098390))

(assert (=> d!1970436 d!1970522))

(check-sat (not b!6278043) (not d!1970316) (not b!6278022) (not b!6277989) (not b!6277969) (not bm!531203) (not b!6277847) (not b!6277849) (not d!1970436) (not d!1970446) (not b!6278087) (not b!6278001) (not d!1970438) (not d!1970400) (not d!1970470) (not b!6277718) (not d!1970494) (not b_lambda!239049) (not bm!531254) (not b!6278095) (not bm!531202) (not b!6278097) (not b_lambda!239051) (not b!6277972) (not b!6278104) (not b!6278085) (not bm!531241) (not b!6277556) (not b!6277391) (not b!6277397) (not b!6277476) (not b!6277990) (not b!6278112) (not b!6277971) (not b!6277549) (not setNonEmpty!42710) (not b!6277291) (not d!1970338) (not b!6277618) (not b!6277785) (not bm!531251) (not d!1970510) (not b!6277190) (not b!6277682) (not b!6277685) (not bm!531238) (not bm!531247) (not d!1970256) (not b!6277920) (not b!6278003) (not b!6278066) (not b!6277194) (not b!6278042) (not b!6277180) (not d!1970248) (not b!6277548) (not b!6277681) (not bm!531243) (not d!1970462) (not d!1970496) (not bm!531253) (not d!1970514) (not b!6277390) (not bm!531196) (not b!6278082) (not b!6277480) (not b!6277684) (not d!1970500) (not b!6278118) (not d!1970482) (not b!6278020) (not b!6277484) (not d!1970282) (not b!6277987) (not d!1970506) (not bm!531176) (not b!6277477) (not b!6277553) (not b!6277395) (not b!6278012) (not b!6277680) (not b!6277899) (not b!6278116) (not b!6277671) (not b!6277192) (not b!6277485) (not d!1970516) (not b!6278034) (not d!1970358) (not b!6277486) (not b!6277848) (not b!6277986) (not b!6278081) (not b!6278096) (not b!6278008) (not b!6277994) (not b!6277890) (not b_lambda!239047) (not b!6277853) (not bm!531164) (not bm!531249) (not b!6278067) (not b!6277394) (not d!1970398) (not d!1970242) (not bm!531245) (not b!6277613) (not bm!531228) (not b!6277947) (not b!6278083) (not d!1970504) (not b!6278011) (not d!1970416) (not b!6278117) (not bm!531257) (not bm!531181) (not b!6277906) (not b!6278052) (not b!6277389) (not d!1970476) (not b!6278113) (not d!1970364) (not b!6277880) (not b!6277850) (not b!6277188) (not d!1970238) (not bm!531252) (not d!1970452) (not bs!1568416) (not b!6278055) (not bm!531256) (not b!6277179) (not b!6278024) (not d!1970372) (not b!6277775) (not d!1970302) (not b!6278025) (not d!1970258) (not b!6277670) (not b!6278061) (not bm!531234) (not b!6278048) (not d!1970318) (not b!6277786) (not b!6277713) (not b!6278069) (not b!6277178) (not b!6278123) (not b!6277974) (not b!6277898) (not b!6277854) (not d!1970392) (not b!6277193) (not b!6278006) (not d!1970464) (not d!1970304) (not b!6278093) (not d!1970406) (not d!1970320) (not bs!1568417) (not b!6277893) (not b!6278044) (not bm!531195) (not b!6278114) (not d!1970488) (not b!6278086) (not b!6277712) (not b!6277970) (not b!6278065) (not bm!531239) (not b!6278068) (not b!6277894) (not b!6277487) (not d!1970512) (not b!6277975) (not b!6278092) (not d!1970290) (not b!6277481) (not b!6278105) (not b!6277478) (not b!6277665) (not b!6277617) (not b!6277993) (not d!1970466) (not b!6277554) tp_is_empty!41647 (not b!6278047) (not d!1970490) (not d!1970454) (not b!6277855) (not d!1970468) (not b!6277666) (not b!6277688) (not b!6277667) (not b!6277177) (not b!6277167) (not d!1970478) (not b!6277292) (not b!6278033) (not b!6277689) (not d!1970306) (not b!6278110) (not d!1970336) (not bs!1568415) (not b!6277195) (not b!6278051) (not b!6278050) (not d!1970442) (not bm!531163) (not b!6277550) (not d!1970322) (not d!1970440) (not b!6277985) (not bm!531230) (not b!6277889) (not d!1970300) (not bm!531232) (not b!6277668) (not b!6277717))
(check-sat)
