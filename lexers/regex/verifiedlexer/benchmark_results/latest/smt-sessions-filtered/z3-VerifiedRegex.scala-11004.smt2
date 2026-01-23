; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570294 () Bool)

(assert start!570294)

(declare-fun b!5438179 () Bool)

(assert (=> b!5438179 true))

(assert (=> b!5438179 true))

(declare-fun lambda!286064 () Int)

(declare-fun lambda!286063 () Int)

(assert (=> b!5438179 (not (= lambda!286064 lambda!286063))))

(assert (=> b!5438179 true))

(assert (=> b!5438179 true))

(declare-fun b!5438165 () Bool)

(assert (=> b!5438165 true))

(declare-fun b!5438161 () Bool)

(declare-fun e!3368989 () Bool)

(declare-fun tp!1499549 () Bool)

(assert (=> b!5438161 (= e!3368989 tp!1499549)))

(declare-fun setIsEmpty!35541 () Bool)

(declare-fun setRes!35541 () Bool)

(assert (=> setIsEmpty!35541 setRes!35541))

(declare-fun b!5438162 () Bool)

(declare-fun e!3368982 () Bool)

(declare-fun tp!1499547 () Bool)

(declare-fun tp!1499553 () Bool)

(assert (=> b!5438162 (= e!3368982 (and tp!1499547 tp!1499553))))

(declare-fun b!5438163 () Bool)

(declare-fun res!2315352 () Bool)

(declare-fun e!3368991 () Bool)

(assert (=> b!5438163 (=> res!2315352 e!3368991)))

(declare-datatypes ((C!30780 0))(
  ( (C!30781 (val!25092 Int)) )
))
(declare-datatypes ((Regex!15255 0))(
  ( (ElementMatch!15255 (c!948819 C!30780)) (Concat!24100 (regOne!31022 Regex!15255) (regTwo!31022 Regex!15255)) (EmptyExpr!15255) (Star!15255 (reg!15584 Regex!15255)) (EmptyLang!15255) (Union!15255 (regOne!31023 Regex!15255) (regTwo!31023 Regex!15255)) )
))
(declare-datatypes ((List!62064 0))(
  ( (Nil!61940) (Cons!61940 (h!68388 Regex!15255) (t!375289 List!62064)) )
))
(declare-datatypes ((Context!9278 0))(
  ( (Context!9279 (exprs!5139 List!62064)) )
))
(declare-datatypes ((List!62065 0))(
  ( (Nil!61941) (Cons!61941 (h!68389 Context!9278) (t!375290 List!62065)) )
))
(declare-fun zl!343 () List!62065)

(get-info :version)

(assert (=> b!5438163 (= res!2315352 (not ((_ is Cons!61940) (exprs!5139 (h!68389 zl!343)))))))

(declare-fun b!5438164 () Bool)

(declare-fun res!2315339 () Bool)

(declare-fun e!3368987 () Bool)

(assert (=> b!5438164 (=> res!2315339 e!3368987)))

(declare-fun isEmpty!33922 (List!62064) Bool)

(assert (=> b!5438164 (= res!2315339 (isEmpty!33922 (t!375289 (exprs!5139 (h!68389 zl!343)))))))

(declare-fun e!3368992 () Bool)

(assert (=> b!5438165 (= e!3368987 e!3368992)))

(declare-fun res!2315349 () Bool)

(assert (=> b!5438165 (=> res!2315349 e!3368992)))

(declare-fun r!7292 () Regex!15255)

(declare-datatypes ((List!62066 0))(
  ( (Nil!61942) (Cons!61942 (h!68390 C!30780) (t!375291 List!62066)) )
))
(declare-fun s!2326 () List!62066)

(assert (=> b!5438165 (= res!2315349 (or (and ((_ is ElementMatch!15255) (regOne!31022 r!7292)) (= (c!948819 (regOne!31022 r!7292)) (h!68390 s!2326))) ((_ is Union!15255) (regOne!31022 r!7292))))))

(declare-datatypes ((Unit!154562 0))(
  ( (Unit!154563) )
))
(declare-fun lt!2218375 () Unit!154562)

(declare-fun e!3368986 () Unit!154562)

(assert (=> b!5438165 (= lt!2218375 e!3368986)))

(declare-fun c!948818 () Bool)

(declare-fun nullable!5424 (Regex!15255) Bool)

(assert (=> b!5438165 (= c!948818 (nullable!5424 (h!68388 (exprs!5139 (h!68389 zl!343)))))))

(declare-fun lambda!286065 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9278))

(declare-fun flatMap!982 ((InoxSet Context!9278) Int) (InoxSet Context!9278))

(declare-fun derivationStepZipperUp!627 (Context!9278 C!30780) (InoxSet Context!9278))

(assert (=> b!5438165 (= (flatMap!982 z!1189 lambda!286065) (derivationStepZipperUp!627 (h!68389 zl!343) (h!68390 s!2326)))))

(declare-fun lt!2218371 () Unit!154562)

(declare-fun lemmaFlatMapOnSingletonSet!514 ((InoxSet Context!9278) Context!9278 Int) Unit!154562)

(assert (=> b!5438165 (= lt!2218371 (lemmaFlatMapOnSingletonSet!514 z!1189 (h!68389 zl!343) lambda!286065))))

(declare-fun lt!2218370 () (InoxSet Context!9278))

(declare-fun lt!2218368 () Context!9278)

(assert (=> b!5438165 (= lt!2218370 (derivationStepZipperUp!627 lt!2218368 (h!68390 s!2326)))))

(declare-fun lt!2218382 () (InoxSet Context!9278))

(declare-fun derivationStepZipperDown!703 (Regex!15255 Context!9278 C!30780) (InoxSet Context!9278))

(assert (=> b!5438165 (= lt!2218382 (derivationStepZipperDown!703 (h!68388 (exprs!5139 (h!68389 zl!343))) lt!2218368 (h!68390 s!2326)))))

(assert (=> b!5438165 (= lt!2218368 (Context!9279 (t!375289 (exprs!5139 (h!68389 zl!343)))))))

(declare-fun lt!2218380 () (InoxSet Context!9278))

(assert (=> b!5438165 (= lt!2218380 (derivationStepZipperUp!627 (Context!9279 (Cons!61940 (h!68388 (exprs!5139 (h!68389 zl!343))) (t!375289 (exprs!5139 (h!68389 zl!343))))) (h!68390 s!2326)))))

(declare-fun e!3368990 () Bool)

(declare-fun b!5438166 () Bool)

(declare-fun tp!1499545 () Bool)

(declare-fun e!3368984 () Bool)

(declare-fun inv!81384 (Context!9278) Bool)

(assert (=> b!5438166 (= e!3368990 (and (inv!81384 (h!68389 zl!343)) e!3368984 tp!1499545))))

(declare-fun b!5438167 () Bool)

(declare-fun res!2315354 () Bool)

(assert (=> b!5438167 (=> res!2315354 e!3368992)))

(assert (=> b!5438167 (= res!2315354 (or ((_ is Concat!24100) (regOne!31022 r!7292)) ((_ is Star!15255) (regOne!31022 r!7292)) (not ((_ is EmptyExpr!15255) (regOne!31022 r!7292)))))))

(declare-fun b!5438168 () Bool)

(declare-fun e!3368981 () Bool)

(assert (=> b!5438168 (= e!3368981 (nullable!5424 (regOne!31022 (regOne!31022 r!7292))))))

(declare-fun setElem!35541 () Context!9278)

(declare-fun tp!1499544 () Bool)

(declare-fun setNonEmpty!35541 () Bool)

(assert (=> setNonEmpty!35541 (= setRes!35541 (and tp!1499544 (inv!81384 setElem!35541) e!3368989))))

(declare-fun setRest!35541 () (InoxSet Context!9278))

(assert (=> setNonEmpty!35541 (= z!1189 ((_ map or) (store ((as const (Array Context!9278 Bool)) false) setElem!35541 true) setRest!35541))))

(declare-fun b!5438169 () Bool)

(declare-fun res!2315343 () Bool)

(assert (=> b!5438169 (=> res!2315343 e!3368991)))

(declare-fun isEmpty!33923 (List!62065) Bool)

(assert (=> b!5438169 (= res!2315343 (not (isEmpty!33923 (t!375290 zl!343))))))

(declare-fun b!5438170 () Bool)

(declare-fun e!3368980 () Bool)

(declare-fun matchZipper!1499 ((InoxSet Context!9278) List!62066) Bool)

(assert (=> b!5438170 (= e!3368980 (matchZipper!1499 lt!2218370 (t!375291 s!2326)))))

(declare-fun b!5438171 () Bool)

(declare-fun tp!1499548 () Bool)

(declare-fun tp!1499546 () Bool)

(assert (=> b!5438171 (= e!3368982 (and tp!1499548 tp!1499546))))

(declare-fun b!5438172 () Bool)

(declare-fun res!2315344 () Bool)

(assert (=> b!5438172 (=> res!2315344 e!3368991)))

(declare-fun generalisedConcat!924 (List!62064) Regex!15255)

(assert (=> b!5438172 (= res!2315344 (not (= r!7292 (generalisedConcat!924 (exprs!5139 (h!68389 zl!343))))))))

(declare-fun b!5438173 () Bool)

(declare-fun e!3368985 () Bool)

(declare-fun validRegex!6991 (Regex!15255) Bool)

(assert (=> b!5438173 (= e!3368985 (validRegex!6991 (regTwo!31022 r!7292)))))

(declare-fun matchR!7440 (Regex!15255 List!62066) Bool)

(declare-fun matchRSpec!2358 (Regex!15255 List!62066) Bool)

(assert (=> b!5438173 (= (matchR!7440 (regTwo!31022 r!7292) s!2326) (matchRSpec!2358 (regTwo!31022 r!7292) s!2326))))

(declare-fun lt!2218374 () Unit!154562)

(declare-fun mainMatchTheorem!2358 (Regex!15255 List!62066) Unit!154562)

(assert (=> b!5438173 (= lt!2218374 (mainMatchTheorem!2358 (regTwo!31022 r!7292) s!2326))))

(assert (=> b!5438173 (= (matchR!7440 (regOne!31022 r!7292) s!2326) (matchRSpec!2358 (regOne!31022 r!7292) s!2326))))

(declare-fun lt!2218378 () Unit!154562)

(assert (=> b!5438173 (= lt!2218378 (mainMatchTheorem!2358 (regOne!31022 r!7292) s!2326))))

(declare-fun b!5438174 () Bool)

(assert (=> b!5438174 (= e!3368992 e!3368985)))

(declare-fun res!2315350 () Bool)

(assert (=> b!5438174 (=> res!2315350 e!3368985)))

(assert (=> b!5438174 (= res!2315350 (or (not (= lt!2218382 ((as const (Array Context!9278 Bool)) false))) (not (= r!7292 (Concat!24100 (regOne!31022 r!7292) (regTwo!31022 r!7292)))) (not (= (regOne!31022 r!7292) EmptyExpr!15255))))))

(assert (=> b!5438174 (not (matchZipper!1499 lt!2218382 (t!375291 s!2326)))))

(declare-fun lt!2218369 () Unit!154562)

(declare-fun lemmaEmptyZipperMatchesNothing!10 ((InoxSet Context!9278) List!62066) Unit!154562)

(assert (=> b!5438174 (= lt!2218369 (lemmaEmptyZipperMatchesNothing!10 lt!2218382 (t!375291 s!2326)))))

(declare-fun b!5438175 () Bool)

(declare-fun e!3368983 () Bool)

(assert (=> b!5438175 (= e!3368983 (not e!3368991))))

(declare-fun res!2315341 () Bool)

(assert (=> b!5438175 (=> res!2315341 e!3368991)))

(assert (=> b!5438175 (= res!2315341 (not ((_ is Cons!61941) zl!343)))))

(declare-fun lt!2218372 () Bool)

(assert (=> b!5438175 (= lt!2218372 (matchRSpec!2358 r!7292 s!2326))))

(assert (=> b!5438175 (= lt!2218372 (matchR!7440 r!7292 s!2326))))

(declare-fun lt!2218379 () Unit!154562)

(assert (=> b!5438175 (= lt!2218379 (mainMatchTheorem!2358 r!7292 s!2326))))

(declare-fun b!5438176 () Bool)

(declare-fun e!3368988 () Bool)

(declare-fun tp_is_empty!39763 () Bool)

(declare-fun tp!1499551 () Bool)

(assert (=> b!5438176 (= e!3368988 (and tp_is_empty!39763 tp!1499551))))

(declare-fun b!5438177 () Bool)

(assert (=> b!5438177 (= e!3368982 tp_is_empty!39763)))

(declare-fun b!5438178 () Bool)

(declare-fun Unit!154564 () Unit!154562)

(assert (=> b!5438178 (= e!3368986 Unit!154564)))

(assert (=> b!5438179 (= e!3368991 e!3368987)))

(declare-fun res!2315348 () Bool)

(assert (=> b!5438179 (=> res!2315348 e!3368987)))

(declare-fun lt!2218373 () Bool)

(assert (=> b!5438179 (= res!2315348 (or (not (= lt!2218372 lt!2218373)) ((_ is Nil!61942) s!2326)))))

(declare-fun Exists!2436 (Int) Bool)

(assert (=> b!5438179 (= (Exists!2436 lambda!286063) (Exists!2436 lambda!286064))))

(declare-fun lt!2218381 () Unit!154562)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1090 (Regex!15255 Regex!15255 List!62066) Unit!154562)

(assert (=> b!5438179 (= lt!2218381 (lemmaExistCutMatchRandMatchRSpecEquivalent!1090 (regOne!31022 r!7292) (regTwo!31022 r!7292) s!2326))))

(assert (=> b!5438179 (= lt!2218373 (Exists!2436 lambda!286063))))

(declare-datatypes ((tuple2!64908 0))(
  ( (tuple2!64909 (_1!35757 List!62066) (_2!35757 List!62066)) )
))
(declare-datatypes ((Option!15366 0))(
  ( (None!15365) (Some!15365 (v!51394 tuple2!64908)) )
))
(declare-fun isDefined!12069 (Option!15366) Bool)

(declare-fun findConcatSeparation!1780 (Regex!15255 Regex!15255 List!62066 List!62066 List!62066) Option!15366)

(assert (=> b!5438179 (= lt!2218373 (isDefined!12069 (findConcatSeparation!1780 (regOne!31022 r!7292) (regTwo!31022 r!7292) Nil!61942 s!2326 s!2326)))))

(declare-fun lt!2218377 () Unit!154562)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1544 (Regex!15255 Regex!15255 List!62066) Unit!154562)

(assert (=> b!5438179 (= lt!2218377 (lemmaFindConcatSeparationEquivalentToExists!1544 (regOne!31022 r!7292) (regTwo!31022 r!7292) s!2326))))

(declare-fun b!5438180 () Bool)

(declare-fun res!2315345 () Bool)

(assert (=> b!5438180 (=> (not res!2315345) (not e!3368983))))

(declare-fun unfocusZipper!997 (List!62065) Regex!15255)

(assert (=> b!5438180 (= res!2315345 (= r!7292 (unfocusZipper!997 zl!343)))))

(declare-fun b!5438181 () Bool)

(declare-fun res!2315351 () Bool)

(assert (=> b!5438181 (=> res!2315351 e!3368991)))

(assert (=> b!5438181 (= res!2315351 (or ((_ is EmptyExpr!15255) r!7292) ((_ is EmptyLang!15255) r!7292) ((_ is ElementMatch!15255) r!7292) ((_ is Union!15255) r!7292) (not ((_ is Concat!24100) r!7292))))))

(declare-fun b!5438182 () Bool)

(declare-fun res!2315355 () Bool)

(assert (=> b!5438182 (=> res!2315355 e!3368992)))

(assert (=> b!5438182 (= res!2315355 e!3368981)))

(declare-fun res!2315342 () Bool)

(assert (=> b!5438182 (=> (not res!2315342) (not e!3368981))))

(assert (=> b!5438182 (= res!2315342 ((_ is Concat!24100) (regOne!31022 r!7292)))))

(declare-fun b!5438183 () Bool)

(declare-fun tp!1499552 () Bool)

(assert (=> b!5438183 (= e!3368982 tp!1499552)))

(declare-fun b!5438184 () Bool)

(declare-fun tp!1499550 () Bool)

(assert (=> b!5438184 (= e!3368984 tp!1499550)))

(declare-fun b!5438185 () Bool)

(declare-fun res!2315347 () Bool)

(assert (=> b!5438185 (=> res!2315347 e!3368991)))

(declare-fun generalisedUnion!1184 (List!62064) Regex!15255)

(declare-fun unfocusZipperList!697 (List!62065) List!62064)

(assert (=> b!5438185 (= res!2315347 (not (= r!7292 (generalisedUnion!1184 (unfocusZipperList!697 zl!343)))))))

(declare-fun res!2315353 () Bool)

(assert (=> start!570294 (=> (not res!2315353) (not e!3368983))))

(assert (=> start!570294 (= res!2315353 (validRegex!6991 r!7292))))

(assert (=> start!570294 e!3368983))

(assert (=> start!570294 e!3368982))

(declare-fun condSetEmpty!35541 () Bool)

(assert (=> start!570294 (= condSetEmpty!35541 (= z!1189 ((as const (Array Context!9278 Bool)) false)))))

(assert (=> start!570294 setRes!35541))

(assert (=> start!570294 e!3368990))

(assert (=> start!570294 e!3368988))

(declare-fun b!5438186 () Bool)

(declare-fun res!2315340 () Bool)

(assert (=> b!5438186 (=> (not res!2315340) (not e!3368983))))

(declare-fun toList!9039 ((InoxSet Context!9278)) List!62065)

(assert (=> b!5438186 (= res!2315340 (= (toList!9039 z!1189) zl!343))))

(declare-fun b!5438187 () Bool)

(declare-fun Unit!154565 () Unit!154562)

(assert (=> b!5438187 (= e!3368986 Unit!154565)))

(declare-fun lt!2218376 () Unit!154562)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!492 ((InoxSet Context!9278) (InoxSet Context!9278) List!62066) Unit!154562)

(assert (=> b!5438187 (= lt!2218376 (lemmaZipperConcatMatchesSameAsBothZippers!492 lt!2218382 lt!2218370 (t!375291 s!2326)))))

(declare-fun res!2315346 () Bool)

(assert (=> b!5438187 (= res!2315346 (matchZipper!1499 lt!2218382 (t!375291 s!2326)))))

(assert (=> b!5438187 (=> res!2315346 e!3368980)))

(assert (=> b!5438187 (= (matchZipper!1499 ((_ map or) lt!2218382 lt!2218370) (t!375291 s!2326)) e!3368980)))

(assert (= (and start!570294 res!2315353) b!5438186))

(assert (= (and b!5438186 res!2315340) b!5438180))

(assert (= (and b!5438180 res!2315345) b!5438175))

(assert (= (and b!5438175 (not res!2315341)) b!5438169))

(assert (= (and b!5438169 (not res!2315343)) b!5438172))

(assert (= (and b!5438172 (not res!2315344)) b!5438163))

(assert (= (and b!5438163 (not res!2315352)) b!5438185))

(assert (= (and b!5438185 (not res!2315347)) b!5438181))

(assert (= (and b!5438181 (not res!2315351)) b!5438179))

(assert (= (and b!5438179 (not res!2315348)) b!5438164))

(assert (= (and b!5438164 (not res!2315339)) b!5438165))

(assert (= (and b!5438165 c!948818) b!5438187))

(assert (= (and b!5438165 (not c!948818)) b!5438178))

(assert (= (and b!5438187 (not res!2315346)) b!5438170))

(assert (= (and b!5438165 (not res!2315349)) b!5438182))

(assert (= (and b!5438182 res!2315342) b!5438168))

(assert (= (and b!5438182 (not res!2315355)) b!5438167))

(assert (= (and b!5438167 (not res!2315354)) b!5438174))

(assert (= (and b!5438174 (not res!2315350)) b!5438173))

(assert (= (and start!570294 ((_ is ElementMatch!15255) r!7292)) b!5438177))

(assert (= (and start!570294 ((_ is Concat!24100) r!7292)) b!5438162))

(assert (= (and start!570294 ((_ is Star!15255) r!7292)) b!5438183))

(assert (= (and start!570294 ((_ is Union!15255) r!7292)) b!5438171))

(assert (= (and start!570294 condSetEmpty!35541) setIsEmpty!35541))

(assert (= (and start!570294 (not condSetEmpty!35541)) setNonEmpty!35541))

(assert (= setNonEmpty!35541 b!5438161))

(assert (= b!5438166 b!5438184))

(assert (= (and start!570294 ((_ is Cons!61941) zl!343)) b!5438166))

(assert (= (and start!570294 ((_ is Cons!61942) s!2326)) b!5438176))

(declare-fun m!6459894 () Bool)

(assert (=> b!5438168 m!6459894))

(declare-fun m!6459896 () Bool)

(assert (=> b!5438172 m!6459896))

(declare-fun m!6459898 () Bool)

(assert (=> b!5438170 m!6459898))

(declare-fun m!6459900 () Bool)

(assert (=> b!5438180 m!6459900))

(declare-fun m!6459902 () Bool)

(assert (=> b!5438164 m!6459902))

(declare-fun m!6459904 () Bool)

(assert (=> b!5438169 m!6459904))

(declare-fun m!6459906 () Bool)

(assert (=> b!5438175 m!6459906))

(declare-fun m!6459908 () Bool)

(assert (=> b!5438175 m!6459908))

(declare-fun m!6459910 () Bool)

(assert (=> b!5438175 m!6459910))

(declare-fun m!6459912 () Bool)

(assert (=> b!5438173 m!6459912))

(declare-fun m!6459914 () Bool)

(assert (=> b!5438173 m!6459914))

(declare-fun m!6459916 () Bool)

(assert (=> b!5438173 m!6459916))

(declare-fun m!6459918 () Bool)

(assert (=> b!5438173 m!6459918))

(declare-fun m!6459920 () Bool)

(assert (=> b!5438173 m!6459920))

(declare-fun m!6459922 () Bool)

(assert (=> b!5438173 m!6459922))

(declare-fun m!6459924 () Bool)

(assert (=> b!5438173 m!6459924))

(declare-fun m!6459926 () Bool)

(assert (=> b!5438174 m!6459926))

(declare-fun m!6459928 () Bool)

(assert (=> b!5438174 m!6459928))

(declare-fun m!6459930 () Bool)

(assert (=> setNonEmpty!35541 m!6459930))

(declare-fun m!6459932 () Bool)

(assert (=> b!5438166 m!6459932))

(declare-fun m!6459934 () Bool)

(assert (=> b!5438185 m!6459934))

(assert (=> b!5438185 m!6459934))

(declare-fun m!6459936 () Bool)

(assert (=> b!5438185 m!6459936))

(declare-fun m!6459938 () Bool)

(assert (=> b!5438179 m!6459938))

(declare-fun m!6459940 () Bool)

(assert (=> b!5438179 m!6459940))

(declare-fun m!6459942 () Bool)

(assert (=> b!5438179 m!6459942))

(declare-fun m!6459944 () Bool)

(assert (=> b!5438179 m!6459944))

(declare-fun m!6459946 () Bool)

(assert (=> b!5438179 m!6459946))

(assert (=> b!5438179 m!6459944))

(assert (=> b!5438179 m!6459938))

(declare-fun m!6459948 () Bool)

(assert (=> b!5438179 m!6459948))

(declare-fun m!6459950 () Bool)

(assert (=> b!5438187 m!6459950))

(assert (=> b!5438187 m!6459926))

(declare-fun m!6459952 () Bool)

(assert (=> b!5438187 m!6459952))

(declare-fun m!6459954 () Bool)

(assert (=> b!5438186 m!6459954))

(declare-fun m!6459956 () Bool)

(assert (=> start!570294 m!6459956))

(declare-fun m!6459958 () Bool)

(assert (=> b!5438165 m!6459958))

(declare-fun m!6459960 () Bool)

(assert (=> b!5438165 m!6459960))

(declare-fun m!6459962 () Bool)

(assert (=> b!5438165 m!6459962))

(declare-fun m!6459964 () Bool)

(assert (=> b!5438165 m!6459964))

(declare-fun m!6459966 () Bool)

(assert (=> b!5438165 m!6459966))

(declare-fun m!6459968 () Bool)

(assert (=> b!5438165 m!6459968))

(declare-fun m!6459970 () Bool)

(assert (=> b!5438165 m!6459970))

(check-sat (not b!5438166) (not b!5438171) (not start!570294) tp_is_empty!39763 (not b!5438187) (not setNonEmpty!35541) (not b!5438173) (not b!5438185) (not b!5438170) (not b!5438184) (not b!5438180) (not b!5438175) (not b!5438186) (not b!5438168) (not b!5438176) (not b!5438164) (not b!5438165) (not b!5438174) (not b!5438162) (not b!5438169) (not b!5438179) (not b!5438161) (not b!5438172) (not b!5438183))
(check-sat)
(get-model)

(declare-fun d!1732353 () Bool)

(declare-fun lt!2218388 () Regex!15255)

(assert (=> d!1732353 (validRegex!6991 lt!2218388)))

(assert (=> d!1732353 (= lt!2218388 (generalisedUnion!1184 (unfocusZipperList!697 zl!343)))))

(assert (=> d!1732353 (= (unfocusZipper!997 zl!343) lt!2218388)))

(declare-fun bs!1254932 () Bool)

(assert (= bs!1254932 d!1732353))

(declare-fun m!6459994 () Bool)

(assert (=> bs!1254932 m!6459994))

(assert (=> bs!1254932 m!6459934))

(assert (=> bs!1254932 m!6459934))

(assert (=> bs!1254932 m!6459936))

(assert (=> b!5438180 d!1732353))

(declare-fun d!1732355 () Bool)

(assert (=> d!1732355 (= (isEmpty!33923 (t!375290 zl!343)) ((_ is Nil!61941) (t!375290 zl!343)))))

(assert (=> b!5438169 d!1732355))

(declare-fun d!1732357 () Bool)

(declare-fun c!948838 () Bool)

(declare-fun isEmpty!33925 (List!62066) Bool)

(assert (=> d!1732357 (= c!948838 (isEmpty!33925 (t!375291 s!2326)))))

(declare-fun e!3369027 () Bool)

(assert (=> d!1732357 (= (matchZipper!1499 lt!2218370 (t!375291 s!2326)) e!3369027)))

(declare-fun b!5438252 () Bool)

(declare-fun nullableZipper!1472 ((InoxSet Context!9278)) Bool)

(assert (=> b!5438252 (= e!3369027 (nullableZipper!1472 lt!2218370))))

(declare-fun b!5438253 () Bool)

(declare-fun derivationStepZipper!1484 ((InoxSet Context!9278) C!30780) (InoxSet Context!9278))

(declare-fun head!11661 (List!62066) C!30780)

(declare-fun tail!10758 (List!62066) List!62066)

(assert (=> b!5438253 (= e!3369027 (matchZipper!1499 (derivationStepZipper!1484 lt!2218370 (head!11661 (t!375291 s!2326))) (tail!10758 (t!375291 s!2326))))))

(assert (= (and d!1732357 c!948838) b!5438252))

(assert (= (and d!1732357 (not c!948838)) b!5438253))

(declare-fun m!6460004 () Bool)

(assert (=> d!1732357 m!6460004))

(declare-fun m!6460006 () Bool)

(assert (=> b!5438252 m!6460006))

(declare-fun m!6460008 () Bool)

(assert (=> b!5438253 m!6460008))

(assert (=> b!5438253 m!6460008))

(declare-fun m!6460010 () Bool)

(assert (=> b!5438253 m!6460010))

(declare-fun m!6460012 () Bool)

(assert (=> b!5438253 m!6460012))

(assert (=> b!5438253 m!6460010))

(assert (=> b!5438253 m!6460012))

(declare-fun m!6460014 () Bool)

(assert (=> b!5438253 m!6460014))

(assert (=> b!5438170 d!1732357))

(declare-fun d!1732361 () Bool)

(declare-fun lambda!286077 () Int)

(declare-fun forall!14572 (List!62064 Int) Bool)

(assert (=> d!1732361 (= (inv!81384 setElem!35541) (forall!14572 (exprs!5139 setElem!35541) lambda!286077))))

(declare-fun bs!1254936 () Bool)

(assert (= bs!1254936 d!1732361))

(declare-fun m!6460016 () Bool)

(assert (=> bs!1254936 m!6460016))

(assert (=> setNonEmpty!35541 d!1732361))

(declare-fun b!5438375 () Bool)

(declare-fun lt!2218413 () Unit!154562)

(declare-fun lt!2218414 () Unit!154562)

(assert (=> b!5438375 (= lt!2218413 lt!2218414)))

(declare-fun ++!13619 (List!62066 List!62066) List!62066)

(assert (=> b!5438375 (= (++!13619 (++!13619 Nil!61942 (Cons!61942 (h!68390 s!2326) Nil!61942)) (t!375291 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1866 (List!62066 C!30780 List!62066 List!62066) Unit!154562)

(assert (=> b!5438375 (= lt!2218414 (lemmaMoveElementToOtherListKeepsConcatEq!1866 Nil!61942 (h!68390 s!2326) (t!375291 s!2326) s!2326))))

(declare-fun e!3369096 () Option!15366)

(assert (=> b!5438375 (= e!3369096 (findConcatSeparation!1780 (regOne!31022 r!7292) (regTwo!31022 r!7292) (++!13619 Nil!61942 (Cons!61942 (h!68390 s!2326) Nil!61942)) (t!375291 s!2326) s!2326))))

(declare-fun b!5438376 () Bool)

(declare-fun res!2315426 () Bool)

(declare-fun e!3369098 () Bool)

(assert (=> b!5438376 (=> (not res!2315426) (not e!3369098))))

(declare-fun lt!2218415 () Option!15366)

(declare-fun get!21358 (Option!15366) tuple2!64908)

(assert (=> b!5438376 (= res!2315426 (matchR!7440 (regOne!31022 r!7292) (_1!35757 (get!21358 lt!2218415))))))

(declare-fun b!5438377 () Bool)

(assert (=> b!5438377 (= e!3369096 None!15365)))

(declare-fun b!5438378 () Bool)

(declare-fun e!3369097 () Bool)

(assert (=> b!5438378 (= e!3369097 (matchR!7440 (regTwo!31022 r!7292) s!2326))))

(declare-fun b!5438379 () Bool)

(declare-fun e!3369095 () Option!15366)

(assert (=> b!5438379 (= e!3369095 (Some!15365 (tuple2!64909 Nil!61942 s!2326)))))

(declare-fun b!5438380 () Bool)

(assert (=> b!5438380 (= e!3369095 e!3369096)))

(declare-fun c!948877 () Bool)

(assert (=> b!5438380 (= c!948877 ((_ is Nil!61942) s!2326))))

(declare-fun d!1732363 () Bool)

(declare-fun e!3369099 () Bool)

(assert (=> d!1732363 e!3369099))

(declare-fun res!2315425 () Bool)

(assert (=> d!1732363 (=> res!2315425 e!3369099)))

(assert (=> d!1732363 (= res!2315425 e!3369098)))

(declare-fun res!2315424 () Bool)

(assert (=> d!1732363 (=> (not res!2315424) (not e!3369098))))

(assert (=> d!1732363 (= res!2315424 (isDefined!12069 lt!2218415))))

(assert (=> d!1732363 (= lt!2218415 e!3369095)))

(declare-fun c!948878 () Bool)

(assert (=> d!1732363 (= c!948878 e!3369097)))

(declare-fun res!2315423 () Bool)

(assert (=> d!1732363 (=> (not res!2315423) (not e!3369097))))

(assert (=> d!1732363 (= res!2315423 (matchR!7440 (regOne!31022 r!7292) Nil!61942))))

(assert (=> d!1732363 (validRegex!6991 (regOne!31022 r!7292))))

(assert (=> d!1732363 (= (findConcatSeparation!1780 (regOne!31022 r!7292) (regTwo!31022 r!7292) Nil!61942 s!2326 s!2326) lt!2218415)))

(declare-fun b!5438381 () Bool)

(assert (=> b!5438381 (= e!3369099 (not (isDefined!12069 lt!2218415)))))

(declare-fun b!5438382 () Bool)

(assert (=> b!5438382 (= e!3369098 (= (++!13619 (_1!35757 (get!21358 lt!2218415)) (_2!35757 (get!21358 lt!2218415))) s!2326))))

(declare-fun b!5438383 () Bool)

(declare-fun res!2315427 () Bool)

(assert (=> b!5438383 (=> (not res!2315427) (not e!3369098))))

(assert (=> b!5438383 (= res!2315427 (matchR!7440 (regTwo!31022 r!7292) (_2!35757 (get!21358 lt!2218415))))))

(assert (= (and d!1732363 res!2315423) b!5438378))

(assert (= (and d!1732363 c!948878) b!5438379))

(assert (= (and d!1732363 (not c!948878)) b!5438380))

(assert (= (and b!5438380 c!948877) b!5438377))

(assert (= (and b!5438380 (not c!948877)) b!5438375))

(assert (= (and d!1732363 res!2315424) b!5438376))

(assert (= (and b!5438376 res!2315426) b!5438383))

(assert (= (and b!5438383 res!2315427) b!5438382))

(assert (= (and d!1732363 (not res!2315425)) b!5438381))

(declare-fun m!6460084 () Bool)

(assert (=> b!5438375 m!6460084))

(assert (=> b!5438375 m!6460084))

(declare-fun m!6460086 () Bool)

(assert (=> b!5438375 m!6460086))

(declare-fun m!6460088 () Bool)

(assert (=> b!5438375 m!6460088))

(assert (=> b!5438375 m!6460084))

(declare-fun m!6460090 () Bool)

(assert (=> b!5438375 m!6460090))

(declare-fun m!6460092 () Bool)

(assert (=> b!5438381 m!6460092))

(assert (=> b!5438378 m!6459912))

(declare-fun m!6460094 () Bool)

(assert (=> b!5438376 m!6460094))

(declare-fun m!6460096 () Bool)

(assert (=> b!5438376 m!6460096))

(assert (=> d!1732363 m!6460092))

(declare-fun m!6460098 () Bool)

(assert (=> d!1732363 m!6460098))

(declare-fun m!6460100 () Bool)

(assert (=> d!1732363 m!6460100))

(assert (=> b!5438383 m!6460094))

(declare-fun m!6460102 () Bool)

(assert (=> b!5438383 m!6460102))

(assert (=> b!5438382 m!6460094))

(declare-fun m!6460104 () Bool)

(assert (=> b!5438382 m!6460104))

(assert (=> b!5438179 d!1732363))

(declare-fun d!1732387 () Bool)

(declare-fun choose!41240 (Int) Bool)

(assert (=> d!1732387 (= (Exists!2436 lambda!286063) (choose!41240 lambda!286063))))

(declare-fun bs!1254945 () Bool)

(assert (= bs!1254945 d!1732387))

(declare-fun m!6460106 () Bool)

(assert (=> bs!1254945 m!6460106))

(assert (=> b!5438179 d!1732387))

(declare-fun d!1732389 () Bool)

(assert (=> d!1732389 (= (Exists!2436 lambda!286064) (choose!41240 lambda!286064))))

(declare-fun bs!1254946 () Bool)

(assert (= bs!1254946 d!1732389))

(declare-fun m!6460108 () Bool)

(assert (=> bs!1254946 m!6460108))

(assert (=> b!5438179 d!1732389))

(declare-fun bs!1254955 () Bool)

(declare-fun d!1732391 () Bool)

(assert (= bs!1254955 (and d!1732391 b!5438179)))

(declare-fun lambda!286088 () Int)

(assert (=> bs!1254955 (= lambda!286088 lambda!286063)))

(assert (=> bs!1254955 (not (= lambda!286088 lambda!286064))))

(assert (=> d!1732391 true))

(assert (=> d!1732391 true))

(assert (=> d!1732391 true))

(assert (=> d!1732391 (= (isDefined!12069 (findConcatSeparation!1780 (regOne!31022 r!7292) (regTwo!31022 r!7292) Nil!61942 s!2326 s!2326)) (Exists!2436 lambda!286088))))

(declare-fun lt!2218421 () Unit!154562)

(declare-fun choose!41241 (Regex!15255 Regex!15255 List!62066) Unit!154562)

(assert (=> d!1732391 (= lt!2218421 (choose!41241 (regOne!31022 r!7292) (regTwo!31022 r!7292) s!2326))))

(assert (=> d!1732391 (validRegex!6991 (regOne!31022 r!7292))))

(assert (=> d!1732391 (= (lemmaFindConcatSeparationEquivalentToExists!1544 (regOne!31022 r!7292) (regTwo!31022 r!7292) s!2326) lt!2218421)))

(declare-fun bs!1254960 () Bool)

(assert (= bs!1254960 d!1732391))

(declare-fun m!6460136 () Bool)

(assert (=> bs!1254960 m!6460136))

(declare-fun m!6460138 () Bool)

(assert (=> bs!1254960 m!6460138))

(assert (=> bs!1254960 m!6460100))

(assert (=> bs!1254960 m!6459938))

(assert (=> bs!1254960 m!6459938))

(assert (=> bs!1254960 m!6459940))

(assert (=> b!5438179 d!1732391))

(declare-fun bs!1254974 () Bool)

(declare-fun d!1732403 () Bool)

(assert (= bs!1254974 (and d!1732403 b!5438179)))

(declare-fun lambda!286096 () Int)

(assert (=> bs!1254974 (= lambda!286096 lambda!286063)))

(assert (=> bs!1254974 (not (= lambda!286096 lambda!286064))))

(declare-fun bs!1254977 () Bool)

(assert (= bs!1254977 (and d!1732403 d!1732391)))

(assert (=> bs!1254977 (= lambda!286096 lambda!286088)))

(assert (=> d!1732403 true))

(assert (=> d!1732403 true))

(assert (=> d!1732403 true))

(declare-fun lambda!286097 () Int)

(assert (=> bs!1254974 (not (= lambda!286097 lambda!286063))))

(assert (=> bs!1254974 (= lambda!286097 lambda!286064)))

(assert (=> bs!1254977 (not (= lambda!286097 lambda!286088))))

(declare-fun bs!1254978 () Bool)

(assert (= bs!1254978 d!1732403))

(assert (=> bs!1254978 (not (= lambda!286097 lambda!286096))))

(assert (=> d!1732403 true))

(assert (=> d!1732403 true))

(assert (=> d!1732403 true))

(assert (=> d!1732403 (= (Exists!2436 lambda!286096) (Exists!2436 lambda!286097))))

(declare-fun lt!2218437 () Unit!154562)

(declare-fun choose!41242 (Regex!15255 Regex!15255 List!62066) Unit!154562)

(assert (=> d!1732403 (= lt!2218437 (choose!41242 (regOne!31022 r!7292) (regTwo!31022 r!7292) s!2326))))

(assert (=> d!1732403 (validRegex!6991 (regOne!31022 r!7292))))

(assert (=> d!1732403 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1090 (regOne!31022 r!7292) (regTwo!31022 r!7292) s!2326) lt!2218437)))

(declare-fun m!6460200 () Bool)

(assert (=> bs!1254978 m!6460200))

(declare-fun m!6460202 () Bool)

(assert (=> bs!1254978 m!6460202))

(declare-fun m!6460204 () Bool)

(assert (=> bs!1254978 m!6460204))

(assert (=> bs!1254978 m!6460100))

(assert (=> b!5438179 d!1732403))

(declare-fun d!1732425 () Bool)

(declare-fun isEmpty!33926 (Option!15366) Bool)

(assert (=> d!1732425 (= (isDefined!12069 (findConcatSeparation!1780 (regOne!31022 r!7292) (regTwo!31022 r!7292) Nil!61942 s!2326 s!2326)) (not (isEmpty!33926 (findConcatSeparation!1780 (regOne!31022 r!7292) (regTwo!31022 r!7292) Nil!61942 s!2326 s!2326))))))

(declare-fun bs!1254979 () Bool)

(assert (= bs!1254979 d!1732425))

(assert (=> bs!1254979 m!6459938))

(declare-fun m!6460206 () Bool)

(assert (=> bs!1254979 m!6460206))

(assert (=> b!5438179 d!1732425))

(declare-fun d!1732427 () Bool)

(declare-fun nullableFct!1623 (Regex!15255) Bool)

(assert (=> d!1732427 (= (nullable!5424 (regOne!31022 (regOne!31022 r!7292))) (nullableFct!1623 (regOne!31022 (regOne!31022 r!7292))))))

(declare-fun bs!1254980 () Bool)

(assert (= bs!1254980 d!1732427))

(declare-fun m!6460208 () Bool)

(assert (=> bs!1254980 m!6460208))

(assert (=> b!5438168 d!1732427))

(declare-fun bs!1254981 () Bool)

(declare-fun d!1732429 () Bool)

(assert (= bs!1254981 (and d!1732429 d!1732361)))

(declare-fun lambda!286100 () Int)

(assert (=> bs!1254981 (= lambda!286100 lambda!286077)))

(assert (=> d!1732429 (= (inv!81384 (h!68389 zl!343)) (forall!14572 (exprs!5139 (h!68389 zl!343)) lambda!286100))))

(declare-fun bs!1254982 () Bool)

(assert (= bs!1254982 d!1732429))

(declare-fun m!6460210 () Bool)

(assert (=> bs!1254982 m!6460210))

(assert (=> b!5438166 d!1732429))

(declare-fun d!1732431 () Bool)

(declare-fun e!3369202 () Bool)

(assert (=> d!1732431 (= (matchZipper!1499 ((_ map or) lt!2218382 lt!2218370) (t!375291 s!2326)) e!3369202)))

(declare-fun res!2315510 () Bool)

(assert (=> d!1732431 (=> res!2315510 e!3369202)))

(assert (=> d!1732431 (= res!2315510 (matchZipper!1499 lt!2218382 (t!375291 s!2326)))))

(declare-fun lt!2218445 () Unit!154562)

(declare-fun choose!41243 ((InoxSet Context!9278) (InoxSet Context!9278) List!62066) Unit!154562)

(assert (=> d!1732431 (= lt!2218445 (choose!41243 lt!2218382 lt!2218370 (t!375291 s!2326)))))

(assert (=> d!1732431 (= (lemmaZipperConcatMatchesSameAsBothZippers!492 lt!2218382 lt!2218370 (t!375291 s!2326)) lt!2218445)))

(declare-fun b!5438554 () Bool)

(assert (=> b!5438554 (= e!3369202 (matchZipper!1499 lt!2218370 (t!375291 s!2326)))))

(assert (= (and d!1732431 (not res!2315510)) b!5438554))

(assert (=> d!1732431 m!6459952))

(assert (=> d!1732431 m!6459926))

(declare-fun m!6460216 () Bool)

(assert (=> d!1732431 m!6460216))

(assert (=> b!5438554 m!6459898))

(assert (=> b!5438187 d!1732431))

(declare-fun d!1732435 () Bool)

(declare-fun c!948923 () Bool)

(assert (=> d!1732435 (= c!948923 (isEmpty!33925 (t!375291 s!2326)))))

(declare-fun e!3369205 () Bool)

(assert (=> d!1732435 (= (matchZipper!1499 lt!2218382 (t!375291 s!2326)) e!3369205)))

(declare-fun b!5438559 () Bool)

(assert (=> b!5438559 (= e!3369205 (nullableZipper!1472 lt!2218382))))

(declare-fun b!5438560 () Bool)

(assert (=> b!5438560 (= e!3369205 (matchZipper!1499 (derivationStepZipper!1484 lt!2218382 (head!11661 (t!375291 s!2326))) (tail!10758 (t!375291 s!2326))))))

(assert (= (and d!1732435 c!948923) b!5438559))

(assert (= (and d!1732435 (not c!948923)) b!5438560))

(assert (=> d!1732435 m!6460004))

(declare-fun m!6460218 () Bool)

(assert (=> b!5438559 m!6460218))

(assert (=> b!5438560 m!6460008))

(assert (=> b!5438560 m!6460008))

(declare-fun m!6460220 () Bool)

(assert (=> b!5438560 m!6460220))

(assert (=> b!5438560 m!6460012))

(assert (=> b!5438560 m!6460220))

(assert (=> b!5438560 m!6460012))

(declare-fun m!6460222 () Bool)

(assert (=> b!5438560 m!6460222))

(assert (=> b!5438187 d!1732435))

(declare-fun d!1732437 () Bool)

(declare-fun c!948924 () Bool)

(assert (=> d!1732437 (= c!948924 (isEmpty!33925 (t!375291 s!2326)))))

(declare-fun e!3369206 () Bool)

(assert (=> d!1732437 (= (matchZipper!1499 ((_ map or) lt!2218382 lt!2218370) (t!375291 s!2326)) e!3369206)))

(declare-fun b!5438561 () Bool)

(assert (=> b!5438561 (= e!3369206 (nullableZipper!1472 ((_ map or) lt!2218382 lt!2218370)))))

(declare-fun b!5438562 () Bool)

(assert (=> b!5438562 (= e!3369206 (matchZipper!1499 (derivationStepZipper!1484 ((_ map or) lt!2218382 lt!2218370) (head!11661 (t!375291 s!2326))) (tail!10758 (t!375291 s!2326))))))

(assert (= (and d!1732437 c!948924) b!5438561))

(assert (= (and d!1732437 (not c!948924)) b!5438562))

(assert (=> d!1732437 m!6460004))

(declare-fun m!6460224 () Bool)

(assert (=> b!5438561 m!6460224))

(assert (=> b!5438562 m!6460008))

(assert (=> b!5438562 m!6460008))

(declare-fun m!6460226 () Bool)

(assert (=> b!5438562 m!6460226))

(assert (=> b!5438562 m!6460012))

(assert (=> b!5438562 m!6460226))

(assert (=> b!5438562 m!6460012))

(declare-fun m!6460228 () Bool)

(assert (=> b!5438562 m!6460228))

(assert (=> b!5438187 d!1732437))

(declare-fun b!5438672 () Bool)

(declare-fun e!3369265 () (InoxSet Context!9278))

(declare-fun call!389957 () (InoxSet Context!9278))

(declare-fun call!389958 () (InoxSet Context!9278))

(assert (=> b!5438672 (= e!3369265 ((_ map or) call!389957 call!389958))))

(declare-fun b!5438673 () Bool)

(declare-fun e!3369268 () (InoxSet Context!9278))

(declare-fun call!389955 () (InoxSet Context!9278))

(assert (=> b!5438673 (= e!3369268 call!389955)))

(declare-fun b!5438674 () Bool)

(assert (=> b!5438674 (= e!3369265 e!3369268)))

(declare-fun c!948947 () Bool)

(assert (=> b!5438674 (= c!948947 ((_ is Concat!24100) (h!68388 (exprs!5139 (h!68389 zl!343)))))))

(declare-fun bm!389948 () Bool)

(declare-fun call!389954 () List!62064)

(declare-fun call!389956 () List!62064)

(assert (=> bm!389948 (= call!389954 call!389956)))

(declare-fun d!1732439 () Bool)

(declare-fun c!948948 () Bool)

(assert (=> d!1732439 (= c!948948 (and ((_ is ElementMatch!15255) (h!68388 (exprs!5139 (h!68389 zl!343)))) (= (c!948819 (h!68388 (exprs!5139 (h!68389 zl!343)))) (h!68390 s!2326))))))

(declare-fun e!3369263 () (InoxSet Context!9278))

(assert (=> d!1732439 (= (derivationStepZipperDown!703 (h!68388 (exprs!5139 (h!68389 zl!343))) lt!2218368 (h!68390 s!2326)) e!3369263)))

(declare-fun c!948949 () Bool)

(declare-fun bm!389949 () Bool)

(declare-fun $colon$colon!1522 (List!62064 Regex!15255) List!62064)

(assert (=> bm!389949 (= call!389956 ($colon$colon!1522 (exprs!5139 lt!2218368) (ite (or c!948949 c!948947) (regTwo!31022 (h!68388 (exprs!5139 (h!68389 zl!343)))) (h!68388 (exprs!5139 (h!68389 zl!343))))))))

(declare-fun b!5438675 () Bool)

(declare-fun e!3369266 () (InoxSet Context!9278))

(assert (=> b!5438675 (= e!3369263 e!3369266)))

(declare-fun c!948951 () Bool)

(assert (=> b!5438675 (= c!948951 ((_ is Union!15255) (h!68388 (exprs!5139 (h!68389 zl!343)))))))

(declare-fun b!5438676 () Bool)

(declare-fun e!3369267 () (InoxSet Context!9278))

(assert (=> b!5438676 (= e!3369267 ((as const (Array Context!9278 Bool)) false))))

(declare-fun b!5438677 () Bool)

(assert (=> b!5438677 (= e!3369267 call!389955)))

(declare-fun b!5438678 () Bool)

(declare-fun e!3369264 () Bool)

(assert (=> b!5438678 (= c!948949 e!3369264)))

(declare-fun res!2315526 () Bool)

(assert (=> b!5438678 (=> (not res!2315526) (not e!3369264))))

(assert (=> b!5438678 (= res!2315526 ((_ is Concat!24100) (h!68388 (exprs!5139 (h!68389 zl!343)))))))

(assert (=> b!5438678 (= e!3369266 e!3369265)))

(declare-fun b!5438679 () Bool)

(assert (=> b!5438679 (= e!3369264 (nullable!5424 (regOne!31022 (h!68388 (exprs!5139 (h!68389 zl!343))))))))

(declare-fun bm!389950 () Bool)

(assert (=> bm!389950 (= call!389957 (derivationStepZipperDown!703 (ite c!948951 (regTwo!31023 (h!68388 (exprs!5139 (h!68389 zl!343)))) (regOne!31022 (h!68388 (exprs!5139 (h!68389 zl!343))))) (ite c!948951 lt!2218368 (Context!9279 call!389956)) (h!68390 s!2326)))))

(declare-fun bm!389951 () Bool)

(declare-fun call!389953 () (InoxSet Context!9278))

(assert (=> bm!389951 (= call!389953 (derivationStepZipperDown!703 (ite c!948951 (regOne!31023 (h!68388 (exprs!5139 (h!68389 zl!343)))) (ite c!948949 (regTwo!31022 (h!68388 (exprs!5139 (h!68389 zl!343)))) (ite c!948947 (regOne!31022 (h!68388 (exprs!5139 (h!68389 zl!343)))) (reg!15584 (h!68388 (exprs!5139 (h!68389 zl!343))))))) (ite (or c!948951 c!948949) lt!2218368 (Context!9279 call!389954)) (h!68390 s!2326)))))

(declare-fun b!5438680 () Bool)

(assert (=> b!5438680 (= e!3369266 ((_ map or) call!389953 call!389957))))

(declare-fun b!5438681 () Bool)

(assert (=> b!5438681 (= e!3369263 (store ((as const (Array Context!9278 Bool)) false) lt!2218368 true))))

(declare-fun bm!389952 () Bool)

(assert (=> bm!389952 (= call!389958 call!389953)))

(declare-fun b!5438682 () Bool)

(declare-fun c!948950 () Bool)

(assert (=> b!5438682 (= c!948950 ((_ is Star!15255) (h!68388 (exprs!5139 (h!68389 zl!343)))))))

(assert (=> b!5438682 (= e!3369268 e!3369267)))

(declare-fun bm!389953 () Bool)

(assert (=> bm!389953 (= call!389955 call!389958)))

(assert (= (and d!1732439 c!948948) b!5438681))

(assert (= (and d!1732439 (not c!948948)) b!5438675))

(assert (= (and b!5438675 c!948951) b!5438680))

(assert (= (and b!5438675 (not c!948951)) b!5438678))

(assert (= (and b!5438678 res!2315526) b!5438679))

(assert (= (and b!5438678 c!948949) b!5438672))

(assert (= (and b!5438678 (not c!948949)) b!5438674))

(assert (= (and b!5438674 c!948947) b!5438673))

(assert (= (and b!5438674 (not c!948947)) b!5438682))

(assert (= (and b!5438682 c!948950) b!5438677))

(assert (= (and b!5438682 (not c!948950)) b!5438676))

(assert (= (or b!5438673 b!5438677) bm!389948))

(assert (= (or b!5438673 b!5438677) bm!389953))

(assert (= (or b!5438672 bm!389948) bm!389949))

(assert (= (or b!5438672 bm!389953) bm!389952))

(assert (= (or b!5438680 b!5438672) bm!389950))

(assert (= (or b!5438680 bm!389952) bm!389951))

(declare-fun m!6460268 () Bool)

(assert (=> bm!389951 m!6460268))

(declare-fun m!6460270 () Bool)

(assert (=> bm!389950 m!6460270))

(declare-fun m!6460272 () Bool)

(assert (=> b!5438679 m!6460272))

(declare-fun m!6460274 () Bool)

(assert (=> b!5438681 m!6460274))

(declare-fun m!6460276 () Bool)

(assert (=> bm!389949 m!6460276))

(assert (=> b!5438165 d!1732439))

(declare-fun b!5438693 () Bool)

(declare-fun e!3369276 () (InoxSet Context!9278))

(declare-fun call!389961 () (InoxSet Context!9278))

(assert (=> b!5438693 (= e!3369276 call!389961)))

(declare-fun e!3369277 () (InoxSet Context!9278))

(declare-fun b!5438695 () Bool)

(assert (=> b!5438695 (= e!3369277 ((_ map or) call!389961 (derivationStepZipperUp!627 (Context!9279 (t!375289 (exprs!5139 lt!2218368))) (h!68390 s!2326))))))

(declare-fun b!5438696 () Bool)

(assert (=> b!5438696 (= e!3369276 ((as const (Array Context!9278 Bool)) false))))

(declare-fun b!5438697 () Bool)

(declare-fun e!3369275 () Bool)

(assert (=> b!5438697 (= e!3369275 (nullable!5424 (h!68388 (exprs!5139 lt!2218368))))))

(declare-fun bm!389956 () Bool)

(assert (=> bm!389956 (= call!389961 (derivationStepZipperDown!703 (h!68388 (exprs!5139 lt!2218368)) (Context!9279 (t!375289 (exprs!5139 lt!2218368))) (h!68390 s!2326)))))

(declare-fun d!1732451 () Bool)

(declare-fun c!948957 () Bool)

(assert (=> d!1732451 (= c!948957 e!3369275)))

(declare-fun res!2315529 () Bool)

(assert (=> d!1732451 (=> (not res!2315529) (not e!3369275))))

(assert (=> d!1732451 (= res!2315529 ((_ is Cons!61940) (exprs!5139 lt!2218368)))))

(assert (=> d!1732451 (= (derivationStepZipperUp!627 lt!2218368 (h!68390 s!2326)) e!3369277)))

(declare-fun b!5438694 () Bool)

(assert (=> b!5438694 (= e!3369277 e!3369276)))

(declare-fun c!948956 () Bool)

(assert (=> b!5438694 (= c!948956 ((_ is Cons!61940) (exprs!5139 lt!2218368)))))

(assert (= (and d!1732451 res!2315529) b!5438697))

(assert (= (and d!1732451 c!948957) b!5438695))

(assert (= (and d!1732451 (not c!948957)) b!5438694))

(assert (= (and b!5438694 c!948956) b!5438693))

(assert (= (and b!5438694 (not c!948956)) b!5438696))

(assert (= (or b!5438695 b!5438693) bm!389956))

(declare-fun m!6460278 () Bool)

(assert (=> b!5438695 m!6460278))

(declare-fun m!6460280 () Bool)

(assert (=> b!5438697 m!6460280))

(declare-fun m!6460282 () Bool)

(assert (=> bm!389956 m!6460282))

(assert (=> b!5438165 d!1732451))

(declare-fun d!1732453 () Bool)

(assert (=> d!1732453 (= (nullable!5424 (h!68388 (exprs!5139 (h!68389 zl!343)))) (nullableFct!1623 (h!68388 (exprs!5139 (h!68389 zl!343)))))))

(declare-fun bs!1255007 () Bool)

(assert (= bs!1255007 d!1732453))

(declare-fun m!6460284 () Bool)

(assert (=> bs!1255007 m!6460284))

(assert (=> b!5438165 d!1732453))

(declare-fun b!5438698 () Bool)

(declare-fun e!3369279 () (InoxSet Context!9278))

(declare-fun call!389962 () (InoxSet Context!9278))

(assert (=> b!5438698 (= e!3369279 call!389962)))

(declare-fun e!3369280 () (InoxSet Context!9278))

(declare-fun b!5438700 () Bool)

(assert (=> b!5438700 (= e!3369280 ((_ map or) call!389962 (derivationStepZipperUp!627 (Context!9279 (t!375289 (exprs!5139 (Context!9279 (Cons!61940 (h!68388 (exprs!5139 (h!68389 zl!343))) (t!375289 (exprs!5139 (h!68389 zl!343)))))))) (h!68390 s!2326))))))

(declare-fun b!5438701 () Bool)

(assert (=> b!5438701 (= e!3369279 ((as const (Array Context!9278 Bool)) false))))

(declare-fun b!5438702 () Bool)

(declare-fun e!3369278 () Bool)

(assert (=> b!5438702 (= e!3369278 (nullable!5424 (h!68388 (exprs!5139 (Context!9279 (Cons!61940 (h!68388 (exprs!5139 (h!68389 zl!343))) (t!375289 (exprs!5139 (h!68389 zl!343)))))))))))

(declare-fun bm!389957 () Bool)

(assert (=> bm!389957 (= call!389962 (derivationStepZipperDown!703 (h!68388 (exprs!5139 (Context!9279 (Cons!61940 (h!68388 (exprs!5139 (h!68389 zl!343))) (t!375289 (exprs!5139 (h!68389 zl!343))))))) (Context!9279 (t!375289 (exprs!5139 (Context!9279 (Cons!61940 (h!68388 (exprs!5139 (h!68389 zl!343))) (t!375289 (exprs!5139 (h!68389 zl!343)))))))) (h!68390 s!2326)))))

(declare-fun d!1732455 () Bool)

(declare-fun c!948959 () Bool)

(assert (=> d!1732455 (= c!948959 e!3369278)))

(declare-fun res!2315530 () Bool)

(assert (=> d!1732455 (=> (not res!2315530) (not e!3369278))))

(assert (=> d!1732455 (= res!2315530 ((_ is Cons!61940) (exprs!5139 (Context!9279 (Cons!61940 (h!68388 (exprs!5139 (h!68389 zl!343))) (t!375289 (exprs!5139 (h!68389 zl!343))))))))))

(assert (=> d!1732455 (= (derivationStepZipperUp!627 (Context!9279 (Cons!61940 (h!68388 (exprs!5139 (h!68389 zl!343))) (t!375289 (exprs!5139 (h!68389 zl!343))))) (h!68390 s!2326)) e!3369280)))

(declare-fun b!5438699 () Bool)

(assert (=> b!5438699 (= e!3369280 e!3369279)))

(declare-fun c!948958 () Bool)

(assert (=> b!5438699 (= c!948958 ((_ is Cons!61940) (exprs!5139 (Context!9279 (Cons!61940 (h!68388 (exprs!5139 (h!68389 zl!343))) (t!375289 (exprs!5139 (h!68389 zl!343))))))))))

(assert (= (and d!1732455 res!2315530) b!5438702))

(assert (= (and d!1732455 c!948959) b!5438700))

(assert (= (and d!1732455 (not c!948959)) b!5438699))

(assert (= (and b!5438699 c!948958) b!5438698))

(assert (= (and b!5438699 (not c!948958)) b!5438701))

(assert (= (or b!5438700 b!5438698) bm!389957))

(declare-fun m!6460286 () Bool)

(assert (=> b!5438700 m!6460286))

(declare-fun m!6460288 () Bool)

(assert (=> b!5438702 m!6460288))

(declare-fun m!6460290 () Bool)

(assert (=> bm!389957 m!6460290))

(assert (=> b!5438165 d!1732455))

(declare-fun d!1732457 () Bool)

(declare-fun choose!41244 ((InoxSet Context!9278) Int) (InoxSet Context!9278))

(assert (=> d!1732457 (= (flatMap!982 z!1189 lambda!286065) (choose!41244 z!1189 lambda!286065))))

(declare-fun bs!1255008 () Bool)

(assert (= bs!1255008 d!1732457))

(declare-fun m!6460292 () Bool)

(assert (=> bs!1255008 m!6460292))

(assert (=> b!5438165 d!1732457))

(declare-fun b!5438703 () Bool)

(declare-fun e!3369282 () (InoxSet Context!9278))

(declare-fun call!389963 () (InoxSet Context!9278))

(assert (=> b!5438703 (= e!3369282 call!389963)))

(declare-fun e!3369283 () (InoxSet Context!9278))

(declare-fun b!5438705 () Bool)

(assert (=> b!5438705 (= e!3369283 ((_ map or) call!389963 (derivationStepZipperUp!627 (Context!9279 (t!375289 (exprs!5139 (h!68389 zl!343)))) (h!68390 s!2326))))))

(declare-fun b!5438706 () Bool)

(assert (=> b!5438706 (= e!3369282 ((as const (Array Context!9278 Bool)) false))))

(declare-fun b!5438707 () Bool)

(declare-fun e!3369281 () Bool)

(assert (=> b!5438707 (= e!3369281 (nullable!5424 (h!68388 (exprs!5139 (h!68389 zl!343)))))))

(declare-fun bm!389958 () Bool)

(assert (=> bm!389958 (= call!389963 (derivationStepZipperDown!703 (h!68388 (exprs!5139 (h!68389 zl!343))) (Context!9279 (t!375289 (exprs!5139 (h!68389 zl!343)))) (h!68390 s!2326)))))

(declare-fun d!1732459 () Bool)

(declare-fun c!948961 () Bool)

(assert (=> d!1732459 (= c!948961 e!3369281)))

(declare-fun res!2315531 () Bool)

(assert (=> d!1732459 (=> (not res!2315531) (not e!3369281))))

(assert (=> d!1732459 (= res!2315531 ((_ is Cons!61940) (exprs!5139 (h!68389 zl!343))))))

(assert (=> d!1732459 (= (derivationStepZipperUp!627 (h!68389 zl!343) (h!68390 s!2326)) e!3369283)))

(declare-fun b!5438704 () Bool)

(assert (=> b!5438704 (= e!3369283 e!3369282)))

(declare-fun c!948960 () Bool)

(assert (=> b!5438704 (= c!948960 ((_ is Cons!61940) (exprs!5139 (h!68389 zl!343))))))

(assert (= (and d!1732459 res!2315531) b!5438707))

(assert (= (and d!1732459 c!948961) b!5438705))

(assert (= (and d!1732459 (not c!948961)) b!5438704))

(assert (= (and b!5438704 c!948960) b!5438703))

(assert (= (and b!5438704 (not c!948960)) b!5438706))

(assert (= (or b!5438705 b!5438703) bm!389958))

(declare-fun m!6460294 () Bool)

(assert (=> b!5438705 m!6460294))

(assert (=> b!5438707 m!6459962))

(declare-fun m!6460296 () Bool)

(assert (=> bm!389958 m!6460296))

(assert (=> b!5438165 d!1732459))

(declare-fun d!1732461 () Bool)

(declare-fun dynLambda!24377 (Int Context!9278) (InoxSet Context!9278))

(assert (=> d!1732461 (= (flatMap!982 z!1189 lambda!286065) (dynLambda!24377 lambda!286065 (h!68389 zl!343)))))

(declare-fun lt!2218455 () Unit!154562)

(declare-fun choose!41245 ((InoxSet Context!9278) Context!9278 Int) Unit!154562)

(assert (=> d!1732461 (= lt!2218455 (choose!41245 z!1189 (h!68389 zl!343) lambda!286065))))

(assert (=> d!1732461 (= z!1189 (store ((as const (Array Context!9278 Bool)) false) (h!68389 zl!343) true))))

(assert (=> d!1732461 (= (lemmaFlatMapOnSingletonSet!514 z!1189 (h!68389 zl!343) lambda!286065) lt!2218455)))

(declare-fun b_lambda!207353 () Bool)

(assert (=> (not b_lambda!207353) (not d!1732461)))

(declare-fun bs!1255009 () Bool)

(assert (= bs!1255009 d!1732461))

(assert (=> bs!1255009 m!6459966))

(declare-fun m!6460298 () Bool)

(assert (=> bs!1255009 m!6460298))

(declare-fun m!6460300 () Bool)

(assert (=> bs!1255009 m!6460300))

(declare-fun m!6460302 () Bool)

(assert (=> bs!1255009 m!6460302))

(assert (=> b!5438165 d!1732461))

(declare-fun bs!1255010 () Bool)

(declare-fun d!1732463 () Bool)

(assert (= bs!1255010 (and d!1732463 d!1732361)))

(declare-fun lambda!286113 () Int)

(assert (=> bs!1255010 (= lambda!286113 lambda!286077)))

(declare-fun bs!1255011 () Bool)

(assert (= bs!1255011 (and d!1732463 d!1732429)))

(assert (=> bs!1255011 (= lambda!286113 lambda!286100)))

(declare-fun b!5438728 () Bool)

(declare-fun e!3369300 () Bool)

(assert (=> b!5438728 (= e!3369300 (isEmpty!33922 (t!375289 (unfocusZipperList!697 zl!343))))))

(declare-fun b!5438729 () Bool)

(declare-fun e!3369299 () Bool)

(declare-fun e!3369301 () Bool)

(assert (=> b!5438729 (= e!3369299 e!3369301)))

(declare-fun c!948973 () Bool)

(assert (=> b!5438729 (= c!948973 (isEmpty!33922 (unfocusZipperList!697 zl!343)))))

(declare-fun b!5438730 () Bool)

(declare-fun e!3369297 () Bool)

(declare-fun lt!2218458 () Regex!15255)

(declare-fun isUnion!445 (Regex!15255) Bool)

(assert (=> b!5438730 (= e!3369297 (isUnion!445 lt!2218458))))

(declare-fun b!5438731 () Bool)

(declare-fun e!3369296 () Regex!15255)

(assert (=> b!5438731 (= e!3369296 (Union!15255 (h!68388 (unfocusZipperList!697 zl!343)) (generalisedUnion!1184 (t!375289 (unfocusZipperList!697 zl!343)))))))

(declare-fun b!5438732 () Bool)

(declare-fun isEmptyLang!1013 (Regex!15255) Bool)

(assert (=> b!5438732 (= e!3369301 (isEmptyLang!1013 lt!2218458))))

(declare-fun b!5438733 () Bool)

(assert (=> b!5438733 (= e!3369301 e!3369297)))

(declare-fun c!948970 () Bool)

(declare-fun tail!10759 (List!62064) List!62064)

(assert (=> b!5438733 (= c!948970 (isEmpty!33922 (tail!10759 (unfocusZipperList!697 zl!343))))))

(declare-fun b!5438734 () Bool)

(declare-fun e!3369298 () Regex!15255)

(assert (=> b!5438734 (= e!3369298 e!3369296)))

(declare-fun c!948972 () Bool)

(assert (=> b!5438734 (= c!948972 ((_ is Cons!61940) (unfocusZipperList!697 zl!343)))))

(assert (=> d!1732463 e!3369299))

(declare-fun res!2315537 () Bool)

(assert (=> d!1732463 (=> (not res!2315537) (not e!3369299))))

(assert (=> d!1732463 (= res!2315537 (validRegex!6991 lt!2218458))))

(assert (=> d!1732463 (= lt!2218458 e!3369298)))

(declare-fun c!948971 () Bool)

(assert (=> d!1732463 (= c!948971 e!3369300)))

(declare-fun res!2315536 () Bool)

(assert (=> d!1732463 (=> (not res!2315536) (not e!3369300))))

(assert (=> d!1732463 (= res!2315536 ((_ is Cons!61940) (unfocusZipperList!697 zl!343)))))

(assert (=> d!1732463 (forall!14572 (unfocusZipperList!697 zl!343) lambda!286113)))

(assert (=> d!1732463 (= (generalisedUnion!1184 (unfocusZipperList!697 zl!343)) lt!2218458)))

(declare-fun b!5438735 () Bool)

(assert (=> b!5438735 (= e!3369298 (h!68388 (unfocusZipperList!697 zl!343)))))

(declare-fun b!5438736 () Bool)

(assert (=> b!5438736 (= e!3369296 EmptyLang!15255)))

(declare-fun b!5438737 () Bool)

(declare-fun head!11662 (List!62064) Regex!15255)

(assert (=> b!5438737 (= e!3369297 (= lt!2218458 (head!11662 (unfocusZipperList!697 zl!343))))))

(assert (= (and d!1732463 res!2315536) b!5438728))

(assert (= (and d!1732463 c!948971) b!5438735))

(assert (= (and d!1732463 (not c!948971)) b!5438734))

(assert (= (and b!5438734 c!948972) b!5438731))

(assert (= (and b!5438734 (not c!948972)) b!5438736))

(assert (= (and d!1732463 res!2315537) b!5438729))

(assert (= (and b!5438729 c!948973) b!5438732))

(assert (= (and b!5438729 (not c!948973)) b!5438733))

(assert (= (and b!5438733 c!948970) b!5438737))

(assert (= (and b!5438733 (not c!948970)) b!5438730))

(declare-fun m!6460304 () Bool)

(assert (=> b!5438732 m!6460304))

(declare-fun m!6460306 () Bool)

(assert (=> b!5438731 m!6460306))

(assert (=> b!5438729 m!6459934))

(declare-fun m!6460308 () Bool)

(assert (=> b!5438729 m!6460308))

(declare-fun m!6460310 () Bool)

(assert (=> b!5438730 m!6460310))

(declare-fun m!6460312 () Bool)

(assert (=> b!5438728 m!6460312))

(declare-fun m!6460314 () Bool)

(assert (=> d!1732463 m!6460314))

(assert (=> d!1732463 m!6459934))

(declare-fun m!6460316 () Bool)

(assert (=> d!1732463 m!6460316))

(assert (=> b!5438737 m!6459934))

(declare-fun m!6460318 () Bool)

(assert (=> b!5438737 m!6460318))

(assert (=> b!5438733 m!6459934))

(declare-fun m!6460320 () Bool)

(assert (=> b!5438733 m!6460320))

(assert (=> b!5438733 m!6460320))

(declare-fun m!6460322 () Bool)

(assert (=> b!5438733 m!6460322))

(assert (=> b!5438185 d!1732463))

(declare-fun bs!1255012 () Bool)

(declare-fun d!1732465 () Bool)

(assert (= bs!1255012 (and d!1732465 d!1732361)))

(declare-fun lambda!286116 () Int)

(assert (=> bs!1255012 (= lambda!286116 lambda!286077)))

(declare-fun bs!1255013 () Bool)

(assert (= bs!1255013 (and d!1732465 d!1732429)))

(assert (=> bs!1255013 (= lambda!286116 lambda!286100)))

(declare-fun bs!1255014 () Bool)

(assert (= bs!1255014 (and d!1732465 d!1732463)))

(assert (=> bs!1255014 (= lambda!286116 lambda!286113)))

(declare-fun lt!2218461 () List!62064)

(assert (=> d!1732465 (forall!14572 lt!2218461 lambda!286116)))

(declare-fun e!3369304 () List!62064)

(assert (=> d!1732465 (= lt!2218461 e!3369304)))

(declare-fun c!948976 () Bool)

(assert (=> d!1732465 (= c!948976 ((_ is Cons!61941) zl!343))))

(assert (=> d!1732465 (= (unfocusZipperList!697 zl!343) lt!2218461)))

(declare-fun b!5438742 () Bool)

(assert (=> b!5438742 (= e!3369304 (Cons!61940 (generalisedConcat!924 (exprs!5139 (h!68389 zl!343))) (unfocusZipperList!697 (t!375290 zl!343))))))

(declare-fun b!5438743 () Bool)

(assert (=> b!5438743 (= e!3369304 Nil!61940)))

(assert (= (and d!1732465 c!948976) b!5438742))

(assert (= (and d!1732465 (not c!948976)) b!5438743))

(declare-fun m!6460324 () Bool)

(assert (=> d!1732465 m!6460324))

(assert (=> b!5438742 m!6459896))

(declare-fun m!6460326 () Bool)

(assert (=> b!5438742 m!6460326))

(assert (=> b!5438185 d!1732465))

(declare-fun d!1732467 () Bool)

(declare-fun e!3369307 () Bool)

(assert (=> d!1732467 e!3369307))

(declare-fun res!2315540 () Bool)

(assert (=> d!1732467 (=> (not res!2315540) (not e!3369307))))

(declare-fun lt!2218464 () List!62065)

(declare-fun noDuplicate!1421 (List!62065) Bool)

(assert (=> d!1732467 (= res!2315540 (noDuplicate!1421 lt!2218464))))

(declare-fun choose!41248 ((InoxSet Context!9278)) List!62065)

(assert (=> d!1732467 (= lt!2218464 (choose!41248 z!1189))))

(assert (=> d!1732467 (= (toList!9039 z!1189) lt!2218464)))

(declare-fun b!5438746 () Bool)

(declare-fun content!11138 (List!62065) (InoxSet Context!9278))

(assert (=> b!5438746 (= e!3369307 (= (content!11138 lt!2218464) z!1189))))

(assert (= (and d!1732467 res!2315540) b!5438746))

(declare-fun m!6460328 () Bool)

(assert (=> d!1732467 m!6460328))

(declare-fun m!6460330 () Bool)

(assert (=> d!1732467 m!6460330))

(declare-fun m!6460332 () Bool)

(assert (=> b!5438746 m!6460332))

(assert (=> b!5438186 d!1732467))

(declare-fun bs!1255015 () Bool)

(declare-fun b!5438783 () Bool)

(assert (= bs!1255015 (and b!5438783 d!1732391)))

(declare-fun lambda!286121 () Int)

(assert (=> bs!1255015 (not (= lambda!286121 lambda!286088))))

(declare-fun bs!1255016 () Bool)

(assert (= bs!1255016 (and b!5438783 d!1732403)))

(assert (=> bs!1255016 (not (= lambda!286121 lambda!286096))))

(declare-fun bs!1255017 () Bool)

(assert (= bs!1255017 (and b!5438783 b!5438179)))

(assert (=> bs!1255017 (not (= lambda!286121 lambda!286063))))

(assert (=> bs!1255017 (not (= lambda!286121 lambda!286064))))

(assert (=> bs!1255016 (not (= lambda!286121 lambda!286097))))

(assert (=> b!5438783 true))

(assert (=> b!5438783 true))

(declare-fun bs!1255018 () Bool)

(declare-fun b!5438787 () Bool)

(assert (= bs!1255018 (and b!5438787 b!5438783)))

(declare-fun lambda!286122 () Int)

(assert (=> bs!1255018 (not (= lambda!286122 lambda!286121))))

(declare-fun bs!1255019 () Bool)

(assert (= bs!1255019 (and b!5438787 d!1732391)))

(assert (=> bs!1255019 (not (= lambda!286122 lambda!286088))))

(declare-fun bs!1255020 () Bool)

(assert (= bs!1255020 (and b!5438787 d!1732403)))

(assert (=> bs!1255020 (not (= lambda!286122 lambda!286096))))

(declare-fun bs!1255021 () Bool)

(assert (= bs!1255021 (and b!5438787 b!5438179)))

(assert (=> bs!1255021 (not (= lambda!286122 lambda!286063))))

(assert (=> bs!1255021 (= lambda!286122 lambda!286064)))

(assert (=> bs!1255020 (= lambda!286122 lambda!286097)))

(assert (=> b!5438787 true))

(assert (=> b!5438787 true))

(declare-fun b!5438779 () Bool)

(declare-fun res!2315558 () Bool)

(declare-fun e!3369331 () Bool)

(assert (=> b!5438779 (=> res!2315558 e!3369331)))

(declare-fun call!389968 () Bool)

(assert (=> b!5438779 (= res!2315558 call!389968)))

(declare-fun e!3369332 () Bool)

(assert (=> b!5438779 (= e!3369332 e!3369331)))

(declare-fun b!5438780 () Bool)

(declare-fun e!3369329 () Bool)

(assert (=> b!5438780 (= e!3369329 (matchRSpec!2358 (regTwo!31023 r!7292) s!2326))))

(declare-fun d!1732469 () Bool)

(declare-fun c!948988 () Bool)

(assert (=> d!1732469 (= c!948988 ((_ is EmptyExpr!15255) r!7292))))

(declare-fun e!3369326 () Bool)

(assert (=> d!1732469 (= (matchRSpec!2358 r!7292 s!2326) e!3369326)))

(declare-fun b!5438781 () Bool)

(declare-fun c!948987 () Bool)

(assert (=> b!5438781 (= c!948987 ((_ is Union!15255) r!7292))))

(declare-fun e!3369328 () Bool)

(declare-fun e!3369330 () Bool)

(assert (=> b!5438781 (= e!3369328 e!3369330)))

(declare-fun b!5438782 () Bool)

(assert (=> b!5438782 (= e!3369328 (= s!2326 (Cons!61942 (c!948819 r!7292) Nil!61942)))))

(declare-fun bm!389963 () Bool)

(assert (=> bm!389963 (= call!389968 (isEmpty!33925 s!2326))))

(declare-fun call!389969 () Bool)

(assert (=> b!5438783 (= e!3369331 call!389969)))

(declare-fun b!5438784 () Bool)

(assert (=> b!5438784 (= e!3369330 e!3369329)))

(declare-fun res!2315559 () Bool)

(assert (=> b!5438784 (= res!2315559 (matchRSpec!2358 (regOne!31023 r!7292) s!2326))))

(assert (=> b!5438784 (=> res!2315559 e!3369329)))

(declare-fun b!5438785 () Bool)

(declare-fun e!3369327 () Bool)

(assert (=> b!5438785 (= e!3369326 e!3369327)))

(declare-fun res!2315557 () Bool)

(assert (=> b!5438785 (= res!2315557 (not ((_ is EmptyLang!15255) r!7292)))))

(assert (=> b!5438785 (=> (not res!2315557) (not e!3369327))))

(declare-fun b!5438786 () Bool)

(declare-fun c!948986 () Bool)

(assert (=> b!5438786 (= c!948986 ((_ is ElementMatch!15255) r!7292))))

(assert (=> b!5438786 (= e!3369327 e!3369328)))

(assert (=> b!5438787 (= e!3369332 call!389969)))

(declare-fun b!5438788 () Bool)

(assert (=> b!5438788 (= e!3369330 e!3369332)))

(declare-fun c!948985 () Bool)

(assert (=> b!5438788 (= c!948985 ((_ is Star!15255) r!7292))))

(declare-fun bm!389964 () Bool)

(assert (=> bm!389964 (= call!389969 (Exists!2436 (ite c!948985 lambda!286121 lambda!286122)))))

(declare-fun b!5438789 () Bool)

(assert (=> b!5438789 (= e!3369326 call!389968)))

(assert (= (and d!1732469 c!948988) b!5438789))

(assert (= (and d!1732469 (not c!948988)) b!5438785))

(assert (= (and b!5438785 res!2315557) b!5438786))

(assert (= (and b!5438786 c!948986) b!5438782))

(assert (= (and b!5438786 (not c!948986)) b!5438781))

(assert (= (and b!5438781 c!948987) b!5438784))

(assert (= (and b!5438781 (not c!948987)) b!5438788))

(assert (= (and b!5438784 (not res!2315559)) b!5438780))

(assert (= (and b!5438788 c!948985) b!5438779))

(assert (= (and b!5438788 (not c!948985)) b!5438787))

(assert (= (and b!5438779 (not res!2315558)) b!5438783))

(assert (= (or b!5438783 b!5438787) bm!389964))

(assert (= (or b!5438789 b!5438779) bm!389963))

(declare-fun m!6460334 () Bool)

(assert (=> b!5438780 m!6460334))

(declare-fun m!6460336 () Bool)

(assert (=> bm!389963 m!6460336))

(declare-fun m!6460338 () Bool)

(assert (=> b!5438784 m!6460338))

(declare-fun m!6460340 () Bool)

(assert (=> bm!389964 m!6460340))

(assert (=> b!5438175 d!1732469))

(declare-fun b!5438818 () Bool)

(declare-fun res!2315580 () Bool)

(declare-fun e!3369347 () Bool)

(assert (=> b!5438818 (=> (not res!2315580) (not e!3369347))))

(assert (=> b!5438818 (= res!2315580 (isEmpty!33925 (tail!10758 s!2326)))))

(declare-fun b!5438819 () Bool)

(declare-fun e!3369353 () Bool)

(declare-fun lt!2218467 () Bool)

(assert (=> b!5438819 (= e!3369353 (not lt!2218467))))

(declare-fun b!5438820 () Bool)

(declare-fun e!3369349 () Bool)

(declare-fun derivativeStep!4293 (Regex!15255 C!30780) Regex!15255)

(assert (=> b!5438820 (= e!3369349 (matchR!7440 (derivativeStep!4293 r!7292 (head!11661 s!2326)) (tail!10758 s!2326)))))

(declare-fun d!1732471 () Bool)

(declare-fun e!3369348 () Bool)

(assert (=> d!1732471 e!3369348))

(declare-fun c!948997 () Bool)

(assert (=> d!1732471 (= c!948997 ((_ is EmptyExpr!15255) r!7292))))

(assert (=> d!1732471 (= lt!2218467 e!3369349)))

(declare-fun c!948996 () Bool)

(assert (=> d!1732471 (= c!948996 (isEmpty!33925 s!2326))))

(assert (=> d!1732471 (validRegex!6991 r!7292)))

(assert (=> d!1732471 (= (matchR!7440 r!7292 s!2326) lt!2218467)))

(declare-fun bm!389967 () Bool)

(declare-fun call!389972 () Bool)

(assert (=> bm!389967 (= call!389972 (isEmpty!33925 s!2326))))

(declare-fun b!5438821 () Bool)

(declare-fun res!2315581 () Bool)

(declare-fun e!3369350 () Bool)

(assert (=> b!5438821 (=> res!2315581 e!3369350)))

(assert (=> b!5438821 (= res!2315581 e!3369347)))

(declare-fun res!2315576 () Bool)

(assert (=> b!5438821 (=> (not res!2315576) (not e!3369347))))

(assert (=> b!5438821 (= res!2315576 lt!2218467)))

(declare-fun b!5438822 () Bool)

(assert (=> b!5438822 (= e!3369349 (nullable!5424 r!7292))))

(declare-fun b!5438823 () Bool)

(assert (=> b!5438823 (= e!3369348 e!3369353)))

(declare-fun c!948995 () Bool)

(assert (=> b!5438823 (= c!948995 ((_ is EmptyLang!15255) r!7292))))

(declare-fun b!5438824 () Bool)

(declare-fun e!3369351 () Bool)

(assert (=> b!5438824 (= e!3369351 (not (= (head!11661 s!2326) (c!948819 r!7292))))))

(declare-fun b!5438825 () Bool)

(assert (=> b!5438825 (= e!3369347 (= (head!11661 s!2326) (c!948819 r!7292)))))

(declare-fun b!5438826 () Bool)

(assert (=> b!5438826 (= e!3369348 (= lt!2218467 call!389972))))

(declare-fun b!5438827 () Bool)

(declare-fun res!2315577 () Bool)

(assert (=> b!5438827 (=> res!2315577 e!3369350)))

(assert (=> b!5438827 (= res!2315577 (not ((_ is ElementMatch!15255) r!7292)))))

(assert (=> b!5438827 (= e!3369353 e!3369350)))

(declare-fun b!5438828 () Bool)

(declare-fun res!2315583 () Bool)

(assert (=> b!5438828 (=> (not res!2315583) (not e!3369347))))

(assert (=> b!5438828 (= res!2315583 (not call!389972))))

(declare-fun b!5438829 () Bool)

(declare-fun e!3369352 () Bool)

(assert (=> b!5438829 (= e!3369352 e!3369351)))

(declare-fun res!2315582 () Bool)

(assert (=> b!5438829 (=> res!2315582 e!3369351)))

(assert (=> b!5438829 (= res!2315582 call!389972)))

(declare-fun b!5438830 () Bool)

(assert (=> b!5438830 (= e!3369350 e!3369352)))

(declare-fun res!2315579 () Bool)

(assert (=> b!5438830 (=> (not res!2315579) (not e!3369352))))

(assert (=> b!5438830 (= res!2315579 (not lt!2218467))))

(declare-fun b!5438831 () Bool)

(declare-fun res!2315578 () Bool)

(assert (=> b!5438831 (=> res!2315578 e!3369351)))

(assert (=> b!5438831 (= res!2315578 (not (isEmpty!33925 (tail!10758 s!2326))))))

(assert (= (and d!1732471 c!948996) b!5438822))

(assert (= (and d!1732471 (not c!948996)) b!5438820))

(assert (= (and d!1732471 c!948997) b!5438826))

(assert (= (and d!1732471 (not c!948997)) b!5438823))

(assert (= (and b!5438823 c!948995) b!5438819))

(assert (= (and b!5438823 (not c!948995)) b!5438827))

(assert (= (and b!5438827 (not res!2315577)) b!5438821))

(assert (= (and b!5438821 res!2315576) b!5438828))

(assert (= (and b!5438828 res!2315583) b!5438818))

(assert (= (and b!5438818 res!2315580) b!5438825))

(assert (= (and b!5438821 (not res!2315581)) b!5438830))

(assert (= (and b!5438830 res!2315579) b!5438829))

(assert (= (and b!5438829 (not res!2315582)) b!5438831))

(assert (= (and b!5438831 (not res!2315578)) b!5438824))

(assert (= (or b!5438826 b!5438828 b!5438829) bm!389967))

(declare-fun m!6460342 () Bool)

(assert (=> b!5438820 m!6460342))

(assert (=> b!5438820 m!6460342))

(declare-fun m!6460344 () Bool)

(assert (=> b!5438820 m!6460344))

(declare-fun m!6460346 () Bool)

(assert (=> b!5438820 m!6460346))

(assert (=> b!5438820 m!6460344))

(assert (=> b!5438820 m!6460346))

(declare-fun m!6460348 () Bool)

(assert (=> b!5438820 m!6460348))

(declare-fun m!6460350 () Bool)

(assert (=> b!5438822 m!6460350))

(assert (=> bm!389967 m!6460336))

(assert (=> b!5438824 m!6460342))

(assert (=> d!1732471 m!6460336))

(assert (=> d!1732471 m!6459956))

(assert (=> b!5438825 m!6460342))

(assert (=> b!5438831 m!6460346))

(assert (=> b!5438831 m!6460346))

(declare-fun m!6460352 () Bool)

(assert (=> b!5438831 m!6460352))

(assert (=> b!5438818 m!6460346))

(assert (=> b!5438818 m!6460346))

(assert (=> b!5438818 m!6460352))

(assert (=> b!5438175 d!1732471))

(declare-fun d!1732473 () Bool)

(assert (=> d!1732473 (= (matchR!7440 r!7292 s!2326) (matchRSpec!2358 r!7292 s!2326))))

(declare-fun lt!2218470 () Unit!154562)

(declare-fun choose!41251 (Regex!15255 List!62066) Unit!154562)

(assert (=> d!1732473 (= lt!2218470 (choose!41251 r!7292 s!2326))))

(assert (=> d!1732473 (validRegex!6991 r!7292)))

(assert (=> d!1732473 (= (mainMatchTheorem!2358 r!7292 s!2326) lt!2218470)))

(declare-fun bs!1255022 () Bool)

(assert (= bs!1255022 d!1732473))

(assert (=> bs!1255022 m!6459908))

(assert (=> bs!1255022 m!6459906))

(declare-fun m!6460354 () Bool)

(assert (=> bs!1255022 m!6460354))

(assert (=> bs!1255022 m!6459956))

(assert (=> b!5438175 d!1732473))

(declare-fun bs!1255023 () Bool)

(declare-fun b!5438836 () Bool)

(assert (= bs!1255023 (and b!5438836 b!5438787)))

(declare-fun lambda!286123 () Int)

(assert (=> bs!1255023 (not (= lambda!286123 lambda!286122))))

(declare-fun bs!1255024 () Bool)

(assert (= bs!1255024 (and b!5438836 b!5438783)))

(assert (=> bs!1255024 (= (and (= (reg!15584 (regOne!31022 r!7292)) (reg!15584 r!7292)) (= (regOne!31022 r!7292) r!7292)) (= lambda!286123 lambda!286121))))

(declare-fun bs!1255025 () Bool)

(assert (= bs!1255025 (and b!5438836 d!1732391)))

(assert (=> bs!1255025 (not (= lambda!286123 lambda!286088))))

(declare-fun bs!1255026 () Bool)

(assert (= bs!1255026 (and b!5438836 d!1732403)))

(assert (=> bs!1255026 (not (= lambda!286123 lambda!286096))))

(declare-fun bs!1255027 () Bool)

(assert (= bs!1255027 (and b!5438836 b!5438179)))

(assert (=> bs!1255027 (not (= lambda!286123 lambda!286063))))

(assert (=> bs!1255027 (not (= lambda!286123 lambda!286064))))

(assert (=> bs!1255026 (not (= lambda!286123 lambda!286097))))

(assert (=> b!5438836 true))

(assert (=> b!5438836 true))

(declare-fun bs!1255028 () Bool)

(declare-fun b!5438840 () Bool)

(assert (= bs!1255028 (and b!5438840 b!5438783)))

(declare-fun lambda!286124 () Int)

(assert (=> bs!1255028 (not (= lambda!286124 lambda!286121))))

(declare-fun bs!1255029 () Bool)

(assert (= bs!1255029 (and b!5438840 d!1732391)))

(assert (=> bs!1255029 (not (= lambda!286124 lambda!286088))))

(declare-fun bs!1255030 () Bool)

(assert (= bs!1255030 (and b!5438840 d!1732403)))

(assert (=> bs!1255030 (not (= lambda!286124 lambda!286096))))

(declare-fun bs!1255031 () Bool)

(assert (= bs!1255031 (and b!5438840 b!5438179)))

(assert (=> bs!1255031 (not (= lambda!286124 lambda!286063))))

(assert (=> bs!1255031 (= (and (= (regOne!31022 (regOne!31022 r!7292)) (regOne!31022 r!7292)) (= (regTwo!31022 (regOne!31022 r!7292)) (regTwo!31022 r!7292))) (= lambda!286124 lambda!286064))))

(assert (=> bs!1255030 (= (and (= (regOne!31022 (regOne!31022 r!7292)) (regOne!31022 r!7292)) (= (regTwo!31022 (regOne!31022 r!7292)) (regTwo!31022 r!7292))) (= lambda!286124 lambda!286097))))

(declare-fun bs!1255032 () Bool)

(assert (= bs!1255032 (and b!5438840 b!5438836)))

(assert (=> bs!1255032 (not (= lambda!286124 lambda!286123))))

(declare-fun bs!1255033 () Bool)

(assert (= bs!1255033 (and b!5438840 b!5438787)))

(assert (=> bs!1255033 (= (and (= (regOne!31022 (regOne!31022 r!7292)) (regOne!31022 r!7292)) (= (regTwo!31022 (regOne!31022 r!7292)) (regTwo!31022 r!7292))) (= lambda!286124 lambda!286122))))

(assert (=> b!5438840 true))

(assert (=> b!5438840 true))

(declare-fun b!5438832 () Bool)

(declare-fun res!2315585 () Bool)

(declare-fun e!3369359 () Bool)

(assert (=> b!5438832 (=> res!2315585 e!3369359)))

(declare-fun call!389973 () Bool)

(assert (=> b!5438832 (= res!2315585 call!389973)))

(declare-fun e!3369360 () Bool)

(assert (=> b!5438832 (= e!3369360 e!3369359)))

(declare-fun b!5438833 () Bool)

(declare-fun e!3369357 () Bool)

(assert (=> b!5438833 (= e!3369357 (matchRSpec!2358 (regTwo!31023 (regOne!31022 r!7292)) s!2326))))

(declare-fun d!1732475 () Bool)

(declare-fun c!949001 () Bool)

(assert (=> d!1732475 (= c!949001 ((_ is EmptyExpr!15255) (regOne!31022 r!7292)))))

(declare-fun e!3369354 () Bool)

(assert (=> d!1732475 (= (matchRSpec!2358 (regOne!31022 r!7292) s!2326) e!3369354)))

(declare-fun b!5438834 () Bool)

(declare-fun c!949000 () Bool)

(assert (=> b!5438834 (= c!949000 ((_ is Union!15255) (regOne!31022 r!7292)))))

(declare-fun e!3369356 () Bool)

(declare-fun e!3369358 () Bool)

(assert (=> b!5438834 (= e!3369356 e!3369358)))

(declare-fun b!5438835 () Bool)

(assert (=> b!5438835 (= e!3369356 (= s!2326 (Cons!61942 (c!948819 (regOne!31022 r!7292)) Nil!61942)))))

(declare-fun bm!389968 () Bool)

(assert (=> bm!389968 (= call!389973 (isEmpty!33925 s!2326))))

(declare-fun call!389974 () Bool)

(assert (=> b!5438836 (= e!3369359 call!389974)))

(declare-fun b!5438837 () Bool)

(assert (=> b!5438837 (= e!3369358 e!3369357)))

(declare-fun res!2315586 () Bool)

(assert (=> b!5438837 (= res!2315586 (matchRSpec!2358 (regOne!31023 (regOne!31022 r!7292)) s!2326))))

(assert (=> b!5438837 (=> res!2315586 e!3369357)))

(declare-fun b!5438838 () Bool)

(declare-fun e!3369355 () Bool)

(assert (=> b!5438838 (= e!3369354 e!3369355)))

(declare-fun res!2315584 () Bool)

(assert (=> b!5438838 (= res!2315584 (not ((_ is EmptyLang!15255) (regOne!31022 r!7292))))))

(assert (=> b!5438838 (=> (not res!2315584) (not e!3369355))))

(declare-fun b!5438839 () Bool)

(declare-fun c!948999 () Bool)

(assert (=> b!5438839 (= c!948999 ((_ is ElementMatch!15255) (regOne!31022 r!7292)))))

(assert (=> b!5438839 (= e!3369355 e!3369356)))

(assert (=> b!5438840 (= e!3369360 call!389974)))

(declare-fun b!5438841 () Bool)

(assert (=> b!5438841 (= e!3369358 e!3369360)))

(declare-fun c!948998 () Bool)

(assert (=> b!5438841 (= c!948998 ((_ is Star!15255) (regOne!31022 r!7292)))))

(declare-fun bm!389969 () Bool)

(assert (=> bm!389969 (= call!389974 (Exists!2436 (ite c!948998 lambda!286123 lambda!286124)))))

(declare-fun b!5438842 () Bool)

(assert (=> b!5438842 (= e!3369354 call!389973)))

(assert (= (and d!1732475 c!949001) b!5438842))

(assert (= (and d!1732475 (not c!949001)) b!5438838))

(assert (= (and b!5438838 res!2315584) b!5438839))

(assert (= (and b!5438839 c!948999) b!5438835))

(assert (= (and b!5438839 (not c!948999)) b!5438834))

(assert (= (and b!5438834 c!949000) b!5438837))

(assert (= (and b!5438834 (not c!949000)) b!5438841))

(assert (= (and b!5438837 (not res!2315586)) b!5438833))

(assert (= (and b!5438841 c!948998) b!5438832))

(assert (= (and b!5438841 (not c!948998)) b!5438840))

(assert (= (and b!5438832 (not res!2315585)) b!5438836))

(assert (= (or b!5438836 b!5438840) bm!389969))

(assert (= (or b!5438842 b!5438832) bm!389968))

(declare-fun m!6460356 () Bool)

(assert (=> b!5438833 m!6460356))

(assert (=> bm!389968 m!6460336))

(declare-fun m!6460358 () Bool)

(assert (=> b!5438837 m!6460358))

(declare-fun m!6460360 () Bool)

(assert (=> bm!389969 m!6460360))

(assert (=> b!5438173 d!1732475))

(declare-fun d!1732477 () Bool)

(assert (=> d!1732477 (= (matchR!7440 (regOne!31022 r!7292) s!2326) (matchRSpec!2358 (regOne!31022 r!7292) s!2326))))

(declare-fun lt!2218471 () Unit!154562)

(assert (=> d!1732477 (= lt!2218471 (choose!41251 (regOne!31022 r!7292) s!2326))))

(assert (=> d!1732477 (validRegex!6991 (regOne!31022 r!7292))))

(assert (=> d!1732477 (= (mainMatchTheorem!2358 (regOne!31022 r!7292) s!2326) lt!2218471)))

(declare-fun bs!1255034 () Bool)

(assert (= bs!1255034 d!1732477))

(assert (=> bs!1255034 m!6459918))

(assert (=> bs!1255034 m!6459920))

(declare-fun m!6460362 () Bool)

(assert (=> bs!1255034 m!6460362))

(assert (=> bs!1255034 m!6460100))

(assert (=> b!5438173 d!1732477))

(declare-fun b!5438843 () Bool)

(declare-fun res!2315591 () Bool)

(declare-fun e!3369361 () Bool)

(assert (=> b!5438843 (=> (not res!2315591) (not e!3369361))))

(assert (=> b!5438843 (= res!2315591 (isEmpty!33925 (tail!10758 s!2326)))))

(declare-fun b!5438844 () Bool)

(declare-fun e!3369367 () Bool)

(declare-fun lt!2218472 () Bool)

(assert (=> b!5438844 (= e!3369367 (not lt!2218472))))

(declare-fun b!5438845 () Bool)

(declare-fun e!3369363 () Bool)

(assert (=> b!5438845 (= e!3369363 (matchR!7440 (derivativeStep!4293 (regOne!31022 r!7292) (head!11661 s!2326)) (tail!10758 s!2326)))))

(declare-fun d!1732479 () Bool)

(declare-fun e!3369362 () Bool)

(assert (=> d!1732479 e!3369362))

(declare-fun c!949004 () Bool)

(assert (=> d!1732479 (= c!949004 ((_ is EmptyExpr!15255) (regOne!31022 r!7292)))))

(assert (=> d!1732479 (= lt!2218472 e!3369363)))

(declare-fun c!949003 () Bool)

(assert (=> d!1732479 (= c!949003 (isEmpty!33925 s!2326))))

(assert (=> d!1732479 (validRegex!6991 (regOne!31022 r!7292))))

(assert (=> d!1732479 (= (matchR!7440 (regOne!31022 r!7292) s!2326) lt!2218472)))

(declare-fun bm!389970 () Bool)

(declare-fun call!389975 () Bool)

(assert (=> bm!389970 (= call!389975 (isEmpty!33925 s!2326))))

(declare-fun b!5438846 () Bool)

(declare-fun res!2315592 () Bool)

(declare-fun e!3369364 () Bool)

(assert (=> b!5438846 (=> res!2315592 e!3369364)))

(assert (=> b!5438846 (= res!2315592 e!3369361)))

(declare-fun res!2315587 () Bool)

(assert (=> b!5438846 (=> (not res!2315587) (not e!3369361))))

(assert (=> b!5438846 (= res!2315587 lt!2218472)))

(declare-fun b!5438847 () Bool)

(assert (=> b!5438847 (= e!3369363 (nullable!5424 (regOne!31022 r!7292)))))

(declare-fun b!5438848 () Bool)

(assert (=> b!5438848 (= e!3369362 e!3369367)))

(declare-fun c!949002 () Bool)

(assert (=> b!5438848 (= c!949002 ((_ is EmptyLang!15255) (regOne!31022 r!7292)))))

(declare-fun b!5438849 () Bool)

(declare-fun e!3369365 () Bool)

(assert (=> b!5438849 (= e!3369365 (not (= (head!11661 s!2326) (c!948819 (regOne!31022 r!7292)))))))

(declare-fun b!5438850 () Bool)

(assert (=> b!5438850 (= e!3369361 (= (head!11661 s!2326) (c!948819 (regOne!31022 r!7292))))))

(declare-fun b!5438851 () Bool)

(assert (=> b!5438851 (= e!3369362 (= lt!2218472 call!389975))))

(declare-fun b!5438852 () Bool)

(declare-fun res!2315588 () Bool)

(assert (=> b!5438852 (=> res!2315588 e!3369364)))

(assert (=> b!5438852 (= res!2315588 (not ((_ is ElementMatch!15255) (regOne!31022 r!7292))))))

(assert (=> b!5438852 (= e!3369367 e!3369364)))

(declare-fun b!5438853 () Bool)

(declare-fun res!2315594 () Bool)

(assert (=> b!5438853 (=> (not res!2315594) (not e!3369361))))

(assert (=> b!5438853 (= res!2315594 (not call!389975))))

(declare-fun b!5438854 () Bool)

(declare-fun e!3369366 () Bool)

(assert (=> b!5438854 (= e!3369366 e!3369365)))

(declare-fun res!2315593 () Bool)

(assert (=> b!5438854 (=> res!2315593 e!3369365)))

(assert (=> b!5438854 (= res!2315593 call!389975)))

(declare-fun b!5438855 () Bool)

(assert (=> b!5438855 (= e!3369364 e!3369366)))

(declare-fun res!2315590 () Bool)

(assert (=> b!5438855 (=> (not res!2315590) (not e!3369366))))

(assert (=> b!5438855 (= res!2315590 (not lt!2218472))))

(declare-fun b!5438856 () Bool)

(declare-fun res!2315589 () Bool)

(assert (=> b!5438856 (=> res!2315589 e!3369365)))

(assert (=> b!5438856 (= res!2315589 (not (isEmpty!33925 (tail!10758 s!2326))))))

(assert (= (and d!1732479 c!949003) b!5438847))

(assert (= (and d!1732479 (not c!949003)) b!5438845))

(assert (= (and d!1732479 c!949004) b!5438851))

(assert (= (and d!1732479 (not c!949004)) b!5438848))

(assert (= (and b!5438848 c!949002) b!5438844))

(assert (= (and b!5438848 (not c!949002)) b!5438852))

(assert (= (and b!5438852 (not res!2315588)) b!5438846))

(assert (= (and b!5438846 res!2315587) b!5438853))

(assert (= (and b!5438853 res!2315594) b!5438843))

(assert (= (and b!5438843 res!2315591) b!5438850))

(assert (= (and b!5438846 (not res!2315592)) b!5438855))

(assert (= (and b!5438855 res!2315590) b!5438854))

(assert (= (and b!5438854 (not res!2315593)) b!5438856))

(assert (= (and b!5438856 (not res!2315589)) b!5438849))

(assert (= (or b!5438851 b!5438853 b!5438854) bm!389970))

(assert (=> b!5438845 m!6460342))

(assert (=> b!5438845 m!6460342))

(declare-fun m!6460364 () Bool)

(assert (=> b!5438845 m!6460364))

(assert (=> b!5438845 m!6460346))

(assert (=> b!5438845 m!6460364))

(assert (=> b!5438845 m!6460346))

(declare-fun m!6460366 () Bool)

(assert (=> b!5438845 m!6460366))

(declare-fun m!6460368 () Bool)

(assert (=> b!5438847 m!6460368))

(assert (=> bm!389970 m!6460336))

(assert (=> b!5438849 m!6460342))

(assert (=> d!1732479 m!6460336))

(assert (=> d!1732479 m!6460100))

(assert (=> b!5438850 m!6460342))

(assert (=> b!5438856 m!6460346))

(assert (=> b!5438856 m!6460346))

(assert (=> b!5438856 m!6460352))

(assert (=> b!5438843 m!6460346))

(assert (=> b!5438843 m!6460346))

(assert (=> b!5438843 m!6460352))

(assert (=> b!5438173 d!1732479))

(declare-fun bs!1255035 () Bool)

(declare-fun b!5438861 () Bool)

(assert (= bs!1255035 (and b!5438861 b!5438783)))

(declare-fun lambda!286125 () Int)

(assert (=> bs!1255035 (= (and (= (reg!15584 (regTwo!31022 r!7292)) (reg!15584 r!7292)) (= (regTwo!31022 r!7292) r!7292)) (= lambda!286125 lambda!286121))))

(declare-fun bs!1255036 () Bool)

(assert (= bs!1255036 (and b!5438861 b!5438840)))

(assert (=> bs!1255036 (not (= lambda!286125 lambda!286124))))

(declare-fun bs!1255037 () Bool)

(assert (= bs!1255037 (and b!5438861 d!1732391)))

(assert (=> bs!1255037 (not (= lambda!286125 lambda!286088))))

(declare-fun bs!1255038 () Bool)

(assert (= bs!1255038 (and b!5438861 d!1732403)))

(assert (=> bs!1255038 (not (= lambda!286125 lambda!286096))))

(declare-fun bs!1255039 () Bool)

(assert (= bs!1255039 (and b!5438861 b!5438179)))

(assert (=> bs!1255039 (not (= lambda!286125 lambda!286063))))

(assert (=> bs!1255039 (not (= lambda!286125 lambda!286064))))

(assert (=> bs!1255038 (not (= lambda!286125 lambda!286097))))

(declare-fun bs!1255040 () Bool)

(assert (= bs!1255040 (and b!5438861 b!5438836)))

(assert (=> bs!1255040 (= (and (= (reg!15584 (regTwo!31022 r!7292)) (reg!15584 (regOne!31022 r!7292))) (= (regTwo!31022 r!7292) (regOne!31022 r!7292))) (= lambda!286125 lambda!286123))))

(declare-fun bs!1255041 () Bool)

(assert (= bs!1255041 (and b!5438861 b!5438787)))

(assert (=> bs!1255041 (not (= lambda!286125 lambda!286122))))

(assert (=> b!5438861 true))

(assert (=> b!5438861 true))

(declare-fun bs!1255042 () Bool)

(declare-fun b!5438865 () Bool)

(assert (= bs!1255042 (and b!5438865 b!5438783)))

(declare-fun lambda!286126 () Int)

(assert (=> bs!1255042 (not (= lambda!286126 lambda!286121))))

(declare-fun bs!1255043 () Bool)

(assert (= bs!1255043 (and b!5438865 b!5438840)))

(assert (=> bs!1255043 (= (and (= (regOne!31022 (regTwo!31022 r!7292)) (regOne!31022 (regOne!31022 r!7292))) (= (regTwo!31022 (regTwo!31022 r!7292)) (regTwo!31022 (regOne!31022 r!7292)))) (= lambda!286126 lambda!286124))))

(declare-fun bs!1255044 () Bool)

(assert (= bs!1255044 (and b!5438865 d!1732391)))

(assert (=> bs!1255044 (not (= lambda!286126 lambda!286088))))

(declare-fun bs!1255045 () Bool)

(assert (= bs!1255045 (and b!5438865 d!1732403)))

(assert (=> bs!1255045 (not (= lambda!286126 lambda!286096))))

(declare-fun bs!1255046 () Bool)

(assert (= bs!1255046 (and b!5438865 b!5438861)))

(assert (=> bs!1255046 (not (= lambda!286126 lambda!286125))))

(declare-fun bs!1255047 () Bool)

(assert (= bs!1255047 (and b!5438865 b!5438179)))

(assert (=> bs!1255047 (not (= lambda!286126 lambda!286063))))

(assert (=> bs!1255047 (= (and (= (regOne!31022 (regTwo!31022 r!7292)) (regOne!31022 r!7292)) (= (regTwo!31022 (regTwo!31022 r!7292)) (regTwo!31022 r!7292))) (= lambda!286126 lambda!286064))))

(assert (=> bs!1255045 (= (and (= (regOne!31022 (regTwo!31022 r!7292)) (regOne!31022 r!7292)) (= (regTwo!31022 (regTwo!31022 r!7292)) (regTwo!31022 r!7292))) (= lambda!286126 lambda!286097))))

(declare-fun bs!1255048 () Bool)

(assert (= bs!1255048 (and b!5438865 b!5438836)))

(assert (=> bs!1255048 (not (= lambda!286126 lambda!286123))))

(declare-fun bs!1255049 () Bool)

(assert (= bs!1255049 (and b!5438865 b!5438787)))

(assert (=> bs!1255049 (= (and (= (regOne!31022 (regTwo!31022 r!7292)) (regOne!31022 r!7292)) (= (regTwo!31022 (regTwo!31022 r!7292)) (regTwo!31022 r!7292))) (= lambda!286126 lambda!286122))))

(assert (=> b!5438865 true))

(assert (=> b!5438865 true))

(declare-fun b!5438857 () Bool)

(declare-fun res!2315596 () Bool)

(declare-fun e!3369373 () Bool)

(assert (=> b!5438857 (=> res!2315596 e!3369373)))

(declare-fun call!389976 () Bool)

(assert (=> b!5438857 (= res!2315596 call!389976)))

(declare-fun e!3369374 () Bool)

(assert (=> b!5438857 (= e!3369374 e!3369373)))

(declare-fun b!5438858 () Bool)

(declare-fun e!3369371 () Bool)

(assert (=> b!5438858 (= e!3369371 (matchRSpec!2358 (regTwo!31023 (regTwo!31022 r!7292)) s!2326))))

(declare-fun d!1732481 () Bool)

(declare-fun c!949008 () Bool)

(assert (=> d!1732481 (= c!949008 ((_ is EmptyExpr!15255) (regTwo!31022 r!7292)))))

(declare-fun e!3369368 () Bool)

(assert (=> d!1732481 (= (matchRSpec!2358 (regTwo!31022 r!7292) s!2326) e!3369368)))

(declare-fun b!5438859 () Bool)

(declare-fun c!949007 () Bool)

(assert (=> b!5438859 (= c!949007 ((_ is Union!15255) (regTwo!31022 r!7292)))))

(declare-fun e!3369370 () Bool)

(declare-fun e!3369372 () Bool)

(assert (=> b!5438859 (= e!3369370 e!3369372)))

(declare-fun b!5438860 () Bool)

(assert (=> b!5438860 (= e!3369370 (= s!2326 (Cons!61942 (c!948819 (regTwo!31022 r!7292)) Nil!61942)))))

(declare-fun bm!389971 () Bool)

(assert (=> bm!389971 (= call!389976 (isEmpty!33925 s!2326))))

(declare-fun call!389977 () Bool)

(assert (=> b!5438861 (= e!3369373 call!389977)))

(declare-fun b!5438862 () Bool)

(assert (=> b!5438862 (= e!3369372 e!3369371)))

(declare-fun res!2315597 () Bool)

(assert (=> b!5438862 (= res!2315597 (matchRSpec!2358 (regOne!31023 (regTwo!31022 r!7292)) s!2326))))

(assert (=> b!5438862 (=> res!2315597 e!3369371)))

(declare-fun b!5438863 () Bool)

(declare-fun e!3369369 () Bool)

(assert (=> b!5438863 (= e!3369368 e!3369369)))

(declare-fun res!2315595 () Bool)

(assert (=> b!5438863 (= res!2315595 (not ((_ is EmptyLang!15255) (regTwo!31022 r!7292))))))

(assert (=> b!5438863 (=> (not res!2315595) (not e!3369369))))

(declare-fun b!5438864 () Bool)

(declare-fun c!949006 () Bool)

(assert (=> b!5438864 (= c!949006 ((_ is ElementMatch!15255) (regTwo!31022 r!7292)))))

(assert (=> b!5438864 (= e!3369369 e!3369370)))

(assert (=> b!5438865 (= e!3369374 call!389977)))

(declare-fun b!5438866 () Bool)

(assert (=> b!5438866 (= e!3369372 e!3369374)))

(declare-fun c!949005 () Bool)

(assert (=> b!5438866 (= c!949005 ((_ is Star!15255) (regTwo!31022 r!7292)))))

(declare-fun bm!389972 () Bool)

(assert (=> bm!389972 (= call!389977 (Exists!2436 (ite c!949005 lambda!286125 lambda!286126)))))

(declare-fun b!5438867 () Bool)

(assert (=> b!5438867 (= e!3369368 call!389976)))

(assert (= (and d!1732481 c!949008) b!5438867))

(assert (= (and d!1732481 (not c!949008)) b!5438863))

(assert (= (and b!5438863 res!2315595) b!5438864))

(assert (= (and b!5438864 c!949006) b!5438860))

(assert (= (and b!5438864 (not c!949006)) b!5438859))

(assert (= (and b!5438859 c!949007) b!5438862))

(assert (= (and b!5438859 (not c!949007)) b!5438866))

(assert (= (and b!5438862 (not res!2315597)) b!5438858))

(assert (= (and b!5438866 c!949005) b!5438857))

(assert (= (and b!5438866 (not c!949005)) b!5438865))

(assert (= (and b!5438857 (not res!2315596)) b!5438861))

(assert (= (or b!5438861 b!5438865) bm!389972))

(assert (= (or b!5438867 b!5438857) bm!389971))

(declare-fun m!6460370 () Bool)

(assert (=> b!5438858 m!6460370))

(assert (=> bm!389971 m!6460336))

(declare-fun m!6460372 () Bool)

(assert (=> b!5438862 m!6460372))

(declare-fun m!6460374 () Bool)

(assert (=> bm!389972 m!6460374))

(assert (=> b!5438173 d!1732481))

(declare-fun b!5438868 () Bool)

(declare-fun res!2315602 () Bool)

(declare-fun e!3369375 () Bool)

(assert (=> b!5438868 (=> (not res!2315602) (not e!3369375))))

(assert (=> b!5438868 (= res!2315602 (isEmpty!33925 (tail!10758 s!2326)))))

(declare-fun b!5438869 () Bool)

(declare-fun e!3369381 () Bool)

(declare-fun lt!2218473 () Bool)

(assert (=> b!5438869 (= e!3369381 (not lt!2218473))))

(declare-fun b!5438870 () Bool)

(declare-fun e!3369377 () Bool)

(assert (=> b!5438870 (= e!3369377 (matchR!7440 (derivativeStep!4293 (regTwo!31022 r!7292) (head!11661 s!2326)) (tail!10758 s!2326)))))

(declare-fun d!1732483 () Bool)

(declare-fun e!3369376 () Bool)

(assert (=> d!1732483 e!3369376))

(declare-fun c!949011 () Bool)

(assert (=> d!1732483 (= c!949011 ((_ is EmptyExpr!15255) (regTwo!31022 r!7292)))))

(assert (=> d!1732483 (= lt!2218473 e!3369377)))

(declare-fun c!949010 () Bool)

(assert (=> d!1732483 (= c!949010 (isEmpty!33925 s!2326))))

(assert (=> d!1732483 (validRegex!6991 (regTwo!31022 r!7292))))

(assert (=> d!1732483 (= (matchR!7440 (regTwo!31022 r!7292) s!2326) lt!2218473)))

(declare-fun bm!389973 () Bool)

(declare-fun call!389978 () Bool)

(assert (=> bm!389973 (= call!389978 (isEmpty!33925 s!2326))))

(declare-fun b!5438871 () Bool)

(declare-fun res!2315603 () Bool)

(declare-fun e!3369378 () Bool)

(assert (=> b!5438871 (=> res!2315603 e!3369378)))

(assert (=> b!5438871 (= res!2315603 e!3369375)))

(declare-fun res!2315598 () Bool)

(assert (=> b!5438871 (=> (not res!2315598) (not e!3369375))))

(assert (=> b!5438871 (= res!2315598 lt!2218473)))

(declare-fun b!5438872 () Bool)

(assert (=> b!5438872 (= e!3369377 (nullable!5424 (regTwo!31022 r!7292)))))

(declare-fun b!5438873 () Bool)

(assert (=> b!5438873 (= e!3369376 e!3369381)))

(declare-fun c!949009 () Bool)

(assert (=> b!5438873 (= c!949009 ((_ is EmptyLang!15255) (regTwo!31022 r!7292)))))

(declare-fun b!5438874 () Bool)

(declare-fun e!3369379 () Bool)

(assert (=> b!5438874 (= e!3369379 (not (= (head!11661 s!2326) (c!948819 (regTwo!31022 r!7292)))))))

(declare-fun b!5438875 () Bool)

(assert (=> b!5438875 (= e!3369375 (= (head!11661 s!2326) (c!948819 (regTwo!31022 r!7292))))))

(declare-fun b!5438876 () Bool)

(assert (=> b!5438876 (= e!3369376 (= lt!2218473 call!389978))))

(declare-fun b!5438877 () Bool)

(declare-fun res!2315599 () Bool)

(assert (=> b!5438877 (=> res!2315599 e!3369378)))

(assert (=> b!5438877 (= res!2315599 (not ((_ is ElementMatch!15255) (regTwo!31022 r!7292))))))

(assert (=> b!5438877 (= e!3369381 e!3369378)))

(declare-fun b!5438878 () Bool)

(declare-fun res!2315605 () Bool)

(assert (=> b!5438878 (=> (not res!2315605) (not e!3369375))))

(assert (=> b!5438878 (= res!2315605 (not call!389978))))

(declare-fun b!5438879 () Bool)

(declare-fun e!3369380 () Bool)

(assert (=> b!5438879 (= e!3369380 e!3369379)))

(declare-fun res!2315604 () Bool)

(assert (=> b!5438879 (=> res!2315604 e!3369379)))

(assert (=> b!5438879 (= res!2315604 call!389978)))

(declare-fun b!5438880 () Bool)

(assert (=> b!5438880 (= e!3369378 e!3369380)))

(declare-fun res!2315601 () Bool)

(assert (=> b!5438880 (=> (not res!2315601) (not e!3369380))))

(assert (=> b!5438880 (= res!2315601 (not lt!2218473))))

(declare-fun b!5438881 () Bool)

(declare-fun res!2315600 () Bool)

(assert (=> b!5438881 (=> res!2315600 e!3369379)))

(assert (=> b!5438881 (= res!2315600 (not (isEmpty!33925 (tail!10758 s!2326))))))

(assert (= (and d!1732483 c!949010) b!5438872))

(assert (= (and d!1732483 (not c!949010)) b!5438870))

(assert (= (and d!1732483 c!949011) b!5438876))

(assert (= (and d!1732483 (not c!949011)) b!5438873))

(assert (= (and b!5438873 c!949009) b!5438869))

(assert (= (and b!5438873 (not c!949009)) b!5438877))

(assert (= (and b!5438877 (not res!2315599)) b!5438871))

(assert (= (and b!5438871 res!2315598) b!5438878))

(assert (= (and b!5438878 res!2315605) b!5438868))

(assert (= (and b!5438868 res!2315602) b!5438875))

(assert (= (and b!5438871 (not res!2315603)) b!5438880))

(assert (= (and b!5438880 res!2315601) b!5438879))

(assert (= (and b!5438879 (not res!2315604)) b!5438881))

(assert (= (and b!5438881 (not res!2315600)) b!5438874))

(assert (= (or b!5438876 b!5438878 b!5438879) bm!389973))

(assert (=> b!5438870 m!6460342))

(assert (=> b!5438870 m!6460342))

(declare-fun m!6460376 () Bool)

(assert (=> b!5438870 m!6460376))

(assert (=> b!5438870 m!6460346))

(assert (=> b!5438870 m!6460376))

(assert (=> b!5438870 m!6460346))

(declare-fun m!6460378 () Bool)

(assert (=> b!5438870 m!6460378))

(declare-fun m!6460380 () Bool)

(assert (=> b!5438872 m!6460380))

(assert (=> bm!389973 m!6460336))

(assert (=> b!5438874 m!6460342))

(assert (=> d!1732483 m!6460336))

(assert (=> d!1732483 m!6459924))

(assert (=> b!5438875 m!6460342))

(assert (=> b!5438881 m!6460346))

(assert (=> b!5438881 m!6460346))

(assert (=> b!5438881 m!6460352))

(assert (=> b!5438868 m!6460346))

(assert (=> b!5438868 m!6460346))

(assert (=> b!5438868 m!6460352))

(assert (=> b!5438173 d!1732483))

(declare-fun bm!389980 () Bool)

(declare-fun call!389987 () Bool)

(declare-fun c!949016 () Bool)

(assert (=> bm!389980 (= call!389987 (validRegex!6991 (ite c!949016 (regOne!31023 (regTwo!31022 r!7292)) (regOne!31022 (regTwo!31022 r!7292)))))))

(declare-fun b!5438900 () Bool)

(declare-fun e!3369399 () Bool)

(declare-fun e!3369400 () Bool)

(assert (=> b!5438900 (= e!3369399 e!3369400)))

(assert (=> b!5438900 (= c!949016 ((_ is Union!15255) (regTwo!31022 r!7292)))))

(declare-fun b!5438901 () Bool)

(declare-fun e!3369396 () Bool)

(declare-fun call!389985 () Bool)

(assert (=> b!5438901 (= e!3369396 call!389985)))

(declare-fun b!5438902 () Bool)

(declare-fun e!3369398 () Bool)

(declare-fun call!389986 () Bool)

(assert (=> b!5438902 (= e!3369398 call!389986)))

(declare-fun b!5438903 () Bool)

(declare-fun e!3369402 () Bool)

(declare-fun e!3369401 () Bool)

(assert (=> b!5438903 (= e!3369402 e!3369401)))

(declare-fun res!2315620 () Bool)

(assert (=> b!5438903 (=> (not res!2315620) (not e!3369401))))

(assert (=> b!5438903 (= res!2315620 call!389987)))

(declare-fun b!5438904 () Bool)

(declare-fun res!2315618 () Bool)

(assert (=> b!5438904 (=> res!2315618 e!3369402)))

(assert (=> b!5438904 (= res!2315618 (not ((_ is Concat!24100) (regTwo!31022 r!7292))))))

(assert (=> b!5438904 (= e!3369400 e!3369402)))

(declare-fun b!5438906 () Bool)

(assert (=> b!5438906 (= e!3369401 call!389986)))

(declare-fun b!5438907 () Bool)

(assert (=> b!5438907 (= e!3369399 e!3369396)))

(declare-fun res!2315619 () Bool)

(assert (=> b!5438907 (= res!2315619 (not (nullable!5424 (reg!15584 (regTwo!31022 r!7292)))))))

(assert (=> b!5438907 (=> (not res!2315619) (not e!3369396))))

(declare-fun bm!389981 () Bool)

(assert (=> bm!389981 (= call!389986 call!389985)))

(declare-fun bm!389982 () Bool)

(declare-fun c!949017 () Bool)

(assert (=> bm!389982 (= call!389985 (validRegex!6991 (ite c!949017 (reg!15584 (regTwo!31022 r!7292)) (ite c!949016 (regTwo!31023 (regTwo!31022 r!7292)) (regTwo!31022 (regTwo!31022 r!7292))))))))

(declare-fun b!5438908 () Bool)

(declare-fun res!2315617 () Bool)

(assert (=> b!5438908 (=> (not res!2315617) (not e!3369398))))

(assert (=> b!5438908 (= res!2315617 call!389987)))

(assert (=> b!5438908 (= e!3369400 e!3369398)))

(declare-fun d!1732485 () Bool)

(declare-fun res!2315616 () Bool)

(declare-fun e!3369397 () Bool)

(assert (=> d!1732485 (=> res!2315616 e!3369397)))

(assert (=> d!1732485 (= res!2315616 ((_ is ElementMatch!15255) (regTwo!31022 r!7292)))))

(assert (=> d!1732485 (= (validRegex!6991 (regTwo!31022 r!7292)) e!3369397)))

(declare-fun b!5438905 () Bool)

(assert (=> b!5438905 (= e!3369397 e!3369399)))

(assert (=> b!5438905 (= c!949017 ((_ is Star!15255) (regTwo!31022 r!7292)))))

(assert (= (and d!1732485 (not res!2315616)) b!5438905))

(assert (= (and b!5438905 c!949017) b!5438907))

(assert (= (and b!5438905 (not c!949017)) b!5438900))

(assert (= (and b!5438907 res!2315619) b!5438901))

(assert (= (and b!5438900 c!949016) b!5438908))

(assert (= (and b!5438900 (not c!949016)) b!5438904))

(assert (= (and b!5438908 res!2315617) b!5438902))

(assert (= (and b!5438904 (not res!2315618)) b!5438903))

(assert (= (and b!5438903 res!2315620) b!5438906))

(assert (= (or b!5438902 b!5438906) bm!389981))

(assert (= (or b!5438908 b!5438903) bm!389980))

(assert (= (or b!5438901 bm!389981) bm!389982))

(declare-fun m!6460382 () Bool)

(assert (=> bm!389980 m!6460382))

(declare-fun m!6460384 () Bool)

(assert (=> b!5438907 m!6460384))

(declare-fun m!6460386 () Bool)

(assert (=> bm!389982 m!6460386))

(assert (=> b!5438173 d!1732485))

(declare-fun d!1732487 () Bool)

(assert (=> d!1732487 (= (matchR!7440 (regTwo!31022 r!7292) s!2326) (matchRSpec!2358 (regTwo!31022 r!7292) s!2326))))

(declare-fun lt!2218474 () Unit!154562)

(assert (=> d!1732487 (= lt!2218474 (choose!41251 (regTwo!31022 r!7292) s!2326))))

(assert (=> d!1732487 (validRegex!6991 (regTwo!31022 r!7292))))

(assert (=> d!1732487 (= (mainMatchTheorem!2358 (regTwo!31022 r!7292) s!2326) lt!2218474)))

(declare-fun bs!1255050 () Bool)

(assert (= bs!1255050 d!1732487))

(assert (=> bs!1255050 m!6459912))

(assert (=> bs!1255050 m!6459922))

(declare-fun m!6460388 () Bool)

(assert (=> bs!1255050 m!6460388))

(assert (=> bs!1255050 m!6459924))

(assert (=> b!5438173 d!1732487))

(declare-fun bm!389983 () Bool)

(declare-fun call!389990 () Bool)

(declare-fun c!949018 () Bool)

(assert (=> bm!389983 (= call!389990 (validRegex!6991 (ite c!949018 (regOne!31023 r!7292) (regOne!31022 r!7292))))))

(declare-fun b!5438909 () Bool)

(declare-fun e!3369406 () Bool)

(declare-fun e!3369407 () Bool)

(assert (=> b!5438909 (= e!3369406 e!3369407)))

(assert (=> b!5438909 (= c!949018 ((_ is Union!15255) r!7292))))

(declare-fun b!5438910 () Bool)

(declare-fun e!3369403 () Bool)

(declare-fun call!389988 () Bool)

(assert (=> b!5438910 (= e!3369403 call!389988)))

(declare-fun b!5438911 () Bool)

(declare-fun e!3369405 () Bool)

(declare-fun call!389989 () Bool)

(assert (=> b!5438911 (= e!3369405 call!389989)))

(declare-fun b!5438912 () Bool)

(declare-fun e!3369409 () Bool)

(declare-fun e!3369408 () Bool)

(assert (=> b!5438912 (= e!3369409 e!3369408)))

(declare-fun res!2315625 () Bool)

(assert (=> b!5438912 (=> (not res!2315625) (not e!3369408))))

(assert (=> b!5438912 (= res!2315625 call!389990)))

(declare-fun b!5438913 () Bool)

(declare-fun res!2315623 () Bool)

(assert (=> b!5438913 (=> res!2315623 e!3369409)))

(assert (=> b!5438913 (= res!2315623 (not ((_ is Concat!24100) r!7292)))))

(assert (=> b!5438913 (= e!3369407 e!3369409)))

(declare-fun b!5438915 () Bool)

(assert (=> b!5438915 (= e!3369408 call!389989)))

(declare-fun b!5438916 () Bool)

(assert (=> b!5438916 (= e!3369406 e!3369403)))

(declare-fun res!2315624 () Bool)

(assert (=> b!5438916 (= res!2315624 (not (nullable!5424 (reg!15584 r!7292))))))

(assert (=> b!5438916 (=> (not res!2315624) (not e!3369403))))

(declare-fun bm!389984 () Bool)

(assert (=> bm!389984 (= call!389989 call!389988)))

(declare-fun bm!389985 () Bool)

(declare-fun c!949019 () Bool)

(assert (=> bm!389985 (= call!389988 (validRegex!6991 (ite c!949019 (reg!15584 r!7292) (ite c!949018 (regTwo!31023 r!7292) (regTwo!31022 r!7292)))))))

(declare-fun b!5438917 () Bool)

(declare-fun res!2315622 () Bool)

(assert (=> b!5438917 (=> (not res!2315622) (not e!3369405))))

(assert (=> b!5438917 (= res!2315622 call!389990)))

(assert (=> b!5438917 (= e!3369407 e!3369405)))

(declare-fun d!1732489 () Bool)

(declare-fun res!2315621 () Bool)

(declare-fun e!3369404 () Bool)

(assert (=> d!1732489 (=> res!2315621 e!3369404)))

(assert (=> d!1732489 (= res!2315621 ((_ is ElementMatch!15255) r!7292))))

(assert (=> d!1732489 (= (validRegex!6991 r!7292) e!3369404)))

(declare-fun b!5438914 () Bool)

(assert (=> b!5438914 (= e!3369404 e!3369406)))

(assert (=> b!5438914 (= c!949019 ((_ is Star!15255) r!7292))))

(assert (= (and d!1732489 (not res!2315621)) b!5438914))

(assert (= (and b!5438914 c!949019) b!5438916))

(assert (= (and b!5438914 (not c!949019)) b!5438909))

(assert (= (and b!5438916 res!2315624) b!5438910))

(assert (= (and b!5438909 c!949018) b!5438917))

(assert (= (and b!5438909 (not c!949018)) b!5438913))

(assert (= (and b!5438917 res!2315622) b!5438911))

(assert (= (and b!5438913 (not res!2315623)) b!5438912))

(assert (= (and b!5438912 res!2315625) b!5438915))

(assert (= (or b!5438911 b!5438915) bm!389984))

(assert (= (or b!5438917 b!5438912) bm!389983))

(assert (= (or b!5438910 bm!389984) bm!389985))

(declare-fun m!6460390 () Bool)

(assert (=> bm!389983 m!6460390))

(declare-fun m!6460392 () Bool)

(assert (=> b!5438916 m!6460392))

(declare-fun m!6460394 () Bool)

(assert (=> bm!389985 m!6460394))

(assert (=> start!570294 d!1732489))

(assert (=> b!5438174 d!1732435))

(declare-fun d!1732491 () Bool)

(assert (=> d!1732491 (not (matchZipper!1499 lt!2218382 (t!375291 s!2326)))))

(declare-fun lt!2218477 () Unit!154562)

(declare-fun choose!41252 ((InoxSet Context!9278) List!62066) Unit!154562)

(assert (=> d!1732491 (= lt!2218477 (choose!41252 lt!2218382 (t!375291 s!2326)))))

(assert (=> d!1732491 (= lt!2218382 ((as const (Array Context!9278 Bool)) false))))

(assert (=> d!1732491 (= (lemmaEmptyZipperMatchesNothing!10 lt!2218382 (t!375291 s!2326)) lt!2218477)))

(declare-fun bs!1255051 () Bool)

(assert (= bs!1255051 d!1732491))

(assert (=> bs!1255051 m!6459926))

(declare-fun m!6460396 () Bool)

(assert (=> bs!1255051 m!6460396))

(assert (=> b!5438174 d!1732491))

(declare-fun d!1732493 () Bool)

(assert (=> d!1732493 (= (isEmpty!33922 (t!375289 (exprs!5139 (h!68389 zl!343)))) ((_ is Nil!61940) (t!375289 (exprs!5139 (h!68389 zl!343)))))))

(assert (=> b!5438164 d!1732493))

(declare-fun bs!1255052 () Bool)

(declare-fun d!1732495 () Bool)

(assert (= bs!1255052 (and d!1732495 d!1732361)))

(declare-fun lambda!286129 () Int)

(assert (=> bs!1255052 (= lambda!286129 lambda!286077)))

(declare-fun bs!1255053 () Bool)

(assert (= bs!1255053 (and d!1732495 d!1732429)))

(assert (=> bs!1255053 (= lambda!286129 lambda!286100)))

(declare-fun bs!1255054 () Bool)

(assert (= bs!1255054 (and d!1732495 d!1732463)))

(assert (=> bs!1255054 (= lambda!286129 lambda!286113)))

(declare-fun bs!1255055 () Bool)

(assert (= bs!1255055 (and d!1732495 d!1732465)))

(assert (=> bs!1255055 (= lambda!286129 lambda!286116)))

(declare-fun b!5438938 () Bool)

(declare-fun e!3369422 () Bool)

(declare-fun lt!2218480 () Regex!15255)

(declare-fun isEmptyExpr!1004 (Regex!15255) Bool)

(assert (=> b!5438938 (= e!3369422 (isEmptyExpr!1004 lt!2218480))))

(declare-fun b!5438939 () Bool)

(declare-fun e!3369426 () Regex!15255)

(assert (=> b!5438939 (= e!3369426 (h!68388 (exprs!5139 (h!68389 zl!343))))))

(declare-fun b!5438940 () Bool)

(declare-fun e!3369425 () Bool)

(assert (=> b!5438940 (= e!3369425 (= lt!2218480 (head!11662 (exprs!5139 (h!68389 zl!343)))))))

(declare-fun b!5438941 () Bool)

(declare-fun e!3369423 () Regex!15255)

(assert (=> b!5438941 (= e!3369426 e!3369423)))

(declare-fun c!949030 () Bool)

(assert (=> b!5438941 (= c!949030 ((_ is Cons!61940) (exprs!5139 (h!68389 zl!343))))))

(declare-fun b!5438942 () Bool)

(declare-fun e!3369424 () Bool)

(assert (=> b!5438942 (= e!3369424 e!3369422)))

(declare-fun c!949028 () Bool)

(assert (=> b!5438942 (= c!949028 (isEmpty!33922 (exprs!5139 (h!68389 zl!343))))))

(declare-fun b!5438943 () Bool)

(declare-fun e!3369427 () Bool)

(assert (=> b!5438943 (= e!3369427 (isEmpty!33922 (t!375289 (exprs!5139 (h!68389 zl!343)))))))

(declare-fun b!5438944 () Bool)

(declare-fun isConcat!527 (Regex!15255) Bool)

(assert (=> b!5438944 (= e!3369425 (isConcat!527 lt!2218480))))

(declare-fun b!5438946 () Bool)

(assert (=> b!5438946 (= e!3369423 (Concat!24100 (h!68388 (exprs!5139 (h!68389 zl!343))) (generalisedConcat!924 (t!375289 (exprs!5139 (h!68389 zl!343))))))))

(declare-fun b!5438947 () Bool)

(assert (=> b!5438947 (= e!3369423 EmptyExpr!15255)))

(assert (=> d!1732495 e!3369424))

(declare-fun res!2315630 () Bool)

(assert (=> d!1732495 (=> (not res!2315630) (not e!3369424))))

(assert (=> d!1732495 (= res!2315630 (validRegex!6991 lt!2218480))))

(assert (=> d!1732495 (= lt!2218480 e!3369426)))

(declare-fun c!949031 () Bool)

(assert (=> d!1732495 (= c!949031 e!3369427)))

(declare-fun res!2315631 () Bool)

(assert (=> d!1732495 (=> (not res!2315631) (not e!3369427))))

(assert (=> d!1732495 (= res!2315631 ((_ is Cons!61940) (exprs!5139 (h!68389 zl!343))))))

(assert (=> d!1732495 (forall!14572 (exprs!5139 (h!68389 zl!343)) lambda!286129)))

(assert (=> d!1732495 (= (generalisedConcat!924 (exprs!5139 (h!68389 zl!343))) lt!2218480)))

(declare-fun b!5438945 () Bool)

(assert (=> b!5438945 (= e!3369422 e!3369425)))

(declare-fun c!949029 () Bool)

(assert (=> b!5438945 (= c!949029 (isEmpty!33922 (tail!10759 (exprs!5139 (h!68389 zl!343)))))))

(assert (= (and d!1732495 res!2315631) b!5438943))

(assert (= (and d!1732495 c!949031) b!5438939))

(assert (= (and d!1732495 (not c!949031)) b!5438941))

(assert (= (and b!5438941 c!949030) b!5438946))

(assert (= (and b!5438941 (not c!949030)) b!5438947))

(assert (= (and d!1732495 res!2315630) b!5438942))

(assert (= (and b!5438942 c!949028) b!5438938))

(assert (= (and b!5438942 (not c!949028)) b!5438945))

(assert (= (and b!5438945 c!949029) b!5438940))

(assert (= (and b!5438945 (not c!949029)) b!5438944))

(declare-fun m!6460398 () Bool)

(assert (=> b!5438946 m!6460398))

(declare-fun m!6460400 () Bool)

(assert (=> b!5438945 m!6460400))

(assert (=> b!5438945 m!6460400))

(declare-fun m!6460402 () Bool)

(assert (=> b!5438945 m!6460402))

(declare-fun m!6460404 () Bool)

(assert (=> d!1732495 m!6460404))

(declare-fun m!6460406 () Bool)

(assert (=> d!1732495 m!6460406))

(declare-fun m!6460408 () Bool)

(assert (=> b!5438942 m!6460408))

(declare-fun m!6460410 () Bool)

(assert (=> b!5438938 m!6460410))

(assert (=> b!5438943 m!6459902))

(declare-fun m!6460412 () Bool)

(assert (=> b!5438940 m!6460412))

(declare-fun m!6460414 () Bool)

(assert (=> b!5438944 m!6460414))

(assert (=> b!5438172 d!1732495))

(declare-fun b!5438952 () Bool)

(declare-fun e!3369430 () Bool)

(declare-fun tp!1499614 () Bool)

(assert (=> b!5438952 (= e!3369430 (and tp_is_empty!39763 tp!1499614))))

(assert (=> b!5438176 (= tp!1499551 e!3369430)))

(assert (= (and b!5438176 ((_ is Cons!61942) (t!375291 s!2326))) b!5438952))

(declare-fun b!5438960 () Bool)

(declare-fun e!3369436 () Bool)

(declare-fun tp!1499619 () Bool)

(assert (=> b!5438960 (= e!3369436 tp!1499619)))

(declare-fun tp!1499620 () Bool)

(declare-fun e!3369435 () Bool)

(declare-fun b!5438959 () Bool)

(assert (=> b!5438959 (= e!3369435 (and (inv!81384 (h!68389 (t!375290 zl!343))) e!3369436 tp!1499620))))

(assert (=> b!5438166 (= tp!1499545 e!3369435)))

(assert (= b!5438959 b!5438960))

(assert (= (and b!5438166 ((_ is Cons!61941) (t!375290 zl!343))) b!5438959))

(declare-fun m!6460416 () Bool)

(assert (=> b!5438959 m!6460416))

(declare-fun b!5438972 () Bool)

(declare-fun e!3369439 () Bool)

(declare-fun tp!1499631 () Bool)

(declare-fun tp!1499633 () Bool)

(assert (=> b!5438972 (= e!3369439 (and tp!1499631 tp!1499633))))

(declare-fun b!5438973 () Bool)

(declare-fun tp!1499632 () Bool)

(assert (=> b!5438973 (= e!3369439 tp!1499632)))

(assert (=> b!5438171 (= tp!1499548 e!3369439)))

(declare-fun b!5438974 () Bool)

(declare-fun tp!1499635 () Bool)

(declare-fun tp!1499634 () Bool)

(assert (=> b!5438974 (= e!3369439 (and tp!1499635 tp!1499634))))

(declare-fun b!5438971 () Bool)

(assert (=> b!5438971 (= e!3369439 tp_is_empty!39763)))

(assert (= (and b!5438171 ((_ is ElementMatch!15255) (regOne!31023 r!7292))) b!5438971))

(assert (= (and b!5438171 ((_ is Concat!24100) (regOne!31023 r!7292))) b!5438972))

(assert (= (and b!5438171 ((_ is Star!15255) (regOne!31023 r!7292))) b!5438973))

(assert (= (and b!5438171 ((_ is Union!15255) (regOne!31023 r!7292))) b!5438974))

(declare-fun b!5438976 () Bool)

(declare-fun e!3369440 () Bool)

(declare-fun tp!1499636 () Bool)

(declare-fun tp!1499638 () Bool)

(assert (=> b!5438976 (= e!3369440 (and tp!1499636 tp!1499638))))

(declare-fun b!5438977 () Bool)

(declare-fun tp!1499637 () Bool)

(assert (=> b!5438977 (= e!3369440 tp!1499637)))

(assert (=> b!5438171 (= tp!1499546 e!3369440)))

(declare-fun b!5438978 () Bool)

(declare-fun tp!1499640 () Bool)

(declare-fun tp!1499639 () Bool)

(assert (=> b!5438978 (= e!3369440 (and tp!1499640 tp!1499639))))

(declare-fun b!5438975 () Bool)

(assert (=> b!5438975 (= e!3369440 tp_is_empty!39763)))

(assert (= (and b!5438171 ((_ is ElementMatch!15255) (regTwo!31023 r!7292))) b!5438975))

(assert (= (and b!5438171 ((_ is Concat!24100) (regTwo!31023 r!7292))) b!5438976))

(assert (= (and b!5438171 ((_ is Star!15255) (regTwo!31023 r!7292))) b!5438977))

(assert (= (and b!5438171 ((_ is Union!15255) (regTwo!31023 r!7292))) b!5438978))

(declare-fun b!5438983 () Bool)

(declare-fun e!3369443 () Bool)

(declare-fun tp!1499645 () Bool)

(declare-fun tp!1499646 () Bool)

(assert (=> b!5438983 (= e!3369443 (and tp!1499645 tp!1499646))))

(assert (=> b!5438161 (= tp!1499549 e!3369443)))

(assert (= (and b!5438161 ((_ is Cons!61940) (exprs!5139 setElem!35541))) b!5438983))

(declare-fun b!5438984 () Bool)

(declare-fun e!3369444 () Bool)

(declare-fun tp!1499647 () Bool)

(declare-fun tp!1499648 () Bool)

(assert (=> b!5438984 (= e!3369444 (and tp!1499647 tp!1499648))))

(assert (=> b!5438184 (= tp!1499550 e!3369444)))

(assert (= (and b!5438184 ((_ is Cons!61940) (exprs!5139 (h!68389 zl!343)))) b!5438984))

(declare-fun condSetEmpty!35547 () Bool)

(assert (=> setNonEmpty!35541 (= condSetEmpty!35547 (= setRest!35541 ((as const (Array Context!9278 Bool)) false)))))

(declare-fun setRes!35547 () Bool)

(assert (=> setNonEmpty!35541 (= tp!1499544 setRes!35547)))

(declare-fun setIsEmpty!35547 () Bool)

(assert (=> setIsEmpty!35547 setRes!35547))

(declare-fun tp!1499654 () Bool)

(declare-fun e!3369447 () Bool)

(declare-fun setElem!35547 () Context!9278)

(declare-fun setNonEmpty!35547 () Bool)

(assert (=> setNonEmpty!35547 (= setRes!35547 (and tp!1499654 (inv!81384 setElem!35547) e!3369447))))

(declare-fun setRest!35547 () (InoxSet Context!9278))

(assert (=> setNonEmpty!35547 (= setRest!35541 ((_ map or) (store ((as const (Array Context!9278 Bool)) false) setElem!35547 true) setRest!35547))))

(declare-fun b!5438989 () Bool)

(declare-fun tp!1499653 () Bool)

(assert (=> b!5438989 (= e!3369447 tp!1499653)))

(assert (= (and setNonEmpty!35541 condSetEmpty!35547) setIsEmpty!35547))

(assert (= (and setNonEmpty!35541 (not condSetEmpty!35547)) setNonEmpty!35547))

(assert (= setNonEmpty!35547 b!5438989))

(declare-fun m!6460418 () Bool)

(assert (=> setNonEmpty!35547 m!6460418))

(declare-fun b!5438991 () Bool)

(declare-fun e!3369448 () Bool)

(declare-fun tp!1499655 () Bool)

(declare-fun tp!1499657 () Bool)

(assert (=> b!5438991 (= e!3369448 (and tp!1499655 tp!1499657))))

(declare-fun b!5438992 () Bool)

(declare-fun tp!1499656 () Bool)

(assert (=> b!5438992 (= e!3369448 tp!1499656)))

(assert (=> b!5438162 (= tp!1499547 e!3369448)))

(declare-fun b!5438993 () Bool)

(declare-fun tp!1499659 () Bool)

(declare-fun tp!1499658 () Bool)

(assert (=> b!5438993 (= e!3369448 (and tp!1499659 tp!1499658))))

(declare-fun b!5438990 () Bool)

(assert (=> b!5438990 (= e!3369448 tp_is_empty!39763)))

(assert (= (and b!5438162 ((_ is ElementMatch!15255) (regOne!31022 r!7292))) b!5438990))

(assert (= (and b!5438162 ((_ is Concat!24100) (regOne!31022 r!7292))) b!5438991))

(assert (= (and b!5438162 ((_ is Star!15255) (regOne!31022 r!7292))) b!5438992))

(assert (= (and b!5438162 ((_ is Union!15255) (regOne!31022 r!7292))) b!5438993))

(declare-fun b!5438995 () Bool)

(declare-fun e!3369449 () Bool)

(declare-fun tp!1499660 () Bool)

(declare-fun tp!1499662 () Bool)

(assert (=> b!5438995 (= e!3369449 (and tp!1499660 tp!1499662))))

(declare-fun b!5438996 () Bool)

(declare-fun tp!1499661 () Bool)

(assert (=> b!5438996 (= e!3369449 tp!1499661)))

(assert (=> b!5438162 (= tp!1499553 e!3369449)))

(declare-fun b!5438997 () Bool)

(declare-fun tp!1499664 () Bool)

(declare-fun tp!1499663 () Bool)

(assert (=> b!5438997 (= e!3369449 (and tp!1499664 tp!1499663))))

(declare-fun b!5438994 () Bool)

(assert (=> b!5438994 (= e!3369449 tp_is_empty!39763)))

(assert (= (and b!5438162 ((_ is ElementMatch!15255) (regTwo!31022 r!7292))) b!5438994))

(assert (= (and b!5438162 ((_ is Concat!24100) (regTwo!31022 r!7292))) b!5438995))

(assert (= (and b!5438162 ((_ is Star!15255) (regTwo!31022 r!7292))) b!5438996))

(assert (= (and b!5438162 ((_ is Union!15255) (regTwo!31022 r!7292))) b!5438997))

(declare-fun b!5438999 () Bool)

(declare-fun e!3369450 () Bool)

(declare-fun tp!1499665 () Bool)

(declare-fun tp!1499667 () Bool)

(assert (=> b!5438999 (= e!3369450 (and tp!1499665 tp!1499667))))

(declare-fun b!5439000 () Bool)

(declare-fun tp!1499666 () Bool)

(assert (=> b!5439000 (= e!3369450 tp!1499666)))

(assert (=> b!5438183 (= tp!1499552 e!3369450)))

(declare-fun b!5439001 () Bool)

(declare-fun tp!1499669 () Bool)

(declare-fun tp!1499668 () Bool)

(assert (=> b!5439001 (= e!3369450 (and tp!1499669 tp!1499668))))

(declare-fun b!5438998 () Bool)

(assert (=> b!5438998 (= e!3369450 tp_is_empty!39763)))

(assert (= (and b!5438183 ((_ is ElementMatch!15255) (reg!15584 r!7292))) b!5438998))

(assert (= (and b!5438183 ((_ is Concat!24100) (reg!15584 r!7292))) b!5438999))

(assert (= (and b!5438183 ((_ is Star!15255) (reg!15584 r!7292))) b!5439000))

(assert (= (and b!5438183 ((_ is Union!15255) (reg!15584 r!7292))) b!5439001))

(declare-fun b_lambda!207355 () Bool)

(assert (= b_lambda!207353 (or b!5438165 b_lambda!207355)))

(declare-fun bs!1255056 () Bool)

(declare-fun d!1732497 () Bool)

(assert (= bs!1255056 (and d!1732497 b!5438165)))

(assert (=> bs!1255056 (= (dynLambda!24377 lambda!286065 (h!68389 zl!343)) (derivationStepZipperUp!627 (h!68389 zl!343) (h!68390 s!2326)))))

(assert (=> bs!1255056 m!6459960))

(assert (=> d!1732461 d!1732497))

(check-sat (not b!5438707) (not b!5438978) (not d!1732403) (not bm!389970) (not d!1732453) (not bm!389956) (not b!5438730) (not b!5438872) (not bm!389950) (not b!5438376) (not bm!389973) (not b!5438870) (not b!5438868) (not d!1732479) (not b!5438560) (not d!1732463) (not b!5438943) (not b!5438825) (not b!5438702) (not b!5438875) (not d!1732467) (not b!5438742) (not b!5438383) (not d!1732477) (not bm!389971) (not b!5438973) (not b!5438820) (not d!1732427) (not b!5438984) (not b!5438833) (not b!5438378) (not d!1732457) (not bm!389969) (not b!5438559) (not bm!389951) (not b!5439001) (not b!5438944) (not b!5438818) (not d!1732387) (not d!1732353) (not b!5438562) (not b!5438862) tp_is_empty!39763 (not b!5438974) (not b!5438843) (not b!5438733) (not b!5438991) (not b!5438697) (not b!5438849) (not b!5438977) (not d!1732487) (not b!5438679) (not d!1732361) (not b!5438845) (not b!5438705) (not b!5438993) (not b!5438847) (not b!5438728) (not b!5438732) (not b!5438729) (not bm!389983) (not b!5438938) (not bm!389963) (not b!5438881) (not b!5438916) (not b!5438856) (not d!1732437) (not b!5438995) (not bm!389949) (not d!1732491) (not b!5438700) (not b!5438850) (not b!5438983) (not b!5439000) (not b!5438945) (not bm!389982) (not b!5438737) (not b!5438253) (not d!1732461) (not b!5438784) (not b!5438822) (not b!5438942) (not b!5438976) (not b_lambda!207355) (not b!5438972) (not b!5438780) (not d!1732495) (not setNonEmpty!35547) (not b!5438960) (not b!5438824) (not b!5438382) (not bm!389964) (not d!1732357) (not d!1732435) (not d!1732389) (not d!1732363) (not d!1732473) (not b!5438997) (not d!1732425) (not b!5438989) (not d!1732483) (not b!5438874) (not b!5438375) (not bm!389967) (not b!5438554) (not b!5438731) (not b!5438952) (not bm!389958) (not d!1732431) (not b!5438695) (not b!5438940) (not bm!389968) (not bs!1255056) (not b!5438837) (not b!5438946) (not b!5438999) (not bm!389980) (not b!5438858) (not b!5438381) (not b!5438252) (not bm!389957) (not d!1732391) (not bm!389972) (not b!5438996) (not b!5438746) (not d!1732471) (not b!5438907) (not b!5438959) (not b!5438831) (not d!1732465) (not bm!389985) (not d!1732429) (not b!5438561) (not b!5438992))
(check-sat)
