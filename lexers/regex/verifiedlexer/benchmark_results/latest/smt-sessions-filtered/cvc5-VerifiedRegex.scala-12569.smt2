; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697242 () Bool)

(assert start!697242)

(declare-fun res!2916946 () Bool)

(declare-fun e!4296946 () Bool)

(assert (=> start!697242 (=> (not res!2916946) (not e!4296946))))

(declare-datatypes ((C!36766 0))(
  ( (C!36767 (val!28331 Int)) )
))
(declare-datatypes ((Regex!18246 0))(
  ( (ElementMatch!18246 (c!1333227 C!36766)) (Concat!27091 (regOne!37004 Regex!18246) (regTwo!37004 Regex!18246)) (EmptyExpr!18246) (Star!18246 (reg!18575 Regex!18246)) (EmptyLang!18246) (Union!18246 (regOne!37005 Regex!18246) (regTwo!37005 Regex!18246)) )
))
(declare-datatypes ((List!69550 0))(
  ( (Nil!69426) (Cons!69426 (h!75874 Regex!18246) (t!383567 List!69550)) )
))
(declare-fun l!9154 () List!69550)

(declare-fun lambda!436157 () Int)

(declare-fun forall!17086 (List!69550 Int) Bool)

(assert (=> start!697242 (= res!2916946 (forall!17086 l!9154 lambda!436157))))

(assert (=> start!697242 e!4296946))

(declare-fun e!4296945 () Bool)

(assert (=> start!697242 e!4296945))

(declare-fun b!7151546 () Bool)

(assert (=> b!7151546 (= e!4296946 false)))

(declare-fun lt!2569105 () Regex!18246)

(declare-fun generalisedConcat!2421 (List!69550) Regex!18246)

(assert (=> b!7151546 (= lt!2569105 (generalisedConcat!2421 l!9154))))

(declare-fun b!7151547 () Bool)

(declare-fun tp!1975187 () Bool)

(declare-fun tp!1975186 () Bool)

(assert (=> b!7151547 (= e!4296945 (and tp!1975187 tp!1975186))))

(assert (= (and start!697242 res!2916946) b!7151546))

(assert (= (and start!697242 (is-Cons!69426 l!9154)) b!7151547))

(declare-fun m!7861452 () Bool)

(assert (=> start!697242 m!7861452))

(declare-fun m!7861454 () Bool)

(assert (=> b!7151546 m!7861454))

(push 1)

(assert (not b!7151546))

(assert (not start!697242))

(assert (not b!7151547))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

