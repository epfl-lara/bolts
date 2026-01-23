; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!697012 () Bool)

(assert start!697012)

(declare-fun b!7148470 () Bool)

(declare-fun e!4295519 () Bool)

(declare-fun tp!1973161 () Bool)

(declare-fun tp!1973165 () Bool)

(assert (=> b!7148470 (= e!4295519 (and tp!1973161 tp!1973165))))

(declare-fun res!2916156 () Bool)

(declare-fun e!4295521 () Bool)

(assert (=> start!697012 (=> (not res!2916156) (not e!4295521))))

(declare-datatypes ((C!36732 0))(
  ( (C!36733 (val!28314 Int)) )
))
(declare-datatypes ((Regex!18229 0))(
  ( (ElementMatch!18229 (c!1332880 C!36732)) (Concat!27074 (regOne!36970 Regex!18229) (regTwo!36970 Regex!18229)) (EmptyExpr!18229) (Star!18229 (reg!18558 Regex!18229)) (EmptyLang!18229) (Union!18229 (regOne!36971 Regex!18229) (regTwo!36971 Regex!18229)) )
))
(declare-datatypes ((List!69533 0))(
  ( (Nil!69409) (Cons!69409 (h!75857 Regex!18229) (t!383550 List!69533)) )
))
(declare-fun l!9154 () List!69533)

(declare-fun lambda!435984 () Int)

(declare-fun forall!17069 (List!69533 Int) Bool)

(assert (=> start!697012 (= res!2916156 (forall!17069 l!9154 lambda!435984))))

(assert (=> start!697012 e!4295521))

(declare-fun e!4295520 () Bool)

(assert (=> start!697012 e!4295520))

(assert (=> start!697012 e!4295519))

(declare-fun b!7148471 () Bool)

(declare-fun tp!1973163 () Bool)

(assert (=> b!7148471 (= e!4295519 tp!1973163)))

(declare-fun b!7148472 () Bool)

(declare-fun res!2916152 () Bool)

(assert (=> b!7148472 (=> (not res!2916152) (not e!4295521))))

(declare-fun r!13911 () Regex!18229)

(get-info :version)

(assert (=> b!7148472 (= res!2916152 (and ((_ is Cons!69409) l!9154) ((_ is Concat!27074) r!13911)))))

(declare-fun b!7148473 () Bool)

(assert (=> b!7148473 (= e!4295521 false)))

(declare-fun b!7148474 () Bool)

(declare-fun tp!1973167 () Bool)

(declare-fun tp!1973166 () Bool)

(assert (=> b!7148474 (= e!4295519 (and tp!1973167 tp!1973166))))

(declare-fun b!7148475 () Bool)

(declare-fun res!2916157 () Bool)

(assert (=> b!7148475 (=> (not res!2916157) (not e!4295521))))

(declare-fun e!4295522 () Bool)

(assert (=> b!7148475 (= res!2916157 e!4295522)))

(declare-fun res!2916151 () Bool)

(assert (=> b!7148475 (=> res!2916151 e!4295522)))

(assert (=> b!7148475 (= res!2916151 (not ((_ is Cons!69409) l!9154)))))

(declare-fun b!7148476 () Bool)

(declare-fun res!2916155 () Bool)

(assert (=> b!7148476 (=> (not res!2916155) (not e!4295521))))

(declare-fun generalisedConcat!2404 (List!69533) Regex!18229)

(assert (=> b!7148476 (= res!2916155 (= (regTwo!36970 r!13911) (generalisedConcat!2404 (t!383550 l!9154))))))

(declare-fun b!7148477 () Bool)

(declare-fun tp_is_empty!46095 () Bool)

(assert (=> b!7148477 (= e!4295519 tp_is_empty!46095)))

(declare-fun b!7148478 () Bool)

(declare-fun tp!1973164 () Bool)

(declare-fun tp!1973162 () Bool)

(assert (=> b!7148478 (= e!4295520 (and tp!1973164 tp!1973162))))

(declare-fun b!7148479 () Bool)

(declare-fun res!2916153 () Bool)

(assert (=> b!7148479 (=> (not res!2916153) (not e!4295521))))

(assert (=> b!7148479 (= res!2916153 (forall!17069 (t!383550 l!9154) lambda!435984))))

(declare-fun b!7148480 () Bool)

(declare-fun isEmpty!40099 (List!69533) Bool)

(assert (=> b!7148480 (= e!4295522 (not (isEmpty!40099 (t!383550 l!9154))))))

(declare-fun b!7148481 () Bool)

(declare-fun res!2916154 () Bool)

(assert (=> b!7148481 (=> (not res!2916154) (not e!4295521))))

(assert (=> b!7148481 (= res!2916154 (= r!13911 (generalisedConcat!2404 l!9154)))))

(assert (= (and start!697012 res!2916156) b!7148481))

(assert (= (and b!7148481 res!2916154) b!7148475))

(assert (= (and b!7148475 (not res!2916151)) b!7148480))

(assert (= (and b!7148475 res!2916157) b!7148472))

(assert (= (and b!7148472 res!2916152) b!7148479))

(assert (= (and b!7148479 res!2916153) b!7148476))

(assert (= (and b!7148476 res!2916155) b!7148473))

(assert (= (and start!697012 ((_ is Cons!69409) l!9154)) b!7148478))

(assert (= (and start!697012 ((_ is ElementMatch!18229) r!13911)) b!7148477))

(assert (= (and start!697012 ((_ is Concat!27074) r!13911)) b!7148470))

(assert (= (and start!697012 ((_ is Star!18229) r!13911)) b!7148471))

(assert (= (and start!697012 ((_ is Union!18229) r!13911)) b!7148474))

(declare-fun m!7860278 () Bool)

(assert (=> b!7148480 m!7860278))

(declare-fun m!7860280 () Bool)

(assert (=> b!7148476 m!7860280))

(declare-fun m!7860282 () Bool)

(assert (=> start!697012 m!7860282))

(declare-fun m!7860284 () Bool)

(assert (=> b!7148481 m!7860284))

(declare-fun m!7860286 () Bool)

(assert (=> b!7148479 m!7860286))

(check-sat (not b!7148471) (not b!7148476) (not b!7148478) tp_is_empty!46095 (not b!7148481) (not b!7148480) (not start!697012) (not b!7148470) (not b!7148479) (not b!7148474))
(check-sat)
