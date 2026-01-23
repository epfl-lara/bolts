; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710252 () Bool)

(assert start!710252)

(declare-fun b!7274286 () Bool)

(declare-fun e!4362157 () Bool)

(assert (=> b!7274286 (= e!4362157 false)))

(declare-fun lt!2596418 () Bool)

(declare-datatypes ((C!37934 0))(
  ( (C!37935 (val!28915 Int)) )
))
(declare-datatypes ((Regex!18830 0))(
  ( (ElementMatch!18830 (c!1354386 C!37934)) (Concat!27675 (regOne!38172 Regex!18830) (regTwo!38172 Regex!18830)) (EmptyExpr!18830) (Star!18830 (reg!19159 Regex!18830)) (EmptyLang!18830) (Union!18830 (regOne!38173 Regex!18830) (regTwo!38173 Regex!18830)) )
))
(declare-datatypes ((List!70975 0))(
  ( (Nil!70851) (Cons!70851 (h!77299 Regex!18830) (t!385047 List!70975)) )
))
(declare-datatypes ((Context!15540 0))(
  ( (Context!15541 (exprs!8270 List!70975)) )
))
(declare-fun ct1!250 () Context!15540)

(declare-fun nullableContext!320 (Context!15540) Bool)

(assert (=> b!7274286 (= lt!2596418 (nullableContext!320 ct1!250))))

(declare-fun b!7274289 () Bool)

(declare-fun e!4362158 () Bool)

(declare-fun tp!2041771 () Bool)

(assert (=> b!7274289 (= e!4362158 tp!2041771)))

(declare-fun b!7274287 () Bool)

(declare-fun e!4362156 () Bool)

(declare-fun tp!2041772 () Bool)

(assert (=> b!7274287 (= e!4362156 tp!2041772)))

(declare-fun res!2948754 () Bool)

(assert (=> start!710252 (=> (not res!2948754) (not e!4362157))))

(declare-fun ct2!346 () Context!15540)

(declare-datatypes ((List!70976 0))(
  ( (Nil!70852) (Cons!70852 (h!77300 C!37934) (t!385048 List!70976)) )
))
(declare-fun s!7854 () List!70976)

(declare-fun matchZipper!3734 ((Set Context!15540) List!70976) Bool)

(assert (=> start!710252 (= res!2948754 (matchZipper!3734 (set.insert ct2!346 (as set.empty (Set Context!15540))) s!7854))))

(assert (=> start!710252 e!4362157))

(declare-fun inv!90086 (Context!15540) Bool)

(assert (=> start!710252 (and (inv!90086 ct2!346) e!4362156)))

(declare-fun e!4362159 () Bool)

(assert (=> start!710252 e!4362159))

(assert (=> start!710252 (and (inv!90086 ct1!250) e!4362158)))

(declare-fun b!7274288 () Bool)

(declare-fun tp_is_empty!47125 () Bool)

(declare-fun tp!2041773 () Bool)

(assert (=> b!7274288 (= e!4362159 (and tp_is_empty!47125 tp!2041773))))

(assert (= (and start!710252 res!2948754) b!7274286))

(assert (= start!710252 b!7274287))

(assert (= (and start!710252 (is-Cons!70852 s!7854)) b!7274288))

(assert (= start!710252 b!7274289))

(declare-fun m!7960982 () Bool)

(assert (=> b!7274286 m!7960982))

(declare-fun m!7960984 () Bool)

(assert (=> start!710252 m!7960984))

(assert (=> start!710252 m!7960984))

(declare-fun m!7960986 () Bool)

(assert (=> start!710252 m!7960986))

(declare-fun m!7960988 () Bool)

(assert (=> start!710252 m!7960988))

(declare-fun m!7960990 () Bool)

(assert (=> start!710252 m!7960990))

(push 1)

(assert (not b!7274288))

(assert tp_is_empty!47125)

(assert (not start!710252))

(assert (not b!7274287))

(assert (not b!7274289))

(assert (not b!7274286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

