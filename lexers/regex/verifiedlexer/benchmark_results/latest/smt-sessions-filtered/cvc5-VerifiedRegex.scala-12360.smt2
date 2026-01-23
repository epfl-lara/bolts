; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692626 () Bool)

(assert start!692626)

(declare-fun b!7116165 () Bool)

(declare-fun e!4276189 () Bool)

(declare-datatypes ((C!36194 0))(
  ( (C!36195 (val!27803 Int)) )
))
(declare-datatypes ((Regex!17962 0))(
  ( (ElementMatch!17962 (c!1328079 C!36194)) (Concat!26807 (regOne!36436 Regex!17962) (regTwo!36436 Regex!17962)) (EmptyExpr!17962) (Star!17962 (reg!18291 Regex!17962)) (EmptyLang!17962) (Union!17962 (regOne!36437 Regex!17962) (regTwo!36437 Regex!17962)) )
))
(declare-fun r!11554 () Regex!17962)

(declare-fun nullable!7599 (Regex!17962) Bool)

(assert (=> b!7116165 (= e!4276189 (not (nullable!7599 (regOne!36436 r!11554))))))

(declare-fun b!7116166 () Bool)

(declare-fun e!4276187 () Bool)

(declare-fun tp!1958353 () Bool)

(assert (=> b!7116166 (= e!4276187 tp!1958353)))

(declare-fun b!7116167 () Bool)

(declare-fun e!4276185 () Bool)

(declare-fun tp!1958351 () Bool)

(declare-fun tp!1958350 () Bool)

(assert (=> b!7116167 (= e!4276185 (and tp!1958351 tp!1958350))))

(declare-fun b!7116168 () Bool)

(declare-fun res!2903433 () Bool)

(declare-fun e!4276186 () Bool)

(assert (=> b!7116168 (=> (not res!2903433) (not e!4276186))))

(assert (=> b!7116168 (= res!2903433 (and (not (is-Concat!26807 r!11554)) (is-Star!17962 r!11554)))))

(declare-fun b!7116169 () Bool)

(assert (=> b!7116169 (= e!4276186 false)))

(declare-datatypes ((List!68923 0))(
  ( (Nil!68799) (Cons!68799 (h!75247 Regex!17962) (t!382772 List!68923)) )
))
(declare-fun lt!2560694 () List!68923)

(declare-datatypes ((Context!13912 0))(
  ( (Context!13913 (exprs!7456 List!68923)) )
))
(declare-fun c!9994 () Context!13912)

(declare-fun auxCtx!45 () Context!13912)

(declare-fun ++!16114 (List!68923 List!68923) List!68923)

(assert (=> b!7116169 (= lt!2560694 (++!16114 (exprs!7456 c!9994) (exprs!7456 auxCtx!45)))))

(declare-fun lambda!432388 () Int)

(declare-datatypes ((Unit!162595 0))(
  ( (Unit!162596) )
))
(declare-fun lt!2560693 () Unit!162595)

(declare-fun lemmaConcatPreservesForall!1247 (List!68923 List!68923 Int) Unit!162595)

(assert (=> b!7116169 (= lt!2560693 (lemmaConcatPreservesForall!1247 (exprs!7456 c!9994) (exprs!7456 auxCtx!45) lambda!432388))))

(declare-fun lt!2560695 () Unit!162595)

(assert (=> b!7116169 (= lt!2560695 (lemmaConcatPreservesForall!1247 (exprs!7456 c!9994) (exprs!7456 auxCtx!45) lambda!432388))))

(declare-fun b!7116170 () Bool)

(declare-fun tp!1958355 () Bool)

(assert (=> b!7116170 (= e!4276185 tp!1958355)))

(declare-fun res!2903431 () Bool)

(assert (=> start!692626 (=> (not res!2903431) (not e!4276186))))

(declare-fun validRegex!9235 (Regex!17962) Bool)

(assert (=> start!692626 (= res!2903431 (validRegex!9235 r!11554))))

(assert (=> start!692626 e!4276186))

(assert (=> start!692626 e!4276185))

(declare-fun tp_is_empty!45157 () Bool)

(assert (=> start!692626 tp_is_empty!45157))

(declare-fun inv!87769 (Context!13912) Bool)

(assert (=> start!692626 (and (inv!87769 c!9994) e!4276187)))

(declare-fun e!4276188 () Bool)

(assert (=> start!692626 (and (inv!87769 auxCtx!45) e!4276188)))

(declare-fun b!7116171 () Bool)

(declare-fun tp!1958349 () Bool)

(assert (=> b!7116171 (= e!4276188 tp!1958349)))

(declare-fun b!7116172 () Bool)

(assert (=> b!7116172 (= e!4276185 tp_is_empty!45157)))

(declare-fun b!7116173 () Bool)

(declare-fun res!2903429 () Bool)

(assert (=> b!7116173 (=> (not res!2903429) (not e!4276186))))

(declare-fun a!1901 () C!36194)

(assert (=> b!7116173 (= res!2903429 (and (or (not (is-ElementMatch!17962 r!11554)) (not (= (c!1328079 r!11554) a!1901))) (not (is-Union!17962 r!11554))))))

(declare-fun b!7116174 () Bool)

(declare-fun res!2903432 () Bool)

(assert (=> b!7116174 (=> (not res!2903432) (not e!4276186))))

(assert (=> b!7116174 (= res!2903432 e!4276189)))

(declare-fun res!2903430 () Bool)

(assert (=> b!7116174 (=> res!2903430 e!4276189)))

(assert (=> b!7116174 (= res!2903430 (not (is-Concat!26807 r!11554)))))

(declare-fun b!7116175 () Bool)

(declare-fun tp!1958352 () Bool)

(declare-fun tp!1958354 () Bool)

(assert (=> b!7116175 (= e!4276185 (and tp!1958352 tp!1958354))))

(assert (= (and start!692626 res!2903431) b!7116173))

(assert (= (and b!7116173 res!2903429) b!7116174))

(assert (= (and b!7116174 (not res!2903430)) b!7116165))

(assert (= (and b!7116174 res!2903432) b!7116168))

(assert (= (and b!7116168 res!2903433) b!7116169))

(assert (= (and start!692626 (is-ElementMatch!17962 r!11554)) b!7116172))

(assert (= (and start!692626 (is-Concat!26807 r!11554)) b!7116175))

(assert (= (and start!692626 (is-Star!17962 r!11554)) b!7116170))

(assert (= (and start!692626 (is-Union!17962 r!11554)) b!7116167))

(assert (= start!692626 b!7116166))

(assert (= start!692626 b!7116171))

(declare-fun m!7835196 () Bool)

(assert (=> b!7116165 m!7835196))

(declare-fun m!7835198 () Bool)

(assert (=> b!7116169 m!7835198))

(declare-fun m!7835200 () Bool)

(assert (=> b!7116169 m!7835200))

(assert (=> b!7116169 m!7835200))

(declare-fun m!7835202 () Bool)

(assert (=> start!692626 m!7835202))

(declare-fun m!7835204 () Bool)

(assert (=> start!692626 m!7835204))

(declare-fun m!7835206 () Bool)

(assert (=> start!692626 m!7835206))

(push 1)

(assert (not b!7116170))

(assert (not b!7116165))

(assert (not b!7116175))

(assert (not b!7116167))

(assert (not start!692626))

(assert (not b!7116166))

(assert (not b!7116171))

(assert (not b!7116169))

(assert tp_is_empty!45157)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

