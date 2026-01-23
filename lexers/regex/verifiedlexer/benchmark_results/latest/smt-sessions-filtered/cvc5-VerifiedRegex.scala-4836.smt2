; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!248730 () Bool)

(assert start!248730)

(assert (=> start!248730 false))

(declare-fun e!1624953 () Bool)

(assert (=> start!248730 e!1624953))

(declare-fun e!1624954 () Bool)

(assert (=> start!248730 e!1624954))

(declare-fun b!2575371 () Bool)

(declare-fun tp_is_empty!13147 () Bool)

(declare-fun tp!818703 () Bool)

(assert (=> b!2575371 (= e!1624953 (and tp_is_empty!13147 tp!818703))))

(declare-fun b!2575372 () Bool)

(declare-fun tp!818704 () Bool)

(assert (=> b!2575372 (= e!1624954 (and tp_is_empty!13147 tp!818704))))

(declare-datatypes ((B!1899 0))(
  ( (B!1900 (val!9377 Int)) )
))
(declare-datatypes ((List!29711 0))(
  ( (Nil!29611) (Cons!29611 (h!35031 B!1899) (t!211410 List!29711)) )
))
(declare-fun l1!976 () List!29711)

(assert (= (and start!248730 (is-Cons!29611 l1!976)) b!2575371))

(declare-fun l2!953 () List!29711)

(assert (= (and start!248730 (is-Cons!29611 l2!953)) b!2575372))

(push 1)

(assert (not b!2575372))

(assert (not b!2575371))

(assert tp_is_empty!13147)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

