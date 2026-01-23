; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667180 () Bool)

(assert start!667180)

(declare-fun b!6951067 () Bool)

(assert (=> b!6951067 true))

(assert (=> b!6951067 true))

(declare-fun bs!1857706 () Bool)

(declare-fun b!6951062 () Bool)

(assert (= bs!1857706 (and b!6951062 b!6951067)))

(declare-fun lambda!396392 () Int)

(declare-fun lambda!396391 () Int)

(assert (=> bs!1857706 (not (= lambda!396392 lambda!396391))))

(assert (=> b!6951062 true))

(assert (=> b!6951062 true))

(declare-fun b!6951058 () Bool)

(declare-fun e!4180547 () Bool)

(declare-fun tp!1916206 () Bool)

(declare-fun tp!1916203 () Bool)

(assert (=> b!6951058 (= e!4180547 (and tp!1916206 tp!1916203))))

(declare-fun b!6951059 () Bool)

(declare-fun tp_is_empty!43265 () Bool)

(assert (=> b!6951059 (= e!4180547 tp_is_empty!43265)))

(declare-fun b!6951060 () Bool)

(declare-fun tp!1916202 () Bool)

(assert (=> b!6951060 (= e!4180547 tp!1916202)))

(declare-fun b!6951061 () Bool)

(declare-fun tp!1916207 () Bool)

(declare-fun tp!1916204 () Bool)

(assert (=> b!6951061 (= e!4180547 (and tp!1916207 tp!1916204))))

(declare-fun res!2835864 () Bool)

(declare-fun e!4180546 () Bool)

(assert (=> start!667180 (=> (not res!2835864) (not e!4180546))))

(declare-datatypes ((C!34310 0))(
  ( (C!34311 (val!26857 Int)) )
))
(declare-datatypes ((Regex!17020 0))(
  ( (ElementMatch!17020 (c!1289344 C!34310)) (Concat!25865 (regOne!34552 Regex!17020) (regTwo!34552 Regex!17020)) (EmptyExpr!17020) (Star!17020 (reg!17349 Regex!17020)) (EmptyLang!17020) (Union!17020 (regOne!34553 Regex!17020) (regTwo!34553 Regex!17020)) )
))
(declare-fun rInner!765 () Regex!17020)

(declare-fun validRegex!8726 (Regex!17020) Bool)

(assert (=> start!667180 (= res!2835864 (validRegex!8726 rInner!765))))

(assert (=> start!667180 e!4180546))

(assert (=> start!667180 e!4180547))

(declare-fun e!4180545 () Bool)

(assert (=> start!667180 e!4180545))

(declare-fun res!2835865 () Bool)

(assert (=> b!6951062 (=> (not res!2835865) (not e!4180546))))

(declare-fun Exists!4016 (Int) Bool)

(assert (=> b!6951062 (= res!2835865 (Exists!4016 lambda!396392))))

(declare-fun b!6951063 () Bool)

(declare-fun tp!1916205 () Bool)

(assert (=> b!6951063 (= e!4180545 (and tp_is_empty!43265 tp!1916205))))

(declare-fun b!6951064 () Bool)

(declare-fun res!2835862 () Bool)

(assert (=> b!6951064 (=> (not res!2835862) (not e!4180546))))

(declare-fun nullable!6833 (Regex!17020) Bool)

(assert (=> b!6951064 (= res!2835862 (not (nullable!6833 rInner!765)))))

(declare-fun b!6951065 () Bool)

(assert (=> b!6951065 (= e!4180546 (not (Exists!4016 lambda!396392)))))

(declare-fun b!6951066 () Bool)

(declare-fun res!2835861 () Bool)

(assert (=> b!6951066 (=> (not res!2835861) (not e!4180546))))

(assert (=> b!6951066 (= res!2835861 (not (Exists!4016 lambda!396391)))))

(declare-fun res!2835863 () Bool)

(assert (=> b!6951067 (=> (not res!2835863) (not e!4180546))))

(assert (=> b!6951067 (= res!2835863 (not (Exists!4016 lambda!396391)))))

(assert (= (and start!667180 res!2835864) b!6951064))

(assert (= (and b!6951064 res!2835862) b!6951067))

(assert (= (and b!6951067 res!2835863) b!6951066))

(assert (= (and b!6951066 res!2835861) b!6951062))

(assert (= (and b!6951062 res!2835865) b!6951065))

(assert (= (and start!667180 (is-ElementMatch!17020 rInner!765)) b!6951059))

(assert (= (and start!667180 (is-Concat!25865 rInner!765)) b!6951061))

(assert (= (and start!667180 (is-Star!17020 rInner!765)) b!6951060))

(assert (= (and start!667180 (is-Union!17020 rInner!765)) b!6951058))

(declare-datatypes ((List!66773 0))(
  ( (Nil!66649) (Cons!66649 (h!73097 C!34310) (t!380516 List!66773)) )
))
(declare-fun s!10388 () List!66773)

(assert (= (and start!667180 (is-Cons!66649 s!10388)) b!6951063))

(declare-fun m!7652344 () Bool)

(assert (=> b!6951067 m!7652344))

(assert (=> b!6951066 m!7652344))

(declare-fun m!7652346 () Bool)

(assert (=> b!6951065 m!7652346))

(assert (=> b!6951062 m!7652346))

(declare-fun m!7652348 () Bool)

(assert (=> start!667180 m!7652348))

(declare-fun m!7652350 () Bool)

(assert (=> b!6951064 m!7652350))

(push 1)

(assert (not b!6951058))

(assert (not b!6951063))

(assert tp_is_empty!43265)

(assert (not b!6951066))

(assert (not b!6951067))

(assert (not start!667180))

(assert (not b!6951060))

(assert (not b!6951062))

(assert (not b!6951061))

(assert (not b!6951064))

(assert (not b!6951065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

