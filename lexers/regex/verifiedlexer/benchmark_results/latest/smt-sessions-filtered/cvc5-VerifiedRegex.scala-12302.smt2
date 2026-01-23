; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690890 () Bool)

(assert start!690890)

(declare-fun b!7097513 () Bool)

(declare-fun e!4266302 () Bool)

(assert (=> b!7097513 (= e!4266302 false)))

(declare-datatypes ((C!35962 0))(
  ( (C!35963 (val!27687 Int)) )
))
(declare-datatypes ((Regex!17846 0))(
  ( (ElementMatch!17846 (c!1324401 C!35962)) (Concat!26691 (regOne!36204 Regex!17846) (regTwo!36204 Regex!17846)) (EmptyExpr!17846) (Star!17846 (reg!18175 Regex!17846)) (EmptyLang!17846) (Union!17846 (regOne!36205 Regex!17846) (regTwo!36205 Regex!17846)) )
))
(declare-datatypes ((List!68809 0))(
  ( (Nil!68685) (Cons!68685 (h!75133 Regex!17846) (t!382612 List!68809)) )
))
(declare-fun lt!2557471 () List!68809)

(declare-datatypes ((Context!13684 0))(
  ( (Context!13685 (exprs!7342 List!68809)) )
))
(declare-fun c!9994 () Context!13684)

(declare-fun auxCtx!45 () Context!13684)

(declare-fun ++!16006 (List!68809 List!68809) List!68809)

(assert (=> b!7097513 (= lt!2557471 (++!16006 (exprs!7342 c!9994) (exprs!7342 auxCtx!45)))))

(declare-fun lambda!430612 () Int)

(declare-datatypes ((Unit!162367 0))(
  ( (Unit!162368) )
))
(declare-fun lt!2557472 () Unit!162367)

(declare-fun lemmaConcatPreservesForall!1137 (List!68809 List!68809 Int) Unit!162367)

(assert (=> b!7097513 (= lt!2557472 (lemmaConcatPreservesForall!1137 (exprs!7342 c!9994) (exprs!7342 auxCtx!45) lambda!430612))))

(declare-fun lt!2557473 () Unit!162367)

(assert (=> b!7097513 (= lt!2557473 (lemmaConcatPreservesForall!1137 (exprs!7342 c!9994) (exprs!7342 auxCtx!45) lambda!430612))))

(declare-fun b!7097514 () Bool)

(declare-fun e!4266305 () Bool)

(declare-fun tp!1950691 () Bool)

(assert (=> b!7097514 (= e!4266305 tp!1950691)))

(declare-fun b!7097515 () Bool)

(declare-fun tp!1950685 () Bool)

(declare-fun tp!1950690 () Bool)

(assert (=> b!7097515 (= e!4266305 (and tp!1950685 tp!1950690))))

(declare-fun b!7097516 () Bool)

(declare-fun e!4266303 () Bool)

(declare-fun tp!1950689 () Bool)

(assert (=> b!7097516 (= e!4266303 tp!1950689)))

(declare-fun res!2898246 () Bool)

(assert (=> start!690890 (=> (not res!2898246) (not e!4266302))))

(declare-fun r!11554 () Regex!17846)

(declare-fun validRegex!9121 (Regex!17846) Bool)

(assert (=> start!690890 (= res!2898246 (validRegex!9121 r!11554))))

(assert (=> start!690890 e!4266302))

(assert (=> start!690890 e!4266305))

(declare-fun tp_is_empty!44925 () Bool)

(assert (=> start!690890 tp_is_empty!44925))

(declare-fun inv!87481 (Context!13684) Bool)

(assert (=> start!690890 (and (inv!87481 c!9994) e!4266303)))

(declare-fun e!4266301 () Bool)

(assert (=> start!690890 (and (inv!87481 auxCtx!45) e!4266301)))

(declare-fun b!7097517 () Bool)

(declare-fun tp!1950688 () Bool)

(declare-fun tp!1950686 () Bool)

(assert (=> b!7097517 (= e!4266305 (and tp!1950688 tp!1950686))))

(declare-fun b!7097518 () Bool)

(declare-fun res!2898244 () Bool)

(assert (=> b!7097518 (=> (not res!2898244) (not e!4266302))))

(declare-fun e!4266304 () Bool)

(assert (=> b!7097518 (= res!2898244 e!4266304)))

(declare-fun res!2898247 () Bool)

(assert (=> b!7097518 (=> res!2898247 e!4266304)))

(assert (=> b!7097518 (= res!2898247 (not (is-Concat!26691 r!11554)))))

(declare-fun b!7097519 () Bool)

(declare-fun nullable!7486 (Regex!17846) Bool)

(assert (=> b!7097519 (= e!4266304 (not (nullable!7486 (regOne!36204 r!11554))))))

(declare-fun b!7097520 () Bool)

(declare-fun tp!1950687 () Bool)

(assert (=> b!7097520 (= e!4266301 tp!1950687)))

(declare-fun b!7097521 () Bool)

(assert (=> b!7097521 (= e!4266305 tp_is_empty!44925)))

(declare-fun b!7097522 () Bool)

(declare-fun res!2898245 () Bool)

(assert (=> b!7097522 (=> (not res!2898245) (not e!4266302))))

(assert (=> b!7097522 (= res!2898245 (and (not (is-Concat!26691 r!11554)) (is-Star!17846 r!11554)))))

(declare-fun b!7097523 () Bool)

(declare-fun res!2898243 () Bool)

(assert (=> b!7097523 (=> (not res!2898243) (not e!4266302))))

(declare-fun a!1901 () C!35962)

(assert (=> b!7097523 (= res!2898243 (and (or (not (is-ElementMatch!17846 r!11554)) (not (= (c!1324401 r!11554) a!1901))) (not (is-Union!17846 r!11554))))))

(assert (= (and start!690890 res!2898246) b!7097523))

(assert (= (and b!7097523 res!2898243) b!7097518))

(assert (= (and b!7097518 (not res!2898247)) b!7097519))

(assert (= (and b!7097518 res!2898244) b!7097522))

(assert (= (and b!7097522 res!2898245) b!7097513))

(assert (= (and start!690890 (is-ElementMatch!17846 r!11554)) b!7097521))

(assert (= (and start!690890 (is-Concat!26691 r!11554)) b!7097515))

(assert (= (and start!690890 (is-Star!17846 r!11554)) b!7097514))

(assert (= (and start!690890 (is-Union!17846 r!11554)) b!7097517))

(assert (= start!690890 b!7097516))

(assert (= start!690890 b!7097520))

(declare-fun m!7824376 () Bool)

(assert (=> b!7097513 m!7824376))

(declare-fun m!7824378 () Bool)

(assert (=> b!7097513 m!7824378))

(assert (=> b!7097513 m!7824378))

(declare-fun m!7824380 () Bool)

(assert (=> start!690890 m!7824380))

(declare-fun m!7824382 () Bool)

(assert (=> start!690890 m!7824382))

(declare-fun m!7824384 () Bool)

(assert (=> start!690890 m!7824384))

(declare-fun m!7824386 () Bool)

(assert (=> b!7097519 m!7824386))

(push 1)

(assert (not b!7097517))

(assert (not b!7097519))

(assert (not b!7097520))

(assert (not b!7097516))

(assert (not b!7097513))

(assert (not b!7097515))

(assert (not b!7097514))

(assert tp_is_empty!44925)

(assert (not start!690890))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

