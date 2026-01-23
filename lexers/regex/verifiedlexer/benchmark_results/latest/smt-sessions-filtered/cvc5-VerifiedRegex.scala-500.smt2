; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!14028 () Bool)

(assert start!14028)

(declare-datatypes ((B!819 0))(
  ( (B!820 (val!895 Int)) )
))
(declare-datatypes ((List!2213 0))(
  ( (Nil!2207) (Cons!2207 (h!7604 B!819) (t!22799 List!2213)) )
))
(declare-fun l!3288 () List!2213)

(declare-fun tot!41 () List!2213)

(declare-fun lt!40549 () Bool)

(declare-fun elmt!148 () B!819)

(declare-fun isPrefix!200 (List!2213 List!2213) Bool)

(declare-fun ++!481 (List!2213 List!2213) List!2213)

(assert (=> start!14028 (= lt!40549 (isPrefix!200 (++!481 l!3288 (Cons!2207 elmt!148 Nil!2207)) tot!41))))

(assert (=> start!14028 false))

(declare-fun e!77912 () Bool)

(assert (=> start!14028 e!77912))

(declare-fun tp_is_empty!1463 () Bool)

(assert (=> start!14028 tp_is_empty!1463))

(declare-fun e!77913 () Bool)

(assert (=> start!14028 e!77913))

(declare-fun b!134469 () Bool)

(declare-fun tp!70698 () Bool)

(assert (=> b!134469 (= e!77912 (and tp_is_empty!1463 tp!70698))))

(declare-fun b!134470 () Bool)

(declare-fun tp!70697 () Bool)

(assert (=> b!134470 (= e!77913 (and tp_is_empty!1463 tp!70697))))

(assert (= (and start!14028 (is-Cons!2207 l!3288)) b!134469))

(assert (= (and start!14028 (is-Cons!2207 tot!41)) b!134470))

(declare-fun m!119593 () Bool)

(assert (=> start!14028 m!119593))

(assert (=> start!14028 m!119593))

(declare-fun m!119595 () Bool)

(assert (=> start!14028 m!119595))

(push 1)

(assert (not start!14028))

(assert (not b!134470))

(assert (not b!134469))

(assert tp_is_empty!1463)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

