; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!189022 () Bool)

(assert start!189022)

(assert (=> start!189022 false))

(declare-fun e!1204655 () Bool)

(assert (=> start!189022 e!1204655))

(declare-fun e!1204654 () Bool)

(assert (=> start!189022 e!1204654))

(declare-fun e!1204653 () Bool)

(assert (=> start!189022 e!1204653))

(declare-fun b!1887715 () Bool)

(declare-fun tp_is_empty!8991 () Bool)

(declare-fun tp!538214 () Bool)

(assert (=> b!1887715 (= e!1204655 (and tp_is_empty!8991 tp!538214))))

(declare-fun b!1887716 () Bool)

(declare-fun tp!538215 () Bool)

(assert (=> b!1887716 (= e!1204654 (and tp_is_empty!8991 tp!538215))))

(declare-fun b!1887717 () Bool)

(declare-fun tp!538213 () Bool)

(assert (=> b!1887717 (= e!1204653 (and tp_is_empty!8991 tp!538213))))

(declare-datatypes ((B!1735 0))(
  ( (B!1736 (val!6153 Int)) )
))
(declare-datatypes ((List!21146 0))(
  ( (Nil!21064) (Cons!21064 (h!26465 B!1735) (t!175145 List!21146)) )
))
(declare-fun l1!1329 () List!21146)

(assert (= (and start!189022 (is-Cons!21064 l1!1329)) b!1887715))

(declare-fun l2!1298 () List!21146)

(assert (= (and start!189022 (is-Cons!21064 l2!1298)) b!1887716))

(declare-fun l3!256 () List!21146)

(assert (= (and start!189022 (is-Cons!21064 l3!256)) b!1887717))

(push 1)

(assert (not b!1887717))

(assert (not b!1887715))

(assert (not b!1887716))

(assert tp_is_empty!8991)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

