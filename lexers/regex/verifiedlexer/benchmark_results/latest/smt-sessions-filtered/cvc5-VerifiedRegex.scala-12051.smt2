; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!676124 () Bool)

(assert start!676124)

(declare-fun b!7015769 () Bool)

(assert (=> b!7015769 true))

(declare-fun b!7015768 () Bool)

(assert (=> b!7015768 true))

(declare-fun b!7015762 () Bool)

(assert (=> b!7015762 true))

(declare-fun b!7015757 () Bool)

(declare-fun e!4217335 () Bool)

(declare-fun e!4217332 () Bool)

(assert (=> b!7015757 (= e!4217335 e!4217332)))

(declare-fun res!2863304 () Bool)

(assert (=> b!7015757 (=> res!2863304 e!4217332)))

(declare-datatypes ((C!34966 0))(
  ( (C!34967 (val!27185 Int)) )
))
(declare-datatypes ((Regex!17348 0))(
  ( (ElementMatch!17348 (c!1303453 C!34966)) (Concat!26193 (regOne!35208 Regex!17348) (regTwo!35208 Regex!17348)) (EmptyExpr!17348) (Star!17348 (reg!17677 Regex!17348)) (EmptyLang!17348) (Union!17348 (regOne!35209 Regex!17348) (regTwo!35209 Regex!17348)) )
))
(declare-datatypes ((List!67589 0))(
  ( (Nil!67465) (Cons!67465 (h!73913 Regex!17348) (t!381344 List!67589)) )
))
(declare-datatypes ((Context!12688 0))(
  ( (Context!12689 (exprs!6844 List!67589)) )
))
(declare-fun lt!2508018 () Context!12688)

(declare-fun nullable!7108 (Regex!17348) Bool)

(assert (=> b!7015757 (= res!2863304 (nullable!7108 (h!73913 (exprs!6844 lt!2508018))))))

(declare-fun lt!2508015 () Context!12688)

(declare-fun lt!2508005 () List!67589)

(assert (=> b!7015757 (= lt!2508015 (Context!12689 lt!2508005))))

(declare-fun tail!13436 (List!67589) List!67589)

(assert (=> b!7015757 (= lt!2508005 (tail!13436 (exprs!6844 lt!2508018)))))

(declare-fun setIsEmpty!48513 () Bool)

(declare-fun setRes!48513 () Bool)

(assert (=> setIsEmpty!48513 setRes!48513))

(declare-fun b!7015758 () Bool)

(declare-fun res!2863301 () Bool)

(declare-fun e!4217334 () Bool)

(assert (=> b!7015758 (=> res!2863301 e!4217334)))

(declare-fun lt!2508021 () Context!12688)

(declare-fun lt!2508017 () (Set Context!12688))

(assert (=> b!7015758 (= res!2863301 (not (set.member lt!2508021 lt!2508017)))))

(declare-fun b!7015759 () Bool)

(declare-fun res!2863302 () Bool)

(declare-fun e!4217336 () Bool)

(assert (=> b!7015759 (=> (not res!2863302) (not e!4217336))))

(declare-datatypes ((List!67590 0))(
  ( (Nil!67466) (Cons!67466 (h!73914 C!34966) (t!381345 List!67590)) )
))
(declare-fun s!7408 () List!67590)

(assert (=> b!7015759 (= res!2863302 (is-Cons!67466 s!7408))))

(declare-fun b!7015760 () Bool)

(declare-fun e!4217329 () Bool)

(declare-fun validRegex!8903 (Regex!17348) Bool)

(assert (=> b!7015760 (= e!4217329 (validRegex!8903 (h!73913 (exprs!6844 lt!2508018))))))

(declare-fun lt!2508014 () (Set Context!12688))

(declare-fun ct2!306 () Context!12688)

(declare-datatypes ((tuple2!67978 0))(
  ( (tuple2!67979 (_1!37292 List!67590) (_2!37292 List!67590)) )
))
(declare-datatypes ((Option!16821 0))(
  ( (None!16820) (Some!16820 (v!53098 tuple2!67978)) )
))
(declare-fun isDefined!13522 (Option!16821) Bool)

(declare-fun findConcatSeparationZippers!337 ((Set Context!12688) (Set Context!12688) List!67590 List!67590 List!67590) Option!16821)

(assert (=> b!7015760 (isDefined!13522 (findConcatSeparationZippers!337 lt!2508014 (set.insert ct2!306 (as set.empty (Set Context!12688))) Nil!67466 (t!381345 s!7408) (t!381345 s!7408)))))

(declare-datatypes ((Unit!161378 0))(
  ( (Unit!161379) )
))
(declare-fun lt!2508023 () Unit!161378)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!337 ((Set Context!12688) Context!12688 List!67590) Unit!161378)

(assert (=> b!7015760 (= lt!2508023 (lemmaConcatZipperMatchesStringThenFindConcatDefined!337 lt!2508014 ct2!306 (t!381345 s!7408)))))

(declare-fun lt!2508011 () (Set Context!12688))

(declare-fun appendTo!469 ((Set Context!12688) Context!12688) (Set Context!12688))

(assert (=> b!7015760 (= lt!2508011 (appendTo!469 lt!2508014 ct2!306))))

(declare-fun derivationStepZipperDown!2066 (Regex!17348 Context!12688 C!34966) (Set Context!12688))

(assert (=> b!7015760 (= lt!2508014 (derivationStepZipperDown!2066 (h!73913 (exprs!6844 lt!2508018)) lt!2508015 (h!73914 s!7408)))))

(declare-fun lt!2508012 () Unit!161378)

(declare-fun lambda!409896 () Int)

(declare-fun lemmaConcatPreservesForall!684 (List!67589 List!67589 Int) Unit!161378)

(assert (=> b!7015760 (= lt!2508012 (lemmaConcatPreservesForall!684 lt!2508005 (exprs!6844 ct2!306) lambda!409896))))

(declare-fun lt!2508022 () Unit!161378)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!39 (Context!12688 Regex!17348 C!34966 Context!12688) Unit!161378)

(assert (=> b!7015760 (= lt!2508022 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!39 lt!2508015 (h!73913 (exprs!6844 lt!2508018)) (h!73914 s!7408) ct2!306))))

(declare-fun b!7015761 () Bool)

(declare-fun e!4217338 () Bool)

(declare-fun e!4217331 () Bool)

(assert (=> b!7015761 (= e!4217338 e!4217331)))

(declare-fun res!2863300 () Bool)

(assert (=> b!7015761 (=> res!2863300 e!4217331)))

(declare-fun lt!2508024 () (Set Context!12688))

(declare-fun lt!2508010 () (Set Context!12688))

(assert (=> b!7015761 (= res!2863300 (not (= lt!2508024 lt!2508010)))))

(declare-fun lt!2508013 () Context!12688)

(assert (=> b!7015761 (= lt!2508024 (set.insert lt!2508013 (as set.empty (Set Context!12688))))))

(declare-fun lt!2508006 () Unit!161378)

(assert (=> b!7015761 (= lt!2508006 (lemmaConcatPreservesForall!684 (exprs!6844 lt!2508018) (exprs!6844 ct2!306) lambda!409896))))

(assert (=> b!7015762 (= e!4217331 e!4217335)))

(declare-fun res!2863306 () Bool)

(assert (=> b!7015762 (=> res!2863306 e!4217335)))

(declare-fun lt!2508019 () (Set Context!12688))

(declare-fun derivationStepZipper!2828 ((Set Context!12688) C!34966) (Set Context!12688))

(assert (=> b!7015762 (= res!2863306 (not (= (derivationStepZipper!2828 lt!2508024 (h!73914 s!7408)) lt!2508019)))))

(declare-fun lambda!409897 () Int)

(declare-fun flatMap!2334 ((Set Context!12688) Int) (Set Context!12688))

(declare-fun derivationStepZipperUp!1998 (Context!12688 C!34966) (Set Context!12688))

(assert (=> b!7015762 (= (flatMap!2334 lt!2508024 lambda!409897) (derivationStepZipperUp!1998 lt!2508013 (h!73914 s!7408)))))

(declare-fun lt!2508020 () Unit!161378)

(declare-fun lemmaFlatMapOnSingletonSet!1849 ((Set Context!12688) Context!12688 Int) Unit!161378)

(assert (=> b!7015762 (= lt!2508020 (lemmaFlatMapOnSingletonSet!1849 lt!2508024 lt!2508013 lambda!409897))))

(assert (=> b!7015762 (= lt!2508019 (derivationStepZipperUp!1998 lt!2508013 (h!73914 s!7408)))))

(declare-fun lt!2508009 () Unit!161378)

(assert (=> b!7015762 (= lt!2508009 (lemmaConcatPreservesForall!684 (exprs!6844 lt!2508018) (exprs!6844 ct2!306) lambda!409896))))

(declare-fun b!7015763 () Bool)

(declare-fun e!4217330 () Bool)

(declare-fun tp!1933181 () Bool)

(assert (=> b!7015763 (= e!4217330 tp!1933181)))

(declare-fun b!7015756 () Bool)

(declare-fun e!4217337 () Bool)

(declare-fun tp_is_empty!43921 () Bool)

(declare-fun tp!1933178 () Bool)

(assert (=> b!7015756 (= e!4217337 (and tp_is_empty!43921 tp!1933178))))

(declare-fun res!2863303 () Bool)

(assert (=> start!676124 (=> (not res!2863303) (not e!4217336))))

(declare-fun matchZipper!2888 ((Set Context!12688) List!67590) Bool)

(assert (=> start!676124 (= res!2863303 (matchZipper!2888 lt!2508017 s!7408))))

(declare-fun z1!570 () (Set Context!12688))

(assert (=> start!676124 (= lt!2508017 (appendTo!469 z1!570 ct2!306))))

(assert (=> start!676124 e!4217336))

(declare-fun condSetEmpty!48513 () Bool)

(assert (=> start!676124 (= condSetEmpty!48513 (= z1!570 (as set.empty (Set Context!12688))))))

(assert (=> start!676124 setRes!48513))

(declare-fun inv!86230 (Context!12688) Bool)

(assert (=> start!676124 (and (inv!86230 ct2!306) e!4217330)))

(assert (=> start!676124 e!4217337))

(declare-fun b!7015764 () Bool)

(declare-fun e!4217333 () Bool)

(declare-fun tp!1933179 () Bool)

(assert (=> b!7015764 (= e!4217333 tp!1933179)))

(declare-fun b!7015765 () Bool)

(declare-fun res!2863298 () Bool)

(assert (=> b!7015765 (=> res!2863298 e!4217335)))

(declare-fun isEmpty!39399 (List!67589) Bool)

(assert (=> b!7015765 (= res!2863298 (isEmpty!39399 (exprs!6844 lt!2508018)))))

(declare-fun b!7015766 () Bool)

(declare-fun res!2863308 () Bool)

(assert (=> b!7015766 (=> res!2863308 e!4217335)))

(assert (=> b!7015766 (= res!2863308 (not (is-Cons!67465 (exprs!6844 lt!2508018))))))

(declare-fun b!7015767 () Bool)

(assert (=> b!7015767 (= e!4217332 e!4217329)))

(declare-fun res!2863305 () Bool)

(assert (=> b!7015767 (=> res!2863305 e!4217329)))

(assert (=> b!7015767 (= res!2863305 (not (matchZipper!2888 lt!2508011 (t!381345 s!7408))))))

(declare-fun ++!15363 (List!67589 List!67589) List!67589)

(assert (=> b!7015767 (= lt!2508011 (derivationStepZipperDown!2066 (h!73913 (exprs!6844 lt!2508018)) (Context!12689 (++!15363 lt!2508005 (exprs!6844 ct2!306))) (h!73914 s!7408)))))

(declare-fun lt!2508008 () Unit!161378)

(assert (=> b!7015767 (= lt!2508008 (lemmaConcatPreservesForall!684 lt!2508005 (exprs!6844 ct2!306) lambda!409896))))

(declare-fun tp!1933180 () Bool)

(declare-fun setNonEmpty!48513 () Bool)

(declare-fun setElem!48513 () Context!12688)

(assert (=> setNonEmpty!48513 (= setRes!48513 (and tp!1933180 (inv!86230 setElem!48513) e!4217333))))

(declare-fun setRest!48513 () (Set Context!12688))

(assert (=> setNonEmpty!48513 (= z1!570 (set.union (set.insert setElem!48513 (as set.empty (Set Context!12688))) setRest!48513))))

(assert (=> b!7015768 (= e!4217334 e!4217338)))

(declare-fun res!2863299 () Bool)

(assert (=> b!7015768 (=> res!2863299 e!4217338)))

(assert (=> b!7015768 (= res!2863299 (or (not (= lt!2508013 lt!2508021)) (not (set.member lt!2508018 z1!570))))))

(assert (=> b!7015768 (= lt!2508013 (Context!12689 (++!15363 (exprs!6844 lt!2508018) (exprs!6844 ct2!306))))))

(declare-fun lt!2508007 () Unit!161378)

(assert (=> b!7015768 (= lt!2508007 (lemmaConcatPreservesForall!684 (exprs!6844 lt!2508018) (exprs!6844 ct2!306) lambda!409896))))

(declare-fun lambda!409895 () Int)

(declare-fun mapPost2!203 ((Set Context!12688) Int Context!12688) Context!12688)

(assert (=> b!7015768 (= lt!2508018 (mapPost2!203 z1!570 lambda!409895 lt!2508021))))

(assert (=> b!7015769 (= e!4217336 (not e!4217334))))

(declare-fun res!2863307 () Bool)

(assert (=> b!7015769 (=> res!2863307 e!4217334)))

(assert (=> b!7015769 (= res!2863307 (not (matchZipper!2888 lt!2508010 s!7408)))))

(assert (=> b!7015769 (= lt!2508010 (set.insert lt!2508021 (as set.empty (Set Context!12688))))))

(declare-fun lambda!409894 () Int)

(declare-fun getWitness!1303 ((Set Context!12688) Int) Context!12688)

(assert (=> b!7015769 (= lt!2508021 (getWitness!1303 lt!2508017 lambda!409894))))

(declare-datatypes ((List!67591 0))(
  ( (Nil!67467) (Cons!67467 (h!73915 Context!12688) (t!381346 List!67591)) )
))
(declare-fun lt!2508025 () List!67591)

(declare-fun exists!3210 (List!67591 Int) Bool)

(assert (=> b!7015769 (exists!3210 lt!2508025 lambda!409894)))

(declare-fun lt!2508016 () Unit!161378)

(declare-fun lemmaZipperMatchesExistsMatchingContext!317 (List!67591 List!67590) Unit!161378)

(assert (=> b!7015769 (= lt!2508016 (lemmaZipperMatchesExistsMatchingContext!317 lt!2508025 s!7408))))

(declare-fun toList!10708 ((Set Context!12688)) List!67591)

(assert (=> b!7015769 (= lt!2508025 (toList!10708 lt!2508017))))

(assert (= (and start!676124 res!2863303) b!7015759))

(assert (= (and b!7015759 res!2863302) b!7015769))

(assert (= (and b!7015769 (not res!2863307)) b!7015758))

(assert (= (and b!7015758 (not res!2863301)) b!7015768))

(assert (= (and b!7015768 (not res!2863299)) b!7015761))

(assert (= (and b!7015761 (not res!2863300)) b!7015762))

(assert (= (and b!7015762 (not res!2863306)) b!7015766))

(assert (= (and b!7015766 (not res!2863308)) b!7015765))

(assert (= (and b!7015765 (not res!2863298)) b!7015757))

(assert (= (and b!7015757 (not res!2863304)) b!7015767))

(assert (= (and b!7015767 (not res!2863305)) b!7015760))

(assert (= (and start!676124 condSetEmpty!48513) setIsEmpty!48513))

(assert (= (and start!676124 (not condSetEmpty!48513)) setNonEmpty!48513))

(assert (= setNonEmpty!48513 b!7015764))

(assert (= start!676124 b!7015763))

(assert (= (and start!676124 (is-Cons!67466 s!7408)) b!7015756))

(declare-fun m!7715264 () Bool)

(assert (=> b!7015769 m!7715264))

(declare-fun m!7715266 () Bool)

(assert (=> b!7015769 m!7715266))

(declare-fun m!7715268 () Bool)

(assert (=> b!7015769 m!7715268))

(declare-fun m!7715270 () Bool)

(assert (=> b!7015769 m!7715270))

(declare-fun m!7715272 () Bool)

(assert (=> b!7015769 m!7715272))

(declare-fun m!7715274 () Bool)

(assert (=> b!7015769 m!7715274))

(declare-fun m!7715276 () Bool)

(assert (=> b!7015760 m!7715276))

(declare-fun m!7715278 () Bool)

(assert (=> b!7015760 m!7715278))

(declare-fun m!7715280 () Bool)

(assert (=> b!7015760 m!7715280))

(declare-fun m!7715282 () Bool)

(assert (=> b!7015760 m!7715282))

(declare-fun m!7715284 () Bool)

(assert (=> b!7015760 m!7715284))

(declare-fun m!7715286 () Bool)

(assert (=> b!7015760 m!7715286))

(assert (=> b!7015760 m!7715284))

(assert (=> b!7015760 m!7715276))

(declare-fun m!7715288 () Bool)

(assert (=> b!7015760 m!7715288))

(declare-fun m!7715290 () Bool)

(assert (=> b!7015760 m!7715290))

(declare-fun m!7715292 () Bool)

(assert (=> b!7015760 m!7715292))

(declare-fun m!7715294 () Bool)

(assert (=> b!7015762 m!7715294))

(declare-fun m!7715296 () Bool)

(assert (=> b!7015762 m!7715296))

(declare-fun m!7715298 () Bool)

(assert (=> b!7015762 m!7715298))

(declare-fun m!7715300 () Bool)

(assert (=> b!7015762 m!7715300))

(declare-fun m!7715302 () Bool)

(assert (=> b!7015762 m!7715302))

(declare-fun m!7715304 () Bool)

(assert (=> start!676124 m!7715304))

(declare-fun m!7715306 () Bool)

(assert (=> start!676124 m!7715306))

(declare-fun m!7715308 () Bool)

(assert (=> start!676124 m!7715308))

(declare-fun m!7715310 () Bool)

(assert (=> setNonEmpty!48513 m!7715310))

(declare-fun m!7715312 () Bool)

(assert (=> b!7015758 m!7715312))

(declare-fun m!7715314 () Bool)

(assert (=> b!7015765 m!7715314))

(declare-fun m!7715316 () Bool)

(assert (=> b!7015761 m!7715316))

(assert (=> b!7015761 m!7715300))

(declare-fun m!7715318 () Bool)

(assert (=> b!7015768 m!7715318))

(declare-fun m!7715320 () Bool)

(assert (=> b!7015768 m!7715320))

(assert (=> b!7015768 m!7715300))

(declare-fun m!7715322 () Bool)

(assert (=> b!7015768 m!7715322))

(declare-fun m!7715324 () Bool)

(assert (=> b!7015757 m!7715324))

(declare-fun m!7715326 () Bool)

(assert (=> b!7015757 m!7715326))

(declare-fun m!7715328 () Bool)

(assert (=> b!7015767 m!7715328))

(declare-fun m!7715330 () Bool)

(assert (=> b!7015767 m!7715330))

(declare-fun m!7715332 () Bool)

(assert (=> b!7015767 m!7715332))

(assert (=> b!7015767 m!7715286))

(push 1)

(assert (not start!676124))

(assert (not b!7015767))

(assert (not b!7015762))

(assert (not b!7015757))

(assert tp_is_empty!43921)

(assert (not b!7015765))

(assert (not b!7015756))

(assert (not b!7015763))

(assert (not b!7015764))

(assert (not b!7015760))

(assert (not b!7015761))

(assert (not setNonEmpty!48513))

(assert (not b!7015769))

(assert (not b!7015768))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2187006 () Bool)

(declare-fun c!1303465 () Bool)

(declare-fun isEmpty!39401 (List!67590) Bool)

(assert (=> d!2187006 (= c!1303465 (isEmpty!39401 (t!381345 s!7408)))))

(declare-fun e!4217371 () Bool)

(assert (=> d!2187006 (= (matchZipper!2888 lt!2508011 (t!381345 s!7408)) e!4217371)))

(declare-fun b!7015828 () Bool)

(declare-fun nullableZipper!2501 ((Set Context!12688)) Bool)

(assert (=> b!7015828 (= e!4217371 (nullableZipper!2501 lt!2508011))))

(declare-fun b!7015829 () Bool)

(declare-fun head!14191 (List!67590) C!34966)

(declare-fun tail!13438 (List!67590) List!67590)

(assert (=> b!7015829 (= e!4217371 (matchZipper!2888 (derivationStepZipper!2828 lt!2508011 (head!14191 (t!381345 s!7408))) (tail!13438 (t!381345 s!7408))))))

(assert (= (and d!2187006 c!1303465) b!7015828))

(assert (= (and d!2187006 (not c!1303465)) b!7015829))

(declare-fun m!7715406 () Bool)

(assert (=> d!2187006 m!7715406))

(declare-fun m!7715408 () Bool)

(assert (=> b!7015828 m!7715408))

(declare-fun m!7715410 () Bool)

(assert (=> b!7015829 m!7715410))

(assert (=> b!7015829 m!7715410))

(declare-fun m!7715412 () Bool)

(assert (=> b!7015829 m!7715412))

(declare-fun m!7715414 () Bool)

(assert (=> b!7015829 m!7715414))

(assert (=> b!7015829 m!7715412))

(assert (=> b!7015829 m!7715414))

(declare-fun m!7715416 () Bool)

(assert (=> b!7015829 m!7715416))

(assert (=> b!7015767 d!2187006))

(declare-fun c!1303485 () Bool)

(declare-fun call!637229 () List!67589)

(declare-fun c!1303482 () Bool)

(declare-fun bm!637223 () Bool)

(declare-fun $colon$colon!2541 (List!67589 Regex!17348) List!67589)

(assert (=> bm!637223 (= call!637229 ($colon$colon!2541 (exprs!6844 (Context!12689 (++!15363 lt!2508005 (exprs!6844 ct2!306)))) (ite (or c!1303482 c!1303485) (regTwo!35208 (h!73913 (exprs!6844 lt!2508018))) (h!73913 (exprs!6844 lt!2508018)))))))

(declare-fun bm!637224 () Bool)

(declare-fun call!637232 () (Set Context!12688))

(declare-fun call!637228 () (Set Context!12688))

(assert (=> bm!637224 (= call!637232 call!637228)))

(declare-fun b!7015867 () Bool)

(declare-fun e!4217395 () (Set Context!12688))

(declare-fun call!637233 () (Set Context!12688))

(declare-fun call!637231 () (Set Context!12688))

(assert (=> b!7015867 (= e!4217395 (set.union call!637233 call!637231))))

(declare-fun b!7015868 () Bool)

(declare-fun c!1303483 () Bool)

(assert (=> b!7015868 (= c!1303483 (is-Star!17348 (h!73913 (exprs!6844 lt!2508018))))))

(declare-fun e!4217396 () (Set Context!12688))

(declare-fun e!4217397 () (Set Context!12688))

(assert (=> b!7015868 (= e!4217396 e!4217397)))

(declare-fun b!7015869 () Bool)

(declare-fun e!4217398 () Bool)

(assert (=> b!7015869 (= c!1303482 e!4217398)))

(declare-fun res!2863349 () Bool)

(assert (=> b!7015869 (=> (not res!2863349) (not e!4217398))))

(assert (=> b!7015869 (= res!2863349 (is-Concat!26193 (h!73913 (exprs!6844 lt!2508018))))))

(declare-fun e!4217394 () (Set Context!12688))

(assert (=> b!7015869 (= e!4217395 e!4217394)))

(declare-fun call!637230 () List!67589)

(declare-fun bm!637225 () Bool)

(declare-fun c!1303486 () Bool)

(assert (=> bm!637225 (= call!637231 (derivationStepZipperDown!2066 (ite c!1303486 (regTwo!35209 (h!73913 (exprs!6844 lt!2508018))) (ite c!1303482 (regTwo!35208 (h!73913 (exprs!6844 lt!2508018))) (ite c!1303485 (regOne!35208 (h!73913 (exprs!6844 lt!2508018))) (reg!17677 (h!73913 (exprs!6844 lt!2508018)))))) (ite (or c!1303486 c!1303482) (Context!12689 (++!15363 lt!2508005 (exprs!6844 ct2!306))) (Context!12689 call!637230)) (h!73914 s!7408)))))

(declare-fun bm!637226 () Bool)

(assert (=> bm!637226 (= call!637230 call!637229)))

(declare-fun b!7015870 () Bool)

(assert (=> b!7015870 (= e!4217398 (nullable!7108 (regOne!35208 (h!73913 (exprs!6844 lt!2508018)))))))

(declare-fun b!7015871 () Bool)

(assert (=> b!7015871 (= e!4217394 e!4217396)))

(assert (=> b!7015871 (= c!1303485 (is-Concat!26193 (h!73913 (exprs!6844 lt!2508018))))))

(declare-fun b!7015872 () Bool)

(declare-fun e!4217393 () (Set Context!12688))

(assert (=> b!7015872 (= e!4217393 e!4217395)))

(assert (=> b!7015872 (= c!1303486 (is-Union!17348 (h!73913 (exprs!6844 lt!2508018))))))

(declare-fun b!7015873 () Bool)

(assert (=> b!7015873 (= e!4217397 (as set.empty (Set Context!12688)))))

(declare-fun b!7015874 () Bool)

(assert (=> b!7015874 (= e!4217393 (set.insert (Context!12689 (++!15363 lt!2508005 (exprs!6844 ct2!306))) (as set.empty (Set Context!12688))))))

(declare-fun b!7015875 () Bool)

(assert (=> b!7015875 (= e!4217397 call!637232)))

(declare-fun d!2187010 () Bool)

(declare-fun c!1303484 () Bool)

(assert (=> d!2187010 (= c!1303484 (and (is-ElementMatch!17348 (h!73913 (exprs!6844 lt!2508018))) (= (c!1303453 (h!73913 (exprs!6844 lt!2508018))) (h!73914 s!7408))))))

(assert (=> d!2187010 (= (derivationStepZipperDown!2066 (h!73913 (exprs!6844 lt!2508018)) (Context!12689 (++!15363 lt!2508005 (exprs!6844 ct2!306))) (h!73914 s!7408)) e!4217393)))

(declare-fun b!7015876 () Bool)

(assert (=> b!7015876 (= e!4217396 call!637232)))

(declare-fun bm!637227 () Bool)

(assert (=> bm!637227 (= call!637228 call!637231)))

(declare-fun bm!637228 () Bool)

(assert (=> bm!637228 (= call!637233 (derivationStepZipperDown!2066 (ite c!1303486 (regOne!35209 (h!73913 (exprs!6844 lt!2508018))) (regOne!35208 (h!73913 (exprs!6844 lt!2508018)))) (ite c!1303486 (Context!12689 (++!15363 lt!2508005 (exprs!6844 ct2!306))) (Context!12689 call!637229)) (h!73914 s!7408)))))

(declare-fun b!7015877 () Bool)

(assert (=> b!7015877 (= e!4217394 (set.union call!637233 call!637228))))

(assert (= (and d!2187010 c!1303484) b!7015874))

(assert (= (and d!2187010 (not c!1303484)) b!7015872))

(assert (= (and b!7015872 c!1303486) b!7015867))

(assert (= (and b!7015872 (not c!1303486)) b!7015869))

(assert (= (and b!7015869 res!2863349) b!7015870))

(assert (= (and b!7015869 c!1303482) b!7015877))

(assert (= (and b!7015869 (not c!1303482)) b!7015871))

(assert (= (and b!7015871 c!1303485) b!7015876))

(assert (= (and b!7015871 (not c!1303485)) b!7015868))

(assert (= (and b!7015868 c!1303483) b!7015875))

(assert (= (and b!7015868 (not c!1303483)) b!7015873))

(assert (= (or b!7015876 b!7015875) bm!637226))

(assert (= (or b!7015876 b!7015875) bm!637224))

(assert (= (or b!7015877 bm!637224) bm!637227))

(assert (= (or b!7015877 bm!637226) bm!637223))

(assert (= (or b!7015867 b!7015877) bm!637228))

(assert (= (or b!7015867 bm!637227) bm!637225))

(declare-fun m!7715424 () Bool)

(assert (=> bm!637223 m!7715424))

(declare-fun m!7715426 () Bool)

(assert (=> b!7015870 m!7715426))

(declare-fun m!7715428 () Bool)

(assert (=> b!7015874 m!7715428))

(declare-fun m!7715430 () Bool)

(assert (=> bm!637228 m!7715430))

(declare-fun m!7715432 () Bool)

(assert (=> bm!637225 m!7715432))

(assert (=> b!7015767 d!2187010))

(declare-fun d!2187014 () Bool)

(declare-fun e!4217404 () Bool)

(assert (=> d!2187014 e!4217404))

(declare-fun res!2863355 () Bool)

(assert (=> d!2187014 (=> (not res!2863355) (not e!4217404))))

(declare-fun lt!2508096 () List!67589)

(declare-fun content!13409 (List!67589) (Set Regex!17348))

(assert (=> d!2187014 (= res!2863355 (= (content!13409 lt!2508096) (set.union (content!13409 lt!2508005) (content!13409 (exprs!6844 ct2!306)))))))

(declare-fun e!4217403 () List!67589)

(assert (=> d!2187014 (= lt!2508096 e!4217403)))

(declare-fun c!1303491 () Bool)

(assert (=> d!2187014 (= c!1303491 (is-Nil!67465 lt!2508005))))

(assert (=> d!2187014 (= (++!15363 lt!2508005 (exprs!6844 ct2!306)) lt!2508096)))

(declare-fun b!7015889 () Bool)

(assert (=> b!7015889 (= e!4217404 (or (not (= (exprs!6844 ct2!306) Nil!67465)) (= lt!2508096 lt!2508005)))))

(declare-fun b!7015887 () Bool)

(assert (=> b!7015887 (= e!4217403 (Cons!67465 (h!73913 lt!2508005) (++!15363 (t!381344 lt!2508005) (exprs!6844 ct2!306))))))

(declare-fun b!7015888 () Bool)

(declare-fun res!2863354 () Bool)

(assert (=> b!7015888 (=> (not res!2863354) (not e!4217404))))

(declare-fun size!40993 (List!67589) Int)

(assert (=> b!7015888 (= res!2863354 (= (size!40993 lt!2508096) (+ (size!40993 lt!2508005) (size!40993 (exprs!6844 ct2!306)))))))

(declare-fun b!7015886 () Bool)

(assert (=> b!7015886 (= e!4217403 (exprs!6844 ct2!306))))

(assert (= (and d!2187014 c!1303491) b!7015886))

(assert (= (and d!2187014 (not c!1303491)) b!7015887))

(assert (= (and d!2187014 res!2863355) b!7015888))

(assert (= (and b!7015888 res!2863354) b!7015889))

(declare-fun m!7715440 () Bool)

(assert (=> d!2187014 m!7715440))

(declare-fun m!7715442 () Bool)

(assert (=> d!2187014 m!7715442))

(declare-fun m!7715444 () Bool)

(assert (=> d!2187014 m!7715444))

(declare-fun m!7715446 () Bool)

(assert (=> b!7015887 m!7715446))

(declare-fun m!7715448 () Bool)

(assert (=> b!7015888 m!7715448))

(declare-fun m!7715450 () Bool)

(assert (=> b!7015888 m!7715450))

(declare-fun m!7715452 () Bool)

(assert (=> b!7015888 m!7715452))

(assert (=> b!7015767 d!2187014))

(declare-fun d!2187018 () Bool)

(declare-fun forall!16262 (List!67589 Int) Bool)

(assert (=> d!2187018 (forall!16262 (++!15363 lt!2508005 (exprs!6844 ct2!306)) lambda!409896)))

(declare-fun lt!2508099 () Unit!161378)

(declare-fun choose!52816 (List!67589 List!67589 Int) Unit!161378)

(assert (=> d!2187018 (= lt!2508099 (choose!52816 lt!2508005 (exprs!6844 ct2!306) lambda!409896))))

(assert (=> d!2187018 (forall!16262 lt!2508005 lambda!409896)))

(assert (=> d!2187018 (= (lemmaConcatPreservesForall!684 lt!2508005 (exprs!6844 ct2!306) lambda!409896) lt!2508099)))

(declare-fun bs!1866825 () Bool)

(assert (= bs!1866825 d!2187018))

(assert (=> bs!1866825 m!7715330))

(assert (=> bs!1866825 m!7715330))

(declare-fun m!7715456 () Bool)

(assert (=> bs!1866825 m!7715456))

(declare-fun m!7715458 () Bool)

(assert (=> bs!1866825 m!7715458))

(declare-fun m!7715460 () Bool)

(assert (=> bs!1866825 m!7715460))

(assert (=> b!7015767 d!2187018))

(declare-fun d!2187022 () Bool)

(declare-fun choose!52817 ((Set Context!12688) Int) (Set Context!12688))

(assert (=> d!2187022 (= (flatMap!2334 lt!2508024 lambda!409897) (choose!52817 lt!2508024 lambda!409897))))

(declare-fun bs!1866826 () Bool)

(assert (= bs!1866826 d!2187022))

(declare-fun m!7715462 () Bool)

(assert (=> bs!1866826 m!7715462))

(assert (=> b!7015762 d!2187022))

(declare-fun bs!1866827 () Bool)

(declare-fun d!2187024 () Bool)

(assert (= bs!1866827 (and d!2187024 b!7015762)))

(declare-fun lambda!409927 () Int)

(assert (=> bs!1866827 (= lambda!409927 lambda!409897)))

(assert (=> d!2187024 true))

(assert (=> d!2187024 (= (derivationStepZipper!2828 lt!2508024 (h!73914 s!7408)) (flatMap!2334 lt!2508024 lambda!409927))))

(declare-fun bs!1866828 () Bool)

(assert (= bs!1866828 d!2187024))

(declare-fun m!7715464 () Bool)

(assert (=> bs!1866828 m!7715464))

(assert (=> b!7015762 d!2187024))

(declare-fun d!2187026 () Bool)

(assert (=> d!2187026 (forall!16262 (++!15363 (exprs!6844 lt!2508018) (exprs!6844 ct2!306)) lambda!409896)))

(declare-fun lt!2508100 () Unit!161378)

(assert (=> d!2187026 (= lt!2508100 (choose!52816 (exprs!6844 lt!2508018) (exprs!6844 ct2!306) lambda!409896))))

(assert (=> d!2187026 (forall!16262 (exprs!6844 lt!2508018) lambda!409896)))

(assert (=> d!2187026 (= (lemmaConcatPreservesForall!684 (exprs!6844 lt!2508018) (exprs!6844 ct2!306) lambda!409896) lt!2508100)))

(declare-fun bs!1866829 () Bool)

(assert (= bs!1866829 d!2187026))

(assert (=> bs!1866829 m!7715320))

(assert (=> bs!1866829 m!7715320))

(declare-fun m!7715466 () Bool)

(assert (=> bs!1866829 m!7715466))

(declare-fun m!7715468 () Bool)

(assert (=> bs!1866829 m!7715468))

(declare-fun m!7715470 () Bool)

(assert (=> bs!1866829 m!7715470))

(assert (=> b!7015762 d!2187026))

(declare-fun d!2187028 () Bool)

(declare-fun dynLambda!27161 (Int Context!12688) (Set Context!12688))

(assert (=> d!2187028 (= (flatMap!2334 lt!2508024 lambda!409897) (dynLambda!27161 lambda!409897 lt!2508013))))

(declare-fun lt!2508106 () Unit!161378)

(declare-fun choose!52818 ((Set Context!12688) Context!12688 Int) Unit!161378)

(assert (=> d!2187028 (= lt!2508106 (choose!52818 lt!2508024 lt!2508013 lambda!409897))))

(assert (=> d!2187028 (= lt!2508024 (set.insert lt!2508013 (as set.empty (Set Context!12688))))))

(assert (=> d!2187028 (= (lemmaFlatMapOnSingletonSet!1849 lt!2508024 lt!2508013 lambda!409897) lt!2508106)))

(declare-fun b_lambda!264773 () Bool)

(assert (=> (not b_lambda!264773) (not d!2187028)))

(declare-fun bs!1866831 () Bool)

(assert (= bs!1866831 d!2187028))

(assert (=> bs!1866831 m!7715294))

(declare-fun m!7715474 () Bool)

(assert (=> bs!1866831 m!7715474))

(declare-fun m!7715478 () Bool)

(assert (=> bs!1866831 m!7715478))

(assert (=> bs!1866831 m!7715316))

(assert (=> b!7015762 d!2187028))

(declare-fun b!7015904 () Bool)

(declare-fun e!4217412 () (Set Context!12688))

(assert (=> b!7015904 (= e!4217412 (as set.empty (Set Context!12688)))))

(declare-fun bm!637231 () Bool)

(declare-fun call!637236 () (Set Context!12688))

(assert (=> bm!637231 (= call!637236 (derivationStepZipperDown!2066 (h!73913 (exprs!6844 lt!2508013)) (Context!12689 (t!381344 (exprs!6844 lt!2508013))) (h!73914 s!7408)))))

(declare-fun b!7015905 () Bool)

(assert (=> b!7015905 (= e!4217412 call!637236)))

(declare-fun e!4217413 () (Set Context!12688))

(declare-fun b!7015907 () Bool)

(assert (=> b!7015907 (= e!4217413 (set.union call!637236 (derivationStepZipperUp!1998 (Context!12689 (t!381344 (exprs!6844 lt!2508013))) (h!73914 s!7408))))))

(declare-fun b!7015908 () Bool)

(declare-fun e!4217411 () Bool)

(assert (=> b!7015908 (= e!4217411 (nullable!7108 (h!73913 (exprs!6844 lt!2508013))))))

(declare-fun d!2187030 () Bool)

(declare-fun c!1303499 () Bool)

(assert (=> d!2187030 (= c!1303499 e!4217411)))

(declare-fun res!2863358 () Bool)

(assert (=> d!2187030 (=> (not res!2863358) (not e!4217411))))

(assert (=> d!2187030 (= res!2863358 (is-Cons!67465 (exprs!6844 lt!2508013)))))

(assert (=> d!2187030 (= (derivationStepZipperUp!1998 lt!2508013 (h!73914 s!7408)) e!4217413)))

(declare-fun b!7015906 () Bool)

(assert (=> b!7015906 (= e!4217413 e!4217412)))

(declare-fun c!1303498 () Bool)

(assert (=> b!7015906 (= c!1303498 (is-Cons!67465 (exprs!6844 lt!2508013)))))

(assert (= (and d!2187030 res!2863358) b!7015908))

(assert (= (and d!2187030 c!1303499) b!7015907))

(assert (= (and d!2187030 (not c!1303499)) b!7015906))

(assert (= (and b!7015906 c!1303498) b!7015905))

(assert (= (and b!7015906 (not c!1303498)) b!7015904))

(assert (= (or b!7015907 b!7015905) bm!637231))

(declare-fun m!7715480 () Bool)

(assert (=> bm!637231 m!7715480))

(declare-fun m!7715482 () Bool)

(assert (=> b!7015907 m!7715482))

(declare-fun m!7715484 () Bool)

(assert (=> b!7015908 m!7715484))

(assert (=> b!7015762 d!2187030))

(assert (=> b!7015761 d!2187026))

(declare-fun d!2187034 () Bool)

(declare-fun nullableFct!2695 (Regex!17348) Bool)

(assert (=> d!2187034 (= (nullable!7108 (h!73913 (exprs!6844 lt!2508018))) (nullableFct!2695 (h!73913 (exprs!6844 lt!2508018))))))

(declare-fun bs!1866832 () Bool)

(assert (= bs!1866832 d!2187034))

(declare-fun m!7715486 () Bool)

(assert (=> bs!1866832 m!7715486))

(assert (=> b!7015757 d!2187034))

(declare-fun d!2187036 () Bool)

(assert (=> d!2187036 (= (tail!13436 (exprs!6844 lt!2508018)) (t!381344 (exprs!6844 lt!2508018)))))

(assert (=> b!7015757 d!2187036))

(declare-fun d!2187038 () Bool)

(assert (=> d!2187038 (= (isEmpty!39399 (exprs!6844 lt!2508018)) (is-Nil!67465 (exprs!6844 lt!2508018)))))

(assert (=> b!7015765 d!2187038))

(declare-fun d!2187040 () Bool)

(assert (=> d!2187040 (isDefined!13522 (findConcatSeparationZippers!337 lt!2508014 (set.insert ct2!306 (as set.empty (Set Context!12688))) Nil!67466 (t!381345 s!7408) (t!381345 s!7408)))))

(declare-fun lt!2508112 () Unit!161378)

(declare-fun choose!52819 ((Set Context!12688) Context!12688 List!67590) Unit!161378)

(assert (=> d!2187040 (= lt!2508112 (choose!52819 lt!2508014 ct2!306 (t!381345 s!7408)))))

(assert (=> d!2187040 (matchZipper!2888 (appendTo!469 lt!2508014 ct2!306) (t!381345 s!7408))))

(assert (=> d!2187040 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!337 lt!2508014 ct2!306 (t!381345 s!7408)) lt!2508112)))

(declare-fun bs!1866833 () Bool)

(assert (= bs!1866833 d!2187040))

(assert (=> bs!1866833 m!7715284))

(assert (=> bs!1866833 m!7715276))

(assert (=> bs!1866833 m!7715276))

(assert (=> bs!1866833 m!7715278))

(declare-fun m!7715502 () Bool)

(assert (=> bs!1866833 m!7715502))

(assert (=> bs!1866833 m!7715292))

(assert (=> bs!1866833 m!7715292))

(declare-fun m!7715504 () Bool)

(assert (=> bs!1866833 m!7715504))

(assert (=> bs!1866833 m!7715284))

(assert (=> b!7015760 d!2187040))

(declare-fun d!2187044 () Bool)

(declare-fun isEmpty!39402 (Option!16821) Bool)

(assert (=> d!2187044 (= (isDefined!13522 (findConcatSeparationZippers!337 lt!2508014 (set.insert ct2!306 (as set.empty (Set Context!12688))) Nil!67466 (t!381345 s!7408) (t!381345 s!7408))) (not (isEmpty!39402 (findConcatSeparationZippers!337 lt!2508014 (set.insert ct2!306 (as set.empty (Set Context!12688))) Nil!67466 (t!381345 s!7408) (t!381345 s!7408)))))))

(declare-fun bs!1866834 () Bool)

(assert (= bs!1866834 d!2187044))

(assert (=> bs!1866834 m!7715276))

(declare-fun m!7715506 () Bool)

(assert (=> bs!1866834 m!7715506))

(assert (=> b!7015760 d!2187044))

(assert (=> b!7015760 d!2187018))

(declare-fun c!1303503 () Bool)

(declare-fun call!637238 () List!67589)

(declare-fun bm!637232 () Bool)

(declare-fun c!1303506 () Bool)

(assert (=> bm!637232 (= call!637238 ($colon$colon!2541 (exprs!6844 lt!2508015) (ite (or c!1303503 c!1303506) (regTwo!35208 (h!73913 (exprs!6844 lt!2508018))) (h!73913 (exprs!6844 lt!2508018)))))))

(declare-fun bm!637233 () Bool)

(declare-fun call!637241 () (Set Context!12688))

(declare-fun call!637237 () (Set Context!12688))

(assert (=> bm!637233 (= call!637241 call!637237)))

(declare-fun b!7015921 () Bool)

(declare-fun e!4217422 () (Set Context!12688))

(declare-fun call!637242 () (Set Context!12688))

(declare-fun call!637240 () (Set Context!12688))

(assert (=> b!7015921 (= e!4217422 (set.union call!637242 call!637240))))

(declare-fun b!7015922 () Bool)

(declare-fun c!1303504 () Bool)

(assert (=> b!7015922 (= c!1303504 (is-Star!17348 (h!73913 (exprs!6844 lt!2508018))))))

(declare-fun e!4217423 () (Set Context!12688))

(declare-fun e!4217424 () (Set Context!12688))

(assert (=> b!7015922 (= e!4217423 e!4217424)))

(declare-fun b!7015923 () Bool)

(declare-fun e!4217425 () Bool)

(assert (=> b!7015923 (= c!1303503 e!4217425)))

(declare-fun res!2863365 () Bool)

(assert (=> b!7015923 (=> (not res!2863365) (not e!4217425))))

(assert (=> b!7015923 (= res!2863365 (is-Concat!26193 (h!73913 (exprs!6844 lt!2508018))))))

(declare-fun e!4217421 () (Set Context!12688))

(assert (=> b!7015923 (= e!4217422 e!4217421)))

(declare-fun c!1303507 () Bool)

(declare-fun call!637239 () List!67589)

(declare-fun bm!637234 () Bool)

(assert (=> bm!637234 (= call!637240 (derivationStepZipperDown!2066 (ite c!1303507 (regTwo!35209 (h!73913 (exprs!6844 lt!2508018))) (ite c!1303503 (regTwo!35208 (h!73913 (exprs!6844 lt!2508018))) (ite c!1303506 (regOne!35208 (h!73913 (exprs!6844 lt!2508018))) (reg!17677 (h!73913 (exprs!6844 lt!2508018)))))) (ite (or c!1303507 c!1303503) lt!2508015 (Context!12689 call!637239)) (h!73914 s!7408)))))

(declare-fun bm!637235 () Bool)

(assert (=> bm!637235 (= call!637239 call!637238)))

(declare-fun b!7015924 () Bool)

(assert (=> b!7015924 (= e!4217425 (nullable!7108 (regOne!35208 (h!73913 (exprs!6844 lt!2508018)))))))

(declare-fun b!7015925 () Bool)

(assert (=> b!7015925 (= e!4217421 e!4217423)))

(assert (=> b!7015925 (= c!1303506 (is-Concat!26193 (h!73913 (exprs!6844 lt!2508018))))))

(declare-fun b!7015926 () Bool)

(declare-fun e!4217420 () (Set Context!12688))

(assert (=> b!7015926 (= e!4217420 e!4217422)))

(assert (=> b!7015926 (= c!1303507 (is-Union!17348 (h!73913 (exprs!6844 lt!2508018))))))

(declare-fun b!7015927 () Bool)

(assert (=> b!7015927 (= e!4217424 (as set.empty (Set Context!12688)))))

(declare-fun b!7015928 () Bool)

(assert (=> b!7015928 (= e!4217420 (set.insert lt!2508015 (as set.empty (Set Context!12688))))))

(declare-fun b!7015929 () Bool)

(assert (=> b!7015929 (= e!4217424 call!637241)))

(declare-fun d!2187046 () Bool)

(declare-fun c!1303505 () Bool)

(assert (=> d!2187046 (= c!1303505 (and (is-ElementMatch!17348 (h!73913 (exprs!6844 lt!2508018))) (= (c!1303453 (h!73913 (exprs!6844 lt!2508018))) (h!73914 s!7408))))))

(assert (=> d!2187046 (= (derivationStepZipperDown!2066 (h!73913 (exprs!6844 lt!2508018)) lt!2508015 (h!73914 s!7408)) e!4217420)))

(declare-fun b!7015930 () Bool)

(assert (=> b!7015930 (= e!4217423 call!637241)))

(declare-fun bm!637236 () Bool)

(assert (=> bm!637236 (= call!637237 call!637240)))

(declare-fun bm!637237 () Bool)

(assert (=> bm!637237 (= call!637242 (derivationStepZipperDown!2066 (ite c!1303507 (regOne!35209 (h!73913 (exprs!6844 lt!2508018))) (regOne!35208 (h!73913 (exprs!6844 lt!2508018)))) (ite c!1303507 lt!2508015 (Context!12689 call!637238)) (h!73914 s!7408)))))

(declare-fun b!7015931 () Bool)

(assert (=> b!7015931 (= e!4217421 (set.union call!637242 call!637237))))

(assert (= (and d!2187046 c!1303505) b!7015928))

(assert (= (and d!2187046 (not c!1303505)) b!7015926))

(assert (= (and b!7015926 c!1303507) b!7015921))

(assert (= (and b!7015926 (not c!1303507)) b!7015923))

(assert (= (and b!7015923 res!2863365) b!7015924))

(assert (= (and b!7015923 c!1303503) b!7015931))

(assert (= (and b!7015923 (not c!1303503)) b!7015925))

(assert (= (and b!7015925 c!1303506) b!7015930))

(assert (= (and b!7015925 (not c!1303506)) b!7015922))

(assert (= (and b!7015922 c!1303504) b!7015929))

(assert (= (and b!7015922 (not c!1303504)) b!7015927))

(assert (= (or b!7015930 b!7015929) bm!637235))

(assert (= (or b!7015930 b!7015929) bm!637233))

(assert (= (or b!7015931 bm!637233) bm!637236))

(assert (= (or b!7015931 bm!637235) bm!637232))

(assert (= (or b!7015921 b!7015931) bm!637237))

(assert (= (or b!7015921 bm!637236) bm!637234))

(declare-fun m!7715508 () Bool)

(assert (=> bm!637232 m!7715508))

(assert (=> b!7015924 m!7715426))

(declare-fun m!7715510 () Bool)

(assert (=> b!7015928 m!7715510))

(declare-fun m!7715512 () Bool)

(assert (=> bm!637237 m!7715512))

(declare-fun m!7715514 () Bool)

(assert (=> bm!637234 m!7715514))

(assert (=> b!7015760 d!2187046))

(declare-fun bm!637244 () Bool)

(declare-fun call!637249 () Bool)

(declare-fun c!1303513 () Bool)

(assert (=> bm!637244 (= call!637249 (validRegex!8903 (ite c!1303513 (regTwo!35209 (h!73913 (exprs!6844 lt!2508018))) (regTwo!35208 (h!73913 (exprs!6844 lt!2508018))))))))

(declare-fun b!7015954 () Bool)

(declare-fun e!4217444 () Bool)

(declare-fun e!4217443 () Bool)

(assert (=> b!7015954 (= e!4217444 e!4217443)))

(declare-fun res!2863382 () Bool)

(assert (=> b!7015954 (=> (not res!2863382) (not e!4217443))))

(declare-fun call!637251 () Bool)

(assert (=> b!7015954 (= res!2863382 call!637251)))

(declare-fun d!2187048 () Bool)

(declare-fun res!2863379 () Bool)

(declare-fun e!4217445 () Bool)

(assert (=> d!2187048 (=> res!2863379 e!4217445)))

(assert (=> d!2187048 (= res!2863379 (is-ElementMatch!17348 (h!73913 (exprs!6844 lt!2508018))))))

(assert (=> d!2187048 (= (validRegex!8903 (h!73913 (exprs!6844 lt!2508018))) e!4217445)))

(declare-fun b!7015955 () Bool)

(declare-fun res!2863383 () Bool)

(assert (=> b!7015955 (=> res!2863383 e!4217444)))

(assert (=> b!7015955 (= res!2863383 (not (is-Concat!26193 (h!73913 (exprs!6844 lt!2508018)))))))

(declare-fun e!4217447 () Bool)

(assert (=> b!7015955 (= e!4217447 e!4217444)))

(declare-fun b!7015956 () Bool)

(declare-fun e!4217446 () Bool)

(declare-fun call!637250 () Bool)

(assert (=> b!7015956 (= e!4217446 call!637250)))

(declare-fun b!7015957 () Bool)

(declare-fun e!4217449 () Bool)

(assert (=> b!7015957 (= e!4217449 e!4217447)))

(assert (=> b!7015957 (= c!1303513 (is-Union!17348 (h!73913 (exprs!6844 lt!2508018))))))

(declare-fun bm!637245 () Bool)

(declare-fun c!1303512 () Bool)

(assert (=> bm!637245 (= call!637250 (validRegex!8903 (ite c!1303512 (reg!17677 (h!73913 (exprs!6844 lt!2508018))) (ite c!1303513 (regOne!35209 (h!73913 (exprs!6844 lt!2508018))) (regOne!35208 (h!73913 (exprs!6844 lt!2508018)))))))))

(declare-fun b!7015958 () Bool)

(assert (=> b!7015958 (= e!4217443 call!637249)))

(declare-fun b!7015959 () Bool)

(assert (=> b!7015959 (= e!4217445 e!4217449)))

(assert (=> b!7015959 (= c!1303512 (is-Star!17348 (h!73913 (exprs!6844 lt!2508018))))))

(declare-fun b!7015960 () Bool)

(assert (=> b!7015960 (= e!4217449 e!4217446)))

(declare-fun res!2863381 () Bool)

(assert (=> b!7015960 (= res!2863381 (not (nullable!7108 (reg!17677 (h!73913 (exprs!6844 lt!2508018))))))))

(assert (=> b!7015960 (=> (not res!2863381) (not e!4217446))))

(declare-fun b!7015961 () Bool)

(declare-fun res!2863380 () Bool)

(declare-fun e!4217448 () Bool)

(assert (=> b!7015961 (=> (not res!2863380) (not e!4217448))))

(assert (=> b!7015961 (= res!2863380 call!637251)))

(assert (=> b!7015961 (= e!4217447 e!4217448)))

(declare-fun b!7015962 () Bool)

(assert (=> b!7015962 (= e!4217448 call!637249)))

(declare-fun bm!637246 () Bool)

(assert (=> bm!637246 (= call!637251 call!637250)))

(assert (= (and d!2187048 (not res!2863379)) b!7015959))

(assert (= (and b!7015959 c!1303512) b!7015960))

(assert (= (and b!7015959 (not c!1303512)) b!7015957))

(assert (= (and b!7015960 res!2863381) b!7015956))

(assert (= (and b!7015957 c!1303513) b!7015961))

(assert (= (and b!7015957 (not c!1303513)) b!7015955))

(assert (= (and b!7015961 res!2863380) b!7015962))

(assert (= (and b!7015955 (not res!2863383)) b!7015954))

(assert (= (and b!7015954 res!2863382) b!7015958))

(assert (= (or b!7015962 b!7015958) bm!637244))

(assert (= (or b!7015961 b!7015954) bm!637246))

(assert (= (or b!7015956 bm!637246) bm!637245))

(declare-fun m!7715526 () Bool)

(assert (=> bm!637244 m!7715526))

(declare-fun m!7715528 () Bool)

(assert (=> bm!637245 m!7715528))

(declare-fun m!7715530 () Bool)

(assert (=> b!7015960 m!7715530))

(assert (=> b!7015760 d!2187048))

(declare-fun bs!1866835 () Bool)

(declare-fun d!2187052 () Bool)

(assert (= bs!1866835 (and d!2187052 b!7015768)))

(declare-fun lambda!409932 () Int)

(assert (=> bs!1866835 (= lambda!409932 lambda!409895)))

(assert (=> d!2187052 true))

(declare-fun map!15640 ((Set Context!12688) Int) (Set Context!12688))

(assert (=> d!2187052 (= (appendTo!469 lt!2508014 ct2!306) (map!15640 lt!2508014 lambda!409932))))

(declare-fun bs!1866836 () Bool)

(assert (= bs!1866836 d!2187052))

(declare-fun m!7715538 () Bool)

(assert (=> bs!1866836 m!7715538))

(assert (=> b!7015760 d!2187052))

(declare-fun bs!1866837 () Bool)

(declare-fun d!2187056 () Bool)

(assert (= bs!1866837 (and d!2187056 b!7015768)))

(declare-fun lambda!409935 () Int)

(assert (=> bs!1866837 (= lambda!409935 lambda!409896)))

(assert (=> d!2187056 (= (derivationStepZipperDown!2066 (h!73913 (exprs!6844 lt!2508018)) (Context!12689 (++!15363 (exprs!6844 lt!2508015) (exprs!6844 ct2!306))) (h!73914 s!7408)) (appendTo!469 (derivationStepZipperDown!2066 (h!73913 (exprs!6844 lt!2508018)) lt!2508015 (h!73914 s!7408)) ct2!306))))

(declare-fun lt!2508128 () Unit!161378)

(assert (=> d!2187056 (= lt!2508128 (lemmaConcatPreservesForall!684 (exprs!6844 lt!2508015) (exprs!6844 ct2!306) lambda!409935))))

(declare-fun lt!2508127 () Unit!161378)

(declare-fun choose!52820 (Context!12688 Regex!17348 C!34966 Context!12688) Unit!161378)

(assert (=> d!2187056 (= lt!2508127 (choose!52820 lt!2508015 (h!73913 (exprs!6844 lt!2508018)) (h!73914 s!7408) ct2!306))))

(assert (=> d!2187056 (validRegex!8903 (h!73913 (exprs!6844 lt!2508018)))))

(assert (=> d!2187056 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!39 lt!2508015 (h!73913 (exprs!6844 lt!2508018)) (h!73914 s!7408) ct2!306) lt!2508127)))

(declare-fun bs!1866838 () Bool)

(assert (= bs!1866838 d!2187056))

(assert (=> bs!1866838 m!7715288))

(declare-fun m!7715540 () Bool)

(assert (=> bs!1866838 m!7715540))

(declare-fun m!7715544 () Bool)

(assert (=> bs!1866838 m!7715544))

(declare-fun m!7715546 () Bool)

(assert (=> bs!1866838 m!7715546))

(assert (=> bs!1866838 m!7715290))

(declare-fun m!7715548 () Bool)

(assert (=> bs!1866838 m!7715548))

(assert (=> bs!1866838 m!7715290))

(declare-fun m!7715552 () Bool)

(assert (=> bs!1866838 m!7715552))

(assert (=> b!7015760 d!2187056))

(declare-fun b!7015987 () Bool)

(declare-fun res!2863403 () Bool)

(declare-fun e!4217467 () Bool)

(assert (=> b!7015987 (=> (not res!2863403) (not e!4217467))))

(declare-fun lt!2508141 () Option!16821)

(declare-fun get!23657 (Option!16821) tuple2!67978)

(assert (=> b!7015987 (= res!2863403 (matchZipper!2888 (set.insert ct2!306 (as set.empty (Set Context!12688))) (_2!37292 (get!23657 lt!2508141))))))

(declare-fun b!7015988 () Bool)

(declare-fun lt!2508139 () Unit!161378)

(declare-fun lt!2508140 () Unit!161378)

(assert (=> b!7015988 (= lt!2508139 lt!2508140)))

(declare-fun ++!15365 (List!67590 List!67590) List!67590)

(assert (=> b!7015988 (= (++!15365 (++!15365 Nil!67466 (Cons!67466 (h!73914 (t!381345 s!7408)) Nil!67466)) (t!381345 (t!381345 s!7408))) (t!381345 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2900 (List!67590 C!34966 List!67590 List!67590) Unit!161378)

(assert (=> b!7015988 (= lt!2508140 (lemmaMoveElementToOtherListKeepsConcatEq!2900 Nil!67466 (h!73914 (t!381345 s!7408)) (t!381345 (t!381345 s!7408)) (t!381345 s!7408)))))

(declare-fun e!4217469 () Option!16821)

(assert (=> b!7015988 (= e!4217469 (findConcatSeparationZippers!337 lt!2508014 (set.insert ct2!306 (as set.empty (Set Context!12688))) (++!15365 Nil!67466 (Cons!67466 (h!73914 (t!381345 s!7408)) Nil!67466)) (t!381345 (t!381345 s!7408)) (t!381345 s!7408)))))

(declare-fun b!7015989 () Bool)

(declare-fun e!4217466 () Option!16821)

(assert (=> b!7015989 (= e!4217466 e!4217469)))

(declare-fun c!1303523 () Bool)

(assert (=> b!7015989 (= c!1303523 (is-Nil!67466 (t!381345 s!7408)))))

(declare-fun b!7015990 () Bool)

(declare-fun e!4217470 () Bool)

(assert (=> b!7015990 (= e!4217470 (not (isDefined!13522 lt!2508141)))))

(declare-fun b!7015991 () Bool)

(declare-fun e!4217468 () Bool)

(assert (=> b!7015991 (= e!4217468 (matchZipper!2888 (set.insert ct2!306 (as set.empty (Set Context!12688))) (t!381345 s!7408)))))

(declare-fun b!7015992 () Bool)

(assert (=> b!7015992 (= e!4217467 (= (++!15365 (_1!37292 (get!23657 lt!2508141)) (_2!37292 (get!23657 lt!2508141))) (t!381345 s!7408)))))

(declare-fun b!7015993 () Bool)

(declare-fun res!2863402 () Bool)

(assert (=> b!7015993 (=> (not res!2863402) (not e!4217467))))

(assert (=> b!7015993 (= res!2863402 (matchZipper!2888 lt!2508014 (_1!37292 (get!23657 lt!2508141))))))

(declare-fun b!7015994 () Bool)

(assert (=> b!7015994 (= e!4217469 None!16820)))

(declare-fun d!2187058 () Bool)

(assert (=> d!2187058 e!4217470))

(declare-fun res!2863401 () Bool)

(assert (=> d!2187058 (=> res!2863401 e!4217470)))

(assert (=> d!2187058 (= res!2863401 e!4217467)))

(declare-fun res!2863400 () Bool)

(assert (=> d!2187058 (=> (not res!2863400) (not e!4217467))))

(assert (=> d!2187058 (= res!2863400 (isDefined!13522 lt!2508141))))

(assert (=> d!2187058 (= lt!2508141 e!4217466)))

(declare-fun c!1303522 () Bool)

(assert (=> d!2187058 (= c!1303522 e!4217468)))

(declare-fun res!2863404 () Bool)

(assert (=> d!2187058 (=> (not res!2863404) (not e!4217468))))

(assert (=> d!2187058 (= res!2863404 (matchZipper!2888 lt!2508014 Nil!67466))))

(assert (=> d!2187058 (= (++!15365 Nil!67466 (t!381345 s!7408)) (t!381345 s!7408))))

(assert (=> d!2187058 (= (findConcatSeparationZippers!337 lt!2508014 (set.insert ct2!306 (as set.empty (Set Context!12688))) Nil!67466 (t!381345 s!7408) (t!381345 s!7408)) lt!2508141)))

(declare-fun b!7015995 () Bool)

(assert (=> b!7015995 (= e!4217466 (Some!16820 (tuple2!67979 Nil!67466 (t!381345 s!7408))))))

(assert (= (and d!2187058 res!2863404) b!7015991))

(assert (= (and d!2187058 c!1303522) b!7015995))

(assert (= (and d!2187058 (not c!1303522)) b!7015989))

(assert (= (and b!7015989 c!1303523) b!7015994))

(assert (= (and b!7015989 (not c!1303523)) b!7015988))

(assert (= (and d!2187058 res!2863400) b!7015993))

(assert (= (and b!7015993 res!2863402) b!7015987))

(assert (= (and b!7015987 res!2863403) b!7015992))

(assert (= (and d!2187058 (not res!2863401)) b!7015990))

(declare-fun m!7715566 () Bool)

(assert (=> b!7015993 m!7715566))

(declare-fun m!7715568 () Bool)

(assert (=> b!7015993 m!7715568))

(assert (=> b!7015987 m!7715566))

(assert (=> b!7015987 m!7715284))

(declare-fun m!7715570 () Bool)

(assert (=> b!7015987 m!7715570))

(declare-fun m!7715572 () Bool)

(assert (=> b!7015988 m!7715572))

(assert (=> b!7015988 m!7715572))

(declare-fun m!7715574 () Bool)

(assert (=> b!7015988 m!7715574))

(declare-fun m!7715576 () Bool)

(assert (=> b!7015988 m!7715576))

(assert (=> b!7015988 m!7715284))

(assert (=> b!7015988 m!7715572))

(declare-fun m!7715578 () Bool)

(assert (=> b!7015988 m!7715578))

(assert (=> b!7015991 m!7715284))

(declare-fun m!7715580 () Bool)

(assert (=> b!7015991 m!7715580))

(declare-fun m!7715582 () Bool)

(assert (=> d!2187058 m!7715582))

(declare-fun m!7715584 () Bool)

(assert (=> d!2187058 m!7715584))

(declare-fun m!7715586 () Bool)

(assert (=> d!2187058 m!7715586))

(assert (=> b!7015992 m!7715566))

(declare-fun m!7715588 () Bool)

(assert (=> b!7015992 m!7715588))

(assert (=> b!7015990 m!7715582))

(assert (=> b!7015760 d!2187058))

(declare-fun d!2187064 () Bool)

(declare-fun c!1303524 () Bool)

(assert (=> d!2187064 (= c!1303524 (isEmpty!39401 s!7408))))

(declare-fun e!4217471 () Bool)

(assert (=> d!2187064 (= (matchZipper!2888 lt!2508017 s!7408) e!4217471)))

(declare-fun b!7015996 () Bool)

(assert (=> b!7015996 (= e!4217471 (nullableZipper!2501 lt!2508017))))

(declare-fun b!7015997 () Bool)

(assert (=> b!7015997 (= e!4217471 (matchZipper!2888 (derivationStepZipper!2828 lt!2508017 (head!14191 s!7408)) (tail!13438 s!7408)))))

(assert (= (and d!2187064 c!1303524) b!7015996))

(assert (= (and d!2187064 (not c!1303524)) b!7015997))

(declare-fun m!7715590 () Bool)

(assert (=> d!2187064 m!7715590))

(declare-fun m!7715592 () Bool)

(assert (=> b!7015996 m!7715592))

(declare-fun m!7715594 () Bool)

(assert (=> b!7015997 m!7715594))

(assert (=> b!7015997 m!7715594))

(declare-fun m!7715596 () Bool)

(assert (=> b!7015997 m!7715596))

(declare-fun m!7715598 () Bool)

(assert (=> b!7015997 m!7715598))

(assert (=> b!7015997 m!7715596))

(assert (=> b!7015997 m!7715598))

(declare-fun m!7715600 () Bool)

(assert (=> b!7015997 m!7715600))

(assert (=> start!676124 d!2187064))

(declare-fun bs!1866841 () Bool)

(declare-fun d!2187066 () Bool)

(assert (= bs!1866841 (and d!2187066 b!7015768)))

(declare-fun lambda!409939 () Int)

(assert (=> bs!1866841 (= lambda!409939 lambda!409895)))

(declare-fun bs!1866842 () Bool)

(assert (= bs!1866842 (and d!2187066 d!2187052)))

(assert (=> bs!1866842 (= lambda!409939 lambda!409932)))

(assert (=> d!2187066 true))

(assert (=> d!2187066 (= (appendTo!469 z1!570 ct2!306) (map!15640 z1!570 lambda!409939))))

(declare-fun bs!1866843 () Bool)

(assert (= bs!1866843 d!2187066))

(declare-fun m!7715602 () Bool)

(assert (=> bs!1866843 m!7715602))

(assert (=> start!676124 d!2187066))

(declare-fun bs!1866844 () Bool)

(declare-fun d!2187068 () Bool)

(assert (= bs!1866844 (and d!2187068 b!7015768)))

(declare-fun lambda!409942 () Int)

(assert (=> bs!1866844 (= lambda!409942 lambda!409896)))

(declare-fun bs!1866845 () Bool)

(assert (= bs!1866845 (and d!2187068 d!2187056)))

(assert (=> bs!1866845 (= lambda!409942 lambda!409935)))

(assert (=> d!2187068 (= (inv!86230 ct2!306) (forall!16262 (exprs!6844 ct2!306) lambda!409942))))

(declare-fun bs!1866846 () Bool)

(assert (= bs!1866846 d!2187068))

(declare-fun m!7715604 () Bool)

(assert (=> bs!1866846 m!7715604))

(assert (=> start!676124 d!2187068))

(declare-fun d!2187070 () Bool)

(declare-fun e!4217477 () Bool)

(assert (=> d!2187070 e!4217477))

(declare-fun res!2863407 () Bool)

(assert (=> d!2187070 (=> (not res!2863407) (not e!4217477))))

(declare-fun lt!2508144 () List!67591)

(declare-fun noDuplicate!2579 (List!67591) Bool)

(assert (=> d!2187070 (= res!2863407 (noDuplicate!2579 lt!2508144))))

(declare-fun choose!52822 ((Set Context!12688)) List!67591)

(assert (=> d!2187070 (= lt!2508144 (choose!52822 lt!2508017))))

(assert (=> d!2187070 (= (toList!10708 lt!2508017) lt!2508144)))

(declare-fun b!7016006 () Bool)

(declare-fun content!13410 (List!67591) (Set Context!12688))

(assert (=> b!7016006 (= e!4217477 (= (content!13410 lt!2508144) lt!2508017))))

(assert (= (and d!2187070 res!2863407) b!7016006))

(declare-fun m!7715618 () Bool)

(assert (=> d!2187070 m!7715618))

(declare-fun m!7715620 () Bool)

(assert (=> d!2187070 m!7715620))

(declare-fun m!7715622 () Bool)

(assert (=> b!7016006 m!7715622))

(assert (=> b!7015769 d!2187070))

(declare-fun bs!1866847 () Bool)

(declare-fun d!2187074 () Bool)

(assert (= bs!1866847 (and d!2187074 b!7015769)))

(declare-fun lambda!409947 () Int)

(assert (=> bs!1866847 (not (= lambda!409947 lambda!409894))))

(assert (=> d!2187074 true))

(declare-fun order!28061 () Int)

(declare-fun dynLambda!27162 (Int Int) Int)

(assert (=> d!2187074 (< (dynLambda!27162 order!28061 lambda!409894) (dynLambda!27162 order!28061 lambda!409947))))

(declare-fun forall!16263 (List!67591 Int) Bool)

(assert (=> d!2187074 (= (exists!3210 lt!2508025 lambda!409894) (not (forall!16263 lt!2508025 lambda!409947)))))

(declare-fun bs!1866848 () Bool)

(assert (= bs!1866848 d!2187074))

(declare-fun m!7715624 () Bool)

(assert (=> bs!1866848 m!7715624))

(assert (=> b!7015769 d!2187074))

(declare-fun d!2187076 () Bool)

(declare-fun c!1303528 () Bool)

(assert (=> d!2187076 (= c!1303528 (isEmpty!39401 s!7408))))

(declare-fun e!4217478 () Bool)

(assert (=> d!2187076 (= (matchZipper!2888 lt!2508010 s!7408) e!4217478)))

(declare-fun b!7016009 () Bool)

(assert (=> b!7016009 (= e!4217478 (nullableZipper!2501 lt!2508010))))

(declare-fun b!7016010 () Bool)

(assert (=> b!7016010 (= e!4217478 (matchZipper!2888 (derivationStepZipper!2828 lt!2508010 (head!14191 s!7408)) (tail!13438 s!7408)))))

(assert (= (and d!2187076 c!1303528) b!7016009))

(assert (= (and d!2187076 (not c!1303528)) b!7016010))

(assert (=> d!2187076 m!7715590))

(declare-fun m!7715626 () Bool)

(assert (=> b!7016009 m!7715626))

(assert (=> b!7016010 m!7715594))

(assert (=> b!7016010 m!7715594))

(declare-fun m!7715628 () Bool)

(assert (=> b!7016010 m!7715628))

(assert (=> b!7016010 m!7715598))

(assert (=> b!7016010 m!7715628))

(assert (=> b!7016010 m!7715598))

(declare-fun m!7715630 () Bool)

(assert (=> b!7016010 m!7715630))

(assert (=> b!7015769 d!2187076))

(declare-fun d!2187078 () Bool)

(declare-fun e!4217481 () Bool)

(assert (=> d!2187078 e!4217481))

(declare-fun res!2863410 () Bool)

(assert (=> d!2187078 (=> (not res!2863410) (not e!4217481))))

(declare-fun lt!2508147 () Context!12688)

(declare-fun dynLambda!27163 (Int Context!12688) Bool)

(assert (=> d!2187078 (= res!2863410 (dynLambda!27163 lambda!409894 lt!2508147))))

(declare-fun getWitness!1305 (List!67591 Int) Context!12688)

(assert (=> d!2187078 (= lt!2508147 (getWitness!1305 (toList!10708 lt!2508017) lambda!409894))))

(declare-fun exists!3212 ((Set Context!12688) Int) Bool)

(assert (=> d!2187078 (exists!3212 lt!2508017 lambda!409894)))

(assert (=> d!2187078 (= (getWitness!1303 lt!2508017 lambda!409894) lt!2508147)))

(declare-fun b!7016015 () Bool)

(assert (=> b!7016015 (= e!4217481 (set.member lt!2508147 lt!2508017))))

(assert (= (and d!2187078 res!2863410) b!7016015))

(declare-fun b_lambda!264779 () Bool)

(assert (=> (not b_lambda!264779) (not d!2187078)))

(declare-fun m!7715636 () Bool)

(assert (=> d!2187078 m!7715636))

(assert (=> d!2187078 m!7715268))

(assert (=> d!2187078 m!7715268))

(declare-fun m!7715638 () Bool)

(assert (=> d!2187078 m!7715638))

(declare-fun m!7715640 () Bool)

(assert (=> d!2187078 m!7715640))

(declare-fun m!7715642 () Bool)

(assert (=> b!7016015 m!7715642))

(assert (=> b!7015769 d!2187078))

(declare-fun bs!1866855 () Bool)

(declare-fun d!2187084 () Bool)

(assert (= bs!1866855 (and d!2187084 b!7015769)))

(declare-fun lambda!409954 () Int)

(assert (=> bs!1866855 (= lambda!409954 lambda!409894)))

(declare-fun bs!1866856 () Bool)

(assert (= bs!1866856 (and d!2187084 d!2187074)))

(assert (=> bs!1866856 (not (= lambda!409954 lambda!409947))))

(assert (=> d!2187084 true))

(assert (=> d!2187084 (exists!3210 lt!2508025 lambda!409954)))

(declare-fun lt!2508150 () Unit!161378)

(declare-fun choose!52824 (List!67591 List!67590) Unit!161378)

(assert (=> d!2187084 (= lt!2508150 (choose!52824 lt!2508025 s!7408))))

(assert (=> d!2187084 (matchZipper!2888 (content!13410 lt!2508025) s!7408)))

(assert (=> d!2187084 (= (lemmaZipperMatchesExistsMatchingContext!317 lt!2508025 s!7408) lt!2508150)))

(declare-fun bs!1866857 () Bool)

(assert (= bs!1866857 d!2187084))

(declare-fun m!7715652 () Bool)

(assert (=> bs!1866857 m!7715652))

(declare-fun m!7715654 () Bool)

(assert (=> bs!1866857 m!7715654))

(declare-fun m!7715656 () Bool)

(assert (=> bs!1866857 m!7715656))

(assert (=> bs!1866857 m!7715656))

(declare-fun m!7715658 () Bool)

(assert (=> bs!1866857 m!7715658))

(assert (=> b!7015769 d!2187084))

(declare-fun d!2187092 () Bool)

(declare-fun e!4217484 () Bool)

(assert (=> d!2187092 e!4217484))

(declare-fun res!2863412 () Bool)

(assert (=> d!2187092 (=> (not res!2863412) (not e!4217484))))

(declare-fun lt!2508151 () List!67589)

(assert (=> d!2187092 (= res!2863412 (= (content!13409 lt!2508151) (set.union (content!13409 (exprs!6844 lt!2508018)) (content!13409 (exprs!6844 ct2!306)))))))

(declare-fun e!4217483 () List!67589)

(assert (=> d!2187092 (= lt!2508151 e!4217483)))

(declare-fun c!1303532 () Bool)

(assert (=> d!2187092 (= c!1303532 (is-Nil!67465 (exprs!6844 lt!2508018)))))

(assert (=> d!2187092 (= (++!15363 (exprs!6844 lt!2508018) (exprs!6844 ct2!306)) lt!2508151)))

(declare-fun b!7016021 () Bool)

(assert (=> b!7016021 (= e!4217484 (or (not (= (exprs!6844 ct2!306) Nil!67465)) (= lt!2508151 (exprs!6844 lt!2508018))))))

(declare-fun b!7016019 () Bool)

(assert (=> b!7016019 (= e!4217483 (Cons!67465 (h!73913 (exprs!6844 lt!2508018)) (++!15363 (t!381344 (exprs!6844 lt!2508018)) (exprs!6844 ct2!306))))))

(declare-fun b!7016020 () Bool)

(declare-fun res!2863411 () Bool)

(assert (=> b!7016020 (=> (not res!2863411) (not e!4217484))))

(assert (=> b!7016020 (= res!2863411 (= (size!40993 lt!2508151) (+ (size!40993 (exprs!6844 lt!2508018)) (size!40993 (exprs!6844 ct2!306)))))))

(declare-fun b!7016018 () Bool)

(assert (=> b!7016018 (= e!4217483 (exprs!6844 ct2!306))))

(assert (= (and d!2187092 c!1303532) b!7016018))

(assert (= (and d!2187092 (not c!1303532)) b!7016019))

(assert (= (and d!2187092 res!2863412) b!7016020))

(assert (= (and b!7016020 res!2863411) b!7016021))

(declare-fun m!7715660 () Bool)

(assert (=> d!2187092 m!7715660))

(declare-fun m!7715662 () Bool)

(assert (=> d!2187092 m!7715662))

(assert (=> d!2187092 m!7715444))

(declare-fun m!7715664 () Bool)

(assert (=> b!7016019 m!7715664))

(declare-fun m!7715666 () Bool)

(assert (=> b!7016020 m!7715666))

(declare-fun m!7715668 () Bool)

(assert (=> b!7016020 m!7715668))

(assert (=> b!7016020 m!7715452))

(assert (=> b!7015768 d!2187092))

(assert (=> b!7015768 d!2187026))

(declare-fun d!2187094 () Bool)

(declare-fun e!4217487 () Bool)

(assert (=> d!2187094 e!4217487))

(declare-fun res!2863415 () Bool)

(assert (=> d!2187094 (=> (not res!2863415) (not e!4217487))))

(declare-fun lt!2508154 () Context!12688)

(declare-fun dynLambda!27165 (Int Context!12688) Context!12688)

(assert (=> d!2187094 (= res!2863415 (= lt!2508021 (dynLambda!27165 lambda!409895 lt!2508154)))))

(declare-fun choose!52826 ((Set Context!12688) Int Context!12688) Context!12688)

(assert (=> d!2187094 (= lt!2508154 (choose!52826 z1!570 lambda!409895 lt!2508021))))

(assert (=> d!2187094 (set.member lt!2508021 (map!15640 z1!570 lambda!409895))))

(assert (=> d!2187094 (= (mapPost2!203 z1!570 lambda!409895 lt!2508021) lt!2508154)))

(declare-fun b!7016025 () Bool)

(assert (=> b!7016025 (= e!4217487 (set.member lt!2508154 z1!570))))

(assert (= (and d!2187094 res!2863415) b!7016025))

(declare-fun b_lambda!264781 () Bool)

(assert (=> (not b_lambda!264781) (not d!2187094)))

(declare-fun m!7715670 () Bool)

(assert (=> d!2187094 m!7715670))

(declare-fun m!7715672 () Bool)

(assert (=> d!2187094 m!7715672))

(declare-fun m!7715674 () Bool)

(assert (=> d!2187094 m!7715674))

(declare-fun m!7715676 () Bool)

(assert (=> d!2187094 m!7715676))

(declare-fun m!7715678 () Bool)

(assert (=> b!7016025 m!7715678))

(assert (=> b!7015768 d!2187094))

(declare-fun bs!1866858 () Bool)

(declare-fun d!2187096 () Bool)

(assert (= bs!1866858 (and d!2187096 b!7015768)))

(declare-fun lambda!409955 () Int)

(assert (=> bs!1866858 (= lambda!409955 lambda!409896)))

(declare-fun bs!1866859 () Bool)

(assert (= bs!1866859 (and d!2187096 d!2187056)))

(assert (=> bs!1866859 (= lambda!409955 lambda!409935)))

(declare-fun bs!1866860 () Bool)

(assert (= bs!1866860 (and d!2187096 d!2187068)))

(assert (=> bs!1866860 (= lambda!409955 lambda!409942)))

(assert (=> d!2187096 (= (inv!86230 setElem!48513) (forall!16262 (exprs!6844 setElem!48513) lambda!409955))))

(declare-fun bs!1866861 () Bool)

(assert (= bs!1866861 d!2187096))

(declare-fun m!7715680 () Bool)

(assert (=> bs!1866861 m!7715680))

(assert (=> setNonEmpty!48513 d!2187096))

(declare-fun b!7016030 () Bool)

(declare-fun e!4217490 () Bool)

(declare-fun tp!1933196 () Bool)

(assert (=> b!7016030 (= e!4217490 (and tp_is_empty!43921 tp!1933196))))

(assert (=> b!7015756 (= tp!1933178 e!4217490)))

(assert (= (and b!7015756 (is-Cons!67466 (t!381345 s!7408))) b!7016030))

(declare-fun b!7016035 () Bool)

(declare-fun e!4217493 () Bool)

(declare-fun tp!1933201 () Bool)

(declare-fun tp!1933202 () Bool)

(assert (=> b!7016035 (= e!4217493 (and tp!1933201 tp!1933202))))

(assert (=> b!7015764 (= tp!1933179 e!4217493)))

(assert (= (and b!7015764 (is-Cons!67465 (exprs!6844 setElem!48513))) b!7016035))

(declare-fun b!7016036 () Bool)

(declare-fun e!4217494 () Bool)

(declare-fun tp!1933203 () Bool)

(declare-fun tp!1933204 () Bool)

(assert (=> b!7016036 (= e!4217494 (and tp!1933203 tp!1933204))))

(assert (=> b!7015763 (= tp!1933181 e!4217494)))

(assert (= (and b!7015763 (is-Cons!67465 (exprs!6844 ct2!306))) b!7016036))

(declare-fun condSetEmpty!48519 () Bool)

(assert (=> setNonEmpty!48513 (= condSetEmpty!48519 (= setRest!48513 (as set.empty (Set Context!12688))))))

(declare-fun setRes!48519 () Bool)

(assert (=> setNonEmpty!48513 (= tp!1933180 setRes!48519)))

(declare-fun setIsEmpty!48519 () Bool)

(assert (=> setIsEmpty!48519 setRes!48519))

(declare-fun setElem!48519 () Context!12688)

(declare-fun setNonEmpty!48519 () Bool)

(declare-fun tp!1933210 () Bool)

(declare-fun e!4217497 () Bool)

(assert (=> setNonEmpty!48519 (= setRes!48519 (and tp!1933210 (inv!86230 setElem!48519) e!4217497))))

(declare-fun setRest!48519 () (Set Context!12688))

(assert (=> setNonEmpty!48519 (= setRest!48513 (set.union (set.insert setElem!48519 (as set.empty (Set Context!12688))) setRest!48519))))

(declare-fun b!7016041 () Bool)

(declare-fun tp!1933209 () Bool)

(assert (=> b!7016041 (= e!4217497 tp!1933209)))

(assert (= (and setNonEmpty!48513 condSetEmpty!48519) setIsEmpty!48519))

(assert (= (and setNonEmpty!48513 (not condSetEmpty!48519)) setNonEmpty!48519))

(assert (= setNonEmpty!48519 b!7016041))

(declare-fun m!7715682 () Bool)

(assert (=> setNonEmpty!48519 m!7715682))

(declare-fun b_lambda!264783 () Bool)

(assert (= b_lambda!264781 (or b!7015768 b_lambda!264783)))

(declare-fun bs!1866862 () Bool)

(declare-fun d!2187098 () Bool)

(assert (= bs!1866862 (and d!2187098 b!7015768)))

(declare-fun lt!2508157 () Unit!161378)

(assert (=> bs!1866862 (= lt!2508157 (lemmaConcatPreservesForall!684 (exprs!6844 lt!2508154) (exprs!6844 ct2!306) lambda!409896))))

(assert (=> bs!1866862 (= (dynLambda!27165 lambda!409895 lt!2508154) (Context!12689 (++!15363 (exprs!6844 lt!2508154) (exprs!6844 ct2!306))))))

(declare-fun m!7715684 () Bool)

(assert (=> bs!1866862 m!7715684))

(declare-fun m!7715686 () Bool)

(assert (=> bs!1866862 m!7715686))

(assert (=> d!2187094 d!2187098))

(declare-fun b_lambda!264785 () Bool)

(assert (= b_lambda!264773 (or b!7015762 b_lambda!264785)))

(declare-fun bs!1866863 () Bool)

(declare-fun d!2187100 () Bool)

(assert (= bs!1866863 (and d!2187100 b!7015762)))

(assert (=> bs!1866863 (= (dynLambda!27161 lambda!409897 lt!2508013) (derivationStepZipperUp!1998 lt!2508013 (h!73914 s!7408)))))

(assert (=> bs!1866863 m!7715296))

(assert (=> d!2187028 d!2187100))

(declare-fun b_lambda!264787 () Bool)

(assert (= b_lambda!264779 (or b!7015769 b_lambda!264787)))

(declare-fun bs!1866864 () Bool)

(declare-fun d!2187102 () Bool)

(assert (= bs!1866864 (and d!2187102 b!7015769)))

(assert (=> bs!1866864 (= (dynLambda!27163 lambda!409894 lt!2508147) (matchZipper!2888 (set.insert lt!2508147 (as set.empty (Set Context!12688))) s!7408))))

(declare-fun m!7715688 () Bool)

(assert (=> bs!1866864 m!7715688))

(assert (=> bs!1866864 m!7715688))

(declare-fun m!7715690 () Bool)

(assert (=> bs!1866864 m!7715690))

(assert (=> d!2187078 d!2187102))

(push 1)

(assert (not b!7015987))

(assert (not b_lambda!264787))

(assert (not bm!637228))

(assert (not bs!1866863))

(assert (not bm!637244))

(assert (not d!2187092))

(assert (not b!7016041))

(assert (not d!2187078))

(assert (not d!2187094))

(assert (not b!7015888))

(assert (not b!7015996))

(assert (not d!2187058))

(assert (not b!7016035))

(assert (not bm!637232))

(assert (not b!7016019))

(assert (not bs!1866864))

(assert (not d!2187056))

(assert (not b!7015828))

(assert (not b!7015908))

(assert (not b!7016009))

(assert (not d!2187014))

(assert (not bm!637223))

(assert (not b!7015993))

(assert (not d!2187076))

(assert (not b!7016006))

(assert (not d!2187018))

(assert (not d!2187074))

(assert (not b!7016036))

(assert (not d!2187040))

(assert (not b!7015887))

(assert (not b_lambda!264785))

(assert (not b!7015829))

(assert (not b!7015997))

(assert (not d!2187066))

(assert (not b!7015990))

(assert (not bm!637231))

(assert (not b!7015907))

(assert (not b!7015991))

(assert (not d!2187024))

(assert (not b!7015960))

(assert (not bm!637234))

(assert (not b!7016030))

(assert (not b_lambda!264783))

(assert (not b!7015992))

(assert (not d!2187028))

(assert (not d!2187026))

(assert (not d!2187084))

(assert tp_is_empty!43921)

(assert (not b!7015924))

(assert (not d!2187064))

(assert (not d!2187070))

(assert (not b!7016010))

(assert (not d!2187006))

(assert (not d!2187096))

(assert (not d!2187068))

(assert (not d!2187052))

(assert (not b!7016020))

(assert (not b!7015870))

(assert (not bm!637237))

(assert (not setNonEmpty!48519))

(assert (not bs!1866862))

(assert (not bm!637245))

(assert (not bm!637225))

(assert (not d!2187034))

(assert (not d!2187022))

(assert (not d!2187044))

(assert (not b!7015988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

