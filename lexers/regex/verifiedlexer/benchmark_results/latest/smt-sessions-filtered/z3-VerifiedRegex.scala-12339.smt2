; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691888 () Bool)

(assert start!691888)

(declare-fun res!2901082 () Bool)

(declare-fun e!4271658 () Bool)

(assert (=> start!691888 (=> (not res!2901082) (not e!4271658))))

(declare-datatypes ((C!36112 0))(
  ( (C!36113 (val!27762 Int)) )
))
(declare-datatypes ((Regex!17921 0))(
  ( (ElementMatch!17921 (c!1326284 C!36112)) (Concat!26766 (regOne!36354 Regex!17921) (regTwo!36354 Regex!17921)) (EmptyExpr!17921) (Star!17921 (reg!18250 Regex!17921)) (EmptyLang!17921) (Union!17921 (regOne!36355 Regex!17921) (regTwo!36355 Regex!17921)) )
))
(declare-fun r!11554 () Regex!17921)

(declare-fun validRegex!9194 (Regex!17921) Bool)

(assert (=> start!691888 (= res!2901082 (validRegex!9194 r!11554))))

(assert (=> start!691888 e!4271658))

(declare-fun e!4271660 () Bool)

(assert (=> start!691888 e!4271660))

(declare-fun tp_is_empty!45075 () Bool)

(assert (=> start!691888 tp_is_empty!45075))

(declare-datatypes ((List!68882 0))(
  ( (Nil!68758) (Cons!68758 (h!75206 Regex!17921) (t!382701 List!68882)) )
))
(declare-datatypes ((Context!13830 0))(
  ( (Context!13831 (exprs!7415 List!68882)) )
))
(declare-fun c!9994 () Context!13830)

(declare-fun e!4271661 () Bool)

(declare-fun inv!87665 (Context!13830) Bool)

(assert (=> start!691888 (and (inv!87665 c!9994) e!4271661)))

(declare-fun auxCtx!45 () Context!13830)

(declare-fun e!4271659 () Bool)

(assert (=> start!691888 (and (inv!87665 auxCtx!45) e!4271659)))

(declare-fun b!7107581 () Bool)

(declare-fun tp!1955023 () Bool)

(assert (=> b!7107581 (= e!4271659 tp!1955023)))

(declare-fun b!7107582 () Bool)

(declare-fun res!2901081 () Bool)

(assert (=> b!7107582 (=> (not res!2901081) (not e!4271658))))

(declare-fun nullable!7558 (Regex!17921) Bool)

(assert (=> b!7107582 (= res!2901081 (nullable!7558 (regOne!36354 r!11554)))))

(declare-fun b!7107583 () Bool)

(declare-fun e!4271662 () Bool)

(assert (=> b!7107583 (= e!4271658 e!4271662)))

(declare-fun res!2901084 () Bool)

(assert (=> b!7107583 (=> (not res!2901084) (not e!4271662))))

(assert (=> b!7107583 (= res!2901084 (validRegex!9194 (regTwo!36354 r!11554)))))

(declare-fun lambda!431715 () Int)

(declare-datatypes ((Unit!162513 0))(
  ( (Unit!162514) )
))
(declare-fun lt!2559288 () Unit!162513)

(declare-fun lemmaConcatPreservesForall!1206 (List!68882 List!68882 Int) Unit!162513)

(assert (=> b!7107583 (= lt!2559288 (lemmaConcatPreservesForall!1206 (exprs!7415 c!9994) (exprs!7415 auxCtx!45) lambda!431715))))

(declare-fun lt!2559290 () Context!13830)

(declare-fun lt!2559291 () List!68882)

(assert (=> b!7107583 (= lt!2559290 (Context!13831 lt!2559291))))

(declare-fun ++!16073 (List!68882 List!68882) List!68882)

(assert (=> b!7107583 (= lt!2559291 (++!16073 (exprs!7415 c!9994) (exprs!7415 auxCtx!45)))))

(declare-fun lt!2559289 () Unit!162513)

(assert (=> b!7107583 (= lt!2559289 (lemmaConcatPreservesForall!1206 (exprs!7415 c!9994) (exprs!7415 auxCtx!45) lambda!431715))))

(declare-fun lt!2559287 () Unit!162513)

(assert (=> b!7107583 (= lt!2559287 (lemmaConcatPreservesForall!1206 (exprs!7415 c!9994) (exprs!7415 auxCtx!45) lambda!431715))))

(declare-fun b!7107584 () Bool)

(declare-fun res!2901083 () Bool)

(assert (=> b!7107584 (=> (not res!2901083) (not e!4271658))))

(declare-fun a!1901 () C!36112)

(get-info :version)

(assert (=> b!7107584 (= res!2901083 (and (or (not ((_ is ElementMatch!17921) r!11554)) (not (= (c!1326284 r!11554) a!1901))) (not ((_ is Union!17921) r!11554)) ((_ is Concat!26766) r!11554)))))

(declare-fun b!7107585 () Bool)

(declare-fun tp!1955021 () Bool)

(declare-fun tp!1955020 () Bool)

(assert (=> b!7107585 (= e!4271660 (and tp!1955021 tp!1955020))))

(declare-fun b!7107586 () Bool)

(declare-fun tp!1955022 () Bool)

(assert (=> b!7107586 (= e!4271661 tp!1955022)))

(declare-fun b!7107587 () Bool)

(declare-fun tp!1955026 () Bool)

(declare-fun tp!1955024 () Bool)

(assert (=> b!7107587 (= e!4271660 (and tp!1955026 tp!1955024))))

(declare-fun b!7107588 () Bool)

(assert (=> b!7107588 (= e!4271660 tp_is_empty!45075)))

(declare-fun b!7107589 () Bool)

(declare-fun tp!1955025 () Bool)

(assert (=> b!7107589 (= e!4271660 tp!1955025)))

(declare-fun b!7107590 () Bool)

(assert (=> b!7107590 (= e!4271662 false)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2559292 () (InoxSet Context!13830))

(declare-fun derivationStepZipperDown!2436 (Regex!17921 Context!13830 C!36112) (InoxSet Context!13830))

(assert (=> b!7107590 (= lt!2559292 (derivationStepZipperDown!2436 r!11554 lt!2559290 a!1901))))

(declare-fun lt!2559286 () (InoxSet Context!13830))

(assert (=> b!7107590 (= lt!2559286 (derivationStepZipperDown!2436 (regTwo!36354 r!11554) lt!2559290 a!1901))))

(declare-fun lt!2559285 () (InoxSet Context!13830))

(declare-fun $colon$colon!2779 (List!68882 Regex!17921) List!68882)

(assert (=> b!7107590 (= lt!2559285 (derivationStepZipperDown!2436 (regOne!36354 r!11554) (Context!13831 ($colon$colon!2779 lt!2559291 (regTwo!36354 r!11554))) a!1901))))

(assert (= (and start!691888 res!2901082) b!7107584))

(assert (= (and b!7107584 res!2901083) b!7107582))

(assert (= (and b!7107582 res!2901081) b!7107583))

(assert (= (and b!7107583 res!2901084) b!7107590))

(assert (= (and start!691888 ((_ is ElementMatch!17921) r!11554)) b!7107588))

(assert (= (and start!691888 ((_ is Concat!26766) r!11554)) b!7107587))

(assert (= (and start!691888 ((_ is Star!17921) r!11554)) b!7107589))

(assert (= (and start!691888 ((_ is Union!17921) r!11554)) b!7107585))

(assert (= start!691888 b!7107586))

(assert (= start!691888 b!7107581))

(declare-fun m!7830006 () Bool)

(assert (=> start!691888 m!7830006))

(declare-fun m!7830008 () Bool)

(assert (=> start!691888 m!7830008))

(declare-fun m!7830010 () Bool)

(assert (=> start!691888 m!7830010))

(declare-fun m!7830012 () Bool)

(assert (=> b!7107582 m!7830012))

(declare-fun m!7830014 () Bool)

(assert (=> b!7107583 m!7830014))

(assert (=> b!7107583 m!7830014))

(assert (=> b!7107583 m!7830014))

(declare-fun m!7830016 () Bool)

(assert (=> b!7107583 m!7830016))

(declare-fun m!7830018 () Bool)

(assert (=> b!7107583 m!7830018))

(declare-fun m!7830020 () Bool)

(assert (=> b!7107590 m!7830020))

(declare-fun m!7830022 () Bool)

(assert (=> b!7107590 m!7830022))

(declare-fun m!7830024 () Bool)

(assert (=> b!7107590 m!7830024))

(declare-fun m!7830026 () Bool)

(assert (=> b!7107590 m!7830026))

(check-sat tp_is_empty!45075 (not b!7107589) (not b!7107581) (not b!7107585) (not b!7107586) (not start!691888) (not b!7107590) (not b!7107583) (not b!7107587) (not b!7107582))
(check-sat)
