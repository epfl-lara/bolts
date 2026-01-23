; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!684972 () Bool)

(assert start!684972)

(declare-fun b!7060300 () Bool)

(assert (=> b!7060300 true))

(declare-fun b!7060290 () Bool)

(assert (=> b!7060290 true))

(declare-fun b!7060310 () Bool)

(assert (=> b!7060310 true))

(declare-fun bs!1878991 () Bool)

(declare-fun b!7060306 () Bool)

(assert (= bs!1878991 (and b!7060306 b!7060300)))

(declare-fun lambda!421672 () Int)

(declare-fun lambda!421668 () Int)

(assert (=> bs!1878991 (not (= lambda!421672 lambda!421668))))

(declare-fun b!7060289 () Bool)

(declare-fun e!4244576 () Bool)

(declare-fun e!4244584 () Bool)

(assert (=> b!7060289 (= e!4244576 e!4244584)))

(declare-fun res!2882280 () Bool)

(assert (=> b!7060289 (=> res!2882280 e!4244584)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35448 0))(
  ( (C!35449 (val!27426 Int)) )
))
(declare-datatypes ((Regex!17589 0))(
  ( (ElementMatch!17589 (c!1315882 C!35448)) (Concat!26434 (regOne!35690 Regex!17589) (regTwo!35690 Regex!17589)) (EmptyExpr!17589) (Star!17589 (reg!17918 Regex!17589)) (EmptyLang!17589) (Union!17589 (regOne!35691 Regex!17589) (regTwo!35691 Regex!17589)) )
))
(declare-datatypes ((List!68293 0))(
  ( (Nil!68169) (Cons!68169 (h!74617 Regex!17589) (t!382074 List!68293)) )
))
(declare-datatypes ((Context!13170 0))(
  ( (Context!13171 (exprs!7085 List!68293)) )
))
(declare-fun lt!2535021 () (InoxSet Context!13170))

(declare-datatypes ((List!68294 0))(
  ( (Nil!68170) (Cons!68170 (h!74618 C!35448) (t!382075 List!68294)) )
))
(declare-fun s!7408 () List!68294)

(declare-fun matchZipper!3129 ((InoxSet Context!13170) List!68294) Bool)

(assert (=> b!7060289 (= res!2882280 (not (matchZipper!3129 lt!2535021 s!7408)))))

(declare-fun lambda!421670 () Int)

(declare-fun ct2!306 () Context!13170)

(declare-datatypes ((Unit!161854 0))(
  ( (Unit!161855) )
))
(declare-fun lt!2535015 () Unit!161854)

(declare-fun lt!2535027 () List!68293)

(declare-fun lemmaConcatPreservesForall!900 (List!68293 List!68293 Int) Unit!161854)

(assert (=> b!7060289 (= lt!2535015 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun e!4244582 () Bool)

(declare-fun e!4244577 () Bool)

(assert (=> b!7060290 (= e!4244582 e!4244577)))

(declare-fun res!2882289 () Bool)

(assert (=> b!7060290 (=> res!2882289 e!4244577)))

(declare-fun lt!2534993 () Context!13170)

(declare-fun lt!2535009 () Context!13170)

(declare-fun z1!570 () (InoxSet Context!13170))

(declare-fun lt!2535022 () Context!13170)

(assert (=> b!7060290 (= res!2882289 (or (not (= lt!2535009 lt!2535022)) (not (select z1!570 lt!2534993))))))

(declare-fun ++!15675 (List!68293 List!68293) List!68293)

(assert (=> b!7060290 (= lt!2535009 (Context!13171 (++!15675 (exprs!7085 lt!2534993) (exprs!7085 ct2!306))))))

(declare-fun lt!2535031 () Unit!161854)

(assert (=> b!7060290 (= lt!2535031 (lemmaConcatPreservesForall!900 (exprs!7085 lt!2534993) (exprs!7085 ct2!306) lambda!421670))))

(declare-fun lambda!421669 () Int)

(declare-fun mapPost2!418 ((InoxSet Context!13170) Int Context!13170) Context!13170)

(assert (=> b!7060290 (= lt!2534993 (mapPost2!418 z1!570 lambda!421669 lt!2535022))))

(declare-fun b!7060291 () Bool)

(declare-fun res!2882272 () Bool)

(declare-fun e!4244590 () Bool)

(assert (=> b!7060291 (=> res!2882272 e!4244590)))

(declare-fun isEmpty!39762 (List!68293) Bool)

(assert (=> b!7060291 (= res!2882272 (isEmpty!39762 (exprs!7085 lt!2534993)))))

(declare-fun b!7060292 () Bool)

(declare-fun e!4244586 () Bool)

(declare-fun e!4244588 () Bool)

(assert (=> b!7060292 (= e!4244586 e!4244588)))

(declare-fun res!2882277 () Bool)

(assert (=> b!7060292 (=> res!2882277 e!4244588)))

(declare-fun lt!2535004 () (InoxSet Context!13170))

(declare-datatypes ((tuple2!68180 0))(
  ( (tuple2!68181 (_1!37393 List!68294) (_2!37393 List!68294)) )
))
(declare-fun lt!2535036 () tuple2!68180)

(assert (=> b!7060292 (= res!2882277 (not (matchZipper!3129 lt!2535004 (_1!37393 lt!2535036))))))

(declare-datatypes ((Option!16922 0))(
  ( (None!16921) (Some!16921 (v!53215 tuple2!68180)) )
))
(declare-fun lt!2535039 () Option!16922)

(declare-fun get!23867 (Option!16922) tuple2!68180)

(assert (=> b!7060292 (= lt!2535036 (get!23867 lt!2535039))))

(declare-fun isDefined!13623 (Option!16922) Bool)

(assert (=> b!7060292 (isDefined!13623 lt!2535039)))

(declare-fun lt!2535041 () (InoxSet Context!13170))

(declare-fun findConcatSeparationZippers!438 ((InoxSet Context!13170) (InoxSet Context!13170) List!68294 List!68294 List!68294) Option!16922)

(assert (=> b!7060292 (= lt!2535039 (findConcatSeparationZippers!438 lt!2535004 lt!2535041 Nil!68170 s!7408 s!7408))))

(assert (=> b!7060292 (= lt!2535041 (store ((as const (Array Context!13170 Bool)) false) ct2!306 true))))

(declare-fun lt!2535011 () Unit!161854)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!426 ((InoxSet Context!13170) Context!13170 List!68294) Unit!161854)

(assert (=> b!7060292 (= lt!2535011 (lemmaConcatZipperMatchesStringThenFindConcatDefined!426 lt!2535004 ct2!306 s!7408))))

(declare-fun b!7060293 () Bool)

(declare-fun e!4244587 () Bool)

(declare-fun lt!2535023 () (InoxSet Context!13170))

(assert (=> b!7060293 (= e!4244587 (matchZipper!3129 lt!2535023 (t!382075 s!7408)))))

(declare-fun b!7060294 () Bool)

(declare-fun e!4244575 () Bool)

(assert (=> b!7060294 (= e!4244575 e!4244576)))

(declare-fun res!2882265 () Bool)

(assert (=> b!7060294 (=> res!2882265 e!4244576)))

(declare-fun derivationStepZipper!3039 ((InoxSet Context!13170) C!35448) (InoxSet Context!13170))

(assert (=> b!7060294 (= res!2882265 (not (= (derivationStepZipper!3039 lt!2535021 (h!74618 s!7408)) lt!2535023)))))

(declare-fun lt!2535028 () Unit!161854)

(assert (=> b!7060294 (= lt!2535028 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun lt!2535016 () Unit!161854)

(assert (=> b!7060294 (= lt!2535016 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun lt!2535006 () Context!13170)

(declare-fun lambda!421671 () Int)

(declare-fun flatMap!2515 ((InoxSet Context!13170) Int) (InoxSet Context!13170))

(declare-fun derivationStepZipperUp!2173 (Context!13170 C!35448) (InoxSet Context!13170))

(assert (=> b!7060294 (= (flatMap!2515 lt!2535021 lambda!421671) (derivationStepZipperUp!2173 lt!2535006 (h!74618 s!7408)))))

(declare-fun lt!2535040 () Unit!161854)

(declare-fun lemmaFlatMapOnSingletonSet!2024 ((InoxSet Context!13170) Context!13170 Int) Unit!161854)

(assert (=> b!7060294 (= lt!2535040 (lemmaFlatMapOnSingletonSet!2024 lt!2535021 lt!2535006 lambda!421671))))

(assert (=> b!7060294 (= lt!2535021 (store ((as const (Array Context!13170 Bool)) false) lt!2535006 true))))

(declare-fun lt!2535042 () Unit!161854)

(assert (=> b!7060294 (= lt!2535042 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun lt!2535024 () Unit!161854)

(assert (=> b!7060294 (= lt!2535024 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun b!7060295 () Bool)

(declare-fun res!2882268 () Bool)

(assert (=> b!7060295 (=> res!2882268 e!4244590)))

(get-info :version)

(assert (=> b!7060295 (= res!2882268 (not ((_ is Cons!68169) (exprs!7085 lt!2534993))))))

(declare-fun b!7060296 () Bool)

(declare-fun res!2882288 () Bool)

(declare-fun e!4244585 () Bool)

(assert (=> b!7060296 (=> res!2882288 e!4244585)))

(declare-fun nullableContext!101 (Context!13170) Bool)

(assert (=> b!7060296 (= res!2882288 (not (nullableContext!101 lt!2534993)))))

(declare-fun setIsEmpty!49983 () Bool)

(declare-fun setRes!49983 () Bool)

(assert (=> setIsEmpty!49983 setRes!49983))

(declare-fun b!7060297 () Bool)

(declare-fun e!4244572 () Bool)

(assert (=> b!7060297 (= e!4244572 (not (matchZipper!3129 lt!2535023 (t!382075 s!7408))))))

(declare-fun lt!2534991 () Unit!161854)

(assert (=> b!7060297 (= lt!2534991 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun b!7060298 () Bool)

(declare-fun e!4244578 () Bool)

(assert (=> b!7060298 (= e!4244578 e!4244575)))

(declare-fun res!2882275 () Bool)

(assert (=> b!7060298 (=> res!2882275 e!4244575)))

(assert (=> b!7060298 (= res!2882275 (not (matchZipper!3129 lt!2535023 (t!382075 s!7408))))))

(declare-fun lt!2535008 () Unit!161854)

(assert (=> b!7060298 (= lt!2535008 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun b!7060299 () Bool)

(declare-fun e!4244581 () Bool)

(assert (=> b!7060299 (= e!4244577 e!4244581)))

(declare-fun res!2882279 () Bool)

(assert (=> b!7060299 (=> res!2882279 e!4244581)))

(declare-fun lt!2535007 () (InoxSet Context!13170))

(declare-fun lt!2535005 () (InoxSet Context!13170))

(assert (=> b!7060299 (= res!2882279 (not (= lt!2535007 lt!2535005)))))

(assert (=> b!7060299 (= lt!2535007 (store ((as const (Array Context!13170 Bool)) false) lt!2535009 true))))

(declare-fun lt!2535025 () Unit!161854)

(assert (=> b!7060299 (= lt!2535025 (lemmaConcatPreservesForall!900 (exprs!7085 lt!2534993) (exprs!7085 ct2!306) lambda!421670))))

(declare-fun e!4244574 () Bool)

(assert (=> b!7060300 (= e!4244574 (not e!4244582))))

(declare-fun res!2882270 () Bool)

(assert (=> b!7060300 (=> res!2882270 e!4244582)))

(assert (=> b!7060300 (= res!2882270 (not (matchZipper!3129 lt!2535005 s!7408)))))

(assert (=> b!7060300 (= lt!2535005 (store ((as const (Array Context!13170 Bool)) false) lt!2535022 true))))

(declare-fun lt!2535026 () (InoxSet Context!13170))

(declare-fun getWitness!1663 ((InoxSet Context!13170) Int) Context!13170)

(assert (=> b!7060300 (= lt!2535022 (getWitness!1663 lt!2535026 lambda!421668))))

(declare-datatypes ((List!68295 0))(
  ( (Nil!68171) (Cons!68171 (h!74619 Context!13170) (t!382076 List!68295)) )
))
(declare-fun lt!2535001 () List!68295)

(declare-fun exists!3592 (List!68295 Int) Bool)

(assert (=> b!7060300 (exists!3592 lt!2535001 lambda!421668)))

(declare-fun lt!2534992 () Unit!161854)

(declare-fun lemmaZipperMatchesExistsMatchingContext!510 (List!68295 List!68294) Unit!161854)

(assert (=> b!7060300 (= lt!2534992 (lemmaZipperMatchesExistsMatchingContext!510 lt!2535001 s!7408))))

(declare-fun toList!10930 ((InoxSet Context!13170)) List!68295)

(assert (=> b!7060300 (= lt!2535001 (toList!10930 lt!2535026))))

(declare-fun b!7060301 () Bool)

(declare-fun res!2882266 () Bool)

(assert (=> b!7060301 (=> (not res!2882266) (not e!4244574))))

(assert (=> b!7060301 (= res!2882266 ((_ is Cons!68170) s!7408))))

(declare-fun b!7060302 () Bool)

(assert (=> b!7060302 (= e!4244588 e!4244585)))

(declare-fun res!2882278 () Bool)

(assert (=> b!7060302 (=> res!2882278 e!4244585)))

(declare-fun lt!2534998 () Context!13170)

(assert (=> b!7060302 (= res!2882278 (not (nullableContext!101 lt!2534998)))))

(declare-fun lt!2535029 () Context!13170)

(assert (=> b!7060302 (= lt!2535029 (getWitness!1663 lt!2535004 lambda!421672))))

(declare-fun b!7060303 () Bool)

(assert (=> b!7060303 (= e!4244585 (select (store ((as const (Array Context!13170 Bool)) false) lt!2534993 true) lt!2534993))))

(declare-fun exists!3593 ((InoxSet Context!13170) Int) Bool)

(assert (=> b!7060303 (exists!3593 lt!2535004 lambda!421672)))

(declare-fun lt!2535012 () Unit!161854)

(declare-fun lemmaContainsThenExists!127 ((InoxSet Context!13170) Context!13170 Int) Unit!161854)

(assert (=> b!7060303 (= lt!2535012 (lemmaContainsThenExists!127 lt!2535004 lt!2534998 lambda!421672))))

(declare-fun b!7060304 () Bool)

(declare-fun res!2882281 () Bool)

(assert (=> b!7060304 (=> res!2882281 e!4244578)))

(declare-fun lt!2534995 () Bool)

(assert (=> b!7060304 (= res!2882281 (not lt!2534995))))

(declare-fun b!7060305 () Bool)

(declare-fun res!2882284 () Bool)

(assert (=> b!7060305 (=> res!2882284 e!4244586)))

(declare-fun lt!2535014 () Int)

(declare-fun zipperDepthTotal!554 (List!68295) Int)

(assert (=> b!7060305 (= res!2882284 (>= (zipperDepthTotal!554 (Cons!68171 lt!2534998 Nil!68171)) lt!2535014))))

(declare-fun tp!1940989 () Bool)

(declare-fun e!4244589 () Bool)

(declare-fun setNonEmpty!49983 () Bool)

(declare-fun setElem!49983 () Context!13170)

(declare-fun inv!86831 (Context!13170) Bool)

(assert (=> setNonEmpty!49983 (= setRes!49983 (and tp!1940989 (inv!86831 setElem!49983) e!4244589))))

(declare-fun setRest!49983 () (InoxSet Context!13170))

(assert (=> setNonEmpty!49983 (= z1!570 ((_ map or) (store ((as const (Array Context!13170 Bool)) false) setElem!49983 true) setRest!49983))))

(declare-fun res!2882264 () Bool)

(assert (=> b!7060306 (=> res!2882264 e!4244588)))

(assert (=> b!7060306 (= res!2882264 (not (exists!3593 lt!2535004 lambda!421672)))))

(declare-fun res!2882271 () Bool)

(assert (=> start!684972 (=> (not res!2882271) (not e!4244574))))

(assert (=> start!684972 (= res!2882271 (matchZipper!3129 lt!2535026 s!7408))))

(declare-fun appendTo!710 ((InoxSet Context!13170) Context!13170) (InoxSet Context!13170))

(assert (=> start!684972 (= lt!2535026 (appendTo!710 z1!570 ct2!306))))

(assert (=> start!684972 e!4244574))

(declare-fun condSetEmpty!49983 () Bool)

(assert (=> start!684972 (= condSetEmpty!49983 (= z1!570 ((as const (Array Context!13170 Bool)) false)))))

(assert (=> start!684972 setRes!49983))

(declare-fun e!4244579 () Bool)

(assert (=> start!684972 (and (inv!86831 ct2!306) e!4244579)))

(declare-fun e!4244573 () Bool)

(assert (=> start!684972 e!4244573))

(declare-fun b!7060307 () Bool)

(declare-fun tp!1940987 () Bool)

(assert (=> b!7060307 (= e!4244589 tp!1940987)))

(declare-fun b!7060308 () Bool)

(declare-fun res!2882276 () Bool)

(assert (=> b!7060308 (=> res!2882276 e!4244582)))

(assert (=> b!7060308 (= res!2882276 (not (select lt!2535026 lt!2535022)))))

(declare-fun b!7060309 () Bool)

(declare-fun tp!1940988 () Bool)

(assert (=> b!7060309 (= e!4244579 tp!1940988)))

(assert (=> b!7060310 (= e!4244581 e!4244590)))

(declare-fun res!2882274 () Bool)

(assert (=> b!7060310 (=> res!2882274 e!4244590)))

(declare-fun lt!2535020 () (InoxSet Context!13170))

(assert (=> b!7060310 (= res!2882274 (not (= (derivationStepZipper!3039 lt!2535007 (h!74618 s!7408)) lt!2535020)))))

(assert (=> b!7060310 (= (flatMap!2515 lt!2535007 lambda!421671) (derivationStepZipperUp!2173 lt!2535009 (h!74618 s!7408)))))

(declare-fun lt!2535035 () Unit!161854)

(assert (=> b!7060310 (= lt!2535035 (lemmaFlatMapOnSingletonSet!2024 lt!2535007 lt!2535009 lambda!421671))))

(assert (=> b!7060310 (= lt!2535020 (derivationStepZipperUp!2173 lt!2535009 (h!74618 s!7408)))))

(declare-fun lt!2535002 () Unit!161854)

(assert (=> b!7060310 (= lt!2535002 (lemmaConcatPreservesForall!900 (exprs!7085 lt!2534993) (exprs!7085 ct2!306) lambda!421670))))

(declare-fun b!7060311 () Bool)

(declare-fun e!4244583 () Bool)

(assert (=> b!7060311 (= e!4244583 e!4244578)))

(declare-fun res!2882286 () Bool)

(assert (=> b!7060311 (=> res!2882286 e!4244578)))

(assert (=> b!7060311 (= res!2882286 e!4244572)))

(declare-fun res!2882283 () Bool)

(assert (=> b!7060311 (=> (not res!2882283) (not e!4244572))))

(declare-fun lt!2534994 () Bool)

(assert (=> b!7060311 (= res!2882283 (not (= lt!2534995 lt!2534994)))))

(assert (=> b!7060311 (= lt!2534995 (matchZipper!3129 lt!2535020 (t!382075 s!7408)))))

(declare-fun lt!2535033 () Unit!161854)

(assert (=> b!7060311 (= lt!2535033 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun lt!2535034 () (InoxSet Context!13170))

(assert (=> b!7060311 (= (matchZipper!3129 lt!2535034 (t!382075 s!7408)) e!4244587)))

(declare-fun res!2882285 () Bool)

(assert (=> b!7060311 (=> res!2882285 e!4244587)))

(assert (=> b!7060311 (= res!2882285 lt!2534994)))

(declare-fun lt!2535038 () (InoxSet Context!13170))

(assert (=> b!7060311 (= lt!2534994 (matchZipper!3129 lt!2535038 (t!382075 s!7408)))))

(declare-fun lt!2535000 () Unit!161854)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1602 ((InoxSet Context!13170) (InoxSet Context!13170) List!68294) Unit!161854)

(assert (=> b!7060311 (= lt!2535000 (lemmaZipperConcatMatchesSameAsBothZippers!1602 lt!2535038 lt!2535023 (t!382075 s!7408)))))

(declare-fun lt!2535019 () Unit!161854)

(assert (=> b!7060311 (= lt!2535019 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun lt!2535043 () Unit!161854)

(assert (=> b!7060311 (= lt!2535043 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun b!7060312 () Bool)

(declare-fun res!2882290 () Bool)

(assert (=> b!7060312 (=> res!2882290 e!4244588)))

(declare-fun ++!15676 (List!68294 List!68294) List!68294)

(assert (=> b!7060312 (= res!2882290 (not (= (++!15676 (_1!37393 lt!2535036) (_2!37393 lt!2535036)) s!7408)))))

(declare-fun b!7060313 () Bool)

(assert (=> b!7060313 (= e!4244584 e!4244586)))

(declare-fun res!2882287 () Bool)

(assert (=> b!7060313 (=> res!2882287 e!4244586)))

(declare-fun lt!2535017 () Int)

(declare-fun contextDepthTotal!525 (Context!13170) Int)

(assert (=> b!7060313 (= res!2882287 (<= lt!2535017 (contextDepthTotal!525 lt!2534998)))))

(assert (=> b!7060313 (<= lt!2535017 lt!2535014)))

(declare-fun lt!2535032 () List!68295)

(assert (=> b!7060313 (= lt!2535014 (zipperDepthTotal!554 lt!2535032))))

(assert (=> b!7060313 (= lt!2535017 (contextDepthTotal!525 lt!2534993))))

(declare-fun lt!2534997 () Unit!161854)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!92 (List!68295 Context!13170) Unit!161854)

(assert (=> b!7060313 (= lt!2534997 (lemmaTotalDepthZipperLargerThanOfAnyContext!92 lt!2535032 lt!2534993))))

(assert (=> b!7060313 (= lt!2535032 (toList!10930 z1!570))))

(declare-fun lt!2534996 () Unit!161854)

(assert (=> b!7060313 (= lt!2534996 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun lt!2535030 () Unit!161854)

(assert (=> b!7060313 (= lt!2535030 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun lt!2534999 () Unit!161854)

(assert (=> b!7060313 (= lt!2534999 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(assert (=> b!7060313 (= (flatMap!2515 lt!2535004 lambda!421671) (derivationStepZipperUp!2173 lt!2534998 (h!74618 s!7408)))))

(declare-fun lt!2535003 () Unit!161854)

(assert (=> b!7060313 (= lt!2535003 (lemmaFlatMapOnSingletonSet!2024 lt!2535004 lt!2534998 lambda!421671))))

(declare-fun map!15916 ((InoxSet Context!13170) Int) (InoxSet Context!13170))

(assert (=> b!7060313 (= (map!15916 lt!2535004 lambda!421669) (store ((as const (Array Context!13170 Bool)) false) (Context!13171 (++!15675 lt!2535027 (exprs!7085 ct2!306))) true))))

(declare-fun lt!2535018 () Unit!161854)

(assert (=> b!7060313 (= lt!2535018 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun lt!2535010 () Unit!161854)

(declare-fun lemmaMapOnSingletonSet!406 ((InoxSet Context!13170) Context!13170 Int) Unit!161854)

(assert (=> b!7060313 (= lt!2535010 (lemmaMapOnSingletonSet!406 lt!2535004 lt!2534998 lambda!421669))))

(assert (=> b!7060313 (= lt!2535004 (store ((as const (Array Context!13170 Bool)) false) lt!2534998 true))))

(declare-fun b!7060314 () Bool)

(declare-fun e!4244580 () Bool)

(assert (=> b!7060314 (= e!4244590 e!4244580)))

(declare-fun res!2882273 () Bool)

(assert (=> b!7060314 (=> res!2882273 e!4244580)))

(declare-fun nullable!7272 (Regex!17589) Bool)

(assert (=> b!7060314 (= res!2882273 (not (nullable!7272 (h!74617 (exprs!7085 lt!2534993)))))))

(assert (=> b!7060314 (= lt!2534998 (Context!13171 lt!2535027))))

(declare-fun tail!13731 (List!68293) List!68293)

(assert (=> b!7060314 (= lt!2535027 (tail!13731 (exprs!7085 lt!2534993)))))

(declare-fun b!7060315 () Bool)

(declare-fun tp_is_empty!44403 () Bool)

(declare-fun tp!1940990 () Bool)

(assert (=> b!7060315 (= e!4244573 (and tp_is_empty!44403 tp!1940990))))

(declare-fun b!7060316 () Bool)

(declare-fun res!2882269 () Bool)

(assert (=> b!7060316 (=> res!2882269 e!4244588)))

(declare-fun isEmpty!39763 (List!68294) Bool)

(assert (=> b!7060316 (= res!2882269 (not (isEmpty!39763 (_1!37393 lt!2535036))))))

(declare-fun b!7060317 () Bool)

(assert (=> b!7060317 (= e!4244580 e!4244583)))

(declare-fun res!2882267 () Bool)

(assert (=> b!7060317 (=> res!2882267 e!4244583)))

(assert (=> b!7060317 (= res!2882267 (not (= lt!2535020 lt!2535034)))))

(assert (=> b!7060317 (= lt!2535034 ((_ map or) lt!2535038 lt!2535023))))

(assert (=> b!7060317 (= lt!2535023 (derivationStepZipperUp!2173 lt!2535006 (h!74618 s!7408)))))

(declare-fun derivationStepZipperDown!2223 (Regex!17589 Context!13170 C!35448) (InoxSet Context!13170))

(assert (=> b!7060317 (= lt!2535038 (derivationStepZipperDown!2223 (h!74617 (exprs!7085 lt!2534993)) lt!2535006 (h!74618 s!7408)))))

(assert (=> b!7060317 (= lt!2535006 (Context!13171 (++!15675 lt!2535027 (exprs!7085 ct2!306))))))

(declare-fun lt!2535013 () Unit!161854)

(assert (=> b!7060317 (= lt!2535013 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun lt!2535037 () Unit!161854)

(assert (=> b!7060317 (= lt!2535037 (lemmaConcatPreservesForall!900 lt!2535027 (exprs!7085 ct2!306) lambda!421670))))

(declare-fun b!7060318 () Bool)

(declare-fun res!2882282 () Bool)

(assert (=> b!7060318 (=> res!2882282 e!4244588)))

(assert (=> b!7060318 (= res!2882282 (not (matchZipper!3129 lt!2535041 (_2!37393 lt!2535036))))))

(assert (= (and start!684972 res!2882271) b!7060301))

(assert (= (and b!7060301 res!2882266) b!7060300))

(assert (= (and b!7060300 (not res!2882270)) b!7060308))

(assert (= (and b!7060308 (not res!2882276)) b!7060290))

(assert (= (and b!7060290 (not res!2882289)) b!7060299))

(assert (= (and b!7060299 (not res!2882279)) b!7060310))

(assert (= (and b!7060310 (not res!2882274)) b!7060295))

(assert (= (and b!7060295 (not res!2882268)) b!7060291))

(assert (= (and b!7060291 (not res!2882272)) b!7060314))

(assert (= (and b!7060314 (not res!2882273)) b!7060317))

(assert (= (and b!7060317 (not res!2882267)) b!7060311))

(assert (= (and b!7060311 (not res!2882285)) b!7060293))

(assert (= (and b!7060311 res!2882283) b!7060297))

(assert (= (and b!7060311 (not res!2882286)) b!7060304))

(assert (= (and b!7060304 (not res!2882281)) b!7060298))

(assert (= (and b!7060298 (not res!2882275)) b!7060294))

(assert (= (and b!7060294 (not res!2882265)) b!7060289))

(assert (= (and b!7060289 (not res!2882280)) b!7060313))

(assert (= (and b!7060313 (not res!2882287)) b!7060305))

(assert (= (and b!7060305 (not res!2882284)) b!7060292))

(assert (= (and b!7060292 (not res!2882277)) b!7060318))

(assert (= (and b!7060318 (not res!2882282)) b!7060312))

(assert (= (and b!7060312 (not res!2882290)) b!7060316))

(assert (= (and b!7060316 (not res!2882269)) b!7060306))

(assert (= (and b!7060306 (not res!2882264)) b!7060302))

(assert (= (and b!7060302 (not res!2882278)) b!7060296))

(assert (= (and b!7060296 (not res!2882288)) b!7060303))

(assert (= (and start!684972 condSetEmpty!49983) setIsEmpty!49983))

(assert (= (and start!684972 (not condSetEmpty!49983)) setNonEmpty!49983))

(assert (= setNonEmpty!49983 b!7060307))

(assert (= start!684972 b!7060309))

(assert (= (and start!684972 ((_ is Cons!68170) s!7408)) b!7060315))

(declare-fun m!7780078 () Bool)

(assert (=> b!7060293 m!7780078))

(declare-fun m!7780080 () Bool)

(assert (=> b!7060290 m!7780080))

(declare-fun m!7780082 () Bool)

(assert (=> b!7060290 m!7780082))

(declare-fun m!7780084 () Bool)

(assert (=> b!7060290 m!7780084))

(declare-fun m!7780086 () Bool)

(assert (=> b!7060290 m!7780086))

(declare-fun m!7780088 () Bool)

(assert (=> b!7060303 m!7780088))

(declare-fun m!7780090 () Bool)

(assert (=> b!7060303 m!7780090))

(declare-fun m!7780092 () Bool)

(assert (=> b!7060303 m!7780092))

(declare-fun m!7780094 () Bool)

(assert (=> b!7060303 m!7780094))

(declare-fun m!7780096 () Bool)

(assert (=> b!7060300 m!7780096))

(declare-fun m!7780098 () Bool)

(assert (=> b!7060300 m!7780098))

(declare-fun m!7780100 () Bool)

(assert (=> b!7060300 m!7780100))

(declare-fun m!7780102 () Bool)

(assert (=> b!7060300 m!7780102))

(declare-fun m!7780104 () Bool)

(assert (=> b!7060300 m!7780104))

(declare-fun m!7780106 () Bool)

(assert (=> b!7060300 m!7780106))

(declare-fun m!7780108 () Bool)

(assert (=> b!7060291 m!7780108))

(declare-fun m!7780110 () Bool)

(assert (=> b!7060299 m!7780110))

(assert (=> b!7060299 m!7780084))

(declare-fun m!7780112 () Bool)

(assert (=> b!7060313 m!7780112))

(declare-fun m!7780114 () Bool)

(assert (=> b!7060313 m!7780114))

(declare-fun m!7780116 () Bool)

(assert (=> b!7060313 m!7780116))

(declare-fun m!7780118 () Bool)

(assert (=> b!7060313 m!7780118))

(declare-fun m!7780120 () Bool)

(assert (=> b!7060313 m!7780120))

(assert (=> b!7060313 m!7780116))

(declare-fun m!7780122 () Bool)

(assert (=> b!7060313 m!7780122))

(declare-fun m!7780124 () Bool)

(assert (=> b!7060313 m!7780124))

(declare-fun m!7780126 () Bool)

(assert (=> b!7060313 m!7780126))

(declare-fun m!7780128 () Bool)

(assert (=> b!7060313 m!7780128))

(declare-fun m!7780130 () Bool)

(assert (=> b!7060313 m!7780130))

(assert (=> b!7060313 m!7780116))

(declare-fun m!7780132 () Bool)

(assert (=> b!7060313 m!7780132))

(declare-fun m!7780134 () Bool)

(assert (=> b!7060313 m!7780134))

(declare-fun m!7780136 () Bool)

(assert (=> b!7060313 m!7780136))

(assert (=> b!7060313 m!7780116))

(declare-fun m!7780138 () Bool)

(assert (=> b!7060313 m!7780138))

(assert (=> b!7060311 m!7780116))

(assert (=> b!7060311 m!7780116))

(assert (=> b!7060311 m!7780116))

(declare-fun m!7780140 () Bool)

(assert (=> b!7060311 m!7780140))

(declare-fun m!7780142 () Bool)

(assert (=> b!7060311 m!7780142))

(declare-fun m!7780144 () Bool)

(assert (=> b!7060311 m!7780144))

(declare-fun m!7780146 () Bool)

(assert (=> b!7060311 m!7780146))

(declare-fun m!7780148 () Bool)

(assert (=> b!7060292 m!7780148))

(declare-fun m!7780150 () Bool)

(assert (=> b!7060292 m!7780150))

(declare-fun m!7780152 () Bool)

(assert (=> b!7060292 m!7780152))

(declare-fun m!7780154 () Bool)

(assert (=> b!7060292 m!7780154))

(declare-fun m!7780156 () Bool)

(assert (=> b!7060292 m!7780156))

(declare-fun m!7780158 () Bool)

(assert (=> b!7060292 m!7780158))

(declare-fun m!7780160 () Bool)

(assert (=> start!684972 m!7780160))

(declare-fun m!7780162 () Bool)

(assert (=> start!684972 m!7780162))

(declare-fun m!7780164 () Bool)

(assert (=> start!684972 m!7780164))

(declare-fun m!7780166 () Bool)

(assert (=> b!7060316 m!7780166))

(declare-fun m!7780168 () Bool)

(assert (=> b!7060312 m!7780168))

(declare-fun m!7780170 () Bool)

(assert (=> b!7060317 m!7780170))

(assert (=> b!7060317 m!7780120))

(assert (=> b!7060317 m!7780116))

(declare-fun m!7780172 () Bool)

(assert (=> b!7060317 m!7780172))

(assert (=> b!7060317 m!7780116))

(declare-fun m!7780174 () Bool)

(assert (=> b!7060305 m!7780174))

(assert (=> b!7060298 m!7780078))

(assert (=> b!7060298 m!7780116))

(assert (=> b!7060297 m!7780078))

(assert (=> b!7060297 m!7780116))

(assert (=> b!7060294 m!7780116))

(assert (=> b!7060294 m!7780116))

(assert (=> b!7060294 m!7780172))

(declare-fun m!7780176 () Bool)

(assert (=> b!7060294 m!7780176))

(declare-fun m!7780178 () Bool)

(assert (=> b!7060294 m!7780178))

(assert (=> b!7060294 m!7780116))

(assert (=> b!7060294 m!7780116))

(declare-fun m!7780180 () Bool)

(assert (=> b!7060294 m!7780180))

(declare-fun m!7780182 () Bool)

(assert (=> b!7060294 m!7780182))

(declare-fun m!7780184 () Bool)

(assert (=> b!7060296 m!7780184))

(declare-fun m!7780186 () Bool)

(assert (=> b!7060318 m!7780186))

(assert (=> b!7060306 m!7780092))

(declare-fun m!7780188 () Bool)

(assert (=> b!7060310 m!7780188))

(declare-fun m!7780190 () Bool)

(assert (=> b!7060310 m!7780190))

(assert (=> b!7060310 m!7780084))

(declare-fun m!7780192 () Bool)

(assert (=> b!7060310 m!7780192))

(declare-fun m!7780194 () Bool)

(assert (=> b!7060310 m!7780194))

(declare-fun m!7780196 () Bool)

(assert (=> b!7060289 m!7780196))

(assert (=> b!7060289 m!7780116))

(declare-fun m!7780198 () Bool)

(assert (=> b!7060302 m!7780198))

(declare-fun m!7780200 () Bool)

(assert (=> b!7060302 m!7780200))

(declare-fun m!7780202 () Bool)

(assert (=> b!7060308 m!7780202))

(declare-fun m!7780204 () Bool)

(assert (=> setNonEmpty!49983 m!7780204))

(declare-fun m!7780206 () Bool)

(assert (=> b!7060314 m!7780206))

(declare-fun m!7780208 () Bool)

(assert (=> b!7060314 m!7780208))

(check-sat (not b!7060314) (not b!7060312) (not b!7060313) (not b!7060317) (not b!7060297) (not b!7060309) (not b!7060310) (not b!7060300) (not b!7060315) (not b!7060292) (not b!7060293) (not b!7060307) (not b!7060306) (not b!7060289) (not b!7060305) (not b!7060298) (not b!7060290) (not b!7060299) (not b!7060311) (not b!7060318) (not setNonEmpty!49983) (not b!7060294) tp_is_empty!44403 (not b!7060291) (not start!684972) (not b!7060302) (not b!7060296) (not b!7060303) (not b!7060316))
(check-sat)
