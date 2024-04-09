; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138420 () Bool)

(assert start!138420)

(declare-fun res!1083269 () Bool)

(declare-fun e!885668 () Bool)

(assert (=> start!138420 (=> (not res!1083269) (not e!885668))))

(declare-datatypes ((B!3010 0))(
  ( (B!3011 (val!19867 Int)) )
))
(declare-datatypes ((tuple2!26066 0))(
  ( (tuple2!26067 (_1!13043 (_ BitVec 64)) (_2!13043 B!3010)) )
))
(declare-datatypes ((List!37148 0))(
  ( (Nil!37145) (Cons!37144 (h!38688 tuple2!26066) (t!52087 List!37148)) )
))
(declare-fun l!556 () List!37148)

(declare-fun isStrictlySorted!1207 (List!37148) Bool)

(assert (=> start!138420 (= res!1083269 (isStrictlySorted!1207 l!556))))

(assert (=> start!138420 e!885668))

(declare-fun e!885669 () Bool)

(assert (=> start!138420 e!885669))

(assert (=> start!138420 true))

(declare-fun b!1586017 () Bool)

(declare-fun newKey!21 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1586017 (= e!885668 (and (or (not ((_ is Cons!37144) l!556)) (bvsge (_1!13043 (h!38688 l!556)) newKey!21)) (or (not ((_ is Cons!37144) l!556)) (not (= (_1!13043 (h!38688 l!556)) newKey!21))) (or (not ((_ is Cons!37144) l!556)) (bvsle (_1!13043 (h!38688 l!556)) newKey!21)) (not ((_ is Nil!37145) l!556))))))

(declare-fun b!1586018 () Bool)

(declare-fun tp_is_empty!39543 () Bool)

(declare-fun tp!115342 () Bool)

(assert (=> b!1586018 (= e!885669 (and tp_is_empty!39543 tp!115342))))

(assert (= (and start!138420 res!1083269) b!1586017))

(assert (= (and start!138420 ((_ is Cons!37144) l!556)) b!1586018))

(declare-fun m!1454627 () Bool)

(assert (=> start!138420 m!1454627))

(check-sat (not start!138420) (not b!1586018) tp_is_empty!39543)
(check-sat)
