; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!690588 () Bool)

(assert start!690588)

(declare-fun b!7094470 () Bool)

(declare-fun res!2897168 () Bool)

(declare-fun e!4264669 () Bool)

(assert (=> b!7094470 (=> (not res!2897168) (not e!4264669))))

(declare-fun e!4264667 () Bool)

(assert (=> b!7094470 (= res!2897168 e!4264667)))

(declare-fun res!2897169 () Bool)

(assert (=> b!7094470 (=> res!2897169 e!4264667)))

(declare-datatypes ((C!35912 0))(
  ( (C!35913 (val!27662 Int)) )
))
(declare-datatypes ((Regex!17821 0))(
  ( (ElementMatch!17821 (c!1323930 C!35912)) (Concat!26666 (regOne!36154 Regex!17821) (regTwo!36154 Regex!17821)) (EmptyExpr!17821) (Star!17821 (reg!18150 Regex!17821)) (EmptyLang!17821) (Union!17821 (regOne!36155 Regex!17821) (regTwo!36155 Regex!17821)) )
))
(declare-fun r!11554 () Regex!17821)

(get-info :version)

(assert (=> b!7094470 (= res!2897169 (not ((_ is Concat!26666) r!11554)))))

(declare-fun b!7094471 () Bool)

(declare-fun res!2897167 () Bool)

(assert (=> b!7094471 (=> (not res!2897167) (not e!4264669))))

(assert (=> b!7094471 (= res!2897167 ((_ is Concat!26666) r!11554))))

(declare-fun b!7094472 () Bool)

(assert (=> b!7094472 (= e!4264669 false)))

(declare-datatypes ((List!68784 0))(
  ( (Nil!68660) (Cons!68660 (h!75108 Regex!17821) (t!382579 List!68784)) )
))
(declare-fun lt!2556962 () List!68784)

(declare-datatypes ((Context!13634 0))(
  ( (Context!13635 (exprs!7317 List!68784)) )
))
(declare-fun c!9994 () Context!13634)

(declare-fun auxCtx!45 () Context!13634)

(declare-fun ++!15985 (List!68784 List!68784) List!68784)

(assert (=> b!7094472 (= lt!2556962 (++!15985 (exprs!7317 c!9994) (exprs!7317 auxCtx!45)))))

(declare-datatypes ((Unit!162325 0))(
  ( (Unit!162326) )
))
(declare-fun lt!2556963 () Unit!162325)

(declare-fun lambda!430297 () Int)

(declare-fun lemmaConcatPreservesForall!1116 (List!68784 List!68784 Int) Unit!162325)

(assert (=> b!7094472 (= lt!2556963 (lemmaConcatPreservesForall!1116 (exprs!7317 c!9994) (exprs!7317 auxCtx!45) lambda!430297))))

(declare-fun lt!2556964 () Unit!162325)

(assert (=> b!7094472 (= lt!2556964 (lemmaConcatPreservesForall!1116 (exprs!7317 c!9994) (exprs!7317 auxCtx!45) lambda!430297))))

(declare-fun b!7094473 () Bool)

(declare-fun nullable!7461 (Regex!17821) Bool)

(assert (=> b!7094473 (= e!4264667 (not (nullable!7461 (regOne!36154 r!11554))))))

(declare-fun b!7094475 () Bool)

(declare-fun e!4264666 () Bool)

(declare-fun tp!1949397 () Bool)

(declare-fun tp!1949401 () Bool)

(assert (=> b!7094475 (= e!4264666 (and tp!1949397 tp!1949401))))

(declare-fun b!7094476 () Bool)

(declare-fun res!2897170 () Bool)

(assert (=> b!7094476 (=> (not res!2897170) (not e!4264669))))

(declare-fun a!1901 () C!35912)

(assert (=> b!7094476 (= res!2897170 (and (or (not ((_ is ElementMatch!17821) r!11554)) (not (= (c!1323930 r!11554) a!1901))) (not ((_ is Union!17821) r!11554))))))

(declare-fun b!7094477 () Bool)

(declare-fun tp!1949402 () Bool)

(declare-fun tp!1949400 () Bool)

(assert (=> b!7094477 (= e!4264666 (and tp!1949402 tp!1949400))))

(declare-fun b!7094478 () Bool)

(declare-fun tp_is_empty!44875 () Bool)

(assert (=> b!7094478 (= e!4264666 tp_is_empty!44875)))

(declare-fun b!7094479 () Bool)

(declare-fun tp!1949398 () Bool)

(assert (=> b!7094479 (= e!4264666 tp!1949398)))

(declare-fun b!7094480 () Bool)

(declare-fun e!4264670 () Bool)

(declare-fun tp!1949396 () Bool)

(assert (=> b!7094480 (= e!4264670 tp!1949396)))

(declare-fun res!2897166 () Bool)

(assert (=> start!690588 (=> (not res!2897166) (not e!4264669))))

(declare-fun validRegex!9096 (Regex!17821) Bool)

(assert (=> start!690588 (= res!2897166 (validRegex!9096 r!11554))))

(assert (=> start!690588 e!4264669))

(assert (=> start!690588 e!4264666))

(assert (=> start!690588 tp_is_empty!44875))

(declare-fun inv!87417 (Context!13634) Bool)

(assert (=> start!690588 (and (inv!87417 c!9994) e!4264670)))

(declare-fun e!4264668 () Bool)

(assert (=> start!690588 (and (inv!87417 auxCtx!45) e!4264668)))

(declare-fun b!7094474 () Bool)

(declare-fun tp!1949399 () Bool)

(assert (=> b!7094474 (= e!4264668 tp!1949399)))

(assert (= (and start!690588 res!2897166) b!7094476))

(assert (= (and b!7094476 res!2897170) b!7094470))

(assert (= (and b!7094470 (not res!2897169)) b!7094473))

(assert (= (and b!7094470 res!2897168) b!7094471))

(assert (= (and b!7094471 res!2897167) b!7094472))

(assert (= (and start!690588 ((_ is ElementMatch!17821) r!11554)) b!7094478))

(assert (= (and start!690588 ((_ is Concat!26666) r!11554)) b!7094475))

(assert (= (and start!690588 ((_ is Star!17821) r!11554)) b!7094479))

(assert (= (and start!690588 ((_ is Union!17821) r!11554)) b!7094477))

(assert (= start!690588 b!7094480))

(assert (= start!690588 b!7094474))

(declare-fun m!7822572 () Bool)

(assert (=> b!7094472 m!7822572))

(declare-fun m!7822574 () Bool)

(assert (=> b!7094472 m!7822574))

(assert (=> b!7094472 m!7822574))

(declare-fun m!7822576 () Bool)

(assert (=> b!7094473 m!7822576))

(declare-fun m!7822578 () Bool)

(assert (=> start!690588 m!7822578))

(declare-fun m!7822580 () Bool)

(assert (=> start!690588 m!7822580))

(declare-fun m!7822582 () Bool)

(assert (=> start!690588 m!7822582))

(check-sat (not b!7094480) (not start!690588) (not b!7094477) (not b!7094479) (not b!7094472) (not b!7094473) (not b!7094475) tp_is_empty!44875 (not b!7094474))
(check-sat)
