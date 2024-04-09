; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138246 () Bool)

(assert start!138246)

(assert (=> start!138246 false))

(declare-fun e!885045 () Bool)

(assert (=> start!138246 e!885045))

(assert (=> start!138246 true))

(declare-fun b!1585187 () Bool)

(declare-fun tp_is_empty!39501 () Bool)

(declare-fun tp!115222 () Bool)

(assert (=> b!1585187 (= e!885045 (and tp_is_empty!39501 tp!115222))))

(declare-datatypes ((B!2968 0))(
  ( (B!2969 (val!19846 Int)) )
))
(declare-datatypes ((tuple2!26024 0))(
  ( (tuple2!26025 (_1!13022 (_ BitVec 64)) (_2!13022 B!2968)) )
))
(declare-datatypes ((List!37127 0))(
  ( (Nil!37124) (Cons!37123 (h!38667 tuple2!26024) (t!52054 List!37127)) )
))
(declare-fun l!556 () List!37127)

(get-info :version)

(assert (= (and start!138246 ((_ is Cons!37123) l!556)) b!1585187))

(check-sat (not b!1585187) tp_is_empty!39501)
(check-sat)
