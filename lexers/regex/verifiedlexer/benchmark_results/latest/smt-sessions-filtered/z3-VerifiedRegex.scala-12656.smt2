; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!700820 () Bool)

(assert start!700820)

(declare-fun b!7226921 () Bool)

(assert (=> b!7226921 true))

(declare-fun b!7226920 () Bool)

(declare-fun e!4332196 () Bool)

(declare-fun e!4332197 () Bool)

(assert (=> b!7226920 (= e!4332196 e!4332197)))

(declare-fun res!2932391 () Bool)

(assert (=> b!7226920 (=> (not res!2932391) (not e!4332197))))

(declare-fun lt!2572196 () Int)

(declare-fun lt!2572195 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!7226920 (= res!2932391 (>= (maxBigInt!0 lt!2572196 lt!2572195) lt!2572195))))

(declare-datatypes ((C!37116 0))(
  ( (C!37117 (val!28506 Int)) )
))
(declare-datatypes ((Regex!18421 0))(
  ( (ElementMatch!18421 (c!1340679 C!37116)) (Concat!27266 (regOne!37354 Regex!18421) (regTwo!37354 Regex!18421)) (EmptyExpr!18421) (Star!18421 (reg!18750 Regex!18421)) (EmptyLang!18421) (Union!18421 (regOne!37355 Regex!18421) (regTwo!37355 Regex!18421)) )
))
(declare-datatypes ((List!69959 0))(
  ( (Nil!69835) (Cons!69835 (h!76283 Regex!18421) (t!383990 List!69959)) )
))
(declare-datatypes ((Context!14746 0))(
  ( (Context!14747 (exprs!7873 List!69959)) )
))
(declare-fun c!7037 () Context!14746)

(declare-fun contextDepth!332 (Context!14746) Int)

(assert (=> b!7226920 (= lt!2572195 (contextDepth!332 (Context!14747 (t!383990 (exprs!7873 c!7037)))))))

(declare-fun regexDepth!410 (Regex!18421) Int)

(assert (=> b!7226920 (= lt!2572196 (regexDepth!410 (h!76283 (exprs!7873 c!7037))))))

(declare-fun b!7226922 () Bool)

(declare-fun lambda!438623 () Int)

(declare-fun forall!17247 (List!69959 Int) Bool)

(assert (=> b!7226922 (= e!4332197 (not (forall!17247 (t!383990 (exprs!7873 c!7037)) lambda!438623)))))

(declare-fun res!2932392 () Bool)

(assert (=> b!7226921 (=> (not res!2932392) (not e!4332197))))

(assert (=> b!7226921 (= res!2932392 (forall!17247 (t!383990 (exprs!7873 c!7037)) lambda!438623))))

(declare-fun b!7226923 () Bool)

(declare-fun e!4332195 () Bool)

(declare-fun tp!2032478 () Bool)

(assert (=> b!7226923 (= e!4332195 tp!2032478)))

(declare-fun res!2932390 () Bool)

(assert (=> start!700820 (=> (not res!2932390) (not e!4332196))))

(get-info :version)

(assert (=> start!700820 (= res!2932390 ((_ is Cons!69835) (exprs!7873 c!7037)))))

(assert (=> start!700820 e!4332196))

(declare-fun inv!89074 (Context!14746) Bool)

(assert (=> start!700820 (and (inv!89074 c!7037) e!4332195)))

(assert (= (and start!700820 res!2932390) b!7226920))

(assert (= (and b!7226920 res!2932391) b!7226921))

(assert (= (and b!7226921 res!2932392) b!7226922))

(assert (= start!700820 b!7226923))

(declare-fun m!7896188 () Bool)

(assert (=> b!7226920 m!7896188))

(declare-fun m!7896190 () Bool)

(assert (=> b!7226920 m!7896190))

(declare-fun m!7896192 () Bool)

(assert (=> b!7226920 m!7896192))

(declare-fun m!7896194 () Bool)

(assert (=> b!7226922 m!7896194))

(assert (=> b!7226921 m!7896194))

(declare-fun m!7896196 () Bool)

(assert (=> start!700820 m!7896196))

(check-sat (not b!7226920) (not start!700820) (not b!7226922) (not b!7226923) (not b!7226921))
(check-sat)
