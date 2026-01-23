; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740214 () Bool)

(assert start!740214)

(declare-fun b!7774402 () Bool)

(declare-fun res!3098913 () Bool)

(declare-fun e!4605976 () Bool)

(assert (=> b!7774402 (=> (not res!3098913) (not e!4605976))))

(declare-datatypes ((C!41884 0))(
  ( (C!41885 (val!31382 Int)) )
))
(declare-datatypes ((Regex!20779 0))(
  ( (ElementMatch!20779 (c!1432788 C!41884)) (Concat!29624 (regOne!42070 Regex!20779) (regTwo!42070 Regex!20779)) (EmptyExpr!20779) (Star!20779 (reg!21108 Regex!20779)) (EmptyLang!20779) (Union!20779 (regOne!42071 Regex!20779) (regTwo!42071 Regex!20779)) )
))
(declare-fun r1!6279 () Regex!20779)

(declare-fun nullable!9167 (Regex!20779) Bool)

(assert (=> b!7774402 (= res!3098913 (nullable!9167 r1!6279))))

(declare-fun b!7774403 () Bool)

(declare-fun e!4605972 () Bool)

(declare-fun tp!2284436 () Bool)

(declare-fun tp!2284437 () Bool)

(assert (=> b!7774403 (= e!4605972 (and tp!2284436 tp!2284437))))

(declare-fun res!3098915 () Bool)

(declare-fun e!4605975 () Bool)

(assert (=> start!740214 (=> (not res!3098915) (not e!4605975))))

(declare-fun validRegex!11193 (Regex!20779) Bool)

(assert (=> start!740214 (= res!3098915 (validRegex!11193 r1!6279))))

(assert (=> start!740214 e!4605975))

(assert (=> start!740214 e!4605972))

(declare-fun e!4605977 () Bool)

(assert (=> start!740214 e!4605977))

(declare-fun e!4605971 () Bool)

(assert (=> start!740214 e!4605971))

(declare-fun b!7774404 () Bool)

(declare-fun e!4605974 () Bool)

(assert (=> b!7774404 (= e!4605975 e!4605974)))

(declare-fun res!3098917 () Bool)

(assert (=> b!7774404 (=> (not res!3098917) (not e!4605974))))

(declare-fun lt!2671765 () Regex!20779)

(declare-datatypes ((List!73618 0))(
  ( (Nil!73494) (Cons!73494 (h!79942 C!41884) (t!388353 List!73618)) )
))
(declare-fun s!14292 () List!73618)

(declare-fun matchR!10239 (Regex!20779 List!73618) Bool)

(assert (=> b!7774404 (= res!3098917 (matchR!10239 lt!2671765 s!14292))))

(declare-fun r2!6217 () Regex!20779)

(assert (=> b!7774404 (= lt!2671765 (Concat!29624 r1!6279 r2!6217))))

(declare-fun b!7774405 () Bool)

(declare-fun tp!2284439 () Bool)

(declare-fun tp!2284440 () Bool)

(assert (=> b!7774405 (= e!4605972 (and tp!2284439 tp!2284440))))

(declare-fun b!7774406 () Bool)

(declare-fun e!4605973 () Bool)

(assert (=> b!7774406 (= e!4605973 false)))

(declare-fun lt!2671770 () Bool)

(declare-fun lt!2671766 () Regex!20779)

(assert (=> b!7774406 (= lt!2671770 (matchR!10239 lt!2671766 (t!388353 s!14292)))))

(declare-fun b!7774407 () Bool)

(declare-fun tp_is_empty!51913 () Bool)

(declare-fun tp!2284444 () Bool)

(assert (=> b!7774407 (= e!4605971 (and tp_is_empty!51913 tp!2284444))))

(declare-fun b!7774408 () Bool)

(assert (=> b!7774408 (= e!4605972 tp_is_empty!51913)))

(declare-fun b!7774409 () Bool)

(assert (=> b!7774409 (= e!4605977 tp_is_empty!51913)))

(declare-fun b!7774410 () Bool)

(assert (=> b!7774410 (= e!4605976 e!4605973)))

(declare-fun res!3098914 () Bool)

(assert (=> b!7774410 (=> (not res!3098914) (not e!4605973))))

(declare-fun lt!2671769 () Regex!20779)

(assert (=> b!7774410 (= res!3098914 (= lt!2671769 lt!2671766))))

(declare-fun lt!2671768 () Regex!20779)

(declare-fun lt!2671767 () Regex!20779)

(assert (=> b!7774410 (= lt!2671766 (Union!20779 lt!2671768 lt!2671767))))

(declare-fun derivativeStep!6122 (Regex!20779 C!41884) Regex!20779)

(assert (=> b!7774410 (= lt!2671767 (derivativeStep!6122 r2!6217 (h!79942 s!14292)))))

(assert (=> b!7774410 (= lt!2671768 (Concat!29624 (derivativeStep!6122 r1!6279 (h!79942 s!14292)) r2!6217))))

(declare-fun b!7774411 () Bool)

(declare-fun tp!2284435 () Bool)

(assert (=> b!7774411 (= e!4605972 tp!2284435)))

(declare-fun b!7774412 () Bool)

(declare-fun res!3098919 () Bool)

(assert (=> b!7774412 (=> (not res!3098919) (not e!4605974))))

(get-info :version)

(assert (=> b!7774412 (= res!3098919 ((_ is Cons!73494) s!14292))))

(declare-fun b!7774413 () Bool)

(declare-fun res!3098912 () Bool)

(assert (=> b!7774413 (=> (not res!3098912) (not e!4605975))))

(assert (=> b!7774413 (= res!3098912 (validRegex!11193 r2!6217))))

(declare-fun b!7774414 () Bool)

(declare-fun tp!2284438 () Bool)

(assert (=> b!7774414 (= e!4605977 tp!2284438)))

(declare-fun b!7774415 () Bool)

(declare-fun res!3098916 () Bool)

(assert (=> b!7774415 (=> (not res!3098916) (not e!4605973))))

(assert (=> b!7774415 (= res!3098916 (validRegex!11193 lt!2671768))))

(declare-fun b!7774416 () Bool)

(assert (=> b!7774416 (= e!4605974 e!4605976)))

(declare-fun res!3098918 () Bool)

(assert (=> b!7774416 (=> (not res!3098918) (not e!4605976))))

(assert (=> b!7774416 (= res!3098918 (matchR!10239 lt!2671769 (t!388353 s!14292)))))

(assert (=> b!7774416 (= lt!2671769 (derivativeStep!6122 lt!2671765 (h!79942 s!14292)))))

(declare-fun b!7774417 () Bool)

(declare-fun tp!2284442 () Bool)

(declare-fun tp!2284443 () Bool)

(assert (=> b!7774417 (= e!4605977 (and tp!2284442 tp!2284443))))

(declare-fun b!7774418 () Bool)

(declare-fun res!3098920 () Bool)

(assert (=> b!7774418 (=> (not res!3098920) (not e!4605973))))

(assert (=> b!7774418 (= res!3098920 (validRegex!11193 lt!2671767))))

(declare-fun b!7774419 () Bool)

(declare-fun tp!2284441 () Bool)

(declare-fun tp!2284445 () Bool)

(assert (=> b!7774419 (= e!4605977 (and tp!2284441 tp!2284445))))

(assert (= (and start!740214 res!3098915) b!7774413))

(assert (= (and b!7774413 res!3098912) b!7774404))

(assert (= (and b!7774404 res!3098917) b!7774412))

(assert (= (and b!7774412 res!3098919) b!7774416))

(assert (= (and b!7774416 res!3098918) b!7774402))

(assert (= (and b!7774402 res!3098913) b!7774410))

(assert (= (and b!7774410 res!3098914) b!7774415))

(assert (= (and b!7774415 res!3098916) b!7774418))

(assert (= (and b!7774418 res!3098920) b!7774406))

(assert (= (and start!740214 ((_ is ElementMatch!20779) r1!6279)) b!7774408))

(assert (= (and start!740214 ((_ is Concat!29624) r1!6279)) b!7774403))

(assert (= (and start!740214 ((_ is Star!20779) r1!6279)) b!7774411))

(assert (= (and start!740214 ((_ is Union!20779) r1!6279)) b!7774405))

(assert (= (and start!740214 ((_ is ElementMatch!20779) r2!6217)) b!7774409))

(assert (= (and start!740214 ((_ is Concat!29624) r2!6217)) b!7774419))

(assert (= (and start!740214 ((_ is Star!20779) r2!6217)) b!7774414))

(assert (= (and start!740214 ((_ is Union!20779) r2!6217)) b!7774417))

(assert (= (and start!740214 ((_ is Cons!73494) s!14292)) b!7774407))

(declare-fun m!8226164 () Bool)

(assert (=> start!740214 m!8226164))

(declare-fun m!8226166 () Bool)

(assert (=> b!7774410 m!8226166))

(declare-fun m!8226168 () Bool)

(assert (=> b!7774410 m!8226168))

(declare-fun m!8226170 () Bool)

(assert (=> b!7774413 m!8226170))

(declare-fun m!8226172 () Bool)

(assert (=> b!7774402 m!8226172))

(declare-fun m!8226174 () Bool)

(assert (=> b!7774406 m!8226174))

(declare-fun m!8226176 () Bool)

(assert (=> b!7774416 m!8226176))

(declare-fun m!8226178 () Bool)

(assert (=> b!7774416 m!8226178))

(declare-fun m!8226180 () Bool)

(assert (=> b!7774404 m!8226180))

(declare-fun m!8226182 () Bool)

(assert (=> b!7774415 m!8226182))

(declare-fun m!8226184 () Bool)

(assert (=> b!7774418 m!8226184))

(check-sat (not b!7774417) (not b!7774418) (not b!7774407) (not b!7774414) (not b!7774411) (not b!7774406) (not b!7774403) (not start!740214) (not b!7774415) (not b!7774404) (not b!7774416) tp_is_empty!51913 (not b!7774405) (not b!7774410) (not b!7774419) (not b!7774413) (not b!7774402))
(check-sat)
