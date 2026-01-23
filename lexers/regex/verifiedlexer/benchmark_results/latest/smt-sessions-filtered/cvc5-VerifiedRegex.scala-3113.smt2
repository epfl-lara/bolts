; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184188 () Bool)

(assert start!184188)

(declare-fun b_free!51599 () Bool)

(declare-fun b_next!52303 () Bool)

(assert (=> start!184188 (= b_free!51599 (not b_next!52303))))

(declare-fun tp!522029 () Bool)

(declare-fun b_and!143821 () Bool)

(assert (=> start!184188 (= tp!522029 b_and!143821)))

(declare-datatypes ((A!453 0))(
  ( (A!454 (val!5789 Int)) )
))
(declare-fun a!855 () A!453)

(declare-fun lt!714941 () Bool)

(declare-datatypes ((B!1611 0))(
  ( (B!1612 (val!5790 Int)) )
))
(declare-datatypes ((List!20457 0))(
  ( (Nil!20385) (Cons!20385 (h!25786 B!1611) (t!172140 List!20457)) )
))
(declare-fun l!2946 () List!20457)

(declare-fun f!1069 () Int)

(declare-datatypes ((List!20458 0))(
  ( (Nil!20386) (Cons!20386 (h!25787 A!453) (t!172141 List!20458)) )
))
(declare-fun contains!3755 (List!20458 A!453) Bool)

(declare-fun map!4288 (List!20457 Int) List!20458)

(assert (=> start!184188 (= lt!714941 (contains!3755 (map!4288 l!2946 f!1069) a!855))))

(assert (=> start!184188 false))

(declare-fun e!1179861 () Bool)

(assert (=> start!184188 e!1179861))

(assert (=> start!184188 tp!522029))

(declare-fun tp_is_empty!8427 () Bool)

(assert (=> start!184188 tp_is_empty!8427))

(declare-fun b!1846246 () Bool)

(declare-fun tp_is_empty!8425 () Bool)

(declare-fun tp!522028 () Bool)

(assert (=> b!1846246 (= e!1179861 (and tp_is_empty!8425 tp!522028))))

(assert (= (and start!184188 (is-Cons!20385 l!2946)) b!1846246))

(declare-fun m!2274559 () Bool)

(assert (=> start!184188 m!2274559))

(assert (=> start!184188 m!2274559))

(declare-fun m!2274561 () Bool)

(assert (=> start!184188 m!2274561))

(push 1)

(assert tp_is_empty!8425)

(assert (not b!1846246))

(assert tp_is_empty!8427)

(assert (not start!184188))

(assert (not b_next!52303))

(assert b_and!143821)

(check-sat)

(pop 1)

(push 1)

(assert b_and!143821)

(assert (not b_next!52303))

(check-sat)

(pop 1)

