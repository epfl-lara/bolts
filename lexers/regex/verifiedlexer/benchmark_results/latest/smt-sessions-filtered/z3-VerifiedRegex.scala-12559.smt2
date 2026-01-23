; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!697008 () Bool)

(assert start!697008)

(declare-fun b!7148398 () Bool)

(declare-fun e!4295495 () Bool)

(declare-fun tp!1973123 () Bool)

(declare-fun tp!1973120 () Bool)

(assert (=> b!7148398 (= e!4295495 (and tp!1973123 tp!1973120))))

(declare-fun b!7148399 () Bool)

(declare-fun e!4295497 () Bool)

(declare-fun tp!1973124 () Bool)

(declare-fun tp!1973121 () Bool)

(assert (=> b!7148399 (= e!4295497 (and tp!1973124 tp!1973121))))

(declare-fun b!7148400 () Bool)

(declare-fun res!2916109 () Bool)

(declare-fun e!4295498 () Bool)

(assert (=> b!7148400 (=> (not res!2916109) (not e!4295498))))

(declare-datatypes ((C!36728 0))(
  ( (C!36729 (val!28312 Int)) )
))
(declare-datatypes ((Regex!18227 0))(
  ( (ElementMatch!18227 (c!1332878 C!36728)) (Concat!27072 (regOne!36966 Regex!18227) (regTwo!36966 Regex!18227)) (EmptyExpr!18227) (Star!18227 (reg!18556 Regex!18227)) (EmptyLang!18227) (Union!18227 (regOne!36967 Regex!18227) (regTwo!36967 Regex!18227)) )
))
(declare-datatypes ((List!69531 0))(
  ( (Nil!69407) (Cons!69407 (h!75855 Regex!18227) (t!383548 List!69531)) )
))
(declare-fun l!9154 () List!69531)

(declare-fun r!13911 () Regex!18227)

(get-info :version)

(assert (=> b!7148400 (= res!2916109 (and ((_ is Cons!69407) l!9154) ((_ is Concat!27072) r!13911)))))

(declare-fun b!7148401 () Bool)

(declare-fun res!2916114 () Bool)

(assert (=> b!7148401 (=> (not res!2916114) (not e!4295498))))

(declare-fun generalisedConcat!2402 (List!69531) Regex!18227)

(assert (=> b!7148401 (= res!2916114 (= r!13911 (generalisedConcat!2402 l!9154)))))

(declare-fun b!7148402 () Bool)

(declare-fun res!2916115 () Bool)

(assert (=> b!7148402 (=> (not res!2916115) (not e!4295498))))

(declare-fun e!4295496 () Bool)

(assert (=> b!7148402 (= res!2916115 e!4295496)))

(declare-fun res!2916113 () Bool)

(assert (=> b!7148402 (=> res!2916113 e!4295496)))

(assert (=> b!7148402 (= res!2916113 (not ((_ is Cons!69407) l!9154)))))

(declare-fun res!2916110 () Bool)

(assert (=> start!697008 (=> (not res!2916110) (not e!4295498))))

(declare-fun lambda!435974 () Int)

(declare-fun forall!17067 (List!69531 Int) Bool)

(assert (=> start!697008 (= res!2916110 (forall!17067 l!9154 lambda!435974))))

(assert (=> start!697008 e!4295498))

(assert (=> start!697008 e!4295495))

(assert (=> start!697008 e!4295497))

(declare-fun b!7148403 () Bool)

(declare-fun res!2916111 () Bool)

(assert (=> b!7148403 (=> (not res!2916111) (not e!4295498))))

(assert (=> b!7148403 (= res!2916111 (= (regTwo!36966 r!13911) (generalisedConcat!2402 (t!383548 l!9154))))))

(declare-fun b!7148404 () Bool)

(declare-fun tp!1973122 () Bool)

(assert (=> b!7148404 (= e!4295497 tp!1973122)))

(declare-fun b!7148405 () Bool)

(declare-fun tp!1973125 () Bool)

(declare-fun tp!1973119 () Bool)

(assert (=> b!7148405 (= e!4295497 (and tp!1973125 tp!1973119))))

(declare-fun b!7148406 () Bool)

(assert (=> b!7148406 (= e!4295498 (not (forall!17067 (t!383548 l!9154) lambda!435974)))))

(declare-fun b!7148407 () Bool)

(declare-fun res!2916112 () Bool)

(assert (=> b!7148407 (=> (not res!2916112) (not e!4295498))))

(assert (=> b!7148407 (= res!2916112 (forall!17067 (t!383548 l!9154) lambda!435974))))

(declare-fun b!7148408 () Bool)

(declare-fun isEmpty!40097 (List!69531) Bool)

(assert (=> b!7148408 (= e!4295496 (not (isEmpty!40097 (t!383548 l!9154))))))

(declare-fun b!7148409 () Bool)

(declare-fun tp_is_empty!46091 () Bool)

(assert (=> b!7148409 (= e!4295497 tp_is_empty!46091)))

(assert (= (and start!697008 res!2916110) b!7148401))

(assert (= (and b!7148401 res!2916114) b!7148402))

(assert (= (and b!7148402 (not res!2916113)) b!7148408))

(assert (= (and b!7148402 res!2916115) b!7148400))

(assert (= (and b!7148400 res!2916109) b!7148407))

(assert (= (and b!7148407 res!2916112) b!7148403))

(assert (= (and b!7148403 res!2916111) b!7148406))

(assert (= (and start!697008 ((_ is Cons!69407) l!9154)) b!7148398))

(assert (= (and start!697008 ((_ is ElementMatch!18227) r!13911)) b!7148409))

(assert (= (and start!697008 ((_ is Concat!27072) r!13911)) b!7148399))

(assert (= (and start!697008 ((_ is Star!18227) r!13911)) b!7148404))

(assert (= (and start!697008 ((_ is Union!18227) r!13911)) b!7148405))

(declare-fun m!7860258 () Bool)

(assert (=> b!7148407 m!7860258))

(declare-fun m!7860260 () Bool)

(assert (=> b!7148403 m!7860260))

(declare-fun m!7860262 () Bool)

(assert (=> start!697008 m!7860262))

(declare-fun m!7860264 () Bool)

(assert (=> b!7148408 m!7860264))

(declare-fun m!7860266 () Bool)

(assert (=> b!7148401 m!7860266))

(assert (=> b!7148406 m!7860258))

(check-sat (not b!7148406) (not start!697008) tp_is_empty!46091 (not b!7148403) (not b!7148404) (not b!7148407) (not b!7148405) (not b!7148399) (not b!7148408) (not b!7148398) (not b!7148401))
(check-sat)
