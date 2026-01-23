; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!14032 () Bool)

(assert start!14032)

(declare-datatypes ((B!823 0))(
  ( (B!824 (val!897 Int)) )
))
(declare-datatypes ((List!2215 0))(
  ( (Nil!2209) (Cons!2209 (h!7606 B!823) (t!22801 List!2215)) )
))
(declare-fun lt!40555 () List!2215)

(declare-fun l1!1230 () List!2215)

(declare-fun l2!1199 () List!2215)

(declare-fun ++!483 (List!2215 List!2215) List!2215)

(assert (=> start!14032 (= lt!40555 (++!483 l1!1230 l2!1199))))

(assert (=> start!14032 false))

(declare-fun e!77928 () Bool)

(assert (=> start!14032 e!77928))

(declare-fun e!77926 () Bool)

(assert (=> start!14032 e!77926))

(declare-fun e!77927 () Bool)

(assert (=> start!14032 e!77927))

(declare-fun b!134483 () Bool)

(declare-fun tp_is_empty!1467 () Bool)

(declare-fun tp!70713 () Bool)

(assert (=> b!134483 (= e!77928 (and tp_is_empty!1467 tp!70713))))

(declare-fun b!134484 () Bool)

(declare-fun tp!70711 () Bool)

(assert (=> b!134484 (= e!77926 (and tp_is_empty!1467 tp!70711))))

(declare-fun b!134485 () Bool)

(declare-fun tp!70712 () Bool)

(assert (=> b!134485 (= e!77927 (and tp_is_empty!1467 tp!70712))))

(assert (= (and start!14032 (is-Cons!2209 l1!1230)) b!134483))

(assert (= (and start!14032 (is-Cons!2209 l2!1199)) b!134484))

(declare-fun sub!16 () List!2215)

(assert (= (and start!14032 (is-Cons!2209 sub!16)) b!134485))

(declare-fun m!119601 () Bool)

(assert (=> start!14032 m!119601))

(push 1)

(assert (not start!14032))

(assert (not b!134484))

(assert (not b!134483))

(assert (not b!134485))

(assert tp_is_empty!1467)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

