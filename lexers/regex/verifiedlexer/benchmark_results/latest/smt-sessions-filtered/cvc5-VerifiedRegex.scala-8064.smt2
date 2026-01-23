; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!416864 () Bool)

(assert start!416864)

(declare-fun lt!1545136 () Bool)

(declare-datatypes ((K!9723 0))(
  ( (K!9724 (val!16049 Int)) )
))
(declare-datatypes ((V!9969 0))(
  ( (V!9970 (val!16050 Int)) )
))
(declare-datatypes ((tuple2!47514 0))(
  ( (tuple2!47515 (_1!27051 K!9723) (_2!27051 V!9969)) )
))
(declare-datatypes ((List!48585 0))(
  ( (Nil!48461) (Cons!48461 (h!53930 tuple2!47514) (t!355497 List!48585)) )
))
(declare-fun l!13867 () List!48585)

(declare-fun noDuplicateKeys!274 (List!48585) Bool)

(assert (=> start!416864 (= lt!1545136 (noDuplicateKeys!274 l!13867))))

(assert (=> start!416864 false))

(declare-fun e!2693244 () Bool)

(assert (=> start!416864 e!2693244))

(declare-fun b!4328253 () Bool)

(declare-fun tp!1327965 () Bool)

(declare-fun tp_is_empty!24285 () Bool)

(declare-fun tp_is_empty!24287 () Bool)

(assert (=> b!4328253 (= e!2693244 (and tp_is_empty!24285 tp_is_empty!24287 tp!1327965))))

(assert (= (and start!416864 (is-Cons!48461 l!13867)) b!4328253))

(declare-fun m!4923105 () Bool)

(assert (=> start!416864 m!4923105))

(push 1)

(assert (not start!416864))

(assert (not b!4328253))

(assert tp_is_empty!24287)

(assert tp_is_empty!24285)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

